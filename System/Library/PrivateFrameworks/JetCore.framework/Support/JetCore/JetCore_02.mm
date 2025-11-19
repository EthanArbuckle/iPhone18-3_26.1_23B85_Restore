uint64_t sub_100031E54()
{
  v2 = *(*v1 + 800);
  v5 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v3 = sub_1000345DC;
  }

  else
  {
    v3 = sub_100031F68;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100031F68()
{
  sub_10003FDF0(*(v0 + 776), 0, 0);
  v1 = *(v0 + 768) + 1;
  if (v1 == *(v0 + 720))
  {
LABEL_2:
    v2 = *(v0 + 704);
    v3 = *(v0 + 696);
    v4 = *(v0 + 688);
    v5 = *(v0 + 680);

    v6 = *(v0 + 8);

    return v6();
  }

  v97 = *(v0 + 808);
  while (1)
  {
    *(v0 + 768) = v1;
    v12 = *(v0 + 712);
    if (v1 >= *(v12 + 16))
    {
      break;
    }

    v13 = v12 + 24 * v1;
    v14 = *(v13 + 32);
    *(v0 + 776) = v14;
    v15 = *(v13 + 40);
    *(v0 + 784) = v15;
    v16 = *(v13 + 48);
    *(v0 + 58) = v16;
    if (v16 <= 1)
    {
      if (v16 == 1)
      {
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v30 = *(v0 + 696);
        v31 = (*(v0 + 656) + *(v0 + 752));
        TaskLocal.get()();
        v32 = *(v0 + 296);
        sub_100001CC0((v0 + 264), *(v0 + 288));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v33 = *(type metadata accessor for LogMessage() - 8);
        v34 = *(v33 + 72);
        v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v36._countAndFlagsBits = 0xD000000000000012;
        v36._object = 0x8000000100088360;
        LogMessage.StringInterpolation.appendLiteral(_:)(v36);
        v37 = v14 & 1;
        v38 = 0x64656C6261736964;
        if (v37)
        {
          v38 = 0x64656C62616E65;
        }

        *(v0 + 576) = &type metadata for String;
        v39 = 0xE800000000000000;
        if (v37)
        {
          v39 = 0xE700000000000000;
        }

        *(v0 + 552) = v38;
        *(v0 + 560) = v39;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 552, &qword_1000A5630, &unk_100083BF0);
        v40._object = 0x8000000100088260;
        v40._countAndFlagsBits = 0xD000000000000017;
        LogMessage.StringInterpolation.appendLiteral(_:)(v40);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 264));
        sub_100001CC0(v31, v31[3]);
        v41 = type metadata accessor for BagManager();
        sub_100017FD0(v37, v41);
        goto LABEL_7;
      }

      if (!v15)
      {
        goto LABEL_43;
      }

      sub_10003FDD4(v14, v15, 0);
      v50 = qword_1000A4D48;

      if (v50 != -1)
      {
        swift_once();
      }

      v102 = *(v0 + 760);
      v51 = *(v0 + 704);
      v96 = *(v0 + 656);
      TaskLocal.get()();
      v94 = *(v0 + 376);
      sub_100001CC0((v0 + 344), *(v0 + 368));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v52 = *(type metadata accessor for LogMessage() - 8);
      v53 = *(v52 + 72);
      v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v55._countAndFlagsBits = 0xD000000000000016;
      v55._object = 0x80000001000883B0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v55);
      *(v0 + 608) = &type metadata for String;
      *(v0 + 584) = v14;
      *(v0 + 592) = v15;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 584, &qword_1000A5630, &unk_100083BF0);
      v56._countAndFlagsBits = 0xD000000000000018;
      v56._object = 0x80000001000883D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v56);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 344));
      v57 = *(v96 + v102);
      v58._countAndFlagsBits = v14;
      v58._object = v15;
      JetPackAssetDiskCache._evict(cacheKey:)(v58);
      sub_10003FDF0(v14, v15, 0);
      if (v59)
      {
LABEL_48:
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v105 = *(v0 + 776);
        v77 = *(v0 + 704);
        v99 = *(v0 + 656);
        v103 = *(v0 + 58);
        TaskLocal.get()();
        v98 = *(v0 + 216);
        sub_100001CC0((v0 + 184), *(v0 + 208));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v78 = *(type metadata accessor for LogMessage() - 8);
        v79 = *(v78 + 72);
        v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v81._countAndFlagsBits = 0xD000000000000031;
        v81._object = 0x80000001000882E0;
        LogMessage.StringInterpolation.appendLiteral(_:)(v81);
        swift_getErrorValue();
        v82 = *(v0 + 616);
        v83 = *(v0 + 624);
        *(v0 + 512) = v83;
        v84 = sub_1000061A4((v0 + 488));
        (*(*(v83 - 8) + 16))(v84, v82, v83);
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 488, &qword_1000A5630, &unk_100083BF0);
        v85._countAndFlagsBits = 0;
        v85._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v85);
        LogMessage.init(stringInterpolation:)();
        Logger.error(_:)();

        sub_100001D4C((v0 + 184));
        v86 = *(v99 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 32);
        sub_100001CC0((v99 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v99 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
        swift_errorRetain();
        v87 = _convertErrorToNSError(_:)();
        v88 = [v87 domain];

        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        v92 = _convertErrorToNSError(_:)();
        v93 = [v92 code];

        *(v0 + 16) = v89;
        *(v0 + 24) = v91;
        *(v0 + 32) = v93;
        *(v0 + 40) = v105;
        *(v0 + 48) = v15;
        *(v0 + 56) = v103;
        sub_10003FD80();
        dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

        sub_10003FDF0(v105, v15, v103);
        goto LABEL_2;
      }
    }

    else
    {
      if (v16 == 4)
      {
        v17 = v14;
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v100 = *(v0 + 728);
        v18 = *(v0 + 688);
        v19 = *(v0 + 656);
        TaskLocal.get()();
        v20 = *(v0 + 96);
        sub_100001CC0((v0 + 64), *(v0 + 88));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v21 = *(type metadata accessor for LogMessage() - 8);
        v22 = *(v21 + 72);
        v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v24._countAndFlagsBits = 0xD00000000000001ALL;
        v24._object = 0x8000000100088240;
        LogMessage.StringInterpolation.appendLiteral(_:)(v24);
        v25 = 0x64656C6261736964;
        if (v17)
        {
          v25 = 0x64656C62616E65;
        }

        *(v0 + 448) = &type metadata for String;
        v26 = 0xE800000000000000;
        if (v17)
        {
          v26 = 0xE700000000000000;
        }

        *(v0 + 424) = v25;
        *(v0 + 432) = v26;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 424, &qword_1000A5630, &unk_100083BF0);
        v27._object = 0x8000000100088260;
        v27._countAndFlagsBits = 0xD000000000000017;
        LogMessage.StringInterpolation.appendLiteral(_:)(v27);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 64));
        v28 = *(v19 + v100);
        v29 = *(v28 + OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_localPreferences);
        if (v17)
        {
          (*(*(v0 + 672) + 16))(*(v0 + 680), v28 + OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey, *(v0 + 664));
          *(v0 + 57) = 1;
          type metadata accessor for LocalPreferences();
          Preferences.subscript.setter();
        }

        else
        {
          v8 = *(v0 + 672);
          v9 = *(v0 + 664);
          v10 = OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey;
          *(v0 + 128) = v9;
          *(v0 + 136) = sub_100040238(&qword_1000A5688, &qword_1000A5680, &qword_100084000);
          v11 = sub_1000061A4((v0 + 104));
          (*(v8 + 16))(v11, v28 + v10, v9);
          LocalPreferences.removeValue(forKey:)();
          sub_100001D4C((v0 + 104));
        }

        goto LABEL_7;
      }

      if (v16 == 2)
      {
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v60 = *(v0 + 704);
        v61 = (*(v0 + 656) + *(v0 + 744));
        *(v0 + 816) = qword_1000A63A0;
        TaskLocal.get()();
        v104 = *(v0 + 256);
        sub_100001CC0((v0 + 224), *(v0 + 248));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v62 = *(type metadata accessor for LogMessage() - 8);
        v63 = *(v62 + 72);
        v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v65._countAndFlagsBits = 0xD000000000000037;
        v65._object = 0x8000000100088320;
        LogMessage.StringInterpolation.appendLiteral(_:)(v65);
        *(v0 + 544) = &type metadata for Double;
        *(v0 + 520) = v14;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 520, &qword_1000A5630, &unk_100083BF0);
        v66._countAndFlagsBits = 0;
        v66._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v66);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 224));
        sub_100001CC0(v61, v61[3]);
        v67 = swift_task_alloc();
        *(v0 + 824) = v67;
        *v67 = v0;
        v67[1] = sub_100033064;

        return sub_100048144(*&v14);
      }

      sub_10003FDD4(v14, v15, 3);
      v42 = qword_1000A4D48;

      if (v42 != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 704);
      v101 = (*(v0 + 656) + *(v0 + 736));
      TaskLocal.get()();
      v95 = *(v0 + 176);
      sub_100001CC0((v0 + 144), *(v0 + 168));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v44 = *(type metadata accessor for LogMessage() - 8);
      v45 = *(v44 + 72);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v47._countAndFlagsBits = 0xD000000000000050;
      v47._object = 0x8000000100088280;
      LogMessage.StringInterpolation.appendLiteral(_:)(v47);
      *(v0 + 480) = &type metadata for String;
      *(v0 + 456) = v14;
      *(v0 + 464) = v15;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 456, &qword_1000A5630, &unk_100083BF0);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 144));
      v49 = v101[4];
      sub_100001CC0(v101, v101[3]);
      dispatch thunk of AssetPushSubscriptionStore.resetPending(channelID:)();
      sub_10003FDF0(v14, v15, 3);
      if (v97)
      {
        goto LABEL_48;
      }
    }

    sub_10003FDF0(v14, v15, v16);
    v97 = 0;
LABEL_7:
    v1 = *(v0 + 768) + 1;
    if (v1 == *(v0 + 720))
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_43:
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v68 = *(v0 + 760);
  v69 = *(v0 + 656);
  *(v0 + 792) = qword_1000A63A0;
  TaskLocal.get()();
  v70 = *(v0 + 336);
  sub_100001CC0((v0 + 304), *(v0 + 328));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v71 = *(type metadata accessor for LogMessage() - 8);
  v72 = *(v71 + 72);
  v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 304));
  v74 = *(v69 + v68);
  v75 = async function pointer to JetPackAssetDiskCache._empty()[1];
  v76 = swift_task_alloc();
  *(v0 + 800) = v76;
  *v76 = v0;
  v76[1] = sub_100031E54;

  return JetPackAssetDiskCache._empty()();
}

uint64_t sub_100033064()
{
  v2 = *(*v1 + 824);
  v5 = *v1;
  *(*v1 + 832) = v0;

  if (v0)
  {
    v3 = sub_100034264;
  }

  else
  {
    v3 = sub_100033178;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100033178()
{
  v1 = *(v0 + 768) + 1;
  if (v1 == *(v0 + 720))
  {
LABEL_2:
    v2 = *(v0 + 704);
    v3 = *(v0 + 696);
    v4 = *(v0 + 688);
    v5 = *(v0 + 680);

    v6 = *(v0 + 8);

    return v6();
  }

  v97 = *(v0 + 832);
  while (1)
  {
    *(v0 + 768) = v1;
    v12 = *(v0 + 712);
    if (v1 >= *(v12 + 16))
    {
      break;
    }

    v13 = v12 + 24 * v1;
    v14 = *(v13 + 32);
    *(v0 + 776) = v14;
    v15 = *(v13 + 40);
    *(v0 + 784) = v15;
    v16 = *(v13 + 48);
    *(v0 + 58) = v16;
    if (v16 <= 1)
    {
      if (v16 == 1)
      {
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v30 = *(v0 + 696);
        v31 = (*(v0 + 656) + *(v0 + 752));
        TaskLocal.get()();
        v32 = *(v0 + 296);
        sub_100001CC0((v0 + 264), *(v0 + 288));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v33 = *(type metadata accessor for LogMessage() - 8);
        v34 = *(v33 + 72);
        v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v36._countAndFlagsBits = 0xD000000000000012;
        v36._object = 0x8000000100088360;
        LogMessage.StringInterpolation.appendLiteral(_:)(v36);
        v37 = v14 & 1;
        v38 = 0x64656C6261736964;
        if (v37)
        {
          v38 = 0x64656C62616E65;
        }

        *(v0 + 576) = &type metadata for String;
        v39 = 0xE800000000000000;
        if (v37)
        {
          v39 = 0xE700000000000000;
        }

        *(v0 + 552) = v38;
        *(v0 + 560) = v39;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 552, &qword_1000A5630, &unk_100083BF0);
        v40._object = 0x8000000100088260;
        v40._countAndFlagsBits = 0xD000000000000017;
        LogMessage.StringInterpolation.appendLiteral(_:)(v40);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 264));
        sub_100001CC0(v31, v31[3]);
        v41 = type metadata accessor for BagManager();
        sub_100017FD0(v37, v41);
        goto LABEL_7;
      }

      if (!v15)
      {
        goto LABEL_43;
      }

      sub_10003FDD4(v14, v15, 0);
      v50 = qword_1000A4D48;

      if (v50 != -1)
      {
        swift_once();
      }

      v102 = *(v0 + 760);
      v51 = *(v0 + 704);
      v96 = *(v0 + 656);
      TaskLocal.get()();
      v94 = *(v0 + 376);
      sub_100001CC0((v0 + 344), *(v0 + 368));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v52 = *(type metadata accessor for LogMessage() - 8);
      v53 = *(v52 + 72);
      v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v55._countAndFlagsBits = 0xD000000000000016;
      v55._object = 0x80000001000883B0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v55);
      *(v0 + 608) = &type metadata for String;
      *(v0 + 584) = v14;
      *(v0 + 592) = v15;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 584, &qword_1000A5630, &unk_100083BF0);
      v56._countAndFlagsBits = 0xD000000000000018;
      v56._object = 0x80000001000883D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v56);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 344));
      v57 = *(v96 + v102);
      v58._countAndFlagsBits = v14;
      v58._object = v15;
      JetPackAssetDiskCache._evict(cacheKey:)(v58);
      sub_10003FDF0(v14, v15, 0);
      if (v59)
      {
LABEL_48:
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v105 = *(v0 + 776);
        v77 = *(v0 + 704);
        v99 = *(v0 + 656);
        v103 = *(v0 + 58);
        TaskLocal.get()();
        v98 = *(v0 + 216);
        sub_100001CC0((v0 + 184), *(v0 + 208));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v78 = *(type metadata accessor for LogMessage() - 8);
        v79 = *(v78 + 72);
        v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v81._countAndFlagsBits = 0xD000000000000031;
        v81._object = 0x80000001000882E0;
        LogMessage.StringInterpolation.appendLiteral(_:)(v81);
        swift_getErrorValue();
        v82 = *(v0 + 616);
        v83 = *(v0 + 624);
        *(v0 + 512) = v83;
        v84 = sub_1000061A4((v0 + 488));
        (*(*(v83 - 8) + 16))(v84, v82, v83);
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 488, &qword_1000A5630, &unk_100083BF0);
        v85._countAndFlagsBits = 0;
        v85._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v85);
        LogMessage.init(stringInterpolation:)();
        Logger.error(_:)();

        sub_100001D4C((v0 + 184));
        v86 = *(v99 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 32);
        sub_100001CC0((v99 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v99 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
        swift_errorRetain();
        v87 = _convertErrorToNSError(_:)();
        v88 = [v87 domain];

        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        v92 = _convertErrorToNSError(_:)();
        v93 = [v92 code];

        *(v0 + 16) = v89;
        *(v0 + 24) = v91;
        *(v0 + 32) = v93;
        *(v0 + 40) = v105;
        *(v0 + 48) = v15;
        *(v0 + 56) = v103;
        sub_10003FD80();
        dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

        sub_10003FDF0(v105, v15, v103);
        goto LABEL_2;
      }
    }

    else
    {
      if (v16 == 4)
      {
        v17 = v14;
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v100 = *(v0 + 728);
        v18 = *(v0 + 688);
        v19 = *(v0 + 656);
        TaskLocal.get()();
        v20 = *(v0 + 96);
        sub_100001CC0((v0 + 64), *(v0 + 88));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v21 = *(type metadata accessor for LogMessage() - 8);
        v22 = *(v21 + 72);
        v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v24._countAndFlagsBits = 0xD00000000000001ALL;
        v24._object = 0x8000000100088240;
        LogMessage.StringInterpolation.appendLiteral(_:)(v24);
        v25 = 0x64656C6261736964;
        if (v17)
        {
          v25 = 0x64656C62616E65;
        }

        *(v0 + 448) = &type metadata for String;
        v26 = 0xE800000000000000;
        if (v17)
        {
          v26 = 0xE700000000000000;
        }

        *(v0 + 424) = v25;
        *(v0 + 432) = v26;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 424, &qword_1000A5630, &unk_100083BF0);
        v27._object = 0x8000000100088260;
        v27._countAndFlagsBits = 0xD000000000000017;
        LogMessage.StringInterpolation.appendLiteral(_:)(v27);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 64));
        v28 = *(v19 + v100);
        v29 = *(v28 + OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_localPreferences);
        if (v17)
        {
          (*(*(v0 + 672) + 16))(*(v0 + 680), v28 + OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey, *(v0 + 664));
          *(v0 + 57) = 1;
          type metadata accessor for LocalPreferences();
          Preferences.subscript.setter();
        }

        else
        {
          v8 = *(v0 + 672);
          v9 = *(v0 + 664);
          v10 = OBJC_IVAR____TtC13jetpackassetd17KillSwitchManager_enabledKey;
          *(v0 + 128) = v9;
          *(v0 + 136) = sub_100040238(&qword_1000A5688, &qword_1000A5680, &qword_100084000);
          v11 = sub_1000061A4((v0 + 104));
          (*(v8 + 16))(v11, v28 + v10, v9);
          LocalPreferences.removeValue(forKey:)();
          sub_100001D4C((v0 + 104));
        }

        goto LABEL_7;
      }

      if (v16 == 2)
      {
        if (qword_1000A4D48 != -1)
        {
          swift_once();
        }

        v60 = *(v0 + 704);
        v61 = (*(v0 + 656) + *(v0 + 744));
        *(v0 + 816) = qword_1000A63A0;
        TaskLocal.get()();
        v104 = *(v0 + 256);
        sub_100001CC0((v0 + 224), *(v0 + 248));
        sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
        v62 = *(type metadata accessor for LogMessage() - 8);
        v63 = *(v62 + 72);
        v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v65._countAndFlagsBits = 0xD000000000000037;
        v65._object = 0x8000000100088320;
        LogMessage.StringInterpolation.appendLiteral(_:)(v65);
        *(v0 + 544) = &type metadata for Double;
        *(v0 + 520) = v14;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v0 + 520, &qword_1000A5630, &unk_100083BF0);
        v66._countAndFlagsBits = 0;
        v66._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v66);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v0 + 224));
        sub_100001CC0(v61, v61[3]);
        v67 = swift_task_alloc();
        *(v0 + 824) = v67;
        *v67 = v0;
        v67[1] = sub_100033064;

        return sub_100048144(*&v14);
      }

      sub_10003FDD4(v14, v15, 3);
      v42 = qword_1000A4D48;

      if (v42 != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 704);
      v101 = (*(v0 + 656) + *(v0 + 736));
      TaskLocal.get()();
      v95 = *(v0 + 176);
      sub_100001CC0((v0 + 144), *(v0 + 168));
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v44 = *(type metadata accessor for LogMessage() - 8);
      v45 = *(v44 + 72);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v47._countAndFlagsBits = 0xD000000000000050;
      v47._object = 0x8000000100088280;
      LogMessage.StringInterpolation.appendLiteral(_:)(v47);
      *(v0 + 480) = &type metadata for String;
      *(v0 + 456) = v14;
      *(v0 + 464) = v15;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 456, &qword_1000A5630, &unk_100083BF0);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 144));
      v49 = v101[4];
      sub_100001CC0(v101, v101[3]);
      dispatch thunk of AssetPushSubscriptionStore.resetPending(channelID:)();
      sub_10003FDF0(v14, v15, 3);
      if (v97)
      {
        goto LABEL_48;
      }
    }

    sub_10003FDF0(v14, v15, v16);
    v97 = 0;
LABEL_7:
    v1 = *(v0 + 768) + 1;
    if (v1 == *(v0 + 720))
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_43:
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v68 = *(v0 + 760);
  v69 = *(v0 + 656);
  *(v0 + 792) = qword_1000A63A0;
  TaskLocal.get()();
  v70 = *(v0 + 336);
  sub_100001CC0((v0 + 304), *(v0 + 328));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v71 = *(type metadata accessor for LogMessage() - 8);
  v72 = *(v71 + 72);
  v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 304));
  v74 = *(v69 + v68);
  v75 = async function pointer to JetPackAssetDiskCache._empty()[1];
  v76 = swift_task_alloc();
  *(v0 + 800) = v76;
  *v76 = v0;
  v76[1] = sub_100031E54;

  return JetPackAssetDiskCache._empty()();
}

uint64_t sub_100034264()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 816);
  v30 = *(v0 + 784);
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 776);
  v3 = *(v0 + 704);
  v27 = *(v0 + 656);
  v28 = *(v0 + 58);
  TaskLocal.get()();
  v4 = *(v0 + 216);
  sub_100001CC0((v0 + 184), *(v0 + 208));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x80000001000882E0;
  v8._countAndFlagsBits = 0xD000000000000031;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = *(v0 + 616);
  v10 = *(v0 + 624);
  *(v0 + 512) = v10;
  v11 = sub_1000061A4((v0 + 488));
  (*(*(v10 - 8) + 16))(v11, v9, v10);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 488, &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 184));
  v13 = *(v27 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 32);
  sub_100001CC0((v27 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v27 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
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
  *(v0 + 40) = v29;
  *(v0 + 48) = v30;
  *(v0 + 56) = v28;
  sub_10003FD80();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_10003FDF0(v29, v30, v28);
  v21 = *(v0 + 704);
  v22 = *(v0 + 696);
  v23 = *(v0 + 688);
  v24 = *(v0 + 680);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1000345DC()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 792);
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 776);
  v3 = *(v0 + 704);
  v27 = *(v0 + 656);
  v28 = *(v0 + 58);
  TaskLocal.get()();
  v4 = *(v0 + 216);
  sub_100001CC0((v0 + 184), *(v0 + 208));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x80000001000882E0;
  v8._countAndFlagsBits = 0xD000000000000031;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = *(v0 + 616);
  v10 = *(v0 + 624);
  *(v0 + 512) = v10;
  v11 = sub_1000061A4((v0 + 488));
  (*(*(v10 - 8) + 16))(v11, v9, v10);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 488, &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 184));
  v13 = *(v27 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 32);
  sub_100001CC0((v27 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v27 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
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
  *(v0 + 40) = v29;
  *(v0 + 48) = 0;
  *(v0 + 56) = v28;
  sub_10003FD80();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_10003FDF0(v29, 0, v28);
  v21 = *(v0 + 704);
  v22 = *(v0 + 696);
  v23 = *(v0 + 688);
  v24 = *(v0 + 680);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10003494C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[36] = a2;
  v3[37] = a3;
  v4 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[39] = v5;
  v6 = *(v5 - 8);
  v3[40] = v6;
  v7 = *(v6 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = type metadata accessor for AssetPushSubscriptionRecord();
  v3[43] = v8;
  v9 = *(v8 - 8);
  v3[44] = v9;
  v10 = *(v9 + 64) + 15;
  v3[45] = swift_task_alloc();

  return _swift_task_switch(sub_100034AA0, 0, 0);
}

uint64_t sub_100034AA0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore;
  *(v0 + 368) = OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore;
  v4 = *(v1 + v3 + 32);
  sub_100001CC0((v1 + v3), *(v1 + v3 + 24));
  v5 = type metadata accessor for PushMessage(0);
  v6 = (v2 + v5[6]);
  v7 = *v6;
  *(v0 + 376) = *v6;
  v8 = v6[1];
  *(v0 + 384) = v8;
  v9 = dispatch thunk of AssetPushSubscriptionStore.find(channelID:)();
  *(v0 + 392) = 0;
  v48 = v7;
  v10 = *(v9 + 16);
  if (v10)
  {
    v46 = v5;
    v47 = v8;
    v11 = *(v0 + 352);
    v13 = *(v11 + 16);
    v12 = v11 + 16;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v49 = *(v12 + 56);
    v50 = v13;
    v15 = &_swiftEmptyArrayStorage;
    do
    {
      v17 = *(v0 + 360);
      v18 = *(v0 + 344);
      v50(v17, v14, v18);
      v19 = AssetPushSubscriptionRecord.bundleID.getter();
      v21 = v20;
      (*(v12 - 8))(v17, v18);
      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_10001EC84(0, *(v15 + 2) + 1, 1, v15);
        }

        v23 = *(v15 + 2);
        v22 = *(v15 + 3);
        if (v23 >= v22 >> 1)
        {
          v15 = sub_10001EC84((v22 > 1), v23 + 1, 1, v15);
        }

        *(v15 + 2) = v23 + 1;
        v16 = &v15[16 * v23];
        *(v16 + 4) = v19;
        *(v16 + 5) = v21;
      }

      v14 += v49;
      --v10;
    }

    while (v10);

    v5 = v46;
    v8 = v47;
  }

  else
  {

    v15 = &_swiftEmptyArrayStorage;
  }

  v24 = *(v0 + 288);
  v25 = *(v0 + 296);
  *(v0 + 280) = v15;
  sub_100001D04(&qword_1000A5638, &qword_100085440);
  sub_100040238(&qword_1000A56C8, &qword_1000A5638, &qword_100085440);
  v26 = BidirectionalCollection<>.joined(separator:)();
  v28 = v27;

  v29 = *(v24 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 32);
  sub_100001CC0((v24 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger), *(v24 + OBJC_IVAR____TtC13jetpackassetd11PushManager_coreAnalyticsLogger + 24));
  v51 = *(v25 + v5[8]);
  *(v0 + 460) = v51;
  *(v0 + 456) = v5[5];

  result = Date.timeIntervalSince1970.getter();
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v45 = v28;
  v33 = *(v0 + 328);
  v32 = *(v0 + 336);
  v34 = v8;
  v36 = *(v0 + 312);
  v35 = *(v0 + 320);
  sub_1000064B4(*(v0 + 288) + OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider, v0 + 64);
  Date.init(timeIntervalSince1970:)();
  v37 = v26;
  v38 = *(v0 + 96);
  sub_100001CC0((v0 + 64), *(v0 + 88));
  dispatch thunk of DateProvider.now.getter();
  Date.timeIntervalSince(_:)();
  v40 = v39;
  v41 = *(v35 + 8);
  v41(v33, v36);
  v41(v32, v36);
  sub_100001D4C((v0 + 64));
  *(v0 + 16) = v48;
  *(v0 + 24) = v34;
  *(v0 + 32) = v37;
  *(v0 + 40) = v45;
  *(v0 + 48) = v51;
  *(v0 + 56) = v40;
  sub_10003FF60();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  v42 = swift_task_alloc();
  *(v0 + 400) = v42;
  *v42 = v0;
  v42[1] = sub_100034F60;
  v44 = *(v0 + 288);
  v43 = *(v0 + 296);

  return sub_100035A70(v43);
}

