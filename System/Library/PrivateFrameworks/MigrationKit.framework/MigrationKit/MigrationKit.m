int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_allocWithZone(type metadata accessor for Listener()) init];
  sub_100001528();
  v5 = [objc_opt_self() currentRunLoop];
  [v5 run];

  objc_autoreleasePoolPop(v3);
  return 0;
}

uint64_t sub_100001528()
{
  v1 = *(v0 + OBJC_IVAR____TtC10migrationd8Listener_listener);
  [v1 setDelegate:v0];
  [v1 resume];
  sub_1000073B0();
  v2 = static OS_dispatch_queue.main.getter();
  v5[4] = sub_100001948;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000021FC;
  v5[3] = &unk_10001D028;
  v3 = _Block_copy(v5);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, v3);
  _Block_release(v3);

  type metadata accessor for AppInstallObserver();
  static AppInstallObserver.shared.getter();
}

uint64_t sub_100001628()
{
  v0 = type metadata accessor for Logger();
  sub_1000067DC(v0, qword_100020970);
  sub_1000067A4(v0, qword_100020970);
  return static Log.loggerForFile(flair:sourceFile:)();
}

id sub_10000173C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100020890 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000067A4(v3, qword_100020970);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "deinit", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_1000018EC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = a1;
  v4 = a3();
  sub_100006880(v4, v5);
}

uint64_t sub_100001948(void *a1)
{
  v2 = (*(*(sub_10000507C(&unk_100020A20, &qword_1000175E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v25 - v3;
  type = xpc_get_type(a1);
  result = XPC_TYPE_DICTIONARY.getter();
  if (type == result)
  {
    v7 = XPC_EVENT_KEY_NAME.getter();
    result = xpc_dictionary_get_string(a1, v7);
    if (result)
    {
      v8 = String.init(cString:)();
      v10 = v9;
      v11._countAndFlagsBits = v8;
      v11._object = v10;
      v12 = _findStringSwitchCase(cases:string:)(&off_10001CBA0, v11);

      if (v12)
      {
        if (v12 != 1)
        {
          return result;
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      if (qword_100020890 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000067A4(v14, qword_100020970);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136315138;
        if (v13)
        {
          v19 = 0xD000000000000031;
        }

        else
        {
          v19 = 0xD000000000000021;
        }

        if (v13)
        {
          v20 = "buddy.setupexited";
        }

        else
        {
          v20 = &off_100016990;
        }

        v21 = sub_1000060DC(v19, v20 | 0x8000000000000000, &v26);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "received a new notification. notification=%s", v17, 0xCu);
        sub_100007304(v18);
      }

      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
      type metadata accessor for MainActor();
      v23 = static MainActor.shared.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = &protocol witness table for MainActor;
      sub_100001F0C(0, 0, v4, &unk_100017708, v24);
    }
  }

  return result;
}

uint64_t sub_100001C1C()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100001CB0, v2, v1);
}

uint64_t sub_100001CB0()
{
  result = os_transaction_create();
  *(v0 + 40) = result;
  if (result)
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_100001D68;

    return sub_10001458C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100001D68()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 32);
  v5 = *(v1 + 24);

  return _swift_task_switch(sub_100001EAC, v5, v4);
}

uint64_t sub_100001EAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100001F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000507C(&unk_100020A20, &qword_1000175E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100005CB0(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000071FC(v11, &unk_100020A20, &qword_1000175E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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

      sub_1000071FC(a3, &unk_100020A20, &qword_1000175E0);

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

  sub_1000071FC(a3, &unk_100020A20, &qword_1000175E0);
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

uint64_t sub_1000021FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_10000225C(const char *a1)
{
  v3 = v1;
  if (qword_100020890 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000067A4(v4, qword_100020970);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  if (*(v3 + OBJC_IVAR____TtC10migrationd8Listener_actor))
  {
    v8 = *(v3 + OBJC_IVAR____TtC10migrationd8Listener_actor);

    sub_1000078C4();
  }
}

uint64_t sub_100002384(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100002428(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC10migrationd8Listener_actor;
  if (*(v2 + OBJC_IVAR____TtC10migrationd8Listener_actor))
  {

    sub_1000078C4();
  }

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ListenerActor();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v8 = sub_100013C14(v7, a2, sub_1000076B4, v6);
  swift_unknownObjectRelease();
  v9 = *(v3 + v5);
  *(v3 + v5) = v8;

  if (*(v3 + v5))
  {
    v11 = *(v3 + v5);

    sub_1000076B8();
  }

  return result;
}

void sub_100002540(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC10migrationd8Listener_actor;
    v4 = *&Strong[OBJC_IVAR____TtC10migrationd8Listener_actor];
    if (v4 && v4 == a1)
    {
      v5 = Strong;
      v6 = qword_100020890;
      v7 = *&Strong[OBJC_IVAR____TtC10migrationd8Listener_actor];

      if (v6 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000067A4(v8, qword_100020970);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "will stop the listener.", v11, 2u);
      }

      v12 = *&v5[v3];
      *&v5[v3] = 0;

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "stopped the listener.", v15, 2u);
      }
    }

    else
    {
    }
  }
}

void sub_100002834(char *a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*&a1[OBJC_IVAR____TtC10migrationd8Listener_actor])
  {
    v5 = a1;

    a3(v4);
  }
}

uint64_t sub_100002A24(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100002A9C, 0, 0);
}

uint64_t sub_100002A9C()
{
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR____TtC10migrationd8Listener_actor];
  v0[4] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_100002BA0;

    return sub_100007AA4();
  }

  else
  {

    v5 = v0[3];
    v5[2](v5, 0);
    _Block_release(v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100002BA0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 16);
  v9 = *v0;

  isa = Set._bridgeToObjectiveC()().super.isa;

  v6 = *(v1 + 24);
  (v6)[2](v6, isa);

  _Block_release(v6);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_100002EAC(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100002F24, 0, 0);
}

uint64_t sub_100002F24()
{
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR____TtC10migrationd8Listener_actor];
  v0[4] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_100003028;

    return sub_100007E5C();
  }

  else
  {

    v5 = v0[3];
    v5[2](v5, 0);
    _Block_release(v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100003028(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (a1)
  {
    v8.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = *(v3 + 24);
  (v9)[2](v9, v8.super.isa);

  _Block_release(v9);
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100003338(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for Server.PreflightStatus();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  v3[7] = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;

  return _swift_task_switch(sub_10000343C, 0, 0);
}

uint64_t sub_10000343C()
{
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR____TtC10migrationd8Listener_actor];
  v0[8] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_1000035C4;
    v4 = v0[7];

    return sub_100008208(v4);
  }

  else
  {
    v6 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[3];

    (*(v8 + 104))(v7, enum case for Server.PreflightStatus.indeterminate(_:), v9);
    v10 = Server.PreflightStatus.rawValue.getter();

    (*(v8 + 8))(v7, v9);
    v11 = v0[6];
    v11[2](v11, v10, 0);
    _Block_release(v11);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1000035C4(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 80) = a2;

  return _swift_task_switch(sub_1000036E8, 0, 0);
}

uint64_t sub_1000036E8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 48);
  v2[2](v2, *(v0 + 88), *(v0 + 80));
  _Block_release(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100003848(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for XPCScheme();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = (__chkstk_darwin)();
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v51 - v11;
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  v15 = OBJC_IVAR____TtC10migrationd8Listener_actor;
  v16 = *(v2 + OBJC_IVAR____TtC10migrationd8Listener_actor);
  if (v16)
  {
    v54 = v2;
    v55 = OBJC_IVAR____TtC10migrationd8Listener_actor;
    v56 = a1;
    v17 = *(v16 + 32);
    v53 = v5[13];
    v53(&v51 - v13, enum case for XPCScheme.migration(_:), v4);

    v18 = XPCScheme.rawValue.getter();
    v52 = v5[1];
    v52(v14, v4);
    if (v17 != v18)
    {
      if (qword_100020890 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000067A4(v26, qword_100020970);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "found the existing esim actor and will create a new one.", v29, 2u);
      }

      v53(v12, enum case for XPCScheme.esim(_:), v4);
      v30 = XPCScheme.rawValue.getter();
      v52(v12, v4);
      v31 = v54;
      v32 = v55;
      if (*(v54 + v55))
      {
        v33 = *(v54 + v55);

        sub_1000078C4();
      }

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for ListenerActor();
      swift_allocObject();
      v35 = swift_unknownObjectRetain();
      v36 = sub_100013C14(v35, v30, sub_1000076B4, v34);
      swift_unknownObjectRelease();
      v37 = *(v31 + v32);
      *(v31 + v32) = v36;

      if (*(v31 + v32))
      {
        v38 = *(v31 + v32);

        sub_1000076B8();
      }
    }

    if (*(v16 + 88))
    {
      v19 = v56;
      if (qword_100020890 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000067A4(v20, qword_100020970);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "found the existing actor and will reuse it.", v23, 2u);
      }

      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v19;
      type metadata accessor for ListenerActor();
      sub_10000674C();
      swift_unknownObjectRetain();

      NonReentrantTaskExecutable.task(_:)();
    }

    v15 = v55;
    v2 = v54;
  }

  if (qword_100020890 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_1000067A4(v39, qword_100020970);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "could not find any existing actor and will create a new one.", v42, 2u);
  }

  (v5[13])(v9, enum case for XPCScheme.esim(_:), v4);
  v43 = XPCScheme.rawValue.getter();
  (v5[1])(v9, v4);
  if (*(v2 + v15))
  {
    v44 = *(v2 + v15);

    sub_1000078C4();
  }

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for ListenerActor();
  swift_allocObject();
  v46 = swift_unknownObjectRetain();
  v47 = sub_100013C14(v46, v43, sub_100006878, v45);
  swift_unknownObjectRelease();
  v48 = *(v2 + v15);
  *(v2 + v15) = v47;

  if (*(v2 + v15))
  {
    v50 = *(v2 + v15);

    sub_1000076B8();
  }

  return result;
}

uint64_t sub_100003F2C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for XPCScheme();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10migrationd8Listener_actor;
  v11 = *(v2 + OBJC_IVAR____TtC10migrationd8Listener_actor);
  if (v11)
  {
    v12 = *(v11 + 32);
    (*(v5 + 104))(v9, enum case for XPCScheme.migration(_:), v4);

    v13 = XPCScheme.rawValue.getter();
    (*(v5 + 8))(v9, v4);
    if (v12 == v13)
    {

      if (*(v2 + v10))
      {
        swift_allocObject();
        swift_weakInit();
        type metadata accessor for ListenerActor();
        sub_10000674C();

        NonReentrantTaskExecutable.task(_:)();
      }

      return result;
    }

    if (qword_100020890 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000067A4(v14, qword_100020970);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v15, v16, "found the existing esim actor and will cancel the existing esim actor. cancelled=%{BOOL}d", v17, 8u);
    }

    v18 = *(v2 + v10);
    if (a1)
    {
      if (v18)
      {
        v19 = *(v2 + v10);

        sub_1000078C4();
LABEL_14:
      }
    }

    else if (v18)
    {
      v20 = *(v2 + v10);

      sub_100007A84();
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_1000043C8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;

  return _swift_task_switch(sub_10000446C, 0, 0);
}

