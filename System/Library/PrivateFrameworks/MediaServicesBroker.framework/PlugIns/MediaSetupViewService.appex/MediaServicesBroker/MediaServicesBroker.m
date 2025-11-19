id sub_1000018B0(void *a1, unsigned __int8 a2, id a3, uint64_t a4, uint64_t a5)
{
  v7 = [a3 serviceName];
  v8 = sub_1000258CC();
  v10 = v9;

  v11 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v12 = [v11 mainBundle];
  v50._countAndFlagsBits = 0xE000000000000000;
  v64._object = 0x8000000100027D70;
  v64._countAndFlagsBits = 0xD000000000000018;
  v69.value._countAndFlagsBits = 0;
  v69.value._object = 0;
  v13.super.isa = v12;
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  sub_10002567C(v64, v69, v13, v74, v50);

  sub_100002370(&qword_10003B2F8, "\n%");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100026BD0;
  *(v14 + 56) = &type metadata for String;
  v51._object = sub_100004010();
  *(v14 + 64) = v51._object;
  v62 = v8;
  *(v14 + 32) = v8;
  *(v14 + 40) = v10;
  sub_1000258DC();

  v15 = [a3 supportedMediaIntents];
  v63 = v11;
  if (v15)
  {
    v16 = v15;
    v17 = sub_1000259CC();

    sub_100003F10(v17);
    v19 = v18;

    if (v19)
    {
      goto LABEL_7;
    }
  }

  v20 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v20 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    v21 = [v11 mainBundle];
    v51._countAndFlagsBits = 0xE000000000000000;
    v65._countAndFlagsBits = 0xD00000000000001ALL;
    v65._object = 0x8000000100027D90;
    v70.value._countAndFlagsBits = 0;
    v70.value._object = 0;
    v22.super.isa = v21;
    v75._countAndFlagsBits = 0;
    v75._object = 0xE000000000000000;
    sub_10002567C(v65, v70, v22, v75, v51);

    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100026BD0;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v51._object;
    *(v23 + 32) = v8;
    *(v23 + 40) = v10;
    sub_1000258DC();
LABEL_7:
  }

  v55 = a2;
  if (a2 == 2)
  {
    v24 = 3;
  }

  else
  {
    v24 = 1;
  }

  *(v5 + OBJC_IVAR____TtC21MediaSetupViewService23AddToHomeViewController_trigger) = v24;
  if (a2 == 2)
  {
    v25 = 31;
  }

  else
  {
    v25 = 41;
  }

  v59 = a1;
  v26 = sub_1000160B8(v59);
  v27 = sub_10002224C(v25);
  v29 = v28;
  v30 = v26;
  v31 = [v63 mainBundle];
  v51._countAndFlagsBits = 0xE000000000000000;
  v66._countAndFlagsBits = v27;
  v66._object = v29;
  v71.value._countAndFlagsBits = 0;
  v71.value._object = 0;
  v32.super.isa = v31;
  v76._countAndFlagsBits = 0;
  v76._object = 0xE000000000000000;
  sub_10002567C(v66, v71, v32, v76, v51);

  v33 = sub_1000235DC(0);

  [v33 addTarget:v30 action:"selectAddToHomes" forControlEvents:64];
  v34 = v30;
  v35 = [v34 buttonTray];
  v57 = v33;
  [v35 addButton:v33];

  v36 = [v63 mainBundle];
  v52._countAndFlagsBits = 0xE000000000000000;
  v67._countAndFlagsBits = 0x574F4E5F544F4ELL;
  v67._object = 0xE700000000000000;
  v72.value._countAndFlagsBits = 0;
  v72.value._object = 0;
  v37.super.isa = v36;
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  sub_10002567C(v67, v72, v37, v77, v52);

  v38 = sub_1000235DC(1);

  [v38 addTarget:v34 action:"requestDismiss" forControlEvents:64];

  v39 = [v34 buttonTray];
  [v39 addButton:v38];

  if (v55 == 2)
  {
  }

  else
  {
    v40 = [v34 buttonTray];

    v41 = [v63 mainBundle];
    v53._countAndFlagsBits = 0xE000000000000000;
    v68._countAndFlagsBits = 0xD00000000000001ELL;
    v68._object = 0x8000000100027DB0;
    v73.value._countAndFlagsBits = 0;
    v73.value._object = 0;
    v42.super.isa = v41;
    v78._countAndFlagsBits = 0;
    v78._object = 0xE000000000000000;
    sub_10002567C(v68, v73, v42, v78, v53);

    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100026BD0;
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = v54;
    *(v43 + 32) = v62;
    *(v43 + 40) = v10;
    sub_1000258DC();

    v44 = sub_1000258BC();

    [v40 setCaptionText:v44];
  }

  v45 = objc_allocWithZone(type metadata accessor for MainContentView());
  swift_bridgeObjectRetain_n();
  v46 = a3;
  v47 = sub_100023CA0(1, a4, a5, v46);
  v48 = [v34 contentView];

  [v48 addSubview:v47];
  sub_10001FD28();

  swift_bridgeObjectRelease_n();
  return v34;
}

uint64_t sub_100001FF8()
{
  v0 = sub_100003E78(&off_100034CD0);
  result = swift_arrayDestroy();
  off_10003B248 = v0;
  return result;
}

id sub_100002048()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddToHomeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of SetupSession.dispatchQueue()
{
  v0 = sub_10002581C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002198();
  (*(v1 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v5 = sub_100025A6C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_100002198()
{
  result = qword_10003B3A0;
  if (!qword_10003B3A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003B3A0);
  }

  return result;
}

double variable initialization expression of SetupSession.hostAuditToken@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double variable initialization expression of SetupSession.stepContext@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t variable initialization expression of SetupSession.stateStack()
{
  sub_100002370(&qword_10003B290, &unk_100026BE0);
  result = swift_allocObject();
  *(result + 16) = _swiftEmptyArrayStorage;
  return result;
}

id variable initialization expression of SetupSession.setupAnalyticEvent()
{
  v0 = objc_allocWithZone(MSSetupCompleteEvent);

  return [v0 init];
}

id variable initialization expression of SetupSession.defaults()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_1000258BC();
  v2 = [v0 initWithSuiteName:v1];

  return v2;
}

uint64_t sub_100002370(uint64_t *a1, uint64_t *a2)
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

__n128 sub_1000023F4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002400(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002420(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_100002460(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

BOOL sub_1000024F0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100002520@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000254C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_100002638@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002668@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100003FD8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100002710(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MSTestUIFlags(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000027BC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100002E58(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_1000028E8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v63 = a2 + 7;

  v15 = 0;
  v61 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    sub_100025D2C();

    sub_1000258FC();
    v24 = sub_100025D4C();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_100025CAC() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v28 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v57 = &v55;
    __chkstk_darwin(v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = v5[2];
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_10000342C(v60, v56, v58, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = v5[5];
            sub_100025D2C();

            sub_1000258FC();
            v43 = sub_100025D4C();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (v5[6] + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_100025CAC() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v49 = (v5[6] + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v62;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v51 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v62;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v63, v51);
  v53 = v55;
  v54 = sub_1000031F4(v52, v56, v5, v2, v64);

  if (!v53)
  {

    v59 = v65;
    v5 = v54;
LABEL_52:
    sub_100004064();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100002E58(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_100025D2C();
  sub_1000258FC();
  v7 = sub_100025D4C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_100025CAC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100003650();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1000039E4(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_100002F94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002370(&qword_10003B308, &qword_100026E20);
  result = sub_100025B7C();
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
      sub_100025D2C();
      sub_1000258FC();
      result = sub_100025D4C();
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

unint64_t *sub_1000031F4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_10000342C(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_100025D2C();

        sub_1000258FC();
        v20 = sub_100025D4C();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_100025CAC() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_10000342C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100002370(&qword_10003B308, &qword_100026E20);
  result = sub_100025B8C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    sub_100025D2C();

    sub_1000258FC();
    result = sub_100025D4C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_100003650()
{
  v1 = v0;
  sub_100002370(&qword_10003B308, &qword_100026E20);
  v2 = *v0;
  v3 = sub_100025B6C();
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

uint64_t sub_1000037AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002370(&qword_10003B308, &qword_100026E20);
  result = sub_100025B7C();
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
      sub_100025D2C();

      sub_1000258FC();
      result = sub_100025D4C();
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

unint64_t sub_1000039E4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_100025B2C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_100025D2C();

        sub_1000258FC();
        v15 = sub_100025D4C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100003BA8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100025D2C();
  sub_1000258FC();
  v9 = sub_100025D4C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_100025CAC() & 1) != 0)
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

    sub_100003CF8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_100003CF8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100002F94(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100003650();
      goto LABEL_16;
    }

    sub_1000037AC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_100025D2C();
  sub_1000258FC();
  result = sub_100025D4C();
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

      result = sub_100025CAC();
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
  result = sub_100025CBC();
  __break(1u);
  return result;
}

uint64_t sub_100003E78(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000259DC();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100003BA8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100003F10(void *a1)
{
  if (qword_10003B240 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = off_10003B248;
  if (*(off_10003B248 + 2) <= a1[2] >> 3)
  {
    v7 = a1;

    sub_1000027BC(v1);
    v3 = v7;
  }

  else
  {
    v2 = a1;

    v3 = sub_1000028E8(v1, v2);
  }

  v4 = sub_10002338C(v3);
  if (v4 == 7)
  {
    return 0;
  }

  else
  {
    return sub_10001FFB8(v4);
  }
}

uint64_t sub_100003FD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_100004010()
{
  result = qword_10003B300;
  if (!qword_10003B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B300);
  }

  return result;
}

uint64_t sub_100004074(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homesToSetup;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t SetupSession.homesToSetup.getter()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homesToSetup;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_100004124(unsigned __int8 a1)
{
  v3 = v1;
  v4 = sub_1000257BC();
  v5 = sub_1000259EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = SetupState.description.getter(a1);
    v9 = sub_10001EB4C(v7, v8, v22);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v11 = SetupState.description.getter(v3[v10]);
    v13 = sub_10001EB4C(v11, v12, v22);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "State change: %s -> %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *&v3[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stateStack];
  v15 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v16 = v3[v15];
  swift_beginAccess();
  v17 = *(v14 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1000138F8(0, *(v17 + 2) + 1, 1, v17);
    *(v14 + 16) = v17;
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1000138F8((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  v17[v20 + 32] = v16;
  *(v14 + 16) = v17;
  swift_endAccess();
}

uint64_t SetupSession.state.getter()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1000043A8()
{
  v1 = (v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v2 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
  v26 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v27 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
  v28 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
  v29 = v3;
  if (*(&v3 + 1))
  {
    v4 = v1[1];
    v21 = *v1;
    v22 = v4;
    v23 = v1[2];
    v24 = *(v1 + 6);
    v25 = *(&v3 + 1);
    v20[0] = v21;
    v20[1] = v4;
    v5 = v1[3];
    v20[2] = v23;
    v20[3] = v5;
    sub_10000EB94(&v26, v19, &qword_10003B7C0, &qword_100026FF8);
    sub_10000E7DC(v20, v19);
    v6 = sub_1000257BC();
    v7 = sub_1000259EC();
    sub_10000EBFC(&v26, &qword_10003B7C0, &qword_100026FF8);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136380675;
      v19[0] = v26;
      v19[1] = v27;
      v19[2] = v28;
      v19[3] = v29;
      sub_10000E7DC(v19, v17);
      v10 = sub_10002181C();
      v12 = v11;
      sub_10000EBFC(&v26, &qword_10003B7C0, &qword_100026FF8);
      v13 = sub_10001EB4C(v10, v12, &v18);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "StepContext: %{private}s", v8, 0xCu);
      sub_10000E734(v9);

      sub_10000EBFC(&v26, &qword_10003B7C0, &qword_100026FF8);
    }

    else
    {

      sub_10000EBFC(&v26, &qword_10003B7C0, &qword_100026FF8);
    }
  }

  else
  {
    oslog = sub_1000257BC();
    v14 = sub_1000259EC();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "StepContext = nil", v15, 2u);
    }
  }
}

id sub_100004668()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___configuration;
  v2 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___configuration);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___configuration);
LABEL_5:
    v7 = v2;
    return v3;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    [result setQueue:*(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_dispatchQueue)];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100004708()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___mediaService;
  v2 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___mediaService);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100004778(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10000EE44(v4);
  }

  sub_10000EE54(v2);
  return v3;
}

id sub_100004778(uint64_t a1)
{
  v2 = sub_10002577C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID + 8))
  {
    v15 = sub_1000257BC();
    v16 = sub_100025A0C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "### No host bundle ID?";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);
    }

LABEL_10:

    return 0;
  }

  v8 = *(a1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
  if (!v8)
  {
    v15 = sub_1000257BC();
    v16 = sub_100025A0C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "### No setup context?";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v9 = v5;
  v10 = *(a1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID);
  v11 = v8;

  v12 = [v11 serviceID];
  if (!v12)
  {

    v19 = sub_1000257BC();
    v20 = sub_100025A0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "### No serviceID?", v21, 2u);
    }

    return 0;
  }

  v13 = v12;
  sub_10002574C();

  objc_allocWithZone(MediaService);
  v14 = v11;
  v22 = sub_100019C00(v14);

  v23 = v22;
  isa = sub_10002573C().super.isa;
  [v23 setServiceID:isa];

  v25 = v23;
  if (*(a1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configPublicKey + 8))
  {
    v26 = *(a1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configPublicKey);
    v27 = *(a1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configPublicKey + 8);

    v28 = sub_1000258BC();

    [v25 setConfigPublicKey:v28];

    (*(v3 + 8))(v7, v9);
    return v25;
  }

  else
  {
    (*(v3 + 8))(v7, v9);

    return v23;
  }
}

id SetupSession.targetHome.getter()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager;
  v2 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager);
  if (!v2)
  {
    goto LABEL_7;
  }

  result = [v2 currentHome];
  if (result)
  {
    return result;
  }

  v4 = *(v0 + v1);
  if (v4)
  {
    v5 = [v4 homes];
    sub_10000E970(0, &qword_10003B388, HMHome_ptr);
    v6 = sub_10002597C();

    if (v6 >> 62)
    {
      goto LABEL_5;
    }
  }

  else
  {
LABEL_7:
    v6 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_5:
      result = sub_100025C3C();
      if (!result)
      {
LABEL_6:

        return 0;
      }

      goto LABEL_9;
    }
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_6;
  }

LABEL_9:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = sub_100025BBC();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  return v8;
}

uint64_t sub_100004D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002577C();
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  if (*(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags))
  {
    if (qword_10003B278 != -1)
    {
      swift_once();
    }

    v11 = sub_10000EE0C(v3, qword_10003CE38);
    v12 = *(v20 + 16);

    return v12(a1, v11, v3);
  }

  else
  {
    v14 = SetupSession.targetHome.getter();
    if (v14)
    {
      v15 = v14;
      v16 = [v14 currentUser];

      v17 = [v16 uniqueIdentifier];
      sub_10002574C();

      v18 = *(v20 + 32);
      v18(v10, v6, v3);
      (*(v20 + 56))(v10, 0, 1, v3);
      return (v18)(a1, v10, v3);
    }

    else
    {
      (*(v20 + 56))(v10, 1, 1, v3);
      sub_10002576C();
      result = (*(v20 + 48))(v10, 1, v3);
      if (result != 1)
      {
        return sub_10000EBFC(v10, &qword_10003B4F0, &qword_100027000);
      }
    }
  }

  return result;
}

void sub_100004FE0()
{
  v1 = v0;
  v2 = sub_1000257BC();
  v3 = sub_1000259EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136380675;
    v6 = *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount];
    sub_100002370(&unk_10003B570, qword_100027048);
    v7 = sub_1000258EC();
    v9 = sub_10001EB4C(v7, v8, &v15);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activating with context %{private}s", v4, 0xCu);
    sub_10000E734(v5);
  }

  if (!*&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount])
  {
    v10 = sub_1000257BC();
    v11 = sub_100025A0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "### Activating without context?", v12, 2u);
    }

    v13 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v14 = v1[v13];
    v1[v13] = 3;
    sub_100004124(v14);
  }

  sub_1000051E4();
}

void sub_1000051E4()
{
  v1 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  switch(*(v0 + v1))
  {
    case 2:
      v2 = sub_1000257BC();
      v3 = sub_100025A0C();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "Invalid state", v4, 2u);
      }

      return;
    case 3:
      if (sub_100005FE4(3))
      {
        v10 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
        v26 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
        v27 = v10;
        v11 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
        v28 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
        v29 = v11;
        v12 = *(&v11 + 1);
        if (*(&v11 + 1))
        {
          v13 = v26;
          v14 = v27;
          v15 = v28;
          v16 = v29;
        }

        else
        {
          v13 = xmmword_100026E90;
          v14 = 0uLL;
          v12 = _swiftEmptyArrayStorage;
          v16 = 5;
          v15 = 0uLL;
        }

        v24[0] = v13;
        v24[1] = v14;
        v24[2] = v15;
        LOBYTE(v25) = v16;
        *(&v25 + 1) = v12;
        v30 = v13;
        v31 = v14;
        v32 = v15;
        v33 = v25;
        sub_10000EB94(&v26, v23, &qword_10003B7C0, &qword_100026FF8);
        sub_10000E7DC(v24, v23);
        sub_100007AC4(4, &v30);
        sub_10000E838(v24);
        sub_10000E838(v24);
      }

      return;
    case 4:
      sub_1000088EC();
      return;
    case 5:
    case 9:
    case 0xC:
    case 0xE:
    case 0x11:
    case 0x13:
    case 0x16:
    case 0x18:
    case 0x1B:
      return;
    case 6:
      sub_1000094DC();
      return;
    case 7:
      sub_1000096DC();
      return;
    case 8:
      if (sub_100005FE4(8))
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        sub_100007AC4(9, &v30);
        v5 = *(v0 + v1);
        *(v0 + v1) = 9;
        goto LABEL_38;
      }

      return;
    case 0xA:
      sub_100009A0C();
      return;
    case 0xB:
      if (sub_100005FE4(11))
      {
        v8 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
        v30 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
        v31 = v8;
        v9 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
        v32 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
        v33 = v9;
        sub_10000EB94(&v30, &v26, &qword_10003B7C0, &qword_100026FF8);
        sub_100007AC4(5, &v30);
        sub_10000EBFC(&v30, &qword_10003B7C0, &qword_100026FF8);
        *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist + 2) = 1;
        v5 = *(v0 + v1);
        v6 = 12;
        break;
      }

      return;
    case 0xD:
      sub_100009F8C();
      return;
    case 0xF:
      sub_10000A06C();
      return;
    case 0x10:
      if (*(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeTopology) == 1)
      {
        v7 = 23;
      }

      else
      {
        v7 = 20;
      }

      *(v0 + v1) = v7;
      v5 = 16;
      goto LABEL_38;
    case 0x12:
      sub_10000AE50();
      return;
    case 0x14:
      if ((sub_100005FE4(20) & 1) == 0)
      {
        return;
      }

      v17 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
      v30 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
      v31 = v17;
      v18 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
      v32 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
      v33 = v18;
      sub_10000EB94(&v30, &v26, &qword_10003B7C0, &qword_100026FF8);
      v19 = 6;
      goto LABEL_36;
    case 0x15:
      if ((sub_100005FE4(21) & 1) == 0)
      {
        return;
      }

      v20 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
      v30 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
      v31 = v20;
      v21 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
      v32 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
      v33 = v21;
      sub_10000EB94(&v30, &v26, &qword_10003B7C0, &qword_100026FF8);
      v19 = 7;
