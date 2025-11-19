uint64_t sub_10001DC98(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for HostedRoutingItem(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1001BC5A8(&qword_1005249C0, &qword_100457078);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_10001DFD4(v31, v45);
      }

      else
      {
        sub_10001D948(v31, v45);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      result = sub_10001DFD4(v45, *(v12 + 56) + v30 * v20);
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

uint64_t sub_10001DFD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E038(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for HostedRoutingItem(0);
  result = sub_10001DFD4(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

id sub_10001E0D0()
{
  v1 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___hearingAidHelper;
  v2 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___hearingAidHelper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___hearingAidHelper);
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = objc_allocWithZone(RoutingItemDataSourceHearingAidHelper);
    v12[4] = sub_100286BD0;
    v12[5] = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100003D98;
    v12[3] = &unk_1004C73F0;
    v7 = _Block_copy(v12);

    v8 = [v6 initWithTargetQueue:v4 hearingAidDidChangeHandler:v7];
    _Block_release(v7);

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_10001E220(uint64_t a1)
{
  v1 = *(a1 + 16) >> 11;
  if (v1 <= 0x10)
  {
    return v1;
  }

  else
  {
    return (*a1 + 17);
  }
}

uint64_t sub_10001E23C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingItems;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1000180A0(v4);
}

uint64_t sub_10001E2B4(uint64_t a1)
{
  result = sub_100015D10();
  v3 = 0;
  v4 = result + 64;
  v28 = result;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;
  while (v7)
  {
LABEL_13:
    v14 = (*(v28 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v7)))));
    v16 = *v14;
    v15 = v14[1];
    if (!*(a1 + 16))
    {

LABEL_24:
      v24 = *(v29 + 16);

      v25 = sub_10000698C(v16, v15);
      v27 = v26;

      if (v27)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_100035C9C();
        }

        v10 = *(*(v24 + 48) + 16 * v25 + 8);

        v11 = *(*(v24 + 56) + 16 * v25 + 8);

        sub_10021A064(v25, v24);
      }

      v12 = *(v29 + 16);
      *(v29 + 16) = v24;
      goto LABEL_7;
    }

    v17 = *(a1 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = -1 << *(a1 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_24;
    }

    v21 = ~v19;
    while (1)
    {
      v22 = (*(a1 + 48) + 16 * v20);
      v23 = *v22 == v16 && v22[1] == v15;
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

LABEL_7:
    v7 &= v7 - 1;
  }

  while (1)
  {
    v13 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v13);
    ++v3;
    if (v7)
    {
      v3 = v13;
      goto LABEL_13;
    }
  }
}

uint64_t sub_10001E4EC(void *a1, void *a2)
{
  v4 = type metadata accessor for RoutingItem.Attributes();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v60 = &v54 - v11;
  v58 = sub_1001BC5A8(&qword_1005241F0, &qword_1004550D8);
  v12 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v59 = &v54 - v13;
  v14 = type metadata accessor for RoutingItem.SelectionIndicator();
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  __chkstk_darwin(v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v54 - v20;
  v22 = sub_1001BC5A8(&qword_1005241F8, &qword_1004550E0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v54 - v24;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_45;
  }

  v26 = a1[3];
  v27 = a2[3];
  if (v26)
  {
    if (!v27 || (a1[2] != a2[2] || v26 != v27) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v27)
  {
    goto LABEL_45;
  }

  if ((a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[6] != a2[6] || a1[7] != a2[7]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_45;
  }

  v55 = v8;
  v56 = v5;
  v54 = v4;
  v57 = type metadata accessor for HostedRoutingItem(0);
  v28 = v57[8];
  v29 = *(v22 + 48);
  sub_10001D9AC(a1 + v28, v25, &unk_100524E90, &unk_1004519B0);
  sub_10001D9AC(a2 + v28, &v25[v29], &unk_100524E90, &unk_1004519B0);
  v30 = v61;
  v31 = *(v61 + 48);
  if (v31(v25, 1, v14) == 1)
  {
    if (v31(&v25[v29], 1, v14) == 1)
    {
      sub_1000038A4(v25, &unk_100524E90, &unk_1004519B0);
      goto LABEL_25;
    }

LABEL_22:
    v32 = &qword_1005241F8;
    v33 = &qword_1004550E0;
LABEL_23:
    sub_1000038A4(v25, v32, v33);
    goto LABEL_45;
  }

  sub_10001D9AC(v25, v21, &unk_100524E90, &unk_1004519B0);
  if (v31(&v25[v29], 1, v14) == 1)
  {
    (*(v30 + 8))(v21, v14);
    goto LABEL_22;
  }

  (*(v30 + 32))(v17, &v25[v29], v14);
  sub_100017F84(&qword_100524208, &type metadata accessor for RoutingItem.SelectionIndicator);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v30 + 8);
  v35(v17, v14);
  v35(v21, v14);
  sub_1000038A4(v25, &unk_100524E90, &unk_1004519B0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_25:
  v36 = v57;
  if (*(a1 + v57[9]) != *(a2 + v57[9]) || *(a1 + v57[10]) != *(a2 + v57[10]) || *(a1 + v57[11]) != *(a2 + v57[11]) || (sub_100256D38(*(a1 + v57[12]), *(a2 + v57[12])) & 1) == 0)
  {
    goto LABEL_45;
  }

  v37 = v36[13];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 4);
  v40 = (a2 + v37);
  v41 = *(a2 + v37 + 4);
  if (v39)
  {
    v43 = v55;
    v42 = v56;
    v44 = v60;
    if (!v41)
    {
      return v41 & 1;
    }
  }

  else
  {
    if (*v38 != *v40)
    {
      LOBYTE(v41) = 1;
    }

    v43 = v55;
    v42 = v56;
    v44 = v60;
    if (v41)
    {
      goto LABEL_45;
    }
  }

  if (*(a1 + v36[14]) != *(a2 + v36[14]))
  {
LABEL_45:
    LOBYTE(v41) = 0;
    return v41 & 1;
  }

  v45 = v36[15];
  v25 = v59;
  v46 = *(v58 + 48);
  sub_10001D9AC(a1 + v45, v59, &qword_100523AE8, &unk_100457500);
  sub_10001D9AC(a2 + v45, &v25[v46], &qword_100523AE8, &unk_100457500);
  v47 = *(v42 + 48);
  v48 = v54;
  if (v47(v25, 1, v54) == 1)
  {
    if (v47(&v25[v46], 1, v48) == 1)
    {
      sub_1000038A4(v25, &qword_100523AE8, &unk_100457500);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  sub_10001D9AC(v25, v44, &qword_100523AE8, &unk_100457500);
  if (v47(&v25[v46], 1, v48) == 1)
  {
    (*(v42 + 8))(v44, v48);
LABEL_41:
    v32 = &qword_1005241F0;
    v33 = &qword_1004550D8;
    goto LABEL_23;
  }

  (*(v42 + 32))(v43, &v25[v46], v48);
  sub_100017F84(&qword_100524200, &type metadata accessor for RoutingItem.Attributes);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v42 + 8);
  v50(v43, v48);
  v50(v44, v48);
  sub_1000038A4(v25, &qword_100523AE8, &unk_100457500);
  if ((v49 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_43:
  v51 = v57;
  v52 = v57[16];
  if ((sub_1000184A4(*(a1 + v52), *(a1 + v52 + 8), *(a1 + v52 + 16), *(a2 + v52), *(a2 + v52 + 8), *(a2 + v52 + 16)) & 1) == 0)
  {
    goto LABEL_45;
  }

  LOBYTE(v41) = *(a1 + v51[17]) ^ *(a2 + v51[17]) ^ 1;
  return v41 & 1;
}

uint64_t sub_10001ECB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingItem(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_10001D948(v14, v11);
        sub_10001D948(v15, v8);
        sub_100017FCC(&qword_100523CA0, type metadata accessor for HostedRoutingItem);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10001DA14(v8);
        sub_10001DA14(v11);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void sub_10001EF6C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_10001F384(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100521B10, &unk_100450000);
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

uint64_t sub_10001FC9C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void sub_10001FCC8(void *a1, void *a2)
{
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1000203F8;
  applier[3] = &unk_1004C0B68;
  v5 = a1;
  v3 = v5;
  xpc_dictionary_apply(a2, applier);
}

void sub_10001FD5C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = qos_class_self();
  qos_class = dispatch_queue_get_qos_class(v9, 0);
  v13 = v9;
  v14 = v13;
  if (qos_class < v11)
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = qos_class_self();
    v17 = dispatch_queue_attr_make_with_qos_class(v15, v16, 0);
    v14 = dispatch_queue_create_with_target_V2(0, v17, v13);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001FEC0;
  handler[3] = &unk_1004BE2D0;
  v20 = v10;
  v18 = v10;
  xpc_connection_send_message_with_reply(v7, v8, v14, handler);
}

uint64_t sub_10001FEC0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *sub_100020418(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100020E0C(i, v6);
    sub_100018D7C(0, &qword_1005241C8, MRCommandInfo_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = v7[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_100020664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002067C(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 32) playbackQueue];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100020790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000207A8(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_isPlaying];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1000207E8()
{
  v1 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = v0 + *(type metadata accessor for HostedRoutingSession.NowPlayingInfo(0) + 36);
  RoutingSession.NowPlayingInfo.PlaybackInfo.playbackState.getter();
  (*(v2 + 104))(v6, enum case for RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.playing(_:), v1);
  LOBYTE(v9) = static RoutingSession.NowPlayingInfo.PlaybackInfo.PlaybackState.== infix(_:_:)();
  v10 = *(v2 + 8);
  v10(v6, v1);
  v10(v8, v1);
  return v9 & 1;
}

uint64_t sub_100020E0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

NSString *__cdecl sub_100020E68(id a1, MRAVEndpoint *a2)
{
  v2 = a2;
  v3 = [(MRAVEndpoint *)v2 localizedName];
  v4 = [(MRAVEndpoint *)v2 uniqueIdentifier];

  v5 = [NSString stringWithFormat:@"%@ - %@", v3, v4];

  return v5;
}

void sub_100020EFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 msv_map:&stru_1004C13D8];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC] addEndpointsModifiedCallback: %@", &v9, 0xCu);
  }

  v6 = [v3 msv_compactMap:&stru_1004C13F8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained recommender];
  [v8 updateRouteCandidates:v6];
}

MRIRRoute *__cdecl sub_100021018(id a1, MRAVEndpoint *a2)
{
  v2 = a2;
  if ([(MRAVEndpoint *)v2 shouldDonate])
  {
    v3 = [MRIRRoute routeWithEndpoint:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *sub_10002107C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = &_swiftEmptyArrayStorage;
    *(v0 + 24) = &_swiftEmptyArrayStorage;
  }

  return v1;
}

unint64_t sub_1000210BC()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100021264();
  v6 = *v5;
  *v4 = *v5;
  (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v4, v0);
  if (v6)
  {
    result = sub_10002107C();
    v0 = result;
    if (!(result >> 62))
    {
      v9 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_4;
      }

LABEL_12:

      return sub_10031B8F4();
    }
  }

  else
  {
    __break(1u);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v9 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v0 + 8 * i + 32);
      }

      sub_100028D64(v11);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100021264()
{
  if (qword_10052BAB0 != -1)
  {
    swift_once();
  }

  return &qword_1005384B8;
}

id sub_100021404(id a1, MRAVDistantEndpoint *a2)
{
  v2 = a2;
  if (([(MRAVDistantEndpoint *)v2 isLocalEndpoint]& 1) != 0)
  {
    v3 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

uint64_t sub_100021468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSession(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v24 - v11);
  v13 = sub_1001BC5A8(&qword_100524178, &unk_1004584F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_10001D9AC(a1, &v24 - v16, &qword_100523620, &unk_1004511D0);
  sub_10001D9AC(a2, &v17[v18], &qword_100523620, &unk_1004511D0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_1000038A4(v17, &qword_100523620, &unk_1004511D0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10001D9AC(v17, v12, &qword_100523620, &unk_1004511D0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_10002181C(v12, type metadata accessor for HostedRoutingSession);
LABEL_6:
    sub_1000038A4(v17, &qword_100524178, &unk_1004584F0);
LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  sub_100032E08(&v17[v18], v8, type metadata accessor for HostedRoutingSession);
  v20 = sub_10002E020(v12, v8);
  sub_10002181C(v8, type metadata accessor for HostedRoutingSession);
  sub_10002181C(v12, type metadata accessor for HostedRoutingSession);
  sub_1000038A4(v17, &qword_100523620, &unk_1004511D0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v21 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  if ((sub_10002E77C(*(a1 + *(v21 + 20)), *(a2 + *(v21 + 20)), type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession, sub_10002E020, type metadata accessor for HostedRoutingSession) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = sub_10002E77C(*(a1 + *(v21 + 24)), *(a2 + *(v21 + 24)), type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession, sub_10002E020, type metadata accessor for HostedRoutingSession);
  return v22 & 1;
}

uint64_t sub_10002181C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002187C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000218DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100021940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for HostedRoutingSession(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  sub_10001CECC(a3, a4, &qword_100523620, &unk_1004511D0);
  result = type metadata accessor for HostedRoutingSessionSnapshot(0);
  *(a4 + *(result + 20)) = a1;
  *(a4 + *(result + 24)) = a2;
  return result;
}

uint64_t sub_1000219E8(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v67 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v67 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v67);
  v66 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v6 = *(v65 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v65);
  v64 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for RoutingSessionConfiguration();
  v9 = *(v60 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v60);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v58 = &v54 - v14;
  v15 = sub_1001BC5A8(&qword_100525F78, &qword_100458A90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v57 = &v54 - v17;
  v56 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v71 = *(v56 - 8);
  v18 = *(v71 + 64);
  v19 = __chkstk_darwin(v56);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v20;
  __chkstk_darwin(v19);
  v68 = &v54 - v22;
  v23 = sub_1001BC5A8(&qword_100526730, &unk_100458510);
  v78[3] = v23;
  v78[4] = sub_10000462C(&qword_100526738, &qword_100526730, &unk_100458510);
  v78[0] = a2;
  v24 = sub_1000326D8(v78, v23);
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v54 - v26);
  (*(v28 + 16))(&v54 - v26);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = sub_1000397B4(v75);
  *v29 = *v27;
  v29[1] = 0;

  sub_100022650(v75, AssociatedTypeWitness);
  dispatch thunk of IteratorProtocol.next()();
  v30 = aBlock[0];
  if (aBlock[0])
  {
    v63 = v74;
    v62 = (v3 + 8);
    v61 = (v6 + 8);
    v55 = (v71 + 56);
    v54 = (v9 + 16);
    do
    {
      v37 = v68;
      sub_10002ADF8(v70, v68, type metadata accessor for HostedRoutingSessionSnapshot);
      sub_10002ADF8(v37, v21, type metadata accessor for HostedRoutingSessionSnapshot);
      v38 = (*(v71 + 80) + 24) & ~*(v71 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v30;
      sub_10002AF68(v37, v39 + v38, type metadata accessor for HostedRoutingSessionSnapshot);
      v40 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue;
      v41 = *(v30 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);

      v42 = v41;
      v43 = *sub_100021264();

      if (v42 == v43)
      {
        v31 = *(v30 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient);
        v32 = *(v30 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
        ObjectType = swift_getObjectType();
        v34 = v58;
        sub_10002ADF8(v21, v58, type metadata accessor for HostedRoutingSessionSnapshot);
        (*v55)(v34, 0, 1, v56);
        v35 = v59;
        (*v54)(v59, v30 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v60);
        swift_unknownObjectRetain();
        v36 = v57;
        sub_100265398(v34, v35, v57);
        (*(v32 + 8))(v36, ObjectType, v32);

        swift_unknownObjectRelease();
        sub_1000038A4(v36, &qword_100525F78, &qword_100458A90);
        sub_10002AC54(v21, type metadata accessor for HostedRoutingSessionSnapshot);
      }

      else
      {
        v44 = *(v30 + v40);
        v45 = swift_allocObject();
        *(v45 + 16) = sub_100331258;
        *(v45 + 24) = v39;
        v74[2] = sub_1002253D8;
        v74[3] = v45;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v74[0] = sub_100003D98;
        v74[1] = &unk_1004CE5B8;
        v46 = _Block_copy(aBlock);
        v47 = v44;

        v48 = v21;
        v49 = v64;
        static DispatchQoS.unspecified.getter();
        v72 = &_swiftEmptyArrayStorage;
        sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
        sub_1001BC5A8(&unk_100522280, &unk_10044F590);
        sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
        v50 = v66;
        v51 = v67;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v46);

        (*v62)(v50, v51);
        v52 = v49;
        v21 = v48;
        (*v61)(v52, v65);
        sub_10002AC54(v48, type metadata accessor for HostedRoutingSessionSnapshot);
      }

      sub_100022650(v75, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      v30 = aBlock[0];
    }

    while (aBlock[0]);
  }

  sub_100026A44(v75);
  return sub_100026A44(v78);
}

uint64_t sub_100022320()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022358()
{
  v1 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  v7 = type metadata accessor for HostedRoutingSession(0);
  if (!(*(*(v7 - 1) + 48))(v0 + v3, 1, v7))
  {
    v8 = *(v6 + 1);

    v9 = *(v6 + 2);

    v10 = *(v6 + 3);

    v11 = &v6[v7[7]];
    v12 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
    if (!(*(*(v12 - 1) + 48))(v11, 1, v12))
    {
      v13 = *(v11 + 1);

      v14 = *(v11 + 3);

      v15 = *(v11 + 5);

      sub_1002488FC(*(v11 + 6), *(v11 + 14), v11[60]);
      v16 = *(v11 + 8);

      v17 = v12[9];
      v18 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
      (*(*(v18 - 8) + 8))(&v11[v17], v18);
      v19 = v12[10];
      v20 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
      (*(*(v20 - 8) + 8))(&v11[v19], v20);
      v21 = *&v11[v12[11] + 8];
    }

    v22 = v7[8];
    v23 = type metadata accessor for RoutingControls();
    (*(*(v23 - 8) + 8))(&v6[v22], v23);
    v24 = *&v6[v7[11] + 8];

    v25 = v7[13];
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 8))(&v6[v25], v26);
    v27 = &v6[v7[16]];
    if (*(v27 + 1))
    {

      v28 = *(v27 + 3);

      v29 = *(v27 + 5);

      v30 = *(v27 + 8);

      v31 = *(v27 + 10);
    }
  }

  v32 = *&v6[*(v1 + 20)];

  v33 = *&v6[*(v1 + 24)];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100022650(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000226A0(uint64_t a1)
{
  v108 = a1;
  v2 = type metadata accessor for ExecutionPriority();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = type metadata accessor for Logger();
  v109 = *(v106 - 8);
  v7 = v109[8];
  v8 = __chkstk_darwin(v106);
  v100 = &v85[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v102 = &v85[-v11];
  __chkstk_darwin(v10);
  v105 = &v85[-v12];
  v107 = type metadata accessor for IPCClientMessage();
  v110 = *(v107 - 8);
  v13 = v110[8];
  v14 = __chkstk_darwin(v107);
  v99 = &v85[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v18 = &v85[-v17];
  v19 = __chkstk_darwin(v16);
  v104 = &v85[-v20];
  __chkstk_darwin(v19);
  v22 = &v85[-v21];
  v23 = sub_1001BC5A8(&qword_1005273C0, &unk_100459098);
  v24 = *(v23 - 8);
  v25 = v24[8];
  v26 = __chkstk_darwin(v23);
  v101 = &v85[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = __chkstk_darwin(v26);
  v30 = &v85[-v29];
  if ((*(*v1 + 192))(v28))
  {
    v89 = v6;
    v90 = v3;
    v91 = v2;
    v98 = v1;
    v32 = v110 + 2;
    v31 = v110[2];
    v34 = v107;
    v33 = v108;
    v31(v22, v108, v107);
    sub_10003B370(&qword_1005273C8, &type metadata accessor for IPCClientMessage);
    sub_10003B370(&qword_1005273D0, &type metadata accessor for IPCClientMessage);
    IPCMessage.init(message:)();
    v35 = sub_100038EF0();
    v36 = v109[2];
    v37 = v106;
    v93 = v35;
    v94 = v109 + 2;
    v92 = v36;
    v36(v105);
    v95 = v31;
    v96 = v32;
    v31(v104, v33, v34);
    v38 = v98;
    v39 = v24[2];
    v40 = v101;
    v102 = v30;
    v39(v101, v30, v23);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    v43 = os_log_type_enabled(v41, v42);
    v97 = v24;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v87 = v41;
      v45 = v44;
      v88 = swift_slowAlloc();
      v111[0] = v88;
      *v45 = 136315650;
      v46 = *(*v38 + 320);
      v86 = v42;
      v47 = v46();
      v49 = sub_10002C9C8(v47, v48, v111);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      sub_10003B370(&qword_100527438, &type metadata accessor for IPCClientMessage);
      v50 = v104;
      v51 = v107;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v104 = v110[1];
      (v104)(v50, v51);
      v55 = sub_10002C9C8(v52, v54, v111);

      *(v45 + 14) = v55;
      *(v45 + 22) = 2080;
      v56 = v89;
      IPCMessage.priority.getter();
      sub_10003B370(&unk_100527440, &type metadata accessor for ExecutionPriority);
      v57 = v40;
      v58 = v91;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v90 + 8))(v56, v58);
      v101 = v24[1];
      (v101)(v57, v23);
      v62 = sub_10002C9C8(v59, v61, v111);
      v37 = v106;

      *(v45 + 24) = v62;
      v63 = v87;
      _os_log_impl(&_mh_execute_header, v87, v86, "[%s] sendMessage - message: %s, priority: %s", v45, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v101 = v24[1];
      (v101)(v40, v23);
      v81 = v104;
      v104 = v110[1];
      (v104)(v81, v107);
    }

    v64 = v105;
    v105 = v109[1];
    (v105)(v64, v37);
    sub_10000462C(&unk_1005273D8, &qword_1005273C0, &unk_100459098);
    v82 = v102;
    result = dispatch thunk of XPCSession.send<A>(_:)();
    v83 = *(v38 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_oneWayMessageCount);
    v84 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      __break(1u);
    }

    else
    {
      *(v38 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_oneWayMessageCount) = v84;
      if (*(v38 + OBJC_IVAR____TtCC12mediaremoted21MediaControlIPCServer9XPCClient_connectionState) == 2 && (type metadata accessor for Preferences(), v84 == static Preferences.ipcCheckInInterval.getter()))
      {
        sub_100342DF8();

        return (v101)(v82, v23);
      }

      else
      {
        (v101)(v82, v23);
      }
    }
  }

  else
  {
    v65 = sub_100038EF0();
    v66 = v109;
    v67 = v106;
    (v109[2])(v102, v65, v106);
    v68 = v110;
    v69 = v107;
    (v110[2])(v18, v108, v107);

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v111[0] = v108;
      *v72 = 136315394;
      v73 = (*(*v1 + 320))();
      v75 = sub_10002C9C8(v73, v74, v111);

      *(v72 + 4) = v75;
      *(v72 + 12) = 2080;
      sub_10003B370(&qword_100527438, &type metadata accessor for IPCClientMessage);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      (v68[1])(v18, v69);
      v79 = sub_10002C9C8(v76, v78, v111);

      *(v72 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "[%s] sendMessage - failed to send message: %s, session is gone, this should not be possible", v72, 0x16u);
      swift_arrayDestroy();

      return (v109[1])(v102, v67);
    }

    else
    {

      (v68[1])(v18, v69);
      return (v66[1])(v102, v67);
    }
  }

  return result;
}

uint64_t sub_10002349C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

unint64_t sub_10002351C()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_7;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_10001BF64(v9), (v3 & 1) == 0))
  {

    sub_10001BF10(v9);
LABEL_7:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_8;
  }

  sub_100020E0C(*(v1 + 56) + 32 * v2, &v10);
  sub_10001BF10(v9);

  if (*(&v11 + 1))
  {
    return sub_1000038A4(&v10, &qword_100522890, &qword_100450610);
  }

LABEL_8:
  sub_1000038A4(&v10, &qword_100522890, &qword_100450610);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  result = sub_10002107C();
  v5 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v6 = result;
    if (result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_11:
      if (v6 < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v5 + 8 * i + 32);
        }

        sub_100028D64(v8);
      }
    }
  }

  sub_10031B8F4();
}

id sub_100024358(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 44));
  *(*(a1 + 32) + 40) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 44));
  v2 = *(a1 + 32);

  return [v2 reloadDeviceInfoImmediately];
}

