void sub_100002220(id a1)
{
  qword_100043030 = objc_opt_new();

  _objc_release_x1();
}

void sub_100002398(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1000023BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _modifyThreatNotificationCFU];
    WeakRetained = v2;
  }
}

void sub_100002400(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 2) != -1)
  {
    v4 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did receive CFU update notification", v5, 2u);
    }

    [v3 _modifyThreatNotificationCFU];
  }
}

id sub_1000029D4(uint64_t a1)
{
  v4[0] = @"type";
  v4[1] = @"elapsedTime";
  v5[0] = &off_10003E0B0;
  v5[1] = &off_10003E0C8;
  v4[2] = @"ldmEnabled";
  v1 = [NSNumber numberWithBool:*(a1 + 32)];
  v4[3] = @"analyticsEnabled";
  v5[2] = v1;
  v5[3] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

void sub_100002B20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_100002B58()
{
  *(v0 + 16) = 0;
  if (_set_user_dir_suffix())
  {
    if (qword_100041CE8 != -1)
    {
      swift_once();
    }

    v1 = static LockdownModeServer.shared;
    v2 = *(v0 + 16);
    *(v0 + 16) = static LockdownModeServer.shared;
    v3 = v1;

    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100002C2C()
{

  return swift_deallocClassInstance();
}

id variable initialization expression of LockdownModeServer.listener()
{
  static Constants.serviceName.getter();
  v0 = objc_allocWithZone(NSXPCListener);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

uint64_t variable initialization expression of LockdownModeServer.eventsQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  sub_100003B7C();
  static DispatchQoS.utility.getter();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_1000046C4(&qword_100041D08, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003BC8(&qword_100041D10, &qword_1000314B0);
  sub_100003C10();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100002F34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_100002FA0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100002FEC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100003044()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000030D4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000314C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000031CC@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000322C(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041EF0, type metadata accessor for LAError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003298(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041EF0, type metadata accessor for LAError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003304(void *a1, uint64_t a2)
{
  v4 = sub_1000046C4(&qword_100041EF0, type metadata accessor for LAError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000033B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000046C4(&qword_100041EF0, type metadata accessor for LAError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003434()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100003494@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000034BC(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041EF8, type metadata accessor for LAError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003528(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041EF8, type metadata accessor for LAError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003598(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041EF0, type metadata accessor for LAError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000046C4(&qword_100041EF0, type metadata accessor for LAError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000368C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000036B8(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041F60, type metadata accessor for FileAttributeKey);
  v3 = sub_1000046C4(&qword_100041F68, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003774@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000037BC(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041F50, type metadata accessor for FileProtectionType);
  v3 = sub_1000046C4(&qword_100041F58, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003878()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000038B4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003908()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10000397C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

void sub_100003A04()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemonLogger.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting lockdownmoded…", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  type metadata accessor for LockdownModeDaemon();
  swift_initStackObject();
  sub_100002B58();

  CFRunLoopRun();
}

unint64_t sub_100003B7C()
{
  result = qword_100041D00;
  if (!qword_100041D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100041D00);
  }

  return result;
}

uint64_t sub_100003BC8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003C10()
{
  result = qword_100041D18;
  if (!qword_100041D18)
  {
    sub_100003C74(&qword_100041D10, &qword_1000314B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041D18);
  }

  return result;
}

uint64_t sub_100003C74(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041E78, &qword_100031528);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000045C4(v4, &v11, &qword_100041E80, &qword_100031530);
      v5 = v11;
      result = sub_10001A234(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000427C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100003DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041E90, &qword_100031540);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1000045C4(i, &v11, &qword_100041E98, &qword_100031548);
      v5 = v11;
      result = sub_10001A32C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_10000427C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_100003F00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041DD8, "zn");
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000045C4(v4, v13, &qword_100041DE0, &unk_1000314F0);
      result = sub_10001A2E8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000427C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10000403C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041E00, &qword_100031510);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000045C4(v4, &v11, &qword_100041E08, &qword_100031518);
      v5 = v11;
      result = sub_10001A374(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000427C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100004164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041E88, &qword_100031538);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_10001A480(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

_OWORD *sub_10000427C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000428C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041DE8, &unk_100032360);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001A408(v5, v6);
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

unint64_t sub_100004390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041DF0, &qword_100031500);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000045C4(v4, &v13, &qword_100041DF8, &qword_100031508);
      v5 = v13;
      v6 = v14;
      result = sub_10001A408(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000427C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1000044C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041E70, &qword_100031520);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10001A408(v5, v6);
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

uint64_t sub_1000045C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003BC8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000046C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000048D0(uint64_t a1, unint64_t *a2)
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

unint64_t sub_100004A88()
{
  result = qword_100041F20;
  if (!qword_100041F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041F20);
  }

  return result;
}

uint64_t sub_100004C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = type metadata accessor for Logger();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_100004D40, 0, 0);
}

uint64_t sub_100004D40()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_100004E70;
  v3 = swift_continuation_init();
  v0[17] = sub_100003BC8(&qword_100042150, &qword_100031C58);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100005220;
  v0[13] = &unk_10003D3C0;
  v0[14] = v3;
  [v2 saveAccount:v1 withDataclassActions:0 doVerify:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100004E70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_100005088;
  }

  else
  {
    v3 = sub_100004F80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004F80()
{
  if ((*(v0 + 200) & 1) == 0)
  {
    v1 = *(v0 + 184);
    static Logger.daemonLogger.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Could not set state of Shared Albums due to an unknown error", v4, 2u);
    }

    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
  }

  v6 = *(v0 + 176);
  v5 = *(v0 + 184);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100005088()
{
  v1 = v0[24];
  v2 = v0[22];
  swift_willThrow();
  static Logger.daemonLogger.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not set state of Shared Albums: %@", v7, 0xCu);
    sub_100005E54(v8, &qword_100042158, qword_100031C60);
  }

  else
  {
    v10 = v0[24];
  }

  (*(v0[21] + 8))(v0[22], v0[20]);
  v12 = v0[22];
  v11 = v0[23];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100005220(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100005EB4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003BC8(&unk_100042360, qword_100031DD0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000052EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003BC8(&unk_100042300, "6i");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100005B7C(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005E54(v12, &unk_100042300, "6i");
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100005E54(a3, &unk_100042300, "6i");

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005E54(a3, &unk_100042300, "6i");
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100005610(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005708;

  return v7(a1);
}

uint64_t sub_100005708()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_100005800(char a1)
{
  v2 = sub_100003BC8(&unk_100042300, "6i");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v13 = [objc_opt_self() pl_sharedAccountStore];
  v6 = [v13 cachedPrimaryAppleAccount];
  if (v6)
  {
    v7 = a1 & 1;
    v8 = v6;
    [v6 setEnabled:v7 forDataclass:ACAccountDataclassSharedStreams];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v13;
    v10[5] = v8;
    sub_1000052EC(0, 0, v5, &unk_100031C38, v10);
  }

  else
  {
    v11 = v13;
  }
}

uint64_t sub_100005980()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000059C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005A88;

  return sub_100004C74(a1, v4, v5, v7, v6);
}

uint64_t sub_100005A88()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BC8(&unk_100042300, "6i");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005BEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005EFC;

  return sub_100005610(a1, v5);
}

uint64_t sub_100005CA4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005CDC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005A88;

  return sub_100005610(a1, v5);
}

uint64_t sub_100005DA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005E08(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005E54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003BC8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_100005EB4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

NSString sub_100005F00()
{
  result = String._bridgeToObjectiveC()();
  qword_100042160 = result;
  return result;
}

NSString sub_100005F38()
{
  result = String._bridgeToObjectiveC()();
  qword_100042168 = result;
  return result;
}

NSString sub_100005F70()
{
  result = String._bridgeToObjectiveC()();
  qword_100042170 = result;
  return result;
}

uint64_t sub_100005FD4()
{
  result = kSFOperationDiscoverableModeKey;
  if (kSFOperationDiscoverableModeKey)
  {
    if (qword_100041CE0 != -1)
    {
      v10 = kSFOperationDiscoverableModeKey;
      swift_once();
      result = v10;
    }

    if (CFPreferencesCopyAppValue(result, qword_100042170))
    {
      type metadata accessor for CFString(0);
      v1 = swift_dynamicCastUnknownClassUnconditional();
    }

    else
    {
      v1 = kSFOperationDiscoverableModeOff;
      v2 = kSFOperationDiscoverableModeOff;
    }

    v3 = kSFOperationDiscoverableModeContactsOnly;
    if (kSFOperationDiscoverableModeContactsOnly)
    {
      if (!v1)
      {
        if (!kSFOperationDiscoverableModeEveryone)
        {
          return 2;
        }

        return 0;
      }

      type metadata accessor for CFString(0);
      sub_10000626C();
      v4 = v1;
      v5 = v3;
      v6 = static _CFObject.== infix(_:_:)();

      if (v6)
      {

        return 1;
      }
    }

    else if (!v1)
    {
      return 1;
    }

    v7 = kSFOperationDiscoverableModeEveryone;
    if (kSFOperationDiscoverableModeEveryone)
    {
      type metadata accessor for CFString(0);
      sub_10000626C();
      v8 = v7;
      v9 = static _CFObject.== infix(_:_:)();

      if ((v9 & 1) == 0)
      {
        return 0;
      }

      return 2;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_100006178(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_7;
    }

    v1 = kSFOperationDiscoverableModeContactsOnly;
    if (kSFOperationDiscoverableModeContactsOnly)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v1 = kSFOperationDiscoverableModeOff;
  if (kSFOperationDiscoverableModeOff)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v1 = kSFOperationDiscoverableModeEveryone;
  if (!kSFOperationDiscoverableModeEveryone)
  {
LABEL_15:
    __break(1u);
    return;
  }

LABEL_8:
  v2 = v1;
  v3 = kSFOperationDiscoverableModeKey;
  if (!kSFOperationDiscoverableModeKey)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = qword_100041CE0;
  v5 = v2;
  v6 = v5;
  if (v4 != -1)
  {
    swift_once();
    v5 = v6;
  }

  CFPreferencesSetAppValue(v3, v5, qword_100042170);
}

unint64_t sub_10000626C()
{
  result = qword_100042670;
  if (!qword_100042670)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042670);
  }

  return result;
}

id sub_1000062C4()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v1;
}

char *sub_100006320()
{
  v41 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v41 - 1);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v7 = v0 + OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_delegate;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(v0 + OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_notificationCenter) = 0;
  v40 = OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_queue;
  v8 = sub_10000A220(0, &qword_100041D00, OS_dispatch_queue_ptr);
  v39[0] = "lockdownmode-icon.png";
  v39[1] = v8;
  static DispatchQoS.userInitiated.getter();
  v43 = &_swiftEmptyArrayStorage;
  sub_10000A0FC(&qword_100041D08, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003BC8(&qword_100041D10, &qword_1000314B0);
  sub_10000A1CC(&qword_100041D18, &qword_100041D10, &qword_1000314B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v41);
  *&v40[v0] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = type metadata accessor for NotificationsManager();
  v42.receiver = v0;
  v42.super_class = v9;
  v10 = objc_msgSendSuper2(&v42, "init");
  v11 = objc_allocWithZone(UNUserNotificationCenter);
  v12 = v10;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 initWithBundleIdentifier:v13];

  v15 = OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_notificationCenter;
  v16 = *&v12[OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_notificationCenter];
  *&v12[OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_notificationCenter] = v14;

  v17 = String._bridgeToObjectiveC()();
  sub_10000A220(0, &qword_100042370, UNNotificationAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v19 = Array._bridgeToObjectiveC()().super.isa;
  v20 = objc_opt_self();
  v41 = [v20 categoryWithIdentifier:v17 actions:isa intentIdentifiers:v19 options:0];

  v21 = String._bridgeToObjectiveC()();
  v22 = Array._bridgeToObjectiveC()().super.isa;
  v23 = Array._bridgeToObjectiveC()().super.isa;
  v40 = [v20 categoryWithIdentifier:v21 actions:v22 intentIdentifiers:v23 options:0];

  v24 = String._bridgeToObjectiveC()();
  v25 = Array._bridgeToObjectiveC()().super.isa;
  v26 = Array._bridgeToObjectiveC()().super.isa;
  v27 = [v20 categoryWithIdentifier:v24 actions:v25 intentIdentifiers:v26 options:0];

  result = *&v12[v15];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  [result setDelegate:v12];
  result = *&v12[v15];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = [result setWantsNotificationResponsesDelivered];
  v29 = *&v12[v15];
  if (v29)
  {
    sub_100003BC8(&qword_100042348, &unk_100031DB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100031CA0;
    v31 = v40;
    v32 = v41;
    *(inited + 32) = v41;
    *(inited + 40) = v31;
    *(inited + 48) = v27;
    v33 = v29;
    v34 = v32;
    v35 = v31;
    v36 = v27;
    sub_10002DF10(inited);
    swift_setDeallocating();
    v37 = *(inited + 16);
    swift_arrayDestroy();
    sub_10000A220(0, &qword_100042378, UNNotificationCategory_ptr);
    sub_10000A268();
    v38 = Set._bridgeToObjectiveC()().super.isa;

    [v33 setNotificationCategories:v38];

    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_100007824(void *a1, int a2, uint64_t a3)
{
  v135 = a3;
  v134 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v133 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v132 = &v131 - v9;
  v140 = type metadata accessor for URL();
  v10 = *(v140 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v140);
  v139 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v131 - v14;
  sub_100003BC8(&unk_100042338, &unk_100031DA8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100031CB0;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_33;
  }

  v17 = v16;
  v141 = v15;
  *(v16 + 32) = kCFUserNotificationAlertHeaderKey;
  v18 = kCFUserNotificationAlertHeaderKey;
  v19 = sub_1000062C4();
  v146._countAndFlagsBits = 0xD000000000000012;
  v146._object = 0x8000000100034070;
  v20._countAndFlagsBits = 0x4E574F444B434F4CLL;
  v20._object = 0xED000045444F4D5FLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v146);

  *(v17 + 64) = &type metadata for String;
  *(v17 + 40) = v22;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v136 = v5;
  v137 = v4;
  *(v17 + 72) = kCFUserNotificationAlertMessageKey;
  v23 = kCFUserNotificationAlertMessageKey;
  v24 = sub_1000062C4();
  v147._countAndFlagsBits = 0xD000000000000011;
  v147._object = 0x80000001000340B0;
  v25._object = 0x8000000100034130;
  v25._countAndFlagsBits = 0xD000000000000015;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v147);

  *(v17 + 104) = &type metadata for String;
  *(v17 + 80) = v27;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v28 = a1;
  *(v17 + 112) = kCFUserNotificationDefaultButtonTitleKey;
  v29 = kCFUserNotificationDefaultButtonTitleKey;
  v30 = sub_1000062C4();
  v31._countAndFlagsBits = 0xD000000000000013;
  v148._object = 0xEC000000656C7469;
  v31._object = 0x8000000100034150;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v148._countAndFlagsBits = 0x74206E6F74747542;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v148);

  *(v17 + 144) = &type metadata for String;
  *(v17 + 120) = v33;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v17 + 152) = kCFUserNotificationAlternateButtonTitleKey;
  v34 = kCFUserNotificationAlternateButtonTitleKey;
  v35 = sub_1000062C4();
  v149._object = 0xEC000000656C7469;
  v36._countAndFlagsBits = 0x524554414CLL;
  v36._object = 0xE500000000000000;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v149._countAndFlagsBits = 0x74206E6F74747542;
  v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v149);

  *(v17 + 184) = &type metadata for String;
  *(v17 + 160) = v38;
  if (!kCFUserNotificationAlertTopMostKey)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v39 = v28;
  *(v17 + 192) = kCFUserNotificationAlertTopMostKey;
  *(v17 + 224) = &type metadata for Bool;
  *(v17 + 200) = 1;
  v40 = kCFUserNotificationAlertTopMostKey;
  v41 = sub_100003CBC(v17);
  swift_setDeallocating();
  sub_100003BC8(&qword_100041E80, &qword_100031530);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v42 = SBUserNotificationWakeDisplay;
  if (!SBUserNotificationWakeDisplay)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v145 = &type metadata for Bool;
  LOBYTE(v144._countAndFlagsBits) = 1;
  sub_10000427C(&v144, error);
  v43 = v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v142 = v41;
  sub_10001A4C4(error, v43, isUniquelyReferenced_nonNull_native);

  v45 = SBUserNotificationDismissOnLock;
  if (!SBUserNotificationDismissOnLock)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v46 = v142;
  v145 = &type metadata for Bool;
  LOBYTE(v144._countAndFlagsBits) = 0;
  sub_10000427C(&v144, error);
  v47 = v45;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v142 = v46;
  sub_10001A4C4(error, v47, v48);

  v49 = SBUserNotificationIgnoresQuietMode;
  if (!SBUserNotificationIgnoresQuietMode)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v50 = v142;
  v145 = &type metadata for Bool;
  LOBYTE(v144._countAndFlagsBits) = 1;
  sub_10000427C(&v144, error);
  v51 = v49;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v142 = v50;
  sub_10001A4C4(error, v51, v52);

  v53 = SBUserNotificationAllowInLoginWindow;
  if (!SBUserNotificationAllowInLoginWindow)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v54 = v142;
  v145 = &type metadata for Bool;
  LOBYTE(v144._countAndFlagsBits) = 1;
  sub_10000427C(&v144, error);
  v55 = v53;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v142 = v54;
  sub_10001A4C4(error, v55, v56);

  v57 = SBUserNotificationDontDismissOnUnlock;
  if (!SBUserNotificationDontDismissOnUnlock)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v58 = v142;
  v145 = &type metadata for Bool;
  LOBYTE(v144._countAndFlagsBits) = 1;
  sub_10000427C(&v144, error);
  v59 = v57;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v142 = v58;
  sub_10001A4C4(error, v59, v60);

  v61 = SBUserNotificationAllowMenuButtonDismissal;
  if (!SBUserNotificationAllowMenuButtonDismissal)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v62 = v142;
  v145 = &type metadata for Bool;
  LOBYTE(v144._countAndFlagsBits) = 0;
  sub_10000427C(&v144, error);
  v63 = v61;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v142 = v62;
  sub_10001A4C4(error, v63, v64);

  v65 = SBUserNotificationPendWhileKeyBagLockedKey;
  if (!SBUserNotificationPendWhileKeyBagLockedKey)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v66 = v142;
  v145 = &type metadata for Bool;
  LOBYTE(v144._countAndFlagsBits) = 0;
  sub_10000427C(&v144, error);
  v67 = v65;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v142 = v66;
  sub_10001A4C4(error, v67, v68);

  v69 = SBUserNotificationPendInSetupIfNotAllowedKey;
  if (!SBUserNotificationPendInSetupIfNotAllowedKey)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v70 = v142;
  v145 = &type metadata for Bool;
  LOBYTE(v144._countAndFlagsBits) = 1;
  sub_10000427C(&v144, error);
  v71 = v69;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v142 = v70;
  sub_10001A4C4(error, v71, v72);

  v73 = SBUserNotificationAllowLockscreenDismissalKey;
  if (!SBUserNotificationAllowLockscreenDismissalKey)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  v74 = v142;
  v145 = &type metadata for Bool;
  LOBYTE(v144._countAndFlagsBits) = 0;
  sub_10000427C(&v144, error);
  v75 = v73;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v142 = v74;
  sub_10001A4C4(error, v75, v76);

  v77 = SBUserNotificationDisplayActionButtonOnLockScreen;
  if (!SBUserNotificationDisplayActionButtonOnLockScreen)
  {
    goto LABEL_46;
  }

  v78 = v142;
  v145 = &type metadata for Bool;
  LOBYTE(v144._countAndFlagsBits) = 1;
  sub_10000427C(&v144, error);
  v79 = v77;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v142 = v78;
  sub_10001A4C4(error, v79, v80);

  v81 = v142;
  v82 = objc_allocWithZone(ISIcon);
  v83 = String._bridgeToObjectiveC()();
  v84 = [v82 initWithBundleIdentifier:v83];

  v85 = objc_allocWithZone(ISIconDecoration);
  v86 = v84;
  v87 = String._bridgeToObjectiveC()();
  v88 = [v85 initWithType:v87];

  [v88 setPosition:3];
  sub_100003BC8(&qword_100042348, &unk_100031DB8);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_100031CC0;
  *(v89 + 32) = v88;
  v90 = v88;
  sub_100003BC8(&unk_100042350, &qword_100031DC8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v92 = [v86 iconWithDecorations:isa];

  v93 = objc_allocWithZone(ISImageDescriptor);
  v94 = v92;
  v138 = [v93 initWithSize:128.0 scale:{128.0, 2.0}];
  v95 = [v94 prepareImageForDescriptor:?];

  v96 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v97 = v139;
  URL.init(fileURLWithPath:)();

  v98 = v141;
  URL.appendingPathComponent(_:)();
  v99 = *(v10 + 8);
  v139 = (v10 + 8);
  v99(v97, v140);
  if (v95)
  {
    v100 = v95;
    URL._bridgeToObjectiveC()(v101);
    v103 = v102;
    v104 = [v100 writeToURL:v102];

    if (v104)
    {
      if (!SBUserNotificationIconImagePath)
      {
        __break(1u);
        return;
      }

      v105 = SBUserNotificationIconImagePath;
      v98 = v141;
      v106 = URL.path(percentEncoded:)(1);
      v145 = &type metadata for String;
      v144 = v106;
      sub_10000427C(&v144, error);
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v142 = v81;
      sub_10001A4C4(error, v105, v107);
    }

    else
    {
      v98 = v141;
    }
  }

  error[0] = 0;
  type metadata accessor for CFString(0);
  sub_10000A0FC(&qword_100041F38, type metadata accessor for CFString);
  v108 = Dictionary._bridgeToObjectiveC()().super.isa;

  v109 = CFUserNotificationCreate(0, 0.0, 3uLL, error, v108);

  if (v109)
  {
    v133 = v90;
    v110 = v109;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v110, sub_100008680, 0);
    if (RunLoopSource)
    {
      v112 = RunLoopSource;
      v113 = swift_allocObject();
      *(v113 + 16) = v39;
      *(v113 + 24) = v134;
      *(v113 + 32) = v135;
      v114 = xmmword_100042240;
      v137 = v94;
      *&xmmword_100042240 = v112;
      *(&xmmword_100042240 + 1) = v109;
      qword_100042250 = sub_10000A144;
      qword_100042258 = v113;
      v115 = v112;
      v116 = v110;
      v117 = v115;
      v118 = v39;
      sub_10000A154(v114, *(&v114 + 1));
      v119 = CFRunLoopGetMain();
      v120 = v117;
      v121 = v141;
      CFRunLoopAddSource(v119, v120, kCFRunLoopCommonModes);

      v99(v121, v140);
    }

    else
    {
      v127 = v132;
      static Logger.daemonLogger.getter();
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&_mh_execute_header, v128, v129, "Could not create RunLoopSource", v130, 2u);
      }

      (*(v136 + 8))(v127, v137);
      v99(v98, v140);
    }
  }

  else
  {
    v122 = v99;
    v123 = v133;
    static Logger.daemonLogger.getter();
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 67109120;
      swift_beginAccess();
      *(v126 + 4) = error[0];
      _os_log_impl(&_mh_execute_header, v124, v125, "Could not create UserNotification: %d", v126, 8u);
    }

    (*(v136 + 8))(v123, v137);
    v122(v98, v140);
  }
}

uint64_t sub_100008680(uint64_t a1, char a2)
{
  if (xmmword_100042240)
  {
    v3 = qword_100042250;

    v3(a2 & 3);
  }

  return result;
}

uint64_t sub_1000086EC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_delegate;
  swift_beginAccess();
  sub_1000045C4(a2 + v14, &v28, &qword_100042680, &unk_100031D90);
  if (v29)
  {
    sub_10000A19C(&v28, v30);
    if (a1)
    {
      if (xmmword_100042240)
      {
        v15 = *(&xmmword_100042240 + 1);
        v16 = xmmword_100042240;
        v17 = v15;

        CFRunLoopSourceInvalidate(v16);
        CFUserNotificationCancel(v17);
      }

      *(*sub_100005EB4(v30, v31) + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_enablementPromptShown) = 0;
    }

    else
    {
      static Logger.daemonLogger.getter();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Received UserNotification response to turn on Lockdown Mode. Turning on…", v24, 2u);
      }

      (*(v7 + 8))(v11, v6);
      v25 = *sub_100005EB4(v30, v31);
      v26 = swift_allocObject();
      *(v26 + 16) = a3;
      sub_100012394(1, 0, 1, 1, 1, 0, 0, 0, 0, sub_10000A1C4, v26);
    }

    return sub_100005E08(v30);
  }

  else
  {
    sub_100005E54(&v28, &qword_100042680, &unk_100031D90);
    static Logger.daemonLogger.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "No delegate set for NotificationsManager", v20, 2u);
    }

    return (*(v7 + 8))(v13, v6);
  }
}

