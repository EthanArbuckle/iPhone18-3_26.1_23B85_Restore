int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100001404(&qword_10000C010, &qword_100003448);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  sub_10000276C(0xD00000000000001ELL, 0x8000000100003480);
  qword_10000C030 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = type metadata accessor for Daemon();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  qword_10000C030 = Daemon.init()();

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_100001794(0, 0, v6, &unk_100003458, v13);

  objc_autoreleasePoolPop(v7);

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = [objc_opt_self() mainRunLoop];
  [v14 run];

  return 0;
}

uint64_t sub_100001404(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000144C(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1000014E4, v3, v2);
}

uint64_t sub_1000014E4()
{
  v1 = qword_10000C030;
  *(v0 + 48) = qword_10000C030;
  if (v1)
  {
    v2 = async function pointer to Daemon.activate()[1];

    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    *v3 = v0;
    v3[1] = sub_1000015DC;

    return Daemon.activate()();
  }

  else
  {
    v4 = *(v0 + 24);

    **(v0 + 16) = *(v0 + 48) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1000015DC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(sub_100001720, v5, v4);
}

uint64_t sub_100001720()
{
  v1 = *(v0 + 24);

  **(v0 + 16) = *(v0 + 48) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100001794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100001404(&qword_10000C010, &qword_100003448) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100001E48(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100001EB8(v11);
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

      sub_100001404(&qword_10000C018, &qword_100003470);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_100001EB8(a3);

      return v23;
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

  sub_100001EB8(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_100001404(&qword_10000C018, &qword_100003470);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100001A68(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100001B5C;

  return v6(v2 + 32);
}

uint64_t sub_100001B5C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100001C70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001CA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100001D54;

  return sub_10000144C(a1);
}

uint64_t sub_100001D54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001404(&qword_10000C010, &qword_100003448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100001EB8(uint64_t a1)
{
  v2 = sub_100001404(&qword_10000C010, &qword_100003448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001F20()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001F58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000020CC;

  return sub_100001A68(a1, v5);
}

uint64_t sub_100002010(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100001D54;

  return sub_100001A68(a1, v5);
}

char *sub_1000020D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001404(&qword_10000C020, &qword_100003490);
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

uint64_t sub_1000021C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002290(v11, 0, 0, 1, a1, a2);
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
    sub_100002FEC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002F9C(v11);
  return v7;
}

unint64_t sub_100002290(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000239C(a5, a6);
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

char *sub_10000239C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000023E8(a1, a2);
  sub_100002518(&off_1000082D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000023E8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002604(v5, 0);
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
        v7 = sub_100002604(v10, 0);
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

uint64_t sub_100002518(uint64_t result)
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

  result = sub_100002678(result, v12, 1, v3);
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

void *sub_100002604(uint64_t a1, uint64_t a2)
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

  sub_100001404(&qword_10000C028, &qword_100003498);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100002678(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001404(&qword_10000C028, &qword_100003498);
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

uint64_t sub_10000276C(uint64_t a1, void *a2)
{
  v71 = type metadata accessor for Logger();
  v4 = *(v71 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v71 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v71 - v13;
  __chkstk_darwin(v12);
  v16 = &v71 - v15;
  v17 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v17 + 16) = 1024;
  bzero((v17 + 32), 0x400uLL);
  String.utf8CString.getter();

  v18 = _set_user_dir_suffix();

  if (!v18)
  {
    v23 = errno.getter();
    if (strerror(v23))
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v17 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1000020D0(0, *(v17 + 16), 0, v17);
  }

  if (!confstr(65537, (v17 + 32), v8))
  {
LABEL_12:
    v24 = errno.getter();
    if (strerror(v24))
    {
      v41 = String.init(cString:)();
      v43 = v42;
      v73 = 0;
      v74 = 0xE000000000000000;
      _StringGuts.grow(_:)(63);
      v44._countAndFlagsBits = 0xD000000000000034;
      v44._object = 0x8000000100003550;
      String.append(_:)(v44);
      v45._countAndFlagsBits = a1;
      v45._object = a2;
      String.append(_:)(v45);
      v46._countAndFlagsBits = 10272;
      v46._object = 0xE200000000000000;
      String.append(_:)(v46);
      LODWORD(v72) = errno.getter();
      v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v47);

      v48._countAndFlagsBits = 2112041;
      v48._object = 0xE300000000000000;
      String.append(_:)(v48);
      v49._countAndFlagsBits = v41;
      v49._object = v43;
      String.append(_:)(v49);
      v50 = v73;
      v51 = v74;

      static Log.default.getter();

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v72 = v55;
        *v54 = 136446210;
        *(v54 + 4) = sub_1000021C4(v50, v51, &v72);
        _os_log_impl(&_mh_execute_header, v52, v53, "Sandbox bootstrap error: %{public}s", v54, 0xCu);
        sub_100002F9C(v55);
      }

      (*(v4 + 8))(v11, v71);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!mkdir((v17 + 32), 0x2BCu) && errno.getter() != 17)
  {
LABEL_14:
    v25 = errno.getter();
    if (strerror(v25))
    {
      v56 = String.init(cString:)();
      v58 = v57;
      v73 = 0;
      v74 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v59._object = 0x8000000100003520;
      v59._countAndFlagsBits = 0xD000000000000029;
      String.append(_:)(v59);
      v60._countAndFlagsBits = a1;
      v60._object = a2;
      String.append(_:)(v60);
      v61._countAndFlagsBits = 10272;
      v61._object = 0xE200000000000000;
      String.append(_:)(v61);
      LODWORD(v72) = errno.getter();
      v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v62);

      v63._countAndFlagsBits = 2112041;
      v63._object = 0xE300000000000000;
      String.append(_:)(v63);
      v64._countAndFlagsBits = v56;
      v64._object = v58;
      String.append(_:)(v64);
      v65 = v73;
      v66 = v74;

      static Log.default.getter();

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v72 = v70;
        *v69 = 136446210;
        *(v69 + 4) = sub_1000021C4(v65, v66, &v72);
        _os_log_impl(&_mh_execute_header, v67, v68, "Sandbox bootstrap error: %{public}s", v69, 0xCu);
        sub_100002F9C(v70);
      }

      (*(v4 + 8))(v14, v71);
      goto LABEL_25;
    }

    __break(1u);
LABEL_16:
    v26 = String.init(cString:)();
    v28 = v27;
    v73 = 0;
    v74 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v29._countAndFlagsBits = 0xD00000000000002DLL;
    v29._object = 0x80000001000034C0;
    String.append(_:)(v29);
    v30._countAndFlagsBits = a1;
    v30._object = a2;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 10272;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    LODWORD(v72) = errno.getter();
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 2112041;
    v33._object = 0xE300000000000000;
    String.append(_:)(v33);
    v34._countAndFlagsBits = v26;
    v34._object = v28;
    String.append(_:)(v34);
    v35 = v73;
    v36 = v74;

    static Log.default.getter();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v72 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_1000021C4(v35, v36, &v72);
      _os_log_impl(&_mh_execute_header, v37, v38, "Sandbox bootstrap error: %{public}s", v39, 0xCu);
      sub_100002F9C(v40);
    }

    (*(v4 + 8))(v8, v71);
LABEL_25:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  static Log.default.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Sandbox bootstrapped successfully", v21, 2u);
  }

  return (*(v4 + 8))(v16, v71);
}

uint64_t sub_100002F9C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002FEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}