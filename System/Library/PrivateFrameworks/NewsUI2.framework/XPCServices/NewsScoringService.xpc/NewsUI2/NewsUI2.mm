int main(int argc, const char **argv, const char **envp)
{
  v50 = sub_100009F1C();
  v3 = *(v50 - 8);
  v4 = *(v3 + 64);
  (__chkstk_darwin)();
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A09C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v49 - v14;
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  sub_10000A07C();
  v18 = sub_10000A08C();
  v19 = sub_10000A2FC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "main entry point", v20, 2u);
  }

  v51 = *(v8 + 8);
  v51(v17, v7);
  sub_1000021DC(0, &qword_1000154E8, &qword_1000154F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10000B070;
  v22 = sub_10000A1FC();
  v23 = [objc_allocWithZone(v22) init];
  *(v21 + 56) = v22;
  *(v21 + 64) = sub_100002290(&qword_1000154F8, &type metadata accessor for Assembly);
  *(v21 + 32) = v23;
  v24 = sub_10000A05C();
  v25 = [objc_allocWithZone(v24) init];
  *(v21 + 96) = v24;
  *(v21 + 104) = sub_100002290(&qword_100015500, &type metadata accessor for Assembly);
  *(v21 + 72) = v25;
  v26 = sub_10000A02C();
  v27 = [objc_allocWithZone(v26) init];
  *(v21 + 136) = v26;
  *(v21 + 144) = sub_100002290(&qword_100015508, &type metadata accessor for NewsAppPersonalizationAssembly);
  *(v21 + 112) = v27;
  sub_1000021DC(0, &qword_100015510, &qword_100015518);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10000B080;
  v29 = type metadata accessor for Assembly();
  v30 = swift_allocObject();
  *(v28 + 56) = v29;
  *(v28 + 64) = sub_100002290(&qword_100015520, type metadata accessor for Assembly);
  *(v28 + 32) = v30;
  v31 = sub_100009E5C();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_100009E4C();
  (*(v3 + 104))(v6, enum case for Container.Environment.normal(_:), v50);
  v34 = sub_100009F4C();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  qword_100015C40 = sub_100009F2C();
  sub_10000A07C();
  v37 = sub_10000A08C();
  v38 = sub_10000A2FC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "will create XPC listener and delegate", v39, 2u);
  }

  v40 = v51;
  v51(v15, v7);
  sub_100009F3C();
  v41 = type metadata accessor for ScoringServiceListenerDelegate();
  v42 = objc_allocWithZone(v41);
  sub_1000022D8(v53, v53[3]);
  type metadata accessor for ScoringEngine();
  v43 = sub_100009E2C();
  if (v43)
  {
    *&v42[OBJC_IVAR____TtC18NewsScoringService30ScoringServiceListenerDelegate_scoringEngine] = v43;
    v52.receiver = v42;
    v52.super_class = v41;
    v44 = objc_msgSendSuper2(&v52, "init");
    sub_10000231C(v53);
    qword_100015C48 = v44;
    qword_100015C50 = [objc_opt_self() serviceListener];
    [qword_100015C50 setDelegate:qword_100015C48];
    sub_10000A07C();
    v45 = sub_10000A08C();
    v46 = sub_10000A2FC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "will resume XPC listener", v47, 2u);
    }

    v40(v12, v7);
    [qword_100015C50 resume];
    LODWORD(v43) = 0;
  }

  else
  {
    __break(1u);
  }

  return v43;
}

void sub_1000021DC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100002234(255, a3);
    v4 = sub_10000A45C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100002234(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100002290(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1000022D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000231C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void type metadata accessor for FCFeedPersonalizationConfigurationSet()
{
  if (!qword_100015648)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100015648);
    }
  }
}