LABEL_36:
      sub_100007AC4(v19, &v30);
      sub_10000EBFC(&v30, &qword_10003B7C0, &qword_100026FF8);
      v5 = *(v0 + v1);
      v6 = 22;
      break;
    case 0x17:
      if ((sub_100005FE4(23) & 1) == 0)
      {
        return;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      sub_100007AC4(14, &v30);
      v5 = *(v0 + v1);
      v6 = 24;
      break;
    case 0x19:
      sub_100005FE4(25);
      return;
    case 0x1A:
      if ((sub_100005FE4(26) & 1) == 0)
      {
        return;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      sub_100007AC4(10, &v30);
      v5 = *(v0 + v1);
      v6 = 27;
      break;
    case 0x1C:
      if (sub_100005FE4(28))
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        sub_100007AC4(3, &v30);
      }

      return;
    case 0x1D:
      if ((sub_100005FE4(29) & 1) == 0)
      {
        return;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      sub_100007AC4(11, &v30);
      v5 = *(v0 + v1);
      v6 = 28;
      break;
    default:
      sub_10000BC70(*(v0 + v1) & 1);
      return;
  }

  *(v0 + v1) = v6;
LABEL_38:
  v22 = sub_100004124(v5);
  sub_1000051E4(v22);
}

void sub_1000056D4(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a2;
  v68 = *(a2 + 16);
  v69 = *(a2 + 8);
  v66 = *(a2 + 32);
  v67 = *(a2 + 24);
  v65 = *(a2 + 40);
  v7 = *(a2 + 56);
  sub_10000EB94(a2, &v75, &qword_10003B7C0, &qword_100026FF8);
  v8 = sub_1000257BC();
  v9 = sub_1000259EC();
  sub_10000EBFC(a2, &qword_10003B7C0, &qword_100026FF8);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v10 = 136315395;
    v64 = v6;
    if (a1 > 3u)
    {
      v17 = 0x80000001000280B0;
      v18 = 0xD000000000000012;
      if (a1 == 6)
      {
        v18 = 0xD000000000000013;
      }

      else
      {
        v17 = 0x8000000100028090;
      }

      v19 = 0xEF676E6973557065;
      v20 = 0x654B7463656C6573;
      if (a1 != 4)
      {
        v20 = 0x654C7463656C6573;
        v19 = 0xEF65726F4D6E7261;
      }

      if (a1 <= 5u)
      {
        v15 = v20;
      }

      else
      {
        v15 = v18;
      }

      if (a1 <= 5u)
      {
        v16 = v19;
      }

      else
      {
        v16 = v17;
      }
    }

    else
    {
      v11 = 0xEE0065756E69746ELL;
      v12 = 0x6F437463656C6573;
      if (a1 != 2)
      {
        v12 = 0xD000000000000014;
        v11 = 0x80000001000280D0;
      }

      v13 = 0x8000000100028110;
      v14 = 0xD000000000000011;
      if (a1)
      {
        v14 = 0xD000000000000010;
        v13 = 0x80000001000280F0;
      }

      if (a1 <= 1u)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      if (a1 <= 1u)
      {
        v16 = v13;
      }

      else
      {
        v16 = v11;
      }
    }

    v21 = sub_10001EB4C(v15, v16, v70);

    *(v10 + 4) = v21;
    *(v10 + 12) = 2081;
    v22 = *(a2 + 16);
    v75 = *a2;
    v76 = v22;
    v23 = *(a2 + 48);
    v77 = *(a2 + 32);
    v78 = v23;
    sub_10000EB94(a2, &v71, &qword_10003B7C0, &qword_100026FF8);
    sub_100002370(&qword_10003B7C0, &qword_100026FF8);
    v24 = sub_1000258EC();
    v26 = sub_10001EB4C(v24, v25, v70);

    *(v10 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v8, v9, "User event: %s, context: %{private}s", v10, 0x16u);
    swift_arrayDestroy();

    v6 = v64;
    if (*(a2 + 56))
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (*(a2 + 56))
    {
LABEL_27:
      v27 = (v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
      v28 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
      v75 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
      v76 = v28;
      v29 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
      v77 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
      v78 = v29;
      v30 = *(a2 + 16);
      *v27 = *a2;
      v27[1] = v30;
      v31 = *(a2 + 48);
      v27[2] = *(a2 + 32);
      v27[3] = v31;
      sub_10000EB94(a2, &v71, &qword_10003B7C0, &qword_100026FF8);
      sub_10000EB94(a2, &v71, &qword_10003B7C0, &qword_100026FF8);
      sub_10000E780(v6, v69, v68, v67);

      sub_10000EBFC(&v75, &qword_10003B7C0, &qword_100026FF8);
      sub_1000043A8();
      sub_10000EBFC(a2, &qword_10003B7C0, &qword_100026FF8);
      sub_10000EBFC(a2, &qword_10003B7C0, &qword_100026FF8);
    }
  }

  LODWORD(v32) = a1;
  if (a1 > 3u)
  {
LABEL_40:
    if (v32 > 5)
    {
      if (v32 == 6)
      {
        if ((sub_100005FE4(12) & 1) == 0)
        {
          return;
        }

        v39 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
        swift_beginAccess();
        v62 = *(v3 + v39);
        v40 = 13;
      }

      else
      {
        if ((sub_100005FE4(17) & 1) == 0)
        {
          return;
        }

        v39 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
        swift_beginAccess();
        v62 = *(v3 + v39);
        v40 = 16;
      }
    }

    else if (v32 == 4)
    {
      if ((sub_100005FE4(12) & 1) == 0)
      {
        return;
      }

      v39 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v62 = *(v3 + v39);
      v40 = 15;
    }

    else
    {
LABEL_63:
      if ((sub_100005FE4(9) & 1) == 0)
      {
        return;
      }

      v39 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v62 = *(v3 + v39);
      v40 = 7;
    }
  }

  else
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        if ((sub_100005FE4(22) & 1) == 0)
        {
          return;
        }

        v39 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
        swift_beginAccess();
        v62 = *(v3 + v39);
        v40 = 21;
        goto LABEL_76;
      }

      if ((sub_100006238(&off_100034F50) & 1) == 0)
      {
        return;
      }

      v39 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    }

    else
    {
      if (!a1)
      {
        if ((sub_100005FE4(3) & 1) == 0)
        {
          return;
        }

        v33 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stateStack);
        v34 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_recoverableStates);

        swift_beginAccess();
        while (1)
        {
          v35 = *(v33 + 16);
          if (!*(v35 + 2))
          {
            break;
          }

          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v33 + 16) = v35;
          if (isUniquelyReferenced_nonNull_native)
          {
            v32 = *(v35 + 2);
            if (!v32)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v35 = sub_10000DFD4(v35);
            v32 = *(v35 + 2);
            if (!v32)
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          v37 = v32 - 1;
          v38 = v35[v37 + 32];
          *(v35 + 2) = v37;
          *(v33 + 16) = v35;
          swift_endAccess();
          if (sub_100006A7C(v38, v34))
          {

            v51 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 16);
            v71 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext);
            v72 = v51;
            v52 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 48);
            v54 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext);
            v53 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 16);
            v73 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 32);
            v55 = (v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
            v56 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
            v57 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
            v74 = v52;
            v75 = v56;
            v58 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
            v59 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
            v76 = v57;
            v77 = v58;
            v78 = v59;
            v60 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 48);
            v55[2] = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 32);
            v55[3] = v60;
            *v55 = v54;
            v55[1] = v53;
            sub_10000EB94(&v71, v70, &qword_10003B7C0, &qword_100026FF8);
            sub_10000EB94(&v71, v70, &qword_10003B7C0, &qword_100026FF8);
            sub_10000EBFC(&v75, &qword_10003B7C0, &qword_100026FF8);
            sub_1000043A8();
            sub_10000EBFC(&v71, &qword_10003B7C0, &qword_100026FF8);
            v61 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
            swift_beginAccess();
            v62 = *(v3 + v61);
            *(v3 + v61) = v38;
            goto LABEL_77;
          }
        }

        v39 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
        swift_beginAccess();
        v62 = *(v3 + v39);
        v40 = 29;
        goto LABEL_76;
      }

      if ((sub_100006238(&off_100034F28) & 1) == 0)
      {
        return;
      }

      v41 = (v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
      v42 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
      v75 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
      v76 = v42;
      v43 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
      v77 = *(v3 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
      v78 = v43;
      v44 = *(&v43 + 1);
      if (*(&v43 + 1))
      {
        v45 = v41[1];
        v71 = *v41;
        v72 = v45;
        v73 = v41[2];
        *&v74 = *(v41 + 6);
        *(&v74 + 1) = *(&v43 + 1);
        sub_10000EB94(&v75, v70, &qword_10003B7C0, &qword_100026FF8);

        sub_10000EBFC(&v71, &qword_10003B7C0, &qword_100026FF8);
        if (v44 >> 62)
        {
          goto LABEL_72;
        }

        v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v46)
        {
          while (1)
          {
            v47 = 0;
            while ((v44 & 0xC000000000000001) != 0)
            {
              v49 = sub_100025BBC();
              v50 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

LABEL_58:
              *(v49 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_userRequestsSetup) = 1;

              ++v47;
              if (v50 == v46)
              {
                goto LABEL_73;
              }
            }

            if (v47 < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

            __break(1u);
LABEL_72:
            v46 = sub_100025C3C();
            if (!v46)
            {
              goto LABEL_73;
            }
          }

          v48 = *(v44 + 8 * v47 + 32);

          v50 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            goto LABEL_62;
          }

          goto LABEL_58;
        }

LABEL_73:
      }

      else
      {
        v63 = v41[1];
        v71 = *v41;
        v72 = v63;
        v73 = v41[2];
        v74 = *(v41 + 6);
        sub_10000EB94(&v75, v70, &qword_10003B7C0, &qword_100026FF8);
        sub_10000EBFC(&v71, &qword_10003B7C0, &qword_100026FF8);
      }

      v39 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    }

    swift_beginAccess();
    v62 = *(v3 + v39);
    v40 = 18;
  }

LABEL_76:
  *(v3 + v39) = v40;
LABEL_77:
  sub_100004124(v62);
  sub_1000051E4();
}

uint64_t sub_100005FE4(int a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v5 = _s21MediaSetupViewService0B5StateO2eeoiySbAC_ACtFZ_0(a1, v1[v4]);
  if (v5)
  {
    v6 = sub_1000257BC();
    v7 = sub_1000259EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      v10 = SetupState.description.getter(a1);
      v12 = sub_10001EB4C(v10, v11, &v23);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s (valid)", v8, 0xCu);
      sub_10000E734(v9);

LABEL_6:
    }
  }

  else
  {
    v13 = v1;
    v6 = sub_1000257BC();
    v14 = sub_100025A1C();

    if (os_log_type_enabled(v6, v14))
    {
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v15 = 136315394;
      v16 = SetupState.description.getter(a1);
      v18 = sub_10001EB4C(v16, v17, &v23);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v19 = SetupState.description.getter(v2[v4]);
      v21 = sub_10001EB4C(v19, v20, &v23);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v6, v14, "State mismatch: expected '%s', have '%s'", v15, 0x16u);
      swift_arrayDestroy();

      goto LABEL_6;
    }
  }

  return v5 & 1;
}

uint64_t sub_100006238(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v5 = sub_100006A7C(v1[v4], a1);
  v6 = v1;
  v7 = sub_1000257BC();
  if (v5)
  {
    v8 = sub_1000259EC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315138;
      v11 = SetupState.description.getter(v2[v4]);
      v13 = sub_10001EB4C(v11, v12, &v23);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s (valid)", v9, 0xCu);
      sub_10000E734(v10);

LABEL_6:
    }
  }

  else
  {
    v14 = sub_100025A1C();

    if (os_log_type_enabled(v7, v14))
    {
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v15 = 136315394;
      v16 = SetupState.description.getter(v2[v4]);
      v18 = sub_10001EB4C(v16, v17, &v23);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v19 = SetupState.description.getter(v2[v4]);
      v21 = sub_10001EB4C(v19, v20, &v23);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v7, v14, "State mismatch: expected '%s', have '%s'", v15, 0x16u);
      swift_arrayDestroy();

      goto LABEL_6;
    }
  }

  return v5 & 1;
}

void sub_100006484()
{
  v1 = v0;
  v2 = sub_10002577C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004708();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 serviceID];

    sub_10002574C();
    v10 = sub_10002572C();
    v12 = v11;
    (*(v3 + 8))(v6, v2);
    v13 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_defaults);
    if (!v13)
    {
LABEL_13:

      return;
    }

    v14 = sub_1000258BC();
    v15 = [v13 arrayForKey:v14];

    if (!v15 || (v16 = sub_10002597C(), v15, v17 = sub_10001C5A8(v16), v18 = , !v17))
    {
      sub_100002370(&unk_10003B4E0, &qword_100026FF0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100026BD0;
      *(v23 + 32) = v10;
      *(v23 + 40) = v12;
      isa = sub_10002596C().super.isa;

      v25 = sub_1000258BC();
      [v13 setObject:isa forKey:v25];

      return;
    }

    v36[0] = v10;
    v36[1] = v12;
    __chkstk_darwin(v18);
    v35[-2] = v36;

    v19 = sub_10001C6BC(sub_10000E714, &v35[-4], v17);

    if (v19)
    {

      goto LABEL_13;
    }

    v26 = sub_1000257BC();
    v27 = sub_1000259EC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_10001EB4C(v10, v12, v36);
      _os_log_impl(&_mh_execute_header, v26, v27, "noted successful setup of %s", v28, 0xCu);
      sub_10000E734(v29);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_100013BC4(0, *(v17 + 2) + 1, 1, v17);
    }

    v31 = *(v17 + 2);
    v30 = *(v17 + 3);
    if (v31 >= v30 >> 1)
    {
      v17 = sub_100013BC4((v30 > 1), v31 + 1, 1, v17);
    }

    *(v17 + 2) = v31 + 1;
    v32 = &v17[16 * v31];
    *(v32 + 4) = v10;
    *(v32 + 5) = v12;
    v33 = sub_10002596C().super.isa;

    v34 = sub_1000258BC();
    [v13 setObject:v33 forKey:v34];
  }

  else
  {
    v35[0] = sub_1000257BC();
    v20 = sub_100025A0C();
    if (os_log_type_enabled(v35[0], v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v35[0], v20, "Failed to note service as a successful onboard. had no serviceID", v21, 2u);
    }

    v22 = v35[0];
  }
}

BOOL sub_100006970(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_10002577C() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_10000EA84(&qword_10003B500, &type metadata accessor for UUID);
  }

  while ((sub_1000258AC() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_100006A7C(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    while (1)
    {
      v5 = *v3++;
      v4 = v5;
      switch(v5)
      {
        case 2:
          if (a1 != 2)
          {
            goto LABEL_4;
          }

          return 1;
        case 3:
          if (a1 == 3)
          {
            return 1;
          }

          goto LABEL_4;
        case 4:
          if (a1 == 4)
          {
            return 1;
          }

          goto LABEL_4;
        case 5:
          if (a1 == 5)
          {
            return 1;
          }

          goto LABEL_4;
        case 6:
          if (a1 == 6)
          {
            return 1;
          }

          goto LABEL_4;
        case 7:
          if (a1 == 7)
          {
            return 1;
          }

          goto LABEL_4;
        case 8:
          if (a1 == 8)
          {
            return 1;
          }

          goto LABEL_4;
        case 9:
          if (a1 == 9)
          {
            return 1;
          }

          goto LABEL_4;
        case 10:
          if (a1 == 10)
          {
            return 1;
          }

          goto LABEL_4;
        case 11:
          if (a1 == 11)
          {
            return 1;
          }

          goto LABEL_4;
        case 12:
          if (a1 == 12)
          {
            return 1;
          }

          goto LABEL_4;
        case 13:
          if (a1 == 13)
          {
            return 1;
          }

          goto LABEL_4;
        case 14:
          if (a1 == 14)
          {
            return 1;
          }

          goto LABEL_4;
        case 15:
          if (a1 == 15)
          {
            return 1;
          }

          goto LABEL_4;
        case 16:
          if (a1 == 16)
          {
            return 1;
          }

          goto LABEL_4;
        case 17:
          if (a1 == 17)
          {
            return 1;
          }

          goto LABEL_4;
        case 18:
          if (a1 == 18)
          {
            return 1;
          }

          goto LABEL_4;
        case 19:
          if (a1 == 19)
          {
            return 1;
          }

          goto LABEL_4;
        case 20:
          if (a1 == 20)
          {
            return 1;
          }

          goto LABEL_4;
        case 21:
          if (a1 == 21)
          {
            return 1;
          }

          goto LABEL_4;
        case 22:
          if (a1 == 22)
          {
            return 1;
          }

          goto LABEL_4;
        case 23:
          if (a1 == 23)
          {
            return 1;
          }

          goto LABEL_4;
        case 24:
          if (a1 == 24)
          {
            return 1;
          }

          goto LABEL_4;
        case 25:
          if (a1 == 25)
          {
            return 1;
          }

          goto LABEL_4;
        case 26:
          if (a1 == 26)
          {
            return 1;
          }

          goto LABEL_4;
        case 27:
          if (a1 == 27)
          {
            return 1;
          }

          goto LABEL_4;
        case 28:
          if (a1 == 28)
          {
            return 1;
          }

          goto LABEL_4;
        case 29:
          if (a1 != 29)
          {
            goto LABEL_4;
          }

          return 1;
        default:
          if ((a1 - 2) >= 0x1Cu && ((v4 ^ a1) & 1) == 0)
          {
            return 1;
          }

LABEL_4:
          if (!--v2)
          {
            return 0;
          }

          break;
      }
    }
  }

  return 0;
}

void sub_100006D18(unsigned __int8 a1)
{
  v3 = sub_10002577C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 != 2 && a1 != 3)
    {
      return;
    }

    goto LABEL_9;
  }

  if (a1)
  {
LABEL_9:
    v10 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_didEncounterErrorDuringSetup);
    v11 = objc_allocWithZone(MSSetupEarlyExitEvent);
    v12 = sub_1000258BC();

    v13 = [v11 initWithExitReason:v12 didEncounterError:v10];

    v14 = sub_100004708();
    if (v14)
    {
      v15 = v14;
      v16 = [v14 serviceID];

      sub_10002574C();
      sub_10002572C();
      (*(v4 + 8))(v7, v3);
      v17 = sub_1000258BC();
    }

    else
    {
      v17 = 0;
    }

    [v13 setServiceID:v17];

    [objc_opt_self() sendSetupEvent:v13];
    return;
  }

  if (!*(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession__completedSetupEvent))
  {
    v8 = sub_100007080();
    if (v8)
    {
      v9 = &_s10Foundation9IndexPathV5UIKitE3rowSivg_ptr;
      v26 = v8;
    }

    else
    {
      v18 = sub_1000257BC();
      v19 = sub_1000259EC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "completed setup but somehow did it without a service or serviceID. recording error", v20, 2u);
      }

      v21 = objc_allocWithZone(MSSetupFailedEvent);
      v22 = sub_1000258BC();
      v26 = [v21 initWithErrorNamed:v22];

      v9 = &_s10Foundation9IndexPathV5UIKitE3rowSivg_ptr;
    }

    v23 = v9[216];
    [objc_opt_self() sendSetupEvent:v26];
    v24 = v26;
  }
}

