uint64_t sub_1000019C8@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v23[0] = type metadata accessor for URL.DirectoryHint();
  v1 = *(v23[0] - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v23[0]);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v23 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v23 - v15;
  v17 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18[2])
  {
    v19 = v18[4];
    v20 = v18[5];

    (*(v10 + 56))(v8, 1, 1, v9);
    (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v23[0]);
    URL.init(filePath:directoryHint:relativeTo:)();
    URL.appendingPathComponent(_:)();
    v21 = *(v10 + 8);
    v21(v14, v9);
    URL.appendingPathComponent(_:)();
    return (v21)(v16, v9);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100001CDC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a2 = a1;
}

void sub_100001D18()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (static OSVariant.isSeedBuild.getter() & 1) != 0 || (static OSVariant.isInternalBuild.getter())
  {
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
    static LoggedObject<>.logger.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Enabling CoreData concurrency assertions", v7, 2u);
    }

    (*(v1 + 8))(v4, v0);
    v8 = [objc_opt_self() standardUserDefaults];
    sub_10000CED0(&unk_1000AADE0, &unk_1000855B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100085330;
    *(inited + 32) = 0xD000000000000023;
    v10 = inited + 32;
    *(inited + 72) = &type metadata for Int;
    *(inited + 40) = 0x8000000100088470;
    *(inited + 48) = 1;
    sub_100080460(inited);
    swift_setDeallocating();
    sub_10000D620(v10, &unk_1000AC3D0, &unk_100087F80);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v8 registerDefaults:isa];
  }
}

id sub_100001FC8()
{
  v0 = type metadata accessor for Logger();
  v44 = *(v0 - 8);
  v45 = v0;
  v1 = *(v44 + 64);
  v2 = __chkstk_darwin(v0);
  v4 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v43 = &v39[-v5];
  v6 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v39[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v39[-v16];
  sub_10000675C(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000D620(v9, &qword_1000AADD8, &qword_1000855A8);
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
    static LoggedObject<>.logger.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Can't find the versioned model bundle", v20, 2u);
    }

    (*(v44 + 8))(v4, v45);
    v21 = 0x8000000100088410;
    sub_10000D3D0();
    swift_allocError();
    *v22 = 0xD000000000000025;
    v22[1] = 0x8000000100088410;
    swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    v23 = objc_allocWithZone(NSManagedObjectModel);
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    v21 = [v23 initWithContentsOfURL:v25];

    if (v21)
    {
      [v21 _setIsEditable:0];
      (*(v11 + 8))(v17, v10);
    }

    else
    {
      sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
      sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
      v27 = v43;
      static LoggedObject<>.logger.getter();
      (*(v11 + 16))(v15, v17, v10);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v41 = v30;
        v42 = swift_slowAlloc();
        v46 = v42;
        *v30 = 136446210;
        sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
        v40 = v29;
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        v34 = *(v11 + 8);
        v34(v15, v10);
        v35 = sub_100035120(v31, v33, &v46);

        v36 = v41;
        *(v41 + 1) = v35;
        _os_log_impl(&_mh_execute_header, v28, v40, "Can't load the managed object model at %{public}s", v36, 0xCu);
        sub_10000D330(v42);

        (*(v44 + 8))(v43, v45);
      }

      else
      {

        v34 = *(v11 + 8);
        v34(v15, v10);
        (*(v44 + 8))(v27, v45);
      }

      v21 = 0x8000000100088440;
      sub_10000D3D0();
      swift_allocError();
      *v37 = 0xD000000000000023;
      v37[1] = 0x8000000100088440;
      swift_willThrow();
      v34(v17, v10);
    }
  }

  return v21;
}

uint64_t sub_100002634(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10000271C, v1, 0);
}

uint64_t sub_10000271C()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  static LoggedObject<>.logger.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting", v5, 2u);
  }

  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];

  (*(v7 + 8))(v6, v8);
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1000028C0;
  v10 = v0[3];

  return sub_100002A90();
}

uint64_t sub_1000028C0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1000029D0, v2, 0);
}

uint64_t sub_1000029D0()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = v0[3];
  v4 = OBJC_IVAR____TtC11homeeventsd10MainDriver_completion;
  v5 = sub_10000CED0(&qword_1000AAD48, &qword_100085568);
  (*(*(v5 - 8) + 16))(v2, v3 + v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100002A90()
{
  v1[9] = v0;
  v1[10] = *v0;
  v2 = type metadata accessor for Constants();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100002BD4, v0, 0);
}

uint64_t sub_100002BD4()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC11homeeventsd10MainDriver_server;
  v0[17] = OBJC_IVAR____TtC11homeeventsd10MainDriver_server;
  if (*(v1 + v2))
  {
    v3 = v0[16];
    v4 = v0[13];

    v5 = v0[1];

    return v5();
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localDatabaseName + 8))
    {
      sub_100003B58();
    }

    sub_1000041AC();
    *(v0[9] + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCoreDataSetUp) = 1;
    v7 = (v0[9] + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties);
    if (*v7)
    {
      v8 = v7[1];
      v0[18] = v8;

      return _swift_task_switch(sub_100002DB8, v8, 0);
    }

    else
    {
      v9 = swift_task_alloc();
      v0[19] = v9;
      *v9 = v0;
      v9[1] = sub_100002E5C;
      v10 = v0[9];

      return sub_10000C424();
    }
  }
}

uint64_t sub_100002DB8()
{
  v1 = v0[18];
  sub_100024FC8(v0[9]);

  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_100002E5C;
  v3 = v0[9];

  return sub_10000C424();
}

uint64_t sub_100002E5C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100002F6C, v2, 0);
}

uint64_t sub_100002F6C()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  static LoggedObject<>.logger.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = *(v7 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCloudKitLoggedIn);

    _os_log_impl(&_mh_execute_header, v4, v5, "CloudKit initialization finished, logged in: %{BOOL}d", v8, 8u);
  }

  else
  {
    v9 = *(v0 + 72);
  }

  v10 = *(v0 + 136);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  v14 = *(v0 + 72);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  sub_10000D2CC(v14 + OBJC_IVAR____TtC11homeeventsd10MainDriver_features, v0 + 16);
  v15 = *(v14 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCoreDataSetUp);
  (*(v12 + 104))(v11, enum case for Constants.xpcServiceName(_:), v13);
  v16 = Constants.rawValue.getter();
  v18 = v17;
  (*(v12 + 8))(v11, v13);
  v19 = type metadata accessor for XPCServer();
  v20 = objc_allocWithZone(v19);
  swift_weakInit();
  v21 = OBJC_IVAR____TtC11homeeventsd9XPCServer_listener;
  sub_10000CED0(&qword_1000AAD50, &qword_100085570);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = 0;
  *&v20[v21] = v22;
  swift_weakAssign();
  sub_10000D2CC(v0 + 16, &v20[OBJC_IVAR____TtC11homeeventsd9XPCServer_features]);
  v20[OBJC_IVAR____TtC11homeeventsd9XPCServer_isCoreDataSetUp] = v15;
  v23 = &v20[OBJC_IVAR____TtC11homeeventsd9XPCServer_serviceName];
  *v23 = v16;
  v23[1] = v18;
  v24 = &v20[OBJC_IVAR____TtC11homeeventsd9XPCServer_proxyConnectionFactory];
  *v24 = sub_10000E254;
  v24[1] = 0;
  *(v0 + 56) = v20;
  *(v0 + 64) = v19;
  v25 = objc_msgSendSuper2((v0 + 56), "init");
  sub_10000D330((v0 + 16));
  v26 = *(v14 + v10);
  *(v14 + v10) = v25;
  v27 = v25;

  sub_10000DDF4();
  v28 = *(v0 + 128);
  v29 = *(v0 + 104);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1000032B8()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000033A0, v0, 0);
}

uint64_t sub_1000033A0()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  static LoggedObject<>.logger.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Shutting down", v5, 2u);
  }

  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  v9 = v0[2];

  (*(v7 + 8))(v6, v8);
  v10 = *(v9 + OBJC_IVAR____TtC11homeeventsd10MainDriver_server);
  if (v10)
  {
    *(v9 + OBJC_IVAR____TtC11homeeventsd10MainDriver_server) = 0;
    sub_10000E044();
  }

  v0[7] = *(v0[2] + OBJC_IVAR____TtC11homeeventsd10MainDriver_promise);
  sub_10000CED0(&qword_1000AAD38, &qword_100085558);
  sub_10000D268();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100003580, v12, v11);
}

uint64_t sub_100003580()
{
  v1 = v0[6];
  v2 = v0[7];
  Promise<>.resolve()();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000035E8()
{
  v1 = OBJC_IVAR____TtC11homeeventsd10MainDriver_completion;
  v2 = sub_10000CED0(&qword_1000AAD48, &qword_100085568);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_promise);

  sub_10000D330((v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_features));
  sub_10000D330((v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_accountStore));

  v4 = *(v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties + 8);
  sub_10000D58C(*(v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties));

  sub_10000D5CC(v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_scheduler);
  v5 = OBJC_IVAR____TtC11homeeventsd10MainDriver_storageDirectory;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localDatabaseName + 8);

  sub_10000D330((v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100003754()
{
  sub_1000035E8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for MainDriver()
{
  result = qword_1000AAAF0;
  if (!qword_1000AAAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000037D4()
{
  sub_100003910();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100003910()
{
  if (!qword_1000AAB00)
  {
    sub_100003988(&unk_1000AAB08, &qword_1000853D0);
    v0 = type metadata accessor for Future();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AAB00);
    }
  }
}

uint64_t sub_100003988(uint64_t *a1, uint64_t *a2)
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

__n128 sub_1000039E4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000039F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100003A38(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100003A90()
{
  type metadata accessor for MainDriver();
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);

  return static LoggedObject<>.logger.getter();
}

uint64_t sub_100003B1C()
{
  type metadata accessor for MainDriver();

  return static LoggedObject.logCategory.getter();
}

void sub_100003B58()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for CocoaError.Code();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v26 = type metadata accessor for Logger();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v26);
  v25[0] = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v25[2] = v25 - v10;
  v11 = __chkstk_darwin(v9);
  v25[1] = v25 - v12;
  __chkstk_darwin(v11);
  v14 = v25 - v13;
  v15 = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  v25[3] = sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  v25[4] = v15;
  static LoggedObject<>.logger.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Checking whether reset has been requested", v18, 2u);
  }

  v19 = *(v5 + 8);
  v25[5] = v5 + 8;
  v19(v14, v26);
  sub_10000D224((v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag), *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag + 24));
  v20 = Data.init(contentsOf:options:)();
  sub_10000D37C(v20, v21);
  static LoggedObject<>.logger.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Reset request detected, removing all configuration", v24, 2u);
  }

  v19(v25[0], v26);
  sub_100009AF0();
  sub_10000976C();
  sub_1000095B0();
}

void sub_1000041AC()
{
  v1 = *v0;
  v2 = type metadata accessor for CocoaError.Code();
  v242 = *(v2 - 1);
  v243 = v2;
  v3 = v242[8];
  v4 = __chkstk_darwin(v2);
  v241 = &v216 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v240 = &v216 - v6;
  v245 = type metadata accessor for CocoaError();
  v247 = *(v245 - 1);
  v7 = *(v247 + 64);
  v8 = __chkstk_darwin(v245);
  v239 = &v216 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v246 = (&v216 - v11);
  __chkstk_darwin(v10);
  v244 = (&v216 - v12);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v248 = v13;
  v249 = v14;
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v229 = &v216 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v230 = &v216 - v19;
  v20 = __chkstk_darwin(v18);
  v237 = &v216 - v21;
  v22 = __chkstk_darwin(v20);
  v238 = &v216 - v23;
  v24 = __chkstk_darwin(v22);
  v231 = &v216 - v25;
  v26 = __chkstk_darwin(v24);
  v232 = &v216 - v27;
  v28 = __chkstk_darwin(v26);
  v233 = &v216 - v29;
  v30 = __chkstk_darwin(v28);
  v234 = &v216 - v31;
  v32 = __chkstk_darwin(v30);
  v235 = &v216 - v33;
  v34 = __chkstk_darwin(v32);
  v236 = &v216 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v216 - v37;
  __chkstk_darwin(v36);
  v40 = &v216 - v39;
  v41 = type metadata accessor for Logger();
  v42 = *(v41 - 8);
  v251 = v41;
  v252 = v42;
  v43 = *(v42 + 64);
  v44 = __chkstk_darwin(v41);
  v45 = __chkstk_darwin(v44);
  v47 = &v216 - v46;
  v48 = __chkstk_darwin(v45);
  __chkstk_darwin(v48);
  v50 = __chkstk_darwin(&v216 - v49);
  v51 = __chkstk_darwin(v50);
  v53 = &v216 - v52;
  v54 = __chkstk_darwin(v51);
  v56 = &v216 - v55;
  v57 = __chkstk_darwin(v54);
  v59 = &v216 - v58;
  v60 = __chkstk_darwin(v57);
  v65 = &v216 - v64;
  v66 = *(v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties);
  if (!v66)
  {
    sub_10000D3D0();
    swift_allocError();
    *v84 = 0xD000000000000025;
    v84[1] = 0x8000000100088350;
    swift_willThrow();
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localDatabaseName + 8))
  {
    v220 = v60;
    v223 = v47;
    v218 = v63;
    v217 = v62;
    v221 = v61;
    v228 = v66;
    v219 = v0;
    v67 = sub_100008614();
    v68.super.isa = sub_10000AFB4().super.isa;
    v69 = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
    v70 = sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
    v226 = v69;
    v225 = v70;
    static LoggedObject<>.logger.getter();
    v71 = v67;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    v74 = os_log_type_enabled(v72, v73);
    isa = v68.super.isa;
    if (v74)
    {
      v224 = v1;
      v75 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v255 = v216;
      *v75 = 136446210;
      v76 = [v71 URL];
      v222 = v71;

      if (!v76)
      {
        __break(1u);
        goto LABEL_47;
      }

      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v77 = v248;
      (v249)[4](v40, v38, v248);
      sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = v79;
      (v249[1])(v40, v77);
      v81 = sub_100035120(v78, v80, &v255);

      *(v75 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v72, v73, "Loading persistent store at %{public}s", v75, 0xCu);
      sub_10000D330(v216);

      v82 = v251;
      v83 = *(v252 + 8);
      v83(v53, v251);
      v68.super.isa = isa;
      v1 = v224;
      v71 = v222;
    }

    else
    {

      v82 = v251;
      v83 = *(v252 + 8);
      v83(v53, v251);
    }

    v100 = v228;
    v101 = v250;
    sub_10000699C(v228, v71, v68.super.isa);
    v102 = v101;
    if (!v101)
    {
LABEL_39:
      v195 = v221;
      static LoggedObject<>.logger.getter();
      v1 = v100;
      v196 = v71;
      v197 = Logger.logObject.getter();
      v198 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v197, v198))
      {

        v83(v195, v82);
        return;
      }

      LODWORD(v247) = v198;
      v250 = v83;
      v244 = v102;
      v199 = swift_slowAlloc();
      v246 = swift_slowAlloc();
      v255 = v246;
      *v199 = 136446466;
      v200 = [v196 URL];

      if (v200)
      {
        v201 = v235;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v203 = v248;
        v202 = v249;
        v204 = v236;
        (v249)[4](v236, v201, v248);
        sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
        v205 = dispatch thunk of CustomStringConvertible.description.getter();
        v207 = v206;
        (v202[1])(v204, v203);
        v208 = sub_100035120(v205, v207, &v255);

        *(v199 + 4) = v208;
        *(v199 + 12) = 2082;
        v209 = [v1 persistentStoreCoordinator];
        v210 = [v209 managedObjectModel];

        v211 = [v210 versionChecksum];
        v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v214 = v213;

        v215 = sub_100035120(v212, v214, &v255);

        *(v199 + 14) = v215;
        _os_log_impl(&_mh_execute_header, v197, v247, "Successfully loaded persistent store at %{public}s with version checksum %{public}s", v199, 0x16u);
        swift_arrayDestroy();

        v250(v221, v251);
        return;
      }

      goto LABEL_48;
    }

    v250 = v83;
    v255 = v101;
    swift_errorRetain();
    sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
    v103 = v244;
    v104 = v245;
    if (swift_dynamicCast())
    {
      v222 = v71;
      v224 = v1;
      (*(v247 + 32))(v246, v103, v104);
      sub_10000CE88(&qword_1000AAD70, &type metadata accessor for CocoaError);
      v105 = v240;
      _BridgedStoredNSError.code.getter();
      v106 = v241;
      static CocoaError.Code.persistentStoreIncompatibleVersionHash.getter();
      sub_10000CE88(&qword_1000AAD78, &type metadata accessor for CocoaError.Code);
      v107 = v243;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v108 = v242[1];
      v108(v106, v107);
      v108(v105, v107);
      if (v254 == v253)
      {

        v109 = v220;
        static LoggedObject<>.logger.getter();
        v110 = v247;
        v111 = v239;
        (*(v247 + 16))(v239, v246, v104);
        v112 = v222;
        v113 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        v114 = os_log_type_enabled(v113, v1);
        v115 = v251;
        if (v114)
        {
          LODWORD(v244) = v1;
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v243 = swift_slowAlloc();
          v254 = v243;
          *v116 = 136446466;
          v118 = [v112 URL];

          if (!v118)
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v119 = v233;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v120 = v249;
          v121 = v234;
          v122 = v119;
          v123 = v248;
          (v249)[4](v234, v122, v248);
          sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
          v124 = dispatch thunk of CustomStringConvertible.description.getter();
          v126 = v125;
          (v120[1])(v121, v123);
          v127 = sub_100035120(v124, v126, &v254);

          *(v116 + 4) = v127;
          *(v116 + 12) = 2114;
          v128 = v239;
          CocoaError._nsError.getter();
          v129 = _swift_stdlib_bridgeErrorToNSError();
          v130 = *(v247 + 8);
          (v130)(v128, v245);
          *(v116 + 14) = v129;
          *v117 = v129;
          _os_log_impl(&_mh_execute_header, v113, v244, "Persistent store at %{public}s has an incompatible version: %{public}@", v116, 0x16u);
          sub_10000D620(v117, &unk_1000AB7D0, &qword_100085510);

          sub_10000D330(v243);

          v131 = v251;
          v132 = v220;
        }

        else
        {

          v130 = *(v110 + 8);
          (v130)(v111, v104);
          v132 = v109;
          v131 = v115;
        }

        v250(v132, v131);
        sub_100008AAC(v228, v112);
        v102 = 0;
        v164 = isa;
        v165 = v218;
        static LoggedObject<>.logger.getter();
        v1 = v112;
        v166 = Logger.logObject.getter();
        v167 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v166, v167))
        {
          v243 = v130;
          v244 = 0;
          v168 = swift_slowAlloc();
          v242 = swift_slowAlloc();
          v254 = v242;
          *v168 = 136446210;
          v169 = [v1 URL];

          if (!v169)
          {
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v170 = v231;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v172 = v248;
          v171 = v249;
          v173 = v232;
          (v249)[4](v232, v170, v248);
          sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
          v174 = dispatch thunk of CustomStringConvertible.description.getter();
          v176 = v175;
          (v171[1])(v173, v172);
          v177 = sub_100035120(v174, v176, &v254);

          *(v168 + 4) = v177;
          _os_log_impl(&_mh_execute_header, v166, v167, "Retrying load of store at %{public}s after handling previous error", v168, 0xCu);
          sub_10000D330(v242);

          v83 = v250;
          v250(v218, v251);
          v164 = isa;
          v130 = v243;
          v102 = v244;
        }

        else
        {

          v83 = v250;
          v250(v165, v251);
        }

        sub_10000699C(v228, v1, v164);
        v71 = v222;
        if (v102)
        {
          v178 = v217;
          static LoggedObject<>.logger.getter();
          v1 = v1;
          swift_errorRetain();
          v179 = Logger.logObject.getter();
          v180 = static os_log_type_t.fault.getter();
          if (!os_log_type_enabled(v179, v180))
          {

            v250(v178, v251);
            goto LABEL_44;
          }

          v243 = v130;
          v181 = swift_slowAlloc();
          v242 = swift_slowAlloc();
          v244 = swift_slowAlloc();
          v254 = v244;
          *v181 = 136446466;
          v182 = [v1 URL];
          if (v182)
          {
            v183 = v182;

            v241 = v1;
            v184 = v229;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v186 = v248;
            v185 = v249;
            v187 = v230;
            (v249)[4](v230, v184, v248);
            sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
            v188 = dispatch thunk of CustomStringConvertible.description.getter();
            v190 = v189;
            (v185[1])(v187, v186);
            v191 = v188;
            v1 = v241;
            v192 = sub_100035120(v191, v190, &v254);

            *(v181 + 4) = v192;
            *(v181 + 12) = 2114;
            swift_errorRetain();
            v193 = _swift_stdlib_bridgeErrorToNSError();
            *(v181 + 14) = v193;
            v194 = v242;
            *v242 = v193;
            _os_log_impl(&_mh_execute_header, v179, v180, "Unable to load persistent store at %{public}s after repair: %{public}@", v181, 0x16u);
            sub_10000D620(v194, &unk_1000AB7D0, &qword_100085510);

            sub_10000D330(v244);

            v250(v217, v251);
            v164 = isa;
            v130 = v243;
LABEL_44:
            swift_willThrow();

            (v130)(v246, v245);

            return;
          }

LABEL_51:

          __break(1u);
          return;
        }

        (v130)(v246, v245);

        v82 = v251;
        v100 = v228;
        goto LABEL_39;
      }

      (*(v247 + 8))(v246, v104);
      v1 = v224;
      v71 = v222;
      v82 = v251;
    }

    v147 = v223;
    static LoggedObject<>.logger.getter();
    v40 = v71;
    swift_errorRetain();
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v148, v149))
    {

      v250(v147, v82);
      goto LABEL_27;
    }

    LODWORD(v247) = v149;
    v150 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    v246 = swift_slowAlloc();
    v255 = v246;
    *v150 = 136446466;
    v151 = [v40 URL];
    if (v151)
    {
      v152 = v151;

      v153 = v237;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v154 = v249;
      v155 = v238;
      v156 = v153;
      v157 = v248;
      (v249)[4](v238, v156, v248);
      sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
      v158 = dispatch thunk of CustomStringConvertible.description.getter();
      v160 = v159;
      (v154[1])(v155, v157);
      v161 = sub_100035120(v158, v160, &v255);

      *(v150 + 4) = v161;
      *(v150 + 12) = 2114;
      swift_errorRetain();
      v162 = _swift_stdlib_bridgeErrorToNSError();
      *(v150 + 14) = v162;
      v163 = v245;
      *v245 = v162;
      _os_log_impl(&_mh_execute_header, v148, v247, "Unable to load persistent store at %{public}s: %{public}@", v150, 0x16u);
      sub_10000D620(v163, &unk_1000AB7D0, &qword_100085510);

      sub_10000D330(v246);

      v250(v223, v251);
      v68.super.isa = isa;
      v100 = v228;
LABEL_27:
      swift_willThrow();

      return;
    }

