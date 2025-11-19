uint64_t sub_100028448()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[11];
  v4 = FCNotificationsLog;
  static os_log_type_t.error.getter();
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v5 = swift_allocObject();
  v0[2] = 0;
  *(v5 + 16) = xmmword_10005A4F0;
  v0[3] = 0xE000000000000000;
  v0[6] = v1;
  sub_100015140(&unk_10007EC50, &qword_10005A910);
  _print_unlocked<A, B>(_:_:)();
  v6 = v0[2];
  v7 = v0[3];
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10001528C();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  os_log(_:dso:log:type:_:)();

  swift_willThrow();

  v8 = v0[1];
  v9 = v0[16];

  return v8();
}

uint64_t sub_1000285D0()
{
  v0 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = objc_allocWithZone(NDAssertion);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithName:v7];

    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v5;
    v10[5] = v8;
    sub_100018090(0, 0, v3, &unk_10005AC68, v10);
  }

  return result;
}

uint64_t sub_100028764()
{
  String.utf8CString.getter();
  String.utf8CString.getter();
  xpc_set_event();

  v1 = FCNotificationsLog;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v2 = FCNotificationsLog;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1000288EC;
  v4 = *(v0 + 16);

  return sub_100026F38();
}

uint64_t sub_1000288EC()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return _swift_task_switch(sub_1000289E8, 0, 0);
}

uint64_t sub_1000289E8()
{
  v1 = FCNotificationsLog;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_100028AC0;
  v3 = *(v0 + 16);

  return sub_100026264();
}

uint64_t sub_100028AC0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100028BB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100028C14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100017F58;

  return sub_100026264();
}

uint64_t sub_100028E34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100017F58;

  return sub_100028C14();
}

uint64_t sub_100028EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelayedNotificationTimetable();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelayedNotificationTimetable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028FB0(uint64_t a1)
{
  v2 = type metadata accessor for DelayedNotificationTimetable();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002900C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002904C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100023584;

  return sub_100025ED4(a1, v4, v5, v6);
}

unint64_t sub_100029100()
{
  result = qword_10007F260;
  if (!qword_10007F260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007F260);
  }

  return result;
}

uint64_t sub_100029154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002916C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100023584;

  return sub_100028744(a1, v4, v5, v7);
}

id sub_10002922C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v3 = [objc_msgSend(v0 "headline")];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    type metadata accessor for Capabilities();

    if (static Capabilities.isInternalBuild()())
    {
      v7 = [v1 notificationItem];
      v8 = [v7 source];

      v9 = 0x2096A49FF0;
      if (v8 == 5)
      {
        v10 = 0xA500000000000000;
      }

      else
      {
        v9 = 0;
        v10 = 0xE000000000000000;
      }

      v16 = v9;
      v17 = v10;

      v11._countAndFlagsBits = v4;
      v11._object = v6;
      String.append(_:)(v11);
      swift_bridgeObjectRelease_n();
    }

    else
    {
    }
  }

  v12 = String._bridgeToObjectiveC()();

  [v2 setTitle:v12];

  v13 = [v1 bodyText];
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  [v2 setBody:{v13, v16, v17}];

  [v2 setCategoryIdentifier:FCNotificationArticleCategory];
  sub_1000294A8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 setUserInfo:isa];

  return v2;
}

void *sub_1000294A8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v11 + 1) = v0;
  AnyHashable.init<A>(_:)();
  sub_100015140(&qword_10007EC68, &qword_10005AC88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10005A4F0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v3;
  v4 = sub_10002A2D0(inited);
  swift_setDeallocating();
  sub_100022E54(inited + 32, &qword_10007EC70, &qword_10005AC90);
  v12 = sub_100015140(&qword_10007EC78, &qword_10005AC98);
  *&v11 = v4;
  sub_10002A3E4(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100041C98(v10, v13, isUniquelyReferenced_nonNull_native);
  sub_10002A3F4(v13);
  *&v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v11 + 1) = v6;
  AnyHashable.init<A>(_:)();
  v7 = sub_100029684();
  v12 = sub_100015140(&unk_10007EC80, &unk_10005ACA0);
  *&v11 = v7;
  sub_10002A3E4(&v11, v10);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_100041C98(v10, v13, v8);
  sub_10002A3F4(v13);
  return &_swiftEmptyDictionarySingleton;
}

void *sub_100029684()
{
  v1 = v0;
  v2 = sub_100015140(&qword_10007E790, &qword_10005BD10);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v61 - v7;
  v67 = &_swiftEmptyDictionarySingleton;
  *&v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v64 + 1) = v9;
  AnyHashable.init<A>(_:)();
  v10 = [objc_msgSend(v0 "headline")];
  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v65 = &type metadata for String;
    *&v64 = v11;
    *(&v64 + 1) = v13;
    sub_10002A3E4(&v64, v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = &_swiftEmptyDictionarySingleton;
    sub_100041C98(v63, v66, isUniquelyReferenced_nonNull_native);
    sub_10002A3F4(v66);
    v67 = v62;
  }

  else
  {
    sub_100029F78(v66, &v64);
    sub_100022E54(&v64, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v66);
  }

  *&v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v64 + 1) = v15;
  AnyHashable.init<A>(_:)();
  v16 = [objc_msgSend(v0 "headline")];
  swift_unknownObjectRelease();
  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v65 = &type metadata for String;
    *&v64 = v17;
    *(&v64 + 1) = v19;
    sub_10002A3E4(&v64, v63);
    v20 = v67;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v20;
    sub_100041C98(v63, v66, v21);
    sub_10002A3F4(v66);
    v67 = v62;
  }

  else
  {
    sub_100029F78(v66, &v64);
    sub_100022E54(&v64, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v66);
  }

  *&v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v64 + 1) = v22;
  AnyHashable.init<A>(_:)();
  v23 = [objc_msgSend(v1 "headline")];
  swift_unknownObjectRelease();
  if (v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v65 = &type metadata for String;
    *&v64 = v24;
    *(&v64 + 1) = v26;
    sub_10002A3E4(&v64, v63);
    v27 = v67;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v27;
    sub_100041C98(v63, v66, v28);
    sub_10002A3F4(v66);
    v67 = v62;
  }

  else
  {
    sub_100029F78(v66, &v64);
    sub_100022E54(&v64, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v66);
  }

  *&v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v64 + 1) = v29;
  AnyHashable.init<A>(_:)();
  v30 = [objc_msgSend(v1 "headline")];
  swift_unknownObjectRelease();
  if (v30)
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v65 = &type metadata for String;
    *&v64 = v31;
    *(&v64 + 1) = v33;
    sub_10002A3E4(&v64, v63);
    v34 = v67;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v34;
    sub_100041C98(v63, v66, v35);
    sub_10002A3F4(v66);
    v67 = v62;
  }

  else
  {
    sub_100029F78(v66, &v64);
    sub_100022E54(&v64, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v66);
  }

  *&v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v64 + 1) = v36;
  AnyHashable.init<A>(_:)();
  v37 = [objc_msgSend(v1 "headline")];
  swift_unknownObjectRelease();
  if (v37)
  {
    v38 = [v37 name];
    swift_unknownObjectRelease();
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v65 = &type metadata for String;
    *&v64 = v39;
    *(&v64 + 1) = v41;
    sub_10002A3E4(&v64, v63);
    v42 = v67;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v42;
    sub_100041C98(v63, v66, v43);
    sub_10002A3F4(v66);
    v67 = v62;
  }

  else
  {
    sub_100029F78(v66, &v64);
    sub_100022E54(&v64, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v66);
  }

  *&v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v64 + 1) = v44;
  AnyHashable.init<A>(_:)();
  v45 = [objc_msgSend(v1 "headline")];
  swift_unknownObjectRelease();
  if (v45 && (v46 = [v45 nameCompact], swift_unknownObjectRelease(), v46))
  {
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v65 = &type metadata for String;
    *&v64 = v47;
    *(&v64 + 1) = v49;
    sub_10002A3E4(&v64, v63);
    v50 = v67;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v50;
    sub_100041C98(v63, v66, v51);
    sub_10002A3F4(v66);
    v67 = v62;
  }

  else
  {
    sub_100029F78(v66, &v64);
    sub_100022E54(&v64, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v66);
  }

  *&v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v64 + 1) = v52;
  AnyHashable.init<A>(_:)();
  v53 = [objc_msgSend(v1 "headline")];
  swift_unknownObjectRelease();
  if (v53)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = type metadata accessor for Date();
  v56 = *(v55 - 8);
  (*(v56 + 56))(v6, v54, 1, v55);
  sub_10002A448(v6, v8);
  if ((*(v56 + 48))(v8, 1, v55) == 1)
  {
    sub_100022E54(v8, &qword_10007E790, &qword_10005BD10);
    sub_100029F78(v66, &v64);
    sub_100022E54(&v64, &qword_10007EC90, &qword_10005ACB0);
    sub_10002A3F4(v66);
    return v67;
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    v65 = &type metadata for Double;
    *&v64 = v58;
    (*(v56 + 8))(v8, v55);
    sub_10002A3E4(&v64, v63);
    v59 = v67;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v59;
    sub_100041C98(v63, v66, v60);
    sub_10002A3F4(v66);
    return v62;
  }
}

