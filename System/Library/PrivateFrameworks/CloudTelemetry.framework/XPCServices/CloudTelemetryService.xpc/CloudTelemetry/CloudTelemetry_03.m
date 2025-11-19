uint64_t sub_10003CEC4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 48);
  v5 = *v0;

  sub_10003F0D8(*(v1 + 16), *(v1 + 24));

  return _swift_task_switch(sub_10003CFF8, v3, 0);
}

uint64_t sub_10003CFF8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];

  v6 = v3(v5);
  if (v6)
  {
    v0[10] = v6;
    v7 = async function pointer to Task.result.getter[1];
    v8 = v6;
    v9 = swift_task_alloc();
    v0[11] = v9;
    v10 = sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    *v9 = v0;
    v9[1] = sub_10003CEC4;

    return Task.result.getter(v0 + 2, v8, &type metadata for ()[8], v10, &protocol self-conformance witness table for Error);
  }

  else
  {
    v12 = v0[6];
    v11 = v0[7];
    v14 = v0[4];
    v13 = v0[5];
    v15 = os_transaction_create();
    (*(*v12 + 184))(v15);
    v16 = sub_10007A0A0();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    v17 = sub_100039490(&qword_10009F0A8, type metadata accessor for StorebagCache);
    v18 = swift_allocObject();
    v18[2] = v12;
    v18[3] = v17;
    v18[4] = v12;
    v18[5] = v14;
    v18[6] = v13;
    swift_retain_n();

    v19 = sub_100005244(0, 0, v11, &unk_10007E358, v18);
    v0[12] = v19;
    v20 = *(*v12 + 160);

    v20(v21);
    v22 = async function pointer to Task.value.getter[1];
    v23 = swift_task_alloc();
    v0[13] = v23;
    v24 = sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    *v23 = v0;
    v23[1] = sub_10003D2D8;

    return Task.value.getter(v24, v19, &type metadata for ()[8], v24, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_10003D2D8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_10003D474;
  }

  else
  {
    v6 = sub_10003D404;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10003D404()
{
  v1 = v0[12];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10003D474()
{
  v1 = v0[12];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_10003D4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_1000798B0();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_10003D5AC, a4, 0);
}

uint64_t sub_10003D5AC()
{
  v1 = v0[7];
  v2 = *(v0[2] + OBJC_IVAR____TtC21CloudTelemetryService13StorebagCache_storebagSource);
  v11 = v0[3];
  v12 = v0[4];

  v14._countAndFlagsBits = 0x7473696C702ELL;
  v14._object = 0xE600000000000000;
  sub_100079F00(v14);
  sub_100079820();

  v3 = *(*v2 + 136);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_10003D740;
  v6 = v0[7];
  v8 = v0[3];
  v7 = v0[4];

  return v10(v8, v7, v6);
}

uint64_t sub_10003D740()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 72) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_10003D984;
  }

  else
  {
    v9 = sub_10003D8C8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10003D8C8()
{
  v1 = v0[7];
  v2 = v0[2];
  (*(*v2 + 160))(0);
  (*(*v2 + 184))(0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10003D984()
{
  v1 = v0[7];
  v2 = v0[2];
  (*(*v2 + 160))(0);
  (*(*v2 + 184))(0);

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_10003DA40(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_10000712C(&qword_10009ED80, &qword_10007E1E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v17 - v8;
  if (qword_1000A3E80 != -1)
  {
    swift_once();
  }

  v10 = sub_100079BA0();
  sub_1000070F4(v10, qword_1000A6CE8);

  v11 = sub_100079B80();
  v12 = sub_10007A160();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_100006B00(a1, a2, v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "evicting storebag %{public}s from cache", v13, 0xCu);
    sub_1000070A8(v14);
  }

  v15 = (*(*v3 + 144))(v17);
  sub_10003DCF4(a1, a2, v9);
  sub_1000096C4(v9, &qword_10009ED80, &qword_10007E1E0);
  return v15(v17, 0);
}

uint64_t sub_10003DC54()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC21CloudTelemetryService13StorebagCache_storebagCacheURL;
  v5 = sub_1000798B0();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC21CloudTelemetryService13StorebagCache_storebagSource];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10003DCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10000A0FC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10003E388();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for CachedStorebag(0);
    v22 = *(v15 - 8);
    sub_10003EABC(v14 + *(v22 + 72) * v9, a3);
    sub_10003E19C(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for CachedStorebag(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_10003DE4C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CachedStorebag(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_10000712C(&qword_10009F0A0, &qword_10007E348);
  v44 = a2;
  result = sub_10007A4C0();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_10003EABC(v31, v45);
      }

      else
      {
        sub_10003E9F4(v31, v45, type metadata accessor for CachedStorebag);
      }

      v32 = *(v12 + 40);
      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_10003EABC(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_10003E19C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007A2F0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10007A730();

      sub_100079EC0();
      v13 = sub_10007A760();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for CachedStorebag(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_10003E388()
{
  v1 = v0;
  v2 = type metadata accessor for CachedStorebag(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000712C(&qword_10009F0A0, &qword_10007E348);
  v5 = *v0;
  v6 = sub_10007A4B0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_10003E9F4(*(v5 + 56) + v27, v31, type metadata accessor for CachedStorebag);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_10003EABC(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_10003E5CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000A0FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_10003E388();
      goto LABEL_7;
    }

    sub_10003DE4C(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_10000A0FC(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_10007A6C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for CachedStorebag(0) - 8) + 72) * v12;

    return sub_10003EF84(a1, v20);
  }

LABEL_13:
  sub_10003E730(v12, a2, a3, a1, v18);
}

uint64_t sub_10003E730(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for CachedStorebag(0);
  result = sub_10003EABC(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_10003E7C8(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009F0B8, &qword_10007E368);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000712C(&qword_10009F0A0, &qword_10007E348);
    v8 = sub_10007A4D0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000939C(v10, v6, &qword_10009F0B8, &qword_10007E368);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10000A0FC(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for CachedStorebag(0);
      result = sub_10003EABC(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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

uint64_t sub_10003E9BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003E9F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003EA5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003EABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedStorebag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003EB7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100079A00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10003EC3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100079A00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003ECE0()
{
  result = sub_100079A00();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10003ED5C()
{
  sub_10003EE0C(319, &qword_10009EE88, &type metadata accessor for CocoaError);
  if (v0 <= 0x3F)
  {
    sub_10003EE0C(319, &qword_10009EE90, sub_10003EE58);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10003EE0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10003EE58()
{
  result = qword_10009EE98;
  if (!qword_10009EE98)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10009EE98);
  }

  return result;
}

uint64_t sub_10003EEC4()
{
  result = sub_1000798B0();
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

uint64_t sub_10003EF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedStorebag(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003EFE8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003F030()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_10003D4E4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10003F0D8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

Swift::Int Mode.hashValue.getter(unsigned __int8 a1)
{
  sub_10007A730();
  sub_10007A740(a1);
  return sub_10007A760();
}

uint64_t sub_10003F1A0()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6D10);
  sub_1000070F4(v0, qword_1000A6D10);
  return sub_100079B90();
}

uint64_t sub_10003F214()
{
  if (qword_1000A4040 != -1)
  {
    swift_once();
  }

  v0 = sub_100079BA0();

  return sub_1000070F4(v0, qword_1000A6D10);
}

uint64_t sub_10003F278()
{
  result = os_variant_has_internal_diagnostics();
  byte_1000A6D28 = result;
  return result;
}

char *sub_10003F2A0()
{
  if (qword_1000A4048 != -1)
  {
    swift_once();
  }

  return &byte_1000A6D28;
}

void sub_10003F2F0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100079DF0();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_1000A6D30 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_10003F368()
{
  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  return &qword_1000A6D30;
}

void sub_10003F3B8()
{
  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1000A6D30;
  v1 = sub_100079DF0();
  v2 = [v0 BOOLForKey:v1];

  byte_1000A6D38 = v2;
}

char *sub_10003F484()
{
  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  return &byte_1000A6D38;
}

void sub_10003F4D4()
{
  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1000A6D30;
  v1 = sub_100079DF0();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = qword_1000A6D30;
    v5 = sub_100079DF0();
    v6 = [v4 integerForKey:v5];

    v3 = v6 == 5;
  }

  byte_1000A6D39 = v3;
}

char *sub_10003F60C()
{
  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  return &byte_1000A6D39;
}

void sub_10003F65C()
{
  if (qword_1000A4048 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1000A6D28 == 1)
  {
    if (qword_1000A4050 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v0 = qword_1000A6D30;
    v1 = sub_100079DF0();
    v2 = [v0 BOOLForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  byte_1000A6D3A = v2;
}

char *sub_10003F788()
{
  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  return &byte_1000A6D3A;
}

void sub_10003F7F0()
{
  if (!*v0)
  {
    sub_10007A3B0(43);

    v2 = [objc_opt_self() mainBundle];
    v3 = [v2 bundleIdentifier];

    if (v3)
    {
      v4 = sub_100079E20();
      v6 = v5;

      v8._countAndFlagsBits = v4;
      v8._object = v6;
      sub_100079F00(v8);

      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (*v0 == 1)
  {
    sub_10007A3B0(54);
    v7._countAndFlagsBits = 0xD000000000000033;
    v7._object = 0x8000000100083C30;
    sub_100079F00(v7);
    v1._object = *(v0 + 16);
    if (v1._object)
    {
      v1._countAndFlagsBits = *(v0 + 8);
      sub_100079F00(v1);
LABEL_7:
      v9._countAndFlagsBits = 47;
      v9._object = 0xE100000000000000;
      sub_100079F00(v9);
      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

void sub_10003F96C()
{
  if (!*v0)
  {
    sub_10007A3B0(41);

    v2 = [objc_opt_self() mainBundle];
    v3 = [v2 bundleIdentifier];

    if (v3)
    {
      v4 = sub_100079E20();
      v6 = v5;

      v8._countAndFlagsBits = v4;
      v8._object = v6;
      sub_100079F00(v8);

      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (*v0 == 1)
  {
    sub_10007A3B0(52);
    v7._countAndFlagsBits = 0xD000000000000031;
    v7._object = 0x8000000100083CD0;
    sub_100079F00(v7);
    v1._object = *(v0 + 16);
    if (v1._object)
    {
      v1._countAndFlagsBits = *(v0 + 8);
      sub_100079F00(v1);
LABEL_7:
      v9._countAndFlagsBits = 47;
      v9._object = 0xE100000000000000;
      sub_100079F00(v9);
      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

id sub_10003FAE8@<X0>(char *a1@<X8>)
{
  v3 = sub_100079520();
  v4 = *(v3 - 8);
  v88 = v3;
  v89 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v87 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v86 = &v79 - v8;
  v91 = sub_100079530();
  v93 = *(v91 - 8);
  v9 = *(v93 + 64);
  v10 = __chkstk_darwin(v91);
  v84 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v85 = &v79 - v13;
  v14 = __chkstk_darwin(v12);
  v92 = &v79 - v15;
  __chkstk_darwin(v14);
  v90 = &v79 - v16;
  v17 = sub_10000712C(&qword_10009E788, &qword_10007E390);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v79 - v19;
  v21 = sub_1000798B0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v79 - v27;
  sub_10001EDCC();
  sub_10003F96C();
  sub_100079810();

  v29 = *(v22 + 8);
  v95 = v22 + 8;
  v96 = v21;
  v94 = v29;
  v29(v28, v21);
  sub_10000712C(&qword_10009E010, &unk_10007BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007B7C0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v31 = NSURLIsDirectoryKey;
  sub_100009474(inited);
  swift_setDeallocating();
  sub_100009668(inited + 32);
  sub_1000797C0();
  if (v1)
  {

    v32 = sub_100079750();
    (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
    sub_1000096C4(v20, &qword_10009E788, &qword_10007E390);
    goto LABEL_5;
  }

  v33 = a1;

  v34 = sub_100079750();
  v35 = *(v34 - 8);
  (*(v35 + 56))(v20, 0, 1, v34);
  v36 = sub_1000796F0();
  result = (*(v35 + 8))(v20, v34);
  a1 = v33;
  if (v36 == 2 || (v36 & 1) == 0)
  {
LABEL_5:
    if (qword_1000A4040 != -1)
    {
      swift_once();
    }

    v38 = sub_100079BA0();
    sub_1000070F4(v38, qword_1000A6D10);
    v39 = v96;
    (*(v22 + 16))(v26, a1, v96);
    v40 = sub_100079B80();
    v41 = sub_10007A150();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v83 = 0;
      v43 = v42;
      v44 = a1;
      v45 = swift_slowAlloc();
      v99 = v45;
      *v43 = 136446210;
      v46 = sub_100079870();
      v48 = v47;
      v94(v26, v96);
      v49 = sub_100006B00(v46, v48, &v99);

      *(v43 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "creating log directory at %{public}s", v43, 0xCu);
      sub_1000070A8(v45);
      a1 = v44;
      v39 = v96;
    }

    else
    {

      v94(v26, v39);
    }

    v50 = v93;
    v51 = [objc_opt_self() defaultManager];
    sub_100079800(v52);
    v54 = v53;
    v99 = 0;
    v55 = [v51 createDirectoryAtURL:v53 withIntermediateDirectories:1 attributes:0 error:&v99];

    v56 = v92;
    if (v55)
    {
      return v99;
    }

    v57 = v99;
    v58 = sub_1000797A0();

    swift_willThrow();
    v99 = v58;
    swift_errorRetain();
    sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    v59 = v90;
    if (swift_dynamicCast())
    {
      v83 = a1;
      v81 = *(v50 + 16);
      v81(v56, v59, v91);
      v60 = sub_100046424(&qword_10009DE28, &type metadata accessor for CocoaError);
      v61 = v86;
      v82 = v60;
      sub_100079790();
      v62 = v87;
      sub_100079510();
      sub_100046424(&qword_10009DE30, &type metadata accessor for CocoaError.Code);
      v63 = v88;
      sub_100079FC0();
      sub_100079FC0();
      v64 = v89 + 8;
      v65 = *(v89 + 8);
      v65(v62, v63);
      v65(v61, v63);
      if (v98 == v97)
      {
        v66 = v92;
        sub_1000394FC(v92);

        v67 = *(v93 + 8);
        v68 = v66;
        v69 = v91;
        v67(v68, v91);
        v94(v83, v96);
        v67(v90, v69);
      }

      v70 = v92;
      v71 = *(v93 + 8);
      v89 = v64;
      v72 = v91;
      v92 = v93 + 8;
      v80 = v71;
      v71(v70, v91);
      v81(v85, v90, v72);
      sub_100079790();
      sub_100079500();
      sub_100079FC0();
      sub_100079FC0();
      v65(v62, v63);
      v65(v61, v63);
      if (v98 == v97)
      {
        v73 = v85;
        sub_1000394D8(v85);

        v74 = v91;
        v75 = v80;
        v80(v73, v91);
        v94(v83, v96);
        v75(v90, v74);
      }

      v76 = v61;
      v77 = v91;
      v80(v85, v91);
      v78 = v84;
      (*(v93 + 32))(v84, v90, v77);
      sub_100079790();
      sub_1000794F0();
      sub_100079FC0();
      sub_100079FC0();
      v65(v62, v63);
      v65(v76, v63);
      if (v98 == v97)
      {
        sub_100039520(v78);

        v80(v78, v91);
        v94(v83, v96);
      }

      v80(v78, v91);
      a1 = v83;
      v39 = v96;
    }

    swift_errorRetain();
    sub_1000398DC(v58);
    v94(a1, v39);
  }

  return result;
}

uint64_t sub_1000406A0()
{
  sub_10000712C(&qword_10009F110, &qword_10007E4A8);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  qword_1000A6D40 = result;
  return result;
}

uint64_t sub_1000406E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a1;
  v84 = a4;
  v7 = sub_100079520();
  v77 = *(v7 - 8);
  v78 = v7;
  v8 = *(v77 + 8);
  v9 = __chkstk_darwin(v7);
  v76 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75 = &v69 - v11;
  v12 = sub_100079530();
  v13 = *(v12 - 8);
  v80 = v12;
  v81 = v13;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v74 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v73 = &v69 - v18;
  v19 = __chkstk_darwin(v17);
  v82 = &v69 - v20;
  __chkstk_darwin(v19);
  v83 = &v69 - v21;
  v22 = sub_100079750();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000712C(&qword_10009E788, &qword_10007E390);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v69 - v29;
  if (qword_1000A4070 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = qword_1000A6D40;

  os_unfair_lock_lock((v31 + 20));
  v32 = *(v31 + 16);
  os_unfair_lock_unlock((v31 + 20));

  if (v32 == 1)
  {
    return sub_1000392CC();
  }

  v87[0] = a2;
  v87[1] = a3;

  v88._countAndFlagsBits = 47;
  v88._object = 0xE100000000000000;
  sub_100079F00(v88);
  v34 = v84;
  sub_100079810();

  sub_10000712C(&qword_10009E010, &unk_10007BA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007B7C0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v36 = NSURLIsDirectoryKey;
  sub_100009474(inited);
  swift_setDeallocating();
  sub_100009668(inited + 32);
  sub_1000797C0();
  if (v4)
  {

    (*(v23 + 56))(v30, 1, 1, v22);
    sub_1000096C4(v30, &qword_10009E788, &qword_10007E390);
    goto LABEL_9;
  }

  (*(v23 + 56))(v30, 0, 1, v22);
  v37 = sub_1000796F0();
  result = (*(v23 + 8))(v30, v22);
  if (v37 == 2 || (v37 & 1) == 0)
  {
LABEL_9:
    v38 = [objc_opt_self() defaultManager];
    sub_100079800(v39);
    v41 = v40;
    v87[0] = 0;
    v42 = [v38 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:v87];

    if (v42)
    {
      v43 = v87[0];
      sub_100079740();
      sub_100079710();
      sub_1000797F0();
      return (*(v23 + 8))(v26, v22);
    }

    v44 = v87[0];
    v45 = sub_1000797A0();

    swift_willThrow();
    v46 = v82;
    v87[0] = v45;
    swift_errorRetain();
    sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    v47 = v83;
    v48 = v80;
    if (swift_dynamicCast())
    {
      v79 = 0;
      v71 = *(v81 + 16);
      v71(v46, v47, v48);
      v49 = sub_100046424(&qword_10009DE28, &type metadata accessor for CocoaError);
      v50 = v75;
      v72 = v49;
      sub_100079790();
      v51 = v76;
      sub_100079510();
      sub_100046424(&qword_10009DE30, &type metadata accessor for CocoaError.Code);
      v52 = v78;
      sub_100079FC0();
      sub_100079FC0();
      v53 = *(v77 + 1);
      v53(v51, v52);
      v53(v50, v52);
      if (v86 == v85)
      {
        v54 = v82;
        sub_1000394FC(v82);

        v55 = *(v81 + 8);
        v55(v54, v48);
        v56 = sub_1000798B0();
        (*(*(v56 - 8) + 8))(v84, v56);
        v55(v83, v48);
      }

      v57 = v82;
      v58 = *(v81 + 8);
      v82 = v81 + 8;
      v77 = v58;
      v58(v57, v48);
      v70 = v53;
      v59 = v73;
      v71(v73, v83, v48);
      v60 = v59;
      v61 = v70;
      sub_100079790();
      sub_100079500();
      sub_100079FC0();
      sub_100079FC0();
      v61(v51, v52);
      v61(v50, v52);
      if (v86 == v85)
      {
        sub_1000394D8(v59);

        v62 = v80;
        v63 = v77;
        v77(v60, v80);
        v64 = sub_1000798B0();
        (*(*(v64 - 8) + 8))(v84, v64);
        v63(v83, v62);
      }

      v65 = v80;
      v77(v59, v80);
      (*(v81 + 32))(v74, v83, v65);
      sub_100079790();
      sub_1000794F0();
      sub_100079FC0();
      sub_100079FC0();
      v61(v51, v52);
      v61(v50, v52);
      v34 = v84;
      if (v86 == v85)
      {
        v66 = v74;
        sub_100039520(v74);

        v77(v66, v80);
        v67 = sub_1000798B0();
        (*(*(v67 - 8) + 8))(v34, v67);
      }

      v77(v74, v80);
    }

    swift_errorRetain();
    sub_1000398DC(v45);
    v68 = sub_1000798B0();
    (*(*(v68 - 8) + 8))(v34, v68);
  }

  return result;
}

uint64_t Daemon.init(mode:clientBundleID:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 776) = a4;
  *(v4 + 768) = a3;
  *(v4 + 140) = a2;
  *(v4 + 760) = a1;
  v5 = sub_1000798B0();
  *(v4 + 784) = v5;
  v6 = *(v5 - 8);
  *(v4 + 792) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 808) = swift_task_alloc();
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 824) = swift_task_alloc();
  *(v4 + 832) = swift_task_alloc();
  *(v4 + 840) = swift_task_alloc();
  *(v4 + 848) = swift_task_alloc();

  return _swift_task_switch(sub_100041344, 0, 0);
}

uint64_t sub_100041344()
{
  v80 = v0;
  if (qword_1000A4040 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  *(v0 + 856) = sub_1000070F4(v1, qword_1000A6D10);
  v2 = sub_100079B80();
  v3 = sub_10007A190();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "starting CloudTelemetryService", v4, 2u);
  }

  v5 = *(v0 + 848);
  v6 = *(v0 + 792);
  v7 = *(v0 + 784);

  v8 = objc_opt_self();
  *(v0 + 864) = v8;
  v9 = [v8 defaultManager];
  sub_10001EDCC();
  sub_100079860(1);
  v10 = *(v6 + 8);
  *(v0 + 872) = v10;
  *(v0 + 880) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v7);
  v11 = sub_100079DF0();

  LOBYTE(v5) = [v9 fileExistsAtPath:v11];

  if (v5)
  {
    v12 = *(v0 + 840);
    *(v0 + 80) = *(v0 + 140);
    *(v0 + 88) = *(v0 + 768);
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0;
    sub_10003FAE8(v12);
    type metadata accessor for TransparencyLog();
    v34 = swift_task_alloc();
    *(v0 + 888) = v34;
    *v34 = v0;
    v34[1] = sub_100041FBC;
    v35 = *(v0 + 840);

    return sub_100002FF8(v35);
  }

  v13 = sub_100079B80();
  v14 = sub_10007A180();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 848);
    v76 = *(v0 + 784);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v78 = v17;
    *v16 = 136380675;
    sub_10001EDCC();
    v18 = sub_100079860(1);
    v20 = v19;
    v10(v15, v76);
    v21 = sub_100006B00(v18, v20, &v78);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "reporting disabled due to missing home directory: %{private}s", v16, 0xCu);
    sub_1000070A8(v17);
  }

  v22 = *(v0 + 856);
  v23 = sub_100079B80();
  v24 = sub_10007A180();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "reporting disabled due to startup failure.", v25, 2u);
  }

  *(v0 + 1000) = 0;
  *(v0 + 142) = 257;
  *(v0 + 992) = 0;
  *(v0 + 984) = 0;
  *(v0 + 976) = 0;
  if ((*(v0 + 140) | 2) == 2)
  {
    v26 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v27 = swift_allocObject();
    v27[3] = 0;
    v27[4] = 0;
    v27[2] = 0;
    swift_beginAccess();
    v28 = *v26;
    v29 = v26[1];
    *v26 = &unk_10007E3B8;
    v26[1] = v27;
    sub_100029F90(v28);
    if (qword_1000A4078 != -1)
    {
      swift_once();
    }

    v30 = qword_1000A6D48;
    *(v0 + 1008) = qword_1000A6D48;
    if (v30 >> 62)
    {
      v31 = sub_10007A4A0();
      *(v0 + 1016) = v31;
      if (v31)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v31;
      if (v31)
      {
LABEL_16:
        if (v31 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v32 = *(v0 + 1008);
        if ((v32 & 0xC000000000000001) != 0)
        {
          v33 = sub_10007A3D0();
        }

        else
        {
          v33 = *(v32 + 32);
        }

        *(v0 + 1032) = v33;
        v37 = *v33 + 160;
        *(v0 + 1040) = *v37;
        *(v0 + 1048) = v37 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return _swift_task_switch(sub_1000436F0, v33, 0);
      }
    }
  }

  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D38 == 1)
  {
    sub_100018CE8(&v78, 0xD000000000000011, 0x8000000100083D80);
  }

  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v38 = qword_1000A6D30;
  v39 = sub_100079DF0();
  v40 = [v38 valueForKey:v39];

  if (v40)
  {
    sub_10007A2D0();
    swift_unknownObjectRelease();
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
    sub_100018CE8(&v78, 0xD000000000000013, 0x8000000100083D60);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
  }

  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D39 == 1)
  {
    sub_100018CE8(&v78, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D3A == 1)
  {
    sub_100018CE8(&v78, 0xD000000000000014, 0x8000000100083D40);
  }

  v41 = (v0 + 992);
  v42 = (v0 + 976);
  v43 = *(v0 + 856);

  v44 = sub_100079B80();
  v45 = sub_10007A190();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v77 = v47;
    *v46 = 136315138;
    if (_swiftEmptySetSingleton[2])
    {
      v78 = 0x6769666E6F632820;
      v79 = 0xEA0000000000203ALL;
      *(v0 + 688) = _swiftEmptySetSingleton;

      sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
      sub_10004649C();
      sub_100025EBC();
      v48 = sub_100079FB0();
      v50 = v49;

      v82._countAndFlagsBits = v48;
      v82._object = v50;
      sub_100079F00(v82);
      v42 = (v0 + 976);

      v83._countAndFlagsBits = 41;
      v83._object = 0xE100000000000000;
      sub_100079F00(v83);

      v51 = v78;
      v52 = v79;
    }

    else
    {

      v51 = 0;
      v52 = 0xE000000000000000;
    }

    v55 = *v41;
    v56 = *v42;
    v57 = sub_100006B00(v51, v52, &v77);

    *(v46 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v44, v45, "started CloudTelemetryService%s", v46, 0xCu);
    sub_1000070A8(v47);
  }

  else
  {
    v53 = *v41;
    v54 = *v42;
  }

  v58 = *(v0 + 1000);
  v59 = *(v0 + 992);
  v60 = *(v0 + 143);
  v61 = *(v0 + 848);
  v62 = *(v0 + 840);
  v63 = *(v0 + 832);
  v64 = *(v0 + 824);
  v65 = *(v0 + 816);
  v66 = *(v0 + 808);
  v67 = *(v0 + 800);
  v68 = *(v0 + 140);
  v69 = *(v0 + 760);
  *(v0 + 464) = v68;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v70 = *(v0 + 768);
  v71 = *(v0 + 976);
  *(v0 + 472) = v70;
  *(v0 + 488) = v71;
  *(v0 + 504) = v58;
  *(v0 + 512) = v59;
  *(v0 + 520) = v60;
  *(v0 + 400) = v68;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v70;
  *(v0 + 424) = v71;
  *(v0 + 440) = v58;
  *(v0 + 448) = v59;
  *(v0 + 456) = v60;
  sub_100029908(v0 + 464, v0 + 16);
  sub_10004646C(v0 + 400);
  v73 = *(v0 + 480);
  v72 = *(v0 + 496);
  v74 = *(v0 + 464);
  *(v69 + 41) = *(v0 + 505);
  v69[1] = v73;
  v69[2] = v72;
  *v69 = v74;

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_100041FBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 888);
  v8 = *v2;

  if (v1)
  {

    v6 = sub_100043E4C;
  }

  else
  {
    *(v4 + 896) = a1;
    v6 = sub_100042110;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100042110()
{
  *(v0 + 904) = *(v0 + 896);
  v10 = *(v0 + 872);
  v11 = *(v0 + 880);
  v1 = *(v0 + 848);
  v2 = *(v0 + 832);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 140);
  *(v0 + 912) = type metadata accessor for DiskCache();
  *(v0 + 144) = v6;
  *(v0 + 152) = v5;
  *(v0 + 160) = v4;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;

  sub_10001EDCC();
  sub_10003F7F0();
  sub_100079820();

  v10(v1, v3);
  v7 = swift_task_alloc();
  *(v0 + 920) = v7;
  *v7 = v0;
  v7[1] = sub_10004228C;
  v8 = *(v0 + 832);

  return DiskCache.__allocating_init(rootCacheURL:)(v8);
}

uint64_t sub_10004228C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 920);
  v8 = *v2;
  *(*v2 + 928) = v1;

  if (v1)
  {
    v6 = sub_100044AB0;
  }

  else
  {
    v4[117] = a1;
    v4[92] = 0;
    v4[88] = 0;
    v6 = sub_1000423E4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000423E4()
{
  v67 = v0;
  v1 = *(v0 + 936);
  *(v0 + 944) = v1;
  v2 = *(v0 + 904);

  sub_1000096C4(v0 + 736, &qword_10009F0D8, &qword_10007E3C0);
  sub_1000096C4(v0 + 704, &qword_10009F0E0, &qword_10007E3C8);
  v3 = *(v0 + 904);
  if (v2 && v1)
  {
    v63 = *(v0 + 880);
    v4 = *(v0 + 872);
    v5 = *(v0 + 848);
    v6 = *(v0 + 824);
    v7 = *(v0 + 784);
    v8 = *(v0 + 776);
    v9 = *(v0 + 768);
    v10 = *(v0 + 140);
    type metadata accessor for SessionCoordinator();
    *(v0 + 336) = v10;
    *(v0 + 337) = *(v0 + 73);
    *(v0 + 340) = *(v0 + 76);
    *(v0 + 344) = v9;
    *(v0 + 352) = v8;
    *(v0 + 360) = v1;
    *(v0 + 368) = 0;
    *(v0 + 376) = 0;
    *(v0 + 384) = v3;
    *(v0 + 392) = 0;

    sub_10001EDCC();
    sub_10003F7F0();
    sub_100079820();

    v4(v5, v7);
    v11 = swift_task_alloc();
    *(v0 + 952) = v11;
    *v11 = v0;
    v11[1] = sub_100042D7C;
    v12 = *(v0 + 824);

    return sub_100013EF0(0, v1, v12);
  }

  v14 = *(v0 + 856);
  v15 = sub_100079B80();
  v16 = sub_10007A180();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "reporting disabled due to startup failure.", v17, 2u);
  }

  *(v0 + 1000) = 0;
  *(v0 + 992) = v3;
  *(v0 + 142) = 257;
  *(v0 + 984) = 0;
  *(v0 + 976) = v1;
  if ((*(v0 + 140) | 2) == 2)
  {
    v18 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v19 = swift_allocObject();
    v19[3] = 0;
    v19[4] = 0;
    v19[2] = v1;
    swift_beginAccess();
    v20 = *v18;
    v21 = v18[1];
    *v18 = &unk_10007E3B8;
    v18[1] = v19;

    sub_100029F90(v20);
    if (qword_1000A4078 != -1)
    {
      swift_once();
    }

    v22 = qword_1000A6D48;
    *(v0 + 1008) = qword_1000A6D48;
    if (v22 >> 62)
    {
      v23 = sub_10007A4A0();
      *(v0 + 1016) = v23;
      if (v23)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v23;
      if (v23)
      {
LABEL_13:
        if (v23 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v24 = *(v0 + 1008);
        if ((v24 & 0xC000000000000001) != 0)
        {
          v25 = sub_10007A3D0();
        }

        else
        {
          v25 = *(v24 + 32);
        }

        *(v0 + 1032) = v25;
        v26 = *v25 + 160;
        *(v0 + 1040) = *v26;
        *(v0 + 1048) = v26 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return _swift_task_switch(sub_1000436F0, v25, 0);
      }
    }
  }

  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D38 == 1)
  {
    sub_100018CE8(&v64, 0xD000000000000011, 0x8000000100083D80);
  }

  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = qword_1000A6D30;
  v28 = sub_100079DF0();
  v29 = [v27 valueForKey:v28];

  if (v29)
  {
    sub_10007A2D0();
    swift_unknownObjectRelease();
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
    sub_100018CE8(&v64, 0xD000000000000013, 0x8000000100083D60);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
  }

  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D39 == 1)
  {
    sub_100018CE8(&v64, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D3A == 1)
  {
    sub_100018CE8(&v64, 0xD000000000000014, 0x8000000100083D40);
  }

  v30 = *(v0 + 856);

  v31 = sub_100079B80();
  v32 = sub_10007A190();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v66 = v34;
    *v33 = 136315138;
    if (_swiftEmptySetSingleton[2])
    {
      v64 = 0x6769666E6F632820;
      v65 = 0xEA0000000000203ALL;
      *(v0 + 688) = _swiftEmptySetSingleton;

      sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
      sub_10004649C();
      sub_100025EBC();
      v35 = sub_100079FB0();
      v37 = v36;

      v69._countAndFlagsBits = v35;
      v69._object = v37;
      sub_100079F00(v69);

      v70._countAndFlagsBits = 41;
      v70._object = 0xE100000000000000;
      sub_100079F00(v70);

      v38 = v64;
      v39 = v65;
    }

    else
    {

      v38 = 0;
      v39 = 0xE000000000000000;
    }

    v42 = *(v0 + 992);
    v43 = *(v0 + 976);
    v44 = sub_100006B00(v38, v39, &v66);

    *(v33 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v31, v32, "started CloudTelemetryService%s", v33, 0xCu);
    sub_1000070A8(v34);
  }

  else
  {
    v40 = *(v0 + 992);
    v41 = *(v0 + 976);
  }

  v45 = *(v0 + 1000);
  v46 = *(v0 + 992);
  v47 = *(v0 + 143);
  v48 = *(v0 + 848);
  v49 = *(v0 + 840);
  v50 = *(v0 + 832);
  v51 = *(v0 + 824);
  v52 = *(v0 + 816);
  v53 = *(v0 + 808);
  v54 = *(v0 + 800);
  v55 = *(v0 + 140);
  v56 = *(v0 + 760);
  *(v0 + 464) = v55;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v57 = *(v0 + 768);
  v58 = *(v0 + 976);
  *(v0 + 472) = v57;
  *(v0 + 488) = v58;
  *(v0 + 504) = v45;
  *(v0 + 512) = v46;
  *(v0 + 520) = v47;
  *(v0 + 400) = v55;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v57;
  *(v0 + 424) = v58;
  *(v0 + 440) = v45;
  *(v0 + 448) = v46;
  *(v0 + 456) = v47;
  sub_100029908(v0 + 464, v0 + 16);
  sub_10004646C(v0 + 400);
  v60 = *(v0 + 480);
  v59 = *(v0 + 496);
  v61 = *(v0 + 464);
  *(v56 + 41) = *(v0 + 505);
  v56[1] = v60;
  v56[2] = v59;
  *v56 = v61;

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_100042D7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 952);
  v8 = *v2;
  *(*v2 + 960) = v1;

  if (v1)
  {
    v6 = sub_10004580C;
  }

  else
  {
    *(v4 + 968) = a1;
    *(v4 + 141) = *(v4 + 392);
    v6 = sub_100042ED4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100042ED4(uint64_t (*a1)(), void *a2, uint64_t a3)
{
  v60 = v3;
  v4 = *(v3 + 141);
  v5 = *(v3 + 968);
  if (v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    if (!v5)
    {
      __break(1u);
      return _swift_task_switch(a1, a2, a3);
    }

    v7 = *(v3 + 944);
    v8 = *(v3 + 904);
    type metadata accessor for SubmissionCoordinator();

    v6 = sub_10001B388(v5, v7, v8);
  }

  v9 = *(v3 + 904);
  v10 = *(v3 + 944);
  *(v3 + 1000) = v6;
  *(v3 + 992) = v9;
  *(v3 + 143) = 0;
  *(v3 + 142) = v4;
  *(v3 + 984) = v5;
  *(v3 + 976) = v10;
  if ((*(v3 + 140) | 2) == 2)
  {
    v11 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v5;
    v12[4] = v6;
    swift_beginAccess();
    v13 = *v11;
    v14 = v11[1];
    *v11 = &unk_10007E3B8;
    v11[1] = v12;

    sub_100029F90(v13);
    if (qword_1000A4078 != -1)
    {
      swift_once();
    }

    v15 = qword_1000A6D48;
    *(v3 + 1008) = qword_1000A6D48;
    if (v15 >> 62)
    {
      v16 = sub_10007A4A0();
      *(v3 + 1016) = v16;
      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v3 + 1016) = v16;
      if (v16)
      {
LABEL_10:
        if (v16 < 1)
        {
          __break(1u);
        }

        *(v3 + 1024) = 0;
        v17 = *(v3 + 1008);
        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = sub_10007A3D0();
        }

        else
        {
          v18 = *(v17 + 32);
        }

        *(v3 + 1032) = v18;
        v19 = *v18 + 160;
        *(v3 + 1040) = *v19;
        *(v3 + 1048) = v19 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;
        a1 = sub_1000436F0;
        a2 = v18;
        a3 = 0;

        return _swift_task_switch(a1, a2, a3);
      }
    }
  }

  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D38 == 1)
  {
    sub_100018CE8(&v57, 0xD000000000000011, 0x8000000100083D80);
  }

  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = qword_1000A6D30;
  v21 = sub_100079DF0();
  v22 = [v20 valueForKey:v21];

  if (v22)
  {
    sub_10007A2D0();
    swift_unknownObjectRelease();
    sub_1000096C4(v3 + 528, &qword_10009F0C0, &qword_10007E3A0);
    sub_100018CE8(&v57, 0xD000000000000013, 0x8000000100083D60);
  }

  else
  {
    *(v3 + 528) = 0u;
    *(v3 + 544) = 0u;
    sub_1000096C4(v3 + 528, &qword_10009F0C0, &qword_10007E3A0);
  }

  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D39 == 1)
  {
    sub_100018CE8(&v57, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D3A == 1)
  {
    sub_100018CE8(&v57, 0xD000000000000014, 0x8000000100083D40);
  }

  v23 = *(v3 + 856);

  v24 = sub_100079B80();
  v25 = sub_10007A190();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v59 = v27;
    *v26 = 136315138;
    if (_swiftEmptySetSingleton[2])
    {
      v57 = 0x6769666E6F632820;
      v58 = 0xEA0000000000203ALL;
      *(v3 + 688) = _swiftEmptySetSingleton;

      sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
      sub_10004649C();
      sub_100025EBC();
      v28 = sub_100079FB0();
      v30 = v29;

      v62._countAndFlagsBits = v28;
      v62._object = v30;
      sub_100079F00(v62);

      v63._countAndFlagsBits = 41;
      v63._object = 0xE100000000000000;
      sub_100079F00(v63);

      v31 = v57;
      v32 = v58;
    }

    else
    {

      v31 = 0;
      v32 = 0xE000000000000000;
    }

    v35 = *(v3 + 992);
    v36 = *(v3 + 976);
    v37 = sub_100006B00(v31, v32, &v59);

    *(v26 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v24, v25, "started CloudTelemetryService%s", v26, 0xCu);
    sub_1000070A8(v27);
  }

  else
  {
    v33 = *(v3 + 992);
    v34 = *(v3 + 976);
  }

  v38 = *(v3 + 1000);
  v39 = *(v3 + 992);
  v40 = *(v3 + 143);
  v41 = *(v3 + 848);
  v42 = *(v3 + 840);
  v43 = *(v3 + 832);
  v44 = *(v3 + 824);
  v45 = *(v3 + 816);
  v46 = *(v3 + 808);
  v47 = *(v3 + 800);
  v48 = *(v3 + 140);
  v49 = *(v3 + 760);
  *(v3 + 464) = v48;
  *(v3 + 465) = *(v3 + 73);
  *(v3 + 468) = *(v3 + 76);
  v50 = *(v3 + 768);
  v51 = *(v3 + 976);
  *(v3 + 472) = v50;
  *(v3 + 488) = v51;
  *(v3 + 504) = v38;
  *(v3 + 512) = v39;
  *(v3 + 520) = v40;
  *(v3 + 400) = v48;
  *(v3 + 401) = *(v3 + 73);
  *(v3 + 404) = *(v3 + 76);
  *(v3 + 408) = v50;
  *(v3 + 424) = v51;
  *(v3 + 440) = v38;
  *(v3 + 448) = v39;
  *(v3 + 456) = v40;
  sub_100029908(v3 + 464, v3 + 16);
  sub_10004646C(v3 + 400);
  v53 = *(v3 + 480);
  v52 = *(v3 + 496);
  v54 = *(v3 + 464);
  *(v49 + 41) = *(v3 + 505);
  v49[1] = v53;
  v49[2] = v52;
  *v49 = v54;

  v55 = *(v3 + 8);

  return v55();
}

uint64_t sub_1000436F0()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1032);
  (*(v0 + 1040))(*(v0 + 142));

  return _swift_task_switch(sub_100043790, 0, 0);
}

uint64_t sub_100043790()
{
  v48 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1016);

  if (v2 + 1 == v3)
  {
    if (qword_1000A4058 != -1)
    {
      swift_once();
    }

    if (byte_1000A6D38 == 1)
    {
      sub_100018CE8(&v45, 0xD000000000000011, 0x8000000100083D80);
    }

    if (qword_1000A4050 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_1000A6D30;
    v5 = sub_100079DF0();
    v6 = [v4 valueForKey:v5];

    if (v6)
    {
      sub_10007A2D0();
      swift_unknownObjectRelease();
      sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
      sub_100018CE8(&v45, 0xD000000000000013, 0x8000000100083D60);
    }

    else
    {
      *(v0 + 528) = 0u;
      *(v0 + 544) = 0u;
      sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
    }

    if (qword_1000A4060 != -1)
    {
      swift_once();
    }

    if (byte_1000A6D39 == 1)
    {
      sub_100018CE8(&v45, 0x6976654474736574, 0xEA00000000006563);
    }

    if (qword_1000A4068 != -1)
    {
      swift_once();
    }

    if (byte_1000A6D3A == 1)
    {
      sub_100018CE8(&v45, 0xD000000000000014, 0x8000000100083D40);
    }

    v10 = *(v0 + 856);

    v11 = sub_100079B80();
    v12 = sub_10007A190();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v47 = v14;
      *v13 = 136315138;
      if (_swiftEmptySetSingleton[2])
      {
        v45 = 0x6769666E6F632820;
        v46 = 0xEA0000000000203ALL;
        *(v0 + 688) = _swiftEmptySetSingleton;

        sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
        sub_10004649C();
        sub_100025EBC();
        v15 = sub_100079FB0();
        v17 = v16;

        v50._countAndFlagsBits = v15;
        v50._object = v17;
        sub_100079F00(v50);

        v51._countAndFlagsBits = 41;
        v51._object = 0xE100000000000000;
        sub_100079F00(v51);

        v18 = v45;
        v19 = v46;
      }

      else
      {

        v18 = 0;
        v19 = 0xE000000000000000;
      }

      v23 = *(v0 + 992);
      v24 = *(v0 + 976);
      v25 = sub_100006B00(v18, v19, &v47);

      *(v13 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v11, v12, "started CloudTelemetryService%s", v13, 0xCu);
      sub_1000070A8(v14);
    }

    else
    {
      v20 = *(v0 + 992);
      v21 = *(v0 + 976);
    }

    v26 = *(v0 + 1000);
    v27 = *(v0 + 992);
    v28 = *(v0 + 143);
    v29 = *(v0 + 848);
    v30 = *(v0 + 840);
    v31 = *(v0 + 832);
    v32 = *(v0 + 824);
    v33 = *(v0 + 816);
    v34 = *(v0 + 808);
    v35 = *(v0 + 800);
    v36 = *(v0 + 140);
    v37 = *(v0 + 760);
    *(v0 + 464) = v36;
    *(v0 + 465) = *(v0 + 73);
    *(v0 + 468) = *(v0 + 76);
    v38 = *(v0 + 768);
    v39 = *(v0 + 976);
    *(v0 + 472) = v38;
    *(v0 + 488) = v39;
    *(v0 + 504) = v26;
    *(v0 + 512) = v27;
    *(v0 + 520) = v28;
    *(v0 + 400) = v36;
    *(v0 + 401) = *(v0 + 73);
    *(v0 + 404) = *(v0 + 76);
    *(v0 + 408) = v38;
    *(v0 + 424) = v39;
    *(v0 + 440) = v26;
    *(v0 + 448) = v27;
    *(v0 + 456) = v28;
    sub_100029908(v0 + 464, v0 + 16);
    sub_10004646C(v0 + 400);
    v41 = *(v0 + 480);
    v40 = *(v0 + 496);
    v42 = *(v0 + 464);
    *(v37 + 41) = *(v0 + 505);
    v37[1] = v41;
    v37[2] = v40;
    *v37 = v42;

    v43 = *(v0 + 8);

    return v43();
  }

  else
  {
    v7 = *(v0 + 1024) + 1;
    *(v0 + 1024) = v7;
    v8 = *(v0 + 1008);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = sub_10007A3D0();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    *(v0 + 1032) = v9;
    v22 = *v9 + 160;
    *(v0 + 1040) = *v22;
    *(v0 + 1048) = v22 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

    return _swift_task_switch(sub_1000436F0, v9, 0);
  }
}

uint64_t sub_100043E4C()
{
  *(v0 + 904) = 0;
  v11 = *(v0 + 880);
  v1 = *(v0 + 872);
  v2 = *(v0 + 848);
  v3 = *(v0 + 832);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v0 + 140);
  *(v0 + 912) = type metadata accessor for DiskCache();
  *(v0 + 144) = v7;
  *(v0 + 152) = v6;
  *(v0 + 160) = v5;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  sub_10001EDCC();
  sub_10003F7F0();
  sub_100079820();

  v1(v2, v4);
  v8 = swift_task_alloc();
  *(v0 + 920) = v8;
  *v8 = v0;
  v8[1] = sub_10004228C;
  v9 = *(v0 + 832);

  return DiskCache.__allocating_init(rootCacheURL:)(v9);
}

uint64_t sub_100043FBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1056);
  v8 = *v2;
  *(*v2 + 1064) = v1;

  if (v1)
  {
    v6 = sub_100044FC4;
  }

  else
  {
    *(v4 + 1072) = a1;
    v6 = sub_10004410C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10004410C()
{
  v69 = v0;
  v1 = *(v0 + 1072);
  v2 = *(v0 + 928);

  v3 = *(v0 + 1072);
  *(v0 + 944) = v3;
  v4 = *(v0 + 904);

  sub_1000096C4(v0 + 680, &qword_10009F0D8, &qword_10007E3C0);
  sub_1000096C4(v0 + 752, &qword_10009F0E0, &qword_10007E3C8);
  v5 = *(v0 + 904);
  if (v4 && v3)
  {
    v65 = *(v0 + 880);
    v6 = *(v0 + 872);
    v7 = *(v0 + 848);
    v8 = *(v0 + 824);
    v9 = *(v0 + 784);
    v10 = *(v0 + 776);
    v11 = *(v0 + 768);
    v12 = *(v0 + 140);
    type metadata accessor for SessionCoordinator();
    *(v0 + 336) = v12;
    *(v0 + 337) = *(v0 + 73);
    *(v0 + 340) = *(v0 + 76);
    *(v0 + 344) = v11;
    *(v0 + 352) = v10;
    *(v0 + 360) = v3;
    *(v0 + 368) = 0;
    *(v0 + 376) = 0;
    *(v0 + 384) = v5;
    *(v0 + 392) = 0;

    sub_10001EDCC();
    sub_10003F7F0();
    sub_100079820();

    v6(v7, v9);
    v13 = swift_task_alloc();
    *(v0 + 952) = v13;
    *v13 = v0;
    v13[1] = sub_100042D7C;
    v14 = *(v0 + 824);

    return sub_100013EF0(0, v3, v14);
  }

  v16 = *(v0 + 856);
  v17 = sub_100079B80();
  v18 = sub_10007A180();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "reporting disabled due to startup failure.", v19, 2u);
  }

  *(v0 + 1000) = 0;
  *(v0 + 992) = v5;
  *(v0 + 142) = 257;
  *(v0 + 984) = 0;
  *(v0 + 976) = v3;
  if ((*(v0 + 140) | 2) == 2)
  {
    v20 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v21 = swift_allocObject();
    v21[3] = 0;
    v21[4] = 0;
    v21[2] = v3;
    swift_beginAccess();
    v22 = *v20;
    v23 = v20[1];
    *v20 = &unk_10007E3B8;
    v20[1] = v21;

    sub_100029F90(v22);
    if (qword_1000A4078 != -1)
    {
      swift_once();
    }

    v24 = qword_1000A6D48;
    *(v0 + 1008) = qword_1000A6D48;
    if (v24 >> 62)
    {
      v25 = sub_10007A4A0();
      *(v0 + 1016) = v25;
      if (v25)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v25;
      if (v25)
      {
LABEL_13:
        if (v25 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v26 = *(v0 + 1008);
        if ((v26 & 0xC000000000000001) != 0)
        {
          v27 = sub_10007A3D0();
        }

        else
        {
          v27 = *(v26 + 32);
        }

        *(v0 + 1032) = v27;
        v28 = *v27 + 160;
        *(v0 + 1040) = *v28;
        *(v0 + 1048) = v28 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return _swift_task_switch(sub_1000436F0, v27, 0);
      }
    }
  }

  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D38 == 1)
  {
    sub_100018CE8(&v66, 0xD000000000000011, 0x8000000100083D80);
  }

  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = qword_1000A6D30;
  v30 = sub_100079DF0();
  v31 = [v29 valueForKey:v30];

  if (v31)
  {
    sub_10007A2D0();
    swift_unknownObjectRelease();
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
    sub_100018CE8(&v66, 0xD000000000000013, 0x8000000100083D60);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
  }

  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D39 == 1)
  {
    sub_100018CE8(&v66, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D3A == 1)
  {
    sub_100018CE8(&v66, 0xD000000000000014, 0x8000000100083D40);
  }

  v32 = *(v0 + 856);

  v33 = sub_100079B80();
  v34 = sub_10007A190();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v68 = v36;
    *v35 = 136315138;
    if (_swiftEmptySetSingleton[2])
    {
      v66 = 0x6769666E6F632820;
      v67 = 0xEA0000000000203ALL;
      *(v0 + 688) = _swiftEmptySetSingleton;

      sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
      sub_10004649C();
      sub_100025EBC();
      v37 = sub_100079FB0();
      v39 = v38;

      v71._countAndFlagsBits = v37;
      v71._object = v39;
      sub_100079F00(v71);

      v72._countAndFlagsBits = 41;
      v72._object = 0xE100000000000000;
      sub_100079F00(v72);

      v40 = v66;
      v41 = v67;
    }

    else
    {

      v40 = 0;
      v41 = 0xE000000000000000;
    }

    v44 = *(v0 + 992);
    v45 = *(v0 + 976);
    v46 = sub_100006B00(v40, v41, &v68);

    *(v35 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v33, v34, "started CloudTelemetryService%s", v35, 0xCu);
    sub_1000070A8(v36);
  }

  else
  {
    v42 = *(v0 + 992);
    v43 = *(v0 + 976);
  }

  v47 = *(v0 + 1000);
  v48 = *(v0 + 992);
  v49 = *(v0 + 143);
  v50 = *(v0 + 848);
  v51 = *(v0 + 840);
  v52 = *(v0 + 832);
  v53 = *(v0 + 824);
  v54 = *(v0 + 816);
  v55 = *(v0 + 808);
  v56 = *(v0 + 800);
  v57 = *(v0 + 140);
  v58 = *(v0 + 760);
  *(v0 + 464) = v57;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v59 = *(v0 + 768);
  v60 = *(v0 + 976);
  *(v0 + 472) = v59;
  *(v0 + 488) = v60;
  *(v0 + 504) = v47;
  *(v0 + 512) = v48;
  *(v0 + 520) = v49;
  *(v0 + 400) = v57;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v59;
  *(v0 + 424) = v60;
  *(v0 + 440) = v47;
  *(v0 + 448) = v48;
  *(v0 + 456) = v49;
  sub_100029908(v0 + 464, v0 + 16);
  sub_10004646C(v0 + 400);
  v62 = *(v0 + 480);
  v61 = *(v0 + 496);
  v63 = *(v0 + 464);
  *(v58 + 41) = *(v0 + 505);
  v58[1] = v62;
  v58[2] = v61;
  *v58 = v63;

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_100044AB0()
{
  v51 = v0;
  *(v0 + 712) = *(v0 + 928);
  swift_errorRetain();
  sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
  if (!swift_dynamicCast() || (*(v0 + 138) = *(v0 + 137), *(v0 + 139) = 1, sub_10002408C(), (sub_100079DE0() & 1) == 0))
  {
    v1 = *(v0 + 928);
    v2 = *(v0 + 856);
    swift_errorRetain();
    v3 = sub_100079B80();
    v4 = sub_10007A170();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 928);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v50 = v7;
      *v6 = 136446210;
      swift_getErrorValue();
      v8 = *(v0 + 560);
      v9 = *(v0 + 568);
      v10 = *(v0 + 576);
      v11 = sub_10007A6D0();
      v13 = sub_100006B00(v11, v12, &v50);

      *(v6 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "failed to open database file: %{public}s", v6, 0xCu);
      sub_1000070A8(v7);
    }
  }

  v14 = *(v0 + 880);
  v15 = *(v0 + 872);
  v16 = *(v0 + 848);
  v17 = *(v0 + 816);
  v18 = *(v0 + 808);
  v19 = *(v0 + 784);
  v20 = *(v0 + 776);
  v21 = *(v0 + 768);
  v22 = *(v0 + 140);
  v49 = [*(v0 + 864) defaultManager];
  *(v0 + 208) = v22;
  *(v0 + 209) = *(v0 + 73);
  *(v0 + 212) = *(v0 + 76);
  *(v0 + 216) = v21;
  *(v0 + 224) = v20;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  sub_10001EDCC();
  sub_10003F7F0();
  sub_100079820();

  v15(v18, v19);
  sub_100079840();
  v15(v17, v19);
  sub_100079800(v23);
  v25 = v24;
  v15(v16, v19);
  *(v0 + 720) = 0;
  LODWORD(v16) = [v49 removeItemAtURL:v25 error:v0 + 720];

  v26 = *(v0 + 720);
  if (v16)
  {
    v27 = v26;
  }

  else
  {
    v28 = *(v0 + 856);
    v29 = v26;
    sub_1000797A0();

    swift_willThrow();
    swift_errorRetain();
    v30 = sub_100079B80();
    v31 = sub_10007A170();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50 = v33;
      *v32 = 136446210;
      swift_getErrorValue();
      v34 = *(v0 + 584);
      v35 = *(v0 + 592);
      v36 = *(v0 + 600);
      v37 = sub_10007A6D0();
      v39 = sub_100006B00(v37, v38, &v50);

      *(v32 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "failed to clear cache directory with error: %{public}s", v32, 0xCu);
      sub_1000070A8(v33);
    }

    else
    {
    }
  }

  v40 = *(v0 + 880);
  v41 = *(v0 + 872);
  v42 = *(v0 + 848);
  v43 = *(v0 + 800);
  v44 = *(v0 + 784);
  *(v0 + 272) = *(v0 + 140);
  *(v0 + 273) = *(v0 + 73);
  *(v0 + 276) = *(v0 + 76);
  *(v0 + 280) = *(v0 + 768);
  *(v0 + 328) = 0;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 680) = 0;
  *(v0 + 752) = 0;
  sub_10001EDCC();
  sub_10003F7F0();
  sub_100079820();

  v41(v42, v44);
  v45 = swift_task_alloc();
  *(v0 + 1056) = v45;
  *v45 = v0;
  v45[1] = sub_100043FBC;
  v46 = *(v0 + 912);
  v47 = *(v0 + 800);

  return DiskCache.__allocating_init(rootCacheURL:)(v47);
}

