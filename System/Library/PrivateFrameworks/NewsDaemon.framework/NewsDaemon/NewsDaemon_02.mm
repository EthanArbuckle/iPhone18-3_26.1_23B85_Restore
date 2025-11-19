uint64_t sub_100037F8C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    result = sub_1000353AC(a1);
    v2 = 0;
    v3 = 1 << *(result + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(result + 64);
    v6 = (v3 + 63) >> 6;
LABEL_5:
    while (v5)
    {
LABEL_10:
      v8 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v9 = v8 | (v2 << 6);
      v10 = *(*(result + 56) + 8 * v9);
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = 0;
        v13 = (v10 + 56);
        while (1)
        {
          v14 = v12 + 1;
          if (v12 < (v11 - 1))
          {
            break;
          }

LABEL_12:
          v13 += 2;
          v12 = v14;
          if (v14 == v11)
          {
            goto LABEL_5;
          }
        }

        v15 = (v10 + 32 + 16 * v12);
        v16 = *v15;
        v17 = v15[1];
        v18 = v13;
        v19 = v14;
        while (v19 < v11)
        {
          v20 = *(v18 - 1);
          v21 = *v18;
          if (v20 < v17 && v16 < v21 && v20 != v21 && v16 != v17)
          {
            v25 = *(*(result + 48) + 8 * v9);

            _StringGuts.grow(_:)(56);
            v26._countAndFlagsBits = 0x20776F646E6957;
            v26._object = 0xE700000000000000;
            String.append(_:)(v26);
            _print_unlocked<A, B>(_:_:)();
            v27._countAndFlagsBits = 3943982;
            v27._object = 0xE300000000000000;
            String.append(_:)(v27);
            _print_unlocked<A, B>(_:_:)();
            v28._countAndFlagsBits = 0;
            v28._object = 0xE000000000000000;
            String.append(_:)(v28);

            v29._countAndFlagsBits = 0x20796164206E6920;
            v29._object = 0xE800000000000000;
            String.append(_:)(v29);
            v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v30);

            v31._object = 0x800000010005EA60;
            v31._countAndFlagsBits = 0xD000000000000011;
            String.append(_:)(v31);
            _print_unlocked<A, B>(_:_:)();
            v32._countAndFlagsBits = 3943982;
            v32._object = 0xE300000000000000;
            String.append(_:)(v32);
            _print_unlocked<A, B>(_:_:)();
            v33._countAndFlagsBits = 0;
            v33._object = 0xE000000000000000;
            String.append(_:)(v33);

            v34._countAndFlagsBits = 0xD000000000000012;
            v34._object = 0x800000010005EA80;
            String.append(_:)(v34);
            sub_100038900();
            swift_allocError();
            *v35 = 0;
            v35[1] = 0xE000000000000000;
            swift_willThrow();
          }

          ++v19;
          v18 += 2;
          if (v11 == v19)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_32;
      }
    }

    while (1)
    {
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v7 >= v6)
      {
      }

      v5 = *(result + 64 + 8 * v7);
      ++v2;
      if (v5)
      {
        v2 = v7;
        goto LABEL_10;
      }
    }

LABEL_32:
    __break(1u);
  }

  else
  {
    sub_100038900();
    swift_allocError();
    *v36 = 0;
    v36[1] = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10003831C(char a1, uint64_t a2)
{
  sub_100037F8C(a2);
  if (v2)
  {

    return v5 & 1;
  }

  else
  {
    v28 = &_swiftEmptyDictionarySingleton;
    v27 = 1;
    sub_100035EC0(&v28, &v27, a2);
    v27 = 2;
    sub_100035EC0(&v28, &v27, a2);
    v27 = 3;
    sub_100035EC0(&v28, &v27, a2);
    v27 = 4;
    sub_100035EC0(&v28, &v27, a2);
    v27 = 5;
    sub_100035EC0(&v28, &v27, a2);
    v27 = 6;
    sub_100035EC0(&v28, &v27, a2);
    v24 = a1;
    v27 = 7;
    sub_100035EC0(&v28, &v27, a2);

    v6 = v28;
    sub_100015140(&qword_10007F350, &qword_10005B420);
    v7 = static _DictionaryStorage.copy(original:)();
    v8 = v7;
    v9 = 0;
    v10 = 1 << v6[32];
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v6 + 64;
    v13 = v11 & *(v6 + 8);
    v14 = (v10 + 63) >> 6;
    v25 = v7 + 64;
    v26 = v6;
    if (v13)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v26 + 6) + 8 * v18);
        v28 = *(*(v26 + 7) + 8 * v18);
        swift_bridgeObjectRetain_n();
        sub_100036930(&v28);

        *(v25 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(v8[6] + 8 * v18) = v19;
        *(v8[7] + 8 * v18) = v28;
        v20 = v8[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          break;
        }

        v8[2] = v22;
        if (!v13)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
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

          v5 = v24;
          return v5 & 1;
        }

        v17 = *&v12[8 * v9];
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v13 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);

    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1000385E8(uint64_t *a1)
{
  v2 = sub_100015140(&qword_10007F000, &qword_10005B410);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11[-v5];
  v7 = a1[4];
  sub_100002288(a1, a1[3]);
  sub_1000387D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v13 = 0;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100015140(&qword_10007F010, &qword_10005B418);
  v11[15] = 1;
  sub_100038828();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = sub_10003831C(v8 & 1, v12);
  (*(v3 + 8))(v6, v2);
  sub_10001653C(a1);
  return v10 & 1;
}

unint64_t sub_1000387D4()
{
  result = qword_10007F008;
  if (!qword_10007F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F008);
  }

  return result;
}

unint64_t sub_100038828()
{
  result = qword_10007F018;
  if (!qword_10007F018)
  {
    sub_100032974(&qword_10007F010, &qword_10005B418);
    sub_1000388AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F018);
  }

  return result;
}

unint64_t sub_1000388AC()
{
  result = qword_10007F020;
  if (!qword_10007F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F020);
  }

  return result;
}

unint64_t sub_100038900()
{
  result = qword_10007F030;
  if (!qword_10007F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F030);
  }

  return result;
}

uint64_t sub_100038954(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000389A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000389F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100038A10(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for DelayedNotificationTimetableFactoryConfiguration.Window(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.Window(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.Window(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100038C5C()
{
  result = qword_10007F048;
  if (!qword_10007F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F048);
  }

  return result;
}

unint64_t sub_100038CB4()
{
  result = qword_10007F050;
  if (!qword_10007F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F050);
  }

  return result;
}

unint64_t sub_100038D0C()
{
  result = qword_10007F058;
  if (!qword_10007F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F058);
  }

  return result;
}

unint64_t sub_100038D60()
{
  result = qword_10007F068;
  if (!qword_10007F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F068);
  }

  return result;
}

unint64_t sub_100038DB4()
{
  result = qword_10007F070;
  if (!qword_10007F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F070);
  }

  return result;
}

unint64_t sub_100038E08()
{
  result = qword_10007F078;
  if (!qword_10007F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F078);
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for DelayedNotificationTimetableFactoryConfiguration.Window.DaysOfWeek(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.Window.DaysOfWeek(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.Window.DaysOfWeek(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100038F40()
{
  result = qword_10007F080;
  if (!qword_10007F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F080);
  }

  return result;
}

unint64_t sub_100038F98()
{
  result = qword_10007F088;
  if (!qword_10007F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F088);
  }

  return result;
}

unint64_t sub_100038FF0()
{
  result = qword_10007F090;
  if (!qword_10007F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F090);
  }

  return result;
}

unint64_t sub_100039044()
{
  result = qword_10007F0A0;
  if (!qword_10007F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F0A0);
  }

  return result;
}

unint64_t sub_100039098()
{
  result = qword_10007F0A8;
  if (!qword_10007F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F0A8);
  }

  return result;
}

uint64_t sub_1000390EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100039134(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.Window.DaysOfWeek.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedNotificationTimetableFactoryConfiguration.Window.DaysOfWeek.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000392D4()
{
  result = qword_10007F0B0;
  if (!qword_10007F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F0B0);
  }

  return result;
}

unint64_t sub_10003932C()
{
  result = qword_10007F0B8;
  if (!qword_10007F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F0B8);
  }

  return result;
}

unint64_t sub_100039384()
{
  result = qword_10007F0C0;
  if (!qword_10007F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F0C0);
  }

  return result;
}

uint64_t sub_1000393F4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000394C0, 0, 0);
}

