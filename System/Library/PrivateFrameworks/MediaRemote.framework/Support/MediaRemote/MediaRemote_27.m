uint64_t sub_10037A1F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_1001C6948(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_10037A3D4();
      goto LABEL_9;
    }

    sub_100379AF0(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_1001C6948(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_1001C7420(v16, v13, v25, a2, v26);
  }
}

char *sub_10037A3D4()
{
  v1 = v0;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BC5A8(&qword_1005286C8, &unk_10045AD20);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_10037A660(uint64_t a1)
{
  v2 = sub_1001BC5A8(&unk_1005286F0, &qword_10045AD40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1001BC5A8(&qword_1005286C8, &unk_10045AD20);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10037B024(v10, v6);
      result = sub_1001C6948(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void sub_10037A8B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  *(v1 + 16) = 0;

  swift_beginAccess();
  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
}

void sub_10037A948()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  v2 = *(v0 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100378DD4(v0 + ((v1 + 24) & ~v1));
  }
}

id sub_10037AA88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR___MRDGroupSessionAssertionManager_assertions;
  swift_beginAccess();
  *a1 = *(*(v3 + v4) + 16) != 0;
  v5 = *(v3 + OBJC_IVAR___MRDGroupSessionAssertionManager_observers);
  *(a1 + 8) = v5;
  return v5;
}

void *sub_10037AB08@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 8) = v7;
  }

  return result;
}

void sub_10037AB54()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = [*(v0 + 16) allObjects];
  sub_1001BC5A8(&unk_1005286B0, &qword_10045AD18);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    ++v6;
    if (v1)
    {
      v8 = &selRef_groupSessionAssertionManagerDidAssert_;
    }

    else
    {
      v8 = &selRef_groupSessionAssertionManagerDidUnassert_;
    }

    [v7 *v8];
    swift_unknownObjectRelease();
  }

  while (v5 != v6);
LABEL_13:
}

unint64_t sub_10037AC98()
{
  result = qword_100527420;
  if (!qword_100527420)
  {
    sub_1001C2EC8(&unk_100522280, &unk_10044F590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100527420);
  }

  return result;
}

uint64_t sub_10037ACFC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = OBJC_IVAR___MRDGroupSessionAssertionManager_assertions;
  swift_beginAccess();
  v6 = sub_100379368(v3);
  v8 = v7;
  result = swift_endAccess();
  *a1 = *(*(v4 + v5) + 16) == 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  return result;
}

__n128 sub_10037AD90@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = v8;
    *a1 = v7;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_10037ADDC@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR___MRDGroupSessionAssertionManager_assertions;
  result = swift_beginAccess();
  *a1 = *(*(v3 + v4) + 16) != 0;
  return result;
}

void *sub_10037AE48@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_10037AE8C@<X0>(BOOL *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = OBJC_IVAR___MRDGroupSessionAssertionManager_assertions;
  swift_beginAccess();
  v8 = *(*(v4 + v7) + 16) == 0;
  swift_beginAccess();

  v9 = *(v4 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v7);
  *(v4 + v7) = 0x8000000000000000;
  sub_10037A1F8(v5, v6, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + v7) = v12;
  result = swift_endAccess();
  *a1 = v8;
  return result;
}

void *sub_10037AF70@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_10037AFB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&unk_1005286E0, &unk_10045AD30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037B024(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&unk_1005286F0, &qword_10045AD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037B134()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_1005363A8);
  sub_100015AFC(v0, qword_1005363A8);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

id sub_10037B190()
{
  result = [objc_allocWithZone(type metadata accessor for GroupSessionHomeObserver()) init];
  qword_1005385B0 = result;
  return result;
}

uint64_t *sub_10037B1C0()
{
  if (qword_1005363C0 != -1)
  {
    swift_once();
  }

  return &qword_1005385B0;
}

uint64_t sub_10037B26C(uint64_t a1)
{
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_100018D7C(0, &qword_100528778, HMHomeManager_ptr);
  *v4 = v1;
  v4[1] = sub_100009F34;

  return withCheckedContinuation<A>(isolation:function:_:)(a1, 0, 0, 0xD000000000000018, 0x800000010045AD50, sub_10037B364, 0, v5);
}

