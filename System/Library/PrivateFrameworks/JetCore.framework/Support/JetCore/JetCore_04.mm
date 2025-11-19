uint64_t sub_100069A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  static OSLogger.daemon.getter();
  sub_100001CC0(v19, v19[3]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v9 = *(type metadata accessor for LogMessage() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x800000010008A300;
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v18 = &type metadata for String;
  v17[0] = a2;
  v17[1] = a3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v17);
  v13._countAndFlagsBits = 0x206E656B6F745B20;
  v13._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  v18 = &type metadata for Int32;
  LODWORD(v17[0]) = a1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v17);
  v14._countAndFlagsBits = 93;
  v14._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C(v19);
  return a4(a2, a3, a1);
}

uint64_t sub_100069C80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100069CD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v1 + 56) + 4 * v11);

    sub_100069DD4(v13, v14, v15);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100069DD4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  if (notify_cancel(a3))
  {
    static OSLogger.daemon.getter();
    sub_100001CC0(v24, v25);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v8 = *(type metadata accessor for LogMessage() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0xD000000000000023;
    v11._object = 0x800000010008A240;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    v23 = &type metadata for String;
    v21 = a1;
    v22 = a2;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC(&v21);
    v12._countAndFlagsBits = 0x3A6E656B6F745B20;
    v12._object = 0xE900000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    v23 = &type metadata for Int32;
    LODWORD(v21) = a3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC(&v21);
    v13._countAndFlagsBits = 93;
    v13._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();
  }

  else
  {
    static OSLogger.daemon.getter();
    sub_100001CC0(v24, v25);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v14 = *(type metadata accessor for LogMessage() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._object = 0x800000010008A270;
    v17._countAndFlagsBits = 0xD00000000000001BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    v23 = &type metadata for String;
    v21 = a1;
    v22 = a2;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC(&v21);
    v18._countAndFlagsBits = 0x3A6E656B6F745B20;
    v18._object = 0xE900000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    v23 = &type metadata for Int32;
    LODWORD(v21) = a3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC(&v21);
    v19._countAndFlagsBits = 93;
    v19._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();
  }

  return sub_100001D4C(v24);
}

uint64_t sub_10006A14C()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 24));
  sub_100069CD4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  v2 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