uint64_t sub_100008A48(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = a1;
      v16 = v11;
      *v10 = 136315138;
      swift_errorRetain();
      sub_100003BC8(&unk_100042360, qword_100031DD0);
      v12 = String.init<A>(describing:)();
      v14 = sub_100019C8C(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error posting notification: %s", v10, 0xCu);
      sub_100005E08(v11);
    }

    else
    {
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

void sub_100008C40()
{
  v1 = *(v0 + OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_notificationCenter);
  if (v1)
  {
    [v1 removeAllDeliveredNotifications];
    if (xmmword_100042240)
    {
      v2 = *(&xmmword_100042240 + 1);
      source = xmmword_100042240;
      v3 = v2;

      CFRunLoopSourceInvalidate(source);
      CFUserNotificationCancel(v3);
      v4 = xmmword_100042240;
      xmmword_100042240 = 0u;
      *&qword_100042250 = 0u;
      sub_10000A154(v4, *(&v4 + 1));
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100008D18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008F6C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100009054;

  return (sub_100009B18)(v9);
}

uint64_t sub_100009054()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1000091C4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009214()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100005A88;

  return sub_100008F6C(v2, v3, v5, v4);
}

uint64_t sub_1000092D4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100005EFC;

  return v7();
}

uint64_t sub_1000093C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100005EFC;

  return sub_1000092D4(v2, v3, v5);
}

uint64_t sub_100009480(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100005A88;

  return v8();
}

uint64_t sub_100009568()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000095A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005EFC;

  return sub_100009480(a1, v4, v5, v7);
}

uint64_t sub_100009674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100003BC8(&unk_100042300, "6i") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_1000045C4(a3, v24 - v10, &unk_100042300, "6i");
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100005E54(v11, &unk_100042300, "6i");
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

    sub_100005E54(a3, &unk_100042300, "6i");

    return v22;
  }

LABEL_8:
  sub_100005E54(a3, &unk_100042300, "6i");
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

uint64_t sub_100009970()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000099A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005EFC;

  return sub_100005610(a1, v5);
}

uint64_t sub_100009A60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005A88;

  return sub_100005610(a1, v5);
}

uint64_t sub_100009B18(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for Logger();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100009BFC, 0, 0);
}

uint64_t sub_100009BFC()
{
  v51 = v0;
  v1 = *(v0 + 136);
  v2 = [*(v0 + 80) actionIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  static Logger.daemonLogger.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 136);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_100019C8C(v3, v5, &v50);
    _os_log_impl(&_mh_execute_header, v6, v7, "Received notification: %{public}s", v12, 0xCu);
    sub_100005E08(v13);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v15 = *(v0 + 88);
  v16 = OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_delegate;
  swift_beginAccess();
  sub_1000045C4(v15 + v16, v0 + 16, &qword_100042680, &unk_100031D90);
  if (*(v0 + 40))
  {
    sub_100005E54(v0 + 16, &qword_100042680, &unk_100031D90);
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v17 == v5)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        v39 = *(v0 + 120);
        static Logger.daemonLogger.getter();

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.fault.getter();

        v42 = os_log_type_enabled(v40, v41);
        v43 = *(v0 + 120);
        v45 = *(v0 + 96);
        v44 = *(v0 + 104);
        if (v42)
        {
          v49 = *(v0 + 120);
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v50 = v47;
          *v46 = 136380675;
          v48 = sub_100019C8C(v3, v5, &v50);

          *(v46 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v40, v41, "Unknown notification actionIdentifier: %{private}s", v46, 0xCu);
          sub_100005E08(v47);

          v31 = v49;
        }

        else
        {

          v31 = v43;
        }

        v32 = v45;
        goto LABEL_14;
      }
    }

    v28 = *(v0 + 128);

    static Logger.daemonLogger.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 128);
    v24 = *(v0 + 96);
    v30 = *(v0 + 104);
    if (v29)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Opening settings…";
      goto LABEL_12;
    }
  }

  else
  {
    v18 = *(v0 + 112);

    sub_100005E54(v0 + 16, &qword_100042680, &unk_100031D90);
    static Logger.daemonLogger.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 104);
    v22 = *(v0 + 112);
    v24 = *(v0 + 96);
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "No delegate set for NotificationsManager";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v19, v20, v26, v25, 2u);
    }
  }

  v31 = v22;
  v32 = v24;
LABEL_14:
  v14(v31, v32);
  v34 = *(v0 + 128);
  v33 = *(v0 + 136);
  v36 = *(v0 + 112);
  v35 = *(v0 + 120);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_10000A09C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A0B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A0FC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10000A154(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000A19C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000A1CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003C74(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A220(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_10000A268()
{
  result = qword_100042380;
  if (!qword_100042380)
  {
    sub_10000A220(255, &qword_100042378, UNNotificationCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042380);
  }

  return result;
}

void sub_10000A30C(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003B7C();
  (*(v8 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v7);
  v12 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v11, v7);
  mach_service = xpc_connection_create_mach_service("com.apple.amfi.xpc", v12, 0);

  aBlock[4] = LockdownModeServer.LockdownModeState.rawValue.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000226B4;
  aBlock[3] = &unk_10003D578;
  v14 = _Block_copy(aBlock);
  xpc_connection_set_event_handler(mach_service, v14);
  _Block_release(v14);
  xpc_connection_resume(mach_service);
  if (a1)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = &_swiftEmptyDictionarySingleton;
  sub_10001A8A0(v15, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v18 = _CFXPCCreateXPCMessageWithCFObject();

  if (v18)
  {

    v19 = xpc_connection_send_message_with_reply_sync(mach_service, v18);
    type = xpc_get_type(v19);
    if (type == XPC_TYPE_ERROR.getter())
    {
      static Logger.daemonLogger.getter();
      swift_unknownObjectRetain();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v33 = v2;
        v24 = v23;
        v31 = swift_slowAlloc();
        aBlock[0] = v31;
        *v24 = 136315138;
        v25 = [v19 description];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v3;
        v28 = v27;

        v29 = sub_100019C8C(v26, v28, aBlock);

        *(v24 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v21, v22, "Received an XPC error when setting Developer Mode: %s", v24, 0xCu);
        sub_100005E08(v31);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v32 + 8))(v6, v33);
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v3 + 8))(v6, v2);
      }
    }

    else
    {
      if (xpc_dictionary_get_value(v19, "cfreply"))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        xpc_connection_cancel(mach_service);
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000A7C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_10000A7D8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = sub_100003BC8(&unk_100042310, &unk_100032370);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = a1;
  v15 = v13;
  if (v14)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  sub_10002BD3C(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000AA38(v7);
    v17 = 0;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v18 = *(v9 + 8);
    v18(v7, v8);
    URL.path.getter();
    v18(v12, v8);
    v17 = String._bridgeToObjectiveC()();
  }

  v19 = [v15 objectForKey:v16 inDomain:v17];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10000AA38(uint64_t a1)
{
  v2 = sub_100003BC8(&unk_100042310, &unk_100032370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000AAA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003BC8(&unk_100042310, &unk_100032370);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = a2;
  v14 = v12;
  if (v13)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  sub_10002BD3C(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000AA38(v6);
    v16 = 0;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v17 = *(v8 + 8);
    v17(v6, v7);
    URL.path.getter();
    v17(v11, v7);
    v16 = String._bridgeToObjectiveC()();
  }

  [v14 removeObjectForKey:v15 inDomain:v16];
}

void sub_10000ACC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100003BC8(&unk_100042310, &unk_100032370);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() standardUserDefaults];
  sub_10000B004(a1, v27);
  v14 = v28;
  if (v28)
  {
    v15 = sub_100005EB4(v27, v28);
    v25 = &v25;
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    __chkstk_darwin(v15);
    v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v19, v14);
    sub_100005E08(v27);
    if (a3)
    {
LABEL_3:
      v21 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  sub_10002BD3C(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000AA38(v8);
    v22 = 0;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v23 = *(v10 + 8);
    v23(v8, v9);
    URL.path.getter();
    v23(v13, v9);
    v22 = String._bridgeToObjectiveC()();
  }

  v24 = v26;
  [v26 setObject:v20 forKey:v21 inDomain:{v22, v25}];

  swift_unknownObjectRelease();
}

uint64_t sub_10000B004(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BC8(&qword_100042500, &qword_100031EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_10000B098()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedConnection];
  if (v5)
  {
    v6 = v5;
    v7 = MCFeatureLockdownModeAllowed;
    v8 = [v6 effectiveBoolValueForSetting:v7];

    return v8 == 1;
  }

  else
  {
    static Logger.daemonLogger.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Could not get MC connection", v12, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }
}

void sub_10000B238(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedConnection];
  if (v7)
  {
    v13 = v7;
    [v7 setBoolValue:a1 & 1 forSetting:MCFeatureLockdownModeAllowed];
    v8 = v13;
  }

  else
  {
    static Logger.daemonLogger.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Could not get MC connection", v11, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t *LockdownModeServer.shared.unsafeMutableAddressor()
{
  if (qword_100041CE8 != -1)
  {
    swift_once();
  }

  return &static LockdownModeServer.shared;
}

uint64_t sub_10000B434(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_10000B478(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_10000B4E4()
{
  result = [objc_allocWithZone(type metadata accessor for LockdownModeServer()) init];
  static LockdownModeServer.shared = result;
  return result;
}

id static LockdownModeServer.shared.getter()
{
  if (qword_100041CE8 != -1)
  {
    swift_once();
  }

  v1 = static LockdownModeServer.shared;

  return v1;
}

id sub_10000B570()
{
  v1 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___notificationsManager;
  v2 = *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___notificationsManager];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___notificationsManager];
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for NotificationsManager()) init];
    v10[3] = type metadata accessor for LockdownModeServer();
    v10[4] = &off_10003D618;
    v10[0] = v0;
    v5 = OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_delegate;
    swift_beginAccess();
    v6 = v0;
    sub_1000224B8(v10, v4 + v5, &qword_100042680, &unk_100031D90);
    swift_endAccess();
    v7 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10000B64C()
{
  v1 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore;
  v2 = *(v0 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore);
  }

  else
  {
    v4 = objc_allocWithZone(NSUbiquitousKeyValueStore);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithStoreIdentifier:v5 type:2];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10000B6F8()
{
  v1 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___idsManager;
  v2 = *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___idsManager];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___idsManager];
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for IDSManager()) init];
    v10[3] = type metadata accessor for LockdownModeServer();
    v10[4] = &off_10003D638;
    v10[0] = v0;
    v5 = OBJC_IVAR____TtC13lockdownmoded10IDSManager_delegate;
    swift_beginAccess();
    v6 = v0;
    sub_1000224B8(v10, v4 + v5, &qword_100042FF0, &qword_1000324B0);
    swift_endAccess();
    v7 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t LockdownModeServer.LockdownModeState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 6710895;
    case 2:
      return 28271;
    case 1:
      return 0x646567617473;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