void *sub_100007080()
{
  v1 = sub_10002570C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002577C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = [v15 serviceID];
  if (v16)
  {
    v27 = v2;
    v17 = v16;
    sub_10002574C();

    (*(v7 + 32))(v13, v11, v6);
    v18 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession__completedSetupEvent;
    if (*(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession__completedSetupEvent))
    {

      (*(v7 + 8))(v13, v6);
      v19 = *(v0 + v18);
      v20 = v19;
    }

    else
    {
      v19 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_setupAnalyticEvent);
      v26 = v0;
      sub_10002572C();
      v21 = sub_1000258BC();

      [v19 setServiceID:v21];

      sub_1000256FC();
      isa = sub_1000256EC().super.isa;
      (*(v27 + 8))(v5, v1);
      [v19 setEndTime:isa];

      (*(v7 + 8))(v13, v6);
      v23 = *(v26 + v18);
      *(v26 + v18) = v19;
      v24 = v19;
    }
  }

  else
  {

    return 0;
  }

  return v19;
}

id SetupSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetupSession.init()()
{
  v1 = v0;
  v2 = sub_10002581C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homesToSetup] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state] = 4;
  *&v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount] = 0;
  v7 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_dispatchQueue;
  sub_10000E970(0, &qword_10003B3A0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v2);
  v8 = sub_100025A6C();
  (*(v3 + 8))(v6, v2);
  *&v1[v7] = v8;
  v9 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostAuditToken];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_progressHandler];
  *v11 = 0;
  v11[1] = 0;
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags] = 0;
  v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_didEncounterErrorDuringSetup] = 0;
  sub_1000257CC();
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist] = 0;
  v12 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel];
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  v13 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configPublicKey];
  *v13 = 0;
  v13[1] = 0;
  v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeTopology] = 3;
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager] = 0;
  v14 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext];
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v15 = &v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext];
  *v15 = 0u;
  v15[1] = 0u;
  v15[2] = 0u;
  v15[3] = 0u;
  v16 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stateStack;
  sub_100002370(&qword_10003B290, &unk_100026BE0);
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  *&v1[v16] = v17;
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_recoverableStates] = &off_100034FA0;
  v18 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_setupAnalyticEvent;
  *&v1[v18] = [objc_allocWithZone(MSSetupCompleteEvent) init];
  v19 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_defaults;
  v20 = objc_allocWithZone(NSUserDefaults);
  v21 = sub_1000258BC();
  v22 = [v20 initWithSuiteName:v21];

  *&v1[v19] = v22;
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___configuration] = 0;
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession____lazy_storage___mediaService] = 1;
  *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession__completedSetupEvent] = 0;
  v23 = type metadata accessor for SetupSession();
  v25.receiver = v1;
  v25.super_class = v23;
  return objc_msgSendSuper2(&v25, "init");
}

id SetupSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetupSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000078F4()
{
  v1 = v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist;
  *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist) = 1;
  v2 = (v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostAuditToken);
  if (*(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostAuditToken + 32))
  {
    oslog = sub_1000257BC();
    v3 = sub_100025A0C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "### Missing host audit token?";
LABEL_8:
      _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);
    }
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
    if (v6)
    {
      v8 = v2[2];
      v7 = v2[3];
      v10 = *v2;
      v9 = v2[1];
      v11 = type metadata accessor for EntitlementProxy(0);
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      v14 = v6;
      sub_100016D04(v10, v9, v8, v7);
      LOBYTE(v7) = sub_10001688C(v14);

      *(v1 + 3) = v7 & 1;
      return;
    }

    oslog = sub_1000257BC();
    v3 = sub_100025A0C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "### Missing setup context?";
      goto LABEL_8;
    }
  }
}

uint64_t sub_100007AC4(char a1, _OWORD *a2)
{
  v5 = sub_10002580C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_10002583C() - 8) + 64);
  result = __chkstk_darwin();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_progressHandler);
  if (v15)
  {
    v16 = *(v2 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_progressHandler + 8);
    v24 = v12;
    v25 = result;
    sub_10000E970(0, &qword_10003B3A0, OS_dispatch_queue_ptr);

    v23 = sub_100025A4C();
    v17 = swift_allocObject();
    v18 = a2[1];
    *(v17 + 40) = *a2;
    *(v17 + 56) = v18;
    v19 = a2[3];
    *(v17 + 72) = a2[2];
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v22 = v16;
    *(v17 + 32) = a1;
    *(v17 + 88) = v19;
    aBlock[4] = sub_10000EDB8;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C280;
    aBlock[3] = &unk_1000353A8;
    v20 = _Block_copy(aBlock);
    sub_10000EDEC(v15);
    sub_10000EB94(a2, &v26, &qword_10003B7C0, &qword_100026FF8);

    sub_10002582C();
    v26 = &_swiftEmptyArrayStorage;
    sub_10000EA84(&qword_10003B538, &type metadata accessor for DispatchWorkItemFlags);
    sub_100002370(&qword_10003B540, "V\x1B");
    sub_10000ECA4(&qword_10003B548, &qword_10003B540, "V\x1B");
    sub_100025B1C();
    v21 = v23;
    sub_100025A5C();
    _Block_release(v20);

    sub_10000EDFC(v15);
    (*(v6 + 8))(v9, v5);
    return (*(v24 + 8))(v14, v25);
  }

  return result;
}

void sub_100007E28()
{
  v0 = sub_100004708();
  if (v0)
  {
    v11 = v0;
    v1 = SetupSession.targetHome.getter();
    if (v1)
    {
      v2 = v1;
      v3 = sub_1000257BC();
      v4 = sub_1000259EC();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Switching to new service", v5, 2u);
      }

      v6 = sub_100004668();
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v2;
      aBlock[4] = sub_10000EB8C;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000088E4;
      aBlock[3] = &unk_100035268;
      v9 = _Block_copy(aBlock);
      v10 = v2;

      [v6 switchUserAccountInfo:v11 home:v10 completion:v9];
      _Block_release(v9);
    }

    else
    {
      sub_10000808C(2, 0x6567726174206F4ELL, 0xEF3F656D6F682074, 1);
    }
  }

  else
  {

    sub_10000808C(2, 0xD000000000000010, 0x80000001000282C0, 1);
  }
}

void sub_10000808C(char a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v43 = a4;
  v9 = sub_10002577C();
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_1000257BC();
  v14 = sub_100025A0C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v51[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10001EB4C(a2, a3, v51);
    _os_log_impl(&_mh_execute_header, v13, v14, "### %s", v15, 0xCu);
    sub_10000E734(v16);
  }

  v17 = (v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v18 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
  v45[0] = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v45[1] = v18;
  v19 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
  v21 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v20 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
  v45[2] = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
  v45[3] = v19;
  v22 = (v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext);
  v23 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 16);
  v46[0] = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext);
  v46[1] = v23;
  v24 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 48);
  v46[2] = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_preErrorContext + 32);
  v46[3] = v24;
  v25 = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
  v22[2] = *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
  v22[3] = v25;
  *v22 = v21;
  v22[1] = v20;
  sub_10000EB94(v45, v51, &qword_10003B7C0, &qword_100026FF8);
  sub_10000EBFC(v46, &qword_10003B7C0, &qword_100026FF8);
  v48 = 0u;
  v49 = 0u;
  v47 = xmmword_100026E90;
  LOBYTE(v50) = a1;
  *(&v50 + 1) = &_swiftEmptyArrayStorage;
  v26 = v17[1];
  v51[0] = *v17;
  v51[1] = v26;
  v27 = v17[3];
  v51[2] = v17[2];
  v51[3] = v27;
  v28 = v50;
  v17[2] = 0u;
  v17[3] = v28;
  v29 = v48;
  *v17 = v47;
  v17[1] = v29;
  sub_10000E7DC(&v47, &v44);
  sub_10000EBFC(v51, &qword_10003B7C0, &qword_100026FF8);
  sub_1000043A8();
  sub_10000E838(&v47);
  v30 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v31 = *(v5 + v30);
  *(v5 + v30) = 3;
  sub_100004124(v31);
  *(v5 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_didEncounterErrorDuringSetup) = 1;
  v32 = objc_allocWithZone(MSSetupFailedEvent);
  v33 = sub_1000258BC();

  v34 = [v32 initWithErrorNamed:v33];

  v35 = sub_100004708();
  if (v35)
  {
    v36 = v35;
    v37 = [v35 serviceID];

    sub_10002574C();
    sub_10002572C();
    (*(v41 + 8))(v12, v42);
    v38 = sub_1000258BC();
  }

  else
  {
    v38 = 0;
  }

  [v34 setServiceID:v38];

  v39 = [objc_opt_self() sendSetupEvent:v34];
  if (v43)
  {
    sub_1000051E4(v39);
  }
}

void sub_100008534(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10002577C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = a3;
    swift_errorRetain();
    v13 = sub_1000257BC();
    v14 = sub_1000259EC();

    if (os_log_type_enabled(v13, v14))
    {
      v35 = v14;
      v36 = v13;
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37[0] = v34;
      *v15 = 136381187;
      v16 = [v12 name];
      v17 = sub_1000258CC();
      v19 = v18;

      v20 = sub_10001EB4C(v17, v19, v37);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2081;
      v21 = [v12 uniqueIdentifier];
      sub_10002574C();

      sub_10000EA84(&qword_10003B4F8, &type metadata accessor for UUID);
      v22 = sub_100025C9C();
      v24 = v23;
      (*(v6 + 8))(v9, v5);
      v25 = sub_10001EB4C(v22, v24, v37);

      *(v15 + 14) = v25;
      *(v15 + 22) = 2080;
      if (a1)
      {
        swift_getErrorValue();
        v26 = sub_100025CDC();
        v28 = v27;
      }

      else
      {
        v28 = 0xE300000000000000;
        v26 = 7104878;
      }

      v29 = sub_10001EB4C(v26, v28, v37);

      *(v15 + 24) = v29;
      v13 = v36;
      _os_log_impl(&_mh_execute_header, v36, v35, "Setup: %{private}s (%{private}s error=%s", v15, 0x20u);
      swift_arrayDestroy();
    }

    if (a1)
    {
      sub_10000808C(3, 0x6166207075746553, 0xEC00000064656C69, 1);
    }

    else
    {
      v11[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist + 6] = 1;
      v30 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v31 = v11[v30];
      v11[v30] = 13;
      v32 = sub_100004124(v31);
      sub_1000051E4(v32);
    }
  }
}

void sub_1000088EC()
{
  v1 = v0;
  v2 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v84 - v7;
  v9 = sub_10002577C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v84 - v16;
  __chkstk_darwin(v15);
  v19 = &v84 - v18;
  if ((sub_100005FE4(4) & 1) == 0)
  {
    return;
  }

  if (*&v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags])
  {

    sub_10000C2C4();
    return;
  }

  v20 = &v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist];
  v21 = v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist + 1];
  v91 = &v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist];
  if ((v21 & 1) == 0)
  {
    v22 = sub_1000257BC();
    v23 = sub_1000259EC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v90 = v19;
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Starting HomeKit", v24, 2u);
      v19 = v90;
    }

    v25 = [objc_allocWithZone(HMHomeManager) init];
    v26 = *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager];
    *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager] = v25;
    v27 = v25;

    if (v27)
    {
      [v27 setDelegate:v1];
    }

    v20 = v91;
    v91[1] = 1;
  }

  if (v20[4] != 1)
  {
    v34 = sub_1000257BC();
    v35 = sub_100025A1C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "Still waiting on HomeKit update...";
LABEL_27:
      _os_log_impl(&_mh_execute_header, v34, v35, v37, v36, 2u);
    }

LABEL_28:

    v38 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v39 = v1[v38];
    v1[v38] = 5;
    sub_100004124(v39);
    return;
  }

  if ((v20[7] & 1) == 0)
  {
    v28 = sub_1000257BC();
    v29 = sub_1000259EC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v90 = v19;
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Starting service ID mapping", v30, 2u);
      v19 = v90;
    }

    sub_10000C4C8();
  }

  v31 = *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount];
  if (!v31)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_25;
  }

  v32 = [v31 serviceID];
  if (v32)
  {
    v33 = v32;
    sub_10002574C();

    (*(v10 + 56))(v6, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v6, 1, 1, v9);
  }

  sub_10000E88C(v6, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_25:
    sub_10000EBFC(v8, &qword_10003B4F0, &qword_100027000);
    v34 = sub_1000257BC();
    v35 = sub_1000259EC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "Still waiting on serviceID....";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v89 = *(v10 + 32);
  v90 = v10 + 32;
  v89(v19, v8, v9);
  v40 = v91;
  if ((v91[5] & 1) == 0)
  {
    v41 = *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager];
    if (v41)
    {
      v42 = [v41 homes];
      sub_10000E970(0, &qword_10003B388, HMHome_ptr);
      v43 = sub_10002597C();
    }

    else
    {
      v43 = &_swiftEmptyArrayStorage;
    }

    if (v43 >> 62)
    {
      v44 = sub_100025C3C();
      v45 = &unk_10003B000;
      if (v44)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v45 = &unk_10003B000;
      if (v44)
      {
LABEL_36:
        v88 = v10;
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_10001F1D8(0, v44 & ~(v44 >> 63), 0);
        if (v44 < 0)
        {
          __break(1u);
          return;
        }

        v46 = 0;
        v47 = aBlock[0];
        v48 = v43;
        v85 = v43 & 0xC000000000000001;
        v86 = v44;
        v87 = v43;
        do
        {
          if (v85)
          {
            v49 = sub_100025BBC();
          }

          else
          {
            v49 = *(v48 + 8 * v46 + 32);
          }

          v50 = v49;
          v51 = [v49 currentUser];
          v52 = [v51 uniqueIdentifier];

          sub_10002574C();
          aBlock[0] = v47;
          v54 = *(v47 + 16);
          v53 = *(v47 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_10001F1D8(v53 > 1, v54 + 1, 1);
            v47 = aBlock[0];
          }

          ++v46;
          *(v47 + 16) = v54 + 1;
          v89((v47 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v54), v14, v9);
          v48 = v87;
        }

        while (v86 != v46);

        v10 = v88;
        v45 = &unk_10003B000;
        goto LABEL_47;
      }
    }

LABEL_47:
    v55 = v45[122];
    (*(v10 + 16))(v17, v19, v9);

    v56 = sub_1000257BC();
    v57 = sub_1000259EC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      aBlock[0] = v90;
      *v58 = 136380931;
      v59 = sub_10002598C();
      LODWORD(v89) = v57;
      v61 = v10;
      v62 = sub_10001EB4C(v59, v60, aBlock);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2080;
      sub_10000EA84(&qword_10003B4F8, &type metadata accessor for UUID);
      v63 = sub_100025C9C();
      v65 = v64;
      (*(v61 + 8))(v17, v9);
      v66 = sub_10001EB4C(v63, v65, aBlock);
      v10 = v61;

      *(v58 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v56, v89, "Getting configuration info for userIDs %{private}s serviceID %s", v58, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v10 + 8))(v17, v9);
    }

    v67 = sub_100004668();
    isa = sub_10002596C().super.isa;

    v69 = sub_10002573C().super.isa;
    v70 = swift_allocObject();
    *(v70 + 16) = v1;
    aBlock[4] = sub_10000E934;
    aBlock[5] = v70;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000CBA4;
    aBlock[3] = &unk_100035150;
    v71 = _Block_copy(aBlock);
    v72 = v1;

    [v67 getServiceConfigurationInfo:isa serviceID:v69 completion:v71];
    _Block_release(v71);

    v40 = v91;
    v91[5] = 1;
  }

  if (*&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8])
  {
    if ((*v40 & 1) == 0)
    {
      sub_1000078F4();
      v40 = v91;
    }

    if (v40[3] == 1)
    {
      v73 = sub_1000257BC();
      v74 = sub_1000259EC();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Preflight completed, all info loaded.", v75, 2u);
      }

      v76 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v77 = v1[v76];
      v1[v76] = 6;
      v78 = sub_100004124(v77);
      sub_1000051E4(v78);
    }

    else
    {
      sub_10000808C(1, 0xD000000000000033, 0x8000000100028160, 1);
    }
  }

  else
  {
    v79 = sub_1000257BC();
    v80 = sub_100025A1C();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Still waiting on config model...", v81, 2u);
    }

    v82 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v83 = v1[v82];
    v1[v82] = 5;
    sub_100004124(v83);
  }

  (*(v10 + 8))(v19, v9);
}

void sub_1000094DC()
{
  v1 = v0;
  if (sub_100005FE4(6))
  {
    v2 = v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel;
    v3 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8);
    if (v3)
    {
      v4 = *v2;
      v5 = *(v2 + 16);
      sub_10000EA20(*v2, *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8));
      v6 = sub_10001A394(v3, v5);
      v7 = sub_1000257BC();
      v8 = sub_1000259EC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        *(v9 + 4) = v6;
        _os_log_impl(&_mh_execute_header, v7, v8, "Should offer 'learn more' = %{BOOL}d", v9, 8u);
      }

      if (v6)
      {
        v10 = 8;
      }

      else
      {
        v10 = 10;
      }

      v11 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v12 = *(v1 + v11);
      *(v1 + v11) = v10;
      v13 = sub_100004124(v12);
      sub_1000051E4(v13);
    }

    else
    {
      oslog = sub_1000257BC();
      v14 = sub_100025A0C();
      if (os_log_type_enabled(oslog, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v14, "### No config model?", v15, 2u);
      }
    }
  }
}

uint64_t sub_1000096DC()
{
  v1 = sub_10002580C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002583C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100005FE4(7);
  if (result)
  {
    memset(v23, 0, 64);
    sub_100007AC4(8, v23);
    v19 = v2;
    v20 = v6;
    v12 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v13 = v0[v12];
    v0[v12] = 9;
    sub_100004124(v13);
    v14 = *&v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_dispatchQueue];
    v15 = swift_allocObject();
    *(v15 + 16) = v0;
    aBlock[4] = sub_10000EA60;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C280;
    aBlock[3] = &unk_1000351F0;
    v16 = _Block_copy(aBlock);
    v17 = v14;
    v18 = v0;
    sub_10002582C();
    v21 = _swiftEmptyArrayStorage;
    sub_10000EA84(&qword_10003B538, &type metadata accessor for DispatchWorkItemFlags);
    sub_100002370(&qword_10003B540, "V\x1B");
    sub_10000ECA4(&qword_10003B548, &qword_10003B540, "V\x1B");
    sub_100025B1C();
    sub_100025A5C();
    _Block_release(v16);

    (*(v19 + 8))(v5, v1);
    (*(v7 + 8))(v10, v20);
  }

  return result;
}