void sub_10037B364(uint64_t a1)
{
  v31 = a1;
  v1 = sub_1001BC5A8(&qword_100528780, &unk_10045AE20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v30 = &v28 - v4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  if (qword_1005363A0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100015AFC(v13, qword_1005363A8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v1;
    v17 = v16;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10002C9C8(0xD000000000000018, 0x800000010045AD50, aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%s] - Initializing HMHomeManager", v17, 0xCu);
    sub_100026A44(v18);

    v1 = v29;
  }

  v19 = [objc_allocWithZone(HMHomeManager) initWithOptions:9];
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v20 = *(v6 + 8);
  v20(v10, v5);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v20(v12, v5);
  v22 = v30;
  (*(v2 + 16))(v30, v31, v1);
  v23 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v24 = swift_allocObject();
  (*(v2 + 32))(v24 + v23, v22, v1);
  *(v24 + ((v3 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_10037EBF0;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BC53C;
  aBlock[3] = &unk_1004D0328;
  v25 = _Block_copy(aBlock);
  v26 = v19;

  v27 = [v26 _refreshBeforeDate:isa completionHandler:v25];
  _Block_release(v25);

  swift_unknownObjectRelease();
}

uint64_t sub_10037B774()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = swift_getObjectType();

  return _swift_task_switch(sub_10037B7E4, 0, 0);
}

uint64_t sub_10037B7E4()
{
  v1 = *(**(*(v0 + 24) + OBJC_IVAR___MRDGroupSessionHomeObserver_managerWrapper) + 176);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_10037B90C;

  return v5(v0 + 16);
}

uint64_t sub_10037B90C()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_10037BA08, 0, 0);
}

uint64_t sub_10037BA08()
{
  v21 = v0;
  v1 = v0[2];
  v2 = [v1 homes];

  sub_100018D7C(0, &qword_100528710, HMHome_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_10037BC8C(v3);

  v5 = sub_10037E818(v4);

  if (qword_1005363A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100015AFC(v6, qword_1005363A8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10002C9C8(v11, v12, v20);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    sub_10037C10C(v5);
    type metadata accessor for UUID();
    v14 = Array.description.getter();
    v16 = v15;

    v17 = sub_10002C9C8(v14, v16, v20);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s - Known users: %s]", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = v0[1];

  return v18(v5);
}

void *sub_10037BC8C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_56;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v37 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v38 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v36 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v35 = v1;
    while (1)
    {
      if (v38)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v37 + 16))
        {
          goto LABEL_50;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v36 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject users];
      sub_100018D7C(0, &qword_100528748, HMUser_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v40[0] = v8;
      v9 = [v5 currentUser];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v40[0];
      v11 = [v5 owner];
      if (v11)
      {
        v12 = v11;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v31 = *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v10 = v40[0];
      }

      if (v39)
      {

        return v3;
      }

      v13 = v10 >> 62;
      if (v10 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
        {
          goto LABEL_51;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
        {
          goto LABEL_51;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v15)
        {
          goto LABEL_28;
        }

        v17 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v15)
        {
LABEL_28:
          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_29;
        }

        v17 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v18 = *(v17 + 16);
LABEL_29:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_30:
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v13)
      {
        v22 = v17;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v17 = v22;
        v21 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_34:
          if (((v20 >> 1) - v19) < v14)
          {
            goto LABEL_53;
          }

          v23 = v17 + 8 * v19 + 32;
          v41 = v3;
          v34 = v17;
          if (v13)
          {
            if (v21 < 1)
            {
              goto LABEL_55;
            }

            sub_10037EB8C();
            for (i = 0; i != v21; ++i)
            {
              sub_1001BC5A8(&qword_100528768, &qword_10045AE18);
              v25 = sub_1002CD614(v40, i, v10);
              v27 = *v26;
              (v25)(v40, 0);
              *(v23 + 8 * i) = v27;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v3 = v41;
          v4 = v35;
          if (v14 >= 1)
          {
            v28 = *(v34 + 16);
            v6 = __OFADD__(v28, v14);
            v29 = v28 + v14;
            if (v6)
            {
              goto LABEL_54;
            }

            *(v34 + 16) = v29;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_34;
        }
      }

      v4 = v35;
      if (v14 > 0)
      {
        goto LABEL_52;
      }

LABEL_5:
      if (v2 == v4)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v32;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10037C10C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_10037E3FC(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = _HashTable.startBucket.getter();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_10037E5F4(v48, v49, v50, a1);
        v21 = v20;
        v22 = [v20 uniqueIdentifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = v46;
        v51 = v46;
        v25 = v46[2];
        v24 = v46[3];
        if (v25 >= v24 >> 1)
        {
          sub_10037E3FC(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        v23[2] = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          sub_1001BC5A8(&qword_100528740, &qword_10045ADF8);
          v14 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_10000A16C(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_10000A16C(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_10000A16C(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void sub_10037C518(uint64_t a1)
{
  v45 = type metadata accessor for UUID();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v45);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    v53 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v6 & ~(v6 >> 63), 0);
    v48 = v53;
    if (v46)
    {
      v7 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v9 = -1 << *(a1 + 32);
      v7 = _HashTable.startBucket.getter();
      v8 = *(a1 + 36);
    }

    v50 = v7;
    v51 = v8;
    v52 = v46 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v42 = v6;
      v43 = (v3 + 8);
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v40 = a1 + 56;
      v41 = v11;
      v38 = v1;
      v39 = a1 + 64;
      while (v10 < v6)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v50;
        v15 = v52;
        v47 = v51;
        v16 = a1;
        sub_10037E5F4(v50, v51, v52, a1);
        v18 = v17;
        v19 = [v18 uniqueIdentifier];
        v20 = v44;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = UUID.uuidString.getter();
        v23 = v22;
        (*v43)(v20, v45);

        v24 = v48;
        v53 = v48;
        v26 = v48[2];
        v25 = v48[3];
        if (v26 >= v25 >> 1)
        {
          sub_1000089FC((v25 > 1), v26 + 1, 1);
          v24 = v53;
        }

        v24[2] = v26 + 1;
        v27 = &v24[2 * v26];
        v27[4] = v21;
        v27[5] = v23;
        v48 = v24;
        if (v46)
        {
          if (!v15)
          {
            goto LABEL_42;
          }

          a1 = v16;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v42;
          sub_1001BC5A8(&qword_100528740, &qword_10045ADF8);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v12(v49, 0);
          if (v10 == v6)
          {
LABEL_34:
            sub_10000A16C(v50, v51, v52);
            return;
          }
        }

        else
        {
          if (v15)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v16;
          v28 = 1 << *(v16 + 32);
          if (v14 >= v28)
          {
            goto LABEL_38;
          }

          v29 = v14 >> 6;
          v30 = *(v40 + 8 * (v14 >> 6));
          if (((v30 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v16 + 36) != v47)
          {
            goto LABEL_40;
          }

          v31 = v30 & (-2 << (v14 & 0x3F));
          if (v31)
          {
            v28 = __clz(__rbit64(v31)) | v14 & 0x7FFFFFFFFFFFFFC0;
            v6 = v42;
          }

          else
          {
            v32 = v29 << 6;
            v33 = v29 + 1;
            v34 = (v39 + 8 * v29);
            v6 = v42;
            while (v33 < (v28 + 63) >> 6)
            {
              v36 = *v34++;
              v35 = v36;
              v32 += 64;
              ++v33;
              if (v36)
              {
                sub_10000A16C(v14, v47, 0);
                v28 = __clz(__rbit64(v35)) + v32;
                goto LABEL_33;
              }
            }

            sub_10000A16C(v14, v47, 0);
          }

LABEL_33:
          v37 = *(v16 + 36);
          v50 = v28;
          v51 = v37;
          v52 = 0;
          if (v10 == v6)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_10037C938()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10037C9C4;

  return sub_10037B774();
}

uint64_t sub_10037C9C4(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_10037CAC4, 0, 0);
}

uint64_t sub_10037CAC4()
{
  sub_10037C518(*(v0 + 24));
  v2 = v1;

  v3 = sub_100008280(v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_10037CCCC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10037CD74;

  return sub_10037B774();
}

uint64_t sub_10037CD74(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10037CE74, 0, 0);
}

uint64_t sub_10037CE74()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10037C518(v0[5]);
  v4 = v3;

  sub_100008280(v4);

  isa = Set._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_10037CF58()
{
  v1[3] = v0;
  v2 = type metadata accessor for UUID();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10037D018, 0, 0);
}

uint64_t sub_10037D018()
{
  v1 = *(**(*(v0 + 24) + OBJC_IVAR___MRDGroupSessionHomeObserver_managerWrapper) + 176);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_10037D140;

  return v5(v0 + 16);
}

uint64_t sub_10037D140()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_10037D23C, 0, 0);
}

char *sub_10037D23C()
{
  v1 = v0[2];
  v2 = [v1 homes];

  sub_100018D7C(0, &qword_100528710, HMHome_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  result = sub_1000089FC(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = v3;
  v24 = v3 & 0xC000000000000001;
  v25 = v4;
  v8 = (v0[5] + 8);
  v26 = v3;
  do
  {
    if (v24)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v7 + 8 * v6 + 32);
    }

    v10 = v0[6];
    v11 = v0[4];
    v12 = v9;
    v13 = [v12 currentUser];
    v14 = [v13 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*v8)(v10, v11);

    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      sub_1000089FC((v18 > 1), v19 + 1, 1);
    }

    ++v6;
    _swiftEmptyArrayStorage[2] = v19 + 1;
    v20 = &_swiftEmptyArrayStorage[2 * v19];
    v20[4] = v15;
    v20[5] = v17;
    v7 = v26;
  }

  while (v25 != v6);
LABEL_13:

  v21 = v0[6];
  v22 = sub_100008280(_swiftEmptyArrayStorage);

  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_10037D624(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10037D6CC;

  return sub_10037CF58();
}

uint64_t sub_10037D6CC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  isa = Set._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10037D8D8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100018D7C(0, &qword_100528748, HMUser_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10037DB10(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10037DD00(v21 + 1);
    }

    v19 = v8;
    sub_1001E45EC(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100018D7C(0, &qword_100528748, HMUser_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_10037DF28(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_10037DB10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001BC5A8(&qword_100528760, &qword_10045AE10);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100018D7C(0, &qword_100528748, HMUser_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10037DD00(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10037DD00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100528760, &qword_10045AE10);
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_10037DF28(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10037DD00(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10037E098();
      goto LABEL_12;
    }

    sub_10037E1E8(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100018D7C(0, &qword_100528748, HMUser_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_10037E098()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100528760, &qword_10045AE10);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_10037E1E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100528760, &qword_10045AE10);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
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

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
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

        v2 = v26;
        goto LABEL_28;
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

size_t sub_10037E3FC(size_t a1, int64_t a2, char a3)
{
  result = sub_10037E41C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10037E41C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1001BC5A8(&qword_100528750, &unk_10045AE00);
  v10 = *(type metadata accessor for UUID() - 8);
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
  v15 = *(type metadata accessor for UUID() - 8);
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

void sub_10037E5F4(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100018D7C(0, &qword_100528748, HMUser_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100018D7C(0, &qword_100528748, HMUser_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10037E818(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_100018D7C(0, &qword_100528748, HMUser_ptr);
    sub_10037EB24();
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10037D8D8(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10037E98C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F34;

  return sub_10037D624(v2, v3);
}

uint64_t sub_10037EA38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10037EA78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F30;

  return sub_10037CCCC(v2, v3);
}

unint64_t sub_10037EB24()
{
  result = qword_100528758;
  if (!qword_100528758)
  {
    sub_100018D7C(255, &qword_100528748, HMUser_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528758);
  }

  return result;
}

unint64_t sub_10037EB8C()
{
  result = qword_100528770;
  if (!qword_100528770)
  {
    sub_1001C2EC8(&qword_100528768, &qword_10045AE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528770);
  }

  return result;
}

uint64_t sub_10037EBF0(uint64_t a1)
{
  v3 = *(sub_1001BC5A8(&qword_100528780, &unk_10045AE20) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005363A0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100015AFC(v5, qword_1005363A8);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v8 = 136315650;
      *(v8 + 4) = sub_10002C9C8(0xD000000000000018, 0x800000010045AD50, &v19);
      *(v8 + 12) = 2048;
      *(v8 + 14) = 0x4024000000000000;
      *(v8 + 22) = 2112;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%s] - Failed to populate HMHomeManager within %f: %@", v8, 0x20u);
      sub_1000038A4(v9, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v10);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1005363A0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100015AFC(v12, qword_1005363A8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10002C9C8(0xD000000000000018, 0x800000010045AD50, &v19);
      _os_log_impl(&_mh_execute_header, v13, v14, "[%s] - Refreshed HMHomeManager", v15, 0xCu);
      sub_100026A44(v16);
    }
  }

  v19 = v4;
  v17 = v4;
  sub_1001BC5A8(&qword_100528780, &unk_10045AE20);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10037F00C()
{
  v1 = (v0 + OBJC_IVAR___MRDRouteRecommendationDemotionContext_primaryBundleIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_10037F0D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___MRDRouteRecommendationDemotionContext_primaryBundleIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10037F1D8()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_recommendationType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10037F270(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_recommendationType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10037F368()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isASELocal;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10037F400(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isASELocal;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10037F4F8()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_localOutputContextHasAirPlay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10037F590(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_localOutputContextHasAirPlay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10037F688()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isSourceEndpointPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10037F720(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isSourceEndpointPlaying;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10037F818()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isTargetEndpointPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10037F8B0(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isTargetEndpointPlaying;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10037F9EC()
{
  v1 = (v0 + OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetNowPlayingBundleIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_10037FAC0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetNowPlayingBundleIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10037FB80()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetEndpointContainsDiscoverableGroupLeader;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10037FBC4(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetEndpointContainsDiscoverableGroupLeader;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_10037FC74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  v18 = objc_allocWithZone(v10);
  v19 = &v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetNowPlayingBundleIdentifier];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_primaryBundleIdentifier];
  *v20 = a1;
  v20[1] = a2;
  *&v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_recommendationType] = a3;
  v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_isASELocal] = a4;
  v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_localOutputContextHasAirPlay] = a5;
  v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_isSourceEndpointPlaying] = a6;
  v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_isTargetEndpointPlaying] = a7;
  swift_beginAccess();
  *v19 = a8;
  v19[1] = a9;
  v18[OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetEndpointContainsDiscoverableGroupLeader] = a10;
  v23.receiver = v18;
  v23.super_class = v10;
  return objc_msgSendSuper2(&v23, "init");
}

id sub_10037FD94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  v12 = &v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetNowPlayingBundleIdentifier];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_primaryBundleIdentifier];
  *v13 = a1;
  v13[1] = a2;
  *&v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_recommendationType] = a3;
  v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_isASELocal] = a4;
  v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_localOutputContextHasAirPlay] = a5;
  v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_isSourceEndpointPlaying] = a6;
  v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_isTargetEndpointPlaying] = a7;
  swift_beginAccess();
  *v12 = a8;
  v12[1] = a9;
  v10[OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetEndpointContainsDiscoverableGroupLeader] = a10;
  v15.receiver = v10;
  v15.super_class = type metadata accessor for RouteRecommendationDemotionContext();
  return objc_msgSendSuper2(&v15, "init");
}

id sub_10038006C()
{
  v0 = type metadata accessor for RouteRecommendationDemotionPolicy();
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 0;
  v2 = &v1[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
  *v2 = 0;
  v2[1] = 0;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, "init");
  qword_1005385B8 = result;
  return result;
}

id sub_1003800D4(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = a1;
  v8 = &v7[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

id sub_1003801C4(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_10034EA70(a1, v3 + OBJC_IVAR___MRDRouteRecommendationDemotionController_appInFocusMonitor);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_100026A44(a1);
  return v4;
}

id sub_10038025C(void *a1)
{
  v2 = v1;
  if ((*((swift_isaMask & *a1) + 0xA8))() != 1)
  {
    goto LABEL_22;
  }

  if (((*((swift_isaMask & *a1) + 0xC0))() & 1) == 0)
  {
    v8 = type metadata accessor for RouteRecommendationDemotionPolicy();
    v9 = objc_allocWithZone(v8);
    v9[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 1;
    v10 = &v9[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
    *v10 = 0xD000000000000010;
    v10[1] = 0x80000001004434D0;
    return objc_msgSendSuper2(&v40, "init", v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v9, v8);
  }

  if ((*((swift_isaMask & *a1) + 0xD8))())
  {
    v4 = type metadata accessor for RouteRecommendationDemotionPolicy();
    v5 = objc_allocWithZone(v4);
    v5[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 1;
    v6 = &v5[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
    *v6 = 0xD00000000000001CLL;
    v6[1] = 0x80000001004434F0;
    return objc_msgSendSuper2(&v35, "init", v5, v4, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v40.receiver, v40.super_class);
  }

  if ((*((swift_isaMask & *a1) + 0xF0))())
  {
    v11 = type metadata accessor for RouteRecommendationDemotionPolicy();
    v12 = objc_allocWithZone(v11);
    v12[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 1;
    v13 = &v12[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
    *v13 = 0xD000000000000011;
    v13[1] = 0x80000001004435C0;
    return objc_msgSendSuper2(&v36, "init", v35.receiver, v35.super_class, v12, v11, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v40.receiver, v40.super_class);
  }

  if (((*((swift_isaMask & *a1) + 0x108))() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (((*((swift_isaMask & *a1) + 0x138))() & 1) == 0)
  {
    v22 = type metadata accessor for RouteRecommendationDemotionPolicy();
    v23 = objc_allocWithZone(v22);
    v23[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 1;
    v24 = &v23[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
    *v24 = 0xD00000000000001BLL;
    v24[1] = 0x8000000100443510;
    return objc_msgSendSuper2(&v39, "init", v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v23, v22, v40.receiver, v40.super_class);
  }

  v14 = *((swift_isaMask & *a1) + 0x90);
  v15 = v14();
  v17 = v16;
  v18 = (*((swift_isaMask & *a1) + 0x120))();
  if (!v19)
  {

    goto LABEL_19;
  }

  if (v15 == v18 && v19 == v17)
  {

    goto LABEL_21;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
LABEL_19:
    v25 = type metadata accessor for RouteRecommendationDemotionPolicy();
    v26 = objc_allocWithZone(v25);
    v26[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 1;
    v27 = &v26[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
    *v27 = 0xD000000000000042;
    v27[1] = 0x8000000100443530;
    return objc_msgSendSuper2(&v38, "init", v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v26, v25, v39.receiver, v39.super_class, v40.receiver, v40.super_class);
  }

LABEL_21:
  v28 = *(v2 + OBJC_IVAR___MRDRouteRecommendationDemotionController_appInFocusMonitor + 32);
  sub_1000326D8((v2 + OBJC_IVAR___MRDRouteRecommendationDemotionController_appInFocusMonitor), *(v2 + OBJC_IVAR___MRDRouteRecommendationDemotionController_appInFocusMonitor + 24));
  v29 = v14();
  v30 = (*(v28 + 8))(v29);

  if ((v30 & 1) == 0)
  {
    v32 = type metadata accessor for RouteRecommendationDemotionPolicy();
    v33 = objc_allocWithZone(v32);
    v33[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_shouldDemote] = 1;
    v34 = &v33[OBJC_IVAR___MRDRouteRecommendationDemotionPolicy_reason];
    *v34 = 0xD000000000000038;
    v34[1] = 0x8000000100443580;
    return objc_msgSendSuper2(&v37, "init", v35.receiver, v35.super_class, v36.receiver, v36.super_class, v33, v32, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v40.receiver, v40.super_class);
  }

LABEL_22:
  if (qword_1005363D0 != -1)
  {
    swift_once();
  }

  v31 = qword_1005385B8;

  return v31;
}

id sub_100380844(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void type metadata accessor for MRRouteRecommendationType()
{
  if (!qword_100528858)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100528858);
    }
  }
}

void *sub_1003808EC()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_localEndpoint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100380938(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_localEndpoint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1003809F0()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_activeSystemEndpoint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100380A3C(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_activeSystemEndpoint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100380AF4()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowRecommendationsOutsideApp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100380B38(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowRecommendationsOutsideApp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100380BE8()
{
  v1 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowDeltaBanners;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100380C2C(char a1)
{
  v3 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowDeltaBanners;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_100380CDC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_localEndpoint;
  *&v9[OBJC_IVAR___MRDRouteRecommendationSuppressionContext_localEndpoint] = 0;
  v11 = OBJC_IVAR___MRDRouteRecommendationSuppressionContext_activeSystemEndpoint;
  *&v9[OBJC_IVAR___MRDRouteRecommendationSuppressionContext_activeSystemEndpoint] = 0;
  swift_beginAccess();
  *&v9[v10] = a1;
  swift_beginAccess();
  *&v9[v11] = a2;
  v9[OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowRecommendationsOutsideApp] = a3;
  v9[OBJC_IVAR___MRDRouteRecommendationSuppressionContext_eligibleToShowDeltaBanners] = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, "init");
}

id sub_100380FB4()
{
  v0 = type metadata accessor for RouteRecommendationSuppressionPolicy();
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_shouldSuppress] = 0;
  v2 = &v1[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_reason];
  *v2 = 0;
  v2[1] = 0;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, "init");
  qword_1005385C0 = result;
  return result;
}

id sub_10038101C(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_shouldSuppress] = a1;
  v8 = &v7[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_reason];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t *sub_10038108C()
{
  if (qword_100536460 != -1)
  {
    swift_once();
  }

  return &qword_1005385C0;
}

id sub_1003810DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteRecommendationSuppressionPolicy();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_shouldSuppress] = 1;
  v6 = &v5[OBJC_IVAR___MRDRouteRecommendationSuppressionPolicy_reason];
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, "init");
}

id sub_1003811C8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10038122C(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(45);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x65636976656420;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  return 0xD000000000000024;
}

id sub_1003812E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1001BC5A8(&qword_100521B00, &qword_10044ED30);
  sub_1001C3FE0(a1, a2);
  InvitationRequest.__allocating_init(invitationData:displayName:userInfo:)();
  v14 = dispatch thunk of InvitationRequest.invitationUserInfo.getter();
  if (v15 >> 60 == 15)
  {

    sub_1001C4034(a1, a2);
LABEL_9:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v16 = v14;
  v17 = v15;
  sub_1001C3FE0(v14, v15);
  v18 = sub_1001D2EB8(v16, v17);
  v19 = sub_100367638(v18);
  if (!v19)
  {

    sub_1001C4034(a1, a2);
    sub_100045968(v16, v17);
    goto LABEL_9;
  }

  v20 = v19;
  v37 = v16;
  v38 = v17;
  dispatch thunk of InvitationRequest.invitationDisplayName.getter();
  v21 = objc_allocWithZone(MRGroupSessionHostInfo);
  v22 = String._bridgeToObjectiveC()();

  v23 = [v21 initWithRouteType:v20 displayName:v22];

  v24.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (a4)
  {
    v25 = String._bridgeToObjectiveC()();

    v26 = a9;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_11:
    v27 = 0;
    if (a8)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v25 = 0;
  v26 = a9;
  if (!a6)
  {
    goto LABEL_11;
  }

LABEL_6:
  v27 = String._bridgeToObjectiveC()();

  if (a8)
  {
LABEL_7:
    v28 = String._bridgeToObjectiveC()();

    goto LABEL_13;
  }

LABEL_12:
  v28 = 0;
LABEL_13:
  v30 = [objc_allocWithZone(NSNumber) initWithInteger:v26];
  v31 = [v39 initWithHostInfo:v23 invitationData:v24.super.isa sharedSecret:v25 sessionIdentifier:v27 equivalentMediaIdentifier:v28 version:v30];

  v32 = [objc_opt_self() sharedCenter];
  v33 = v23;
  v34 = [v32 localActiveUserState];

  if (v34)
  {
    v35 = v33;
    v36 = [v34 storefrontCountryCode];

    if (v36)
    {
      [v31 setStorefrontCountryCode:v36];

      sub_100045968(v37, v38);

      sub_1001C4034(a1, a2);
      return v31;
    }
  }

  else
  {
  }

  sub_100045968(v37, v38);
  sub_1001C4034(a1, a2);
  return v31;
}

uint64_t ActivityController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ActivityController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MRDUIActivityController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1001DA158;
}

uint64_t ActivityController.currentActivitiesInfo.getter()
{
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  return sub_100384948();
}

void ActivityController.startNowPlayingActivity(preferredState:suppressedBundleIdentifiers:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19[-v8];
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v11;
  *(inited + 48) = a1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  *(inited + 120) = sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  *(inited + 96) = a2;

  v13 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  v14 = sub_100384FCC(0, v13);

  if (v14)
  {
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = v3;
    v17 = v3;
    sub_1001BF864(0, 0, v9, &unk_10045AFC8, v16);
  }

  else
  {
    static os_log_type_t.error.getter();
    v18 = *sub_1001D8BC4();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100381DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_100381DD0, 0, 0);
}

uint64_t sub_100381DD0()
{
  v1 = v0[3];
  v2 = sub_1001BC5A8(&qword_100528AB0, &qword_10045B188);
  v0[5] = v2;
  v3 = *(v2 - 8);
  v0[6] = v3;
  v4 = *(v3 + 64) + 15;
  v0[7] = swift_task_alloc();
  v5 = sub_1001BC5A8(&qword_100528AB8, &qword_10045B190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  dispatch thunk of Activity.activityStateUpdates.getter();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  (*(v6 + 8))(v8, v5);

  v9 = *(*(sub_1001BC5A8(&qword_100528AC0, &qword_10045B198) - 8) + 64) + 15;
  v0[8] = swift_task_alloc();
  v10 = sub_10038B9C0();
  v11 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_100381FD4;
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v13, v15, v10);
}

uint64_t sub_100381FD4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1003823E4;
  }

  else
  {
    v3 = sub_1003820E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100382104()
{
  v1 = *(v0 + 64);
  v2 = type metadata accessor for ActivityState();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
LABEL_7:
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);

    v15 = *(v0 + 8);

    return v15();
  }

  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 32))(v5, v1, v2);
  v6 = swift_task_alloc();
  (*(v3 + 104))(v6, enum case for ActivityState.ended(_:), v2);
  LOBYTE(v4) = static ActivityState.== infix(_:_:)();
  v7 = *(v3 + 8);
  v7(v6, v2);

  if (v4)
  {
    v9 = (*((swift_isaMask & **(v0 + 32)) + 0x58))(v8);
    if (v9)
    {
      [v9 nowPlayingEnded];
      swift_unknownObjectRelease();
    }

    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v12 = *(v0 + 40);
    v7(v5, v2);
    (*(v11 + 8))(v10, v12);

    goto LABEL_7;
  }

  v7(v5, v2);

  v17 = sub_10038B9C0();
  v18 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v19 = swift_task_alloc();
  *(v0 + 72) = v19;
  *v19 = v0;
  v19[1] = sub_100381FD4;
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v22 = *(v0 + 40);

  return dispatch thunk of AsyncIteratorProtocol.next()(v20, v22, v17);
}

uint64_t sub_1003823E4()
{
  *(v0 + 16) = *(v0 + 80);
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t ActivityController.nowPlayingActivityIdentifier.getter()
{
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  v0 = sub_10038916C(0);
  if (*(v0 + 2))
  {
    v1 = *(v0 + 4);
    v2 = *(v0 + 5);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

Swift::Void __swiftcall ActivityController.startMirroringActivity()()
{
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  v0 = sub_10021F050(_swiftEmptyArrayStorage);
  sub_100384FCC(1, v0);
}

Swift::String_optional __swiftcall ActivityController.startRouteRecommendationActivity(for:relevanceScore:)(Swift::String a1, Swift::Double relevanceScore)
{
  v3 = v2;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v7 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v28[-v9];
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v12;
  *(inited + 48) = countAndFlagsBits;
  *(inited + 56) = object;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v13;
  *(inited + 120) = &type metadata for Double;
  *(inited + 96) = relevanceScore;

  v14 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  v15 = sub_100384FCC(2, v14);

  if (v15)
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;
    v17[5] = v3;

    v18 = v3;
    sub_1001BF864(0, 0, v10, &unk_10045AFE0, v17);

    v19 = Activity.id.getter();
    v21 = v20;
  }

  else
  {
    static os_log_type_t.error.getter();
    v22 = *sub_1001D8BC4();
    sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10044EC70;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100008FEC();
    *(v23 + 32) = countAndFlagsBits;
    *(v23 + 40) = object;

    v24 = v22;
    os_log(_:dso:log:_:_:)();

    v19 = 0;
    v21 = 0;
  }

  v25 = v19;
  v26 = v21;
  result.value._object = v26;
  result.value._countAndFlagsBits = v25;
  return result;
}

uint64_t sub_100382AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_100382B0C, 0, 0);
}

uint64_t sub_100382B0C()
{
  v1 = v0[3];
  v2 = sub_1001BC5A8(&qword_100528AB0, &qword_10045B188);
  v0[5] = v2;
  v3 = *(v2 - 8);
  v0[6] = v3;
  v4 = *(v3 + 64) + 15;
  v0[7] = swift_task_alloc();
  v5 = sub_1001BC5A8(&qword_100528AB8, &qword_10045B190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  dispatch thunk of Activity.activityStateUpdates.getter();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  (*(v6 + 8))(v8, v5);

  v9 = *(*(sub_1001BC5A8(&qword_100528AC0, &qword_10045B198) - 8) + 64) + 15;
  v0[8] = swift_task_alloc();
  v10 = sub_10038B9C0();
  v11 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_100382D10;
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v13, v15, v10);
}

uint64_t sub_100382D10()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10038BC0C;
  }

  else
  {
    v3 = sub_100382E24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100382E40()
{
  v1 = *(v0 + 64);
  v2 = type metadata accessor for ActivityState();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
LABEL_7:
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);

    v15 = *(v0 + 8);

    return v15();
  }

  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 32))(v5, v1, v2);
  v6 = swift_task_alloc();
  (*(v3 + 104))(v6, enum case for ActivityState.dismissed(_:), v2);
  LOBYTE(v4) = static ActivityState.== infix(_:_:)();
  v7 = *(v3 + 8);
  v7(v6, v2);

  if (v4)
  {
    v9 = (*((swift_isaMask & **(v0 + 32)) + 0x58))(v8);
    if (v9)
    {
      [v9 routeRecommendationDismissed];
      swift_unknownObjectRelease();
    }

    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v12 = *(v0 + 40);
    v7(v5, v2);
    (*(v11 + 8))(v10, v12);

    goto LABEL_7;
  }

  v7(v5, v2);

  v17 = sub_10038B9C0();
  v18 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v19 = swift_task_alloc();
  *(v0 + 72) = v19;
  *v19 = v0;
  v19[1] = sub_100382D10;
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v22 = *(v0 + 40);

  return dispatch thunk of AsyncIteratorProtocol.next()(v20, v22, v17);
}

Swift::Void __swiftcall ActivityController.setRouteRecommendationRelevanceScore(_:activityIdentifier:)(Swift::Double _, Swift::String activityIdentifier)
{
  object = activityIdentifier._object;
  countAndFlagsBits = activityIdentifier._countAndFlagsBits;
  if (qword_100536470 != -1)
  {
    v4 = _;
    swift_once();
    _ = v4;
  }

  sub_100388968(2u, countAndFlagsBits, object, _);
}

Swift::Void __swiftcall ActivityController.endRouteRecommendationActivity(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  sub_1003871AC(2, countAndFlagsBits, object);
}

void ActivityController.startGroupSessionNearbyActivity(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23[-v6];
  sub_1001BC5A8(&qword_1005228A8, &unk_100450030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  v10 = [a1 data];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = Data.base64EncodedString(options:)(0);
  sub_1001C4034(v11, v13);
  *(inited + 48) = v14;
  v15 = sub_10021EF3C(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228B0, &qword_10045AFF0);
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  v16 = sub_1003836A0(v15);

  v17 = sub_100384FCC(3, v16);

  if (v17)
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    v19[5] = v2;
    v19[6] = a1;
    v20 = v2;
    v21 = a1;
    sub_1001BF864(0, 0, v7, &unk_10045B000, v19);
  }

  else
  {
    static os_log_type_t.error.getter();
    v22 = *sub_1001D8BC4();
    os_log(_:dso:log:_:_:)();
  }
}

unint64_t sub_1003836A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001BC5A8(&qword_100522840, &qword_10044FE70);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_1001C4088(&v27, v29);
        sub_1001C4088(v29, v30);
        sub_1001C4088(v30, &v28);
        result = sub_10000698C(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100026A44(v12);
          result = sub_1001C4088(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_1001C4088(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1003838F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_10038391C, 0, 0);
}

uint64_t sub_10038391C()
{
  v1 = v0[3];
  v2 = sub_1001BC5A8(&qword_100528AB0, &qword_10045B188);
  v0[6] = v2;
  v3 = *(v2 - 8);
  v0[7] = v3;
  v4 = *(v3 + 64) + 15;
  v0[8] = swift_task_alloc();
  v5 = sub_1001BC5A8(&qword_100528AB8, &qword_10045B190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  dispatch thunk of Activity.activityStateUpdates.getter();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  (*(v6 + 8))(v8, v5);

  v9 = *(*(sub_1001BC5A8(&qword_100528AC0, &qword_10045B198) - 8) + 64) + 15;
  v0[9] = swift_task_alloc();
  v10 = sub_10038B9C0();
  v11 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_100383B20;
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[6];

  return dispatch thunk of AsyncIteratorProtocol.next()(v13, v15, v10);
}

uint64_t sub_100383B20()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_100383F34;
  }

  else
  {
    v3 = sub_100383C34;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100383C50()
{
  v1 = *(v0 + 72);
  v2 = type metadata accessor for ActivityState();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
LABEL_7:
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);

    v15 = *(v0 + 8);

    return v15();
  }

  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 32))(v5, v1, v2);
  v6 = swift_task_alloc();
  (*(v3 + 104))(v6, enum case for ActivityState.dismissed(_:), v2);
  LOBYTE(v4) = static ActivityState.== infix(_:_:)();
  v7 = *(v3 + 8);
  v7(v6, v2);

  if (v4)
  {
    v9 = (*((swift_isaMask & **(v0 + 32)) + 0x58))(v8);
    if (v9)
    {
      [v9 nearbyGroupSessionDismissed:*(v0 + 40)];
      swift_unknownObjectRelease();
    }

    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 48);
    v7(v5, v2);
    (*(v11 + 8))(v10, v12);

    goto LABEL_7;
  }

  v7(v5, v2);

  v17 = sub_10038B9C0();
  v18 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v19 = swift_task_alloc();
  *(v0 + 80) = v19;
  *v19 = v0;
  v19[1] = sub_100383B20;
  v21 = *(v0 + 64);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);

  return dispatch thunk of AsyncIteratorProtocol.next()(v20, v22, v17);
}

uint64_t sub_100383F34()
{
  *(v0 + 16) = *(v0 + 88);
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100384048(unsigned __int8 a1)
{
  if (qword_100536470 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_1003879BC(a1);
}

uint64_t sub_1003840B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3;
  if (qword_100536470 != -1)
  {
    swift_once();
    v3 = a3;
  }

  return sub_1003879BC(v3);
}

Swift::Void __swiftcall ActivityController.clearActivities()()
{
  if (qword_100536470 != -1)
  {
    swift_once();
  }

  sub_100384DBC();
}

id ActivityController.init()()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityController();
  return objc_msgSendSuper2(&v2, "init");
}

id ActivityController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10038432C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E69726F7272696DLL;
    }

    else
    {
      v3 = 0x6979616C50776F6ELL;
    }

    if (v2)
    {
      v4 = 0xE900000000000067;
    }

    else
    {
      v4 = 0xEA0000000000676ELL;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x8000000100443BB0;
    v3 = 0xD000000000000013;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (v2 == 3)
    {
      v4 = 0x8000000100443BD0;
    }

    else
    {
      v4 = 0x8000000100443BF0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6E69726F7272696DLL;
    }

    else
    {
      v9 = 0x6979616C50776F6ELL;
    }

    if (a2)
    {
      v8 = 0xE900000000000067;
    }

    else
    {
      v8 = 0xEA0000000000676ELL;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x8000000100443BD0;
    v6 = 0xD000000000000014;
    if (a2 == 3)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x8000000100443BF0;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x8000000100443BB0;
    }

    else
    {
      v8 = v5;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

unint64_t sub_1003844AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10038B6BC(*a1);
  *a2 = result;
  return result;
}

void sub_1003844DC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x6979616C50776F6ELL;
  v5 = 0x8000000100443BB0;
  v6 = 0xD000000000000013;
  v7 = 0xD000000000000012;
  v8 = 0x8000000100443BD0;
  if (v2 != 3)
  {
    v7 = 0xD000000000000014;
    v8 = 0x8000000100443BF0;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x6E69726F7272696DLL;
    v3 = 0xE900000000000067;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_100384590()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100384688()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10038476C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100384910()
{
  type metadata accessor for ActivityStore();
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptyDictionarySingleton;
  *(result + 24) = &_swiftEmptyDictionarySingleton;
  qword_100536478 = result;
  return result;
}

uint64_t sub_100384948()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = &_swiftEmptyDictionarySingleton;
  v49 = v1 + 64;
  v50 = v1;
  v48 = v6;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v8;
    }

    v5 = *(v2 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v52 = v11;
        v13 = v12 | (v11 << 6);
        v14 = *(*(v1 + 48) + v13);
        v15 = *(*(v1 + 56) + 8 * v13);
        v16 = 0xD000000000000014;
        if (v14 == 3)
        {
          v16 = 0xD000000000000012;
        }

        v17 = 0x8000000100443BF0;
        if (v14 == 3)
        {
          v17 = 0x8000000100443BD0;
        }

        if (v14 == 2)
        {
          v16 = 0xD000000000000013;
          v17 = 0x8000000100443BB0;
        }

        v18 = 0x6979616C50776F6ELL;
        if (v14)
        {
          v18 = 0x6E69726F7272696DLL;
        }

        v19 = 0xEA0000000000676ELL;
        if (v14)
        {
          v19 = 0xE900000000000067;
        }

        if (v14 <= 1)
        {
          v16 = v18;
        }

        v56 = v16;
        if (v14 <= 1)
        {
          v20 = v19;
        }

        else
        {
          v20 = v17;
        }

        v21 = v8[2];

        if (v21)
        {
          v22 = sub_10000698C(v56, v20);
          v24 = v23;

          v55 = _swiftEmptyArrayStorage;
          if (v24)
          {
            v55 = *(v8[7] + 8 * v22);
          }
        }

        else
        {

          v55 = _swiftEmptyArrayStorage;
        }

        v53 = v20;
        v54 = v8;
        if (v15 >> 62)
        {
          v25 = _CocoaArrayWrapper.endIndex.getter();
          if (!v25)
          {
LABEL_41:

            goto LABEL_42;
          }
        }

        else
        {
          v25 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v25)
          {
            goto LABEL_41;
          }
        }

        sub_1000089FC(0, v25 & ~(v25 >> 63), 0);
        if (v25 < 0)
        {
          goto LABEL_56;
        }

        v51 = v5;
        v26 = 0;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v27 = *(v15 + 8 * v26 + 32);
          }

          v28 = Activity.id.getter();
          v30 = v29;

          v32 = _swiftEmptyArrayStorage[2];
          v31 = _swiftEmptyArrayStorage[3];
          if (v32 >= v31 >> 1)
          {
            sub_1000089FC((v31 > 1), v32 + 1, 1);
          }

          ++v26;
          _swiftEmptyArrayStorage[2] = v32 + 1;
          v33 = &_swiftEmptyArrayStorage[2 * v32];
          v33[4] = v28;
          v33[5] = v30;
        }

        while (v25 != v26);

        v2 = v49;
        v1 = v50;
        v6 = v48;
        v5 = v51;
LABEL_42:
        sub_10021B8A8(_swiftEmptyArrayStorage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = sub_10000698C(v56, v53);
        v37 = v54[2];
        v38 = (v36 & 1) == 0;
        v39 = __OFADD__(v37, v38);
        v40 = v37 + v38;
        if (v39)
        {
          goto LABEL_55;
        }

        v41 = v36;
        if (v54[3] < v40)
        {
          sub_100219B20(v40, isUniquelyReferenced_nonNull_native);
          v35 = sub_10000698C(v56, v53);
          if ((v41 & 1) != (v42 & 1))
          {
            goto LABEL_58;
          }

LABEL_47:
          v8 = v54;
          if (v41)
          {
            goto LABEL_5;
          }

          goto LABEL_48;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_47;
        }

        v46 = v35;
        sub_10021A724();
        v35 = v46;
        v8 = v54;
        if (v41)
        {
LABEL_5:
          v9 = v8[7];
          v10 = *(v9 + 8 * v35);
          *(v9 + 8 * v35) = v55;

          v7 = v52;
          if (!v5)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

LABEL_48:
        v8[(v35 >> 6) + 8] |= 1 << v35;
        v43 = (v8[6] + 16 * v35);
        *v43 = v56;
        v43[1] = v53;
        *(v8[7] + 8 * v35) = v55;
        v44 = v8[2];
        v39 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v39)
        {
          goto LABEL_57;
        }

        v8[2] = v45;
        v7 = v52;
        if (!v5)
        {
          goto LABEL_7;
        }

LABEL_6:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100384DBC()
{
  static os_log_type_t.default.getter();
  v14 = sub_1001D8BC4();
  v0 = *v14;
  os_log(_:dso:log:_:_:)();

  sub_1001BC5A8(&qword_100528AA0, &qword_10045B178);
  result = static Activity.activities.getter();
  v2 = result;
  if (!(result >> 62))
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    swift_beginAccess();
    v12 = *(v13 + 16);
    *(v13 + 16) = &_swiftEmptyDictionarySingleton;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v3 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v2 + 8 * v4 + 32);
      }

      ++v4;
      static os_log_type_t.default.getter();
      v5 = *v14;
      sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_10044EC70;
      v7 = v5;
      v8 = Activity.id.getter();
      v10 = v9;
      *(v6 + 56) = &type metadata for String;
      *(v6 + 64) = sub_100008FEC();
      *(v6 + 32) = v8;
      *(v6 + 40) = v10;
      os_log(_:dso:log:_:_:)();
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_100384FCC(int a1, uint64_t a2)
{
  v5 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v178 = &v166 - v7;
  v8 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  *&v188 = &v166 - v10;
  v11 = type metadata accessor for MediaLiveActivityAttributes.ContentState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v187 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v166 - v16;
  v18 = type metadata accessor for MediaLiveActivityAttributes();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  if ((sub_1003896A4(a1) & 1) == 0)
  {
    return v23;
  }

  v166 = v2;
  v181 = 0xD000000000000017;
  static os_log_type_t.default.getter();
  v24 = a1;
  v170 = sub_1001D8BC4();
  v25 = *v170;
  v171 = sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100450890;
  v182 = v24;
  v184 = v12;
  v173 = v18;
  v172 = v19;
  v185 = v17;
  v177 = v22;
  if (v24 <= 1u)
  {
    if (v24)
    {
      v27 = 0xE900000000000067;
      v28 = 0x6E69726F7272696DLL;
    }

    else
    {
      v27 = 0xEA0000000000676ELL;
      v28 = 0x6979616C50776F6ELL;
    }
  }

  else if (v24 == 2)
  {
    v27 = 0x8000000100443BB0;
    v28 = 0xD000000000000013;
  }

  else if (v24 == 3)
  {
    v27 = 0x8000000100443BD0;
    v28 = 0xD000000000000012;
  }

  else
  {
    v27 = 0x8000000100443BF0;
    v28 = 0xD000000000000014;
  }

  *(v26 + 56) = &type metadata for String;
  v29 = v26;
  v169 = sub_100008FEC();
  v29[8] = v169;
  v29[4] = v28;
  v29[5] = v27;
  v29[12] = sub_1001BC5A8(&qword_100528A88, &qword_10045B160);
  v29[13] = sub_10038B824();
  v29[9] = a2;
  v30 = v25;

  os_log(_:dso:log:_:_:)();

  v31 = sub_1001BC5A8(&qword_100528AE0, &qword_10045B1C8);
  v32 = a2;
  v33 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v35 = &v166 - v34;
  v36 = type metadata accessor for ActivityPresentationOptions();
  v189 = *(v36 - 8);
  v37 = *(v189 + 56);
  v186 = v35;
  v38 = v35;
  v39 = v36;
  v175 = v37;
  (v37)(v38, 1, 1, v36);
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;
  v43 = *(v32 + 16);
  v176 = v33;
  v174 = v32;
  if (v43)
  {
    v44 = v40;

    v45 = sub_10000698C(v44, v42);
    v47 = v46;

    v49 = v182;
    if (v47)
    {
      sub_100020E0C(*(v32 + 56) + 32 * v45, &v193);
      v48 = swift_dynamicCast();
    }

    v33 = v176;
  }

  else
  {

    v49 = v182;
  }

  v183 = v39;
  v180 = v11;
  v168 = &v166;
  if (v49 <= 1u)
  {
    v179 = 0x8000000100440A90;
    if (!v49)
    {
      result = [objc_opt_self() currentSettings];
      if (!result)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v61 = result;
      v62 = [result supportLiveActivityBanner];

      v167 = &v166;
      __chkstk_darwin(v63);
      v64 = &v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1001BC5A8(&qword_100528AE8, &qword_10045B1D0);
      v65 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
      v66 = *(v65 - 8);
      v67 = *(v66 + 72);
      v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v69 = (v66 + 104);
      v70 = 2 * v67;
      v71 = swift_allocObject();
      if (v62)
      {
        *(v71 + 16) = xmmword_1004592F0;
        v72 = v71 + v68;
        v73 = *v69;
        (*v69)(v72, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v65);
        v73(v72 + v67, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v65);
        v73(v72 + v70, enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:), v65);
        v74 = enum case for ActivityPresentationOptions.ActivityPresentationDestination.ambient(_:);
        v75 = v72 + 3 * v67;
      }

      else
      {
        *(v71 + 16) = xmmword_10044F530;
        v116 = v71 + v68;
        v73 = *v69;
        (*v69)(v116, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v65);
        v73(v116 + v67, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v65);
        v74 = enum case for ActivityPresentationOptions.ActivityPresentationDestination.ambient(_:);
        v75 = v116 + v70;
      }

      v73(v75, v74, v65);
      ActivityPresentationOptions.init(destinations:)();
      (v175)(v64, 0, 1, v39);
      v117 = v64;
      v118 = v39;
      v55 = v186;
      sub_10038BABC(v117, v186);
      v92 = v174;
      result = (*(v189 + 48))(v55, 1, v118);
      v11 = v180;
      v103 = v185;
      if (result == 1)
      {
        goto LABEL_56;
      }

      ActivityPresentationOptions.isUserDismissalAllowedOnLockScreen.setter();
      v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v120;
      v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v194 = &type metadata for String;
      *&v193 = v122;
      *(&v193 + 1) = v123;
      sub_1001C4088(&v193, &v192);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v191 = v92;
      sub_10022D818(&v192, v119, v121, isUniquelyReferenced_nonNull_native);

      goto LABEL_39;
    }

    __chkstk_darwin(v48);
    sub_1001BC5A8(&qword_100528AE8, &qword_10045B1D0);
    v104 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
    v105 = *(v104 - 8);
    v106 = *(v105 + 72);
    v107 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_10044EC70;
    (*(v105 + 104))(v108 + v107, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v104);
    ActivityPresentationOptions.init(destinations:)();
    (v175)(&v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v39);
    v109 = v39;
    v55 = v186;
    sub_10038BABC(&v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v186);
    result = (*(v189 + 48))(v55, 1, v109);
    if (result == 1)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    ActivityPresentationOptions.isUserDismissalAllowedOnLockScreen.setter();
    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v111;
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v194 = &type metadata for String;
    *&v193 = v113;
    *(&v193 + 1) = v114;
    sub_1001C4088(&v193, &v192);
    v92 = v174;
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v191 = v92;
    sub_10022D818(&v192, v110, v112, v115);

LABEL_35:
    v103 = v185;
LABEL_39:
    v33 = v176;
LABEL_40:

    MediaLiveActivityAttributes.init(attributes:)();
    sub_100389540(v92);
    v125 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
    v175 = &v166;
    v174 = v125;
    v167 = *(v125 - 8);
    v126 = v167[8];
    __chkstk_darwin(v125);
    v128 = &v166 - v127;
    (*(v184 + 16))(v187, v103, v11);
    v129 = type metadata accessor for Date();
    (*(*(v129 - 8) + 56))(v188, 1, 1, v129);
    sub_10038B7E0(&qword_100528A70);
    sub_10038B7E0(&qword_100528A78);
    sub_10038B7E0(&qword_100528A80);
    v130 = ActivityContent.init(state:staleDate:relevanceScore:)();
    __chkstk_darwin(v130);
    sub_10001D9AC(v55, &v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_100528AE0, &qword_10045B1C8);
    result = (*(v189 + 48))(&v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v183);
    if (result != 1)
    {
      sub_1001BC5A8(&qword_100528AA0, &qword_10045B178);
      sub_1001BC5A8(&qword_100528AF0, &qword_10045B1D8);
      v131 = *(type metadata accessor for ActivityContentSource.Request() - 8);
      v132 = *(v131 + 72);
      v133 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v134 = swift_allocObject();
      v188 = xmmword_10044EC70;
      *(v134 + 16) = xmmword_10044EC70;
      v135 = (v134 + v133);
      *v135 = 0;
      v135[1] = 0;
      (*(v131 + 104))();
      v23 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();

      (*(v189 + 8))(&v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v183);
      v136 = Activity.id.getter();
      v138 = v137;
      v139 = type metadata accessor for TaskPriority();
      v140 = v178;
      (*(*(v139 - 8) + 56))(v178, 1, 1, v139);
      v141 = swift_allocObject();
      v141[2] = 0;
      v141[3] = 0;
      v141[4] = v23;

      v142 = sub_1001BF864(0, 0, v140, &unk_10045B1E8, v141);
      v143 = v166;
      swift_beginAccess();
      v144 = *(v143 + 24);
      v145 = swift_isUniquelyReferenced_nonNull_native();
      *&v192 = *(v143 + 24);
      *(v143 + 24) = 0x8000000000000000;
      v146 = v136;
      v147 = v143;
      sub_10038A794(v142, v146, v138, v145);

      *(v143 + 24) = v192;
      swift_endAccess();
      swift_beginAccess();
      v148 = *(v143 + 16);
      if (*(v148 + 16))
      {
        v149 = *(v143 + 16);

        v150 = sub_100389ADC(v182);
        v151 = v180;
        v152 = v170;
        v153 = v169;
        if (v154)
        {
          v155 = *(*(v148 + 56) + 8 * v150);
        }

        else
        {
          v155 = _swiftEmptyArrayStorage;
        }

        v156 = v173;
      }

      else
      {
        v155 = _swiftEmptyArrayStorage;
        v151 = v180;
        v156 = v173;
        v152 = v170;
        v153 = v169;
      }

      v191 = v155;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v191 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v191 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v165 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v157 = v191;
      swift_beginAccess();
      v158 = *(v147 + 16);
      v159 = swift_isUniquelyReferenced_nonNull_native();
      v190 = *(v147 + 16);
      *(v147 + 16) = 0x8000000000000000;
      sub_10038A648(v157, v182, v159);
      *(v147 + 16) = v190;
      swift_endAccess();
      static os_log_type_t.default.getter();
      v160 = *v152;
      v161 = swift_allocObject();
      *(v161 + 16) = v188;
      v162 = v160;
      v163 = Activity.id.getter();
      *(v161 + 56) = &type metadata for String;
      *(v161 + 64) = v153;
      *(v161 + 32) = v163;
      *(v161 + 40) = v164;
      os_log(_:dso:log:_:_:)();

      (v167[1])(v128, v174);
      (*(v184 + 8))(v185, v151);
      (*(v172 + 8))(v177, v156);

      sub_1000038A4(v186, &qword_100528AE0, &qword_10045B1C8);
      return v23;
    }

    __break(1u);
    goto LABEL_52;
  }

  if (v49 != 2)
  {
    v179 = 0x8000000100440AB0;
    __chkstk_darwin(v48);
    sub_1001BC5A8(&qword_100528AE8, &qword_10045B1D0);
    v50 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
    if (v49 == 3)
    {
      v51 = *(v50 - 8);
      v52 = *(v51 + 72);
      v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10044EC70;
      (*(v51 + 104))(v54 + v53, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v50);
      ActivityPresentationOptions.init(destinations:)();
      (v175)(&v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v39);
      v55 = v186;
      sub_10038BABC(&v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v186);
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
      v59 = &MRUIContextGroupSessionNearby;
    }

    else
    {
      v94 = *(v50 - 8);
      v95 = *(v94 + 72);
      v96 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_10044EC70;
      (*(v94 + 104))(v97 + v96, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v50);
      ActivityPresentationOptions.init(destinations:)();
      (v175)(&v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v39);
      v55 = v186;
      sub_10038BABC(&v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v186);
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v98;
      v59 = &MRUIContextGroupSession;
    }

    v99 = *v59;
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v194 = &type metadata for String;
    *&v193 = v100;
    *(&v193 + 1) = v101;
    sub_1001C4088(&v193, &v192);
    v92 = v174;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v191 = v92;
    sub_10022D818(&v192, v56, v58, v102);

    v181 = 0xD00000000000001ELL;
    v103 = v185;
    goto LABEL_40;
  }

  v179 = 0x8000000100440A90;
  result = [objc_opt_self() currentSettings];
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v76 = result;
  v77 = [result supportManyRecommendationsPlatters];

  __chkstk_darwin(v78);
  sub_1001BC5A8(&qword_100528AE8, &qword_10045B1D0);
  v79 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v80 = *(v79 - 8);
  v81 = *(v80 + 72);
  v82 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_10044EC70;
  (*(v80 + 104))(v83 + v82, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v79);
  ActivityPresentationOptions.init(destinations:)();
  (v175)(&v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v39);
  v84 = v39;
  v55 = v186;
  sub_10038BABC(&v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v186);
  result = (*(v189 + 48))(v55, 1, v84);
  if (result != 1)
  {
    v85 = v179;
    if (v77)
    {
      v85 = 0x8000000100440AB0;
    }

    v179 = v85;
    v86 = 0xD000000000000017;
    if (v77)
    {
      v86 = 0xD00000000000001ELL;
    }

    v181 = v86;
    ActivityPresentationOptions.isUserDismissalAllowedOnLockScreen.setter();
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v194 = &type metadata for String;
    *&v193 = v90;
    *(&v193 + 1) = v91;
    sub_1001C4088(&v193, &v192);
    v92 = v174;
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v191 = v92;
    sub_10022D818(&v192, v87, v89, v93);

    v11 = v180;
    goto LABEL_35;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_10038698C()
{
  v1 = v0[3];
  v2 = sub_1001BC5A8(&qword_100528AB0, &qword_10045B188);
  v0[4] = v2;
  v3 = *(v2 - 8);
  v0[5] = v3;
  v4 = *(v3 + 64) + 15;
  v0[6] = swift_task_alloc();
  v5 = sub_1001BC5A8(&qword_100528AB8, &qword_10045B190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  dispatch thunk of Activity.activityStateUpdates.getter();
  Activity.ActivityStateUpdates.makeAsyncIterator()();
  (*(v6 + 8))(v8, v5);

  v9 = *(*(sub_1001BC5A8(&qword_100528AC0, &qword_10045B198) - 8) + 64) + 15;
  v0[7] = swift_task_alloc();
  v10 = sub_10038B9C0();
  v11 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_100386B90;
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[4];

  return dispatch thunk of AsyncIteratorProtocol.next()(v13, v15, v10);
}

uint64_t sub_100386B90()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_100387120;
  }

  else
  {
    v3 = sub_100386CA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100386CC0()
{
  v1 = v0[7];
  v2 = type metadata accessor for ActivityState();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[5] + 8))(v0[6], v0[4]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[3];
    v35 = *(v3 + 64) + 15;
    v7 = swift_task_alloc();
    (*(v3 + 32))(v7, v1, v2);
    static os_log_type_t.default.getter();
    v34 = sub_1001D8BC4();
    v8 = *v34;
    sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100450890;
    v36 = v3;
    v10 = v8;
    v11 = Activity.id.getter();
    v13 = v12;
    *(v9 + 56) = &type metadata for String;
    v14 = sub_100008FEC();
    *(v9 + 64) = v14;
    *(v9 + 32) = v11;
    *(v9 + 40) = v13;
    swift_task_alloc();
    (*(v36 + 16))();
    v15 = String.init<A>(describing:)();
    v17 = v16;

    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v14;
    v18 = v14;
    *(v9 + 72) = v15;
    *(v9 + 80) = v17;
    os_log(_:dso:log:_:_:)();

    v19 = swift_task_alloc();
    (*(v36 + 104))(v19, enum case for ActivityState.dismissed(_:), v2);
    LOBYTE(v15) = static ActivityState.== infix(_:_:)();
    v20 = *(v36 + 8);
    v20(v19, v2);

    if (v15)
    {
      v21 = static Task<>.isCancelled.getter();
      v22 = v0[3];
      if (v21)
      {
        static os_log_type_t.info.getter();
      }

      else
      {
        static os_log_type_t.default.getter();
      }

      v23 = *v34;
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_10044EC70;
      v25 = v23;
      v26 = Activity.id.getter();
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = v18;
      *(v24 + 32) = v26;
      *(v24 + 40) = v27;
      os_log(_:dso:log:_:_:)();
    }

    v20(v7, v2);

    v28 = sub_10038B9C0();
    v29 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v30 = swift_task_alloc();
    v0[8] = v30;
    *v30 = v0;
    v30[1] = sub_100386B90;
    v32 = v0[6];
    v31 = v0[7];
    v33 = v0[4];

    return dispatch thunk of AsyncIteratorProtocol.next()(v31, v33, v28);
  }
}

uint64_t sub_100387120()
{
  *(v0 + 16) = *(v0 + 72);
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1003871AC(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v78 = a2;
  result = swift_beginAccess();
  v8 = *(v3 + 16);
  if (!*(v8 + 16))
  {
    return result;
  }

  v9 = sub_100389ADC(a1);
  if ((v10 & 1) == 0)
  {
  }

  v75 = a1;
  v11 = *(*(v8 + 56) + 8 * v9);

  v81 = _swiftEmptyArrayStorage;
  v76 = v4;
  if (v11 >> 62)
  {
LABEL_37:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_38:
    v26 = _swiftEmptyArrayStorage;
    v27 = _swiftEmptyArrayStorage;
    goto LABEL_39;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_38;
  }

LABEL_5:
  v13 = 0;
  v14 = v11 & 0xC000000000000001;
  do
  {
    if (v14)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_18:
        __break(1u);
      }
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v16 = *(v11 + 8 * v13 + 32);

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_18;
      }
    }

    if (Activity.id.getter() == v78 && v18 == a3)
    {

LABEL_7:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v15 = v81[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_8;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_7;
    }

LABEL_8:
    ++v13;
  }

  while (v17 != v12);
  v20 = 0;
  v74 = v81;
  v81 = _swiftEmptyArrayStorage;
  while (v14)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_33;
    }

LABEL_26:
    if (Activity.id.getter() == v78 && v23 == a3)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v25 = v81[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }
    }

    ++v20;
    if (v22 == v12)
    {
      goto LABEL_34;
    }
  }

  if (v20 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

  v21 = *(v11 + 8 * v20 + 32);

  v22 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    goto LABEL_26;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  v26 = v81;
  v27 = v74;
LABEL_39:

  v28 = v76;
  swift_beginAccess();
  v29 = *(v76 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = *(v76 + 16);
  *(v76 + 16) = 0x8000000000000000;
  sub_10038A648(v26, v75, isUniquelyReferenced_nonNull_native);
  *(v28 + 16) = v80;
  swift_endAccess();
  result = v27;
  if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
    result = v27;
    if (!v31)
    {
    }

LABEL_42:
    v73 = a3;
    if (v31 >= 1)
    {
      v71 = result & 0xC000000000000001;
      swift_beginAccess();
      v32 = v27;
      v33 = 0;
      v69[3] = 0x8000000100443BF0;
      v69[2] = 0x8000000100443BD0;
      v69[1] = 0x8000000100443BB0;
      v70 = xmmword_100450890;
      v74 = v27;
      v72 = v31;
      do
      {
        if (v71)
        {
          v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v46 = *(v32 + 8 * v33 + 32);
        }

        v47 = v73;
        static os_log_type_t.default.getter();
        v48 = *sub_1001D8BC4();
        sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
        v49 = swift_allocObject();
        *(v49 + 16) = v70;
        v50 = v48;
        v51 = Activity.id.getter();
        v53 = v52;
        *(v49 + 56) = &type metadata for String;
        v54 = sub_100008FEC();
        *(v49 + 64) = v54;
        *(v49 + 32) = v51;
        *(v49 + 40) = v53;
        if (v75 <= 1u)
        {
          if (v75)
          {
            v57 = 0xE900000000000067;
            v55 = 0x6E69726F7272696DLL;
          }

          else
          {
            v57 = 0xEA0000000000676ELL;
            v55 = 0x6979616C50776F6ELL;
          }
        }

        else
        {
          if (v75 == 2)
          {
            v55 = 0xD000000000000013;
            v56 = &v82;
          }

          else if (v75 == 3)
          {
            v55 = 0xD000000000000012;
            v56 = &v83;
          }

          else
          {
            v55 = 0xD000000000000014;
            v56 = &v84;
          }

          v57 = *(v56 - 32);
        }

        *(v49 + 96) = &type metadata for String;
        *(v49 + 104) = v54;
        *(v49 + 72) = v55;
        *(v49 + 80) = v57;
        os_log(_:dso:log:_:_:)();

        v58 = *(v28 + 24);
        if (*(v58 + 16))
        {
          v59 = *(v28 + 24);

          v60 = sub_10000698C(v78, v47);
          if (v61)
          {
            v62 = *(*(v58 + 56) + 8 * v60);

            Task.cancel()();
          }

          else
          {
          }
        }

        v77 = v46;
        swift_beginAccess();
        v63 = *(v28 + 24);

        v64 = sub_10000698C(v78, v47);
        LOBYTE(v63) = v65;

        if (v63)
        {
          v66 = *(v28 + 24);
          v67 = swift_isUniquelyReferenced_nonNull_native();
          v68 = *(v28 + 24);
          v79 = v68;
          *(v28 + 24) = 0x8000000000000000;
          if (!v67)
          {
            sub_10038AA6C();
            v68 = v79;
          }

          v34 = *(*(v68 + 48) + 16 * v64 + 8);

          v35 = *(*(v68 + 56) + 8 * v64);

          sub_1001DEE44(v64, v68);
          *(v28 + 24) = v68;
        }

        ++v33;
        swift_endAccess();
        v36 = sub_1001BC5A8(&qword_100528AA8, &qword_10045B180);
        v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v36 - 8);
        v39 = v69 - v38;
        v40 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
        (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
        v41 = type metadata accessor for ActivityUIDismissalPolicy();
        v42 = *(v41 - 8);
        v43 = *(v42 + 64);
        __chkstk_darwin(v41);
        v45 = v69 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
        static ActivityUIDismissalPolicy.immediate.getter();
        dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

        (*(v42 + 8))(v45, v41);
        sub_1000038A4(v39, &qword_100528AA8, &qword_10045B180);
        v28 = v76;
        v32 = v74;
      }

      while (v72 != v33);
    }

    __break(1u);
  }

  else
  {
    v31 = *(v27 + 16);
    if (v31)
    {
      goto LABEL_42;
    }
  }

  return result;
}

uint64_t sub_1003879BC(unsigned __int8 a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = sub_100389ADC(a1);
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  v7 = v5;
  v8 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + 16);
  v72 = v10;
  *(v2 + 16) = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10038A910();
    v10 = v72;
  }

  v11 = v7;
  v12 = *(*(v10 + 56) + 8 * v7);
  sub_10038A3F0(v11, v10);
  v70 = v2;
  *(v2 + 16) = v10;
  result = swift_endAccess();
  v14 = v12;
  if (!(v12 >> 62))
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_6;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = v12;
  v15 = result;
  if (!result)
  {
  }

LABEL_6:
  if (v15 >= 1)
  {
    v67 = v14 & 0xC000000000000001;
    v16 = v14;
    swift_beginAccess();
    v17 = v16;
    v18 = 0;
    v63 = 0x8000000100443BD0;
    v64 = 0x8000000100443BF0;
    v62 = 0x8000000100443BB0;
    v66 = xmmword_100450890;
    v19 = a1;
    v68 = v15;
    v69 = v16;
    v65 = a1;
    do
    {
      if (v67)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v32 = *(v17 + 8 * v18 + 32);
      }

      v33 = v70;
      static os_log_type_t.default.getter();
      v34 = *sub_1001D8BC4();
      sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
      v35 = swift_allocObject();
      *(v35 + 16) = v66;
      v36 = v34;
      v37 = Activity.id.getter();
      v39 = v38;
      *(v35 + 56) = &type metadata for String;
      v40 = sub_100008FEC();
      *(v35 + 64) = v40;
      *(v35 + 32) = v37;
      *(v35 + 40) = v39;
      if (v19 <= 1)
      {
        if (v19)
        {
          v42 = 0xE900000000000067;
          v41 = 0x6E69726F7272696DLL;
        }

        else
        {
          v42 = 0xEA0000000000676ELL;
          v41 = 0x6979616C50776F6ELL;
        }
      }

      else
      {
        v41 = 0xD000000000000012;
        if (v19 == 2)
        {
          v41 = 0xD000000000000013;
          v42 = v62;
        }

        else if (v19 == 3)
        {
          v42 = v63;
        }

        else
        {
          v41 = 0xD000000000000014;
          v42 = v64;
        }
      }

      *(v35 + 96) = &type metadata for String;
      *(v35 + 104) = v40;
      *(v35 + 72) = v41;
      *(v35 + 80) = v42;
      os_log(_:dso:log:_:_:)();

      v43 = Activity.id.getter();
      v45 = v44;
      v46 = *(v33 + 24);
      if (*(v46 + 16) && (v47 = v43, v48 = *(v33 + 24), , v49 = sub_10000698C(v47, v45), v51 = v50, , (v51 & 1) != 0))
      {
        v52 = *(*(v46 + 56) + 8 * v49);

        Task.cancel()();
      }

      else
      {
      }

      v53 = Activity.id.getter();
      v55 = v54;
      swift_beginAccess();
      v56 = *(v33 + 24);
      v57 = sub_10000698C(v53, v55);
      LOBYTE(v56) = v58;

      if (v56)
      {
        v59 = *(v33 + 24);
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v61 = *(v33 + 24);
        v71 = v61;
        *(v33 + 24) = 0x8000000000000000;
        if (!v60)
        {
          sub_10038AA6C();
          v61 = v71;
        }

        v20 = *(*(v61 + 48) + 16 * v57 + 8);

        v21 = *(*(v61 + 56) + 8 * v57);

        sub_1001DEE44(v57, v61);
        *(v33 + 24) = v61;
      }

      ++v18;
      swift_endAccess();
      v22 = sub_1001BC5A8(&qword_100528AA8, &qword_10045B180);
      v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v22 - 8);
      v25 = &v62 - v24;
      v26 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
      (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
      v27 = type metadata accessor for ActivityUIDismissalPolicy();
      v28 = *(v27 - 8);
      v29 = *(v28 + 64);
      __chkstk_darwin(v27);
      v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      static ActivityUIDismissalPolicy.immediate.getter();
      dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

      (*(v28 + 8))(v31, v27);
      sub_1000038A4(v25, &qword_100528AA8, &qword_10045B180);
      v17 = v69;
      v19 = v65;
    }

    while (v68 != v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_100387F7C(uint64_t a1, unsigned __int8 a2)
{
  v5 = 0xE900000000000067;
  v6 = 0x6E69726F7272696DLL;
  if (!a2)
  {
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    return result;
  }

  swift_beginAccess();
  v9 = *(v2 + 16);
  if (*(v9 + 16))
  {
    v10 = *(v2 + 16);

    v11 = sub_100389ADC(a2);
    if (v12)
    {
      v13 = *(*(v9 + 56) + 8 * v11);

      if (v13 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result)
        {
LABEL_10:
          if ((v13 & 0xC000000000000001) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v14 = *(v13 + 32);
          }

          sub_1003882B4(a1, v14);
        }
      }

      else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }
    }
  }

  static os_log_type_t.error.getter();
  v15 = *sub_1001D8BC4();
  sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10044EC70;
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v6 = 0xD000000000000012;
      v5 = 0x8000000100443BD0;
    }

    else
    {
      v5 = 0x8000000100443BF0;
      v6 = 0xD000000000000014;
    }
  }

  else if (a2 != 1)
  {
    v5 = 0x8000000100443BB0;
    v6 = 0xD000000000000013;
  }

  *(v16 + 56) = &type metadata for String;
  v17 = v16;
  *(v16 + 64) = sub_100008FEC();
  *(v17 + 32) = v6;
  *(v17 + 40) = v5;
  v18 = v15;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1003882B4(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v54 = &v43 - v6;
  v7 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v43 - v11;
  v13 = type metadata accessor for MediaLiveActivityAttributes.ContentState();
  v14 = *(v13 - 8);
  v55 = v13;
  v56 = v14;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v43 - v18;
  v52 = &v43 - v18;
  sub_100389540(a1);
  v20 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
  v49 = *(v20 - 8);
  v21 = v49;
  v22 = *(v49 + 64);
  __chkstk_darwin(v20);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = a2;
  dispatch thunk of Activity.content.getter();
  v51 = v12;
  ActivityContent.staleDate.getter();
  v24 = *(v21 + 8);
  v25 = v24(&v43 - v23, v20);
  v53 = v24;
  v50 = v21 + 8;
  __chkstk_darwin(v25);
  v47 = v23;
  dispatch thunk of Activity.content.getter();
  ActivityContent.relevanceScore.getter();
  v26 = v24(&v43 - v23, v20);
  __chkstk_darwin(v26);
  v27 = &v43 - v23;
  (*(v56 + 16))(v44, v19, v55);
  sub_10001D9AC(v12, v45, &qword_1005228D8, &unk_100450060);
  sub_10038B7E0(&qword_100528A70);
  sub_10038B7E0(&qword_100528A78);
  sub_10038B7E0(&qword_100528A80);
  ActivityContent.init(state:staleDate:relevanceScore:)();
  static os_log_type_t.default.getter();
  v28 = *sub_1001D8BC4();
  sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100450890;
  *(v29 + 56) = sub_1001BC5A8(&qword_100528A88, &qword_10045B160);
  *(v29 + 64) = sub_10038B824();
  *(v29 + 32) = v48;
  v30 = v28;

  v31 = v46;
  v32 = Activity.id.getter();
  v34 = v33;
  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = sub_100008FEC();
  *(v29 + 72) = v32;
  *(v29 + 80) = v34;
  os_log(_:dso:log:_:_:)();

  v35 = type metadata accessor for TaskPriority();
  v36 = v54;
  v37 = (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
  __chkstk_darwin(v37);
  v38 = &v43 - v47;
  v39 = v49;
  (*(v49 + 16))(&v43 - v47, v27, v20);
  v40 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 4) = v31;
  (*(v39 + 32))(&v41[v40], v38, v20);

  sub_1001BF864(0, 0, v36, &unk_10045B170, v41);

  v53(v27, v20);
  sub_1000038A4(v51, &qword_1005228D8, &unk_100450060);
  return (*(v56 + 8))(v52, v55);
}

uint64_t sub_1003888B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(&async function pointer to dispatch thunk of Activity.update(_:) + 1);
  v10 = (&async function pointer to dispatch thunk of Activity.update(_:) + async function pointer to dispatch thunk of Activity.update(_:));
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_100009F34;

  return v10(a5);
}

uint64_t sub_100388968(unsigned __int8 a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  swift_beginAccess();
  v13 = *(v4 + 16);
  if (*(v13 + 16))
  {
    v14 = *(v4 + 16);

    v15 = sub_100389ADC(a1);
    if (v16)
    {
      v17 = *(*(v13 + 56) + 8 * v15);

      v32 = v12;
      if (v17 >> 62)
      {
        goto LABEL_21;
      }

      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        while (1)
        {
          v19 = 0;
          v33 = v17 & 0xC000000000000001;
          while (v33)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
LABEL_16:
              __break(1u);
              goto LABEL_22;
            }

LABEL_9:
            if (Activity.id.getter() == a2 && v22 == a3)
            {

LABEL_19:

              v24 = type metadata accessor for TaskPriority();
              v25 = v32;
              (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
              v26 = swift_allocObject();
              *(v26 + 16) = 0;
              *(v26 + 24) = 0;
              *(v26 + 32) = v20;
              *(v26 + 40) = a4;
              sub_1001BF864(0, 0, v25, &unk_10045B1C0, v26);
            }

            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v23)
            {
              goto LABEL_19;
            }

            ++v19;
            if (v21 == v18)
            {
              goto LABEL_22;
            }
          }

          if (v19 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_21:
          v18 = _CocoaArrayWrapper.endIndex.getter();
          if (!v18)
          {
            goto LABEL_22;
          }
        }

        v20 = *(v17 + 8 * v19 + 32);

        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_16;
        }

        goto LABEL_9;
      }
    }

LABEL_22:
  }

  static os_log_type_t.error.getter();
  v28 = *sub_1001D8BC4();
  sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10044EC70;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = sub_100008FEC();
  *(v29 + 32) = a2;
  *(v29 + 40) = a3;
  v30 = v28;

  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100388C98(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  v6 = *(*(sub_1001BC5A8(&qword_1005228D8, &unk_100450060) - 8) + 64) + 15;
  *(v5 + 32) = swift_task_alloc();
  v7 = type metadata accessor for MediaLiveActivityAttributes.ContentState();
  *(v5 + 40) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100388D68, 0, 0);
}