unint64_t LockdownModeServer.LockdownModeState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_10000B85C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000B8D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_10000B914@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_10000B930()
{
  v1 = *v0;
  if (!*v0)
  {
    return 6710895;
  }

  if (v1 == 2)
  {
    return 28271;
  }

  if (v1 == 1)
  {
    return 0x646567617473;
  }

  v3 = *v0;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10000B9AC()
{
  v1 = (v0 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___deviceKVSKey);
  if (*(v0 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___deviceKVSKey + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___deviceKVSKey + 8);
  }

  else
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = MGGetStringAnswer();

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    v2 = 0x3A656369766564;
    v10 = v1[1];
    *v1 = 0x3A656369766564;
    v1[1] = 0xE700000000000000;
  }

  return v2;
}

uint64_t sub_10000BAA8()
{
  v0 = sub_10000B64C();
  sub_10000B9AC();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 dictionaryForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v3 + 16) || (v4 = sub_10001A408(0x6574617473, 0xE500000000000000), (v5 & 1) == 0))
  {

    return 0;
  }

  sub_100005DA4(*(v3 + 56) + 32 * v4, v8);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v7 == 2)
  {
    return 2;
  }

  else
  {
    return v7 == 1;
  }
}

void sub_10000BBC8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000B64C();
  sub_10000B9AC();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 dictionaryForKey:v10];

  if (v11)
  {
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = sub_100004390(&_swiftEmptyArrayStorage);
  }

  v30 = &type metadata for Int;
  *&v29 = a1;
  sub_10000427C(&v29, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v12;
  sub_10001A750(v28, 0x6574617473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v14 = v27;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v16 = v15;
  (*(v5 + 8))(v8, v4);
  v30 = &type metadata for Double;
  *&v29 = v16;
  sub_10000427C(&v29, v28);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v14;
  sub_10001A750(v28, 0x7441746573, 0xE500000000000000, v17);
  v18 = v27;
  v30 = &type metadata for Double;
  *&v29 = v16;
  sub_10000427C(&v29, v28);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v18;
  sub_10001A750(v28, 0x616470557473616CLL, 0xEB00000000646574, v19);
  v20 = *(v2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = v2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___deviceKVSKey;
  v23 = *(v2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___deviceKVSKey);
  v24 = *(v22 + 8);

  v25 = String._bridgeToObjectiveC()();

  [v20 setDictionary:isa forKey:v25];
}

uint64_t sub_10000BEBC()
{
  v1 = v0;
  v42 = type metadata accessor for Date();
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v42);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000B64C();
  v6 = [v5 dictionaryRepresentation];

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_10000B9AC();
  v10 = v9;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v45 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore;
  v14 = (v11 + 63) >> 6;
  v40 = (v2 + 8);
  v15 = v8;

  v16 = 0;
  while (v13)
  {
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = (*(v7 + 48) + ((v16 << 10) | (16 * v18)));
    if (*v19 != v15 || v19[1] != v10)
    {
      v21 = *v19;
      v22 = v19[1];
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v23._countAndFlagsBits = 0x656369766564;
        v23._object = 0xE600000000000000;
        if (!String.hasPrefix(_:)(v23))
        {
          goto LABEL_25;
        }

        v24 = *(v1 + v45);
        v44 = v1;
        v25 = v24;
        v26 = String._bridgeToObjectiveC()();
        v43 = v15;
        v27 = v26;

        v28 = [v25 dictionaryForKey:v27];

        v1 = v44;
        v15 = v43;
        if (v28)
        {
          v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v29 + 16) && (v30 = sub_10001A408(0x6574617473, 0xE500000000000000), (v31 & 1) != 0) && (sub_100005DA4(*(v29 + 56) + 32 * v30, v47), (swift_dynamicCast() & 1) != 0) && (*&v46 - 1) <= 1 && *(v29 + 16) && (v32 = sub_10001A408(0x616470557473616CLL, 0xEB00000000646574), (v33 & 1) != 0))
          {
            sub_100005DA4(*(v29 + 56) + 32 * v32, v47);

            if (swift_dynamicCast())
            {
              v34 = v46;
              v35 = v41;
              Date.init()();
              Date.timeIntervalSince1970.getter();
              v37 = v36;
              (*v40)(v35, v42);
              if (v37 - v34 <= 1209600.0)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
LABEL_25:
          }
        }
      }
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return 0;
    }

    v13 = *(v7 + 64 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:

  return 1;
}

char *sub_10000C2D0()
{
  v1 = type metadata accessor for Logger();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  v3 = __chkstk_darwin(v1);
  v59 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v58 = &v51 - v6;
  __chkstk_darwin(v5);
  v55 = &v51 - v7;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  __chkstk_darwin(v8);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___notificationsManager] = 0;
  *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore] = 0;
  v15 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_listener;
  static Constants.serviceName.getter();
  v16 = objc_allocWithZone(NSXPCListener);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 initWithMachServiceName:v17];

  *&v0[v15] = v18;
  *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___idsManager] = 0;
  v51 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_eventsQueue;
  sub_10000A220(0, &qword_100041D00, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  v61 = &_swiftEmptyArrayStorage;
  sub_100022560(&qword_100041D08, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003BC8(&qword_100041D10, &qword_1000314B0);
  sub_10000A1CC(&qword_100041D18, &qword_100041D10, &qword_1000314B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v53 + 104))(v52, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v54);
  *&v0[v51] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_enablementPromptShown] = 0;
  v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt] = 0;
  v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_skipNextKVSSync] = 0;
  v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] = 0;
  v19 = &v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___deviceKVSKey];
  v20 = type metadata accessor for LockdownModeServer();
  *v19 = 0;
  v19[1] = 0;
  v60.receiver = v0;
  v60.super_class = v20;
  v21 = objc_msgSendSuper2(&v60, "init");
  v22 = v55;
  static Logger.daemonLogger.getter();
  v23 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v26 = 136446466;
    type metadata accessor for LockdownModeXNU();
    v27 = static LockdownModeXNU.lockdownModeEnabled.getter();
    v28 = (v27 & 1) == 0;
    if (v27)
    {
      v29 = 28271;
    }

    else
    {
      v29 = 6710895;
    }

    if (v28)
    {
      v30 = 0xE300000000000000;
    }

    else
    {
      v30 = 0xE200000000000000;
    }

    v31 = sub_100019C8C(v29, v30, &v61);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2082;
    v32 = [objc_allocWithZone(LAStorage) init];
    v33 = [v32 BOOLForKey:6];

    if (v33)
    {
      v34 = 28271;
    }

    else
    {
      v34 = 6710895;
    }

    if (v33)
    {
      v35 = 0xE200000000000000;
    }

    else
    {
      v35 = 0xE300000000000000;
    }

    v36 = sub_100019C8C(v34, v35, &v61);

    *(v26 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v24, v25, "Setting up lockdownmoded… (sysctl: %{public}s, ACM: %{public}s)", v26, 0x16u);
    swift_arrayDestroy();
  }

  v37 = *(v56 + 8);
  v38 = v23;
  v39 = v57;
  v37(v38, v57);
  v40 = v58;
  static Logger.daemonLogger.getter();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v59;
  if (v43)
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Setting up observers…", v45, 2u);
  }

  v37(v40, v39);
  sub_10000CB6C();
  static Logger.daemonLogger.getter();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Setting up the XPC server…", v48, 2u);
  }

  v37(v44, v39);
  v49 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_listener;
  [*&v21[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_listener] setDelegate:v21];
  [*&v21[v49] resume];

  return v21;
}

id LockdownModeServer.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_listener] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockdownModeServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000CB6C()
{
  v1 = sub_10000B6F8();
  v22 = type metadata accessor for LockdownModeServer();
  v23 = &off_10003D638;
  aBlock = v0;
  v2 = OBJC_IVAR____TtC13lockdownmoded10IDSManager_delegate;
  swift_beginAccess();
  v3 = v0;
  sub_1000224B8(&aBlock, v1 + v2, &qword_100042FF0, &qword_1000324B0);
  swift_endAccess();

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000023;
  v5[3] = 0x80000001000345E0;
  v5[4] = sub_10001EF58;
  v5[5] = v4;
  v23 = sub_10001EF64;
  v24 = v5;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000226B4;
  v22 = &unk_10003D810;
  v6 = _Block_copy(&aBlock);
  v7 = v3;

  v8 = String.utf8CString.getter();
  xpc_activity_register((v8 + 32), XPC_ACTIVITY_CHECK_IN, v6);

  _Block_release(v6);

  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  v10[2] = 0xD000000000000032;
  v10[3] = 0x8000000100034610;
  v10[4] = sub_10001EF70;
  v10[5] = v9;
  v23 = sub_100022630;
  v24 = v10;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000226B4;
  v22 = &unk_10003D888;
  v11 = _Block_copy(&aBlock);
  v12 = v7;

  v13 = String.utf8CString.getter();
  xpc_activity_register((v13 + 32), XPC_ACTIVITY_CHECK_IN, v11);

  _Block_release(v11);

  v14 = *(v12 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_eventsQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v23 = sub_10001EFB8;
  v24 = v15;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000226B4;
  v22 = &unk_10003D8D8;
  v16 = _Block_copy(&aBlock);
  v17 = v12;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v14, v16);
  _Block_release(v16);
  v18 = [objc_opt_self() defaultCenter];
  [v18 addObserver:v17 selector:"deviceIsSetup" name:NRPairedDeviceRegistryDeviceIsSetupNotification object:0];
}

uint64_t sub_10000CF48(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v38 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v38 - v15;
  __chkstk_darwin(v14);
  v18 = &v38 - v17;
  if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter()))
  {
    if (qword_100041CF8 != -1)
    {
      swift_once();
    }

    if (off_1000441F0())
    {
      static Logger.daemonLogger.getter();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v39 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_100019C8C(0xD000000000000023, 0x80000001000345E0, &v39);
        _os_log_impl(&_mh_execute_header, v19, v20, "We're in Buddy. Skipping activity for now: %s", v21, 0xCu);
        sub_100005E08(v22);
      }

      (*(v5 + 8))(v18, v4);
    }

    else
    {
      if (qword_100041CF0 != -1)
      {
        swift_once();
      }

      sub_100028470();
      sub_10000F4BC();
    }

    static Logger.daemonLogger.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100019C8C(0xD000000000000023, 0x80000001000345E0, &v39);
      _os_log_impl(&_mh_execute_header, v23, v24, "Done running activity: %s", v25, 0xCu);
      sub_100005E08(v26);
    }

    v27 = *(v5 + 8);
    v27(v16, v4);
    result = xpc_activity_set_state(a1, 5);
    if ((result & 1) == 0)
    {
      static Logger.daemonLogger.getter();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v39 = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_100019C8C(0xD000000000000023, 0x80000001000345E0, &v39);
        _os_log_impl(&_mh_execute_header, v29, v30, "Could not set activity state to Done: %s", v31, 0xCu);
        sub_100005E08(v32);
      }

      return (v27)(v13, v4);
    }
  }

  else
  {
    static Logger.daemonLogger.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_100019C8C(0xD000000000000023, 0x80000001000345E0, &v39);
      _os_log_impl(&_mh_execute_header, v33, v34, "Lockdown Mode is off. Unregistering activity: %s", v35, 0xCu);
      sub_100005E08(v36);
    }

    (*(v5 + 8))(v10, v4);
    v37 = String.utf8CString.getter();
    xpc_activity_unregister((v37 + 32));
  }

  return result;
}

uint64_t sub_10000D65C(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v32 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = v32 - v14;
  __chkstk_darwin(v13);
  if (qword_100041CF8 != -1)
  {
    swift_once();
  }

  if (off_1000441F0())
  {
    static Logger.daemonLogger.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100019C8C(0xD000000000000032, 0x8000000100034610, v32);
      _os_log_impl(&_mh_execute_header, v16, v17, "We're in Buddy. Skipping activity for now: %s", v18, 0xCu);
      sub_100005E08(v19);
    }

    (*(v5 + 8))(v15, v4);
  }

  else
  {
    if (qword_100041CF0 != -1)
    {
      swift_once();
    }

    if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled))
    {
      v20 = 1;
    }

    else
    {
      type metadata accessor for LockdownModeXNU();
      v20 = static LockdownModeXNU.lockdownModeEnabled.getter();
    }

    sub_10002B764(v20 & 1);
  }

  static Logger.daemonLogger.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_100019C8C(0xD000000000000032, 0x8000000100034610, v32);
    _os_log_impl(&_mh_execute_header, v21, v22, "Done running activity: %s", v23, 0xCu);
    sub_100005E08(v24);
  }

  v25 = *(v5 + 8);
  v25(v12, v4);
  result = xpc_activity_set_state(a1, 5);
  if ((result & 1) == 0)
  {
    static Logger.daemonLogger.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100019C8C(0xD000000000000032, 0x8000000100034610, v32);
      _os_log_impl(&_mh_execute_header, v27, v28, "Could not set activity state to Done: %s", v29, 0xCu);
      sub_100005E08(v30);
    }

    return (v25)(v9, v4);
  }

  return result;
}

void sub_10000DBE0(void *a1, _BYTE *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v113 = *(v4 - 8);
  v5 = *(v113 + 64);
  __chkstk_darwin(v4);
  v111 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for DispatchQoS();
  v110 = *(v112 - 8);
  v7 = *(v110 + 64);
  __chkstk_darwin(v112);
  v109 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DispatchTime();
  v108 = *(v114 - 8);
  v9 = *(v108 + 64);
  v10 = __chkstk_darwin(v114);
  v106 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v107 = &v99 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v99 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v99 - v23;
  v25 = __chkstk_darwin(v22);
  v104 = &v99 - v26;
  v27 = __chkstk_darwin(v25);
  v105 = &v99 - v28;
  v29 = __chkstk_darwin(v27);
  v115 = &v99 - v30;
  v31 = __chkstk_darwin(v29);
  v116 = &v99 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v99 - v34;
  __chkstk_darwin(v33);
  v37 = &v99 - v36;
  v38 = XPC_EVENT_KEY_NAME.getter();
  if (!xpc_dictionary_get_string(a1, v38))
  {
    return;
  }

  v100 = v21;
  v102 = v24;
  v103 = v4;
  v101 = v18;
  v117 = v14;
  v118 = a2;
  v39 = String.init(cString:)();
  v41 = v40;
  static Logger.daemonLogger.getter();

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = v13;
    v46 = swift_slowAlloc();
    *&aBlock = v46;
    *v44 = 136315138;
    v47 = v41;
    *(v44 + 4) = sub_100019C8C(v39, v41, &aBlock);
    sub_100005E08(v46);
    v13 = v45;
  }

  else
  {
    v47 = v41;
  }

  v48 = *(v117 + 8);
  v48(v37, v13);
  v49 = v118;
  v50 = v47;
  v51 = v39;
  if (v39 == 0xD000000000000035 && 0x8000000100034670 == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_100041CF8 != -1)
    {
      swift_once();
    }

    if (off_1000441F0())
    {
      v52 = v39;
      static Logger.daemonLogger.getter();

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&aBlock = v56;
        *v55 = 136315138;
        v57 = sub_100019C8C(v52, v50, &aBlock);

        *(v55 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v53, v54, "Not handling %s because we're in Buddy", v55, 0xCu);
        sub_100005E08(v56);

        v49 = v118;
      }

      else
      {
      }

      v48(v35, v13);
      v49[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_skipNextKVSSync] = 0;
      v63 = v116;
      static Logger.daemonLogger.getter();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "skipNextKVSSync unset", v66, 2u);
      }

      v67 = v63;