_OWORD *sub_10006A1F0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100001D98(a2, a3);
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
      sub_10000F41C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000EAD4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100001D98(a2, a3);
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
    sub_100001D4C(v23);

    return sub_100002698(a1, v23);
  }

  else
  {
    sub_10006A61C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_10006A340(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100001D98(a2, a3);
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
      sub_10000ED8C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100001D98(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10000F5C0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

unint64_t sub_10006A4B8(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100001D98(a2, a3);
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
      sub_10000F030(v16, a4 & 1);
      v20 = *v5;
      result = sub_100001D98(a2, a3);
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
      sub_10000F72C();
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

_OWORD *sub_10006A61C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100002698(a4, (a5[7] + 32 * a1));
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

uint64_t sub_10006A688(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_10006AE3C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10006A7D8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_17:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10006AFBC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_10006A960(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001D04(&qword_1000A5BF0, &unk_100086280);
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

uint64_t sub_10006ABC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001D04(&qword_1000A5C00, &unk_100086290);
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
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v20)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

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

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

Swift::Int sub_10006AE3C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_10006A960(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10006B178();
      goto LABEL_16;
    }

    sub_10006B42C(v8 + 1);
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

Swift::Int sub_10006AFBC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    sub_10006ABC0(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_10006B2D4();
      goto LABEL_23;
    }

    sub_10006B664(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
LABEL_22:
            sub_100001D04(&qword_1000A5798, &qword_1000855C8);
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

void *sub_10006B178()
{
  v1 = v0;
  sub_100001D04(&qword_1000A5BF0, &unk_100086280);
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

void *sub_10006B2D4()
{
  v1 = v0;
  sub_100001D04(&qword_1000A5C00, &unk_100086290);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

uint64_t sub_10006B42C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001D04(&qword_1000A5BF0, &unk_100086280);
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

uint64_t sub_10006B664(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001D04(&qword_1000A5C00, &unk_100086290);
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
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v19)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

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

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
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
        goto LABEL_31;
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
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10006B8B8(uint64_t a1)
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

      sub_10006A688(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10006B950()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006B99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10006B9B4(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = sub_10006A4B8(v5, v3, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

uint64_t sub_10006BA2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100001D04(&qword_1000A5798, &qword_1000855C8);
  sub_10006BAD8();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10006A7D8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10006BAD8()
{
  result = qword_1000A5BF8;
  if (!qword_1000A5BF8)
  {
    sub_100018FD0(&qword_1000A5798, &qword_1000855C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BF8);
  }

  return result;
}

uint64_t sub_10006BB64(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 112;
    }

    else
    {
      v2 = 99;
    }

    v3 = 0xE100000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xE100000000000000;
    v2 = 101;
  }

  else
  {
    if (a1 == 3)
    {
      v2 = 30821;
    }

    else
    {
      v2 = 24929;
    }

    v3 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = 112;
    }

    else
    {
      v5 = 99;
    }

    v4 = 0xE100000000000000;
    if (v2 != v5)
    {
      goto LABEL_27;
    }
  }

  else if (a2 == 2)
  {
    v4 = 0xE100000000000000;
    if (v2 != 101)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v4 = 0xE200000000000000;
    if (a2 == 3)
    {
      if (v2 != 30821)
      {
        goto LABEL_27;
      }
    }

    else if (v2 != 24929)
    {
LABEL_27:
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_28;
    }
  }

  if (v3 != v4)
  {
    goto LABEL_27;
  }

  v6 = 1;
LABEL_28:

  return v6 & 1;
}

uint64_t sub_10006BC94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEB00000000726567;
  v5 = 0x656C756465686373;
  v6 = 0xE900000000000072;
  if (a1 != 4)
  {
    v5 = 6581861;
    v6 = 0xE300000000000000;
  }

  if (a1 == 3)
  {
    v5 = 0x616E614D68737570;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0xD000000000000011;
  v8 = 0x8000000100086B60;
  if (a1 != 1)
  {
    v7 = 0x6573616261746164;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x6E69676562;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEB00000000726567;
      if (v9 != 0x616E614D68737570)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE900000000000072;
      if (v9 != 0x656C756465686373)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE300000000000000;
      if (v9 != 6581861)
      {
LABEL_35:
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0x8000000100086B60;
      if (v9 != 0xD000000000000011)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x6573616261746164)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x6E69676562)
    {
      goto LABEL_35;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_35;
  }

  v12 = 1;
LABEL_36:

  return v12 & 1;
}

Swift::Int sub_10006BE7C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10006BF88()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10006C0A4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10006C1A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006C2EC(*a1);
  *a2 = result;
  return result;
}

void sub_10006C1D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6E69676562;
  v5 = 0xEB00000000726567;
  v6 = 0x616E614D68737570;
  v7 = 0xE900000000000072;
  v8 = 0x656C756465686373;
  if (v2 != 4)
  {
    v8 = 6581861;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x8000000100086B60;
  v10 = 0xD000000000000011;
  if (v2 != 1)
  {
    v10 = 0x6573616261746164;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_10006C298()
{
  result = qword_1000A5C08;
  if (!qword_1000A5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5C08);
  }

  return result;
}

unint64_t sub_10006C2EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10009E370, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10006C348()
{
  v1 = OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey;
  v2 = sub_100001D04(&qword_1000A5680, &qword_100084000);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_localPreferences);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for KillSwitchManager()
{
  result = qword_1000A5C48;
  if (!qword_1000A5C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C454()
{
  sub_10006C4F0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10006C4F0()
{
  if (!qword_1000A5038)
  {
    v0 = type metadata accessor for PreferenceKey();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5038);
    }
  }
}

uint64_t sub_10006C540()
{
  v1 = *(v0 + OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_localPreferences);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  return v3 & 1;
}

double sub_10006C5C4(uint64_t a1)
{
  v2 = sub_100001D04(&qword_1000A4F38, &unk_100086430);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - v5;
  v7 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  v11 = type metadata accessor for Bag();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (jet_debug_tooling_os_variant_has_internal_content()())
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.001;
  }

  sub_100002758(a1, v10, &unk_1000A56A0, &unk_100083E10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000DCA0(v10, &unk_1000A56A0, &unk_100083E10);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    __chkstk_darwin(v18);
    *&v20[-2] = v16;
    Bag.Value.current(or:)();
    (*(v3 + 8))(v6, v2);
    (*(v12 + 8))(v15, v11);
    return *&v20[1];
  }

  return v16;
}

double sub_10006C8A8@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double sub_10006C8B4(uint64_t a1)
{
  v2 = sub_100001D04(&qword_1000A4F38, &unk_100086430);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - v5;
  v7 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  v11 = type metadata accessor for Bag();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (jet_debug_tooling_os_variant_has_internal_content()())
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.001;
  }

  sub_100002758(a1, v10, &unk_1000A56A0, &unk_100083E10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000DCA0(v10, &unk_1000A56A0, &unk_100083E10);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    __chkstk_darwin(v18);
    *&v20[-2] = v16;
    Bag.Value.current(or:)();
    (*(v3 + 8))(v6, v2);
    (*(v12 + 8))(v15, v11);
    return *&v20[1];
  }

  return v16;
}

uint64_t sub_10006CB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a1;
  v36 = a2;
  v4 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - v6;
  v34 = type metadata accessor for Date();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v34);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001D04(&qword_1000A4FA8, &unk_100083FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100086420;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  strcpy((inited + 48), "assetRequest");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "eventVersion");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = 1;
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0x4449656C646E7562;
  *(inited + 136) = 0xE800000000000000;
  v12 = v2[1];
  *(inited + 144) = *v2;
  *(inited + 152) = v12;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x44496567617375;
  *(inited + 184) = 0xE700000000000000;
  v13 = v2[3];
  *(inited + 192) = v3[2];
  *(inited + 200) = v13;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x4C52557465737361;
  *(inited + 232) = 0xE800000000000000;
  v14 = v3[5];
  *(inited + 240) = v3[4];
  *(inited + 248) = v14;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 0x6165526863746566;
  *(inited + 280) = 0xEB000000006E6F73;
  v15 = v3[11];
  *(inited + 288) = v3[10];
  *(inited + 296) = v15;
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0x7365636375537369;
  *(inited + 328) = 0xE900000000000073;
  *(inited + 336) = *(v3 + 96);
  *(inited + 360) = &type metadata for Bool;
  *(inited + 368) = 0x74706D65747461;
  *(inited + 376) = 0xE700000000000000;
  v16 = v3[13];
  *(inited + 408) = &type metadata for Int;
  *(inited + 384) = v16;

  v17 = sub_100002248(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A4E48, &unk_100086440);
  swift_arrayDestroy();
  v18 = v3[7];
  if (v18)
  {
    v19 = v3[6];
    v40 = &type metadata for String;
    *&v39 = v19;
    *(&v39 + 1) = v18;
    sub_100002698(&v39, v38);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v17;
    sub_10006A1F0(v38, 0x7265567465737361, 0xEC0000006E6F6973, isUniquelyReferenced_nonNull_native);
    v17 = v37;
  }

  v21 = v3[9];
  if (v21)
  {
    v22 = v3[8];
    v40 = &type metadata for String;
    *&v39 = v22;
    *(&v39 + 1) = v21;
    sub_100002698(&v39, v38);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v17;
    sub_10006A1F0(v38, 0x756F537465737361, 0xEB00000000656372, v23);
    v17 = v37;
  }

  v24 = type metadata accessor for AssetRequestMetricsEvent();
  sub_100002758(v3 + *(v24 + 48), v7, &qword_1000A56E0, &unk_100083BE0);
  v25 = v34;
  if ((*(v8 + 48))(v7, 1, v34) == 1)
  {
    sub_10000DCA0(v7, &qword_1000A56E0, &unk_100083BE0);
  }

  else
  {
    v26 = v33;
    (*(v8 + 32))(v33, v7, v25);
    v27 = static TimeConversion.amsServerTime(from:)();
    v40 = sub_10006D4B8();
    *&v39 = v27;
    sub_100002698(&v39, v38);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v17;
    sub_10006A1F0(v38, 0x73616364616F7262, 0xED0000656D695474, v28);
    (*(v8 + 8))(v26, v25);
    v17 = v37;
  }

  v29 = v3 + *(v24 + 52);
  if ((v29[8] & 1) == 0)
  {
    v30 = *v29;
    v40 = &type metadata for Int;
    *&v39 = v30;
    sub_100002698(&v39, v38);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v17;
    sub_10006A1F0(v38, 0x797469726F697270, 0xE800000000000000, v31);
  }

  sub_10006FB60(v35);
  return MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)();
}

void sub_10006D0F8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  v10 = *v0;
  v11 = v0[1];
  String.hash(into:)();
  v12 = v0[2];
  v13 = v0[3];
  String.hash(into:)();
  v14 = v0[4];
  v15 = v0[5];
  String.hash(into:)();
  if (v0[7])
  {
    v16 = v0[6];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[9])
    {
LABEL_3:
      v17 = v0[8];
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v0[9])
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  v18 = v0[10];
  v19 = v0[11];
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 96));
  Hasher._combine(_:)(v0[13]);
  v20 = type metadata accessor for AssetRequestMetricsEvent();
  sub_100002758(v0 + *(v20 + 48), v9, &qword_1000A56E0, &unk_100083BE0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    Hasher._combine(_:)(1u);
    sub_10006DD14(&qword_1000A5DA8, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  v21 = v0 + *(v20 + 52);
  if (*(v21 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v22 = *v21;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v22);
  }
}

Swift::Int sub_10006D3E8()
{
  Hasher.init(_seed:)();
  sub_10006D0F8();
  return Hasher._finalize()();
}

Swift::Int sub_10006D42C()
{
  Hasher.init(_seed:)();
  sub_10006D0F8();
  return Hasher._finalize()();
}

uint64_t type metadata accessor for AssetRequestMetricsEvent()
{
  result = qword_1000A5D38;
  if (!qword_1000A5D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10006D4B8()
{
  result = qword_1000A5CD8;
  if (!qword_1000A5CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A5CD8);
  }

  return result;
}

uint64_t sub_10006D518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006D5E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10006D698()
{
  sub_10006D784(319, &unk_1000A52B8);
  if (v0 <= 0x3F)
  {
    sub_10001CB4C();
    if (v1 <= 0x3F)
    {
      sub_10006D784(319, &unk_1000A5D48);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006D784(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10006D818(uint64_t a1)
{
  result = sub_10006DD14(&qword_1000A5DA0, type metadata accessor for AssetRequestMetricsEvent);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_10006D870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_100001D04(&qword_1000A5DB0, &unk_1000864F0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v32 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 56);
  v18 = *(a2 + 56);
  if (v17)
  {
    if (!v18 || (*(a1 + 48) != *(a2 + 48) || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a1 + 72);
  v20 = *(a2 + 72);
  if (v19)
  {
    if (!v20 || (*(a1 + 64) != *(a2 + 64) || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if ((*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  v33 = type metadata accessor for AssetRequestMetricsEvent();
  v21 = *(v33 + 48);
  v22 = *(v13 + 48);
  sub_100002758(a1 + v21, v16, &qword_1000A56E0, &unk_100083BE0);
  sub_100002758(a2 + v21, &v16[v22], &qword_1000A56E0, &unk_100083BE0);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) == 1)
  {
    if (v23(&v16[v22], 1, v4) == 1)
    {
      sub_10000DCA0(v16, &qword_1000A56E0, &unk_100083BE0);
      goto LABEL_37;
    }

LABEL_34:
    sub_10000DCA0(v16, &qword_1000A5DB0, &unk_1000864F0);
    return 0;
  }

  sub_100002758(v16, v12, &qword_1000A56E0, &unk_100083BE0);
  if (v23(&v16[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_34;
  }

  (*(v5 + 32))(v8, &v16[v22], v4);
  sub_10006DD14(&qword_1000A5DB8, &type metadata accessor for Date);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  sub_10000DCA0(v16, &qword_1000A56E0, &unk_100083BE0);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  v27 = *(v33 + 52);
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 8);
  if ((v29 & 1) == 0)
  {
    if (*v28 != *v30)
    {
      v31 = 1;
    }

    return (v31 & 1) == 0;
  }

  return (v31 & 1) != 0;
}

uint64_t sub_10006DD14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006DD60(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10006DE58()
{
  if (qword_1000A4D60 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

int *sub_10006DEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v6 = type metadata accessor for Bag.Profile();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Bag();
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v12[2];
  v27 = a1;
  v16(v15, a1, v11);
  v16(a4, v15, v11);
  Bag.profile.getter();
  Bag.Profile.name.getter();
  (*(v7 + 8))(v10, v6);
  v17 = Bag.amsBag.getter();
  v18 = objc_allocWithZone(AMSMetrics);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v18 initWithContainerID:v19 bag:v17];

  swift_unknownObjectRelease();
  if (v20)
  {
    sub_100001D04(&qword_1000A5DE8, &unk_100086510);
    v30 = v20;
    v21 = SendableWrapper.__allocating_init(_:)();
    v22 = v12[1];
    v22(v27, v11);
    v22(v15, v11);
  }

  else
  {
    v23 = v12[1];
    v23(v27, v11);
    v23(v15, v11);
    v21 = 0;
  }

  result = type metadata accessor for DaemonMetricsEventRecorder();
  *&a4[result[5]] = v21;
  v25 = &a4[result[6]];
  v26 = v29;
  *v25 = v28;
  *(v25 + 1) = v26;
  *&a4[result[7]] = &_swiftEmptySetSingleton;
  return result;
}

uint64_t type metadata accessor for DaemonMetricsEventRecorder()
{
  result = qword_1000A5E48;
  if (!qword_1000A5E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006E1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10006E2B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Bag();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10006E374()
{
  type metadata accessor for Bag();
  if (v0 <= 0x3F)
  {
    sub_10006E418();
    if (v1 <= 0x3F)
    {
      sub_10006E47C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006E418()
{
  if (!qword_1000A5E58)
  {
    sub_100018FD0(&qword_1000A5DE8, &unk_100086510);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5E58);
    }
  }
}

void sub_10006E47C()
{
  if (!qword_1000A5E60)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5E60);
    }
  }
}

void sub_10006E4D4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  if ((LintedMetricsEvent.isEmpty.getter() & 1) == 0)
  {
    if (!a5)
    {
      v8 = (a2 + *(type metadata accessor for DaemonMetricsEventRecorder() + 24));
      v9 = *v8;
      v10 = v8[1];
    }

    v11 = objc_allocWithZone(AMSMetricsEvent);

    v12 = String._bridgeToObjectiveC()();

    v13 = [v11 initWithTopic:v12];

    v14 = *(a2 + *(type metadata accessor for DaemonMetricsEventRecorder() + 28));
    v15 = [v13 topic];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    LOBYTE(v14) = sub_10006DD60(v16, v18, v14);

    if (v14)
    {
      [v13 setAnonymous:1];
    }

    LintedMetricsEvent.fields.getter();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v13 addPropertiesWithDictionary:isa];

    [v7 enqueueEvent:v13];
  }
}

id sub_10006E674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (LintedMetricsEvent.isEmpty.getter())
  {
    return 0;
  }

  if (!a3)
  {
    v6 = (v3 + *(type metadata accessor for DaemonMetricsEventRecorder() + 24));
    v7 = *v6;
    v8 = v6[1];
  }

  v9 = objc_allocWithZone(AMSMetricsEvent);

  v10 = String._bridgeToObjectiveC()();

  v5 = [v9 initWithTopic:v10];

  v11 = *(v3 + *(type metadata accessor for DaemonMetricsEventRecorder() + 28));
  v12 = [v5 topic];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  LOBYTE(v11) = sub_10006DD60(v13, v15, v11);

  if (v11)
  {
    [v5 setAnonymous:1];
  }

  LintedMetricsEvent.fields.getter();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 addPropertiesWithDictionary:isa];

  return v5;
}

void sub_10006E7F4(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = sub_10006E674(a2, a3, a4);
  if (v7)
  {
    v8 = v7;
    sub_100001D04(&qword_1000A5EA0, &qword_100086580);
    v9 = Promise.__allocating_init()();
    sub_100001D04(&qword_1000A5EA8, &qword_100086588);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100086500;
    *(v10 + 32) = v8;
    sub_100040154(0, &qword_1000A5EB0, AMSMetricsEvent_ptr);
    v11 = v8;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v13 = [v6 promiseForEnqueueingEvents:isa];

    v20 = sub_10006F6D8;
    v21 = v9;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_100081260;
    v19 = &unk_10009FF80;
    v14 = _Block_copy(&v16);

    [v13 addSuccessBlock:v14];
    _Block_release(v14);
    v20 = sub_10006F6E0;
    v21 = v9;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_10006EDD8;
    v19 = &unk_10009FFA8;
    v15 = _Block_copy(&v16);

    [v13 addErrorBlock:v15];

    _Block_release(v15);
  }

  else
  {
    sub_100001D04(&qword_1000A5EA0, &qword_100086580);
    v9 = Promise.__allocating_init(value:)();
  }

  *a5 = v9;
}

uint64_t sub_10006EA60()
{
  if (qword_1000A4DD8 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A5DC0, qword_1000A5DD8);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v0 = *(type metadata accessor for LogMessage() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  return Promise.resolve(_:)();
}

uint64_t sub_10006EBA8()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  if (qword_1000A4DD8 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A5DC0, qword_1000A5DD8);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x800000010008A450;
  v5._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v10[3] = v9;
  v6 = sub_1000061A4(v10);
  (*(*(v9 - 8) + 16))(v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v10);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  return Promise.reject(_:)();
}

void sub_10006EDE0(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_100001D04(&qword_1000A5E98, &qword_100086578);
  v4 = Promise.__allocating_init()();
  v5 = [v3 flush];
  v12 = sub_10006F690;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10006F1B8;
  v11 = &unk_10009FF30;
  v6 = _Block_copy(&v8);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v12 = sub_10006F6B0;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10006EDD8;
  v11 = &unk_10009FF58;
  v7 = _Block_copy(&v8);

  [v5 addErrorBlock:v7];

  _Block_release(v7);
  *a2 = v4;
}

uint64_t sub_10006EF90(void *a1)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  if (qword_1000A4DD8 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A5DC0, qword_1000A5DD8);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x2064656873756C46;
  v7._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v11[3] = sub_100040154(0, &qword_1000A5CD8, NSNumber_ptr);
  v11[0] = a1;
  v8 = a1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v11);
  v9._countAndFlagsBits = 0x7363697274656D20;
  v9._object = 0xEF73746E65766520;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  v11[0] = [v8 integerValue];
  return Promise.resolve(_:)();
}

void sub_10006F1C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10006F22C()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  if (qword_1000A4DD8 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A5DC0, qword_1000A5DD8);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x800000010008A420;
  v5._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v10[3] = v9;
  v6 = sub_1000061A4(v10);
  (*(*(v9 - 8) + 16))(v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v10);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  return Promise.reject(_:)();
}

uint64_t sub_10006F45C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *(a4 + 20)))
  {
    __chkstk_darwin(result);

    SendableWrapper.withValue<A>(_:)();
  }

  return result;
}

uint64_t sub_10006F504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *(a4 + 20)))
  {
    __chkstk_darwin(a1);

    sub_100001D04(&qword_1000A5EA0, &qword_100086580);
    SendableWrapper.withValue<A>(_:)();

    return v6;
  }

  else
  {
    sub_100001D04(&qword_1000A5EA0, &qword_100086580);
    return Promise.__allocating_init(value:)();
  }
}

uint64_t sub_10006F5E0(uint64_t a1)
{
  if (*(v1 + *(a1 + 20)))
  {

    sub_100001D04(&qword_1000A5E98, &qword_100086578);
    SendableWrapper.withValue<A>(_:)();

    return v3;
  }

  else
  {
    sub_100001D04(&qword_1000A5E98, &qword_100086578);
    return Promise.__allocating_init(value:)();
  }
}

uint64_t sub_10006F698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006F720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006F768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006F7C0(uint64_t a1)
{

  MKBDeviceUnlockedSinceBoot();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10006A340(isa, 7693922, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  return a1;
}

uint64_t sub_10006F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000DAF8;

  return MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(a1, a2, a3, a4);
}

uint64_t sub_10006F91C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MetricsFieldsProviderCategory.timeSensitive(_:);
  v3 = type metadata accessor for MetricsFieldsProviderCategory();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10006F9A8(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  Date.init(timeIntervalSince1970:)();
  v10 = static TimeConversion.amsServerTime(from:)();
  v15[3] = sub_10006D4B8();
  v15[0] = v10;
  v11 = *(a1 + 32);
  sub_100006154(a1, *(a1 + 24));
  v12 = v10;
  dispatch thunk of MetricsFieldsBuilder.addValue(_:forField:)();

  v13 = *(v3 + 8);
  v13(v7, v2);
  v13(v9, v2);
  return sub_100001D4C(v15);
}

unint64_t sub_10006FB60(uint64_t a1)
{
  v2 = 0xD00000000000001ELL;
  v3 = sub_100001D04(&unk_1000A56F0, &qword_1000854F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for Bag();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000124C8(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100012538(v11);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v17 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    __chkstk_darwin(v18);
    *(&v20 - 2) = 0xD00000000000001ELL;
    *(&v20 - 1) = 0x800000010008A4A0;
    Bag.Value.current(or:)();
    (*(v4 + 8))(v7, v3);
    (*(v13 + 8))(v16, v12);
    return v20;
  }

  return v2;
}

uint64_t sub_10006FE1C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_10006FE34(uint64_t a1, uint64_t a2)
{
  v3[66] = v2;
  v3[65] = a2;
  v3[64] = a1;
  v4 = type metadata accessor for Bag();
  v3[67] = v4;
  v5 = *(v4 - 8);
  v3[68] = v5;
  v6 = *(v5 + 64) + 15;
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v7 = type metadata accessor for MetricsPipeline.Configuration();
  v3[71] = v7;
  v8 = *(v7 - 8);
  v3[72] = v8;
  v9 = *(v8 + 64) + 15;
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v10 = type metadata accessor for MetricsFieldExclusionRequest();
  v3[75] = v10;
  v11 = *(v10 - 8);
  v3[76] = v11;
  v12 = *(v11 + 64) + 15;
  v3[77] = swift_task_alloc();
  v13 = type metadata accessor for MetricsFieldsAggregator();
  v3[78] = v13;
  v14 = *(v13 - 8);
  v3[79] = v14;
  v15 = *(v14 + 64) + 15;
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v16 = type metadata accessor for JSONObject();
  v3[89] = v16;
  v17 = *(v16 - 8);
  v3[90] = v17;
  v18 = *(v17 + 64) + 15;
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v19 = sub_100001D04(&qword_1000A4F28, &qword_100083DF8);
  v3[93] = v19;
  v20 = *(v19 - 8);
  v3[94] = v20;
  v21 = *(v20 + 64) + 15;
  v3[95] = swift_task_alloc();
  v22 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  v3[96] = swift_task_alloc();
  v23 = *(*(sub_100001D04(&qword_1000A5FC8, &qword_100086728) - 8) + 64) + 15;
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();

  return _swift_task_switch(sub_1000701D4, v2, 0);
}

uint64_t sub_1000701D4()
{
  v1 = v0[98];
  v2 = v0[66];
  v3 = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_cachedPipeline;
  v0[99] = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_cachedPipeline;
  swift_beginAccess();
  sub_100071308(v2 + v3, v1);
  v4 = type metadata accessor for MetricsPipeline();
  v0[100] = v4;
  v5 = *(v4 - 8);
  v0[101] = v5;
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[98];
  if (v6 == 1)
  {
    sub_10000DCA0(v0[98], &qword_1000A5FC8, &qword_100086728);
    if (qword_1000A4D60 != -1)
    {
      swift_once();
    }

    v8 = v0[96];
    v44 = v0[95];
    v9 = v0[68];
    v10 = v0[67];
    v11 = v0[65];
    TaskLocal.get()();
    v12 = v0[6];
    sub_100001CC0(v0 + 2, v0[5]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v13 = *(type metadata accessor for LogMessage() - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 2);
    v16 = *(v9 + 16);
    v0[102] = v16;
    v0[103] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v16(v8, v11, v10);
    (*(v9 + 56))(v8, 0, 1, v10);
    v0[104] = sub_10006FB60(v8);
    v0[105] = v17;
    sub_10000DCA0(v8, &unk_1000A56A0, &unk_100083E10);
    v18 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v19 = async function pointer to Bag.Value.current(or:)[1];
    v20 = swift_task_alloc();
    v0[106] = v20;
    *v20 = v0;
    v20[1] = sub_1000706A0;
    v21 = v0[95];
    v22 = v0[93];

    return Bag.Value.current(or:)(v0 + 63, sub_100071108, 0, v22);
  }

  else
  {
    (*(v5 + 32))(v0[64], v0[98], v4);
    v23 = v0[98];
    v24 = v0[97];
    v25 = v0[96];
    v26 = v0[95];
    v27 = v0[92];
    v28 = v0[91];
    v29 = v0[88];
    v30 = v0[87];
    v31 = v0[86];
    v32 = v0[85];
    v35 = v0[84];
    v36 = v0[83];
    v37 = v0[82];
    v38 = v0[81];
    v39 = v0[80];
    v40 = v0[77];
    v41 = v0[74];
    v42 = v0[73];
    v43 = v0[70];
    v45 = v0[69];

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_1000706A0()
{
  v1 = *(*v0 + 848);
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 752);
  v4 = *(*v0 + 744);
  v5 = *(*v0 + 528);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10007080C, v5, 0);
}

uint64_t sub_10007080C()
{
  v59 = v0[105];
  v30 = v0[104];
  v36 = v0[102];
  v37 = v0[103];
  v49 = v0[100];
  v51 = v0[99];
  v45 = v0[101];
  v47 = v0[97];
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v32 = v0[88];
  v29 = v0[87];
  v27 = v0[85];
  v28 = v0[86];
  v25 = v0[83];
  v26 = v0[84];
  v57 = v0[82];
  v24 = v0[81];
  v5 = v0[80];
  v6 = v0[77];
  v61 = v0[76];
  v63 = v0[79];
  v53 = v0[75];
  v55 = v0[78];
  v39 = v0[73];
  v40 = v0[74];
  v41 = v0[72];
  v43 = v0[71];
  v34 = v0[70];
  v35 = v0[69];
  v33 = v0[67];
  v44 = v0[66];
  v31 = v0[65];
  v7 = v0[63];
  v42 = v0[64];
  sub_100001D04(&qword_1000A4F40, &unk_100083E20);
  v38 = v1;
  JSONObject.init(wrapping:)();
  sub_100001D04(&qword_1000A5FD0, &unk_100086730);
  (*(v3 + 16))(v2, v1, v4);
  v0[10] = type metadata accessor for MetricsEventLinterBagConfiguration();
  v0[11] = &protocol witness table for MetricsEventLinterBagConfiguration;
  sub_1000061A4(v0 + 7);

  MetricsEventLinterBagConfiguration.init(_:)();
  LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:configuration:rules:)();
  MetricsFieldsAggregator.init()();
  v0[15] = type metadata accessor for BaseVersionFieldProvider();
  v0[16] = &protocol witness table for BaseVersionFieldProvider;
  sub_1000061A4(v0 + 12);
  BaseVersionFieldProvider.init(supportedEventTypes:)();
  static MetricsFieldExclusionRequest.baseVersion.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v8 = *(v61 + 8);
  v8(v6, v53);
  v9 = *(v63 + 8);
  v9(v5, v55);
  sub_100001D4C(v0 + 12);
  v0[20] = &type metadata for EventTimeMetricsFieldProvider;
  v0[21] = sub_100071378();
  static MetricsFieldExclusionRequest.eventTime.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v8(v6, v53);
  v9(v24, v55);
  sub_100001D4C(v0 + 17);
  v10 = [objc_opt_self() mainBundle];
  v0[25] = type metadata accessor for AppMetricsFieldProvider();
  v0[26] = &protocol witness table for AppMetricsFieldProvider;
  sub_1000061A4(v0 + 22);
  AppMetricsFieldProvider.init(bundle:)();
  static MetricsFieldExclusionRequest.app.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v8(v6, v53);
  v9(v57, v55);
  sub_100001D4C(v0 + 22);
  default argument 0 of AppVersionFieldProvider.init(bundle:)();
  v0[30] = type metadata accessor for AppVersionFieldProvider();
  v0[31] = &protocol witness table for AppVersionFieldProvider;
  sub_1000061A4(v0 + 27);
  AppVersionFieldProvider.init(bundle:)();
  static MetricsFieldExclusionRequest.appVersion.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v8(v6, v53);
  v9(v25, v55);
  sub_100001D4C(v0 + 27);
  v0[35] = type metadata accessor for SystemInfoMetricsFieldsProvider();
  v0[36] = &protocol witness table for SystemInfoMetricsFieldsProvider;
  sub_1000061A4(v0 + 32);
  SystemInfoMetricsFieldsProvider.init()();
  static MetricsFieldExclusionRequest.systemInfo.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v8(v6, v53);
  v9(v26, v55);
  sub_100001D4C(v0 + 32);
  v0[40] = type metadata accessor for ClientBuildTypeFieldProvider();
  v0[41] = &protocol witness table for ClientBuildTypeFieldProvider;
  sub_1000061A4(v0 + 37);
  ClientBuildTypeFieldProvider.init(supportedEventTypes:)();
  static MetricsFieldExclusionRequest.clientBuildType.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v8(v6, v53);
  v9(v27, v55);
  sub_100001D4C(v0 + 37);
  v0[45] = type metadata accessor for UserAgentFieldProvider();
  v0[46] = &protocol witness table for UserAgentFieldProvider;
  sub_1000061A4(v0 + 42);
  UserAgentFieldProvider.init(supportedEventTypes:)();
  static MetricsFieldExclusionRequest.userAgent.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v8(v6, v53);
  v9(v28, v55);
  sub_100001D4C(v0 + 42);
  v0[50] = type metadata accessor for XPSamplingFieldsProvider();
  v0[51] = &protocol witness table for XPSamplingFieldsProvider;
  sub_1000061A4(v0 + 47);
  XPSamplingFieldsProvider.init(supportedEventTypes:)();
  static MetricsFieldExclusionRequest.sampling.getter();
  MetricsFieldsAggregator.addingOptOutProvider(_:forRequest:)();
  v8(v6, v53);
  v9(v29, v55);
  sub_100001D4C(v0 + 47);
  v36(v34, v31, v33);
  sub_1000713CC();
  v36(v35, v31, v33);
  v0[55] = type metadata accessor for DaemonMetricsEventRecorder();
  v0[56] = sub_100071430();
  v11 = sub_1000061A4(v0 + 52);

  sub_10006DEB8(v35, v30, v59, v11);
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:recorder:)();
  MetricsPipeline.Configuration.withAggregator(_:)();
  (*(v41 + 8))(v39, v43);
  MetricsPipeline.init(from:)();

  v9(v32, v55);
  (*(v3 + 8))(v38, v4);
  (*(v45 + 16))(v47, v42, v49);
  (*(v45 + 56))(v47, 0, 1, v49);
  swift_beginAccess();
  sub_100071488(v47, v44 + v51);
  swift_endAccess();
  v12 = v0[98];
  v13 = v0[97];
  v14 = v0[96];
  v15 = v0[95];
  v16 = v0[92];
  v17 = v0[91];
  v18 = v0[88];
  v19 = v0[87];
  v20 = v0[86];
  v21 = v0[85];
  v46 = v0[84];
  v48 = v0[83];
  v50 = v0[82];
  v52 = v0[81];
  v54 = v0[80];
  v56 = v0[77];
  v58 = v0[74];
  v60 = v0[73];
  v62 = v0[70];
  v64 = v0[69];

  v22 = v0[1];

  return v22();
}

unint64_t sub_100071108@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000255C(&_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

uint64_t sub_100071138()
{
  sub_10000DCA0(v0 + OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_cachedPipeline, &qword_1000A5FC8, &qword_100086728);
  sub_100001D4C((v0 + OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_bagManager));
  sub_100001D4C((v0 + OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_restrictions));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for MetricsPipelineManager()
{
  result = qword_1000A5EF8;
  if (!qword_1000A5EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000711FC()
{
  sub_1000712A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000712A4()
{
  if (!qword_1000A5F08)
  {
    type metadata accessor for MetricsPipeline();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5F08);
    }
  }
}

uint64_t sub_100071308(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A5FC8, &qword_100086728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100071378()
{
  result = qword_1000A5FD8;
  if (!qword_1000A5FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5FD8);
  }

  return result;
}

unint64_t sub_1000713CC()
{
  result = qword_1000A5FE0;
  if (!qword_1000A5FE0)
  {
    sub_100018FD0(&qword_1000A5FD0, &unk_100086730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5FE0);
  }

  return result;
}

unint64_t sub_100071430()
{
  result = qword_1000A5FE8;
  if (!qword_1000A5FE8)
  {
    type metadata accessor for DaemonMetricsEventRecorder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5FE8);
  }

  return result;
}

uint64_t sub_100071488(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A5FC8, &qword_100086728);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007150C()
{
  result = qword_1000A5FF0;
  if (!qword_1000A5FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5FF0);
  }

  return result;
}

double sub_100071560(uint64_t a1)
{
  v2 = sub_100001D04(&qword_1000A4F38, &unk_100086430);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v20 - v5;
  v7 = sub_100001D04(&unk_1000A56A0, &unk_100083E10);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  v11 = type metadata accessor for Bag();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (jet_debug_tooling_os_variant_has_internal_content()())
  {
    v16 = 0.1;
  }

  else
  {
    v16 = 0.00001;
  }

  sub_1000124C8(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100012538(v10);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    __chkstk_darwin(v18);
    *&v20[-2] = v16;
    Bag.Value.current(or:)();
    (*(v3 + 8))(v6, v2);
    (*(v12 + 8))(v15, v11);
    return *&v20[1];
  }

  return v16;
}

uint64_t sub_100071820(uint64_t a1)
{
  sub_100001D04(&qword_1000A4FA8, &unk_100083FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100086820;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  strcpy((inited + 48), "pushReceived");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "eventVersion");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = 1;
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0x496C656E6E616863;
  *(inited + 136) = 0xE900000000000044;
  v4 = v1[1];
  *(inited + 144) = *v1;
  *(inited + 152) = v4;
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 176), "broadcastTime");
  *(inited + 190) = -4864;
  v5 = type metadata accessor for PushReceivedMetricsEvent();
  v6 = *(v5 + 20);

  v7 = static TimeConversion.amsServerTime(from:)();
  v8 = sub_10006D4B8();
  *(inited + 192) = v7;
  *(inited + 216) = v8;
  *(inited + 224) = 0x797469726F697270;
  *(inited + 232) = 0xE800000000000000;
  v9 = *(v1 + *(v5 + 24));
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v9;
  sub_100002248(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A4E48, &unk_100086440);
  swift_arrayDestroy();
  sub_10006FB60(a1);
  return MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)();
}

