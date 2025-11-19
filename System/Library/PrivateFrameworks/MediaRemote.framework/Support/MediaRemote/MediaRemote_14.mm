uint64_t sub_1002383EC(uint64_t result)
{
  if (*(v1 + 24))
  {
    v2 = result;
    swift_beginAccess();
    v3 = *(v1 + 32);
    if (!v3)
    {
      v3 = _swiftEmptyArrayStorage;
      *(v1 + 32) = _swiftEmptyArrayStorage;
    }

    v6 = v3[2];
    v4 = v3 + 2;
    v5 = v6;
    if (v6)
    {
      v7 = *(*v4[2 * v5 + 1] + 184);

      v7(v8);
    }

    v10 = sub_100213280();
    if (*v9)
    {
      v11 = v9;
      v12 = type metadata accessor for RoutingEventInterval(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      v15 = swift_allocObject();
      v16 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_end;
      v17 = type metadata accessor for Date();
      (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
      *(v15 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events) = 0;

      static Date.now.getter();
      v18 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v11 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_10023C4D4(0, v18[2] + 1, 1, v18);
        *v11 = v18;
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_10023C4D4((v20 > 1), v21 + 1, 1, v18);
        *v11 = v18;
      }

      v18[2] = v21 + 1;
      v22 = &v18[2 * v21];
      v22[4] = v2;
      v22[5] = v15;
      return (v10)(v23, 0);
    }

    else
    {
      return (v10)(v23, 0);
    }
  }

  return result;
}

uint64_t sub_1002385F4()
{
  v1 = *v0;
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 2653;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0xD000000000000011;
  v4._object = 0x800000010043CE30;
  String.append(_:)(v4);
  swift_beginAccess();
  v5 = v0[5];
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = v0[5];

  v12 = 0;
  if (v8)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = *(*(v5 + 56) + ((v13 << 9) | (8 * v14)));

      v42._countAndFlagsBits = sub_100236C8C(v16);
      v42._object = v17;
      v18._countAndFlagsBits = 10;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      String.append(_:)(v42);

      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  _StringGuts.grow(_:)(22);

  v19 = *(*v0[2] + 192);

  v21._countAndFlagsBits = v19(v20);
  String.append(_:)(v21);

  v22._countAndFlagsBits = 10;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xD000000000000013;
  v23._object = 0x800000010043CE50;
  String.append(_:)(v23);

  v24 = v0[3];
  if (v24)
  {

    _StringGuts.grow(_:)(25);

    v26._countAndFlagsBits = (*(*v24 + 192))(v25);
    String.append(_:)(v26);

    v27._countAndFlagsBits = 10;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 0xD000000000000016;
    v28._object = 0x800000010043CE90;
    String.append(_:)(v28);
  }

  swift_beginAccess();
  v29 = v0[4];
  if (v29)
  {
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = ( + 40);
      do
      {
        v33 = *(v31 - 1);
        v32 = *v31;

        _StringGuts.grow(_:)(25);

        v34 = Set.description.getter();
        v36 = v35;

        v37._countAndFlagsBits = v34;
        v37._object = v36;
        String.append(_:)(v37);

        v38._countAndFlagsBits = 93;
        v38._object = 0xE100000000000000;
        String.append(_:)(v38);
        v39._countAndFlagsBits = (*(*v32 + 192))();
        String.append(_:)(v39);

        v40._countAndFlagsBits = 10;
        v40._object = 0xE100000000000000;
        String.append(_:)(v40);
        v41._countAndFlagsBits = 0xD000000000000013;
        v41._object = 0x800000010043CE70;
        String.append(_:)(v41);

        v31 += 2;
        --v30;
      }

      while (v30);
    }
  }

  return 91;
}

char *sub_100238A68()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastInstanceOfNoRemoteSessionAvailable;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  sub_1000038A4(&v0[OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_timeFirstCurrentRemoteSessionAvailable], &qword_1005228D8, &unk_100450060);
  sub_1000038A4(&v0[OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastTimeDetailedDiscoveryEnabled], &qword_1005228D8, &unk_100450060);
  sub_10003FE48(*&v0[OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType], *&v0[OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType + 8], *&v0[OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType + 16]);
  return v0;
}

uint64_t sub_100238B48()
{
  sub_100238A68();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100238BEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_start;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100238C74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_start;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *sub_100238D1C()
{
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
    *(v0 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events) = _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t sub_100238D64(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events);
  *(v1 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events) = a1;
}

uint64_t (*sub_100238D7C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100238D1C();
  return sub_100238DC4;
}

uint64_t sub_100238DC4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events);
  *(v1 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events) = v2;
}

uint64_t sub_100238DDC(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = type metadata accessor for Date.FormatStyle();
  sub_1001C4098(v9, a2);
  v10 = sub_100015AFC(v9, a2);
  return sub_100239E4C(a3, a4, a5, v10);
}