uint64_t sub_100044FC4()
{
  v57 = v0;
  v1 = *(v0 + 1064);
  v2 = *(v0 + 928);

  sub_1000096C4(v0 + 680, &qword_10009F0D8, &qword_10007E3C0);
  sub_1000096C4(v0 + 752, &qword_10009F0E0, &qword_10007E3C8);
  v3 = *(v0 + 904);
  v4 = *(v0 + 856);
  v5 = sub_100079B80();
  v6 = sub_10007A180();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "reporting disabled due to startup failure.", v7, 2u);
  }

  *(v0 + 1000) = 0;
  *(v0 + 992) = v3;
  *(v0 + 142) = 257;
  *(v0 + 976) = 0u;
  if ((*(v0 + 140) | 2) == 2)
  {
    v8 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v9 = swift_allocObject();
    v9[3] = 0;
    v9[4] = 0;
    v9[2] = 0;
    swift_beginAccess();
    v10 = *v8;
    v11 = v8[1];
    *v8 = &unk_10007E3B8;
    v8[1] = v9;
    sub_100029F90(v10);
    if (qword_1000A4078 != -1)
    {
      swift_once();
    }

    v12 = qword_1000A6D48;
    *(v0 + 1008) = qword_1000A6D48;
    if (v12 >> 62)
    {
      v13 = sub_10007A4A0();
      *(v0 + 1016) = v13;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v13;
      if (v13)
      {
LABEL_8:
        if (v13 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v14 = *(v0 + 1008);
        if ((v14 & 0xC000000000000001) != 0)
        {
          v15 = sub_10007A3D0();
        }

        else
        {
          v15 = *(v14 + 32);
        }

        *(v0 + 1032) = v15;
        v16 = *v15 + 160;
        *(v0 + 1040) = *v16;
        *(v0 + 1048) = v16 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return _swift_task_switch(sub_1000436F0, v15, 0);
      }
    }
  }

  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D38 == 1)
  {
    sub_100018CE8(&v54, 0xD000000000000011, 0x8000000100083D80);
  }

  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_1000A6D30;
  v18 = sub_100079DF0();
  v19 = [v17 valueForKey:v18];

  if (v19)
  {
    sub_10007A2D0();
    swift_unknownObjectRelease();
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
    sub_100018CE8(&v54, 0xD000000000000013, 0x8000000100083D60);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
  }

  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D39 == 1)
  {
    sub_100018CE8(&v54, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D3A == 1)
  {
    sub_100018CE8(&v54, 0xD000000000000014, 0x8000000100083D40);
  }

  v20 = *(v0 + 856);

  v21 = sub_100079B80();
  v22 = sub_10007A190();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v56 = v24;
    *v23 = 136315138;
    if (_swiftEmptySetSingleton[2])
    {
      v54 = 0x6769666E6F632820;
      v55 = 0xEA0000000000203ALL;
      *(v0 + 688) = _swiftEmptySetSingleton;

      sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
      sub_10004649C();
      sub_100025EBC();
      v25 = sub_100079FB0();
      v27 = v26;

      v59._countAndFlagsBits = v25;
      v59._object = v27;
      sub_100079F00(v59);

      v60._countAndFlagsBits = 41;
      v60._object = 0xE100000000000000;
      sub_100079F00(v60);

      v28 = v54;
      v29 = v55;
    }

    else
    {

      v28 = 0;
      v29 = 0xE000000000000000;
    }

    v32 = *(v0 + 992);
    v33 = *(v0 + 976);
    v34 = sub_100006B00(v28, v29, &v56);

    *(v23 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v21, v22, "started CloudTelemetryService%s", v23, 0xCu);
    sub_1000070A8(v24);
  }

  else
  {
    v30 = *(v0 + 992);
    v31 = *(v0 + 976);
  }

  v35 = *(v0 + 1000);
  v36 = *(v0 + 992);
  v37 = *(v0 + 143);
  v38 = *(v0 + 848);
  v39 = *(v0 + 840);
  v40 = *(v0 + 832);
  v41 = *(v0 + 824);
  v42 = *(v0 + 816);
  v43 = *(v0 + 808);
  v44 = *(v0 + 800);
  v45 = *(v0 + 140);
  v46 = *(v0 + 760);
  *(v0 + 464) = v45;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v47 = *(v0 + 768);
  v48 = *(v0 + 976);
  *(v0 + 472) = v47;
  *(v0 + 488) = v48;
  *(v0 + 504) = v35;
  *(v0 + 512) = v36;
  *(v0 + 520) = v37;
  *(v0 + 400) = v45;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v47;
  *(v0 + 424) = v48;
  *(v0 + 440) = v35;
  *(v0 + 448) = v36;
  *(v0 + 456) = v37;
  sub_100029908(v0 + 464, v0 + 16);
  sub_10004646C(v0 + 400);
  v50 = *(v0 + 480);
  v49 = *(v0 + 496);
  v51 = *(v0 + 464);
  *(v46 + 41) = *(v0 + 505);
  v46[1] = v50;
  v46[2] = v49;
  *v46 = v51;

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_10004580C()
{
  v66 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 856);
  swift_errorRetain();
  v3 = sub_100079B80();
  v4 = sub_10007A180();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 960);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v64 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = *(v0 + 608);
    v9 = *(v0 + 616);
    v10 = *(v0 + 624);
    v11 = sub_10007A6D0();
    v13 = sub_100006B00(v11, v12, &v64);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "reporting disabled due to failure setting up session coordinator. %{public}s", v6, 0xCu);
    sub_1000070A8(v7);
  }

  else
  {
    v14 = *(v0 + 960);
  }

  v15 = *(v0 + 904);
  v16 = *(v0 + 944);
  *(v0 + 1000) = 0;
  *(v0 + 992) = v15;
  *(v0 + 142) = 257;
  *(v0 + 984) = 0;
  *(v0 + 976) = v16;
  if ((*(v0 + 140) | 2) == 2)
  {
    v17 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v18 = swift_allocObject();
    v18[3] = 0;
    v18[4] = 0;
    v18[2] = v16;
    swift_beginAccess();
    v19 = *v17;
    v20 = v17[1];
    *v17 = &unk_10007E3B8;
    v17[1] = v18;

    sub_100029F90(v19);
    if (qword_1000A4078 != -1)
    {
      swift_once();
    }

    v21 = qword_1000A6D48;
    *(v0 + 1008) = qword_1000A6D48;
    if (v21 >> 62)
    {
      v22 = sub_10007A4A0();
      *(v0 + 1016) = v22;
      if (v22)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v22;
      if (v22)
      {
LABEL_9:
        if (v22 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v23 = *(v0 + 1008);
        if ((v23 & 0xC000000000000001) != 0)
        {
          v24 = sub_10007A3D0();
        }

        else
        {
          v24 = *(v23 + 32);
        }

        *(v0 + 1032) = v24;
        v25 = *v24 + 160;
        *(v0 + 1040) = *v25;
        *(v0 + 1048) = v25 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return _swift_task_switch(sub_1000436F0, v24, 0);
      }
    }
  }

  if (qword_1000A4058 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D38 == 1)
  {
    sub_100018CE8(&v64, 0xD000000000000011, 0x8000000100083D80);
  }

  if (qword_1000A4050 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v26 = qword_1000A6D30;
  v27 = sub_100079DF0();
  v28 = [v26 valueForKey:v27];

  if (v28)
  {
    sub_10007A2D0();
    swift_unknownObjectRelease();
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
    sub_100018CE8(&v64, 0xD000000000000013, 0x8000000100083D60);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_1000096C4(v0 + 528, &qword_10009F0C0, &qword_10007E3A0);
  }

  if (qword_1000A4060 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D39 == 1)
  {
    sub_100018CE8(&v64, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_1000A4068 != -1)
  {
    swift_once();
  }

  if (byte_1000A6D3A == 1)
  {
    sub_100018CE8(&v64, 0xD000000000000014, 0x8000000100083D40);
  }

  v29 = *(v0 + 856);

  v30 = sub_100079B80();
  v31 = sub_10007A190();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v63 = v33;
    *v32 = 136315138;
    if (_swiftEmptySetSingleton[2])
    {
      v64 = 0x6769666E6F632820;
      v65 = 0xEA0000000000203ALL;
      *(v0 + 688) = _swiftEmptySetSingleton;

      sub_10000712C(&qword_10009F0C8, &qword_10007E3A8);
      sub_10004649C();
      sub_100025EBC();
      v34 = sub_100079FB0();
      v36 = v35;

      v68._countAndFlagsBits = v34;
      v68._object = v36;
      sub_100079F00(v68);

      v69._countAndFlagsBits = 41;
      v69._object = 0xE100000000000000;
      sub_100079F00(v69);

      v37 = v64;
      v38 = v65;
    }

    else
    {

      v37 = 0;
      v38 = 0xE000000000000000;
    }

    v41 = *(v0 + 992);
    v42 = *(v0 + 976);
    v43 = sub_100006B00(v37, v38, &v63);

    *(v32 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v30, v31, "started CloudTelemetryService%s", v32, 0xCu);
    sub_1000070A8(v33);
  }

  else
  {
    v39 = *(v0 + 992);
    v40 = *(v0 + 976);
  }

  v44 = *(v0 + 1000);
  v45 = *(v0 + 992);
  v46 = *(v0 + 143);
  v47 = *(v0 + 848);
  v48 = *(v0 + 840);
  v49 = *(v0 + 832);
  v50 = *(v0 + 824);
  v51 = *(v0 + 816);
  v52 = *(v0 + 808);
  v53 = *(v0 + 800);
  v54 = *(v0 + 140);
  v55 = *(v0 + 760);
  *(v0 + 464) = v54;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v56 = *(v0 + 768);
  v57 = *(v0 + 976);
  *(v0 + 472) = v56;
  *(v0 + 488) = v57;
  *(v0 + 504) = v44;
  *(v0 + 512) = v45;
  *(v0 + 520) = v46;
  *(v0 + 400) = v54;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v56;
  *(v0 + 424) = v57;
  *(v0 + 440) = v44;
  *(v0 + 448) = v45;
  *(v0 + 456) = v46;
  sub_100029908(v0 + 464, v0 + 16);
  sub_10004646C(v0 + 400);
  v59 = *(v0 + 480);
  v58 = *(v0 + 496);
  v60 = *(v0 + 464);
  *(v55 + 41) = *(v0 + 505);
  v55[1] = v59;
  v55[2] = v58;
  *v55 = v60;

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1000460C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_1000460EC, 0, 0);
}