LABEL_47:

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v85 = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  v86 = v66;
  v248 = v85;
  v249 = v86;
  static LoggedObject<>.logger.getter();
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.info.getter();
  v89 = os_log_type_enabled(v87, v88);
  v90 = v251;
  if (v89)
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&_mh_execute_header, v87, v88, "Loading in-memory persistent store", v91, 2u);
  }

  v92 = *(v252 + 8);
  v252 += 8;
  v92(v65, v90);
  v94 = v249;
  v93 = v250;
  sub_10000ADFC(v249);
  if (v93)
  {
    v250 = v92;
    static LoggedObject<>.logger.getter();
    swift_errorRetain();
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v97 = 138543362;
      swift_errorRetain();
      v99 = _swift_stdlib_bridgeErrorToNSError();
      *(v97 + 4) = v99;
      *v98 = v99;
      _os_log_impl(&_mh_execute_header, v95, v96, "Failed to load in-memory persistent store: %{public}@", v97, 0xCu);
      sub_10000D620(v98, &unk_1000AB7D0, &qword_100085510);
    }

    v250(v56, v90);
    swift_willThrow();
  }

  else
  {
    static LoggedObject<>.logger.getter();
    v133 = v94;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v250 = v92;
      v137 = v136;
      v138 = swift_slowAlloc();
      v255 = v138;
      *v137 = 136446210;
      v139 = [v133 persistentStoreCoordinator];
      v244 = 0;
      v140 = v139;
      v141 = [v139 managedObjectModel];

      v142 = [v141 versionChecksum];
      v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v145 = v144;

      v146 = sub_100035120(v143, v145, &v255);

      *(v137 + 4) = v146;
      _os_log_impl(&_mh_execute_header, v134, v135, "Successfully loaded in-memory persistent store with version checksum %{public}s", v137, 0xCu);
      sub_10000D330(v138);

      v250(v59, v251);
    }

    else
    {

      v92(v59, v90);
    }
  }
}

uint64_t sub_100005E6C(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 65) = a2;
  *(v3 + 64) = a1;
  *(v3 + 24) = *v2;
  v4 = type metadata accessor for Logger();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = *(*(sub_10000CED0(&qword_1000AAD30, &qword_100085540) - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100005F94, v2, 0);
}

uint64_t sub_100005F94()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties);
  if (v2)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 65);
    v5 = *(v0 + 64);
    v6 = *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_maxCloudKitRecordsPerOperation);
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v2;
    *(v8 + 40) = v6;
    *(v8 + 48) = v5;
    *(v8 + 49) = v4;
    v9 = v2;
    sub_100080ECC(0, 0, v3, &unk_100085550, v8);
  }

  else
  {
    v10 = *(v0 + 48);
    v11 = *(v0 + 24);
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
    static LoggedObject<>.logger.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 40);
    v15 = *(v0 + 48);
    v17 = *(v0 + 32);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Not creating metric without valid CoreData database", v18, 2u);
    }

    (*(v16 + 8))(v15, v17);
  }

  v20 = *(v0 + 48);
  v19 = *(v0 + 56);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000061E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 57) = a7;
  *(v7 + 56) = a6;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  return _swift_task_switch(sub_100006208, 0, 0);
}

uint64_t sub_100006208()
{
  v10 = v0;
  v1 = *(v0 + 57);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = type metadata accessor for CoreDataDatabase();
  v6 = swift_allocObject();
  *(v0 + 32) = v6;
  *(v6 + 16) = [v3 newBackgroundContext];
  *(v6 + 24) = v4;
  *(v6 + 32) = 0;
  v9[3] = v5;
  v9[4] = &off_1000A42B8;
  v9[0] = v6;
  objc_allocWithZone(type metadata accessor for ProcessLaunchLogEvent());

  *(v0 + 40) = sub_100015290(v9, v2, v1);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_100006334;

  return sub_1000153EC();
}

uint64_t sub_100006334()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_100006430, 0, 0);
}

uint64_t sub_100006430()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_100016808();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000649C()
{
  *(v1 + 32) = v0;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_10000652C;

  return sub_10000C424();
}

uint64_t sub_10000652C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_10000663C, v2, 0);
}

uint64_t sub_10000663C()
{
  receiver = v0[2].receiver;
  v2 = type metadata accessor for AccountChangedListener();
  v3 = objc_allocWithZone(v2);
  swift_weakInit();
  swift_weakAssign();
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v4 = objc_msgSendSuper2(v0 + 1, "init");
  v5 = *&receiver[OBJC_IVAR____TtC11homeeventsd10MainDriver_accountChangedListener];
  *&receiver[OBJC_IVAR____TtC11homeeventsd10MainDriver_accountChangedListener] = v4;
  v6 = v4;

  [*&receiver[OBJC_IVAR____TtC11homeeventsd10MainDriver_notificationCenter] addObserver:v6 selector:"accountChangedWithNotification:" name:CKAccountChangedNotification object:*&receiver[OBJC_IVAR____TtC11homeeventsd10MainDriver_cloudKitContainer]];
  super_class = v0->super_class;

  return super_class();
}

uint64_t sub_10000675C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Constants();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9 = v3[13];
  v9(v6, enum case for Constants.coreDataModelFileName(_:), v2);
  Constants.rawValue.getter();
  v10 = v3[1];
  v10(v6, v2);
  v11 = String._bridgeToObjectiveC()();

  v9(v6, enum case for Constants.coreDataModelFileExtension(_:), v2);
  Constants.rawValue.getter();
  v10(v6, v2);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v8 URLForResource:v11 withExtension:v12];

  if (v13)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = type metadata accessor for URL();
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

void sub_10000699C(void *a1, void *a2, uint64_t a3)
{
  v208 = a3;
  v213 = type metadata accessor for CocoaError.Code();
  v212 = *(v213 - 8);
  v5 = *(v212 + 64);
  v6 = __chkstk_darwin(v213);
  v211 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v210 = &v193 - v8;
  v215 = type metadata accessor for URL();
  v214 = *(v215 - 8);
  v9 = *(v214 + 64);
  v10 = __chkstk_darwin(v215);
  v201 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v202 = &v193 - v13;
  v14 = __chkstk_darwin(v12);
  v205 = &v193 - v15;
  v16 = __chkstk_darwin(v14);
  v206 = &v193 - v17;
  v18 = __chkstk_darwin(v16);
  v203 = &v193 - v19;
  v20 = __chkstk_darwin(v18);
  v204 = &v193 - v21;
  v22 = __chkstk_darwin(v20);
  v196 = &v193 - v23;
  v24 = __chkstk_darwin(v22);
  v198 = &v193 - v25;
  v26 = __chkstk_darwin(v24);
  v195 = &v193 - v27;
  __chkstk_darwin(v26);
  v197 = &v193 - v28;
  v225 = type metadata accessor for Logger();
  v221 = *(v225 - 8);
  v29 = *(v221 + 64);
  v30 = __chkstk_darwin(v225);
  v216 = &v193 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v217 = &v193 - v33;
  v34 = __chkstk_darwin(v32);
  v220 = &v193 - v35;
  v36 = __chkstk_darwin(v34);
  v200 = &v193 - v37;
  __chkstk_darwin(v36);
  v199 = &v193 - v38;
  v39 = type metadata accessor for CocoaError();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v219 = &v193 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v207 = &v193 - v45;
  v46 = __chkstk_darwin(v44);
  v222 = (&v193 - v47);
  v48 = __chkstk_darwin(v46);
  v224 = &v193 - v49;
  __chkstk_darwin(v48);
  v51 = &v193 - v50;
  v52 = sub_10000CED0(&qword_1000AAD98, &qword_100085588);
  v53 = *(*(v52 - 8) + 64);
  v54 = __chkstk_darwin(v52 - 8);
  v218 = (&v193 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v54);
  v57 = &v193 - v56;
  sub_10000CED0(&qword_1000AADA0, &qword_100085590);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_100085340;
  *(v58 + 32) = a2;
  sub_10000D544(0, &qword_1000AAD80, NSPersistentStoreDescription_ptr);
  v59 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPersistentStoreDescriptions:isa];

  [v59 setShouldMigrateStoreAutomatically:0];
  v223 = v59;
  [v59 setShouldInferMappingModelAutomatically:0];
  v227 = v40;
  v228 = v57;
  v61 = *(v40 + 56);
  v62 = v57;
  v63 = v39;
  v61(v62, 1, 1, v39);
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  v65 = (v64 + 16);
  v236 = sub_10000D45C;
  v237 = v64;
  aBlock = _NSConcreteStackBlock;
  v233 = 1107296256;
  v234 = sub_10000A174;
  v235 = &unk_1000A1E30;
  v66 = _Block_copy(&aBlock);

  v209 = a1;
  [a1 loadPersistentStoresWithCompletionHandler:v66];
  _Block_release(v66);
  swift_beginAccess();
  v67 = *v65;
  if (*v65)
  {
    v68 = *v65;
    swift_willThrow();
    swift_errorRetain();

    aBlock = v67;
    swift_errorRetain();
    sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
    if (swift_dynamicCast())
    {
      v226 = v61;
      v194 = *(v227 + 32);
      v194(v219, v51, v39);
      sub_10000CE88(&qword_1000AAD70, &type metadata accessor for CocoaError);
      v69 = v210;
      _BridgedStoredNSError.code.getter();
      v70 = v211;
      static CocoaError.Code.persistentStoreIncompatibleVersionHash.getter();
      sub_10000CE88(&qword_1000AAD78, &type metadata accessor for CocoaError.Code);
      v71 = v213;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v72 = *(v212 + 8);
      v72(v70, v71);
      v72(v69, v71);
      if (v230 == v229)
      {
        v73 = v228;
        sub_10000D620(v228, &qword_1000AAD98, &qword_100085588);

        v194(v73, v219, v39);
        v226(v73, 0, 1, v39);

        v74 = 0;
        v75 = v225;
        v63 = v39;
        v76 = v227;
        goto LABEL_6;
      }

      (*(v227 + 8))(v219, v39);
    }

    swift_willThrow();
    goto LABEL_40;
  }

  v74 = v226;

  v76 = v227;
  v75 = v225;
LABEL_6:
  v77 = v218;
  sub_10000D47C(v228, v218);
  v78 = (*(v76 + 48))(v77, 1, v63);
  v79 = v222;
  v80 = v223;
  v81 = v220;
  if (v78 == 1)
  {
    sub_10000D620(v77, &qword_1000AAD98, &qword_100085588);
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
    v82 = v216;
    static LoggedObject<>.logger.getter();
    v83 = v80;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v226 = v74;
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      aBlock = v87;
      *v86 = 136315138;
      v88 = [v83 URL];

      if (v88)
      {
        v89 = v205;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v90 = v214;
        v91 = v206;
        v92 = v215;
        (*(v214 + 32))(v206, v89, v215);
        sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        (*(v90 + 8))(v91, v92);
        v96 = sub_100035120(v93, v95, &aBlock);

        *(v86 + 4) = v96;
        _os_log_impl(&_mh_execute_header, v84, v85, "Load succeeded with migration disabled for store at %s", v86, 0xCu);
        sub_10000D330(v87);

        (*(v221 + 8))(v216, v225);
        sub_10000D620(v228, &qword_1000AAD98, &qword_100085588);
        return;
      }

      __break(1u);
      goto LABEL_48;
    }

    (*(v221 + 8))(v82, v75);
LABEL_40:
    sub_10000D620(v228, &qword_1000AAD98, &qword_100085588);
    return;
  }

  (*(v76 + 32))(v224, v77, v63);
  sub_10000CE88(&qword_1000AAD70, &type metadata accessor for CocoaError);
  v97 = _BridgedStoredNSError.userInfo.getter();
  v98 = *(v97 + 16);
  v226 = v74;
  if (!v98 || (v99 = sub_10007B4E8(0x617461646174656DLL, 0xE800000000000000), (v100 & 1) == 0))
  {

LABEL_28:
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
    static LoggedObject<>.logger.getter();
    (*(v76 + 16))(v79, v224, v63);
    v131 = v79;
    v132 = v80;
    v133 = v81;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v134, v135))
    {

      (*(v76 + 8))(v131, v63);
      v130 = *(v221 + 8);
      v130(v133, v75);
      v102 = v217;
      goto LABEL_33;
    }

    v219 = v63;
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    aBlock = v218;
    *v136 = 136446466;
    v138 = [v132 URL];

    if (!v138)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v139 = v203;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v140 = v214;
    v141 = v204;
    v142 = v215;
    (*(v214 + 32))(v204, v139, v215);
    sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
    v143 = dispatch thunk of CustomStringConvertible.description.getter();
    v145 = v144;
    (*(v140 + 8))(v141, v142);
    v146 = sub_100035120(v143, v145, &aBlock);

    *(v136 + 4) = v146;
    *(v136 + 12) = 2114;
    v147 = v222;
    CocoaError._nsError.getter();
    v148 = _swift_stdlib_bridgeErrorToNSError();
    v76 = v227;
    v149 = v219;
    (*(v227 + 8))(v147, v219);
    *(v136 + 14) = v148;
    *v137 = v148;
    _os_log_impl(&_mh_execute_header, v134, v135, "Unable to determine version checksum for store at %{public}s: %{public}@", v136, 0x16u);
    sub_10000D620(v137, &unk_1000AB7D0, &qword_100085510);
    v63 = v149;

    sub_10000D330(v218);

    v130 = *(v221 + 8);
    v130(v220, v225);
