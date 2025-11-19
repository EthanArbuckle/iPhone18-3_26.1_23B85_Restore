uint64_t sub_100056634(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100026F94(&qword_10016B560, &qword_1001311D0);
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

uint64_t sub_10005686C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for ForwardDeletionRules();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100026F94(&qword_10016B580, &qword_1001311D8);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100057958(&qword_10016B570, 255, &type metadata accessor for ForwardDeletionRules);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100056B8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100026F94(&qword_10016B590, &qword_1001325A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v20 = v18;
      String.hash(into:)();
      v21 = Hasher._finalize()();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

uint64_t sub_100056DE0(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_10009E700(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10009F7BC(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_10009E700(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1000A27B4();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x800000010013AA00;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v24;
  if (v40 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;

      v27 = sub_10009E700(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_10009F7BC(v31, 1);
        v32 = *a3;
        v27 = sub_10009E700(v7, v6);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v7;
      v35[1] = v6;
      *(v34[7] + 8 * v27) = v8;
      v36 = v34[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v37;
      v5 += 3;
      if (v40 == v25)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_100057174(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v6 = v5[5];
  type metadata accessor for StorageCategory();
  sub_100057958(&qword_10016B588, 255, &type metadata accessor for StorageCategory);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v18 == v16 && v19 == v17)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v8 = v5[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = *v9 == *v11 && v10 == v12;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v12)
  {
    goto LABEL_20;
  }

  if (*(a1 + v5[7]) == *(a2 + v5[7]))
  {
    v14 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
    return v14 & 1;
  }

LABEL_20:
  v14 = 0;
  return v14 & 1;
}

uint64_t sub_100057328(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = type metadata accessor for OSSignpostError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A3C0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016B378);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v5 + 88))(v8, v4) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v20, v19, a1, v17, v18, 2u);

LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100057604()
{
  v1 = (type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = *(v7 + 8);

  v9 = v1[7];
  v10 = type metadata accessor for StorageCategory();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v7 + v1[8] + 8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100057720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057784(uint64_t a1)
{
  v4 = *(type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100042680;

  return sub_100053764(a1, v6, v7, v8, v1 + v5, v9);
}

void sub_1000578F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_100052A9C(a1, a2);
}

unint64_t sub_10005790C()
{
  result = qword_10016B568;
  if (!qword_10016B568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016B568);
  }

  return result;
}

uint64_t sub_100057958(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000579A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000579C4()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSLogger();
  sub_10002FDA4(v5, qword_10016B5B0);
  sub_10002FD14(v5, qword_10016B5B0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v6 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v4, v6, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_100057B1C()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016B5C8);
  sub_10002FD14(v0, qword_10016B5C8);
  if (qword_10016A520 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100057C30()
{
  v0 = type metadata accessor for Table();
  sub_10002FDA4(v0, qword_100173420);
  sub_10002FD14(v0, qword_100173420);
  return Table.init(_:database:)();
}

uint64_t sub_100057CC8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Table();
  sub_10002FDA4(v3, a2);
  sub_10002FD14(v3, a2);
  return Table.init(_:database:)();
}

uint64_t sub_100057D30()
{
  v0 = type metadata accessor for Table();
  sub_10002FDA4(v0, qword_100173450);
  sub_10002FD14(v0, qword_100173450);
  return Table.init(_:database:)();
}

uint64_t sub_100057D9C()
{
  v0 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FDA4(v0, qword_100173468);
  sub_10002FD14(v0, qword_100173468);
  sub_10002B95C(&qword_10016ADE0, &qword_10016ADB0, &unk_100130CD0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100057E48()
{
  v0 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FDA4(v0, qword_100173480);
  sub_10002FD14(v0, qword_100173480);
  sub_10002B95C(&qword_10016ADE0, &qword_10016ADB0, &unk_100130CD0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100057EF8()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_100173498);
  sub_10002FD14(v0, qword_100173498);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100057FB0()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_1001734B0);
  sub_10002FD14(v0, qword_1001734B0);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100058064()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_1001734C8);
  sub_10002FD14(v0, qword_1001734C8);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100058114()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_1001734E0);
  sub_10002FD14(v0, qword_1001734E0);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000581C4()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_1001734F8);
  sub_10002FD14(v0, qword_1001734F8);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10005826C()
{
  v0 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FDA4(v0, qword_100173510);
  sub_10002FD14(v0, qword_100173510);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0);
  return ExpressionType.init(_:)();
}

uint64_t sub_10005831C()
{
  v0 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FDA4(v0, qword_100173528);
  sub_10002FD14(v0, qword_100173528);
  sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000583DC()
{
  v0 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FDA4(v0, qword_100173540);
  sub_10002FD14(v0, qword_100173540);
  sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350);
  return ExpressionType.init(_:)();
}

uint64_t sub_10005849C()
{
  v0 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FDA4(v0, qword_100173558);
  sub_10002FD14(v0, qword_100173558);
  sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350);
  return ExpressionType.init(_:)();
}

uint64_t sub_10005855C()
{
  v0 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FDA4(v0, qword_100173570);
  sub_10002FD14(v0, qword_100173570);
  sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350);
  return ExpressionType.init(_:)();
}

uint64_t sub_10005861C()
{
  v0 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FDA4(v0, qword_100173588);
  sub_10002FD14(v0, qword_100173588);
  sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000586DC()
{
  v0 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FDA4(v0, qword_1001735A0);
  sub_10002FD14(v0, qword_1001735A0);
  sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350);
  return ExpressionType.init(_:)();
}

uint64_t sub_10005879C()
{
  v0 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  sub_10002FDA4(v0, qword_1001735B8);
  sub_10002FD14(v0, qword_1001735B8);
  sub_10002B95C(&qword_10016B6F0, &qword_10016B6E8, &qword_100131368);
  return ExpressionType.init(_:)();
}

uint64_t sub_100058848()
{
  v0 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  sub_10002FDA4(v0, qword_1001735D0);
  sub_10002FD14(v0, qword_1001735D0);
  sub_10002B95C(&qword_10016B6F0, &qword_10016B6E8, &qword_100131368);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000588F8()
{
  v0 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  sub_10002FDA4(v0, qword_1001735E8);
  sub_10002FD14(v0, qword_1001735E8);
  sub_10002B95C(&qword_10016B6F0, &qword_10016B6E8, &qword_100131368);
  return ExpressionType.init(_:)();
}

uint64_t sub_1000589B8()
{
  v0 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FDA4(v0, qword_100173600);
  sub_10002FD14(v0, qword_100173600);
  sub_10002B95C(&qword_10016ADE0, &qword_10016ADB0, &unk_100130CD0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100058A70(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 216) = v3;
  *(v4 + 208) = a3;
  *(v4 + 192) = a1;
  *(v4 + 200) = a2;
  v5 = *(*(sub_100026F94(&qword_10016ADF8, &unk_1001312B0) - 8) + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v4 + 232) = v6;
  v7 = *(v6 - 8);
  *(v4 + 240) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v9 = type metadata accessor for Insert();
  *(v4 + 256) = v9;
  v10 = *(v9 - 8);
  *(v4 + 264) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  v12 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  v13 = type metadata accessor for OSSignpostID();
  *(v4 + 288) = v13;
  v14 = *(v13 - 8);
  *(v4 + 296) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_100058C60, v3, 0);
}

uint64_t sub_100058C60()
{
  v24 = v0;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = v0[25];
  v3 = type metadata accessor for OSSignposter();
  sub_10002FD14(v3, qword_10016B5C8);

  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = v0[39];
    v8 = v0[24];
    v7 = v0[25];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v23);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v11, "scheduleForwardDeletion", "bundleId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v0[39];
  v13 = v0[36];
  v14 = v0[37];
  (*(v14 + 16))(v0[38], v12, v13);
  v15 = type metadata accessor for OSSignpostIntervalState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[40] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  v18 = swift_task_alloc();
  v0[41] = v18;
  *v18 = v0;
  v18[1] = sub_100058EB0;
  v19 = v0[27];
  v21 = v0[24];
  v20 = v0[25];

  return sub_100059F38(v21, v20);
}

uint64_t sub_100058EB0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(v4 + 336) = v1;

  v7 = *(v4 + 216);
  if (v1)
  {
    v8 = sub_100059E6C;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v8 = sub_100058FF0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100058FF0()
{
  if (*(v0 + 420) == 1)
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 280);
    v2 = *(v0 + 216);
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = type metadata accessor for OSLogger();
    *(v0 + 344) = v5;
    *(v0 + 352) = sub_10002FD14(v5, qword_10016B5B0);
    *(v0 + 360) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v6 = *(type metadata accessor for LogMessage() - 8);
    *(v0 + 368) = *(v6 + 72);
    *(v0 + 416) = *(v6 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v7._object = 0x800000010013AC20;
    v7._countAndFlagsBits = 0xD000000000000026;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    *(v0 + 80) = &type metadata for String;
    *(v0 + 56) = v4;
    *(v0 + 64) = v3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 56, &qword_10016AB10, &unk_100130B10);
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v9 = sub_100026F50((v2 + 112), *(v2 + 136));
    v10 = *v9;
    *(v0 + 376) = *v9;

    return _swift_task_switch(sub_1000592E0, v10, 0);
  }

  else
  {
    v11 = *(v0 + 320);
    sub_100070154("scheduleForwardDeletion", 23, 2);

    v13 = *(v0 + 304);
    v12 = *(v0 + 312);
    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v16 = *(v0 + 248);
    v17 = *(v0 + 224);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000592E0()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  *v3 = v0;
  v3[1] = sub_1000593DC;
  v4 = *(v0 + 376);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000593DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  *(v4 + 392) = a1;
  *(v4 + 400) = v1;

  v7 = *(v3 + 376);
  if (v1)
  {
    v8 = sub_100059D30;
  }

  else
  {
    v8 = sub_100059510;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100059510()
{
  v1 = *(v0 + 376);
  v2 = *(v1 + 216);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 216) = v4;
    if (qword_10016A3E8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = *(v0 + 392);
  v5 = *(v0 + 400);
  v7 = type metadata accessor for Table();
  sub_10002FD14(v7, qword_1001733F0);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v5)
  {
    v8 = *(v0 + 392);

    v32 = *(v1 + 216);
    v3 = __OFSUB__(v32, 1);
    v33 = v32 - 1;
    if (!v3)
    {
      v34 = *(v0 + 200);
      *(v1 + 216) = v33;

      *(v0 + 408) = v5;
      v45 = *(v0 + 216);
      v44 = sub_100059DA0;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
  v9 = *(type metadata accessor for Setter() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_100130BB0;
  if (qword_10016A428 != -1)
  {
LABEL_21:
    swift_once();
  }

  v12 = *(v0 + 192);
  v13 = *(v0 + 200);
  v14 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v15 = sub_10002FD14(v14, qword_1001734B0);
  *(v0 + 152) = v12;
  *(v0 + 160) = v13;
  v53 = v15;
  <- infix<A>(_:_:)();
  if (qword_10016A418 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 240);
  v17 = *(v0 + 248);
  v18 = *(v0 + 232);
  v19 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FD14(v19, qword_100173480);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v21 = v20;
  (*(v16 + 8))(v17, v18);
  *(v0 + 168) = v21;
  <- infix<A>(_:_:)();
  if (qword_10016A410 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 392);
  v22 = *(v0 + 272);
  v23 = *(v0 + 224);
  v24 = *(v0 + 208);
  sub_10002FD14(v19, qword_100173468);
  *(v0 + 176) = v24;
  <- infix<A>(_:_:)();
  sub_100026F94(&qword_10016B6A0, &unk_100131300);
  v25 = *(type metadata accessor for OnConflictClause() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  *(v0 + 40) = v14;
  *(v0 + 48) = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
  v28 = sub_100042BAC((v0 + 16));
  (*(*(v14 - 8) + 16))(v28, v53, v14);
  *(v0 + 184) = v24;
  static Expression<A>.< infix<A>(_:_:)();
  v29 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  (*(*(v29 - 8) + 56))(v23, 0, 1, v29);
  OnConflictClause.init(_:_:where:)();
  sub_10006F960(&qword_10016AD20);
  QueryType.upsert(_:onConflict:)();

  v30 = Connection.run(_:)();
  v31 = *(v0 + 392);
  v35 = v30;
  v36 = *(v0 + 416);
  v38 = *(v0 + 360);
  v37 = *(v0 + 368);
  v55 = *(v0 + 344);
  v56 = *(v0 + 352);
  v39 = *(v0 + 280);
  v40 = *(v0 + 200);
  v54 = *(v0 + 192);
  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v41._object = 0x800000010013AC50;
  v41._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v41);
  *(v0 + 112) = &type metadata for String;
  *(v0 + 88) = v54;
  *(v0 + 96) = v40;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 88, &qword_10016AB10, &unk_100130B10);
  v42._countAndFlagsBits = 0x746C75736572202CLL;
  v42._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v42);
  *(v0 + 144) = &type metadata for Int64;
  *(v0 + 120) = v35;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 120, &qword_10016AB10, &unk_100130B10);
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v43);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v47 = *(v1 + 216);
  v3 = __OFSUB__(v47, 1);
  v48 = v47 - 1;
  if (v3)
  {
    __break(1u);
    return _swift_task_switch(v44, v45, v46);
  }

  v49 = *(v0 + 216);
  v50 = *(v0 + 200);
  *(v1 + 216) = v48;

  v44 = sub_100059C64;
  v45 = v49;
LABEL_13:
  v46 = 0;

  return _swift_task_switch(v44, v45, v46);
}

uint64_t sub_100059C64()
{
  v1 = v0[40];
  sub_100070154("scheduleForwardDeletion", 23, 2);

  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[31];
  v7 = v0[28];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100059D30()
{
  v1 = v0[25];

  v0[51] = v0[50];
  v2 = v0[27];

  return _swift_task_switch(sub_100059DA0, v2, 0);
}

uint64_t sub_100059DA0()
{
  v1 = v0[40];
  sub_100070154("scheduleForwardDeletion", 23, 2);

  v2 = v0[51];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[31];
  v8 = v0[28];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100059E6C()
{
  v1 = v0[40];
  sub_100070154("scheduleForwardDeletion", 23, 2);

  v2 = v0[42];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[31];
  v8 = v0[28];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100059F38(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_100026F94(&qword_10016AD10, &qword_100132950);
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v10 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10005A0E4, v2, 0);
}

uint64_t sub_10005A0E4()
{
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v8, qword_1001734B0);
  v0[2] = v7;
  v0[3] = v6;
  static Expression<A>.== infix<A>(_:_:)();
  v9 = sub_100026F50((v5 + 112), *(v5 + 136));
  (*(v4 + 16))(v1, v2, v3);
  v10 = *v9;
  v0[18] = *v9;

  return _swift_task_switch(sub_10005A21C, v10, 0);
}

uint64_t sub_10005A21C()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_10005A318;
  v4 = *(v0 + 144);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10005A318(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v7 = *(v3 + 144);
  if (v1)
  {
    v8 = sub_10005A7C8;
  }

  else
  {
    v8 = sub_10005A44C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10005A44C()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 216);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 216) = v4;
    if (qword_10016A3F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v5 = *(v0 + 160);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = sub_10002FD14(v8, qword_100173408);
  (*(v7 + 16))(v6, v9, v8);
  sub_10006F960(&qword_10016AD20);
  v10._countAndFlagsBits = QueryType.name.getter();
  LOBYTE(v6) = Connection.tableExists(_:)(v10);

  if (v6)
  {
    v11 = *(v0 + 160);
    v43 = *(v0 + 168);
    v12 = *(v0 + 128);
    v13 = v1;
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    v18 = *(v0 + 72);
    QueryType.where(_:)();
    QueryType.exists.getter();
    v19 = *(v17 + 8);
    v20 = v15;
    v1 = v13;
    v19(v20, v16);
    Connection.scalar<A>(_:)();
    v21 = *(v0 + 160);
    v22 = *(v0 + 104);
    v23 = *(v0 + 80);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v19(v22, v23);

    if (v43)
    {
      v27 = *(v1 + 216);
      v3 = __OFSUB__(v27, 1);
      v28 = v27 - 1;
      if (!v3)
      {
        *(v1 + 216) = v28;
        *(v0 + 192) = v43;
        v30 = *(v0 + 120);
        v29 = *(v0 + 128);
        v31 = *(v0 + 112);
        v32 = *(v0 + 48);
        v33 = *(v30 + 8);
        *(v0 + 200) = v33;
        *(v0 + 208) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v33(v29, v31);
        v34 = sub_10005A858;
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      return _swift_task_switch(v24, v25, v26);
    }
  }

  else
  {
    v35 = *(v0 + 160);
    (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));

    *(v0 + 216) = 0;
  }

  v36 = *(v1 + 216);
  v3 = __OFSUB__(v36, 1);
  v37 = v36 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v39 = *(v0 + 120);
  v38 = *(v0 + 128);
  v40 = *(v0 + 112);
  v32 = *(v0 + 48);
  *(v1 + 216) = v37;
  *(v0 + 217) = *(v0 + 216);
  v41 = *(v39 + 8);
  *(v0 + 176) = v41;
  *(v0 + 184) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v38, v40);
  v34 = sub_10005A714;
LABEL_10:
  v24 = v34;
  v25 = v32;
  v26 = 0;

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_10005A714()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  (*(v0 + 176))(*(v0 + 136), *(v0 + 112));

  v6 = *(v0 + 8);
  v7 = *(v0 + 217);

  return v6(v7);
}

uint64_t sub_10005A7C8()
{
  v0[24] = v0[21];
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[6];
  v5 = *(v2 + 8);
  v0[25] = v5;
  v0[26] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);

  return _swift_task_switch(sub_10005A858, v4, 0);
}

uint64_t sub_10005A858()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  (*(v0 + 200))(*(v0 + 136), *(v0 + 112));

  v6 = *(v0 + 8);
  v7 = *(v0 + 192);

  return v6(0);
}

uint64_t sub_10005A90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[10] = *v3;
  v5 = type metadata accessor for ForwardDeletionRules();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  v4[15] = v9;
  v10 = *(v9 - 8);
  v4[16] = v10;
  v11 = *(v10 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10005AA8C, v3, 0);
}