uint64_t type metadata accessor for PushReceivedMetricsEvent()
{
  result = qword_1000A6050;
  if (!qword_1000A6050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100071A68(uint64_t a1)
{
  v3 = v1;
  Hasher.init(_seed:)();
  v4 = *v1;
  v5 = v1[1];
  String.hash(into:)();
  v6 = *(a1 + 20);
  type metadata accessor for Date();
  sub_100071FA4(&qword_1000A5DA8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v3 + *(a1 + 24)));
  return Hasher._finalize()();
}

void sub_100071B24(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  String.hash(into:)();
  v7 = *(a2 + 20);
  type metadata accessor for Date();
  sub_100071FA4(&qword_1000A5DA8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v4 + *(a2 + 24)));
}

Swift::Int sub_100071BCC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  String.hash(into:)();
  v7 = *(a2 + 20);
  type metadata accessor for Date();
  sub_100071FA4(&qword_1000A5DA8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v4 + *(a2 + 24)));
  return Hasher._finalize()();
}

BOOL sub_100071C84(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v7 = *(a3 + 20), (static Date.== infix(_:_:)()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100071D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100071DDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100071E80()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100071F4C(uint64_t a1)
{
  result = sub_100071FA4(&qword_1000A6098, type metadata accessor for PushReceivedMetricsEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100071FA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100072000()
{
  result = qword_1000A60A0;
  if (!qword_1000A60A0)
  {
    type metadata accessor for DaemonScheduleTaskRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A60A0);
  }

  return result;
}

uint64_t sub_100072058()
{
  v1 = *v0;
  v71[0] = type metadata accessor for OSSignpostError();
  v2 = *(v71[0] - 8);
  v3 = *(v2 + 64);
  (__chkstk_darwin)();
  v93 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(sub_100001D04(&qword_1000A4ED8, &qword_100084010) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v95 = v71 - v6;
  v81 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v80 = *(v81 - 8);
  v7 = *(v80 + 64);
  (__chkstk_darwin)();
  v78 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v89 - 8);
  v9 = *(v87 + 64);
  (__chkstk_darwin)();
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DispatchQoS();
  v83 = *(v86 - 8);
  v12 = *(v83 + 64);
  (__chkstk_darwin)();
  v82 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64);
  (__chkstk_darwin)();
  v96 = type metadata accessor for OSSignpostID();
  v15 = *(v96 - 8);
  v16 = *(v15 + 64);
  v17 = (__chkstk_darwin)();
  v90 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = v71 - v20;
  __chkstk_darwin(v19);
  v23 = v71 - v22;
  if (qword_1000A4DE8 != -1)
  {
    swift_once();
  }

  v97 = v1;
  v94 = v2;
  v24 = type metadata accessor for OSSignposter();
  v25 = sub_100018718(v24, qword_1000A60F0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v85 = v25;
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v29, "Daemon.run", "", v28, 2u);
  }

  v30 = v96;
  (*(v15 + 16))(v21, v23, v96);
  v31 = type metadata accessor for OSSignpostIntervalState();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v88 = OSSignpostIntervalState.init(id:isOpen:)();
  v34 = *(v15 + 8);
  v91 = v15 + 8;
  v84 = v34;
  v34(v23, v30);
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  v35 = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v36 = *(type metadata accessor for LogMessage() - 8);
  v37 = *(v36 + 80);
  v38 = (v37 + 32) & ~v37;
  v76 = *(v36 + 72);
  v75 = v37;
  v79 = v35;
  v39 = swift_allocObject();
  v74 = xmmword_1000839C0;
  *(v39 + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v40._countAndFlagsBits = 0x676E697472617453;
  v40._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v40);
  v100 = &type metadata for String;
  strcpy(&aBlock, "jetpackassetd");
  HIWORD(aBlock) = -4864;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(&aBlock, &qword_1000A5630, &unk_100083BF0);
  v41._object = 0x800000010008A610;
  v41._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v41);
  v77 = v38;
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v71[1] = sub_100040154(0, &qword_1000A61F0, OS_dispatch_source_ptr);
  sub_100040154(0, &qword_1000A4F80, OS_dispatch_queue_ptr);
  v42 = static OS_dispatch_queue.main.getter();
  v43 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v101 = sub_1000801C4;
  v102 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v73 = &v99;
  v99 = sub_100081260;
  v100 = &unk_1000A0158;
  v44 = _Block_copy(&aBlock);
  v45 = v82;
  static DispatchQoS.unspecified.getter();
  sub_100073900();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v44);
  v72 = *(v87 + 8);
  v46 = v89;
  v72(v11, v89);
  v83 = *(v83 + 8);
  v47 = v86;
  (v83)(v45, v86);

  v87 = v43;
  OS_dispatch_source.resume()();
  v48 = v78;
  static OS_dispatch_source.MemoryPressureEvent.warning.getter();
  static OS_dispatch_source.makeMemoryPressureSource(eventMask:queue:)();
  (*(v80 + 8))(v48, v81);
  swift_getObjectType();
  v49 = swift_allocObject();
  *(v49 + 16) = v97;
  v101 = sub_1000803D8;
  v102 = v49;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v99 = sub_100081260;
  v100 = &unk_1000A01A8;
  v50 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  sub_100073900();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v50);
  v72(v11, v46);
  (v83)(v45, v47);

  OS_dispatch_source.resume()();
  v51 = type metadata accessor for TaskPriority();
  (*(*(v51 - 8) + 56))(v95, 1, 1, v51);
  v52 = qword_1000A4DC8;
  v53 = v92;

  if (v52 != -1)
  {
    swift_once();
  }

  v54 = qword_1000A6450;
  v55 = sub_1000811A0(&qword_1000A5660, type metadata accessor for DaemonActor);
  v56 = swift_allocObject();
  v56[2] = v54;
  v56[3] = v55;
  v57 = v97;
  v56[4] = v53;
  v56[5] = v57;

  sub_100037B80(0, 0, v95, &unk_100086930, v56);

  v58 = OSSignposter.logHandle.getter();
  v59 = v90;
  OSSignpostIntervalState.signpostID.getter();
  v60 = static os_signpost_type_t.end.getter();
  v61 = OS_os_log.signpostsEnabled.getter();
  v63 = v93;
  v62 = v94;
  if (v61)
  {

    checkForErrorAndConsumeState(state:)();

    v64 = v71[0];
    if ((*(v62 + 88))(v63, v71[0]) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v65 = "[Error] Interval already ended";
    }

    else
    {
      (*(v62 + 8))(v63, v64);
      v65 = "";
    }

    v66 = swift_slowAlloc();
    *v66 = 0;
    v67 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, v60, v67, "Daemon.run", v65, v66, 2u);
  }

  v84(v59, v96);
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  *(swift_allocObject() + 16) = v74;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  _CFRunLoopSetPerCalloutAutoreleasepoolEnabled();
  do
  {
    v68 = objc_autoreleasePoolPush();
    v69 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 15.0, 1u);
    objc_autoreleasePoolPop(v68);
  }

  while ((v69 - 1) > 1);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_100072D88()
{
  type metadata accessor for Daemon();
  swift_allocObject();
  result = sub_100072EA4();
  qword_1000A6458 = result;
  return result;
}

NSString sub_100072E6C()
{
  result = String._bridgeToObjectiveC()();
  qword_1000A6460 = result;
  return result;
}

uint64_t sub_100072EA4()
{
  v2 = *v0;
  v45 = v1;
  v46 = v2;
  v3 = type metadata accessor for XPCListener.InitializationOptions();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v44[1] = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v44 - v14;
  if (qword_1000A4DE8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for OSSignposter();
  sub_100018718(v16, qword_1000A60F0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v17 = OSSignposter.logHandle.getter();
  v18 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v20, "Daemon.init", "", v19, 2u);
  }

  (*(v9 + 16))(v13, v15, v8);
  v21 = type metadata accessor for OSSignpostIntervalState();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v15, v8);
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v25 = *(type metadata accessor for LogMessage() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0x696C616974696E49;
  v28._object = 0xED000020676E697ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v28);
  v48 = &type metadata for String;
  strcpy(v47, "jetpackassetd");
  v47[7] = -4864;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v47, &qword_1000A5630, &unk_100083BF0);
  v29._countAndFlagsBits = 0x6E6F6D65616420;
  v29._object = 0xE700000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  type metadata accessor for BaseObjectGraph();
  sub_100005834();
  v30 = BaseObjectGraph.__allocating_init(_:)();
  v31 = v49;
  *(v49 + 24) = v30;
  if (qword_1000A4DA0 != -1)
  {
    swift_once();
  }

  v32 = qword_1000A4DC0;

  v33 = v46;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = qword_1000A6448;
  static XPCListener.InitializationOptions.inactive.getter();
  v35 = *(v31 + 24);
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v33;
  v37 = type metadata accessor for XPCListener();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();

  v40 = v45;
  v41 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  if (v40)
  {
    sub_100080644("Daemon.init", 11, 2, v24, &qword_1000A4DE8, qword_1000A60F0);

    v42 = *(v31 + 24);

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v31 + 16) = v41;
    sub_100080644("Daemon.init", 11, 2, v24, &qword_1000A4DE8, qword_1000A60F0);
  }

  return v31;
}