uint64_t sub_10000446C()
{
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR____TtC10migrationd8Listener_actor];
  v0[6] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_100004580;
    v5 = v0[4];
    v4 = v0[5];

    return sub_100008AE4(v5, v4);
  }

  else
  {
    sub_100005FC0(v0[4], v0[5]);

    v7 = v0[3];
    v7[2](v7, 0);
    _Block_release(v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100004580(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 16);
  v11 = *v2;

  sub_100005FC0(v9, v8);

  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000060C8(a1, a2);
  }

  v13 = *(v5 + 24);
  (v13)[2](v13, isa);

  _Block_release(v13);
  v14 = *(v11 + 8);

  return v14();
}

uint64_t sub_1000048D8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;

  return _swift_task_switch(sub_10000497C, 0, 0);
}

uint64_t sub_10000497C()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  if (*&v1[OBJC_IVAR____TtC10migrationd8Listener_actor])
  {
    v4 = *&v1[OBJC_IVAR____TtC10migrationd8Listener_actor];

    sub_100008E44(v3, v2);

    sub_100005FC0(v3, v2);
  }

  else
  {

    sub_100005FC0(v3, v2);
  }

  v5 = v0[3];
  v5[2](v5);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_100004A50()
{
  v1[2] = v0;
  v2 = type metadata accessor for AppContentCellItem();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100004B1C, 0, 0);
}

uint64_t sub_100004B1C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC10migrationd8Listener_actor);
  v0[7] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_100004C10;

    return sub_100009030();
  }

  else
  {
    v5 = v0[5];
    v4 = v0[6];

    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_100004C10(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100004D30, 0, 0);
}

uint64_t sub_100004D30()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[4];
      specialized ContiguousArray.reserveCapacity(_:)();
      v6 = *(v3 + 16);
      v4 = v3 + 16;
      v5 = v6;
      v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v19 = *(v4 + 56);
      do
      {
        v8 = v0[5];
        v9 = v0[6];
        v10 = v0[3];
        v5(v9, v7, v10);
        v5(v8, v9, v10);
        v11 = objc_allocWithZone(type metadata accessor for AppContentCellItem.XPCHelper());
        AppContentCellItem.XPCHelper.init(appContentCellItem:)();
        (*(v4 - 8))(v9, v10);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v7 += v19;
        --v2;
      }

      while (v2);

      v13 = _swiftEmptyArrayStorage;
    }

    else
    {
      v14 = v0[9];

      v13 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = v0[5];
  v15 = v0[6];

  v17 = v0[1];

  return v17(v13);
}

uint64_t sub_10000507C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000050C4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10000516C;

  return sub_100004A50();
}

uint64_t sub_10000516C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (a1)
  {
    type metadata accessor for AppContentCellItem.XPCHelper();
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = *(v3 + 24);
  (v8)[2](v8, v7.super.isa);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1000052D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000076A4;

  return sub_1000050C4(v2, v3);
}

uint64_t sub_100005384(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000547C;

  return v7(a1);
}

uint64_t sub_10000547C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005574(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000076A4;

  return v7();
}

uint64_t sub_10000565C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000076A4;

  return sub_100005574(v2, v3, v5);
}

uint64_t sub_10000571C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100005804;

  return v8();
}

uint64_t sub_100005804()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000058F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000076A4;

  return sub_10000571C(a1, v4, v5, v7);
}

uint64_t sub_1000059C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000507C(&unk_100020A20, &qword_1000175E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_100005CB0(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000071FC(v11, &unk_100020A20, &qword_1000175E0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1000071FC(a3, &unk_100020A20, &qword_1000175E0);

    return v22;
  }

LABEL_8:
  sub_1000071FC(a3, &unk_100020A20, &qword_1000175E0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100005CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005D20(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000076A8;

  return v7(a1);
}

uint64_t sub_100005E18()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005E50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000076A4;

  return sub_100005D20(a1, v5);
}

uint64_t sub_100005F0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_1000048D8(v2, v3, v4);
}

uint64_t sub_100005FC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100006014()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_1000043C8(v2, v3, v4);
}

uint64_t sub_1000060C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005FC0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000060DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000061A8(v11, 0, 0, 1, a1, a2);
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
    sub_100007350(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007304(v11);
  return v7;
}

unint64_t sub_1000061A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000062B4(a5, a6);
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

char *sub_1000062B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006300(a1, a2);
  sub_100006430(&off_10001CB78);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100006300(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000651C(v5, 0);
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
        v7 = sub_10000651C(v10, 0);
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

uint64_t sub_100006430(uint64_t result)
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

  result = sub_100006590(result, v12, 1, v3);
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

void *sub_10000651C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000507C(&qword_100020BF0, &qword_1000176F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006590(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000507C(&qword_100020BF0, &qword_1000176F8);
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

uint64_t sub_100006684()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000066BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000076A4;

  return sub_10000EAF4(v0);
}

unint64_t sub_10000674C()
{
  result = qword_100020B60;
  if (!qword_100020B60)
  {
    type metadata accessor for ListenerActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B60);
  }

  return result;
}

uint64_t sub_1000067A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000067DC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100006840()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100006880(uint64_t a1, unint64_t a2)
{
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v4)
  {
    center = v4;
    v5 = String._bridgeToObjectiveC()();
    CFNotificationCenterPostNotification(center, v5, 0, 0, 1u);
    if (qword_100020890 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000067A4(v6, qword_100020970);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000060DC(a1, a2, &v15);
      _os_log_impl(&_mh_execute_header, v7, v8, "Posted Darwin notification: %s", v9, 0xCu);
      sub_100007304(v10);
    }
  }

  else
  {
    if (qword_100020890 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000067A4(v11, qword_100020970);
    center = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(center, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, center, v12, "Failed to get Darwin notification center", v13, 2u);
    }
  }
}

uint64_t sub_100006AD8(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 valueForEntitlement:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v18 = v23;
  v19 = v24;
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v22 != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_1000071FC(&v18, &unk_100020A30, &qword_1000176F0);
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = [a1 valueForEntitlement:{v5, v18, v19}];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v18 = v23;
  v19 = v24;
  if (!*(&v24 + 1))
  {
    sub_1000071FC(&v18, &unk_100020A30, &qword_1000176F0);
LABEL_17:
    v15 = 0;
    v16 = &selRef_invalidate;
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v22 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  type metadata accessor for XPCInterface();
  v7 = v1;
  v8 = static XPCInterface.interface()();
  [a1 setExportedInterface:v8];

  [a1 setExportedObject:v7];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v20 = sub_100007294;
  v21 = v9;
  *&v18 = _NSConcreteStackBlock;
  *(&v18 + 1) = 1107296256;
  *&v19 = sub_100002384;
  *(&v19 + 1) = &unk_10001CFB0;
  v10 = _Block_copy(&v18);
  v11 = v7;

  [a1 setInvalidationHandler:v10];
  _Block_release(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v20 = sub_1000072D8;
  v21 = v12;
  *&v18 = _NSConcreteStackBlock;
  *(&v18 + 1) = 1107296256;
  *&v19 = sub_100002384;
  *(&v19 + 1) = &unk_10001D000;
  v13 = _Block_copy(&v18);
  v14 = v11;

  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
  v15 = 1;
  v16 = &selRef_resume;
LABEL_18:
  [a1 *v16];
  return v15;
}

uint64_t sub_100006E4C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006E8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100005804;

  return sub_10000DB28(v2, v3);
}

uint64_t sub_100006F24()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006F6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_100003338(v2, v3, v4);
}

uint64_t sub_100007020()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000076A4;

  return sub_100002EAC(v2, v3);
}

uint64_t sub_1000070CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000710C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000076A4;

  return sub_100002A24(v2, v3);
}

uint64_t sub_1000071BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000071FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000507C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000725C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000072C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007304(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100007350(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000073B0()
{
  result = qword_100020A40;
  if (!qword_100020A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100020A40);
  }

  return result;
}

uint64_t sub_1000073FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007434()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000076A4;

  return sub_100001C1C();
}

uint64_t sub_1000074E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000076A4;

  return sub_100005384(a1, v5);
}

uint64_t sub_100007598(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005804;

  return sub_100005384(a1, v5);
}

uint64_t sub_1000076D8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000067A4(v6, qword_100020A50);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "connect()", v9, 2u);
  }

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  sub_100013E84(&qword_100020B60, v12, type metadata accessor for ListenerActor);

  NonReentrantTaskExecutable.task(_:)();
}

uint64_t sub_1000078E4(const char *a1)
{
  v3 = *v1;
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000067A4(v4, qword_100020A50);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  swift_allocObject();
  swift_weakInit();
  sub_100013E84(&qword_100020B60, v8, type metadata accessor for ListenerActor);

  NonReentrantTaskExecutable.task(_:)();
}

uint64_t sub_100007AC4()
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000067A4(v1, qword_100020A50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "will return supported selections.", v4, 2u);
  }

  v5 = v0[3];

  v6 = swift_allocObject();
  v0[4] = v6;
  swift_weakInit();
  v7 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  v0[5] = v8;
  v9 = sub_10000507C(&qword_100020BE0, &qword_100017908);
  *v8 = v0;
  v8[1] = sub_100007C94;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000015, 0x8000000100016EB0, sub_10001422C, v6, v9);
}

uint64_t sub_100007C94()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100007DAC, 0, 0);
}

uint64_t sub_100007DAC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  v2 = sub_100009350(v1);

  v3 = sub_100013ECC(v2);

  sub_10000CC88("returned supported selections.");
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100007E7C()
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000067A4(v1, qword_100020A50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "will return peer supported selections.", v4, 2u);
  }

  v5 = v0[3];

  v6 = swift_allocObject();
  v0[4] = v6;
  swift_weakInit();
  v7 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  v0[5] = v8;
  v9 = sub_10000507C(&qword_100020BE0, &qword_100017908);
  *v8 = v0;
  v8[1] = sub_10000804C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000019, 0x8000000100016E90, sub_1000140EC, v6, v9);
}

uint64_t sub_10000804C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100008164, 0, 0);
}

uint64_t sub_100008164()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_100009350(*(v0 + 16));

    v1 = sub_100013ECC(v2);
  }

  sub_10000CC88("returned peer supported selections.");
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_100008208(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_10000507C(&qword_100020BD0, &qword_1000178F0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for Server.PreflightStatus();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100008310, 0, 0);
}