uint64_t sub_10005AA8C()
{
  v36 = v0;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[7];
  v3 = type metadata accessor for OSSignposter();
  sub_10002FD14(v3, qword_10016B5C8);

  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = v0[18];
    v8 = v0[6];
    v7 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v35);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v11, "updateForwardDeletionSchedule", "bundleId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  (*(v14 + 16))(v0[17], v12, v13);
  v15 = type metadata accessor for OSSignpostIntervalState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[19] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  if (qword_10016A3D8 != -1)
  {
    swift_once();
  }

  v18 = v0[14];
  v19 = v0[12];
  v33 = v0[11];
  v34 = v0[13];
  v20 = v0[9];
  v32 = v0[8];
  v21 = v0[6];
  v22 = v0[7];
  v23 = type metadata accessor for OSLogger();
  sub_10002FD14(v23, qword_10016B5B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v24 = *(type metadata accessor for LogMessage() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._object = 0x800000010013AE80;
  v27._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  v0[5] = &type metadata for String;
  v0[2] = v21;
  v0[3] = v22;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 2), &qword_10016AB10, &unk_100130B10);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v28);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v29 = sub_100026F50((v20 + 112), *(v20 + 136));
  (*(v19 + 16))(v34, v32, v33);
  v30 = *v29;
  v0[20] = *v29;

  return _swift_task_switch(sub_10005AE6C, v30, 0);
}

uint64_t sub_10005AE6C()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_10005AF68;
  v4 = *(v0 + 160);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10005AF68(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v7 = *(v3 + 160);
  if (v1)
  {
    v8 = sub_10005B1A8;
  }

  else
  {
    v8 = sub_10005B09C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10005B09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[20];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[22];
  v9 = v3[23];
  v10 = v3[13];
  v11 = v3[10];
  *(v4 + 216) = v7;
  sub_10005B39C(v8, v10);
  v12 = v3[22];

  v13 = *(v4 + 216);
  v6 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  v15 = v6;
  if (v9)
  {
    if ((v15 & 1) == 0)
    {
      *(v4 + 216) = v14;
      v3[24] = v9;
      v16 = v3[9];
      (*(v3[12] + 8))(v3[13], v3[11]);
      v17 = sub_10005B2E4;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v15)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v19 = v3[12];
  v18 = v3[13];
  v20 = v3[11];
  v16 = v3[9];
  *(v4 + 216) = v14;
  (*(v19 + 8))(v18, v20);
  v17 = sub_10005B22C;
LABEL_10:
  a1 = v17;
  a2 = v16;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10005B1A8()
{
  v0[24] = v0[23];
  v1 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  return _swift_task_switch(sub_10005B2E4, v1, 0);
}

uint64_t sub_10005B22C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  sub_100070154("updateForwardDeletionSchedule", 29, 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10005B2E4()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  sub_100070154("updateForwardDeletionSchedule", 29, 2);

  v6 = v0[1];
  v7 = v0[24];

  return v6();
}

uint64_t sub_10005B39C(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Setter();
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v50 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v45 = *(v47 - 8);
  v6 = *(v45 + 64);
  v7 = __chkstk_darwin(v47);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v38 - v10;
  __chkstk_darwin(v9);
  v41 = &v38 - v12;
  v13 = type metadata accessor for Table();
  v46 = *(v13 - 8);
  v14 = *(v46 + 64);
  __chkstk_darwin(v13);
  v44 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Update();
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = *(v48 + 64);
  __chkstk_darwin(v16);
  v43 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A3E8 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v13, qword_1001733F0);
  sub_10006F960(&qword_10016AD20);
  v19._countAndFlagsBits = QueryType.name.getter();
  v20 = Connection.tableExists(_:)(v19);

  if (!v20)
  {
    if (qword_10016A3D8 == -1)
    {
LABEL_8:
      v21 = type metadata accessor for OSLogger();
      sub_10002FD14(v21, qword_10016B5B0);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v22 = *(type metadata accessor for LogMessage() - 8);
      v23 = *(v22 + 72);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();
    }

LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  if (ForwardDeletionRules.isEmpty.getter())
  {
    if (qword_10016A3D8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  ForwardDeletionRules.retentionInterval.getter();
  v53 = v26;
  if (qword_10016A410 != -1)
  {
    swift_once();
  }

  v39 = v3;
  v40 = a1;
  v27 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  v38 = sub_10002FD14(v27, qword_100173468);
  static Expression<A>.< infix<A>(_:_:)();
  v53 = ForwardDeletionRules.bundleIds.getter();
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  v28 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v28, qword_1001734B0);
  sub_100026F94(&qword_10016AB28, &qword_100131390);
  sub_10002B95C(&qword_10016ADC0, &qword_10016AB28, &qword_100131390);
  v29 = v42;
  Collection<>.contains(_:)();

  v30 = v41;
  static Expression<A>.&& infix(_:_:)();
  v31 = *(v45 + 8);
  v32 = v29;
  v33 = v47;
  v31(v32, v47);
  v31(v11, v33);
  v34 = v44;
  QueryType.where(_:)();
  v31(v30, v33);
  ForwardDeletionRules.retentionInterval.getter();
  v53 = v35;
  v36 = v50;
  <- infix<A>(_:_:)();
  v37 = v43;
  QueryType.update(_:_:)();
  (*(v51 + 8))(v36, v39);
  (*(v46 + 8))(v34, v13);
  Connection.run(_:)();
  return (*(v48 + 8))(v37, v49);
}

uint64_t sub_10005BB70(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = *v2;
  v4 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10005BC94, v2, 0);
}

uint64_t sub_10005BC94()
{
  v32 = v0;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[7];
  v3 = type metadata accessor for OSSignposter();
  sub_10002FD14(v3, qword_10016B5C8);

  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = v0[14];
    v8 = v0[6];
    v7 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v31);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v11, "unscheduleForwardDeletion", "bundleId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[12];
  (*(v14 + 16))(v0[13], v12, v13);
  v15 = type metadata accessor for OSSignpostIntervalState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[15] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  if (qword_10016A3D8 != -1)
  {
    swift_once();
  }

  v18 = v0[10];
  v19 = v0[7];
  v20 = v0[8];
  v21 = v0[6];
  v22 = type metadata accessor for OSLogger();
  sub_10002FD14(v22, qword_10016B5B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v23 = *(type metadata accessor for LogMessage() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._object = 0x800000010013AB40;
  v26._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  v0[5] = &type metadata for String;
  v0[2] = v21;
  v0[3] = v19;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 2), &qword_10016AB10, &unk_100130B10);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v28 = sub_100026F50((v20 + 112), *(v20 + 136));
  v29 = *v28;
  v0[16] = *v28;

  return _swift_task_switch(sub_10005C05C, v29, 0);
}

uint64_t sub_10005C05C()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_10005C158;
  v4 = *(v0 + 128);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10005C158(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v7 = *(v3 + 128);
  if (v1)
  {
    v8 = sub_10005C378;
  }

  else
  {
    v8 = sub_10005C28C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10005C28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[16];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[18];
  v9 = v3[19];
  v10 = v3[9];
  v11 = v3[6];
  v12 = v3[7];
  *(v4 + 216) = v7;
  sub_10005C538(v8, v11, v12);
  v13 = v3[18];

  v14 = *(v4 + 216);
  v6 = __OFSUB__(v14, 1);
  v15 = v14 - 1;
  v16 = v6;
  if (v9)
  {
    if ((v16 & 1) == 0)
    {
      v17 = v3[7];
      *(v4 + 216) = v15;

      v3[20] = v9;
      a2 = v3[8];
      a1 = sub_10005C490;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v16)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v18 = v3[7];
  v19 = v3[8];
  *(v4 + 216) = v15;

  a1 = sub_10005C3E8;
  a2 = v19;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10005C378()
{
  v1 = v0[7];

  v0[20] = v0[19];
  v2 = v0[8];

  return _swift_task_switch(sub_10005C490, v2, 0);
}

uint64_t sub_10005C3E8()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  sub_100070154("unscheduleForwardDeletion", 25, 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10005C490()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  sub_100070154("unscheduleForwardDeletion", 25, 2);

  v5 = v0[1];
  v6 = v0[20];

  return v5();
}

uint64_t sub_10005C538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v44 = a2;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v42[1] = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v43 = *(v45 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v45);
  v9 = v42 - v8;
  v10 = type metadata accessor for Delete();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Table();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v42 - v20;
  if (qword_10016A3E8 != -1)
  {
    swift_once();
  }

  v22 = sub_10002FD14(v14, qword_1001733F0);
  (*(v15 + 16))(v21, v22, v14);
  sub_10006F960(&qword_10016AD20);
  v50 = v21;
  v23._countAndFlagsBits = QueryType.name.getter();
  v49 = a1;
  v24 = Connection.tableExists(_:)(v23);

  if (v24)
  {
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    v25 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    sub_10002FD14(v25, qword_1001734B0);
    v51[0] = v44;
    v51[1] = v46;
    static Expression<A>.== infix<A>(_:_:)();
    v26 = v50;
    QueryType.where(_:)();
    (*(v43 + 8))(v9, v45);
    QueryType.delete()();
    v27 = *(v15 + 8);
    v27(v19, v14);
    v28 = v52;
    v29 = Connection.run(_:)();
    if (v28)
    {
      (*(v47 + 8))(v13, v48);
      return (v27)(v26, v14);
    }

    else
    {
      v35 = v29;
      v52 = 0;
      (*(v47 + 8))(v13, v48);
      if (qword_10016A3D8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for OSLogger();
      sub_10002FD14(v36, qword_10016B5B0);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v37 = *(type metadata accessor for LogMessage() - 8);
      v38 = *(v37 + 72);
      v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v40._countAndFlagsBits = 0x20646574656C6544;
      v40._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      v51[3] = &type metadata for Int;
      v51[0] = v35;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v51, &qword_10016AB10, &unk_100130B10);
      v41._object = 0x800000010013AB90;
      v41._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      return (v27)(v50, v14);
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for OSLogger();
    sub_10002FD14(v31, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v32 = *(type metadata accessor for LogMessage() - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    return (*(v15 + 8))(v50, v14);
  }
}

uint64_t sub_10005CC18()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10005CD0C, v0, 0);
}

uint64_t sub_10005CD0C()
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "expiredForwardDeletionRulesBundleIds", "", v6, 2u);
  }

  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[8];

  (*(v11 + 16))(v8, v9, v10);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[14] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v16 = sub_100026F50((v12 + 112), *(v12 + 136));
  sub_100026EEC(v12 + 152, (v0 + 2));
  v17 = *v16;
  v0[15] = *v16;

  return _swift_task_switch(sub_10005CEE0, v17, 0);
}

uint64_t sub_10005CEE0()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_10005CFDC;
  v4 = *(v0 + 120);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10005CFDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v7 = *(v3 + 120);
  if (v1)
  {
    v8 = sub_10005D208;
  }

  else
  {
    v8 = sub_10005D110;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10005D110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[15];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[17];
  v9 = v3[18];
  v10 = v3[9];
  *(v4 + 216) = v7;
  sub_10005D3B8(v8, v10, v3 + 7);
  v11 = v3[17];

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;
      v3[20] = v9;
      v15 = v3[8];
      sub_100026FDC(v3 + 2);
      v16 = sub_10005D31C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v15 = v3[8];
  *(v4 + 216) = v13;
  v3[19] = v3[7];
  sub_100026FDC(v3 + 2);
  v16 = sub_10005D27C;
LABEL_10:
  a1 = v16;
  a2 = v15;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10005D208()
{
  v0[20] = v0[18];
  v1 = v0[8];
  sub_100026FDC(v0 + 2);

  return _swift_task_switch(sub_10005D31C, v1, 0);
}

uint64_t sub_10005D27C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  sub_100070154("expiredForwardDeletionRulesBundleIds", 36, 2);

  v4 = v0[1];
  v5 = v0[19];

  return v4(v5);
}

uint64_t sub_10005D31C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  sub_100070154("expiredForwardDeletionRulesBundleIds", 36, 2);

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_10005D3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v51 = a2;
  v60 = a3;
  v5 = type metadata accessor for Date();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  __chkstk_darwin(v5);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  __chkstk_darwin(v8);
  v52 = &v48 - v10;
  v56 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v54 = *(v56 - 8);
  v11 = *(v54 + 64);
  __chkstk_darwin(v56);
  v13 = &v48 - v12;
  v14 = type metadata accessor for Table();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v48 - v20;
  if (qword_10016A3E8 != -1)
  {
    swift_once();
  }

  v22 = sub_10002FD14(v14, qword_1001733F0);
  v61 = v15;
  (*(v15 + 16))(v21, v22, v14);
  v23 = sub_10006F960(&qword_10016AD20);
  v62 = v21;
  v24._countAndFlagsBits = QueryType.name.getter();
  v59 = a1;
  v25 = Connection.tableExists(_:)(v24);

  if (v25)
  {
    v50 = v3;
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    v26 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    v27 = sub_10002FD14(v26, qword_1001734B0);
    v63[3] = v26;
    v63[4] = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
    v28 = sub_100042BAC(v63);
    (*(*(v26 - 8) + 16))(v28, v27, v26);
    sub_10006F960(&qword_10016AD68);
    v49 = v19;
    SchemaType.select(_:_:)();
    sub_100026FDC(v63);
    if (qword_10016A418 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v8, qword_100173480);
    v29 = v61;
    if (qword_10016A410 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v8, qword_100173468);
    v30 = v52;
    static Expression<A>.+ infix<A>(_:_:)();
    v31 = v53;
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v33 = v32;
    (*(v57 + 8))(v31, v58);
    v63[0] = v33;
    static Expression<A>.<= infix<A>(_:_:)();
    (*(v55 + 8))(v30, v8);
    v64[3] = v14;
    v64[4] = v23;
    sub_100042BAC(v64);
    v34 = v49;
    QueryType.where(_:)();
    (*(v54 + 8))(v13, v56);
    v35 = *(v29 + 8);
    v35(v34, v14);
    v36 = v50;
    Connection.prepare(_:)();
    if (v36)
    {
      v35(v62, v14);
      return sub_100026FDC(v64);
    }

    else
    {
      v42 = sub_100026FDC(v64);
      v43 = __chkstk_darwin(v42);
      *(&v48 - 2) = v51;
      __chkstk_darwin(v43);
      *(&v48 - 2) = sub_1000700D0;
      *(&v48 - 1) = v44;
      v45 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
      v46 = v62;
      v47 = v45;

      result = (v35)(v46, v14);
      *v60 = v47;
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for OSLogger();
    sub_10002FD14(v38, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v39 = *(type metadata accessor for LogMessage() - 8);
    v40 = *(v39 + 72);
    v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    result = (*(v61 + 8))(v62, v14);
    *v60 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10005DC4C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  v5 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v5, qword_1001734B0);
  result = Row.get<A>(_:)();
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_10005DCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[41] = a7;
  v8[42] = v7;
  v8[39] = a5;
  v8[40] = a6;
  v8[37] = a3;
  v8[38] = a4;
  v8[35] = a1;
  v8[36] = a2;
  v9 = type metadata accessor for OnConflict();
  v8[43] = v9;
  v10 = *(v9 - 8);
  v8[44] = v10;
  v11 = *(v10 + 64) + 15;
  v8[45] = swift_task_alloc();
  v12 = type metadata accessor for Insert();
  v8[46] = v12;
  v13 = *(v12 - 8);
  v8[47] = v13;
  v14 = *(v13 + 64) + 15;
  v8[48] = swift_task_alloc();
  v15 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v8[49] = swift_task_alloc();
  v16 = type metadata accessor for OSSignpostID();
  v8[50] = v16;
  v17 = *(v16 - 8);
  v8[51] = v17;
  v18 = *(v17 + 64) + 15;
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();

  return _swift_task_switch(sub_10005DEB4, v7, 0);
}

uint64_t sub_10005DEB4()
{
  v34 = v0;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 424);
  v2 = *(v0 + 288);
  v3 = type metadata accessor for OSSignposter();
  sub_10002FD14(v3, qword_10016B5C8);

  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = *(v0 + 424);
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v33);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v11, "registerDataOwnership", "requestId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = *(v0 + 424);
  v13 = *(v0 + 400);
  v14 = *(v0 + 408);
  (*(v14 + 16))(*(v0 + 416), v12, v13);
  v15 = type metadata accessor for OSSignpostIntervalState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 432) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  if (qword_10016A3D8 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 392);
  v19 = *(v0 + 336);
  v31 = *(v0 + 312);
  v32 = *(v0 + 328);
  v20 = *(v0 + 288);
  v21 = *(v0 + 296);
  v22 = type metadata accessor for OSLogger();
  *(v0 + 440) = v22;
  *(v0 + 448) = sub_10002FD14(v22, qword_10016B5B0);
  *(v0 + 456) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v23 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 464) = *(v23 + 72);
  *(v0 + 512) = *(v23 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._object = 0x800000010013AF60;
  v24._countAndFlagsBits = 0xD00000000000001FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  v26 = *v21;
  v25 = v21[1];
  *(v0 + 128) = &type metadata for String;
  *(v0 + 104) = v26;
  *(v0 + 112) = v25;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 104, &qword_10016AB10, &unk_100130B10);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v28 = sub_100026F50((v19 + 112), *(v19 + 136));
  sub_10004F224(v21, v0 + 16);
  v29 = *v28;
  *(v0 + 472) = v29;

  return _swift_task_switch(sub_10005E2BC, v29, 0);
}