uint64_t sub_100034F60()
{
  v1 = *(*v0 + 400);
  v3 = *v0;

  return _swift_task_switch(sub_10003505C, 0, 0);
}

uint64_t sub_10003505C()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler;
  *(v0 + 408) = OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler;
  sub_100001CC0((v2 + v4), *(v2 + v4 + 24));
  v5 = swift_task_alloc();
  *(v0 + 416) = v5;
  *v5 = v0;
  v5[1] = sub_100035120;
  v6 = *(v0 + 460);

  return sub_100045B2C(v6, v3 + v1);
}

uint64_t sub_100035120(double a1, double a2)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  v6 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = a2;

  return _swift_task_switch(sub_100035220, 0, 0);
}

uint64_t sub_100035220()
{
  v1 = *(v0 + 460);
  v2 = (*(v0 + 288) + *(v0 + 368));
  v3 = v2[4];
  sub_100001CC0(v2, v2[3]);
  v4 = v1 != 4;
  if (v1 == 3)
  {
    v4 = 0;
  }

  v5 = v1 > 2 && v4;
  v6 = *(v0 + 424);
  v7 = *(v0 + 432);
  v8 = *(v0 + 456);
  v9 = *(v0 + 384);
  v10 = *(v0 + 392);
  v11 = *(v0 + 376);
  v12 = *(v0 + 296);
  v13 = dispatch thunk of AssetPushSubscriptionStore.updateToPending(channelID:scheduleAfter:scheduleBefore:priority:timestamp:)();
  if (v10)
  {
    v14 = *(v0 + 360);
    v15 = *(v0 + 328);
    v16 = *(v0 + 336);
    v17 = *(v0 + 304);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = v13;
    if (qword_1000A4D48 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 384);
    v22 = *(v0 + 304);
    v41 = *(v0 + 376);
    TaskLocal.get()();
    v42 = *(v0 + 136);
    sub_100001CC0((v0 + 104), *(v0 + 128));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v23 = *(type metadata accessor for LogMessage() - 8);
    v24 = *(v23 + 80);
    v40 = *(v23 + 72);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._countAndFlagsBits = 0xD000000000000024;
    v25._object = 0x8000000100088630;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    *(v0 + 208) = &type metadata for Int;
    *(v0 + 184) = v20;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 184, &qword_1000A5630, &unk_100083BF0);
    v26._object = 0x8000000100088660;
    v26._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(v0 + 240) = &type metadata for String;
    *(v0 + 216) = v41;
    *(v0 + 224) = v21;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 104));
    if ((v5 & jet_debug_tooling_os_variant_has_internal_content()()) == 1)
    {
      v29 = *(v0 + 424);
      v28 = *(v0 + 432);
      v30 = *(v0 + 304);
      v31 = (*(v0 + 288) + *(v0 + 408));
      TaskLocal.get()();
      v32 = *(v0 + 176);
      sub_100001CC0((v0 + 144), *(v0 + 168));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v33._countAndFlagsBits = 0xD000000000000044;
      v33._object = 0x8000000100088690;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      *(v0 + 272) = &type metadata for ScheduleTime;
      *(v0 + 248) = v29;
      *(v0 + 256) = v28;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 144));
      sub_100001CC0(v31, v31[3]);
      v35 = swift_task_alloc();
      *(v0 + 440) = v35;
      *v35 = v0;
      v35[1] = sub_100035788;
      v36 = *(v0 + 424);
      v37 = *(v0 + 432);

      return sub_100045514(v36, v37);
    }

    else
    {
      v38 = (*(v0 + 288) + *(v0 + 408));
      sub_100001CC0(v38, v38[3]);
      v39 = swift_task_alloc();
      *(v0 + 448) = v39;
      *v39 = v0;
      v39[1] = sub_1000358FC;

      return sub_1000473EC();
    }
  }
}

uint64_t sub_100035788()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v9 = *v0;

  v3 = v1[45];
  v4 = v1[42];
  v5 = v1[41];
  v6 = v1[38];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1000358FC()
{
  v1 = *v0;
  v2 = *(*v0 + 448);
  v9 = *v0;

  v3 = v1[45];
  v4 = v1[42];
  v5 = v1[41];
  v6 = v1[38];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_100035A70(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  v3 = type metadata accessor for JetPackAsset.Metadata();
  v2[47] = v3;
  v4 = *(v3 - 8);
  v2[48] = v4;
  v5 = *(v4 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v6 = *(*(sub_100001D04(&qword_1000A4EE8, &qword_100083C08) - 8) + 64) + 15;
  v2[51] = swift_task_alloc();
  v7 = type metadata accessor for JetPackAsset();
  v2[52] = v7;
  v8 = *(v7 - 8);
  v2[53] = v8;
  v9 = *(v8 + 64) + 15;
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v10 = type metadata accessor for AssetPushSubscriptionRecord();
  v2[56] = v10;
  v11 = *(v10 - 8);
  v2[57] = v11;
  v12 = *(v11 + 64) + 15;
  v2[58] = swift_task_alloc();
  v13 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[59] = swift_task_alloc();
  v14 = *(*(sub_100001D04(&qword_1000A56E0, &unk_100083BE0) - 8) + 64) + 15;
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v15 = type metadata accessor for Date();
  v2[62] = v15;
  v16 = *(v15 - 8);
  v2[63] = v16;
  v17 = *(v16 + 64) + 15;
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();

  return _swift_task_switch(sub_100035D10, 0, 0);
}

uint64_t sub_100035D10()
{
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v0 + 360);
  v5 = type metadata accessor for PushMessage(0);
  *(v0 + 528) = v5;
  v6 = (v4 + *(v5 + 24));
  v8 = *v6;
  v7 = v6[1];
  sub_100002758(v4 + *(v5 + 36), v3, &qword_1000A56E0, &unk_100083BE0);
  v9 = *(v1 + 48);
  *(v0 + 536) = v9;
  *(v0 + 544) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v3, 1, v2) == 1)
  {
    sub_10000DCA0(*(v0 + 488), &qword_1000A56E0, &unk_100083BE0);
LABEL_6:
    v22 = *(v0 + 520);
    v23 = *(v0 + 512);
    v25 = *(v0 + 480);
    v24 = *(v0 + 488);
    v27 = *(v0 + 464);
    v26 = *(v0 + 472);
    v29 = *(v0 + 432);
    v28 = *(v0 + 440);
    v31 = *(v0 + 400);
    v30 = *(v0 + 408);
    v61 = *(v0 + 392);

    v32 = *(v0 + 8);

    return v32();
  }

  v10 = v8;
  v11 = *(v0 + 520);
  v12 = *(v0 + 496);
  v13 = *(v0 + 504);
  v14 = *(v0 + 488);
  v15 = *(v13 + 32);
  *(v0 + 552) = v15;
  *(v0 + 560) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v15(v11, v14, v12);
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 472);
  v60 = *(v0 + 368);
  *(v0 + 568) = qword_1000A63A0;
  TaskLocal.get()();
  v58 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  *(v0 + 576) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v17 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 584) = *(v17 + 72);
  *(v0 + 688) = *(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x80000001000886E0;
  v18._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  *(v0 + 160) = &type metadata for String;
  *(v0 + 136) = v10;
  *(v0 + 144) = v7;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 136, &qword_1000A5630, &unk_100083BF0);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 16));
  v20 = *(v60 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore + 32);
  sub_100001CC0((v60 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore), *(v60 + OBJC_IVAR____TtC13jetpackassetd11PushManager_pushSubscriptionStore + 24));
  v21 = dispatch thunk of AssetPushSubscriptionStore.find(channelID:)();
  v34 = *(v21 + 16);
  if (v34)
  {
    v35 = *(v0 + 456);
    v37 = *(v35 + 16);
    v36 = v35 + 16;
    v38 = v21 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v59 = *(v36 + 56);
    v62 = v37;
    v39 = &_swiftEmptyArrayStorage;
    do
    {
      v41 = *(v0 + 464);
      v42 = *(v0 + 448);
      v62(v41, v38, v42);
      v43 = AssetPushSubscriptionRecord.assetURLString.getter();
      v45 = v44;
      (*(v36 - 8))(v41, v42);
      if (v45)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_10001EC84(0, *(v39 + 2) + 1, 1, v39);
        }

        v47 = *(v39 + 2);
        v46 = *(v39 + 3);
        if (v47 >= v46 >> 1)
        {
          v39 = sub_10001EC84((v46 > 1), v47 + 1, 1, v39);
        }

        *(v39 + 2) = v47 + 1;
        v40 = &v39[16 * v47];
        *(v40 + 4) = v43;
        *(v40 + 5) = v45;
      }

      v38 += v59;
      --v34;
    }

    while (v34);
  }

  else
  {

    v39 = &_swiftEmptyArrayStorage;
  }

  *(v0 + 592) = v39;
  v48 = *(v39 + 2);
  *(v0 + 600) = v48;
  if (!v48)
  {
    v55 = *(v0 + 520);
    v56 = *(v0 + 496);
    v57 = *(v0 + 504);

    (*(v57 + 8))(v55, v56);
    goto LABEL_6;
  }

  *(v0 + 608) = *(*(v0 + 368) + OBJC_IVAR____TtC13jetpackassetd11PushManager_diskCache);
  *(v0 + 616) = 0;
  v49 = *(v39 + 4);
  *(v0 + 624) = v49;
  v50 = *(v39 + 5);
  *(v0 + 632) = v50;
  v51 = async function pointer to JetPackAssetDiskCache._asset(for:)[1];

  v52 = swift_task_alloc();
  *(v0 + 640) = v52;
  *v52 = v0;
  v52[1] = sub_10003641C;
  v53 = *(v0 + 608);
  v54 = *(v0 + 408);

  return JetPackAssetDiskCache._asset(for:)(v54, v49, v50);
}

uint64_t sub_10003641C()
{
  v2 = *(*v1 + 640);
  v5 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = sub_100036F3C;
  }

  else
  {
    v3 = sub_100036530;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100036530()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 408);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 632);

    sub_10000DCA0(v3, &qword_1000A4EE8, &qword_100083C08);
    goto LABEL_15;
  }

  v79 = *(v0 + 536);
  v80 = *(v0 + 544);
  v5 = *(v0 + 496);
  v6 = *(v0 + 480);
  v7 = *(v0 + 400);
  v8 = *(v0 + 376);
  v9 = *(v0 + 384);
  (*(v2 + 32))(*(v0 + 440), v3, v1);
  JetPackAsset.metadata.getter();
  JetPackAsset.Metadata.lastModifiedDate.getter();
  v10 = *(v9 + 8);
  v10(v7, v8);
  if (v79(v6, 1, v5) == 1)
  {
    v81 = *(v0 + 544);
    v11 = *(v0 + 536);
    v12 = *(v0 + 512);
    v13 = *(v0 + 496);
    v14 = *(v0 + 480);
    v15 = *(v0 + 440);
    v16 = *(v0 + 392);
    v17 = *(v0 + 376);
    JetPackAsset.metadata.getter();
    JetPackAsset.Metadata.revalidatedAt.getter();
    v10(v16, v17);
    if (v11(v14, 1, v13) != 1)
    {
      sub_10000DCA0(*(v0 + 480), &qword_1000A56E0, &unk_100083BE0);
    }
  }

  else
  {
    v18 = *(v0 + 560);
    (*(v0 + 552))(*(v0 + 512), *(v0 + 480), *(v0 + 496));
  }

  v19 = *(v0 + 520);
  v20 = *(v0 + 512);
  v21 = *(v0 + 496);
  sub_10004019C(&qword_1000A56E8, &type metadata accessor for Date);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*(*(v0 + 360) + *(*(v0 + 528) + 40)) != 1)
  {
    v29 = *(v0 + 648);
    v30 = *(v0 + 608);
    JetPackAssetDiskCache._evict(cacheKey:)(*(v0 + 624));
    if (v31)
    {
      v32 = *(v0 + 440);
      v33 = *(v0 + 416);
      v34 = *(v0 + 424);
      (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
      (*(v34 + 8))(v32, v33);
      v78 = *(v0 + 632);
      v35 = *(v0 + 624);
      v36 = *(v0 + 688);
      v37 = *(v0 + 584);
      v38 = *(v0 + 576);
      v39 = *(v0 + 568);
      v40 = *(v0 + 472);
      TaskLocal.get()();
      v82 = *(v0 + 128);
      sub_100001CC0((v0 + 96), *(v0 + 120));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v41._object = 0x8000000100088750;
      v41._countAndFlagsBits = 0xD000000000000035;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v0 + 224) = &type metadata for String;
      *(v0 + 200) = v35;
      *(v0 + 208) = v78;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 200, &qword_1000A5630, &unk_100083BF0);
      v42._countAndFlagsBits = 0x726F727265202C27;
      v42._object = 0xEA0000000000203ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      swift_getErrorValue();
      v43 = *(v0 + 320);
      v44 = *(v0 + 328);
      *(v0 + 256) = v44;
      v45 = sub_1000061A4((v0 + 232));
      (*(*(v44 - 8) + 16))(v45, v43, v44);
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 232, &qword_1000A5630, &unk_100083BF0);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v0 + 96));
      goto LABEL_15;
    }

LABEL_14:
    v47 = *(v0 + 632);
    v49 = *(v0 + 504);
    v48 = *(v0 + 512);
    v50 = *(v0 + 496);
    v51 = *(v0 + 440);
    v52 = *(v0 + 416);
    v53 = *(v0 + 424);

    (*(v49 + 8))(v48, v50);
    (*(v53 + 8))(v51, v52);
LABEL_15:
    v54 = *(v0 + 616) + 1;
    if (v54 == *(v0 + 600))
    {
      v55 = *(v0 + 592);
      v56 = *(v0 + 520);
      v57 = *(v0 + 496);
      v58 = *(v0 + 504);

      (*(v58 + 8))(v56, v57);
      v59 = *(v0 + 520);
      v60 = *(v0 + 512);
      v62 = *(v0 + 480);
      v61 = *(v0 + 488);
      v64 = *(v0 + 464);
      v63 = *(v0 + 472);
      v66 = *(v0 + 432);
      v65 = *(v0 + 440);
      v68 = *(v0 + 400);
      v67 = *(v0 + 408);
      v83 = *(v0 + 392);

      v69 = *(v0 + 8);

      return v69();
    }

    else
    {
      *(v0 + 616) = v54;
      v70 = *(v0 + 592) + 16 * v54;
      v71 = *(v70 + 32);
      *(v0 + 624) = v71;
      v72 = *(v70 + 40);
      *(v0 + 632) = v72;
      v73 = async function pointer to JetPackAssetDiskCache._asset(for:)[1];

      v74 = swift_task_alloc();
      *(v0 + 640) = v74;
      *v74 = v0;
      v74[1] = sub_10003641C;
      v75 = *(v0 + 608);
      v76 = *(v0 + 408);

      return JetPackAssetDiskCache._asset(for:)(v76, v71, v72);
    }
  }

  v22 = *(v0 + 440);
  v23 = JetPackAsset.metadata.modify();
  JetPackAsset.Metadata.serverExpired.setter();
  v23(v0 + 264, 0);
  v24 = async function pointer to JetPackAssetDiskCache._cache(_:)[1];
  v25 = swift_task_alloc();
  *(v0 + 656) = v25;
  *v25 = v0;
  v25[1] = sub_100036BE4;
  v26 = *(v0 + 608);
  v27 = *(v0 + 432);
  v28 = *(v0 + 440);

  return JetPackAssetDiskCache._cache(_:)(v27, v28);
}

uint64_t sub_100036BE4()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v11 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v4 = sub_1000372BC;
  }

  else
  {
    v5 = v2[79];
    v7 = v2[53];
    v6 = v2[54];
    v8 = v2[52];
    v9 = *(v7 + 8);
    v2[84] = v9;
    v2[85] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);

    v4 = sub_100036D2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100036D2C()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[55];
  v4 = v0[52];
  (*(v0[63] + 8))(v0[64], v0[62]);
  v2(v3, v4);
  v5 = v0[77] + 1;
  if (v5 == v0[75])
  {
    v6 = v0[74];
    v7 = v0[65];
    v8 = v0[62];
    v9 = v0[63];

    (*(v9 + 8))(v7, v8);
    v10 = v0[65];
    v11 = v0[64];
    v13 = v0[60];
    v12 = v0[61];
    v15 = v0[58];
    v14 = v0[59];
    v17 = v0[54];
    v16 = v0[55];
    v19 = v0[50];
    v18 = v0[51];
    v29 = v0[49];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v0[77] = v5;
    v22 = v0[74] + 16 * v5;
    v23 = *(v22 + 32);
    v0[78] = v23;
    v24 = *(v22 + 40);
    v0[79] = v24;
    v25 = async function pointer to JetPackAssetDiskCache._asset(for:)[1];

    v26 = swift_task_alloc();
    v0[80] = v26;
    *v26 = v0;
    v26[1] = sub_10003641C;
    v27 = v0[76];
    v28 = v0[51];

    return JetPackAssetDiskCache._asset(for:)(v28, v23, v24);
  }
}

uint64_t sub_100036F3C()
{
  v38 = *(v0 + 648);
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 688);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(v0 + 568);
  v7 = *(v0 + 472);
  TaskLocal.get()();
  v39 = *(v0 + 128);
  sub_100001CC0((v0 + 96), *(v0 + 120));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100088750;
  v8._countAndFlagsBits = 0xD000000000000035;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  *(v0 + 200) = v2;
  *(v0 + 224) = &type metadata for String;
  *(v0 + 208) = v1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 200, &qword_1000A5630, &unk_100083BF0);
  v9._countAndFlagsBits = 0x726F727265202C27;
  v9._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  swift_getErrorValue();
  v10 = *(v0 + 320);
  v11 = *(v0 + 328);
  *(v0 + 256) = v11;
  v12 = sub_1000061A4((v0 + 232));
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 232, &qword_1000A5630, &unk_100083BF0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 96));
  v14 = *(v0 + 616) + 1;
  if (v14 == *(v0 + 600))
  {
    v15 = *(v0 + 592);
    v16 = *(v0 + 520);
    v17 = *(v0 + 496);
    v18 = *(v0 + 504);

    (*(v18 + 8))(v16, v17);
    v19 = *(v0 + 520);
    v20 = *(v0 + 512);
    v22 = *(v0 + 480);
    v21 = *(v0 + 488);
    v24 = *(v0 + 464);
    v23 = *(v0 + 472);
    v26 = *(v0 + 432);
    v25 = *(v0 + 440);
    v28 = *(v0 + 400);
    v27 = *(v0 + 408);
    v40 = *(v0 + 392);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    *(v0 + 616) = v14;
    v31 = *(v0 + 592) + 16 * v14;
    v32 = *(v31 + 32);
    *(v0 + 624) = v32;
    v33 = *(v31 + 40);
    *(v0 + 632) = v33;
    v34 = async function pointer to JetPackAssetDiskCache._asset(for:)[1];

    v35 = swift_task_alloc();
    *(v0 + 640) = v35;
    *v35 = v0;
    v35[1] = sub_10003641C;
    v36 = *(v0 + 608);
    v37 = *(v0 + 408);

    return JetPackAssetDiskCache._asset(for:)(v37, v32, v33);
  }
}

uint64_t sub_1000372BC()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
  (*(v3 + 8))(v1, v2);
  v41 = *(v0 + 664);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  v6 = *(v0 + 688);
  v7 = *(v0 + 584);
  v8 = *(v0 + 576);
  v9 = *(v0 + 568);
  v10 = *(v0 + 472);
  TaskLocal.get()();
  v42 = *(v0 + 128);
  sub_100001CC0((v0 + 96), *(v0 + 120));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x8000000100088750;
  v11._countAndFlagsBits = 0xD000000000000035;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 200) = v5;
  *(v0 + 224) = &type metadata for String;
  *(v0 + 208) = v4;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 200, &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0x726F727265202C27;
  v12._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  swift_getErrorValue();
  v13 = *(v0 + 320);
  v14 = *(v0 + 328);
  *(v0 + 256) = v14;
  v15 = sub_1000061A4((v0 + 232));
  (*(*(v14 - 8) + 16))(v15, v13, v14);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 232, &qword_1000A5630, &unk_100083BF0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 96));
  v17 = *(v0 + 616) + 1;
  if (v17 == *(v0 + 600))
  {
    v18 = *(v0 + 592);
    v19 = *(v0 + 520);
    v20 = *(v0 + 496);
    v21 = *(v0 + 504);

    (*(v21 + 8))(v19, v20);
    v22 = *(v0 + 520);
    v23 = *(v0 + 512);
    v25 = *(v0 + 480);
    v24 = *(v0 + 488);
    v27 = *(v0 + 464);
    v26 = *(v0 + 472);
    v29 = *(v0 + 432);
    v28 = *(v0 + 440);
    v31 = *(v0 + 400);
    v30 = *(v0 + 408);
    v43 = *(v0 + 392);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    *(v0 + 616) = v17;
    v34 = *(v0 + 592) + 16 * v17;
    v35 = *(v34 + 32);
    *(v0 + 624) = v35;
    v36 = *(v34 + 40);
    *(v0 + 632) = v36;
    v37 = async function pointer to JetPackAssetDiskCache._asset(for:)[1];

    v38 = swift_task_alloc();
    *(v0 + 640) = v38;
    *v38 = v0;
    v38[1] = sub_10003641C;
    v39 = *(v0 + 608);
    v40 = *(v0 + 408);

    return JetPackAssetDiskCache._asset(for:)(v40, v35, v36);
  }
}

uint64_t sub_100037704(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a5;
  *(v5 + 88) = a1;
  v6 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  if (qword_1000A4DC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10004019C(&qword_1000A5660, type metadata accessor for DaemonActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100037824, v8, v7);
}

uint64_t sub_100037824()
{
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  TaskLocal.get()();
  v4 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100087FE0;
  v8._countAndFlagsBits = 0xD000000000000089;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v0[10] = &type metadata for Double;
  v0[7] = v3;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0((v0 + 7), &qword_1000A5630, &unk_100083BF0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(v0 + 2);
  sub_100001CC0((v2 + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler), *(v2 + OBJC_IVAR____TtC13jetpackassetd11PushManager_scheduler + 24));
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100037A70;

  return sub_100048AA4();
}

uint64_t sub_100037A70()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100037B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_100001D04(&qword_1000A4ED8, &qword_100084010) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_100002758(a3, v23 - v9, &qword_1000A4ED8, &qword_100084010);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000DCA0(v10, &qword_1000A4ED8, &qword_100084010);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10000DCA0(a3, &qword_1000A4ED8, &qword_100084010);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000DCA0(a3, &qword_1000A4ED8, &qword_100084010);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

id sub_100037EC8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PushManager()
{
  result = qword_1000A5600;
  if (!qword_1000A5600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000380F8()
{
  sub_10003821C(319, &qword_1000A5610);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10003821C(319, &qword_1000A5618);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003821C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for PreferenceKey();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100038318()
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
  v4[1] = sub_100038420;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000014, 0x8000000100087E60, sub_1000386B0, v2, v5);
}

uint64_t sub_100038420()
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

    v4 = sub_10003853C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100038558@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC13jetpackassetd11PushManager_localPreferences);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v7)
  {
    v4 = 1;
  }

  else
  {
    Date.init(timeIntervalSince1970:)();
    v4 = 0;
  }

  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 56))(a1, v4, 1, v5);
}