uint64_t sub_100388D68()
{
  v15 = v0[6];
  v16 = v0[5];
  v1 = v0[4];
  v2 = v0[3];
  v3 = v0[2];
  v4 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
  v0[7] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = swift_task_alloc();
  dispatch thunk of Activity.content.getter();
  ActivityContent.state.getter();
  v9 = *(v5 + 8);
  v0[9] = v9;
  v0[10] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v8, v4);
  v10 = swift_task_alloc();
  dispatch thunk of Activity.content.getter();
  ActivityContent.staleDate.getter();
  v9(v10, v4);
  sub_10038B7E0(&qword_100528A70);
  sub_10038B7E0(&qword_100528A78);
  sub_10038B7E0(&qword_100528A80);
  ActivityContent.init(state:staleDate:relevanceScore:)();

  v11 = *(&async function pointer to dispatch thunk of Activity.update(_:) + 1);
  v17 = (&async function pointer to dispatch thunk of Activity.update(_:) + async function pointer to dispatch thunk of Activity.update(_:));
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_100388FE0;
  v13 = v0[2];

  return v17(v7);
}

uint64_t sub_100388FE0()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_1003890DC, 0, 0);
}

uint64_t sub_1003890DC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 72))(*(v0 + 64), *(v0 + 56));

  v4 = *(v0 + 8);

  return v4();
}

