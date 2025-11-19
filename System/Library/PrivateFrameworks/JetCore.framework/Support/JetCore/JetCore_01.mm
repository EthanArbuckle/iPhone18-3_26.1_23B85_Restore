uint64_t sub_100018D40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001D04(&qword_1000A5680, &qword_100084000);
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

void sub_100018E04()
{
  sub_100019018(319, &qword_1000A5038, &type metadata accessor for PreferenceKey);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocalPreferences();
    if (v1 <= 0x3F)
    {
      sub_100018F08();
      if (v2 <= 0x3F)
      {
        sub_100018F6C();
        if (v3 <= 0x3F)
        {
          sub_100019018(319, &unk_1000A5050, &type metadata accessor for OSAllocatedUnfairLock);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_100018F08()
{
  result = qword_1000A5040;
  if (!qword_1000A5040)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000A5040);
  }

  return result;
}

void sub_100018F6C()
{
  if (!qword_1000A5048)
  {
    sub_100018FD0(&unk_1000A56A0, &unk_100083E10);
    v0 = type metadata accessor for OSAllocatedUnfairLock();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5048);
    }
  }
}

uint64_t sub_100018FD0(uint64_t *a1, uint64_t *a2)
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

void sub_100019018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100019070()
{
  result = qword_1000A5090;
  if (!qword_1000A5090)
  {
    sub_100018FD0(&qword_1000A5098, qword_100084070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5090);
  }

  return result;
}

unint64_t sub_1000190D8()
{
  result = qword_1000A50A0;
  if (!qword_1000A50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A50A0);
  }

  return result;
}

unint64_t sub_10001912C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10009E018, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000191A4()
{
  result = qword_1000A50A8;
  if (!qword_1000A50A8)
  {
    type metadata accessor for DaemonBagRefreshRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A50A8);
  }

  return result;
}

uint64_t sub_1000191FC(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v4 = *(*(sub_100001D04(&qword_1000A5770, &unk_100083BB0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v5 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v7 = swift_task_alloc();
  v2[24] = v7;
  *v7 = v2;
  v7[1] = sub_100019320;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v5, v5);
}

uint64_t sub_100019320()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1000197CC;
  }

  else
  {
    v3 = sub_100019434;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100019434()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  DaemonPushDeleteRecordRequest.id.getter();
  dispatch thunk of AssetPushSubscriptionStore.find(id:)();
  if (v1)
  {
    sub_100001D4C((v0 + 16));
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 176);
    v25 = *(v0 + 160);
    TaskLocal.get()();
    v8 = *(v0 + 88);
    sub_100001CC0((v0 + 56), *(v0 + 80));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v9 = *(type metadata accessor for LogMessage() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._object = 0x8000000100087590;
    v12._countAndFlagsBits = 0xD00000000000002FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    swift_getErrorValue();
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    *(v0 + 120) = v14;
    v15 = sub_1000061A4((v0 + 96));
    (*(*(v14 - 8) + 16))(v15, v13, v14);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 96, &qword_1000A5630, &unk_100083BF0);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 56));
    DaemonResponse.init(_:)();
  }

  else
  {
    v5 = *(v0 + 168);
    sub_10000DCA0(*(v0 + 184), &qword_1000A5770, &unk_100083BB0);
    v6 = *(v0 + 48);
    sub_100001CC0((v0 + 16), *(v0 + 40));
    DaemonPushDeleteRecordRequest.id.getter();
    dispatch thunk of AssetPushSubscriptionStore.delete(id:)();
    v21 = *(v0 + 160);
    v22 = *(v0 + 168);
    _StringGuts.grow(_:)(57);
    v23._countAndFlagsBits = 0xD000000000000037;
    v23._object = 0x80000001000875C0;
    String.append(_:)(v23);
    *(v0 + 208) = DaemonPushDeleteRecordRequest.id.getter();
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    DaemonResponse.init<>(_:)();
    sub_100001D4C((v0 + 16));
  }

  v18 = *(v0 + 176);
  v17 = *(v0 + 184);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000197CC()
{
  v1 = v0[25];
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v16 = v0[20];
  TaskLocal.get()();
  v3 = v0[11];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100087590;
  v7._countAndFlagsBits = 0xD00000000000002FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[16];
  v9 = v0[17];
  v0[15] = v9;
  v10 = sub_1000061A4(v0 + 12);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 12), &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  DaemonResponse.init(_:)();
  v13 = v0[22];
  v12 = v0[23];

  v14 = v0[1];

  return v14();
}

unint64_t sub_100019A5C()
{
  result = qword_1000A50D0;
  if (!qword_1000A50D0)
  {
    type metadata accessor for DaemonPushDeleteRecordRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A50D0);
  }

  return result;
}

uint64_t sub_100019AB4(uint64_t a1)
{
  v1[72] = a1;
  v2 = type metadata accessor for String.Encoding();
  v1[73] = v2;
  v3 = *(v2 - 8);
  v1[74] = v3;
  v4 = *(v3 + 64) + 15;
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v5 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v1[77] = v5;
  v6 = *(v5 - 8);
  v1[78] = v6;
  v7 = *(v6 + 64) + 15;
  v1[79] = swift_task_alloc();
  v8 = type metadata accessor for Date.FormatStyle.DateStyle();
  v1[80] = v8;
  v9 = *(v8 - 8);
  v1[81] = v9;
  v10 = *(v9 + 64) + 15;
  v1[82] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v1[83] = v11;
  v12 = *(v11 - 8);
  v1[84] = v12;
  v13 = *(v12 + 64) + 15;
  v1[85] = swift_task_alloc();
  v14 = type metadata accessor for URL.DirectoryHint();
  v1[86] = v14;
  v15 = *(v14 - 8);
  v1[87] = v15;
  v16 = *(v15 + 64) + 15;
  v1[88] = swift_task_alloc();
  v17 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v1[89] = swift_task_alloc();
  v18 = type metadata accessor for URL();
  v1[90] = v18;
  v19 = *(v18 - 8);
  v1[91] = v19;
  v20 = *(v19 + 64) + 15;
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v21 = type metadata accessor for ContainerLocation();
  v22 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v23 = swift_task_alloc();
  v1[94] = v23;
  *v23 = v1;
  v23[1] = sub_100019DD4;

  return BaseObjectGraph.inject<A>(_:)(v1 + 70, v21, v21);
}

uint64_t sub_100019DD4()
{
  v2 = *(*v1 + 752);
  v5 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_10001ABF4;
  }

  else
  {
    v3 = sub_100019EE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100019EE8()
{
  v1 = *(v0 + 744);
  v83 = *(v0 + 560);
  ContainerLocation.cacheDirectoryUrl.getter();
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 744);
  v82 = *(v0 + 736);
  v3 = *(v0 + 712);
  v86 = *(v0 + 704);
  v88 = *(v0 + 720);
  v4 = *(v0 + 696);
  v5 = *(v0 + 688);
  v84 = *(v0 + 672);
  v89 = *(v0 + 664);
  v91 = *(v0 + 728);
  v71 = *(v0 + 680);
  v72 = *(v0 + 656);
  v76 = *(v0 + 648);
  v78 = *(v0 + 640);
  v73 = *(v0 + 632);
  v74 = *(v0 + 624);
  v75 = *(v0 + 616);
  TaskLocal.get()();
  v80 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v6 = *(type metadata accessor for LogMessage() - 8);
  v93 = *(v6 + 72);
  v7 = *(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD000000000000019;
  v8._object = 0x8000000100087630;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v9 = URL.path(percentEncoded:)(0);
  *(v0 + 352) = &type metadata for String;
  *(v0 + 328) = v9;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v0 + 328);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 56));
  strcpy((v0 + 512), "testAsset.txt");
  *(v0 + 526) = -4864;
  (*(v4 + 104))(v86, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  sub_100006518();
  URL.appending<A>(component:directoryHint:)();
  (*(v4 + 8))(v86, v5);
  v11 = URL.path(percentEncoded:)(0);
  v81 = *(v91 + 8);
  v81(v82, v88);
  TaskLocal.get()();
  v12 = *(v0 + 128);
  sub_100001CC0((v0 + 96), *(v0 + 120));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000014;
  v13._object = 0x8000000100087650;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v0 + 384) = &type metadata for String;
  *(v0 + 360) = v11;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC(v0 + 360);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 96));
  Date.init()();
  static Date.FormatStyle.DateStyle.numeric.getter();
  static Date.FormatStyle.TimeStyle.complete.getter();
  v15 = Date.formatted(date:time:)();
  v17 = v16;
  (*(v74 + 8))(v73, v75);
  (*(v76 + 8))(v72, v78);
  (*(v84 + 8))(v71, v89);
  _StringGuts.grow(_:)(32);

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 10;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  v22 = String._bridgeToObjectiveC()();
  LOBYTE(v2) = [v21 fileExistsAtPath:v22];

  if ((v2 & 1) == 0)
  {
    v23 = [v20 defaultManager];
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 createFileAtPath:v24 contents:0 attributes:0];

    if ((v25 & 1) == 0)
    {
      v48 = *(v0 + 744);
      v49 = *(v0 + 720);
      v50 = *(v0 + 576);

      TaskLocal.get()();
      v51 = *(v0 + 168);
      sub_100001CC0((v0 + 136), *(v0 + 160));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      sub_100001D4C((v0 + 136));
      DaemonResponse.init(reason:)();

      v58 = v48;
      v59 = v49;
      goto LABEL_12;
    }
  }

  v26 = *(v0 + 760);
  v27 = *(v0 + 608);
  TaskLocal.get()();
  v28 = *(v0 + 208);
  sub_100001CC0((v0 + 176), *(v0 + 200));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 176));
  *(v0 + 528) = 0xD00000000000001DLL;
  *(v0 + 536) = 0x8000000100087670;
  *(v0 + 544) = v11;
  static String.Encoding.utf8.getter();
  StringProtocol.write<A>(toFile:atomically:encoding:)();
  if (!v26)
  {
    v34 = *(v0 + 712);
    v79 = *(v0 + 600);
    (*(*(v0 + 592) + 8))(*(v0 + 608), *(v0 + 584));
    TaskLocal.get()();
    v77 = *(v0 + 248);
    sub_100001CC0((v0 + 216), *(v0 + 240));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v35._countAndFlagsBits = 0xD000000000000021;
    v35._object = 0x8000000100087710;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v0 + 416) = &type metadata for String;
    *(v0 + 392) = v11;

    LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
    sub_100013EFC(v0 + 392);
    v36._object = 0x8000000100087740;
    v36._countAndFlagsBits = 0xD000000000000012;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    *(v0 + 448) = &type metadata for String;
    *(v0 + 424) = 0xD00000000000001DLL;
    *(v0 + 432) = 0x8000000100087670;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC(v0 + 424);
    v37._countAndFlagsBits = 34;
    v37._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100001D4C((v0 + 216));
    static String.Encoding.utf8.getter();
    v38 = String.init(contentsOfFile:encoding:)();
    v39 = *(v0 + 744);
    v40 = *(v0 + 720);
    v53 = v52;
    v54 = *(v0 + 712);
    v85 = v38;
    v87 = *(v0 + 576);

    TaskLocal.get()();
    v90 = *(v0 + 288);
    sub_100001CC0((v0 + 256), *(v0 + 280));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v55._countAndFlagsBits = 0xD00000000000001ALL;
    v55._object = 0x8000000100087760;
    LogMessage.StringInterpolation.appendLiteral(_:)(v55);
    *(v0 + 480) = &type metadata for String;
    *(v0 + 456) = v85;
    *(v0 + 464) = v53;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC(v0 + 456);
    v56._countAndFlagsBits = 34;
    v56._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v56);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100001D4C((v0 + 256));
    _StringGuts.grow(_:)(20);

    v57._countAndFlagsBits = v85;
    v57._object = v53;
    String.append(_:)(v57);

    DaemonResponse.init<>(_:)();

    v58 = v39;
    v59 = v40;
LABEL_12:
    v81(v58, v59);
    goto LABEL_13;
  }

  v29 = *(v0 + 744);
  v30 = *(v0 + 720);
  v31 = *(v0 + 608);
  v32 = *(v0 + 592);
  v33 = *(v0 + 584);

  (*(v32 + 8))(v31, v33);
  v81(v29, v30);

  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 712);
  v92 = *(v0 + 576);
  TaskLocal.get()();
  v42 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._countAndFlagsBits = 0xD00000000000002BLL;
  v43._object = 0x8000000100087600;
  LogMessage.StringInterpolation.appendLiteral(_:)(v43);
  swift_getErrorValue();
  v44 = *(v0 + 488);
  v45 = *(v0 + 496);
  *(v0 + 320) = v45;
  v46 = sub_1000061A4((v0 + 296));
  (*(*(v45 - 8) + 16))(v46, v44, v45);
  LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
  sub_100013EFC(v0 + 296);
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v47);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 16));
  DaemonResponse.init(_:)();
LABEL_13:
  v60 = *(v0 + 744);
  v61 = *(v0 + 736);
  v62 = *(v0 + 712);
  v63 = *(v0 + 704);
  v64 = *(v0 + 680);
  v65 = *(v0 + 656);
  v66 = *(v0 + 632);
  v67 = *(v0 + 608);
  v68 = *(v0 + 600);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_10001ABF4()
{
  v1 = v0[95];
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v2 = v0[89];
  v23 = v0[72];
  TaskLocal.get()();
  v3 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100087600;
  v7._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[61];
  v9 = v0[62];
  v0[40] = v9;
  v10 = sub_1000061A4(v0 + 37);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
  sub_100013EFC((v0 + 37));
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 2);
  DaemonResponse.init(_:)();
  v12 = v0[93];
  v13 = v0[92];
  v14 = v0[89];
  v15 = v0[88];
  v16 = v0[85];
  v17 = v0[82];
  v18 = v0[79];
  v19 = v0[76];
  v20 = v0[75];

  v21 = v0[1];

  return v21();
}

unint64_t sub_10001AECC()
{
  result = qword_1000A50F8;
  if (!qword_1000A50F8)
  {
    type metadata accessor for DaemonRefreshTestAssetRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A50F8);
  }

  return result;
}

uint64_t sub_10001AF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a2;
  v4[27] = a4;
  v4[25] = a1;
  v5 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v6 = *(*(sub_100001D04(&qword_1000A56E0, &unk_100083BE0) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v7 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v8 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v9 = swift_task_alloc();
  v4[30] = v9;
  *v9 = v4;
  v9[1] = sub_10001B04C;

  return BaseObjectGraph.inject<A>(_:)(v4 + 2, v7, v7);
}

uint64_t sub_10001B04C()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_10001BDEC;
  }

  else
  {
    v3 = sub_10001B160;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001B160()
{
  v1 = v0[26];
  if (DaemonPushInfoRequest.compactMode.getter())
  {
    v2 = _swiftEmptyArrayStorage;
LABEL_9:
    v0[32] = v2;
    v19 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v20 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v21 = swift_task_alloc();
    v0[33] = v21;
    *v21 = v0;
    v21[1] = sub_10001B518;
    v22 = v0[27];

    return BaseObjectGraph.inject<A>(_:)(v0 + 12, v19, v19);
  }

  v3 = v0[31];
  v4 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  v2 = dispatch thunk of AssetPushSubscriptionStore.findAll()();
  if (!v3)
  {
    goto LABEL_9;
  }

  sub_100001D4C(v0 + 2);
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v5 = v0[28];
  v23 = v0[25];
  TaskLocal.get()();
  v6 = v0[11];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v7 = *(type metadata accessor for LogMessage() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001000877A0;
  v10._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  swift_getErrorValue();
  v11 = v0[21];
  v12 = v0[22];
  v0[20] = v12;
  v13 = sub_1000061A4(v0 + 17);
  (*(*(v12 - 8) + 16))(v13, v11, v12);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 17));
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  type metadata accessor for DaemonPushInfoResponse();
  sub_10001C6C0(&qword_1000A5120, &type metadata accessor for DaemonPushInfoResponse);
  sub_10001C6C0(&qword_1000A5128, &type metadata accessor for DaemonPushInfoResponse);
  DaemonResponse.init(_:)();
  v16 = v0[28];
  v15 = v0[29];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10001B518()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);

    v5 = sub_10001C0B8;
  }

  else
  {
    v5 = sub_10001B634;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001B634()
{
  sub_100001CC0(v0 + 12, v0[15]);
  v1 = type metadata accessor for PushManager();
  v0[35] = v1;
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_10001B778;

  return (sub_1000382F4)(v1, &off_10009F238);
}

uint64_t sub_10001B778(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v8 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v5 = v3[32];

    v6 = sub_10001C38C;
  }

  else
  {
    v6 = sub_10001B894;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001BBA4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v6 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = a2;

  return _swift_task_switch(sub_10001BCA4, 0, 0);
}

uint64_t sub_10001BCA4()
{
  v1 = v0[42];
  v12 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[25];
  sub_10006B8B8(v0[37]);

  sub_100001CC0(v0 + 12, v0[15]);
  sub_100038558(v6);
  DaemonPushInfoResponse.init(environment:records:subscribedChannelIDs:apsLastKnownConnectedDate:controlChannelID:)();
  sub_100001D04(&qword_1000A5130, &unk_1000842C0);
  swift_storeEnumTagMultiPayload();
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 2);
  v9 = v0[28];
  v8 = v0[29];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001BDEC()
{
  v1 = v0[31];
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v2 = v0[28];
  v16 = v0[25];
  TaskLocal.get()();
  v3 = v0[11];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x80000001000877A0;
  v7._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[21];
  v9 = v0[22];
  v0[20] = v9;
  v10 = sub_1000061A4(v0 + 17);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 17));
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  type metadata accessor for DaemonPushInfoResponse();
  sub_10001C6C0(&qword_1000A5120, &type metadata accessor for DaemonPushInfoResponse);
  sub_10001C6C0(&qword_1000A5128, &type metadata accessor for DaemonPushInfoResponse);
  DaemonResponse.init(_:)();
  v13 = v0[28];
  v12 = v0[29];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10001C0B8()
{
  sub_100001D4C(v0 + 2);
  v1 = v0[34];
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v2 = v0[28];
  v16 = v0[25];
  TaskLocal.get()();
  v3 = v0[11];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x80000001000877A0;
  v7._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[21];
  v9 = v0[22];
  v0[20] = v9;
  v10 = sub_1000061A4(v0 + 17);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 17));
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  type metadata accessor for DaemonPushInfoResponse();
  sub_10001C6C0(&qword_1000A5120, &type metadata accessor for DaemonPushInfoResponse);
  sub_10001C6C0(&qword_1000A5128, &type metadata accessor for DaemonPushInfoResponse);
  DaemonResponse.init(_:)();
  v13 = v0[28];
  v12 = v0[29];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10001C38C()
{
  sub_100001D4C(v0 + 12);
  sub_100001D4C(v0 + 2);
  v1 = v0[38];
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v2 = v0[28];
  v16 = v0[25];
  TaskLocal.get()();
  v3 = v0[11];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x80000001000877A0;
  v7._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[21];
  v9 = v0[22];
  v0[20] = v9;
  v10 = sub_1000061A4(v0 + 17);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 17));
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 7);
  type metadata accessor for DaemonPushInfoResponse();
  sub_10001C6C0(&qword_1000A5120, &type metadata accessor for DaemonPushInfoResponse);
  sub_10001C6C0(&qword_1000A5128, &type metadata accessor for DaemonPushInfoResponse);
  DaemonResponse.init(_:)();
  v13 = v0[28];
  v12 = v0[29];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10001C6C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001C71C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10001C8B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for Date();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_10001CA58()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_10001CB4C();
      if (v2 <= 0x3F)
      {
        sub_10001FE4C(319, &unk_1000A51D0, &type metadata for Action, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10001CB4C()
{
  if (!qword_1000A51C8)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A51C8);
    }
  }
}