uint64_t sub_1000460EC()
{
  v1 = v0[2];
  if (type metadata accessor for SubmitEventsActivity() == v1)
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = v0[3];

    v6 = sub_10001B388(v5, v4, v3);
    v7 = &qword_10009F0F8;
    v8 = type metadata accessor for SubmitEventsActivity;
  }

  else if (type metadata accessor for CacheCleanupActivity() == v1)
  {
    v9 = v0[3];

    v6 = sub_1000514C8(v10);
    v7 = &qword_10009F108;
    v8 = type metadata accessor for CacheCleanupActivity;
  }

  else
  {
    if (type metadata accessor for PostInstallActivity() != v1)
    {
      return sub_10007A490();
    }

    v6 = sub_10000A0C4();
    v7 = &qword_10009F100;
    v8 = type metadata accessor for PostInstallActivity;
  }

  v11 = sub_100046424(v7, v8);
  v12 = v0[1];

  return v12(v6, v11);
}

uint64_t sub_1000462CC()
{
  sub_10000712C(&qword_10009F0F0, &qword_10007E498);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10007E370;
  type metadata accessor for XPCActivity();
  v1 = type metadata accessor for SubmitEventsActivity();
  v2 = sub_100046424(&qword_10009F0F8, type metadata accessor for SubmitEventsActivity);
  *(v0 + 32) = XPCActivity.__allocating_init(handlerType:)(v1, v2);
  v3 = type metadata accessor for PostInstallActivity();
  v4 = sub_100046424(&qword_10009F100, type metadata accessor for PostInstallActivity);
  *(v0 + 40) = XPCActivity.__allocating_init(handlerType:)(v3, v4);
  v5 = type metadata accessor for CacheCleanupActivity();
  v6 = sub_100046424(&qword_10009F108, type metadata accessor for CacheCleanupActivity);
  result = XPCActivity.__allocating_init(handlerType:)(v5, v6);
  *(v0 + 48) = result;
  qword_1000A6D48 = v0;
  return result;
}

