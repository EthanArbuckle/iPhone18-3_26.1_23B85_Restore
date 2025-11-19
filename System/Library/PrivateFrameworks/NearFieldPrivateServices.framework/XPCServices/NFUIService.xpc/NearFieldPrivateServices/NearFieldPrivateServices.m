uint64_t sub_100001650()
{
  v0 = type metadata accessor for Logger();
  sub_10000349C(v0, qword_100010DE0);
  sub_1000016D4(v0, qword_100010DE0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000016D4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

Swift::Int sub_100001720()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100001794()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_1000017D8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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

unint64_t sub_100001800()
{
  result = qword_1000109F0;
  if (!qword_1000109F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000109F0);
  }

  return result;
}

uint64_t sub_1000018E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (!a1)
  {
    return a2(1);
  }

  swift_errorRetain();
  if (qword_100010C40 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000016D4(v3, qword_100010DE0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_100001BF8(0xD00000000000002BLL, 0x80000001000075B0, &v11);
    *(v6 + 12) = 2048;
    *(v6 + 14) = 113;
    *(v6 + 22) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: %ld: launch error %@", v6, 0x20u);
    sub_1000021EC(v7);

    sub_1000021A0(v8);
  }

  a2(0);
}

void sub_100001AF8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

id sub_100001BC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NFWindowSceneEventLauncher();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001BF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001CC4(v11, 0, 0, 1, a1, a2);
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
    sub_10000343C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000021A0(v11);
  return v7;
}

unint64_t sub_100001CC4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001DD0(a5, a6);
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

char *sub_100001DD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001E1C(a1, a2);
  sub_100001F4C(&off_10000C560);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100001E1C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002038(v5, 0);
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
        v7 = sub_100002038(v10, 0);
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

uint64_t sub_100001F4C(uint64_t result)
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

  result = sub_1000020AC(result, v12, 1, v3);
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

void *sub_100002038(uint64_t a1, uint64_t a2)
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

  sub_100002254(&qword_100010A58, &unk_100007358);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000020AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002254(&qword_100010A58, &unk_100007358);
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

uint64_t sub_1000021A0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000021EC(uint64_t a1)
{
  v2 = sub_100002254(&qword_1000109F8, &qword_100007220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002254(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000229C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000022E0(a1, v4);
}

unint64_t sub_1000022E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000338C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000033E8(v8);
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

unint64_t sub_1000023A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002254(&qword_100010A50, &qword_100007350);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000330C(v4, v13);
      result = sub_10000229C(v13);
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
      result = sub_10000337C(&v15, (v3[7] + 32 * result));
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

void sub_1000024C4(uint64_t a1, uint64_t a2, void *a3, void (**a4)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  _Block_copy(a4);
  v7 = SBSCreateOpenApplicationService();
  if (v7)
  {
    v8 = v7;
    sub_100002254(&qword_100010A30, &qword_100007330);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100007200;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    sub_100002254(&qword_100010A38, &qword_100007338);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100007210;
    *(v10 + 32) = a3;
    *(inited + 96) = sub_100002254(&qword_100010A40, &qword_100007340);
    *(inited + 72) = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = a3;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = 1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    *(inited + 240) = &type metadata for Int;
    *(inited + 216) = 3;
    sub_1000023A8(inited);
    swift_setDeallocating();
    sub_100002254(&qword_100010A48, &qword_100007348);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v13 = [objc_opt_self() optionsWithDictionary:isa];

    v14 = String._bridgeToObjectiveC()();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100003298;
    *(v15 + 24) = v6;
    aBlock[4] = sub_1000032E8;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100001AF8;
    aBlock[3] = &unk_10000C670;
    v16 = _Block_copy(aBlock);

    [v8 openApplication:v14 withOptions:v13 completion:v16];
    _Block_release(v16);
  }

  else
  {
    a4[2](a4, 0);
  }
}

void sub_100002844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v36 = a1;
  v37 = a2;
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001800();
  _Block_copy(a5);
  _Block_copy(a5);
  v13 = OS_os_log.init(subsystem:category:)();
  if (!a4)
  {
    v14 = type metadata accessor for NFCWindowSceneEvent();
    v35 = &v34;
    v15 = *(v14 - 8);
    v20 = *(v15 + 64);
    __chkstk_darwin();
    v19 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a3 == 1)
    {
      (*(v15 + 104))(v19, enum case for NFCWindowSceneEvent.readerDetected(_:), v14);
      static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
    }

    else
    {
      if (a3 != 2)
      {
        a5[2](a5, 0);
        if (qword_100010C40 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_1000016D4(v29, qword_100010DE0);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v38 = v33;
          *v32 = 136315394;
          *(v32 + 4) = sub_100001BF8(0xD000000000000032, 0x8000000100007410, &v38);
          *(v32 + 12) = 2048;
          *(v32 + 14) = 78;
          _os_log_impl(&_mh_execute_header, v30, v31, "%s: %ld: Unexpected event value", v32, 0x16u);
          sub_1000021A0(v33);
        }

        goto LABEL_18;
      }

      (*(v15 + 104))(v19, enum case for NFCWindowSceneEvent.presentation(_:), v14);
      static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
    }

    os_signpost(_:dso:log:name:signpostID:)();
    (*(v9 + 8))(v12, v8);
    v22 = NFCWindowSceneEvent.asBSAction()();
LABEL_17:
    v28 = v22;
    _Block_copy(a5);
    sub_1000024C4(v36, v37, v28, a5);
    _Block_release(a5);

    (*(v15 + 8))(v19, v14);
LABEL_18:
    _Block_release(a5);
    _Block_release(a5);
    return;
  }

  v14 = type metadata accessor for CredentialSessionWindowSceneEvent();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 1)
  {
    v35 = v17;
    (*(v15 + 104))(v19, enum case for CredentialSessionWindowSceneEvent.readerDetected(_:), v14);
    static os_signpost_type_t.event.getter();
    static OSSignpostID.exclusive.getter();
    goto LABEL_9;
  }

  if (a3 == 2)
  {
    v35 = v17;
    (*(v15 + 104))(v19, enum case for CredentialSessionWindowSceneEvent.presentation(_:), v14);
    static os_signpost_type_t.event.getter();
    static OSSignpostID.exclusive.getter();
LABEL_9:
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v9 + 8))(v12, v8);
    v22 = CredentialSessionWindowSceneEvent.asBSAction()();
    goto LABEL_17;
  }

  a5[2](a5, 0);
  if (qword_100010C40 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000016D4(v23, qword_100010DE0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_100001BF8(0xD000000000000032, 0x8000000100007410, &v38);
    *(v26 + 12) = 2048;
    *(v26 + 14) = 50;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: %ld: Unexpected event value", v26, 0x16u);
    sub_1000021A0(v27);
  }

  _Block_release(a5);
  _Block_release(a5);
}