uint64_t sub_1000386D0()
{
  v1 = sub_100001D04(&qword_1000A5640, &qword_100085448);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

char *sub_100038764(unint64_t a1, unint64_t *a2)
{
  v5 = *(sub_100001D04(&qword_1000A5640, &qword_100085448) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100029ACC(a1, a2, v6);
}

uint64_t sub_1000387F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100038808(uint64_t a1)
{
  v2[53] = a1;
  v2[54] = v1;
  v3 = type metadata accessor for MetricsData();
  v2[55] = v3;
  v4 = *(v3 - 8);
  v2[56] = v4;
  v5 = *(v4 + 64) + 15;
  v2[57] = swift_task_alloc();
  v6 = type metadata accessor for LintedMetricsEvent();
  v2[58] = v6;
  v7 = *(v6 - 8);
  v2[59] = v7;
  v8 = *(v7 + 64) + 15;
  v2[60] = swift_task_alloc();
  v9 = type metadata accessor for MetricsPipeline();
  v2[61] = v9;
  v10 = *(v9 - 8);
  v2[62] = v10;
  v11 = *(v10 + 64) + 15;
  v2[63] = swift_task_alloc();
  v12 = sub_100001D04(&qword_1000A5690, &qword_1000854D0);
  v2[64] = v12;
  v13 = *(v12 - 8);
  v2[65] = v13;
  v14 = *(v13 + 64) + 15;
  v2[66] = swift_task_alloc();
  v15 = type metadata accessor for MetricsFieldsContext();
  v2[67] = v15;
  v16 = *(v15 - 8);
  v2[68] = v16;
  v17 = *(v16 + 64) + 15;
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v18 = sub_100001D04(&qword_1000A5698, &qword_1000854D8);
  v2[71] = v18;
  v19 = *(v18 - 8);
  v2[72] = v19;
  v20 = *(v19 + 64) + 15;
  v2[73] = swift_task_alloc();
  v21 = type metadata accessor for Bag();
  v2[74] = v21;
  v22 = *(v21 - 8);
  v2[75] = v22;
  v23 = *(v22 + 64) + 15;
  v2[76] = swift_task_alloc();
  v24 = type metadata accessor for MetricsSamplingLottery();
  v2[77] = v24;
  v25 = *(v24 - 8);
  v2[78] = v25;
  v26 = *(v25 + 64) + 15;
  v2[79] = swift_task_alloc();
  v27 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[80] = swift_task_alloc();
  v28 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();

  return _swift_task_switch(sub_100038C10, v1, 0);
}

uint64_t sub_100038C10()
{
  if (static MetricsDiagnosticsAndUsage.diagnosticsSubmissionAllowed.getter())
  {
    v1 = v0[54];
    v2 = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_bagManager;
    v0[87] = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_bagManager;
    sub_100001CC0((v1 + v2), *(v1 + v2 + 24));
    v3 = swift_task_alloc();
    v0[88] = v3;
    *v3 = v0;
    v3[1] = sub_100038F1C;
    v4 = v0[86];

    return sub_100015738(v4);
  }

  else
  {
    if (qword_1000A4D60 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v6 = v0[6];
    sub_100001CC0(v0 + 2, v0[5]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v7 = *(type metadata accessor for LogMessage() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();

    sub_100001D4C(v0 + 2);
    v10 = v0[86];
    v11 = v0[85];
    v12 = v0[84];
    v13 = v0[83];
    v14 = v0[82];
    v15 = v0[81];
    v16 = v0[80];
    v17 = v0[79];
    v18 = v0[76];
    v19 = v0[73];
    v21 = v0[70];
    v22 = v0[69];
    v23 = v0[66];
    v24 = v0[63];
    v25 = v0[60];
    v26 = v0[57];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100038F1C()
{
  v1 = *(*v0 + 704);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return _swift_task_switch(sub_10003902C, v2, 0);
}

uint64_t sub_10003902C()
{
  v1 = *(v0 + 424);
  v2 = *(v1 + 80) == 0x74736575716572 && *(v1 + 88) == 0xE700000000000000;
  if (v2 || (v3 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 = *(v0 + 424), (v3 & 1) != 0))
  {
    v5 = sub_10006C5C4(*(v0 + 688));
  }

  else
  {
    v5 = sub_10006C8B4(*(v0 + 688));
  }

  v6 = v5;
  if (qword_1000A4D60 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  *(v0 + 712) = qword_1000A63B8;
  TaskLocal.get()();
  v75 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(v0 + 720) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v9 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 728) = *(v9 + 72);
  *(v0 + 824) = *(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100088450;
  v10._countAndFlagsBits = 0xD000000000000018;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  *(v0 + 320) = &type metadata for String;
  strcpy((v0 + 296), "assetRequest");
  *(v0 + 309) = 0;
  *(v0 + 310) = -5120;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 296, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 8250;
  v11._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 352) = &type metadata for Double;
  *(v0 + 328) = v6;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 328, &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 56));
  MetricsSamplingLottery.init(eventName:percentage:duration:)();
  if ((MetricsSamplingLottery.shouldCollect.getter() & 1) == 0)
  {
    v27 = *(v0 + 640);
    v73 = *(v0 + 632);
    v77 = *(v0 + 688);
    v28 = *(v0 + 624);
    v70 = *(v0 + 616);
    TaskLocal.get()();
    v29 = *(v0 + 128);
    sub_100001CC0((v0 + 96), *(v0 + 120));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._countAndFlagsBits = 0xD000000000000030;
    v30._object = 0x8000000100088470;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    *(v0 + 384) = &type metadata for String;
    strcpy((v0 + 360), "assetRequest");
    *(v0 + 373) = 0;
    *(v0 + 374) = -5120;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 360, &qword_1000A5630, &unk_100083BF0);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    (*(v28 + 8))(v73, v70);
    sub_10000DCA0(v77, &unk_1000A56A0, &unk_100083E10);
    sub_100001D4C((v0 + 96));
    v32 = *(v0 + 688);
    v33 = *(v0 + 680);
    v34 = *(v0 + 672);
    v35 = *(v0 + 664);
    v36 = *(v0 + 656);
    v37 = *(v0 + 648);
    v38 = *(v0 + 640);
    v39 = *(v0 + 632);
    v40 = *(v0 + 608);
    v41 = *(v0 + 584);
    v78 = *(v0 + 560);
    v80 = *(v0 + 552);
    v82 = *(v0 + 528);
    v84 = *(v0 + 504);
    v86 = *(v0 + 480);
    v88 = *(v0 + 456);

    v42 = *(v0 + 8);
LABEL_16:

    return v42();
  }

  v13 = *(v0 + 680);
  v14 = *(v0 + 672);
  v15 = *(v0 + 640);
  v16 = *(v0 + 600);
  v72 = *(v0 + 688);
  v76 = *(v0 + 592);
  TaskLocal.get()();
  v69 = *(v0 + 168);
  sub_100001CC0((v0 + 136), *(v0 + 160));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0xD000000000000028;
  v17._object = 0x80000001000884B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  *(v0 + 416) = &type metadata for String;
  strcpy((v0 + 392), "assetRequest");
  *(v0 + 405) = 0;
  *(v0 + 406) = -5120;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 392, &qword_1000A5630, &unk_100083BF0);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 136));
  sub_100002758(v72, v13, &unk_1000A56A0, &unk_100083E10);
  sub_100002758(v13, v14, &unk_1000A56A0, &unk_100083E10);
  v19 = *(v16 + 48);
  *(v0 + 736) = v19;
  *(v0 + 744) = (v16 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v16) = v19(v14, 1, v76);
  sub_10000DCA0(v14, &unk_1000A56A0, &unk_100083E10);
  if (v16 == 1)
  {
    v20 = (*(v0 + 432) + *(v0 + 696));
    TaskLocal.get()();
    v21 = *(v0 + 208);
    sub_100001CC0((v0 + 176), *(v0 + 200));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 176));
    sub_100001CC0(v20, v20[3]);
    *(v0 + 752) = sub_1000168D4();
    v22 = sub_100001D04(&qword_1000A4FB8, &qword_100084008);
    v23 = sub_100040238(&qword_1000A56B0, &qword_1000A4FB8, &qword_100084008);
    v24 = async function pointer to dispatch thunk of Future.then()[1];
    v25 = swift_task_alloc();
    *(v0 + 760) = v25;
    *v25 = v0;
    v25[1] = sub_100039BBC;
    v26 = *(v0 + 664);

    return dispatch thunk of Future.then()(v26, v22, v23);
  }

  v43 = *(v0 + 744);
  v44 = *(v0 + 736);
  v45 = *(v0 + 656);
  v46 = *(v0 + 592);
  sub_100002758(*(v0 + 680), v45, &unk_1000A56A0, &unk_100083E10);
  if (v44(v45, 1, v46) == 1)
  {
    v47 = *(v0 + 824);
    v48 = *(v0 + 728);
    v49 = *(v0 + 720);
    v50 = *(v0 + 712);
    sub_10000DCA0(*(v0 + 656), &unk_1000A56A0, &unk_100083E10);
    TaskLocal.get()();
    v51 = *(v0 + 248);
    sub_100001CC0((v0 + 216), *(v0 + 240));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 216));
    sub_10003FE0C();
    swift_allocError();
    swift_willThrow();
    v52 = *(v0 + 688);
    v53 = *(v0 + 672);
    v54 = *(v0 + 664);
    v65 = *(v0 + 656);
    v66 = *(v0 + 648);
    v55 = *(v0 + 632);
    v56 = *(v0 + 624);
    v57 = *(v0 + 616);
    v67 = *(v0 + 640);
    v68 = *(v0 + 608);
    v71 = *(v0 + 584);
    v74 = *(v0 + 560);
    v79 = *(v0 + 552);
    v81 = *(v0 + 528);
    v83 = *(v0 + 504);
    v85 = *(v0 + 480);
    v87 = *(v0 + 456);
    sub_10000DCA0(*(v0 + 680), &unk_1000A56A0, &unk_100083E10);
    (*(v56 + 8))(v55, v57);
    sub_10000DCA0(v52, &unk_1000A56A0, &unk_100083E10);

    v42 = *(v0 + 8);
    goto LABEL_16;
  }

  v58 = *(v0 + 584);
  (*(*(v0 + 600) + 32))(*(v0 + 608), *(v0 + 656), *(v0 + 592));
  v59 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v60 = async function pointer to Bag.Value.current(or:)[1];
  v61 = swift_task_alloc();
  *(v0 + 768) = v61;
  *v61 = v0;
  v61[1] = sub_100039D18;
  v62 = *(v0 + 584);
  v63 = *(v0 + 568);

  return Bag.Value.current(or:)(v0 + 828, sub_10006FE28, 0, v63);
}

uint64_t sub_100039BBC()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;

  v5 = *(v2 + 752);
  v6 = *(v2 + 432);
  if (v0)
  {

    v7 = sub_10003AFBC;
  }

  else
  {

    v7 = sub_10003ABB0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100039D18()
{
  v1 = *(*v0 + 768);
  v2 = *(*v0 + 584);
  v3 = *(*v0 + 576);
  v4 = *(*v0 + 568);
  v5 = *(*v0 + 432);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100039E84, v5, 0);
}

uint64_t sub_100039E84()
{
  if (*(v0 + 828) == 1)
  {
    v1 = *(v0 + 632);
    v2 = *(v0 + 616);
    v3 = *(v0 + 560);
    v4 = *(v0 + 552);
    v5 = *(v0 + 544);
    v6 = *(v0 + 536);
    v7 = *(v0 + 528);
    v8 = *(v0 + 520);
    v9 = *(v0 + 512);
    MetricsFieldsContext.init()();
    static MetricsFieldsContext.Property<A>.metricsSamplingLottery.getter();
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v8 + 8))(v7, v9);
    v10 = *(v5 + 8);
    *(v0 + 776) = v10;
    *(v0 + 784) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v11 = swift_task_alloc();
    *(v0 + 792) = v11;
    *v11 = v0;
    v11[1] = sub_10003A200;
    v12 = *(v0 + 608);
    v13 = *(v0 + 504);
    v14 = *(v0 + 432);

    return sub_10006FE34(v13, v12);
  }

  else
  {
    v16 = *(v0 + 824);
    v17 = *(v0 + 728);
    v18 = *(v0 + 720);
    v19 = *(v0 + 712);
    v42 = *(v0 + 632);
    v44 = *(v0 + 688);
    v20 = *(v0 + 624);
    v38 = *(v0 + 680);
    v40 = *(v0 + 616);
    v21 = *(v0 + 600);
    v34 = *(v0 + 592);
    v36 = *(v0 + 608);
    TaskLocal.get()();
    v22 = *(v0 + 288);
    sub_100001CC0((v0 + 256), *(v0 + 280));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    (*(v21 + 8))(v36, v34);
    sub_10000DCA0(v38, &unk_1000A56A0, &unk_100083E10);
    (*(v20 + 8))(v42, v40);
    sub_10000DCA0(v44, &unk_1000A56A0, &unk_100083E10);
    sub_100001D4C((v0 + 256));
    v23 = *(v0 + 688);
    v24 = *(v0 + 680);
    v25 = *(v0 + 672);
    v26 = *(v0 + 664);
    v27 = *(v0 + 656);
    v28 = *(v0 + 648);
    v29 = *(v0 + 640);
    v30 = *(v0 + 632);
    v31 = *(v0 + 608);
    v32 = *(v0 + 584);
    v35 = *(v0 + 560);
    v37 = *(v0 + 552);
    v39 = *(v0 + 528);
    v41 = *(v0 + 504);
    v43 = *(v0 + 480);
    v45 = *(v0 + 456);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_10003A200()
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *v1;
  *(*v1 + 800) = v0;

  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = sub_10003A5CC;
  }

  else
  {
    v6 = sub_10003A32C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10003A32C()
{
  v1 = v0[81];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[57];
  v5 = v0[53];
  (*(v2 + 16))(v1, v0[76], v3);
  (*(v2 + 56))(v1, 0, 1, v3);
  sub_10006CB98(v1, v4);
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);
  v6 = async function pointer to MetricsPipeline.process(_:using:)[1];
  v7 = swift_task_alloc();
  v0[101] = v7;
  *v7 = v0;
  v7[1] = sub_10003A458;
  v8 = v0[70];
  v9 = v0[63];
  v10 = v0[60];
  v11 = v0[57];

  return MetricsPipeline.process(_:using:)(v10, v11, v8);
}

uint64_t sub_10003A458()
{
  v2 = *v1;
  v3 = *(*v1 + 808);
  v15 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v4 = v2[54];
    (*(v2[56] + 8))(v2[57], v2[55]);
    v5 = sub_10003A9AC;
    v6 = v4;
  }

  else
  {
    v8 = v2[59];
    v7 = v2[60];
    v9 = v2[57];
    v10 = v2[58];
    v11 = v2[55];
    v12 = v2[56];
    v13 = v2[54];
    (*(v12 + 8))(v9, v11);
    (*(v8 + 8))(v7, v10);
    v5 = sub_10003A7B0;
    v6 = v13;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10003A5CC()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  (*(v0 + 776))(*(v0 + 560), *(v0 + 536));
  (*(v3 + 8))(v2, v4);
  v24 = *(v0 + 800);
  v5 = *(v0 + 688);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  v13 = *(v0 + 656);
  v14 = *(v0 + 648);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v15 = *(v0 + 640);
  v16 = *(v0 + 608);
  v17 = *(v0 + 584);
  v18 = *(v0 + 560);
  v19 = *(v0 + 552);
  v20 = *(v0 + 528);
  v21 = *(v0 + 504);
  v22 = *(v0 + 480);
  v23 = *(v0 + 456);
  sub_10000DCA0(*(v0 + 680), &unk_1000A56A0, &unk_100083E10);
  (*(v9 + 8))(v8, v10);
  sub_10000DCA0(v5, &unk_1000A56A0, &unk_100083E10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10003A7B0()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[85];
  v27 = v0[79];
  v29 = v0[86];
  v4 = v0[78];
  v25 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[70];
  v9 = v0[67];
  (*(v0[62] + 8))(v0[63], v0[61]);
  v2(v8, v9);
  (*(v6 + 8))(v5, v7);
  sub_10000DCA0(v3, &unk_1000A56A0, &unk_100083E10);
  (*(v4 + 8))(v27, v25);
  sub_10000DCA0(v29, &unk_1000A56A0, &unk_100083E10);
  v10 = v0[86];
  v11 = v0[85];
  v12 = v0[84];
  v13 = v0[83];
  v14 = v0[82];
  v15 = v0[81];
  v16 = v0[80];
  v17 = v0[79];
  v18 = v0[76];
  v19 = v0[73];
  v22 = v0[70];
  v23 = v0[69];
  v24 = v0[66];
  v26 = v0[63];
  v28 = v0[60];
  v30 = v0[57];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10003A9AC()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[74];
  v6 = v0[70];
  v7 = v0[67];
  (*(v0[62] + 8))(v0[63], v0[61]);
  v2(v6, v7);
  (*(v4 + 8))(v3, v5);
  v27 = v0[102];
  v8 = v0[86];
  v9 = v0[84];
  v10 = v0[83];
  v16 = v0[82];
  v17 = v0[81];
  v11 = v0[79];
  v12 = v0[78];
  v13 = v0[77];
  v18 = v0[80];
  v19 = v0[76];
  v20 = v0[73];
  v21 = v0[70];
  v22 = v0[69];
  v23 = v0[66];
  v24 = v0[63];
  v25 = v0[60];
  v26 = v0[57];
  sub_10000DCA0(v0[85], &unk_1000A56A0, &unk_100083E10);
  (*(v12 + 8))(v11, v13);
  sub_10000DCA0(v8, &unk_1000A56A0, &unk_100083E10);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10003ABB0()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 664);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);
  (*(v3 + 56))(v2, 0, 1, v4);
  sub_100018BC0(v2, v1);
  v5 = *(v0 + 744);
  v6 = *(v0 + 736);
  v7 = *(v0 + 656);
  v8 = *(v0 + 592);
  sub_100002758(*(v0 + 680), v7, &unk_1000A56A0, &unk_100083E10);
  if (v6(v7, 1, v8) == 1)
  {
    v9 = *(v0 + 824);
    v10 = *(v0 + 728);
    v11 = *(v0 + 720);
    v12 = *(v0 + 712);
    sub_10000DCA0(*(v0 + 656), &unk_1000A56A0, &unk_100083E10);
    TaskLocal.get()();
    v13 = *(v0 + 248);
    sub_100001CC0((v0 + 216), *(v0 + 240));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 216));
    sub_10003FE0C();
    swift_allocError();
    swift_willThrow();
    v14 = *(v0 + 688);
    v15 = *(v0 + 672);
    v16 = *(v0 + 664);
    v28 = *(v0 + 656);
    v29 = *(v0 + 648);
    v17 = *(v0 + 632);
    v18 = *(v0 + 624);
    v19 = *(v0 + 616);
    v30 = *(v0 + 640);
    v31 = *(v0 + 608);
    v32 = *(v0 + 584);
    v33 = *(v0 + 560);
    v34 = *(v0 + 552);
    v35 = *(v0 + 528);
    v36 = *(v0 + 504);
    v37 = *(v0 + 480);
    v38 = *(v0 + 456);
    sub_10000DCA0(*(v0 + 680), &unk_1000A56A0, &unk_100083E10);
    (*(v18 + 8))(v17, v19);
    sub_10000DCA0(v14, &unk_1000A56A0, &unk_100083E10);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 584);
    (*(*(v0 + 600) + 32))(*(v0 + 608), *(v0 + 656), *(v0 + 592));
    v23 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v24 = async function pointer to Bag.Value.current(or:)[1];
    v25 = swift_task_alloc();
    *(v0 + 768) = v25;
    *v25 = v0;
    v25[1] = sub_100039D18;
    v26 = *(v0 + 584);
    v27 = *(v0 + 568);

    return Bag.Value.current(or:)(v0 + 828, sub_10006FE28, 0, v27);
  }
}

uint64_t sub_10003AFBC()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 664);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);
  (*(v3 + 56))(v2, 1, 1, v4);
  sub_100018BC0(v2, v1);
  v5 = *(v0 + 744);
  v6 = *(v0 + 736);
  v7 = *(v0 + 656);
  v8 = *(v0 + 592);
  sub_100002758(*(v0 + 680), v7, &unk_1000A56A0, &unk_100083E10);
  if (v6(v7, 1, v8) == 1)
  {
    v9 = *(v0 + 824);
    v10 = *(v0 + 728);
    v11 = *(v0 + 720);
    v12 = *(v0 + 712);
    sub_10000DCA0(*(v0 + 656), &unk_1000A56A0, &unk_100083E10);
    TaskLocal.get()();
    v13 = *(v0 + 248);
    sub_100001CC0((v0 + 216), *(v0 + 240));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 216));
    sub_10003FE0C();
    swift_allocError();
    swift_willThrow();
    v14 = *(v0 + 688);
    v15 = *(v0 + 672);
    v16 = *(v0 + 664);
    v28 = *(v0 + 656);
    v29 = *(v0 + 648);
    v17 = *(v0 + 632);
    v18 = *(v0 + 624);
    v19 = *(v0 + 616);
    v30 = *(v0 + 640);
    v31 = *(v0 + 608);
    v32 = *(v0 + 584);
    v33 = *(v0 + 560);
    v34 = *(v0 + 552);
    v35 = *(v0 + 528);
    v36 = *(v0 + 504);
    v37 = *(v0 + 480);
    v38 = *(v0 + 456);
    sub_10000DCA0(*(v0 + 680), &unk_1000A56A0, &unk_100083E10);
    (*(v18 + 8))(v17, v19);
    sub_10000DCA0(v14, &unk_1000A56A0, &unk_100083E10);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 584);
    (*(*(v0 + 600) + 32))(*(v0 + 608), *(v0 + 656), *(v0 + 592));
    v23 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v24 = async function pointer to Bag.Value.current(or:)[1];
    v25 = swift_task_alloc();
    *(v0 + 768) = v25;
    *v25 = v0;
    v25[1] = sub_100039D18;
    v26 = *(v0 + 584);
    v27 = *(v0 + 568);

    return Bag.Value.current(or:)(v0 + 828, sub_10006FE28, 0, v27);
  }
}

uint64_t sub_10003B3C8(uint64_t a1)
{
  v2[53] = a1;
  v2[54] = v1;
  v3 = type metadata accessor for MetricsData();
  v2[55] = v3;
  v4 = *(v3 - 8);
  v2[56] = v4;
  v5 = *(v4 + 64) + 15;
  v2[57] = swift_task_alloc();
  v6 = type metadata accessor for LintedMetricsEvent();
  v2[58] = v6;
  v7 = *(v6 - 8);
  v2[59] = v7;
  v8 = *(v7 + 64) + 15;
  v2[60] = swift_task_alloc();
  v9 = type metadata accessor for MetricsPipeline();
  v2[61] = v9;
  v10 = *(v9 - 8);
  v2[62] = v10;
  v11 = *(v10 + 64) + 15;
  v2[63] = swift_task_alloc();
  v12 = sub_100001D04(&qword_1000A5690, &qword_1000854D0);
  v2[64] = v12;
  v13 = *(v12 - 8);
  v2[65] = v13;
  v14 = *(v13 + 64) + 15;
  v2[66] = swift_task_alloc();
  v15 = type metadata accessor for MetricsFieldsContext();
  v2[67] = v15;
  v16 = *(v15 - 8);
  v2[68] = v16;
  v17 = *(v16 + 64) + 15;
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v18 = sub_100001D04(&qword_1000A5698, &qword_1000854D8);
  v2[71] = v18;
  v19 = *(v18 - 8);
  v2[72] = v19;
  v20 = *(v19 + 64) + 15;
  v2[73] = swift_task_alloc();
  v21 = type metadata accessor for Bag();
  v2[74] = v21;
  v22 = *(v21 - 8);
  v2[75] = v22;
  v23 = *(v22 + 64) + 15;
  v2[76] = swift_task_alloc();
  v24 = type metadata accessor for MetricsSamplingLottery();
  v2[77] = v24;
  v25 = *(v24 - 8);
  v2[78] = v25;
  v26 = *(v25 + 64) + 15;
  v2[79] = swift_task_alloc();
  v27 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[80] = swift_task_alloc();
  v28 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();

  return _swift_task_switch(sub_10003B7D0, v1, 0);
}