void sub_100009A0C()
{
  v1 = v0;
  v2 = sub_10002577C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100005FE4(10))
  {
    v7 = v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel;
    v8 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8);
    if (v8)
    {
      v9 = *v7;
      v10 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
      if (v10)
      {
        v11 = *(v7 + 16);
        sub_10000EA20(*v7, *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8));
        v12 = v10;
        sub_100004D2C(v6);
        sub_10001A6D4(v12, v6, v8, &v42);
        v33 = *(&v42 + 1);
        v34 = v42;
        v35 = v43;
        v31 = v45;
        v32 = v44;
        v30 = *(&v45 + 1);
        (*(v3 + 8))(v6, v2);
        v48[0] = v42;
        v47 = v44;
        v46 = v45;
        sub_10000EB94(v48, v41, &qword_10003B530, &unk_100027020);
        sub_10000EB94(&v47, v41, &qword_10003B550, &qword_100027030);
        sub_10000EB94(&v46, v41, &qword_10003B530, &unk_100027020);
        v13 = sub_1000257BC();
        v14 = sub_1000259EC();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 67109120;
          v16 = v43;
          *(v15 + 4) = v43 & 1;
          sub_10000EBFC(v48, &qword_10003B530, &unk_100027020);
          sub_10000EBFC(&v47, &qword_10003B550, &qword_100027030);
          sub_10000EBFC(&v46, &qword_10003B530, &unk_100027020);
          _os_log_impl(&_mh_execute_header, v13, v14, "Account mismatch = %{BOOL}d", v15, 8u);

          if ((v16 & 1) == 0)
          {
LABEL_6:
            v17 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
            swift_beginAccess();
            v18 = *(v1 + v17);
            *(v1 + v17) = 15;
            v19 = sub_100004124(v18);
LABEL_15:
            sub_1000051E4(v19);
            sub_10000EBFC(v48, &qword_10003B530, &unk_100027020);
            sub_10000EBFC(&v47, &qword_10003B550, &qword_100027030);
            sub_10000EBFC(&v46, &qword_10003B530, &unk_100027020);

            return;
          }
        }

        else
        {
          sub_10000EBFC(v48, &qword_10003B530, &unk_100027020);
          sub_10000EBFC(&v47, &qword_10003B550, &qword_100027030);
          sub_10000EBFC(&v46, &qword_10003B530, &unk_100027020);

          if ((v43 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v21 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
        swift_beginAccess();
        v22 = *(v1 + v21);
        *(v1 + v21) = 11;
        sub_100004124(v22);
        *&v37 = v34;
        *(&v37 + 1) = v33;
        *&v38 = v35;
        *(&v38 + 1) = v32;
        *&v39 = v31;
        *(&v39 + 1) = v30;
        LOBYTE(v40) = 6;
        *(&v40 + 1) = _swiftEmptyArrayStorage;
        v23 = (v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
        v24 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
        v41[0] = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
        v41[1] = v24;
        v25 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
        v41[2] = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
        v41[3] = v25;
        v26 = v37;
        v27 = v38;
        v28 = v40;
        v23[2] = v39;
        v23[3] = v28;
        *v23 = v26;
        v23[1] = v27;
        sub_10000EB94(v48, v36, &qword_10003B530, &unk_100027020);
        sub_10000EB94(&v47, v36, &qword_10003B550, &qword_100027030);
        sub_10000EB94(&v46, v36, &qword_10003B530, &unk_100027020);
        sub_10000E7DC(&v37, v36);
        sub_10000EBFC(v41, &qword_10003B7C0, &qword_100026FF8);
        sub_1000043A8();
        v19 = sub_10000E838(&v37);
        goto LABEL_15;
      }

      v35 = v9;

      sub_10000808C(2, 0xD000000000000011, 0x80000001000282A0, 1);

      v20 = v35;
    }

    else
    {

      sub_10000808C(2, 0x69666E6F63206F4ELL, 0xEF3F6F666E692067, 1);
    }
  }
}

uint64_t sub_100009F8C()
{
  result = sub_100005FE4(13);
  if (result)
  {
    v2 = v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist;
    if ((*(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags) & 4) != 0)
    {
      *(v2 + 6) = 1;
      goto LABEL_6;
    }

    if (*(v2 + 6))
    {
      [*(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_setupAnalyticEvent) setDidSwitchAccount:1];
LABEL_6:
      v3 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v4 = *(v0 + v3);
      *(v0 + v3) = 15;
      v5 = sub_100004124(v4);
      return sub_1000051E4(v5);
    }

    sub_100007E28();
    v6 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v7 = *(v0 + v6);
    *(v0 + v6) = 14;
    return sub_100004124(v7);
  }

  return result;
}

uint64_t sub_10000A06C()
{
  v1 = sub_10002577C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_100002370(&qword_10003B558, &qword_100027038);
  v6 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v8 = &v96 - v7;
  v9 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v96 - v15;
  __chkstk_darwin(v14);
  v18 = &v96 - v17;
  result = sub_100005FE4(15);
  if ((result & 1) == 0)
  {
    return result;
  }

  v20 = v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel;
  v21 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8);
  if (!v21)
  {
    return result;
  }

  v114 = v2;
  v112 = v8;
  v120 = v16;
  v104 = v13;
  v103 = v5;
  v22 = *(v20 + 16);
  v23 = *v20;
  v119 = v0;
  v24 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
  sub_10000EA20(v23, v21);
  v25 = v24;
  v26 = sub_10001812C(v24, v23, v21, v22);
  LOBYTE(v24) = v27;

  v28 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeTopology;
  *(v119 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeTopology) = v24;
  v29 = v119;
  v123 = 0u;
  v121 = xmmword_100026E90;
  v122 = 0u;
  LOBYTE(v124) = 6;
  *(&v124 + 1) = v26;
  v30 = (v119 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v31 = *(v119 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 16);
  v125[0] = *(v119 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v125[1] = v31;
  v32 = *(v119 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 48);
  v125[2] = *(v119 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext + 32);
  v125[3] = v32;
  v33 = v124;
  v30[2] = 0u;
  v30[3] = v33;
  v34 = v122;
  *v30 = v121;
  v30[1] = v34;
  sub_10000E7DC(&v121, &v126);
  sub_10000E7DC(&v121, &v126);

  sub_10000EBFC(v125, &qword_10003B7C0, &qword_100026FF8);
  sub_1000043A8();
  sub_10000E838(&v121);
  if ((*(v29 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags) & 8) != 0)
  {

    v61 = SetupSession.targetHome.getter();
    if (v61)
    {
      v62 = v61;
      v63 = [v61 isCurrentUserHomeOwner];
    }

    else
    {
      v63 = 0;
    }

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    sub_100007AC4(v63, &v126);
    v64 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v65 = *(v29 + v64);
    *(v29 + v64) = 17;
    goto LABEL_100;
  }

  v118 = v18;
  v99 = v28;
  v97 = v29 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist;
  v35 = *(v29 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist + 2);
  v100 = v26 >> 62;
  v36 = v120;
  if (v35 != 1)
  {
    goto LABEL_44;
  }

  if (v100)
  {
LABEL_113:
    v37 = sub_100025C3C();
    if (v37)
    {
      goto LABEL_7;
    }

LABEL_44:
    if (v100)
    {
      goto LABEL_63;
    }

    v66 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1 = v26 & 0xC000000000000001;
    if (!v66)
    {
      goto LABEL_64;
    }

LABEL_46:
    v29 = 0;
    v36 = v26 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v1)
      {
        v68 = sub_100025BBC();
        v69 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          v71 = 1;
          goto LABEL_65;
        }
      }

      else
      {
        if (v29 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_60;
        }

        v67 = *(v26 + 8 * v29 + 32);

        v69 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }
      }

      if (*(v68 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_service))
      {
      }

      else
      {
        v70 = *(v68 + 16);

        if ((v70 | 2) == 2)
        {
          v71 = 0;
          goto LABEL_65;
        }
      }

      ++v29;
      if (v69 == v66)
      {
        goto LABEL_58;
      }
    }
  }

  v37 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_44;
  }

LABEL_7:
  v38 = 0;
  v111 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager;
  v110 = v26 & 0xC000000000000001;
  v109 = v26 & 0xFFFFFFFFFFFFFF8;
  v108 = (v114 + 16);
  v116 = (v114 + 56);
  v98 = (v114 + 32);
  v102 = (v114 + 8);
  v105 = v37;
  v106 = v26;
  v107 = (v114 + 48);
  v115 = v1;
  while (!v110)
  {
    if (v38 >= *(v109 + 16))
    {
      goto LABEL_61;
    }

    v40 = *(v26 + 8 * v38 + 32);

    v26 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_60;
    }

LABEL_14:
    v41 = v118;
    (*v108)(v118, v40 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_id, v1);
    v42 = *v116;
    (*v116)(v41, 0, 1, v1);
    v43 = *(v29 + v111);
    v114 = v40;
    v113 = v26;
    if (v43)
    {
      v44 = [v43 currentHome];
      if (v44)
      {
        goto LABEL_24;
      }

      v45 = *(v119 + v111);
      if (v45)
      {
        v46 = [v45 homes];
        sub_10000E970(0, &qword_10003B388, HMHome_ptr);
        v29 = sub_10002597C();
      }

      else
      {
        v29 = _swiftEmptyArrayStorage;
      }

      v36 = v120;
      if (!(v29 >> 62))
      {
LABEL_19:
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v29 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_19;
      }
    }

    if (sub_100025C3C())
    {
LABEL_20:
      if ((v29 & 0xC000000000000001) != 0)
      {
        v47 = sub_100025BBC();
      }

      else
      {
        if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v47 = *(v29 + 32);
      }

      v44 = v47;

LABEL_24:
      v48 = [v44 uniqueIdentifier];

      v36 = v120;
      sub_10002574C();

      v49 = 0;
      goto LABEL_29;
    }

LABEL_28:

    v49 = 1;
LABEL_29:
    v50 = v115;
    v42(v36, v49, 1, v115);
    v51 = *(v117 + 48);
    v52 = v118;
    v53 = v112;
    sub_10000EB94(v118, v112, &qword_10003B4F0, &qword_100027000);
    sub_10000EB94(v36, v53 + v51, &qword_10003B4F0, &qword_100027000);
    v54 = v36;
    v55 = *v107;
    if ((*v107)(v53, 1, v50) == 1)
    {
      sub_10000EBFC(v54, &qword_10003B4F0, &qword_100027000);
      sub_10000EBFC(v52, &qword_10003B4F0, &qword_100027000);
      v39 = v55(v53 + v51, 1, v50);
      v29 = v119;
      v26 = v106;
      if (v39 != 1)
      {
LABEL_9:
        sub_10000EBFC(v53, &qword_10003B558, &qword_100027038);
        goto LABEL_10;
      }

      sub_10000EBFC(v53, &qword_10003B4F0, &qword_100027000);
      v60 = v114;
LABEL_43:
      *(v60 + 17) = 1;

      goto LABEL_44;
    }

    v56 = v104;
    sub_10000EB94(v53, v104, &qword_10003B4F0, &qword_100027000);
    v57 = v55(v53 + v51, 1, v50);
    v26 = v106;
    if (v57 == 1)
    {
      sub_10000EBFC(v120, &qword_10003B4F0, &qword_100027000);
      sub_10000EBFC(v118, &qword_10003B4F0, &qword_100027000);
      (*v102)(v56, v50);
      v29 = v119;
      goto LABEL_9;
    }

    v58 = v103;
    (*v98)(v103, v53 + v51, v50);
    sub_10000EA84(&qword_10003B500, &type metadata accessor for UUID);
    v101 = sub_1000258AC();
    v59 = *v102;
    (*v102)(v58, v50);
    sub_10000EBFC(v120, &qword_10003B4F0, &qword_100027000);
    sub_10000EBFC(v118, &qword_10003B4F0, &qword_100027000);
    v59(v56, v50);
    sub_10000EBFC(v53, &qword_10003B4F0, &qword_100027000);
    v29 = v119;
    v60 = v114;
    if (v101)
    {
      goto LABEL_43;
    }

LABEL_10:

    ++v38;
    v36 = v120;
    v1 = v115;
    if (v113 == v105)
    {
      goto LABEL_44;
    }
  }

  v40 = sub_100025BBC();
  v26 = v38 + 1;
  if (!__OFADD__(v38, 1))
  {
    goto LABEL_14;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  v66 = sub_100025C3C();
  v1 = v26 & 0xC000000000000001;
  if (v66)
  {
    goto LABEL_46;
  }

LABEL_64:
  v71 = 0;
  v36 = v26 & 0xFFFFFFFFFFFFFF8;
LABEL_65:
  v72 = 0;
  do
  {
    v73 = v72;
    if (v66 == v72)
    {
      break;
    }

    if (v1)
    {
      v75 = sub_100025BBC();
      if (__OFADD__(v73, 1))
      {
LABEL_74:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v72 >= *(v36 + 16))
      {
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v74 = *(v26 + 8 * v72 + 32);

      if (__OFADD__(v73, 1))
      {
        goto LABEL_74;
      }
    }

    v29 = *(v75 + 16);

    v72 = v73 + 1;
  }

  while ((v29 | 2) != 2);
  v76 = 0;
  do
  {
    v77 = v76;
    if (v66 == v76)
    {
      break;
    }

    if (v1)
    {
      v79 = sub_100025BBC();
      if (__OFADD__(v77, 1))
      {
LABEL_84:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v76 >= *(v36 + 16))
      {
        __break(1u);
        goto LABEL_112;
      }

      v78 = *(v26 + 8 * v76 + 32);

      if (__OFADD__(v77, 1))
      {
        goto LABEL_84;
      }
    }

    v29 = *(v79 + 16);

    v76 = v77 + 1;
  }

  while (v29 != 2);

  v80 = v119;
  v81 = sub_1000257BC();
  v82 = sub_1000259EC();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 67109632;
    *(v83 + 4) = v71;
    *(v83 + 8) = 1024;
    *(v83 + 10) = v66 == v73;
    *(v83 + 14) = 1024;
    *(v83 + 16) = v66 != v77;
    v80 = v119;
    _os_log_impl(&_mh_execute_header, v81, v82, "HomeTopologyCheck allSetup=%{BOOL}d inelgibible=%{BOOL}d needsUpdate=%{BOOL}d", v83, 0x14u);
  }

  v84 = *(v80 + v99);
  if (v84 == 3 || !*(v80 + v99))
  {
    v85 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v65 = *(v80 + v85);
    v86 = 8;
    goto LABEL_90;
  }

  if (*(v97 + 2) == 1)
  {
    if (*(v97 + 6))
    {
      v87 = 26;
    }

    else
    {
      v87 = 29;
    }

    v88 = v84 == 1;
LABEL_96:
    if (v88)
    {
      v89 = v87;
    }

    else
    {
      v89 = 20;
    }

    v90 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v65 = *(v80 + v90);
    *(v80 + v90) = v89;
  }

  else if (v66 == v73 || ((v71 ^ 1) & 1) != 0)
  {
    if (v66 == v77)
    {
      v88 = v84 == 1;
      v87 = 23;
      goto LABEL_96;
    }

    v92 = SetupSession.targetHome.getter();
    if (v92)
    {
      v93 = v92;
      v94 = [v92 isCurrentUserHomeOwner];
    }

    else
    {
      v94 = 0;
    }

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    sub_100007AC4(v94, &v126);
    v95 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v65 = *(v80 + v95);
    *(v80 + v95) = 17;
  }

  else
  {
    v85 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v65 = *(v80 + v85);
    v86 = 26;
LABEL_90:
    *(v80 + v85) = v86;
  }

LABEL_100:
  v91 = sub_100004124(v65);
  sub_1000051E4(v91);
  return sub_10000E838(&v121);
}