uint64_t sub_1000734D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v27 = a1;
  v28 = a3;
  v3 = type metadata accessor for LogMessage.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001D04(&qword_1000A6230, &qword_100086970);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  v11 = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v12 = *(type metadata accessor for LogMessage() - 8);
  v13 = *(v12 + 72);
  v14 = *(v12 + 80);
  v24 = v11;
  v15 = swift_allocObject();
  v23 = xmmword_1000839C0;
  *(v15 + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v16 = v27;
  v30 = v27;
  type metadata accessor for XPCListener.IncomingSessionRequest();

  ClientEntitlementChecker.init(_:)();
  v17._countAndFlagsBits = 0xD00000000000001FLL;
  v17._object = 0x800000010008A860;
  v18 = ClientEntitlementChecker.hasEntitlement(_:)(v17);
  (*(v7 + 8))(v10, v6);
  if (v18)
  {
    sub_100080B28();
    return dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
  }

  else
  {
    sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
    *(swift_allocObject() + 16) = v23;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 0xD00000000000001ELL;
    v20._object = 0x800000010008A880;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v32 = &type metadata for String;
    v30 = 0xD00000000000001FLL;
    v31 = 0x800000010008A860;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v30, &qword_1000A5630, &unk_100083BF0);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v22._countAndFlagsBits = 0xD00000000000003BLL;
    v22._object = 0x800000010008A8A0;
    String.append(_:)(v22);
    v29 = v16;
    _print_unlocked<A, B>(_:_:)();
    dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  }
}

uint64_t sub_100073900()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000811A0(&qword_1000A6218, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001D04(&qword_1000A6220, &qword_100086968);
  sub_100040238(&qword_1000A6228, &qword_1000A6220, &qword_100086968);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000739EC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  __chkstk_darwin();
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v13 = *(type metadata accessor for LogMessage() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.warning(_:)();

  static os_signpost_type_t.event.getter();
  sub_100040154(0, &qword_1000A6210, OS_os_log_ptr);
  v16 = static OS_os_log.default.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v9 + 8))(v12, v8);
  sub_100040154(0, &qword_1000A4F80, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100080534;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100081260;
  aBlock[3] = &unk_1000A01F8;
  v18 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_1000811A0(&qword_1000A6218, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001D04(&qword_1000A6220, &qword_100086968);
  sub_100040238(&qword_1000A6228, &qword_1000A6220, &qword_100086968);
  v19 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v3, v19);
  (*(v22 + 8))(v7, v23);
}

uint64_t sub_100073EB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100073EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[43] = a4;
  v5 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[44] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v4[45] = v6;
  v7 = *(v6 - 8);
  v4[46] = v7;
  v8 = *(v7 + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  if (qword_1000A4DC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_1000811A0(&qword_1000A5660, type metadata accessor for DaemonActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[49] = v10;
  v4[50] = v9;

  return _swift_task_switch(sub_100074080, v10, v9);
}

uint64_t sub_100074080()
{
  if (qword_1000A4DE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 384);
  v2 = type metadata accessor for OSSignposter();
  sub_100018718(v2, qword_1000A60F0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 384);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "Daemon.run.task", "", v6, 2u);
  }

  v8 = *(v0 + 376);
  v9 = *(v0 + 384);
  v10 = *(v0 + 360);
  v11 = *(v0 + 368);
  v12 = *(v0 + 344);

  (*(v11 + 16))(v8, v9, v10);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 408) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  *(v0 + 300) = 0;
  *(v0 + 296) = 0;
  os_unfair_lock_lock((v0 + 300));
  *(v0 + 296) = 1;
  os_unfair_lock_unlock((v0 + 300));
  *(v0 + 416) = *(v12 + 24);
  v16 = sub_100001D04(&qword_1000A4E78, &qword_100083AC8);
  v17 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v18 = swift_task_alloc();
  *(v0 + 424) = v18;
  *v18 = v0;
  v18[1] = sub_1000742B4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v16, v16);
}

uint64_t sub_1000742B4()
{
  v2 = *v1;
  v3 = (*v1)[53];
  v8 = *v1;
  (*v1)[54] = v0;

  if (v0)
  {
    v4 = v2[49];
    v5 = v2[50];
    v6 = sub_100075660;
  }

  else
  {
    sub_100001D4C(v2 + 2);
    v4 = v2[49];
    v5 = v2[50];
    v6 = sub_1000743D0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000743D0()
{
  os_unfair_lock_lock((v0 + 300));
  *(v0 + 296) = 4;
  os_unfair_lock_unlock((v0 + 300));
  v1 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 440) = v3;
  *v3 = v0;
  v3[1] = sub_1000744A4;
  v4 = *(v0 + 416);

  return BaseObjectGraph.inject<A>(_:)(v0 + 136, v1, v1);
}

uint64_t sub_1000744A4()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 400);
  v6 = *(v2 + 392);
  if (v0)
  {
    v7 = sub_100075958;
  }

  else
  {
    v7 = sub_1000745E0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000745E0()
{
  v1 = *(v0 + 416);
  sub_100001CC0((v0 + 136), *(v0 + 160));
  sub_1000438FC(v1);
  os_unfair_lock_lock((v0 + 300));
  *(v0 + 296) = 3;
  os_unfair_lock_unlock((v0 + 300));
  v2 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 456) = v4;
  *v4 = v0;
  v4[1] = sub_1000746D4;
  v5 = *(v0 + 416);

  return BaseObjectGraph.inject<A>(_:)(v0 + 176, v2, v2);
}

uint64_t sub_1000746D4()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = v0;

  v5 = *(v2 + 400);
  v6 = *(v2 + 392);
  if (v0)
  {
    v7 = sub_100075C50;
  }

  else
  {
    v7 = sub_100074810;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100074810()
{
  v1 = *sub_100001CC0(v0 + 22, v0[25]);
  v2 = swift_task_alloc();
  v0[59] = v2;
  *v2 = v0;
  v2[1] = sub_1000748AC;

  return sub_100028A34();
}

uint64_t sub_1000748AC()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v6 = *v0;

  v3 = *(v1 + 400);
  v4 = *(v1 + 392);

  return _swift_task_switch(sub_1000749E0, v4, v3);
}

uint64_t sub_1000749E0()
{
  os_unfair_lock_lock((v0 + 300));
  *(v0 + 296) = 2;
  os_unfair_lock_unlock((v0 + 300));
  v1 = type metadata accessor for AssetSQLiteDatabase();
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 480) = v3;
  *v3 = v0;
  v3[1] = sub_100074AA8;
  v4 = *(v0 + 416);

  return BaseObjectGraph.inject<A>(_:)(v0 + 336, v1, v1);
}

uint64_t sub_100074AA8()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  v5 = *(v2 + 400);
  v6 = *(v2 + 392);
  if (v0)
  {
    v7 = sub_100075F50;
  }

  else
  {
    v7 = sub_100074BE4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100074BE4()
{
  v0[62] = v0[42];
  v1 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v2 = swift_task_alloc();
  v0[63] = v2;
  *v2 = v0;
  v2[1] = sub_100074CA0;
  v3 = v0[43];

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v2, &unk_100086948, v3, &type metadata for () + 8);
}

uint64_t sub_100074CA0()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 400);
  v6 = *(v2 + 392);
  if (v0)
  {
    v7 = sub_100076258;
  }

  else
  {
    v7 = sub_100074DDC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100074DDC()
{
  v1 = *(v0 + 496);
  os_unfair_lock_lock((v0 + 300));
  os_unfair_lock_unlock((v0 + 300));

  sub_100001D4C((v0 + 176));
  sub_100001D4C((v0 + 136));
  v2 = *(v0 + 512);
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 344);
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v7 = *(v3 + 16);
  dispatch thunk of XPCListener.activate()();
  v9 = *(v0 + 376);
  v8 = *(v0 + 384);
  v10 = *(v0 + 352);
  sub_100080644("Daemon.run.task", 15, 2, *(v0 + 408), &qword_1000A4DE8, qword_1000A60F0);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10007500C()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {

    v5 = *(v2 + 392);
    v6 = *(v2 + 400);
    v7 = sub_100075394;
  }

  else
  {
    v5 = *(v2 + 392);
    v6 = *(v2 + 400);
    v7 = sub_100075134;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100075134()
{
  sub_10000626C((v0 + 96), v0 + 56);
  v1 = *(v0 + 536);
  v2 = *(v0 + 545);
  v3 = *(v0 + 520);
  v4 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(v0 + 544) = v2;
  sub_1000804E0();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_100001D4C((v0 + 56));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 344);
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v6 = *(type metadata accessor for LogMessage() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v9 = *(v5 + 16);
  dispatch thunk of XPCListener.activate()();
  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  v12 = *(v0 + 352);
  sub_100080644("Daemon.run.task", 15, 2, *(v0 + 408), &qword_1000A4DE8, qword_1000A60F0);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100075394()
{
  *(v0 + 96) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  default argument 0 of CoreAnalyticsLogger.init(provider:decorator:)();
  *(v0 + 80) = type metadata accessor for CoreAnalyticsLogger();
  *(v0 + 88) = &protocol witness table for CoreAnalyticsLogger;
  sub_1000061A4((v0 + 56));
  CoreAnalyticsLogger.init(provider:decorator:)();
  if (*(v0 + 120))
  {
    sub_10000DCA0(v0 + 96, &qword_1000A61F8, &qword_100086938);
  }

  v1 = *(v0 + 545);
  v2 = *(v0 + 520);
  v3 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(v0 + 544) = v1;
  sub_1000804E0();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_100001D4C((v0 + 56));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 344);
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v8 = *(v4 + 16);
  dispatch thunk of XPCListener.activate()();
  v10 = *(v0 + 376);
  v9 = *(v0 + 384);
  v11 = *(v0 + 352);
  sub_100080644("Daemon.run.task", 15, 2, *(v0 + 408), &qword_1000A4DE8, qword_1000A60F0);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100075660()
{
  v1 = *(v0 + 432);
  *(v0 + 545) = 1;
  *(v0 + 520) = v1;
  os_unfair_lock_lock((v0 + 300));
  os_unfair_lock_unlock((v0 + 300));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 352);
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v3 = *(type metadata accessor for LogMessage() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010008A660;
  v6._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 240) = &type metadata for DaemonStartupStatus.Phase;
  *(v0 + 216) = 1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0x726F727245202C27;
  v7._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);
  *(v0 + 272) = v9;
  v10 = sub_1000061A4((v0 + 248));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v12 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v13 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v14 = swift_task_alloc();
  *(v0 + 528) = v14;
  *v14 = v0;
  v14[1] = sub_10007500C;
  v15 = *(v0 + 416);

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v12, v12);
}

uint64_t sub_100075958()
{
  v1 = *(v0 + 448);
  *(v0 + 545) = 4;
  *(v0 + 520) = v1;
  os_unfair_lock_lock((v0 + 300));
  os_unfair_lock_unlock((v0 + 300));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 352);
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v3 = *(type metadata accessor for LogMessage() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010008A660;
  v6._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 240) = &type metadata for DaemonStartupStatus.Phase;
  *(v0 + 216) = 4;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0x726F727245202C27;
  v7._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);
  *(v0 + 272) = v9;
  v10 = sub_1000061A4((v0 + 248));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v12 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v13 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v14 = swift_task_alloc();
  *(v0 + 528) = v14;
  *v14 = v0;
  v14[1] = sub_10007500C;
  v15 = *(v0 + 416);

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v12, v12);
}

uint64_t sub_100075C50()
{
  sub_100001D4C((v0 + 136));
  v1 = *(v0 + 464);
  *(v0 + 545) = 3;
  *(v0 + 520) = v1;
  os_unfair_lock_lock((v0 + 300));
  os_unfair_lock_unlock((v0 + 300));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 352);
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v3 = *(type metadata accessor for LogMessage() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010008A660;
  v6._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 240) = &type metadata for DaemonStartupStatus.Phase;
  *(v0 + 216) = 3;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0x726F727245202C27;
  v7._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);
  *(v0 + 272) = v9;
  v10 = sub_1000061A4((v0 + 248));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v12 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v13 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v14 = swift_task_alloc();
  *(v0 + 528) = v14;
  *v14 = v0;
  v14[1] = sub_10007500C;
  v15 = *(v0 + 416);

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v12, v12);
}

uint64_t sub_100075F50()
{
  sub_100001D4C((v0 + 176));
  sub_100001D4C((v0 + 136));
  v1 = *(v0 + 488);
  *(v0 + 545) = 2;
  *(v0 + 520) = v1;
  os_unfair_lock_lock((v0 + 300));
  os_unfair_lock_unlock((v0 + 300));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 352);
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v3 = *(type metadata accessor for LogMessage() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010008A660;
  v6._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 240) = &type metadata for DaemonStartupStatus.Phase;
  *(v0 + 216) = 2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0x726F727245202C27;
  v7._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);
  *(v0 + 272) = v9;
  v10 = sub_1000061A4((v0 + 248));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v12 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v13 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v14 = swift_task_alloc();
  *(v0 + 528) = v14;
  *v14 = v0;
  v14[1] = sub_10007500C;
  v15 = *(v0 + 416);

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v12, v12);
}

uint64_t sub_100076258()
{
  v1 = *(v0 + 496);

  sub_100001D4C((v0 + 176));
  sub_100001D4C((v0 + 136));
  v2 = *(v0 + 512);
  *(v0 + 545) = 2;
  *(v0 + 520) = v2;
  os_unfair_lock_lock((v0 + 300));
  os_unfair_lock_unlock((v0 + 300));
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 352);
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010008A660;
  v7._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  *(v0 + 240) = &type metadata for DaemonStartupStatus.Phase;
  *(v0 + 216) = 2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
  v8._countAndFlagsBits = 0x726F727245202C27;
  v8._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = *(v0 + 304);
  v10 = *(v0 + 312);
  *(v0 + 272) = v10;
  v11 = sub_1000061A4((v0 + 248));
  (*(*(v10 - 8) + 16))(v11, v9, v10);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v13 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v14 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v15 = swift_task_alloc();
  *(v0 + 528) = v15;
  *v15 = v0;
  v15[1] = sub_10007500C;
  v16 = *(v0 + 416);

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v13, v13);
}

uint64_t sub_100076588()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100076624;
  v3 = *(v0 + 16);

  return sub_10007671C(v1);
}

uint64_t sub_100076624()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10007671C(uint64_t a1)
{
  v3 = *v1;
  v2[11] = a1;
  v2[12] = v3;
  v4 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000767D0, 0, 0);
}

uint64_t sub_1000767D0()
{
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  *(v0 + 112) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v1 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 120) = *(v1 + 72);
  *(v0 + 176) = *(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v2 = type metadata accessor for AssetSQLiteDatabase();
  v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_1000769B0;
  v5 = *(v0 + 88);

  return BaseObjectGraph.inject<A>(_:)(v0 + 72, v2, v2);
}

uint64_t sub_1000769B0()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_100076D24;
  }

  else
  {
    v3 = sub_100076AC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100076AC4()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[18] = v0[9];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_100076BA0;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v5, &unk_100086960, v3, &type metadata for () + 8);
}

uint64_t sub_100076BA0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_100076ECC;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_100076CBC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100076CBC()
{
  v1 = v0[18];

  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100076D24()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 176);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010008A6E0;
  v6._countAndFlagsBits = 0xD000000000000026;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  *(v0 + 40) = v8;
  v9 = sub_1000061A4((v0 + 16));
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 16, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v11 = *(v0 + 104);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100076ECC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v7 = *(v0 + 104);
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x800000010008A6E0;
  v8._countAndFlagsBits = 0xD000000000000026;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  *(v0 + 40) = v10;
  v11 = sub_1000061A4((v0 + 16));
  (*(*(v10 - 8) + 16))(v11, v9, v10);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 16, &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v13 = *(v0 + 104);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100077084(uint64_t a1, uint64_t a2)
{
  v2[16] = a2;
  v3 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v4 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v6 = swift_task_alloc();
  v2[18] = v6;
  *v6 = v2;
  v6[1] = sub_100077170;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v4, v4);
}

uint64_t sub_100077170()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10007771C, 0, 0);
  }

  else
  {
    v4 = sub_100001D04(&unk_1000A5740, &unk_100085540);
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[20] = v6;
    *v6 = v3;
    v6[1] = sub_100077314;
    v7 = v3[16];

    return BaseObjectGraph.inject<A>(_:)(v3 + 7, v4, v4);
  }
}

