void sub_100001A50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    buf.val[0] = 134217984;
    *&buf.val[1] = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received XPC event reply from [%llu]", &buf, 0xCu);
  }

  memset(&buf, 0, sizeof(buf));
  xpc_dictionary_get_audit_token();
  v16 = buf;
  v5 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v16);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.localizationswitcher", 0);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  if (v9 != CFBooleanGetTypeID())
  {
    CFRelease(v8);
LABEL_11:
    CFRelease(v6);
    goto LABEL_12;
  }

  Value = CFBooleanGetValue(v8);
  CFRelease(v8);
  CFRelease(v6);
  if (Value)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v11, "bundleID", [*(a1 + 32) UTF8String]);
    v12 = [*(a1 + 40) publisher];
    v13 = *(a1 + 48);
    xpc_event_publisher_fire();

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      v15 = *(a1 + 32);
      v16.val[0] = 134218242;
      *&v16.val[1] = v14;
      LOWORD(v16.val[3]) = 2114;
      *(&v16.val[3] + 2) = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Fired XPC event to [%llu] with bundle ID [%{public}@]", &v16, 0x16u);
    }

    goto LABEL_14;
  }

LABEL_12:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100004EBC();
  }

LABEL_14:
}

void start()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Starting localizationswitcherd...", v2, 2u);
  }

  v0 = objc_opt_new();
  sub_100001DA4(v0);
  v1 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.localizationswitcherd"];
  [v1 setDelegate:v0];
  [v1 resume];
  sub_100001E98();
  dispatch_main();
}

void sub_100001DA4(void *a1)
{
  v1 = a1;
  v2 = dispatch_queue_create("com.apple.IntlPreferences.events", 0);
  v3 = xpc_event_publisher_create();
  [v1 setPublisher:v3];
  v5 = v1;
  v4 = v1;
  xpc_event_publisher_set_handler();
  xpc_event_publisher_set_error_handler();
  xpc_event_publisher_activate();
}

void sub_100001E98()
{
  v0 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.IntlPreferences.analytics"];
  [v0 setPreregistered:1];
  [v0 scheduleWithBlock:&stru_100008578];
}

void sub_100001EFC(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2 == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPC event publisher received XPC_EVENT_PUBLISHER_ACTION_REMOVE, token = %llu", &v8, 0xCu);
    }

    [*(a1 + 32) removeSubscriber:a3];
  }

  else if (!a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPC event publisher received XPC_EVENT_PUBLISHER_ACTION_ADD, token = %llu", &v8, 0xCu);
    }

    [*(a1 + 32) addSubscriber:a3];
  }
}

void sub_10000202C(id a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "XPC event publisher error occurred: %d", v3, 8u);
  }
}

void sub_1000020CC(id a1, id a2)
{
  v2 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"com.apple.IntlPreferences.analytics";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Running activity %@", &v3, 0xCu);
  }

  +[IPInternationalAnalytics reportStatistics];
  v2[2](v2, 1);
}

void sub_1000023B8(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    (*(a1[6] + 2))();
    v5 = sub_100002938();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      *buf = 138543618;
      v13 = v4;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Encountered an error [%{public}@] while terminating application with bundle ID [%{public}@] using FrontBoardServices", buf, 0x16u);
    }
  }

  else
  {
    v7 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    v8 = [a1[5] bundleIdentifier];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100002544;
    v9[3] = &unk_1000085A0;
    v11 = a1[6];
    v10 = a1[4];
    [v7 openApplication:v8 withOptions:0 completion:v9];

    v5 = v11;
  }
}

void sub_100002544(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 40) + 16);
  if (v4)
  {
    v5();
    v6 = sub_100002938();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v12 = 138543618;
      v13 = v4;
      v14 = 2114;
      v15 = v7;
      v8 = "Encountered an error [%{public}@] while launching application with bundle ID [%{public}@] using FrontBoardServices";
      v9 = v6;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
    }
  }

  else
  {
    v5();
    v6 = sub_100002938();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 138543362;
      v13 = v11;
      v8 = "Application with bundle ID [%{public}@] was relaunched successfully";
      v9 = v6;
      v10 = 12;
      goto LABEL_6;
    }
  }
}

id sub_100002938()
{
  if (qword_10000C880 != -1)
  {
    sub_100004F04();
  }

  v1 = qword_10000C888;

  return v1;
}