__n128 sub_10001CBB0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001CBC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001CC0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

Swift::Int sub_10001CC74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001CD1C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10001CDB0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001CE54@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001F074(*a1);
  *a2 = result;
  return result;
}

void sub_10001CE84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 99;
  v5 = 0xE100000000000000;
  v6 = 101;
  v7 = 30821;
  if (v2 != 3)
  {
    v7 = 24929;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE200000000000000;
  }

  if (*v1)
  {
    v4 = 112;
    v3 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_10001CEE8()
{
  v1 = *v0;
  v2 = 99;
  v3 = 101;
  v4 = 30821;
  if (v1 != 3)
  {
    v4 = 24929;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 112;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001CF48@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10001F074(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10001CF88(uint64_t a1)
{
  v2 = sub_10001FFB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001CFC4(uint64_t a1)
{
  v2 = sub_10001FFB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29 - v5;
  v7 = sub_100001D04(&qword_1000A5310, &qword_100084628);
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for PushMessageUserInfo(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_100001CC0(a1, a1[3]);
  sub_10001FFB4();
  v16 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100001D4C(a1);
  }

  v33 = v6;
  v30 = a1;
  v40 = 0;
  *v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v14 + 1) = v18;
  v38 = 1;
  sub_100020008();
  v19 = v10;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v39;
  v21 = v33;
  if (v39 == 6)
  {
    v20 = 0;
  }

  v14[16] = v20;
  v37 = 2;
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v22)
  {
    v23 = 1;
  }

  else
  {
    Date.init(timeIntervalSince1970:)();
    v23 = 0;
  }

  v24 = v30;
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 56))(v21, v23, 1, v25);
  sub_10002005C(v21, &v14[v11[6]]);
  v36 = 3;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14[v11[7]] = (v26 == 1) & ~v27;
  sub_100001D04(&qword_1000A5328, &qword_100084630);
  v35 = 4;
  sub_1000200CC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v34)
  {
    v28 = v34;
  }

  else
  {
    v28 = &_swiftEmptyArrayStorage;
  }

  (*(v32 + 8))(v19, v7);
  *&v14[v11[8]] = v28;
  sub_1000201A4(v14, v31, type metadata accessor for PushMessageUserInfo);
  sub_100001D4C(v24);
  return sub_10001FB3C(v14, type metadata accessor for PushMessageUserInfo);
}

uint64_t sub_10001D658(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 118;
  }

  else
  {
    v2 = 97;
  }

  if (*a2)
  {
    v3 = 118;
  }

  else
  {
    v3 = 97;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10001D6C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001D728()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10001D76C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001D7C8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10009E1D8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10001D828(uint64_t *a1@<X8>)
{
  v2 = 97;
  if (*v1)
  {
    v2 = 118;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_10001D848()
{
  if (*v0)
  {
    return 118;
  }

  else
  {
    return 97;
  }
}

uint64_t sub_10001D864@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10009E1D8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10001D8D4(uint64_t a1)
{
  v2 = sub_10001F974();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D910(uint64_t a1)
{
  v2 = sub_10001F974();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10001D94C(uint64_t a1, Swift::UInt64 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (!a4)
    {
      Hasher._combine(_:)(0);
      if (a3)
      {
        Hasher._combine(_:)(1u);
        goto LABEL_8;
      }

      v8 = 0;
LABEL_18:
      Hasher._combine(_:)(v8);
      return;
    }

    v7 = 1;
LABEL_17:
    Hasher._combine(_:)(v7);
    v8 = a2 & 1;
    goto LABEL_18;
  }

  if (a4 != 2)
  {
    if (a4 == 3)
    {
      Hasher._combine(_:)(3uLL);
LABEL_8:

      String.hash(into:)();
      return;
    }

    v7 = 4;
    goto LABEL_17;
  }

  Hasher._combine(_:)(2uLL);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  Hasher._combine(_:)(v6);
}

Swift::Int sub_10001DA3C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_10001D94C(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_10001DAA4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  sub_10001D94C(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_10001DAFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10001F10C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_10001DB3C()
{
  result = qword_1000A5218;
  if (!qword_1000A5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5218);
  }

  return result;
}

uint64_t sub_10001DB90@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v81 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PushMessageUserInfo(0);
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v84 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.Encoding();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for Date();
  v85 = *(v14 - 8);
  v86 = v14;
  v15 = *(v85 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v79 - v19;
  v21 = type metadata accessor for PushMessage(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a1;
  v26 = [a1 userInfo];
  if (!v26)
  {
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v90, v91);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v42 = *(type metadata accessor for LogMessage() - 8);
    v43 = *(v42 + 72);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C(v90);
    sub_100001D4C(a2);
    return (*(v22 + 56))(a3, 1, 1, v21);
  }

  v82 = v22;
  v87 = a2;
  v88 = v21;
  v83 = a3;
  v27 = v26;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v90[0] = 0;
  v30 = [v28 dataWithJSONObject:isa options:1 error:v90];

  v31 = v90[0];
  if (!v30)
  {
    v45 = v31;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v90, v91);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v46 = *(type metadata accessor for LogMessage() - 8);
    v47 = *(v46 + 72);
    v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100001D4C(v90);
    sub_100001D4C(v87);
    a3 = v83;
    v21 = v88;
    v22 = v82;
    return (*(v22 + 56))(a3, 1, 1, v21);
  }

  v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  UUID.init()();
  v35 = [v89 timestamp];
  v80 = v32;
  if (v35)
  {
    v36 = v35;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = *(v85 + 32);
    v38 = v18;
    v39 = v86;
    v37(v20, v38, v86);
    v40 = v88;
    v37(&v25[v88[5]], v20, v39);
    v41 = v87;
  }

  else
  {
    v49 = v34;
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v90, v91);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v50 = *(type metadata accessor for LogMessage() - 8);
    v51 = *(v50 + 72);
    v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    sub_100001D4C(v90);
    v41 = v87;
    v53 = v87[4];
    sub_100001CC0(v87, v87[3]);
    v40 = v88;
    v54 = &v25[v88[5]];
    dispatch thunk of DateProvider.now.getter();
    v34 = v49;
    v32 = v80;
  }

  static String.Encoding.utf8.getter();
  v55 = String.init(data:encoding:)();
  if (v56)
  {
    v57 = v55;
  }

  else
  {
    v57 = 0;
  }

  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  v59 = &v25[v40[7]];
  *v59 = v57;
  *(v59 + 1) = v58;
  v79[1] = v58;
  v60 = type metadata accessor for JSONDecoder();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10001FA20();
  v63 = v84;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v25[v40[8]] = *(v63 + 16);
  sub_10001FACC(v63 + v9[6], &v25[v40[9]]);
  v25[v40[10]] = *(v63 + v9[7]);
  *&v25[v40[11]] = *(v63 + v9[8]);
  v67 = *(v63 + 8);
  if (!v67)
  {

    v70 = [v89 channelID];
    if (v70)
    {
      v71 = v70;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v72;

      goto LABEL_26;
    }

    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v90, v91);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v76 = *(type metadata accessor for LogMessage() - 8);
    v77 = *(v76 + 72);
    v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_10001FA78(v32, v34);

    sub_10001FB3C(v84, type metadata accessor for PushMessageUserInfo);
    sub_100001D4C(v90);
    a3 = v83;
    sub_100001D4C(v87);
    v64 = type metadata accessor for UUID();
    (*(*(v64 - 8) + 8))(v25, v64);
    v21 = v88;
    (*(v85 + 8))(&v25[v88[5]], v86);

    v22 = v82;
    sub_10000DCA0(&v25[*(v21 + 36)], &qword_1000A56E0, &unk_100083BE0);
    v65 = *&v25[*(v21 + 44)];

    return (*(v22 + 56))(a3, 1, 1, v21);
  }

  v68 = *v63;

  v69 = v67;
LABEL_26:

  sub_10001FB3C(v63, type metadata accessor for PushMessageUserInfo);
  sub_10001FA78(v32, v34);

  v73 = v88;
  v74 = &v25[v88[6]];
  *v74 = v68;
  v74[1] = v69;
  v75 = v83;
  sub_1000201A4(v25, v83, type metadata accessor for PushMessage);
  (*(v82 + 56))(v75, 0, 1, v73);
  sub_100001D4C(v41);
  return sub_10001FB3C(v25, type metadata accessor for PushMessage);
}

void *sub_10001E964(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001D04(&qword_1000A5230, &qword_100084480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100001D04(&qword_1000A5238, &qword_100084488);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10001EAAC(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100001D04(&qword_1000A5240, &qword_100084498);
  v10 = *(type metadata accessor for PushMessage(0) - 8);
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
  v15 = *(type metadata accessor for PushMessage(0) - 8);
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

char *sub_10001EC84(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001D04(&unk_1000A5650, &qword_100084490);
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

char *sub_10001ED90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001D04(&qword_1000A5348, &qword_100084640);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_10001EE94(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001D04(&qword_1000A5340, &qword_100084638);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_10001EF98(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      v8 = a6 == 1;
      goto LABEL_17;
    }

    if (a6)
    {
      return 0;
    }

    v7 = (a2 | a5) == 0;
    if (a2 && a5)
    {
      if (a1 != a4 || a2 != a5)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return v7;
  }

  if (a3 == 2)
  {
    return a6 == 2 && *&a1 == *&a4;
  }

  if (a3 == 3)
  {
    if (a6 == 3)
    {
      if (a1 != a4 || a2 != a5)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  v8 = a6 == 4;
LABEL_17:
  v9 = a4 ^ a1 ^ 1;
  if (!v8)
  {
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_10001F074(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10009E0A8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001F0C0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10009E140, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001F10C(uint64_t *a1)
{
  v2 = type metadata accessor for DecodingError.Context();
  v60 = *(v2 - 8);
  v3 = *(v60 + 64);
  __chkstk_darwin(v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001D04(&qword_1000A5220, &qword_100084478);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v62 = a1;
  sub_100001CC0(a1, v11);
  v13 = COERCE_DOUBLE(sub_10001F974());
  v14 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v14)
  {
    v58 = v5;
    v59 = v13;
    v61 = v7;
    LOBYTE(v63) = 0;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;

    v67._countAndFlagsBits = v15;
    v67._object = v17;
    v18 = sub_10001F0C0(v67);
    v19 = v62;
    if (v18 == 5)
    {
      v20 = v62[4];
      sub_100001CC0(v62, v62[3]);
      v21 = dispatch thunk of Decoder.codingPath.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10001E964(0, v21[2] + 1, 1, v21);
      }

      v22 = v2;
      v23 = v59;
      v24 = v60;
      v26 = v21[2];
      v25 = v21[3];
      if (v26 >= v25 >> 1)
      {
        v55 = sub_10001E964((v25 > 1), v26 + 1, 1, v21);
        v23 = v59;
        v21 = v55;
      }

      v64 = &type metadata for Action.CodingKeys;
      v65 = v23;
      LOBYTE(v63) = 0;
      v21[2] = v26 + 1;
      sub_10000626C(&v63, &v21[5 * v26 + 4]);
      *&v63 = 0;
      *(&v63 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      *&v63 = 0xD000000000000018;
      *(&v63 + 1) = 0x80000001000877F0;
      v27._countAndFlagsBits = v15;
      v27._object = v17;
      String.append(_:)(v27);

      v28 = v58;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v29 = type metadata accessor for DecodingError();
      swift_allocError();
      v13 = v30;
      (*(v24 + 16))(COERCE_DOUBLE(*&v30), v28, v22);
      (*(*(v29 - 8) + 104))(COERCE_DOUBLE(*&v13), enum case for DecodingError.dataCorrupted(_:), v29);
      swift_willThrow();
      (*(v24 + 8))(v28, v22);
      (*(v61 + 8))(v10, v6);
      goto LABEL_8;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        LOBYTE(v63) = 1;
        *&v33 = COERCE_DOUBLE(KeyedDecodingContainer.decodeIfPresent(_:forKey:)());
        goto LABEL_16;
      }

      LOBYTE(v63) = 1;
      v45 = KeyedDecodingContainer.decode(_:forKey:)();
      v36 = v61;
      if (v45 != 1)
      {
        if (v45)
        {
          v37 = v45;
          v46 = v19[4];
          sub_100001CC0(v19, v19[3]);
          v47 = dispatch thunk of Decoder.codingPath.getter();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_10001E964(0, v47[2] + 1, 1, v47);
          }

          v48 = v59;
          v41 = v60;
          v50 = v47[2];
          v49 = v47[3];
          if (v50 >= v49 >> 1)
          {
            v57 = sub_10001E964((v49 > 1), v50 + 1, 1, v47);
            v48 = v59;
            v47 = v57;
          }

          v64 = &type metadata for Action.CodingKeys;
          v65 = v48;
          LOBYTE(v63) = 0;
          v47[2] = v50 + 1;
          sub_10000626C(&v63, &v47[5 * v50 + 4]);
          *&v63 = 0;
          *(&v63 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(49);

          *&v63 = 0xD00000000000002FLL;
          *(&v63 + 1) = 0x8000000100087850;
          goto LABEL_35;
        }

LABEL_27:
        (*(v36 + 8))(v10, v6);
        v13 = 0.0;
        goto LABEL_29;
      }
    }

    else
    {
      if (v18 == 2)
      {
        LOBYTE(v63) = 1;
        v34 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v61 + 8))(v10, v6);
        v31 = v19;
        v13 = v34;
        goto LABEL_9;
      }

      if (v18 == 3)
      {
        LOBYTE(v63) = 1;
        *&v33 = COERCE_DOUBLE(KeyedDecodingContainer.decode(_:forKey:)());
LABEL_16:
        v13 = *&v33;
        (*(v61 + 8))(v10, v6);
LABEL_29:
        v31 = v19;
        goto LABEL_9;
      }

      LOBYTE(v63) = 1;
      v35 = KeyedDecodingContainer.decode(_:forKey:)();
      v36 = v61;
      if (v35 != 1)
      {
        if (v35)
        {
          v37 = v35;
          v38 = v19[4];
          sub_100001CC0(v19, v19[3]);
          v39 = dispatch thunk of Decoder.codingPath.getter();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_10001E964(0, v39[2] + 1, 1, v39);
          }

          v40 = v59;
          v41 = v60;
          v43 = v39[2];
          v42 = v39[3];
          if (v43 >= v42 >> 1)
          {
            v56 = sub_10001E964((v42 > 1), v43 + 1, 1, v39);
            v40 = v59;
            v39 = v56;
          }

          v64 = &type metadata for Action.CodingKeys;
          v65 = v40;
          LOBYTE(v63) = 0;
          v39[2] = v43 + 1;
          sub_10000626C(&v63, &v39[5 * v43 + 4]);
          *&v63 = 0;
          *(&v63 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(56);
          v44._countAndFlagsBits = 0xD000000000000036;
          v44._object = 0x8000000100087810;
          String.append(_:)(v44);
LABEL_35:
          v66 = v37;
          v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v51);

          v52 = v58;
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          v53 = type metadata accessor for DecodingError();
          swift_allocError();
          v13 = v54;
          (*(v41 + 16))(COERCE_DOUBLE(*&v54), v52, v2);
          (*(*(v53 - 8) + 104))(COERCE_DOUBLE(*&v13), enum case for DecodingError.dataCorrupted(_:), v53);
          swift_willThrow();
          (*(v41 + 8))(v52, v2);
          (*(v61 + 8))(v10, v6);
          v31 = v19;
          goto LABEL_9;
        }

        goto LABEL_27;
      }
    }

    (*(v36 + 8))(v10, v6);
    *&v13 = 1;
    goto LABEL_29;
  }

LABEL_8:
  v31 = v62;
LABEL_9:
  sub_100001D4C(v31);
  return *&v13;
}

unint64_t sub_10001F974()
{
  result = qword_1000A5228;
  if (!qword_1000A5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5228);
  }

  return result;
}

uint64_t sub_10001F9E8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001FA20()
{
  result = qword_1000A5248;
  if (!qword_1000A5248)
  {
    type metadata accessor for PushMessageUserInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5248);
  }

  return result;
}

uint64_t sub_10001FA78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001FACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001FB3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001FBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10001FC90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_10001FD58()
{
  sub_10001FE4C(319, &unk_1000A52B8, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10001CB4C();
    if (v1 <= 0x3F)
    {
      sub_10001FE4C(319, &unk_1000A51D0, &type metadata for Action, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001FE4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10001FEB0()
{
  result = qword_1000A52F8;
  if (!qword_1000A52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A52F8);
  }

  return result;
}

unint64_t sub_10001FF08()
{
  result = qword_1000A5300;
  if (!qword_1000A5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5300);
  }

  return result;
}

unint64_t sub_10001FF60()
{
  result = qword_1000A5308;
  if (!qword_1000A5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5308);
  }

  return result;
}

unint64_t sub_10001FFB4()
{
  result = qword_1000A5318;
  if (!qword_1000A5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5318);
  }

  return result;
}

unint64_t sub_100020008()
{
  result = qword_1000A5320;
  if (!qword_1000A5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5320);
  }

  return result;
}

uint64_t sub_10002005C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A56E0, &unk_100083BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000200CC()
{
  result = qword_1000A5330;
  if (!qword_1000A5330)
  {
    sub_100018FD0(&qword_1000A5328, &qword_100084630);
    sub_100020150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5330);
  }

  return result;
}

unint64_t sub_100020150()
{
  result = qword_1000A5338;
  if (!qword_1000A5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5338);
  }

  return result;
}

uint64_t sub_1000201A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for PushMessageUserInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PushMessageUserInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100020360()
{
  result = qword_1000A5350;
  if (!qword_1000A5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5350);
  }

  return result;
}

unint64_t sub_1000203B8()
{
  result = qword_1000A5358;
  if (!qword_1000A5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5358);
  }

  return result;
}

