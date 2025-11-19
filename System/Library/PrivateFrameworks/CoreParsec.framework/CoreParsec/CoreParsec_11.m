uint64_t sub_1000F891C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1000F8994(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000F89DC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1000F8A40(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1000F8AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_10001BC20(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_10001BC20(v3);
    return v4 | 8;
  }
}

uint64_t sub_1000F8B50(void *a1, SEL *a2)
{
  v3 = [a1 *a2];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000126F0();

  return v2;
}

uint64_t sub_1000F8BAC(void *a1)
{
  v1 = [a1 formattedAddressLines];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *sub_1000F8C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1000F8504(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1000F8C5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_1000F8994(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

unint64_t sub_1000F8CBC()
{
  result = qword_1002193C0;
  if (!qword_1002193C0)
  {
    type metadata accessor for SHA256Digest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002193C0);
  }

  return result;
}

uint64_t sub_1000F8D4C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000F8D58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v18 = sub_100046184(&qword_10021A0F8, &qword_10019EF48);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v28 = a1;
  sub_10000D1D4(a7);
  sub_10000D1D4(a5);
  v21 = sub_1000F9828(v28, a2, a3, a7, a8, a5, a6);
  sub_100046184(&qword_10021A100, &qword_10019EF50);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = v21;
  *(v9 + 16) = v22;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v23;

  v25 = a4;
  sub_1000FEDF4(0, 0, a4, &unk_10019EF60, v24);
  v26 = *(v9 + 16);
  os_unfair_lock_lock((v26 + 24));
  sub_1000FA7D4((v26 + 16));
  os_unfair_lock_unlock((v26 + 24));

  sub_100010300(a5);
  sub_100010300(a7);

  sub_10000B240(v25, &unk_10021A820, &qword_1001992D0);
  return v9;
}

uint64_t sub_1000F8F44()
{
  v2 = *(*v1 + 128);
  v8 = *v1;
  sub_100005898();
  *v3 = v8;
  *(v8 + 136) = v0;

  v4 = sub_100005A08();
  v5(v4);
  if (v0)
  {
    v6 = sub_1000F91FC;
  }

  else
  {
    v6 = sub_1000F9070;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000F9070()
{
  sub_100006EE0();
  (*(v1[14] + 8))(v1[15], v1[13]);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    sub_100009990();
    Strong = swift_weakLoadStrong();
    v5 = v1[12];
    v4 = v1[13];
    if (Strong)
    {
      sub_10000CA20(Strong);

      os_unfair_lock_lock(v2 + 6);
      sub_1000080A4();
      os_unfair_lock_unlock(v2 + 6);

      sub_10000AB8C();
      if (!v6)
      {
        v7 = sub_100011A18();
        v8(v7);
        sub_10000F5B0();
        v9 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
        v10 = swift_task_alloc();
        sub_10000BEF0(v10);
        sub_100006048();
        sub_1000349D8(v11, v12);
        sub_100005630();
        *v0 = v13;
        v14 = sub_10000852C();

        return static Task<>.sleep<A>(until:tolerance:clock:)(v14);
      }
    }

    else
    {
      v15 = sub_10000DEAC();
      sub_1000051C0(v15, v16, v17, v4);
    }

    sub_10000B240(v1[12], &qword_1002159E8, &qword_100199C38);
  }

  sub_100012664();

  sub_100006758();

  return v18();
}

uint64_t sub_1000F91FC()
{
  sub_100006EE0();
  v1 = v0[12];
  v2 = v0[11];
  (*(v0[14] + 8))(v0[15], v0[13]);

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_1000F9294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = *(*(sub_100046184(&qword_1002159E8, &qword_100199C38) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock.Instant();
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000F93E8, 0, 0);
}

uint64_t sub_1000F93E8()
{
  sub_100006EE0();
  sub_100009990();
  swift_beginAccess();
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    sub_100009990();
    Strong = swift_weakLoadStrong();
    v5 = *(v1 + 96);
    v4 = *(v1 + 104);
    if (Strong)
    {
      sub_10000CA20(Strong);

      os_unfair_lock_lock(v2 + 6);
      sub_100007D14();
      os_unfair_lock_unlock(v2 + 6);

      sub_10000AB8C();
      if (!v6)
      {
        v7 = sub_100011A18();
        v8(v7);
        sub_10000F5B0();
        v9 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
        v10 = swift_task_alloc();
        sub_10000BEF0(v10);
        sub_100006048();
        sub_1000349D8(v11, v12);
        sub_100005630();
        *v0 = v13;
        v14 = sub_10000852C();

        return static Task<>.sleep<A>(until:tolerance:clock:)(v14);
      }
    }

    else
    {
      v15 = sub_10000DEAC();
      sub_1000051C0(v15, v16, v17, v4);
    }

    sub_10000B240(*(v1 + 96), &qword_1002159E8, &qword_100199C38);
  }

  sub_100012664();

  sub_100006758();

  return v18();
}

uint64_t sub_1000F9570()
{
  v2 = *(*v1 + 128);
  v8 = *v1;
  sub_100005898();
  *v3 = v8;
  *(v8 + 136) = v0;

  v4 = sub_100005A08();
  v5(v4);
  if (v0)
  {
    v6 = sub_1000FA7EC;
  }

  else
  {
    v6 = sub_1000F969C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000F969C()
{
  sub_100006EE0();
  (*(v1[14] + 8))(v1[15], v1[13]);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    sub_100009990();
    Strong = swift_weakLoadStrong();
    v5 = v1[12];
    v4 = v1[13];
    if (Strong)
    {
      sub_10000CA20(Strong);

      os_unfair_lock_lock(v2 + 6);
      sub_100007D14();
      os_unfair_lock_unlock(v2 + 6);

      sub_10000AB8C();
      if (!v6)
      {
        v7 = sub_100011A18();
        v8(v7);
        sub_10000F5B0();
        v9 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
        v10 = swift_task_alloc();
        sub_10000BEF0(v10);
        sub_100006048();
        sub_1000349D8(v11, v12);
        sub_100005630();
        *v0 = v13;
        v14 = sub_10000852C();

        return static Task<>.sleep<A>(until:tolerance:clock:)(v14);
      }
    }

    else
    {
      v15 = sub_10000DEAC();
      sub_1000051C0(v15, v16, v17, v4);
    }

    sub_10000B240(v1[12], &qword_1002159E8, &qword_100199C38);
  }

  sub_100012664();

  sub_100006758();

  return v18();
}

uint64_t sub_1000F9828(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a6;
  v39 = a7;
  v14 = type metadata accessor for ContinuousClock.Instant();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100046184(&qword_1002159E8, &qword_100199C38);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v37 - v21;
  *(v8 + 16) = 0;
  sub_1000051C0(v8 + qword_100215938, 1, 1, v14);
  v23 = (v8 + qword_100215948);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v8 + qword_100215950);
  *v24 = 0;
  v24[1] = 0;
  *(v8 + qword_100215958) = 0;
  *(v8 + 16) = a1;
  v25 = (v8 + qword_100215940);
  *v25 = a2;
  v25[1] = a3;
  v26 = a1;
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();

  (*(v15 + 8))(v18, v14);
  sub_1000051C0(v22, 0, 1, v14);
  v27 = qword_100215938;
  swift_beginAccess();
  sub_1000114E0(v22, v8 + v27);
  swift_endAccess();
  v28 = (v8 + qword_100215948);
  v29 = *(v8 + qword_100215948);
  v30 = *(v8 + qword_100215948 + 8);
  *v28 = a4;
  v28[1] = a5;
  sub_10000D1D4(a4);
  sub_100010300(v29);
  sub_100010300(a4);
  v31 = (v8 + qword_100215950);
  v32 = *(v8 + qword_100215950);
  v33 = *(v8 + qword_100215950 + 8);
  v35 = v38;
  v34 = v39;
  *v31 = v38;
  v31[1] = v34;
  sub_10000D1D4(v35);
  sub_100010300(v32);
  sub_100010300(v35);
  return v8;
}

uint64_t sub_1000F9AA4()
{
  v1 = v0;
  v2 = sub_100046184(&qword_1002159E8, &qword_100199C38);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2 - 8);
  v6 = &v24 - v5;
  v7 = *(v0 + 16);
  if (v7)
  {
    v8 = (v0 + qword_100215948);
    v9 = *(v0 + qword_100215948);
    if (v9)
    {
      v10 = v8[1];

      sub_10000D1D4(v9);
      v9(v7);
      sub_100010300(v9);
      v11 = *v8;
    }

    else
    {
      v12 = *(v0 + 16);

      v11 = 0;
    }

    v13 = v8[1];
    *v8 = 0;
    v8[1] = 0;
    sub_100010300(v11);
    v14 = *(v1 + 16);
    *(v1 + 16) = 0;

    v15 = type metadata accessor for ContinuousClock.Instant();
    sub_1000051C0(v6, 1, 1, v15);
    v16 = qword_100215938;
    swift_beginAccess();
    sub_1000114E0(v6, v1 + v16);
    swift_endAccess();
    v17 = (v1 + qword_100215950);
    v18 = *(v1 + qword_100215950);
    if (v18)
    {
      v19 = v17[1];

      v18(v20);

      sub_100010300(v18);
    }

    else
    {
    }

    v21 = *v17;
    v22 = v17[1];
    *v17 = 0;
    v17[1] = 0;
    sub_100010300(v21);
    v23 = *(v1 + qword_100215958);
    *(v1 + qword_100215958) = 0;
  }

  return result;
}

void sub_1000F9C54()
{
  v1 = v0;
  v2 = sub_100046184(&qword_1002159E8, &qword_100199C38);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v6 = *(v0 + 16);
  if (v6)
  {
    v7 = (v0 + qword_100215948);
    v8 = *(v0 + qword_100215948);
    if (v8)
    {
      v9 = v7[1];
      v10 = v6;
      sub_10000D1D4(v8);
      v8(v6);
      sub_100010300(v8);
      v11 = *v7;
    }

    else
    {
      v12 = v6;
      v11 = 0;
    }

    v13 = v7[1];
    *v7 = 0;
    v7[1] = 0;
    sub_100010300(v11);
    v14 = *(v1 + 16);
    *(v1 + 16) = 0;

    v15 = type metadata accessor for ContinuousClock.Instant();
    sub_1000051C0(v5, 1, 1, v15);
    v16 = qword_100215938;
    swift_beginAccess();
    sub_1000114E0(v5, v1 + v16);
    swift_endAccess();
    v17 = (v1 + qword_100215950);
    v18 = *(v1 + qword_100215950);
    if (v18)
    {
      v19 = v17[1];

      v18(v20);

      sub_100010300(v18);
    }

    else
    {
    }

    v21 = *v17;
    v22 = v17[1];
    *v17 = 0;
    v17[1] = 0;
    sub_100010300(v21);
    v23 = *(v1 + qword_100215958);
    *(v1 + qword_100215958) = 0;
  }
}

const char *sub_1000F9DF4(char a1)
{
  if (!a1)
  {
    return "lifetime";
  }

  if (a1 == 1)
  {
    return "contextUpdate";
  }

  return "notBagFetchable";
}

uint64_t sub_1000F9E38()
{
  v0 = qword_100219F48;

  return v0;
}

uint64_t sub_1000F9E70()
{
  v0 = aContextmanager_5[0];

  return v0;
}

void *sub_1000F9EC8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = sub_100003650(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100003664();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC7parsecd14ContextManager_logger;
  (*(v5 + 16))(v9 - v8, v1 + OBJC_IVAR____TtC7parsecd14ContextManager_logger, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "ContextManager is destroyed", v14, 2u);
    sub_1000036D4();
  }

  v15 = *(v5 + 8);
  v15(v10, v2);
  v16 = objc_autoreleasePoolPush();
  v17 = v1[3];
  v1[3] = 0;

  objc_autoreleasePoolPop(v16);
  v18 = v1[2];

  v19 = v1[3];

  sub_10000B218((v1 + 4));
  v20 = v1[6];

  sub_10001E6A4(v1 + OBJC_IVAR____TtC7parsecd14ContextManager_context, type metadata accessor for PegasusContext);
  v21 = *(v1 + OBJC_IVAR____TtC7parsecd14ContextManager_locker);

  v15(v1 + v11, v2);

  v22 = *(v1 + OBJC_IVAR____TtC7parsecd14ContextManager__parsecSubscriptionManager);

  v23 = *(v1 + OBJC_IVAR____TtC7parsecd14ContextManager__contextProviderInterface);

  v24 = *(v1 + OBJC_IVAR____TtC7parsecd14ContextManager_notBagFetchableSpan);

  return v1;
}

uint64_t sub_1000FA0D4()
{
  sub_1000F9EC8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ContextManager()
{
  result = qword_100219FC8;
  if (!qword_100219FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FA180()
{
  result = type metadata accessor for PegasusContext(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextManager.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContextManager.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextManager.Activity(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000FA3C4(uint64_t a1)
{
  *(a1 + 8) = sub_1000FA3F4();
  result = sub_1000FA448();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000FA3F4()
{
  result = qword_10021A0A8;
  if (!qword_10021A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A0A8);
  }

  return result;
}

unint64_t sub_1000FA448()
{
  result = qword_10021A0B0;
  if (!qword_10021A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A0B0);
  }

  return result;
}

unint64_t sub_1000FA4A0()
{
  result = qword_10021A0B8;
  if (!qword_10021A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A0B8);
  }

  return result;
}

unint64_t sub_1000FA4F8()
{
  result = qword_10021A0C0;
  if (!qword_10021A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A0C0);
  }

  return result;
}

uint64_t sub_1000FA54C(uint64_t a1)
{
  result = sub_1000349D8(&qword_10021A0E0, type metadata accessor for ContextManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000FA5B8()
{
  v1 = *(v0 + 16);
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000FA60C()
{
  sub_100006EE0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_10000B0D0(v5);

  return sub_1000F9294(v6, v7, v8, v9);
}

uint64_t sub_1000FA6A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000FA6E8()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100005898();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1000FA7F4@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 type] - 1;
  if (v3 > 0xC)
  {
    v4 = &enum case for Apple_Parsec_Search_V2_Location.Source.unknown(_:);
  }

  else
  {
    v4 = *(&off_1001FCD80 + v3);
  }

  v5 = *v4;
  v6 = type metadata accessor for Apple_Parsec_Search_V2_Location.Source();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t *sub_1000FA894()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = *(v1 + 80);
  sub_1000FA930(sub_1000FAA6C, v2);

  v3 = v0[2];

  return v0;
}

uint64_t sub_1000FA930(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v6[2] = *(*v2 + 80);
  v6[3] = a1;
  v6[4] = a2;
  v4 = type metadata accessor for DeferredSetup.State();
  sub_10003B428(sub_1000FAAF0, v6, v3, v4, &type metadata for Bool);
  return v7;
}

uint64_t sub_1000FA9C0()
{
  sub_1000FA894();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_1000FAA0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1000FAA74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (*(a1 + 16))
  {
    v5 = 0;
  }

  else
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    *a1 = a2;
    *(a1 + 8) = a3;
    v5 = 1;
    *(a1 + 16) = 1;

    dispatch_group_leave(v7);
    sub_100046214(v7, v6, 0);
  }

  *a4 = v5;
}

void sub_1000FAB10(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100046184(&qword_100218230, &unk_100199A00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v48 - v9;
  v11 = type metadata accessor for URL();
  v12 = sub_100003650(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v48 - v20;
  NSFileManager.parsecdAssetsDirectoryURL.getter();
  if (sub_100008D0C(v10, 1, v11) == 1)
  {
    sub_10000F94C(v10, &qword_100218230, &unk_100199A00);
    if (qword_1002141C0 != -1)
    {
      sub_100006060();
    }

    v22 = type metadata accessor for Logger();
    sub_100006674(v22, qword_10021A240);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (sub_100007BE8(v24))
    {
      v25 = sub_100006640();
      sub_10000594C(v25);
      sub_10000554C(&_mh_execute_header, v26, v27, "Couldn't find com.apple.parsecd cache directory");
      sub_1000036D4();
    }
  }

  else
  {
    (*(v14 + 32))(v21, v10, v11);
    v28 = String._bridgeToObjectiveC()();
    v29 = [a1 objectForKey:v28];

    if (v29)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v48, 0, sizeof(v48));
    }

    sub_10000F94C(v48, &qword_1002181D0, &qword_100198E00);
    if (a4 && v29)
    {
      if (qword_1002141C0 != -1)
      {
        sub_100006060();
      }

      v30 = type metadata accessor for Logger();
      sub_100006674(v30, qword_10021A240);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (sub_100007670(v32))
      {
        *sub_100006640() = 0;
        sub_100006768(&_mh_execute_header, v33, v34, "Found cached app whitelist data, no update required.");
        sub_1000036D4();
      }

      (*(v14 + 8))(v21, v11);
    }

    else
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URL.appendingPathComponent(_:)();

      URL.path.getter();
      v35 = String._bridgeToObjectiveC()();

      v36 = [a2 fileExistsAtPath:v35];

      if (v36)
      {
        sub_100005180(0, &qword_100217408, NSXPCConnection_ptr);
        v37 = sub_10000CC24(0xD000000000000014, 0x80000001001AE470, 0);
        v38 = objc_allocWithZone(type metadata accessor for FlusherClient());
        v39 = FlusherClient.init(connection:)(v37);
        (*((swift_isaMask & v39->isa) + 0x78))(0, 0, 0);
      }

      else
      {
        if (qword_1002141C0 != -1)
        {
          sub_100006060();
        }

        v40 = type metadata accessor for Logger();
        sub_100006674(v40, qword_10021A240);
        v39 = Logger.logObject.getter();
        v41 = static os_log_type_t.error.getter();
        if (sub_100007670(v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *&v48[0] = v43;
          *v42 = 136315138;
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = sub_100009684(v44, v45, v48);

          *(v42 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v39, v41, "App whitelist data update required, but no %s file found. Bailing to prevent useless wake of parsec-fbf.", v42, 0xCu);
          sub_100007378(v43);
          sub_1000036D4();
          sub_1000036D4();
        }
      }

      v47 = *(v14 + 8);
      v47(v19, v11);
      v47(v21, v11);
    }
  }
}

uint64_t sub_1000FB070()
{
  v0 = type metadata accessor for Logger();
  sub_100057FF8(v0, qword_10021A240);
  sub_10000964C(v0, qword_10021A240);
  return Logger.init(subsystem:category:)();
}

uint64_t FlusherClient.flushSessionEagerly(atURL:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = sub_100003650(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v3[OBJC_IVAR____TtC7parsecd13FlusherClient_connection];
  v52 = sub_1000FBCF0;
  v53 = 0;
  sub_100008548();
  v49 = 1107296256;
  sub_100003A98();
  v50 = v17;
  v51 = &unk_1001FCF38;
  v18 = _Block_copy(&aBlock);
  v19 = [v16 remoteObjectProxyWithErrorHandler:v18];
  _Block_release(v18);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100009848(v54, &aBlock);
  sub_100046184(&qword_10021A2C0, &qword_10019F078);
  if (swift_dynamicCast())
  {
    v46 = v47;
    if (qword_1002141C0 != -1)
    {
      sub_100006060();
    }

    v20 = type metadata accessor for Logger();
    sub_100006674(v20, qword_10021A240);
    (*(v11 + 16))(v15, a1, v8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v44 = a2;
      v24 = v23;
      v25 = swift_slowAlloc();
      v43[1] = a1;
      v26 = v25;
      aBlock = v25;
      *v24 = 136315138;
      v27 = URL.lastPathComponent.getter();
      v45 = v4;
      v28 = a3;
      v30 = v29;
      (*(v11 + 8))(v15, v8);
      v31 = sub_100009684(v27, v30, &aBlock);
      a3 = v28;
      v4 = v45;

      *(v24 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "Flushing session %s eagerly.", v24, 0xCu);
      sub_100007378(v26);
      sub_1000036D4();
      a2 = v44;
      sub_1000036D4();
    }

    else
    {

      (*(v11 + 8))(v15, v8);
    }

    URL._bridgeToObjectiveC()(v32);
    v34 = v37;
    v38 = swift_allocObject();
    v38[2] = a2;
    v38[3] = a3;
    v38[4] = v4;
    v52 = sub_1000FBCD8;
    v53 = v38;
    sub_100008548();
    v49 = 1107296256;
    sub_100005D74();
    v50 = v39;
    v51 = &unk_1001FCF88;
    v40 = _Block_copy(&aBlock);
    sub_10000D1D4(a2);
    v41 = v4;

    [v46 flushSessionEagerly:v34 completion:v40];
    _Block_release(v40);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002141C0 != -1)
    {
      sub_100006060();
    }

    v33 = type metadata accessor for Logger();
    sub_100006674(v33, qword_10021A240);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (sub_100007670(v35))
    {
      v36 = sub_100006640();
      sub_10000594C(v36);
      _os_log_impl(&_mh_execute_header, v34, v35, "FBF proxy didn't conform to expected remote object protocol", v18, 2u);
      sub_1000036D4();
    }
  }

  return sub_100007378(v54);
}

void sub_1000FB52C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000FB594(void (*a1)(void), uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v25);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002141C0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000964C(v14, qword_10021A240);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = v13;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Eager flush finished", v17, 2u);
    v13 = v24;
  }

  if (a1)
  {
    a1();
  }

  v18 = FlusherClient.invalidationQueue.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  aBlock[4] = sub_1000FBCF4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D50C;
  aBlock[3] = &unk_1001FD0E0;
  v20 = _Block_copy(aBlock);
  v21 = a3;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100024990();
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v25);
}

Swift::Void __swiftcall FlusherClient.deleteSafariFeedbackEagerly()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7parsecd13FlusherClient_connection);
  aBlock[4] = sub_1000FBCF0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_100003A98();
  aBlock[2] = v2;
  aBlock[3] = &unk_1001FD040;
  v3 = _Block_copy(aBlock);
  v4 = [v1 remoteObjectProxyWithErrorHandler:v3];
  _Block_release(v3);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100009848(aBlock, v12);
  sub_100046184(&qword_10021A2C0, &qword_10019F078);
  if (sub_100005640())
  {
    [v11 deleteSafariFeedbackEagerly];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002141C0 != -1)
    {
      sub_100006060();
    }

    v5 = type metadata accessor for Logger();
    sub_100006674(v5, qword_10021A240);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (sub_100007BE8(v7))
    {
      v8 = sub_100006640();
      sub_10000594C(v8);
      sub_10000554C(&_mh_execute_header, v9, v10, "FBF proxy didn't conform to expected remote object protocol");
      sub_1000036D4();
    }
  }

  sub_100007378(aBlock);
}

