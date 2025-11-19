uint64_t sub_1000A22E0()
{
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100197F20;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_10000512C();
  *(v0 + 32) = 0x73736563637573;
  *(v0 + 40) = 0xE700000000000000;
  sub_10000E384("ActivityResult=%{signpost.description:attribute}s", 49, 2, v0);
}

uint64_t sub_1000A239C(void *a1, int a2, int a3, int a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);
}

NSObject *sub_1000A2464(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10008493C();
    swift_unknownObjectRelease();
    sub_10000B240(v17, &qword_1002181B8, &qword_10019C5F0);
    v2 = [a1 channelItem];
    sub_100013354(v2, &selRef_channelIdentifier);
    if (v3)
    {

      sub_100013354(v2, &selRef_pushTopic);
      if (v4)
      {

        v5 = [objc_allocWithZone(PARSubscriptionStatus) init];
        [v5 setIsSubscribed:1];

        return v5;
      }

      if (qword_1002140C0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000964C(v14, qword_100232AB0);
      v5 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v5, v11))
      {
LABEL_19:

        sub_1000A453C();
        swift_allocError();
        *v15 = 3;
        swift_willThrow();

        return v5;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Invalid pushTopic for subscribe command";
    }

    else
    {
      if (qword_1002140C0 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000964C(v10, qword_100232AB0);
      v5 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v5, v11))
      {
        goto LABEL_19;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Invalid ChannelId for subscribe command";
    }

    _os_log_impl(&_mh_execute_header, v5, v11, v13, v12, 2u);

    goto LABEL_19;
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_10000B240(v17, &qword_1002181B8, &qword_10019C5F0);
  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000964C(v6, qword_100232AB0);
  v7 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, v5, "Cannot create a valid cloud channel connection", v8, 2u);
  }

  sub_1000A453C();
  swift_allocError();
  *v9 = 1;
  swift_willThrow();
  return v5;
}

uint64_t sub_1000A27E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100006A70();
}

void sub_1000A27FC()
{
  sub_100008964();
  if (qword_1002140C0 != -1)
  {
    sub_1000037E4();
  }

  v2 = type metadata accessor for Logger();
  sub_100006674(v2, qword_100232AB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100006640();
    sub_1000A5288(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "Subscribing to channel", v1, 2u);
    sub_10000B084();
  }

  v6 = v0[2];

  if (v6)
  {
    v7 = v0[2];
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = v0[3];
      v11 = v7;
      sub_1000A2464(v9);

      v12 = v0[1];
      sub_1000A53A0();

      __asm { BRAA            X2, X16 }
    }
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (sub_100007670(v16))
  {
    v17 = sub_100006640();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Invalid PARSubscriptionChannel type for subscribe command", v17, 2u);
    sub_1000036D4();
  }

  sub_1000A453C();
  v18 = sub_100004248();
  sub_1000079FC(v18, v19);
  sub_1000098BC();
  sub_1000A53A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000A29F8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1000A5274;

  return sub_1000A27E8(a1);
}

void sub_1000A2ACC()
{
  sub_100008964();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = qword_1002140C0;
    v3 = v1;
    if (v2 != -1)
    {
      sub_1000037E4();
    }

    v4 = type metadata accessor for Logger();
    sub_100006674(v4, qword_100232AB0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (sub_100007670(v6))
    {
      v7 = sub_100006640();
      sub_1000A5288(v7);
      sub_100023F3C();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_10000B084();
    }

    [objc_allocWithZone(PARSubscriptionStatus) init];
    sub_1000A5310();
    sub_1000A53A0();

    __asm { BRAA            X2, X16 }
  }

  sub_1000A453C();
  v15 = sub_100004248();
  sub_1000079FC(v15, v16);
  sub_1000098BC();
  sub_1000A53A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000A2C3C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000A2CF8;

  return sub_1000A2AB8(a1);
}

uint64_t sub_1000A2CF8()
{
  sub_100008964();
  v2 = v0;
  v4 = v3;
  sub_10000A9A4();
  v6 = v5;
  v7 = v5[5];
  v8 = v5[4];
  v9 = v5[3];
  v10 = v5[2];
  v11 = *v1;
  sub_100005898();
  *v12 = v11;

  if (v2)
  {
    if (v8)
    {
      v13 = v6[4];
      _convertErrorToNSError(_:)();
      sub_100007818();

      (v13)[2](v13, 0, v6);
      _Block_release(v13);
    }

    else
    {
    }
  }

  else if (v8)
  {
    v14 = v6[4];
    v15 = v14[2];
    v16 = sub_1000041F8();
    v17(v16);

    _Block_release(v14);
  }

  else
  {
  }

  sub_1000098BC();

  return v18();
}

void sub_1000A2EC8()
{
  sub_100008964();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = qword_1002140C0;
    v3 = v1;
    if (v2 != -1)
    {
      sub_1000037E4();
    }

    v4 = type metadata accessor for Logger();
    sub_100006674(v4, qword_100232AB0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (sub_100007670(v6))
    {
      v7 = sub_100006640();
      sub_1000A5288(v7);
      sub_100023F3C();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_10000B084();
    }

    [objc_allocWithZone(PARSubscriptionStatus) init];
    sub_1000A5310();
    sub_1000A53A0();

    __asm { BRAA            X2, X16 }
  }

  sub_1000A453C();
  v15 = sub_100004248();
  sub_1000079FC(v15, v16);
  sub_1000098BC();
  sub_1000A53A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000A3038(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = sub_1000041F8();

  return sub_10009D8F4(v10, v11);
}

uint64_t sub_1000A30B8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000A5274;

  return sub_1000A2EB4(a1);
}

uint64_t sub_1000A3174()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001FF08;

  return sub_1000A3204();
}

uint64_t sub_1000A3204()
{
  v1[2] = v0;
  v2 = type metadata accessor for Client();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  BagTask = type metadata accessor for ForceFetchBagTask(0);
  v1[6] = BagTask;
  v6 = *(*(BagTask - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000A3300, 0, 0);
}

uint64_t sub_1000A3300()
{
  sub_100006EE0();
  v1 = **(v0 + 16);
  v2 = *(*(v0 + 48) + 20);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1000A33A8;

  return sub_1000C0DD0();
}

uint64_t sub_1000A33A8()
{
  sub_100007B50();
  sub_10000A9A4();
  v3 = v2;
  v4 = *(v2 + 72);
  v8 = *v1;
  *(v3 + 80) = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v6 = sub_1000A3834;
  }

  else
  {
    v6 = sub_1000A34B4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000A34B4()
{
  v48 = v0;
  v1 = *(v0 + 80);
  v2 = sub_100013354(v1, &selRef_version);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v46 = v4;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  if (([v1 feedbackEnabled] & 1) == 0)
  {
    if (qword_1002140A0 != -1)
    {
      sub_100003878();
    }

    v6 = *(v0 + 64);
    v7 = *(v0 + 16);
    v8 = type metadata accessor for Logger();
    sub_10000964C(v8, qword_100232A50);
    sub_10000C9B4();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 64);
    if (v11)
    {
      v13 = *(v0 + 32);
      v14 = *(v0 + 40);
      v15 = *(v0 + 24);
      v16 = sub_100007800();
      *v16 = 134349056;
      v17 = *v12;
      sub_10001186C();
      Client.type.getter();
      (*(v13 + 8))(v14, v15);
      v18 = ClientType.rawValue.getter();
      sub_100008438();
      sub_10001E64C(v12, v19);
      *(v16 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "feedback collection disabled in bag for client %{public}lu", v16, 0xCu);
      sub_1000036D4();
    }

    else
    {
      sub_100008438();
      sub_10001E64C(v12, v20);
    }
  }

  if (qword_100214090 != -1)
  {
    sub_1000042B0();
  }

  v21 = *(v0 + 56);
  v22 = *(v0 + 16);
  v23 = type metadata accessor for Logger();
  sub_10000964C(v23, qword_100232A20);
  sub_10000C9B4();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 56);
  if (v26)
  {
    v28 = *(v0 + 32);
    v29 = *(v0 + 40);
    v45 = *(v0 + 24);
    v30 = swift_slowAlloc();
    v31 = sub_100007B80();
    v47 = v31;
    *v30 = 136315394;
    v32 = sub_100009684(v46, v5, &v47);

    *(v30 + 4) = v32;
    *(v30 + 12) = 2050;
    v33 = *v27;
    sub_10001186C();
    Client.type.getter();
    (*(v28 + 8))(v29, v45);
    v34 = ClientType.rawValue.getter();
    sub_100008438();
    sub_10001E64C(v27, v35);
    *(v30 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v24, v25, "sending bag with version: %s to client: %{public}lu", v30, 0x16u);
    sub_100007378(v31);
    sub_1000036D4();
    sub_1000036D4();
  }

  else
  {
    sub_100008438();
    sub_10001E64C(v27, v36);
  }

  v37 = *(v0 + 80);
  sub_10000CEC8();
  v39 = *(v38 + 8);
  (*v38)(v37, 0);

  v41 = *(v0 + 56);
  v40 = *(v0 + 64);
  v42 = *(v0 + 40);

  sub_1000098BC();

  return v43();
}

uint64_t sub_1000A3834()
{
  sub_100006EE0();
  v2 = v1[11];
  sub_10000CEC8();
  v5 = *v3;
  v4 = *(v3 + 8);
  swift_errorRetain();
  sub_10001343C(v2);
  sub_100007818();

  v5(0, v0);

  v7 = v1[7];
  v6 = v1[8];
  v8 = v1[5];

  sub_1000098BC();

  return v9();
}