char *sub_10038916C(unsigned __int8 a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!*(v3 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = sub_100389ADC(a1);
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_16:

    return _swiftEmptyArrayStorage;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_5:
  result = sub_1000089FC(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = Activity.id.getter();
      v13 = v12;

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1000089FC((v14 > 1), v15 + 1, 1);
      }

      ++v9;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
    }

    while (v7 != v9);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100389300(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v24 = v4;
  v21 = v9;
  v22 = v4 + 64;
  if (v8)
  {
LABEL_4:
    v12 = v11;
  }

  else
  {
    do
    {
LABEL_5:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_30;
      }

      if (v12 >= v9)
      {
        v20 = 5;
LABEL_27:

        return v20;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
    }

    while (!v8);
  }

  v13 = __clz(__rbit64(v8)) | (v12 << 6);
  v23 = *(*(v4 + 48) + v13);
  v14 = *(*(v4 + 56) + 8 * v13);

  if (v14 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result;
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  v8 &= v8 - 1;
  while (1)
  {
    if (v15 == v16)
    {

      v11 = v12;
      v4 = v24;
      v9 = v21;
      v5 = v22;
      if (!v8)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if ((v14 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (__OFADD__(v16, 1))
    {
      goto LABEL_28;
    }

LABEL_16:
    if (Activity.id.getter() == a1 && v19 == a2)
    {

LABEL_25:

      v20 = v23;
      goto LABEL_27;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v16;
    if (v17)
    {
      goto LABEL_25;
    }
  }

  if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v18 = *(v14 + 8 * v16 + 32);

  if (!__OFADD__(v16, 1))
  {
    goto LABEL_16;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100389540(uint64_t a1)
{
  MediaLiveActivityAttributes.ContentState.init()();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v4 = sub_10000698C(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_100020E0C(*(a1 + 56) + 32 * v4, v13);
      if (swift_dynamicCast())
      {
        MediaLiveActivityAttributes.ContentState.rawNowPlayingActivityUIState.setter();
      }
    }
  }

  else
  {
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {
  }

  v9 = sub_10000698C(v7, v8);
  v11 = v10;

  if (v11)
  {
    sub_100020E0C(*(a1 + 56) + 32 * v9, v13);
    sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
    result = swift_dynamicCast();
    if (result)
    {
      return MediaLiveActivityAttributes.ContentState.suppressedBundleIdentifiers.setter();
    }
  }

  return result;
}

id sub_1003896A4(unsigned __int8 a1)
{
  if (a1 == 2)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  result = [objc_opt_self() currentSettings];
  if (result)
  {
    v4 = result;
    v5 = [result supportManyRecommendationsPlatters];

    if (v5)
    {
      v6 = 1;
      return (v6 & 1);
    }

LABEL_8:
    v6 = sub_1003897FC(a1) ^ 1;
    return (v6 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003897FC(unsigned __int8 a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16))
  {

    v4 = sub_100389ADC(a1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      if (v6 >> 62)
      {
        goto LABEL_18;
      }

      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        while (1)
        {
          v8 = 0;
          v19 = v6 & 0xFFFFFFFFFFFFFF8;
          v20 = v6 & 0xC000000000000001;
          while (v20)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_19;
            }

LABEL_9:
            v21 = v10;
            v11 = type metadata accessor for ActivityState();
            v23 = &v19;
            v12 = *(v11 - 8);
            v13 = *(v12 + 64);
            __chkstk_darwin(v11);
            v14 = dispatch thunk of Activity.activityState.getter();
            v22 = &v19;
            __chkstk_darwin(v14);
            v15 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v12 + 104))(v15, enum case for ActivityState.dismissed(_:), v11);
            sub_10038B794();
            v16 = dispatch thunk of static Equatable.== infix(_:_:)();
            v17 = *(v12 + 8);
            v17(v15, v11);
            v17(v15, v11);

            if ((v16 & 1) == 0)
            {

              return 1;
            }

            ++v8;
            if (v21 == v7)
            {
              goto LABEL_19;
            }
          }

          if (v8 < *(v19 + 16))
          {
            break;
          }

          __break(1u);
LABEL_18:
          v7 = _CocoaArrayWrapper.endIndex.getter();
          if (!v7)
          {
            goto LABEL_19;
          }
        }

        v9 = *(v6 + 8 * v8 + 32);

        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }
    }

LABEL_19:
  }

  return 0;
}

uint64_t sub_100389A9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_100389ADC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_100389BFC(a1, v4);
}

unint64_t sub_100389BFC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xEA0000000000676ELL;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v19 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v8 = 0x6E69726F7272696DLL;
        }

        else
        {
          v8 = 0x6979616C50776F6ELL;
        }

        if (*(*(v19 + 48) + v4))
        {
          v9 = 0xE900000000000067;
        }

        else
        {
          v9 = 0xEA0000000000676ELL;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0xD000000000000013;
        v9 = 0x8000000100443BB0;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0xD000000000000012;
        }

        else
        {
          v8 = 0xD000000000000014;
        }

        if (v7 == 3)
        {
          v9 = 0x8000000100443BD0;
        }

        else
        {
          v9 = 0x8000000100443BF0;
        }
      }

      v10 = 0xD000000000000014;
      if (v6 == 3)
      {
        v10 = 0xD000000000000012;
        v11 = 0x8000000100443BD0;
      }

      else
      {
        v11 = 0x8000000100443BF0;
      }

      if (v6 == 2)
      {
        v10 = 0xD000000000000013;
        v11 = 0x8000000100443BB0;
      }

      if (v6)
      {
        v12 = 0x6E69726F7272696DLL;
      }

      else
      {
        v12 = 0x6979616C50776F6ELL;
      }

      if (v6)
      {
        v5 = 0xE900000000000067;
      }

      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? v5 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xEA0000000000676ELL;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100389DF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100528AD8, &qword_10045B1B0);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v32 = v3;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v33 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10038A148(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100528AD0, &qword_10045B1A8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
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
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

Swift::Int sub_10038A3F0(Swift::Int result, uint64_t a2)
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
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10038A648(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100389ADC(a2);
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
      sub_100389DF4(v14, a3 & 1);
      v18 = *v4;
      result = sub_100389ADC(a2);
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
      sub_10038A910();
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

uint64_t sub_10038A794(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000698C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10038A148(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000698C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10038AA6C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_10038A910()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100528AD8, &qword_10045B1B0);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_10038AA6C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100528AD0, &qword_10045B1A8);
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

uint64_t sub_10038ABDC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F30;

  return sub_100381DB0(v4, v5, v6, v2, v3);
}

uint64_t _s12mediaremoted18ActivityControllerC016updateNowPlayingB5State_27suppressedBundleIdentifiersySo05MRNowfB7UIStateV_SaySSGtF_0(uint64_t a1, uint64_t a2)
{
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v6;
  *(inited + 120) = sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  *(inited + 96) = a2;

  sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  if (qword_100536470 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10038ADB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10038ADF8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F30;

  return sub_100382AEC(v4, v5, v6, v2, v3);
}

uint64_t sub_10038AE90()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1003838F8(v5, v6, v7, v2, v3, v4);
}

void _s12mediaremoted18ActivityControllerC032startGroupSessionLowPowerPlatterB0yyF_0()
{
  v0 = [objc_opt_self() server];
  v1 = [v0 groupSessionServer];

  if (v1)
  {
    v2 = [v1 sessionManager];

    if (v2)
    {
      v3 = [v2 session];

      if (v3)
      {
        v4 = [v3 identifier];
        swift_unknownObjectRelease();
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v6;

        sub_1001BC5A8(&qword_1005228A8, &unk_100450030);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10044EC70;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v9;
        *(inited + 48) = v5;
        *(inited + 56) = v7;
        v10 = sub_10021EF3C(inited);
        swift_setDeallocating();
        sub_1000038A4(inited + 32, &unk_1005228B0, &qword_10045AFF0);
        if (qword_100536470 != -1)
        {
          swift_once();
        }

        v11 = sub_1003836A0(v10);

        sub_100384FCC(4, v11);
      }
    }
  }
}

id _s12mediaremoted18ActivityControllerC010contextForB10IdentifierySo11MRUIContextaSSF_0(uint64_t a1, uint64_t a2)
{
  if (qword_100536470 != -1)
  {
LABEL_29:
    swift_once();
  }

  v4 = sub_100389300(a1, a2);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v5 = &MRUIContextGroupSessionNearby;
      goto LABEL_32;
    }

    if (v4 == 4)
    {
      v5 = &MRUIContextGroupSession;
      goto LABEL_32;
    }

    static os_log_type_t.error.getter();
    v6 = sub_1001D8BC4();
    v7 = *v6;
    v8 = sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
    v9 = swift_allocObject();
    v43 = xmmword_10044EC70;
    *(v9 + 16) = xmmword_10044EC70;
    *(v9 + 56) = &type metadata for String;
    v10 = sub_100008FEC();
    *(v9 + 64) = v10;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    v11 = v7;

    os_log(_:dso:log:_:_:)();

    sub_1001BC5A8(&qword_100528AA0, &qword_10045B178);
    v12 = static Activity.activities.getter();
    v13 = v12;
    v44 = v8;
    v41 = v10;
    v42 = v6;
    if (v12 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (v14)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_14:
        v15 = 0;
        v45 = v13 & 0xC000000000000001;
        do
        {
          if (v45)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_25:
              __break(1u);
LABEL_26:

LABEL_27:

              static os_log_type_t.error.getter();
              v20 = *v42;
              v21 = swift_allocObject();
              *(v21 + 16) = v43;
              v22 = v41;
              *(v21 + 56) = &type metadata for String;
              *(v21 + 64) = v22;
              *(v21 + 32) = a1;
              *(v21 + 40) = a2;

              v23 = v20;
              os_log(_:dso:log:_:_:)();

              v24 = sub_1001BC5A8(&qword_100528AA8, &qword_10045B180);
              v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              __chkstk_darwin(v24 - 8);
              v27 = &v41 - v26;
              v28 = sub_1001BC5A8(&qword_100528A68, &qword_10045B158);
              (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
              v29 = type metadata accessor for ActivityUIDismissalPolicy();
              v30 = *(v29 - 8);
              v31 = *(v30 + 64);
              __chkstk_darwin(v29);
              v33 = &v41 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
              static ActivityUIDismissalPolicy.immediate.getter();
              dispatch thunk of Activity.endSync(_:dismissalPolicy:)();
              (*(v30 + 8))(v33, v29);
              sub_1000038A4(v27, &qword_100528AA8, &qword_10045B180);
              v34 = MRUIContextUnknown;

              return v34;
            }
          }

          else
          {
            if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_29;
            }

            v16 = *(v13 + 8 * v15 + 32);

            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_25;
            }
          }

          if (Activity.id.getter() == a1 && v18 == a2)
          {
            goto LABEL_26;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_27;
          }

          ++v15;
        }

        while (v17 != v14);
      }
    }

    static os_log_type_t.error.getter();
    v36 = *v42;
    v37 = swift_allocObject();
    *(v37 + 16) = v43;
    v38 = v41;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = v38;
    *(v37 + 32) = a1;
    *(v37 + 40) = a2;

    v39 = v36;
    os_log(_:dso:log:_:_:)();

    v5 = &MRUIContextUnknown;
    goto LABEL_32;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v5 = &MRUIContextScreenMirroring;
    }

    else
    {
      v5 = &MRUIContextRouteRecommendation;
    }
  }

  else
  {
    v5 = &MRUIContextNowPlaying;
  }