uint64_t sub_10005E2BC()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 480) = v3;
  *v3 = v0;
  v3[1] = sub_10005E3B8;
  v4 = *(v0 + 472);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10005E3B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v7 = *(v3 + 472);
  if (v1)
  {
    v8 = sub_10005EC94;
  }

  else
  {
    v8 = sub_10005E4EC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10005E4EC()
{
  v1 = *(v0 + 472);
  v2 = *(v1 + 216);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 216) = v4;
    if (qword_10016A3F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = *(v0 + 488);
  v5 = *(v0 + 496);
  v7 = type metadata accessor for Table();
  sub_10002FD14(v7, qword_100173408);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v5)
  {
    v8 = *(v0 + 488);

    v31 = *(v1 + 216);
    v3 = __OFSUB__(v31, 1);
    v32 = v31 - 1;
    if (!v3)
    {
      v33 = *(v0 + 288);
      *(v1 + 216) = v32;

      *(v0 + 504) = v5;
      v34 = *(v0 + 328);
      v35 = *(v0 + 336);
      v36 = *(v0 + 312);
      sub_100042AFC(v0 + 16);

      v37 = sub_10005ED2C;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_25;
  }

  v9 = *(v0 + 352);
  v10 = *(v0 + 360);
  v11 = *(v0 + 344);

  (*(v9 + 104))(v10, enum case for OnConflict.ignore(_:), v11);
  sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
  v12 = *(type metadata accessor for Setter() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_100131210;
  if (qword_10016A420 != -1)
  {
LABEL_25:
    swift_once();
  }

  v16 = *(v0 + 280);
  v15 = *(v0 + 288);
  v17 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v17, qword_100173498);
  *(v0 + 200) = v16;
  *(v0 + 208) = v15;
  <- infix<A>(_:_:)();
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v17, qword_1001734B0);
  v18 = *(v0 + 24);
  v56 = *(v0 + 16);
  *(v0 + 216) = v56;
  *(v0 + 224) = v18;

  <- infix<A>(_:_:)();
  v57 = v18;

  if (qword_10016A448 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v17, qword_100173510);
  v19 = *(v0 + 40);
  *(v0 + 232) = *(v0 + 32);
  *(v0 + 240) = v19;

  <- infix<A>(_:_:)();

  if (qword_10016A438 != -1)
  {
    swift_once();
  }

  v59 = v1;
  v21 = *(v0 + 304);
  v20 = *(v0 + 312);
  sub_10002FD14(v17, qword_1001734E0);
  *(v0 + 248) = v21;
  *(v0 + 256) = v20;
  <- infix<A>(_:_:)();
  if (qword_10016A440 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 488);
  v23 = *(v0 + 384);
  v24 = *(v0 + 352);
  v25 = *(v0 + 360);
  v26 = *(v0 + 344);
  v28 = *(v0 + 320);
  v27 = *(v0 + 328);
  sub_10002FD14(v17, qword_1001734F8);
  *(v0 + 264) = v28;
  *(v0 + 272) = v27;
  <- infix<A>(_:_:)();
  sub_10006F960(&qword_10016AD20);
  QueryType.insert(or:_:)();

  (*(v24 + 8))(v25, v26);
  v29 = Connection.run(_:)();
  v30 = *(v0 + 488);
  v38 = v29;
  v39 = *(v0 + 512);
  v41 = *(v0 + 456);
  v40 = *(v0 + 464);
  v42 = *(v0 + 440);
  v58 = *(v0 + 448);
  v43 = *(v0 + 392);
  (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v44._object = 0x800000010013AF80;
  v44._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v44);
  *(v0 + 160) = &type metadata for String;
  *(v0 + 136) = v56;
  *(v0 + 144) = v57;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 136, &qword_10016AB10, &unk_100130B10);
  v45._countAndFlagsBits = 0x746C75736572202CLL;
  v45._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  *(v0 + 192) = &type metadata for Int64;
  *(v0 + 168) = v38;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 168, &qword_10016AB10, &unk_100130B10);
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v46);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v50 = *(v59 + 216);
  v3 = __OFSUB__(v50, 1);
  v51 = v50 - 1;
  if (v3)
  {
    __break(1u);
    return _swift_task_switch(v47, v48, v49);
  }

  v52 = *(v0 + 328);
  v35 = *(v0 + 336);
  v53 = *(v0 + 312);
  v54 = *(v0 + 288);
  *(v59 + 216) = v51;

  sub_100042AFC(v0 + 16);

  v37 = sub_10005EBD0;
LABEL_17:
  v47 = v37;
  v48 = v35;
  v49 = 0;

  return _swift_task_switch(v47, v48, v49);
}

uint64_t sub_10005EBD0()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[52];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[45];
  sub_100070154("registerDataOwnership", 21, 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10005EC94()
{
  v1 = v0[36];

  v0[63] = v0[62];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[39];
  sub_100042AFC((v0 + 2));

  return _swift_task_switch(sub_10005ED2C, v3, 0);
}

uint64_t sub_10005ED2C()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[52];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[45];
  sub_100070154("registerDataOwnership", 21, 2);

  v7 = v0[1];
  v8 = v0[63];

  return v7();
}

uint64_t sub_10005EDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[41] = a7;
  v8[42] = v7;
  v8[39] = a5;
  v8[40] = a6;
  v8[37] = a3;
  v8[38] = a4;
  v8[35] = a1;
  v8[36] = a2;
  v9 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v8[43] = v9;
  v10 = *(v9 - 8);
  v8[44] = v10;
  v11 = *(v10 + 64) + 15;
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v12 = type metadata accessor for Table();
  v8[51] = v12;
  v13 = *(v12 - 8);
  v8[52] = v13;
  v14 = *(v13 + 64) + 15;
  v8[53] = swift_task_alloc();
  v15 = type metadata accessor for Delete();
  v8[54] = v15;
  v16 = *(v15 - 8);
  v8[55] = v16;
  v17 = *(v16 + 64) + 15;
  v8[56] = swift_task_alloc();
  v18 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v8[57] = swift_task_alloc();
  v19 = type metadata accessor for OSSignpostID();
  v8[58] = v19;
  v20 = *(v19 - 8);
  v8[59] = v20;
  v21 = *(v20 + 64) + 15;
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();

  return _swift_task_switch(sub_10005F050, v7, 0);
}

uint64_t sub_10005F050()
{
  v33 = v0;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 488);
  v2 = *(v0 + 288);
  v3 = type metadata accessor for OSSignposter();
  sub_10002FD14(v3, qword_10016B5C8);

  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = *(v0 + 488);
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v32);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v11, "deregisterDataOwnership", "requestId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = *(v0 + 488);
  v13 = *(v0 + 464);
  v14 = *(v0 + 472);
  (*(v14 + 16))(*(v0 + 480), v12, v13);
  v15 = type metadata accessor for OSSignpostIntervalState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 496) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  if (qword_10016A3D8 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 456);
  v19 = *(v0 + 336);
  v30 = *(v0 + 328);
  v31 = *(v0 + 312);
  v20 = *(v0 + 288);
  v29 = *(v0 + 296);
  v21 = *(v0 + 280);
  v22 = type metadata accessor for OSLogger();
  *(v0 + 504) = v22;
  *(v0 + 512) = sub_10002FD14(v22, qword_10016B5B0);
  *(v0 + 520) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v23 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 528) = *(v23 + 72);
  *(v0 + 576) = *(v23 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._object = 0x800000010013AA80;
  v24._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  *(v0 + 128) = &type metadata for String;
  *(v0 + 104) = v21;
  *(v0 + 112) = v20;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 104, &qword_10016AB10, &unk_100130B10);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v26 = sub_100026F50((v19 + 112), *(v19 + 136));
  sub_10004F224(v29, v0 + 16);
  v27 = *v26;
  *(v0 + 536) = v27;

  return _swift_task_switch(sub_10005F460, v27, 0);
}

uint64_t sub_10005F460()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 544) = v3;
  *v3 = v0;
  v3[1] = sub_10005F55C;
  v4 = *(v0 + 536);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10005F55C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 544);
  v6 = *v2;
  *(v4 + 552) = a1;
  *(v4 + 560) = v1;

  v7 = *(v3 + 536);
  if (v1)
  {
    v8 = sub_10005FFAC;
  }

  else
  {
    v8 = sub_10005F694;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10005F694()
{
  v1 = *(v0 + 536);
  v2 = *(v1 + 216);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_24;
  }

  *(v1 + 216) = v4;
  if (qword_10016A3F0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v5 = *(v0 + 552);
  sub_10002FD14(*(v0 + 408), qword_100173408);
  sub_10006F960(&qword_10016AD20);
  v6._countAndFlagsBits = QueryType.name.getter();
  v7 = Connection.tableExists(_:)(v6);

  if (!v7)
  {
    v55 = *(v0 + 528);
    v56 = *(v0 + 520);
    v58 = *(v0 + 504);
    v57 = *(v0 + 512);
    v59 = (*(v0 + 576) + 32) & ~*(v0 + 576);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();
    goto LABEL_18;
  }

  if (qword_10016A420 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v84 = v1;
    v8 = *(v0 + 368);
    v10 = *(v0 + 280);
    v9 = *(v0 + 288);
    v11 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    sub_10002FD14(v11, qword_100173498);
    *(v0 + 200) = v10;
    *(v0 + 208) = v9;
    static Expression<A>.== infix<A>(_:_:)();
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 368);
    v12 = *(v0 + 376);
    v14 = *(v0 + 352);
    v15 = *(v0 + 360);
    v16 = *(v0 + 344);
    sub_10002FD14(v11, qword_1001734B0);
    v17 = v11;
    v18 = *(v0 + 24);
    v77 = *(v0 + 16);
    *(v0 + 216) = v77;
    *(v0 + 224) = v18;

    static Expression<A>.== infix<A>(_:_:)();
    v78 = v18;

    static Expression<A>.&& infix(_:_:)();
    v19 = *(v14 + 8);
    v19(v15, v16);
    v19(v13, v16);
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 376);
    v20 = *(v0 + 384);
    v22 = *(v0 + 368);
    v23 = *(v0 + 344);
    sub_10002FD14(v17, qword_100173510);
    v24 = v17;
    v25 = *(v0 + 40);
    *(v0 + 232) = *(v0 + 32);
    *(v0 + 240) = v25;

    static Expression<A>.== infix<A>(_:_:)();

    static Expression<A>.&& infix(_:_:)();
    v19(v22, v23);
    v19(v21, v23);
    v26 = v19;
    v27 = v24;
    if (qword_10016A440 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 384);
    v28 = *(v0 + 392);
    v30 = *(v0 + 376);
    v31 = *(v0 + 344);
    v33 = *(v0 + 320);
    v32 = *(v0 + 328);
    sub_10002FD14(v27, qword_1001734F8);
    *(v0 + 248) = v33;
    *(v0 + 256) = v32;
    static Expression<A>.== infix<A>(_:_:)();
    static Expression<A>.&& infix(_:_:)();
    v26(v30, v31);
    v26(v29, v31);
    v81 = v26;
    v34 = v27;
    if (qword_10016A438 != -1)
    {
      swift_once();
      v34 = v27;
    }

    v82 = *(v0 + 552);
    v83 = *(v0 + 560);
    v35 = *(v0 + 424);
    v79 = *(v0 + 448);
    v80 = *(v0 + 416);
    v36 = *(v0 + 400);
    v37 = *(v0 + 408);
    v38 = *(v0 + 384);
    v39 = *(v0 + 392);
    v40 = *(v0 + 344);
    v42 = *(v0 + 304);
    v41 = *(v0 + 312);
    sub_10002FD14(v34, qword_1001734E0);
    *(v0 + 264) = v42;
    *(v0 + 272) = v41;
    static Expression<A>.== infix<A>(_:_:)();
    static Expression<A>.&& infix(_:_:)();
    v81(v38, v40);
    v81(v39, v40);
    QueryType.where(_:)();
    v81(v36, v40);
    QueryType.delete()();
    (*(v80 + 8))(v35, v37);
    v43 = Connection.run(_:)();
    if (v83)
    {
      break;
    }

    v60 = v43;
    v61 = *(v0 + 576);
    v62 = *(v0 + 528);
    v63 = *(v0 + 520);
    v65 = *(v0 + 504);
    v64 = *(v0 + 512);
    v66 = *(v0 + 456);
    (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v67._countAndFlagsBits = 0x20646574656C6544;
    v67._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v67);
    *(v0 + 160) = &type metadata for Int;
    *(v0 + 136) = v60;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 136, &qword_10016AB10, &unk_100130B10);
    v68._countAndFlagsBits = 0x73656972746E6520;
    v68._object = 0xED000020726F6620;
    LogMessage.StringInterpolation.appendLiteral(_:)(v68);
    *(v0 + 192) = &type metadata for String;
    *(v0 + 168) = v77;
    *(v0 + 176) = v78;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 168, &qword_10016AB10, &unk_100130B10);
    v69._object = 0x800000010013AAE0;
    v69._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v69);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();
    v1 = v84;
LABEL_18:
    v70 = *(v0 + 552);

    v71 = *(v1 + 216);
    v3 = __OFSUB__(v71, 1);
    v72 = v71 - 1;
    if (!v3)
    {
      v73 = *(v0 + 328);
      v52 = *(v0 + 336);
      v74 = *(v0 + 312);
      v75 = *(v0 + 288);
      *(v1 + 216) = v72;

      sub_100042AFC(v0 + 16);

      v54 = sub_10005FE94;
      goto LABEL_20;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v44 = *(v0 + 552);
  (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));

  v48 = *(v84 + 216);
  v3 = __OFSUB__(v48, 1);
  v49 = v48 - 1;
  if (v3)
  {
    __break(1u);
    return _swift_task_switch(v45, v46, v47);
  }

  v50 = *(v0 + 288);
  *(v84 + 216) = v49;

  *(v0 + 568) = v83;
  v51 = *(v0 + 328);
  v52 = *(v0 + 336);
  v53 = *(v0 + 312);
  sub_100042AFC(v0 + 16);

  v54 = sub_100060044;
LABEL_20:
  v45 = v54;
  v46 = v52;
  v47 = 0;

  return _swift_task_switch(v45, v46, v47);
}

uint64_t sub_10005FE94()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[60];
  v5 = v0[56];
  v4 = v0[57];
  v6 = v0[53];
  v8 = v0[49];
  v7 = v0[50];
  v9 = v0[48];
  v12 = v0[47];
  v13 = v0[46];
  v14 = v0[45];
  sub_100070154("deregisterDataOwnership", 23, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10005FFAC()
{
  v1 = v0[36];

  v0[71] = v0[70];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[39];
  sub_100042AFC((v0 + 2));

  return _swift_task_switch(sub_100060044, v3, 0);
}

uint64_t sub_100060044()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[60];
  v5 = v0[56];
  v4 = v0[57];
  v6 = v0[53];
  v8 = v0[49];
  v7 = v0[50];
  v9 = v0[48];
  v13 = v0[47];
  v14 = v0[46];
  v15 = v0[45];
  sub_100070154("deregisterDataOwnership", 23, 2);

  v10 = v0[1];
  v11 = v0[71];

  return v10();
}

uint64_t sub_10006015C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  v4 = *(*(sub_100026F94(&qword_10016ADF8, &unk_1001312B0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100060298, v2, 0);
}

uint64_t sub_100060298()
{
  v29 = v0;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = type metadata accessor for OSSignposter();
  sub_10002FD14(v3, qword_10016B5C8);

  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = v0[14];
    v8 = v0[5];
    v7 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v28);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v11, "dataOwnedByBundleId", "bundleId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[12];
  (*(v14 + 16))(v0[13], v12, v13);
  v15 = type metadata accessor for OSSignpostIntervalState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[15] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  v18 = v0[9];
  v19 = v0[10];
  v21 = v0[6];
  v20 = v0[7];
  v22 = v0[5];
  v23 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v23, qword_1001734B0);
  v0[2] = v22;
  v0[3] = v21;
  static Expression<A>.== infix<A>(_:_:)();
  v24 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  (*(*(v24 - 8) + 56))(v19, 0, 1, v24);
  v25 = sub_100026F50((v20 + 112), *(v20 + 136));
  sub_10002BA04(v19, v18, &qword_10016ADF8, &unk_1001312B0);
  v26 = *v25;
  v0[16] = *v25;

  return _swift_task_switch(sub_1000605B8, v26, 0);
}

uint64_t sub_1000605B8()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_1000606B4;
  v4 = *(v0 + 128);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000606B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v7 = *(v3 + 128);
  if (v1)
  {
    v8 = sub_1000608FC;
  }

  else
  {
    v8 = sub_1000607E8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000607E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[16];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[18];
  v9 = v3[19];
  v11 = v3[8];
  v10 = v3[9];
  *(v4 + 216) = v7;
  sub_10006AAD8(v8, v10, v11, v3 + 4);
  v12 = v3[18];

  v13 = *(v4 + 216);
  v6 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  v15 = v6;
  if (v9)
  {
    if ((v15 & 1) == 0)
    {
      *(v4 + 216) = v14;
      v3[21] = v9;
      v16 = v3[7];
      sub_10002BA6C(v3[9], &qword_10016ADF8, &unk_1001312B0);
      v17 = sub_100060A54;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v15)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v18 = v3[9];
  v16 = v3[7];
  *(v4 + 216) = v14;
  v3[20] = v3[4];
  sub_10002BA6C(v18, &qword_10016ADF8, &unk_1001312B0);
  v17 = sub_100060980;
LABEL_10:
  a1 = v17;
  a2 = v16;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000608FC()
{
  v0[21] = v0[19];
  v1 = v0[7];
  sub_10002BA6C(v0[9], &qword_10016ADF8, &unk_1001312B0);

  return _swift_task_switch(sub_100060A54, v1, 0);
}

uint64_t sub_100060980()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  sub_10002BA6C(v0[10], &qword_10016ADF8, &unk_1001312B0);
  sub_100070154("dataOwnedByBundleId", 19, 2);

  v5 = v0[1];
  v6 = v0[20];

  return v5(v6);
}

uint64_t sub_100060A54()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  sub_10002BA6C(v0[10], &qword_10016ADF8, &unk_1001312B0);
  sub_100070154("dataOwnedByBundleId", 19, 2);

  v5 = v0[1];
  v6 = v0[21];

  return v5();
}