uint64_t sub_100077314()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_100077780;
  }

  else
  {
    v3 = sub_100077428;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100077428()
{
  v2 = *(v0 + 168);
  v3 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  v4 = dispatch thunk of AssetPushSubscriptionStore.findAllPending()();
  if (v2)
  {
    sub_100001D4C((v0 + 56));
    sub_100001D4C((v0 + 16));
    v7 = *(v0 + 136);

    v8 = *(v0 + 8);
    goto LABEL_4;
  }

  v5 = v4;
  v6 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  v10 = dispatch thunk of AssetPushSubscriptionStore.findAllPendingToReattempt()();
  v11 = *(v5 + 16);

  if (v11 >> 31)
  {
    __break(1u);
    goto LABEL_12;
  }

  v1 = *(v10 + 16);

  if (v1 >> 31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(v0 + 176) = v11;
  *(v0 + 180) = v1;
  sub_100080A64();
  v6 = &type metadata for PingLog;
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();
  if (qword_1000A4DE0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v13 = *(v0 + 136);
  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v14 = *(type metadata accessor for LogMessage() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._object = 0x800000010008A710;
  v17._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  *(v0 + 120) = v6;
  *(v0 + 96) = v11;
  *(v0 + 100) = v1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 96, &qword_1000A5630, &unk_100083BF0);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 56));
  sub_100001D4C((v0 + 16));

  v8 = *(v0 + 8);
LABEL_4:

  return v8();
}

uint64_t sub_10007771C()
{
  v1 = v0[19];
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100077780()
{
  sub_100001D4C(v0 + 2);
  v1 = v0[21];
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100077818(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    v5 = a3;
    swift_once();
    a3 = v5;
  }

  v3 = *a3;
  return TaskLocal.get()();
}

uint64_t sub_100077898(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for OSSignposter();
  sub_100018750(v7, a2);
  v8 = sub_100018718(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_100018718(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_100077960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a2;
  v58 = a3;
  v63 = a4;
  v5 = type metadata accessor for XPCReceivedMessage();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  v7 = __chkstk_darwin(v5);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v47 - v8;
  v9 = type metadata accessor for JetPackAssetDaemonMessage();
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  v11 = __chkstk_darwin(v9);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  if (qword_1000A4E00 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A6108, qword_1000A6120);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v14 = *(type metadata accessor for LogMessage() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_1000811A0(&qword_1000A6240, &type metadata accessor for JetPackAssetDaemonMessage);
  XPCReceivedMessage.decode<A>(as:)();
  v17 = a1;
  v54 = v9;
  v18 = v59;
  v19 = v60;
  v20 = *(v60 + 16);
  v21 = a1;
  v22 = v61;
  v20(v59, v21, v61);
  v23 = XPCReceivedMessage.bundleIdentifier.getter();
  v52 = v24;
  v53 = v23;
  v25 = XPCReceivedMessage.auditToken.getter();
  v50 = v26;
  v51 = v25;
  v48 = v28;
  v49 = v27;
  (*(v19 + 8))(v18, v22);
  v29 = v55;
  v20(v55, v17, v22);
  v30 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v31 = swift_allocObject();
  (*(v19 + 32))(v31 + v30, v29, v22);
  v61 = v17;
  if (qword_1000A4DC0 != -1)
  {
    swift_once();
  }

  v60 = qword_1000A6448;
  v32 = v62;
  v33 = *(v62 + 16);
  v34 = v56;
  v47 = v13;
  v35 = v13;
  v36 = v54;
  v33(v56, v35, v54);
  v37 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v38 = (v10 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v58;
  *(v39 + 16) = v57;
  *(v39 + 24) = v40;
  (*(v32 + 32))(v39 + v37, v34, v36);
  v41 = (v39 + v38);
  v42 = v52;
  *v41 = v53;
  v41[1] = v42;
  v43 = v50;
  v41[2] = v51;
  v41[3] = v43;
  v44 = v48;
  v41[4] = v49;
  v41[5] = v44;
  v45 = (v39 + ((v38 + 55) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_100080C98;
  v45[1] = v31;

  XPCReceivedMessage.handoffReply(to:_:)();

  return (*(v32 + 8))(v47, v36);
}

uint64_t sub_100077F28(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v11 = type metadata accessor for JetPackAssetDaemonMessage();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v30 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v14, a3, v11);
  v33 = a6;

  v30 = a1;

  v32 = a2;

  sub_100068984(a4, v34);
  if (qword_1000A4DC8 != -1)
  {
    swift_once();
  }

  v20 = qword_1000A6450;
  v21 = sub_1000811A0(&qword_1000A5660, type metadata accessor for DaemonActor);
  v22 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = v20;
  *(v24 + 3) = v21;
  v25 = v33;
  *(v24 + 4) = v31;
  *(v24 + 5) = v25;
  v26 = v32;
  *(v24 + 6) = v30;
  *(v24 + 7) = v26;
  (*(v12 + 32))(&v24[v22], v14, v11);
  v27 = &v24[v23];
  v28 = a4[1];
  *v27 = *a4;
  *(v27 + 1) = v28;
  *(v27 + 2) = a4[2];

  sub_100023290(0, 0, v18, &unk_100086A00, v24);
}

uint64_t sub_1000781F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v16;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v9 = type metadata accessor for JetPackAssetDaemonMessage();
  v8[18] = v9;
  v10 = *(v9 - 8);
  v8[19] = v10;
  v11 = *(v10 + 64) + 15;
  v8[20] = swift_task_alloc();
  if (qword_1000A4DC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_1000811A0(&qword_1000A5660, type metadata accessor for DaemonActor);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[21] = v13;
  v8[22] = v12;

  return _swift_task_switch(sub_100078354, v13, v12);
}

uint64_t sub_100078354()
{
  (*(v0[19] + 16))(v0[20], v0[16], v0[18]);
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_100078410;
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];

  return sub_100078620((v0 + 2), v2, v3, v4, v5);
}

uint64_t sub_100078410()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return _swift_task_switch(sub_100078530, v4, v3);
}

uint64_t sub_100078530()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v9 = *(v0 + 40);
  v4 = *(v0 + 40);
  v5 = sub_100001CC0((v0 + 16), v4);
  *(v0 + 80) = v9;
  v6 = sub_1000061A4((v0 + 56));
  (*(*(v4 - 8) + 16))(v6, v5, v4);
  v3(v0 + 56);
  sub_100001D4C((v0 + 56));
  sub_100001D4C((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100078620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[264] = a5;
  v5[263] = a3;
  v5[262] = a2;
  v5[261] = a1;
  AssetRequest = type metadata accessor for DaemonGetAssetRequest();
  v5[265] = AssetRequest;
  v7 = *(AssetRequest - 8);
  v5[266] = v7;
  v8 = *(v7 + 64) + 15;
  v5[267] = swift_task_alloc();
  v9 = type metadata accessor for DaemonCacheEvictRequest();
  v5[268] = v9;
  v10 = *(v9 - 8);
  v5[269] = v10;
  v11 = *(v10 + 64) + 15;
  v5[270] = swift_task_alloc();
  v12 = type metadata accessor for DaemonPushResetRecordRequest();
  v5[271] = v12;
  v13 = *(v12 - 8);
  v5[272] = v13;
  v14 = *(v13 + 64) + 15;
  v5[273] = swift_task_alloc();
  v15 = type metadata accessor for DaemonPushDeleteRecordRequest();
  v5[274] = v15;
  v16 = *(v15 - 8);
  v5[275] = v16;
  v17 = *(v16 + 64) + 15;
  v5[276] = swift_task_alloc();
  v18 = type metadata accessor for DaemonPushSubscriptionRequest();
  v5[277] = v18;
  v19 = *(v18 - 8);
  v5[278] = v19;
  v20 = *(v19 + 64) + 15;
  v5[279] = swift_task_alloc();
  v21 = type metadata accessor for DaemonPushInfoRequest();
  v5[280] = v21;
  v22 = *(v21 - 8);
  v5[281] = v22;
  v23 = *(v22 + 64) + 15;
  v5[282] = swift_task_alloc();
  v24 = *(*(sub_100001D04(&qword_1000A6258, &qword_100086A10) - 8) + 64) + 15;
  v5[283] = swift_task_alloc();
  v5[284] = swift_task_alloc();
  TestAssetRequest = type metadata accessor for DaemonReadTestAssetRequest();
  v5[285] = TestAssetRequest;
  v26 = *(TestAssetRequest - 8);
  v5[286] = v26;
  v27 = *(v26 + 64) + 15;
  v5[287] = swift_task_alloc();
  refreshed = type metadata accessor for DaemonRefreshTestAssetRequest();
  v5[288] = refreshed;
  v29 = *(refreshed - 8);
  v5[289] = v29;
  v30 = *(v29 + 64) + 15;
  v5[290] = swift_task_alloc();
  v31 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v5[291] = swift_task_alloc();
  v32 = type metadata accessor for DaemonPingRequest();
  v5[292] = v32;
  v33 = *(v32 - 8);
  v5[293] = v33;
  v34 = *(v33 + 64) + 15;
  v5[294] = swift_task_alloc();
  v35 = type metadata accessor for JetPackAssetDaemonMessage();
  v5[295] = v35;
  v36 = *(v35 - 8);
  v5[296] = v36;
  v37 = *(v36 + 64) + 15;
  v5[297] = swift_task_alloc();
  v38 = type metadata accessor for OSSignpostID();
  v5[298] = v38;
  v39 = *(v38 - 8);
  v5[299] = v39;
  v40 = *(v39 + 64) + 15;
  v5[300] = swift_task_alloc();
  v5[301] = swift_task_alloc();
  v41 = type metadata accessor for DaemonRequestTypeKind();
  v5[302] = v41;
  v42 = *(v41 - 8);
  v5[303] = v42;
  v43 = *(v42 + 64) + 15;
  v5[304] = swift_task_alloc();
  v5[305] = swift_task_alloc();

  return _swift_task_switch(sub_100078B68, 0, 0);
}

uint64_t sub_100078B68()
{
  v1 = v0;
  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[303];
  v5 = v1[302];
  v6 = v1[262];
  JetPackAssetDaemonMessage.request.getter();
  sub_100001CC0(v1 + 80, v1[83]);
  swift_getDynamicType();
  v7 = v1[84];
  sub_100001D4C(v1 + 80);
  dispatch thunk of static DaemonRequestType.kind.getter();
  (*(v4 + 104))(v3, enum case for DaemonRequestTypeKind.debugging(_:), v5);
  LOBYTE(v6) = static DaemonRequestTypeKind.== infix(_:_:)();
  v8 = *(v4 + 8);
  v8(v3, v5);
  v8(v2, v5);
  if (v6)
  {
    v9 = v1[263];
    if ((*v9 != 0xD000000000000014 || 0x8000000100089650 != v9[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (qword_1000A4E00 != -1)
      {
        swift_once();
      }

      v88 = v1[261];
      sub_100001CC0(qword_1000A6108, qword_1000A6120);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v89 = *(type metadata accessor for LogMessage() - 8);
      v90 = *(v89 + 72);
      v91 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      v88[3] = sub_100001D04(&qword_1000A6248, &qword_1000869F0);
      v88[4] = sub_100040238(&qword_1000A6250, &qword_1000A6248, &qword_1000869F0);
      sub_1000061A4(v88);
      DaemonResponse.init(reason:)();
      goto LABEL_31;
    }
  }

  if (qword_1000A4E08 != -1)
  {
    swift_once();
  }

  v10 = v1[301];
  v11 = type metadata accessor for OSSignposter();
  sub_100018718(v11, qword_1000A6130);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v14 = v1[301];
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v16, "RequestHandler.handleClientMessage", "", v15, 2u);
  }

  v17 = v1[301];
  v18 = v1[300];
  v19 = v1[299];
  v20 = v1[298];
  v21 = v1[297];
  v22 = v1[296];
  v23 = v1[295];
  v24 = v1[262];

  (*(v19 + 16))(v18, v17, v20);
  v25 = type metadata accessor for OSSignpostIntervalState();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = OSSignpostIntervalState.init(id:isOpen:)();
  v1[306] = v28;
  (*(v19 + 8))(v17, v20);
  (*(v22 + 16))(v21, v24, v23);
  v29 = (*(v22 + 88))(v21, v23);
  if (v29 == enum case for JetPackAssetDaemonMessage.ping(_:))
  {
    v270 = v28;
    v30 = v1[297];
    v31 = v1[294];
    v32 = v1[293];
    v33 = v1[292];
    (*(v1[296] + 96))(v30, v1[295]);
    (*(v32 + 32))(v31, v30, v33);
    if (qword_1000A4E00 != -1)
    {
      swift_once();
    }

    v34 = v1[291];
    v35 = v1[263];
    v36 = v1[261];
    sub_100001CC0(qword_1000A6108, qword_1000A6120);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v37 = *(type metadata accessor for LogMessage() - 8);
    v38 = *(v37 + 80);
    v268 = *(v37 + 72);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v39._countAndFlagsBits = 0x20676E696E6E7552;
    v39._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    v1[199] = sub_100001D04(&qword_1000A6310, &unk_100086A90);
    v1[196] = &type metadata for PingRequestHandler;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 196), &qword_1000A5630, &unk_100083BF0);
    v40._object = 0x800000010008A980;
    v40._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    *(v1 + 86) = *v35;
    v1[175] = &type metadata for String;
    sub_100068984(v35, (v1 + 8));
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 172), &qword_1000A5630, &unk_100083BF0);
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v41);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v36[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
    v36[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30);
    sub_1000061A4(v36);
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v42 = v1[294];
    v43 = v1[293];
    v264 = v1[292];
    v44 = v1[291];
    TaskLocal.get()();
    v45 = v1[94];
    sub_100001CC0(v1 + 90, v1[93]);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v46._countAndFlagsBits = 0xD000000000000016;
    v46._object = 0x800000010008AAC0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v46);
    v47 = DaemonPingRequest.messageText.getter();
    v1[123] = &type metadata for String;
    v1[120] = v47;
    v1[121] = v48;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 120), &qword_1000A5630, &unk_100083BF0);
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v49);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100001D4C(v1 + 90);
    _StringGuts.grow(_:)(25);

    v50._countAndFlagsBits = DaemonPingRequest.messageText.getter();
    String.append(_:)(v50);

    DaemonResponse.init<>(_:)();
    (*(v43 + 8))(v42, v264);
LABEL_15:
    sub_100080644("RequestHandler.handleClientMessage", 34, 2, v270, &qword_1000A4E08, qword_1000A6130);