LABEL_32:
  v40 = *v5;

  return v40;
}

unint64_t sub_10038B6BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004D03D0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10038B70C()
{
  result = qword_1005288E8;
  if (!qword_1005288E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005288E8);
  }

  return result;
}

unint64_t sub_10038B794()
{
  result = qword_100528A60;
  if (!qword_100528A60)
  {
    type metadata accessor for ActivityState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528A60);
  }

  return result;
}

uint64_t sub_10038B7E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MediaLiveActivityAttributes.ContentState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10038B824()
{
  result = qword_100528A90;
  if (!qword_100528A90)
  {
    sub_1001C2EC8(&qword_100528A88, &qword_10045B160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528A90);
  }

  return result;
}

uint64_t sub_10038B888()
{
  v2 = *(sub_1001BC5A8(&qword_100528A68, &qword_10045B158) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1003888B4(v5, v6, v7, v4, v0 + v3);
}

unint64_t sub_10038B96C()
{
  result = qword_100528A98;
  if (!qword_100528A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528A98);
  }

  return result;
}

unint64_t sub_10038B9C0()
{
  result = qword_100528AC8;
  if (!qword_100528AC8)
  {
    sub_1001C2EC8(&qword_100528AB0, &qword_10045B188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528AC8);
  }

  return result;
}