uint64_t sub_100060B24(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  v4 = *(*(sub_100026F94(&qword_10016ADF8, &unk_1001312B0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_100060C60, v2, 0);
}

uint64_t sub_100060C60()
{
  v29 = v0;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = type metadata accessor for OSSignposter();
  sub_10002FD14(v3, qword_10016B5C8);

  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = v0[14];
    v8 = v0[5];
    v7 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v28);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v11, "dataOwnedByRequestId", "requestId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[12];
  (*(v14 + 16))(v0[13], v12, v13);
  v15 = type metadata accessor for OSSignpostIntervalState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[15] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  if (qword_10016A420 != -1)
  {
    swift_once();
  }

  v18 = v0[9];
  v19 = v0[10];
  v21 = v0[6];
  v20 = v0[7];
  v22 = v0[5];
  v23 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v23, qword_100173498);
  v0[2] = v22;
  v0[3] = v21;
  static Expression<A>.== infix<A>(_:_:)();
  v24 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  (*(*(v24 - 8) + 56))(v19, 0, 1, v24);
  v25 = sub_100026F50((v20 + 112), *(v20 + 136));
  sub_10002BA04(v19, v18, &qword_10016ADF8, &unk_1001312B0);
  v26 = *v25;
  v0[16] = *v25;

  return _swift_task_switch(sub_100060F80, v26, 0);
}

uint64_t sub_100060F80()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_10006107C;
  v4 = *(v0 + 128);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10006107C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v1;

  v7 = *(v3 + 128);
  if (v1)
  {
    v8 = sub_1000612C4;
  }

  else
  {
    v8 = sub_1000611B0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000611B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[16];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[18];
  v9 = v3[19];
  v11 = v3[8];
  v10 = v3[9];
  *(v4 + 216) = v7;
  sub_10006AAD8(v8, v10, v11, v3 + 4);
  v12 = v3[18];

  v13 = *(v4 + 216);
  v6 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  v15 = v6;
  if (v9)
  {
    if ((v15 & 1) == 0)
    {
      *(v4 + 216) = v14;
      v3[21] = v9;
      v16 = v3[7];
      sub_10002BA6C(v3[9], &qword_10016ADF8, &unk_1001312B0);
      v17 = sub_10006141C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v15)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v18 = v3[9];
  v16 = v3[7];
  *(v4 + 216) = v14;
  v3[20] = v3[4];
  sub_10002BA6C(v18, &qword_10016ADF8, &unk_1001312B0);
  v17 = sub_100061348;
LABEL_10:
  a1 = v17;
  a2 = v16;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000612C4()
{
  v0[21] = v0[19];
  v1 = v0[7];
  sub_10002BA6C(v0[9], &qword_10016ADF8, &unk_1001312B0);

  return _swift_task_switch(sub_10006141C, v1, 0);
}

uint64_t sub_100061348()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  sub_10002BA6C(v0[10], &qword_10016ADF8, &unk_1001312B0);
  sub_100070154("dataOwnedByRequestId", 20, 2);

  v5 = v0[1];
  v6 = v0[20];

  return v5(v6);
}

uint64_t sub_10006141C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  sub_10002BA6C(v0[10], &qword_10016ADF8, &unk_1001312B0);
  sub_100070154("dataOwnedByRequestId", 20, 2);

  v5 = v0[1];
  v6 = v0[21];

  return v5();
}

uint64_t sub_1000614EC()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = *(*(sub_100026F94(&qword_10016ADF8, &unk_1001312B0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100061624, v0, 0);
}

uint64_t sub_100061624()
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "fullDataOwnershipIndex", "", v6, 2u);
  }

  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[7];
  v11 = v0[8];
  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[3];

  (*(v11 + 16))(v8, v9, v10);
  v15 = type metadata accessor for OSSignpostIntervalState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[11] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v18 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_100026F50((v14 + 112), *(v14 + 136));
  sub_10002BA04(v12, v13, &qword_10016ADF8, &unk_1001312B0);
  v20 = *v19;
  v0[12] = *v19;

  return _swift_task_switch(sub_100061860, v20, 0);
}

uint64_t sub_100061860()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_10006195C;
  v4 = *(v0 + 96);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10006195C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v7 = *(v3 + 96);
  if (v1)
  {
    v8 = sub_100061BA8;
  }

  else
  {
    v8 = sub_100061A90;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100061A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[12];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[14];
  v9 = v3[15];
  v11 = v3[4];
  v10 = v3[5];
  *(v4 + 216) = v7;
  sub_10006AAD8(v8, v10, v11, v3 + 2);

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;
      v3[17] = v9;
      v15 = v3[3];
      sub_10002BA6C(v3[5], &qword_10016ADF8, &unk_1001312B0);
      v16 = sub_100061D00;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v17 = v3[5];
  v15 = v3[3];
  *(v4 + 216) = v13;
  v3[16] = v3[2];
  sub_10002BA6C(v17, &qword_10016ADF8, &unk_1001312B0);
  v16 = sub_100061C2C;
LABEL_10:
  a1 = v16;
  a2 = v15;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100061BA8()
{
  v0[17] = v0[15];
  v1 = v0[3];
  sub_10002BA6C(v0[5], &qword_10016ADF8, &unk_1001312B0);

  return _swift_task_switch(sub_100061D00, v1, 0);
}

uint64_t sub_100061C2C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  sub_10002BA6C(v0[6], &qword_10016ADF8, &unk_1001312B0);
  sub_100070154("fullDataOwnershipIndex", 22, 2);

  v5 = v0[1];
  v6 = v0[16];

  return v5(v6);
}

uint64_t sub_100061D00()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  sub_10002BA6C(v0[6], &qword_10016ADF8, &unk_1001312B0);
  sub_100070154("fullDataOwnershipIndex", 22, 2);

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

uint64_t sub_100061DD0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  *(v2 + 24) = *v1;
  v3 = type metadata accessor for OSSignpostID();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100061EC8, v1, 0);
}

uint64_t sub_100061EC8()
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "updateStatistics", "", v6, 2u);
  }

  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];

  (*(v11 + 16))(v8, v9, v10);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[8] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v16 = sub_100026F50((v12 + 112), *(v12 + 136));
  v17 = *v16;
  v0[9] = *v16;

  return _swift_task_switch(sub_10006208C, v17, 0);
}

uint64_t sub_10006208C()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_100062188;
  v4 = *(v0 + 72);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100062188(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v3[13] = v1;
    v6 = v3[2];
    v7 = sub_100062428;
  }

  else
  {
    v6 = v3[9];
    v7 = sub_1000622B0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000622B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 72);
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(v3 + 88);
  v9 = *(v3 + 96);
  v10 = *(v3 + 24);
  v11 = *(v3 + 112);
  *(v4 + 216) = v7;
  sub_1000624C4(v8, v11);

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;
      *(v3 + 104) = v9;
      a2 = *(v3 + 16);
      v15 = sub_100062428;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  a2 = *(v3 + 16);
  *(v4 + 216) = v13;
  v15 = sub_10006238C;
LABEL_10:
  a1 = v15;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10006238C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_100070154("updateStatistics", 16, 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100062428()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_100070154("updateStatistics", 16, 2);

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_1000624C4(uint64_t a1, int a2)
{
  v90 = a2;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v75 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  v85 = *(v92 - 8);
  v7 = *(v85 + 64);
  __chkstk_darwin(v92);
  v81 = &v73 - v8;
  v78 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v77 = *(v78 - 8);
  v9 = *(v77 + 64);
  __chkstk_darwin(v78);
  v76 = &v73 - v10;
  v11 = type metadata accessor for Update();
  v86 = *(v11 - 8);
  v87 = v11;
  v12 = *(v86 + 64);
  __chkstk_darwin(v11);
  v82 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Setter();
  v93 = *(v91 - 8);
  v14 = *(v93 + 64);
  v15 = __chkstk_darwin(v91);
  v79 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v89 = &v73 - v17;
  v18 = type metadata accessor for Insert();
  v83 = *(v18 - 8);
  v84 = v18;
  v19 = *(v83 + 64);
  __chkstk_darwin(v18);
  v80 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
  v94 = *(v21 - 8);
  v22 = *(v94 + 64);
  __chkstk_darwin(v21);
  v24 = &v73 - v23;
  v25 = sub_100026F94(&qword_10016B738, &unk_1001313D0);
  v95 = *(v25 - 8);
  v26 = *(v95 + 64);
  __chkstk_darwin(v25);
  v28 = &v73 - v27;
  v29 = type metadata accessor for Table();
  v99 = *(v29 - 8);
  v30 = *(v99 + 64);
  v31 = __chkstk_darwin(v29);
  v88 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v97 = &v73 - v33;
  v103 = sub_100026F94(&qword_10016AE38, &unk_1001333A0);
  v96 = *(v103 - 8);
  v34 = *(v96 + 64);
  __chkstk_darwin(v103);
  v98 = &v73 - v35;
  if (qword_10016A3F8 != -1)
  {
    swift_once();
  }

  v36 = sub_10002FD14(v29, qword_100173420);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v2)
  {
  }

  v74 = v29;

  sub_10006F094(a1);
  v73 = 0;
  static Connection.ServiceColumns.rowId.getter();
  v38 = v97;
  v39 = v74;
  (*(v99 + 16))(v97, v36, v74);
  sub_10002B95C(&qword_10016B740, &qword_10016AE38, &unk_1001333A0);
  ExpressionType<>.min.getter();
  sub_10006F960(&qword_10016AD68);
  SchemaType.select<A>(_:)();
  (*(v94 + 8))(v24, v21);
  v40 = v73;
  Connection.scalar<A>(_:)();
  if (v40)
  {
    (*(v95 + 8))(v28, v25);
    (*(v99 + 8))(v38, v39);
    return (*(v96 + 8))(v98, v103);
  }

  v41 = v39;
  v94 = a1;
  (*(v95 + 8))(v28, v25);
  if (v101 == 1)
  {
    v42 = v99;
    v43 = v92;
    v44 = v90;
    if (qword_10016A450 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v43, qword_100173528);
    v100 = v44 == 0;
    v101 = 0;
    <- infix<A>(_:_:)();
    sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
    v45 = *(v93 + 72);
    v46 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    *(swift_allocObject() + 16) = xmmword_100131210;
    if (qword_10016A458 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v43, qword_100173540);
    v100 = v44 == 1;
    v101 = 0;
    <- infix<A>(_:_:)();
    if (qword_10016A460 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v43, qword_100173558);
    v100 = v44 == 2;
    v101 = 0;
    <- infix<A>(_:_:)();
    if (qword_10016A468 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v43, qword_100173570);
    v100 = v44 == 3;
    v101 = 0;
    <- infix<A>(_:_:)();
    if (qword_10016A470 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v43, qword_100173588);
    v100 = v44 == 4;
    v101 = 0;
    <- infix<A>(_:_:)();
    if (qword_10016A478 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v43, qword_1001735A0);
    v100 = v44 == 5;
    v101 = 0;
    <- infix<A>(_:_:)();
    sub_10006F960(&qword_10016AD20);
    v47 = v80;
    v48 = v89;
    QueryType.insert(_:_:)();

    (*(v93 + 8))(v48, v91);
    v55 = Connection.run(_:)();
    (*(v83 + 8))(v47, v84);
    v56 = v98;
    goto LABEL_47;
  }

  v73 = 0;
  v49 = v76;
  v56 = v98;
  static Expression<A>.== infix<A>(_:_:)();
  sub_10006F960(&qword_10016AD20);
  v50 = v41;
  v51 = v97;
  QueryType.filter(_:)();
  (*(v77 + 8))(v49, v78);
  v52 = v92;
  if (v90 > 2u)
  {
    v53 = v82;
    if (v90 == 3)
    {
      if (qword_10016A468 != -1)
      {
        swift_once();
      }

      v54 = qword_100173570;
    }

    else if (v90 == 4)
    {
      if (qword_10016A470 != -1)
      {
        swift_once();
      }

      v54 = qword_100173588;
    }

    else
    {
      if (qword_10016A478 != -1)
      {
        swift_once();
      }

      v54 = qword_1001735A0;
    }
  }

  else
  {
    v53 = v82;
    if (v90)
    {
      if (v90 == 1)
      {
        if (qword_10016A458 != -1)
        {
          swift_once();
        }

        v54 = qword_100173540;
      }

      else
      {
        if (qword_10016A460 != -1)
        {
          swift_once();
        }

        v54 = qword_100173558;
      }
    }

    else
    {
      if (qword_10016A450 != -1)
      {
        swift_once();
      }

      v54 = qword_100173528;
    }
  }

  v57 = sub_10002FD14(v52, v54);
  v58 = v85;
  v59 = v81;
  (*(v85 + 16))(v81, v57, v52);
  v100 = 1;
  v60 = v79;
  static Expression<A>.+= infix<A>(_:_:)();
  (*(v58 + 8))(v59, v52);
  v61 = v88;
  QueryType.update(_:_:)();
  (*(v93 + 8))(v60, v91);
  v42 = v99;
  v62 = *(v99 + 8);
  v62(v61, v50);
  v63 = v73;
  v55 = Connection.run(_:)();
  if (!v63)
  {
    (*(v86 + 8))(v53, v87);
LABEL_47:
    v66 = v56;
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for OSLogger();
    sub_10002FD14(v67, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v68 = *(type metadata accessor for LogMessage() - 8);
    v69 = *(v68 + 72);
    v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v71._object = 0x800000010013AFC0;
    v71._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v71);
    v102 = &type metadata for Int64;
    v100 = v55;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v100, &qword_10016AB10, &unk_100130B10);
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v72);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    (*(v42 + 8))(v97, v74);
    v64 = *(v96 + 8);
    v65 = v66;
    return v64(v65, v103);
  }

  (*(v86 + 8))(v53, v87);
  v62(v51, v50);
  v64 = *(v96 + 8);
  v65 = v56;
  return v64(v65, v103);
}

uint64_t sub_100063610(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100063704, v1, 0);
}

uint64_t sub_100063704()
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "updateErrorStatistics", "", v6, 2u);
  }

  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[3];

  (*(v11 + 16))(v8, v9, v10);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[9] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v16 = sub_100026F50((v12 + 112), *(v12 + 136));
  v17 = *v16;
  v0[10] = *v16;

  return _swift_task_switch(sub_1000638C8, v17, 0);
}

uint64_t sub_1000638C8()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1000639C4;
  v4 = *(v0 + 80);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000639C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v3[14] = v1;
    v6 = v3[3];
    v7 = sub_100063C64;
  }

  else
  {
    v6 = v3[10];
    v7 = sub_100063AEC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100063AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[10];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[12];
  v9 = v3[13];
  v10 = v3[4];
  v11 = v3[2];
  *(v4 + 216) = v7;
  sub_100063D00(v8, v11);

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;
      v3[14] = v9;
      a2 = v3[3];
      v15 = sub_100063C64;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  a2 = v3[3];
  *(v4 + 216) = v13;
  v15 = sub_100063BC8;
LABEL_10:
  a1 = v15;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100063BC8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_100070154("updateErrorStatistics", 21, 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100063C64()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_100070154("updateErrorStatistics", 21, 2);

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_100063D00(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for Insert();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  __chkstk_darwin(v12);
  v46 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A400 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Table();
  v16 = sub_10002FD14(v15, qword_100173438);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v2)
  {
  }

  v40 = v16;
  v41 = v15;
  v37 = v7;

  v18 = sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
  v19 = *(type metadata accessor for Setter() - 8);
  v20 = *(v19 + 72);
  v21 = *(v19 + 80);
  v39 = v18;
  v22 = swift_allocObject();
  v43 = xmmword_10012FA10;
  *(v22 + 16) = xmmword_10012FA10;
  if (qword_10016A488 != -1)
  {
    swift_once();
  }

  v38 = 0;
  v42 = a1;
  sub_10002FD14(v8, qword_1001735D0);
  v49[0] = 1;
  <- infix<A>(_:_:)();
  if (qword_10016A480 != -1)
  {
    swift_once();
  }

  v23 = sub_10002FD14(v8, qword_1001735B8);
  v50 = v8;
  v51 = sub_10002B95C(&qword_10016B720, &qword_10016B6E8, &qword_100131368);
  v24 = sub_100042BAC(v49);
  v25 = v45;
  (*(v45 + 16))(v24, v23, v8);
  *(swift_allocObject() + 16) = v43;
  v52 = 1;
  static Expression<A>.+ infix<A>(_:_:)();
  <- infix<A>(_:_:)();
  (*(v25 + 8))(v11, v8);
  sub_10006F960(&qword_10016AD20);
  v26 = v46;
  QueryType.upsert(_:onConflictOf:set:)();

  sub_100026FDC(v49);
  v27 = v38;
  v28 = Connection.run(_:)();
  if (!v27)
  {
    v29 = v28;
    (*(v47 + 8))(v26, v48);
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for OSLogger();
    sub_10002FD14(v30, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v31 = *(type metadata accessor for LogMessage() - 8);
    v32 = *(v31 + 72);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    *(swift_allocObject() + 16) = v43;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v34._object = 0x800000010013B000;
    v34._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    v50 = &type metadata for Int;
    v49[0] = v44;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v49, &qword_10016AB10, &unk_100130B10);
    v35._countAndFlagsBits = 0x746C75736572202CLL;
    v35._object = 0xEA0000000000203ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    v50 = &type metadata for Int64;
    v49[0] = v29;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v49, &qword_10016AB10, &unk_100130B10);
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();
  }

  return (*(v47 + 8))(v26, v48);
}

uint64_t sub_1000643EC()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000644E0, v0, 0);
}

uint64_t sub_1000644E0()
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "clearStatistics", "", v6, 2u);
  }

  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];

  (*(v11 + 16))(v8, v9, v10);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[8] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v16 = sub_100026F50((v12 + 112), *(v12 + 136));
  v17 = *v16;
  v0[9] = *v16;

  return _swift_task_switch(sub_1000646A4, v17, 0);
}