LABEL_31:
    v92 = v1[305];
    v93 = v1[304];
    v94 = v1;
    v95 = v1[301];
    v96 = v94[300];
    v97 = v94[297];
    v98 = v94[294];
    v99 = v94[291];
    v100 = v94[290];
    v101 = v94[287];
    v262 = v94[284];
    v263 = v94[283];
    v265 = v94[282];
    v266 = v94[279];
    v267 = v94[276];
    v102 = v94[273];
    v269 = v94[270];
    v271 = v94[267];
    (*(v94[296] + 8))(v94[262], v94[295]);

    v103 = v94[1];

    return v103();
  }

  if (v29 == enum case for JetPackAssetDaemonMessage.refreshTestAsset(_:))
  {
    v51 = v1[297];
    v52 = v1[290];
    v53 = v1[289];
    v54 = v1[288];
    (*(v1[296] + 96))(v51, v1[295]);
    (*(v53 + 32))(v52, v51, v54);
    if (qword_1000A4E00 != -1)
    {
      swift_once();
    }

    v55 = v1[291];
    v56 = v1[263];
    v57 = v1[261];
    sub_100001CC0(qword_1000A6108, qword_1000A6120);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v58 = *(type metadata accessor for LogMessage() - 8);
    v59 = *(v58 + 72);
    v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v61._countAndFlagsBits = 0x20676E696E6E7552;
    v61._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v61);
    v1[235] = sub_100001D04(&qword_1000A6308, &qword_100086A88);
    v1[232] = &type metadata for RefreshTestAssetHandler;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 232), &qword_1000A5630, &unk_100083BF0);
    v62._object = 0x800000010008A980;
    v62._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v62);
    *(v1 + 114) = *v56;
    v1[231] = &type metadata for String;
    sub_100068984(v56, (v1 + 14));
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 228), &qword_1000A5630, &unk_100083BF0);
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v63);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v57[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
    v57[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30);
    v64 = sub_1000061A4(v57);
    v65 = swift_task_alloc();
    v1[307] = v65;
    *v65 = v1;
    v65[1] = sub_10007BC38;
    v66 = v1[290];
    v67 = v1[264];
    v68 = v1[263];

    return sub_100019AB4(v64);
  }

  if (v29 == enum case for JetPackAssetDaemonMessage.readTestAsset(_:))
  {
    v70 = v1[297];
    v71 = v1[287];
    v72 = v1[286];
    v73 = v1[285];
    (*(v1[296] + 96))(v70, v1[295]);
    (*(v72 + 32))(v71, v70, v73);
    if (qword_1000A4E00 != -1)
    {
      swift_once();
    }

    v74 = v1[291];
    v75 = v1[263];
    v76 = v1[261];
    sub_100001CC0(qword_1000A6108, qword_1000A6120);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v77 = *(type metadata accessor for LogMessage() - 8);
    v78 = *(v77 + 72);
    v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v80._countAndFlagsBits = 0x20676E696E6E7552;
    v80._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v80);
    v1[239] = sub_100001D04(&qword_1000A62F8, &qword_100086A80);
    v1[236] = &type metadata for ReadTestAssetHandler;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 236), &qword_1000A5630, &unk_100083BF0);
    v81._object = 0x800000010008A980;
    v81._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v81);
    *(v1 + 62) = *v75;
    v1[127] = &type metadata for String;
    sub_100068984(v75, (v1 + 26));
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 124), &qword_1000A5630, &unk_100083BF0);
    v82._countAndFlagsBits = 0;
    v82._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v82);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v76[3] = sub_100001D04(&qword_1000A5A58, &unk_100086100);
    v76[4] = sub_100040238(&qword_1000A6300, &qword_1000A5A58, &unk_100086100);
    v83 = sub_1000061A4(v76);
    v84 = swift_task_alloc();
    v1[308] = v84;
    *v84 = v1;
    v84[1] = sub_10007BF04;
    v85 = v1[287];
    v86 = v1[264];
    v87 = v1[263];

    return sub_100061244(v83, v85, v87);
  }

  if (v29 == enum case for JetPackAssetDaemonMessage.scheduleTask(_:))
  {
    (*(v1[296] + 8))(v1[297], v1[295]);
    if (qword_1000A4E00 != -1)
    {
      swift_once();
    }

    v104 = v1[291];
    v105 = v1[263];
    v106 = v1[261];
    sub_100001CC0(qword_1000A6108, qword_1000A6120);
    v1[309] = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v107 = *(type metadata accessor for LogMessage() - 8);
    v1[310] = *(v107 + 72);
    *(v1 + 696) = *(v107 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v108._countAndFlagsBits = 0x20676E696E6E7552;
    v108._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v108);
    v1[207] = sub_100001D04(&qword_1000A62D0, &qword_100086A70);
    v1[204] = &type metadata for ScheduleTaskRequestHandler;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 204), &qword_1000A5630, &unk_100083BF0);
    v109._object = 0x800000010008A980;
    v109._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v109);
    *(v1 + 104) = *v105;
    v1[211] = &type metadata for String;
    sub_100068984(v105, (v1 + 32));
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 208), &qword_1000A5630, &unk_100083BF0);
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v110);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v111 = sub_100001D04(&qword_1000A62D8, &qword_100086A78);
    v1[311] = v111;
    v106[3] = v111;
    v106[4] = sub_100040238(&qword_1000A62E0, &qword_1000A62D8, &qword_100086A78);
    v1[312] = sub_1000061A4(v106);
    v112 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
    v113 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v114 = swift_task_alloc();
    v1[313] = v114;
    *v114 = v1;
    v114[1] = sub_10007C1D0;
    v115 = v1[264];
    v116 = v1 + 100;
LABEL_38:

    return BaseObjectGraph.inject<A>(_:)(v116, v112, v112);
  }

  if (v29 == enum case for JetPackAssetDaemonMessage.postInstall(_:))
  {
    (*(v1[296] + 8))(v1[297], v1[295]);
    if (qword_1000A4E00 != -1)
    {
      swift_once();
    }

    v117 = v1[291];
    v118 = v1[263];
    v119 = v1[261];
    sub_100001CC0(qword_1000A6108, qword_1000A6120);
    v1[319] = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v120 = *(type metadata accessor for LogMessage() - 8);
    v1[320] = *(v120 + 72);
    *(v1 + 697) = *(v120 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v121._countAndFlagsBits = 0x20676E696E6E7552;
    v121._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v121);
    v1[179] = sub_100001D04(&qword_1000A62C8, &qword_100086A68);
    v1[176] = &type metadata for PostInstallRequestHandler;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 176), &qword_1000A5630, &unk_100083BF0);
    v122._object = 0x800000010008A980;
    v122._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v122);
    *(v1 + 90) = *v118;
    v1[183] = &type metadata for String;
    sub_100068984(v118, (v1 + 44));
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0((v1 + 180), &qword_1000A5630, &unk_100083BF0);
    v123._countAndFlagsBits = 0;
    v123._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v123);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v119[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
    v119[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30);
    v1[321] = sub_1000061A4(v119);
    v124 = swift_task_alloc();
    v1[322] = v124;
    *v124 = v1;
    v124[1] = sub_10007CEA0;
    v125 = v1[264];

    return sub_10005CDC0(v125);
  }

  else
  {
    if (v29 == enum case for JetPackAssetDaemonMessage.bagRefresh(_:))
    {
      (*(v1[296] + 8))(v1[297], v1[295]);
      if (qword_1000A4E00 != -1)
      {
        swift_once();
      }

      v126 = v1[291];
      v127 = v1[263];
      v128 = v1[261];
      sub_100001CC0(qword_1000A6108, qword_1000A6120);
      v1[326] = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v129 = *(type metadata accessor for LogMessage() - 8);
      v1[327] = *(v129 + 72);
      *(v1 + 698) = *(v129 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v130._countAndFlagsBits = 0x20676E696E6E7552;
      v130._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v130);
      v1[147] = sub_100001D04(&qword_1000A62C0, &qword_100086A60);
      v1[144] = &type metadata for BagRefreshRequestHandler;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 144), &qword_1000A5630, &unk_100083BF0);
      v131._object = 0x800000010008A980;
      v131._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v131);
      *(v1 + 74) = *v127;
      v1[151] = &type metadata for String;
      sub_100068984(v127, (v1 + 50));
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 148), &qword_1000A5630, &unk_100083BF0);
      v132._countAndFlagsBits = 0;
      v132._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v132);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v128[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
      v128[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30);
      v1[328] = sub_1000061A4(v128);
      v112 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
      v133 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v134 = swift_task_alloc();
      v1[329] = v134;
      *v134 = v1;
      v134[1] = sub_10007D9CC;
      v135 = v1[264];
      v116 = v1 + 115;
      goto LABEL_38;
    }

    if (v29 == enum case for JetPackAssetDaemonMessage.pushInfo(_:))
    {
      v136 = v1[297];
      v137 = v1[282];
      v138 = v1[281];
      v139 = v1[280];
      (*(v1[296] + 96))(v136, v1[295]);
      (*(v138 + 32))(v137, v136, v139);
      if (qword_1000A4E00 != -1)
      {
        swift_once();
      }

      v140 = v1[291];
      v141 = v1[263];
      v142 = v1[261];
      sub_100001CC0(qword_1000A6108, qword_1000A6120);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v143 = *(type metadata accessor for LogMessage() - 8);
      v144 = *(v143 + 72);
      v145 = (*(v143 + 80) + 32) & ~*(v143 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v146._countAndFlagsBits = 0x20676E696E6E7552;
      v146._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v146);
      v1[135] = sub_100001D04(&qword_1000A62B0, &qword_100086A58);
      v1[132] = &type metadata for PushInfoRequestHandler;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 132), &qword_1000A5630, &unk_100083BF0);
      v147._object = 0x800000010008A980;
      v147._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v147);
      *(v1 + 68) = *v141;
      v1[139] = &type metadata for String;
      sub_100068984(v141, (v1 + 62));
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 136), &qword_1000A5630, &unk_100083BF0);
      v148._countAndFlagsBits = 0;
      v148._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v148);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v142[3] = sub_100001D04(&qword_1000A5130, &unk_1000842C0);
      v142[4] = sub_100040238(&qword_1000A62B8, &qword_1000A5130, &unk_1000842C0);
      v149 = sub_1000061A4(v142);
      v150 = swift_task_alloc();
      v1[333] = v150;
      *v150 = v1;
      v150[1] = sub_10007E52C;
      v151 = v1[282];
      v152 = v1[264];
      v153 = v1[263];

      return sub_10001AF24(v149, v151, v153, v152);
    }

    else if (v29 == enum case for JetPackAssetDaemonMessage.pushSubscription(_:))
    {
      v154 = v1[297];
      v155 = v1[279];
      v156 = v1[278];
      v157 = v1[277];
      (*(v1[296] + 96))(v154, v1[295]);
      (*(v156 + 32))(v155, v154, v157);
      if (qword_1000A4E00 != -1)
      {
        swift_once();
      }

      v158 = v1[291];
      v159 = v1[263];
      v160 = v1[261];
      sub_100001CC0(qword_1000A6108, qword_1000A6120);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v161 = *(type metadata accessor for LogMessage() - 8);
      v162 = *(v161 + 72);
      v163 = (*(v161 + 80) + 32) & ~*(v161 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v164._countAndFlagsBits = 0x20676E696E6E7552;
      v164._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v164);
      v1[131] = sub_100001D04(&qword_1000A62A8, &qword_100086A50);
      v1[128] = &type metadata for PushSubscriptionRequestHandler;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 128), &qword_1000A5630, &unk_100083BF0);
      v165._object = 0x800000010008A980;
      v165._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v165);
      *(v1 + 100) = *v159;
      v1[203] = &type metadata for String;
      sub_100068984(v159, (v1 + 68));
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 200), &qword_1000A5630, &unk_100083BF0);
      v166._countAndFlagsBits = 0;
      v166._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v166);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v160[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
      v160[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30);
      v167 = sub_1000061A4(v160);
      v168 = swift_task_alloc();
      v1[334] = v168;
      *v168 = v1;
      v168[1] = sub_10007E7F8;
      v169 = v1[279];
      v170 = v1[264];
      v171 = v1[263];

      return sub_1000126D4(v167, v169, v171, v170);
    }

    else if (v29 == enum case for JetPackAssetDaemonMessage.pushDelete(_:))
    {
      v172 = v1[297];
      v173 = v1[276];
      v174 = v1[275];
      v175 = v1[274];
      (*(v1[296] + 96))(v172, v1[295]);
      (*(v174 + 32))(v173, v172, v175);
      if (qword_1000A4E00 != -1)
      {
        swift_once();
      }

      v176 = v1[291];
      v177 = v1[263];
      v178 = v1[261];
      sub_100001CC0(qword_1000A6108, qword_1000A6120);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v179 = *(type metadata accessor for LogMessage() - 8);
      v180 = *(v179 + 72);
      v181 = (*(v179 + 80) + 32) & ~*(v179 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v182._countAndFlagsBits = 0x20676E696E6E7552;
      v182._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v182);
      v1[191] = sub_100001D04(&qword_1000A62A0, &qword_100086A48);
      v1[188] = &type metadata for PushDeleteSubscriptionRequestHandler;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 188), &qword_1000A5630, &unk_100083BF0);
      v183._object = 0x800000010008A980;
      v183._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v183);
      *(v1 + 80) = *v177;
      v1[163] = &type metadata for String;
      sub_100068984(v177, (v1 + 74));
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 160), &qword_1000A5630, &unk_100083BF0);
      v184._countAndFlagsBits = 0;
      v184._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v184);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v178[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
      v178[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30);
      v185 = sub_1000061A4(v178);
      v186 = swift_task_alloc();
      v1[335] = v186;
      *v186 = v1;
      v186[1] = sub_10007EAC4;
      v187 = v1[276];
      v188 = v1[264];
      v189 = v1[263];

      return sub_1000191FC(v185, v187);
    }

    else if (v29 == enum case for JetPackAssetDaemonMessage.pushReset(_:))
    {
      v190 = v1[297];
      v191 = v1[273];
      v192 = v1[272];
      v193 = v1[271];
      (*(v1[296] + 96))(v190, v1[295]);
      (*(v192 + 32))(v191, v190, v193);
      if (qword_1000A4E00 != -1)
      {
        swift_once();
      }

      v194 = v1[291];
      v195 = v1[263];
      v196 = v1[261];
      sub_100001CC0(qword_1000A6108, qword_1000A6120);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v197 = *(type metadata accessor for LogMessage() - 8);
      v198 = *(v197 + 72);
      v199 = (*(v197 + 80) + 32) & ~*(v197 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v200._countAndFlagsBits = 0x20676E696E6E7552;
      v200._object = 0xE800000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v200);
      v1[143] = sub_100001D04(&qword_1000A6298, &qword_100086A40);
      v1[140] = &type metadata for PushResetSubscriptionRequestHandler;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 140), &qword_1000A5630, &unk_100083BF0);
      v201._object = 0x800000010008A980;
      v201._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v201);
      *(v1 + 110) = *v195;
      v1[223] = &type metadata for String;
      sub_100068984(v195, (v1 + 2));
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0((v1 + 220), &qword_1000A5630, &unk_100083BF0);
      v202._countAndFlagsBits = 0;
      v202._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v202);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v196[3] = sub_100001D04(&qword_1000A6288, &qword_100086A30);
      v196[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30);
      v203 = sub_1000061A4(v196);
      v204 = swift_task_alloc();
      v1[336] = v204;
      *v204 = v1;
      v204[1] = sub_10007ED90;
      v205 = v1[273];
      v206 = v1[264];
      v207 = v1[263];

      return sub_100040BE0(v203, v205);
    }

    else
    {
      if (v29 == enum case for JetPackAssetDaemonMessage.pushClear(_:))
      {
        (*(v1[296] + 8))(v1[297], v1[295]);
        if (qword_1000A4E00 != -1)
        {
          swift_once();
        }

        v208 = v1[291];
        v209 = v1[263];
        v210 = v1[261];
        sub_100001CC0(qword_1000A6108, qword_1000A6120);
        v1[337] = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v211 = *(type metadata accessor for LogMessage() - 8);
        v1[338] = *(v211 + 72);
        *(v1 + 699) = *(v211 + 80);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v212._countAndFlagsBits = 0x20676E696E6E7552;
        v212._object = 0xE800000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v212);
        v1[187] = sub_100001D04(&qword_1000A6280, &qword_100086A28);
        v1[184] = &type metadata for PushClearSubscriptionsRequestHandler;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0((v1 + 184), &qword_1000A5630, &unk_100083BF0);
        v213._object = 0x800000010008A980;
        v213._countAndFlagsBits = 0xD000000000000014;
        LogMessage.StringInterpolation.appendLiteral(_:)(v213);
        *(v1 + 76) = *v209;
        v1[155] = &type metadata for String;
        sub_100068984(v209, (v1 + 56));
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0((v1 + 152), &qword_1000A5630, &unk_100083BF0);
        v214._countAndFlagsBits = 0;
        v214._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v214);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        v215 = sub_100001D04(&qword_1000A6288, &qword_100086A30);
        v1[339] = v215;
        v210[3] = v215;
        v210[4] = sub_100040238(&qword_1000A6290, &qword_1000A6288, &qword_100086A30);
        v1[340] = sub_1000061A4(v210);
        v112 = type metadata accessor for AssetSQLiteDatabase();
        v216 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
        v217 = swift_task_alloc();
        v1[341] = v217;
        *v217 = v1;
        v217[1] = sub_10007F05C;
        v218 = v1[264];
        v116 = v1 + 260;
        goto LABEL_38;
      }

      if (v29 == enum case for JetPackAssetDaemonMessage.cacheEvict(_:))
      {
        v219 = v1[297];
        v220 = v1[270];
        v221 = v1[269];
        v222 = v1[268];
        (*(v1[296] + 96))(v219, v1[295]);
        (*(v221 + 32))(v220, v219, v222);
        if (qword_1000A4E00 != -1)
        {
          swift_once();
        }

        v223 = v1[291];
        v224 = v1[263];
        v225 = v1[261];
        sub_100001CC0(qword_1000A6108, qword_1000A6120);
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v226 = *(type metadata accessor for LogMessage() - 8);
        v227 = *(v226 + 72);
        v228 = (*(v226 + 80) + 32) & ~*(v226 + 80);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v229._countAndFlagsBits = 0x20676E696E6E7552;
        v229._object = 0xE800000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v229);
        v1[243] = sub_100001D04(&qword_1000A6270, &qword_100086A20);
        v1[240] = &type metadata for CacheEvictRequestHandler;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0((v1 + 240), &qword_1000A5630, &unk_100083BF0);
        v230._object = 0x800000010008A980;
        v230._countAndFlagsBits = 0xD000000000000014;
        LogMessage.StringInterpolation.appendLiteral(_:)(v230);
        *(v1 + 106) = *v224;
        v1[215] = &type metadata for String;
        sub_100068984(v224, (v1 + 38));
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0((v1 + 212), &qword_1000A5630, &unk_100083BF0);
        v231._countAndFlagsBits = 0;
        v231._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v231);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        v225[3] = sub_100001D04(&qword_1000A5898, &unk_100085708);
        v225[4] = sub_100040238(&qword_1000A6278, &qword_1000A5898, &unk_100085708);
        v232 = sub_1000061A4(v225);
        v233 = swift_task_alloc();
        v1[346] = v233;
        *v233 = v1;
        v233[1] = sub_10007FBBC;
        v234 = v1[270];
        v235 = v1[264];
        v236 = v1[263];

        return sub_10004187C(v232, v234, v236, v235);
      }

      else
      {
        if (v29 != enum case for JetPackAssetDaemonMessage.get(_:))
        {
          v270 = v28;
          if (qword_1000A4E00 != -1)
          {
            swift_once();
          }

          v255 = v1[297];
          v256 = v1[296];
          v257 = v1[295];
          v258 = v1[261];
          sub_100001CC0(qword_1000A6108, qword_1000A6120);
          sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
          v259 = *(type metadata accessor for LogMessage() - 8);
          v260 = *(v259 + 72);
          v261 = (*(v259 + 80) + 32) & ~*(v259 + 80);
          *(swift_allocObject() + 16) = xmmword_1000839C0;
          LogMessage.init(stringLiteral:)();
          Logger.error(_:)();

          v258[3] = sub_100001D04(&qword_1000A6248, &qword_1000869F0);
          v258[4] = sub_100040238(&qword_1000A6250, &qword_1000A6248, &qword_1000869F0);
          sub_1000061A4(v258);
          DaemonResponse.init(reason:)();
          (*(v256 + 8))(v255, v257);
          goto LABEL_15;
        }

        v237 = v1[297];
        v238 = v1[267];
        v239 = v1[266];
        v240 = v1[265];
        (*(v1[296] + 96))(v237, v1[295]);
        (*(v239 + 32))(v238, v237, v240);
        if (qword_1000A4E00 != -1)
        {
          swift_once();
        }

        v241 = v1[291];
        v242 = v1[263];
        v243 = v1[261];
        sub_100001CC0(qword_1000A6108, qword_1000A6120);
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v244 = *(type metadata accessor for LogMessage() - 8);
        v245 = *(v244 + 72);
        v246 = (*(v244 + 80) + 32) & ~*(v244 + 80);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v247._countAndFlagsBits = 0x20676E696E6E7552;
        v247._object = 0xE800000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v247);
        v1[171] = sub_100001D04(&qword_1000A6260, &qword_100086A18);
        v1[168] = &type metadata for GetAssetRequestHandler;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0((v1 + 168), &qword_1000A5630, &unk_100083BF0);
        v248._object = 0x800000010008A980;
        v248._countAndFlagsBits = 0xD000000000000014;
        LogMessage.StringInterpolation.appendLiteral(_:)(v248);
        *(v1 + 108) = *v242;
        v1[219] = &type metadata for String;
        sub_100068984(v242, (v1 + 20));
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0((v1 + 216), &qword_1000A5630, &unk_100083BF0);
        v249._countAndFlagsBits = 0;
        v249._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v249);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        v243[3] = sub_100001D04(&qword_1000A5AC8, &unk_1000861B8);
        v243[4] = sub_100040238(&qword_1000A6268, &qword_1000A5AC8, &unk_1000861B8);
        v250 = sub_1000061A4(v243);
        v251 = swift_task_alloc();
        v1[347] = v251;
        *v251 = v1;
        v251[1] = sub_10007FE88;
        v252 = v1[267];
        v253 = v1[264];
        v254 = v1[263];

        return sub_100061EC8(v250, v252, v254, v253);
      }
    }
  }
}