void sub_10000AE50()
{
  v1 = sub_10002577C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v110 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v109 = &v99 - v6;
  if ((sub_100005FE4(18) & 1) == 0)
  {
    return;
  }

  memset(v118, 0, sizeof(v118));
  sub_100007AC4(13, v118);
  if (*(&v0->isa + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags))
  {

    sub_10000CC94();
    return;
  }

  v7 = *(&v0[2].isa + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v114 = *(&v0->isa + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v115 = v7;
  v8 = *(&v0[6].isa + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v116 = *(&v0[4].isa + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_stepContext);
  v117 = v8;
  v9 = *(&v8 + 1);
  if (!*(&v8 + 1))
  {
    v38 = 0xD000000000000023;
    v39 = 0x8000000100028320;
    v40 = 2;
LABEL_41:
    sub_10000808C(v40, v38, v39, 1);
    return;
  }

  v108 = v0;
  v113 = _swiftEmptyArrayStorage;
  v10 = (*(&v8 + 1) & 0xFFFFFFFFFFFFFF8);
  if (*(&v8 + 1) >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((*(&v8 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100025C3C())
  {
    sub_10000E780(v114, *(&v114 + 1), v115, *(&v115 + 1));

    v12 = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v13 = 0;
    v14 = (v9 & 0xC000000000000001);
    v15 = &OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_userRequestsSetup;
    v107 = i;
    v106 = (v9 & 0xC000000000000001);
    while (v14)
    {
      v16 = sub_100025BBC();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        v12 = v113;
        goto LABEL_24;
      }

LABEL_16:
      if ((*(v16 + *v15) & 1) != 0 && (*(v16 + 17) & 1) == 0 && (*(v16 + 16) | 2) == 2)
      {
        sub_100025BEC();
        v18 = v9;
        v19 = v15;
        v20 = v10;
        v21 = v113[2];
        sub_100025C1C();
        v10 = v20;
        v15 = v19;
        v9 = v18;
        v14 = v106;
        sub_100025C2C();
        sub_100025BFC();
        i = v107;
      }

      else
      {
      }

      v13 = (v13 + 1);
      if (v17 == i)
      {
        goto LABEL_23;
      }
    }

    if (v13 < v10[2].isa)
    {
      v16 = *(v9 + 8 * v13 + 32);

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

LABEL_24:
  sub_10000EBFC(&v114, &qword_10003B7C0, &qword_100026FF8);
  v22 = sub_100004708();
  if (!v22)
  {

    v39 = 0x80000001000282C0;
    v40 = 3;
    v38 = 0xD000000000000010;
    goto LABEL_41;
  }

  v10 = v22;
  v23 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_log;

  v24 = sub_1000257BC();
  v25 = sub_1000259EC();

  v26 = os_log_type_enabled(v24, v25);
  v103 = v10;
  v102 = v23;
  if (!v26)
  {

    v41 = v12 & 0x4000000000000000;
    goto LABEL_44;
  }

  v27 = swift_slowAlloc();
  v100 = swift_slowAlloc();
  aBlock[0] = v100;
  v101 = v27;
  *v27 = 136380675;
  v105 = (v12 & 0x4000000000000000);
  LODWORD(v104) = v25;
  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    v28 = sub_100025C3C();
  }

  else
  {
    v28 = *(v12 + 16);
  }

  v106 = v24;
  if (!v28)
  {
    goto LABEL_43;
  }

  v112 = _swiftEmptyArrayStorage;
  sub_10001F218(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
    __break(1u);
LABEL_125:
    __break(1u);
    return;
  }

  v29 = 0;
  v30 = v112;
  v107 = v12 & 0xC000000000000001;
  v31 = v28;
  do
  {
    if (v107)
    {
      v32 = sub_100025BBC();
    }

    else
    {
      v32 = *(v12 + 8 * v29 + 32);
    }

    v33 = *(v32 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
    v34 = *(v32 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name + 8);

    v112 = v30;
    v36 = v30[2];
    v35 = v30[3];
    if (v36 >= v35 >> 1)
    {
      sub_10001F218((v35 > 1), v36 + 1, 1);
      v30 = v112;
    }

    ++v29;
    v30[2] = v36 + 1;
    v37 = &v30[2 * v36];
    v37[4] = v33;
    v37[5] = v34;
  }

  while (v31 != v29);
LABEL_43:
  v42 = sub_10002598C();
  v44 = v43;

  v45 = sub_10001EB4C(v42, v44, aBlock);

  v46 = v101;
  *(v101 + 1) = v45;
  v10 = v106;
  _os_log_impl(&_mh_execute_header, v106, v104, "Setup with %{private}s", v46, 0xCu);
  sub_10000E734(v100);

  v41 = v105;
LABEL_44:
  v47 = 0;
  v49 = v12 < 0 || v41 != 0;
  v50 = v12 & 0xC000000000000001;
  if (v49)
  {
LABEL_51:
    v9 = sub_100025C3C();
    goto LABEL_53;
  }

  while (1)
  {
    v9 = *(v12 + 16);
LABEL_53:
    if (v47 == v9)
    {
      goto LABEL_63;
    }

    if (v50)
    {
      v10 = sub_100025BBC();
      if (__OFADD__(v47, 1))
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v47 >= *(v12 + 16))
      {
        goto LABEL_91;
      }

      v10 = *(v12 + 8 * v47 + 32);

      if (__OFADD__(v47, 1))
      {
LABEL_62:
        __break(1u);
LABEL_63:

        v53 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
        v54 = v108;
        swift_beginAccess();
        v55 = *(&v54->isa + v53);
        *(&v54->isa + v53) = 1;
        v56 = sub_100004124(v55);
        sub_1000051E4(v56);

        return;
      }
    }

    v51 = *(&v10->isa + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_service);
    v52 = v51;

    if (!v51)
    {
      break;
    }

    ++v47;
    if (v49)
    {
      goto LABEL_51;
    }
  }

  v10 = _swiftEmptyArrayStorage;
  aBlock[0] = _swiftEmptyArrayStorage;
  if (v9)
  {
    v57 = 0;
    do
    {
      if (v50)
      {
        v58 = sub_100025BBC();
        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v57 >= *(v12 + 16))
        {
          goto LABEL_93;
        }

        v58 = *(v12 + 8 * v57 + 32);

        v59 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_92;
        }
      }

      if (*(v58 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_service))
      {
      }

      else
      {
        sub_100025BEC();
        v10 = *(aBlock[0] + 16);
        sub_100025C1C();
        sub_100025C2C();
        sub_100025BFC();
      }

      ++v57;
    }

    while (v59 != v9);
    v60 = aBlock[0];
  }

  else
  {
    v60 = _swiftEmptyArrayStorage;
  }

  if (v60 < 0 || (v60 & 0x4000000000000000) != 0)
  {
    v61 = sub_100025C3C();
    v62 = v108;
    if (!v61)
    {
      goto LABEL_97;
    }

LABEL_81:
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10001F1D8(0, v61 & ~(v61 >> 63), 0);
    v107 = v61;
    if ((v61 & 0x8000000000000000) == 0)
    {
      v63 = 0;
      v64 = aBlock[0];
      v106 = (v60 & 0xC000000000000001);
      v65 = v109;
      do
      {
        if (v106)
        {
          v66 = sub_100025BBC();
        }

        else
        {
          v66 = *(v60 + 8 * v63 + 32);
        }

        (*(v2 + 16))(v65, v66 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_id, v1);

        aBlock[0] = v64;
        v68 = v64[2];
        v67 = v64[3];
        if (v68 >= v67 >> 1)
        {
          sub_10001F1D8(v67 > 1, v68 + 1, 1);
          v65 = v109;
          v64 = aBlock[0];
        }

        ++v63;
        v64[2] = v68 + 1;
        (*(v2 + 32))(v64 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v68, v65, v1);
        v62 = v108;
      }

      while (v107 != v63);

      goto LABEL_98;
    }

    goto LABEL_125;
  }

  v61 = *(v60 + 16);
  v62 = v108;
  if (v61)
  {
    goto LABEL_81;
  }

LABEL_97:

  v64 = _swiftEmptyArrayStorage;
LABEL_98:
  v69 = *(v62 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager);
  if (v69)
  {
    v70 = [v69 homes];
    sub_10000E970(0, &qword_10003B388, HMHome_ptr);
    v71 = sub_10002597C();
  }

  else
  {
    v71 = _swiftEmptyArrayStorage;
  }

  aBlock[0] = _swiftEmptyArrayStorage;
  if (v71 >> 62)
  {
    goto LABEL_118;
  }

  for (j = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_100025C3C())
  {
    v62 = 0;
    v109 = (v71 & 0xC000000000000001);
    v107 = v71 & 0xFFFFFFFFFFFFFF8;
    v101 = v71;
    v104 = v71 + 32;
    v105 = (v2 + 8);
    v106 = j;
    while (1)
    {
      if (v109)
      {
        v73 = sub_100025BBC();
      }

      else
      {
        if (v62 >= *(v107 + 16))
        {
          goto LABEL_117;
        }

        v73 = *(v104 + 8 * v62);
      }

      v74 = v73;
      if (__OFADD__(v62++, 1))
      {
        break;
      }

      v76 = [v73 uniqueIdentifier];
      sub_10002574C();

      v77 = 0;
      v71 = v64[2];
      do
      {
        if (v71 == v77)
        {
          (*v105)(v110, v1);

          goto LABEL_105;
        }

        v78 = v77 + 1;
        v79 = v64 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v77;
        sub_10000EA84(&qword_10003B500, &type metadata accessor for UUID);
        v80 = sub_1000258AC();
        v77 = v78;
      }

      while ((v80 & 1) == 0);
      (*v105)(v110, v1);
      sub_100025BEC();
      v81 = *(aBlock[0] + 16);
      sub_100025C1C();
      sub_100025C2C();
      sub_100025BFC();
LABEL_105:
      if (v62 == v106)
      {
        v82 = aBlock[0];
        v62 = v108;
        goto LABEL_120;
      }
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    ;
  }

  v82 = _swiftEmptyArrayStorage;
LABEL_120:

  v83 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homesToSetup;
  swift_beginAccess();
  v84 = *(v62 + v83);
  *(v62 + v83) = v82;

  v85 = v103;
  v86 = v103;
  v87 = sub_1000257BC();
  v88 = sub_1000259EC();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v89 = 138477827;
    *(v89 + 4) = v86;
    *v90 = v85;
    v91 = v86;
    _os_log_impl(&_mh_execute_header, v87, v88, "Setting up %{private}@", v89, 0xCu);
    sub_10000EBFC(v90, &qword_10003B518, &qword_100027008);
  }

  v92 = sub_100004668();
  v93 = *(v62 + v83);

  sub_10000D12C(v94);

  isa = sub_10002596C().super.isa;

  v96 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v97 = swift_allocObject();
  *(v97 + 16) = v96;
  *(v97 + 24) = v64;
  aBlock[4] = sub_10000EC9C;
  aBlock[5] = v97;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C208;
  aBlock[3] = &unk_1000352B8;
  v98 = _Block_copy(aBlock);

  [v92 addMediaService:v86 toHomes:isa completion:v98];
  _Block_release(v98);
}

void sub_10000BC70(char a1)
{
  if (sub_100005FE4(a1 & 1))
  {
    if (a1)
    {
      v3 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
      swift_beginAccess();
      v4 = v1[v3];
      v1[v3] = 28;
      v5 = sub_100004124(v4);
      sub_1000051E4(v5);
      return;
    }

    v6 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homesToSetup;
    swift_beginAccess();
    v7 = *&v1[v6];
    if (v7 >> 62)
    {
      v8 = sub_100025C3C();
      if (v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_6:
        if (v8 < 1)
        {
          __break(1u);
          return;
        }

        v9 = 0;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = sub_100025BBC();
          }

          else
          {
            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          ++v9;
          v12 = sub_100004668();
          v13 = sub_100004708();
          v14 = swift_allocObject();
          *(v14 + 16) = v1;
          *(v14 + 24) = v11;
          aBlock[4] = sub_10000ED44;
          aBlock[5] = v14;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10000C208;
          aBlock[3] = &unk_100035358;
          v15 = _Block_copy(aBlock);
          v16 = v11;
          v17 = v1;

          [v12 removeServiceFromHome:v13 fromHome:v16 completion:v15];
          _Block_release(v15);
        }

        while (v8 != v9);
      }
    }

    sub_10000808C(3, 0xD00000000000001FLL, 0x8000000100028370, 1);
  }
}

void sub_10000BEB8(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10002577C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a4;
  swift_errorRetain();
  v32 = sub_1000257BC();
  v13 = sub_100025A1C();

  if (os_log_type_enabled(v32, v13))
  {
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v14 = 136381443;
    v15 = [v12 name];
    v16 = sub_1000258CC();
    HIDWORD(v30) = a1;
    v18 = v17;

    v19 = sub_10001EB4C(v16, v18, &v33);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2081;
    v20 = [v12 uniqueIdentifier];
    sub_10002574C();

    sub_10000EA84(&qword_10003B4F8, &type metadata accessor for UUID);
    v21 = sub_100025C9C();
    v23 = v22;
    (*(v8 + 8))(v11, v7);
    v24 = sub_10001EB4C(v21, v23, &v33);

    *(v14 + 14) = v24;
    *(v14 + 22) = 1024;
    *(v14 + 24) = BYTE4(v30) & 1;
    *(v14 + 28) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v25 = sub_100025CDC();
      v27 = v26;
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v29 = sub_10001EB4C(v25, v27, &v33);

    *(v14 + 30) = v29;
    _os_log_impl(&_mh_execute_header, v32, v13, "Setup reverted for %{private}s (%{private}s success=%{BOOL}d, error=%s", v14, 0x26u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = v32;
  }
}

void sub_10000C208(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10000C280(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_10000C2C4()
{
  v1 = v0;
  v2 = sub_10002577C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
  if (v7)
  {
    v8 = v7;
    sub_10002576C();
    isa = sub_10002573C().super.isa;
    (*(v3 + 8))(v6, v2);
    [v8 setServiceID:isa];

    v10 = sub_1000257BC();
    v11 = sub_1000259EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Running preflight for testing", v12, 2u);
    }

    v13 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags);
    v14 = v8;
    sub_100019CE4(v13, v14);
    v15 = (v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel);
    v16 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel);
    v17 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8);
    v18 = *(v1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 16);
    *v15 = v19;
    v15[1] = v20;
    v15[2] = v21;
    sub_10000E9B8(v16, v17);
    v22 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v23 = *(v1 + v22);
    *(v1 + v22) = 6;
    v24 = sub_100004124(v23);
    sub_1000051E4(v24);
  }
}

void sub_10000C4C8()
{
  if (*&v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID + 8])
  {
    v1 = *&v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID];
    v2 = *&v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID + 8];

    v3 = sub_100004668();
    v4 = sub_1000258BC();

    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v8[4] = sub_10000E9FC;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10000DDA4;
    v8[3] = &unk_1000351A0;
    v6 = _Block_copy(v8);
    v7 = v0;

    [v3 getPublicInfoForBundleID:v4 completion:v6];
    _Block_release(v6);
  }

  else
  {
    sub_10000808C(2, 0xD000000000000011, 0x8000000100028210, 1);
  }

  v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist + 7] = 1;
}

void sub_10000C62C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  if ((_s21MediaSetupViewService0B5StateO2eeoiySbAC_ACtFZ_0(v2[v6], 5) & 1) == 0)
  {
    v7 = v2;
    v8 = sub_1000257BC();
    v9 = sub_100025A0C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v55 = v11;
      *v10 = 136315138;
      v12 = SetupState.description.getter(v3[v6]);
      v14 = sub_10001EB4C(v12, v13, &v55);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "### Received service configuration info while in state %s?", v10, 0xCu);
      sub_10000E734(v11);
    }
  }

  if (!a2)
  {
LABEL_12:
    if (!a1)
    {
      v23 = 0xD000000000000021;
      v24 = 0x80000001000281A0;
      v25 = 0;
LABEL_26:
      sub_10000808C(v25, v23, v24, 1);
      return;
    }

    goto LABEL_20;
  }

  v15 = sub_10002568C();
  v16 = [v15 domain];
  v17 = sub_1000258CC();
  v19 = v18;

  if (v17 == sub_1000258CC() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_100025CAC();

    if ((v22 & 1) == 0)
    {

      goto LABEL_12;
    }
  }

  v26 = v15;
  v27 = sub_1000257BC();
  v28 = sub_100025A0C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "### Configuration returned error: %@", v29, 0xCu);
    sub_10000EBFC(v30, &qword_10003B518, &qword_100027008);
  }

  if ([v26 code] != 2 && objc_msgSend(v26, "code") != 1)
  {
    v52 = sub_1000257BC();
    v53 = sub_100025A0C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Received configuration info response with unexpected failure", v54, 2u);
    }

    sub_10000808C(0, 0xD00000000000001CLL, 0x80000001000281F0, 1);
    goto LABEL_35;
  }

LABEL_20:
  v32 = *&v3[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount];
  if (!v32)
  {
    v24 = 0x80000001000281D0;
    v25 = 2;
    v23 = 0xD000000000000015;
    goto LABEL_26;
  }

  v33 = v32;
  v34 = sub_1000257BC();
  v35 = sub_1000259EC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Received configuration info response", v36, 2u);
  }

  if (a1)
  {
    v37 = a1;
  }

  else
  {
    v37 = sub_10000DFE8(&_swiftEmptyArrayStorage);
  }

  v38 = *&v3[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager];

  if (v38)
  {
    v39 = [v38 homes];
    sub_10000E970(0, &qword_10003B388, HMHome_ptr);
    v40 = sub_10002597C();
  }

  else
  {
    v40 = &_swiftEmptyArrayStorage;
  }

  v26 = v33;
  v41 = sub_10001AE28(v37, v40, v26);
  v43 = v42;
  v45 = v44;

  v46 = &v3[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel];
  v47 = *&v3[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel];
  v48 = *&v3[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 8];
  v49 = *&v3[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configModel + 16];
  *v46 = v41;
  v46[1] = v43;
  v46[2] = v45;
  sub_10000E9B8(v47, v48);
  v50 = v3[v6];
  v3[v6] = 4;
  v51 = sub_100004124(v50);
  sub_1000051E4(v51);
LABEL_35:
}

uint64_t sub_10000CBA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_10002577C();
    sub_10000E970(0, &qword_10003B508, MediaService_ptr);
    sub_10000EA84(&qword_10003B510, &type metadata accessor for UUID);
    v4 = sub_10002587C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_10000CC94()
{
  v32 = sub_10002580C();
  v35 = *(v32 - 8);
  v1 = *(v35 + 64);
  __chkstk_darwin(v32);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002583C();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000257FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10002585C();
  v29 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v29 - v18;
  if ((*(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags) & 0x80) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = 500;
  }

  v30 = *(v0 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_dispatchQueue);
  sub_10002584C();
  *v11 = v20;
  (*(v8 + 104))(v11, enum case for DispatchTimeInterval.milliseconds(_:), v7);
  sub_10002586C();
  (*(v8 + 8))(v11, v7);
  v21 = *(v13 + 8);
  v21(v17, v12);
  v22 = swift_allocObject();
  *(v22 + 16) = v0;
  aBlock[4] = sub_10000ECFC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C280;
  aBlock[3] = &unk_100035308;
  v23 = _Block_copy(aBlock);
  v24 = v0;
  sub_10002582C();
  v36 = _swiftEmptyArrayStorage;
  sub_10000EA84(&qword_10003B538, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002370(&qword_10003B540, "V\x1B");
  sub_10000ECA4(&qword_10003B548, &qword_10003B540, "V\x1B");
  v25 = v31;
  v26 = v32;
  sub_100025B1C();
  v27 = v30;
  sub_100025A3C();
  _Block_release(v23);

  (*(v35 + 8))(v25, v26);
  (*(v33 + 8))(v6, v34);
  v21(v19, v29);
}

char *sub_10000D12C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100025C3C();
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
  result = sub_10001F1F8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_100025BBC();
        sub_10000E970(0, &qword_10003B388, HMHome_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10001F1F8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10000ECEC(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10000E970(0, &qword_10003B388, HMHome_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10001F1F8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10000ECEC(v12, &v3[4 * v11 + 4]);
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

void sub_10000D328(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = sub_10002577C();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v49);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a2)
    {
      swift_errorRetain();
      v13 = sub_1000257BC();
      v14 = sub_100025A0C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v50[0] = v16;
        *v15 = 136315138;
        swift_getErrorValue();
        v17 = sub_100025CDC();
        v19 = sub_10001EB4C(v17, v18, v50);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v13, v14, "Failed to setup media service in requested homes: %s", v15, 0xCu);
        sub_10000E734(v16);
      }

      else
      {
      }
    }

    else
    {
      v20 = *(a4 + 16);
      v21 = _swiftEmptyArrayStorage;
      if (v20)
      {
        v44 = Strong;
        v45 = a1;
        v50[0] = _swiftEmptyArrayStorage;
        sub_10001F218(0, v20, 0);
        v21 = v50[0];
        v23 = *(v7 + 16);
        v22 = v7 + 16;
        v24 = a4 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
        v46 = *(v22 + 56);
        v47 = v23;
        v48 = v22;
        v25 = (v22 - 8);
        do
        {
          v26 = v49;
          v47(v10, v24, v49);
          v27 = sub_10002572C();
          v29 = v28;
          (*v25)(v10, v26);
          v50[0] = v21;
          v31 = v21[2];
          v30 = v21[3];
          if (v31 >= v30 >> 1)
          {
            sub_10001F218((v30 > 1), v31 + 1, 1);
            v21 = v50[0];
          }

          v21[2] = v31 + 1;
          v32 = &v21[2 * v31];
          v32[4] = v27;
          v32[5] = v29;
          v24 += v46;
          --v20;
        }

        while (v20);
        LOBYTE(a1) = v45;
        v12 = v44;
      }

      v50[0] = v21;
      sub_100002370(&qword_10003B560, &qword_100027040);
      sub_10000ECA4(&qword_10003B568, &qword_10003B560, &qword_100027040);
      v33 = sub_10002589C();
      v35 = v34;

      v36 = sub_1000257BC();
      v37 = sub_1000259EC();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v50[0] = v39;
        *v38 = 136380675;
        v40 = sub_10001EB4C(v33, v35, v50);

        *(v38 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v36, v37, "Successfully setup media service in homes: %{private}s", v38, 0xCu);
        sub_10000E734(v39);
      }

      else
      {
      }
    }

    v41 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v42 = v12[v41];
    v12[v41] = a1 & 1;
    v43 = sub_100004124(v42);
    sub_1000051E4(v43);
  }
}