uint64_t sub_10038BA18()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F30;

  return sub_100388C98(v3, v4, v5, v6, v2);
}

uint64_t sub_10038BABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100528AE0, &qword_10045B1C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10038BB2C(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10038BB78()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009F34;

  return sub_10038696C(v3, v4, v5, v2);
}

unint64_t sub_10038BC10()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_10038BC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000100444280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010043FE00 == a2)
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

uint64_t sub_10038BD2C(uint64_t a1)
{
  v2 = sub_1003900D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038BD68(uint64_t a1)
{
  v2 = sub_1003900D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_10038BF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___MRIRRouteRecommendationContext_candidateResults] = a1;
  v8 = &v7[OBJC_IVAR___MRIRRouteRecommendationContext_contextIdentifier];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

id sub_10038C09C(uint64_t *a1)
{
  v3 = type metadata accessor for UUID();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_100528B08, &qword_10045B200);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v30 = a1;
  sub_1000326D8(a1, v13);
  sub_1003900D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100026A44(v30);
    type metadata accessor for RouteRecommendationContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v6;
    v27 = v3;
    v28 = v8;
    sub_1001BC5A8(&qword_100528B18, &qword_10045B208);
    v35 = 0;
    sub_100390150(&qword_100528B20, &qword_100528B28);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v31;
    *&v31[OBJC_IVAR___MRIRRouteRecommendationContext_candidateResults] = v33;
    LOBYTE(v33) = 1;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v28;
    if (!v17)
    {
      v33 = 760500813;
      v34 = 0xE400000000000000;
      v19 = v26;
      UUID.init()();
      v20 = UUID.uuidString.getter();
      v22 = v21;
      (*(v29 + 8))(v19, v27);
      v23._countAndFlagsBits = v20;
      v23._object = v22;
      String.append(_:)(v23);
      v18 = v28;
      v15 = v31;

      v16 = v33;
      v17 = v34;
    }

    v24 = &v15[OBJC_IVAR___MRIRRouteRecommendationContext_contextIdentifier];
    *v24 = v16;
    v24[1] = v17;
    v25 = type metadata accessor for RouteRecommendationContext();
    v32.receiver = v15;
    v32.super_class = v25;
    v12 = objc_msgSendSuper2(&v32, "init");
    (*(v18 + 8))(v11, v7);
    sub_100026A44(v30);
  }

  return v12;
}