void sub_1000FBAAC()
{
  if (qword_1002141C0 != -1)
  {
    sub_100006060();
  }

  v0 = type metadata accessor for Logger();
  sub_100006674(v0, qword_10021A240);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v6 = sub_100009684(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "fbf connection closed with error: %s", v2, 0xCu);
    sub_100007378(v3);
    sub_1000036D4();
    sub_1000036D4();
  }

  else
  {
  }
}

uint64_t sub_1000FBD2C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000FBD9C()
{
  type metadata accessor for UUID();
  sub_100006080();
  sub_1000FBF50(v0, v1);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000FBE10()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100006080();
  sub_1000FBF50(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000FBE90()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100006080();
  sub_1000FBF50(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000FBF50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000FBF98(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v8 = *(v2 - 8) + 64;
    sub_1000FD46C();
    if (v5 <= 0x3F)
    {
      v9 = *(v4 - 8) + 64;
      v6 = type metadata accessor for Date();
      if (v7 <= 0x3F)
      {
        v10 = *(v6 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void *sub_1000FC0D8()
{
  sub_100005D28();
  v2 = v1;
  if ((*(v0 + *(v3 + 120)) & 1) == 0)
  {
    (*(v1 + 400))();
  }

  swift_weakDestroy();
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];

  swift_unknownObjectRelease();
  sub_1000037B0();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v8 + 112));
  sub_1000037B0();

  sub_1000037B0();
  sub_100015C0C(v0 + *(v10 + 136), &unk_100214C80, &qword_10019AFC0);
  sub_1000037B0();
  v12 = *(v11 + 144);
  v13 = type metadata accessor for Date();
  sub_10000690C(v13);
  (*(v14 + 8))(v0 + v12);
  sub_1000037B0();
  v16 = *(v0 + *(v15 + 152));

  return v0;
}

uint64_t sub_1000FC264()
{
  v1 = v0;
  sub_100005D28();
  v3 = *(v0 + *(v2 + 152));
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v7 = type metadata accessor for ActivitySpan.ActivityData();

  v35 = v7;
  sub_10008C66C(sub_1000FD964);

  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = v40;
  v8 = *(v1 + *(*v1 + 128));
  static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)();
  static os_log_type_t.error.getter();
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100197F30;
  sub_1000FC8A4();
  v10 = StaticString.description.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_10000512C();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v14 = sub_1000FC850();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;
  v16 = sub_1000FC7FC();
  *(v9 + 136) = &type metadata for String;
  *(v9 + 144) = v13;
  v36 = v13;
  *(v9 + 112) = v16;
  *(v9 + 120) = v17;
  os_log(_:dso:log:type:_:)();

  if ((BYTE1(v42) & 1) == 0)
  {
    static os_log_type_t.error.getter();
    v18 = sub_100011A2C();
    *(v18 + 16) = xmmword_100197F20;
    v19 = StaticString.description.getter();
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = v13;
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    sub_100008568();
    os_log(_:dso:log:type:_:)();

    v21 = v43;
    if (v43)
    {

      static os_log_type_t.error.getter();
      v22 = sub_100011A2C();
      *(v22 + 16) = xmmword_100197F20;
      *(v22 + 56) = sub_100046184(&unk_10021BC50, &qword_1001A0680);
      *(v22 + 64) = sub_100095D74(&unk_10021A4B0, &unk_10021BC50, &qword_1001A0680);
      *(v22 + 32) = v21;
      sub_100008568();
      os_log(_:dso:log:type:_:)();
    }
  }

  v23 = *(&v42 + 1);
  if (*(&v42 + 1))
  {

    static os_log_type_t.error.getter();
    v24 = sub_100011A2C();
    *(v24 + 16) = xmmword_100197F20;
    *(v24 + 56) = sub_100046184(&unk_10021BC40, &qword_10019F288);
    *(v24 + 64) = sub_100095D74(&unk_10021A4A0, &unk_10021BC40, &qword_10019F288);
    *(v24 + 32) = v23;
    sub_100008568();
    os_log(_:dso:log:type:_:)();
  }

  v25 = *(&v43 + 1);
  result = sub_10000D57C(*(&v43 + 1));
  v27 = v35;
  if (result)
  {
    v28 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v29 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v30 = *(v25 + 8 * v29 + 32);
        swift_unknownObjectRetain();
      }

      ++v29;
      static os_log_type_t.error.getter();
      v31 = sub_100011A2C();
      *(v31 + 16) = xmmword_100197F20;
      swift_unknownObjectRetain();
      v32 = String.init<A>(describing:)();
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = v36;
      *(v31 + 32) = v32;
      *(v31 + 40) = v33;
      os_log(_:dso:log:type:_:)();
      swift_unknownObjectRelease();
    }

    while (v28 != v29);

    v27 = v35;
  }

  static os_log_type_t.error.getter();
  sub_100008568();
  os_log(_:dso:log:type:_:)();
  if (sub_1000FC90C())
  {
    static os_log_type_t.fault.getter();
    sub_100008568();
    os_log(_:dso:log:type:_:)();
  }

  sub_10000690C(v27);
  return (*(v34 + 8))(&v41, v27);
}

uint64_t sub_1000FC7FC()
{
  sub_100005D28();
  v1 = *(v0 + 80);
  sub_100003710();
  return (*(*(v2 + 88) + 24))();
}

uint64_t sub_1000FC850()
{
  sub_100005D28();
  v1 = *(v0 + 80);
  sub_100003710();
  return (*(*(v2 + 88) + 32))();
}

uint64_t sub_1000FC8A4()
{
  sub_100005D28();
  v1 = *(v0 + 112);
  v3 = *(*(v2 + 88) + 40);
  sub_100003710();
  return v5(*(v4 + 80));
}

uint64_t sub_1000FC90C()
{
  sub_100005D28();
  v2 = *(v1 + 80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = v13 - v5;
  sub_100003710();
  (*(v8 + 16))(v6, v0 + *(v7 + 112), v2);
  sub_100046184(&qword_10021A4C8, &qword_10019F290);
  if (swift_dynamicCast())
  {
    sub_100008C84(v13, v15);
    v9 = v16;
    v10 = v17;
    sub_100007534(v15, v16);
    v11 = (*(v10 + 8))(v9, v10);
    sub_100007378(v15);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_100015C0C(v13, &unk_10021A4D0, &qword_10019F298);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1000FCA84()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000037B0();
  (*(v2 + 16))(v5, v0 + *(v6 + 144), v1);
  Date.timeIntervalSinceNow.getter();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1000FCBE4(void (*a1)(void))
{
  sub_1000037B0();
  v4 = *(*(v1 + *(v3 + 152)) + 16);

  os_unfair_lock_lock(v4);
  sub_1000FD5C0(v1, a1);
  os_unfair_lock_unlock(v4);
}

uint64_t sub_1000FCC6C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100046184(&unk_100214C80, &qword_10019AFC0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v46[-v9];
  v11 = *(v2 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v8);
  v16 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v46[-v17];
  v19 = *(v1 + 5);
  v56 = *(v1 + 3);
  v57 = v19;
  v58 = *(v1 + 7);
  v59 = v1[9];
  v20 = *(&v19 + 1);
  v50 = *(v2 + 88);
  v21 = type metadata accessor for ActivitySpan.ActivityData();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v49 = v21;
  v23(v51, &v56);
  sub_1000FD614(v20);
  if ((BYTE1(v57) & 1) == 0)
  {
    v24 = v58;
    if (v58)
    {
      v48 = *(&v56 + 1);
      v25 = v56;
      v47 = v57;
      sub_1000036C8();
      (*(v12 + 16))(v18, v1 + *(v26 + 112), v11);
      sub_1000036C8();
      v28 = *(v27 + 136);
      swift_beginAccess();
      sub_100008C9C(v1 + v28, v10);
      v29 = type metadata accessor for OSSignpostID();
      result = sub_100008D0C(v10, 1, v29);
      if (result != 1)
      {
        v31 = v10;
        sub_1000036C8();
        v33 = *(v1 + *(v32 + 128));

        sub_1000FD33C(v31, v33, v25, v48, v47, v24, v11, v50);

        (*(v12 + 8))(v18, v11);
        sub_10000690C(v29);
        (*(v34 + 8))(v31, v29);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  sub_1000036C8();
  (*(v12 + 16))(v16, v1 + *(v35 + 112), v11);
  sub_1000036C8();
  v37 = *(v36 + 136);
  swift_beginAccess();
  sub_100008C9C(v1 + v37, v7);
  v38 = type metadata accessor for OSSignpostID();
  result = sub_100008D0C(v7, 1, v38);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1000036C8();
  sub_1000FD2AC(v7, *(v1 + *(v39 + 128)), v11, v50);
  (*(v12 + 8))(v16, v11);
  sub_10000690C(v38);
  (*(v40 + 8))(v7, v38);
LABEL_7:
  if (swift_weakLoadStrong())
  {
    type metadata accessor for ActivitySpan();
    sub_1000BE4E4();
    v54 = 0uLL;
    v55 = 0;
    *&v53[6] = 0;
    *&v53[14] = 0;

    v41 = *(v22 + 8);
    v42 = v49;
    v41(&v56, v49);
    v43 = *(v1 + 5);
    v51[0] = *(v1 + 3);
    v44 = *(v1 + 7);
    v51[1] = v43;
    v51[2] = v44;
    v52 = v1[9];
    *(v1 + 3) = v54;
    *(v1 + 40) = v55;
    *(v1 + 41) = 1;
    *(v1 + 42) = *v53;
    v1[7] = *&v53[14];
    v1[8] = _swiftEmptyArrayStorage;
    v1[9] = 0;
    v41(v51, v42);
    sub_1000036C8();
    *(v1 + *(v45 + 120)) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_1000FC90C())
    {
      static os_log_type_t.fault.getter();
      os_log(_:dso:log:type:_:)();
    }

    return (*(v22 + 8))(&v56, v49);
  }
}

uint64_t sub_1000FD20C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1000037B0();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  sub_1000FD7EC(v4, a1, a2, a3, a4);
  os_unfair_lock_unlock(v10);
}

uint64_t sub_1000FD2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static os_signpost_type_t.end.getter();
  (*(a4 + 40))(a3, a4);

  return os_signpost(_:dso:log:name:signpostID:)();
}

void sub_1000FD33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = static os_signpost_type_t.end.getter();
  v17 = (*(a8 + 40))(a7, a8);
  LOBYTE(v20) = a5;
  sub_1000070D0(v16, a2, v17, v18, v19, a1, a3, a4, v20, a6);
}

uint64_t sub_1000FD3FC()
{
  sub_1000FC0D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_1000FD46C()
{
  if (!qword_10021A410[0])
  {
    type metadata accessor for OSSignpostID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_10021A410);
    }
  }
}

uint64_t sub_1000FD4C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000FD500(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000FD51C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000FD55C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1000FD5C0(uint64_t result, void (*a2)(void))
{
  if ((*(result + *(*result + 120)) & 1) == 0)
  {
    a2();
    return sub_1000FCC6C();
  }

  return result;
}

void sub_1000FD614(uint64_t a1)
{
  if (sub_1000FD96C(a1))
  {
    sub_1000037B0();
    v3 = *(v1 + *(v2 + 128));
    static os_log_type_t.debug.getter();
    sub_100046184(&unk_100217040, &qword_1001989F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100198F10;
    v5 = sub_1000FC850();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    v8 = sub_10000512C();
    *(v4 + 64) = v8;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_10000EA9C();
    sub_10000ABB4();
    v9 = Dictionary.description.getter();
    *(v4 + 96) = &type metadata for String;
    *(v4 + 104) = v8;
    *(v4 + 72) = v9;
    *(v4 + 80) = v10;
    sub_100008568();
    os_log(_:dso:log:type:_:)();

    sub_1000FC7FC();
    v11 = sub_1000FC850();
    v13 = v12;

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = v11;
    v15._object = v13;
    String.append(_:)(v15);

    v16 = String._bridgeToObjectiveC()();

    sub_10000ABB4();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    AnalyticsSendEvent();
  }
}

uint64_t sub_1000FD7EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 41) = 0;
  v5 = *(a1 + 56);
  *(a1 + 56) = a5;
}

uint64_t sub_1000FD838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 5);
  v11[0] = *(a1 + 3);
  v11[1] = v3;
  v12 = *(a1 + 7);
  v4 = v12;
  v13 = a1[9];
  v5 = v13;
  *a2 = v11[0];
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v8 = type metadata accessor for ActivitySpan.ActivityData();
  return (*(*(v8 - 8) + 16))(v10, v11, v8);
}