uint64_t sub_10000D818(void *a1)
{
  v2 = v1;
  v4 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v47 - v6;
  v8 = sub_10002577C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v47 - v14;
  if (!a1)
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_100025BAC(34);

    v49 = 0xD00000000000001FLL;
    v50 = 0x8000000100028250;
    v22 = *(v2 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID + 8);
    v51 = *(v2 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID);
    v52 = v22;

    sub_100002370(&qword_10003B530, &unk_100027020);
    v54._countAndFlagsBits = sub_1000258EC();
    sub_10002592C(v54);

    v55._countAndFlagsBits = 63;
    v55._object = 0xE100000000000000;
    sub_10002592C(v55);
    sub_10000808C(2, v49, v50, 1);
  }

  v16 = a1;
  v17 = [v16 serviceID];
  sub_1000258CC();

  sub_10002571C();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000EBFC(v7, &qword_10003B4F0, &qword_100027000);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_100025BAC(42);

    v49 = 0xD000000000000028;
    v50 = 0x8000000100028270;
    v18 = [v16 serviceID];
    v19 = sub_1000258CC();
    v21 = v20;

    v53._countAndFlagsBits = v19;
    v53._object = v21;
    sub_10002592C(v53);

    sub_10000808C(0, v49, v50, 1);
  }

  v48 = v16;
  (*(v9 + 32))(v15, v7, v8);
  (*(v9 + 16))(v13, v15, v8);
  v24 = sub_1000257BC();
  v25 = sub_1000259EC();
  v26 = os_log_type_enabled(v24, v25);
  v47[1] = v9;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    v49 = v47[0];
    *v27 = 136380675;
    sub_10000EA84(&qword_10003B4F8, &type metadata accessor for UUID);
    v28 = sub_100025C9C();
    v30 = v29;
    v31 = *(v9 + 8);
    v31(v13, v8);
    v32 = sub_10001EB4C(v28, v30, &v49);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "Service ID = %{private}s", v27, 0xCu);
    sub_10000E734(v47[0]);

    v33 = v31;
  }

  else
  {

    v33 = *(v9 + 8);
    v33(v13, v8);
  }

  v34 = *(v2 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount);
  v35 = v48;
  if (v34)
  {
    v36 = v34;
    isa = sub_10002573C().super.isa;
    [v36 setServiceID:isa];
  }

  v38 = [v35 configurationPublicKey];
  v39 = sub_1000258CC();
  v41 = v40;

  v42 = (v2 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configPublicKey);
  v43 = *(v2 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_configPublicKey + 8);
  *v42 = v39;
  v42[1] = v41;

  v44 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v45 = *(v2 + v44);
  *(v2 + v44) = 4;
  v46 = sub_100004124(v45);
  sub_1000051E4(v46);

  return (v33)(v15, v8);
}

void sub_10000DDAC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_10000DE1C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags);
  v3 = sub_1000257BC();
  v4 = sub_1000259EC();
  v5 = os_log_type_enabled(v3, v4);
  if ((v2 & 0x20) != 0)
  {
    if (v5)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Simulating error via test flag", v10, 2u);
    }

    sub_10000808C(3, 0xD000000000000018, 0x8000000100028350, 0);
  }

  else
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Skipping setup via test flags", v6, 2u);
    }

    v7 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
    swift_beginAccess();
    v8 = *(a1 + v7);
    *(a1 + v7) = 28;
    v9 = sub_100004124(v8);
  }

  return sub_1000051E4(v9);
}

uint64_t type metadata accessor for SetupSession()
{
  result = qword_10003B470;
  if (!qword_10003B470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000DFE8(uint64_t a1)
{
  v2 = sub_100002370(&qword_10003B520, &qword_100027010);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002370(&qword_10003B528, &qword_100027018);
    v8 = sub_100025C6C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000EB94(v10, v6, &qword_10003B520, &qword_100027010);
      result = sub_100013FCC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_10002577C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
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

void _s21MediaSetupViewService0B7SessionC25homeManagerDidUpdateHomesyySo06HMHomeG0CF_0()
{
  v0[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_checklist + 4] = 1;
  v1 = v0;
  v2 = sub_1000257BC();
  v3 = sub_1000259EC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v4 = 136315395;
    *(v4 + 4) = sub_10001EB4C(0xD00000000000001DLL, 0x8000000100028390, v13);
    *(v4 + 12) = 2081;
    v5 = *&v1[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homeKitManager];
    if (v5)
    {
      v6 = [v5 homes];
      sub_10000E970(0, &qword_10003B388, HMHome_ptr);
      sub_10002597C();
    }

    sub_10000E970(0, &qword_10003B388, HMHome_ptr);
    v7 = sub_10002598C();
    v9 = v8;

    v10 = sub_10001EB4C(v7, v9, v13);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s %{private}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v11 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v12 = v1[v11];
  v1[v11] = 4;
  sub_100004124(v12);
  sub_1000051E4();
}

uint64_t sub_10000E3FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_homesToSetup;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_10000E45C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10000E4B4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_state;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  return sub_100004124(v5);
}

uint64_t sub_10000E518()
{
  result = sub_1000257DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Checklist(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
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

uint64_t storeEnumTagSinglePayload for Checklist(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10000E734(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_10000E780(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != 1)
  {

    v5 = a4;
  }
}

uint64_t sub_10000E88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002370(&qword_10003B4F0, &qword_100027000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E8FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E970(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10000E9B8(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

void *sub_10000EA20(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

uint64_t sub_10000EA84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EACC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000EB14()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EB4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000EB94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002370(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000EBFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002370(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000EC5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ECA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000EACC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_10000ECEC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000ED04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ED4C()
{
  v1 = *(v0 + 24);

  if (*(v0 + 96))
  {
    if (*(v0 + 48) != 1)
    {
      v2 = *(v0 + 48);

      v3 = *(v0 + 80);

      v4 = *(v0 + 96);
    }
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10000EDEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000EDFC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000EE0C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_10000EE44(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_10000EE54(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10000EE64(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8)
  {
    sub_10000EEA4(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_10000EEA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

id sub_10000EF38(void *a1, uint64_t a2)
{
  v36 = *(a2 + 48);
  v4 = [v36 serviceName];
  v5 = sub_1000258CC();
  v7 = v6;

  v8 = *a2;
  v9 = *(a2 + 8);
  v34 = *(a2 + 24);
  v32._object = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = objc_opt_self();

  v12 = [v11 mainBundle];
  v32._countAndFlagsBits = 0xE000000000000000;
  v37._object = 0x80000001000283F0;
  v37._countAndFlagsBits = 0xD00000000000001DLL;
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v13.super.isa = v12;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_10002567C(v37, v38, v13, v39, v32);

  sub_100002370(&qword_10003B2F8, "\n%");
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100026BD0;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100004010();
  *(v14 + 32) = v5;
  *(v14 + 40) = v7;
  sub_1000258DC();

  sub_10001FA48(0, v5, v7, v8, v9);

  v35 = a1;
  v15 = sub_1000160B8(v35);

  v16 = v15;
  sub_10001FA48(38, v33, v10, 0, 0);

  v17 = sub_1000235DC(0);

  [v17 addTarget:v16 action:"selectSwitchAccounts" forControlEvents:64];
  v18 = [v16 buttonTray];
  [v18 addButton:v17];

  if (v34)
  {
    v19 = [v34 accountName];
    v20 = sub_1000258CC();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  sub_10001FA48(34, v20, v22, 0, 0);

  v23 = sub_1000235DC(1);

  [v23 addTarget:v16 action:"selectKeepUsing" forControlEvents:64];

  v24 = [v16 buttonTray];
  [v24 addButton:v23];

  v25 = *(a2 + 56);
  v26 = *(a2 + 64);
  v27 = objc_allocWithZone(type metadata accessor for MainContentView());
  swift_bridgeObjectRetain_n();
  v28 = v36;
  v29 = sub_100023CA0(0, v25, v26, v28);
  v30 = [v16 contentView];

  [v30 addSubview:v29];
  sub_10001FD28();

  sub_10000F438(a2);

  return v16;
}

void sub_10000F344(char *a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = *(*&a1[OBJC_IVAR____TtC21MediaSetupViewService23SetupBaseViewController_mainController] + OBJC_IVAR___MediaSetupNavigationController_setupSession);
  if (v3)
  {
    memset(v7, 0, sizeof(v7));
    v6 = a1;
    v5 = v3;
    sub_1000056D4(a3, v7);
  }
}

id sub_10000F3E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountMismatchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10000F468(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10000F48C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000F4D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10000F534()
{
  v1 = v0;
  v2 = sub_1000257BC();
  v3 = sub_1000259EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = *(&v1->isa + OBJC_IVAR___MediaSetupNavigationController_waiting);

    _os_log_impl(&_mh_execute_header, v2, v3, "Update, waiting=%{BOOL}d", v4, 8u);
  }

  else
  {

    v2 = v1;
  }

  if (*(&v1->isa + OBJC_IVAR___MediaSetupNavigationController_waiting) == 1)
  {
    [v1 setModalInPresentation:1];
    v12 = [objc_allocWithZone(UIActivityIndicatorView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [v1 topViewController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationItem];

      sub_100002370(&qword_10003B7B0, &unk_1000271F0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100027110;
      *(v8 + 32) = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v12];
      sub_10000E970(0, &qword_10003B7B8, UIBarButtonItem_ptr);
      isa = sub_10002596C().super.isa;

      [v7 setRightBarButtonItems:isa animated:1];
    }

    [v12 startAnimating];
  }

  else
  {
    [v1 setModalInPresentation:0];
    v10 = [v1 topViewController];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = [v10 navigationItem];

    [v12 setRightBarButtonItems:0 animated:1];
  }
}

void sub_10000F7D8(void *a1)
{
  v2 = sub_1000257BC();
  v3 = sub_1000259EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Begin extension request", v4, 2u);
  }

  sub_10000F900(a1);
}

void sub_10000F900(void *a1)
{
  v2 = v1;
  v3 = [a1 inputItems];
  v4 = sub_10002597C();

  if (!*(v4 + 16))
  {

    return;
  }

  sub_1000157C0(v4 + 32, v47);

  sub_10000E970(0, &qword_10003B788, NSExtensionItem_ptr);
  if (swift_dynamicCast())
  {
    v5 = v48[0];
    v6 = [v48[0] userInfo];
    if (v6)
    {
      v7 = v6;
      v8 = sub_10002587C();

      v42 = sub_1000258CC();
      v45 = v9;
      sub_100025B5C();
      if (*(v8 + 16) && (v10 = sub_100014064(v47), (v11 & 1) != 0))
      {
        sub_1000157C0(*(v8 + 56) + 32 * v10, v48);
        sub_10001581C(v47);
        if (swift_dynamicCast())
        {

          v12 = sub_1000257BC();
          v13 = sub_1000259EC();

          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v47[0] = v15;
            *v14 = 136315138;
            *(v14 + 4) = sub_10001EB4C(v42, v45, v47);
            _os_log_impl(&_mh_execute_header, v12, v13, "HostBundleID: %s", v14, 0xCu);
            sub_10000E734(v15);
          }

          v16 = (v2 + OBJC_IVAR___MediaSetupNavigationController_hostBundleID);
          v17 = *(v2 + OBJC_IVAR___MediaSetupNavigationController_hostBundleID + 8);
          *v16 = v42;
          v16[1] = v45;
        }
      }

      else
      {
        sub_10001581C(v47);
      }

      v43 = sub_1000258CC();
      v46 = v18;
      sub_100025B5C();
      if (*(v8 + 16) && (v19 = sub_100014064(v47), (v20 & 1) != 0))
      {
        sub_1000157C0(*(v8 + 56) + 32 * v19, v48);
        sub_10001581C(v47);
        if (swift_dynamicCast())
        {
          sub_10000E970(0, &qword_10003B7A0, NSKeyedUnarchiver_ptr);
          sub_100025A2C();
          if (v47[3])
          {
            sub_10000E970(0, &qword_10003B7A8, MSServiceAccount_ptr);
            if (swift_dynamicCast())
            {
              v34 = v48[0];
              v35 = sub_1000257BC();
              v36 = sub_1000259EC();

              if (os_log_type_enabled(v35, v36))
              {
                v37 = swift_slowAlloc();
                log = v35;
                v38 = swift_slowAlloc();
                *v37 = 138477827;
                *(v37 + 4) = v34;
                *v38 = v34;
                v39 = v34;
                _os_log_impl(&_mh_execute_header, log, v36, "serviceAccount: %{private}@", v37, 0xCu);
                sub_10000EBFC(v38, &qword_10003B518, &qword_100027008);

                sub_100015870(v43, v46);
              }

              else
              {
                sub_100015870(v43, v46);
              }

              v40 = *(v2 + OBJC_IVAR___MediaSetupNavigationController_serviceAccount);
              *(v2 + OBJC_IVAR___MediaSetupNavigationController_serviceAccount) = v34;
            }

            else
            {
              sub_100015870(v43, v46);
            }
          }

          else
          {
            sub_100015870(v43, v46);
            sub_10000EBFC(v47, &qword_10003B718, &unk_1000271D0);
          }
        }
      }

      else
      {
        sub_10001581C(v47);
      }

      v44 = sub_1000258CC();
      sub_100025B5C();
      if (!*(v8 + 16) || (v21 = sub_100014064(v47), (v22 & 1) == 0))
      {

        sub_10001581C(v47);
        return;
      }

      sub_1000157C0(*(v8 + 56) + 32 * v21, v48);
      sub_10001581C(v47);

      sub_10000E970(0, &unk_10003B790, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v23 = v44;
        v24 = sub_1000257BC();
        v25 = sub_1000259FC();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138412290;
          *(v26 + 4) = v23;
          *v27 = v23;
          v28 = v23;
          _os_log_impl(&_mh_execute_header, v24, v25, "Test flags: %@", v26, 0xCu);
          sub_10000EBFC(v27, &qword_10003B518, &qword_100027008);
        }

        v29 = [v23 unsignedLongLongValue];
        v30 = v2 + OBJC_IVAR___MediaSetupNavigationController_testFlags;
        *v30 = v29;
        *(v30 + 8) = 0;
        return;
      }
    }

    else
    {
      v31 = sub_1000257BC();
      v32 = sub_100025A0C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "No info to extract?", v33, 2u);
      }
    }
  }
}

void sub_100010018()
{
  v0 = sub_1000257BC();
  v1 = sub_1000259EC();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v4 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10001EB4C(0xD000000000000023, 0x80000001000285F0, &v4);
    _os_log_impl(&_mh_execute_header, v0, v1, "%s", v2, 0xCu);
    sub_10000E734(v3);
  }

  sub_100010130();
}

void sub_100010130()
{
  v1 = OBJC_IVAR___MediaSetupNavigationController_setupSession;
  if (!*&v0[OBJC_IVAR___MediaSetupNavigationController_setupSession])
  {
    v2 = v0;
    v3 = sub_1000257BC();
    v4 = sub_1000259EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Starting setup session", v5, 2u);
    }

    v6 = [objc_allocWithZone(type metadata accessor for SetupSession()) init];
    v7 = *&v2[OBJC_IVAR___MediaSetupNavigationController_serviceAccount];
    v8 = *&v6[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount];
    *&v6[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_serviceAccount] = v7;
    v9 = v7;

    [v2 _hostAuditToken];
    v10 = v23;
    v11 = &v6[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostAuditToken];
    *v11 = v22;
    *(v11 + 1) = v10;
    v11[32] = 0;
    v12 = *&v2[OBJC_IVAR___MediaSetupNavigationController_hostBundleID + 8];
    v13 = &v6[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID];
    v14 = *&v6[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_hostBundleID + 8];
    *v13 = *&v2[OBJC_IVAR___MediaSetupNavigationController_hostBundleID];
    *(v13 + 1) = v12;

    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    v16 = &v6[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_progressHandler];
    v17 = *&v6[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_progressHandler];
    v18 = *&v6[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_progressHandler + 8];
    *v16 = sub_100015958;
    v16[1] = v15;
    v19 = v2;
    sub_10000EDFC(v17);
    if (v19[OBJC_IVAR___MediaSetupNavigationController_testFlags + 8])
    {
      v20 = 0;
    }

    else
    {
      v20 = *&v19[OBJC_IVAR___MediaSetupNavigationController_testFlags];
    }

    *&v6[OBJC_IVAR____TtC21MediaSetupViewService12SetupSession_testFlags] = v20;
    sub_100004FE0();
    v21 = *&v2[v1];
    *&v2[v1] = v6;
  }
}

void sub_100010394()
{
  v1 = v0;
  v2 = sub_1000257BC();
  v3 = sub_1000259EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10001EB4C(0x4C64694477656976, 0xED0000292864616FLL, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000E734(v5);
  }

  v6 = type metadata accessor for MediaSetupNavigationController();
  v17.receiver = v1;
  v17.super_class = v6;
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v7 = [v1 interactivePopGestureRecognizer];
  if (v7)
  {
    v8 = v7;
    [v7 setEnabled:0];
  }

  v9 = [v1 navigationItem];
  [v9 setHidesBackButton:1];

  v10 = [v1 presentationController];
  if (v10)
  {
    v11 = v10;
    [v10 setDelegate:v1];
  }

  [v1 setToolbarHidden:1 animated:0];
  v12 = objc_allocWithZone(OBWelcomeController);
  v13 = sub_1000258BC();
  v14 = sub_1000258BC();
  v15 = [v12 initWithTitle:v13 detailText:v14 icon:0];

  [v1 pushViewController:v15 animated:0];
  *(v1 + OBJC_IVAR___MediaSetupNavigationController_waiting) = 1;
  sub_10000F534();
}

id sub_1000106C4(uint64_t ObjCClassFromMetadata, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___MediaSetupNavigationController_hostBundleID];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_serviceAccount] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_setupSession] = 0;
  v6 = &v2[OBJC_IVAR___MediaSetupNavigationController_stepContext];
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v7 = &v2[OBJC_IVAR___MediaSetupNavigationController_testFlags];
  *v7 = 0;
  v7[8] = 1;
  sub_1000257CC();
  v2[OBJC_IVAR___MediaSetupNavigationController_firstVC] = 1;
  v2[OBJC_IVAR___MediaSetupNavigationController_dismissed] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_vcAccountMismatch] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_vcAddToHome] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_vcMultiHomeCustomize] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_vcDone] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_vcLearnMore] = 0;
  *&v2[OBJC_IVAR___MediaSetupNavigationController_vcSoftwareUpdate] = 0;
  v2[OBJC_IVAR___MediaSetupNavigationController_waiting] = 0;
  if (ObjCClassFromMetadata)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  if (a2)
  {
    a2 = swift_getObjCClassFromMetadata();
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for MediaSetupNavigationController();
  return objc_msgSendSuper2(&v9, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, a2);
}

id sub_1000108E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR___MediaSetupNavigationController_hostBundleID];
  *v6 = 0;
  v6[1] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_serviceAccount] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_setupSession] = 0;
  v7 = &v3[OBJC_IVAR___MediaSetupNavigationController_stepContext];
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v8 = &v3[OBJC_IVAR___MediaSetupNavigationController_testFlags];
  *v8 = 0;
  v8[8] = 1;
  sub_1000257CC();
  v3[OBJC_IVAR___MediaSetupNavigationController_firstVC] = 1;
  v3[OBJC_IVAR___MediaSetupNavigationController_dismissed] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_vcAccountMismatch] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_vcAddToHome] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_vcMultiHomeCustomize] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_vcDone] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_vcLearnMore] = 0;
  *&v3[OBJC_IVAR___MediaSetupNavigationController_vcSoftwareUpdate] = 0;
  v3[OBJC_IVAR___MediaSetupNavigationController_waiting] = 0;
  if (a2)
  {
    v9 = sub_1000258BC();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for MediaSetupNavigationController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100010AE8(void *a1)
{
  v3 = &v1[OBJC_IVAR___MediaSetupNavigationController_hostBundleID];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_serviceAccount] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_setupSession] = 0;
  v4 = &v1[OBJC_IVAR___MediaSetupNavigationController_stepContext];
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v5 = &v1[OBJC_IVAR___MediaSetupNavigationController_testFlags];
  *v5 = 0;
  v5[8] = 1;
  sub_1000257CC();
  v1[OBJC_IVAR___MediaSetupNavigationController_firstVC] = 1;
  v1[OBJC_IVAR___MediaSetupNavigationController_dismissed] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcAccountMismatch] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcAddToHome] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcMultiHomeCustomize] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcDone] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcLearnMore] = 0;
  *&v1[OBJC_IVAR___MediaSetupNavigationController_vcSoftwareUpdate] = 0;
  v1[OBJC_IVAR___MediaSetupNavigationController_waiting] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MediaSetupNavigationController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_100010C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaSetupNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediaSetupNavigationController()
{
  result = qword_10003B6A8;
  if (!qword_10003B6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010E34()
{
  result = sub_1000257DC();
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

void sub_100010F08(unsigned __int8 a1, __int128 *a2)
{
  v3 = v2;
  sub_10001597C(a2, &v25);
  v6 = sub_1000257BC();
  v7 = sub_1000259EC();
  sub_10000EBFC(a2, &qword_10003B7C0, &qword_100026FF8);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136315395;
    v9 = sub_10002158C(a1);
    v11 = sub_10001EB4C(v9, v10, &v23);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2081;
    v12 = a2[1];
    v25 = *a2;
    v26 = v12;
    v13 = a2[3];
    v27 = a2[2];
    v28 = v13;
    sub_10001597C(a2, v24);
    sub_100002370(&qword_10003B7C0, &qword_100026FF8);
    v14 = sub_1000258EC();
    v16 = sub_10001EB4C(v14, v15, &v23);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Handle session event: %s, context: %{private}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v17 = (v3 + OBJC_IVAR___MediaSetupNavigationController_stepContext);
  v18 = *(v3 + OBJC_IVAR___MediaSetupNavigationController_stepContext + 16);
  v25 = *(v3 + OBJC_IVAR___MediaSetupNavigationController_stepContext);
  v26 = v18;
  v19 = *(v3 + OBJC_IVAR___MediaSetupNavigationController_stepContext + 48);
  v27 = *(v3 + OBJC_IVAR___MediaSetupNavigationController_stepContext + 32);
  v28 = v19;
  v20 = a2[1];
  *v17 = *a2;
  v17[1] = v20;
  v21 = a2[3];
  v17[2] = a2[2];
  v17[3] = v21;
  sub_10000EBFC(&v25, &qword_10003B7C0, &qword_100026FF8);
  switch(a1)
  {
    case 2u:
      sub_10001597C(a2, v24);
      return;
    case 3u:
    case 0xAu:
      sub_10001597C(a2, v24);
      v22 = -126;
      goto LABEL_17;
    case 4u:
      sub_10001597C(a2, v24);
      v22 = -125;
      goto LABEL_17;
    case 5u:
      sub_10001597C(a2, v24);
      v22 = 0x80;
      goto LABEL_17;
    case 6u:
      sub_10001597C(a2, v24);
      v22 = 2;
      goto LABEL_17;
    case 7u:
      sub_10001597C(a2, v24);
      v22 = -127;
      goto LABEL_17;
    case 8u:
      sub_10001597C(a2, v24);
      v22 = -63;
      goto LABEL_17;
    case 9u:
      sub_10001597C(a2, v24);
      v22 = -64;
      goto LABEL_17;
    case 0xBu:
      sub_10001597C(a2, v24);
      sub_100011B3C(1u);
      return;
    case 0xCu:
      sub_10001597C(a2, v24);
      v22 = -62;
      goto LABEL_17;
    case 0xDu:
      sub_10001597C(a2, v24);
      sub_100011E04();
      return;
    case 0xEu:
      sub_10001597C(a2, v24);
      v22 = 1;
      goto LABEL_17;
    default:
      sub_10001597C(a2, v24);
      v22 = a1 & 1 | 0x40;
LABEL_17:
      sub_10001127C(v22);
      return;
  }
}

void sub_10001127C(unsigned __int8 a1)
{
  if (v1[OBJC_IVAR___MediaSetupNavigationController_dismissed])
  {
    oslog = sub_1000257BC();
    v3 = sub_100025A0C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *&v79 = v5;
      *v4 = 136315138;
      v6 = sub_100022C88(a1);
      v8 = sub_10001EB4C(v6, v7, &v79);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "### Dismiss already requested, not showing UI (%s)", v4, 0xCu);
      sub_10000E734(v5);

      return;
    }

    goto LABEL_36;
  }

  v9 = *&v1[OBJC_IVAR___MediaSetupNavigationController_serviceAccount];
  if (v9 && (v10 = *&v1[OBJC_IVAR___MediaSetupNavigationController_hostBundleID + 8]) != 0)
  {
    v11 = *&v1[OBJC_IVAR___MediaSetupNavigationController_hostBundleID];
    if ((a1 >> 6) <= 1u)
    {
      if (a1 >> 6)
      {
        v22 = objc_allocWithZone(type metadata accessor for SoftwareUpdateViewController());
        v23 = v9;
        swift_bridgeObjectRetain_n();
        v24 = v23;
        v25 = sub_10001C0F0(v1, v24, v11, v10, a1 & 1);

        v13 = v25;
LABEL_43:
        v55 = v25;
        sub_100013038(v55);

        return;
      }

      v12 = OBJC_IVAR___MediaSetupNavigationController_vcAddToHome;
      v13 = *&v1[OBJC_IVAR___MediaSetupNavigationController_vcAddToHome];
      if (!v13)
      {
        v15 = objc_allocWithZone(type metadata accessor for AddToHomeViewController());
        v16 = v9;
        swift_bridgeObjectRetain_n();
        v13 = sub_1000018B0(v1, a1, v16, v11, v10);
        v17 = *&v1[v12];
        *&v1[v12] = v13;
LABEL_42:
        v25 = v13;

        goto LABEL_43;
      }

LABEL_33:
      v45 = v9;

      v25 = v13;
      goto LABEL_43;
    }

    if (a1 >> 6 == 3)
    {
      if (a1 != 192)
      {
        if (a1 == 193)
        {
          oslog = v9;

          sub_1000122A0();
        }

        else
        {
          oslog = v9;

          sub_100012684();
        }

        goto LABEL_35;
      }

      v34 = OBJC_IVAR___MediaSetupNavigationController_vcLearnMore;
      v13 = *&v1[OBJC_IVAR___MediaSetupNavigationController_vcLearnMore];
      if (v13)
      {
        goto LABEL_33;
      }

      objc_allocWithZone(type metadata accessor for LearnMoreViewController());
      v41 = v9;
      swift_bridgeObjectRetain_n();
      v42 = v41;
      v43 = v1;
      v44 = v11;
      v39 = v1;
      v40 = sub_1000162F0(v43, v42, v44, v10);
      goto LABEL_41;
    }

    if (a1 > 0x81u)
    {
      if (a1 != 130)
      {
        oslog = v9;

        sub_100011EC4();
LABEL_35:

LABEL_36:

        return;
      }

      v34 = OBJC_IVAR___MediaSetupNavigationController_vcDone;
      v13 = *&v1[OBJC_IVAR___MediaSetupNavigationController_vcDone];
      if (v13)
      {
        goto LABEL_33;
      }

      objc_allocWithZone(type metadata accessor for DoneViewController());
      v35 = v9;
      swift_bridgeObjectRetain_n();
      v36 = v35;
      v37 = v1;
      v38 = v11;
      v39 = v1;
      v40 = sub_100015C9C(v37, v36, v38, v10);
LABEL_41:
      v13 = v40;
      v17 = *&v39[v34];
      *&v39[v34] = v40;
      goto LABEL_42;
    }

    if (a1 == 128)
    {
      v26 = OBJC_IVAR___MediaSetupNavigationController_vcAccountMismatch;
      v13 = *&v1[OBJC_IVAR___MediaSetupNavigationController_vcAccountMismatch];
      if (v13)
      {
        goto LABEL_33;
      }

      v27 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 16];
      v71 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext];
      v72 = v27;
      v28 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 48];
      v73 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 32];
      v74 = v28;
      v29 = *(&v71 + 1);
      v30 = *(&v72 + 1);
      if (*(&v28 + 1))
      {
        v70[0] = v71;
        v70[1] = v72;
        v70[2] = v73;
        v70[3] = v28;
        v66 = *(&v73 + 1);
        osloga = v73;
        v31 = v71;
        v32 = v72;
        v33 = v9;
        swift_bridgeObjectRetain_n();
        v67 = v33;
        sub_10001597C(&v71, &v79);
        sub_10000E780(v31, v29, v32, v30);
        sub_10000EBFC(v70, &qword_10003B7C0, &qword_100026FF8);
        if (v29 != 1)
        {
          v79 = __PAIR128__(v29, v31);
          LOBYTE(v80) = v32 & 1;
          *(&v80 + 1) = v30;
          v81 = __PAIR128__(v66, osloga);
          *&v82 = v67;
          *(&v82 + 1) = v11;
          v83 = v10;
          v64 = objc_allocWithZone(type metadata accessor for AccountMismatchViewController());
          v13 = sub_10000EF38(v1, &v79);
          v65 = *&v1[v26];
          *&v1[v26] = v13;
          v25 = v13;

          goto LABEL_43;
        }
      }

      else
      {
        v79 = v71;
        v80 = v72;
        v81 = v73;
        v82 = v28;
        v56 = v9;

        sub_10001597C(&v71, v70);
        sub_10000EBFC(&v79, &qword_10003B7C0, &qword_100026FF8);
      }

      v57 = sub_1000257BC();
      v58 = sub_100025A0C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "User had mismatched account but had no context to construct the view", v59, 2u);
      }

      sub_100011EC4();
    }

    else
    {
      v34 = OBJC_IVAR___MediaSetupNavigationController_vcMultiHomeCustomize;
      v13 = *&v1[OBJC_IVAR___MediaSetupNavigationController_vcMultiHomeCustomize];
      if (v13)
      {
        goto LABEL_33;
      }

      v46 = &v1[OBJC_IVAR___MediaSetupNavigationController_stepContext];
      v47 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 16];
      v79 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext];
      v80 = v47;
      v48 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 48];
      v81 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 32];
      v82 = v48;
      v75 = v79;
      v76 = v47;
      v77 = v81;
      v78 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 48];
      if (*(&v48 + 1))
      {
        v49 = *(v46 + 1);
        v71 = *v46;
        v72 = v49;
        v73 = *(v46 + 2);
        *&v74 = *(v46 + 6);
        *(&v74 + 1) = *(&v48 + 1);
        v50 = v9;

        sub_10001597C(&v79, v70);

        sub_10000EBFC(&v71, &qword_10003B7C0, &qword_100026FF8);

        *&v70[0] = sub_100015018(v51);
        sub_100014330(v70);

        v52 = *&v70[0];
        objc_allocWithZone(type metadata accessor for MultiHomeCustomizeViewController());
        v53 = v1;
        v54 = v52;
        v39 = v1;
        sub_10001C890(v53, v54, v50);
        goto LABEL_41;
      }

      v60 = v9;

      sub_10001597C(&v79, &v71);
      v71 = v75;
      v72 = v76;
      v73 = v77;
      v74 = v78;
      sub_10000EBFC(&v71, &qword_10003B7C0, &qword_100026FF8);
      v61 = sub_1000257BC();
      v62 = sub_100025A0C();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&_mh_execute_header, v61, v62, "User tried to setup multiple homes but had no context which to draw the UI with", v63, 2u);
      }

      sub_100011EC4();
    }
  }

  else
  {
    v18 = sub_1000257BC();
    v19 = sub_100025A0C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Attempted to show UI but lacked the necessary service information to construct views", v20, 2u);
    }

    sub_100011EC4();
  }
}

