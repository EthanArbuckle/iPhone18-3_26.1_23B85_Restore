uint64_t sub_1001C55C0(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529758);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(0xD00000000000001FLL, 0x800000010043A3D0, &v18);
    *(v7 + 22) = 2080;
    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, &v18);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v16 = *((swift_isaMask & *v2) + 0x118);

  return v16();
}

uint64_t sub_1001C5804(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529758);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(0xD00000000000001ELL, 0x800000010043A3F0, &v18);
    *(v7 + 22) = 2080;
    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, &v18);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v16 = *((swift_isaMask & *v2) + 0x118);

  return v16();
}

void sub_1001C5A48()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 server];
  v4 = [v3 groupSessionServer];

  if (v4)
  {
    v5 = [v4 sessionManager];

    if (v5)
    {
      v6 = [v5 session];

      if (v6)
      {
        if (([v6 isHosted] & 1) != 0 || objc_msgSend(v6, "state") != 3)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
          v7 = swift_allocObject();
          *(v7 + 16) = xmmword_10044EBC0;
          *(v7 + 32) = [objc_allocWithZone(MRAVDistantOutputDevice) initWithGroupSession:v6];
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v8 = [v2 server];
  v9 = [v8 externalDeviceServer];

  v10 = [v9 remoteControlService];
  if (v10)
  {
    v11 = [v10 systemGroupSessionService];

    if (v11)
    {
      v13 = (*((swift_isaMask & *v11) + 0x138))();

      if (v13)
      {
        sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10044EBC0;
        *(v14 + 32) = [objc_allocWithZone(MRAVDistantOutputDevice) initWithSystemGroupSession:v13];
      }
    }

    v15 = *(v1 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
    __chkstk_darwin(v12);
    sub_100013378(sub_1001C864C);
    sub_1001C5D58();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001C5D58()
{
  v1 = v0;
  v4 = 0;
  v2 = *(v0 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
  sub_100013378(sub_1001C9390);
  result = (*((swift_isaMask & *v1) + 0x88))();
  __break(1u);
  return result;
}

void sub_1001C5E68()
{
  swift_getObjectType();
  v1 = [objc_opt_self() server];
  v2 = [v1 groupSessionServer];

  if (v2 && (v3 = [v2 sessionManager], v2, v3))
  {
    v4 = v0;
    [v3 addObserver:v0];
    if (qword_100529750 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100015AFC(v5, qword_100529758);
    v22 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v8 = 136315394;
      v11 = _typeName(_:qualified:)();
      v13 = sub_10002C9C8(v11, v12, &v23);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v22;
      *v9 = v3;
      v14 = v22;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%s] Began observing %@", v8, 0x16u);
      sub_1000038A4(v9, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v10);
    }

    (*((swift_isaMask & *v4) + 0x118))();
  }

  else
  {
    if (qword_100529750 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100015AFC(v15, qword_100529758);
    v22 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = _typeName(_:qualified:)();
      v21 = sub_10002C9C8(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v22, v16, "[%s] No session manager to call addObserver. Ignoring", v17, 0xCu);
      sub_100026A44(v18);
    }
  }
}

void sub_1001C620C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [objc_opt_self() server];
  v3 = [v2 externalDeviceServer];

  v4 = [v3 remoteControlService];
  if (v4)
  {
    v5 = [v4 systemGroupSessionService];

    if (v5 && (v6 = (*((swift_isaMask & *v5) + 0x138))(), v5, v6))
    {
      [v6 addObserver:v1];
      if (qword_100529750 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100015AFC(v7, qword_100529758);
      v24 = v6;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v25 = v12;
        *v10 = 136315394;
        v13 = _typeName(_:qualified:)();
        v15 = sub_10002C9C8(v13, v14, &v25);

        *(v10 + 4) = v15;
        *(v10 + 12) = 2112;
        *(v10 + 14) = v24;
        *v11 = v6;
        v16 = v24;
        _os_log_impl(&_mh_execute_header, v8, v9, "[%s] Began observing %@", v10, 0x16u);
        sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v12);
      }

      (*((swift_isaMask & *v1) + 0x118))();
    }

    else
    {
      if (qword_100529750 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100015AFC(v17, qword_100529758);
      v24 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315138;
        v21 = _typeName(_:qualified:)();
        v23 = sub_10002C9C8(v21, v22, &v25);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v24, v18, "[%s] No system session to call addObserver. Ignoring", v19, 0xCu);
        sub_100026A44(v20);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1001C67A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MRDGroupSessionDiscoverySession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1001C68C4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1001BC5A8(&qword_100521878, &unk_10044EC48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_1001C6948(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_1001C9508(&qword_1005286C0);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1001C69CC(a1, v5);
}

unint64_t sub_1001C69CC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1001C9508(&unk_1005286D0);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1001C6B78(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1001BC5A8(&unk_100521890, &qword_10044EC58);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v42)
      {
        (*v43)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      else
      {
        (*v39)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      v29 = *(v14 + 40);
      sub_1001C9508(&qword_1005286C0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v43)(*(v14 + 48) + v45 * v22, v46, v47);
      *(*(v14 + 56) + 16 * v22) = v44;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_1001C6F3C(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1001C9508(&qword_1005286C0);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1001C7244(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
      sub_1001C74E0();
      goto LABEL_9;
    }

    sub_1001C6B78(v19, a4 & 1);
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

uint64_t sub_1001C7420(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_1001C74E0()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BC5A8(&unk_100521890, &qword_10044EC58);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v4 + 64;
    for (i = v33 + 32; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v33;
      v20 = *(v33 + 72) * v18;
      v21 = v30;
      v22 = v31;
      (*(v33 + 16))(v30, *(v4 + 48) + v20, v31);
      v18 *= 16;
      v23 = v32;
      v24 = *(v32 + 48);
      v25 = *(v19 + 32);
      v34 = *(*(v4 + 56) + v18);
      v25(v24 + v20, v21, v22);
      *(*(v23 + 56) + v18) = v34;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v6 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

void *sub_1001C7760(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 10) | (16 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1001C78BC(uint64_t a1)
{
  v2 = sub_1001BC5A8(&unk_1005218A0, &qword_10044EC60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1001BC5A8(&unk_100521890, &qword_10044EC58);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1001C9578(v10, v6);
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
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

__n128 sub_1001C7B10@<Q0>(__n128 *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_callbacks;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = sub_1001C6948(v3);
  v16 = 0u;
  if (v8)
  {
    v9 = v7;
    v10 = *(v4 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v4 + v5);
    *(v4 + v5) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001C74E0();
    }

    v13 = *(v12 + 48);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v9, v14);
    v16 = *(*(v12 + 56) + 16 * v9);
    sub_1001C6F3C(v9, v12);
    *(v4 + v5) = v12;
  }

  swift_endAccess();
  result = v16;
  *a1 = v16;
  return result;
}

uint64_t sub_1001C7C2C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001C7C3C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529758);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(0xD000000000000026, 0x800000010043A670, &v18);
    *(v7 + 22) = 2080;
    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, &v18);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v16 = *((swift_isaMask & *v2) + 0x118);

  return v16();
}

uint64_t sub_1001C7E80(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529758);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(0xD000000000000024, 0x800000010043A640, &v18);
    *(v7 + 22) = 2080;
    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, &v18);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v16 = *((swift_isaMask & *v2) + 0x118);

  return v16();
}

uint64_t sub_1001C80C4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529758);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, v20);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(0xD000000000000025, 0x800000010043A610, v20);
    *(v7 + 22) = 2080;
    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, v20);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v16 = *(v2 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
  __chkstk_darwin(v17);
  sub_100013378(sub_1001C94C4);
  v18 = [a1 addObserver:v2];
  return (*((swift_isaMask & *v2) + 0x118))(v18);
}

uint64_t sub_1001C8388(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529758);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v7 = 136315650;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, v19);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10002C9C8(0xD000000000000026, 0x800000010043A5E0, v19);
    *(v7 + 22) = 2080;
    v11 = [a1 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10002C9C8(v12, v14, v19);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s %s", v7, 0x20u);
    swift_arrayDestroy();
  }

  v16 = [a1 removeObserver:v2];
  v17 = *(v2 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_lock);
  __chkstk_darwin(v16);
  sub_100013378(sub_1001C9488);
  return (*((swift_isaMask & *v2) + 0x118))();
}

uint64_t sub_1001C864C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession__outputDevices);
  *(v1 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession__outputDevices) = **(v0 + 24);
}

void sub_1001C8694()
{
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100015AFC(v0, qword_100529758);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_10002C9C8(v4, v5, &v7);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_10002C9C8(0xD000000000000021, 0x800000010043A5B0, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  sub_1001C5E68();
}

uint64_t sub_1001C883C()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100529758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v11);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10002C9C8(0xD000000000000020, 0x800000010043A580, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *((swift_isaMask & *v1) + 0x118);

  return v9();
}

void sub_1001C8A1C()
{
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100015AFC(v0, qword_100529758);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = _typeName(_:qualified:)();
    v6 = sub_10002C9C8(v4, v5, &v7);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_10002C9C8(0xD000000000000021, 0x800000010043A550, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  sub_1001C620C();
}

uint64_t sub_1001C8BC4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_100529750 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100529758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v11);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10002C9C8(0xD000000000000020, 0x800000010043A520, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s] %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *((swift_isaMask & *v1) + 0x118);

  return v9();
}