uint64_t sub_10003B7D0()
{
  if (static MetricsDiagnosticsAndUsage.diagnosticsSubmissionAllowed.getter())
  {
    v1 = v0[54];
    v2 = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_bagManager;
    v0[87] = OBJC_IVAR____TtC13jetpackassetd22MetricsPipelineManager_bagManager;
    sub_100001CC0((v1 + v2), *(v1 + v2 + 24));
    v3 = swift_task_alloc();
    v0[88] = v3;
    *v3 = v0;
    v3[1] = sub_10003BADC;
    v4 = v0[86];

    return sub_100015738(v4);
  }

  else
  {
    if (qword_1000A4D60 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v6 = v0[6];
    sub_100001CC0(v0 + 2, v0[5]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v7 = *(type metadata accessor for LogMessage() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();

    sub_100001D4C(v0 + 2);
    v10 = v0[86];
    v11 = v0[85];
    v12 = v0[84];
    v13 = v0[83];
    v14 = v0[82];
    v15 = v0[81];
    v16 = v0[80];
    v17 = v0[79];
    v18 = v0[76];
    v19 = v0[73];
    v21 = v0[70];
    v22 = v0[69];
    v23 = v0[66];
    v24 = v0[63];
    v25 = v0[60];
    v26 = v0[57];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_10003BADC()
{
  v1 = *(*v0 + 704);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return _swift_task_switch(sub_10003BBEC, v2, 0);
}

uint64_t sub_10003BBEC()
{
  v1 = *(v0 + 424);
  v2 = sub_100071560(*(v0 + 688));
  if (qword_1000A4D60 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 640);
  v4 = *(v0 + 632);
  *(v0 + 712) = qword_1000A63B8;
  TaskLocal.get()();
  v71 = *(v0 + 88);
  sub_100001CC0((v0 + 56), *(v0 + 80));
  *(v0 + 720) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 728) = *(v5 + 72);
  *(v0 + 824) = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100088450;
  v6._countAndFlagsBits = 0xD000000000000018;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 320) = &type metadata for String;
  strcpy((v0 + 296), "pushReceived");
  *(v0 + 309) = 0;
  *(v0 + 310) = -5120;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 296, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 8250;
  v7._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  *(v0 + 352) = &type metadata for Double;
  *(v0 + 328) = v2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 328, &qword_1000A5630, &unk_100083BF0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 56));
  MetricsSamplingLottery.init(eventName:percentage:duration:)();
  if ((MetricsSamplingLottery.shouldCollect.getter() & 1) == 0)
  {
    v23 = *(v0 + 640);
    v69 = *(v0 + 632);
    v73 = *(v0 + 688);
    v24 = *(v0 + 624);
    v66 = *(v0 + 616);
    TaskLocal.get()();
    v25 = *(v0 + 128);
    sub_100001CC0((v0 + 96), *(v0 + 120));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v26._countAndFlagsBits = 0xD000000000000030;
    v26._object = 0x8000000100088470;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(v0 + 384) = &type metadata for String;
    strcpy((v0 + 360), "pushReceived");
    *(v0 + 373) = 0;
    *(v0 + 374) = -5120;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 360, &qword_1000A5630, &unk_100083BF0);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    (*(v24 + 8))(v69, v66);
    sub_10000DCA0(v73, &unk_1000A56A0, &unk_100083E10);
    sub_100001D4C((v0 + 96));
    v28 = *(v0 + 688);
    v29 = *(v0 + 680);
    v30 = *(v0 + 672);
    v31 = *(v0 + 664);
    v32 = *(v0 + 656);
    v33 = *(v0 + 648);
    v34 = *(v0 + 640);
    v35 = *(v0 + 632);
    v36 = *(v0 + 608);
    v37 = *(v0 + 584);
    v74 = *(v0 + 560);
    v76 = *(v0 + 552);
    v78 = *(v0 + 528);
    v80 = *(v0 + 504);
    v82 = *(v0 + 480);
    v84 = *(v0 + 456);

    v38 = *(v0 + 8);
LABEL_9:

    return v38();
  }

  v9 = *(v0 + 680);
  v10 = *(v0 + 672);
  v11 = *(v0 + 640);
  v12 = *(v0 + 600);
  v68 = *(v0 + 688);
  v72 = *(v0 + 592);
  TaskLocal.get()();
  v65 = *(v0 + 168);
  sub_100001CC0((v0 + 136), *(v0 + 160));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000028;
  v13._object = 0x80000001000884B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v0 + 416) = &type metadata for String;
  strcpy((v0 + 392), "pushReceived");
  *(v0 + 405) = 0;
  *(v0 + 406) = -5120;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 392, &qword_1000A5630, &unk_100083BF0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 136));
  sub_100002758(v68, v9, &unk_1000A56A0, &unk_100083E10);
  sub_100002758(v9, v10, &unk_1000A56A0, &unk_100083E10);
  v15 = *(v12 + 48);
  *(v0 + 736) = v15;
  *(v0 + 744) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v12) = v15(v10, 1, v72);
  sub_10000DCA0(v10, &unk_1000A56A0, &unk_100083E10);
  if (v12 == 1)
  {
    v16 = (*(v0 + 432) + *(v0 + 696));
    TaskLocal.get()();
    v17 = *(v0 + 208);
    sub_100001CC0((v0 + 176), *(v0 + 200));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 176));
    sub_100001CC0(v16, v16[3]);
    *(v0 + 752) = sub_1000168D4();
    v18 = sub_100001D04(&qword_1000A4FB8, &qword_100084008);
    v19 = sub_100040238(&qword_1000A56B0, &qword_1000A4FB8, &qword_100084008);
    v20 = async function pointer to dispatch thunk of Future.then()[1];
    v21 = swift_task_alloc();
    *(v0 + 760) = v21;
    *v21 = v0;
    v21[1] = sub_10003C738;
    v22 = *(v0 + 664);

    return dispatch thunk of Future.then()(v22, v18, v19);
  }

  v39 = *(v0 + 744);
  v40 = *(v0 + 736);
  v41 = *(v0 + 656);
  v42 = *(v0 + 592);
  sub_100002758(*(v0 + 680), v41, &unk_1000A56A0, &unk_100083E10);
  if (v40(v41, 1, v42) == 1)
  {
    v43 = *(v0 + 824);
    v44 = *(v0 + 728);
    v45 = *(v0 + 720);
    v46 = *(v0 + 712);
    sub_10000DCA0(*(v0 + 656), &unk_1000A56A0, &unk_100083E10);
    TaskLocal.get()();
    v47 = *(v0 + 248);
    sub_100001CC0((v0 + 216), *(v0 + 240));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 216));
    sub_10003FE0C();
    swift_allocError();
    swift_willThrow();
    v48 = *(v0 + 688);
    v49 = *(v0 + 672);
    v50 = *(v0 + 664);
    v61 = *(v0 + 656);
    v62 = *(v0 + 648);
    v51 = *(v0 + 632);
    v52 = *(v0 + 624);
    v53 = *(v0 + 616);
    v63 = *(v0 + 640);
    v64 = *(v0 + 608);
    v67 = *(v0 + 584);
    v70 = *(v0 + 560);
    v75 = *(v0 + 552);
    v77 = *(v0 + 528);
    v79 = *(v0 + 504);
    v81 = *(v0 + 480);
    v83 = *(v0 + 456);
    sub_10000DCA0(*(v0 + 680), &unk_1000A56A0, &unk_100083E10);
    (*(v52 + 8))(v51, v53);
    sub_10000DCA0(v48, &unk_1000A56A0, &unk_100083E10);

    v38 = *(v0 + 8);
    goto LABEL_9;
  }

  v54 = *(v0 + 584);
  (*(*(v0 + 600) + 32))(*(v0 + 608), *(v0 + 656), *(v0 + 592));
  v55 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v56 = async function pointer to Bag.Value.current(or:)[1];
  v57 = swift_task_alloc();
  *(v0 + 768) = v57;
  *v57 = v0;
  v57[1] = sub_10003C894;
  v58 = *(v0 + 584);
  v59 = *(v0 + 568);

  return Bag.Value.current(or:)(v0 + 828, sub_10006FE28, 0, v59);
}

uint64_t sub_10003C738()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;

  v5 = *(v2 + 752);
  v6 = *(v2 + 432);
  if (v0)
  {

    v7 = sub_10003D554;
  }

  else
  {

    v7 = sub_10003D148;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10003C894()
{
  v1 = *(*v0 + 768);
  v2 = *(*v0 + 584);
  v3 = *(*v0 + 576);
  v4 = *(*v0 + 568);
  v5 = *(*v0 + 432);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10003CA00, v5, 0);
}

uint64_t sub_10003CA00()
{
  if (*(v0 + 828) == 1)
  {
    v1 = *(v0 + 632);
    v2 = *(v0 + 616);
    v3 = *(v0 + 560);
    v4 = *(v0 + 552);
    v5 = *(v0 + 544);
    v6 = *(v0 + 536);
    v7 = *(v0 + 528);
    v8 = *(v0 + 520);
    v9 = *(v0 + 512);
    MetricsFieldsContext.init()();
    static MetricsFieldsContext.Property<A>.metricsSamplingLottery.getter();
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v8 + 8))(v7, v9);
    v10 = *(v5 + 8);
    *(v0 + 776) = v10;
    *(v0 + 784) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v11 = swift_task_alloc();
    *(v0 + 792) = v11;
    *v11 = v0;
    v11[1] = sub_10003CD7C;
    v12 = *(v0 + 608);
    v13 = *(v0 + 504);
    v14 = *(v0 + 432);

    return sub_10006FE34(v13, v12);
  }

  else
  {
    v16 = *(v0 + 824);
    v17 = *(v0 + 728);
    v18 = *(v0 + 720);
    v19 = *(v0 + 712);
    v42 = *(v0 + 632);
    v44 = *(v0 + 688);
    v20 = *(v0 + 624);
    v38 = *(v0 + 680);
    v40 = *(v0 + 616);
    v21 = *(v0 + 600);
    v34 = *(v0 + 592);
    v36 = *(v0 + 608);
    TaskLocal.get()();
    v22 = *(v0 + 288);
    sub_100001CC0((v0 + 256), *(v0 + 280));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    (*(v21 + 8))(v36, v34);
    sub_10000DCA0(v38, &unk_1000A56A0, &unk_100083E10);
    (*(v20 + 8))(v42, v40);
    sub_10000DCA0(v44, &unk_1000A56A0, &unk_100083E10);
    sub_100001D4C((v0 + 256));
    v23 = *(v0 + 688);
    v24 = *(v0 + 680);
    v25 = *(v0 + 672);
    v26 = *(v0 + 664);
    v27 = *(v0 + 656);
    v28 = *(v0 + 648);
    v29 = *(v0 + 640);
    v30 = *(v0 + 632);
    v31 = *(v0 + 608);
    v32 = *(v0 + 584);
    v35 = *(v0 + 560);
    v37 = *(v0 + 552);
    v39 = *(v0 + 528);
    v41 = *(v0 + 504);
    v43 = *(v0 + 480);
    v45 = *(v0 + 456);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_10003CD7C()
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *v1;
  *(*v1 + 800) = v0;

  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = sub_1000403BC;
  }

  else
  {
    v6 = sub_10003CEA8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10003CEA8()
{
  v1 = v0[81];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[57];
  v5 = v0[53];
  (*(v2 + 16))(v1, v0[76], v3);
  (*(v2 + 56))(v1, 0, 1, v3);
  sub_100071820(v1);
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);
  v6 = async function pointer to MetricsPipeline.process(_:using:)[1];
  v7 = swift_task_alloc();
  v0[101] = v7;
  *v7 = v0;
  v7[1] = sub_10003CFD4;
  v8 = v0[70];
  v9 = v0[63];
  v10 = v0[60];
  v11 = v0[57];

  return MetricsPipeline.process(_:using:)(v10, v11, v8);
}

uint64_t sub_10003CFD4()
{
  v2 = *v1;
  v3 = *(*v1 + 808);
  v15 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v4 = v2[54];
    (*(v2[56] + 8))(v2[57], v2[55]);
    v5 = sub_100040364;
    v6 = v4;
  }

  else
  {
    v8 = v2[59];
    v7 = v2[60];
    v9 = v2[57];
    v10 = v2[58];
    v11 = v2[55];
    v12 = v2[56];
    v13 = v2[54];
    (*(v12 + 8))(v9, v11);
    (*(v8 + 8))(v7, v10);
    v5 = sub_100040368;
    v6 = v13;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10003D148()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 664);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);
  (*(v3 + 56))(v2, 0, 1, v4);
  sub_100018BC0(v2, v1);
  v5 = *(v0 + 744);
  v6 = *(v0 + 736);
  v7 = *(v0 + 656);
  v8 = *(v0 + 592);
  sub_100002758(*(v0 + 680), v7, &unk_1000A56A0, &unk_100083E10);
  if (v6(v7, 1, v8) == 1)
  {
    v9 = *(v0 + 824);
    v10 = *(v0 + 728);
    v11 = *(v0 + 720);
    v12 = *(v0 + 712);
    sub_10000DCA0(*(v0 + 656), &unk_1000A56A0, &unk_100083E10);
    TaskLocal.get()();
    v13 = *(v0 + 248);
    sub_100001CC0((v0 + 216), *(v0 + 240));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 216));
    sub_10003FE0C();
    swift_allocError();
    swift_willThrow();
    v14 = *(v0 + 688);
    v15 = *(v0 + 672);
    v16 = *(v0 + 664);
    v28 = *(v0 + 656);
    v29 = *(v0 + 648);
    v17 = *(v0 + 632);
    v18 = *(v0 + 624);
    v19 = *(v0 + 616);
    v30 = *(v0 + 640);
    v31 = *(v0 + 608);
    v32 = *(v0 + 584);
    v33 = *(v0 + 560);
    v34 = *(v0 + 552);
    v35 = *(v0 + 528);
    v36 = *(v0 + 504);
    v37 = *(v0 + 480);
    v38 = *(v0 + 456);
    sub_10000DCA0(*(v0 + 680), &unk_1000A56A0, &unk_100083E10);
    (*(v18 + 8))(v17, v19);
    sub_10000DCA0(v14, &unk_1000A56A0, &unk_100083E10);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 584);
    (*(*(v0 + 600) + 32))(*(v0 + 608), *(v0 + 656), *(v0 + 592));
    v23 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v24 = async function pointer to Bag.Value.current(or:)[1];
    v25 = swift_task_alloc();
    *(v0 + 768) = v25;
    *v25 = v0;
    v25[1] = sub_10003C894;
    v26 = *(v0 + 584);
    v27 = *(v0 + 568);

    return Bag.Value.current(or:)(v0 + 828, sub_10006FE28, 0, v27);
  }
}

uint64_t sub_10003D554()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 664);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  sub_10000DCA0(v1, &unk_1000A56A0, &unk_100083E10);
  (*(v3 + 56))(v2, 1, 1, v4);
  sub_100018BC0(v2, v1);
  v5 = *(v0 + 744);
  v6 = *(v0 + 736);
  v7 = *(v0 + 656);
  v8 = *(v0 + 592);
  sub_100002758(*(v0 + 680), v7, &unk_1000A56A0, &unk_100083E10);
  if (v6(v7, 1, v8) == 1)
  {
    v9 = *(v0 + 824);
    v10 = *(v0 + 728);
    v11 = *(v0 + 720);
    v12 = *(v0 + 712);
    sub_10000DCA0(*(v0 + 656), &unk_1000A56A0, &unk_100083E10);
    TaskLocal.get()();
    v13 = *(v0 + 248);
    sub_100001CC0((v0 + 216), *(v0 + 240));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 216));
    sub_10003FE0C();
    swift_allocError();
    swift_willThrow();
    v14 = *(v0 + 688);
    v15 = *(v0 + 672);
    v16 = *(v0 + 664);
    v28 = *(v0 + 656);
    v29 = *(v0 + 648);
    v17 = *(v0 + 632);
    v18 = *(v0 + 624);
    v19 = *(v0 + 616);
    v30 = *(v0 + 640);
    v31 = *(v0 + 608);
    v32 = *(v0 + 584);
    v33 = *(v0 + 560);
    v34 = *(v0 + 552);
    v35 = *(v0 + 528);
    v36 = *(v0 + 504);
    v37 = *(v0 + 480);
    v38 = *(v0 + 456);
    sub_10000DCA0(*(v0 + 680), &unk_1000A56A0, &unk_100083E10);
    (*(v18 + 8))(v17, v19);
    sub_10000DCA0(v14, &unk_1000A56A0, &unk_100083E10);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 584);
    (*(*(v0 + 600) + 32))(*(v0 + 608), *(v0 + 656), *(v0 + 592));
    v23 = String._bridgeToObjectiveC()();
    Bag.subscript.getter();

    v24 = async function pointer to Bag.Value.current(or:)[1];
    v25 = swift_task_alloc();
    *(v0 + 768) = v25;
    *v25 = v0;
    v25[1] = sub_10003C894;
    v26 = *(v0 + 584);
    v27 = *(v0 + 568);

    return Bag.Value.current(or:)(v0 + 828, sub_10006FE28, 0, v27);
  }
}

uint64_t sub_10003D960(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003DA58;

  return v7(a1);
}

uint64_t sub_10003DA58()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10003DB50(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

char *sub_10003DBFC(char *a1, int64_t a2, char a3)
{
  result = sub_10003DD08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10003DC1C(size_t a1, int64_t a2, char a3)
{
  result = sub_10003DE4C(a1, a2, a3, *v3, &unk_1000A57A0, &unk_1000855D8, &type metadata accessor for JetPackAssetSQLiteRecord);
  *v3 = result;
  return result;
}

size_t sub_10003DC60(size_t a1, int64_t a2, char a3)
{
  result = sub_10003DE4C(a1, a2, a3, *v3, &qword_1000A5778, &qword_1000855A8, &type metadata accessor for AssetPushSubscriptionRecord);
  *v3 = result;
  return result;
}

size_t sub_10003DCA4(size_t a1, int64_t a2, char a3)
{
  result = sub_10003DE4C(a1, a2, a3, *v3, &qword_1000A5780, &qword_1000855B0, &type metadata accessor for JetPackAsset);
  *v3 = result;
  return result;
}

void *sub_10003DCE8(void *a1, int64_t a2, char a3)
{
  result = sub_10003E028(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10003DD08(char *result, int64_t a2, char a3, char *a4)
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

size_t sub_10003DE4C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100001D04(a5, a6);
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

void *sub_10003E028(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001D04(&qword_1000A5790, &qword_1000855C0);
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
    sub_100001D04(&qword_1000A5798, &qword_1000855C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10003E15C(void *a1)
{
  v2 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v54 = v52 - v4;
  v5 = sub_100001D04(&qword_1000A5670, &qword_100085460);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v52 - v7;
  v58 = type metadata accessor for PushMessage(0);
  v65 = *(v58 - 8);
  v9 = *(v65 + 64);
  v10 = __chkstk_darwin(v58);
  v53 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[1] = v11;
  __chkstk_darwin(v10);
  v13 = v52 - v12;
  v14 = type metadata accessor for LogMessage.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v55 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  v59 = v13;
  v63 = qword_1000A63A0;
  TaskLocal.get()();
  v57 = v72;
  v56 = sub_100001CC0(v70, v71);
  v18 = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v19 = *(type metadata accessor for LogMessage() - 8);
  v20 = *(v19 + 80);
  v62 = *(v19 + 72);
  v64 = v18;
  v21 = swift_allocObject();
  v61 = xmmword_1000839C0;
  *(v21 + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x80000001000880B0;
  v22._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v23 = a1;
  v24 = [a1 channelID];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = &type metadata for String;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v29 = 0;
    v68 = 0;
  }

  v66 = v26;
  v67 = v28;
  v69 = v29;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(&v66, &qword_1000A5630, &unk_100083BF0);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v31 = sub_100001D4C(v70);
  v32 = v60;
  v33 = *&v60[OBJC_IVAR____TtC13jetpackassetd11PushManager_connectionWrapper];
  __chkstk_darwin(v31);
  v52[-2] = v32;
  SendableWrapper.withValue<A>(_:)();
  v71 = type metadata accessor for SystemDateProvider();
  v72 = &protocol witness table for SystemDateProvider;
  sub_1000061A4(v70);
  v34 = v23;
  SystemDateProvider.init()();
  sub_10001DB90(v34, v70, v8);
  v35 = v58;
  if ((*(v65 + 48))(v8, 1, v58) == 1)
  {
    sub_10000DCA0(v8, &qword_1000A5670, &qword_100085460);
    TaskLocal.get()();
    sub_100001CC0(v70, v71);
    *(swift_allocObject() + 16) = v61;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    return sub_100001D4C(v70);
  }

  else
  {
    v57 = 0;
    v37 = v59;
    sub_10003F7E0(v8, v59);
    TaskLocal.get()();
    sub_100001CC0(v70, v71);
    *(swift_allocObject() + 16) = v61;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    v39 = (v37 + *(v35 + 28));
    v41 = *v39;
    v40 = v39[1];
    v69 = &type metadata for String;
    v66 = v41;
    v67 = v40;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(&v66, &qword_1000A5630, &unk_100083BF0);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v42);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100001D4C(v70);
    if (MKBDeviceUnlockedSinceBoot() < 1)
    {
      TaskLocal.get()();
      sub_100001CC0(v70, v71);
      *(swift_allocObject() + 16) = v61;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      v50 = sub_100001D4C(v70);
      v51 = *&v32[OBJC_IVAR____TtC13jetpackassetd11PushManager_beforeUnlockPushes];
      __chkstk_darwin(v50);
      v45 = v59;
      v52[-2] = v59;
      os_unfair_lock_lock((v51 + 24));
      sub_10003F844((v51 + 16));
      os_unfair_lock_unlock((v51 + 24));
      sub_10002D634();
    }

    else
    {
      v43 = type metadata accessor for TaskPriority();
      v44 = v54;
      (*(*(v43 - 8) + 56))(v54, 1, 1, v43);
      v45 = v59;
      v46 = v53;
      sub_10003F860(v59, v53);
      v47 = (*(v65 + 80) + 40) & ~*(v65 + 80);
      v48 = swift_allocObject();
      v48[2] = 0;
      v48[3] = 0;
      v48[4] = v32;
      sub_10003F7E0(v46, v48 + v47);
      v49 = v32;
      sub_100023290(0, 0, v44, &unk_100085470, v48);
    }

    return sub_10003FC74(v45, type metadata accessor for PushMessage);
  }
}

uint64_t sub_10003E998(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = type metadata accessor for OSSignpostError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A4D68 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_100018718(v14, qword_1000A54E0);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v5 + 88))(v8, v4) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v20, v19, a1, v17, v18, 2u);

LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10003EC74(unint64_t a1)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v39 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v33 = &v31 - v7;
  if (!a1)
  {
    goto LABEL_23;
  }

  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v9 = 0;
  v38 = a1 & 0xC000000000000001;
  v31 = "Channel subscription failed: ";
  v32 = "al since last connected: ";
  v37 = xmmword_1000839C0;
  v34 = v8;
  v35 = a1;
  do
  {
    if (v38)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(a1 + 8 * v9 + 32);
    }

    v16 = v15;
    if ([v15 failureReason] == 1)
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100001CC0(v42, v43);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v17 = *(type metadata accessor for LogMessage() - 8);
      v18 = *(v17 + 72);
      v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      *(swift_allocObject() + 16) = v37;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v20._countAndFlagsBits = 0xD00000000000001ELL;
      v20._object = (v31 | 0x8000000000000000);
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v21 = [v16 channelID];
      if (v21)
      {
        v10 = v21;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        *(&v41 + 1) = &type metadata for String;
        *&v40 = v11;
        *(&v40 + 1) = v13;
        v8 = v34;
        a1 = v35;
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
      }

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(&v40, &qword_1000A5630, &unk_100083BF0);
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v14);
      LogMessage.init(stringInterpolation:)();
      Logger.debug(_:)();

      result = sub_100001D4C(v42);
    }

    else
    {
      if (qword_1000A4D48 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      v36 = v44;
      sub_100001CC0(v42, v43);
      sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
      v22 = *(type metadata accessor for LogMessage() - 8);
      v23 = *(v22 + 72);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      *(swift_allocObject() + 16) = v37;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v25._object = (v32 | 0x8000000000000000);
      v25._countAndFlagsBits = 0xD00000000000001DLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v26 = [v16 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      *(&v41 + 1) = &type metadata for String;
      *&v40 = v27;
      *(&v40 + 1) = v29;
      LogMessage.StringInterpolation.appendInterpolation(traceableSensitive:)();
      sub_10000DCA0(&v40, &qword_1000A5630, &unk_100083BF0);
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      result = sub_100001D4C(v42);
      v8 = v34;
      a1 = v35;
    }

    ++v9;
  }

  while (v8 != v9);
  return result;
}

uint64_t sub_10003F154(int a1)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v40 = &v39 - v5;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC13jetpackassetd11PushManager_localPreferences];
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  v14 = v46;
  v15 = v47;
  if ((v47 & 1) == 0)
  {
    v16 = *&v2[OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider + 32];
    sub_100001CC0(&v2[OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider], *&v2[OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider + 24]);
    dispatch thunk of DateProvider.now.getter();
    Date.timeIntervalSince1970.getter();
    v18 = v17;
    (*(v9 + 8))(v12, v8);
    v14 = v18 - v14;
  }

  v41 = v9;
  v42 = v8;
  if (qword_1000A4D48 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100001CC0(&v46, v48);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v19 = *(type metadata accessor for LogMessage() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0xD00000000000002CLL;
  v22._object = 0x8000000100087F90;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v45 = &type metadata for Bool;
  LOBYTE(v44[0]) = v43 & 1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v44, &qword_1000A5630, &unk_100083BF0);
  v23._object = 0x8000000100087FC0;
  v23._countAndFlagsBits = 0xD00000000000001BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  if (v15)
  {
    v24 = 0;
    v44[1] = 0;
    v44[2] = 0;
    v25 = 0.0;
  }

  else
  {
    v24 = &type metadata for Double;
    v25 = v14;
  }

  *v44 = v25;
  v45 = v24;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v44, &qword_1000A5630, &unk_100083BF0);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  result = sub_100001D4C(&v46);
  if (v43)
  {
    v28 = *&v2[OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider + 32];
    sub_100001CC0(&v2[OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider], *&v2[OBJC_IVAR____TtC13jetpackassetd11PushManager_dateProvider + 24]);
    dispatch thunk of DateProvider.now.getter();
    Date.timeIntervalSince1970.getter();
    v30 = v29;
    (*(v41 + 8))(v12, v42);
    result = sub_100024798(v30, 0);
    v31 = v14 <= 2592000.0 ? 1 : v15;
    if ((v31 & 1) == 0)
    {
      v32 = type metadata accessor for TaskPriority();
      v33 = v40;
      (*(*(v32 - 8) + 56))(v40, 1, 1, v32);
      v34 = qword_1000A4DC8;
      v35 = v2;
      if (v34 != -1)
      {
        swift_once();
      }

      v36 = qword_1000A6450;
      v37 = sub_10004019C(&qword_1000A5660, type metadata accessor for DaemonActor);
      v38 = swift_allocObject();
      *(v38 + 16) = v36;
      *(v38 + 24) = v37;
      *(v38 + 32) = v14;
      *(v38 + 40) = v35;

      sub_100037B80(0, 0, v33, &unk_100085458, v38);
    }
  }

  return result;
}

uint64_t sub_10003F6DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003F71C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DAF8;

  return sub_100037704(v6, a1, v4, v5, v7);
}

uint64_t sub_10003F7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F8C4()
{
  v1 = type metadata accessor for PushMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v3 + v7, v8);
  v11 = *(v0 + v3 + v1[6] + 8);

  v12 = *(v0 + v3 + v1[7] + 8);

  v13 = v1[9];
  if (!(*(v9 + 48))(v0 + v3 + v13, 1, v8))
  {
    v10(v5 + v13, v8);
  }

  v14 = *(v5 + v1[11]);

  return _swift_deallocObject(v0, v3 + v16, v2 | 7);
}

uint64_t sub_10003FA8C(uint64_t a1)
{
  v4 = *(type metadata accessor for PushMessage(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000DAF8;

  return sub_10002D780(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10003FB84()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003FBBC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100040348;

  return sub_10003D960(a1, v5);
}

uint64_t sub_10003FC74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003FCD4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100040348;

  return sub_100030B00(a1, v5, v4);
}

unint64_t sub_10003FD80()
{
  result = qword_1000A5678;
  if (!qword_1000A5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5678);
  }

  return result;
}

uint64_t sub_10003FDD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 0)
  {
  }

  return result;
}

uint64_t sub_10003FDF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 0)
  {
  }

  return result;
}

unint64_t sub_10003FE0C()
{
  result = qword_1000A56B8;
  if (!qword_1000A56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A56B8);
  }

  return result;
}

uint64_t sub_10003FE60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100040348;

  return sub_10003494C(a1, v5, v4);
}

unint64_t sub_10003FF0C()
{
  result = qword_1000A56C0;
  if (!qword_1000A56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A56C0);
  }

  return result;
}

unint64_t sub_10003FF60()
{
  result = qword_1000A56D0;
  if (!qword_1000A56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A56D0);
  }

  return result;
}