unint64_t sub_1000031FC()
{
  result = qword_100010A00;
  if (!qword_100010A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010A00);
  }

  return result;
}

uint64_t sub_100003260()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000032B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000032F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000330C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002254(&qword_100010A48, &qword_100007348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10000337C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000343C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000349C(uint64_t a1, uint64_t *a2)
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

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100003668(id a1)
{
  qword_100010DD0 = objc_alloc_init(NFServiceCoreNFCUI);

  _objc_release_x1();
}

uint64_t sub_100003C48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003C60(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v6 = Logger;
    Class = object_getClass(*(*(*(a1 + 40) + 8) + 40));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(*(*(a1 + 40) + 8) + 40));
    Name = sel_getName(*(a1 + 64));
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v6(6, "%c[%{public}s %{public}s]:%i Invalidation handler received with error %@ using context %@", v11, ClassName, Name, 88, v3, *(a1 + 32));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(*(*(a1 + 40) + 8) + 40));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(*(*(a1 + 40) + 8) + 40));
    v16 = sel_getName(*(a1 + 64));
    v17 = *(a1 + 32);
    *buf = 67110402;
    v26 = v14;
    v27 = 2082;
    v28 = v15;
    v29 = 2082;
    v30 = v16;
    v31 = 1024;
    v32 = 88;
    v33 = 2112;
    v34 = v3;
    v35 = 2112;
    v36 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Invalidation handler received with error %@ using context %@", buf, 0x36u);
  }

  if (v3 && [v3 code] == -6723)
  {
    v18 = [v3 debugDescription];
    v19 = [v18 containsString:@"User dismissed"];
  }

  else
  {
    v19 = 0;
  }

  os_unfair_lock_lock((*(*(*(a1 + 40) + 8) + 40) + 16));
  v20 = *(*(*(a1 + 40) + 8) + 40);
  v21 = *(v20 + 8);
  *(v20 + 8) = 0;

  *(*(*(*(a1 + 40) + 8) + 40) + 40) = 0;
  *(*(*(*(a1 + 40) + 8) + 40) + 48) = 0;
  v22 = *(*(*(a1 + 40) + 8) + 40);
  v23 = *(v22 + 24);
  *(v22 + 24) = 0;

  *(*(*(*(a1 + 40) + 8) + 40) + 32) = 0;
  *(*(*(*(a1 + 40) + 8) + 40) + 20) = 0;
  os_unfair_lock_unlock((*(*(*(a1 + 40) + 8) + 40) + 16));
  v24 = objc_loadWeakRetained((a1 + 56));
  [WeakRetained sendInvalidationNotification:v24 error:v3 userCanceled:v19];
}

void sub_100003F40(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    [*(*(a1 + 32) + 8) setInvalidationHandler:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100005848(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0, 0);
  }

  else
  {
    v7 = NSLocalizedDescriptionKey;
    v8 = @"Launch error";
    v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v6 = [NSError errorWithDomain:@"NFUIService" code:3 userInfo:v5];
    (*(v2 + 16))(v2, 0, v6);
  }
}

void sub_10000597C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectForKeyedSubscript:@"Parameter"];
  [v1 showPaymentSessionGotoSettingsPrompt:v2];
}