unint64_t sub_100020410()
{
  result = qword_1000A5360;
  if (!qword_1000A5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5360);
  }

  return result;
}

unint64_t sub_10002047C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000208C8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000204E0()
{
  v1 = *v0;
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000839C0;
  *(inited + 32) = 0x6573616870;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  v3 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100020650(inited + 32);
  return v3;
}

unint64_t sub_1000205A4()
{
  result = qword_1000A5368;
  if (!qword_1000A5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5368);
  }

  return result;
}

unint64_t sub_1000205FC()
{
  result = qword_1000A5370;
  if (!qword_1000A5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5370);
  }

  return result;
}

uint64_t sub_100020650(uint64_t a1)
{
  v2 = sub_100001D04(&qword_1000A5380, &unk_100084870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SchedulingPriority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SchedulingPriority(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002080C()
{
  result = qword_1000A5388;
  if (!qword_1000A5388)
  {
    sub_100018FD0(&qword_1000A5390, "^h");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5388);
  }

  return result;
}

unint64_t sub_100020874()
{
  result = qword_1000A5398;
  if (!qword_1000A5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5398);
  }

  return result;
}

unint64_t sub_1000208C8(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

__n128 sub_1000208F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100020904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10002094C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000209A8()
{
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084990;
  *(inited + 32) = 0x6D6F44726F727265;
  *(inited + 40) = 0xEB000000006E6961;
  v2 = *v0;
  v3 = v0[1];
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  v4 = v0[2];
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x4449656C646E7562;
  *(inited + 88) = 0xE800000000000000;
  v5 = v0[3];
  v6 = v0[4];
  *(inited + 96) = String._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x8000000100087A10;
  v7 = *(v0 + 40);
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  v8 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  return v8;
}

Swift::Int sub_100020B04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void sub_100020B9C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  Hasher._combine(_:)(v6);
}

Swift::Int sub_100020C04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

uint64_t sub_100020C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v7)
    {
      return 0;
    }

LABEL_7:
    if (v3 == v6 && v4 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v5 ^ v9 ^ 1u;
    }

    return 0;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_100020D6C()
{
  result = qword_1000A53A0;
  if (!qword_1000A53A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A53A0);
  }

  return result;
}

unint64_t sub_100020DC4()
{
  result = qword_1000A53A8;
  if (!qword_1000A53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A53A8);
  }

  return result;
}

uint64_t sub_100020E18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100020E3C()
{
  v1 = *(v0 + 40);
  if (*(v0 + 40) <= 2u || v1 == 3 || v1 == 4)
  {
    sub_10001D49C(v0[3], v0[4], v1);
  }

  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084990;
  *(inited + 32) = 0x6D6F44726F727265;
  *(inited + 40) = 0xEB000000006E6961;
  v3 = *v0;
  v4 = v0[1];
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  v5 = v0[2];
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x697463417473616CLL;
  *(inited + 88) = 0xEA00000000006E6FLL;
  *(inited + 96) = Int._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x8000000100087A70;
  v6 = String._bridgeToObjectiveC()();

  *(inited + 120) = v6;
  v7 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  return v7;
}

Swift::Int sub_100021028()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v4);
  if (v6 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_10001D94C(v8, v3, v5, v6);
  }

  return Hasher._finalize()();
}

void sub_1000210D8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);
  String.hash(into:)();
  Hasher._combine(_:)(v6);
  if (v8 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    sub_10001D94C(a1, v5, v7, v8);
  }
}

Swift::Int sub_10002117C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v4);
  if (v6 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_10001D94C(v8, v3, v5, v6);
  }

  return Hasher._finalize()();
}

uint64_t sub_100021228(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_100021324(&v5, &v7) & 1;
}

unint64_t sub_100021278()
{
  result = qword_1000A53B0;
  if (!qword_1000A53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A53B0);
  }

  return result;
}

unint64_t sub_1000212D0()
{
  result = qword_1000A53B8;
  if (!qword_1000A53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A53B8);
  }

  return result;
}

uint64_t sub_100021324(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5 != 255)
  {
    if (v6 == 255)
    {
      return 0;
    }

    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
    if (*(a1 + 40) <= 1u)
    {
      if (!*(a1 + 40))
      {
        if (*(a2 + 40))
        {
          return 0;
        }

        if (!v9)
        {
          return !v11;
        }

        if (!v11)
        {
          return 0;
        }

        return *&v8 == *&v10 && v9 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
      }

      if (v6 != 1)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == 2)
      {
        if (v6 == 2)
        {
          v12 = *(a1 + 24);
          v13 = *(a2 + 24);
          if (v8 == v10)
          {
            return 1;
          }
        }

        return 0;
      }

      if (v5 == 3)
      {
        if (v6 != 3)
        {
          return 0;
        }

        return *&v8 == *&v10 && v9 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
      }

      if (v6 != 4)
      {
        return 0;
      }
    }

    return ((LODWORD(v10) ^ LODWORD(v8)) & 1) == 0;
  }

  return v6 == 255;
}

__n128 sub_100021448(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002145C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000214A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100021518()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084C30;
  *(inited + 32) = 0x6D6F44726F727265;
  *(inited + 40) = 0xEB000000006E6961;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0x496C656E6E616863;
  *(inited + 88) = 0xE900000000000044;
  *(inited + 96) = String._bridgeToObjectiveC()();
  v7 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  return v7;
}

Swift::Int sub_100021654()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000216D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  String.hash(into:)();
  Hasher._combine(_:)(v3);

  return String.hash(into:)();
}

Swift::Int sub_10002173C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000217B8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v6)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10002188C()
{
  result = qword_1000A53C0;
  if (!qword_1000A53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A53C0);
  }

  return result;
}

unint64_t sub_1000218E4()
{
  result = qword_1000A53C8;
  if (!qword_1000A53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A53C8);
  }

  return result;
}

Swift::Int sub_10002197C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000219CC()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_100021A04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_100021A50@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_100021A70(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

unint64_t sub_100021A98()
{
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084990;
  *(inited + 32) = 0x6D6F44726F727265;
  *(inited + 40) = 0xEB000000006E6961;
  v2 = *v0;
  v3 = v0[1];
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  v4 = v0[2];
  *(inited + 72) = Int._bridgeToObjectiveC()();
  strcpy((inited + 80), "taskIdentifier");
  *(inited + 95) = -18;
  v5 = v0[3];
  v6 = v0[4];
  *(inited + 96) = String._bridgeToObjectiveC()();
  *(inited + 104) = 0x6567617473;
  *(inited + 112) = 0xE500000000000000;
  *(v0 + 40);
  *(inited + 120) = Int._bridgeToObjectiveC()();
  v7 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  return v7;
}

Swift::Int sub_100021C04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void sub_100021CA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  Hasher._combine(_:)(v7);
}

Swift::Int sub_100021D14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

unint64_t sub_100021DB4()
{
  result = qword_1000A5468;
  if (!qword_1000A5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5468);
  }

  return result;
}

unint64_t sub_100021E0C()
{
  result = qword_1000A5470;
  if (!qword_1000A5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5470);
  }

  return result;
}

unint64_t sub_100021E74()
{
  result = qword_1000A5478;
  if (!qword_1000A5478)
  {
    sub_100018FD0(&qword_1000A5480, "*c");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5478);
  }

  return result;
}

unint64_t sub_100021EDC()
{
  result = qword_1000A5488;
  if (!qword_1000A5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5488);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PingLog(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PingLog(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_100021FB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084F70;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000100087B80;
  *(inited + 48) = Int32._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x8000000100087BA0;
  *(inited + 72) = Int32._bridgeToObjectiveC()();
  v4 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  return v4;
}

Swift::Int sub_1000220A4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100022100()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10002213C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_1000221C4()
{
  result = qword_1000A5490;
  if (!qword_1000A5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5490);
  }

  return result;
}

unint64_t sub_10002221C()
{
  result = qword_1000A5498;
  if (!qword_1000A5498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5498);
  }

  return result;
}

__n128 sub_100022270(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100022284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000222CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100022328()
{
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084990;
  *(inited + 32) = 0x496C656E6E616863;
  *(inited + 40) = 0xE900000000000044;
  v2 = *v0;
  v3 = v0[1];
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x4449656C646E7562;
  *(inited + 64) = 0xE800000000000000;
  v4 = v0[2];
  v5 = v0[3];
  *(inited + 72) = String._bridgeToObjectiveC()();
  *(inited + 80) = 0x797469726F697270;
  *(inited + 88) = 0xE800000000000000;
  v6 = qword_100085148[*(v0 + 32)];
  *(inited + 96) = Int._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x8000000100087BE0;
  v7 = v0[5];
  *(inited + 120) = Double._bridgeToObjectiveC()();
  v8 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  return v8;
}

Swift::Int sub_100022464()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(qword_100085148[v5]);
  v7 = 0.0;
  if (v6 != 0.0)
  {
    v7 = v6;
  }

  Hasher._combine(_:)(*&v7);
  return Hasher._finalize()();
}

void sub_100022534()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  v6 = v0[5];
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(qword_100085148[v5]);
  v7 = 0.0;
  if (v6 != 0.0)
  {
    v7 = v6;
  }

  Hasher._combine(_:)(*&v7);
}

Swift::Int sub_1000225B8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(qword_100085148[v5]);
  v7 = 0.0;
  if (v6 != 0.0)
  {
    v7 = v6;
  }

  Hasher._combine(_:)(*&v7);
  return Hasher._finalize()();
}

BOOL sub_100022660(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v3 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return v5 == v9 && qword_100085148[v4] == qword_100085148[v8];
}

unint64_t sub_100022730()
{
  result = qword_1000A54A0;
  if (!qword_1000A54A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A54A0);
  }

  return result;
}

unint64_t sub_100022788()
{
  result = qword_1000A54A8;
  if (!qword_1000A54A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A54A8);
  }

  return result;
}

__n128 sub_1000227DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100022800(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_100022848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1000228B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100022928()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

void *sub_10002296C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1000229B4()
{
  sub_100001D04(&qword_1000A5378, &unk_100084A90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085180;
  *(inited + 32) = 0x4C52557465737361;
  *(inited + 40) = 0xE800000000000000;
  v2 = *v0;
  v3 = v0[1];
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x4449656C646E7562;
  *(inited + 64) = 0xE800000000000000;
  v4 = v0[2];
  v5 = v0[3];
  *(inited + 72) = String._bridgeToObjectiveC()();
  *(inited + 80) = 0x44496567617375;
  *(inited + 88) = 0xE700000000000000;
  v6 = v0[4];
  v7 = v0[5];
  *(inited + 96) = String._bridgeToObjectiveC()();
  *(inited + 104) = 0x797469726F697270;
  *(inited + 112) = 0xE800000000000000;
  v8 = qword_100085388[*(v0 + 64)];
  *(inited + 120) = Int._bridgeToObjectiveC()();
  *(inited + 128) = 0x7365636375537369;
  *(inited + 136) = 0xE900000000000073;
  v9 = *(v0 + 65);
  *(inited + 144) = Bool._bridgeToObjectiveC()();
  *(inited + 152) = 0x6165526863746566;
  *(inited + 160) = 0xEB000000006E6F73;
  v10 = *(v0 + 66);
  *(inited + 168) = Int._bridgeToObjectiveC()();
  *(inited + 176) = 0x6E6F6973726576;
  *(inited + 184) = 0xE700000000000000;
  v11 = v0[6];
  v12 = v0[7];
  *(inited + 192) = String._bridgeToObjectiveC()();
  v13 = sub_100002458(inited);
  swift_setDeallocating();
  sub_100001D04(&qword_1000A5380, &unk_100084870);
  swift_arrayDestroy();
  if ((v0[10] & 1) == 0)
  {
    v14 = v0[9];
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10006A340(isa, 0xD000000000000019, 0x8000000100087C40, isUniquelyReferenced_nonNull_native);
  }

  return v13;
}

void sub_100022BB0()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  v7 = v0[6];
  v8 = v0[7];
  String.hash(into:)();
  Hasher._combine(_:)(qword_100085388[*(v0 + 64)]);
  Hasher._combine(_:)(*(v0 + 65) & 1);
  Hasher._combine(_:)(*(v0 + 66) + 1);
  if (*(v0 + 80) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v9 = v0[9];
    Hasher._combine(_:)(1u);
    if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    Hasher._combine(_:)(v10);
  }
}

Swift::Int sub_100022C7C()
{
  Hasher.init(_seed:)();
  sub_100022BB0();
  return Hasher._finalize()();
}

Swift::Int sub_100022CC0()
{
  Hasher.init(_seed:)();
  sub_100022BB0();
  return Hasher._finalize()();
}

uint64_t sub_100022CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_100022E18(v7, v9) & 1;
}

unint64_t sub_100022D6C()
{
  result = qword_1000A54B0;
  if (!qword_1000A54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A54B0);
  }

  return result;
}

unint64_t sub_100022DC4()
{
  result = qword_1000A54B8;
  if (!qword_1000A54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A54B8);
  }

  return result;
}

uint64_t sub_100022E18(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || qword_100085388[*(a1 + 64)] != qword_100085388[*(a2 + 64)] || ((*(a1 + 65) ^ *(a2 + 65)) & 1) != 0 || *(a1 + 66) != *(a2 + 66))
  {
    return 0;
  }

  v6 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_100022F4C()
{
  result = qword_1000A54C0;
  if (!qword_1000A54C0)
  {
    sub_100018FD0(&qword_1000A54C8, "z_");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A54C0);
  }

  return result;
}

unint64_t sub_100022FB4()
{
  result = qword_1000A54D0;
  if (!qword_1000A54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A54D0);
  }

  return result;
}

uint64_t sub_100023008()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  sub_100018750(v0, qword_1000A6378);
  sub_100018718(v0, qword_1000A6378);
  return OSLogger.Subsystem.init(rawValue:)();
}

uint64_t sub_10002311C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = type metadata accessor for OSLogger.Subsystem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A4D30 != -1)
  {
    swift_once();
  }

  v10 = sub_100018718(v5, qword_1000A6378);
  (*(v6 + 16))(v9, v10, v5);
  v16[3] = type metadata accessor for OSLogger();
  v16[4] = &protocol witness table for OSLogger;
  sub_1000061A4(v16);
  OSLogger.init(subsystem:category:)();
  v11 = sub_100001D04(&qword_1000A54D8, &qword_1000853B8);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  *a4 = result;
  return result;
}

uint64_t sub_100023290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100002758(a3, v27 - v11, &qword_1000A4ED8, &qword_100084010);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000DCA0(v12, &qword_1000A4ED8, &qword_100084010);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000DCA0(a3, &qword_1000A4ED8, &qword_100084010);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000DCA0(a3, &qword_1000A4ED8, &qword_100084010);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100023590()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100018750(v0, qword_1000A54E0);
  v1 = sub_100018718(v0, qword_1000A54E0);
  if (qword_1000A4D90 != -1)
  {
    swift_once();
  }

  v2 = sub_100018718(v0, qword_1000A6408);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100023658()
{
  v1[16] = v0;
  v2 = sub_100001D04(&unk_1000A56F0, &qword_1000854F8);
  v1[17] = v2;
  v3 = *(v2 - 8);
  v1[18] = v3;
  v4 = *(v3 + 64) + 15;
  v1[19] = swift_task_alloc();
  v5 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v6 = type metadata accessor for Bag();
  v1[21] = v6;
  v7 = *(v6 - 8);
  v1[22] = v7;
  v8 = *(v7 + 64) + 15;
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000237B8, 0, 0);
}

uint64_t sub_1000237B8()
{
  sub_100001CC0((v0[16] + OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager), *(v0[16] + OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager + 24));
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_100023868;
  v2 = v0[20];

  return sub_100015738(v2);
}

uint64_t sub_100023868()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return _swift_task_switch(sub_100023964, 0, 0);
}

