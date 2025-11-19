int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  setDefaultLogger(_:)();
  (*(v4 + 8))(v7, v3);
  sub_1000014E4();
  v8 = OS_os_log.init(subsystem:category:)();
  setDefaultLog(_:)();

  qword_10000C178 = 0;
  v9 = objc_autoreleasePoolPush();
  sub_100001530();
  objc_autoreleasePoolPop(v9);
  v10 = [objc_opt_self() currentRunLoop];
  [v10 run];

  exit(0);
}

unint64_t sub_1000014E4()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

void sub_100001530()
{
  v1 = v0;
  v2 = type metadata accessor for Logging();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  v9 = __chkstk_darwin(v7);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = v3[13];
  v35 = enum case for Logging.daemon(_:);
  v34 = v13;
  v13(v6);
  defaultLogger(_:)();
  v33 = v3[1];
  v33(v6, v2);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v37 = v7;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "*** HOMEENERGYD LAUNCH ***", v16, 2u);
    v1 = v0;
    v7 = v37;
  }

  v17 = *(v39 + 8);
  v39 += 8;
  v17(v12, v7);
  v18 = objc_autoreleasePoolPush();
  sub_100001994();
  if (v1)
  {
    objc_autoreleasePoolPop(v18);
    __break(1u);
  }

  else
  {
    v37 = 0;
    objc_autoreleasePoolPop(v18);
    v32 = sub_10000287C();
    v20 = v19;
    v34(v6, v35, v2);
    v21 = v36;
    defaultLogger(_:)();
    v33(v6, v2);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v21;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315138;
      v27 = v7;
      v28 = sub_100002194(v32, v20, aBlock);

      *(v25 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Created tmp dir at %s", v25, 0xCu);
      sub_10000273C(v26);

      v29 = v24;
      v30 = v27;
    }

    else
    {

      v29 = v21;
      v30 = v7;
    }

    v17(v29, v30);
    aBlock[4] = sub_100001BA8;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000211C;
    aBlock[3] = &unk_100008440;
    v31 = _Block_copy(aBlock);
    xpc_activity_register("com.apple.homeenergyd.firstlaunch", XPC_ACTIVITY_CHECK_IN, v31);
    _Block_release(v31);
  }
}

uint64_t sub_100001994()
{
  v0 = type metadata accessor for Logging();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _set_user_dir_suffix();
  if (!result)
  {
    v15 = v6;
    (*(v1 + 104))(v4, enum case for Logging.daemon(_:), v0);
    defaultLogger(_:)();
    (*(v1 + 8))(v4, v0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "_set_user_dir_suffix() failed!", v13, 2u);
    }

    (*(v15 + 8))(v9, v5);
    exit(0);
  }

  return result;
}

xpc_activity_state_t sub_100001BA8(_xpc_activity_s *a1)
{
  v2 = type metadata accessor for Logging();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (__chkstk_darwin)();
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v40 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v40 - v17;
  __chkstk_darwin(v16);
  v20 = &v40 - v19;
  if (xpc_activity_get_state(a1) != 2)
  {
    result = xpc_activity_get_state(a1);
    if (result)
    {
      return result;
    }

    (*(v3 + 104))(v6, enum case for Logging.daemon(_:), v2);
    defaultLogger(_:)();
    (*(v3 + 8))(v6, v2);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Checking in for the launch activity!", v29, 2u);
    }

    (*(v8 + 8))(v12, v7);
    v30 = type metadata accessor for DaemonInitializer();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v33 = DaemonInitializer.init()();
    swift_beginAccess();
    qword_10000C178 = v33;
  }

  v40 = v7;
  v21 = (v3 + 8);
  if (xpc_activity_should_defer(a1))
  {
    v22 = xpc_activity_set_state(a1, 3);
    (*(v3 + 104))(v6, enum case for Logging.daemon(_:), v2);
    if (v22)
    {
      defaultLogger(_:)();
      (*v21)(v6, v2);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Defering the first launch activity!", v25, 2u);
      }

      return (*(v8 + 8))(v20, v40);
    }

    else
    {
      defaultLogger(_:)();
      (*v21)(v6, v2);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Failed to defer the first launch activity!", v39, 2u);
      }

      return (*(v8 + 8))(v18, v40);
    }
  }

  (*(v3 + 104))(v6, enum case for Logging.daemon(_:), v2);
  defaultLogger(_:)();
  (*(v3 + 8))(v6, v2);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "No need to defer the first launch activity", v36, 2u);
  }

  (*(v8 + 8))(v15, v40);
  result = swift_beginAccess();
  if (qword_10000C178)
  {

    dispatch thunk of DaemonInitializer.firstLaunchSetup()();
  }

  return result;
}