uint64_t sub_1000FD96C(uint64_t a1)
{
  v2 = v1;
  sub_100005D28();
  v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  (*(v8 + 16))(&v22 - v11, v2 + *(v13 + 112), v7);
  DynamicType = swift_getDynamicType();
  (*(v8 + 8))(v12, v7);
  v16 = sub_100029FC4(DynamicType);
  result = 0;
  if (v16)
  {
    if (a1)
    {
      v18 = v15;
      v19 = *(v15 + 16);

      v19(v16, v18);
      v20 = *(*(v5 + 88) + 16);
      dispatch thunk of RawRepresentable.rawValue.getter();
      UInt._bridgeToObjectiveC()();
      swift_isUniquelyReferenced_nonNull_native();
      v22 = a1;
      sub_10000F318();

      v21 = v22;
      (*(v18 + 8))(v16, v18);
      sub_1000FCA84();
      Double._bridgeToObjectiveC()();
      swift_isUniquelyReferenced_nonNull_native();
      v23 = v21;
      sub_10000F318();

      return v23;
    }
  }

  return result;
}

uint64_t sub_1000FDBCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100046184(&unk_100217040, &qword_1001989F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100197F20;
  v7 = a3[3];
  v8 = a3[4];
  sub_100007534(a3, v7);
  v9 = (*(v8 + 16))(v7, v8);
  *(inited + 56) = &type metadata for UInt;
  *(inited + 64) = &protocol witness table for UInt;
  *(inited + 32) = v9;
  CacheSpan = type metadata accessor for QueryCacheSpan();
  v11 = *(CacheSpan + 48);
  v12 = *(CacheSpan + 52);
  *(swift_allocObject() + qword_100232D38) = 0;
  v13 = sub_10007E180(a1, a2, "currentCost=%{signpost.description.attribute,public}llu", 55, 2, inited);
  sub_100007378(a3);
  return v13;
}

uint64_t sub_1000FDCDC(uint64_t a1, char a2)
{
  sub_100046184(&unk_100217040, &qword_1001989F0);
  if (a2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100197F20;
    v11 = a1;
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_10000512C();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_10000E384("error=%{signpost.description.attribute,public}s", 47, 2, v4, v11, 1);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100198F10;
    *(v9 + 56) = &type metadata for String;
    v10 = sub_10000512C();
    *(v9 + 32) = 0xD000000000000013;
    *(v9 + 40) = 0x80000001001B1430;
    *(v9 + 96) = &type metadata for UInt;
    *(v9 + 104) = &protocol witness table for UInt;
    *(v9 + 64) = v10;
    *(v9 + 72) = a1;
    sub_10000E384("error=%{signpost.description.attribute,public}s, cost=%{signpost.description.attribute,public}llu", 97, 2, v9);
  }
}

uint64_t sub_1000FDE50()
{
  if ((*(v0 + 81) & 1) == 0)
  {
    sub_1000FDF78();
  }

  v1 = sub_10002FCF4();
  v2 = *(v1 + qword_100232D38);

  return v1;
}