uint64_t sub_1000023B8(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(uint64_t, void), uint64_t a8)
{
  v64 = a8;
  v65 = a7;
  v67 = a3;
  v68 = a6;
  v66 = a4;
  v11 = sub_10000A20C();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100009DCC();
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  __chkstk_darwin(v15);
  v69 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = [objc_allocWithZone(NSDate) init];
  sub_100006158();
  v57 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10000B0D0;
  if (a5 >> 62)
  {
    v20 = sub_10000A41C();
  }

  else
  {
    v20 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v19 + 56) = &type metadata for Int;
  *(v19 + 64) = &protocol witness table for Int;
  v56 = v20;
  *(v19 + 32) = v20;
  v21 = sub_100006E30(&qword_100015800, &type metadata accessor for UUID);
  v71 = v15;
  v60 = v21;
  v22 = sub_10000A44C();
  v24 = v23;
  *(v19 + 96) = &type metadata for String;
  v59 = sub_1000061C0();
  *(v19 + 104) = v59;
  *(v19 + 72) = v22;
  *(v19 + 80) = v24;
  v58 = sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v25 = sub_10000A35C();
  sub_10000A2FC();
  sub_10000A06C();

  v26 = a2[4];
  sub_1000022D8(a2, a2[3]);
  sub_100009DAC();
  sub_100009FEC();

  v27 = v75;
  v28 = sub_1000022D8(&v74, v75);
  v73 = v27;
  v29 = sub_100006630(&v72);
  (*(*(v27 - 8) + 16))(v29, v28, v27);
  v30 = sub_100005B1C(0, 1, 1, &_swiftEmptyArrayStorage);
  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_100005B1C((v31 > 1), v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  sub_100006694(&v72, &v30[32 * v32 + 32]);
  sub_10000231C(&v74);
  v33 = *(v68 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_bundleSubscriptionManager);
  sub_10000A1DC();
  v34 = v75;
  v35 = sub_1000022D8(&v74, v75);
  v73 = v34;
  v36 = sub_100006630(&v72);
  (*(*(v34 - 8) + 16))(v36, v35, v34);
  v38 = *(v30 + 2);
  v37 = *(v30 + 3);
  if (v38 >= v37 >> 1)
  {
    v30 = sub_100005B1C((v37 > 1), v38 + 1, 1, v30);
  }

  *(v30 + 2) = v38 + 1;
  sub_100006694(&v72, &v30[32 * v38 + 32]);
  sub_10000231C(&v74);
  (*(v70 + 16))(v69, a1, v71);
  v39 = a2[4];
  sub_1000022D8(a2, a2[3]);
  if (a5 >> 62)
  {
    sub_100006FB8();

    sub_10000A40C();
  }

  else
  {

    sub_10000A47C();
    sub_100006FB8();
  }

  sub_10000A34C();
  v40 = sub_100009FFC();
  (*(v61 + 8))(v14, v62);

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10000B0E0;
  *(v41 + 56) = &type metadata for Int;
  *(v41 + 64) = &protocol witness table for Int;
  *(v41 + 32) = v56;
  v42 = *(v40 + 16);
  *(v41 + 96) = &type metadata for Int;
  *(v41 + 104) = &protocol witness table for Int;
  *(v41 + 72) = v42;
  v43 = v63;
  v44 = [v63 fc_millisecondTimeIntervalUntilNow];
  *(v41 + 136) = &type metadata for UInt64;
  *(v41 + 144) = &protocol witness table for UInt64;
  *(v41 + 112) = v44;
  v45 = v71;
  v46 = sub_10000A44C();
  v47 = v59;
  *(v41 + 176) = &type metadata for String;
  *(v41 + 184) = v47;
  *(v41 + 152) = v46;
  *(v41 + 160) = v48;
  v49 = sub_10000A35C();
  sub_10000A2FC();
  sub_10000A06C();

  sub_100003020(v40);
  v51 = v50;

  v52 = v69;
  sub_100002BF8(v69, v30);

  v65(v51, 0);

  v67(v53);

  return (*(v70 + 8))(v52, v45);
}

uint64_t sub_100002BF8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v30 = sub_10000A0CC();
  v33 = *(v30 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin(v30);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A0FC();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A11C();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v26 - v15;
  sub_100009DAC();
  v17 = objc_allocWithZone(NDAssertion);
  v18 = sub_10000A23C();

  v19 = [v17 initWithName:v18];

  v26[1] = *(v27 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_cooldownQueue);
  sub_10000A10C();
  sub_10000A12C();
  v27 = *(v10 + 8);
  v27(v14, v9);
  v20 = swift_allocObject();
  v21 = v29;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  aBlock[4] = nullsub_1;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000059D0;
  aBlock[3] = &unk_100010C28;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  sub_10000A0DC();
  v34 = &_swiftEmptyArrayStorage;
  sub_100006E30(&qword_100015838, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006CFC(0, &qword_100015840, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D50(&qword_100015848, &qword_100015840, &type metadata accessor for DispatchWorkItemFlags);
  v24 = v30;
  sub_10000A37C();
  sub_10000A31C();
  _Block_release(v22);

  (*(v33 + 8))(v4, v24);
  (*(v31 + 8))(v8, v32);
  v27(v16, v28);
}

void sub_100003020(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100006C40();
    v2 = sub_10000A42C();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20.super.super.isa = sub_10000A2EC().super.super.isa;
        v21 = sub_100005C34(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_100003200(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v35 = a1;
  v3 = sub_100009D6C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v37 = [objc_allocWithZone(NSDate) init];
  sub_100009DBC();
  sub_100006158();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10000B0D0;
  sub_100009DDC();
  v15 = sub_100009D2C();
  v17 = v16;
  (*(v4 + 8))(v7, v3);
  *(v14 + 56) = &type metadata for String;
  v18 = sub_1000061C0();
  *(v14 + 64) = v18;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_100006E30(&qword_100015800, &type metadata accessor for UUID);
  v19 = sub_10000A44C();
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v18;
  *(v14 + 72) = v19;
  *(v14 + 80) = v20;
  sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v21 = sub_10000A35C();
  sub_10000A2FC();
  sub_10000A06C();

  v22 = v36;
  (*(v9 + 16))(v36, v13, v8);
  v23 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v27 = v37;
  v26 = v38;
  v28 = v35;
  *(v25 + 2) = v38;
  *(v25 + 3) = v28;
  *(v25 + 4) = v27;
  (*(v9 + 32))(&v25[v23], v22, v8);
  v29 = &v25[v24];
  v30 = v40;
  *v29 = v39;
  *(v29 + 1) = v30;
  v31 = v26;
  v32 = v28;
  v33 = v27;

  sub_100009F5C();

  return (*(v9 + 8))(v13, v8);
}

void sub_1000036BC(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_100006EC4(0, &qword_100015830, NSNumber_ptr);
    isa = sub_10000A21C().super.isa;
  }

  if (a2)
  {
    v6 = sub_100009D0C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_100003778(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9)
{
  v58 = a8;
  v59 = a7;
  v65 = a6;
  v60 = a4;
  v61 = a3;
  v12 = sub_100009DCC();
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  __chkstk_darwin(v12);
  v62 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = [objc_allocWithZone(NSDate) init];
  sub_100006158();
  v56[1] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10000B0D0;
  v17 = [a5 description];
  v18 = sub_10000A24C();
  v20 = v19;

  *(v16 + 56) = &type metadata for String;
  v21 = sub_1000061C0();
  *(v16 + 64) = v21;
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v22 = sub_100006E30(&qword_100015800, &type metadata accessor for UUID);
  v64 = v12;
  v56[3] = v22;
  v23 = sub_10000A44C();
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v21;
  v56[0] = v21;
  *(v16 + 72) = v23;
  *(v16 + 80) = v24;
  v56[2] = sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v25 = sub_10000A35C();
  sub_10000A2FC();
  sub_10000A06C();

  v26 = a2[4];
  sub_1000022D8(a2, a2[3]);
  sub_100009DAC();
  sub_100009FEC();

  v27 = v69;
  v28 = sub_1000022D8(&v68, v69);
  v67 = v27;
  v29 = sub_100006630(&v66);
  (*(*(v27 - 8) + 16))(v29, v28, v27);
  v30 = sub_100005B1C(0, 1, 1, &_swiftEmptyArrayStorage);
  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_100005B1C((v31 > 1), v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  sub_100006694(&v66, &v30[32 * v32 + 32]);
  sub_10000231C(&v68);
  v33 = *(v65 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_bundleSubscriptionManager);
  sub_10000A1DC();
  v34 = v69;
  v35 = sub_1000022D8(&v68, v69);
  v67 = v34;
  v36 = sub_100006630(&v66);
  (*(*(v34 - 8) + 16))(v36, v35, v34);
  v38 = *(v30 + 2);
  v37 = *(v30 + 3);
  v40 = v62;
  v39 = v63;
  if (v38 >= v37 >> 1)
  {
    v30 = sub_100005B1C((v37 > 1), v38 + 1, 1, v30);
  }

  v41 = v64;
  *(v30 + 2) = v38 + 1;
  sub_100006694(&v66, &v30[32 * v38 + 32]);
  sub_10000231C(&v68);
  (*(v39 + 16))(v40, a1, v41);
  sub_10000A16C();
  v68 = 0;
  *&v66 = 0;
  v42 = sub_10000A1BC();
  __chkstk_darwin(v42);
  v56[-6] = a1;
  v56[-5] = a2;
  v56[-4] = a9;
  v56[-3] = &v68;
  v56[-2] = &v66;
  sub_100006E30(&qword_100015858, &type metadata accessor for FeedItemAndScoreEntity);
  sub_10000A15C();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_10000B0E0;
  v44 = v68;
  *(v43 + 56) = &type metadata for Int;
  *(v43 + 64) = &protocol witness table for Int;
  *(v43 + 32) = v44;
  v45 = v66;
  *(v43 + 96) = &type metadata for Int;
  *(v43 + 104) = &protocol witness table for Int;
  *(v43 + 72) = v45;
  v46 = v57;
  v47 = [v57 fc_millisecondTimeIntervalUntilNow];
  *(v43 + 136) = &type metadata for UInt64;
  *(v43 + 144) = &protocol witness table for UInt64;
  *(v43 + 112) = v47;
  v48 = v64;
  v49 = sub_10000A44C();
  v50 = v56[0];
  *(v43 + 176) = &type metadata for String;
  *(v43 + 184) = v50;
  *(v43 + 152) = v49;
  *(v43 + 160) = v51;
  v52 = sub_10000A35C();
  sub_10000A2FC();
  sub_10000A06C();

  v53 = v62;
  sub_100002BF8(v62, v30);

  v54 = v59(0);
  v61(v54);

  return (*(v63 + 8))(v53, v48);
}

uint64_t sub_100003F18(uint64_t (**a1)(char *, uint64_t), uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v75 = a6;
  v76 = a5;
  v88 = a4;
  v9 = sub_10000A1BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v87 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v77 = v68 - v14;
  v15 = sub_10000A20C();
  v83 = *(v15 - 8);
  v84 = v15;
  v16 = *(v83 + 64);
  __chkstk_darwin(v15);
  v82 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006158();
  v73 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10000B0D0;
  v86 = a1;
  v20 = a1[2];
  *(v19 + 56) = &type metadata for Int;
  *(v19 + 64) = &protocol witness table for Int;
  *(v19 + 32) = v20;
  v21 = sub_100009DCC();
  v22 = sub_100006E30(&qword_100015800, &type metadata accessor for UUID);
  v74 = v21;
  v72 = v22;
  v23 = sub_10000A44C();
  v25 = v24;
  *(v19 + 96) = &type metadata for String;
  v71 = sub_1000061C0();
  *(v19 + 104) = v71;
  *(v19 + 72) = v23;
  *(v19 + 80) = v25;
  v70 = sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v26 = sub_10000A35C();
  sub_10000A2FC();
  sub_10000A06C();

  v79 = [objc_allocWithZone(NSDate) init];
  v27 = a3[3];
  v81 = a3[4];
  v28 = v20;
  v29 = sub_1000022D8(a3, v27);
  v80 = a2;
  v78 = v20;
  if (v20)
  {
    v68[0] = v29;
    v68[1] = v27;
    v90 = &_swiftEmptyArrayStorage;
    sub_10000A3CC();
    v69 = v10;
    v31 = *(v10 + 16);
    v30 = v10 + 16;
    v92 = v31;
    v32 = v86 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v89 = *(v30 + 56);
    v33 = v77;
    do
    {
      (v92)(v33, v32, v9);
      sub_10000A17C();
      (*(v30 - 8))(v33, v9);
      sub_10000A3AC();
      v34 = v90[2];
      sub_10000A3DC();
      sub_10000A3EC();
      sub_10000A3BC();
      v32 = &v89[v32];
      v28 = (v28 - 1);
    }

    while (v28);
    v10 = v69;
  }

  v35 = v82;
  sub_10000A34C();
  v36 = v85;
  v37 = sub_100009FFC();
  v38 = v86;
  v39 = v87;
  if (v36)
  {
    (*(v83 + 8))(v35, v84);

    return v38;
  }

  v92 = v37;
  v81 = 0;
  (*(v83 + 8))(v35, v84);

  if (v78)
  {
    v42 = *(v10 + 16);
    v41 = v10 + 16;
    v89 = v42;
    v43 = v38 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v85 = *(v41 + 56);
    v86 = (v41 - 8);
    for (i = v78; i; --i)
    {
      v46 = v9;
      (v89)(v39, v43, v9);
      if (v88 == 11)
      {
        sub_10000A18C();
        sub_10000A1AC();
        sub_10000A0AC();

        if (!v91)
        {
          goto LABEL_30;
        }

        v47 = v92;
        if (*(v92 + 16))
        {
          v48 = v90;
          v49 = v91;
          goto LABEL_18;
        }
      }

      else
      {
        sub_10000A19C();
        sub_10000A1AC();
        sub_10000A0AC();

        if (!v91)
        {
          goto LABEL_31;
        }

        if (*(v92 + 16))
        {
          v48 = v90;
          v49 = v91;
          v47 = v92;
LABEL_18:
          v50 = sub_100005C34(v48, v49);
          v52 = v51;

          if (v52)
          {
            v45 = *(*(v47 + 56) + 8 * v50);
          }

          else
          {
            v45 = 0;
          }

          goto LABEL_10;
        }
      }

      v45 = 0;
LABEL_10:
      v39 = v87;
      v90 = v45;
      LOBYTE(v91) = 0;
      sub_10000A0BC();

      v9 = v46;
      result = (*v86)(v39, v46);
      v43 += v85;
    }
  }

  v53 = v78;
  if (__OFADD__(*v76, v78))
  {
    __break(1u);
  }

  else
  {
    *v76 += v78;
    v54 = v92;
    v55 = *(v92 + 16);
    v56 = __OFADD__(*v75, v55);
    v57 = *v75 + v55;
    if (!v56)
    {
      *v75 = v57;
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_10000B0E0;
      *(v58 + 56) = &type metadata for Int;
      *(v58 + 64) = &protocol witness table for Int;
      *(v58 + 32) = v53;
      v59 = *(v54 + 16);

      *(v58 + 96) = &type metadata for Int;
      *(v58 + 104) = &protocol witness table for Int;
      *(v58 + 72) = v59;
      v60 = v79;
      v61 = [v79 fc_millisecondTimeIntervalUntilNow];
      *(v58 + 136) = &type metadata for UInt64;
      *(v58 + 144) = &protocol witness table for UInt64;
      *(v58 + 112) = v61;
      v62 = sub_10000A44C();
      v63 = v71;
      *(v58 + 176) = &type metadata for String;
      *(v58 + 184) = v63;
      *(v58 + 152) = v62;
      *(v58 + 160) = v64;
      v65 = sub_10000A35C();
      sub_10000A2FC();
      sub_10000A06C();

      sub_100006E78(0, &qword_100015860);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_10000B080;
      if (v88 == 11)
      {
        v66 = sub_10000A13C();
      }

      else
      {
        v66 = sub_10000A14C();
      }

      *(v38 + 32) = v66;
      *(v38 + 40) = v67;

      return v38;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1000047B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100009D0C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_100004814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1, uint64_t a2), unint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v77 = a8;
  v78 = a4;
  v74 = a3;
  v75 = a7;
  v11 = sub_100009DCC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v82 = v14;
  v85 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = [objc_allocWithZone(NSDate) init];
  sub_100006158();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10000B0D0;
  v80 = a5;
  if (a5 >> 62)
  {
    v16 = sub_10000A41C();
  }

  else
  {
    v16 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  *(v15 + 32) = v16;
  sub_100006E30(&qword_100015800, &type metadata accessor for UUID);
  v17 = sub_10000A44C();
  v19 = v18;
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = sub_1000061C0();
  *(v15 + 72) = v17;
  *(v15 + 80) = v19;
  sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v20 = sub_10000A35C();
  sub_10000A2FC();
  sub_10000A06C();

  v21 = *&a6[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_notificationScoringService + 32];
  sub_1000022D8(&a6[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_notificationScoringService], *&a6[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_notificationScoringService + 24]);
  sub_100009DAC();
  sub_10000A03C();

  v22 = v89;
  v23 = sub_1000022D8(v88, v89);
  v87 = v22;
  v24 = sub_100006630(&v86);
  (*(*(v22 - 8) + 16))(v24, v23, v22);
  v25 = sub_100005B1C(0, 1, 1, &_swiftEmptyArrayStorage);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_100005B1C((v26 > 1), v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  sub_100006694(&v86, &v25[32 * v27 + 32]);
  sub_10000231C(v88);
  v28 = *&a6[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_bundleSubscriptionManager];
  sub_10000A1DC();
  v29 = v89;
  v30 = sub_1000022D8(v88, v89);
  v87 = v29;
  v31 = sub_100006630(&v86);
  (*(*(v29 - 8) + 16))(v31, v30, v29);
  v33 = *(v25 + 2);
  v32 = *(v25 + 3);
  v76 = a6;
  if (v33 >= v32 >> 1)
  {
    v25 = sub_100005B1C((v32 > 1), v33 + 1, 1, v25);
  }

  *(v25 + 2) = v33 + 1;
  sub_100006694(&v86, &v25[32 * v33 + 32]);
  sub_10000231C(v88);
  v34 = *(v12 + 16);
  v83 = v12 + 16;
  v84 = v34;
  v34(v85, a1, v11);
  v35 = v11;
  v69 = v11;
  v36 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v70 = *(v12 + 80);
  v81 = a1;
  v82 += 7;
  v37 = (v82 + v36) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v76;
  *(v40 + 16) = v76;
  v42 = *(v12 + 32);
  v72 = v12 + 32;
  v43 = v42(v40 + v36, v85, v35);
  v73 = v42;
  v71 = v40;
  *(v40 + v37) = v25;
  v44 = (v40 + v38);
  v45 = v74;
  v47 = v77;
  v46 = v78;
  *v44 = v75;
  v44[1] = v47;
  v48 = (v40 + v39);
  *v48 = v45;
  v48[1] = v46;
  __chkstk_darwin(v43);
  v50 = v80;
  v49 = v81;
  *(&v68 - 4) = v41;
  *(&v68 - 3) = v50;
  *(&v68 - 2) = v49;
  sub_10000690C();
  v51 = v41;

  sub_100009F0C();
  v52 = v85;
  v53 = v69;
  v84(v85, v49, v69);
  v54 = v70;
  v55 = (v54 + 32) & ~v54;
  v56 = (v82 + v55) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v58 = v79;
  *(v57 + 16) = v50;
  *(v57 + 24) = v58;
  v42(v57 + v55, v52, v53);
  v59 = (v57 + v56);
  v78 = sub_1000067AC;
  v60 = v71;
  *v59 = sub_1000067AC;
  v59[1] = v60;

  v80 = v58;

  v61 = sub_100009ECC();
  sub_100009EDC();

  v62 = v52;
  v84(v52, v81, v53);
  v63 = (v54 + 16) & ~v54;
  v64 = (v82 + v63) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v73(v65 + v63, v62, v53);
  v66 = (v65 + v64);
  *v66 = v78;
  v66[1] = v60;

  v67 = sub_100009ECC();
  sub_100009EEC();
}

uint64_t sub_100004F18(uint64_t *a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v8 = *a1;
  sub_100006158();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10000B0E0;
  if (a2 >> 62)
  {
    v19 = v9;
    v10 = sub_10000A41C();
    v9 = v19;
  }

  else
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  *(v9 + 32) = v10;
  v11 = *(v8 + 16);
  *(v9 + 96) = &type metadata for Int;
  *(v9 + 104) = &protocol witness table for Int;
  *(v9 + 72) = v11;
  v12 = v9;
  v13 = [a3 fc_millisecondTimeIntervalUntilNow];
  v12[17] = &type metadata for UInt64;
  v12[18] = &protocol witness table for UInt64;
  v12[14] = v13;
  sub_100009DCC();
  sub_100006E30(&qword_100015800, &type metadata accessor for UUID);
  v14 = sub_10000A44C();
  v16 = v15;
  v12[22] = &type metadata for String;
  v12[23] = sub_1000061C0();
  v12[19] = v14;
  v12[20] = v16;
  sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v17 = sub_10000A35C();
  sub_10000A2FC();
  sub_10000A06C();

  sub_100003020(v8);
  a5();
}

uint64_t sub_1000050FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  sub_100006158();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10000B0D0;
  sub_100002234(0, &qword_100015820);
  sub_10000A3FC();
  *(v5 + 56) = &type metadata for String;
  v6 = sub_1000061C0();
  *(v5 + 64) = v6;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_100009DCC();
  sub_100006E30(&qword_100015800, &type metadata accessor for UUID);
  v7 = sub_10000A44C();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v6;
  *(v5 + 72) = v7;
  *(v5 + 80) = v8;
  sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v9 = sub_10000A35C();
  sub_10000A2FC();
  sub_10000A06C();

  return a3(0, a1);
}

uint64_t sub_1000053C4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  v27 = a6;
  v24 = a4;
  v25 = a5;
  v8 = sub_100009DCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v23 = a1;
  v11 = *(a1 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_resolver + 32);
  sub_1000022D8((a1 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_resolver), *(a1 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_resolver + 24));
  sub_100002234(0, &qword_100015810);
  *(swift_allocObject() + 16) = a2;
  v12 = a2;
  sub_100009E1C();

  if (v30)
  {
    sub_1000063D8(&aBlock, v34);
    v14 = *(v23 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_workQueue);
    (*(v9 + 16))(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v8);
    sub_1000063F0(v34, v33);
    v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v18 = v26;
    *(v17 + 16) = v26;
    (*(v9 + 32))(v17 + v15, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v19 = (v17 + v16);
    v20 = v27;
    *v19 = v25;
    v19[1] = v20;
    sub_1000063D8(v33, v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
    v31 = sub_100006548;
    v32 = v17;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v29 = sub_10000593C;
    v30 = &unk_100010B38;
    v21 = _Block_copy(&aBlock);
    v22 = v18;

    [v14 fc_addAsyncOperationWithBlock:v21];
    _Block_release(v21);
    return sub_10000231C(v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100005690(void *a1)
{
  v2 = sub_100009D6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  sub_1000022D8(a1, a1[3]);
  sub_100009DDC();
  sub_10000A27C();
  sub_100009E0C();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000057B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  sub_100006158();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10000B0D0;
  v14 = [a3 fc_millisecondTimeIntervalUntilNow];
  *(v13 + 56) = &type metadata for UInt64;
  *(v13 + 64) = &protocol witness table for UInt64;
  *(v13 + 32) = v14;
  sub_100009DCC();
  sub_100006E30(&qword_100015800, &type metadata accessor for UUID);
  v15 = sub_10000A44C();
  v17 = v16;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = sub_1000061C0();
  *(v13 + 72) = v15;
  *(v13 + 80) = v17;
  sub_100006EC4(0, &qword_100015808, OS_os_log_ptr);
  v18 = sub_10000A35C();
  sub_10000A2FC();
  sub_10000A06C();

  return a5(a4, a7, a1, a2);
}

uint64_t sub_10000593C(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_100006620, v5);
}

uint64_t sub_1000059D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_100005A44()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100005B1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006E78(0, &qword_100015850);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100005C34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000A4CC();
  sub_10000A29C();
  v6 = sub_10000A4EC();

  return sub_100005CAC(a1, a2, v6);
}

unint64_t sub_100005CAC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000A46C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_100005D64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  ObjectType = swift_getObjectType();
  v27 = sub_10000A32C();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v27);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A30C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = sub_10000A0FC();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v26 = OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_cooldownQueue;
  v13 = sub_100006EC4(0, &qword_1000157C0, OS_dispatch_queue_ptr);
  v25[1] = "eue";
  v25[2] = v13;
  sub_10000A0EC();
  v33 = &_swiftEmptyArrayStorage;
  sub_100006E30(&qword_1000157C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100006CFC(0, &qword_1000157D0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100006D50(&qword_1000157D8, &qword_1000157D0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A37C();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  *&v3[v26] = sub_10000A33C();
  v14 = v28;
  sub_1000063F0(v28, &v3[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_resolver]);
  v15 = v29;
  sub_1000063F0(v29, &v3[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_notificationScoringService]);
  v16 = v30;
  *&v4[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_bundleSubscriptionManager] = v30;
  v17 = objc_allocWithZone(NSOperationQueue);
  v18 = v16;
  v19 = [v17 init];
  v20 = OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_workQueue;
  *&v4[OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_workQueue] = v19;
  v21 = v19;
  v22 = sub_10000A23C();
  [v21 setName:v22];

  [*&v4[v20] setQualityOfService:25];
  [*&v4[v20] setMaxConcurrentOperationCount:1];
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v32, "init");
  sub_10000231C(v15);
  sub_10000231C(v14);
  return v23;
}

uint64_t sub_100006104()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100006158()
{
  if (!qword_1000157E8)
  {
    sub_100002234(255, &qword_1000157F0);
    v0 = sub_10000A45C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000157E8);
    }
  }
}

unint64_t sub_1000061C0()
{
  result = qword_1000157F8;
  if (!qword_1000157F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000157F8);
  }

  return result;
}

uint64_t sub_100006214()
{
  v1 = sub_100009DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100006300()
{
  v1 = *(sub_100009DCC() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1000053C4(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t sub_100006398()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000063D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000063F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006454()
{
  v1 = sub_100009DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  sub_10000231C((v0 + v6));

  return _swift_deallocObject(v0, v6 + 40, v3 | 7);
}

uint64_t sub_100006548(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100009DCC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = v2 + v7;
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_1000057B0(a1, a2, v9, v2 + v6, v11, v12, v2 + v8);
}

uint64_t sub_100006608(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_100006630(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_100006694(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000066A4()
{
  v1 = sub_100009DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_1000067AC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100009DCC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v12 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);
  v14 = *(v2 + v9);
  v13 = *(v2 + v9 + 8);
  v15 = v2 + v6;
  v16 = *(v2 + 16);
  sub_100002BF8(v15, v10);
  v17 = v12(a1, a2);
  return v14(v17);
}

uint64_t sub_10000689C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v1 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_notificationScoringService + 32);
  sub_1000022D8((v1 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_notificationScoringService), *(v1 + OBJC_IVAR____TtC18NewsScoringService13ScoringEngine_notificationScoringService + 24));
  return sub_10000A04C();
}

void sub_10000690C()
{
  if (!qword_100015818)
  {
    v0 = sub_10000A22C();
    if (!v1)
    {
      atomic_store(v0, &qword_100015818);
    }
  }
}

uint64_t sub_10000696C()
{
  v1 = sub_100009DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100006A50(uint64_t *a1)
{
  v3 = *(sub_100009DCC() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  return sub_100004F18(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *v5);
}

uint64_t sub_100006B00()
{
  v1 = sub_100009DCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100006BA0(uint64_t a1)
{
  v3 = *(sub_100009DCC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1000050FC(a1, v1 + v4, v6);
}

void sub_100006C40()
{
  if (!qword_100015828)
  {
    sub_100006EC4(255, &qword_100015830, NSNumber_ptr);
    v0 = sub_10000A43C();
    if (!v1)
    {
      atomic_store(v0, &qword_100015828);
    }
  }
}

uint64_t sub_100006CB8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100006CFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10000A2DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100006D50(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_100006CFC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006DAC()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006E30(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100006E78(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_10000A45C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100006EC4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100006F14(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 40);

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_100006FB8()
{
  result = qword_100015870;
  if (!qword_100015870)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100015870);
  }

  return result;
}

uint64_t sub_100007034(void *a1)
{
  sub_1000063F0(a1, v9);
  v2 = a1[4];
  sub_1000022D8(a1, a1[3]);
  sub_100002234(0, &qword_100015B58);
  result = sub_100009E3C();
  if (v8[3])
  {
    v4 = a1[4];
    sub_1000022D8(a1, a1[3]);
    sub_10000A1EC();
    result = sub_100009E2C();
    if (result)
    {
      v5 = result;
      v6 = objc_allocWithZone(type metadata accessor for ScoringEngine());
      v7 = sub_100005D64(v9, v8, v5);

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

uint64_t sub_10000711C()
{
  v0 = sub_100009FDC();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100009FAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F9C();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_100009F8C();
  (*(v3 + 104))(v6, enum case for ComputeServiceSettings.UnloadPolicy.immediate(_:), v2);
  sub_100009FCC();
  return sub_100009F7C();
}

uint64_t sub_10000729C(void *a1)
{
  v1 = a1[4];
  sub_1000022D8(a1, a1[3]);
  sub_10000A1EC();
  result = sub_100009E2C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000072F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000022D8(a1, a1[3]);
  v4 = sub_10000A1EC();
  result = sub_100009E2C();
  if (result)
  {
    a2[3] = v4;
    a2[4] = &protocol witness table for DropboxBundleSubscriptionManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100007364()
{
  v0 = objc_allocWithZone(type metadata accessor for NoopUserEventHistoryStorage());

  return [v0 init];
}

uint64_t sub_10000739C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RetentionTokenVendor.mostRecent(_:);
  v3 = sub_100009F6C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_100007410@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NoopResourceService();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_10000884C();
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_100007464()
{
  v0 = sub_100009D1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000154E0 != -1)
  {
    swift_once();
  }

  v5 = sub_100009D6C();
  sub_10000875C(v5, qword_100015880);
  v7[0] = 0xD000000000000019;
  v7[1] = 0x800000010000DBD0;
  (*(v1 + 104))(v4, enum case for URL.DirectoryHint.notDirectory(_:), v0);
  sub_1000087F8();
  sub_100009D5C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1000075DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000154E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100009D6C();
  v3 = sub_10000875C(v2, qword_100015880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100007684(void *a1)
{
  v1 = a1[4];
  sub_1000022D8(a1, a1[3]);
  sub_100006EC4(0, &qword_100015B40, FCFileCoordinatedAppConfigurationManager_ptr);
  result = sub_100009E2C();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000076E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000022D8(a1, a1[3]);
  sub_1000086FC(0, &qword_100015B30, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_100009E2C();
  if (result)
  {
    v5 = sub_10000A01C();
    v6 = objc_allocWithZone(v5);
    result = sub_10000A00C();
    a2[3] = v5;
    a2[4] = &protocol witness table for NewsAppConfigurationManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000077C4()
{
  v0 = sub_100009D6C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008794(v3, qword_100015880);
  sub_10000875C(v0, qword_100015880);
  v6 = [objc_opt_self() newsdCachesURL];
  sub_100009D4C();

  sub_100009D3C();
  return (*(v1 + 8))(v5, v0);
}

Swift::Int sub_1000078E4()
{
  sub_10000A4CC();
  sub_10000A4DC(0);
  return sub_10000A4EC();
}

Swift::Int sub_100007950()
{
  sub_10000A4CC();
  sub_10000A4DC(0);
  return sub_10000A4EC();
}

uint64_t sub_1000079C4()
{
  sub_1000088A4();
  swift_allocError();
  sub_1000088F8(0, &qword_100015B68, sub_10000895C, &type metadata accessor for Promise);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_100009EFC();
}

id sub_100007DD8()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_sessionIDs] = 0;
  *&v0[OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_sessions] = 0;
  v2 = OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_earliestSessionDate;
  v3 = sub_100009D9C();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_size] = 0;
  *&v0[OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_prunedSessionIDs] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_prunedSessionSize] = 0;
  v4 = OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_metadata;
  *&v0[v4] = [objc_opt_self() emptyWithSessionsOnDiskSize:0];
  v0[OBJC_IVAR____TtC18NewsScoringServiceP33_C5702952914E111DC8B8265D9BB1866627NoopUserEventHistoryStorage_isEmpty] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t type metadata accessor for NoopUserEventHistoryStorage()
{
  result = qword_100015A90;
  if (!qword_100015A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100007FE0()
{
  sub_1000088F8(319, &qword_100015AA0, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000080E0()
{
  v0 = sub_100009EBC();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009E6C();
  type metadata accessor for ScoringEngine();
  sub_100009E9C();

  sub_100009E6C();
  sub_100009FBC();
  sub_100009EAC();

  sub_100009E6C();
  sub_1000086FC(0, &qword_100015AA8, &protocolRef_FCBundleSubscriptionManagerType);
  sub_100009E9C();

  sub_100009E6C();
  sub_1000086FC(0, &qword_100015B10, &protocolRef_FCPaidAccessCheckerType);
  sub_100009E9C();

  sub_100009E6C();
  sub_100002234(0, &qword_100015B18);
  sub_100009EAC();

  sub_100009E6C();
  sub_1000086FC(0, &qword_100015B20, &protocolRef_FCUserEventHistoryStorageType);
  sub_100009E9C();

  v5 = enum case for Scope.singleton(_:);
  v6 = v1[13];
  v6(v4, enum case for Scope.singleton(_:), v0);
  sub_100009DFC();

  v7 = v1[1];
  v7(v4, v0);
  sub_100009E6C();
  sub_100009F6C();
  sub_100009EAC();

  v6(v4, v5, v0);
  sub_100009DFC();

  v7(v4, v0);
  v9[1] = v1 + 1;
  sub_100009E6C();
  sub_100002234(0, &qword_100015B28);
  sub_100009EAC();

  v6(v4, v5, v0);
  sub_100009DFC();

  v7(v4, v0);
  sub_100009E6C();
  sub_100009D6C();
  sub_10000A26C();
  sub_100009EAC();

  sub_100009E6C();
  sub_10000A28C();
  sub_100009EAC();

  sub_100009E6C();
  sub_1000086FC(0, &qword_100015B30, &protocolRef_FCNewsAppConfigurationManager);
  sub_100009E9C();

  sub_100009E6C();
  sub_100002234(0, &qword_100015B38);
  sub_100009EAC();

  v6(v4, v5, v0);
  sub_100009DFC();

  v7(v4, v0);
  sub_100009E7C();
  sub_100009E8C();
}

uint64_t sub_1000086FC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000875C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100008794(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_1000087F8()
{
  result = qword_100015B48;
  if (!qword_100015B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015B48);
  }

  return result;
}

unint64_t sub_10000884C()
{
  result = qword_100015B50;
  if (!qword_100015B50)
  {
    type metadata accessor for NoopResourceService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015B50);
  }

  return result;
}

unint64_t sub_1000088A4()
{
  result = qword_100015B60;
  if (!qword_100015B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015B60);
  }

  return result;
}

void sub_1000088F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10000895C()
{
  if (!qword_100015B70)
  {
    sub_100006EC4(255, &qword_100015B78, FCResource_ptr);
    v0 = sub_10000A22C();
    if (!v1)
    {
      atomic_store(v0, &qword_100015B70);
    }
  }
}

uint64_t sub_1000089D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008A28(uint64_t a1, uint64_t a2)
{
  sub_1000088F8(0, &qword_100015AA0, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008ABC(uint64_t a1)
{
  sub_1000088F8(0, &qword_100015AA0, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for NoopResourceService.Errors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NoopResourceService.Errors(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100008C38()
{
  result = qword_100015B80;
  if (!qword_100015B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015B80);
  }

  return result;
}

uint64_t sub_100008C90(uint64_t a1, unint64_t a2, const char *a3)
{
  v6 = sub_10000A09C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A07C();

  v11 = sub_10000A08C();
  v12 = sub_10000A2FC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_100008F30(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v11, v12, a3, v13, 0xCu);
    sub_10000231C(v14);
  }

  return (*(v7 + 8))(v10, v6);
}

id sub_100008EC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScoringServiceListenerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008F30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008FFC(v11, 0, 0, 1, a1, a2);
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
    sub_100009C54(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000231C(v11);
  return v7;
}

unint64_t sub_100008FFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100009108(a5, a6);
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
    result = sub_10000A39C();
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

char *sub_100009108(uint64_t a1, unint64_t a2)
{
  v4 = sub_100009154(a1, a2);
  sub_100009284(&off_100010A28);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100009154(uint64_t a1, unint64_t a2)
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

  v6 = sub_100009370(v5, 0);
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

  result = sub_10000A39C();
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
        v10 = sub_10000A2AC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009370(v10, 0);
        result = sub_10000A38C();
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

uint64_t sub_100009284(uint64_t result)
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

  result = sub_1000093FC(result, v12, 1, v3);
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

void *sub_100009370(uint64_t a1, uint64_t a2)
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

  sub_100009CB0(0, &qword_100015C38, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000093FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009CB0(0, &qword_100015C38, &type metadata for UInt8, &type metadata accessor for _ContiguousArrayStorage);
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

BOOL sub_100009508(void *a1)
{
  v3 = sub_10000A09C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = sub_10000A23C();
  v12 = [a1 valueForEntitlement:v11];

  if (v12)
  {
    v41 = v4;
    v42 = v1;
    sub_10000A36C();
    swift_unknownObjectRelease();
    sub_100009A94(&aBlock);
    sub_100006158();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10000B080;
    *(v13 + 56) = sub_100009B18();
    *(v13 + 64) = sub_100009B64();
    *(v13 + 32) = a1;
    v14 = a1;
    v15 = sub_10000A25C();
    v17 = v16;
    sub_10000A07C();
    v18 = v14;

    v19 = sub_10000A08C();
    v20 = sub_10000A2FC();

    if (os_log_type_enabled(v19, v20))
    {
      v39 = v3;
      v40 = v12;
      v21 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v21 = 136446466;
      v38 = v15;
      *(v21 + 4) = sub_100008F30(v15, v17, &aBlock);
      *(v21 + 12) = 2082;
      v22 = [v18 serviceName];
      if (v22)
      {
        v23 = v22;
        v24 = sub_10000A24C();
        v26 = v25;
      }

      else
      {
        v26 = 0xE500000000000000;
        v24 = 0x3E6C696E3CLL;
      }

      v30 = sub_100008F30(v24, v26, &aBlock);

      *(v21 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "will accept new XPC connection, connection=%{public}s, serviceName=%{public}s", v21, 0x16u);
      swift_arrayDestroy();

      (*(v41 + 8))(v10, v39);
      v12 = v40;
      v15 = v38;
    }

    else
    {

      (*(v41 + 8))(v10, v3);
    }

    v31 = swift_allocObject();
    *(v31 + 16) = v15;
    *(v31 + 24) = v17;
    v45 = sub_100009BF4;
    v46 = v31;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v44 = sub_1000059D0;
    *(&v44 + 1) = &unk_100010DA8;
    v32 = _Block_copy(&aBlock);

    [v18 setInvalidationHandler:v32];
    _Block_release(v32);
    v33 = swift_allocObject();
    *(v33 + 16) = v15;
    *(v33 + 24) = v17;
    v45 = sub_100009C30;
    v46 = v33;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v44 = sub_1000059D0;
    *(&v44 + 1) = &unk_100010DF8;
    v34 = _Block_copy(&aBlock);

    [v18 setInterruptionHandler:v34];
    _Block_release(v34);
    isa = sub_100009DEC().super.isa;
    [v18 setExportedInterface:isa];

    [v18 setExportedObject:*(v42 + OBJC_IVAR____TtC18NewsScoringService30ScoringServiceListenerDelegate_scoringEngine)];
    [v18 resume];
  }

  else
  {
    aBlock = 0u;
    v44 = 0u;
    sub_100009A94(&aBlock);
    sub_10000A07C();
    v27 = sub_10000A08C();
    v28 = sub_10000A2FC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "rejecting XPC connection due to missing entitlement", v29, 2u);
    }

    (*(v4 + 8))(v8, v3);
  }

  return v12 != 0;
}

uint64_t sub_100009A94(uint64_t a1)
{
  sub_100009CB0(0, &qword_100015C20, &type metadata for Any + 8, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100009B18()
{
  result = qword_100015C28;
  if (!qword_100015C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100015C28);
  }

  return result;
}

unint64_t sub_100009B64()
{
  result = qword_100015C30;
  if (!qword_100015C30)
  {
    sub_100009B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100015C30);
  }

  return result;
}

uint64_t sub_100009BBC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009C54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100009CB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}