uint64_t sub_100008310()
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000067A4(v1, qword_100020A50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "preflightSelection()", v4, 2u);
  }

  v5 = v0[5];

  v6 = sub_100009650(v5);
  v0[13] = sub_100013F40(v6);

  type metadata accessor for APIActor();
  v0[14] = static APIActor.shared.getter();
  sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000084B8, v8, v7);
}

uint64_t sub_1000084B8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);

  swift_beginAccess();
  v3 = *(v2 + 64);
  *(v0 + 120) = v3;
  if (v3)
  {
    *(v0 + 144) = *(*(v0 + 56) + 48);
    v4 = *(&async function pointer to dispatch thunk of Server.preflightSelection(selections:) + 1);
    v10 = (&async function pointer to dispatch thunk of Server.preflightSelection(selections:) + async function pointer to dispatch thunk of Server.preflightSelection(selections:));

    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_1000085F0;
    v6 = *(v0 + 104);
    v7 = *(v0 + 64);

    return v10(v7, v6);
  }

  else
  {
    v9 = *(v0 + 104);

    return _swift_task_switch(sub_100008818, 0, 0);
  }
}

uint64_t sub_1000085F0(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_10000872C, 0, 0);
}

uint64_t sub_10000872C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  *(v4 + *(v0 + 144)) = *(v0 + 136);
  v6 = *(v4 + *(v5 + 48));
  (*(v3 + 32))(v1);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);
  v12 = Server.PreflightStatus.rawValue.getter();
  (*(v10 + 8))(v7, v9);

  v13 = *(v0 + 8);

  return v13(v12, v6);
}

uint64_t sub_100008818()
{
  (*(v0[10] + 104))(v0[11], enum case for Server.PreflightStatus.indeterminate(_:), v0[9]);
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = Server.PreflightStatus.rawValue.getter();
  (*(v4 + 8))(v2, v3);

  v7 = v0[1];

  return v7(v6, 0);
}

uint64_t sub_1000088F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000067A4(v6, qword_100020A50);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "confirmSelection()", v9, 2u);
  }

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  sub_100013E84(&qword_100020B60, v12, type metadata accessor for ListenerActor);

  NonReentrantTaskExecutable.task(_:)();
}

uint64_t sub_100008AE4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_100008B08, 0, 0);
}

uint64_t sub_100008B08()
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000067A4(v1, qword_100020A50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "send()", v4, 2u);
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  v8 = swift_allocObject();
  v0[7] = v8;
  swift_weakInit();
  v9 = swift_task_alloc();
  v0[8] = v9;
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = v6;
  v10 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = sub_10000507C(&qword_100020B70, &qword_100017818);
  *v11 = v0;
  v11[1] = sub_100008CF8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x74616428646E6573, 0xEB00000000293A61, sub_100011D7C, v9, v12);
}

uint64_t sub_100008CF8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_100008E2C, 0, 0);
}

uint64_t sub_100008E44(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000067A4(v6, qword_100020A50);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "sendNotification()", v9, 2u);
  }

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;

  sub_100011D28(a1, a2);
  sub_100013E84(&qword_100020B60, v12, type metadata accessor for ListenerActor);
  NonReentrantTaskExecutable.task(_:)();
}

uint64_t sub_100009050()
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000067A4(v1, qword_100020A50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchAppContentList()", v4, 2u);
  }

  v5 = v0[3];

  v6 = swift_allocObject();
  v0[4] = v6;
  swift_weakInit();
  v7 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  v0[5] = v8;
  v9 = sub_10000507C(&qword_100020B50, &qword_1000177E0);
  *v8 = v0;
  v8[1] = sub_100009220;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000015, 0x8000000100016E40, sub_100011B00, v6, v9);
}

uint64_t sub_100009220()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100009338, 0, 0);
}

void *sub_100009350(uint64_t a1)
{
  v33 = type metadata accessor for Selection();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v33);
  v32 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v26[1] = v1;
    v37 = _swiftEmptyArrayStorage;
    sub_100013908(0, v6, 0);
    v8 = -1 << *(a1 + 32);
    v35 = a1 + 56;
    v36 = v37;
    result = _HashTable.startBucket.getter();
    v9 = result;
    v10 = 0;
    v30 = v3 + 8;
    v31 = v3 + 16;
    v27 = a1 + 64;
    v28 = v6;
    v29 = v3;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v35 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v34 = *(a1 + 36);
      v13 = v32;
      v14 = v33;
      (*(v3 + 16))(v32, *(a1 + 48) + *(v3 + 72) * v9, v33);
      v15 = Selection.rawValue.getter();
      result = (*(v3 + 8))(v13, v14);
      v16 = v36;
      v37 = v36;
      v18 = v36[2];
      v17 = v36[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_100013908((v17 > 1), v18 + 1, 1);
        v16 = v37;
      }

      v16[2] = v18 + 1;
      *(v16 + v18 + 32) = v15;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v19 = *(v35 + 8 * v12);
      if ((v19 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v36 = v16;
      if (v34 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v9 & 0x3F));
      if (v20)
      {
        v11 = __clz(__rbit64(v20)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v12 << 6;
        v22 = v12 + 1;
        v23 = (v27 + 8 * v12);
        v3 = v29;
        while (v22 < (v11 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1000140E0(v9, v34, 0);
            v11 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_1000140E0(v9, v34, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v28)
      {
        return v36;
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

uint64_t sub_100009650(uint64_t a1)
{
  v3 = sub_10000507C(&qword_100020BB0, &qword_1000178D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for Selection();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v44 = v11;
  v39 = v1;
  v51 = _swiftEmptyArrayStorage;
  sub_100013928(0, v12, 0);
  v13 = v51;
  v14 = -1 << *(a1 + 32);
  v50 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v16 = result;
  v17 = 0;
  v45 = v8;
  v46 = (v8 + 48);
  v42 = v6;
  v43 = (v8 + 32);
  v40 = a1 + 64;
  v41 = v12;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    v21 = v16 >> 6;
    if ((*(v50 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_23;
    }

    v22 = *(a1 + 36);
    v47 = v17;
    v48 = v22;
    v23 = *(*(a1 + 48) + v16);
    Selection.init(rawValue:)();
    result = (*v46)(v6, 1, v7);
    if (result == 1)
    {
      goto LABEL_27;
    }

    v24 = v44;
    v49 = *v43;
    v49(v44, v6, v7);
    v51 = v13;
    v26 = v13[2];
    v25 = v13[3];
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v38 = v26 + 1;
      sub_100013928(v25 > 1, v26 + 1, 1);
      v27 = v38;
      v13 = v51;
    }

    v13[2] = v27;
    v28 = v24;
    v29 = v7;
    result = (v49)(v13 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v26, v28, v7);
    v18 = 1 << *(a1 + 32);
    if (v16 >= v18)
    {
      goto LABEL_24;
    }

    v30 = *(v50 + 8 * v21);
    if ((v30 & (1 << v16)) == 0)
    {
      goto LABEL_25;
    }

    if (v48 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v31 = v30 & (-2 << (v16 & 0x3F));
    if (v31)
    {
      v18 = __clz(__rbit64(v31)) | v16 & 0x7FFFFFFFFFFFFFC0;
      v19 = v41;
      v20 = v47;
    }

    else
    {
      v32 = v21 << 6;
      v33 = v21 + 1;
      v19 = v41;
      v34 = (v40 + 8 * v21);
      while (v33 < (v18 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_1000140E0(v16, v48, 0);
          v18 = __clz(__rbit64(v35)) + v32;
          goto LABEL_20;
        }
      }

      result = sub_1000140E0(v16, v48, 0);
LABEL_20:
      v20 = v47;
    }

    v17 = v20 + 1;
    v16 = v18;
    v6 = v42;
    v7 = v29;
    if (v17 == v19)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000099E8()
{
  v0 = type metadata accessor for Logger();
  sub_1000067DC(v0, qword_100020A50);
  sub_1000067A4(v0, qword_100020A50);
  return static Log.loggerForFile(flair:sourceFile:)();
}

void *sub_100009A4C()
{
  v1 = v0;
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000067A4(v2, qword_100020A50);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit", v5, 2u);
  }

  v6 = v1[2];
  swift_unknownObjectRelease();
  v7 = v1[3];
  swift_unknownObjectRelease();
  v8 = v1[5];

  v9 = v1[7];

  v10 = v1[8];

  v11 = v1[9];

  v12 = v1[10];

  return v1;
}

uint64_t sub_100009B64()
{
  sub_100009A4C();

  return _swift_deallocClassInstance(v0, 89, 7);
}

char *sub_100009BBC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000507C(&qword_100020B48, &qword_1000177A8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100009BEC(uint64_t a1)
{
  v1[21] = a1;
  v2 = *(*(sub_10000507C(&qword_100020B90, &qword_100017870) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for XPCDaemonRole();
  v1[23] = v3;
  v4 = *(v3 - 8);
  v1[24] = v4;
  v5 = *(v4 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v6 = sub_10000507C(&qword_100020B98, &qword_100017878);
  v1[27] = v6;
  v7 = *(v6 - 8);
  v1[28] = v7;
  v8 = *(v7 + 64) + 15;
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_100009D58, 0, 0);
}

uint64_t sub_100009D58()
{
  v1 = v0[21];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[30] = Strong;
  if (Strong)
  {
    v4 = v0[28];
    v3 = v0[29];
    v5 = v0[27];
    v6 = *(Strong + 16);
    v0[31] = v6;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_100009F94;
    swift_continuation_init();
    v0[17] = v5;
    v7 = sub_100012124(v0 + 14);
    swift_unknownObjectRetain();
    CheckedContinuation.init(continuation:function:)();
    (*(v4 + 32))(v7, v3, v5);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000A5AC;
    v0[13] = &unk_10001D190;
    [v6 roleWithCompletionHandler:v0 + 10];
    (*(v4 + 8))(v7, v5);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v8 = v0[29];
    v9 = v0[25];
    v10 = v0[26];
    v11 = v0[22];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100009F94()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10000A074, 0, 0);
}

uint64_t sub_10000A074()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 272);
  swift_unknownObjectRelease();
  XPCDaemonRole.init(rawValue:)();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = *(v0 + 240);
    v7 = *(v0 + 176);

    sub_1000121A0(v7);
LABEL_3:
    v8 = *(v0 + 232);
    v9 = *(v0 + 200);
    v10 = *(v0 + 208);
    v11 = *(v0 + 176);

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  v16 = *(v0 + 184);
  v17 = *(v0 + 192);
  (*(v17 + 32))(v15, *(v0 + 176), v16);
  (*(v17 + 16))(v14, v15, v16);
  v18 = (*(v17 + 88))(v14, v16);
  if (v18 == enum case for XPCDaemonRole.server(_:))
  {
    v19 = swift_task_alloc();
    *(v0 + 256) = v19;
    *v19 = v0;
    v19[1] = sub_10000A304;
    v20 = *(v0 + 240);

    return sub_10000A608();
  }

  else
  {
    if (v18 != enum case for XPCDaemonRole.client(_:))
    {
      v23 = *(v0 + 240);
      v24 = *(v0 + 200);
      v25 = *(v0 + 184);
      v26 = *(*(v0 + 192) + 8);
      v26(*(v0 + 208), v25);

      v26(v24, v25);
      goto LABEL_3;
    }

    v21 = swift_task_alloc();
    *(v0 + 264) = v21;
    *v21 = v0;
    v21[1] = sub_10000A4B0;
    v22 = *(v0 + 240);

    return sub_10000AD24();
  }
}

uint64_t sub_10000A304()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return _swift_task_switch(sub_10000A400, 0, 0);
}

uint64_t sub_10000A400()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];

  (*(v4 + 8))(v2, v3);
  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[22];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10000A4B0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_10001450C, 0, 0);
}

uint64_t sub_10000A5AC(uint64_t a1)
{
  sub_100012208((a1 + 32), *(a1 + 56));
  sub_10000507C(&qword_100020B98, &qword_100017878);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10000A608()
{
  v1[5] = v0;
  v2 = type metadata accessor for XPCScheme();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for Scheme();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for APIActor();
  v1[13] = static APIActor.shared.getter();
  v1[14] = static APIActor.shared.getter();
  v1[15] = sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v9;
  v1[17] = v8;

  return _swift_task_switch(sub_10000A7A0, v9, v8);
}

uint64_t sub_10000A7A0()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[18] = v2;
  if (v2)
  {

    dispatch thunk of Server.stateUpdateHandler.setter();
    v3 = *(&async function pointer to dispatch thunk of Server.shutdown() + 1);
    v12 = (&async function pointer to dispatch thunk of Server.shutdown() + async function pointer to dispatch thunk of Server.shutdown());
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_10000A8CC;

    return v12();
  }

  else
  {
    v6 = v0[14];

    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[13];
    v11 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000AA74, v11, v10);
  }
}

uint64_t sub_10000A8CC()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return _swift_task_switch(sub_10000A9EC, v4, v3);
}

uint64_t sub_10000A9EC()
{
  v1 = v0[18];
  v2 = v0[14];

  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000AA74, v7, v6);
}

uint64_t sub_10000AA74()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];

  v9 = *(v8 + 32);
  (*(v7 + 104))(v4, enum case for XPCScheme.migration(_:), v6);
  v10 = XPCScheme.rawValue.getter();
  (*(v7 + 8))(v4, v6);
  v11 = &enum case for Scheme.migration(_:);
  if (v9 != v10)
  {
    v11 = &enum case for Scheme.esim(_:);
  }

  (*(v3 + 104))(v2, *v11, v5);
  v12 = type metadata accessor for Server();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = Server.init(scheme:)();
  v16 = *(v8 + 64);
  *(v8 + 64) = v15;

  if (*(v8 + 64))
  {
    v17 = v0[5];
    swift_allocObject();
    swift_weakInit();

    dispatch thunk of Server.stateUpdateHandler.setter();

    if (*(v17 + 64))
    {
      v18 = v0[5];
      swift_allocObject();
      swift_weakInit();

      dispatch thunk of Server.shutdownHandler.setter();

      if (*(v18 + 64))
      {
        v19 = v0[5];
        v20 = *(v19 + 16);
        v21 = type metadata accessor for XPCCrossPlatformCellularPlanServerMiddleware();
        v22 = *(v21 + 48);
        v23 = *(v21 + 52);
        swift_allocObject();

        swift_unknownObjectRetain();
        XPCCrossPlatformCellularPlanServerMiddleware.init(client:)();
        dispatch thunk of Server.middleware.setter();

        if (*(v19 + 64))
        {
          v24 = *(v19 + 64);

          dispatch thunk of Server.run()();
        }
      }
    }
  }

  v25 = v0[11];
  v26 = v0[8];

  v27 = v0[1];

  return v27();
}

uint64_t sub_10000AD24()
{
  v1[5] = v0;
  v2 = type metadata accessor for XPCScheme();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for Scheme();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for APIActor();
  v1[13] = static APIActor.shared.getter();
  v1[14] = static APIActor.shared.getter();
  v1[15] = sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v9;
  v1[17] = v8;

  return _swift_task_switch(sub_10000AEBC, v9, v8);
}

uint64_t sub_10000AEBC()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 72);
  v0[18] = v2;
  if (v2)
  {

    dispatch thunk of Client.stateUpdateHandler.setter();
    v3 = *(&async function pointer to dispatch thunk of Client.shutdown() + 1);
    v12 = (&async function pointer to dispatch thunk of Client.shutdown() + async function pointer to dispatch thunk of Client.shutdown());
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_10000AFE8;

    return v12();
  }

  else
  {
    v6 = v0[14];

    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[13];
    v11 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000B190, v11, v10);
  }
}