LABEL_25:
      v48(v67, v13);
      return;
    }

    v58 = 0;
LABEL_20:
    sub_10000F710(v58);
    return;
  }

  if (v39 == 0xD000000000000025 && 0x80000001000346B0 == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1000115B8();
    v49[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_skipNextKVSSync] = 1;
    v59 = v115;
    static Logger.daemonLogger.getter();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "skipNextKVSSync set", v62, 2u);
    }

    v48(v59, v13);
    v58 = 1;
    goto LABEL_20;
  }

  if (v39 == 0xD000000000000021 && 0x80000001000346E0 == v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v68 = v103;
    if (v49[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt] == 1)
    {
      v69 = v105;
      static Logger.daemonLogger.getter();
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "Buddy exited and we have pendingEnablementPrompt set. Scheduling turnOnAlert notification…", v72, 2u);
        v49 = v118;
      }

      v48(v69, v13);
      sub_10000A220(0, &qword_100041D00, OS_dispatch_queue_ptr);
      v73 = static OS_dispatch_queue.main.getter();
      v74 = v106;
      static DispatchTime.now()();
      v75 = v107;
      + infix(_:_:)();
      v118 = *(v108 + 8);
      (v118)(v74, v114);
      v76 = swift_allocObject();
      *(v76 + 16) = v49;
      v121 = sub_10001EFC0;
      v122 = v76;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v120 = sub_10000B434;
      *(&v120 + 1) = &unk_10003D928;
      v77 = _Block_copy(&aBlock);
      v78 = v49;

      v79 = v109;
      static DispatchQoS.unspecified.getter();
      *&aBlock = &_swiftEmptyArrayStorage;
      sub_100022560(&qword_100042320, &type metadata accessor for DispatchWorkItemFlags);
      sub_100003BC8(&qword_100042328, &qword_100031DA0);
      sub_10000A1CC(&qword_100042330, &qword_100042328, &qword_100031DA0);
      v80 = v111;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v77);

      (*(v113 + 8))(v80, v68);
      (*(v110 + 8))(v79, v112);
      (v118)(v75, v114);
    }

    return;
  }

  if ((v39 != 0xD000000000000038 || 0x8000000100034710 != v47) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v39 != 0xD000000000000033 || 0x8000000100034750 != v47) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v93 = v100;
    static Logger.daemonLogger.getter();

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *&aBlock = v97;
      *v96 = 136315138;
      v98 = sub_100019C8C(v39, v50, &aBlock);

      *(v96 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v94, v95, "Unhandled notification: %s", v96, 0xCu);
      sub_100005E08(v97);
    }

    else
    {
    }

    v67 = v93;
    goto LABEL_25;
  }

  v81 = v104;
  static Logger.daemonLogger.getter();
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v82, v83, "Checking if the active paired device is setup…", v84, 2u);
  }

  v48(v81, v13);
  v85 = [objc_opt_self() sharedInstance];
  if (!v85)
  {
    __break(1u);
    return;
  }

  v86 = v85;
  v87 = [v85 getActivePairedDevice];

  if (!v87)
  {

    aBlock = 0u;
    v120 = 0u;
LABEL_56:
    sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
    return;
  }

  if ([v87 valueForProperty:NRDevicePropertyIsSetup])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v123 = 0u;
    v124 = 0u;
  }

  aBlock = v123;
  v120 = v124;
  if (!*(&v124 + 1))
  {

    goto LABEL_56;
  }

  sub_10000A220(0, &unk_100042660, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_58:

    return;
  }

  v88 = v123;
  if (![v123 BOOLValue])
  {

    goto LABEL_58;
  }

  v117 = v51;
  static Logger.daemonLogger.getter();
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&_mh_execute_header, v89, v90, "Paired device is setup. Turning on Lockdown Mode (if not Tinker)…", v91, 2u);
  }

  v48(v102, v13);
  if (v118[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled])
  {
    v92 = 1;
  }

  else
  {
    type metadata accessor for LockdownModeXNU();
    v92 = static LockdownModeXNU.lockdownModeEnabled.getter();
  }

  sub_100013B28(v92 & 1);
}

void sub_10000ED24()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemonLogger.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Posting scheduled turnOnPostBuddy notification…", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  sub_100011E54(2, 0, 1);
}

uint64_t sub_10000EE78(_xpc_activity_s *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(_xpc_activity_s *), uint64_t a5)
{
  v50 = a5;
  v51 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v53 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v15 = (&v48 - v14);
  v16 = __chkstk_darwin(v13);
  v54 = &v48 - v17;
  v18 = __chkstk_darwin(v16);
  v52 = (&v48 - v19);
  __chkstk_darwin(v18);
  v21 = &v48 - v20;
  static Logger.daemonLogger.getter();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v49 = v9;
    v26 = v8;
    v27 = v25;
    v55 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_100019C8C(a2, a3, &v55);
    _os_log_impl(&_mh_execute_header, v22, v23, "Received an XPC activity: %s", v24, 0xCu);
    sub_100005E08(v27);
    v8 = v26;
    v9 = v49;
  }

  v28 = *(v9 + 8);
  v28(v21, v8);
  state = xpc_activity_get_state(a1);
  v30 = v54;
  if (state == 2)
  {
    static Logger.daemonLogger.getter();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v53 = a1;
      v41 = v8;
      v42 = v40;
      v43 = swift_slowAlloc();
      v55 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_100019C8C(a2, a3, &v55);
      _os_log_impl(&_mh_execute_header, v38, v39, "Running activity: %s", v42, 0xCu);
      sub_100005E08(v43);

      v8 = v41;
      a1 = v53;

      v44 = v54;
    }

    else
    {

      v44 = v30;
    }

    v28(v44, v8);
    if (xpc_activity_set_state(a1, 4))
    {
      return v51(a1);
    }

    static Logger.daemonLogger.getter();

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v31 = v15;
      v34 = v8;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v55 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_100019C8C(a2, a3, &v55);
      v37 = "Could not set activity state to Continue: %s";
      goto LABEL_18;
    }

    v45 = v15;
  }

  else
  {
    if (state)
    {
      v31 = v53;
      static Logger.daemonLogger.getter();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = v8;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v55 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_100019C8C(a2, a3, &v55);
        v37 = "Error handling activity: %s";
        goto LABEL_18;
      }
    }

    else
    {
      v31 = v52;
      static Logger.daemonLogger.getter();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = v8;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v55 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_100019C8C(a2, a3, &v55);
        v37 = "Checked-in activity: %s";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v32, v33, v37, v35, 0xCu);
        sub_100005E08(v36);

        v45 = v31;
        v46 = v34;
        return (v28)(v45, v46);
      }
    }

    v45 = v31;
  }

  v46 = v8;
  return (v28)(v45, v46);
}

uint64_t sub_10000F45C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_10000F4BC()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000B64C();
  sub_10000B9AC();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 dictionaryForKey:v8];

  if (v9)
  {
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    Date.init()();
    Date.timeIntervalSince1970.getter();
    v12 = v11;
    (*(v3 + 8))(v6, v2);
    v23 = &type metadata for Double;
    *&v22 = v12;
    sub_10000427C(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[1] = v10;
    sub_10001A750(v21, 0x616470557473616CLL, 0xEB00000000646574, isUniquelyReferenced_nonNull_native);
    v14 = *(v1 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v16 = v1 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___deviceKVSKey;
    v17 = *(v1 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___deviceKVSKey);
    v18 = *(v16 + 8);

    v19 = String._bridgeToObjectiveC()();

    [v14 setDictionary:isa forKey:v19];
  }
}

void sub_10000F710(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v43[-v11];
  v13 = __chkstk_darwin(v10);
  v15 = &v43[-v14];
  __chkstk_darwin(v13);
  v17 = &v43[-v16];
  sub_10001B1C4();
  if (v18)
  {
    if ((a1 & 1) != 0 || (v19 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_skipNextKVSSync, *(v2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_skipNextKVSSync) != 1))
    {
      v30 = a1 & 1;
      static Logger.daemonLogger.getter();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v44 = a1 & 1;
        v34 = v33;
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        *v34 = 136446210;
        if (a1)
        {
          v36 = 0x53746E756F636361;
        }

        else
        {
          v36 = 0x6168436574617473;
        }

        if (a1)
        {
          v37 = 0xED00006E496E6769;
        }

        else
        {
          v37 = 0xEB0000000065676ELL;
        }

        v38 = sub_100019C8C(v36, v37, aBlock);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v32, "Fetching state from KVS (source: %{public}s)…", v34, 0xCu);
        sub_100005E08(v35);

        v30 = v44;
      }

      (*(v5 + 8))(v12, v4);
      v39 = sub_10000B64C();
      v40 = swift_allocObject();
      *(v40 + 16) = v2;
      *(v40 + 24) = v30;
      aBlock[4] = sub_10001EF4C;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000B478;
      aBlock[3] = &unk_10003D798;
      v41 = _Block_copy(aBlock);
      v42 = v2;

      [v39 synchronizeWithCompletionHandler:v41];
      _Block_release(v41);
    }

    else
    {
      static Logger.daemonLogger.getter();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "skipNextKVSSync is set, skipping KVS sync…", v22, 2u);
      }

      v23 = *(v5 + 8);
      v23(v17, v4);
      *(v2 + v19) = 0;
      static Logger.daemonLogger.getter();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "skipNextKVSSync unset", v26, 2u);
      }

      v23(v15, v4);
    }
  }

  else
  {
    static Logger.daemonLogger.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "No Apple account available. Not syncing with KVS", v29, 2u);
    }

    (*(v5 + 8))(v9, v4);
  }
}

void sub_10000FBF8(uint64_t a1, uint64_t a2, int a3)
{
  v235 = a3;
  v236 = a2;
  v240 = type metadata accessor for Logger();
  v238 = *(v240 - 8);
  v4 = *(v238 + 64);
  v5 = __chkstk_darwin(v240);
  v239 = &v212 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v231 = &v212 - v8;
  v9 = __chkstk_darwin(v7);
  v233 = &v212 - v10;
  v11 = __chkstk_darwin(v9);
  v232 = &v212 - v12;
  v13 = __chkstk_darwin(v11);
  v234 = &v212 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v212 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v212 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v212 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v212 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v212 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v212 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v212 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v212 - v37;
  __chkstk_darwin(v36);
  v40 = &v212 - v39;
  v41 = type metadata accessor for Date();
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41);
  v46 = &v212 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v47 = v238;
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v52;
      *v51 = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "Could not sync the state with KVS: %@", v50, 0xCu);
      sub_100005E54(v51, &qword_100042158, qword_100031C60);
    }

    (*(v47 + 8))(v239, v240);
    return;
  }

  v230 = v44;
  v218 = v46;
  v219 = v43;
  v226 = v40;
  v212 = v35;
  v221 = v38;
  v223 = v32;
  v228 = v29;
  v213 = v23;
  v214 = v20;
  v216 = v26;
  v215 = v17;
  v53 = v236;
  v54 = sub_10000B64C();
  sub_10000B9AC();
  v55 = String._bridgeToObjectiveC()();

  v56 = [v54 dictionaryForKey:v55];

  v57 = &type metadata for Any;
  if (v56)
  {
    v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v59 = 0.0;
    v60 = v240;
    if (v58)
    {
      v61 = *(v58 + 16);
      v229 = v58;
      if (v61)
      {

        v62 = sub_10001A408(0x7441746573, 0xE500000000000000);
        if (v63)
        {
          sub_100005DA4(*(v58 + 56) + 32 * v62, &v242);

          v64 = swift_dynamicCast();
          v222 = 0;
          v225 = v64 ^ 1;
          if (v64)
          {
            v59 = v241;
          }

          else
          {
            v59 = 0.0;
          }

          goto LABEL_17;
        }
      }

      v222 = 0;
    }

    else
    {
      v229 = 0;
      v222 = 1;
    }

    v225 = 1;
  }

  else
  {
    v229 = 0;
    v59 = 0.0;
    v222 = 1;
    v225 = 1;
    v60 = v240;
  }