uint64_t sub_10000211C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = swift_unknownObjectRetain();
  v4(v5);

  return _swift_unknownObjectRelease(a2);
}

uint64_t sub_10000217C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002194(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002260(v11, 0, 0, 1, a1, a2);
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
    sub_100002788(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000273C(v11);
  return v7;
}

unint64_t sub_100002260(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000236C(a5, a6);
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

char *sub_10000236C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000023B8(a1, a2);
  sub_1000024E8(&off_100008360);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000023B8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000025D4(v5, 0);
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
        v7 = sub_1000025D4(v10, 0);
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

uint64_t sub_1000024E8(uint64_t result)
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

  result = sub_100002648(result, v12, 1, v3);
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

void *sub_1000025D4(uint64_t a1, uint64_t a2)
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

  sub_1000027E4(&qword_10000C0A8, &qword_100005590);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002648(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027E4(&qword_10000C0A8, &qword_100005590);
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

uint64_t sub_10000273C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002788(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000027E4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000287C()
{
  v0 = objc_autoreleasePoolPush();
  sub_1000028C8(&v2);
  objc_autoreleasePoolPop(v0);
  return v2;
}

void sub_1000028C8(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Logging();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Logger();
  v27 = *(v30 - 8);
  v6 = *(v27 + 64);
  __chkstk_darwin(v30);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_autoreleasePoolPush();
  v10 = type metadata accessor for __DataStorage();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = __DataStorage.init(length:)();
  v28 = 0x40000000000;
  v29 = v13;
  sub_100004A58(&v28, 0);
  v29 |= 0x4000000000000000uLL;
  sub_100004654(&v28, 65537);
  v15 = v14;
  sub_100004FA4(v28, v29);
  objc_autoreleasePoolPop(v9);
  if (!v15)
  {
LABEL_6:
    v22 = v26;
    (*(v26 + 104))(v5, enum case for Logging.daemon(_:), v2);
    defaultLogger(_:)();
    (*(v22 + 8))(v5, v2);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to read _CS_DARWIN_USER_TEMP_DIR!", v25, 2u);
    }

    (*(v27 + 8))(v8, v30);
    exit(1);
  }

  v16 = objc_autoreleasePoolPush();
  v17 = String.utf8CString.getter();

  v18 = realpath_DARWIN_EXTSN((v17 + 32), 0);

  if (!v18)
  {
    objc_autoreleasePoolPop(v16);
    goto LABEL_6;
  }

  v19 = String.init(cString:)();
  v21 = v20;

  objc_autoreleasePoolPop(v16);
  if (!v21)
  {
    goto LABEL_6;
  }

  *a1 = v19;
  a1[1] = v21;
}

void sub_100002BE0(unint64_t *a1@<X8>)
{
  v79 = a1;
  v74 = type metadata accessor for Logging();
  v73 = *(v74 - 8);
  v2 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Logger();
  v75 = *(v76 - 8);
  v4 = *(v75 + 64);
  v5 = __chkstk_darwin(v76);
  v71 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v71 - v8;
  __chkstk_darwin(v7);
  v11 = &v71 - v10;
  v12 = objc_autoreleasePoolPush();
  sub_100003ED8(&v80);
  if (!v1)
  {
    objc_autoreleasePoolPop(v12);
    v77 = v80;
    v78 = v81;
    v13 = objc_autoreleasePoolPush();
    v14 = type metadata accessor for __DataStorage();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = __DataStorage.init(length:)();
    v80 = 0x40000000000;
    v81 = v17;
    sub_100004A58(&v80, 0);
    v81 |= 0x4000000000000000uLL;
    sub_100004654(&v80, 65537);
    v19 = v18;
    sub_100004FA4(v80, v81);
    objc_autoreleasePoolPop(v13);
    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = String.utf8CString.getter();

      v22 = realpath_DARWIN_EXTSN((v21 + 32), 0);

      if (v22)
      {
        v23 = String.init(cString:)();
        v25 = v24;

        objc_autoreleasePoolPop(v20);
        if (v25)
        {
          v26 = objc_autoreleasePoolPush();
          v27 = *(v14 + 48);
          v28 = *(v14 + 52);
          swift_allocObject();
          v29 = __DataStorage.init(length:)();
          v80 = 0x40000000000;
          v81 = v29;
          sub_100004A58(&v80, 0);
          v81 |= 0x4000000000000000uLL;
          sub_100004654(&v80, 65538);
          v31 = v30;
          sub_100004FA4(v80, v81);
          objc_autoreleasePoolPop(v26);
          if (v31)
          {
            v32 = objc_autoreleasePoolPush();
            v33 = String.utf8CString.getter();

            v34 = realpath_DARWIN_EXTSN((v33 + 32), 0);

            if (v34)
            {
              v35 = String.init(cString:)();
              v37 = v36;

              objc_autoreleasePoolPop(v32);
              if (v37)
              {
                v38 = objc_autoreleasePoolPush();
                v39 = *(v14 + 48);
                v40 = *(v14 + 52);
                swift_allocObject();
                v41 = __DataStorage.init(length:)();
                v80 = 0x40000000000;
                v81 = v41;
                sub_100004A58(&v80, 0);
                v81 |= 0x4000000000000000uLL;
                sub_100004654(&v80, 0x10000);
                v43 = v42;
                sub_100004FA4(v80, v81);
                objc_autoreleasePoolPop(v38);
                if (v43)
                {
                  v44 = objc_autoreleasePoolPush();
                  v45 = String.utf8CString.getter();

                  v46 = realpath_DARWIN_EXTSN((v45 + 32), 0);

                  if (v46)
                  {
                    v47 = String.init(cString:)();
                    v49 = v48;

                    objc_autoreleasePoolPop(v44);
                    if (v49)
                    {
                      sub_1000027E4(&qword_10000C160, &qword_100005628);
                      inited = swift_initStackObject();
                      *(inited + 32) = 0xD000000000000010;
                      *(inited + 16) = xmmword_1000055D0;
                      *(inited + 40) = 0x80000001000056D0;
                      *(inited + 48) = v35;
                      *(inited + 56) = v37;
                      *(inited + 64) = 0x555F4E4957524144;
                      *(inited + 72) = 0xEF5249445F524553;
                      *(inited + 80) = v47;
                      *(inited + 88) = v49;
                      *(inited + 96) = 1162694472;
                      v51 = v77;
                      *(inited + 104) = 0xE400000000000000;
                      *(inited + 112) = v51;
                      *(inited + 120) = v78;
                      *(inited + 128) = 0x524944504D54;
                      *(inited + 136) = 0xE600000000000000;
                      *(inited + 144) = v23;
                      *(inited + 152) = v25;
                      v52 = sub_100004C5C(inited);
                      swift_setDeallocating();
                      sub_1000027E4(&qword_10000C168, &qword_100005630);
                      swift_arrayDestroy();
                      *v79 = v52;
                      return;
                    }
                  }

                  else
                  {
                    objc_autoreleasePoolPop(v44);
                  }
                }

                v65 = v73;
                v66 = v72;
                v67 = v74;
                (*(v73 + 104))(v72, enum case for Logging.daemon(_:), v74);
                defaultLogger(_:)();
                (*(v65 + 8))(v66, v67);
                v68 = Logger.logObject.getter();
                v69 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v68, v69))
                {
                  v70 = swift_slowAlloc();
                  *v70 = 0;
                  _os_log_impl(&_mh_execute_header, v68, v69, "Unable to read _CS_DARWIN_USER_DIR!", v70, 2u);
                }

                (*(v75 + 8))(v71, v76);
LABEL_24:
                exit(1);
              }
            }

            else
            {
              objc_autoreleasePoolPop(v32);
            }
          }

          v59 = v73;
          v60 = v72;
          v61 = v74;
          (*(v73 + 104))(v72, enum case for Logging.daemon(_:), v74);
          defaultLogger(_:)();
          (*(v59 + 8))(v60, v61);
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 0;
            _os_log_impl(&_mh_execute_header, v62, v63, "Unable to read _CS_DARWIN_USER_CACHE_DIR!", v64, 2u);
          }

          (*(v75 + 8))(v9, v76);
          goto LABEL_24;
        }
      }

      else
      {
        objc_autoreleasePoolPop(v20);
      }
    }

    v53 = v73;
    v54 = v72;
    v55 = v74;
    (*(v73 + 104))(v72, enum case for Logging.daemon(_:), v74);
    defaultLogger(_:)();
    (*(v53 + 8))(v54, v55);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Unable to read _CS_DARWIN_USER_TEMP_DIR!", v58, 2u);
    }

    (*(v75 + 8))(v11, v76);
    goto LABEL_24;
  }

  objc_autoreleasePoolPop(v12);
  __break(1u);
}