LABEL_31:
    v102 = v217;
    v80 = v223;
LABEL_33:
    [v80 setShouldMigrateStoreAutomatically:1];
    [v80 setShouldInferMappingModelAutomatically:1];
    [v80 setOption:v208 forKey:NSPersistentStoreStagedMigrationManagerOptionKey];
    v150 = swift_allocObject();
    *(v150 + 16) = 0;
    v151 = (v150 + 16);
    v236 = sub_10000DDE0;
    v237 = v150;
    aBlock = _NSConcreteStackBlock;
    v233 = 1107296256;
    v234 = sub_10000A174;
    v235 = &unk_1000A1E58;
    v152 = _Block_copy(&aBlock);

    [v209 loadPersistentStoresWithCompletionHandler:v152];
    _Block_release(v152);
    swift_beginAccess();
    if (!*v151)
    {
      (*(v76 + 8))(v224, v63);
      sub_10000D620(v228, &qword_1000AAD98, &qword_100085588);

      return;
    }

    v226 = v130;
    swift_willThrow();
    swift_errorRetain();

    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
    static LoggedObject<>.logger.getter();
    v153 = v207;
    (*(v76 + 16))(v207, v224, v63);
    v154 = v76;
    v155 = v80;
    v156 = Logger.logObject.getter();
    v157 = v153;
    v158 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v156, v158))
    {
      v219 = v63;
      v159 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v230 = v223;
      *v159 = 136446466;
      v160 = [v155 URL];

      if (!v160)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v161 = v201;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v162 = v214;
      v163 = v202;
      v164 = v215;
      (*(v214 + 32))(v202, v161, v215);
      sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
      v165 = dispatch thunk of CustomStringConvertible.description.getter();
      v167 = v166;
      (*(v162 + 8))(v163, v164);
      v168 = sub_100035120(v165, v167, &v230);

      *(v159 + 4) = v168;
      *(v159 + 12) = 2114;
      v169 = v207;
      CocoaError._nsError.getter();
      v170 = _swift_stdlib_bridgeErrorToNSError();
      v171 = *(v227 + 8);
      v172 = v169;
      v63 = v219;
      v171(v172, v219);
      *(v159 + 14) = v170;
      v173 = v222;
      *v222 = v170;
      _os_log_impl(&_mh_execute_header, v156, v158, "Store at %{public}s failed to migrate: %{public}@", v159, 0x16u);
      sub_10000D620(v173, &unk_1000AB7D0, &qword_100085510);

      sub_10000D330(v223);

      v174 = v217;
    }

    else
    {

      v171 = *(v154 + 8);
      v171(v157, v63);
      v174 = v102;
    }

    (v226)(v174, v225);
    v175 = v224;
    CocoaError._nsError.getter();
    swift_willThrow();

    v171(v175, v63);
    goto LABEL_40;
  }

  sub_10000CFA0(*(v97 + 56) + 32 * v99, &aBlock);

  sub_10000CED0(&qword_1000AADA8, &qword_100085598);
  v101 = swift_dynamicCast();
  v102 = v217;
  if ((v101 & 1) == 0)
  {
LABEL_25:
    v79 = v222;
    v80 = v223;
    goto LABEL_28;
  }

  v103 = v230;
  v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v103 + 16))
  {

    goto LABEL_25;
  }

  v106 = sub_10007B4E8(v104, v105);
  v108 = v107;

  if ((v108 & 1) == 0)
  {

    goto LABEL_27;
  }

  sub_10000CFA0(*(v103 + 56) + 32 * v106, &aBlock);

  v109 = swift_dynamicCast();
  if ((v109 & 1) == 0)
  {
LABEL_27:
    v79 = v222;
    v80 = v223;
    v75 = v225;
    v81 = v220;
    goto LABEL_28;
  }

  v219 = v63;
  v111 = v230;
  v110 = v231;
  aBlock = v230;
  v233 = v231;
  __chkstk_darwin(v109);
  *(&v193 - 2) = &aBlock;
  v112 = v226;
  v113 = sub_10000AA40(sub_10000D4EC, (&v193 - 4), &off_1000A1B00);
  v226 = v112;
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  if (v113)
  {
    v114 = v199;
    static LoggedObject<>.logger.getter();
    v115 = v223;

    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v116, v117))
    {

      v130 = *(v221 + 8);
      v130(v114, v225);
      v63 = v219;
      v76 = v227;
      v80 = v223;
      goto LABEL_33;
    }

    LODWORD(v220) = v117;
    v222 = v111;
    v118 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    aBlock = v218;
    *v118 = 136446466;
    v119 = [v115 URL];

    if (!v119)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v120 = v195;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v121 = v214;
    v122 = v197;
    v123 = v120;
    v124 = v215;
    (*(v214 + 32))(v197, v123, v215);
    sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
    v125 = dispatch thunk of CustomStringConvertible.description.getter();
    v127 = v126;
    (*(v121 + 8))(v122, v124);
    v128 = sub_100035120(v125, v127, &aBlock);

    *(v118 + 4) = v128;
    *(v118 + 12) = 2082;
    v129 = sub_100035120(v222, v110, &aBlock);

    *(v118 + 14) = v129;
    _os_log_impl(&_mh_execute_header, v116, v220, "Store at %{public}s requires migration from known version checksum: %{public}s", v118, 0x16u);
    swift_arrayDestroy();

    v130 = *(v221 + 8);
    v130(v199, v225);
    v63 = v219;
    v76 = v227;
    goto LABEL_31;
  }

  v176 = v200;
  static LoggedObject<>.logger.getter();
  v177 = v223;

  v178 = Logger.logObject.getter();
  v179 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v178, v179))
  {

    (*(v221 + 8))(v176, v225);
    goto LABEL_46;
  }

  LODWORD(v226) = v179;
  v222 = v111;
  v180 = swift_slowAlloc();
  v223 = swift_slowAlloc();
  aBlock = v223;
  *v180 = 136446466;
  v181 = [v177 URL];

  if (v181)
  {
    v182 = v196;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v183 = v214;
    v184 = v198;
    v185 = v182;
    v186 = v215;
    (*(v214 + 32))(v198, v185, v215);
    sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
    v187 = dispatch thunk of CustomStringConvertible.description.getter();
    v189 = v188;
    (*(v183 + 8))(v184, v186);
    v190 = sub_100035120(v187, v189, &aBlock);

    *(v180 + 4) = v190;
    *(v180 + 12) = 2082;
    v191 = sub_100035120(v222, v110, &aBlock);

    *(v180 + 14) = v191;
    _os_log_impl(&_mh_execute_header, v178, v226, "Store at %{public}s will not be migrated as it has an unknown version checksum: %{public}s", v180, 0x16u);
    swift_arrayDestroy();

    (*(v221 + 8))(v200, v225);
LABEL_46:
    v192 = v224;
    CocoaError._nsError.getter();
    swift_willThrow();
    (*(v227 + 8))(v192, v219);
    goto LABEL_40;
  }

LABEL_51:
  __break(1u);
}

uint64_t sub_100008614()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v37 - v13;
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v17 = v7[2];
  result = v17(v14, &v0[OBJC_IVAR____TtC11homeeventsd10MainDriver_storageDirectory], v6);
  if (*&v0[OBJC_IVAR____TtC11homeeventsd10MainDriver_localDatabaseName + 8])
  {
    v19 = *&v0[OBJC_IVAR____TtC11homeeventsd10MainDriver_localDatabaseName];
    URL.appendingPathComponent(_:)();
    v38 = v7[1];
    v38(v14, v6);
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
    static LoggedObject<>.logger.getter();
    v17(v11, v16, v6);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v42 = v23;
      *v22 = 136446210;
      sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v27 = v11;
      v28 = v38;
      v38(v27, v6);
      v29 = sub_100035120(v24, v26, &v42);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Computed storeURL: %{public}s", v22, 0xCu);
      sub_10000D330(v23);
    }

    else
    {

      v30 = v11;
      v28 = v38;
      v38(v30, v6);
    }

    (*(v40 + 8))(v41, v39);
    v31 = objc_allocWithZone(NSPersistentStoreDescription);
    URL._bridgeToObjectiveC()(v32);
    v34 = v33;
    v35 = [v31 initWithURL:v33];

    sub_10000D544(0, &qword_1000AADD0, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(2).super.super.isa;
    [v35 setOption:isa forKey:NSPersistentStoreConnectionPoolMaxSizeKey];

    v28(v16, v6);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100008AAC(void *a1, void *a2)
{
  v64 = a1;
  v4 = *v2;
  v5 = type metadata accessor for NSPersistentStore.StoreType();
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  __chkstk_darwin(v5);
  v65 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Logger();
  v70 = *(v73 - 8);
  v8 = *(v70 + 64);
  v9 = __chkstk_darwin(v73);
  v61 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v60 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v60 - v20;
  __chkstk_darwin(v19);
  v23 = v60 - v22;
  v63 = a2;
  v24 = [a2 URL];
  if (!v24)
  {
    goto LABEL_13;
  }

  v25 = v24;
  v68 = v5;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v14 + 32))(v23, v21, v13);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    (*(v14 + 8))(v23, v13);
LABEL_13:
    v71 = 0;
    v72 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v71 = 0xD00000000000002FLL;
    v72 = 0x80000001000883A0;
    v55 = [v64 persistentStoreDescriptions];
    sub_10000D544(0, &qword_1000AAD80, NSPersistentStoreDescription_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v56 = Array.description.getter();
    v58 = v57;

    v59._countAndFlagsBits = v56;
    v59._object = v58;
    String.append(_:)(v59);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v26 = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  v27 = sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  v60[2] = v26;
  v28 = v12;
  v60[1] = v27;
  v60[3] = v4;
  static LoggedObject<>.logger.getter();
  v29 = *(v14 + 16);
  v69 = v23;
  v29(v18, v23, v13);
  v30 = v14;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v13;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v60[0] = v28;
    v36 = v35;
    v71 = v35;
    *v34 = 136446210;
    sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v62 = *(v30 + 8);
    v62(v18, v33);
    v40 = sub_100035120(v37, v39, &v71);

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v31, v32, "Removing persistent store at %{public}s", v34, 0xCu);
    sub_10000D330(v36);

    v13 = v33;

    v41 = *(v70 + 8);
    v41(v60[0], v73);
  }

  else
  {

    v62 = *(v14 + 8);
    v62(v18, v13);
    v41 = *(v70 + 8);
    v41(v12, v73);
  }

  v42 = [v64 persistentStoreCoordinator];
  v43 = [v63 type];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = v65;
  NSPersistentStore.StoreType.init(rawValue:)();
  sub_10000CED0(&qword_1000AAD88, &qword_100085578);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085330;
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v46;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = 1;
  sub_100080590(inited);
  swift_setDeallocating();
  v47 = inited + 32;
  v48 = v44;
  sub_10000D620(v47, &qword_1000AAD90, &qword_100085580);
  v49 = v69;
  v50 = v66;
  NSPersistentStoreCoordinator.destroyPersistentStore(at:type:options:)();
  if (v50)
  {

    (*(v67 + 8))(v48, v68);
  }

  else
  {
    (*(v67 + 8))(v48, v68);

    v51 = [objc_opt_self() defaultManager];
    sub_100065740();

    static LoggedObject<>.logger.getter();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Successfully removed persistent store", v54, 2u);
    }

    v41(v61, v73);
  }

  v62(v49, v13);
}

id sub_100009388()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  static LoggedObject<>.logger.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Reset requested, setting reset request flag", v10, 2u);
  }

  (*(v4 + 8))(v7, v3);
  sub_10000D224((v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag), *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag + 24));
  type metadata accessor for FileBackedBooleanFlag();
  return sub_1000361B4(1);
}

void sub_1000095B0()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  static LoggedObject<>.logger.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Exiting", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  exit(0);
}

id sub_10000976C()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v15[1] = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  static LoggedObject<>.logger.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Clearing reset request flag", v12, 2u);
  }

  v13 = *(v4 + 8);
  v15[2] = v3;
  v13(v9, v3);
  sub_10000D224((v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag), *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_resetFlag + 24));
  type metadata accessor for FileBackedBooleanFlag();
  return sub_1000361B4(0);
}

uint64_t *sub_100009AF0()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v43 - v8;
  v10 = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  v43[1] = sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  v44 = v10;
  v45 = v1;
  static LoggedObject<>.logger.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = &MainDriver;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v47 = v15;
    *v14 = 136315138;
    type metadata accessor for URL();
    v46 = v7;
    v16 = v3;
    v17 = v2;
    sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = sub_100035120(v18, v19, &v47);
    v13 = &MainDriver;

    *(v14 + 4) = v20;
    v2 = v17;
    v3 = v16;
    v7 = v46;
    _os_log_impl(&_mh_execute_header, v11, v12, "Removing all files in storage directory '%s'", v14, 0xCu);
    sub_10000D330(v15);
  }

  v21 = *(v3 + 8);
  v21(v9, v2);
  v22 = [objc_opt_self() defaultManager];
  v23 = *&v13[38].flags;
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  v47 = 0;
  v27 = [v22 removeItemAtURL:v25 error:&v47];

  v28 = v47;
  if (v27)
  {

    return v28;
  }

  else
  {
    v43[0] = v2;
    v46 = v47;
    v30 = v47;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static LoggedObject<>.logger.getter();

    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v46 = v7;
      v34 = v33;
      v35 = swift_slowAlloc();
      v45 = v21;
      v36 = v35;
      v37 = swift_slowAlloc();
      v44 = v3;
      v38 = v37;
      v47 = v37;
      *v34 = 136315394;
      type metadata accessor for URL();
      sub_10000CE88(&qword_1000AAD60, &type metadata accessor for URL);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = sub_100035120(v39, v40, &v47);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2114;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v42;
      *v36 = v42;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to remove storage directory '%s': %{public}@", v34, 0x16u);
      sub_10000D620(v36, &unk_1000AB7D0, &qword_100085510);

      sub_10000D330(v38);

      return (v45)(v46, v43[0]);
    }

    else
    {

      return (v21)(v7, v43[0]);
    }
  }
}