uint64_t sub_1000646A4()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1000647A0;
  v4 = *(v0 + 72);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000647A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v3[13] = v1;
    v6 = v3[2];
    v7 = sub_100064A3C;
  }

  else
  {
    v6 = v3[9];
    v7 = sub_1000648C8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000648C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[9];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[11];
  v9 = v3[12];
  v10 = v3[3];
  *(v4 + 216) = v7;
  sub_100064AD8();

  v11 = *(v4 + 216);
  v6 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  v13 = v6;
  if (v9)
  {
    if ((v13 & 1) == 0)
    {
      *(v4 + 216) = v12;
      v3[13] = v9;
      a2 = v3[2];
      v14 = sub_100064A3C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v13)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  a2 = v3[2];
  *(v4 + 216) = v12;
  v14 = sub_1000649A0;
LABEL_10:
  a1 = v14;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000649A0()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_100070154("clearStatistics", 15, 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100064A3C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_100070154("clearStatistics", 15, 2);

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_100064AD8()
{
  v15 = type metadata accessor for Delete();
  v14 = *(v15 - 8);
  v1 = *(v14 + 64);
  v2 = __chkstk_darwin(v15);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  if (qword_10016A3F8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Table();
  sub_10002FD14(v7, qword_100173420);
  sub_10006F960(&qword_10016AD20);
  v8._countAndFlagsBits = QueryType.name.getter();
  v9 = Connection.tableExists(_:)(v8);

  if (v9)
  {
    QueryType.delete()();
    Connection.run(_:)();
    if (v0)
    {
      return (*(v14 + 8))(v6, v15);
    }

    (*(v14 + 8))(v6, v15);
  }

  if (qword_10016A400 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v7, qword_100173438);
  v10._countAndFlagsBits = QueryType.name.getter();
  v11 = Connection.tableExists(_:)(v10);

  if (v11)
  {
    QueryType.delete()();
    Connection.run(_:)();
    if (!v0)
    {
      return (*(v14 + 8))(v4, v15);
    }

    v6 = v4;
    return (*(v14 + 8))(v6, v15);
  }

  return result;
}

uint64_t sub_100064D70(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = *v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100064E64, v1, 0);
}

uint64_t sub_100064E64()
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "databaseStatistics", "", v6, 2u);
  }

  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  v12 = v0[16];

  (*(v11 + 16))(v8, v9, v10);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[22] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v16 = sub_100026F50((v12 + 112), *(v12 + 136));
  sub_100026EEC(v12 + 112, (v0 + 10));
  v17 = *v16;
  v0[23] = *v16;

  return _swift_task_switch(sub_100065038, v17, 0);
}

uint64_t sub_100065038()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_100065134;
  v4 = *(v0 + 184);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100065134(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v7 = *(v3 + 184);
  if (v1)
  {
    v8 = sub_100065358;
  }

  else
  {
    v8 = sub_100065268;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100065268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 184);
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(v3 + 200);
  v9 = *(v3 + 208);
  v10 = *(v3 + 136);
  *(v4 + 216) = v7;
  sub_100065518(v8, v3 + 80, (v3 + 16));
  v11 = *(v3 + 200);

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v9)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;
      *(v3 + 216) = v9;
      v15 = *(v3 + 128);
      sub_100026FDC((v3 + 80));
      v16 = sub_10006547C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v15 = *(v3 + 128);
  *(v4 + 216) = v13;
  sub_100026FDC((v3 + 80));
  v16 = sub_1000653CC;
LABEL_10:
  a1 = v16;
  a2 = v15;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100065358()
{
  v0[27] = v0[26];
  v1 = v0[16];
  sub_100026FDC(v0 + 10);

  return _swift_task_switch(sub_10006547C, v1, 0);
}

uint64_t sub_1000653CC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 120);
  sub_100070154("databaseStatistics", 18, 2);

  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 64);
  v4[2] = *(v0 + 48);
  v4[3] = v7;
  *v4 = v5;
  v4[1] = v6;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10006547C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_100070154("databaseStatistics", 18, 2);

  v4 = v0[1];
  v5 = v0[27];

  return v4();
}

uint64_t sub_100065518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v104 = a2;
  v101 = a3;
  v5 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  v6 = *(v5 - 8);
  v102 = v5;
  v103 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v90 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v91 = &v86 - v11;
  v12 = __chkstk_darwin(v10);
  v92 = &v86 - v13;
  v14 = __chkstk_darwin(v12);
  v94 = &v86 - v15;
  v16 = __chkstk_darwin(v14);
  v96 = &v86 - v17;
  __chkstk_darwin(v16);
  v98 = &v86 - v18;
  v19 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v93 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v95 = &v86 - v24;
  v25 = __chkstk_darwin(v23);
  v97 = &v86 - v26;
  v27 = __chkstk_darwin(v25);
  v99 = &v86 - v28;
  v29 = __chkstk_darwin(v27);
  v100 = &v86 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v86 - v32;
  __chkstk_darwin(v31);
  v107 = &v86 - v34;
  if (qword_10016A3F0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Table();
  sub_10002FD14(v35, qword_100173408);
  sub_10006F960(&qword_10016AD20);
  v36._countAndFlagsBits = QueryType.name.getter();
  v37 = Connection.tableExists(_:)(v36);

  if (!v37)
  {
    if (qword_10016A3F8 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v35, qword_100173420);
    v38._countAndFlagsBits = QueryType.name.getter();
    v39 = Connection.tableExists(_:)(v38);

    if (!v39)
    {
      if (qword_10016A400 != -1)
      {
        swift_once();
      }

      sub_10002FD14(v35, qword_100173438);
      v40._countAndFlagsBits = QueryType.name.getter();
      v41 = Connection.tableExists(_:)(v40);

      if (!v41)
      {
        v45 = v101;
        v101[2] = 0u;
        v45[3] = 0u;
        *v45 = 0u;
        v45[1] = 0u;
        return result;
      }
    }
  }

  v43 = v107;
  result = sub_100066630(a1, v107);
  if (!v3)
  {
    v44 = sub_100066CB8(a1, v104);
    v104 = 0;
    v46 = v44;
    sub_10002BA04(v43, v33, &qword_10016AD38, &qword_1001332F0);
    v47 = type metadata accessor for Row();
    v48 = *(v47 - 8);
    v49 = *(v48 + 48);
    v89 = v47;
    if (v49(v33, 1) == 1)
    {
      sub_10002BA6C(v33, &qword_10016AD38, &qword_1001332F0);
      v50 = v89;
    }

    else
    {
      v87 = a1;
      v88 = v49;
      if (qword_10016A450 != -1)
      {
        swift_once();
      }

      v64 = v102;
      sub_10002FD14(v102, qword_100173528);
      sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350);
      sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360);
      v65 = v98;
      ExpressionType<>.sum.getter();
      v66 = v104;
      Row.get<A>(_:)();
      v104 = v66;
      if (v66)
      {

        (*(v103 + 8))(v65, v64);
        sub_10002BA6C(v43, &qword_10016AD38, &qword_1001332F0);
        v67 = *(v48 + 8);
        v68 = v33;
        goto LABEL_41;
      }

      (*(v103 + 8))(v65, v64);
      v77 = v33;
      v50 = v89;
      (*(v48 + 8))(v77, v89);
      v49 = v88;
      if (v106 != 1)
      {
        v52 = v105;
        v51 = v100;
        goto LABEL_16;
      }
    }

    v51 = v100;
    v52 = 0;
LABEL_16:
    sub_10002BA04(v43, v51, &qword_10016AD38, &qword_1001332F0);
    if ((v49)(v51, 1, v50) == 1)
    {
      v87 = v52;
      v98 = v46;
      sub_10002BA6C(v51, &qword_10016AD38, &qword_1001332F0);
      goto LABEL_18;
    }

    v88 = v49;
    if (qword_10016A458 != -1)
    {
      swift_once();
    }

    v69 = v102;
    sub_10002FD14(v102, qword_100173540);
    sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350);
    sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360);
    v70 = v96;
    ExpressionType<>.sum.getter();
    v71 = v100;
    v72 = v104;
    Row.get<A>(_:)();
    v104 = v72;
    if (!v72)
    {
      v87 = v52;
      v98 = v46;
      (*(v103 + 8))(v70, v69);
      v50 = v89;
      (*(v48 + 8))(v71, v89);
      v43 = v107;
      v49 = v88;
      if (v106 != 1)
      {
        v100 = v105;
        v53 = v102;
LABEL_19:
        v54 = v99;
        sub_10002BA04(v43, v99, &qword_10016AD38, &qword_1001332F0);
        if ((v49)(v54, 1, v50) == 1)
        {
          sub_10002BA6C(v54, &qword_10016AD38, &qword_1001332F0);
        }

        else
        {
          if (qword_10016A460 != -1)
          {
            swift_once();
          }

          sub_10002FD14(v53, qword_100173558);
          sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350);
          sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360);
          v74 = v94;
          ExpressionType<>.sum.getter();
          v75 = v99;
          v76 = v104;
          Row.get<A>(_:)();
          v104 = v76;
          if (v76)
          {
            goto LABEL_59;
          }

          (*(v103 + 8))(v74, v53);
          (*(v48 + 8))(v75, v50);
          v43 = v107;
          if (v106 != 1)
          {
            v99 = v105;
            v55 = v97;
            goto LABEL_22;
          }
        }

        v55 = v97;
        v99 = 0;
LABEL_22:
        sub_10002BA04(v43, v55, &qword_10016AD38, &qword_1001332F0);
        if ((v49)(v55, 1, v50) == 1)
        {
          sub_10002BA6C(v55, &qword_10016AD38, &qword_1001332F0);
          goto LABEL_24;
        }

        if (qword_10016A468 != -1)
        {
          swift_once();
        }

        sub_10002FD14(v53, qword_100173570);
        sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350);
        sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360);
        v74 = v92;
        ExpressionType<>.sum.getter();
        v75 = v97;
        v78 = v104;
        Row.get<A>(_:)();
        v104 = v78;
        if (!v78)
        {
          (*(v103 + 8))(v74, v53);
          (*(v48 + 8))(v75, v50);
          v43 = v107;
          if (v106 != 1)
          {
            v57 = v105;
            v56 = v95;
            goto LABEL_25;
          }

LABEL_24:
          v56 = v95;
          v57 = 0;
LABEL_25:
          sub_10002BA04(v43, v56, &qword_10016AD38, &qword_1001332F0);
          if ((v49)(v56, 1, v50) == 1)
          {
            sub_10002BA6C(v56, &qword_10016AD38, &qword_1001332F0);
            goto LABEL_27;
          }

          v97 = v57;
          if (qword_10016A470 != -1)
          {
            swift_once();
          }

          sub_10002FD14(v53, qword_100173588);
          sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350);
          sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360);
          v74 = v91;
          ExpressionType<>.sum.getter();
          v75 = v95;
          v79 = v104;
          Row.get<A>(_:)();
          v104 = v79;
          if (!v79)
          {
            (*(v103 + 8))(v74, v53);
            (*(v48 + 8))(v75, v50);
            v43 = v107;
            if (v106 != 1)
            {
              v58 = v105;
              v57 = v97;
LABEL_28:
              v59 = v43;
              v60 = v93;
              sub_10002BA04(v59, v93, &qword_10016AD38, &qword_1001332F0);
              if ((v49)(v60, 1, v50) == 1)
              {
                sub_10002BA6C(v60, &qword_10016AD38, &qword_1001332F0);
                v61 = v104;
              }

              else
              {
                if (qword_10016A478 != -1)
                {
                  swift_once();
                }

                v80 = v102;
                sub_10002FD14(v102, qword_1001735A0);
                sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350);
                sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360);
                v81 = v90;
                ExpressionType<>.sum.getter();
                v82 = v93;
                v61 = v104;
                Row.get<A>(_:)();
                if (v61)
                {

                  (*(v103 + 8))(v81, v80);
                  sub_10002BA6C(v107, &qword_10016AD38, &qword_1001332F0);
                  return (*(v48 + 8))(v82, v89);
                }

                (*(v103 + 8))(v81, v80);
                (*(v48 + 8))(v82, v89);
                if (v106 != 1)
                {
                  v62 = v105;
LABEL_31:
                  v63 = sub_10006FA34();
                  result = sub_10002BA6C(v107, &qword_10016AD38, &qword_1001332F0);
                  if (v61)
                  {
                  }

                  v83 = v101;
                  v84 = v87;
                  *v101 = v98;
                  v83[1] = v84;
                  v85 = v99;
                  v83[2] = v100;
                  v83[3] = v85;
                  v83[4] = v57;
                  v83[5] = v58;
                  v83[6] = v62;
                  v83[7] = v63;
                  return result;
                }
              }

              v62 = 0;
              goto LABEL_31;
            }

            v57 = v97;
LABEL_27:
            v58 = 0;
            goto LABEL_28;
          }
        }

LABEL_59:

        (*(v103 + 8))(v74, v53);
        sub_10002BA6C(v107, &qword_10016AD38, &qword_1001332F0);
        v67 = *(v48 + 8);
        v68 = v75;
        v73 = v50;
        return v67(v68, v73);
      }

LABEL_18:
      v53 = v102;
      v100 = 0;
      goto LABEL_19;
    }

    (*(v103 + 8))(v70, v69);
    sub_10002BA6C(v107, &qword_10016AD38, &qword_1001332F0);
    v67 = *(v48 + 8);
    v68 = v71;
LABEL_41:
    v73 = v89;
    return v67(v68, v73);
  }

  return result;
}