uint64_t sub_10003FFB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040010(uint64_t *a1)
{
  v3 = *a1;

  *a1 = v1;
}

uint64_t sub_10004004C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100040094(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100040348;

  return sub_10002E420(a1, v4, v5, v7, v6);
}

uint64_t sub_100040154(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10004019C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100040238(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100018FD0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100040280(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000403C0(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for AssetPushSubscriptionRecord();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v7 = swift_task_alloc();
  v1[11] = v7;
  *v7 = v1;
  v7[1] = sub_1000404DC;

  return BaseObjectGraph.inject<A>(_:)(v1 + 2, v5, v5);
}

uint64_t sub_1000404DC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1000408A8;
  }

  else
  {
    v3 = sub_1000405F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000405F0()
{
  v1 = v0[12];
  v2 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  v3 = dispatch thunk of AssetPushSubscriptionStore.findAll()();
  if (!v1)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v0[9];
      v7 = *(v5 + 16);
      v6 = v5 + 16;
      v28 = v7;
      v8 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
      v9 = *(v6 + 56);
      v10 = _swiftEmptyArrayStorage;
      do
      {
        v11 = v0[10];
        v12 = v0[8];
        v28(v11, v8, v12);
        v13 = AssetPushSubscriptionRecord.id.getter();
        (*(v6 - 8))(v11, v12);
        if ((v13 & 0x100000000) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10001ED90(0, *(v10 + 2) + 1, 1, v10);
          }

          v15 = *(v10 + 2);
          v14 = *(v10 + 3);
          if (v15 >= v14 >> 1)
          {
            v10 = sub_10001ED90((v14 > 1), v15 + 1, 1, v10);
          }

          *(v10 + 2) = v15 + 1;
          *&v10[4 * v15 + 32] = v13;
        }

        v8 += v9;
        --v4;
      }

      while (v4);

      v16 = *(v10 + 2);
      if (!v16)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v10 = _swiftEmptyArrayStorage;
      v16 = _swiftEmptyArrayStorage[2];
      if (!v16)
      {
LABEL_22:
        v26 = v0[10];
        v27 = v0[7];

        DaemonResponse.init<>(_:)();
        sub_100001D4C(v0 + 2);

        v25 = v0[1];
        goto LABEL_19;
      }
    }

    v17 = *(v10 + 8);
    v18 = v0[6];
    sub_100001CC0(v0 + 2, v0[5]);
    result = dispatch thunk of AssetPushSubscriptionStore.delete(id:)();
    v20 = (v10 + 36);
    v21 = 1;
    while (v16 != v21)
    {
      if (v21 >= *(v10 + 2))
      {
        __break(1u);
        return result;
      }

      ++v21;
      v22 = *v20++;
      v23 = v0[6];
      sub_100001CC0(v0 + 2, v0[5]);
      result = dispatch thunk of AssetPushSubscriptionStore.delete(id:)();
    }

    goto LABEL_22;
  }

  sub_100001D4C(v0 + 2);
  v24 = v0[10];

  v25 = v0[1];
LABEL_19:

  return v25();
}

uint64_t sub_1000408A8()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

unint64_t sub_100040920()
{
  result = qword_1000A5810;
  if (!qword_1000A5810)
  {
    type metadata accessor for DaemonPushClearRecordsRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5810);
  }

  return result;
}

uint64_t sub_100040978()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A4D30 != -1)
  {
    swift_once();
  }

  v5 = sub_100018718(v0, qword_1000A6378);
  (*(v1 + 16))(v4, v5, v0);
  v6 = OSLogger.Subsystem.rawValue.getter();
  v8 = v7;
  result = (*(v1 + 8))(v4, v0);
  qword_1000A63C8 = v6;
  unk_1000A63D0 = v8;
  return result;
}

uint64_t sub_100040B28(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for OSSignposter();
  sub_100018750(v3, a2);
  sub_100018718(v3, a2);
  if (qword_1000A4D78 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100040BE0(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  v3 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v4 = *(*(sub_100001D04(&qword_1000A5770, &unk_100083BB0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v5 = type metadata accessor for DaemonPushResetRecordRequest.Target();
  v2[25] = v5;
  v6 = *(v5 - 8);
  v2[26] = v6;
  v7 = *(v6 + 64) + 15;
  v2[27] = swift_task_alloc();
  v8 = sub_100001D04(&unk_1000A5730, &unk_100084200);
  v9 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v10 = swift_task_alloc();
  v2[28] = v10;
  *v10 = v2;
  v10[1] = sub_100040D60;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v8, v8);
}

uint64_t sub_100040D60()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_10004151C;
  }

  else
  {
    v3 = sub_100040E74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100040E74()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  DaemonPushResetRecordRequest.target.getter();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == enum case for DaemonPushResetRecordRequest.Target.byId(_:))
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 216);
    v8 = *(v0 + 192);
    (*(*(v0 + 208) + 96))(v7, *(v0 + 200));
    v9 = *v7;
    v10 = *(v0 + 48);
    sub_100001CC0((v0 + 16), *(v0 + 40));
    dispatch thunk of AssetPushSubscriptionStore.find(id:)();
    if (!v6)
    {
      v11 = *(v0 + 192);
      v12 = type metadata accessor for AssetPushSubscriptionRecord();
      if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
      {
        v13 = *(v0 + 168);
        _StringGuts.grow(_:)(45);

        *(v0 + 240) = v9;
      }

      else
      {
        v21 = *(v0 + 48);
        sub_100001CC0((v0 + 16), *(v0 + 40));
        dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
        v11 = *(v0 + 192);
        v34 = *(v0 + 168);
        _StringGuts.grow(_:)(55);
        v35._countAndFlagsBits = 0xD000000000000035;
        v35._object = 0x8000000100088E30;
        String.append(_:)(v35);
        *(v0 + 244) = v9;
      }

      v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v36);

      DaemonResponse.init<>(_:)();
      sub_10000DCA0(v11, &qword_1000A5770, &unk_100083BB0);
LABEL_20:
      sub_100001D4C((v0 + 16));
LABEL_21:
      v44 = *(v0 + 216);
      v45 = *(v0 + 184);
      v46 = *(v0 + 192);

      v47 = *(v0 + 8);

      return v47();
    }

    goto LABEL_12;
  }

  if (v5 == enum case for DaemonPushResetRecordRequest.Target.byChannelId(_:))
  {
    v14 = *(v0 + 232);
    v15 = *(v0 + 216);
    (*(*(v0 + 208) + 96))(v15, *(v0 + 200));
    v17 = *v15;
    v16 = v15[1];
    v18 = *(v0 + 48);
    sub_100001CC0((v0 + 16), *(v0 + 40));
    v19 = dispatch thunk of AssetPushSubscriptionStore.find(channelID:)();
    if (!v14)
    {
      if (*(v19 + 16))
      {
        v32 = v19;
        v33 = *(v0 + 48);
        sub_100001CC0((v0 + 16), *(v0 + 40));
        dispatch thunk of AssetPushSubscriptionStore.resetPending(channelID:)();
        v38 = *(v0 + 168);
        _StringGuts.grow(_:)(65);
        v39._object = 0x8000000100088D70;
        v39._countAndFlagsBits = 0xD000000000000013;
        String.append(_:)(v39);
        v40 = *(v32 + 16);

        *(v0 + 160) = v40;
        v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v41);

        v42._countAndFlagsBits = 0xD00000000000002ALL;
        v42._object = 0x8000000100088D90;
        String.append(_:)(v42);
      }

      else
      {
        v37 = *(v0 + 168);

        _StringGuts.grow(_:)(50);
      }

      v43._countAndFlagsBits = v17;
      v43._object = v16;
      String.append(_:)(v43);

      DaemonResponse.init<>(_:)();
      goto LABEL_20;
    }

LABEL_12:
    sub_100001D4C((v0 + 16));
    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 184);
    v49 = *(v0 + 168);
    TaskLocal.get()();
    v23 = *(v0 + 88);
    sub_100001CC0((v0 + 56), *(v0 + 80));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v24 = *(type metadata accessor for LogMessage() - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v27._countAndFlagsBits = 0xD00000000000002ELL;
    v27._object = 0x8000000100088D40;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    swift_getErrorValue();
    v28 = *(v0 + 128);
    v29 = *(v0 + 136);
    *(v0 + 120) = v29;
    v30 = sub_1000061A4((v0 + 96));
    (*(*(v29 - 8) + 16))(v30, v28, v29);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 96, &qword_1000A5630, &unk_100083BF0);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 56));
    DaemonResponse.init(_:)();
    goto LABEL_21;
  }

  v20 = *(v0 + 200);

  return _diagnoseUnexpectedEnumCase<A>(type:)(v20, v20);
}

uint64_t sub_10004151C()
{
  v1 = v0[29];
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v17 = v0[21];
  TaskLocal.get()();
  v3 = v0[11];
  sub_100001CC0(v0 + 7, v0[10]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100088D40;
  v7._countAndFlagsBits = 0xD00000000000002ELL;
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
  v12 = v0[27];
  v13 = v0[23];
  v14 = v0[24];

  v15 = v0[1];

  return v15();
}

unint64_t sub_1000417B8()
{
  result = qword_1000A5838;
  if (!qword_1000A5838)
  {
    type metadata accessor for DaemonPushResetRecordRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5838);
  }

  return result;
}

unint64_t sub_100041824()
{
  result = qword_1000A5860;
  if (!qword_1000A5860)
  {
    type metadata accessor for DaemonPingRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5860);
  }

  return result;
}

uint64_t sub_10004187C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a2;
  v4[32] = a4;
  v4[30] = a1;
  v5 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v6 = type metadata accessor for JetPackAssetSQLiteRecord();
  v4[34] = v6;
  v7 = *(v6 - 8);
  v4[35] = v7;
  v8 = *(v7 + 64) + 15;
  v4[36] = swift_task_alloc();
  v9 = type metadata accessor for JetPackAssetDiskCacheSQLiteMetadataStore();
  v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v11 = swift_task_alloc();
  v4[37] = v11;
  *v11 = v4;
  v11[1] = sub_1000419BC;

  return BaseObjectGraph.inject<A>(_:)(v4 + 27, v9, v9);
}

uint64_t sub_1000419BC()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_100042614;
  }

  else
  {
    v3 = sub_100041AD0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100041AD0()
{
  v1 = v0[38];
  v2 = v0[31];
  v0[39] = v0[27];
  DaemonCacheEvictRequest.cacheKey.getter();
  v3 = JetPackAssetDiskCacheSQLiteMetadataStore.findAll(cacheKey:)();
  if (v1)
  {

LABEL_3:

    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v4 = v0[33];
    v39 = v0[30];
    TaskLocal.get()();
    v5 = v0[6];
    sub_100001CC0(v0 + 2, v0[5]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v6 = *(type metadata accessor for LogMessage() - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._object = 0x8000000100088E70;
    v9._countAndFlagsBits = 0xD000000000000023;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    swift_getErrorValue();
    v10 = v0[24];
    v11 = v0[25];
    v0[15] = v11;
    v12 = sub_1000061A4(v0 + 12);
    (*(*(v11 - 8) + 16))(v12, v10, v11);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC((v0 + 12));
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C(v0 + 2);
    type metadata accessor for DaemonCacheEvictResponse();
    sub_100042E18(&qword_1000A5888, &type metadata accessor for DaemonCacheEvictResponse);
    sub_100042E18(&qword_1000A5890, &type metadata accessor for DaemonCacheEvictResponse);
    DaemonResponse.init(_:)();
    v14 = v0[36];
    v15 = v0[33];

    v16 = v0[1];

    return v16();
  }

  v18 = v3;
  v19 = v0[31];

  v20 = swift_task_alloc();
  *(v20 + 16) = v19;
  v21 = sub_10004300C(sub_100042C64, v20, v18);
  v0[40] = v21;

  v22 = *(v21 + 16);
  v0[41] = v22;
  if (!v22)
  {

    if (qword_1000A4D40 != -1)
    {
      swift_once();
    }

    v27 = v0[33];
    v28 = v0[31];
    TaskLocal.get()();
    v40 = v0[11];
    sub_100001CC0(v0 + 7, v0[10]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v29 = *(type metadata accessor for LogMessage() - 8);
    v30 = *(v29 + 72);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v32._countAndFlagsBits = 0xD00000000000003ALL;
    v32._object = 0x8000000100088EA0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v32);
    v33 = DaemonCacheEvictRequest.cacheKey.getter();
    v0[19] = &type metadata for String;
    v0[16] = v33;
    v0[17] = v34;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC((v0 + 16));
    v35._countAndFlagsBits = 0x614E656C6966202CLL;
    v35._object = 0xEC000000203A656DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    v36 = DaemonCacheEvictRequest.fileName.getter();
    v0[23] = &type metadata for String;
    v0[20] = v36;
    v0[21] = v37;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100013EFC((v0 + 20));
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v0 + 7);
    sub_100042C84();
    swift_allocError();
    swift_willThrow();
    goto LABEL_3;
  }

  v23 = type metadata accessor for JetPackAssetDiskCache();
  v24 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v25 = swift_task_alloc();
  v0[42] = v25;
  *v25 = v0;
  v25[1] = sub_1000420CC;
  v26 = v0[32];

  return BaseObjectGraph.inject<A>(_:)(v0 + 29, v23, v23);
}

uint64_t sub_1000420CC()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 320);

    v5 = sub_1000428E4;
  }

  else
  {
    v5 = sub_1000421E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000421E8()
{
  v1 = 0;
  v2 = v0[35];
  v30 = v0[29];
  v3 = v0[40] + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = v0[43];
  do
  {
    if (v1 >= *(v0[40] + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = v0[36];
    v6 = v0[34];
    (*(v2 + 16))(v5, v3 + *(v2 + 72) * v1, v6);
    v7 = JetPackAssetSQLiteRecord.id.getter();
    (*(v2 + 8))(v5, v6);
    if ((v7 & 0x100000000) == 0)
    {
      JetPackAssetDiskCache._evict(cacheID:)(v7);
      if (v8)
      {
        v10 = v0[39];
        v9 = v0[40];

        if (qword_1000A4D40 == -1)
        {
LABEL_7:
          v11 = v0[33];
          v31 = v0[30];
          TaskLocal.get()();
          v12 = v0[6];
          sub_100001CC0(v0 + 2, v0[5]);
          sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
          v13 = *(type metadata accessor for LogMessage() - 8);
          v14 = *(v13 + 72);
          v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
          *(swift_allocObject() + 16) = xmmword_1000839C0;
          LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v16._object = 0x8000000100088E70;
          v16._countAndFlagsBits = 0xD000000000000023;
          LogMessage.StringInterpolation.appendLiteral(_:)(v16);
          swift_getErrorValue();
          v17 = v0[24];
          v18 = v0[25];
          v0[15] = v18;
          v19 = sub_1000061A4(v0 + 12);
          (*(*(v18 - 8) + 16))(v19, v17, v18);
          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_100013EFC((v0 + 12));
          v20._countAndFlagsBits = 0;
          v20._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v20);
          LogMessage.init(stringInterpolation:)();
          Logger.error(_:)();

          sub_100001D4C(v0 + 2);
          type metadata accessor for DaemonCacheEvictResponse();
          sub_100042E18(&qword_1000A5888, &type metadata accessor for DaemonCacheEvictResponse);
          sub_100042E18(&qword_1000A5890, &type metadata accessor for DaemonCacheEvictResponse);
          DaemonResponse.init(_:)();
          goto LABEL_9;
        }

LABEL_13:
        swift_once();
        goto LABEL_7;
      }
    }

    ++v1;
  }

  while (v1 != v0[41]);
  v22 = v0[39];
  v21 = v0[40];
  v23 = v0[30];

  v24 = enum case for DaemonCacheEvictResponse.success(_:);
  v25 = type metadata accessor for DaemonCacheEvictResponse();
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  sub_100001D04(&qword_1000A5898, &unk_100085708);
  swift_storeEnumTagMultiPayload();
LABEL_9:
  v26 = v0[36];
  v27 = v0[33];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100042614()
{
  v1 = v0[38];
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v2 = v0[33];
  v16 = v0[30];
  TaskLocal.get()();
  v3 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100088E70;
  v7._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[24];
  v9 = v0[25];
  v0[15] = v9;
  v10 = sub_1000061A4(v0 + 12);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 12));
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 2);
  type metadata accessor for DaemonCacheEvictResponse();
  sub_100042E18(&qword_1000A5888, &type metadata accessor for DaemonCacheEvictResponse);
  sub_100042E18(&qword_1000A5890, &type metadata accessor for DaemonCacheEvictResponse);
  DaemonResponse.init(_:)();
  v12 = v0[36];
  v13 = v0[33];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000428E4()
{
  v1 = v0[39];

  v2 = v0[43];
  if (qword_1000A4D40 != -1)
  {
    swift_once();
  }

  v3 = v0[33];
  v17 = v0[30];
  TaskLocal.get()();
  v4 = v0[6];
  sub_100001CC0(v0 + 2, v0[5]);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100088E70;
  v8._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = v0[24];
  v10 = v0[25];
  v0[15] = v10;
  v11 = sub_1000061A4(v0 + 12);
  (*(*(v10 - 8) + 16))(v11, v9, v10);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_100013EFC((v0 + 12));
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C(v0 + 2);
  type metadata accessor for DaemonCacheEvictResponse();
  sub_100042E18(&qword_1000A5888, &type metadata accessor for DaemonCacheEvictResponse);
  sub_100042E18(&qword_1000A5890, &type metadata accessor for DaemonCacheEvictResponse);
  DaemonResponse.init(_:)();
  v13 = v0[36];
  v14 = v0[33];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100042BBC()
{
  v0 = JetPackAssetSQLiteRecord.fileName.getter();
  v2 = v1;
  v3 = DaemonCacheEvictRequest.fileName.getter();
  if (v2)
  {
    if (v0 == v3 && v2 == v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_100042C84()
{
  result = qword_1000A58A0;
  if (!qword_1000A58A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A58A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CacheEvictError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CacheEvictError(_WORD *result, int a2, int a3)
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

uint64_t sub_100042E18(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_100042E6C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100042ED8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_100042F54()
{
  result = qword_1000A58D0;
  if (!qword_1000A58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A58D0);
  }

  return result;
}

void sub_100042FA8()
{
  v0._countAndFlagsBits = 1668315182;
  v0._object = 0xE400000000000000;
  String.append(_:)(v0);
  qword_1000A6438 = 0xD000000000000017;
  unk_1000A6440 = 0x8000000100086BE0;
}

uint64_t sub_10004304C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v31 = a5;
  v42 = a4(0);
  v9 = *(*(v42 - 8) + 64);
  v10 = __chkstk_darwin(v42);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v41 = &v31 - v14;
  v38 = *(a3 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = &_swiftEmptyArrayStorage;
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v13 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v13;
      v21 = a1;
      v22 = v41;
      (*(v13 + 16))(v41, v19, v42);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v5)
      {
        (*v35)(v41, v42);
        v30 = v40;

        return v30;
      }

      if (v24)
      {
        v25 = *v36;
        (*v36)(v39, v41, v42);
        v26 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31(0, v26[2] + 1, 1);
          v26 = v43;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          v31(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        v26[2] = v29 + 1;
        v40 = v26;
        result = (v25)(v26 + v16 + v29 * v17, v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        result = (*v35)(v41, v42);
        a3 = v18;
      }

      ++v15;
      v13 = v20;
      if (v38 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = &_swiftEmptyArrayStorage;
LABEL_14:

    return v40;
  }

  return result;
}

Swift::Int sub_100043358()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100085FF8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000433E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100085FF8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10004342C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005B2BC(*a1);
  *a2 = result;
  return result;
}

id sub_1000434E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = String._bridgeToObjectiveC()();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000435C4;
  v14[3] = &unk_10009F5B0;
  v11 = _Block_copy(v14);

  v12 = [v9 registerForTaskWithIdentifier:v10 usingQueue:a3 launchHandler:v11];

  _Block_release(v11);

  return v12;
}

void sub_1000435C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_10004362C()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 taskRequestForIdentifier:v2];

  return v3;
}

id sub_1000436A0()
{
  v1 = String._bridgeToObjectiveC()();
  v5 = 0;
  v2 = [v0 cancelTaskRequestWithIdentifier:v1 error:&v5];

  if (v2)
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

unint64_t sub_100043794()
{
  result = qword_1000A5920;
  if (!qword_1000A5920)
  {
    sub_100018FD0(&qword_1000A5928, qword_100085960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5920);
  }

  return result;
}

unint64_t sub_1000437FC()
{
  result = qword_1000A5930;
  if (!qword_1000A5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5930);
  }

  return result;
}

id sub_100043850(uint64_t a1)
{
  v4 = 0;
  if ([v1 submitTaskRequest:a1 error:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1000438FC(uint64_t a1)
{
  sub_1000064B4(v1 + 80, v4);
  v5 = 0;
  sub_10005A888(0xD00000000000001FLL, 0x80000001000890C0, v4, a1, v1);
  sub_10005B484(v4);
  sub_10005ADC0(0xD000000000000023, 0x8000000100089320, a1, v1, &type metadata for PostInstallScheduledTaskHandler, &off_10009FAF8);
  sub_1000064B4(v1 + 80, v4);
  v5 = 1;
  sub_10005AB24(0xD00000000000002BLL, 0x8000000100089350, v4, a1, v1);
  sub_10005B4B4(v4);
  sub_10005ADC0(0xD00000000000002BLL, 0x8000000100089380, a1, v1, &type metadata for MaintenanceCleanupTaskHandler, &off_10009FB28);
  sub_10005ADC0(0xD000000000000023, 0x8000000100089070, a1, v1, &type metadata for BagRefreshTaskHandler, &off_10009FB40);
  sub_1000064B4(v1 + 80, v4);
  sub_1000064B4(v4, &v6);
  v5 = 2;
  sub_10005B020(0xD00000000000002DLL, 0x8000000100088F50, v4, a1, v1);
  return sub_10005B4E4(v4);
}

uint64_t sub_100043ADC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  sub_100001CC0(a1, v11);
  sub_1000064B4(a4, v16);
  v13 = swift_allocObject();
  sub_10000626C(v16, v13 + 16);
  *(v13 + 56) = a5;
  v14 = *(v12 + 8);

  LOBYTE(a5) = v14(a2, a3, 0, sub_10005B5EC, v13, v11, v12);

  *a6 = a5 & 1;
  return result;
}

uint64_t sub_100043BD8(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v4 = sub_100001D04(&qword_1000A4ED8, &qword_100084010);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v25 - v6;
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v25[1] = v31;
  sub_100001CC0(&aBlock, v30);
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v10 = *(type metadata accessor for LogMessage() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001000893E0;
  v13._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  v14 = [a1 identifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v33[3] = &type metadata for String;
  v33[0] = v15;
  v33[1] = v17;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v33, &qword_1000A5630, &unk_100083BF0);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C(&aBlock);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_1000064B4(v26, &aBlock);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  sub_10000626C(&aBlock, (v20 + 4));
  v20[9] = v27;
  v20[10] = a1;

  v21 = a1;
  v22 = sub_100023290(0, 0, v7, &unk_100085A90, v20);
  v31 = sub_10005B70C;
  v32 = v22;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v29 = sub_100081260;
  v30 = &unk_10009F650;
  v23 = _Block_copy(&aBlock);

  [v21 setExpirationHandler:v23];
  _Block_release(v23);
}

uint64_t sub_100043FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[78] = a6;
  v6[77] = a5;
  v6[76] = a4;
  v7 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v6[79] = swift_task_alloc();

  return _swift_task_switch(sub_10004404C, 0, 0);
}

uint64_t sub_10004404C()
{
  v1 = v0[76];
  v2 = v1[3];
  v3 = v1[4];
  sub_100001CC0(v1, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[80] = v6;
  *v6 = v0;
  v6[1] = sub_100044178;
  v7 = v0[77];

  return v9(v7, v2, v3);
}

uint64_t sub_100044178()
{
  v2 = *(*v1 + 640);
  v5 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = sub_10004476C;
  }

  else
  {
    v3 = sub_10004428C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004428C()
{
  v1 = *(v0 + 608);
  [*(v0 + 624) setTaskCompleted];
  v2 = v1[3];
  v3 = v1[4];
  sub_100001CC0(v1, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 656) = v6;
  *v6 = v0;
  v6[1] = sub_1000443CC;
  v7 = *(v0 + 616);

  return v9(v7, v2, v3);
}

uint64_t sub_1000443CC()
{
  v2 = *(*v1 + 656);
  v3 = *v1;
  v3[83] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100044F70, 0, 0);
  }

  else
  {
    v4 = v3[79];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100044508()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 624);
  v22 = *(v0 + 184);
  sub_100001CC0((v0 + 152), *(v0 + 176));
  swift_errorRetain();
  v3 = [v2 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = _convertErrorToNSError(_:)();
  v8 = [v7 domain];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = _convertErrorToNSError(_:)();
  v13 = [v12 code];

  *(v0 + 64) = v9;
  *(v0 + 72) = v11;
  *(v0 + 80) = v13;
  *(v0 + 88) = v4;
  *(v0 + 96) = v6;
  *(v0 + 104) = 0;
  sub_10005B730();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_100001D4C((v0 + 152));
  v14 = *(v0 + 608);
  [*(v0 + 624) setTaskCompleted];
  v15 = v14[3];
  v16 = v14[4];
  sub_100001CC0(v14, v15);
  v17 = *(v16 + 16);
  v23 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 656) = v19;
  *v19 = v0;
  v19[1] = sub_1000443CC;
  v20 = *(v0 + 616);

  return v23(v20, v15, v16);
}

uint64_t sub_10004476C()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 648);
  v2 = *(v0 + 632);
  *(v0 + 672) = qword_1000A63A8;
  TaskLocal.get()();
  v3 = *(v0 + 144);
  sub_100001CC0((v0 + 112), *(v0 + 136));
  *(v0 + 680) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 688) = *(v4 + 72);
  *(v0 + 60) = *(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x8000000100089410;
  v5._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v6 = *(v0 + 480);
  v7 = *(v0 + 488);
  *(v0 + 376) = v7;
  v8 = sub_1000061A4((v0 + 352));
  (*(*(v7 - 8) + 16))(v8, v6, v7);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 352, &qword_1000A5630, &unk_100083BF0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 112));
  v10 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v11 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v12 = swift_task_alloc();
  *(v0 + 696) = v12;
  *v12 = v0;
  v12[1] = sub_100044A1C;
  v13 = *(v0 + 616);

  return BaseObjectGraph.inject<A>(_:)(v0 + 152, v10, v10);
}

uint64_t sub_100044A1C()
{
  v2 = *(*v1 + 696);
  v5 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = sub_100044B30;
  }

  else
  {
    v3 = sub_100044508;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100044B30()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 60);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v21 = *(v0 + 648);
  v6 = *(v0 + 632);
  TaskLocal.get()();
  v20 = *(v0 + 224);
  sub_100001CC0((v0 + 192), *(v0 + 216));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100089440;
  v7._countAndFlagsBits = 0xD000000000000032;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 504);
  v9 = *(v0 + 512);
  *(v0 + 408) = v9;
  v10 = sub_1000061A4((v0 + 384));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 384, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 192));
  v12 = *(v0 + 608);
  [*(v0 + 624) setTaskCompleted];
  v13 = v12[3];
  v14 = v12[4];
  sub_100001CC0(v12, v13);
  v15 = *(v14 + 16);
  v22 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 656) = v17;
  *v17 = v0;
  v17[1] = sub_1000443CC;
  v18 = *(v0 + 616);

  return v22(v18, v13, v14);
}

