int main(int argc, const char **argv, const char **envp)
{
  if (qword_100008440 != -1)
  {
    sub_1000034F8(&qword_100008440);
  }

  sub_100001748();

  dispatch_main();
}

uint64_t sub_100000EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000020F0(0);
  v6 = sub_1000035C8(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000352C();
  sub_1000035BC();
  v9 = sub_1000036E4();
  v10 = sub_100003518(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000352C();
  v17 = (v16 - v15);
  if (qword_100008440 != -1)
  {
    sub_1000034F8(&qword_100008440);
  }

  v18 = *(qword_1000085E0 + 32);
  *v17 = v18;
  (*(v12 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v9);
  v19 = v18;
  LOBYTE(v18) = sub_1000036F4();
  result = (*(v12 + 8))(v17, v9);
  if (v18)
  {
    sub_10000196C(a1, v2);
    sub_100002124();
    v22 = v21;
    if (sub_1000021F0(v2, 1, v21) == 1)
    {
      result = sub_1000023A0(v2, sub_1000020F0);
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
    }

    else
    {
      *(a2 + 24) = v22;
      *(a2 + 32) = sub_1000034B0(&qword_1000083D0, sub_100002124);
      v23 = sub_100002218(a2);
      return (*(*(v22 - 8) + 32))(v23, v2, v22);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000010F0()
{
  v1 = sub_1000036E4();
  v2 = sub_100003518(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000352C();
  sub_1000035BC();
  if (qword_100008440 != -1)
  {
    sub_1000034F8(&qword_100008440);
  }

  v7 = *(qword_1000085E0 + 32);
  *v0 = v7;
  (*(v4 + 104))(v0, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = sub_1000036F4();
  result = (*(v4 + 8))(v0, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100001214()
{
  sub_1000035F4();
  sub_10000353C();
  sub_1000034B0(v0, v1);
  return sub_100003704();
}

uint64_t sub_100001288()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtCC26MediaControlMessageService10MainServer9XPCClient_identifier;
  v3 = sub_1000035F4();
  sub_1000035AC(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

Swift::Int sub_100001324()
{
  sub_100003844();
  sub_1000035F4();
  sub_10000353C();
  sub_1000034B0(v0, v1);
  sub_100003704();
  return sub_100003854();
}

Swift::Int sub_100001434()
{
  sub_100003844();
  v1 = *v0;
  sub_100001214();
  return sub_100003854();
}

uint64_t sub_100001474(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100001200() & 1;
}

void *sub_100001498()
{
  type metadata accessor for MainServer();
  v0 = swift_allocObject();
  result = sub_100001514();
  qword_1000085E0 = v0;
  return result;
}

void *sub_1000014D4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    *(v0 + 16) = &_swiftEmptySetSingleton;
  }

  return v1;
}

void *sub_100001514()
{
  v1 = sub_100003724();
  v2 = sub_1000035AC(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000352C();
  v5 = sub_1000036D4();
  v6 = sub_1000035C8(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10000352C();
  v9 = sub_100003734();
  v10 = sub_100003518(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10000352C();
  v17 = v16 - v15;
  sub_1000033D4();
  v0[2] = 0;
  v0[3] = 0;
  (*(v12 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  sub_1000036C4();
  sub_1000034B0(&qword_100008428, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003418(0);
  sub_1000034B0(&qword_100008438, sub_100003418);
  sub_100003754();
  v0[4] = sub_100003744();
  return v0;
}

uint64_t sub_100001748()
{
  v1 = sub_100003674();
  v2 = sub_1000035C8(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000352C();
  sub_1000035BC();
  v5 = *(v0 + 32);

  sub_100003664();
  v6 = sub_1000036A4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_100003694();
  v10 = *(v0 + 24);
  *(v0 + 24) = v9;
}

uint64_t sub_1000018F4(uint64_t a1)
{
  v5 = sub_1000014D4();

  sub_1000023F8(&v6, a1);

  v3 = *(v1 + 16);
  *(v1 + 16) = v5;
}

uint64_t sub_10000196C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v62 = a2;
  v3 = sub_100003644();
  v4 = sub_100003518(v3);
  v59 = v5;
  v60 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000352C();
  v10 = v9 - v8;
  v11 = sub_100003654();
  v57 = sub_100003518(v11);
  v58 = v12;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v57);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v56 - v18;
  sub_100002278(0);
  v21 = sub_1000035C8(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_10000352C();
  v26 = v25 - v24;
  sub_1000022AC();
  v28 = v27;
  v29 = sub_100003518(v27);
  v56 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_10000352C();
  v35 = v34 - v33;
  v36 = sub_1000036E4();
  v37 = sub_100003518(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v37);
  sub_10000352C();
  sub_1000035BC();
  if (qword_100008440 != -1)
  {
    sub_1000034F8(&qword_100008440);
  }

  v42 = *(qword_1000085E0 + 32);
  *v2 = v42;
  (*(v39 + 104))(v2, enum case for DispatchPredicate.onQueue(_:), v36);
  v43 = v42;
  LOBYTE(v42) = sub_1000036F4();
  result = (*(v39 + 8))(v2, v36);
  if (v42)
  {
    sub_1000034B0(&qword_1000083F8, sub_1000022AC);
    sub_1000036B4();
    sub_100002378(v26, 0, 1, v28);
    v45 = v56;
    (*(v56 + 32))(v35, v26, v28);
    sub_100003614();
    v46 = v57;
    v47 = v58;
    (*(v58 + 16))(v17, v19, v57);
    v48 = (*(v47 + 88))(v17, v46);
    v51 = *(v47 + 8);
    v49 = v47 + 8;
    v50 = v51;
    v52 = v62;
    if (v48 == enum case for MessageService.IPCServerMessage.hello(_:))
    {
      v50(v17, v46);
      sub_100003634();
      (*(v59 + 104))(v10, enum case for MessageService.IPCClientMessage.reply(_:), v60);
      sub_10000356C();
      sub_1000034B0(v53, v46);
      v58 = v49;
      sub_100003584(&qword_1000083C8);
      sub_100003604();
      v50(v19, v57);
      (*(v45 + 8))(v35, v28);
      v54 = 0;
    }

    else
    {
      v50(v19, v46);
      (*(v45 + 8))(v35, v28);
      v50(v17, v46);
      v54 = 1;
    }

    sub_100002124();
    return sub_100002378(v52, v54, 1, v55);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100001F3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_100001F6C()
{
  sub_100001F3C();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t type metadata accessor for MainServer.XPCClient()
{
  result = qword_100008450;
  if (!qword_100008450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002018()
{
  result = sub_1000035F4();
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

void sub_100002124()
{
  if (!qword_1000083B8)
  {
    sub_100003644();
    sub_1000034B0(&qword_1000083C0, &type metadata accessor for MessageService.IPCClientMessage);
    sub_1000034B0(&qword_1000083C8, &type metadata accessor for MessageService.IPCClientMessage);
    v0 = sub_100003624();
    if (!v1)
    {
      atomic_store(v0, &qword_1000083B8);
    }
  }
}

uint64_t *sub_100002218(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_1000022AC()
{
  if (!qword_1000083E0)
  {
    sub_100003654();
    sub_1000034B0(&qword_1000083E8, &type metadata accessor for MessageService.IPCServerMessage);
    sub_1000034B0(&qword_1000083F0, &type metadata accessor for MessageService.IPCServerMessage);
    v0 = sub_100003624();
    if (!v1)
    {
      atomic_store(v0, &qword_1000083E0);
    }
  }
}

uint64_t sub_1000023A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000035AC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000023F8(void *a1, uint64_t a2)
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

    v8 = sub_100003794();

    if (v8)
    {

      type metadata accessor for MainServer.XPCClient();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
    }

    else
    {
      result = sub_100003784();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_100002674(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_100002898(v17 + 1);
        }

        sub_100002B2C(v18, v16);

        *v3 = v16;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    sub_100003844();
    sub_1000035F4();
    sub_1000034B0(&qword_1000083A8, &type metadata accessor for UUID);
    sub_100003704();
    v11 = sub_100003854();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        v19 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v3;

        sub_100002C20(v21, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v24;
        *a1 = a2;
        return 1;
      }

      v14 = *(*(v6 + 48) + 8 * v13);

      v15 = sub_1000035D4();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v13);

    return 0;
  }

  return result;
}

Swift::Int sub_100002674(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000031F8();
    v2 = sub_1000037D4();
    v16 = v2;
    sub_100003774();
    while (1)
    {
      if (!sub_1000037A4())
      {

        return v2;
      }

      type metadata accessor for MainServer.XPCClient();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_100002898(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      sub_100003844();
      sub_1000035F4();
      sub_1000034B0(&qword_1000083A8, &type metadata accessor for UUID);
      sub_100003704();
      result = sub_100003854();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100002898(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000031F8();
  result = sub_1000037C4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_100002DDC(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_100003844();
    sub_1000035F4();
    sub_1000034B0(&qword_1000083A8, &type metadata accessor for UUID);
    sub_100003704();
    result = sub_100003854();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_100002B2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_100003844();
  sub_1000035F4();
  sub_1000034B0(&qword_1000083A8, &type metadata accessor for UUID);
  sub_100003704();
  sub_100003854();
  v5 = -1 << *(a2 + 32);
  result = sub_100003764();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_100002C20(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100002898(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_100002F84(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = *(*v3 + 40);
      sub_100003844();
      sub_1000035F4();
      sub_1000034B0(&qword_1000083A8, &type metadata accessor for UUID);
      sub_100003704();
      result = sub_100003854();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v10;
        if (((*(v8 + 56 + (((result & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        type metadata accessor for MainServer.XPCClient();
        v11 = *(*(v8 + 48) + 8 * a2);

        v12 = sub_1000035D4();

        if (v12)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_100002E40();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_100003824();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

uint64_t sub_100002DDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100003A00;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_100002E40()
{
  v1 = v0;
  sub_1000031F8();
  v2 = *v0;
  v3 = sub_1000037B4();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_100002F84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000031F8();
  result = sub_1000037C4();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        sub_100003844();
        sub_1000035F4();
        sub_1000034B0(&qword_1000083A8, &type metadata accessor for UUID);

        sub_100003704();
        result = sub_100003854();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v6 + 48) + 8 * v22) = v17;
        ++*(v6 + 16);
        v3 = v28;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v27;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_1000031F8()
{
  if (!qword_100008400)
  {
    type metadata accessor for MainServer.XPCClient();
    sub_1000034B0(&qword_100008408, type metadata accessor for MainServer.XPCClient);
    v0 = sub_1000037E4();
    if (!v1)
    {
      atomic_store(v0, &qword_100008400);
    }
  }
}

uint64_t sub_10000328C()
{
  type metadata accessor for MainServer.XPCClient();
  sub_100003554();
  sub_1000034B0(v0, v1);
  return sub_100003684();
}

void sub_100003314()
{
  if (!qword_100008410)
  {
    v0 = sub_100003804();
    if (!v1)
    {
      atomic_store(v0, &qword_100008410);
    }
  }
}

uint64_t sub_100003368@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MainServer.XPCClient();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_1000035E4();
  *(v7 + 16) = a1;

  result = sub_1000018F4(v7);
  *a2 = v7;
  return result;
}

unint64_t sub_1000033D4()
{
  result = qword_100008420;
  if (!qword_100008420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008420);
  }

  return result;
}

void sub_10000344C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000034B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000034F8(uint64_t a1)
{

  return _swift_once(a1, sub_100001498);
}

uint64_t sub_100003584(unint64_t *a1)
{

  return sub_1000034B0(a1, v1);
}