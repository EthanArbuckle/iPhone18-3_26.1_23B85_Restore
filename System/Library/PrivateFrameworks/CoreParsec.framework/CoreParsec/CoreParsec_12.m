void sub_10010CE28(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10010CEA0()
{
  sub_100106BC0(v0 + 16);

  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10010CED8()
{
  sub_10010CEA0();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10010CF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10010CFB4()
{
  result = qword_10021B3D0;
  if (!qword_10021B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B3D0);
  }

  return result;
}

void *sub_10010D008(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

uint64_t sub_10010D0B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10010D108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10010D160(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10010D178(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

void sub_10010D1AC()
{
  sub_100006A3C();
  v47 = v0;
  v2 = v1;
  v3 = *(*(sub_100046184(&qword_100217480, &unk_100198F70) - 8) + 64);
  sub_100003760();
  __chkstk_darwin(v4);
  v6 = &v41 - v5;
  v50 = type metadata accessor for UserAgent();
  v7 = sub_100003650(v50);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100046184(&qword_10021B480, &qword_1001A0148);
  sub_1000036B8(v49);
  v14 = *(v13 + 64);
  sub_100003760();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = *v2;
  v19 = *v2 + 64;
  v20 = *(*v2 + 32);
  sub_100004154();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v44 = (v9 + 8);
  v45 = (v9 + 32);

  v26 = 0;
  v48 = _swiftEmptyArrayStorage;
  v43 = xmmword_100198F10;
  while (1)
  {
    v27 = v26;
    if (!v23)
    {
      break;
    }

LABEL_6:
    v28 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v29 = v28 | (v26 << 6);
    v30 = *(v18 + 48);
    v31 = type metadata accessor for SessionType();
    sub_1000036B8(v31);
    (*(v32 + 16))(v17, v30 + *(v32 + 72) * v29);
    *&v17[*(v49 + 48)] = *(*(v18 + 56) + 8 * v29);

    sub_10001184C();
    if (sub_100008D0C(v6, 1, v50) == 1)
    {
      sub_10000B240(v6, &qword_100217480, &unk_100198F70);
      sub_10000B240(v17, &qword_10021B480, &qword_1001A0148);
    }

    else
    {
      (*v45)(v46, v6, v50);
      sub_100046184(&qword_100214E48, &unk_1001995C0);
      inited = swift_initStackObject();
      *(inited + 16) = v43;
      *(inited + 32) = 0x696669746E656469;
      *(inited + 40) = 0xEA00000000007265;
      *(inited + 48) = SessionType.description.getter();
      *(inited + 56) = v34;
      *(inited + 64) = 0x746E656761;
      *(inited + 72) = 0xE500000000000000;
      *(inited + 80) = UserAgent.fullString.getter();
      *(inited + 88) = v35;
      v42 = Dictionary.init(dictionaryLiteral:)();
      (*v44)(v46, v50);
      sub_10000B240(v17, &qword_10021B480, &qword_1001A0148);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = v48[2];
        sub_10006D184();
        v48 = v39;
      }

      v36 = v48[2];
      if (v36 >= v48[3] >> 1)
      {
        sub_10006D184();
        v48 = v40;
      }

      v37 = v48;
      v48[2] = v36 + 1;
      v37[v36 + 4] = v42;
    }
  }

  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      *v47 = v48;
      sub_100007FD4();
      return;
    }

    v23 = *(v19 + 8 * v26);
    ++v27;
    if (v23)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_10010D5A4()
{
  v4 = sub_100046184(&qword_10021B480, &qword_1001A0148);
  sub_1000036B8(v4);
  v6 = *(v5 + 64);
  sub_100003760();
  __chkstk_darwin(v7);
  sub_100011A68();
  v8 = *(v2 + 16);
  v9 = *(v8 + 64);
  v10 = *(v8 + 32);
  sub_100004154();
  sub_10000AC08();
  v11 = 0;
  if (v0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v3)
    {

      os_unfair_lock_unlock((v2 + 24));
      return;
    }

    v0 = *(v8 + 64 + 8 * v12);
    ++v11;
    if (v0)
    {
      v11 = v12;
      do
      {
LABEL_6:
        v13 = *(v8 + 48);
        v14 = type metadata accessor for SessionType();
        sub_1000036B8(v14);
        (*(v15 + 16))(v1, v13 + *(v15 + 72) * (__clz(__rbit64(v0)) | (v11 << 6)));
        if (*(*(sub_10000F620() + 64) + 32))
        {

          sub_1000F0A9C();
        }

        else
        {
        }

        v0 &= v0 - 1;
        sub_10000B240(v1, &qword_10021B480, &qword_1001A0148);
      }

      while (v0);
    }
  }

  __break(1u);
}

void sub_10010D718()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_10010E240((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_10010D76C(uint64_t *a1, uint64_t a2)
{
  v34 = a1;
  v3 = type metadata accessor for SessionType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v36 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v33 = &v28 - v8;
  v9 = a2 + 56;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v31 = v4 + 32;
  v32 = v4 + 16;
  v30 = (v4 + 8);
  v35 = a2;

  v15 = 0;
  v29 = v3;
  while (v12)
  {
    v16 = v36;
LABEL_11:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = v33;
    (*(v4 + 16))(v33, *(v35 + 48) + *(v4 + 72) * (v18 | (v15 << 6)), v3);
    (*(v4 + 32))(v16, v19, v3);
    v20 = v16;
    v21 = *v34;
    if (*(*v34 + 16))
    {
      v22 = sub_10000F794();
      v23 = *v30;
      if ((v24 & 1) == 0)
      {
        goto LABEL_16;
      }

      v25 = *(*(v21 + 56) + 8 * v22);

      v23(v20, v3);
      v26 = *(v25 + 64);
      swift_unknownObjectRetain();

      v27 = *(v26 + 32);

      v3 = v29;
      result = swift_unknownObjectRelease();
      if (v27)
      {
        sub_1000F0A9C();
      }
    }

    else
    {
      v23 = *v30;
LABEL_16:
      result = (v23)(v36, v3);
    }
  }

  v16 = v36;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_10010DA04()
{
  sub_100006A3C();
  v35 = v0;
  v2 = v1;
  v38 = sub_100046184(&qword_10021B480, &qword_1001A0148);
  v3 = sub_1000036B8(v38);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v37 = &v34 - v10;
  __chkstk_darwin(v9);
  v34 = &v34 - v11;
  v12 = *v2 + 64;
  v13 = *(*v2 + 32);
  sub_100004154();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v39 = v19;

  v20 = 0;
  v36 = v8;
  if (v16)
  {
    while (1)
    {
      v21 = v20;
LABEL_6:
      v22 = __clz(__rbit64(v16)) | (v21 << 6);
      v23 = *(v39 + 48);
      v24 = type metadata accessor for SessionType();
      sub_100003650(v24);
      v26 = v25;
      v28 = v23 + *(v27 + 72) * v22;
      v29 = v37;
      (*(v27 + 16))(v37, v28, v24);
      v30 = v38;
      *&v29[*(v38 + 48)] = *(*(v39 + 56) + 8 * v22);
      v31 = v29;
      v32 = v36;
      sub_10010E1D0(v31, v36);
      if (!*(*(*(v32 + *(v30 + 48)) + 64) + 88))
      {
        break;
      }

      v16 &= v16 - 1;

      sub_10000B240(v32, &qword_10021B480, &qword_1001A0148);
      v20 = v21;
      if (!v16)
      {
        goto LABEL_3;
      }
    }

    v33 = v34;
    sub_10010E1D0(v32, v34);
    *v35 = *(v33 + *(v38 + 48));
    (*(v26 + 8))(v33, v24);
LABEL_10:
    sub_100007FD4();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        *v35 = 0;
        goto LABEL_10;
      }

      v16 = *(v12 + 8 * v21);
      ++v20;
      if (v16)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_10010DC90()
{
  v4 = sub_100046184(&qword_10021B480, &qword_1001A0148);
  sub_1000036B8(v4);
  v6 = *(v5 + 64);
  sub_100003760();
  __chkstk_darwin(v7);
  sub_100011A68();
  v8 = *(v2 + 16);
  v9 = *(v8 + 64);
  v10 = *(v8 + 32);
  sub_100004154();
  sub_10000AC08();
  v11 = 0;
  while (v0)
  {
    v12 = v11;
LABEL_7:
    v13 = __clz(__rbit64(v0));
    v0 &= v0 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(v8 + 48);
    v16 = type metadata accessor for SessionType();
    sub_1000036B8(v16);
    (*(v17 + 16))(v1, v15 + *(v17 + 72) * v14);
    v18 = *(sub_10000F620() + 64);

    swift_unknownObjectRetain();
    sub_1000E5F2C(0, 0);
    swift_unknownObjectRelease();
    sub_10000B240(v1, &qword_10021B480, &qword_1001A0148);
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v3)
    {

      os_unfair_lock_unlock((v2 + 24));
      return;
    }

    v0 = *(v8 + 64 + 8 * v12);
    ++v11;
    if (v0)
    {
      v11 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_10010DE04()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 6);
  sub_10010E25C(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

unint64_t sub_10010DE58(unint64_t result)
{
  v1 = *result;
  if (*(*result + 16))
  {
    result = sub_10000F794();
    if (v2)
    {
      v3 = *(*(*(v1 + 56) + 8 * result) + 64);

      swift_unknownObjectRetain();
      sub_1000E5F2C(0, 0);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10010DED4()
{
  sub_100006A3C();
  v39 = v1;
  v40 = v0;
  v43 = v3;
  v44 = v2;
  v5 = v4;
  v45 = sub_100046184(&qword_10021B480, &qword_1001A0148);
  v6 = sub_1000036B8(v45);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v42 = &v38 - v13;
  __chkstk_darwin(v12);
  v38 = &v38 - v14;
  v15 = *v5;
  v17 = *(*v5 + 64);
  v16 = *v5 + 64;
  v18 = *(v15 + 32);
  sub_100004154();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v46 = v24;

  v25 = 0;
  if (v21)
  {
    while (1)
    {
      v26 = v11;
      v27 = v25;
LABEL_7:
      v28 = __clz(__rbit64(v21)) | (v27 << 6);
      v29 = *(v46 + 48);
      v30 = type metadata accessor for SessionType();
      sub_100003650(v30);
      v41 = v31;
      v33 = v29 + *(v32 + 72) * v28;
      v34 = v42;
      (*(v32 + 16))(v42, v33, v30);
      v35 = v45;
      *(v34 + *(v45 + 48)) = *(*(v46 + 56) + 8 * v28);
      sub_10010E1D0(v34, v26);
      v11 = v26;
      v36 = *(v26 + *(v35 + 48));

      if (v44(v36))
      {
        break;
      }

      v21 &= v21 - 1;
      sub_10000B240(v26, &qword_10021B480, &qword_1001A0148);
      v25 = v27;
      if (!v21)
      {
        goto LABEL_3;
      }
    }

    v37 = v38;
    sub_10010E1D0(v26, v38);
    *v39 = *(v37 + *(v45 + 48));
    (*(v41 + 8))(v37, v30);
LABEL_11:
    sub_100007FD4();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v23)
      {

        *v39 = 0;
        goto LABEL_11;
      }

      v21 = *(v16 + 8 * v27);
      ++v25;
      if (v21)
      {
        v26 = v11;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10010E16C()
{
  sub_10000B218(v0 + 16);
  v1 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10010E1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_10021B480, &qword_1001A0148);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010E278()
{
  v3 = type metadata accessor for ContextUpdate(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_100003664();
  v5 = sub_100011A8C();
  v6 = sub_100003650(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100003664();
  sub_1000068C0();
  v9 = *(v1 + 32);
  *v2 = v9;
  v10 = sub_1000085AC();
  v11(v10);
  v12 = v9;
  _dispatchPreconditionTest(_:)();
  v13 = sub_100004468();
  result = v14(v13);
  if (v9)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10010C834(v0);
      sub_100034428();
      swift_unknownObjectRelease();
      return sub_100069C50(v0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010E3B4()
{
  v3 = type metadata accessor for ContextUpdate(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_100003664();
  v5 = sub_100011A8C();
  v6 = sub_100003650(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100003664();
  sub_1000068C0();
  v9 = *(v1 + 64);
  *v2 = v9;
  v10 = sub_1000085AC();
  v11(v10);
  v12 = v9;
  _dispatchPreconditionTest(_:)();
  v13 = sub_100004468();
  result = v14(v13);
  if (v9)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100103A6C(v0);
      sub_100034428();
      swift_unknownObjectRelease();
      return sub_100069C50(v0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010E4F0()
{
  v3 = type metadata accessor for ContextUpdate(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_100003664();
  v5 = sub_100011A8C();
  v6 = sub_100003650(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_100003664();
  sub_1000068C0();
  v9 = *(v1 + 40);
  *v2 = v9;
  v10 = sub_1000085AC();
  v11(v10);
  v12 = v9;
  _dispatchPreconditionTest(_:)();
  v13 = sub_100004468();
  result = v14(v13);
  if (v9)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10010EBC0(v0);
      sub_100034428();
      swift_unknownObjectRelease();
      return sub_100069C50(v0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010E62C()
{
  result = sub_10010E650();
  qword_100232D70 = result;
  *algn_100232D78 = v1;
  return result;
}

uint64_t sub_10010E650()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100046184(&qword_10021B6B0, &qword_1001A01E0);
  sub_10010F4DC();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  static String.Encoding.utf8.getter();
  v9 = String.init(data:encoding:)();
  if (v10)
  {
    v5 = v9;
    sub_100014A40(v6, v8);
  }

  else
  {
    sub_100014A2C(v6, v8);

    return 23899;
  }

  return v5;
}

uint64_t sub_10010E7AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475626972747461 && a2 == 0xE900000000000065;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10010E8C8(char a1)
{
  if (!a1)
  {
    return 0x72656469766F7270;
  }

  if (a1 == 1)
  {
    return 0x7475626972747461;
  }

  return 0x657669746361;
}

uint64_t sub_10010E920(void *a1)
{
  v4 = v1;
  v6 = sub_100046184(&qword_10021B6C8, &qword_1001A0250);
  v7 = sub_100003650(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_1000068C0();
  v12 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_10010F65C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v4;
  v14 = v4[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = v4[2];
    v16 = v4[3];
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v4 + 32);
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v3, v6);
}

uint64_t sub_10010EAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010E7AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10010EACC@<X0>(_BYTE *a1@<X8>)
{
  result = static AvroPrimitiveSchema.long.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10010EAF4(uint64_t a1)
{
  v2 = sub_10010F65C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010EB30(uint64_t a1)
{
  v2 = sub_10010F65C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10010EB84(uint64_t a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  return v1;
}

uint64_t sub_10010EBC0@<X0>(uint64_t *a1@<X8>)
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
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "updating subscriptions", v7, 2u);
  }

  if (*(v2 + 32) == 1)
  {
    if (qword_1002141E0 != -1)
    {
      swift_once();
    }

    v8 = qword_100232D70;
  }

  else
  {
    v9 = 0xE200000000000000;
    v8 = 23899;
  }

  *a1 = v8;
  a1[1] = v9;
  type metadata accessor for ContextUpdate(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10010ED28(uint64_t a1, char a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100003650(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_100003664();
  sub_1000068C0();
  v27 = type metadata accessor for DispatchQoS();
  v13 = sub_100003650(v27);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100003664();
  v20 = v19 - v18;
  v21 = *(v4 + 40);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = a1;
  *(v23 + 32) = a2 & 1;
  aBlock[4] = sub_10010F4D0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D50C;
  aBlock[3] = &unk_1001FE400;
  v24 = _Block_copy(aBlock);
  v25 = v21;

  static DispatchQoS.unspecified.getter();
  sub_100024990();
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v10 + 8))(v3, v7);
  (*(v15 + 8))(v20, v27);
}

void sub_10010EFB8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1002140D0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000964C(v7, qword_100232AE0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "updating subscriptions", v10, 2u);
    }

    if (a3)
    {
      v11 = *(v6 + 32);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      v14 = os_log_type_enabled(v12, v13);
      if (v11)
      {
        if (v14)
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "Subscription status went nil", v15, 2u);
        }

        *(v6 + 32) = 0;
LABEL_21:
        sub_10010E4F0();

        return;
      }

      if (!v14)
      {
        goto LABEL_27;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Subscription status is nil";
    }

    else
    {
      v16 = *(v6 + 32);
      v12 = Logger.logObject.getter();
      if ((a2 == 1) != v16)
      {
        v17 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v12, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v25 = v19;
          *v18 = 136315138;
          if (a2 == 1)
          {
            v20 = 0x64656C62616E65;
          }

          else
          {
            v20 = 0x64656C6261736964;
          }

          if (a2 == 1)
          {
            v21 = 0xE700000000000000;
          }

          else
          {
            v21 = 0xE800000000000000;
          }

          v22 = sub_100009684(v20, v21, &v25);

          *(v18 + 4) = v22;
          _os_log_impl(&_mh_execute_header, v12, v17, "Subscriptions are %s", v18, 0xCu);
          sub_100007378(v19);
        }

        *(v6 + 32) = a2 == 1;
        goto LABEL_21;
      }

      v13 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_27;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Subscription status did not change";
    }

    _os_log_impl(&_mh_execute_header, v12, v13, v24, v23, 2u);

LABEL_27:
  }
}

uint64_t sub_10010F314()
{
  sub_100106BC0(v0 + 16);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10010F378(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v4 = [a2 statusType];
    }

    else
    {
      v4 = 0;
    }

    sub_10010ED28(v4, a2 == 0);
  }

  return result;
}

uint64_t sub_10010F3F8()
{
  v1 = *(v0 + 56);

  return swift_unknownObjectRelease();
}

uint64_t sub_10010F428()
{
  if (*(v0 + 56))
  {
    [*(v0 + 48) endObservingSubscriptionStatusWithToken:?];
  }

  sub_100106BC0(v0 + 16);

  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10010F478()
{
  sub_10010F428();

  return _swift_deallocClassInstance(v0, 64, 7);
}

unint64_t sub_10010F4DC()
{
  result = qword_10021B6B8;
  if (!qword_10021B6B8)
  {
    sub_1000461CC(&qword_10021B6B0, &qword_1001A01E0);
    sub_10010F560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B6B8);
  }

  return result;
}

unint64_t sub_10010F560()
{
  result = qword_10021B6C0;
  if (!qword_10021B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B6C0);
  }

  return result;
}

__n128 sub_10010F5B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10010F5C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10010F608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10010F65C()
{
  result = qword_10021B6D0;
  if (!qword_10021B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B6D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionProvider.SubscriptionState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10010F790()
{
  result = qword_10021B6D8;
  if (!qword_10021B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B6D8);
  }

  return result;
}

unint64_t sub_10010F7E8()
{
  result = qword_10021B6E0;
  if (!qword_10021B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B6E0);
  }

  return result;
}

unint64_t sub_10010F840()
{
  result = qword_10021B6E8;
  if (!qword_10021B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B6E8);
  }

  return result;
}

void sub_10010F894(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001107D4(v3);
    v3 = v10;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v6 += 32;
    v9 = *(v6 + 8);
    v8 = *(v6 + 16);
    sub_1001159A0((v6 + 24), v4 - 1 - a1, v6);
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

uint64_t sub_10010F928(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1001107E8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    sub_100115B50((v8 + 40), v7, (v8 + 32));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_10010F9B4()
{
  v1 = dispatch_group_create();
  dispatch_group_enter(v1);
  sub_100046184(&qword_10021B7F8, &qword_1001A0390);
  v2 = swift_allocObject();
  *(v2 + 36) = 0;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_10010FA10(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  v2 = *a1;
  v1 = *(a1 + 8);

  v2(&v5, v3);
  sub_100046214(v2, v1, 1);
  return v5;
}

uint64_t sub_10010FA88()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7parsecd13ParsecService__assembly) + 16);

  os_unfair_lock_lock(v1 + 9);
  v2 = sub_10010FA10(&v1[4]);
  os_unfair_lock_unlock(v1 + 9);

  return v2;
}

void sub_10010FB00(uint64_t a1, int a2)
{
  v3 = _convertErrorToNSError(_:)();
  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000964C(v4, qword_100232AB0);
  v5 = v3;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = a2;
    *(v7 + 8) = 2112;
    *(v7 + 10) = v5;
    *v8 = v5;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v6, "new connection from %d (%@)", v7, 0x12u);
    sub_10008C86C(v8);

    v5 = oslog;
    oslog = v9;
  }
}

void sub_10010FC6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v35 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v34 = a5;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v32 = v12;
      if (qword_1002140C0 != -1)
      {
        swift_once();
      }

      v31 = v13;
      v33 = v8;
      v21 = type metadata accessor for Logger();
      sub_10000964C(v21, qword_100232AB0);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock[0] = v25;
        *v24 = 136446466;
        *(v24 + 4) = sub_100009684(v35, a4, aBlock);
        *(v24 + 12) = 1024;
        *(v24 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v22, v23, "connection from %{public}s (%d) invalidated", v24, 0x12u);
        sub_100007378(v25);
      }

      v26 = *&v20[OBJC_IVAR____TtC7parsecd13ParsecService_queue];
      v27 = swift_allocObject();
      *(v27 + 16) = v18;
      *(v27 + 24) = v20;
      aBlock[4] = sub_1001107A4;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D50C;
      aBlock[3] = &unk_1001FE6A8;
      v28 = _Block_copy(aBlock);
      v29 = v18;
      v30 = v20;
      static DispatchQoS.unspecified.getter();
      v36 = _swiftEmptyArrayStorage;
      sub_10000D23C(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags);
      sub_100046184(&unk_100217030, &unk_1001989C0);
      sub_10000CB0C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v28);

      (*(v33 + 8))(v11, v7);
      (*(v31 + 8))(v16, v32);
    }

    else
    {
    }
  }
}

uint64_t sub_1001100B4(uint64_t a1, uint64_t a2)
{
  sub_10009BF60();
  v4 = OBJC_IVAR____TtC7parsecd13ParsecService_connections;
  swift_beginAccess();
  v5 = *(a2 + v4);

  sub_100110174(a1, v5);
  v7 = v6;
  LOBYTE(a1) = v8;

  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    v9 = sub_10010F928(v7);
    swift_endAccess();
  }

  return sub_100110250();
}

void sub_100110174(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000D57C(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    type metadata accessor for ClientConnection(0);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_100110250()
{
  v1 = OBJC_IVAR____TtC7parsecd13ParsecService_connections;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v2 < 0)
  {
    v11 = *(v0 + v1);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_3:
    result = sub_10010FA88();
    if (result)
    {
      v4 = sub_10008596C();
      v5 = [v4 configuration];

      v6 = [v5 URLCache];
      if (v6)
      {
        if (qword_1002140D8 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        sub_10000964C(v7, qword_100232AF8);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, v9, "purging url cache", v10, 2u);
        }

        [v6 _CFURLCache];
        _CFURLCachePurgeMemoryCache();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_100110404()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = sub_100003650(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100003664();
  v9 = v8 - v7;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_100003664();
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_100003664();
  *&v0[OBJC_IVAR____TtC7parsecd13ParsecService_connections] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC7parsecd13ParsecService_queue;
  sub_1000382D0();
  static DispatchQoS.default.getter();
  v19 = 0;
  sub_10000D23C(&qword_100216910, &type metadata accessor for OS_dispatch_queue.Attributes);
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v4 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v1);
  *&v0[v14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = OBJC_IVAR____TtC7parsecd13ParsecService__assembly;
  sub_100046184(&qword_10021B7F0, &qword_1001A0388);
  sub_1000068B4();
  swift_allocObject();
  *&v0[v15] = sub_10010F9B4();
  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "init");
}

uint64_t sub_10011075C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1001107E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

id sub_10011085C()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  sub_100003664();
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_100003664();
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100003664();
  v10 = v9 - v8;
  sub_1000382D0();
  (*(v6 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  sub_100111F2C(&qword_1002157A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100046184(&unk_100217550, &unk_1001999F0);
  sub_1000389CC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 32) = 0;
  *(v0 + 40) = v11;
  v12 = *(v0 + 16);
  result = xpc_event_publisher_create();
  if (result)
  {
    *(v0 + 24) = result;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100110ACC()
{
  v1 = v0;
  if (qword_100214130 != -1)
  {
    sub_10000611C();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000964C(v2, qword_100232BB0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "setting up xpc event subscription", v5, 2u);
    sub_1000037A4();
  }

  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  swift_weakInit();
  v15 = sub_100111EB4;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100111388;
  v14 = &unk_1001FE710;
  v8 = _Block_copy(&v11);

  xpc_event_publisher_set_handler();
  _Block_release(v8);
  v15 = sub_100111408;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000303B8;
  v14 = &unk_1001FE738;
  v9 = _Block_copy(&v11);
  xpc_event_publisher_set_error_handler();
  _Block_release(v9);
  return xpc_event_publisher_activate();
}

void sub_100110CC0(int a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_100214130 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_10000964C(v17, qword_100232BB0);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v9, v10))
        {
          goto LABEL_31;
        }

        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "got a remove event";
      }

      else
      {
        if (a1 != 2)
        {
          if (qword_100214130 != -1)
          {
            swift_once();
          }

          v21 = type metadata accessor for Logger();
          sub_10000964C(v21, qword_100232BB0);
          v9 = Logger.logObject.getter();
          v22 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v9, v22))
          {
            goto LABEL_31;
          }

          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v43 = v24;
          *v23 = 136315138;
          type metadata accessor for xpc_event_publisher_action_t(0);
          v25 = String.init<A>(describing:)();
          v27 = sub_100009684(v25, v26, &v43);

          *(v23 + 4) = v27;
          _os_log_impl(&_mh_execute_header, v9, v22, "Unexpected XPC event publisher action: %s", v23, 0xCu);
          sub_100007378(v24);

          goto LABEL_30;
        }

        if (qword_100214130 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_10000964C(v8, qword_100232BB0);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v9, v10))
        {
          goto LABEL_31;
        }

        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "Initial XPC event subscribers all registered.";
      }

LABEL_25:
      _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);
LABEL_30:

LABEL_31:

      return;
    }

    if (!a3)
    {
LABEL_21:
      if (qword_100214130 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000964C(v20, qword_100232BB0);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_31;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Event subscriber provided no descriptor.";
      goto LABEL_25;
    }

    v18 = swift_unknownObjectRetain();
    type = xpc_get_type(v18);
    if (type != XPC_TYPE_DICTIONARY.getter())
    {
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    v28 = String.utf8CString.getter();
    string = xpc_dictionary_get_string(a3, (v28 + 32));

    if (string)
    {
      v30 = String.init(cString:)();
      v32 = v31;
      if (qword_100214130 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000964C(v33, qword_100232BB0);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v43 = v37;
        *v36 = 136315395;
        *(v36 + 4) = sub_100009684(v30, v32, &v43);
        *(v36 + 12) = 2053;
        *(v36 + 14) = a2;
        _os_log_impl(&_mh_execute_header, v34, v35, "got subscription name - %s token: %{sensitive}llu", v36, 0x16u);
        sub_100007378(v37);
      }

      os_unfair_lock_lock((v7 + 32));
      v38 = *(v7 + 40);
      swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v7 + 40);
      sub_1000BE078();
      *(v7 + 40) = v43;

      os_unfair_lock_unlock((v7 + 32));
    }

    else
    {
      if (qword_100214130 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000964C(v39, qword_100232BB0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Subscription name missing in descriptor", v42, 2u);
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100214130 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000964C(v13, qword_100232BB0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Self is nil in xpc_event_publisher_set_handler", v16, 2u);
    }
  }
}

uint64_t sub_100111388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  swift_unknownObjectRetain();
  v8(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void sub_100111408()
{
  v0 = type metadata accessor for POSIXError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = POSIXErrorCode.init(rawValue:)();
  if ((v5 & 0x100000000) != 0)
  {
    if (xpc_strerror())
    {
      v12 = String.init(cString:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    if (qword_100214130 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000964C(v15, qword_100232BB0);

    v23 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      if (v14)
      {
        v19 = v12;
      }

      else
      {
        v19 = 0x206E776F6E6B6E75;
      }

      if (!v14)
      {
        v14 = 0xED0000726F727265;
      }

      v20 = sub_100009684(v19, v14, &v25);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v23, v16, "Got unknown POSIXError - %s", v17, 0xCu);
      sub_100007378(v18);
      goto LABEL_18;
    }
  }

  else
  {
    v6 = v5;
    if (qword_100214130 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000964C(v7, qword_100232BB0);
    v23 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v24 = v6;
      sub_100111D28(_swiftEmptyArrayStorage);
      sub_100111F2C(&qword_10021B8D8, &type metadata accessor for POSIXError);
      _BridgedStoredNSError.init(_:userInfo:)();
      POSIXError._nsError.getter();
      (*(v1 + 8))(v4, v0);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v23, v8, "Got known POSIXError - %@", v9, 0xCu);
      sub_10000F94C(v10, &unk_100214C70, &qword_10019B4D0);
LABEL_18:

      return;
    }
  }

  v21 = v23;
}

uint64_t sub_1001117E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 32));
  v6 = *(v2 + 40);
  if (*(v6 + 16) && (v7 = sub_100005B74(0x5073746867696C66, 0xEB00000000687375), (v8 & 1) != 0))
  {
    v9 = 0;
    v10 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  os_unfair_lock_unlock((v3 + 32));
  if (v9)
  {
    if (qword_100214130 != -1)
    {
      sub_10000611C();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000964C(v11, qword_100232BB0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      *swift_slowAlloc() = 0;
      sub_1000085C0(&_mh_execute_header, v14, v15, "no flights push token found");
      sub_1000037A4();
    }

    sub_100111E60();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  sub_100046184(&qword_100214E48, &unk_1001995C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100197F20;
  *(inited + 32) = 0x496C656E6E616863;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = _CFXPCCreateXPCObjectFromCFObject();

  if (!v19)
  {
    if (qword_100214130 != -1)
    {
      sub_10000611C();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000964C(v35, qword_100232BB0);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      *swift_slowAlloc() = 0;
      sub_1000085C0(&_mh_execute_header, v38, v39, "Unable to bridge xpc event dictionary");
      sub_1000037A4();
    }

    sub_100111E60();
    swift_allocError();
    *v40 = 1;
    return swift_willThrow();
  }

  v20 = *(v3 + 24);
  v21 = xpc_event_publisher_fire();
  if (qword_100214130 != -1)
  {
    sub_10000611C();
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000964C(v22, qword_100232BB0);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134545665;
    *(v25 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v23, v24, "XPC Event fired for token: %{sensitive}llu", v25, 0xCu);
    sub_1000037A4();
  }

  if (!v21)
  {
    return swift_unknownObjectRelease();
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v26, v27))
  {
LABEL_20:

    sub_100111E60();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v41 = v29;
  *v28 = 134218242;
  *(v28 + 4) = v10;
  *(v28 + 12) = 2080;
  result = xpc_strerror();
  if (result)
  {
    v31 = String.init(cString:)();
    v33 = sub_100009684(v31, v32, &v41);

    *(v28 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "failed to send XPC event for token: %llu, error: %s", v28, 0x16u);
    sub_100007378(v29);
    sub_1000037A4();

    sub_1000037A4();

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_100111CD0()
{
  sub_100111C90();

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_100111D28(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_100046184(&qword_100216690, &qword_1001A0410);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_100111EBC(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_100005B74(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_100028734(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_100111E60()
{
  result = qword_10021B8D0;
  if (!qword_10021B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B8D0);
  }

  return result;
}

uint64_t sub_100111EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_10021B8E0, &qword_1001A0418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100111F2C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for XPCEventsError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100112054()
{
  result = qword_10021B8F0;
  if (!qword_10021B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B8F0);
  }

  return result;
}

uint64_t sub_1001120A8()
{
  sub_1000037B0();
  v2 = *(*(v0 + *(v1 + 152)) + 16);

  os_unfair_lock_lock(v2);
  v28 = *(v0 + 32);
  v29 = *(v0 + 24);
  v27 = *(v0 + 40);
  v31 = *(v0 + 41);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 64);
  v30 = *(v0 + 72);
  swift_unknownObjectRetain();

  v33 = v5;

  os_unfair_lock_unlock(v2);

  v6 = *(v0 + 96);
  static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)();
  static os_log_type_t.error.getter();
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100197F30;
  sub_100008D34(*(v0 + 80));
  v8 = StaticString.description.getter();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_10000512C();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  strcpy((v7 + 72), "resourceAccess");
  *(v7 + 87) = -18;
  *(v7 + 136) = &type metadata for String;
  *(v7 + 144) = v11;
  v32 = v11;
  *(v7 + 112) = 0xD000000000000010;
  *(v7 + 120) = 0x80000001001AA3A0;
  os_log(_:dso:log:type:_:)();

  if ((v31 & 1) == 0)
  {
    static os_log_type_t.error.getter();
    v12 = sub_100005A6C();
    *(v12 + 16) = xmmword_100197F20;
    v13 = StaticString.description.getter();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = v32;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    sub_100007D4C();

    if (v3)
    {

      static os_log_type_t.error.getter();
      v15 = sub_100005A6C();
      *(v15 + 16) = xmmword_100197F20;
      *(v15 + 56) = sub_100046184(&unk_10021BC50, &qword_1001A0680);
      *(v15 + 64) = sub_100095D74(&unk_10021A4B0, &unk_10021BC50, &qword_1001A0680);
      *(v15 + 32) = v3;
      sub_100007D4C();
    }
  }

  if (v4)
  {

    static os_log_type_t.error.getter();
    v16 = sub_100005A6C();
    *(v16 + 16) = xmmword_100197F20;
    *(v16 + 56) = sub_100046184(&unk_10021BC40, &qword_10019F288);
    *(v16 + 64) = sub_100095D74(&unk_10021A4A0, &unk_10021BC40, &qword_10019F288);
    *(v16 + 32) = v4;
    sub_100007D4C();
  }

  result = sub_10000D57C(v33);
  if (result)
  {
    v18 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v19 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v33 + 8 * v19 + 32);
        swift_unknownObjectRetain();
      }

      ++v19;
      static os_log_type_t.error.getter();
      v21 = sub_10000AB40();
      *(v21 + 16) = xmmword_100197F20;
      swift_unknownObjectRetain();
      v22 = String.init<A>(describing:)();
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = v32;
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      os_log(_:dso:log:type:_:)();
      swift_unknownObjectRelease();
    }

    while (v18 != v19);
  }

  static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)();
  sub_100006BA8();
  if (sub_100112B44(v24, v25, v26))
  {
    static os_log_type_t.fault.getter();
    os_log(_:dso:log:type:_:)();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1001125B8()
{
  v1 = *(*(v0 + *(*v0 + 152)) + 16);

  os_unfair_lock_lock(v1);
  v24 = *(v0 + 32);
  v25 = *(v0 + 24);
  v23 = *(v0 + 40);
  v27 = *(v0 + 41);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  v26 = *(v0 + 72);
  swift_unknownObjectRetain();

  v29 = v4;

  os_unfair_lock_unlock(v1);

  v5 = *(v0 + 96);
  static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)();
  static os_log_type_t.error.getter();
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100197F30;
  sub_100008D34(*(v0 + 80));
  v7 = StaticString.description.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_10000512C();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 64) = v10;
  strcpy((v6 + 72), "networkRequest");
  *(v6 + 87) = -18;
  *(v6 + 136) = &type metadata for String;
  *(v6 + 144) = v10;
  v28 = v10;
  *(v6 + 112) = 0xD000000000000010;
  *(v6 + 120) = 0x80000001001AA3A0;
  os_log(_:dso:log:type:_:)();

  if ((v27 & 1) == 0)
  {
    static os_log_type_t.error.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100197F20;
    v12 = StaticString.description.getter();
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = v28;
    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    os_log(_:dso:log:type:_:)();

    if (v2)
    {

      static os_log_type_t.error.getter();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_100197F20;
      *(v14 + 56) = sub_100046184(&unk_10021BC50, &qword_1001A0680);
      *(v14 + 64) = sub_100095D74(&unk_10021A4B0, &unk_10021BC50, &qword_1001A0680);
      *(v14 + 32) = v2;
      os_log(_:dso:log:type:_:)();
    }
  }

  if (v3)
  {

    static os_log_type_t.error.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100197F20;
    *(v15 + 56) = sub_100046184(&unk_10021BC40, &qword_10019F288);
    *(v15 + 64) = sub_100095D74(&unk_10021A4A0, &unk_10021BC40, &qword_10019F288);
    *(v15 + 32) = v3;
    os_log(_:dso:log:type:_:)();
  }

  result = sub_10000D57C(v29);
  if (result)
  {
    v17 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v18 = 0;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v19 = *(v29 + 8 * v18 + 32);
        swift_unknownObjectRetain();
      }

      ++v18;
      static os_log_type_t.error.getter();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100197F20;
      swift_unknownObjectRetain();
      v21 = String.init<A>(describing:)();
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = v28;
      *(v20 + 32) = v21;
      *(v20 + 40) = v22;
      os_log(_:dso:log:type:_:)();
      swift_unknownObjectRelease();
    }

    while (v17 != v18);
  }

  static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)();
  if (sub_100112B44(&type metadata for ResourceNetworkActivity, &off_1001FE818, sub_1000E53A0))
  {
    static os_log_type_t.fault.getter();
    os_log(_:dso:log:type:_:)();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_100112B44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 + 80);
  v8[3] = a1;
  v8[4] = a2;
  v8[0] = v5;
  v6 = sub_100007534(v8, a1);
  LOBYTE(a3) = a3(*v6);
  sub_100007378(v8);
  return a3 & 1;
}

uint64_t sub_100112BA4()
{
  v4 = v0;
  v5 = sub_100046184(&unk_100214C80, &qword_10019AFC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_1000067A4();
  __chkstk_darwin(v7);
  sub_100003B98();
  sub_10000F038(v40, v39, &qword_10021BC68, &qword_1001A0690);
  sub_100114454(v0);
  if ((v42 & 1) == 0)
  {
    v8 = v43;
    if (v43)
    {
      v3 = v40[1];
      v38 = v40[0];
      LOBYTE(v2) = v41;
      v9 = *(v4 + 80);
      sub_1000036C8();
      v11 = *(v10 + 136);
      sub_10000DEE4();
      sub_10000F038(v4 + v11, v1, &unk_100214C80, &qword_10019AFC0);
      v12 = type metadata accessor for OSSignpostID();
      result = sub_100008D0C(v1, 1, v12);
      if (result != 1)
      {
        v14 = *(v4 + 88);

        v15 = "lifetime";
        v16 = 8;
        v17 = static os_signpost_type_t.end.getter();
        switch(v9)
        {
          case 1:
            v15 = "cacheAccess";
            v16 = 11;
            break;
          case 2:
            v15 = "cacheWrite";
            v16 = 10;
            break;
          case 3:
            v15 = "resultLifetime";
            v16 = 14;
            break;
          default:
            break;
        }

        LOBYTE(v37) = v2;
        sub_1000070D0(v17, v14, v15, v16, 2, v1, v38, v3, v37, v8);

        sub_10000690C(v12);
        v28 = *(v29 + 8);
        v26 = v1;
        v27 = v12;
        goto LABEL_11;
      }

LABEL_18:
      __break(1u);
      return result;
    }
  }

  v18 = *(v4 + 80);
  sub_1000036C8();
  v20 = *(v19 + 136);
  sub_10000DEE4();
  sub_10000F038(v4 + v20, v2, &unk_100214C80, &qword_10019AFC0);
  v21 = type metadata accessor for OSSignpostID();
  result = sub_100007928(v2);
  if (v22)
  {
    __break(1u);
    goto LABEL_18;
  }

  v23 = *(v4 + 88);
  sub_1001143A0();
  sub_10000690C(v21);
  v25 = *(v24 + 8);
  v26 = sub_10000F18C();
LABEL_11:
  v28(v26, v27);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_10000B298(v40, &qword_10021BC68, &qword_1001A0690);
  }

  v31 = Strong;
  v39[0] = v4;
  String.init<A>(describing:)();
  sub_10000EAE0();
  sub_100008AA0(v32, v33, v34, v35, &off_1001FD218);

  os_unfair_lock_unlock(v3);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v31 + 24);
    swift_getObjectType();
    sub_100006FE0();
    v36(v4, &off_1001FD218);
    swift_unknownObjectRelease();
  }

  sub_10000EC20();
  sub_1000099A8();
  sub_100006130();
  sub_100008110(_swiftEmptyArrayStorage);
  *(v4 + 81) = v2;
  return swift_weakAssign();
}

uint64_t sub_100112F10()
{
  v1 = v0;
  v2 = sub_100046184(&unk_100214C80, &qword_10019AFC0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v4);
  v8 = v38 - v7 + 16;
  v9 = *(v0 + 40);
  v40 = *(v0 + 24);
  v41 = v9;
  v42 = *(v0 + 56);
  v43 = *(v0 + 72);
  sub_10000F038(&v40, v38, &unk_10021BC30, &unk_1001A0670);
  sub_10000E7E8();
  if ((BYTE1(v41) & 1) == 0)
  {
    v10 = v42;
    if (v42)
    {
      v11 = v40;
      v12 = v41;
      v13 = *(v1 + 80);
      v14 = *(*v1 + 136);
      swift_beginAccess();
      sub_10000F038(v1 + v14, v8, &unk_100214C80, &qword_10019AFC0);
      v15 = type metadata accessor for OSSignpostID();
      result = sub_100008D0C(v8, 1, v15);
      if (result != 1)
      {
        v17 = *(v1 + 96);

        v18 = static os_signpost_type_t.end.getter();
        v19 = sub_100008D34(v13);
        LOBYTE(v36) = v12;
        sub_1000070D0(v18, v17, v19, v20, v21, v8, v11, *(&v11 + 1), v36, v10);

        (*(*(v15 - 8) + 8))(v8, v15);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  v22 = *(v1 + 80);
  v23 = *(*v1 + 136);
  swift_beginAccess();
  sub_10000F038(v1 + v23, v6, &unk_100214C80, &qword_10019AFC0);
  v24 = type metadata accessor for OSSignpostID();
  result = sub_100008D0C(v6, 1, v24);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = *(v1 + 96);
  static os_signpost_type_t.end.getter();
  sub_100008D34(v22);
  os_signpost(_:dso:log:name:signpostID:)();
  (*(*(v24 - 8) + 8))(v6, v24);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    *&v38[0] = v1;
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v31 = *(*(v27 + 32) + 16);
    os_unfair_lock_lock(v31);
    sub_10000ECB8(v27, v28, v30, v1, &off_1001FD218);

    os_unfair_lock_unlock(v31);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v27 + 24);
      ObjectType = swift_getObjectType();
      (*(v32 + 16))(v1, &off_1001FD218, ObjectType, v32);
      swift_unknownObjectRelease();
    }

    LOBYTE(v38[0]) = 1;

    sub_10000B298(&v40, &unk_10021BC30, &unk_1001A0670);
    v34 = v38[0];
    v35 = *(v1 + 40);
    v38[0] = *(v1 + 24);
    v38[1] = v35;
    v38[2] = *(v1 + 56);
    v39 = *(v1 + 72);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 41) = v34;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = _swiftEmptyArrayStorage;
    *(v1 + 72) = 0;
    sub_10000B298(v38, &unk_10021BC30, &unk_1001A0670);
    *(v1 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_100112B44(&type metadata for ResourceNetworkActivity, &off_1001FE818, sub_1000E53A0))
    {
      static os_log_type_t.fault.getter();
      os_log(_:dso:log:type:_:)();
    }

    return sub_10000B298(&v40, &unk_10021BC30, &unk_1001A0670);
  }
}

uint64_t sub_1001133D4()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_1001140F8();
  }

  v1 = sub_10001006C();
  v2 = *(v1 + *(*v1 + 464));
  swift_unknownObjectRelease();
  v3 = *(v1 + *(*v1 + 472));

  v4 = *(v1 + *(*v1 + 480));
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10011345C()
{
  v1 = v0;
  v2 = *(v0 + 96);
  static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)();
  sub_1001125B8();
  static os_log_type_t.error.getter();
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100197F20;
  v4 = (v1 + *(*v1 + 464));
  v6 = *v4;
  v5 = v4[1];
  swift_unknownObjectRetain();
  sub_100046184(&qword_100219560, &qword_10019E4F8);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v3 + 56) = &type metadata for String;
  v10 = sub_10000512C();
  *(v3 + 64) = v10;
  *(v3 + 32) = v7;
  *(v3 + 40) = v9;
  os_log(_:dso:log:type:_:)();

  static os_log_type_t.error.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100197F20;
  ObjectType = swift_getObjectType();
  v35 = v5;
  v12 = v5;
  v13 = *(v5 + 16);
  v13(ObjectType, v12);
  sub_100046184(&qword_100218A80, &qword_10019D020);
  v14 = String.init<A>(describing:)();
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = v10;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  os_log(_:dso:log:type:_:)();

  v36 = sub_1001139AC();
  if (v18)
  {
    static os_log_type_t.error.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100197F20;
    v13(ObjectType, v35);
    v20 = String.init<A>(describing:)();
    v21 = v10;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = v10;
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v23 = v16;
    v24 = v17;
    v25 = HIDWORD(v17);
    static os_log_type_t.error.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100197F20;
    *(v26 + 56) = &type metadata for Int;
    *(v26 + 64) = &protocol witness table for Int;
    *(v26 + 32) = v23;
    os_log(_:dso:log:type:_:)();

    static os_log_type_t.error.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100197F20;
    *(v27 + 56) = &type metadata for UInt32;
    *(v27 + 64) = &protocol witness table for UInt32;
    *(v27 + 32) = v25;
    os_log(_:dso:log:type:_:)();

    static os_log_type_t.error.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100197F20;
    *(v28 + 56) = &type metadata for UInt32;
    *(v28 + 64) = &protocol witness table for UInt32;
    *(v28 + 32) = v24;
    os_log(_:dso:log:type:_:)();

    static os_log_type_t.error.getter();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100197F20;
    *(v29 + 56) = &type metadata for Double;
    *(v29 + 64) = &protocol witness table for Double;
    *(v29 + 32) = v36;
    os_log(_:dso:log:type:_:)();
    v21 = v10;
  }

  static os_log_type_t.error.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100197F20;
  v37 = *(v1 + *(*v1 + 472));
  swift_errorRetain();
  sub_100046184(&unk_10021BC20, &unk_10019E500);
  v31 = String.init<A>(describing:)();
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v21;
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  os_log(_:dso:log:type:_:)();

  static os_log_type_t.error.getter();
  return os_log(_:dso:log:type:_:)();
}

uint64_t sub_1001139AC()
{
  v1 = v0;
  v2 = (v0 + *(*v0 + 464));
  v3 = *v2;
  v4 = v2[1];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  v7 = v6(ObjectType, v4);
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v9 statusCode];
      v10 = (*(v4 + 8))(ObjectType, v4);
      if (!v10)
      {

        *&result = 0.0;
        return result;
      }

      v11 = v10;
      *&v28 = 0xD000000000000021;
      *(&v28 + 1) = 0x80000001001AD090;
      AnyHashable.init<A>(_:)();
      sub_100034150(v11, &v28);
      sub_10003430C(v27);
      if (v29)
      {
        swift_dynamicCast();
      }

      else
      {
        sub_10000B298(&v28, &qword_1002181D0, &qword_100198E00);
      }

      *&v28 = 0xD00000000000001DLL;
      *(&v28 + 1) = 0x80000001001AD070;
      AnyHashable.init<A>(_:)();
      sub_100034150(v11, &v28);
      sub_10003430C(v27);
      if (v29)
      {
        swift_dynamicCast();
      }

      else
      {
        sub_10000B298(&v28, &qword_1002181D0, &qword_100198E00);
      }

      AnyHashable.init<A>(_:)();
      sub_100034150(v11, &v28);
      sub_10003430C(v27);
      if (v29)
      {
        if (swift_dynamicCast())
        {
          v26 = -2.31584178e77;
          goto LABEL_26;
        }
      }

      else
      {
        sub_10000B298(&v28, &qword_1002181D0, &qword_100198E00);
      }

      AnyHashable.init<A>(_:)();
      sub_100034150(v11, &v28);
      sub_10003430C(v27);
      if (v29)
      {
        if (swift_dynamicCast())
        {
LABEL_26:
          AnyHashable.init<A>(_:)();
          sub_100034150(v11, &v28);

          sub_10003430C(v27);
          if (v29)
          {
            if (swift_dynamicCast())
            {
              *&result = -2.31584178e77 - v26;
              return result;
            }
          }

          else
          {
            sub_10000B298(&v28, &qword_1002181D0, &qword_100198E00);
          }

          goto LABEL_32;
        }
      }

      else
      {
        sub_10000B298(&v28, &qword_1002181D0, &qword_100198E00);
      }

LABEL_32:
      *&result = 0.0;
      return result;
    }
  }

  sub_100046184(&unk_100217040, &qword_1001989F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100197F20;
  v27[0] = v6(ObjectType, v4);
  sub_100046184(&qword_100218A80, &qword_10019D020);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_10000512C();
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_10000E38C("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s", 68, 2, v12);

  v17 = *(*(v1 + *(*v1 + 152)) + 16);

  os_unfair_lock_lock(v17);
  if ((*(v1 + 88) & 1) == 0)
  {
    v18 = *(*v1 + 480);
    v19 = *(v1 + v18);
    if (v19)
    {
      v20 = *(v1 + v18);
      swift_unknownObjectRetain();
      if (nw_activity_is_activated())
      {
        *(v1 + *(*v1 + 472));
        nw_activity_complete_with_reason();
      }

      else
      {
        v22 = *(v1 + 96);
        static os_log_type_t.info.getter();
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_100197F20;
        v27[0] = v19;
        swift_unknownObjectRetain();
        sub_100046184(&qword_100219548, &unk_10019E4E8);
        v24 = String.init<A>(describing:)();
        *(v23 + 56) = &type metadata for String;
        *(v23 + 64) = v16;
        *(v23 + 32) = v24;
        *(v23 + 40) = v25;
        os_log(_:dso:log:type:_:)();
      }

      swift_unknownObjectRelease();
    }

    sub_100112F10();
  }

  os_unfair_lock_unlock(v17);

  *&result = 0.0;
  return result;
}

uint64_t sub_100114008(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100198E20;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = a1;
  *(v7 + 96) = &type metadata for UInt32;
  *(v7 + 104) = &protocol witness table for UInt32;
  *(v7 + 72) = v3;
  *(v7 + 136) = &type metadata for UInt32;
  *(v7 + 144) = &protocol witness table for UInt32;
  *(v7 + 112) = v6;
  *(v7 + 176) = &type metadata for Double;
  *(v7 + 184) = &protocol witness table for Double;
  *(v7 + 152) = a3;
  sub_10000E38C("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

void sub_1001140F8()
{
  sub_10000DC90();
  if ((v0[88] & 1) == 0)
  {
    v1 = v0;
    v2 = sub_1001139AC();
    if (v5)
    {
      sub_100046184(&unk_100217040, &qword_1001989F0);
      v6 = sub_10000AB40();
      *(v6 + 16) = xmmword_100197F20;
      v7 = &v0[*(*v0 + 464)];
      v8 = *v7;
      v9 = v7[1];
      ObjectType = swift_getObjectType();
      (*(v9 + 16))(ObjectType, v9);
      sub_100046184(&qword_100218A80, &qword_10019D020);
      v11 = String.init<A>(describing:)();
      v13 = v12;
      *(v6 + 56) = &type metadata for String;
      *(v6 + 64) = sub_10000512C();
      *(v6 + 32) = v11;
      *(v6 + 40) = v13;
      sub_10000E38C("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s", 68, 2, v6);
    }

    else
    {
      (*(*v0 + 568))(v3, v4, *&v2);
    }

    v14 = *(*&v1[*(*v1 + 152)] + 16);

    os_unfair_lock_lock(v14);
    if ((v1[88] & 1) == 0)
    {
      v15 = *(*v1 + 480);
      if (*&v1[v15])
      {
        v16 = *&v1[v15];
        swift_unknownObjectRetain();
        if (nw_activity_is_activated())
        {
          *&v1[*(*v1 + 472)];
          nw_activity_complete_with_reason();
        }

        else
        {
          v17 = *(v1 + 12);
          static os_log_type_t.info.getter();
          sub_100046184(&unk_100217040, &qword_1001989F0);
          v18 = sub_10000AB40();
          *(v18 + 16) = xmmword_100197F20;
          swift_unknownObjectRetain();
          sub_100046184(&qword_100219548, &unk_10019E4E8);
          v19 = String.init<A>(describing:)();
          v21 = v20;
          *(v18 + 56) = &type metadata for String;
          *(v18 + 64) = sub_10000512C();
          *(v18 + 32) = v19;
          *(v18 + 40) = v21;
          os_log(_:dso:log:type:_:)();
        }

        swift_unknownObjectRelease();
      }

      sub_100112F10();
    }

    os_unfair_lock_unlock(v14);
  }

  sub_10000AAF4();
}

uint64_t sub_1001143A0()
{
  static os_signpost_type_t.end.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t sub_100114454(uint64_t a1)
{
  result = sub_10011465C(a1);
  if (result)
  {
    v3 = *(v1 + 88);

    static os_log_type_t.debug.getter();
    sub_100046184(&unk_100217040, &qword_1001989F0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100198F10;
    v5 = aQuerycache_2[0];
    v6 = aQuerycache_2[1];
    *(v4 + 56) = &type metadata for String;
    v7 = sub_10000512C();
    *(v4 + 64) = v7;
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    sub_10000EA9C();

    v8 = Dictionary.description.getter();
    v10 = v9;

    *(v4 + 96) = &type metadata for String;
    *(v4 + 104) = v7;
    *(v4 + 72) = v8;
    *(v4 + 80) = v10;
    os_log(_:dso:log:type:_:)();

    v11 = aQuerycache_2[0];
    v12 = aQuerycache_2[1];
    swift_bridgeObjectRetain_n();

    v13._countAndFlagsBits = 46;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = v11;
    v14._object = v12;
    String.append(_:)(v14);

    v15 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    AnalyticsSendEvent();
  }

  return result;
}

uint64_t sub_10011465C(uint64_t a1)
{
  v3 = *(v1 + 80);
  v5 = sub_100029FC4(&type metadata for QueryCache.Activity);
  result = 0;
  if (v5)
  {
    if (a1)
    {
      v7 = v4;
      v8 = *(v4 + 16);

      v8(v5, v7);
      UInt._bridgeToObjectiveC()();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10000F318();

      (*(v7 + 8))(v5, v7);
      sub_10000E96C();
      Double._bridgeToObjectiveC()();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10000F318();

      return a1;
    }
  }

  return result;
}

uint64_t sub_1001147C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_100067C44();
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

void sub_1001147FC(void *a1@<X8>)
{
  v3 = *v1;
  _CPStartNetworkSearchFeedback.redactUnused()();
  *a1 = v4;
}

uint64_t sub_100114828()
{
  v1 = qword_100232D80;
  v2 = type metadata accessor for Client();
  sub_10000374C(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_100114884()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_1001140F8();
  }

  v1 = sub_1001133D4();
  v2 = qword_100232D80;
  v3 = type metadata accessor for Client();
  sub_10000374C(v3);
  (*(v4 + 8))(v1 + v2);
  return v1;
}

uint64_t sub_1001148EC()
{
  v0 = sub_100114884();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ResourceAccessNetworkSpan()
{
  result = qword_10021B928;
  if (!qword_10021B928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011498C()
{
  result = type metadata accessor for Client();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100114A24()
{
  sub_10000DC90();
  v1 = *(v0 + 96);
  static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)();
  sub_10011345C();
  static os_log_type_t.error.getter();
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v2 = sub_10000AB40();
  *(v2 + 16) = xmmword_100197F20;
  v3 = Client.name.getter();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  v6 = sub_10000512C();
  *(v2 + 64) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  os_log(_:dso:log:type:_:)();

  static os_log_type_t.error.getter();
  v7 = sub_10000AB40();
  *(v7 + 16) = xmmword_100197F20;
  v8 = Client.name.getter();
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = v6;
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  os_log(_:dso:log:type:_:)();

  static os_log_type_t.error.getter();
  sub_10000AAF4();

  return os_log(_:dso:log:type:_:)();
}

uint64_t sub_100114BBC(uint64_t a1, unint64_t a2, double a3)
{
  v3 = sub_1000E3D6C(a1, a2, a3);
  Client.type.getter();
  [objc_allocWithZone(NSNumber) initWithUnsignedInteger:ClientType.rawValue.getter()];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000F318();
  sub_10000E2DC(v3);

  v4 = sub_10000F18C();

  return sub_100114008(v4, v5, v6);
}

unint64_t sub_100114CBC()
{
  result = qword_10021BBC0;
  if (!qword_10021BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BBC0);
  }

  return result;
}

unint64_t sub_100114D10(uint64_t a1)
{
  *(a1 + 8) = sub_100114D40();
  result = sub_100114D94();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100114D40()
{
  result = qword_10021BBC8;
  if (!qword_10021BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BBC8);
  }

  return result;
}

unint64_t sub_100114D94()
{
  result = qword_10021BBD0;
  if (!qword_10021BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BBD0);
  }

  return result;
}

unint64_t sub_100114DE8(uint64_t a1)
{
  result = sub_100114E10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100114E10()
{
  result = qword_10021BC18;
  if (!qword_10021BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BC18);
  }

  return result;
}

uint64_t NSFileManager.feedbackLoggerCacheDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v23[-v11];
  __chkstk_darwin(v10);
  v14 = &v23[-v13];
  v24 = 0;
  v15 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v24];
  v16 = v24;
  if (v15)
  {
    v17 = v15;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v16;

    (*(v5 + 32))(v14, v12, v4);
    URL.appendingPathComponent(_:isDirectory:)();
    URL.standardizedFileURL.getter();
    v19 = *(v5 + 8);
    v19(v9, v4);
    v19(v14, v4);
    v20 = 0;
  }

  else
  {
    v21 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v20 = 1;
  }

  return sub_1000051C0(a1, v20, 1, v4);
}

void NSFileManager.forceMoveItem(at:to:)()
{
  v1 = v0;
  URL.path.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 fileExistsAtPath:v2];

  if (v3)
  {
    URL.path.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v1 fileExistsAtPath:v4];

    if (v5)
    {
      URL._bridgeToObjectiveC()(v6);
      v8 = v7;
      v20 = 0;
      v9 = [v1 removeItemAtURL:v7 error:&v20];

      v10 = v20;
      if (!v9)
      {
LABEL_7:
        v19 = v10;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return;
      }

      v11 = v20;
    }

    URL._bridgeToObjectiveC()(v6);
    v13 = v12;
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v20 = 0;
    v17 = [v1 moveItemAtURL:v13 toURL:v15 error:&v20];

    v10 = v20;
    if (v17)
    {
      v18 = v20;
      return;
    }

    goto LABEL_7;
  }
}

unint64_t sub_100115264()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = sub_1000B2EB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1001152E8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_100046184(&qword_1002183B0, &qword_10019C758);
  sub_100005490(v6);
  v8 = *(v7 + 64);
  sub_100003760();
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for TopicCacheEntry();
  v13 = sub_1000036B8(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100003664();
  v18 = v17 - v16;
  if (sub_100008D0C(a1, 1, v19) == 1)
  {
    sub_10000B240(a1, &qword_1002183B0, &qword_10019C758);
    sub_1000BC030(a2);

    sub_10000B240(v11, &qword_1002183B0, &qword_10019C758);
  }

  else
  {
    sub_1000A6BC0(a1, v18);
    v20 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1000BDC98(v18, a2);

    *v3 = v22;
  }
}

uint64_t sub_100115440(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&unk_100216F00, &unk_10019B3D0);
  sub_100005490(v4);
  v6 = *(v5 + 64);
  sub_100003760();
  __chkstk_darwin(v7);
  v9 = &v12 - v8;

  URLQueryItem.init(name:value:)();
  v10 = type metadata accessor for URLQueryItem();
  sub_1000051C0(v9, 0, 1, v10);
  sub_100005D5C();
  sub_100019D4C(v9, a1, a2);
  return swift_endAccess();
}

BOOL sub_100115534()
{
  v1 = sub_100046184(&unk_100216F00, &unk_10019B3D0);
  sub_100005490(v1);
  v3 = *(v2 + 64);
  sub_100003760();
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = OBJC_IVAR____TtC7parsecd23ParsecURLRequestBuilder_queryItems;
  sub_10000F284();
  v8 = *(v0 + v7);
  if (*(v8 + 16) && (v9 = sub_1000078A0(), v11 = sub_100005B74(v9, v10), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v8 + 56);
    v15 = type metadata accessor for URLQueryItem();
    sub_1000036B8(v15);
    (*(v16 + 16))(v6, v14 + *(v16 + 72) * v13, v15);
    v17 = v6;
    v18 = 0;
  }

  else
  {
    v15 = type metadata accessor for URLQueryItem();
    v17 = sub_100009940();
  }

  sub_10000DCAC(v17, v18);
  swift_endAccess();
  type metadata accessor for URLQueryItem();
  v19 = sub_100009940();
  v21 = sub_100008D0C(v19, v20, v15) != 1;
  sub_10000B240(v6, &unk_100216F00, &unk_10019B3D0);
  return v21;
}

uint64_t sub_10011567C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC7parsecd23ParsecURLRequestBuilder_httpHeader;
  swift_beginAccess();
  if (!*(*(v2 + v5) + 16) || (sub_100005B74(a1, a2), (v6 & 1) == 0))
  {
    swift_endAccess();
    sub_100005D5C();

    v7 = *(v2 + v5);
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + v5);
    sub_1000BD710();
    *(v2 + v5) = v9;
  }

  return swift_endAccess();
}