uint64_t sub_1001C8DA4(void *a1)
{
  result = [objc_allocWithZone(_MRAVOutputDeviceDescriptorProtobuf) init];
  if (!result)
  {
    goto LABEL_17;
  }

  v4 = result;
  v5 = [a1 localizedSessionName];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  [v4 setName:v5];

  v6 = [a1 joinToken];
  v7 = [v6 equivalentMediaIdentifier];

  if (!v7)
  {
    v7 = [a1 identifier];
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = String._bridgeToObjectiveC()();

  [v4 setUniqueIdentifier:v8];

  [v4 setIsRemoteControllable:1];
  [v4 setTransportType:6];
  v9 = [a1 identifier];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [v4 setAirPlayGroupID:v9];

  v10 = [a1 identifier];
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  [v4 setGroupID:v10];

  [v4 setGroupContainsGroupLeader:1];
  [v4 setIsGroupLeader:1];
  [v4 setIsGroupable:1];
  [v4 setIsDeviceGroupable:1];
  [a1 routeType];
  result = MROutputDeviceTypeFromGroupSessionRoute();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  [v4 setDeviceType:result];
  [a1 routeType];
  result = MROutputDeviceSubtypeFromGroupSessionRoute();
  if ((result & 0x80000000) != 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  [v4 setDeviceSubType:result];
  [a1 routeType];
  v11 = MRGroupSessionRouteTypeToModelIdentifier();
  if (v11)
  {
    v12 = v11;
    [v4 setModelID:v11];
  }

  v13 = [objc_allocWithZone(MRGroupSessionInfo) initWithGroupSession:a1];
  v14 = [v13 protobuf];

  [v4 setGroupSessionInfo:v14];
  v15 = [v1 initWithDescriptor:v4];

  return v15;
}

id sub_1001C9104(void *a1)
{
  v2 = v1;
  (*((swift_isaMask & *a1) + 0x88))(&v11);
  result = [objc_allocWithZone(_MRAVOutputDeviceDescriptorProtobuf) init];
  if (result)
  {
    v4 = result;
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = String._bridgeToObjectiveC()();
    [v4 setUniqueIdentifier:v6];

    [v4 setIsRemoteControllable:1];
    [v4 setTransportType:7];
    v7 = String._bridgeToObjectiveC()();
    [v4 setAirPlayGroupID:v7];

    v8 = String._bridgeToObjectiveC()();
    [v4 setGroupID:v8];

    [v4 setGroupContainsGroupLeader:1];
    [v4 setIsGroupLeader:1];
    [v4 setIsGroupable:0];
    result = [v4 setIsDeviceGroupable:0];
    if (v12 < 0)
    {
      __break(1u);
    }

    else
    {
      result = [v4 setDeviceType:?];
      if ((v13 & 0x80000000) == 0)
      {
        [v4 setDeviceSubType:?];
        v9 = String._bridgeToObjectiveC()();
        sub_1001C933C(&v11);
        [v4 setModelID:v9];

        v10 = [v2 initWithDescriptor:v4];
        return v10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C9390()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession_callbacks;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_5:
    v10 = *v2;
    *v2 = v7;
  }

  v11[9] = v1;
  v7 = sub_1001C68C4(v6, 0);
  v8 = sub_1001C7760(v11, v7 + 2, v6, v5);

  result = sub_100045960();
  if (v8 == v6)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C9488()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession__session);
  *(v1 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession__session) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1001C94C4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession__session);
  *(v1 + OBJC_IVAR____TtC12mediaremoted31MRDGroupSessionDiscoverySession__session) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1001C9508(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001C954C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1001C9578(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&unk_1005218A0, &qword_10044EC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C9618()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100529778);
  sub_100015AFC(v0, qword_100529778);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

id sub_1001C985C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbySessionsListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001C990C()
{
  v1 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation____lazy_storage___homeObserver;
  v2 = *(v0 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation____lazy_storage___homeObserver);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation____lazy_storage___homeObserver);
  }

  else
  {
    v4 = sub_10037B1C0();
    v5 = *v4;
    v6 = *(v0 + v1);
    *(v0 + v1) = *v4;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_1001C9974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v58 = &v53 - v7;
  v8 = sub_1001BC5A8(&qword_100521B90, &qword_10044EE28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v53 - v11;
  v57 = sub_1001BC5A8(&qword_100521B98, &qword_10044EE30);
  v63 = *(v57 - 8);
  v13 = *(v63 + 64);
  v14 = __chkstk_darwin(v57);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  v17 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_delegate;
  *&v3[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_delegate] = 0;
  *&v3[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_pendingInvitationRequest] = 0;
  *&v3[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation____lazy_storage___homeObserver] = 0;
  *&v3[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_scanTask] = 0;
  v18 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_lock;
  type metadata accessor for Lock();
  *&v3[v18] = sub_10036C394();
  v19 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_discoveredAdvertisements;
  sub_1001BC5A8(&qword_100521BA0, &qword_10044EE38);
  *&v3[v19] = sub_1001D7444(10);
  v20 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions;
  sub_1001BC5A8(&qword_100521BA8, &qword_10044EE40);
  *&v3[v20] = sub_1001D7444(10);
  v21 = v61;
  *&v3[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_scanner] = v62;
  *&v3[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] = v21;
  v22 = *&v3[v17];
  *&v3[v17] = a3;

  v61 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v23 = type metadata accessor for NearbySessionsListenerImplementation();
  v65.receiver = v3;
  v65.super_class = v23;
  v53 = objc_msgSendSuper2(&v65, "init");
  dispatch thunk of NearbyInvitationScanner.$advertisements.getter();
  sub_10000462C(&qword_100521BB0, &qword_100521B90, &qword_10044EE28);
  Publisher<>.values.getter();
  (*(v9 + 8))(v12, v8);
  v24 = type metadata accessor for TaskPriority();
  v25 = *(v24 - 8);
  v54 = *(v25 + 56);
  v55 = v25 + 56;
  v26 = v58;
  v54(v58, 1, 1, v24);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = v63;
  v29 = *(v63 + 16);
  v30 = v56;
  v31 = v57;
  v60 = v16;
  v29(v56, v16, v57);
  v32 = v28;
  v33 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v34 = (v13 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v36 = v32;
  v37 = ObjectType;
  (*(v36 + 32))(v35 + v33, v30, v31);
  *(v35 + v34) = v27;
  *(v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
  v38 = v26;
  v39 = v53;
  v40 = sub_1001CB290(0, 0, v38, &unk_10044EE50, v35);
  v41 = *&v39[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_scanTask];
  *&v39[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_scanTask] = v40;

  v54(v38, 1, 1, v24);
  v42 = v62;
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v39;
  v43[5] = v42;
  v43[6] = v37;

  sub_1001BF864(0, 0, v38, &unk_10044EE60, v43);

  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100015AFC(v44, qword_100529778);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v64 = v48;
    *v47 = 136315138;
    v49 = _typeName(_:qualified:)();
    v51 = sub_10002C9C8(v49, v50, &v64);

    *(v47 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v45, v46, "[%s] Initialize", v47, 0xCu);
    sub_100026A44(v48);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v63 + 8))(v60, v31);
  return v39;
}

uint64_t sub_1001CA014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = sub_1001BC5A8(&qword_100521BB8, &qword_10044EE70);
  v6[25] = v7;
  v8 = *(v7 - 8);
  v6[26] = v8;
  v9 = *(v8 + 64) + 15;
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1001CA0E4, 0, 0);
}

uint64_t sub_1001CA0E4()
{
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[23];
  type metadata accessor for Lock();
  v0[28] = sub_10036C394();
  v0[15] = &_swiftEmptySetSingleton;
  sub_1001BC5A8(&qword_100521B98, &qword_10044EE30);
  AsyncPublisher.makeAsyncIterator()();
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_1001CA1F8;
  v5 = v0[27];

  return sub_1001CAB04(0, 0);
}

uint64_t sub_1001CA1F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v6 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (!v1)
  {

    return _swift_task_switch(sub_1001CA30C, 0, 0);
  }

  return result;
}

uint64_t sub_1001CA30C()
{
  v65 = v0;
  v1 = v0[30];
  if (!v1)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
LABEL_5:
    v7 = v0[27];
    v6 = v0[28];

    v8 = v0[15];

    v5 = v0[1];
    goto LABEL_6;
  }

  v2 = v0[31];
  static Task<>.checkCancellation()();
  if (v2)
  {
    v3 = v0[28];
    (*(v0[26] + 8))(v0[27], v0[25]);

    v4 = v0[15];

    v5 = v0[1];
LABEL_6:

    return v5();
  }

  v10 = v0[23];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

    goto LABEL_5;
  }

  v12 = Strong;
  v13 = (v0 + 15);
  v14 = v0 + 16;
  v15 = (v0 + 17);
  if (qword_100529770 == -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    swift_once();
LABEL_11:
    v16 = type metadata accessor for Logger();
    sub_100015AFC(v16, qword_100529778);
    v17 = v12;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    v62 = v14;
    v63 = v17;
    if (os_log_type_enabled(v18, v19))
    {
      v61 = v19;
      v20 = v0[24];
      v21 = swift_slowAlloc();
      v64[0] = swift_slowAlloc();
      *v21 = 136315650;
      v22 = _typeName(_:qualified:)();
      v24 = sub_10002C9C8(v22, v23, v64);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      if (*&v17[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
      {
        v25 = 0x646F50656D6F48;
      }

      else
      {
        v25 = 7496003;
      }

      if (*&v17[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
      {
        v26 = 0xE700000000000000;
      }

      else
      {
        v26 = 0xE300000000000000;
      }

      v27 = sub_10002C9C8(v25, v26, v64);

      *(v21 + 14) = v27;
      *(v21 + 22) = 2082;
      sub_1001CAE50(v1);
      v28 = Array.description.getter();
      v29 = v15;
      v30 = v13;
      v32 = v31;

      v33 = sub_10002C9C8(v28, v32, v64);
      v13 = v30;
      v15 = v29;

      *(v21 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v18, v61, "[%s(%s)] Advertisements updated: %{public}s", v21, 0x20u);
      swift_arrayDestroy();

      v14 = v62;
    }

    else
    {
    }

    v34 = v0[28];
    v0[16] = 0;
    v0[17] = 0;
    v35 = swift_task_alloc();
    v35[2] = v14;
    v35[3] = v1;
    v35[4] = v13;
    v35[5] = v15;
    sub_100013378(sub_1001D6A80);

    result = v0[17];
    if (!result)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      return result;
    }

    v60 = v0[17];
    if ((result & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for NearbyAdvertisement();
      sub_1001D5F18(&qword_100521BC0, &type metadata accessor for NearbyAdvertisement);
      Set.Iterator.init(_cocoa:)();
      v13 = v0[7];
      v36 = v0[8];
      v12 = v0[9];
      v15 = v0[10];
      v1 = v0[11];
    }

    else
    {
      v37 = -1 << *(result + 32);
      v36 = result + 56;
      v12 = ~v37;
      v38 = -v37;
      v39 = v38 < 64 ? ~(-1 << v38) : -1;
      v1 = (v39 & *(result + 56));
      v15 = 0;
    }

    v40 = (v12 + 64) >> 6;
    if (v13 < 0)
    {
      break;
    }

LABEL_29:
    v41 = v15;
    v42 = v1;
    v43 = v15;
    if (v1)
    {
LABEL_33:
      v44 = (v42 - 1) & v42;
      v14 = *(*(v13 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));
      if (v14)
      {
        goto LABEL_37;
      }

      goto LABEL_40;
    }

    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v43 >= v40)
      {
        v1 = 0;
        goto LABEL_40;
      }

      v42 = *(v36 + 8 * v43);
      ++v41;
      if (v42)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
  }

  while (1)
  {
    v12 = v13 & 0x7FFFFFFFFFFFFFFFLL;
    v45 = __CocoaSet.Iterator.next()();
    if (!v45)
    {
      break;
    }

    v0[21] = v45;
    type metadata accessor for NearbyAdvertisement();
    swift_dynamicCast();
    v14 = v0[20];
    v43 = v15;
    v44 = v1;
    if (!v14)
    {
      break;
    }

LABEL_37:
    v12 = v63;
    sub_1001D2680(v14);

    v15 = v43;
    v1 = v44;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_40:
  result = sub_100045960();
  v46 = *v62;
  if (!*v62)
  {
    goto LABEL_65;
  }

  v47 = *v62;

  if ((v46 & 0xC000000000000001) != 0)
  {
    v12 = __CocoaSet.makeIterator()();
    v1 = type metadata accessor for NearbyAdvertisement();
    sub_1001D5F18(&qword_100521BC0, &type metadata accessor for NearbyAdvertisement);
    Set.Iterator.init(_cocoa:)();
    v46 = v0[2];
    v14 = v0[3];
    v48 = v0[4];
    v13 = v0[5];
    v49 = v0[6];
  }

  else
  {
    v13 = 0;
    v50 = -1 << *(v46 + 32);
    v48 = ~v50;
    v14 = (v46 + 56);
    v51 = -v50;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v49 = v52 & *(v46 + 56);
  }

  v53 = (v48 + 64) >> 6;
  if ((v46 & 0x8000000000000000) == 0)
  {
LABEL_48:
    v54 = v13;
    v55 = v49;
    v15 = v13;
    if (v49)
    {
LABEL_52:
      v56 = (v55 - 1) & v55;
      v1 = *(*(v46 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v55)))));
      if (v1)
      {
        goto LABEL_56;
      }

      goto LABEL_58;
    }

    while (1)
    {
      v15 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_62;
      }

      if (v15 >= v53)
      {
        goto LABEL_58;
      }

      v55 = v14[v15];
      ++v54;
      if (v55)
      {
        goto LABEL_52;
      }
    }
  }

  while (1)
  {
    v57 = __CocoaSet.Iterator.next()();
    if (!v57)
    {
      break;
    }

    v0[19] = v57;
    type metadata accessor for NearbyAdvertisement();
    swift_dynamicCast();
    v1 = v0[18];
    v15 = v13;
    v56 = v49;
    if (!v1)
    {
      break;
    }

LABEL_56:
    v12 = v63;
    sub_1001D1A4C(v1);

    v13 = v15;
    v49 = v56;
    if ((v46 & 0x8000000000000000) == 0)
    {
      goto LABEL_48;
    }
  }

LABEL_58:
  sub_100045960();

  v58 = swift_task_alloc();
  v0[29] = v58;
  *v58 = v0;
  v58[1] = sub_1001CA1F8;
  v59 = v0[27];

  return sub_1001CAB04(0, 0);
}