void sub_100003458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v61 = a3;
  v4 = type metadata accessor for Logging();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v62 = *(v9 - 8);
  v10 = v62[8];
  v11 = __chkstk_darwin(v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v58 - v14;
  v60 = objc_autoreleasePoolPush();
  String.utf8CString.getter();
  v16 = _set_user_dir_suffix();

  if (!v16)
  {
    (*(v5 + 104))(v8, enum case for Logging.daemon(_:), v4);
    defaultLogger(_:)();
    (*(v5 + 8))(v8, v4);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "_set_user_dir_suffix() failed!", v57, 2u);
    }

    (v62[1])(v13, v9);
    exit(1);
  }

  v17 = objc_autoreleasePoolPush();
  sub_100002BE0(&v65);
  objc_autoreleasePoolPop(v17);
  v18 = v65;
  v19 = objc_autoreleasePoolPush();
  v64 = 0;
  v20 = objc_autoreleasePoolPush();
  v21 = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage;

  sub_100004D70(v22, v18, &v65);

  v23 = v65;
  objc_autoreleasePoolPop(v20);
  (*(v5 + 104))(v8, enum case for Logging.daemon(_:), v4);
  defaultLogger(_:)();
  (*(v5 + 8))(v8, v4);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  v26 = os_log_type_enabled(v24, v25);
  v59 = v19;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v65 = v28;
    *v27 = 136315138;
    v29 = Dictionary.description.getter();
    v31 = sub_100002194(v29, v30, &v65);
    v58 = v9;
    v32 = v23;
    v33 = v31;

    *(v27 + 4) = v33;
    v23 = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "Sandbox parameters: %s", v27, 0xCu);
    sub_10000273C(v28);

    (v62[1])(v15, v58);
  }

  else
  {

    (v62[1])(v15, v9);
  }

  v62 = objc_autoreleasePoolPush();
  v34 = *(v23 + 2);
  if (v34)
  {
    v65 = _swiftEmptyArrayStorage;
    sub_100004B30(0, v34, 0);
    v35 = v65;
    v36 = (v23 + 40);
    do
    {
      v37 = *(v36 - 1);
      v38 = *v36;
      v39 = String.utf8CString.getter();

      v40 = strdup((v39 + 32));

      v65 = v35;
      v42 = *(v35 + 2);
      v41 = *(v35 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        sub_100004B30((v41 > 1), v42 + 1, 1);
        v35 = v65;
      }

      *(v35 + 2) = v43;
      *&v35[8 * v42 + 32] = v40;
      v36 += 2;
      --v34;
    }

    while (v34);
  }

  else
  {
    v43 = _swiftEmptyArrayStorage[2];
    v35 = _swiftEmptyArrayStorage;
    if (!v43)
    {
      goto LABEL_16;
    }
  }

  v65 = _swiftEmptyArrayStorage;
  sub_100004B00(0, v43, 0);
  v21 = v65;
  v44 = *(v65 + 2);
  v45 = 32;
  do
  {
    v46 = *&v35[v45];
    v65 = v21;
    v47 = *(v21 + 3);
    if (v44 >= v47 >> 1)
    {
      sub_100004B00((v47 > 1), v44 + 1, 1);
      v21 = v65;
    }

    *(v21 + 2) = v44 + 1;
    *&v21[8 * v44 + 32] = v46;
    v45 += 8;
    ++v44;
    --v43;
  }

  while (v43);