void sub_10000A0CC(uint64_t a1, void *a2, void *a3)
{
  sub_10000D224((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_10000CED0(&qword_1000AAD20, &qword_100085528);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v6 = a2;
    sub_10000CED0(&qword_1000AAD20, &qword_100085528);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10000A174(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

void *sub_10000A210@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000A22C(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE78, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000A298(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE78, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000A304(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAEA8, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000A380(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAEA8, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000A3EC(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAEA8, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000A458(void *a1, uint64_t a2)
{
  v4 = sub_10000CE88(&qword_1000AAEA8, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000A50C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CE88(&qword_1000AAEA8, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000A5B0(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE30, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000A61C(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE30, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000A688(void *a1, uint64_t a2)
{
  v4 = sub_10000CE88(&qword_1000AAE30, type metadata accessor for BGSystemTaskSchedulerError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000A718(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CE88(&qword_1000AAE30, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000A794()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000A7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CE88(&qword_1000AAEA8, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000A878(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE38, type metadata accessor for BGSystemTaskSchedulerError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000A8E4(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE38, type metadata accessor for BGSystemTaskSchedulerError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000A950(uint64_t a1)
{
  v2 = sub_10000CE88(&qword_1000AAE30, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000A9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CE88(&qword_1000AAE30, type metadata accessor for BGSystemTaskSchedulerError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000AA40(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

id sub_10000AAEC()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000CED0(&qword_1000AADD8, &qword_1000855A8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for Constants();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, enum case for Constants.coreDataInMemoryDatabasePath(_:), v8);
  Constants.rawValue.getter();
  (*(v9 + 8))(v12, v8);
  (*(v14 + 56))(v7, 1, 1, v13);
  (*(v24 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v25);
  URL.init(filePath:directoryHint:relativeTo:)();
  v18 = objc_allocWithZone(NSPersistentStoreDescription);
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v22 = [v18 initWithURL:v20];

  (*(v14 + 8))(v17, v13);
  [v22 setType:NSInMemoryStoreType];
  return v22;
}

uint64_t sub_10000ADFC(void *a1)
{
  sub_10000CED0(&qword_1000AADA0, &qword_100085590);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100085340;
  *(v2 + 32) = sub_10000AAEC();
  sub_10000D544(0, &qword_1000AAD80, NSPersistentStoreDescription_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPersistentStoreDescriptions:isa];

  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v9[4] = sub_10000DDE0;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000A174;
  v9[3] = &unk_1000A1E80;
  v6 = _Block_copy(v9);

  [a1 loadPersistentStoresWithCompletionHandler:v6];
  _Block_release(v6);
  swift_beginAccess();
  if (*v5)
  {
    v7 = *v5;
    swift_willThrow();
    swift_errorRetain();
  }
}

NSStagedMigrationManager sub_10000AFB4()
{
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_10000D544(0, &qword_1000AADB0, NSLightweightMigrationStage_ptr);
  sub_10000CED0(&qword_1000AADB8, &qword_1000855A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100085330;
  *(v0 + 32) = 0xD00000000000002CLL;
  *(v0 + 40) = 0x8000000100088030;

  NSLightweightMigrationStage.init(_:)(v0);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v1 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  sub_10000CED0(&qword_1000AADB8, &qword_1000855A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100085330;
  *(v2 + 32) = 0xD00000000000002CLL;
  *(v2 + 40) = 0x8000000100088060;

  NSLightweightMigrationStage.init(_:)(v2);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v3 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  sub_10000CED0(&qword_1000AADB8, &qword_1000855A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100085330;
  *(v4 + 32) = 0xD00000000000002CLL;
  *(v4 + 40) = 0x8000000100088090;

  NSLightweightMigrationStage.init(_:)(v4);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v5 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    sub_10000D544(0, &qword_1000AADC0, NSMigrationStage_ptr);

    v6 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000D544(0, &qword_1000AADC0, NSMigrationStage_ptr);
    v6 = _swiftEmptyArrayStorage;
  }

  sub_10000D544(0, &qword_1000AADC8, NSStagedMigrationManager_ptr);
  return NSStagedMigrationManager.init(_:)(v6);
}

uint64_t sub_10000B258()
{
  v1 = sub_10000CED0(&qword_1000AAD20, &qword_100085528);
  v0[19] = v1;
  v2 = *(v1 - 8);
  v0[20] = v2;
  v3 = *(v2 + 64) + 15;
  v0[21] = swift_task_alloc();

  return _swift_task_switch(sub_10000B320, 0, 0);
}

uint64_t sub_10000B320()
{
  v1 = [objc_opt_self() defaultStore];
  v0[22] = v1;
  if (v1)
  {
    v2 = v1;
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[19];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10000B514;
    swift_continuation_init();
    v0[17] = v5;
    v6 = sub_10000CF2C(v0 + 14);
    sub_10000CED0(&qword_1000AAD28, &qword_100085530);
    sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
    CheckedContinuation.init(continuation:function:)();
    (*(v4 + 32))(v6, v3, v5);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000A0CC;
    v0[13] = &unk_1000A1DB8;
    [v2 aa_primaryAppleAccountWithCompletion:?];
    (*(v4 + 8))(v6, v5);
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10000B514()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_10000B6AC;
  }

  else
  {
    v3 = sub_10000B624;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000B624()
{
  v1 = *(v0 + 144);
  if (v1)
  {
  }

  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3(v1 != 0);
}

uint64_t sub_10000B6AC()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[23];

  return v4(0);
}

uint64_t sub_10000B72C()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v1;
  v5[1] = sub_10000B878;

  return sub_10000B258();
}

uint64_t sub_10000B878(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(v4 + 88) = v1;

  v7 = *(v4 + 16);
  if (v1)
  {
    v8 = sub_10000BD58;
  }

  else
  {
    *(v4 + 160) = a1 & 1;
    v8 = sub_10000B9B8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10000B9B8()
{
  v1 = *(v0 + 16);
  if (*(v0 + 160) == 1)
  {
    *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCloudKitLoggedIn) = 1;
LABEL_12:
    v27 = *(v0 + 64);
    v26 = *(v0 + 72);
    v29 = *(v0 + 48);
    v28 = *(v0 + 56);

    v30 = *(v0 + 8);

    return v30();
  }

  *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCloudKitLoggedIn) = 0;
  v2 = *(v1 + OBJC_IVAR____TtC11homeeventsd10MainDriver_localStorageProperties);
  *(v0 + 96) = v2;
  v3 = *(v0 + 24);
  if (!v2)
  {
    v18 = *(v0 + 56);
    sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
    sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
    static LoggedObject<>.logger.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 56);
    v23 = *(v0 + 32);
    v24 = *(v0 + 40);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "We're no longer logged in and we also don't have a persistent container", v25, 2u);
    }

    (*(v24 + 8))(v22, v23);
    goto LABEL_12;
  }

  v4 = *(v0 + 72);
  *(v0 + 104) = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  *(v0 + 112) = sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  v5 = v2;
  static LoggedObject<>.logger.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Primary apple account is no longer logged in, clearing the local database", v8, 2u);
  }

  v9 = *(v0 + 72);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  v12 = *(v0 + 16);

  v13 = *(v11 + 8);
  *(v0 + 120) = v13;
  v13(v9, v10);
  v14 = *(v12 + OBJC_IVAR____TtC11homeeventsd10MainDriver_maxCloudKitRecordsPerOperation);
  type metadata accessor for CoreDataDatabase();
  v15 = swift_allocObject();
  *(v0 + 128) = v15;
  *(v15 + 16) = [v5 newBackgroundContext];
  *(v15 + 24) = v14;
  *(v15 + 32) = 0;
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  *v16 = v0;
  v16[1] = sub_10000BF6C;

  return sub_10007257C();
}

uint64_t sub_10000BD58()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[3];
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  static LoggedObject<>.logger.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to retrieve primary apple account, not doing anything: %{public}@", v6, 0xCu);
    sub_10000D620(v7, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  v10 = v0[8];
  v9 = v0[9];
  v12 = v0[6];
  v11 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10000BF6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v7 = *(v3 + 16);
  if (v1)
  {
    v8 = sub_10000C200;
  }

  else
  {
    v8 = sub_10000C0A0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10000C0A0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  static LoggedObject<>.logger.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 128);
    v9 = *(v0 + 96);
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Deleted %ld events from the local database", v10, 0xCu);
  }

  else
  {
    v11 = *(v0 + 128);
    v9 = *(v0 + 96);
  }

  v12 = *(v0 + 40) + 8;
  (*(v0 + 120))(*(v0 + 64), *(v0 + 32));
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10000C200()
{
  v1 = v0[16];
  v2 = v0[12];

  v3 = v0[19];
  v4 = v0[6];
  v5 = v0[3];
  sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  static LoggedObject<>.logger.getter();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to retrieve primary apple account, not doing anything: %{public}@", v8, 0xCu);
    sub_10000D620(v9, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  v12 = v0[8];
  v11 = v0[9];
  v14 = v0[6];
  v13 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10000C424()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = type metadata accessor for Logger();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_10000C530, v0, 0);
}

uint64_t sub_10000C530()
{
  v1 = v0[12];
  v2 = v0[6];
  v0[13] = sub_10000CE88(&unk_1000AAD10, type metadata accessor for MainDriver);
  v0[14] = sub_10000CE88(&qword_1000AAD08, type metadata accessor for MainDriver);
  static LoggedObject<>.logger.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Handling CloudKit account notification", v5, 2u);
  }

  v6 = v0[12];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[5];

  v10 = *(v8 + 8);
  v0[15] = v10;
  v10(v6, v7);
  v11 = *(v9 + OBJC_IVAR____TtC11homeeventsd10MainDriver_cloudKitContainer);
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_10000C70C;

  return sub_100063294(v11);
}

uint64_t sub_10000C70C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_10000C984;
  }

  else
  {
    v6 = sub_10000C838;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10000C838()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[6];
  static LoggedObject<>.logger.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "CloudKit thinks we're logged in", v7, 2u);
  }

  v8 = v0[15];
  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[5];

  v8(v9, v10);
  *(v12 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCloudKitLoggedIn) = 1;
  v14 = v0[11];
  v13 = v0[12];
  v16 = v0[9];
  v15 = v0[10];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10000C984()
{
  *(v0 + 32) = *(v0 + 136);
  swift_errorRetain();
  sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
  if (!swift_dynamicCast())
  {
LABEL_4:
    v2 = *(v0 + 136);
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 32);

    static LoggedObject<>.logger.getter();
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 136);
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to get CloudKit's status: %{public}@", v12, 0xCu);
      sub_10000D620(v13, &unk_1000AB7D0, &qword_100085510);
    }

    else
    {
      v15 = *(v0 + 136);
    }

    v16 = *(v0 + 40);
    v17 = *(v0 + 64) + 8;
    (*(v0 + 120))(*(v0 + 72), *(v0 + 56));
    *(v16 + OBJC_IVAR____TtC11homeeventsd10MainDriver_isCloudKitLoggedIn) = 1;
    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);

    v22 = *(v0 + 8);

    return v22();
  }

  v1 = *(v0 + 24);
  if (v1)
  {
    sub_10000CF18(*(v0 + 16), v1);
    goto LABEL_4;
  }

  v24 = *(v0 + 136);
  v25 = *(v0 + 104);
  v26 = *(v0 + 112);
  v27 = *(v0 + 80);
  v28 = *(v0 + 48);

  static LoggedObject<>.logger.getter();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "CloudKit thinks we're logged out", v31, 2u);
  }

  v32 = *(v0 + 120);
  v33 = *(v0 + 80);
  v34 = *(v0 + 56);
  v35 = *(v0 + 64);

  v32(v33, v34);
  v36 = swift_task_alloc();
  *(v0 + 144) = v36;
  *v36 = v0;
  v36[1] = sub_10000CCEC;
  v37 = *(v0 + 40);

  return sub_10000B72C();
}

uint64_t sub_10000CCEC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10000CDFC, v2, 0);
}

uint64_t sub_10000CDFC()
{
  v1 = v0[4];

  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10000CE88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000CED0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000CF18(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t *sub_10000CF2C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000CFA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000D018()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 50, 7);
}

uint64_t sub_10000D058(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 49);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000D130;

  return sub_1000061E0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10000D130()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_10000D224(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000D268()
{
  result = qword_1000AAD40;
  if (!qword_1000AAD40)
  {
    sub_100003988(&qword_1000AAD38, &qword_100085558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAD40);
  }

  return result;
}

uint64_t sub_10000D2CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000D330(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000D37C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10000D3D0()
{
  result = qword_1000AAD68;
  if (!qword_1000AAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAD68);
  }

  return result;
}

uint64_t sub_10000D424()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D464(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000D47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AAD98, &qword_100085588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D4EC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10000D544(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_10000D58C(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000D620(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000CED0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D690(uint64_t a1, int a2)
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

uint64_t sub_10000D6D8(uint64_t result, int a2, int a3)
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

uint64_t sub_10000D790(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D7B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_10000D920(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_10000DAD4()
{
  result = qword_1000AAE60;
  if (!qword_1000AAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAE60);
  }

  return result;
}

void sub_10000DDF4()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_weakLoadStrong())
  {

    v6 = *&v0[OBJC_IVAR____TtC11homeeventsd9XPCServer_listener];
    os_unfair_lock_lock((v6 + 32));
    v7 = *(v6 + 16);
    os_unfair_lock_unlock((v6 + 32));
    if (v7)
    {
      sub_10000E874();
      static LoggedObject.logger.getter();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Starting server that was already started", v10, 2u);
      }

      (*(v2 + 8))(v5, v1);
    }

    else
    {
      v11 = *&v0[OBJC_IVAR____TtC11homeeventsd9XPCServer_serviceName];
      v12 = *&v0[OBJC_IVAR____TtC11homeeventsd9XPCServer_serviceName + 8];
      v13 = objc_allocWithZone(NSXPCListener);
      v14 = String._bridgeToObjectiveC()();
      v15 = [v13 initWithMachServiceName:v14];

      v16 = _s8ListenerCMa();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtCC11homeeventsd9XPCServer8Listener_hmDelegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v17[OBJC_IVAR____TtCC11homeeventsd9XPCServer8Listener_listener] = v15;
      v19.receiver = v17;
      v19.super_class = v16;
      v18 = objc_msgSendSuper2(&v19, "init");
      sub_10000E8C8(v18, v0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000E044()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC11homeeventsd9XPCServer_listener];
  os_unfair_lock_lock((v6 + 32));
  v7 = *(v6 + 16);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  os_unfair_lock_unlock((v6 + 32));
  if (v7)
  {
    [*(v7 + OBJC_IVAR____TtCC11homeeventsd9XPCServer8Listener_listener) invalidate];
  }

  sub_10000E874();
  static LoggedObject.logger.getter();
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100035120(*&v8[OBJC_IVAR____TtC11homeeventsd9XPCServer_serviceName], *&v8[OBJC_IVAR____TtC11homeeventsd9XPCServer_serviceName + 8], &v15);
    _os_log_impl(&_mh_execute_header, v9, v10, "No longer listening for connections to %{public}s", v11, 0xCu);
    sub_10000D330(v12);
  }

  swift_unknownObjectRelease();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_10000E254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000D2CC(a4, v8);
  type metadata accessor for XPCServerProxy();
  swift_allocObject();
  swift_unknownObjectRetain();

  return sub_10004E6BC(v8, a1, a2, a3);
}

id sub_10000E308()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000E3E8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(a1 + 24);
    type metadata accessor for XPCServer();
    sub_10000E874();
    static LoggedObject.logger.getter();
    swift_unknownObjectRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      swift_getObjectType();
      v18[1] = v8;
      v14 = *(v9 + 8);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = sub_100035120(v15, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Connection interrupted: %{public}s", v12, 0xCu);
      sub_10000D330(v13);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_10000E604(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(a1 + 24);
    type metadata accessor for XPCServer();
    sub_10000E874();
    static LoggedObject.logger.getter();
    swift_unknownObjectRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v22[0] = v13;
      *v12 = 136446210;
      swift_getObjectType();
      v21[1] = v8;
      v14 = *(v9 + 8);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = sub_100035120(v15, v16, v22);
      v21[0] = v2;
      v18 = v9;
      v19 = v17;

      *(v12 + 4) = v19;
      v9 = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Connection invalidated: %{public}s", v12, 0xCu);
      sub_10000D330(v13);

      (*(v3 + 8))(v6, v21[0]);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    ObjectType = swift_getObjectType();
    memset(v22, 0, sizeof(v22));
    (*(v9 + 144))(v22, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10000E874()
{
  result = qword_1000AAFD8;
  if (!qword_1000AAFD8)
  {
    type metadata accessor for XPCServer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AAFD8);
  }

  return result;
}

uint64_t sub_10000E8C8(void *a1, char *a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&a2[OBJC_IVAR____TtC11homeeventsd9XPCServer_listener];
  os_unfair_lock_lock((v9 + 32));
  v10 = *(v9 + 16);
  swift_unknownObjectRelease();
  *(v9 + 16) = a1;
  *(v9 + 24) = &off_1000A2F68;
  v11 = a1;
  os_unfair_lock_unlock((v9 + 32));
  v12 = *&v11[OBJC_IVAR____TtCC11homeeventsd9XPCServer8Listener_listener];
  [v12 setDelegate:v11];
  *&v11[OBJC_IVAR____TtCC11homeeventsd9XPCServer8Listener_hmDelegate + 8] = &off_1000A2098;
  swift_unknownObjectWeakAssign();
  [v12 activate];
  sub_10000E874();
  static LoggedObject.logger.getter();
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_100035120(*&v13[OBJC_IVAR____TtC11homeeventsd9XPCServer_serviceName], *&v13[OBJC_IVAR____TtC11homeeventsd9XPCServer_serviceName + 8], &v20);
    _os_log_impl(&_mh_execute_header, v14, v15, "Listening for new connections to %{public}s", v16, 0xCu);
    sub_10000D330(v17);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10000EB14()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for Logger();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10000ECB0, v0, 0);
}

uint64_t sub_10000ECB0()
{
  v85 = v0;
  static Task<>.checkCancellation()();
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[3];
  v7 = v0[4];
  v8 = OBJC_IVAR____TtCC11homeeventsd21EventDigestController15DefaultDelegate_configuration;
  v9 = v6 + *(_s15DefaultDelegateC13ConfigurationVMa(0) + 28) + v8;
  URL.deletingLastPathComponent()();
  sub_10000F2E8(&qword_1000AAFE0);
  sub_10000F2E8(&qword_1000AAFE8);
  static LoggedObject<>.logger.getter();
  v79 = *(v3 + 16);
  v79(v2, v1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[12];
  v15 = v0[9];
  v14 = v0[10];
  v16 = v0[8];
  v17 = v0[5];
  v18 = v0[6];
  if (v12)
  {
    v19 = swift_slowAlloc();
    v77 = v16;
    v20 = swift_slowAlloc();
    v84 = v20;
    *v19 = 136315138;
    v73 = v11;
    v21 = URL.path.getter();
    v75 = v17;
    v23 = v22;
    v24 = v15;
    v25 = *(v14 + 8);
    v25(v13, v24);
    v26 = sub_100035120(v21, v23, &v84);

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v10, v73, "Ensuring existence of '%s'", v19, 0xCu);
    sub_10000D330(v20);

    v27 = *(v18 + 8);
    v27(v77, v75);
  }

  else
  {

    v28 = v15;
    v25 = *(v14 + 8);
    v25(v13, v28);
    v27 = *(v18 + 8);
    v27(v16, v17);
  }

  v29 = v0[13];
  v30 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v0[2] = 0;
  v34 = [v30 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v0 + 2];

  v35 = v0[2];
  v36 = v0[13];
  if (v34)
  {
    v38 = v0[11];
    v37 = v0[12];
    v39 = v0[9];
    v41 = v0[7];
    v40 = v0[8];
    v42 = v0[10] + 8;
    v43 = v35;
    v25(v36, v39);

    v44 = v0[1];
  }

  else
  {
    v45 = v0[11];
    v46 = v0[9];
    v47 = v0[7];
    v48 = v0[4];
    v49 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static LoggedObject<>.logger.getter();
    v79(v45, v36, v46);
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    v81 = v51;
    v52 = os_log_type_enabled(v50, v51);
    v54 = v0[10];
    v53 = v0[11];
    v55 = v0[9];
    v56 = v0[7];
    v83 = v0[6];
    v57 = v0[5];
    if (v52)
    {
      v80 = v0[5];
      v58 = swift_slowAlloc();
      v82 = v25;
      v59 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v84 = v74;
      *v58 = 136315394;
      v76 = v56;
      v78 = v27;
      v60 = URL.path.getter();
      v62 = v61;
      v82(v53, v55);
      v63 = sub_100035120(v60, v62, &v84);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2112;
      swift_errorRetain();
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v64;
      *v59 = v64;
      _os_log_impl(&_mh_execute_header, v50, v81, "Failed to create '%s': %@", v58, 0x16u);
      sub_10000F32C(v59);
      v25 = v82;

      sub_10000D330(v74);

      v78(v76, v80);
    }

    else
    {

      v25(v53, v55);
      v27(v56, v57);
    }

    v65 = v0[13];
    v66 = v0[9];
    swift_willThrow();
    v25(v65, v66);
    v68 = v0[12];
    v67 = v0[13];
    v69 = v0[11];
    v71 = v0[7];
    v70 = v0[8];

    v44 = v0[1];
  }

  return v44();
}

uint64_t sub_10000F2E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s15DefaultDelegateCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F32C(uint64_t a1)
{
  v2 = sub_10000CED0(&unk_1000AB7D0, &qword_100085510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F394(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 440) = a3;
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;
  v4 = type metadata accessor for Logger();
  *(v3 + 192) = v4;
  v5 = *(v4 - 8);
  *(v3 + 200) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();

  return _swift_task_switch(sub_10000F4B8, 0, 0);
}

void sub_10000F4B8()
{
  if ((*(v0 + 440) & 1) != 0 || *(v0 + 184) >= 1)
  {
    v1 = *(v0 + 176);
    v23 = *(v0 + 440);
    type metadata accessor for Configuration();
    *(v0 + 40) = sub_10000CED0(&qword_1000AAFF0, &qword_100085C70);
    *(v0 + 48) = swift_getOpaqueTypeConformance2();
    sub_10000CF2C((v0 + 16));
    static Configuration.defaultFeaturesDataSource.getter();
    sub_10000D2CC(v1, v0 + 56);
    v22 = static Configuration.cloudKitContainer.getter();
    v2 = sub_10000CED0(&qword_1000AAFF8, &qword_100085C78);
    v3 = SimpleAsyncCache.__allocating_init()();
    *(v0 + 120) = v2;
    *(v0 + 128) = sub_100011108();
    *(v0 + 96) = v3;
    v21 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
    v20 = static Constants.maxCloudKitRecordsPerOperation.getter();
    v4 = *(v0 + 80);
    v5 = sub_10001116C(v0 + 56, v4);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64) + 15;
    v8 = swift_task_alloc();
    (*(v6 + 16))(v8, v5, v4);
    v9 = *v8;
    v10 = type metadata accessor for CoreDataDatabase();
    *(v0 + 136) = v9;
    *(v0 + 160) = v10;
    *(v0 + 168) = &off_1000A42B8;
    *(v0 + 280) = type metadata accessor for EventUploader();
    v11 = swift_allocObject();
    *(v0 + 288) = v11;
    v12 = sub_10001116C(v0 + 136, v10);
    v13 = *(v10 - 8);
    v14 = *(v13 + 64) + 15;
    v15 = swift_task_alloc();
    (*(v13 + 16))(v15, v12, v10);
    v11[7] = *v15;
    v11[10] = v10;
    v11[11] = &off_1000A42B8;
    sub_1000111BC((v0 + 16), (v11 + 2));
    v11[12] = v22;
    sub_1000111BC((v0 + 96), (v11 + 13));
    v11[20] = v21;
    v11[21] = v20;
    v11[18] = 0;
    v11[19] = 0;
    sub_10000D330((v0 + 136));

    sub_10000D330((v0 + 56));

    if (v23)
    {
      v16 = *sub_10000D224(v11 + 7, v11[10]);
      v17 = swift_task_alloc();
      *(v0 + 296) = v17;
      *v17 = v0;
      v18 = sub_10000F844;
    }

    else
    {
      *(v0 + 360) = 0;
      v19 = *sub_10000D224((*(v0 + 288) + 56), *(*(v0 + 288) + 80));
      v17 = swift_task_alloc();
      *(v0 + 368) = v17;
      *v17 = v0;
      v18 = sub_10000FFB8;
    }

    v17[1] = v18;

    sub_100078894();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000F844(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v7 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {
    v5 = sub_10000FC2C;
  }

  else
  {
    v5 = sub_10000F958;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000F958()
{
  v1 = v0[38];
  v0[40] = sub_1000111D4();
  v2 = v0[35];
  if (v1 < 1)
  {
    v16 = v0[32];
    v17 = v0[35];
    static LoggedObject.logger.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[36];
    v22 = v0[32];
    v23 = v0[24];
    v24 = v0[25];
    if (v20)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No pending events to upload", v25, 2u);
    }

    else
    {
      v26 = v0[36];
    }

    (*(v24 + 8))(v22, v23);
    v28 = v0[33];
    v27 = v0[34];
    v30 = v0[31];
    v29 = v0[32];
    v32 = v0[29];
    v31 = v0[30];
    v34 = v0[27];
    v33 = v0[28];
    v35 = v0[26];

    v36 = v0[1];

    return v36();
  }

  else
  {
    v3 = v0[34];
    v4 = v0[35];
    static LoggedObject.logger.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[38];
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v5, v6, "Uploading %ld pending events", v8, 0xCu);
    }

    v9 = v0[34];
    v10 = v0[24];
    v11 = v0[25];

    v12 = *(v11 + 8);
    v0[41] = v12;
    v0[42] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v9, v10);
    v13 = swift_task_alloc();
    v0[43] = v13;
    *v13 = v0;
    v13[1] = sub_10000FD14;
    v14 = v0[36];

    return sub_10006A528();
  }
}

uint64_t sub_10000FC2C()
{
  v13 = v0[39];
  v1 = v0[36];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[26];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10000FD14()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_100011020;
  }

  else
  {
    v3 = sub_10000FE28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000FE28()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 264);
  v3 = *(v0 + 280);
  static LoggedObject.logger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Successfully uploaded all %ld pending events", v8, 0xCu);
  }

  else
  {
    v9 = *(v0 + 288);
  }

  v10 = *(v0 + 336);
  (*(v0 + 328))(*(v0 + 264), *(v0 + 192));
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v14 = *(v0 + 248);
  v13 = *(v0 + 256);
  v16 = *(v0 + 232);
  v15 = *(v0 + 240);
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 208);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10000FFB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v7 = sub_100010674;
  }

  else
  {
    *(v4 + 384) = a1;
    v7 = sub_1000100E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000100E0()
{
  v75 = v0;
  v1 = v0[48];
  v2 = v0[45];
  sub_1000111D4();
  v3 = v0[35];
  if (v1 <= 0)
  {
    if (v2)
    {
      v22 = v0[26];
      v23 = v0[35];
      static LoggedObject.logger.getter();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v0[36];
      v28 = v0[25];
      v29 = v0[26];
      v30 = v0[24];
      if (v26)
      {
        v73 = v0[26];
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v74 = v32;
        *v31 = 134218242;
        *(v31 + 4) = v2;
        *(v31 + 12) = 2080;
        if (v2 == 1)
        {
          v33 = 0;
        }

        else
        {
          v33 = 29541;
        }

        if (v2 == 1)
        {
          v34 = 0xE000000000000000;
        }

        else
        {
          v34 = 0xE200000000000000;
        }

        v35 = sub_100035120(v33, v34, &v74);

        *(v31 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v24, v25, "Successfully uploaded %ld batch%s of pending events", v31, 0x16u);
        sub_10000D330(v32);

        (*(v28 + 8))(v73, v30);
      }

      else
      {
        v61 = v0[36];

        (*(v28 + 8))(v29, v30);
      }
    }

    else
    {
      v51 = v0[27];
      v52 = v0[35];
      static LoggedObject.logger.getter();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v0[36];
      v57 = v0[27];
      v58 = v0[24];
      v59 = v0[25];
      if (v55)
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "No pending events to upload", v60, 2u);
      }

      else
      {
        v62 = v0[36];
      }

      (*(v59 + 8))(v57, v58);
    }

    v64 = v0[33];
    v63 = v0[34];
    v66 = v0[31];
    v65 = v0[32];
    v68 = v0[29];
    v67 = v0[30];
    v70 = v0[27];
    v69 = v0[28];
    v71 = v0[26];

    v72 = v0[1];

    return v72();
  }

  else
  {
    if (v2)
    {
      v4 = v0[30];
      v5 = v0[35];
      static LoggedObject.logger.getter();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Pending events remaining, starting another upload", v8, 2u);
      }

      v9 = v0[35];
      v11 = v0[29];
      v10 = v0[30];
      v12 = v0[24];
      v13 = v0[25];

      v14 = *(v13 + 8);
      v14(v10, v12);
      static LoggedObject.logger.getter();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v0[45];
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        *(v18 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v15, v16, "Batch %ld", v18, 0xCu);
      }

      v19 = v0[29];
      v20 = v0[24];
      v21 = v0[25];

      v14(v19, v20);
    }

    else
    {
      v36 = v0[31];
      v37 = v0[35];
      static LoggedObject.logger.getter();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v0[31];
      v42 = v0[24];
      v43 = v0[25];
      if (v40)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Uploading pending events", v44, 2u);
      }

      v14 = *(v43 + 8);
      v14(v41, v42);
    }

    v0[49] = v14;
    v45 = v0[36];
    v46 = sub_10000D224(v45 + 7, v45[10]);
    v47 = v45[21];
    v48 = *v46;
    v49 = swift_task_alloc();
    v0[50] = v49;
    *v49 = v0;
    v49[1] = sub_10001075C;

    return sub_100075500(v47);
  }
}

uint64_t sub_100010674()
{
  v13 = v0[47];
  v1 = v0[36];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[26];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10001075C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  v4[51] = a1;
  v4[52] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000109F4, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[53] = v7;
    *v7 = v6;
    v7[1] = sub_1000108E0;
    v8 = v4[36];

    return sub_10006C0E8(a1);
  }
}

uint64_t sub_1000108E0()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_100010F30;
  }

  else
  {
    v3 = sub_100010ADC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000109F4()
{
  v13 = v0[52];
  v1 = v0[36];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[26];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100010ADC()
{
  v57 = v0;
  v1 = v0[51];
  v2 = v0[35];
  v3 = v0[28];

  sub_1000111D4();
  static LoggedObject.logger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[45];
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Finished uploading pending events (batch %ld)", v7, 0xCu);
  }

  v8 = v0[49];
  v9 = v0[45];
  v10 = v0[28];
  v11 = v0[24];
  v12 = v0[25];

  result = v8(v10, v11);
  v14 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v15 = v0[23];
    if (v14 == v15)
    {
      v16 = v0[35];
      if (v15)
      {
        v17 = v0[26];
        v18 = v0[35];
        static LoggedObject.logger.getter();
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        v21 = os_log_type_enabled(v19, v20);
        v22 = v0[36];
        v23 = v0[25];
        v24 = v0[26];
        v25 = v0[24];
        if (v21)
        {
          v55 = v0[26];
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v56 = v27;
          *v26 = 134218242;
          *(v26 + 4) = v15;
          *(v26 + 12) = 2080;
          if (v15 == 1)
          {
            v28 = 0;
          }

          else
          {
            v28 = 29541;
          }

          if (v15 == 1)
          {
            v29 = 0xE000000000000000;
          }

          else
          {
            v29 = 0xE200000000000000;
          }

          v30 = sub_100035120(v28, v29, &v56);

          *(v26 + 14) = v30;
          _os_log_impl(&_mh_execute_header, v19, v20, "Successfully uploaded %ld batch%s of pending events", v26, 0x16u);
          sub_10000D330(v27);

          (*(v23 + 8))(v55, v25);
        }

        else
        {
          v43 = v0[36];

          (*(v23 + 8))(v24, v25);
        }
      }

      else
      {
        v33 = v0[27];
        v34 = v0[35];
        static LoggedObject.logger.getter();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        v37 = os_log_type_enabled(v35, v36);
        v38 = v0[36];
        v39 = v0[27];
        v40 = v0[24];
        v41 = v0[25];
        if (v37)
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "No pending events to upload", v42, 2u);
        }

        else
        {
          v44 = v0[36];
        }

        (*(v41 + 8))(v39, v40);
      }

      v46 = v0[33];
      v45 = v0[34];
      v48 = v0[31];
      v47 = v0[32];
      v50 = v0[29];
      v49 = v0[30];
      v52 = v0[27];
      v51 = v0[28];
      v53 = v0[26];

      v54 = v0[1];

      return v54();
    }

    else
    {
      v0[45] = v14;
      v31 = *sub_10000D224((v0[36] + 56), *(v0[36] + 80));
      v32 = swift_task_alloc();
      v0[46] = v32;
      *v32 = v0;
      v32[1] = sub_10000FFB8;

      return sub_100078894();
    }
  }

  return result;
}

uint64_t sub_100010F30()
{
  v1 = v0[51];

  v14 = v0[54];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[26];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100011020()
{
  v13 = v0[44];
  v1 = v0[36];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[26];

  v11 = v0[1];

  return v11();
}

unint64_t sub_100011108()
{
  result = qword_1000AB000;
  if (!qword_1000AB000)
  {
    sub_100003988(&qword_1000AAFF8, &qword_100085C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB000);
  }

  return result;
}

uint64_t sub_10001116C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000111BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1000111D4()
{
  result = qword_1000AB008;
  if (!qword_1000AB008)
  {
    type metadata accessor for EventUploader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB008);
  }

  return result;
}

uint64_t sub_100011230(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(v4);
  *&v13[OBJC_IVAR____TtC11homeeventsd25CloudUploadResultLogEvent_numErrorResults] = a2;
  v13[OBJC_IVAR____TtC11homeeventsd25CloudUploadResultLogEvent_attributedToFakeData] = a3;
  v45.receiver = v13;
  v45.super_class = v4;
  v14 = objc_msgSendSuper2(&v45, "init");
  type metadata accessor for MetricsManager();
  static MetricsManager.sharedInstance.getter();
  v15 = v14;
  MetricsManager.submitLogEvent(_:error:)();

  sub_1000118AC();
  static LoggedObject.logger.getter();
  v16 = v15;
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v17, v18))
  {

    return (*(v9 + 8))(v12, v8);
  }

  v41 = v18;
  v19 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v44 = v40;
  *v19 = 136446466;
  v42 = v16;
  v20 = sub_1000115EC();
  v21 = *(v20 + 16);
  if (!v21)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v34 = v17;
  v35 = v12;
  v36 = v9;
  v37 = v8;
  v22 = sub_100032ABC(v21, 0);
  v38 = sub_100033338(&v43, v22 + 4, v21, v20);

  sub_1000123C4();
  if (v38 == v21)
  {
    v9 = v36;
    v8 = v37;
    v17 = v34;
    v12 = v35;
LABEL_7:
    v43 = v22;
    sub_100011900(&v43);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v23 = Array.description.getter();
    v25 = v24;

    v26 = sub_100035120(v23, v25, &v44);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2114;
    if (a1)
    {
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = v27;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v29 = v42;
    v30 = v41;
    v32 = v39;
    v31 = v40;
    *(v19 + 14) = v27;
    *v32 = v28;
    _os_log_impl(&_mh_execute_header, v17, v30, "Submitted CloudUploadResultLogEvent: %{public}s, with error: %{public}@", v19, 0x16u);
    sub_10000F32C(v32);

    sub_10000D330(v31);

    return (*(v9 + 8))(v12, v8);
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1000115EC()
{
  sub_10000CED0(&unk_1000AB060, &unk_100085D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085C80;
  *(inited + 32) = 0x6C61746F546D756ELL;
  *(inited + 40) = 0xEF73746C75736552;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *(inited + 56) = 0x726F7272456D756ELL;
  *(inited + 64) = 0xEF73746C75736552;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + OBJC_IVAR____TtC11homeeventsd25CloudUploadResultLogEvent_numErrorResults)];
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000100088B40;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + OBJC_IVAR____TtC11homeeventsd25CloudUploadResultLogEvent_attributedToFakeData)];
  v2 = sub_1000806CC(inited);
  swift_setDeallocating();
  sub_10000CED0(&qword_1000AB3B0, &qword_100086230);
  swift_arrayDestroy();
  return v2;
}

unint64_t sub_1000118AC()
{
  result = qword_1000AB048;
  if (!qword_1000AB048)
  {
    type metadata accessor for CloudUploadResultLogEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB048);
  }

  return result;
}

Swift::Int sub_100011900(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100033600(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10001196C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10001196C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100011B58(v7, v8, a1, v4);
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
    return sub_100011A74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100011A74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100011B58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_100033324(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_100012164((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = (v30 + v23);
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000225F8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1000225F8((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
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
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_100012164((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100033324(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_100033298(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_100012164(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

unint64_t sub_1000123CC()
{
  result = qword_1000AB070;
  if (!qword_1000AB070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000AB070);
  }

  return result;
}

unint64_t sub_100012418()
{
  sub_10000CED0(&unk_1000AB060, &unk_100085D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085D10;
  *(inited + 32) = 0x64756F6C436D756ELL;
  *(inited + 40) = 0xEF7364616F6C7055;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + OBJC_IVAR____TtC11homeeventsd25CloudUploadVolumeLogEvent_numCloudUploads)];
  *(inited + 56) = 0x424B656D756C6F76;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + OBJC_IVAR____TtC11homeeventsd25CloudUploadVolumeLogEvent_volumeKB)];
  *(inited + 80) = 0x726F6365526D756ELL;
  *(inited + 88) = 0xEA00000000007364;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + OBJC_IVAR____TtC11homeeventsd25CloudUploadVolumeLogEvent_numRecords)];
  *(inited + 104) = 0xD000000000000014;
  *(inited + 112) = 0x8000000100088B40;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithBool:*(v0 + OBJC_IVAR____TtC11homeeventsd25CloudUploadVolumeLogEvent_attributedToFakeData)];
  v2 = sub_1000806CC(inited);
  swift_setDeallocating();
  sub_10000CED0(&qword_1000AB3B0, &qword_100086230);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_100012718(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10001272C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100012774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1000127D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000127E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001283C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100012898(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000128C8(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = type metadata accessor for Configuration.TargetCloudKitZone();
  v2[28] = v3;
  v4 = *(v3 - 8);
  v2[29] = v4;
  v5 = *(v4 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  v2[32] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[36] = v8;
  v9 = *(v8 - 8);
  v2[37] = v9;
  v10 = *(v9 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v2[41] = v11;
  v12 = *(v11 - 8);
  v2[42] = v12;
  v13 = *(v12 + 64) + 15;
  v2[43] = swift_task_alloc();

  return _swift_task_switch(sub_100012AB8, 0, 0);
}

uint64_t sub_100012AB8()
{
  v55 = v0;
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[35];
  v7 = v0[26];
  v6 = v0[27];
  type metadata accessor for XPCServer();
  sub_100013470(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  v53 = *(v4 + 16);
  (v53)(v2, v7, v3);
  sub_100013358(v6, v5, &qword_1000AB0C8, &qword_100085F18);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[42];
  v11 = v0[43];
  v13 = v0[40];
  v14 = v0[41];
  v15 = v0[36];
  v16 = v0[37];
  v17 = v0[35];
  if (v10)
  {
    v44 = v0[34];
    v46 = v0[32];
    v50 = v0[41];
    v18 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v18 = 141558530;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2080;
    sub_100013470(&qword_1000AB0D8, &type metadata accessor for UUID);
    v48 = v11;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v9;
    v21 = v20;
    v52 = *(v16 + 8);
    v52(v13, v15);
    v22 = sub_100035120(v19, v21, &v54);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2080;
    sub_100013358(v17, v44, &qword_1000AB0C8, &qword_100085F18);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    sub_10000D620(v17, &qword_1000AB0C8, &qword_100085F18);
    v26 = sub_100035120(v23, v25, &v54);

    *(v18 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v8, v42, "Ensuring digests for home: %{mask.hash}s, creation date %s", v18, 0x20u);
    swift_arrayDestroy();

    (*(v12 + 8))(v48, v50);
  }

  else
  {

    sub_10000D620(v17, &qword_1000AB0C8, &qword_100085F18);
    v52 = *(v16 + 8);
    v52(v13, v15);
    (*(v12 + 8))(v11, v14);
  }

  v28 = v0[38];
  v27 = v0[39];
  v29 = v0[36];
  v30 = v0[34];
  v51 = v0[33];
  v31 = v0[31];
  v43 = v27;
  v45 = v31;
  v49 = v0[30];
  v33 = v0[28];
  v32 = v0[29];
  v34 = v0[26];
  v35 = v0[27];
  v53();
  v47 = v33;
  (*(v32 + 104))(v31, enum case for Configuration.TargetCloudKitZone.energyKit(_:), v33);
  sub_100013358(v35, v30, &qword_1000AB0C8, &qword_100085F18);
  type metadata accessor for Configuration();
  v0[5] = sub_10000CED0(&qword_1000AAFF0, &qword_100085C70);
  v0[6] = swift_getOpaqueTypeConformance2();
  sub_10000CF2C(v0 + 2);
  static Configuration.defaultFeaturesDataSource.getter();
  sub_10000D2CC((v0 + 2), (v0 + 7));
  v36 = _s15DefaultDelegateCMa(0);
  (v53)(v28, v43, v29);
  sub_100013358((v0 + 7), (v0 + 12), &qword_1000AB0D0, &unk_100085F20);
  (*(v32 + 16))(v49, v45, v33);
  v37 = v30;
  sub_100013358(v30, v51, &qword_1000AB0C8, &qword_100085F18);
  v38 = sub_10004A42C(v28, (v0 + 12), 0, v49, 1, 0, 0, 1, v51);
  sub_10000D620((v0 + 7), &qword_1000AB0D0, &unk_100085F20);
  sub_1000133C0((v0 + 2), (v0 + 17));
  type metadata accessor for EventDigestController();
  v39 = swift_allocObject();
  v0[44] = v39;
  *(v39 + 96) = 0;
  *(v39 + 104) = 0;
  sub_1000133C0((v0 + 17), v39 + 16);
  *(v39 + 80) = v36;
  *(v39 + 88) = &off_1000A2F40;
  *(v39 + 56) = v38;
  sub_10001341C((v0 + 17));
  sub_10000D620(v37, &qword_1000AB0C8, &qword_100085F18);
  (*(v32 + 8))(v45, v47);
  v52(v43, v29);
  sub_10001341C((v0 + 2));
  sub_100060B20();
  v40 = swift_task_alloc();
  v0[45] = v40;
  *v40 = v0;
  v40[1] = sub_1000130C0;

  return sub_100060D34();
}

uint64_t sub_1000130C0(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 192) = a2;
  *(v4 + 176) = v2;
  *(v4 + 184) = a1;
  v5 = *(v3 + 360);
  v7 = *v2;
  *(v4 + 368) = a2;

  return _swift_task_switch(sub_1000131C8, 0, 0);
}

uint64_t sub_1000131C8()
{
  if (*(v0 + 368))
  {
    v2 = *(v0 + 344);
    v1 = *(v0 + 352);
    v4 = *(v0 + 312);
    v3 = *(v0 + 320);
    v5 = *(v0 + 304);
    v7 = *(v0 + 272);
    v6 = *(v0 + 280);
    v8 = *(v0 + 264);
    v21 = *(v0 + 248);
    v22 = *(v0 + 240);
    *(v0 + 200) = *(v0 + 184);
    sub_10000CED0(&unk_1000AAB08, &qword_1000853D0);
    swift_willThrowTypedImpl();
  }

  else
  {
    v11 = *(v0 + 344);
    v10 = *(v0 + 352);
    v13 = *(v0 + 312);
    v12 = *(v0 + 320);
    v14 = *(v0 + 304);
    v16 = *(v0 + 272);
    v15 = *(v0 + 280);
    v17 = *(v0 + 264);
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100013358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CED0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100013470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000134B8(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 184) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  v4 = type metadata accessor for DiagnosticFileCollector();
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v3 + 48) = v6;
  v7 = *(v6 - 8);
  *(v3 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v9 = *(*(sub_10000CED0(&qword_1000AADD8, &qword_1000855A8) - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v10 = type metadata accessor for URL.DirectoryHint();
  *(v3 + 80) = v10;
  v11 = *(v10 - 8);
  *(v3 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v13 = type metadata accessor for Constants();
  *(v3 + 104) = v13;
  v14 = *(v13 - 8);
  *(v3 + 112) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  v16 = type metadata accessor for URL();
  *(v3 + 128) = v16;
  v17 = *(v16 - 8);
  *(v3 + 136) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_1000136F8, 0, 0);
}

uint64_t sub_1000136F8()
{
  v36 = v0;
  v21 = *(v0 + 136);
  v22 = *(v0 + 144);
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 72);
  v23 = *(v0 + 80);
  v26 = *(v0 + 64);
  v27 = *(v0 + 56);
  v28 = *(v0 + 48);
  v33 = *(v0 + 40);
  v34 = *(v0 + 32);
  v32 = *(v0 + 184);
  v30 = *(v0 + 16);
  v31 = *(v0 + 24);
  (*(v3 + 104))(v1, enum case for Constants.diagnosticsTargetDirectoryPath(_:), v4);
  Constants.rawValue.getter();
  (*(v3 + 8))(v1, v4);
  v25 = enum case for URL.DirectoryHint.isDirectory(_:);
  v24 = *(v6 + 104);
  v24(v5);
  (*(v21 + 56))(v7, 1, 1, v2);
  URL.init(filePath:directoryHint:relativeTo:)();
  sub_10000CED0(&qword_1000AADB8, &qword_1000855A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100085F30;
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v27 + 8))(v26, v28);
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 48) = 0xD000000000000010;
  *(v8 + 56) = 0x8000000100088D70;
  (v24)(v5, v25, v23);
  sub_100013D50();
  URL.appending<A>(components:directoryHint:)();

  (*(v6 + 8))(v5, v23);
  v29 = *(v21 + 8);
  *(v0 + 152) = v29;
  *(v0 + 160) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v22, v2);
  v12 = *(v21 + 16);
  v12(v22, v30, v2);
  type metadata accessor for Configuration();
  v13 = static Configuration.cloudKitContainer.getter();
  *v33 = v32;
  *(v33 + 8) = v31;
  v12(v33 + v34[6], v22, v2);
  *(v33 + v34[7]) = v13;
  v14 = objc_allocWithZone(CKOperationGroup);
  v15 = v31;
  v16 = v13;
  v17 = [v14 init];
  v35 = v17;
  sub_10001EAE4(&v35, v16);

  v29(v22, v2);
  *(v33 + v34[8]) = v17;
  v18 = swift_task_alloc();
  *(v0 + 168) = v18;
  *v18 = v0;
  v18[1] = sub_100013AA4;
  v19 = *(v0 + 40);

  return sub_10001E5E0();
}

uint64_t sub_100013AA4()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_100013C70;
  }

  else
  {
    v3 = sub_100013BB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100013BB8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  sub_100013DA4(v0[5]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100013C70()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[12];
  v7 = v0[9];
  v12 = v0[8];
  v8 = v0[2];
  sub_100013DA4(v0[5]);
  v1(v8, v4);

  v9 = v0[1];
  v10 = v0[22];

  return v9();
}

unint64_t sub_100013D50()
{
  result = qword_1000AB0E0;
  if (!qword_1000AB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB0E0);
  }

  return result;
}

uint64_t sub_100013DA4(uint64_t a1)
{
  v2 = type metadata accessor for DiagnosticFileCollector();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  swift_errorRetain();
}

Swift::Int sub_100013E60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0xFFFF00010000uLL >> (16 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_100013EF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0xFFFF00010000uLL >> (16 * v1));
  return Hasher._finalize()();
}

_BYTE *sub_100013F40@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x10002u >> (8 * (*result + 1));
  if ((*result + 1) >= 3u)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100013FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000140C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Date();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for PendingEventData()
{
  result = qword_1000AB140;
  if (!qword_1000AB140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014218()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1000142D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000142D4()
{
  if (!qword_1000AB150)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000AB150);
    }
  }
}

uint64_t getEnumTagSinglePayload for TargetDatabase(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TargetDatabase(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000144C4()
{
  result = qword_1000AB198;
  if (!qword_1000AB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB198);
  }

  return result;
}

uint64_t sub_100014518(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  v33 = a1;
  v34 = *v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  __chkstk_darwin(v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = type metadata accessor for DispatchQoS();
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v37);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000D544(0, &qword_1000AB280, OS_dispatch_source_ptr);
  sub_10000D544(0, &qword_1000AB288, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v18 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v17, v13);
  v19 = v33;
  v20 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = v36;
  *(v21 + 24) = v35;
  *(v21 + 32) = v22;
  *(v21 + 40) = v34;
  aBlock[4] = sub_100014E88;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004CB28;
  aBlock[3] = &unk_1000A22C0;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100014B50();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v23);
  (*(v38 + 8))(v8, v39);
  (*(v9 + 8))(v12, v37);

  OS_dispatch_source.resume()();
  swift_beginAccess();
  v24 = v4[14];
  if (*(v24 + 16) && (v25 = sub_10007B67C(v19), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = SIG_IGN.getter();
    signal(v19, v28);
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  v29 = v4[14];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v4[14];
  v4[14] = 0x8000000000000000;
  sub_10007E598(v20, v19, isUniquelyReferenced_nonNull_native);
  v4[14] = v40;
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_100014974(int a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014F14(&qword_1000AB2A8, v9, type metadata accessor for SignalHandler);
  sub_100014F14(&qword_1000AB278, v10, type metadata accessor for SignalHandler);
  static LoggedObject<>.logger.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received signal %d", v13, 8u);
  }

  v14 = (*(v5 + 8))(v8, v4);
  return a2(v14);
}

uint64_t sub_100014B50()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100014F14(&qword_1000AB290, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CED0(&qword_1000AB298, &qword_1000860B8);
  sub_100014EB0();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100014C0C()
{
  result = swift_beginAccess();
  v2 = 0;
  v3 = *(v0 + 112);
  *(v0 + 112) = &_swiftEmptyDictionarySingleton;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  for (i = (v4 + 63) >> 6; v6; result = swift_unknownObjectRelease())
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v8 << 6);
    v11 = *(*(v3 + 48) + 4 * v10);
    v12 = *(*(v3 + 56) + 8 * v10);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    v13 = SIG_DFL.getter();
    signal(v11, v13);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100014D34()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100014D90()
{
  type metadata accessor for SignalHandler();
  sub_100014F14(&qword_1000AB278, v0, type metadata accessor for SignalHandler);

  return static LoggedObject<>.logger.getter();
}

uint64_t sub_100014E18()
{
  type metadata accessor for SignalHandler();

  return static LoggedObject.logCategory.getter();
}

uint64_t sub_100014E50()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014E88()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_100014974(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_100014E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100014EB0()
{
  result = qword_1000AB2A0;
  if (!qword_1000AB2A0)
  {
    sub_100003988(&qword_1000AB298, &qword_1000860B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB2A0);
  }

  return result;
}

uint64_t sub_100014F14(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100014F5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D617374656ALL;
  if (v2 != 1)
  {
    v4 = 0x64696C6176;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6873617263;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D617374656ALL;
  if (*a2 != 1)
  {
    v8 = 0x64696C6176;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6873617263;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10001504C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000150E4()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100015168()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000151FC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001784C(*a1);
  *a2 = result;
  return result;
}

void sub_10001522C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D617374656ALL;
  if (v2 != 1)
  {
    v5 = 0x64696C6176;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6873617263;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_100015290(uint64_t a1, char a2, char a3)
{
  v7 = &v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTimeMetadataKey];
  *v7 = 0xD000000000000012;
  v7[1] = 0x8000000100088E20;
  v8 = &v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTime];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_numLaunchesWithPendingEvents];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_numPendingEventsAtLaunch];
  *v10 = 0;
  v10[8] = 1;
  *&v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_pendingEventsFetchFailureCount] = -1;
  v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitType] = 3;
  v11 = &v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitReason];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_metricsManager;
  type metadata accessor for MetricsManager();
  *&v3[v12] = static MetricsManager.sharedInstance.getter();
  sub_100017898(a1, &v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_database]);
  v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_attributedToFakeData] = a2;
  v3[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_launchedByClientRequest] = a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for ProcessLaunchLogEvent();
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_10000D620(a1, &qword_1000AB3A8, &unk_100086220);
  return v13;
}

uint64_t sub_1000153EC()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[7] = v5;
  *v5 = v1;
  v5[1] = sub_1000154E4;

  return sub_100015754();
}

uint64_t sub_1000154E4()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_1000155E0, 0, 0);
}

uint64_t sub_1000155E0()
{
  v1 = [objc_opt_self() currentProcess];
  v2 = [v1 lastExitContext];

  if (v2)
  {
    v3 = v0[2];
    sub_1000165D4(v2);
  }

  else
  {
    v4 = v0[6];
    v5 = v0[3];
    sub_100017908();
    static LoggedObject.logger.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No lastExitContext found for current process, not setting exit properties", v12, 2u);
    }

    (*(v10 + 8))(v9, v11);
  }

  v13 = v0[6];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100015754()
{
  v1[16] = v0;
  v1[17] = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_100015844, 0, 0);
}

uint64_t sub_100015844()
{
  sub_100017898(*(v0 + 128) + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_database, v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 128);
    sub_1000111BC((v0 + 56), v0 + 16);
    v2 = sub_10000D224((v0 + 16), *(v0 + 40));
    v3 = v1 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTimeMetadataKey;
    v4 = *(v1 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTimeMetadataKey);
    *(v0 + 192) = v4;
    v5 = *(v3 + 8);
    *(v0 + 200) = v5;
    v6 = *v2;
    v7 = swift_task_alloc();
    *(v0 + 208) = v7;
    *v7 = v0;
    v7[1] = sub_100015A64;

    return sub_100073A78(v4, v5);
  }

  else
  {
    v9 = *(v0 + 160);
    v10 = *(v0 + 136);
    sub_10000D620(v0 + 56, &qword_1000AB3A8, &unk_100086220);
    sub_100017908();
    static LoggedObject.logger.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 152);
    v14 = *(v0 + 160);
    v16 = *(v0 + 144);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Cannot call setLaunchProperties without a valid database -- setting all properties to nil", v17, 2u);
    }

    (*(v15 + 8))(v14, v16);
    v19 = *(v0 + 176);
    v18 = *(v0 + 184);
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_100015A64(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = v2;
  v4[13] = a1;
  v4[14] = a2;
  v5 = v3[26];
  v7 = *v2;
  v4[27] = a2;

  return _swift_task_switch(sub_100015B6C, 0, 0);
}

uint64_t sub_100015B6C()
{
  v33 = v0;
  v1 = v0[27];
  if (v1)
  {
    v0[15] = 0;
    v2 = v0[16];
    v3 = sub_100017754(v0[13], v1);

    v4 = v0[15];
    if (!v3)
    {
      v4 = 0;
    }

    v5 = v2 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTime;
    *v5 = v4;
    *(v5 + 8) = !v3;
  }

  else
  {
    v6 = v0[23];
    v8 = v0[16];
    v7 = v0[17];
    sub_100017908();
    static LoggedObject.logger.getter();
    v9 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[24];
      v12 = v0[25];
      v14 = v0[23];
      v15 = v0[18];
      v16 = v0[19];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_100035120(v13, v12, &v32);
      _os_log_impl(&_mh_execute_header, v10, v11, "Found no value for %{public}s in metadata store", v17, 0xCu);
      sub_10000D330(v18);

      (*(v16 + 8))(v14, v15);
    }

    else
    {
      v19 = v0[23];
      v20 = v0[18];
      v21 = v0[19];

      (*(v21 + 8))(v19, v20);
    }
  }

  v22 = v0[16];
  v23 = sub_10000D224(v0 + 2, v0[5]);
  [v22 startTime];
  v24 = Double.description.getter();
  v26 = v25;
  v0[28] = v25;
  v27 = *v23;
  v28 = swift_task_alloc();
  v0[29] = v28;
  *v28 = v0;
  v28[1] = sub_100015DEC;
  v30 = v0[24];
  v29 = v0[25];

  return sub_100072A74(v30, v29, v24, v26);
}

uint64_t sub_100015DEC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 224);

  if (v0)
  {
    v6 = sub_100015FBC;
  }

  else
  {
    v6 = sub_100015F20;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100015F20()
{
  v1 = *sub_10000D224(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_100016224;

  return sub_100078894();
}

uint64_t sub_100015FBC()
{
  v27 = v0;
  v1 = v0[30];
  v2 = v0[22];
  v4 = v0[16];
  v3 = v0[17];
  sub_100017908();
  static LoggedObject.logger.getter();
  v5 = v4;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[30];
  if (v8)
  {
    v10 = v0[24];
    v11 = v0[25];
    v12 = v0[19];
    v24 = v0[18];
    v25 = v0[22];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v13 = 136446466;
    *(v13 + 4) = sub_100035120(v10, v11, &v26);
    *(v13 + 12) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Encountered error when saving metadata for %{public}s: %{public}@", v13, 0x16u);
    sub_10000D620(v14, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v15);

    (*(v12 + 8))(v25, v24);
  }

  else
  {
    v17 = v0[22];
    v18 = v0[18];
    v19 = v0[19];
    v20 = v0[30];

    (*(v19 + 8))(v17, v18);
  }

  v21 = *sub_10000D224(v0 + 2, v0[5]);
  v22 = swift_task_alloc();
  v0[31] = v22;
  *v22 = v0;
  v22[1] = sub_100016224;

  return sub_100078894();
}

uint64_t sub_100016224(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = sub_1000163F4;
  }

  else
  {
    *(v4 + 264) = a1;
    v7 = sub_10001634C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001634C()
{
  v1 = v0[16] + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_numPendingEventsAtLaunch;
  *v1 = v0[33];
  *(v1 + 8) = 0;
  sub_10000D330(v0 + 2);
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000163F4()
{
  v1 = v0[32];
  v2 = v0[16];
  v3 = v0[17];
  v4 = *(v2 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_pendingEventsFetchFailureCount);
  v5 = v0[21];
  v6 = v2 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_numPendingEventsAtLaunch;
  *v6 = v4;
  *(v6 + 8) = 0;
  sub_100017908();
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[32];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Encountered error when trying to count pending events in the database: %{public}@", v11, 0xCu);
    sub_10000D620(v12, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
    v14 = v0[32];
  }

  (*(v0[19] + 8))(v0[21], v0[18]);
  sub_10000D330(v0 + 2);
  v16 = v0[22];
  v15 = v0[23];
  v18 = v0[20];
  v17 = v0[21];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000165D4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 status];
  if (v9)
  {
    v10 = v9;
    if ([v9 isJetsam])
    {
      v11 = 1;
    }

    else if ([v10 isCrash])
    {
      v11 = 0;
    }

    else
    {
      if (![v10 isValid])
      {
LABEL_12:
        v16 = [v10 error];
        swift_getErrorValue();
        v17 = Error.localizedDescription.getter();
        v19 = v18;

        v20 = (v2 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitReason);
        v21 = *(v2 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitReason + 8);
        *v20 = v17;
        v20[1] = v19;
      }

      v11 = 2;
    }

    *(v1 + OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitType) = v11;
    goto LABEL_12;
  }

  sub_100017908();
  static LoggedObject.logger.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Found no metadata from previous exit context, so not setting properties", v14, 2u);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100016808()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_metricsManager];
  MetricsManager.submitLogEvent(_:error:)();
  sub_100017908();
  static LoggedObject.logger.getter();
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_7;
  }

  v11 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v31 = v28;
  v29 = v11;
  *v11 = 136446210;
  v12 = [v8 coreAnalyticsEventDictionary];
  sub_1000123CC();
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(v13 + 16);
  if (!v14)
  {
    v15 = &_swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v24 = v10;
  v25 = v9;
  v26 = v3;
  v27 = v2;
  v15 = sub_100032ABC(v14, 0);
  v16 = sub_100033338(&v30, v15 + 4, v14, v13);

  sub_1000123C4();
  if (v16 == v14)
  {
    v3 = v26;
    v2 = v27;
    v9 = v25;
    LOBYTE(v10) = v24;
LABEL_6:
    v30 = v15;
    sub_100011900(&v30);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v17 = Array.description.getter();
    v19 = v18;

    v20 = sub_100035120(v17, v19, &v31);

    v21 = v29;
    *(v29 + 1) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Submitted ProcessLaunchLogEvent: %{public}s", v21, 0xCu);
    sub_10000D330(v28);

LABEL_7:

    return (*(v3 + 8))(v6, v2);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100016B30()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_metricsManager];
  MetricsManager.submitLogEvent(_:error:)();
  sub_100017908();
  static LoggedObject.logger.getter();
  v8 = v1;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_7;
  }

  v31 = v10;
  v11 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v33 = v30;
  *v11 = 136446466;
  v12 = [v8 coreAnalyticsEventDictionary];
  sub_1000123CC();
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(v13 + 16);
  if (!v14)
  {
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v24 = v11;
  v25 = v9;
  v26 = v3;
  v27 = v2;
  v15 = sub_100032ABC(v14, 0);
  v28 = sub_100033338(&v32, v15 + 4, v14, v13);

  sub_1000123C4();
  if (v28 == v14)
  {
    v3 = v26;
    v2 = v27;
    v11 = v24;
    v9 = v25;
LABEL_6:
    v32 = v15;
    sub_100011900(&v32);

    sub_10000CED0(&unk_1000AB050, &unk_100085CF0);
    v16 = Array.description.getter();
    v18 = v17;

    v19 = sub_100035120(v16, v18, &v33);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v20;
    v21 = v29;
    *v29 = v20;
    _os_log_impl(&_mh_execute_header, v9, v31, "Submitted ProcessLaunchLogEvent: %{public}s with error: %{public}@", v11, 0x16u);
    sub_10000D620(v21, &unk_1000AB7D0, &qword_100085510);

    sub_10000D330(v30);

LABEL_7:

    return (*(v3 + 8))(v6, v2);
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_100016F24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessLaunchLogEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000170B4()
{
  v1 = v0;
  sub_10000CED0(&unk_1000AB060, &unk_100085D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000860C0;
  *(inited + 32) = 0x636E75614C6D756ELL;
  *(inited + 40) = 0xEB00000000736568;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  *(inited + 56) = 0x68736172436D756ELL;
  *(inited + 64) = 0xEA00000000007365;
  v3 = OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitType;
  if (v0[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitType] > 1u)
  {
    if (v0[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitType] != 2)
    {
      goto LABEL_7;
    }
  }

  else if (!v0[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitType])
  {

    v4 = 1;
    goto LABEL_8;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    v4 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v4 = 0;
LABEL_8:
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:v4];
  *(inited + 80) = 0x617374654A6D756ELL;
  *(inited + 88) = 0xEA0000000000736DLL;
  if (v1[v3] > 1u)
  {
    if (v1[v3] != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v1[v3])
  {

    v6 = 1;
    goto LABEL_15;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    v6 = 1;
    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
LABEL_15:
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithInteger:v6];
  *(inited + 104) = 0xD00000000000001ALL;
  *(inited + 112) = 0x8000000100088F00;
  *(inited + 120) = [objc_allocWithZone(NSNumber) initWithInteger:v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_launchedByClientRequest]];
  *(inited + 128) = 0xD000000000000026;
  *(inited + 136) = 0x8000000100088F20;
  *(inited + 144) = [objc_allocWithZone(NSNumber) initWithInteger:v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_attributedToFakeData]];
  v8 = sub_1000806CC(inited);
  swift_setDeallocating();
  sub_10000CED0(&qword_1000AB3B0, &qword_100086230);
  swift_arrayDestroy();
  if ((v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_numPendingEventsAtLaunch + 8] & 1) == 0)
  {
    v9 = *&v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_numPendingEventsAtLaunch];
    v10 = [objc_allocWithZone(NSNumber) initWithInteger:v9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10007E6E4(v10, 0xD000000000000018, 0x8000000100088E60, isUniquelyReferenced_nonNull_native);
    v12 = [objc_allocWithZone(NSNumber) initWithInteger:v9 > 0];
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_10007E6E4(v12, 0xD00000000000001CLL, 0x8000000100088E40, v13);
  }

  if (v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTime + 8])
  {
    goto LABEL_22;
  }

  v14 = *&v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousLaunchTime];
  result = [v1 startTime];
  v17 = (v16 - v14) * 1000.0;
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v18 = [objc_allocWithZone(NSNumber) initWithInteger:v17];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_10007E6E4(v18, 0xD00000000000001FLL, 0x8000000100088F50, v19);
LABEL_22:
  if (v1[v3] <= 2u)
  {
    v20 = objc_allocWithZone(NSString);
    v21 = String._bridgeToObjectiveC()();

    v22 = [v20 initWithString:v21];

    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_10007E6E4(v22, 0xD000000000000010, 0x8000000100088EA0, v23);
  }

  if (*&v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitReason + 8])
  {
    v24 = *&v1[OBJC_IVAR____TtC11homeeventsd21ProcessLaunchLogEvent_previousExitReason];
    v25 = objc_allocWithZone(NSString);

    v26 = String._bridgeToObjectiveC()();

    v27 = [v25 initWithString:v26];

    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_10007E6E4(v27, 0xD000000000000012, 0x8000000100088EC0, v28);
  }

  return v8;
}

unint64_t sub_100017690()
{
  result = qword_1000AB390;
  if (!qword_1000AB390)
  {
    sub_100003988(&qword_1000AB398, " X");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB390);
  }

  return result;
}