uint64_t sub_100011B3C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_1000257BC();
  v5 = sub_1000259EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v26[0] = v7;
    *v6 = 136315138;
    v8 = 0xED00006574656C70;
    v9 = 0x6D6F437075746573;
    v10 = 0xED000065726F4D6ELL;
    v11 = 0x7261654C72657375;
    v12 = 0x8000000100028050;
    v13 = 0xD000000000000010;
    if (a1 != 3)
    {
      v13 = 0x6E776F6E6B6E75;
      v12 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v11 = v13;
      v10 = v12;
    }

    if (a1)
    {
      v9 = 1919251317;
      v8 = 0xE400000000000000;
    }

    if (a1 <= 1u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    if (a1 <= 1u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }

    v16 = sub_10001EB4C(v14, v15, v26);

    *(v6 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Requesting dismiss (%s)", v6, 0xCu);
    sub_10000E734(v7);
  }

  v2[OBJC_IVAR___MediaSetupNavigationController_dismissed] = 1;
  v17 = OBJC_IVAR___MediaSetupNavigationController_setupSession;
  v18 = *&v2[OBJC_IVAR___MediaSetupNavigationController_setupSession];
  if (v18)
  {
    v19 = v18;
    sub_100006D18(a1);
  }

  if (!a1)
  {
    v20 = *&v2[v17];
    if (v20)
    {
      v21 = v20;
      sub_100006484();
    }
  }

  if ([v2 _remoteViewControllerProxy])
  {
    sub_100025AFC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (!*(&v25 + 1))
  {
    return sub_10000EBFC(v26, &qword_10003B718, &unk_1000271D0);
  }

  sub_100002370(&qword_10003B780, &unk_1000271E0);
  result = swift_dynamicCast();
  if (result)
  {
    [v23 requestDismiss];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100011E04()
{
  v1 = v0;
  v2 = sub_1000257BC();
  v3 = sub_1000259EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Handle setup started", v4, 2u);
  }

  *(v1 + OBJC_IVAR___MediaSetupNavigationController_waiting) = 1;

  sub_10000F534();
}

void sub_100011EC4()
{
  v1 = v0;
  v0[OBJC_IVAR___MediaSetupNavigationController_waiting] = 0;
  sub_10000F534();
  v2 = sub_1000257BC();
  v3 = sub_1000259FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Presenting error alert", v4, 2u);
  }

  v5 = *&v1[OBJC_IVAR___MediaSetupNavigationController_serviceAccount];
  if (v5)
  {
    v6 = [v5 serviceName];
    v7 = sub_1000258CC();
    v9 = v8;
  }

  else
  {
    v9 = 0xE100000000000000;
    v7 = 63;
  }

  sub_10000E970(0, &unk_10003B800, UIAlertController_ptr);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = v1;
  v12 = sub_1000200F8(v7, v9, sub_100015C24, v10);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v16[4] = sub_100015C2C;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10000C280;
  v16[3] = &unk_100035570;
  v14 = _Block_copy(v16);
  v15 = v11;

  [v15 presentViewController:v12 animated:1 completion:v14];
  _Block_release(v14);
}

void sub_1000120EC(uint64_t a1)
{
  v2 = sub_1000257BC();
  v3 = sub_1000259FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Dismissing error alert", v4, 2u);
  }

  v5 = *(a1 + OBJC_IVAR___MediaSetupNavigationController_setupSession);
  if (v5)
  {
    memset(v7, 0, sizeof(v7));
    v6 = v5;
    sub_1000056D4(0, v7);
  }
}

void sub_1000121F4()
{
  oslog = sub_1000257BC();
  v0 = sub_1000259FC();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v0, "Presented error alert", v1, 2u);
  }
}

uint64_t sub_1000122A0()
{
  v1 = v0;
  v2 = sub_100002370(&qword_10003B7E8, &unk_100027210);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v31 - v4;
  v6 = sub_1000256DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  v13 = sub_1000257BC();
  v14 = sub_1000259EC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Launching learn more website", v15, 2u);
  }

  v16 = [objc_opt_self() mainBundle];
  v30._countAndFlagsBits = 0xE000000000000000;
  v34._object = 0x8000000100028620;
  v34._countAndFlagsBits = 0xD000000000000012;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v17.super.isa = v16;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_10002567C(v34, v35, v17, v36, v30);

  sub_1000256CC();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000EBFC(v5, &qword_10003B7E8, &unk_100027210);
  }

  v19 = *(v7 + 32);
  v19(v12, v5, v6);
  v20 = [objc_opt_self() defaultWorkspace];
  if (v20)
  {
    v22 = v20;
    sub_1000256AC(v21);
    v32 = v23;
    v24 = v1;
    (*(v7 + 16))(v10, v12, v6);
    v25 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v19((v26 + v25), v10, v6);
    aBlock[4] = sub_100015B80;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000134D8;
    aBlock[3] = &unk_1000354A8;
    v27 = _Block_copy(aBlock);
    v28 = v24;

    v29 = v32;
    [v22 openURL:v32 configuration:0 completionHandler:v27];
    _Block_release(v27);
  }

  return (*(v7 + 8))(v12, v6);
}