uint64_t sub_1000FDE94()
{
  v0 = sub_1000FDE50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for QueryCacheSpan()
{
  result = qword_10021A508;
  if (!qword_10021A508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FDF78()
{
  v1 = v0;
  v2 = *&v0[qword_100232D38];
  if (v2)
  {
    sub_100046184(&unk_100217040, &qword_1001989F0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100198F10;
    v4 = sub_1001092C8();
    *(v3 + 56) = &type metadata for UInt;
    *(v3 + 64) = &protocol witness table for UInt;
    *(v3 + 32) = v4;
    v6 = *(v2 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result);
    v5 = *(v2 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 8);
    *(v3 + 96) = &type metadata for String;
    *(v3 + 104) = sub_10000512C();
    *(v3 + 72) = v6;
    *(v3 + 80) = v5;

    sub_10000E384("cost=%{signpost.description.attribute,public}llu, input=%{sensitive}s", 69, 2, v3);
  }

  v7 = *(*&v1[*(*v1 + 152)] + 16);

  os_unfair_lock_lock(v7);
  if ((v1[81] & 1) == 0)
  {
    sub_100112BA4();
  }

  os_unfair_lock_unlock(v7);
}

uint64_t initializeBufferWithCopyOfBuffer for QueryCacheSpan.Error(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for QueryCacheSpan.Error(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for QueryCacheSpan.Error(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000FE12C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000FE148(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

void sub_1000FE178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  sub_100005490(v10);
  v12 = *(v11 + 64);
  sub_100003760();
  __chkstk_darwin(v13);
  sub_10000BEFC();
  sub_100023F84(a3);
  v14 = type metadata accessor for TaskPriority();
  v15 = sub_10001497C();
  v17 = sub_100008D0C(v15, v16, v14);

  if (v17 == 1)
  {
    sub_100015C0C(v5, &unk_10021A820, &qword_1001992D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10000690C(v14);
    (*(v18 + 8))(v5, v14);
  }

  v20 = *(a5 + 16);
  v19 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = v20;
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100012F58();
    if (a2)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_100006634();
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v19 | v21)
      {
        sub_10000AF08();
      }

      swift_task_create();
      sub_10000835C();

      goto LABEL_13;
    }
  }

  else
  {
    v21 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006634();
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v21)
  {
    sub_10000E1F4();
  }

  swift_task_create();
LABEL_13:
  sub_100007CB4();
}

void sub_1000FE3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  sub_100005490(v10);
  v12 = *(v11 + 64);
  sub_100003760();
  __chkstk_darwin(v13);
  sub_10000BEFC();
  sub_100023F84(a3);
  v14 = type metadata accessor for TaskPriority();
  v15 = sub_10001497C();
  v17 = sub_100008D0C(v15, v16, v14);

  if (v17 == 1)
  {
    sub_100015C0C(v5, &unk_10021A820, &qword_1001992D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10000690C(v14);
    (*(v18 + 8))(v5, v14);
  }

  v20 = *(a5 + 16);
  v19 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = v20;
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100012F58();
    if (a2)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_100006634();
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_100046184(&unk_100217470, &qword_10019BA80);
      if (v19 | v21)
      {
        sub_10000AF08();
      }

      swift_task_create();
      sub_10000835C();

      goto LABEL_13;
    }
  }

  else
  {
    v21 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006634();
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100046184(&unk_100217470, &qword_10019BA80);
  if (v19 | v21)
  {
    sub_10000E1F4();
  }

  swift_task_create();
LABEL_13:
  sub_100007CB4();
}

void sub_1000FE634(uint64_t a1)
{
  sub_100015B9C(a1);
  if (v2)
  {
    sub_100046184(&qword_10021A830, &qword_10019F450);
    v4 = sub_100006FC4();
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
  }

  sub_10000DC78();
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = (v4 + 8);

  v11 = 0;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    v14 = (*(v1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100009848(*(v1 + 56) + 32 * v13, v37);
    *&v36 = v16;
    *(&v36 + 1) = v15;
    v34[2] = v36;
    v35[0] = v37[0];
    v35[1] = v37[1];
    v34[0] = v36;

    swift_dynamicCast();
    sub_100028734(v35, v29);
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100028734(v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100028734(v33, v34);
    v17 = AnyHashable._rawHashValue(seed:)(v4[5]) & ~(-1 << *(v4 + 32));
    if (((-1 << v17) & ~*&v10[8 * (v17 >> 6)]) == 0)
    {
      sub_10001BC38();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (*&v10[8 * v18] != -1)
        {
          sub_100007AB4();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1001028FC();
LABEL_21:
    v8 &= v8 - 1;
    sub_10001BD58();
    *&v10[v22] |= v23;
    v25 = v4[6] + 40 * v24;
    *v25 = v26;
    *(v25 + 16) = v27;
    *(v25 + 32) = v28;
    sub_100028734(v34, (v4[7] + 32 * v24));
    ++v4[2];
  }

  while (v8);
LABEL_8:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return;
    }

    v8 = *(v3 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1000FE8A8(uint64_t a1)
{
  sub_100015B9C(a1);
  if (v2)
  {
    sub_100046184(&qword_100216690, &qword_1001A0410);
    v6 = sub_100006FC4();
  }

  else
  {
    v6 = &_swiftEmptyDictionarySingleton;
  }

  sub_100003AAC();
  sub_10000F274();

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    sub_10001BEA4();
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(v1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(v1 + 56) + v11);
    v27 = *v15;
    v28 = v15[1];

    swift_dynamicCast();
    sub_100028734(&v29, v31);
    sub_100028734(v31, v32);
    sub_100028734(v32, &v30);
    result = sub_100005B74(v14, v13);
    v16 = result;
    if (v17)
    {
      sub_10000999C();
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v13;

      v20 = (v6[7] + 32 * v16);
      sub_100007378(v20);
      result = sub_100028734(&v30, v20);
      v8 = v9;
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_17;
      }

      sub_10000DEBC();
      *(v6 + v21 + 64) |= v22;
      sub_10000999C();
      *v23 = v14;
      v23[1] = v13;
      result = sub_100028734(&v30, (v6[7] + 32 * v16));
      v24 = v6[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v6[2] = v26;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v4)
    {

      return v6;
    }

    v5 = *(v3 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1000FEA9C(uint64_t a1)
{
  sub_100015B9C(a1);
  if (v2)
  {
    sub_100046184(&qword_100216690, &qword_1001A0410);
    v6 = sub_100006FC4();
  }

  else
  {
    v6 = &_swiftEmptyDictionarySingleton;
  }

  sub_100003AAC();
  sub_10000F274();

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    sub_10001BEA4();
    v11 = v10 | (v9 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v26 = *(*(v1 + 56) + 8 * v11);

    swift_dynamicCast();
    sub_100028734(&v27, v29);
    sub_100028734(v29, v30);
    sub_100028734(v30, &v28);
    result = sub_100005B74(v14, v13);
    v15 = result;
    if (v16)
    {
      sub_10000999C();
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = (v6[7] + 32 * v15);
      sub_100007378(v19);
      result = sub_100028734(&v28, v19);
      v8 = v9;
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_17;
      }

      sub_10000DEBC();
      *(v6 + v20 + 64) |= v21;
      sub_10000999C();
      *v22 = v14;
      v22[1] = v13;
      result = sub_100028734(&v28, (v6[7] + 32 * v15));
      v23 = v6[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v6[2] = v25;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v4)
    {

      return v6;
    }

    v5 = *(v3 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1000FEC80()
{
  sub_100006788();
  sub_1000036C8();
  v3 = *(v2 + 96);
  sub_1000135FC();
  v4 = type metadata accessor for Client();
  sub_10000690C(v4);
  (*(v5 + 24))(v0 + v3, v1);
  swift_endAccess();
  Lock.unlock()();
}

void sub_1000FED08()
{
  sub_100006788();
  sub_10000F5D4();
  v2 = *(v0 + 24);
  *(v0 + 24) = v1;
  v3 = v1;

  Lock.unlock()();
}

void sub_1000FED50()
{
  sub_100006788();
  sub_1000036C8();
  v3 = *(v2 + 96);
  sub_1000135FC();
  sub_10010265C(v1, v0 + v3);
  swift_endAccess();
  Lock.unlock()();
}

void sub_1000FEDAC(char a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  Lock.lock()();
  sub_10000F5D4();
  *(v2 + 24) = a1;
  Lock.unlock()();
}

void sub_1000FEDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  sub_100005490(v9);
  v11 = *(v10 + 64);
  sub_100003760();
  __chkstk_darwin(v12);
  sub_10000BEFC();
  sub_100023F84(a3);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_10001497C();
  v16 = sub_100008D0C(v14, v15, v13);

  if (v16 == 1)
  {
    sub_100015C0C(v5, &unk_10021A820, &qword_1001992D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10000690C(v13);
    (*(v17 + 8))(v5, v13);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = v19;
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100012F58();
    if (a2)
    {
LABEL_6:
      String.utf8CString.getter();

      if (v18 | v20)
      {
        sub_10000AF08();
      }

      sub_100017CC0();
      sub_10000835C();

      goto LABEL_13;
    }
  }

  else
  {
    v20 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v20)
  {
    sub_10000E1F4();
  }

  sub_100017CC0();
LABEL_13:
  sub_100007CB4();
}

id sub_1000FEFDC()
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10000835C();
  v2 = _convertErrorToNSError(_:)();
  v3 = [v0 initWithError:v2];

  return v3;
}

uint64_t sub_1000FF044()
{
  if (qword_100214090 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000964C(v0, qword_100232A20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "bag refresh notification", v3, 2u);
  }

  v4 = Notification.userInfo.getter();
  if (!v4)
  {
    v10 = 0u;
    v11 = 0u;
    return sub_100015C0C(&v10, &qword_1002181D0, &qword_100198E00);
  }

  v5 = v4;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100034150(v5, &v10);

  sub_10003430C(&v9);
  if (!*(&v11 + 1))
  {
    return sub_100015C0C(&v10, &qword_1002181D0, &qword_100198E00);
  }

  type metadata accessor for BagContext();
  result = swift_dynamicCast();
  if (result)
  {
    v7 = v9;
    v8 = sub_1000165AC();
    if (v8)
    {
      if (sub_1000357C4(v7, v8))
      {
        sub_100015914(0, 0);
      }
    }
  }

  return result;
}

void *sub_1000FF32C()
{
  sub_10000B218((v0 + 2));
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  return v0;
}

uint64_t sub_1000FF364()
{
  v0 = sub_1000FF32C();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_1000FF3B4()
{
  sub_100006EE0();
  v1 = *(v0[2] + 32);
  v0[3] = v1;
  if (v1)
  {
    v2 = async function pointer to ConfigurationManager.configuration(for:forceFetch:)[1];

    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1000FF4C0;

    return ConfigurationManager.configuration(for:forceFetch:)(8);
  }

  else
  {
    sub_100102608();
    sub_10001AC40();
    swift_allocError();
    swift_willThrow();
    sub_1000098BC();

    return v4();
  }
}

uint64_t sub_1000FF4C0()
{
  sub_100007B50();
  sub_10000A9A4();
  v3 = v2;
  sub_100007F20();
  *v4 = v3;
  v6 = *(v5 + 32);
  *v4 = *v1;
  v3[5] = v7;
  v3[6] = v0;

  if (v0)
  {
    v8 = sub_1000FF6B4;
  }

  else
  {
    v9 = v3[3];

    v8 = sub_1000FF5D0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000FF5D0()
{
  sub_100006EE0();
  v1 = *(v0 + 40);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 40);
    sub_100102608();
    sub_10001AC40();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1000098BC();

    return v5();
  }
}

uint64_t sub_1000FF6B4()
{
  sub_100007B50();
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  sub_1000098BC();

  return v3();
}

uint64_t sub_1000FF710()
{
  sub_100007B50();
  v1 = *(v0 + 88);

  sub_1000098BC();
  v3 = *(v0 + 104);

  return v2();
}

void sub_1000FF76C(char a1, void (*a2)(id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  sub_100005490(v12);
  v14 = *(v13 + 64);
  sub_100003760();
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v18 = sub_100016D34();
  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = v18;
  v28 = v18;
  if ((a1 & 1) == 0)
  {
    sub_100005180(0, &qword_100218240, PARBag_ptr);
    v20 = Config.isDefault.getter();
    v19 = v28;
    if (v20)
    {

LABEL_5:
      v21 = type metadata accessor for TaskPriority();
      sub_1000051C0(v17, 1, 1, v21);
      v22 = swift_allocObject();
      v23 = *(v6 + 32);
      swift_weakInit();
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = v22;
      v24[5] = a2;
      v24[6] = a3;
      v24[7] = a4;
      v24[8] = a5;

      sub_1000FE178(0, 0, v17, &unk_10019F468, v24);

      sub_100015C0C(v17, &unk_10021A820, &qword_1001992D0);
      sub_100007CB4();
      return;
    }
  }

  a2(v19);
  sub_100007CB4();
}

uint64_t sub_1000FF938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return _swift_task_switch(sub_1000FF960, 0, 0);
}

uint64_t sub_1000FF960()
{
  sub_100006EE0();
  v1 = *(v0 + 40);
  sub_100014C90();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = async function pointer to ConfigurationManager.configuration(for:forceFetch:)[1];
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v5 = sub_100007740(v4);

    return ConfigurationManager.configuration(for:forceFetch:)(v5);
  }

  else
  {
    if (qword_100214090 != -1)
    {
      sub_1000042B0();
    }

    v6 = type metadata accessor for Logger();
    sub_10000964C(v6, qword_100232A20);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "config is not type PARBag", v9, 2u);
      sub_1000036D4();
    }

    sub_100102608();
    sub_10001AC40();
    v10 = swift_allocError();
    swift_willThrow();
    v11 = *(v0 + 72);
    (*(v0 + 64))(v10);

    sub_1000098BC();

    return v12();
  }
}

uint64_t sub_1000FFB14()
{
  sub_100007B50();
  sub_10000A9A4();
  v3 = v2;
  sub_100007F20();
  *v4 = v3;
  v6 = *(v5 + 88);
  *v4 = *v1;
  v3[12] = v7;
  v3[13] = v0;

  if (v0)
  {
    v8 = sub_1000FFDB8;
  }

  else
  {
    v9 = v3[10];

    v8 = sub_1000FFC24;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000FFC24()
{
  v1 = *(v0 + 96);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = *(v0 + 96);
  if (v2)
  {
    v4 = v2;
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 96);
    swift_unknownObjectRetain();
    v6(v4);
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_100214090 != -1)
    {
      sub_1000042B0();
    }

    v8 = type metadata accessor for Logger();
    sub_10000964C(v8, qword_100232A20);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "config is not type PARBag", v11, 2u);
      sub_1000036D4();
    }

    sub_100102608();
    sub_10001AC40();
    v12 = swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    v13 = *(v0 + 72);
    (*(v0 + 64))(v12);
  }

  sub_1000098BC();

  return v14();
}

uint64_t sub_1000FFDB8()
{
  sub_100007B50();
  v1 = *(v0 + 80);

  v2 = *(v0 + 72);
  (*(v0 + 64))(*(v0 + 104));

  sub_1000098BC();

  return v3();
}

uint64_t sub_1000FFE2C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UserAgent();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v1 + 24);
    if (sub_1000165AC())
    {
      type metadata accessor for PARNetworkRequestFactory();
      inited = swift_initStackObject();
      v10 = swift_unknownObjectRetain();
      sub_100017594(v10, inited);
      parsecdUserAgent.getter();
      sub_10008CB88();
      swift_unknownObjectRelease();

      (*(v4 + 8))(v7, v3);
      v12 = type metadata accessor for URLRequest();
      return sub_1000051C0(a1, 0, 1, v12);
    }

    swift_unknownObjectRelease();
  }

  v11 = type metadata accessor for URLRequest();

  return sub_1000051C0(a1, 1, 1, v11);
}

uint64_t sub_100100054()
{
  v0 = sub_100046184(&qword_100218230, &unk_100199A00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15[-1] - v5;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100086710();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_10000F038(v18, v15, &unk_10021A840, &qword_10019F458);
  v7 = v16;
  if (v16)
  {
    v8 = v17;
    sub_100007534(v15, v16);
    (*(v8 + 8))(v7, v8);
    sub_100007378(v15);
  }

  else
  {
    sub_100015C0C(v15, &unk_10021A840, &qword_10019F458);
    v9 = type metadata accessor for URL();
    sub_1000051C0(v6, 1, 1, v9);
  }

  sub_10000F038(v18, v15, &unk_10021A840, &qword_10019F458);
  v10 = v16;
  if (v16)
  {
    v11 = v17;
    sub_100007534(v15, v16);
    (*(v11 + 16))(v10, v11);
    sub_100007378(v15);
  }

  else
  {
    sub_100015C0C(v15, &unk_10021A840, &qword_10019F458);
    v12 = type metadata accessor for URL();
    sub_1000051C0(v3, 1, 1, v12);
  }

  LocalCachePaths.init(standard:legacy:)();
  return sub_100015C0C(v18, &unk_10021A840, &qword_10019F458);
}

void sub_100100284(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = qword_100214090;
        swift_unknownObjectRetain();
        if (v6 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        sub_10000964C(v7, qword_100232A20);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, v9, "New bag loaded", v10, 2u);
        }

        v11 = [objc_opt_self() defaultCenter];
        sub_100046184(&unk_100217020, &unk_10019B4C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100197F20;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        AnyHashable.init<A>(_:)();
        *(inited + 96) = sub_100005180(0, &qword_100218240, PARBag_ptr);
        *(inited + 72) = v5;
        swift_unknownObjectRetain();
        v13 = Dictionary.init(dictionaryLiteral:)();
        sub_100033AC0(@"PARBagChangeNotification", 0, v13, v11);

        if ((Config.isDefault.getter() & 1) == 0)
        {
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&_mh_execute_header, v14, v15, "Broadcasting distributed notification on bag change", v16, 2u);
          }

          v17 = [objc_opt_self() defaultCenter];
          if (qword_100214040 != -1)
          {
            swift_once();
          }

          [v17 postNotificationName:qword_100232950 object:0];
        }

        v18 = sub_1001006AC(v5);
        v19 = *(v3 + 40);
        *(v3 + 40) = v18 & 1;
        if (v19 != (v18 & 1))
        {

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 134217984;
            *(v22 + 4) = *(v3 + 40);

            _os_log_impl(&_mh_execute_header, v20, v21, "setting Parsec News Available status to %lu", v22, 0xCu);
          }

          else
          {
          }

          v23 = &kPARNotifyDisabled;
          if (v18)
          {
            v23 = &kPARNotifyEnabled;
          }

          notify_post(*v23);
        }

        notify_post(kPARNotifyBagChange);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_1001006AC(void *a1)
{
  sub_100005180(0, &qword_100218240, PARBag_ptr);
  if (Config.isDefault.getter())
  {
    return 0;
  }

  v3 = objc_allocWithZone(PARBag);
  v4 = sub_100015C68(a1, 0x312F7377656ELL, 0xE600000000000000);
  v2 = [v4 isEnabled];

  return v2;
}

BOOL sub_10010073C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t sub_100100778@<X0>(void *a1@<X8>)
{
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for UserAgent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = v6;
    parsecdUserAgent.getter();
    v12 = sub_1000844F0();
    v27 = v13;
    v28 = v12;
    URLRequest.url.getter();
    v14 = type metadata accessor for URL();
    if (sub_100008D0C(v5, 1, v14) == 1)
    {
      sub_100015C0C(v5, &qword_100218230, &unk_100199A00);
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v15 = URL.absoluteString.getter();
      v16 = v17;
      (*(*(v14 - 8) + 8))(v5, v14);
    }

    v18 = URLRequest.allHTTPHeaderFields.getter();
    if (v18)
    {
      sub_1000284C8(v18);
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = objc_allocWithZone(SFStartNetworkSearchFeedback);
    v22 = sub_100101DF4(0, 0xE000000000000000, v15, v16, v20, 16, 10);
    sub_100005180(0, &qword_100218220, _CPFeedbackPayload_ptr);
    v23 = v22;
    v24 = sub_1000E4D94(v23, 0);
    v25 = v28;
    sub_100014D74();

    a1[3] = &type metadata for ConfigurationController.FeedbackContext;
    swift_unknownObjectRelease();
    *a1 = v23;
    a1[1] = v25;
    a1[2] = v27;
    return (*(v7 + 8))(v10, v29);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

void sub_100100A2C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UserAgent();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F038(a2, v46, &qword_1002181D0, &qword_100198E00);
  if (!v46[3])
  {
    sub_100015C0C(v46, &qword_1002181D0, &qword_100198E00);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v8 = v45[0];
  v9 = v45[1];
  v10 = URLDataSourceOutput.response.getter();
  if (!v10)
  {
    swift_unknownObjectRelease();

    return;
  }

  v11 = v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    swift_unknownObjectRelease();

    return;
  }

  v44 = [v12 statusCode];

  v13 = URLDataSourceOutput.response.getter();
  if (!v13)
  {
    v15 = 0;
LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    goto LABEL_15;
  }

  v16 = v8;
  v17 = String._bridgeToObjectiveC()();
  v15 = [v15 valueForHTTPHeaderField:v17];

  if (!v15)
  {
    v8 = v16;
    goto LABEL_15;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v15 = v18;
  v8 = v16;
  v21 = v20;
LABEL_16:
  if (qword_100214090 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000964C(v22, qword_100232A20);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  v25 = os_log_type_enabled(v23, v24);
  v42 = v21;
  v43 = v15;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v41[1] = v9;
    v27 = v26;
    v41[0] = swift_slowAlloc();
    v45[0] = v41[0];
    *v27 = 136315138;
    v46[0] = v15;
    v46[1] = v21;

    sub_100046184(&qword_1002181F0, &qword_10019C610);
    v28 = String.init<A>(describing:)();
    v30 = sub_100009684(v28, v29, v45);

    *(v27 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "x-edge value for config fetch: %s", v27, 0xCu);
    sub_100007378(v41[0]);
  }

  v31 = v8;
  v32 = URLDataSourceOutput.data.getter();
  v34 = v33;
  v35 = Data.count.getter();
  sub_100014A40(v32, v34);
  v36 = URLDataSourceOutput.timingInfo.getter();
  v37 = objc_allocWithZone(SFEndNetworkSearchFeedback);
  v38 = sub_100101EF8(v31, v35, v44, v36, v43, v42);
  sub_100005180(0, &qword_100218220, _CPFeedbackPayload_ptr);
  v39 = v38;
  v40 = sub_1000E4D94(v39, 0);
  parsecdUserAgent.getter();
  sub_100014D74();

  swift_unknownObjectRelease();
  (*(v4 + 8))(v7, v3);
}

uint64_t sub_100100EA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UserAgent();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F038(a2, v14, &qword_1002181D0, &qword_100198E00);
  if (!v15)
  {
    return sub_100015C0C(v14, &qword_1002181D0, &qword_100198E00);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v9 = v13[1];
    sub_100005180(0, &unk_100217460, SFErrorFeedback_ptr);
    swift_errorRetain();
    v10 = sub_1000FEFDC();
    sub_100005180(0, &qword_100218220, _CPFeedbackPayload_ptr);
    v11 = v10;
    v12 = sub_1000E4D94(v11, 0);
    parsecdUserAgent.getter();
    sub_100014D74();

    swift_unknownObjectRelease();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

BOOL PARBag.isExpired.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  [v1 expirationDate];
  return v9 < v8;
}

uint64_t PARBag.searchURLString.getter()
{
  v1 = v0;
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  v3 = sub_100005490(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = [v1 searchURL];
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = type metadata accessor for URL();
    v15 = 0;
  }

  else
  {
    v14 = type metadata accessor for URL();
    v15 = 1;
  }

  sub_1000051C0(v7, v15, 1, v14);
  sub_100095E04(v7, v11);
  type metadata accessor for URL();
  v16 = sub_10001497C();
  if (sub_100008D0C(v16, v17, v14) == 1)
  {
    sub_100015C0C(v11, &qword_100218230, &unk_100199A00);
    return 0;
  }

  else
  {
    v18 = URL.absoluteString.getter();
    sub_10000690C(v14);
    (*(v19 + 8))(v11, v14);
  }

  return v18;
}

Swift::OpaquePointer_optional __swiftcall PARBag.rawConfig()()
{
  v1 = sub_100102254(v0);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

double PARBag.value(forKey:ofType:)@<D0>(uint64_t a1@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 valueForKey:v3 override:1];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100046184(&unk_10021A728, &unk_10019F320);
  if (swift_dynamicCast())
  {
    ObjectType = swift_getObjectType();
    if ([v7 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      *(a1 + 24) = ObjectType;
      *a1 = v7;
      return result;
    }

    swift_unknownObjectRelease();
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t PARBag.value(forKey:shouldConsiderOverrides:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 valueForKey:v5 override:a3 & 1];

  _bridgeAnyObjectToAny(_:)();

  return swift_unknownObjectRelease();
}

Swift::Bool __swiftcall PARBag.configBool(forKey:)(Swift::String forKey)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForKey:v2 shouldConsiderOverrides:1];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      LOBYTE(v4) = v6 > 0;
    }
  }

  else
  {
    sub_100015C0C(v9, &qword_1002181D0, &qword_100198E00);
    LOBYTE(v4) = 0;
  }

  return v4;
}

id sub_1001019D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1, v9);
  objc_allocWithZone(PARBag);
  v13 = a4;

  return sub_100101FE0(v11, a3, a4, v14);
}

id sub_100101C2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_allocWithZone(PARBag);

  sub_100014924(a1, a2);
  v11 = a5;
  return sub_1001020B4(a1, a2, a3, a4, a5);
}

id sub_100101D98()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100101DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (a2)
  {
    v13 = String._bridgeToObjectiveC()();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15.super.isa = 0;
    goto LABEL_8;
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = String._bridgeToObjectiveC()();

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v15.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_8:
  v16 = [v8 initWithInput:v13 url:v14 headers:v15.super.isa triggerEvent:a6 endpoint:a7];

  return v16;
}

id sub_100101EF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (!a4)
  {
    v12.super.isa = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = String._bridgeToObjectiveC()();

LABEL_6:
  v14 = [v7 initWithStartSearch:a1 responseSize:a2 statusCode:a3 networkTimingData:v12.super.isa edge:v13];

  return v14;
}

id sub_100101FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, NSURL *a4@<X8>)
{
  v5 = v4;
  URL._bridgeToObjectiveC()(a4);
  v10 = v9;
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 initWithURL:v10 userAgent:v11 userDefaults:a3];

  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id sub_1001020B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (a4)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 initWithData:v11.super.isa userAgent:v12 userDefaults:a5];

  sub_100014A40(a1, a2);
  return v13;
}

uint64_t sub_100102168()
{
  sub_100006EE0();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_100004054(v4);
  *v5 = v6;
  v5[1] = sub_1000A417C;

  return v8(v1);
}

uint64_t sub_100102254(void *a1)
{
  v1 = [a1 rawBag];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100102308(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1001023FC;

  return v6(v2 + 32);
}

uint64_t sub_1001023FC()
{
  sub_100007B50();
  sub_10000A9A4();
  v2 = v1;
  sub_100007F20();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  sub_100005898();
  *v8 = v7;

  *v6 = *(v2 + 32);
  sub_1000098BC();

  return v9();
}

unint64_t sub_1001024F8()
{
  result = qword_10021A838;
  if (!qword_10021A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A838);
  }

  return result;
}

uint64_t sub_10010254C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = swift_task_alloc();
  v9 = sub_100004054(v8);
  *v9 = v10;
  v11 = sub_10000B0EC(v9);

  return sub_1000FF938(v11, v12, v13, v14, v15, v5, v6, v7);
}

unint64_t sub_100102608()
{
  result = qword_10021A850;
  if (!qword_10021A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A850);
  }

  return result;
}

uint64_t sub_10010265C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100217480, &unk_100198F70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001026CC()
{
  sub_100006EE0();
  sub_1000A5324();
  v0 = swift_task_alloc();
  v1 = sub_100004054(v0);
  *v1 = v2;
  v3 = sub_100005EEC(v1);

  return v4(v3);
}

_BYTE *sub_10010276C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10010282C()
{
  result = qword_10021A860;
  if (!qword_10021A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A860);
  }

  return result;
}

unint64_t sub_100102884()
{
  result = qword_10021A868;
  if (!qword_10021A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A868);
  }

  return result;
}

uint64_t sub_100102910(uint64_t a1)
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

uint64_t *sub_1001029B0()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 96));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  return v0;
}

uint64_t sub_100102A4C()
{
  sub_1001029B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100102ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Dictionary.values.getter();
  type metadata accessor for Dictionary.Values();
  swift_getWitnessTable();
  v4 = Array.init<A>(_:)();
  LOBYTE(a3) = sub_100102D5C(v4, a3);

  return a3 & 1;
}

uint64_t sub_100102B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_100009848(v2, v14);
      sub_100009848(v14, v10);
      sub_100046184(&qword_10021A9B0, &qword_10019F6E8);
      if (swift_dynamicCast())
      {
        sub_100008C84(v8, &v11);
        v3 = *(&v12 + 1);
        v4 = v13;
        sub_100007534(&v11, *(&v12 + 1));
        v5 = (*(v4 + 8))(v3, v4);
        sub_100007378(&v11);
        if ((v5 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v9 = 0;
        memset(v8, 0, sizeof(v8));
        sub_10000F94C(v8, &qword_10021A9B8, &unk_10019F6F0);
        sub_100009848(v14, &v11);
        sub_100005180(0, &qword_10021A9C0, NSString_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_100009848(v14, &v11);
          sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
          if (!swift_dynamicCast())
          {
LABEL_11:
            sub_100028734(v14, &v11);
            v6 = 0;
            goto LABEL_12;
          }
        }
      }

      sub_100007378(v14);
      v2 += 32;
      --v1;
    }

    while (v1);
  }

  v11 = 0u;
  v12 = 0u;
  v6 = 1;
LABEL_12:
  sub_10000F94C(&v11, &qword_1002181D0, &qword_100198E00);
  return v6;
}