uint64_t sub_100046424(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004649C()
{
  result = qword_10009F0D0;
  if (!qword_10009F0D0)
  {
    sub_1000072D8(&qword_10009F0C8, &qword_10007E3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F0D0);
  }

  return result;
}

uint64_t sub_100046500()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100046548(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000465F8;

  return sub_1000460C8(a1, v8, v9, v4, v5, v6);
}

uint64_t sub_1000465F8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

unint64_t sub_100046700()
{
  result = qword_10009F0E8;
  if (!qword_10009F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F0E8);
  }

  return result;
}

__n128 sub_100046764(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100046780(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000467DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100046850()
{
  v0 = sub_10003F368();
  swift_beginAccess();
  v1 = *v0;
  v2 = sub_100079DF0();
  v3 = [v1 integerForKey:v2];

  if (v3 <= 1)
  {
    if (!v3)
    {
LABEL_21:
      v17 = sub_10003F2A0();
      swift_beginAccess();
      if (*v17)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    if (v3 == 1)
    {
      v4 = 0;
      goto LABEL_11;
    }

LABEL_16:
    if (qword_1000A4180 != -1)
    {
      swift_once();
    }

    v13 = sub_100079BA0();
    sub_1000070F4(v13, qword_1000A6D50);
    v14 = sub_100079B80();
    v15 = sub_10007A170();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      *(v16 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v14, v15, "invalid environmentType override from defaults: %{public}ld", v16, 0xCu);
    }

    goto LABEL_21;
  }

  if (v3 == 2)
  {
    v4 = 1;
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    v4 = 3;
    goto LABEL_11;
  }

  if (v3 != 3)
  {
    goto LABEL_16;
  }

  v4 = 2;
LABEL_11:
  if (qword_1000A4180 != -1)
  {
    swift_once();
  }

  v5 = sub_100079BA0();
  sub_1000070F4(v5, qword_1000A6D50);
  v6 = sub_100079B80();
  v7 = sub_10007A150();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446466;
    v10 = sub_100079E80();
    v12 = sub_100006B00(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2050;
    *(v8 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v6, v7, "overriding environmentType to %{public}s (%{public}ld) from defaults", v8, 0x16u);
    sub_1000070A8(v9);
  }

  return v4;
}

void *sub_100046B54(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = (a3 + 32);
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v5++;
    v17 = v8;
    a1(&v15, &v17);
    if (v3)
    {
      break;
    }

    v9 = v16;
    if (v16)
    {
      v10 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100049648(0, v6[2] + 1, 1, v6);
      }

      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        v6 = sub_100049648((v11 > 1), v12 + 1, 1, v6);
      }

      v6[2] = v12 + 1;
      v7 = &v6[2 * v12];
      *(v7 + 32) = v10;
      v7[5] = v9;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

Swift::Int sub_100046C84()
{
  v1 = *v0;
  sub_10007A730();
  sub_10007A740(v1 + 1);
  return sub_10007A760();
}

Swift::Int sub_100046CFC()
{
  v1 = *v0;
  sub_10007A730();
  sub_10007A740(v1 + 1);
  return sub_10007A760();
}

uint64_t sub_100046D40@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004BF50(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100046D8C()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6D50);
  sub_1000070F4(v0, qword_1000A6D50);
  return sub_100079B90();
}

uint64_t sub_100046E04()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v3 = 0x6E695F656C707061;
    if (v1 != 1)
    {
      v3 = 1684366707;
    }

    if (*v0)
    {
      return v3;
    }

    else
    {
      return 0x6D706F6C65766564;
    }
  }

  else if (*v0 > 4u)
  {
    if (v1 == 6)
    {
      return 0x765F646572616873;
    }

    else
    {
      return 0x5F68736572666572;
    }
  }

  else if (v1 == 3)
  {
    return 0x657361656C6572;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_100046F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = sub_10004BFC8(a1, a2);

  *a3 = v4;
  return result;
}