uint64_t sub_10000AFE8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return _swift_task_switch(sub_10000B108, v4, v3);
}

uint64_t sub_10000B108()
{
  v1 = v0[18];
  v2 = v0[14];

  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000B190, v7, v6);
}

uint64_t sub_10000B190()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];

  v9 = *(v8 + 32);
  (*(v7 + 104))(v4, enum case for XPCScheme.migration(_:), v6);
  v10 = XPCScheme.rawValue.getter();
  (*(v7 + 8))(v4, v6);
  v11 = &enum case for Scheme.migration(_:);
  if (v9 != v10)
  {
    v11 = &enum case for Scheme.esim(_:);
  }

  (*(v3 + 104))(v2, *v11, v5);
  v12 = type metadata accessor for Client();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = Client.init(scheme:)();
  v16 = *(v8 + 72);
  *(v8 + 72) = v15;

  if (*(v8 + 72))
  {
    v17 = v0[5];
    swift_allocObject();
    swift_weakInit();

    dispatch thunk of Client.stateUpdateHandler.setter();

    if (*(v17 + 72))
    {
      v18 = v0[5];
      swift_allocObject();
      swift_weakInit();

      dispatch thunk of Client.shutdownHandler.setter();

      if (*(v18 + 72))
      {
        v19 = v0[5];
        v20 = *(v19 + 16);
        v21 = type metadata accessor for XPCCrossPlatformCellularPlanClientMiddleware();
        v22 = *(v21 + 48);
        v23 = *(v21 + 52);
        swift_allocObject();

        swift_unknownObjectRetain();
        XPCCrossPlatformCellularPlanClientMiddleware.init(client:)();
        dispatch thunk of Client.middleware.setter();

        if (*(v19 + 72))
        {
          v24 = *(v19 + 72);

          dispatch thunk of Client.run()();
        }
      }
    }
  }

  v25 = v0[11];
  v26 = v0[8];

  v27 = v0[1];

  return v27();
}

uint64_t sub_10000B460()
{
  v1 = v0[17];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 88) = 0;
  }

  v3 = v0[17];
  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  v0[18] = v4;
  if (v4)
  {
    type metadata accessor for APIActor();
    v0[19] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v0[20] = v5;
    v0[21] = v6;
    v8 = sub_10000B650;
LABEL_7:

    return _swift_task_switch(v8, v5, v7);
  }

  v9 = v0[17];
  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  v0[24] = v10;
  if (v10)
  {
    type metadata accessor for APIActor();
    v0[25] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v11;
    v0[26] = v5;
    v0[27] = v11;
    v8 = sub_10000BA2C;
    goto LABEL_7;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10000B650()
{
  v1 = v0[18];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[22] = v2;
  if (v2)
  {

    dispatch thunk of Server.stateUpdateHandler.setter();
    v3 = *(&async function pointer to dispatch thunk of Server.cancel() + 1);
    v8 = (&async function pointer to dispatch thunk of Server.cancel() + async function pointer to dispatch thunk of Server.cancel());
    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    v4[1] = sub_10000B770;

    return v8();
  }

  else
  {
    v6 = v0[18];
    v7 = v0[19];

    return _swift_task_switch(sub_10000B90C, 0, 0);
  }
}

uint64_t sub_10000B770()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return _swift_task_switch(sub_10000B890, v4, v3);
}

uint64_t sub_10000B890()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];

  return _swift_task_switch(sub_10000B90C, 0, 0);
}

uint64_t sub_10000B90C()
{
  v1 = v0[17];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    type metadata accessor for APIActor();
    v0[25] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[26] = v4;
    v0[27] = v3;

    return _swift_task_switch(sub_10000BA2C, v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10000BA2C()
{
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 72);
  v0[28] = v2;
  if (v2)
  {

    dispatch thunk of Client.stateUpdateHandler.setter();
    v3 = *(&async function pointer to dispatch thunk of Client.cancel() + 1);
    v9 = (&async function pointer to dispatch thunk of Client.cancel() + async function pointer to dispatch thunk of Client.cancel());
    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_10000BB44;

    return v9();
  }

  else
  {
    v6 = v0[24];
    v7 = v0[25];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10000BB44()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v6 = *v0;

  v3 = *(v1 + 216);
  v4 = *(v1 + 208);

  return _swift_task_switch(sub_10000BC64, v4, v3);
}

uint64_t sub_10000BC64()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000BCF8()
{
  v1 = v0[17];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 88) = 0;
  }

  v3 = v0[17];
  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  v0[18] = v4;
  if (v4)
  {
    type metadata accessor for APIActor();
    v0[19] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v0[20] = v5;
    v0[21] = v6;
    v8 = sub_10000BEE8;
LABEL_7:

    return _swift_task_switch(v8, v5, v7);
  }

  v9 = v0[17];
  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  v0[24] = v10;
  if (v10)
  {
    type metadata accessor for APIActor();
    v0[25] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v11;
    v0[26] = v5;
    v0[27] = v11;
    v8 = sub_10000C2C4;
    goto LABEL_7;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10000BEE8()
{
  v1 = v0[18];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[22] = v2;
  if (v2)
  {

    dispatch thunk of Server.stateUpdateHandler.setter();
    v3 = *(&async function pointer to dispatch thunk of Server.shutdown() + 1);
    v8 = (&async function pointer to dispatch thunk of Server.shutdown() + async function pointer to dispatch thunk of Server.shutdown());
    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    v4[1] = sub_10000C008;

    return v8();
  }

  else
  {
    v6 = v0[18];
    v7 = v0[19];

    return _swift_task_switch(sub_10000C1A4, 0, 0);
  }
}

uint64_t sub_10000C008()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return _swift_task_switch(sub_10000C128, v4, v3);
}

uint64_t sub_10000C128()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];

  return _swift_task_switch(sub_10000C1A4, 0, 0);
}