uint64_t sub_10038C46C(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100528B38, &qword_10045B210);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_1003900D8();
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (*((swift_isaMask & *v3) + 0x60))(v11);
  v14[7] = 0;
  sub_1001BC5A8(&qword_100528B18, &qword_10045B208);
  sub_100390150(&qword_100528B40, &qword_100528B48);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  (*((swift_isaMask & *v3) + 0x78))(v12);
  v14[6] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_10038C760@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10038C7F0()
{
  v1 = *v0;
  v2 = 0x6966697373616C63;
  v3 = 0xD000000000000016;
  if (v1 == 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x48676E6974726F73;
  if (v1 != 3)
  {
    v4 = 0x6F546C6C61437369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v1 != 1)
  {
    v5 = 0x74616469646E6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10038C8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003901EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10038C910(uint64_t a1)
{
  v2 = sub_100390450();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038C94C(uint64_t a1)
{
  v2 = sub_100390450();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10038C9D0()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10038CA68(uint64_t a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_10038CBF4()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10038CCA8(uint64_t a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10038CDAC()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10038CE58(uint64_t a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10038CF58()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10038CFF0(char a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10038D0E8()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10038D180(char a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10038D278()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10038D310(char a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_10038D3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{

  v15 = objc_allocWithZone(v8);
  v16 = &v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classificationDescription];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  *&v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint] = 0;
  *&v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification] = a1;
  *&v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate] = a4;
  swift_beginAccess();
  *&v15[v17] = a5;
  v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction] = a6;
  v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl] = a7;
  v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered] = a8;
  v19.receiver = v15;
  v19.super_class = v8;
  return objc_msgSendSuper2(&v19, "init");
}

id sub_10038D4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{

  v15 = &v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classificationDescription];
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  *&v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint] = 0;
  *&v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification] = a1;
  *&v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate] = a4;
  swift_beginAccess();
  *&v8[v16] = a5;
  v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction] = a6;
  v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl] = a7;
  v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered] = a8;
  v18.receiver = v8;
  v18.super_class = type metadata accessor for RouteRecommendationCandidateResult();
  return objc_msgSendSuper2(&v18, "init");
}

char *sub_10038D674(uint64_t *a1)
{
  v4 = sub_1001BC5A8(&qword_100528B88, &qword_10045B218);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = &v1[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classificationDescription];
  *v9 = 0;
  v9[1] = 0;
  v32 = v9;
  v33 = a1;
  v10 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  v34 = v1;
  *&v1[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint] = 0;
  v11 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_100390450();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v16 = v32;
    v17 = v34;
    sub_100026A44(v33);
    v18 = v16[1];

    type metadata accessor for RouteRecommendationCandidateResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v38 = 0;
    v12 = v10;
    *&v34[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification] = KeyedDecodingContainer.decode(_:forKey:)();
    v38 = 1;
    v13 = v4;
    v14 = v8;
    v15 = v5;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v21;
    v23 = v32;
    swift_beginAccess();
    v24 = v23[1];
    *v23 = v20;
    v23[1] = v22;

    type metadata accessor for RouteRecommendationCandidate();
    v37 = 2;
    sub_100390C08(&qword_100528B98, type metadata accessor for RouteRecommendationCandidate);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v15;
    v26 = v34;
    *&v34[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate] = v36;
    LOBYTE(v36) = 3;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = [objc_allocWithZone(NSNumber) initWithDouble:*&v27];
    }

    swift_beginAccess();
    v30 = *&v26[v12];
    *&v26[v12] = v29;

    v37 = 4;
    v26[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
    v37 = 5;
    v26[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
    v37 = 6;
    v26[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1;
    v31 = type metadata accessor for RouteRecommendationCandidateResult();
    v35.receiver = v26;
    v35.super_class = v31;
    v17 = objc_msgSendSuper2(&v35, "init");
    (*(v25 + 8))(v14, v13);
    sub_100026A44(v33);
  }

  return v17;
}

id sub_10038DB24(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(void))
{
  v8 = a1;
  sub_10038DBB4(a3, a4, a5);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

uint64_t sub_10038DBB4(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(void))
{
  v7 = v3;
  v8 = type metadata accessor for String.Encoding();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for JSONEncoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v30 = v3;
  v13 = a1();
  sub_100390C08(a2, a3);
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v15;
  static String.Encoding.utf8.getter();
  v17 = String.init(data:encoding:)();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    sub_1001C4034(v14, v16);
  }

  else
  {
    sub_1001C4034(v14, v16);
    v20 = 0xEC00000061746164;
    v19 = 0x2064696C61766E69;
  }

  v30 = 60;
  v31 = 0xE100000000000000;
  v29.receiver = v7;
  v29.super_class = v13;
  v21 = objc_msgSendSuper2(&v29, "description");
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v26._countAndFlagsBits = 2622;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v19;
  v27._object = v20;
  String.append(_:)(v27);

  return v30;
}

uint64_t sub_10038DDBC(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100528BA0, &qword_10045B220);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v21 - v8;
  v10 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_100390450();
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*((swift_isaMask & *v3) + 0x88))(v11);
  v28 = 0;
  v12 = KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    (*((swift_isaMask & *v3) + 0xA0))(v12);
    v27 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    v15 = (*((swift_isaMask & *v3) + 0xB8))(v14);
    v21[1] = v15;
    v26 = 2;
    type metadata accessor for RouteRecommendationCandidate();
    sub_100390C08(&qword_100528BA8, type metadata accessor for RouteRecommendationCandidate);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v16 = (*((swift_isaMask & *v3) + 0xD0))();
    v17 = v16;
    if (v16)
    {
      [v16 doubleValue];
    }

    v25 = 3;
    v18 = KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    (*((swift_isaMask & *v3) + 0xE8))(v18);
    v24 = 4;
    v19 = KeyedEncodingContainer.encode(_:forKey:)();
    (*((swift_isaMask & *v3) + 0x100))(v19);
    v23 = 5;
    v20 = KeyedEncodingContainer.encode(_:forKey:)();
    (*((swift_isaMask & *v3) + 0x118))(v20);
    v22 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10038E2A4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 312))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10038E33C()
{
  if (*v0)
  {
    result = 0x7365646F6ELL;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_10038E378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000100444340 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7365646F6ELL && a2 == 0xE500000000000000)
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

uint64_t sub_10038E45C(uint64_t a1)
{
  v2 = sub_1003904C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038E498(uint64_t a1)
{
  v2 = sub_1003904C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10038E4EC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_10038E558(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

Class sub_10038E650(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t), unint64_t *a5, void (*a6)(void))
{
  v10 = *a3;
  v11 = swift_beginAccess();
  v12 = *(a1 + v10);
  a4(v11);
  sub_100390C08(a5, a6);

  v13.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

uint64_t sub_10038E75C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(void), uint64_t *a7)
{
  a4();
  sub_100390C08(a5, a6);
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = *a7;
  swift_beginAccess();
  v13 = *(a1 + v12);
  *(a1 + v12) = v11;
}

uint64_t sub_10038E814(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id sub_10038E8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___MRIRRouteRecommendationCandidate_candidateIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___MRIRRouteRecommendationCandidate_nodes] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

id sub_10038E97C(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100528BC0, &qword_10045B228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_1003904C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100026A44(a1);
    type metadata accessor for RouteRecommendationCandidate();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = &v1[OBJC_IVAR___MRIRRouteRecommendationCandidate_candidateIdentifier];
    *v13 = v11;
    v13[1] = v14;
    sub_1001BC5A8(&qword_100528BD0, &qword_10045B230);
    v18 = 1;
    sub_100390540(&qword_100528BD8, &qword_100528BE0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v1[OBJC_IVAR___MRIRRouteRecommendationCandidate_nodes] = v19;
    v15 = type metadata accessor for RouteRecommendationCandidate();
    v17.receiver = v1;
    v17.super_class = v15;
    v3 = objc_msgSendSuper2(&v17, "init");
    (*(v6 + 8))(v9, v5);
    sub_100026A44(a1);
  }

  return v3;
}

uint64_t sub_10038EC04(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100528BE8, &qword_10045B238);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_1003904C8();
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*((swift_isaMask & *v3) + 0x60))(v11);
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v15 = (*((swift_isaMask & *v3) + 0x78))(v13);
    v14[15] = 1;
    sub_1001BC5A8(&qword_100528BD0, &qword_10045B230);
    sub_100390540(&qword_100528BF0, &qword_100528BF8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_10038EF00@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10038EF90()
{
  v1 = 0x746E656449736469;
  if (*v0 != 2)
  {
    v1 = 0x6C61636F4C7369;
  }

  v2 = 0xD000000000000018;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10038F024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003905DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10038F04C(uint64_t a1)
{
  v2 = sub_100390754();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10038F088(uint64_t a1)
{
  v2 = sub_100390754();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_10038F1F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_10038F290(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_10038F3C0()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationNode_isLocal;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10038F458(char a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationNode_isLocal;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*sub_10038F6D0(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = (*((swift_isaMask & *v1) + 0x70))();
  a1[1] = v3;
  return sub_10038F748;
}

uint64_t sub_10038F748(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *((swift_isaMask & *a1[2]) + 0x78);
  if ((a2 & 1) == 0)
  {
    return v4(*a1, v2);
  }

  v5 = a1[1];

  v4(v3, v2);
}

id sub_10038F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = objc_allocWithZone(v7);
  v14 = &v13[OBJC_IVAR___MRIRRouteRecommendationNode_avOutputDeviceIdentifier];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v13[OBJC_IVAR___MRIRRouteRecommendationNode_rapportIdentifier];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v13[OBJC_IVAR___MRIRRouteRecommendationNode_idsIdentifier];
  *v16 = 0;
  v16[1] = 0;
  swift_beginAccess();
  *v14 = a1;
  v14[1] = a2;
  swift_beginAccess();
  *v15 = a3;
  v15[1] = a4;
  swift_beginAccess();
  v17 = v16[1];
  *v16 = a5;
  v16[1] = a6;

  v13[OBJC_IVAR___MRIRRouteRecommendationNode_isLocal] = a7;
  v21.receiver = v13;
  v21.super_class = v7;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t *sub_10038F958(uint64_t *a1)
{
  v4 = sub_1001BC5A8(&qword_100528C20, &qword_10045B240);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = &v1[OBJC_IVAR___MRIRRouteRecommendationNode_avOutputDeviceIdentifier];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR___MRIRRouteRecommendationNode_rapportIdentifier];
  *v9 = 0;
  v9[1] = 0;
  v38 = a1;
  v39 = v1;
  v10 = &v1[OBJC_IVAR___MRIRRouteRecommendationNode_idsIdentifier];
  *v10 = 0;
  v10[1] = 0;
  v11 = v10;
  v12 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_100390754();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100026A44(v38);
    v29 = v8[1];

    v30 = v9[1];

    v31 = v11[1];

    type metadata accessor for RouteRecommendationNode();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v43 = 0;
    v13 = v7;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = v15;
    swift_beginAccess();
    v17 = v8[1];
    *v8 = v14;
    v8[1] = v16;

    v42 = 1;
    v18 = v37;
    v19 = v11;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v21;
    swift_beginAccess();
    v23 = v9[1];
    *v9 = v20;
    v9[1] = v22;

    v41 = 2;
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = v25;
    swift_beginAccess();
    v27 = v19[1];
    *v19 = v24;
    v19[1] = v26;

    v44 = 3;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = v39;
    *(v39 + OBJC_IVAR___MRIRRouteRecommendationNode_isLocal) = v28 & 1;
    v34 = type metadata accessor for RouteRecommendationNode();
    v40.receiver = v33;
    v40.super_class = v34;
    v11 = objc_msgSendSuper2(&v40, "init");
    (*(v36 + 8))(v13, v18);
    sub_100026A44(v38);
  }

  return v11;
}

uint64_t sub_10038FC84(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100528C30, &qword_10045B248);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_100390754();
  v11 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*((swift_isaMask & *v3) + 0x70))(v11);
  v16[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    (*((swift_isaMask & *v3) + 0x88))(v12);
    v16[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*((swift_isaMask & *v3) + 0xA0))(v13);
    v16[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

    (*((swift_isaMask & *v3) + 0xB8))(v14);
    v16[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v6 + 8))(v9, v5);
  }
}

id sub_10038FF84(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100390024@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1003900D8()
{
  result = qword_100528B10;
  if (!qword_100528B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528B10);
  }

  return result;
}

uint64_t sub_100390150(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001C2EC8(&qword_100528B18, &qword_10045B208);
    sub_100390C08(a2, type metadata accessor for RouteRecommendationCandidateResult);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003901EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010043FE20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x48676E6974726F73 && a2 == 0xEB00000000746E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F546C6C61437369 && a2 == 0xEE006E6F69746341 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004442F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004442D0 == a2)
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

unint64_t sub_100390450()
{
  result = qword_100528B90;
  if (!qword_100528B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528B90);
  }

  return result;
}

unint64_t sub_1003904C8()
{
  result = qword_100528BC8;
  if (!qword_100528BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528BC8);
  }

  return result;
}

uint64_t sub_100390540(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001C2EC8(&qword_100528BD0, &qword_10045B230);
    sub_100390C08(a2, type metadata accessor for RouteRecommendationNode);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003905DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001004443B0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100444390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656449736469 && a2 == 0xED00007265696669 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_100390754()
{
  result = qword_100528C28;
  if (!qword_100528C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C28);
  }

  return result;
}

unint64_t sub_1003907AC()
{
  result = qword_100528C38;
  if (!qword_100528C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C38);
  }

  return result;
}

unint64_t sub_100390804()
{
  result = qword_100528C40;
  if (!qword_100528C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C40);
  }

  return result;
}

unint64_t sub_10039085C()
{
  result = qword_100528C48;
  if (!qword_100528C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C48);
  }

  return result;
}