BOOL sub_100102D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  v13 = a1;
  v12 = a2;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.first(where:)();
  v9 = sub_100008D0C(v8, 1, a2) == 1;
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_100102EB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  v12 = __chkstk_darwin(v11);
  v13 = *(v4 + 16);
  v13(v20 - v14, a1, a2, v12);
  sub_100046184(&qword_10021A9B0, &qword_10019F6E8);
  if (swift_dynamicCast())
  {
    sub_100008C84(v20, v22);
    v15 = v23;
    v16 = v24;
    sub_100007534(v22, v23);
    v17 = (*(v16 + 8))(v15, v16) ^ 1;
    sub_100007378(v22);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_10000F94C(v20, &qword_10021A9B8, &unk_10019F6F0);
    (v13)(v10, a1, a2);
    sub_100005180(0, &qword_10021A9C0, NSString_ptr);
    if (swift_dynamicCast())
    {

      v17 = 0;
    }

    else
    {
      (v13)(v7, a1, a2);
      sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
      v18 = swift_dynamicCast();
      if (v18)
      {
      }

      v17 = v18 ^ 1;
    }
  }

  return v17 & 1;
}

uint64_t sub_100103158(uint64_t a1)
{
  v1 = *(a1 + 448);
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

unint64_t sub_1001031F8(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_100103208@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001031F8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100103234()
{
  v0 = qword_10021A9C8;

  return v0;
}

uint64_t sub_10010326C()
{
  v0 = aDiskwrite[0];

  return v0;
}

uint64_t sub_1001032C8(uint64_t a1, uint64_t a2)
{
  sub_100046184(&qword_100219540, &unk_1001A8690);
  inited = swift_initStackObject();
  sub_10000441C(inited, xmmword_100198F10);
  inited[3].n128_u64[0] = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  strcpy(&inited[3].n128_i8[8], "feedbackType");
  inited[4].n128_u8[5] = 0;
  inited[4].n128_u16[3] = -5120;
  inited[4].n128_u64[1] = [objc_allocWithZone(NSNumber) initWithInt:a2];
  sub_10000EA9C();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1001033B4()
{
  v1 = *v0;
  v2 = *(v0 + qword_10021A9E8);

  v3 = *(*(*(v1 + 448) - 8) + 8);
  v4 = v0 + *(*v0 + 472);

  return v3(v4);
}

unint64_t sub_100103474(uint64_t a1)
{
  *(a1 + 8) = sub_1001034A4();
  result = sub_1001034F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001034A4()
{
  result = qword_10021AA70;
  if (!qword_10021AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AA70);
  }

  return result;
}

unint64_t sub_1001034F8()
{
  result = qword_10021AA78;
  if (!qword_10021AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AA78);
  }

  return result;
}

unint64_t sub_100103550()
{
  result = qword_10021AA80;
  if (!qword_10021AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AA80);
  }

  return result;
}

uint64_t sub_1001035A4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1001035B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001035D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_100103610(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100103698(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100103774()
{
  result = qword_10021AA88;
  if (!qword_10021AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AA88);
  }

  return result;
}

id sub_1001037D0(uint64_t a1, uint64_t a2)
{
  v16 = xmmword_10019BC20;
  v17 = 0;
  v4 = swift_allocObject();
  v4[2] = &v16;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1001069E4;
  *(v5 + 24) = v4;
  v15[4] = sub_100028274;
  v15[5] = v5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000282A4;
  v15[3] = &unk_1001FDC78;
  v6 = _Block_copy(v15);

  v7 = v6[2];
  isEscapingClosureAtFileLocation = v6;
  v7();
  v9 = 0;
  while (1)
  {

    v10 = v9;
    _Block_release(isEscapingClosureAtFileLocation);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (v10)
    {
      v12 = v10;
      Incident.reportTelemetry()();
      sub_1000572E8();
      swift_allocError();
      *v13 = v10;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      swift_willThrow();

      sub_10003AA6C(v16, *(&v16 + 1));

      return v10;
    }

    if (*(&v16 + 1) != 1)
    {
      break;
    }

LABEL_9:
    __break(1u);
    v9 = objc_begin_catch(v11);
    objc_end_catch();
  }

  v10 = v16;

  return v10;
}

uint64_t sub_100103A0C(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v8);
  v3 = v9;
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = v8;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;

  return sub_10003AA6C(v4, v5);
}

uint64_t sub_100103A6C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  if (qword_1002140D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000964C(v4, qword_100232AE0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    if (*(v2 + 40))
    {
      v9 = *(v2 + 32);
      v10 = *(v2 + 40);
    }

    else
    {
      v10 = 0xE300000000000000;
      v9 = 7104878;
    }

    v11 = sub_100009684(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "updating storefrontIdentifier: %s", v7, 0xCu);
    sub_100007378(v8);
  }

  v12 = *(v2 + 40);
  *a1 = *(v2 + 32);
  a1[1] = v12;
  type metadata accessor for ContextUpdate(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_100103C20(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100103C9C(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100103C9C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100003650(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100003664();
  v16 = v15 - v14;
  v32 = type metadata accessor for DispatchQoS();
  v17 = sub_100003650(v32);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_100003664();
  v24 = v23 - v22;
  v31 = *(v4 + 64);
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = a1;
  *(v25 + 32) = a2;
  *(v25 + 40) = a3;
  v36 = sub_100106B8C;
  v37 = v25;
  sub_100003784();
  sub_1000040A8(COERCE_DOUBLE(1107296256));
  v34 = v26;
  v35 = &unk_1001FDEF8;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10000F4D8();
  sub_1000152E8(v28, v29);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_100038314(&qword_1002147E0, &unk_100217030, &unk_1001989C0);
  sub_10000DD54();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008A7C();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v11 + 8))(v16, v8);
  (*(v19 + 8))(v24, v32);
}

uint64_t sub_100103EF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1002141C8 != -1)
  {
    swift_once();
  }

  v6 = sub_1000423A0(*(off_10021AA90 + 2), 1uLL);
  v7 = &v2[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_registrations];

  os_unfair_lock_lock(v7);
  sub_10010684C(sub_10006C78C);
  v8 = *(*&v7[2]._os_unfair_lock_opaque + 16);
  sub_100110714(v8);
  v9 = *&v7[2]._os_unfair_lock_opaque;
  *(v9 + 16) = v8 + 1;
  v10 = (v9 + 24 * v8);
  v10[4] = v6;
  v10[5] = a1;
  v10[6] = a2;

  os_unfair_lock_unlock(v7);
  v11 = *&v2[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue];
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = v6;
  v12[4] = a1;
  v12[5] = a2;
  sub_100006634();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100106B5C;
  *(v13 + 24) = v12;
  v20[4] = sub_100106BC8;
  v20[5] = v13;
  sub_100003AF0();
  sub_1000060BC();
  v20[2] = v14;
  v20[3] = &unk_1001FDE58;
  v15 = _Block_copy(v20);

  v16 = v11;
  v17 = v3;

  dispatch_sync(v16, v15);

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100104114()
{
  v1 = v0;
  if ((*(v0 + 80) & 1) == 0)
  {
    v2 = *(v0 + 72);
    v3 = *(v1 + 88);
    sub_100104190(v2);
  }

  sub_10000B218(v1 + 16);
  v4 = *(v1 + 40);

  sub_10000B218(v1 + 48);

  return v1;
}

void sub_100104190(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_registrations;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_registrations));
  v4 = 0;
  v5 = 0;
  v6 = (v3 + 8);
  v7 = *(v3 + 8);
  v8 = *(v7 + 16);
  while (1)
  {
    if (v8 == v5)
    {
      v5 = *(v7 + 16);
LABEL_19:
      sub_1001068CC(v5, v8);

      os_unfair_lock_unlock(v3);
      return;
    }

    if (*(v7 + v4 + 32) == a1)
    {
      break;
    }

    ++v5;
    v4 += 24;
  }

  v20 = v3;
  v9 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    while (v9 != v8)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = *(v7 + v4 + 56);
      if (v10 != a1)
      {
        if (v9 != v5)
        {
          if (v5 >= v8)
          {
            goto LABEL_23;
          }

          v11 = (v7 + 32 + 24 * v5);
          v21 = v11[1];
          v22 = *v11;
          v12 = v11[2];
          v13 = *(v7 + v4 + 72);
          v23 = *(v7 + v4 + 64);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v6 = v7;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001107AC(v7);
            v7 = v19;
            *v6 = v19;
          }

          v15 = (v7 + 24 * v5);
          v16 = v15[6];
          v15[4] = v10;
          v15[5] = v23;
          v15[6] = v13;

          *v6 = v7;
          if (v9 >= *(v7 + 16))
          {
            goto LABEL_24;
          }

          v17 = (v7 + v4);
          v18 = *(v7 + v4 + 72);
          v17[7] = v22;
          v17[8] = v21;
          v17[9] = v12;

          *v6 = v7;
          v8 = *(v7 + 16);
        }

        ++v5;
      }

      ++v9;
      v4 += 24;
    }

    v3 = v20;
    if (v8 >= v5)
    {
      goto LABEL_19;
    }

LABEL_25:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10010435C()
{
  sub_100104114();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_100104390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (!v6 || ((result = *(a1 + 32), result == a2) ? (v8 = v6 == a3) : (v8 = 0), !v8 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
  {
    *(a1 + 32) = a2;
    *(a1 + 40) = a3;

    return sub_10010E3B4();
  }

  return result;
}

uint64_t sub_100104408(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), v10 = 0, (v9 & 1) != 0))
  {
    v10 = a3 ^ a6 ^ 1;
  }

  return v10 & 1;
}

id sub_100104478()
{
  v3 = 0;
  result = [v0 registerSynchronouslyWithError:&v3];
  v2 = v3;
  if (v3)
  {
    swift_willThrow();
    return v2;
  }

  return result;
}

id sub_10010451C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_100104544(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001045D4()
{
  v1 = [v0 monitoredAccounts];
  sub_100005180(0, &qword_10021AC58, ACAccount_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void *sub_100104698()
{
  sub_100046184(&qword_10021AC50, &qword_10019FB80);
  v0 = swift_allocObject();
  result = sub_100042350(0);
  *(v0 + 16) = result;
  off_10021AA90 = v0;
  return result;
}

id sub_1001046EC()
{
  result = [objc_allocWithZone(type metadata accessor for AppleAccountMonitor()) init];
  qword_100232D40 = result;
  return result;
}

uint64_t sub_10010471C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100005180(0, &qword_10021AC28, ACMonitoredAccountStore_ptr);
  v2 = objc_allocWithZone(ObjectType);
  v3 = sub_1001047D0(v1, &off_1001FDA08);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1001047D0(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v43 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  sub_100003664();
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_100003664();
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = sub_100003650(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100003664();
  v15 = v14 - v13;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = sub_100003650(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_100003664();
  v24 = v23 - v22;
  v25 = &v3[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_monitoredAccountStore];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 4) = 0;
  v42 = OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue;
  sub_100005180(0, &qword_1002147C0, OS_dispatch_queue_ptr);
  (*(v19 + 104))(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  (*(v10 + 104))(v15, enum case for DispatchQoS.QoSClass.utility(_:), v7);
  static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v15, v7);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000152E8(&qword_1002157A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100046184(&unk_100217550, &unk_1001999F0);
  sub_100038314(&qword_1002157A8, &unk_100217550, &unk_1001999F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v3[v42] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = &v3[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_registrations];
  *v26 = 0;
  *(v26 + 1) = _swiftEmptyArrayStorage;
  v27 = &v3[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_lastAccount];
  v27[16] = 0;
  *v27 = 0;
  *(v27 + 1) = 0;
  v3[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_didRegister] = 0;
  v51.receiver = v3;
  v51.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v51, "init");
  sub_100046184(&qword_10021AC30, &qword_10019FB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100197F20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v30;
  v31 = v28;
  v32 = sub_1000ECD9C(inited);
  v33 = *(a2 + 8);
  v48 = a1;
  v49 = a2;
  sub_1000205C4(aBlock);
  v34 = v31;
  v33(v32, v31, a1, a2);
  v35 = OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_monitoredAccountStore;
  swift_beginAccess();
  sub_100106A7C(aBlock, &v34[v35]);
  swift_endAccess();
  v36 = *&v34[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue];
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  sub_100006634();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_100106BE4;
  *(v38 + 24) = v37;
  v49 = sub_100106BC8;
  v50 = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000282A4;
  v48 = &unk_1001FDDE0;
  v39 = _Block_copy(aBlock);
  v40 = v36;

  dispatch_sync(v40, v39);

  _Block_release(v39);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if ((v39 & 1) == 0)
  {
    return v34;
  }

  __break(1u);
  return result;
}

void sub_100104D68()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = (v1 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_monitoredAccountStore);
    swift_beginAccess();
    sub_100106AEC(v9, v31);
    v10 = v32;
    if (!v32)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v11 = v33;
    sub_100007534(v31, v32);
    (*(v11 + 16))(v10, v11);
    sub_100007378(v31);
    *(v1 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_didRegister) = 1;
    v20 = v9[3];
    if (!v20)
    {
      goto LABEL_19;
    }

    v21 = v9[4];
    v22 = sub_100007534(v9, v9[3]);
    v23 = *(v20 - 8);
    v24 = *(v23 + 64);
    __chkstk_darwin(v22);
    v26 = v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26);
    v27 = (*(v21 + 24))(v20, v21);
    (*(v23 + 8))(v26, v20);
    if (sub_10000D57C(v27))
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_11;
      }

      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v28 = *(v27 + 32);
LABEL_11:
        v29 = v28;

        sub_1001051C4(v29);

        return;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v12 = type metadata accessor for Logger();
    sub_10000964C(v12, qword_100232AE0);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31[0] = v16;
      *v15 = 136315138;
      v30[0] = v6;
      swift_errorRetain();
      sub_100046184(&qword_100216900, &unk_10019AE20);
      v17 = String.init<A>(describing:)();
      v19 = sub_100009684(v17, v18, v31);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to register for account updates: %s", v15, 0xCu);
      sub_100007378(v16);
    }

    else
    {
    }
  }
}

void sub_1001051C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v4 - 8);
  v5 = *(v97 + 64);
  __chkstk_darwin(v4);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v96 = *(v8 - 8);
  v9 = *(v96 + 64);
  __chkstk_darwin(v8);
  v86 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue;
  v16 = *&v2[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  v19 = (*(v12 + 8))(v15, v11);
  if (v18)
  {
    v20 = v8;
    __chkstk_darwin(v19);
    *(&v82 - 2) = a1;
    v21 = sub_1001037D0(sub_10010679C, (&v82 - 4));
    v32 = v22;
    if (v22)
    {
      v33 = v21;
      v34 = v23;
      v85 = v7;
      v35 = &v2[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_lastAccount];
      v36 = *&v2[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_lastAccount + 8];
      if (v36)
      {
        v37 = v35[16];
        if (v21 == *v35 && v22 == v36)
        {
          if ((v23 & 1) == (v37 & 1))
          {
LABEL_14:

            if (qword_1002140D0 != -1)
            {
              swift_once();
            }

            v39 = type metadata accessor for Logger();
            sub_10000964C(v39, qword_100232AE0);
            v25 = Logger.logObject.getter();
            v40 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v25, v40))
            {
              v41 = swift_slowAlloc();
              *v41 = 0;
              _os_log_impl(&_mh_execute_header, v25, v40, "storefront account properties unchanged", v41, 2u);
            }

            goto LABEL_5;
          }
        }

        else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((v34 ^ v37) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v42 = qword_1002140D0;

      if (v42 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_10000964C(v43, qword_100232AE0);

      v44 = v2;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();

      v47 = os_log_type_enabled(v45, v46);
      v84 = v4;
      v94 = v2;
      v90 = v44;
      v93 = v33;
      if (v47)
      {
        v48 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v48 = 136315394;
        v49 = *(v35 + 1);
        v50 = v35[16];
        aBlock = *v35;
        v100 = v49;
        LOBYTE(v101[0]) = v50;

        sub_100046184(&qword_10021AC18, &unk_10019FB50);
        v51 = String.init<A>(describing:)();
        v53 = sub_100009684(v51, v52, &v98);

        *(v48 + 4) = v53;
        *(v48 + 12) = 2080;
        aBlock = v93;
        v100 = v32;
        v54 = v34 & 1;
        LOBYTE(v101[0]) = v54;

        v55 = String.init<A>(describing:)();
        v57 = sub_100009684(v55, v56, &v98);

        *(v48 + 14) = v57;
        LODWORD(v57) = v54;
        _os_log_impl(&_mh_execute_header, v45, v46, "storefront account properties changed: %s -> %s", v48, 0x16u);
        swift_arrayDestroy();

        v33 = v93;
      }

      else
      {

        LODWORD(v57) = v34 & 1;
      }

      v58 = *(v35 + 1);
      *v35 = v33;
      *(v35 + 1) = v32;
      v35[16] = v57;

      v59 = [objc_opt_self() defaultCenter];
      if (qword_100214020 != -1)
      {
        swift_once();
      }

      v60 = qword_1002328E0;
      sub_100046184(&unk_100217020, &unk_10019B4C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100197F20;
      aBlock = 0x756F636341524150;
      v100 = 0xEA0000000000746ELL;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for StorefrontAccount;
      *(inited + 72) = v33;
      *(inited + 80) = v32;
      *(inited + 88) = v57;

      v62 = Dictionary.init(dictionaryLiteral:)();
      sub_100033AC0(v60, 0, v62, v59);

      v63 = (v90 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_registrations);
      os_unfair_lock_lock((v90 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_registrations));
      v83 = v63;
      v64 = *&v63[2]._os_unfair_lock_opaque;
      v65 = v32;
      v66 = *(v64 + 16);
      v67 = v94;
      v68 = v84;
      v69 = v85;
      v70 = v86;
      v71 = v95;
      if (v66)
      {
        v90 = v101;
        v89 = (v97 + 8);
        v88 = (v96 + 8);
        v72 = (v64 + 48);
        v92 = v65;
        v91 = v20;
        v87 = v57;
        do
        {
          v97 = v66;
          v73 = v68;
          v74 = *(v72 - 2);
          v75 = *(v72 - 1);
          v76 = *v72;
          v77 = *&v67[v71];
          v78 = swift_allocObject();
          *(v78 + 16) = v74;
          *(v78 + 24) = v75;
          v96 = v76;
          v79 = v93;
          *(v78 + 32) = v76;
          *(v78 + 40) = v79;
          *(v78 + 48) = v65;
          *(v78 + 56) = v57;
          v101[2] = sub_1001069B0;
          v101[3] = v78;
          aBlock = _NSConcreteStackBlock;
          v100 = 1107296256;
          v101[0] = sub_10000D50C;
          v101[1] = &unk_1001FDC00;
          v80 = _Block_copy(&aBlock);
          swift_retain_n();

          v57 = v77;
          static DispatchQoS.unspecified.getter();
          v98 = _swiftEmptyArrayStorage;
          sub_1000152E8(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags);
          sub_100046184(&unk_100217030, &unk_1001989C0);
          sub_100038314(&qword_1002147E0, &unk_100217030, &unk_1001989C0);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          v68 = v73;
          v81 = v91;
          _Block_release(v80);

          LOBYTE(v57) = v87;
          v65 = v92;
          (*v89)(v69, v68);
          (*v88)(v70, v81);

          v71 = v95;
          v67 = v94;
          v72 += 3;
          v66 = v97 - 1;
        }

        while (v97 != 1);
      }

      os_unfair_lock_unlock(v83);
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v24 = type metadata accessor for Logger();
    sub_10000964C(v24, qword_100232AE0);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = sub_100009684(v29, v30, &aBlock);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to retrieve ams storefront due to error: %s", v27, 0xCu);
      sub_100007378(v28);

LABEL_5:

      return;
    }
  }
}

id sub_100105D28()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_monitoredAccountStore;
  swift_beginAccess();
  result = sub_100106AEC(v0 + v2, v8);
  if (v9)
  {
    v4 = v10;
    sub_100007534(v8, v9);
    v5 = *(v4 + 32);
    v6 = v0;
    v5();

    sub_100007378(v8);
    v7.receiver = v6;
    v7.super_class = ObjectType;
    return objc_msgSendSuper2(&v7, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100105EBC(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void))
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  result = __chkstk_darwin(v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_didRegister])
  {
    v16 = &a1[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_lastAccount];
    v17 = *&a1[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_lastAccount + 8];
    if (v17)
    {
      v18 = *v16;
      v19 = v16[16];

      a3(v18, v17, v19 & 1);
    }
  }

  else
  {
    v20 = *&a1[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue];
    v26 = v13;
    v27 = result;
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    aBlock[4] = sub_100106B68;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D50C;
    aBlock[3] = &unk_1001FDEA8;
    v22 = _Block_copy(aBlock);
    v23 = v20;
    v24 = a1;
    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_1000152E8(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100046184(&unk_100217030, &unk_1001989C0);
    sub_100038314(&qword_1002147E0, &unk_100217030, &unk_1001989C0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v6 + 8))(v9, v5);
    (*(v26 + 8))(v15, v27);
  }

  return result;
}

uint64_t sub_100106298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100003650(v8);
  v35 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100003664();
  v15 = v14 - v13;
  v34 = type metadata accessor for DispatchQoS();
  v16 = sub_100003650(v34);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100003664();
  v23 = v22 - v21;
  v24 = *&v4[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue];
  sub_100006634();
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = a1;
  v39 = a3;
  v40 = v25;
  sub_100003784();
  sub_1000040A8(COERCE_DOUBLE(1107296256));
  v37 = v26;
  v38 = a4;
  v27 = _Block_copy(aBlock);
  v28 = v24;
  v29 = v4;
  v30 = a1;
  static DispatchQoS.unspecified.getter();
  sub_10000F4D8();
  sub_1000152E8(v31, v32);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_100038314(&qword_1002147E0, &unk_100217030, &unk_1001989C0);
  sub_10000DD54();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008A7C();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v35 + 8))(v15, v8);
  (*(v18 + 8))(v23, v34);
}