uint64_t sub_10000C1A4()
{
  v1 = v0[17];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    type metadata accessor for APIActor();
    v0[25] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[26] = v4;
    v0[27] = v3;

    return _swift_task_switch(sub_10000C2C4, v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10000C2C4()
{
  v1 = v0[24];
  swift_beginAccess();
  v2 = *(v1 + 72);
  v0[28] = v2;
  if (v2)
  {

    dispatch thunk of Client.stateUpdateHandler.setter();
    v3 = *(&async function pointer to dispatch thunk of Client.shutdown() + 1);
    v9 = (&async function pointer to dispatch thunk of Client.shutdown() + async function pointer to dispatch thunk of Client.shutdown());
    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_10000C3DC;

    return v9();
  }

  else
  {
    v6 = v0[24];
    v7 = v0[25];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10000C3DC()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v6 = *v0;

  v3 = *(v1 + 216);
  v4 = *(v1 + 208);

  return _swift_task_switch(sub_100014520, v4, v3);
}

uint64_t sub_10000C4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return _swift_task_switch(sub_10000C520, 0, 0);
}

uint64_t sub_10000C520()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    type metadata accessor for APIActor();
    v0[12] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000C640, v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10000C640()
{
  v2 = v0[11];
  v1 = v0[12];

  swift_beginAccess();
  v3 = *(v2 + 64);
  v0[13] = v3;
  if (v3)
  {

    v4 = sub_10000C6E4;
  }

  else
  {
    v4 = sub_100014524;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000C6E4()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = *(&async function pointer to dispatch thunk of Server.connect(code:) + 1);
  v8 = (&async function pointer to dispatch thunk of Server.connect(code:) + async function pointer to dispatch thunk of Server.connect(code:));
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_10001451C;
  v6 = v0[9];
  v5 = v0[10];

  return v8(v6, v5);
}

uint64_t sub_10000C798(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return _swift_task_switch(sub_10000C7B8, 0, 0);
}

uint64_t sub_10000C7B8()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    type metadata accessor for APIActor();
    v0[12] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000C904, v4, v3);
  }

  else
  {
    v5 = v0[10];
    v0[8] = 0;
    sub_10000507C(&qword_100020BF8, &qword_100017918);
    CheckedContinuation.resume(returning:)();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10000C904()
{
  v2 = v0[11];
  v1 = v0[12];

  swift_beginAccess();
  v3 = *(v2 + 64);
  v0[13] = v3;
  if (v3)
  {

    v4 = sub_10000CA34;
  }

  else
  {
    v4 = sub_10000C9A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000C9A8()
{
  v1 = v0[11];

  v2 = v0[10];
  v0[8] = 0;
  sub_10000507C(&qword_100020BF8, &qword_100017918);
  CheckedContinuation.resume(returning:)();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10000CA34()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = *(&async function pointer to dispatch thunk of Server.supportedSelections.getter + 1);
  v6 = (&async function pointer to dispatch thunk of Server.supportedSelections.getter + async function pointer to dispatch thunk of Server.supportedSelections.getter);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_10000CAE0;

  return v6();
}

uint64_t sub_10000CAE0(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_10000CC00, 0, 0);
}

uint64_t sub_10000CC00()
{
  v1 = v0[10];
  v0[8] = v0[15];
  sub_10000507C(&qword_100020BF8, &qword_100017918);
  CheckedContinuation.resume(returning:)();
  v2 = v0[1];

  return v2();
}

void sub_10000CC88(const char *a1)
{
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000067A4(v2, qword_100020A50);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_10000CD78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000507C(a3, a4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v6 + 16))(v9, a1, v5);
    v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    (*(v6 + 32))(v13 + v12, v9, v5);
    type metadata accessor for ListenerActor();
    sub_100013E84(&qword_100020B60, v14, type metadata accessor for ListenerActor);

    NonReentrantTaskExecutable.task(_:)();
  }

  return result;
}

uint64_t sub_10000CF8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return _swift_task_switch(sub_10000CFAC, 0, 0);
}

uint64_t sub_10000CFAC()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[12] = type metadata accessor for APIActor();
    v0[13] = static APIActor.shared.getter();
    v0[14] = sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000D100, v4, v3);
  }

  else
  {
    v5 = v0[10];
    v0[8] = 0;
    sub_10000507C(&qword_100020BF8, &qword_100017918);
    CheckedContinuation.resume(returning:)();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10000D100()
{
  v1 = v0[13];
  v2 = v0[11];

  swift_beginAccess();
  v3 = *(v2 + 64);
  v0[15] = v3;
  if (v3)
  {

    v4 = sub_10000D1A8;
  }

  else
  {
    v4 = sub_100014508;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000D1A8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];

  v0[16] = static APIActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000D240, v5, v4);
}

uint64_t sub_10000D240()
{
  v2 = v0[15];
  v1 = v0[16];

  v0[17] = dispatch thunk of Server.peerSupportedSelections.getter();

  return _swift_task_switch(sub_10000D2B8, 0, 0);
}

uint64_t sub_10000D2B8()
{
  v1 = v0[10];
  v0[8] = v0[17];
  sub_10000507C(&qword_100020BF8, &qword_100017918);
  CheckedContinuation.resume(returning:)();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10000D340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_10000D364, 0, 0);
}

uint64_t sub_10000D364()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_10000D454;
    v5 = v0[6];
    v4 = v0[7];

    return sub_10000D564(v5, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10000D454()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10000D564(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(sub_10000507C(&qword_100020BB0, &qword_1000178D8) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Selection();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  type metadata accessor for APIActor();
  v3[13] = static APIActor.shared.getter();
  sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[14] = v9;
  v3[15] = v8;

  return _swift_task_switch(sub_10000D6C8, v9, v8);
}

uint64_t sub_10000D6C8()
{
  *(v0 + 40) = &_swiftEmptySetSingleton;
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(v0 + 48) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = (v1 + 48);
  v11 = (v1 + 8);
  v32 = *(v0 + 48);

  v13 = 0;
  if (v8)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v16 = *(v0 + 72);
      v15 = *(v0 + 80);
      v17 = *(*(v32 + 48) + (__clz(__rbit64(v8)) | (v14 << 6)));
      Selection.init(rawValue:)();
      result = (*v10)(v16, 1, v15);
      if (result == 1)
      {
        break;
      }

      v18 = *(v0 + 96);
      v19 = *(v0 + 80);
      v8 &= v8 - 1;
      sub_100012434(v18, *(v0 + 72));
      result = (*v11)(v18, v19);
      v13 = v14;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_19:
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v14 >= v9)
      {
        break;
      }

      v8 = *(v4 + 8 * v14);
      ++v13;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v0 + 64);
    v21 = *(v0 + 48);

    swift_beginAccess();
    v22 = *(v20 + 64);
    *(v0 + 128) = v22;
    if (v22)
    {
      v23 = *(v0 + 40);
      *(v0 + 136) = v23;
      v24 = *(&async function pointer to dispatch thunk of Server.confirmSelection(selections:disabledBundleIDs:) + 1);
      v33 = (&async function pointer to dispatch thunk of Server.confirmSelection(selections:disabledBundleIDs:) + async function pointer to dispatch thunk of Server.confirmSelection(selections:disabledBundleIDs:));

      v25 = swift_task_alloc();
      *(v0 + 144) = v25;
      *v25 = v0;
      v25[1] = sub_10000D954;
      v26 = *(v0 + 56);

      return v33(v23, v26);
    }

    else
    {
      v27 = *(v0 + 104);
      v28 = *(v0 + 40);

      v29 = *(v0 + 96);
      v30 = *(v0 + 72);

      v31 = *(v0 + 8);

      return v31();
    }
  }

  return result;
}

uint64_t sub_10000D954()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v8 = *v0;

  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return _swift_task_switch(sub_10000DAB4, v6, v5);
}

uint64_t sub_10000DAB4()
{
  v1 = v0[13];

  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000DB28(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  v3 = *(*(sub_10000507C(&qword_100020B90, &qword_100017870) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for XPCDaemonRole();
  v2[27] = v4;
  v5 = *(v4 - 8);
  v2[28] = v5;
  v6 = *(v5 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v7 = sub_10000507C(&qword_100020B98, &qword_100017878);
  v2[31] = v7;
  v8 = *(v7 - 8);
  v2[32] = v8;
  v9 = *(v8 + 64) + 15;
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10000DC94, 0, 0);
}

uint64_t sub_10000DC94()
{
  v1 = v0[24];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 40);
    v0[35] = v3;

    return _swift_task_switch(sub_10000DD84, v3, 0);
  }

  else
  {
    v4 = v0[33];
    v5 = v0[29];
    v6 = v0[30];
    v7 = v0[26];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10000DD84()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 200);
  swift_beginAccess();
  sub_100011890(v2);
  swift_endAccess();

  return _swift_task_switch(sub_10000DE14, 0, 0);
}

uint64_t sub_10000DE14()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 39;
  v7 = v0[33];
  v6 = v0[34];
  v10 = v0 + 31;
  v8 = v0[31];
  v9 = v10[1];
  v11 = *(v6 + 16);
  v1[36] = v11;
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_10000DFC4;
  swift_continuation_init();
  v1[17] = v8;
  v12 = sub_100012124(v1 + 14);
  swift_unknownObjectRetain();
  CheckedContinuation.init(continuation:function:)();
  (*(v9 + 32))(v12, v7, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10000A5AC;
  v1[13] = &unk_10001D168;
  [v11 roleWithCompletionHandler:v4];
  (*(v9 + 8))(v12, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_10000DFC4()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10000E0A4, 0, 0);
}

uint64_t sub_10000E0A4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 312);
  swift_unknownObjectRelease();
  XPCDaemonRole.init(rawValue:)();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = *(v0 + 272);
    v7 = *(v0 + 208);

    sub_1000121A0(v7);
LABEL_3:
    v8 = *(v0 + 264);
    v9 = *(v0 + 232);
    v10 = *(v0 + 240);
    v11 = *(v0 + 208);

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 232);
  v15 = *(v0 + 240);
  v16 = *(v0 + 216);
  v17 = *(v0 + 224);
  (*(v17 + 32))(v15, *(v0 + 208), v16);
  (*(v17 + 16))(v14, v15, v16);
  v18 = (*(v17 + 88))(v14, v16);
  if (v18 == enum case for XPCDaemonRole.server(_:))
  {
    v19 = swift_task_alloc();
    *(v0 + 296) = v19;
    *v19 = v0;
    v19[1] = sub_10000E344;
    v20 = *(v0 + 272);
    v21 = *(v0 + 200);

    return sub_10000E5EC(v21);
  }

  else
  {
    if (v18 != enum case for XPCDaemonRole.client(_:))
    {
      v25 = *(v0 + 272);
      v26 = *(v0 + 232);
      v27 = *(v0 + 216);
      v28 = *(*(v0 + 224) + 8);
      v28(*(v0 + 240), v27);

      v28(v26, v27);
      goto LABEL_3;
    }

    v22 = swift_task_alloc();
    *(v0 + 304) = v22;
    *v22 = v0;
    v22[1] = sub_10000E4F0;
    v23 = *(v0 + 272);
    v24 = *(v0 + 200);

    return sub_10000E870(v24);
  }
}