LABEL_16:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_100004420(0, *(v21 + 2) + 1, 1, v21);
  }

  v48 = v59;
  v50 = *(v21 + 2);
  v49 = *(v21 + 3);
  v51 = v63;
  if (v50 >= v49 >> 1)
  {
    v21 = sub_100004420((v49 > 1), v50 + 1, 1, v21);
  }

  *(v21 + 2) = v50 + 1;
  *&v21[8 * v50 + 32] = 0;
  sub_100003B58(v21, v61, v51, &v64);

  v52 = *(v35 + 2);
  if (v52)
  {
    v53 = (v35 + 32);
    do
    {
      v54 = *v53++;
      free(v54);
      --v52;
    }

    while (v52);
  }

  objc_autoreleasePoolPop(v62);

  objc_autoreleasePoolPop(v48);
  objc_autoreleasePoolPop(v60);
}

uint64_t sub_100003B04@<X0>(char *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = String.init(cString:)();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_100003B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = type metadata accessor for Logging();
  v35 = *(v5 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  String.utf8CString.getter();
  v17 = sandbox_init_with_parameters();

  if (v17)
  {
    v34 = v9;
    v19 = v10;
    v20 = *a4;
    v21 = v35 + 104;
    (*(v35 + 104))(v8, enum case for Logging.daemon(_:), v5);
    v22 = (v21 - 96);
    if (v20)
    {
      defaultLogger(_:)();
      (*v22)(v8, v5);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v36 = v29;
        *v28 = 136315138;
        v30 = String.init(cString:)();
        v32 = sub_100002194(v30, v31, &v36);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "sandbox_init_with_parameters failed!: [%s]", v28, 0xCu);
        sub_10000273C(v29);
      }

      (*(v19 + 8))(v14, v34);
    }

    else
    {
      defaultLogger(_:)();
      (*v22)(v8, v5);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "sandbox_init_with_parameters failed! (no error)", v25, 2u);
      }

      (*(v19 + 8))(v16, v34);
    }

    exit(1);
  }

  return result;
}