uint64_t sub_1000A38EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_10000EFEC(a3, v26 - v11, &unk_10021A820, &qword_1001992D0);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100008D0C(v12, 1, v13);

  if (v14 == 1)
  {
    sub_10000B240(v12, &unk_10021A820, &qword_1001992D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10000B240(a3, &unk_10021A820, &qword_1001992D0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B240(a3, &unk_10021A820, &qword_1001992D0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000A3BD8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10005416C;

  return v7();
}

uint64_t sub_1000A3CC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10005416C;

  return v8();
}

uint64_t sub_1000A3DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10000EFEC(a3, v25 - v11, &unk_10021A820, &qword_1001992D0);
  v13 = type metadata accessor for TaskPriority();
  if (sub_100008D0C(v12, 1, v13) == 1)
  {
    sub_10000B240(v12, &unk_10021A820, &qword_1001992D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000B240(a3, &unk_10021A820, &qword_1001992D0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B240(a3, &unk_10021A820, &qword_1001992D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000A4084(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A417C;

  return v7(a1);
}

uint64_t sub_1000A417C()
{
  sub_100007B50();
  sub_10000A9A4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100005898();
  *v4 = v3;

  sub_1000098BC();

  return v5();
}

uint64_t sub_1000A4268()
{
  sub_100006EE0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10000E144(v4);
  *v5 = v6;
  v7 = sub_1000089C4(v5);

  return v8(v7);
}

uint64_t sub_1000A42FC()
{
  sub_100008964();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10000E144(v5);
  *v6 = v7;
  v6[1] = sub_10005416C;
  sub_10000BA3C();

  return v8();
}

uint64_t sub_1000A43B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A43F0()
{
  sub_100008964();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100004054(v5);
  *v6 = v7;
  v6[1] = sub_10005416C;
  sub_10000BA3C();

  return v8();
}

uint64_t sub_1000A44AC()
{
  sub_100006EE0();
  sub_1000A5324();
  v0 = swift_task_alloc();
  v1 = sub_100004054(v0);
  *v1 = v2;
  v3 = sub_100005EEC(v1);

  return v4(v3);
}

unint64_t sub_1000A453C()
{
  result = qword_1002181B0;
  if (!qword_1002181B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002181B0);
  }

  return result;
}

uint64_t sub_1000A4590()
{
  sub_100006EE0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10000E144(v4);
  *v5 = v6;
  v7 = sub_1000089C4(v5);

  return v8(v7);
}

uint64_t sub_1000A4624()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A466C()
{
  sub_100006EE0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10000E144(v4);
  *v5 = v6;
  v7 = sub_1000089C4(v5);

  return v8(v7);
}

uint64_t sub_1000A4724(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_10000BE80();
}

uint64_t sub_1000A478C(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_100005180(0, &qword_100218228, _CPResultRankingFeedback_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000A4804(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000A48A0()
{
  sub_100008964();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_10000E144(v6);
  *v7 = v8;
  v7[1] = sub_10005416C;
  sub_10000BA3C();

  return v9();
}

void sub_1000A496C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v9 = sub_100046184(&qword_100218230, &unk_100199A00);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v63 - v14;
  _Block_copy(a5);
  _Block_copy(a5);
  v16 = [a1 queryCommand];
  if (v16)
  {
    v17 = v16;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = v18;
      v20 = qword_1002140C0;
      v21 = v17;
      if (v20 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000964C(v22, qword_100232AB0);
      v23 = v21;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v67 = a3;
        v28 = a2;
        v29 = v27;
        v70 = v27;
        *v26 = 136315138;
        v68 = sub_100013354(v19, &selRef_entityIdentifier);
        v69 = v30;
        sub_100046184(&qword_1002181F0, &qword_10019C610);
        v31 = String.init<A>(describing:)();
        v33 = sub_100009684(v31, v32, &v70);

        *(v26 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v24, v25, "performing entity query command: %s", v26, 0xCu);
        sub_100007378(v29);
        a2 = v28;
        a3 = v67;
      }

      _Block_copy(a5);
      sub_1000DD860(a1, a3, a2, a5, v34, v35, v36, v37, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
    }

    else
    {
      v67 = a2;
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        v39 = v38;
        v40 = qword_1002140C0;
        v41 = v17;
        if (v40 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_10000964C(v42, qword_100232AB0);
        v43 = v41;
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v66 = v44;
          v46 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v68 = v63;
          v64 = v46;
          *v46 = 136315138;
          v47 = [v39 card];
          HIDWORD(v65) = v45;
          if (v47)
          {
            v48 = v47;
            v49 = [v47 urlValue];

            if (v49)
            {
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v50 = type metadata accessor for URL();
              v51 = 0;
            }

            else
            {
              v50 = type metadata accessor for URL();
              v51 = 1;
            }

            v52 = v67;
            sub_1000051C0(v13, v51, 1, v50);
            sub_1000A4E88(v13, v15, &qword_100218230, &unk_100199A00);
          }

          else
          {
            v53 = type metadata accessor for URL();
            sub_1000051C0(v15, 1, 1, v53);
            v52 = v67;
          }

          v54 = String.init<A>(describing:)();
          v56 = sub_100009684(v54, v55, &v68);

          v57 = v64;
          *(v64 + 1) = v56;
          v58 = v66;
          _os_log_impl(&_mh_execute_header, v66, BYTE4(v65), "performing show card command: %s", v57, 0xCu);
          sub_100007378(v63);
        }

        else
        {

          v52 = v67;
        }

        _Block_copy(a5);
        sub_1000DD860(a1, a3, v52, a5, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
      }

      else
      {
      }
    }
  }

  _Block_release(a5);
  _Block_release(a5);
  _Block_release(a5);
}

uint64_t sub_1000A4E88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000B9F4(a1, a2, a3, a4);
  sub_1000036B8(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000041F8();
  v9(v8);
  return v4;
}

uint64_t sub_1000A4EFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000899C();
  v5 = v4(v3);
  sub_1000036B8(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000041F8();
  v9(v8);
  return a2;
}

uint64_t sub_1000A4F54()
{
  sub_100008964();
  BagTask = type metadata accessor for ForceFetchBagTask(0);
  sub_100005490(BagTask);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = sub_100004054(v6);
  *v7 = v8;
  v7[1] = sub_10005416C;
  sub_10000BA3C();

  return sub_1000A3174();
}

uint64_t sub_1000A5030()
{
  sub_100006EE0();
  sub_1000A5324();
  v0 = swift_task_alloc();
  v1 = sub_100004054(v0);
  *v1 = v2;
  v3 = sub_100005EEC(v1);

  return v4(v3);
}

uint64_t sub_1000A50C0()
{
  sub_100006EE0();
  sub_1000A5324();
  v0 = swift_task_alloc();
  v1 = sub_100004054(v0);
  *v1 = v2;
  v3 = sub_100005EEC(v1);

  return v4(v3);
}

uint64_t sub_1000A5150(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000899C();
  v5 = v4(v3);
  sub_1000036B8(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000041F8();
  v9(v8);
  return a2;
}

unint64_t sub_1000A51D0()
{
  result = type metadata accessor for ClientState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UserAgent();
    if (v2 <= 0x3F)
    {
      result = sub_100057FB0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000A52AC()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t sub_1000A52C4()
{

  return type metadata accessor for Lock();
}

void sub_1000A52E0()
{

  sub_1000ECA64();
}

uint64_t sub_1000A5330()
{

  return swift_dynamicCast();
}

uint64_t sub_1000A5350(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 136);

  return sub_100009684(v5, v2, (v3 - 88));
}

id sub_1000A5370(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1000B184C(a1, a2, a3, v3);
}

id sub_1000A5388@<X0>(void *a1@<X8>)
{

  return a1;
}

uint64_t sub_1000A53B4()
{
  result = sub_1000A53DC(5);
  byte_100232C58 = result & 1;
  return result;
}

uint64_t sub_1000A53DC(char a1)
{
  sub_1000A5468(a1);
  v1 = String._bridgeToObjectiveC()();

  v2 = MGCopyAnswer();

  if (!v2)
  {
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1000A5468(char a1)
{
  result = 0x726556646C697542;
  switch(a1)
  {
    case 1:
      result = 0x4E746375646F7250;
      break;
    case 2:
      result = 0x54746375646F7250;
      break;
    case 3:
      result = 0x56746375646F7250;
      break;
    case 4:
      result = 0x6F436E6F69676552;
      break;
    case 5:
      result = 0x6C616E7265746E49;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x48746375646F7250;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A55A0()
{
  if (qword_100214168 != -1)
  {
    swift_once();
  }

  return byte_100232C58;
}

void *sub_1000A55F0(void *a1, uint64_t a2)
{
  type metadata accessor for Locker();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v2[2] = v5;
  v7 = type metadata accessor for TopicCacheInMemoryImpl();
  v8 = swift_allocObject();
  *(v8 + 16) = 20;
  sub_1000A6C88();
  type metadata accessor for TopicCacheEntry();
  sub_1000A6CCC(&qword_1002183C0, sub_1000A6C88);
  *(v8 + 24) = Dictionary.init(dictionaryLiteral:)();
  v2[8] = v7;
  v2[9] = &off_1001FE948;
  v2[4] = a2;
  v2[5] = v8;
  v2[10] = 0;
  v2[3] = a1;
  if (a1)
  {
    v9 = qword_100214178;

    v10 = a1;

    if (v9 != -1)
    {
      swift_once();
    }

    [v10 addObserver:v2 selector:"clearCache" name:qword_100232C78 object:0];
  }

  return v2;
}

void sub_1000A5790(void *a1)
{
  v51 = type metadata accessor for Date();
  v2 = *(v51 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v51);
  v52 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100046184(&qword_1002183B0, &qword_10019C758);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v45 - v10;
  v12 = type metadata accessor for TopicCacheEntry();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v45 - v17;
  v19 = *sub_100007534(a1 + 5, a1[8]);
  v20 = sub_100118784();
  if (v20)
  {
    v21 = v20;
    v46 = v16;
    v47 = v9;
    v22 = sub_10000D57C(v20);
    v23 = 0;
    v24 = v21 & 0xC000000000000001;
    v53 = v21 & 0xFFFFFFFFFFFFFF8;
    v54 = v22;
    v48 = v2;
    v49 = (v2 + 8);
    v50 = v21 & 0xC000000000000001;
    while (v54 != v23)
    {
      if (v24)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v53 + 16))
        {
          goto LABEL_26;
        }

        v25 = *(v21 + 8 * v23 + 32);
      }

      v26 = v25;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v27 = *sub_100007534(a1 + 5, a1[8]);
      sub_100118BC4(v11);
      if (sub_100008D0C(v11, 1, v12) == 1)
      {

        sub_10000F94C(v11, &qword_1002183B0, &qword_10019C758);
        break;
      }

      sub_1000A6BC0(v11, v18);
      v28 = *sub_100007534(a1 + 5, a1[8]);
      if (!sub_100118B94())
      {
        v29 = v12;
        v30 = v52;
        Date.init()();
        sub_1000A6CCC(&qword_1002183B8, &type metadata accessor for Date);
        v31 = v51;
        v2 = dispatch thunk of static Comparable.< infix(_:_:)();
        v32 = v30;
        v12 = v29;
        v24 = v50;
        (*v49)(v32, v31);
        if (v2)
        {
          sub_1000A6C2C(v18);

          break;
        }
      }

      v33 = *sub_100007534(a1 + 5, a1[8]);
      sub_100118D64(v26);

      sub_1000A6C2C(v18);
      ++v23;
    }

    v34 = a1[10];
    if (v34)
    {
      [v34 invalidate];
    }

    v2 = v47;
    v24 = v48;
    if (!v54)
    {

      return;
    }

    v35 = v50;
    sub_100106BF8(0);
    if (!v35)
    {
      v36 = *(v21 + 32);
      goto LABEL_20;
    }

LABEL_27:
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_20:
    v37 = v36;

    v38 = *sub_100007534(a1 + 5, a1[8]);
    sub_100118BC4(v2);
    if (sub_100008D0C(v2, 1, v12) == 1)
    {

      sub_10000F94C(v2, &qword_1002183B0, &qword_10019C758);
    }

    else
    {
      v39 = v46;
      sub_1000A6BC0(v2, v46);
      v40 = v52;
      (*(v24 + 16))(v52, v39, v51);
      v41 = swift_allocObject();
      swift_weakInit();
      v42 = objc_allocWithZone(NSTimer);

      v43 = sub_1000A6A9C(v40, 0, sub_1000A6C24, v41, 0.0);

      sub_1000A6C2C(v39);

      v44 = a1[10];
      a1[10] = v43;
    }
  }
}

uint64_t sub_1000A5C6C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000A68CC(sub_1000A5790);
  }

  return result;
}

void sub_1000A5CD8(void *a1, uint64_t a2)
{
  v5 = *(*(v2 + 16) + 16);
  os_unfair_lock_lock(v5);
  sub_1000A5D44(a2, v2, a1);
  os_unfair_lock_unlock(v5);
  sub_1000A68CC(sub_1000A5790);
}

uint64_t sub_1000A5D44(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for TopicCacheEntry();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1000F3C54(v9, v8);
  v10 = *sub_100007534((a2 + 40), *(a2 + 64));
  sub_100118C9C(a3, v8);
  if (qword_100214088 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000964C(v11, qword_100232A08);
  v12 = a3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23[0] = v16;
    *v15 = 136642819;
    v17 = [v12 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_100009684(v18, v20, v23);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Adding result for topic: %{sensitive}s", v15, 0xCu);
    sub_100007378(v16);
  }

  return sub_1000A6C2C(v8);
}

void sub_1000A6118(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v77 = a3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  sub_100003664();
  v10 = v9 - v8;
  v11 = sub_100046184(&qword_1002183B0, &qword_10019C758);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v76 - v13;
  v15 = type metadata accessor for TopicCacheEntry();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  sub_100003664();
  v19 = v18 - v17;
  v20 = type metadata accessor for Client();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  sub_100003664();
  v24 = v23 - v22;
  v25 = a1[4];

  static Client.parsecd.getter();
  v26 = type metadata accessor for ResourceAccessSpan();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v76 = sub_100004A34(v25, 20, v24, 0, 1);
  v90 = _swiftEmptyArrayStorage;
  v29 = sub_10000D57C(a2);
  v30 = 0;
  v86 = a2 & 0xC000000000000001;
  v87 = v29;
  v84 = v6 + 1;
  v85 = a2 & 0xFFFFFFFFFFFFFF8;
  *&v31 = 136642819;
  v82 = v31;
  v80 = a1;
  v81 = v19;
  v78 = v14;
  v79 = a2;
  while (1)
  {
    if (v87 == v30)
    {
      *(v76 + qword_100216C08) = 1;
      sub_10000D684();

      v51 = v90;
      goto LABEL_27;
    }

    if (v86)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v30 >= *(v85 + 16))
      {
        goto LABEL_29;
      }

      v32 = *(a2 + 8 * v30 + 32);
    }

    v6 = v32;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v33 = *sub_100007534(a1 + 5, a1[8]);
    sub_100118BC4(v14);
    if (sub_100008D0C(v14, 1, v15) == 1)
    {
      break;
    }

    v88 = v30;
    sub_1000A6BC0(v14, v19);
    Date.init()();
    sub_1000A6CCC(&qword_1002183B8, &type metadata accessor for Date);
    v34 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*v84)(v10, v5);
    if ((v34 & 1) == 0)
    {

      *(v76 + qword_100216C08) = 27;
      sub_10000D684();
      if (qword_100214088 != -1)
      {
        sub_100005F0C();
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_10000964C(v65, qword_100232A08);
      v66 = v6;
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v89 = v70;
        *v69 = v82;
        v71 = [v66 description];
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;

        v75 = sub_100009684(v72, v74, &v89);

        *(v69 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v67, v68, "Cached result expired for: %{sensitive}s", v69, 0xCu);
        sub_100007378(v70);
        sub_1000036D4();
        sub_1000036D4();
      }

      else
      {
      }

      sub_1000A6C2C(v19);
      goto LABEL_26;
    }

    if (qword_100214088 != -1)
    {
      sub_100005F0C();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000964C(v35, qword_100232A08);
    v6 = v6;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89 = v83;
      *v38 = v82;
      v39 = [v6 description];
      v40 = v6;
      v41 = v15;
      v42 = v10;
      v43 = v5;
      v44 = v39;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v5 = v43;
      v10 = v42;
      v15 = v41;
      v6 = v40;
      v48 = sub_100009684(v45, v47, &v89);
      v14 = v78;

      *(v38 + 4) = v48;
      a2 = v79;
      _os_log_impl(&_mh_execute_header, v36, v37, "Found cached result for: %{sensitive}s", v38, 0xCu);
      sub_100007378(v83);
      v19 = v81;
      sub_1000036D4();
      a1 = v80;
      sub_1000036D4();
    }

    v49 = *(v19 + *(v15 + 20));

    sub_1000BAE90(v50);

    sub_1000A6C2C(v19);
    v30 = v88 + 1;
  }

  sub_10000F94C(v14, &qword_1002183B0, &qword_10019C758);
  if (qword_100214088 == -1)
  {
    goto LABEL_17;
  }

LABEL_30:
  sub_100005F0C();
  swift_once();
LABEL_17:
  v52 = type metadata accessor for Logger();
  sub_10000964C(v52, qword_100232A08);
  v53 = v6;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();

  v56 = os_log_type_enabled(v54, v55);
  v57 = v76;
  if (v56)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v89 = v59;
    *v58 = v82;
    v60 = [v53 description];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64 = sub_100009684(v61, v63, &v89);

    *(v58 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v54, v55, "Cached result missing for: %{sensitive}s, will trigger server request", v58, 0xCu);
    sub_100007378(v59);
    sub_1000036D4();
    sub_1000036D4();
  }

  *(v57 + qword_100216C08) = 6;
  sub_10000D684();

LABEL_26:
  v51 = 0;
LABEL_27:
  *v77 = v51;
}

void sub_1000A68CC(void (*a1)(uint64_t))
{
  v3 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock(v3);
  a1(v1);

  os_unfair_lock_unlock(v3);
}

void sub_1000A6924(void *a1)
{
  v2 = *sub_100007534(a1 + 5, a1[8]);
  sub_100118E1C();
  v3 = a1[10];
  if (v3)
  {
    [v3 invalidate];
    v3 = a1[10];
  }

  a1[10] = 0;
}

uint64_t sub_1000A69D4()
{
  sub_1000A68CC(sub_1000A6924);
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 removeObserver:v0];
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 32);

  sub_100007378((v0 + 40));

  return v0;
}

uint64_t sub_1000A6A44()
{
  sub_1000A69D4();

  return _swift_deallocClassInstance(v0, 88, 7);
}

id sub_1000A6A9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v17[4] = a3;
  v17[5] = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10002874C;
  v17[3] = &unk_1001FA340;
  v13 = _Block_copy(v17);
  v14 = [v6 initWithFireDate:isa interval:a2 & 1 repeats:v13 block:a5];
  _Block_release(v13);

  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(a1, v15);

  return v14;
}

uint64_t sub_1000A6BC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicCacheEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A6C2C(uint64_t a1)
{
  v2 = type metadata accessor for TopicCacheEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A6C88()
{
  result = qword_100219380;
  if (!qword_100219380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100219380);
  }

  return result;
}

uint64_t sub_1000A6CCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A6D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC7parsecd16DownloadResource_redirectUrl;
  v10 = type metadata accessor for URL();
  sub_1000051C0(v4 + v9, 1, 1, v10);
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  (*(*(v10 - 8) + 32))(v4 + OBJC_IVAR____TtC7parsecd16DownloadResource_url, a3, v10);
  sub_100011994();
  swift_beginAccess();
  sub_1000B1998(a4, v4 + v9);
  swift_endAccess();
  return v4;
}

void sub_1000A6DF0()
{
  sub_100005478();
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = sub_100003650(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000407C();
  v10 = (v8 - v9);
  __chkstk_darwin(v11);
  v13 = v45 - v12;
  v14 = sub_100046184(&qword_100218230, &unk_100199A00);
  v15 = sub_100005490(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000407C();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v45 - v22;
  v24 = OBJC_IVAR____TtC7parsecd16DownloadResource_redirectUrl;
  sub_1000089E4();
  sub_1000B1BA8(v1 + v24, v23, &qword_100218230, &unk_100199A00);
  v45[0] = v2;
  LODWORD(v2) = sub_100008D0C(v23, 1, v2);
  sub_100015C0C(v23, &qword_100218230, &unk_100199A00);
  sub_100046184(&qword_100214E48, &unk_1001995C0);
  v25 = (v5 + 16);
  v26 = (v5 + 8);
  if (v2 == 1)
  {
    inited = swift_initStackObject();
    sub_10000C854(inited, xmmword_100197F20);
    v28 = OBJC_IVAR____TtC7parsecd16DownloadResource_url;
    sub_1000089E4();
    v29 = v1 + v28;
    v30 = v45[0];
    (*v25)(v10, v29, v45[0]);
    v31 = URL.absoluteString.getter();
    v33 = v32;
    (*v26)(v10, v30);
    inited[3].n128_u64[0] = v31;
    inited[3].n128_u64[1] = v33;
LABEL_5:
    Dictionary.init(dictionaryLiteral:)();
    sub_100005460();
    return;
  }

  v34 = swift_initStackObject();
  sub_10000C854(v34, xmmword_100198F10);
  v35 = OBJC_IVAR____TtC7parsecd16DownloadResource_url;
  sub_1000089E4();
  v36 = v45[0];
  (*v25)(v13, v1 + v35, v45[0]);
  v37 = URL.absoluteString.getter();
  v39 = v38;
  v40 = *v26;
  (*v26)(v13, v36);
  v34[3].n128_u64[0] = v37;
  v34[3].n128_u64[1] = v39;
  strcpy(&v34[4], "redirect_url");
  v34[4].n128_u8[13] = 0;
  v34[4].n128_u16[7] = -5120;
  sub_1000B1BA8(v1 + v24, v20, &qword_100218230, &unk_100199A00);
  v41 = sub_1000B1FC4();
  sub_10000C944(v41, v42, v36);
  if (!v43)
  {
    v34[5].n128_u64[0] = URL.absoluteString.getter();
    v34[5].n128_u64[1] = v44;
    v40(v20, v36);
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1000A7128()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC7parsecd16DownloadResource_url;
  v3 = type metadata accessor for URL();
  sub_10000690C(v3);
  (*(v4 + 8))(v0 + v2);
  sub_100015C0C(v0 + OBJC_IVAR____TtC7parsecd16DownloadResource_redirectUrl, &qword_100218230, &unk_100199A00);
  return v0;
}

uint64_t sub_1000A71AC()
{
  sub_1000A7128();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DownloadResource()
{
  result = qword_1002183F8;
  if (!qword_1002183F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A7258()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000487E0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000A7330()
{
  sub_100005478();
  v37 = type metadata accessor for URLQueryItem();
  v0 = sub_100003650(v37);
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v0);
  sub_100003664();
  v7 = v6 - v5;
  v8 = sub_100046184(&unk_100219320, &unk_1001A06F0);
  v9 = sub_100005490(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_10000407C();
  v14 = v12 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v36 - v17;
  __chkstk_darwin(v16);
  v20 = &v36 - v19;
  v21 = objc_opt_self();
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v25 = [v21 parsec_componentsWithURL:v23 resolvingAgainstBaseURL:0];

  if (v25)
  {
    static URLComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = type metadata accessor for URLComponents();
    v27 = 0;
  }

  else
  {
    v26 = type metadata accessor for URLComponents();
    v27 = 1;
  }

  sub_1000051C0(v18, v27, 1, v26);
  sub_1000B1948(v18, v20, &unk_100219320, &unk_1001A06F0);
  sub_1000B1BA8(v20, v14, &unk_100219320, &unk_1001A06F0);
  type metadata accessor for URLComponents();
  sub_10000C944(v14, 1, v26);
  if (v34)
  {
    sub_100015C0C(v20, &unk_100219320, &unk_1001A06F0);
    v20 = v14;
LABEL_22:
    sub_100015C0C(v20, &unk_100219320, &unk_1001A06F0);
    sub_100005460();
    return;
  }

  v28 = URLComponents.queryItems.getter();
  sub_10000690C(v26);
  (*(v29 + 8))(v14, v26);
  if (!v28)
  {
    goto LABEL_22;
  }

  v36 = v20;
  v30 = 0;
  v31 = *(v28 + 16);
  v32 = (v2 + 8);
  while (1)
  {
    if (v31 == v30)
    {

      goto LABEL_21;
    }

    if (v30 >= *(v28 + 16))
    {
      break;
    }

    (*(v2 + 16))(v7, v28 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v30, v37);
    v34 = URLQueryItem.name.getter() == 0x6E6F6973726576 && v33 == 0xE700000000000000;
    if (v34)
    {

LABEL_20:

      URLQueryItem.value.getter();
      (*v32)(v7, v37);
LABEL_21:
      v20 = v36;
      goto LABEL_22;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_20;
    }

    (*v32)(v7, v37);
    ++v30;
  }

  __break(1u);
}

void sub_1000A76E0()
{
  sub_100005478();
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = sub_100003650(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100003664();
  v10 = v9 - v8;
  v11 = sub_100046184(&unk_100219320, &unk_1001A06F0);
  v12 = sub_100005490(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10000407C();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = v54 - v19;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v21 = sub_1000041F8();
  sub_1000B1BA8(v21, v22, &unk_100219320, &unk_1001A06F0);
  v23 = type metadata accessor for URLComponents();
  v24 = sub_10001497C();
  sub_10000C944(v24, v25, v23);
  if (v26)
  {
    sub_100015C0C(v17, &unk_100219320, &unk_1001A06F0);
LABEL_12:
    sub_100015C0C(v20, &unk_100219320, &unk_1001A06F0);
    sub_100005460();
    return;
  }

  v27 = URLComponents.path.getter();
  v29 = v28;
  sub_10000690C(v23);
  (*(v30 + 8))(v17, v23);
  v55 = v27;
  v56 = v29;
  v54[0] = 47;
  v54[1] = 0xE100000000000000;
  sub_10000527C();
  v31 = StringProtocol.components<A>(separatedBy:)();

  if (v31[2] <= 4uLL)
  {

    if (qword_100214070 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000964C(v32, qword_1002329C0);
    (*(v5 + 16))(v10, v1, v2);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      sub_10000F554();
      v35 = swift_slowAlloc();
      v36 = sub_10000FE20();
      *v35 = 138412290;
      URL._bridgeToObjectiveC()("mutex_t");
      v38 = v37;
      v39 = *(v5 + 8);
      v40 = sub_10000F18C();
      v41(v40);
      *(v35 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&_mh_execute_header, v33, v34, "invalid lookup hints url when processing signature: %@", v35, 0xCu);
      sub_100015C0C(v36, &unk_100214C70, &qword_10019B4D0);
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {

      v51 = *(v5 + 8);
      v52 = sub_10000F18C();
      v53(v52);
    }

    goto LABEL_12;
  }

  v42 = v31[11];
  v55 = v31[10];
  v56 = v42;

  v43._countAndFlagsBits = 45;
  v43._object = 0xE100000000000000;
  String.append(_:)(v43);
  if (v31[2] < 5uLL)
  {
    __break(1u);
  }

  else
  {
    v44 = v31[12];
    v45 = v31[13];

    v46._countAndFlagsBits = v44;
    v46._object = v45;
    String.append(_:)(v46);

    v47._countAndFlagsBits = 45;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    if (v31[2] >= 3uLL)
    {
      v48 = v31[8];
      v49 = v31[9];

      v50._countAndFlagsBits = v48;
      v50._object = v49;
      String.append(_:)(v50);

      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1000A7ACC()
{
  sub_100005478();
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100003650(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100003664();
  sub_1000058C8();
  v9 = type metadata accessor for DispatchQoS();
  v10 = sub_100003650(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100003664();
  sub_10000FEE8();
  if ((sub_1000101C8(*(*&v0[OBJC_IVAR____TtC7parsecd15DownloadManager_hasStarted] + 16), *&v0[OBJC_IVAR____TtC7parsecd15DownloadManager_hasStarted]) & 1) == 0)
  {
    if (qword_1002140C8 != -1)
    {
      sub_100005F20();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000964C(v15, qword_100232AC8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      *swift_slowAlloc() = 0;
      sub_10000BF98(&_mh_execute_header, v18, v19, "DownloadManager started. Dispatching loadResources.");
      sub_1000037A4();
    }

    v20 = *&v2[OBJC_IVAR____TtC7parsecd15DownloadManager_queue];
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    v30[4] = sub_1000B1924;
    v30[5] = v21;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 1107296256;
    sub_100005D74();
    v30[2] = v22;
    v30[3] = &unk_1001FA3F8;
    v23 = _Block_copy(v30);
    v24 = v2;
    static DispatchQoS.unspecified.getter();
    sub_1000042DC();
    sub_100015330(v25, v26);
    sub_100046184(&unk_100217030, &unk_1001989C0);
    sub_10000CB0C();
    sub_100007864();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_1000076CC();
    _Block_release(v23);
    v27 = *(v6 + 8);
    v28 = sub_100003674();
    v29(v28);
    (*(v12 + 8))(v1, v9);
  }

  sub_100005460();
}

void sub_1000A7D9C()
{
  sub_100005478();
  v1 = v0;
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  v3 = sub_100005490(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000407C();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  sub_100005924();
  v110 = v10;
  __chkstk_darwin(v11);
  v13 = v96 - v12;
  v109 = type metadata accessor for URL();
  v14 = sub_100003650(v109);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10000407C();
  sub_100004144();
  __chkstk_darwin(v19);
  sub_100009934();
  v108 = v20;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = sub_100003650(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_100003664();
  v27 = *(v1 + OBJC_IVAR____TtC7parsecd15DownloadManager_queue);
  *(v26 - v25) = v27;
  v28 = sub_10000FF9C();
  v29(v28);
  v30 = v27;
  _dispatchPreconditionTest(_:)();
  v31 = sub_100012ED0();
  v32(v31);
  if (v27)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      v35 = [objc_opt_self() standardUserDefaults];
      v36 = [v35 dictionaryForKey:@"download_resources"];

      if (v36)
      {
        v101 = v8;
        v96[1] = v34;
        v106 = v13;
        v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v38 = 0;
        v40 = v37 + 64;
        v39 = *(v37 + 64);
        v41 = *(v37 + 32);
        sub_10000DC14();
        v44 = v43 & v42;
        v104 = OBJC_IVAR____TtC7parsecd15DownloadManager_resources;
        v46 = (v45 + 63) >> 6;
        v100 = (v16 + 32);
        v99 = (v16 + 16);
        v97 = (v16 + 8);
        v98 = v1;
        v105 = v37;
        while (v44)
        {
          v47 = v38;
LABEL_11:
          v48 = __clz(__rbit64(v44));
          v44 &= v44 - 1;
          v49 = v48 | (v47 << 6);
          v50 = (*(v37 + 48) + 16 * v49);
          v52 = *v50;
          v51 = v50[1];
          sub_100009848(*(v37 + 56) + 32 * v49, v111);
          *&v112 = v52;
          *(&v112 + 1) = v51;
          sub_100028734(v111, &v113);

LABEL_12:
          v115 = v112;
          v116[0] = v113;
          v116[1] = v114;
          v53 = *(&v112 + 1);
          if (!*(&v112 + 1))
          {
            sub_100023F48();

            goto LABEL_39;
          }

          v54 = v115;
          sub_100028734(v116, &v112);
          sub_100046184(&qword_1002184F0, &unk_10019C640);
          if (swift_dynamicCast())
          {
            v55 = *&v111[0];
            if (*(*&v111[0] + 16) && (v56 = sub_100005B74(7107189, 0xE300000000000000), (v57 & 1) != 0))
            {
              v107 = v54;
              sub_1000B2004(v56);
              v58 = v106;
              URL.init(string:)();
              v59 = v109;

              sub_10000C944(v58, 1, v59);
              if (v60)
              {

                sub_100015C0C(v58, &qword_100218230, &unk_100199A00);
              }

              else
              {
                (*v100)(v108, v58, v59);
                sub_1000051C0(v110, 1, 1, v59);
                if (*(v55 + 16) && (v61 = sub_100005B74(0x7463657269646572, 0xEC0000006C72755FLL), (v62 & 1) != 0))
                {
                  sub_1000B2004(v61);

                  v63 = v101;
                  URL.init(string:)();
                  v59 = v109;

                  v64 = v110;
                  sub_100015C0C(v110, &qword_100218230, &unk_100199A00);
                  sub_1000B1948(v63, v64, &qword_100218230, &unk_100199A00);
                }

                else
                {
                }

                v65 = v103;
                (*v99)(v103, v108, v59);
                v66 = v101;
                sub_1000B1BA8(v110, v101, &qword_100218230, &unk_100199A00);
                v67 = type metadata accessor for DownloadResource();
                v68 = *(v67 + 48);
                v69 = *(v67 + 52);
                v70 = swift_allocObject();

                v71 = sub_10000F18C();
                sub_1000A6D14(v71, v72, v65, v66);
                v73 = v104;
                sub_100011994();
                swift_beginAccess();
                v102 = v70;

                v74 = *(v1 + v73);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v111[0] = *(v1 + v73);
                v76 = *&v111[0];
                *(v1 + v73) = 0x8000000000000000;
                v77 = sub_10000F18C();
                v79 = sub_100005B74(v77, v78);
                v81 = *(v76 + 16);
                v82 = (v80 & 1) == 0;
                v83 = v81 + v82;
                if (__OFADD__(v81, v82))
                {
                  goto LABEL_42;
                }

                v84 = v79;
                v85 = v80;
                sub_100046184(&unk_100218518, &unk_10019C7E0);
                if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v83))
                {
                  v86 = sub_100005B74(v107, v53);
                  v1 = v98;
                  if ((v85 & 1) != (v87 & 1))
                  {
                    goto LABEL_44;
                  }

                  v84 = v86;
                }

                else
                {
                  v1 = v98;
                }

                v88 = *&v111[0];
                if (v85)
                {
                  v89 = *(*&v111[0] + 56);
                  v90 = *(v89 + 8 * v84);
                  *(v89 + 8 * v84) = v102;
                }

                else
                {
                  sub_10000FE84(*&v111[0] + 8 * (v84 >> 6));
                  v92 = (v91 + 16 * v84);
                  *v92 = v107;
                  v92[1] = v53;
                  *(*(v88 + 56) + 8 * v84) = v102;
                  v93 = *(v88 + 16);
                  v94 = __OFADD__(v93, 1);
                  v95 = v93 + 1;
                  if (v94)
                  {
                    goto LABEL_43;
                  }

                  *(v88 + 16) = v95;
                }

                *(v1 + v104) = v88;
                swift_endAccess();

                sub_100015C0C(v110, &qword_100218230, &unk_100199A00);
                (*v97)(v108, v109);
              }

              v37 = v105;
            }

            else
            {
            }
          }

          else
          {
          }
        }

        while (1)
        {
          v47 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v47 >= v46)
          {
            v44 = 0;
            v113 = 0u;
            v114 = 0u;
            v112 = 0u;
            goto LABEL_12;
          }

          v44 = *(v40 + 8 * v47);
          ++v38;
          if (v44)
          {
            v38 = v47;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

      swift_unknownObjectRelease();
    }

LABEL_39:
    sub_100005460();
    return;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000A8570()
{
  sub_100005478();
  v1 = type metadata accessor for DispatchPredicate();
  v2 = sub_100003650(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100003664();
  v7 = *(v0 + OBJC_IVAR____TtC7parsecd15DownloadManager_queue);
  *(v6 - v5) = v7;
  v8 = sub_10000FF9C();
  v9(v8);
  v10 = v7;
  _dispatchPreconditionTest(_:)();
  v11 = sub_100012ED0();
  v12(v11);
  if (v7)
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_19:
      sub_100005460();
      return;
    }

    v13 = OBJC_IVAR____TtC7parsecd15DownloadManager_resources;
    sub_1000089E4();
    v14 = *(v0 + v13);
    v16 = v14 + 64;
    v15 = *(v14 + 64);
    v17 = *(v14 + 32);
    sub_10000DC14();
    v20 = v19 & v18;
    v22 = ((v21 + 63) >> 6);
    v56 = v23;

    v24 = 0;
    v25 = &_swiftEmptyDictionarySingleton;
    v54 = v22;
    v55 = v16;
    if (!v20)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v26 = v24;
LABEL_8:
      v27 = __clz(__rbit64(v20)) | (v26 << 6);
      v28 = (*(v56 + 48) + 16 * v27);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(*(v56 + 56) + 8 * v27);

      sub_1000A6DF0();
      v57 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v25;
      v34 = sub_100005B74(v30, v29);
      v36 = v25[2];
      v37 = (v35 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        break;
      }

      v39 = v34;
      v40 = v35;
      sub_100046184(&qword_100218530, &unk_10019C7F0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v38))
      {
        v41 = sub_100005B74(v30, v29);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_24;
        }

        v39 = v41;
      }

      v20 &= v20 - 1;
      if (v40)
      {

        v25 = v58;
        v43 = v58[7];
        v44 = *(v43 + 8 * v39);
        *(v43 + 8 * v39) = v57;
      }

      else
      {
        v25 = v58;
        sub_10000FE84(&v58[v39 >> 6]);
        v46 = (v45 + 16 * v39);
        *v46 = v30;
        v46[1] = v29;
        *(v58[7] + 8 * v39) = v57;

        v47 = v58[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_22;
        }

        v58[2] = v49;
      }

      v24 = v26;
      v22 = v54;
      v16 = v55;
      if (!v20)
      {
LABEL_5:
        while (1)
        {
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v26 >= v22)
          {

            v50 = [objc_opt_self() standardUserDefaults];
            sub_100046184(&qword_1002184F0, &unk_10019C640);
            Dictionary._bridgeToObjectiveC()();
            sub_1000189B0();

            v51 = @"download_resources";
            v52 = sub_100012634();
            [v52 v53];

            swift_unknownObjectRelease();
            goto LABEL_19;
          }

          v20 = *(v16 + 8 * v26);
          ++v24;
          if (v20)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
LABEL_24:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000A88F8()
{
  sub_100005478();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100003650(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100003664();
  sub_1000058C8();
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_100003650(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100003664();
  sub_10000FEE8();
  v17 = sub_1000A4804(v4);
  if (!v17)
  {
    v39 = 0u;
    v40 = 0u;
    goto LABEL_10;
  }

  v18 = v17;
  v38[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38[7] = v19;
  AnyHashable.init<A>(_:)();
  sub_100034150(v18, &v39);

  sub_10003430C(v38);
  if (!*(&v40 + 1))
  {
LABEL_10:
    sub_100015C0C(&v39, &qword_1002181D0, &qword_100198E00);
    goto LABEL_11;
  }

  sub_100005180(0, &qword_100218240, PARBag_ptr);
  if (swift_dynamicCast())
  {
    v37 = v8;
    v20 = v38[0];
    if (qword_1002140C8 != -1)
    {
      sub_100005F20();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000964C(v21, qword_100232AC8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      *swift_slowAlloc() = 0;
      sub_10000BF98(&_mh_execute_header, v24, v25, "Received bag change notification");
      sub_1000037A4();
    }

    sub_1000A7ACC();
    v26 = *&v2[OBJC_IVAR____TtC7parsecd15DownloadManager_queue];
    sub_100006634();
    v27 = swift_allocObject();
    *(v27 + 16) = v2;
    *(v27 + 24) = v20;
    v38[4] = sub_1000B1CEC;
    v38[5] = v27;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 1107296256;
    sub_100005D74();
    v38[2] = v28;
    v38[3] = &unk_1001FA588;
    v29 = _Block_copy(v38);
    v30 = v2;
    v31 = v20;
    static DispatchQoS.unspecified.getter();
    *&v39 = _swiftEmptyArrayStorage;
    sub_1000042DC();
    sub_100015330(v32, v33);
    sub_100046184(&unk_100217030, &unk_1001989C0);
    sub_10000CB0C();
    sub_100007864();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_1000076CC();
    _Block_release(v29);

    v34 = *(v37 + 8);
    v35 = sub_100003674();
    v36(v35);
    (*(v14 + 8))(v1, v11);
  }

LABEL_11:
  sub_100005460();
}

void sub_1000A8C94(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = sub_100085F88();
    sub_100006634();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = a1;
    v8[4] = sub_1000B1D14;
    v8[5] = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1000ABB8C;
    v8[3] = &unk_1001FA5D8;
    v5 = _Block_copy(v8);
    v6 = v1;
    v7 = a1;

    [v3 getAllTasksWithCompletionHandler:v5];
    _Block_release(v5);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000A8E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a1;
  v80 = a2;
  v6 = sub_100046184(&qword_100218230, &unk_100199A00);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v72 - v11;
  __chkstk_darwin(v10);
  v14 = &v72 - v13;
  v15 = type metadata accessor for URL();
  v78 = *(v15 - 8);
  v16 = *(v78 + 64);
  v17 = __chkstk_darwin(v15);
  v77 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v75 = &v72 - v20;
  __chkstk_darwin(v19);
  v81 = &v72 - v21;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = (&v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(a4 + OBJC_IVAR____TtC7parsecd15DownloadManager_queue);
  *v26 = v27;
  (*(v23 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v22);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  result = (*(v23 + 8))(v26, v22);
  if ((v27 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = result;
    sub_1000B1BA8(a3, v14, &qword_100218230, &unk_100199A00);
    v31 = v15;
    if (sub_100008D0C(v14, 1, v15) == 1)
    {
      sub_100015C0C(v14, &qword_100218230, &unk_100199A00);
      sub_1000A94EC(v79, v80, 1, v32, v33, v34, v35, v36, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
      return swift_unknownObjectRelease();
    }

    v74 = v30;
    v37 = v78;
    v73 = *(v78 + 32);
    v73(v81, v14, v31);
    v38 = OBJC_IVAR____TtC7parsecd15DownloadManager_resources;
    swift_beginAccess();
    v40 = v79;
    v39 = v80;
    v41 = sub_1000BCE88(v79, v80, *(a4 + v38));
    swift_endAccess();
    if (!v41)
    {
      v42 = v75;
      (*(v37 + 16))(v75, v81, v31);
      sub_1000051C0(v12, 1, 1, v31);
      v43 = type metadata accessor for DownloadResource();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      v46 = swift_allocObject();

      v47 = v42;
      v41 = v46;
      sub_1000A6D14(v40, v39, v47, v12);
      swift_beginAccess();

      v48 = *(a4 + v38);
      swift_isUniquelyReferenced_nonNull_native();
      v84 = *(a4 + v38);
      sub_1000BDDCC();
      *(a4 + v38) = v84;
      swift_endAccess();
    }

    v49 = v76;
    sub_1000A9F38(v76);
    if (sub_100008D0C(v49, 1, v31) == 1)
    {
      (*(v37 + 8))(v81, v31);

      sub_100015C0C(v49, &qword_100218230, &unk_100199A00);
      return swift_unknownObjectRelease();
    }

    v73(v77, v49, v31);
    v50 = v37;
    v51 = OBJC_IVAR____TtC7parsecd16DownloadResource_url;
    swift_beginAccess();
    v52 = v75;
    (*(v50 + 16))(v75, v41 + v51, v31);
    URL._bridgeToObjectiveC()(v53);
    v55 = v54;
    v56 = *(v50 + 8);
    v78 = v50 + 8;
    v56(v52, v31);
    v57 = v81;
    URL._bridgeToObjectiveC()(v58);
    v60 = v59;
    LOBYTE(v50) = sub_1000B1D24(v55, v59);

    if (v50)
    {
      v61 = [objc_opt_self() defaultManager];
      URL.path.getter();
      v62 = String._bridgeToObjectiveC()();

      v63 = [v61 fileExistsAtPath:v62];

      if (v63)
      {
        if ((sub_1000AA0E8(v79, v80) & 1) == 0)
        {

          v56(v77, v31);
          v56(v57, v31);
          return swift_unknownObjectRelease();
        }

        v64 = 0xE600000000000000;
        v65 = 0x70756B6F6F6CLL;
      }

      else
      {
        v64 = 0xE700000000000000;
        v65 = 0x676E697373696DLL;
      }
    }

    else
    {
      v64 = 0xE600000000000000;
      v65 = 0x657461647075;
    }

    v67 = v79;
    v66 = v80;
    v68 = sub_1000AA0E8(v79, v80);
    v69 = 60.0;
    if ((v68 & 1) == 0)
    {
      v69 = 0.0;
    }

    v70 = v66;
    v71 = v81;
    sub_1000AA18C(v67, v70, v81, v65, v64, v69);

    v56(v77, v31);
    v56(v71, v31);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000A94EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005478();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v120 = v26;
  v124 = v27;
  v122 = v28;
  v29 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v29);
  v31 = *(v30 + 64);
  sub_100003760();
  __chkstk_darwin(v32);
  sub_1000058C8();
  v121 = type metadata accessor for URL();
  v33 = sub_100003650(v121);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  sub_100003664();
  sub_10000549C(v39 - v38);
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v41 = sub_100003650(v40);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  sub_100003664();
  v46 = v45 - v44;
  v119 = type metadata accessor for DispatchQoS();
  v47 = sub_100003650(v119);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  sub_100003664();
  v52 = v51 - v50;
  v53 = type metadata accessor for DispatchPredicate();
  v54 = sub_100003650(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  __chkstk_darwin(v54);
  sub_100003664();
  sub_10000FEE8();
  v59 = *&v25[OBJC_IVAR____TtC7parsecd15DownloadManager_queue];
  *v22 = v59;
  (*(v56 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v53);
  v60 = v59;
  LOBYTE(v59) = _dispatchPreconditionTest(_:)();
  (*(v56 + 8))(v22, v53);
  if ((v59 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v117 = v21;
    v61 = OBJC_IVAR____TtC7parsecd15DownloadManager_resources;
    swift_beginAccess();
    v62 = sub_1000BCE88(v122, v124, *&v25[v61]);
    swift_endAccess();
    if (v62)
    {

      sub_100011994();
      swift_beginAccess();
      sub_1000BC128(v122, v124);
      swift_endAccess();

      sub_1000A8570();
      v63 = sub_100085F88();
      v64 = *(Strong + 312);
      v65 = swift_allocObject();
      v65[2] = v63;
      v65[3] = v122;
      v65[4] = v124;
      v65[5] = v25;
      v129 = sub_1000B1E40;
      v130 = v65;
      *&v126 = _NSConcreteStackBlock;
      *(&v126 + 1) = 1107296256;
      v127 = sub_10000D50C;
      v128 = &unk_1001FA678;
      v116 = v35;
      v66 = _Block_copy(&v126);
      v67 = v64;
      v68 = v63;

      v69 = v25;
      static DispatchQoS.unspecified.getter();
      v125 = _swiftEmptyArrayStorage;
      sub_1000042DC();
      sub_100015330(v70, v71);
      sub_100046184(&unk_100217030, &unk_1001989C0);
      sub_10000CB0C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v72 = v66;
      v35 = v116;
      _Block_release(v72);

      sub_100012F20(&a12);
      v73(v46, v40);
      sub_100012F20(&a10);
      v74(v52, v119);
    }

    if ((v120 & 1) == 0)
    {
      goto LABEL_23;
    }

    sub_10000BA48(&v131);
    v52 = v122;
    sub_1000A9F38(v75);
    v76 = sub_100009940();
    sub_10000C944(v76, v77, v121);
    if (!v103)
    {
      (*(v35 + 32))(v118, v46, v121);
      v78 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v79);
      v81 = v80;
      *&v126 = 0;
      v82 = sub_100012634();
      v84 = [v82 v83];

      v85 = v126;
      if (v84)
      {
        v86 = objc_opt_self();
        v87 = v85;
        v88 = [v86 defaultCenter];
        sub_100046184(&unk_100217020, &unk_10019B4C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100197F20;
        *&v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v126 + 1) = v90;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v122;
        *(inited + 80) = v124;

        v91 = Dictionary.init(dictionaryLiteral:)();
        sub_100033AC0(@"PARFileDeletedNotification", 0, v91, v88);
        sub_1000B1FAC();
        goto LABEL_28;
      }

      v92 = v126;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v93 = _convertErrorToNSError(_:)();
      v94 = [v93 userInfo];

      v95 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000BCDCC(v96, v97, v95, &v126);

      if (v128)
      {
        sub_100005180(0, &qword_100218540, NSError_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_24;
        }

        v98 = [v125 domain];
        v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v101 = v100;

        v103 = v99 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v101 == v102;
        if (v103)
        {
        }

        else
        {
          v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v104 & 1) == 0)
          {

            goto LABEL_24;
          }
        }

        v105 = [v125 code];

        if (v105 == 2)
        {
          v106 = sub_1000B1FDC();
          v107(v106);

LABEL_23:
          sub_1000B1FAC();
          goto LABEL_30;
        }
      }

      else
      {
        sub_100015C0C(&v126, &qword_1002181D0, &qword_100198E00);
      }

LABEL_24:
      if (qword_1002140C8 == -1)
      {
LABEL_25:
        v108 = type metadata accessor for Logger();
        sub_10000964C(v108, qword_100232AC8);

        swift_errorRetain();
        v88 = Logger.logObject.getter();
        v109 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v88, v109))
        {
          v110 = sub_10001BCD4();
          v111 = sub_10000FE20();
          sub_1000083D0();
          v112 = swift_slowAlloc();
          *&v126 = v112;
          *v110 = 136315394;
          *(v110 + 4) = sub_100009684(v52, v124, &v126);
          *(v110 + 12) = 2112;
          v113 = _convertErrorToNSError(_:)();
          *(v110 + 14) = v113;
          *v111 = v113;
          _os_log_impl(&_mh_execute_header, v88, v109, "error trying to remove %s: %@", v110, 0x16u);
          sub_100015C0C(v111, &unk_100214C70, &qword_10019B4D0);
          sub_1000037A4();

          sub_100007378(v112);
          sub_1000037A4();

          sub_1000037A4();

          sub_1000B1FAC();

LABEL_29:
          v114 = sub_1000B1FDC();
          v115(v114);
          goto LABEL_30;
        }

        sub_1000B1FAC();

LABEL_28:

        goto LABEL_29;
      }

LABEL_32:
      sub_100005F20();
      swift_once();
      goto LABEL_25;
    }

    sub_1000B1FAC();
    sub_100015C0C(v46, &qword_100218230, &unk_100199A00);
  }

LABEL_30:
  sub_100005460();
}

uint64_t sub_1000A9F38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v2);
  v4 = *(v3 + 64);
  sub_100003760();
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = [objc_opt_self() defaultManager];
    NSFileManager.parsecdAssetsDirectoryURL.getter();

    v9 = type metadata accessor for URL();
    sub_10000C944(v7, 1, v9);
    if (v10)
    {
      swift_unknownObjectRelease();
      sub_100015C0C(v7, &qword_100218230, &unk_100199A00);
      v16 = sub_100009940();
    }

    else
    {
      sub_100003898();
      URL.appendingPathComponent(_:isDirectory:)();
      swift_unknownObjectRelease();
      sub_10000690C(v9);
      (*(v15 + 8))(v7, v9);
      v16 = a1;
      v17 = 0;
    }

    return sub_1000051C0(v16, v17, 1, v9);
  }

  else
  {
    type metadata accessor for URL();
    v11 = sub_100009940();

    return sub_1000051C0(v11, v12, 1, v13);
  }
}

uint64_t sub_1000AA0E8(uint64_t a1, uint64_t a2)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v4 == a2)
  {
    goto LABEL_12;
  }

  v6 = sub_10001BCEC();

  if ((v6 & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a1 || v8 != a2)
    {
      v7 = sub_10001BCEC();
LABEL_13:

      return v7 & 1;
    }

LABEL_12:
    v7 = 1;
    goto LABEL_13;
  }

  v7 = 1;
  return v7 & 1;
}

void sub_1000AA18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, double a6)
{
  v153 = a4;
  v154 = a5;
  v150 = a3;
  v151 = a2;
  v152 = a1;
  v147 = type metadata accessor for Client();
  v9 = sub_100003650(v147);
  v144 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100003664();
  sub_10000549C(v14 - v13);
  v143 = type metadata accessor for Date();
  v15 = sub_100003650(v143);
  v142 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_100003664();
  sub_100007C68(v20 - v19);
  v21 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v21);
  v23 = *(v22 + 64);
  sub_100003760();
  __chkstk_darwin(v24);
  sub_100007C68(&v134 - v25);
  v26 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  sub_100005490(v26);
  v28 = *(v27 + 64);
  sub_100003760();
  __chkstk_darwin(v29);
  v31 = &v134 - v30;
  v32 = type metadata accessor for URLRequest();
  v33 = sub_100003650(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  sub_10000407C();
  sub_100004144();
  __chkstk_darwin(v38);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v39);
  sub_100009934();
  sub_10000549C(v40);
  v41 = type metadata accessor for DispatchPredicate();
  v42 = sub_100003650(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v42);
  sub_100003664();
  v49 = v48 - v47;
  v50 = *(v6 + OBJC_IVAR____TtC7parsecd15DownloadManager_queue);
  *(v48 - v47) = v50;
  (*(v44 + 104))(v48 - v47, enum case for DispatchPredicate.onQueue(_:), v41);
  v51 = v50;
  v52 = _dispatchPreconditionTest(_:)();
  (*(v44 + 8))(v49, v41);
  if ((v52 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v54 = Strong;
  v52 = v151;
  sub_1000AAD88(v152, v151, v150, v153, v154);
  if (v7)
  {
    swift_unknownObjectRelease();
    return;
  }

  v55 = v32;
  if (sub_100008D0C(v31, 1, v32) == 1)
  {
    sub_100015C0C(v31, &unk_100218500, &qword_10019C7D8);
    if (qword_1002140C8 == -1)
    {
LABEL_8:
      v56 = type metadata accessor for Logger();
      sub_10000964C(v56, qword_100232AC8);

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v58))
      {
        sub_10000F554();
        v59 = swift_slowAlloc();
        sub_1000083D0();
        v60 = swift_slowAlloc();
        v156[0] = v60;
        *v59 = 136315138;
        *(v59 + 4) = sub_100009684(v152, v52, v156);
        sub_100007C74();
        _os_log_impl(v61, v62, v63, v64, v65, v66);
        sub_100007378(v60);
        sub_1000037A4();

        sub_1000037A4();
      }

      swift_unknownObjectRelease();

      return;
    }

LABEL_27:
    sub_100005F20();
    swift_once();
    goto LABEL_8;
  }

  v152 = v6;
  v67 = v149;
  (*(v35 + 32))(v149, v31, v55);
  v68 = v55;
  if (qword_1002140C8 != -1)
  {
    sub_100005F20();
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  sub_10000964C(v69, qword_100232AC8);
  v70 = *(v35 + 16);
  v70(v148, v67, v55);
  v71 = v145;
  v70(v145, v67, v55);

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  v74 = os_log_type_enabled(v72, v73);
  v150 = 0;
  v139 = v35;
  v138 = v55;
  if (v74)
  {
    v136 = v73;
    v137 = v72;
    v75 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v155 = v135;
    *v75 = 136315906;
    v76 = v140;
    URLRequest.url.getter();
    v77 = type metadata accessor for URL();
    v78 = sub_1000B1FC4();
    if (sub_100008D0C(v78, v79, v77) == 1)
    {
      sub_100015C0C(v76, &qword_100218230, &unk_100199A00);
      v80 = 0;
      v81 = 0;
    }

    else
    {
      v80 = URL.absoluteString.getter();
      v81 = v83;
      sub_10000690C(v77);
      (*(v84 + 8))(v76, v77);
    }

    v85 = v139;
    v156[0] = v80;
    v156[1] = v81;
    sub_100046184(&qword_1002181F0, &qword_10019C610);
    String.init<A>(describing:)();
    v86 = *(v85 + 8);
    v151 = (v85 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v86(v148, v68);
    v87 = sub_1000041F8();
    v90 = sub_100009684(v87, v88, v89);

    *(v75 + 4) = v90;
    *(v75 + 12) = 2080;
    if (v154)
    {
      v91 = v153;
    }

    else
    {
      v91 = 0;
    }

    if (v154)
    {
      v92 = v154;
    }

    else
    {
      v92 = 0xE000000000000000;
    }

    v93 = sub_100009684(v91, v92, &v155);

    *(v75 + 14) = v93;
    *(v75 + 22) = 2048;
    *(v75 + 24) = a6;
    *(v75 + 32) = 2080;
    v94 = v145;
    v156[0] = URLRequest.allHTTPHeaderFields.getter();
    sub_100046184(&qword_100215368, &unk_10019C800);
    String.init<A>(describing:)();
    v86(v94, v68);
    v95 = sub_1000041F8();
    v98 = sub_100009684(v95, v96, v97);

    *(v75 + 34) = v98;
    v99 = v137;
    _os_log_impl(&_mh_execute_header, v137, v136, "starting download of %s reason: %s delay: %f headers: %s", v75, 0x2Au);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();
  }

  else
  {

    v82 = *(v35 + 8);
    v151 = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v82(v71, v55);
    v82(v148, v55);
  }

  v100 = sub_100085F88();
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v102 = sub_100012634();
  v104 = [v102 v103];

  v105 = v104;
  nw_activity_create();
  v106 = sub_100012634();
  [v106 v107];
  swift_unknownObjectRelease();
  v108 = v141;
  Date.init(timeIntervalSinceNow:)();
  v109 = Date._bridgeToObjectiveC()().super.isa;
  sub_100012F20(&v157);
  v110(v108, v143);
  v111 = sub_100012634();
  [v111 v112];

  [v105 resume];
  v113 = sub_100004950();
  v114 = v146;
  static Client.parsecd.getter();
  v115 = v105;
  v116 = [v115 _nw_activity];
  v117 = type metadata accessor for ResourceAccessNetworkSpan();
  v118 = *(v117 + 48);
  v119 = *(v117 + 52);
  v120 = swift_allocObject();
  v121 = v120 + qword_100232D88;
  *v121 = 0;
  *(v121 + 8) = 1;
  v122 = v144;
  (*(v144 + 16))(v120 + qword_100232D80, v114, v147);
  sub_100046184(&unk_100217040, &qword_1001989F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100198F10;
  v124 = Client.name.getter();
  v126 = v125;
  v154 = v54;
  *(inited + 56) = &type metadata for String;
  v127 = sub_10000512C();
  *(inited + 32) = v124;
  *(inited + 40) = v126;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v127;
  *(inited + 64) = v127;
  *(inited + 72) = 0;
  *(inited + 80) = 0xE000000000000000;
  *(v120 + *(*v120 + 472)) = 0;
  v128 = *(*v120 + 480);
  *(v120 + v128) = 0;
  v129 = (v120 + *(*v120 + 464));
  *v129 = v115;
  v129[1] = &off_1001FC230;
  [v115 set_nw_activity:v116];
  v130 = *(v120 + v128);
  *(v120 + v128) = v116;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_10007DD84(v113, 9, "client=%{signpost.description:attribute,public}s, version=%{signpost.description:attribute,public}s", 99, 2, inited);
  swift_unknownObjectRelease();
  (*(v122 + 8))(v146, v147);
  [v115 taskIdentifier];

  v131 = OBJC_IVAR____TtC7parsecd15DownloadManager_spans;
  v132 = v152;
  sub_100011994();
  swift_beginAccess();

  v133 = *(v132 + v131);
  swift_isUniquelyReferenced_nonNull_native();
  v155 = *(v132 + v131);
  sub_100003898();
  sub_1000BDDE0();
  *(v132 + v131) = v155;
  swift_endAccess();

  swift_unknownObjectRelease();
  (*(v139 + 8))(v149, v138);
}

uint64_t sub_1000AB2E4(uint64_t a1)
{
  v3 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v3);
  v5 = *(v4 + 64);
  sub_100003760();
  __chkstk_darwin(v6);
  sub_1000058C8();
  v7 = type metadata accessor for URL();
  v8 = sub_100003650(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_10000407C();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v33[-v17];
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);

  LOBYTE(v19) = sub_1000AA0E8(v19, v20);

  if ((v19 & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = OBJC_IVAR____TtC7parsecd16DownloadResource_redirectUrl;
  sub_1000089E4();
  sub_1000B1BA8(a1 + v21, v1, &qword_100218230, &unk_100199A00);
  v22 = sub_1000B1FC4();
  sub_10000C944(v22, v23, v7);
  if (v24)
  {
    sub_100015C0C(v1, &qword_100218230, &unk_100199A00);
LABEL_5:
    v25 = OBJC_IVAR____TtC7parsecd16DownloadResource_url;
    sub_1000089E4();
    (*(v10 + 16))(v15, a1 + v25, v7);
    sub_1000A7330();
    v31 = v26;
    (*(v10 + 8))(v15, v7);
    return v31;
  }

  v27 = *(v10 + 32);
  v28 = sub_100003898();
  v29(v28);
  sub_1000A76E0();
  v31 = v30;
  (*(v10 + 8))(v18, v7);
  return v31;
}

void sub_1000AB500(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v11[4] = sub_1000B1E4C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000ABB8C;
  v11[3] = &unk_1001FA6C8;
  v9 = _Block_copy(v11);

  v10 = a4;

  [a1 getAllTasksWithCompletionHandler:v9];
  _Block_release(v9);
}

void sub_1000AB5F8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = sub_10000D57C(a1);
  for (i = 0; v8 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v10 = *(a1 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v12 = v10;
    sub_1000AB6D0(&v12, a2, a3, a4);
  }
}

uint64_t sub_1000AB6D0(void **a1, uint64_t a2, uint64_t a3, char *a4)
{
  v43 = a3;
  v40 = a4;
  v42 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  v21 = *a1;
  v22 = [v21 originalRequest];
  if (v22)
  {
    v23 = v22;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = type metadata accessor for URLRequest();
    v25 = 0;
  }

  else
  {
    v24 = type metadata accessor for URLRequest();
    v25 = 1;
  }

  sub_1000051C0(v18, v25, 1, v24);
  sub_1000B1948(v18, v20, &unk_100218500, &qword_10019C7D8);
  type metadata accessor for URLRequest();
  if (sub_100008D0C(v20, 1, v24) == 1)
  {
    return sub_100015C0C(v20, &unk_100218500, &qword_10019C7D8);
  }

  v39 = v6;
  v27 = URLRequest.allHTTPHeaderFields.getter();
  result = (*(*(v24 - 8) + 8))(v20, v24);
  if (v27)
  {
    v28 = sub_1000BCE30(0xD00000000000001BLL, 0x80000001001AFC90, v27);
    v30 = v29;

    if (v30)
    {
      if (v28 == v42 && v30 == v43)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          return result;
        }
      }

      [v21 cancel];
      v33 = [v21 taskIdentifier];
      v34 = v40;
      v35 = *&v40[OBJC_IVAR____TtC7parsecd15DownloadManager_queue];
      v36 = swift_allocObject();
      *(v36 + 16) = v34;
      *(v36 + 24) = v33;
      aBlock[4] = sub_1000B1E58;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D50C;
      aBlock[3] = &unk_1001FA718;
      v37 = _Block_copy(aBlock);
      v38 = v34;
      static DispatchQoS.unspecified.getter();
      aBlock[7] = _swiftEmptyArrayStorage;
      sub_100015330(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100046184(&unk_100217030, &unk_1001989C0);
      sub_10000CB0C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v37);
      (*(v39 + 8))(v9, v5);
      (*(v41 + 8))(v13, v10);
    }
  }

  return result;
}

uint64_t sub_1000ABB8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_100005180(0, &qword_100218538, NSURLSessionTask_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_1000ABC10(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = sub_100003650(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100003664();
  sub_10000FEE8();
  v12 = *(v2 + OBJC_IVAR____TtC7parsecd15DownloadManager_queue);
  *v3 = v12;
  (*(v9 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v14 = *(v9 + 8);
  v15 = sub_100003898();
  result = v16(v15);
  if (v12)
  {
    v18 = OBJC_IVAR____TtC7parsecd15DownloadManager_resources;
    swift_beginAccess();
    v19 = sub_1000BCE88(a1, a2, *(v2 + v18));
    swift_endAccess();
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000ABD54()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v6);
  v8 = *(v7 + 64);
  sub_100003760();
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  v12 = type metadata accessor for URL();
  v13 = sub_100003650(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_10000407C();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000A9F38(v11);
    sub_10000C944(v11, 1, v12);
    if (v24)
    {
      swift_unknownObjectRelease();
      sub_100015C0C(v11, &qword_100218230, &unk_100199A00);
    }

    else
    {
      (*(v15 + 32))(v23, v11, v12);
      if (!v1)
      {
        goto LABEL_8;
      }

      v50 = v5;
      v25 = [objc_opt_self() defaultManager];
      URL.path.getter();
      v26 = String._bridgeToObjectiveC()();

      v52[0] = 0;
      v27 = [v25 attributesOfItemAtPath:v26 error:v52];

      v28 = v52[0];
      if (v27)
      {
        type metadata accessor for FileAttributeKey(0);
        sub_100015330(&qword_1002147B0, type metadata accessor for FileAttributeKey);
        v49 = v15;
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v3;
        v29 = v28;

        v15 = v49;
        Dictionary._bridgeToObjectiveC()();
        sub_1000189B0();

        v30 = v27;
        *v1 = v27;
LABEL_8:
        sub_100005180(0, &qword_100218550, NSFileHandle_ptr);
        (*(v15 + 16))(v20, v23, v12);
        sub_1000AC258(v20);
        v31 = *(v15 + 8);
        v32 = sub_100003674();
        v33(v32);
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      v34 = v52[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v35 = v50;
      if (qword_1002140C8 != -1)
      {
        sub_100005F20();
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000964C(v36, qword_100232AC8);
      sub_1000189B0();

      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = sub_10001BCD4();
        v40 = sub_10000FE20();
        v51 = v3;
        v41 = v40;
        sub_1000083D0();
        v42 = swift_slowAlloc();
        v43 = v35;
        v44 = v42;
        v52[0] = v42;
        *v39 = 136315394;
        *(v39 + 4) = sub_100009684(v43, v51, v52);
        *(v39 + 12) = 2112;
        v45 = _convertErrorToNSError(_:)();
        *(v39 + 14) = v45;
        *v41 = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "no file handle for %s: %@", v39, 0x16u);
        sub_100015C0C(v41, &unk_100214C70, &qword_10019B4D0);
        sub_1000037A4();

        sub_100007378(v44);
        sub_1000037A4();

        sub_1000037A4();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v46 = *(v15 + 8);
      v47 = sub_100003674();
      v48(v47);
    }
  }

LABEL_15:
  sub_100005460();
}

id sub_1000AC258(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_1000AC3B0(uint64_t a1, void *a2)
{
  v96 = a2;
  v4 = sub_100046184(&qword_100218230, &unk_100199A00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v89 = &v81 - v6;
  v97 = type metadata accessor for URL();
  v7 = *(v97 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v97);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = &v81 - v12;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a1 + OBJC_IVAR____TtC7parsecd15DownloadManager_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    if (sub_1000B1C94(v96))
    {
      v91 = v7;
      v85 = v21;
      v86 = v11;
      v92 = v2;

      v22 = sub_100018F1C(v90);
      v23 = OBJC_IVAR____TtC7parsecd15DownloadManager_resources;
      swift_beginAccess();
      v24 = *(a1 + v23);
      v25 = v24 + 64;
      v26 = 1 << *(v24 + 32);
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v28 = v27 & *(v24 + 64);
      v29 = (v26 + 63) >> 6;
      v100 = v22 + 56;
      v95 = v24;
      result = swift_bridgeObjectRetain_n();
      v30 = 0;
      v93 = a1;
      for (i = v22; ; v22 = i)
      {
        v31 = v97;
        if (!v28)
        {
          break;
        }

LABEL_13:
        v33 = __clz(__rbit64(v28)) | (v30 << 6);
        v34 = (*(v95 + 48) + 16 * v33);
        v35 = *v34;
        v36 = v34[1];
        v37 = *(*(v95 + 56) + 8 * v33);
        if (*(v22 + 16))
        {
          v38 = *(v22 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v39 = Hasher._finalize()();
          v45 = ~(-1 << *(v22 + 32));
          while (1)
          {
            v46 = v39 & v45;
            if (((*(v100 + (((v39 & v45) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v39 & v45)) & 1) == 0)
            {
              break;
            }

            v47 = (*(i + 48) + 16 * v46);
            if (*v47 != v35 || v47[1] != v36)
            {
              v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v39 = v46 + 1;
              if ((v49 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_24;
          }
        }

        else
        {
          v50 = v34[1];
        }

        sub_1000A94EC(v35, v36, 1, v40, v41, v42, v43, v44, v81, *(&v81 + 1), v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
LABEL_24:
        v28 &= v28 - 1;
      }

      while (1)
      {
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (v32 >= v29)
        {
          break;
        }

        v28 = *(v25 + 8 * v32);
        ++v30;
        if (v28)
        {
          v30 = v32;
          goto LABEL_13;
        }
      }

      sub_1000112A4();
      sub_10001130C();
      result = swift_unknownObjectRelease();
      v52 = 0;
      v53 = 1 << *(v22 + 32);
      v54 = -1;
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      v55 = v54 & *(v22 + 56);
      v56 = (v53 + 63) >> 6;
      v90 = v91 + 2;
      ++v91;
      *&v51 = 136446466;
      v81 = v51;
      v57 = v92;
      while (v55)
      {
        v58 = v52;
LABEL_33:
        v59 = __clz(__rbit64(v55));
        v55 &= v55 - 1;
        v60 = (*(v22 + 48) + ((v58 << 10) | (16 * v59)));
        v61 = *v60;
        v62 = v60[1];

        v95 = v61;
        v63 = String._bridgeToObjectiveC()();
        v64 = [v96 urlForIdentifier:v63];

        if (v64)
        {
          v65 = v94;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          if (qword_1002140C8 != -1)
          {
            swift_once();
          }

          v66 = type metadata accessor for Logger();
          sub_10000964C(v66, qword_100232AC8);
          v67 = v86;
          v88 = *v90;
          v88(v86, v65, v31);

          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.info.getter();

          v70 = os_log_type_enabled(v68, v69);
          v92 = v57;
          if (v70)
          {
            v71 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v99[0] = v84;
            *v71 = v81;
            *(v71 + 4) = sub_100009684(v95, v62, v99);
            *(v71 + 12) = 2080;
            HIDWORD(v83) = v69;
            v72 = URL.absoluteString.getter();
            v74 = v73;
            v87 = *v91;
            v87(v67, v97);
            v75 = sub_100009684(v72, v74, v99);
            v76 = v93;

            *(v71 + 14) = v75;
            _os_log_impl(&_mh_execute_header, v68, BYTE4(v83), "add resource %{public}s from %s", v71, 0x16u);
            swift_arrayDestroy();

            v31 = v97;

            v77 = v95;
            v78 = v89;
          }

          else
          {

            v87 = *v91;
            v87(v67, v31);
            v78 = v89;
            v76 = v93;
            v77 = v95;
          }

          v79 = v94;
          v88(v78, v94, v31);
          sub_1000051C0(v78, 0, 1, v31);
          v80 = v92;
          sub_1000A8E0C(v77, v62, v78, v76);
          v57 = v80;
          v22 = i;
          if (v80)
          {

            swift_unknownObjectRelease();

            sub_100015C0C(v78, &qword_100218230, &unk_100199A00);
            return (v87)(v79, v31);
          }

          sub_100015C0C(v78, &qword_100218230, &unk_100199A00);
          result = (v87)(v79, v31);
          v52 = v58;
        }

        else
        {

          v52 = v58;
        }
      }

      while (1)
      {
        v58 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v58 >= v56)
        {

          sub_1000A8570();
          return swift_unknownObjectRelease();
        }

        v55 = *(v100 + 8 * v58);
        ++v52;
        if (v55)
        {
          goto LABEL_33;
        }
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000ACC40(uint64_t a1, char *a2, void *a3)
{
  v25 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v26 = *(v9 - 8);
  v27 = v9;
  v10 = *(v26 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000D57C(a1);
  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {
      v17 = *&a2[OBJC_IVAR____TtC7parsecd15DownloadManager_queue];
      v18 = swift_allocObject();
      v19 = v25;
      v18[2] = a2;
      v18[3] = v19;
      aBlock[4] = sub_1000B1D1C;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D50C;
      aBlock[3] = &unk_1001FA628;
      v20 = _Block_copy(aBlock);
      v21 = a2;
      v22 = v19;
      static DispatchQoS.unspecified.getter();
      v30 = _swiftEmptyArrayStorage;
      sub_100015330(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100046184(&unk_100217030, &unk_1001989C0);
      sub_10000CB0C();
      v23 = v29;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v20);
      (*(v28 + 8))(v8, v23);
      (*(v26 + 8))(v12, v27);

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v15 = *(a1 + 8 * i + 32);
    }

    v16 = v15;
    if (__OFADD__(i, 1))
    {
      break;
    }

    aBlock[0] = v15;
    sub_1000ACF74(aBlock, a2);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1000ACF74(void **a1, char *a2)
{
  v51 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  __chkstk_darwin(v4);
  v54 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  v7 = *(v53 + 64);
  __chkstk_darwin(v55);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v16 = sub_100046184(&qword_100218230, &unk_100199A00);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v47 - v18;
  v20 = *a1;
  if (qword_1002140C8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000964C(v21, qword_100232AC8);
  v22 = v20;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v49 = v4;
    v50 = v2;
    v25 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock[0] = v48;
    *v25 = 136315138;
    v26 = [v22 originalRequest];
    if (v26)
    {
      v27 = v26;
      static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = type metadata accessor for URLRequest();
      v29 = 0;
    }

    else
    {
      v28 = type metadata accessor for URLRequest();
      v29 = 1;
    }

    sub_1000051C0(v13, v29, 1, v28);
    sub_1000B1948(v13, v15, &unk_100218500, &qword_10019C7D8);
    type metadata accessor for URLRequest();
    if (sub_100008D0C(v15, 1, v28) == 1)
    {
      v30 = 0x3E6C696E3CLL;
      v31 = &unk_100218500;
      v32 = &qword_10019C7D8;
      v33 = v15;
    }

    else
    {
      URLRequest.url.getter();
      (*(*(v28 - 8) + 8))(v15, v28);
      v34 = type metadata accessor for URL();
      if (sub_100008D0C(v19, 1, v34) != 1)
      {
        v30 = URL.absoluteString.getter();
        v35 = v36;
        (*(*(v34 - 8) + 8))(v19, v34);
        goto LABEL_14;
      }

      v30 = 0x3E6C696E3CLL;
      v31 = &qword_100218230;
      v32 = &unk_100199A00;
      v33 = v19;
    }

    sub_100015C0C(v33, v31, v32);
    v35 = 0xE500000000000000;
LABEL_14:
    v37 = sub_100009684(v30, v35, aBlock);

    *(v25 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v23, v24, "cancel download %s", v25, 0xCu);
    sub_100007378(v48);

    v4 = v49;
    goto LABEL_15;
  }

LABEL_15:
  [v22 cancel];
  v38 = [v22 taskIdentifier];
  v39 = v51;
  v40 = *&v51[OBJC_IVAR____TtC7parsecd15DownloadManager_queue];
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v41 + 24) = v38;
  aBlock[4] = sub_1000B1F80;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D50C;
  aBlock[3] = &unk_1001FA768;
  v42 = _Block_copy(aBlock);
  v43 = v39;
  v44 = v52;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100015330(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  v45 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);
  (*(v56 + 8))(v45, v4);
  (*(v53 + 8))(v44, v55);
}

uint64_t sub_1000AD5D8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7parsecd15DownloadManager_spans;
  sub_100011994();
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = sub_1000BBA18(a2);
  if (v7)
  {
    v8 = v6;
    v9 = *(a1 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + v4);
    *(a1 + v4) = 0x8000000000000000;
    v11 = *(v14 + 24);
    sub_100046184(&qword_100218548, &unk_10019D8E0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);
    v12 = *(*(v14 + 56) + 8 * v8);
    type metadata accessor for ResourceAccessNetworkSpan();
    _NativeDictionary._delete(at:)();
    *(a1 + v4) = v14;
  }

  return swift_endAccess();
}

void sub_1000AD8C8(uint64_t a1, void *a2, uint64_t a3, char *a4, const void *a5)
{
  v99 = a4;
  v118 = a3;
  v105 = type metadata accessor for DispatchWorkItemFlags();
  v104 = *(v105 - 8);
  v7 = *(v104 + 64);
  __chkstk_darwin(v105);
  v102 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for DispatchQoS();
  v101 = *(v103 - 8);
  v9 = *(v101 + 64);
  __chkstk_darwin(v103);
  v100 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for URL();
  v108 = *(v117 - 8);
  v11 = *(v108 + 64);
  v12 = __chkstk_darwin(v117);
  v98 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v13;
  __chkstk_darwin(v12);
  v107 = &v95 - v14;
  v15 = sub_100046184(&qword_100218230, &unk_100199A00);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v112 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v95 - v19;
  v21 = type metadata accessor for URLRequest();
  v115 = *(v21 - 8);
  v22 = *(v115 + 64);
  __chkstk_darwin(v21);
  v116 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v109 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v110 = &v95 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v95 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v95 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v95 - v37;
  __chkstk_darwin(v36);
  v40 = &v95 - v39;
  v113 = swift_allocObject();
  v114 = a5;
  *(v113 + 16) = a5;
  _Block_copy(a5);
  v41 = [a2 originalRequest];
  if (v41)
  {
    v42 = v41;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  sub_1000051C0(v38, v43, 1, v21);
  sub_1000B1948(v38, v40, &unk_100218500, &qword_10019C7D8);
  v44 = sub_100008D0C(v40, 1, v21);
  v45 = v115;
  if (v44 == 1)
  {
    sub_100015C0C(v40, &unk_100218500, &qword_10019C7D8);
    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    v46._object = 0x80000001001AFCB0;
    v46._countAndFlagsBits = 0xD000000000000017;
    v47 = URLRequest.value(forHTTPHeaderField:)(v46);
    countAndFlagsBits = v47.value._countAndFlagsBits;
    object = v47.value._object;
    (*(v45 + 8))(v40, v21);
  }

  v48 = [a2 originalRequest];
  if (v48)
  {
    v49 = v48;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  sub_1000051C0(v32, v50, 1, v21);
  sub_1000B1948(v32, v35, &unk_100218500, &qword_10019C7D8);
  if (sub_100008D0C(v35, 1, v21) == 1)
  {
    sub_100015C0C(v35, &unk_100218500, &qword_10019C7D8);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53._countAndFlagsBits = 0xD00000000000001BLL;
    v53._object = 0x80000001001AFC90;
    v54 = URLRequest.value(forHTTPHeaderField:)(v53);
    v51 = v54.value._countAndFlagsBits;
    v52 = v54.value._object;
    (*(v45 + 8))(v35, v21);
  }

  v55 = v116;
  if (qword_1002140C8 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_10000964C(v56, qword_100232AC8);
  (*(v45 + 16))(v55, v118, v21);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();

  v59 = os_log_type_enabled(v57, v58);
  v106 = v51;
  if (v59)
  {
    v60 = 0x3E6C696E3CLL;
    v61 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    aBlock[0] = v95;
    *v61 = 136315394;
    if (v52)
    {
      v62 = v51;
    }

    else
    {
      v62 = 0x3E6C696E3CLL;
    }

    if (v52)
    {
      v63 = v52;
    }

    else
    {
      v63 = 0xE500000000000000;
    }

    v64 = sub_100009684(v62, v63, aBlock);

    *(v61 + 4) = v64;
    *(v61 + 12) = 2080;
    URLRequest.url.getter();
    v65 = v117;
    if (sub_100008D0C(v20, 1, v117) == 1)
    {
      sub_100015C0C(v20, &qword_100218230, &unk_100199A00);
      v66 = 0xE500000000000000;
    }

    else
    {
      v60 = URL.absoluteString.getter();
      v66 = v68;
      (*(v108 + 8))(v20, v65);
    }

    v67 = *(v115 + 8);
    v67(v116, v21);
    v69 = sub_100009684(v60, v66, aBlock);

    *(v61 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v57, v58, "will begin %s url %s", v61, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v67 = *(v45 + 8);
    v67(v55, v21);
  }

  v70 = v117;
  v71 = v112;
  if (!v52)
  {
LABEL_33:

    goto LABEL_34;
  }

  URLRequest.url.getter();
  if (sub_100008D0C(v71, 1, v70) != 1)
  {
    v72 = v107;
    v73 = v108;
    v74 = *(v108 + 32);
    v74(v107, v71, v70);
    if (sub_1000AA0E8(v106, v52))
    {
      v75 = v99;
      v118 = *&v99[OBJC_IVAR____TtC7parsecd15DownloadManager_queue];
      v76 = v98;
      (*(v73 + 16))(v98, v72, v70);
      v77 = (*(v73 + 80) + 40) & ~*(v73 + 80);
      v78 = (v97 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
      v79 = swift_allocObject();
      v80 = v106;
      *(v79 + 2) = v75;
      *(v79 + 3) = v80;
      *(v79 + 4) = v52;
      v74(&v79[v77], v76, v70);
      v81 = &v79[v78];
      v82 = object;
      *v81 = countAndFlagsBits;
      v81[1] = v82;
      v83 = &v79[(v78 + 23) & 0xFFFFFFFFFFFFFFF8];
      v84 = v113;
      *v83 = sub_1000B1BA0;
      v83[1] = v84;
      aBlock[4] = sub_1000B1BF8;
      aBlock[5] = v79;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D50C;
      aBlock[3] = &unk_1001FA538;
      v85 = _Block_copy(aBlock);
      v86 = v75;

      v87 = v100;
      static DispatchQoS.unspecified.getter();
      v119 = _swiftEmptyArrayStorage;
      sub_100015330(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100046184(&unk_100217030, &unk_1001989C0);
      sub_10000CB0C();
      v88 = v102;
      v89 = v105;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v85);
      (*(v104 + 8))(v88, v89);
      (*(v101 + 8))(v87, v103);
      (*(v108 + 8))(v107, v70);

      v90 = v114;
      goto LABEL_38;
    }

    (*(v73 + 8))(v72, v70);

    goto LABEL_33;
  }

  sub_100015C0C(v71, &qword_100218230, &unk_100199A00);
LABEL_34:
  v91 = v110;
  sub_1000051C0(v110, 1, 1, v21);
  v92 = v109;
  sub_1000B1BA8(v91, v109, &unk_100218500, &qword_10019C7D8);
  if (sub_100008D0C(v92, 1, v21) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v67(v92, v21);
  }

  v94 = v114;
  (*(v114 + 2))(v114, 0, isa);

  sub_100015C0C(v91, &unk_100218500, &qword_10019C7D8);

  v90 = v94;
LABEL_38:
  _Block_release(v90);
}

void sub_1000AE50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[0] = a7;
  v29[1] = a8;
  v30 = a6;
  v12 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v29 - v17;
  v19 = type metadata accessor for URLRequest();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AAD88(a2, a3, a4, a5, v30);
  v24 = v29[0];
  if (sub_100008D0C(v18, 1, v19) == 1)
  {
    sub_100015C0C(v18, &unk_100218500, &qword_10019C7D8);
    if (qword_1002140C8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000964C(v25, qword_100232AC8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "createDownloadRequest failed ", v28, 2u);
    }
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    (*(v20 + 16))(v16, v23, v19);
    sub_1000051C0(v16, 0, 1, v19);
    v24(1, v16);
    sub_100015C0C(v16, &unk_100218500, &qword_10019C7D8);
    (*(v20 + 8))(v23, v19);
  }
}

void sub_1000AE958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v12 - v8;
  sub_1000B1BA8(a2, &v12 - v8, &unk_100218500, &qword_10019C7D8);
  v10 = type metadata accessor for URLRequest();
  isa = 0;
  if (sub_100008D0C(v9, 1, v10) != 1)
  {
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  (*(a3 + 16))(a3, a1, isa);
}

void sub_1000AEA78()
{
  sub_100005478();
  v115 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  v6 = sub_100005490(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000407C();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v14 = &v109 - v13;
  v15 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v15);
  v17 = *(v16 + 64);
  sub_100003760();
  __chkstk_darwin(v18);
  sub_10000549C(&v109 - v19);
  v114 = type metadata accessor for URL();
  v20 = sub_100003650(v114);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_100007C68(&v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v27 = &v109 - v26;
  if (v2)
  {
    v116 = v11;
    v28 = v14;
    v29 = v4;
    v30 = &v109 - v26;
    v31 = v22;
    v32 = v2;
    v33 = _convertErrorToNSError(_:)();
    v34 = [v33 domain];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v39 = v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38;
    if (v39)
    {
    }

    else
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v40 & 1) == 0)
      {

        v22 = v31;
        v27 = v30;
        v4 = v29;
        v2 = v32;
        v14 = v28;
        v11 = v116;
        goto LABEL_10;
      }
    }

    v41 = [v33 code];

    v39 = v41 + 999 == 0;
    v22 = v31;
    v27 = v30;
    v4 = v29;
    v2 = v32;
    v14 = v28;
    v11 = v116;
    if (v39)
    {
LABEL_28:
      sub_100005460();
      return;
    }
  }

LABEL_10:
  v42 = [v4 response];
  if (!v42)
  {
    goto LABEL_28;
  }

  v116 = v42;
  objc_opt_self();
  sub_10000F230();
  v43 = swift_dynamicCastObjCClass();
  if (v43)
  {
    v44 = v43;
    v45 = v2;
    v46 = &v115[OBJC_IVAR____TtC7parsecd15DownloadManager_assembly];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v48 = Strong;
      v111 = *(v46 + 1);
      v49 = [v4 originalRequest];
      if (v49)
      {
        v50 = v49;
        static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

        v51 = type metadata accessor for URLRequest();
        v52 = 0;
      }

      else
      {
        v51 = type metadata accessor for URLRequest();
        v52 = 1;
      }

      sub_1000051C0(v11, v52, 1, v51);
      sub_1000B1948(v11, v14, &unk_100218500, &qword_10019C7D8);
      type metadata accessor for URLRequest();
      v55 = sub_10001497C();
      sub_10000C944(v55, v56, v51);
      if (v39)
      {
        sub_100015C0C(v14, &unk_100218500, &qword_10019C7D8);
        v62 = v113;
        v57 = sub_100009940();
        sub_1000051C0(v57, v58, 1, v114);
      }

      else
      {
        v59 = v113;
        URLRequest.url.getter();
        sub_10000690C(v51);
        v61 = v51;
        v62 = v59;
        (*(v60 + 8))(v14, v61);
        v63 = sub_1000B1FC4();
        v64 = v114;
        sub_10000C944(v63, v65, v114);
        if (!v66)
        {
          v110 = v22;
          v75 = *(v22 + 32);
          v75(v27, v59, v64);
          if ([v44 statusCode] - 200 > 0xC7)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_100046184(&qword_1002147F0, &qword_1001989D0);
            inited = swift_initStackObject();
            sub_100005594(inited, xmmword_100197F20);
            _StringGuts.grow(_:)(24);

            strcpy(&v117, "status code ");
            BYTE13(v117) = 0;
            HIWORD(v117) = -5120;
            v122 = [v44 statusCode];
            v126._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            sub_1000B2024(v126);

            sub_100007A28(v90);
            v127._countAndFlagsBits = URL.absoluteString.getter();
            sub_1000B2024(v127);

            v91 = v117;
            *(inited + 72) = &type metadata for String;
            *(inited + 48) = v91;
            Dictionary.init(dictionaryLiteral:)();
            v92 = objc_allocWithZone(NSError);
            v93 = sub_100019040();
            sub_100086A30();
            swift_unknownObjectRelease();

            sub_100012F20(v123);
            v94(v27, v64);
            goto LABEL_28;
          }

          v113 = v48;
          if (v45)
          {
            v76 = _convertErrorToNSError(_:)();
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_100046184(&qword_1002147F0, &qword_1001989D0);
            v77 = swift_initStackObject();
            sub_100005594(v77, xmmword_100197F20);
            _StringGuts.grow(_:)(30);

            *&v117 = 0x64616F6C6E776F64;
            *(&v117 + 1) = 0xEF20726F72726520;
            v78 = [v76 domain];
            v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v80 = v27;
            v82 = v81;

            v83._countAndFlagsBits = v79;
            v83._object = v82;
            String.append(_:)(v83);

            v84._countAndFlagsBits = 32;
            v84._object = 0xE100000000000000;
            String.append(_:)(v84);
            v122 = [v76 code];
            v124._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            sub_1000B2024(v124);

            sub_100007A28(v85);
            v125._countAndFlagsBits = URL.absoluteString.getter();
            sub_1000B2024(v125);

            v86 = v117;
            *(v77 + 72) = &type metadata for String;
            *(v77 + 48) = v86;
            Dictionary.init(dictionaryLiteral:)();
            v87 = objc_allocWithZone(NSError);
            v88 = sub_100019040();
            sub_100086A30();
            swift_unknownObjectRelease();

            (*(v110 + 8))(v80, v114);
            goto LABEL_28;
          }

          v95 = v115;
          sub_1000A7ACC();
          v109 = *&v95[OBJC_IVAR____TtC7parsecd15DownloadManager_queue];
          sub_10000BA48(v123);
          v97 = v112;
          (*(v96 + 16))(v112, v27, v114);
          v98 = (LOBYTE(stru_100211048.name) + 32) & ~LOBYTE(stru_100211048.name);
          v99 = swift_allocObject();
          *(v99 + 16) = v4;
          *(v99 + 24) = v95;
          v100 = v97;
          v101 = v114;
          v75((v99 + v98), v100, v114);
          v102 = (v99 + ((v24 + v98 + 7) & 0xFFFFFFFFFFFFFFF8));
          v103 = v111;
          *v102 = v113;
          v102[1] = v103;
          sub_100006634();
          v104 = swift_allocObject();
          *(v104 + 16) = sub_1000B1A08;
          *(v104 + 24) = v99;
          v120 = sub_100028274;
          v121 = v104;
          *&v117 = _NSConcreteStackBlock;
          *(&v117 + 1) = 1107296256;
          v118 = sub_1000282A4;
          v119 = &unk_1001FA470;
          v105 = _Block_copy(&v117);
          v106 = v4;
          v107 = v95;
          swift_unknownObjectRetain();

          dispatch_sync(v109, v105);
          _Block_release(v105);
          swift_unknownObjectRelease();

          sub_100012F20(v123);
          v108(v27, v101);
          LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

          if ((v105 & 1) == 0)
          {
            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_35;
        }
      }

      sub_100015C0C(v62, &qword_100218230, &unk_100199A00);
      if (qword_1002140C8 == -1)
      {
LABEL_25:
        v67 = type metadata accessor for Logger();
        sub_10000964C(v67, qword_100232AC8);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v68, v69))
        {
          *swift_slowAlloc() = 0;
          sub_1000B1FD0();
          _os_log_impl(v70, v71, v72, v73, v74, 2u);
          sub_1000037A4();
        }

        swift_unknownObjectRelease();

        goto LABEL_28;
      }

LABEL_35:
      sub_100005F20();
      swift_once();
      goto LABEL_25;
    }
  }

  sub_10000F230();
  sub_100005460();
}

uint64_t sub_1000AF4E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v125 = a5;
  v126 = a4;
  v135 = a3;
  v132 = type metadata accessor for DispatchWorkItemFlags();
  v131 = *(v132 - 8);
  v7 = *(v131 + 64);
  __chkstk_darwin(v132);
  v129 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for DispatchQoS();
  v128 = *(v130 - 8);
  v9 = *(v128 + 64);
  __chkstk_darwin(v130);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100046184(&qword_100218230, &unk_100199A00);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v119 - v16;
  v18 = type metadata accessor for URL();
  v136 = *(v18 - 8);
  v19 = *(v136 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v124 = &v119 - v24;
  v25 = __chkstk_darwin(v23);
  v123 = &v119 - v26;
  __chkstk_darwin(v25);
  countAndFlagsBits = &v119 - v27;
  v28 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v35 = &v119 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v119 - v37;
  __chkstk_darwin(v36);
  v40 = &v119 - v39;
  v133 = a1;
  v41 = [a1 originalRequest];
  if (v41)
  {
    v42 = v41;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = type metadata accessor for URLRequest();
    v44 = 0;
  }

  else
  {
    v43 = type metadata accessor for URLRequest();
    v44 = 1;
  }

  sub_1000051C0(v38, v44, 1, v43);
  sub_1000B1948(v38, v40, &unk_100218500, &qword_10019C7D8);
  type metadata accessor for URLRequest();
  if (sub_100008D0C(v40, 1, v43) == 1)
  {
    return sub_100015C0C(v40, &unk_100218500, &qword_10019C7D8);
  }

  v121 = v18;
  v122 = a2;
  v46._object = 0x80000001001AFC90;
  v46._countAndFlagsBits = 0xD00000000000001BLL;
  v47 = URLRequest.value(forHTTPHeaderField:)(v46);
  v120 = *(*(v43 - 8) + 8);
  result = v120(v40, v43);
  if (v47.value._object)
  {
    v119 = v15;
    v48 = sub_1000ABC10(v47.value._countAndFlagsBits, v47.value._object);
    if (!v48)
    {
      countAndFlagsBits = v47.value._countAndFlagsBits;
      if (qword_1002140C8 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_10000964C(v60, qword_100232AC8);
      v61 = v136;
      v62 = v121;
      (*(v136 + 16))(v22, v135, v121);

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();

      v65 = os_log_type_enabled(v63, v64);
      v66 = countAndFlagsBits;
      if (v65)
      {
        v67 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v67 = 136315394;
        *(v67 + 4) = sub_100009684(v66, v47.value._object, &aBlock);
        *(v67 + 12) = 2080;
        v68 = URL.absoluteString.getter();
        v70 = v69;
        (*(v61 + 8))(v22, v62);
        v71 = sub_100009684(v68, v70, &aBlock);
        v66 = countAndFlagsBits;

        *(v67 + 14) = v71;
        _os_log_impl(&_mh_execute_header, v63, v64, "missing resource for %s url: %s", v67, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v61 + 8))(v22, v62);
      }

      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;
      sub_100046184(&qword_1002147F0, &qword_1001989D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100197F20;
      *(inited + 32) = 0x6E6F73616572;
      *(inited + 40) = 0xE600000000000000;
      aBlock = 0;
      v139 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      aBlock = 0x20676E697373696DLL;
      v139 = 0xE800000000000000;
      v91._countAndFlagsBits = v66;
      v91._object = v47.value._object;
      String.append(_:)(v91);

      v92._countAndFlagsBits = 0x203A3E4C52553C20;
      v92._object = 0xE800000000000000;
      String.append(_:)(v92);
      v93._countAndFlagsBits = URL.absoluteString.getter();
      String.append(_:)(v93);

      v94 = aBlock;
      v95 = v139;
      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v94;
      *(inited + 56) = v95;
      v96 = Dictionary.init(dictionaryLiteral:)();
      v97 = objc_allocWithZone(NSError);
      v98 = sub_1000B184C(v87, v89, 500, v96);
      v99 = v126;
      v100 = *(v126 + 312);
      v101 = swift_allocObject();
      v102 = v125;
      v101[2] = v99;
      v101[3] = v102;
      v101[4] = v98;
      v142 = sub_1000B1A90;
      v143 = v101;
      aBlock = _NSConcreteStackBlock;
      v139 = 1107296256;
      v140 = sub_10000D50C;
      v141 = &unk_1001FA4C0;
      v103 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v104 = v98;
      v105 = v127;
      static DispatchQoS.unspecified.getter();
      v137 = _swiftEmptyArrayStorage;
      sub_100015330(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100046184(&unk_100217030, &unk_1001989C0);
      sub_10000CB0C();
      v106 = v129;
      v107 = v132;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v103);

      (*(v131 + 8))(v106, v107);
      (*(v128 + 8))(v105, v130);
    }

    v49 = v48;

    URL._bridgeToObjectiveC()(v50);
    v52 = v51;
    v53 = sub_1000B1ABC(v51);

    v54 = countAndFlagsBits;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = OBJC_IVAR____TtC7parsecd16DownloadResource_url;
    swift_beginAccess();
    v56 = *(v136 + 40);
    v135 = v55;
    v56(v49 + v55, v54, v121);
    swift_endAccess();
    v57 = [v133 currentRequest];
    if (v57)
    {
      v58 = v57;
      static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    sub_1000051C0(v32, v59, 1, v43);
    sub_1000B1948(v32, v35, &unk_100218500, &qword_10019C7D8);
    if (sub_100008D0C(v35, 1, v43) == 1)
    {
      sub_100015C0C(v35, &unk_100218500, &qword_10019C7D8);
      v72 = v121;
      sub_1000051C0(v17, 1, 1, v121);
    }

    else
    {
      URLRequest.url.getter();
      v120(v35, v43);
      v72 = v121;
      if (sub_100008D0C(v17, 1, v121) != 1)
      {
        v73 = v136;
        v108 = v123;
        v133 = *(v136 + 32);
        (v133)(v123, v17, v72);
        URL._bridgeToObjectiveC()(v109);
        v111 = v110;
        v112 = sub_1000B1ABC(v110);

        v113 = v124;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v74 = v49;
        v114 = v113;
        v115 = countAndFlagsBits;
        (*(v73 + 16))(countAndFlagsBits, v74 + v135, v72);
        sub_100015330(&qword_100218528, &type metadata accessor for URL);
        LOBYTE(v113) = dispatch thunk of static Equatable.== infix(_:_:)();
        v116 = *(v73 + 8);
        v116(v115, v72);
        v116(v108, v72);
        if (v113)
        {
          v116(v114, v72);
        }

        else
        {
          v117 = v119;
          (v133)(v119, v114, v72);
          sub_1000051C0(v117, 0, 1, v72);
          v118 = OBJC_IVAR____TtC7parsecd16DownloadResource_redirectUrl;
          swift_beginAccess();
          sub_1000B1998(v117, v74 + v118);
          swift_endAccess();
        }

        goto LABEL_19;
      }
    }

    sub_100015C0C(v17, &qword_100218230, &unk_100199A00);
    v73 = v136;
    v74 = v49;
LABEL_19:
    if (qword_1002140C8 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_10000964C(v75, qword_100232AC8);

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v78 = 136315394;
      v79 = *(v74 + 16);
      v80 = *(v74 + 24);

      v81 = sub_100009684(v79, v80, &aBlock);

      *(v78 + 4) = v81;
      *(v78 + 12) = 2080;
      v82 = countAndFlagsBits;
      (*(v73 + 16))(countAndFlagsBits, v74 + v135, v72);
      v83 = URL.absoluteString.getter();
      v85 = v84;
      (*(v73 + 8))(v82, v72);
      v86 = sub_100009684(v83, v85, &aBlock);

      *(v78 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v76, v77, "%s url: %s", v78, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000A8570();
  }

  return result;
}

void sub_1000B03E0()
{
  sub_100005478();
  v185 = v1;
  v3 = v2;
  v4 = sub_100046184(&qword_100218230, &unk_100199A00);
  v5 = sub_100005490(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000407C();
  sub_100004144();
  __chkstk_darwin(v8);
  sub_100009934();
  sub_10000549C(v9);
  v192 = type metadata accessor for URL();
  v10 = sub_100003650(v192);
  v186 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_10000407C();
  sub_100004144();
  __chkstk_darwin(v14);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v15);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v16);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v17);
  sub_100009934();
  sub_100007C68(v18);
  v19 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  v20 = sub_100005490(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_10000407C();
  sub_100004144();
  __chkstk_darwin(v23);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v24);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v25);
  sub_100009934();
  sub_10000549C(v26);
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v28 = sub_100003650(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28);
  sub_100003664();
  v35 = v34 - v33;
  countAndFlagsBits = type metadata accessor for DispatchQoS();
  v36 = sub_100003650(countAndFlagsBits);
  v38 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v36);
  sub_100003664();
  v43 = v42 - v41;
  v44 = *&v0[OBJC_IVAR____TtC7parsecd15DownloadManager_queue];
  sub_100006634();
  v45 = swift_allocObject();
  *(v45 + 16) = v0;
  *(v45 + 24) = v3;
  v202 = sub_1000B18FC;
  v203 = v45;
  *&v199 = _NSConcreteStackBlock;
  *(&v199 + 1) = 1107296256;
  sub_100005D74();
  v200 = v46;
  v201 = &unk_1001FA3A8;
  v47 = _Block_copy(&v199);
  v193 = v0;
  v48 = v3;
  static DispatchQoS.unspecified.getter();
  v198 = _swiftEmptyArrayStorage;
  sub_1000042DC();
  sub_100015330(v49, v50);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v184 = v44;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v47);
  (*(v30 + 8))(v35, v27);
  (*(v38 + 8))(v43, countAndFlagsBits);

  v51 = [v48 response];
  if (!v51)
  {
    goto LABEL_25;
  }

  v52 = v51;
  objc_opt_self();
  v53 = swift_dynamicCastObjCClass();
  if (!v53)
  {
    goto LABEL_24;
  }

  v54 = v53;
  v55 = [v48 originalRequest];
  if (v55)
  {
    v56 = v55;
    v57 = v194;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = 0;
    v59 = v195;
  }

  else
  {
    v58 = 1;
    v59 = v195;
    v57 = v194;
  }

  v60 = type metadata accessor for URLRequest();
  sub_1000051C0(v57, v58, 1, v60);
  sub_1000B1948(v57, v59, &unk_100218500, &qword_10019C7D8);
  sub_10000C944(v59, 1, v60);
  if (v95)
  {

    v61 = &unk_100218500;
    v62 = &qword_10019C7D8;
    v63 = v59;
LABEL_9:
    sub_100015C0C(v63, v61, v62);
    goto LABEL_25;
  }

  v64._object = 0x80000001001AFC90;
  v64._countAndFlagsBits = 0xD00000000000001BLL;
  v65 = URLRequest.value(forHTTPHeaderField:)(v64);
  object = v65.value._object;
  sub_10000690C(v60);
  v68 = *(v67 + 8);
  v68(v59, v60);
  if (!v65.value._object)
  {
LABEL_24:

    goto LABEL_25;
  }

  v69 = v48;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_25;
  }

  v71 = Strong;
  v72 = [v54 statusCode];
  v73 = v72;
  if ((v72 - 200) > 0xC7)
  {
    if (qword_1002140C8 != -1)
    {
      sub_100005F20();
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_10000964C(v79, qword_100232AC8);

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = sub_10001BCD4();
      sub_1000083D0();
      v83 = swift_slowAlloc();
      *&v199 = v83;
      *v82 = 136315394;
      v84 = sub_100009684(v65.value._countAndFlagsBits, v65.value._object, &v199);

      *(v82 + 4) = v84;
      *(v82 + 12) = 2048;
      *(v82 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v80, v81, "download of %s got status code %ld", v82, 0x16u);
      sub_100007378(v83);
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {
    }

    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  if (v72 != 206 && v72 != 200)
  {

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  countAndFlagsBits = v65.value._countAndFlagsBits;
  sub_1000A7ACC();
  v74 = [v69 originalRequest];
  if (v74)
  {
    v75 = v74;
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = v189;
    v77 = 0;
    v78 = v190;
  }

  else
  {
    v77 = 1;
    v78 = v190;
    v76 = v189;
  }

  sub_1000051C0(v76, v77, 1, v60);
  v85 = sub_1000041F8();
  sub_1000B1948(v85, v86, v87, v88);
  v89 = sub_10001497C();
  sub_10000C944(v89, v90, v60);
  if (v95)
  {
    swift_unknownObjectRelease();

    sub_100015C0C(v78, &unk_100218500, &qword_10019C7D8);
    sub_100017C74();
    v91 = sub_10001497C();
    sub_1000051C0(v91, v92, 1, v192);
LABEL_34:
    v61 = &qword_100218230;
    v62 = &unk_100199A00;
    v63 = v78;
    goto LABEL_9;
  }

  sub_10000BA48(&v200);
  URLRequest.url.getter();
  v68(v78, v60);
  v78 = v76;
  v93 = sub_100009940();
  sub_10000C944(v93, v94, v192);
  if (v95)
  {

    swift_unknownObjectRelease();

    goto LABEL_34;
  }

  v195 = v71;
  v96 = v186[4];
  v97 = sub_1000041F8();
  v180 = v98;
  v179 = v99;
  (v99)(v97);
  if (qword_1002140C8 != -1)
  {
    sub_100005F20();
    swift_once();
  }

  v100 = type metadata accessor for Logger();
  v101 = sub_10000964C(v100, qword_100232AC8);
  v102 = v186[2];
  v102(v183, v188, v192);
  v190 = v186 + 2;
  v189 = v102;
  v102(v187, v185, v192);
  v191 = v101;
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = v183;
    v106 = v186;
    v107 = sub_10001BCD4();
    v178 = v52;
    v176 = swift_slowAlloc();
    *&v199 = v176;
    *v107 = 136315394;
    v108 = URL.absoluteString.getter();
    v110 = v109;
    v111 = v187;
    v177 = v65.value._object;
    v112 = v106[1];
    v112(v105, v192);
    v113 = sub_100009684(v108, v110, &v199);

    *(v107 + 4) = v113;
    *(v107 + 12) = 2080;
    v114 = URL.absoluteString.getter();
    v116 = v115;
    v194 = v112;
    v112(v111, v192);
    object = v177;
    v117 = sub_100009684(v114, v116, &v199);
    v118 = v192;

    *(v107 + 14) = v117;
    sub_1000B1FD0();
    _os_log_impl(v119, v120, v121, v122, v123, 0x16u);
    swift_arrayDestroy();
    v52 = v178;
    sub_1000037A4();

    sub_1000037A4();
  }

  else
  {

    v125 = v186[1];
    v125(v187, v192);
    v194 = v125;
    v124 = (v125)(v183, v192);
    v118 = v192;
  }

  __chkstk_darwin(v124);
  v126 = countAndFlagsBits;
  *(&v175 - 4) = v193;
  *(&v175 - 3) = v126;
  *(&v175 - 2) = object;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v199 == 1)
  {
    sub_10000BA48(&v197);
    sub_1000A9F38(v127);
    v128 = sub_100009940();
    sub_10000C944(v128, v129, v118);
    if (!v95)
    {
      v159 = v181;
      v179(v181, &v175, v118);
      v160 = sub_100004950();
      v161 = sub_100046184(&qword_100218510, &qword_100198ED0);
      v162 = *(v161 + 48);
      v163 = *(v161 + 52);
      swift_allocObject();
      sub_10002E854(v160, 7, 0);
      v164 = [objc_opt_self() defaultManager];
      NSFileManager.saveInCache(file:from:)();

      v167 = sub_10007AF80();
      sub_1000BCDCC(0xD000000000000027, 0x80000001001AD040, v167, &v199);

      if (v201)
      {
        if (swift_dynamicCast())
        {
          v168 = v198;
        }

        else
        {
          v168 = 0;
        }
      }

      else
      {
        sub_100015C0C(&v199, &qword_1002181D0, &qword_100198E00);
        v168 = 0;
      }

      sub_10002F188(v168);
      v169 = [objc_opt_self() defaultCenter];
      sub_100046184(&unk_100217020, &unk_10019B4C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100198F10;
      *&v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v199 + 1) = v171;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = countAndFlagsBits;
      *(inited + 80) = object;
      *&v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v199 + 1) = v172;
      AnyHashable.init<A>(_:)();
      v118 = v192;
      *(inited + 168) = v192;
      sub_1000205C4((inited + 144));
      sub_10000BEA8();
      v173();
      v174 = Dictionary.init(dictionaryLiteral:)();
      sub_100033AC0(@"PARFileDownloadCompletedNotification", 0, v174, v169);
      sub_100023F48();

      v165 = v194;
      sub_100007894();
      v165(v159, v118);
      v166 = v188;
      goto LABEL_56;
    }

    sub_100015C0C(&v175, &qword_100218230, &unk_100199A00);

    sub_100017C74();
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v130, v131))
    {
      sub_10000F554();
      v132 = swift_slowAlloc();
      sub_1000083D0();
      v133 = swift_slowAlloc();
      *&v199 = v133;
      v134 = v118;
      v135 = sub_10001BE54(4.8149e-34);

      *(v132 + 4) = v135;
      sub_1000B1FD0();
      _os_log_impl(v136, v137, v138, v139, v140, 0xCu);
      sub_100007378(v133);
      sub_1000037A4();

      sub_1000037A4();

      sub_100023F48();

      sub_100007894();
      v141 = v188;
      v142 = v134;
    }

    else
    {

      sub_100023F48();

      sub_100007894();
      v141 = v188;
      v142 = v118;
    }

    v194(v141, v142);
  }

  else
  {
    v143 = v182;
    v144 = v188;
    sub_10000BEA8();
    v145();

    sub_100017C74();
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v146, v147))
    {

      sub_100023F48();

      sub_100007894();
      v165 = v194;
      v194(v143, v118);
      v166 = v144;
LABEL_56:
      v165(v166, v118);
      goto LABEL_25;
    }

    v148 = sub_10001BCD4();
    *&v199 = swift_slowAlloc();
    v149 = sub_10001BE54(4.8151e-34);

    *(v148 + 4) = v149;
    *(v148 + 12) = 2080;
    v150 = URL.absoluteString.getter();
    v152 = v151;
    sub_100007894();
    v153 = v194;
    v194(v143, v118);
    sub_100009684(v150, v152, &v199);
    sub_1000189B0();

    *(v148 + 14) = v150;
    sub_1000B1FD0();
    _os_log_impl(v154, v155, v156, v157, v158, 0x16u);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();

    sub_100023F48();

    v153(v188, v118);
  }

LABEL_25:
  sub_100005460();
}

uint64_t sub_1000B1658(int a1, id a2)
{
  v2 = [a2 taskIdentifier];
  swift_beginAccess();
  sub_1000BC1C8(v2);
  swift_endAccess();
}

uint64_t sub_1000B16DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  result = sub_1000ABC10(a1, a2);
  v5 = result;
  if (result)
  {
  }

  *a3 = v5 != 0;
  return result;
}

id sub_1000B184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

uint64_t sub_1000B1948(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000B9F4(a1, a2, a3, a4);
  sub_10000690C(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000041F8();
  v9(v8);
  return v4;
}

uint64_t sub_1000B1998(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100218230, &unk_100199A00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1A08()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  sub_1000B1FF0();
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = (v0 + v7);
  v9 = *v8;
  v10 = v8[1];

  return sub_1000AF4E8(v5, v6, v0 + v4, v9, v10);
}

void sub_1000B1A90()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_100086A30();
}

id sub_1000B1ABC(void *a1)
{
  v1 = a1;
  v2 = [NSURLComponents parsec_componentsWithURL:v1 resolvingAgainstBaseURL:0];
  v3 = [v2 queryItems];
  v4 = [v3 mutableCopy];

  v5 = [v4 parsec_filterObjectsUsingBlock:&stru_1001FA7B0];
  if ([v5 count])
  {
    [v2 setQueryItems:v5];
  }

  else
  {
    [v2 setQueryItems:0];
    [v2 setQuery:0];
  }

  v6 = [v2 URL];

  return v6;
}

uint64_t sub_1000B1BA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000B9F4(a1, a2, a3, a4);
  sub_10000690C(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000041F8();
  v9(v8);
  return v4;
}

void sub_1000B1BF8()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  sub_1000B1FF0();
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = (v0 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v0 + v6);
  v14 = *(v0 + v6 + 8);

  sub_1000AE50C(v7, v8, v9, v0 + v4, v11, v12, v13, v14);
}

uint64_t sub_1000B1C94(void *a1)
{
  v1 = [a1 downloadResourcesList];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1000B1CEC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1000A8C94(v1);
}

id sub_1000B1D24(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = 0;
  if (a1 && a2)
  {
    v7 = [NSURLComponents parsec_componentsWithURL:v4 resolvingAgainstBaseURL:0];
    v8 = [NSURLComponents parsec_componentsWithURL:v5 resolvingAgainstBaseURL:0];
    v9 = [v7 path];
    v10 = [v8 path];
    v6 = 0;
    if ([v9 isEqual:v10])
    {
      v11 = [v7 query];
      v12 = [v8 query];
      v6 = [v11 isEqual:v12];
    }
  }

  return v6;
}

BOOL sub_1000B1E74(id a1, NSURLQueryItem *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(NSURLQueryItem *)v3 name];
  if ([v4 isEqualToString:@"key"])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(NSURLQueryItem *)v3 name];
    if ([v6 isEqualToString:@"internal"])
    {
      v5 = 0;
    }

    else
    {
      v7 = [(NSURLQueryItem *)v3 name];
      if ([v7 isEqualToString:@"seed"])
      {
        v5 = 0;
      }

      else
      {
        v8 = [(NSURLQueryItem *)v3 name];
        v9 = [v8 isEqualToString:@"eat"];

        v5 = v9 ^ 1;
      }
    }
  }

  return v5;
}

uint64_t sub_1000B1FAC()
{
  v2 = *(v0 - 280);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000B1FDC()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 296);
  return result;
}

uint64_t sub_1000B2004(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

void sub_1000B2024(Swift::String a1)
{

  String.append(_:)(a1);
}

uint64_t sub_1000B203C()
{
  result = sub_1000495C8();
  *(result + 24) = 1;
  return result;
}

uint64_t sub_1000B205C(void *a1)
{
  v2 = [a1 typeForPQC];
  if (v2 >= 2)
  {
    if (v2 != 2)
    {
      if (qword_1002140D8 != -1)
      {
        sub_10000393C();
      }

      v7 = type metadata accessor for Logger();
      sub_10000964C(v7, qword_100232AF8);
      v8 = a1;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 67109120;
        *(v11 + 4) = [v8 type];

        _os_log_impl(&_mh_execute_header, v9, v10, "ECC: type %d is not handled", v11, 8u);
      }

      else
      {
      }

      return 0;
    }

    return 1;
  }

  sub_1000B23B8(a1);
  if (v3)
  {
    v4._countAndFlagsBits = sub_10000395C();
    v5 = String.hasPrefix(_:)(v4);

    if (v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1000B21BC(void *a1)
{
  v2 = [a1 result];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 typeForPQC];
  if (v4 >= 2)
  {
    if (v4 != 2)
    {
      if (qword_1002140D8 != -1)
      {
        sub_10000393C();
      }

      v12 = type metadata accessor for Logger();
      sub_10000964C(v12, qword_100232AF8);
      v3 = v3;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67109120;
        *(v15 + 4) = [v3 type];

        _os_log_impl(&_mh_execute_header, v13, v14, "ECC: type %d is not handled", v15, 8u);
      }

      else
      {
      }

      goto LABEL_16;
    }

    v9 = [a1 titleText];
  }

  else
  {
    sub_1000B23B8(v3);
    v6 = v5;
    if (!v5)
    {

      return v6;
    }

    v7._countAndFlagsBits = sub_10000395C();
    v8 = String.hasPrefix(_:)(v7);

    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = [v3 completedQuery];
  }

  v10 = v9;
  if (!v10)
  {
LABEL_16:

    return 0;
  }

  v11 = v10;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_1000B23B8(void *a1)
{
  v1 = [a1 jsonSectionBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000B241C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = sub_100003650(v3);
  v92 = v5;
  v93 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v91 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100046184(&qword_100218230, &unk_100199A00);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v83 - v11;
  v13 = type metadata accessor for URL();
  v14 = sub_100003650(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v14);
  v88 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v89 = &v83 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v83 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v83 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v83 - v30;
  __chkstk_darwin(v29);
  v33 = &v83 - v32;
  v94 = v1;
  NSFileManager.parsecdCustomFBDirectoryURL.getter();
  if (sub_100008D0C(v12, 1, v13) == 1)
  {
    sub_1000982A0(v12);
LABEL_8:
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    v37 = objc_allocWithZone(NSError);
    sub_1000B184C(v34, v36, 500, 0);
    swift_willThrow();
    return a1;
  }

  (*(v16 + 32))(v33, v12, v13);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!a1 || a1 == 19)
  {
    (*(v16 + 8))(v33, v13);
    goto LABEL_8;
  }

  v84 = v16;
  v85 = v33;
  v86 = v13;
  v87 = v31;
  switch(a1)
  {
    case 1:
      v39 = @"SafariAutoFill";
      goto LABEL_30;
    case 2:
      v39 = @"Crowdsourcing";
      goto LABEL_30;
    case 3:
      v39 = @"SpotlightResultFeatures";
      goto LABEL_30;
    case 4:
      v39 = @"SafariAutoPlay";
      goto LABEL_30;
    case 5:
      v39 = @"Trystero";
      goto LABEL_30;
    case 6:
      v39 = @"EngagedCompletionFeatures";
      goto LABEL_30;
    case 7:
      v39 = @"ProactiveEventTracker";
      goto LABEL_30;
    case 8:
      v39 = @"PhiDES";
      goto LABEL_30;
    case 9:
      v39 = @"DuetExpert";
      goto LABEL_30;
    case 10:
      v39 = @"UserReport";
      goto LABEL_30;
    case 11:
      v39 = @"Usage";
      goto LABEL_30;
    case 12:
      v39 = @"FeedbackV2";
      goto LABEL_30;
    case 13:
      v39 = @"FeedbackV2PB";
      goto LABEL_30;
    case 14:
      v39 = @"ProactiveEventTrackerAggregated";
      goto LABEL_30;
    case 15:
      v39 = @"Handwashing";
      goto LABEL_30;
    case 16:
      v39 = @"Experiments";
      goto LABEL_30;
    case 17:
      v39 = @"FeatureQuality";
      goto LABEL_30;
    case 18:
      v39 = @"OnDeviceAnalytics";
      goto LABEL_30;
    case 19:
      v39 = @"ModelFeedback";
LABEL_30:
      v40 = v39;
      break;
    default:
      v39 = [NSString stringWithFormat:@"(unknown: %i)", a1];
      break;
  }

  v42 = v91;
  v41 = v92;
  v43 = v39;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v45;

  UUID.init()();
  v46 = UUID.uuidString.getter();
  v48 = v47;
  v41[1](v42, v93);
  v83 = v44;
  URL.appendingPathComponent(_:isDirectory:)();
  v91 = v46;
  v92 = v48;
  URL.appendingPathComponent(_:)();
  v49 = v84 + 8;
  v31 = *(v84 + 8);
  v50 = v25;
  v51 = v86;
  (v31)(v50, v86);
  URL.standardizedFileURL.getter();
  v93 = v49;
  (v31)(v28, v51);
  URL.path.getter();
  v52 = String._bridgeToObjectiveC()();

  sub_100046184(qword_100217FB0, &unk_10019C2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100197F20;
  *(inited + 64) = &type metadata for Int;
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 40) = 384;
  type metadata accessor for FileAttributeKey(0);
  sub_100098E68();
  v54 = NSFilePosixPermissions;
  v55 = Dictionary.init(dictionaryLiteral:)();
  LOBYTE(v41) = sub_1000B2DF4(v52, 0, 0xC000000000000000, v55, v94);

  if (v41)
  {
    v28 = v92;
    if (qword_1002140A0 == -1)
    {
LABEL_33:
      v56 = type metadata accessor for Logger();
      sub_10000964C(v56, qword_100232A50);
      v57 = v12;

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.info.getter();

      v60 = v31;
      if (os_log_type_enabled(v58, v59))
      {
        v61 = v28;
        v62 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v62 = 136315394;
        v63 = sub_100009684(v83, v57, &v95);

        *(v62 + 4) = v63;
        *(v62 + 12) = 2080;
        v64 = sub_100009684(v91, v61, &v95);

        *(v62 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v58, v59, "Created custom feedback file for type %s with name %s", v62, 0x16u);
        swift_arrayDestroy();
        sub_1000036D4();
        sub_1000036D4();
      }

      else
      {
      }

      sub_1000B2EB4();
      a1 = v89;
      v77 = v86;
      (*(v84 + 16))(v89, v87, v86);
      v78 = v90;
      v79 = sub_10002D8F0(a1);
      if (!v78)
      {
        a1 = v79;
      }

      v60(v87, v77);
      v60(v85, v77);
      return a1;
    }

LABEL_48:
    swift_once();
    goto LABEL_33;
  }

  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  sub_10000964C(v65, qword_100232AB0);
  v66 = v88;
  v67 = v86;
  (*(v84 + 16))(v88, v87, v86);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = v66;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v95 = v72;
    *v71 = 136315138;
    v73 = URL.path.getter();
    v75 = v74;
    (v31)(v70, v86);
    v76 = sub_100009684(v73, v75, &v95);
    v67 = v86;

    *(v71 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v68, v69, "could not create custom feedback file at %s", v71, 0xCu);
    sub_100007378(v72);
    sub_1000036D4();
    sub_1000036D4();
  }

  else
  {

    (v31)(v66, v67);
  }

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a1 = v81;
  v82 = objc_allocWithZone(NSError);
  sub_1000B184C(v80, a1, 500, 0);
  swift_willThrow();
  (v31)(v87, v67);
  (v31)(v85, v67);
  return a1;
}

id sub_1000B2DF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100014A40(a2, a3);
  type metadata accessor for FileAttributeKey(0);
  sub_100098E68();
  v10 = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [a5 createFileAtPath:a1 contents:isa attributes:v10];

  return v11;
}

unint64_t sub_1000B2EB4()
{
  result = qword_100218550;
  if (!qword_100218550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100218550);
  }

  return result;
}

uint64_t sub_1000B2EF8()
{
  v1 = *(v0 + 48);

  v2 = sub_1000866B8();
  v4 = v3;

  sub_1000B315C(0, v2, v4);
  return v2;
}

uint64_t sub_1000B2F5C()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_1000382D0();
  static DispatchQoS.userInitiated.getter();
  v10[1] = 0;
  sub_1000152E8(&qword_100216910, &type metadata accessor for OS_dispatch_queue.Attributes);
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100232C70 = result;
  return result;
}

uint64_t sub_1000B315C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100003650(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v14 = sub_100003650(v26);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100214170 != -1)
  {
    swift_once();
  }

  v25[1] = qword_100232C70;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a1 & 1;
  *(v22 + 32) = a2;
  *(v22 + 40) = a3;
  aBlock[4] = sub_1000B424C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D50C;
  aBlock[3] = &unk_1001FA830;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1000152E8(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v9 + 8))(v13, v6);
  (*(v16 + 8))(v20, v26);
}

void sub_1000B346C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Client();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(Strong + 32);
    v14 = sub_100004950();
    static Client.parsecd.getter();
    v15 = type metadata accessor for ResourceAccessSpan();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = sub_100004A34(v14, 100, v10, 0, 1);
    v19 = [objc_opt_self() defaultTreatmentStore];
    sub_100046184(&qword_10021AC30, &qword_10019FB60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100197F20;
    v21 = v12[3];
    *(inited + 32) = v12[2];
    *(inited + 40) = v21;

    sub_1000ECD9C(inited);
    isa = Set._bridgeToObjectiveC()().super.isa;

    v23 = [v19 areasForNamespaces:isa];

    *&v109[0] = 0;
    v24 = [v23 resultWithError:v109];

    v25 = *&v109[0];
    if (v24)
    {
      v26 = v12[3];
      *&v107 = v12[2];
      *(&v107 + 1) = v26;

      v27 = v25;
      v28 = [v24 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v28)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v107 = 0u;
        v108 = 0u;
      }

      v109[0] = v107;
      v109[1] = v108;
      if (!*(&v108 + 1))
      {

        sub_100048450(v109);
        return;
      }

      sub_100046184(&qword_100217B28, &qword_10019C8B0);
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_55:
        return;
      }

      v106 = v24;
      v40 = Set._bridgeToObjectiveC()().super.isa;

      v41 = v19;
      v42 = [v19 treatmentsPayloadForAreas:v40];

      *&v109[0] = 0;
      v43 = [v42 resultWithError:v109];

      v44 = *&v109[0];
      if (v43)
      {
        v104 = v41;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
        v48 = v44;
        v49 = v47;

        v50 = HIBYTE(v47) & 0xF;
        v105 = v45;
        if ((v47 & 0x2000000000000000) == 0)
        {
          v50 = v45 & 0xFFFFFFFFFFFFLL;
        }

        v51 = v18;
        if (!v50)
        {

          return;
        }

        v24 = v106;
        if (a2)
        {
          *(v18 + qword_100216C08) = 54;
          sub_10000D684();
          if (qword_1002140E8 != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          sub_10000964C(v52, qword_100232B28);

          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *&v109[0] = swift_slowAlloc();
            *v55 = 136315394;
            v56 = v47;
            v58 = v12[2];
            v57 = v12[3];

            v59 = sub_100009684(v58, v57, v109);

            *(v55 + 4) = v59;
            v49 = v56;
            *(v55 + 12) = 2080;
            v60 = v105;
            *(v55 + 14) = sub_100009684(v105, v49, v109);
            v61 = "AMS Baseline Treatments for namespace %s initialized to '%s'";
LABEL_22:
            _os_log_impl(&_mh_execute_header, v53, v54, v61, v55, 0x16u);
            swift_arrayDestroy();

LABEL_45:
            v87 = v104;
LABEL_54:
            v93 = v12[6];

            sub_100087C70(v60, v49);

            goto LABEL_55;
          }

LABEL_52:

          goto LABEL_53;
        }

        if (!a4 || (v105 == a3 ? (v63 = v47 == a4) : (v63 = 0), !v63 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
        {
          *(v18 + qword_100216C08) = 55;
          sub_10000D684();
          if (qword_1002140E8 != -1)
          {
            swift_once();
          }

          v71 = type metadata accessor for Logger();
          sub_10000964C(v71, qword_100232B28);

          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            *&v107 = v103;
            *v74 = 136315650;
            v75 = v12[2];
            v76 = v12[3];

            v77 = sub_100009684(v75, v76, &v107);

            *(v74 + 4) = v77;
            *(v74 + 12) = 2080;
            v78 = v12[6];

            v79 = sub_1000866B8();
            v80 = v24;
            v81 = v49;
            v83 = v82;

            *&v109[0] = v79;
            *(&v109[0] + 1) = v83;
            v49 = v81;
            v24 = v80;
            sub_100046184(&qword_1002181F0, &qword_10019C610);
            v84 = String.init<A>(describing:)();
            v86 = sub_100009684(v84, v85, &v107);

            *(v74 + 14) = v86;
            *(v74 + 22) = 2080;
            v60 = v105;
            *(v74 + 24) = sub_100009684(v105, v49, &v107);
            _os_log_impl(&_mh_execute_header, v72, v73, "Stale previously vended AMS Baseline Treatments for namespace %s %s updated to '%s'", v74, 0x20u);
            swift_arrayDestroy();

            goto LABEL_45;
          }

LABEL_53:
          v87 = v104;
          v60 = v105;
          goto LABEL_54;
        }

        v64 = v12[6];

        v65 = v49;
        v66 = sub_1000866B8();
        v68 = v67;

        if (v68)
        {
          if (v105 == v66 && v68 == v65)
          {

            v49 = v65;
LABEL_58:
            if (qword_1002140E8 != -1)
            {
              swift_once();
            }

            v94 = type metadata accessor for Logger();
            sub_10000964C(v94, qword_100232B28);

            v95 = Logger.logObject.getter();
            v96 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              v98 = swift_slowAlloc();
              *&v109[0] = v98;
              *v97 = 136315138;
              v99 = v49;
              v100 = v12[2];
              v101 = v12[3];

              v102 = sub_100009684(v100, v101, v109);

              *(v97 + 4) = v102;
              v49 = v99;
              _os_log_impl(&_mh_execute_header, v95, v96, "AMS BaselineTreatments for namespace %s unchanged", v97, 0xCu);
              sub_100007378(v98);
            }

            v87 = v104;
            v60 = v105;
            *(v51 + qword_100216C08) = 53;
            sub_10000D684();
            goto LABEL_54;
          }

          v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v49 = v65;
          if (v70)
          {
            goto LABEL_58;
          }
        }

        else
        {

          v49 = v65;
        }

        *(v51 + qword_100216C08) = 54;
        sub_10000D684();
        if (qword_1002140E8 != -1)
        {
          swift_once();
        }

        v88 = type metadata accessor for Logger();
        sub_10000964C(v88, qword_100232B28);

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *&v109[0] = swift_slowAlloc();
          *v55 = 136315394;
          v89 = v49;
          v90 = v12[2];
          v91 = v12[3];

          v92 = sub_100009684(v90, v91, v109);
          v49 = v89;

          *(v55 + 4) = v92;
          *(v55 + 12) = 2080;
          v60 = v105;
          *(v55 + 14) = sub_100009684(v105, v49, v109);
          v61 = "AMS Baseline Treatments for namespace %s updated to '%s'";
          goto LABEL_22;
        }

        goto LABEL_52;
      }

      v62 = *&v109[0];
      v31 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v29 = v106;
    }

    else
    {
      v29 = v19;
      v30 = *&v109[0];
      v31 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    *(v18 + qword_100216C08) = 52;
    sub_10000D684();
    if (qword_1002140E8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000964C(v32, qword_100232B28);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v109[0] = v36;
      *v35 = 136315138;
      *&v107 = v31;
      swift_errorRetain();
      sub_100046184(&qword_100216900, &unk_10019AE20);
      v37 = String.init<A>(describing:)();
      v39 = sub_100009684(v37, v38, v109);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "Couldn't fetch Baseline Treatments: %s", v35, 0xCu);
      sub_100007378(v36);
    }

    else
    {
    }
  }
}

void *sub_1000B41C4()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return v0;
}

uint64_t sub_1000B41F4()
{
  sub_1000B41C4();

  return _swift_deallocClassInstance(v0, 56, 7);
}

parsecd::PegasusClientName_optional __swiftcall PegasusClientName.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x20)
  {
    return 32;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1000B42CC()
{
  result = qword_1002187B0;
  if (!qword_1002187B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002187B0);
  }

  return result;
}

parsecd::PegasusClientName_optional sub_1000B4338@<W0>(Swift::String *a1@<X0>, parsecd::PegasusClientName_optional *a2@<X8>)
{
  result.value = PegasusClientName.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1000B4368@<X0>(uint64_t *a1@<X8>)
{
  result = PegasusClientName.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000B4398()
{
  result = qword_1002187B8;
  if (!qword_1002187B8)
  {
    sub_1000461CC(&qword_1002187C0, &qword_10019C958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002187B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PegasusClientName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PegasusClientName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

Swift::Int sub_1000B4570(unsigned __int8 a1)
{
  sub_100006A80();
  Hasher._combine(_:)(a1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B45D8(unsigned __int8 a1)
{
  sub_100006A80();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4618()
{
  sub_100006A80();
  Hasher._combine(_:)(0x100u);
  return Hasher._finalize()();
}

Swift::Int sub_1000B466C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_100006A80();
  a2(a1);
  sub_100005F34();

  return Hasher._finalize()();
}

Swift::Int sub_1000B46BC(char a1)
{
  sub_100006A80();
  Hasher._combine(_:)(qword_10019CB58[a1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4708(Swift::UInt8 a1)
{
  sub_100006A80();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4748(unsigned __int8 a1)
{
  sub_100006A80();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4788()
{
  sub_100006A80();
  sub_1000B49A4();
  return Hasher._finalize()();
}

Swift::Int sub_1000B47C8(Swift::UInt a1)
{
  sub_100006A80();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_1000B4808()
{
  String.hash(into:)();
}

uint64_t sub_1000B4928(uint64_t a1, char a2)
{
  PegasusClientName.rawValue.getter(a2);
  String.hash(into:)();
}

uint64_t sub_1000B49A4()
{
  String.hash(into:)();
}

uint64_t sub_1000B4A54(uint64_t a1, char a2)
{
  v2 = *&aN_0[8 * a2];
  String.hash(into:)();
}

Swift::Int sub_1000B4AAC()
{
  sub_100007FF8();
  sub_1000B49A4();
  return Hasher._finalize()();
}

Swift::Int sub_1000B4AE8()
{
  sub_100007FF8();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4B3C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  sub_100005F34();

  return Hasher._finalize()();
}

Swift::Int sub_1000B4B90()
{
  sub_100007FF8();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4BCC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4C14(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10019CB58[a2]);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4C64()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x100u);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4CA4(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4CE8(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4D2C()
{
  sub_100007FF8();
  String.hash(into:)();

  return Hasher._finalize()();
}

const char *sub_1000B4DA8(char a1)
{
  result = "creating";
  switch(a1)
  {
    case 1:
      result = "updating";
      break;
    case 2:
      result = "failedToGetURL";
      break;
    case 3:
      result = "failedToRead";
      break;
    case 4:
      result = "failedToWrite";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000B4E20(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1000B4E68@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B4E20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B4E94()
{
  v0 = qword_1002187C8;

  return v0;
}

uint64_t sub_1000B4ECC()
{
  v0 = qword_1002187D8;

  return v0;
}

uint64_t sub_1000B4F24(uint64_t a1, uint64_t a2)
{

  Logger.init(subsystem:category:)();
  v5 = (v2 + OBJC_IVAR____TtC7parsecd27DevicePersistentDataManager_cachedData);
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = OBJC_IVAR____TtC7parsecd27DevicePersistentDataManager_locker;
  type metadata accessor for Locker();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *(v2 + v6) = v7;
  *(v2 + 16) = a1;
  *(v2 + OBJC_IVAR____TtC7parsecd27DevicePersistentDataManager_fileManager) = a2;
  return v2;
}

unint64_t sub_1000B5004()
{
  v1 = v0;
  v73 = type metadata accessor for UUID();
  v2 = sub_100003650(v73);
  v72 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_100003664();
  v71 = v7 - v6;
  v75 = type metadata accessor for OSSignpostID();
  v8 = sub_100003650(v75);
  v78 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100003664();
  v74 = v13 - v12;
  v14 = type metadata accessor for PegasusPersistenceContext();
  v15 = sub_100003650(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_100003664();
  v22 = v21 - v20;
  v23 = type metadata accessor for URL();
  v24 = sub_100003650(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v24);
  v31 = v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v70 - v32;
  v34 = *(v0 + 16);
  v35 = sub_100046184(&qword_100218958, &unk_10019CB10);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();

  sub_1000489D8();
  v76 = v38;
  v77 = v1;
  v80[0] = *(v1 + OBJC_IVAR____TtC7parsecd27DevicePersistentDataManager_fileManager);
  v39 = v80[0];
  sub_100005180(0, &qword_1002157B8, NSFileManager_ptr);
  static PegasusConfigContainerURLProvider.containerURL<A>(using:)();
  (*(v26 + 16))(v31, v33, v23);
  v40 = v39;
  PegasusPersistenceContext.init(location:fileManager:)();
  static PegasusKeyValueStoreFactory.deviceInfoStore(context:name:requiresAuthentication:)();
  (*(v17 + 8))(v22, v14);
  (*(v26 + 8))(v33, v23);
  sub_100008C84(&v79, v80);
  sub_10000DE58();
  v42 = dispatch thunk of PegasusKeyValueStore.integer(for:)();
  LODWORD(v33) = v43;
  sub_10000DE58();
  v44 = dispatch thunk of PegasusKeyValueStore.string(for:)();
  v46 = v45;

  v49 = sub_1000BF264(v42, v33 & 1, v44, v46);
  v50 = v47;
  v51 = v48;
  v52 = v33 | (v49 != v42);
  if ((v52 & 1) != 0 || !v46 || (v47 == v44 ? (v53 = v46 == v48) : (v53 = 0), !v53 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    LODWORD(v73) = v52;
    v72 = v44;
    v58 = sub_100005180(0, &qword_100214810, OS_os_log_ptr);
    sub_1000042F4();
    v69 = sub_10000527C();
    v70[1] = v69;
    sub_100003970();

    v71 = v58;
    v59 = OS_os_log.init(subsystem:category:)();
    v60 = v74;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.event.getter();
    sub_100008450();
    sub_1000070D0(v61, v59, "failedToRead", 12, 2, v60, "enableTelemetry=YES", 19, v69, v69);

    v62 = *(v78 + 8);
    v78 += 8;
    v70[0] = v62;
    v62(v60, v75);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Failed to read data from store", v65, 2u);
      sub_1000036D4();
    }

    if (v73)
    {
      sub_100007534(v80, v80[3]);
      dispatch thunk of PegasusKeyValueStore.setInteger(_:for:)();
    }

    if (v46)
    {
      if (v50 == v72 && v46 == v51)
      {
        goto LABEL_22;
      }

      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v67)
      {
LABEL_23:
        sub_100046184(&unk_100217040, &qword_1001989F0);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_100197F20;
        *(v68 + 56) = &type metadata for Int;
        *(v68 + 64) = &protocol witness table for Int;
        *(v68 + 32) = v49;
        sub_10000E384("enableTelemetry=YES d20=%{signpost.telemetry:number1,public}lu", 62, 2, v68);
        goto LABEL_24;
      }
    }

    sub_10000DE58();

    dispatch thunk of PegasusKeyValueStore.setString(_:for:)();
LABEL_22:

    goto LABEL_23;
  }

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Persistent data read successfully", v56, 2u);
    sub_1000036D4();
  }

  sub_100046184(&unk_100217040, &qword_1001989F0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100197F20;
  *(v57 + 56) = &type metadata for Int;
  *(v57 + 64) = &protocol witness table for Int;
  *(v57 + 32) = v42;
  sub_10000E384("enableTelemetry=YES d20=%{signpost.telemetry:number1,public}lu", 62, 2, v57);
LABEL_24:

  sub_100007378(v80);
  return v49;
}

uint64_t sub_1000B5BB8()
{
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100197F20;
  swift_errorRetain();
  sub_100046184(&qword_100216900, &unk_10019AE20);
  v1 = String.init<A>(describing:)();
  v3 = v2;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_10000512C();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_10000E384("ActivityResult=%{signpost.description:attribute}s", 49, 2, v0);
}

uint64_t sub_1000B5C84()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC7parsecd27DevicePersistentDataManager_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(v0 + OBJC_IVAR____TtC7parsecd27DevicePersistentDataManager_cachedData + 16);

  v5 = *(v0 + OBJC_IVAR____TtC7parsecd27DevicePersistentDataManager_locker);

  return v0;
}

uint64_t sub_1000B5D20()
{
  sub_1000B5C84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DevicePersistentDataManager()
{
  result = qword_100218830;
  if (!qword_100218830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B5DCC()
{
  result = type metadata accessor for Logger();
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

unint64_t sub_1000B5E88()
{
  result = qword_100218918;
  if (!qword_100218918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218918);
  }

  return result;
}

unint64_t sub_1000B5EDC(uint64_t a1)
{
  *(a1 + 8) = sub_1000B5F0C();
  result = sub_1000B5F60();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000B5F0C()
{
  result = qword_100218938;
  if (!qword_100218938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218938);
  }

  return result;
}

unint64_t sub_1000B5F60()
{
  result = qword_100218940;
  if (!qword_100218940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218940);
  }

  return result;
}

unint64_t sub_1000B5FB8()
{
  result = qword_100218948;
  if (!qword_100218948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218948);
  }

  return result;
}

unint64_t sub_1000B600C(uint64_t a1)
{
  result = sub_1000B6034();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B6034()
{
  result = qword_100218950;
  if (!qword_100218950)
  {
    type metadata accessor for DevicePersistentDataManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100218950);
  }

  return result;
}

unint64_t sub_1000B608C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DevicePersistentDataManager.Activity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

NSString sub_1000B620C()
{
  result = String._bridgeToObjectiveC()();
  qword_100232C78 = result;
  return result;
}

uint64_t static ObjcExceptionUtil.tryBlock<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v36 = type metadata accessor for Optional();
  v7 = sub_100003650(v36);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  v14 = &aBlock[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &aBlock[-v15];
  sub_100006A98();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = v16;
  v17[4] = a1;
  v17[5] = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1000B6A98;
  *(v18 + 24) = v17;
  v34 = sub_10002827C;
  v35 = v18;
  sub_100003784();
  sub_100004314(COERCE_DOUBLE(1107296256));
  v32 = v19;
  v33 = &unk_1001FAA20;
  v20 = _Block_copy(aBlock);

  v21 = v20[2];
  isEscapingClosureAtFileLocation = v20;
  v21();
  v23 = 0;
  while (1)
  {

    v24 = v23;
    _Block_release(isEscapingClosureAtFileLocation);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (v24)
    {
      v26 = v24;
      sub_1000119A0();
      sub_1000572E8();
      swift_allocError();
      *v27 = v24;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0;
      swift_willThrow();

      (*(v9 + 8))(v16, v36);
    }

    v29 = v36;
    (*(v9 + 16))(v14, v16, v36);
    v25 = sub_100008D0C(v14, 1, a3);
    if (v25 != 1)
    {
      break;
    }

LABEL_9:
    __break(1u);
    v23 = objc_begin_catch(v25);
    objc_end_catch();
  }

  (*(*(a3 - 1) + 32))(v30, v14, a3);
  (*(v9 + 8))(v16, v29);
}

{
  v30 = a4;
  v32 = type metadata accessor for Optional();
  v7 = sub_100003650(v32);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  v31 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v29 - v14;
  v38 = 0;
  sub_100006A98();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = &v38;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1000B6AA4;
  *(v17 + 24) = v16;
  v36 = sub_1000B6AC4;
  v37 = v17;
  sub_100003784();
  sub_100004314(COERCE_DOUBLE(1107296256));
  v34 = v18;
  v35 = &unk_1001FAA98;
  v19 = _Block_copy(aBlock);

  v20 = v19[2];
  isEscapingClosureAtFileLocation = v19;
  v20();
  v22 = 0;
  while (1)
  {

    v23 = v22;
    _Block_release(isEscapingClosureAtFileLocation);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (v23)
    {
      v25 = v23;
      sub_1000119A0();
      sub_1000572E8();
      swift_allocError();
      *v26 = v23;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      swift_willThrow();

LABEL_7:
      (*(v9 + 8))(v15, v32);
      goto LABEL_8;
    }

    if (v38)
    {
      swift_willThrow();
      swift_errorRetain();
      goto LABEL_7;
    }

    v28 = v31;
    isEscapingClosureAtFileLocation = v32;
    (*(v9 + 16))(v31, v15, v32);
    v24 = sub_100008D0C(v28, 1, a3);
    if (v24 != 1)
    {
      break;
    }

LABEL_12:
    __break(1u);
    v22 = objc_begin_catch(v24);
    objc_end_catch();
  }

  (*(*(a3 - 1) + 32))(v30, v28, a3);
  (*(v9 + 8))(v15, isEscapingClosureAtFileLocation);
LABEL_8:
}

uint64_t sub_1000B6878(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v15 - v12;
  a2(v11);
  sub_1000051C0(v13, 0, 1, a5);
  return (*(v9 + 40))(a1, v13, v8);
}

uint64_t sub_1000B699C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v14 - v11;
  a2(v10);
  sub_1000051C0(v12, 0, 1, a4);
  return (*(v8 + 40))(a1, v12, v7);
}

uint64_t sub_1000B6AC8(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_100046184(&qword_100218A40, &unk_10019CFF0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;

  *(v1 + 24) = v3;
  return v1;
}

void sub_1000B6B3C()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1000BA6E8();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1000B6B9C()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1000BA210();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1000B6C04()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1000BA310(v2, &v4);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

uint64_t sub_1000B6C98()
{
  sub_100046184(&qword_100218A48, &qword_10019D000);
  swift_allocObject();
  result = sub_10010CFAC(&_swiftEmptyDictionarySingleton);
  qword_100218960 = result;
  return result;
}

uint64_t sub_1000B6CEC()
{
  sub_100046184(&qword_1002175A0, &qword_10019BB60);
  swift_allocObject();
  result = sub_1000993B0(0);
  qword_100232C80 = result;
  return result;
}

uint64_t sub_1000B6D3C()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100005180(0, &qword_1002147C0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v10[1] = 0;
  sub_1000152E8(&qword_100216910, &type metadata accessor for OS_dispatch_queue.Attributes);
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100232C88 = result;
  return result;
}

uint64_t sub_1000B6F4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v45 = a4;
  v46 = a5;
  v43 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100003650(v8);
  v52 = v10;
  v53 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  v51 = &v42[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DispatchQoS();
  v15 = sub_100003650(v14);
  v49 = v16;
  v50 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  v20 = &v42[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for URL();
  v22 = sub_100003650(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  v27 = &v42[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100214190 != -1)
  {
    swift_once();
  }

  v44 = qword_100232C88;
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v24 + 16))(&v42[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v21);
  v29 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v30 = v29 + v26;
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  (*(v24 + 32))(v31 + v29, v27, v21);
  *(v31 + v30) = v43 & 1;
  v32 = v31 + (v30 & 0xFFFFFFFFFFFFFFF8);
  v34 = v45;
  v33 = v46;
  *(v32 + 8) = v45;
  *(v32 + 16) = v33;
  v35 = (v31 + (((v30 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v37 = v47;
  v36 = v48;
  *v35 = v47;
  v35[1] = v36;
  v59 = sub_1000BA108;
  v60 = v31;
  sub_100003784();
  v56 = 1107296256;
  v57 = sub_10000D50C;
  v58 = &unk_1001FAB30;
  v38 = _Block_copy(aBlock);

  sub_10000D1D4(v34);
  sub_10000D1D4(v37);
  static DispatchQoS.unspecified.getter();
  v54 = _swiftEmptyArrayStorage;
  sub_1000152E8(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_100095D74(&qword_1002147E0, &unk_100217030, &unk_1001989C0);
  v39 = v51;
  v40 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v38);
  (*(v52 + 8))(v39, v40);
  (*(v49 + 8))(v20, v50);
}

void sub_1000B7368(uint64_t a1, uint64_t a2, int a3, void (*a4)(_BYTE *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v135 = a6;
  v136 = a7;
  v130 = a5;
  v134 = a4;
  v133 = a3;
  v8 = type metadata accessor for URLRequest();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v140 = &v121[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v131 = &v121[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v121[-v17];
  v19 = type metadata accessor for Date();
  v139 = *(v19 - 8);
  v20 = *(v139 + 64);
  __chkstk_darwin(v19);
  v138 = &v121[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_100046184(&qword_100217050, &qword_100199180);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v129 = &v121[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v132 = &v121[-v27];
  __chkstk_darwin(v26);
  v29 = &v121[-v28];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v128 = a2;
    v32 = URL.host(percentEncoded:)(1);
    countAndFlagsBits = v32.value._countAndFlagsBits;
    object = v32.value._object;
    if (!v32.value._object)
    {
      if (qword_100214120 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000964C(v36, qword_100232B80);
      v37 = v31;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock[0] = v41;
        *v40 = 136315138;
        v42 = sub_1000B822C();
        v44 = sub_100009684(v42, v43, aBlock);

        *(v40 + 4) = v44;
        v45 = "Throttling warmup for session: %s couldn't infer hostname";
LABEL_23:
        v57 = v39;
        v58 = v38;
        v59 = v40;
        v60 = 12;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v126 = v9;
    if (qword_100214180 != -1)
    {
      swift_once();
    }

    v33 = sub_10001E384();

    sub_1000BCE8C(countAndFlagsBits, object, v33, v29);

    v34 = sub_100008D0C(v29, 1, v19);
    v35 = v13;
    v127 = v19;
    if (v34)
    {
      sub_10000B298(v29, &qword_100217050, &qword_100199180);
    }

    else
    {
      v47 = v138;
      v46 = v139;
      (*(v139 + 16))(v138, v29, v19);
      sub_10000B298(v29, &qword_100217050, &qword_100199180);
      Date.timeIntervalSinceNow.getter();
      v49 = v48;
      (*(v46 + 8))(v47, v19);
      v50 = fabs(v49);
      if (v50 < 180.0)
      {

        if (qword_100214120 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_10000964C(v51, qword_100232B80);
        v37 = v31;
        v38 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v52))
        {
          v53 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          aBlock[0] = v41;
          *v53 = 136315394;
          v54 = sub_1000B822C();
          v56 = sub_100009684(v54, v55, aBlock);

          *(v53 + 4) = v56;
          *(v53 + 12) = 2048;
          *(v53 + 14) = v50;
          v45 = "Throttling warmup for session: %s attempted %f seconds ago";
          v57 = v52;
          v58 = v38;
          v59 = v53;
          v60 = 22;
LABEL_24:
          _os_log_impl(&_mh_execute_header, v58, v57, v45, v59, v60);
          sub_100007378(v41);

          return;
        }

LABEL_25:

        return;
      }
    }

    if (qword_100214188 != -1)
    {
      swift_once();
    }

    v61 = qword_100232C80;
    v62 = *(qword_100232C80 + 16);

    Lock.lock()();
    swift_beginAccess();
    if (*(v61 + 24))
    {
      Lock.unlock()();

      if (qword_100214120 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_10000964C(v63, qword_100232B80);
      v37 = v31;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock[0] = v41;
        *v40 = 136315138;
        v64 = sub_1000B822C();
        v66 = sub_100009684(v64, v65, aBlock);

        *(v40 + 4) = v66;
        v45 = "Throttling warmup for session: %s: already in progress";
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    v125 = v8;
    *(v61 + 24) = 1;
    Lock.unlock()();

    if (qword_100214120 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    v68 = sub_10000964C(v67, qword_100232B80);
    v69 = *(v13 + 16);
    v70 = v128;
    v69(v18, v128, v12);
    v71 = v31;
    v124 = v68;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    v74 = os_log_type_enabled(v72, v73);
    v123 = v71;
    if (v74)
    {
      v75 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v75 = 136315394;
      v122 = v73;
      v76 = sub_1000B822C();
      v78 = sub_100009684(v76, v77, aBlock);

      *(v75 + 4) = v78;
      *(v75 + 12) = 2080;
      v79 = URL.absoluteString.getter();
      v81 = v80;
      (*(v35 + 8))(v18, v12);
      v82 = sub_100009684(v79, v81, aBlock);

      *(v75 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v72, v122, "Warming up session %s to %s", v75, 0x16u);
      swift_arrayDestroy();

      v70 = v128;
    }

    else
    {

      (*(v35 + 8))(v18, v12);
    }

    v83 = v134;
    v69(v131, v70, v12);
    v84 = v140;
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.cachePolicy.setter();
    URLRequest.assumesHTTP3Capable.setter();
    if (v83)
    {

      v83(v84);
      sub_100010300(v83);
    }

    sub_100046184(&qword_100218A30, &unk_10019CFE0);
    swift_allocObject();
    v85 = sub_1000B6AC8(0);
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v87 = swift_allocObject();
    v88 = v123;
    swift_unknownObjectWeakInit();
    v89 = swift_allocObject();
    v89[2] = v85;
    v89[3] = v87;
    v91 = v135;
    v90 = v136;
    v89[4] = v135;
    v89[5] = v90;
    aBlock[4] = sub_1000BA1E4;
    aBlock[5] = v89;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B8490;
    aBlock[3] = &unk_1001FAB80;
    v92 = _Block_copy(aBlock);

    sub_10000D1D4(v91);

    v93 = [v88 dataTaskWithRequest:isa completionHandler:v92];
    _Block_release(v92);

    v94 = v93;
    sub_1000B6B9C();

    v95 = v132;
    Date.init()();
    v96 = v127;
    sub_1000051C0(v95, 0, 1, v127);

    v97 = sub_10001E384();
    if (sub_100008D0C(v95, 1, v96) == 1)
    {
      sub_10000B298(v95, &qword_100217050, &qword_100199180);
      v98 = sub_100005B74(countAndFlagsBits, object);
      if (v99)
      {
        v100 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v97;
        v102 = *(v97 + 24);
        sub_100046184(&qword_100218A38, &unk_10019D8F0);
        v103 = isUniquelyReferenced_nonNull_native;
        v84 = v140;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v103, v102);
        v104 = aBlock[0];
        v105 = *(*(aBlock[0] + 48) + 16 * v100 + 8);

        v106 = v129;
        (*(v139 + 32))(v129, *(v104 + 56) + *(v139 + 72) * v100, v127);
        _NativeDictionary._delete(at:)();
        v107 = 0;
      }

      else
      {
        v107 = 1;
        v106 = v129;
      }

      sub_1000051C0(v106, v107, 1, v127);

      sub_10000B298(v106, &qword_100217050, &qword_100199180);
    }

    else
    {
      v108 = v138;
      (*(v139 + 32))(v138, v95, v127);
      v109 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v97;
      sub_1000BDED0(v108, countAndFlagsBits, object, v109);
    }

    sub_100087D10();

    v110 = v88;
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      aBlock[0] = v114;
      *v113 = 136315138;
      v115 = sub_1000B822C();
      v117 = sub_100009684(v115, v116, aBlock);

      *(v113 + 4) = v117;
      _os_log_impl(&_mh_execute_header, v111, v112, "Kicked off connection warmup for session %s", v113, 0xCu);
      sub_100007378(v114);

      v84 = v140;
    }

    v118 = v125;
    v119 = v94;
    *&v120 = NSURLSessionTaskPriorityHigh;
    [v119 setPriority:v120];
    [v119 set_preconnect:1];

    [v119 resume];

    (*(v126 + 8))(v84, v118);
  }
}

uint64_t sub_1000B822C()
{
  result = sub_1000BA238(v0);
  if (!v2)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

void sub_1000B8268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_100214120 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000964C(v10, qword_100232B80);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = sub_1000B822C();
      v18 = sub_100009684(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "warmup attempt complete for session %s", v14, 0xCu);
      sub_100007378(v15);
    }

    if (a7)
    {

      v19 = sub_1000B6C04();
      if (v19)
      {
        v20 = v19;
        a7(v19);
      }

      sub_100010300(a7);
    }

    if (qword_100214188 != -1)
    {
      swift_once();
    }

    sub_1000FEDAC(0);
  }

  sub_1000B6B3C();
}

uint64_t sub_1000B8490(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_100014A2C(v6, v11);
}

void sub_1000B8558(uint64_t a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8[4] = sub_1000BA548;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000273B8;
  v8[3] = &unk_1001FAC98;
  v6 = _Block_copy(v8);
  swift_errorRetain();
  v7 = a2;

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t sub_1000B8660(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v50 - v9;
  v11 = _convertErrorToNSError(_:)();
  v12 = [v11 domain];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
    goto LABEL_16;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
LABEL_17:
    v39 = 1;
    goto LABEL_18;
  }

  v19 = _convertErrorToNSError(_:)();
  v20 = [v19 domain];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
LABEL_16:

    goto LABEL_17;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_17;
  }

  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000964C(v27, qword_100232AB0);
  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v51 = v30;
    v53 = swift_slowAlloc();
    v54 = v53;
    *v30 = 136446210;
    v31 = _convertErrorToNSError(_:)();
    v52 = v29;
    v32 = v31;
    v33 = [v31 domain];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = sub_100009684(v34, v36, &v54);

    v38 = v51;
    *(v51 + 1) = v37;
    _os_log_impl(&_mh_execute_header, v28, v52, "skipping error code for unexpected networkFailure domain %{public}s", v38, 0xCu);
    sub_100007378(v53);
  }

  v39 = 0;
LABEL_18:
  v40 = sub_10007B0D8(a2);
  sub_1000B8C6C(v40, v41);
  v42 = [a2 connectStartDate];
  if (v42)
  {
    v43 = v42;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = [a2 connectEndDate];
    if (v44)
    {
      v45 = v44;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSince(_:)();
      v46 = *(v4 + 8);
      v46(v8, v3);
      v46(v10, v3);
    }

    else
    {
      (*(v4 + 8))(v10, v3);
    }
  }

  sub_100046184(&qword_100219540, &unk_1001A8690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019CF80;
  *(inited + 32) = 0x4474736575716572;
  *(inited + 40) = 0xEF6E6F6974617275;
  *(inited + 48) = Double._bridgeToObjectiveC()();
  *(inited + 56) = 0x72616C756C6C6563;
  *(inited + 64) = 0xE800000000000000;
  [a2 isCellular];
  *(inited + 72) = Bool._bridgeToObjectiveC()();
  strcpy((inited + 80), "cfnErrorCode");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  if (v39)
  {
    v48 = _convertErrorToNSError(_:)();
    [v48 code];
  }

  *(inited + 96) = Int._bridgeToObjectiveC()();
  *(inited + 104) = 0x74617069746C756DLL;
  *(inited + 112) = 0xE900000000000068;
  [a2 isMultipath];
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  *(inited + 128) = 0x6574736973726570;
  *(inited + 136) = 0xEA0000000000746ELL;
  [a2 isReusedConnection];
  *(inited + 144) = Bool._bridgeToObjectiveC()();
  strcpy((inited + 152), "protocolName");
  *(inited + 165) = 0;
  *(inited + 166) = -5120;
  *(inited + 168) = Int._bridgeToObjectiveC()();
  sub_100005180(0, &qword_10021A4C0, NSObject_ptr);
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000B8C6C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a1 == 0x312E312F70747468 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else
  {
    v6 = a1 == 12904 && a2 == 0xE200000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 2;
    }

    else if (a1 == 13160 && a2 == 0xE200000000000000)
    {

      return 3;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
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

uint64_t sub_1000B8D84(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(51);
    v5._object = 0x80000001001B0090;
    v5._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v5);
    [a1 code];
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0x3A6E69616D6F6420;
    v7._object = 0xE900000000000020;
    String.append(_:)(v7);
    v8 = [a1 domain];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x7069726373656420;
    v13._object = 0xEE00203A6E6F6974;
    String.append(_:)(v13);
    v14 = [a1 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    sub_1000BA4F0(a1, a2, 1);
    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    return 0;
  }

  else
  {

    sub_100046184(&qword_1002181F0, &qword_10019C610);
    return String.init<A>(describing:)();
  }
}

id sub_1000B8F60(uint64_t a1, char a2, char a3)
{
  v44 = type metadata accessor for URLRequest();
  v6 = sub_100003650(v44);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v42 = v11;
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100046184(&qword_100218A50, &qword_10019D008);
  v13 = sub_100003650(v47);
  v45 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  v18 = &v41 - v17;
  v48 = sub_100046184(&qword_100218A58, &qword_10019D010);
  v19 = sub_100003650(v48);
  v46 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  v24 = &v41 - v23;
  _s20PegasusResponseStateCMa();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = _swiftEmptyArrayStorage;
  *(v25 + 32) = 0;
  *(v25 + 48) = 0;
  *(v25 + 56) = 0;
  *(v25 + 40) = 0;
  *(v25 + 64) = -1;
  v43 = a1;
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v53 = sub_1000BA34C;
  v54 = v25;
  sub_100003784();
  v50 = 1107296256;
  v51 = sub_1000B8490;
  v52 = &unk_1001FABA8;
  v27 = _Block_copy(aBlock);

  v28 = [v41 dataTaskWithRequest:isa completionHandler:v27];
  _Block_release(v27);

  LODWORD(v29) = **(&off_1001FADA0 + a2);
  [v28 setPriority:v29];
  if (a3)
  {
    v30 = v28;
    sub_1000B986C(v25, v30);
  }

  v31 = swift_allocObject();
  *(v31 + 16) = v25;
  *(v31 + 24) = v28;

  v32 = v28;
  sub_100046184(&qword_100218A60, &qword_10019D018);
  sub_100095D74(&qword_100218A68, &qword_100218A60, &qword_10019D018);
  Deferred.init(createPublisher:)();
  v33 = v44;
  (*(v8 + 16))(v12, v43, v44);
  v34 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v35 = (v42 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v8 + 32))(v36 + v34, v12, v33);
  *(v36 + v35) = v32;
  v37 = v32;
  sub_100046184(&qword_100216900, &unk_10019AE20);
  sub_100095D74(&qword_100218A70, &qword_100218A50, &qword_10019D008);
  v38 = v47;
  Publisher.mapError<A>(_:)();

  (*(v45 + 8))(v18, v38);
  sub_100095D74(&qword_100218A78, &qword_100218A58, &qword_10019D010);
  v39 = v48;
  Publisher.eraseToAnyPublisher()();

  (*(v46 + 8))(v24, v39);
  return v37;
}

void sub_1000B945C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    swift_errorRetain();
    v4 = _convertErrorToNSError(_:)();
    sub_1000BA5D4();
    v5 = swift_allocError();
    *v6 = v4;
    *(v6 + 8) = 0;
    *(v6 + 16) = 1;
    sub_1000B9628(v5, 0, 0, 1);
  }

  else if (a3 && (objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v10;
    v18 = a3;
    sub_100062FBC(a1, a2);
    sub_1000B9628(v11, a1, a2, 0);

    sub_100014A2C(a1, a2);
  }

  else
  {
    v12 = a3;
    sub_100046184(&qword_100218A80, &qword_10019D020);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_1000BA5D4();
    v16 = swift_allocError();
    *v17 = v13;
    *(v17 + 8) = v15;
    *(v17 + 16) = 0;
    sub_1000B9628(v16, 0, 0, 1);
  }
}

uint64_t sub_1000B9628(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  os_unfair_lock_lock((v4 + 32));
  sub_1000BA484(*(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64));
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  v9 = a4 & 1;
  *(v4 + 64) = v9;
  swift_beginAccess();
  v10 = *(v4 + 24);
  *(v4 + 24) = _swiftEmptyArrayStorage;
  sub_1000BA430(a1, a2, a3, v9);
  os_unfair_lock_unlock((v4 + 32));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 40);
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v16[0] = a1;
      v16[1] = a2;
      v16[2] = a3;
      v17 = v9;

      v14(v16);

      v12 += 2;
      --v11;
    }

    while (v11);
  }
}

void sub_1000B9730(void *a1, uint64_t a2, unint64_t a3, char a4, void *a5)
{
  if (a4)
  {
    sub_1000BA430(a1, a2, a3, 1);
    swift_errorRetain();
    sub_100046184(&qword_100216900, &unk_10019AE20);
    if (swift_dynamicCast())
    {
      if (v13 == 1)
      {
        v9 = v11;
        v10 = [a5 _incompleteCurrentTaskTransactionMetrics];
        sub_1000B8558(v9, v10);
        sub_1000BA49C(a1, a2, a3, 1);

        sub_1000BA4F0(v11, v12, 1);
        sub_1000BA4F0(v11, v12, 1);
        return;
      }

      sub_1000BA4F0(v11, v12, 0);
    }

    sub_1000BA49C(a1, a2, a3, 1);
  }
}

uint64_t sub_1000B986C(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = a2;
  os_unfair_lock_lock((a1 + 32));
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  if (v9 == 255)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1000BA408;
    *(v12 + 24) = v4;
    swift_beginAccess();

    sub_100106834();
    v13 = *(*(a1 + 24) + 16);
    sub_100110744(v13);
    v14 = *(a1 + 24);
    *(v14 + 16) = v13 + 1;
    v15 = v14 + 16 * v13;
    *(v15 + 32) = sub_1000BA414;
    *(v15 + 40) = v12;
    *(a1 + 24) = v14;
    swift_endAccess();
    sub_1000BA418(v7, v6, v8, 255);
    os_unfair_lock_unlock((a1 + 32));
LABEL_13:
  }

  sub_1000BA418(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  os_unfair_lock_unlock((a1 + 32));
  if (v9)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_100046184(&qword_100216900, &unk_10019AE20);
    if (swift_dynamicCast())
    {
      if (v19 == 1)
      {
        v10 = v17;
        v11 = [v5 _incompleteCurrentTaskTransactionMetrics];
        sub_1000B8558(v10, v11);
        sub_1000BA484(v7, v6, v8, v9);

        sub_1000BA4F0(v17, v18, 1);
        sub_1000BA4F0(v17, v18, 1);
LABEL_12:
        sub_1000BA484(v7, v6, v8, v9);
        goto LABEL_13;
      }

      sub_1000BA4F0(v17, v18, 0);
    }

    sub_1000BA484(v7, v6, v8, v9);
    goto LABEL_12;
  }

  sub_1000BA484(v7, v6, v8, v9);
}

uint64_t sub_1000B9B20(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  os_unfair_lock_lock((a1 + 32));
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  if (v10 == 255)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1000BA558;
    *(v11 + 24) = v6;
    swift_beginAccess();

    sub_100106834();
    v12 = *(*(a1 + 24) + 16);
    sub_100110744(v12);
    v13 = *(a1 + 24);
    *(v13 + 16) = v12 + 1;
    v14 = v13 + 16 * v12;
    *(v14 + 32) = sub_1000BA6E4;
    *(v14 + 40) = v11;
    *(a1 + 24) = v13;
    swift_endAccess();
    sub_1000BA418(v8, v7, v9, 255);
    os_unfair_lock_unlock((a1 + 32));
  }

  else
  {
    sub_1000BA418(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    os_unfair_lock_unlock((a1 + 32));
    v16[0] = v8;
    v16[1] = v7;
    v16[2] = v9;
    v17 = v10 & 1;
    a2(v16);
    sub_1000BA484(v8, v7, v9, v10);
  }
}

id sub_1000B9CC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_100046184(&qword_100218A60, &qword_10019D018);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  result = Future.init(_:)();
  v10 = result;
  v11 = 0;
  atomic_compare_exchange_strong((a1 + 16), &v11, 1u);
  if (!v11)
  {
    result = [a2 resume];
  }

  *a3 = v10;
  return result;
}

uint64_t sub_1000B9D6C(void (*a1)(void *), uint64_t a2, uint64_t a3)
{

  return sub_1000B9B20(a3, a1, a2);
}

uint64_t sub_1000B9DC0@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = URLRequest.allHTTPHeaderFields.getter();
  if (v6 && (v7 = sub_1000BCE30(0xD000000000000011, 0x80000001001B0050, v6), v9 = v8, , v9))
  {

    _StringGuts.grow(_:)(18);

    v26[0] = 0xD000000000000010;
    v26[1] = 0x80000001001B0070;
    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);
    swift_bridgeObjectRelease_n();
    v12 = 0xD000000000000010;
    v11 = 0x80000001001B0070;
  }

  else
  {

    v12 = 0;
    v11 = 0xE000000000000000;
  }

  if (qword_100214098 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000964C(v13, qword_100232A38);
  v14 = a2;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v25 = a3;
    v17 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v17 = 136315394;
    v18 = [v14 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_100009684(v19, v21, v26);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = sub_100009684(v12, v11, v26);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Download for %s %s failed", v17, 0x16u);
    swift_arrayDestroy();

    a3 = v25;
  }

  else
  {
  }

  *a3 = v5;

  return swift_errorRetain();
}

uint64_t sub_1000BA078()
{
  v1 = *(v0 + 24);

  sub_10000B298(v0 + 40, &qword_100218A28, &qword_10019CFD8);
  return v0;
}

uint64_t sub_1000BA0B0()
{
  sub_1000BA078();

  return _swift_deallocClassInstance(v0, 65, 7);
}

void sub_1000BA108()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = ((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v0 + v4);
  v11 = *(v0 + v4 + 8);

  sub_1000B7368(v5, v0 + v2, v6, v8, v9, v10, v11);
}

void *sub_1000BA1AC(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1000BA1F0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1000BA210()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000BA238(void *a1)
{
  v1 = [a1 sessionDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}