uint64_t sub_1001CAB04(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1001BC5A8(&qword_100521BB8, &qword_10044EE70);
  v4 = sub_10000462C(&qword_100521BD8, &qword_100521BB8, &qword_10044EE70);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1001CABFC;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

uint64_t sub_1001CABFC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v15 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1001CADA8;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 32);
      v12 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1001CAD8C;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_1001CADA8()
{
  v0[3] = v0[7];
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

void sub_1001CAE50(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v2 & ~(v2 >> 63), 0);
    v36 = _swiftEmptyArrayStorage;
    if (v34)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v38;
        v10 = v40;
        v35 = v39;
        v11 = v1;
        sub_1001D5064(v38, v39, v40, v1);
        v13 = v12;
        v14 = NearbyAdvertisement.identifier.getter();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = v36[2];
        v18 = v36[3];
        if (v19 >= v18 >> 1)
        {
          sub_1000089FC((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        v17[2] = v19 + 1;
        v20 = &v17[2 * v19];
        v20[4] = v14;
        v20[5] = v16;
        v36 = v17;
        if (v34)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_1001BC5A8(&qword_100521BC8, &qword_10044EE80);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v37, 0);
          if (v6 == v33)
          {
LABEL_32:
            sub_10000A16C(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v21 = 1 << *(v11 + 32);
          if (v9 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v9 >> 6;
          v23 = *(v32 + 8 * (v9 >> 6));
          if (((v23 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v9 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_10000A16C(v9, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_10000A16C(v9, v35, 0);
          }

LABEL_31:
          v30 = *(v11 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void *sub_1001CB19C(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1001D395C(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_1001D3B8C(v5, v6);
LABEL_10:

  return sub_1001D3D6C(a1, v2);
}

uint64_t sub_1001CB290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1001D6648(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000038A4(v11, &qword_100521B60, &qword_10044F1A0);
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

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);

      return v22;
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

  sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1001CB52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1001D6648(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000038A4(v11, &qword_100521B60, &qword_10044F1A0);
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
      v24[0] = a3;
      v20 = String.utf8CString.getter() + 32;
      sub_100018D7C(0, &qword_100521B68, off_1004B30A8);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000038A4(v24[0], &qword_100521B60, &qword_10044F1A0);

      return v22;
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

  sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);
  sub_100018D7C(0, &qword_100521B68, off_1004B30A8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1001CB7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1001CB818, 0, 0);
}

uint64_t sub_1001CB818()
{
  v21 = v0;
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[5] = sub_100015AFC(v2, qword_100529778);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    if (*(v7 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v12 = 0x646F50656D6F48;
    }

    else
    {
      v12 = 7496003;
    }

    if (*(v7 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_10002C9C8(v12, v13, &v20);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s(%s)] Starting to listen for nearby invitations", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(&async function pointer to dispatch thunk of NearbyInvitationScanner.start() + 1);
  v19 = (&async function pointer to dispatch thunk of NearbyInvitationScanner.start() + async function pointer to dispatch thunk of NearbyInvitationScanner.start());
  v16 = swift_task_alloc();
  v0[6] = v16;
  *v16 = v0;
  v16[1] = sub_1001CBA6C;
  v17 = v0[3];

  return v19();
}

uint64_t sub_1001CBA6C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1001CBD40;
  }

  else
  {
    v3 = sub_1001CBB80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001CBB80()
{
  v17 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10002C9C8(v8, v9, &v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    if (*(v6 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v11 = 0x646F50656D6F48;
    }

    else
    {
      v11 = 7496003;
    }

    if (*(v6 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = sub_10002C9C8(v11, v12, &v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s(%s)] Started listening for nearby invitations", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1001CBD40()
{
  v22 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = *(v0 + 32);
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 136315650;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10002C9C8(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (*(v9 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v15 = 0x646F50656D6F48;
    }

    else
    {
      v15 = 7496003;
    }

    if (*(v9 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = sub_10002C9C8(v15, v16, &v21);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s(%s)] Failed to start listening for nearby invitations: %{public}@", v10, 0x20u);
    sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = *(v0 + 8);

  return v19();
}

id sub_1001CBF90()
{
  v1 = v0;
  swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_scanTask])
  {

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100529778);
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

  v10 = type metadata accessor for NearbySessionsListenerImplementation();
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "dealloc");
}

BOOL sub_1001CC22C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions);
  v7[0] = a1;
  v7[1] = a2;
  v4 = *(*v3 + 208);

  v4(&v8, v7);

  v5 = v8;
  if (v8)
  {
  }

  return v5 != 0;
}

uint64_t sub_1001CC330(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = swift_getObjectType();
  v4 = *(*(sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001CC3DC, 0, 0);
}

uint64_t sub_1001CC3DC()
{
  v106 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v103 = *(v0 + 48);
  v3 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_lock);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v103;
  *(v4 + 40) = v1;
  type metadata accessor for NearbyAdvertisement();
  sub_100013378(sub_1001D6208);

  v5 = *(v0 + 16);
  *(v0 + 88) = v5;
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 64);
  v7 = type metadata accessor for Logger();
  sub_100015AFC(v7, qword_100529778);
  v8 = v5;
  v9 = v6;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 72);
    v100 = *(v0 + 64);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v105[0] = swift_slowAlloc();
    *v13 = 136316162;
    v15 = _typeName(_:qualified:)();
    v17 = sub_10002C9C8(v15, v16, v105);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    if (*(v100 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v18 = 0x646F50656D6F48;
    }

    else
    {
      v18 = 7496003;
    }

    if (*(v100 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_10002C9C8(v18, v19, v105);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_10002C9C8(0xD000000000000021, 0x800000010043AA60, v105);
    *(v13 + 32) = 2082;
    v21 = NearbyAdvertisement.identifier.getter();
    v23 = sub_10002C9C8(v21, v22, v105);

    *(v13 + 34) = v23;
    *(v13 + 42) = 2112;
    *(v13 + 44) = v8;
    *v14 = v8;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s(%s)] %s <%{public}s> - %@", v13, 0x34u);
    sub_1000038A4(v14, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v25 = objc_opt_self();
  v26 = [v25 sharedCenter];
  v27 = [v26 localActiveIdentity];
  *(v0 + 96) = v27;

  if (v27)
  {
    v28 = [v27 displayName];
    if (v28)
    {
      v29 = *(v0 + 64);
      v30 = v28;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v32;
      v101 = v31;

      v33 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_pendingInvitationRequest;
      v104 = v29;
      if (*(v29 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_pendingInvitationRequest))
      {
        v34 = *(v0 + 64);
        v35 = v8;
        v36 = v34;

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v98 = v38;
          v39 = *(v0 + 72);
          v97 = *(v0 + 64);
          v40 = swift_slowAlloc();
          v105[0] = swift_slowAlloc();
          *v40 = 136315906;
          v41 = _typeName(_:qualified:)();
          v43 = sub_10002C9C8(v41, v42, v105);

          *(v40 + 4) = v43;
          *(v40 + 12) = 2080;
          if (*(v97 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
          {
            v44 = 0x646F50656D6F48;
          }

          else
          {
            v44 = 7496003;
          }

          if (*(v97 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
          {
            v45 = 0xE700000000000000;
          }

          else
          {
            v45 = 0xE300000000000000;
          }

          v46 = sub_10002C9C8(v44, v45, v105);

          *(v40 + 14) = v46;
          *(v40 + 22) = 2080;
          *(v40 + 24) = sub_10002C9C8(0xD000000000000021, 0x800000010043AA60, v105);
          *(v40 + 32) = 2080;
          v47 = NearbyAdvertisement.identifier.getter();
          v49 = sub_10002C9C8(v47, v48, v105);

          *(v40 + 34) = v49;
          _os_log_impl(&_mh_execute_header, v37, v98, "[%s(%s)] %s <%s> Cancelling pending invitation request", v40, 0x2Au);
          swift_arrayDestroy();
        }

        sub_100018D7C(0, &qword_100521B68, off_1004B30A8);
        sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
        Task.cancel()();
      }

      v50 = [objc_allocWithZone(_MRGroupSessionJoinRequestProtobuf) init];
      *(v0 + 104) = v50;
      if (v50)
      {
        v55 = v50;
        v57 = *(v0 + 72);
        v56 = *(v0 + 80);
        v58 = *(v0 + 64);
        v59 = [v27 protobuf];
        [v55 setIdentity:v59];

        v60 = type metadata accessor for TaskPriority();
        (*(*(v60 - 8) + 56))(v56, 1, 1, v60);
        v61 = *&v58[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_scanner];
        v62 = swift_allocObject();
        v62[2] = 0;
        v62[3] = 0;
        v62[4] = v58;
        v62[5] = v8;
        v62[6] = v101;
        v62[7] = v99;
        v62[8] = v61;
        v62[9] = v55;
        v62[10] = v57;
        v63 = v8;
        v64 = v58;

        v65 = v55;
        v66 = sub_1001CB52C(0, 0, v56, &unk_10044EDA8, v62);
        *(v0 + 112) = v66;
        v67 = *(v104 + v33);
        *(v104 + v33) = v66;

        v68 = *(&async function pointer to Task.value.getter + 1);
        v69 = swift_task_alloc();
        *(v0 + 120) = v69;
        v70 = sub_100018D7C(0, &qword_100521B68, off_1004B30A8);
        v53 = sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
        *v69 = v0;
        v69[1] = sub_1001CCE88;
        v54 = &protocol self-conformance witness table for Error;
        v50 = (v0 + 40);
        v51 = v66;
        v52 = v70;
      }

      else
      {
        __break(1u);
      }

      return Task.value.getter(v50, v51, v52, v53, v54);
    }
  }

  v71 = *(v0 + 64);
  v72 = v8;
  v73 = v71;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v77 = *(v0 + 64);
    v76 = *(v0 + 72);
    v78 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v105[0] = swift_slowAlloc();
    *v78 = 136316162;
    v79 = _typeName(_:qualified:)();
    v81 = sub_10002C9C8(v79, v80, v105);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    if (*(v77 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v82 = 0x646F50656D6F48;
    }

    else
    {
      v82 = 7496003;
    }

    if (*(v77 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v83 = 0xE700000000000000;
    }

    else
    {
      v83 = 0xE300000000000000;
    }

    v84 = sub_10002C9C8(v82, v83, v105);

    *(v78 + 14) = v84;
    *(v78 + 22) = 2080;
    *(v78 + 24) = sub_10002C9C8(0xD000000000000021, 0x800000010043AA60, v105);
    *(v78 + 32) = 2080;
    v85 = NearbyAdvertisement.identifier.getter();
    v87 = sub_10002C9C8(v85, v86, v105);

    *(v78 + 34) = v87;
    *(v78 + 42) = 2112;
    v88 = [v25 sharedCenter];
    v89 = [v88 localActiveIdentity];

    *(v78 + 44) = v89;
    *v102 = v89;
    _os_log_impl(&_mh_execute_header, v74, v75, "[%s(%s)] %s <%s> No display name for identity: %@", v78, 0x34u);
    sub_1000038A4(v102, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  type metadata accessor for MRGroupSessionError(0);
  v91 = v90;
  *(v0 + 32) = 4;
  v92 = sub_1001D5F18(&qword_100522CC0, type metadata accessor for MRGroupSessionError);
  sub_10022CC44(v0 + 32, 0xD000000000000022, 0x800000010043A9C0, 0, v91, v92);
  v93 = *(v0 + 24);
  swift_willThrow();

  v94 = *(v0 + 80);

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_1001CCE88()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1001CD030;
  }

  else
  {
    v3 = sub_1001CCF9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001CCF9C()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);

  v5 = *(v0 + 40);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1001CD030()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);

  v4 = *(v0 + 128);
  v5 = *(v0 + 80);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001CD0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v14;
  v8[16] = v15;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a1;
  v8[10] = a4;
  sub_1001D66B8();
  v8[17] = v9;
  v10 = *(v9 - 8);
  v8[18] = v10;
  v11 = *(v10 + 64) + 15;
  v8[19] = swift_task_alloc();

  return _swift_task_switch(sub_1001CD18C, 0, 0);
}

uint64_t sub_1001CD18C()
{
  v42 = v0;
  v1 = v0 + 2;
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = type metadata accessor for Logger();
  v0[20] = sub_100015AFC(v5, qword_100529778);
  v6 = v4;
  v7 = v3;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[16];
    v39 = v0[12];
    v40 = v0[13];
    v11 = v0[11];
    v38 = v0[10];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v12 = 136316162;
    v14 = _typeName(_:qualified:)();
    v16 = sub_10002C9C8(v14, v15, &v41);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    if (*(v38 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v17 = 0x646F50656D6F48;
    }

    else
    {
      v17 = 7496003;
    }

    if (*(v38 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_10002C9C8(v17, v18, &v41);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2080;
    *(v12 + 24) = sub_10002C9C8(0xD000000000000021, 0x800000010043AA60, &v41);
    *(v12 + 32) = 2112;
    *(v12 + 34) = v11;
    *v13 = v11;
    *(v12 + 42) = 2080;
    v1 = v0 + 2;
    v20 = v11;
    *(v12 + 44) = sub_10002C9C8(v39, v40, &v41);
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s(%s)] %s Requesting to join advertisement: %@ as %s", v12, 0x34u);
    sub_1000038A4(v13, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v21 = v0[15];
  v22 = kMREventGroupSessionJoinRequestSent;
  v0[6] = sub_1001CDB50;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1001CDC04;
  v0[5] = &unk_1004C2058;
  v23 = _Block_copy(v1);
  v24 = v22;
  MRAnalyticsSendEvent();
  _Block_release(v23);

  v25 = [v21 data];
  if (v25)
  {
    v26 = v25;
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xF000000000000000;
  }

  v0[21] = v27;
  v0[22] = v29;
  v30 = async function pointer to NearbyInvitationScanner<>.request(_:displayName:userInfo:)[1];
  v31 = swift_task_alloc();
  v0[23] = v31;
  *v31 = v0;
  v31[1] = sub_1001CD580;
  v32 = v0[19];
  v33 = v0[13];
  v34 = v0[14];
  v35 = v0[11];
  v36 = v0[12];

  return NearbyInvitationScanner<>.request(_:displayName:userInfo:)(v32, v35, v36, v33, v27, v29);
}

uint64_t sub_1001CD580(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v7 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v5 = sub_1001CDAD0;
  }

  else
  {
    sub_100045968(v3[21], v3[22]);
    v5 = sub_1001CD69C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001CD69C()
{
  v44 = v0;
  v1 = *(v0 + 200);
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = *(v0 + 192);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v3 = *(v0 + 152);
    swift_willThrow();

    v4 = *(v0 + 8);
    goto LABEL_19;
  }

  v5 = *(v0 + 152);
  v6 = InvitationRequest<>.Context.userInfo.getter();
  if (v7 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v8 = v6;
  v9 = v7;
  v10 = objc_allocWithZone(_MRGroupSessionJoinResponseProtobuf);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = [v10 initWithData:isa];

  if (!v12)
  {
LABEL_8:
    sub_100045968(v8, v9);
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v13 = [v12 joinURL];
  if (!v13)
  {

    goto LABEL_8;
  }

  v14 = v13;
  v15 = [objc_opt_self() tokenForJoinURLString:v13];

  sub_100045968(v8, v9);
LABEL_10:
  v16 = *(v0 + 192);
  v17 = *(v0 + 160);
  v18 = *(v0 + 80);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v42 = *(v0 + 192);
    v21 = *(v0 + 128);
    v22 = *(v0 + 80);
    v23 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v23 = 136315906;
    v24 = _typeName(_:qualified:)();
    v26 = sub_10002C9C8(v24, v25, v43);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    if (*(v22 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v27 = 0x646F50656D6F48;
    }

    else
    {
      v27 = 7496003;
    }

    if (*(v22 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v28 = 0xE700000000000000;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_10002C9C8(v27, v28, v43);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_10002C9C8(0xD000000000000021, 0x800000010043AA60, v43);
    *(v23 + 32) = 2082;
    *(v0 + 64) = v42;
    type metadata accessor for NearbyGroup();
    sub_1001D5F18(&qword_100521B08, &type metadata accessor for NearbyGroup);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = sub_10002C9C8(v30, v31, v43);

    *(v23 + 34) = v32;
    _os_log_impl(&_mh_execute_header, v19, v20, "[%s(%s)] %s Successfully joined NearbyGroup: %{public}s", v23, 0x2Au);
    swift_arrayDestroy();
  }

  v33 = *(v0 + 192);
  v35 = *(v0 + 144);
  v34 = *(v0 + 152);
  v36 = *(v0 + 136);
  v37 = *(v0 + 72);
  type metadata accessor for MRDNearbyGroup();

  v39 = sub_1001E0DB4(v38);
  v40 = [objc_allocWithZone(MRDGroupSessionJoinResponse) initWithNearbyGroup:v39 publicSigningKeyData:0 joinToken:v15];

  (*(v35 + 8))(v34, v36);
  *v37 = v40;

  v4 = *(v0 + 8);
LABEL_19:

  return v4();
}

uint64_t sub_1001CDAD0()
{
  sub_100045968(v0[21], v0[22]);
  v1 = v0[25];
  v2 = v0[19];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

unint64_t sub_1001CDB50()
{
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = kMREventJoinSessionModeProximity;
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  v3 = v1;
  v4 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228F0, &unk_100450070);
  return v4;
}

Class sub_1001CDC04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  sub_100018D7C(0, &qword_1005228E0, NSObject_ptr);
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

uint64_t sub_1001CDE1C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1001CDEF0;

  return sub_1001CC330(v5, v7);
}

uint64_t sub_1001CDEF0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1001CE0AC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();

  return _swift_task_switch(sub_1001CE11C, 0, 0);
}

id sub_1001CE11C()
{
  v120 = v0;
  v1 = [*(v0 + 96) invitationData];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v114 = v5;
    v116 = v3;
    *(v0 + 120) = v3;
    *(v0 + 128) = v5;
    if (qword_100529770 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = type metadata accessor for Logger();
    *(v0 + 136) = sub_100015AFC(v8, qword_100529778);
    v9 = v6;
    v10 = v7;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 112);
      v111 = *(v0 + 104);
      v14 = *(v0 + 96);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v15 = 136315906;
      v17 = _typeName(_:qualified:)();
      v19 = sub_10002C9C8(v17, v18, &v119);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      if (*(v111 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v20 = 0x646F50656D6F48;
      }

      else
      {
        v20 = 7496003;
      }

      if (*(v111 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v21 = 0xE700000000000000;
      }

      else
      {
        v21 = 0xE300000000000000;
      }

      v22 = sub_10002C9C8(v20, v21, &v119);

      *(v15 + 14) = v22;
      *(v15 + 22) = 2080;
      *(v15 + 24) = sub_10002C9C8(0xD000000000000017, 0x800000010043A9A0, &v119);
      *(v15 + 32) = 2112;
      *(v15 + 34) = v14;
      *v16 = v14;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s(%s)] %s with payload: %@", v15, 0x2Au);
      sub_1000038A4(v16, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v24 = objc_opt_self();
    v25 = [v24 sharedCenter];
    v26 = [v25 localActiveIdentity];
    *(v0 + 144) = v26;

    if (v26)
    {
      v27 = [v26 displayName];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        *(v0 + 152) = v29;
        *(v0 + 160) = v31;
        result = [objc_allocWithZone(_MRGroupSessionJoinRequestProtobuf) init];
        *(v0 + 168) = result;
        if (result)
        {
          v33 = result;
          v34 = [v26 protobuf];
          [v33 setIdentity:v34];

          v35 = [objc_opt_self() currentSettings];
          LOBYTE(v34) = [v35 supportGroupSessionHome];

          if (v34)
          {
            v36 = *(v0 + 104);
            *(v0 + 176) = sub_1001C990C();
            v37 = swift_task_alloc();
            *(v0 + 184) = v37;
            *v37 = v0;
            v37[1] = sub_1001CEEC8;

            return sub_10037CF58();
          }

          else
          {
            v79 = *(v0 + 152);
            v118 = *(v0 + 120);
            type metadata accessor for MRGroupSessionError(0);
            v81 = v80;
            *(v0 + 56) = 12;
            v82 = swift_task_alloc();
            v83 = *(v0 + 160);
            *(v82 + 16) = v118;
            *(v82 + 32) = v79;
            *(v82 + 40) = v83;
            v84 = sub_1001BC5A8(&qword_100521B00, &qword_10044ED30);
            v85 = sub_1001D5F18(&qword_100522CC0, type metadata accessor for MRGroupSessionError);
            sub_10022CD94(v0 + 56, 0xD000000000000022, 0x800000010043A9F0, sub_1001D5D7C, v82, v81, v84, v85);
            v86 = *(v0 + 160);
            v87 = *(v0 + 168);
            v88 = *(v0 + 136);
            v89 = *(v0 + 104);

            v90 = *(v0 + 48);
            *(v0 + 200) = v90;
            v91 = v89;
            v92 = v87;
            v93 = Logger.logObject.getter();
            v94 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v93, v94))
            {
              v95 = *(v0 + 168);
              v96 = *(v0 + 112);
              v113 = *(v0 + 104);
              v97 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              v119 = swift_slowAlloc();
              *v97 = 136315650;
              v98 = _typeName(_:qualified:)();
              v100 = v90;
              v101 = sub_10002C9C8(v98, v99, &v119);

              *(v97 + 4) = v101;
              *(v97 + 12) = 2080;
              if (*(v113 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
              {
                v102 = 0x646F50656D6F48;
              }

              else
              {
                v102 = 7496003;
              }

              if (*(v113 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
              {
                v103 = 0xE700000000000000;
              }

              else
              {
                v103 = 0xE300000000000000;
              }

              v104 = sub_10002C9C8(v102, v103, &v119);

              *(v97 + 14) = v104;
              v90 = v100;
              *(v97 + 22) = 2112;
              *(v97 + 24) = v95;
              *v115 = v95;
              v105 = v95;
              _os_log_impl(&_mh_execute_header, v93, v94, "[%s(%s)] Requesting to join session with inner request: %@", v97, 0x20u);
              sub_1000038A4(v115, &qword_100521870, &unk_10044EA70);

              swift_arrayDestroy();
            }

            v106 = *(v0 + 96);
            *(v0 + 72) = 6;
            v107 = swift_task_alloc();
            *(v0 + 208) = v107;
            v108 = *(v0 + 104);
            *(v107 + 16) = v106;
            *(v107 + 24) = v90;
            *(v107 + 32) = v108;
            v109 = swift_task_alloc();
            *(v0 + 216) = v109;
            v110 = type metadata accessor for NearbyGroup();
            *(v0 + 224) = v110;
            *v109 = v0;
            v109[1] = sub_1001CF58C;
            v122 = v85;

            return sub_10022CEBC(v0 + 64, v0 + 72, 0xD000000000000013, 0x800000010043AA20, &unk_10044ED40, v107, v81, v110);
          }
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    v60 = *(v0 + 104);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 112);
      v112 = *(v0 + 104);
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v64 = 136315906;
      v66 = _typeName(_:qualified:)();
      v68 = sub_10002C9C8(v66, v67, &v119);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      if (*(v112 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v69 = 0x646F50656D6F48;
      }

      else
      {
        v69 = 7496003;
      }

      if (*(v112 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v70 = 0xE700000000000000;
      }

      else
      {
        v70 = 0xE300000000000000;
      }

      v71 = sub_10002C9C8(v69, v70, &v119);

      *(v64 + 14) = v71;
      *(v64 + 22) = 2080;
      *(v64 + 24) = sub_10002C9C8(0xD000000000000017, 0x800000010043A9A0, &v119);
      *(v64 + 32) = 2112;
      v72 = [v24 sharedCenter];
      v73 = [v72 localActiveIdentity];

      *(v64 + 34) = v73;
      *v65 = v73;
      _os_log_impl(&_mh_execute_header, v61, v62, "[%s(%s)] %s Can't request to join with no display name. Current identity: %@", v64, 0x2Au);
      sub_1000038A4(v65, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    type metadata accessor for MRGroupSessionError(0);
    v75 = v74;
    *(v0 + 40) = 4;
    v76 = sub_1001D5F18(&qword_100522CC0, type metadata accessor for MRGroupSessionError);
    sub_10022CC44(v0 + 40, 0xD000000000000022, 0x800000010043A9C0, 0, v75, v76);
    v77 = *(v0 + 32);
    swift_willThrow();
    sub_1001C4034(v116, v114);
  }

  else
  {
    if (qword_100529770 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 96);
    v38 = *(v0 + 104);
    v40 = type metadata accessor for Logger();
    sub_100015AFC(v40, qword_100529778);
    v41 = v38;
    v42 = v39;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = *(v0 + 112);
      v117 = *(v0 + 104);
      v46 = *(v0 + 96);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v47 = 136315906;
      v49 = _typeName(_:qualified:)();
      v51 = sub_10002C9C8(v49, v50, &v119);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      if (*(v117 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v52 = 0x646F50656D6F48;
      }

      else
      {
        v52 = 7496003;
      }

      if (*(v117 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v53 = 0xE700000000000000;
      }

      else
      {
        v53 = 0xE300000000000000;
      }

      v54 = sub_10002C9C8(v52, v53, &v119);

      *(v47 + 14) = v54;
      *(v47 + 22) = 2080;
      *(v47 + 24) = sub_10002C9C8(0xD000000000000017, 0x800000010043A9A0, &v119);
      *(v47 + 32) = 2114;
      *(v47 + 34) = v46;
      *v48 = v46;
      v55 = v46;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%s(%s)] %s Token does not contain invitation: %{public}@", v47, 0x2Au);
      sub_1000038A4(v48, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    type metadata accessor for MRGroupSessionError(0);
    v57 = v56;
    *(v0 + 24) = 12;
    v58 = sub_1001D5F18(&qword_100522CC0, type metadata accessor for MRGroupSessionError);
    sub_10022CC44(v0 + 24, 0xD000000000000021, 0x800000010043A970, 0, v57, v58);
    v59 = *(v0 + 16);
    swift_willThrow();
  }

  v78 = *(v0 + 8);

  return v78();
}

uint64_t sub_1001CEEC8(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_1001CEFE4, 0, 0);
}

uint64_t sub_1001CEFE4()
{
  v52 = v0;
  v1 = (v0 + 192);
  *(v0 + 88) = *(v0 + 192);
  v2 = [*(v0 + 96) sharedSecret];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_100008318(&v51, v4, v6);

    v1 = (v0 + 88);
  }

  v7 = *v1;
  v8 = *(*v1 + 16);
  if (v8)
  {
    v9 = sub_1001D37A8(*(*v1 + 16), 0);
    v10 = sub_1001D5264(&v51, v9 + 4, v8, v7);
    sub_100045960();
    if (v10 == v8)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_7:
  v11 = *(v0 + 168);
  sub_1001CFA38(v9);

  v12 = objc_allocWithZone(NSMutableArray);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithArray:isa];

  [v11 setOobKeys:v14];
  v15 = *(v0 + 152);
  v49 = *(v0 + 120);
  type metadata accessor for MRGroupSessionError(0);
  v17 = v16;
  *(v0 + 56) = 12;
  v18 = swift_task_alloc();
  v19 = *(v0 + 160);
  *(v18 + 16) = v49;
  *(v18 + 32) = v15;
  *(v18 + 40) = v19;
  v20 = sub_1001BC5A8(&qword_100521B00, &qword_10044ED30);
  v21 = sub_1001D5F18(&qword_100522CC0, type metadata accessor for MRGroupSessionError);
  sub_10022CD94(v0 + 56, 0xD000000000000022, 0x800000010043A9F0, sub_1001D5D7C, v18, v17, v20, v21);
  v22 = *(v0 + 160);
  v23 = *(v0 + 168);
  v24 = *(v0 + 136);
  v25 = *(v0 + 104);

  v26 = *(v0 + 48);
  *(v0 + 200) = v26;
  v27 = v25;
  v28 = v23;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 168);
    v50 = v26;
    v32 = *(v0 + 112);
    v48 = *(v0 + 104);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v33 = 136315650;
    v35 = _typeName(_:qualified:)();
    v37 = sub_10002C9C8(v35, v36, &v51);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    if (*(v48 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v38 = 0x646F50656D6F48;
    }

    else
    {
      v38 = 7496003;
    }

    if (*(v48 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v39 = 0xE700000000000000;
    }

    else
    {
      v39 = 0xE300000000000000;
    }

    v40 = sub_10002C9C8(v38, v39, &v51);
    v26 = v50;

    *(v33 + 14) = v40;
    *(v33 + 22) = 2112;
    *(v33 + 24) = v31;
    *v34 = v31;
    v41 = v31;
    _os_log_impl(&_mh_execute_header, v29, v30, "[%s(%s)] Requesting to join session with inner request: %@", v33, 0x20u);
    sub_1000038A4(v34, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v42 = *(v0 + 96);
  *(v0 + 72) = 6;
  v43 = swift_task_alloc();
  *(v0 + 208) = v43;
  v44 = *(v0 + 104);
  *(v43 + 16) = v42;
  *(v43 + 24) = v26;
  *(v43 + 32) = v44;
  v45 = swift_task_alloc();
  *(v0 + 216) = v45;
  v46 = type metadata accessor for NearbyGroup();
  *(v0 + 224) = v46;
  *v45 = v0;
  v45[1] = sub_1001CF58C;
  v54 = v21;

  return sub_10022CEBC(v0 + 64, v0 + 72, 0xD000000000000013, 0x800000010043AA20, &unk_10044ED40, v43, v17, v46);
}

uint64_t sub_1001CF58C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 232) = v0;

  v4 = *(v2 + 208);

  if (v0)
  {
    v5 = sub_1001CF9A8;
  }

  else
  {
    v5 = sub_1001CF6B0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001CF6B0()
{
  v31 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 64);
  v3 = *(v0 + 104);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v29 = *(v0 + 224);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v8 = 136315906;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10002C9C8(v9, v10, &v30);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    if (*(v7 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v12 = 0x646F50656D6F48;
    }

    else
    {
      v12 = 7496003;
    }

    if (*(v7 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_10002C9C8(v12, v13, &v30);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_10002C9C8(0xD000000000000017, 0x800000010043A9A0, &v30);
    *(v8 + 32) = 2080;
    *(v0 + 80) = v2;
    sub_1001D5F18(&qword_100521B08, &type metadata accessor for NearbyGroup);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = sub_10002C9C8(v15, v16, &v30);

    *(v8 + 34) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s(%s)] %s Successfully joined NearbyGroup: %s", v8, 0x2Au);
    swift_arrayDestroy();
  }

  v18 = *(v0 + 200);
  v19 = *(v0 + 168);
  v20 = *(v0 + 144);
  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v23 = *(v0 + 96);
  type metadata accessor for MRDNearbyGroup();

  v25 = sub_1001E0DB4(v24);
  v26 = [objc_allocWithZone(MRDGroupSessionJoinResponse) initWithNearbyGroup:v25 publicSigningKeyData:0 joinToken:v23];

  sub_1001C4034(v22, v21);
  v27 = *(v0 + 8);

  return v27(v26);
}

uint64_t sub_1001CF9A8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);

  sub_1001C4034(v4, v3);

  v5 = *(v0 + 232);
  v6 = *(v0 + 8);

  return v6();
}

void *sub_1001CFA38(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_1001D382C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001D382C((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_1001C4088(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1001CFB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = *(*(sub_1001BC5A8(&qword_100521760, &qword_10044EBE8) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[20] = v7;
  v8 = *(v7 - 8);
  v5[21] = v8;
  v5[22] = *(v8 + 64);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_1001CFC4C, 0, 0);
}

uint64_t sub_1001CFC4C()
{
  v1 = [v0[15] sharedSecret];
  if (v1)
  {

    v2 = &kMREventJoinSessionModeWHAAutoJoin;
  }

  else
  {
    v2 = &kMREventJoinSessionModeQRCode;
  }

  v3 = *v2;
  v0[25] = *v2;
  v4 = kMREventGroupSessionJoinRequestSent;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v0[6] = sub_1001D5F60;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1001CDC04;
  v0[5] = &unk_1004C1F90;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];
  v8 = v3;
  v9 = v4;

  MRAnalyticsSendEvent();
  _Block_release(v6);

  v10 = *(&async function pointer to dispatch thunk of InvitationRequest.requestApproval() + 1);
  v14 = (&async function pointer to dispatch thunk of InvitationRequest.requestApproval() + async function pointer to dispatch thunk of InvitationRequest.requestApproval());
  v11 = swift_task_alloc();
  v0[26] = v11;
  *v11 = v0;
  v11[1] = sub_1001CFDF8;
  v12 = v0[16];

  return v14();
}

uint64_t sub_1001CFDF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_1001D0894;
  }

  else
  {
    v5 = sub_1001CFF0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

id sub_1001CFF0C()
{
  v73 = v0;
  v1 = v0 + 8;
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v3 = v0[17];
  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529778);
  v5 = v3;
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[27];
    v71 = v4;
    v10 = v0[17];
    v11 = v0[18];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v12 = 136315650;
    v14 = _typeName(_:qualified:)();
    v16 = sub_10002C9C8(v14, v15, v72);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = *(v10 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source);
    v1 = v0 + 8;
    if (v17 == 1)
    {
      v18 = 0x646F50656D6F48;
    }

    else
    {
      v18 = 7496003;
    }

    if (v17 == 1)
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_10002C9C8(v18, v19, v72);
    v4 = v71;

    *(v12 + 14) = v20;
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    *v13 = v9;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s(%s)] Got join response: %@", v12, 0x20u);
    sub_1000038A4(v13, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v22 = v0[27];
  v23 = kMREventGroupSessionJoinResponseReceived;
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v0[12] = sub_1001D600C;
  v0[13] = v24;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_1001CDC04;
  v0[11] = &unk_1004C1FE0;
  v25 = _Block_copy(v1);
  v26 = v0[13];
  v22;
  v27 = v23;

  MRAnalyticsSendEvent();
  _Block_release(v25);

  InvitationJoinResponse.sessionIdentifier.getter();
  if (!v28)
  {
    goto LABEL_14;
  }

  v30 = v0[20];
  v29 = v0[21];
  v31 = v0[19];
  UUID.init(uuidString:)();
  if ((*(v29 + 48))(v31, 1, v30) == 1)
  {
    v32 = v0[19];

    sub_1000038A4(v32, &qword_100521760, &qword_10044EBE8);
LABEL_14:
    v33 = v0[27];
    v34 = v0[25];
    sub_1001D60D8();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();

    if (qword_100529770 != -1)
    {
      swift_once();
    }

    v36 = v0[17];
    sub_100015AFC(v4, qword_100529778);
    v37 = v36;
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v41 = v0[17];
      v40 = v0[18];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v72[0] = swift_slowAlloc();
      *v42 = 136315650;
      v44 = _typeName(_:qualified:)();
      v46 = sub_10002C9C8(v44, v45, v72);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      if (*(v41 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v47 = 0x646F50656D6F48;
      }

      else
      {
        v47 = 7496003;
      }

      if (*(v41 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
      {
        v48 = 0xE700000000000000;
      }

      else
      {
        v48 = 0xE300000000000000;
      }

      v49 = sub_10002C9C8(v47, v48, v72);

      *(v42 + 14) = v49;
      *(v42 + 22) = 2112;
      swift_errorRetain();
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 24) = v50;
      *v43 = v50;
      _os_log_impl(&_mh_execute_header, v38, v39, "[%s(%s)] failed to request access, reason: %@", v42, 0x20u);
      sub_1000038A4(v43, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v51 = v0[23];
    v52 = v0[24];
    v53 = v0[19];
    swift_willThrow();

    v54 = v0[1];

    return v54();
  }

  v56 = *(v0[21] + 32);
  v56(v0[24], v0[19], v0[20]);
  result = [objc_opt_self() currentSettings];
  if (result)
  {
    v57 = result;
    v59 = v0[23];
    v58 = v0[24];
    v61 = v0[21];
    v60 = v0[22];
    v62 = v0[20];

    [v57 groupSessionNearbyGroupJoinTimeout];

    v63 = static Duration.seconds(_:)();
    v65 = v64;
    (*(v61 + 16))(v59, v58, v62);
    v66 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v67 = swift_allocObject();
    v0[29] = v67;
    v56(v67 + v66, v59, v62);
    v68 = swift_task_alloc();
    v0[30] = v68;
    v69 = type metadata accessor for NearbyGroup();
    *v68 = v0;
    v68[1] = sub_1001D06A8;
    v70 = v0[14];

    return withTimeout<A>(duration:_:)(v70, v63, v65, &unk_10044ED68, v67, v69);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001D06A8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 232);

  if (v0)
  {
    v6 = sub_1001D0B3C;
  }

  else
  {
    v6 = sub_1001D07DC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001D07DC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);

  (*(v5 + 8))(v1, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001D0894()
{
  v24 = v0;

  v1 = *(v0 + 224);
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 136);
  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100529778);
  v4 = v2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v9 = 136315650;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10002C9C8(v11, v12, v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    if (*(v8 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v14 = 0x646F50656D6F48;
    }

    else
    {
      v14 = 7496003;
    }

    if (*(v8 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_10002C9C8(v14, v15, v23);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v17;
    *v10 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s(%s)] failed to request access, reason: %@", v9, 0x20u);
    sub_1000038A4(v10, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v19 = *(v0 + 184);
  v18 = *(v0 + 192);
  v20 = *(v0 + 152);
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1001D0B3C()
{
  v28 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);

  (*(v4 + 8))(v1, v3);
  v5 = *(v0 + 248);
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 136);
  v7 = type metadata accessor for Logger();
  sub_100015AFC(v7, qword_100529778);
  v8 = v6;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v13 = 136315650;
    v15 = _typeName(_:qualified:)();
    v17 = sub_10002C9C8(v15, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    if (*(v12 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v18 = 0x646F50656D6F48;
    }

    else
    {
      v18 = 7496003;
    }

    if (*(v12 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source) == 1)
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_10002C9C8(v18, v19, v27);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v21;
    *v14 = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%s(%s)] failed to request access, reason: %@", v13, 0x20u);
    sub_1000038A4(v14, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v23 = *(v0 + 184);
  v22 = *(v0 + 192);
  v24 = *(v0 + 152);
  swift_willThrow();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1001D0E08(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = *(*(sub_1001BC5A8(&qword_100521760, &qword_10044EBE8) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_1001BC5A8(&qword_100521B28, &qword_10044ED70);
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_1001BC5A8(&qword_100521B30, &qword_10044ED78);
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001D0FDC, 0, 0);
}

uint64_t sub_1001D0FDC()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  type metadata accessor for NearbyGroup();
  v9 = *(v7 + 16);
  v0[16] = v9;
  v0[17] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  static NearbyGroup.groups(service:identifier:)();
  sub_1000038A4(v5, &qword_100521760, &qword_10044EBE8);
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_1001D1164;
  v12 = v0[15];
  v13 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v13);
}

uint64_t sub_1001D1164()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_1001D1260, 0, 0);
}

uint64_t sub_1001D1260()
{
  v48 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    if (qword_100529770 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 64);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = type metadata accessor for Logger();
    sub_100015AFC(v7, qword_100529778);
    v3(v4, v6, v5);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 104);
    v14 = *(v0 + 64);
    if (v10)
    {
      log = v8;
      v15 = *(v0 + 48);
      v16 = *(v0 + 56);
      v46 = *(v0 + 112);
      v17 = *(v0 + 40);
      v45 = *(v0 + 104);
      v18 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v18 = 136315394;
      v42 = v9;
      NearbyGroup.id.getter();
      sub_1001D5F18(&qword_100521B38, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v12;
      v21 = v20;
      v22 = *(v15 + 8);
      v22(v16, v17);
      v23 = sub_10002C9C8(v19, v21, v47);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v22(v14, v17);
      v27 = sub_10002C9C8(v24, v26, v47);

      *(v18 + 14) = v27;
      _os_log_impl(&_mh_execute_header, log, v42, "Observed group: %s, waiting for %s", v18, 0x16u);
      swift_arrayDestroy();

      (*(v46 + 8))(v43, v45);
    }

    else
    {
      v34 = *(v0 + 40);
      v35 = *(v0 + 48);

      (*(v35 + 8))(v14, v34);
      (*(v11 + 8))(v12, v13);
    }

    v36 = *(v0 + 120);
    v37 = *(v0 + 96);
    v39 = *(v0 + 64);
    v38 = *(v0 + 72);
    v40 = *(v0 + 56);
    **(v0 + 24) = v1;

    v33 = *(v0 + 8);
  }

  else
  {
    v28 = *(v0 + 96);
    v30 = *(v0 + 64);
    v29 = *(v0 + 72);
    v31 = *(v0 + 56);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    sub_1001D60D8();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();

    v33 = *(v0 + 8);
  }

  return v33();
}

uint64_t sub_1001D17D0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1001D1894;

  return sub_1001CE0AC(v6);
}

uint64_t sub_1001D1894(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

void sub_1001D1A4C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529778);
  v5 = v2;
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  p_inst_meths = (&OBJC_PROTOCOL___MRVolumeUIControllable + 24);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v10 = 136315906;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10002C9C8(v12, v13, &v59);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (*&v5[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
    {
      v15 = 0x646F50656D6F48;
    }

    else
    {
      v15 = 7496003;
    }

    if (*&v5[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = sub_10002C9C8(v15, v16, &v59);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_10002C9C8(0xD000000000000033, 0x800000010043A930, &v59);
    *(v10 + 32) = 2114;
    *(v10 + 34) = v6;
    *v11 = v6;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s(%s)] %s - %{public}@", v10, 0x2Au);
    sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    p_inst_meths = &OBJC_PROTOCOL___MRVolumeUIControllable.inst_meths;
  }

  sub_100018D7C(0, &unk_100521AF0, MRDiscoveredGroupSession_ptr);
  v19 = *(p_inst_meths[322] + v5);
  v20 = v6;
  v21 = sub_1001D2294(v20, v19);
  if (v21)
  {
    v22 = v21;
    v23 = *&v5[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_lock];
    __chkstk_darwin(v21);
    sub_100013378(sub_1001D5B84);
    if (v59 == 1)
    {
      v24 = [v22 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v25);
      sub_100013378(sub_1001D5C60);

      v26 = v5;
      v27 = v22;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v30 = 136315650;
        v32 = _typeName(_:qualified:)();
        v34 = sub_10002C9C8(v32, v33, &v59);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2080;
        if (v19 == 1)
        {
          v35 = 0x646F50656D6F48;
        }

        else
        {
          v35 = 7496003;
        }

        if (v19 == 1)
        {
          v36 = 0xE700000000000000;
        }

        else
        {
          v36 = 0xE300000000000000;
        }

        v37 = sub_10002C9C8(v35, v36, &v59);

        *(v30 + 14) = v37;
        *(v30 + 22) = 2114;
        *(v30 + 24) = v27;
        *v31 = v22;
        v38 = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "[%s(%s)] Notifying of discovered session - %{public}@", v30, 0x20u);
        sub_1000038A4(v31, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      if (*&v26[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_delegate])
      {
        v39 = *&v26[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_delegate];
        [swift_unknownObjectRetain() listener:v26 didDiscoverSession:v27];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v52 = v22;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138543362;
        *(v55 + 4) = v52;
        *v56 = v22;
        v57 = v52;
        _os_log_impl(&_mh_execute_header, v53, v54, "Already notified for session: %{public}@. Ignoring.", v55, 0xCu);
        sub_1000038A4(v56, &qword_100521870, &unk_10044EA70);
      }

      else
      {
      }
    }
  }

  else
  {
    v40 = v5;
    v41 = v20;
    v58 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v43 = 136315906;
      v45 = _typeName(_:qualified:)();
      v47 = sub_10002C9C8(v45, v46, &v59);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      if (v19 == 1)
      {
        v48 = 0x646F50656D6F48;
      }

      else
      {
        v48 = 7496003;
      }

      if (v19 == 1)
      {
        v49 = 0xE700000000000000;
      }

      else
      {
        v49 = 0xE300000000000000;
      }

      v50 = sub_10002C9C8(v48, v49, &v59);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2080;
      *(v43 + 24) = sub_10002C9C8(0xD000000000000033, 0x800000010043A930, &v59);
      *(v43 + 32) = 2114;
      *(v43 + 34) = v41;
      *v44 = v41;
      v51 = v41;
      _os_log_impl(&_mh_execute_header, v58, v42, "[%s(%s)] %s Failed to parse advertisement: %{public}@", v43, 0x2Au);
      sub_1000038A4(v44, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

id sub_1001D2294(void *a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = NearbyAdvertisement.contactID.getter();
  if (v7)
  {
    v8 = sub_1001E56B0(v6, v7);
    if (v9 == 1)
    {
      goto LABEL_4;
    }

    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;

    sub_1001D5738(v12, v13, v14, v15);
    if (!v13)
    {
      goto LABEL_4;
    }

LABEL_9:
    dispatch thunk of NearbyAdvertisement.deviceColor.getter();
    v51 = v5;
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v32 = [(objc_class *)isa stringValue];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v33;
    }

    v34 = NearbyAdvertisement.userInfo.getter();
    if (v35 >> 60 == 15)
    {
      v36 = dispatch thunk of NearbyAdvertisement.deviceModel.getter();
      if (v37)
      {
        v38 = sub_1001D55F8(v36, v37);
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v39 = v34;
      v40 = v35;
      v41 = sub_1001D5514(v34, v35);
      v38 = sub_100367638(v41);
      sub_100045968(v39, v40);
    }

    dispatch thunk of NearbyAdvertisement.deviceModel.getter();
    v43 = v42;
    v44 = String._bridgeToObjectiveC()();

    if (v43)
    {
      v45 = String._bridgeToObjectiveC()();

      if (v29)
      {
LABEL_21:
        v46 = String._bridgeToObjectiveC()();

LABEL_24:
        v47 = [objc_allocWithZone(MRGroupSessionHostInfo) initWithRouteType:v38 displayName:v44 modelIdentifier:v45 color:v46];

        v48 = objc_allocWithZone(ObjCClassFromMetadata);
        NearbyAdvertisement.identifier.getter();
        v49 = String._bridgeToObjectiveC()();

        v50 = [v48 initWithIdentifier:v49 hostInfo:v47 source:a2];

        return v50;
      }
    }

    else
    {
      v45 = 0;
      if (v29)
      {
        goto LABEL_21;
      }
    }

    v46 = 0;
    goto LABEL_24;
  }

  NearbyAdvertisement.displayName.getter();
  if (v27)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100015AFC(v16, qword_100529778);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v52 = v22;
    *v20 = 136315394;
    v23 = _typeName(_:qualified:)();
    v25 = sub_10002C9C8(v23, v24, &v52);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v17;
    *v21 = v17;
    v26 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%s] Failed to resolve contact information for advertisement: %@", v20, 0x16u);
    sub_1000038A4(v21, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v22);
  }

  else
  {
  }

  return 0;
}

void sub_1001D2680(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100529770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100529778);
  v5 = v2;
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v9 = 136315906;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10002C9C8(v11, v12, &v45);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = *&v5[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source];
    if (v14 == 1)
    {
      v15 = 0x646F50656D6F48;
    }

    else
    {
      v15 = 7496003;
    }

    if (v14 == 1)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = sub_10002C9C8(v15, v16, &v45);

    *(v9 + 14) = v17;
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_10002C9C8(0xD00000000000002DLL, 0x800000010043A900, &v45);
    *(v9 + 32) = 2114;
    *(v9 + 34) = v6;
    *v10 = v6;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s(%s)] %s - %{public}@", v9, 0x2Au);
    sub_1000038A4(v10, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v19 = NearbyAdvertisement.identifier.getter();
  v21 = v20;
  v45 = 0;
  v22 = *&v5[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_lock];
  v43 = __chkstk_darwin(v19);
  sub_100013378(sub_1001D5A24);
  v23 = v45;
  if (v45)
  {
    v24 = v45;
  }

  else
  {
    sub_100018D7C(0, &unk_100521AF0, MRDiscoveredGroupSession_ptr);
    v25 = *&v5[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source];
    v26 = sub_1001D2294(v6, v25);
    if (v26)
    {
      v24 = v26;
    }

    else
    {
      NearbyAdvertisement.identifier.getter();
      v27 = [objc_allocWithZone(MRGroupSessionHostInfo) init];
      v28 = objc_allocWithZone(MRDiscoveredGroupSession);
      v29 = String._bridgeToObjectiveC()();

      v24 = [v28 initWithIdentifier:v29 hostInfo:v27 source:v25];
    }
  }

  v30 = v23;

  v31 = v5;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v34 = 136315650;
    v35 = _typeName(_:qualified:)();
    v37 = sub_10002C9C8(v35, v36, v44);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    if (*&v31[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
    {
      v38 = 0x646F50656D6F48;
    }

    else
    {
      v38 = 7496003;
    }

    if (*&v31[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
    {
      v39 = 0xE700000000000000;
    }

    else
    {
      v39 = 0xE300000000000000;
    }

    v40 = sub_10002C9C8(v38, v39, v44);

    *(v34 + 14) = v40;
    *(v34 + 22) = 2082;
    v41 = sub_10002C9C8(v43, v21, v44);

    *(v34 + 24) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "[%s(%s)] Notifying of lost session - %{public}s", v34, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v42 = *&v31[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_delegate];
  if (v42)
  {
    [v42 listener:v31 didLoseSession:v24];
  }
}

void sub_1001D2C0C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_lock);
  sub_1001BC5A8(&unk_100521AE0, &unk_10044ED20);
  sub_100013378(sub_1001D5958);
  if (!a1)
  {
    goto LABEL_11;
  }

  v4 = v14[1];
  v5 = *(v14[0] + 16);
  v13 = a1;
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = sub_1001D37A8(v5, 0);
  v7 = sub_1001D53BC(v14, v6 + 4, v5, v14[0]);

  sub_100045960();
  if (v7 == v5)
  {
    a1 = v13;
LABEL_5:
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a1 setDiscoveredGroupSessions:isa];

    v9 = *(v4 + 16);
    if (!v9)
    {
LABEL_8:
      v12 = Array._bridgeToObjectiveC()().super.isa;

      [a1 setNotifiedGroupSessions:v12];

      return;
    }

    v10 = sub_1001D37A8(*(v4 + 16), 0);
    v11 = sub_1001D53BC(v14, v10 + 4, v9, v4);

    sub_100045960();
    if (v11 == v9)
    {
      a1 = v13;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1001D2EB8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001D5514(a1, a2);
  sub_1001C4034(a1, a2);
  return v4;
}

Swift::Int sub_1001D2F74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001D2FE8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1001D303C(uint64_t a1)
{
  v2 = sub_1001D5F18(&qword_100521BF8, type metadata accessor for MRGroupSessionError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001D30A8(uint64_t a1)
{
  v2 = sub_1001D5F18(&qword_100521BF8, type metadata accessor for MRGroupSessionError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1001D3114(uint64_t a1)
{
  v2 = sub_1001D5F18(&unk_100521C30, type metadata accessor for MRGroupSessionError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1001D31A0(uint64_t a1)
{
  v2 = sub_1001D5F18(&unk_100521C30, type metadata accessor for MRGroupSessionError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1001D320C(uint64_t a1)
{
  v2 = sub_1001D5F18(&unk_100521C30, type metadata accessor for MRGroupSessionError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1001D3278(void *a1, uint64_t a2)
{
  v4 = sub_1001D5F18(&unk_100521C30, type metadata accessor for MRGroupSessionError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1001D332C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001D5F18(&unk_100521C30, type metadata accessor for MRGroupSessionError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1001D33A8()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_1001D3408@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1001D3424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001D5F18(&unk_100521C30, type metadata accessor for MRGroupSessionError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1001D34BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_1001D6648(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000038A4(v11, &qword_100521B60, &qword_10044F1A0);
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

    sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);

    return v22;
  }

LABEL_8:
  sub_1000038A4(a3, &qword_100521B60, &qword_10044F1A0);
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

void *sub_1001D37A8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_1001D382C(char *a1, int64_t a2, char a3)
{
  result = sub_1001D384C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001D384C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&unk_100521B18, &unk_10044ED50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1001D395C(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!__CocoaSet.count.getter())
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
    __CocoaSet.makeIterator()();
    type metadata accessor for NearbyAdvertisement();
    sub_1001D5F18(&qword_100521BC0, &type metadata accessor for NearbyAdvertisement);
    Set.Iterator.init(_cocoa:)();
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
      sub_100045960();
      return;
    }

    while (1)
    {
      v18 = sub_1001D43F4(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NearbyAdvertisement();
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

Swift::Int sub_1001D3B8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001BC5A8(&qword_100521BD0, &qword_10044EE88);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NearbyAdvertisement();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1001D457C(v9 + 1);
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

void *sub_1001D3D6C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NearbyAdvertisement();
    sub_1001D5F18(&qword_100521BC0, &type metadata accessor for NearbyAdvertisement);
    Set.Iterator.init(_cocoa:)();
    v5 = v77;
    v7 = v78;
    v8 = v79;
    v9 = v80;
    v10 = v81;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v72 = v5;
  v73 = v7;
  v74 = v8;
  v75 = v9;
  v63 = v8;
  v14 = (v8 + 64) >> 6;
  v69 = v4 + 7;
  v76 = v10;
  v66 = v5;
  v67 = v14;
  v65 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        goto LABEL_62;
      }

      v70 = v22;
      type metadata accessor for NearbyAdvertisement();
      swift_dynamicCast();
      v20 = v71;
      v18 = v9;
      v2 = v10;
      if (!v71)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        v17 = v14 <= v9 + 1 ? v9 + 1 : v14;
        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_66;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v72 = v5;
      v73 = v7;
      v74 = v63;
      v75 = v18;
      v76 = v2;
      if (!v20)
      {
        goto LABEL_62;
      }
    }

    v23 = v20;
    v24 = NSObject._rawHashValue(seed:)(v4[5]);
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v65;
    v5 = v66;
    v14 = v67;
  }

  v3 = ~v25;
  v26 = type metadata accessor for NearbyAdvertisement();
  v27 = *(v4[6] + 8 * v7);
  v68 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v4[6] + 8 * v7);
  }

  v30 = *(v4 + 32);
  v60 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v60;
  v3 = v67;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v61 = &v59;
    __chkstk_darwin(v29);
    v32 = &v59 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v69, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = v4[2];
    v62 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v65;
    v35 = v66;
LABEL_33:
    v64 = v5;
    while (v35 < 0)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37)
      {
        goto LABEL_61;
      }

      v70 = v37;
      swift_dynamicCast();
      v38 = v71;
      if (!v71)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = NSObject._rawHashValue(seed:)(v4[5]);
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v69[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(v44[6] + 8 * v7);
          v50 = static NSObject.== infix(_:_:)();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v69[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v67;

        v51 = v62[v46];
        v62[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v65;
        v35 = v66;
        v5 = v64;
        if (!v52)
        {
          v5 = v64 - 1;
          if (__OFSUB__(v64, 1))
          {
            __break(1u);
          }

          if (v64 == 1)
          {

            v4 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v65;
        v35 = v66;
        v3 = v67;
        v5 = v64;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v72 = v35;
      v73 = v36;
      v74 = v63;
      v75 = v40;
      v18 = v40;
      v76 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_1001D4A28(v62, v60, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v54 = v6;

    v55 = v54;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v56 = swift_slowAlloc();
  memcpy(v56, v69, v55);
  sub_1001D47A4(v56, v60, v4, v7, &v72);
  v58 = v57;

  v4 = v58;
LABEL_62:
  sub_100045960();
  return v4;
}

uint64_t sub_1001D43F4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_1001D4C1C();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for NearbyAdvertisement();
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001D4D74();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_1001D4EC4(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_1001D457C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100521BD0, &qword_10044EE88);
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

void sub_1001D47A4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_29;
          }

          type metadata accessor for NearbyAdvertisement();
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
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
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_1001D4A28(a1, a2, v30, a3);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        type metadata accessor for NearbyAdvertisement();
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

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
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
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

uint64_t sub_1001D4A28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1001BC5A8(&qword_100521BD0, &qword_10044EE88);
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_1001D4C1C()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1001D3B8C(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for NearbyAdvertisement();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
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

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1001D4EC4(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001D4D74()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100521BD0, &qword_10044EE88);
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

unint64_t sub_1001D4EC4(unint64_t result)
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
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

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

void sub_1001D5064(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for NearbyAdvertisement();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for NearbyAdvertisement();
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

void *sub_1001D5264(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1001D53BC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1001D5514(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return result;
    }

    v3 = result;
    if (result > result >> 32)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v4 = __DataStorage._bytes.getter();
    if (!v4)
    {
LABEL_20:
      result = __DataStorage._length.getter();
      __break(1u);
      return result;
    }

    v5 = v4;
    v6 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, v6))
    {
      goto LABEL_17;
    }

    v7 = (v3 - v6 + v5);
    result = __DataStorage._length.getter();
    if (v7)
    {
      return *v7;
    }

    __break(1u);
  }

  if (v2 == 2)
  {
    v8 = *(result + 16);
    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
LABEL_18:
      __DataStorage._length.getter();
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v10 = v9;
    v11 = __DataStorage._offset.getter();
    if (!__OFSUB__(v8, v11))
    {
      v7 = (v8 - v11 + v10);
      __DataStorage._length.getter();
      if (v7)
      {
        return *v7;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_1001D55F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000010043AB00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else
  {
    sub_1001D6868();
    if (StringProtocol.contains<A>(_:)())
    {

      return 8;
    }

    else
    {
      v3 = StringProtocol.contains<A>(_:)();

      if (v3)
      {
        return 11;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1001D5738(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 1)
  {

    sub_100045968(a3, a4);
  }
}

unint64_t sub_1001D5788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&unk_100521B50, &unk_10044ED90);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000698C(v5, v6);
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

uint64_t sub_1001D588C(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_1001D5958@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(**(v3 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_discoveredAdvertisements) + 192);

  v6 = v4(v5);

  *a1 = v6;
  v7 = *(**(v3 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions) + 192);

  v9 = v7(v8);

  a1[1] = v9;
  return result;
}

uint64_t sub_1001D5A24()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_discoveredAdvertisements);
  v15 = v3;
  v16 = 0;
  v14 = v1;
  v6 = *(*v5 + 216);

  v6(&v16, &v14);

  v7 = OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions;
  v8 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions);
  v14 = v1;
  v15 = v3;
  v9 = *(*v8 + 208);

  v9(&v16, &v14);

  v10 = *v4;
  *v4 = v16;

  v11 = *(v2 + v7);
  v15 = v3;
  v16 = 0;
  v14 = v1;
  v12 = *(*v11 + 216);

  v12(&v16, &v14);
}

void sub_1001D5B84(BOOL *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(*(v1 + 16) + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions);

  v5 = [v3 identifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v10[0] = v6;
  v10[1] = v8;
  (*(*v4 + 208))(&v11, v10);

  v9 = v11;
  if (v11)
  {
  }

  *a1 = v9 == 0;
}

uint64_t sub_1001D5C60()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_discoveredAdvertisements);
  v14 = v4;
  v15 = v3;
  v13 = v2;
  v7 = *(*v6 + 216);

  v8 = v3;
  v7(&v15, &v13);

  v9 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_notifiedSessions);
  v14 = v4;
  v15 = v5;
  v13 = v2;
  v10 = *(*v9 + 216);

  v11 = v5;
  v10(&v15, &v13);
}

uint64_t sub_1001D5D7C@<X0>(uint64_t *a1@<X8>)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = [*(v1 + 48) data];
  if (v8)
  {
    v9 = v8;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1001BC5A8(&qword_100521B00, &qword_10044ED30);

  sub_1001C3FE0(v5, v4);
  result = InvitationRequest.__allocating_init(invitationData:displayName:userInfo:)();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001D5E58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009F30;

  return sub_1001CFB38(a1, v4, v5, v7, v6);
}

uint64_t sub_1001D5F18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001D5F60()
{
  v1 = *(v0 + 16);
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  *(inited + 48) = v1;
  v4 = v1;
  v5 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228F0, &unk_100450070);
  return v5;
}

unint64_t sub_1001D600C()
{
  v1 = *(v0 + 16);
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  InvitationJoinResponse.sessionIdentifier.getter();
  if (v4)
  {
  }

  *(inited + 48) = Bool._bridgeToObjectiveC()();
  v5 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228F0, &unk_100450070);
  return v5;
}

unint64_t sub_1001D60D8()
{
  result = qword_100529790;
  if (!qword_100529790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100529790);
  }

  return result;
}

uint64_t sub_1001D612C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009F34;

  return sub_1001D0E08(a1, v1 + v5);
}

uint64_t sub_1001D6208@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *&v4[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_discoveredAdvertisements];
  v27 = v3;
  v8 = *(*v7 + 208);

  v8(&v29, &v27);

  if (v29)
  {
    *a1 = v29;
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v27 = 0xD000000000000026;
    v28 = 0x800000010043AA90;
    v10._countAndFlagsBits = v3;
    v10._object = v5;
    String.append(_:)(v10);
    v12 = v27;
    v11 = v28;
    if (qword_100529770 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100015AFC(v13, qword_100529778);
    v14 = v4;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v17 = 136315906;
      v18 = _typeName(_:qualified:)();
      v20 = sub_10002C9C8(v18, v19, &v27);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      if (*&v14[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
      {
        v21 = 0x646F50656D6F48;
      }

      else
      {
        v21 = 7496003;
      }

      if (*&v14[OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_source] == 1)
      {
        v22 = 0xE700000000000000;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      v23 = sub_10002C9C8(v21, v22, &v27);

      *(v17 + 14) = v23;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_10002C9C8(0xD000000000000021, 0x800000010043AA60, &v27);
      *(v17 + 32) = 2082;
      *(v17 + 34) = sub_10002C9C8(v12, v11, &v27);
      _os_log_impl(&_mh_execute_header, v15, v16, "[%s(%s)] %s %{public}s", v17, 0x2Au);
      swift_arrayDestroy();
    }

    type metadata accessor for MRGroupSessionError(0);
    v25 = v24;
    v29 = 2;
    v26 = sub_1001D5F18(&qword_100522CC0, type metadata accessor for MRGroupSessionError);
    sub_10022CC44(&v29, v12, v11, 0, v25, v26);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001D656C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = v1[10];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100009F30;

  return sub_1001CD0B8(a1, v11, v12, v4, v5, v6, v7, v8);
}

uint64_t sub_1001D6648(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001D66B8()
{
  if (!qword_100521B78)
  {
    v0 = type metadata accessor for InvitationRequest<>.Context();
    if (!v1)
    {
      atomic_store(v0, &qword_100521B78);
    }
  }
}

uint64_t sub_1001D6700()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F34;

  return sub_1001D17D0(v2, v3, v4);
}

uint64_t sub_1001D67B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1001CDE1C(v2, v3, v4);
}

unint64_t sub_1001D6868()
{
  result = qword_100521B80;
  if (!qword_100521B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100521B80);
  }

  return result;
}

uint64_t sub_1001D68BC()
{
  v2 = *(sub_1001BC5A8(&qword_100521B98, &qword_10044EE30) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009F30;

  return sub_1001CA014(v7, v8, v9, v0 + v3, v5, v6);
}

uint64_t sub_1001D69D8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1001CB7F4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1001D6A80()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *v3;

  v7 = sub_1001CB19C(v6, v1);

  v8 = *v2;
  *v2 = v7;

  v9 = *v3;

  v10 = sub_1001CB19C(v1, v9);
  v11 = *v4;
  *v4 = v10;

  v12 = *v3;
  *v3 = v1;
}

uint64_t getEnumTagSinglePayload for NearbySessionsListenerImplementation.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbySessionsListenerImplementation.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001D6EBC()
{
  result = qword_100521C20;
  if (!qword_100521C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100521C20);
  }

  return result;
}

unint64_t sub_1001D6FA4()
{
  result = qword_1005297A0[0];
  if (!qword_1005297A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005297A0);
  }

  return result;
}

uint64_t sub_1001D7010(void *a1)
{
  v1 = a1;
  v2 = sub_1001D7044();

  return v2;
}

uint64_t sub_1001D7044()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x60);
  v3 = v0 + *((swift_isaMask & *v0) + 0x68);
  return dispatch thunk of Hashable.hashValue.getter();
}

uint64_t sub_1001D70B4(uint64_t a1)
{
  v2 = (swift_isaMask & *v1);
  sub_1001D8AC4(a1, v12);
  if (!v13)
  {
    sub_100037768(v12);
    goto LABEL_5;
  }

  v4 = v2[10];
  v3 = v2[11];
  v5 = v2[12];
  type metadata accessor for LRUDictionary.Wrapper();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v9 = 0;
    return v9 & 1;
  }

  v6 = *((swift_isaMask & *v1) + 0x68);
  v7 = *((*v11 & swift_isaMask) + 0x68);
  v8 = *(v5 + 8);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v9 & 1;
}

uint64_t sub_1001D71D8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1001D70B4(v8);

  sub_100037768(v8);
  return v6 & 1;
}

id sub_1001D7260()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for LRUDictionary.Wrapper();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_1001D73A0(void (*a1)(void, void, void, void), void (*a2)(void))
{
  v4 = *v2;
  v5 = v2[5];
  a1(0, v4[10], v4[11], v4[12]);
  sub_100013378(a2);
  return v7;
}

uint64_t sub_1001D7444(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1001D7484(a1);
  return v2;
}

void *sub_1001D7484(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[10];
  v6 = v4[11];
  swift_getTupleTypeMetadata2();
  v7 = static Array._allocateUninitialized(_:)();
  v8 = sub_1001D85A4(v7, v5, v6, v4[12]);

  v2[3] = v8;
  v2[4] = [objc_allocWithZone(NSMutableOrderedSet) init];
  type metadata accessor for Lock();
  v2[5] = sub_10036C394();
  v2[2] = a1;
  return v2;
}

void sub_1001D7574()
{
  v1 = v0[5];
  v2 = *(*v0 + 88);
  type metadata accessor for Optional();
  sub_100013378(sub_1001D88F8);
}

uint64_t sub_1001D75F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 88);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  swift_beginAccess();
  v11 = a1[3];
  v12 = *(v4 + 80);
  v13 = *(v4 + 96);

  Dictionary.subscript.getter();

  v14 = *(v5 - 8);
  if ((*(v14 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v15 = 1;
  }

  else
  {
    (*(v14 + 32))(a2, v10, v5);
    sub_1001D7E74();
    v15 = 0;
  }

  return (*(v14 + 56))(a2, v15, 1, v5);
}

uint64_t sub_1001D77FC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1001D8924();
  (*(*(*(v5 + 80) - 8) + 8))(a2);
  v6 = *(v5 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

uint64_t sub_1001D78C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *a1;
  v6 = v20[11];
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v20 - v11;
  v13 = v20[10];
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v10);
  v17 = &v20 - v16;
  if ([*(a1 + 32) count] >= *(a1 + 16))
  {
    sub_1001D7F50();
  }

  sub_1001D7E74();
  (*(v14 + 16))(v17, a2, v13);
  (*(v8 + 16))(v12, a3, v7);
  swift_beginAccess();
  v18 = v20[12];
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  return swift_endAccess();
}

void (*sub_1001D7AF4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1;
  v6 = *(*v1 + 88);
  v7 = type metadata accessor for Optional();
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[13] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[13] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v4[14] = v10;
  v11 = *(v5 + 80);
  v4[15] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v4[16] = v12;
  if (&_swift_coroFrameAlloc)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v12 + 64));
  }

  v4[17] = v14;
  (*(v13 + 16))();
  sub_1001D7574();
  return sub_1001D7CCC;
}

void sub_1001D7CCC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  v5 = *(*a1 + 112);
  v6 = *(*a1 + 120);
  v8 = *(*a1 + 96);
  v7 = *(*a1 + 104);
  v9 = *(*a1 + 88);
  if (a2)
  {
    v10 = v2[5];
    (*(v2[12] + 16))(v2[13], v2[14], v2[11]);
    v11 = *(v10 + 40);
    v2[2] = v10;
    v2[3] = v3;
    v2[4] = v7;
    sub_100013378(sub_1001D8B34);
    (*(v4 + 8))(v3, v6);
    v12 = *(v8 + 8);
    v12(v7, v9);
    v12(v5, v9);
  }

  else
  {
    v13 = v2[5];
    v14 = *(v13 + 40);
    v2[8] = v13;
    v2[9] = v3;
    v2[10] = v5;
    sub_100013378(sub_1001D8B34);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1001D7E74()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[5];
  sub_10036C41C();
  v4 = *(v2 + 80);
  v5 = v1[4];
  [v5 removeObject:_bridgeAnythingToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  v6 = v1[4];
  [v6 insertObject:_bridgeAnythingToObjectiveC<A>(_:)() atIndex:0];

  return swift_unknownObjectRelease();
}

uint64_t sub_1001D7F50()
{
  v1 = v0;
  v27 = *v0;
  v2 = v27[11];
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v26 = &v26 - v5;
  v6 = v27[10];
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v10);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  v20 = v0[5];
  sub_10036C41C();
  if ([v1[4] lastObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001C4088(&v28, v29);
  }

  else
  {
    memset(v29, 0, sizeof(v29));
  }

  sub_1001BC5A8(&qword_100522890, &qword_100450610);
  v21 = swift_dynamicCast();
  v22 = *(v13 + 56);
  if (v21)
  {
    v22(v12, 0, 1, v6);
    (*(v13 + 32))(v19, v12, v6);
    v23 = v1[4];
    [v23 removeObject:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    (*(v13 + 16))(v17, v19, v6);
    (*(*(v2 - 8) + 56))(v26, 1, 1, v2);
    swift_beginAccess();
    v24 = v27[12];
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
    return (*(v13 + 8))(v19, v6);
  }

  else
  {
    v22(v12, 1, 1, v6);
    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t sub_1001D832C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1001D835C()
{
  sub_1001D832C();

  return swift_deallocClassInstance();
}

unint64_t sub_1001D8390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1001D83EC(a1, v9, a2, a3);
}

unint64_t sub_1001D83EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1001D85A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1001D8390(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1001D88A8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 24);
}

uint64_t sub_1001D8A18(uint64_t a1)
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

uint64_t sub_1001D8AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100522890, &qword_100450610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1001D8BC4()
{
  if (qword_100529A30 != -1)
  {
    swift_once();
  }

  return &qword_100538350;
}

uint64_t *sub_1001D8C64()
{
  if (qword_100529A40 != -1)
  {
    swift_once();
  }

  return &qword_100538360;
}

uint64_t sub_1001D8CB4()
{
  sub_1001D93F0();
  result = OS_os_log.init(subsystem:category:)();
  qword_100538368 = result;
  return result;
}

uint64_t *sub_1001D8D1C()
{
  if (qword_100529A48 != -1)
  {
    swift_once();
  }

  return &qword_100538368;
}

uint64_t sub_1001D8D6C()
{
  sub_1001D93F0();
  result = OS_os_log.init(subsystem:category:)();
  qword_100538370 = result;
  return result;
}

uint64_t *sub_1001D8DD4()
{
  if (qword_100529A50 != -1)
  {
    swift_once();
  }

  return &qword_100538370;
}

uint64_t sub_1001D8E44()
{
  sub_1001D93F0();
  result = OS_os_log.init(subsystem:category:)();
  qword_100538380 = result;
  return result;
}

uint64_t sub_1001D8EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1001D93F0();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t sub_1001D8F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1001D93F0();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t sub_1001D8FB4()
{
  sub_1001D93F0();
  result = OS_os_log.init(subsystem:category:)();
  qword_100538398 = result;
  return result;
}

uint64_t *sub_1001D901C()
{
  if (qword_100529A78 != -1)
  {
    swift_once();
  }

  return &qword_100538398;
}

uint64_t sub_1001D9140(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = type metadata accessor for Logger();
  sub_1001C4098(v7, a2);
  sub_100015AFC(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return Logger.init(_:)();
}

uint64_t sub_1001D9224(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  sub_1001C4098(v7, a2);
  v8 = sub_100015AFC(v7, a2);
  v9 = [objc_opt_self() currentSettings];
  v10 = [v9 verboseMediaControlLogging];

  if (v10)
  {
    if (*a3 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    v12 = sub_100015AFC(v11, a4);
    v19 = *(v11 - 8);
    (*(v19 + 16))(v8, v12, v11);
    v13 = *(v19 + 56);
    v14 = v8;
    v15 = 0;
    v16 = v11;
  }

  else
  {
    v17 = type metadata accessor for Logger();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = v8;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_1001D93F0()
{
  result = qword_100521CA0;
  if (!qword_100521CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100521CA0);
  }

  return result;
}

id sub_1001D9804()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CryptoUtils();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001D9838(void **a1, void **a2)
{
  v32 = a2;
  v3 = sub_1001BC5A8(&qword_100521CE0, &qword_10044F088);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = *(v4 + 56);
  Curve25519.Signing.PrivateKey.init()();
  Curve25519.Signing.PrivateKey.publicKey.getter();
  sub_1001D9C8C(v10, v8);
  v12 = *(v4 + 56);
  v13 = Curve25519.Signing.PrivateKey.rawRepresentation.getter();
  v15 = v14;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1001C4034(v13, v15);
  v17 = type metadata accessor for Curve25519.Signing.PrivateKey();
  v18 = *(v17 - 8);
  v30 = *(v18 + 8);
  v31 = v18 + 8;
  v30(v8, v17);
  v19 = *a1;
  *a1 = isa;

  v20 = type metadata accessor for Curve25519.Signing.PublicKey();
  v21 = *(*(v20 - 8) + 8);
  v21(&v8[v12], v20);
  sub_1001D9C8C(v10, v8);
  v22 = *(v4 + 56);
  v23 = Curve25519.Signing.PublicKey.rawRepresentation.getter();
  v25 = v24;
  v26 = Data._bridgeToObjectiveC()().super.isa;
  sub_1001C4034(v23, v25);
  v21(&v8[v22], v20);
  v27 = *v32;
  *v32 = v26;

  sub_1001D9CFC(v10);
  return (v30)(v8, v17);
}

unint64_t sub_1001D9A44()
{
  result = qword_100521CA8;
  if (!qword_100521CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100521CA8);
  }

  return result;
}

Class sub_1001D9A98(uint64_t a1, unint64_t a2, Class isa, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v22 = a4;
  v12 = type metadata accessor for Curve25519.Signing.PublicKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a5;
  v21 = a6;
  sub_1001C3FE0(a5, a6);
  Curve25519.Signing.PublicKey.init<A>(rawRepresentation:)();
  if (!v6)
  {
    sub_1001D9C40();
    v20 = a1;
    v21 = a2;
    v19[0] = isa;
    v19[1] = v22;
    sub_1001D9A44();
    v17 = Curve25519.Signing.PublicKey.isValidSignature<A, B>(_:for:)();
    isa = NSNumber.init(BOOLeanLiteral:)(v17 & 1).super.super.isa;
    (*(v13 + 8))(v16, v12);
  }

  return isa;
}

unint64_t sub_1001D9C40()
{
  result = qword_100521CD8;
  if (!qword_100521CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100521CD8);
  }

  return result;
}

uint64_t sub_1001D9C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100521CE0, &qword_10044F088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001D9CFC(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_100521CE0, &qword_10044F088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001D9DB0(void *a1)
{
  v2 = [a1 origin];
  v3 = [v1 originClientForOrigin:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 activeNowPlayingClient];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 activePlayerClient];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 isPlaying];

      v3 = v5;
      v5 = v7;
    }

    else
    {
      v8 = 0;
    }

    v3 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1001D9EBC()
{
  type metadata accessor for RouteRecommendationSuppressionController();
  v0 = [objc_opt_self() sharedMonitor];
  v5[3] = sub_100018D7C(0, &qword_100521CE8, off_1004B3090);
  v5[4] = &off_1004C2480;
  v5[0] = v0;
  v1 = [objc_opt_self() server];
  v2 = [v1 nowPlayingServer];

  v4[3] = sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v4[4] = &off_1004C2490;
  v4[0] = v2;
  return sub_10034E970(v5, v4);
}

uint64_t sub_1001D9FB4()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100529AB8);
  sub_100015AFC(v0, qword_100529AB8);
  v1 = *sub_1001D8DD4();
  return Logger.init(_:)();
}

uint64_t sub_1001DA060()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1001DA0C0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1001DA158;
}

void sub_1001DA158(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1001DA27C()
{
  v1 = *(v0 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_executionQueue);
  sub_1001BC5A8(&qword_100521D08, &unk_10044F120);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

id SystemGroupSessionRemoteControlService.__allocating_init(delegate:)(unint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1001DF7D8(a1);
  swift_unknownObjectRelease();
  return v4;
}

id SystemGroupSessionRemoteControlService.init(delegate:)(unint64_t a1)
{
  v1 = sub_1001DF7D8(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1001DA3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = a2;
  v11 = sub_1001BF864(0, 0, v7, &unk_10044F1F0, v10);
  v12 = *(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_sessionTask);
  *(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_sessionTask) = v11;
}

uint64_t sub_1001DA51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v5[19] = v9;
  v10 = *(v9 - 8);
  v5[20] = v10;
  v11 = *(v10 + 64) + 15;
  v5[21] = swift_task_alloc();
  v12 = sub_1001BC5A8(&qword_100521DD0, &qword_10044F1F8);
  v5[22] = v12;
  v13 = *(v12 - 8);
  v5[23] = v13;
  v14 = *(v13 + 64) + 15;
  v5[24] = swift_task_alloc();
  v15 = sub_1001BC5A8(&qword_100521DD8, &unk_10044F200);
  v5[25] = v15;
  v16 = *(v15 - 8);
  v5[26] = v16;
  v17 = *(v16 + 64) + 15;
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_1001DA708, 0, 0);
}

uint64_t sub_1001DA708()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[14];
  type metadata accessor for SystemRemoteControlActivity();
  sub_100004810(&qword_100521DC8, type metadata accessor for SystemRemoteControlActivity);
  static GroupActivity.sessions()();
  GroupSession.Sessions.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v6 = sub_10000462C(&qword_100521DE0, &qword_100521DD8, &unk_10044F200);
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_1001DA88C;
  v9 = v0[27];
  v10 = v0[25];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 11, v10, v6);
}

uint64_t sub_1001DA88C()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1001DAD64;
  }

  else
  {
    v3 = sub_1001DA9A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001DA9C4()
{
  v1 = v0[30];
  if (v1)
  {
    v2 = v0[14];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = v0[21];
      v4 = v0[18];
      v26 = v0[20];
      v27 = v0[19];
      v5 = v0[16];
      v6 = v0[15];
      v24 = *(Strong + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_executionQueue);
      v25 = v0[17];
      v7 = Strong;
      v8 = swift_allocObject();
      v8[2] = v1;
      v8[3] = v7;
      v8[4] = v6;
      v0[6] = sub_1001E0824;
      v0[7] = v8;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100003D98;
      v0[5] = &unk_1004C26D0;
      v9 = _Block_copy(v0 + 2);

      v23 = v7;
      static DispatchQoS.unspecified.getter();
      v0[13] = _swiftEmptyArrayStorage;
      sub_100004810(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v9);

      (*(v25 + 8))(v4, v5);
      (*(v26 + 8))(v22, v27);

      v10 = v0[7];

      v11 = sub_10000462C(&qword_100521DE0, &qword_100521DD8, &unk_10044F200);
      v12 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      v13 = swift_task_alloc();
      v0[28] = v13;
      *v13 = v0;
      v13[1] = sub_1001DA88C;
      v14 = v0[27];
      v15 = v0[25];

      return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 11, v15, v11);
    }

    (*(v0[26] + 8))(v0[27], v0[25]);
  }

  else
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
  }

  v16 = v0[27];
  v17 = v0[24];
  v18 = v0[21];
  v19 = v0[18];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001DAD64()
{
  *(v0 + 96) = *(v0 + 232);
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_1001DADF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100529AB0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100015AFC(v9, qword_100529AB8);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24[1] = a2;
    v13 = v12;
    v25 = swift_slowAlloc();
    *v13 = 136315650;
    v14 = _typeName(_:qualified:)();
    v16 = sub_10002C9C8(v14, v15, &v25);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    GroupSession.id.getter();
    sub_100004810(&qword_100521B38, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    v20 = sub_10002C9C8(v17, v19, &v25);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2080;
    v24[2] = a1;
    sub_1001BC5A8(&qword_100521DE8, &qword_10044F210);
    sub_10000462C(&qword_100521DF0, &qword_100521DE8, &qword_10044F210);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = sub_10002C9C8(v21, v22, &v25);

    *(v13 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s]<%{public}s> Got session: %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  sub_1001DCFA0();
  GroupSession.join()();
}

uint64_t sub_1001DB164()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_executionQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1001DFAEC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C2518;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100004810(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_1001DB4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v3[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_executionQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  *(v16 + 24) = ObjectType;
  aBlock[4] = a2;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = a3;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100004810(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_1001DB770(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v64 - v6;
  v8 = sub_1001BC5A8(&qword_100521DA0, &qword_10044F1C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = __chkstk_darwin(v10);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_activity;
  if (!*(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_activity))
  {
    v68 = v7;
    UUID.init()();
    v71 = UUID.uuidString.getter();
    v18 = v17;
    (*(v11 + 8))(v15, v10);
    v19 = [objc_opt_self() localDeviceInfo];
    v20 = [v19 name];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v23;
      v67 = v22;
    }

    else
    {
      v66 = 0xE000000000000000;
      v67 = 0;
    }

    v24 = [v19 identifier];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v27;
      v65 = v26;
    }

    else
    {
      v64 = 0xE000000000000000;
      v65 = 0;
    }

    v69 = v18;
    v70 = a2;
    v28 = [v19 groupUID];
    if (v28)
    {
      v29 = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0xE000000000000000;
    }

    v33 = [v19 modelID];
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0xE000000000000000;
    }

    sub_1003A0858(v67, v66, v65, v64, v30, v32, 3, 14, v74, v35, v37);

    type metadata accessor for SystemRemoteControlActivity();
    v38 = v69;

    sub_1002132D0(v71, v38, v74);
    v40 = v39;
    v41 = *(a1 + v16);
    *(a1 + v16) = v39;

    v73 = _swiftEmptyArrayStorage;
    sub_10000462C(&qword_100521DA8, &qword_100521DA0, &qword_10044F1C0);
    sub_1001BC5A8(&qword_100521DB0, &qword_10044F1C8);
    sub_10000462C(&qword_100521DB8, &qword_100521DB0, &qword_10044F1C8);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v73 = v40;
    v42 = sub_1001BC5A8(&qword_100521DC0, &qword_10044F1D0);
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();

    v45 = GroupActivityAdvertisement.init(activity:destinations:)();
    v46 = *(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_advertisement);
    *(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_advertisement) = v45;

    v47 = type metadata accessor for TaskPriority();
    v48 = v68;
    (*(*(v47 - 8) + 56))(v68, 1, 1, v47);
    v49 = swift_allocObject();
    v49[2] = 0;
    v49[3] = 0;
    v51 = v70;
    v50 = v71;
    v49[4] = v40;
    v49[5] = v50;
    v49[6] = v38;
    v49[7] = v45;
    v49[8] = v51;

    sub_1001BF864(0, 0, v48, &unk_10044F1E0, v49);

    if (qword_100529AB0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100015AFC(v52, qword_100529AB8);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v55 = 136315650;
      v56 = _typeName(_:qualified:)();
      v58 = v38;
      v59 = sub_10002C9C8(v56, v57, &v73);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      v60 = sub_10002C9C8(v71, v58, &v73);

      *(v55 + 14) = v60;
      *(v55 + 22) = 2080;
      v72 = v45;

      v61 = String.init<A>(describing:)();
      v63 = sub_10002C9C8(v61, v62, &v73);

      *(v55 + 24) = v63;
      _os_log_impl(&_mh_execute_header, v53, v54, "[%s]<%{public}s> Began advertising: %s", v55, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  return result;
}