uint64_t sub_100046F50(uint64_t a1)
{
  v2 = sub_10004D9CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046F8C(uint64_t a1)
{
  v2 = sub_10004D9CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100046FC8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004C24C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_100047010()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000025;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t sub_10004706C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_100079780();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_100079770();
  sub_10004BF74();
  sub_100079760();
  if (v4)
  {

    return sub_1000071DC(a1, a2);
  }

  else
  {
    v13 = v24;
    if (*(v25 + 16) && (v14 = sub_10004A578(a3), (v15 & 1) != 0))
    {
      v16 = *(*(v25 + 56) + 8 * v14);
    }

    else
    {
      v16 = sub_10004C8C8(_swiftEmptyArrayStorage);
    }

    if (v23)
    {
      v17 = 86400;
    }

    else
    {
      v17 = v22;
    }

    v19 = v17;
    if (v24)
    {

      v18 = v21;

      sub_1000071DC(a1, a2);
    }

    else
    {
      v18 = v21;

      v13 = sub_10004C9F4(_swiftEmptyArrayStorage);

      sub_1000071DC(a1, a2);
    }

    *a4 = v16;
    *(a4 + 8) = v19;
    *(a4 + 16) = v20;
    *(a4 + 24) = v18;
    *(a4 + 32) = v13;
  }

  return result;
}

uint64_t sub_10004723C(void *a1)
{
  v75 = a1;
  v2 = 0;
  v3 = sub_100079AC0();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  __chkstk_darwin(v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100079AE0();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  __chkstk_darwin(v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000712C(&unk_10009ED68, &qword_10007E4D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v63 - v13;
  v15 = *v1;
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;

  v70 = 0;
  v71 = _swiftEmptyArrayStorage;
  if (!v18)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v21 = *(v15 + 56) + ((v2 << 11) | (32 * v20));
      if (!*(v21 + 24))
      {
        break;
      }

      if (!v18)
      {
        goto LABEL_6;
      }
    }

    v23 = *(v21 + 8);
    v74 = *(v21 + 16);
    v24 = *v21;
    v66 = v23;
    v67 = v24;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_100049964(0, *(v71 + 2) + 1, 1, v71);
    }

    v26 = *(v71 + 2);
    v25 = *(v71 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v64 = *(v71 + 2);
      v65 = v26 + 1;
      v31 = sub_100049964((v25 > 1), v26 + 1, 1, v71);
      v26 = v64;
      v27 = v65;
      v71 = v31;
    }

    v28 = v71;
    *(v71 + 2) = v27;
    v29 = &v28[24 * v26];
    v30 = v66;
    *(v29 + 4) = v67;
    *(v29 + 5) = v30;
    *(v29 + 6) = v74;
  }

  while (v18);
  while (1)
  {
LABEL_6:
    v22 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = *(v15 + 64 + 8 * v22);
    ++v2;
    if (v18)
    {
      v2 = v22;
      goto LABEL_4;
    }
  }

  v32 = *(v71 + 2);
  if (!v32)
  {

    return 6;
  }

  LODWORD(v74) = sub_10003F7D8();
  sub_100079AA0();
  sub_100079AD0();
  (*(v68 + 8))(v10, v69);
  sub_100079AB0();
  (*(v72 + 8))(v6, v73);
  v33 = sub_100079A90();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v14, 1, v33) == 1)
  {
    isUniquelyReferenced_nonNull_native = sub_1000096C4(v14, &unk_10009ED68, &qword_10007E4D0);
    v72 = 0;
    v73 = 0;
  }

  else
  {
    v72 = sub_100079A80();
    v73 = v37;
    isUniquelyReferenced_nonNull_native = (*(v34 + 8))(v14, v33);
  }

  v38 = v70;
  v39 = v32 - 1;
  v40 = _swiftEmptyArrayStorage;
  v41 = (v71 + 48);
  while (2)
  {
    v42 = *(v41 - 1);
    v43 = *v41;
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    *(&v63 - 2) = v75;

    sub_100047AB4(sub_10004CC14, v43, &v76);

    v89[10] = v86;
    v89[11] = v87;
    v89[6] = v82;
    v89[7] = v83;
    v89[8] = v84;
    v89[9] = v85;
    v89[2] = v78;
    v89[3] = v79;
    v89[4] = v80;
    v89[5] = v81;
    v89[0] = v76;
    v89[1] = v77;
    v99 = v85;
    v100 = v86;
    v101 = v87;
    v102 = v88;
    v95 = v81;
    v96 = v82;
    v97 = v83;
    v98 = v84;
    v91 = v77;
    v92 = v78;
    v93 = v79;
    v94 = v80;
    v89[12] = v88;
    v90 = v76;
    isUniquelyReferenced_nonNull_native = sub_10004CCE4(&v90);
    if (isUniquelyReferenced_nonNull_native == 1)
    {
      v44 = v40;
      if (!v39)
      {
        break;
      }

      goto LABEL_55;
    }

    if (v102 == 2)
    {
      v44 = v40;
      if ((v74 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_33:
      v49 = COERCE_DOUBLE(sub_10004CB10(*(&v102 + 1), v72, v73));
      if (v50)
      {
        if ((v93 & 1) != 0 || (v51 = *(&v92 + 1), *(&v92 + 1) >= 1.0))
        {
LABEL_36:
          sub_1000096C4(v89, &qword_10009F128, &qword_10007E4D8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_100049870(0, *(v44 + 2) + 1, 1, v44);
            v44 = isUniquelyReferenced_nonNull_native;
          }

          v46 = *(v44 + 2);
          v52 = *(v44 + 3);
          v47 = v46 + 1;
          v48 = 1;
          if (v46 >= v52 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_100049870((v52 > 1), v46 + 1, 1, v44);
            v44 = isUniquelyReferenced_nonNull_native;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v51 = v49;
        if (v49 >= 1.0)
        {
          goto LABEL_36;
        }
      }

      v53 = v91;
      if (v91)
      {

        sub_1000096C4(v89, &qword_10009F128, &qword_10007E4D8);
        v70 = type metadata accessor for Session();
        v54 = v75[3];
        v55 = v75[4];
        sub_10000751C(v75, v54);
        v56 = (*(v55 + 48))(v54, v55);
        v57 = COERCE_DOUBLE(sub_100009E0C(v53, v56));
        v59 = v58;

        if ((v59 & 1) == 0)
        {
          v44 = v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_100049870(0, *(v40 + 2) + 1, 1, v40);
            v44 = isUniquelyReferenced_nonNull_native;
          }

          v46 = *(v44 + 2);
          v60 = *(v44 + 3);
          v47 = v46 + 1;
          if (v46 >= v60 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_100049870((v60 > 1), v46 + 1, 1, v44);
            v44 = isUniquelyReferenced_nonNull_native;
          }

          v48 = v51 > v57;
          goto LABEL_54;
        }
      }

      else
      {
        sub_1000096C4(v89, &qword_10009F128, &qword_10007E4D8);
      }

      v44 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100049870(0, *(v40 + 2) + 1, 1, v40);
        v44 = isUniquelyReferenced_nonNull_native;
      }

      v46 = *(v44 + 2);
      v61 = *(v44 + 3);
      v47 = v46 + 1;
      if (v46 >= v61 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100049870((v61 > 1), v46 + 1, 1, v44);
        v44 = isUniquelyReferenced_nonNull_native;
      }

      v48 = 2;
    }

    else
    {
      v44 = v40;
      if ((v74 | sub_100055B60(v102 & 1)))
      {
        goto LABEL_33;
      }

LABEL_27:
      sub_1000096C4(v89, &qword_10009F128, &qword_10007E4D8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100049870(0, *(v44 + 2) + 1, 1, v44);
        v44 = isUniquelyReferenced_nonNull_native;
      }

      v46 = *(v44 + 2);
      v45 = *(v44 + 3);
      v47 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100049870((v45 > 1), v46 + 1, 1, v44);
        v44 = isUniquelyReferenced_nonNull_native;
      }

      v48 = 3;
    }

LABEL_54:
    *(v44 + 2) = v47;
    v44[v46 + 32] = v48;
    if (v39)
    {
LABEL_55:
      v40 = v44;
      --v39;
      v41 += 3;
      continue;
    }

    break;
  }

  *&v76 = v44;

  sub_10004AFA8(&v76);
  if (v38)
  {
LABEL_63:

    __break(1u);
    return result;
  }

  if (*(v76 + 16))
  {
    v36 = *(v76 + 32);
  }

  else
  {

    return 5;
  }

  return v36;
}

void sub_100047AB4(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 32);
    while (1)
    {
      v8 = v7[9];
      v9 = v7[11];
      v69 = v7[10];
      v70 = v9;
      v10 = v7[11];
      v71 = v7[12];
      v11 = v7[5];
      v12 = v7[7];
      v65 = v7[6];
      v66 = v12;
      v13 = v7[7];
      v14 = v7[9];
      v67 = v7[8];
      v68 = v14;
      v15 = v7[1];
      v16 = v7[3];
      v61 = v7[2];
      v62 = v16;
      v17 = v7[3];
      v18 = v7[5];
      v63 = v7[4];
      v64 = v18;
      v19 = v7[1];
      v59 = *v7;
      v60 = v19;
      v56 = v69;
      v57 = v10;
      v58 = v7[12];
      v52 = v65;
      v53 = v13;
      v54 = v67;
      v55 = v8;
      v48 = v61;
      v49 = v17;
      v50 = v63;
      v51 = v11;
      v46 = v59;
      v47 = v15;
      sub_10004D64C(&v59, &v33);
      v20 = a1(&v46);
      if (v3)
      {
        v43 = v56;
        v44 = v57;
        v45 = v58;
        v39 = v52;
        v40 = v53;
        v41 = v54;
        v42 = v55;
        v35 = v48;
        v36 = v49;
        v37 = v50;
        v38 = v51;
        v33 = v46;
        v34 = v47;
        sub_10004D6A8(&v33);
        return;
      }

      if (v20)
      {
        break;
      }

      v43 = v56;
      v44 = v57;
      v45 = v58;
      v39 = v52;
      v40 = v53;
      v41 = v54;
      v42 = v55;
      v35 = v48;
      v36 = v49;
      v37 = v50;
      v38 = v51;
      v33 = v46;
      v34 = v47;
      sub_10004D6A8(&v33);
      v7 += 13;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v43 = v56;
    v44 = v57;
    v45 = v58;
    v39 = v52;
    v40 = v53;
    v41 = v54;
    v42 = v55;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v38 = v51;
    v33 = v46;
    v34 = v47;
    XPCIncomingConnection.init(conn:)(&v33);
    v28 = v44;
    a3[10] = v43;
    a3[11] = v28;
    a3[12] = v45;
    v29 = v40;
    a3[6] = v39;
    a3[7] = v29;
    v30 = v42;
    a3[8] = v41;
    a3[9] = v30;
    v31 = v36;
    a3[2] = v35;
    a3[3] = v31;
    v32 = v38;
    a3[4] = v37;
    a3[5] = v32;
    v27 = v33;
    v26 = v34;
  }

  else
  {
LABEL_6:
    sub_10004DDF8(&v59);
    v21 = v70;
    a3[10] = v69;
    a3[11] = v21;
    a3[12] = v71;
    v22 = v66;
    a3[6] = v65;
    a3[7] = v22;
    v23 = v68;
    a3[8] = v67;
    a3[9] = v23;
    v24 = v62;
    a3[2] = v61;
    a3[3] = v24;
    v25 = v64;
    a3[4] = v63;
    a3[5] = v25;
    v27 = v59;
    v26 = v60;
  }

  *a3 = v27;
  a3[1] = v26;
}