uint64_t sub_100238EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100238F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100238F6C()
{
  v1 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v14 - v7;
  (*(*v0 + 128))(v6);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  result = sub_1000038A4(v8, &qword_1005228D8, &unk_100450060);
  if (v11 == 1)
  {
    static Date.now.getter();
    (*(v10 + 56))(v5, 0, 1, v9);
    v13 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_end;
    swift_beginAccess();
    sub_10003DBB8(v5, v0 + v13);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100239114()
{
  v1 = *v0;
  v2 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  __chkstk_darwin(v2);
  v60 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001BC5A8(&qword_100523038, &qword_100450F50);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  v10 = __chkstk_darwin(v8);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v55 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v55 - v19;
  v21 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v55 - v27;
  v57 = v1;
  v29 = *(v1 + 128);
  v29(v26);
  v55 = v14;
  v30 = *(v14 + 48);
  v56 = v30(v28, 1, v13);
  v31 = sub_1000038A4(v28, &qword_1005228D8, &unk_100450060);
  v66 = v0;
  v29(v31);
  if (v30(v25, 1, v13) == 1)
  {
    static Date.now.getter();
    v32 = v30(v25, 1, v13);
    v33 = v55;
    if (v32 != 1)
    {
      v32 = sub_1000038A4(v25, &qword_1005228D8, &unk_100450060);
    }
  }

  else
  {
    v33 = v55;
    v32 = (*(v55 + 32))(v20, v25, v13);
  }

  v34 = *(*v66 + 104);
  (v34)(v32);
  Date.timeIntervalSince(_:)();
  v36 = v35;
  v37 = *(v33 + 8);
  v37(v18, v13);
  v37(v20, v13);
  v70 = 91;
  v71 = 0xE100000000000000;
  v38._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0x203A747261747320;
  v39._object = 0xE800000000000000;
  String.append(_:)(v39);
  v34();
  if (qword_10052B818 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Date.FormatStyle();
  sub_100015AFC(v40, qword_100538458);
  sub_100248538(&qword_100523040, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v37(v18, v13);
  String.append(_:)(v69);

  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  if (v56 == 1)
  {
    _StringGuts.grow(_:)(26);

    v69._countAndFlagsBits = 0xD000000000000015;
    v69._object = 0x800000010043CEB0;
  }

  else
  {
    _StringGuts.grow(_:)(17);

    strcpy(&v69, ", duration: ");
    BYTE5(v69._object) = 0;
    HIWORD(v69._object) = -5120;
  }

  v67 = v36;
  static Locale.autoupdatingCurrent.getter();
  sub_10023DB94();
  v41 = v59;
  FloatingPointFormatStyle.init(locale:)();
  v42 = v60;
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  v43 = v63;
  v44 = v65;
  FloatingPointFormatStyle.precision(_:)();
  (*(v61 + 8))(v42, v62);
  v45 = *(v64 + 8);
  v45(v41, v44);
  sub_10000462C(&qword_100523050, &qword_100523038, &qword_100450F50);
  BinaryFloatingPoint.formatted<A>(_:)();
  v45(v43, v44);
  String.append(_:)(v68);

  v46._countAndFlagsBits = 679283;
  v46._object = 0xE300000000000000;
  String.append(_:)(v46);
  String.append(_:)(v69);

  v47._countAndFlagsBits = 0xA3A73746E657645;
  v47._object = 0xE800000000000000;
  String.append(_:)(v47);
  result = (*(*v66 + 152))();
  v49 = result;
  if (!(result >> 62))
  {
    v50 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      goto LABEL_12;
    }

LABEL_19:

    return v70;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v50 = result;
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (v50 >= 1)
  {
    v51 = 0;
    do
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v52 = *(v49 + 8 * v51 + 32);
      }

      ++v51;
      v69._countAndFlagsBits = (*(*v52 + 280))();
      v69._object = v53;
      v54._countAndFlagsBits = 10;
      v54._object = 0xE100000000000000;
      String.append(_:)(v54);
      String.append(_:)(v69);
    }

    while (v50 != v51);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_100239964()
{
  v1 = OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_start;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000038A4(v0 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval_end, &qword_1005228D8, &unk_100450060);
  v3 = *(v0 + OBJC_IVAR____TtC12mediaremoted20RoutingEventInterval____lazy_storage___events);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100239A8C()
{
  v1 = (v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_processingDuration);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_100239AD8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_processingDuration;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100239B38()
{
  v1 = OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_achievedStability;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100239B7C(char a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_achievedStability;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100239BCC()
{
  v1 = v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error;
  swift_beginAccess();
  v2 = *v1;
  sub_10023DBE8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

uint64_t sub_100239C48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  v13 = *(v9 + 24);
  *(v9 + 24) = a4;
  return sub_10023DC58(v10, v11, v12, v13);
}

uint64_t sub_100239CC8()
{
  v1 = v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_routeType;
  swift_beginAccess();
  v2 = *v1;
  sub_10003FE34(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t sub_100239D38(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = v3 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_routeType;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  return sub_10003FE48(v8, v9, v10);
}

uint64_t sub_100239E4C@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v155 = a3;
  v152 = a2;
  v149 = a1;
  v170 = a4;
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Week();
  v168 = *(v4 - 8);
  v169 = v4;
  v5 = *(v168 + 64);
  __chkstk_darwin(v4);
  v167 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v165 = *(v7 - 8);
  v166 = v7;
  v8 = *(v165 + 64);
  __chkstk_darwin(v7);
  v164 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date.FormatStyle.Symbol.DayOfYear();
  v162 = *(v10 - 8);
  v163 = v10;
  v11 = *(v162 + 64);
  __chkstk_darwin(v10);
  v161 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date.FormatStyle.Symbol.Era();
  v159 = *(v13 - 8);
  v160 = v13;
  v14 = *(v159 + 64);
  __chkstk_darwin(v13);
  v158 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date.FormatStyle.Symbol.TimeZone();
  v156 = *(v16 - 8);
  v157 = v16;
  v17 = *(v156 + 64);
  __chkstk_darwin(v16);
  v154 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for Date.FormatStyle.Symbol.SecondFraction();
  v151 = *(v153 - 8);
  v19 = *(v151 + 64);
  __chkstk_darwin(v153);
  v150 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for Date.FormatStyle.Symbol.Second();
  v147 = *(v148 - 8);
  v21 = *(v147 + 64);
  __chkstk_darwin(v148);
  v146 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v144 = *(v145 - 8);
  v23 = *(v144 + 64);
  __chkstk_darwin(v145);
  v141 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v139 = *(v140 - 8);
  v25 = *(v139 + 64);
  __chkstk_darwin(v140);
  v136 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v137 = *(v138 - 8);
  v27 = *(v137 + 64);
  __chkstk_darwin(v138);
  v135 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v133 = *(v134 - 8);
  v29 = *(v133 + 64);
  __chkstk_darwin(v134);
  v132 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v130 = *(v131 - 8);
  v31 = *(v130 + 64);
  __chkstk_darwin(v131);
  v129 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v126 = *(v127 - 8);
  v33 = *(v126 + 64);
  __chkstk_darwin(v127);
  v123 = &v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for FormatStyleCapitalizationContext();
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v119 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TimeZone();
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v40 = type metadata accessor for Calendar();
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v143 = type metadata accessor for Locale();
  v142 = *(v143 - 8);
  v42 = *(v142 + 64);
  __chkstk_darwin(v143);
  v44 = &v114 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001BC5A8(&qword_100523650, &qword_1004511E8);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v48 = &v114 - v47;
  v49 = sub_1001BC5A8(&qword_100523658, &qword_1004511F0);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v52 = &v114 - v51;
  v53 = type metadata accessor for Date.FormatStyle();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  v56 = __chkstk_darwin(v53);
  v58 = &v114 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __chkstk_darwin(v56);
  v61 = &v114 - v60;
  v62 = __chkstk_darwin(v59);
  v114 = &v114 - v63;
  v64 = __chkstk_darwin(v62);
  v115 = &v114 - v65;
  v66 = __chkstk_darwin(v64);
  v116 = &v114 - v67;
  v68 = __chkstk_darwin(v66);
  v117 = &v114 - v69;
  v70 = __chkstk_darwin(v68);
  v118 = &v114 - v71;
  v72 = __chkstk_darwin(v70);
  v120 = &v114 - v73;
  v74 = __chkstk_darwin(v72);
  v121 = &v114 - v75;
  v76 = __chkstk_darwin(v74);
  v122 = &v114 - v77;
  v78 = __chkstk_darwin(v76);
  v124 = &v114 - v79;
  v80 = __chkstk_darwin(v78);
  v125 = &v114 - v81;
  __chkstk_darwin(v80);
  v128 = &v114 - v82;
  v83 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v83 - 8) + 56))(v52, 1, 1, v83);
  v84 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v84 - 8) + 56))(v48, 1, 1, v84);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  v85 = Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v86 = v123;
  v149(v85);
  Date.FormatStyle.year(_:)();
  (*(v126 + 8))(v86, v127);
  v87 = *(v54 + 8);
  v88 = v87(v58, v53);
  v89 = v129;
  v152(v88);
  v90 = v114;
  Date.FormatStyle.month(_:)();
  (*(v130 + 8))(v89, v131);
  v91 = v87(v61, v53);
  v92 = v132;
  v155(v91);
  v93 = v115;
  Date.FormatStyle.day(_:)();
  (*(v133 + 8))(v92, v134);
  v87(v90, v53);
  v94 = v136;
  static Date.FormatStyle.Symbol.Hour.AMPMStyle.omitted.getter();
  v95 = v135;
  static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
  (*(v139 + 8))(v94, v140);
  v96 = v116;
  Date.FormatStyle.hour(_:)();
  (*(v137 + 8))(v95, v138);
  v87(v93, v53);
  v97 = v141;
  static Date.FormatStyle.Symbol.Minute.twoDigits.getter();
  v98 = v117;
  Date.FormatStyle.minute(_:)();
  (*(v144 + 8))(v97, v145);
  v87(v96, v53);
  v99 = v146;
  static Date.FormatStyle.Symbol.Second.twoDigits.getter();
  v100 = v118;
  Date.FormatStyle.second(_:)();
  (*(v147 + 8))(v99, v148);
  v87(v98, v53);
  v101 = v150;
  static Date.FormatStyle.Symbol.SecondFraction.fractional(_:)();
  v102 = v120;
  Date.FormatStyle.secondFraction(_:)();
  (*(v151 + 8))(v101, v153);
  v87(v100, v53);
  v103 = v154;
  static Date.FormatStyle.Symbol.TimeZone.omitted.getter();
  v104 = v121;
  Date.FormatStyle.timeZone(_:)();
  (*(v156 + 8))(v103, v157);
  v87(v102, v53);
  v105 = v158;
  static Date.FormatStyle.Symbol.Era.omitted.getter();
  v106 = v122;
  Date.FormatStyle.era(_:)();
  (*(v159 + 8))(v105, v160);
  v87(v104, v53);
  v107 = v161;
  static Date.FormatStyle.Symbol.DayOfYear.omitted.getter();
  v108 = v124;
  Date.FormatStyle.dayOfYear(_:)();
  (*(v162 + 8))(v107, v163);
  v87(v106, v53);
  v109 = v164;
  static Date.FormatStyle.Symbol.Weekday.omitted.getter();
  v110 = v125;
  Date.FormatStyle.weekday(_:)();
  (*(v165 + 8))(v109, v166);
  v87(v108, v53);
  v111 = v167;
  static Date.FormatStyle.Symbol.Week.omitted.getter();
  v112 = v128;
  Date.FormatStyle.week(_:)();
  (*(v168 + 8))(v111, v169);
  v87(v110, v53);
  Locale.init(identifier:)();
  Date.FormatStyle.locale(_:)();
  (*(v142 + 8))(v44, v143);
  return v87(v112, v53);
}

double sub_10023AF1C@<D0>(uint64_t a1@<X8>)
{
  (*(**(v1 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_decision) + 120))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_10023AF94(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  static Date.now.getter();
  v6 = OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_end;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  v8 = v5 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_processingDuration;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v5 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_achievedStability) = 2;
  v9 = v5 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error;
  *(v9 + 24) = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  v10 = v5 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_routeType;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1790;
  *(v5 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_decision) = a1;
  return v5;
}

uint64_t sub_10023B090(uint64_t a1)
{
  v3 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = __chkstk_darwin(v5);
  v10 = &v25[-v9 - 8];
  (*(*v1 + 136))(v8);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  result = sub_1000038A4(v10, &qword_1005228D8, &unk_100450060);
  if (v13 == 1)
  {
    static Date.now.getter();
    (*(v12 + 56))(v7, 0, 1, v11);
    v15 = OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_end;
    swift_beginAccess();
    sub_10003DBB8(v7, v1 + v15);
    swift_endAccess();
    v16 = *(a1 + 32);
    v17 = v1 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_processingDuration;
    swift_beginAccess();
    *v17 = v16;
    *(v17 + 8) = 0;
    LOBYTE(v17) = *(a1 + 25);
    v18 = OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_achievedStability;
    swift_beginAccess();
    *(v1 + v18) = v17;
    v26[0] = *a1;
    *(v26 + 9) = *(a1 + 9);
    v19 = v1 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error;
    swift_beginAccess();
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    *v19 = v26[0];
    v23 = *(v19 + 24);
    *(v19 + 9) = *(v26 + 9);
    sub_10001D9AC(v26, v25, &qword_100523058, &qword_100450F58);
    return sub_10023DC58(v20, v21, v22, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10023B310()
{
  v1 = *v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v58 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = v55 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = v55 - v15;
  v60 = v1;
  v17 = *(v1 + 136);
  v17(v14);
  v18 = *(v3 + 48);
  v61 = v18(v16, 1, v2);
  v19 = sub_1000038A4(v16, &qword_1005228D8, &unk_100450060);
  v59 = v0;
  v57 = v17;
  v55[1] = v1 + 136;
  v17(v19);
  v20 = v18;
  v21 = v18(v13, 1, v2);
  v56 = v18;
  if (v21 == 1)
  {
    static Date.now.getter();
    v22 = v3;
    if (v20(v13, 1, v2) != 1)
    {
      sub_1000038A4(v13, &qword_1005228D8, &unk_100450060);
    }
  }

  else
  {
    (*(v3 + 32))(v6, v13, v2);
    v22 = v3;
  }

  v23 = v59;
  Date.timeIntervalSince(_:)();
  v25 = v24;
  v26 = *(v22 + 8);
  v55[0] = v22 + 8;
  v26(v6, v2);
  v67._countAndFlagsBits = 60;
  v67._object = 0xE100000000000000;
  v27._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x7472617473202D20;
  v28._object = 0xEA0000000000203ALL;
  String.append(_:)(v28);
  if (qword_10052B818 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Date.FormatStyle();
  sub_100015AFC(v29, qword_100538458);
  sub_100248538(&qword_100523040, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  String.append(_:)(v72);

  v66 = v67;
  if (v61 != 1)
  {
LABEL_12:
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v67._countAndFlagsBits = 0x203A646E65202CLL;
    v67._object = 0xE700000000000000;
    v32 = v58;
    v57(v31);
    if (v56(v32, 1, v2) == 1)
    {
LABEL_26:
      __break(1u);
      return;
    }

    Date.formatted<A>(_:)();
    v26(v32, v2);
    String.append(_:)(v72);

    v33._countAndFlagsBits = 0x697461727564202CLL;
    v33._object = 0xEC000000203A6E6FLL;
    String.append(_:)(v33);
    v30 = v25 * 1000.0;
    if (COERCE__INT64(fabs(v25 * 1000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v30 > -9.22337204e18)
      {
        if (v30 < 9.22337204e18)
        {
          goto LABEL_16;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v67._countAndFlagsBits = 0xD000000000000015;
  v67._object = 0x800000010043CEB0;
  v30 = v25 * 1000.0;
  if (COERCE__INT64(fabs(v25 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v30 >= 9.22337204e18)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_16:
  v72._countAndFlagsBits = v30;
  v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v34);

  v35._countAndFlagsBits = 29549;
  v35._object = 0xE200000000000000;
  String.append(_:)(v35);
  String.append(_:)(v67);

  v37 = (*(*v23 + 208))(v36);
  if (v37)
  {
    v72._countAndFlagsBits = 0x3A726F727265202CLL;
    v72._object = 0xE900000000000020;
    v67._countAndFlagsBits = v37;
    v67._object = v38;
    v68._countAndFlagsBits = v39;
    LOBYTE(v68._object) = v40;
    v41 = v38;
    v42 = v39;
    v43 = v40;
    sub_10023DD70();
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    String.append(_:)(v72);

    v37 = sub_10023DCB0(v41, v42, v43);
  }

  v65._countAndFlagsBits = 0x6E6F69746361202CLL;
  v65._object = 0xEA0000000000203ALL;
  (*(*v23 + 256))(&v67, v37);
  v72 = v68;
  v73 = v69;
  v74 = v70;
  v71 = v67;
  sub_1001E6204(&v71);
  v62 = v72;
  v63 = v73;
  v64 = v74;
  sub_10023DCC8();
  v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v45);
  sub_100238E4C(&v72);

  String.append(_:)(v65);

  v47 = (*(*v23 + 232))(v46);
  if ((~v49 & 0x6FE) != 0)
  {
    v65._countAndFlagsBits = 0x3A6574756F72202CLL;
    v65._object = 0xE900000000000020;
    v62._countAndFlagsBits = v47;
    v62._object = v48;
    LOWORD(v63) = v49;
    v50 = v47;
    v51 = v48;
    v52 = v49;
    sub_10023DD1C();
    v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v53);

    String.append(_:)(v65);

    sub_10003FE48(v50, v51, v52);
  }

  v54._countAndFlagsBits = 62;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
}

uint64_t sub_10023BBAC()
{
  v1 = OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_start;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000038A4(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_end, &qword_1005228D8, &unk_100450060);
  sub_10023DC58(*(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error), *(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error + 8), *(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error + 16), *(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_error + 24));
  sub_10003FE48(*(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_routeType), *(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_routeType + 8), *(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_routeType + 16));
  v3 = *(v0 + OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_decision);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10023BCF8(Swift::Int a1, uint64_t a2, uint64_t a3)
{
  sub_10023EF5C(a1, a2, a3);
  sub_100241644(a1, a2, a3);

  return sub_1002430A0(a1, a2);
}

uint64_t sub_10023BD58(uint64_t a1)
{
  v33 = *(a1 + 16);
  if (!v33)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v32 = a1 + 32;
  v3 = &unk_1004511B0;
  while (1)
  {
    v5 = (v32 + 16 * v1);
    v6 = *v5;
    v7 = *(*v5[1] + 152);

    v9 = v7(v8);

    v10 = v9 >> 62;
    v11 = v9 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v2 >> 62;
    if (v2 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v30 + v11;
      if (__OFADD__(v30, v11))
      {
LABEL_34:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v12)
      {
        goto LABEL_16;
      }

      v15 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v12)
      {
LABEL_16:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_17;
      }

      v15 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = *(v15 + 16);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v36 = v11;
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v18 >> 1) - v17) < v36)
    {
      goto LABEL_38;
    }

    v34 = v2;
    v21 = v15 + 8 * v17 + 32;
    v31 = v15;
    if (v10)
    {
      if (v19 < 1)
      {
        goto LABEL_40;
      }

      sub_10000462C(&qword_100523600, &qword_1005235F8, v3);
      v22 = v3;
      for (i = 0; i != v19; ++i)
      {
        sub_1001BC5A8(&qword_1005235F8, v22);
        v24 = sub_10023DA8C(v35, i, v9);
        v26 = *v25;

        (v24)(v35, 0);
        *(v21 + 8 * i) = v26;
        v22 = v3;
      }
    }

    else
    {
      type metadata accessor for RoutingClientEvent(0);
      swift_arrayInitWithCopy();
      v22 = v3;
    }

    v3 = v22;

    v2 = v34;
    if (v36 >= 1)
    {
      v27 = *(v31 + 16);
      v28 = __OFADD__(v27, v36);
      v29 = v27 + v36;
      if (v28)
      {
        goto LABEL_39;
      }

      *(v31 + 16) = v29;
    }

LABEL_4:
    if (++v1 == v33)
    {
      return v2;
    }
  }

  v20 = v15;
  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = v20;
  v19 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v36 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_10023C08C(char *a1, uint64_t a2, uint64_t a3)
{
  sub_100246450(a1, a2, a3);

  return sub_10024788C(a1, a2);
}

void sub_10023C0CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = sub_100015A78();
  sub_10001D9AC(v10, v9, &qword_100525C00, &unk_1004511A0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1000038A4(v9, &qword_100525C00, &unk_1004511A0);
  }

  else
  {

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v15 = 136315650;
      *(v15 + 4) = sub_10002C9C8(0xD000000000000015, 0x8000000100451130, aBlock);
      HIDWORD(v22) = v14;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_10002C9C8(a1, a2, aBlock);
      *(v15 + 22) = 2080;
      sub_100018D7C(0, &qword_1005228E0, NSObject_ptr);
      v16 = Dictionary.description.getter();
      v18 = sub_10002C9C8(v16, v17, aBlock);

      *(v15 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v13, BYTE4(v22), "[%s] report - eventName: %s, payload: %s", v15, 0x20u);
      swift_arrayDestroy();
    }

    (*(v12 + 8))(v9, v11);
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  aBlock[4] = sub_100248580;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10023C438;
  aBlock[3] = &unk_1004C5450;
  v21 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

Class sub_10023C438(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100018D7C(0, &qword_1005228E0, NSObject_ptr);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

void *sub_10023C4D4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001BC5A8(&qword_100523660, &qword_1004511F8);
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
    sub_1001BC5A8(&qword_100523668, &qword_100451200);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10023C608(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_1005235F0, &unk_100451190);
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

uint64_t sub_10023C724(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100523670, &unk_100451208);
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

void sub_10023C9CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000698C(a2, a3);
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
      sub_100232EA0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000698C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100233144();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
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

void *sub_10023CB44()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100523670, &unk_100451208);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

char *sub_10023CCB4(char *a1, int64_t a2, char a3)
{
  result = sub_10023CEAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10023CCD4(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1001BC5A8(&qword_100523630, &qword_1004511E0);
  v10 = *(type metadata accessor for HostedRoutingSession(0) - 8);
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
  v15 = *(type metadata accessor for HostedRoutingSession(0) - 8);
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

char *sub_10023CEAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_1005235F0, &unk_100451190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unsigned __int8 *sub_10023CFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_100248910();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_10023D560();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
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

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
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

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10023D560()
{
  v0 = String.subscript.getter();
  v4 = sub_10023D5E0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10023D5E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
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
  v11 = sub_10002F23C(v9, 0);
  v12 = sub_10023D738(v15, (v11 + 4), v10, a1, a2, a3, a4);

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

unint64_t sub_10023D738(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10023D958(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10023D958(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10023D958(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10023D9D4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 16;
  result = *(a3 + 16);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v9 = *(v6 + 16 * result);

    v8 = a1(&v9);

    if (v3)
    {
      break;
    }

    result = v7 - 1;
  }

  while ((v8 & 1) == 0);
  return result;
}

uint64_t (*sub_10023DA8C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_10023DB0C;
  }

  __break(1u);
  return result;
}

unint64_t *sub_10023DB14@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*a2 + 16))
  {
    *a3 = *(*a2 + 16 * v3 + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_10023DB94()
{
  result = qword_100523048;
  if (!qword_100523048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523048);
  }

  return result;
}

uint64_t sub_10023DBE8(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (result)
  {
    swift_errorRetain();

    return sub_10023DC40(a2, a3, a4);
  }

  return result;
}

uint64_t sub_10023DC40(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_10023DC58(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (result)
  {

    return sub_10023DCB0(a2, a3, a4);
  }

  return result;
}

uint64_t sub_10023DCB0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t sub_10023DCC8()
{
  result = qword_100523060;
  if (!qword_100523060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523060);
  }

  return result;
}

unint64_t sub_10023DD1C()
{
  result = qword_100523068;
  if (!qword_100523068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523068);
  }

  return result;
}

unint64_t sub_10023DD70()
{
  result = qword_100524EE0;
  if (!qword_100524EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100524EE0);
  }

  return result;
}

uint64_t sub_10023DDC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x315654656C707041 && a2 == 0xE900000000000034 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x315654656C707041 && a2 == 0xE900000000000031 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0x365654656C707041 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x355654656C707041 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x6363416F69647541 && a2 == 0xEF3679726F737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x6363416F69647541 && a2 == 0xEF3579726F737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x6363416F69647541 && a2 == 0xEF3179726F737365)
  {
    return 2;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 2;
  }

  return 0;
}

uint64_t sub_10023DFFC(uint64_t a1)
{
  v2 = type metadata accessor for RoutingSessionConfiguration.Surface();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for RoutingSessionConfiguration.Surface.controlCenter(_:))
  {
    return 0;
  }

  if (v7 == enum case for RoutingSessionConfiguration.Surface.coverSheet(_:))
  {
    return 1;
  }

  if (v7 == enum case for RoutingSessionConfiguration.Surface.dynamicIsland(_:))
  {
    return 2;
  }

  if (v7 == enum case for RoutingSessionConfiguration.Surface.siri(_:))
  {
    return 4;
  }

  if (v7 == enum case for RoutingSessionConfiguration.Surface.home(_:))
  {
    return 5;
  }

  if (v7 == enum case for RoutingSessionConfiguration.Surface.proximityCard(_:))
  {
    return 6;
  }

  if (v7 == enum case for RoutingSessionConfiguration.Surface.app(_:))
  {
    return 3;
  }

  if (v7 == enum case for RoutingSessionConfiguration.Surface.ambient(_:))
  {
    return 7;
  }

  if (v7 == enum case for RoutingSessionConfiguration.Surface.bluePill(_:))
  {
    return 8;
  }

  if (v7 == enum case for RoutingSessionConfiguration.Surface.activityBanner(_:))
  {
    return 9;
  }

  if (v7 == enum case for RoutingSessionConfiguration.Surface.routeRecommendation(_:))
  {
    return 10;
  }

  if (v7 == enum case for RoutingSessionConfiguration.Surface.other(_:))
  {
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10023E264(uint64_t a1)
{
  v2 = 0;
  v3 = type metadata accessor for RoutingControl.Target();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RoutingControl.RoutingControlType();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RoutingControl();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v38 - v18;
  (*(*a1 + 256))(v41, v17);
  v44[0] = v41[1];
  v44[1] = v41[2];
  v45 = v42;
  v43 = v41[0];
  v20 = sub_1001E6204(&v43);
  if (v45 <= 5u)
  {
    if (v45 <= 2u)
    {
      v2 = v45 == 1;
LABEL_28:
      sub_100238E4C(v44);
      return v2;
    }

    if (v45 != 3)
    {
      if (v45 == 4)
      {
        v2 = 5;
      }

      goto LABEL_28;
    }

    v28 = (*(*a1 + 232))(v20);
    if ((~v30 & 0x6FE) != 0)
    {
      if (((v30 >> 8) & 6 | (v30 >> 7) & 1) == 6)
      {
        v31 = *(v28 + 16);
        v32 = *(v28 + 24);
        v33 = *(v28 + 32);
        v34 = v28;
        v35 = v29;
        v36 = v30;
        sub_10003FE34(v31, v32, v33);
        sub_10003FE48(v34, v35, v36);
        if ((~v33 & 0x6FE) != 0)
        {
          sub_10003FE48(v31, v32, v33);
          v2 = 7;
          goto LABEL_28;
        }
      }

      else
      {
        sub_10003FE48(v28, v29, v30);
      }
    }

LABEL_27:
    v2 = 0;
    goto LABEL_28;
  }

  if (v45 <= 8u)
  {
    if (v45 == 6)
    {
      v2 = 4;
      goto LABEL_28;
    }

    if (v45 != 7)
    {
      goto LABEL_27;
    }

    v21 = swift_projectBox();
    (*(v12 + 16))(v19, v21, v11);
    RoutingControl.type.getter();
    (*(v12 + 8))(v19, v11);
    v22 = v39;
    v23 = (*(v39 + 88))(v10, v7);
    if (v23 != enum case for RoutingControl.RoutingControlType.relativeVolume(_:))
    {
      v2 = 0;
      if (v23 != enum case for RoutingControl.RoutingControlType.tvRemote(_:) && v23 != enum case for RoutingControl.RoutingControlType.mute(_:))
      {
        (*(v22 + 8))(v10, v7);
        v2 = 6;
      }

      goto LABEL_28;
    }

    (*(v22 + 96))(v10, v7);
    v24 = type metadata accessor for RoutingControls.RelativeVolumeControl.AdjustmentType();
    (*(*(v24 - 8) + 8))(v10, v24);
LABEL_15:
    v2 = 3;
    goto LABEL_28;
  }

  if (v45 != 10)
  {
    goto LABEL_27;
  }

  v25 = swift_projectBox();
  (*(v12 + 16))(v16, v25, v11);
  RoutingControl.target.getter();
  v26 = v40;
  v27 = (*(v40 + 88))(v6, v3);
  if (v27 == enum case for RoutingControl.Target.session(_:))
  {
    (*(v12 + 8))(v16, v11);
    (*(v26 + 8))(v6, v3);
    goto LABEL_15;
  }

  if (v27 == enum case for RoutingControl.Target.item(_:))
  {
    (*(v12 + 8))(v16, v11);
    (*(v26 + 8))(v6, v3);
    v2 = 2;
    goto LABEL_28;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10023E7FC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_10023D958(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_10023D958(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_10023D958(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_10023EC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *sub_100248D90();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  aBlock[4] = sub_10024852C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C5400;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100248538(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_10023EF5C(Swift::Int a1, uint64_t a2, uint64_t a3)
{
  v294 = a3;
  v295 = type metadata accessor for RoutingSessionConfiguration.Surface();
  v293 = *(v295 - 8);
  v5 = *(v293 + 64);
  __chkstk_darwin(v295);
  v292 = &v276 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for Logger();
  v296 = *(v291 - 8);
  v7 = *(v296 + 64);
  v8 = __chkstk_darwin(v291);
  v290 = &v276 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v279 = &v276 - v10;
  v11 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v297 = &v276 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v287 = &v276 - v16;
  __chkstk_darwin(v15);
  v299 = &v276 - v17;
  v310 = type metadata accessor for Date();
  v302 = *(v310 - 8);
  v18 = *(v302 + 64);
  v19 = __chkstk_darwin(v310);
  v282 = &v276 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v283 = &v276 - v22;
  v23 = __chkstk_darwin(v21);
  v307 = &v276 - v24;
  v25 = __chkstk_darwin(v23);
  v284 = &v276 - v26;
  v27 = __chkstk_darwin(v25);
  *&v285 = &v276 - v28;
  v29 = __chkstk_darwin(v27);
  v301 = &v276 - v30;
  v31 = __chkstk_darwin(v29);
  v280 = (&v276 - v32);
  v33 = __chkstk_darwin(v31);
  v309 = &v276 - v34;
  __chkstk_darwin(v33);
  v298 = &v276 - v35;
  v36 = type metadata accessor for HostedRoutingSession(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36 - 8);
  v303 = (&v276 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __chkstk_darwin(v39);
  v300 = &v276 - v42;
  v43 = __chkstk_darwin(v41);
  v288 = (&v276 - v44);
  v45 = __chkstk_darwin(v43);
  v312 = &v276 - v46;
  __chkstk_darwin(v45);
  v48 = &v276 - v47;
  v49 = sub_100032A00();
  swift_beginAccess();
  v304 = a1;
  v50 = *(a1 + 40);
  v319 = _swiftEmptyArrayStorage;
  v51 = v50 + 64;
  v52 = 1 << *(v50 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v50 + 64);
  v55 = (v52 + 63) >> 6;
  v313 = v50;
  swift_bridgeObjectRetain_n();
  v289 = 0;
  v56 = 0;
  v311 = v51;
  while (v54)
  {
    v57 = v56;
LABEL_11:
    v58 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v59 = *(*(v313 + 56) + ((v57 << 9) | (8 * v58)));
    v60 = *(v59 + 40);
    v61 = *(v59 + 48);
    v62 = *(v59 + 56);

    if (!sub_1002562CC(v60, v61, v62) || (*(v59 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_initiallyPicked) & 1) != 0)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v63 = v319[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    v56 = v57;
    v51 = v311;
  }

  while (1)
  {
    v57 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v57 >= v55)
    {
      break;
    }

    v54 = *(v51 + 8 * v57);
    ++v56;
    if (v54)
    {
      goto LABEL_11;
    }
  }

  v64 = v313;

  v306 = v319;
  v319 = _swiftEmptyArrayStorage;
  v65 = 1 << *(v64 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v54 = v66 & *(v64 + 64);
  v55 = (v65 + 63) >> 6;

  v67 = 0;
  while (v54)
  {
    v68 = v67;
LABEL_24:
    v69 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v70 = *(*(v313 + 56) + ((v68 << 9) | (8 * v69)));
    v71 = *(v70 + 40);
    v72 = *(v70 + 48);
    v73 = *(v70 + 56);

    if (!sub_1002562B4(v71, v72, v73) || (*(v70 + OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_initiallyPicked) & 1) != 0)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v74 = v319[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    v67 = v68;
    v51 = v311;
  }

  while (1)
  {
    v68 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      goto LABEL_81;
    }

    if (v68 >= v55)
    {
      break;
    }

    v54 = *(v51 + 8 * v68);
    ++v67;
    if (v54)
    {
      goto LABEL_24;
    }
  }

  v75 = v319;
  if (v306 < 0)
  {
    v55 = 1;
  }

  else
  {
    v55 = (v306 >> 62) & 1;
  }

  v305 = v319;
  if (v55 == 1)
  {
    goto LABEL_84;
  }

  v76 = *(v306 + 16);
  while (1)
  {
    v77 = v75 < 0 || (v75 & 0x4000000000000000) != 0;
    if (v77)
    {
      v137 = _CocoaArrayWrapper.endIndex.getter();
      v79 = v76 + v137;
      if (__OFADD__(v76, v137))
      {
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    else
    {
      v78 = *(v75 + 16);
      v79 = v76 + v78;
      if (__OFADD__(v76, v78))
      {
        goto LABEL_87;
      }
    }

    if (v79 <= 0)
    {
    }

    v278 = v55;
    v277 = v77;
    v80 = *(v49 + 16);
    v308 = v37;
    if (!v80)
    {
      break;
    }

    v55 = 0;
    v81 = _swiftEmptyArrayStorage;
    while (v55 < *(v49 + 16))
    {
      v82 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v54 = *(v37 + 72);
      v83 = sub_100238F04(v49 + v82 + v54 * v55, v48, type metadata accessor for HostedRoutingSession);
      if (sub_100031908(v83))
      {
        sub_10024889C(v48, type metadata accessor for HostedRoutingSession);
      }

      else
      {
        sub_100238EA0(v48, v312);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v319 = v81;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000326B8(0, v81[2] + 1, 1);
          v81 = v319;
        }

        v86 = v81[2];
        v85 = v81[3];
        if (v86 >= v85 >> 1)
        {
          sub_1000326B8(v85 > 1, v86 + 1, 1);
          v81 = v319;
        }

        v81[2] = v86 + 1;
        sub_100238EA0(v312, v81 + v82 + v86 * v54);
        v37 = v308;
      }

      if (v80 == ++v55)
      {
        goto LABEL_51;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    v76 = _CocoaArrayWrapper.endIndex.getter();
    v75 = v305;
  }

  v81 = _swiftEmptyArrayStorage;
LABEL_51:
  v87 = v81[2];

  v88 = v304;
  v89 = *(**(v304 + 2) + 128);

  v91 = v299;
  v89(v90);

  v92 = v302;
  v55 = v302 + 48;
  v93 = *(v302 + 48);
  v94 = v310;
  v95 = v93(v91, 1, v310);
  v281 = v87;
  v312 = v55;
  *&v286 = v93;
  if (v95 == 1)
  {
    sub_1000038A4(v91, &qword_1005228D8, &unk_100450060);
    v96 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastTimeDetailedDiscoveryEnabled;
    swift_beginAccess();
    v97 = v88 + v96;
    v98 = v287;
    sub_10001D9AC(v97, v287, &qword_1005228D8, &unk_100450060);
    if (v93(v98, 1, v94) == 1)
    {
      sub_1000038A4(v98, &qword_1005228D8, &unk_100450060);
      v99 = &_swiftEmptyDictionarySingleton;
    }

    else
    {
      v106 = v302;
      v107 = v280;
      (*(v302 + 32))(v280, v98, v94);
      sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
      v108 = v309;
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v3 = v109;
      v110 = *(v106 + 8);
      v55 = v106 + 8;
      v110(v108, v94);
      isa = NSNumber.init(floatLiteral:)(v3).super.super.isa;
      v112 = swift_isUniquelyReferenced_nonNull_native();
      v318 = &_swiftEmptyDictionarySingleton;
      sub_10023C9CC(isa, 0xD00000000000001BLL, 0x800000010043D710, v112);
      v99 = v318;
      v110(v107, v94);
    }
  }

  else
  {
    (*(v92 + 32))(v298, v91, v94);
    v299 = "No picked items in snapshot";
    sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
    v55 = *(**(v88 + 16) + 104);

    v101 = v309;
    (v55)(v100);

    Date.timeIntervalSince(_:)();
    v3 = v102;
    v103 = *(v92 + 8);
    v103(v101, v94);
    v104 = NSNumber.init(floatLiteral:)(v3).super.super.isa;
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v319 = &_swiftEmptyDictionarySingleton;
    sub_10023C9CC(v104, 0xD00000000000001BLL, v299 | 0x8000000000000000, v105);
    v99 = v319;
    v103(v298, v94);
  }

  v54 = v303;
  v113 = v300;
  v37 = v308;
  v114 = &qword_10052AF98[13];
  v300 = v99;
  if (!v80)
  {

    v48 = v304;
    goto LABEL_62;
  }

  if (!*(v49 + 16))
  {
    goto LABEL_88;
  }

  v115 = v49 + ((*(v308 + 80) + 32) & ~*(v308 + 80));
  sub_100238F04(v115, v113, type metadata accessor for HostedRoutingSession);
  v48 = v304;
  if (v80 != 1)
  {
    v132 = 1;
    while (v132 < *(v49 + 16))
    {
      sub_100238F04(v115 + *(v37 + 72) * v132, v54, type metadata accessor for HostedRoutingSession);
      v133 = v113;
      v55 = *(sub_10003AC60() + 16);

      v134 = *(sub_10003AC60() + 16);

      if (v55 >= v134)
      {
        sub_10024889C(v54, type metadata accessor for HostedRoutingSession);
      }

      else
      {
        sub_10024889C(v133, type metadata accessor for HostedRoutingSession);
        sub_100238EA0(v54, v133);
      }

      v113 = v133;
      ++v132;
      v114 = qword_10052AF98 + 104;
      if (v80 == v132)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_83;
  }

LABEL_59:

  v116 = v288;
  sub_100238EA0(v113, v288);
  v117 = sub_10003AC60();
  sub_10024889C(v116, type metadata accessor for HostedRoutingSession);
  v118 = *(v117 + 16);

  if (!v118)
  {
LABEL_62:
    v119 = objc_opt_self();
    v120 = MSVAutoBugCaptureDomainMediaRemote;
    v55 = String._bridgeToObjectiveC()();
    v121 = String._bridgeToObjectiveC()();
    v122 = String._bridgeToObjectiveC()();
    [v119 snapshotWithDomain:v120 type:v55 subType:v121 context:v122 triggerThresholdValues:0 events:0 completion:0];

    v118 = 0;
  }

  v299 = v118;
  v123 = v114[263];
  swift_beginAccess();
  v124 = v297;
  sub_10001D9AC(&v48[v123], v297, &qword_1005228D8, &unk_100450060);
  v125 = v310;
  if ((v286)(v124, 1, v310) != 1)
  {
    v55 = v302;
    v129 = *(v302 + 32);
    v297 = v302 + 32;
    v288 = v129;
    (v129)(v301, v124, v125);
    v75 = v306;
    if (v278)
    {
      v130 = v306;
      v131 = _CocoaArrayWrapper.endIndex.getter();
      v75 = v130;
      v54 = v131;
    }

    else
    {
      v54 = *(v306 + 16);
    }

    LODWORD(v298) = v54 == 0;
    if (!v54)
    {

      v3 = 0.0;
      goto LABEL_104;
    }

    v308 = v75 & 0xC000000000000001;
    if ((v75 & 0xC000000000000001) == 0)
    {
      if (!*(v75 + 16))
      {
        goto LABEL_216;
      }

      v135 = v75;
      v312 = *(v75 + 32);

      if (v54 == 1)
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    }

LABEL_89:
    v135 = v75;
    v312 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (v54 == 1)
    {
LABEL_78:
      v136 = v312;
LABEL_102:

      v149 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
      swift_beginAccess();
      v55 = v302;
      v150 = v136 + v149;
      v151 = v284;
      v125 = v310;
      (*(v302 + 16))(v284, v150, v310);

      v152 = v285;
      (v288)(v285, v151, v125);
      Date.timeIntervalSince(_:)();
      v3 = v153;
      (*(v55 + 8))(v152, v125);
      if (v3 <= 0.0)
      {
        v3 = 0.0;
      }

LABEL_104:
      result = v305;
      if (v277)
      {
        v54 = _CocoaArrayWrapper.endIndex.getter();
        result = v305;
        if (v54)
        {
LABEL_106:
          v308 = result & 0xC000000000000001;
          if ((result & 0xC000000000000001) != 0)
          {
            goto LABEL_217;
          }

          if (!*(result + 16))
          {
            goto LABEL_234;
          }

          v312 = *(result + 32);

          if (v54 == 1)
          {
            goto LABEL_109;
          }

          goto LABEL_218;
        }
      }

      else
      {
        v54 = v305[2];
        if (v54)
        {
          goto LABEL_106;
        }
      }

      v164 = *(v55 + 8);
      v55 += 8;
      result = v164(v301, v125);
      LODWORD(v301) = 1;
      v128 = 0.0;
      goto LABEL_115;
    }

LABEL_90:
    v304 = (v55 + 16);
    v303 = (v55 + 8);
    v55 = 1;
    v138 = v135;
    v139 = v310;
    do
    {
      while (1)
      {
        if (v308)
        {
          v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v140 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            goto LABEL_209;
          }
        }

        else
        {
          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_210;
          }

          if (v55 >= *(v138 + 16))
          {
            goto LABEL_211;
          }

          v136 = *(v138 + 8 * v55 + 32);

          v140 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            goto LABEL_209;
          }
        }

        v141 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
        swift_beginAccess();
        v142 = *v304;
        v143 = v309;
        (*v304)(v309, v136 + v141, v139);
        v144 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
        v145 = v312;
        swift_beginAccess();
        v146 = v145 + v144;
        v147 = v307;
        (v142)(v307, v146, v139);
        LOBYTE(v144) = static Date.< infix(_:_:)();
        v148 = *v303;
        (*v303)(v147, v139);
        v148(v143, v139);
        if ((v144 & 1) == 0)
        {
          break;
        }

        v312 = v136;
        v55 = v140;
        v138 = v306;
        if (v140 == v54)
        {
          goto LABEL_102;
        }
      }

      ++v55;
      v138 = v306;
    }

    while (v140 != v54);
    v136 = v312;
    goto LABEL_102;
  }

  result = sub_1000038A4(v124, &qword_1005228D8, &unk_100450060);
  LODWORD(v301) = 1;
  v128 = 0.0;
  v3 = 0.0;
  LODWORD(v298) = 1;
  while (1)
  {
LABEL_115:
    v165 = v296;
    v166 = 0;
    v308 = 0;
    v305 = 0;
    v312 = 0;
    v303 = 0;
    v304 = 0;
    v310 = 0;
    v306 = 0;
    v307 = 0;
    v167 = 0;
    v168 = 0;
    v169 = 1 << *(v313 + 32);
    v170 = -1;
    if (v169 < 64)
    {
      v170 = ~(-1 << v169);
    }

    v54 = v170 & *(v313 + 64);
    v171 = (v169 + 63) >> 6;
    v296 += 16;
    v288 = (v165 + 8);
    v287 = &unk_100451130;
    *&v127 = 136315138;
    v286 = v127;
    *&v127 = 136315394;
    v285 = v127;
LABEL_118:
    if (v54)
    {
      goto LABEL_123;
    }

    while (1)
    {
      v172 = v168 + 1;
      if (__OFADD__(v168, 1))
      {
        break;
      }

      if (v172 >= v171)
      {

        sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
        v217 = NSNumber.init(integerLiteral:)(v167).super.super.isa;
        v218 = v300;
        v219 = swift_isUniquelyReferenced_nonNull_native();
        v316 = v218;
        sub_10023C9CC(v217, 0xD000000000000013, 0x800000010043D3D0, v219);
        v220 = v316;
        v221 = NSNumber.init(integerLiteral:)(v307).super.super.isa;
        v222 = swift_isUniquelyReferenced_nonNull_native();
        v316 = v220;
        sub_10023C9CC(v221, 0xD000000000000013, 0x800000010043D3F0, v222);
        v223 = v316;
        v224 = NSNumber.init(integerLiteral:)(v306).super.super.isa;
        v225 = swift_isUniquelyReferenced_nonNull_native();
        v316 = v223;
        sub_10023C9CC(v224, 0x746E756F43767461, 0xE800000000000000, v225);
        v226 = v316;
        v227 = NSNumber.init(integerLiteral:)(v310).super.super.isa;
        v228 = swift_isUniquelyReferenced_nonNull_native();
        v316 = v226;
        sub_10023C9CC(v227, 0x746F6F7465756C62, 0xEE00746E756F4368, v228);
        v229 = v316;
        v230 = NSNumber.init(integerLiteral:)(v304).super.super.isa;
        v231 = swift_isUniquelyReferenced_nonNull_native();
        v316 = v229;
        sub_10023C9CC(v230, 0x43646F50656D6F68, 0xEC000000746E756FLL, v231);
        v232 = v316;
        v233 = NSNumber.init(integerLiteral:)(v303).super.super.isa;
        v234 = swift_isUniquelyReferenced_nonNull_native();
        v316 = v232;
        sub_10023C9CC(v233, 0xD000000000000010, 0x800000010043D410, v234);
        v235 = v316;
        v236 = NSNumber.init(integerLiteral:)(v299).super.super.isa;
        v237 = swift_isUniquelyReferenced_nonNull_native();
        v316 = v235;
        sub_10023C9CC(v236, 0xD000000000000018, 0x800000010043D600, v237);
        v238 = v316;
        v239 = NSNumber.init(integerLiteral:)(v312).super.super.isa;
        v240 = swift_isUniquelyReferenced_nonNull_native();
        v316 = v238;
        sub_10023C9CC(v239, 0x756F43726568746FLL, 0xEA0000000000746ELL, v240);
        v241 = v316;
        v242 = NSNumber.init(integerLiteral:)(v305).super.super.isa;
        v243 = swift_isUniquelyReferenced_nonNull_native();
        v316 = v241;
        sub_10023C9CC(v242, 0xD000000000000015, 0x800000010043D430, v243);
        v244 = v316;
        if ((v298 & 1) == 0)
        {
          v245 = NSNumber.init(floatLiteral:)(v3).super.super.isa;
          v246 = swift_isUniquelyReferenced_nonNull_native();
          v316 = v244;
          sub_10023C9CC(v245, 0xD00000000000001BLL, 0x800000010043D6D0, v246);
          v244 = v316;
        }

        v247 = v281;
        if ((v301 & 1) == 0)
        {
          v248 = NSNumber.init(floatLiteral:)(v128).super.super.isa;
          v249 = swift_isUniquelyReferenced_nonNull_native();
          v316 = v244;
          sub_10023C9CC(v248, 0xD00000000000001DLL, 0x800000010043D6B0, v249);
          v244 = v316;
        }

        v250 = NSNumber.init(integerLiteral:)(v308).super.super.isa;
        v251 = swift_isUniquelyReferenced_nonNull_native();
        v316 = v244;
        sub_10023C9CC(v250, 0xD000000000000013, 0x800000010043D620, v251);
        v252 = v316;
        v253 = NSNumber.init(integerLiteral:)(v247).super.super.isa;
        v254 = swift_isUniquelyReferenced_nonNull_native();
        v316 = v252;
        sub_10023C9CC(v253, 0xD000000000000013, 0x800000010043D640, v254);
        v255 = v316;
        v256 = NSNumber.init(integerLiteral:)(v166).super.super.isa;
        v257 = swift_isUniquelyReferenced_nonNull_native();
        v316 = v255;
        sub_10023C9CC(v256, 0xD000000000000017, 0x800000010043D660, v257);
        v258 = v316;
        v259 = v292;
        RoutingSessionConfiguration.surface.getter();
        v260 = sub_10023DFFC(v259);
        LOBYTE(v256) = v261;
        (*(v293 + 8))(v259, v295);
        if ((v256 & 1) == 0)
        {
          v262 = NSNumber.init(integerLiteral:)(v260).super.super.isa;
          v263 = swift_isUniquelyReferenced_nonNull_native();
          v316 = v258;
          sub_10023C9CC(v262, 0x536C6F72746E6F63, 0xEE00656361667275, v263);
          v258 = v316;
        }

        sub_10023EC68(0xD00000000000002ELL, 0x800000010043D680, v258);
      }

      v54 = *(v311 + 8 * v172);
      ++v168;
      if (v54)
      {
        v168 = v172;
LABEL_123:
        v173 = *(*(v313 + 56) + ((v168 << 9) | (8 * __clz(__rbit64(v54)))));
        v54 &= v54 - 1;
        v174 = *(v173 + 56);
        v175 = (v174 >> 8) & 6 | (v174 >> 7) & 1;
        if (v175 > 2)
        {
          if ((v175 - 5) >= 2 && v175 != 3)
          {
            v179 = __OFADD__(v312++, 1);
            if (v179)
            {
              goto LABEL_212;
            }
          }
        }

        else if (v175)
        {
          v55 = *(v173 + 40);
          v176 = *(v173 + 48);
          if (v175 == 1)
          {
            v302 = v167;
            v177 = *(v173 + 58);

            v297 = v176;
            sub_10001DAE0(v55, v176, v174);
            LOBYTE(v316) = *sub_10025774C();
            v315 = v177;
            sub_100248690();
            v178 = dispatch thunk of SetAlgebra.isSuperset(of:)();
            v309 = v166;
            if (v178)
            {
              v179 = __OFADD__(v308++, 1);
              if (v179)
              {
                goto LABEL_213;
              }
            }

            v180 = v55;
            v181 = *(v173 + 58);
            v55 = sub_100257758();
            LOBYTE(v316) = *v55;
            v315 = v181;
            if ((dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) == 0)
            {
              v182 = v291;
              v183 = v290;
              goto LABEL_143;
            }

            v179 = __OFADD__(v309++, 1);
            v182 = v291;
            v183 = v290;
            if (v179)
            {
              goto LABEL_214;
            }

LABEL_143:
            if (v174 >> 11 == 7)
            {
              sub_100019550(v180, v297, v174);

              v179 = __OFADD__(v306++, 1);
              v167 = v302;
              v166 = v309;
              if (v179)
              {
                goto LABEL_235;
              }
            }

            else if (v174 >> 11 == 6)
            {
              v184 = v297;
              if (v297)
              {
                v55 = v180;
                sub_10001CFE8(v180, v297, v174 & 0xF97F);
                if (sub_100256898())
                {
                  sub_100019550(v180, v184, v174);
                  sub_100019550(v180, v184, v174);

                  v179 = __OFADD__(v304++, 1);
                  v167 = v302;
                  v166 = v309;
                  if (v179)
                  {
                    goto LABEL_241;
                  }

                  goto LABEL_118;
                }

                v202 = sub_10025683C();
                v203 = v279;
                v166 = v309;
                if (v202)
                {
                  sub_100019550(v55, v184, v174);
                  sub_100019550(v55, v184, v174);

                  v179 = __OFADD__(v303, 1);
                  v303 = (v303 + 1);
                  v167 = v302;
                  if (v179)
                  {
                    goto LABEL_243;
                  }

                  goto LABEL_118;
                }

                v208 = sub_100028D40();
                (*v296)(v203, v208, v182);
                sub_10001CFE8(v55, v184, v174 & 0xF97F);
                v209 = Logger.logObject.getter();
                v210 = static os_log_type_t.error.getter();
                sub_100019550(v55, v184, v174);
                LODWORD(v283) = v210;
                if (os_log_type_enabled(v209, v210))
                {
                  v211 = swift_slowAlloc();
                  v280 = v209;
                  v212 = v211;
                  v282 = swift_slowAlloc();
                  v316 = v282;
                  *v212 = v285;
                  *(v212 + 4) = sub_10002C9C8(0xD000000000000015, v287 | 0x8000000000000000, &v316);
                  *(v212 + 12) = 2080;
                  v284 = v55;
                  v213 = v166;
                  v214 = sub_10002C9C8(v55, v184, &v316);
                  sub_100019550(v55, v184, v174);
                  *(v212 + 14) = v214;
                  v166 = v213;
                  v215 = v280;
                  _os_log_impl(&_mh_execute_header, v280, v283, "[%s] reportContext - item of type .homePod has unknown model: %s, skipping", v212, 0x16u);
                  v55 = v282;
                  swift_arrayDestroy();

                  sub_100019550(v284, v184, v174);
                }

                else
                {
                  sub_100019550(v55, v184, v174);
                  sub_100019550(v55, v184, v174);
                }

                result = (*v288)(v279, v291);
LABEL_196:
                v167 = v302;
              }

              else
              {
                sub_10001CFE8(v180, 0, v174 & 0xF97F);
                v196 = sub_100028D40();
                (*v296)(v183, v196, v182);
                v55 = v182;
                v197 = v183;
                v198 = Logger.logObject.getter();
                v199 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v198, v199))
                {
                  v200 = swift_slowAlloc();
                  v284 = v180;
                  v55 = v200;
                  v201 = swift_slowAlloc();
                  v316 = v201;
                  *v55 = v286;
                  *(v55 + 4) = sub_10002C9C8(0xD000000000000015, v287 | 0x8000000000000000, &v316);
                  _os_log_impl(&_mh_execute_header, v198, v199, "[%s] reportContext - item of type .homePod has no model, skipping", v55, 0xCu);
                  sub_100026A44(v201);
                  v166 = v309;

                  sub_100019550(v284, 0, v174);
                  result = (*v288)(v197, v291);
                  goto LABEL_196;
                }

                sub_100019550(v180, 0, v174);

                result = (*v288)(v197, v55);
                v167 = v302;
                v166 = v309;
              }
            }

            else
            {
              v194 = *(v173 + 58);
              LOBYTE(v316) = *v55;
              v315 = v194;
              v195 = dispatch thunk of SetAlgebra.isSuperset(of:)();

              result = sub_100019550(v180, v297, v174);
              if (v195)
              {
                v179 = __OFADD__(v305, 1);
                v305 = (v305 + 1);
                v167 = v302;
                v166 = v309;
                if (v179)
                {
                  goto LABEL_238;
                }
              }

              else
              {
                v167 = v302 + 1;
                v166 = v309;
                if (__OFADD__(v302, 1))
                {
                  goto LABEL_239;
                }
              }
            }
          }

          else
          {
            if ((v174 >> 11) - 1 < 2)
            {
              if (!v176)
              {
                v179 = __OFADD__(v310++, 1);
                if (v179)
                {
                  goto LABEL_240;
                }

                goto LABEL_118;
              }

              v302 = v167;
              v309 = v166;
              v316 = 44;
              v317 = 0xE100000000000000;
              __chkstk_darwin(result);
              v275 = &v316;
              sub_10001DAE0(v55, v176, v174);

              sub_10001DAE0(v55, v176, v174);
              v185 = v176;
              v186 = v176;
              v187 = v289;
              v188 = sub_10001B9EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_100248974, (&v276 - 4), v55, v185, v314);
              v289 = v187;
              if (v188[2])
              {
                v297 = v186;
                v284 = v55;
                v55 = v188[4];
                v189 = v188[5];
                v190 = v188[6];
                v191 = v188[7];

                if ((v189 ^ v55) >> 14)
                {
                  v166 = v309;
                  if ((v191 & 0x1000000000000000) != 0)
                  {
                    v55 = sub_10023CFC8(v55, v189, v190, v191, 10);
                    v207 = v216;
                  }

                  else
                  {
                    v192 = v190;
                    if ((v191 & 0x2000000000000000) != 0)
                    {
                      v316 = v190;
                      v317 = v191 & 0xFFFFFFFFFFFFFFLL;
                      v193 = &v316;
                    }

                    else if ((v190 & 0x1000000000000000) != 0)
                    {
                      v193 = ((v191 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    }

                    else
                    {
                      v193 = _StringObject.sharedUTF8.getter();
                      v192 = v190;
                    }

                    v204 = v189;
                    v205 = v289;
                    v55 = sub_10023E7FC(v193, v55, v204, v192, v191, 10);
                    v289 = v205;
                    v315 = v206 & 1;
                    v207 = v206 & 1;
                  }

                  sub_100019550(v284, v297, v174);

                  v167 = v302;
                  if ((v207 & 1) == 0 && v55 == 76)
                  {
                    v179 = __OFADD__(v307++, 1);
                    if (v179)
                    {
                      goto LABEL_242;
                    }

                    goto LABEL_118;
                  }

                  goto LABEL_188;
                }

                sub_100019550(v284, v297, v174);
              }

              else
              {
                sub_100019550(v55, v186, v174);
              }

              v166 = v309;
              v167 = v302;
LABEL_188:
              v179 = __OFADD__(v310++, 1);
              if (v179)
              {
                goto LABEL_237;
              }

              goto LABEL_118;
            }

            if ((v174 >> 11) - 15 >= 2)
            {
              v179 = __OFADD__(v310++, 1);
              if (v179)
              {
                goto LABEL_236;
              }

              goto LABEL_118;
            }

            v179 = __OFADD__(v307++, 1);
            if (v179)
            {
              goto LABEL_215;
            }
          }
        }

        goto LABEL_118;
      }
    }

    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v312 = result;
    if (v54 != 1)
    {
      break;
    }

LABEL_109:
    v154 = v312;
LABEL_110:

    v155 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
    swift_beginAccess();
    v156 = v302;
    v157 = v154 + v155;
    v158 = v282;
    v159 = v310;
    (*(v302 + 16))(v282, v157, v310);

    v160 = v283;
    (v288)(v283, v158, v159);
    v161 = v301;
    Date.timeIntervalSince(_:)();
    v128 = v162;
    v163 = *(v156 + 8);
    v55 = v156 + 8;
    v163(v160, v159);
    result = (v163)(v161, v159);
    LODWORD(v301) = 0;
    if (v128 <= 0.0)
    {
      v128 = 0.0;
    }
  }

LABEL_218:
  v306 = v55 + 16;
  v304 = (v55 + 8);
  v264 = 1;
  v265 = v310;
  while (2)
  {
    if (v308)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v154 = result;
      v266 = v264 + 1;
      if (__OFADD__(v264, 1))
      {
        break;
      }

      goto LABEL_226;
    }

    if ((v264 & 0x8000000000000000) != 0)
    {
      goto LABEL_232;
    }

    if (v264 >= v305[2])
    {
      goto LABEL_233;
    }

    v154 = v305[v264 + 4];

    v266 = v264 + 1;
    if (!__OFADD__(v264, 1))
    {
LABEL_226:
      v267 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
      swift_beginAccess();
      v268 = *v306;
      v269 = v309;
      (*v306)(v309, v154 + v267, v265);
      v270 = OBJC_IVAR____TtCC12mediaremoted25RoutingClientEventContextP33_8618A133B3A1BF92EA796463D6C9974513AvailableItem_lastAvailable;
      v271 = v312;
      swift_beginAccess();
      v272 = v271 + v270;
      v273 = v307;
      v268(v307, v272, v265);
      LOBYTE(v270) = static Date.< infix(_:_:)();
      v274 = *v304;
      (*v304)(v273, v265);
      v274(v269, v265);
      if (v270)
      {

        v312 = v154;
        v264 = v266;
        if (v266 == v54)
        {
          goto LABEL_110;
        }
      }

      else
      {

        ++v264;
        if (v266 == v54)
        {
          goto LABEL_109;
        }
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
  return result;
}

uint64_t sub_100241644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v182 = a2;
  v5 = type metadata accessor for RoutingSessionConfiguration.Surface();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v180 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HostedRoutingSession(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v14 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v174 = &v159 - v15;
  v170 = type metadata accessor for HostedRoutingItem(0);
  v169 = *(v170 - 8);
  v16 = *(v169 + 64);
  __chkstk_darwin(v170);
  v171 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v179 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v178 = &v159 - v23;
  v24 = __chkstk_darwin(v22);
  v173 = (&v159 - v25);
  v26 = __chkstk_darwin(v24);
  v28 = &v159 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v159 - v30;
  __chkstk_darwin(v29);
  v33 = &v159 - v32;
  v184 = type metadata accessor for Date();
  v185 = *(v184 - 8);
  v34 = *(v185 + 64);
  v35 = __chkstk_darwin(v184);
  v175 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v168 = &v159 - v38;
  v39 = __chkstk_darwin(v37);
  v172 = &v159 - v40;
  v41 = __chkstk_darwin(v39);
  v177 = (&v159 - v42);
  v43 = __chkstk_darwin(v41);
  v183 = &v159 - v44;
  __chkstk_darwin(v43);
  v46 = &v159 - v45;
  result = swift_beginAccess();
  v48 = a1;
  v49 = *(a1 + 32);
  if (v49)
  {
    v50 = *(v49 + 16) + 1;
    v51 = 32;
    do
    {
      if (!--v50)
      {
        return result;
      }

      v52 = *(v49 + v51);
      v51 += 16;
    }

    while (!*(v52 + 16));
    v163 = v6;
    v165 = v5;
    v181 = v48;
    v53 = (v48 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType);
    v54 = *(v48 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_initialLocalRouteType + 16);
    v164 = a3;
    if ((~v54 & 0x6FE) != 0)
    {
      v166 = v10;
      v167 = v46;
      v56 = *v53;
      v55 = v53[1];
      v176 = "timeSinceLastDismissal";
      sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
      v57 = 0;
      v58 = ((v54 >> 8) & 6 | (v54 >> 7) & 1) - 1;
      if (v58 <= 4)
      {
        v57 = qword_100451218[v58];
      }

      sub_10003FE34(v56, v55, v54);
      v59 = v55;
      v60 = v56;
      isa = NSNumber.init(integerLiteral:)(v57).super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v187[0] = &_swiftEmptyDictionarySingleton;
      sub_10023C9CC(isa, 0xD000000000000024, v176 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
      sub_10003FE48(v60, v59, v54);
      v176 = *&v187[0];
      v46 = v167;
      v10 = v166;
    }

    else
    {

      v176 = &_swiftEmptyDictionarySingleton;
    }

    v63 = *(**(v181 + 16) + 128);

    v63(v64);

    v65 = v185;
    v66 = v185 + 48;
    v67 = v184;
    v167 = *(v185 + 48);
    v68 = (v167)(v33, 1, v184);
    v166 = v66;
    if (v68 == 1)
    {
      sub_1000038A4(v33, &qword_1005228D8, &unk_100450060);
      v69 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastTimeDetailedDiscoveryEnabled;
      v70 = v181;
      swift_beginAccess();
      sub_10001D9AC(v70 + v69, v28, &qword_1005228D8, &unk_100450060);
      if ((v167)(v28, 1, v67) == 1)
      {
        sub_1000038A4(v28, &qword_1005228D8, &unk_100450060);
        v71 = v176;
      }

      else
      {
        v83 = v185;
        v84 = v172;
        v162 = *(v185 + 32);
        v162(v172, v28, v67);
        v85 = sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
        v86 = v183;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v88 = v87;
        v177 = *(v83 + 8);
        v177(v86, v67);
        v161 = v85;
        v89 = NSNumber.init(floatLiteral:)(v88).super.super.isa;
        v90 = v176;
        v91 = swift_isUniquelyReferenced_nonNull_native();
        *&v187[0] = v90;
        sub_10023C9CC(v89, 0xD000000000000014, 0x800000010043D590, v91);
        v92 = *&v187[0];
        type metadata accessor for Preferences.Storage();
        v93 = v173;
        static Preferences.Storage.lastRoutePickerPresentationFinish.getter();
        if ((v167)(v93, 1, v67) == 1)
        {
          v177(v84, v67);
          sub_1000038A4(v93, &qword_1005228D8, &unk_100450060);
          v71 = v92;
        }

        else
        {
          v103 = v92;
          v104 = v168;
          v105 = v93;
          v106 = v67;
          v162(v168, v105, v67);
          v176 = "presentationDuration";
          Date.timeIntervalSince(_:)();
          v108 = NSNumber.init(floatLiteral:)(v107).super.super.isa;
          v109 = swift_isUniquelyReferenced_nonNull_native();
          *&v187[0] = v103;
          sub_10023C9CC(v108, 0xD000000000000016, v176 | 0x8000000000000000, v109);
          v110 = *&v187[0];
          v111 = v177;
          v177(v104, v106);
          v111(v84, v106);
          v71 = v110;
        }
      }
    }

    else
    {
      v72 = *(v65 + 32);
      v161 = v65 + 32;
      v160 = v72;
      v72(v46, v33, v67);
      v172 = "localDevicePlayingWhenPresented";
      v73 = sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
      v74 = *(**(v181 + 16) + 104);

      v168 = v31;
      v76 = v183;
      v74(v75);

      Date.timeIntervalSince(_:)();
      v78 = v77;
      v173 = *(v185 + 8);
      v173(v76, v67);
      v162 = v73;
      v79 = v168;
      v80 = NSNumber.init(floatLiteral:)(v78).super.super.isa;
      v81 = v176;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *&v187[0] = v81;
      sub_10023C9CC(v80, 0xD000000000000014, v172 | 0x8000000000000000, v82);
      v71 = *&v187[0];
      type metadata accessor for Preferences.Storage();
      static Preferences.Storage.lastRoutePickerPresentationFinish.getter();
      if ((v167)(v79, 1, v67) == 1)
      {
        v173(v46, v67);
        sub_1000038A4(v79, &qword_1005228D8, &unk_100450060);
      }

      else
      {
        v160(v177, v79, v67);
        v176 = "presentationDuration";
        v94 = *(**(v181 + 16) + 104);

        v94(v95);

        Date.timeIntervalSince(_:)();
        v97 = v96;
        v98 = v76;
        v99 = v184;
        v100 = v173;
        v173(v98, v184);
        v101 = NSNumber.init(floatLiteral:)(v97).super.super.isa;
        v102 = swift_isUniquelyReferenced_nonNull_native();
        *&v187[0] = v71;
        sub_10023C9CC(v101, 0xD000000000000016, v176 | 0x8000000000000000, v102);
        v71 = *&v187[0];
        v100(v177, v99);
        v100(v46, v99);
      }
    }

    v112 = sub_10023BD58(v49);

    v176 = v71;
    if (v112 >> 62)
    {
LABEL_34:
      v113 = _CocoaArrayWrapper.endIndex.getter();
      if (v113)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v113 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v113)
      {
LABEL_21:
        v114 = 0;
        do
        {
          if ((v112 & 0xC000000000000001) != 0)
          {
            v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v116 = v114 + 1;
            if (__OFADD__(v114, 1))
            {
LABEL_31:
              __break(1u);
LABEL_32:

              sub_100238E4C(v190);
              v117 = 1;
              goto LABEL_36;
            }
          }

          else
          {
            if (v114 >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_34;
            }

            v115 = *(v112 + 8 * v114 + 32);

            v116 = v114 + 1;
            if (__OFADD__(v114, 1))
            {
              goto LABEL_31;
            }
          }

          (*(*v115 + 256))(v187);

          v190[0] = v187[1];
          v190[1] = v187[2];
          v191 = v188;
          v189 = v187[0];
          sub_1001E6204(&v189);
          if (v191 <= 2u || v191 == 6)
          {
            goto LABEL_32;
          }

          sub_100238E4C(v190);
          ++v114;
        }

        while (v116 != v113);
      }
    }

    v117 = 0;
LABEL_36:
    sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
    v118 = NSNumber.init(BOOLeanLiteral:)(v117).super.super.isa;
    v119 = v176;
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v186 = v119;
    sub_10023C9CC(v118, 0x656D726F66726570, 0xED00006B63695064, v120);
    v121 = v186;
    v122 = *(v181 + OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_localPlayingWhenPresented);
    if (v122 != 2)
    {
      v123 = NSNumber.init(BOOLeanLiteral:)(v122 & 1).super.super.isa;
      v124 = swift_isUniquelyReferenced_nonNull_native();
      v186 = v121;
      sub_10023C9CC(v123, 0xD00000000000001FLL, 0x800000010043D570, v124);
      v121 = v186;
    }

    result = sub_100032A00();
    v125 = result;
    v126 = *(result + 16);
    if (v126)
    {
      v127 = 0;
      while (1)
      {
        if (v127 >= *(v125 + 16))
        {
          __break(1u);
          return result;
        }

        v128 = sub_100238F04(v125 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v127, v14, type metadata accessor for HostedRoutingSession);
        if (sub_100031908(v128))
        {
          break;
        }

        ++v127;
        result = sub_10024889C(v14, type metadata accessor for HostedRoutingSession);
        if (v126 == v127)
        {
          goto LABEL_43;
        }
      }

      v148 = v174;
      sub_100238EA0(v14, v174);
      v149 = sub_10003AC60();
      sub_10024889C(v148, type metadata accessor for HostedRoutingSession);
      if (!*(v149 + 16))
      {
        goto LABEL_43;
      }

      v150 = v171;
      sub_100238F04(v149 + ((*(v169 + 80) + 32) & ~*(v169 + 80)), v171, type metadata accessor for HostedRoutingItem);

      v151 = v150 + *(v170 + 64);
      v152 = *v151;
      v153 = *(v151 + 8);
      v154 = *(v151 + 16);
      sub_10001DAE0(*v151, v153, v154);
      sub_10024889C(v150, type metadata accessor for HostedRoutingItem);
      v155 = ((v154 >> 8) & 6 | (v154 >> 7) & 1) - 1;
      v129 = v184;
      if (v155 > 4)
      {
        v156 = 0;
      }

      else
      {
        v156 = qword_100451218[v155];
      }

      v157 = NSNumber.init(integerLiteral:)(v156).super.super.isa;
      v158 = swift_isUniquelyReferenced_nonNull_native();
      v186 = v121;
      sub_10023C9CC(v157, 0xD000000000000024, 0x800000010043D4E0, v158);
      sub_100019550(v152, v153, v154);
      v121 = v186;
    }

    else
    {
LABEL_43:

      v129 = v184;
    }

    type metadata accessor for Preferences.Storage();
    v130 = v178;
    static Preferences.Storage.lastItemInteraction.getter();
    if ((v167)(v130, 1, v129) == 1)
    {
      sub_1000038A4(v130, &qword_1005228D8, &unk_100450060);
    }

    else
    {
      v131 = v185;
      v132 = v175;
      (*(v185 + 32))(v175, v130, v129);
      v133 = v183;
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v135 = v134;
      v136 = *(v131 + 8);
      v136(v133, v129);
      v137 = NSNumber.init(floatLiteral:)(v135).super.super.isa;
      v138 = swift_isUniquelyReferenced_nonNull_native();
      v186 = v121;
      sub_10023C9CC(v137, 0xD000000000000011, 0x800000010043D550, v138);
      v121 = v186;
      v136(v132, v129);
    }

    v139 = v165;
    v140 = v163;
    v141 = v180;
    RoutingSessionConfiguration.surface.getter();
    v142 = sub_10023DFFC(v141);
    v144 = v143;
    (*(v140 + 8))(v141, v139);
    if ((v144 & 1) == 0)
    {
      v145 = NSNumber.init(integerLiteral:)(v142).super.super.isa;
      v146 = swift_isUniquelyReferenced_nonNull_native();
      v186 = v121;
      sub_10023C9CC(v145, 0x536C6F72746E6F63, 0xEE00656361667275, v146);
      v121 = v186;
    }

    v147 = v179;
    sub_10023EC68(0xD000000000000035, 0x800000010043D510, v121);

    static Date.now.getter();
    (*(v185 + 56))(v147, 0, 1, v129);
    return static Preferences.Storage.lastRoutePickerPresentationFinish.setter();
  }

  return result;
}

unint64_t sub_100242968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_100523618, &qword_1004511C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000698C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_100242A64(uint64_t a1)
{
  v67 = sub_100242968(&off_1004C52F0);
  sub_1001BC5A8(&qword_100523608, &qword_1004511B8);
  swift_arrayDestroy();
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = a1 + 32;
    v70 = xmmword_10044EC70;
    v68 = a1 + 32;
    v69 = v2;
    do
    {
      v7 = v5 + 24 * v4;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      sub_10001DAE0(*v7, v8, v10);
      v11 = sub_10001D898(v9, v8, v10);
      if ((v13 >> 11) - 8 >= 3)
      {
        sub_1000196F4(v11, v12, v13);
        sub_1001BC5A8(&qword_1005235F0, &unk_100451190);
        result = swift_allocObject();
        v19 = result;
        *(result + 16) = v70;
        *(result + 32) = v9;
        *(result + 40) = v8;
        *(result + 48) = v10;
      }

      else
      {
        v73 = v8;
        v14 = *(v11 + 16);
        v15 = v11;
        v16 = v13;
        v17 = v12;

        sub_1000196F4(v15, v17, v16);
        v18 = *(v14 + 16);
        if (v18)
        {
          LODWORD(v72) = v10;
          v74 = v3;
          v75[0] = _swiftEmptyArrayStorage;
          sub_10023CCB4(0, v18, 0);
          v19 = _swiftEmptyArrayStorage;
          v71 = v14;
          v20 = (v14 + 64);
          do
          {
            v21 = *(v20 - 2);
            v22 = *(v20 - 1);
            v23 = *v20;
            sub_10001DAE0(v21, v22, *v20);
            v75[0] = v19;
            v25 = v19[2];
            v24 = v19[3];
            if (v25 >= v24 >> 1)
            {
              sub_10023CCB4((v24 > 1), v25 + 1, 1);
              v19 = v75[0];
            }

            v20 += 20;
            v19[2] = v25 + 1;
            v26 = &v19[3 * v25];
            v26[4] = v21;
            v26[5] = v22;
            *(v26 + 24) = v23;
            --v18;
          }

          while (v18);

          result = sub_100019550(v9, v73, v72);
          v3 = v74;
          v5 = v68;
          v2 = v69;
        }

        else
        {

          result = sub_100019550(v9, v73, v10);
          v19 = _swiftEmptyArrayStorage;
        }
      }

      v27 = v19[2];
      v28 = v3[2];
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v29 <= v3[3] >> 1)
      {
        if (!v19[2])
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v28 <= v29)
        {
          v30 = v28 + v27;
        }

        else
        {
          v30 = v28;
        }

        result = sub_10023C608(result, v30, 1, v3);
        v3 = result;
        if (!v19[2])
        {
LABEL_3:

          if (v27)
          {
            goto LABEL_58;
          }

          goto LABEL_4;
        }
      }

      if ((v3[3] >> 1) - v3[2] < v27)
      {
        goto LABEL_59;
      }

      swift_arrayInitWithCopy();

      if (v27)
      {
        v31 = v3[2];
        v32 = __OFADD__(v31, v27);
        v33 = v31 + v27;
        if (v32)
        {
          goto LABEL_60;
        }

        v3[2] = v33;
      }

LABEL_4:
      ++v4;
    }

    while (v4 != v2);
  }

  v34 = v3[2];
  result = v67;
  if (v34)
  {
    v64 = 0;
    v65 = 0;
    v68 = 0;
    v69 = v34;
    v35 = 0;
    v36 = 0;
    v37 = (v3 + 6);
    v66 = 1;
    v74 = v3;
    while (1)
    {
      if (v35 >= v3[2])
      {
        __break(1u);
        goto LABEL_57;
      }

      v39 = *(v37 - 2);
      v40 = *(v37 - 1);
      v41 = *v37;
      sub_10001DAE0(v39, v40, v41);
      v42 = sub_10001D898(v39, v40, v41);
      v44 = v43;
      v46 = v45;
      if ((v45 & 0xF000) != 0x3000)
      {
        break;
      }

      if (!v43)
      {
        result = sub_100019550(v39, v40, v41);
        goto LABEL_30;
      }

      v73 = &v64;
      v75[0] = 44;
      v75[1] = 0xE100000000000000;
      v47 = __chkstk_darwin(v42);
      v63[2] = v75;
      v48 = v47;
      sub_10001CFE8(v47, v44, v46);
      v50 = sub_10001B9EC(1, 1, sub_100248588, v63, v48, v44, v49);
      if (v50[2])
      {
        *&v70 = v36;
        v51 = v50[5];
        v72 = v50[4];
        v73 = v48;
        v52 = v50[7];
        v71 = v50[6];

        v53 = static String._fromSubstring(_:)();
        v55 = v54;
        v56 = v67;
        if (*(v67 + 16))
        {
          v72 = v53;
          v57 = sub_10000698C(v53, v54);
          if (v58)
          {
            v71 = *(*(v56 + 56) + 8 * v57);
            if (v68)
            {
              result = v73;
              if (v66)
              {
                goto LABEL_61;
              }

              sub_1000196F4(v73, v44, v46);
              sub_100019550(v39, v40, v41);

              v59 = v71;
              if (v65 < v71)
              {

                v3 = v74;
                goto LABEL_47;
              }

              v66 = 0;
LABEL_44:
              v3 = v74;
            }

            else
            {
              sub_1000196F4(v73, v44, v46);
              sub_100019550(v39, v40, v41);

              v3 = v74;
              v59 = v71;
LABEL_47:
              v65 = v59;
              v66 = 0;
              v64 = v72;
              v68 = v55;
            }

            v34 = v69;
            v36 = v70;
            goto LABEL_31;
          }
        }

        sub_100019550(v39, v40, v41);

        result = sub_1000196F4(v73, v44, v46);
        goto LABEL_44;
      }

      sub_100019550(v39, v40, v41);
      result = sub_1000196F4(v48, v44, v46);
      v3 = v74;
      v34 = v69;
LABEL_31:
      ++v35;
      v37 += 12;
      if (v34 == v35)
      {

        if (!v68)
        {
          return 0;
        }

        v60 = sub_10023DDC4(v64, v68);
        v62 = v61;

        if (v62)
        {
          return 0;
        }

        else
        {
          return v60;
        }
      }
    }

    v38 = v42;
    sub_100019550(v39, v40, v41);
    result = sub_1000196F4(v38, v44, v46);
LABEL_30:
    v3 = v74;
    goto LABEL_31;
  }

  return 0;
}

uint64_t sub_1002430A0(uint64_t a1, uint64_t a2)
{
  v277 = a1;
  v284 = type metadata accessor for Logger();
  v288 = *(v284 - 8);
  v3 = *(v288 + 64);
  v4 = __chkstk_darwin(v284);
  v275 = &v251 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v274 = &v251 - v7;
  v8 = __chkstk_darwin(v6);
  v276 = &v251 - v9;
  __chkstk_darwin(v8);
  v280 = &v251 - v10;
  v11 = sub_1001BC5A8(&qword_100523640, qword_100451520);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v251 - v13;
  v289 = type metadata accessor for HostedRoutingItem(0);
  v15 = *(v289 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v289);
  v278 = &v251 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v291 = &v251 - v20;
  __chkstk_darwin(v19);
  v22 = &v251 - v21;
  v23 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v251 - v25;
  v27 = type metadata accessor for HostedRoutingSession(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v251 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D9AC(a2, v26, &qword_100523620, &unk_1004511D0);
  v32 = *(v28 + 48);
  v273 = v27;
  if (v32(v26, 1, v27) == 1)
  {
    return sub_1000038A4(v26, &qword_100523620, &unk_1004511D0);
  }

  sub_100238EA0(v26, v31);
  v34 = sub_10003AC60();
  v35 = 0;
  v293 = *(v34 + 16);
  v36 = v277;
  while (1)
  {
    if (v293 == v35)
    {
      goto LABEL_22;
    }

    if (v35 >= *(v34 + 16))
    {
      __break(1u);
LABEL_73:

      v256 = 2;
LABEL_74:
      v50 = v269;
      goto LABEL_82;
    }

    v290 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v37 = *(v15 + 72);
    v292 = v34 + v290;
    sub_100238F04(v34 + v290 + v37 * v35, v22, type metadata accessor for HostedRoutingItem);
    if (sub_100032ED8())
    {
      break;
    }

    ++v35;
    v38 = sub_100258890();
    sub_10024889C(v22, type metadata accessor for HostedRoutingItem);
    if (v38)
    {
      goto LABEL_11;
    }
  }

  sub_10024889C(v22, type metadata accessor for HostedRoutingItem);
LABEL_11:
  swift_beginAccess();
  if (!*(v36 + 32))
  {
    goto LABEL_21;
  }

  v39 = *(v36 + 32);

  v41 = sub_10023BD58(v40);

  v43 = *(v36 + 32);
  if (!v43)
  {
    goto LABEL_21;
  }

  v286 = v37;
  v269 = v34;
  __chkstk_darwin(v42);
  *(&v251 - 2) = v31;
  *&v303 = v43;

  v44 = sub_10023D9D4(sub_1002486E4, (&v251 - 2), v43);
  v45 = __chkstk_darwin(v44);
  *(&v251 - 2) = &v303;
  if (v46)
  {
    v265 = 0;
    v259 = 0;
    v47 = 0;
  }

  else
  {
    v306[0] = v45;
    sub_10024871C(v306, v300);
    v265 = 0;
    v259 = *(&v300[0] + 1);
    v47 = *&v300[0];
  }

  if (!v47)
  {
LABEL_21:

    goto LABEL_22;
  }

  v49 = sub_100031908(v48);
  v50 = v269;
  if (v49)
  {

    sub_10001D9AC(&v31[*(v273 + 28)], v14, &qword_100523640, qword_100451520);
    v51 = type metadata accessor for HostedRoutingSession.NowPlayingInfo(0);
    if ((*(*(v51 - 8) + 48))(v14, 1, v51) == 1)
    {
      v52 = sub_1000038A4(v14, &qword_100523640, qword_100451520);
      goto LABEL_26;
    }

    v56 = *(v14 + 48);
    v57 = *(v14 + 56);
    v58 = *(v14 + 60);
    sub_100248888(v56, v57, *(v14 + 60));
    sub_10024889C(v14, type metadata accessor for HostedRoutingSession.NowPlayingInfo);
    v59 = sub_10025FA74(v56, v57 | (v58 << 32));
    v52 = sub_1002488FC(v56, v57, v58);
    v55 = 3;
    if (v59)
    {
      v55 = 0;
    }
  }

  else
  {
    __chkstk_darwin(v49);
    *(&v251 - 2) = v31;
    v53 = v265;
    v54 = sub_100237E74(sub_10024873C, (&v251 - 2), v41);
    v265 = v53;

    if (v54)
    {

      v55 = 1;
    }

    else
    {
LABEL_26:
      v55 = 5;
    }
  }

  v256 = v55;
  v60 = (*(*v259 + 152))(v52);
  v61 = v60;
  v306[0] = _swiftEmptyArrayStorage;
  if (v60 >> 62)
  {
    goto LABEL_77;
  }

  v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
  v262 = v31;
  if (v62)
  {
    v63 = 0;
    v31 = (v61 & 0xFFFFFFFFFFFFFF8);
    v50 = v300;
    while (1)
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v65 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          v14 = v306[0];
          v31 = v262;
          v50 = v269;
          goto LABEL_45;
        }
      }

      else
      {
        if (v63 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          v62 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_31;
        }

        v64 = *(v61 + 8 * v63 + 32);

        v65 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_42;
        }
      }

      (*(*v64 + 256))(v300);
      v303 = v300[1];
      v304 = v300[2];
      v305 = v301;
      v302 = v300[0];
      sub_1001E6204(&v302);
      v66 = v305;
      sub_100238E4C(&v303);
      if (v66 >= 3)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v67 = *(v306[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v63;
      if (v65 == v62)
      {
        goto LABEL_43;
      }
    }
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_45:

  LODWORD(v68) = v14 < 0 || (v14 & 0x4000000000000000) != 0;
  if (v68 != 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_50;
    }

LABEL_80:
    if (v256 == 1)
    {
      goto LABEL_81;
    }

LABEL_22:

    return sub_10024889C(v31, type metadata accessor for HostedRoutingSession);
  }

LABEL_79:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_80;
  }

LABEL_50:
  if (v256)
  {
LABEL_81:
  }

  else
  {
    if (v68)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v61 = *(v14 + 16);
    }

    if (v61)
    {
      v69 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v50 = (v69 + 1);
          if (__OFADD__(v69, 1))
          {
            goto LABEL_76;
          }
        }

        else
        {
          if (v69 >= *(v14 + 16))
          {
            __break(1u);
            goto LABEL_79;
          }

          v68 = *(v14 + 8 * v69 + 32);

          v50 = (v69 + 1);
          if (__OFADD__(v69, 1))
          {
            goto LABEL_76;
          }
        }

        v71 = (*(*v68 + 232))();
        if ((~v73 & 0x6FE) != 0)
        {
          v74 = v71;
          v75 = v72;
          v76 = v73;
          v77 = sub_1002562B4(v71, v72, v73);

          if (v77)
          {

            sub_10003FE48(v74, v75, v76);
            v256 = 5;
            v31 = v262;
            goto LABEL_74;
          }

          if (((v76 >> 8) & 6 | (v76 >> 7) & 1) == 1)
          {
            LODWORD(v68) = v76 & 0xF800;
            sub_10003FE48(v74, v75, v76);
            v31 = v262;
            if (v68 == 2048)
            {
              goto LABEL_73;
            }
          }

          else
          {
            sub_10003FE48(v74, v75, v76);
            v31 = v262;
          }
        }

        else
        {
        }

        ++v69;
        v70 = v50 == v61;
        v50 = v269;
      }

      while (!v70);
    }

    v256 = 0;
  }

LABEL_82:
  v279 = 0;
  v285 = 0;
  v264 = 0;
  v266 = 0;
  p_isa = 0;
  v80 = 0;
  v81 = 0;
  v272 = 0;
  v263 = 0;
  v281 = 0;
  v283 = 0;
  v271 = 0;
  v268 = (v288 + 16);
  v267 = (v288 + 8);
  v260 = &unk_100451130;
  *&v78 = 136315138;
  v255 = v78;
  *&v78 = 136315394;
  v251 = v78;
  while (1)
  {
    if (v81 >= *(v50 + 2))
    {
      goto LABEL_238;
    }

    v288 = v81;
    v14 = v291;
    sub_100238F04(v292 + v81 * v286, v291, type metadata accessor for HostedRoutingItem);
    v82 = v14 + *(v289 + 64);
    v83 = *(v82 + 16);
    v84 = (v83 >> 8) & 6 | (v83 >> 7) & 1;
    if (v84 > 2)
    {
      if ((v84 - 3) < 3)
      {
LABEL_92:
        result = sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
        v91 = __OFADD__(v80++, 1);
        if (v91)
        {
          goto LABEL_239;
        }

        if (__OFADD__(v285, 1))
        {
          goto LABEL_240;
        }

        ++v285;
        p_isa = v80;
        v279 = v80;
        goto LABEL_154;
      }

LABEL_153:
      result = sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
LABEL_154:
      v142 = v288;
      goto LABEL_155;
    }

    if (!v84)
    {
      goto LABEL_92;
    }

    v85 = *v82;
    v86 = *(v82 + 8);
    if (v84 == 1)
    {
      break;
    }

    if ((v83 >> 11) - 1 >= 2)
    {
      if ((v83 >> 11) - 15 >= 2)
      {
        result = sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
        v91 = __OFADD__(v266++, 1);
        if (v91)
        {
          goto LABEL_252;
        }
      }

      else
      {
        result = sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
        v91 = __OFADD__(v264++, 1);
        if (v91)
        {
          goto LABEL_250;
        }
      }

      goto LABEL_154;
    }

    if (!v86)
    {
      result = sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
      v91 = __OFADD__(v266++, 1);
      if (v91)
      {
        goto LABEL_255;
      }

      goto LABEL_154;
    }

    v297 = 44;
    v298 = 0xE100000000000000;
    v130 = __chkstk_darwin(v85);
    *(&v251 - 2) = &v297;
    v132 = v131;
    v133 = v130;
    v135 = v134;
    sub_10001CFE8(v130, v134, v131 & 0xF97F);
    sub_10001CFE8(v133, v135, v132 & 0xF97F);
    v136 = v265;
    v137 = sub_10001B9EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_100248974, (&v251 - 2), v133, v135, &v297);
    v265 = v136;
    if (!v137[2])
    {
      v14 = v137;
      sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
      v147 = v133;
      v148 = v135;
LABEL_167:
      sub_100019550(v147, v148, v132);

      v142 = v288;
LABEL_178:
      v91 = __OFADD__(v266++, 1);
      if (v91)
      {
        goto LABEL_253;
      }

      goto LABEL_155;
    }

    v257 = v135;
    v258 = v133;
    v139 = v137[4];
    v138 = v137[5];
    v140 = v137[6];
    v14 = v137[7];

    if (!((v138 ^ v139) >> 14))
    {
      sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
      v147 = v258;
      v148 = v257;
      goto LABEL_167;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v151 = sub_10023CFC8(v139, v138, v140, v14, 10);
      v153 = v163;
      sub_100019550(v258, v257, v132);
      sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
    }

    else
    {
      if ((v14 & 0x2000000000000000) != 0)
      {
        v297 = v140;
        v298 = v14 & 0xFFFFFFFFFFFFFFLL;
        v141 = &v297;
      }

      else if ((v140 & 0x1000000000000000) != 0)
      {
        v141 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v141 = _StringObject.sharedUTF8.getter();
      }

      v149 = v138;
      v150 = v265;
      v151 = sub_10023E7FC(v141, v139, v149, v140, v14, 10);
      v265 = v150;
      LOBYTE(v294[0]) = v152 & 1;
      v153 = v152 & 1;
      sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
      sub_100019550(v258, v257, v132);
    }

    v142 = v288;
    if ((v153 & 1) != 0 || v151 != 76)
    {
      goto LABEL_178;
    }

    v91 = __OFADD__(v264++, 1);
    if (v91)
    {
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
      __break(1u);
      return result;
    }

LABEL_155:
    v81 = v142 + 1;
    if (v81 == v293)
    {
      v164 = sub_100031908(result);
      if (v164)
      {

        v166 = 1;
        v14 = v277;
        p_isa = _swiftEmptyArrayStorage;
      }

      else
      {
        v167 = *(v50 + 2);
        p_isa = _swiftEmptyArrayStorage;
        if (v167)
        {
          v297 = _swiftEmptyArrayStorage;
          sub_10023CCB4(0, v167, 0);
          v168 = v297;
          v169 = v50 + v290;
          do
          {
            v170 = v278;
            sub_100238F04(v169, v278, type metadata accessor for HostedRoutingItem);
            v171 = v170 + *(v289 + 64);
            v172 = *v171;
            v173 = *(v171 + 8);
            v174 = *(v171 + 16);
            sub_10001DAE0(*v171, v173, v174);
            sub_10024889C(v170, type metadata accessor for HostedRoutingItem);
            v297 = v168;
            v176 = v168[2];
            v175 = v168[3];
            if (v176 >= v175 >> 1)
            {
              sub_10023CCB4((v175 > 1), v176 + 1, 1);
              v168 = v297;
            }

            v168[2] = v176 + 1;
            v177 = &v168[3 * v176];
            v177[4] = v172;
            v177[5] = v173;
            *(v177 + 24) = v174;
            v169 += v286;
            --v167;
          }

          while (v167);

          p_isa = _swiftEmptyArrayStorage;
        }

        else
        {

          v168 = _swiftEmptyArrayStorage;
        }

        v166 = sub_100242A64(v168);

        v14 = v277;
      }

      if (__OFADD__(v266, v264))
      {
        goto LABEL_251;
      }

      v293 = v166;
      if (v266 + v264 <= 0)
      {
        swift_beginAccess();
        v14 = *(v14 + 40);
        v294[0] = _swiftEmptyArrayStorage;
        v179 = 1 << *(v14 + 32);
        v180 = -1;
        if (v179 < 64)
        {
          v180 = ~(-1 << v179);
        }

        v181 = v180 & *(v14 + 64);
        v182 = (v179 + 63) >> 6;

        v183 = 0;
        if (v181)
        {
          while (1)
          {
            v184 = v183;
LABEL_220:
            v185 = __clz(__rbit64(v181));
            v181 &= v181 - 1;
            v186 = *(*(*(v14 + 56) + ((v184 << 9) | (8 * v185))) + 58);

            v296 = *sub_100257758();
            v295 = v186;
            sub_100248690();
            if (dispatch thunk of SetAlgebra.isSuperset(of:)())
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v187 = *(v294[0] + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v183 = v184;
              if (!v181)
              {
                break;
              }
            }

            else
            {

              v183 = v184;
              if (!v181)
              {
                break;
              }
            }
          }
        }

        while (1)
        {
          v184 = v183 + 1;
          if (__OFADD__(v183, 1))
          {
            goto LABEL_242;
          }

          if (v184 >= v182)
          {

            v14 = v294[0];
            if (v294[0] < 0 || (v294[0] & 0x4000000000000000) != 0)
            {
              goto LABEL_258;
            }

            v188 = *(v294[0] + 16);
            v31 = v262;
            if (!v188)
            {
              goto LABEL_259;
            }

            goto LABEL_228;
          }

          v181 = *(v14 + 64 + 8 * v184);
          ++v183;
          if (v181)
          {
            goto LABEL_220;
          }
        }
      }

      v178 = 1;
      goto LABEL_261;
    }
  }

  v87 = v83 >> 11;
  if ((v83 >> 11) - 8 >= 3)
  {
    v279 = (p_isa + 1);
    v124 = v275;
    v125 = v274;
    if (__OFADD__(p_isa, 1))
    {
      goto LABEL_249;
    }

    v126 = v284;
    if (v87 == 7)
    {
      result = sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
      v91 = __OFADD__(v283++, 1);
      if (v91)
      {
        goto LABEL_254;
      }
    }

    else
    {
      if (v87 != 6)
      {
        v143 = v291;
        v144 = *(v291 + *(v289 + 44));
        p_isa = v83;
        v145 = v85;
        v146 = v86;
        sub_10001CFE8(v85, v86, v83 & 0xF97F);
        LOBYTE(v297) = *sub_100257758();
        LOBYTE(v294[0]) = v144;
        sub_100248690();
        v14 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        sub_10024889C(v143, type metadata accessor for HostedRoutingItem);
        result = sub_100019550(v145, v146, p_isa);
        if (v14)
        {
          v91 = __OFADD__(v272++, 1);
          v80 = v279;
          v142 = v288;
          if (v91)
          {
            goto LABEL_256;
          }
        }

        else
        {
          v91 = __OFADD__(v271++, 1);
          v80 = v279;
          v142 = v288;
          if (v91)
          {
            goto LABEL_257;
          }
        }

LABEL_195:
        p_isa = v80;
        goto LABEL_155;
      }

      if (!v86)
      {
        v154 = v83;
        v155 = v85;
        sub_10001CFE8(v85, 0, v83 & 0xF97F);
        v156 = sub_100028D40();
        (*v268)(v125, v156, v126);
        v14 = Logger.logObject.getter();
        v157 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v157))
        {
          v158 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v297 = v159;
          *v158 = v255;
          *(v158 + 4) = sub_10002C9C8(0xD000000000000015, v260 | 0x8000000000000000, &v297);
          _os_log_impl(&_mh_execute_header, v14, v157, "[%s] reportGroupCreation - item of type .homePod has no model, reporting as normal HomePod", v158, 0xCu);
          sub_100026A44(v159);

          (*v267)(v125, v284);
        }

        else
        {

          (*v267)(v125, v126);
        }

        sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
        result = sub_100019550(v155, 0, v154);
        v91 = __OFADD__(v281++, 1);
        v80 = v279;
        v142 = v288;
        if (v91)
        {
          goto LABEL_271;
        }

        goto LABEL_195;
      }

      v127 = v83;
      v128 = v85;
      v129 = v86;
      sub_10001CFE8(v85, v86, v83 & 0xF97F);
      if (sub_100256898())
      {
        sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
        result = sub_100019550(v128, v129, v127);
        v91 = __OFADD__(v281++, 1);
        if (v91)
        {
          goto LABEL_272;
        }
      }

      else
      {
        if (!sub_10025683C())
        {
          v160 = sub_100028D40();
          (*v268)(v124, v160, v126);
          sub_10001CFE8(v128, v129, v127 & 0xF97F);
          v14 = Logger.logObject.getter();
          v161 = static os_log_type_t.error.getter();
          sub_100019550(v128, v129, v127);
          if (os_log_type_enabled(v14, v161))
          {
            v162 = swift_slowAlloc();
            v297 = swift_slowAlloc();
            *v162 = v251;
            *(v162 + 4) = sub_10002C9C8(0xD000000000000015, v260 | 0x8000000000000000, &v297);
            *(v162 + 12) = 2080;
            *(v162 + 14) = sub_10002C9C8(v128, v129, &v297);
            _os_log_impl(&_mh_execute_header, v14, v161, "[%s] reportGroupCreation - item of type .homePod has unknown model: %s, reporting as normal HomePod", v162, 0x16u);
            swift_arrayDestroy();

            (*v267)(v124, v284);
          }

          else
          {

            (*v267)(v124, v126);
          }

          sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
          result = sub_100019550(v128, v129, v127);
          v91 = __OFADD__(v281++, 1);
          v80 = v279;
          v142 = v288;
          if (v91)
          {
            goto LABEL_275;
          }

          goto LABEL_195;
        }

        sub_10024889C(v291, type metadata accessor for HostedRoutingItem);
        result = sub_100019550(v128, v129, v127);
        v91 = __OFADD__(v263++, 1);
        if (v91)
        {
          goto LABEL_274;
        }
      }
    }

    v80 = v279;
    p_isa = v279;
    goto LABEL_154;
  }

  v88 = *(v85 + 16);
  v89 = *(v88 + 16);
  if (!v89)
  {
    v80 = p_isa;
LABEL_152:
    v50 = v269;
    goto LABEL_153;
  }

  v258 = *v82;
  v257 = v86;
  v253 = v83;
  sub_10001DAE0(v85, v86, v83);
  v279 = (v89 + p_isa);

  p_isa = (p_isa - 0x7FFFFFFFFFFFFFFFLL);
  v90 = (v88 + 64);
  v287 = v88;
  while (1)
  {
    v94 = *(v90 - 3);
    v95 = *(v90 - 2);
    v14 = *(v90 - 1);
    v96 = *v90;
    v306[0] = *(v90 - 4);
    v306[1] = v94;
    v306[2] = v95;
    v306[3] = v14;
    v307 = v96;
    if (!p_isa)
    {
      break;
    }

    sub_10001DAE0(v95, v14, v96);
    v97 = sub_10025692C();
    v100 = v97;
    v101 = v98;
    v102 = v99;
    v103 = v99 >> 11;
    if (v103 == 7)
    {

      sub_100019550(v95, v14, v96);
      sub_1000196F4(v100, v101, v102);
      v104 = v283 + 1;
      if (__OFADD__(v283, 1))
      {
        goto LABEL_241;
      }

      v105 = &v304;
    }

    else
    {
      if (v103 != 6)
      {
        v282 = p_isa;
        p_isa = v89;
        v106 = v99;
        v107 = v97;
        v108 = *(v291 + *(v289 + 44));
        LOBYTE(v297) = *sub_100257758();
        LOBYTE(v294[0]) = v108;
        sub_100248690();
        v109 = dispatch thunk of SetAlgebra.isSuperset(of:)();

        sub_100019550(v95, v14, v96);
        sub_1000196F4(v107, v101, v106);
        if (v109)
        {
          v92 = v272 + 1;
          if (__OFADD__(v272, 1))
          {
            goto LABEL_244;
          }

          v89 = p_isa;
          v93 = v300;
        }

        else
        {
          v92 = v271 + 1;
          if (__OFADD__(v271, 1))
          {
            goto LABEL_243;
          }

          v89 = p_isa;
          v93 = &v299;
        }

        *(v93 - 32) = v92;
        p_isa = &v282->isa;
        goto LABEL_98;
      }

      if (!v98)
      {
        v270 = v97;
        v110 = sub_100028D40();
        (*v268)(v280, v110, v284);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v282 = v111;
          v114 = v113;
          v261 = swift_slowAlloc();
          v297 = v261;
          *v114 = v255;
          *(v114 + 4) = sub_10002C9C8(0xD000000000000015, v260 | 0x8000000000000000, &v297);
          _os_log_impl(&_mh_execute_header, v282, v112, "[%s] reportGroupCreation - item of type .homePod has no model, reporting as normal HomePod", v114, 0xCu);
          sub_100026A44(v261);

          sub_100019550(v95, v14, v96);
        }

        else
        {

          sub_100019550(v95, v14, v96);
        }

        sub_1000196F4(v270, 0, v102);
        (*v267)(v280, v284);
        if (__OFADD__(v281, 1))
        {
          goto LABEL_245;
        }

        ++v281;
        goto LABEL_98;
      }

      if ((sub_100256898() & 1) == 0)
      {
        if (sub_10025683C())
        {

          sub_100019550(v95, v14, v96);
          sub_1000196F4(v100, v101, v102);
          v91 = __OFADD__(v263++, 1);
          if (v91)
          {
            goto LABEL_248;
          }
        }

        else
        {
          v261 = v89;
          v115 = sub_100028D40();
          (*v268)(v276, v115, v284);

          LODWORD(v282) = v102;
          v116 = Logger.logObject.getter();
          v117 = static os_log_type_t.error.getter();
          sub_1000196F4(v100, v101, v282);
          v254 = v117;
          v118 = v117;
          v119 = v116;
          if (os_log_type_enabled(v116, v118))
          {
            v120 = swift_slowAlloc();
            v121 = v100;
            v270 = v100;
            v122 = v120;
            v252 = swift_slowAlloc();
            v297 = v252;
            *v122 = v251;
            *(v122 + 4) = sub_10002C9C8(0xD000000000000015, v260 | 0x8000000000000000, &v297);
            *(v122 + 12) = 2080;
            *(v122 + 14) = sub_10002C9C8(v121, v101, &v297);
            _os_log_impl(&_mh_execute_header, v119, v254, "[%s] reportGroupCreation - item of type .homePod has unknown model: %s, reporting as normal HomePod", v122, 0x16u);
            swift_arrayDestroy();

            sub_100019550(v95, v14, v96);

            v123 = v270;
          }

          else
          {

            sub_100019550(v95, v14, v96);

            v123 = v100;
          }

          sub_1000196F4(v123, v101, v282);
          (*v267)(v276, v284);
          v89 = v261;
          v91 = __OFADD__(v281++, 1);
          if (v91)
          {
            goto LABEL_247;
          }
        }

        goto LABEL_98;
      }

      sub_100019550(v95, v14, v96);
      sub_1000196F4(v100, v101, v102);
      v104 = v281 + 1;
      if (__OFADD__(v281, 1))
      {
        goto LABEL_246;
      }

      v105 = &v303;
    }

    *(v105 - 32) = v104;
LABEL_98:
    v90 += 20;
    p_isa = (p_isa + 1);
    v89 = (v89 - 1);
    if (!v89)
    {

      sub_100019550(v258, v257, v253);
      v80 = v279;
      p_isa = v279;
      v31 = v262;
      goto LABEL_152;
    }
  }

  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  v188 = _CocoaArrayWrapper.endIndex.getter();
  v31 = v262;
  if (!v188)
  {
LABEL_259:

    v190 = _swiftEmptyArrayStorage;
    goto LABEL_260;
  }

LABEL_228:
  v294[0] = p_isa;
  result = sub_10023CCB4(0, v188 & ~(v188 >> 63), 0);
  if (v188 < 0)
  {
    goto LABEL_273;
  }

  v189 = 0;
  v190 = v294[0];
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v191 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v191 = *(v14 + 8 * v189 + 32);
    }

    v192 = *(v191 + 40);
    v193 = *(v191 + 48);
    v194 = *(v191 + 56);
    sub_10001DAE0(v192, v193, v194);

    v294[0] = v190;
    v196 = v190[2];
    v195 = v190[3];
    if (v196 >= v195 >> 1)
    {
      sub_10023CCB4((v195 > 1), v196 + 1, 1);
      v190 = v294[0];
    }

    ++v189;
    v190[2] = v196 + 1;
    v197 = &v190[3 * v196];
    v197[4] = v192;
    v197[5] = v193;
    *(v197 + 24) = v194;
  }

  while (v188 != v189);

  v31 = v262;
LABEL_260:
  v178 = sub_100242A64(v190);

LABEL_261:
  v198 = sub_100031908(v165);
  if (v198)
  {
    v199 = 1;
  }

  else
  {
    v199 = 0;
    v200 = &v31[*(v273 + 64)];
    if (*(v200 + 1))
    {
      v201 = *(v200 + 8);
      if (v201)
      {
        v202 = *(v200 + 7);
        v294[0] = 44;
        v294[1] = 0xE100000000000000;
        __chkstk_darwin(v198);
        *(&v251 - 2) = v294;

        v203 = sub_10001B9EC(1, 1, sub_100248974, (&v251 - 2), v202, v201, &v297);
        if (v203[2])
        {
          v204 = v203[4];
          v205 = v203[5];
          v206 = v203[6];
          v207 = v203[7];

          v208 = static String._fromSubstring(_:)();
          v210 = v209;

          v211 = sub_10023DDC4(v208, v210);
          LOBYTE(v206) = v212;

          if (v206)
          {
            v199 = 0;
          }

          else
          {
            v199 = v211;
          }
        }

        else
        {

          v199 = 0;
        }
      }
    }
  }

  sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(v256).super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v294[0] = &_swiftEmptyDictionarySingleton;
  sub_10023C9CC(isa, 0x5366666F646E6168, 0xEC00000065746174, isUniquelyReferenced_nonNull_native);
  v215 = v294[0];
  v216 = NSNumber.init(integerLiteral:)(v271).super.super.isa;
  v217 = swift_isUniquelyReferenced_nonNull_native();
  v294[0] = v215;
  sub_10023C9CC(v216, 0xD000000000000013, 0x800000010043D3D0, v217);
  v218 = v294[0];
  v219 = NSNumber.init(integerLiteral:)(v264).super.super.isa;
  v220 = swift_isUniquelyReferenced_nonNull_native();
  v294[0] = v218;
  sub_10023C9CC(v219, 0xD000000000000013, 0x800000010043D3F0, v220);
  v221 = v294[0];
  v222 = NSNumber.init(integerLiteral:)(v283).super.super.isa;
  v223 = swift_isUniquelyReferenced_nonNull_native();
  v294[0] = v221;
  sub_10023C9CC(v222, 0x746E756F43767461, 0xE800000000000000, v223);
  v224 = v294[0];
  v225 = NSNumber.init(integerLiteral:)(v266).super.super.isa;
  v226 = swift_isUniquelyReferenced_nonNull_native();
  v294[0] = v224;
  sub_10023C9CC(v225, 0x746F6F7465756C62, 0xEE00746E756F4368, v226);
  v227 = v294[0];
  v228 = NSNumber.init(integerLiteral:)(v281).super.super.isa;
  v229 = swift_isUniquelyReferenced_nonNull_native();
  v294[0] = v227;
  sub_10023C9CC(v228, 0x43646F50656D6F68, 0xEC000000746E756FLL, v229);
  v230 = v294[0];
  v231 = NSNumber.init(integerLiteral:)(v263).super.super.isa;
  v232 = swift_isUniquelyReferenced_nonNull_native();
  v294[0] = v230;
  sub_10023C9CC(v231, 0xD000000000000010, 0x800000010043D410, v232);
  v233 = v294[0];
  v234 = NSNumber.init(integerLiteral:)(v285).super.super.isa;
  v235 = swift_isUniquelyReferenced_nonNull_native();
  v294[0] = v233;
  sub_10023C9CC(v234, 0x756F43726568746FLL, 0xEA0000000000746ELL, v235);
  v236 = v294[0];
  v237 = NSNumber.init(integerLiteral:)(v272).super.super.isa;
  v238 = swift_isUniquelyReferenced_nonNull_native();
  v294[0] = v236;
  sub_10023C9CC(v237, 0xD000000000000015, 0x800000010043D430, v238);
  v239 = v294[0];
  v240 = NSNumber.init(integerLiteral:)(v279).super.super.isa;
  v241 = swift_isUniquelyReferenced_nonNull_native();
  v294[0] = v239;
  sub_10023C9CC(v240, 0xD000000000000010, 0x800000010043D450, v241);
  v242 = v294[0];
  v243 = NSNumber.init(integerLiteral:)(v293).super.super.isa;
  v244 = swift_isUniquelyReferenced_nonNull_native();
  v294[0] = v242;
  sub_10023C9CC(v243, 0xD000000000000019, 0x800000010043D470, v244);
  v245 = v294[0];
  v246 = NSNumber.init(integerLiteral:)(v178).super.super.isa;
  v247 = swift_isUniquelyReferenced_nonNull_native();
  v294[0] = v245;
  sub_10023C9CC(v246, 0xD000000000000012, 0x800000010043D490, v247);
  v248 = v294[0];
  v249 = NSNumber.init(integerLiteral:)(v199).super.super.isa;
  v250 = swift_isUniquelyReferenced_nonNull_native();
  v294[0] = v248;
  sub_10023C9CC(v249, 0x4D7972616D697270, 0xEC0000006C65646FLL, v250);
  sub_10023EC68(0xD00000000000002BLL, 0x800000010043D4B0, v294[0]);

  return sub_10024889C(v31, type metadata accessor for HostedRoutingSession);
}

uint64_t sub_100245858(uint64_t a1, uint64_t a2)
{
  v116 = a2;
  v109 = type metadata accessor for HostedRoutingItem(0);
  v115 = *(v109 - 8);
  v3 = *(v115 + 64);
  v4 = __chkstk_darwin(v109);
  v6 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (&v99 - v7);
  v9 = type metadata accessor for HostedRoutingSession(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v99 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v99 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = (&v99 - v22);
  v24 = __chkstk_darwin(v21);
  v114 = &v99 - v25;
  v26 = __chkstk_darwin(v24);
  v113 = &v99 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v99 - v29;
  result = (*(*a1 + 232))(v28);
  if ((~v33 & 0x6FE) != 0)
  {
    v34 = v33;
    v107 = result;
    v108 = v32;
    (*(*a1 + 256))(&v119);
    v106 = v120;
    v112 = v121;
    v110 = v122;
    v111 = v123;
    v35 = v124;
    v125 = v119;
    sub_1001E6204(&v125);
    v105 = v30;
    if (v35 <= 1)
    {
      if (v35)
      {
        v38 = v106;
        v36 = v111;
        v37 = v110;
        v104 = v34;
        v100 = v6;
        v43 = v112;
        v101 = v111;
        v103 = v106;
        v102 = v112;
        v40 = v110;
        v42 = v111;
LABEL_9:
        v44 = v36;
        v45 = v37;
LABEL_11:

        sub_1002485A4(v38, v43, v45, v44, v35);
        result = sub_100032A00();
        v46 = result;
        v47 = *(result + 16);
        v48 = v103;
        v49 = v102;
        if (!v47)
        {
LABEL_20:
          sub_10003FE48(v107, v108, v104);
        }

        v50 = 0;
        while (v50 < *(v46 + 16))
        {
          sub_100238F04(v46 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v50, v23, type metadata accessor for HostedRoutingSession);
          v51 = *v23 == v40 && v23[1] == v42;
          if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v52 = v114;
            sub_100238EA0(v23, v114);
            v53 = v52;
            v54 = v113;
            sub_100238EA0(v53, v113);
            sub_100238EA0(v54, v105);
            v6 = v100;
            goto LABEL_22;
          }

          ++v50;
          result = sub_10024889C(v23, type metadata accessor for HostedRoutingSession);
          if (v47 == v50)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return result;
      }
    }

    else if (v35 != 2)
    {
      v36 = v111;
      v37 = v110;
      if (v35 == 5)
      {
        v104 = v34;

        result = sub_100032A00();
        v62 = result;
        v63 = *(result + 16);
        if (!v63)
        {
LABEL_37:
          sub_10003FE48(v107, v108, v104);
          v66 = v106;
          v67 = v112;
          v68 = v110;
          v69 = v111;
          sub_1002485A4(v106, v112, v110, v111, 5u);

          return sub_1002485A4(v66, v67, v68, v69, 5u);
        }

        v64 = 0;
        while (v64 < *(v62 + 16))
        {
          v65 = sub_100238F04(v62 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v64, v14, type metadata accessor for HostedRoutingSession);
          if (sub_100031908(v65))
          {

            sub_100238EA0(v14, v17);
            sub_100238EA0(v17, v20);
            sub_100238EA0(v20, v105);
            v48 = v106;
            v49 = v112;
            sub_1002485A4(v106, v112, v110, v111, 5u);
LABEL_22:
            result = sub_100261164();
            v55 = result;
            v56 = *(result + 16);
            v57 = v115;
            if (!v56)
            {
LABEL_31:

              sub_10003FE48(v107, v108, v104);

              return sub_10024889C(v105, type metadata accessor for HostedRoutingSession);
            }

            v58 = 0;
            while (v58 < *(v55 + 16))
            {
              v59 = v55 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v58;
              sub_100238F04(v59, v8, type metadata accessor for HostedRoutingItem);
              if (*v8 == v48 && v8[1] == v49)
              {
                sub_10024889C(v8, type metadata accessor for HostedRoutingItem);
LABEL_40:

                sub_100238F04(v59, v6, type metadata accessor for HostedRoutingItem);

                v70 = *(*(v105 + 2) + 16);
                sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
                isa = NSNumber.init(BOOLeanLiteral:)(v58 >= v70).super.super.isa;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v118 = &_swiftEmptyDictionarySingleton;
                sub_10023C9CC(isa, 0x65746C6946736177, 0xEB00000000646572, isUniquelyReferenced_nonNull_native);
                v73 = v118;
                v74 = v104;
                v75 = v105;
                v77 = sub_100031908(v76);
                v78 = NSNumber.init(BOOLeanLiteral:)(v77 & 1).super.super.isa;
                v79 = swift_isUniquelyReferenced_nonNull_native();
                v118 = v73;
                sub_10023C9CC(v78, 0x536C61636F4C7369, 0xEE006E6F69737365, v79);
                v80 = v118;
                sub_1001BC5A8(&qword_1005235F0, &unk_100451190);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_10044EC70;
                v82 = v107;
                *(inited + 32) = v107;
                v83 = v108;
                *(inited + 40) = v108;
                *(inited + 48) = v74;
                v84 = v74;
                sub_10003FE34(v82, v83, v74);
                v85 = sub_100242A64(inited);
                swift_setDeallocating();
                sub_1002484D8(inited + 32);
                v86 = NSNumber.init(integerLiteral:)(v85).super.super.isa;
                v87 = swift_isUniquelyReferenced_nonNull_native();
                v118 = v80;
                sub_10023C9CC(v86, 0xD000000000000010, 0x800000010043D240, v87);
                v88 = v118;
                v89 = NSNumber.init(integerLiteral:)(v58).super.super.isa;
                v90 = swift_isUniquelyReferenced_nonNull_native();
                v118 = v88;
                sub_10023C9CC(v89, 0xD000000000000010, 0x800000010043D360, v90);
                v91 = v118;
                v92 = NSNumber.init(BOOLeanLiteral:)(*(*(v75 + 24) + 16) != 0).super.super.isa;
                v93 = swift_isUniquelyReferenced_nonNull_native();
                v118 = v91;
                sub_10023C9CC(v92, 0x4D776F6853646168, 0xEB0000000065726FLL, v93);
                v94 = v118;
                v95 = v6[*(v109 + 44)];
                LOBYTE(v118) = *sub_10025774C();
                v117 = v95;
                sub_100248690();
                if (dispatch thunk of SetAlgebra.isSuperset(of:)())
                {
                  v96 = 1;
                }

                else
                {
                  LOBYTE(v118) = *sub_100257758();
                  v117 = v95;
                  v96 = dispatch thunk of SetAlgebra.isSuperset(of:)();
                }

                v97 = NSNumber.init(BOOLeanLiteral:)(v96 & 1).super.super.isa;
                v98 = swift_isUniquelyReferenced_nonNull_native();
                v118 = v94;
                sub_10023C9CC(v97, 0xD000000000000013, 0x800000010043D380, v98);
                sub_10023EC68(0xD00000000000002ALL, 0x800000010043D3A0, v118);

                sub_10003FE48(v107, v108, v84);
                sub_10024889C(v6, type metadata accessor for HostedRoutingItem);
                return sub_10024889C(v105, type metadata accessor for HostedRoutingSession);
              }

              v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
              result = sub_10024889C(v8, type metadata accessor for HostedRoutingItem);
              if (v61)
              {
                goto LABEL_40;
              }

              if (v56 == ++v58)
              {
                goto LABEL_31;
              }
            }

            goto LABEL_48;
          }

          ++v64;
          result = sub_10024889C(v14, type metadata accessor for HostedRoutingSession);
          if (v63 == v64)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_49;
      }

      v38 = v106;
      if (v35 != 6)
      {
        sub_1002485A4(v106, v112, v110, v111, v35);
        return sub_10003FE48(v107, v108, v34);
      }

      v104 = v34;
      v100 = v6;
      v40 = v106[2];
      v39 = v106[3];
      v41 = v106[5];
      v103 = v106[4];
      v101 = v41;
      v102 = v41;
      v42 = v39;
      v43 = v112;
      goto LABEL_9;
    }

    v104 = v34;
    v100 = v6;
    v43 = v112;
    v44 = v111;
    v101 = v111;
    v38 = v106;
    v103 = v106;
    v102 = v112;
    v45 = v110;
    v40 = v110;
    v42 = v111;
    goto LABEL_11;
  }

  return result;
}

Swift::Int sub_100246450(char *a1, uint64_t a2, uint64_t a3)
{
  v195 = a3;
  v192 = a2;
  v186 = type metadata accessor for RoutingDecisionEngine.Decision.Element(0);
  v4 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v187 = &v180 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v182 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v185 = &v180 - v10;
  v191 = type metadata accessor for Date();
  v190 = *(v191 - 8);
  v11 = *(v190 + 64);
  v12 = __chkstk_darwin(v191);
  v184 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v200 = &v180 - v15;
  __chkstk_darwin(v14);
  v189 = &v180 - v16;
  v17 = sub_1001BC5A8(&qword_100523620, &unk_1004511D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v183 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v188 = &v180 - v21;
  v196 = type metadata accessor for HostedRoutingSession(0);
  v201 = *(v196 - 8);
  v22 = *(v201 + 64);
  v23 = __chkstk_darwin(v196);
  v25 = &v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v180 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v180 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v180 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v180 - v36;
  v38 = __chkstk_darwin(v35);
  v40 = &v180 - v39;
  v41 = __chkstk_darwin(v38);
  v43 = &v180 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v180 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = &v180 - v48;
  v50 = (*(*a1 + 208))(v47);
  if (!v50)
  {
    v198 = v46;
    v199 = v31;
    v197 = v40;
    v194 = v28;
    v193 = v25;
    v181 = v37;
    (*(*a1 + 256))(v205);
    v208[0] = v205[1];
    v208[1] = v205[2];
    v209 = v206;
    v207 = v205[0];
    sub_1001E6204(&v207);
    if (v209 - 4 < 2)
    {
      v194 = a1;
      sub_100238E4C(v208);
      result = sub_100032A00();
      v55 = result;
      v56 = v201;
      v199 = *(result + 16);
      if (v199)
      {
        v57 = 0;
        v58 = _swiftEmptyArrayStorage;
        v59 = v198;
        while (v57 < *(v55 + 16))
        {
          v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
          v61 = *(v56 + 72);
          v62 = sub_100238F04(v55 + v60 + v61 * v57, v49, type metadata accessor for HostedRoutingSession);
          if (sub_100031908(v62))
          {
            result = sub_10024889C(v49, type metadata accessor for HostedRoutingSession);
          }

          else
          {
            sub_100238EA0(v49, v59);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v204 = v58;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1000326B8(0, v58[2] + 1, 1);
              v58 = v204;
            }

            v65 = v58[2];
            v64 = v58[3];
            if (v65 >= v64 >> 1)
            {
              sub_1000326B8(v64 > 1, v65 + 1, 1);
              v58 = v204;
            }

            v58[2] = v65 + 1;
            v59 = v198;
            result = sub_100238EA0(v198, v58 + v60 + v65 * v61);
            v56 = v201;
          }

          if (v199 == ++v57)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
      }

      else
      {
        v58 = _swiftEmptyArrayStorage;
LABEL_30:

        v79 = sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
        v80 = v58[2];

        v199 = v79;
        isa = NSNumber.init(integerLiteral:)(v80).super.super.isa;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v204 = &_swiftEmptyDictionarySingleton;
        sub_10023C9CC(isa, 0xD000000000000012, 0x800000010043D2D0, v82);
        v198 = v204;
        result = type metadata accessor for HostedRoutingSessionSnapshot(0);
        v83 = *(v195 + *(result + 20));
        v84 = *(v83 + 16);
        if (!v84)
        {
          v86 = _swiftEmptyArrayStorage;
          v89 = v200;
          v87 = v201;
LABEL_42:
          v96 = v86[2];

          v97 = v188;
          sub_10001D9AC(v195, v188, &qword_100523620, &unk_1004511D0);
          v98 = (*(v87 + 48))(v97, 1, v196);
          if (v98 == 1)
          {
            sub_1000038A4(v97, &qword_100523620, &unk_1004511D0);
            v99 = 0;
          }

          else
          {
            v100 = sub_100031908(v98);
            sub_10024889C(v97, type metadata accessor for HostedRoutingSession);
            v99 = (v100 & 1) == 0;
          }

          v101 = v192;
          v102 = v189;
          result = v96 + v99;
          if (!__OFADD__(v96, v99))
          {
            v103 = NSNumber.init(integerLiteral:)(result).super.super.isa;
            v104 = v198;
            v105 = swift_isUniquelyReferenced_nonNull_native();
            v204 = v104;
            sub_10023C9CC(v103, 0xD000000000000018, 0x800000010043D2F0, v105);
            v106 = v204;
            v107 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_timeFirstCurrentRemoteSessionAvailable;
            swift_beginAccess();
            v108 = v101 + v107;
            v109 = v185;
            sub_10001D9AC(v108, v185, &qword_1005228D8, &unk_100450060);
            v110 = v190;
            v111 = v191;
            if ((*(v190 + 48))(v109, 1, v191) == 1)
            {
              sub_1000038A4(v109, &qword_1005228D8, &unk_100450060);
              v112 = NSNumber.init(integerLiteral:)(0).super.super.isa;
              v113 = swift_isUniquelyReferenced_nonNull_native();
              v202 = v106;
              sub_10023C9CC(v112, 0xD000000000000018, 0x800000010043D340, v113);
              v115 = v202;
            }

            else
            {
              (*(v110 + 32))(v102, v109, v111);
              v116 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastInstanceOfNoRemoteSessionAvailable;
              swift_beginAccess();
              (*(v110 + 16))(v89, v101 + v116, v111);
              Date.timeIntervalSince(_:)();
              v118 = v117;
              v119 = *(v110 + 8);
              v119(v89, v111);
              v120 = NSNumber.init(floatLiteral:)(v118).super.super.isa;
              v121 = swift_isUniquelyReferenced_nonNull_native();
              v203 = v106;
              sub_10023C9CC(v120, 0xD000000000000018, 0x800000010043D340, v121);
              v115 = v203;
              v114 = (v119)(v102, v111);
            }

            v122 = v187;
            (*(**&v194[OBJC_IVAR____TtC12mediaremoted18RoutingClientEvent_decision] + 96))(v114);
            result = swift_getEnumCaseMultiPayload();
            if (result > 1)
            {
              if (result != 2)
              {
LABEL_93:
                __break(1u);
                return result;
              }

              v127 = *(sub_1001BC5A8(&qword_100523628, &unk_100457B90) + 48);
              v128 = NSNumber.init(integerLiteral:)(2).super.super.isa;
              v129 = swift_isUniquelyReferenced_nonNull_native();
              v203 = v115;
              sub_10023C9CC(v128, 0x7954686374697773, 0xEA00000000006570, v129);
              v125 = v203;
              sub_10024889C(v122 + v127, type metadata accessor for HostedRoutingItem);
              v130 = type metadata accessor for RoutingItem.Action.Kind();
              (*(*(v130 - 8) + 8))(v122, v130);
            }

            else
            {
              if (result)
              {
                v131 = v122;
                v122 = v181;
                v132 = sub_100238EA0(v131, v181);
                if (sub_100031908(v132))
                {
                  v133 = 4;
                }

                else
                {
                  v133 = 1;
                }

                v176 = NSNumber.init(integerLiteral:)(v133).super.super.isa;
                v177 = swift_isUniquelyReferenced_nonNull_native();
                v203 = v115;
                sub_10023C9CC(v176, 0x7954686374697773, 0xEA00000000006570, v177);
                v125 = v203;
                v126 = type metadata accessor for HostedRoutingSession;
              }

              else
              {
                v123 = NSNumber.init(integerLiteral:)(1).super.super.isa;
                v124 = swift_isUniquelyReferenced_nonNull_native();
                v203 = v115;
                sub_10023C9CC(v123, 0x7954686374697773, 0xEA00000000006570, v124);
                v125 = v203;
                v126 = type metadata accessor for RoutingDecisionEngine.Decision.Element;
              }

              sub_10024889C(v122, v126);
            }

            sub_10023EC68(0xD00000000000002ELL, 0x800000010043D310, v125);
          }

          goto LABEL_91;
        }

        v85 = 0;
        v86 = _swiftEmptyArrayStorage;
        v87 = v201;
        v88 = v197;
        while (v85 < *(v83 + 16))
        {
          v90 = (*(v87 + 80) + 32) & ~*(v87 + 80);
          v91 = *(v87 + 72);
          v92 = sub_100238F04(v83 + v90 + v91 * v85, v43, type metadata accessor for HostedRoutingSession);
          if (sub_100031908(v92))
          {
            result = sub_10024889C(v43, type metadata accessor for HostedRoutingSession);
          }

          else
          {
            sub_100238EA0(v43, v88);
            v93 = swift_isUniquelyReferenced_nonNull_native();
            v204 = v86;
            if ((v93 & 1) == 0)
            {
              sub_1000326B8(0, v86[2] + 1, 1);
              v86 = v204;
            }

            v95 = v86[2];
            v94 = v86[3];
            if (v95 >= v94 >> 1)
            {
              sub_1000326B8(v94 > 1, v95 + 1, 1);
              v86 = v204;
            }

            v86[2] = v95 + 1;
            v88 = v197;
            result = sub_100238EA0(v197, v86 + v90 + v95 * v91);
            v87 = v201;
          }

          ++v85;
          v89 = v200;
          if (v84 == v85)
          {
            goto LABEL_42;
          }
        }
      }

      __break(1u);
      goto LABEL_89;
    }

    v66 = v201;
    if (v209 == 6)
    {
      v67 = *(*&v208[0] + 40);
      v197 = *(*&v208[0] + 32);
      v189 = v67;
      result = sub_100032A00();
      v68 = result;
      v69 = *(result + 16);
      if (v69)
      {
        v70 = 0;
        v71 = _swiftEmptyArrayStorage;
        v72 = v199;
        v198 = *(result + 16);
        while (v70 < *(v68 + 16))
        {
          v73 = (*(v66 + 80) + 32) & ~*(v66 + 80);
          v74 = *(v66 + 72);
          v75 = sub_100238F04(v68 + v73 + v74 * v70, v34, type metadata accessor for HostedRoutingSession);
          if (sub_100031908(v75))
          {
            result = sub_10024889C(v34, type metadata accessor for HostedRoutingSession);
          }

          else
          {
            sub_100238EA0(v34, v72);
            v76 = swift_isUniquelyReferenced_nonNull_native();
            v204 = v71;
            if ((v76 & 1) == 0)
            {
              sub_1000326B8(0, v71[2] + 1, 1);
              v71 = v204;
            }

            v78 = v71[2];
            v77 = v71[3];
            if (v78 >= v77 >> 1)
            {
              sub_1000326B8(v77 > 1, v78 + 1, 1);
              v71 = v204;
            }

            v71[2] = v78 + 1;
            v72 = v199;
            result = sub_100238EA0(v199, v71 + v73 + v78 * v74);
            v69 = v198;
          }

          if (v69 == ++v70)
          {
            goto LABEL_57;
          }
        }

LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v71 = _swiftEmptyArrayStorage;
LABEL_57:

      v134 = sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
      v135 = v71[2];

      v199 = v134;
      v136 = NSNumber.init(integerLiteral:)(v135).super.super.isa;
      v137 = swift_isUniquelyReferenced_nonNull_native();
      v204 = &_swiftEmptyDictionarySingleton;
      sub_10023C9CC(v136, 0xD000000000000012, 0x800000010043D2D0, v137);
      v198 = v204;
      result = type metadata accessor for HostedRoutingSessionSnapshot(0);
      v138 = *(v195 + *(result + 20));
      v139 = *(v138 + 16);
      if (v139)
      {
        v140 = 0;
        v141 = _swiftEmptyArrayStorage;
        v142 = v196;
        v143 = v194;
        while (v140 < *(v138 + 16))
        {
          v144 = (*(v201 + 80) + 32) & ~*(v201 + 80);
          v145 = *(v201 + 72);
          v146 = sub_100238F04(v138 + v144 + v145 * v140, v143, type metadata accessor for HostedRoutingSession);
          if (sub_100031908(v146))
          {
            result = sub_10024889C(v143, type metadata accessor for HostedRoutingSession);
          }

          else
          {
            v147 = v193;
            sub_100238EA0(v143, v193);
            v148 = swift_isUniquelyReferenced_nonNull_native();
            v204 = v141;
            if ((v148 & 1) == 0)
            {
              sub_1000326B8(0, v141[2] + 1, 1);
              v141 = v204;
            }

            v150 = v141[2];
            v149 = v141[3];
            if (v150 >= v149 >> 1)
            {
              sub_1000326B8(v149 > 1, v150 + 1, 1);
              v141 = v204;
            }

            v141[2] = v150 + 1;
            result = sub_100238EA0(v147, v141 + v144 + v150 * v145);
            v142 = v196;
            v143 = v194;
          }

          if (v139 == ++v140)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_90;
      }

      v141 = _swiftEmptyArrayStorage;
      v142 = v196;
LABEL_69:
      v151 = v141[2];

      v152 = v183;
      sub_10001D9AC(v195, v183, &qword_100523620, &unk_1004511D0);
      v153 = (*(v201 + 48))(v152, 1, v142);
      if (v153 == 1)
      {
        sub_1000038A4(v152, &qword_100523620, &unk_1004511D0);
        v154 = 0;
      }

      else
      {
        v155 = sub_100031908(v153);
        sub_10024889C(v152, type metadata accessor for HostedRoutingSession);
        v154 = (v155 & 1) == 0;
      }

      v156 = v192;
      v157 = v200;
      v158 = v184;
      result = v151 + v154;
      if (__OFADD__(v151, v154))
      {
        goto LABEL_92;
      }

      v159 = NSNumber.init(integerLiteral:)(result).super.super.isa;
      v160 = v198;
      v161 = swift_isUniquelyReferenced_nonNull_native();
      v204 = v160;
      sub_10023C9CC(v159, 0xD000000000000018, 0x800000010043D2F0, v161);
      v162 = v204;
      v163 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_timeFirstCurrentRemoteSessionAvailable;
      swift_beginAccess();
      v164 = v156 + v163;
      v165 = v182;
      sub_10001D9AC(v164, v182, &qword_1005228D8, &unk_100450060);
      v166 = v190;
      v167 = v191;
      if ((*(v190 + 48))(v165, 1, v191) == 1)
      {
        sub_1000038A4(v165, &qword_1005228D8, &unk_100450060);
      }

      else
      {
        (*(v166 + 32))(v158, v165, v167);
        v168 = OBJC_IVAR____TtC12mediaremoted25RoutingClientEventContext_lastInstanceOfNoRemoteSessionAvailable;
        swift_beginAccess();
        (*(v166 + 16))(v157, v156 + v168, v167);
        Date.timeIntervalSince(_:)();
        v170 = v169;
        v171 = *(v166 + 8);
        v171(v157, v167);
        v172 = NSNumber.init(floatLiteral:)(v170).super.super.isa;
        v173 = swift_isUniquelyReferenced_nonNull_native();
        v203 = v162;
        sub_10023C9CC(v172, 0xD000000000000018, 0x800000010043D340, v173);
        v162 = v203;
        v171(v158, v167);
      }

      v174 = sub_100257FC4();
      if (v197 == *v174 && v189 == v174[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v175 = 3;
      }

      else
      {
        v175 = 0;
      }

      v178 = NSNumber.init(integerLiteral:)(v175).super.super.isa;
      v179 = swift_isUniquelyReferenced_nonNull_native();
      v203 = v162;
      sub_10023C9CC(v178, 0x7954686374697773, 0xEA00000000006570, v179);
      sub_10023EC68(0xD00000000000002ELL, 0x800000010043D310, v203);
    }

    return sub_100238E4C(v208);
  }

  return sub_10023DC58(v50, v51, v52, v53);
}

uint64_t sub_10024788C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v63 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10023E264(a1);
  if (v14)
  {
    return result;
  }

  v15 = result;
  result = (*(*a1 + 232))();
  if ((~v17 & 0x6FE) == 0)
  {
    return result;
  }

  if (((v17 >> 8) & 6 | (v17 >> 7) & 1) != 1)
  {
    goto LABEL_7;
  }

  v69 = v9;
  v70 = result;
  v71 = v16;
  v72 = v17;
  v18 = (*(*a1 + 160))();
  if (v19)
  {
    result = v70;
    v16 = v71;
    v17 = v72;
LABEL_7:

    return sub_10003FE48(result, v16, v17);
  }

  v20 = *&v18;
  (*(*a1 + 136))();
  v21 = v69;
  if ((*(v69 + 48))(v7, 1, v8) == 1)
  {
    sub_10003FE48(v70, v71, v72);
    return sub_1000038A4(v7, &qword_1005228D8, &unk_100450060);
  }

  (*(v21 + 32))(v12, v7, v8);
  sub_1001BC5A8(&qword_1005235F0, &unk_100451190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  v23 = v70;
  v24 = v71;
  *(inited + 32) = v70;
  *(inited + 40) = v24;
  v25 = v72;
  *(inited + 48) = v72;
  sub_10001CFE8(v23, v24, v25 & 0xF97F);
  v64 = sub_100242A64(inited);
  swift_setDeallocating();
  sub_1002484D8(inited + 32);
  swift_beginAccess();
  if (*(a2 + 32))
  {
    v26 = *(a2 + 32);

    v28 = sub_10023BD58(v27);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v29 = v20;
  v65 = v28 >> 62;
  v66 = v15;
  v67 = v8;
  v68 = v12;
  if (v28 >> 62)
  {
LABEL_49:
    v74 = v28 & 0xFFFFFFFFFFFFFF8;
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v74 = v28 & 0xFFFFFFFFFFFFFF8;
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = 0;
  v73 = v28 & 0xC000000000000001;
  v63 = v28 + 32;
  while (1)
  {
    if (v30 == v31)
    {
      (*(v69 + 8))(v68, v67);

      return sub_10003FE48(v70, v71, v72);
    }

    if (v73)
    {
      v32 = v28;
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v33 = v34;
    }

    else
    {
      if (v31 >= *(v74 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v32 = v28;
      v33 = *(v28 + 8 * v31 + 32);
    }

    v35 = (*(*v33 + 256))(v76, v34);
    (*(*a1 + 256))(v78, v35);
    v36 = sub_10026D530(v76, v78);
    v85 = v78[0];
    sub_1001E6204(&v85);
    v83[0] = v78[1];
    v83[1] = v78[2];
    v84 = v79;
    sub_100238E4C(v83);
    v82 = v76[0];
    sub_1001E6204(&v82);
    v80[0] = v76[1];
    v80[1] = v76[2];
    v81 = v77;
    sub_100238E4C(v80);

    v37 = v31 + 1;
    v38 = __OFADD__(v31, 1);
    if (v36)
    {
      break;
    }

    ++v31;
    v28 = v32;
    if (v38)
    {
      goto LABEL_48;
    }
  }

  if (v38)
  {
    __break(1u);
    goto LABEL_51;
  }

  v39 = v66;
  v40 = v68;
  if (v65)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *(v74 + 16);
  }

  if (v37 < result)
  {
    if (v73)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_41:

      v42 = sub_10023E264(v41);
      v43 = v44;

      goto LABEL_42;
    }

    if ((v37 & 0x8000000000000000) == 0)
    {
      if (v37 < *(v74 + 16))
      {
        v41 = *(v63 + 8 * v37);

        goto LABEL_41;
      }

LABEL_52:
      __break(1u);
      return result;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v42 = 0;
  v43 = 1;
LABEL_42:
  sub_100018D7C(0, &qword_100521CD8, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(v39).super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = &_swiftEmptyDictionarySingleton;
  sub_10023C9CC(isa, 0x6F6974617265706FLL, 0xED0000657079546ELL, isUniquelyReferenced_nonNull_native);
  v47 = v75;
  v48 = NSNumber.init(floatLiteral:)(v29).super.super.isa;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v47;
  sub_10023C9CC(v48, 0xD000000000000011, 0x800000010043D200, v49);
  v50 = v75;
  Date.timeIntervalSince(_:)();
  v52 = NSNumber.init(floatLiteral:)(v51 - v29).super.super.isa;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v50;
  sub_10023C9CC(v52, 0xD000000000000011, 0x800000010043D220, v53);
  v54 = v75;
  if ((v43 & 1) == 0)
  {
    v55 = NSNumber.init(integerLiteral:)(v42).super.super.isa;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v54;
    sub_10023C9CC(v55, 0xD000000000000015, 0x800000010043D2B0, v56);
    v54 = v75;
  }

  v57 = (*(*a1 + 184))();
  if (v57 != 2)
  {
    v58 = NSNumber.init(BOOLeanLiteral:)((v57 & 1) == 0).super.super.isa;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v54;
    sub_10023C9CC(v58, 0xD000000000000011, 0x800000010043D290, v59);
    v54 = v75;
  }

  v60 = v69;
  v61 = NSNumber.init(integerLiteral:)(v64).super.super.isa;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v54;
  sub_10023C9CC(v61, 0xD000000000000010, 0x800000010043D240, v62);
  sub_10023EC68(0xD00000000000002DLL, 0x800000010043D260, v75);

  sub_10003FE48(v70, v71, v72);
  return (*(v60 + 8))(v40, v67);
}

void sub_1002480FC()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100233710();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100248208()
{
  result = type metadata accessor for Date();
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

void sub_1002482D0()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100233710();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002483CC()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100233710();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100248538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002485A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 5u)
  {
    if (a5 > 8u)
    {
      if (a5 != 9 && a5 != 10 && a5 != 11)
      {
        return result;
      }
    }

    else if (a5 != 6 && a5 != 7 && a5 != 8)
    {
      return result;
    }
  }

  else
  {
    if (a5 >= 4u)
    {
      if (a5 != 4 && a5 != 5)
      {
        return result;
      }
    }

    else
    {
    }
  }
}

unint64_t sub_100248690()
{
  result = qword_100523638;
  if (!qword_100523638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523638);
  }

  return result;
}

BOOL sub_10024873C(uint64_t a1)
{
  v2 = *(v1 + 16);
  (*(**a1 + 256))(v10);
  v13[0] = v10[1];
  v13[1] = v10[2];
  v14 = v11;
  v12 = v10[0];
  sub_1001E6204(&v12);
  if (v14 != 6)
  {
    sub_100238E4C(v13);
    return 0;
  }

  v3 = *(*&v13[0] + 48);

  v4 = sub_100238E4C(v13);
  v5 = (*(*v3 + 136))(v4);
  if (!v6)
  {

    return 0;
  }

  if (v5 != *v2 || v6 != v2[1])
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v8 & 1) != 0;
  }

  return 1;
}

uint64_t sub_100248888(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_10024889C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002488FC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

unint64_t sub_100248910()
{
  result = qword_100523648;
  if (!qword_100523648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100523648);
  }

  return result;
}

uint64_t sub_100248990()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E0520();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_100248DE0();
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_100248E38();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1005384B8 = result;
  return result;
}

uint64_t sub_100248B90()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_1001E0520();
  static DispatchQoS.utility.getter();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v10[1] = _swiftEmptyArrayStorage;
  sub_100248DE0();
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_100248E38();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1005384C0 = result;
  return result;
}

uint64_t *sub_100248D90()
{
  if (qword_10052BAB8 != -1)
  {
    swift_once();
  }

  return &qword_1005384C0;
}

unint64_t sub_100248DE0()
{
  result = qword_100522A90;
  if (!qword_100522A90)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522A90);
  }

  return result;
}

unint64_t sub_100248E38()
{
  result = qword_100522AA0;
  if (!qword_100522AA0)
  {
    sub_1001C2EC8(&qword_100521DF8, &unk_100450220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522AA0);
  }

  return result;
}

uint64_t sub_100248E9C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  result = kMRMediaRemoteFrameworkErrorDomain;
  if (kMRMediaRemoteFrameworkErrorDomain)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    v13 = [v8 domain];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == v10 && v16 == v12)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if ([v8 code] < 200)
    {
LABEL_13:

      return 0;
    }

    v19 = [v8 code];

    return v19 < 300;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002490BC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v2 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  if (kMRMediaRemoteFrameworkErrorDomain)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v12 = [v8 domain];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v13 == v9 && v15 == v11)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {

        LOBYTE(v18) = 1;
LABEL_14:
        v20[12] = v18;
        return;
      }
    }

    v19 = [v8 code];

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v18 = HIDWORD(v19);
      if (!HIDWORD(v19))
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1002492E4(uint64_t a1)
{
  v148 = type metadata accessor for HostedRoutingItem(0);
  v2 = *(v148 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v148);
  v147 = v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v150 = v137 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = (v137 - v9);
  __chkstk_darwin(v8);
  v12 = (v137 - v11);

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = *(a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  v139 = v13;
  v151 = a1;
  v149 = v2;
  v141 = v10;
  if (v14)
  {
    *&v155[0] = _swiftEmptyArrayStorage;
    v16 = v13;
    sub_1000089FC(0, v14, 0);
    v17 = *&v155[0];
    v18 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v19 = *(v2 + 72);
    do
    {
      sub_10001D948(v18, v12);
      if (sub_100258854())
      {
        v20 = MRIRRouteBuiltInSpeakerIdentifier();
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v21 = *v12;
        v23 = v12[1];
      }

      sub_10001DA14(v12);
      *&v155[0] = v17;
      v25 = v17[2];
      v24 = v17[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000089FC((v24 > 1), v25 + 1, 1);
        v17 = *&v155[0];
      }

      v17[2] = v25 + 1;
      v26 = &v17[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      v18 += v19;
      --v14;
    }

    while (v14);
    v2 = v149;
    v10 = v141;
    v15 = _swiftEmptyArrayStorage;
  }

  else
  {
    v27 = v13;
    v17 = _swiftEmptyArrayStorage;
  }

  *&v155[0] = v17;

  sub_10024B6D4(v155);
  v137[1] = 0;

  v138 = *&v155[0];
  *&v155[0] = _swiftEmptyArrayStorage;
  v28 = v151;
  v152 = *(v151 + 16);
  if (v152)
  {
    v29 = 0;
    v146 = v10 + *(v148 + 64);
    v145 = v151 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v142 = 1;
    v144 = xmmword_10044EC70;
    while (1)
    {
      v37 = *(v28 + 16);
      if (v29 >= v37)
      {
        __break(1u);
        goto LABEL_74;
      }

      sub_10001D948(v145 + *(v2 + 72) * v29, v10);
      v38 = sub_100258554();
      if ((v40 & 0xF800) == 0x4000)
      {
        v41 = *(v38 + 16);
        v42 = v38;
        v43 = v40;
        v44 = v39;

        sub_1000196F4(v42, v44, v43);
        if (*(v41 + 16) == 2)
        {
          v143 = v29;
          v157 = _swiftEmptyArrayStorage;
          sub_10024B430(0, 2, 0);
          v30 = v157;
          v46 = *(v41 + 32);
          v45 = *(v41 + 40);
          v47 = *(v41 + 48);
          v48 = *(v41 + 56);
          v49 = *(v41 + 64);

          sub_10001DAE0(v47, v48, v49);
          v51 = v30[2];
          v50 = v30[3];
          if (v51 >= v50 >> 1)
          {
            sub_10024B430((v50 > 1), v51 + 1, 1);
            v30 = v157;
          }

          v30[2] = v51 + 1;
          v52 = &v30[5 * v51];
          v52[4] = v46;
          v52[5] = v45;
          v52[6] = v47;
          v52[7] = v48;
          *(v52 + 32) = v49;
          v54 = *(v41 + 72);
          v53 = *(v41 + 80);
          v55 = *(v41 + 88);
          v56 = *(v41 + 96);
          v57 = *(v41 + 104);

          sub_10001DAE0(v55, v56, v57);
          v157 = v30;
          v59 = v30[2];
          v58 = v30[3];
          if (v59 >= v58 >> 1)
          {
            sub_10024B430((v58 > 1), v59 + 1, 1);
            v30 = v157;
          }

          v30[2] = v59 + 1;
          v60 = &v30[5 * v59];
          v60[4] = v54;
          v60[5] = v53;
          v60[6] = v55;
          v60[7] = v56;
          *(v60 + 32) = v57;
LABEL_42:

          v2 = v149;
          v10 = v141;
          v29 = v143;
          goto LABEL_15;
        }
      }

      else
      {
        sub_1000196F4(v38, v39, v40);
        v61 = sub_100258554();
        if (v63 >> 11 == 9)
        {
          v64 = *(v61 + 16);
          v65 = *(v61 + 24);
          v66 = v61;
          v67 = v63;
          v68 = v62;

          sub_1000196F4(v66, v68, v67);
          v69 = *(v64 + 16);
          if (v69 == v65)
          {
            if (v69)
            {
              v143 = v29;
              v157 = _swiftEmptyArrayStorage;
              sub_10024B430(0, v69, 0);
              v70 = v64;
              v30 = v157;
              v140 = v70;
              v71 = (v70 + 64);
              do
              {
                v72 = *(v71 - 3);
                v153 = *(v71 - 4);
                v74 = *(v71 - 2);
                v73 = *(v71 - 1);
                v75 = *v71;

                sub_10001DAE0(v74, v73, v75);
                v157 = v30;
                v77 = v30[2];
                v76 = v30[3];
                if (v77 >= v76 >> 1)
                {
                  sub_10024B430((v76 > 1), v77 + 1, 1);
                  v30 = v157;
                }

                v71 += 20;
                v30[2] = v77 + 1;
                v78 = &v30[5 * v77];
                v78[4] = v153;
                v78[5] = v72;
                v78[6] = v74;
                v78[7] = v73;
                *(v78 + 32) = v75;
                --v69;
              }

              while (v69);
              goto LABEL_42;
            }

            goto LABEL_43;
          }
        }

        else
        {
          sub_1000196F4(v61, v62, v63);
          v79 = sub_100258554();
          if ((v81 & 0xF800) != 0x5000)
          {
            sub_1000196F4(v79, v80, v81);
            goto LABEL_14;
          }

          v82 = *(v79 + 16);
          v83 = *(v79 + 24);
          v84 = v79;
          v85 = v81;
          v86 = v80;

          sub_1000196F4(v84, v86, v85);
          v87 = *(v82 + 16);
          if (v87 == v83)
          {
            if (v87)
            {
              v143 = v29;
              v157 = _swiftEmptyArrayStorage;
              sub_10024B430(0, v87, 0);
              v88 = v82;
              v30 = v157;
              v140 = v88;
              v89 = (v88 + 64);
              do
              {
                v90 = *(v89 - 3);
                v153 = *(v89 - 4);
                v91 = *(v89 - 2);
                v92 = *(v89 - 1);
                v93 = *v89;

                sub_10001DAE0(v91, v92, v93);
                v157 = v30;
                v95 = v30[2];
                v94 = v30[3];
                if (v95 >= v94 >> 1)
                {
                  sub_10024B430((v94 > 1), v95 + 1, 1);
                  v30 = v157;
                }

                v89 += 20;
                v30[2] = v95 + 1;
                v96 = &v30[5 * v95];
                v96[4] = v153;
                v96[5] = v90;
                v96[6] = v91;
                v96[7] = v92;
                *(v96 + 32) = v93;
                --v87;
              }

              while (v87);
              goto LABEL_42;
            }

LABEL_43:

            goto LABEL_14;
          }
        }
      }

      v142 = 0;
LABEL_14:
      v30 = _swiftEmptyArrayStorage;
LABEL_15:
      ++v29;
      sub_1001BC5A8(&qword_100523678, &unk_100451240);
      inited = swift_initStackObject();
      *(inited + 16) = v144;
      v32 = v10[1];
      *(inited + 32) = *v10;
      *(inited + 40) = v32;
      v33 = *v146;
      v34 = *(v146 + 1);
      v35 = *(v146 + 8);
      *(inited + 48) = *v146;
      *(inited + 56) = v34;
      *(inited + 64) = v35;
      v157 = inited;

      sub_10001DAE0(v33, v34, v35);
      sub_10024AA00(v30);
      sub_10001DA14(v10);
      sub_10024AA00(v157);
      v28 = v151;
      v36 = v150;
      if (v29 == v152)
      {
        v15 = *&v155[0];
        goto LABEL_46;
      }
    }
  }

  v142 = 1;
  v36 = v150;
LABEL_46:
  v97 = sub_100249F0C(v15);

  v98 = v97[2] + 1;
  v99 = 64;
  while (--v98)
  {
    v100 = v99 + 40;
    v101 = HIBYTE(*(v97 + v99)) & 6 | (*(v97 + v99) >> 7) & 1;
    v99 += 40;
    if (v101 <= 4)
    {
      v99 = v100;
      if (v101 != 1)
      {
        break;
      }
    }
  }

  v153 = v97;
  if (v152)
  {
    v102 = 0;
    v103 = _swiftEmptyArrayStorage;
    while (1)
    {
      v37 = *(v28 + 16);
      if (v102 >= v37)
      {
        break;
      }

      v104 = (*(v149 + 80) + 32) & ~*(v149 + 80);
      v105 = *(v149 + 72);
      sub_10001D948(v28 + v104 + v105 * v102, v36);
      v106 = *(v36 + *(v148 + 44));
      LOBYTE(v157) = *sub_10025774C();
      LOBYTE(v154) = v106;
      sub_100248690();
      if (dispatch thunk of SetAlgebra.isSuperset(of:)())
      {
        sub_10001DA14(v36);
      }

      else
      {
        sub_10001DFD4(v36, v147);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v155[0] = v103;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10002A42C(0, v103[2] + 1, 1);
          v103 = *&v155[0];
        }

        v109 = v103[2];
        v108 = v103[3];
        if (v109 >= v108 >> 1)
        {
          sub_10002A42C(v108 > 1, v109 + 1, 1);
          v103 = *&v155[0];
        }

        v103[2] = v109 + 1;
        sub_10001DFD4(v147, v103 + v104 + v109 * v105);
        v36 = v150;
        v28 = v151;
      }

      if (v152 == ++v102)
      {
        goto LABEL_62;
      }
    }

LABEL_74:
    __break(1u);
    v136 = *(v37 - 256);

    __break(1u);
  }

  else
  {
    v103 = _swiftEmptyArrayStorage;
LABEL_62:

    v110 = v103[2];

    *&v155[0] = v138;
    sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
    sub_10002C150();
    BidirectionalCollection<>.joined(separator:)();

    v111 = String._bridgeToObjectiveC()();

    v112 = v139;
    [v139 setRouteIdentifier:v111];

    if (v98)
    {
      v113 = 0;
    }

    else
    {
      v113 = v142 & (v110 < 2);
    }

    [v112 setDonateAsCandidate:v113];
    v114 = v153;
    v115 = v153[2];
    if (v115)
    {
      v157 = _swiftEmptyArrayStorage;
      sub_10024B3D0(0, v115, 0);
      v116 = v157;
      v117 = (v114 + 8);
      do
      {
        v119 = *(v117 - 4);
        v118 = *(v117 - 3);
        v120 = *(v117 - 2);
        v121 = *(v117 - 1);
        v122 = *v117;

        sub_10001DAE0(v120, v121, v122);
        v123 = sub_10001CD44(v120, v121, v122);
        v124 = objc_allocWithZone(MRIRNode);
        v125 = String._bridgeToObjectiveC()();
        v126 = [v124 initWithAVOutputDeviceID:v125 isLocal:v123];

        v154 = v126;
        sub_100018D7C(0, &qword_100523688, MRIRNode_ptr);
        sub_10024B740();
        v127 = v126;
        AnyHashable.init<A>(_:)();

        sub_100019550(v120, v121, v122);

        v157 = v116;
        v129 = v116[2];
        v128 = v116[3];
        if (v129 >= v128 >> 1)
        {
          sub_10024B3D0((v128 > 1), v129 + 1, 1);
          v116 = v157;
        }

        v117 += 20;
        v116[2] = v129 + 1;
        v130 = &v116[5 * v129];
        v131 = v155[0];
        v132 = v155[1];
        v130[8] = v156;
        *(v130 + 2) = v131;
        *(v130 + 3) = v132;
        --v115;
      }

      while (v115);
    }

    else
    {

      v116 = _swiftEmptyArrayStorage;
    }

    sub_10024C228(v116);

    isa = Set._bridgeToObjectiveC()().super.isa;

    v134 = v139;
    [v139 setNodes:isa];

    return v134;
  }

  return result;
}

void *sub_100249F0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10024B3F0(0, v1, 0);
    v3 = (a1 + 64);
    do
    {
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v6 = *v3;
      v12 = *(v3 - 4);
      v13 = *(v3 - 3);

      sub_10001DAE0(v4, v5, v6);
      sub_1001BC5A8(&qword_100523708, &qword_100451430);
      sub_1001BC5A8(&qword_100523720, &qword_100451450);
      swift_dynamicCast();
      v7 = v16;
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_10024B3F0((v8 > 1), v9 + 1, 1);
        v7 = v16;
      }

      v3 += 20;
      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[5 * v9];
      v10[4] = v14;
      v10[5] = v15;
      *(v10 + 3) = v7;
      *(v10 + 32) = v17;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10024A06C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = sub_1001BC5A8(&qword_1005236E8, &unk_100451418);
  v4 = *(*(v28 - 8) + 64);
  v5 = __chkstk_darwin(v28);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = type metadata accessor for RoutingItem.Attributes.Properties();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v10 + 16);
  v27 = v2;
  v17(v14, v2, v9);
  v25 = sub_10001CD5C(&qword_1005236F0, &type metadata accessor for RoutingItem.Attributes.Properties);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v18 = v28;
  sub_10001CD5C(&qword_1005236F8, &type metadata accessor for RoutingItem.Attributes.Properties);
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
  sub_10003AEF0(v8, v29, &qword_1005236E8, &unk_100451418);
  v23 = *v22;
  (*(v10 + 32))(v30, &v22[*(v18 + 48)], v9);
  return v23;
}

uint64_t sub_10024A370(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10024A3E8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10024A468@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10024A4AC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10024A4E8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10024A53C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

_DWORD *sub_10024A5B0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_10024A5CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10024A654@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

void *sub_10024A69C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001BC5A8(&qword_100523678, &unk_100451240);
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
    sub_1001BC5A8(&qword_100523708, &qword_100451430);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10024A7E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&unk_100527540, &unk_100451460);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10024A8E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100523700, &qword_100451428);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
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

void *sub_10024AA00(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10024A69C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1001BC5A8(&qword_100523708, &qword_100451430);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}