uint64_t sub_100023964()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000DCA0(v3, &unk_1000A56A0, &unk_100083E10);
    v4 = *(v0[16] + OBJC_IVAR____TtC13jetpackassetd11PushManager_localPreferences);
    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    v5 = v0[13];
    if (v5)
    {
      v6 = v0[12];
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v7 = v0[11];
      sub_100001CC0(v0 + 7, v0[10]);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v8 = *(type metadata accessor for LogMessage() - 8);
      v9 = *(v8 + 72);
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      sub_100001D4C(v0 + 7);
    }

    else
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v17 = v0[6];
      sub_100001CC0(v0 + 2, v0[5]);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v18 = *(type metadata accessor for LogMessage() - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      sub_100001D4C(v0 + 2);
      if (qword_1000A4D18 != -1)
      {
        swift_once();
      }

      v6 = *(&xmmword_1000A6358 + 1);
      v5 = qword_1000A6368;
    }

    v21 = v0[23];
    v23 = v0[19];
    v22 = v0[20];

    v24 = v0[1];

    return v24(v6, v5);
  }

  else
  {
    v11 = v0[19];
    (*(v2 + 32))(v0[23], v3, v1);
    v12 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v13 = async function pointer to Bag.Value.currentOrNil()[1];
    v14 = swift_task_alloc();
    v0[25] = v14;
    *v14 = v0;
    v14[1] = sub_100023DF4;
    v15 = v0[19];
    v16 = v0[17];

    return Bag.Value.currentOrNil()(v0 + 14, v16);
  }
}

uint64_t sub_100023DF4()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100023F4C, 0, 0);
}

uint64_t sub_100023F4C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[14];
  }

  else
  {
    v3 = *(v0[16] + OBJC_IVAR____TtC13jetpackassetd11PushManager_localPreferences);
    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    v1 = v0[13];
    if (v1)
    {
      v2 = v0[12];
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v4 = v0[11];
      sub_100001CC0(v0 + 7, v0[10]);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v5 = *(type metadata accessor for LogMessage() - 8);
      v6 = *(v5 + 72);
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      sub_100001D4C(v0 + 7);
    }

    else
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v8 = v0[6];
      sub_100001CC0(v0 + 2, v0[5]);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v9 = *(type metadata accessor for LogMessage() - 8);
      v10 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      sub_100001D4C(v0 + 2);
      if (qword_1000A4D18 != -1)
      {
        swift_once();
      }

      v2 = *(&xmmword_1000A6358 + 1);
      v1 = qword_1000A6368;
    }
  }

  v12 = v0[23];
  v14 = v0[19];
  v13 = v0[20];

  v15 = v0[1];

  return v15(v2, v1);
}

uint64_t sub_1000242E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v28 - v9;
  v11 = type metadata accessor for LogMessage.StringInterpolation();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  if (a2)
  {
    v29 = a1;
    v30 = v6;
    v31 = v2;
    v13 = qword_1000A4D48;

    if (v13 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v28[1] = v35;
    sub_100001CC0(v33, v34);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v14 = *(type metadata accessor for LogMessage() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._object = 0x8000000100088CD0;
    v17._countAndFlagsBits = 0xD000000000000026;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    v32[3] = &type metadata for String;
    v18 = v29;
    v32[0] = v29;
    v32[1] = a2;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v32, &qword_1000A5630, &unk_100083BF0);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v33);
    v20 = *(v31 + OBJC_IVAR____TtC13jetpackassetd11PushManager_localPreferences);
    (*(v7 + 16))(v10, v31 + OBJC_IVAR____TtC13jetpackassetd11PushManager_subscribedControlChannelIDKey, v30);
    v33[0] = v18;
    v33[1] = a2;
    type metadata accessor for LocalPreferences();
    return Preferences.subscript.setter();
  }

  else
  {
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v33, v34);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v22 = *(type metadata accessor for LogMessage() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C(v33);
    v25 = *(v2 + OBJC_IVAR____TtC13jetpackassetd11PushManager_localPreferences);
    v26 = OBJC_IVAR____TtC13jetpackassetd11PushManager_subscribedControlChannelIDKey;
    v34 = v6;
    v35 = sub_100040238(&qword_1000A5788, &qword_1000A4EE0, &qword_100083C00);
    v27 = sub_1000061A4(v33);
    (*(v7 + 16))(v27, v3 + v26, v6);
    LocalPreferences.removeValue(forKey:)();
    return sub_100001D4C(v33);
  }
}

uint64_t sub_100024798(uint64_t a1, char a2)
{
  v22 = a1;
  v20 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  v3 = *(v20 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v20);
  v6 = v19 - v5;
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v19[1] = v27;
  sub_100001CC0(&v24, v26);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v9 = *(type metadata accessor for LogMessage() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x8000000100087E40;
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  if (a2)
  {
    v13 = 0;
    v14 = 0;
    v23[1] = 0;
    v23[2] = 0;
    v15 = v22;
  }

  else
  {
    v14 = &type metadata for Double;
    v15 = v22;
    v13 = v22;
  }

  v23[0] = v13;
  v23[3] = v14;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v23, &qword_1000A5630, &unk_100083BF0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(&v24);
  v17 = *(v21 + OBJC_IVAR____TtC13jetpackassetd11PushManager_localPreferences);
  (*(v3 + 16))(v6, v21 + OBJC_IVAR____TtC13jetpackassetd11PushManager_apsLastKnownConnectedKey, v20);
  v24 = v15;
  v25 = a2 & 1;
  type metadata accessor for LocalPreferences();
  return Preferences.subscript.setter();
}

uint64_t sub_100024AB0()
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
  sub_100040154(0, &qword_1000A4F80, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10004019C(&qword_1000A5700, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001D04(&qword_1000A5708, &unk_100085510);
  sub_100040238(&qword_1000A5710, &qword_1000A5708, &unk_100085510);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1000A54F8 = result;
  return result;
}

uint64_t sub_100024D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  v5[44] = swift_getObjectType();

  return _swift_task_switch(sub_100024D9C, 0, 0);
}

uint64_t sub_100024D9C()
{
  v1 = v0[43];
  v0[45] = OBJC_IVAR____TtC13jetpackassetd11PushManager_subscribedControlChannelIDKey;
  PreferenceKey.init(_:)();
  v0[46] = OBJC_IVAR____TtC13jetpackassetd11PushManager_apsLastKnownConnectedKey;
  PreferenceKey.init(_:)();
  v2 = OBJC_IVAR____TtC13jetpackassetd11PushManager_beforeUnlockPushes;
  v0[47] = OBJC_IVAR____TtC13jetpackassetd11PushManager_beforeUnlockPushes;
  sub_100001D04(&qword_1000A5720, &qword_100085530);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = &_swiftEmptyArrayStorage;
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC13jetpackassetd11PushManager_unlockListener;
  v0[48] = OBJC_IVAR____TtC13jetpackassetd11PushManager_unlockListener;
  sub_100001D04(&qword_1000A5728, &qword_100085538);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v1 + v4) = v5;
  v6 = type metadata accessor for AssetSQLiteDatabase();
  v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v8 = swift_task_alloc();
  v0[49] = v8;
  *v8 = v0;
  v8[1] = sub_100024F34;
  v9 = v0[39];

  return BaseObjectGraph.inject<A>(_:)(v0 + 36, v6, v6);
}

uint64_t sub_100024F34()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_100026128;
  }

  else
  {
    v3 = sub_100025048;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100025048()
{
  v1 = v0[43];
  v2 = v0[36];
  v3 = OBJC_IVAR____TtC13jetpackassetd11PushManager_database;
  v0[51] = OBJC_IVAR____TtC13jetpackassetd11PushManager_database;
  *(v1 + v3) = v2;
  v4 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v6 = swift_task_alloc();
  v0[52] = v6;
  *v6 = v0;
  v6[1] = sub_10002511C;
  v7 = v0[39];

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v4, v4);
}

uint64_t sub_10002511C()
{
  v2 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_100026FF4;
  }

  else
  {
    v3 = sub_100025230;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100025230()
{
  sub_10000626C((v0 + 16), *(v0 + 344) + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore);
  v1 = type metadata accessor for JetPackAssetDiskCache();
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 432) = v3;
  *v3 = v0;
  v3[1] = sub_1000252F8;
  v4 = *(v0 + 312);

  return BaseObjectGraph.inject<A>(_:)(v0 + 296, v1, v1);
}

uint64_t sub_1000252F8()
{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_1000262A8;
  }

  else
  {
    v3 = sub_10002540C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002540C()
{
  *(v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_diskCache) = v0[37];
  v1 = sub_100001D04(&qword_1000A4E80, &unk_100083BC0);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[56] = v3;
  *v3 = v0;
  v3[1] = sub_1000254DC;
  v4 = v0[39];

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v1, v1);
}

uint64_t sub_1000254DC()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_100026460;
  }

  else
  {
    v3 = sub_1000255F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000255F0()
{
  sub_10000626C((v0 + 56), *(v0 + 344) + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler);
  v1 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 464) = v3;
  *v3 = v0;
  v3[1] = sub_1000256C4;
  v4 = *(v0 + 312);

  return BaseObjectGraph.inject<A>(_:)(v0 + 96, v1, v1);
}

uint64_t sub_1000256C4()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_10002661C;
  }

  else
  {
    v3 = sub_1000257D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000257D8()
{
  sub_10000626C((v0 + 96), *(v0 + 344) + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger);
  v1 = sub_100001D04(&qword_1000A4E70, &qword_100083C20);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 480) = v3;
  *v3 = v0;
  v3[1] = sub_1000258AC;
  v4 = *(v0 + 312);

  return BaseObjectGraph.inject<A>(_:)(v0 + 136, v1, v1);
}

uint64_t sub_1000258AC()
{
  v2 = *(*v1 + 480);
  v5 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_1000267EC;
  }

  else
  {
    v3 = sub_1000259C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000259C0()
{
  sub_10000626C((v0 + 136), *(v0 + 344) + OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager);
  v1 = sub_100001D04(&unk_1000A5750, &unk_100085550);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 496) = v3;
  *v3 = v0;
  v3[1] = sub_100025A94;
  v4 = *(v0 + 312);

  return BaseObjectGraph.inject<A>(_:)(v0 + 256, v1, v1);
}

uint64_t sub_100025A94()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_1000269D0;
  }

  else
  {
    v3 = sub_100025BA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100025BA8()
{
  *(*(v0 + 344) + OBJC_IVAR____TtC13jetpackassetd11PushManager_killSwitchManager) = *(v0 + 256);
  v1 = sub_100001D04(&qword_1000A4E98, &qword_100083B18);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 512) = v3;
  *v3 = v0;
  v3[1] = sub_100025C78;
  v4 = *(v0 + 312);

  return BaseObjectGraph.inject<A>(_:)(v0 + 176, v1, v1);
}

uint64_t sub_100025C78()
{
  v2 = *(*v1 + 512);
  v5 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_100026BC8;
  }

  else
  {
    v3 = sub_100025D8C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100025D8C()
{
  sub_10000626C((v0 + 176), *(v0 + 344) + OBJC_IVAR____TtC13jetpackassetd11PushManager_beforeFirstUnlockChecker);
  v1 = sub_100001D04(&qword_1000A5760, &qword_100085560);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 528) = v3;
  *v3 = v0;
  v3[1] = sub_100025E60;
  v4 = *(v0 + 312);

  return BaseObjectGraph.inject<A>(_:)(v0 + 216, v1, v1);
}

uint64_t sub_100025E60()
{
  v2 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_100026DD4;
  }

  else
  {
    v3 = sub_100025F74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100025F74()
{
  v1 = *(v0 + 536);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v12 = *(v0 + 344);
  sub_10000626C((v0 + 216), v12 + OBJC_IVAR____TtC13jetpackassetd11PushManager_metricsPipelineManager);
  sub_100001D04(&qword_1000A5768, &qword_100085568);
  *(v0 + 304) = v5;
  v6 = v5;
  *(v12 + OBJC_IVAR____TtC13jetpackassetd11PushManager_connectionWrapper) = SendableWrapper.__allocating_init(_:)();
  *(v12 + OBJC_IVAR____TtC13jetpackassetd11PushManager_localPreferences) = v3;
  sub_1000064B4(v2, v12 + OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider);
  *(v0 + 272) = v12;

  v7 = objc_msgSendSuper2((v0 + 272), "init");
  v8 = *&v7[OBJC_IVAR____TtC13jetpackassetd11PushManager_connectionWrapper];
  *(swift_task_alloc() + 16) = v7;
  v9 = v7;

  SendableWrapper.withValue<A>(_:)();

  sub_100001D4C(v2);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_100026128()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];

  sub_100001D4C(v2);
  v5 = v0[50];
  v7 = v0[47];
  v6 = v0[48];
  v9 = v0[45];
  v8 = v0[46];
  v11 = v0[43];
  v10 = v0[44];
  v12 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v12 - 8) + 8))(&v11[v9], v12);
  v13 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v13 - 8) + 8))(&v11[v8], v13);
  v14 = *&v11[v7];

  v15 = *&v11[v6];

  v16 = *((swift_isaMask & *v11) + 0x30);
  v17 = *((swift_isaMask & *v11) + 0x34);
  swift_deallocPartialClassInstance();
  v18 = v0[1];

  return v18();
}

uint64_t sub_1000262A8()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];

  sub_100001D4C(v2);
  v5 = v0[55];
  v6 = v0[43];
  v7 = *(v6 + v0[51]);

  sub_100001D4C((v6 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v5)
  {
    v8 = *(v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_diskCache);
  }

  v10 = v0[47];
  v9 = v0[48];
  v12 = v0[45];
  v11 = v0[46];
  v14 = v0[43];
  v13 = v0[44];
  v15 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v15 - 8) + 8))(&v14[v12], v15);
  v16 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v16 - 8) + 8))(&v14[v11], v16);
  v17 = *&v14[v10];

  v18 = *&v14[v9];

  v19 = *((swift_isaMask & *v14) + 0x30);
  v20 = *((swift_isaMask & *v14) + 0x34);
  swift_deallocPartialClassInstance();
  v21 = v0[1];

  return v21();
}

uint64_t sub_100026460()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];

  sub_100001D4C(v2);
  v5 = v0[57];
  v6 = v0[55];
  v7 = v0[43];
  v8 = *(v7 + v0[51]);

  sub_100001D4C((v7 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v6)
  {
    v9 = *(v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_diskCache);
  }

  v11 = v0[47];
  v10 = v0[48];
  v13 = v0[45];
  v12 = v0[46];
  v15 = v0[43];
  v14 = v0[44];
  v16 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v16 - 8) + 8))(&v15[v13], v16);
  v17 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v17 - 8) + 8))(&v15[v12], v17);
  v18 = *&v15[v11];

  v19 = *&v15[v10];

  v20 = *((swift_isaMask & *v15) + 0x30);
  v21 = *((swift_isaMask & *v15) + 0x34);
  swift_deallocPartialClassInstance();
  v22 = v0[1];

  return v22();
}

uint64_t sub_10002661C()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];

  sub_100001D4C(v2);
  v5 = v0[59];
  v6 = v0[55];
  v7 = v0[43];
  v8 = *(v7 + v0[51]);

  sub_100001D4C((v7 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v6)
  {
    v9 = *(v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_diskCache);
  }

  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler));
  v11 = v0[47];
  v10 = v0[48];
  v13 = v0[45];
  v12 = v0[46];
  v15 = v0[43];
  v14 = v0[44];
  v16 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v16 - 8) + 8))(&v15[v13], v16);
  v17 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v17 - 8) + 8))(&v15[v12], v17);
  v18 = *&v15[v11];

  v19 = *&v15[v10];

  v20 = *((swift_isaMask & *v15) + 0x30);
  v21 = *((swift_isaMask & *v15) + 0x34);
  swift_deallocPartialClassInstance();
  v22 = v0[1];

  return v22();
}

uint64_t sub_1000267EC()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];

  sub_100001D4C(v2);
  v5 = v0[61];
  v6 = v0[55];
  v7 = v0[43];
  v8 = *(v7 + v0[51]);

  sub_100001D4C((v7 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v6)
  {
    v9 = *(v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_diskCache);
  }

  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger));
  v11 = v0[47];
  v10 = v0[48];
  v13 = v0[45];
  v12 = v0[46];
  v15 = v0[43];
  v14 = v0[44];
  v16 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v16 - 8) + 8))(&v15[v13], v16);
  v17 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v17 - 8) + 8))(&v15[v12], v17);
  v18 = *&v15[v11];

  v19 = *&v15[v10];

  v20 = *((swift_isaMask & *v15) + 0x30);
  v21 = *((swift_isaMask & *v15) + 0x34);
  swift_deallocPartialClassInstance();
  v22 = v0[1];

  return v22();
}

uint64_t sub_1000269D0()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];

  sub_100001D4C(v2);
  v5 = v0[63];
  v6 = v0[55];
  v7 = v0[43];
  v8 = *(v7 + v0[51]);

  sub_100001D4C((v7 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v6)
  {
    v9 = *(v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_diskCache);
  }

  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager));
  v11 = v0[47];
  v10 = v0[48];
  v13 = v0[45];
  v12 = v0[46];
  v15 = v0[43];
  v14 = v0[44];
  v16 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v16 - 8) + 8))(&v15[v13], v16);
  v17 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v17 - 8) + 8))(&v15[v12], v17);
  v18 = *&v15[v11];

  v19 = *&v15[v10];

  v20 = *((swift_isaMask & *v15) + 0x30);
  v21 = *((swift_isaMask & *v15) + 0x34);
  swift_deallocPartialClassInstance();
  v22 = v0[1];

  return v22();
}

uint64_t sub_100026BC8()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];

  sub_100001D4C(v2);
  v5 = v0[65];
  v6 = v0[55];
  v7 = v0[43];
  v8 = *(v7 + v0[51]);

  sub_100001D4C((v7 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v6)
  {
    v9 = *(v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_diskCache);
  }

  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager));
  v10 = *(v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_killSwitchManager);
  swift_unknownObjectRelease();
  v12 = v0[47];
  v11 = v0[48];
  v14 = v0[45];
  v13 = v0[46];
  v16 = v0[43];
  v15 = v0[44];
  v17 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v17 - 8) + 8))(&v16[v14], v17);
  v18 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v18 - 8) + 8))(&v16[v13], v18);
  v19 = *&v16[v12];

  v20 = *&v16[v11];

  v21 = *((swift_isaMask & *v16) + 0x30);
  v22 = *((swift_isaMask & *v16) + 0x34);
  swift_deallocPartialClassInstance();
  v23 = v0[1];

  return v23();
}