uint64_t sub_100047CF0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v236 = a2;
  v5 = type metadata accessor for SessionConfiguration.Backend(0);
  v233 = *(v5 - 8);
  v234 = v5;
  v6 = *(v233 + 64);
  v7 = __chkstk_darwin(v5);
  v235 = (&v222 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v228 = &v222 - v10;
  __chkstk_darwin(v9);
  v227 = &v222 - v11;
  v12 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v226 = &v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000712C(&qword_10009DFB0, &qword_10007BA50);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v246 = &v222 - v17;
  v250 = sub_1000798B0();
  v18 = *(v250 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v250);
  v231 = &v222 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v230 = &v222 - v22;
  v260 = sub_100079AC0();
  v23 = *(v260 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v260);
  v249 = &v222 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v252 = &v222 - v27;
  v259 = sub_100079AE0();
  v28 = *(v259 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v259);
  v248 = &v222 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v251 = &v222 - v32;
  v33 = sub_10000712C(&unk_10009ED68, &qword_10007E4D0);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v247 = &v222 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v222 - v37;
  v39 = a1[3];
  v40 = a1[4];
  v254 = a1;
  sub_10000751C(a1, v39);
  (*(v40 + 8))(v287, v39, v40);
  v289 = v288;
  v269 = *(&v288 + 1);
  v271 = v288;

  sub_100019EF4(v287);
  v239 = v3;
  v41 = *v3;
  v42 = v38;
  v43 = *(v41 + 64);
  v242 = v41 + 64;
  v44 = 1 << *(v41 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v43;
  v47 = (v44 + 63) >> 6;
  v257 = (v23 + 8);
  v258 = (v28 + 8);
  v245 = (v18 + 48);
  v224 = (v18 + 16);
  v225 = (v18 + 32);
  v223 = (v18 + 8);

  v48 = v46;
  v49 = v47;
  v50 = 0;
  v51 = 0;
  *&v52 = 136315138;
  v238 = v52;
  *&v52 = 136446210;
  v232 = v52;
  v237 = _swiftEmptyArrayStorage;
  v240 = _swiftEmptyArrayStorage;
  v241 = v41;
  v253 = v38;
  v244 = v47;
  while (1)
  {
LABEL_7:
    if (v48)
    {
      goto LABEL_12;
    }

    do
    {
      v54 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        goto LABEL_134;
      }

      if (v54 >= v49)
      {
        sub_10002A4B4(&v289);

        v216 = v239[2];
        v217 = v239[3];

        v218 = variable initialization expression of Daemon.mode();
        result = sub_1000690FC(v237, v240, v218 & 1, v216, v217, &v274);
        v220 = v275;
        v221 = v236;
        *v236 = v274;
        v221[1] = v220;
        *(v221 + 4) = v276;
        return result;
      }

      v48 = *(v242 + 8 * v54);
      ++v50;
    }

    while (!v48);
    v50 = v54;
LABEL_12:
    v55 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v56 = v55 | (v50 << 6);
    v57 = *(v41 + 56) + 32 * v56;
    v59 = *v57;
    v58 = *(v57 + 8);
    v60 = *(v57 + 16);
    v61 = *(v57 + 24);
    v268 = v60;
    v263 = v59;
    if (!v61)
    {
      break;
    }

    if (v61 == 1)
    {
      v255 = v50;
      v256 = v48;
      sub_10004CCFC(v59, v58, v60, 1);

      v62 = sub_10003F2A0();
      swift_beginAccess();
      if (*v62)
      {
        v243 = v58;
        v262 = *(v59 + 16);
        if (v262)
        {
          v63 = 0;
          v64 = (v59 + 96);
          while (1)
          {
            if (v63 >= *(v59 + 16))
            {
              goto LABEL_136;
            }

            v264 = v63;
            v265 = &v222;
            v270 = v51;
            v65 = *(v64 - 8);
            v66 = *(v64 - 7);
            LODWORD(v261) = *(v64 - 48);
            v68 = *(v64 - 5);
            v67 = *(v64 - 4);
            v69 = *(v64 - 24);
            v70 = *(v64 - 2);
            v71 = *(v64 - 1);
            v266 = v65;
            v267 = v70;
            v72 = *v64;
            v274 = v289;
            __chkstk_darwin(v65);
            *(&v222 - 2) = &v274;

            v73 = v69;
            sub_10004CDB8(v68, v67, v69);
            v74 = v71;
            v75 = v72;
            sub_10004CDD0();
            v51 = v270;
            if (sub_10004AEFC(sub_10004CD9C, (&v222 - 4), v266))
            {
              break;
            }

            v63 = (v264 + 1);
            sub_10004CDDC(v68, v67, v73);
            sub_10004CDF4();
            v64 += 72;
            v59 = v263;
            v60 = v268;
            if (v262 == v63)
            {
              goto LABEL_4;
            }
          }

          v265 = v68;
          v165 = v67;
          LODWORD(v270) = v73;
          LODWORD(v264) = v75;
          v166 = v74;
          v167 = v263;
          v168 = v243;
          v169 = v268;
          sub_10004CD4C(v263, v243, v268, 1);
          if (v261)
          {
            v66 = 1.0;
          }

          v170 = v254[3];
          v171 = v254[4];
          sub_10000751C(v254, v170);
          v172 = (*(v171 + 24))(v170, v171);
          v42 = v253;
          v41 = v241;
          if (v172 >= v66)
          {

            sub_10004CDDC(v265, v165, v270);
            sub_10004CDF4();
            v151 = v167;
            v152 = v168;
            v153 = v169;
            goto LABEL_77;
          }

          v173 = v239[4];
          v174 = sub_10004CE98(v265, v165, v270, v173);
          if (v264)
          {
            if (*(v173 + 16))
            {

              v261 = sub_10000A0FC(v267, v166);
              LODWORD(v262) = v175;
              sub_10004CDF4();
              if (v262)
              {
                v176 = *(v173 + 56) + 16 * v261;
                if (*(v176 + 8) == 1)
                {
                  v177 = *v176;
                  goto LABEL_91;
                }
              }

              v178 = _swiftEmptyArrayStorage;
            }

            else
            {
              v178 = _swiftEmptyArrayStorage;
            }
          }

          else
          {
LABEL_91:
          }

          sub_10004CDDC(v265, v165, v270);
          sub_10004CDF4();
          v195 = v178[2];
          if (v195)
          {
            v264 = v174;
            v270 = v51;
            *&v274 = _swiftEmptyArrayStorage;
            sub_10004BA84(0, v195, 0);
            v196 = v274;
            v267 = v195 - 1;
            v262 = v178;
            for (i = v178 + 9; ; i += 6)
            {
              v198 = *(i - 5);
              v199 = *(i - 4);
              LODWORD(v265) = *(i - 24);
              v200 = *(i - 1);
              v266 = *(i - 2);
              v201 = *i;
              *&v274 = v196;
              v203 = *(v196 + 16);
              v202 = *(v196 + 24);
              swift_bridgeObjectRetain_n();

              if (v203 >= v202 >> 1)
              {
                sub_10004BA84((v202 > 1), v203 + 1, 1);
                v196 = v274;
              }

              *(v196 + 16) = v203 + 1;
              v204 = v196 + (v203 << 6);
              *(v204 + 32) = v198;
              *(v204 + 40) = v199;
              *(v204 + 48) = v198;
              *(v204 + 56) = v199;
              *(v204 + 64) = v265;
              v205 = *(&v272 + 3);
              *(v204 + 65) = v272;
              *(v204 + 68) = v205;
              *(v204 + 72) = v266;
              *(v204 + 80) = v200;
              *(v204 + 88) = v201;
              if (!v267)
              {
                break;
              }

              --v267;
            }

            v42 = v253;
            v41 = v241;
            v51 = v270;
            v206 = v268;
            v174 = v264;
            if (*(v196 + 16))
            {
LABEL_121:
              sub_10000712C(&qword_10009F130, &qword_10007E4E0);
              v207 = sub_10007A4D0();
LABEL_124:
              *&v274 = v207;

              sub_10004A118(v208, 1, &v274);
              if (v51)
              {
                goto LABEL_138;
              }

              v209 = XPCIncomingConnection.init(conn:)(v174);
              v210 = v235;
              *v235 = v211;
              v210[1] = v209;
              v210[2] = v212;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v240 = sub_100049BCC(0, v240[2] + 1, 1, v240);
              }

              v214 = v240[2];
              v213 = v240[3];
              if (v214 >= v213 >> 1)
              {
                v240 = sub_100049BCC(v213 > 1, v214 + 1, 1, v240);
              }

              sub_10004CD4C(v263, v243, v206, 1);
              v215 = v240;
              v240[2] = v214 + 1;
              sub_10004DD3C(v235, v215 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v214, type metadata accessor for SessionConfiguration.Backend);
              v49 = v244;
              v50 = v255;
              v48 = v256;
              v51 = 0;
              continue;
            }
          }

          else
          {

            v206 = v268;
            if (_swiftEmptyArrayStorage[2])
            {
              goto LABEL_121;
            }
          }

          v207 = &_swiftEmptyDictionarySingleton;
          goto LABEL_124;
        }

LABEL_4:
        v53 = v243;
        sub_10004CD4C(v59, v243, v60, 1);
        sub_10004CD4C(v59, v53, v60, 1);
        v42 = v253;
LABEL_5:
        v41 = v241;
      }

      else
      {
        sub_10004CD4C(v59, v58, v60, 1);
        v151 = v59;
        v152 = v58;
        v153 = v60;
LABEL_77:
        sub_10004CD4C(v151, v152, v153, 1);
      }

LABEL_6:
      v49 = v244;
      v50 = v255;
      v48 = v256;
    }
  }

  v267 = *(v60 + 16);
  if (!v267)
  {
    goto LABEL_7;
  }

  v255 = v50;
  v256 = v48;
  v76 = (*(v41 + 48) + 16 * v56);
  v77 = v76[1];
  v229 = *v76;
  v261 = v77;

  v243 = v58;
  sub_10004CCFC(v59, v58, v60, 0);

  if (*(v60 + 16))
  {
    v78 = 0;
    v266 = v60 + 32;
    while (2)
    {
      v79 = (v266 + 208 * v78);
      v274 = *v79;
      v80 = v79[1];
      v81 = v79[2];
      v82 = v79[4];
      v277 = v79[3];
      v278 = v82;
      v275 = v80;
      v276 = v81;
      v83 = v79[5];
      v84 = v79[6];
      v85 = v79[8];
      v281 = v79[7];
      v282 = v85;
      v279 = v83;
      v280 = v84;
      v86 = v79[9];
      v87 = v79[10];
      v88 = v79[12];
      v285 = v79[11];
      v286 = v88;
      v283 = v86;
      v284 = v87;
      if (__PAIR128__(v269, v271) != v274 && (sub_10007A610() & 1) == 0)
      {
        goto LABEL_72;
      }

      v89 = v286;
      if (v286 == 2)
      {
        sub_10004D64C(&v274, &v272);
        v90 = 0;
      }

      else
      {
        sub_10004D64C(&v274, &v272);
        v90 = sub_100055B60(v89 & 1);
      }

      v91 = BYTE1(v286) != 2 && sub_100055B60(BYTE1(v286) & 1);
      if (((sub_10003F7D8() | v90) & 1) == 0)
      {
        sub_10004D6A8(&v274);

        if (qword_1000A4180 != -1)
        {
          swift_once();
        }

        v154 = sub_100079BA0();
        sub_1000070F4(v154, qword_1000A6D50);
        v155 = v261;

        v156 = sub_100079B80();
        v157 = sub_10007A160();

        v158 = os_log_type_enabled(v156, v157);
        v41 = v241;
        if (v158)
        {
          v159 = swift_slowAlloc();
          v270 = v156;
          v160 = v159;
          v161 = swift_slowAlloc();
          v272 = v161;
          *v160 = v232;
          v162 = sub_100006B00(v229, v155, &v272);

          *(v160 + 4) = v162;
          v163 = v157;
          v164 = v270;
          _os_log_impl(&_mh_execute_header, v270, v163, "skipping %{public}s: dnu disabled", v160, 0xCu);
          sub_1000070A8(v161);

          sub_10004CD4C(v263, v243, v60, 0);
        }

        else
        {

          sub_10004CD4C(v263, v243, v60, 0);
        }

        goto LABEL_6;
      }

      LODWORD(v264) = v91;
      LODWORD(v265) = v89;
      v92 = sub_100079DF0();
      v93 = MGCopyAnswer();

      if (!v93)
      {
        goto LABEL_137;
      }

      v94 = v279;
      type metadata accessor for CFString(0);
      v95 = swift_dynamicCastUnknownClassUnconditional();
      v96 = sub_100079E20();
      v98 = v97;

      if (v94)
      {
        v272 = v96;
        v273 = v98;
        __chkstk_darwin(v99);
        *(&v222 - 2) = &v272;

        v100 = sub_10004AEFC(sub_10004DFFC, (&v222 - 4), v94);

        if ((v100 & 1) == 0)
        {

LABEL_41:
          sub_10004D6A8(&v274);
          goto LABEL_72;
        }
      }

      v101 = *(&v278 + 1);
      if (*(&v278 + 1))
      {
        v272 = v96;
        v273 = v98;
        __chkstk_darwin(v99);
        *(&v222 - 2) = &v272;

        v102 = sub_10004AEFC(sub_10004DFFC, (&v222 - 4), v101);

        if (v102)
        {
          goto LABEL_41;
        }

        v103 = *(&v285 + 1);
        if (!*(&v285 + 1))
        {
          goto LABEL_46;
        }
      }

      else
      {

        v103 = *(&v285 + 1);
        if (!*(&v285 + 1))
        {
          goto LABEL_46;
        }
      }

      v104 = v251;
      sub_100079AA0();
      v105 = v252;
      sub_100079AD0();
      (*v258)(v104, v259);
      sub_100079AB0();
      (*v257)(v105, v260);
      v106 = sub_100079A90();
      v107 = *(v106 - 8);
      if ((*(v107 + 48))(v42, 1, v106) == 1)
      {

        sub_10004D6A8(&v274);
        sub_1000096C4(v42, &unk_10009ED68, &qword_10007E4D0);
        goto LABEL_72;
      }

      v108 = sub_100079A80();
      v110 = v109;
      v111 = (*(v107 + 8))(v42, v106);
      v272 = v108;
      v273 = v110;
      __chkstk_darwin(v111);
      *(&v222 - 2) = &v272;
      LOBYTE(v108) = sub_10004AEFC(sub_10004DFFC, (&v222 - 4), v103);

      if ((v108 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_46:
      v112 = v51;
      v114 = v247;
      v113 = v248;
      sub_100079AA0();
      v115 = v249;
      sub_100079AD0();
      (*v258)(v113, v259);
      sub_100079AB0();
      (*v257)(v115, v260);
      v116 = sub_100079A90();
      v117 = *(v116 - 8);
      if ((*(v117 + 48))(v114, 1, v116) == 1)
      {
        sub_1000096C4(v114, &unk_10009ED68, &qword_10007E4D0);
        goto LABEL_56;
      }

      v118 = *(&v286 + 1);
      v262 = sub_100079A80();
      v270 = v119;
      v120 = (*(v117 + 8))(v114, v116);
      if (v118)
      {
        v121 = *(v118 + 16);
        v122 = v112;
        if (v121)
        {
          v123 = 0;
          v124 = (v118 + 40);
          while (1)
          {
            if (v123 >= *(v118 + 16))
            {
              goto LABEL_135;
            }

            v125 = *(v124 - 1);
            v126 = *v124;
            v272 = v262;
            v273 = v270;
            __chkstk_darwin(v120);
            *(&v222 - 2) = &v272;
            swift_bridgeObjectRetain_n();
            v127 = sub_10004AEFC(sub_10004DFFC, (&v222 - 4), v125);

            if (v127)
            {
              break;
            }

            ++v123;
            v124 += 2;
            if (v121 == v123)
            {
              goto LABEL_54;
            }
          }

          v60 = v268;
LABEL_60:
          v128 = v275;
          v270 = v122;
          if (!v275)
          {
            goto LABEL_62;
          }

          type metadata accessor for Session();
          v129 = v254[3];
          v130 = v254[4];
          sub_10000751C(v254, v129);
          v131 = (*(v130 + 48))(v129, v130);
          v132 = COERCE_DOUBLE(sub_100009E0C(v128, v131));
          v134 = v133;

          if ((v134 & 1) == 0)
          {
            if (v132 >= v126)
            {
LABEL_94:

              sub_10004D6A8(&v274);
              sub_10004CD4C(v263, v243, v60, 0);

              v42 = v253;
              v41 = v241;
LABEL_111:
              v49 = v244;
              v50 = v255;
              v48 = v256;
              v51 = v270;
              goto LABEL_7;
            }
          }

          else
          {
LABEL_62:
            v135 = v254[3];
            v136 = v254[4];
            sub_10000751C(v254, v135);
            if ((*(v136 + 24))(v135, v136) >= v126)
            {
              goto LABEL_94;
            }
          }

          v137 = BYTE1(v285);
          v138 = *(&v282 + 1);
          v139 = v283;
          v140 = BYTE8(v283);
          v141 = *(&v275 + 1);
          v142 = v276;
          v143 = v246;
          sub_100079880();
          if ((*v245)(v143, 1, v250) != 1)
          {

            v179 = v230;
            v180 = v143;
            v181 = v250;
            (*v225)(v230, v180, v250);
            v182 = v239[4];
            sub_10004CDD0();
            v183 = sub_10004CE98(v138, v139, v140, v182);
            sub_10004CDF4();
            if (v128)
            {
              v184 = v128;
            }

            else
            {
              v184 = _swiftEmptyArrayStorage;
            }

            (*v224)(v231, v179, v181);

            sub_10004D6A8(&v274);
            v185 = sub_100055B60((v137 == 2) | v137 & 1);
            v186 = v265 != 2 && sub_100055B60(v265 & 1);
            v187 = v226;
            v42 = v253;
            v41 = v241;
            sub_100069034(v229, v261, v184, v231, v183, v185, v186, v226, v126);
            v188 = v268;
            if (v264)
            {
              sub_10004D6FC(v187, v227);
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v240 = sub_100049BCC(0, v240[2] + 1, 1, v240);
              }

              v189 = v240;
              v191 = v240[2];
              v190 = v240[3];
              v192 = v191 + 1;
              if (v191 >= v190 >> 1)
              {
                v189 = sub_100049BCC(v190 > 1, v191 + 1, 1, v240);
                v193 = v227;
                v240 = v189;
              }

              else
              {
                v193 = v227;
              }
            }

            else
            {
              sub_10004D6FC(v187, v228);
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v237 = sub_100049BCC(0, v237[2] + 1, 1, v237);
              }

              v189 = v237;
              v191 = v237[2];
              v194 = v237[3];
              v192 = v191 + 1;
              if (v191 >= v194 >> 1)
              {
                v189 = sub_100049BCC(v194 > 1, v191 + 1, 1, v237);
                v193 = v228;
                v237 = v189;
              }

              else
              {
                v193 = v228;
              }
            }

            sub_10004CD4C(v263, v243, v188, 0);
            sub_10004D760(v187);
            (*v223)(v230, v250);
            v189[2] = v192;
            sub_10004DD3C(v193, v189 + ((*(v233 + 80) + 32) & ~*(v233 + 80)) + *(v233 + 72) * v191, type metadata accessor for SessionConfiguration.Backend);
            goto LABEL_111;
          }

          sub_1000096C4(v143, &qword_10009DFB0, &qword_10007BA50);
          if (qword_1000A4180 != -1)
          {
            swift_once();
          }

          v144 = sub_100079BA0();
          sub_1000070F4(v144, qword_1000A6D50);
          sub_10004D64C(&v274, &v272);
          v145 = sub_100079B80();
          v146 = sub_10007A170();
          sub_10004D6A8(&v274);
          v147 = os_log_type_enabled(v145, v146);
          v51 = v270;
          v60 = v268;
          if (v147)
          {
            v148 = swift_slowAlloc();
            v149 = swift_slowAlloc();
            v272 = v149;
            *v148 = v238;

            sub_10004D6A8(&v274);
            v150 = sub_100006B00(v141, v142, &v272);

            *(v148 + 4) = v150;
            _os_log_impl(&_mh_execute_header, v145, v146, "invalid URL %s", v148, 0xCu);
            sub_1000070A8(v149);
          }

          else
          {

            sub_10004D6A8(&v274);
          }

          v42 = v253;
LABEL_72:
          if (++v78 == v267)
          {

            sub_10004CD4C(v263, v243, v60, 0);
            goto LABEL_5;
          }

          if (v78 >= *(v60 + 16))
          {
            goto LABEL_134;
          }

          continue;
        }

LABEL_54:

        v60 = v268;
      }

      else
      {

LABEL_56:
        v122 = v112;
      }

      break;
    }

    if (v277)
    {
      v126 = 1.0;
    }

    else
    {
      v126 = *(&v276 + 1);
    }

    goto LABEL_60;
  }

LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_100049648(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000712C(&qword_10009F180, &qword_10007E7B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000712C(&qword_10009F188, &qword_10007E7B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004977C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009F178, &unk_10007E7A0);
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

char *sub_100049870(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009F1C8, &unk_10007E7F0);
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

char *sub_100049964(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009F1D8, &qword_10007E800);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100049A84(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000712C(&qword_10009F1C0, &qword_10007E7E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000712C(&unk_10009FC80, &qword_10007E7E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100049BCC(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10000712C(&qword_10009F1A8, &unk_10007FBC0);
  v10 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
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
  v15 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
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

uint64_t sub_100049DA4(uint64_t a1, char a2, void *a3)
{
  v44 = *(a1 + 16);
  if (!v44)
  {
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = sub_10004A578(v6);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10004A5E8();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_29;
  }

  sub_10004A8F4(v13, a2 & 1);
  v17 = *a3;
  v18 = sub_10004A578(v6);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_28:
    sub_10007A6C0();
    __break(1u);
LABEL_29:
    sub_10007A3B0(30);
    v45._object = 0x8000000100083EA0;
    v45._countAndFlagsBits = 0xD00000000000001BLL;
    sub_100079F00(v45);
    sub_10007A480();
    v46._countAndFlagsBits = 39;
    v46._object = 0xE100000000000000;
    sub_100079F00(v46);
    result = sub_10007A490();
    __break(1u);
    return result;
  }

  v14 = v18;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + v14) = v6;
  *(v21[7] + 8 * v14) = v7;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v44 != 1)
  {
    v25 = (a1 + 56);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v27 = *(v25 - 8);
      v28 = *v25;
      v29 = *a3;
      v30 = sub_10004A578(v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];

      if (v37 < v34)
      {
        sub_10004A8F4(v34, 1);
        v38 = *a3;
        v39 = sub_10004A578(v27);
        if ((v36 & 1) != (v40 & 1))
        {
          goto LABEL_28;
        }

        v35 = v39;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v41 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v41[6] + v35) = v27;
      *(v41[7] + 8 * v35) = v28;
      v42 = v41[2];
      v23 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v41[2] = v43;
      v25 += 2;
      if (v44 == v26)
      {
      }
    }

    goto LABEL_27;
  }
}

uint64_t sub_10004A118(uint64_t a1, char a2, void *a3)
{
  v55 = *(a1 + 16);
  if (!v55)
  {
  }

  v5 = *(a1 + 80);
  v63 = *(a1 + 64);
  v64 = v5;
  v6 = *(a1 + 48);
  v61 = *(a1 + 32);
  v62 = v6;
  v7 = v64;
  v8 = *(&v63 + 1);
  v9 = v63;
  v10 = v6;
  v57 = *(&v64 + 1);
  v11 = v61;
  sub_10004DCCC(&v61, v60);
  if (!*(&v11 + 1))
  {
  }

  v53 = v8;
  v12 = a2;
  v54 = a1;
  v61 = v11;
  v13 = *a3;
  v15 = sub_10000A0FC(v11, *(&v11 + 1));
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v13[3] >= v18)
  {
    if (v12)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_10004A744();
      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_10004AB84(v18, v12 & 1);
  v20 = *a3;
  v21 = sub_10000A0FC(v11, *(&v11 + 1));
  if ((v19 & 1) == (v22 & 1))
  {
    v15 = v21;
    if ((v19 & 1) == 0)
    {
LABEL_13:
      v25 = *a3;
      *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
      *(v25[6] + 16 * v15) = v11;
      v26 = v25[7] + 48 * v15;
      *v26 = v10;
      *(v26 + 16) = v9;
      *(v26 + 24) = v53;
      *(v26 + 32) = v7;
      *(v26 + 40) = v57;
      v27 = v25[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v25[2] = v29;
      v30 = v54;
      if (v55 != 1)
      {
        v31 = (v54 + 96);
        v32 = 1;
        while (v32 < *(v30 + 16))
        {
          v33 = v31[3];
          v63 = v31[2];
          v64 = v33;
          v34 = v31[1];
          v61 = *v31;
          v62 = v34;
          v35 = v64;
          v36 = *(&v63 + 1);
          v37 = v63;
          v38 = v34;
          v58 = *(&v64 + 1);
          v39 = v61;
          sub_10004DCCC(&v61, v60);
          if (!*(&v39 + 1))
          {
          }

          v56 = v35;
          v61 = v39;
          v40 = *a3;
          v41 = sub_10000A0FC(v39, *(&v39 + 1));
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v28 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v28)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            sub_10004AB84(v45, 1);
            v47 = *a3;
            v41 = sub_10000A0FC(v39, *(&v39 + 1));
            if ((v46 & 1) != (v48 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_10;
          }

          v49 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          *(v49[6] + 16 * v41) = v39;
          v50 = v49[7] + 48 * v41;
          *v50 = v38;
          *(v50 + 16) = v37;
          *(v50 + 24) = v36;
          *(v50 + 32) = v56;
          *(v50 + 40) = v58;
          v51 = v49[2];
          v28 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v28)
          {
            goto LABEL_27;
          }

          ++v32;
          v49[2] = v52;
          v31 += 4;
          v30 = v54;
          if (v55 == v32)
          {
          }
        }

        __break(1u);
        goto LABEL_26;
      }
    }

LABEL_10:
    v23 = swift_allocError();
    swift_willThrow();
    v65 = v23;
    swift_errorRetain();
    sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_10007A6C0();
  __break(1u);
LABEL_29:
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_10007A3B0(30);
  v66._object = 0x8000000100083EA0;
  v66._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100079F00(v66);
  sub_10007A480();
  v67._countAndFlagsBits = 39;
  v67._object = 0xE100000000000000;
  sub_100079F00(v67);
  result = sub_10007A490();
  __break(1u);
  return result;
}

unint64_t sub_10004A578(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_10007A730();
  sub_10007A740(a1 + 1);
  v4 = sub_10007A760();

  return sub_10004AE8C(a1, v4);
}

void *sub_10004A5E8()
{
  v1 = v0;
  sub_10000712C(&qword_10009F170, &qword_10007E798);
  v2 = *v0;
  v3 = sub_10007A4B0();
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

void *sub_10004A744()
{
  v1 = v0;
  sub_10000712C(&qword_10009F130, &qword_10007E4E0);
  v2 = *v0;
  v3 = sub_10007A4B0();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = *(v22 + 40);
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 24) = v26;
        *(v30 + 32) = v27;
        *(v30 + 40) = v28;
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

uint64_t sub_10004A8F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000712C(&qword_10009F170, &qword_10007E798);
  v33 = a2;
  result = sub_10007A4C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_10007A730();
      sub_10007A740(v21 + 1);
      result = sub_10007A760();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10004AB84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000712C(&qword_10009F130, &qword_10007E4E0);
  v40 = a2;
  result = sub_10007A4C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = *(v5 + 56) + 48 * v22;
      v26 = *(v25 + 8);
      v44 = *v25;
      v45 = *v23;
      v43 = *(v25 + 16);
      v27 = *(v25 + 32);
      v42 = *(v25 + 24);
      v28 = *(v25 + 40);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v45;
      v17[1] = v24;
      v18 = *(v8 + 56) + 48 * v16;
      *v18 = v44;
      *(v18 + 8) = v26;
      *(v18 + 16) = v43;
      v13 = v41;
      *(v18 + 24) = v42;
      *(v18 + 32) = v27;
      *(v18 + 40) = v28;
      ++*(v8 + 16);
      v5 = v39;
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
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_10004AE8C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10004AEFC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Int sub_10004AFA8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10004BEA4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10004B014(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10004B014(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10007A5D0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_10007A010();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10004B1F4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10004B10C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10004B10C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    sub_10004DDA4();
    v8 = (v7 + v4);
    v9 = v6 - v4;
LABEL_5:
    v10 = *(v7 + v4);
    v11 = v9;
    v12 = v8;
    while (1)
    {
      v15 = *(v12 - 1);
      result = sub_100079DD0();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        ++v8;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v13 = *v12;
      *v12 = *(v12 - 1);
      *--v12 = v13;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004B1F4(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v85 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_92:
    v5 = *v85;
    if (!*v85)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_100009098(v10);
      v10 = result;
    }

    v76 = *(v10 + 2);
    if (v76 >= 2)
    {
      while (1)
      {
        v77 = *v7;
        if (!*v7)
        {
          goto LABEL_128;
        }

        v7 = (v76 - 1);
        v78 = *&v10[16 * v76];
        v79 = *&v10[16 * v76 + 24];
        sub_10004B810(&v77[v78], &v77[*&v10[16 * v76 + 16]], &v77[v79], v5);
        if (v6)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100009098(v10);
        }

        if (v76 - 2 >= *(v10 + 2))
        {
          goto LABEL_118;
        }

        v80 = &v10[16 * v76];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_10000900C(v7);
        v76 = *(v10 + 2);
        v7 = a3;
        if (v76 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v83 = v6;
      v5 = *v7;
      v93 = *(*v7 + v12);
      v92 = *(*v7 + v9);
      sub_10004DDA4();
      result = sub_100079DD0();
      v13 = v11;
      v14 = result;
      v82 = v13;
      while (v8 - 2 != v13)
      {
        v91 = v5[v13 + 2];
        v90 = v5[v13 + 1];
        result = sub_100079DD0();
        ++v13;
        if ((v14 & 1) != (result & 1))
        {
          v8 = v13 + 1;
          break;
        }
      }

      v6 = v83;
      v7 = a3;
      if (v14)
      {
        v11 = v82;
        if (v8 < v82)
        {
          goto LABEL_121;
        }

        if (v82 < v8)
        {
          v15 = v8 - 1;
          v16 = v82;
          do
          {
            if (v16 != v15)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v17 = *(v19 + v16);
              *(v19 + v16) = *(v19 + v15);
              *(v19 + v15) = v17;
            }
          }

          while (++v16 < v15--);
        }

        v12 = v8;
      }

      else
      {
        v12 = v8;
        v11 = v82;
      }
    }

    v20 = v7[1];
    if (v12 < v20)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_120;
      }

      if (v12 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_122;
        }

        if (v11 + a4 >= v20)
        {
          v21 = v7[1];
        }

        else
        {
          v21 = v11 + a4;
        }

        if (v21 < v11)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v12 != v21)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v12 < v11)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v89 = v12;
    v29 = v6;
    if ((result & 1) == 0)
    {
      result = sub_1000069FC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v31 = *(v10 + 2);
    v30 = *(v10 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_1000069FC((v30 > 1), v31 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v32;
    v33 = &v10[16 * v31];
    *(v33 + 4) = v11;
    *(v33 + 5) = v89;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_129;
    }

    if (v31)
    {
      v6 = v29;
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v10 + 4);
          v37 = *(v10 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_61:
          if (v39)
          {
            goto LABEL_108;
          }

          v52 = &v10[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_111;
          }

          v58 = &v10[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_115;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v62 = &v10[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_75:
        if (v57)
        {
          goto LABEL_110;
        }

        v65 = &v10[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_113;
        }

        if (v68 < v56)
        {
          goto LABEL_4;
        }

LABEL_82:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v7)
        {
          goto LABEL_126;
        }

        v74 = *&v10[16 * v73 + 32];
        v5 = *&v10[16 * v35 + 40];
        sub_10004B810((*v7 + v74), (*v7 + *&v10[16 * v35 + 32]), &v5[*v7], v34);
        if (v6)
        {
        }

        if (v5 < v74)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100009098(v10);
        }

        if (v73 >= *(v10 + 2))
        {
          goto LABEL_105;
        }

        v75 = &v10[16 * v73];
        *(v75 + 4) = v74;
        *(v75 + 5) = v5;
        result = sub_10000900C(v35);
        v32 = *(v10 + 2);
        if (v32 <= 1)
        {
          goto LABEL_4;
        }
      }

      v40 = &v10[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v10[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v10[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_116;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v6 = v29;
LABEL_4:
    v8 = v7[1];
    v9 = v89;
    if (v89 >= v8)
    {
      goto LABEL_92;
    }
  }

  v84 = v6;
  v22 = *v7;
  sub_10004DDA4();
  v23 = &v22[v12];
  v24 = v11 - v12;
  v87 = v21;
LABEL_33:
  v88 = v12;
  v25 = v22[v12];
  v26 = v24;
  v5 = v23;
  while (1)
  {
    v94 = *(v5 - 1);
    result = sub_100079DD0();
    if ((result & 1) == 0)
    {
LABEL_32:
      ++v12;
      ++v23;
      --v24;
      if (v88 + 1 != v87)
      {
        goto LABEL_33;
      }

      v12 = v87;
      v6 = v84;
      v7 = a3;
      goto LABEL_40;
    }

    if (!v22)
    {
      break;
    }

    v27 = *v5;
    *v5 = *(v5 - 1);
    *--v5 = v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_10004B810(_BYTE *__dst, _BYTE *__src, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      sub_10004DDA4();
LABEL_26:
      v14 = v6 - 1;
      --v5;
      v15 = v10;
      do
      {
        v16 = v5 + 1;
        v17 = *--v15;
        v21 = *v14;
        if (sub_100079DD0())
        {
          if (v16 < v6 || v5 >= v6)
          {
            *v5 = *v14;
          }

          if (v10 <= v4 || (--v6, v14 <= v7))
          {
            v6 = v14;
            goto LABEL_40;
          }

          goto LABEL_26;
        }

        if (v16 < v10 || v5 >= v10)
        {
          *v5 = *v15;
        }

        --v5;
        v10 = v15;
      }

      while (v15 > v4);
      v10 = v15;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      sub_10004DDA4();
      while (1)
      {
        v20 = *v6;
        v19 = *v4;
        if (sub_100079DD0())
        {
          v11 = v6 + 1;
          v12 = v6;
          if (v7 >= v6 && v7 < v11)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v13 = v4 + 1;
          v12 = v4;
          v11 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_17;
            }
          }
        }

        *v7 = *v12;
LABEL_17:
        ++v7;
        if (v4 < v10)
        {
          v6 = v11;
          if (v11 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
  }

LABEL_40:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

size_t sub_10004BA64(size_t a1, int64_t a2, char a3)
{
  result = sub_10004BB98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004BA84(void *a1, int64_t a2, char a3)
{
  result = sub_10004BD70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004BAA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000712C(&qword_10009F1C8, &unk_10007E7F0);
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

size_t sub_10004BB98(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10000712C(&qword_10009EC60, &unk_10007D660);
  v10 = *(type metadata accessor for ServiceEventValue() - 8);
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
  v15 = *(type metadata accessor for ServiceEventValue() - 8);
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

void *sub_10004BD70(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000712C(&qword_10009F1B8, &qword_10007E7D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000712C(&qword_10009F1B0, &qword_10007E7D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10004BEB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100019E90(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1000354EC(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_10004BF50(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

unint64_t sub_10004BF74()
{
  result = qword_1000A4188[0];
  if (!qword_1000A4188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A4188);
  }

  return result;
}

uint64_t sub_10004BFC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_10007A610() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x5F68736572666572 && a2 == 0xED0000656C637963 || (sub_10007A610() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x765F646572616873 && a2 == 0xEC00000073656C61 || (sub_10007A610() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x6D706F6C65766564 && a2 == 0xEB00000000746E65)
  {
    v5 = 0;
LABEL_17:

    return v5;
  }

  v6 = sub_10007A610();

  result = 0;
  if ((v6 & 1) == 0)
  {
    if (a1 == 0x6E695F656C707061 && a2 == 0xEE006C616E726574)
    {
      v5 = 1;
      goto LABEL_17;
    }

    v7 = sub_10007A610();

    if (v7)
    {
      return 1;
    }

    if (a1 == 1684366707 && a2 == 0xE400000000000000)
    {
      v5 = 2;
      goto LABEL_17;
    }

    v8 = sub_10007A610();

    if (v8)
    {
      return 2;
    }

    if (a1 == 0x657361656C6572 && a2 == 0xE700000000000000)
    {
      v5 = 3;
      goto LABEL_17;
    }

    v9 = sub_10007A610();

    if (v9)
    {
      return 3;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t sub_10004C24C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009F158, &unk_10007E788);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v29 - v8;
  v10 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_10004D9CC();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(a1);
  }

  LOBYTE(v41) = 4;
  v33 = sub_10007A550();
  v34 = v11;
  LOBYTE(v41) = 5;
  v32 = sub_10007A530();
  sub_10000712C(&qword_10009ED90, qword_10007E200);
  v40 = 6;
  sub_10004DBF4(&qword_10009F160, &qword_10009ED90, qword_10007E200, sub_10004DA20);
  sub_10007A520();
  v30 = v41;
  v13 = sub_10007A590();
  v14 = *(v13 + 16);
  v31 = v6;
  v29[1] = v13;
  if (v14)
  {
    v15 = (v13 + 32);
    v16 = _swiftEmptyArrayStorage;
    v37 = a2;
    while (1)
    {
      v18 = *v15;
      v17 = v18;
      v39 = v15 + 1;
      if (v18 <= 2)
      {
        if (!v17)
        {
          goto LABEL_27;
        }

        if (v17 == 1)
        {
          LOBYTE(v17) = (sub_10007A610() & 1) == 0;
          goto LABEL_27;
        }

        v38 = 1;
        v35 = 1;
        v36 = 1;
      }

      else
      {
        v38 = 0;
        if (v17 > 4)
        {
          v35 = 1;
          v36 = 1;
        }

        else
        {
          v35 = 0;
          v36 = v17 != 3;
        }
      }

      if (sub_10007A610())
      {
        LOBYTE(v17) = 0;
        goto LABEL_27;
      }

      v19 = sub_10007A610();
      if (v19)
      {
        LOBYTE(v17) = 1;
      }

      else
      {
        LOBYTE(v17) = 2;
      }

      if ((v19 | v38))
      {
        goto LABEL_27;
      }

      if (sub_10007A610())
      {
        break;
      }

      if ((v36 | v35) != 1)
      {
        LOBYTE(v17) = 3;
        goto LABEL_27;
      }

      v20 = sub_10007A610();

      if (v20)
      {
        LOBYTE(v17) = 3;
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_10004977C(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        if (v22 >= v21 >> 1)
        {
          v16 = sub_10004977C((v21 > 1), v22 + 1, 1, v16);
        }

        *(v16 + 2) = v22 + 1;
        v16[v22 + 32] = v17;
      }

      a2 = v37;
      --v14;
      v15 = v39;
      if (!v14)
      {
        goto LABEL_36;
      }
    }

    LOBYTE(v17) = 2;
LABEL_27:

    goto LABEL_28;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_36:

  __chkstk_darwin(v23);
  v29[-2] = v9;
  v24 = sub_100046B54(sub_10004DA74, &v29[-4], v16);

  if (v24[2])
  {
    sub_10000712C(&qword_10009F170, &qword_10007E798);
    v25 = sub_10007A4D0();
  }

  else
  {
    v25 = &_swiftEmptyDictionarySingleton;
  }

  v26 = v31;
  v41 = v25;
  sub_100049DA4(v24, 1, &v41);
  v27 = v41;
  (*(v26 + 8))(v9, v5);
  result = sub_1000070A8(a1);
  v28 = v34;
  *a2 = v33;
  *(a2 + 8) = v28;
  BYTE4(v28) = BYTE4(v32);
  *(a2 + 16) = v32;
  *(a2 + 20) = BYTE4(v28) & 1;
  *(a2 + 24) = v30;
  *(a2 + 32) = v27;
  return result;
}

unint64_t sub_10004C8C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009F1E8, &qword_10007E810);
    v3 = sub_10007A4D0();

    for (i = (a1 + 72); ; i += 48)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      sub_10004CCFC(v7, v8, v9, v10);
      result = sub_10000A0FC(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 32 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_10004C9F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009F1E0, &qword_10007E808);
    v3 = sub_10007A4D0();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_10000A0FC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
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

uint64_t sub_10004CB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || !a1)
  {
    return 0;
  }

  v5 = (a1 + 40);
  v6 = *(a1 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 2;
    v9 = *(v5 - 1);
    v8 = *v5;
    v13[0] = a2;
    v13[1] = a3;
    __chkstk_darwin(a1);
    v12[2] = v13;

    v10 = sub_10004AEFC(sub_10004DFFC, v12, v9);

    v5 = v7;
    if (v10)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t sub_10004CC14(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  v5 = v2[3];
  v6 = v2[4];
  sub_10000751C(v2, v5);
  (*(v6 + 8))(v11, v5, v6);
  v13 = v12;
  v7 = v12;

  sub_100019EF4(v11);
  if (v3 == v7 && v4 == *(&v7 + 1))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10007A610();
  }

  sub_10002A4B4(&v13);
  return v9 & 1;
}

uint64_t sub_10004CCE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10004CCFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }
  }
}

uint64_t sub_10004CD4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }
  }
}

uint64_t sub_10004CDB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10004CDD0();
  }

  return result;
}

uint64_t sub_10004CDDC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10004CDF4();
  }

  return result;
}

uint64_t sub_10004CE00(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10007A120();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100018CE8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_10004CE98(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = ~a3;
  v56 = type metadata accessor for ServiceEventValue();
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v56);
  v12 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v8)
  {
    goto LABEL_6;
  }

  if (a3)
  {
    if (!*(a4 + 16) || (v13 = sub_10000A0FC(a1, a2), (v14 & 1) == 0) || (v15 = *(a4 + 56) + 16 * v13, *(v15 + 8)))
    {
LABEL_6:
      a1 = _swiftEmptyArrayStorage;
      goto LABEL_8;
    }

    a1 = *v15;
  }

  else
  {
    sub_10004CDD0();
  }

LABEL_8:
  result = sub_100049A84(0, a1[2], 0, _swiftEmptyArrayStorage);
  v55 = result;
  v17 = a1[2];
  if (v17)
  {
    v18 = 0;
    v19 = a1 + 4;
    v50 = 0x8000000100083EC0;
    v52 = a1;
    v53 = v17;
    v51 = a1 + 4;
    while (1)
    {
      v20 = &v19[9 * v18];
      v21 = *(v20 + 3);
      v22 = v20[8];
      v23 = *(v20 + 1);
      v60 = *(v20 + 2);
      v24 = *v20;
      v62 = v22;
      v61 = v21;
      v58 = v24;
      v59 = v23;
      if (!*(&v60 + 1))
      {
        break;
      }

LABEL_25:
      if (++v18 == v17)
      {
        goto LABEL_51;
      }

      if (v18 >= a1[2])
      {
        __break(1u);
        return result;
      }
    }

    v25 = *(&v58 + 1);
    sub_100036F78(&v58, v57);

    v27 = sub_10004CE00(v26);

    v28 = *(v25 + 16);
    if (v28)
    {
      v54 = v27;
      v57[0] = _swiftEmptyArrayStorage;
      sub_10004BA64(0, v28, 0);
      v29 = v57[0];
      v30 = (v25 + 40);
      do
      {
        v31 = *v30;
        *v12 = *(v30 - 1);
        v12[1] = v31;
        swift_storeEnumTagMultiPayload();
        v57[0] = v29;
        v33 = *(v29 + 16);
        v32 = *(v29 + 24);

        if (v33 >= v32 >> 1)
        {
          sub_10004BA64(v32 > 1, v33 + 1, 1);
          v29 = v57[0];
        }

        *(v29 + 16) = v33 + 1;
        sub_10004DD3C(v12, v29 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v33, type metadata accessor for ServiceEventValue);
        v30 += 2;
        --v28;
      }

      while (v28);
      v27 = v54;
    }

    v34 = v59;
    v35 = j___s20CloudTelemetryShared21XPCIncomingConnectionV4connACSo13OS_xpc_object_p_tcfC(v27);
    v37 = v36;
    if (v34 == __PAIR128__(0xE500000000000000, 0x776F6C6C61) || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventAllowFilter;
      v39 = &off_100097C28;
    }

    else if (v34 == __PAIR128__(0xE600000000000000, 0x65766F6D6572) || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventRemoveFilter;
      v39 = &off_100097C50;
    }

    else if (v34 == __PAIR128__(0xE600000000000000, 0x363532616873) || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventSHA256KeyFilter;
      v39 = &off_100097C78;
    }

    else if (v34 == __PAIR128__(0xEF7365756C615674, 0x73696C6574696877) || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventAllowValuesFilter;
      v39 = &off_100097CA0;
    }

    else if (v34 == __PAIR128__(0xEF7365756C615674, 0x73696C6B63616C62) || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventDenyValuesFilter;
      v39 = &off_100097CC8;
    }

    else if (__PAIR128__(v50, 0xD000000000000018) == v34 || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventInsertStringKeyFilter;
      v39 = &off_100097CF0;
    }

    else if (v34 == __PAIR128__(0xE600000000000000, 0x646E65707061) || (sub_10007A610() & 1) != 0)
    {
      v38 = &type metadata for EventAppendToKeyFilter;
      v39 = &off_100097D18;
    }

    else
    {
      if (v34 != __PAIR128__(0xE700000000000000, 0x646E6570657270))
      {
        v49 = sub_10007A610();
        sub_100036FB0(&v58);
        if ((v49 & 1) == 0)
        {

          a1 = v52;
          v17 = v53;
LABEL_24:
          v19 = v51;
          goto LABEL_25;
        }

        v38 = &type metadata for EventPrependToKeyFilter;
        v39 = &off_100097D40;
LABEL_21:
        v40 = v39[2];
        v57[3] = v38;
        v57[4] = v39;
        v41 = sub_100019E90(v57);
        v42 = v40(v35, v37, v41);
        v63 = v55;
        v44 = v55[2];
        v43 = v55[3];
        if (v44 >= v43 >> 1)
        {
          v42 = sub_100049A84((v43 > 1), v44 + 1, 1, v55);
          v55 = v42;
          v63 = v42;
        }

        v17 = v53;
        v45 = *(v38[-1].Description + 8);
        __chkstk_darwin(v42);
        v47 = &v50 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v48 + 16))(v47, v41, v38);
        sub_10004BEB8(v44, v47, &v63, v38, v39);
        result = sub_1000070A8(v57);
        a1 = v52;
        goto LABEL_24;
      }

      v38 = &type metadata for EventPrependToKeyFilter;
      v39 = &off_100097D40;
    }

    sub_100036FB0(&v58);
    goto LABEL_21;
  }

LABEL_51:

  return v55;
}

uint64_t sub_10004D6FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D760(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004D7C0()
{
  result = qword_10009F138;
  if (!qword_10009F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F138);
  }

  return result;
}

uint64_t sub_10004D858(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000072D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004D8A4()
{
  result = qword_10009F150;
  if (!qword_10009F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F150);
  }

  return result;
}

uint64_t sub_10004D90C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10004D954(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10004D9CC()
{
  result = qword_1000A4610[0];
  if (!qword_1000A4610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A4610);
  }

  return result;
}

unint64_t sub_10004DA20()
{
  result = qword_10009F168;
  if (!qword_10009F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F168);
  }

  return result;
}

uint64_t sub_10004DA74@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  sub_10000712C(&qword_10009F158, &unk_10007E788);
  sub_10004DBA0();
  sub_10007A570();
  if (v3)
  {

    sub_10000712C(&qword_10009ED88, &unk_10007E7C0);
    sub_10004DBF4(&qword_10009F198, &qword_10009ED88, &unk_10007E7C0, sub_10004DC78);
    result = sub_10007A570();
    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    result = sub_1000071DC(v8, v9);
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

unint64_t sub_10004DBA0()
{
  result = qword_10009F190;
  if (!qword_10009F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F190);
  }

  return result;
}

uint64_t sub_10004DBF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000072D8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004DC78()
{
  result = qword_10009F1A0;
  if (!qword_10009F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F1A0);
  }

  return result;
}

uint64_t sub_10004DCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009F1B0, &qword_10007E7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DD3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10004DDA4()
{
  result = qword_10009F1D0;
  if (!qword_10009F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F1D0);
  }

  return result;
}

double sub_10004DDF8(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10004DE1C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10007A610() & 1;
  }
}

uint64_t getEnumTagSinglePayload for Storebag._StorebagRoot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004DF14(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10004DF28(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_10004DF4C()
{
  result = qword_1000A4720;
  if (!qword_1000A4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4720);
  }

  return result;
}

unint64_t sub_10004DFA4()
{
  result = qword_1000A4728[0];
  if (!qword_1000A4728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A4728);
  }

  return result;
}

uint64_t sub_10004E01C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();

  return v2;
}