unint64_t sub_1000176F8()
{
  result = qword_1000AB3A0;
  if (!qword_1000AB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3A0);
  }

  return result;
}

BOOL sub_100017754(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_10001784C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A1B50, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100017898(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CED0(&qword_1000AB3A8, &unk_100086220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100017908()
{
  result = qword_1000AB3B8;
  if (!qword_1000AB3B8)
  {
    type metadata accessor for ProcessLaunchLogEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3B8);
  }

  return result;
}

_BYTE *sub_10001795C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1000179DC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_100017A78(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v25 - v9;
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  v13 = *(a1 + 16);
  sub_10001DA10(&unk_1000AC310, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v12, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_10002F2E4(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100017CD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 80) = a2;
  *(v8 + 88) = a4;
  *(v8 + 232) = a3;
  *(v8 + 72) = a1;
  v9 = type metadata accessor for UUID();
  *(v8 + 128) = v9;
  v10 = *(v9 - 8);
  *(v8 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  v12 = *(*(sub_10000CED0(&qword_1000AB3C0, &qword_100086268) - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v13 = sub_10000CED0(&qword_1000AB3C8, &qword_100086270);
  *(v8 + 176) = v13;
  v14 = *(v13 - 8);
  *(v8 + 184) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v16 = *(*(sub_10000CED0(&qword_1000AAD30, &qword_100085540) - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100017E98, 0, 0);
}

uint64_t sub_100017E98()
{
  if (*(v0 + 232) == 1)
  {
    v1 = *(v0 + 200);
    v2 = *(v0 + 96);
    v3 = *(v0 + 104);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    v7[5] = v2;
    v7[6] = v3;
    sub_10001C794(v5, v2);

    sub_100018AA8(v1, &unk_1000862A0, v7);
    sub_10000D620(v1, &qword_1000AAD30, &qword_100085540);
  }

  v8 = *(v0 + 192);
  v9 = *(v0 + 200);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 104);
  v13 = *(v0 + 80);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_10000D2CC(v10, v0 + 16);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v12;
  v15[5] = v11;
  sub_1000111BC((v0 + 16), (v15 + 6));

  sub_100018AA8(v9, &unk_100086280, v15);
  sub_10000D620(v9, &qword_1000AAD30, &qword_100085540);
  v16 = *v13;
  sub_10000CED0(&qword_1000AB3D0, &qword_100086288);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 208) = &_swiftEmptyDictionarySingleton;
  *(v0 + 216) = &_swiftEmptyDictionarySingleton;
  v17 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v18 = swift_task_alloc();
  *(v0 + 224) = v18;
  *v18 = v0;
  v18[1] = sub_10001811C;
  v19 = *(v0 + 192);
  v20 = *(v0 + 176);

  return TaskGroup.Iterator.next(isolation:)(v0 + 56, 0, 0, v20);
}

uint64_t sub_10001811C()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return _swift_task_switch(sub_100018218, 0, 0);
}

uint64_t sub_100018218(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 56);
  if (v5)
  {
    v6 = 0;
    v69 = *(v4 + 56);
    v8 = v5 + 64;
    v7 = *(v5 + 64);
    v68 = v8;
    v9 = -1;
    v10 = -1 << *(v8 - 32);
    if (-v10 < 64)
    {
      v9 = ~(-1 << -v10);
    }

    v11 = v9 & v7;
    v12 = (63 - v10) >> 6;
    v13 = *(v4 + 208);
    for (i = v12; ; v12 = i)
    {
      v71 = v13;
      if (!v11)
      {
        if (v12 <= v6 + 1)
        {
          v17 = v6 + 1;
        }

        else
        {
          v17 = v12;
        }

        v18 = v17 - 1;
        while (1)
        {
          v16 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v16 >= v12)
          {
            v52 = *(v4 + 160);
            v53 = sub_10000CED0(&qword_1000AB3D8, &qword_100086290);
            (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
            v11 = 0;
            goto LABEL_17;
          }

          v11 = *(v68 + 8 * v16);
          ++v6;
          if (v11)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(a1, a2, a3, a4);
      }

      v16 = v6;
LABEL_16:
      v20 = *(v4 + 152);
      v19 = *(v4 + 160);
      v22 = *(v4 + 128);
      v21 = *(v4 + 136);
      v23 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v24 = v23 | (v16 << 6);
      (*(v21 + 16))(v20, *(v69 + 48) + *(v21 + 72) * v24, v22);
      v25 = *(*(v69 + 56) + 8 * v24);
      v26 = sub_10000CED0(&qword_1000AB3D8, &qword_100086290);
      v27 = *(v26 + 48);
      (*(v21 + 32))(v19, v20, v22);
      *(v19 + v27) = v25;
      (*(*(v26 - 8) + 56))(v19, 0, 1, v26);
      swift_errorRetain();
      v18 = v16;
LABEL_17:
      v28 = *(v4 + 168);
      sub_10001C608(*(v4 + 160), v28);
      v29 = sub_10000CED0(&qword_1000AB3D8, &qword_100086290);
      if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
      {

        *(v4 + 208) = v71;
        v55 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
        v56 = swift_task_alloc();
        *(v4 + 224) = v56;
        *v56 = v4;
        v56[1] = sub_10001811C;
        v57 = *(v4 + 192);
        a4 = *(v4 + 176);
        a1 = v4 + 56;
        a2 = 0;
        a3 = 0;

        return TaskGroup.Iterator.next(isolation:)(a1, a2, a3, a4);
      }

      v30 = *(v4 + 144);
      v31 = *(v4 + 128);
      v32 = *(*(v4 + 168) + *(v29 + 48));
      (*(*(v4 + 136) + 32))(v30);
      swift_errorRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 64) = v71.i64[0];
      a1 = sub_10007B6C4(v30);
      v34 = *(v71.i64[0] + 16);
      v35 = (a2 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        goto LABEL_38;
      }

      v38 = a2;
      if (*(v71.i64[0] + 24) >= v37)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = a1;
          sub_10007F178();
          a1 = v54;
        }
      }

      else
      {
        v39 = *(v4 + 144);
        sub_10007C614(v37, isUniquelyReferenced_nonNull_native);
        v40 = *(v4 + 64);
        a1 = sub_10007B6C4(v39);
        if ((v38 & 1) != (v41 & 1))
        {
          v67 = *(v4 + 128);

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v42 = *(v4 + 64);
      v44 = *(v4 + 136);
      v43 = *(v4 + 144);
      v45 = *(v4 + 128);
      if (v38)
      {
        v14 = v42[7];
        v15 = *(v14 + 8 * a1);
        *(v14 + 8 * a1) = v32;

        a1 = (*(v44 + 8))(v43, v45);
        v13 = vdupq_n_s64(v42);
        v6 = v18;
      }

      else
      {
        v46 = v18;
        v42[(a1 >> 6) + 8] |= 1 << a1;
        v48 = *(v44 + 16);
        v47 = v44 + 16;
        v49 = a1;
        v48(v42[6] + *(v47 + 56) * a1, v43, v45);
        *(v42[7] + 8 * v49) = v32;

        a1 = (*(v47 - 8))(v43, v45);
        v50 = v42[2];
        v36 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v36)
        {
          goto LABEL_39;
        }

        v42[2] = v51;
        v13 = vdupq_n_s64(v42);
        v6 = v46;
      }
    }
  }

  v58 = *(v4 + 216);
  v59 = *(v4 + 200);
  v61 = *(v4 + 160);
  v60 = *(v4 + 168);
  v63 = *(v4 + 144);
  v62 = *(v4 + 152);
  v64 = *(v4 + 72);
  (*(*(v4 + 184) + 8))(*(v4 + 192), *(v4 + 176));
  *v64 = v58;

  v65 = *(v4 + 8);

  return v65();
}

uint64_t sub_1000187B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_1000187DC, 0, 0);
}