double sub_100029F78@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000407C8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100042180();
      v11 = v13;
    }

    sub_10002A3F4(*(v11 + 48) + 40 * v8);
    sub_10002A3E4((*(v11 + 56) + 32 * v8), a2);
    sub_10002A01C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10002A01C(uint64_t result, uint64_t a2)
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
      sub_10002A4B8(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_10002A3F4(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10002A1C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100015140(&qword_10007ECA0, &qword_10005ACC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002A514(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100040750(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10002A3E4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10002A2D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100015140(&qword_10007EC98, &qword_10005ACB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100040750(v5, v6);
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

_OWORD *sub_10002A3E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10002A448(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015140(&qword_10007E790, &qword_10005BD10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A514(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015140(&qword_10007ECA8, &qword_10005ACC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A588(uint64_t a1, uint64_t a2, void *a3, void *a4, double *a5)
{
  v42 = a5;
  v47 = a2;
  v48 = a3;
  v7 = sub_100015140(&qword_10007ED10, &unk_10005ACD0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for ScoredFeedItem();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MergedFeedItemSequence();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  v41 = v22;
  (*(v22 + 16))(v19, a1, v15);
  sub_10002AA4C(&qword_10007ED18);
  dispatch thunk of Sequence.makeIterator()();
  v23 = a4;
  swift_beginAccess();
  swift_beginAccess();
  v24 = objc_autoreleasePoolPush();
  v25 = sub_10002AA4C(&unk_10007ED20);
  v49 = v21;
  v50 = v15;
  v46 = v25;
  dispatch thunk of IteratorProtocol.next()();
  v26 = v44;
  v45 = *(v44 + 48);
  if (v45(v10, 1, v11) == 1)
  {
LABEL_2:
    sub_10002AA90(v10);
    objc_autoreleasePoolPop(v24);
    return (*(v41 + 8))(v49, v50);
  }

  else
  {
    v29 = *(v26 + 32);
    v28 = v26 + 32;
    v43 = v23;
    v44 = v29;
    v30 = (v28 - 24);
    while (1)
    {
      v31 = v28;
      (v44)(v14, v10, v11);
      v32 = ScoredFeedItem.feedItem.getter();
      ScoredFeedItem.score.getter();
      [v32 applyTabiScore:NDManagedFeedItemPoolOptions.configurationSet.getter() configurationSet:v33];

      v34 = ScoredFeedItem.feedItem.getter();
      v51 = 0;
      LODWORD(v32) = [v48 write:v34 error:&v51];

      v35 = v51;
      if (!v32)
      {
        break;
      }

      if (__OFSUB__(*v43, 1))
      {
        __break(1u);
      }

      --*v43;
      v36 = v35;
      v37 = ScoredFeedItem.feedItem.getter();
      v38 = [v37 isEvergreen];

      if (v38)
      {
        *v42 = *v42 + -1.0;
      }

      (*v30)(v14, v11);
      objc_autoreleasePoolPop(v24);
      v24 = objc_autoreleasePoolPush();
      dispatch thunk of IteratorProtocol.next()();
      v28 = v31;
      if (v45(v10, 1, v11) == 1)
      {
        goto LABEL_2;
      }
    }

    v39 = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*v30)(v14, v11);
    objc_autoreleasePoolPop(v24);
    return (*(v41 + 8))(v49, v50);
  }
}

uint64_t sub_10002AA4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MergedFeedItemSequence();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002AA90(uint64_t a1)
{
  v2 = sub_100015140(&qword_10007ED10, &unk_10005ACD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_10002AB00()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10002AB6C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10002ABAC()
{
  v1 = 0x74696D696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_10002AC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003012C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002AC40(uint64_t a1)
{
  v2 = sub_100032E24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002AC7C(uint64_t a1)
{
  v2 = sub_100032E24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002ACB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v6 = sub_100015140(&qword_10007EED8, &qword_10005B158);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_100002288(a1, a1[3]);
  sub_100032E24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_10002AE78(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_10003023C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_10002AED0(void *a1)
{
  v3 = v1;
  v5 = sub_100015140(&qword_10007EE98, &qword_10005AFB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_100002288(a1, a1[3]);
  sub_100032920();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v23 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v22 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[2];
    v14 = *(v3 + 24);
    v21 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v16 = *(v3 + 40);
    v20 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[6];
    v18[15] = 4;
    sub_100015140(&qword_10007EE80, &qword_10005AFA8);
    sub_100032A5C(&qword_10007EEA0, sub_100032AD4);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10002B13C()
{
  v1 = *v0;
  v2 = 0x6B6E615278616DLL;
  v3 = 0x65726F63536E696DLL;
  if (v1 != 3)
  {
    v3 = 0x694C656372756F73;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000016;
  if (*v0)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10002B1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100030724(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002B218(uint64_t a1)
{
  v2 = sub_100032920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B254(uint64_t a1)
{
  v2 = sub_100032920();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10002B290@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100030450(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_10002B2F8()
{
  v1[50] = v0;
  v2 = type metadata accessor for Date();
  v1[51] = v2;
  v3 = *(v2 - 8);
  v1[52] = v3;
  v4 = *(v3 + 64) + 15;
  v1[53] = swift_task_alloc();
  v5 = type metadata accessor for NotificationHistoryItem();
  v1[54] = v5;
  v6 = *(v5 - 8);
  v1[55] = v6;
  v7 = *(v6 + 64) + 15;
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v8 = *(*(sub_100015140(&qword_10007EDE8, &qword_10005AD68) - 8) + 64) + 15;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v9 = swift_task_alloc();
  v1[62] = v9;
  *v9 = v1;
  v9[1] = sub_10002B4AC;

  return sub_10002CE0C(v0);
}

uint64_t sub_10002B4AC()
{
  v2 = *(*v1 + 496);
  v3 = *v1;
  v3[63] = v0;

  if (v0)
  {
    v5 = v3[60];
    v4 = v3[61];
    v7 = v3[58];
    v6 = v3[59];
    v9 = v3[56];
    v8 = v3[57];
    v10 = v3[53];

    v11 = v3[1];

    return v11();
  }

  else
  {

    return _swift_task_switch(sub_10002B648, 0, 0);
  }
}

uint64_t sub_10002B648()
{
  v1 = [objc_msgSend(*(*(v0 + 400) + 16) "appConfigurationManager")];
  swift_unknownObjectRelease();
  if (([v1 respondsToSelector:"delayedNotificationVendorConfigurationData"] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v2 = [v1 delayedNotificationVendorConfigurationData];
  swift_unknownObjectRelease();
  if (!v2)
  {
LABEL_6:
    sub_10002DD10();
    swift_allocError();
    swift_willThrow();
    goto LABEL_7;
  }

  v3 = *(v0 + 504);
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v0 + 512) = v4;
  *(v0 + 520) = v6;
  v7 = type metadata accessor for JSONDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10002DD64();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
    sub_1000153DC(v4, v6);

LABEL_7:
    v11 = *(v0 + 480);
    v10 = *(v0 + 488);
    v13 = *(v0 + 464);
    v12 = *(v0 + 472);
    v15 = *(v0 + 448);
    v14 = *(v0 + 456);
    v16 = *(v0 + 424);

    v17 = *(v0 + 8);

    return v17();
  }

  v19 = *(v0 + 400);

  v20 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v20;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 64) = *(v0 + 120);
  v21 = FCNotificationsLog;
  *(v0 + 528) = sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10005A4F0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0xE000000000000000;
  v23 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v23;
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = *(v0 + 64);
  v24 = v21;
  _print_unlocked<A, B>(_:_:)();
  v25 = *(v0 + 344);
  v26 = *(v0 + 352);
  *(v22 + 56) = &type metadata for String;
  v27 = sub_10001528C();
  *(v0 + 536) = v27;
  *(v22 + 64) = v27;
  *(v22 + 32) = v25;
  *(v22 + 40) = v26;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v28 = v19[7];
  v29 = v19[8];
  sub_100002288(v19 + 4, v28);
  v30 = async function pointer to dispatch thunk of NotificationHistoryType.recentHistoryItems()[1];
  v31 = swift_task_alloc();
  *(v0 + 544) = v31;
  *v31 = v0;
  v31[1] = sub_10002B9D8;

  return dispatch thunk of NotificationHistoryType.recentHistoryItems()(v0 + 184, v28, v29);
}

uint64_t sub_10002B9D8()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v6 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    sub_10002DDB8(v2 + 16);
    v4 = sub_10002CC58;
  }

  else
  {
    v4 = sub_10002BAF4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002BAF4()
{
  v161 = v0;
  v1 = v0[55];
  v2 = v0[52];
  v0[45] = &_swiftEmptyDictionarySingleton;
  v3 = v0[26];
  v4 = v0[27];
  v5 = sub_100002288(v0 + 23, v3);
  v6 = *(v3 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  (*(v6 + 16))(v8, v5, v3);
  v9 = *(v4 + 8);
  v0[31] = swift_getAssociatedTypeWitness();
  v0[32] = swift_getAssociatedConformanceWitness();
  sub_10002377C(v0 + 28);
  dispatch thunk of Sequence.makeIterator()();

  v10 = 0;
  v158 = (v1 + 48);
  v155 = (v2 + 8);
  v156 = (v1 + 32);
  v154 = (v1 + 8);
  v11 = v0 + 45;
  while (1)
  {
    v0[70] = v10;
    v12 = v0[61];
    v13 = v0[54];
    v14 = v0[32];
    sub_100017518((v0 + 28), v0[31]);
    dispatch thunk of IteratorProtocol.next()();
    v157 = *v158;
    if ((*v158)(v12, 1, v13) == 1)
    {
      goto LABEL_17;
    }

    v15 = v0[53];
    v16 = v0[51];
    (*v156)(v0[58], v0[61], v0[54]);
    NotificationHistoryItem.notifiedAt.getter();
    Date.timeIntervalSinceNow.getter();
    v18 = v17;
    (*v155)(v15, v16);
    if (v18 <= -86400.0)
    {
      break;
    }

    v19 = NotificationHistoryItem.channelID.getter();
    v21 = v20;
    sub_10002FFD8(v10);
    v22 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v160[0] = v22;
    v24 = sub_100040750(v19, v21);
    v32 = v22[2];
    v33 = (v25 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_57;
    }

    v36 = v25;
    if (v22[3] < v35)
    {
      sub_100040DEC(v35, isUniquelyReferenced_nonNull_native);
      v22 = v160[0];
      v24 = sub_100040750(v19, v21);
      if ((v36 & 1) != (v25 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_9:
      *v11 = v22;
      if (v36)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v38 = v11;
    v39 = v24;
    sub_100042018();
    v24 = v39;
    v11 = v38;
    v22 = v160[0];
    *v38 = v160[0];
    if (v36)
    {
LABEL_10:
      v37 = v24;

      v24 = v37;
      goto LABEL_14;
    }

LABEL_12:
    v22[(v24 >> 6) + 8] |= 1 << v24;
    v40 = (v22[6] + 16 * v24);
    *v40 = v19;
    v40[1] = v21;
    *(v22[7] + 8 * v24) = 0;
    v41 = v22[2];
    v34 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v34)
    {
      goto LABEL_59;
    }

    v22[2] = v42;
LABEL_14:
    v43 = v22[7];
    v44 = *(v43 + 8 * v24);
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_58;
    }

    v46 = v0[58];
    v47 = v0[54];
    *(v43 + 8 * v24) = v45;
    (*v154)(v46, v47);
    v10 = sub_100032F94;
  }

  (*v154)(v0[58], v0[54]);
LABEL_17:
  v147 = v11;
  v48 = v0[60];
  v49 = v0[54];
  sub_10001653C(v0 + 28);
  v0[46] = &_swiftEmptySetSingleton;
  v51 = v0[26];
  v50 = v0[27];
  v52 = sub_100002288(v0 + 23, v51);
  v53 = *(v51 - 8);
  v54 = *(v53 + 64) + 15;
  v55 = swift_task_alloc();
  (*(v53 + 16))(v55, v52, v51);
  v56 = *(v50 + 8);
  v0[36] = swift_getAssociatedTypeWitness();
  v0[37] = swift_getAssociatedConformanceWitness();
  sub_10002377C(v0 + 33);
  dispatch thunk of Sequence.makeIterator()();

  v57 = v0[37];
  sub_100017518((v0 + 33), v0[36]);
  dispatch thunk of IteratorProtocol.next()();
  if (v157(v48, 1, v49) != 1)
  {
    v58 = *v156;
    while (1)
    {
      v59 = v0[53];
      v60 = v0[51];
      v58(v0[57], v0[60], v0[54]);
      NotificationHistoryItem.notifiedAt.getter();
      Date.timeIntervalSinceNow.getter();
      v62 = v61;
      (*v155)(v59, v60);
      if (v62 <= -v0[2])
      {
        break;
      }

      v63 = v0[60];
      v64 = v0[57];
      v65 = v0[54];
      v66 = NotificationHistoryItem.clusterID.getter();
      sub_10002E170(v160, v66, v67);

      (*v154)(v64, v65);
      v68 = v0[37];
      sub_100017518((v0 + 33), v0[36]);
      dispatch thunk of IteratorProtocol.next()();
      if (v157(v63, 1, v65) == 1)
      {
        goto LABEL_23;
      }
    }

    (*v154)(v0[57], v0[54]);
  }

LABEL_23:
  sub_10001653C(v0 + 33);
  v0[47] = &_swiftEmptySetSingleton;
  v69 = v0[8];
  v150 = *(v69 + 16);
  if (v150)
  {
    v149 = v69 + 32;

    v70 = 0;
    v71 = v0 + 47;
    v148 = v69;
    while (v70 < *(v69 + 16))
    {
      v77 = (v149 + 32 * v70);
      v78 = *v77;
      v79 = *(v77 + 1);
      v80 = *(v77 + 2);
      v81 = v77[3];
      swift_bridgeObjectRetain_n();
      v82 = String._bridgeToObjectiveC()();

      v83 = FCNotificationSourceFromString();

      if (v83)
      {
        v152 = v79;
        v153 = v80;
        v151 = v70;
        v84 = v0[59];
        v85 = v0[54];
        v87 = v0[26];
        v86 = v0[27];
        sub_100002288(v0 + 23, v87);
        v88 = *(v87 - 8);
        v89 = *(v88 + 64) + 15;
        swift_task_alloc();
        (*(v88 + 16))();
        v90 = *(v86 + 8);
        v0[41] = swift_getAssociatedTypeWitness();
        v0[42] = swift_getAssociatedConformanceWitness();
        sub_10002377C(v0 + 38);
        dispatch thunk of Sequence.makeIterator()();

        v91 = v0[42];
        sub_100017518((v0 + 38), v0[41]);
        dispatch thunk of IteratorProtocol.next()();
        v92 = 0;
        if (v157(v84, 1, v85) != 1)
        {
          v92 = 0;
          v93 = *v156;
          v94 = v78;
          while (1)
          {
            v98 = v0[53];
            v99 = v0[51];
            v93(v0[56], v0[59], v0[54]);
            NotificationHistoryItem.notifiedAt.getter();
            Date.timeIntervalSinceNow.getter();
            v101 = v100;
            (*v155)(v98, v99);
            v102 = v0[56];
            v103 = v0[54];
            if (v101 <= -v81)
            {
              break;
            }

            v104 = NotificationHistoryItem.source.getter();
            v24 = (*v154)(v102, v103);
            if (v104 == v83)
            {
              v34 = __OFADD__(v92++, 1);
              if (v34)
              {
                __break(1u);
                goto LABEL_56;
              }
            }

            v95 = v0[59];
            v96 = v0[54];
            v97 = v0[42];
            sub_100017518((v0 + 38), v0[41]);
            dispatch thunk of IteratorProtocol.next()();
            v78 = v94;
            if (v157(v95, 1, v96) == 1)
            {
              goto LABEL_38;
            }
          }

          (*v154)(v0[56], v0[54]);
        }

LABEL_38:
        sub_10001653C(v0 + 38);
        v71 = v0 + 47;
        if (v92 >= v153)
        {
          v105 = v0[66];
          v106 = FCNotificationsLog;
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_10005A4E0;
          *(v24 + 56) = &type metadata for Int;
          *(v24 + 64) = &protocol witness table for Int;
          *(v24 + 32) = v92;
          v69 = v148;
          v70 = v151;
          if ((*&v81 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_60;
          }

          if (v81 <= -9.22337204e18)
          {
            goto LABEL_61;
          }

          if (v81 >= 9.22337204e18)
          {
            goto LABEL_62;
          }

          v107 = v0[67];
          *(v24 + 96) = &type metadata for Int;
          *(v24 + 104) = &protocol witness table for Int;
          *(v24 + 72) = v81;
          *(v24 + 136) = &type metadata for String;
          *(v24 + 144) = v107;
          *(v24 + 112) = v78;
          *(v24 + 120) = v152;
          *(v24 + 176) = &type metadata for Int;
          *(v24 + 184) = &protocol witness table for Int;
          *(v24 + 152) = v153;
          *(v24 + 216) = &type metadata for String;
          *(v24 + 224) = v107;
          *(v24 + 192) = v78;
          *(v24 + 200) = v152;

          v108 = v106;
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v24 = sub_10002E2C0(v160, v83);
        }

        else
        {

          v69 = v148;
          v70 = v151;
        }
      }

      else
      {
        v72 = v71;
        v73 = v0[67];
        v74 = v0[66];
        v75 = FCNotificationsLog;
        static os_log_type_t.error.getter();
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_10005A4F0;
        *(v76 + 56) = &type metadata for String;
        *(v76 + 64) = v73;
        v71 = v72;
        v69 = v148;
        *(v76 + 32) = v78;
        *(v76 + 40) = v79;
        os_log(_:dso:log:type:_:)();
      }

      if (++v70 == v150)
      {
        v109 = (v0 + 2);
        sub_10002DDB8((v0 + 2));
        v110 = *v71;
        v111 = v71;
        goto LABEL_46;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, v25, v26, v27, v28, v29, v30, v31);
  }

  v109 = (v0 + 2);
  v111 = v0 + 47;
LABEL_46:
  v159 = v0[69];
  v112 = v0[67];
  v113 = v0[66];
  v114 = v0[50];
  v115 = FCNotificationsLog;
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_10005A4D0;
  v117 = v115;
  v118 = Dictionary.description.getter();
  *(v116 + 56) = &type metadata for String;
  *(v116 + 64) = v112;
  *(v116 + 32) = v118;
  *(v116 + 40) = v119;
  v120 = v0[46];
  v121 = Set.description.getter();
  *(v116 + 96) = &type metadata for String;
  *(v116 + 104) = v112;
  *(v116 + 72) = v121;
  *(v116 + 80) = v122;
  v123 = Set.description.getter();
  *(v116 + 136) = &type metadata for String;
  *(v116 + 144) = v112;
  *(v116 + 112) = v123;
  *(v116 + 120) = v124;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v125 = *(v114 + 24);
  v126 = swift_task_alloc();
  v126[2] = v114;
  v126[3] = v109;
  v126[4] = v111;
  v126[5] = v147;
  v126[6] = v0 + 46;
  v127 = *(v125 + OBJC_IVAR___NDScoredNotificationPool_accessQueue);
  v128 = swift_task_alloc();
  v128[2] = v125;
  v128[3] = sub_10002E3A8;
  v128[4] = v126;
  sub_100015140(&qword_10007EE00, &qword_10005AD80);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_10002DDB8(v109);

  v129 = v0[48];
  v0[71] = v129;

  v130 = v0[47];

  v131 = v0[46];

  v132 = v0[45];

  if (v129)
  {
    v133 = v0[50];
    v134 = swift_task_alloc();
    v0[72] = v134;
    *(v134 + 16) = v133;
    *(v134 + 24) = v129;
    v135 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v136 = swift_task_alloc();
    v0[73] = v136;
    v31 = sub_100015140(&qword_10007EE08, &qword_10005AD88);
    *v136 = v0;
    v136[1] = sub_10002CA3C;
    v29 = sub_10002FFE8;
    v24 = (v0 + 49);
    v28 = 0x800000010005E5F0;
    v25 = 0;
    v26 = 0;
    v27 = 0xD000000000000012;
    v30 = v134;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, v25, v26, v27, v28, v29, v30, v31);
  }

  sub_1000153DC(v0[64], v0[65]);
  v137 = v0[70];
  v139 = v0[60];
  v138 = v0[61];
  v141 = v0[58];
  v140 = v0[59];
  v143 = v0[56];
  v142 = v0[57];
  v144 = v0[53];
  sub_10001653C(v0 + 23);
  sub_10002FFD8(v137);

  v145 = v0[1];

  return v145(0);
}

uint64_t sub_10002CA3C()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v7 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v4 = sub_10002CD1C;
  }

  else
  {
    v5 = *(v2 + 576);

    v4 = sub_10002CB58;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002CB58()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);

  sub_1000153DC(v2, v1);
  v3 = *(v0 + 392);
  v4 = *(v0 + 560);
  v6 = *(v0 + 480);
  v5 = *(v0 + 488);
  v8 = *(v0 + 464);
  v7 = *(v0 + 472);
  v10 = *(v0 + 448);
  v9 = *(v0 + 456);
  v11 = *(v0 + 424);
  sub_10001653C((v0 + 184));
  sub_10002FFD8(v4);

  v12 = *(v0 + 8);

  return v12(v3);
}

uint64_t sub_10002CC58()
{
  sub_1000153DC(v0[64], v0[65]);
  v1 = v0[69];
  v3 = v0[60];
  v2 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[53];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10002CD1C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  sub_1000153DC(v0[64], v0[65]);

  sub_10001653C(v0 + 23);
  sub_10002FFD8(v3);
  v4 = v0[74];
  v6 = v0[60];
  v5 = v0[61];
  v8 = v0[58];
  v7 = v0[59];
  v10 = v0[56];
  v9 = v0[57];
  v11 = v0[53];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002CE2C()
{
  v1 = v0[5];
  v2 = FCNotificationsLog;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v0[6] = [objc_allocWithZone(NSDate) init];
  v3 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10002CF24;

  return sub_1000393F4();
}

uint64_t sub_10002CF24()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10002D148;
  }

  else
  {
    v3 = sub_10002D038;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002D038()
{
  v1 = *(v0 + 48);
  v2 = FCNotificationsLog;
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10005A4F0;
  v4 = v2;
  v5 = [v1 fc_millisecondTimeIntervalUntilNow];
  *(v3 + 56) = &type metadata for UInt64;
  *(v3 + 64) = &protocol witness table for UInt64;
  *(v3 + 32) = v5;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10002D148()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = FCNotificationsLog;
  static os_log_type_t.error.getter();
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v4 = swift_allocObject();
  v0[2] = 0;
  *(v4 + 16) = xmmword_10005A4F0;
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  sub_100015140(&unk_10007EC50, &qword_10005A910);
  _print_unlocked<A, B>(_:_:)();
  v5 = v0[2];
  v6 = v0[3];
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10001528C();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  os_log(_:dso:log:type:_:)();

  swift_willThrow();
  v7 = v0[1];
  v8 = v0[8];

  return v7();
}

uint64_t sub_10002D2B8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X5>, void *a6@<X8>)
{
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 24);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);

  sub_1000308E8(a1, v13, v14, v12, v10, v11, v7, v8, v9);
  v16 = v15;

  *a6 = v16;
  return result;
}

void sub_10002D388(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a1;
  v35 = sub_100015140(&qword_10007EE18, &qword_10005AD98);
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v35);
  v33 = &v32 - v7;
  v8 = *(a2 + 16);
  sub_100015140(&qword_10007EE20, &unk_10005ADA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10005ACE0;
  *(v9 + 32) = a3;
  v10 = objc_allocWithZone(FCNotificationPayloadOperation);
  sub_100025E70(0, &qword_10007EE28, NTPBNotificationItem_ptr);
  v11 = a3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v10 initWithContext:v8 notificationItems:isa];

  v14 = FCNotificationsLog;
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10005A9A0;
  v16 = v14;
  v17 = [v11 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(v15 + 56) = &type metadata for String;
  v21 = sub_10001528C();
  *(v15 + 64) = v21;
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  v22 = [v13 shortOperationDescription];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v21;
    *(v15 + 72) = v24;
    *(v15 + 80) = v26;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v27 = v33;
    v28 = v35;
    (*(v5 + 16))(v33, v34, v35);
    v29 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v30 = swift_allocObject();
    (*(v5 + 32))(v30 + v29, v27, v28);
    aBlock[4] = sub_10002FFF0;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002D7F0;
    aBlock[3] = &unk_100073200;
    v31 = _Block_copy(aBlock);

    [v13 setCompletionHandler:v31];
    _Block_release(v31);
    [v13 start];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10002D704(unint64_t result, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100015140(&qword_10007EE18, &qword_10005AD98);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!result)
  {
    goto LABEL_10;
  }

  v2 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v5 = result & 0xFFFFFFFFFFFFFF8;
    v6 = result;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v5;
    result = v6;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    sub_100015140(&qword_10007EE18, &qword_10005AD98);
    return CheckedContinuation.resume(returning:)();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*(v2 + 16))
  {
    v3 = *(result + 32);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D7F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100025E70(0, &qword_10007EE30, FCNotificationPayload_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

void *sub_10002D894()
{
  v1 = *(v0 + 72);
  v2 = [v1 rankedAllSubscribedTagIDs];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_100030094(v3);

  v5 = [v1 autoFavoriteTagIDs];
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [v1 mutedTagIDs];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v6 + 16) <= v4[2] >> 3)
  {

    sub_10002F1AC(v6);

    return v4;
  }

  else
  {

    v8 = sub_10002F2D8(v6, v4);

    return v8;
  }
}

uint64_t sub_10002D9E0()
{
  v0 = NewsCoreUserDefaults();
  v1 = FCShowStoriesOnlyFromFavoritesSharedPreferenceKey;
  v2 = [v0 valueForKey:FCShowStoriesOnlyFromFavoritesSharedPreferenceKey];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100032508(v7);
    v3 = NewsCoreUserDefaults();
    v4 = [v3 BOOLForKey:v1];

    if (v4)
    {
      v5 = FCNotificationsLog;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      return 1;
    }
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    sub_100032508(v7);
  }

  return 0;
}

uint64_t sub_10002DAF8(uint64_t a1, uint64_t a2, uint64_t a3)
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

BOOL sub_10002DBF0(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = static Hasher._hash(seed:bytes:count:)();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 4 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_10002DC9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_10001653C((v0 + 32));
  v2 = *(v0 + 72);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 80, 7);
}

unint64_t sub_10002DD10()
{
  result = qword_10007EDF0;
  if (!qword_10007EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EDF0);
  }

  return result;
}

unint64_t sub_10002DD64()
{
  result = qword_10007EDF8;
  if (!qword_10007EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EDF8);
  }

  return result;
}

unint64_t sub_10002DDE8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x64657269707865;
    v6 = 0xD000000000000017;
    v7 = 0x6B6E615278616DLL;
    if (a1 != 3)
    {
      v7 = 0x65726F63536E696DLL;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD00000000000001ALL;
    if (a1 != 9)
    {
      v1 = 0x6143656372756F73;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000021;
    }

    v2 = 0xD000000000000010;
    v3 = 0x627550646574756DLL;
    if (a1 != 6)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10002DF74(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10002DDE8(*a1);
  v5 = v4;
  if (v3 == sub_10002DDE8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10002DFFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10002DDE8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002E060()
{
  sub_10002DDE8(*v0);
  String.hash(into:)();
}

Swift::Int sub_10002E0B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10002DDE8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002E114@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100032A10(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10002E144@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10002DDE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002E170(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10002E840(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10002E2C0(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:bytes:count:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
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
    sub_10002E9C0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10002E3B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100015140(&qword_10007EE10, &qword_10005AD90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10002E618(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100015140(&unk_10007EE50, &unk_10005ADB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
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
      *(*(v6 + 48) + 4 * v14) = v18;
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

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10002E840(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10002E3B8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10002EAE4();
      goto LABEL_16;
    }

    sub_10002ED80(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10002E9C0(uint64_t result, unint64_t a2, char a3)
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
    sub_10002E618(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10002EC40();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10002EFB8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:bytes:count:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
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
  *(*(v12 + 48) + 4 * a2) = v4;
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

void *sub_10002EAE4()
{
  v1 = v0;
  sub_100015140(&qword_10007EE10, &qword_10005AD90);
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
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_10002EC40()
{
  v1 = v0;
  sub_100015140(&unk_10007EE50, &unk_10005ADB0);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

uint64_t sub_10002ED80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100015140(&qword_10007EE10, &qword_10005AD90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10002EFB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100015140(&unk_10007EE50, &unk_10005ADB0);
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
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
      *(*(v6 + 48) + 4 * v13) = v17;
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

uint64_t sub_10002F1AC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10002F848(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10002F2D8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_10002FBBC(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_10002F984(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_100032570();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F848(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10002EAE4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10002FDE0(v9);
  *v2 = v20;
  return v13;
}

unint64_t *sub_10002F984(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_10002FBBC(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_10002FBBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100015140(&qword_10007EE10, &qword_10005AD90);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10002FDE0(unint64_t result)
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

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

uint64_t sub_10002FFA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000398EC(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10002FFD8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10002FFF0(unint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_100015140(&qword_10007EE18, &qword_10005AD98) - 8) + 80);

  return sub_10002D704(a1, a2);
}

uint64_t sub_10003007C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100030094(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10002E170(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10003012C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

double sub_10003023C(uint64_t *a1)
{
  v4 = sub_100015140(&qword_10007EEC8, &qword_10005B150);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  v9 = a1[4];
  sub_100002288(a1, a1[3]);
  sub_100032E24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12[13] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v2 = v11;
    (*(v5 + 8))(v8, v4);
  }

  sub_10001653C(a1);
  return v2;
}

uint64_t sub_100030450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100015140(&qword_10007EE70, &qword_10005AFA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_100002288(a1, a1[3]);
  sub_100032920();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10001653C(a1);
  }

  v33 = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v12)
  {
    v13 = 86400;
  }

  else
  {
    v13 = v11;
  }

  v32 = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v15)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14;
  }

  v31 = 2;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v18;
  v26 = v17;
  v30 = 3;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v20;
  v24 = v19;
  sub_100015140(&qword_10007EE80, &qword_10005AFA8);
  v29 = 4;
  sub_100032A5C(&qword_10007EE88, sub_1000329BC);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v28)
  {
    v22 = v28;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  (*(v6 + 8))(v9, v5);
  result = sub_10001653C(a1);
  *a2 = v13;
  *(a2 + 8) = v16;
  *(a2 + 16) = v26;
  *(a2 + 24) = v27 & 1;
  *(a2 + 32) = v24;
  *(a2 + 40) = v25 & 1;
  *(a2 + 48) = v22;
  return result;
}

uint64_t sub_100030724(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x800000010005E9C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000010005E9E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6E615278616DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F63536E696DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x694C656372756F73 && a2 == 0xEC0000007374696DLL)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1000308E8(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v249 = a8;
  v263 = a7;
  v272 = a6;
  v275 = *&a5;
  v273 = a4;
  v248 = a2;
  v261 = type metadata accessor for Date();
  v11 = *(v261 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v261);
  v260 = &v248 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002D894();
  v16 = v15;
  v256 = v17;
  v18 = sub_10002D9E0();
  v20 = a1[3];
  v19 = a1[4];
  v268 = a1;
  v21 = sub_100002288(a1, v20);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  (*(v24 + 16))(&v248 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(*(*(v19 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10002377C(&v280);
  dispatch thunk of Sequence.makeIterator()();
  sub_100017518(&v280, AssociatedTypeWitness);
  dispatch thunk of IteratorProtocol.next()();
  v26 = v278;
  v277 = v14;
  v253 = v16;
  if (!v278)
  {
    v269 = 0;
    v274 = 0;
    v265 = 0;
    v254 = 0;
    v255 = 0;
    v257 = 0;
    v258 = 0;
    v266 = 0;
    v264 = 0;
    v14 = 0;
    v35 = &_swiftEmptyDictionarySingleton;
    v36 = &type metadata for String;
    goto LABEL_197;
  }

  v27 = 0;
  v264 = 0;
  v266 = 0;
  v258 = 0;
  v257 = 0;
  v255 = 0;
  v254 = 0;
  v265 = 0;
  v274 = 0;
  v269 = 0;
  v28 = v279;
  v276 = v14 + 56;
  v29 = *&a3;
  v30 = v275;
  v259 = (v11 + 8);
  *&v275 = a9 + 56;
  v31 = (v18 & 1) == 0;
  v32 = a9;
  if (v31)
  {
    v33 = 7;
  }

  else
  {
    v33 = 8;
  }

  v251 = v33;
  if (v31)
  {
    v34 = v16;
  }

  else
  {
    v34 = v14;
  }

  v252 = v34;
  v35 = &_swiftEmptyDictionarySingleton;
  v250 = xmmword_10005A4F0;
  v262 = xmmword_10005A9A0;
  v36 = &type metadata for String;
  v270 = a9;
  v267 = a3;
  while (1)
  {
    v37 = [v26 suppressIfFollowingTagIDs];
    if (v37)
    {
      v278 = 0;
      v38 = v37;
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      v14 = v278;
      if (v278)
      {
        break;
      }
    }

LABEL_39:
    if ((v273 & 1) == 0)
    {
      v14 = v268[3];
      v72 = v268[4];
      sub_100002288(v268, v14);
      v73 = *(*(v72 + 8) + 8);
      if (v27 / dispatch thunk of Collection.count.getter() > v29)
      {
        v203 = FCNotificationsLog;
        sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10005A4D0;
        *(v14 + 56) = &type metadata for Int;
        *(v14 + 64) = &protocol witness table for Int;
        *(v14 + 32) = v27;
        v204 = v268[4];
        sub_100002288(v268, v268[3]);
        v205 = *(*(v204 + 8) + 8);
        v206 = v203;
        v207 = dispatch thunk of Collection.count.getter();
        *(v14 + 96) = &type metadata for Int;
        *(v14 + 104) = &protocol witness table for Int;
        *(v14 + 72) = v207;
        v208 = swift_allocObject();
        *(v208 + 16) = v250;
        *(v208 + 56) = &type metadata for Double;
        *(v208 + 64) = &protocol witness table for Double;
        *(v208 + 32) = v267;
        v209 = String.init(format:_:)();
        v211 = v210;
        *(v14 + 136) = &type metadata for String;
        *(v14 + 144) = sub_10001528C();
        *(v14 + 112) = v209;
        *(v14 + 120) = v211;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v278 = v35;
        v41 = sub_10004080C(3u);
        v213 = *(v35 + 2);
        v214 = (v212 & 1) == 0;
        v64 = __OFADD__(v213, v214);
        v215 = v213 + v214;
        if (v64)
        {
          goto LABEL_252;
        }

        LOBYTE(v14) = v212;
        if (*(v35 + 3) < v215)
        {
          sub_100041344(v215, isUniquelyReferenced_nonNull_native);
          v41 = sub_10004080C(3u);
          if ((v14 & 1) != (v216 & 1))
          {
            goto LABEL_191;
          }

LABEL_193:
          v35 = v278;
          if (v14)
          {
            goto LABEL_195;
          }

LABEL_194:
          v14 = v41;
          sub_100041FD4(v41, 3, 0, v35);
          v41 = v14;
LABEL_195:
          while (1)
          {
            v217 = *(v35 + 7);
            v218 = *(v217 + 8 * v41);
            v64 = __OFADD__(v218, 1);
            v219 = v218 + 1;
            if (!v64)
            {
              break;
            }

LABEL_253:
            __break(1u);
LABEL_254:
            __break(1u);
LABEL_255:
            __break(1u);
LABEL_256:
            v247 = v41;
            sub_100042324();
            v41 = v247;
            v35 = v278;
            if ((v14 & 1) == 0)
            {
              goto LABEL_194;
            }
          }

          *(v217 + 8 * v41) = v219;

          v26 = 0;
          v14 = sub_100032F94;
LABEL_197:
          sub_10001653C(&v280);
          v220 = FCNotificationsLog;
          sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
          v41 = swift_allocObject();
          v221 = v41;
          v222 = 0;
          v223 = 0;
          *(v41 + 16) = xmmword_10005A9A0;
          *(v41 + 56) = &type metadata for Int;
          *(v41 + 64) = &protocol witness table for Int;
          v224 = 1 << v35[32];
          v225 = -1;
          if (v224 < 64)
          {
            v225 = ~(-1 << v224);
          }

          v226 = v225 & *(v35 + 8);
          v227 = (v224 + 63) >> 6;
          do
          {
            if (!v226)
            {
              while (1)
              {
                v228 = v222 + 1;
                if (__OFADD__(v222, 1))
                {
                  break;
                }

                if (v228 >= v227)
                {
                  goto LABEL_209;
                }

                v226 = *&v35[8 * v228 + 64];
                ++v222;
                if (v226)
                {
                  v222 = v228;
                  goto LABEL_206;
                }
              }

              __break(1u);
              goto LABEL_215;
            }

            v228 = v222;
LABEL_206:
            v229 = __clz(__rbit64(v226));
            v226 &= v226 - 1;
            v230 = *(*(v35 + 7) + ((v228 << 9) | (8 * v229)));
            v64 = __OFADD__(v223, v230);
            v223 += v230;
          }

          while (!v64);
          __break(1u);
LABEL_209:
          v231 = v220;
          v221[4] = v223;
          sub_1000324B4();
          v232 = Dictionary.description.getter();
          v233 = v36;
          v235 = v234;
          v221[12] = v233;
          v236 = sub_10001528C();
          v221[13] = v236;
          v221[9] = v232;
          v221[10] = v235;
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          if (v26)
          {
            v237 = FCNotificationsLog;
            v238 = swift_allocObject();
            *(v238 + 16) = xmmword_10005A4F0;
            v239 = v237;
            v240 = v26;
            v241 = [v240 identifier];
            if (!v241)
            {
              goto LABEL_265;
            }

            v242 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v244 = v243;

            *(v238 + 56) = &type metadata for String;
            *(v238 + 64) = v236;
            *(v238 + 32) = v242;
            *(v238 + 40) = v244;
            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();

            v245 = v240;
          }

          else
          {

            sub_100025E70(0, &unk_10007EE40, OS_os_log_ptr);
            v246 = static OS_os_log.default.getter();
            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();

            v245 = 0;
          }

          sub_10002FFD8(v269);
          sub_10002FFD8(v14);
          sub_10002FFD8(v274);
          sub_10002FFD8(v265);
          sub_10002FFD8(v254);
          sub_10002FFD8(v255);
          sub_10002FFD8(v257);
          sub_10002FFD8(v258);
          sub_10002FFD8(v266);
          sub_10002FFD8(v264);
          return;
        }

LABEL_192:
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_256;
        }

        goto LABEL_193;
      }
    }

    if ((v272 & 1) == 0 && v28 < v30)
    {
      sub_10002FFD8(v274);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v278 = v35;
      v41 = sub_10004080C(4u);
      v75 = *(v35 + 2);
      v76 = (v74 & 1) == 0;
      v64 = __OFADD__(v75, v76);
      v77 = v75 + v76;
      if (v64)
      {
        goto LABEL_216;
      }

      LOBYTE(v14) = v74;
      if (*(v35 + 3) >= v77)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_76;
        }

        v194 = v41;
        sub_100042324();
        v41 = v194;
        v35 = v278;
        if ((v14 & 1) == 0)
        {
LABEL_77:
          *&v35[8 * (v41 >> 6) + 64] |= 1 << v41;
          *(*(v35 + 6) + v41) = 4;
          *(*(v35 + 7) + 8 * v41) = 0;
          v112 = *(v35 + 2);
          v64 = __OFADD__(v112, 1);
          v113 = v112 + 1;
          if (v64)
          {
            goto LABEL_223;
          }

          *(v35 + 2) = v113;
        }
      }

      else
      {
        sub_100041344(v77, isUniquelyReferenced_nonNull_native);
        v41 = sub_10004080C(4u);
        if ((v14 & 1) != (v78 & 1))
        {
          goto LABEL_191;
        }

LABEL_76:
        v35 = v278;
        if ((v14 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      v114 = *(v35 + 7);
      v115 = *(v114 + 8 * v41);
      v64 = __OFADD__(v115, 1);
      v116 = v115 + 1;
      if (v64)
      {
        goto LABEL_217;
      }

      *(v114 + 8 * v41) = v116;

      v64 = __OFADD__(v27++, 1);
      if (v64)
      {
        goto LABEL_218;
      }

      v71 = &v289;
LABEL_143:
      *(v71 - 32) = sub_100032F94;
      goto LABEL_144;
    }

    v79 = [v26 feedItem];
    if (!v79)
    {
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    v80 = v79;
    v81 = [v79 expirationData];

    if (!v81)
    {
      goto LABEL_259;
    }

    v82 = [v81 hasGlobalExpireUtcTime];

    if (v82)
    {
      v83 = [v26 feedItem];
      if (!v83)
      {
        goto LABEL_263;
      }

      v84 = v83;
      v85 = [v83 expirationData];

      if (!v85)
      {
        goto LABEL_262;
      }

      v14 = [v85 globalExpireUtcTime];

      v86 = v260;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v88 = v87;
      v89 = v87;
      v41 = (*v259)(v86, v261);
      if ((*&v89 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_222;
      }

      if (v88 <= -9.22337204e18)
      {
        goto LABEL_224;
      }

      if (v88 >= 9.22337204e18)
      {
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
        goto LABEL_253;
      }

      if (v14 < v88)
      {
        sub_10002FFD8(v265);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v278 = v35;
        v41 = sub_10004080C(1u);
        v91 = *(v35 + 2);
        v92 = (v90 & 1) == 0;
        v64 = __OFADD__(v91, v92);
        v93 = v91 + v92;
        if (v64)
        {
          goto LABEL_229;
        }

        LOBYTE(v14) = v90;
        if (*(v35 + 3) >= v93)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_102;
          }

          v197 = v41;
          sub_100042324();
          v41 = v197;
          v35 = v278;
          if ((v14 & 1) == 0)
          {
LABEL_103:
            *&v35[8 * (v41 >> 6) + 64] |= 1 << v41;
            *(*(v35 + 6) + v41) = 1;
            *(*(v35 + 7) + 8 * v41) = 0;
            v139 = *(v35 + 2);
            v64 = __OFADD__(v139, 1);
            v140 = v139 + 1;
            if (v64)
            {
              goto LABEL_236;
            }

            *(v35 + 2) = v140;
          }
        }

        else
        {
          sub_100041344(v93, isUniquelyReferenced_nonNull_native);
          v41 = sub_10004080C(1u);
          if ((v14 & 1) != (v94 & 1))
          {
            goto LABEL_191;
          }

LABEL_102:
          v35 = v278;
          if ((v14 & 1) == 0)
          {
            goto LABEL_103;
          }
        }

        v141 = *(v35 + 7);
        v142 = *(v141 + 8 * v41);
        v64 = __OFADD__(v142, 1);
        v143 = v142 + 1;
        if (v64)
        {
          goto LABEL_230;
        }

        *(v141 + 8 * v41) = v143;

        v64 = __OFADD__(v27++, 1);
        if (v64)
        {
          goto LABEL_231;
        }

        v71 = &v286;
        goto LABEL_143;
      }
    }

    v95 = [v26 clusterID];
    if (!v95)
    {
      goto LABEL_260;
    }

    v96 = v95;
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v98;

    if (*(v32 + 16))
    {
      v99 = *(v32 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v100 = Hasher._finalize()();
      v101 = -1 << *(v32 + 32);
      v102 = v100 & ~v101;
      if ((*(*&v275 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102))
      {
        v103 = ~v101;
        while (1)
        {
          v104 = (*(v32 + 48) + 16 * v102);
          v105 = *v104 == v97 && v104[1] == v14;
          if (v105 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v102 = (v102 + 1) & v103;
          if (((*(*&v275 + ((v102 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v102) & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        sub_10002FFD8(v264);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v278 = v35;
        v41 = sub_10004080C(0);
        v130 = *(v35 + 2);
        v131 = (v129 & 1) == 0;
        v64 = __OFADD__(v130, v131);
        v132 = v130 + v131;
        if (v64)
        {
          goto LABEL_232;
        }

        LOBYTE(v14) = v129;
        if (*(v35 + 3) >= v132)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_115;
          }

          v198 = v41;
          sub_100042324();
          v41 = v198;
          v35 = v278;
          if ((v14 & 1) == 0)
          {
LABEL_116:
            *&v35[8 * (v41 >> 6) + 64] |= 1 << v41;
            *(*(v35 + 6) + v41) = 0;
            *(*(v35 + 7) + 8 * v41) = 0;
            v156 = *(v35 + 2);
            v64 = __OFADD__(v156, 1);
            v157 = v156 + 1;
            if (v64)
            {
              goto LABEL_240;
            }

            *(v35 + 2) = v157;
          }
        }

        else
        {
          sub_100041344(v132, isUniquelyReferenced_nonNull_native);
          v41 = sub_10004080C(0);
          if ((v14 & 1) != (v133 & 1))
          {
            goto LABEL_191;
          }

LABEL_115:
          v35 = v278;
          if ((v14 & 1) == 0)
          {
            goto LABEL_116;
          }
        }

        v158 = *(v35 + 7);
        v159 = *(v158 + 8 * v41);
        v64 = __OFADD__(v159, 1);
        v160 = v159 + 1;
        if (v64)
        {
          goto LABEL_233;
        }

        *(v158 + 8 * v41) = v160;

        v64 = __OFADD__(v27++, 1);
        if (v64)
        {
          goto LABEL_234;
        }

        v71 = &v285;
        goto LABEL_143;
      }
    }

LABEL_70:

    v106 = [v26 source];
    if (sub_10002DBF0(v106, v263))
    {
      sub_10002FFD8(v266);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v278 = v35;
      v41 = sub_10004080C(0xAu);
      v108 = *(v35 + 2);
      v109 = (v107 & 1) == 0;
      v64 = __OFADD__(v108, v109);
      v110 = v108 + v109;
      if (v64)
      {
        goto LABEL_226;
      }

      LOBYTE(v14) = v107;
      if (*(v35 + 3) >= v110)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_95;
        }

        v196 = v41;
        sub_100042324();
        v41 = v196;
        v35 = v278;
        if ((v14 & 1) == 0)
        {
LABEL_96:
          *&v35[8 * (v41 >> 6) + 64] |= 1 << v41;
          *(*(v35 + 6) + v41) = 10;
          *(*(v35 + 7) + 8 * v41) = 0;
          v134 = *(v35 + 2);
          v64 = __OFADD__(v134, 1);
          v135 = v134 + 1;
          if (v64)
          {
            goto LABEL_235;
          }

          *(v35 + 2) = v135;
        }
      }

      else
      {
        sub_100041344(v110, isUniquelyReferenced_nonNull_native);
        v41 = sub_10004080C(0xAu);
        if ((v14 & 1) != (v111 & 1))
        {
          goto LABEL_191;
        }

LABEL_95:
        v35 = v278;
        if ((v14 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      v136 = *(v35 + 7);
      v137 = *(v136 + 8 * v41);
      v64 = __OFADD__(v137, 1);
      v138 = v137 + 1;
      if (v64)
      {
        goto LABEL_227;
      }

      *(v136 + 8 * v41) = v138;

      v64 = __OFADD__(v27++, 1);
      if (v64)
      {
        goto LABEL_228;
      }

      v71 = &v287;
      goto LABEL_143;
    }

    v117 = [v26 feedItem];
    if (!v117)
    {
      goto LABEL_264;
    }

    v118 = v117;
    v119 = [v117 publisherID];

    if (!v119)
    {
      v144 = v27;
      v14 = FCNotificationsLog;
      static os_log_type_t.error.getter();
      sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
      v145 = swift_allocObject();
      *(v145 + 16) = v250;
      v146 = [v26 identifier];
      if (!v146)
      {
        goto LABEL_266;
      }

      v147 = v146;
      v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v149;

      *(v145 + 56) = &type metadata for String;
      *(v145 + 64) = sub_10001528C();
      *(v145 + 32) = v148;
      *(v145 + 40) = v36;
      os_log(_:dso:log:type:_:)();

      sub_10002FFD8(v258);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v278 = v35;
      v41 = sub_10004080C(5u);
      v151 = *(v35 + 2);
      v152 = (v150 & 1) == 0;
      v64 = __OFADD__(v151, v152);
      v153 = v151 + v152;
      if (v64)
      {
        goto LABEL_237;
      }

      LOBYTE(v14) = v150;
      if (*(v35 + 3) < v153)
      {
        sub_100041344(v153, isUniquelyReferenced_nonNull_native);
        v41 = sub_10004080C(5u);
        v36 = &type metadata for String;
        v32 = v270;
        if ((v14 & 1) != (v154 & 1))
        {
          goto LABEL_191;
        }

        v155 = v144;
        v35 = v278;
        if (v14)
        {
          goto LABEL_129;
        }

LABEL_127:
        *&v35[8 * (v41 >> 6) + 64] |= 1 << v41;
        *(*(v35 + 6) + v41) = 5;
        *(*(v35 + 7) + 8 * v41) = 0;
        v166 = *(v35 + 2);
        v64 = __OFADD__(v166, 1);
        v167 = v166 + 1;
        if (v64)
        {
          goto LABEL_244;
        }

        *(v35 + 2) = v167;
        goto LABEL_129;
      }

      v36 = &type metadata for String;
      v155 = v144;
      v32 = v270;
      if (isUniquelyReferenced_nonNull_native)
      {
        v35 = v278;
        if ((v150 & 1) == 0)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v199 = v41;
        sub_100042324();
        v41 = v199;
        v35 = v278;
        if ((v14 & 1) == 0)
        {
          goto LABEL_127;
        }
      }

LABEL_129:
      v168 = *(v35 + 7);
      v169 = *(v168 + 8 * v41);
      v64 = __OFADD__(v169, 1);
      v170 = v169 + 1;
      if (v64)
      {
        goto LABEL_238;
      }

      *(v168 + 8 * v41) = v170;

      v64 = __OFADD__(v155, 1);
      v27 = v155 + 1;
      if (v64)
      {
        goto LABEL_239;
      }

      v71 = &v282;
      goto LABEL_143;
    }

    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v121;

    v122 = v252;

    v123 = sub_10002DAF8(v120, v14, v122);

    if ((v123 & 1) == 0)
    {

      sub_10002FFD8(v257);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v278 = v35;
      v41 = sub_10004080C(v251);
      v162 = *(v35 + 2);
      v163 = (v161 & 1) == 0;
      v64 = __OFADD__(v162, v163);
      v164 = v162 + v163;
      if (v64)
      {
        goto LABEL_241;
      }

      LOBYTE(v14) = v161;
      if (*(v35 + 3) >= v164)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_137;
        }

        v200 = v41;
        sub_100042324();
        v41 = v200;
        v35 = v278;
        if ((v14 & 1) == 0)
        {
LABEL_138:
          *&v35[8 * (v41 >> 6) + 64] |= 1 << v41;
          *(*(v35 + 6) + v41) = v251;
          *(*(v35 + 7) + 8 * v41) = 0;
          v174 = *(v35 + 2);
          v64 = __OFADD__(v174, 1);
          v175 = v174 + 1;
          if (v64)
          {
            goto LABEL_246;
          }

          *(v35 + 2) = v175;
        }
      }

      else
      {
        sub_100041344(v164, isUniquelyReferenced_nonNull_native);
        v41 = sub_10004080C(v251);
        if ((v14 & 1) != (v165 & 1))
        {
          goto LABEL_191;
        }

LABEL_137:
        v35 = v278;
        if ((v14 & 1) == 0)
        {
          goto LABEL_138;
        }
      }

      v176 = *(v35 + 7);
      v177 = *(v176 + 8 * v41);
      v64 = __OFADD__(v177, 1);
      v178 = v177 + 1;
      if (v64)
      {
        goto LABEL_242;
      }

      *(v176 + 8 * v41) = v178;

      v64 = __OFADD__(v27++, 1);
      if (v64)
      {
        goto LABEL_243;
      }

      v71 = &v281;
      goto LABEL_143;
    }

    if (sub_10002DAF8(v120, v14, v256))
    {

      sub_10002FFD8(v255);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v278 = v35;
      v41 = sub_10004080C(6u);
      v125 = *(v35 + 2);
      v126 = (v124 & 1) == 0;
      v64 = __OFADD__(v125, v126);
      v127 = v125 + v126;
      if (v64)
      {
        goto LABEL_245;
      }

      LOBYTE(v14) = v124;
      if (*(v35 + 3) >= v127)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_147;
        }

        v201 = v41;
        sub_100042324();
        v41 = v201;
        v35 = v278;
        if ((v14 & 1) == 0)
        {
LABEL_148:
          *&v35[8 * (v41 >> 6) + 64] |= 1 << v41;
          *(*(v35 + 6) + v41) = 6;
          *(*(v35 + 7) + 8 * v41) = 0;
          v179 = *(v35 + 2);
          v64 = __OFADD__(v179, 1);
          v180 = v179 + 1;
          if (v64)
          {
            goto LABEL_254;
          }

          *(v35 + 2) = v180;
        }
      }

      else
      {
        sub_100041344(v127, isUniquelyReferenced_nonNull_native);
        v41 = sub_10004080C(6u);
        if ((v14 & 1) != (v128 & 1))
        {
          goto LABEL_191;
        }

LABEL_147:
        v35 = v278;
        if ((v14 & 1) == 0)
        {
          goto LABEL_148;
        }
      }

      v181 = *(v35 + 7);
      v182 = *(v181 + 8 * v41);
      v64 = __OFADD__(v182, 1);
      v183 = v182 + 1;
      if (v64)
      {
        goto LABEL_247;
      }

      *(v181 + 8 * v41) = v183;

      v255 = sub_100032F94;
      v64 = __OFADD__(v27++, 1);
      if (v64)
      {
        goto LABEL_248;
      }

      goto LABEL_144;
    }

    if (*(v249 + 16))
    {
      v171 = sub_100040750(v120, v14);
      v173 = v172;

      if (v173)
      {
        if (*(*(v249 + 56) + 8 * v171) < v248)
        {
          goto LABEL_186;
        }

        goto LABEL_156;
      }
    }

    else
    {
    }

    if (v248 > 0)
    {
LABEL_186:
      v14 = 0;
      goto LABEL_197;
    }

LABEL_156:
    sub_10002FFD8(v254);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v278 = v35;
    v41 = sub_10004080C(2u);
    v185 = *(v35 + 2);
    v186 = (v184 & 1) == 0;
    v64 = __OFADD__(v185, v186);
    v187 = v185 + v186;
    if (v64)
    {
      goto LABEL_249;
    }

    LOBYTE(v14) = v184;
    if (*(v35 + 3) >= v187)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v202 = v41;
        sub_100042324();
        v41 = v202;
        v35 = v278;
        if (v14)
        {
          goto LABEL_164;
        }

        goto LABEL_162;
      }
    }

    else
    {
      sub_100041344(v187, isUniquelyReferenced_nonNull_native);
      v41 = sub_10004080C(2u);
      if ((v14 & 1) != (v188 & 1))
      {
LABEL_191:
        v41 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_192;
      }
    }

    v35 = v278;
    if (v14)
    {
      goto LABEL_164;
    }

LABEL_162:
    *&v35[8 * (v41 >> 6) + 64] |= 1 << v41;
    *(*(v35 + 6) + v41) = 2;
    *(*(v35 + 7) + 8 * v41) = 0;
    v189 = *(v35 + 2);
    v64 = __OFADD__(v189, 1);
    v190 = v189 + 1;
    if (v64)
    {
      goto LABEL_255;
    }

    *(v35 + 2) = v190;
LABEL_164:
    v191 = *(v35 + 7);
    v192 = *(v191 + 8 * v41);
    v64 = __OFADD__(v192, 1);
    v193 = v192 + 1;
    if (v64)
    {
      goto LABEL_250;
    }

    *(v191 + 8 * v41) = v193;

    v254 = sub_100032F94;
    v64 = __OFADD__(v27++, 1);
    if (v64)
    {
      goto LABEL_251;
    }

LABEL_144:
    LOBYTE(v14) = AssociatedTypeWitness;
    sub_100017518(&v280, AssociatedTypeWitness);
    dispatch thunk of IteratorProtocol.next()();
    v26 = v278;
    v28 = v279;
    if (!v278)
    {
      goto LABEL_186;
    }
  }

  v271 = v27;
  v39 = *(v278 + 2);
  if (!v39)
  {
LABEL_38:

    v27 = v271;
    goto LABEL_39;
  }

  v36 = v278 + 32;
  v40 = v277;
  v41 = swift_bridgeObjectRetain_n();
  v42 = 0;
  while (1)
  {
    if (v42 >= *(v14 + 16))
    {
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
      goto LABEL_219;
    }

    if (!*(v40 + 16))
    {
      goto LABEL_14;
    }

    v43 = &v36[16 * v42];
    v44 = *v43;
    v45 = *(v43 + 1);
    v46 = *(v40 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v47 = Hasher._finalize()();
    v48 = -1 << *(v40 + 32);
    v49 = v47 & ~v48;
    if ((*(v276 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
    {
      break;
    }

LABEL_13:

    v40 = v277;
    v32 = v270;
LABEL_14:
    if (++v42 == v39)
    {

      LOBYTE(v14) = v40;
      v36 = &type metadata for String;
      goto LABEL_38;
    }
  }

  v50 = ~v48;
  while (1)
  {
    v51 = (*(v277 + 48) + 16 * v49);
    v52 = *v51 == v44 && v51[1] == v45;
    if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v49 = (v49 + 1) & v50;
    if (((*(v276 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  swift_bridgeObjectRelease_n();
  v53 = FCNotificationsLog;
  sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
  v54 = swift_allocObject();
  *(v54 + 16) = v262;
  *(v54 + 56) = &type metadata for String;
  v55 = sub_10001528C();
  *(v54 + 64) = v55;
  *(v54 + 32) = v44;
  *(v54 + 40) = v45;

  v56 = v53;
  v57 = [v26 identifier];
  if (v57)
  {
    v36 = v57;

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    *(v54 + 96) = &type metadata for String;
    *(v54 + 104) = v55;
    *(v54 + 72) = v14;
    *(v54 + 80) = v59;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_10002FFD8(v269);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v278 = v35;
    v41 = sub_10004080C(9u);
    v62 = *(v35 + 2);
    v63 = (v61 & 1) == 0;
    v64 = __OFADD__(v62, v63);
    v65 = v62 + v63;
    if (!v64)
    {
      LOBYTE(v14) = v61;
      v36 = &type metadata for String;
      if (*(v35 + 3) >= v65)
      {
        v67 = v271;
        v32 = v270;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_32;
        }

        v195 = v41;
        sub_100042324();
        v41 = v195;
        v35 = v278;
        if ((v14 & 1) == 0)
        {
LABEL_33:
          v14 = v41;
          sub_100041FD4(v41, 9, 0, v35);
          v41 = v14;
        }
      }

      else
      {
        sub_100041344(v65, isUniquelyReferenced_nonNull_native);
        v41 = sub_10004080C(9u);
        v67 = v271;
        v32 = v270;
        if ((v14 & 1) != (v66 & 1))
        {
          goto LABEL_191;
        }

LABEL_32:
        v35 = v278;
        if ((v14 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v68 = *(v35 + 7);
      v69 = *(v68 + 8 * v41);
      v64 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (!v64)
      {
        *(v68 + 8 * v41) = v70;

        v64 = __OFADD__(v67, 1);
        v27 = v67 + 1;
        if (!v64)
        {
          v71 = &v288;
          goto LABEL_143;
        }

LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
        goto LABEL_225;
      }

LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
}

unint64_t sub_1000324B4()
{
  result = qword_10007EE38;
  if (!qword_10007EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EE38);
  }

  return result;
}

uint64_t sub_100032508(uint64_t a1)
{
  v2 = sub_100015140(&qword_10007EC90, &qword_10005ACB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DelayedNotificationVendor.FilterReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DelayedNotificationVendor.FilterReason(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_1000326C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000326E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003272C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for DelayedNotificationVendor.Errors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DelayedNotificationVendor.Errors(_WORD *result, int a2, int a3)
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

unint64_t sub_100032874()
{
  result = qword_10007EE60;
  if (!qword_10007EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EE60);
  }

  return result;
}

unint64_t sub_1000328CC()
{
  result = qword_10007EE68;
  if (!qword_10007EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EE68);
  }

  return result;
}

unint64_t sub_100032920()
{
  result = qword_10007EE78;
  if (!qword_10007EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EE78);
  }

  return result;
}

uint64_t sub_100032974(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000329BC()
{
  result = qword_10007EE90;
  if (!qword_10007EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EE90);
  }

  return result;
}

unint64_t sub_100032A10(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100072798, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100032A5C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100032974(&qword_10007EE80, &qword_10005AFA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100032AD4()
{
  result = qword_10007EEA8;
  if (!qword_10007EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DelayedNotificationVendor.Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedNotificationVendor.Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100032C78(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100032C84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100032CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100032D20()
{
  result = qword_10007EEB0;
  if (!qword_10007EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEB0);
  }

  return result;
}

unint64_t sub_100032D78()
{
  result = qword_10007EEB8;
  if (!qword_10007EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEB8);
  }

  return result;
}

unint64_t sub_100032DD0()
{
  result = qword_10007EEC0;
  if (!qword_10007EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEC0);
  }

  return result;
}

unint64_t sub_100032E24()
{
  result = qword_10007EED0;
  if (!qword_10007EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EED0);
  }

  return result;
}

unint64_t sub_100032E8C()
{
  result = qword_10007EEE0;
  if (!qword_10007EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEE0);
  }

  return result;
}

unint64_t sub_100032EE4()
{
  result = qword_10007EEE8;
  if (!qword_10007EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEE8);
  }

  return result;
}

unint64_t sub_100032F3C()
{
  result = qword_10007EEF0;
  if (!qword_10007EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EEF0);
  }

  return result;
}

uint64_t sub_100032FAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DropboxMyArticlesRequestFactory();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_1000346C0(&qword_10007EFB8, type metadata accessor for DropboxMyArticlesRequestFactory);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_100033030@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ProxyScoringServiceConnection();
  v3 = static ProxyScoringServiceConnection.shared.getter();
  a1[3] = v2;
  result = sub_1000346C0(&qword_10007EFB0, &type metadata accessor for ProxyScoringServiceConnection);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1000330AC()
{
  sub_100015140(&qword_10007EFA8, &qword_10005B300);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100033118@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100002288(a1, a1[3]);
  type metadata accessor for DropboxReadingHistory();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    sub_100002288(a1, a1[3]);
    type metadata accessor for DropboxSubscriptionList();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v8 = result;
      v9 = type metadata accessor for UserContextProvider();
      result = swift_allocObject();
      *(result + 16) = v6;
      *(result + 24) = v8;
      a2[3] = v9;
      a2[4] = &off_100072DF8;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ProxyScoringServiceConnection.scoreItems(in:configurationSet:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100023584;

  return sub_100033290(a1, a2, 0);
}

uint64_t sub_100033290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for CocoaError.Code();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10003340C, 0, 0);
}

uint64_t sub_10003340C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *(v4 + 16) = sub_100034688;
  *(v4 + 24) = v3;
  v5 = async function pointer to ProxyScoringServiceConnection.withAsyncScoringService<A>(_:)[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_100033508;
  v7 = v0[5];

  return ProxyScoringServiceConnection.withAsyncScoringService<A>(_:)();
}

uint64_t sub_100033508()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1000336A8;
  }

  else
  {
    v6 = *(v2 + 120);
    v5 = *(v2 + 128);

    v4 = sub_10003362C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003362C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000336A8()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[4];

  swift_errorRetain();
  static CocoaError.xpcConnectionInterrupted.getter();
  sub_1000346C0(&qword_10007EFE0, &type metadata accessor for CocoaError.Code);
  v8 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v5 + 8))(v4, v6);
  v9 = v0[18];
  if ((v8 & 1) != 0 && v7 < 1)
  {
    v10 = v0[11];
    v11 = v0[4];
    v12 = v0[18];

    v13 = exp2(v11);
    if (v13 <= 5.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 5.0;
    }

    static Logger.scoringService.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134349056;
      *(v17 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "ProxyScoringServiceConnection lost XPC connection, will retry after %{public}f seconds", v17, 0xCu);
    }

    v19 = v0[10];
    v18 = v0[11];
    v21 = v0[8];
    v20 = v0[9];

    (*(v19 + 8))(v18, v20);
    v22 = static Duration.seconds(_:)();
    v24 = v23;
    static Clock<>.continuous.getter();
    v25 = swift_task_alloc();
    v0[19] = v25;
    *v25 = v0;
    v25[1] = sub_100033970;
    v26 = v0[8];

    return sub_100033FAC(v22, v24, 0, 0, 1);
  }

  else
  {
    v28 = v0[14];
    v29 = v0[11];
    v30 = v0[8];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_100033970()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {
    (*(v3[7] + 8))(v3[8], v3[6]);

    return _swift_task_switch(sub_100033C78, 0, 0);
  }

  else
  {
    v4 = v3[4];
    (*(v3[7] + 8))(v3[8], v3[6]);
    v5 = swift_task_alloc();
    v3[21] = v5;
    *v5 = v3;
    v5[1] = sub_100033B28;
    v6 = v3[5];
    v7 = v3[3];
    v8 = v3[2];

    return sub_100033290(v8, v7, v4 + 1);
  }
}

uint64_t sub_100033B28()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v8 = *v0;

  v3 = v1[14];
  v4 = v1[11];
  v5 = v1[8];

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100033C78()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

void sub_100033CFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = FeedItemDatabase.toReference()();
  if (!v5)
  {
    v11 = v10;
    type metadata accessor for NDScoringServiceEnvironment();
    v12 = static NDScoringServiceEnvironment.current.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    v15[4] = sub_100034744;
    v15[5] = v13;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100039860;
    v15[3] = &unk_1000735D0;
    v14 = _Block_copy(v15);

    [a1 scoreItemsIn:v11 environment:v12 configurationSet:a5 completion:v14];
    _Block_release(v14);
  }
}

uint64_t sub_100033E34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(uint64_t a1), uint64_t))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  a4(a1, sub_100034708, v8);
}

uint64_t sub_100033EDC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100017F58;

  return sub_100033290(a1, a2, 0);
}

uint64_t sub_100033FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000340AC, 0, 0);
}

uint64_t sub_1000340AC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1000346C0(&qword_10007EFE8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000346C0(&unk_10007EFF0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10003423C;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10003423C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1000343F8, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1000343F8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_100034464()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  type metadata accessor for FeedItemPoolManager();
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v1 + 104))(v4, enum case for Scope.singleton(_:), v0);
  Definition.inScope(_:)();

  (*(v1 + 8))(v4, v0);
  ProxyContainer.public.getter();
  sub_100015140(&qword_10007EF98, &qword_10005B2F0);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100015140(&qword_10007EFA0, &qword_10005B2F8);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

uint64_t sub_1000346C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100034708(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = 0;
  return v2(&v5, a1);
}

uint64_t sub_100034744()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10003476C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_100034784()
{
  v0 = NewsCoreUserDefaults();
  v1 = FCDelayedNotificationRandomNormalizedValueKey;
  v2 = [v0 valueForKey:FCDelayedNotificationRandomNormalizedValueKey];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100032508(v9);
    v3 = NewsCoreUserDefaults();
    [v3 doubleForKey:v1];
    v5 = v4;
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v6 = sub_100032508(v9);
    sub_100015430(v6, 0.0, 1.0);
    v5 = v7;
    v3 = NewsCoreUserDefaults();
    [v3 setDouble:v1 forKey:v5];
  }

  return v5;
}

void *sub_100034888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014B28();
  if (v6)
  {
    return 0;
  }

  v8 = result;
  v9 = result + 7;
  if (__OFADD__(result, 7))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v9 < result)
  {
    goto LABEL_49;
  }

  v10 = v5;
  v7 = 0;
  v11 = 1;
  v12 = result;
  while (1)
  {
    if (*(a3 + 16))
    {
      v13 = v12 <= 7 ? v12 : v12 - 7;
      v14 = sub_10004070C(v13);
      if (v15)
      {
        break;
      }
    }

    result = &_swiftEmptyArrayStorage;
    v17 = *(&_swiftEmptyArrayStorage + 2);
    if (v17)
    {
      goto LABEL_14;
    }

LABEL_21:

    if (v12 == v9)
    {
      return v7;
    }

    if (__OFADD__(v12++, 1))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  v16 = *(*(a3 + 56) + 8 * v14);

  v17 = result[2];
  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_14:
  v18 = v9;
  v19 = 86400 * (v12 - v8);
  v20 = result[4];
  if (v20 >= v10)
  {
    v26 = 0;
    goto LABEL_35;
  }

  v21 = result + 5;
  if (v12 > v8)
  {
    goto LABEL_36;
  }

  if ((v11 & 1) == 0)
  {
    v23 = 1;
LABEL_29:
    v24 = &result[2 * v23 + 4];
    while (v17 != v23)
    {
      if (v23 >= v17)
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (__OFADD__(v23, 1))
      {
        goto LABEL_44;
      }

      v25 = *v24;
      v24 += 2;
      v20 = v25;
      ++v23;
      if (v25 >= v10)
      {
        v26 = v23 - 1;
        goto LABEL_35;
      }
    }

LABEL_20:
    v11 = 0;
    v9 = v18;
    goto LABEL_21;
  }

  v7 = v20 + v19;
  if (__OFADD__(v20, v19))
  {
    goto LABEL_46;
  }

  if (__OFADD__(*v21, v19))
  {
    goto LABEL_47;
  }

  if (v17 == 1)
  {
    goto LABEL_20;
  }

  v20 = result[6];
  if (v20 < v10)
  {
    if (v12 > v8)
    {
      goto LABEL_36;
    }

    v23 = 2;
    goto LABEL_29;
  }

  v26 = 1;
LABEL_35:
  v21 = &result[2 * v26 + 5];
LABEL_36:
  v27 = *v21;

  if (__OFSUB__(v12, v8))
  {
    goto LABEL_50;
  }

  if ((v12 - v8 - 0x611722833945) < 0xFFFF3DD1BAF98D77)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v7 = v20 + v19;
  if (__OFADD__(v20, v19))
  {
    goto LABEL_52;
  }

  if (!__OFADD__(v27, v19))
  {
    return v7;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_100034AAC()
{
  v1 = 0x7961646E6F6DLL;
  v2 = *v0;
  v3 = 0x796164697266;
  if (v2 != 5)
  {
    v3 = 0x7961647275746173;
  }

  v4 = 0x616473656E646577;
  if (v2 != 3)
  {
    v4 = 0x7961647372756874;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0x79616473657574;
  }

  if (!*v0)
  {
    v1 = 0x7961646E7573;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100034B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000373E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100034BAC(uint64_t a1)
{
  v2 = sub_100039044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034BE8(uint64_t a1)
{
  v2 = sub_100039044();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100034C24(uint64_t result)
{
  v1 = 0;
  v21 = 30067;
  v22 = 0xE200000000000000;
  v23[0] = result & 1;
  v24 = 109;
  v25 = 0xE100000000000000;
  v26 = BYTE1(result) & 1;
  v27 = 30068;
  v28 = 0xE200000000000000;
  v29 = BYTE2(result) & 1;
  v30 = 119;
  v31 = 0xE100000000000000;
  v32 = BYTE3(result) & 1;
  v33 = 26740;
  v34 = 0xE200000000000000;
  v35 = BYTE4(result) & 1;
  v36 = 102;
  v37 = 0xE100000000000000;
  v38 = BYTE5(result) & 1;
  v39 = 24947;
  v40 = 0xE200000000000000;
  v41 = BYTE6(result) & 1;
LABEL_2:
  if (v1 <= 7)
  {
    v2 = 7;
  }

  else
  {
    v2 = v1;
  }

  v3 = v2 + 1;
  v4 = 24 * v1;
  while (v1 != 7)
  {
    if (v3 == ++v1)
    {
      __break(1u);
      return result;
    }

    v5 = v4 + 24;
    v6 = v23[v4];
    v4 += 24;
    if (v6)
    {
      v8 = *&v20[v5 + 8];
      v7 = *&v20[v5 + 16];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000429B8(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        result = sub_1000429B8((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[3 * v10];
      v11[4] = v8;
      v11[5] = v7;
      *(v11 + 48) = 1;
      goto LABEL_2;
    }
  }

  sub_100015140(&unk_10007F360, &unk_10005BDE0);
  swift_arrayDestroy();
  v12 = _swiftEmptyArrayStorage[2];
  if (v12)
  {
    sub_100042998(0, v12, 0);
    v13 = &_swiftEmptyArrayStorage[5];
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v16 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];

      if (v16 >= v17 >> 1)
      {
        sub_100042998((v17 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v16];
      v18[4] = v15;
      v18[5] = v14;
      v13 += 3;
      --v12;
    }

    while (v12);
  }

  v19 = Array.description.getter();

  return v19;
}

int8x8_t sub_100034EB4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100037628(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    v6 = vdupq_n_s64(v4);
    *v6.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_10005B330), vshlq_u64(v6, xmmword_10005B320))), 0x1000100010001);
    result = vuzp1_s8(*v6.i8, *v6.i8);
    *(a2 + 1) = result.i32[0];
    *(a2 + 5) = BYTE5(v4) & 1;
    *(a2 + 6) = BYTE6(v4) & 1;
  }

  return result;
}

uint64_t sub_100034F28()
{
  v1 = 0x1000000000000;
  if (!v0[6])
  {
    v1 = 0;
  }

  v2 = 0x10000000000;
  if (!v0[5])
  {
    v2 = 0;
  }

  v3 = &_mh_execute_header;
  if (!v0[4])
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if (!v0[3])
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (!v0[2])
  {
    v5 = 0;
  }

  v6 = 256;
  if (!v0[1])
  {
    v6 = 0;
  }

  return sub_100034C24(v6 | *v0 | v5 | v4 | v3 | v2 | v1);
}

BOOL sub_100034FA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = v9 == 0;
  v18 = 0x1000000000000;
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0x1000000000000;
  }

  v17 = v8 == 0;
  v20 = 0x10000000000;
  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0x10000000000;
  }

  v17 = v7 == 0;
  v22 = &_mh_execute_header;
  if (v17)
  {
    v23 = 0;
  }

  else
  {
    v23 = &_mh_execute_header;
  }

  v17 = v6 == 0;
  v24 = 0x1000000;
  if (v17)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0x1000000;
  }

  v17 = v5 == 0;
  v26 = 0x10000;
  if (v17)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0x10000;
  }

  v17 = v4 == 0;
  v28 = 256;
  if (v17)
  {
    v29 = 0;
  }

  else
  {
    v29 = 256;
  }

  v30 = v29 | v3 | v27 | v25;
  v31 = v23 | v21 | v19;
  if (!v16)
  {
    v18 = 0;
  }

  if (!v15)
  {
    v20 = 0;
  }

  if (!v14)
  {
    v22 = 0;
  }

  if (!v13)
  {
    v24 = 0;
  }

  if (!v12)
  {
    v26 = 0;
  }

  if (!v11)
  {
    v28 = 0;
  }

  return sub_100037370(v30 | v31, v28 | v10 | v26 | v24 | v22 | v20 | v18);
}

uint64_t sub_1000350A0()
{
  v1 = 0x7472617473;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6557664F73796164;
  }
}

uint64_t sub_1000350F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100037BB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003511C(uint64_t a1)
{
  v2 = sub_100038D60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100035158(uint64_t a1)
{
  v2 = sub_100038D60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100035194(uint64_t a1)
{
  _StringGuts.grow(_:)(16);
  v2 = sub_100034C24(a1 & 0x1010101010101);

  v3._countAndFlagsBits = 2629690;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x28203E2D2029;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v2;
}

int8x8_t sub_1000352B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100037CD4(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    v8 = vdupq_n_s64(v4);
    *v8.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v8, xmmword_10005B330), vshlq_u64(v8, xmmword_10005B320))), 0x1000100010001);
    result = vuzp1_s8(*v8.i8, *v8.i8);
    *(a2 + 1) = result.i32[0];
    *(a2 + 5) = BYTE5(v4) & 1;
    *(a2 + 6) = BYTE6(v4) & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100035328()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = 256;
  if ((*(v0 + 1) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFFFELL | *v0 & 1;
  v5 = 0x10000;
  if ((*(v0 + 2) & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if ((*(v0 + 3) & 1) == 0)
  {
    v6 = 0;
  }

  v7 = v4 | v5 | v6;
  v8 = &_mh_execute_header;
  if ((*(v0 + 4) & 1) == 0)
  {
    v8 = 0;
  }

  v9 = 0x10000000000;
  if ((*(v0 + 5) & 1) == 0)
  {
    v9 = 0;
  }

  v10 = 0x1000000000000;
  if ((*(v0 + 6) & 1) == 0)
  {
    v10 = 0;
  }

  return sub_100035194(v7 | v8 | v9 | v10);
}

uint64_t sub_1000353AC(uint64_t a1)
{
  v20 = 1;
  v21 = &_swiftEmptyDictionarySingleton;
  sub_10003562C(&v21, &v20, a1);
  v20 = 2;
  sub_10003562C(&v21, &v20, a1);
  v20 = 3;
  sub_10003562C(&v21, &v20, a1);
  v20 = 4;
  sub_10003562C(&v21, &v20, a1);
  v20 = 5;
  sub_10003562C(&v21, &v20, a1);
  v20 = 6;
  sub_10003562C(&v21, &v20, a1);
  v20 = 7;
  sub_10003562C(&v21, &v20, a1);
  v2 = v21;
  sub_100015140(&qword_10007F350, &qword_10005B420);
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  v5 = 0;
  v6 = 1 << v2[32];
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 8);
  v9 = (v6 + 63) >> 6;
  v19 = v3 + 64;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v5 << 6);
      v14 = *(*(v2 + 6) + 8 * v13);
      v21 = *(*(v2 + 7) + 8 * v13);
      swift_bridgeObjectRetain_n();
      sub_100036930(&v21);

      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v4[6] + 8 * v13) = v14;
      *(v4[7] + 8 * v13) = v21;
      v15 = v4[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        break;
      }

      v4[2] = v17;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        return v4;
      }

      v12 = *&v2[8 * v5 + 64];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10003562C(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 16);
  v102 = *a2;
  if (v4)
  {
    v5 = 7 * (v3 / 7);
    v6 = v5 + v3 % 7;
    v7 = __OFADD__(v5, v3 % 7);
    v100 = v7;
    v8 = (a3 + 39);
    v93 = v6;
    do
    {
      v11 = *(v8 - 7);
      v12 = *(v8 - 6);
      v13 = *(v8 - 5);
      v14 = *(v8 - 4);
      v15 = *(v8 - 3);
      v104 = *v8;
      v105 = *(v8 + 16);
      if (v3 < 1)
      {
        goto LABEL_8;
      }

      if (v100)
      {
        goto LABEL_93;
      }

      if (v6 <= 3)
      {
        switch(v6)
        {
          case 1:
            if ((*(v8 - 7) & 1) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_32;
          case 2:
            if ((*(v8 - 6) & 1) == 0)
            {
              goto LABEL_8;
            }

LABEL_32:
            v97 = *(v8 - 1);
            v98 = *(v8 - 2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000429D8(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v17 = _swiftEmptyArrayStorage[2];
            v16 = _swiftEmptyArrayStorage[3];
            v18 = v98;
            v19 = v97;
            if (v17 >= v16 >> 1)
            {
              sub_1000429D8((v16 > 1), v17 + 1, 1);
              v19 = v97;
              v18 = v98;
            }

            _swiftEmptyArrayStorage[2] = v17 + 1;
            v20 = &_swiftEmptyArrayStorage[3 * v17];
            *(v20 + 32) = v11;
            *(v20 + 33) = v12;
            *(v20 + 34) = v13;
            *(v20 + 35) = v14;
            *(v20 + 36) = v15;
            *(v20 + 37) = v18;
            *(v20 + 38) = v19;
            *(v20 + 55) = v105;
            *(v20 + 39) = v104;
            v3 = v102;
            goto LABEL_7;
          case 3:
            if ((*(v8 - 5) & 1) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_32;
        }
      }

      else
      {
        if (v6 <= 5)
        {
          if (v6 == 4)
          {
            if ((*(v8 - 4) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          else if ((*(v8 - 3) & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_32;
        }

        if (v6 == 6)
        {
          if ((*(v8 - 2) & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_32;
        }

        if (v6 == 7)
        {
          if ((*(v8 - 1) & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_32;
        }
      }

      v9 = FCNotificationsLog;
      static os_log_type_t.error.getter();
      sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_10005A4F0;
      *(v10 + 56) = &type metadata for Int;
      *(v10 + 64) = &protocol witness table for Int;
      *(v10 + 32) = v93;
      os_log(_:dso:log:type:_:)();

LABEL_7:
      v6 = v93;
LABEL_8:
      v8 = (v8 + 24);
      --v4;
    }

    while (v4);
  }

  v99 = _swiftEmptyArrayStorage[2];
  v21 = 0;
  v22 = 0;
  if (v99)
  {
    v101 = 0;
    v23 = v3;
    v24 = 0;
    v25 = v23 + 1;
    v26 = __OFADD__(v23, 1);
    v92 = v26;
    if (v23 == 7)
    {
      v25 = 1;
    }

    v96 = v25;
    v27 = &_swiftEmptyArrayStorage[6];
    while (v24 < _swiftEmptyArrayStorage[2])
    {
      v31 = *(v27 - 1);
      v30 = *v27;
      if (v31 >= *v27)
      {
        v95 = *v27;
        v44 = v21;
        sub_10002FFD8(v22);
        v45 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = *a1;
        v49 = sub_10004070C(v102);
        v50 = v47[2];
        v51 = (v48 & 1) == 0;
        v52 = v50 + v51;
        if (__OFADD__(v50, v51))
        {
          goto LABEL_94;
        }

        v53 = v48;
        if (v47[3] >= v52)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100042470();
          }
        }

        else
        {
          sub_10004177C(v52, isUniquelyReferenced_nonNull_native);
          v54 = sub_10004070C(v102);
          if ((v53 & 1) != (v55 & 1))
          {
            goto LABEL_101;
          }

          v49 = v54;
        }

        *a1 = v47;
        if ((v53 & 1) == 0)
        {
          v47[(v49 >> 6) + 8] |= 1 << v49;
          *(v47[6] + 8 * v49) = v102;
          *(v47[7] + 8 * v49) = _swiftEmptyArrayStorage;
          v65 = v47[2];
          v57 = __OFADD__(v65, 1);
          v66 = v65 + 1;
          if (v57)
          {
            goto LABEL_98;
          }

          v47[2] = v66;
        }

        v67 = v47[7];
        v68 = *(v67 + 8 * v49);
        v69 = swift_isUniquelyReferenced_nonNull_native();
        *(v67 + 8 * v49) = v68;
        if ((v69 & 1) == 0)
        {
          v68 = sub_100043D48(0, *(v68 + 2) + 1, 1, v68);
          *(v67 + 8 * v49) = v68;
        }

        v71 = *(v68 + 2);
        v70 = *(v68 + 3);
        if (v71 >= v70 >> 1)
        {
          v68 = sub_100043D48((v70 > 1), v71 + 1, 1, v68);
          *(v67 + 8 * v49) = v68;
        }

        *(v68 + 2) = v71 + 1;
        v72 = &v68[16 * v71];
        *(v72 + 4) = v31;
        *(v72 + 5) = 86400;
        if (v92)
        {
          goto LABEL_99;
        }

        sub_10002FFD8(v101);
        v73 = *a1;
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v75 = *a1;
        v77 = sub_10004070C(v96);
        v78 = v75[2];
        v79 = (v76 & 1) == 0;
        v80 = v78 + v79;
        if (__OFADD__(v78, v79))
        {
          goto LABEL_96;
        }

        v81 = v76;
        if (v75[3] >= v80)
        {
          if ((v74 & 1) == 0)
          {
            sub_100042470();
          }
        }

        else
        {
          sub_10004177C(v80, v74);
          v82 = sub_10004070C(v96);
          if ((v81 & 1) != (v83 & 1))
          {
            goto LABEL_101;
          }

          v77 = v82;
        }

        *a1 = v75;
        if ((v81 & 1) == 0)
        {
          v75[(v77 >> 6) + 8] |= 1 << v77;
          *(v75[6] + 8 * v77) = v96;
          *(v75[7] + 8 * v77) = _swiftEmptyArrayStorage;
          v84 = v75[2];
          v57 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v57)
          {
            goto LABEL_100;
          }

          v75[2] = v85;
        }

        v86 = v75[7];
        v60 = *(v86 + 8 * v77);
        v87 = swift_isUniquelyReferenced_nonNull_native();
        *(v86 + 8 * v77) = v60;
        if ((v87 & 1) == 0)
        {
          v60 = sub_100043D48(0, *(v60 + 2) + 1, 1, v60);
          *(v86 + 8 * v77) = v60;
        }

        v63 = *(v60 + 2);
        v88 = *(v60 + 3);
        v64 = v63 + 1;
        if (v63 >= v88 >> 1)
        {
          v60 = sub_100043D48((v88 > 1), v63 + 1, 1, v60);
          v28 = 0;
          *(v86 + 8 * v77) = v60;
          v101 = sub_1000393DC;
          v22 = sub_1000393DC;
        }

        else
        {
          v22 = sub_1000393DC;
          v101 = sub_1000393DC;
          v28 = 0;
        }

        v21 = v44;
        v30 = v95;
      }

      else
      {
        v94 = *(v27 - 1);
        v32 = v22;
        sub_10002FFD8(v21);
        v33 = *a1;
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v35 = *a1;
        v37 = sub_10004070C(v102);
        v38 = v35[2];
        v39 = (v36 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_95;
        }

        v41 = v36;
        if (v35[3] >= v40)
        {
          if ((v34 & 1) == 0)
          {
            sub_100042470();
          }
        }

        else
        {
          sub_10004177C(v40, v34);
          v42 = sub_10004070C(v102);
          if ((v41 & 1) != (v43 & 1))
          {
            goto LABEL_101;
          }

          v37 = v42;
        }

        *a1 = v35;
        if ((v41 & 1) == 0)
        {
          v35[(v37 >> 6) + 8] |= 1 << v37;
          *(v35[6] + 8 * v37) = v102;
          *(v35[7] + 8 * v37) = _swiftEmptyArrayStorage;
          v56 = v35[2];
          v57 = __OFADD__(v56, 1);
          v58 = v56 + 1;
          if (v57)
          {
            goto LABEL_97;
          }

          v35[2] = v58;
        }

        v59 = v35[7];
        v60 = *(v59 + 8 * v37);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        *(v59 + 8 * v37) = v60;
        if ((v61 & 1) == 0)
        {
          v60 = sub_100043D48(0, *(v60 + 2) + 1, 1, v60);
          *(v59 + 8 * v37) = v60;
        }

        v63 = *(v60 + 2);
        v62 = *(v60 + 3);
        v64 = v63 + 1;
        v21 = sub_1000393DC;
        if (v63 >= v62 >> 1)
        {
          v60 = sub_100043D48((v62 > 1), v63 + 1, 1, v60);
          *(v59 + 8 * v37) = v60;
          v21 = sub_1000393DC;
        }

        v22 = v32;
        v28 = v94;
      }

      ++v24;
      *(v60 + 2) = v64;
      v29 = &v60[16 * v63];
      *(v29 + 4) = v28;
      *(v29 + 5) = v30;
      v27 += 3;
      if (v99 == v24)
      {
        goto LABEL_91;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v101 = 0;
LABEL_91:
    v89 = v21;
    v90 = v22;

    sub_10002FFD8(v89);
    sub_10002FFD8(v90);
    return sub_10002FFD8(v101);
  }

  return result;
}

uint64_t sub_100035EC0(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 16);
  v77 = *a2;
  if (v4)
  {
    v5 = 7 * (v3 / 7);
    v6 = v5 + v3 % 7;
    v7 = __OFADD__(v5, v3 % 7);
    v74 = v7;
    v8 = (a3 + 39);
    v68 = v6;
    do
    {
      v11 = *(v8 - 7);
      v12 = *(v8 - 6);
      v13 = *(v8 - 5);
      v14 = *(v8 - 4);
      v15 = *(v8 - 3);
      v78 = *v8;
      v79 = *(v8 + 16);
      if (v3 < 1)
      {
        goto LABEL_8;
      }

      if (v74)
      {
        goto LABEL_73;
      }

      if (v6 <= 3)
      {
        switch(v6)
        {
          case 1:
            if ((*(v8 - 7) & 1) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_32;
          case 2:
            if ((*(v8 - 6) & 1) == 0)
            {
              goto LABEL_8;
            }

LABEL_32:
            v70 = *(v8 - 1);
            v73 = *(v8 - 2);
            v69 = *(v8 - 3);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000429D8(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v17 = _swiftEmptyArrayStorage[2];
            v16 = _swiftEmptyArrayStorage[3];
            v18 = v73;
            v19 = v70;
            if (v17 >= v16 >> 1)
            {
              sub_1000429D8((v16 > 1), v17 + 1, 1);
              v19 = v70;
              v18 = v73;
            }

            _swiftEmptyArrayStorage[2] = v17 + 1;
            v20 = &_swiftEmptyArrayStorage[3 * v17];
            *(v20 + 32) = v11;
            *(v20 + 33) = v12;
            *(v20 + 34) = v13;
            *(v20 + 35) = v14;
            *(v20 + 36) = v69;
            *(v20 + 37) = v18;
            *(v20 + 38) = v19;
            *(v20 + 55) = v79;
            *(v20 + 39) = v78;
            v3 = v77;
            goto LABEL_7;
          case 3:
            if ((*(v8 - 5) & 1) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_32;
        }
      }

      else
      {
        if (v6 <= 5)
        {
          if (v6 == 4)
          {
            if ((*(v8 - 4) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          else if ((*(v8 - 3) & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_32;
        }

        if (v6 == 6)
        {
          if ((*(v8 - 2) & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_32;
        }

        if (v6 == 7)
        {
          if ((*(v8 - 1) & 1) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_32;
        }
      }

      v9 = FCNotificationsLog;
      static os_log_type_t.error.getter();
      sub_100015140(&unk_10007E5F0, &qword_10005A5C0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_10005A4F0;
      *(v10 + 56) = &type metadata for Int;
      *(v10 + 64) = &protocol witness table for Int;
      *(v10 + 32) = v68;
      os_log(_:dso:log:type:_:)();

      v3 = v77;

LABEL_7:
      v6 = v68;
LABEL_8:
      v8 = (v8 + 24);
      --v4;
    }

    while (v4);
  }

  v75 = _swiftEmptyArrayStorage[2];
  v21 = 0;
  v22 = 0;
  if (v75)
  {
    v23 = 0;
    v24 = &_swiftEmptyArrayStorage[6];
    while (v23 < _swiftEmptyArrayStorage[2])
    {
      v26 = *(v24 - 1);
      v27 = *v24;
      if (*v24 >= v26)
      {
        v72 = v21;
        sub_10002FFD8(v22);
        v41 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = *a1;
        v45 = sub_10004070C(v77);
        v46 = v43[2];
        v47 = (v44 & 1) == 0;
        v48 = v46 + v47;
        if (__OFADD__(v46, v47))
        {
          goto LABEL_75;
        }

        v49 = v44;
        if (v43[3] >= v48)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100042470();
          }
        }

        else
        {
          sub_10004177C(v48, isUniquelyReferenced_nonNull_native);
          v50 = sub_10004070C(v77);
          if ((v49 & 1) != (v51 & 1))
          {
            goto LABEL_79;
          }

          v45 = v50;
        }

        *a1 = v43;
        if ((v49 & 1) == 0)
        {
          v43[(v45 >> 6) + 8] |= 1 << v45;
          *(v43[6] + 8 * v45) = v77;
          *(v43[7] + 8 * v45) = _swiftEmptyArrayStorage;
          v52 = v43[2];
          v28 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v28)
          {
            goto LABEL_77;
          }

          v43[2] = v53;
        }

        v54 = v43[7];
        v55 = *(v54 + 8 * v45);
        v56 = swift_isUniquelyReferenced_nonNull_native();
        *(v54 + 8 * v45) = v55;
        if ((v56 & 1) == 0)
        {
          v55 = sub_100043D48(0, *(v55 + 2) + 1, 1, v55);
          *(v54 + 8 * v45) = v55;
        }

        v58 = *(v55 + 2);
        v57 = *(v55 + 3);
        v59 = v58 + 1;
        v22 = sub_1000393DC;
        if (v58 >= v57 >> 1)
        {
          v55 = sub_100043D48((v57 > 1), v58 + 1, 1, v55);
          *(v54 + 8 * v45) = v55;
          v22 = sub_1000393DC;
        }

        v21 = v72;
      }

      else
      {
        v28 = __OFADD__(v27, 86400);
        v27 += 86400;
        if (v28)
        {
          goto LABEL_74;
        }

        v71 = *(v24 - 1);
        v29 = v22;
        sub_10002FFD8(v21);
        v30 = *a1;
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v32 = *a1;
        v34 = sub_10004070C(v77);
        v35 = v32[2];
        v36 = (v33 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          goto LABEL_76;
        }

        v38 = v33;
        if (v32[3] >= v37)
        {
          if ((v31 & 1) == 0)
          {
            sub_100042470();
          }
        }

        else
        {
          sub_10004177C(v37, v31);
          v39 = sub_10004070C(v77);
          if ((v38 & 1) != (v40 & 1))
          {
            goto LABEL_79;
          }

          v34 = v39;
        }

        *a1 = v32;
        if ((v38 & 1) == 0)
        {
          v32[(v34 >> 6) + 8] |= 1 << v34;
          *(v32[6] + 8 * v34) = v77;
          *(v32[7] + 8 * v34) = _swiftEmptyArrayStorage;
          v60 = v32[2];
          v28 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v28)
          {
            goto LABEL_78;
          }

          v32[2] = v61;
        }

        v62 = v32[7];
        v55 = *(v62 + 8 * v34);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        *(v62 + 8 * v34) = v55;
        if ((v63 & 1) == 0)
        {
          v55 = sub_100043D48(0, *(v55 + 2) + 1, 1, v55);
          *(v62 + 8 * v34) = v55;
        }

        v58 = *(v55 + 2);
        v64 = *(v55 + 3);
        v59 = v58 + 1;
        if (v58 >= v64 >> 1)
        {
          v55 = sub_100043D48((v64 > 1), v58 + 1, 1, v55);
          *(v62 + 8 * v34) = v55;
        }

        v21 = sub_1000393DC;
        v22 = v29;
        v26 = v71;
      }

      ++v23;
      *(v55 + 2) = v59;
      v25 = &v55[16 * v58];
      *(v25 + 4) = v26;
      *(v25 + 5) = v27;
      v24 += 3;
      if (v75 == v23)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_71:
    v65 = v22;
    v66 = v21;

    sub_10002FFD8(v66);
    return sub_10002FFD8(v65);
  }

  return result;
}

unint64_t sub_10003658C()
{
  if (*v0)
  {
    result = 0x73776F646E6977;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_1000365CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x800000010005EAE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73776F646E6977 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1000366C0(uint64_t a1)
{
  v2 = sub_1000387D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000366FC(uint64_t a1)
{
  v2 = sub_1000387D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100036738(char a1, uint64_t a2)
{
  _StringGuts.grow(_:)(52);
  v4._countAndFlagsBits = 0xD000000000000032;
  v4._object = 0x800000010005EAA0;
  String.append(_:)(v4);
  sub_100015140(&qword_10007F038, &qword_10005B438);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10005A9A0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000010005EAE0;
  *(inited + 48) = a1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x73776F646E6977;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 120) = sub_100015140(&qword_10007F040, &unk_10005B440);
  *(inited + 96) = a2;

  sub_10002A1C0(inited);
  swift_setDeallocating();
  sub_100015140(&qword_10007ECA8, &qword_10005ACC8);
  swift_arrayDestroy();
  v6 = Dictionary.description.getter();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  return 0;
}

uint64_t sub_1000368CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000385E8(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

unint64_t sub_10003690C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_100036A84(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_100036930(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100044168(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_100015140(&qword_10007F028, &unk_10005B428);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100036BF4(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_100036A84(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
LABEL_6:
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_10004070C(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    v15 = *(*(a2 + 56) + 8 * result);
    v16 = v15[1].i64[0];
    if (v16 != v13[1].i64[0])
    {
      return 0;
    }

    if (v16)
    {
      v17 = v15 == v13;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v18 = v15 + 2;
      v19 = v13 + 2;
      while (v16)
      {
        v20 = vmovn_s64(vceqq_s64(*v18, *v19));
        if ((v20.i32[0] & v20.i32[1] & 1) == 0)
        {
          return 0;
        }

        ++v18;
        ++v19;
        if (!--v16)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_27;
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
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100036BF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100043D34(v8);
      v8 = result;
    }

    v79 = v8 + 2;
    v80 = v8[2];
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = &v8[2 * v80];
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_10003716C((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100043D48(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v33 = v8[3];
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_100043D48((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v34;
    v35 = v8 + 4;
    v36 = &v8[2 * v5 + 4];
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = v8[4];
          v38 = v8[5];
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v8[2 * v34];
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v35[2 * v5];
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = &v8[2 * v34];
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = &v35[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = &v35[2 * v5 - 2];
        v75 = *v74;
        v76 = &v35[2 * v5];
        v77 = v76[1];
        sub_10003716C((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = v8[2];
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove(&v35[2 * v5], v76 + 2, 16 * (v78 - 1 - v5));
        v8[2] = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = &v35[2 * v34];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v8[2 * v34];
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v35[2 * v5];
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_10003716C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1000373E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7961646E7573 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7961646E6F6DLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79616473657574 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616473656E646577 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7961647372756874 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x796164697266 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7961647275746173 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_100037628(uint64_t *a1)
{
  v3 = sub_100015140(&qword_10007F098, &qword_10005B858);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = a1[4];
  sub_100002288(a1, a1[3]);
  sub_100039044();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10001653C(a1);
  }

  v35 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = 2;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = 3;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = 4;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = 5;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = 6;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if ((v9 & 1) == 0 && (v10 & 1) == 0 && (v11 & 1) == 0 && (v12 & 1) == 0 && (v28 & 1) == 0 && (v27 & 1) == 0 && (v13 & 1) == 0)
  {
    sub_100039098();
    swift_allocError();
    *v15 = 0xD00000000000003DLL;
    v15[1] = 0x800000010005EBF0;
    swift_willThrow();
    (*(v4 + 8))(v7, v3);
    return sub_10001653C(a1);
  }

  v16 = *(v4 + 8);
  v25 = v11;
  v26 = v10;
  v17 = v28;
  v18 = v13;
  v16(v7, v3);
  sub_10001653C(a1);
  if (v18)
  {
    v19 = 0x1000000000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0x10000000000;
  if ((v27 & 1) == 0)
  {
    v20 = 0;
  }

  v21 = &_mh_execute_header;
  if ((v17 & 1) == 0)
  {
    v21 = 0;
  }

  v22 = 0x1000000;
  if ((v12 & 1) == 0)
  {
    v22 = 0;
  }

  v23 = 0x10000;
  if ((v25 & 1) == 0)
  {
    v23 = 0;
  }

  v24 = 256;
  if ((v26 & 1) == 0)
  {
    v24 = 0;
  }

  return v24 & 0xFFFFFFFFFFFFFFFELL | v9 & 1 | v23 | v22 | v21 | v20 | v19;
}

uint64_t sub_100037BB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6557664F73796164 && a2 == 0xEA00000000006B65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
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

uint64_t sub_100037CD4(uint64_t *a1)
{
  v3 = sub_100015140(&qword_10007F060, &unk_10005B640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = a1[4];
  sub_100002288(a1, a1[3]);
  sub_100038D60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10001653C(a1);
  }

  v40 = 0;
  sub_100038DB4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v37 | ((v38 | (v39 << 16)) << 32);
  v10 = v9 & &_mh_execute_header;
  v11 = v9 & 0x10000000000;
  v12 = v9 & 0x1000000000000;
  v13 = v37 & 1;
  if (v37 == 2)
  {
    v13 = 1;
  }

  v34 = v13;
  if (v37 == 2)
  {
    v14 = 256;
  }

  else
  {
    v14 = v37 & 0x100;
  }

  v33 = v14;
  if (v37 == 2)
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = v37 & 0x10000;
  }

  if (v37 == 2)
  {
    v16 = 0x1000000;
  }

  else
  {
    v16 = v37 & 0x1000000;
  }

  v31 = v16;
  v32 = v15;
  if (v37 == 2)
  {
    v17 = &_mh_execute_header;
  }

  else
  {
    v17 = v10;
  }

  if (v37 == 2)
  {
    v18 = 0x10000000000;
  }

  else
  {
    v18 = v11;
  }

  if (v37 == 2)
  {
    v19 = 0x1000000000000;
  }

  else
  {
    v19 = v12;
  }

  v36 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v19;
  v28 = v18;
  v29 = v17;
  v30 = v20;
  v22 = v33;
  v21 = v34;
  v35 = 2;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = sub_100037944(v22 | v21 | v32 | v31 | v29 | v28 | v27, v30, v23);
  (*(v4 + 8))(v7, v3);
  sub_10001653C(a1);
  return v24 & 0x1010101010101;
}