uint64_t sub_10000E344()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return _swift_task_switch(sub_10000E440, 0, 0);
}

uint64_t sub_10000E440()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];

  (*(v4 + 8))(v2, v3);
  v5 = v0[33];
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[26];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10000E4F0()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return _swift_task_switch(sub_100014510, 0, 0);
}

uint64_t sub_10000E5EC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for XPCDaemonState();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  type metadata accessor for APIActor();
  v2[10] = static APIActor.shared.getter();
  sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000E714, v7, v6);
}

uint64_t sub_10000E714()
{
  v1 = v0[10];
  v2 = v0[6];

  swift_beginAccess();
  if (*(v2 + 64))
  {
    v3 = v0[5];
    v4 = type metadata accessor for XPCCrossPlatformCellularPlanServerMiddleware();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();

    swift_unknownObjectRetain();
    XPCCrossPlatformCellularPlanServerMiddleware.init(client:)();
    dispatch thunk of Server.middleware.setter();
  }

  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];
  v10 = v0[5];
  (*(v8 + 104))(v7, enum case for XPCDaemonState.secured(_:), v9);
  v11 = XPCDaemonState.rawValue.getter();
  (*(v8 + 8))(v7, v9);
  [v10 didUpdateStateWithState:v11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10000E870(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for XPCDaemonState();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  type metadata accessor for APIActor();
  v2[10] = static APIActor.shared.getter();
  sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000E998, v7, v6);
}

uint64_t sub_10000E998()
{
  v1 = v0[10];
  v2 = v0[6];

  swift_beginAccess();
  if (*(v2 + 72))
  {
    v3 = v0[5];
    v4 = type metadata accessor for XPCCrossPlatformCellularPlanClientMiddleware();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();

    swift_unknownObjectRetain();
    XPCCrossPlatformCellularPlanClientMiddleware.init(client:)();
    dispatch thunk of Client.middleware.setter();
  }

  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];
  v10 = v0[5];
  (*(v8 + 104))(v7, enum case for XPCDaemonState.secured(_:), v9);
  v11 = XPCDaemonState.rawValue.getter();
  (*(v8 + 8))(v7, v9);
  [v10 didUpdateStateWithState:v11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10000EB14()
{
  v1 = v0[14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 40);
    v0[16] = v3;

    return _swift_task_switch(sub_10000EBE0, v3, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10000EBE0()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  *(v0 + 136) = *(v1 + 112);

  return _swift_task_switch(sub_10000EC6C, 0, 0);
}

uint64_t sub_10000EC6C()
{
  v1 = v0[15];
  if (v0[17])
  {

    v2 = *(v1 + 40);
    v0[18] = v2;

    return _swift_task_switch(sub_10000ED18, v2, 0);
  }

  else
  {
    v3 = v0[15];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10000ED18()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  sub_1000119FC();
  swift_endAccess();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10000EDD4, 0, 0);
}

uint64_t sub_10000EDD4()
{
  v0[19] = type metadata accessor for APIActor();
  v0[20] = static APIActor.shared.getter();
  v0[21] = sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000EEA4, v2, v1);
}

uint64_t sub_10000EEA4()
{
  v1 = v0[20];
  v2 = v0[15];

  swift_beginAccess();
  if (*(v2 + 64))
  {

    dispatch thunk of Server.middleware.setter();
  }

  v3 = v0[21];
  v4 = v0[19];
  v0[22] = static APIActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000EF84, v6, v5);
}

uint64_t sub_10000EF84()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);

  swift_beginAccess();
  if (*(v2 + 72))
  {

    dispatch thunk of Client.middleware.setter();
  }

  return _swift_task_switch(sub_10000F030, 0, 0);
}

uint64_t sub_10000F030()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000F090(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_10000507C(&qword_100020B78, &qword_100017820);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17[-v10];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v8 + 16))(v11, a1, v7);
    v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = v13;
    *(v15 + 3) = a3;
    *(v15 + 4) = a4;
    (*(v8 + 32))(&v15[v14], v11, v7);

    sub_100011D28(a3, a4);
    type metadata accessor for ListenerActor();
    sub_100013E84(&qword_100020B60, v16, type metadata accessor for ListenerActor);
    NonReentrantTaskExecutable.task(_:)();
  }

  return result;
}

uint64_t sub_10000F2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return _swift_task_switch(sub_10000F2F0, 0, 0);
}