uint64_t sub_1000187DC()
{
  v12 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = v1;
    v4 = v2;
  }

  else
  {
    type metadata accessor for Configuration();
    v5 = static Configuration.cloudKitContainer.getter();
    v6 = [v5 privateCloudDatabase];

    v7 = objc_allocWithZone(CKOperationGroup);
    v3 = v6;
    v4 = [v7 init];
    v11 = v4;
    sub_100068834(&v11, v3, 25);
  }

  v0[6] = v3;
  v0[7] = v4;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_100018930;
  v9 = v0[5];

  return sub_10001C7D4(v9, v3, v4);
}

uint64_t sub_100018930(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100018A30, 0, 0);
}

uint64_t sub_100018A30()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);

  *v3 = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100018AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000CED0(&qword_1000AAD30, &qword_100085540);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v22 - v10;
  sub_10001DA7C(a1, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000D620(v11, &qword_1000AAD30, &qword_100085540);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of Actor.unownedExecutor.getter();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  sub_10000CED0(&qword_1000AB3D0, &qword_100086288);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_100018CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100018D90, 0, 0);
}

uint64_t sub_100018D90()
{
  v23 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  v5 = sub_10004DF38(v4, v2);
  *(v0 + 80) = v5;
  *(v0 + 88) = type metadata accessor for XPCServer();
  *(v0 + 96) = sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 72);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  if (v8)
  {
    v21 = *(v0 + 72);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    type metadata accessor for UUID();
    sub_10001DA10(&unk_1000AC310, &type metadata accessor for UUID);
    v14 = Set.description.getter();
    v16 = sub_100035120(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Removing all local events for homes %s", v12, 0xCu);
    sub_10000D330(v13);

    v17 = *(v10 + 8);
    v17(v21, v11);
  }

  else
  {

    v17 = *(v10 + 8);
    v17(v9, v11);
  }

  *(v0 + 104) = v17;
  v18 = *sub_10000D224(*(v0 + 40), *(*(v0 + 40) + 24));
  v19 = swift_task_alloc();
  *(v0 + 112) = v19;
  *v19 = v0;
  v19[1] = sub_100019028;

  return sub_100077E7C(v5);
}