uint64_t sub_100003ED8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Logging();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = getuid();
  v16 = getpwuid(v15);
  if (!v16 || !v16->pw_dir)
  {
    (*(v3 + 104))(v6, enum case for Logging.daemon(_:), v2);
    defaultLogger(_:)();
    (*(v3 + 8))(v6, v2);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      *(v22 + 4) = getuid();
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get passwd entry for uid %u", v22, 8u);
    }

    (*(v8 + 8))(v12, v7);
    exit(1);
  }

  if (!realpath_DARWIN_EXTSN(v16->pw_dir, 0))
  {
    v34 = v8;
    (*(v3 + 104))(v6, enum case for Logging.daemon(_:), v2);
    defaultLogger(_:)();
    (*(v3 + 8))(v6, v2);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      *v25 = 136315650;
      v26 = String.init(cString:)();
      v28 = sub_100002194(v26, v27, v35);

      *(v25 + 4) = v28;
      *(v25 + 12) = 1024;
      *(v25 + 14) = errno.getter();
      *(v25 + 18) = 2080;
      v29 = errno.getter();
      if (!strerror(v29))
      {
        __break(1u);
      }

      v30 = String.init(cString:)();
      v32 = sub_100002194(v30, v31, v35);

      *(v25 + 20) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "Sandbox: realpath(%s)\nfor home directory failed %d (%s)", v25, 0x1Cu);
      swift_arrayDestroy();
    }

    (*(v34 + 8))(v14, v7);
    exit(1);
  }

  v35[0] = String.init(cString:)();
  v35[1] = v17;
  *a1 = String.init<A>(_:)();
  a1[1] = v18;
}