uint64_t sub_10010669C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001066DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10010674C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001069F0(a1);
  v6 = v5;
  result = [a1 aa_isManagedAppleID];
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  return result;
}

id sub_1001067A4(uint64_t a1, uint64_t a2)
{
  isa = Set._bridgeToObjectiveC()().super.isa;

  v5 = [v2 initWithAccountTypes:isa delegate:a2];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_10010684C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

unint64_t sub_1001068A8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001068CC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000BC340(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 24 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1001159A0((v9 + 24 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1001069F0(void *a1)
{
  v1 = [a1 ams_storefront];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100106A54()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1001051C4(v1);
}

uint64_t sub_100106A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&unk_10021AC38, &unk_10019FB68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100106AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&unk_10021AC38, &unk_10019FB68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SessionFilename.__allocating_init(fromString:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return SessionFilename.init(fromString:)(a1, a2);
}

parsecd::SessionFilename::SessionFileState_optional __swiftcall SessionFilename.SessionFileState.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001F5BE8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t SessionFilename.SessionFileState.rawValue.getter(char a1)
{
  result = 1852141679;
  switch(a1)
  {
    case 1:
      result = 0x6465736F6C63;
      break;
    case 2:
      result = 0x69737365636F7270;
      break;
    case 3:
      result = 0x646564616F6C7075;
      break;
    default:
      return result;
  }

  return result;
}

parsecd::SessionFilename::SessionFileState_optional sub_100106D34@<W0>(Swift::String *a1@<X0>, parsecd::SessionFilename::SessionFileState_optional *a2@<X8>)
{
  result.value = SessionFilename.SessionFileState.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100106D64@<X0>(uint64_t *a1@<X8>)
{
  result = SessionFilename.SessionFileState.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SessionFilename.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7parsecd15SessionFilename_sessionID;
  sub_1000089E4();
  v4 = type metadata accessor for UUID();
  sub_1000036B8(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t SessionFilename.sessionID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7parsecd15SessionFilename_sessionID;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  sub_1000036B8(v4);
  (*(v5 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t SessionFilename.processID.getter()
{
  v1 = OBJC_IVAR____TtC7parsecd15SessionFilename_processID;
  sub_100006B88();
  return *(v0 + v1);
}

uint64_t SessionFilename.processID.setter(int a1)
{
  v3 = OBJC_IVAR____TtC7parsecd15SessionFilename_processID;
  result = sub_100011A48();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SessionFilename.state.getter()
{
  v1 = OBJC_IVAR____TtC7parsecd15SessionFilename_state;
  sub_100006B88();
  return *(v0 + v1);
}

uint64_t SessionFilename.state.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7parsecd15SessionFilename_state;
  result = sub_100011A48();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SessionFilename.uploadPending.getter()
{
  v1 = OBJC_IVAR____TtC7parsecd15SessionFilename_uploadPending;
  sub_100006B88();
  return *(v0 + v1);
}

uint64_t SessionFilename.uploadPending.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7parsecd15SessionFilename_uploadPending;
  result = sub_100011A48();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SessionFilename.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SessionFilename.init()();
  return v3;
}

uint64_t SessionFilename.init()()
{
  UUID.init()();
  v1 = OBJC_IVAR____TtC7parsecd15SessionFilename_processID;
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 processIdentifier];

  *(v0 + v1) = v3;
  *(v0 + OBJC_IVAR____TtC7parsecd15SessionFilename_state) = 0;
  *(v0 + OBJC_IVAR____TtC7parsecd15SessionFilename_uploadPending) = 0;
  return v0;
}

uint64_t SessionFilename.__allocating_init(fromUserGUID:state:processID:uploadPending:)(uint64_t a1, uint64_t a2, int a3, unint64_t a4, int a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  return SessionFilename.init(fromUserGUID:state:processID:uploadPending:)(a1, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32), a5);
}

uint64_t SessionFilename.init(fromString:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100046184(&unk_100219B70, &qword_10019DFE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v74 - v8;
  v10 = type metadata accessor for UUID();
  v11 = sub_100003650(v10);
  v81 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_100003664();
  v80 = v16 - v15;
  v76 = OBJC_IVAR____TtC7parsecd15SessionFilename_sessionID;
  UUID.init()();
  v17 = OBJC_IVAR____TtC7parsecd15SessionFilename_processID;
  v18 = [objc_opt_self() processInfo];
  v19 = [v18 processIdentifier];

  v78 = v17;
  *(v3 + v17) = v19;
  v75 = OBJC_IVAR____TtC7parsecd15SessionFilename_state;
  *(v3 + OBJC_IVAR____TtC7parsecd15SessionFilename_state) = 0;
  v77 = OBJC_IVAR____TtC7parsecd15SessionFilename_uploadPending;
  *(v3 + OBJC_IVAR____TtC7parsecd15SessionFilename_uploadPending) = 0;
  v87 = 46;
  v88 = 0xE100000000000000;
  v85 = &v87;

  v79 = a1;
  v20 = sub_100018BC0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10003377C, v84, a1, a2);
  v21 = v20[2];
  if (v21)
  {
    v82 = v9;
    v83 = v3;
    v22 = v10;
    v87 = _swiftEmptyArrayStorage;
    sub_1000EC984();
    v23 = v87;
    v24 = v20 + 7;
    do
    {
      v25 = *(v24 - 3);
      v26 = *(v24 - 2);
      v28 = *(v24 - 1);
      v27 = *v24;

      v29 = static String._fromSubstring(_:)();
      v31 = v30;

      v87 = v23;
      v32 = v23[2];
      if (v32 >= v23[3] >> 1)
      {
        sub_1000EC984();
        v23 = v87;
      }

      v23[2] = v32 + 1;
      v33 = &v23[2 * v32];
      v33[4] = v29;
      v33[5] = v31;
      v24 += 4;
      --v21;
    }

    while (v21);

    v10 = v22;
    v9 = v82;
    v3 = v83;
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
  }

  if (v23[2] < 4uLL || ((result = v23[4], result == 0x6E6F6973736573) ? (v35 = v23[5] == 0xE700000000000000) : (v35 = 0), !v35 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
  {

    goto LABEL_85;
  }

  v36 = v23[6];
  v37 = v23[7];
  v38 = HIBYTE(v37) & 0xF;
  v39 = v36 & 0xFFFFFFFFFFFFLL;
  if ((v37 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v37) & 0xF;
  }

  else
  {
    v40 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {
LABEL_84:

LABEL_85:

    return 0;
  }

  if ((v37 & 0x1000000000000000) != 0)
  {
    v57 = v23[7];

    v42 = sub_100107A5C(v36, v37, 10);

    if ((v42 & 0x100000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_84;
  }

  if ((v37 & 0x2000000000000000) != 0)
  {
    v87 = v23[6];
    v88 = v37 & 0xFFFFFFFFFFFFFFLL;
    if (v36 == 43)
    {
      if (v38)
      {
        if (v38 != 1)
        {
          sub_100005660();
          while (1)
          {
            sub_1000060D4();
            if (!v35 & v43)
            {
              break;
            }

            sub_100007D40();
            if (!v35)
            {
              break;
            }

            LODWORD(v42) = v52 + v51;
            if (__OFADD__(v52, v51))
            {
              break;
            }

            sub_1000080F4();
            if (v35)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_82;
      }
    }

    else
    {
      if (v36 != 45)
      {
        if (v38)
        {
          while (1)
          {
            sub_1000060D4();
            if (!v35 & v43)
            {
              break;
            }

            sub_100007D40();
            if (!v35)
            {
              break;
            }

            LODWORD(v42) = v56 + v55;
            if (__OFADD__(v56, v55))
            {
              break;
            }

            sub_1000080F4();
            if (v35)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_82;
      }

      if (v38)
      {
        if (v38 != 1)
        {
          sub_100005660();
          while (1)
          {
            sub_1000060D4();
            if (!v35 & v43)
            {
              break;
            }

            sub_100007D40();
            if (!v35)
            {
              break;
            }

            LODWORD(v42) = v48 - v47;
            if (__OFSUB__(v48, v47))
            {
              break;
            }

            sub_1000080F4();
            if (v35)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_82;
      }

LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if ((v36 & 0x1000000000000000) == 0)
  {
    goto LABEL_97;
  }

  for (result = (v37 & 0xFFFFFFFFFFFFFFFLL) + 32; ; result = _StringObject.sharedUTF8.getter())
  {
    v41 = *result;
    if (v41 == 43)
    {
      if (v39 < 1)
      {
        goto LABEL_101;
      }

      if (v39 != 1)
      {
        LODWORD(v42) = 0;
        if (!result)
        {
          goto LABEL_73;
        }

        while (1)
        {
          sub_1000060D4();
          if (!v35 & v43)
          {
            break;
          }

          sub_100007D40();
          if (!v35)
          {
            break;
          }

          LODWORD(v42) = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            break;
          }

          sub_1000080F4();
          if (v35)
          {
            goto LABEL_83;
          }
        }
      }
    }

    else if (v41 == 45)
    {
      if (v39 < 1)
      {
        goto LABEL_99;
      }

      if (v39 != 1)
      {
        LODWORD(v42) = 0;
        if (!result)
        {
          goto LABEL_73;
        }

        while (1)
        {
          sub_1000060D4();
          if (!v35 & v43)
          {
            break;
          }

          sub_100007D40();
          if (!v35)
          {
            break;
          }

          LODWORD(v42) = v45 - v44;
          if (__OFSUB__(v45, v44))
          {
            break;
          }

          sub_1000080F4();
          if (v35)
          {
            goto LABEL_83;
          }
        }
      }
    }

    else if (v39)
    {
      LODWORD(v42) = 0;
      if (!result)
      {
LABEL_73:
        v46 = 0;
        goto LABEL_83;
      }

      while (1)
      {
        v53 = *result - 48;
        if (v53 > 9)
        {
          break;
        }

        v54 = 10 * v42;
        if (v54 != v54)
        {
          break;
        }

        LODWORD(v42) = v54 + v53;
        if (__OFADD__(v54, v53))
        {
          break;
        }

        ++result;
        if (!--v39)
        {
          goto LABEL_73;
        }
      }
    }

LABEL_82:
    LODWORD(v42) = 0;
    v46 = 1;
LABEL_83:
    v86 = v46;
    if (v46)
    {
      goto LABEL_84;
    }

LABEL_89:
    if (v23[2] >= 3uLL)
    {
      break;
    }

    __break(1u);
LABEL_97:
    ;
  }

  v58 = v23[8];
  v59 = v23[9];

  UUID.init(uuidString:)();

  if (sub_100008D0C(v9, 1, v10) == 1)
  {

    sub_1000BF9D0(v9);
    return 0;
  }

  result = (*(v81 + 32))(v80, v9, v10);
  if (v23[2] < 4uLL)
  {
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v60 = v23[10];
  v61 = v23[11];

  v62._countAndFlagsBits = v60;
  v62._object = v61;
  v63.value = SessionFilename.SessionFileState.init(rawValue:)(v62).value;
  if (v63.value == parsecd_SessionFilename_SessionFileState_unknownDefault)
  {
    (*(v81 + 8))(v80, v10);

    goto LABEL_85;
  }

  value = v63.value;
  v65 = v76;
  swift_beginAccess();
  v66 = v81;
  v67 = v3 + v65;
  v68 = v80;
  (*(v81 + 24))(v67, v80, v10);
  swift_endAccess();
  v69 = v78;
  sub_100004064();
  *(v3 + v69) = v42;
  v70 = v75;
  sub_100004064();
  *(v3 + v70) = value;
  v71._countAndFlagsBits = 0x5064616F6C70752ELL;
  v71._object = 0xEE00676E69646E65;
  v72 = String.hasSuffix(_:)(v71);

  (*(v66 + 8))(v68, v10);
  v73 = v77;
  sub_100004064();
  *(v3 + v73) = v72;
  return v3;
}

uint64_t SessionFilename.deinit()
{
  v1 = OBJC_IVAR____TtC7parsecd15SessionFilename_sessionID;
  v2 = type metadata accessor for UUID();
  sub_1000036B8(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

void *sub_1001079EC(uint64_t a1, uint64_t a2)
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

  sub_100046184(&qword_100216160, &qword_10019A598);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_100107A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4();
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v23 = v8 - 1;
        if (v8 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v14 = 0;
            v27 = result + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v14 * a3;
              if (v30 != v30)
              {
                goto LABEL_126;
              }

              v31 = v28 + v29;
              v22 = __OFADD__(v30, v31);
              v14 = v30 + v31;
              if (v22)
              {
                goto LABEL_126;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_46:
            v16 = 0;
            v19 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *result;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                v19 = 0;
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_127;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if (v38 != v38)
            {
              goto LABEL_126;
            }

            v39 = v36 + v37;
            v22 = __OFADD__(v38, v39);
            v35 = v38 + v39;
            if (v22)
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v35;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if (v20 != v20)
            {
              goto LABEL_126;
            }

            v21 = v17 + v18;
            v22 = __OFSUB__(v20, v21);
            v14 = v20 - v21;
            if (v22)
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        LOBYTE(v70) = v16;
        return (v19 | (v16 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v42 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v44 = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v70;
        v16 = 1;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              v19 = 0;
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_127;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v44 * a3;
          if (v68 != v68)
          {
            goto LABEL_126;
          }

          v69 = v66 + v67;
          v22 = __OFADD__(v68, v69);
          v44 = v68 + v69;
          if (v22)
          {
            goto LABEL_126;
          }

          v65 = (v65 + 1);
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v70 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              v19 = 0;
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_127;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if (v51 != v51)
          {
            goto LABEL_126;
          }

          v52 = v49 + v50;
          v22 = __OFSUB__(v51, v52);
          v44 = v51 - v52;
          if (v22)
          {
            goto LABEL_126;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v44 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v70 + 1;
      v16 = 1;
      do
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            v19 = 0;
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        v60 = v44 * a3;
        if (v60 != v60)
        {
          goto LABEL_126;
        }

        v61 = v58 + v59;
        v22 = __OFADD__(v60, v61);
        v44 = v60 + v61;
        if (v22)
        {
          goto LABEL_126;
        }

        ++v57;
        --v53;
      }

      while (v53);
LABEL_125:
      v16 = 0;
      v19 = v44;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100107FD4()
{
  v0 = sub_100108040();
  v4 = sub_100108074(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100108074(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1001079EC(v9, 0);
  v12 = sub_1001081D4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1001081D4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1000F8AF4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1000F8AF4(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1001083E8()
{
  result = qword_10021AC60;
  if (!qword_10021AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AC60);
  }

  return result;
}

uint64_t sub_100108444()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionFilename.SessionFileState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001085D4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7parsecd10NullStream__bytesWritten);
  v4 = __OFADD__(v3, a2);
  v5 = v3 + a2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC7parsecd10NullStream__bytesWritten) = v5;
    return a2;
  }

  return result;
}

id sub_100108648()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7parsecd10NullStream__bytesWritten] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "initToMemory");
}

id sub_1001086B0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC7parsecd10NullStream__bytesWritten] = 0;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initToBuffer:capacity:", a1, a2);
}

id sub_100108740(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC7parsecd10NullStream__bytesWritten;
  *&v3[OBJC_IVAR____TtC7parsecd10NullStream__bytesWritten] = 0;
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v15, "initWithURL:append:", v8, a2 & 1);

  v11 = type metadata accessor for URL();
  v12 = *(*(v11 - 8) + 8);
  v13 = v10;
  v12(a1, v11);
  if (v13)
  {
  }

  return v13;
}

void sub_1001088CC()
{
  v0 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v0);
  v2 = *(v1 + 64);
  sub_100003760();
  __chkstk_darwin(v3);
  v5 = &v38 - v4;
  v6 = type metadata accessor for URL();
  v7 = sub_100003650(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100003664();
  v14 = v13 - v12;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100048780();
    sub_1000484C8(v14);
    v15 = URL.lastPathComponent.getter();
    v17 = v16;
    (*(v9 + 8))(v14, v6);
    v18 = type metadata accessor for SessionFilename();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_1000054F4();

    v21 = SessionFilename.init(fromString:)(v15, v17);
    if (v21)
    {
      v22 = v21;
      v23 = OBJC_IVAR____TtC7parsecd15SessionFilename_state;
      swift_beginAccess();
      switch(*(v22 + v23))
      {
        case 1:
        case 2:
        case 3:
          v30 = 1852141679;
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v31)
          {
            goto LABEL_10;
          }

          if (qword_1002140B0 != -1)
          {
            sub_100003B30();
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          sub_10000964C(v32, qword_100232A80);
          sub_1000054F4();

          v25 = Logger.logObject.getter();
          v33 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v25, v33))
          {

            goto LABEL_17;
          }

          v34 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v34 = 136315394;
          v35 = sub_100009684(v15, v17, &v39);

          *(v34 + 4) = v35;
          *(v34 + 12) = 2080;
          v36 = 0xE400000000000000;
          switch(*(v22 + v23))
          {
            case 1:
              v36 = 0xE600000000000000;
              v30 = 0x6465736F6C63;
              break;
            case 2:
              v30 = 0x69737365636F7270;
              v36 = 0xEA0000000000676ELL;
              break;
            case 3:
              v36 = 0xE800000000000000;
              v30 = 0x646564616F6C7075;
              break;
            default:
              break;
          }

          v37 = sub_100009684(v30, v36, &v39);

          *(v34 + 14) = v37;
          _os_log_impl(&_mh_execute_header, v25, v33, "At close time, file %s had unexpected state %s", v34, 0x16u);
          swift_arrayDestroy();
          sub_1000037A4();

          sub_1000037A4();

          goto LABEL_21;
        default:

LABEL_10:

          v25 = [objc_opt_self() defaultManager];
          NSFileManager.parsec_renameForStateChange(sessionFile:toState:)(v22, 1u, v5);
          sub_100015C0C(v5, &qword_100218230, &unk_100199A00);
          swift_unknownObjectRelease();

          break;
      }
    }

    else
    {
      if (qword_1002140B0 != -1)
      {
        sub_100003B30();
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000964C(v24, qword_100232A80);
      sub_1000054F4();

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        sub_1000083D0();
        v28 = swift_slowAlloc();
        v40 = v28;
        *v27 = 136315138;
        v29 = sub_100009684(v15, v17, &v40);

        *(v27 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v25, v26, "Session file had unexpected name: %s", v27, 0xCu);
        sub_100007378(v28);
        sub_1000037A4();

        sub_1000037A4();
      }

      else
      {
LABEL_17:
      }

LABEL_21:
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100108F94()
{
  sub_10000B218(v0 + 16);

  return _swift_deallocClassInstance(v0, 41, 7);
}

uint64_t sub_100108FF0(void *a1)
{
  v1 = [a1 feedbacks];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100005180(0, &qword_100218220, _CPFeedbackPayload_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100109060()
{
  sub_1001090FC();
  if (v0 <= 0x3F)
  {
    sub_100109124();
    if (v1 <= 0x3F)
    {
      sub_1001091A4();
      if (v2 <= 0x3F)
      {
        sub_100109208();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void *sub_1001090FC()
{
  result = qword_10021AF58;
  if (!qword_10021AF58)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10021AF58);
  }

  return result;
}

void sub_100109124()
{
  if (!qword_10021AF60)
  {
    sub_1000461CC(&qword_100216900, &unk_10019AE20);
    type metadata accessor for URL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10021AF60);
    }
  }
}

void sub_1001091A4()
{
  if (!qword_10021AF68)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10021AF68);
    }
  }
}

unint64_t sub_100109208()
{
  result = qword_10021AF70;
  if (!qword_10021AF70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10021AF70);
  }

  return result;
}

uint64_t sub_100109264()
{
  sub_10000B218(v0 + 16);
  sub_100007378((v0 + 32));

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1001092C8()
{
  v1 = v0 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result;
  v2 = (v1 + *(type metadata accessor for CachedResultSet.Result(0) + 40));
  v3 = *v2;
  v4 = v2[1];
  result = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      v6 = __OFSUB__(HIDWORD(v3), v3);
      v7 = HIDWORD(v3) - v3;
      if (v6)
      {
        goto LABEL_9;
      }

      result = v7;
      goto LABEL_6;
    case 2uLL:
      v10 = v3 + 16;
      v8 = *(v3 + 16);
      v9 = *(v10 + 8);
      result = v9 - v8;
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_10;
      }

LABEL_6:
      if (result < 0)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
      }

      return result;
    case 3uLL:
      return result;
    default:
      return BYTE6(v4);
  }
}

uint64_t sub_1001093F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), void (*a10)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v47 = a7;
  v48 = a8;
  v45 = a5;
  v46 = a6;
  v42 = a1;
  v43 = a2;
  v44 = a10;
  v13 = a9(0);
  sub_100003650(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  sub_100003760();
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  v21 = type metadata accessor for URLRequest();
  v22 = sub_100003650(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_100003664();
  v29 = v28 - v27;
  v30 = type metadata accessor for CachedResultSet.Result(0);
  v31 = sub_100005490(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_100003664();
  v36 = v35 - v34;
  (*(v24 + 16))(v29, a3, v21);
  (*(v15 + 16))(v20, a4, v13);
  v44(v42, v43, v29, v20, v45, v46, v47, v48);
  (*(v15 + 8))(a4, v13);
  (*(v24 + 8))(a3, v21);
  v37 = *(v10 + 48);
  v38 = *(v10 + 52);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  sub_10007DCBC(v36, v39 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result);
  return v39;
}

BOOL sub_10010961C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtof_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

unint64_t sub_100109714(uint64_t a1, uint64_t a2)
{
  v2 = sub_10010961C(a1, a2);

  return !v2 << 32;
}

uint64_t sub_100109780@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, Swift::String *a7@<X8>)
{
  v109 = a5;
  v110 = a6;
  v108 = a1;
  v106 = type metadata accessor for URLComponents();
  v11 = sub_100003650(v106);
  v104 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_100003838();
  v103 = v15;
  __chkstk_darwin(v16);
  v105 = &v102 - v17;
  v18 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v18);
  v20 = *(v19 + 64);
  sub_100003760();
  __chkstk_darwin(v21);
  v23 = &v102 - v22;
  v24 = type metadata accessor for URL();
  v25 = sub_100003650(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_100003664();
  v107 = v31 - v30;
  v32 = String.lowercased()();

  *a7 = v32;
  Apple_Parsec_Search_V2_SearchResponse.query.getter();
  v33 = String.lowercased()();

  a7[1] = v33;
  v111 = a2;
  Apple_Parsec_Search_V2_SearchResponse.completionScore.getter();
  v35 = v34;
  v36 = type metadata accessor for CachedResultSet.Result(0);
  *(&a7->_countAndFlagsBits + v36[9]) = v35;
  v37 = (&a7->_countAndFlagsBits + v36[7]);
  *v37 = a3;
  v37[1] = a4;
  v38 = (&a7->_countAndFlagsBits + v36[10]);
  v39 = v110;
  *v38 = v109;
  v38[1] = v39;
  v40 = v108;
  v41 = URLRequest.allHTTPHeaderFields.getter();
  v42 = 0.0;
  if (v41 && (v43 = v41, v44 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v46 = sub_1000BCE30(v44, v45, v43), v48 = v47, , , v48))
  {
    v49 = sub_100109714(v46, v48);
    v50 = v111;
    if ((v49 & 0x100000000) == 0)
    {
      v42 = *&v49;
    }
  }

  else
  {
    v50 = v111;
  }

  *(&a7->_countAndFlagsBits + v36[8]) = v42;
  v51 = Apple_Parsec_Search_V2_SearchResponse.maxAgeSeconds.getter();
  v52 = v36[6];
  if (v51 < 1)
  {
    v53 = 1;
  }

  else
  {
    Apple_Parsec_Search_V2_SearchResponse.maxAgeSeconds.getter();
    Date.init(timeIntervalSinceNow:)();
    v53 = 0;
  }

  v54 = type metadata accessor for Date();
  sub_1000051C0(a7 + v52, v53, 1, v54);
  URLRequest.url.getter();
  if (sub_100008D0C(v23, 1, v24) == 1)
  {
    v55 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
    sub_10000374C(v55);
    (*(v56 + 8))(v50);
    v57 = type metadata accessor for URLRequest();
    sub_10000374C(v57);
    (*(v58 + 8))(v40);
    result = sub_10000B298(v23, &qword_100218230, &unk_100199A00);
  }

  else
  {
    v60 = v107;
    (*(v27 + 32))();
    v61 = objc_opt_self();
    URL._bridgeToObjectiveC()(v62);
    v64 = v63;
    v65 = [v61 parsec_componentsWithURL:v63 resolvingAgainstBaseURL:0];

    if (v65)
    {
      v66 = v103;
      static URLComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = v104;
      v68 = v105;
      v69 = v66;
      v70 = v106;
      (*(v104 + 32))(v105, v69, v106);
      if (URLComponents.queryItems.getter())
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v67;
        sub_10000ABE8();
        v73 = v72;
        v75 = v74;

        v76 = (&a7->_countAndFlagsBits + v36[11]);
        *v76 = v73;
        v76[1] = v75;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000ABE8();
        v78 = v77;
        v80 = v79;

        v81 = (&a7->_countAndFlagsBits + v36[12]);
        *v81 = v78;
        v81[1] = v80;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000F190C();
        v83 = v82;
        v85 = v84;

        v86 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
        sub_10000374C(v86);
        (*(v87 + 8))(v111);
        v88 = type metadata accessor for URLRequest();
        sub_10000374C(v88);
        (*(v89 + 8))(v40);
        (*(v71 + 8))(v105, v106);
        result = (*(v27 + 8))(v107, v24);
        v90 = (&a7->_countAndFlagsBits + v36[13]);
        *v90 = v83;
        v90[1] = v85;
        return result;
      }

      v95 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
      sub_10000374C(v95);
      (*(v96 + 8))(v111);
      v97 = type metadata accessor for URLRequest();
      sub_10000374C(v97);
      (*(v98 + 8))(v40);
      (*(v67 + 8))(v68, v70);
    }

    else
    {
      v91 = type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
      sub_10000374C(v91);
      (*(v92 + 8))(v50);
      v93 = type metadata accessor for URLRequest();
      sub_10000374C(v93);
      (*(v94 + 8))(v40);
    }

    result = (*(v27 + 8))(v60, v24);
  }

  v99 = (&a7->_countAndFlagsBits + v36[11]);
  *v99 = 0;
  v99[1] = 0;
  v100 = (&a7->_countAndFlagsBits + v36[12]);
  *v100 = 0;
  v100[1] = 0;
  v101 = (&a7->_countAndFlagsBits + v36[13]);
  *v101 = 0;
  v101[1] = 0;
  return result;
}

uint64_t sub_100109E04@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, Swift::String *a7@<X8>)
{
  v129 = a5;
  v130 = a6;
  v127 = a3;
  v128 = a4;
  v126 = a1;
  v123 = type metadata accessor for URLComponents();
  v9 = sub_100003650(v123);
  v121 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100003838();
  v120 = v13;
  __chkstk_darwin(v14);
  v122 = &v120 - v15;
  v16 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v16);
  v18 = *(v17 + 64);
  sub_100003760();
  __chkstk_darwin(v19);
  v131 = &v120 - v20;
  v21 = type metadata accessor for URL();
  v22 = sub_100003650(v21);
  v133 = v23;
  v134 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_100003664();
  v135 = v27 - v26;
  v28 = type metadata accessor for Google_Protobuf_DoubleValue();
  v29 = sub_100003650(v28);
  v124 = v30;
  v125 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_100003664();
  v35 = v34 - v33;
  v36 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  v37 = sub_100003650(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v37);
  sub_100003664();
  v44 = v43 - v42;
  v45 = String.lowercased()();

  *a7 = v45;
  Apple_Parsec_Safari_V1alpha_SafariSearchResponse.searchResults.getter();
  Apple_Parsec_Safari_V1alpha_SafariSearchResults.query.getter();
  v46 = *(v39 + 8);
  v46(v44, v36);
  v47 = String.lowercased()();

  a7[1] = v47;
  v132 = a2;
  Apple_Parsec_Safari_V1alpha_SafariSearchResponse.searchResults.getter();
  Apple_Parsec_Safari_V1alpha_SafariSearchResults.completionScore.getter();
  v48 = v44;
  v49 = a7;
  v50 = v36;
  v51 = v126;
  v46(v48, v50);
  Google_Protobuf_DoubleValue.value.getter();
  v53 = v52;
  (*(v124 + 8))(v35, v125);
  v54 = type metadata accessor for CachedResultSet.Result(0);
  *&v53 = v53;
  *(&a7->_countAndFlagsBits + v54[9]) = LODWORD(v53);
  v55 = (&a7->_countAndFlagsBits + v54[7]);
  v56 = v128;
  *v55 = v127;
  v55[1] = v56;
  v57 = (&a7->_countAndFlagsBits + v54[10]);
  v58 = v130;
  *v57 = v129;
  v57[1] = v58;
  v59 = URLRequest.allHTTPHeaderFields.getter();
  v60 = 0.0;
  if (v59 && (v61 = v59, v62 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v64 = sub_1000BCE30(v62, v63, v61), v66 = v65, , , v66))
  {
    v67 = sub_100109714(v64, v66);
    v68 = v133;
    v69 = v135;
    if ((v67 & 0x100000000) == 0)
    {
      v60 = *&v67;
    }
  }

  else
  {
    v68 = v133;
    v69 = v135;
  }

  *(&v49->_countAndFlagsBits + v54[8]) = v60;
  v70 = v54[6];
  v71 = type metadata accessor for Date();
  sub_1000051C0(v49 + v70, 1, 1, v71);
  v72 = v131;
  URLRequest.url.getter();
  v73 = v134;
  if (sub_100008D0C(v72, 1, v134) == 1)
  {
    v74 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse();
    sub_10000374C(v74);
    (*(v75 + 8))(v132);
    v76 = type metadata accessor for URLRequest();
    sub_10000374C(v76);
    (*(v77 + 8))(v51);
    result = sub_10000B298(v72, &qword_100218230, &unk_100199A00);
  }

  else
  {
    (*(v68 + 32))(v69, v72, v73);
    v79 = objc_opt_self();
    URL._bridgeToObjectiveC()(v80);
    v82 = v81;
    v83 = [v79 parsec_componentsWithURL:v81 resolvingAgainstBaseURL:0];

    if (v83)
    {
      v84 = v120;
      static URLComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v85 = v121;
      v86 = v122;
      v87 = v84;
      v88 = v123;
      (*(v121 + 32))(v122, v87, v123);
      if (URLComponents.queryItems.getter())
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v85;
        sub_10000ABE8();
        v91 = v90;
        v93 = v92;

        v94 = (&v49->_countAndFlagsBits + v54[11]);
        *v94 = v91;
        v94[1] = v93;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000ABE8();
        v96 = v95;
        v98 = v97;

        v99 = (&v49->_countAndFlagsBits + v54[12]);
        *v99 = v96;
        v99[1] = v98;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000F190C();
        v101 = v100;
        v103 = v102;

        v104 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse();
        sub_10000374C(v104);
        (*(v105 + 8))(v132);
        v106 = type metadata accessor for URLRequest();
        sub_10000374C(v106);
        (*(v107 + 8))(v51);
        (*(v89 + 8))(v122, v123);
        result = (*(v68 + 8))(v135, v73);
        v108 = (&v49->_countAndFlagsBits + v54[13]);
        *v108 = v101;
        v108[1] = v103;
        return result;
      }

      v113 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse();
      sub_10000374C(v113);
      (*(v114 + 8))(v132);
      v115 = type metadata accessor for URLRequest();
      sub_10000374C(v115);
      (*(v116 + 8))(v51);
      (*(v85 + 8))(v86, v88);
    }

    else
    {
      v109 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse();
      sub_10000374C(v109);
      (*(v110 + 8))(v132);
      v111 = type metadata accessor for URLRequest();
      sub_10000374C(v111);
      (*(v112 + 8))(v51);
    }

    result = (*(v68 + 8))(v69, v73);
  }

  v117 = (&v49->_countAndFlagsBits + v54[11]);
  *v117 = 0;
  v117[1] = 0;
  v118 = (&v49->_countAndFlagsBits + v54[12]);
  *v118 = 0;
  v118[1] = 0;
  v119 = (&v49->_countAndFlagsBits + v54[13]);
  *v119 = 0;
  v119[1] = 0;
  return result;
}

uint64_t sub_10010A5A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6954657269707865 && a2 == 0xEA0000000000656DLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1684632949 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C6163536975 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6974656C706D6F63 && a2 == 0xEF65726F63536E6FLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1635017060 && a2 == 0xE400000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6570797471 && a2 == 0xE500000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x5F74736567677573 && a2 == 0xEF73656972657571;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6D6F436C61636F6CLL && a2 == 0xEF6E6F6974656C70)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10010A8D0(char a1)
{
  result = 0x7475706E69;
  switch(a1)
  {
    case 1:
      result = 0x7972657571;
      break;
    case 2:
      result = 0x6954657269707865;
      break;
    case 3:
      result = 1684632949;
      break;
    case 4:
      result = 0x656C6163536975;
      break;
    case 5:
      result = 0x6974656C706D6F63;
      break;
    case 6:
      result = 1635017060;
      break;
    case 7:
      result = 0x6570797471;
      break;
    case 8:
      result = 0x5F74736567677573;
      break;
    case 9:
      result = 0x6D6F436C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10010A9E8(void *a1)
{
  v3 = v1;
  v5 = sub_100046184(&qword_10021B1F0, &qword_10019FE70);
  sub_100003650(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003760();
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_10010B79C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v24) = 0;
  sub_100006F18();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    sub_100008594(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = type metadata accessor for CachedResultSet.Result(0);
    v19 = v18[6];
    LOBYTE(v24) = 2;
    type metadata accessor for Date();
    sub_10010B88C(&qword_100215EF8);
    sub_100006F18();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000668C(v18[7]);
    sub_100008594(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + v18[8]);
    v26 = 4;
    sub_10010B8D0();
    sub_100006F18();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = *(v3 + v18[9]);
    LOBYTE(v24) = 5;
    sub_100006F18();
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = sub_10000668C(v18[10]);
    v25 = v21;
    v26 = 6;
    sub_100014924(v24, v21);
    sub_100069E5C();
    sub_100006F18();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100014A40(v24, v25);
    sub_10000668C(v18[11]);
    sub_100008594(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10000668C(v18[12]);
    sub_100008594(8);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10000668C(v18[13]);
    sub_100008594(9);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_10010ACB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100046184(&qword_100217050, &qword_100199180);
  sub_100005490(v5);
  v7 = *(v6 + 64);
  sub_100003760();
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v44 = sub_100046184(&qword_10021B1C8, &qword_10019FE68);
  sub_100003650(v44);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_100003760();
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v46 = type metadata accessor for CachedResultSet.Result(0);
  v18 = *(*(v46 - 1) + 64);
  __chkstk_darwin(v46);
  sub_100003664();
  v45 = (v20 - v19);
  v21 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_10010B79C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007378(a1);
  }

  v43 = a2;
  LOBYTE(v47) = 0;
  sub_10000F614();
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v45;
  *v45 = v22;
  v23[1] = v24;
  sub_100004438(1);
  v23[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23[3] = v25;
  type metadata accessor for Date();
  LOBYTE(v47) = 2;
  sub_10010B88C(&qword_10021B1D8);
  sub_10000F614();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v46;
  sub_100082D80(v10, v23 + v46[6]);
  sub_100004438(3);
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = (v23 + v26[7]);
  *v28 = v27;
  v28[1] = v29;
  v48 = 4;
  sub_10010B7F0();
  sub_10000F614();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v23 + v26[8]) = v47;
  sub_100004438(5);
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v23 + v26[9]) = v30;
  v48 = 6;
  sub_10010B838();
  sub_10000F614();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v23 + v46[10]) = v47;
  sub_100004438(7);
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = (v23 + v46[11]);
  *v32 = v31;
  v32[1] = v33;
  sub_100004438(8);
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = (v23 + v46[12]);
  *v35 = v34;
  v35[1] = v36;
  sub_100004438(9);
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v39 = v38;
  (*(v12 + 8))(v17, v44);
  v40 = v45;
  v41 = (v45 + v46[13]);
  *v41 = v37;
  v41[1] = v39;
  sub_10007DBFC(v40, v43);
  sub_100007378(a1);
  return sub_10007DC60(v40);
}

uint64_t sub_10010B27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010A5A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10010B2A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10010A8C8();
  *a1 = result;
  return result;
}

uint64_t sub_10010B2CC(uint64_t a1)
{
  v2 = sub_10010B79C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010B308(uint64_t a1)
{
  v2 = sub_10010B79C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10010B374(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result;
  v3 = a2 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result;
  v4 = *(a1 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result) == *(a2 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result) && *(a1 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 8) == *(a2 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 24);
  v6 = *(v3 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(v2 + 16) == *(v3 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = type metadata accessor for CachedResultSet.Result(0);
  if (*(v2 + *(v8 + 32)) != *(v3 + *(v8 + 32)))
  {
    return 0;
  }

  v9 = v8;
  v10 = *(v8 + 44);
  sub_10000DED0();
  if (v13)
  {
    if (!v11)
    {
      return 0;
    }

    sub_100008A90(v12);
    v16 = v4 && v14 == v15;
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = *(v9 + 48);
  sub_10000DED0();
  if (!v20)
  {
    if (!v18)
    {
      goto LABEL_32;
    }

    return 0;
  }

  if (!v18)
  {
    return 0;
  }

  sub_100008A90(v19);
  v23 = v4 && v21 == v22;
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v24 = *(v9 + 52);
  sub_10000DED0();
  result = (v27 | v25) == 0;
  if (v27 && v25)
  {
    sub_100008A90(v26);
    if (v4 && v29 == v30)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_10010B4D8()
{
  v1 = v0[2];

  sub_10007DC60(v0 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v2, v3);
}

uint64_t sub_10010B56C()
{
  result = type metadata accessor for CachedResultSet.Result(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10010B650()
{
  sub_10010B728();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1000504A0();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_10010B728()
{
  if (!qword_100215DA8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100215DA8);
    }
  }
}

unint64_t sub_10010B79C()
{
  result = qword_10021B1D0;
  if (!qword_10021B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B1D0);
  }

  return result;
}

unint64_t sub_10010B7F0()
{
  result = qword_10021B1E0;
  if (!qword_10021B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B1E0);
  }

  return result;
}

unint64_t sub_10010B838()
{
  result = qword_10021B1E8;
  if (!qword_10021B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B1E8);
  }

  return result;
}

uint64_t sub_10010B88C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10010B8D0()
{
  result = qword_10021B1F8;
  if (!qword_10021B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B1F8);
  }

  return result;
}

_BYTE *sub_10010B918@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for CachedResultSet.Result.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CachedResultSet.Result.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10010BB08()
{
  result = qword_10021B200;
  if (!qword_10021B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B200);
  }

  return result;
}

unint64_t sub_10010BB60()
{
  result = qword_10021B208;
  if (!qword_10021B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B208);
  }

  return result;
}

unint64_t sub_10010BBB8()
{
  result = qword_10021B210;
  if (!qword_10021B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B210);
  }

  return result;
}

void sub_10010BC0C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 integerForKey:@"PARSessionSoftLimitOverride"];
  if ((v3 - 1) > 0x382)
  {
    *a2 = 0x4082C00000000000;
    if (qword_1002140A8 != -1)
    {
      sub_10000372C();
    }

    v5 = type metadata accessor for Logger();
    sub_10000964C(v5, qword_100232A68);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = 600;
      sub_100003B44(&_mh_execute_header, v9, v10, "Soft limit override must be between 0 and %lld, defaulting to that value");
    }

    v4 = 600.0;
  }

  else
  {
    v4 = v3;
    *a2 = v3;
  }

  v11 = [a1 integerForKey:@"PARSessionIdleTimeOverride"];
  if (v11 < 1)
  {
    *(a2 + 8) = 0x4066800000000000;
    if (qword_1002140A8 != -1)
    {
      sub_10000372C();
    }

    v12 = type metadata accessor for Logger();
    sub_10000964C(v12, qword_100232A68);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = 180;
      sub_100003B44(&_mh_execute_header, v16, v17, "Idle limit override value must be between 0 and %lld, defaulting to that value.");
    }
  }

  else
  {
    *(a2 + 8) = v11;
  }

  if (qword_1002141D8 != -1)
  {
    swift_once();
  }

  *(a2 + 16) = *&qword_10021B218 - v4;
  v18 = a2 + *(type metadata accessor for ClientSessionTimekeeper() + 28);
  static Date.distantFuture.getter();
  sub_10010BE98();
}

void sub_10010BE98()
{
  v1 = type metadata accessor for ClientSessionTimekeeper();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = (&v18 - v7);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  if (qword_1002140A8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000964C(v11, qword_100232A68);
  sub_10010C094(v0, v10);
  sub_10010C094(v0, v8);
  sub_10010C094(v0, v5);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218496;
    v15 = *(v10 + 1);
    sub_10010C0F8(v10);
    *(v14 + 4) = v15;
    *(v14 + 12) = 2048;
    v16 = *v8;
    sub_10010C0F8(v8);
    *(v14 + 14) = v16;
    *(v14 + 22) = 2048;
    v17 = *(v5 + 2);
    sub_10010C0F8(v5);
    *(v14 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "Idle Time %f Soft Limit Time %f Max Time %f.", v14, 0x20u);
  }

  else
  {

    sub_10010C0F8(v5);
    sub_10010C0F8(v8);
    sub_10010C0F8(v10);
  }
}

uint64_t sub_10010C094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientSessionTimekeeper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010C0F8(uint64_t a1)
{
  v2 = type metadata accessor for ClientSessionTimekeeper();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010C17C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10010C218(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_100004450();
  return sub_100003B64(v2);
}

uint64_t sub_10010C238(int a1)
{
  *(v1 + 16) = a1;
  v2 = sub_100004450();
  return sub_100003B64(v2);
}

uint64_t sub_10010C258(uint64_t a1)
{
  sub_1000037B0();
  v4 = *(v3 + 88);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, a1, v5);
  sub_100004450();
  sub_1000037B0();
  *(v1 + *(v7 + 96)) = v8;
  *v8 = 0;
  (*(v6 + 8))(a1, v5);
  return v1;
}

void *sub_10010C33C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_100004450();
  v2[4] = v3;
  *v3 = 0;
  return v2;
}

uint64_t sub_10010C37C(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1000037B0();
  sub_10010CF40(v6, v2 + *(v5 + 88), a2);
  sub_100004450();
  sub_1000037B0();
  *(v2 + *(v7 + 96)) = v8;
  *v8 = 0;
  sub_10001C2F8(a1, a2);
  return v2;
}

uint64_t sub_10010C3F0()
{
  v1 = *(v0 + 40);

  v2 = sub_100086500();

  return v2;
}

uint64_t sub_10010C42C()
{
  v1 = *(v0 + 40);

  sub_100087E8C();

  return sub_10010E278();
}

void *sub_10010C488(void *a1)
{
  v2 = v1;
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  sub_100046184(&qword_10021B3C8, &qword_1001A0088);
  swift_allocObject();
  v1[5] = sub_10003F814(0);
  v1[6] = 0;
  v1[4] = a1;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10010CF38;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D50C;
  aBlock[3] = &unk_1001FE278;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  aBlock[0] = 0;
  v8 = [v4 initWithDispatchQueue:v7 didUpdate:v6 error:aBlock];
  _Block_release(v6);
  v9 = aBlock[0];
  if (v8)
  {
    v10 = v2[6];
    v2[6] = v8;
    v11 = v9;
    swift_unknownObjectRelease();
    sub_10010C934();
  }

  else
  {
    v12 = aBlock[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100214118 != -1)
    {
      sub_1000060FC();
    }

    v13 = type metadata accessor for Logger();
    sub_10000964C(v13, qword_100232B68);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      swift_errorRetain();
      sub_100046184(&qword_100216900, &unk_10019AE20);
      v18 = String.init<A>(describing:)();
      v20 = sub_100009684(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to create privacy proxy %s", v16, 0xCu);
      sub_100007378(v17);
      sub_1000036D4();
      sub_1000036D4();
    }

    else
    {
    }

    return 0;
  }

  return v2;
}

uint64_t sub_10010C7DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10010C934();
  }

  return result;
}

uint64_t sub_10010C834@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1002140D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000964C(v2, qword_100232AE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    sub_100006768(&_mh_execute_header, v5, v6, "effective tier");
    sub_1000036D4();
  }

  *a1 = sub_10010C3F0();
  type metadata accessor for ContextUpdate(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_10010C934()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = qword_100214118;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      sub_1000060FC();
    }

    v3 = type metadata accessor for Logger();
    sub_10000964C(v3, qword_100232B68);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      sub_100006768(&_mh_execute_header, v6, v7, "Updating effective tier");
      sub_1000036D4();
    }

    v8 = swift_allocObject();
    swift_weakInit();
    v10[4] = sub_10010CF30;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10010CE28;
    v10[3] = &unk_1001FE250;
    v9 = _Block_copy(v10);

    [v1 getEffectiveTierWithCompletion:v9];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10010CABC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_100214118 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000964C(v5, qword_100232B68);
      swift_errorRetain();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v21 = v9;
        *v8 = 136315138;
        swift_errorRetain();
        sub_100046184(&qword_100216900, &unk_10019AE20);
        v10 = String.init<A>(describing:)();
        v12 = sub_100009684(v10, v11, &v21);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Failed to get privacy proxy tier: %s", v8, 0xCu);
        sub_100007378(v9);
      }

      else
      {
      }

      a1 = 0;
    }

    else
    {
      if (qword_100214118 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000964C(v13, qword_100232B68);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v14, v15, "Updated effective tier is %lu", v16, 0xCu);
      }
    }

    if (sub_10010C3F0() != a1)
    {
      if (qword_100214118 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000964C(v17, qword_100232B68);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Notifying about tier change", v20, 2u);
      }

      sub_10010C42C();
    }
  }

  return result;
}