uint64_t sub_100044DE0()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 624);
  v17 = *(v0 + 304);
  sub_100001CC0((v0 + 272), *(v0 + 296));
  swift_errorRetain();
  v3 = [v2 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = _convertErrorToNSError(_:)();
  v8 = [v7 domain];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = _convertErrorToNSError(_:)();
  v13 = [v12 code];

  *(v0 + 16) = v9;
  *(v0 + 24) = v11;
  *(v0 + 32) = v13;
  *(v0 + 40) = v4;
  *(v0 + 48) = v6;
  *(v0 + 56) = 1;
  sub_10005B730();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();

  sub_100001D4C((v0 + 272));
  v14 = *(v0 + 632);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100044F70()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 664);
  v2 = *(v0 + 632);
  *(v0 + 712) = qword_1000A63A8;
  TaskLocal.get()();
  v3 = *(v0 + 264);
  sub_100001CC0((v0 + 232), *(v0 + 256));
  *(v0 + 720) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v4 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 728) = *(v4 + 72);
  *(v0 + 108) = *(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x8000000100089480;
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v6 = *(v0 + 528);
  v7 = *(v0 + 536);
  *(v0 + 440) = v7;
  v8 = sub_1000061A4((v0 + 416));
  (*(*(v7 - 8) + 16))(v8, v6, v7);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 416, &qword_1000A5630, &unk_100083BF0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 232));
  v10 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v11 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v12 = swift_task_alloc();
  *(v0 + 736) = v12;
  *v12 = v0;
  v12[1] = sub_100045224;
  v13 = *(v0 + 616);

  return BaseObjectGraph.inject<A>(_:)(v0 + 272, v10, v10);
}

uint64_t sub_100045224()
{
  v2 = *(*v1 + 736);
  v5 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v3 = sub_100045338;
  }

  else
  {
    v3 = sub_100044DE0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100045338()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 108);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  v5 = *(v0 + 712);
  v16 = *(v0 + 664);
  v6 = *(v0 + 632);
  TaskLocal.get()();
  v15 = *(v0 + 344);
  sub_100001CC0((v0 + 312), *(v0 + 336));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100089440;
  v7._countAndFlagsBits = 0xD000000000000032;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v0 + 552);
  v9 = *(v0 + 560);
  *(v0 + 472) = v9;
  v10 = sub_1000061A4((v0 + 448));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 448, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 312));
  v12 = *(v0 + 632);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100045514(double a1, double a2)
{
  *(v3 + 240) = v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;
  v4 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  *(v3 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_1000455A8, 0, 0);
}

uint64_t sub_1000455A8()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  TaskLocal.get()();
  v4 = *(v0 + 48);
  sub_100001CC0((v0 + 16), *(v0 + 40));
  sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 80);
  v28 = *(v5 + 72);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0xD000000000000014;
  v7._object = 0x80000001000890A0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  *(v0 + 120) = &type metadata for ScheduleTime;
  *(v0 + 96) = v3;
  *(v0 + 104) = v2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 96, &qword_1000A5630, &unk_100083BF0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 16));
  if (v3 < 0.0 || v2 < 0.0 || v3 >= v2)
  {
    sub_10005B39C();
    swift_allocError();
    swift_willThrow();
    v24 = *(v0 + 248);

    v27 = *(v0 + 8);
  }

  else
  {
    v9 = *(*(v0 + 240) + 120);
    v10 = swift_task_alloc();
    *(v10 + 16) = 0xD00000000000001FLL;
    *(v10 + 24) = 0x80000001000890C0;
    SendableWrapper.withValue<A>(_:)();
    v11 = *(v0 + 248);
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);

    v14 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 initWithIdentifier:v15];

    v17 = v16;
    [v17 setPriority:2];
    [v17 setRequiresNetworkConnectivity:1];

    [v17 setScheduleAfter:v13];
    [v17 setTrySchedulingBefore:v12];
    TaskLocal.get()();
    v29 = *(v0 + 88);
    sub_100001CC0((v0 + 56), *(v0 + 80));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._countAndFlagsBits = 0xD000000000000018;
    v18._object = 0x8000000100088F80;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    *(v0 + 152) = &type metadata for String;
    *(v0 + 128) = 0xD00000000000001FLL;
    *(v0 + 136) = 0x80000001000890C0;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 128, &qword_1000A5630, &unk_100083BF0);
    v19._countAndFlagsBits = 0xD000000000000010;
    v19._object = 0x8000000100088FA0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    [v17 scheduleAfter];
    *(v0 + 184) = &type metadata for Double;
    *(v0 + 160) = v20;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 160, &qword_1000A5630, &unk_100083BF0);
    v21._countAndFlagsBits = 0xD000000000000016;
    v21._object = 0x8000000100088FC0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    [v17 trySchedulingBefore];
    *(v0 + 216) = &type metadata for Double;
    *(v0 + 192) = v22;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 192, &qword_1000A5630, &unk_100083BF0);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 56));
    *(swift_task_alloc() + 16) = v17;
    SendableWrapper.withValue<A>(_:)();
    v26 = *(v0 + 248);

    v27 = *(v0 + 8);
  }

  return v27();
}

uint64_t sub_100045B2C(char a1, uint64_t a2)
{
  *(v3 + 584) = v2;
  *(v3 + 576) = a2;
  *(v3 + 684) = a1;
  v4 = type metadata accessor for Date();
  *(v3 + 592) = v4;
  v5 = *(v4 - 8);
  *(v3 + 600) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 608) = swift_task_alloc();
  v7 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  *(v3 + 616) = swift_task_alloc();
  *(v3 + 624) = swift_task_alloc();
  v8 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  *(v3 + 632) = swift_task_alloc();

  return _swift_task_switch(sub_100045C64, 0, 0);
}

uint64_t sub_100045C64()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 632);
  v25 = *(v0 + 576);
  v2 = *(v0 + 684);
  *(v0 + 640) = qword_1000A63A8;
  TaskLocal.get()();
  v26 = *(v0 + 136);
  sub_100001CC0((v0 + 104), *(v0 + 128));
  *(v0 + 648) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v3 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 656) = *(v3 + 72);
  *(v0 + 680) = *(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0xD000000000000025;
  v4._object = 0x8000000100089190;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  *(v0 + 408) = &type metadata for SchedulingPriority;
  v24 = v2;
  *(v0 + 384) = v2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 384, &qword_1000A5630, &unk_100083BF0);
  v5._object = 0x80000001000891C0;
  v5._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v8 = [v6 stringFromDate:isa];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v0 + 440) = &type metadata for String;
  *(v0 + 416) = v9;
  *(v0 + 424) = v11;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 416, &qword_1000A5630, &unk_100083BF0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 104));
  if (jet_debug_tooling_os_variant_has_internal_content()() && v24 >= 5)
  {
    TaskLocal.get()();
    v13 = *(v0 + 376);
    sub_100001CC0((v0 + 344), *(v0 + 368));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 344));
    v14 = *(v0 + 632);
    v15 = *(v0 + 624);
    v16 = *(v0 + 616);
    v17 = *(v0 + 608);

    v18 = *(v0 + 8);
    v19.n128_u64[0] = 0x404E000000000000;
    v20.n128_u64[0] = 0x405E000000000000;

    return v18(v19, v20);
  }

  else
  {
    sub_100001CC0((*(v0 + 584) + 40), *(*(v0 + 584) + 64));
    v22 = swift_task_alloc();
    *(v0 + 664) = v22;
    *v22 = v0;
    v22[1] = sub_1000460A8;
    v23 = *(v0 + 624);

    return sub_100015738(v23);
  }
}

uint64_t sub_1000460A8()
{
  v1 = *v0;
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 624);
  v4 = *(*v0 + 616);
  v8 = *v0;

  sub_100002758(v3, v4, &unk_1000A56A0, &unk_100083E10);
  v5 = swift_task_alloc();
  *(v1 + 672) = v5;
  *v5 = v8;
  v5[1] = sub_10004623C;
  v6 = *(v1 + 616);

  return sub_10000FD7C(v1 + 16, v6);
}

uint64_t sub_10004623C()
{
  v1 = *(*v0 + 672);
  v3 = *v0;

  return _swift_task_switch(sub_100046338, 0, 0);
}

uint64_t sub_100046338()
{
  sub_10000DCA0(*(v0 + 624), &unk_1000A56A0, &unk_100083E10);
  v1 = *(v0 + 24);
  if (*(v1 + 16) && (v2 = sub_100001E10(*(v0 + 684)), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = (v0 + 32);
  }

  v5 = *(v0 + 680);
  v6 = *(v0 + 656);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);
  v9 = *(v0 + 632);
  v58 = *(v0 + 600);
  v59 = *(v0 + 592);
  v10 = *(v0 + 584);
  v56 = *(v0 + 608);
  v57 = *(v0 + 576);
  v11 = *(v0 + 684);
  v12 = *v4;
  TaskLocal.get()();
  v55 = *(v0 + 176);
  sub_100001CC0((v0 + 144), *(v0 + 168));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x80000001000891E0;
  v13._countAndFlagsBits = 0xD00000000000001FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  *(v0 + 472) = &type metadata for SchedulingPriority;
  *(v0 + 448) = v11;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 448, &qword_1000A5630, &unk_100083BF0);
  v14._countAndFlagsBits = 8250;
  v14._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v0 + 504) = &type metadata for Double;
  *(v0 + 480) = v12;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 480, &qword_1000A5630, &unk_100083BF0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 144));
  v16 = v10[14];
  sub_100001CC0(v10 + 10, v10[13]);
  dispatch thunk of DateProvider.now.getter();
  Date.timeIntervalSince(_:)();
  v18 = v17;
  (*(v58 + 8))(v56, v59);
  if (fabs(v18) >= *(v0 + 72))
  {
    v24 = *(v0 + 680);
    v25 = *(v0 + 656);
    v26 = *(v0 + 648);
    v27 = *(v0 + 640);
    if (v18 >= 0.0)
    {
      v29 = *(v0 + 632);
      TaskLocal.get()();
      v30 = *(v0 + 216);
      sub_100001CC0((v0 + 184), *(v0 + 208));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v31._countAndFlagsBits = 0xD000000000000020;
      v31._object = 0x8000000100089200;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      *(v0 + 536) = &type metadata for Double;
      *(v0 + 512) = v18;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v0 + 512, &qword_1000A5630, &unk_100083BF0);
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100001D4C((v0 + 184));
      v12 = v12 - v18;
    }

    else
    {
      TaskLocal.get()();
      v28 = *(v0 + 296);
      sub_100001CC0((v0 + 264), *(v0 + 288));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.init(stringLiteral:)();
      Logger.warning(_:)();

      sub_100001D4C((v0 + 264));
    }
  }

  else
  {
    v19 = *(v0 + 680);
    v20 = *(v0 + 656);
    v21 = *(v0 + 648);
    v22 = *(v0 + 640);
    TaskLocal.get()();
    v23 = *(v0 + 336);
    sub_100001CC0((v0 + 304), *(v0 + 328));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();

    sub_100001D4C((v0 + 304));
  }

  v33 = *(v0 + 680);
  v34 = *(v0 + 656);
  v35 = *(v0 + 648);
  v36 = *(v0 + 640);
  v37 = *(v0 + 632);
  v38 = *(v0 + 584);
  v39 = *(v0 + 40);
  if (v12 > v39)
  {
    v39 = v12;
  }

  sub_100046938((v0 + 16), v39);
  v41 = v40;
  v43 = v42;
  sub_10000D6E8(v0 + 16);
  TaskLocal.get()();
  v44 = *(v0 + 256);
  sub_100001CC0((v0 + 224), *(v0 + 248));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v45._countAndFlagsBits = 0x656C756465686353;
  v45._object = 0xED0000203A736920;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  *(v0 + 568) = &type metadata for ScheduleTime;
  *(v0 + 544) = v41;
  *(v0 + 552) = v43;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 544, &qword_1000A5630, &unk_100083BF0);
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v46);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 224));
  v47 = *(v0 + 632);
  v48 = *(v0 + 624);
  v49 = *(v0 + 616);
  v50 = *(v0 + 608);

  v51 = *(v0 + 8);
  v52.n128_u64[0] = v41;
  v53.n128_u64[0] = v43;

  return v51(v52, v53);
}

double *sub_100046938(double *result, double a2)
{
  v3 = *result * a2;
  v4 = result[6];
  if (v4 > v3)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = sub_10005A7E4(result, v4, v3);
    v6 = v5[4] * a2;
    v7 = v6 + v5[5];
    if (v7 < a2)
    {
      v7 = a2;
    }

    if (v6 <= v7)
    {
      return sub_10005A7E4(result, v6, v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000469B4(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 240) = a3;
  *(v4 + 144) = a1;
  v5 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v4 + 184) = v6;
  v7 = *(v6 - 8);
  *(v4 + 192) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100046AC0, 0, 0);
}

uint64_t sub_100046AC0()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v7 = v5[14];
  sub_100001CC0(v5 + 10, v5[13]);
  dispatch thunk of DateProvider.now.getter();
  Date.timeIntervalSince(_:)();
  v0[26] = v8;
  v9 = *(v2 + 8);
  v9(v1, v3);
  v10 = v5[14];
  sub_100001CC0(v5 + 10, v5[13]);
  dispatch thunk of DateProvider.now.getter();
  Date.timeIntervalSince(_:)();
  v0[27] = v11;
  v9(v1, v3);
  sub_100001CC0(v5 + 5, v5[8]);
  v12 = swift_task_alloc();
  v0[28] = v12;
  *v12 = v0;
  v12[1] = sub_100046C28;
  v13 = v0[22];

  return sub_100015738(v13);
}

uint64_t sub_100046C28()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);
  v8 = *v0;

  sub_100002758(v3, v4, &unk_1000A56A0, &unk_100083E10);
  v5 = swift_task_alloc();
  *(v1 + 232) = v5;
  *v5 = v8;
  v5[1] = sub_100046DBC;
  v6 = *(v1 + 168);

  return sub_10000FD7C(v1 + 16, v6);
}

uint64_t sub_100046DBC()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return _swift_task_switch(sub_100046EB8, 0, 0);
}

uint64_t sub_100046EB8()
{
  v1 = *(v0 + 216);
  sub_10000DCA0(*(v0 + 176), &unk_1000A56A0, &unk_100083E10);
  v2 = *(v0 + 40);
  if (v2 - *(v0 + 72) <= v1)
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 216);
    if (*(v0 + 208) > v8)
    {
      v8 = *(v0 + 208);
    }
  }

  else
  {
    if (qword_1000A4D50 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 160);
    TaskLocal.get()();
    v4 = *(v0 + 136);
    sub_100001CC0((v0 + 104), *(v0 + 128));
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v5 = *(type metadata accessor for LogMessage() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 104));
    sub_100046938((v0 + 16), v2);
  }

  v10 = *(v0 + 200);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);
  v13 = *(v0 + 160);
  v14 = sub_1000470F0(*(v0 + 240), v0 + 16, v8, v9);
  v16 = v15;
  sub_10000D6E8(v0 + 16);

  v17 = *(v0 + 8);
  v18.n128_f64[0] = v14;
  v19.n128_u64[0] = v16;

  return v17(v18, v19);
}

double sub_1000470F0(int a1, uint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  if (a1 >= 1)
  {
    v10 = round(pow(*(a2 + 72), a1) * 10.0) / 10.0 * 3600.0;
    if (*(a2 + 80) >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = *(a2 + 80);
    }

    if (qword_1000A4D50 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v22, v22[3]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v12 = *(type metadata accessor for LogMessage() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 0xD00000000000001ELL;
    v15._object = 0x8000000100089150;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    v21 = &type metadata for Int32;
    LODWORD(v20[0]) = a1;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v20, &qword_1000A5630, &unk_100083BF0);
    v16._object = 0x8000000100089170;
    v16._countAndFlagsBits = 0xD000000000000010;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v21 = &type metadata for Double;
    *v20 = v11;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v20, &qword_1000A5630, &unk_100083BF0);
    v17._countAndFlagsBits = 544175136;
    v17._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    v21 = &type metadata for ScheduleTime;
    *v20 = a3;
    *&v20[1] = a4;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v20, &qword_1000A5630, &unk_100083BF0);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v22);
    return v11 + a3;
  }

  return a3;
}

uint64_t sub_1000473EC()
{
  v1[13] = v0;
  v2 = type metadata accessor for Date();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = *(*(sub_100001D04(&qword_1000A5948, &qword_100085A68) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  Schedule = type metadata accessor for AssetNextSchedule();
  v1[19] = Schedule;
  v7 = *(Schedule - 8);
  v1[20] = v7;
  v8 = *(v7 + 64) + 15;
  v1[21] = swift_task_alloc();
  v9 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_100047590, 0, 0);
}

uint64_t sub_100047590()
{
  sub_100001CC0((v0[13] + 40), *(v0[13] + 64));
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_100047638;
  v2 = v0[23];

  return sub_100015738(v2);
}

uint64_t sub_100047638()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v8 = *v0;

  sub_100002758(v3, v4, &unk_1000A56A0, &unk_100083E10);
  v5 = swift_task_alloc();
  *(v1 + 200) = v5;
  *v5 = v8;
  v5[1] = sub_1000477CC;
  v6 = *(v1 + 176);

  return sub_10000FD7C(v1 + 16, v6);
}

uint64_t sub_1000477CC()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_1000478C8, 0, 0);
}

uint64_t sub_1000478C8()
{
  v1 = *(v0 + 104);
  sub_10000DCA0(*(v0 + 184), &unk_1000A56A0, &unk_100083E10);
  v2 = v1[4];
  sub_100001CC0(v1, v1[3]);
  sub_10000D6E8(v0 + 16);
  result = *(v0 + 80);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = *(v0 + 144);
  dispatch thunk of AssetPushSubscriptionStore.findNextSchedule(maxDownloadAttempts:)();
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = (*(v6 + 48))(v7, 1, v5);
  *(v0 + 256) = v8;
  if (v8 == 1)
  {
    sub_10000DCA0(v7, &qword_1000A5948, &qword_100085A68);
    v10 = *(v0 + 176);
    v9 = *(v0 + 184);
    v11 = *(v0 + 168);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 128);
    v15 = *(v0 + 256) == 1;

    v16 = *(v0 + 8);

    return v16(0, 0, v15);
  }

  else
  {
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    (*(v6 + 32))(*(v0 + 168), v7, v5);
    AssetNextSchedule.fromDate.getter();
    AssetNextSchedule.toDate.getter();
    v19 = AssetNextSchedule.highestDownloadAttempt.getter();
    v20 = swift_task_alloc();
    *(v0 + 208) = v20;
    *v20 = v0;
    v20[1] = sub_100047B88;
    v21 = *(v0 + 128);
    v22 = *(v0 + 136);
    v23 = *(v0 + 104);

    return sub_1000469B4(v22, v21, v19);
  }
}

uint64_t sub_100047B88(double a1, double a2)
{
  v6 = *v3;
  v7 = *(*v3 + 208);
  v8 = *v3;
  *(v6 + 216) = a1;
  *(v6 + 224) = a2;
  *(v6 + 232) = v2;

  v9 = *(v6 + 136);
  v10 = *(v6 + 128);
  v11 = *(v6 + 120);
  v12 = *(v6 + 112);
  if (v2)
  {
    v13 = *(v11 + 8);
    v13(v10, *(v6 + 112));
    v13(v9, v12);

    return _swift_task_switch(sub_100047FC4, 0, 0);
  }

  else
  {
    v14 = *(v11 + 8);
    v14(v10, *(v6 + 112));
    v14(v9, v12);
    v15 = swift_task_alloc();
    *(v6 + 240) = v15;
    *v15 = v8;
    v15[1] = sub_100047DCC;
    v16 = *(v6 + 104);

    return sub_100045514(a1, a2);
  }
}

uint64_t sub_100047DCC()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_100048084;
  }

  else
  {
    v3 = sub_100047EE0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100047EE0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = *(v0 + 256) == 1;

  v10 = *(v0 + 8);

  return v10(v1, v2, v9);
}

uint64_t sub_100047FC4()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[29];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100048084()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[31];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100048144(double a1)
{
  *(v2 + 392) = v1;
  *(v2 + 384) = a1;
  v3 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  *(v2 + 400) = swift_task_alloc();
  v4 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  *(v2 + 408) = swift_task_alloc();

  return _swift_task_switch(sub_100048210, 0, 0);
}

uint64_t sub_100048210()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);
  *(v0 + 416) = qword_1000A63A8;
  TaskLocal.get()();
  v4 = *(v0 + 136);
  sub_100001CC0((v0 + 104), *(v0 + 128));
  *(v0 + 424) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 432) = *(v5 + 72);
  *(v0 + 448) = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100089010;
  v6._countAndFlagsBits = 0xD000000000000031;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 248) = &type metadata for Double;
  *(v0 + 224) = v3;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 224, &qword_1000A5630, &unk_100083BF0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 104));
  v8 = type metadata accessor for Bag();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = swift_task_alloc();
  *(v0 + 440) = v9;
  *v9 = v0;
  v9[1] = sub_1000484C0;
  v10 = *(v0 + 400);

  return sub_10000FD7C(v0 + 16, v10);
}

uint64_t sub_1000484C0()
{
  v1 = *(*v0 + 440);
  v3 = *v0;

  return _swift_task_switch(sub_1000485BC, 0, 0);
}

uint64_t sub_1000485BC()
{
  v1 = *(v0 + 384);
  if (*(v0 + 40) <= v1)
  {
    v13 = *(*(v0 + 392) + 120);
    v14 = swift_task_alloc();
    *(v14 + 16) = 0xD000000000000023;
    *(v14 + 24) = 0x8000000100089070;
    SendableWrapper.withValue<A>(_:)();
    v33 = *(v0 + 432);
    v34 = *(v0 + 424);
    v15 = *(v0 + 408);
    v36 = *(v0 + 416);
    v16 = *(v0 + 392);
    v17 = *(v0 + 384);
    v35 = (*(v0 + 448) + 32) & ~*(v0 + 448);

    sub_100046938((v0 + 16), v17);
    v19 = v18;
    v21 = v20;
    sub_10000D6E8(v0 + 16);
    v22 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 initWithIdentifier:v23];

    v25 = v24;
    [v25 setPriority:2];
    [v25 setRequiresNetworkConnectivity:1];

    [v25 setScheduleAfter:v19];
    [v25 setTrySchedulingBefore:v21];
    TaskLocal.get()();
    v37 = *(v0 + 216);
    sub_100001CC0((v0 + 184), *(v0 + 208));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v26._countAndFlagsBits = 0xD000000000000018;
    v26._object = 0x8000000100088F80;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(v0 + 312) = &type metadata for String;
    *(v0 + 288) = 0xD000000000000023;
    *(v0 + 296) = 0x8000000100089070;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 288, &qword_1000A5630, &unk_100083BF0);
    v27._countAndFlagsBits = 0xD000000000000010;
    v27._object = 0x8000000100088FA0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    [v25 scheduleAfter];
    *(v0 + 344) = &type metadata for Double;
    *(v0 + 320) = v28;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 320, &qword_1000A5630, &unk_100083BF0);
    v29._countAndFlagsBits = 0xD000000000000016;
    v29._object = 0x8000000100088FC0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    [v25 trySchedulingBefore];
    *(v0 + 376) = &type metadata for Double;
    *(v0 + 352) = v30;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 352, &qword_1000A5630, &unk_100083BF0);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v0 + 184));
    *(swift_task_alloc() + 16) = v25;
    SendableWrapper.withValue<A>(_:)();
  }

  else
  {
    v2 = *(v0 + 448);
    v3 = *(v0 + 424);
    v4 = *(v0 + 432);
    v5 = *(v0 + 408);
    v6 = *(v0 + 416);
    sub_10000D6E8(v0 + 16);
    TaskLocal.get()();
    v7 = *(v0 + 176);
    sub_100001CC0((v0 + 144), *(v0 + 168));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8._countAndFlagsBits = 0xD00000000000001ELL;
    v8._object = 0x8000000100089050;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    *(v0 + 280) = &type metadata for Double;
    *(v0 + 256) = v1;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v0 + 256, &qword_1000A5630, &unk_100083BF0);
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    sub_100001D4C((v0 + 144));
  }

  v11 = *(v0 + 400);
  v10 = *(v0 + 408);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100048AA4()
{
  v1[35] = v0;
  v2 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v1[36] = swift_task_alloc();
  v3 = *(*(sub_100001D04(&unk_1000A56A0, &unk_100083E10) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_100048B78, 0, 0);
}

uint64_t sub_100048B78()
{
  if (qword_1000A4D50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  *(v0 + 312) = qword_1000A63A8;
  TaskLocal.get()();
  v2 = *(v0 + 136);
  sub_100001CC0((v0 + 104), *(v0 + 128));
  *(v0 + 320) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v3 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 328) = *(v3 + 72);
  *(v0 + 376) = *(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_100001D4C((v0 + 104));
  *(v0 + 336) = *(v1 + 120);
  v4 = swift_task_alloc();
  *(v4 + 16) = 0xD00000000000002DLL;
  *(v4 + 24) = 0x8000000100088F50;
  SendableWrapper.withValue<A>(_:)();
  *(v0 + 344) = 0;
  v5 = *(v0 + 280);

  v6 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithIdentifier:v7];
  *(v0 + 352) = v8;

  v9 = v8;
  [v9 setPriority:2];
  [v9 setRequiresNetworkConnectivity:1];

  sub_100001CC0((v5 + 40), *(v5 + 64));
  v10 = swift_task_alloc();
  *(v0 + 360) = v10;
  *v10 = v0;
  v10[1] = sub_100048EB8;
  v11 = *(v0 + 304);

  return sub_100015738(v11);
}

uint64_t sub_100048EB8()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 304);
  v4 = *(*v0 + 296);
  v8 = *v0;

  sub_100002758(v3, v4, &unk_1000A56A0, &unk_100083E10);
  v5 = swift_task_alloc();
  *(v1 + 368) = v5;
  *v5 = v8;
  v5[1] = sub_10004904C;
  v6 = *(v1 + 296);

  return sub_10000FD7C(v1 + 16, v6);
}

