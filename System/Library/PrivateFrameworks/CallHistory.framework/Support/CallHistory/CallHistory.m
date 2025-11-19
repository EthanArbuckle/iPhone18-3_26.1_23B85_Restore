int main(int argc, const char **argv, const char **envp)
{
  if (sub_10000133C())
  {
    v3 = type metadata accessor for CallHistoryDaemon();
    v56 = v41;
    v4 = *(v3 - 8);
    v5 = *(v4 + 64);
    __chkstk_darwin();
    v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    CallHistoryDaemon.init()();
    v8 = type metadata accessor for Logger();
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    __chkstk_darwin();
    v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    static Log.daemon.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v51 = v15;
      v52 = swift_slowAlloc();
      v57 = v52;
      *v15 = 136315138;
      v47 = type metadata accessor for Date();
      v48 = v41;
      v46 = *(v47 - 8);
      v16 = *(v46 + 64);
      __chkstk_darwin();
      v49 = v13;
      v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      Date.init()();
      v42 = type metadata accessor for Date.FormatStyle.DateStyle();
      v45 = v41;
      v19 = *(v42 - 8);
      v50 = v9;
      v20 = v19;
      v21 = *(v19 + 64);
      __chkstk_darwin();
      v55 = v3;
      v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      static Date.FormatStyle.DateStyle.complete.getter();
      v24 = type metadata accessor for Date.FormatStyle.TimeStyle();
      v44 = v14;
      v25 = v24;
      v41[1] = v41;
      v26 = *(v24 - 8);
      v54 = v7;
      v27 = v4;
      v28 = v26;
      v29 = *(v26 + 64);
      __chkstk_darwin();
      v31 = v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      static Date.FormatStyle.TimeStyle.complete.getter();
      v32 = Date.formatted(date:time:)();
      v53 = v41;
      v33 = v32;
      v43 = v8;
      v35 = v34;
      (*(v28 + 8))(v31, v25);
      v4 = v27;
      v36 = v23;
      v7 = v54;
      v3 = v55;
      (*(v20 + 8))(v36, v42);
      (*(v46 + 8))(v18, v47);
      v37 = sub_100001420(v33, v35, &v57);

      v38 = v51;
      *(v51 + 1) = v37;
      v39 = v49;
      _os_log_impl(&_mh_execute_header, v49, v44, "Started daemon at %s", v38, 0xCu);
      sub_1000019C8(v52);

      (*(v50 + 8))(v12, v43);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    sub_1000013D4();
    Daemon.main()();
    (*(v4 + 8))(v7, v3);
  }

  return 0;
}

BOOL sub_10000133C()
{
  if (&protocol descriptor for Daemon)
  {
    v0 = &protocol requirements base descriptor for Daemon == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0 && &dispatch thunk of static Daemon.embeddedSandboxProfileName.getter != 0 && &method descriptor for static Daemon.embeddedSandboxProfileName.getter != 0 && &dispatch thunk of static Daemon.macOSSandboxProfileName.getter != 0 && &method descriptor for static Daemon.macOSSandboxProfileName.getter != 0 && &dispatch thunk of static Daemon.daemonEntitlementKey.getter != 0 && &method descriptor for static Daemon.daemonEntitlementKey.getter != 0 && &dispatch thunk of Daemon.start() != 0 && &method descriptor for Daemon.start() != 0 && &dispatch thunk of Daemon.enterSandbox() != 0 && &method descriptor for Daemon.enterSandbox() != 0;
}

unint64_t sub_1000013D4()
{
  result = qword_100008000;
  if (!qword_100008000)
  {
    type metadata accessor for CallHistoryDaemon();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008000);
  }

  return result;
}

unint64_t sub_100001420(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000014EC(v11, 0, 0, 1, a1, a2);
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
    sub_100001A14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000019C8(v11);
  return v7;
}

unint64_t sub_1000014EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000015F8(a5, a6);
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

char *sub_1000015F8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001644(a1, a2);
  sub_100001774(&off_1000041A8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100001644(uint64_t a1, unint64_t a2)
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

  v6 = sub_100001860(v5, 0);
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
        v7 = sub_100001860(v10, 0);
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

uint64_t sub_100001774(uint64_t result)
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

  result = sub_1000018D4(result, v12, 1, v3);
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

void *sub_100001860(uint64_t a1, uint64_t a2)
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

  sub_100001A70(&qword_100008008, qword_100001CF8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000018D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001A70(&qword_100008008, qword_100001CF8);
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

uint64_t sub_1000019C8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100001A14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100001A70(uint64_t *a1, uint64_t *a2)
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