uint64_t sub_100066630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_10016A3F8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Table();
  sub_10002FD14(v5, qword_100173420);
  v6 = sub_10006F960(&qword_10016AD20);
  v7._countAndFlagsBits = QueryType.name.getter();
  v8 = Connection.tableExists(_:)(v7);

  if (v8)
  {
    result = sub_10006F094(a1);
    if (!v2)
    {
      if (qword_10016A450 != -1)
      {
        swift_once();
      }

      v10 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
      sub_10002FD14(v10, qword_100173528);
      v22[3] = v10;
      v24 = sub_10002B95C(&qword_10016B6F8, &qword_10016B6C8, &unk_100131350);
      v22[4] = v24;
      sub_100042BAC(v22);
      sub_10002B95C(&qword_10016B6D0, &qword_10016B6C8, &unk_100131350);
      sub_10002B95C(&qword_10016B6D8, &qword_10016B6E0, &qword_100131360);
      ExpressionType<>.sum.getter();
      sub_100026F94(&qword_10016AD50, &qword_100130C90);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100131210;
      if (qword_10016A458 != -1)
      {
        swift_once();
      }

      sub_10002FD14(v10, qword_100173540);
      v12 = v24;
      *(v11 + 56) = v10;
      *(v11 + 64) = v12;
      sub_100042BAC((v11 + 32));
      ExpressionType<>.sum.getter();
      if (qword_10016A460 != -1)
      {
        swift_once();
      }

      sub_10002FD14(v10, qword_100173558);
      v13 = v24;
      *(v11 + 96) = v10;
      *(v11 + 104) = v13;
      sub_100042BAC((v11 + 72));
      ExpressionType<>.sum.getter();
      if (qword_10016A468 != -1)
      {
        swift_once();
      }

      sub_10002FD14(v10, qword_100173570);
      v14 = v24;
      *(v11 + 136) = v10;
      *(v11 + 144) = v14;
      sub_100042BAC((v11 + 112));
      ExpressionType<>.sum.getter();
      if (qword_10016A470 != -1)
      {
        swift_once();
      }

      sub_10002FD14(v10, qword_100173588);
      v15 = v24;
      *(v11 + 176) = v10;
      *(v11 + 184) = v15;
      sub_100042BAC((v11 + 152));
      ExpressionType<>.sum.getter();
      if (qword_10016A478 != -1)
      {
        swift_once();
      }

      sub_10002FD14(v10, qword_1001735A0);
      v16 = v24;
      *(v11 + 216) = v10;
      *(v11 + 224) = v16;
      sub_100042BAC((v11 + 192));
      ExpressionType<>.sum.getter();
      v23[3] = v5;
      v23[4] = v6;
      sub_100042BAC(v23);
      sub_10006F960(&qword_10016AD68);
      SchemaType.select(_:_:)();

      sub_100026FDC(v22);
      Connection.pluck(_:)();
      return sub_100026FDC(v23);
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for OSLogger();
    sub_10002FD14(v17, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v18 = *(type metadata accessor for LogMessage() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    v21 = type metadata accessor for Row();
    return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
  }

  return result;
}

void *sub_100066CB8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for Table();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  if (qword_10016A3F0 != -1)
  {
    swift_once();
  }

  v15 = sub_10002FD14(v7, qword_100173408);
  (*(v8 + 16))(v14, v15, v7);
  v16 = sub_10006F960(&qword_10016AD20);
  v61 = v7;
  v57 = v16;
  v17._countAndFlagsBits = QueryType.name.getter();
  v18 = Connection.tableExists(_:)(v17);

  if (v18)
  {
    v54 = a1;
    v49 = a2;
    v50 = v4;
    v58 = v14;
    v56 = v3;
    if (qword_10016A440 != -1)
    {
      swift_once();
    }

    v19 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    v20 = sub_10002FD14(v19, qword_1001734F8);
    v59[3] = v19;
    v21 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
    v59[4] = v21;
    v22 = sub_100042BAC(v59);
    v23 = *(*(v19 - 8) + 16);
    v53 = v20;
    v24 = v20;
    v25 = v23;
    v23(v22, v24, v19);
    sub_100026F94(&qword_10016AD50, &qword_100130C90);
    v26 = swift_allocObject();
    v52 = xmmword_100130B20;
    *(v26 + 16) = xmmword_100130B20;
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    v55 = v8;
    v27 = sub_10002FD14(v19, qword_1001734B0);
    *(v26 + 56) = v19;
    *(v26 + 64) = v21;
    v28 = sub_100042BAC((v26 + 32));
    v25(v28, v27, v19);
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    v29 = sub_10002FD14(v19, qword_100173510);
    v51 = v29;
    *(v26 + 96) = v19;
    *(v26 + 104) = v21;
    v30 = sub_100042BAC((v26 + 72));
    v25(v30, v29, v19);
    sub_10006F960(&qword_10016AD68);
    v31 = v25;
    v32 = v61;
    SchemaType.select(_:_:)();

    sub_100026FDC(v59);
    v33 = swift_allocObject();
    *(v33 + 16) = v52;
    *(v33 + 56) = v19;
    *(v33 + 64) = v21;
    v34 = sub_100042BAC((v33 + 32));
    v31(v34, v53, v19);
    *(v33 + 96) = v19;
    *(v33 + 104) = v21;
    v35 = sub_100042BAC((v33 + 72));
    v31(v35, v51, v19);
    v60[3] = v32;
    v60[4] = v57;
    sub_100042BAC(v60);
    QueryType.group(_:)();

    v36 = *(v55 + 8);
    v36(v12, v32);
    v37 = v56;
    Connection.prepare(_:)();
    if (v37)
    {
      v36(v58, v32);
      return sub_100026FDC(v60);
    }

    else
    {
      v43 = sub_100026FDC(v60);
      v44 = __chkstk_darwin(v43);
      v45 = v50;
      *(&v48 - 2) = v49;
      *(&v48 - 1) = v45;
      __chkstk_darwin(v44);
      *(&v48 - 2) = sub_100070450;
      *(&v48 - 1) = v46;
      v47 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v36(v58, v61);
      return v47;
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for OSLogger();
    sub_10002FD14(v39, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v40 = *(type metadata accessor for LogMessage() - 8);
    v41 = *(v40 + 72);
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    (*(v8 + 8))(v14, v61);
    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1000673E4(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v2[24] = *v1;
  v3 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v2[26] = v4;
  v5 = *(v4 - 8);
  v2[27] = v5;
  v6 = *(v5 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_100067504, v1, 0);
}

uint64_t sub_100067504()
{
  v32 = v0;
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[22];
  v3 = type metadata accessor for OSSignposter();
  sub_10002FD14(v3, qword_10016B5C8);
  sub_10007048C(v2, (v0 + 2));
  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  sub_1000704E8(v2);
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = v0[29];
    v7 = v0[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10006CB64(*v7, *(v7 + 8), &v31);
    v10 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v10, "scheduleNotification", "requestId=%s", v8, 0xCu);
    sub_100026FDC(v9);
  }

  v11 = v0[29];
  v12 = v0[26];
  v13 = v0[27];
  (*(v13 + 16))(v0[28], v11, v12);
  v14 = type metadata accessor for OSSignpostIntervalState();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[30] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v13 + 8))(v11, v12);
  if (qword_10016A3D8 != -1)
  {
    swift_once();
  }

  v17 = v0[25];
  v18 = v0[22];
  v19 = v0[23];
  v20 = type metadata accessor for OSLogger();
  sub_10002FD14(v20, qword_10016B5B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v21 = *(type metadata accessor for LogMessage() - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._object = 0x800000010013AF00;
  v24._countAndFlagsBits = 0xD00000000000001DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  v26 = *v18;
  v25 = v18[1];
  v0[21] = &type metadata for String;
  v0[18] = v26;
  v0[19] = v25;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 18), &qword_10016AB10, &unk_100130B10);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v28 = sub_100026F50((v19 + 112), *(v19 + 136));
  v29 = *v28;
  v0[31] = *v28;
  sub_10007048C(v18, (v0 + 10));

  return _swift_task_switch(sub_1000678C8, v29, 0);
}

uint64_t sub_1000678C8()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *v3 = v0;
  v3[1] = sub_1000679C4;
  v4 = *(v0 + 248);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000679C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  *(v4 + 264) = a1;
  *(v4 + 272) = v1;

  v7 = *(v3 + 248);
  if (v1)
  {
    v8 = sub_100067BDC;
  }

  else
  {
    v8 = sub_100067AF8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100067AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[31];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[33];
  v9 = v3[34];
  v10 = v3[24];
  v11 = v3[22];
  *(v4 + 216) = v7;
  sub_100067D9C(v8, v11);
  v12 = v3[33];

  v13 = *(v4 + 216);
  v6 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  v15 = v6;
  if (v9)
  {
    if ((v15 & 1) == 0)
    {
      *(v4 + 216) = v14;
      v3[35] = v9;
      v16 = v3[23];
      sub_1000704E8(v3[22]);
      v17 = sub_100067CF4;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v15)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v18 = v3[22];
  v16 = v3[23];
  *(v4 + 216) = v14;
  sub_1000704E8(v18);
  v17 = sub_100067C4C;
LABEL_10:
  a1 = v17;
  a2 = v16;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100067BDC()
{
  v0[35] = v0[34];
  v1 = v0[23];
  sub_1000704E8(v0[22]);

  return _swift_task_switch(sub_100067CF4, v1, 0);
}

uint64_t sub_100067C4C()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[25];
  sub_100070154("scheduleNotification", 20, 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100067CF4()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[25];
  sub_100070154("scheduleNotification", 20, 2);

  v5 = v0[1];
  v6 = v0[35];

  return v5();
}

uint64_t sub_100067D9C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v32[1] = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OnConflict();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Insert();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A408 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Table();
  sub_10002FD14(v15, qword_100173450);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (!v2)
  {
    v32[0] = a1;

    v17 = v35;
    (*(v35 + 104))(v10, enum case for OnConflict.replace(_:), v7);
    v38[3] = &type metadata for ScheduledNotification;
    v38[4] = sub_10007053C();
    v18 = swift_allocObject();
    v38[0] = v18;
    v19 = v39;
    v20 = *(v39 + 16);
    v18[1] = *v39;
    v18[2] = v20;
    v21 = *(v19 + 48);
    v18[3] = *(v19 + 32);
    v18[4] = v21;
    sub_10007048C(v19, v36);
    sub_10006F770(_swiftEmptyArrayStorage);
    sub_10006F960(&qword_10016AD20);
    QueryType.insert(or:encodable:userInfo:otherSetters:)();
    (*(v17 + 8))(v10, v7);

    sub_100026FDC(v38);
    v22 = Connection.run(_:)();
    (*(v33 + 8))(v14, v34);
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for OSLogger();
    sub_10002FD14(v23, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v24 = *(type metadata accessor for LogMessage() - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v27._object = 0x800000010013AF20;
    v27._countAndFlagsBits = 0xD00000000000001CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    v29 = *v39;
    v28 = *(v39 + 8);
    v37 = &type metadata for String;
    v36[0] = v29;
    v36[1] = v28;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v36, &qword_10016AB10, &unk_100130B10);
    v30._countAndFlagsBits = 0x746C75736572202CLL;
    v30._object = 0xEA0000000000203ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    v37 = &type metadata for Int64;
    v36[0] = v22;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v36, &qword_10016AB10, &unk_100130B10);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();
  }
}

uint64_t sub_100068334(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 48) = a2;
  *(v6 + 56) = a4;
  *(v6 + 192) = a3;
  *(v6 + 40) = a1;
  *(v6 + 80) = *v5;
  v7 = type metadata accessor for OSSignpostID();
  *(v6 + 88) = v7;
  v8 = *(v7 - 8);
  *(v6 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100068440, v5, 0);
}

uint64_t sub_100068440()
{
  v34 = v0;
  v1 = *(v0 + 64);
  if (v1)
  {
    if (qword_10016A3E0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 120);
    v3 = type metadata accessor for OSSignposter();
    sub_10002FD14(v3, qword_10016B5C8);

    static OSSignpostID.exclusive.getter();
    v4 = OSSignposter.logHandle.getter();
    v5 = static os_signpost_type_t.begin.getter();
    v6 = OS_os_log.signpostsEnabled.getter();
    if (v6)
    {
      v9 = *(v0 + 40);
      if (*(v0 + 192))
      {
        if (!HIDWORD(v9))
        {
          if ((*(v0 + 40) & 0xFFFFF800) == 0xD800)
          {
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          if (v9 >> 16 <= 0x10)
          {
            v10 = (v0 + 32);

            goto LABEL_19;
          }

          goto LABEL_32;
        }
      }

      else
      {

        if (v9)
        {
          v10 = *(v0 + 40);
LABEL_19:
          v14 = *(v0 + 120);
          v15 = *(v0 + 56);
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v33 = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_10006CB64(v15, v1, &v33);
          v18 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v18, v10, "requestId=%s", v16, 0xCu);
          sub_100026FDC(v17);

          goto LABEL_20;
        }

        __break(1u);
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_14:

LABEL_20:
    v19 = *(v0 + 112);
    v20 = *(v0 + 120);
    v21 = *(v0 + 88);
    v22 = *(v0 + 96);
    goto LABEL_27;
  }

  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 104);
  v12 = type metadata accessor for OSSignposter();
  sub_10002FD14(v12, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v1 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  v6 = OS_os_log.signpostsEnabled.getter();
  if (v6)
  {
    v13 = *(v0 + 40);
    if (*(v0 + 192))
    {
      if (v13 >> 32)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if ((*(v0 + 40) & 0xFFFFF800) == 0xD800)
      {
LABEL_36:
        __break(1u);
        return _swift_task_switch(v6, v7, v8);
      }

      if (v13 >> 16 > 0x10)
      {
        goto LABEL_34;
      }

      v13 = (v0 + 24);
    }

    else if (!v13)
    {
      __break(1u);
      goto LABEL_14;
    }

    v23 = *(v0 + 104);
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, v4, v25, v13, "", v24, 2u);
  }

  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v21 = *(v0 + 88);
  v22 = *(v0 + 96);
  v1 = *(v0 + 64);
LABEL_27:
  (*(v22 + 16))(v19, v20, v21);
  v26 = type metadata accessor for OSSignpostIntervalState();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v22 + 8))(v20, v21);
  *(v0 + 128) = v1;
  *(v0 + 136) = v29;
  v30 = sub_100026F50((*(v0 + 72) + 112), *(*(v0 + 72) + 136));
  v31 = *v30;
  *(v0 + 144) = *v30;

  v6 = sub_100068818;
  v7 = v31;
  v8 = 0;

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100068818()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_100068914;
  v4 = *(v0 + 144);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100068914(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v7 = *(v3 + 144);
  if (v1)
  {
    v8 = sub_100068B44;
  }

  else
  {
    v8 = sub_100068A48;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100068A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[18];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[20];
  v9 = v3[21];
  v10 = v3[10];
  v11 = v3[7];
  v12 = v3[8];
  *(v4 + 216) = v7;
  sub_10006BA30(v8, v11, v12, v3 + 2);
  v13 = v3[20];

  v14 = *(v4 + 216);
  v6 = __OFSUB__(v14, 1);
  v15 = v14 - 1;
  v16 = v6;
  if (v9)
  {
    if ((v16 & 1) == 0)
    {
      v17 = v3[16];
      *(v4 + 216) = v15;

      v3[23] = v9;
      a2 = v3[9];
      a1 = sub_100068C58;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v16)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v18 = v3[16];
  v19 = v3[9];
  *(v4 + 216) = v15;

  v3[22] = v3[2];
  a1 = sub_100068BB4;
  a2 = v19;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100068B44()
{
  v1 = v0[16];

  v0[23] = v0[21];
  v2 = v0[9];

  return _swift_task_switch(sub_100068C58, v2, 0);
}

uint64_t sub_100068BB4()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  sub_100070154(*(v0 + 40), *(v0 + 48), *(v0 + 192));

  v5 = *(v0 + 8);
  v6 = *(v0 + 176);

  return v5(v6);
}

uint64_t sub_100068C58()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  sub_100070154(*(v0 + 40), *(v0 + 48), *(v0 + 192));

  v5 = *(v0 + 8);
  v6 = *(v0 + 184);

  return v5();
}

uint64_t sub_100068CF8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = v5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a4;
  *(v6 + 176) = a3;
  *(v6 + 32) = a1;
  *(v6 + 72) = *v5;
  v7 = type metadata accessor for OSSignpostID();
  *(v6 + 80) = v7;
  v8 = *(v7 - 8);
  *(v6 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_100068E04, v5, 0);
}

uint64_t sub_100068E04()
{
  v34 = v0;
  v1 = *(v0 + 56);
  if (v1)
  {
    if (qword_10016A3E0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 112);
    v3 = type metadata accessor for OSSignposter();
    sub_10002FD14(v3, qword_10016B5C8);

    static OSSignpostID.exclusive.getter();
    v4 = OSSignposter.logHandle.getter();
    v5 = static os_signpost_type_t.begin.getter();
    v6 = OS_os_log.signpostsEnabled.getter();
    if (v6)
    {
      v9 = *(v0 + 32);
      if (*(v0 + 176))
      {
        if (!HIDWORD(v9))
        {
          if ((*(v0 + 32) & 0xFFFFF800) == 0xD800)
          {
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          if (v9 >> 16 <= 0x10)
          {
            v10 = (v0 + 24);

            goto LABEL_19;
          }

          goto LABEL_32;
        }
      }

      else
      {

        if (v9)
        {
          v10 = *(v0 + 32);
LABEL_19:
          v14 = *(v0 + 112);
          v15 = *(v0 + 48);
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v33 = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_10006CB64(v15, v1, &v33);
          v18 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v18, v10, "requestId=%s", v16, 0xCu);
          sub_100026FDC(v17);

          goto LABEL_20;
        }

        __break(1u);
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_14:

LABEL_20:
    v19 = *(v0 + 104);
    v20 = *(v0 + 112);
    v21 = *(v0 + 80);
    v22 = *(v0 + 88);
    goto LABEL_27;
  }

  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 96);
  v12 = type metadata accessor for OSSignposter();
  sub_10002FD14(v12, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v1 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  v6 = OS_os_log.signpostsEnabled.getter();
  if (v6)
  {
    v13 = *(v0 + 32);
    if (*(v0 + 176))
    {
      if (v13 >> 32)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if ((*(v0 + 32) & 0xFFFFF800) == 0xD800)
      {
LABEL_36:
        __break(1u);
        return _swift_task_switch(v6, v7, v8);
      }

      if (v13 >> 16 > 0x10)
      {
        goto LABEL_34;
      }

      v13 = (v0 + 16);
    }

    else if (!v13)
    {
      __break(1u);
      goto LABEL_14;
    }

    v23 = *(v0 + 96);
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, v4, v25, v13, "", v24, 2u);
  }

  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v21 = *(v0 + 80);
  v22 = *(v0 + 88);
  v1 = *(v0 + 56);
LABEL_27:
  (*(v22 + 16))(v19, v20, v21);
  v26 = type metadata accessor for OSSignpostIntervalState();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v22 + 8))(v20, v21);
  *(v0 + 120) = v1;
  *(v0 + 128) = v29;
  v30 = sub_100026F50((*(v0 + 64) + 112), *(*(v0 + 64) + 136));
  v31 = *v30;
  *(v0 + 136) = *v30;

  v6 = sub_1000691DC;
  v7 = v31;
  v8 = 0;

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000691DC()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_1000692D8;
  v4 = *(v0 + 136);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_1000692D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v7 = *(v3 + 136);
  if (v1)
  {
    v8 = sub_1000694FC;
  }

  else
  {
    v8 = sub_10006940C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10006940C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[17];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[19];
  v9 = v3[20];
  v10 = v3[9];
  v11 = v3[6];
  v12 = v3[7];
  *(v4 + 216) = v7;
  sub_10006C01C(v8, v11, v12, v10);
  v13 = v3[19];

  v14 = *(v4 + 216);
  v6 = __OFSUB__(v14, 1);
  v15 = v14 - 1;
  v16 = v6;
  if (v9)
  {
    if ((v16 & 1) == 0)
    {
      v17 = v3[15];
      *(v4 + 216) = v15;

      v3[21] = v9;
      a2 = v3[8];
      a1 = sub_10006960C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v16)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v18 = v3[15];
  v19 = v3[8];
  *(v4 + 216) = v15;

  a1 = sub_10006956C;
  a2 = v19;
LABEL_10:
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000694FC()
{
  v1 = v0[15];

  v0[21] = v0[20];
  v2 = v0[8];

  return _swift_task_switch(sub_10006960C, v2, 0);
}

uint64_t sub_10006956C()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  sub_100070154(*(v0 + 32), *(v0 + 40), *(v0 + 176));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10006960C()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  sub_100070154(*(v0 + 32), *(v0 + 40), *(v0 + 176));

  v5 = *(v0 + 8);
  v6 = *(v0 + 168);

  return v5();
}

uint64_t sub_1000696AC()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000697A0, v0, 0);
}

uint64_t sub_1000697A0()
{
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016B5C8);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "bundleAgnosticDataOwnershipIndex", "", v6, 2u);
  }

  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[3];

  (*(v11 + 16))(v8, v9, v10);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[9] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v16 = sub_100026F50((v12 + 112), *(v12 + 136));
  v17 = *v16;
  v0[10] = *v16;

  return _swift_task_switch(sub_100069964, v17, 0);
}