uint64_t sub_10000F2F0()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    type metadata accessor for APIActor();
    *(v0 + 120) = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000F444, v4, v3);
  }

  else
  {
    v5 = *(v0 + 104);
    *(v0 + 64) = xmmword_100017730;
    sub_10000507C(&qword_100020B78, &qword_100017820);
    CheckedContinuation.resume(returning:)();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10000F444()
{
  v2 = v0[14];
  v1 = v0[15];

  swift_beginAccess();
  v3 = *(v2 + 72);
  v0[16] = v3;
  if (v3)
  {

    v4 = sub_10000F57C;
  }

  else
  {
    v4 = sub_10000F4E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000F4E8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 104);
  *(v0 + 64) = xmmword_100017730;
  sub_10000507C(&qword_100020B78, &qword_100017820);
  CheckedContinuation.resume(returning:)();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000F57C()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = *(&async function pointer to dispatch thunk of Client.send(data:) + 1);
  v8 = (&async function pointer to dispatch thunk of Client.send(data:) + async function pointer to dispatch thunk of Client.send(data:));
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_10000F630;
  v6 = v0[11];
  v5 = v0[12];

  return v8(v6, v5);
}

uint64_t sub_10000F630(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;

  return _swift_task_switch(sub_10000F750, 0, 0);
}

uint64_t sub_10000F750()
{
  v1 = *(v0 + 104);
  *(v0 + 64) = *(v0 + 144);
  sub_10000507C(&qword_100020B78, &qword_100017820);
  CheckedContinuation.resume(returning:)();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000F7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return _swift_task_switch(sub_10000F7FC, 0, 0);
}

uint64_t sub_10000F7FC()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    type metadata accessor for APIActor();
    v0[12] = static APIActor.shared.getter();
    sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000F91C, v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10000F91C()
{
  v2 = v0[11];
  v1 = v0[12];

  swift_beginAccess();
  v3 = *(v2 + 64);
  v0[13] = v3;
  if (v3)
  {

    v4 = sub_10000FA20;
  }

  else
  {
    v4 = sub_10000F9C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000F9C0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000FA20()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = *(&async function pointer to dispatch thunk of Server.sendNotification(data:) + 1);
  v8 = (&async function pointer to dispatch thunk of Server.sendNotification(data:) + async function pointer to dispatch thunk of Server.sendNotification(data:));
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_10000FAD4;
  v6 = v0[9];
  v5 = v0[10];

  return v8(v6, v5);
}

uint64_t sub_10000FAD4()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10000FBE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(sub_10000FC04, 0, 0);
}

uint64_t sub_10000FC04()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v0[13] = type metadata accessor for APIActor();
    v0[14] = static APIActor.shared.getter();
    v0[15] = sub_100013E84(&qword_100020B68, 255, &type metadata accessor for APIActor);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000FD58, v4, v3);
  }

  else
  {
    v5 = v0[11];
    v0[8] = 0;
    sub_10000507C(&qword_100020B58, &qword_1000177E8);
    CheckedContinuation.resume(returning:)();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10000FD58()
{
  v1 = v0[14];
  v2 = v0[12];

  swift_beginAccess();
  v3 = *(v2 + 64);
  v0[16] = v3;
  if (v3)
  {

    v4 = sub_10000FE8C;
  }

  else
  {
    v4 = sub_10000FE00;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000FE00()
{
  v1 = v0[12];

  v2 = v0[11];
  v0[8] = 0;
  sub_10000507C(&qword_100020B58, &qword_1000177E8);
  CheckedContinuation.resume(returning:)();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10000FE8C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];

  v0[17] = static APIActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000FF24, v5, v4);
}

uint64_t sub_10000FF24()
{
  v2 = v0[16];
  v1 = v0[17];

  v0[18] = dispatch thunk of Server.appPropertiesController.getter();

  return _swift_task_switch(sub_10000FF9C, 0, 0);
}

uint64_t sub_10000FF9C()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = async function pointer to static AppContentCellItem.fetchAllItems(appPropertiesController:)[1];
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_100010094;

    return static AppContentCellItem.fetchAllItems(appPropertiesController:)(v1);
  }

  else
  {
    v4 = v0[11];
    v0[8] = 0;
    sub_10000507C(&qword_100020B58, &qword_1000177E8);
    CheckedContinuation.resume(returning:)();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100010094(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_10001025C;
  }

  else
  {
    *(v4 + 160) = a1;
    v7 = sub_1000101C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000101C0()
{
  v1 = v0[18];
  v2 = v0[11];
  v0[9] = v0[20];
  sub_10000507C(&qword_100020B58, &qword_1000177E8);
  CheckedContinuation.resume(returning:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001025C()
{
  v1 = v0[18];
  v2 = v0[11];
  v0[9] = 0;
  sub_10000507C(&qword_100020B58, &qword_1000177E8);
  CheckedContinuation.resume(returning:)();

  v3 = v0[1];

  return v3();
}

id sub_1000102F4(uint64_t a1)
{
  v75 = a1;
  v1 = type metadata accessor for Reason();
  v65 = *(v1 - 8);
  v66 = v1;
  v2 = *(v65 + 64);
  __chkstk_darwin(v1);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MigratorContext.Result();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  __chkstk_darwin(v4);
  v67 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MigratorContext();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  __chkstk_darwin(v7);
  v70 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Selection();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  __chkstk_darwin(v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Estimation();
  v73 = *(v14 - 8);
  v15 = v73[8];
  __chkstk_darwin(v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for XPCDaemonState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Server.State();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v27, v75, v23);
  result = (*(v24 + 88))(v27, v23);
  if (result == enum case for Server.State.found(_:))
  {
    (*(v24 + 96))(v27, v23);
    v29 = *v27;
    v30 = v27[1];
    v31 = v76;
    v32 = *(v76 + 16);
    v33 = String._bridgeToObjectiveC()();

    [v32 didReceiveCodeWithCode:v33];

    (*(v19 + 104))(v22, enum case for XPCDaemonState.found(_:), v18);
    v34 = XPCDaemonState.rawValue.getter();
    (*(v19 + 8))(v22, v18);
    return [*(v31 + 16) didUpdateStateWithState:v34];
  }

  v63 = v22;
  v75 = v19;
  v35 = v76;
  if (result == enum case for Server.State.estimated(_:))
  {
    (*(v24 + 96))(v27, v23);
    v36 = v73;
    (v73[4])(v17, v27, v14);
    v31 = v35;
    v37 = *(v35 + 16);
    Estimation.selection.getter();
    v38 = Selection.rawValue.getter();
    (*(v74 + 8))(v13, v10);
    v39 = Estimation.bytes.getter();
    [v37 didEstimateWithSelection:v38 bytes:v39 items:Estimation.items.getter()];
    v40 = v75;
    v41 = v63;
    (*(v75 + 104))(v63, enum case for XPCDaemonState.estimated(_:), v18);
    v34 = XPCDaemonState.rawValue.getter();
    (*(v40 + 8))(v41, v18);
    (v36[1])(v17, v14);
    return [*(v31 + 16) didUpdateStateWithState:v34];
  }

  if (result == enum case for Server.State.preflightFailed(_:))
  {
    (*(v24 + 96))(v27, v23);
    return [*(v35 + 16) preflightFailedWithAdditionalBytesRequired:*v27];
  }

  if (result == enum case for Server.State.transferred(_:))
  {
    (*(v24 + 96))(v27, v23);
    v42 = v70;
    v43 = v71;
    v44 = v72;
    (*(v71 + 32))(v70, v27, v72);
    v31 = v35;
    v73 = *(v35 + 16);
    MigratorContext.selection.getter();
    v45 = Selection.rawValue.getter();
    (*(v74 + 8))(v13, v10);
    v46 = v67;
    MigratorContext.result.getter();
    v47 = MigratorContext.Result.rawValue.getter();
    (*(v68 + 8))(v46, v69);
    v48 = MigratorContext.bytes.getter();
    v49 = MigratorContext.items.getter();
    [v73 didTransferWithSelection:v45 result:v47 bytes:v48 items:v49 errors:MigratorContext.errors.getter()];
    v50 = v75;
    v51 = v63;
    (*(v75 + 104))(v63, enum case for XPCDaemonState.transferred(_:), v18);
    v34 = XPCDaemonState.rawValue.getter();
    (*(v50 + 8))(v51, v18);
    (*(v43 + 8))(v42, v44);
    return [*(v31 + 16) didUpdateStateWithState:v34];
  }

  if (result == enum case for Server.State.failed(_:))
  {
    (*(v24 + 96))(v27, v23);
    v53 = v64;
    v52 = v65;
    v54 = v66;
    (*(v65 + 32))(v64, v27, v66);
    [*(v35 + 16) didFailWithReason:Reason.rawValue.getter()];
    swift_beginAccess();
    if (*(v35 + 64))
    {
      swift_endAccess();

      dispatch thunk of Server.stateUpdateHandler.setter();

      return (*(v52 + 8))(v53, v54);
    }

    else
    {
      (*(v52 + 8))(v53, v54);
      return swift_endAccess();
    }
  }

  if (result == enum case for Server.State.ready(_:))
  {
    v55 = v75;
    v56 = v63;
    (*(v75 + 104))(v63, enum case for XPCDaemonState.ready(_:), v18);
LABEL_29:
    v34 = XPCDaemonState.rawValue.getter();
    (*(v55 + 8))(v56, v18);
    v31 = v35;
    return [*(v31 + 16) didUpdateStateWithState:v34];
  }

  v55 = v75;
  v56 = v63;
  if (result == enum case for Server.State.connected(_:))
  {
    return result;
  }

  if (result == enum case for Server.State.secured(_:))
  {
    v57 = &enum case for XPCDaemonState.secured(_:);
LABEL_28:
    (*(v75 + 104))(v63, *v57, v18);
    goto LABEL_29;
  }

  if (result == enum case for Server.State.selecting(_:))
  {
    v57 = &enum case for XPCDaemonState.selecting(_:);
    goto LABEL_28;
  }

  if (result == enum case for Server.State.transferring(_:))
  {
    v57 = &enum case for XPCDaemonState.transferring(_:);
    goto LABEL_28;
  }

  if (result == enum case for Server.State.selected(_:))
  {
    v57 = &enum case for XPCDaemonState.selected(_:);
    goto LABEL_28;
  }

  if (result == enum case for Server.State.completed(_:))
  {
    v57 = &enum case for XPCDaemonState.completed(_:);
    goto LABEL_28;
  }

  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_1000067A4(v58, qword_100020A50);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "received an unexpected state.", v61, 2u);
  }

  return (*(v24 + 8))(v27, v23);
}

uint64_t sub_100010D5C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    [*(result + 16) didShutdown];
    v3 = v1[6];
    v2 = v1[7];

    v3(v1);

    swift_beginAccess();
    v4 = v1[8];
    v1[8] = 0;
  }

  return result;
}

uint64_t sub_100010E10(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

id sub_100010E84(uint64_t a1)
{
  v2 = type metadata accessor for Reason();
  v63 = *(v2 - 1);
  v64 = v2;
  v3 = *(v63 + 64);
  __chkstk_darwin(v2);
  v62 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MigratorContext.Result();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  __chkstk_darwin(v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Selection();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MigratorContext();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for XPCDaemonState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Client.State();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v26, a1, v22);
  result = (*(v23 + 88))(v26, v22);
  if (result == enum case for Client.State.ready(_:))
  {
    (*(v23 + 96))(v26, v22);
    v28 = *v26;
    v29 = *(v26 + 1);
    v30 = v71;
    v31 = *(v71 + 16);
    v32 = String._bridgeToObjectiveC()();

    [v31 didReceiveCodeWithCode:v32];

    (*(v18 + 104))(v21, enum case for XPCDaemonState.ready(_:), v17);
    v33 = XPCDaemonState.rawValue.getter();
    (*(v18 + 8))(v21, v17);
    v34 = v30;
    return [*(v34 + 16) didUpdateStateWithState:v33];
  }

  v60 = v17;
  v61 = v21;
  v34 = v71;
  if (result == enum case for Client.State.progressing(_:))
  {
    (*(v23 + 96))(v26, v22);
    v35 = *(v26 + 1);
    if (v26[16])
    {
      v35 = -1.0;
    }

    return [*(v34 + 16) didUpdateProgressWithPercentComplete:*v26 estimatedSecondsRemaining:v35];
  }

  if (result == enum case for Client.State.transferred(_:))
  {
    (*(v23 + 96))(v26, v22);
    v36 = v69;
    v37 = v26;
    v38 = v70;
    (*(v69 + 32))(v16, v37, v70);
    v64 = *(v34 + 16);
    MigratorContext.selection.getter();
    v39 = Selection.rawValue.getter();
    (*(v65 + 8))(v12, v66);
    MigratorContext.result.getter();
    v40 = MigratorContext.Result.rawValue.getter();
    (*(v67 + 8))(v8, v68);
    v41 = MigratorContext.bytes.getter();
    v42 = MigratorContext.items.getter();
    [v64 didTransferWithSelection:v39 result:v40 bytes:v41 items:v42 errors:MigratorContext.errors.getter()];
    v44 = v60;
    v43 = v61;
    (*(v18 + 104))(v61, enum case for XPCDaemonState.transferred(_:), v60);
    v33 = XPCDaemonState.rawValue.getter();
    (*(v18 + 8))(v43, v44);
    (*(v36 + 8))(v16, v38);
    return [*(v34 + 16) didUpdateStateWithState:v33];
  }

  if (result == enum case for Client.State.failed(_:))
  {
    (*(v23 + 96))(v26, v22);
    v46 = v62;
    v45 = v63;
    v47 = v64;
    (*(v63 + 32))(v62, v26, v64);
    [*(v34 + 16) didFailWithReason:Reason.rawValue.getter()];
    swift_beginAccess();
    if (*(v34 + 72))
    {
      swift_endAccess();

      dispatch thunk of Client.stateUpdateHandler.setter();

      return (*(v45 + 8))(v46, v47);
    }

    else
    {
      (*(v45 + 8))(v46, v47);
      return swift_endAccess();
    }
  }

  if (result == enum case for Client.State.found(_:))
  {
    v48 = enum case for XPCDaemonState.found(_:);
    v49 = v18;
    v50 = *(v18 + 104);
    v51 = v61;
LABEL_16:
    v52 = v60;
    v50(v51, v48, v60);
LABEL_17:
    v33 = XPCDaemonState.rawValue.getter();
    (*(v49 + 8))(v51, v52);
    return [*(v34 + 16) didUpdateStateWithState:v33];
  }

  v51 = v61;
  if (result == enum case for Client.State.connected(_:))
  {
    return result;
  }

  v49 = v18;
  if (result == enum case for Client.State.secured(_:))
  {
    v48 = enum case for XPCDaemonState.secured(_:);
    v50 = *(v18 + 104);
    goto LABEL_16;
  }

  v52 = v60;
  if (result == enum case for Client.State.selecting(_:))
  {
    v53 = &enum case for XPCDaemonState.selecting(_:);
LABEL_28:
    (*(v49 + 104))(v61, *v53, v60);
    goto LABEL_17;
  }

  if (result == enum case for Client.State.selected(_:))
  {
    v53 = &enum case for XPCDaemonState.selected(_:);
    goto LABEL_28;
  }

  if (result == enum case for Client.State.transferring(_:))
  {
    v53 = &enum case for XPCDaemonState.transferring(_:);
    goto LABEL_28;
  }

  if (result == enum case for Client.State.completed(_:))
  {
    (*(v49 + 104))(v61, enum case for XPCDaemonState.completed(_:), v60);
    v33 = XPCDaemonState.rawValue.getter();
    (*(v49 + 8))(v51, v52);
    swift_beginAccess();
    if (*(v34 + 72))
    {
      v54 = *(v34 + 72);

      dispatch thunk of Client.stateUpdateHandler.setter();
    }

    return [*(v34 + 16) didUpdateStateWithState:v33];
  }

  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_1000067A4(v55, qword_100020A50);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "received an unexpected state.", v58, 2u);
  }

  return (*(v23 + 8))(v26, v22);
}

uint64_t sub_1000117D4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    [*(result + 16) didShutdown];
    v3 = v1[6];
    v2 = v1[7];

    v3(v1);

    swift_beginAccess();
    v4 = v1[9];
    v1[9] = 0;
  }

  return result;
}