uint64_t sub_10011575C()
{
  v0 = URLQueryItem.name.getter();
  v2 = v1;
  if (v0 == URLQueryItem.name.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1001157FC()
{
  result = type metadata accessor for URLComponents();
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

uint64_t sub_10011589C(uint64_t a1)
{
  v2 = sub_100046184(&unk_100216F00, &unk_10019B3D0);
  sub_100005490(v2);
  v4 = *(v3 + 64);
  sub_100003760();
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  URLQueryItem.name.getter();
  v9 = v8;
  v10 = type metadata accessor for URLQueryItem();
  sub_1000036B8(v10);
  (*(v11 + 16))(v7, a1, v10);
  sub_1000051C0(v7, 0, 1, v10);
  sub_100005D5C();
  v12 = sub_1000078A0();
  sub_100019D4C(v12, v13, v9);
  return swift_endAccess();
}

char *sub_1001159A0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100006164(a3, result);
  }

  return result;
}

char *sub_1001159C8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100006164(a3, result);
  }

  return result;
}

char *sub_100115A08(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_100006164(a3, result);
  }

  return result;
}

char *sub_100115A28(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return sub_100006164(a3, result);
  }

  return result;
}

uint64_t sub_100115A90()
{
  sub_10000E218();
  if (v3 && (v4 = sub_100046184(&qword_100219BD8, &unk_1001A0700), result = sub_1000036B8(v4), v1 + *(v6 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      sub_100006BC0();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_100046184(&qword_100219BD8, &unk_1001A0700);
    sub_100006BC0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_100115B50(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100006164(a3, result);
  }

  return result;
}

uint64_t sub_100115B88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_10000E218();
  if (v8 && (v9 = (a4)(0), result = sub_1000036B8(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_100006BC0();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_100006BC0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_100115C3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100046184(&qword_1002161A8, &qword_1001A0730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100115D54()
{
  sub_100005510();
  if (v5)
  {
    sub_100005DE0();
    if (v7 != v8)
    {
      sub_100005900();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100006994(v6);
  if (v3)
  {
    sub_100046184(&qword_10021BDF0, &qword_1001A0720);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v2 + 4] <= v9 + 4)
    {
      v12 = sub_100006B0C();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100046184(&qword_10021BDF8, &qword_1001A0728);
    sub_100006B0C();
    swift_arrayInitWithCopy();
  }
}

void sub_100115E64()
{
  sub_100005510();
  if (v5)
  {
    sub_100005DE0();
    if (v7 != v8)
    {
      sub_100005900();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100006994(v6);
  if (v3)
  {
    sub_100046184(&qword_1002161F0, &unk_1001A0750);
    v9 = sub_100006F24();
    v10 = j__malloc_size(v9);
    sub_1000040C0(v10);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || &v0[16 * v2 + 32] <= v9 + 32)
    {
      v12 = sub_100006B0C();
      memmove(v12, v13, v14);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    sub_100046184(&qword_1002161F8, &qword_10019A698);
    sub_100006B0C();
    swift_arrayInitWithCopy();
  }
}

void sub_100115F50()
{
  sub_100005510();
  if (v5)
  {
    sub_100005DE0();
    if (v7 != v8)
    {
      sub_100005900();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100006994(v6);
  if (v3)
  {
    sub_100046184(&qword_100216160, &qword_10019A598);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * v10 - 64;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_100116060(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    sub_100005DE0();
    if (v13 != v14)
    {
      sub_100005900();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100046184(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = j__malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_100115B88(a4 + v24, v15, v20 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10011628C()
{
  sub_100005510();
  if (v5)
  {
    sub_100005DE0();
    if (v7 != v8)
    {
      sub_100005900();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100006994(v6);
  if (v3)
  {
    sub_100046184(&qword_10021BE00, &qword_1001A0738);
    v9 = sub_100006F24();
    v10 = j__malloc_size(v9);
    sub_1000040C0(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_100116358(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_100046184(&qword_100219BE0, &qword_10019EA90);
  v10 = *(sub_100046184(&qword_100219BD8, &unk_1001A0700) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(sub_100046184(&qword_100219BD8, &unk_1001A0700) - 8) + 80);
  if (v5)
  {
    sub_100115A90();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_100116560(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v8 = type metadata accessor for URLQueryItem();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v152 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v165 = &v143 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v143 - v15;
  v17 = __chkstk_darwin(v14);
  v18 = __chkstk_darwin(v17);
  v161 = &v143 - v19;
  v20 = __chkstk_darwin(v18);
  v160 = &v143 - v21;
  v22 = __chkstk_darwin(v20);
  __chkstk_darwin(v22);
  v27 = &v143 - v23;
  v158 = v24;
  v159 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_114:
    v170 = *v147;
    if (!v170)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v166 = v25;
  v143 = a4;
  v29 = 0;
  v170 = v24 + 16;
  v168 = (v24 + 32);
  v169 = (v24 + 8);
  v30 = _swiftEmptyArrayStorage;
  v162 = v8;
  v154 = v16;
  v144 = v26;
  v146 = &v143 - v23;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v149 = v29;
    if (v29 + 1 < v28)
    {
      v164 = v28;
      v145 = v30;
      v33 = v27;
      v34 = *v159;
      v35 = *(v24 + 72);
      v36 = v26;
      v157 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v24 + 16);
      v39(v33, v38, v8);
      v40 = &v34[v35 * v37];
      v41 = v146;
      v156 = v39;
      v39(v36, v40, v8);
      LODWORD(v163) = sub_10011575C();
      if (v5)
      {
        v142 = *v169;
        (*v169)(v36, v8);
        (v142)(v41, v8);
LABEL_124:

        return;
      }

      v148 = 0;
      v30 = v169;
      v42 = *v169;
      (*v169)(v36, v8);
      v155 = v42;
      (v42)(v41, v8);
      v43 = v149 + 2;
      v44 = &v34[v35 * (v149 + 2)];
      v32 = v157;
      v45 = v35;
      v167 = v35;
      v46 = v164;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v162;
        v5 = v156;
        (v156)(v160, v44, v162);
        v5(v161, v38, v49);
        v50 = URLQueryItem.name.getter();
        v52 = v51;
        if (v50 == URLQueryItem.name.getter() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v56 = v162;
        v30 = v155;
        (v155)(v161, v162);
        (v30)(v160, v56);
        v45 = v167;
        v44 += v167;
        v38 += v167;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v164;
        if ((v163 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v163)
      {
        v31 = v149;
        if (v32 < v149)
        {
          goto LABEL_149;
        }

        v5 = v148;
        if (v149 >= v32)
        {
          v24 = v158;
          v30 = v145;
          v8 = v162;
          v16 = v154;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v149;
        v61 = v149 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v159;
            if (!*v159)
            {
              goto LABEL_154;
            }

            v64 = v162;
            v164 = *v168;
            v164(v152, &v63[v61], v162);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v164(&v63[v58], v152, v64);
            v5 = v148;
            v45 = v167;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v148;
      }

      v24 = v158;
      v30 = v145;
      v8 = v162;
      v16 = v154;
      v31 = v149;
    }

LABEL_39:
    v66 = v159[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v143)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = *(v30 + 2);
      sub_10006C888();
      v30 = v133;
    }

    v89 = *(v30 + 2);
    v88 = *(v30 + 3);
    v90 = v89 + 1;
    v157 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_10006C888();
      v30 = v134;
    }

    *(v30 + 2) = v90;
    v91 = v30 + 32;
    v92 = &v30[16 * v89 + 32];
    v93 = v157;
    *v92 = v149;
    *(v92 + 1) = v93;
    v167 = *v147;
    if (!v167)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v30[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v30 + 4);
          v98 = *(v30 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v159)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[16 * v94 - 16];
        v30 = *v127;
        v128 = &v91[16 * v94];
        v129 = *(v128 + 1);
        sub_100117124(&(*v159)[*(v158 + 72) * *v127], &(*v159)[*(v158 + 72) * *v128], &(*v159)[*(v158 + 72) * v129], v167);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = *(v126 + 2);
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        *(v127 + 1) = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        memmove(&v91[16 * v94], v128 + 16, 16 * (v130 - 1 - v94));
        v30 = v126;
        *(v126 + 2) = v130 - 1;
        v131 = v130 > 2;
        v16 = v154;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v24 = v158;
    v28 = v159[1];
    v29 = v157;
    v8 = v162;
    v26 = v144;
    v27 = v146;
    if (v157 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v143);
  if (__OFADD__(v31, v143))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v159[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_10011775C(v30);
LABEL_116:
    v135 = v30 + 16;
    v136 = *(v30 + 2);
    while (v136 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_153;
      }

      v137 = v30;
      v30 += 16 * v136;
      v138 = *v30;
      v139 = &v135[2 * v136];
      v140 = v139[1];
      sub_100117124(&(*v159)[*(v158 + 72) * *v30], &(*v159)[*(v158 + 72) * *v139], &(*v159)[*(v158 + 72) * v140], v170);
      if (v5)
      {
        break;
      }

      if (v140 < v138)
      {
        goto LABEL_141;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_142;
      }

      *v30 = v138;
      *(v30 + 1) = v140;
      v141 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_143;
      }

      v136 = *v135 - 1;
      memmove(v139, v139 + 2, 16 * v141);
      *v135 = v136;
      v30 = v137;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v145 = v30;
  v148 = v5;
  v68 = *v159;
  v69 = *(v24 + 72);
  v167 = *(v24 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v163 = -v69;
  v164 = v68;
  v71 = (v31 - v32);
  v150 = v69;
  v151 = v67;
  v72 = &v68[v32 * v69];
  v73 = v166;
LABEL_48:
  v156 = v70;
  v157 = v32;
  v153 = v72;
  v155 = v71;
  while (1)
  {
    v74 = v167;
    (v167)(v73, v72, v8);
    v74(v16, v70, v8);
    v75 = v16;
    v76 = URLQueryItem.name.getter();
    v77 = v8;
    v79 = v78;
    if (v76 == URLQueryItem.name.getter() && v79 == v80)
    {

      v87 = *v169;
      (*v169)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v16 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v84 = *v169;
    (*v169)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v16 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v166;
LABEL_60:
      v32 = v157 + 1;
      v70 = &v156[v150];
      v71 = v155 - 1;
      v72 = &v153[v150];
      if (v157 + 1 == v151)
      {
        v32 = v151;
        v5 = v148;
        v30 = v145;
        v31 = v149;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v164)
    {
      break;
    }

    v85 = *v168;
    v86 = v165;
    (*v168)(v165, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v163;
    v72 += v163;
    v65 = __CFADD__(v71++, 1);
    v73 = v166;
    if (v65)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_100117124(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for URLQueryItem();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v67 = &v63 - v13;
  v14 = __chkstk_darwin(v12);
  v70 = &v63 - v15;
  result = __chkstk_darwin(v14);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_72;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v69 = &v63 - v18;
  v24 = (a2 - a1) / v20;
  v76 = a1;
  v75 = a4;
  v71 = (v17 + 8);
  v72 = (v17 + 16);
  v25 = v22 / v20;
  if (v24 < v22 / v20)
  {
    sub_100115B88(a1, (a2 - a1) / v20, a4, &type metadata accessor for URLQueryItem);
    v68 = (a4 + v24 * v20);
    v74 = v68;
    v66 = a3;
    while (1)
    {
      if (a4 >= v68 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v27 = a1;
      v28 = v20;
      v29 = *v72;
      v30 = v69;
      v31 = a2;
      (*v72)(v69, a2, v8);
      v73 = a4;
      v32 = v70;
      v29();
      v33 = URLQueryItem.name.getter();
      v35 = v34;
      if (v33 == URLQueryItem.name.getter() && v35 == v36)
      {

        v43 = *v71;
        (*v71)(v32, v8);
        v43(v30, v8);
        v20 = v28;
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v39 = *v71;
        (*v71)(v32, v8);
        v39(v30, v8);
        v20 = v28;
        if (v38)
        {
          v40 = v31;
          a2 = v31 + v28;
          v41 = v27;
          if (v27 < v31 || v27 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v66;
          }

          else
          {
            a3 = v66;
            if (v27 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          a4 = v73;
          goto LABEL_40;
        }
      }

      a4 = v73 + v20;
      v41 = v27;
      v44 = v27 < v73 || v27 >= a4;
      a2 = v31;
      if (v44)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v66;
      }

      else
      {
        a3 = v66;
        if (v27 != v73)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v75 = a4;
LABEL_40:
      a1 = v41 + v20;
      v76 = a1;
    }
  }

  sub_100115B88(a2, v22 / v20, a4, &type metadata accessor for URLQueryItem);
  v73 = a4;
  v45 = a4 + v25 * v20;
  v46 = -v20;
  v47 = v45;
  v70 = -v20;
LABEL_42:
  v69 = a2;
  v66 = a2 + v46;
  v48 = a3;
  v64 = v47;
  while (1)
  {
    if (v45 <= v73)
    {
      v76 = v69;
      v74 = v47;
      goto LABEL_70;
    }

    if (v69 <= a1)
    {
      break;
    }

    v65 = v47;
    v49 = v45 + v46;
    v50 = *v72;
    (*v72)(v67, v45 + v46, v8);
    (v50)(v68, v66, v8);
    v51 = URLQueryItem.name.getter();
    v53 = v52;
    if (v51 == URLQueryItem.name.getter() && v53 == v54)
    {
      v56 = 0;
    }

    else
    {
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v57 = (v48 + v70);
    v58 = *v71;
    (*v71)(v68, v8);
    v58(v67, v8);
    if (v56)
    {
      v60 = v48 < v69 || v57 >= v69;
      a3 = v57;
      if (v60)
      {
        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        v47 = v65;
        v46 = v70;
      }

      else
      {
        v62 = v65;
        v61 = v66;
        v47 = v65;
        v21 = v48 == v69;
        a2 = v66;
        v46 = v70;
        if (!v21)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v61;
          v47 = v62;
        }
      }

      goto LABEL_42;
    }

    if (v48 < v45 || v57 >= v45)
    {
      swift_arrayInitWithTakeFrontToBack();
      v48 = v57;
      v45 = v49;
      v47 = v49;
      v46 = v70;
    }

    else
    {
      v47 = v49;
      v21 = v45 == v48;
      v48 = v57;
      v45 = v49;
      v46 = v70;
      if (!v21)
      {
        swift_arrayInitWithTakeBackToFront();
        v48 = v57;
        v45 = v49;
        v47 = v49;
      }
    }
  }

  v76 = v69;
  v74 = v64;
LABEL_70:
  sub_100117870(&v76, &v75, &v74, &type metadata accessor for URLQueryItem);
  return 1;
}

void sub_100117788(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  v6 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  sub_1000036B8(v6);
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v5 - v4 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  sub_10000AF2C();
  v11 = !v11 || v3 >= v10;
  if (v11)
  {
    sub_10000672C();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {
    sub_10000672C();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_100117870(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  sub_1000036B8(v7);
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  sub_10000AF2C();
  v12 = !v12 || v4 >= v11;
  if (v12)
  {
    sub_10000672C();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_10000672C();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_100117938(char *result, int64_t a2, char a3, char *a4)
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
    sub_100046184(&qword_100216178, &qword_1001A1310);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_100117B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_100008AC0();
  sub_100116060(0, v2, 0, v3, v4, v5, v6, &type metadata accessor for URL);
}

_BYTE *storeEnumTagSinglePayload for ParsecURLRequestBuilder.URLError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100117C50()
{
  result = qword_10021BE10;
  if (!qword_10021BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BE10);
  }

  return result;
}

void PegasusConfigURLProvider.init(fileManager:)(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v4 = *(type metadata accessor for PegasusConfigURLProvider() + 20);
  v5 = a1;
  static PegasusConfigURLProvider.getPegasusConfigCacheDirectoryURL(fileManager:)(v5, a2 + v4);
}

uint64_t static PegasusConfigURLProvider.getPegasusConfigCacheDirectoryURL(fileManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100046184(&qword_100218230, &unk_100199A00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for URL();
  v10 = sub_100003BC8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v10);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  v35 = a1;
  sub_10011813C();
  static PegasusConfigContainerURLProvider.containerURL<A>(using:)();
  sub_10000447C(v8, 0);
  v20 = *(v12 + 32);
  v20(v19, v8, v2);
  if (qword_1002141B8 != -1)
  {
    sub_100004270();
  }

  v21 = type metadata accessor for Logger();
  sub_10000964C(v21, qword_100232D18);
  (*(v12 + 16))(v17, v19, v2);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v34 = a2;
    v25 = v24;
    v32 = swift_slowAlloc();
    v35 = v32;
    *v25 = 136315138;
    sub_100118610();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v20;
    v28 = v27;
    (*(v12 + 8))(v17, v2);
    v29 = sub_100009684(v26, v28, &v35);
    v20 = v33;

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "PegasusConfiguration container URL: %s", v25, 0xCu);
    sub_100007378(v32);

    a2 = v34;
  }

  else
  {

    (*(v12 + 8))(v17, v2);
  }

  v20(a2, v19, v2);
  return sub_10000447C(a2, 0);
}

uint64_t type metadata accessor for PegasusConfigURLProvider()
{
  result = qword_10021BE70;
  if (!qword_10021BE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10011813C()
{
  result = qword_1002157B8;
  if (!qword_1002157B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002157B8);
  }

  return result;
}

uint64_t PegasusConfigURLProvider.cachedBagURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100046184(&qword_100218230, &unk_100199A00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  static PegasusConfigContainerURLProvider.configFileName.getter();
  v7 = type metadata accessor for PegasusConfigURLProvider();
  sub_100118668(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for URL();
  if (sub_100008D0C(v6, 1, v8) == 1)
  {

    sub_1000982A0(v6);
    v9 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();

    (*(*(v8 - 8) + 8))(v6, v8);
    v9 = 0;
  }

  return sub_1000051C0(a1, v9, 1, v8);
}

uint64_t PegasusConfigURLProvider.legacyCachedBagURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  PegasusConfigURLProvider.parsecdAssetsDirectoryURL.getter(&v9 - v4);
  v6 = type metadata accessor for URL();
  if (sub_100008D0C(v5, 1, v6) == 1)
  {
    sub_1000982A0(v5);
    v7 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    (*(*(v6 - 8) + 8))(v5, v6);
    v7 = 0;
  }

  return sub_1000051C0(a1, v7, 1, v6);
}

uint64_t PegasusConfigURLProvider.parsecdAssetsDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = sub_100003BC8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v28[-v13];
  v16 = __chkstk_darwin(v15);
  v18 = &v28[-v17];
  v19 = *v1;
  v29 = 0;
  v20 = [v19 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:{&v29, v16}];
  v21 = v29;
  if (v20)
  {
    v22 = v20;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v21;

    (*(v7 + 32))(v18, v14, v2);
    URL.appendingPathComponent(_:isDirectory:)();
    URL.standardizedFileURL.getter();
    v24 = *(v7 + 8);
    v24(v11, v2);
    v24(v18, v2);
    v25 = 0;
  }

  else
  {
    v26 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v25 = 1;
  }

  return sub_10000447C(a1, v25);
}

unint64_t sub_100118610()
{
  result = qword_1002157B0;
  if (!qword_1002157B0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002157B0);
  }

  return result;
}

uint64_t sub_100118668(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100218230, &unk_100199A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100118700()
{
  sub_10011813C();
  if (v0 <= 0x3F)
  {
    sub_1000487E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_100118784()
{
  v1 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v18[-v7];
  swift_beginAccess();
  v9 = *(v0 + 24);

  v19 = sub_1000ED158(v10);
  sub_100118EFC(&v19);

  v11 = v19;
  v12 = v19[2];
  if (v12)
  {
    v19 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_100118FB0(v13, v8);
      sub_1000F0978(v8, v6);
      v15 = *v6;
      sub_1000A6C2C(v6 + *(v1 + 48));
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v16 = v19[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v13 += v14;
      --v12;
    }

    while (v12);

    return v19;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_100118974(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v24 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = (&v24 - v16);
  sub_100118FB0(a1, &v24 - v16);

  v18 = *(v11 + 56);
  v19 = v4[2];
  v19(v9, v17 + v18, v3);
  sub_1000A6C2C(v17 + v18);
  sub_100118FB0(v25, v15);

  v20 = *(v11 + 56);
  v21 = v24;
  v19(v24, v15 + v20, v3);
  sub_1000A6C2C(v15 + v20);
  LOBYTE(v19) = static Date.< infix(_:_:)();
  v22 = v4[1];
  v22(v21, v3);
  v22(v9, v3);
  return v19 & 1;
}

uint64_t sub_100118BC4@<X0>(uint64_t a1@<X8>)
{
  sub_100006174();
  v3 = *(v1 + 24);
  if (!*(v3 + 16))
  {
    goto LABEL_5;
  }

  v4 = sub_1000BB9E0();
  if ((v5 & 1) == 0)
  {

LABEL_5:
    v11 = type metadata accessor for TopicCacheEntry();
    v9 = a1;
    v10 = 1;
    return sub_1000051C0(v9, v10, 1, v11);
  }

  v6 = v4;
  v7 = *(v3 + 56);
  v8 = type metadata accessor for TopicCacheEntry();
  sub_1000F0914(v7 + *(*(v8 - 8) + 72) * v6, a1);

  v9 = a1;
  v10 = 0;
  v11 = v8;
  return sub_1000051C0(v9, v10, 1, v11);
}

uint64_t sub_100118C9C(void *a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_1002183B0, &qword_10019C758);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_1000F0914(a2, &v10 - v6);
  v8 = type metadata accessor for TopicCacheEntry();
  sub_1000051C0(v7, 0, 1, v8);
  sub_100003BE0();
  sub_1001152E8(v7, a1);
  return swift_endAccess();
}

uint64_t sub_100118D64(void *a1)
{
  v2 = sub_100046184(&qword_1002183B0, &qword_10019C758);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for TopicCacheEntry();
  sub_1000051C0(v5, 1, 1, v6);
  sub_100003BE0();
  sub_1001152E8(v5, a1);
  return swift_endAccess();
}

uint64_t sub_100118E1C()
{
  sub_1000A6C88();
  type metadata accessor for TopicCacheEntry();
  sub_1000BCC0C();
  v1 = Dictionary.init(dictionaryLiteral:)();
  swift_beginAccess();
  v2 = *(v0 + 24);
  *(v0 + 24) = v1;
}

uint64_t sub_100118EA0()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

Swift::Int sub_100118EFC(size_t *a1)
{
  v2 = *(sub_100046184(&qword_100219BD8, &unk_1001A0700) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100117B0C(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100119020(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_100118FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100119020(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100046184(&qword_100219BD8, &unk_1001A0700);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_100046184(&qword_100219BD8, &unk_1001A0700) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100119550(v8, v9, a1, v4);
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
    return sub_100119168(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100119168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v63 = type metadata accessor for Date();
  v8 = *(v63 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v63);
  v62 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v68 = &v48 - v12;
  v13 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v57 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v61 = (&v48 - v18);
  v19 = __chkstk_darwin(v17);
  v60 = (&v48 - v20);
  v21 = __chkstk_darwin(v19);
  v67 = &v48 - v22;
  result = __chkstk_darwin(v21);
  v66 = &v48 - v25;
  v50 = a2;
  if (a3 != a2)
  {
    v26 = result;
    v27 = *a4;
    v28 = *(v24 + 72);
    v58 = (v8 + 8);
    v59 = (v8 + 16);
    v29 = v27 + v28 * (a3 - 1);
    v55 = -v28;
    v56 = v27;
    v30 = a1 - a3;
    v49 = v28;
    v31 = v27 + v28 * a3;
    v32 = v68;
    while (2)
    {
      v53 = v29;
      v54 = a3;
      v51 = v31;
      v52 = v30;
      v64 = v30;
      do
      {
        v33 = v66;
        sub_100118FB0(v31, v66);
        v34 = v67;
        sub_100118FB0(v29, v67);
        v35 = v33;
        v36 = v60;
        sub_100118FB0(v35, v60);

        v37 = *(v26 + 48);
        v65 = *v59;
        v38 = v63;
        v65(v68, v36 + v37, v63);
        sub_1000A6C2C(v36 + v37);
        v39 = v34;
        v40 = v61;
        sub_100118FB0(v39, v61);

        v41 = *(v26 + 48);
        v42 = v26;
        v43 = v62;
        v65(v62, v40 + v41, v38);
        sub_1000A6C2C(v40 + v41);
        LOBYTE(v41) = static Date.< infix(_:_:)();
        v44 = *v58;
        v45 = v43;
        v26 = v42;
        (*v58)(v45, v38);
        v44(v32, v38);
        sub_10011A790(v67);
        result = sub_10011A790(v66);
        if ((v41 & 1) == 0)
        {
          break;
        }

        if (!v56)
        {
          __break(1u);
          return result;
        }

        v46 = v57;
        sub_1000F0978(v31, v57);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1000F0978(v46, v29);
        v29 += v55;
        v31 += v55;
      }

      while (!__CFADD__(v64++, 1));
      a3 = v54 + 1;
      v29 = v53 + v49;
      v30 = v52 - 1;
      v31 = v51 + v49;
      if (v54 + 1 != v50)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100119550(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v147 = a1;
  v168 = type metadata accessor for Date();
  v6 = *(v168 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v168);
  v167 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v166 = &v142 - v10;
  v11 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  v155 = *(v11 - 8);
  v12 = *(v155 + 64);
  v13 = __chkstk_darwin(v11);
  v150 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v161 = &v142 - v16;
  v17 = __chkstk_darwin(v15);
  v165 = (&v142 - v18);
  v19 = __chkstk_darwin(v17);
  v164 = (&v142 - v20);
  v21 = __chkstk_darwin(v19);
  v173 = &v142 - v22;
  v23 = __chkstk_darwin(v21);
  v172 = &v142 - v24;
  v25 = __chkstk_darwin(v23);
  v144 = &v142 - v26;
  v27 = __chkstk_darwin(v25);
  v156 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v157 = _swiftEmptyArrayStorage;
LABEL_100:
    v173 = *v147;
    if (!v173)
    {
      goto LABEL_143;
    }

    v31 = v157;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_102;
    }

    goto LABEL_137;
  }

  v143 = &v142 - v28;
  v30 = 0;
  v162 = (v6 + 8);
  v163 = (v6 + 16);
  v157 = _swiftEmptyArrayStorage;
  v146 = a4;
  v31 = v27;
  v169 = v27;
  while (1)
  {
    v32 = v30++;
    if (v30 < v29)
    {
      v33 = *v156;
      v34 = *(v155 + 72);
      v35 = v30;
      v36 = (*v156 + v34 * v30);
      v37 = v143;
      sub_100118FB0(v36, v143);
      v38 = v144;
      sub_100118FB0(v33 + v34 * v32, v144);
      v39 = v158;
      LODWORD(v159) = sub_100118974(v37, v38);
      v158 = v39;
      if (v39)
      {
        sub_10011A790(v38);
        sub_10011A790(v37);
LABEL_112:

        return;
      }

      sub_10011A790(v38);
      sub_10011A790(v37);
      v145 = v32;
      v40 = v32 + 2;
      v41 = v33 + v34 * (v32 + 2);
      v30 = v35;
      v160 = v34;
      v154 = v29;
      while (1)
      {
        v42 = v40;
        v43 = v30 + 1;
        if (v43 >= v29)
        {
          break;
        }

        v44 = v172;
        v170 = v40;
        sub_100118FB0(v41, v172);
        v45 = v173;
        sub_100118FB0(v36, v173);
        v171 = v36;
        v46 = v164;
        sub_100118FB0(v44, v164);

        v47 = *(v31 + 12);
        v48 = *v163;
        v49 = v166;
        v50 = v168;
        (*v163)(v166, v46 + v47, v168);
        sub_1000A6C2C(v46 + v47);
        v51 = v165;
        sub_100118FB0(v45, v165);

        v52 = *(v169 + 48);
        v53 = v43;
        v54 = v167;
        v48(v167, v51 + v52, v50);
        v55 = v51 + v52;
        v56 = v171;
        sub_1000A6C2C(v55);
        LODWORD(v52) = static Date.< infix(_:_:)() & 1;
        v57 = *v162;
        v58 = v54;
        v30 = v53;
        v34 = v160;
        (*v162)(v58, v50);
        v59 = v49;
        v31 = v169;
        v60 = v50;
        v29 = v154;
        v57(v59, v60);
        sub_10011A790(v173);
        sub_10011A790(v172);
        v42 = v170;
        v41 += v34;
        v36 = &v56[v34];
        v40 = v170 + 1;
        if ((v159 & 1) != v52)
        {
          goto LABEL_10;
        }
      }

      v30 = v29;
LABEL_10:
      if ((v159 & 1) == 0)
      {
        goto LABEL_29;
      }

      v32 = v145;
      a4 = v146;
      if (v30 < v145)
      {
        goto LABEL_136;
      }

      if (v145 < v30)
      {
        if (v29 >= v42)
        {
          v61 = v42;
        }

        else
        {
          v61 = v29;
        }

        v62 = v34 * (v61 - 1);
        v63 = v34 * v61;
        v64 = v145 * v34;
        v65 = v30;
        do
        {
          if (v32 != --v65)
          {
            v66 = *v156;
            if (!*v156)
            {
              goto LABEL_141;
            }

            sub_1000F0978(v66 + v64, v150);
            v67 = v64 < v62 || v66 + v64 >= (v66 + v63);
            if (v67)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v64 != v62)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1000F0978(v150, v66 + v62);
            v34 = v160;
          }

          ++v32;
          v62 -= v34;
          v63 -= v34;
          v64 += v34;
        }

        while (v32 < v65);
LABEL_29:
        a4 = v146;
        v32 = v145;
      }
    }

    v68 = v156[1];
    if (v30 < v68)
    {
      if (__OFSUB__(v30, v32))
      {
        goto LABEL_133;
      }

      if (v30 - v32 < a4)
      {
        break;
      }
    }

LABEL_48:
    v87 = v157;
    if (v30 < v32)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = *(v87 + 2);
      sub_10006C888();
      v87 = v131;
    }

    v88 = *(v87 + 2);
    v89 = v88 + 1;
    if (v88 >= *(v87 + 3) >> 1)
    {
      sub_10006C888();
      v87 = v132;
    }

    *(v87 + 2) = v89;
    v90 = v87 + 32;
    v91 = &v87[16 * v88 + 32];
    *v91 = v32;
    v91[1] = v30;
    v171 = *v147;
    if (!v171)
    {
      goto LABEL_142;
    }

    v157 = v87;
    if (v88)
    {
      while (1)
      {
        v92 = v89 - 1;
        v93 = &v90[2 * v89 - 2];
        v94 = &v87[16 * v89];
        if (v89 >= 4)
        {
          break;
        }

        if (v89 == 3)
        {
          v95 = *(v87 + 4);
          v96 = *(v87 + 5);
          v105 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          v98 = v105;
LABEL_68:
          if (v98)
          {
            goto LABEL_119;
          }

          v110 = *v94;
          v109 = *(v94 + 1);
          v111 = __OFSUB__(v109, v110);
          v112 = v109 - v110;
          v113 = v111;
          if (v111)
          {
            goto LABEL_122;
          }

          v114 = v93[1];
          v115 = v114 - *v93;
          if (__OFSUB__(v114, *v93))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v112, v115))
          {
            goto LABEL_127;
          }

          if (v112 + v115 >= v97)
          {
            if (v97 < v115)
            {
              v92 = v89 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v89 < 2)
        {
          goto LABEL_121;
        }

        v117 = *v94;
        v116 = *(v94 + 1);
        v105 = __OFSUB__(v116, v117);
        v112 = v116 - v117;
        v113 = v105;
LABEL_83:
        if (v113)
        {
          goto LABEL_124;
        }

        v119 = *v93;
        v118 = v93[1];
        v105 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v105)
        {
          goto LABEL_126;
        }

        if (v120 < v112)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v92 - 1 >= v89)
        {
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v156)
        {
          goto LABEL_139;
        }

        v124 = &v90[2 * v92 - 2];
        v125 = *v124;
        v126 = &v90[2 * v92];
        v127 = *(v126 + 1);
        v128 = v158;
        sub_10011A0C4(*v156 + *(v155 + 72) * *v124, *v156 + *(v155 + 72) * *v126, *v156 + *(v155 + 72) * v127, v171);
        v158 = v128;
        if (v128)
        {
          goto LABEL_112;
        }

        if (v127 < v125)
        {
          goto LABEL_114;
        }

        v129 = *(v157 + 2);
        if (v92 > v129)
        {
          goto LABEL_115;
        }

        *v124 = v125;
        v124[1] = v127;
        if (v92 >= v129)
        {
          goto LABEL_116;
        }

        v89 = v129 - 1;
        sub_100117CA4(v126 + 16, v129 - 1 - v92, &v90[2 * v92]);
        v87 = v157;
        *(v157 + 2) = v129 - 1;
        if (v129 <= 2)
        {
          goto LABEL_97;
        }
      }

      v99 = &v90[2 * v89];
      v100 = *(v99 - 8);
      v101 = *(v99 - 7);
      v105 = __OFSUB__(v101, v100);
      v102 = v101 - v100;
      if (v105)
      {
        goto LABEL_117;
      }

      v104 = *(v99 - 6);
      v103 = *(v99 - 5);
      v105 = __OFSUB__(v103, v104);
      v97 = v103 - v104;
      v98 = v105;
      if (v105)
      {
        goto LABEL_118;
      }

      v106 = *(v94 + 1);
      v107 = v106 - *v94;
      if (__OFSUB__(v106, *v94))
      {
        goto LABEL_120;
      }

      v105 = __OFADD__(v97, v107);
      v108 = v97 + v107;
      if (v105)
      {
        goto LABEL_123;
      }

      if (v108 >= v102)
      {
        v122 = *v93;
        v121 = v93[1];
        v105 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v105)
        {
          goto LABEL_131;
        }

        if (v97 < v123)
        {
          v92 = v89 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v29 = v156[1];
    a4 = v146;
    if (v30 >= v29)
    {
      goto LABEL_100;
    }
  }

  v69 = v32 + a4;
  if (__OFADD__(v32, a4))
  {
    goto LABEL_134;
  }

  if (v69 >= v68)
  {
    v69 = v156[1];
  }

  if (v69 < v32)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    v31 = sub_10011775C(v31);
LABEL_102:
    v133 = v31;
    v135 = *(v31 + 2);
    v31 += 16;
    for (i = v135; i >= 2; *v31 = i)
    {
      v136 = v158;
      if (!*v156)
      {
        goto LABEL_140;
      }

      v137 = &v133[16 * i];
      v138 = *v137;
      v139 = &v31[16 * i];
      v140 = *(v139 + 1);
      sub_10011A0C4(*v156 + *(v155 + 72) * *v137, *v156 + *(v155 + 72) * *v139, *v156 + *(v155 + 72) * v140, v173);
      v158 = v136;
      if (v136)
      {
        break;
      }

      if (v140 < v138)
      {
        goto LABEL_128;
      }

      if (i - 2 >= *v31)
      {
        goto LABEL_129;
      }

      *v137 = v138;
      *(v137 + 1) = v140;
      v141 = *v31 - i;
      if (*v31 < i)
      {
        goto LABEL_130;
      }

      i = *v31 - 1;
      sub_100117CA4(v139 + 16, v141, v139);
    }

    goto LABEL_112;
  }

  if (v30 == v69)
  {
    goto LABEL_48;
  }

  v70 = *v156;
  v71 = *(v155 + 72);
  v72 = *v156 + v71 * (v30 - 1);
  v159 = -v71;
  v145 = v32;
  v73 = v32 - v30;
  v160 = v70;
  v148 = v71;
  v74 = v70 + v30 * v71;
  v149 = v69;
LABEL_39:
  v154 = v30;
  v151 = v74;
  v152 = v73;
  v153 = v72;
  v75 = v73;
  while (1)
  {
    v170 = v75;
    v76 = v172;
    sub_100118FB0(v74, v172);
    sub_100118FB0(v72, v173);
    v77 = v164;
    sub_100118FB0(v76, v164);

    v78 = *(v31 + 12);
    v171 = *v163;
    v79 = v166;
    v80 = v168;
    (v171)(v166, v77 + v78, v168);
    sub_1000A6C2C(v77 + v78);
    v81 = v165;
    sub_100118FB0(v173, v165);

    v82 = *(v31 + 12);
    v83 = v167;
    (v171)(v167, v81 + v82, v80);
    sub_1000A6C2C(v81 + v82);
    LOBYTE(v82) = static Date.< infix(_:_:)();
    v84 = *v162;
    (*v162)(v83, v80);
    v84(v79, v80);
    sub_10011A790(v173);
    sub_10011A790(v172);
    if ((v82 & 1) == 0)
    {
      v31 = v169;
LABEL_46:
      v30 = v154 + 1;
      v72 = v153 + v148;
      v73 = v152 - 1;
      v74 = v151 + v148;
      if (v154 + 1 == v149)
      {
        v30 = v149;
        v32 = v145;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    v85 = v170;
    if (!v160)
    {
      break;
    }

    v86 = v161;
    sub_1000F0978(v74, v161);
    v31 = v169;
    swift_arrayInitWithTakeFrontToBack();
    sub_1000F0978(v86, v72);
    v72 += v159;
    v74 += v159;
    v67 = __CFADD__(v85, 1);
    v75 = v85 + 1;
    if (v67)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

uint64_t sub_10011A0C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v89 = a4;
  v83 = type metadata accessor for Date();
  v7 = *(v83 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v83);
  v84 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = v71 - v11;
  v90 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  v12 = *(*(v90 - 8) + 64);
  v13 = __chkstk_darwin(v90);
  v81 = (v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v80 = (v71 - v16);
  v17 = __chkstk_darwin(v15);
  v79 = v71 - v18;
  result = __chkstk_darwin(v17);
  v86 = v71 - v20;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v23 = a2 - a1 == 0x8000000000000000 && v22 == -1;
  if (v23)
  {
    goto LABEL_61;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_62;
  }

  v26 = (a2 - a1) / v22;
  v93 = a1;
  v27 = v89;
  v92 = v89;
  v77 = (v7 + 8);
  v78 = (v7 + 16);
  v28 = v24 / v22;
  if (v26 >= v24 / v22)
  {
    sub_100115A90();
    v46 = v27 + v28 * v22;
    v47 = -v22;
    v48 = v46;
    v87 = a1;
    v73 = -v22;
    v49 = v83;
LABEL_36:
    v50 = a2 + v47;
    v51 = a3;
    v71[0] = v48;
    v88 = a2;
    v74 = a2 + v47;
    while (1)
    {
      if (v46 <= v27)
      {
        v93 = a2;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v72 = v48;
      v85 = v51 + v47;
      v75 = v46 + v47;
      v76 = v51;
      v52 = v86;
      sub_100118FB0(v46 + v47, v86);
      v53 = v79;
      sub_100118FB0(v50, v79);
      v54 = v46;
      v55 = v80;
      sub_100118FB0(v52, v80);

      v56 = v90;
      v57 = *(v90 + 48);
      v58 = *v78;
      v59 = v82;
      (*v78)(v82, v55 + v57, v49);
      sub_1000A6C2C(v55 + v57);
      v60 = v81;
      sub_100118FB0(v53, v81);

      v61 = *(v56 + 48);
      v62 = v84;
      v58(v84, v60 + v61, v49);
      sub_1000A6C2C(v60 + v61);
      LOBYTE(v61) = static Date.< infix(_:_:)();
      v63 = *v77;
      (*v77)(v62, v49);
      v63(v59, v49);
      sub_10011A790(v53);
      sub_10011A790(v86);
      if (v61)
      {
        v46 = v54;
        v27 = v89;
        a3 = v85;
        if (v76 < v88 || v85 >= v88)
        {
          a2 = v74;
          swift_arrayInitWithTakeFrontToBack();
          v48 = v72;
          v47 = v73;
          a1 = v87;
        }

        else
        {
          v69 = v72;
          v47 = v73;
          v48 = v72;
          v70 = v74;
          a2 = v74;
          a1 = v87;
          if (v76 != v88)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v70;
            v48 = v69;
          }
        }

        goto LABEL_36;
      }

      v64 = v85;
      v65 = v76 < v54 || v85 >= v54;
      v27 = v89;
      if (v65)
      {
        v66 = v75;
        swift_arrayInitWithTakeFrontToBack();
        v51 = v64;
        v46 = v66;
        v48 = v66;
        a1 = v87;
        a2 = v88;
        v47 = v73;
        v50 = v74;
      }

      else
      {
        v67 = v75;
        v48 = v75;
        v23 = v54 == v76;
        v51 = v85;
        v46 = v75;
        a1 = v87;
        a2 = v88;
        v47 = v73;
        v50 = v74;
        if (!v23)
        {
          swift_arrayInitWithTakeBackToFront();
          v51 = v64;
          v46 = v67;
          v48 = v67;
        }
      }
    }

    v93 = a2;
    v48 = v71[0];
LABEL_58:
    v91 = v48;
  }

  else
  {
    sub_100115A90();
    v75 = v22;
    v76 = v27 + v26 * v22;
    v91 = v76;
    v85 = a3;
    while (v27 < v76 && a2 < a3)
    {
      v87 = a1;
      v30 = v86;
      sub_100118FB0(a2, v86);
      v31 = v79;
      sub_100118FB0(v27, v79);
      v89 = v27;
      v32 = v80;
      sub_100118FB0(v30, v80);

      v33 = v90;
      v34 = *(v90 + 48);
      v88 = a2;
      v35 = *v78;
      v37 = v82;
      v36 = v83;
      (*v78)(v82, v32 + v34, v83);
      sub_1000A6C2C(v32 + v34);
      v38 = v81;
      sub_100118FB0(v31, v81);

      v39 = *(v33 + 48);
      v40 = v84;
      v35(v84, v38 + v39, v36);
      sub_1000A6C2C(v38 + v39);
      LOBYTE(v39) = static Date.< infix(_:_:)();
      v41 = *v77;
      (*v77)(v40, v36);
      v41(v37, v36);
      sub_10011A790(v31);
      sub_10011A790(v30);
      if (v39)
      {
        v42 = v75;
        v43 = v87;
        a2 = v88 + v75;
        v44 = v87 < v88 || v87 >= a2;
        v27 = v89;
        if (v44)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v85;
        }

        else
        {
          a3 = v85;
          if (v87 != v88)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v88;
        v42 = v75;
        v27 = v89 + v75;
        v43 = v87;
        if (v87 < v89 || v87 >= v27)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v85;
        }

        else
        {
          a3 = v85;
          if (v87 != v89)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v92 = v27;
      }

      a1 = v43 + v42;
      v93 = a1;
    }
  }

  sub_100117788(&v93, &v92, &v91);
  return 1;
}

uint64_t sub_10011A790(uint64_t a1)
{
  v2 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011A7F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10011A880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10011A7F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10011A8B8(uint64_t a1)
{
  v2 = sub_10011AC00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011A8F4(uint64_t a1)
{
  v2 = sub_10011AC00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EnumModel.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t EnumModel.nextAvailableValue.getter(uint64_t result)
{
  v1 = 0;
  v2 = 1;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  if (v5)
  {
    while (1)
    {
      v7 = v1;
LABEL_8:
      v8 = *(*(result + 56) + ((v7 << 8) | (4 * __clz(__rbit64(v5)))));
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        break;
      }

      v5 &= v5 - 1;
      if (v10 <= v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v10;
      }

      v1 = v7;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v7 >= v6)
      {
        return v2;
      }

      v5 = *(result + 64 + 8 * v7);
      ++v1;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t EnumModel.init(from:)(uint64_t *a1)
{
  v3 = sub_100046184(&qword_10021BFE8, &qword_1001A08C8);
  v4 = sub_100003650(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = a1[4];
  v8 = sub_100007534(a1, a1[3]);
  sub_10011AC00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007378(a1);
  }

  else
  {
    sub_100046184(&qword_10021BFF8, &qword_1001A08D0);
    sub_10011ADD0(&qword_10021C000);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v8 = v12;
    if (!v12)
    {
      v8 = Dictionary.init(dictionaryLiteral:)();
    }

    v10 = sub_100008AD8();
    v11(v10);
    sub_100007378(a1);
  }

  return v8;
}

unint64_t sub_10011AC00()
{
  result = qword_10021BFF0;
  if (!qword_10021BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BFF0);
  }

  return result;
}

uint64_t EnumModel.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_10021C008, &qword_1001A08D8);
  v5 = sub_100003650(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_10011AC00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (*(a2 + 16))
  {
    sub_100046184(&qword_10021BFF8, &qword_1001A08D0);
    sub_10011ADD0(&qword_10021C010);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v9 = sub_100008AD8();
  return v10(v9);
}

uint64_t sub_10011ADD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_10021BFF8, &qword_1001A08D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10011AE44(uint64_t result, uint64_t a2)
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
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_100005B74(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
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
  return result;
}

void sub_10011AF78(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v3 = 0;
  v5 = *(a1 + 64);
  v4 = a1 + 64;
  v6 = *(a1 + 32);
  sub_100004154();
  v10 = v9 & v8;
  v11 = (v7 + 63) >> 6;
  while (2)
  {
    while (2)
    {
      if (v10)
      {
        sub_100006BD4();
        v325 = v13;
        goto LABEL_11;
      }

      v14 = v3;
      do
      {
        v3 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_157:
          sub_10011CE88(v7, v310, 2);
          sub_10000AF40(v297, v219, v220, v221, v222, v223, v224, v225, v282, v284);
          sub_1000067EC();
          sub_10011CE88(v226, v227, v228);
          sub_10000CA54();
          sub_10011CE88(v229, v230, v231);
          v232 = sub_100011AA8();
          sub_10011CE88(v232, v233, v234);
          sub_10000E22C();
          sub_10011CE88(v235, v236, v237);
          sub_10011CE88(v326, v327, 2);
          v238 = sub_1000099C4();
          v240 = sub_10000F2A4(v238, v239, 2);
          sub_10011CE88(v240, v304, 2);
          v213 = v290;
          v214 = v283;
          goto LABEL_168;
        }

        if (v3 >= v11)
        {
          return;
        }

        v7 = *(v4 + 8 * v3);
        ++v14;
      }

      while (!v7);
      sub_100003C00();
      v325 = v16 & v15;
LABEL_11:
      v17 = v12 | (v3 << 6);
      v18 = (*(a1 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = *(a1 + 56) + 24 * v17;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);

      v326 = v22;
      v327 = v23;
      sub_10011CE44(v22, v23, v24);
      v25 = sub_100005B74(v19, v20);
      LOBYTE(v23) = v26;

      if ((v23 & 1) == 0)
      {
        v213 = v22;
        v214 = v327;
        goto LABEL_153;
      }

      v27 = *(v2 + 56) + 24 * v25;
      v328 = *v27;
      v324 = *(v27 + 8);
      v28 = v22;
      switch(*(v27 + 16))
      {
        case 1:
          if (v24 != 1)
          {
            goto LABEL_152;
          }

          if (v328 == v22 && v324 == v327)
          {
            v35 = sub_10000AC38();
            v37 = 1;
            goto LABEL_32;
          }

          sub_1000099C4();
          LOBYTE(v30) = _stringCompareWithSmolCheck(_:_:expecting:)();
          v31 = sub_10000AC38();
          v33 = 1;
          goto LABEL_29;
        case 2:
          if (v24 != 2)
          {
            goto LABEL_152;
          }

          v34 = v328[2];
          if (v34 != v22[2])
          {
            v213 = sub_10000AC38();
            goto LABEL_168;
          }

          if (!v34 || v328 == v22)
          {
            v35 = sub_10000AC38();
            goto LABEL_20;
          }

          v320 = v22 + 4;

          v42 = 0;
          v314 = v34;
          v317 = v2;
          break;
        case 3:
          if (v24 != 3)
          {
            goto LABEL_152;
          }

          LOBYTE(v30) = sub_10011AF78(v38, v22);
          v39 = sub_10000AC38();
          sub_10011CE88(v39, v40, 3);
          v31 = v328;
          v32 = v324;
          v33 = 3;
          goto LABEL_29;
        default:
          if (!v24)
          {
            sub_10000EA9C();
            v29 = v328;
            v30 = static NSObject.== infix(_:_:)();
            sub_10011CE88(v22, v327, 0);
            v31 = v328;
            v32 = v324;
            v33 = 0;
LABEL_29:
            sub_10011CE88(v31, v32, v33);
            v10 = v325;
            if ((v30 & 1) == 0)
            {
              return;
            }

            continue;
          }

LABEL_152:
          v213 = sub_10000AC38();
LABEL_153:
          v215 = v24;
          goto LABEL_169;
      }

      break;
    }

LABEL_34:
    if (v42 >= v328[2])
    {
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      return;
    }

    if (v42 >= v28[2])
    {
      goto LABEL_172;
    }

    sub_10000B10C();
    v45 = &v328[v44 + 4];
    v46 = *v45;
    v47 = *(v45 + 16);
    v322 = *(v45 + 8);
    v323 = *(v320 + v43);
    v321 = *(v320 + v43 + 8);
    v48 = *(v320 + v43 + 16);
    switch(v47)
    {
      case 1:
        if (v48 == 1)
        {
          if (v46 == v323 && v322 == v321)
          {
            goto LABEL_148;
          }

          v209 = v42;
          v210 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v42 = v209;
          if (v210)
          {
            goto LABEL_148;
          }
        }

        goto LABEL_167;
      case 2:
        if (v48 != 2)
        {
          goto LABEL_167;
        }

        v53 = v46[2];
        if (v53 != v323[2])
        {
          goto LABEL_167;
        }

        if (v53)
        {
          v54 = v46 == v323;
        }

        else
        {
          v54 = 1;
        }

        if (v54)
        {
          goto LABEL_148;
        }

        v319 = v42;
        v312 = v46 + 4;
        v311 = v323 + 4;
        v313 = v46;
        sub_10011CE44(v323, v321, 2);
        sub_10000E22C();
        sub_10011CE44(v55, v56, v57);
        v58 = v46;
        v59 = 0;
        v305 = v53;
        break;
      case 3:
        if (v48 != 3)
        {
          goto LABEL_167;
        }

        v318 = v42;
        sub_10011CE44(v323, v321, 3);
        sub_10011CE44(v46, v322, 3);
        v49 = sub_10011AF78(v46, v323);
        v34 = v314;
        sub_10011CE88(v323, v321, 3);
        v50 = v46;
        v51 = v322;
        v52 = 3;
        goto LABEL_140;
      default:
        if (*(v320 + v43 + 16))
        {
          goto LABEL_167;
        }

        v318 = v42;
        sub_10000EA9C();
        sub_10011CE44(v323, v321, 0);
        sub_10011CE44(v46, v322, 0);
        sub_100005A8C();
        v49 = static NSObject.== infix(_:_:)();
        sub_10011CE88(v323, v321, 0);
        v50 = v46;
        v51 = v322;
        v28 = v326;
        v52 = 0;
LABEL_140:
        sub_10011CE88(v50, v51, v52);
        v42 = v318;
        if ((v49 & 1) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_148;
    }

LABEL_46:
    if (v59 >= v58[2])
    {
      goto LABEL_173;
    }

    if (v59 >= v323[2])
    {
      goto LABEL_174;
    }

    ++v59;
    sub_10000B10C();
    v62 = &v312[v61];
    v63 = *v62;
    v316 = v62[1];
    v64 = *(v62 + 16);
    v65 = *(v311 + v60);
    v315 = *(v311 + v60 + 8);
    v66 = *(v311 + v60 + 16);
    switch(v64)
    {
      case 1:
        if (v66 == 1)
        {
          if (v63 == v65 && v316 == v315)
          {
            goto LABEL_136;
          }

          v201 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v58 = v313;
          if (v201)
          {
            goto LABEL_136;
          }
        }

        goto LABEL_155;
      case 2:
        if (v66 != 2)
        {
          goto LABEL_165;
        }

        v71 = v63[2];
        if (v71 != v65[2])
        {
          goto LABEL_165;
        }

        if (v71)
        {
          v72 = v63 == v65;
        }

        else
        {
          v72 = 1;
        }

        v58 = v313;
        if (v72)
        {
          goto LABEL_136;
        }

        v285 = v59;
        v73 = v63 + 4;
        v303 = v65 + 4;
        v306 = v65;
        sub_1000067EC();
        v298 = v74;
        sub_10011CE44(v75, v76, v77);
        sub_10000CA54();
        sub_10011CE44(v78, v79, v80);
        v81 = 0;
        v307 = v63;
        v293 = v63 + 4;
        break;
      case 3:
        if (v66 != 3)
        {
          goto LABEL_165;
        }

        v195 = *(v311 + v60);
        sub_10011CE44(v65, v315, 3);
        sub_10011CE44(v63, v316, 3);
        v196 = sub_10011AF78(v63, v195);
        v197 = v195;
        v53 = v305;
        sub_10011CE88(v197, v315, 3);
        v198 = sub_100007878();
        sub_10011CE88(v198, v199, 3);
        v58 = v313;
        if ((v196 & 1) == 0)
        {
          goto LABEL_155;
        }

        goto LABEL_136;
      default:
        if (*(v311 + v60 + 16))
        {
          goto LABEL_165;
        }

        v67 = *(v311 + v60);
        sub_10000EA9C();
        sub_10011CE44(v67, v315, 0);
        sub_10011CE44(v63, v316, 0);
        v68 = static NSObject.== infix(_:_:)();
        v69 = v67;
        v53 = v305;
        v70 = sub_10000F2A4(v69, v315, 0);
        sub_10011CE88(v70, v316, 0);
        v58 = v313;
        if (v68)
        {
          goto LABEL_136;
        }

LABEL_155:
        v216 = sub_100011AA8();
        sub_10000F2A4(v216, v217, v218);
        goto LABEL_166;
    }

LABEL_59:
    if (v81 >= v63[2])
    {
      goto LABEL_175;
    }

    if (v81 >= v306[2])
    {
      goto LABEL_176;
    }

    sub_10000B10C();
    v85 = &v73[v84];
    v86 = *v85;
    v87 = v85[1];
    v88 = *(v85 + 16);
    v89 = *(v303 + v82);
    v310 = *(v303 + v82 + 8);
    v90 = *(v303 + v82 + 16);
    switch(v88)
    {
      case 1:
        if (v90 != 1)
        {
          goto LABEL_163;
        }

        if (v86 == v89 && v87 == v310)
        {
          goto LABEL_125;
        }

        v187 = v81;
        v188 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v81 = v187;
        v83 = v298;
        if (v188)
        {
          goto LABEL_125;
        }

        goto LABEL_160;
      case 2:
        if (v90 != 2)
        {
          goto LABEL_163;
        }

        v96 = v86[2];
        if (v96 != v89[2])
        {
          goto LABEL_163;
        }

        if (v96)
        {
          v97 = v86 == v89;
        }

        else
        {
          v97 = 1;
        }

        if (v97)
        {
          goto LABEL_125;
        }

        v300 = v81;
        v302 = v89;
        v291 = v89 + 4;
        v292 = v86 + 4;
        sub_100005674();
        v297 = v98;
        v289 = v99;
        sub_10011CE44(v100, v101, v102);
        v284 = v87;
        sub_10011CE44(v297, v87, 2);
        sub_10000EC3C();
        v309 = 0;
        break;
      case 3:
        if (v90 != 3)
        {
          goto LABEL_163;
        }

        v179 = *(v303 + v82);
        v180 = v86;
        v301 = v81;
        sub_10011CE44(v89, v310, 3);
        v181 = sub_10000DF00();
        sub_10011CE44(v181, v182, 3);
        v183 = sub_10011AF78(v180, v179);
        sub_10011CE88(v179, v310, 3);
        v184 = sub_10000DF00();
        v73 = v293;
        sub_10011CE88(v184, v185, 3);
        v83 = v298;
        v81 = v301;
        if ((v183 & 1) == 0)
        {
          goto LABEL_160;
        }

        goto LABEL_125;
      default:
        if (*(v303 + v82 + 16))
        {
          goto LABEL_163;
        }

        v299 = v81;
        v91 = *(v303 + v82);
        sub_10000EA9C();
        sub_10011CE44(v91, v310, 0);
        v92 = sub_10000DF00();
        sub_10011CE44(v92, v93, 0);
        v308 = static NSObject.== infix(_:_:)();
        sub_10011CE88(v91, v310, 0);
        v94 = sub_10000DF00();
        v73 = v293;
        sub_10011CE88(v94, v95, 0);
        v83 = v298;
        v81 = v299;
        if ((v308 & 1) == 0)
        {
          goto LABEL_160;
        }

        goto LABEL_125;
    }

LABEL_72:
    if (v309 >= v87[2])
    {
      goto LABEL_177;
    }

    if (v309 >= v302[2])
    {
      goto LABEL_178;
    }

    ++v309;
    sub_10000B10C();
    v106 = &v292[v105];
    v108 = *v106;
    v107 = v106[1];
    v109 = *(v106 + 16);
    v110 = *(v291 + v103);
    v304 = *(v291 + v103 + 8);
    v111 = *(v291 + v103 + 16);
    switch(v109)
    {
      case 1:
        if (v111 != 1)
        {
          sub_100005674();
          sub_10011CE88(v265, v266, v267);
          v251 = v87;
          goto LABEL_162;
        }

        if (v108 != v110 || v107 != v304)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10000EC3C();
          if ((v168 & 1) == 0)
          {
            goto LABEL_159;
          }
        }

        goto LABEL_114;
      case 2:
        if (v111 != 2)
        {
          goto LABEL_158;
        }

        v116 = v108[2];
        if (v116 != v110[2])
        {
          goto LABEL_158;
        }

        if (v116)
        {
          v117 = v108 == v110;
        }

        else
        {
          v117 = 1;
        }

        v87 = v297;
        if (v117)
        {
          goto LABEL_114;
        }

        v118 = v107;
        v288 = v108[2];
        v290 = v108;
        sub_10011CE44(v110, v304, 2);
        v282 = v118;
        sub_10011CE44(v108, v118, 2);
        v120 = v288;
        v119 = v110;
        v121 = v108;
        v122 = 0;
        v123 = v110 + 6;
        v124 = v108 + 6;
        v7 = v302;
        while (2)
        {
          if (v122 >= v121[2])
          {
            goto LABEL_179;
          }

          if (v122 >= v119[2])
          {
            goto LABEL_180;
          }

          ++v122;
          v126 = *(v124 - 2);
          v125 = *(v124 - 1);
          v127 = *v123;
          switch(*v124)
          {
            case 1:
              if (v127 != 1)
              {
                goto LABEL_157;
              }

              if (v126 != *(v123 - 2) || v125 != *(v123 - 1))
              {
                sub_100007CC8();
                v159 = v158;
                v160 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v122 = v159;
                v120 = v288;
                v119 = v110;
                v7 = v302;
                if ((v160 & 1) == 0)
                {
                  goto LABEL_157;
                }
              }

              goto LABEL_103;
            case 2:
              if (v127 != 2)
              {
                goto LABEL_157;
              }

              v135 = sub_100007878();
              v296 = v136;
              sub_10011CE44(v135, v137, 2);
              v138 = sub_100007CC8();
              sub_10011CE44(v138, v139, 2);
              v140 = sub_10000DF00();
              sub_1001257E0(v140, v141);
              v286 = v142;
              v143 = sub_100007878();
              sub_10011CE88(v143, v144, 2);
              v145 = sub_100007CC8();
              v147 = 2;
              goto LABEL_95;
            case 3:
              if (v127 != 3)
              {
                goto LABEL_157;
              }

              v148 = sub_100007878();
              v296 = v149;
              sub_10011CE44(v148, v150, 3);
              v151 = sub_100007CC8();
              sub_10011CE44(v151, v152, 3);
              v153 = sub_10000DF00();
              v286 = sub_10011AF78(v153, v154);
              v155 = sub_100007878();
              sub_10011CE88(v155, v156, 3);
              v145 = sub_100007CC8();
              v147 = 3;
LABEL_95:
              sub_10011CE88(v145, v146, v147);
              v122 = v296;
              v120 = v288;
              v119 = v110;
              v7 = v302;
              if ((v286 & 1) == 0)
              {
                goto LABEL_157;
              }

              goto LABEL_103;
            default:
              if (*v123)
              {
                goto LABEL_157;
              }

              v295 = v122;
              sub_10000EA9C();
              v287 = v125;
              v128 = sub_100007878();
              sub_10011CE44(v128, v129, 0);
              v130 = sub_100007CC8();
              sub_10011CE44(v130, v131, 0);
              sub_10000DF00();
              v132 = static NSObject.== infix(_:_:)();
              v133 = sub_100007878();
              sub_10011CE88(v133, v134, 0);
              sub_10011CE88(v126, v287, 0);
              v122 = v295;
              v120 = v288;
              v119 = v110;
              v7 = v302;
              if ((v132 & 1) == 0)
              {
                goto LABEL_157;
              }

LABEL_103:
              v123 += 3;
              v124 += 24;
              v121 = v108;
              if (v120 != v122)
              {
                continue;
              }

              v161 = sub_10000F2A4(v119, v304, 2);
              sub_10011CE88(v161, v282, 2);
              v28 = v326;
              v87 = v297;
              v104 = v289;
              break;
          }

          goto LABEL_114;
        }

      case 3:
        if (v111 != 3)
        {
          goto LABEL_158;
        }

        v87 = v107;
        sub_10011CE44(v110, v304, 3);
        v162 = sub_100005A8C();
        sub_10011CE44(v162, v163, 3);
        v164 = sub_10011AF78(v108, v110);
        sub_10011CE88(v110, v304, 3);
        v165 = sub_100005A8C();
        sub_10011CE88(v165, v166, 3);
        sub_10000EC3C();
        if ((v164 & 1) == 0)
        {
          goto LABEL_159;
        }

        goto LABEL_114;
      default:
        if (!*(v291 + v103 + 16))
        {
          v87 = v107;
          sub_10000EA9C();
          sub_10011CE44(v110, v304, 0);
          v112 = sub_100005A8C();
          sub_10011CE44(v112, v113, 0);
          v294 = static NSObject.== infix(_:_:)();
          sub_10011CE88(v110, v304, 0);
          v114 = sub_100005A8C();
          sub_10011CE88(v114, v115, 0);
          sub_10000EC3C();
          if ((v294 & 1) == 0)
          {
LABEL_159:
            sub_100005674();
            sub_10011CE88(v252, v253, v254);
            sub_10000AF40(v87, v255, v256, v257, v258, v259, v260, v261, v282, v284);
LABEL_160:
            sub_1000067EC();
            sub_10011CE88(v262, v263, v264);
            goto LABEL_164;
          }

LABEL_114:
          if (v309 == v104)
          {
            sub_100005674();
            sub_10011CE88(v169, v170, v171);
            sub_10000AF40(v87, v172, v173, v174, v175, v176, v177, v178, v282, v284);
            v83 = v298;
            v81 = v300;
            v73 = v293;
LABEL_125:
            v63 = v307;
            if (v81 == v83)
            {
              sub_1000067EC();
              sub_10000F2A4(v189, v190, v191);
              sub_10000CA54();
              sub_10011CE88(v192, v193, v194);
              v58 = v313;
              v59 = v285;
LABEL_136:
              v34 = v314;
              if (v59 == v53)
              {
                v202 = sub_100011AA8();
                sub_10000F2A4(v202, v203, v204);
                sub_10000E22C();
                sub_10011CE88(v205, v206, v207);
                v42 = v319;
LABEL_148:
                v2 = v317;
                if (v42 == v34)
                {
                  v211 = sub_10000AC38();
                  sub_10011CE88(v211, v212, 2);
                  v35 = sub_1000099C4();
LABEL_20:
                  v37 = 2;
LABEL_32:
                  sub_10011CE88(v35, v36, v37);
                  v10 = v325;
                  continue;
                }

                goto LABEL_34;
              }

              goto LABEL_46;
            }

            goto LABEL_59;
          }

          goto LABEL_72;
        }

LABEL_158:
        sub_100005674();
        sub_10011CE88(v241, v242, v243);
        v251 = v297;
LABEL_162:
        sub_10000AF40(v251, v244, v245, v246, v247, v248, v249, v250, v282, v284);
LABEL_163:
        sub_1000067EC();
        sub_10000F2A4(v268, v269, v270);
LABEL_164:
        sub_10000CA54();
        sub_10011CE88(v271, v272, v273);
LABEL_165:
        v274 = sub_100011AA8();
        sub_10011CE88(v274, v275, v276);
LABEL_166:
        sub_10000E22C();
        sub_10011CE88(v277, v278, v279);
LABEL_167:
        v280 = sub_10000AC38();
        sub_10011CE88(v280, v281, 2);
        v213 = sub_1000099C4();
LABEL_168:
        v215 = 2;
LABEL_169:
        sub_10011CE88(v213, v214, v215);
        return;
    }
  }
}

void sub_10011BE00(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = sub_10000F634(a1, a2);
    if (v37)
    {
      v4 = 0;
      v6 = v3 + 64;
      v5 = *(v3 + 64);
      v7 = *(v3 + 32);
      sub_100004154();
      v10 = v9 & v8;
      v12 = (v11 + 63) >> 6;
      while (v10)
      {
        sub_100006BD4();
        v44 = v15;
LABEL_12:
        v19 = v14 | (v4 << 6);
        v20 = (*(v13 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = (*(v13 + 56) + 40 * v19);
        v24 = *v23;
        v26 = *(v23 + 1);
        v25 = *(v23 + 2);
        v45 = *(v23 + 3);
        v43 = v23[32];

        if (!v21)
        {
          return;
        }

        v40 = v26;
        v27 = sub_100005B74(v22, v21);
        v29 = v28;

        if ((v29 & 1) == 0)
        {
          goto LABEL_58;
        }

        v30 = *(a2 + 56) + 40 * v27;
        v32 = *(v30 + 8);
        v31 = *(v30 + 16);
        v42 = *(v30 + 24);
        v41 = *(v30 + 32);
        v33 = 0xE300000000000000;
        v34 = 7630441;
        switch(*v30)
        {
          case 1:
            v33 = 0xE500000000000000;
            v34 = 0x3436746E69;
            break;
          case 2:
            v33 = 0xE400000000000000;
            v34 = 1953393013;
            break;
          case 3:
            v33 = 0xE600000000000000;
            v34 = 0x3436746E6975;
            break;
          case 4:
            v33 = 0xE500000000000000;
            v34 = 0x74616F6C66;
            break;
          case 5:
            v33 = 0xE600000000000000;
            v34 = 0x656C62756F64;
            break;
          case 6:
            v33 = 0xE400000000000000;
            v34 = 1819242338;
            break;
          case 7:
            v33 = 0xE400000000000000;
            v34 = 1836412517;
            break;
          case 8:
            v33 = 0xE400000000000000;
            v34 = 1635017060;
            break;
          case 9:
            v33 = 0xE600000000000000;
            v34 = 0x676E69727473;
            break;
          case 0xA:
            v33 = 0xE600000000000000;
            v34 = 0x616D65686373;
            break;
          default:
            break;
        }

        v35 = 0xE300000000000000;
        v36 = 7630441;
        switch(v24)
        {
          case 1:
            v35 = 0xE500000000000000;
            v36 = 0x3436746E69;
            break;
          case 2:
            v35 = 0xE400000000000000;
            v36 = 1953393013;
            break;
          case 3:
            v35 = 0xE600000000000000;
            v36 = 0x3436746E6975;
            break;
          case 4:
            v35 = 0xE500000000000000;
            v36 = 0x74616F6C66;
            break;
          case 5:
            v35 = 0xE600000000000000;
            v36 = 0x656C62756F64;
            break;
          case 6:
            v35 = 0xE400000000000000;
            v36 = 1819242338;
            break;
          case 7:
            v35 = 0xE400000000000000;
            v36 = 1836412517;
            break;
          case 8:
            v35 = 0xE400000000000000;
            v36 = 1635017060;
            break;
          case 9:
            v35 = 0xE600000000000000;
            v36 = 0x676E69727473;
            break;
          case 10:
            v35 = 0xE600000000000000;
            v36 = 0x616D65686373;
            break;
          default:
            break;
        }

        v37 = v34 == v36 && v33 == v35;
        if (v37)
        {
        }

        else
        {
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v38 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        if (v31)
        {
          if (!v25)
          {
            goto LABEL_58;
          }

          v39 = v32 == v40 && v31 == v25;
          if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_57:

LABEL_58:

            return;
          }
        }

        else if (v25)
        {
          goto LABEL_58;
        }

        if (v42 == v45)
        {
          v10 = v44;
          if (v43 == v41)
          {
            continue;
          }
        }

        return;
      }

      v16 = v4;
      while (1)
      {
        v4 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v4 >= v12)
        {
          return;
        }

        ++v16;
        if (*(v6 + 8 * v4))
        {
          sub_100003C00();
          v44 = v18 & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void _s11Schematizer10OneOfModelV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_10000F634(a1, a2);
    if (v4)
    {
      v5 = 0;
      v6 = *(a1 + 64);
      v7 = *(a1 + 32);
      sub_100004154();
      v10 = v9 & v8;
      v12 = (v11 + 63) >> 6;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v17 = v13 | (v5 << 6);
        v18 = (*(a1 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(a1 + 56) + 8 * v17);

        v22 = sub_100005B74(v19, v20);
        v24 = v23;

        if ((v24 & 1) == 0 || *(*(a2 + 56) + 8 * v22) != v21)
        {
          return;
        }
      }

      v14 = v5;
      while (1)
      {
        v5 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v5 >= v12)
        {
          return;
        }

        ++v14;
        if (*(a1 + 64 + 8 * v5))
        {
          sub_100003C00();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_10011C340(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    v3 = sub_10000F634(a1, a2);
    if (v4)
    {
      v5 = 0;
      v7 = v3 + 64;
      v6 = *(v3 + 64);
      v8 = *(v3 + 32);
      sub_100004154();
      v11 = v10 & v9;
      v13 = (v12 + 63) >> 6;
      while (v11)
      {
        sub_100006BD4();
        v41 = v17;
LABEL_12:
        v21 = v15 | (v5 << 6);
        v22 = (*(v14 + 48) + 16 * v21);
        v23 = *v22;
        v24 = v22[1];
        v25 = (*(v14 + 56) + v21 * v16);
        v26 = *v25;
        v27 = v25[1];
        v28 = v25[2];

        v29 = sub_100005B74(v23, v24);
        v30 = v2;
        v32 = v31;

        if ((v32 & 1) == 0)
        {
          goto LABEL_19;
        }

        v2 = v30;
        v33 = (*(v30 + 56) + 24 * v29);
        v34 = *v33;
        v35 = v33[1];
        v36 = v33[2];

        sub_10011AF78(v34, v26);
        if ((v37 & 1) == 0 || (sub_10011BE00(v35, v27), (v38 & 1) == 0))
        {

LABEL_19:

          return;
        }

        sub_10011C570(v36, v28, _s11Schematizer10OneOfModelV23__derived_struct_equalsySbAC_ACtFZ_0);
        v40 = v39;

        v11 = v41;
        if ((v40 & 1) == 0)
        {
          return;
        }
      }

      v18 = v5;
      while (1)
      {
        v5 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v5 >= v13)
        {
          return;
        }

        ++v18;
        if (*(v7 + 8 * v5))
        {
          sub_100003C00();
          v41 = v20 & v19;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_10011C570(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    sub_10000F634(a1, a2);
    if (v5)
    {
      v6 = 0;
      v7 = *(a1 + 64);
      v8 = *(a1 + 32);
      sub_100004154();
      v11 = v10 & v9;
      v13 = (v12 + 63) >> 6;
      while (v11)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_12:
        v18 = v14 | (v6 << 6);
        v19 = (*(a1 + 48) + 16 * v18);
        v20 = *v19;
        v21 = v19[1];
        v22 = *(*(a1 + 56) + 8 * v18);

        v23 = sub_100005B74(v20, v21);
        v25 = v24;

        if ((v25 & 1) == 0)
        {

          return;
        }

        v26 = *(*(a2 + 56) + 8 * v23);

        v28 = a3(v27, v22);

        if ((v28 & 1) == 0)
        {
          return;
        }
      }

      v15 = v6;
      while (1)
      {
        v6 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v6 >= v13)
        {
          return;
        }

        ++v15;
        if (*(a1 + 64 + 8 * v6))
        {
          sub_100003C00();
          v11 = v17 & v16;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_10011C6C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = EnumModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t EnumModel.init(_:)(uint64_t *a1)
{
  v9 = Dictionary.init(dictionaryLiteral:)();
  v3 = a1[3];
  v4 = a1[4];
  sub_100007534(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v8[2] = &v9;
  v8[3] = a1;
  sub_10011C8EC(sub_10011C8D0, v8, v5);

  v6 = v9;
  if (v1)
  {
  }

  sub_100007378(a1);
  return v6;
}

uint64_t sub_10011C80C(unsigned int *a1, uint64_t *a2, void *a3)
{
  v5 = *a1;
  v6 = a3[3];
  v7 = a3[4];
  sub_100007534(a3, v6);
  result = (*(v7 + 32))(v5, v6, v7);
  if (!v3)
  {
    v10 = result;
    v11 = v9;
    v12 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *a2;
    sub_100135C94(v5, v10, v11);
    *a2 = v13;
  }

  return result;
}

uint64_t sub_10011C8EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    v6 = 0;
    v7 = a3 + 32;
    while (2)
    {
      v8 = (v7 + 8 * v6++);
      v10 = *v8;
      v9 = v8[1];
      do
      {
        v13 = v10;
        if (v10 == v9)
        {
          v11 = 0;
        }

        else
        {
          if (v10 == 0x7FFFFFFF)
          {
            __break(1u);
            return result;
          }

          v11 = v10 + 1;
        }

        result = v5(&v13);
        if (v3)
        {
          return result;
        }

        v12 = v10 == v9;
        v10 = v11;
      }

      while (!v12);
      if (v6 != v4)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t variable initialization expression of SQLiteBaseSchematizer.impl()
{
  type metadata accessor for Schematizer();
  v0 = swift_allocObject();
  type metadata accessor for ProtoSchemaStore();
  swift_allocObject();
  *(v0 + 16) = ProtoSchemaStore.init()();
  *(v0 + 24) = &protocol witness table for ProtoSchemaStore;
  return v0;
}

uint64_t variable initialization expression of SQLiteBaseSchematizer.queryTimeFrameGuideline()
{
  v0 = type metadata accessor for Date();
  v1 = sub_100003650(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v10, v0);
  static Date.distantFuture.getter();
  Date.timeIntervalSince1970.getter();
  v15 = v14;
  result = (v13)(v7, v0);
  if (v12 > v15)
  {
    __break(1u);
  }

  return result;
}

uint64_t variable initialization expression of SQLiteBaseSchematizer.functions()
{
  sub_100046184(&qword_10021C018, &qword_1001A1130);

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t IntegerSet.init()(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 8) + 32) + 8);
  type metadata accessor for ClosedRange();

  return static Array._allocateUninitialized(_:)();
}

uint64_t variable initialization expression of ProtoSchemaStore.enums()
{
  type metadata accessor for ProtoEnum();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t variable initialization expression of ProtoSchemaStore.schemas()
{
  type metadata accessor for ProtoMessageSchema();

  return Dictionary.init(dictionaryLiteral:)();
}

_BYTE *storeEnumTagSinglePayload for EnumModel.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_10011CD40()
{
  result = qword_10021C020;
  if (!qword_10021C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C020);
  }

  return result;
}

unint64_t sub_10011CD98()
{
  result = qword_10021C028;
  if (!qword_10021C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C028);
  }

  return result;
}

unint64_t sub_10011CDF0()
{
  result = qword_10021C030;
  if (!qword_10021C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C030);
  }

  return result;
}

id sub_10011CE44(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
      result = result;
      break;
    case 1:
    case 2:
    case 3:

      break;
    default:
      return result;
  }

  return result;
}

void sub_10011CE88(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:

      break;
    case 1:
    case 2:
    case 3:

      break;
    default:
      return;
  }
}

uint64_t sub_10011CECC(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a4 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      a2(&v18, v17);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v18;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10011D014(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 40);
  if (!v6)
  {
    return v11;
  }

  while (1)
  {
    v8 = *v7;
    v10[0] = *(v7 - 1);
    v10[1] = v8;

    a2(&v11, v10);
    if (v4)
    {
      break;
    }

    v7 += 2;
    if (!--v6)
    {
      return v11;
    }
  }
}

uint64_t sub_10011D0BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10011D15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10011D0BC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10011D1A4@<X0>(_BYTE *a1@<X8>)
{
  result = static Optional<A>.sqlNullable.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10011D1D0(uint64_t a1)
{
  v2 = sub_10011D3C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011D20C(uint64_t a1)
{
  v2 = sub_10011D3C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t OneOfModel.encode(to:)(void *a1, uint64_t a2)
{
  v5 = sub_100046184(&qword_10021C038, &qword_1001A0AB0);
  v6 = sub_100003BC8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_100007534(a1, a1[3]);
  sub_10011D3C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[1] = a2;
  sub_100046184(&qword_10021C048, &qword_1001A0AB8);
  sub_10011D5B8(&qword_10021C050);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v8 + 8))(v12, v2);
}

unint64_t sub_10011D3C4()
{
  result = qword_10021C040;
  if (!qword_10021C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C040);
  }

  return result;
}

void *OneOfModel.init(from:)(uint64_t *a1)
{
  v4 = sub_100046184(&qword_10021C058, &qword_1001A0AC0);
  v5 = sub_100003BC8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = v15 - v10;
  v12 = a1[4];
  v13 = sub_100007534(a1, a1[3]);
  sub_10011D3C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007378(a1);
  }

  else
  {
    sub_100046184(&qword_10021C048, &qword_1001A0AB8);
    sub_10011D5B8(&qword_10021C060);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v11, v2);
    v13 = v15[1];
    sub_100007378(a1);
  }

  return v13;
}

uint64_t sub_10011D5B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_10021C048, &qword_1001A0AB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10011D628@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = OneOfModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t OneOfModel.init(_:)(uint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_100007534(a1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = Dictionary.init(dictionaryLiteral:)();
  v8[2] = a1;
  v6 = sub_10011CECC(v5, sub_10011D810, v8, v4);

  sub_100007378(a1);
  return v6;
}

void sub_10011D754(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a3[3];
  v8 = a3[4];
  sub_100007534(a3, v7);
  v9 = (*(v8 + 40))(v5, v6, v7, v8);
  if (!v3)
  {
    v10 = v9;
    v11 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    sub_100135D6C(v10, v5, v6);
    *a1 = v12;
  }
}

_BYTE *storeEnumTagSinglePayload for OneOfModel.CodingKeys(_BYTE *result, int a2, int a3)
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