unint64_t sub_1003908B4()
{
  result = qword_100528C50;
  if (!qword_100528C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C50);
  }

  return result;
}

unint64_t sub_10039090C()
{
  result = qword_100528C58;
  if (!qword_100528C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C58);
  }

  return result;
}

unint64_t sub_100390964()
{
  result = qword_100528C60;
  if (!qword_100528C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C60);
  }

  return result;
}

unint64_t sub_1003909BC()
{
  result = qword_100528C68;
  if (!qword_100528C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C68);
  }

  return result;
}

unint64_t sub_100390A14()
{
  result = qword_100528C70;
  if (!qword_100528C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C70);
  }

  return result;
}

unint64_t sub_100390A6C()
{
  result = qword_100528C78;
  if (!qword_100528C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C78);
  }

  return result;
}

unint64_t sub_100390AC4()
{
  result = qword_100528C80;
  if (!qword_100528C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C80);
  }

  return result;
}

unint64_t sub_100390B1C()
{
  result = qword_100528C88;
  if (!qword_100528C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C88);
  }

  return result;
}

unint64_t sub_100390B74()
{
  result = qword_100528C90;
  if (!qword_100528C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528C90);
  }

  return result;
}

uint64_t sub_100390C08(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100390C4C()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100537508);
  sub_100015AFC(v0, qword_100537508);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

id sub_100390D68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionUIManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100390DA0()
{
  result = qword_100528D50;
  if (!qword_100528D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528D50);
  }

  return result;
}

id sub_100390E04()
{
  v1 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation____lazy_storage___uiController;
  if (*(v0 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation____lazy_storage___uiController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation____lazy_storage___uiController);
  }

  else
  {
    v2 = [objc_opt_self() groupSessionUIControllerWithDelegate:v0];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

char *sub_100390E88()
{
  v1 = v0;
  v38[0] = swift_getObjectType();
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation____lazy_storage___uiController] = 0;
  v11 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_bannerCenter;
  v12 = objc_allocWithZone(MRDBannerCenter);
  *&v0[v11] = [v12 init];
  v39 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue;
  v38[1] = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100522A90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_100004674(&qword_100522AA0, &qword_100521DF8, &unk_100450220);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v39] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = &v0[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v0[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_shouldPresentBannerWhenAppropriate] = 1;
  v0[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_participants] = 0;
  *&v0[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_ongoingNotifications] = _swiftEmptyArrayStorage;
  v14 = objc_allocWithZone(UNUserNotificationCenter);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithBundleIdentifier:v15];

  *&v1[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_notificationCenter] = v16;
  [v16 setWantsNotificationResponsesDelivered];
  v17 = type metadata accessor for GroupSessionUIManagerImplementation();
  v40.receiver = v1;
  v40.super_class = v17;
  v18 = objc_msgSendSuper2(&v40, "init");
  v19 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_notificationCenter;
  v20 = *&v18[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_notificationCenter];
  v21 = v18;
  [v20 setDelegate:v21];
  [*&v21[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_bannerCenter] setDelegate:v21];
  [*&v18[v19] removeAllPendingNotificationRequests];
  [*&v18[v19] removeAllDeliveredNotifications];
  v22 = objc_opt_self();
  v23 = [v22 defaultCenter];
  v24 = objc_opt_self();
  v25 = v21;
  v26 = [v24 sharedMonitor];
  [v23 addObserver:v25 selector:"handleDisplayMonitorChangeNotification:" name:@"MRDisplayMonitorLayoutDidChangeNotification" object:v26];

  v27 = [v22 defaultCenter];
  v28 = [v24 sharedMonitor];
  [v27 addObserver:v25 selector:"handleDisplayMonitorChangeNotification:" name:@"MRDisplayMonitorDisplayDidChangeNotification" object:v28];

  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100015AFC(v29, qword_100537508);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v41 = v33;
    *v32 = 136315138;
    v34 = _typeName(_:qualified:)();
    v36 = sub_10002C9C8(v34, v35, &v41);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "[%s] Initialized", v32, 0xCu);
    sub_100026A44(v33);
  }

  return v25;
}

id sub_1003914B4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100537508);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Deinit", v5, 0xCu);
    sub_100026A44(v6);
  }

  v10 = type metadata accessor for GroupSessionUIManagerImplementation();
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "dealloc");
}

id sub_100391704(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong removeObserver:v1];
    v4 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_notificationCenter);
    [v4 removeAllPendingNotificationRequests];
    [v4 removeAllDeliveredNotifications];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectWeakAssign();
  v5 = [a1 participants];
  sub_1001BC5A8(&unk_100522CB0, &unk_10044EC00);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_participants);
  *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_participants) = v6;

  return [a1 addObserver:v1];
}

uint64_t sub_100391880(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v13 = *(v25 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v25);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v4[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = v4;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = ObjectType;
  aBlock[4] = sub_1003989FC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D0D68;
  v19 = _Block_copy(aBlock);
  v20 = v17;
  v21 = a1;
  v22 = v4;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v26 + 8))(v12, v9);
  (*(v13 + 8))(v16, v25);
}

uint64_t sub_100391BAC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v9 = *(v20 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v2[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_10039868C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D0C78;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v17 = v2;

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v8, v5);
  (*(v9 + 8))(v12, v20);
}

void sub_100391EF0(uint64_t a1, unint64_t a2)
{
  v5 = v2;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v17 = *(v10 + 8);
  v16 = v10 + 8;
  v17(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v4 = v5 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext;
  v18 = *(v5 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext);
  if (v18)
  {
    v82 = ObjectType;
    v19 = *(v4 + 24);
    v81 = *(v4 + 8);
    v3 = v81;

    v83 = v18;
    v20 = [v83 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v9 = a1;
    v24 = v21 == a1;
    v16 = a2;
    v24 = v24 && v23 == a2;
    if (v24)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        if (qword_100537500 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100015AFC(v26, qword_100537508);

        v27 = v83;
        v28 = v3;

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v84 = v81;
          *v31 = 136315650;
          v32 = _typeName(_:qualified:)();
          v34 = sub_10002C9C8(v32, v33, &v84);
          v83 = v28;
          v35 = v34;

          *(v31 + 4) = v35;
          *(v31 + 12) = 2082;
          v36 = [v27 identifier];
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          v40 = sub_10002C9C8(v37, v39, &v84);

          *(v31 + 14) = v40;
          *(v31 + 22) = 2082;
          *(v31 + 24) = sub_10002C9C8(a1, a2, &v84);
          _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Attempted to dismiss different discovered session. Current: %{public}s, requested: %{public}s", v31, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }

        return;
      }
    }

    if (qword_100537500 == -1)
    {
LABEL_19:
      v49 = type metadata accessor for Logger();
      sub_100015AFC(v49, qword_100537508);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v84 = v80;
        *v52 = 136315394;
        v53 = _typeName(_:qualified:)();
        v78 = v9;
        v55 = sub_10002C9C8(v53, v54, &v84);
        v79 = v50;
        v56 = v55;

        *(v52 + 4) = v56;
        *(v52 + 12) = 2082;
        *(v52 + 14) = sub_10002C9C8(v78, v16, &v84);
        v50 = v79;
        _os_log_impl(&_mh_execute_header, v79, v51, "[%s] Dismissing for session: %{public}s", v52, 0x16u);
        swift_arrayDestroy();
      }

      v57 = objc_opt_self();
      v58 = [v57 currentSettings];
      if (v58)
      {
        v59 = v58;
        v60 = [v58 groupSessionNearbyBanner];

        if (v60 && v81 && *(v5 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners) == 1)
        {
          v61 = v3;
          sub_100395F08(v61);
        }

        v62 = [v57 currentSettings];
        if (v62)
        {
          v63 = v62;
          v64 = [v62 groupSessionNearbyLockscreen];

          if (v64)
          {
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              v84 = v68;
              *v67 = 136315138;
              v69 = _typeName(_:qualified:)();
              v71 = v3;
              v72 = sub_10002C9C8(v69, v70, &v84);

              *(v67 + 4) = v72;
              v3 = v71;
              _os_log_impl(&_mh_execute_header, v65, v66, "[%s] Releasing GroupSessionNearby assertion", v67, 0xCu);
              sub_100026A44(v68);
            }

            [sub_100390E04() releaseGroupSessionNearbyAssertion];
            swift_unknownObjectRelease();
          }

          v73 = *v4;
          v74 = *(v4 + 8);
          v75 = *(v4 + 16);
          v76 = *(v4 + 24);
          *v4 = 0u;
          *(v4 + 16) = 0u;
          sub_1003985EC(v73, v74);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_35:
    swift_once();
    goto LABEL_19;
  }

  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100015AFC(v41, qword_100537508);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v84 = v45;
    *v44 = 136315138;
    v46 = _typeName(_:qualified:)();
    v48 = sub_10002C9C8(v46, v47, &v84);

    *(v44 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v42, v43, "[%s] Attempted to dismiss while no discovered session is presented", v44, 0xCu);
    sub_100026A44(v45);
  }
}

void sub_100392754(void *a1, uint64_t a2, uint64_t a3)
{
  v111 = a3;
  v109 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UUID();
  v107 = *(v5 - 8);
  v108 = v5;
  v6 = v107[8];
  __chkstk_darwin(v5);
  v106 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001BC5A8(&qword_100523B48, &unk_100451A30);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v112 = (v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v13 = v100 - v12;
  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100015AFC(v14, qword_100537508);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v16, v17);
  v113 = ObjectType;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock = v21;
    *v19 = 136315394;
    v22 = _typeName(_:qualified:)();
    v24 = sub_10002C9C8(v22, v23, &aBlock);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v15;
    *v20 = v15;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] displayJoinRequest: %@", v19, 0x16u);
    sub_1001E4048(v20);

    sub_100026A44(v21);
  }

  v26 = [v15 identity];
  v27 = [v26 displayName];

  if (v27)
  {
    v104 = v15;
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    v30 = [objc_allocWithZone(UNMutableNotificationContent) init];
    [v30 setTitle:v27];

    v31 = String._bridgeToObjectiveC()();
    v32 = MRLocalizedString();

    if (v32)
    {
      [v30 setBody:v32];

      v33 = String._bridgeToObjectiveC()();
      v103 = objc_opt_self();
      v34 = [v103 iconForApplicationIdentifier:v33];

      [v30 setIcon:v34];
      v102 = "N_REQUEST_NOTIFICATION_BODY_IOS";
      URL.init(string:)();
      v35 = type metadata accessor for URL();
      v36 = *(v35 - 8);
      v37 = *(v36 + 48);
      if (v37(v13, 1, v35) == 1)
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      URL._bridgeToObjectiveC()(v38);
      v40 = v39;
      v101 = *(v36 + 8);
      v101(v13, v35);
      [v30 setDefaultActionURL:v40];

      v100[1] = "music://groupSession/settings";
      v41 = String._bridgeToObjectiveC()();
      [v30 setCategoryIdentifier:v41];

      [v30 setShouldBackgroundDefaultAction:1];
      v42 = [objc_allocWithZone(UNMutableNotificationContent) init];
      v43 = String._bridgeToObjectiveC()();
      v44 = String._bridgeToObjectiveC()();
      v45 = MRLocalizedStringWithFormat();

      if (!v45)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_10044EC70;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = sub_100008FEC();
      *(v46 + 32) = v105;
      *(v46 + 40) = v29;

      String.init(format:_:)();

      v47 = String._bridgeToObjectiveC()();

      [v42 setTitle:v47];

      v48 = String._bridgeToObjectiveC()();
      v49 = [v103 iconForApplicationIdentifier:v48];

      [v42 setIcon:v49];
      v50 = v112;
      URL.init(string:)();
      if (v37(v50, 1, v35) == 1)
      {
LABEL_21:
        __break(1u);
        return;
      }

      URL._bridgeToObjectiveC()(v51);
      v53 = v52;
      v101(v50, v35);
      [v42 setDefaultActionURL:v53];

      v54 = String._bridgeToObjectiveC()();
      [v42 setCategoryIdentifier:v54];

      [v42 setShouldBackgroundDefaultAction:1];
      v55 = v106;
      UUID.init()();
      v112 = UUID.uuidString.getter();
      v57 = v56;
      v58 = v108;
      v59 = v107[1];
      v59(v55, v108);
      v60 = v30;
      v61 = String._bridgeToObjectiveC()();
      v62 = objc_opt_self();
      v63 = [v62 requestWithIdentifier:v61 content:v60 trigger:0];

      v107 = v60;
      v105 = v63;
      [v63 setDestinations:3];
      UUID.init()();
      v64 = UUID.uuidString.getter();
      v66 = v65;
      v59(v55, v58);
      v67 = v42;
      v68 = String._bridgeToObjectiveC()();
      v69 = [v62 requestWithIdentifier:v68 content:v67 trigger:0];

      v106 = v67;
      v108 = v69;
      [v69 setDestinations:8];
      v70 = v110;
      v71 = *&v110[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
      v72 = swift_allocObject();
      v73 = v104;
      v72[2] = v70;
      v72[3] = v73;
      v72[4] = v112;
      v72[5] = v57;
      v72[6] = v64;
      v72[7] = v66;
      v74 = v111;
      v72[8] = v109;
      v72[9] = v74;
      v75 = swift_allocObject();
      *(v75 + 16) = sub_10039814C;
      *(v75 + 24) = v72;
      v118 = sub_10021C408;
      v119 = v75;
      aBlock = _NSConcreteStackBlock;
      v115 = 1107296256;
      v116 = sub_1001E7220;
      v117 = &unk_1004D0B88;
      v76 = _Block_copy(&aBlock);
      v77 = v73;
      v78 = v71;
      v79 = v70;

      dispatch_async_and_wait(v78, v76);

      _Block_release(v76);
      LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

      if ((v76 & 1) == 0)
      {
        v80 = *&v79[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_notificationCenter];
        v81 = swift_allocObject();
        v82 = v105;
        v83 = v113;
        *(v81 + 16) = v105;
        *(v81 + 24) = v83;
        v118 = sub_10039820C;
        v119 = v81;
        aBlock = _NSConcreteStackBlock;
        v115 = 1107296256;
        v116 = sub_1001BC53C;
        v117 = &unk_1004D0BD8;
        v84 = _Block_copy(&aBlock);
        v85 = v82;

        [v80 addNotificationRequest:v85 withCompletionHandler:v84];
        _Block_release(v84);
        v86 = swift_allocObject();
        v87 = v108;
        *(v86 + 16) = v108;
        *(v86 + 24) = v83;
        v118 = sub_100398218;
        v119 = v86;
        aBlock = _NSConcreteStackBlock;
        v115 = 1107296256;
        v116 = sub_1001BC53C;
        v117 = &unk_1004D0C28;
        v88 = _Block_copy(&aBlock);
        v89 = v87;

        [v80 addNotificationRequest:v89 withCompletionHandler:v88];
        _Block_release(v88);

        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  v90 = v15;
  v112 = Logger.logObject.getter();
  v91 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v112, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    aBlock = v94;
    *v92 = 136315394;
    v95 = _typeName(_:qualified:)();
    v97 = sub_10002C9C8(v95, v96, &aBlock);

    *(v92 + 4) = v97;
    *(v92 + 12) = 2112;
    v98 = [v90 identity];
    *(v92 + 14) = v98;
    *v93 = v98;
    _os_log_impl(&_mh_execute_header, v112, v91, "[%s] Can't display join request for identity: %@ with no displayName", v92, 0x16u);
    sub_1001E4048(v93);

    sub_100026A44(v94);
  }

  else
  {
    v99 = v112;
  }
}