uint64_t sub_100026DD4()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];

  sub_100001D4C(v2);
  v5 = v0[67];
  v6 = v0[55];
  v7 = v0[43];
  v8 = *(v7 + v0[51]);

  sub_100001D4C((v7 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore));
  if (!v6)
  {
    v9 = *(v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_diskCache);
  }

  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger));
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager));
  v10 = *(v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_killSwitchManager);
  swift_unknownObjectRelease();
  sub_100001D4C((v0[43] + OBJC_IVAR____TtC13jetpackassetd11PushManager_beforeFirstUnlockChecker));
  v12 = v0[47];
  v11 = v0[48];
  v14 = v0[45];
  v13 = v0[46];
  v16 = v0[43];
  v15 = v0[44];
  v17 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v17 - 8) + 8))(&v16[v14], v17);
  v18 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v18 - 8) + 8))(&v16[v13], v18);
  v19 = *&v16[v12];

  v20 = *&v16[v11];

  v21 = *((swift_isaMask & *v16) + 0x30);
  v22 = *((swift_isaMask & *v16) + 0x34);
  swift_deallocPartialClassInstance();
  v23 = v0[1];

  return v23();
}

uint64_t sub_100026FF4()
{
  v1 = v0[51];
  v2 = v0[42];
  v3 = v0[43];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[39];

  sub_100001D4C(v2);
  v7 = *(v3 + v1);

  v8 = v0[53];
  v10 = v0[47];
  v9 = v0[48];
  v12 = v0[45];
  v11 = v0[46];
  v14 = v0[43];
  v13 = v0[44];
  v15 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
  (*(*(v15 - 8) + 8))(&v14[v12], v15);
  v16 = sub_100001D04(&unk_1000A5620, &qword_100085438);
  (*(*(v16 - 8) + 8))(&v14[v11], v16);
  v17 = *&v14[v10];

  v18 = *&v14[v9];

  v19 = *((swift_isaMask & *v14) + 0x30);
  v20 = *((swift_isaMask & *v14) + 0x34);
  swift_deallocPartialClassInstance();
  v21 = v0[1];

  return v21();
}

uint64_t sub_100027184(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = *a1;
  v9 = objc_allocWithZone(PKPublicChannel);
  v34 = a2;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithChannelID:v10];

  if (v11)
  {
    v12 = qword_1000A4D18;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v15 = qword_1000A6350;
    v14 = xmmword_1000A6358;
    v16 = String._bridgeToObjectiveC()();
    [v8 subscribeToChannel:v13 forTopic:v16];

    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v32, v33);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v17 = *(type metadata accessor for LogMessage() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 0xD00000000000003BLL;
    v20._object = 0x8000000100087F20;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v31 = &type metadata for String;
    v29 = v15;
    v30 = v14;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v29, &qword_1000A5630, &unk_100083BF0);
    v21._countAndFlagsBits = 0x656E6E616863202CLL;
    v21._object = 0xED0000203A44496CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    v31 = &type metadata for String;
    v29 = v34;
    v30 = a3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v29, &qword_1000A5630, &unk_100083BF0);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    return sub_100001D4C(v32);
  }

  else
  {
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v32, v33);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v24 = *(type metadata accessor for LogMessage() - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v27._object = 0x8000000100087EA0;
    v27._countAndFlagsBits = 0xD000000000000033;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    v31 = &type metadata for String;
    v29 = v34;
    v30 = a3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v29, &qword_1000A5630, &unk_100083BF0);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    return sub_100001D4C(v32);
  }
}

uint64_t sub_10002765C(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = *a1;
  v9 = objc_allocWithZone(PKPublicChannel);
  v34 = a2;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithChannelID:v10];

  if (v11)
  {
    v12 = qword_1000A4D18;
    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v15 = qword_1000A6350;
    v14 = xmmword_1000A6358;
    v16 = String._bridgeToObjectiveC()();
    [v8 unsubscribeFromChannel:v13 forTopic:v16];

    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v32, v33);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v17 = *(type metadata accessor for LogMessage() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 0xD00000000000003FLL;
    v20._object = 0x8000000100087EE0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v31 = &type metadata for String;
    v29 = v15;
    v30 = v14;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v29, &qword_1000A5630, &unk_100083BF0);
    v21._countAndFlagsBits = 0x656E6E616863202CLL;
    v21._object = 0xED0000203A44496CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    v31 = &type metadata for String;
    v29 = v34;
    v30 = a3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v29, &qword_1000A5630, &unk_100083BF0);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    return sub_100001D4C(v32);
  }

  else
  {
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v32, v33);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v24 = *(type metadata accessor for LogMessage() - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v27._object = 0x8000000100087EA0;
    v27._countAndFlagsBits = 0xD000000000000033;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    v31 = &type metadata for String;
    v29 = v34;
    v30 = a3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v29, &qword_1000A5630, &unk_100083BF0);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    return sub_100001D4C(v32);
  }
}

uint64_t sub_100027B54()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_100001D04(&qword_1000A5638, &qword_100085440);
  *v4 = v0;
  v4[1] = sub_100027C5C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000014, 0x8000000100087E60, sub_10004036C, v2, v5);
}

uint64_t sub_100027C5C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_100027E80;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100027D78;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100027D78()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0[3] + OBJC_IVAR____TtC13jetpackassetd11PushManager_connectionWrapper);
    v4 = v0[6];
    v5 = (v1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = swift_task_alloc();
      *(v8 + 16) = v7;
      *(v8 + 24) = v6;

      SendableWrapper.withValue<A>(_:)();

      v5 += 2;
      --v2;
    }

    while (v2);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100027E80()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_100027F04()
{
  v1 = v0[21];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[23] = v4;
  v5 = sub_100001D04(&qword_1000A5638, &qword_100085440);
  *v4 = v0;
  v4[1] = sub_10002800C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 20, 0, 0, 0xD000000000000014, 0x8000000100087E60, sub_10004036C, v2, v5);
}

uint64_t sub_10002800C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_1000288CC;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_100028128;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100028128()
{
  v0[25] = v0[20];
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1000281C0;
  v2 = v0[21];

  return sub_100023658();
}

uint64_t sub_1000281C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v6 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;

  return _swift_task_switch(sub_1000282C0, 0, 0);
}

uint64_t sub_1000282C0()
{
  if (qword_1000A4D18 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = *(&xmmword_1000A6358 + 1);
  v3 = qword_1000A6368;
  v4 = v0[27] == *(&xmmword_1000A6358 + 1) && v1 == qword_1000A6368;
  v5 = v4;
  v50 = v5;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v6 = v0[24];
  }

  else
  {
    v16 = v0[24];
    v15 = v0[25];
    v0[12] = v2;
    v0[13] = v3;
    v17 = swift_task_alloc();
    *(v17 + 16) = v0 + 12;
    LOBYTE(v15) = sub_10003DB50(sub_100040370, v17, v15);

    if (v15)
    {
      v18 = *(v0[21] + OBJC_IVAR____TtC13jetpackassetd11PushManager_connectionWrapper);
      v19 = swift_task_alloc();
      *(v19 + 16) = v2;
      *(v19 + 24) = v3;
      SendableWrapper.withValue<A>(_:)();
    }
  }

  v7 = v0[21];
  v8 = *(v7 + OBJC_IVAR____TtC13jetpackassetd11PushManager_localPreferences);
  v9 = OBJC_IVAR____TtC13jetpackassetd11PushManager_subscribedControlChannelIDKey;
  type metadata accessor for LocalPreferences();
  v49 = v9;
  Preferences.subscript.getter();
  v10 = v0[15];
  if (v10)
  {
    v11 = v0[14];
    if (v0[27] == v11 && v10 == v1 || (v12 = v0[28], v13 = v0[14], v14 = v0[15], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
    }

    else
    {
      v47 = v7;
      v20 = v0[25];
      v0[18] = v11;
      v0[19] = v10;
      v21 = swift_task_alloc();
      *(v21 + 16) = v0 + 18;
      LOBYTE(v20) = sub_10003DB50(sub_100040370, v21, v20);

      if (v20)
      {
        v22 = *(v0[21] + OBJC_IVAR____TtC13jetpackassetd11PushManager_connectionWrapper);
        v23 = swift_task_alloc();
        *(v23 + 16) = v11;
        *(v23 + 24) = v10;
        SendableWrapper.withValue<A>(_:)();
      }

      else
      {
      }

      v7 = v47;
    }
  }

  v24 = v0[28];
  v25 = v0[25];
  v0[16] = v0[27];
  v0[17] = v24;
  v26 = swift_task_alloc();
  *(v26 + 16) = v0 + 16;
  v27 = sub_10003DB50(sub_100040370, v26, v25);

  v28 = v0[28];
  if (v27)
  {
    v29 = v0[28];

    v30 = v0[1];

    return v30();
  }

  else
  {
    v48 = v7;
    v32 = v0[27];
    v33 = *(v0[21] + OBJC_IVAR____TtC13jetpackassetd11PushManager_connectionWrapper);
    v34 = swift_task_alloc();
    *(v34 + 16) = v32;
    *(v34 + 24) = v28;
    SendableWrapper.withValue<A>(_:)();

    if (v50 & 1) != 0 || (v35 = v0[27], v36 = v0[28], (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      v37 = v0[28];

      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v38 = v0[6];
      sub_100001CC0(v0 + 2, v0[5]);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v39 = *(type metadata accessor for LogMessage() - 8);
      v40 = *(v39 + 72);
      v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      sub_100001D4C(v0 + 2);
      v42 = sub_100001D04(&qword_1000A4EE0, &qword_100083C00);
      v0[10] = v42;
      v0[11] = sub_100040238(&qword_1000A5788, &qword_1000A4EE0, &qword_100083C00);
      v43 = sub_1000061A4(v0 + 7);
      (*(*(v42 - 8) + 16))(v43, v48 + v49, v42);
      LocalPreferences.removeValue(forKey:)();
      sub_100001D4C(v0 + 7);
    }

    else
    {
      v44 = v0[21];
      sub_1000242E8(v0[27], v1);
    }

    v45 = swift_task_alloc();
    v0[29] = v45;
    *v45 = v0;
    v45[1] = sub_100028930;
    v46 = v0[21];

    return sub_100028A34();
  }
}

uint64_t sub_1000288CC()
{
  v1 = v0[22];

  v2 = v0[1];
  v3 = v0[24];

  return v2();
}

uint64_t sub_100028930()
{
  v1 = *(*v0 + 232);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100028A34()
{
  v1[26] = v0;
  v2 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_100028AD0, 0, 0);
}

uint64_t sub_100028AD0()
{
  v1 = v0[26];
  v2 = swift_task_alloc();
  v0[29] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[30] = v4;
  v5 = sub_100001D04(&qword_1000A5638, &qword_100085440);
  v0[31] = v5;
  *v4 = v0;
  v4[1] = sub_100028BDC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 23, 0, 0, 0xD000000000000014, 0x8000000100087E60, sub_10004036C, v2, v5);
}

uint64_t sub_100028BDC()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_100028F94;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_100028CF8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100028CF8()
{
  v1 = v0[23];
  v0[25] = v1;
  v2 = v0[31];
  sub_100040238(&qword_1000A56C8, &qword_1000A5638, &qword_100085440);
  v3 = BidirectionalCollection<>.joined(separator:)();
  v5 = v4;
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v6 = v0[28];
  TaskLocal.get()();
  v17 = v0[11];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v7 = *(type metadata accessor for LogMessage() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100088950;
  v10._countAndFlagsBits = 0xD000000000000015;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  if (!*(v1 + 16))
  {

    v5 = 0xE600000000000000;
    v3 = 0x29656E6F6E28;
  }

  v11 = v0[28];
  v0[19] = &type metadata for String;
  v0[16] = v3;
  v0[17] = v5;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 16), &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 7);
  v14 = v0[27];
  v13 = v0[28];

  v15 = v0[1];

  return v15(v1);
}

uint64_t sub_100028F94()
{
  v1 = v0[29];

  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v2 = v0[32];
  v3 = v0[27];
  TaskLocal.get()();
  v4 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100088920;
  v8._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = v0[20];
  v10 = v0[21];
  v0[15] = v10;
  v11 = sub_1000061A4(v0 + 12);
  (*(*(v10 - 8) + 16))(v11, v9, v10);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 12), &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 2);

  v14 = v0[27];
  v13 = v0[28];

  v15 = v0[1];

  return v15(&_swiftEmptyArrayStorage);
}

uint64_t sub_1000291FC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_100029220, 0, 0);
}

uint64_t sub_100029220()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_100001D04(&qword_1000A5638, &qword_100085440);
  *v4 = v0;
  v4[1] = sub_100029328;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 4, 0, 0, 0xD000000000000014, 0x8000000100087E60, sub_10004036C, v2, v5);
}

uint64_t sub_100029328()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_100029568;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_100029444;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100029444()
{
  v0[2] = v0[5];
  v1 = v0[10];
  v2 = v0[4];
  v0[3] = v0[6];
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 2;
  v4 = sub_10003DB50(sub_100040370, v3, v2);

  if ((v4 & 1) == 0)
  {
    v5 = v0[6];
    v6 = v0[5];
    v7 = *(v0[7] + OBJC_IVAR____TtC13jetpackassetd11PushManager_connectionWrapper);
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
    SendableWrapper.withValue<A>(_:)();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100029568()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1000295CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_100029660;

  return sub_100023658();
}

uint64_t sub_100029660(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v6 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return _swift_task_switch(sub_100029760, 0, 0);
}

uint64_t sub_100029760()
{
  if (v0[6] == v0[2] && v0[7] == v0[3])
  {
    v8 = v0[7];
  }

  else
  {
    v2 = v0[7];
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      v4 = v0[3];
      v5 = v0[2];
      v6 = (v0[4] + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore);
      v7 = v6[4];
      sub_100001CC0(v6, v6[3]);
      v11 = *(dispatch thunk of AssetPushSubscriptionStore.find(channelID:)() + 16);

      if (!v11)
      {
        v12 = v0[3];
        v13 = v0[2];
        v14 = *(v0[4] + OBJC_IVAR____TtC13jetpackassetd11PushManager_connectionWrapper);
        v15 = swift_task_alloc();
        *(v15 + 16) = v13;
        *(v15 + 24) = v12;
        SendableWrapper.withValue<A>(_:)();
      }
    }
  }

  v9 = v0[1];

  return v9();
}

void sub_1000298BC(void **a1, uint64_t a2)
{
  v4 = sub_100001D04(&qword_1000A5640, &qword_100085448);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *a1;
  if (qword_1000A4D18 != -1)
  {
    swift_once();
  }

  v10 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(v8, a2, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_100038764;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029CC0;
  aBlock[3] = &unk_10009F2D0;
  v13 = _Block_copy(aBlock);

  [v9 getRegisteredChannelsForTopic:v10 withCompletion:v13];
  _Block_release(v13);
}

char *sub_100029ACC(unint64_t a1, unint64_t *a2, void **a3)
{
  if (a2)
  {
    v21 = a2;
    swift_errorRetain();
    sub_100001D04(&qword_1000A5640, &qword_100085448);
    return CheckedContinuation.resume(throwing:)();
  }

  else if (a1)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v8 = &_swiftEmptyArrayStorage;
      if (!i)
      {
LABEL_18:
        v21 = v8;
        goto LABEL_20;
      }

      v19 = a3;
      v20 = v6;
      v21 = &_swiftEmptyArrayStorage;
      a3 = &v21;
      result = sub_10003DBFC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v9 = 0;
      v8 = v21;
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v20 + 16))
          {
            goto LABEL_22;
          }

          v11 = *(a1 + 8 * v9 + 32);
        }

        a3 = v11;
        v6 = i;
        result = [v11 channelID];
        if (!result)
        {
          goto LABEL_25;
        }

        v12 = result;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v21 = v8;
        v17 = v8[2];
        v16 = v8[3];
        if (v17 >= v16 >> 1)
        {
          a3 = &v21;
          sub_10003DBFC((v16 > 1), v17 + 1, 1);
          v8 = v21;
        }

        v8[2] = v17 + 1;
        v18 = &v8[2 * v17];
        v18[4] = v13;
        v18[5] = v15;
        ++v9;
        i = v6;
        if (v10 == v6)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    v21 = &_swiftEmptyArrayStorage;
LABEL_20:
    sub_100001D04(&qword_1000A5640, &qword_100085448);
    return CheckedContinuation.resume(returning:)();
  }

  return result;
}

uint64_t sub_100029CC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100040154(0, &qword_1000A5648, PKPublicChannel_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_100029D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = type metadata accessor for OSSignpostID();
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_100029E38, 0, 0);
}

uint64_t sub_100029E38()
{
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v1 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 2);
  if (qword_1000A4D68 != -1)
  {
    swift_once();
  }

  v5 = v0[16];
  v6 = type metadata accessor for OSSignposter();
  sub_100018718(v6, qword_1000A54E0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v7 = OSSignposter.logHandle.getter();
  v8 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v9 = v0[16];
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, v11, "didRetrieveAsset", "", v10, 2u);
  }

  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];

  (*(v15 + 16))(v12, v13, v14);
  v16 = type metadata accessor for OSSignpostIntervalState();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[17] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v15 + 8))(v13, v14);
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_10002A148;
  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[9];
  v23 = v0[10];
  v25 = v0[7];
  v24 = v0[8];

  return sub_10002A394(v25, v24, v22, v23, v20);
}