uint64_t sub_10007BC38()
{
  v1 = *(*v0 + 2456);
  v3 = *v0;

  return _swift_task_switch(sub_10007BD34, 0, 0);
}

uint64_t sub_10007BD34()
{
  v1 = v0[306];
  (*(v0[289] + 8))(v0[290], v0[288]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130);

  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[301];
  v5 = v0[300];
  v6 = v0[297];
  v7 = v0[294];
  v8 = v0[291];
  v9 = v0[290];
  v10 = v0[287];
  v14 = v0[284];
  v15 = v0[283];
  v16 = v0[282];
  v17 = v0[279];
  v18 = v0[276];
  v19 = v0[273];
  v11 = v0[270];
  v20 = v0[267];
  (*(v0[296] + 8))(v0[262], v0[295]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007BF04()
{
  v1 = *(*v0 + 2464);
  v3 = *v0;

  return _swift_task_switch(sub_10007C000, 0, 0);
}

uint64_t sub_10007C000()
{
  v1 = v0[306];
  (*(v0[286] + 8))(v0[287], v0[285]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130);

  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[301];
  v5 = v0[300];
  v6 = v0[297];
  v7 = v0[294];
  v8 = v0[291];
  v9 = v0[290];
  v10 = v0[287];
  v14 = v0[284];
  v15 = v0[283];
  v16 = v0[282];
  v17 = v0[279];
  v18 = v0[276];
  v19 = v0[273];
  v11 = v0[270];
  v20 = v0[267];
  (*(v0[296] + 8))(v0[262], v0[295]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007C1D0()
{
  v2 = *(*v1 + 2504);
  v5 = *v1;
  *(*v1 + 2512) = v0;

  if (v0)
  {
    v3 = sub_10007C4B0;
  }

  else
  {
    v3 = sub_10007C2E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007C2E4()
{
  sub_100001CC0(v0 + 100, v0[103]);
  v1 = swift_task_alloc();
  v0[315] = v1;
  *v1 = v0;
  v1[1] = sub_10007C380;

  return sub_1000473EC();
}

uint64_t sub_10007C380(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *(*v4 + 2520);
  v8 = *v4;
  *(v6 + 2528) = a1;
  *(v6 + 2536) = a2;
  *(v6 + 2544) = v3;

  if (v3)
  {
    v9 = sub_10007CADC;
  }

  else
  {
    *(v6 + 2800) = a3;
    v9 = sub_10007C86C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10007C4B0()
{
  v1 = *(v0 + 2512);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 2496);
  v2 = *(v0 + 2784);
  v3 = *(v0 + 2480);
  v4 = *(v0 + 2472);
  v5 = *(v0 + 2328);
  TaskLocal.get()();
  v29 = *(v0 + 792);
  sub_100001CC0((v0 + 760), *(v0 + 784));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010008AAA0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1976);
  v8 = *(v0 + 1984);
  *(v0 + 1816) = v8;
  v9 = sub_1000061A4((v0 + 1792));
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1792, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 760));
  type metadata accessor for DaemonScheduleTaskResponse();
  sub_1000811A0(&qword_1000A62E8, &type metadata accessor for DaemonScheduleTaskResponse);
  sub_1000811A0(&qword_1000A62F0, &type metadata accessor for DaemonScheduleTaskResponse);
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, *(v0 + 2448), &qword_1000A4E08, qword_1000A6130);

  v11 = *(v0 + 2440);
  v12 = *(v0 + 2432);
  v13 = *(v0 + 2408);
  v14 = *(v0 + 2400);
  v15 = *(v0 + 2376);
  v16 = *(v0 + 2352);
  v17 = *(v0 + 2328);
  v18 = *(v0 + 2320);
  v19 = *(v0 + 2296);
  v23 = *(v0 + 2272);
  v24 = *(v0 + 2264);
  v25 = *(v0 + 2256);
  v26 = *(v0 + 2232);
  v27 = *(v0 + 2208);
  v28 = *(v0 + 2184);
  v20 = *(v0 + 2160);
  v31 = *(v0 + 2136);
  (*(*(v0 + 2368) + 8))(*(v0 + 2096), *(v0 + 2360));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10007C86C()
{
  if (*(v0 + 2800))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 2536);
    v3 = *(v0 + 2528);
    v4 = *(v0 + 2272);
    DaemonScheduleTime.init(scheduleAfter:scheduleBefore:)();
    v1 = 0;
  }

  v5 = *(v0 + 2496);
  v6 = *(v0 + 2488);
  v7 = *(v0 + 2272);
  v8 = *(v0 + 2264);
  v9 = type metadata accessor for DaemonScheduleTime();
  (*(*(v9 - 8) + 56))(v7, v1, 1, v9);
  sub_1000811E8(v7, v8);
  DaemonScheduleTaskResponse.init(schedule:)();
  sub_10000DCA0(v7, &qword_1000A6258, &qword_100086A10);
  swift_storeEnumTagMultiPayload();
  sub_100001D4C((v0 + 800));
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, *(v0 + 2448), &qword_1000A4E08, qword_1000A6130);

  v10 = *(v0 + 2440);
  v11 = *(v0 + 2432);
  v12 = *(v0 + 2408);
  v13 = *(v0 + 2400);
  v14 = *(v0 + 2376);
  v15 = *(v0 + 2352);
  v16 = *(v0 + 2328);
  v17 = *(v0 + 2320);
  v18 = *(v0 + 2296);
  v22 = *(v0 + 2272);
  v23 = *(v0 + 2264);
  v24 = *(v0 + 2256);
  v25 = *(v0 + 2232);
  v26 = *(v0 + 2208);
  v27 = *(v0 + 2184);
  v19 = *(v0 + 2160);
  v28 = *(v0 + 2136);
  (*(*(v0 + 2368) + 8))(*(v0 + 2096), *(v0 + 2360));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10007CADC()
{
  sub_100001D4C((v0 + 800));
  v1 = *(v0 + 2544);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 2496);
  v2 = *(v0 + 2784);
  v3 = *(v0 + 2480);
  v4 = *(v0 + 2472);
  v5 = *(v0 + 2328);
  TaskLocal.get()();
  v29 = *(v0 + 792);
  sub_100001CC0((v0 + 760), *(v0 + 784));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010008AAA0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1976);
  v8 = *(v0 + 1984);
  *(v0 + 1816) = v8;
  v9 = sub_1000061A4((v0 + 1792));
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1792, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 760));
  type metadata accessor for DaemonScheduleTaskResponse();
  sub_1000811A0(&qword_1000A62E8, &type metadata accessor for DaemonScheduleTaskResponse);
  sub_1000811A0(&qword_1000A62F0, &type metadata accessor for DaemonScheduleTaskResponse);
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, *(v0 + 2448), &qword_1000A4E08, qword_1000A6130);

  v11 = *(v0 + 2440);
  v12 = *(v0 + 2432);
  v13 = *(v0 + 2408);
  v14 = *(v0 + 2400);
  v15 = *(v0 + 2376);
  v16 = *(v0 + 2352);
  v17 = *(v0 + 2328);
  v18 = *(v0 + 2320);
  v19 = *(v0 + 2296);
  v23 = *(v0 + 2272);
  v24 = *(v0 + 2264);
  v25 = *(v0 + 2256);
  v26 = *(v0 + 2232);
  v27 = *(v0 + 2208);
  v28 = *(v0 + 2184);
  v20 = *(v0 + 2160);
  v31 = *(v0 + 2136);
  (*(*(v0 + 2368) + 8))(*(v0 + 2096), *(v0 + 2360));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10007CEA0()
{
  v2 = *(*v1 + 2576);
  v3 = *v1;
  v3[323] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10007D140, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[324] = v4;
    *v4 = v3;
    v4[1] = sub_10007D02C;
    v5 = v3[264];

    return sub_1000551DC(v5);
  }
}