uint64_t sub_100069964()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_100069A60;
  v4 = *(v0 + 80);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100069A60(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v7 = *(v3 + 80);
  if (v1)
  {
    v8 = sub_100069C78;
  }

  else
  {
    v8 = sub_100069B94;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100069B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[10];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[12];
  v9 = v3[13];
  v10 = v3[4];
  *(v4 + 216) = v7;
  sub_100069DD8(v8, v10, v3 + 2);

  v11 = *(v4 + 216);
  v6 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  v13 = v6;
  if (v9)
  {
    if ((v13 & 1) == 0)
    {
      *(v4 + 216) = v12;
      v3[15] = v9;
      a2 = v3[3];
      v14 = sub_100069D3C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v13)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  a2 = v3[3];
  *(v4 + 216) = v12;
  v3[14] = v3[2];
  v14 = sub_100069C9C;
LABEL_10:
  a1 = v14;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100069C9C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_100070154("bundleAgnosticDataOwnershipIndex", 32, 2);

  v4 = v0[1];
  v5 = v0[14];

  return v4(v5);
}

uint64_t sub_100069D3C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_100070154("bundleAgnosticDataOwnershipIndex", 32, 2);

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t sub_100069DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a3;
  v6 = type metadata accessor for Table();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  if (qword_10016A3F0 != -1)
  {
    swift_once();
  }

  v13 = sub_10002FD14(v6, qword_100173408);
  (*(v7 + 16))(v12, v13, v6);
  v14 = sub_10006F960(&qword_10016AD20);
  v49 = v12;
  v15._countAndFlagsBits = QueryType.name.getter();
  v16 = Connection.tableExists(_:)(v15);

  if (v16)
  {
    v42 = a2;
    v43 = a1;
    v44 = v7;
    sub_100026F94(&qword_10016B6C0, &qword_100131340);
    v17 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    v18 = *(v17 - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100131220;
    v22 = v21 + v20;
    if (qword_10016A420 != -1)
    {
      swift_once();
    }

    v45 = v3;
    v23 = sub_10002FD14(v17, qword_100173498);
    v24 = *(v18 + 16);
    v24(v22, v23, v17);
    if (qword_10016A440 != -1)
    {
      swift_once();
    }

    v25 = sub_10002FD14(v17, qword_1001734F8);
    v24(v22 + v19, v25, v17);
    if (qword_10016A438 != -1)
    {
      swift_once();
    }

    v26 = sub_10002FD14(v17, qword_1001734E0);
    v24(v22 + 2 * v19, v26, v17);
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    v27 = sub_10002FD14(v17, qword_100173510);
    v24(v22 + 3 * v19, v27, v17);
    sub_10006A624(v21);
    sub_10006F960(&qword_10016AD68);
    v28 = v46;
    v29 = v49;
    SchemaType.select(_:)();

    sub_10006A624(v21);

    v48[3] = v6;
    v48[4] = v14;
    sub_100042BAC(v48);
    QueryType.group(_:)();

    v30 = *(v44 + 8);
    v30(v28, v6);
    v31 = v45;
    Connection.prepare(_:)();
    if (v31)
    {
      v30(v29, v6);
      return sub_100026FDC(v48);
    }

    else
    {
      v37 = sub_100026FDC(v48);
      v38 = __chkstk_darwin(v37);
      *(&v41 - 2) = v42;
      __chkstk_darwin(v38);
      *(&v41 - 2) = sub_100070430;
      *(&v41 - 1) = v39;
      v40 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      result = (v30)(v49, v6);
      *v47 = v40;
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for OSLogger();
    sub_10002FD14(v33, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v34 = *(type metadata accessor for LogMessage() - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    result = (*(v7 + 8))(v49, v6);
    *v47 = _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_10006A4E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EA6C(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v8 = *(v3 - 3);
      v9 = *(v3 - 2);
      v10 = *(v3 - 1);
      v11 = *v3;

      sub_100026F94(&qword_10016B728, &unk_1001313B0);
      sub_100026F94(&qword_10016B730, &qword_1001321B0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_10007EA6C((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[4 * v5];
      v6[4] = v12;
      v6[5] = v13;
      v6[6] = v14;
      v6[7] = v15;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10006A624(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_10007EA8C(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v9 = v11;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v18 = *(v10 + 56);
    do
    {
      v9(v6, v12, v2);
      v22 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_10007EA8C((v13 > 1), v14 + 1, 1);
        v8 = v22;
      }

      v20 = v2;
      v21 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
      v15 = sub_100042BAC(&v19);
      v9(v15, v6, v2);
      v8[2] = v14 + 1;
      sub_10002C604(&v19, &v8[5 * v14 + 4]);
      (*(v10 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

double sub_10006A820@<D0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  if (qword_10016A420 != -1)
  {
    swift_once();
  }

  v5 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v5, qword_100173498);
  Row.get<A>(_:)();
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v7 = v21;
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_100173510);
    Row.get<A>(_:)();
    *(&v17 + 1) = &type metadata for ClientInfo.MuteEntitlementChecker;
    *&v14 = 0;
    *(&v14 + 1) = 0xE000000000000000;
    v15 = v13;
    *&v18 = sub_10006F9E0();
    *(&v18 + 1) = sub_10008AF60;
    v19 = 0;
    if (qword_10016A438 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_1001734E0);
    Row.get<A>(_:)();
    if (qword_10016A440 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_1001734F8);
    Row.get<A>(_:)();
    *a2 = v20;
    *(a2 + 8) = v7;
    v8 = v17;
    *(a2 + 48) = v16;
    *(a2 + 64) = v8;
    *(a2 + 80) = v18;
    v9 = v19;
    result = *&v14;
    v10 = v15;
    *(a2 + 16) = v14;
    *(a2 + 32) = v10;
    *(a2 + 96) = v9;
    *(a2 + 104) = v13;
    *(a2 + 120) = v11;
    *(a2 + 128) = v12;
  }

  return result;
}

uint64_t sub_10006AAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v65 = a2;
  v72 = a4;
  v7 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v67 = &v60 - v9;
  v68 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v66 = *(v68 - 8);
  v10 = *(v66 + 64);
  __chkstk_darwin(v68);
  v62 = &v60 - v11;
  v12 = type metadata accessor for Table();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v71 = &v60 - v19;
  __chkstk_darwin(v18);
  v21 = &v60 - v20;
  if (qword_10016A3F0 != -1)
  {
    swift_once();
  }

  v22 = sub_10002FD14(v12, qword_100173408);
  v76 = v13;
  v64 = *(v13 + 16);
  v64(v21, v22, v12);
  v63 = sub_10006F960(&qword_10016AD20);
  v23._countAndFlagsBits = QueryType.name.getter();
  v69 = a1;
  v24 = Connection.tableExists(_:)(v23);

  if (v24)
  {
    v60 = a3;
    v61 = v4;
    v70 = v21;
    if (qword_10016A420 != -1)
    {
      swift_once();
    }

    v25 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    v26 = sub_10002FD14(v25, qword_100173498);
    v74 = v25;
    v27 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
    v75 = v27;
    v28 = sub_100042BAC(v73);
    v29 = *(*(v25 - 8) + 16);
    v29(v28, v26, v25);
    sub_100026F94(&qword_10016AD50, &qword_100130C90);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100131220;
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    v31 = sub_10002FD14(v25, qword_1001734B0);
    *(v30 + 56) = v25;
    *(v30 + 64) = v27;
    v32 = sub_100042BAC((v30 + 32));
    v29(v32, v31, v25);
    if (qword_10016A438 != -1)
    {
      swift_once();
    }

    v33 = sub_10002FD14(v25, qword_1001734E0);
    *(v30 + 96) = v25;
    *(v30 + 104) = v27;
    v34 = sub_100042BAC((v30 + 72));
    v29(v34, v33, v25);
    if (qword_10016A440 != -1)
    {
      swift_once();
    }

    v35 = sub_10002FD14(v25, qword_1001734F8);
    *(v30 + 136) = v25;
    *(v30 + 144) = v27;
    v36 = sub_100042BAC((v30 + 112));
    v29(v36, v35, v25);
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    v37 = sub_10002FD14(v25, qword_100173510);
    *(v30 + 176) = v25;
    *(v30 + 184) = v27;
    v38 = sub_100042BAC((v30 + 152));
    v29(v38, v37, v25);
    sub_10006F960(&qword_10016AD68);
    v39 = v71;
    SchemaType.select(_:_:)();

    sub_100026FDC(v73);
    v40 = v67;
    sub_10002BA04(v65, v67, &qword_10016ADF8, &unk_1001312B0);
    v41 = v66;
    v42 = v68;
    if ((*(v66 + 48))(v40, 1, v68) == 1)
    {
      sub_10002BA6C(v40, &qword_10016ADF8, &unk_1001312B0);
      v43 = v61;
      v44 = v72;
      v45 = v76;
      v46 = v63;
    }

    else
    {
      v52 = v62;
      (*(v41 + 32))(v62, v40, v42);
      v46 = v63;
      QueryType.where(_:)();
      (*(v41 + 8))(v52, v42);
      v45 = v76;
      (*(v76 + 8))(v39, v12);
      (*(v45 + 32))(v39, v17, v12);
      v43 = v61;
      v44 = v72;
    }

    v74 = v12;
    v75 = v46;
    v53 = sub_100042BAC(v73);
    v64(v53, v39, v12);
    Connection.prepare(_:)();
    if (v43)
    {
      v54 = *(v45 + 8);
      v54(v39, v12);
      v54(v70, v12);
      return sub_100026FDC(v73);
    }

    else
    {
      v55 = sub_100026FDC(v73);
      v56 = __chkstk_darwin(v55);
      *(&v60 - 2) = v60;
      __chkstk_darwin(v56);
      *(&v60 - 2) = sub_10006F9A4;
      *(&v60 - 1) = v57;
      v58 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v59 = *(v76 + 8);
      v59(v71, v12);
      result = (v59)(v70, v12);
      *v44 = v58;
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for OSLogger();
    sub_10002FD14(v47, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v48 = *(type metadata accessor for LogMessage() - 8);
    v49 = *(v48 + 72);
    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    result = (*(v76 + 8))(v21, v12);
    *v72 = _swiftEmptyArrayStorage;
  }

  return result;
}

double sub_10006B490@<D0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  if (qword_10016A420 != -1)
  {
    swift_once();
  }

  v5 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v5, qword_100173498);
  Row.get<A>(_:)();
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v7 = v20;
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_1001734B0);
    Row.get<A>(_:)();
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_100173510);
    Row.get<A>(_:)();
    *(&v16 + 1) = &type metadata for ClientInfo.MuteEntitlementChecker;
    v13 = v12;
    v14 = v11;
    *&v17 = sub_10006F9E0();
    *(&v17 + 1) = sub_10008AF60;
    v18 = 0;
    if (qword_10016A438 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_1001734E0);
    Row.get<A>(_:)();
    if (qword_10016A440 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v5, qword_1001734F8);
    Row.get<A>(_:)();
    *a2 = v19;
    *(a2 + 8) = v7;
    v8 = v16;
    *(a2 + 48) = v15;
    *(a2 + 64) = v8;
    *(a2 + 80) = v17;
    v9 = v18;
    result = *&v13;
    v10 = v14;
    *(a2 + 16) = v13;
    *(a2 + 32) = v10;
    *(a2 + 96) = v9;
    *(a2 + 104) = v12;
    *(a2 + 120) = v11;
  }

  return result;
}

uint64_t sub_10006B7D0@<X0>(void *a1@<X1>, void *a2@<X3>, void *a3@<X8>)
{
  v6 = sub_100026F50(a1, a1[3]);
  if (qword_10016A440 != -1)
  {
    swift_once();
  }

  v7 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v7, qword_1001734F8);
  result = Row.get<A>(_:)();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    if (qword_10016A428 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v7, qword_1001734B0);
    Row.get<A>(_:)();
    v17 = v14;
    if (qword_10016A448 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v7, qword_100173510);
    Row.get<A>(_:)();
    v16[7] = &type metadata for ClientInfo.MuteEntitlementChecker;
    v16[0] = v17;
    v16[1] = v15;
    v16[2] = v12;
    v16[3] = v13;
    v16[8] = sub_10006F9E0();
    v16[9] = sub_10008AF60;
    v16[10] = 0;
    v9 = *v6;
    sub_1000528EC(v16[11], v16[12], v16);
    v11 = v10;

    result = sub_100042AFC(v16);
    *a3 = v11;
  }

  return result;
}

uint64_t sub_10006BA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = a3;
  v38 = a2;
  v45 = a4;
  v5 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  __chkstk_darwin(v5);
  v39 = &v38 - v7;
  v8 = type metadata accessor for Table();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v44 = &v38 - v15;
  __chkstk_darwin(v14);
  v17 = &v38 - v16;
  if (qword_10016A408 != -1)
  {
    swift_once();
  }

  v18 = sub_10002FD14(v8, qword_100173450);
  v19 = *(v9 + 16);
  v19(v17, v18, v8);
  v20 = sub_10006F960(&qword_10016AD20);
  v46 = v17;
  v21._countAndFlagsBits = QueryType.name.getter();
  v43 = a1;
  v22 = Connection.tableExists(_:)(v21);

  if (v22)
  {
    v23 = v42;
    if (v42)
    {
      v24 = v46;
      if (qword_10016A420 != -1)
      {
        swift_once();
      }

      v25 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
      sub_10002FD14(v25, qword_100173498);
      v26 = v39;
      v47[0] = v38;
      v47[1] = v23;
      static Expression<A>.== infix<A>(_:_:)();
      QueryType.where(_:)();
      (*(v40 + 8))(v26, v41);
    }

    else
    {
      v24 = v46;
      v19(v13, v46, v8);
    }

    v32 = v44;
    (*(v9 + 32))(v44, v13, v8);
    v47[3] = v8;
    v47[4] = v20;
    v33 = sub_100042BAC(v47);
    v19(v33, v32, v8);
    v34 = v47[6];
    Connection.prepare(_:)();
    if (v34)
    {
      v35 = *(v9 + 8);
      v35(v32, v8);
      v35(v24, v8);
      return sub_100026FDC(v47);
    }

    else
    {
      sub_100026FDC(v47);
      v36 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v37 = *(v9 + 8);
      v37(v32, v8);
      result = (v37)(v24, v8);
      *v45 = v36;
    }
  }

  else
  {
    if (qword_10016A3D8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for OSLogger();
    sub_10002FD14(v27, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v28 = *(type metadata accessor for LogMessage() - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    result = (*(v9 + 8))(v46, v8);
    *v45 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10006C7F8()
{
  sub_100026FDC((v0 + 112));
  sub_100026FDC((v0 + 152));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10006C85C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t *))
{
  result = a2(a1, &v5);
  if (v2)
  {
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    result = swift_allocError();
    *v4 = v5;
  }

  return result;
}

uint64_t sub_10006C8C4()
{
  sub_10006F770(_swiftEmptyArrayStorage);
  sub_1000700F0();
  Row.decode<A>(userInfo:)();

  if (v0)
  {
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    result = swift_allocError();
    *v2 = v0;
  }

  return result;
}

unint64_t sub_10006C968(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CodingUserInfoKey();
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10006C9CC(a1, v5);
}

unint64_t sub_10006C9CC(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_10006CB64(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10006CC30(v11, 0, 0, 1, a1, a2);
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
    sub_10002FE08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100026FDC(v11);
  return v7;
}

unint64_t sub_10006CC30(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10006CD3C(a5, a6);
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

void *sub_10006CD3C(uint64_t a1, unint64_t a2)
{
  v4 = sub_10006CD88(a1, a2);
  sub_10006CEB8(&off_100164138);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_10006CD88(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10006CFA4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10006CFA4(v10, 0);
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

uint64_t sub_10006CEB8(uint64_t result)
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

  result = sub_10006D018(result, v12, 1, v3);
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

void *sub_10006CFA4(uint64_t a1, uint64_t a2)
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

  sub_100026F94(&qword_10016B690, &qword_1001312A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10006D018(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016B690, &qword_1001312A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10006D110@<X0>(uint64_t a1@<X0>, void *(*a2)(void *__return_ptr, uint64_t, uint64_t *)@<X1>, void *a3@<X8>)
{
  result = a2(v9, a1, &v8);
  if (v3)
  {
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    result = swift_allocError();
    *v6 = v8;
  }

  else
  {
    v7 = v9[1];
    *a3 = v9[0];
    a3[1] = v7;
  }

  return result;
}

void *sub_10006D194@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t *)@<X1>, void *a3@<X8>)
{
  result = a2(&v8, a1, &v7);
  if (v3)
  {
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    result = swift_allocError();
    *v6 = v7;
  }

  else
  {
    *a3 = v8;
  }

  return result;
}

uint64_t sub_10006D218()
{
  v0 = sub_100026F94(&qword_10016AE30, &unk_100130D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v21 - v2;
  v4 = sub_100026F94(&qword_10016ADF0, &unk_100130CF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v21 - v6;
  v8 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v21 - v10;
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  v12 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v12, qword_1001734B0);
  v13 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v11, 1, 1, v13);
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_10002BA6C(v7, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v11, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A418 != -1)
  {
    swift_once();
  }

  v17 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FD14(v17, qword_100173480);
  v15(v11, 1, 1, v13);
  v18 = *(v17 - 8);
  v23 = v13;
  v19 = *(v18 + 56);
  v22 = v15;
  v19(v3, 1, 1, v17);
  v21[1] = v16;
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v3, &qword_10016AE30, &unk_100130D50);
  sub_10002BA6C(v11, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A410 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v17, qword_100173468);
  v22(v11, 1, 1, v23);
  v19(v3, 1, 1, v17);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v3, &qword_10016AE30, &unk_100130D50);
  return sub_10002BA6C(v11, &qword_10016ADF8, &unk_1001312B0);
}

uint64_t sub_10006D688(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016ADF0, &unk_100130CF0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v32 - v4;
  v6 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  if (qword_10016A420 != -1)
  {
    swift_once();
  }

  v10 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v11 = sub_10002FD14(v10, qword_100173498);
  v12 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v40 = v13 + 56;
  v41 = v12;
  v15 = v14;
  (v14)(v9, 1, 1);
  v38 = *(v10 - 8);
  v16 = v38 + 56;
  v43 = *(v38 + 56);
  v43(v5, 1, 1, v10);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v37 = v11;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v5, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v9, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A428 != -1)
  {
    swift_once();
  }

  v17 = sub_10002FD14(v10, qword_1001734B0);
  v15(v9, 1, 1, v41);
  v43(v5, 1, 1, v10);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v36 = v17;
  v18 = v5;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v5, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v9, &qword_10016ADF8, &unk_1001312B0);
  v39 = a1;
  if (qword_10016A448 != -1)
  {
    swift_once();
  }

  v19 = sub_10002FD14(v10, qword_100173510);
  v20 = v41;
  v15(v9, 1, 1, v41);
  v43(v5, 1, 1, v10);
  v34 = v16;
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v35 = v19;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v5, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v9, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A438 != -1)
  {
    swift_once();
  }

  v21 = sub_10002FD14(v10, qword_1001734E0);
  v15(v9, 1, 1, v20);
  v43(v5, 1, 1, v10);
  v32 = v15;
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v33 = v21;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v5, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v9, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A440 != -1)
  {
    swift_once();
  }

  v22 = sub_10002FD14(v10, qword_1001734F8);
  v32(v9, 1, 1, v20);
  v43(v18, 1, 1, v10);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v18, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v9, &qword_10016ADF8, &unk_1001312B0);
  v42[3] = v10;
  v23 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
  v42[4] = v23;
  v24 = sub_100042BAC(v42);
  v25 = *(v38 + 16);
  v25(v24, v37, v10);
  sub_100026F94(&qword_10016AD50, &qword_100130C90);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100131220;
  *(v26 + 56) = v10;
  *(v26 + 64) = v23;
  v27 = sub_100042BAC((v26 + 32));
  v25(v27, v36, v10);
  *(v26 + 96) = v10;
  *(v26 + 104) = v23;
  v28 = sub_100042BAC((v26 + 72));
  v25(v28, v35, v10);
  *(v26 + 136) = v10;
  *(v26 + 144) = v23;
  v29 = sub_100042BAC((v26 + 112));
  v25(v29, v33, v10);
  *(v26 + 176) = v10;
  *(v26 + 184) = v23;
  v30 = sub_100042BAC((v26 + 152));
  v25(v30, v22, v10);
  TableBuilder.primaryKey(_:_:)();

  return sub_100026FDC(v42);
}

uint64_t sub_10006DDD8()
{
  v0 = sub_100026F94(&qword_10016B718, &qword_1001313A0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  if (qword_10016A450 != -1)
  {
    swift_once();
  }

  v17 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  sub_10002FD14(v17, qword_100173528);
  v8 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v15 = v9 + 56;
  v16 = v10;
  v10(v7, 1, 1, v8);
  v11 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  v14 = *(*(v11 - 8) + 56);
  v14(v3, 1, 1, v11);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v3, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A458 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v17, qword_100173540);
  v16(v7, 1, 1, v8);
  v14(v3, 1, 1, v11);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v3, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A460 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v17, qword_100173558);
  v16(v7, 1, 1, v8);
  v14(v3, 1, 1, v11);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v3, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A468 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v17, qword_100173570);
  v16(v7, 1, 1, v8);
  v14(v3, 1, 1, v11);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v3, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A470 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v17, qword_100173588);
  v16(v7, 1, 1, v8);
  v14(v3, 1, 1, v11);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v3, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A478 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v17, qword_1001735A0);
  v16(v7, 1, 1, v8);
  v14(v3, 1, 1, v11);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v3, &qword_10016B718, &qword_1001313A0);
  return sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
}