uint64_t sub_10002A148()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_10002A2F8;
  }

  else
  {
    v3 = sub_10002A25C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002A25C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_10003E998("didRetrieveAsset", 16, 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002A2F8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_10003E998("didRetrieveAsset", 16, 2);

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_10002A394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[75] = v5;
  v6[74] = a5;
  v6[73] = a4;
  v6[72] = a3;
  v6[71] = a2;
  v6[70] = a1;
  v7 = *(*(sub_100001D04(&qword_1000A5770, &unk_100083BB0) - 8) + 64) + 15;
  v6[76] = swift_task_alloc();
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();
  v8 = type metadata accessor for AssetPushSubscriptionRecord();
  v6[79] = v8;
  v9 = *(v8 - 8);
  v6[80] = v9;
  v10 = *(v9 + 64) + 15;
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  v11 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v6[83] = swift_task_alloc();

  return _swift_task_switch(sub_10002A4F0, 0, 0);
}

uint64_t sub_10002A4F0()
{
  v1 = *(v0 + 560);
  v63 = URLJetPackAssetRequest.usageIDOrDefault.getter();
  *(v0 + 672) = v63;
  v61 = v2;
  *(v0 + 680) = v2;
  v3 = URLJetPackAssetRequest._cacheKey.getter();
  v5 = v4;
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 664);
  v60 = *(v0 + 656);
  v62 = *(v0 + 600);
  v65 = *(v0 + 592);
  v7 = *(v0 + 584);
  v58 = *(v0 + 576);
  v64 = *(v0 + 568);
  *(v0 + 688) = qword_1000A63A0;
  TaskLocal.get()();
  v59 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 696) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v8 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 704) = *(v8 + 72);
  *(v0 + 816) = *(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD00000000000002ELL;
  v9._object = 0x8000000100088AB0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  *(v0 + 320) = &type metadata for String;
  *(v0 + 296) = v3;
  *(v0 + 304) = v5;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 296, &qword_1000A5630, &unk_100083BF0);
  v10._countAndFlagsBits = 0x656E6E616863202CLL;
  v10._object = 0xED0000203A44496CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  *(v0 + 352) = &type metadata for String;
  *(v0 + 328) = v7;
  *(v0 + 336) = v65;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 328, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0x656C646E7562202CLL;
  v11._object = 0xEC000000203A4449;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 384) = &type metadata for String;
  *(v0 + 360) = v64;
  *(v0 + 368) = v58;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 360, &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0x496567617375202CLL;
  v12._object = 0xEB00000000203A44;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v0 + 416) = &type metadata for String;
  *(v0 + 392) = v63;
  *(v0 + 400) = v61;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 392, &qword_1000A5630, &unk_100083BF0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));

  AssetPushSubscriptionRecord.init(assetURLString:channelID:bundleID:usageID:)();
  v14 = OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore;
  *(v0 + 712) = OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore;
  v15 = *(v62 + v14 + 32);
  sub_100001CC0((v62 + v14), *(v62 + v14 + 24));
  if (dispatch thunk of AssetPushSubscriptionStore.has(matching:)())
  {
    v16 = *(v0 + 600);
    v17 = swift_task_alloc();
    *(v0 + 720) = v17;
    *(v17 + 16) = v16;
    v18 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v19 = swift_task_alloc();
    *(v0 + 728) = v19;
    v20 = sub_100001D04(&qword_1000A5638, &qword_100085440);
    *v19 = v0;
    v19[1] = sub_10002AF20;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 552, 0, 0, 0xD000000000000014, 0x8000000100087E60, sub_10004036C, v17, v20);
  }

  TaskLocal.get()();
  v21 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 56));
  v22 = *(v0 + 680);
  v23 = *(v0 + 672);
  v24 = *(v0 + 624);
  v25 = *(v0 + 576);
  v26 = *(v0 + 568);
  v27 = (*(v0 + 600) + *(v0 + 712));
  v28 = v27[4];
  sub_100001CC0(v27, v27[3]);
  dispatch thunk of AssetPushSubscriptionStore.find(bundleID:usageID:)();
  v29 = *(v0 + 680);
  v30 = *(v0 + 640);
  v31 = *(v0 + 632);
  v32 = *(v0 + 624);
  v33 = *(v0 + 616);

  sub_100002758(v32, v33, &qword_1000A5770, &unk_100083BB0);
  v34 = *(v30 + 48);
  if (v34(v33, 1, v31) == 1)
  {
    v35 = *(v0 + 616);
LABEL_12:
    sub_10000DCA0(v35, &qword_1000A5770, &unk_100083BB0);
    goto LABEL_13;
  }

  v36 = *(v0 + 640);
  v37 = *(v0 + 632);
  v38 = *(v0 + 616);
  v39 = AssetPushSubscriptionRecord.channelID.getter();
  v41 = v40;
  *(v0 + 744) = v40;
  v42 = *(v36 + 8);
  *(v0 + 752) = v42;
  *(v0 + 760) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v38, v37);
  if (!v41)
  {
LABEL_13:
    v46 = swift_task_alloc();
    *(v0 + 784) = v46;
    *v46 = v0;
    v46[1] = sub_10002BA08;
    v47 = *(v0 + 600);
    v48 = *(v0 + 592);
    v49 = *(v0 + 584);

    return sub_1000291FC(v49, v48);
  }

  v43 = *(v0 + 632);
  v44 = *(v0 + 608);
  sub_100002758(*(v0 + 624), v44, &qword_1000A5770, &unk_100083BB0);
  if (v34(v44, 1, v43) == 1)
  {
    v45 = *(v0 + 608);

    v35 = v45;
    goto LABEL_12;
  }

  v50 = *(v0 + 632);
  v51 = *(v0 + 608);
  v52 = AssetPushSubscriptionRecord.id.getter();
  v42(v51, v50);
  if (v52 & 0x100000000) != 0 || (v53 = (*(v0 + 600) + *(v0 + 712)), v54 = v53[4], sub_100001CC0(v53, v53[3]), dispatch thunk of AssetPushSubscriptionStore.delete(id:)(), v39 == *(v0 + 584)) && v41 == *(v0 + 592) || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    goto LABEL_13;
  }

  v55 = swift_task_alloc();
  *(v0 + 768) = v55;
  *v55 = v0;
  v55[1] = sub_10002B880;
  v56 = *(v0 + 600);

  return sub_1000295CC(v39, v41);
}

uint64_t sub_10002AF20()
{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v4 = *v1;
  v2[92] = v0;

  v5 = v2[90];
  if (v0)
  {
    v6 = v2[85];

    v7 = sub_10002B7B4;
  }

  else
  {

    v7 = sub_10002B068;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10002B068()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 592);
  v3 = *(v0 + 552);
  *(v0 + 528) = *(v0 + 584);
  *(v0 + 536) = v2;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 528;
  v5 = sub_10003DB50(sub_100040370, v4, v3);

  v6 = *(v0 + 816);
  v7 = *(v0 + 704);
  v8 = *(v0 + 696);
  v9 = *(v0 + 688);
  if (v5)
  {
    v10 = *(v0 + 680);
    v65 = *(v0 + 656);
    v11 = *(v0 + 640);
    v12 = *(v0 + 632);

    TaskLocal.get()();
    v13 = *(v0 + 288);
    sub_100001CC0((v0 + 256), *(v0 + 280));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    (*(v11 + 8))(v65, v12);
    sub_100001D4C((v0 + 256));
    v14 = *(v0 + 664);
    v15 = *(v0 + 656);
    v16 = *(v0 + 648);
    v17 = *(v0 + 624);
    v18 = *(v0 + 616);
    v19 = *(v0 + 608);

    v20 = *(v0 + 8);
LABEL_5:

    return v20();
  }

  TaskLocal.get()();
  v21 = *(v0 + 248);
  sub_100001CC0((v0 + 216), *(v0 + 240));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.warning(_:)();

  sub_100001D4C((v0 + 216));
  v22 = *(v0 + 680);
  v23 = *(v0 + 672);
  v24 = *(v0 + 624);
  v25 = *(v0 + 576);
  v26 = *(v0 + 568);
  v27 = (*(v0 + 600) + *(v0 + 712));
  v28 = v27[4];
  sub_100001CC0(v27, v27[3]);
  dispatch thunk of AssetPushSubscriptionStore.find(bundleID:usageID:)();
  v29 = *(v0 + 680);
  if (v1)
  {
    (*(*(v0 + 640) + 8))(*(v0 + 656), *(v0 + 632));

    v30 = *(v0 + 664);
    v31 = *(v0 + 656);
    v32 = *(v0 + 648);
    v33 = *(v0 + 624);
    v34 = *(v0 + 616);
    v35 = *(v0 + 608);

    v20 = *(v0 + 8);
    goto LABEL_5;
  }

  v37 = *(v0 + 640);
  v38 = *(v0 + 632);
  v39 = *(v0 + 624);
  v40 = *(v0 + 616);
  v41 = *(v0 + 680);

  sub_100002758(v39, v40, &qword_1000A5770, &unk_100083BB0);
  v42 = *(v37 + 48);
  if (v42(v40, 1, v38) == 1)
  {
    v43 = *(v0 + 616);
LABEL_13:
    sub_10000DCA0(v43, &qword_1000A5770, &unk_100083BB0);
    goto LABEL_14;
  }

  v44 = *(v0 + 640);
  v45 = *(v0 + 632);
  v46 = *(v0 + 616);
  v47 = AssetPushSubscriptionRecord.channelID.getter();
  v49 = v48;
  *(v0 + 744) = v48;
  v50 = *(v44 + 8);
  *(v0 + 752) = v50;
  *(v0 + 760) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v50(v46, v45);
  if (!v49)
  {
LABEL_14:
    v54 = swift_task_alloc();
    *(v0 + 784) = v54;
    *v54 = v0;
    v54[1] = sub_10002BA08;
    v55 = *(v0 + 600);
    v56 = *(v0 + 592);
    v57 = *(v0 + 584);

    return sub_1000291FC(v57, v56);
  }

  v51 = *(v0 + 632);
  v52 = *(v0 + 608);
  sub_100002758(*(v0 + 624), v52, &qword_1000A5770, &unk_100083BB0);
  if (v42(v52, 1, v51) == 1)
  {
    v53 = *(v0 + 608);

    v43 = v53;
    goto LABEL_13;
  }

  v58 = *(v0 + 632);
  v59 = *(v0 + 608);
  v60 = AssetPushSubscriptionRecord.id.getter();
  v50(v59, v58);
  if (v60 & 0x100000000) != 0 || (v61 = (*(v0 + 600) + *(v0 + 712)), v62 = v61[4], sub_100001CC0(v61, v61[3]), dispatch thunk of AssetPushSubscriptionStore.delete(id:)(), v47 == *(v0 + 584)) && v49 == *(v0 + 592) || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {

    goto LABEL_14;
  }

  v63 = swift_task_alloc();
  *(v0 + 768) = v63;
  *v63 = v0;
  v63[1] = sub_10002B880;
  v64 = *(v0 + 600);

  return sub_1000295CC(v47, v49);
}

uint64_t sub_10002B7B4()
{
  (*(v0[80] + 8))(v0[82], v0[79]);
  v1 = v0[92];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[76];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002B880()
{
  v2 = *(*v1 + 768);
  v3 = *v1;
  v3[97] = v0;

  if (v0)
  {
    v4 = v3[93];

    return _swift_task_switch(sub_10002C060, 0, 0);
  }

  else
  {
    v5 = v3[93];

    v6 = swift_task_alloc();
    v3[98] = v6;
    *v6 = v3;
    v6[1] = sub_10002BA08;
    v7 = v3[75];
    v8 = v3[74];
    v9 = v3[73];

    return sub_1000291FC(v9, v8);
  }
}

uint64_t sub_10002BA08()
{
  v2 = *(*v1 + 784);
  v3 = *v1;
  v3[99] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002C144, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[100] = v4;
    *v4 = v3;
    v4[1] = sub_10002BB74;
    v5 = v3[75];

    return sub_100028A34();
  }
}

uint64_t sub_10002BB74(uint64_t a1)
{
  v2 = *(*v1 + 800);
  v4 = *v1;
  *(*v1 + 808) = a1;

  return _swift_task_switch(sub_10002BC74, 0, 0);
}

uint64_t sub_10002BC74()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 792);
  v3 = *(v0 + 592);
  *(v0 + 512) = *(v0 + 584);
  *(v0 + 520) = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 512;
  v5 = sub_10003DB50(sub_10004021C, v4, v1);
  v45 = v2;

  if ((v5 & 1) == 0)
  {
    v6 = *(v0 + 816);
    v7 = *(v0 + 704);
    v8 = *(v0 + 696);
    v9 = *(v0 + 688);
    v10 = *(v0 + 664);
    v11 = *(v0 + 592);
    v12 = *(v0 + 584);
    TaskLocal.get()();
    v43 = *(v0 + 128);
    sub_100001CC0((v0 + 96), *(v0 + 120));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._countAndFlagsBits = 0xD00000000000002ELL;
    v13._object = 0x8000000100088B10;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    *(v0 + 448) = &type metadata for String;
    *(v0 + 424) = v12;
    *(v0 + 432) = v11;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 424, &qword_1000A5630, &unk_100083BF0);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 96));
  }

  v15 = *(v0 + 816);
  v16 = *(v0 + 704);
  v17 = *(v0 + 696);
  v18 = *(v0 + 688);
  v44 = *(v0 + 656);
  v19 = *(v0 + 648);
  v20 = (*(v0 + 600) + *(v0 + 712));
  TaskLocal.get()();
  v21 = *(v0 + 168);
  sub_100001CC0((v0 + 136), *(v0 + 160));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 136));
  v22 = v20[4];
  sub_100001CC0(v20, v20[3]);
  dispatch thunk of AssetPushSubscriptionStore.create(record:)();
  v23 = *(v0 + 656);
  if (v45)
  {
    v24 = *(v0 + 640);
    v25 = *(v0 + 632);
    sub_10000DCA0(*(v0 + 624), &qword_1000A5770, &unk_100083BB0);
    (*(v24 + 8))(v23, v25);
    v26 = *(v0 + 664);
    v27 = *(v0 + 656);
    v28 = *(v0 + 648);
    v29 = *(v0 + 624);
    v30 = *(v0 + 616);
    v31 = *(v0 + 608);
  }

  else
  {
    v33 = *(v0 + 632);
    v34 = *(v0 + 624);
    v35 = *(*(v0 + 640) + 8);
    v35(*(v0 + 648), v33);
    sub_10000DCA0(v34, &qword_1000A5770, &unk_100083BB0);
    v35(v23, v33);
    v36 = *(v0 + 664);
    v37 = *(v0 + 656);
    v38 = *(v0 + 648);
    v39 = *(v0 + 624);
    v40 = *(v0 + 616);
    v41 = *(v0 + 608);
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_10002C060()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[82];
  v4 = v0[79];
  sub_10000DCA0(v0[78], &qword_1000A5770, &unk_100083BB0);
  v2(v3, v4);
  v5 = v0[97];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[78];
  v10 = v0[77];
  v11 = v0[76];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002C144()
{
  v1 = v0[82];
  v2 = v0[80];
  v3 = v0[79];
  sub_10000DCA0(v0[78], &qword_1000A5770, &unk_100083BB0);
  (*(v2 + 8))(v1, v3);
  v4 = v0[99];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[78];
  v9 = v0[77];
  v10 = v0[76];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002C230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v7 = type metadata accessor for AssetPushSubscriptionRecord();
  v5[32] = v7;
  v8 = *(v7 - 8);
  v5[33] = v8;
  v9 = *(v8 + 64) + 15;
  v5[34] = swift_task_alloc();
  v10 = *(*(sub_100001D04(&qword_1000A5770, &unk_100083BB0) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v11 = type metadata accessor for OSSignpostID();
  v5[37] = v11;
  v12 = *(v11 - 8);
  v5[38] = v12;
  v13 = *(v12 + 64) + 15;
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();

  return _swift_task_switch(sub_10002C3D0, 0, 0);
}

uint64_t sub_10002C3D0()
{
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  *(v0 + 328) = qword_1000A63A0;
  TaskLocal.get()();
  v1 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 336) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v2 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 344) = *(v2 + 72);
  *(v0 + 400) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  if (qword_1000A4D68 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 320);
  v4 = type metadata accessor for OSSignposter();
  sub_100018718(v4, qword_1000A54E0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = *(v0 + 320);
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v9, "cachedAssetWasUsed", "", v8, 2u);
  }

  v10 = *(v0 + 312);
  v11 = *(v0 + 320);
  v12 = *(v0 + 296);
  v13 = *(v0 + 304);

  (*(v13 + 16))(v10, v11, v12);
  v14 = type metadata accessor for OSSignpostIntervalState();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 352) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v13 + 8))(v11, v12);
  v17 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v18 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v19 = swift_task_alloc();
  *(v0 + 360) = v19;
  *v19 = v0;
  v19[1] = sub_10002C714;
  v20 = *(v0 + 232);

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v17, v17);
}