uint64_t sub_1000394C0()
{
  v1 = [objc_msgSend(*(v0[2] + OBJC_IVAR___NDScoredNotificationPool_context) "news:"configuration" core:?ConfigurationManager")];
  result = swift_unknownObjectRelease();
  if (v1)
  {
    if ([v1 respondsToSelector:"notificationPoolMaxAge"])
    {
      [v1 notificationPoolMaxAge];
    }

    swift_unknownObjectRelease();
    v3 = v0[5];
    v4 = v0[6];
    v5 = v0[3];
    v6 = v0[4];
    Date.init()();
    static Date.- infix(_:_:)();
    v7 = *(v6 + 8);
    v0[7] = v7;
    v0[8] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_10003964C;
    v9 = v0[6];
    v10 = v0[2];

    return sub_10003A314(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003964C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1000397E0;
  }

  else
  {
    v3 = sub_100039760;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100039760()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  (*(v0 + 56))(*(v0 + 48), *(v0 + 24));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000397E0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  (*(v0 + 56))(*(v0 + 48), *(v0 + 24));

  v3 = *(v0 + 8);
  v4 = *(v0 + 80);

  return v3();
}

void sub_100039860(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1000398EC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3)
{
  v19[1] = a3;
  v20 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v19 - v10;
  v12 = sub_100039D94();
  URL.appendingPathComponent(_:)();
  v13 = type metadata accessor for PoolAccessHandle();
  v14 = swift_allocObject();
  *(v14 + 32) = 0;
  *(v14 + 16) = v12;
  sub_100025E70(0, &qword_10007F2F0, NSFileHandle_ptr);
  (*(v5 + 16))(v9, v11, v4);
  v15 = v12;
  v16 = sub_10003F02C(v9);
  if (v3)
  {

    (*(v5 + 8))(v11, v4);
    v17 = 0;
  }

  else
  {
    v17 = v16;
    (*(v5 + 8))(v11, v4);
  }

  *(v14 + 24) = v17;
  v21[3] = v13;
  v21[4] = sub_100044B88(&qword_10007F258, type metadata accessor for PoolAccessHandle);
  v21[0] = v14;

  v20(&v22, v21);
  sub_10001653C(v21);
  *(v14 + 32) = 1;

  return v22;
}

uint64_t sub_100039B54@<X0>(void (*a1)(uint64_t *)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v18[2] = a2;
  v20 = a1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = sub_100039D94();
  URL.appendingPathComponent(_:)();
  v13 = type metadata accessor for PoolAccessHandle();
  v14 = swift_allocObject();
  *(v14 + 32) = 0;
  *(v14 + 16) = v12;
  sub_100025E70(0, &qword_10007F2F0, NSFileHandle_ptr);
  (*(v5 + 16))(v9, v11, v4);
  v15 = sub_10003F02C(v9);
  if (v3)
  {

    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  (*(v5 + 8))(v11, v4);
  *(v14 + 24) = v16;
  v19[3] = v13;
  v19[4] = sub_100044B88(&qword_10007F258, type metadata accessor for PoolAccessHandle);
  v19[0] = v14;

  v20(v19);
  sub_10001653C(v19);
  *(v14 + 32) = 1;
}

id sub_100039D94()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + OBJC_IVAR___NDScoredNotificationPool_accessQueue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = OBJC_IVAR___NDScoredNotificationPool__index;
    v15 = *(v0 + OBJC_IVAR___NDScoredNotificationPool__index);
    if (v15)
    {
      v16 = *(v0 + OBJC_IVAR___NDScoredNotificationPool__index);
LABEL_8:
      v25 = v15;
      return v16;
    }

    v17 = sub_10003EB1C(v0);
    if (v17)
    {
      v18 = *(v0 + v14);
      *(v0 + v14) = v17;
      v16 = v17;

      goto LABEL_8;
    }

    v19 = v0;
    result = [objc_allocWithZone(NTPBNotificationPoolIndex) init];
    if (result)
    {
      v20 = result;
      static Date.distantPast.getter();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v2 + 8))(v5, v1);
      v22 = [(objc_class *)isa pbDate];

      [v20 setCreationDate:v22];
      sub_100025E70(0, &qword_10007F2E8, NSMutableArray_ptr);
      v23 = NSArray.init(arrayLiteral:)();
      [v20 setEntries:v23];

      v24 = *(v19 + v14);
      *(v19 + v14) = v20;
      v16 = v20;

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10003A04C(void *a1, void (*a2)(double))
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_100002288(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  (*(v8 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(*(v4 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10002377C(v16);
  dispatch thunk of Sequence.makeIterator()();
  sub_100017518(v16, AssociatedTypeWitness);
  dispatch thunk of IteratorProtocol.next()();
  v10 = v14;
  if (v14)
  {
    v11 = v15;
    do
    {
      LOBYTE(v14) = 0;
      v12 = v10;
      a2(v11);

      if (v14)
      {
        break;
      }

      sub_100017518(v16, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      v10 = v14;
      v11 = v15;
    }

    while (v14);
  }

  return sub_10001653C(v16);
}

uint64_t sub_10003A314(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10003A444, 0, 0);
}

uint64_t sub_10003A444()
{
  v52 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = FCGenerateOperationID();
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  static Logger.notifications.getter();
  v48 = *(v4 + 16);
  v48(v2, v5, v3);

  v9 = Logger.logObject.getter();
  LOBYTE(v1) = static os_log_type_t.default.getter();

  v47 = v1;
  v10 = os_log_type_enabled(v9, v1);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = *(v0 + 32);
  v16 = *(v0 + 40);
  if (v10)
  {
    v17 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v17 = 136446466;
    sub_100044B88(&qword_10007E300, &type metadata accessor for Date);
    v45 = v14;
    v46 = v12;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v16 + 8))(v13, v15);
    v21 = sub_100021F24(v18, v20, v51);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_100021F24(v49, v8, v51);
    _os_log_impl(&_mh_execute_header, v9, v47, "will refresh notification pool if older than date=%{public}s, instance=%{public}s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v46, v45);
  }

  else
  {

    (*(v16 + 8))(v13, v15);
    (*(v11 + 8))(v12, v14);
  }

  v22 = v8;
  v23 = v49;
  v25 = *(v0 + 16);
  v24 = *(v0 + 24);
  v26 = *(v24 + OBJC_IVAR___NDScoredNotificationPool_accessQueue);
  v27 = swift_task_alloc();
  v27[2] = v24;
  v27[3] = v25;
  v27[4] = v49;
  v27[5] = v22;
  OS_dispatch_queue.sync<A>(execute:)();

  if (*(v0 + 128) == 1)
  {
    v28 = *(v0 + 48);
    v29 = *(v0 + 56);
    v30 = *(v0 + 32);
    v31 = *(v0 + 40);
    v32 = *(v0 + 24);
    v50 = *&v32[OBJC_IVAR___NDScoredNotificationPool_refreshSerialQueue];
    v48(v29, *(v0 + 16), v30);
    v33 = (*(v31 + 80) + 24) & ~*(v31 + 80);
    v34 = swift_allocObject();
    *(v0 + 96) = v34;
    *(v34 + 16) = v32;
    (*(v31 + 32))(v34 + v33, v29, v30);
    v35 = (v34 + ((v28 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = v23;
    v35[1] = v22;
    v36 = v32;
    v37 = swift_task_alloc();
    *(v0 + 104) = v37;
    v37[2] = v50;
    v37[3] = &unk_10005BCC8;
    v37[4] = v34;
    v38 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v39 = swift_task_alloc();
    *(v0 + 112) = v39;
    *v39 = v0;
    v39[1] = sub_10003A900;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v39, 0, 0, 0x2865747563657865, 0xEB00000000293A5FLL, sub_1000448E4, v37, &type metadata for () + 8);
  }

  else
  {

    v40 = *(v0 + 88);
    v41 = *(v0 + 56);
    v42 = *(v0 + 64);

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_10003A900()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_10003AA9C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_10003AA1C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003AA1C()
{
  v1 = v0[12];

  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003AA9C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];
  v7 = v0[15];

  return v6();
}

uint64_t sub_10003ACA4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10003AD4C;

  return sub_1000393F4();
}

uint64_t sub_10003AD4C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

void sub_10003AED0(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v97 = a4;
  v91 = a3;
  v93 = a2;
  v96 = a5;
  v6 = type metadata accessor for Logger();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  v8 = __chkstk_darwin(v6);
  v92 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v90 = &v87 - v11;
  __chkstk_darwin(v10);
  v89 = &v87 - v12;
  v13 = sub_100015140(&qword_10007E790, &qword_10005BD10);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v87 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v88 = &v87 - v24;
  v25 = __chkstk_darwin(v23);
  v87 = &v87 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v87 - v28;
  __chkstk_darwin(v27);
  v31 = &v87 - v30;
  v32 = sub_100039D94();
  v33 = [v32 creationDate];

  if (v33)
  {
    v34 = [v33 nsDate];

    if (v34)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = *(v18 + 32);
      v36 = v29;
      v37 = v18;
      v35(v16, v36, v17);
      (*(v18 + 56))(v16, 0, 1, v17);
      v35(v31, v16, v17);
    }

    else
    {
      v37 = v18;
      (*(v18 + 56))(v16, 1, 1, v17);
      static Date.distantPast.getter();
      if ((*(v18 + 48))(v16, 1, v17) != 1)
      {
        sub_100022E54(v16, &qword_10007E790, &qword_10005BD10);
      }
    }

    sub_100044B88(&qword_10007F2E0, &type metadata accessor for Date);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v38 = v92;
      static Logger.notifications.getter();
      (*(v37 + 16))(v22, v31, v17);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v41 = 136446466;
        sub_100044B88(&qword_10007E300, &type metadata accessor for Date);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v93 = v31;
        v43 = v37;
        v45 = v44;
        v46 = *(v43 + 8);
        v46(v22, v17);
        v47 = sub_100021F24(v42, v45, &v98);

        *(v41 + 4) = v47;
        *(v41 + 12) = 2082;
        *(v41 + 14) = sub_100021F24(v91, v97, &v98);
        _os_log_impl(&_mh_execute_header, v39, v40, "need to refresh notification pool due to age, lastRefresh=%{public}s, instance=%{public}s", v41, 0x16u);
        swift_arrayDestroy();

        (*(v94 + 8))(v92, v95);
        v46(v93, v17);
      }

      else
      {

        v69 = *(v37 + 8);
        v69(v22, v17);
        (*(v94 + 8))(v38, v95);
        v69(v31, v17);
      }
    }

    else
    {
      v48 = v31;
      v49 = [*(a1 + OBJC_IVAR___NDScoredNotificationPool_contentVariantProvider) preferredContentVariant];
      v50 = sub_100039D94();
      v51 = [v50 isPaidVariant];

      v52 = v18;
      v53 = (v18 + 16);
      if ((((v49 == 1) ^ v51) & 1) == 0)
      {
        v70 = v89;
        static Logger.notifications.getter();
        v71 = v87;
        v72 = v48;
        (*v53)(v87, v48, v17);
        v73 = v97;

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v93 = v72;
          v77 = v76;
          v92 = swift_slowAlloc();
          v98 = v92;
          *v77 = 136446466;
          sub_100044B88(&qword_10007E300, &type metadata accessor for Date);
          v78 = dispatch thunk of CustomStringConvertible.description.getter();
          v79 = v52;
          v81 = v80;
          v82 = *(v79 + 8);
          v82(v71, v17);
          v83 = sub_100021F24(v78, v81, &v98);

          *(v77 + 4) = v83;
          *(v77 + 12) = 2082;
          *(v77 + 14) = sub_100021F24(v91, v73, &v98);
          _os_log_impl(&_mh_execute_header, v74, v75, "no need to refresh notification pool, lastRefresh=%{public}s, instance=%{public}s", v77, 0x16u);
          swift_arrayDestroy();

          (*(v94 + 8))(v89, v95);
          v82(v93, v17);
        }

        else
        {

          v86 = *(v52 + 8);
          v86(v71, v17);
          (*(v94 + 8))(v70, v95);
          v86(v72, v17);
        }

        v84 = 0;
        goto LABEL_18;
      }

      v54 = v90;
      static Logger.notifications.getter();
      v55 = *v53;
      v56 = v88;
      v93 = v48;
      v55(v88, v48, v17);
      v57 = v97;

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = v49 == 1;
        v61 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v98 = v92;
        *v61 = 67240706;
        *(v61 + 4) = v60;
        *(v61 + 8) = 2082;
        sub_100044B88(&qword_10007E300, &type metadata accessor for Date);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v57;
        v64 = v52;
        v66 = v65;
        v67 = *(v64 + 8);
        v67(v56, v17);
        v68 = sub_100021F24(v62, v66, &v98);

        *(v61 + 10) = v68;
        *(v61 + 18) = 2082;
        *(v61 + 20) = sub_100021F24(v91, v63, &v98);
        _os_log_impl(&_mh_execute_header, v58, v59, "need to refresh notification pool due to content variant change, preferPaid=%{BOOL,public}d, lastRefresh=%{public}s, instance=%{public}s", v61, 0x1Cu);
        swift_arrayDestroy();

        (*(v94 + 8))(v90, v95);
        v67(v93, v17);
      }

      else
      {

        v85 = *(v52 + 8);
        v85(v56, v17);
        (*(v94 + 8))(v54, v95);
        v85(v93, v17);
      }
    }

    v84 = 1;
LABEL_18:
    *v96 = v84;
    return;
  }

  __break(1u);
}

uint64_t sub_10003B97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10003B9A0, 0, 0);
}

uint64_t sub_10003B9A0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = OBJC_IVAR___NDScoredNotificationPool_accessQueue;
  v4 = swift_task_alloc();
  v5 = *(*(v0 + 16) + v3);
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  OS_dispatch_queue.sync<A>(execute:)();

  if (*(v0 + 56) == 1)
  {
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_10003BAF0;
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 16);

    return sub_10003BBE4(v8, v7);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10003BAF0()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10003BBE4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_10003BD48, 0, 0);
}

uint64_t sub_10003BD48()
{
  v1 = v0[13];
  v2 = v0[5];
  Date.init()();
  v3 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(OBJC_IVAR___NDScoredNotificationPool_cacheDirectory);
  v5 = v4;
  v0[2] = 0;
  v6 = [v3 URLForDirectory:99 inDomain:1 appropriateForURL:v4 create:1 error:v0 + 2];

  v7 = v0[2];
  if (v6)
  {
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[8];
    v11 = v0[4];
    v34 = v0[5];
    v35 = v0[13];
    v12 = v0[3];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v7;

    v14._countAndFlagsBits = 0x7865646E692DLL;
    v14._object = 0xE600000000000000;
    String.append(_:)(v14);
    URL.appendingPathComponent(_:)();

    v15._countAndFlagsBits = 0x736D6574692DLL;
    v15._object = 0xE600000000000000;
    String.append(_:)(v15);
    URL.appendingPathComponent(_:)();

    v16 = objc_allocWithZone(FCPBMessageStreamWriter);
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    v20 = [v16 initWithURL:v18];
    v0[14] = v20;

    v21 = swift_allocObject();
    v0[15] = v21;
    *(v21 + 16) = &_swiftEmptyDictionarySingleton;
    v22 = swift_allocObject();
    v0[16] = v22;
    *(v22 + 16) = _swiftEmptyArrayStorage;
    v23 = swift_allocObject();
    v0[17] = v23;
    v23[2] = v21;
    v23[3] = v20;
    v23[4] = v22;
    v24 = swift_task_alloc();
    v0[18] = v24;
    v24[2] = v34;
    v24[3] = sub_1000448F0;
    v24[4] = v23;
    v24[5] = v12;
    v24[6] = v11;
    v24[7] = v20;
    v24[8] = v22;
    v24[9] = v21;
    v24[10] = v35;
    v24[11] = v8;
    v24[12] = v10;
    v25 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];

    v26 = v20;

    v27 = swift_task_alloc();
    v0[19] = v27;
    *v27 = v0;
    v27[1] = sub_10003C15C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v27, 0, 0, 0xD000000000000021, 0x800000010005EDC0, sub_1000448FC, v24, &type metadata for () + 8);
  }

  else
  {
    v28 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v29 = v0[10];
    v31 = v0[8];
    v30 = v0[9];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_10003C15C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);

  if (v0)
  {
    v6 = sub_10003C410;
  }

  else
  {
    v6 = sub_10003C2BC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10003C2BC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v14 = v0[15];
  v15 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v10 = v0[6];
  v9 = v0[7];

  v11 = *(v9 + 8);
  v11(v6, v10);

  v11(v8, v10);
  v11(v7, v10);
  (*(v5 + 8))(v4, v15);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10003C410()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];

  v10 = *(v8 + 8);
  v10(v5, v9);

  v10(v7, v9);
  v10(v6, v9);
  v11 = v0[20];
  v12 = v0[10];
  v14 = v0[8];
  v13 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10003C6EC(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = type metadata accessor for Date();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  a3;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_10003C818;

  return sub_10003A314(v9);
}

uint64_t sub_10003C818()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  (*(v7 + 8))(v6, v8);

  v11 = *(v3 + 48);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 48), 0);
  }

  v14 = v4 + 40;
  v13 = *(v4 + 40);
  _Block_release(*(v14 + 8));

  v15 = *(v10 + 8);

  return v15();
}