uint64_t sub_100019028()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1000191E0;
  }

  else
  {
    v4 = sub_100019158;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100019158()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[2];
  *v3 = sub_1000807D0(&_swiftEmptyArrayStorage);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000191E0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = *(v0 + 88);
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 120);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to remove local events: %@", v9, 0xCu);
    sub_10000D620(v10, &unk_1000AB7D0, &qword_100085510);
  }

  else
  {
    v12 = *(v0 + 120);
  }

  v13 = *(v0 + 56) + 8;
  (*(v0 + 104))(*(v0 + 64), *(v0 + 48));
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 16);
  *v16 = sub_1000807D0(&_swiftEmptyArrayStorage);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100019398(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_10001948C;

  return v6(v2 + 16);
}

uint64_t sub_10001948C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000195BC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_10001DA10(&unk_1000AC310, &type metadata accessor for UUID);
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
      sub_10002F2E4(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_100019758(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 416) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  v6 = type metadata accessor for Configuration.TargetCloudKitZone();
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v5 + 128) = v9;
  v10 = *(v9 - 8);
  *(v5 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v5 + 208) = v12;
  v13 = *(v12 - 8);
  *(v5 + 216) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_100019950, 0, 0);
}

uint64_t sub_100019950()
{
  v76 = v0;
  super_class = v0[3].super_class;
  if (super_class)
  {
    v2 = static Configuration.TargetCloudKitZone.allCases.getter();
    v0[3].receiver = _swiftEmptyArrayStorage;
    v55 = super_class;
    v3 = *(super_class + 2);
    sub_1000179DC(v3);
    v60 = v3;
    if (v3)
    {
      v4 = v0[13].super_class;
      v5 = v0[8].super_class;
      receiver = v0[6].receiver;
      type metadata accessor for XPCServer();
      v7 = 0;
      v73 = *(v2 + 16);
      v8 = *(v4 + 2);
      v4 = (v4 + 16);
      v63 = v55 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v64 = v8;
      v70 = (v4 - 8);
      v62 = (v5 + 8);
      v72 = enum case for Configuration.TargetCloudKitZone.default(_:);
      v71 = enum case for Configuration.TargetCloudKitZone.energyKit(_:);
      v61 = *(v4 + 7);
      while (1)
      {
        v66 = v0[14].super_class;
        v68 = v0[14].receiver;
        v65 = v7;
        v10 = v0[12].super_class;
        v9 = v0[13].receiver;
        v64();
        sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer);
        static LoggedObject.logger.getter();
        (v64)(v68, v66, v9);
        v11 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();
        v12 = os_log_type_enabled(v11, v67);
        v13 = v0[14].receiver;
        v14 = v0[12].super_class;
        v15 = v0[13].receiver;
        v16 = v0[8].receiver;
        if (v12)
        {
          v59 = v0[12].super_class;
          v17 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v74 = v58;
          *v17 = 141558274;
          *(v17 + 4) = 1752392040;
          *(v17 + 12) = 2080;
          sub_10001DA10(&qword_1000AB0D8, &type metadata accessor for UUID);
          log = v11;
          v57 = v16;
          v18 = dispatch thunk of CustomStringConvertible.description.getter();
          v20 = v19;
          v69 = *v70;
          (*v70)(v13, v15);
          v21 = sub_100035120(v18, v20, &v74);

          *(v17 + 14) = v21;
          _os_log_impl(&_mh_execute_header, log, v67, "Clearing all events for home: %{mask.hash}s", v17, 0x16u);
          sub_10000D330(v58);

          result = (*v62)(v59, v57);
        }

        else
        {

          v69 = *v70;
          (*v70)(v13, v15);
          result = (*v62)(v14, v16);
        }

        if (v73)
        {
          break;
        }

LABEL_4:
        v7 = v65 + 1;
        v69(v0[14].super_class, v0[13].receiver);
        if (v65 + 1 == v60)
        {
          goto LABEL_23;
        }
      }

      v23 = 0;
      while (v23 < *(v2 + 16))
      {
        v24 = v0[7].receiver;
        v25 = v0[7].super_class;
        v26 = v0[5].super_class;
        v27 = receiver[2];
        v27(v25, v2 + ((*(receiver + 80) + 32) & ~*(receiver + 80)) + receiver[9] * v23, v26);
        v27(v24, v25, v26);
        v28 = (receiver[11])(v24, v26);
        if (v28 == v72)
        {
          v29 = v0[14].super_class;
          static EventRecord.recordZoneID(forHomeIdentifier:)();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v0[3].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[3].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v30 = *((v0[3].receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else if (v28 != v71)
        {
          v42 = v0[7].super_class;
          v43 = v0[6].super_class;
          v44 = v0[5].super_class;
          v74 = 0;
          v75 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v74 = 0xD000000000000012;
          v75 = 0x8000000100089010;
          v27(v43, v42, v44);
          v45._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v45);

          return _assertionFailure(_:_:file:line:flags:)();
        }

        ++v23;
        result = (receiver[1])(v0[7].super_class, v0[5].super_class);
        if (v73 == v23)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_23:
      v46 = v0[4].receiver;

      v0[15].receiver = v0[3].receiver;
      v47 = type metadata accessor for EventUploadSubtaskLogEvent();
      v48 = objc_allocWithZone(v47);
      v49 = OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_metricsManager;
      type metadata accessor for MetricsManager();
      *&v48[v49] = static MetricsManager.sharedInstance.getter();
      v48[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_subtaskType] = 2;
      *&v48[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = 0;
      v48[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_attributedToFakeData] = 0;
      v0[2].receiver = v48;
      v0[2].super_class = v47;
      v0[15].super_class = objc_msgSendSuper2(v0 + 2, "init");
      v50 = sub_10000D224(v46, v46[3]);

      v52 = sub_1000195BC(v51);
      v0[16].receiver = v52;

      v53 = *v50;
      v54 = swift_task_alloc();
      v0[16].super_class = v54;
      *v54 = v0;
      *(v54 + 1) = sub_10001A168;

      return sub_100077E7C(v52);
    }
  }

  else
  {
    v31 = v0[11].super_class;
    v0[18].receiver = type metadata accessor for XPCServer();
    v0[18].super_class = sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer);
    static LoggedObject.logger.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Clearing all events for all homes", v34, 2u);
    }

    v35 = v0[11].super_class;
    v36 = v0[8].receiver;
    v37 = v0[8].super_class;

    v38 = *(v37 + 1);
    v0[19].receiver = v38;
    v38(v35, v36);
    v39 = swift_task_alloc();
    v0[19].super_class = v39;
    *v39 = v0;
    *(v39 + 1) = sub_10001AD34;
    v41 = v0[4].super_class;
    v40 = v0[5].receiver;

    return sub_100067844(v41, v40);
  }

  return result;
}

uint64_t sub_10001A168(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *(*v2 + 256);
  v7 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v8 = sub_10001A7A4;
  }

  else
  {
    *(v4 + 280) = a1;
    v8 = sub_10001A2B4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10001A2B4()
{
  v48 = v0;
  v1 = *(v0 + 248);
  *&v1[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = *(v0 + 280);
  sub_100031AD8();

  v2 = *(v0 + 240);
  *(v0 + 368) = v2;
  if (*(v0 + 416))
  {
    if (v2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v3 = *(v0 + 152);
      *(v0 + 376) = type metadata accessor for XPCServer();
      *(v0 + 384) = sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer);
      static LoggedObject.logger.getter();

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.info.getter();

      v6 = os_log_type_enabled(v4, v5);
      v7 = *(v0 + 152);
      v9 = *(v0 + 128);
      v8 = *(v0 + 136);
      if (v6)
      {
        v45 = *(v0 + 152);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v47 = v11;
        *v10 = 136446210;
        sub_10001C4A8();
        v12 = Array.description.getter();
        v14 = sub_100035120(v12, v13, &v47);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v4, v5, "Deleting home zones: %{public}s", v10, 0xCu);
        sub_10000D330(v11);

        v15 = *(v8 + 8);
        v15(v45, v9);
      }

      else
      {

        v15 = *(v8 + 8);
        v15(v7, v9);
      }

      *(v0 + 392) = v15;
      v24 = swift_task_alloc();
      *(v0 + 400) = v24;
      *v24 = v0;
      v24[1] = sub_10001BD80;
      v25 = *(v0 + 72);
      v26 = *(v0 + 80);

      return sub_100067F30(v2, v25, v26);
    }

    v17 = (v0 + 160);
    v28 = *(v0 + 160);

    type metadata accessor for XPCServer();
    sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer);
    static LoggedObject.logger.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v29 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 136);
    if (v29)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "No home zones to delete";
      goto LABEL_15;
    }
  }

  else
  {
    v17 = (v0 + 168);
    v16 = *(v0 + 168);

    type metadata accessor for XPCServer();
    sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer);
    static LoggedObject.logger.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 136);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Not deleting any cloud zones";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v18, v19, v23, v22, 2u);
    }
  }

  v30 = *v17;
  v31 = *(v21 + 8);
  v32 = *(v0 + 224);
  v33 = *(v0 + 232);
  v35 = *(v0 + 192);
  v34 = *(v0 + 200);
  v37 = *(v0 + 176);
  v36 = *(v0 + 184);
  v39 = *(v0 + 160);
  v38 = *(v0 + 168);
  v40 = *(v0 + 152);
  v42 = *(v0 + 144);
  v43 = *(v0 + 120);
  v44 = *(v0 + 112);
  v46 = *(v0 + 104);
  v31(v30, *(v0 + 128));

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_10001A7A4()
{
  v62 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 192);
  v3 = type metadata accessor for XPCServer();
  v4 = sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer);
  static LoggedObject.logger.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 272);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Ignoring error removing events from the database: %{public}@", v8, 0xCu);
    sub_10000D620(v9, &unk_1000AB7D0, &qword_100085510);
  }

  v11 = *(v0 + 272);
  v12 = *(v0 + 248);
  v13 = *(v0 + 192);
  v14 = *(v0 + 128);
  v15 = *(v0 + 136);

  (*(v15 + 8))(v13, v14);
  sub_100031DC0();

  v16 = *(v0 + 240);
  *(v0 + 368) = v16;
  if (*(v0 + 416))
  {
    if (v16 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v17 = *(v0 + 152);
      *(v0 + 376) = v3;
      *(v0 + 384) = v4;
      static LoggedObject.logger.getter();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();

      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 152);
      v23 = *(v0 + 128);
      v22 = *(v0 + 136);
      if (v20)
      {
        v59 = *(v0 + 152);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v61 = v25;
        *v24 = 136446210;
        sub_10001C4A8();
        v26 = Array.description.getter();
        v28 = sub_100035120(v26, v27, &v61);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v18, v19, "Deleting home zones: %{public}s", v24, 0xCu);
        sub_10000D330(v25);

        v29 = *(v22 + 8);
        v29(v59, v23);
      }

      else
      {

        v29 = *(v22 + 8);
        v29(v21, v23);
      }

      *(v0 + 392) = v29;
      v38 = swift_task_alloc();
      *(v0 + 400) = v38;
      *v38 = v0;
      v38[1] = sub_10001BD80;
      v39 = *(v0 + 72);
      v40 = *(v0 + 80);

      return sub_100067F30(v16, v39, v40);
    }

    v31 = (v0 + 160);
    v42 = *(v0 + 160);

    static LoggedObject.logger.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    v43 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 136);
    if (v43)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "No home zones to delete";
      goto LABEL_17;
    }
  }

  else
  {
    v31 = (v0 + 168);
    v30 = *(v0 + 168);

    static LoggedObject.logger.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 136);
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "Not deleting any cloud zones";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v32, v33, v37, v36, 2u);
    }
  }

  v44 = *v31;
  v45 = *(v35 + 8);
  v46 = *(v0 + 224);
  v47 = *(v0 + 232);
  v49 = *(v0 + 192);
  v48 = *(v0 + 200);
  v51 = *(v0 + 176);
  v50 = *(v0 + 184);
  v53 = *(v0 + 160);
  v52 = *(v0 + 168);
  v54 = *(v0 + 152);
  v56 = *(v0 + 144);
  v57 = *(v0 + 120);
  v58 = *(v0 + 112);
  v60 = *(v0 + 104);
  v45(v44, *(v0 + 128));

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_10001AD34(uint64_t a1)
{
  v3 = *(*v2 + 312);
  v4 = *v2;
  v4[40] = a1;

  if (v1)
  {
    v6 = v4[28];
    v5 = v4[29];
    v8 = v4[24];
    v7 = v4[25];
    v10 = v4[22];
    v9 = v4[23];
    v12 = v4[20];
    v11 = v4[21];
    v13 = v4[19];
    v17 = v4[18];
    v18 = v4[15];
    v19 = v4[14];
    v14 = v4[13];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return _swift_task_switch(sub_10001AF28, 0, 0);
  }
}