uint64_t sub_10002C714()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_10002D064;
  }

  else
  {
    v3 = sub_10002C828;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002C828()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 288);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  URLJetPackAssetRequest.usageIDOrDefault.getter();
  dispatch thunk of AssetPushSubscriptionStore.find(bundleID:usageID:)();
  if (!v1)
  {
    v7 = *(v0 + 280);
    v8 = *(v0 + 288);
    v9 = *(v0 + 256);
    v10 = *(v0 + 264);

    sub_100002758(v8, v7, &qword_1000A5770, &unk_100083BB0);
    v11 = (*(v10 + 48))(v7, 1, v9);
    v12 = *(v0 + 280);
    if (v11 == 1)
    {
      sub_10000DCA0(*(v0 + 280), &qword_1000A5770, &unk_100083BB0);
      goto LABEL_11;
    }

    v13 = *(v0 + 208);
    (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 280), *(v0 + 256));
    v14 = AssetPushSubscriptionRecord.assetURLString.getter();
    v16 = v15;
    v17 = URLJetPackAssetRequest._cacheKey.getter();
    if (v16)
    {
      v20 = *(v0 + 264);
      v19 = *(v0 + 272);
      v21 = *(v0 + 256);
      if (v14 == v17 && v16 == v18)
      {

        (*(v20 + 8))(v19, v21);
LABEL_10:
        sub_10000DCA0(*(v0 + 288), &qword_1000A5770, &unk_100083BB0);
LABEL_24:
        sub_100001D4C((v0 + 56));
        v57 = *(v0 + 352);
        v59 = *(v0 + 312);
        v58 = *(v0 + 320);
        v61 = *(v0 + 280);
        v60 = *(v0 + 288);
        v62 = *(v0 + 272);
        v63 = *(v0 + 248);
        sub_10003E998("cachedAssetWasUsed", 18, 2);

        v32 = *(v0 + 8);
        goto LABEL_13;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v20 + 8))(v19, v21);
      if (v22)
      {
        goto LABEL_10;
      }
    }

    else
    {
      (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    }

LABEL_11:
    v23 = *(v0 + 208);
    v24 = *(v0 + 88);
    sub_100001CC0((v0 + 56), *(v0 + 80));
    URLJetPackAssetRequest._cacheKey.getter();
    v34 = dispatch thunk of AssetPushSubscriptionStore.channels(for:)();

    v35 = v34[2];
    if (v35)
    {
      v36 = *(v0 + 400);
      v37 = *(v0 + 336);
      v38 = *(v0 + 344);
      v39 = *(v0 + 328);
      TaskLocal.get()();
      v40 = *(v0 + 128);
      sub_100001CC0((v0 + 96), *(v0 + 120));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      result = sub_100001D4C((v0 + 96));
      if (v35 != 1)
      {
        v41 = *(v0 + 400);
        v42 = *(v0 + 336);
        v43 = *(v0 + 344);
        v44 = *(v0 + 248);
        v45 = *(v0 + 208);
        static OSLogger.jetPackAssets.getter();
        v64 = *(v0 + 168);
        sub_100001CC0((v0 + 136), *(v0 + 160));
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v46._object = 0x8000000100088A60;
        v46._countAndFlagsBits = 0xD000000000000040;
        LogMessage.StringInterpolation.appendLiteral(_:)(v46);
        v47 = URLJetPackAssetRequest._cacheKey.getter();
        *(v0 + 200) = &type metadata for String;
        *(v0 + 176) = v47;
        *(v0 + 184) = v48;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 176, &qword_1000A5630, &unk_100083BF0);
        v49._countAndFlagsBits = 46;
        v49._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v49);
        LogMessage.init(stringInterpolation:)();
        Logger.warning(_:)();

        result = sub_100001D4C((v0 + 136));
      }

      if (v34[2])
      {
        v51 = v34[4];
        v50 = v34[5];
        *(v0 + 376) = v50;

        v52 = swift_task_alloc();
        *(v0 + 384) = v52;
        *v52 = v0;
        v52[1] = sub_10002CE38;
        v53 = *(v0 + 240);
        v54 = *(v0 + 216);
        v55 = *(v0 + 224);
        v56 = *(v0 + 208);

        return sub_10002A394(v56, v54, v55, v51, v50);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    sub_10000DCA0(*(v0 + 288), &qword_1000A5770, &unk_100083BB0);

    goto LABEL_24;
  }

  sub_100001D4C((v0 + 56));
  v25 = *(v0 + 352);
  v27 = *(v0 + 312);
  v26 = *(v0 + 320);
  v29 = *(v0 + 280);
  v28 = *(v0 + 288);
  v30 = *(v0 + 272);
  v31 = *(v0 + 248);
  sub_10003E998("cachedAssetWasUsed", 18, 2);

  v32 = *(v0 + 8);
LABEL_13:

  return v32();
}

uint64_t sub_10002CE38()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 376);

  if (v0)
  {
    v6 = sub_10002D13C;
  }

  else
  {
    v6 = sub_10002CF6C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10002CF6C()
{
  sub_10000DCA0(v0[36], &qword_1000A5770, &unk_100083BB0);
  sub_100001D4C(v0 + 7);
  v1 = v0[44];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];
  v7 = v0[31];
  sub_10003E998("cachedAssetWasUsed", 18, 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002D064()
{
  v1 = v0[46];
  v2 = v0[44];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[34];
  v8 = v0[31];
  sub_10003E998("cachedAssetWasUsed", 18, 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10002D13C()
{
  sub_10000DCA0(v0[36], &qword_1000A5770, &unk_100083BB0);
  sub_100001D4C(v0 + 7);
  v1 = v0[49];
  v2 = v0[44];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[34];
  v8 = v0[31];
  sub_10003E998("cachedAssetWasUsed", 18, 2);

  v9 = v0[1];

  return v9();
}

id sub_10002D234(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*a1 isConnected];
  if (result)
  {
    v10 = *(a2 + OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider + 32);
    sub_100001CC0((a2 + OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider), *(a2 + OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider + 24));
    dispatch thunk of DateProvider.now.getter();
    Date.timeIntervalSince1970.getter();
    v12 = v11;
    (*(v5 + 8))(v8, v4);
    return sub_100024798(v12, 0);
  }

  return result;
}

uint64_t sub_10002D4E8(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for PushMessage(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003F860(a2, v8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_10001EAAC(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_10001EAAC(v10 > 1, v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  result = sub_10003F7E0(v8, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11);
  *a1 = v9;
  return result;
}

void sub_10002D634()
{
  v1 = *&v0[OBJC_IVAR____TtC13jetpackassetd11PushManager_unlockListener];
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  if (!v2)
  {
    if (qword_1000A4D70 != -1)
    {
      swift_once();
    }

    v3 = qword_1000A54F8;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    type metadata accessor for NotificationsListener();
    swift_allocObject();
    v5 = v3;
    v6 = v0;
    sub_1000693D4(&off_10009E2A0, v5, sub_10003FFEC, v4);
    os_unfair_lock_lock((v1 + 24));
    sub_100040010((v1 + 16));
    os_unfair_lock_unlock((v1 + 24));
  }
}

uint64_t sub_10002D780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_10002D814;

  return sub_100023658();
}

uint64_t sub_10002D814(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *v2;
  v5[5] = a2;

  v8 = swift_task_alloc();
  v5[6] = v8;
  *v8 = v7;
  v8[1] = sub_10002D988;
  v9 = v5[2];
  v10 = v5[3];

  return sub_10002DA98(v10, a1, a2);
}

uint64_t sub_10002D988()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10002DA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_10002DABC, 0, 0);
}

uint64_t sub_10002DABC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = (v3 + *(type metadata accessor for PushMessage(0) + 24));
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v2 || v6 != v1)
  {
    v8 = *v4;
    v9 = v4[1];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (qword_1000A4D18 != -1)
      {
        swift_once();
      }

      v10 = v5 == *(&xmmword_1000A6358 + 1) && v6 == qword_1000A6368;
      if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v11 = *(v0[7] + OBJC_IVAR____TtC13jetpackassetd11PushManager_localPreferences);
        type metadata accessor for LocalPreferences();
        Preferences.subscript.getter();
        v12 = v0[3];
        if (!v12)
        {
LABEL_19:
          v16 = swift_task_alloc();
          v0[9] = v16;
          *v16 = v0;
          v16[1] = sub_10002DDF4;
          v17 = v0[7];
          v18 = v0[4];

          return sub_10002FC40(v18);
        }

        if (v5 == v0[2] && v12 == v6)
        {
          v20 = v0[3];
        }

        else
        {
          v14 = v0[3];
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v15 & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }
    }
  }

  v21 = swift_task_alloc();
  v0[8] = v21;
  *v21 = v0;
  v21[1] = sub_10002DD00;
  v22 = v0[7];
  v23 = v0[4];

  return sub_10002EDA4(v23);
}

uint64_t sub_10002DD00()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002DDF4()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002DF60()
{
  v1 = v0;
  v2 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26[-1] - v4;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  if (MKBDeviceUnlockedSinceBoot() < 1)
  {
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v27, v28);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v22 = *(type metadata accessor for LogMessage() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    return sub_100001D4C(v27);
  }

  else
  {
    v8 = *&v0[OBJC_IVAR____TtC13jetpackassetd11PushManager_beforeUnlockPushes];
    os_unfair_lock_lock((v8 + 24));
    v9 = *(v8 + 16);
    *(v8 + 16) = &_swiftEmptyArrayStorage;
    os_unfair_lock_unlock((v8 + 24));
    v10 = *&v1[OBJC_IVAR____TtC13jetpackassetd11PushManager_unlockListener];
    os_unfair_lock_lock((v10 + 24));
    v11 = *(v10 + 16);

    *(v10 + 16) = 0;
    os_unfair_lock_unlock((v10 + 24));
    if (*(v9 + 16))
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100001CC0(v27, v28);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v12 = *(type metadata accessor for LogMessage() - 8);
      v13 = *(v12 + 72);
      v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v15._countAndFlagsBits = 0x676E696C646E6148;
      v15._object = 0xE900000000000020;
      LogMessage.StringInterpolation.appendLiteral(_:)(v15);
      v16 = *(v9 + 16);
      v26[3] = &type metadata for Int;
      v26[0] = v16;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v26, &qword_1000A5630, &unk_100083BF0);
      v17._object = 0x80000001000888B0;
      v17._countAndFlagsBits = 0xD00000000000002ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v17);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C(v27);
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v1;
      v19[5] = v9;
      v20 = v1;
      sub_100023290(0, 0, v5, &unk_100085508, v19);
    }

    else
    {
    }
  }
}

uint64_t sub_10002E420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for PushMessage(0);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[9] = v9;
  *v9 = v5;
  v9[1] = sub_10002E510;

  return sub_100023658();
}

uint64_t sub_10002E510(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v6 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return _swift_task_switch(sub_10002E610, 0, 0);
}

uint64_t sub_10002E610()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  *(v0 + 96) = v2;
  if (v2)
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = OBJC_IVAR____TtC13jetpackassetd11PushManager_subscribedControlChannelIDKey;
    *(v0 + 104) = OBJC_IVAR____TtC13jetpackassetd11PushManager_localPreferences;
    *(v0 + 112) = v5;
    v6 = *(v3 + 80);
    *(v0 + 152) = v6;
    *(v0 + 120) = *(v3 + 72);
    *(v0 + 128) = 0;
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v9 = *(v0 + 64);
    sub_10003F860(v1 + ((v6 + 32) & ~v6), v9);
    v10 = (v9 + *(v4 + 24));
    v11 = *v10;
    v12 = v10[1];
    if (*v10 == v8 && v12 == v7)
    {
      goto LABEL_22;
    }

    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    v16 = *v10;
    v17 = v10[1];
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_22;
    }

    if (qword_1000A4D18 != -1)
    {
      swift_once();
    }

    v18 = v11 == *(&xmmword_1000A6358 + 1) && v12 == qword_1000A6368;
    if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_22;
    }

    v19 = *(v0 + 112);
    v20 = *(*(v0 + 32) + *(v0 + 104));
    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    v21 = *(v0 + 24);
    if (v21)
    {
      if (v11 == *(v0 + 16) && v21 == v12)
      {
        v22 = *(v0 + 24);

LABEL_22:
        v29 = swift_task_alloc();
        *(v0 + 136) = v29;
        *v29 = v0;
        v29[1] = sub_10002E8DC;
        v30 = *(v0 + 64);
        v31 = *(v0 + 32);

        return sub_10002EDA4(v30);
      }

      v27 = *(v0 + 24);
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_22;
      }
    }

    v32 = swift_task_alloc();
    *(v0 + 144) = v32;
    *v32 = v0;
    v32[1] = sub_10002ECA8;
    v33 = *(v0 + 64);
    v34 = *(v0 + 32);

    return sub_10002FC40(v33);
  }

  else
  {
    v23 = *(v0 + 88);

    v24 = *(v0 + 64);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_10002E8DC()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_10002E9D8, 0, 0);
}

uint64_t sub_10002E9D8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 128) + 1;
  sub_10003FC74(*(v0 + 64), type metadata accessor for PushMessage);
  if (v2 == v1)
  {
    v3 = *(v0 + 88);

    v4 = *(v0 + 64);

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 120);
  v8 = *(v0 + 128) + 1;
  *(v0 + 128) = v8;
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 64);
  v12 = *(v0 + 48);
  sub_10003F860(*(v0 + 40) + ((*(v0 + 152) + 32) & ~*(v0 + 152)) + v7 * v8, v11);
  v13 = (v11 + *(v12 + 24));
  v14 = *v13;
  v15 = v13[1];
  if (*v13 != v10 || v15 != v9)
  {
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);
    v19 = *v13;
    v20 = v13[1];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (qword_1000A4D18 != -1)
      {
        swift_once();
      }

      v21 = v14 == *(&xmmword_1000A6358 + 1) && v15 == qword_1000A6368;
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v22 = *(v0 + 112);
        v23 = *(*(v0 + 32) + *(v0 + 104));
        type metadata accessor for LocalPreferences();
        Preferences.subscript.getter();
        v24 = *(v0 + 24);
        if (!v24)
        {
LABEL_23:
          v28 = swift_task_alloc();
          *(v0 + 144) = v28;
          *v28 = v0;
          v28[1] = sub_10002ECA8;
          v29 = *(v0 + 64);
          v30 = *(v0 + 32);

          return sub_10002FC40(v29);
        }

        if (v14 == *(v0 + 16) && v24 == v15)
        {
          v31 = *(v0 + 24);
        }

        else
        {
          v26 = *(v0 + 24);
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v27 & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  v32 = swift_task_alloc();
  *(v0 + 136) = v32;
  *v32 = v0;
  v32[1] = sub_10002E8DC;
  v33 = *(v0 + 64);
  v34 = *(v0 + 32);

  return sub_10002EDA4(v33);
}

uint64_t sub_10002ECA8()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return _swift_task_switch(sub_10002E9D8, 0, 0);
}

uint64_t sub_10002EDA4(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v3 = type metadata accessor for PushReceivedMetricsEvent();
  v2[45] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v5 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v2[48] = v6;
  v7 = *(v6 - 8);
  v2[49] = v7;
  v8 = *(v7 + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();

  return _swift_task_switch(sub_10002EECC, 0, 0);
}

uint64_t sub_10002EECC()
{
  if (qword_1000A4D68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = type metadata accessor for OSSignposter();
  sub_100018718(v2, qword_1000A54E0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 408);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "handleControlMessage", "", v6, 2u);
  }

  v8 = *(v0 + 400);
  v9 = *(v0 + 408);
  v10 = *(v0 + 384);
  v11 = *(v0 + 392);

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 416) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 376);
  v36 = *(v0 + 360);
  v37 = *(v0 + 368);
  v16 = *(v0 + 344);
  *(v0 + 424) = qword_1000A63A0;
  TaskLocal.get()();
  v35 = *(v0 + 96);
  sub_100001CC0((v0 + 64), *(v0 + 88));
  *(v0 + 432) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v17 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 440) = *(v17 + 72);
  *(v0 + 60) = *(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x8000000100088180;
  v18._countAndFlagsBits = 0xD000000000000026;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v19 = type metadata accessor for PushMessage(0);
  v20 = (v16 + v19[6]);
  v21 = *v20;
  v22 = v20[1];
  *(v0 + 208) = &type metadata for String;
  *(v0 + 184) = v21;
  *(v0 + 192) = v22;
  swift_bridgeObjectRetain_n();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 184, &qword_1000A5630, &unk_100083BF0);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 64));
  v24 = v19[5];
  v25 = *(v36 + 20);
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 16))(v37 + v25, v16 + v24, v26);
  v27 = qword_1000855E8[*(v16 + v19[8])];
  v29 = *(v0 + 360);
  v28 = *(v0 + 368);
  v30 = *(v0 + 352);
  *v28 = v21;
  v28[1] = v22;
  *(v28 + *(v29 + 24)) = v27;
  v31 = *sub_100001CC0((v30 + OBJC_IVAR____TtC13jetpackassetd11PushManager_metricsPipelineManager), *(v30 + OBJC_IVAR____TtC13jetpackassetd11PushManager_metricsPipelineManager + 24));
  v32 = swift_task_alloc();
  *(v0 + 448) = v32;
  *v32 = v0;
  v32[1] = sub_10002F328;
  v33 = *(v0 + 368);

  return sub_10003B3C8(v33);
}

uint64_t sub_10002F328()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_10002F708;
  }

  else
  {
    v3 = sub_10002F43C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002F43C()
{
  sub_10003FC74(v0[46], type metadata accessor for PushReceivedMetricsEvent);
  v2 = v0[43];
  v1 = v0[44];
  v3 = *(v1 + OBJC_IVAR____TtC13jetpackassetd11PushManager_database);
  v4 = swift_task_alloc();
  v0[58] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v6 = swift_task_alloc();
  v0[59] = v6;
  *v6 = v0;
  v6[1] = sub_10002F538;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)();
}

uint64_t sub_10002F538()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v7 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = sub_10002F95C;
  }

  else
  {
    v5 = *(v2 + 464);

    v4 = sub_10002F654;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002F654()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  v5 = v0[46];
  v4 = v0[47];
  sub_10003E998("handleControlMessage", 20, 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10002F708()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 60);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = *(v0 + 424);
  v6 = *(v0 + 376);
  sub_10003FC74(*(v0 + 368), type metadata accessor for PushReceivedMetricsEvent);
  TaskLocal.get()();
  v19 = *(v0 + 136);
  sub_100001CC0((v0 + 104), *(v0 + 128));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x80000001000881B0;
  v7._countAndFlagsBits = 0xD000000000000031;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 280);
  v9 = *(v0 + 288);
  *(v0 + 240) = v9;
  v10 = sub_1000061A4((v0 + 216));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 104));
  v13 = *(v0 + 344);
  v12 = *(v0 + 352);
  v14 = *(v12 + OBJC_IVAR____TtC13jetpackassetd11PushManager_database);
  v15 = swift_task_alloc();
  *(v0 + 464) = v15;
  *(v15 + 16) = v13;
  *(v15 + 24) = v12;
  v16 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v17 = swift_task_alloc();
  *(v0 + 472) = v17;
  *v17 = v0;
  v17[1] = sub_10002F538;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)();
}