LABEL_17:
  v227 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore;
  v65 = [*(v53 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore) dictionaryRepresentation];
  v66 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v67 = 0;
  v224 = 0.0;
  v68 = 0;
  v70 = v66 + 64;
  v69 = *(v66 + 64);
  v239 = v66;
  v71 = 1;
  v72 = 1 << *(v66 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & v69;
  v237 = (v53 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___deviceKVSKey);
  v75 = (v72 + 63) >> 6;
  v217 = (v230 + 8);
  v76 = 0.0;
  v77 = 0.0;
  LODWORD(v230) = 1;
  while (1)
  {
    v78 = v77;
    v79 = v71;
    v80 = v67;
    if (!v74)
    {
      break;
    }

LABEL_25:
    v82 = __clz(__rbit64(v74));
    v74 &= v74 - 1;
    v83 = (*(v239 + 6) + ((v68 << 10) | (16 * v82)));
    v84 = *v83 == *v237 && v237[1] == v83[1];
    v67 = v80;
    if (!v84)
    {
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v67 = v80;
      v71 = v79;
      v77 = v78;
      if ((v85 & 1) == 0)
      {

        v86._countAndFlagsBits = 0x656369766564;
        v86._object = 0xE600000000000000;
        if (!String.hasPrefix(_:)(v86))
        {
          goto LABEL_50;
        }

        v87 = *(v236 + v227);
        v220 = v80;
        v88 = v57;
        v89 = v60;
        v90 = v87;
        v91 = String._bridgeToObjectiveC()();

        v92 = [v90 dictionaryForKey:v91];

        v60 = v89;
        v57 = v88;
        v80 = v220;

        v67 = v80;
        v71 = v79;
        v77 = v78;
        if (v92)
        {
          v93 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (!*(v93 + 16))
          {
            goto LABEL_50;
          }

          v94 = sub_10001A408(0x616470557473616CLL, 0xEB00000000646574);
          if ((v95 & 1) == 0)
          {
            goto LABEL_50;
          }

          sub_100005DA4(*(v93 + 56) + 32 * v94, &v242);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_50;
          }

          v96 = v241;
          v97 = v218;
          Date.init()();
          Date.timeIntervalSince1970.getter();
          v99 = v98;
          (*v217)(v97, v219);
          if (v99 - v96 > 1209600.0 || !*(v93 + 16) || (v100 = sub_10001A408(0x7441746573, 0xE500000000000000), (v101 & 1) == 0) || (sub_100005DA4(*(v93 + 56) + 32 * v100, &v242), (swift_dynamicCast() & 1) == 0) || !*(v93 + 16) || (v102 = v241, v103 = sub_10001A408(0x6574617473, 0xE500000000000000), (v104 & 1) == 0))
          {
LABEL_50:

            goto LABEL_51;
          }

          sub_100005DA4(*(v93 + 56) + 32 * v103, &v242);

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_51;
          }

          v67 = v80;
          v71 = v79;
          v77 = v78;
          if (*&v241 <= 2uLL)
          {
            v105 = v76 < v102;
            v106 = v76 >= v102;
            if (v76 < v102)
            {
              v76 = v102;
            }

            v107 = v224;
            if (v105)
            {
              v107 = v241;
            }

            v224 = v107;
            LODWORD(v230) = v106 & v230;
            if (*&v241 == 1)
            {
              v71 = 0;
              v108 = v78 < v102;
              v67 = 1;
LABEL_54:
              v77 = v102;
              if (!v108)
              {
LABEL_51:
                v67 = v80;
                v71 = v79;
                v77 = v78;
              }
            }

            else
            {
              v67 = v80;
              v71 = v79;
              v77 = v78;
              if (*&v241 == 2)
              {
                v71 = 0;
                v108 = v78 < v102;
                v67 = 2;
                goto LABEL_54;
              }
            }
          }
        }
      }
    }
  }

  while (2)
  {
    v81 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      __break(1u);
      goto LABEL_148;
    }

    if (v81 < v75)
    {
      v74 = *(v70 + 8 * v81);
      ++v68;
      if (v74)
      {
        v68 = v81;
        goto LABEL_25;
      }

      continue;
    }

    break;
  }

  if ((v230 & 1) == 0)
  {
    v113 = *&v80;
    if (v225)
    {

      v114 = v228;
      goto LABEL_79;
    }

    v114 = v228;
    if (v76 >= v59)
    {

      goto LABEL_79;
    }

    if (v222)
    {
      v242 = 0u;
      v243 = 0u;
    }

    else
    {
      if (*(v229 + 16))
      {
        v115 = v229;
        v116 = sub_10001A408(0x6574617473, 0xE500000000000000);
        v117 = v221;
        if (v118)
        {
          sub_100005DA4(*(v115 + 56) + 32 * v116, &v242);
        }

        else
        {
          v242 = 0u;
          v243 = 0u;
        }
      }

      else
      {
        v242 = 0u;
        v243 = 0u;
        v117 = v221;
      }

      if (*(&v243 + 1))
      {
        if (swift_dynamicCast())
        {
          v119 = v241;
          if (*&v241 <= 2uLL)
          {
            v120 = v238;
            if (v235)
            {
              v121 = v212;
              static Logger.daemonLogger.getter();
              v122 = Logger.logObject.getter();
              v123 = static os_log_type_t.default.getter();
              v124 = os_log_type_enabled(v122, v123);
              v125 = v240;
              if (v124)
              {
                v126 = swift_slowAlloc();
                *v126 = 0;
              }

              (*(v120 + 8))(v121, v125);
              v113 = v224;
              v127 = v235;
              goto LABEL_96;
            }

            v113 = v241;
            static Logger.daemonLogger.getter();
            v197 = Logger.logObject.getter();
            v198 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v197, v198))
            {

              (*(v120 + 8))(v117, v240);
              v127 = v235;
              goto LABEL_96;
            }

            v199 = swift_slowAlloc();
            *&v242 = swift_slowAlloc();
            *v199 = 136446978;
            if (v224 == 0.0)
            {
              v200 = 0xE300000000000000;
              v201 = 6710895;
            }

            else if (*&v224 == 2)
            {
              v200 = 0xE200000000000000;
              v201 = 28271;
            }

            else
            {
              v200 = 0xE600000000000000;
              v201 = 0x646567617473;
            }

            v202 = sub_100019C8C(v201, v200, &v242);

            *(v199 + 4) = v202;
            *(v199 + 12) = 2082;
            v203 = Double.description.getter();
            v205 = sub_100019C8C(v203, v204, &v242);

            *(v199 + 14) = v205;
            *(v199 + 22) = 2082;
            v206 = Double.description.getter();
            v208 = sub_100019C8C(v206, v207, &v242);

            *(v199 + 24) = v208;
            *(v199 + 32) = 2082;
            if (v119 == 0.0)
            {
              v209 = 0xE300000000000000;
              v120 = v238;
              v127 = v235;
              v210 = 6710895;
            }

            else if (*&v119 == 2)
            {
              v209 = 0xE200000000000000;
              v210 = 28271;
              v120 = v238;
              v127 = v235;
            }

            else
            {
              v120 = v238;
              v127 = v235;
              v209 = 0xE600000000000000;
              v210 = 0x646567617473;
            }

            v211 = sub_100019C8C(v210, v209, &v242);

            *(v199 + 34) = v211;
            swift_arrayDestroy();

            (*(v120 + 8))(v221, v240);
            goto LABEL_95;
          }
        }

LABEL_79:
        v127 = v235;
        if (v79 & 1 | ((v235 & 1) == 0))
        {
          v59 = v76;
          v113 = v224;
          v120 = v238;
LABEL_96:
          static Logger.daemonLogger.getter();
          v141 = Logger.logObject.getter();
          v142 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            *&v242 = swift_slowAlloc();
            *v143 = 136446722;
            if (v127)
            {
              v144 = 0x53746E756F636361;
            }

            else
            {
              v144 = 0x6168436574617473;
            }

            if (v127)
            {
              v145 = 0xED00006E496E6769;
            }

            else
            {
              v145 = 0xEB0000000065676ELL;
            }

            v146 = sub_100019C8C(v144, v145, &v242);

            *(v143 + 4) = v146;
            *(v143 + 12) = 2082;
            if (v113 == 0.0)
            {
              v148 = 6710895;
              v147 = 0xE300000000000000;
            }

            else if (*&v113 == 2)
            {
              v147 = 0xE200000000000000;
              v148 = 28271;
            }

            else
            {
              v147 = 0xE600000000000000;
              v148 = 0x646567617473;
            }

            v149 = sub_100019C8C(v148, v147, &v242);

            *(v143 + 14) = v149;
            *(v143 + 22) = 2082;
            v150 = Double.description.getter();
            v152 = sub_100019C8C(v150, v151, &v242);

            *(v143 + 24) = v152;
            _os_log_impl(&_mh_execute_header, v141, v142, "syncWithKVS calculated kvsState (source: %{public}s) is: %{public}s (kvsSetAt: %{public}s)", v143, 0x20u);
            swift_arrayDestroy();

            v74 = *(v120 + 8);
            (v74)(v228, v240);
          }

          else
          {

            v74 = *(v120 + 8);
            (v74)(v114, v240);
          }

          if ((v127 & 1) == 0)
          {
            v153 = [objc_opt_self() standardUserDefaults];
            sub_10000A7D8(0xEC00000074417465, &v242);

            if (*(&v243 + 1))
            {
              if ((swift_dynamicCast() & 1) != 0 && v59 == v241)
              {
                v154 = v216;
                static Logger.daemonLogger.getter();
                v155 = Logger.logObject.getter();
                v156 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v155, v156))
                {
                  v157 = swift_slowAlloc();
                  *&v242 = swift_slowAlloc();
                  *v157 = 136446466;
                  if (v113 == 0.0)
                  {
                    v159 = 6710895;
                    v158 = 0xE300000000000000;
                  }

                  else
                  {
                    if (*&v113 != 2)
                    {
                      v192 = v240;
                      v158 = 0xE600000000000000;
                      v159 = 0x646567617473;
                      goto LABEL_155;
                    }

                    v158 = 0xE200000000000000;
                    v159 = 28271;
                  }

                  v192 = v240;
LABEL_155:
                  v193 = sub_100019C8C(v159, v158, &v242);

                  *(v157 + 4) = v193;
                  *(v157 + 12) = 2082;
                  v194 = Double.description.getter();
                  v196 = sub_100019C8C(v194, v195, &v242);

                  *(v157 + 14) = v196;
                  _os_log_impl(&_mh_execute_header, v155, v156, "We handled the calculated KVS state before (%{public}s, skippedSetAt: %{public}s). Skipping syncWithKVS…", v157, 0x16u);
                  swift_arrayDestroy();

                  v169 = v154;
                  v170 = v192;
                  goto LABEL_156;
                }

                v169 = v154;
                v170 = v240;
LABEL_156:
                (v74)(v169, v170);
                return;
              }
            }

            else
            {
              sub_100005E54(&v242, &qword_100042500, &qword_100031EB0);
            }
          }

          v160 = [objc_opt_self() standardUserDefaults];
          *(&v243 + 1) = &type metadata for Double;
          *&v242 = v59;
          sub_10000ACC4(&v242, 0x5364657070696B73, 0xEC00000074417465);

          sub_100005E54(&v242, &qword_100042500, &qword_100031EB0);
          if ((*&v113 - 1) >= 2)
          {
            v171 = v236;
            if (v113 != 0.0)
            {
              return;
            }

            if ((*(v236 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) == 0)
            {
              type metadata accessor for LockdownModeXNU();
              if ((static LockdownModeXNU.lockdownModeEnabled.getter() & 1) == 0)
              {
                *(v171 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt) = 0;
                v182 = sub_10000B570();
                sub_100008C40();

                *(v171 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_enablementPromptShown) = 0;
                v162 = v231;
                static Logger.daemonLogger.getter();
                v163 = Logger.logObject.getter();
                v164 = static os_log_type_t.default.getter();
                v183 = os_log_type_enabled(v163, v164);
                v166 = v240;
                if (!v183)
                {
                  goto LABEL_125;
                }

                v167 = swift_slowAlloc();
                *v167 = 0;
                goto LABEL_124;
              }
            }

            v68 = v240;
            if (v127)
            {
              v172 = v232;
              static Logger.daemonLogger.getter();
              v173 = Logger.logObject.getter();
              v174 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v173, v174))
              {
                v175 = swift_slowAlloc();
                *v175 = 0;
LABEL_135:
                _os_log_impl(&_mh_execute_header, v173, v174, v176, v175, 2u);
              }

LABEL_136:

              v169 = v172;
              v170 = v68;
              goto LABEL_156;
            }

            v177 = v233;
            static Logger.daemonLogger.getter();
            v178 = Logger.logObject.getter();
            v179 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v178, v179))
            {
              v180 = swift_slowAlloc();
              *v180 = 0;
            }

            (v74)(v177, v68);
            v181 = 0;
LABEL_151:
            sub_100011E54(v181, 0, 1);
            return;
          }

          v161 = v236;
          if (*(v236 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter()))
          {
            v162 = v234;
            static Logger.daemonLogger.getter();
            v163 = Logger.logObject.getter();
            v164 = static os_log_type_t.default.getter();
            v165 = os_log_type_enabled(v163, v164);
            v166 = v240;
            if (!v165)
            {
LABEL_125:

              v169 = v162;
              v170 = v166;
              goto LABEL_156;
            }

            v167 = swift_slowAlloc();
            *v167 = 0;
LABEL_124:
            _os_log_impl(&_mh_execute_header, v163, v164, v168, v167, 2u);

            goto LABEL_125;
          }

          v68 = v240;
          if (*(v161 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_enablementPromptShown))
          {
            v172 = v215;
            static Logger.daemonLogger.getter();
            v173 = Logger.logObject.getter();
            v174 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v173, v174))
            {
              v175 = swift_slowAlloc();
              *v175 = 0;
              v176 = "enablementPromptShown is already set. No need to show a prompt again";
              goto LABEL_135;
            }

            goto LABEL_136;
          }

          *(v161 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_enablementPromptShown) = 1;
          if (v127)
          {
            v184 = v213;
            static Logger.daemonLogger.getter();
            v185 = Logger.logObject.getter();
            v186 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v185, v186))
            {
              v187 = swift_slowAlloc();
              *v187 = 0;
              _os_log_impl(&_mh_execute_header, v185, v186, "Posting a turnOnSignIn notification…", v187, 2u);
            }

            (v74)(v184, v68);
            v181 = 1;
            goto LABEL_151;
          }

LABEL_148:
          v188 = v214;
          static Logger.daemonLogger.getter();
          v189 = Logger.logObject.getter();
          v190 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v189, v190))
          {
            v191 = swift_slowAlloc();
            *v191 = 0;
            _os_log_impl(&_mh_execute_header, v189, v190, "Posting a turnOnStateChange notification…", v191, 2u);
          }

          (v74)(v188, v68);
          v181 = 3;
          goto LABEL_151;
        }

        v128 = v223;
        static Logger.daemonLogger.getter();
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.default.getter();
        v131 = os_log_type_enabled(v129, v130);
        v120 = v238;
        if (!v131)
        {

          (*(v120 + 8))(v128, v240);
          v59 = v76;
          goto LABEL_96;
        }

        v132 = 6710895;
        v133 = swift_slowAlloc();
        *&v242 = swift_slowAlloc();
        *v133 = 136446466;
        if (v224 == 0.0)
        {
          v134 = v127;
          v135 = 0xE300000000000000;
          v136 = 6710895;
        }

        else
        {
          v134 = v127;
          if (*&v224 == 2)
          {
            v135 = 0xE200000000000000;
            v136 = 28271;
          }

          else
          {
            v135 = 0xE600000000000000;
            v136 = 0x646567617473;
          }
        }

        v137 = sub_100019C8C(v136, v135, &v242);

        *(v133 + 4) = v137;
        *(v133 + 12) = 2082;
        if (v113 == 0.0)
        {
          v138 = 0xE300000000000000;
          v127 = v134;
        }

        else
        {
          v127 = v134;
          if (*&v113 != 2)
          {
            v139 = v223;
            v138 = 0xE600000000000000;
            v132 = 0x646567617473;
            goto LABEL_94;
          }

          v138 = 0xE200000000000000;
          v132 = 28271;
        }

        v139 = v223;
LABEL_94:
        v140 = sub_100019C8C(v132, v138, &v242);

        *(v133 + 14) = v140;
        _os_log_impl(&_mh_execute_header, v129, v130, "Latest state on other devices: %{public}s. Latest enabled state on other devices: %{public}s", v133, 0x16u);
        swift_arrayDestroy();

        (*(v120 + 8))(v139, v240);
        v59 = v76;
LABEL_95:
        v114 = v228;
        goto LABEL_96;
      }
    }

    sub_100005E54(&v242, &qword_100042500, &qword_100031EB0);
    goto LABEL_79;
  }

  v109 = v226;
  static Logger.daemonLogger.getter();
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&_mh_execute_header, v110, v111, "There's no Lockdown Mode state on other devices. Skipping syncWithKVS…", v112, 2u);
  }

  (*(v238 + 8))(v109, v60);
}

void sub_1000115B8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &aBlock - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &aBlock - v12;
  __chkstk_darwin(v11);
  v15 = &aBlock - v14;
  static Logger.daemonLogger.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Storing device KVS state (if needed)…", v18, 2u);
  }

  v19 = *(v3 + 8);
  v19(v15, v2);
  v20 = sub_10000B64C();
  sub_10000B9AC();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 objectForKey:v21];

  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
    static Logger.daemonLogger.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Device state is already set in KVS for this device. No need to store it again", v25, 2u);
    }

    v26 = v7;
LABEL_14:
    v19(v26, v2);
    return;
  }

  aBlock = 0u;
  v40 = 0u;
  sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
  sub_10001B1C4();
  if ((v27 & 1) == 0)
  {
    static Logger.daemonLogger.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "No Apple account available. Not setting the default device state", v38, 2u);
    }

    v26 = v10;
    goto LABEL_14;
  }

  static Logger.daemonLogger.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Synchronizing KVS state to check if device state is already stored…", v30, 2u);
  }

  v19(v13, v2);
  v31 = *&v1[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore];
  v32 = swift_allocObject();
  *(v32 + 16) = v1;
  v41 = sub_10001EF0C;
  v42 = v32;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v40 = sub_10000B478;
  *(&v40 + 1) = &unk_10003D748;
  v33 = _Block_copy(&aBlock);
  v34 = v31;
  v35 = v1;

  [v34 synchronizeWithCompletionHandler:v33];
  _Block_release(v33);
}

void sub_100011A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v30 - v11;
  __chkstk_darwin(v10);
  v14 = v30 - v13;
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Could not synchronize to set default device state in KVS: %{public}@", v17, 0xCu);
      sub_100005E54(v18, &qword_100042158, qword_100031C60);
    }

    (*(v5 + 8))(v9, v4);
  }

  else
  {
    v20 = sub_10000BAA8();
    if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter()))
    {
      if ((v20 - 1) >= 2)
      {
        sub_10000BBC8(1);
      }
    }

    else
    {
      v21 = sub_10000B64C();
      sub_10000B9AC();
      v22 = String._bridgeToObjectiveC()();

      v23 = [v21 objectForKey:v22];

      if (v23)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005E54(v30, &qword_100042500, &qword_100031EB0);
        static Logger.daemonLogger.getter();
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "Device state is already set in KVS. No need to store it again", v26, 2u);
        }

        (*(v5 + 8))(v12, v4);
      }

      else
      {
        memset(v30, 0, sizeof(v30));
        sub_100005E54(v30, &qword_100042500, &qword_100031EB0);
        sub_10000BBC8(0);
        static Logger.daemonLogger.getter();
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Set the default state in KVS for device to off", v29, 2u);
        }

        (*(v5 + 8))(v14, v4);
      }
    }
  }
}

void sub_100011E54(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for Logger();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = "wnMode.turnOnSignIn";
  v33 = 0xD00000000000001ELL;
  if (a1 > 2u)
  {
    if (a1 != 4)
    {
      goto LABEL_8;
    }

    v11 = "wnMode.turnOffFailed";
  }

  else
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    v11 = "wnMode.turnOnPostBuddy";
    if (a1 != 1)
    {
      goto LABEL_8;
    }
  }

  if ((v11 | 0x8000000000000000) == 0x8000000100033F90)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_8:
  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_15;
  }

  if (a1 == 2)
  {
    goto LABEL_14;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_15;
  }

  if (a1 == 3)
  {
    goto LABEL_14;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
LABEL_39:
    v35 = sub_10000B570();
    sub_100006944(a1, a2, a3 & 1);
    v30 = v35;

    return;
  }