uint64_t sub_10004904C()
{
  v1 = *(*v0 + 368);
  v3 = *v0;

  return _swift_task_switch(sub_100049148, 0, 0);
}

uint64_t sub_100049148()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v23 = *(v0 + 336);
  v24 = *(v0 + 344);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 288);
  v21 = (*(v0 + 376) + 32) & ~*(v0 + 376);
  sub_10000DCA0(*(v0 + 304), &unk_1000A56A0, &unk_100083E10);
  [v1 setScheduleAfter:{*(v0 + 64), v21}];
  [v1 setTrySchedulingBefore:*(v0 + 40)];
  sub_10000D6E8(v0 + 16);
  TaskLocal.get()();
  v22 = *(v0 + 176);
  sub_100001CC0((v0 + 144), *(v0 + 168));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0xD000000000000018;
  v6._object = 0x8000000100088F80;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 208) = &type metadata for String;
  *(v0 + 184) = 0xD00000000000002DLL;
  *(v0 + 192) = 0x8000000100088F50;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 184, &qword_1000A5630, &unk_100083BF0);
  v7._object = 0x8000000100088FA0;
  v7._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  [v1 scheduleAfter];
  *(v0 + 240) = &type metadata for Double;
  *(v0 + 216) = v8;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 216, &qword_1000A5630, &unk_100083BF0);
  v9._countAndFlagsBits = 0xD000000000000016;
  v9._object = 0x8000000100088FC0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  [v1 trySchedulingBefore];
  *(v0 + 248) = v10;
  *(v0 + 272) = &type metadata for Double;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 248, &qword_1000A5630, &unk_100083BF0);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 144));
  *(swift_task_alloc() + 16) = v1;
  SendableWrapper.withValue<A>(_:)();
  v12 = *(v0 + 352);
  if (v24)
  {

    v13 = *(v0 + 296);
    v14 = *(v0 + 304);
    v15 = *(v0 + 288);
  }

  else
  {
    v17 = *(v0 + 296);
    v18 = *(v0 + 304);
    v19 = *(v0 + 288);
  }

  v16 = *(v0 + 8);

  return v16();
}

void *sub_100049484(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = a1[3];
  v9 = a1[4];
  sub_100001CC0(a1, v8);
  result = (*(v9 + 16))(a2, a3, v8, v9);
  if (result)
  {

    if (qword_1000A4D50 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100001CC0(v19, v19[3]);
    sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
    v11 = *(type metadata accessor for LogMessage() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0x206B736154;
    v14._object = 0xE500000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v18[3] = &type metadata for String;
    v18[0] = a2;
    v18[1] = a3;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v18, &qword_1000A5630, &unk_100083BF0);
    v15._object = 0x8000000100088FE0;
    v15._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C(v19);
    v16 = a1[3];
    v17 = a1[4];
    sub_100001CC0(a1, v16);
    return (*(v17 + 24))(a2, a3, v16, v17);
  }

  return result;
}

uint64_t sub_100049730(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x616E65746E69616DLL;
  v4 = 0xEB0000000065636ELL;
  if (v2 != 1)
  {
    v3 = 0x6E6F636552737061;
    v4 = 0xEC0000007463656ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656C756465686373;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x616E65746E69616DLL;
  v8 = 0xEB0000000065636ELL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F636552737061;
    v8 = 0xEC0000007463656ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656C756465686373;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100049854()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004990C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000499B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100049A64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005DDEC(*a1);
  *a2 = result;
  return result;
}

void sub_100049A94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xEB0000000065636ELL;
  v5 = 0x616E65746E69616DLL;
  if (v2 != 1)
  {
    v5 = 0x6E6F636552737061;
    v4 = 0xEC0000007463656ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C756465686373;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100049B14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 184) = a6;
  *(v7 + 192) = v6;
  *(v7 + 336) = a4;
  *(v7 + 168) = a3;
  *(v7 + 176) = a5;
  *(v7 + 152) = a1;
  *(v7 + 160) = a2;
  v8 = type metadata accessor for OSSignpostID();
  *(v7 + 200) = v8;
  v9 = *(v8 - 8);
  *(v7 + 208) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100049BEC, 0, 0);
}

uint64_t sub_100049BEC()
{
  if (qword_1000A4DA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = type metadata accessor for OSSignposter();
  sub_100018718(v2, qword_1000A58D8);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  v5 = OS_os_log.signpostsEnabled.getter();
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(v0 + 160);
  if (*(v0 + 336))
  {
LABEL_7:
    if (v8 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v8 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return BaseObjectGraph.inject<A>(_:)(v5, v6, v7);
      }

      if (v8 >> 16 <= 0x10)
      {
        v8 = (v0 + 144);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v9 = *(v0 + 224);
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v11, v8, "", v10, 2u);

LABEL_12:

  v12 = *(v0 + 224);
  v13 = *(v0 + 200);
  v14 = *(v0 + 208);
  (*(v14 + 16))(*(v0 + 216), v12, v13);
  v15 = type metadata accessor for OSSignpostIntervalState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 232) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  v18 = type metadata accessor for AssetSQLiteDatabase();
  v19 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v20 = swift_task_alloc();
  *(v0 + 240) = v20;
  *v20 = v0;
  v20[1] = sub_100049E30;
  v21 = *(v0 + 152);
  v5 = v0 + 136;
  v6 = v18;
  v7 = v18;

  return BaseObjectGraph.inject<A>(_:)(v5, v6, v7);
}

uint64_t sub_100049E30()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_10004A7B0;
  }

  else
  {
    v3 = sub_100049F44;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100049F44()
{
  v0[32] = v0[17];
  v1 = sub_100001D04(&unk_1000A5740, &unk_100085540);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_10004A008;
  v4 = v0[19];

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_10004A008()
{
  v2 = *(*v1 + 264);
  v3 = *v1;
  v3[34] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10004A864, 0, 0);
  }

  else
  {
    v4 = sub_100001D04(&qword_1000A5760, &qword_100085560);
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[35] = v6;
    *v6 = v3;
    v6[1] = sub_10004A1AC;
    v7 = v3[19];

    return BaseObjectGraph.inject<A>(_:)(v3 + 7, v4, v4);
  }
}

uint64_t sub_10004A1AC()
{
  v2 = *(*v1 + 280);
  v3 = *v1;
  v3[36] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10004A920, 0, 0);
  }

  else
  {
    v4 = sub_100001D04(&qword_1000A4E88, &qword_100085E20);
    v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v6 = swift_task_alloc();
    v3[37] = v6;
    *v6 = v3;
    v6[1] = sub_10004A350;
    v7 = v3[19];

    return BaseObjectGraph.inject<A>(_:)(v3 + 12, v4, v4);
  }
}

uint64_t sub_10004A350()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_10004A9E4;
  }

  else
  {
    v3 = sub_10004A464;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004A464()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  v8 = *(v0 + 176);
  sub_100001CC0((v0 + 96), *(v0 + 120));
  type metadata accessor for PushManager();
  sub_100038628();
  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = v0 + 16;
  *(v3 + 56) = v0 + 56;
  v4 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 320) = v5;
  *v5 = v0;
  v5[1] = sub_10004A5AC;
  v6 = *(v0 + 256);

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)();
}

uint64_t sub_10004A5AC()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_10004AAB0;
  }

  else
  {
    v5 = *(v2 + 312);

    v4 = sub_10004A6C8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004A6C8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 336);

  sub_100001D4C((v0 + 96));
  sub_100001D4C((v0 + 56));
  sub_100001D4C((v0 + 16));
  sub_1000591F0(v6, v5, v7, v3, &qword_1000A4DA8, qword_1000A58D8);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10004A7B0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 216);
  sub_1000591F0(*(v0 + 160), *(v0 + 168), *(v0 + 336), *(v0 + 232), &qword_1000A4DA8, qword_1000A58D8);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10004A864()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 272);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  sub_1000591F0(*(v0 + 160), *(v0 + 168), *(v0 + 336), *(v0 + 232), &qword_1000A4DA8, qword_1000A58D8);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10004A920()
{
  v1 = *(v0 + 256);

  sub_100001D4C((v0 + 16));
  v2 = *(v0 + 288);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  sub_1000591F0(*(v0 + 160), *(v0 + 168), *(v0 + 336), *(v0 + 232), &qword_1000A4DA8, qword_1000A58D8);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10004A9E4()
{
  v1 = *(v0 + 256);

  sub_100001D4C((v0 + 56));
  sub_100001D4C((v0 + 16));
  v2 = *(v0 + 304);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  sub_1000591F0(*(v0 + 160), *(v0 + 168), *(v0 + 336), *(v0 + 232), &qword_1000A4DA8, qword_1000A58D8);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10004AAB0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);

  sub_100001D4C((v0 + 96));
  sub_100001D4C((v0 + 56));
  sub_100001D4C((v0 + 16));
  v3 = *(v0 + 328);
  v4 = *(v0 + 224);
  v5 = *(v0 + 216);
  sub_1000591F0(*(v0 + 160), *(v0 + 168), *(v0 + 336), *(v0 + 232), &qword_1000A4DA8, qword_1000A58D8);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10004AB90(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[230] = a7;
  v7[229] = a6;
  v7[228] = a5;
  v7[227] = a4;
  v9 = type metadata accessor for AssetRequestMetricsEvent();
  v7[231] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[232] = swift_task_alloc();
  v7[233] = swift_task_alloc();
  v11 = *(*(sub_100001D04(&qword_1000A56E0, &unk_100083BE0) - 8) + 64) + 15;
  v7[234] = swift_task_alloc();
  v7[235] = swift_task_alloc();
  v7[236] = swift_task_alloc();
  v7[237] = swift_task_alloc();
  v7[238] = swift_task_alloc();
  v7[239] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v7[240] = v12;
  v13 = *(v12 - 8);
  v7[241] = v13;
  v14 = *(v13 + 64) + 15;
  v7[242] = swift_task_alloc();
  v7[243] = swift_task_alloc();
  v7[244] = swift_task_alloc();
  v7[245] = swift_task_alloc();
  v7[246] = swift_task_alloc();
  v15 = type metadata accessor for JetPackAsset.Metadata();
  v7[247] = v15;
  v16 = *(v15 - 8);
  v7[248] = v16;
  v17 = *(v16 + 64) + 15;
  v7[249] = swift_task_alloc();
  v7[250] = swift_task_alloc();
  v18 = type metadata accessor for JetPackAsset();
  v7[251] = v18;
  v19 = *(v18 - 8);
  v7[252] = v19;
  v20 = *(v19 + 64) + 15;
  v7[253] = swift_task_alloc();
  v21 = type metadata accessor for JetPackAssetRequestSourcePolicy();
  v7[254] = v21;
  v22 = *(v21 - 8);
  v7[255] = v22;
  v23 = *(v22 + 64) + 15;
  v7[256] = swift_task_alloc();
  v24 = type metadata accessor for URLJetPackAssetRequest();
  v7[257] = v24;
  v25 = *(v24 - 8);
  v7[258] = v25;
  v26 = *(v25 + 64) + 15;
  v7[259] = swift_task_alloc();
  v27 = *(*(sub_100001D04(&qword_1000A4EF0, &unk_100083C10) - 8) + 64) + 15;
  v7[260] = swift_task_alloc();
  v28 = type metadata accessor for URL();
  v7[261] = v28;
  v29 = *(v28 - 8);
  v7[262] = v29;
  v30 = *(v29 + 64) + 15;
  v7[263] = swift_task_alloc();
  v7[264] = swift_task_alloc();
  v31 = type metadata accessor for AssetPushSubscriptionRecord();
  v7[265] = v31;
  v32 = *(v31 - 8);
  v7[266] = v32;
  v33 = *(v32 + 64) + 15;
  v7[267] = swift_task_alloc();
  v7[268] = swift_task_alloc();
  v7[269] = swift_task_alloc();
  v34 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v7[270] = swift_task_alloc();
  v38 = (a2 + *a2);
  v35 = a2[1];
  v36 = swift_task_alloc();
  v7[271] = v36;
  *v36 = v7;
  v36[1] = sub_10004B08C;

  return v38();
}

uint64_t sub_10004B08C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2168);
  v7 = *v2;
  *(v3 + 2176) = a1;
  *(v3 + 2184) = v1;

  if (v1)
  {
    v5 = sub_1000511E0;
  }

  else
  {
    v5 = sub_10004B1A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004B1A4()
{
  v1 = *(v0 + 2176);
  v2 = qword_1000A4D50;

  if (v2 != -1)
  {
    swift_once();
    v1 = *(v0 + 2176);
  }

  v3 = *(v0 + 2160);
  *(v0 + 2192) = qword_1000A63A8;
  TaskLocal.get()();
  v4 = *(v0 + 728);
  sub_100001CC0((v0 + 696), *(v0 + 720));
  *(v0 + 2200) = sub_100001D04(&qword_1000A4E10, &qword_1000839D0);
  v5 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 2208) = *(v5 + 72);
  *(v0 + 196) = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100089520;
  v6._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = *(v1 + 16);
  *(v0 + 1392) = &type metadata for Int;
  *(v0 + 1368) = v7;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1368, &qword_1000A5630, &unk_100083BF0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100001D4C((v0 + 696));
  v9 = *(v1 + 16);

  if (v9)
  {
    type metadata accessor for LocalPreferences();
    *(v0 + 2216) = static LocalPreferences.currentApplication.getter();
    v10 = sub_100001D04(&unk_1000A5730, &unk_100084200);
    v11 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v12 = swift_task_alloc();
    *(v0 + 2224) = v12;
    *v12 = v0;
    v12[1] = sub_10004B5E4;
    v13 = *(v0 + 1816);

    return BaseObjectGraph.inject<A>(_:)(v0 + 456, v10, v10);
  }

  else
  {
    v14 = *(v0 + 2176);

    v15 = *(v0 + 2160);
    v16 = *(v0 + 2152);
    v17 = *(v0 + 2144);
    v18 = *(v0 + 2136);
    v19 = *(v0 + 2112);
    v20 = *(v0 + 2104);
    v21 = *(v0 + 2080);
    v22 = *(v0 + 2072);
    v23 = *(v0 + 2048);
    v24 = *(v0 + 2024);
    v27 = *(v0 + 2000);
    v28 = *(v0 + 1992);
    v29 = *(v0 + 1968);
    v30 = *(v0 + 1960);
    v31 = *(v0 + 1952);
    v32 = *(v0 + 1944);
    v33 = *(v0 + 1936);
    v34 = *(v0 + 1912);
    v35 = *(v0 + 1904);
    v36 = *(v0 + 1896);
    v37 = *(v0 + 1888);
    v38 = *(v0 + 1880);
    v39 = *(v0 + 1872);
    v40 = *(v0 + 1864);
    v41 = *(v0 + 1856);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_10004B5E4()
{
  v2 = *(*v1 + 2224);
  v3 = *v1;
  v3[279] = v0;

  if (v0)
  {
    v4 = v3[272];

    return _swift_task_switch(sub_10005157C, 0, 0);
  }

  else
  {
    v5 = sub_100001D04(&qword_1000A4E90, &unk_100085E40);
    v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v7 = swift_task_alloc();
    v3[280] = v7;
    *v7 = v3;
    v7[1] = sub_10004B790;
    v8 = v3[227];

    return BaseObjectGraph.inject<A>(_:)(v3 + 62, v5, v5);
  }
}

uint64_t sub_10004B790()
{
  v2 = *v1;
  v3 = *(*v1 + 2240);
  v7 = *v1;
  *(*v1 + 2248) = v0;

  if (v0)
  {
    v4 = *(v2 + 2176);

    v5 = sub_100051750;
  }

  else
  {
    v5 = sub_10004B8AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004B8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 2176);
  *(v3 + 1776) = &_swiftEmptySetSingleton;
  v5 = *(v4 + 16);
  *(v3 + 2256) = v5;
  if (v5)
  {
    v6 = 0;
    *(v3 + 284) = *(*(v3 + 2128) + 80);
    *(v3 + 372) = enum case for JetPackAssetRequestSourcePolicy.remoteOnly(_:);
    v7 = _swiftEmptyArrayStorage;
    v161 = *(v3 + 2248);
    while (1)
    {
      *(v3 + 2272) = v7;
      *(v3 + 2264) = v6;
      v8 = *(v3 + 2176);
      if (v6 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v196 = v7;
      v9 = *(v3 + 2152);
      v10 = *(v3 + 2128);
      v11 = *(v3 + 2120);
      v12 = *(v10 + 16);
      v10 += 16;
      v13 = v8 + ((*(v3 + 284) + 32) & ~*(v3 + 284)) + *(v10 + 56) * v6;
      *(v3 + 2280) = v12;
      *(v3 + 2288) = v10 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v12(v9, v13, v11);
      v14 = AssetPushSubscriptionRecord.assetURLString.getter();
      *(v3 + 2296) = v14;
      *(v3 + 2304) = v15;
      if (!v15)
      {
        goto LABEL_27;
      }

      v16 = v14;
      v17 = v15;
      v18 = *(v3 + 2096);
      v19 = *(v3 + 2088);
      v20 = *(v3 + 2080);
      URL.init(string:)();
      if ((*(v18 + 48))(v20, 1, v19) == 1)
      {
        break;
      }

      v22 = *(v3 + 2152);
      (*(*(v3 + 2096) + 32))(*(v3 + 2112), *(v3 + 2080), *(v3 + 2088));
      v23 = AssetPushSubscriptionRecord.bundleID.getter();
      *(v3 + 2312) = v23;
      *(v3 + 2320) = v24;
      if (!v24)
      {
        (*(*(v3 + 2096) + 8))(*(v3 + 2112), *(v3 + 2088));
        goto LABEL_26;
      }

      v25 = v23;
      v26 = v24;
      v27 = *(v3 + 2152);
      *(v3 + 2328) = AssetPushSubscriptionRecord.usageID.getter();
      *(v3 + 2336) = v28;
      if (!v28)
      {
        (*(*(v3 + 2096) + 8))(*(v3 + 2112), *(v3 + 2088));
        goto LABEL_25;
      }

      v29 = *(v3 + 2152);
      v30 = AssetPushSubscriptionRecord.id.getter();
      *(v3 + 2344) = v30;
      if ((v30 & 0x100000000) != 0)
      {
        (*(*(v3 + 2096) + 8))(*(v3 + 2112), *(v3 + 2088));

LABEL_25:

LABEL_26:

LABEL_27:
        v46 = *(v3 + 2152);
        v47 = AssetPushSubscriptionRecord.id.getter();
        if ((v47 & 0x100000000) != 0)
        {
          v174 = 0x296C696E28;
          v178 = 0xE500000000000000;
        }

        else
        {
          *(v3 + 108) = v47;
          v174 = dispatch thunk of CustomStringConvertible.description.getter();
          v178 = v48;
        }

        v49 = *(v3 + 196);
        v50 = *(v3 + 2208);
        v51 = *(v3 + 2200);
        v52 = *(v3 + 2192);
        v53 = *(v3 + 2160);
        v54 = *(v3 + 2128);
        v182 = *(v3 + 2120);
        v188 = *(v3 + 2152);
        TaskLocal.get()();
        v170 = *(v3 + 608);
        sub_100001CC0((v3 + 576), *(v3 + 600));
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v55._countAndFlagsBits = 0xD00000000000002FLL;
        v55._object = 0x8000000100089550;
        LogMessage.StringInterpolation.appendLiteral(_:)(v55);
        *(v3 + 1424) = &type metadata for String;
        *(v3 + 1400) = v174;
        *(v3 + 1408) = v178;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v3 + 1400, &qword_1000A5630, &unk_100083BF0);
        v56._countAndFlagsBits = 0;
        v56._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v56);
        LogMessage.init(stringInterpolation:)();
        Logger.error(_:)();

        (*(v54 + 8))(v188, v182);
        v4 = sub_100001D4C((v3 + 576));
        v7 = v196;
        goto LABEL_31;
      }

      if (v25 == 0xD000000000000014 && v26 == 0x8000000100089650 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v31 = *(v3 + 520), v186 = *(v3 + 528), sub_100001CC0((v3 + 496), v31), ((*(v186 + 8))(v25, v26, v31) & 1) != 0))
      {
        if ((sub_10006DD60(v16, v17, *(v3 + 1776)) & 1) == 0)
        {
          v172 = *(v3 + 372);
          v180 = *(v3 + 196);
          v184 = *(v3 + 2208);
          v194 = *(v3 + 2200);
          v115 = *(v3 + 2160);
          v116 = *(v3 + 2152);
          v117 = *(v3 + 2104);
          v118 = *(v3 + 2096);
          v119 = *(v3 + 2088);
          v163 = *(v3 + 2112);
          v166 = *(v3 + 2072);
          v120 = *(v3 + 2048);
          v121 = *(v3 + 2040);
          v159 = *(v3 + 2032);
          *(v3 + 2352) = AssetPushSubscriptionRecord.downloadAttempts.getter();
          *(v3 + 2360) = AssetPushSubscriptionRecord.priority.getter();
          v122 = *(v118 + 16);
          *(v3 + 2368) = v122;
          *(v3 + 2376) = (v118 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v122(v117, v163, v119);
          (*(v121 + 104))(v120, v172, v159);

          URLJetPackAssetRequest.init(url:sourcePolicy:usageID:)();
          static OSLogger.jetPackAssets.getter();
          v123 = *(v3 + 1088);
          sub_100001CC0((v3 + 1056), *(v3 + 1080));
          *(swift_allocObject() + 16) = xmmword_1000839C0;
          LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v124._countAndFlagsBits = 0xD000000000000017;
          v124._object = 0x80000001000896C0;
          LogMessage.StringInterpolation.appendLiteral(_:)(v124);
          *(v3 + 1360) = v119;
          sub_1000061A4((v3 + 1336));
          URLJetPackAssetRequest.url.getter();
          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_10000DCA0(v3 + 1336, &qword_1000A5630, &unk_100083BF0);
          v125._countAndFlagsBits = 0;
          v125._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v125);
          LogMessage.init(stringInterpolation:)();
          Logger.info(_:)();

          sub_100001D4C((v3 + 1056));
          v126 = type metadata accessor for AssetSQLiteDatabase();
          v127 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
          v128 = swift_task_alloc();
          *(v3 + 2384) = v128;
          *v128 = v3;
          v128[1] = sub_10004CB18;
          v129 = *(v3 + 1816);
          v4 = v3 + 1800;
          a2 = v126;
          a3 = v126;

          return BaseObjectGraph.inject<A>(_:)(v4, a2, a3);
        }

        v32 = *(v3 + 196);
        v33 = *(v3 + 2208);
        v177 = *(v3 + 2200);
        v34 = *(v3 + 2192);
        v35 = *(v3 + 2160);

        TaskLocal.get()();
        v187 = *(v3 + 768);
        sub_100001CC0((v3 + 736), *(v3 + 760));
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v36._countAndFlagsBits = 0xD00000000000002DLL;
        v36._object = 0x80000001000897B0;
        LogMessage.StringInterpolation.appendLiteral(_:)(v36);
        *(v3 + 1200) = &type metadata for String;
        *(v3 + 1176) = v16;
        *(v3 + 1184) = v17;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v3 + 1176, &qword_1000A5630, &unk_100083BF0);
        v37._object = 0x80000001000897E0;
        v37._countAndFlagsBits = 0xD000000000000014;
        LogMessage.StringInterpolation.appendLiteral(_:)(v37);
        LogMessage.init(stringInterpolation:)();
        Logger.error(_:)();

        sub_100001D4C((v3 + 736));
        v38 = *(v3 + 488);
        sub_100001CC0((v3 + 456), *(v3 + 480));
        dispatch thunk of AssetPushSubscriptionStore.resetPending(id:)();
        if (v161)
        {
          v130 = *(v3 + 2216);
          v131 = *(v3 + 2176);
          v132 = *(v3 + 2152);
          v133 = *(v3 + 2128);
          v134 = *(v3 + 2120);
          v135 = *(v3 + 2112);
          v136 = *(v3 + 2096);
          v137 = *(v3 + 2088);

          (*(v136 + 8))(v135, v137);
          (*(v133 + 8))(v132, v134);

          sub_100001D4C((v3 + 496));
          sub_100001D4C((v3 + 456));
          v138 = *(v3 + 2160);
          v139 = *(v3 + 2152);
          v140 = *(v3 + 2144);
          v141 = *(v3 + 2136);
          v142 = *(v3 + 2112);
          v143 = *(v3 + 2104);
          v144 = *(v3 + 2080);
          v145 = *(v3 + 2072);
          v146 = *(v3 + 2048);
          v147 = *(v3 + 2024);
          v148 = *(v3 + 2000);
          v150 = *(v3 + 1992);
          v153 = *(v3 + 1968);
          v155 = *(v3 + 1960);
          v157 = *(v3 + 1952);
          v160 = *(v3 + 1944);
          v164 = *(v3 + 1936);
          v167 = *(v3 + 1912);
          v169 = *(v3 + 1904);
          v173 = *(v3 + 1896);
          v176 = *(v3 + 1888);
          v181 = *(v3 + 1880);
          v185 = *(v3 + 1872);
          v195 = *(v3 + 1864);
          v199 = *(v3 + 1856);

          v113 = *(v3 + 8);
          goto LABEL_54;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10001EE94(0, *(*(v3 + 2272) + 16) + 1, 1, *(v3 + 2272));
        }

        v40 = *(v7 + 2);
        v39 = *(v7 + 3);
        v41 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          v7 = sub_10001EE94((v39 > 1), v40 + 1, 1, v7);
        }

        v42 = *(v3 + 2152);
        v43 = *(v3 + 2128);
        v44 = *(v3 + 2120);
        (*(*(v3 + 2096) + 8))(*(v3 + 2112), *(v3 + 2088));
        v4 = (*(v43 + 8))(v42, v44);
        v161 = 0;
      }

      else
      {
        v57 = *(v3 + 196);
        v58 = *(v3 + 2208);
        v59 = *(v3 + 2200);
        v60 = *(v3 + 2192);
        v61 = *(v3 + 2160);

        TaskLocal.get()();
        v189 = *(v3 + 1008);
        sub_100001CC0((v3 + 976), *(v3 + 1000));
        *(swift_allocObject() + 16) = xmmword_1000839C0;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v62._countAndFlagsBits = 0xD000000000000013;
        v62._object = 0x8000000100089670;
        LogMessage.StringInterpolation.appendLiteral(_:)(v62);
        *(v3 + 1456) = &type metadata for String;
        *(v3 + 1432) = v25;
        *(v3 + 1440) = v26;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10000DCA0(v3 + 1432, &qword_1000A5630, &unk_100083BF0);
        v63._countAndFlagsBits = 0xD000000000000024;
        v63._object = 0x8000000100089690;
        LogMessage.StringInterpolation.appendLiteral(_:)(v63);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_100001D4C((v3 + 976));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10001EE94(0, *(v7 + 2) + 1, 1, v7);
        }

        v40 = *(v7 + 2);
        v64 = *(v7 + 3);
        v41 = v40 + 1;
        if (v40 >= v64 >> 1)
        {
          v7 = sub_10001EE94((v64 > 1), v40 + 1, 1, v7);
        }

        v65 = *(v3 + 2152);
        v66 = *(v3 + 2128);
        v67 = *(v3 + 2120);
        (*(*(v3 + 2096) + 8))(*(v3 + 2112), *(v3 + 2088));
        v4 = (*(v66 + 8))(v65, v67);
      }

      *(v7 + 2) = v41;
      v45 = &v7[32 * v40];
      *(v45 + 4) = 0;
      *(v45 + 5) = 0;
      *(v45 + 6) = 0;
      *(v45 + 7) = 1;