void sub_10000297C(id a1)
{
  qword_10000C888 = os_log_create("com.apple.localizationswitcherd", "IPLocalizationSwitcher");

  _objc_release_x1();
}

uint64_t sub_1000029C0()
{
  v0 = type metadata accessor for Logger();
  sub_100004E10(v0, qword_10000C898);
  sub_100004BCC(v0, qword_10000C898);
  return Logger.init(subsystem:category:)();
}

unint64_t *sub_100002A40(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_1000036C4(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100004CE8(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000036C4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100002BC0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002C8C(v11, 0, 0, 1, a1, a2);
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
    sub_100004CE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004C48(v11);
  return v7;
}

unint64_t sub_100002C8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002D98(a5, a6);
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

char *sub_100002D98(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002DE4(a1, a2);
  sub_100002F14(&off_1000086D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002DE4(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003000(v5, 0);
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
        v7 = sub_100003000(v10, 0);
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

uint64_t sub_100002F14(uint64_t result)
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

  result = sub_100003074(result, v12, 1, v3);
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

void *sub_100003000(uint64_t a1, uint64_t a2)
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

  sub_100004D44(&qword_10000C870, &qword_100005E88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003074(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D44(&qword_10000C870, &qword_100005E88);
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

unint64_t sub_100003168(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100003484(a1, a2, v6);
}

uint64_t sub_1000031E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004D44(&qword_10000C868, &qword_100005E80);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      if ((v37 & 1) == 0)
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t sub_100003484(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *sub_10000353C()
{
  v1 = v0;
  sub_100004D44(&qword_10000C868, &qword_100005E80);
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

size_t sub_1000036A4(size_t a1, int64_t a2, char a3)
{
  result = sub_1000036E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000036C4(char *a1, int64_t a2, char a3)
{
  result = sub_1000038BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000036E4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004D44(&qword_10000C878, &unk_100005E90);
  v10 = *(type metadata accessor for ExtendedTriple() - 8);
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
  v15 = *(type metadata accessor for ExtendedTriple() - 8);
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

char *sub_1000038BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D44(&qword_10000C860, &qword_100005E78);
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

BOOL sub_1000039C8(uint64_t a1, uint64_t a2)
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

unint64_t sub_100003AC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004D44(&qword_10000C868, &qword_100005E80);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100003168(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_100003BC4(void *a1)
{
  v135 = type metadata accessor for EntityPredicate();
  v130 = *(v135 - 8);
  v2 = *(v130 + 64);
  v3 = (__chkstk_darwin)();
  v133 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v132 = &v125 - v5;
  v134 = type metadata accessor for ExtendedTriple();
  v136 = *(v134 - 8);
  v6 = *(v136 + 64);
  v7 = __chkstk_darwin(v134);
  v9 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v131 = &v125 - v11;
  __chkstk_darwin(v10);
  v140 = &v125 - v12;
  v13 = type metadata accessor for LanguageView();
  v129 = *(v13 - 8);
  v14 = *(v129 + 64);
  __chkstk_darwin(v13);
  v16 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(NSUserDefaults) init];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 arrayForKey:v18];

  if (!v19 || (v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v19, v21 = sub_100002A40(v20), , !v21))
  {
    v49 = v134;
LABEL_34:
    type metadata accessor for ViewService();
    v59 = static ViewService.clientService.getter();
    ViewService.languageView.getter();

    v60 = LanguageView.inferredLanguageTriples()();
    v127 = v16;
    v126 = a1;
    if (v60 >> 62)
    {
      v124 = v60;
      v67 = _CocoaArrayWrapper.endIndex.getter();
      v60 = v124;
    }

    else
    {
      v67 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = v131;
    v128 = v13;
    if (v67)
    {
      v69 = v60;
      v143[0] = &_swiftEmptyArrayStorage;
      sub_1000036A4(0, v67 & ~(v67 >> 63), 0);
      if (v67 < 0)
      {
        __break(1u);
LABEL_97:
        _Block_release(v126);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v70 = v143[0];
      v139 = v69;
      if ((v69 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v67; ++i)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          sub_100004C04(&qword_10000C848);
          sub_100004C04(&qword_10000C850);
          FetchableRecord<>.init(row:)();
          v143[0] = v70;
          v73 = v70[2];
          v72 = v70[3];
          if (v73 >= v72 >> 1)
          {
            sub_1000036A4(v72 > 1, v73 + 1, 1);
            v70 = v143[0];
          }

          v70[2] = v73 + 1;
          (*(v136 + 32))(v70 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v73, v9, v49);
        }
      }

      else
      {
        v138 = sub_100004C04(&qword_10000C848);
        v74 = sub_100004C04(&qword_10000C850);
        v75 = v69;
        v137 = v74;
        v76 = 32;
        do
        {
          v77 = *(v75 + v76);

          FetchableRecord<>.init(row:)();
          v143[0] = v70;
          v79 = v70[2];
          v78 = v70[3];
          if (v79 >= v78 >> 1)
          {
            sub_1000036A4(v78 > 1, v79 + 1, 1);
            v70 = v143[0];
          }

          v70[2] = v79 + 1;
          (*(v136 + 32))(v70 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v79, v68, v49);
          v76 += 8;
          --v67;
          v75 = v139;
        }

        while (v67);
      }
    }

    else
    {

      v70 = &_swiftEmptyArrayStorage;
    }

    v80 = sub_100003AC0(&_swiftEmptyArrayStorage);
    v138 = v70[2];
    if (!v138)
    {
LABEL_83:

      if (qword_10000C890 != -1)
      {
        swift_once();
      }

      v112 = type metadata accessor for Logger();
      sub_100004BCC(v112, qword_10000C898);

      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v143[0] = v116;
        *v115 = 136315138;
        v117 = Dictionary.description.getter();
        v119 = sub_100002BC0(v117, v118, v143);

        *(v115 + 4) = v119;

        _os_log_impl(&_mh_execute_header, v113, v114, "Megadome Query success. Languages: %s", v115, 0xCu);
        sub_100004C48(v116);
      }

      else
      {
      }

      v120 = v126;
      v122 = v127;
      v121 = v128;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v120[2](v120, isa);

      return (*(v129 + 8))(v122, v121);
    }

    v139 = 0;
    v81 = 0;
    v137 = (v70 + ((*(v136 + 80) + 32) & ~*(v136 + 80)));
    v82 = (v130 + 8);
    v130 = v136 + 8;
    v131 = (v136 + 16);
    v23 = 0xE000000000000000;
    while (1)
    {
      if (v81 >= v70[2])
      {
        goto LABEL_91;
      }

      (*(v136 + 16))(v140, v137 + *(v136 + 72) * v81, v49);
      v83 = v132;
      ExtendedTriple.predicate.getter();
      v84 = EntityPredicate.rawValue.getter();
      v86 = v85;
      v87 = *v82;
      (*v82)(v83, v135);
      if (v84 == 859001680 && v86 == 0xE400000000000000)
      {
        break;
      }

      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v88)
      {
        goto LABEL_63;
      }

LABEL_64:
      v90 = v133;
      ExtendedTriple.predicate.getter();
      v91 = EntityPredicate.rawValue.getter();
      v93 = v92;
      v87(v90, v135);
      if (v91 == 0x69666E6F635F6D6ELL && v93 == 0xED000065636E6564)
      {
      }

      else
      {
        v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v94 & 1) == 0)
        {
          v49 = v134;
          (*v130)(v140, v134);
          goto LABEL_57;
        }
      }

      v95 = ExtendedTriple.object.getter();
      v143[0] = 0;
      v97 = sub_1000039C8(v95, v96);

      if (v97)
      {
        v98 = *v143;
      }

      else
      {
        v98 = 0.0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143[0] = v80;
      v100 = sub_100003168(v139, v23);
      v102 = v80[2];
      v103 = (v101 & 1) == 0;
      v41 = __OFADD__(v102, v103);
      v104 = v102 + v103;
      if (v41)
      {
        goto LABEL_93;
      }

      v105 = v101;
      if (v80[3] >= v104)
      {
        v49 = v134;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v111 = v100;
          sub_10000353C();
          v100 = v111;
          v80 = v143[0];
          if ((v105 & 1) == 0)
          {
LABEL_77:
            v80[(v100 >> 6) + 8] |= 1 << v100;
            v107 = (v80[6] + 16 * v100);
            *v107 = v139;
            v107[1] = v23;
            *(v80[7] + 8 * v100) = v98;
            v108 = *v130;

            v108(v140, v49);
            v109 = v80[2];
            v41 = __OFADD__(v109, 1);
            v110 = v109 + 1;
            if (v41)
            {
              goto LABEL_94;
            }

            v80[2] = v110;
            goto LABEL_57;
          }

          goto LABEL_56;
        }
      }

      else
      {
        sub_1000031E0(v104, isUniquelyReferenced_nonNull_native);
        v100 = sub_100003168(v139, v23);
        v49 = v134;
        if ((v105 & 1) != (v106 & 1))
        {
          goto LABEL_97;
        }
      }

      v80 = v143[0];
      if ((v105 & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_56:
      *(v80[7] + 8 * v100) = v98;
      (*v130)(v140, v49);
LABEL_57:
      if (v138 == ++v81)
      {

        goto LABEL_83;
      }
    }

LABEL_63:

    v139 = ExtendedTriple.object.getter();
    v23 = v89;
    goto LABEL_64;
  }

  v127 = v16;
  v128 = v13;
  v22 = sub_100003AC0(&_swiftEmptyArrayStorage);
  v139 = v21[2];
  if (!v139)
  {

LABEL_28:
    if (qword_10000C890 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100004BCC(v50, qword_10000C898);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v143[0] = v54;
      *v53 = 136315138;
      v55 = Dictionary.description.getter();
      v57 = sub_100002BC0(v55, v56, v143);

      *(v53 + 4) = v57;

      _os_log_impl(&_mh_execute_header, v51, v52, "Testing Override Specified. Languages: %s", v53, 0xCu);
      sub_100004C48(v54);
    }

    else
    {
    }

    v16 = v127;
    v49 = v134;
    v58 = Dictionary._bridgeToObjectiveC()().super.isa;
    (*(a1 + 2))(a1, v58);

    v13 = v128;
    goto LABEL_34;
  }

  v126 = a1;
  v23 = 0;
  v24 = (v21 + 5);
  v137 = v21;
  v138 = v9;
  while (v23 < v21[2])
  {
    v26 = *v24;
    v143[0] = *(v24 - 1);
    v143[1] = v26;
    v141 = 58;
    v142 = 0xE100000000000000;
    sub_100004C94();

    v27 = StringProtocol.components<A>(separatedBy:)();
    v28 = v27[2];
    if (v28)
    {
      v30 = v27[4];
      v29 = v27[5];
      v31 = &v27[2 * v28 + 4];
      v32 = *(v31 - 16);
      v33 = *(v31 - 8);
    }

    else
    {
      v30 = 0;
      v29 = 0;
      v33 = 0xE300000000000000;
      v32 = 3157553;
    }

    v143[0] = 0;
    v34 = sub_1000039C8(v32, v33);

    if (v34)
    {
      v35 = *v143;
    }

    else
    {
      v35 = 1.0;
    }

    if (!v29)
    {
      goto LABEL_6;
    }

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v143[0] = v22;
    v37 = sub_100003168(v30, v29);
    v39 = v22[2];
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      goto LABEL_90;
    }

    v43 = v38;
    if (v22[3] >= v42)
    {
      if ((v36 & 1) == 0)
      {
        v48 = v37;
        sub_10000353C();
        v37 = v48;
        if ((v43 & 1) == 0)
        {
LABEL_21:
          v22 = v143[0];
          *(v143[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
          v45 = (v22[6] + 16 * v37);
          *v45 = v30;
          v45[1] = v29;
          *(v22[7] + 8 * v37) = v35;
          v46 = v22[2];
          v41 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v41)
          {
            goto LABEL_92;
          }

          v22[2] = v47;
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else
    {
      sub_1000031E0(v42, v36);
      v37 = sub_100003168(v30, v29);
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_97;
      }
    }

    if ((v43 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_5:
    v25 = v37;

    v22 = v143[0];
    *(*(v143[0] + 56) + 8 * v25) = v35;
LABEL_6:
    v21 = v137;
    v9 = v138;
    ++v23;
    v24 += 2;
    if (v139 == v23)
    {

      a1 = v126;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  swift_once();
  v61 = type metadata accessor for Logger();
  sub_100004BCC(v61, qword_10000C898);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "Megadome Query failed.", v64, 2u);
  }

  sub_100003AC0(&_swiftEmptyArrayStorage);
  v65 = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(v23 + 16))(v23, v65);
}

uint64_t sub_100004BCC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004C04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExtendedTriple();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004C48(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100004C94()
{
  result = qword_10000C858;
  if (!qword_10000C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C858);
  }

  return result;
}

uint64_t sub_100004CE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004D44(uint64_t *a1, uint64_t *a2)
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

_BYTE *sub_100004D90@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

uint64_t *sub_100004E10(uint64_t a1, uint64_t *a2)
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