LABEL_15:
  if (qword_100041CF8 != -1)
  {
    swift_once();
  }

  if (!off_1000441F0())
  {
    goto LABEL_39;
  }

  v15 = v3;
  static Logger.daemonLogger.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136315138;
    v20 = 0x8000000100033F30;
    v21 = 0xD000000000000028;
    v22 = 0x8000000100033F00;
    if (a1 == 4)
    {
      v23 = 0xD000000000000023;
    }

    else
    {
      v23 = 0xD000000000000024;
    }

    if (a1 != 4)
    {
      v22 = 0x8000000100033ED0;
    }

    if (a1 != 3)
    {
      v21 = v23;
      v20 = v22;
    }

    v24 = v32 | 0x8000000000000000;
    v25 = 0x8000000100033F60;
    v26 = 0xD000000000000026;
    if (a1 == 1)
    {
      v26 = 0xD000000000000023;
      v25 = 0x8000000100033F90;
    }

    if (a1)
    {
      v24 = v25;
    }

    else
    {
      v26 = v33;
    }

    if (a1 <= 2u)
    {
      v27 = v26;
    }

    else
    {
      v27 = v21;
    }

    if (a1 <= 2u)
    {
      v28 = v24;
    }

    else
    {
      v28 = v20;
    }

    v29 = sub_100019C8C(v27, v28, &v36);

    *(v18 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "Delaying %s notification because we're in Buddy…", v18, 0xCu);
    sub_100005E08(v19);
  }

  (*(v34 + 8))(v10, v35);
  *(v15 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt) = 1;
}

void sub_100012394(uint64_t a1, int a2, int a3, int a4, int a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v136 = a7;
  v123 = a6;
  v137 = a4;
  LODWORD(v143) = a3;
  LODWORD(v140) = a2;
  v138 = a11;
  v139 = a10;
  v141 = a9;
  ObjectType = swift_getObjectType();
  v128 = type metadata accessor for DispatchTime();
  v127 = *(v128 - 8);
  v15 = *(v127 + 64);
  v16 = __chkstk_darwin(v128);
  v125 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v126 = &v116 - v18;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v122 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v120 = &v116 - v25;
  v26 = __chkstk_darwin(v24);
  v133 = &v116 - v27;
  v28 = __chkstk_darwin(v26);
  v118 = &v116 - v29;
  v30 = __chkstk_darwin(v28);
  v129 = &v116 - v31;
  v32 = __chkstk_darwin(v30);
  v119 = &v116 - v33;
  v34 = __chkstk_darwin(v32);
  v124 = &v116 - v35;
  v36 = __chkstk_darwin(v34);
  v134 = &v116 - v37;
  v38 = __chkstk_darwin(v36);
  v121 = &v116 - v39;
  __chkstk_darwin(v38);
  v41 = &v116 - v40;
  static Logger.daemonLogger.getter();

  v42 = v11;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  v45 = os_log_type_enabled(v43, v44);
  v142 = v20;
  v130 = a5;
  if (v45)
  {
    v131 = v19;
    v46 = a1;
    v47 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v47 = 136447746;
    v132 = v46;
    if (v46)
    {
      v48 = 28271;
    }

    else
    {
      v48 = 6710895;
    }

    if (v46)
    {
      v49 = 0xE200000000000000;
    }

    else
    {
      v49 = 0xE300000000000000;
    }

    v50 = sub_100019C8C(v48, v49, aBlock);

    *(v47 + 4) = v50;
    *(v47 + 12) = 1026;
    *(v47 + 14) = v140 & 1;
    *(v47 + 18) = 1026;
    v117 = a8;
    *(v47 + 20) = v143 & 1;
    *(v47 + 24) = 1026;
    if (a8)
    {
      v51 = 7628147;
    }

    else
    {
      v51 = 0x74657320746F6ELL;
    }

    *(v47 + 26) = a5 & 1;
    if (a8)
    {
      v52 = 0xE300000000000000;
    }

    else
    {
      v52 = 0xE700000000000000;
    }

    v53 = v141;
    *(v47 + 30) = 2082;
    v54 = sub_100019C8C(v51, v52, aBlock);

    *(v47 + 32) = v54;
    *(v47 + 40) = 1026;
    *(v47 + 42) = v53 & 1;
    *(v47 + 46) = 1026;
    v55 = v42;
    if (v42[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] == 1)
    {

      v56 = 1;
    }

    else
    {
      type metadata accessor for LockdownModeXNU();
      v59 = static LockdownModeXNU.lockdownModeEnabled.getter();

      v56 = v59 & 1;
    }

    v60 = v142;
    *(v47 + 48) = v56;

    _os_log_impl(&_mh_execute_header, v43, v44, "Setting Lockdown Mode state to: %{public}s, forAllDevices: %{BOOL,public}d, includePaired: %{BOOL,public}d, setRestrictions: %{BOOL,public}d, passcode: %{public}s, skipAccount: %{BOOL,public}d. Current state: %{BOOL,public}d", v47, 0x34u);
    swift_arrayDestroy();

    v61 = v41;
    v57 = v131;
    v140 = *(v60 + 8);
    v140(v61, v131);
    a1 = v132;
    v58 = v117;
  }

  else
  {

    v140 = *(v20 + 8);
    v140(v41, v19);
    v57 = v19;
    v55 = v42;
    v58 = a8;
  }

  if (v137)
  {
    v62 = a1;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v64 = objc_opt_self();
    v65 = [v64 bundleForClass:ObjCClassFromMetadata];
    v145._object = 0xEC000000656D616ELL;
    v66._countAndFlagsBits = 0x4E574F444B434F4CLL;
    v66._object = 0xED000045444F4D5FLL;
    v145._countAndFlagsBits = 0x2065727574616546;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    v68 = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, v65, v67, v145);

    v69 = [v64 bundleForClass:ObjCClassFromMetadata];
    v146._object = 0xEB00000000656C74;
    v70._countAndFlagsBits = 0x41505F5245544E45;
    v70._object = 0xEE0045444F435353;
    v146._countAndFlagsBits = 0x6974207472656C41;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    v72 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, 0, v69, v71, v146);

    v76 = sub_100022A10(v68._countAndFlagsBits, v68._object, v72._countAndFlagsBits, v72._object, v136, v58);

    a1 = v62;
    v73 = v143;
    if (!v76)
    {
      v77 = v121;
      static Logger.daemonLogger.getter();
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "Could not get authentication context. Unknown error", v80, 2u);
      }

      v140(v77, v57);
      sub_10001EC70();
      v81 = swift_allocError();
      *v82 = 0;
      *(v82 + 8) = 0;
      *(v82 + 16) = 2;
      v139(v81);

      return;
    }
  }

  else
  {
    v76 = 0;
    v73 = v143;
  }

  if ((v141 & 1) == 0)
  {
    sub_10001B1C4();
    v74 = v75;
    if ((v73 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v74 = 0;
  if (v73)
  {
LABEL_26:
    sub_100013B28(a1 & 1);
  }

LABEL_27:
  sub_1000233AC(a1 & 1, v76);
  v141 = v74;
  v55[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] = a1 & 1;
  v83 = sub_10002B110();
  v131 = v57;
  v132 = a1;
  v143 = v83;
  if (v130)
  {
    if (a1)
    {
      sub_100027E54();
    }

    v84 = v76;
    v85 = v139;
    if (v123)
    {
      v86 = v123;
    }

    else
    {
      v86 = &_swiftEmptyArrayStorage;
    }

    sub_100027134(a1 & 1, v86);
  }

  else
  {
    v84 = v76;
    v85 = v139;
  }

  v87 = objc_opt_self();
  v88 = [v87 standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  static Constants.userDefaultsKey.getter();
  v90 = String._bridgeToObjectiveC()();

  [v88 setObject:isa forKey:v90 inDomain:NSGlobalDomain];

  v91 = v132;
  v92 = [v87 standardUserDefaults];
  [v92 synchronize];

  v93 = [v87 standardUserDefaults];
  sub_10000AAA0(0x5364657070696B73, 0xEC00000074417465);

  v94 = v85;
  v95 = v131;
  v96 = v84;
  if ((v130 & 1) != 0 && (v91 & 1) == 0)
  {
    sub_100028210();
  }

  if (v141)
  {
    v97 = v94;
    v139 = v84;
    sub_10000BBC8(v91 & 1);
    v98 = dispatch_semaphore_create(0);
    v99 = v124;
    static Logger.daemonLogger.getter();
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 67240192;
      *(v102 + 4) = v91 & 1;
      _os_log_impl(&_mh_execute_header, v100, v101, "Synchronizing the new state with KVS… (enabled: %{BOOL,public}d)", v102, 8u);
    }

    v140(v99, v95);
    v103 = sub_10000B64C();
    v104 = swift_allocObject();
    *(v104 + 16) = v98;
    aBlock[4] = sub_100022558;
    aBlock[5] = v104;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000B478;
    aBlock[3] = &unk_10003DBD0;
    v105 = _Block_copy(aBlock);
    v106 = v98;

    [v103 synchronizeWithCompletionHandler:v105];
    _Block_release(v105);

    v107 = v125;
    static DispatchTime.now()();
    v108 = v126;
    + infix(_:_:)();
    v109 = *(v127 + 8);
    v110 = v128;
    v109(v107, v128);
    OS_dispatch_semaphore.wait(timeout:)();
    v109(v108, v110);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v111 = v119;
      static Logger.daemonLogger.getter();
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.error.getter();
      v114 = os_log_type_enabled(v112, v113);
      v96 = v139;
      if (v114)
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v112, v113, "Could not synchronize after setting key in KVS in setEnabled. Waited too long. Continuing anyways…", v115, 2u);
      }

      else
      {
      }

      v140(v111, v95);
    }

    else
    {

      v96 = v139;
    }

    v94 = v97;
  }

  v94(0);
}

Swift::Int sub_100013968(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Could not synchronize after setting key in KVS in setEnabled: %{public}@. Continuing anyways…", v9, 0xCu);
      sub_100005E54(v10, &qword_100042158, qword_100031C60);
    }

    (*(v3 + 8))(v6, v2);
  }

  return OS_dispatch_semaphore.signal()();
}

void sub_100013B28(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000B6F8();
  v11 = sub_10002D9C8();

  if (v11)
  {
    static Logger.daemonLogger.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v21 = v2;
      *v14 = 67240192;
      *(v14 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v12, v13, "Sending setState message to Watch… (enabled: %{BOOL,public}d)", v14, 8u);
    }

    (*(v6 + 8))(v9, v5);
    v15 = *(v3 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___idsManager);
    sub_100003BC8(&qword_1000425F8, &unk_100032108);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100031EA0;
    v19 = 1701869940;
    v20 = 0xE400000000000000;
    v17 = v15;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 0;
    v19 = 0x64656C62616E65;
    v20 = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = a1 & 1;
    sub_100003F00(inited);
    swift_setDeallocating();
    sub_100003BC8(&qword_100041DE0, &unk_1000314F0);
    swift_arrayDestroy();
    sub_10002DB30();
  }
}

uint64_t sub_100013DF4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Could not migrate from NSUserDefaults. Failed to turn on Lockdown Mode: %{public}@", v11, 0xCu);
      sub_100005E54(v12, &qword_100042158, qword_100031C60);
    }

    (*(v5 + 8))(v8, v4);
  }

  return a2(a1);
}

uint64_t sub_100013FC8(void *a1, const char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemonLogger.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, a2, v12, 0xCu);
    sub_100005E54(v13, &qword_100042158, qword_100031C60);
  }

  return (*(v5 + 8))(v8, v4);
}

void LockdownModeServer.setEnabled(enabled:options:completion:)(int a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v107 = a3;
  v108 = a4;
  v105 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v91 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v91 - v15;
  v17 = __chkstk_darwin(v14);
  v104 = &v91 - v18;
  __chkstk_darwin(v17);
  v20 = &v91 - v19;
  v21 = [objc_opt_self() currentConnection];
  if (!v21)
  {
    goto LABEL_16;
  }

  v22 = v21;
  v102 = v16;
  v103 = v13;
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 valueForEntitlement:v23];

  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v111[0] = v112;
  v111[1] = v113;
  if (!*(&v113 + 1))
  {

    sub_100005E54(v111, &qword_100042500, &qword_100031EB0);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0 || v109 != 1)
  {

LABEL_16:
    static Logger.daemonLogger.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v111[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, v111);
      _os_log_impl(&_mh_execute_header, v30, v31, "Client is missing entitlement: %s", v32, 0xCu);
      sub_100005E08(v33);
    }

    (*(v6 + 8))(v10, v5);
    sub_10001EC70();
    swift_allocError();
    *v34 = 0xD00000000000002ALL;
    *(v34 + 8) = 0x80000001000342C0;
    *(v34 + 16) = 0;
    v107();
    goto LABEL_19;
  }

  if (!a2)
  {
    v112 = 0u;
    v113 = 0u;
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v112 = 0u;
    v113 = 0u;
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v112 = 0u;
    v113 = 0u;
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v112 = 0u;
    v113 = 0u;
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v112 = 0u;
    v113 = 0u;
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v112 = 0u;
    v113 = 0u;
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v100 = 0;
    v97 = 0;
    v96 = 0;
    v99 = 0;
    v112 = 0u;
    v113 = 0u;
    LODWORD(a2) = 1;
    v95 = 1;
    LOBYTE(v29) = 1;
    LOBYTE(v26) = v105;
LABEL_83:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v101 = 0;
    if (v26)
    {
      goto LABEL_88;
    }

    goto LABEL_84;
  }

  v109 = static Constants.stateOptionReboot.getter();
  v110 = v25;
  AnyHashable.init<A>(_:)();
  LOBYTE(v26) = v105;
  if (!*(a2 + 16) || (v27 = sub_10001A2E8(v111), (v28 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_21;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v27, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_21:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    goto LABEL_22;
  }

  if (!swift_dynamicCast())
  {
LABEL_22:
    LODWORD(v29) = 1;
    goto LABEL_23;
  }

  LODWORD(v29) = LOBYTE(v111[0]);
LABEL_23:
  v109 = static Constants.stateOptionPasscode.getter();
  v110 = v35;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v36 = sub_10001A2E8(v111), (v37 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_33;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v36, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_33:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    v100 = 0;
    v97 = 0;
    goto LABEL_34;
  }

  v38 = swift_dynamicCast();
  v39 = *&v111[0];
  if (!v38)
  {
    v39 = 0;
  }

  v97 = v39;
  if (v38)
  {
    v40 = *(&v111[0] + 1);
  }

  else
  {
    v40 = 0;
  }

  v100 = v40;
LABEL_34:
  v109 = static Constants.stateOptionAllDevices.getter();
  v110 = v41;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v42 = sub_10001A2E8(v111), (v43 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_40;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v42, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_40:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    goto LABEL_41;
  }

  if (!swift_dynamicCast())
  {
LABEL_41:
    v96 = 0;
    goto LABEL_42;
  }

  v96 = LOBYTE(v111[0]);
LABEL_42:
  v109 = static Constants.stateOptionIncludePaired.getter();
  v110 = v44;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v45 = sub_10001A2E8(v111), (v46 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_48;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v45, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_48:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    goto LABEL_49;
  }

  if (!swift_dynamicCast())
  {
LABEL_49:
    v47 = 1;
    goto LABEL_50;
  }

  v47 = LOBYTE(v111[0]);
LABEL_50:
  v95 = v47;
  v109 = static Constants.stateOptionAcknowledgementOnly.getter();
  v110 = v48;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v49 = sub_10001A2E8(v111), (v50 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_56;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v49, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_56:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    goto LABEL_57;
  }

  if (!swift_dynamicCast())
  {
LABEL_57:
    v99 = 0;
    goto LABEL_58;
  }

  v99 = LOBYTE(v111[0]);
LABEL_58:
  v109 = static Constants.stateOptionRequireAuthentication.getter();
  v110 = v51;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v52 = sub_10001A2E8(v111), (v53 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_64;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v52, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_64:
    sub_100005E54(&v112, &qword_100042500, &qword_100031EB0);
    goto LABEL_65;
  }

  if (!swift_dynamicCast())
  {
LABEL_65:
    v54 = 1;
    goto LABEL_66;
  }

  v54 = LOBYTE(v111[0]);
LABEL_66:
  v94 = v54;
  v109 = static Constants.stateOptionExcludeRestrictions.getter();
  v110 = v55;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v56 = sub_10001A2E8(v111), (v57 & 1) == 0))
  {
    sub_10001ECCC(v111);
    v112 = 0u;
    v113 = 0u;
    goto LABEL_81;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v56, &v112);
  sub_10001ECCC(v111);
  if (!*(&v113 + 1))
  {
LABEL_81:
    LODWORD(a2) = v94;
    goto LABEL_83;
  }

  sub_100003BC8(&qword_100042518, &qword_100031EB8);
  if (swift_dynamicCast())
  {
    v93 = v29;
    v29 = 0;
    v58 = *&v111[0];
    v98 = *(*&v111[0] + 16);
    v59 = *&v111[0] + 40;
    v101 = &_swiftEmptyArrayStorage;
    v92 = *&v111[0] + 40;
LABEL_71:
    v60 = (v59 + 16 * v29);
    while (1)
    {
      if (v98 == v29)
      {

        LOBYTE(v26) = v105;
        LOBYTE(v29) = v93;
        goto LABEL_107;
      }

      if (v29 >= *(v58 + 16))
      {
        break;
      }

      ++v29;
      v61 = v60 + 2;
      v26 = *(v60 - 1);
      v62 = *v60;

      v63._countAndFlagsBits = v26;
      v63._object = v62;
      a2 = _findStringSwitchCase(cases:string:)(&off_10003D178, v63);

      v60 = v61;
      if (a2 < 8)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_100019B98(0, *(v101 + 2) + 1, 1, v101);
        }

        v65 = *(v101 + 2);
        v64 = *(v101 + 3);
        v26 = v65 + 1;
        if (v65 >= v64 >> 1)
        {
          v101 = sub_100019B98((v64 > 1), v65 + 1, 1, v101);
        }

        v66 = v101;
        *(v101 + 2) = v26;
        v66[v65 + 32] = a2;
        v59 = v92;
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_110:
    swift_once();
LABEL_96:
    v75 = off_1000441F0();
    v76 = v75;
    if ((v26 & 1) != 0 && v75)
    {
      v77 = a2;
      static Logger.daemonLogger.getter();
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "Client requested to turn on Lockdown Mode while in Buddy. Clearing all notifications…", v80, 2u);
      }

      (*(v6 + 8))(v103, v5);
      v106[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt] = 0;
      v81 = sub_10000B570();
      sub_100008C40();

      LODWORD(a2) = v77;
    }

    v82 = swift_allocObject();
    *(v82 + 16) = v107;
    *(v82 + 24) = v108;
    v83 = v26 & 1;
    *(v82 + 32) = v26 & 1;
    *(v82 + 33) = v76;
    v84 = v106;
    *(v82 + 40) = v106;
    *(v82 + 48) = v29;

    v85 = v84;
    sub_100012394(v83, v96, v95, a2, 1, v101, v97, v100, 0, sub_10001ECC8, v82);

    return;
  }

  v101 = 0;