void sub_100012684()
{
  v1 = v0;
  v2 = sub_100002370(&qword_10003B7E8, &unk_100027210);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v71 - v4;
  v77 = sub_1000256DC();
  v6 = *(v77 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v77);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v71 - v11;
  v12 = sub_10002577C();
  v78 = *(v12 - 8);
  v13 = v78[8];
  v14 = __chkstk_darwin(v12);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v71 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v71 - v21;
  __chkstk_darwin(v20);
  v24 = &v71 - v23;
  v25 = &v1[OBJC_IVAR___MediaSetupNavigationController_stepContext];
  v26 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 16];
  v85[0] = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext];
  v85[1] = v26;
  v27 = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 48];
  v85[2] = *&v1[OBJC_IVAR___MediaSetupNavigationController_stepContext + 32];
  v85[3] = v27;
  v28 = *(&v27 + 1);
  if (!*(&v27 + 1))
  {
    v46 = *(v25 + 1);
    v80 = *v25;
    v81 = v46;
    v82 = *(v25 + 2);
    v83 = *(v25 + 6);
    v84 = 0;
    sub_10001597C(v85, aBlock);
    sub_10000EBFC(&v80, &qword_10003B7C0, &qword_100026FF8);
LABEL_21:
    v68 = sub_1000257BC();
    v69 = sub_100025A0C();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "### Show update in Home without HomeID?", v70, 2u);
    }

    sub_100011EC4();
    return;
  }

  v29 = *(v25 + 1);
  v80 = *v25;
  v81 = v29;
  v82 = *(v25 + 2);
  v83 = *(v25 + 6);
  v84 = *(&v27 + 1);
  sub_10001597C(v85, aBlock);

  sub_10000EBFC(&v80, &qword_10003B7C0, &qword_100026FF8);
  if (v28 >> 62)
  {
    if (sub_100025C3C())
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

    goto LABEL_21;
  }

LABEL_4:
  v75 = v24;
  v74 = v6;
  v73 = v1;
  if ((v28 & 0xC000000000000001) != 0)
  {
    v30 = v12;
    v31 = sub_100025BBC();
  }

  else
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v30 = v12;
    v31 = *(v28 + 32);
  }

  v32 = v78;
  v33 = v78[2];
  v33(v22, v31 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_id, v30);

  v34 = v75;
  (v32[4])(v75, v22, v30);
  v33(v19, v34, v30);
  sub_1000204CC(v19, v5);
  v35 = v74;
  v36 = v77;
  if ((*(v74 + 48))(v5, 1, v77) == 1)
  {
    sub_10000EBFC(v5, &qword_10003B7E8, &unk_100027210);
    v33(v16, v34, v30);
    v37 = sub_1000257BC();
    v38 = sub_100025A0C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136380675;
      sub_100015C34(&qword_10003B4F8, &type metadata accessor for UUID);
      v41 = sub_100025C9C();
      v43 = v42;
      v44 = v78[1];
      v44(v16, v30);
      v45 = sub_10001EB4C(v41, v43, aBlock);

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "### Failed to generate homeURL with homeID %{private}s", v39, 0xCu);
      sub_10000E734(v40);
    }

    else
    {

      v44 = v78[1];
      v44(v16, v30);
    }

    sub_100011EC4();
    v44(v75, v30);
  }

  else
  {
    v47 = v76;
    (*(v35 + 32))(v76, v5, v36);
    (*(v35 + 16))(v10, v47, v36);
    v48 = v73;
    v49 = sub_1000257BC();
    v50 = sub_1000259FC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136315138;
      sub_100015C34(&unk_10003B7F0, &type metadata accessor for URL);
      v53 = sub_100025C9C();
      v55 = v54;
      v72 = *(v35 + 8);
      v72(v10, v77);
      v56 = sub_10001EB4C(v53, v55, aBlock);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "Opening %s", v51, 0xCu);
      sub_10000E734(v52);
      v36 = v77;
    }

    else
    {

      v72 = *(v35 + 8);
      v72(v10, v36);
    }

    v57 = v30;
    v58 = [objc_allocWithZone(_LSOpenConfiguration) init];
    [v58 setSensitive:1];
    v59 = [objc_opt_self() defaultWorkspace];
    v60 = v76;
    if (v59)
    {
      v61 = v59;
      sub_1000256AC(&v86);
      v63 = v62;
      v64 = swift_allocObject();
      *(v64 + 16) = v48;
      aBlock[4] = sub_100015C1C;
      aBlock[5] = v64;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000134D8;
      aBlock[3] = &unk_1000354F8;
      v65 = _Block_copy(aBlock);
      v66 = v58;
      v67 = v48;

      [v61 openURL:v63 configuration:v66 completionHandler:v65];
      _Block_release(v65);
    }

    v72(v60, v36);
    (v78[1])(v75, v57);
  }
}

void sub_100013038(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___MediaSetupNavigationController_firstVC) ^ 1;
  if ((v4 & 1) == 0)
  {
    *(v1 + OBJC_IVAR___MediaSetupNavigationController_firstVC) = 0;
  }

  v5 = sub_1000257BC();
  v6 = sub_1000259FC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v4 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Transitioning animated: %{BOOL}d", v7, 8u);
  }

  v8 = [v2 viewControllers];
  sub_10000E970(0, &qword_10003B7C8, UIViewController_ptr);
  v9 = sub_10002597C();

  v13 = a1;
  __chkstk_darwin(v10);
  v12[2] = &v13;
  v11 = sub_10001C768(sub_1000159EC, v12, v9);

  *(v2 + OBJC_IVAR___MediaSetupNavigationController_waiting) = 0;
  sub_10000F534();
  if (v11)
  {
  }

  else
  {
    [v2 pushViewController:a1 animated:v4 & 1];
  }
}

uint64_t sub_100013214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000256DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v8 + 16))(v11, a4, v7);
    swift_errorRetain();
    v12 = sub_1000257BC();
    v13 = sub_100025A0C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = a3;
      v15 = v14;
      v16 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v15 = 136315394;
      sub_100015C34(&unk_10003B7F0, &type metadata accessor for URL);
      v17 = sub_100025C9C();
      v19 = v18;
      (*(v8 + 8))(v11, v7);
      v20 = sub_10001EB4C(v17, v19, &v26);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2112;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v21;
      *v16 = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "### Failed to open %s: %@", v15, 0x16u);
      sub_10000EBFC(v16, &qword_10003B518, &qword_100027008);

      sub_10000E734(v24);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }

  return sub_100011B3C(2u);
}

uint64_t sub_1000134D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_10002587C();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_100013584(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    v2 = sub_1000257BC();
    v3 = sub_100025A0C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "### Error launching home app: %@", v4, 0xCu);
      sub_10000EBFC(v5, &qword_10003B518, &qword_100027008);
    }

    else
    {
    }
  }

  return sub_100011B3C(3u);
}

id sub_100013844(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol:*a3];

  return v3;
}

uint64_t sub_100013898(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

char *sub_1000138F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002370(&qword_10003B810, &qword_100027220);
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

size_t sub_1000139EC(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100002370(&qword_10003B818, &qword_100027228);
  v10 = *(type metadata accessor for SetupEntitlement(0) - 8);
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
  v15 = *(type metadata accessor for SetupEntitlement(0) - 8);
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

char *sub_100013BC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002370(&unk_10003B4E0, &qword_100026FF0);
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

char *sub_100013CD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002370(&qword_10003B7E0, &qword_100027208);
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

char *sub_100013DD4(uint64_t a1, uint64_t a2)
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

  sub_100002370(&unk_10003B820, qword_100027230);
  v4 = *(type metadata accessor for ConfigurationModelItem() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100013ED0(uint64_t a1, uint64_t a2)
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

  sub_100002370(&qword_10003B7B0, &unk_1000271F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_100013F58(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_100013FCC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10002577C();
  sub_100015C34(&qword_10003B510, &type metadata accessor for UUID);
  v5 = sub_10002588C();

  return sub_1000140A8(a1, v5);
}

unint64_t sub_100014064(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100025B3C(*(v2 + 40));

  return sub_100014268(a1, v4);
}

unint64_t sub_1000140A8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_10002577C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_100015C34(&qword_10003B500, &type metadata accessor for UUID);
      v16 = sub_1000258AC();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100014268(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000158C4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100025B4C();
      sub_10001581C(v8);
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

uint64_t sub_100014330(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10001522C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v5 = v2 + 32;
  v25[0] = v2 + 32;
  v25[1] = v4;
  v6 = sub_100025C8C(v4);
  if (v6 >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = v5;
      do
      {
        v13 = *(v5 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          v16 = (v13 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
          v17 = *v16;
          v18 = v16[1];
          v19 = (*v15 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
          if (v17 == *v19 && v18 == v19[1])
          {
            break;
          }

          if ((sub_100025CAC() & 1) == 0)
          {
            break;
          }

          v21 = *v15;
          v13 = v15[1];
          *v15 = v13;
          v15[1] = v21;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v4);
    }
  }

  else
  {
    v7 = v6;
    v8 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for HomeItem();
      v9 = sub_1000259AC();
      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v24[0] = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
    v24[1] = v8;
    sub_1000144C4(v24, v26, v25, v7);
    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_100025BFC();
}

uint64_t sub_1000144C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v112 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_152;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v8 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v9 = *a3;
      v10 = (*(*a3 + 8 * v8) + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
      result = *v10;
      v11 = v10[1];
      v12 = (*(*a3 + 8 * v6) + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
      v13 = result == *v12 && v11 == v12[1];
      if (v13)
      {
        v4 = 0;
      }

      else
      {
        result = sub_100025CAC();
        v4 = result;
      }

      v8 = v6 + 2;
      if (v6 + 2 < v5)
      {
        v14 = OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name;
        v15 = (v9 + 8 * v6 + 16);
        do
        {
          v16 = (*v15 + v14);
          result = *v16;
          v17 = v16[1];
          v18 = (*(v15 - 1) + v14);
          if (result == *v18 && v17 == v18[1])
          {
            if (v4)
            {
              goto LABEL_23;
            }
          }

          else
          {
            result = sub_100025CAC();
            if ((v4 ^ result))
            {
              goto LABEL_22;
            }

            v14 = OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name;
          }

          ++v8;
          ++v15;
        }

        while (v5 != v8);
        v8 = v5;
      }

LABEL_22:
      if (v4)
      {
LABEL_23:
        if (v8 < v6)
        {
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        if (v6 < v8)
        {
          v20 = 8 * v8 - 8;
          v21 = 8 * v6;
          v22 = v8;
          v23 = v6;
          do
          {
            if (v23 != --v22)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_187;
              }

              v24 = *(v25 + v21);
              *(v25 + v21) = *(v25 + v20);
              *(v25 + v20) = v24;
            }

            ++v23;
            v20 -= 8;
            v21 += 8;
          }

          while (v23 < v22);
        }
      }
    }

    v26 = a3[1];
    if (v8 < v26)
    {
      if (__OFSUB__(v8, v6))
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          result = sub_100015004(v7);
          v7 = result;
LABEL_154:
          v107 = *(v7 + 2);
          if (v107 < 2)
          {
          }

          while (*a3)
          {
            v108 = *&v7[16 * v107];
            v109 = *&v7[16 * v107 + 24];
            sub_100014D10((*a3 + 8 * v108), (*a3 + 8 * *&v7[16 * v107 + 16]), (*a3 + 8 * v109), v4);
            if (v113)
            {
            }

            if (v109 < v108)
            {
              goto LABEL_178;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_100015004(v7);
            }

            if (v107 - 2 >= *(v7 + 2))
            {
              goto LABEL_179;
            }

            v110 = &v7[16 * v107];
            *v110 = v108;
            *(v110 + 1) = v109;
            result = sub_100014F78(v107 - 1);
            v107 = *(v7 + 2);
            if (v107 <= 1)
            {
            }
          }

LABEL_189:
          __break(1u);
          goto LABEL_190;
        }

        if (v6 + a4 >= v26)
        {
          v27 = a3[1];
        }

        else
        {
          v27 = v6 + a4;
        }

        if (v27 < v6)
        {
          goto LABEL_183;
        }

        if (v8 != v27)
        {
          v28 = *a3;
          v29 = *a3 + 8 * v8 - 8;
          v4 = (v6 - v8);
          do
          {
            v30 = *(v28 + 8 * v8);
            v31 = v4;
            v32 = v29;
            do
            {
              v33 = (v30 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
              v34 = *v33;
              v35 = v33[1];
              v36 = (*v32 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
              v37 = v34 == *v36 && v35 == v36[1];
              if (v37 || (sub_100025CAC() & 1) == 0)
              {
                break;
              }

              if (!v28)
              {
                goto LABEL_184;
              }

              v38 = *v32;
              v30 = v32[1];
              *v32 = v30;
              v32[1] = v38;
              --v32;
            }

            while (!__CFADD__(v31++, 1));
            ++v8;
            v29 += 8;
            --v4;
          }

          while (v8 != v27);
          v8 = v27;
        }
      }
    }

    if (v8 < v6)
    {
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v114 = v8;
    if ((result & 1) == 0)
    {
      result = sub_100013CD0(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v41 = *(v7 + 2);
    v40 = *(v7 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_100013CD0((v40 > 1), v41 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v42;
    v43 = &v7[16 * v41];
    *(v43 + 4) = v6;
    *(v43 + 5) = v114;
    if (!*v112)
    {
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (!v41)
    {
      goto LABEL_3;
    }

    __dst = *v112;
    do
    {
      v44 = v42 - 1;
      if (v42 >= 4)
      {
        v49 = &v7[16 * v42 + 32];
        v50 = *(v49 - 64);
        v51 = *(v49 - 56);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_166;
        }

        v54 = *(v49 - 48);
        v53 = *(v49 - 40);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_167;
        }

        v56 = &v7[16 * v42];
        v58 = *v56;
        v57 = *(v56 + 1);
        v55 = __OFSUB__(v57, v58);
        v59 = v57 - v58;
        if (v55)
        {
          goto LABEL_169;
        }

        v55 = __OFADD__(v47, v59);
        v60 = v47 + v59;
        if (v55)
        {
          goto LABEL_172;
        }

        if (v60 >= v52)
        {
          v78 = &v7[16 * v44 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v55 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v55)
          {
            goto LABEL_176;
          }

          if (v47 < v81)
          {
            v44 = v42 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

      if (v42 == 3)
      {
        v45 = *(v7 + 4);
        v46 = *(v7 + 5);
        v55 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        v48 = v55;
LABEL_74:
        if (v48)
        {
          goto LABEL_168;
        }

        v61 = &v7[16 * v42];
        v63 = *v61;
        v62 = *(v61 + 1);
        v64 = __OFSUB__(v62, v63);
        v65 = v62 - v63;
        v66 = v64;
        if (v64)
        {
          goto LABEL_171;
        }

        v67 = &v7[16 * v44 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v55 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v55)
        {
          goto LABEL_174;
        }

        if (__OFADD__(v65, v70))
        {
          goto LABEL_175;
        }

        if (v65 + v70 >= v47)
        {
          if (v47 < v70)
          {
            v44 = v42 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_88;
      }

      v71 = &v7[16 * v42];
      v73 = *v71;
      v72 = *(v71 + 1);
      v55 = __OFSUB__(v72, v73);
      v65 = v72 - v73;
      v66 = v55;
LABEL_88:
      if (v66)
      {
        goto LABEL_170;
      }

      v74 = &v7[16 * v44];
      v76 = *(v74 + 4);
      v75 = *(v74 + 5);
      v55 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v55)
      {
        goto LABEL_173;
      }

      if (v77 < v65)
      {
        break;
      }

LABEL_95:
      if (v44 - 1 >= v42)
      {
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
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
        goto LABEL_177;
      }

      v82 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v121 = v7;
      v117 = v44 - 1;
      v118 = v44;
      v83 = *&v7[16 * v44 + 32];
      v84 = *&v7[16 * v44 + 40];
      v119 = *&v7[16 * v44 + 16];
      v120 = v84;
      v85 = (v82 + 8 * v119);
      v86 = 8 * v83;
      v7 = (v82 + 8 * v83);
      v87 = 8 * v84;
      v88 = (v82 + 8 * v84);
      v89 = 8 * v83 - 8 * v119;
      v90 = 8 * v84 - 8 * v83;
      if (v89 >= v90)
      {
        if (v7 != __dst || v88 <= __dst)
        {
          memmove(__dst, (v82 + 8 * v83), 8 * v84 - 8 * v83);
        }

        v91 = &__dst[v90];
        if (v90 >= 1 && v86 > 8 * v119)
        {
          v93 = v119;
          while (1)
          {
            v4 = v7 - 8;
            v88 -= 8;
            v100 = v91;
            while (1)
            {
              v101 = *(v100 - 1);
              v100 -= 8;
              v102 = *(v101 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name + 8);
              v103 = (*v4 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
              v104 = *(v101 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name) == *v103 && v102 == v103[1];
              if (!v104 && (sub_100025CAC() & 1) != 0)
              {
                break;
              }

              if (v88 + 8 != v91)
              {
                *v88 = *v100;
              }

              v88 -= 8;
              v91 = v100;
              if (v100 <= __dst)
              {
                v91 = v100;
                v92 = __dst;
                v4 = v7;
                goto LABEL_141;
              }
            }

            if (v88 + 8 != v7)
            {
              *v88 = *v4;
            }

            if (v91 <= __dst)
            {
              v92 = __dst;
              goto LABEL_141;
            }

            v92 = __dst;
            v7 -= 8;
            if (v85 >= v4)
            {
              goto LABEL_141;
            }
          }
        }

        v92 = __dst;
        v4 = v7;
        goto LABEL_139;
      }

      if (v85 != __dst || v7 <= __dst)
      {
        memmove(__dst, (v82 + 8 * v119), 8 * v83 - 8 * v119);
      }

      v91 = &__dst[v89];
      if (v89 < 1 || v87 <= v86)
      {
        v92 = __dst;
        v4 = v85;
LABEL_139:
        v93 = v119;
        goto LABEL_141;
      }

      v92 = __dst;
      v93 = v119;
      do
      {
        v94 = (*v7 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
        v95 = *v94;
        v96 = v94[1];
        v97 = (*v92 + OBJC_IVAR____TtC21MediaSetupViewService8HomeItem_name);
        v98 = v95 == *v97 && v96 == v97[1];
        if (!v98 && (sub_100025CAC() & 1) != 0)
        {
          v99 = v7;
          v13 = v85 == v7;
          v7 += 8;
          if (v13)
          {
            goto LABEL_114;
          }

LABEL_113:
          *v85 = *v99;
          goto LABEL_114;
        }

        v99 = v92;
        v13 = v85 == v92;
        v92 += 8;
        if (!v13)
        {
          goto LABEL_113;
        }

LABEL_114:
        v85 += 8;
      }

      while (v92 < v91 && v7 < v88);
      v4 = v85;
LABEL_141:
      if (v4 != v92 || v4 >= &v92[(v91 - v92 + (v91 - v92 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v4, v92, 8 * ((v91 - v92) / 8));
      }

      v105 = v121;
      if (v120 < v93)
      {
        goto LABEL_164;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_100015004(v121);
      }

      if (v118 > *(v105 + 2))
      {
        goto LABEL_165;
      }

      v106 = &v105[16 * v117];
      *(v106 + 4) = v93;
      *(v106 + 5) = v120;
      result = sub_100014F78(v118);
      v7 = v105;
      v42 = *(v105 + 2);
    }

    while (v42 > 1);
LABEL_3:
    v6 = v114;
    v5 = a3[1];
    if (v114 < v5)
    {
      continue;
    }

    break;
  }

LABEL_152:
  v4 = *v112;
  if (*v112)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_154;
    }

    goto LABEL_185;
  }

LABEL_190:
  __break(1u);
  return result;
}