char *sub_100004314(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027E4(&qword_10000C158, &qword_100005620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100004420(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000027E4(&qword_10000C148, &qword_100005610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_100004524(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10000459C(a1, a2, v6);
}

unint64_t sub_10000459C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100004654(uint64_t *a1, int a2)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100004FA4(v6, v5);
      *v20 = v6;
      *&v20[8] = v5;
      v20[10] = BYTE2(v5);
      v20[11] = BYTE3(v5);
      v20[12] = BYTE4(v5);
      v20[13] = BYTE5(v5);
      v20[14] = BYTE6(v5);
      result = sub_100003B04(v20, a2, &v21);
      if (!v2)
      {
        result = v21;
      }

      v9 = *&v20[8] | ((*&v20[12] | (v20[14] << 16)) << 32);
      *a1 = *v20;
      a1[1] = v9;
      return result;
    }

    v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100004FA4(v6, v5);
    *a1 = xmmword_1000055E0;
    sub_100004FA4(0, 0xC000000000000000);
    v13 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_24:
        __break(1u);
      }

      v14 = type metadata accessor for __DataStorage();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v17;
    }

    if (v13 >= v6)
    {

      v18 = sub_1000049B8(v6, v6 >> 32, v12, a2);

      v11 = v12 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v11;
        return v18;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 2)
  {
    v10 = *a1;

    sub_100004FA4(v6, v5);
    v21 = v6;
    v22 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1000055E0;
    sub_100004FA4(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v6 = v21;
    result = sub_1000049B8(*(v21 + 16), *(v21 + 24), v22, a2);
    v11 = v22 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v21;
      a1[1] = v11;
      return result;
    }

LABEL_19:
    *a1 = v6;
    a1[1] = v11;
    return result;
  }

  memset(v20, 0, 15);
  result = sub_100003B04(v20, a2, &v21);
  if (!v2)
  {
    return v21;
  }

  return result;
}

uint64_t sub_1000049B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = __DataStorage._offset.getter();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  result = sub_100003B04((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_100004A58(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = __DataStorage._offset.getter();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

char *sub_100004B00(char *a1, int64_t a2, char a3)
{
  result = sub_100004B60(a1, a2, a3, *v3, &qword_10000C148, &qword_100005610);
  *v3 = result;
  return result;
}

char *sub_100004B30(char *a1, int64_t a2, char a3)
{
  result = sub_100004B60(a1, a2, a3, *v3, &qword_10000C150, &qword_100005618);
  *v3 = result;
  return result;
}

char *sub_100004B60(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000027E4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

unint64_t sub_100004C5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000027E4(&qword_10000C170, &qword_100005638);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100004524(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_100004D70(uint64_t a1, uint64_t a2, char **a3)
{
  v5 = a1;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v33 = a3;
  v31 = result;
  while (v9)
  {
    v14 = v9;
LABEL_12:
    v9 = (v14 - 1) & v14;
    if (*(a2 + 16))
    {
      v16 = (*(v5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v14)))));
      v17 = *v16;
      v18 = v16[1];

      v34 = v17;
      v19 = sub_100004524(v17, v18);
      if (v20)
      {
        v21 = (*(a2 + 56) + 16 * v19);
        v22 = v21[1];
        v32 = *v21;
        v23 = *a3;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = sub_100004314(0, *(v23 + 2) + 1, 1, v23);
          *a3 = v23;
        }

        v26 = *(v23 + 2);
        v25 = *(v23 + 3);
        if (v26 >= v25 >> 1)
        {
          v23 = sub_100004314((v25 > 1), v26 + 1, 1, v23);
          *v33 = v23;
        }

        *(v23 + 2) = v26 + 1;
        v27 = &v23[16 * v26];
        *(v27 + 4) = v34;
        *(v27 + 5) = v18;
        v28 = *v33;
        v30 = *(*v33 + 2);
        v29 = *(*v33 + 3);
        if (v30 >= v29 >> 1)
        {
          v28 = sub_100004314((v29 > 1), v30 + 1, 1, v28);
          *v33 = v28;
        }

        *(v28 + 2) = v30 + 1;
        v13 = &v28[16 * v30];
        *(v13 + 4) = v32;
        *(v13 + 5) = v22;
        v5 = v31;
        a3 = v33;
      }
    }
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
    }

    v14 = *(v6 + 8 * v15);
    ++v12;
    if (v14)
    {
      v12 = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100004FA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}