LABEL_107:
  LODWORD(a2) = v94;
  if ((v26 & 1) == 0)
  {
LABEL_84:
    if ((a2 & 1) == 0)
    {
      static Logger.daemonLogger.getter();
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "Client requested to turn off Lockdown Mode without authentication. Ignoring override…", v69, 2u);
      }

      (*(v6 + 8))(v20, v5);
      LODWORD(a2) = 1;
    }
  }

LABEL_88:
  if (!v99)
  {
    if (qword_100041CF8 == -1)
    {
      goto LABEL_96;
    }

    goto LABEL_110;
  }

  if (v26 & 1) != 0 || (v106[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter()))
  {
    v70 = v102;
    static Logger.daemonLogger.getter();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Client requested acknowledgementOnly but Lockdown Mode is either already on or client wants to turn it on. Ignoring acknowledgementOnly…", v73, 2u);
    }

    (*(v6 + 8))(v70, v5);
    sub_10001EC70();
    swift_allocError();
    *v74 = 0;
    *(v74 + 8) = 0;
    *(v74 + 16) = 2;
    v107();

LABEL_19:

    return;
  }

  v86 = v104;
  static Logger.daemonLogger.getter();
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&_mh_execute_header, v87, v88, "Client requested acknowledgementOnly. Clearing Lockdown Mode notifications…", v89, 2u);
  }

  (*(v6 + 8))(v86, v5);
  v106[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt] = 0;
  v90 = sub_10000B570();
  sub_100008C40();

  (v107)(0);
}

uint64_t sub_100015110(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, char a4, char a5, uint64_t a6, char a7)
{
  v55 = a3;
  v56 = a2;
  v54 = type metadata accessor for Logger();
  v12 = *(v54 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v54);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v53 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v53 - v21;
  __chkstk_darwin(v20);
  v24 = &v53 - v23;
  if (!a1)
  {
    if (a5)
    {
      v29 = 0;
    }

    else
    {
      v29 = 2;
    }

    sub_10002CCE4(a4 & 1, v29);
    *(a6 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt) = 0;
    v30 = sub_10000B570();
    sub_100008C40();

    static Logger.daemonLogger.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57 = v34;
      *v33 = 136446210;
      if (a4)
      {
        v35 = 28271;
      }

      else
      {
        v35 = 6710895;
      }

      if (a4)
      {
        v36 = 0xE200000000000000;
      }

      else
      {
        v36 = 0xE300000000000000;
      }

      v37 = sub_100019C8C(v35, v36, &v57);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Successfully set the Lockdown Mode state to %{public}s", v33, 0xCu);
      sub_100005E08(v34);
    }

    v38 = *(v12 + 8);
    v39 = v54;
    v38(v24, v54);
    if (a7)
    {
      static Logger.daemonLogger.getter();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Rebooting…", v42, 2u);
      }

      v38(v22, v39);
      sub_10002C7F4(0xD000000000000016, 0x80000001000347D0);
    }

    v43 = 0;
    return v56(v43);
  }

  v60 = a1;
  swift_errorRetain();
  sub_100003BC8(&unk_100042360, qword_100031DD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v57 = v48;
      *v46 = 136446466;
      if (a4)
      {
        v49 = 28271;
      }

      else
      {
        v49 = 6710895;
      }

      if (a4)
      {
        v50 = 0xE200000000000000;
      }

      else
      {
        v50 = 0xE300000000000000;
      }

      v51 = sub_100019C8C(v49, v50, &v57);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2114;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 14) = v52;
      *v47 = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "Could not set the Lockdown Mode state to %{public}s: %{public}@", v46, 0x16u);
      sub_100005E54(v47, &qword_100042158, qword_100031C60);

      sub_100005E08(v48);
    }

    (*(v12 + 8))(v16, v54);
    v43 = a1;
    return v56(v43);
  }

  if (v59 != 2 || v57 != 1 || v58)
  {
    sub_1000225A8(v57, v58, v59);
    goto LABEL_26;
  }

  static Logger.daemonLogger.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Cancelled setting Lockdown Mode state", v27, 2u);
  }

  (*(v12 + 8))(v19, v54);
  v56(0);
  return sub_1000225A8(1, 0, 2u);
}

void sub_100015778(uint64_t a1, uint64_t a2)
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

void LockdownModeServer.getEnabledInAccount(synchronize:completion:)(int a1, void (*a2)(void), uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v36[-v13];
  v15 = [objc_opt_self() currentConnection];
  if (v15)
  {
    v16 = v15;
    v37 = a1;
    v38 = v3;
    v17 = a2;
    v18 = a3;
    v19 = String._bridgeToObjectiveC()();
    v20 = [v16 valueForEntitlement:v19];

    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    aBlock = v44;
    v40 = v45;
    v21 = v18;
    a2 = v17;
    if (*(&v45 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v43 == 1)
      {
        if (v37)
        {
          v22 = v38;
          static Logger.daemonLogger.getter();
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v23, v24, "Client requested to fetch the state from KVS…", v25, 2u);
          }

          (*(v8 + 8))(v14, v7);
          v26 = v22;
          v27 = sub_10000B64C();
          v28 = swift_allocObject();
          v28[2] = v17;
          v28[3] = v21;
          v28[4] = v22;
          v41 = sub_10001ED20;
          v42 = v28;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v40 = sub_10000B478;
          *(&v40 + 1) = &unk_10003D5F0;
          v29 = _Block_copy(&aBlock);

          v30 = v26;

          [v27 synchronizeWithCompletionHandler:v29];
          _Block_release(v29);
        }

        else
        {
          v35 = sub_10000BEBC();
          v17(v35 & 1);
        }

        return;
      }
    }

    else
    {

      sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&aBlock = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, &aBlock);
    _os_log_impl(&_mh_execute_header, v31, v32, "Client is missing entitlement: %s", v33, 0xCu);
    sub_100005E08(v34);
  }

  (*(v8 + 8))(v12, v7);
  a2(0);
}

uint64_t sub_100015C54(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = a2;
      v12 = v11;
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "Could not synchronize state with KVS: %@", v12, 0xCu);
      sub_100005E54(v13, &qword_100042158, qword_100031C60);

      a2 = v18;
    }

    (*(v5 + 8))(v8, v4);
  }

  v15 = sub_10000BEBC();
  return a2(v15 & 1);
}

void LockdownModeServer.notifyRestrictionChanged(_:completion:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v58 = a4;
  v59 = a3;
  v6 = type metadata accessor for Logger();
  v57 = *(v6 - 8);
  v7 = *(v57 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v53 - v12;
  __chkstk_darwin(v11);
  v15 = &v53 - v14;
  if (qword_100041CF0 != -1)
  {
    swift_once();
  }

  v16 = static RestrictionsManager.shared;
  v17 = [objc_opt_self() currentConnection];

  v64._countAndFlagsBits = a1;
  v64._object = a2;
  v18 = _s13lockdownmoded19RestrictionsManagerC14RestrictionKeyO8rawValueAESgSS_tcfC_0(v64);
  if (v18 == 8)
  {
    goto LABEL_11;
  }

  v19 = v18;
  swift_beginAccess();
  v20 = *(v16 + 24);
  if (!*(v20 + 16))
  {
    goto LABEL_11;
  }

  v21 = *(v16 + 24);

  v22 = sub_10001A480(v19);
  if ((v23 & 1) == 0)
  {

LABEL_11:
    sub_10001EC70();
    v34 = swift_allocError();
    *v35 = a1;
    *(v35 + 8) = a2;
    *(v35 + 16) = 1;

    (v59)(v34);

    return;
  }

  v24 = *(*(v20 + 56) + 8 * v22);

  v25 = v24;
  v26 = *(v24 + 128);
  if (v26)
  {
    v56 = v25;
    v27 = *(v25 + 120);
    *&v62 = 0xD000000000000020;
    *(&v62 + 1) = 0x80000001000342F0;

    v28._countAndFlagsBits = v27;
    v28._object = v26;
    String.append(_:)(v28);

    v30 = *(&v62 + 1);
    v29 = v62;
    if (v17)
    {
      v31 = v17;
      v55 = v29;
      v32 = String._bridgeToObjectiveC()();
      v33 = [v31 valueForEntitlement:v32];
      v54 = v31;

      if (v33)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
      }

      v62 = v60;
      v63 = v61;
      if (*(&v61 + 1))
      {
        if (swift_dynamicCast())
        {
          v29 = v55;
          if (v60 != 1)
          {
            goto LABEL_33;
          }

LABEL_28:

          if (*(v56 + 112))
          {
            static Logger.daemonLogger.getter();
            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              *v46 = 0;
              _os_log_impl(&_mh_execute_header, v44, v45, "Restriction is already set to changed. No need to update", v46, 2u);
            }

            (*(v57 + 8))(v15, v6);
          }

          else
          {
            *(v56 + 112) = 1;
            sub_100027E54();
          }

          (v59)(0);

          goto LABEL_36;
        }
      }

      else
      {
        sub_100005E54(&v62, &qword_100042500, &qword_100031EB0);
      }

      v42 = String._bridgeToObjectiveC()();
      v43 = [v54 valueForEntitlement:v42];

      if (v43)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v60 = 0u;
        v61 = 0u;
      }

      v29 = v55;
      v62 = v60;
      v63 = v61;
      if (*(&v61 + 1))
      {
        if (swift_dynamicCast() & 1) != 0 && (v60)
        {
          goto LABEL_28;
        }

LABEL_33:
        static Logger.daemonLogger.getter();

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = v29;
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v62 = v51;
          *v50 = 136315138;
          *(v50 + 4) = sub_100019C8C(v49, v30, &v62);
          _os_log_impl(&_mh_execute_header, v47, v48, "Client is missing entitlement: %s", v50, 0xCu);
          sub_100005E08(v51);

          v29 = v49;
        }

        (*(v57 + 8))(v13, v6);
        sub_10001EC70();
        swift_allocError();
        *v52 = v29;
        *(v52 + 8) = v30;
        *(v52 + 16) = 0;
        v59();

LABEL_36:

        return;
      }
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
      sub_100005E54(&v62, &qword_100042500, &qword_100031EB0);
      v62 = 0u;
      v63 = 0u;
    }

    sub_100005E54(&v62, &qword_100042500, &qword_100031EB0);
    goto LABEL_33;
  }

  static Logger.daemonLogger.getter();

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v62 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_100019C8C(a1, a2, &v62);
    _os_log_impl(&_mh_execute_header, v36, v37, "Could not update restriction because it is not set as updatable: %s", v38, 0xCu);
    sub_100005E08(v39);
  }

  (*(v57 + 8))(v10, v6);
  sub_10001EC70();
  v40 = swift_allocError();
  *v41 = a1;
  *(v41 + 8) = a2;
  *(v41 + 16) = 1;

  (v59)(v40);
}

void LockdownModeServer.enableIfNeeded(reboot:completion:)(int a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  v35 = a3;
  v36 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v13 = [objc_opt_self() currentConnection];
  if (v13)
  {
    v14 = v13;
    v34 = a1;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 valueForEntitlement:v15];

    v33 = v3;
    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40 = v38;
    v41 = v39;
    if (*(&v39 + 1))
    {
      if (swift_dynamicCast() && (v37 & 1) != 0)
      {
LABEL_16:
        static Logger.daemonLogger.getter();
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        v21 = os_log_type_enabled(v19, v20);
        v22 = v34;
        if (v21)
        {
          v23 = swift_slowAlloc();
          *v23 = 67109120;
          *(v23 + 4) = v22 & 1;
          _os_log_impl(&_mh_execute_header, v19, v20, "Client requested to enableIfNeeded (reboot: %{BOOL}d)", v23, 8u);
        }

        (*(v6 + 8))(v12, v5);
        v24 = v35;

        v25 = v33;
        sub_10001C190(0, v25, v36, v24, v25, v22 & 1);

        return;
      }
    }

    else
    {
      sub_100005E54(&v40, &qword_100042500, &qword_100031EB0);
    }

    v17 = String._bridgeToObjectiveC()();
    v18 = [v14 valueForEntitlement:v17];

    if (v18)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40 = v38;
    v41 = v39;
    if (*(&v39 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v37)
      {
        goto LABEL_16;
      }
    }

    else
    {

      sub_100005E54(&v40, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v40 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_100019C8C(0xD000000000000027, 0x8000000100034320, &v40);
    _os_log_impl(&_mh_execute_header, v26, v27, "Client is missing entitlement: %s", v28, 0xCu);
    sub_100005E08(v29);
  }

  (*(v6 + 8))(v10, v5);
  sub_10001EC70();
  v30 = swift_allocError();
  *v31 = 0xD000000000000027;
  *(v31 + 8) = 0x8000000100034320;
  *(v31 + 16) = 0;
  v36(0, v30);
}

uint64_t sub_100016B84(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    type metadata accessor for LockdownModeXNU();
    if (static LockdownModeXNU.lockdownModeEnabled.getter())
    {
      v21 = 0;
LABEL_12:
      v19 = v21 & 1;
      v20 = 0;
      return a2(v19, v20);
    }

    if (*(a4 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled))
    {
      v21 = 1;
    }

    else
    {
      v21 = static LockdownModeXNU.lockdownModeEnabled.getter();
      if ((v21 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (a5)
    {
      sub_10002C7F4(0xD00000000000001ALL, 0x8000000100034790);
      v21 = 1;
    }

    goto LABEL_12;
  }

  static Logger.daemonLogger.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Could not enableIfNeeded: %@", v16, 0xCu);
    sub_100005E54(v17, &qword_100042158, qword_100031C60);
  }

  (*(v10 + 8))(v13, v9);
  v19 = 0;
  v20 = a1;
  return a2(v19, v20);
}

void sub_100016DE4(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_100016E6C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t LockdownModeServer.migrateIfNeeded(completion:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = [objc_opt_self() currentConnection];
  if (v13)
  {
    v14 = v13;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 valueForEntitlement:v15];

    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30[0] = v28;
    v30[1] = v29;
    if (*(&v29 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v27 == 1)
      {
        static Logger.daemonLogger.getter();
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "Client requested to migrateIfNeeded", v19, 2u);
        }

        (*(v6 + 8))(v12, v5);

        sub_10001DB20(1, v3, v26, a2);
      }
    }

    else
    {

      sub_100005E54(v30, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v30[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_100019C8C(0xD000000000000027, 0x8000000100034320, v30);
    _os_log_impl(&_mh_execute_header, v21, v22, "Client is missing entitlement: %s", v23, 0xCu);
    sub_100005E08(v24);
  }

  (*(v6 + 8))(v10, v5);
  sub_10001EC70();
  swift_allocError();
  *v25 = 0xD000000000000027;
  *(v25 + 8) = 0x8000000100034320;
  *(v25 + 16) = 0;
  (v26)();
}

uint64_t sub_1000172C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v12, v13))
    {
      v11 = v9;
      goto LABEL_9;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Could not migrateIfNeeded: %@", v14, 0xCu);
    sub_100005E54(v15, &qword_100042158, qword_100031C60);

    v11 = v9;
  }

  else
  {
    static Logger.daemonLogger.getter();
    v12 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v17))
    {
      a1 = 0;
      goto LABEL_9;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v12, v17, "Successfully ran migrateIfNeeded", v18, 2u);
    a1 = 0;
  }