uint64_t sub_100011890(uint64_t a1)
{
  sub_10000507C(&qword_100020BA0, &qword_100017890);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  result = swift_weakInit();
  *(v3 + 16) = a1;
  v5 = *v1;
  if (*v1)
  {
    v6 = v1[1];
    if (!v6)
    {
      v14 = *(v5 + 24);
      *(v5 + 24) = v3;
      swift_retain_n();
      swift_unknownObjectRetain();

      swift_weakAssign();

      v1[1] = v3;
      v15 = v1[2];
      v10 = __OFADD__(v15, 1);
      v11 = v15 + 1;
      if (!v10)
      {
LABEL_11:
        v1[2] = v11;
        return result;
      }

      goto LABEL_13;
    }

    v7 = v1[1];
    swift_weakAssign();
    v8 = *(v6 + 24);
    *(v6 + 24) = v3;
    swift_unknownObjectRetain();

    v1[1] = v3;
    v9 = v1[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  *v1 = v3;
  v12 = v1[2];
  v10 = __OFADD__(v12, 1);
  v13 = v12 + 1;
  if (v10)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v1[2] = v13;

  return swift_unknownObjectRetain();
}

uint64_t sub_1000119FC()
{
  v2 = *v0;
  if (!*v0)
  {
    sub_10000507C(&qword_100020B80, &qword_100017860);
    sub_100012078();
    swift_allocError();
    swift_willThrow();
    return v1;
  }

  v3 = *(v2 + 24);
  *v0 = v3;
  if (v3)
  {
    v4 = v0[1];
    if (v4 && v3 == v4)
    {
      v0[1] = 0;
    }

    else
    {
    }

    swift_weakAssign();
  }

  v1 = *(v2 + 16);
  swift_unknownObjectRetain();

  v6 = v0[2];
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (!v7)
  {
    v0[2] = v8;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100011AC8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011B5C()
{
  v2 = *(sub_10000507C(&qword_100020B58, &qword_1000177E8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_10000FBE4(v4, v0 + v3);
}

uint64_t sub_100011C40()
{
  v1 = v0[2];

  sub_100005FC0(v0[3], v0[4]);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011C80()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_10000F7D8(v2, v3, v4);
}

uint64_t sub_100011D28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100011D88()
{
  v1 = sub_10000507C(&qword_100020B78, &qword_100017820);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  sub_100005FC0(*(v0 + 3), *(v0 + 4));
  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100011E60()
{
  v2 = *(sub_10000507C(&qword_100020B78, &qword_100017820) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000076A4;

  return sub_10000F2CC(v4, v5, v6, v0 + v3);
}

uint64_t sub_100011F58()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000076A4;

  return sub_10000B440(v0);
}

uint64_t sub_100011FE8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000076A4;

  return sub_10000BCD8(v0);
}

unint64_t sub_100012078()
{
  result = qword_100020B88;
  if (!qword_100020B88)
  {
    sub_1000120DC(&qword_100020B80, &qword_100017860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B88);
  }

  return result;
}

uint64_t sub_1000120DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100012124(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000121A0(uint64_t a1)
{
  v2 = sub_10000507C(&qword_100020B90, &qword_100017870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100012208(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001224C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000076A4;

  return sub_100009BEC(v0);
}

uint64_t sub_10001234C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:bytes:count:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_100012CAC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100012434(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Selection();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100013E84(&qword_100020BB8, 255, &type metadata accessor for Selection);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100013E84(&qword_100020BC0, 255, &type metadata accessor for Selection);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100012DD0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10001271C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000507C(&qword_100020BE8, &qword_100017910);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10001294C(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Selection();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000507C(&qword_100020BC8, &qword_1000178E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100013E84(&qword_100020BB8, 255, &type metadata accessor for Selection);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100012CAC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001271C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10001307C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000133F4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:bytes:count:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100012DD0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for Selection();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001294C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1000131BC();
      goto LABEL_12;
    }

    sub_1000135E8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100013E84(&qword_100020BB8, 255, &type metadata accessor for Selection);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100013E84(&qword_100020BC0, 255, &type metadata accessor for Selection);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10001307C()
{
  v1 = v0;
  sub_10000507C(&qword_100020BE8, &qword_100017910);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000131BC()
{
  v1 = v0;
  v2 = type metadata accessor for Selection();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000507C(&qword_100020BC8, &qword_1000178E0);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1000133F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000507C(&qword_100020BE8, &qword_100017910);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000135E8(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Selection();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000507C(&qword_100020BC8, &qword_1000178E0);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100013E84(&qword_100020BB8, 255, &type metadata accessor for Selection);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

char *sub_100013908(char *a1, int64_t a2, char a3)
{
  result = sub_100013948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100013928(size_t a1, int64_t a2, char a3)
{
  result = sub_100013A3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100013948(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000507C(&qword_100020BF0, &qword_1000176F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

size_t sub_100013A3C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000507C(&qword_100020BD8, &qword_1000178F8);
  v10 = *(type metadata accessor for Selection() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Selection() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100013C14(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  if (qword_100020898 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000067A4(v10, qword_100020A50);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "init()", v13, 2u);
  }

  *(v5 + 16) = a1;
  *(v5 + 32) = a2;
  swift_unknownObjectRetain();
  result = os_transaction_create();
  if (result)
  {
    *(v5 + 24) = result;
    type metadata accessor for NonReentrantActor();
    *(v5 + 80) = NonReentrantActor.__allocating_init()();
    sub_10000507C(&qword_100020BA8, &qword_1000178B8);
    v15 = swift_allocObject();
    swift_defaultActor_initialize();
    v15[16] = 0;
    v15[17] = 1;
    v15[14] = 0;
    v15[15] = 0;
    *(v5 + 88) = 1;
    *(v5 + 40) = v15;
    *(v5 + 48) = a3;
    *(v5 + 56) = a4;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100013D94()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013DDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005804;

  return sub_10000D340(v2, v3, v4);
}

uint64_t sub_100013E84(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100013ECC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10001234C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100013F40(uint64_t a1)
{
  v2 = type metadata accessor for Selection();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_100013E84(&qword_100020BB8, 255, &type metadata accessor for Selection);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100012434(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_1000140E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100014148()
{
  v2 = *(sub_10000507C(&qword_100020BF8, &qword_100017918) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_10000CF8C(v4, v0 + v3);
}

uint64_t sub_100014274(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000507C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100014334()
{
  v2 = *(sub_10000507C(&qword_100020BF8, &qword_100017918) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_10000C798(v4, v0 + v3);
}

uint64_t sub_100014418()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014458()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000076A4;

  return sub_10000C4FC(v2, v3, v4);
}

uint64_t sub_100014528()
{
  v0 = type metadata accessor for Logger();
  sub_1000067DC(v0, qword_100020C00);
  sub_1000067A4(v0, qword_100020C00);
  return static Log.loggerForFile(flair:sourceFile:)();
}

uint64_t sub_10001458C()
{
  v1 = type metadata accessor for LazyMigratorGroup();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100014648, 0, 0);
}

uint64_t sub_100014648()
{
  if (qword_1000208A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[5] = sub_1000067A4(v1, qword_100020C00);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "will run lazy jobs.", v4, 2u);
  }

  v5 = v0[4];

  LazyMigratorGroup.init()();
  v6 = async function pointer to LazyMigratorGroup.run()[1];
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1000147A8;
  v8 = v0[4];

  return LazyMigratorGroup.run()();
}

uint64_t sub_1000147A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;

  v4 = async function pointer to LazyMigratorGroup.clean()[1];
  v5 = swift_task_alloc();
  *(v1 + 56) = v5;
  *v5 = v3;
  v5[1] = sub_1000148EC;
  v6 = *(v1 + 32);

  return LazyMigratorGroup.clean()();
}

uint64_t sub_1000148EC()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_1000149E8, 0, 0);
}

uint64_t sub_1000149E8()
{
  v1 = v0[5];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "finished lazy jobs.", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100014B90(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  return _swift_task_switch(sub_100014BD8, v1, 0);
}

uint64_t sub_100014BD8()
{
  v1 = v0[7];
  v2 = sub_100014B3C();
  v4 = v0[8];
  v5 = v0[6];
  if (*v3 == 1)
  {
    (v2)(v0 + 2, 0);
    (*(*(*(v4 + 80) - 8) + 56))(v5, 1, 1);
  }

  else
  {
    v6 = *(v4 + 80);
    v7 = type metadata accessor for LinkedList.LinkedListIterator();
    sub_10001518C(v7, v5);
    (v2)(v0 + 2, 0);
  }

  v8 = v0[1];

  return v8();
}

void *sub_100014CEC()
{
  v1 = v0[14];
  v2 = v0[15];

  sub_1000150A0(v0[17]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100014D2C()
{
  sub_100014CEC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100014DA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_100015098();

  *a1 = v4;
  return result;
}

uint64_t sub_100014DE8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005804;

  return sub_100014B90(a1);
}

uint64_t sub_100014E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu[1];
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  v14 = *(a5 + 80);
  v15 = type metadata accessor for ConcurrentQueue();
  *v13 = v6;
  v13[1] = sub_100014F6C;

  return __sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, v15, a6, v6 + 16);
}

uint64_t sub_100014F6C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1000150A0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000150E0(uint64_t a1)
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

uint64_t sub_10001518C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  if (*v2)
  {
    v4 = *(a1 + 16);
    v5 = *(v4 - 8);
    (*(v5 + 16))(a2, v3 + *(*v3 + 88), v4);
    (*(v5 + 56))(a2, 0, 1, v4);
    v7 = *v2;
    *v2 = *(v3 + *(*v3 + 96));
  }

  else
  {
    v9 = *(*(*(a1 + 16) - 8) + 56);

    return v9(a2, 1, 1);
  }
}

uint64_t sub_1000152F8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 104);
  swift_weakDestroy();
  v2 = *(*v0 + 96);
  v3 = *(v0 + v2);
  *(v0 + v2) = 0;

  if (v3)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v4 = *(v3 + *(*v3 + 96));
      swift_retain_n();

      v3 = v4;
    }

    while (v4);
  }

  return v0;
}

uint64_t sub_10001540C()
{
  v0 = sub_1000152F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100015478()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000154CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100015528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100015590()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000155CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000155E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10001563C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

Swift::Int sub_1000156DC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100015748()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100015798@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  j__swift_retain();

  *a1 = v4;
  return result;
}

uint64_t sub_1000157EC()
{
  v1 = j___ss30_copySequenceToContiguousArrayys0dE0Vy7ElementQzGxSTRzlF();
  v2 = *v0;

  v3 = v0[1];

  return v1;
}

uint64_t sub_10001586C(unsigned int *a1, int a2)
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

_WORD *sub_1000158BC(_WORD *result, int a2, int a3)
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