LABEL_31:
      v6 = *(v3 + 2264) + 1;
      if (v6 == *(v3 + 2256))
      {
        v68 = *(v3 + 2176);
        goto LABEL_39;
      }
    }

    v21 = *(v3 + 2080);

    sub_10000DCA0(v21, &qword_1000A4EF0, &unk_100083C10);
    goto LABEL_27;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_39:

  v69 = *(v7 + 2);
  if (v69)
  {
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v4 = v7;
    v74 = v7 + 56;
    while (1)
    {
      v75 = *(v74 - 3);
      v76 = __OFADD__(v73, v75);
      v73 += v75;
      if (v76)
      {
        break;
      }

      v77 = *(v74 - 2);
      v76 = __OFADD__(v72, v77);
      v72 += v77;
      if (v76)
      {
        goto LABEL_63;
      }

      v78 = *(v74 - 1);
      v76 = __OFADD__(v71, v78);
      v71 += v78;
      if (v76)
      {
        goto LABEL_64;
      }

      v76 = __OFADD__(v70, *v74);
      v70 += *v74;
      if (v76)
      {
        goto LABEL_65;
      }

      v74 += 4;
      if (!--v69)
      {
        goto LABEL_48;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return BaseObjectGraph.inject<A>(_:)(v4, a2, a3);
  }

  else
  {
    v73 = 0;
    v72 = 0;
    v71 = 0;
    v70 = 0;
LABEL_48:
    v79 = *(v3 + 196);
    v80 = *(v3 + 2208);
    v197 = *(v3 + 2200);
    v81 = *(v3 + 2192);
    v82 = *(v3 + 2160);

    v83 = *(v3 + 1776);

    TaskLocal.get()();
    v190 = *(v3 + 688);
    sub_100001CC0((v3 + 656), *(v3 + 680));
    *(swift_allocObject() + 16) = xmmword_1000839C0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v84._countAndFlagsBits = 0xD000000000000034;
    v84._object = 0x8000000100089580;
    LogMessage.StringInterpolation.appendLiteral(_:)(v84);
    *(v3 + 1488) = &type metadata for Int;
    *(v3 + 1464) = v73;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v3 + 1464, &qword_1000A5630, &unk_100083BF0);
    v85._countAndFlagsBits = 0x7070696B73202C20;
    v85._object = 0xEC000000203A6465;
    LogMessage.StringInterpolation.appendLiteral(_:)(v85);
    *(v3 + 1552) = &type metadata for Int;
    *(v3 + 1528) = v70;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10000DCA0(v3 + 1528, &qword_1000A5630, &unk_100083BF0);
    v86._countAndFlagsBits = 0;
    v86._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v86);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100001D4C((v3 + 656));
    if (v72 >= 1)
    {
      v87 = *(v3 + 196);
      v88 = *(v3 + 2208);
      v89 = *(v3 + 2200);
      v90 = *(v3 + 2192);
      v91 = *(v3 + 2160);
      TaskLocal.get()();
      v191 = *(v3 + 888);
      sub_100001CC0((v3 + 856), *(v3 + 880));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v92._countAndFlagsBits = 0xD00000000000003ALL;
      v92._object = 0x8000000100089610;
      LogMessage.StringInterpolation.appendLiteral(_:)(v92);
      *(v3 + 1616) = &type metadata for Int;
      *(v3 + 1592) = v72;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v3 + 1592, &qword_1000A5630, &unk_100083BF0);
      v93._countAndFlagsBits = 0;
      v93._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v93);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v3 + 856));
    }

    v94 = *(v3 + 2216);
    if (v71 < 1)
    {
      v102 = *(v3 + 2216);
    }

    else
    {
      v95 = *(v3 + 196);
      v96 = *(v3 + 2208);
      v97 = *(v3 + 2200);
      v98 = *(v3 + 2192);
      v99 = *(v3 + 2160);
      TaskLocal.get()();
      v192 = *(v3 + 808);
      sub_100001CC0((v3 + 776), *(v3 + 800));
      *(swift_allocObject() + 16) = xmmword_1000839C0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v100._countAndFlagsBits = 0xD00000000000004CLL;
      v100._object = 0x80000001000895C0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v100);
      *(v3 + 1232) = &type metadata for Int;
      *(v3 + 1208) = v71;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10000DCA0(v3 + 1208, &qword_1000A5630, &unk_100083BF0);
      v101._countAndFlagsBits = 0;
      v101._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v101);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100001D4C((v3 + 776));
    }

    sub_100001D4C((v3 + 496));
    sub_100001D4C((v3 + 456));
    v103 = *(v3 + 2160);
    v104 = *(v3 + 2152);
    v105 = *(v3 + 2144);
    v106 = *(v3 + 2136);
    v107 = *(v3 + 2112);
    v108 = *(v3 + 2104);
    v109 = *(v3 + 2080);
    v110 = *(v3 + 2072);
    v111 = *(v3 + 2048);
    v112 = *(v3 + 2024);
    v149 = *(v3 + 2000);
    v151 = *(v3 + 1992);
    v152 = *(v3 + 1968);
    v154 = *(v3 + 1960);
    v156 = *(v3 + 1952);
    v158 = *(v3 + 1944);
    v162 = *(v3 + 1936);
    v165 = *(v3 + 1912);
    v168 = *(v3 + 1904);
    v171 = *(v3 + 1896);
    v175 = *(v3 + 1888);
    v179 = *(v3 + 1880);
    v183 = *(v3 + 1872);
    v193 = *(v3 + 1864);
    v198 = *(v3 + 1856);

    v113 = *(v3 + 8);
LABEL_54:

    return v113();
  }
}

uint64_t sub_10004CB18()
{
  v2 = *(*v1 + 2384);
  v5 = *v1;
  *(*v1 + 2392) = v0;

  if (v0)
  {
    v3 = sub_10004CE54;
  }

  else
  {
    v3 = sub_10004CC2C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004CC2C()
{
  v1 = v0[290];
  v2 = v0[289];
  v3 = v0[277];
  v4 = v0[259];
  v5 = v0[227];
  v0[300] = v0[225];
  v6 = swift_task_alloc();
  v0[301] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  *(v6 + 48) = 1;
  *(v6 + 56) = v3;
  v7 = async function pointer to AssetSQLiteDatabase.executeWithTransaction<A>(_:)[1];
  v8 = swift_task_alloc();
  v0[302] = v8;
  *v8 = v0;
  v8[1] = sub_10004CD38;
  v9 = v0[253];
  v10 = v0[251];

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v9, &unk_1000861F0, v6, v10);
}

uint64_t sub_10004CD38()
{
  v2 = *v1;
  v3 = *(*v1 + 2416);
  v7 = *v1;
  *(*v1 + 2424) = v0;

  if (v0)
  {
    v4 = sub_10004DD74;
  }

  else
  {
    v5 = *(v2 + 2408);

    v4 = sub_10004D650;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10004CE54()
{
  *(v0 + 2464) = *(v0 + 2392);
  v76 = *(v0 + 2368);
  v77 = *(v0 + 2376);
  v94 = *(v0 + 2288);
  v1 = *(v0 + 196);
  v2 = *(v0 + 2208);
  v3 = *(v0 + 2200);
  v4 = *(v0 + 2192);
  v5 = *(v0 + 2160);
  v89 = *(v0 + 2152);
  v91 = *(v0 + 2280);
  v86 = *(v0 + 2136);
  v87 = *(v0 + 2120);
  v75 = *(v0 + 2112);
  v6 = *(v0 + 2088);
  v83 = *(v0 + 1824);
  (*(*(v0 + 2064) + 8))(*(v0 + 2072), *(v0 + 2056));
  TaskLocal.get()();
  v81 = *(v0 + 408);
  sub_100001CC0((v0 + 376), *(v0 + 400));
  *(swift_allocObject() + 16) = xmmword_1000839C0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x80000001000896E0;
  v7._countAndFlagsBits = 0xD00000000000002ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  *(v0 + 1648) = v6;
  v8 = sub_1000061A4((v0 + 1624));
  v76(v8, v75, v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1624, &qword_1000A5630, &unk_100083BF0);
  v9._countAndFlagsBits = 0x3A726F727245202ELL;
  v9._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  swift_getErrorValue();
  v10 = *(v0 + 1680);
  v11 = *(v0 + 1688);
  *(v0 + 1264) = v11;
  v12 = sub_1000061A4((v0 + 1240));
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10000DCA0(v0 + 1240, &qword_1000A5630, &unk_100083BF0);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100001D4C((v0 + 376));
  v91(v86, v89, v87);
  v14 = *(v83 + 40);
  sub_1000064B4(v83, v0 + 1096);
  v15 = AssetPushSubscriptionRecord.assetURLString.getter();
  if (!v16)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));
LABEL_13:
    sub_100001D4C((v0 + 1096));
    goto LABEL_18;
  }

  v17 = v15;
  v18 = v16;
  v19 = AssetPushSubscriptionRecord.bundleID.getter();
  if (!v20)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));
LABEL_12:

    goto LABEL_13;
  }

  v21 = v19;
  v22 = v20;
  v23 = AssetPushSubscriptionRecord.usageID.getter();
  if (!v24)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));

    goto LABEL_12;
  }

  v90 = v24;
  v92 = v23;
  v95 = v21;
  v25 = AssetPushSubscriptionRecord.priority.getter();
  if ((v25 & 0x100000000) != 0 || (v26 = sub_10005B2BC(v25), v26 == 6))
  {
    v26 = 0;
  }

  v88 = v26;
  v27 = *(v0 + 2136);
  v28 = *(v0 + 1928);
  v29 = *(v0 + 1920);
  v30 = *(v0 + 1880);
  AssetPushSubscriptionRecord.serverDate.getter();
  v31 = *(v28 + 48);
  if (v31(v30, 1, v29) == 1)
  {
    v32 = *(v0 + 1880);
    (*(*(v0 + 2128) + 8))(*(v0 + 2136), *(v0 + 2120));
    sub_10000DCA0(v32, &qword_1000A56E0, &unk_100083BE0);
    v33 = 0.0;
    v34 = 1;
  }

  else
  {
    v35 = *(v0 + 1920);
    v36 = *(v0 + 1872);
    v84 = *(*(v0 + 1928) + 32);
    (v84)(*(v0 + 1944), *(v0 + 1880), v35);
    AssetPushSubscriptionRecord.scheduleToDate.getter();
    v37 = v31(v36, 1, v35);
    v38 = *(v0 + 2136);
    v39 = *(v0 + 2128);
    v40 = *(v0 + 2120);
    if (v37 == 1)
    {
      v41 = *(v0 + 1872);
      (*(*(v0 + 1928) + 8))(*(v0 + 1944), *(v0 + 1920));
      (*(v39 + 8))(v38, v40);
      sub_10000DCA0(v41, &qword_1000A56E0, &unk_100083BE0);
      v33 = 0.0;
      v34 = 1;
    }

    else
    {
      v42 = *(v0 + 1952);
      v78 = *(v0 + 1944);
      v79 = *(v0 + 1936);
      v80 = *(v0 + 2120);
      v82 = *(v0 + 2136);
      v43 = *(v0 + 1928);
      v44 = *(v0 + 1920);
      v45 = *(v0 + 1872);
      v84();
      v85 = *(v0 + 1128);
      sub_100001CC0((v0 + 1096), *(v0 + 1120));
      dispatch thunk of DateProvider.now.getter();
      Date.timeIntervalSince(_:)();
      v47 = v46;
      v48 = *(v43 + 8);
      v48(v42, v44);
      Date.timeIntervalSince(_:)();
      v50 = v49;
      v48(v79, v44);
      v48(v78, v44);
      (*(v39 + 8))(v82, v80);
      v34 = 0;
      v33 = v47 / v50;
    }
  }

  v51 = *(v0 + 1832);
  *(v0 + 2472) = v34;
  *(v0 + 112) = v17;
  *(v0 + 120) = v18;
  *(v0 + 128) = v95;
  *(v0 + 136) = v22;
  *(v0 + 144) = v92;
  *(v0 + 152) = v90;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  *(v0 + 176) = v88;
  *(v0 + 177) = 0;
  *(v0 + 178) = v14;
  *(v0 + 179) = *(v0 + 102);
  *(v0 + 183) = *(v0 + 106);
  *(v0 + 184) = v33;
  *(v0 + 192) = *(v0 + 2472);
  sub_100001D4C((v0 + 1096));
  v52 = v51[4];
  sub_100001CC0(v51, v51[3]);
  v53 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v53;
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = *(v0 + 192);
  v54 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v54;
  sub_10005BD64();
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();
  sub_10005BDB8(v0 + 112);
LABEL_18:
  v55 = *(v0 + 2152);
  v56 = *(v0 + 1888);
  v57 = *(v0 + 1840);
  AssetPushSubscriptionRecord.serverDate.getter();
  v58 = *sub_100001CC0(v57, v57[3]);
  *(v0 + 1040) = type metadata accessor for MetricsPipelineManager();
  *(v0 + 1048) = &off_1000A0070;
  *(v0 + 1016) = v58;

  if (v14)
  {
    if (v14 == 1)
    {
      v59 = 0xEB0000000065636ELL;
      v60 = 0x616E65746E69616DLL;
    }

    else
    {
      v59 = 0xEC0000007463656ELL;
      v60 = 0x6E6F636552737061;
    }
  }

  else
  {
    v59 = 0xE900000000000064;
    v60 = 0x656C756465686373;
  }

  v61 = *(v0 + 2360);
  v62 = *(v0 + 2352);
  v63 = *(v0 + 2312);
  v93 = v63;
  v96 = *(v0 + 2328);
  v64 = *(v0 + 2304);
  v65 = *(v0 + 2296);
  v66 = *(v0 + 1856);
  v67 = *(v0 + 1848);
  if ((v61 & &_mh_execute_header) != 0)
  {
    v68 = 0;
  }

  else
  {
    v68 = v61;
  }

  if ((v62 & &_mh_execute_header) != 0)
  {
    v69 = 0;
  }

  else
  {
    v69 = v62;
  }

  sub_100002758(*(v0 + 1888), v66 + *(v67 + 48), &qword_1000A56E0, &unk_100083BE0);
  *v66 = v93;
  *(v66 + 16) = v96;
  *(v66 + 32) = v65;
  *(v66 + 40) = v64;
  *(v66 + 48) = 0u;
  *(v66 + 64) = 0u;
  *(v66 + 80) = v60;
  *(v66 + 88) = v59;
  *(v66 + 96) = 0;
  *(v66 + 104) = v69;
  v70 = v66 + *(v67 + 52);
  *v70 = v68;
  *(v70 + 8) = BYTE4(v61) & 1;
  v71 = *sub_100001CC0((v0 + 1016), *(v0 + 1040));
  v72 = swift_task_alloc();
  *(v0 + 2448) = v72;
  *v72 = v0;
  v72[1] = sub_10005192C;
  v73 = *(v0 + 1856);

  return sub_100038808(v73);
}

uint64_t sub_10004D650()
{
  v1 = *(v0 + 2400);
  v2 = *(v0 + 2288);
  v3 = *(v0 + 2280);
  v4 = *(v0 + 2152);
  v5 = *(v0 + 2144);
  v6 = *(v0 + 2120);
  v7 = *(v0 + 2024);
  v8 = *(v0 + 2000);
  v9 = *(v0 + 1984);
  v100 = *(v0 + 1976);
  v10 = *(v0 + 1824);

  v3(v5, v4, v6);
  JetPackAsset.metadata.getter();
  v11 = JetPackAsset.Metadata.assetVersion.getter();
  v13 = v12;
  v14 = v100;
  v101 = *(v9 + 8);
  v101(v8, v14);
  if (v13)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v17 = *(v10 + 40);
  sub_1000064B4(v10, v0 + 616);
  v18 = AssetPushSubscriptionRecord.assetURLString.getter();
  if (!v19)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2144), *(v0 + 2120));
LABEL_19:

    sub_100001D4C((v0 + 616));
    goto LABEL_24;
  }

  v20 = v18;
  v21 = v19;
  v22 = AssetPushSubscriptionRecord.bundleID.getter();
  if (!v23)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2144), *(v0 + 2120));
LABEL_18:

    goto LABEL_19;
  }

  v24 = v22;
  v25 = v23;
  v26 = AssetPushSubscriptionRecord.usageID.getter();
  if (!v27)
  {
    (*(*(v0 + 2128) + 8))(*(v0 + 2144), *(v0 + 2120));

    goto LABEL_18;
  }

  v91 = v27;
  v92 = v26;
  v93 = v24;
  v94 = v20;
  v96 = v15;
  v98 = v17;
  v28 = AssetPushSubscriptionRecord.priority.getter();
  if ((v28 & 0x100000000) != 0 || (v29 = sub_10005B2BC(v28), v29 == 6))
  {
    v29 = 0;
  }

  v90 = v29;
  v30 = *(v0 + 2144);
  v31 = *(v0 + 1928);
  v32 = *(v0 + 1920);
  v33 = *(v0 + 1912);
  AssetPushSubscriptionRecord.serverDate.getter();
  v34 = *(v31 + 48);
  if (v34(v33, 1, v32) == 1)
  {
    v35 = *(v0 + 1912);
    (*(*(v0 + 2128) + 8))(*(v0 + 2144), *(v0 + 2120));
    sub_10000DCA0(v35, &qword_1000A56E0, &unk_100083BE0);
    v36 = 0.0;
    v37 = 1;
  }

  else
  {
    v38 = *(v0 + 1920);
    v39 = *(v0 + 1904);
    v88 = *(*(v0 + 1928) + 32);
    (v88)(*(v0 + 1968), *(v0 + 1912), v38);
    AssetPushSubscriptionRecord.scheduleToDate.getter();
    v40 = v34(v39, 1, v38);
    v41 = *(v0 + 2144);
    v42 = *(v0 + 2128);
    v43 = *(v0 + 2120);
    if (v40 == 1)
    {
      v44 = *(v0 + 1904);
      (*(*(v0 + 1928) + 8))(*(v0 + 1968), *(v0 + 1920));
      (*(v42 + 8))(v41, v43);
      sub_10000DCA0(v44, &qword_1000A56E0, &unk_100083BE0);
      v36 = 0.0;
      v37 = 1;
    }

    else
    {
      v45 = *(v0 + 1952);
      v86 = *(v0 + 2144);
      v87 = *(v0 + 2120);
      v46 = *(v0 + 1928);
      v47 = *(v0 + 1920);
      v84 = v47;
      v85 = *(v0 + 1960);
      v48 = *(v0 + 1904);
      v49 = *(v0 + 1968);
      v88();
      v89 = *(v0 + 648);
      sub_100001CC0((v0 + 616), *(v0 + 640));
      dispatch thunk of DateProvider.now.getter();
      Date.timeIntervalSince(_:)();
      v51 = v50;
      v52 = *(v46 + 8);
      v52(v45, v84);
      Date.timeIntervalSince(_:)();
      v54 = v53;
      v52(v85, v84);
      v52(v49, v84);
      (*(v42 + 8))(v86, v87);
      v37 = 0;
      v36 = v51 / v54;
    }
  }

  v55 = *(v0 + 1832);
  *(v0 + 2480) = v37;
  *(v0 + 288) = v94;
  *(v0 + 296) = v21;
  *(v0 + 304) = v93;
  *(v0 + 312) = v25;
  *(v0 + 320) = v92;
  *(v0 + 328) = v91;
  *(v0 + 336) = v96;
  *(v0 + 344) = v16;
  *(v0 + 352) = v90;
  *(v0 + 353) = 1;
  *(v0 + 354) = v98;
  *(v0 + 355) = *(v0 + 97);
  *(v0 + 359) = *(v0 + 101);
  *(v0 + 360) = v36;
  *(v0 + 368) = *(v0 + 2480);
  sub_100001D4C((v0 + 616));
  v56 = v55[4];
  sub_100001CC0(v55, v55[3]);
  v57 = *(v0 + 336);
  *(v0 + 232) = *(v0 + 320);
  *(v0 + 248) = v57;
  *(v0 + 264) = *(v0 + 352);
  *(v0 + 280) = *(v0 + 368);
  v58 = *(v0 + 304);
  *(v0 + 200) = *(v0 + 288);
  *(v0 + 216) = v58;
  sub_10005BD64();
  v17 = v98;
  dispatch thunk of CoreAnalyticsLoggerProtocol.send<A>(_:)();
  sub_10005BDB8(v0 + 288);
LABEL_24:
  v59 = *(v0 + 2152);
  v60 = *(v0 + 2024);
  v61 = *(v0 + 1992);
  v62 = *(v0 + 1976);
  v63 = *(v0 + 1896);
  v64 = *(v0 + 1840);
  JetPackAsset.metadata.getter();
  v65 = JetPackAsset.Metadata.assetVersion.getter();
  v99 = v66;
  v101(v61, v62);
  AssetPushSubscriptionRecord.serverDate.getter();
  v67 = *sub_100001CC0(v64, v64[3]);
  *(v0 + 560) = type metadata accessor for MetricsPipelineManager();
  *(v0 + 568) = &off_1000A0070;
  *(v0 + 536) = v67;

  v68 = v65;
  if (v17)
  {
    if (v17 == 1)
    {
      v102 = 0xEB0000000065636ELL;
      v69 = 0x616E65746E69616DLL;
    }

    else
    {
      v102 = 0xEC0000007463656ELL;
      v69 = 0x6E6F636552737061;
    }
  }

  else
  {
    v102 = 0xE900000000000064;
    v69 = 0x656C756465686373;
  }

  v70 = *(v0 + 2360);
  v71 = *(v0 + 2352);
  v72 = *(v0 + 2312);
  v95 = v72;
  v97 = *(v0 + 2328);
  v73 = *(v0 + 2304);
  v74 = *(v0 + 2296);
  v75 = *(v0 + 1864);
  v76 = *(v0 + 1848);
  if ((v70 & &_mh_execute_header) != 0)
  {
    v77 = 0;
  }

  else
  {
    v77 = v70;
  }

  if ((v71 & &_mh_execute_header) != 0)
  {
    v78 = 0;
  }

  else
  {
    v78 = v71;
  }

  sub_100002758(*(v0 + 1896), v75 + *(v76 + 48), &qword_1000A56E0, &unk_100083BE0);
  *v75 = v95;
  *(v75 + 16) = v97;
  *(v75 + 32) = v74;
  *(v75 + 40) = v73;
  *(v75 + 48) = v68;
  *(v75 + 56) = v99;
  *(v75 + 64) = xmmword_100083B40;
  *(v75 + 80) = v69;
  *(v75 + 88) = v102;
  *(v75 + 96) = 1;
  *(v75 + 104) = v78;
  v79 = v75 + *(v76 + 52);
  *v79 = v77;
  *(v79 + 8) = BYTE4(v70) & 1;
  v80 = *sub_100001CC0((v0 + 536), *(v0 + 560));

  v81 = swift_task_alloc();
  *(v0 + 2432) = v81;
  *v81 = v0;
  v81[1] = sub_10004E584;
  v82 = *(v0 + 1864);

  return sub_100038808(v82);
}