uint64_t sub_10002F95C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  v3 = *(v0 + 60);
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v0 + 424);
  v7 = *(v0 + 376);
  v29 = *(v0 + 352);

  TaskLocal.get()();
  v28 = *(v0 + 176);
  sub_100001CC0((v0 + 144), *(v0 + 168));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x80000001000881F0;
  v8._countAndFlagsBits = 0xD00000000000002ALL;
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

  sub_100001D4C((v0 + 144));
  v13 = *(v29 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 32);
  sub_100001CC0((v29 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v29 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
  swift_errorRetain();
  v14 = _convertErrorToNSError(_:)();
  v15 = [v14 domain];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = _convertErrorToNSError(_:)();
  v20 = [v19 code];

  *(v0 + 16) = v16;
  *(v0 + 24) = v18;
  *(v0 + 32) = v20;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = -1;
  sub_10003FD80();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  v21 = *(v0 + 408);
  v22 = *(v0 + 416);
  v23 = *(v0 + 400);
  v25 = *(v0 + 368);
  v24 = *(v0 + 376);
  sub_10003E998("handleControlMessage", 20, 2);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10002FC40(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = type metadata accessor for PushReceivedMetricsEvent();
  v2[44] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v5 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v2[47] = v6;
  v7 = *(v6 - 8);
  v2[48] = v7;
  v8 = *(v7 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();

  return _swift_task_switch(sub_10002FD68, 0, 0);
}

uint64_t sub_10002FD68()
{
  if (qword_1000A4D68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 400);
  v2 = type metadata accessor for OSSignposter();
  sub_100018718(v2, qword_1000A54E0);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 400);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "handlePush", "", v6, 2u);
  }

  v8 = *(v0 + 392);
  v9 = *(v0 + 400);
  v10 = *(v0 + 376);
  v11 = *(v0 + 384);

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 408) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 368);
  v36 = *(v0 + 352);
  v37 = *(v0 + 360);
  v16 = *(v0 + 336);
  *(v0 + 416) = qword_1000A63A0;
  TaskLocal.get()();
  v35 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 424) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v17 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 432) = *(v17 + 72);
  *(v0 + 496) = *(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x80000001000885D0;
  v18._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v19 = type metadata accessor for PushMessage(0);
  v20 = (v16 + v19[6]);
  v21 = *v20;
  *(v0 + 440) = *v20;
  v22 = v20[1];
  *(v0 + 448) = v22;
  *(v0 + 200) = &type metadata for String;
  *(v0 + 176) = v21;
  *(v0 + 184) = v22;
  swift_bridgeObjectRetain_n();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 176, &qword_1000A5630, &unk_100083BF0);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  v24 = v19[5];
  v25 = *(v36 + 20);
  v26 = type metadata accessor for Date();
  (*(*(v26 - 8) + 16))(v37 + v25, v16 + v24, v26);
  v27 = qword_1000855E8[*(v16 + v19[8])];
  v29 = *(v0 + 352);
  v28 = *(v0 + 360);
  v30 = *(v0 + 344);
  *v28 = v21;
  v28[1] = v22;
  *(v28 + *(v29 + 24)) = v27;
  v31 = *sub_100001CC0((v30 + OBJC_IVAR____TtC13jetpackassetd11PushManager_metricsPipelineManager), *(v30 + OBJC_IVAR____TtC13jetpackassetd11PushManager_metricsPipelineManager + 24));
  v32 = swift_task_alloc();
  *(v0 + 456) = v32;
  *v32 = v0;
  v32[1] = sub_1000301D0;
  v33 = *(v0 + 360);

  return sub_10003B3C8(v33);
}

uint64_t sub_1000301D0()
{
  v2 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_1000305B0;
  }

  else
  {
    v3 = sub_1000302E4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000302E4()
{
  sub_10003FC74(v0[45], type metadata accessor for PushReceivedMetricsEvent);
  v2 = v0[42];
  v1 = v0[43];
  v3 = *(v1 + OBJC_IVAR____TtC13jetpackassetd11PushManager_database);
  v4 = swift_task_alloc();
  v0[59] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v6 = swift_task_alloc();
  v0[60] = v6;
  *v6 = v0;
  v6[1] = sub_1000303E0;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)();
}

uint64_t sub_1000303E0()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v7 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v4 = sub_100030804;
  }

  else
  {
    v5 = *(v2 + 472);

    v4 = sub_1000304FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000304FC()
{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[49];
  v5 = v0[45];
  v4 = v0[46];
  sub_10003E998("handlePush", 10, 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000305B0()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 496);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  v5 = *(v0 + 416);
  v6 = *(v0 + 368);
  sub_10003FC74(*(v0 + 360), type metadata accessor for PushReceivedMetricsEvent);
  TaskLocal.get()();
  v19 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x80000001000881B0;
  v7._countAndFlagsBits = 0xD000000000000031;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 272);
  v9 = *(v0 + 280);
  *(v0 + 232) = v9;
  v10 = sub_1000061A4((v0 + 208));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 208, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 56));
  v13 = *(v0 + 336);
  v12 = *(v0 + 344);
  v14 = *(v12 + OBJC_IVAR____TtC13jetpackassetd11PushManager_database);
  v15 = swift_task_alloc();
  *(v0 + 472) = v15;
  *(v15 + 16) = v12;
  *(v15 + 24) = v13;
  v16 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v17 = swift_task_alloc();
  *(v0 + 480) = v17;
  *v17 = v0;
  v17[1] = sub_1000303E0;

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)();
}

uint64_t sub_100030804()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 472);
  v30 = *(v0 + 448);
  v31 = *(v0 + 440);
  v3 = *(v0 + 496);
  v5 = *(v0 + 424);
  v4 = *(v0 + 432);
  v6 = *(v0 + 416);
  v7 = *(v0 + 368);
  v29 = *(v0 + 344);

  TaskLocal.get()();
  v28 = *(v0 + 128);
  sub_100001CC0((v0 + 96), *(v0 + 120));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100088600;
  v8._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = *(v0 + 296);
  v10 = *(v0 + 304);
  *(v0 + 264) = v10;
  v11 = sub_1000061A4((v0 + 240));
  (*(*(v10 - 8) + 16))(v11, v9, v10);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 240, &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 96));
  v13 = *(v29 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 32);
  sub_100001CC0((v29 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v29 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));

  swift_errorRetain();
  v14 = _convertErrorToNSError(_:)();
  v15 = [v14 domain];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = _convertErrorToNSError(_:)();
  v20 = [v19 code];

  *(v0 + 136) = v16;
  *(v0 + 144) = v18;
  *(v0 + 152) = v20;
  *(v0 + 160) = v31;
  *(v0 + 168) = v30;
  sub_10003FF0C();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  v21 = *(v0 + 400);
  v22 = *(v0 + 408);
  v23 = *(v0 + 392);
  v25 = *(v0 + 360);
  v24 = *(v0 + 368);
  sub_10003E998("handlePush", 10, 2);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100030B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[82] = a3;
  v3[81] = a2;
  v4 = sub_100001D04(&qword_1000A5680, &qword_100084000);
  v3[83] = v4;
  v5 = *(v4 - 8);
  v3[84] = v5;
  v6 = *(v5 + 64) + 15;
  v3[85] = swift_task_alloc();
  v7 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();

  return _swift_task_switch(sub_100030C14, 0, 0);
}

uint64_t sub_100030C14()
{
  v1 = *(v0 + 648);
  v2 = *(v1 + *(type metadata accessor for PushMessage(0) + 44));
  *(v0 + 712) = v2;
  v3 = *(v2 + 16);
  *(v0 + 720) = v3;
  v4 = Hasher._combine(_:) + 4;
  if (v3)
  {
    v5 = 0;
    *(v0 + 728) = OBJC_IVAR____TtC13jetpackassetd11PushManager_killSwitchManager;
    *(v0 + 736) = OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore;
    *(v0 + 744) = OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler;
    *(v0 + 752) = OBJC_IVAR____TtC13jetpackassetd11PushManager_bagManager;
    *(v0 + 760) = OBJC_IVAR____TtC13jetpackassetd11PushManager_diskCache;
    while (1)
    {
      *(v0 + 768) = v5;
      v6 = *(v0 + 712);
      if (v5 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_53;
      }

      v7 = v6 + 24 * v5;
      v8 = *(v7 + 32);
      *(v0 + 776) = v8;
      v9 = *(v7 + 40);
      *(v0 + 784) = v9;
      v10 = *(v7 + 48);
      *(v0 + 58) = v10;
      if (v10 <= 1)
      {
        break;
      }

      if (v10 == 3)
      {
        sub_10003FDD4(v8, v9, 3);
        v46 = qword_1000A4D48;

        if (v46 != -1)
        {
          swift_once();
        }

        v47 = *(v0 + 704);
        v48 = (*(v0 + 656) + *(v0 + 736));
        TaskLocal.get()();
        v109 = *(v0 + 176);
        sub_100001CC0((v0 + 144), *(v0 + 168));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v49 = *(type metadata accessor for LogMessage() - 8);
        v50 = *(v49 + 72);
        v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v4 = swift_allocObject();
        *(v4 + 1) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v52._countAndFlagsBits = 0xD000000000000050;
        v52._object = 0x8000000100088280;
        LogMessage.StringInterpolation.appendLiteral(_:)(v52);
        *(v0 + 480) = &type metadata for String;
        *(v0 + 456) = v8;
        *(v0 + 464) = v9;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 456, &qword_1000A5630, &unk_100083BF0);
        v53._countAndFlagsBits = 0;
        v53._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v53);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 144));
        v54 = v48[4];
        sub_100001CC0(v48, v48[3]);
        dispatch thunk of AssetPushSubscriptionStore.resetPending(channelID:)();
        sub_10003FDF0(v8, v9, 3);
        v33 = v8;
        v34 = v9;
        v35 = 3;
LABEL_3:
        sub_10003FDF0(v33, v34, v35);
        goto LABEL_4;
      }

      if (v10 != 4)
      {
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v85 = *(v0 + 704);
        v86 = (*(v0 + 656) + *(v0 + 744));
        *(v0 + 816) = qword_1000A63A0;
        TaskLocal.get()();
        v112 = *(v0 + 256);
        sub_100001CC0((v0 + 224), *(v0 + 248));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v87 = *(type metadata accessor for LogMessage() - 8);
        v88 = *(v87 + 72);
        v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v90._countAndFlagsBits = 0xD000000000000037;
        v90._object = 0x8000000100088320;
        LogMessage.StringInterpolation.appendLiteral(_:)(v90);
        *(v0 + 544) = &type metadata for Double;
        *(v0 + 520) = v8;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 520, &qword_1000A5630, &unk_100083BF0);
        v91._countAndFlagsBits = 0;
        v91._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v91);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 224));
        sub_100001CC0(v86, v86[3]);
        v92 = swift_task_alloc();
        *(v0 + 824) = v92;
        *v92 = v0;
        v92[1] = sub_100033064;

        return sub_100048144(*&v8);
      }

      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      v106 = *(v0 + 728);
      v11 = *(v0 + 688);
      v12 = *(v0 + 656);
      TaskLocal.get()();
      v13 = *(v0 + 96);
      sub_100001CC0((v0 + 64), *(v0 + 88));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v14 = *(type metadata accessor for LogMessage() - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v4 = swift_allocObject();
      *(v4 + 1) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v17._countAndFlagsBits = 0xD00000000000001ALL;
      v17._object = 0x8000000100088240;
      LogMessage.StringInterpolation.appendLiteral(_:)(v17);
      v18 = 0x64656C6261736964;
      if (v8)
      {
        v18 = 0x64656C62616E65;
      }

      *(v0 + 448) = &type metadata for String;
      v19 = 0xE800000000000000;
      if (v8)
      {
        v19 = 0xE700000000000000;
      }

      *(v0 + 424) = v18;
      *(v0 + 432) = v19;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 424, &qword_1000A5630, &unk_100083BF0);
      v20._object = 0x8000000100088260;
      v20._countAndFlagsBits = 0xD000000000000017;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 64));
      v21 = *(v12 + v106);
      v22 = *(v21 + OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_localPreferences);
      if (v8)
      {
        (*(*(v0 + 672) + 16))(*(v0 + 680), v21 + OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey, *(v0 + 664));
        *(v0 + 57) = 1;
        type metadata accessor for LocalPreferences();
        Preferences.subscript.setter();
      }

      else
      {
        v55 = *(v0 + 672);
        v56 = *(v0 + 664);
        v4 = OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey;
        *(v0 + 128) = v56;
        *(v0 + 136) = sub_100040238(&qword_1000A5688, &qword_1000A5680, &qword_100084000);
        v57 = sub_1000061A4((v0 + 104));
        (*(v55 + 16))(v57, &v4[v21], v56);
        LocalPreferences.removeValue(forKey:)();
        sub_100001D4C((v0 + 104));
      }

LABEL_4:
      v5 = *(v0 + 768) + 1;
      if (v5 == *(v0 + 720))
      {
        goto LABEL_39;
      }
    }

    if (v10)
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 696);
      v37 = (*(v0 + 656) + *(v0 + 752));
      TaskLocal.get()();
      v108 = *(v0 + 296);
      sub_100001CC0((v0 + 264), *(v0 + 288));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v38 = *(type metadata accessor for LogMessage() - 8);
      v39 = *(v38 + 72);
      v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v41._countAndFlagsBits = 0xD000000000000012;
      v41._object = 0x8000000100088360;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      v4 = (v8 & 1);
      v42 = 0x64656C6261736964;
      if (v8)
      {
        v42 = 0x64656C62616E65;
      }

      *(v0 + 576) = &type metadata for String;
      v43 = 0xE800000000000000;
      if (v8)
      {
        v43 = 0xE700000000000000;
      }

      *(v0 + 552) = v42;
      *(v0 + 560) = v43;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 552, &qword_1000A5630, &unk_100083BF0);
      v44._object = 0x8000000100088260;
      v44._countAndFlagsBits = 0xD000000000000017;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 264));
      sub_100001CC0(v37, v37[3]);
      v45 = type metadata accessor for BagManager();
      sub_100017FD0(v8 & 1, v45);
      goto LABEL_4;
    }

    if (!v9)
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      v93 = *(v0 + 760);
      v94 = *(v0 + 656);
      *(v0 + 792) = qword_1000A63A0;
      TaskLocal.get()();
      v95 = *(v0 + 336);
      sub_100001CC0((v0 + 304), *(v0 + 328));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v96 = *(type metadata accessor for LogMessage() - 8);
      v97 = *(v96 + 72);
      v98 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 304));
      v99 = *(v94 + v93);
      v100 = async function pointer to JetPackAssetDiskCache._empty()[1];
      v101 = swift_task_alloc();
      *(v0 + 800) = v101;
      *v101 = v0;
      v101[1] = sub_100031E54;

      return JetPackAssetDiskCache._empty()();
    }

    sub_10003FDD4(v8, v9, 0);
    v23 = qword_1000A4D48;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 704);
    v104 = *(v0 + 656);
    v107 = *(v0 + 760);
    TaskLocal.get()();
    v102 = *(v0 + 376);
    sub_100001CC0((v0 + 344), *(v0 + 368));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v25 = *(type metadata accessor for LogMessage() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v4 = 0xD000000000000017;
    v28._countAndFlagsBits = 0xD000000000000016;
    v28._object = 0x80000001000883B0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    *(v0 + 608) = &type metadata for String;
    *(v0 + 584) = v8;
    *(v0 + 592) = v9;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 584, &qword_1000A5630, &unk_100083BF0);
    v29._countAndFlagsBits = 0xD000000000000018;
    v29._object = 0x80000001000883D0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 344));
    v30 = *(v104 + v107);
    v31._countAndFlagsBits = v8;
    v31._object = v9;
    JetPackAssetDiskCache._evict(cacheKey:)(v31);
    sub_10003FDF0(v8, v9, 0);
    if (v32)
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      v111 = *(v0 + 776);
      v62 = *(v0 + 704);
      v105 = *(v0 + 656);
      v110 = *(v0 + 58);
      TaskLocal.get()();
      v103 = *(v0 + 216);
      sub_100001CC0((v0 + 184), *(v0 + 208));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v63 = *(type metadata accessor for LogMessage() - 8);
      v64 = *(v63 + 72);
      v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v66._countAndFlagsBits = 0xD000000000000031;
      v66._object = 0x80000001000882E0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v66);
      swift_getErrorValue();
      v67 = *(v0 + 616);
      v68 = *(v0 + 624);
      *(v0 + 512) = v68;
      v69 = sub_1000061A4((v0 + 488));
      (*(*(v68 - 8) + 16))(v69, v67, v68);
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 488, &qword_1000A5630, &unk_100083BF0);
      v70._countAndFlagsBits = 0;
      v70._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v70);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v0 + 184));
      v71 = *(v105 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 32);
      sub_100001CC0((v105 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v105 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
      swift_errorRetain();
      v72 = _convertErrorToNSError(_:)();
      v73 = [v72 domain];

      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      v77 = _convertErrorToNSError(_:)();
      v78 = [v77 code];

      *(v0 + 16) = v74;
      *(v0 + 24) = v76;
      *(v0 + 32) = v78;
      *(v0 + 40) = v111;
      *(v0 + 48) = v9;
      *(v0 + 56) = v110;
      sub_10003FD80();
      dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

      sub_10003FDF0(v111, v9, v110);
      goto LABEL_39;
    }

    v33 = v8;
    v34 = v9;
    v35 = 0;
    goto LABEL_3;
  }

  if (qword_1000A4D48 != -1)
  {
LABEL_53:
    swift_once();
  }

  TaskLocal.get()();
  v58 = *(v0 + 416);
  sub_100001CC0((v0 + 384), *(v0 + 408));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v59 = *(type metadata accessor for LogMessage() - 8);
  v60 = *(v59 + 72);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  *(swift_allocObject() + 16) = *(v4 + 156);
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 384));
LABEL_39:
  v79 = *(v0 + 704);
  v80 = *(v0 + 696);
  v81 = *(v0 + 688);
  v82 = *(v0 + 680);

  v83 = *(v0 + 8);

  return v83();
}