void sub_100024AF4(uint64_t a1)
{
  v2 = nameOfHearingDeviceReachableForAudioHandoff();
  v3 = [*(a1 + 32) targetQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100037FDC;
  v5[3] = &unk_1004B68F0;
  v5[4] = *(a1 + 32);
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, v5);
}

uint64_t sub_100024BB0@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v6 = v5;
  v143 = a3;
  v136 = a2;
  v142 = a1;
  v141 = a5;
  v130 = v6;
  v127[1] = *v6;
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v140 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001BC5A8(&qword_100523B38, &qword_100451A08);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v129 = v127 - v13;
  v14 = sub_1001BC5A8(&qword_100523B30, &qword_100451A00);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v128 = v127 - v16;
  v139 = type metadata accessor for RoutingControls();
  v138 = *(v139 - 8);
  v17 = *(v138 + 64);
  v18 = __chkstk_darwin(v139);
  v137 = v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v144 = v127 - v20;
  v147 = type metadata accessor for HostedRoutingItem(0);
  v131 = *(v147 - 8);
  v21 = *(v131 + 64);
  v22 = __chkstk_darwin(v147);
  v24 = v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v127 - v25;
  v27 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v134 = v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v146 = v127 - v32;
  __chkstk_darwin(v31);
  v34 = v127 - v33;
  if (a4)
  {
    v35 = String._bridgeToObjectiveC()();
  }

  else
  {
    v35 = 0;
  }

  v135 = [objc_opt_self() sharedLocalEndpointForRoutingContextWithUID:v35];

  v36 = objc_opt_self();
  v37 = [v36 server];
  v38 = [v37 nowPlayingServer];

  v39 = [v38 localActivePlayerClient];
  if (v39 && (v40 = [v39 supportedRemoteControlCommands], v39, v40))
  {
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v133 = sub_100020418(v41);
  }

  else
  {
    v133 = 0;
  }

  v42 = [v36 server];
  v43 = [v42 nowPlayingServer];

  v44 = [v43 localOriginClient];
  v45 = [v36 server];
  v46 = [v45 nowPlayingServer];

  v47 = [v46 localActivePlayerClient];
  if (v143)
  {
    v48 = String._bridgeToObjectiveC()();
    v49 = [v44 existingNowPlayingClientForDisplayID:v48];

    v50 = [v49 activePlayerClient];
    v47 = v50;
  }

  v143 = v44;
  v136 = v47;
  sub_100026A90(v44, v47);
  v51 = v135;
  LODWORD(v135) = [v51 canModifyGroupMembership];
  v52 = [v51 outputDevices];
  if (v52)
  {
    v53 = v52;
    sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
    v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v54 = _swiftEmptyArrayStorage;
  }

  v145 = v34;
  v55 = v51;
  v56 = sub_10025B508(v55, v54, v151);
  v132 = v55;
  v57 = [v55 volume];
  v59 = v58;
  v60 = v142[2];
  if (v60)
  {
    v61 = (*(v131 + 80) + 32) & ~*(v131 + 80);
    v62 = v142 + v61;
    v63 = *(v131 + 72);
    v64 = _swiftEmptyArrayStorage;
    v65 = v147;
    do
    {
      sub_10002ADF8(v62, v26, type metadata accessor for HostedRoutingItem);
      if (v26[*(v65 + 36)] == 1)
      {
        sub_10002AF68(v26, v24, type metadata accessor for HostedRoutingItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v149 = v64;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002A42C(0, v64[2] + 1, 1);
          v65 = v147;
          v64 = v149;
        }

        v68 = v64[2];
        v67 = v64[3];
        if (v68 >= v67 >> 1)
        {
          sub_10002A42C(v67 > 1, v68 + 1, 1);
          v65 = v147;
          v64 = v149;
        }

        v64[2] = v68 + 1;
        v57 = sub_10002AF68(v24, v64 + v61 + v68 * v63, type metadata accessor for HostedRoutingItem);
      }

      else
      {
        v57 = sub_10002AC54(v26, type metadata accessor for HostedRoutingItem);
      }

      v62 += v63;
      --v60;
    }

    while (v60);
  }

  else
  {
    v64 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v57);
  v69 = v145;
  v125 = v145;
  v70 = sub_10002A44C(sub_10002AE60, &v124, v64);

  v71 = sub_100037234();
  v72 = *v71;
  v73 = v71[1];
  v74 = v146;
  sub_10001D9AC(v69, v146, &qword_100523640, qword_100451520);
  v75 = v133;

  v76 = v132;

  v142 = v76;
  sub_10025C7D0(v72, v73, v75, v76, v74, v144);
  v77 = v134;
  sub_10001D9AC(v69, v134, &qword_100523640, qword_100451520);
  v78 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v79 = (*(*(v78 - 8) + 48))(v77, 1, v78);
  v147 = v70;
  if (v79 == 1)
  {

    sub_1000038A4(v77, &qword_100523640, qword_100451520);
LABEL_28:
    v83 = *v71;
    v84 = v71[1];
    v134 = v83;
    v133 = v84;
    sub_10001D9AC(v69, v146, &qword_100523640, qword_100451520);

    v85 = [v143 lastPlayingDateSnapshot];
    v86 = v140;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v87 = v142;
    LODWORD(v132) = [v142 supportsVisualProxyGroupPlayer];

    v88 = v138;
    v89 = v137;
    v90 = v144;
    v91 = v139;
    (*(v138 + 16))(v137, v144, v139);
    v92 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
    v93 = static TimeoutError.__derived_enum_equals(_:_:)();
    v94 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
    v95 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
    LOBYTE(v149) = 0;
    sub_10025B560(v134, v133, v147, v146, v86, v135 ^ 1, v92 & 1, v93 & 1, v141, v132, v94 & 1, v95 & 1, v123, v59, 0, v89, v151, 0, 0);

    (*(v88 + 8))(v90, v91);
    return sub_1000038A4(v145, &qword_100523640, qword_100451520);
  }

  v80 = *(v77 + 48);
  v81 = *(v77 + 56);
  v82 = *(v77 + 60);
  sub_100248888(v80, v81, *(v77 + 60));
  sub_10002AC54(v77, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  if (v82)
  {
    sub_1002488FC(v80, v81, v82);

    goto LABEL_28;
  }

  sub_1002488FC(v80, v81, 0);
  v97 = sub_100301054();
  v98 = *v71;
  v99 = v71[1];
  v100 = *(*v97 + 200);

  v101 = v100(v98, v99);

  if (v101 > 1)
  {
    if (v101 == 2 || v101 == 3)
    {

      v69 = v145;
      goto LABEL_28;
    }
  }

  else
  {
    if (!v101)
    {

      v111 = *v71;
      v112 = v71[1];

      v113 = v128;
      RoutingControls.UnfavoriteControl.init(sessionIdentifier:isDisabled:)();
      v114 = type metadata accessor for RoutingControls.UnfavoriteControl();
      (*(*(v114 - 8) + 56))(v113, 0, 1, v114);
      RoutingControls.unfavorite.setter();
      v69 = v145;
      goto LABEL_28;
    }

    if (v101 == 1)
    {

      v102 = *v71;
      v103 = v71[1];

      v104 = v129;
      RoutingControls.FavoriteControl.init(sessionIdentifier:isDisabled:)();
      v105 = type metadata accessor for RoutingControls.FavoriteControl();
      (*(*(v105 - 8) + 56))(v104, 0, 1, v105);
      RoutingControls.favorite.setter();
      v69 = v145;
      goto LABEL_28;
    }
  }

  v106 = *(v101 + 16);
  switch(v106)
  {
    case 0:

      v115 = *v71;
      v116 = v71[1];

      v117 = v128;
      RoutingControls.UnfavoriteControl.init(sessionIdentifier:isDisabled:)();
      v118 = type metadata accessor for RoutingControls.UnfavoriteControl();
      (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
      RoutingControls.unfavorite.setter();
      goto LABEL_43;
    case 1:

      v107 = *v71;
      v108 = v71[1];

      v109 = v129;
      RoutingControls.FavoriteControl.init(sessionIdentifier:isDisabled:)();
      v110 = type metadata accessor for RoutingControls.FavoriteControl();
      (*(*(v110 - 8) + 56))(v109, 0, 1, v110);
      RoutingControls.favorite.setter();
LABEL_43:
      sub_10026A190(v101);
      v69 = v145;
      goto LABEL_28;
    case 2:

      goto LABEL_43;
  }

  v149 = 0;
  v150 = 0xE000000000000000;

  _StringGuts.grow(_:)(76);
  v119._countAndFlagsBits = 91;
  v119._object = 0xE100000000000000;
  String.append(_:)(v119);
  v120._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v120);

  v121._object = 0x8000000100440470;
  v121._countAndFlagsBits = 0xD000000000000047;
  String.append(_:)(v121);
  v148 = v101;
  sub_10026A1B0();
  v122._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v122);

  LODWORD(v126) = 0;
  v125 = 976;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100025AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v110 = a2;
  v5 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v122 = &v103 - v7;
  v121 = type metadata accessor for HostedRoutingSourceSession(0);
  *&v113 = *(v121 - 8);
  v8 = *(v113 + 64);
  v9 = __chkstk_darwin(v121);
  v119 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v123 = &v103 - v12;
  __chkstk_darwin(v11);
  v116 = &v103 - v13;
  v120 = type metadata accessor for RoutingSessionConfiguration.Context();
  v112 = *(v120 - 8);
  v14 = *(v112 + 64);
  v15 = __chkstk_darwin(v120);
  v118 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v111 = &v103 - v17;
  v18 = type metadata accessor for RoutingSessionConfiguration();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v23;
  v109 = v22;
  v24 = *(v23 + 16);
  v114 = a1;
  v24(v21, a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration);
  v117 = v21;
  v25 = sub_10002CC04();

  v26 = sub_10002EAC8(v25);
  v107 = 0;

  v115 = v3;

  v28 = *(v26 + 16);
  if (!v28)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_25:
    v56 = v116;
    v57 = v120;
    v58 = v111;
    v59 = v112;

    v60 = 0;
    v61 = 0;
    goto LABEL_27;
  }

  v29 = 0;
  v30 = (v26 + 40);
  v31 = _swiftEmptyArrayStorage;
  do
  {
    if (v29 >= *(v26 + 16))
    {
      goto LABEL_49;
    }

    v32 = *(v30 - 1);
    v33 = *v30;
    ObjectType = swift_getObjectType();
    v35 = *(v33 + 56);
    swift_unknownObjectRetain();
    v36 = v35(ObjectType, v33);
    result = swift_unknownObjectRelease();
    v37 = *(v36 + 16);
    v38 = v31[2];
    v39 = v38 + v37;
    if (__OFADD__(v38, v37))
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v39 <= v31[3] >> 1)
    {
      if (!*(v36 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v38 <= v39)
      {
        v41 = v38 + v37;
      }

      else
      {
        v41 = v38;
      }

      v31 = sub_100026868(isUniquelyReferenced_nonNull_native, v41, 1, v31, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
      if (!*(v36 + 16))
      {
LABEL_3:

        if (v37)
        {
          goto LABEL_51;
        }

        goto LABEL_4;
      }
    }

    v42 = (v31[3] >> 1) - v31[2];
    result = type metadata accessor for HostedRoutingItem(0);
    v43 = *(result - 8);
    if (v42 < v37)
    {
      goto LABEL_52;
    }

    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v45 = *(v43 + 72);
    swift_arrayInitWithCopy();

    if (v37)
    {
      v46 = v31[2];
      v47 = __OFADD__(v46, v37);
      v48 = v46 + v37;
      if (v47)
      {
        goto LABEL_54;
      }

      v31[2] = v48;
    }

LABEL_4:
    ++v29;
    v30 += 2;
  }

  while (v28 != v29);
  v49 = 0;
  v50 = (v26 + 40);
  while (1)
  {
    if (v49 >= *(v26 + 16))
    {
      goto LABEL_53;
    }

    v52 = *(v50 - 1);
    v51 = *v50;
    v53 = swift_getObjectType();
    v54 = *(v51 + 64);
    swift_unknownObjectRetain();
    v54(v53, v51);
    if (v55)
    {
      break;
    }

    result = swift_unknownObjectRelease();
    ++v49;
    v50 += 2;
    if (v28 == v49)
    {
      goto LABEL_25;
    }
  }

  v60 = (v54)(v53, v51);
  v61 = v62;
  swift_unknownObjectRelease();
  v56 = v116;
  v57 = v120;
  v58 = v111;
  v59 = v112;
LABEL_27:
  RoutingSessionConfiguration.context.getter();
  if ((*(v59 + 88))(v58, v57) == enum case for RoutingSessionConfiguration.Context.app(_:))
  {
    (*(v59 + 96))(v58, v57);
    v63 = *v58;
    v64 = *(v58 + 1);
  }

  else
  {
    (*(v59 + 8))(v58, v57);
    v63 = 0;
    v64 = 0;
  }

  v106 = v60;
  v65 = v115;
  sub_100024BB0(v31, v63, v64, v61, v56);

  v66 = *sub_100028BB8();
  v112 = (*(v66 + 440))();

  v67 = v56;
  v68 = *(**(v65 + 88) + 680);

  v104 = v68(v69);
  v105 = v70;

  v111 = v61;
  sub_1001BC5A8(&qword_100525748, &unk_100457D90);
  v71 = *(v113 + 72);
  v72 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v73 = swift_allocObject();
  v113 = xmmword_10044EC70;
  *(v73 + 16) = xmmword_10044EC70;
  sub_10002ADF8(v67, v73 + v72, type metadata accessor for HostedRoutingSourceSession);
  v124 = v73;
  sub_100030DE8(v112, &qword_100525748, &unk_100457D90, type metadata accessor for HostedRoutingSourceSession, type metadata accessor for HostedRoutingSourceSession);
  v74 = v124;
  v75 = v118;
  RoutingSessionConfiguration.context.getter();
  LOBYTE(v67) = sub_1000307D0();
  (*(v59 + 8))(v75, v120);
  if (v67)
  {

    *&v113 = v74;
  }

  else
  {
    v76 = swift_allocObject();
    *(v76 + 16) = v113;
    *&v113 = v76;
    result = sub_10002ADF8(v116, v76 + v72, type metadata accessor for HostedRoutingSourceSession);
  }

  v77 = v122;
  v120 = v74[2];
  if (v120)
  {
    v78 = 0;
    v118 = v72;
    v79 = v74 + v72;
    v80 = _swiftEmptyArrayStorage;
    v81 = qword_100451520;
    while (1)
    {
      if (v78 >= v74[2])
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v82 = v74;
      v83 = v71;
      v84 = v81;
      v85 = v123;
      sub_10002ADF8(v79, v123, type metadata accessor for HostedRoutingSourceSession);
      v86 = v85 + *(v121 + 28);
      v81 = v84;
      sub_10001D9AC(v86, v77, &qword_100523640, v84);
      v87 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
      if ((*(*(v87 - 8) + 48))(v77, 1, v87) == 1)
      {
        sub_1000038A4(v77, &qword_100523640, v84);
      }

      else
      {
        v88 = v77;
        v89 = sub_1000207E8();
        v90 = v88;
        v81 = v84;
        sub_10002AC54(v90, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
        if (v89)
        {
          sub_10002AF68(v123, v119, type metadata accessor for HostedRoutingSourceSession);
          v91 = swift_isUniquelyReferenced_nonNull_native();
          v124 = v80;
          if ((v91 & 1) == 0)
          {
            sub_10032E068(0, v80[2] + 1, 1);
            v80 = v124;
          }

          v77 = v122;
          v93 = v80[2];
          v92 = v80[3];
          if (v93 >= v92 >> 1)
          {
            sub_10032E068(v92 > 1, v93 + 1, 1);
            v77 = v122;
            v80 = v124;
          }

          v80[2] = v93 + 1;
          result = sub_10002AF68(v119, &v118[v80 + v93 * v83], type metadata accessor for HostedRoutingSourceSession);
          v81 = v84;
          goto LABEL_37;
        }
      }

      result = sub_10002AC54(v123, type metadata accessor for HostedRoutingSourceSession);
      v77 = v122;
LABEL_37:
      ++v78;
      v71 = v83;
      v79 += v83;
      v74 = v82;
      if (v120 == v78)
      {
        goto LABEL_47;
      }
    }
  }

  v80 = _swiftEmptyArrayStorage;
LABEL_47:

  __chkstk_darwin(v94);
  v95 = v117;
  v101 = v80;
  v102 = v117;
  v96 = sub_10002A44C(sub_100031088, (&v103 - 4), v31);

  v97 = *(**(*(v114 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96) + 408);

  v97(v31);

  type metadata accessor for RoutingOptimisticEngine();
  v98 = sub_1000300CC();
  v99 = sub_100030F88();
  v100 = sub_1002E8698(v113, v96, v104, v105, v106, v111, v95, v98, v99);

  sub_10031D868(v100, v96, v114, v110);

  sub_10002AC54(v116, type metadata accessor for HostedRoutingSourceSession);
  return (*(v108 + 8))(v95, v109);
}

size_t sub_10002668C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001BC5A8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_100026868(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001BC5A8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100026A44(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *sub_100028BB8()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    type metadata accessor for HostedRoutingSessionDataSource();
    v2 = v0;
    v3 = sub_1000300CC();
    v4 = sub_100030F88();
    v5 = sub_100301054();
    v6 = sub_100279470();
    swift_unknownObjectRetain();
    v1 = sub_10029A7B4(v3, v4, v5, v2, &off_1004CDFF8, v6);
    v7 = *(v2 + 88);
    *(v2 + 88) = v1;
  }

  return v1;
}

uint64_t sub_100028CEC(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_100015AFC(v3, a2);
}

uint64_t sub_100028D64(uint64_t a1)
{
  v185 = *v1;
  v187 = type metadata accessor for HostedRoutingSession(0);
  v184 = *(v187 - 8);
  v3 = *(v184 + 64);
  v4 = __chkstk_darwin(v187);
  v167 = (&v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v8 = (&v163 - v7);
  __chkstk_darwin(v6);
  v165 = &v163 - v9;
  v171 = sub_1001BC5A8(&qword_100524178, &unk_1004584F0);
  v10 = *(*(v171 - 8) + 64);
  __chkstk_darwin(v171);
  v174 = &v163 - v11;
  v12 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v168 = &v163 - v18;
  v19 = __chkstk_darwin(v17);
  v190 = &v163 - v20;
  __chkstk_darwin(v19);
  v172 = &v163 - v21;
  v178 = type metadata accessor for RoutingSessionConfiguration();
  v177 = *(v178 - 8);
  v22 = *(v177 + 64);
  __chkstk_darwin(v178);
  v176 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1001BC5A8(&qword_100526728, &unk_100458500);
  v24 = *(*(v188 - 8) + 64);
  __chkstk_darwin(v188);
  v26 = &v163 - v25;
  v27 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v166 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v170 = &v163 - v32;
  v33 = __chkstk_darwin(v31);
  v173 = &v163 - v34;
  v35 = __chkstk_darwin(v33);
  v192 = &v163 - v36;
  __chkstk_darwin(v35);
  v195 = &v163 - v37;
  v194 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v191 = *(v194 - 8);
  v38 = v191[8];
  v39 = __chkstk_darwin(v194);
  v186 = &v163 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v163 - v41;
  v43 = type metadata accessor for Logger();
  v44 = *(v43 - 8);
  v45 = v44[8];
  v46 = __chkstk_darwin(v43);
  v175 = &v163 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v164 = &v163 - v49;
  __chkstk_darwin(v48);
  v51 = &v163 - v50;
  v52 = sub_100028D40();
  v53 = v44[2];
  v179 = v52;
  v181 = v44 + 2;
  v180 = v53;
  (v53)(v51);

  v54 = a1;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  v57 = os_log_type_enabled(v55, v56);
  v196 = v42;
  v169 = v16;
  v189 = v44;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v197 = swift_slowAlloc();
    *v58 = 136315394;
    v59 = _typeName(_:qualified:)();
    v163 = v26;
    v60 = v54;
    v62 = sub_10002C9C8(v59, v61, &v197);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    v63 = sub_100036B00();
    v65 = sub_10002C9C8(v63, v64, &v197);

    *(v58 + 14) = v65;
    v54 = v60;
    v26 = v163;
    _os_log_impl(&_mh_execute_header, v55, v56, "[%s] reloadSnapshot - reload for: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    v42 = v196;

    v182 = v189[1];
  }

  else
  {

    v182 = v44[1];
  }

  v182(v51, v43);
  v183 = v43;
  v66 = v54;
  sub_100025AAC(v54, v42);
  v67 = sub_100030790();
  v68 = v191;
  if (v67[2])
  {
    v69 = v66;
    v70 = sub_100031588(v66);
    v71 = v194;
    if (v72)
    {
      sub_10002ADF8(v67[7] + v68[9] * v70, v195, type metadata accessor for HostedRoutingSessionSnapshot);
      v73 = 0;
    }

    else
    {
      v73 = 1;
    }
  }

  else
  {
    v69 = v66;
    v73 = 1;
    v71 = v194;
  }

  v74 = v68[7];
  v75 = v195;
  v74(v195, v73, 1, v71);
  v76 = v42;
  v77 = v192;
  sub_10002ADF8(v76, v192, type metadata accessor for HostedRoutingSessionSnapshot);
  v74(v77, 0, 1, v71);
  v78 = *(v188 + 48);
  sub_10001D9AC(v77, v26, &qword_100523C30, &qword_100451B00);
  sub_10001D9AC(v75, &v26[v78], &qword_100523C30, &qword_100451B00);
  v81 = v68[6];
  v80 = v68 + 6;
  v79 = v81;
  if (v81(v26, 1, v71) == 1)
  {
    sub_1000038A4(v77, &qword_100523C30, &qword_100451B00);
    v82 = v79(&v26[v78], 1, v71);
    v83 = v190;
    if (v82 == 1)
    {
      sub_1000038A4(v26, &qword_100523C30, &qword_100451B00);
      v84 = v196;
LABEL_42:
      sub_1000038A4(v195, &qword_100523C30, &qword_100451B00);
      v148 = v84;
      return sub_10002AC54(v148, type metadata accessor for HostedRoutingSessionSnapshot);
    }
  }

  else
  {
    v85 = v173;
    sub_10001D9AC(v26, v173, &qword_100523C30, &qword_100451B00);
    if (v79(&v26[v78], 1, v71) != 1)
    {
      v188 = v79;
      v102 = &v26[v78];
      v103 = v186;
      sub_10002AF68(v102, v186, type metadata accessor for HostedRoutingSessionSnapshot);
      sub_100004930(&qword_100523CE8, type metadata accessor for HostedRoutingSessionSnapshot);
      v104 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10002AC54(v103, type metadata accessor for HostedRoutingSessionSnapshot);
      sub_1000038A4(v192, &qword_100523C30, &qword_100451B00);
      sub_10002AC54(v85, type metadata accessor for HostedRoutingSessionSnapshot);
      sub_1000038A4(v26, &qword_100523C30, &qword_100451B00);
      v84 = v196;
      v83 = v190;
      if (v104)
      {
        goto LABEL_42;
      }

      goto LABEL_15;
    }

    sub_1000038A4(v192, &qword_100523C30, &qword_100451B00);
    sub_10002AC54(v85, type metadata accessor for HostedRoutingSessionSnapshot);
    v83 = v190;
  }

  v188 = v79;
  sub_1000038A4(v26, &qword_100526728, &unk_100458500);
  v84 = v196;
LABEL_15:
  v86 = v193;
  v87 = *(v193 + 32);
  v88 = v84;
  v89 = v186;
  sub_10002ADF8(v88, v186, type metadata accessor for HostedRoutingSessionSnapshot);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v197 = v87;
  v91 = v69;
  sub_1000393BC(v89, v69, isUniquelyReferenced_nonNull_native);
  v92 = *(v86 + 32);
  *(v86 + 32) = v197;

  v93 = v177;
  v94 = v176;
  v95 = v178;
  (*(v177 + 16))(v176, v69 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v178);
  LOBYTE(v87) = RoutingSessionConfiguration.filterInactiveSessions.getter();
  (*(v93 + 8))(v94, v95);
  v96 = v187;
  v97 = v194;
  if ((v87 & 1) == 0)
  {
    goto LABEL_31;
  }

  v98 = v172;
  sub_10001D9AC(v196, v172, &qword_100523620, &unk_1004511D0);
  v99 = v170;
  sub_10001D9AC(v195, v170, &qword_100523C30, &qword_100451B00);
  v100 = (v188)(v99, 1, v97);
  v191 = v80;
  if (v100 == 1)
  {
    sub_1000038A4(v99, &qword_100523C30, &qword_100451B00);
    v101 = v184;
    (*(v184 + 56))(v83, 1, 1, v96);
  }

  else
  {
    sub_10001D9AC(v99, v83, &qword_100523620, &unk_1004511D0);
    sub_10002AC54(v99, type metadata accessor for HostedRoutingSessionSnapshot);
    v101 = v184;
  }

  v105 = *(v171 + 48);
  v106 = v174;
  sub_10001D9AC(v98, v174, &qword_100523620, &unk_1004511D0);
  v107 = v106;
  sub_10001D9AC(v83, v106 + v105, &qword_100523620, &unk_1004511D0);
  v108 = *(v101 + 48);
  if (v108(v107, 1, v96) == 1)
  {
    sub_1000038A4(v83, &qword_100523620, &unk_1004511D0);
    v109 = v174;
    sub_1000038A4(v98, &qword_100523620, &unk_1004511D0);
    v110 = v108(v109 + v105, 1, v96);
    v97 = v194;
    if (v110 == 1)
    {
      sub_1000038A4(v109, &qword_100523620, &unk_1004511D0);
      goto LABEL_28;
    }

LABEL_26:
    v112 = &qword_100524178;
    v113 = &unk_1004584F0;
    v114 = v109;
LABEL_30:
    sub_1000038A4(v114, v112, v113);
    goto LABEL_31;
  }

  v111 = v168;
  sub_10001D9AC(v107, v168, &qword_100523620, &unk_1004511D0);
  if (v108(v107 + v105, 1, v96) == 1)
  {
    sub_1000038A4(v190, &qword_100523620, &unk_1004511D0);
    v109 = v174;
    sub_1000038A4(v172, &qword_100523620, &unk_1004511D0);
    sub_10002AC54(v111, type metadata accessor for HostedRoutingSession);
    v97 = v194;
    goto LABEL_26;
  }

  v115 = v165;
  sub_10002AF68(v107 + v105, v165, type metadata accessor for HostedRoutingSession);
  sub_100004930(&qword_100523CE0, type metadata accessor for HostedRoutingSession);
  v116 = v107;
  v117 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10002AC54(v115, type metadata accessor for HostedRoutingSession);
  sub_1000038A4(v190, &qword_100523620, &unk_1004511D0);
  sub_1000038A4(v172, &qword_100523620, &unk_1004511D0);
  sub_10002AC54(v111, type metadata accessor for HostedRoutingSession);
  sub_1000038A4(v116, &qword_100523620, &unk_1004511D0);
  v97 = v194;
  if ((v117 & 1) == 0)
  {
LABEL_31:
    v120 = v175;
    v121 = v183;
    v180(v175, v179, v183);

    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      *v124 = 136315394;
      v125 = _typeName(_:qualified:)();
      v126 = v120;
      v128 = sub_10002C9C8(v125, v127, &v197);

      *(v124 + 4) = v128;
      *(v124 + 12) = 2082;
      v129 = sub_100036B00();
      v131 = sub_10002C9C8(v129, v130, &v197);

      *(v124 + 14) = v131;
      _os_log_impl(&_mh_execute_header, v122, v123, "[%s] reloadSnapshot - update snapshot for: %{public}s", v124, 0x16u);
      swift_arrayDestroy();

      v97 = v194;

      v132 = v126;
    }

    else
    {

      v132 = v120;
    }

    v182(v132, v121);
    v133 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context;
    if (*(*(v91 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 16) == 1)
    {
      v134 = *&v196[*(v97 + 20)];
      v135 = *(v134 + 16);
      if (v135)
      {
        v136 = v134 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
        v137 = *(v184 + 72);
        do
        {
          sub_10002ADF8(v136, v8, type metadata accessor for HostedRoutingSession);
          v138 = *(v91 + v133);
          v139 = *v8;
          v140 = v8[1];
          swift_beginAccess();

          sub_100008318(&v198, v139, v140);
          swift_endAccess();

          sub_10002AC54(v8, type metadata accessor for HostedRoutingSession);
          v136 += v137;
          --v135;
        }

        while (v135);
      }

      v141 = v169;
      sub_10001D9AC(v196, v169, &qword_100523620, &unk_1004511D0);
      if ((*(v184 + 48))(v141, 1, v187) == 1)
      {
        sub_1000038A4(v141, &qword_100523620, &unk_1004511D0);
      }

      else
      {
        v142 = v167;
        sub_10002AF68(v141, v167, type metadata accessor for HostedRoutingSession);
        v143 = *(v91 + v133);
        v144 = *v142;
        v145 = v142[1];
        swift_beginAccess();

        sub_100008318(&v198, v144, v145);
        swift_endAccess();

        sub_10002AC54(v142, type metadata accessor for HostedRoutingSession);
      }
    }

    sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
    v146 = swift_allocObject();
    *(v146 + 16) = xmmword_10044EBC0;
    *(v146 + 32) = v91;

    v84 = v196;
    sub_1000219E8(v196, v146);

    v147 = *(**(*(v91 + v133) + 96) + 400);

    v147(v84);

    goto LABEL_42;
  }

LABEL_28:
  v118 = *&v196[*(v97 + 20)];
  v119 = v166;
  sub_10001D9AC(v195, v166, &qword_100523C30, &qword_100451B00);
  if ((v188)(v119, 1, v97) == 1)
  {
    v112 = &qword_100523C30;
    v113 = &qword_100451B00;
    v114 = v119;
    goto LABEL_30;
  }

  v150 = *(v119 + *(v97 + 20));

  sub_10002AC54(v119, type metadata accessor for HostedRoutingSessionSnapshot);
  v151 = sub_1003293A4(v118, v150);

  if ((v151 & 1) == 0)
  {
    goto LABEL_31;
  }

  v152 = v164;
  v153 = v183;
  v180(v164, v179, v183);

  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v197 = swift_slowAlloc();
    *v156 = 136315394;
    v157 = _typeName(_:qualified:)();
    v159 = sub_10002C9C8(v157, v158, &v197);

    *(v156 + 4) = v159;
    *(v156 + 12) = 2082;
    v160 = sub_100036B00();
    v162 = sub_10002C9C8(v160, v161, &v197);

    *(v156 + 14) = v162;
    _os_log_impl(&_mh_execute_header, v154, v155, "[%s] reloadSnapshot - skip update snapshot for: %{public}s because of filter rules", v156, 0x16u);
    swift_arrayDestroy();
  }

  v182(v152, v153);
  sub_1000038A4(v195, &qword_100523C30, &qword_100451B00);
  v148 = v196;
  return sub_10002AC54(v148, type metadata accessor for HostedRoutingSessionSnapshot);
}

uint64_t sub_10002A308(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

size_t sub_10002A42C(size_t a1, int64_t a2, char a3)
{
  result = sub_10002A5F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10002A44C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for HostedRoutingItem(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v22 = &_swiftEmptyArrayStorage;
  sub_10002A42C(0, v11, 0);
  v12 = v22;
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a3 + v19;
  v14 = *(v7 + 72);
  while (1)
  {
    v20(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      sub_10002A42C(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    v12[2] = v16 + 1;
    sub_10002AF68(v10, v12 + v19 + v16 * v14, type metadata accessor for HostedRoutingItem);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

size_t sub_10002A5F4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001BC5A8(&unk_100524EB0, &unk_1004584A0);
  v10 = *(type metadata accessor for HostedRoutingItem(0) - 8);
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
  v15 = *(type metadata accessor for HostedRoutingItem(0) - 8);
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

uint64_t sub_10002A7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  sub_10002ADF8(a1, a3, type metadata accessor for HostedRoutingItem);
  sub_10001D9AC(a2, v9, &qword_100523640, qword_100451520);
  v10 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_1000038A4(v9, &qword_100523640, qword_100451520);
    v11 = 0;
  }

  else
  {
    v11 = sub_1000207E8();
    sub_10002AC54(v9, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  }

  result = type metadata accessor for HostedRoutingItem(0);
  *(a3 + *(result + 40)) = v11 & 1;
  return result;
}

void sub_10002AA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002AA34(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  v3 = v2;
  if (!v2)
  {
    v3 = +[NSDate distantPast];
  }

  v4 = v3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (!v2)
  {
  }
}

uint64_t sub_10002AADC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for RoutingControls();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_10002AC54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002ACC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for RoutingSession.NowPlayingInfo.PlaybackInfo();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for RoutingSession.NowPlayingInfo.TrackInfo();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_10002ADF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002AF68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_10002AFD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_10002B0DC(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_10002AFD0(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_10002AFD0((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x656C676E6973;
  *(v5 + 5) = 0xE600000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10002AFD0(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_10002AFD0((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x69746C756DLL;
    *(v8 + 5) = 0xE500000000000000;
  }

LABEL_12:
  if ((a1 & 4) == 0)
  {
    if ((a1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10002AFD0(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_10002AFD0((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 25458;
  *(v11 + 5) = 0xE200000000000000;
  if ((a1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10002AFD0(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_10002AFD0((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0x74696C7073;
    *(v14 + 5) = 0xE500000000000000;
  }

LABEL_25:
  sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  sub_10002C150();
  v15 = BidirectionalCollection<>.joined(separator:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 93;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  return 91;
}

uint64_t sub_10002BF18(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (a3 >> 8) & 6 | (a3 >> 7) & 1;
  if (v3 > 2)
  {
    if (v3 > 4)
    {
      if (v3 != 5)
      {
        v17 = *(a1 + 16);
        v18 = *(a1 + 24);
        v19 = *(a1 + 32);
        v22 = 0;
        sub_10024896C(v17, v18, v19);
        v20._countAndFlagsBits = 0x747065636E6F632ELL;
        v20._object = 0xEC000000286C6175;
        String.append(_:)(v20);
        sub_1002554F0(v17, v18, v19);
        v21._countAndFlagsBits = 41;
        v21._object = 0xE100000000000000;
        String.append(_:)(v21);
        sub_100248970(v17, v18, v19);
        return v22;
      }

      v5 = 0x6E49746C6975622ELL;
      goto LABEL_14;
    }

    if (v3 != 3)
    {
      v5 = 0x2864657269772ELL;
      goto LABEL_14;
    }

    v4 = 1918985006;
    goto LABEL_8;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      v5 = 0x6F6F7465756C622ELL;
      goto LABEL_14;
    }

    v4 = 1919508782;
LABEL_8:
    v5 = v4 | 0x79616C5000000000;
LABEL_14:
    v22 = v5;
    v14._countAndFlagsBits = sub_10002B39C(a1, a2, a3 & 0xFFFFF97F);
    String.append(_:)(v14);

    goto LABEL_15;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  _StringGuts.grow(_:)(21);

  v22 = 0x6E776F6E6B6E752ELL;
  v11._countAndFlagsBits = sub_10002B39C(v6, v7, v10);
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x203A6F666E6920;
  v12._object = 0xE700000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = v8;
  v13._object = v9;
  String.append(_:)(v13);
LABEL_15:
  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return v22;
}

unint64_t sub_10002C150()
{
  result = qword_100523680;
  if (!qword_100523680)
  {
    sub_1001C2EC8(&qword_1005229B0, &unk_100450110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523680);
  }

  return result;
}

uint64_t sub_10002C570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = swift_getObjectType();
    v11 = (*(a2 + 24))(v10, a2);
    v13 = v12;
    v15 = v14;
    (*(v8 + 16))(v3, a3, v11, v12, v14, ObjectType, v8);
    swift_unknownObjectRelease();

    return sub_10002349C(v11, v13, v15);
  }

  return result;
}

uint64_t sub_10002C684(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingItems;
  swift_beginAccess();
  v11 = *(v2 + v10);

  LOBYTE(a1) = sub_10001ECB8(a1, v11);

  if ((a1 & 1) == 0)
  {
    v13 = sub_100028D40();
    (*(v6 + 16))(v9, v13, v5);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      HIDWORD(v31) = v15;
      v17 = v16;
      v32 = swift_slowAlloc();
      v33 = v32;
      *v17 = 136315650;
      v18 = _typeName(_:qualified:)();
      v20 = sub_10002C9C8(v18, v19, &v33);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_10002C9C8(*(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier), *(v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier + 8), &v33);
      *(v17 + 22) = 2082;
      v21 = *(v2 + v10);
      type metadata accessor for HostedRoutingItem(0);

      v22 = Array.description.getter();
      v24 = v23;

      v25 = sub_10002C9C8(v22, v24, &v33);

      *(v17 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v14, BYTE4(v31), "[%s]<%{public}s> setRoutingItems - value: %{public}s", v17, 0x20u);
      swift_arrayDestroy();
    }

    (*(v6 + 8))(v9, v5);
    v26 = v2 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v27 = *(v26 + 1);
      ObjectType = swift_getObjectType();
      v29 = *(v2 + v10);
      v30 = *(v27 + 8);

      v30(v2, &off_1004C75D0, v29, ObjectType, v27);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10002C9C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002CA94(v11, 0, 0, 1, a1, a2);
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
    sub_100020E0C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100026A44(v11);
  return v7;
}

unint64_t sub_10002CA94(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10002F3E0(a5, a6);
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

uint64_t sub_10002CBA0()
{
  v1 = *(v0 + 24);
  sub_10002CBE8(v1, *(v0 + 32), *(v0 + 40));
  return v1;
}

uint64_t sub_10002CBE8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

Swift::Int sub_10002CC04()
{
  v0 = type metadata accessor for RoutingSessionConfiguration.Context();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  RoutingSessionConfiguration.context.getter();
  if ((*(v1 + 88))(v4, v0) != enum case for RoutingSessionConfiguration.Context.app(_:))
  {
    (*(v1 + 8))(v4, v0);
    goto LABEL_9;
  }

  (*(v1 + 96))(v4, v0);
  v6 = *v4;
  v5 = v4[1];
  v7 = sub_10033D250();
  swift_beginAccess();
  v8 = *v7 == v6 && v7[1] == v5;
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v14 = sub_10033D330();
    swift_beginAccess();
    v15 = *v14 == v6 && v14[1] == v5;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_31;
    }

    v16 = sub_10033D4F0();
    swift_beginAccess();
    v17 = *v16 == v6 && v16[1] == v5;
    if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v18 = sub_10033D4FC(), swift_beginAccess(), *v18 == v6) ? (v19 = v18[1] == v5) : (v19 = 0), v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v20 = sub_10033D508(), swift_beginAccess(), *v20 == v6) && v20[1] == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v21 = sub_10033D514(), swift_beginAccess(), *v21 == v6) && v21[1] == v5))
    {
LABEL_31:

LABEL_32:
      v10 = sub_10026A9C0(&off_1004C5A38);
      sub_10026AC3C(&unk_1004C5A58);
      return v10;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_32;
    }

LABEL_9:
    v11 = RoutingSessionConfiguration.itemTypes.getter();
    v12 = sub_10003634C(v11);

    v10 = sub_1000362A4(v12);

    return v10;
  }

  sub_1001BC5A8(&qword_100523C38, &qword_100451B08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 40) = 0;
  *(inited + 32) = 0;
  *(inited + 48) = 3;
  *(inited + 56) = v6;
  *(inited + 64) = v5;
  *(inited + 72) = 2;
  v10 = sub_10026A9C0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v10;
}

uint64_t sub_10002CF6C(uint64_t a1, void *a2, uint64_t a3)
{
  v123 = type metadata accessor for Date();
  v139 = *(v123 - 8);
  v6 = v139[8];
  __chkstk_darwin(v123);
  v122 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v126 = &v117 - v10;
  v125 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v138 = *(v125 - 8);
  v11 = v138[8];
  __chkstk_darwin(v125);
  v127 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HostedRoutingSession(0);
  v143 = *(v13 - 8);
  v14 = *(v143 + 64);
  v15 = __chkstk_darwin(v13);
  v129 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v120 = &v117 - v18;
  v19 = __chkstk_darwin(v17);
  v119 = &v117 - v20;
  v21 = __chkstk_darwin(v19);
  v121 = &v117 - v22;
  v23 = __chkstk_darwin(v21);
  v131 = &v117 - v24;
  v25 = __chkstk_darwin(v23);
  v128 = &v117 - v26;
  v27 = __chkstk_darwin(v25);
  v130 = &v117 - v28;
  v29 = __chkstk_darwin(v27);
  v134 = &v117 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = (&v117 - v32);
  __chkstk_darwin(v31);
  v35 = &v117 - v34;
  v36 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context;
  v37 = *(a3 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context);
  swift_beginAccess();
  v38 = *(v37 + 88);
  type metadata accessor for Preferences();
  v142 = v38;

  result = static Preferences.sessionRecentActivityInterval.getter();
  v41 = v40;
  v42 = *(a3 + v36);
  v43 = *(v42 + 40);
  v133 = v13;
  if (v43)
  {
    v141 = a2;
    v44 = *(v42 + 48);
    v45 = *(v42 + 56);
    v46 = *(v42 + 64);
    v47 = *(v42 + 72);
    v48 = *(v42 + 80);

    v137 = v44;
    v49 = v44;
    v50 = v45;
    v51 = v45;
    v52 = v46;
    sub_10026D0B8(v49, v51, v46, v47, v48);
    if (static Preferences.hideSourceSessionForTransitionInteractions.getter())
    {
      if (v48 == 5)
      {
        v55 = sub_100037234();
        v56 = v55 + 8;
        v53 = v50;
        v54 = v137;
        v13 = v133;
      }

      else
      {
        v53 = v50;
        v13 = v133;
        if (v48 != 6)
        {
          v135 = 0;
          v140 = 0;
          v54 = v137;
          goto LABEL_11;
        }

        v54 = v137;
        v55 = (v137 + 16);
        v56 = (v137 + 24);
      }

      v135 = *v55;
      v140 = *v56;
    }

    else
    {
      v135 = 0;
      v140 = 0;
      v53 = v50;
      v54 = v137;
      v13 = v133;
    }

LABEL_11:

    result = sub_1002485A4(v54, v53, v52, v47, v48);
    a2 = v141;
    goto LABEL_12;
  }

  v135 = 0;
  v140 = 0;
LABEL_12:
  v57 = 0;
  v58 = *(a1 + 16);
  while (1)
  {
    v59 = v57;
    if (v58 == v57)
    {
      break;
    }

    v60 = (*(v143 + 80) + 32) & ~*(v143 + 80);
    sub_10002ADF8(a1 + v60 + *(v143 + 72) * v57++, v35, type metadata accessor for HostedRoutingSession);
    v61 = v59;
    v62 = v35[*(v13 + 68)];
    result = sub_10002AC54(v35, type metadata accessor for HostedRoutingSession);
    if (v62)
    {
      v132 = v61;
      goto LABEL_18;
    }
  }

  if (v58)
  {
    v132 = v57;
    v60 = (*(v143 + 80) + 32) & ~*(v143 + 80);
LABEL_18:
    v63 = 0;
    v136 = v60;
    v64 = a1 + v60;
    v141 = v142 + 7;
    v124 = (v138 + 6);
    v118 = (v139 + 1);
    v65 = *a2;
    v66 = a2[1];
    v67 = -v41;
    v138 = _swiftEmptyArrayStorage;
    v139 = _swiftEmptyArrayStorage;
    v137 = v64;
    while (1)
    {
      if (v63 == v58)
      {
        __break(1u);
        return result;
      }

      v68 = v58;
      v69 = *(v143 + 72);
      sub_10002ADF8(v64 + v69 * v63, v33, type metadata accessor for HostedRoutingSession);
      v71 = *v33;
      v70 = v33[1];
      if (*v33 != v65 || v70 != v66)
      {
        v73 = *v33;
        v74 = v33[1];
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      v58 = v68;
LABEL_20:
      ++v63;
      result = sub_10002AC54(v33, type metadata accessor for HostedRoutingSession);
      if (v63 == v58)
      {

        v116 = v138;
        goto LABEL_96;
      }
    }

    if (v140 && (v71 == v135 && v140 == v70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      sub_10002ADF8(v33, v134, type metadata accessor for HostedRoutingSession);
      v75 = v139;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_100026868(0, v75[2] + 1, 1, v75, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
      }

      v58 = v68;
      v77 = v75[2];
      v76 = v75[3];
      v78 = v75;
      v79 = v77 + 1;
      if (v77 < v76 >> 1)
      {
        v139 = v78;
        v80 = v78;
        v81 = &v151;
LABEL_76:
        v109 = *(v81 - 32);
LABEL_77:
        v80[2] = v79;
        sub_10002AF68(v109, v80 + v136 + v77 * v69, type metadata accessor for HostedRoutingSession);
        v64 = v137;
        goto LABEL_20;
      }

      v80 = sub_100026868(v76 > 1, v77 + 1, 1, v78, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
      v114 = &v151;
LABEL_89:
      v109 = *(v114 - 32);
      v139 = v80;
      goto LABEL_77;
    }

    if (v142[2] && (v82 = v142, v83 = v142[5], Hasher.init(_seed:)(), String.hash(into:)(), v84 = Hasher._finalize()(), v85 = -1 << *(v82 + 32), v86 = v84 & ~v85, ((*(v141 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) != 0))
    {
      v87 = ~v85;
      while (1)
      {
        v88 = (v142[6] + 16 * v86);
        v89 = *v88 == v71 && v88[1] == v70;
        if (v89 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v86 = (v86 + 1) & v87;
        if (((*(v141 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      sub_10002ADF8(v33, v130, type metadata accessor for HostedRoutingSession);
      v98 = v138;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_100026868(0, v98[2] + 1, 1, v98, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
      }

      v58 = v68;
      v77 = v98[2];
      v99 = v98[3];
      v100 = v98;
      v79 = v77 + 1;
      if (v77 < v99 >> 1)
      {
        v138 = v100;
        v80 = v100;
        v81 = &v149;
        goto LABEL_76;
      }

      v80 = sub_100026868(v99 > 1, v77 + 1, 1, v100, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
      v115 = &v149;
    }

    else
    {
LABEL_44:
      v58 = v68;
      if (v68 == v132 && (sub_100031908() & 1) != 0)
      {
        sub_10002ADF8(v33, v128, type metadata accessor for HostedRoutingSession);
        v90 = v138;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_100026868(0, v90[2] + 1, 1, v90, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
        }

        v77 = v90[2];
        v91 = v90[3];
        v92 = v90;
        v79 = v77 + 1;
        if (v77 < v91 >> 1)
        {
          v138 = v92;
          v80 = v92;
          v81 = &v147;
          goto LABEL_76;
        }

        v80 = sub_100026868(v91 > 1, v77 + 1, 1, v92, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
        v115 = &v147;
      }

      else
      {
        v93 = v133;
        if (*(v33 + *(v133 + 68)) != 1)
        {
          v97 = v126;
          sub_10001D9AC(v33 + *(v133 + 28), v126, &qword_100523640, qword_100451520);
          if ((*v124)(v97, 1, v125) == 1)
          {
            sub_1000038A4(v97, &qword_100523640, qword_100451520);
          }

          else
          {
            sub_10002AF68(v97, v127, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
            if (sub_1000207E8())
            {
              if (*(v33 + *(v93 + 60)) == 1)
              {
                sub_10002ADF8(v33, v121, type metadata accessor for HostedRoutingSession);
                v101 = v138;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v101 = sub_100026868(0, v101[2] + 1, 1, v101, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
                }

                v77 = v101[2];
                v102 = v101[3];
                v138 = v101;
                v79 = v77 + 1;
                if (v77 >= v102 >> 1)
                {
                  v138 = sub_100026868(v102 > 1, v77 + 1, 1, v138, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
                }

                sub_10002AC54(v127, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
                v80 = v138;
                v81 = &v146;
                goto LABEL_76;
              }

              if ((sub_10026049C() & 1) == 0)
              {
                sub_10002ADF8(v33, v119, type metadata accessor for HostedRoutingSession);
                v112 = v138;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v112 = sub_100026868(0, v112[2] + 1, 1, v112, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
                }

                v77 = v112[2];
                v113 = v112[3];
                v138 = v112;
                v79 = v77 + 1;
                if (v77 >= v113 >> 1)
                {
                  v138 = sub_100026868(v113 > 1, v77 + 1, 1, v138, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
                }

                sub_10002AC54(v127, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
                v80 = v138;
                v81 = &v144;
                goto LABEL_76;
              }
            }

            v103 = v122;
            sub_100261430(v122);
            Date.timeIntervalSinceNow.getter();
            v105 = v104;
            (*v118)(v103, v123);
            if (v105 > v67 && (sub_10026049C() & 1) == 0)
            {
              sub_10002ADF8(v33, v120, type metadata accessor for HostedRoutingSession);
              v110 = v138;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v110 = sub_100026868(0, v110[2] + 1, 1, v110, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
              }

              v77 = v110[2];
              v111 = v110[3];
              v138 = v110;
              v79 = v77 + 1;
              if (v77 >= v111 >> 1)
              {
                v138 = sub_100026868(v111 > 1, v77 + 1, 1, v138, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
              }

              sub_10002AC54(v127, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
              v80 = v138;
              v81 = &v145;
              goto LABEL_76;
            }

            sub_10002AC54(v127, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
          }

          sub_10002ADF8(v33, v129, type metadata accessor for HostedRoutingSession);
          v106 = v139;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = sub_100026868(0, v106[2] + 1, 1, v106, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
          }

          v77 = v106[2];
          v107 = v106[3];
          v108 = v106;
          v79 = v77 + 1;
          if (v77 < v107 >> 1)
          {
            v139 = v108;
            v80 = v108;
            v81 = &v148;
            goto LABEL_76;
          }

          v80 = sub_100026868(v107 > 1, v77 + 1, 1, v108, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
          v114 = &v148;
          goto LABEL_89;
        }

        sub_10002ADF8(v33, v131, type metadata accessor for HostedRoutingSession);
        v94 = v138;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_100026868(0, v94[2] + 1, 1, v94, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
        }

        v77 = v94[2];
        v95 = v94[3];
        v96 = v94;
        v79 = v77 + 1;
        if (v77 < v95 >> 1)
        {
          v138 = v96;
          v80 = v96;
          v81 = &v150;
          goto LABEL_76;
        }

        v80 = sub_100026868(v95 > 1, v77 + 1, 1, v96, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession);
        v115 = &v150;
      }
    }

    v109 = *(v115 - 32);
    v138 = v80;
    goto LABEL_77;
  }

  v142 = v140;
  v116 = _swiftEmptyArrayStorage;
LABEL_96:

  return v116;
}

uint64_t sub_10002E020(void *a1, void *a2)
{
  v4 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v67 - v11);
  v13 = sub_1001BC5A8(&qword_1005241A8, &qword_1004550A8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v67 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10002E77C(a1[2], a2[2], type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem, sub_10001E4EC, type metadata accessor for HostedRoutingItem) & 1) == 0 || (sub_10002E77C(a1[3], a2[3], type metadata accessor for HostedRoutingItem, type metadata accessor for HostedRoutingItem, sub_10001E4EC, type metadata accessor for HostedRoutingItem) & 1) == 0)
  {
    goto LABEL_17;
  }

  v68 = v8;
  v17 = type metadata accessor for HostedRoutingSession(0);
  v18 = *(v17 + 28);
  v19 = *(v13 + 48);
  v69 = v17;
  v70 = a1;
  sub_10001D9AC(a1 + v18, v16, &qword_100523640, qword_100451520);
  v20 = a2 + v18;
  v21 = a2;
  sub_10001D9AC(v20, &v16[v19], &qword_100523640, qword_100451520);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v19], 1, v4) == 1)
    {
      sub_1000038A4(v16, &qword_100523640, qword_100451520);
      goto LABEL_14;
    }

LABEL_11:
    v23 = &qword_1005241A8;
    v24 = &qword_1004550A8;
    v25 = v16;
    goto LABEL_12;
  }

  sub_10001D9AC(v16, v12, &qword_100523640, qword_100451520);
  if (v22(&v16[v19], 1, v4) == 1)
  {
    sub_10002181C(v12, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    goto LABEL_11;
  }

  v26 = v68;
  sub_100032E08(&v16[v19], v68, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  v27 = sub_1002695FC(v12, v26);
  sub_10002181C(v26, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  sub_10002181C(v12, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
  sub_1000038A4(v16, &qword_100523640, qword_100451520);
  if ((v27 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v29 = v69;
  v28 = v70;
  v30 = v69[8];
  if ((static RoutingControls.== infix(_:_:)() & 1) == 0 || *(v28 + v29[9]) != *(v21 + v29[9]) || *(v28 + v29[10]) != *(v21 + v29[10]))
  {
    goto LABEL_17;
  }

  v33 = v29[11];
  v34 = (v28 + v33);
  v35 = *(v28 + v33 + 8);
  v36 = (v21 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (!v37 || (*v34 != *v36 || v35 != v37) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v37)
  {
    goto LABEL_17;
  }

  v38 = v29[12];
  v39 = (v28 + v38);
  v40 = *(v28 + v38 + 4);
  v41 = (v21 + v38);
  v31 = *(v21 + v38 + 4);
  if (v40)
  {
    if (!v31)
    {
      return v31 & 1;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      goto LABEL_17;
    }
  }

  v42 = v29[13];
  if ((static Date.== infix(_:_:)() & 1) != 0 && *(v28 + v29[14]) == *(v21 + v29[14]) && *(v28 + v29[15]) == *(v21 + v29[15]))
  {
    v43 = v28 + v29[16];
    v44 = *(v43 + 48);
    v45 = *(v43 + 64);
    v97 = *(v43 + 80);
    v46 = *(v43 + 32);
    v47 = *(v43 + 16);
    v96[3] = *(v43 + 48);
    v96[4] = v45;
    v48 = *(v43 + 16);
    v96[0] = *v43;
    v96[1] = v48;
    v96[2] = v46;
    v49 = v21 + v29[16];
    v50 = *(v49 + 4);
    v51 = *(v49 + 1);
    v98[0] = *v49;
    v98[1] = v51;
    v52 = *(v49 + 2);
    v98[3] = *(v49 + 3);
    v98[4] = v50;
    v98[2] = v52;
    v53 = *(v43 + 64);
    v93 = v44;
    v94 = v53;
    v99 = *(v49 + 10);
    v54 = v96[0];
    v95 = *(v43 + 80);
    v91 = v47;
    v92 = v46;
    if (*(&v96[0] + 1))
    {
      if (*(&v98[0] + 1))
      {
        v71 = v98[0];
        v55 = *(v49 + 4);
        v74 = *(v49 + 3);
        v75 = v55;
        v76 = *(v49 + 10);
        v56 = *(v49 + 2);
        v72 = *(v49 + 1);
        v73 = v56;
        v84 = v76;
        v82 = v74;
        v83 = v55;
        v80 = v72;
        v81 = v56;
        v79 = v98[0];
        v57 = *(v43 + 64);
        v100[3] = *(v43 + 48);
        v100[4] = v57;
        v101 = *(v43 + 80);
        v58 = *(v43 + 32);
        v100[1] = *(v43 + 16);
        v100[2] = v58;
        v100[0] = v96[0];
        v59 = sub_100268D78(v100, &v79);
        sub_10001D9AC(v96, v77, &qword_100523B20, &unk_1004519F0);
        sub_10001D9AC(v98, v77, &qword_100523B20, &unk_1004519F0);
        sub_1000038A4(&v71, &qword_100523B20, &unk_1004519F0);
        v77[0] = v54;
        v77[3] = v93;
        v77[4] = v94;
        v78 = v95;
        v77[2] = v92;
        v77[1] = v91;
        sub_1000038A4(v77, &qword_100523B20, &unk_1004519F0);
        if (v59)
        {
          goto LABEL_42;
        }

        goto LABEL_17;
      }
    }

    else if (!*(&v98[0] + 1))
    {
      v79 = *&v96[0];
      v65 = *(v43 + 64);
      v82 = *(v43 + 48);
      v83 = v65;
      v84 = *(v43 + 80);
      v66 = *(v43 + 32);
      v80 = *(v43 + 16);
      v81 = v66;
      sub_10001D9AC(v96, v100, &qword_100523B20, &unk_1004519F0);
      sub_10001D9AC(v98, v100, &qword_100523B20, &unk_1004519F0);
      sub_1000038A4(&v79, &qword_100523B20, &unk_1004519F0);
LABEL_42:
      LOBYTE(v31) = *(v28 + v29[17]) ^ *(v21 + v29[17]) ^ 1;
      return v31 & 1;
    }

    v79 = v96[0];
    v60 = *(v43 + 64);
    v82 = *(v43 + 48);
    v83 = v60;
    v61 = *(v43 + 80);
    v62 = *(v43 + 32);
    v80 = *(v43 + 16);
    v81 = v62;
    v84 = v61;
    v85 = v98[0];
    v90 = *(v49 + 10);
    v63 = *(v49 + 4);
    v88 = *(v49 + 3);
    v89 = v63;
    v64 = *(v49 + 2);
    v86 = *(v49 + 1);
    v87 = v64;
    sub_10001D9AC(v96, v100, &qword_100523B20, &unk_1004519F0);
    sub_10001D9AC(v98, v100, &qword_100523B20, &unk_1004519F0);
    v23 = &unk_1005241B0;
    v24 = &unk_1004550B0;
    v25 = &v79;
LABEL_12:
    sub_1000038A4(v25, v23, v24);
  }

LABEL_17:
  LOBYTE(v31) = 0;
  return v31 & 1;
}

uint64_t sub_10002E77C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_10003271C(v21, v18, a4);
        sub_10003271C(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_10002181C(v15, a6);
        sub_10002181C(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_10002E91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_100036134(a1, a2, a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002E9D4()
{
  sub_10002F518();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 64))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_10002EA5C()
{
  v1 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingItems;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_10002EAC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  sub_100036284(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = v3 + 56;
  v5 = -1 << *(v3 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v30 = v3 + 64;
  v31 = v1;
  v32 = v3 + 56;
  v33 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v34 = v8;
    v35 = *(v3 + 36);
    v11 = *(v3 + 48) + 24 * v7;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = v2;
    v15 = *(v11 + 16);
    sub_10002CBE8(*v11, v13, *(v11 + 16));
    v16 = *sub_100028BB8();
    v17 = (*(v16 + 888))(v12, v13, v15);
    v36 = v18;

    v19 = v15;
    v2 = v14;
    result = sub_10002349C(v12, v13, v19);
    v21 = v14[2];
    v20 = v14[3];
    if (v21 >= v20 >> 1)
    {
      result = sub_100036284((v20 > 1), v21 + 1, 1);
      v2 = v14;
    }

    v2[2] = v21 + 1;
    v22 = &v2[2 * v21];
    v22[4] = v17;
    v22[5] = v36;
    v3 = v33;
    v9 = 1 << *(v33 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = v32;
    v23 = *(v32 + 8 * v10);
    if ((v23 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v35 != *(v33 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v7 & 0x3F));
    if (v24)
    {
      v9 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v10 << 6;
      v26 = v10 + 1;
      v27 = (v30 + 8 * v10);
      while (v26 < (v9 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_10000A16C(v7, v35, 0);
          v9 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_10000A16C(v7, v35, 0);
    }

LABEL_4:
    v8 = v34 + 1;
    v7 = v9;
    if (v34 + 1 == v31)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_10002ED78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1000360C4();
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v10 = *v8;
      v11 = *(v8 + 16);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void *sub_10002EE5C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001BC5A8(&qword_100526778, &qword_100458558);
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
    sub_1001BC5A8(&qword_100526780, &unk_100458560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10002EF90(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  Hasher.init(_seed:)();
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      Hasher._combine(_:)(0);
      goto LABEL_9;
    }

    v10 = 3;
    goto LABEL_7;
  }

  if (a4)
  {
    v10 = 2;
LABEL_7:
    Hasher._combine(_:)(v10);
    String.hash(into:)();
    goto LABEL_9;
  }

  Hasher._combine(_:)(1uLL);
  Hasher._combine(_:)(a2);
LABEL_9:
  v11 = Hasher._finalize()();
  v12 = v8 + 56;
  v13 = -1 << *(v8 + 32);
  v14 = v11 & ~v13;
  if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_34:
    v28 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;
    sub_10002CBE8(a2, a3, a4);
    sub_1000368B4(a2, a3, a4, v14, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v15 = ~v13;
  v30 = v8;
  v16 = *(v8 + 48);
  v18 = a4 == 3 && (a3 | a2) == 0;
  while (1)
  {
    v19 = (v16 + 24 * v14);
    v20 = *v19;
    v21 = *(v19 + 16);
    if (v21 <= 1)
    {
      break;
    }

    if (v21 == 2)
    {
      if (a4 == 2)
      {
        goto LABEL_27;
      }
    }

    else if (v18)
    {
      goto LABEL_33;
    }

LABEL_17:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  if (!*(v19 + 16))
  {
    if (!a4 && v20 == a2)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  if (a4 != 1)
  {
    goto LABEL_17;
  }

LABEL_27:
  v22 = v20 == a2 && v19[1] == a3;
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_10002349C(a2, a3, v21);
LABEL_33:
  v23 = *(v30 + 48) + 24 * v14;
  v24 = *v23;
  v25 = *(v23 + 8);
  *a1 = *v23;
  *(a1 + 8) = v25;
  v26 = *(v23 + 16);
  *(a1 + 16) = v26;
  sub_10002CBE8(v24, v25, v26);
  return 0;
}

uint64_t sub_10002F200()
{
  v1 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetRoutingContextIdentifier + 8);

  return v1;
}

void *sub_10002F23C(uint64_t a1, uint64_t a2)
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

  sub_1001BC5A8(&unk_100521880, &qword_10044EB90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002F2B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_10002F23C(v5, 0);
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
        v7 = sub_10002F23C(v10, 0);
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

char *sub_10002F3E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002F2B0(a1, a2);
  sub_10002F42C(&off_1004C1AA0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

uint64_t sub_10002F42C(uint64_t result)
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

  result = sub_1001BFDFC(result, v12, 1, v3);
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

uint64_t sub_10002F518()
{
  v1 = *v0;
  v2 = (v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource____lazy_storage___subDataSource);
  v3 = *(v0 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource____lazy_storage___subDataSource);
  if (v3)
  {
    v4 = v2[1];
    v5 = v2[2];
    v6 = v3;
LABEL_11:
    swift_unknownObjectRetain();
    return v6;
  }

  v7 = v0;
  v9 = v0[3];
  v8 = v0[4];
  if (*(v7 + 40) > 1u)
  {
    if (*(v7 + 40) == 2)
    {
      type metadata accessor for RemoteControlGroupSessionItemDataSource();

      v10 = sub_100279470();
      swift_unknownObjectRetain();
      v6 = sub_10028C7D4(v9, v8, 2, v7, &off_1004C7618, v10);
      v11 = sub_100017EF4(&qword_100524C10, type metadata accessor for RemoteControlGroupSessionItemDataSource);
      v12 = &off_1004C7720;
LABEL_10:
      v18 = *v2;
      *v2 = v6;
      v2[1] = v11;
      v2[2] = v12;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    type metadata accessor for AVDiscoveryRoutingItemDataSource();
    v13 = sub_100279470();
    swift_unknownObjectRetain();
    v14 = 0x100000000;
    v15 = v9;
    v16 = v8;
    v17 = 3;
LABEL_9:
    v6 = sub_10027949C(v15, v16, v17, v14, v7, &off_1004C7618, v13);
    v11 = sub_100017EF4(&qword_100524C18, type metadata accessor for AVDiscoveryRoutingItemDataSource);
    v12 = &off_1004C7180;
    goto LABEL_10;
  }

  if (!*(v7 + 40))
  {
    type metadata accessor for AVDiscoveryRoutingItemDataSource();
    v13 = sub_100279470();
    swift_unknownObjectRetain();
    v14 = v9;
    v15 = v9;
    v16 = v8;
    v17 = 0;
    goto LABEL_9;
  }

  _StringGuts.grow(_:)(75);
  v20._countAndFlagsBits = 91;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 15453;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  String.append(_:)(*(v7 + OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_identifier));
  v23._object = 0x800000010043E7D0;
  v23._countAndFlagsBits = 0xD000000000000044;
  String.append(_:)(v23);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10002F818(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted21RoutingItemDataSource_routingItems;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_10002C684(v4);
}

uint64_t sub_10002F87C(int64_t a1)
{
  v2 = v1;
  v104 = type metadata accessor for Date();
  v4 = *(v104 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v104);
  v103 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HostedRoutingItem(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = (&v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (&v102 - v13);
  swift_beginAccess();
  v15 = *(*(v1 + 40) + 16);
  v16 = *(a1 + 16);
  v17 = _swiftEmptyArrayStorage;
  v108 = v2;
  v109 = v12;
  if (v16)
  {
    v105 = v15;
    v107 = v4;
    v111 = v7;
    v112 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v16, 0);
    v17 = v112;
    v18 = *(v8 + 80);
    v110 = a1;
    v19 = a1 + ((v18 + 32) & ~v18);
    v106 = v8;
    v20 = *(v8 + 72);
    v21 = v16;
    do
    {
      sub_100238F04(v19, v14, type metadata accessor for HostedRoutingItem);
      v23 = *v14;
      v22 = v14[1];

      sub_10024889C(v14, type metadata accessor for HostedRoutingItem);
      v112 = v17;
      v25 = v17[2];
      v24 = v17[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000089FC((v24 > 1), v25 + 1, 1);
        v17 = v112;
      }

      v17[2] = v25 + 1;
      v26 = &v17[2 * v25];
      v26[4] = v23;
      v26[5] = v22;
      v19 += v20;
      --v21;
    }

    while (v21);
    v2 = v108;
    v12 = v109;
    a1 = v110;
    v7 = v111;
    v8 = v106;
    v4 = v107;
    v15 = v105;
  }

  v27 = sub_100008280(v17);

  v107 = v27;
  if (v16)
  {
    LODWORD(v106) = v15 == 0;
    v28 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v29 = *(v8 + 72);
    v102 = (v4 + 40);
    v105 = v29;
    do
    {
      sub_100238F04(v28, v12, type metadata accessor for HostedRoutingItem);
      if (*(v12 + v7[17]) == 1)
      {
        sub_10024889C(v12, type metadata accessor for HostedRoutingItem);
      }

      else
      {
        v31 = *v12;
        v30 = v12[1];
        v32 = *(v2 + 40);
        if (*(v32 + 16))
        {
          v33 = *(v2 + 40);

          v34 = sub_10000698C(v31, v30);
          if (v35)
          {
            v36 = v2;
            v37 = *(*(v32 + 56) + 8 * v34);

            if (*(v37 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_current))
            {
              sub_10024889C(v12, type metadata accessor for HostedRoutingItem);
            }

            else
            {
              *(v37 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_current) = 1;
              v70 = v103;
              static Date.now.getter();
              sub_10024889C(v109, type metadata accessor for HostedRoutingItem);
              v71 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
              swift_beginAccess();
              v72 = v70;
              v12 = v109;
              (*v102)(v37 + v71, v72, v104);
              swift_endAccess();
            }

            v2 = v36;
            goto LABEL_10;
          }
        }

        v110 = v16;
        v38 = v12 + v7[16];
        v39 = *v38;
        v40 = *(v38 + 1);
        v41 = *(v12 + v7[11]);
        v42 = v31;
        v43 = v30;
        v44 = v7;
        LODWORD(v111) = *(v12 + v7[9]);
        v45 = *(v38 + 8);
        v46 = type metadata accessor for RoutingClientEventContext.AvailableItem(0);
        v47 = *(v46 + 48);
        v48 = *(v46 + 52);
        v49 = swift_allocObject();
        swift_bridgeObjectRetain_n();
        sub_10001DAE0(v39, v40, v45);
        static Date.now.getter();
        *(v49 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_current) = 1;
        *(v49 + 16) = v42;
        *(v49 + 24) = v43;
        *(v49 + 40) = v39;
        *(v49 + 48) = v40;
        *(v49 + 56) = v45;
        *(v49 + 58) = v41;
        *(v49 + 32) = v106;
        *(v49 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_initiallyPicked) = v111;
        v50 = v108;
        swift_beginAccess();
        v51 = *(v50 + 40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v113 = *(v50 + 40);
        v53 = v113;
        v54 = v50;
        *(v50 + 40) = 0x8000000000000000;
        v111 = v42;
        v56 = sub_10000698C(v42, v43);
        v57 = v53[2];
        v58 = (v55 & 1) == 0;
        v59 = v57 + v58;
        if (__OFADD__(v57, v58))
        {
          goto LABEL_58;
        }

        v60 = v55;
        if (v53[3] >= v59)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10023CB44();
          }
        }

        else
        {
          sub_10023C724(v59, isUniquelyReferenced_nonNull_native);
          v61 = sub_10000698C(v111, v43);
          if ((v60 & 1) != (v62 & 1))
          {
            goto LABEL_62;
          }

          v56 = v61;
        }

        v29 = v105;
        v63 = v113;
        if (v60)
        {
          v64 = v113[7];
          v65 = *(v64 + 8 * v56);
          *(v64 + 8 * v56) = v49;

          v2 = v54;
        }

        else
        {
          v113[(v56 >> 6) + 8] |= 1 << v56;
          v66 = (v63[6] + 16 * v56);
          *v66 = v111;
          v66[1] = v43;
          *(v63[7] + 8 * v56) = v49;
          v67 = v63[2];
          v68 = __OFADD__(v67, 1);
          v69 = v67 + 1;
          if (v68)
          {
            goto LABEL_59;
          }

          v2 = v54;
          v63[2] = v69;
        }

        *(v2 + 40) = v63;
        swift_endAccess();
        v12 = v109;
        sub_10024889C(v109, type metadata accessor for HostedRoutingItem);
        v27 = v107;
        v7 = v44;
        v16 = v110;
      }

LABEL_10:
      v28 += v29;
      --v16;
    }

    while (v16);
  }

  v73 = *(v2 + 40);
  v76 = *(v73 + 64);
  v75 = v73 + 64;
  v74 = v76;
  v77 = 1 << *(*(v2 + 40) + 32);
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  else
  {
    v78 = -1;
  }

  v79 = v78 & v74;
  v80 = (v77 + 63) >> 6;
  v81 = v27 + 56;
  v111 = *(v2 + 40);

  v82 = 0;
  if (v79)
  {
    goto LABEL_40;
  }

LABEL_36:
  while (1)
  {
    v83 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      break;
    }

    if (v83 >= v80)
    {
    }

    v79 = *(v75 + 8 * v83);
    ++v82;
    if (v79)
    {
      while (1)
      {
        v84 = __clz(__rbit64(v79));
        v79 &= v79 - 1;
        v85 = (*(v111 + 48) + ((v83 << 10) | (16 * v84)));
        v87 = *v85;
        v86 = v85[1];
        if (*(v27 + 16))
        {
          v88 = *(v27 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v89 = Hasher._finalize()();
          v90 = -1 << *(v27 + 32);
          v91 = v89 & ~v90;
          if ((*(v81 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91))
          {
            v92 = ~v90;
            while (1)
            {
              v93 = (*(v27 + 48) + 16 * v91);
              v94 = *v93 == v87 && v93[1] == v86;
              if (v94 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v91 = (v91 + 1) & v92;
              if (((*(v81 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
              {
                goto LABEL_52;
              }
            }

            v82 = v83;
            if (!v79)
            {
              goto LABEL_36;
            }

            goto LABEL_40;
          }
        }

        else
        {
        }

LABEL_52:
        v95 = *(v108 + 40);
        if (!*(v95 + 16))
        {
          goto LABEL_60;
        }

        v96 = *(v108 + 40);

        v97 = sub_10000698C(v87, v86);
        v99 = v98;

        if ((v99 & 1) == 0)
        {
          goto LABEL_61;
        }

        v100 = *(*(v95 + 56) + 8 * v97);

        *(v100 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_current) = 0;

        v82 = v83;
        v27 = v107;
        if (!v79)
        {
          goto LABEL_36;
        }

LABEL_40:
        v83 = v82;
      }
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000300CC()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v2 = v0;
    type metadata accessor for RoutingTimeline();
    v1 = sub_10033853C();
    (*(*v1 + 224))(v2, &off_1004CDFE8);
    v3 = *(v2 + 80);
    *(v2 + 80) = v1;
  }

  return v1;
}

uint64_t sub_100030168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v43 = a3;
  v48 = a2;
  v6 = type metadata accessor for RoutingSessionConfiguration.RoutingItemProperties();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  v8 = __chkstk_darwin(v6);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v41 - v10;
  v11 = type metadata accessor for HostedRoutingItem(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for HostedRoutingSourceSession(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002ADF8(a1, a4, type metadata accessor for HostedRoutingItem);
  *(a4 + v11[9]) = 0;
  v21 = a4 + v11[13];
  *v21 = 0;
  v21[4] = 1;
  v49 = _swiftEmptyArrayStorage;
  sub_1000310B4();
  sub_1001BC5A8(&qword_100526760, &unk_100458548);
  sub_10000462C(&qword_100526768, &qword_100526760, &unk_100458548);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v48;
  *(a4 + v11[14]) = v50;
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v22 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v26 = *(v17 + 72);
    v41 = v26;
    v42 = v23;
    v48 = v25;
    while (2)
    {
      result = sub_10002ADF8(v25 + v26 * v24, v20, type metadata accessor for HostedRoutingSourceSession);
      v28 = 0;
      ++v24;
      v29 = *(v20 + 4);
      v30 = *(v29 + 16);
      while (v30 != v28)
      {
        if (v28 >= *(v29 + 16))
        {
          __break(1u);
          return result;
        }

        sub_10002ADF8(v29 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v28, v15, type metadata accessor for HostedRoutingItem);
        if (*v15 == *a4 && v15[1] == a4[1])
        {
          sub_10002AC54(v15, type metadata accessor for HostedRoutingItem);
LABEL_16:
          sub_10002AC54(v20, type metadata accessor for HostedRoutingSourceSession);
          v33 = 1;
          goto LABEL_17;
        }

        ++v28;
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = sub_10002AC54(v15, type metadata accessor for HostedRoutingItem);
        if (v32)
        {
          goto LABEL_16;
        }
      }

      sub_10002AC54(v20, type metadata accessor for HostedRoutingSourceSession);
      v33 = 0;
      v26 = v41;
      v25 = v48;
      if (v24 != v42)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v33 = 0;
  }

LABEL_17:
  *(a4 + v11[10]) = v33;
  v34 = v44;
  RoutingSessionConfiguration.routingItemProperties.getter();
  v35 = v45;
  static RoutingSessionConfiguration.RoutingItemProperties.attributes.getter();
  sub_100004930(&qword_100526770, &type metadata accessor for RoutingSessionConfiguration.RoutingItemProperties);
  v36 = v47;
  v37 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v38 = *(v46 + 8);
  v38(v35, v36);
  result = (v38)(v34, v36);
  if ((v37 & 1) == 0)
  {
    v39 = v11[15];
    sub_1000038A4(a4 + v39, &qword_100523AE8, &unk_100457500);
    v40 = type metadata accessor for RoutingItem.Attributes();
    return (*(*(v40 - 8) + 56))(a4 + v39, 1, 1, v40);
  }

  return result;
}

uint64_t sub_100030670()
{
  v1 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_sessions;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1000306CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void *sub_100030790()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
    *(v0 + 32) = &_swiftEmptyDictionarySingleton;
  }

  return v1;
}

uint64_t sub_1000307D0()
{
  v1 = type metadata accessor for RoutingSessionConfiguration.Context();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for RoutingSessionConfiguration.Context.app(_:))
  {
    (*(v2 + 96))(v5, v1);
    v8 = *v5;
    v7 = v5[1];
    v9 = sub_10033D250();
    swift_beginAccess();
    v10 = *v9 == v8 && v9[1] == v7;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_28;
    }

    v11 = sub_10033D330();
    swift_beginAccess();
    v12 = *v11 == v8 && v11[1] == v7;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_28;
    }

    v13 = sub_10033D4F0();
    swift_beginAccess();
    v14 = *v13 == v8 && v13[1] == v7;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v15 = sub_10033D4FC(), swift_beginAccess(), *v15 == v8) ? (v16 = v15[1] == v7) : (v16 = 0), v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v17 = sub_10033D508(), swift_beginAccess(), *v17 == v8) && v17[1] == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v18 = sub_10033D514(), swift_beginAccess(), *v18 == v8) && v18[1] == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
LABEL_28:
      result = [objc_opt_self() currentSettings];
      if (result)
      {
        v20 = result;

        v21 = [v20 supportSystemEndpoints];

        return v21;
      }

      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

LABEL_47:

    return 0;
  }

  if (v6 == enum case for RoutingSessionConfiguration.Context.deviceTarget(_:) || v6 == enum case for RoutingSessionConfiguration.Context.platterTarget(_:) || v6 == enum case for RoutingSessionConfiguration.Context.deviceSessionTarget(_:))
  {
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    if (v6 == enum case for RoutingSessionConfiguration.Context.nonUI(_:) || v6 == enum case for RoutingSessionConfiguration.Context.ui(_:))
    {
      result = [objc_opt_self() currentSettings];
      if (result)
      {
        v23 = result;
        v24 = [result supportSystemEndpoints];

        return v24;
      }

      goto LABEL_49;
    }

    if (v6 == enum case for RoutingSessionConfiguration.Context.localSessionTarget(_:))
    {
      return 0;
    }

    if (v6 != enum case for RoutingSessionConfiguration.Context.activeSessionTarget(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_47;
    }
  }

  return 1;
}

unint64_t sub_100030BB8(uint64_t a1)
{
  v22 = type metadata accessor for HostedRoutingItem(0);
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v22);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
LABEL_10:
    v19 = sub_10033F154(v7);

    v20 = [objc_opt_self() symbolNameForComposition:v19];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v21;
  }

  if (v6 != 1)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_10023CCB4(0, v6, 0);
    v7 = v23;
    v10 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_10001D948(v10, v5);
      v12 = &v5[*(v22 + 64)];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(v12 + 8);
      sub_10001DAE0(*v12, v14, v15);
      sub_10001DA14(v5);
      v23 = v7;
      v17 = v7[2];
      v16 = v7[3];
      if (v17 >= v16 >> 1)
      {
        sub_10023CCB4((v16 > 1), v17 + 1, 1);
        v7 = v23;
      }

      v7[2] = v17 + 1;
      v18 = &v7[3 * v17];
      v18[4] = v13;
      v18[5] = v14;
      *(v18 + 24) = v15;
      v10 += v11;
      --v6;
    }

    while (v6);
    goto LABEL_10;
  }

  v8 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return sub_10003190C(v8);
}

uint64_t sub_100030DE8(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_100026868(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_100030F44()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100030F88()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = v0;
    type metadata accessor for SessionIdentifierStore();
    v3 = sub_100279470();
    sub_100339D18(v3);
    v1 = v4;
    v5 = *(v0 + 72);
    *(v2 + 72) = v4;
  }

  return v1;
}

uint64_t sub_100031030()
{
  v1 = (v0 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

unint64_t sub_1000310B4()
{
  result = qword_100523C88;
  if (!qword_100523C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C88);
  }

  return result;
}

unint64_t sub_100031110(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = (a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier);
    do
    {
      v7 = (*(*(v2 + 48) + 8 * v4) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier);
      if (*v7 == *v6 && v7[1] == v6[1])
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

size_t sub_1000311D0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001BC5A8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1000313AC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001BC5A8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_100031588(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = *(a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier);
  v5 = *(a1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier + 8);
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100031110(a1, v6);
}

BOOL sub_100031600(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for HostedRoutingItem(0) + 64));
  v2 = v1[8];
  v3 = (v2 >> 8) & 6 | (v2 >> 7) & 1;
  if ((v3 - 1) < 5)
  {
    v4 = v2 >> 11;
    return v4 == 4;
  }

  if (!v3)
  {
    v4 = *(*v1 + 32) >> 11;
    return v4 == 4;
  }

  return 0;
}

uint64_t sub_10003167C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for HostedRoutingItem(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_10002ADF8(a3 + v16 + v17 * v14, v13, type metadata accessor for HostedRoutingItem);
      v18 = a1(v13);
      if (v3)
      {
        sub_10002AC54(v13, type metadata accessor for HostedRoutingItem);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_10002AF68(v13, v25, type metadata accessor for HostedRoutingItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002A42C(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_10002A42C(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v15[2] = v21 + 1;
        result = sub_10002AF68(v25, v15 + v16 + v21 * v17, type metadata accessor for HostedRoutingItem);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_10002AC54(v13, type metadata accessor for HostedRoutingItem);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_15:

    return v15;
  }

  return result;
}

unint64_t sub_10003190C(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for HostedRoutingItem(0) + 64);
  v2 = *v1;
  v3 = *(v1 + 16);
  if (((v3 >> 8) & 6 | (v3 >> 7) & 1) == 6)
  {
    v4 = *(v2 + 32);
    if ((~v4 & 0x6FE) != 0)
    {
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      sub_10024896C(v9, v8, v4);
      sub_10001DAE0(v9, v8, v4);
      v10 = sub_10001D1E4(v9, v8, v4);
      v11 = [objc_opt_self() symbolNameForComposition:v10];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100248970(v9, v8, v4);
      sub_100248970(v9, v8, v4);
    }

    else
    {
      return 0xD00000000000001FLL;
    }
  }

  else
  {
    v6 = sub_10001D1E4(v2, *(v1 + 8), v3);
    v7 = [objc_opt_self() symbolNameForComposition:v6];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v5;
}

uint64_t sub_100031A84()
{
  if (*v0 == 0x4C41434F4CLL && v0[1] == 0xE500000000000000)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100031AC8(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = __chkstk_darwin(AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = __chkstk_darwin(v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v64 = &v49 - v21;
  v22 = type metadata accessor for Optional();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = __chkstk_darwin(v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = __chkstk_darwin(v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  __chkstk_darwin(v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  __chkstk_darwin(v69);
  v38 = &v49 - v37;
  v39 = dispatch thunk of Sequence.underestimatedCount.getter();
  v70 = ContiguousArray.init()();
  v65 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v39);
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = dispatch thunk of Sequence.makeIterator()();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  dispatch thunk of IteratorProtocol.next()();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      ContiguousArray.append(_:)();
      dispatch thunk of IteratorProtocol.next()();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t sub_1000321BC()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    type metadata accessor for RoutingRecommendationDataSource();
    v2 = v0;
    v3 = sub_1000300CC();
    v4 = sub_100279470();
    swift_unknownObjectRetain();
    v1 = sub_1002FC010(v3, v4, v2, &off_1004CDFD8);
    v5 = *(v2 + 96);
    *(v2 + 96) = v1;
  }

  return v1;
}

uint64_t sub_100032268(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for RoutingControls();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000323E0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for HostedRoutingSession(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_1000326B8(0, v11, 0);
  v12 = v22;
  v13 = *(type metadata accessor for HostedRoutingSourceSession(0) - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      sub_1000326B8(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    v12[2] = v16 + 1;
    sub_10002AF68(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for HostedRoutingSession);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000325E0(void *a1)
{
  v2 = a1[4];
  sub_1000326D8(a1, a1[3]);
  v3 = Sequence.contains(where:)();
  v4 = a1[3];
  v5 = a1[4];
  sub_1000326D8(a1, v4);
  v9[16] = v3 & 1;
  v6 = type metadata accessor for HostedRoutingItem(0);
  return sub_100031AC8(sub_100032784, v9, v4, v6, &type metadata for Never, v5, &protocol witness table for Never, v7);
}

size_t sub_1000326B8(size_t a1, int64_t a2, char a3)
{
  result = sub_10023CCD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000326D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10003271C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032784@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for HostedRoutingItem(0);
  if ((*(a1 + *(v6 + 68)) & 1) == 0)
  {
    return sub_10003271C(a1, a2, type metadata accessor for HostedRoutingItem);
  }

  if (!v5)
  {
    sub_10003271C(a1, a2, type metadata accessor for HostedRoutingItem);
    v11 = static LocalizedStrings.RoutingItem.Title.speaker.getter();
    goto LABEL_7;
  }

  v7 = (a1 + *(v6 + 64));
  v8 = v7[8];
  v9 = (v8 >> 8) & 6 | (v8 >> 7) & 1;
  if ((v9 - 1) >= 5)
  {
    if (v9)
    {
      return sub_10003271C(a1, a2, type metadata accessor for HostedRoutingItem);
    }

    v17 = *(*v7 + 32);
    if ((v17 & 0xF800) == 0x2000)
    {
      goto LABEL_5;
    }

    v10 = v17 >> 11;
  }

  else
  {
    v10 = v8 >> 11;
    if (v8 >> 11 == 4)
    {
LABEL_5:
      sub_10003271C(a1, a2, type metadata accessor for HostedRoutingItem);
      v11 = static LocalizedStrings.deviceModelName.getter();
LABEL_7:
      v13 = v11;
      v14 = v12;
      v15 = a2[5];

      a2[4] = v13;
      a2[5] = v14;
      return result;
    }
  }

  if (v10 == 1)
  {
    sub_10003271C(a1, a2, type metadata accessor for HostedRoutingItem);
    v18 = a2[7];

    a2[6] = 0xD000000000000013;
    a2[7] = 0x800000010043DD00;
    return result;
  }

  return sub_10003271C(a1, a2, type metadata accessor for HostedRoutingItem);
}

BOOL sub_1000328F4()
{
  v1 = [v0 deviceUID];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Int sub_10003293C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for HostedRoutingItem(0) - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_10003322C(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_1000330F0(a1, a2);
  *v3 = v7;
  return result;
}

uint64_t sub_100032A00()
{
  v1 = v0;
  v2 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v10 = *(v0 + *(v9 + 24));
  v21 = *(v0 + *(v9 + 20));

  sub_100032CAC(v11, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
  v20 = v21;
  sub_10001D9AC(v0, v8, &qword_100523620, &unk_1004511D0);
  v12 = type metadata accessor for HostedRoutingSession(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v8, 1, v12);
  sub_1000038A4(v8, &qword_100523620, &unk_1004511D0);
  if (v15 == 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_5:
    v21 = v20;
    sub_100032CAC(v16, &qword_100523630, &qword_1004511E0, type metadata accessor for HostedRoutingSession, type metadata accessor for HostedRoutingSession);
    return v21;
  }

  sub_1001BC5A8(&qword_100523630, &qword_1004511E0);
  v17 = *(v13 + 72);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 1) = xmmword_10044EC70;
  sub_10001D9AC(v1, v6, &qword_100523620, &unk_1004511D0);
  result = v14(v6, 1, v12);
  if (result != 1)
  {
    sub_100032E08(v6, v16 + v18, type metadata accessor for HostedRoutingSession);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100032CAC(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_100032F14(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100032E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032E70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

size_t sub_100032F14(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001BC5A8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

Swift::Int sub_1000330F0(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for HostedRoutingItem(0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for HostedRoutingItem(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_10032E1A4(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_100033278(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_100033278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v38 = a4;
  v37 = type metadata accessor for HostedRoutingItem(0);
  v9 = *(*(v37 - 8) + 64);
  v10 = __chkstk_darwin(v37);
  v36 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v28 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *v4;
    v20 = *(v16 + 72);
    v21 = *v4 + v20 * (a3 - 1);
    v34 = -v20;
    v35 = v19;
    v22 = a1 - a3;
    v28 = v20;
    v23 = v19 + v20 * a3;
LABEL_4:
    v32 = v21;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    v24 = v21;
    while (1)
    {
      sub_10002ADF8(v23, v18, type metadata accessor for HostedRoutingItem);
      sub_10002ADF8(v24, v14, type metadata accessor for HostedRoutingItem);
      v25 = v38(v18, v14);
      sub_10002AC54(v14, type metadata accessor for HostedRoutingItem);
      result = sub_10002AC54(v18, type metadata accessor for HostedRoutingItem);
      if (v5)
      {
        break;
      }

      if (v25)
      {
        if (!v35)
        {
          __break(1u);
          return result;
        }

        v26 = v36;
        sub_10002AF68(v23, v36, type metadata accessor for HostedRoutingItem);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10002AF68(v26, v24, type metadata accessor for HostedRoutingItem);
        v24 += v34;
        v23 += v34;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v21 = v32 + v28;
      v22 = v31 - 1;
      v23 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

id sub_1000334F0()
{
  v1 = type metadata accessor for RoutingSessionConfiguration.Context();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for RoutingSessionConfiguration.Context.app(_:))
  {
    (*(v2 + 96))(v5, v1);
    v8 = *v5;
    v7 = v5[1];
    v9 = sub_10033D250();
    swift_beginAccess();
    v10 = *v9 == v8 && v9[1] == v7;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_28;
    }

    v11 = sub_10033D330();
    swift_beginAccess();
    v12 = *v11 == v8 && v11[1] == v7;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_28;
    }

    v13 = sub_10033D4F0();
    swift_beginAccess();
    v14 = *v13 == v8 && v13[1] == v7;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v15 = sub_10033D4FC(), swift_beginAccess(), *v15 == v8) ? (v16 = v15[1] == v7) : (v16 = 0), v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v17 = sub_10033D508(), swift_beginAccess(), *v17 == v8) && v17[1] == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v18 = sub_10033D514(), swift_beginAccess(), *v18 == v8) && v18[1] == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
LABEL_28:
      result = [objc_opt_self() currentSettings];
      if (result)
      {
        v20 = result;

        v21 = [v20 supportSystemEndpoints];

        return v21;
      }

      __break(1u);
LABEL_51:
      __break(1u);
      return result;
    }

LABEL_49:

    return 0;
  }

  if (v6 != enum case for RoutingSessionConfiguration.Context.deviceTarget(_:) && v6 != enum case for RoutingSessionConfiguration.Context.platterTarget(_:))
  {
    if (v6 == enum case for RoutingSessionConfiguration.Context.deviceSessionTarget(_:))
    {
      (*(v2 + 8))(v5, v1);
    }

    else if (v6 != enum case for RoutingSessionConfiguration.Context.nonUI(_:) && v6 != enum case for RoutingSessionConfiguration.Context.ui(_:))
    {
      if (v6 == enum case for RoutingSessionConfiguration.Context.localSessionTarget(_:) || v6 == enum case for RoutingSessionConfiguration.Context.activeSessionTarget(_:))
      {
        return 0;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_49;
    }

    result = [objc_opt_self() currentSettings];
    if (result)
    {
      v23 = result;
      v24 = [result supportSystemEndpoints];

      return v24;
    }

    goto LABEL_51;
  }

  (*(v2 + 8))(v5, v1);
  return 0;
}

void sub_100033DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100033E38(id a1, MRAVDistantEndpoint *a2)
{
  v2 = a2;
  if (([(MRAVDistantEndpoint *)v2 isLocalEndpoint]& 1) != 0)
  {
    v3 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

uint64_t sub_100033EA0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = Notification.name.getter();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    a2(v5, v7);
  }

  return result;
}

uint64_t sub_100033F40(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v47 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v42 - v12;
  v14 = sub_100028D40();
  v48 = v8;
  v16 = *(v8 + 16);
  v15 = v8 + 16;
  v45 = v16;
  v46 = v14;
  (v16)(v13);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  LODWORD(v44) = v18;
  v19 = os_log_type_enabled(v17, v18);
  v42[2] = v6;
  v43 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v42[1] = v15;
    v21 = v20;
    v42[0] = swift_slowAlloc();
    v49 = v42[0];
    *v21 = 136315394;
    v22 = _typeName(_:qualified:)();
    v24 = a2;
    v25 = sub_10002C9C8(v22, v23, &v49);
    v26 = v48;

    *(v21 + 4) = v25;
    a2 = v24;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_10002C9C8(a1, v24, &v49);
    _os_log_impl(&_mh_execute_header, v17, v44, "[%s] updateSessionsIfNeeded - reason: %{public}s", v21, 0x16u);
    swift_arrayDestroy();

    v27 = v26;
  }

  else
  {

    v27 = v48;
  }

  v28 = *(v27 + 8);
  v28(v13, v7);
  v29 = sub_1000343D4();
  v30 = (*(*v3 + 440))();
  v31 = sub_100034B1C(v29, v30);

  if ((v31 & 1) == 0)
  {
    v44 = v28;
    v45(v47, v46, v7);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v34 = 136315394;
      v35 = _typeName(_:qualified:)();
      v37 = a2;
      v38 = sub_10002C9C8(v35, v36, &v49);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v34 + 14) = sub_10002C9C8(v43, v37, &v49);
      _os_log_impl(&_mh_execute_header, v32, v33, "[%s] updateSessionsIfNeeded - updated because: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
    }

    v44(v47, v7);
    v39 = *(*v3 + 448);

    v39(v40);
    sub_1002A8A5C(v29);
  }
}

uint64_t sub_1000343D4()
{
  v1 = sub_1001BC5A8(&qword_100525728, &unk_100457A80);
  v65 = *(v1 - 8);
  v66 = v1;
  v2 = *(v65 + 64);
  __chkstk_darwin(v1);
  v64 = &v61 - v3;
  v4 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v61 - v6;
  v79 = type metadata accessor for HostedRoutingSourceSession(0);
  v8 = *(v79 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v79);
  v63 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = &v61 - v12;
  v81 = v0;
  v13 = sub_100034D68();
  v14 = v13;
  v15 = v13 + 64;
  v16 = 1 << v13[32];
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 8);
  v75 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore;
  v68 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource;
  v19 = (v16 + 63) >> 6;
  v78 = (v8 + 56);
  v62 = v8;
  v76 = (v8 + 48);

  v21 = 0;
  v67 = _swiftEmptyArrayStorage;
  v80 = v7;
  for (i = result; v18; result = sub_1000038A4(v7, &qword_100523B88, &unk_100451A50))
  {
LABEL_11:
    while (1)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v23 | (v21 << 6);
      v25 = (*(v14 + 6) + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(*(v14 + 7) + 8 * v24);
      v29 = *(v28 + 16);
      if (v29 != 3)
      {
        break;
      }

      v43 = *(**(v81 + v75) + 256);
      v44 = v25[1];

      v45 = v43(v27, v26);
      v82 = v27;
      v46 = v45;
      v48 = v47;

      v49 = *(v28 + 80);
      v50 = sub_100298814();

      v51 = v48;
      v7 = v80;
      sub_10025A190(v46, v51, v49, v50, v82, v26, v80);
LABEL_15:
      v52 = v79;
      (*v78)(v7, 0, 1, v79);

      v53 = (*v76)(v7, 1, v52);
      v14 = i;
      if (v53 == 1)
      {
        goto LABEL_6;
      }

      v54 = v61;
      sub_100032E70(v7, v61, type metadata accessor for HostedRoutingSourceSession);
      sub_100032E70(v54, v63, type metadata accessor for HostedRoutingSourceSession);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_1002CABDC(0, v67[2] + 1, 1, v67);
      }

      v56 = v67[2];
      v55 = v67[3];
      if (v56 >= v55 >> 1)
      {
        v67 = sub_1002CABDC(v55 > 1, v56 + 1, 1, v67);
      }

      v57 = v67;
      v67[2] = v56 + 1;
      result = sub_100032E70(v63, v57 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v56, type metadata accessor for HostedRoutingSourceSession);
      if (!v18)
      {
        goto LABEL_7;
      }
    }

    if (v29 == 2)
    {
      v30 = v81;
      v31 = v75;
      v32 = *(v81 + v75);
      v33 = *(*v32 + 256);
      v73 = *v32 + 256;
      v74 = v33;

      v82 = v27;
      v34 = v74(v27, v26);
      v73 = v35;
      v74 = v34;

      v36 = *(**(v30 + v31) + 256);

      v37 = v36(v27, v26);
      v71 = v38;
      v72 = v37;

      v70 = *(v28 + 88);
      v69 = sub_100298814();
      v39 = *(**(v81 + v68) + 200);

      v40 = v39(v74, v73);
      v7 = v80;
      v41 = v40;

      LODWORD(v32) = *(v28 + 97);
      v42 = *(v28 + 98);

      sub_10025B89C(v72, v71, v70, v69, v41, v32, v42, v82, v7, v26);
      goto LABEL_15;
    }

    (*v78)(v7, 1, 1, v79);
LABEL_6:
    ;
  }

LABEL_7:
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      v83 = v67;
      swift_getKeyPath();
      v58 = v64;
      KeyPathComparator.init<A>(_:order:)();
      sub_1001BC5A8(&qword_100525730, &qword_100457AB0);
      sub_10000462C(&qword_100525738, &qword_100525730, &qword_100457AB0);
      sub_10000462C(&qword_100525740, &qword_100525728, &unk_100457A80);
      v59 = v66;
      v60 = Sequence.sorted<A>(using:)();
      (*(v65 + 8))(v58, v59);

      return v60;
    }

    v18 = *&v15[8 * v22];
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100034B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSourceSession(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1002CDCB4(v14, v11, type metadata accessor for HostedRoutingSourceSession);
        sub_1002CDCB4(v15, v8, type metadata accessor for HostedRoutingSourceSession);
        sub_1002CDD70(&qword_100523CB0, type metadata accessor for HostedRoutingSourceSession);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10002187C(v8, type metadata accessor for HostedRoutingSourceSession);
        sub_10002187C(v11, type metadata accessor for HostedRoutingSourceSession);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void *sub_100034D24(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
    *(v1 + v2) = &_swiftEmptyDictionarySingleton;
  }

  return v4;
}

uint64_t sub_100034D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_100034E04(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  *(*(a1 + 32) + 64) = 0;
  *(*(a1 + 32) + 16) = 0;
  objc_sync_exit(v2);

  if ([*(a1 + 40) disarm])
  {
    v3 = +[MRUserSettings currentSettings];
    v4 = [v3 verboseConnectionMonitorLogging];

    if (v4)
    {
      v5 = _MRLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        [*(v6 + 88) timeIntervalSinceNow];
        *buf = 138412546;
        v12 = v6;
        v13 = 2048;
        v14 = -v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ConnectionMonitor] Checked-in connection %@ in %lf seconds", buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015BC74;
    block[3] = &unk_1004B6D08;
    block[4] = v8;
    dispatch_async(v9, block);
  }
}

uint64_t sub_100034F90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100034FA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100034FB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100034FC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100034FD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100034FE0(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_10003500C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003501C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003502C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003503C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003504C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003505C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003506C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003507C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003508C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003509C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000350AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000350BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000350CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000350DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000350EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000350FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003510C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003511C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003512C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003513C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003514C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003515C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003516C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003517C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003518C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003519C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000351AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000351BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000351CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000351DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000351EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000351FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003520C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003521C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003522C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003523C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003524C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003525C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003526C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003527C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003528C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003529C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000352AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100035374(uint64_t a1)
{
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [*(*(a1 + 32) + 32) allValues];
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        if ([v7 type] - 6 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          v8 = objc_alloc_init(NSMutableDictionary);
          v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 type]);
          [v8 setObject:v9 forKeyedSubscript:@"type"];

          v10 = [v7 date];
          [v8 setObject:v10 forKeyedSubscript:@"date"];

          v11 = [v7 outputDeviceUID];

          if (v11)
          {
            v12 = [v7 outputDeviceUID];
            [v8 setObject:v12 forKeyedSubscript:@"uid"];
          }

          v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 event]);
          [v8 setObject:v13 forKeyedSubscript:@"event"];

          v14 = sub_100035750([v7 event]);
          [v8 setObject:v14 forKeyedSubscript:@"eventdescription"];

          v15 = [v7 selectionReason];
          [v8 setObject:v15 forKeyedSubscript:@"selectionreason"];

          v16 = [v7 eventReason];
          [v8 setObject:v16 forKeyedSubscript:@"eventreason"];

          v17 = [v7 date];
          [v17 timeIntervalSinceNow];
          v19 = [NSNumber numberWithDouble:-v18];
          [v8 setObject:v19 forKeyedSubscript:@"timesince"];

          v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 changeType]);
          [v8 setObject:v20 forKeyedSubscript:@"changeType"];

          v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 supportsIdleReset]);
          [v8 setObject:v21 forKeyedSubscript:@"supportsIdleReset"];

          [v7 changeType];
          v22 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
          [v8 setObject:v22 forKeyedSubscript:@"changeTypeDescription"];

          v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 demoteWhenSyncingToCompanion]);
          [v8 setObject:v23 forKeyedSubscript:@"demoteWhenSyncingToCompanion"];

          [v7 type];
          active = MRMediaRemoteActiveEndpointTypeCopyDescription();
          if (active)
          {
            [*(a1 + 40) setObject:v8 forKeyedSubscript:active];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }
}

uint64_t sub_100035750(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return *(&off_1004B6D78 + a1);
  }
}

void sub_100035880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100035898(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 40) mutableCopy];
  if ([v5 count] >= 6)
  {
    [v5 removeObjectsInRange:{0, objc_msgSend(v5, "count") - 5}];
  }

  v2 = [v5 msv_map:&stru_1004B6930];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_100035B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000698C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100219338(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10000698C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100035C9C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_100035C9C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005228C0, &qword_10045B1A0);
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_100035E2C()
{
  sub_10002F518();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 56))(ObjectType, v2);
  swift_unknownObjectRelease();
  v5 = *(*v0 + 224);

  return v5(v4);
}

uint64_t sub_100035EBC()
{
  v1 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingItems;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100035F28()
{
  v1 = v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

char *sub_100035FA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100523C38, &qword_100451B08);
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

unint64_t sub_1000360C4()
{
  result = qword_100523C48;
  if (!qword_100523C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523C48);
  }

  return result;
}

uint64_t sub_100036118(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_100036134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_100036860();
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10002ED78(a1, a2, a3, v8);
}

Swift::Int sub_1000361D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      Hasher._combine(_:)(0);
      return Hasher._finalize()();
    }

    v4 = 3;
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = 2;
LABEL_7:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void *sub_100036284(void *a1, int64_t a2, char a3)
{
  result = sub_10002EE5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000362A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100036860();
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v4 += 24;
      sub_10002CBE8(v6, v5, v7);
      sub_10002EF90(v8, v6, v5, v7);
      sub_10002349C(v8[0], v8[1], v9);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_10003634C(uint64_t a1)
{
  v3 = type metadata accessor for RoutingSessionConfiguration.ItemType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v52 = (v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v57 = v38 - v8;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v38[1] = v1;
  v58 = _swiftEmptyArrayStorage;
  sub_100036798(0, v9, 0);
  v10 = v58;
  v11 = a1 + 56;
  v12 = -1 << *(a1 + 32);
  v13 = _HashTable.startBucket.getter();
  v14 = 0;
  v48 = v4 + 88;
  v49 = v4 + 16;
  v47 = enum case for RoutingSessionConfiguration.ItemType.audioSession(_:);
  v41 = enum case for RoutingSessionConfiguration.ItemType.appSpecific(_:);
  v42 = (v4 + 96);
  v43 = v9;
  v45 = v3;
  v46 = (v4 + 8);
  v39 = enum case for RoutingSessionConfiguration.ItemType.standard(_:);
  v40 = a1 + 64;
  v50 = a1 + 56;
  v51 = a1;
  v44 = v4;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v17 = v13 >> 6;
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_29;
    }

    v56 = v10;
    v18 = *(a1 + 36);
    v53 = v14;
    v54 = v18;
    v19 = *(v4 + 16);
    v20 = v57;
    v19(v57, *(a1 + 48) + *(v4 + 72) * v13, v3);
    v21 = v52;
    v19(v52, v20, v3);
    v22 = (*(v4 + 88))(v21, v3);
    if (v22 == v47)
    {
      (*v42)(v21, v3);
      v55 = 0;
      v23 = 0;
      v24 = *v21;
      v10 = v56;
LABEL_12:
      v11 = v50;
      goto LABEL_15;
    }

    v10 = v56;
    if (v22 == v41)
    {
      (*v42)(v21, v3);
      v25 = v21;
      v24 = *v21;
      v55 = *(v25 + 1);
      v23 = 1;
      goto LABEL_12;
    }

    v11 = v50;
    if (v22 != v39)
    {
      goto LABEL_33;
    }

    v24 = 0;
    v55 = 0;
    v23 = 3;
LABEL_15:
    (*v46)(v57, v3);
    v58 = v10;
    v27 = v10[2];
    v26 = v10[3];
    if (v27 >= v26 >> 1)
    {
      sub_100036798((v26 > 1), v27 + 1, 1);
      v10 = v58;
    }

    v10[2] = v27 + 1;
    v28 = &v10[3 * v27];
    v29 = v55;
    v28[4] = v24;
    v28[5] = v29;
    *(v28 + 48) = v23;
    a1 = v51;
    v15 = 1 << *(v51 + 32);
    if (v13 >= v15)
    {
      goto LABEL_30;
    }

    v30 = *(v11 + 8 * v17);
    if ((v30 & (1 << v13)) == 0)
    {
      goto LABEL_31;
    }

    if (v54 != *(v51 + 36))
    {
      goto LABEL_32;
    }

    v31 = v30 & (-2 << (v13 & 0x3F));
    if (v31)
    {
      v15 = __clz(__rbit64(v31)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v16 = v53;
    }

    else
    {
      v32 = v17 << 6;
      v33 = v17 + 1;
      v34 = (v40 + 8 * v17);
      while (v33 < (v15 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          sub_10000A16C(v13, v54, 0);
          v15 = __clz(__rbit64(v35)) + v32;
          goto LABEL_26;
        }
      }

      sub_10000A16C(v13, v54, 0);
LABEL_26:
      v16 = v53;
    }

    v14 = v16 + 1;
    v13 = v15;
    v4 = v44;
    v3 = v45;
    if (v14 == v43)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

char *sub_100036798(char *a1, int64_t a2, char a3)
{
  result = sub_100035FA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t _s12mediaremoted14HostedItemTypeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      if (!a6)
      {
        return a1 == a4;
      }

      return 0;
    }

    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 0;
  }

  if (a3 != 2)
  {
    return a6 == 3 && !(a5 | a4);
  }

  if (a6 != 2)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100036860()
{
  result = qword_100524168;
  if (!qword_100524168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524168);
  }

  return result;
}

Swift::Int sub_1000368B4(Swift::Int result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_41;
  }

  if (a5)
  {
    sub_100267434(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1002676F4();
      goto LABEL_41;
    }

    sub_10026785C(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  Hasher.init(_seed:)();
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      Hasher._combine(_:)(0);
      goto LABEL_16;
    }

    v15 = 3;
    goto LABEL_14;
  }

  if (a3)
  {
    v15 = 2;
LABEL_14:
    Hasher._combine(_:)(v15);
    String.hash(into:)();
    goto LABEL_16;
  }

  Hasher._combine(_:)(1uLL);
  Hasher._combine(_:)(v10);
LABEL_16:
  result = Hasher._finalize()();
  v16 = v13 + 56;
  v17 = -1 << *(v13 + 32);
  a4 = result & ~v17;
  if (((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_41;
  }

  v18 = ~v17;
  v19 = *(v13 + 48);
  v21 = a3 == 3 && (a2 | v10) == 0;
  while (1)
  {
    v22 = v19 + 24 * a4;
    result = *v22;
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    if (v24 <= 1)
    {
      break;
    }

    if (v24 == 2)
    {
      if (a3 == 2)
      {
        goto LABEL_35;
      }
    }

    else if (v21)
    {
      goto LABEL_40;
    }

LABEL_25:
    a4 = (a4 + 1) & v18;
    if (((*(v16 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (!v24)
  {
    if (!a3 && result == v10)
    {
      goto LABEL_40;
    }

    goto LABEL_25;
  }

  if (a3 != 1)
  {
    goto LABEL_25;
  }

LABEL_35:
  if (result != v10 || v23 != a2)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_40:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_41:
  v26 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v27 = *(v26 + 48) + 24 * a4;
  *v27 = v10;
  *(v27 + 8) = a2;
  *(v27 + 16) = a3;
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v30;
  }

  return result;
}

uint64_t sub_100036B00()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for RoutingSessionConfiguration();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RoutingMode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  v34 = v32;
  v35 = v33;
  v13._countAndFlagsBits = 60;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x746E656469202D20;
  v15._object = 0xEF203A7265696669;
  String.append(_:)(v15);
  String.append(_:)(*(v0 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_identifier));
  v16._countAndFlagsBits = 0x656C646E7562202CLL;
  v16._object = 0xEA0000000000203ALL;
  String.append(_:)(v16);
  v17 = v0[2];
  v18 = v0[3];

  v19._countAndFlagsBits = v17;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x203A65646F6D202CLL;
  v20._object = 0xE800000000000000;
  String.append(_:)(v20);
  v21 = OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_routingMode;
  swift_beginAccess();
  (*(v9 + 16))(v12, v1 + v21, v8);
  sub_100004930(&unk_100524C30, &type metadata accessor for RoutingMode);
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  (*(v9 + 8))(v12, v8);
  v23._countAndFlagsBits = 0x6769666E6F63202CLL;
  v23._object = 0xEA0000000000203ALL;
  String.append(_:)(v23);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v3);
  sub_100004930(&qword_100525F58, &type metadata accessor for RoutingSessionConfiguration);
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  (*(v4 + 8))(v7, v3);
  v25._countAndFlagsBits = 0x7865746E6F63202CLL;
  v25._object = 0xEB00000000203A74;
  String.append(_:)(v25);
  v26 = *(v1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context);

  v28._countAndFlagsBits = sub_100036EFC(v27);
  String.append(_:)(v28);

  v29._countAndFlagsBits = 62;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  return v34;
}

uint64_t sub_100037240()
{
  v1 = v0;
  v2 = [v0 localizedTitle];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      return v4;
    }
  }

  v9 = [v1 collectionInfo];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v9;
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = kMRMediaRemoteNowPlayingCollectionInfoKeyCollectionType;
  v12 = kMRMediaRemoteNowPlayingCollectionInfoKeyCollectionType;
  sub_1001BC5A8(&qword_100523738, &unk_100457AF0);
  sub_100037570();
  AnyHashable.init<A>(_:)();
  if (!*(v11 + 16))
  {
    goto LABEL_23;
  }

  v13 = sub_10001BF64(v26);
  if ((v14 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_100020E0C(*(v11 + 56) + 32 * v13, &v27);
  sub_10001BF10(v26);

  if (!*(&v28 + 1))
  {
LABEL_25:
    sub_100037768(&v27);
    return 0;
  }

  if (swift_dynamicCast())
  {
    result = kMRMediaRemoteNowPlayingCollectionInfoCollectionTypeRadio;
    if (!kMRMediaRemoteNowPlayingCollectionInfoCollectionTypeRadio)
    {
      __break(1u);
      return result;
    }

    v16 = v26[0];
    v15 = v26[1];
    if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v17)
    {

LABEL_17:
      v19 = [v1 collectionInfo];
      if (!v19)
      {
LABEL_24:
        v27 = 0u;
        v28 = 0u;
        goto LABEL_25;
      }

      v20 = v19;
      v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = kMRMediaRemoteNowPlayingCollectionInfoKeyTitle;
      AnyHashable.init<A>(_:)();
      if (*(v21 + 16))
      {
        v23 = sub_10001BF64(v26);
        if (v24)
        {
          sub_100020E0C(*(v21 + 56) + 32 * v23, &v27);
          sub_10001BF10(v26);

          if (*(&v28 + 1))
          {
            if (swift_dynamicCast())
            {
              return v26[0];
            }

            return 0;
          }

          goto LABEL_25;
        }
      }

LABEL_23:

      sub_10001BF10(v26);
      goto LABEL_24;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_17;
    }
  }

  return 0;
}

void *sub_100037528()
{
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers);
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
    *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___internalItemObservers) = &_swiftEmptyDictionarySingleton;
  }

  return v1;
}

unint64_t sub_100037570()
{
  result = qword_100523740;
  if (!qword_100523740)
  {
    sub_1001C2EC8(&qword_100523738, &unk_100457AF0);
    sub_10024C7D8(&qword_100523748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523740);
  }

  return result;
}

uint64_t sub_100037610(SEL *a1, uint64_t a2, uint64_t a3)
{
  v6 = [v3 *a1];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v13 = a2;
  *(&v13 + 1) = a3;
  AnyHashable.init<A>(_:)();
  if (!*(v8 + 16) || (v9 = sub_10001BF64(&v12), (v10 & 1) == 0))
  {

    sub_10001BF10(&v12);
LABEL_10:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_11;
  }

  sub_100020E0C(*(v8 + 56) + 32 * v9, &v13);
  sub_10001BF10(&v12);

  if (!*(&v14 + 1))
  {
LABEL_11:
    sub_100037768(&v13);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100037768(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_100522890, &qword_100450610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000377D0()
{
  v1 = v0;
  v2 = [v0 userInfo];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_10001BF64(v8), (v6 & 1) == 0))
  {

    sub_10001BF10(v8);
LABEL_8:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_9;
  }

  sub_100020E0C(*(v4 + 56) + 32 * v5, &v9);
  sub_10001BF10(v8);

  if (!*(&v10 + 1))
  {
LABEL_9:
    sub_100037768(&v9);
    return [v1 duration];
  }

  result = swift_dynamicCast();
  if (!result)
  {
    return [v1 duration];
  }

  return result;
}

uint64_t sub_100037908()
{
  if (*v0 == 0xD000000000000010 && 0x800000010043D9D0 == v0[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void sub_100037BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100037FDC(uint64_t a1)
{
  v2 = [*(a1 + 32) hearingAidName];
  if (v2 == *(a1 + 40))
  {
  }

  else
  {
    v8 = v2;
    v3 = [v2 isEqual:?];

    if ((v3 & 1) == 0)
    {
      v4 = MRLogCategoryMediaControl();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40);
        *buf = 134218242;
        v10 = v5;
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HearingAidHelper] <%p> setHearingAidName - value: %@", buf, 0x16u);
      }

      [*(a1 + 32) setHearingAidName:*(a1 + 40)];
      v7 = [*(a1 + 32) hearingAidDidChangeHandler];
      v7[2]();
    }
  }
}

MRDMediaUserState *__cdecl sub_1000387C8(id a1, ICMediaUserState *a2)
{
  v2 = a2;
  v3 = [[MRDMediaUserState alloc] initWithUserState:v2];

  return v3;
}

void sub_100038830(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(a1 + 32);
  if (v3 == v2)
  {
  }

  else
  {
    v16 = v3;
    v4 = [v3 isEqual:v2];

    if ((v4 & 1) == 0)
    {
      v5 = _MRLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionEligibilityMonitor] Eligibility status changed: %{public}@", buf, 0xCu);
      }

      if (*(a1 + 48))
      {
        v7 = _MRLogForCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 48);
          *buf = 138543362;
          v18 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionEligibilityMonitor] \tHosting state reason: %{public}@", buf, 0xCu);
        }
      }

      if (*(a1 + 56))
      {
        v9 = _MRLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 56);
          *buf = 138543362;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionEligibilityMonitor] \tJoining state reason: %{public}@", buf, 0xCu);
        }
      }

      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [*(a1 + 32) differenceFrom:*(*(a1 + 40) + 8)];
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[MRDGroupSessionEligibilityMonitor] Eligibility changes: %@", buf, 0xCu);
      }

      v13 = [*(a1 + 32) copy];
      v14 = *(a1 + 40);
      v15 = *(v14 + 8);
      *(v14 + 8) = v13;

      [*(a1 + 40) _onQueue_notifyObservers:*(a1 + 32)];
    }
  }
}

uint64_t sub_100038AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001BC5A8(&qword_100526D60, &qword_1004589D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR____TtC12mediaremoted15RouteNormalizer____lazy_storage___mac;
  swift_beginAccess();
  sub_100038D18(v1 + v10, v9);
  v11 = sub_1001BC5A8(&qword_100526D48, &qword_1004589B8);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000038A4(v9, &qword_100526D60, &qword_1004589D0);
  Regex<A>.init(_:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_10033E928(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_100038D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100526D60, &qword_1004589D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100038E1C(id a1, MRAVOutputDevice *a2)
{
  v2 = [(MRAVOutputDevice *)a2 groupID];
  v3 = v2 != 0;

  return v3;
}

BOOL sub_100038E54(id a1, MRAVOutputDevice *a2)
{
  v2 = [(MRAVOutputDevice *)a2 airPlayGroupID];
  v3 = v2 != 0;

  return v3;
}

uint64_t sub_100038F14()
{
  countAndFlagsBits = v0->_countAndFlagsBits;
  _StringGuts.grow(_:)(30);

  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 40;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  String.append(_:)(v0[3]);
  v4._countAndFlagsBits = 0x646E7562202D2029;
  v4._object = 0xEC000000203A656CLL;
  String.append(_:)(v4);
  v5._countAndFlagsBits = (*(v0->_countAndFlagsBits + 144))();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x203A646970202CLL;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  (*(v0->_countAndFlagsBits + 168))();
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 60;
}

uint64_t sub_1000390B8(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = sub_1001BC5A8(&qword_100524188, &qword_100455098);
  v4 = *(*(v28 - 8) + 64);
  v5 = __chkstk_darwin(v28);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = type metadata accessor for RoutingSession.Properties();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v10 + 16);
  v27 = v2;
  v17(v14, v2, v9);
  v25 = sub_100017F84(&qword_100524190, &type metadata accessor for RoutingSession.Properties);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v18 = v28;
  sub_100017F84(&qword_100524198, &type metadata accessor for RoutingSession.Properties);
  v26 = a2;
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v18 + 48);
  *v8 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v10 + 32))(&v8[v20], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v21 = v26;
    v17(&v8[v20], v26, v9);
    v17(v14, v21, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v22 = v29;
  sub_10003AEF0(v8, v29, &qword_100524188, &qword_100455098);
  v23 = *v22;
  (*(v10 + 32))(v30, &v22[*(v18 + 48)], v9);
  return v23;
}