id sub_10003CA00(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = [a1 identifier];
  if (result)
  {
    v9 = result;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = [a3 writeMessage:a1];
    v15 = v14;
    swift_beginAccess();
    v16 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a2 + 16);
    *(a2 + 16) = 0x8000000000000000;
    sub_100041DE4(v13, v15, v10, v12, isUniquelyReferenced_nonNull_native);

    *(a2 + 16) = v20;
    swift_endAccess();
    swift_beginAccess();
    v18 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003CB6C(uint64_t a1, char *a2, void (**a3)(uint64_t a1, void *a2), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v66 = a7;
  v67 = a8;
  v74 = a6;
  v64 = a5;
  v57 = a3;
  v59 = a1;
  v62 = a11;
  v63 = a12;
  v65 = a9;
  v61 = a10;
  v72 = type metadata accessor for URL();
  v70 = *(v72 - 8);
  v14 = v70[8];
  v15 = __chkstk_darwin(v72);
  v73 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = &v52 - v16;
  v17 = type metadata accessor for Date();
  v68 = *(v17 - 8);
  v69 = v17;
  v56 = *(v68 + 64);
  __chkstk_darwin(v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v19;
  v20 = sub_100015140(&unk_10007F290, &qword_10005A838);
  v53 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  v54 = &v52 - v23;
  v58 = a2;
  v25 = [objc_allocWithZone(FCNotificationPoolOperation) initWithContext:*&a2[OBJC_IVAR___NDScoredNotificationPool_context] contentVariantProvider:*&a2[OBJC_IVAR___NDScoredNotificationPool_contentVariantProvider]];
  v60 = v25;
  v79 = v57;
  v80 = a4;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v57 = &v77;
  v77 = sub_1000213F4;
  v78 = &unk_100073C60;
  v26 = _Block_copy(&aBlock);

  [v25 setItemHandler:v26];
  _Block_release(v26);
  (*(v21 + 16))(v24, v59, v20);
  v27 = v68;
  (*(v68 + 16))(v19, v61, v69);
  v28 = v70;
  v29 = v70[2];
  v30 = v72;
  v29(v71, v62, v72);
  v29(v73, v63, v30);
  v31 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v32 = (v22 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (*(v27 + 80) + v34 + 8) & ~*(v27 + 80);
  v36 = (v56 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v28 + 80);
  v38 = (v37 + v36 + 8) & ~v37;
  v39 = (v14 + v37 + v38) & ~v37;
  v40 = swift_allocObject();
  v41 = v74;
  *(v40 + 16) = v64;
  *(v40 + 24) = v41;
  (*(v21 + 32))(v40 + v31, v54, v53);
  v43 = v66;
  v42 = v67;
  *(v40 + v32) = v66;
  *(v40 + v33) = v42;
  *(v40 + v34) = v65;
  (*(v68 + 32))(v40 + v35, v55, v69);
  v44 = v58;
  *(v40 + v36) = v58;
  v45 = v70[4];
  v46 = v40 + v38;
  v47 = v72;
  v45(v46, v71, v72);
  v45(v40 + v39, v73, v47);
  v79 = sub_100044954;
  v80 = v40;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_100039860;
  v78 = &unk_100073CB0;
  v48 = _Block_copy(&aBlock);

  v49 = v43;

  v50 = v44;

  v51 = v60;
  [v60 setCompletionHandler:v48];
  _Block_release(v48);
  [v51 start];
}

void sub_10003D108(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v108 = a4;
  v109 = type metadata accessor for Logger();
  v18 = *(v109 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v109);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  __chkstk_darwin(v23);
  v26 = &v95 - v25;
  if (a1)
  {
    v107 = a2;
    swift_errorRetain();
    static Logger.notifications.getter();
    swift_errorRetain();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = a3;
      v32 = swift_slowAlloc();
      v113[0] = v32;
      *v29 = 138543618;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v33;
      *v30 = v33;
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_100021F24(v107, v31, v113);
      _os_log_impl(&_mh_execute_header, v27, v28, "failed to refresh notification pool, error=%{public}@, instance=%{public}s", v29, 0x16u);
      sub_100022E54(v30, &qword_10007E768, &qword_10005BCE0);

      sub_10001653C(v32);
    }

    (*(v18 + 8))(v26, v109);
    v113[0] = a1;
    sub_100015140(&unk_10007F290, &qword_10005A838);
    goto LABEL_32;
  }

  v105 = a8;
  v106 = v18;
  v102 = v24;
  v113[0] = 0;
  v34 = [a5 close:v113];
  v35 = v113[0];
  if ((v34 & 1) == 0)
  {
    v39 = v113[0];
    v38 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_29;
  }

  v101 = v22;
  type metadata accessor for ProxyScoringServiceConnection();
  v36 = v35;
  v37 = static ProxyScoringServiceConnection.shared.getter();
  __chkstk_darwin(v37);
  *(&v95 - 2) = a6 + 16;
  sub_100015140(&unk_10007F2A0, &qword_10005BCE8);
  ProxyScoringServiceConnection.withSyncScoringService<A>(_:)();
  v38 = 0;
  v107 = a2;
  v98 = a3;
  v96 = a11;
  v97 = a10;
  v99 = a9;

  v103 = v113[0];
  swift_beginAccess();
  v40 = *(a7 + 16);
  v41 = _swiftEmptyArrayStorage;
  v111[0] = _swiftEmptyArrayStorage;
  v42 = v40 + 64;
  v43 = 1 << *(v40 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v40 + 64);
  v46 = (v43 + 63) >> 6;
  v104 = v40;
  swift_bridgeObjectRetain_n();
  v47 = 0;
  v95 = a7;
  v100 = 0;
  if (v45)
  {
LABEL_15:
    while (1)
    {
      v49 = (v47 << 10) | (16 * __clz(__rbit64(v45)));
      v50 = (*(v104 + 48) + v49);
      v52 = *v50;
      v51 = v50[1];
      v53 = (*(v104 + 56) + v49);
      v54 = *v53;
      v55 = v53[1];
      v56 = objc_allocWithZone(NTPBNotificationPoolIndexEntry);

      v57 = [v56 init];
      if (!v57)
      {
        break;
      }

      if (v54 < 0)
      {
        goto LABEL_38;
      }

      v58 = v57;
      [v57 setItemOffset:v54];
      if (v55 < 0)
      {
        goto LABEL_39;
      }

      [v58 setItemLength:v55];
      v59 = v103;
      v60 = 0.0;
      if (v103[2])
      {
        v61 = sub_100040750(v52, v51);
        if (v62)
        {
          v60 = *(v59[7] + 8 * v61);
        }
      }

      [v58 setScore:{v60, v95}];
      v63 = v58;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v64 = *((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v45 &= v45 - 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v41 = v111[0];

      v38 = v100;
      if (!v45)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  while (1)
  {
LABEL_11:
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    if (v48 >= v46)
    {
      break;
    }

    v45 = *(v42 + 8 * v48);
    ++v47;
    if (v45)
    {
      v47 = v48;
      goto LABEL_15;
    }
  }

  v110 = v41;
  sub_10003E0F0(&v110);
  v65 = [objc_allocWithZone(NTPBNotificationPoolIndex) init];
  if (!v65)
  {
    goto LABEL_41;
  }

  v66 = v65;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v68 = [(objc_class *)isa pbDate];

  [v66 setCreationDate:v68];
  [v66 setIsPaidVariant:{objc_msgSend(*(v99 + OBJC_IVAR___NDScoredNotificationPool_contentVariantProvider), "preferredContentVariant") == 1}];
  sub_10003E168(v110);
  v69 = objc_allocWithZone(NSMutableArray);
  v70 = Array._bridgeToObjectiveC()().super.isa;

  v71 = [v69 initWithArray:v70];

  [v66 setEntries:v71];
  v72 = [v66 data];
  a3 = v98;
  a2 = v107;
  if (!v72)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v73 = v72;

  v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;

  v77 = v97;
  Data.write(to:options:)();
  if (v38)
  {
    sub_1000153DC(v74, v76);

    v22 = v101;
LABEL_29:
    static Logger.notifications.getter();

    swift_errorRetain();
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = a3;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v111[0] = v83;
      *v80 = 138543618;
      swift_errorRetain();
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 4) = v84;
      *v82 = v84;
      *(v80 + 12) = 2082;
      *(v80 + 14) = sub_100021F24(a2, v81, v111);
      _os_log_impl(&_mh_execute_header, v78, v79, "failed to persist notification pool, error=%{public}@, instance=%{public}s", v80, 0x16u);
      sub_100022E54(v82, &qword_10007E768, &qword_10005BCE0);

      sub_10001653C(v83);
    }

    (*(v106 + 8))(v22, v109);
    v111[0] = v38;
    sub_100015140(&unk_10007F290, &qword_10005A838);
LABEL_32:
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v85 = sub_1000153DC(v74, v76);
    v86 = *(v99 + OBJC_IVAR___NDScoredNotificationPool_accessQueue);
    __chkstk_darwin(v85);
    *(&v95 - 4) = v87;
    *(&v95 - 3) = v77;
    *(&v95 - 2) = v96;
    *(&v95 - 1) = v66;
    OS_dispatch_queue.sync<A>(execute:)();
    v88 = v109;
    v89 = v102;
    static Logger.notifications.getter();

    v90 = v95;

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v112 = v94;
      *v93 = 134349314;
      swift_beginAccess();
      *(v93 + 4) = *(*(v90 + 16) + 16);

      *(v93 + 12) = 2082;
      *(v93 + 14) = sub_100021F24(a2, a3, &v112);
      _os_log_impl(&_mh_execute_header, v91, v92, "successfully refreshed notification pool, items=%{public}ld, instance=%{public}s", v93, 0x16u);
      sub_10001653C(v94);
    }

    else
    {
    }

    (*(v106 + 8))(v89, v88);
    sub_100015140(&unk_10007F290, &qword_10005A838);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10003DC24(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  swift_beginAccess();
  v9 = *a4;
  sub_100025E70(0, &qword_10007EE28, NTPBNotificationItem_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for NDScoringServiceEnvironment();
  v11 = static NDScoringServiceEnvironment.news.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100044B48;
  *(v12 + 24) = v8;
  aBlock[4] = sub_100044B80;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003E03C;
  aBlock[3] = &unk_100073D28;
  v13 = _Block_copy(aBlock);

  [a1 scoreNotificationItems:isa environment:v11 completion:v13];
  _Block_release(v13);
}

uint64_t sub_10003DDB8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = a2;
    v5 = sub_10003DE20(a1);
    a2 = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  a3(v6, a2);
}

uint64_t sub_10003DE20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100015140(&qword_10007F2C8, &qword_10005BD00);
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
    v9 = 0;
LABEL_11:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    return 0;
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t sub_10003E03C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100025E70(0, &qword_10007F2C0, NSNumber_ptr);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_10003E0F0(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_10004417C(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_100043160(v4);
  *a1 = v2;
}

char *sub_10003E168(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1000429F8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100025E70(0, &qword_10007F280, NTPBNotificationPoolIndexEntry_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1000429F8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10002A3E4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100025E70(0, &qword_10007F280, NTPBNotificationPoolIndexEntry_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1000429F8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10002A3E4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10003E364(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_100042A58(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v13 = v2;
      v8 = v2[2];
      v7 = v2[3];

      if (v8 >= v7 >> 1)
      {
        sub_100042A58((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for String;
      v12 = &protocol witness table for String;
      *&v10 = v6;
      *(&v10 + 1) = v5;
      v2[2] = v8 + 1;
      sub_10000390C(&v10, &v2[5 * v8 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10003E460(uint64_t a1)
{
  v2 = sub_100015140(&qword_10007F310, qword_10005BD58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v14 - v5;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_100042A18(0, v7, 0);
    v8 = v15;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1000035EC(v9, v6);
      sub_100015140(&qword_10007F318, &qword_10005BD98);
      swift_dynamicCast();
      v15 = v8;
      v12 = v8[2];
      v11 = v8[3];
      if (v12 >= v11 >> 1)
      {
        sub_100042A18((v11 > 1), v12 + 1, 1);
        v8 = v15;
      }

      v8[2] = v12 + 1;
      sub_10000390C(v14, &v8[5 * v12 + 4]);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

id sub_10003E604(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v59 = a4;
  v61 = a3;
  v65 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = "v16@?0@NTPBNotificationItem8";
  URL.appendingPathComponent(_:)();
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = *(v6 + 8);
  v64 = v5;
  v13(v9, v5);
  v14 = String._bridgeToObjectiveC()();
  [v12 setUInt16XAttr:0 withName:v14];

  v63 = "otification_pool_version";
  URL.appendingPathComponent(_:)();
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  v13(v9, v5);
  v58 = "notification_pool_index";
  v18 = String._bridgeToObjectiveC()();
  [v17 setUInt16XAttr:0 withName:v18];

  v19 = *(a1 + OBJC_IVAR___NDScoredNotificationPool__index);
  v57 = OBJC_IVAR___NDScoredNotificationPool__index;
  *(a1 + OBJC_IVAR___NDScoredNotificationPool__index) = 0;

  v60 = objc_opt_self();
  v20 = [v60 defaultManager];
  v21 = v64;
  v62 = a1;
  URL.appendingPathComponent(_:)();
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v25 = v21;
  v66 = v6 + 8;
  v67 = v13;
  v13(v9, v21);
  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  v69 = 0;
  v29 = [v20 replaceItemAtURL:v24 withItemAtURL:v27 backupItemName:0 options:0 resultingItemURL:0 error:&v69];

  v30 = v69;
  if (!v29)
  {
    goto LABEL_6;
  }

  v31 = v69;
  v32 = [v60 defaultManager];
  v33 = v62;
  URL.appendingPathComponent(_:)();
  URL._bridgeToObjectiveC()(v34);
  v36 = v35;
  v67(v9, v25);
  URL._bridgeToObjectiveC()(v37);
  v39 = v38;
  v69 = 0;
  v40 = [v32 replaceItemAtURL:v36 withItemAtURL:v38 backupItemName:0 options:0 resultingItemURL:0 error:&v69];

  v30 = v69;
  if (v40)
  {
    v41 = v25;
    v42 = v69;
    URL.appendingPathComponent(_:)();
    URL._bridgeToObjectiveC()(v43);
    v45 = v44;
    v67(v9, v25);
    if (qword_10007DFF0 != -1)
    {
      swift_once();
    }

    v46 = word_1000817C0;
    v47 = String._bridgeToObjectiveC()();
    [v45 setUInt16XAttr:v46 withName:v47];

    URL.appendingPathComponent(_:)();
    URL._bridgeToObjectiveC()(v48);
    v50 = v49;
    v67(v9, v41);
    v51 = String._bridgeToObjectiveC()();
    [v50 setUInt16XAttr:v46 withName:v51];

    v52 = *(v33 + v57);
    v53 = v59;
    *(v33 + v57) = v59;

    return v53;
  }

  else
  {
LABEL_6:
    v55 = v30;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

id sub_10003EB1C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v28 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v27 - v7;
  v27[0] = "v16@?0@NTPBNotificationItem8";
  URL.appendingPathComponent(_:)();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v8, v2);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 getUInt16XAttrWithName:v13];

  v27[1] = a1;
  URL.appendingPathComponent(_:)();
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  v12(v8, v2);
  v18 = String._bridgeToObjectiveC()();
  LODWORD(v13) = [v17 getUInt16XAttrWithName:v18];

  if (v14 != v13)
  {
    return 0;
  }

  if (qword_10007DFF0 != -1)
  {
    swift_once();
  }

  if (v14 != word_1000817C0)
  {
    return 0;
  }

  v19 = v28;
  URL.appendingPathComponent(_:)();
  v20 = Data.init(contentsOf:options:)();
  v22 = v21;
  v12(v19, v2);
  v23 = objc_allocWithZone(NTPBNotificationPoolIndex);
  sub_100015334(v20, v22);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000153DC(v20, v22);
  v25 = [v23 initWithData:isa];

  sub_1000153DC(v20, v22);
  return v25;
}

uint64_t type metadata accessor for ScoredNotificationPool()
{
  result = qword_10007F128;
  if (!qword_10007F128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003EF78()
{
  result = type metadata accessor for URL();
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

id sub_10003F02C(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

id sub_10003F184(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v4 = *(v1 + 16);
    v5 = v2;
    result = [v4 entries];
    if (result)
    {
      v7 = result;
      v8 = [result objectAtIndexedSubscript:a1];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100025E70(0, &qword_10007F280, NTPBNotificationPoolIndexEntry_ptr);
      if (swift_dynamicCast())
      {
        v9 = v12;
        v10 = objc_autoreleasePoolPush();
        sub_10003F3B0(v12, v5, &v12, &v13);
        objc_autoreleasePoolPop(v10);

        return v13;
      }

      else
      {
        if (qword_10007E000 != -1)
        {
          swift_once();
        }

        v11 = qword_1000817D0;

        return v11;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_10007E000 != -1)
    {
      swift_once();
    }

    return qword_1000817D0;
  }

  return result;
}

void sub_10003F3B0(id a1@<X1>, void *a2@<X0>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v22 = 0;
  if (![a2 seekToOffset:objc_msgSend(a1 error:{"itemOffset"), &v22}])
  {
    v15 = v22;
    v11 = _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_7:
    *a3 = v11;
    return;
  }

  v8 = v22;
  if (([a1 itemLength] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v9 = NSFileHandle.read(upToCount:)();
  v11 = v4;
  if (v4)
  {
    goto LABEL_7;
  }

  if (v10 >> 60 == 15)
  {
    v12 = v10;
    v13 = v9;
    isa = 0;
  }

  else
  {
    v16 = v9;
    v17 = v10;
    sub_100015334(v9, v10);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13 = v16;
    v18 = v16;
    v12 = v17;
    sub_1000445BC(v18, v17);
  }

  v19 = [objc_allocWithZone(NTPBNotificationItem) initWithData:isa];

  if (v19)
  {
    [a1 score];
    v21 = v20;
    sub_1000445BC(v13, v12);
    *a4 = v19;
    a4[1] = v21;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003F564()
{

  return _swift_deallocClassInstance(v0, 33, 7);
}

void sub_10003F60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10003F6D0(a1, a3);
  if (a2 < 1)
  {
    if (v6 > 0 || v6 <= a2)
    {
LABEL_8:
      v7 = __OFADD__(a1, a2);
      v8 = a1 + a2;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        v9 = [*(v3 + 16) entries];
        if (!v9)
        {
LABEL_15:
          __break(1u);
          return;
        }

        v10 = v9;
        v11 = [v9 count];

        if ((v8 & 0x8000000000000000) == 0 && v11 >= v8)
        {
          return;
        }
      }

      __break(1u);
      goto LABEL_15;
    }
  }

  else if (v6 < 0 || v6 >= a2)
  {
    goto LABEL_8;
  }
}

void sub_10003F6D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = [v5 entries];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 count];

  if (a1 < 0 || v8 < a1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = [v5 entries];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 count];

  if (a2 < 0 || v11 < a2)
  {
    goto LABEL_9;
  }
}

void sub_10003F79C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = [*(*v2 + 16) entries];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 count];

    if ((v4 & 0x8000000000000000) == 0 && v4 < v7)
    {
      *a2 = v4;
      return;
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
}

void sub_10003F824(uint64_t *a1)
{
  v2 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = [*(*v1 + 16) entries];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 count];

    if ((v2 & 0x8000000000000000) == 0 && v2 < v6)
    {
      *a1 = v2;
      return;
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
}

void sub_10003F8AC(void *a1@<X8>)
{
  v3 = [*(*v1 + 16) entries];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 count];

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

void (*sub_10003F914(void *a1, uint64_t *a2))(uint64_t a1)
{
  v4 = *v2;
  v5 = sub_10003F184(*a2);
  a1[2] = v5;
  *a1 = v5;
  a1[1] = v6;
  return sub_10003F968;
}

void sub_10003F970(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = [*(v6 + 16) entries];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 count];

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9 < v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v6;
}

void sub_10003FA18(void *a1@<X8>)
{
  v3 = [*(*v1 + 16) entries];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 count];

    if ((v5 & 0x8000000000000000) == 0)
    {
      *a1 = 0;
      a1[1] = v5;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

id sub_10003FA88()
{
  result = [*(*v0 + 16) entries];
  if (result)
  {
    v2 = result;
    v3 = [result count];

    return (v3 == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003FAE8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = [*(*v3 + 16) entries];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 count];

    if ((v5 & 0x8000000000000000) == 0 && v8 >= v5)
    {
      *a3 = v5;
      return;
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
}

void sub_10003FB70(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  sub_10003F60C(*a1, a2, *a3);
  *a4 = v7;
  *(a4 + 8) = v8 & 1;
}

uint64_t *sub_10003FBAC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_10003FBC8(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_10003FBE4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void sub_10003FC00(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = [*(*v2 + 16) entries];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 count];

    if ((v4 & 0x8000000000000000) == 0 && v4 < v7)
    {
      *a2 = v4 + 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10003FC80(uint64_t *a1)
{
  v3 = *a1;
  v4 = [*(*v1 + 16) entries];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 count];

    if ((v3 & 0x8000000000000000) == 0 && v3 < v6)
    {
      *a1 = v3 + 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10003FD0C()
{
  v1 = [*(*v0 + 16) entries];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 count];

    sub_10003F6D0(0, v3);
  }

  else
  {
    __break(1u);
  }
}

void *sub_10003FD80()
{
  v1 = sub_100042734(*v0);

  return v1;
}

unint64_t sub_10003FE88()
{
  result = qword_10007F210;
  if (!qword_10007F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F210);
  }

  return result;
}

uint64_t sub_100040068(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100032974(&qword_10007F028, &unk_10005B428);
    sub_10003FE88();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100040130(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100032974(&qword_10007F220, &qword_10005BAC0);
    sub_100044B88(a2, type metadata accessor for PoolAccessHandle);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000401CC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100023584;

  return v7();
}

uint64_t sub_1000402B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100017F58;

  return v8();
}

uint64_t sub_10004039C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100044684(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100022E54(v12, &unk_10007EB50, &qword_10005AB40);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100022E54(a3, &unk_10007EB50, &qword_10005AB40);

    return v23;
  }

LABEL_8:
  sub_100022E54(a3, &unk_10007EB50, &qword_10005AB40);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *sub_100040688(uint64_t a1, uint64_t a2)
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

  sub_100015140(&qword_10007F288, &unk_10005BC60);
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

unint64_t sub_10004070C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_100040894(a1, v4);
}

unint64_t sub_100040750(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100040900(a1, a2, v6);
}

unint64_t sub_1000407C8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000409B8(a1, v4);
}

unint64_t sub_10004080C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_10002DDE8(a1);
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_100040A80(a1, v4);
}

unint64_t sub_100040894(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100040900(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000409B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10002A4B8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10002A3F4(v8);
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

unint64_t sub_100040A80(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v31 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v33 + 48) + v4);
      if (v6 <= 4)
      {
        v9 = 0xD000000000000017;
        if (v6 == 3)
        {
          v10 = 0x6B6E615278616DLL;
        }

        else
        {
          v10 = 0x65726F63536E696DLL;
        }

        if (v6 == 3)
        {
          v11 = 0xE700000000000000;
        }

        else
        {
          v11 = 0xE800000000000000;
        }

        if (v6 == 2)
        {
          v12 = 0x800000010005D530;
        }

        else
        {
          v9 = v10;
          v12 = v11;
        }

        if (*(*(v33 + 48) + v4))
        {
          v13 = 0x64657269707865;
        }

        else
        {
          v13 = 0xD000000000000010;
        }

        if (*(*(v33 + 48) + v4))
        {
          v14 = 0xE700000000000000;
        }

        else
        {
          v14 = 0x800000010005D510;
        }

        if (*(*(v33 + 48) + v4) <= 1u)
        {
          v7 = v13;
        }

        else
        {
          v7 = v9;
        }

        if (*(*(v33 + 48) + v4) <= 1u)
        {
          v8 = v14;
        }

        else
        {
          v8 = v12;
        }
      }

      else if (*(*(v33 + 48) + v4) > 7u)
      {
        if (v6 == 8)
        {
          v7 = 0xD000000000000021;
          v8 = 0x800000010005D5A0;
        }

        else if (v6 == 9)
        {
          v7 = 0xD00000000000001ALL;
          v8 = 0x800000010005D5D0;
        }

        else
        {
          v7 = 0x6143656372756F73;
          v8 = 0xEC00000074694870;
        }
      }

      else if (v6 == 5)
      {
        v7 = 0xD000000000000010;
        v8 = 0x800000010005D560;
      }

      else if (v6 == 6)
      {
        v7 = 0x627550646574756DLL;
        v8 = 0xEE0072656873696CLL;
      }

      else
      {
        v7 = 0xD000000000000014;
        v8 = 0x800000010005D580;
      }

      v15 = 0xD000000000000021;
      v16 = 0xD00000000000001ALL;
      if (v5 != 9)
      {
        v16 = 0x6143656372756F73;
      }

      v17 = 0xEC00000074694870;
      if (v5 == 9)
      {
        v17 = 0x800000010005D5D0;
      }

      if (v5 != 8)
      {
        v15 = v16;
      }

      v18 = 0x800000010005D5A0;
      if (v5 != 8)
      {
        v18 = v17;
      }

      v19 = 0xD000000000000014;
      if (v5 == 6)
      {
        v19 = 0x627550646574756DLL;
      }

      v20 = 0xEE0072656873696CLL;
      if (v5 != 6)
      {
        v20 = 0x800000010005D580;
      }

      if (v5 == 5)
      {
        v19 = 0xD000000000000010;
        v20 = 0x800000010005D560;
      }

      if (v5 <= 7)
      {
        v15 = v19;
        v18 = v20;
      }

      v21 = 0xD000000000000017;
      if (v5 == 3)
      {
        v22 = 0x6B6E615278616DLL;
      }

      else
      {
        v22 = 0x65726F63536E696DLL;
      }

      if (v5 == 3)
      {
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      if (v5 == 2)
      {
        v24 = 0x800000010005D530;
      }

      else
      {
        v21 = v22;
        v24 = v23;
      }

      if (v5)
      {
        v25 = 0x64657269707865;
      }

      else
      {
        v25 = 0xD000000000000010;
      }

      if (v5)
      {
        v26 = 0xE700000000000000;
      }

      else
      {
        v26 = 0x800000010005D510;
      }

      if (v5 <= 1)
      {
        v21 = v25;
        v24 = v26;
      }

      v27 = v5 <= 4 ? v21 : v15;
      v28 = v5 <= 4 ? v24 : v18;
      if (v7 == v27 && v8 == v28)
      {
        break;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        v4 = (v4 + 1) & v31;
        if ((*(v32 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_100040DEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100015140(&qword_10007F300, &qword_10005BD48);
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

uint64_t sub_10004108C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100015140(&qword_10007F2F8, &qword_10005BD40);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_10002A3E4((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_10002A4B8(v24, &v37);
        sub_100023520(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_10002A3E4(v36, (*(v8 + 56) + 32 * v16));
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100041344(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100015140(&qword_10007F308, &qword_10005BD50);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
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

LABEL_36:
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
        goto LABEL_36;
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

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v8;
  return result;
}

uint64_t sub_10004177C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100015140(&qword_10007F350, &qword_10005B420);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000419EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100015140(&unk_10007F2D0, &qword_10005BD08);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

_OWORD *sub_100041C98(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000407C8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100042180();
      goto LABEL_7;
    }

    sub_10004108C(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1000407C8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10002A4B8(a2, v22);
      return sub_100041F58(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10001653C(v17);

  return sub_10002A3E4(a1, v17);
}

unint64_t sub_100041DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_100040750(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000419EC(v18, a5 & 1);
      v22 = *v6;
      result = sub_100040750(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1000425CC();
      result = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    return result;
  }

  v24[(result >> 6) + 8] |= 1 << result;
  v26 = (v24[6] + 16 * result);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v24[7] + 16 * result);
  *v27 = a1;
  v27[1] = a2;
  v28 = v24[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24[2] = v29;
}

_OWORD *sub_100041F58(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10002A3E4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_100041FD4(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_100042018()
{
  v1 = v0;
  sub_100015140(&qword_10007F300, &qword_10005BD48);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_100042180()
{
  v1 = v0;
  sub_100015140(&qword_10007F2F8, &qword_10005BD40);
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
        v18 = 40 * v17;
        sub_10002A4B8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100023520(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10002A3E4(v22, (*(v4 + 56) + v17));
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

void *sub_100042324()
{
  v1 = v0;
  sub_100015140(&qword_10007F308, &qword_10005BD50);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100042470()
{
  v1 = v0;
  sub_100015140(&qword_10007F350, &qword_10005B420);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void *sub_1000425CC()
{
  v1 = v0;
  sub_100015140(&unk_10007F2D0, &qword_10005BD08);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_100042734(uint64_t a1)
{
  result = [*(a1 + 16) entries];
  if (result)
  {
    v2 = result;
    v3 = [result count];

    sub_10003F6D0(0, v3);
    if (v4)
    {
      v5 = v4;
      v6 = sub_100040688(v4, 0);

      sub_100043E4C(&v9, v6 + 4, v5);
      v8 = v7;

      if (v8 == v5)
      {
        return v6;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void sub_1000427F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100015140(&qword_10007F338, &qword_10005BDB8);
      v7 = *(type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

char *sub_100042998(char *a1, int64_t a2, char a3)
{
  result = sub_100042A98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000429B8(void *a1, int64_t a2, char a3)
{
  result = sub_100042BA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000429D8(char *a1, int64_t a2, char a3)
{
  result = sub_100042DEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000429F8(char *a1, int64_t a2, char a3)
{
  result = sub_100042F08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100042A18(void *a1, int64_t a2, char a3)
{
  result = sub_100043018(a1, a2, a3, *v3, &qword_10007F320, &qword_10005BDA0, &qword_10007F318, &qword_10005BD98);
  *v3 = result;
  return result;
}

void *sub_100042A58(void *a1, int64_t a2, char a3)
{
  result = sub_100043018(a1, a2, a3, *v3, &qword_10007F328, &qword_10005BDA8, &qword_10007F330, &qword_10005BDB0);
  *v3 = result;
  return result;
}

char *sub_100042A98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015140(&qword_10007F340, &qword_10005BDC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100042BA4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100015140(&qword_10007F358, &qword_10005BDD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100015140(&unk_10007F360, &unk_10005BDE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100042CE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015140(&unk_10007F2B0, &qword_10005BCF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100042DEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015140(&qword_10007F348, &unk_10005BDC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_100042F08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015140(&qword_10007E848, &qword_10005BCF0);
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

void *sub_100043018(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100015140(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100015140(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_100043160(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100025E70(0, &qword_10007F280, NTPBNotificationPoolIndexEntry_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100043370(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100043274(0, v2, 1, a1);
  }
}

void sub_100043274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 score];
      v15 = v14;
      [v13 score];
      v17 = v16;

      if (v17 >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100043370(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_100043D34(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_1000439E8((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100043D34(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_100043CA8(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 score];
      v19 = v18;
      [v17 score];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 score];
        v27 = v26;
        [v25 score];
        v29 = v28;

        ++v22;
        ++v14;
        if (v21 < v19 == v29 >= v27)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v21 < v19)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100043D48(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_100043D48((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_1000439E8((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100043D34(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_100043CA8(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 score];
    v48 = v47;
    [v46 score];
    v50 = v49;

    if (v50 >= v48)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1000439E8(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 score];
        v35 = v34;
        [v33 score];
        v37 = v36;

        if (v37 < v35)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 score];
        v19 = v18;
        [v17 score];
        v21 = v20;

        if (v21 >= v19)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_100043CA8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100043D34(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100043D48(char *result, int64_t a2, char a3, char *a4)
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
    sub_100015140(&unk_10007F2B0, &qword_10005BCF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_100043E4C(void *a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0;
    goto LABEL_26;
  }

  v4 = a3;
  if (!a3)
  {
LABEL_26:
    *a1 = v3;
    a1[1] = v4;
    return;
  }

  if (a3 < 0)
  {
LABEL_29:
    __break(1u);
  }

  else
  {
    v5 = a2;
    v24 = a1;
    v6 = 1;
    while (1)
    {
      v7 = [*(v3 + 16) entries];
      if (!v7)
      {
        break;
      }

      v8 = v7;
      v9 = [v7 count];

      if ((v6 - 1) == v9)
      {
        v4 = v6 - 1;
LABEL_25:
        a1 = v24;
        goto LABEL_26;
      }

      v10 = *(v3 + 24);
      if (v10)
      {
        v11 = *(v3 + 16);
        v12 = v10;
        v13 = [v11 entries];
        if (!v13)
        {
          goto LABEL_32;
        }

        v14 = v13;
        v15 = [v13 objectAtIndexedSubscript:v6 - 1];

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100025E70(0, &qword_10007F280, NTPBNotificationPoolIndexEntry_ptr);
        if (swift_dynamicCast())
        {
          v16 = v25;
          v17 = objc_autoreleasePoolPush();
          sub_10003F3B0(v16, v12, &v25, v26);
          objc_autoreleasePoolPop(v17);

          v18 = v26[0];
          v19 = v26[1];
        }

        else
        {
          if (qword_10007E000 != -1)
          {
            swift_once();
          }

          v19 = qword_1000817D8;
          v18 = qword_1000817D0;
        }
      }

      else
      {
        if (qword_10007E000 != -1)
        {
          swift_once();
        }

        v19 = qword_1000817D8;
        v18 = qword_1000817D0;
      }

      v20 = [*(v3 + 16) entries];
      if (!v20)
      {
        goto LABEL_31;
      }

      v21 = v20;
      v22 = [v20 count];

      if (v6 - 1 >= v22)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      *v5 = v18;
      v5[1] = v19;
      if (v4 == v6)
      {
        goto LABEL_25;
      }

      v5 += 2;
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_10004417C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

id sub_1000441E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a3;
  ObjectType = swift_getObjectType();
  v25 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v27 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR___NDScoredNotificationPool__index] = 0;
  *&v4[OBJC_IVAR___NDScoredNotificationPool_context] = a1;
  *&v4[OBJC_IVAR___NDScoredNotificationPool_contentVariantProvider] = a2;
  v17 = OBJC_IVAR___NDScoredNotificationPool_cacheDirectory;
  v24 = type metadata accessor for URL();
  v18 = *(v24 - 8);
  (*(v18 + 16))(&v4[v17], a3, v24);
  v19 = sub_100025E70(0, &qword_10007F260, OS_dispatch_queue_ptr);
  v23[0] = "Handle";
  v23[1] = v19;
  (*(v13 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v12);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v30 = &_swiftEmptyArrayStorage;
  sub_100044B88(&qword_10007F268, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100015140(&qword_10007F270, &qword_10005BC58);
  sub_100044574(&qword_10007F278, &qword_10007F270, &qword_10005BC58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v4[OBJC_IVAR___NDScoredNotificationPool_accessQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = [objc_allocWithZone(FCAsyncSerialQueue) initWithQualityOfService:17];
  *&v4[OBJC_IVAR___NDScoredNotificationPool_refreshSerialQueue] = v20;
  v29.receiver = v4;
  v29.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v29, "init");
  (*(v18 + 8))(v26, v24);
  return v21;
}

uint64_t sub_100044574(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100032974(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000445BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000153DC(a1, a2);
  }

  return a1;
}

uint64_t sub_1000445D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100023584;

  return sub_10003C6EC(v2, v3, v4);
}

uint64_t sub_100044684(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000446F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100023584;

  return sub_100021D34(a1, v5);
}

uint64_t sub_1000447CC()
{
  v2 = *(type metadata accessor for Date() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100017F58;

  return sub_10003B97C(v4, v0 + v3, v6, v7);
}

uint64_t sub_10004493C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100044954(void *a1)
{
  v3 = *(sub_100015140(&unk_10007F290, &qword_10005A838) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Date() - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for URL() - 8);
  v12 = *(v11 + 80);
  sub_10003D108(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), v1 + v9, *(v1 + v10), v1 + ((v12 + v10 + 8) & ~v12), v1 + ((*(v11 + 64) + v12 + ((v12 + v10 + 8) & ~v12)) & ~v12));
}

uint64_t sub_100044B48(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_100044B88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100044BD0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100017F58;

  return sub_10003ACA4(v2, v3);
}

uint64_t type metadata accessor for DelayedNotificationTimetable()
{
  result = qword_10007F3E0;
  if (!qword_10007F3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100044D6C()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_100044DC4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for URL();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100044F10, 0, 0);
}

uint64_t sub_100044F10()
{
  v107 = v0;
  v1 = v0[14];
  v2 = v0[3];
  static Logger.feedItemPool.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];
  if (v6)
  {
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v106[0] = v12;
    *v11 = 136446210;
    v13 = NDManagedFeedItemPoolOptions.name.getter();
    v15 = sub_100021F24(v13, v14, v106);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "will register for managed feed item dropbox, name=%{public}s", v11, 0xCu);
    sub_10001653C(v12);
  }

  v16 = *(v9 + 8);
  v16(v7, v8);
  v17 = v0[9];
  v18 = v0[3];
  v19 = v0[4];
  v20 = NDManagedFeedItemPoolOptions.name.getter();
  sub_100046940(v20, v21, v17);
  v22 = v0[9];

  v23 = URL.checkResourceIsReachable()();
  v24 = v0[9];
  v25 = v0[5];
  v26 = v0[6];
  if (v27)
  {
    v28 = v0[4];
    (*(v26 + 8))(v24, v25);
    v29 = *(v28 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
    *(swift_task_alloc() + 16) = v28;
    os_unfair_lock_lock((v29 + 24));
    sub_100050C18((v29 + 16));
    os_unfair_lock_unlock((v29 + 24));
LABEL_8:

    v49 = v0[12];
    v50 = v0[3];
    static Logger.feedItemPool.getter();
    v51 = v50;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    v54 = os_log_type_enabled(v52, v53);
    v56 = v0[11];
    v55 = v0[12];
    v57 = v0[10];
    if (v54)
    {
      v102 = v0[12];
      v58 = v0[3];
      v105 = v16;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v106[0] = v60;
      *v59 = 136446210;
      v61 = NDManagedFeedItemPoolOptions.name.getter();
      v63 = sub_100021F24(v61, v62, v106);

      *(v59 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v52, v53, "failed to register for managed feed item dropbox, name=%{public}s", v59, 0xCu);
      sub_10001653C(v60);

      v105(v102, v57);
    }

    else
    {

      v16(v55, v57);
    }

    v65 = v0[13];
    v64 = v0[14];
    v66 = v0[12];
    v68 = v0[8];
    v67 = v0[9];
    v69 = v0[7];
    swift_willThrow();

    v70 = v0[1];
    goto LABEL_12;
  }

  v30 = *(v26 + 8);
  v30(v24, v25);
  if (!v23)
  {
    v35 = v0[4];
    sub_1000505FC();
    swift_allocError();
    *v36 = 2;
    *(v36 + 8) = 1;
    swift_willThrow();
    v37 = *(v35 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
    *(swift_task_alloc() + 16) = v35;
    os_unfair_lock_lock((v37 + 24));
    sub_100050C18((v37 + 16));
    os_unfair_lock_unlock((v37 + 24));
    goto LABEL_8;
  }

  v31 = v0[3];
  v32 = type metadata accessor for JSONEncoder();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v31;
  type metadata accessor for NDManagedFeedItemPoolOptions();
  sub_100050B1C(&qword_10007F510, &type metadata accessor for NDManagedFeedItemPoolOptions);
  v38 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v40 = v39;
  v104 = v16;
  v41 = v0[7];
  v42 = v0[3];
  v43 = v0[4];

  v44 = NDManagedFeedItemPoolOptions.name.getter();
  sub_100046940(v44, v45, v41);
  v46 = v0[7];
  v47 = v0[8];
  v48 = v0[5];

  URL.appendingPathComponent(_:)();
  v30(v46, v48);
  Data.write(to:options:)();
  v72 = v0[13];
  v73 = v0[3];
  static Logger.feedItemPool.getter();
  v74 = v73;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();

  v77 = os_log_type_enabled(v75, v76);
  v78 = v0[13];
  v101 = v0[11];
  v103 = v0[10];
  v79 = v0[8];
  v80 = v0[5];
  if (v77)
  {
    log = v75;
    v81 = v0[3];
    v100 = v0[8];
    v82 = swift_slowAlloc();
    v99 = v80;
    v83 = swift_slowAlloc();
    v106[0] = v83;
    *v82 = 136446210;
    v84 = NDManagedFeedItemPoolOptions.name.getter();
    v97 = v78;
    v86 = sub_100021F24(v84, v85, v106);

    *(v82 + 4) = v86;
    _os_log_impl(&_mh_execute_header, log, v76, "did register for managed feed item dropbox, name=%{public}s", v82, 0xCu);
    sub_10001653C(v83);

    sub_1000153DC(v38, v40);

    v104(v97, v103);
    v88 = v99;
    v87 = v100;
  }

  else
  {
    sub_1000153DC(v38, v40);

    v104(v78, v103);
    v87 = v79;
    v88 = v80;
  }

  v30(v87, v88);
  v89 = v0[4];
  v90 = *(v89 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
  *(swift_task_alloc() + 16) = v89;
  os_unfair_lock_lock((v90 + 24));
  sub_100050C18((v90 + 16));
  os_unfair_lock_unlock((v90 + 24));
  v92 = v0[13];
  v91 = v0[14];
  v93 = v0[12];
  v95 = v0[8];
  v94 = v0[9];
  v96 = v0[7];

  v70 = v0[1];
LABEL_12:

  return v70();
}

uint64_t sub_1000457BC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for NDFeedItemPool.UnderlyingType();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v12 = type metadata accessor for DropboxFeedItemPool();
  v2[17] = v12;
  v13 = *(v12 - 8);
  v2[18] = v13;
  v14 = *(v13 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v2[22] = v15;
  v16 = *(v15 - 8);
  v2[23] = v16;
  v17 = *(v16 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100045A4C, 0, 0);
}

uint64_t sub_100045A4C()
{
  v190 = v0;
  v1 = v0[27];
  v2 = v0[3];
  static Logger.feedItemPool.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[27];
  v8 = v0[22];
  v9 = v0[23];
  if (v6)
  {
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v189[0] = v12;
    *v11 = 136446210;
    v13 = NDFeedItemPoolFetchOptions.name.getter();
    v15 = sub_100021F24(v13, v14, v189);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "will fetch feed item dropbox, name=%{public}s", v11, 0xCu);
    sub_10001653C(v12);
  }

  v16 = *(v9 + 8);
  v16(v7, v8);
  v17 = v0[15];
  v18 = v0[3];
  v19 = v0[4];
  v20 = NDFeedItemPoolFetchOptions.name.getter();
  sub_100046940(v20, v21, v17);
  v186 = v16;
  v23 = v0[15];
  v22 = v0[16];
  v24 = v0[12];
  v25 = v0[13];
  v26 = v0[11];
  v28 = v0[3];
  v27 = v0[4];

  URL.appendingPathComponent(_:)();
  v29 = v26;
  v30 = *(v24 + 8);
  v30(v23, v29);
  v31 = NDFeedItemPoolFetchOptions.name.getter();
  sub_100046940(v31, v32, v25);
  v33 = v0[13];
  v34 = v0[14];
  v35 = v0[11];

  URL.appendingPathComponent(_:)();
  v30(v33, v35);
  v36 = Data.init(contentsOf:options:)();
  v38 = v37;
  v39 = v30;
  v40 = type metadata accessor for JSONDecoder();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for NDManagedFeedItemPoolOptions();
  sub_100050B1C(&qword_10007F490, &type metadata accessor for NDManagedFeedItemPoolOptions);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v43 = v0[21];
  v44 = v0[16];
  v39(v0[14], v0[11]);

  sub_1000153DC(v36, v38);
  v45 = v0[2];
  NDManagedFeedItemPoolOptions.configurationSet.getter();

  DropboxFeedItemPool.init(fileURL:configurationSet:)();
  v46 = v0[21];
  v47 = v0[18];
  v49 = v0[9];
  v48 = v0[10];
  v50 = v0[8];
  v51 = v0[3];
  DropboxFeedItemPool.refreshDate.getter();
  Date.timeIntervalSinceNow.getter();
  v53 = v52;
  v54 = *(v49 + 8);
  v54(v48, v50);
  v55 = fabs(v53);
  NDFeedItemPoolFetchOptions.maxAge.getter();
  v56 = (v47 + 16);
  v57 = v0[21];
  v58 = v0[17];
  v59 = v0[3];
  if (v55 <= v60)
  {
    v174 = v54;
    v85 = v0[26];
    v86 = v0[20];
    static Logger.feedItemPool.getter();
    v182 = *v56;
    (*v56)(v86, v57, v58);
    v87 = v59;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();

    v90 = os_log_type_enabled(v88, v89);
    v91 = v0[26];
    v92 = v0[22];
    v93 = v0[23];
    v94 = v0[20];
    v95 = v0[18];
    v178 = v0[17];
    if (v90)
    {
      v168 = v0[26];
      v171 = v0[22];
      v96 = v0[10];
      v164 = v88;
      v97 = v0[8];
      v98 = v0[3];
      v99 = swift_slowAlloc();
      v189[0] = swift_slowAlloc();
      *v99 = 136446466;
      v100 = NDFeedItemPoolFetchOptions.name.getter();
      v162 = v89;
      v102 = sub_100021F24(v100, v101, v189);

      *(v99 + 4) = v102;
      *(v99 + 12) = 2082;
      DropboxFeedItemPool.refreshDate.getter();
      sub_100050B1C(&qword_10007E300, &type metadata accessor for Date);
      v103 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v104;
      v174(v96, v97);
      v106 = *(v95 + 8);
      v106(v94, v178);
      v107 = v106;
      v108 = sub_100021F24(v103, v105, v189);

      *(v99 + 14) = v108;
      _os_log_impl(&_mh_execute_header, v164, v162, "did fetch feed item dropbox, name=%{public}s, refreshDate=%{public}s", v99, 0x16u);
      swift_arrayDestroy();

      v109 = v168;
      v110 = v171;
    }

    else
    {

      v142 = *(v95 + 8);
      v142(v94, v178);
      v107 = v142;
      v109 = v91;
      v110 = v92;
    }

    v186(v109, v110);
    v143 = v0[21];
    v144 = v0[17];
    v146 = v0[6];
    v145 = v0[7];
    v148 = v0[4];
    v147 = v0[5];
    v182(v145, v143, v144);
    (*(v146 + 104))(v145, enum case for NDFeedItemPool.UnderlyingType.dropbox(_:), v147);
    v149 = objc_allocWithZone(type metadata accessor for NDFeedItemPool());
    v150 = NDFeedItemPool.init(_:)();
    v107(v143, v144);
    v151 = *(v148 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
    *(swift_task_alloc() + 16) = v148;
    v152 = (v151 + 24);
    os_unfair_lock_lock((v151 + 24));
    sub_100050C18((v151 + 16));
    v188 = v150;
    v154 = v0[26];
    v153 = v0[27];
    v156 = v0[24];
    v155 = v0[25];
    v158 = v0[20];
    v157 = v0[21];
    v159 = v0[19];
    loga = v0[16];
    v170 = v0[15];
    v173 = v0[14];
    v176 = v0[13];
    v180 = v0[10];
    v185 = v0[7];
    os_unfair_lock_unlock(v152);

    v160 = v0[1];

    return v160(v188);
  }

  else
  {
    v61 = v0[25];
    v62 = v0[19];
    static Logger.feedItemPool.getter();
    (*v56)(v62, v57, v58);
    v63 = v59;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    v66 = os_log_type_enabled(v64, v65);
    v67 = v0[25];
    v68 = v0[22];
    v69 = v0[23];
    v71 = v0[18];
    v70 = v0[19];
    v181 = v0[17];
    if (v66)
    {
      v177 = v0[22];
      v72 = v0[10];
      log = v64;
      v161 = v0[8];
      v163 = v0[3];
      v73 = swift_slowAlloc();
      v189[0] = swift_slowAlloc();
      *v73 = 136446722;
      v74 = NDFeedItemPoolFetchOptions.name.getter();
      v165 = v65;
      v76 = sub_100021F24(v74, v75, v189);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2082;
      DropboxFeedItemPool.refreshDate.getter();
      sub_100050B1C(&qword_10007E300, &type metadata accessor for Date);
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      v54(v72, v161);
      v80 = *(v71 + 8);
      v80(v70, v181);
      v81 = sub_100021F24(v77, v79, v189);

      *(v73 + 14) = v81;
      *(v73 + 22) = 2050;
      NDFeedItemPoolFetchOptions.maxAge.getter();
      *(v73 + 24) = v82;
      _os_log_impl(&_mh_execute_header, log, v165, "feed item dropbox is stale, name=%{public}s, refreshDate=%{public}s, maxAge=%{public}f", v73, 0x20u);
      swift_arrayDestroy();

      v83 = v67;
      v84 = v177;
    }

    else
    {

      v80 = *(v71 + 8);
      v80(v70, v181);
      v83 = v67;
      v84 = v68;
    }

    v186(v83, v84);
    v111 = v0[21];
    v112 = v0[17];
    v113 = v0[4];
    sub_1000505FC();
    swift_allocError();
    *v114 = v55;
    *(v114 + 8) = 0;
    swift_willThrow();
    v80(v111, v112);
    v115 = *(v113 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
    *(swift_task_alloc() + 16) = v113;
    os_unfair_lock_lock((v115 + 24));
    sub_100050C18((v115 + 16));
    os_unfair_lock_unlock((v115 + 24));

    v116 = v0[24];
    v117 = v0[3];
    static Logger.feedItemPool.getter();
    v118 = v117;
    swift_errorRetain();
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();

    v121 = os_log_type_enabled(v119, v120);
    v123 = v0[23];
    v122 = v0[24];
    v124 = v0[22];
    if (v121)
    {
      v183 = v0[24];
      v125 = v0[3];
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v189[0] = v128;
      *v126 = 136446466;
      v129 = NDFeedItemPoolFetchOptions.name.getter();
      v131 = sub_100021F24(v129, v130, v189);

      *(v126 + 4) = v131;
      *(v126 + 12) = 2114;
      swift_errorRetain();
      v132 = _swift_stdlib_bridgeErrorToNSError();
      *(v126 + 14) = v132;
      *v127 = v132;
      _os_log_impl(&_mh_execute_header, v119, v120, "failed to fetch feed item dropbox, name=%{public}s, error=%{public}@", v126, 0x16u);
      sub_100022E54(v127, &qword_10007E768, &qword_10005BCE0);

      sub_10001653C(v128);

      v186(v183, v124);
    }

    else
    {

      v186(v122, v124);
    }

    v134 = v0[26];
    v133 = v0[27];
    v136 = v0[24];
    v135 = v0[25];
    v138 = v0[20];
    v137 = v0[21];
    v139 = v0[19];
    v169 = v0[16];
    v172 = v0[15];
    v175 = v0[14];
    v179 = v0[13];
    v184 = v0[10];
    v187 = v0[7];
    swift_willThrow();

    v140 = v0[1];

    return v140();
  }
}

id sub_100046940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v25 = a3;
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v27 = *(v10 - 8);
  v28 = v10;
  v11 = *(v27 + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015140(&qword_10007F340, &qword_10005BDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10005A9A0;
  v15 = *(v3 + OBJC_IVAR___NDFeedItemPoolManager_rootDirectoryName + 8);
  *(v14 + 32) = *(v3 + OBJC_IVAR___NDFeedItemPoolManager_rootDirectoryName);
  *(v14 + 40) = v15;
  *(v14 + 48) = v26;
  *(v14 + 56) = a2;
  (*(v6 + 104))(v9, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  sub_100050AC8();

  URL.appending<A>(components:directoryHint:)();

  (*(v6 + 8))(v9, v5);
  v16 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v29 = 0;
  v20 = [v16 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v29];

  v21 = v29;
  if (v20)
  {
    (*(v27 + 32))(v25, v13, v28);
    return v21;
  }

  else
  {
    v23 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v27 + 8))(v13, v28);
  }
}

uint64_t sub_100046C48(uint64_t *a1, char *a2)
{
  v5 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  if (*a1)
  {
    static Logger.feedItemPool.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "already kicked off a rebuild for all feed item dropboxes", v19, 2u);
    }

    return (*(v10 + 8))(v14, v9);
  }

  else
  {
    v35 = a1;
    v36 = v2;
    v21 = objc_allocWithZone(NDAssertion);
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 initWithName:v22];

    static Logger.feedItemPool.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "will rebuild all feed item dropboxes", v26, 2u);
    }

    (*(v10 + 8))(v16, v9);
    v27 = OBJC_IVAR___NDFeedItemPoolManager_refreshPriority;
    v28 = type metadata accessor for TaskPriority();
    v29 = *(v28 - 8);
    (*(v29 + 16))(v8, &a2[v27], v28);
    (*(v29 + 56))(v8, 0, 1, v28);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = a2;
    v30[5] = v23;
    v31 = a2;
    v32 = v23;
    v33 = sub_10004A9D0(0, 0, v8, &unk_10005BE68, v30);

    result = sub_100022E54(v8, &unk_10007EB50, &qword_10005AB40);
    *v35 = v33;
  }

  return result;
}

uint64_t sub_100046FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[7] = v8;
  *v8 = v4;
  v8[1] = sub_1000470F4;

  return sub_100047500();
}

uint64_t sub_1000470F4()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10004733C;
  }

  else
  {
    v3 = sub_100047208;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100047208()
{
  v1 = v0[6];
  static Logger.feedItemPool.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "did rebuild all feed item dropboxes", v4, 2u);
  }

  v5 = v0[5];
  v6 = v0[2];
  (*(v0[4] + 8))(v0[6], v0[3]);
  v7 = *(v6 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);

  *(v7 + 16) = 0;
  os_unfair_lock_unlock((v7 + 24));

  v9 = v0[1];

  return v9();
}

uint64_t sub_10004733C()
{
  v1 = v0[8];
  v2 = v0[5];
  static Logger.feedItemPool.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "failed to rebuild all feed item dropboxes, error=%{public}@", v7, 0xCu);
    sub_100022E54(v8, &qword_10007E768, &qword_10005BCE0);
  }

  else
  {
    v10 = v0[8];
  }

  v11 = v0[6];
  v12 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);
  v13 = *(v12 + OBJC_IVAR___NDFeedItemPoolManager_activeRefreshTask);
  os_unfair_lock_lock((v13 + 24));
  v14 = *(v13 + 16);

  *(v13 + 16) = 0;
  os_unfair_lock_unlock((v13 + 24));

  v15 = v0[1];

  return v15();
}

uint64_t sub_100047500()
{
  v1[38] = v0;
  v2 = type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource();
  v1[39] = v2;
  v3 = *(v2 - 8);
  v1[40] = v3;
  v4 = *(v3 + 64) + 15;
  v1[41] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[42] = v5;
  v6 = *(v5 - 8);
  v1[43] = v6;
  v7 = *(v6 + 64) + 15;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v1[48] = v8;
  v9 = *(v8 - 8);
  v1[49] = v9;
  v10 = *(v9 + 64) + 15;
  v1[50] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v1[51] = v11;
  v12 = *(v11 - 8);
  v1[52] = v12;
  v13 = *(v12 + 64) + 15;
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v14 = type metadata accessor for DropboxFeedItemPool();
  v1[57] = v14;
  v15 = *(v14 - 8);
  v1[58] = v15;
  v16 = *(v15 + 64) + 15;
  v1[59] = swift_task_alloc();

  return _swift_task_switch(sub_100047778, 0, 0);
}

uint64_t sub_100047778()
{
  v1 = v0[38];
  v0[60] = sub_10004AC3C();
  v2 = v0[38];
  v0[61] = type metadata accessor for ProxyScoringServiceConnection();
  v3 = static ProxyScoringServiceConnection.shared.getter();
  ProxyScoringServiceConnection.pushInterest()();

  v4 = *sub_100002288((v2 + OBJC_IVAR___NDFeedItemPoolManager_userContextProvider), *(v2 + OBJC_IVAR___NDFeedItemPoolManager_userContextProvider + 24));
  sub_10002358C(v0 + 2);
  v0[34] = _swiftEmptyArrayStorage;
  v0[35] = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR___NDFeedItemPoolManager_myArticlesInventory;
  v0[62] = OBJC_IVAR___NDFeedItemPoolManager_myArticlesInventory;
  v6 = swift_task_alloc();
  v0[63] = v6;
  *v6 = v0;
  v6[1] = sub_10004795C;

  return sub_10004B0A4(v2 + v5, (v0 + 35), (v0 + 34));
}

uint64_t sub_10004795C()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v7 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = v2[60];
    v2[10] = v2[2];
    sub_100022E54((v2 + 10), &qword_10007F4A0, &qword_10005BE80);
    v2[36] = v2[3];
    sub_100022E54((v2 + 36), &qword_10007F4A0, &qword_10005BE80);
    v2[33] = v2[4];
    sub_100022E54((v2 + 33), &qword_10007F4A0, &qword_10005BE80);
    v2[37] = v2[5];
    sub_100022E54((v2 + 37), &qword_10007F4A0, &qword_10005BE80);
    v2[12] = v2[6];
    sub_100022E54((v2 + 12), &qword_10007F4A8, &qword_10005BE88);

    v5 = sub_100049580;
  }

  else
  {
    v5 = sub_100047B14;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100047B14()
{
  v1 = v0[64];
  v2 = (v0[38] + v0[62]);
  v3 = v2[4];
  sub_100002288(v2, v2[3]);
  FeedItemInventoryType.validateHasScoredItems()();
  if (v4)
  {
    v5 = v0[60];
    v6 = v0[61];

    v7 = v0[35];

    v8 = v0[34];

    v0[13] = v0[2];
    sub_100022E54((v0 + 13), &qword_10007F4A0, &qword_10005BE80);
    v0[14] = v0[3];
    sub_100022E54((v0 + 14), &qword_10007F4A0, &qword_10005BE80);
    v0[15] = v0[4];
    sub_100022E54((v0 + 15), &qword_10007F4A0, &qword_10005BE80);
    v0[16] = v0[5];
    sub_100022E54((v0 + 16), &qword_10007F4A0, &qword_10005BE80);
    v0[17] = v0[6];
    sub_100022E54((v0 + 17), &qword_10007F4A8, &qword_10005BE88);
    v9 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v10 = v0[59];
    v11 = v0[55];
    v12 = v0[56];
    v14 = v0[53];
    v13 = v0[54];
    v15 = v0[50];
    v17 = v0[46];
    v16 = v0[47];
    v18 = v0[44];
    v19 = v0[45];
    v25 = v0[41];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[38];
    v23 = OBJC_IVAR___NDFeedItemPoolManager_globalESLInventory;
    v24 = swift_task_alloc();
    v0[65] = v24;
    *v24 = v0;
    v24[1] = sub_100047D84;

    return sub_10004BCD0(v22 + v23, (v0 + 35), (v0 + 34));
  }
}

uint64_t sub_100047D84()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = *(v2 + 304);
  v6 = OBJC_IVAR___NDFeedItemPoolManager_perTagESLInventory;
  v7 = swift_task_alloc();
  *(v2 + 528) = v7;
  *v7 = v4;
  v7[1] = sub_100047ED8;

  return sub_10004C80C(v5 + v6, v2 + 280, v2 + 272);
}

uint64_t sub_100047ED8()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = *(v2 + 304);
  v6 = OBJC_IVAR___NDFeedItemPoolManager_peopleAlsoReadInventory;
  v7 = swift_task_alloc();
  *(v2 + 536) = v7;
  *v7 = v4;
  v7[1] = sub_10004802C;

  return sub_10004D1E8(v5 + v6, v2 + 280, v2 + 272);
}

uint64_t sub_10004802C()
{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {

    v3 = sub_100049698;
  }

  else
  {
    v3 = sub_100048148;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100048148()
{
  v102 = v0;
  v1 = v0[68];
  swift_beginAccess();
  v2 = v0[35];
  v0[69] = v2;
  if (!*(v2 + 16))
  {
    v47 = v0[60];
    v48 = v0[61];

    v0[28] = v0[2];
    sub_100022E54((v0 + 28), &qword_10007F4A0, &qword_10005BE80);
    v0[29] = v0[3];
    sub_100022E54((v0 + 29), &qword_10007F4A0, &qword_10005BE80);
    v0[30] = v0[4];
    sub_100022E54((v0 + 30), &qword_10007F4A0, &qword_10005BE80);
    v0[31] = v0[5];
    sub_100022E54((v0 + 31), &qword_10007F4A0, &qword_10005BE80);
    v0[32] = v0[6];
    sub_100022E54((v0 + 32), &qword_10007F4A8, &qword_10005BE88);
    sub_1000505FC();
    swift_allocError();
    *v49 = 1;
    *(v49 + 8) = 1;
    swift_willThrow();

    v50 = v0[34];

    v51 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v52 = v0[59];
    v54 = v0[55];
    v53 = v0[56];
    v56 = v0[53];
    v55 = v0[54];
    v57 = v0[50];
    v59 = v0[46];
    v58 = v0[47];
    v60 = v0[44];
    v61 = v0[45];
    v97 = v0[41];

    v62 = v0[1];
LABEL_13:

    return v62();
  }

  v3 = *(v0[60] + 16);
  v0[70] = v3;
  if (!v3)
  {

    v0[23] = v0[2];
    sub_100022E54((v0 + 23), &qword_10007F4A0, &qword_10005BE80);
    v0[24] = v0[3];
    sub_100022E54((v0 + 24), &qword_10007F4A0, &qword_10005BE80);
    v0[25] = v0[4];
    sub_100022E54((v0 + 25), &qword_10007F4A0, &qword_10005BE80);
    v0[26] = v0[5];
    sub_100022E54((v0 + 26), &qword_10007F4A0, &qword_10005BE80);
    v0[27] = v0[6];
    sub_100022E54((v0 + 27), &qword_10007F4A8, &qword_10005BE88);
LABEL_12:

    v63 = v0[61];
    v64 = v0[59];
    v66 = v0[55];
    v65 = v0[56];
    v68 = v0[53];
    v67 = v0[54];
    v69 = v0[50];
    v70 = v0[46];
    v71 = v0[47];
    v96 = v0[45];
    v98 = v0[44];
    v100 = v0[41];
    v72 = v0[34];

    v73 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v62 = v0[1];
    goto LABEL_13;
  }

  v4 = 0;
  while (1)
  {
    v0[71] = v4;
    v5 = v0[55];
    v6 = v0[38];
    v7 = v0[60] + 16 * v4;
    v8 = *(v7 + 32);
    v0[72] = v8;
    v9 = *(v7 + 40);
    v0[73] = v9;

    sub_100046940(v8, v9, v5);
    v99 = v8;
    if (v1)
    {
      break;
    }

    v11 = v0[55];
    v10 = v0[56];
    v12 = v0[52];
    v13 = v0[53];
    v14 = v0[51];
    v15 = v0[38];
    URL.appendingPathComponent(_:)();
    v16 = *(v12 + 8);
    v16(v11, v14);
    sub_100046940(v8, v9, v13);
    v17 = v0[53];
    v18 = v0[54];
    v19 = v0[51];
    URL.appendingPathComponent(_:)();
    v16(v17, v19);
    v20 = Data.init(contentsOf:options:)();
    v22 = v21;
    v23 = type metadata accessor for JSONDecoder();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for NDManagedFeedItemPoolOptions();
    sub_100050B1C(&qword_10007F490, &type metadata accessor for NDManagedFeedItemPoolOptions);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v26 = v0[59];
    v27 = v0[56];
    v16(v0[54], v0[51]);

    sub_1000153DC(v20, v22);
    v28 = v0[11];
    NDManagedFeedItemPoolOptions.configurationSet.getter();

    DropboxFeedItemPool.init(fileURL:configurationSet:)();
    v30 = v0[58];
    v29 = v0[59];
    v31 = v0[57];
    v32 = v0[49];
    v33 = v0[50];
    v34 = v0[48];
    DropboxFeedItemPool.refreshDate.getter();
    Date.timeIntervalSinceNow.getter();
    v36 = v35;
    (*(v32 + 8))(v33, v34);
    (*(v30 + 8))(v29, v31);
    if (fabs(v36) > 300.0)
    {
      goto LABEL_17;
    }

    v37 = v0[45];
    static Logger.feedItemPool.getter();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[45];
    v43 = v0[42];
    v42 = v0[43];
    if (v40)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v101[0] = v45;
      *v44 = 136446210;
      v46 = sub_100021F24(v99, v9, v101);

      *(v44 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v38, v39, "no need to rebuild feed item dropbox, name=%{public}s", v44, 0xCu);
      sub_10001653C(v45);
    }

    else
    {
    }

    (*(v42 + 8))(v41, v43);
    v1 = 0;
    v4 = v0[71] + 1;
    if (v4 == v0[70])
    {
      v94 = v0[69];
      v95 = v0[60];

      v0[18] = v0[2];
      sub_100022E54((v0 + 18), &qword_10007F4A0, &qword_10005BE80);
      v0[19] = v0[3];
      sub_100022E54((v0 + 19), &qword_10007F4A0, &qword_10005BE80);
      v0[20] = v0[4];
      sub_100022E54((v0 + 20), &qword_10007F4A0, &qword_10005BE80);
      v0[21] = v0[5];
      sub_100022E54((v0 + 21), &qword_10007F4A0, &qword_10005BE80);
      v0[22] = v0[6];
      sub_100022E54((v0 + 22), &qword_10007F4A8, &qword_10005BE88);
      goto LABEL_12;
    }
  }

LABEL_17:
  v75 = v0[47];
  static Logger.feedItemPool.getter();

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();

  v78 = os_log_type_enabled(v76, v77);
  v79 = v0[47];
  v81 = v0[42];
  v80 = v0[43];
  if (v78)
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v101[0] = v83;
    *v82 = 136446210;
    *(v82 + 4) = sub_100021F24(v99, v9, v101);
    _os_log_impl(&_mh_execute_header, v76, v77, "will rebuild feed item dropbox, name=%{public}s", v82, 0xCu);
    sub_10001653C(v83);
  }

  v84 = *(v80 + 8);
  result = v84(v79, v81);
  v0[74] = v84;
  v85 = v0[69];
  v86 = *(v85 + 16);
  if (v86)
  {
    v87 = v0[40];
    v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    (*(v87 + 16))(v0[41], v85 + v88, v0[39]);
    sub_1000427F8(v85, v85 + v88, 1, (2 * v86) | 1);
    v90 = v89;
    v0[75] = v89;
    v91 = swift_task_alloc();
    v0[76] = v91;
    *v91 = v0;
    v91[1] = sub_100048B1C;
    v92 = v0[41];
    v93 = v0[38];

    return sub_10004DBC4(v99, v9, v92, v90, (v0 + 2));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100048B1C()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 616) = v0;

  v5 = v2[75];
  (*(v2[40] + 8))(v2[41], v2[39]);

  if (v0)
  {
    v6 = sub_10004A068;
  }

  else
  {
    v6 = sub_100048CA0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100048CA0()
{
  v102 = v0;
  v1 = v0[73];
  v2 = v0[46];
  static Logger.feedItemPool.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[74];
  v7 = v0[73];
  if (v5)
  {
    v8 = v0[72];
    v98 = v0[46];
    v9 = v0[42];
    v96 = v0[43] + 8;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v101[0] = v11;
    *v10 = 136446210;
    v12 = sub_100021F24(v8, v7, v101);

    *(v10 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "did rebuild feed item dropbox, name=%{public}s", v10, 0xCu);
    sub_10001653C(v11);

    v13 = v98;
  }

  else
  {
    v14 = v0[46];
    v9 = v0[42];
    v15 = v0[43];
    v16 = v0[73];

    v13 = v14;
  }

  v6(v13, v9);
  v17 = v0[71] + 1;
  if (v17 == v0[70])
  {
LABEL_5:
    v18 = v0[69];
    v19 = v0[60];

    v0[18] = v0[2];
    sub_100022E54((v0 + 18), &qword_10007F4A0, &qword_10005BE80);
    v0[19] = v0[3];
    sub_100022E54((v0 + 19), &qword_10007F4A0, &qword_10005BE80);
    v0[20] = v0[4];
    sub_100022E54((v0 + 20), &qword_10007F4A0, &qword_10005BE80);
    v0[21] = v0[5];
    sub_100022E54((v0 + 21), &qword_10007F4A0, &qword_10005BE80);
    v0[22] = v0[6];
    sub_100022E54((v0 + 22), &qword_10007F4A8, &qword_10005BE88);

    v20 = v0[61];
    v21 = v0[59];
    v23 = v0[55];
    v22 = v0[56];
    v25 = v0[53];
    v24 = v0[54];
    v26 = v0[50];
    v27 = v0[46];
    v28 = v0[47];
    v95 = v0[45];
    v97 = v0[44];
    v99 = v0[41];
    v29 = v0[34];

    v30 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v31 = v0[1];

    return v31();
  }

  else
  {
    v33 = v0[77];
    while (1)
    {
      v0[71] = v17;
      v37 = v0[55];
      v38 = v0[38];
      v39 = v0[60] + 16 * v17;
      v40 = *(v39 + 32);
      v0[72] = v40;
      v41 = *(v39 + 40);
      v0[73] = v41;

      sub_100046940(v40, v41, v37);
      v100 = v40;
      if (v33)
      {
        break;
      }

      v43 = v0[55];
      v42 = v0[56];
      v44 = v0[52];
      v45 = v0[53];
      v46 = v0[51];
      v47 = v0[38];
      URL.appendingPathComponent(_:)();
      v48 = *(v44 + 8);
      v48(v43, v46);
      sub_100046940(v40, v41, v45);
      v49 = v0[53];
      v50 = v0[54];
      v51 = v0[51];
      URL.appendingPathComponent(_:)();
      v48(v49, v51);
      v52 = Data.init(contentsOf:options:)();
      v54 = v53;
      v55 = type metadata accessor for JSONDecoder();
      v56 = *(v55 + 48);
      v57 = *(v55 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      type metadata accessor for NDManagedFeedItemPoolOptions();
      sub_100050B1C(&qword_10007F490, &type metadata accessor for NDManagedFeedItemPoolOptions);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v58 = v0[59];
      v59 = v0[56];
      v48(v0[54], v0[51]);

      sub_1000153DC(v52, v54);
      v60 = v0[11];
      NDManagedFeedItemPoolOptions.configurationSet.getter();

      DropboxFeedItemPool.init(fileURL:configurationSet:)();
      v62 = v0[58];
      v61 = v0[59];
      v63 = v0[57];
      v64 = v0[49];
      v65 = v0[50];
      v66 = v0[48];
      DropboxFeedItemPool.refreshDate.getter();
      Date.timeIntervalSinceNow.getter();
      v68 = v67;
      (*(v64 + 8))(v65, v66);
      (*(v62 + 8))(v61, v63);
      if (fabs(v68) > 300.0)
      {
        goto LABEL_16;
      }

      v69 = v0[45];
      static Logger.feedItemPool.getter();

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();

      v72 = os_log_type_enabled(v70, v71);
      v73 = v0[45];
      v75 = v0[42];
      v74 = v0[43];
      if (v72)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v101[0] = v35;
        *v34 = 136446210;
        v36 = sub_100021F24(v100, v41, v101);

        *(v34 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v70, v71, "no need to rebuild feed item dropbox, name=%{public}s", v34, 0xCu);
        sub_10001653C(v35);
      }

      else
      {
      }

      (*(v74 + 8))(v73, v75);
      v33 = 0;
      v17 = v0[71] + 1;
      if (v17 == v0[70])
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    v76 = v0[47];
    static Logger.feedItemPool.getter();

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    v79 = os_log_type_enabled(v77, v78);
    v80 = v0[47];
    v82 = v0[42];
    v81 = v0[43];
    if (v79)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v101[0] = v84;
      *v83 = 136446210;
      *(v83 + 4) = sub_100021F24(v100, v41, v101);
      _os_log_impl(&_mh_execute_header, v77, v78, "will rebuild feed item dropbox, name=%{public}s", v83, 0xCu);
      sub_10001653C(v84);
    }

    v85 = *(v81 + 8);
    result = v85(v80, v82);
    v0[74] = v85;
    v86 = v0[69];
    v87 = *(v86 + 16);
    if (v87)
    {
      v88 = v0[40];
      v89 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      (*(v88 + 16))(v0[41], v86 + v89, v0[39]);
      sub_1000427F8(v86, v86 + v89, 1, (2 * v87) | 1);
      v91 = v90;
      v0[75] = v90;
      v92 = swift_task_alloc();
      v0[76] = v92;
      *v92 = v0;
      v92[1] = sub_100048B1C;
      v93 = v0[41];
      v94 = v0[38];

      return sub_10004DBC4(v100, v41, v93, v91, (v0 + 2));
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100049580()
{
  v1 = v0[61];
  v2 = v0[35];

  v3 = v0[34];

  v4 = static ProxyScoringServiceConnection.shared.getter();
  ProxyScoringServiceConnection.popInterest()();

  v5 = v0[59];
  v7 = v0[55];
  v6 = v0[56];
  v9 = v0[53];
  v8 = v0[54];
  v10 = v0[50];
  v12 = v0[46];
  v11 = v0[47];
  v13 = v0[44];
  v14 = v0[45];
  v17 = v0[41];
  v18 = v0[64];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100049698()
{
  v101 = v0;
  swift_beginAccess();
  v1 = v0[35];
  v0[69] = v1;
  if (!*(v1 + 16))
  {
    v46 = v0[60];
    v47 = v0[61];

    v0[28] = v0[2];
    sub_100022E54((v0 + 28), &qword_10007F4A0, &qword_10005BE80);
    v0[29] = v0[3];
    sub_100022E54((v0 + 29), &qword_10007F4A0, &qword_10005BE80);
    v0[30] = v0[4];
    sub_100022E54((v0 + 30), &qword_10007F4A0, &qword_10005BE80);
    v0[31] = v0[5];
    sub_100022E54((v0 + 31), &qword_10007F4A0, &qword_10005BE80);
    v0[32] = v0[6];
    sub_100022E54((v0 + 32), &qword_10007F4A8, &qword_10005BE88);
    sub_1000505FC();
    swift_allocError();
    *v48 = 1;
    *(v48 + 8) = 1;
    swift_willThrow();

    v49 = v0[34];

    v50 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v51 = v0[59];
    v53 = v0[55];
    v52 = v0[56];
    v55 = v0[53];
    v54 = v0[54];
    v56 = v0[50];
    v58 = v0[46];
    v57 = v0[47];
    v59 = v0[44];
    v60 = v0[45];
    v96 = v0[41];

    v61 = v0[1];
LABEL_12:

    return v61();
  }

  v2 = *(v0[60] + 16);
  v0[70] = v2;
  if (!v2)
  {

    v0[23] = v0[2];
    sub_100022E54((v0 + 23), &qword_10007F4A0, &qword_10005BE80);
    v0[24] = v0[3];
    sub_100022E54((v0 + 24), &qword_10007F4A0, &qword_10005BE80);
    v0[25] = v0[4];
    sub_100022E54((v0 + 25), &qword_10007F4A0, &qword_10005BE80);
    v0[26] = v0[5];
    sub_100022E54((v0 + 26), &qword_10007F4A0, &qword_10005BE80);
    v0[27] = v0[6];
    sub_100022E54((v0 + 27), &qword_10007F4A8, &qword_10005BE88);
LABEL_11:

    v62 = v0[61];
    v63 = v0[59];
    v65 = v0[55];
    v64 = v0[56];
    v67 = v0[53];
    v66 = v0[54];
    v68 = v0[50];
    v69 = v0[46];
    v70 = v0[47];
    v95 = v0[45];
    v97 = v0[44];
    v99 = v0[41];
    v71 = v0[34];

    v72 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v61 = v0[1];
    goto LABEL_12;
  }

  v3 = 0;
  while (1)
  {
    v0[71] = v3;
    v4 = v0[55];
    v5 = v0[38];
    v6 = v0[60] + 16 * v3;
    v7 = *(v6 + 32);
    v0[72] = v7;
    v8 = *(v6 + 40);
    v0[73] = v8;

    sub_100046940(v7, v8, v4);
    v98 = v7;
    v10 = v0[55];
    v9 = v0[56];
    v11 = v0[52];
    v12 = v0[53];
    v13 = v0[51];
    v14 = v0[38];
    URL.appendingPathComponent(_:)();
    v15 = *(v11 + 8);
    v15(v10, v13);
    sub_100046940(v7, v8, v12);
    v16 = v0[53];
    v17 = v0[54];
    v18 = v0[51];
    URL.appendingPathComponent(_:)();
    v15(v16, v18);
    v19 = Data.init(contentsOf:options:)();
    v21 = v20;
    v22 = type metadata accessor for JSONDecoder();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for NDManagedFeedItemPoolOptions();
    sub_100050B1C(&qword_10007F490, &type metadata accessor for NDManagedFeedItemPoolOptions);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v25 = v0[59];
    v26 = v0[56];
    v15(v0[54], v0[51]);

    sub_1000153DC(v19, v21);
    v27 = v0[11];
    NDManagedFeedItemPoolOptions.configurationSet.getter();

    DropboxFeedItemPool.init(fileURL:configurationSet:)();
    v29 = v0[58];
    v28 = v0[59];
    v30 = v0[57];
    v31 = v0[49];
    v32 = v0[50];
    v33 = v0[48];
    DropboxFeedItemPool.refreshDate.getter();
    Date.timeIntervalSinceNow.getter();
    v35 = v34;
    (*(v31 + 8))(v32, v33);
    (*(v29 + 8))(v28, v30);
    if (fabs(v35) > 300.0)
    {
      break;
    }

    v36 = v0[45];
    static Logger.feedItemPool.getter();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[45];
    v42 = v0[42];
    v41 = v0[43];
    if (v39)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v100[0] = v44;
      *v43 = 136446210;
      v45 = sub_100021F24(v98, v8, v100);

      *(v43 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "no need to rebuild feed item dropbox, name=%{public}s", v43, 0xCu);
      sub_10001653C(v44);
    }

    else
    {
    }

    (*(v41 + 8))(v40, v42);
    v3 = v0[71] + 1;
    if (v3 == v0[70])
    {
      v93 = v0[69];
      v94 = v0[60];

      v0[18] = v0[2];
      sub_100022E54((v0 + 18), &qword_10007F4A0, &qword_10005BE80);
      v0[19] = v0[3];
      sub_100022E54((v0 + 19), &qword_10007F4A0, &qword_10005BE80);
      v0[20] = v0[4];
      sub_100022E54((v0 + 20), &qword_10007F4A0, &qword_10005BE80);
      v0[21] = v0[5];
      sub_100022E54((v0 + 21), &qword_10007F4A0, &qword_10005BE80);
      v0[22] = v0[6];
      sub_100022E54((v0 + 22), &qword_10007F4A8, &qword_10005BE88);
      goto LABEL_11;
    }
  }

  v74 = v0[47];
  static Logger.feedItemPool.getter();

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();

  v77 = os_log_type_enabled(v75, v76);
  v78 = v0[47];
  v80 = v0[42];
  v79 = v0[43];
  if (v77)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v100[0] = v82;
    *v81 = 136446210;
    *(v81 + 4) = sub_100021F24(v98, v8, v100);
    _os_log_impl(&_mh_execute_header, v75, v76, "will rebuild feed item dropbox, name=%{public}s", v81, 0xCu);
    sub_10001653C(v82);
  }

  v83 = *(v79 + 8);
  result = v83(v78, v80);
  v0[74] = v83;
  v84 = v0[69];
  v85 = *(v84 + 16);
  if (v85)
  {
    v86 = v0[40];
    v87 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    (*(v86 + 16))(v0[41], v84 + v87, v0[39]);
    sub_1000427F8(v84, v84 + v87, 1, (2 * v85) | 1);
    v89 = v88;
    v0[75] = v88;
    v90 = swift_task_alloc();
    v0[76] = v90;
    *v90 = v0;
    v90[1] = sub_100048B1C;
    v91 = v0[41];
    v92 = v0[38];

    return sub_10004DBC4(v98, v8, v91, v89, (v0 + 2));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004A068()
{
  v106 = v0;
  v1 = v0[77];
  v2 = v0[73];
  v3 = v0[44];
  static Logger.feedItemPool.getter();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[77];
  v8 = v0[74];
  v9 = v0[73];
  if (v6)
  {
    v10 = v0[72];
    v102 = v0[44];
    v98 = v0[43] + 8;
    v100 = v0[42];
    v11 = v0[74];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v105[0] = v14;
    *v12 = 136446466;
    v15 = sub_100021F24(v10, v9, v105);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to rebuild feed item dropbox, name=%{public}s, error=%{public}@", v12, 0x16u);
    sub_100022E54(v13, &qword_10007E768, &qword_10005BCE0);

    sub_10001653C(v14);

    v11(v102, v100);
  }

  else
  {
    v18 = v0[43];
    v17 = v0[44];
    v19 = v0[42];
    v20 = v0[73];

    v8(v17, v19);
  }

  v21 = v0[71] + 1;
  if (v21 == v0[70])
  {
LABEL_5:
    v22 = v0[69];
    v23 = v0[60];

    v0[18] = v0[2];
    sub_100022E54((v0 + 18), &qword_10007F4A0, &qword_10005BE80);
    v0[19] = v0[3];
    sub_100022E54((v0 + 19), &qword_10007F4A0, &qword_10005BE80);
    v0[20] = v0[4];
    sub_100022E54((v0 + 20), &qword_10007F4A0, &qword_10005BE80);
    v0[21] = v0[5];
    sub_100022E54((v0 + 21), &qword_10007F4A0, &qword_10005BE80);
    v0[22] = v0[6];
    sub_100022E54((v0 + 22), &qword_10007F4A8, &qword_10005BE88);

    v24 = v0[61];
    v25 = v0[59];
    v27 = v0[55];
    v26 = v0[56];
    v29 = v0[53];
    v28 = v0[54];
    v30 = v0[50];
    v31 = v0[46];
    v32 = v0[47];
    v99 = v0[45];
    v101 = v0[44];
    v103 = v0[41];
    v33 = v0[34];

    v34 = static ProxyScoringServiceConnection.shared.getter();
    ProxyScoringServiceConnection.popInterest()();

    v35 = v0[1];

    return v35();
  }

  else
  {
    while (1)
    {
      v0[71] = v21;
      v40 = v0[55];
      v41 = v0[38];
      v42 = v0[60] + 16 * v21;
      v43 = *(v42 + 32);
      v0[72] = v43;
      v44 = *(v42 + 40);
      v0[73] = v44;

      sub_100046940(v43, v44, v40);
      v104 = v43;
      v46 = v0[55];
      v45 = v0[56];
      v47 = v0[52];
      v48 = v0[53];
      v49 = v0[51];
      v50 = v0[38];
      URL.appendingPathComponent(_:)();
      v51 = *(v47 + 8);
      v51(v46, v49);
      sub_100046940(v43, v44, v48);
      v52 = v0[53];
      v53 = v0[54];
      v54 = v0[51];
      URL.appendingPathComponent(_:)();
      v51(v52, v54);
      v55 = Data.init(contentsOf:options:)();
      v57 = v56;
      v58 = type metadata accessor for JSONDecoder();
      v59 = *(v58 + 48);
      v60 = *(v58 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      type metadata accessor for NDManagedFeedItemPoolOptions();
      sub_100050B1C(&qword_10007F490, &type metadata accessor for NDManagedFeedItemPoolOptions);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v61 = v0[59];
      v62 = v0[56];
      v51(v0[54], v0[51]);

      sub_1000153DC(v55, v57);
      v63 = v0[11];
      NDManagedFeedItemPoolOptions.configurationSet.getter();

      DropboxFeedItemPool.init(fileURL:configurationSet:)();
      v65 = v0[58];
      v64 = v0[59];
      v66 = v0[57];
      v67 = v0[49];
      v68 = v0[50];
      v69 = v0[48];
      DropboxFeedItemPool.refreshDate.getter();
      Date.timeIntervalSinceNow.getter();
      v71 = v70;
      (*(v67 + 8))(v68, v69);
      (*(v65 + 8))(v64, v66);
      if (fabs(v71) > 300.0)
      {
        break;
      }

      v72 = v0[45];
      static Logger.feedItemPool.getter();

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();

      v75 = os_log_type_enabled(v73, v74);
      v76 = v0[45];
      v78 = v0[42];
      v77 = v0[43];
      if (v75)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v105[0] = v38;
        *v37 = 136446210;
        v39 = sub_100021F24(v104, v44, v105);

        *(v37 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v73, v74, "no need to rebuild feed item dropbox, name=%{public}s", v37, 0xCu);
        sub_10001653C(v38);
      }

      else
      {
      }

      (*(v77 + 8))(v76, v78);
      v21 = v0[71] + 1;
      if (v21 == v0[70])
      {
        goto LABEL_5;
      }
    }

    v79 = v0[47];
    static Logger.feedItemPool.getter();

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    v82 = os_log_type_enabled(v80, v81);
    v83 = v0[47];
    v85 = v0[42];
    v84 = v0[43];
    if (v82)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v105[0] = v87;
      *v86 = 136446210;
      *(v86 + 4) = sub_100021F24(v104, v44, v105);
      _os_log_impl(&_mh_execute_header, v80, v81, "will rebuild feed item dropbox, name=%{public}s", v86, 0xCu);
      sub_10001653C(v87);
    }

    v88 = *(v84 + 8);
    result = v88(v83, v85);
    v0[74] = v88;
    v89 = v0[69];
    v90 = *(v89 + 16);
    if (v90)
    {
      v91 = v0[40];
      v92 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      (*(v91 + 16))(v0[41], v89 + v92, v0[39]);
      sub_1000427F8(v89, v89 + v92, 1, (2 * v90) | 1);
      v94 = v93;
      v0[75] = v93;
      v95 = swift_task_alloc();
      v0[76] = v95;
      *v95 = v0;
      v95[1] = sub_100048B1C;
      v96 = v0[41];
      v97 = v0[38];

      return sub_10004DBC4(v104, v44, v96, v94, (v0 + 2));
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10004A9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100022DA4(a3, v24 - v10, &unk_10007EB50, &qword_10005AB40);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100022E54(v11, &unk_10007EB50, &qword_10005AB40);
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

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void *sub_10004AC3C()
{
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for URL();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v45);
  v44 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v38 - v10;
  sub_100015140(&qword_10007F340, &qword_10005BDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10005A4F0;
  v13 = *(v0 + OBJC_IVAR___NDFeedItemPoolManager_rootDirectoryName + 8);
  *(v12 + 32) = *(v0 + OBJC_IVAR___NDFeedItemPoolManager_rootDirectoryName);
  *(v12 + 40) = v13;
  (*(v2 + 104))(v5, enum case for URL.DirectoryHint.isDirectory(_:), v1);
  sub_100050AC8();

  URL.appending<A>(components:directoryHint:)();

  (*(v2 + 8))(v5, v1);
  v14 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  v46 = 0;
  v18 = [v14 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:0 options:0 error:&v46];

  v19 = v46;
  if (v18)
  {
    v20 = v45;
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v19;

    v23 = *(v21 + 16);
    if (v23)
    {
      v39 = v11;
      v46 = _swiftEmptyArrayStorage;
      sub_100042998(0, v23, 0);
      v5 = v46;
      v24 = *(v6 + 16);
      v25 = *(v6 + 80);
      v38[1] = v21;
      v26 = v21 + ((v25 + 32) & ~v25);
      v40 = *(v6 + 72);
      v41 = v24;
      v42 = v6 + 16;
      v43 = (v6 + 8);
      do
      {
        v27 = v44;
        v28 = v45;
        v41(v44, v26, v45);
        v29 = URL.lastPathComponent.getter();
        v31 = v30;
        v32 = *v43;
        (*v43)(v27, v28);
        v46 = v5;
        v34 = v5[2];
        v33 = v5[3];
        if (v34 >= v33 >> 1)
        {
          sub_100042998((v33 > 1), v34 + 1, 1);
          v5 = v46;
        }

        v5[2] = v34 + 1;
        v35 = &v5[2 * v34];
        v35[4] = v29;
        v35[5] = v31;
        v26 += v40;
        --v23;
      }

      while (v23);
      v32(v39, v45);
    }

    else
    {

      (*(v6 + 8))(v11, v20);
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v36 = v46;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v6 + 8))(v11, v45);
  }

  return v5;
}

uint64_t sub_10004B0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = type metadata accessor for MultiDatabaseFeedItemPool.DatabaseSource();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = *(*(sub_100015140(&qword_10007E790, &qword_10005BD10) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  refreshed = type metadata accessor for FeedItemInventoryRefreshPolicy();
  v3[18] = refreshed;
  v9 = *(refreshed - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_10004B1FC, 0, 0);
}

uint64_t sub_10004B1FC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[11];
  v5 = v4[3];
  v6 = v4[4];
  sub_100002288(v4, v5);
  (*(v2 + 104))(v1, enum case for FeedItemInventoryRefreshPolicy.default(_:), v3);
  v7 = async function pointer to dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_10004B2F0;
  v9 = v0[20];

  return dispatch thunk of FeedItemInventoryType.refreshIfNeeded(policy:)(v9, v5, v6);
}

uint64_t sub_10004B2F0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = v2[20];
  v6 = v2[19];
  v7 = v2[18];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_10004B784;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_10004B488;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10004B488()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[11];
  v4 = v3[4];
  sub_100002288(v3, v3[3]);
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  if (v1)
  {
LABEL_5:
    v12 = v0[20];
    v13 = v0[16];
    v14 = v0[17];

    v15 = v0[1];

    return v15();
  }

  v5 = v0[17];
  v6 = type metadata accessor for Date();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_100022E54(v5, &qword_10007E790, &qword_10005BD10);
  if (v7 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v9 = v0[11];
  v10 = v9[4];
  sub_100002288(v9, v9[3]);
  v11 = dispatch thunk of FeedItemInventoryType.databaseRef()();
  v18 = v0[15];
  v17 = v0[16];
  v19 = v0[14];
  v20 = v0[12];
  *v17 = v11;
  (*(v18 + 104))(v17, enum case for MultiDatabaseFeedItemPool.DatabaseSource.myArticles(_:), v19);
  swift_beginAccess();
  v21 = *v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = v0[12];
    v21 = sub_1000514E8(0, v21[2] + 1, 1, v21);
    *v34 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1000514E8(v23 > 1, v24 + 1, 1, v21);
  }

  v26 = v0[15];
  v25 = v0[16];
  v27 = v0[14];
  v28 = v0[11];
  v29 = v0[12];
  v21[2] = v24 + 1;
  (*(v26 + 32))(v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, v25, v27);
  *v29 = v21;
  swift_endAccess();
  v30 = v28[3];
  v31 = v28[4];
  sub_100002288(v28, v30);
  v32 = async function pointer to dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()[1];
  v33 = swift_task_alloc();
  v0[23] = v33;
  *v33 = v0;
  v33[1] = sub_10004BA80;

  return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v30, v31);
}

uint64_t sub_10004B784()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = v2[4];
  sub_100002288(v2, v2[3]);
  dispatch thunk of FeedItemInventoryType.lastRefreshDate.getter();
  v4 = v0[17];
  v5 = type metadata accessor for Date();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_100022E54(v4, &qword_10007E790, &qword_10005BD10);
  if (v6 == 1)
  {
    sub_1000505FC();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 1;
    swift_willThrow();
    v11 = v0[20];
    v12 = v0[16];
    v13 = v0[17];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v8 = v0[11];
    v9 = v8[4];
    sub_100002288(v8, v8[3]);
    v10 = dispatch thunk of FeedItemInventoryType.databaseRef()();
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[14];
    v19 = v0[12];
    *v16 = v10;
    (*(v17 + 104))(v16, enum case for MultiDatabaseFeedItemPool.DatabaseSource.myArticles(_:), v18);
    swift_beginAccess();
    v20 = *v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = v0[12];
      v20 = sub_1000514E8(0, v20[2] + 1, 1, v20);
      *v33 = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1000514E8(v22 > 1, v23 + 1, 1, v20);
    }

    v25 = v0[15];
    v24 = v0[16];
    v26 = v0[14];
    v27 = v0[11];
    v28 = v0[12];
    v20[2] = v23 + 1;
    (*(v25 + 32))(v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, v24, v26);
    *v28 = v20;
    swift_endAccess();
    v29 = v27[3];
    v30 = v27[4];
    sub_100002288(v27, v29);
    v31 = async function pointer to dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()[1];
    v32 = swift_task_alloc();
    v0[23] = v32;
    *v32 = v0;
    v32[1] = sub_10004BA80;

    return dispatch thunk of FeedItemInventoryType.tokenForCoordinatedRead()(v29, v30);
  }
}