uint64_t sub_10004E070(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100018CE8(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004E174()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10004E1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1000A47B0 != -1)
  {
    swift_once();
  }

  v6 = qword_1000A6D68;

  result = sub_10004E070(v7, v6);
  *a3 = a1;
  a3[1] = a2;
  a3[2] = result;
  return result;
}

uint64_t sub_10004E294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v97 = a3;
  v101 = a1;
  v4 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v112 = &v90 - v6;
  v7 = sub_10000712C(&qword_10009EC78, &unk_10007E8D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v90 - v9;
  v11 = type metadata accessor for ServiceEventValue();
  v111 = *(v11 - 8);
  v12 = *(v111 + 64);
  v13 = __chkstk_darwin(v11);
  v107 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v106 = (&v90 - v16);
  v17 = __chkstk_darwin(v15);
  v105 = (&v90 - v18);
  v19 = __chkstk_darwin(v17);
  v104 = (&v90 - v20);
  v21 = __chkstk_darwin(v19);
  v109 = (&v90 - v22);
  v23 = __chkstk_darwin(v21);
  v25 = &v90 - v24;
  v26 = __chkstk_darwin(v23);
  v91 = &v90 - v27;
  __chkstk_darwin(v26);
  v29 = &v90 - v28;
  v30 = *(a2 + 56);
  v95 = a2 + 56;
  v31 = 1 << *(a2 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v94 = (v31 + 63) >> 6;
  v34 = a2;

  v35 = 0;
  v36 = _swiftEmptyArrayStorage;
  v37 = v101;
  v110 = v7;
  v92 = a2;
LABEL_4:
  v103 = v36;
  result = v34;
  v39 = v37;
  while (v33)
  {
    v40 = v33;
LABEL_11:
    v33 = (v40 - 1) & v40;
    v42 = *(v39 + 16);
    if (*(v42 + 16))
    {
      v102 = (v40 - 1) & v40;
      v43 = (*(result + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v40)))));
      v44 = *v43;
      v45 = v43[1];
      v46 = result;

      v96 = v44;
      v47 = sub_10000A0FC(v44, v45);
      if (v48)
      {
        v93 = v45;
        v49 = *(v42 + 56);
        v117 = *(v111 + 72);
        v50 = v91;
        sub_10000A908(v49 + v117 * v47, v91);
        sub_100012C24(v50, v29);
        v51 = *(v97 + 16);
        if (!v51)
        {
LABEL_42:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v34 = v92;
            v36 = v103;
          }

          else
          {
            v36 = sub_100023040(0, *(v103 + 2) + 1, 1, v103);
            v34 = v92;
          }

          v73 = *(v36 + 2);
          v72 = *(v36 + 3);
          v117 = v73 + 1;
          if (v73 >= v72 >> 1)
          {
            v36 = sub_100023040((v72 > 1), v73 + 1, 1, v36);
          }

          sub_10000A96C(v29);
          *(v36 + 2) = v117;
          v74 = &v36[16 * v73];
          v75 = v93;
          *(v74 + 4) = v96;
          *(v74 + 5) = v75;
          v37 = v101;
          v33 = v102;
          goto LABEL_4;
        }

        v52 = v97 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
LABEL_18:
        sub_10000A908(v52, v25);
        v53 = &v10[*(v7 + 48)];
        sub_10000A908(v25, v10);
        sub_10000A908(v29, v53);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          v58 = v7;
          v59 = v29;
          v60 = v109;
          if (!EnumCaseMultiPayload)
          {
            sub_10000A908(v10, v109);
            v108 = v60[1];
            if (!swift_getEnumCaseMultiPayload())
            {
              v99 = *v60;
              v66 = *v53;
              v67 = *(v53 + 1);
              v98 = sub_100079E90();
              v69 = v68;
              v100 = v68;

              v115 = v98;
              v116 = v69;
              v99 = sub_100079E90();
              v71 = v70;

              v113 = v99;
              v114 = v71;
              sub_100025EBC();
              LODWORD(v108) = sub_10007A2C0();

              sub_10000A96C(v25);
              sub_10000A96C(v10);
              v29 = v59;
              v7 = v110;
              if (v108)
              {
LABEL_40:
                sub_10000A96C(v29);

                v39 = v101;
                v33 = v102;
                result = v92;
                continue;
              }

              goto LABEL_17;
            }

            sub_10000A96C(v25);

            v29 = v59;
            v7 = v110;
            goto LABEL_16;
          }

          v29 = v59;
          v7 = v58;
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_15;
          }

          sub_10000A96C(v25);
          sub_10000A908(v10, v104);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_16;
          }

          v61 = v104;
        }

        else
        {
          if (EnumCaseMultiPayload != 2)
          {
            if (EnumCaseMultiPayload == 3)
            {
              sub_10000A96C(v25);
              sub_10000A908(v10, v106);
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                v64 = *v106;
                v65 = *v53;
                sub_10000A96C(v10);
                if (v64 == v65)
                {
                  goto LABEL_40;
                }

                goto LABEL_17;
              }

              goto LABEL_16;
            }

            if (EnumCaseMultiPayload == 4)
            {
              sub_10000A96C(v25);
              sub_10000A908(v10, v107);
              if (swift_getEnumCaseMultiPayload() == 4)
              {
                v55 = *v107;
                v56 = *v53;
                sub_10000A96C(v10);
                v57 = v55 == v56;
LABEL_31:
                v7 = v110;
                if (v57)
                {
                  goto LABEL_40;
                }

LABEL_17:
                v52 += v117;
                if (!--v51)
                {
                  goto LABEL_42;
                }

                goto LABEL_18;
              }

LABEL_16:
              sub_1000096C4(v10, &qword_10009EC78, &unk_10007E8D0);
              goto LABEL_17;
            }

LABEL_15:
            sub_10000A96C(v25);
            goto LABEL_16;
          }

          sub_10000A96C(v25);
          sub_10000A908(v10, v105);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_16;
          }

          v61 = v105;
        }

        v62 = *v61;
        v63 = *v53;
        sub_10000A96C(v10);
        v57 = v62 == *&v63;
        goto LABEL_31;
      }

      result = v46;
      v39 = v101;
      v33 = v102;
    }
  }

  while (1)
  {
    v41 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      return result;
    }

    if (v41 >= v94)
    {
      break;
    }

    v40 = *(v95 + 8 * v41);
    ++v35;
    if (v40)
    {
      v35 = v41;
      goto LABEL_11;
    }
  }

  v76 = *(v39 + 16);
  v77 = *(v103 + 2);
  if (v77)
  {
    v78 = (v111 + 56);
    v79 = (v103 + 40);

    v80 = v117;
    do
    {
      v83 = *(v79 - 1);
      v84 = *v79;

      v85 = sub_10000A0FC(v83, v84);
      v87 = v86;

      if (v87)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = v80;
        v82 = v112;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000308CC();
          v80 = v115;
        }

        v89 = *(*(v80 + 48) + 16 * v85 + 8);

        sub_100012C24(*(v80 + 56) + *(v111 + 72) * v85, v82);
        sub_100030E40(v85, v80);
        v81 = 0;
      }

      else
      {
        v81 = 1;
        v82 = v112;
      }

      (*v78)(v82, v81, 1, v11);
      sub_1000096C4(v82, &qword_10009FC90, &qword_10007C910);
      v79 += 2;
      --v77;
    }

    while (v77);

    v39 = v101;
  }

  else
  {
    v80 = *(v39 + 16);
  }

  *(v39 + 16) = v80;
  return result;
}