LABEL_9:

  (*(v5 + 8))(v11, v4);
  return a2(a1);
}

void LockdownModeServer.rebootIfNeeded(completion:)(void (*a1)(void), uint64_t a2)
{
  v44 = a2;
  v4 = type metadata accessor for Logger();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - v13;
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = [objc_opt_self() currentConnection];
  if (v17)
  {
    v18 = v17;
    v40 = v2;
    v41 = a1;
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 valueForEntitlement:v19];

    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    v48 = v46;
    v49 = v47;
    if (*(&v47 + 1))
    {
      if (swift_dynamicCast() && (v45 & 1) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_100005E54(&v48, &qword_100042500, &qword_100031EB0);
    }

    v21 = String._bridgeToObjectiveC()();
    v22 = [v18 valueForEntitlement:v21];

    if (v22)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
    }

    v48 = v46;
    v49 = v47;
    a1 = v41;
    if (*(&v47 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v45)
        {
LABEL_16:
          static Logger.daemonLogger.getter();
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v23, v24, "Checking if a reboot is needed…", v25, 2u);
          }

          v26 = v43;
          v27 = *(v42 + 8);
          v27(v16, v43);
          if (qword_100041CF0 != -1)
          {
            swift_once();
          }

          v28 = v41;
          if (*(static RestrictionsManager.shared + 32) == 1 && ((*(v40 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter() & 1) != 0) || (static LockdownModeXNU.lockdownModeEnabled.getter() & 1) == 0))
          {
            static Logger.daemonLogger.getter();
            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              *v39 = 0;
              _os_log_impl(&_mh_execute_header, v37, v38, "Lockdown Mode was turned on by a migrator. Rebooting…", v39, 2u);
            }

            v27(v14, v26);
            sub_10002C7F4(0xD00000000000001ALL, 0x8000000100034350);
          }

          else
          {
            static Logger.daemonLogger.getter();
            v29 = Logger.logObject.getter();
            v30 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              *v31 = 0;
              _os_log_impl(&_mh_execute_header, v29, v30, "Lockdown Mode was not turned on by a migrator. No need to reboot", v31, 2u);
            }

            v27(v11, v26);
          }

          (v28)(0);

          return;
        }

        a1 = v41;
      }

      else
      {
      }
    }

    else
    {

      sub_100005E54(&v48, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v48 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_100019C8C(0xD000000000000027, 0x8000000100034320, &v48);
    _os_log_impl(&_mh_execute_header, v32, v33, "Client is missing entitlement: %s", v34, 0xCu);
    sub_100005E08(v35);
  }

  (*(v42 + 8))(v8, v43);
  sub_10001EC70();
  swift_allocError();
  *v36 = 0xD000000000000027;
  *(v36 + 8) = 0x8000000100034320;
  *(v36 + 16) = 0;
  a1();
}

void sub_100017C18(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

void sub_100017C94(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Could not turn on Lockdown Mode due to an error: %@", v14, 0xCu);
      sub_100005E54(v15, &qword_100042158, qword_100031C60);
    }

    (*(v5 + 8))(v9, v4);
  }

  else
  {
    if ((a2 - 1) >= 3u)
    {
      static Logger.daemonLogger.getter();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Unhandled category", v19, 2u);
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      sub_10002CCE4(1, 0x40301u >> (8 * ((a2 - 1) & 0x1F)));
    }

    sub_10002C7F4(0xD00000000000001DLL, 0x80000001000347B0);
  }
}

void sub_100017F40()
{
  v48 = type metadata accessor for Logger();
  v1 = *(v48 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v48);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v45 = &v44 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v44 - v8;
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = sub_100003BC8(&qword_1000425F0, &qword_100032100);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 getActivePairedDevice];
  v21 = v20;
  if (!v19)
  {
    goto LABEL_15;
  }

  v47 = v1;
  if (v20)
  {
    v22 = v0;
    v23 = v19;
    v24 = v21;
    v25 = [v21 pairingID];
    if (v25)
    {
      v26 = v25;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = type metadata accessor for UUID();
      (*(*(v27 - 8) + 56))(v16, 0, 1, v27);
    }

    else
    {
      v27 = type metadata accessor for UUID();
      (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
    }

    sub_10001EE9C(v16, v18);
    type metadata accessor for UUID();
    v31 = *(v27 - 8);
    isa = 0;
    if ((*(v31 + 48))(v18, 1, v27) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v31 + 8))(v18, v27);
    }
  }

  else
  {
    v24 = 0;
    v22 = v0;
    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
    v29 = v19;
    isa = 0;
  }

  v32 = [v19 hasCompletedInitialSyncForPairingID:isa];

  v33 = v22;
  v21 = v24;
  v1 = v47;
  if (v32)
  {
    if (*(v33 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter()))
    {
      static Logger.daemonLogger.getter();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "deviceIsSetup called. Turning on Lockdown Mode on paired device (if not Tinker)…", v36, 2u);
        v1 = v47;
      }

      (*(v1 + 8))(v9, v48);
      sub_100013B28(1);
    }

    else
    {
      v40 = v45;
      static Logger.daemonLogger.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "deviceIsSetup called but Lockdown Mode is off. No action needed", v43, 2u);
      }

      else
      {
      }

      (*(v1 + 8))(v40, v48);
    }
  }

  else
  {
LABEL_15:
    static Logger.daemonLogger.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "deviceIsSetup called but paired device hasn't completed initial sync. Skipping for now…", v39, 2u);
    }

    else
    {
    }

    (*(v1 + 8))(v11, v48);
  }
}

void LockdownModeServer.setManagedConfigurationState(enabled:completion:)(int a1, void (*a2)(void), uint64_t a3)
{
  v36 = a3;
  v37 = type metadata accessor for Logger();
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v37);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v11 = __chkstk_darwin(v10);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = [objc_opt_self() currentConnection];
  if (v16)
  {
    v17 = v16;
    LODWORD(v35) = a1;
    v18 = a2;
    v19 = String._bridgeToObjectiveC()();
    v20 = [v17 valueForEntitlement:v19];

    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v41[0] = v39;
    v41[1] = v40;
    a2 = v18;
    if (*(&v40 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v38 == 1)
      {
        static Logger.daemonLogger.getter();
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 67109120;
          *(v23 + 4) = v35 & 1;
          _os_log_impl(&_mh_execute_header, v21, v22, "Client requested to set the managed configuration value: lockdownModeEnabled=%{BOOL}d", v23, 8u);
        }

        v24 = *(v5 + 8);
        v24(v15, v37);
        if (qword_100041CF0 != -1)
        {
          swift_once();
        }

        v25 = v35;
        sub_10002B764(v35 & 1);
        static Logger.daemonLogger.getter();
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 67109120;
          *(v33 + 4) = v25 & 1;
          _os_log_impl(&_mh_execute_header, v31, v32, "Successfully set the managed configuration value: lockdownModeEnabled=%{BOOL}d", v33, 8u);
        }

        v24(v13, v37);
        (v18)(0);

        return;
      }
    }

    else
    {

      sub_100005E54(v41, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v41[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, v41);
    _os_log_impl(&_mh_execute_header, v26, v27, "Client is missing entitlement: %s", v28, 0xCu);
    sub_100005E08(v29);
  }

  (*(v5 + 8))(v9, v37);
  sub_10001EC70();
  swift_allocError();
  *v30 = 0xD00000000000002ALL;
  *(v30 + 8) = 0x80000001000342C0;
  *(v30 + 16) = 0;
  a2();
}

void sub_100018D48(uint64_t a1)
{
  v77 = type metadata accessor for Logger();
  v2 = *(v77 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v77);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v72 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v72 - v10;
  v12 = __chkstk_darwin(v9);
  v75 = &v72 - v13;
  v14 = __chkstk_darwin(v12);
  v73 = &v72 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v72 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v72 - v20;
  __chkstk_darwin(v19);
  v23 = &v72 - v22;
  static Logger.daemonLogger.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Received IDS message", v26, 2u);
  }

  v27 = *(v2 + 8);
  v28 = v77;
  v27(v23, v77);
  v78 = 1701869940;
  v79 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v29 = sub_10001A2E8(v80), (v30 & 1) == 0))
  {
    sub_10001ECCC(v80);
LABEL_19:
    static Logger.daemonLogger.getter();

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v28;
      v48 = swift_slowAlloc();
      v49 = v27;
      v50 = swift_slowAlloc();
      v80[0] = v50;
      *v48 = 136446210;
      v51 = Dictionary.description.getter();
      v53 = sub_100019C8C(v51, v52, v80);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v45, v46, "Incoming message is missing a type: %{public}s", v48, 0xCu);
      sub_100005E08(v50);

      v49(v8, v47);
      return;
    }

    v54 = v8;
LABEL_22:
    v27(v54, v28);
    return;
  }

  sub_100005DA4(*(a1 + 56) + 32 * v29, v81);
  sub_10001ECCC(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v78 == 1)
  {
    v55 = v27;
    static Logger.daemonLogger.getter();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
    }

    v55(v11, v28);
    if (v76[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled])
    {
      v59 = 1;
    }

    else
    {
      type metadata accessor for LockdownModeXNU();
      v59 = static LockdownModeXNU.lockdownModeEnabled.getter();
    }

    sub_100013B28(v59 & 1);
    return;
  }

  if (v78)
  {
    goto LABEL_19;
  }

  v31 = v27;
  static Logger.daemonLogger.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    v28 = v77;
  }

  v27 = v31;
  v31(v21, v28);
  v78 = 0x64656C62616E65;
  v79 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  v35 = v75;
  if (!*(a1 + 16) || (v36 = sub_10001A2E8(v80), (v37 & 1) == 0))
  {
    sub_10001ECCC(v80);
    goto LABEL_29;
  }

  sub_100005DA4(*(a1 + 56) + 32 * v36, v81);
  sub_10001ECCC(v80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    static Logger.daemonLogger.getter();

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v80[0] = v63;
      *v62 = 136446210;
      v64 = Dictionary.description.getter();
      v66 = v28;
      v67 = sub_100019C8C(v64, v65, v80);

      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v60, v61, "Incoming setState message is invalid: %{public}s", v62, 0xCu);
      sub_100005E08(v63);

      v31(v35, v66);
      return;
    }

    v54 = v35;
    goto LABEL_22;
  }

  v38 = v78;
  v39 = v76;
  if (v76[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] == 1)
  {
    if ((v78 & 1) == 0)
    {
LABEL_15:
      static Logger.daemonLogger.getter();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 67109120;
        *(v42 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v40, v41, "Setting Lockdown Mode state to: %{BOOL}d from IDS message…", v42, 8u);
        v39 = v76;
      }

      v31(v18, v28);
      v43 = swift_allocObject();
      *(v43 + 16) = v39;
      v44 = v39;
      sub_100012394(v38, 0, 0, v38 ^ 1, 1, 0, 0, 0, 0, sub_10001EE94, v43);

      return;
    }
  }

  else
  {
    type metadata accessor for LockdownModeXNU();
    if (v38 != (static LockdownModeXNU.lockdownModeEnabled.getter() & 1))
    {
      goto LABEL_15;
    }
  }

  v68 = v73;
  static Logger.daemonLogger.getter();
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "Local state matches the one in the IDS message. No action needed", v71, 2u);
  }

  v31(v68, v28);
}

void sub_100019764(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Could not turn on Lockdown Mode due to an error: %@", v12, 0xCu);
      sub_100005E54(v13, &qword_100042158, qword_100031C60);
    }

    (*(v3 + 8))(v7, v2);
    sub_100011E54(5, 0, 1);
  }

  else
  {
    static Logger.daemonLogger.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Rebooting…", v17, 2u);
    }

    (*(v3 + 8))(v9, v2);
    sub_10002C7F4(0xD000000000000014, 0x80000001000345C0);
  }
}

unint64_t ServerError.errorDescription.getter(unint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(23);

    v5 = 0xD000000000000015;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(25);

    v5 = 0xD000000000000017;
LABEL_5:
    v10 = v5;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    return v10;
  }

  v8 = 0x206E776F6E6B6E55;
  if (a1 ^ 2 | a2)
  {
    v9 = 0xD00000000000001ALL;
  }

  else
  {
    v9 = 0xD000000000000026;
  }

  if (a1 | a2)
  {
    v8 = 0xD000000000000018;
  }

  if (a1 <= 1)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

char *sub_100019B98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BC8(&qword_100042678, &qword_100032118);
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

uint64_t sub_100019C8C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100019D58(v11, 0, 0, 1, a1, a2);
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
    sub_100005DA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005E08(v11);
  return v7;
}

unint64_t sub_100019D58(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100019E64(a5, a6);
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

char *sub_100019E64(uint64_t a1, unint64_t a2)
{
  v4 = sub_100019EB0(a1, a2);
  sub_100019FE0(&off_10003D150);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100019EB0(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001A0CC(v5, 0);
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
        v7 = sub_10001A0CC(v10, 0);
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

uint64_t sub_100019FE0(uint64_t result)
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

  result = sub_10001A140(result, v12, 1, v3);
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

void *sub_10001A0CC(uint64_t a1, uint64_t a2)
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

  sub_100003BC8(&qword_100042688, qword_100032120);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001A140(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BC8(&qword_100042688, qword_100032120);
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

unint64_t sub_10001A234(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100022560(&qword_100042670, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10001AAD8(a1, v4);
}

unint64_t sub_10001A2E8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001ABE4(a1, v4);
}

unint64_t sub_10001A32C(int a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_10001ACAC(a1, v4);
}

unint64_t sub_10001A374(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10001AD18(a1, v4);
}

unint64_t sub_10001A408(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10001AE1C(a1, a2, v6);
}

unint64_t sub_10001A480(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_100024F58();

  return sub_10001AED4(a1, v4);
}

_OWORD *sub_10001A4C4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10001A234(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100029E68();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100028FF0(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_10001A234(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_100005E08(v20);

    return sub_10000427C(a1, v20);
  }

  else
  {
    sub_10001AA04(v8, a2, a1, v19);

    return a2;
  }
}

unint64_t sub_10001A604(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10001A480(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000292A0(v14, a3 & 1);
      v18 = *v4;
      result = sub_10001A480(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100029FE8();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

_OWORD *sub_10001A750(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001A408(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10002A2B4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100029910(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10001A408(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100005E08(v23);

    return sub_10000427C(a1, v23);
  }

  else
  {
    sub_10001AA6C(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_10001A8A0(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10001A408(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100029BC8(v16, a4 & 1);
      v20 = *v5;
      result = sub_10001A408(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10002A458();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 4 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

_OWORD *sub_10001AA04(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10000427C(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_10001AA6C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000427C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10001AAD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100022560(&qword_100042670, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10001ABE4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10002245C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001ECCC(v8);
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

unint64_t sub_10001ACAC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10001AD18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001AE1C(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10001AED4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v11 = 0xD000000000000017;
            v12 = 0x8000000100033C30;
          }

          else
          {
            v11 = 0x65706F6C65766544;
            v12 = 0xED000065646F4D72;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v11 = 0x5279616C50726941;
          }

          else
          {
            v11 = 0xD000000000000011;
          }

          if (v6 == 4)
          {
            v12 = 0xEF72657669656365;
          }

          else
          {
            v12 = 0x8000000100033C10;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 5067348;
        }

        else
        {
          v7 = 0x6C41646572616853;
        }

        if (v6 == 2)
        {
          v8 = 0xE300000000000000;
        }

        else
        {
          v8 = 0xEC000000736D7562;
        }

        if (*(*(v27 + 48) + v4))
        {
          v9 = 0x766572506B6E694CLL;
        }

        else
        {
          v9 = 0x5479616C50726941;
        }

        if (v6)
        {
          v10 = 0xEC00000073776569;
        }

        else
        {
          v10 = 0xEB0000000056546FLL;
        }

        if (v6 <= 1)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (v6 <= 1)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }
      }

      v13 = 0xD000000000000017;
      if (v5 != 6)
      {
        v13 = 0x65706F6C65766544;
      }

      v14 = 0xED000065646F4D72;
      if (v5 == 6)
      {
        v14 = 0x8000000100033C30;
      }

      v15 = 0x5279616C50726941;
      if (v5 != 4)
      {
        v15 = 0xD000000000000011;
      }

      v16 = 0xEF72657669656365;
      if (v5 != 4)
      {
        v16 = 0x8000000100033C10;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 5067348;
      }

      else
      {
        v17 = 0x6C41646572616853;
      }

      if (v5 == 2)
      {
        v18 = 0xE300000000000000;
      }

      else
      {
        v18 = 0xEC000000736D7562;
      }

      if (v5)
      {
        v19 = 0x766572506B6E694CLL;
      }

      else
      {
        v19 = 0x5479616C50726941;
      }

      if (v5)
      {
        v20 = 0xEC00000073776569;
      }

      else
      {
        v20 = 0xEB0000000056546FLL;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}