uint64_t sub_10007D02C()
{
  v2 = *(*v1 + 2592);
  v5 = *v1;
  *(*v1 + 2600) = v0;

  if (v0)
  {
    v3 = sub_10007D670;
  }

  else
  {
    v3 = sub_10007D49C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007D140()
{
  v1 = *(v0 + 2584);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 2568);
  v2 = *(v0 + 2788);
  v3 = *(v0 + 2560);
  v4 = *(v0 + 2552);
  v5 = *(v0 + 2328);
  TaskLocal.get()();
  v29 = *(v0 + 872);
  sub_100001CC0((v0 + 840), *(v0 + 864));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010008AA40;
  v6._countAndFlagsBits = 0xD000000000000037;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1952);
  v8 = *(v0 + 1960);
  *(v0 + 1560) = v8;
  v9 = sub_1000061A4((v0 + 1536));
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1536, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 840));
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, *(v0 + 2448), &qword_1000A4E08, qword_1000A6130);

  v11 = *(v0 + 2440);
  v12 = *(v0 + 2432);
  v13 = *(v0 + 2408);
  v14 = *(v0 + 2400);
  v15 = *(v0 + 2376);
  v16 = *(v0 + 2352);
  v17 = *(v0 + 2328);
  v18 = *(v0 + 2320);
  v19 = *(v0 + 2296);
  v23 = *(v0 + 2272);
  v24 = *(v0 + 2264);
  v25 = *(v0 + 2256);
  v26 = *(v0 + 2232);
  v27 = *(v0 + 2208);
  v28 = *(v0 + 2184);
  v20 = *(v0 + 2160);
  v31 = *(v0 + 2136);
  (*(*(v0 + 2368) + 8))(*(v0 + 2096), *(v0 + 2360));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10007D49C()
{
  v1 = v0[321];
  DaemonResponse.init<>(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130);

  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[301];
  v5 = v0[300];
  v6 = v0[297];
  v7 = v0[294];
  v8 = v0[291];
  v9 = v0[290];
  v10 = v0[287];
  v14 = v0[284];
  v15 = v0[283];
  v16 = v0[282];
  v17 = v0[279];
  v18 = v0[276];
  v19 = v0[273];
  v11 = v0[270];
  v20 = v0[267];
  (*(v0[296] + 8))(v0[262], v0[295]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007D670()
{
  v1 = *(v0 + 2600);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 2568);
  v2 = *(v0 + 2788);
  v3 = *(v0 + 2560);
  v4 = *(v0 + 2552);
  v5 = *(v0 + 2328);
  TaskLocal.get()();
  v29 = *(v0 + 872);
  sub_100001CC0((v0 + 840), *(v0 + 864));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010008AA40;
  v6._countAndFlagsBits = 0xD000000000000037;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 1952);
  v8 = *(v0 + 1960);
  *(v0 + 1560) = v8;
  v9 = sub_1000061A4((v0 + 1536));
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1536, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 840));
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, *(v0 + 2448), &qword_1000A4E08, qword_1000A6130);

  v11 = *(v0 + 2440);
  v12 = *(v0 + 2432);
  v13 = *(v0 + 2408);
  v14 = *(v0 + 2400);
  v15 = *(v0 + 2376);
  v16 = *(v0 + 2352);
  v17 = *(v0 + 2328);
  v18 = *(v0 + 2320);
  v19 = *(v0 + 2296);
  v23 = *(v0 + 2272);
  v24 = *(v0 + 2264);
  v25 = *(v0 + 2256);
  v26 = *(v0 + 2232);
  v27 = *(v0 + 2208);
  v28 = *(v0 + 2184);
  v20 = *(v0 + 2160);
  v31 = *(v0 + 2136);
  (*(*(v0 + 2368) + 8))(*(v0 + 2096), *(v0 + 2360));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10007D9CC()
{
  v2 = *(*v1 + 2632);
  v5 = *v1;
  *(*v1 + 2640) = v0;

  if (v0)
  {
    v3 = sub_10007DC90;
  }

  else
  {
    v3 = sub_10007DAE0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007DAE0()
{
  sub_100001CC0(v0 + 115, v0[118]);
  v1 = swift_task_alloc();
  v0[331] = v1;
  *v1 = v0;
  v1[1] = sub_10007DB7C;

  return sub_10001760C();
}

uint64_t sub_10007DB7C()
{
  v2 = *(*v1 + 2648);
  v5 = *v1;
  *(*v1 + 2656) = v0;

  if (v0)
  {
    v3 = sub_10007E1C8;
  }

  else
  {
    v3 = sub_10007DFEC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007DC90()
{
  v1 = *(v0 + 2640);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 2624);
  v2 = *(v0 + 2792);
  v3 = *(v0 + 2616);
  v4 = *(v0 + 2608);
  v5 = *(v0 + 2328);
  TaskLocal.get()();
  v29 = *(v0 + 912);
  sub_100001CC0((v0 + 880), *(v0 + 904));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010008A9F0;
  v6._countAndFlagsBits = 0xD00000000000002ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 2000);
  v8 = *(v0 + 2008);
  *(v0 + 1336) = v8;
  v9 = sub_1000061A4((v0 + 1312));
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
  sub_10000DCA0(v0 + 1312, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 880));
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, *(v0 + 2448), &qword_1000A4E08, qword_1000A6130);

  v11 = *(v0 + 2440);
  v12 = *(v0 + 2432);
  v13 = *(v0 + 2408);
  v14 = *(v0 + 2400);
  v15 = *(v0 + 2376);
  v16 = *(v0 + 2352);
  v17 = *(v0 + 2328);
  v18 = *(v0 + 2320);
  v19 = *(v0 + 2296);
  v23 = *(v0 + 2272);
  v24 = *(v0 + 2264);
  v25 = *(v0 + 2256);
  v26 = *(v0 + 2232);
  v27 = *(v0 + 2208);
  v28 = *(v0 + 2184);
  v20 = *(v0 + 2160);
  v31 = *(v0 + 2136);
  (*(*(v0 + 2368) + 8))(*(v0 + 2096), *(v0 + 2360));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10007DFEC()
{
  v1 = v0[328];
  DaemonResponse.init<>(_:)();
  sub_100001D4C(v0 + 115);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130);

  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[301];
  v5 = v0[300];
  v6 = v0[297];
  v7 = v0[294];
  v8 = v0[291];
  v9 = v0[290];
  v10 = v0[287];
  v14 = v0[284];
  v15 = v0[283];
  v16 = v0[282];
  v17 = v0[279];
  v18 = v0[276];
  v19 = v0[273];
  v11 = v0[270];
  v20 = v0[267];
  (*(v0[296] + 8))(v0[262], v0[295]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007E1C8()
{
  sub_100001D4C((v0 + 920));
  v1 = *(v0 + 2656);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 2624);
  v2 = *(v0 + 2792);
  v3 = *(v0 + 2616);
  v4 = *(v0 + 2608);
  v5 = *(v0 + 2328);
  TaskLocal.get()();
  v29 = *(v0 + 912);
  sub_100001CC0((v0 + 880), *(v0 + 904));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010008A9F0;
  v6._countAndFlagsBits = 0xD00000000000002ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 2000);
  v8 = *(v0 + 2008);
  *(v0 + 1336) = v8;
  v9 = sub_1000061A4((v0 + 1312));
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
  sub_10000DCA0(v0 + 1312, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 880));
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, *(v0 + 2448), &qword_1000A4E08, qword_1000A6130);

  v11 = *(v0 + 2440);
  v12 = *(v0 + 2432);
  v13 = *(v0 + 2408);
  v14 = *(v0 + 2400);
  v15 = *(v0 + 2376);
  v16 = *(v0 + 2352);
  v17 = *(v0 + 2328);
  v18 = *(v0 + 2320);
  v19 = *(v0 + 2296);
  v23 = *(v0 + 2272);
  v24 = *(v0 + 2264);
  v25 = *(v0 + 2256);
  v26 = *(v0 + 2232);
  v27 = *(v0 + 2208);
  v28 = *(v0 + 2184);
  v20 = *(v0 + 2160);
  v31 = *(v0 + 2136);
  (*(*(v0 + 2368) + 8))(*(v0 + 2096), *(v0 + 2360));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10007E52C()
{
  v1 = *(*v0 + 2664);
  v3 = *v0;

  return _swift_task_switch(sub_10007E628, 0, 0);
}

uint64_t sub_10007E628()
{
  v1 = v0[306];
  (*(v0[281] + 8))(v0[282], v0[280]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130);

  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[301];
  v5 = v0[300];
  v6 = v0[297];
  v7 = v0[294];
  v8 = v0[291];
  v9 = v0[290];
  v10 = v0[287];
  v14 = v0[284];
  v15 = v0[283];
  v16 = v0[282];
  v17 = v0[279];
  v18 = v0[276];
  v19 = v0[273];
  v11 = v0[270];
  v20 = v0[267];
  (*(v0[296] + 8))(v0[262], v0[295]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007E7F8()
{
  v1 = *(*v0 + 2672);
  v3 = *v0;

  return _swift_task_switch(sub_10007E8F4, 0, 0);
}

uint64_t sub_10007E8F4()
{
  v1 = v0[306];
  (*(v0[278] + 8))(v0[279], v0[277]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130);

  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[301];
  v5 = v0[300];
  v6 = v0[297];
  v7 = v0[294];
  v8 = v0[291];
  v9 = v0[290];
  v10 = v0[287];
  v14 = v0[284];
  v15 = v0[283];
  v16 = v0[282];
  v17 = v0[279];
  v18 = v0[276];
  v19 = v0[273];
  v11 = v0[270];
  v20 = v0[267];
  (*(v0[296] + 8))(v0[262], v0[295]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007EAC4()
{
  v1 = *(*v0 + 2680);
  v3 = *v0;

  return _swift_task_switch(sub_10007EBC0, 0, 0);
}

uint64_t sub_10007EBC0()
{
  v1 = v0[306];
  (*(v0[275] + 8))(v0[276], v0[274]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130);

  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[301];
  v5 = v0[300];
  v6 = v0[297];
  v7 = v0[294];
  v8 = v0[291];
  v9 = v0[290];
  v10 = v0[287];
  v14 = v0[284];
  v15 = v0[283];
  v16 = v0[282];
  v17 = v0[279];
  v18 = v0[276];
  v19 = v0[273];
  v11 = v0[270];
  v20 = v0[267];
  (*(v0[296] + 8))(v0[262], v0[295]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007ED90()
{
  v1 = *(*v0 + 2688);
  v3 = *v0;

  return _swift_task_switch(sub_10007EE8C, 0, 0);
}

uint64_t sub_10007EE8C()
{
  v1 = v0[306];
  (*(v0[272] + 8))(v0[273], v0[271]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130);

  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[301];
  v5 = v0[300];
  v6 = v0[297];
  v7 = v0[294];
  v8 = v0[291];
  v9 = v0[290];
  v10 = v0[287];
  v14 = v0[284];
  v15 = v0[283];
  v16 = v0[282];
  v17 = v0[279];
  v18 = v0[276];
  v19 = v0[273];
  v11 = v0[270];
  v20 = v0[267];
  (*(v0[296] + 8))(v0[262], v0[295]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007F05C()
{
  v2 = *(*v1 + 2728);
  v5 = *v1;
  *(*v1 + 2736) = v0;

  if (v0)
  {
    v3 = sub_10007F340;
  }

  else
  {
    v3 = sub_10007F170;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007F170()
{
  v0[343] = v0[260];
  v1 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v2 = swift_task_alloc();
  v0[344] = v2;
  *v2 = v0;
  v2[1] = sub_10007F22C;
  v3 = v0[340];
  v4 = v0[339];
  v5 = v0[264];

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v3, &unk_100086A38, v5, v4);
}

uint64_t sub_10007F22C()
{
  v2 = *(*v1 + 2752);
  v5 = *v1;
  *(*v1 + 2760) = v0;

  if (v0)
  {
    v3 = sub_10007F858;
  }

  else
  {
    v3 = sub_10007F69C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10007F340()
{
  v1 = *(v0 + 2736);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 2720);
  v2 = *(v0 + 2796);
  v3 = *(v0 + 2704);
  v4 = *(v0 + 2696);
  v5 = *(v0 + 2328);
  TaskLocal.get()();
  v29 = *(v0 + 712);
  sub_100001CC0((v0 + 680), *(v0 + 704));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010008A9A0;
  v6._countAndFlagsBits = 0xD000000000000040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 2024);
  v8 = *(v0 + 2032);
  *(v0 + 1272) = v8;
  v9 = sub_1000061A4((v0 + 1248));
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1248, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 680));
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, *(v0 + 2448), &qword_1000A4E08, qword_1000A6130);

  v11 = *(v0 + 2440);
  v12 = *(v0 + 2432);
  v13 = *(v0 + 2408);
  v14 = *(v0 + 2400);
  v15 = *(v0 + 2376);
  v16 = *(v0 + 2352);
  v17 = *(v0 + 2328);
  v18 = *(v0 + 2320);
  v19 = *(v0 + 2296);
  v23 = *(v0 + 2272);
  v24 = *(v0 + 2264);
  v25 = *(v0 + 2256);
  v26 = *(v0 + 2232);
  v27 = *(v0 + 2208);
  v28 = *(v0 + 2184);
  v20 = *(v0 + 2160);
  v31 = *(v0 + 2136);
  (*(*(v0 + 2368) + 8))(*(v0 + 2096), *(v0 + 2360));

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10007F69C()
{
  v1 = v0[343];

  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v0[306], &qword_1000A4E08, qword_1000A6130);

  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[301];
  v5 = v0[300];
  v6 = v0[297];
  v7 = v0[294];
  v8 = v0[291];
  v9 = v0[290];
  v10 = v0[287];
  v14 = v0[284];
  v15 = v0[283];
  v16 = v0[282];
  v17 = v0[279];
  v18 = v0[276];
  v19 = v0[273];
  v11 = v0[270];
  v20 = v0[267];
  (*(v0[296] + 8))(v0[262], v0[295]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007F858()
{
  v1 = *(v0 + 2744);

  v2 = *(v0 + 2760);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 2720);
  v3 = *(v0 + 2796);
  v4 = *(v0 + 2704);
  v5 = *(v0 + 2696);
  v6 = *(v0 + 2328);
  TaskLocal.get()();
  v30 = *(v0 + 712);
  sub_100001CC0((v0 + 680), *(v0 + 704));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010008A9A0;
  v7._countAndFlagsBits = 0xD000000000000040;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 2024);
  v9 = *(v0 + 2032);
  *(v0 + 1272) = v9;
  v10 = sub_1000061A4((v0 + 1248));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1248, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 680));
  DaemonResponse.init(_:)();
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, *(v0 + 2448), &qword_1000A4E08, qword_1000A6130);

  v12 = *(v0 + 2440);
  v13 = *(v0 + 2432);
  v14 = *(v0 + 2408);
  v15 = *(v0 + 2400);
  v16 = *(v0 + 2376);
  v17 = *(v0 + 2352);
  v18 = *(v0 + 2328);
  v19 = *(v0 + 2320);
  v20 = *(v0 + 2296);
  v24 = *(v0 + 2272);
  v25 = *(v0 + 2264);
  v26 = *(v0 + 2256);
  v27 = *(v0 + 2232);
  v28 = *(v0 + 2208);
  v29 = *(v0 + 2184);
  v21 = *(v0 + 2160);
  v32 = *(v0 + 2136);
  (*(*(v0 + 2368) + 8))(*(v0 + 2096), *(v0 + 2360));

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10007FBBC()
{
  v1 = *(*v0 + 2768);
  v3 = *v0;

  return _swift_task_switch(sub_10007FCB8, 0, 0);
}

uint64_t sub_10007FCB8()
{
  v1 = v0[306];
  (*(v0[269] + 8))(v0[270], v0[268]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130);

  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[301];
  v5 = v0[300];
  v6 = v0[297];
  v7 = v0[294];
  v8 = v0[291];
  v9 = v0[290];
  v10 = v0[287];
  v14 = v0[284];
  v15 = v0[283];
  v16 = v0[282];
  v17 = v0[279];
  v18 = v0[276];
  v19 = v0[273];
  v11 = v0[270];
  v20 = v0[267];
  (*(v0[296] + 8))(v0[262], v0[295]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10007FE88()
{
  v1 = *(*v0 + 2776);
  v3 = *v0;

  return _swift_task_switch(sub_10007FF84, 0, 0);
}

uint64_t sub_10007FF84()
{
  v1 = v0[306];
  (*(v0[266] + 8))(v0[267], v0[265]);
  sub_100080644("RequestHandler.handleClientMessage", 34, 2, v1, &qword_1000A4E08, qword_1000A6130);

  v2 = v0[305];
  v3 = v0[304];
  v4 = v0[301];
  v5 = v0[300];
  v6 = v0[297];
  v7 = v0[294];
  v8 = v0[291];
  v9 = v0[290];
  v10 = v0[287];
  v14 = v0[284];
  v15 = v0[283];
  v16 = v0[282];
  v17 = v0[279];
  v18 = v0[276];
  v19 = v0[273];
  v11 = v0[270];
  v20 = v0[267];
  (*(v0[296] + 8))(v0[262], v0[295]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100080160()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

void sub_1000801C4()
{
  v0 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64);
  __chkstk_darwin();
  if (qword_1000A4DE0 != -1)
  {
    swift_once();
  }

  sub_100001CC0(qword_1000A60C8, qword_1000A60E0);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v1 = *(type metadata accessor for LogMessage() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010008A7C0;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v7 = &type metadata for String;
  strcpy(v6, "jetpackassetd");
  v6[7] = -4864;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v6, &qword_1000A5630, &unk_100083BF0);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  LogMessage.init(stringInterpolation:)();
  Logger.warning(_:)();

  exit(0);
}

uint64_t sub_1000803B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000803E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100080420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100040348;

  return sub_100073EFC(a1, v4, v5, v7);
}

unint64_t sub_1000804E0()
{
  result = qword_1000A6200;
  if (!qword_1000A6200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6200);
  }

  return result;
}

void sub_100080534()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_1000A4DF8 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_1000A6460 object:0];
}

uint64_t sub_100080644(const char *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6)
{
  v26 = a3;
  v27 = a1;
  v8 = type metadata accessor for OSSignpostError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a5 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for OSSignposter();
  sub_100018718(v18, a6);
  v19 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v26 & 1) == 0)
  {
    if (v27)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v9 + 88))(v12, v8) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v9 + 8))(v12, v8);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v20, v24, v27, v22, v23, 2u);

LABEL_15:

      return (*(v14 + 8))(v17, v13);
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v27 = &v28;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10008091C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100040348;

  return sub_100076568(a1, v1);
}

uint64_t sub_1000809B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100040348;

  return sub_100077084(a1, v5);
}

unint64_t sub_100080A64()
{
  result = qword_1000A6208;
  if (!qword_1000A6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6208);
  }

  return result;
}

uint64_t sub_100080AB8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100080AF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = v2;
}

unint64_t sub_100080B28()
{
  result = qword_1000A6238;
  if (!qword_1000A6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6238);
  }

  return result;
}

uint64_t sub_100080B7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100080BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100080C10()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100080C98(void *a1)
{
  v2 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = a1[4];
  sub_100001CC0(a1, a1[3]);
  return XPCReceivedMessage.reply<A>(_:)();
}

uint64_t sub_100080D20()
{
  v1 = type metadata accessor for JetPackAssetDaemonMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 55) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_100080E20()
{
  v1 = *(type metadata accessor for JetPackAssetDaemonMessage() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = (v0 + ((v3 + 55) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_100077F28(v4, v5, v0 + v2, (v0 + v3), v7, v8);
}

uint64_t sub_100080EC0()
{
  v1 = type metadata accessor for JetPackAssetDaemonMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);
  v10 = *&v0[v5 + 8];

  return _swift_deallocObject(v0, v5 + 48, v3 | 7);
}

uint64_t sub_100080FB4(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for JetPackAssetDaemonMessage() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000DAF8;

  return sub_1000781F8(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_100081104(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DAF8;

  return sub_1000403C0(a1);
}

uint64_t sub_1000811A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000811E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A6258, &qword_100086A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Dependency.init<A>(satisfying:with:)()
{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

uint64_t Bag.subscript.getter()
{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}