uint64_t sub_10001AF28()
{
  receiver = v0[20].receiver;
  if (receiver >> 62)
  {
    if (receiver < 0)
    {
      v11 = v0[20].receiver;
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[20].receiver + 32;
  do
  {
    if ((receiver & 0xC000000000000001) != 0)
    {
      v6 = v0[20].receiver;
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v5 + 8 * v4);
    }

    v8 = v7;
    ++v4;
    v9 = [v7 zoneID];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v10 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v2 != v4);
LABEL_13:
  v12 = v0[20].receiver;

  v0[20].super_class = _swiftEmptyArrayStorage;
  v13 = v0[4].receiver;
  v14 = type metadata accessor for EventUploadSubtaskLogEvent();
  v15 = objc_allocWithZone(v14);
  v16 = OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_metricsManager;
  type metadata accessor for MetricsManager();
  *&v15[v16] = static MetricsManager.sharedInstance.getter();
  v15[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_subtaskType] = 2;
  *&v15[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = 0;
  v15[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_attributedToFakeData] = 0;
  v0[1].receiver = v15;
  v0[1].super_class = v14;
  v0[21].receiver = objc_msgSendSuper2(v0 + 1, "init");
  v17 = *sub_10000D224(v13, v13[3]);
  v18 = swift_task_alloc();
  v0[21].super_class = v18;
  *v18 = v0;
  *(v18 + 1) = sub_10001B164;

  return sub_10007257C();
}

uint64_t sub_10001B164(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v7 = sub_10001B77C;
  }

  else
  {
    *(v4 + 360) = a1;
    v7 = sub_10001B28C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10001B28C()
{
  v48 = v0;
  v1 = *(v0 + 336);
  *&v1[OBJC_IVAR____TtC11homeeventsd26EventUploadSubtaskLogEvent_numRecords] = *(v0 + 360);
  sub_100031AD8();

  v2 = *(v0 + 328);
  *(v0 + 368) = v2;
  if (*(v0 + 416))
  {
    if (v2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v3 = *(v0 + 152);
      *(v0 + 376) = type metadata accessor for XPCServer();
      *(v0 + 384) = sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer);
      static LoggedObject.logger.getter();

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.info.getter();

      v6 = os_log_type_enabled(v4, v5);
      v7 = *(v0 + 152);
      v9 = *(v0 + 128);
      v8 = *(v0 + 136);
      if (v6)
      {
        v45 = *(v0 + 152);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v47 = v11;
        *v10 = 136446210;
        sub_10001C4A8();
        v12 = Array.description.getter();
        v14 = sub_100035120(v12, v13, &v47);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v4, v5, "Deleting home zones: %{public}s", v10, 0xCu);
        sub_10000D330(v11);

        v15 = *(v8 + 8);
        v15(v45, v9);
      }

      else
      {

        v15 = *(v8 + 8);
        v15(v7, v9);
      }

      *(v0 + 392) = v15;
      v24 = swift_task_alloc();
      *(v0 + 400) = v24;
      *v24 = v0;
      v24[1] = sub_10001BD80;
      v25 = *(v0 + 72);
      v26 = *(v0 + 80);

      return sub_100067F30(v2, v25, v26);
    }

    v17 = (v0 + 160);
    v28 = *(v0 + 160);

    type metadata accessor for XPCServer();
    sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer);
    static LoggedObject.logger.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v29 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 136);
    if (v29)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "No home zones to delete";
      goto LABEL_15;
    }
  }

  else
  {
    v17 = (v0 + 168);
    v16 = *(v0 + 168);

    type metadata accessor for XPCServer();
    sub_10001DA10(&qword_1000AAFD8, type metadata accessor for XPCServer);
    static LoggedObject.logger.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 136);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Not deleting any cloud zones";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v18, v19, v23, v22, 2u);
    }
  }

  v30 = *v17;
  v31 = *(v21 + 8);
  v32 = *(v0 + 224);
  v33 = *(v0 + 232);
  v35 = *(v0 + 192);
  v34 = *(v0 + 200);
  v37 = *(v0 + 176);
  v36 = *(v0 + 184);
  v39 = *(v0 + 160);
  v38 = *(v0 + 168);
  v40 = *(v0 + 152);
  v42 = *(v0 + 144);
  v43 = *(v0 + 120);
  v44 = *(v0 + 112);
  v46 = *(v0 + 104);
  v31(v30, *(v0 + 128));

  v41 = *(v0 + 8);

  return v41();
}