uint64_t sub_10006E494()
{
  v0 = sub_100026F94(&qword_10016B718, &qword_1001313A0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v15 - v2;
  v4 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  if (qword_10016A480 != -1)
  {
    swift_once();
  }

  v8 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  v9 = sub_10002FD14(v8, qword_1001735B8);
  v10 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v15[1] = v11 + 56;
  v16 = v12;
  v12(v7, 1, 1, v10);
  v17 = *(v8 - 8);
  v15[0] = *(v17 + 56);
  (v15[0])(v3, 1, 1, v8);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v18 = v9;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v3, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A488 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v8, qword_1001735D0);
  v16(v7, 1, 1, v10);
  (v15[0])(v3, 1, 1, v8);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v3, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
  v19[3] = v8;
  v19[4] = sub_10002B95C(&qword_10016B720, &qword_10016B6E8, &qword_100131368);
  v13 = sub_100042BAC(v19);
  (*(v17 + 16))(v13, v18, v8);
  TableBuilder.primaryKey(_:_:)();
  return sub_100026FDC(v19);
}

uint64_t sub_10006E838()
{
  v0 = sub_100026F94(&qword_10016AE30, &unk_100130D50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v41 = &v34 - v2;
  v3 = sub_100026F94(&qword_10016B718, &qword_1001313A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v38 = &v34 - v5;
  v6 = sub_100026F94(&qword_10016ADF0, &unk_100130CF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v34 - v12;
  if (qword_10016A420 != -1)
  {
    swift_once();
  }

  v14 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v15 = sub_10002FD14(v14, qword_100173498);
  v16 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v17 = *(v16 - 8);
  v45 = *(v17 + 56);
  v43 = v17 + 56;
  v45(v13, 1, 1, v16);
  v40 = *(v14 - 8);
  v42 = *(v40 + 56);
  v42(v9, 1, 1, v14);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v39 = v15;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v9, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v13, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A430 != -1)
  {
    swift_once();
  }

  v18 = sub_10002FD14(v14, qword_1001734C8);
  v45(v13, 1, 1, v16);
  v42(v9, 1, 1, v14);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v37 = v18;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v9, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v13, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A438 != -1)
  {
    swift_once();
  }

  v19 = sub_10002FD14(v14, qword_1001734E0);
  v45(v13, 1, 1, v16);
  v42(v9, 1, 1, v14);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v42 = v19;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v9, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v13, &qword_10016ADF8, &unk_1001312B0);
  v20 = v16;
  if (qword_10016A490 != -1)
  {
    swift_once();
  }

  v21 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
  v22 = sub_10002FD14(v21, qword_1001735E8);
  v45(v13, 1, 1, v16);
  v35 = *(v21 - 8);
  v23 = v38;
  (*(v35 + 56))(v38, 1, 1, v21);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v36 = v22;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v23, &qword_10016B718, &qword_1001313A0);
  sub_10002BA6C(v13, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A498 != -1)
  {
    swift_once();
  }

  v24 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FD14(v24, qword_100173600);
  v45(v13, 1, 1, v20);
  v25 = v41;
  (*(*(v24 - 8) + 56))(v41, 1, 1, v24);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v25, &qword_10016AE30, &unk_100130D50);
  sub_10002BA6C(v13, &qword_10016ADF8, &unk_1001312B0);
  v44[3] = v14;
  v26 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
  v44[4] = v26;
  v27 = sub_100042BAC(v44);
  v28 = *(v40 + 16);
  v28(v27, v39, v14);
  sub_100026F94(&qword_10016AD50, &qword_100130C90);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100130BB0;
  *(v29 + 56) = v14;
  *(v29 + 64) = v26;
  v30 = sub_100042BAC((v29 + 32));
  v28(v30, v37, v14);
  *(v29 + 96) = v14;
  *(v29 + 104) = v26;
  v31 = sub_100042BAC((v29 + 72));
  v28(v31, v42, v14);
  *(v29 + 136) = v21;
  *(v29 + 144) = sub_10002B95C(&qword_10016B720, &qword_10016B6E8, &qword_100131368);
  v32 = sub_100042BAC((v29 + 112));
  (*(v35 + 16))(v32, v36, v21);
  TableBuilder.primaryKey(_:_:)();

  return sub_100026FDC(v44);
}

uint64_t sub_10006F094(uint64_t a1)
{
  v39[1] = a1;
  v1 = type metadata accessor for ColumnDefinition();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100026F94(&qword_10016B6C8, &unk_100131350);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 64);
  __chkstk_darwin(v6);
  v11 = v39 - v10;
  sub_100026F94(&qword_10016B700, &unk_100131370);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v44 = *(v7 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100130B20;
  v14 = v13 + v12;
  v15 = v13;
  if (qword_10016A458 != -1)
  {
LABEL_25:
    swift_once();
  }

  v16 = sub_10002FD14(v6, qword_100173540);
  v46 = v8;
  v19 = *(v8 + 16);
  v18 = v8 + 16;
  v17 = v19;
  v19(v14, v16, v6);
  if (qword_10016A468 != -1)
  {
    swift_once();
  }

  v50 = v11;
  v20 = sub_10002FD14(v6, qword_100173570);
  v42 = v18;
  v43 = v14;
  v52 = v6;
  v17(v14 + v44, v20, v6);
  Connection.schema.getter();
  if (qword_10016A3F8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Table();
  v22 = sub_10002FD14(v21, qword_100173420);
  sub_10006F960(&qword_10016AD20);
  v49 = v22;
  QueryType.name.getter();
  v8 = v23;
  v24 = v48;
  v25 = dispatch thunk of SchemaReader.columnDefinitions(table:)();
  v45 = v24;
  if (v24)
  {
  }

  else
  {
    v11 = v25;
    v41 = v17;
    v39[0] = v15;

    v27 = 0;
    v28 = 0;
    v29 = *(v11 + 2);
    v47 = v2 + 16;
    v48 = v29;
    v30 = (v2 + 8);
    v40 = (v46 + 8);
    v31 = v52;
    v6 = v49;
    v14 = v50;
    while (2)
    {
      LODWORD(v46) = v27;
      v41(v14, v43 + v28 * v44, v31);
      v15 = 0;
      while (v48 != v15)
      {
        if (v15 >= *(v11 + 2))
        {
          __break(1u);
          goto LABEL_25;
        }

        (*(v2 + 16))(v5, &v11[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15], v1);
        v8 = ColumnDefinition.name.getter();
        v33 = v32;
        sub_10002B95C(&qword_10016B6F8, &qword_10016B6C8, &unk_100131350);
        v34 = Expressible.columnName.getter();
        v14 = v35;
        if (v8 == v34 && v33 == v35)
        {

          (*v30)(v5, v1);
          goto LABEL_9;
        }

        ++v15;
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v30)(v5, v1);
        v6 = v49;
        if (v8)
        {
          goto LABEL_10;
        }
      }

      sub_10002B95C(&qword_10016B6F8, &qword_10016B6C8, &unk_100131350);
      Expressible.columnName.getter();
      v8 = v36;
      static Int.declaredDatatype.getter();
      v51[4] = &protocol witness table for Int;
      v51[3] = &type metadata for Int;
      v51[0] = 0;
      v37 = v45;
      Table.addColumn(_:datatype:isNullable:isUnique:defaultValue:)();
      v45 = v37;
      if (v37)
      {

        sub_10002BA6C(v51, &qword_10016B708, &unk_100133390);
        return (*v40)(v50, v52);
      }

      sub_10002BA6C(v51, &qword_10016B708, &unk_100133390);
      v38 = v45;
      Connection.run(_:_:)();
      if (v38)
      {

        return (*v40)(v50, v52);
      }

      v45 = 0;

LABEL_9:
      v6 = v49;
LABEL_10:
      v14 = v50;
      v31 = v52;
      (*v40)(v50, v52);
      v27 = 1;
      v28 = 1;
      if ((v46 & 1) == 0)
      {
        continue;
      }

      break;
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    return swift_deallocClassInstance();
  }
}

unint64_t sub_10006F770(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016B6B0, &qword_100131328);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100026F94(&qword_10016B6B8, &qword_100131330);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10002BA04(v10, v6, &qword_10016B6B0, &qword_100131328);
      result = sub_10006C968(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CodingUserInfoKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_100070144(&v6[v9], (v8[7] + 32 * v14));
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

uint64_t sub_10006F960(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Table();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006F9E0()
{
  result = qword_10016B698;
  if (!qword_10016B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B698);
  }

  return result;
}

unint64_t sub_10006FA34()
{
  v1 = v0;
  v2 = type metadata accessor for Row();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v54 = &v46 - v8;
  if (qword_10016A400 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Table();
  v10 = sub_10002FD14(v9, qword_100173438);
  v11 = sub_10006F960(&qword_10016AD20);
  v12._countAndFlagsBits = QueryType.name.getter();
  v13 = Connection.tableExists(_:)(v12);

  if (!v13)
  {
    if (qword_10016A3D8 != -1)
    {
LABEL_31:
      swift_once();
    }

    v16 = type metadata accessor for OSLogger();
    sub_10002FD14(v16, qword_10016B5B0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v17 = *(type metadata accessor for LogMessage() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    return sub_100088D34(_swiftEmptyArrayStorage);
  }

  v14 = sub_100088D34(_swiftEmptyArrayStorage);
  v57[3] = v9;
  v57[4] = v11;
  v15 = sub_100042BAC(v57);
  (*(*(v9 - 8) + 16))(v15, v10, v9);
  Connection.prepare(_:)();
  if (v0)
  {

    sub_100026FDC(v57);
    return v14;
  }

  sub_100026FDC(v57);
  v21 = dispatch thunk of _AnySequenceBox._makeIterator()();

  v22 = v54;
  v51 = v21;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v49 = v3[6];
  v50 = v3 + 6;
  if (v49(v22, 1, v2) == 1)
  {
LABEL_10:

    return v14;
  }

  v24 = v3[4];
  v23 = v3 + 4;
  v47 = (v23 - 3);
  v48 = v24;
  v25 = &type metadata for Int;
  v26 = v53;
  v24(v53, v22, v2);
  while (1)
  {
    if (qword_10016A480 != -1)
    {
      swift_once();
    }

    v29 = sub_100026F94(&qword_10016B6E8, &qword_100131368);
    sub_10002FD14(v29, qword_1001735B8);
    Row.subscript.getter();
    if (v1)
    {
      (*v47)(v26, v2);

      return v14;
    }

    v55 = v57[0];
    if (qword_10016A488 != -1)
    {
      swift_once();
    }

    sub_10002FD14(v29, qword_1001735D0);
    Row.subscript.getter();
    v52 = 0;
    v30 = v25;
    v31 = v23;
    v32 = v2;
    v33 = v57[6];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v14;
    v36 = sub_10009E80C(v55);
    v37 = v14[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      __break(1u);
      goto LABEL_31;
    }

    v40 = v35;
    if (v14[3] >= v39)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000A2C24();
      }
    }

    else
    {
      sub_10009FFF4(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_10009E80C(v55);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_33;
      }

      v36 = v41;
    }

    v26 = v53;
    v14 = v56;
    if (v40)
    {
      *(v56[7] + 8 * v36) = v33;
      v2 = v32;
      (*v47)(v26, v32);
      goto LABEL_13;
    }

    v56[(v36 >> 6) + 8] |= 1 << v36;
    *(v14[6] + 8 * v36) = v55;
    *(v14[7] + 8 * v36) = v33;
    v2 = v32;
    (*v47)(v26, v32);
    v43 = v14[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      break;
    }

    v14[2] = v45;
LABEL_13:
    v27 = v54;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v28 = v49(v27, 1, v2);
    v23 = v31;
    v25 = v30;
    v1 = v52;
    if (v28 == 1)
    {
      goto LABEL_10;
    }

    v48(v26, v27, v2);
  }

  __break(1u);
LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000700F0()
{
  result = qword_10016B6A8;
  if (!qword_10016B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B6A8);
  }

  return result;
}

_OWORD *sub_100070144(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100070154(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = type metadata accessor for OSSignpostError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A3E0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016B5C8);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v5 + 88))(v8, v4) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v20, v19, a1, v17, v18, 2u);

LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_10007053C()
{
  result = qword_10016B710;
  if (!qword_10016B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B710);
  }

  return result;
}

uint64_t sub_100070590()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000705F0()
{
  if (qword_10016A658 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_100173828, &unk_10016B748);
}

id sub_100070654()
{
  v0 = [objc_allocWithZone(AMSEngagement) initWithBag:Bag.amsBag.getter()];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000706AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v6[25] = v8;
  v9 = *(v8 - 8);
  v6[26] = v9;
  v10 = *(v9 + 64) + 15;
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000707A0, v5, 0);
}

uint64_t sub_1000707A0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  v17 = v0[21];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = AccessCredential.requestId.getter();
  v10 = v9;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  (*(v2 + 8))(v1, v3);
  v0[2] = v8;
  v0[3] = v10;
  v0[4] = v6;
  v0[5] = v5;
  v0[6] = v17;
  v0[7] = v4;
  v0[8] = 0;
  v0[9] = v12;

  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_1000708E0;
  v14 = v0[23];
  v15 = v0[18];

  return sub_100073364((v0 + 2), v15);
}

uint64_t sub_1000708E0(char a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 248) = a1;

  return _swift_task_switch(sub_1000709F8, v3, 0);
}

uint64_t sub_1000709F8()
{
  if (*(v0 + 248) == 1)
  {
    v1 = *sub_100026F50((*(v0 + 184) + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry), *(*(v0 + 184) + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry + 24));
    v2 = swift_task_alloc();
    *(v0 + 232) = v2;
    *v2 = v0;
    v2[1] = sub_100070B00;

    return sub_1000673E4(v0 + 16);
  }

  else
  {
    sub_1000704E8(v0 + 16);
    v4 = *(v0 + 216);
    v5 = *(v0 + 192);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100070B00()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  v3[30] = v0;

  sub_1000704E8((v3 + 2));
  if (v0)
  {
    v4 = v3[23];

    return _swift_task_switch(sub_1000743D4, v4, 0);
  }

  else
  {
    v5 = v3[27];
    v6 = v3[24];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_100070C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v6[25] = v8;
  v9 = *(v8 - 8);
  v6[26] = v9;
  v10 = *(v9 + 64) + 15;
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_100070D44, v5, 0);
}

uint64_t sub_100070D44()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  v17 = v0[21];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = AccessCredential.requestId.getter();
  v10 = v9;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  (*(v2 + 8))(v1, v3);
  v0[2] = v8;
  v0[3] = v10;
  v0[4] = v6;
  v0[5] = v5;
  v0[6] = v17;
  v0[7] = v4;
  v0[8] = 1;
  v0[9] = v12;

  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_1000708E0;
  v14 = v0[23];
  v15 = v0[18];

  return sub_100073364((v0 + 2), v15);
}

uint64_t sub_100070E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v6[25] = v8;
  v9 = *(v8 - 8);
  v6[26] = v9;
  v10 = *(v9 + 64) + 15;
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_100070F7C, v5, 0);
}

uint64_t sub_100070F7C()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  v17 = v0[21];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = AccessCredential.requestId.getter();
  v10 = v9;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  (*(v2 + 8))(v1, v3);
  v0[2] = v8;
  v0[3] = v10;
  v0[4] = v6;
  v0[5] = v5;
  v0[6] = v17;
  v0[7] = v4;
  v0[8] = 2;
  v0[9] = v12;

  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_1000710C0;
  v14 = v0[23];
  v15 = v0[18];

  return sub_100073364((v0 + 2), v15);
}

uint64_t sub_1000710C0(char a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 248) = a1;

  return _swift_task_switch(sub_1000711D8, v3, 0);
}

uint64_t sub_1000711D8()
{
  if (*(v0 + 248) == 1)
  {
    v1 = *sub_100026F50((*(v0 + 184) + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry), *(*(v0 + 184) + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry + 24));
    v2 = swift_task_alloc();
    *(v0 + 232) = v2;
    *v2 = v0;
    v2[1] = sub_1000712E0;

    return sub_1000673E4(v0 + 16);
  }

  else
  {
    sub_1000704E8(v0 + 16);
    v4 = *(v0 + 216);
    v5 = *(v0 + 192);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1000712E0()
{
  v2 = *(*v1 + 232);
  v3 = *v1;
  v3[30] = v0;

  sub_1000704E8((v3 + 2));
  if (v0)
  {
    v4 = v3[23];

    return _swift_task_switch(sub_100071430, v4, 0);
  }

  else
  {
    v5 = v3[27];
    v6 = v3[24];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_100071430()
{
  if (qword_10016A4A0 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[24];
  sub_100026F50(qword_10016B748, qword_10016B760);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v3 = *(type metadata accessor for LogMessage() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010013B1E0;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = v0[14];
  v8 = v0[15];
  v0[13] = v8;
  v9 = sub_100042BAC(v0 + 10);
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 10), &qword_10016AB10, &unk_100130B10);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v11 = v0[27];
  v12 = v0[24];

  v13 = v0[1];

  return v13();
}