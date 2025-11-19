uint64_t sub_100071670(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100071700, v1, 0);
}

uint64_t sub_100071700()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry;
  v0[17] = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry;
  v4 = sub_100026F50((v1 + v3), *(v1 + v3 + 24));
  v5 = AccessCredential.requestId.getter();
  v7 = v6;
  v0[18] = v6;
  v0[19] = *v4;
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_1000717E8;

  return sub_100068334("scheduledNotifications", 22, 2, v5, v7);
}

uint64_t sub_1000717E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v10 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = v3[19];
    v6 = sub_100071C7C;
  }

  else
  {
    v7 = v3[18];
    v8 = v3[15];

    v6 = sub_100071910;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100071910()
{
  v1 = v0[22];
  v2 = v0[15];
  sub_1000723C0(v0[21]);
  v3 = v0[21];
  if (v1)
  {

    if (qword_10016A4A0 != -1)
    {
      swift_once();
    }

    v4 = v0[16];
    v5 = v0[14];
    sub_100026F50(qword_10016B748, qword_10016B760);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v6 = *(type metadata accessor for LogMessage() - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._object = 0x800000010013B0C0;
    v9._countAndFlagsBits = 0xD000000000000035;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v10 = AccessCredential.requestId.getter();
    v0[5] = &type metadata for String;
    v0[2] = v10;
    v0[3] = v11;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 2), &qword_10016AB10, &unk_100130B10);
    v12._countAndFlagsBits = 2629678;
    v12._object = 0xE300000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    swift_getErrorValue();
    v13 = v0[10];
    v14 = v0[11];
    v0[9] = v14;
    v15 = sub_100042BAC(v0 + 6);
    (*(*(v14 - 8) + 16))(v15, v13, v14);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 6), &qword_10016AB10, &unk_100130B10);
    v16._countAndFlagsBits = 41;
    v16._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    v17 = v0[16];

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = v0[17];
    v21 = v0[14];
    v22 = v0[15];

    v23 = sub_100026F50((v22 + v20), *(v22 + v20 + 24));
    v24 = AccessCredential.requestId.getter();
    v26 = v25;
    v0[23] = v25;
    v0[24] = *v23;
    v27 = swift_task_alloc();
    v0[25] = v27;
    *v27 = v0;
    v27[1] = sub_100071F7C;

    return sub_100068CF8("removeAllScheduledNotifications", 31, 2, v24, v26);
  }
}

uint64_t sub_100071C7C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_100071CE8, v2, 0);
}

uint64_t sub_100071CE8()
{
  v1 = v0[22];
  if (qword_10016A4A0 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v3 = v0[14];
  sub_100026F50(qword_10016B748, qword_10016B760);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013B0C0;
  v7._countAndFlagsBits = 0xD000000000000035;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v8 = AccessCredential.requestId.getter();
  v0[5] = &type metadata for String;
  v0[2] = v8;
  v0[3] = v9;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 2), &qword_10016AB10, &unk_100130B10);
  v10._countAndFlagsBits = 2629678;
  v10._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  swift_getErrorValue();
  v11 = v0[10];
  v12 = v0[11];
  v0[9] = v12;
  v13 = sub_100042BAC(v0 + 6);
  (*(*(v12 - 8) + 16))(v13, v11, v12);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 6), &qword_10016AB10, &unk_100130B10);
  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v15 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100071F7C()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {
    v4 = v3[24];

    return _swift_task_switch(sub_1000720C0, v4, 0);
  }

  else
  {
    v5 = v3[23];

    v6 = v3[16];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1000720C0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_10007212C, v2, 0);
}

uint64_t sub_10007212C()
{
  v1 = v0[26];
  if (qword_10016A4A0 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v3 = v0[14];
  sub_100026F50(qword_10016B748, qword_10016B760);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013B0C0;
  v7._countAndFlagsBits = 0xD000000000000035;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v8 = AccessCredential.requestId.getter();
  v0[5] = &type metadata for String;
  v0[2] = v8;
  v0[3] = v9;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 2), &qword_10016AB10, &unk_100130B10);
  v10._countAndFlagsBits = 2629678;
  v10._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  swift_getErrorValue();
  v11 = v0[10];
  v12 = v0[11];
  v0[9] = v12;
  v13 = sub_100042BAC(v0 + 6);
  (*(*(v12 - 8) + 16))(v13, v11, v12);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 6), &qword_10016AB10, &unk_100130B10);
  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v15 = v0[16];

  v16 = v0[1];

  return v16();
}

void sub_1000723C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(v1 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_engagementFactory + 8);
    v18 = (*(v1 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_engagementFactory))(v1 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_bag);
    if (v18)
    {
      for (i = (a1 + 48); ; i += 8)
      {
        v6 = *(i - 1);
        v19 = v2;
        v20 = *(i - 2);
        v7 = *(i + 1);
        v8 = *(i + 3);
        v21 = *i;
        v22 = *(i + 2);
        v9 = i[5];
        v29 = v9;
        sub_100026F94(&qword_10016B890, &unk_1001314E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1001313F0;
        aBlock = 7368801;
        v24 = 0xE300000000000000;

        AnyHashable.init<A>(_:)();
        v11 = static Utils.daemonBundleId.getter();
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v11;
        *(inited + 80) = v12;
        aBlock = 0x707954746E657665;
        v24 = 0xE900000000000065;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = &type metadata for String;
        *(inited + 144) = 0xD000000000000015;
        *(inited + 152) = 0x800000010013B120;
        aBlock = 0x6D617473656D6974;
        v24 = 0xE900000000000070;
        AnyHashable.init<A>(_:)();
        if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v9 <= -9.22337204e18)
        {
          goto LABEL_12;
        }

        if (v9 >= 9.22337204e18)
        {
          goto LABEL_13;
        }

        *(inited + 240) = &type metadata for Int;
        *(inited + 216) = v9;
        aBlock = 0x4974736575716572;
        v24 = 0xE900000000000064;
        AnyHashable.init<A>(_:)();
        *(inited + 312) = &type metadata for String;
        *(inited + 288) = v20;
        *(inited + 296) = v6;
        aBlock = 0x6573616261746164;
        v24 = 0xE800000000000000;
        AnyHashable.init<A>(_:)();
        *(inited + 384) = &type metadata for String;
        *(inited + 360) = v21;
        *(inited + 368) = v7;
        aBlock = 0x656C626174;
        v24 = 0xE500000000000000;
        AnyHashable.init<A>(_:)();
        *(inited + 456) = &type metadata for String;
        *(inited + 432) = v22;
        *(inited + 440) = v8;
        sub_100088E10(inited);
        swift_setDeallocating();
        sub_100026F94(&qword_10016B898, &qword_100131BB0);
        swift_arrayDestroy();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v14 = [v18 enqueueData:isa];

        v27 = sub_100073E78;
        v28 = 0;
        aBlock = _NSConcreteStackBlock;
        v24 = 1107296256;
        v25 = sub_1000740BC;
        v26 = &unk_100165018;
        v15 = _Block_copy(&aBlock);
        [v14 addErrorBlock:v15];
        _Block_release(v15);

        --v2;
        if (v19 == 1)
        {

          return;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
    }

    else
    {
      v16 = type metadata accessor for DaemonError();
      sub_100074354();
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, enum case for DaemonError.noAMSEngagement(_:), v16);
      swift_willThrow();
    }
  }
}

uint64_t sub_100072840()
{
  *(v1 + 80) = v0;
  v2 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  *(v1 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1000728D0, v0, 0);
}

uint64_t sub_1000728D0()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry;
  v0[12] = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry;
  v3 = *sub_100026F50((v1 + v2), *(v1 + v2 + 24));
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_100072998;

  return sub_100068334("allScheduledNotifications", 25, 2, 0, 0);
}

uint64_t sub_100072998(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v7 = *(v3 + 80);
  if (v1)
  {
    v8 = sub_100072DC0;
  }

  else
  {
    v8 = sub_100072ACC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100072ACC()
{
  v1 = v0[15];
  v2 = v0[10];
  sub_1000723C0(v0[14]);
  v3 = v0[14];
  if (v1)
  {

    if (qword_10016A4A0 != -1)
    {
      swift_once();
    }

    v4 = v0[11];
    sub_100026F50(qword_10016B748, qword_10016B760);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v5 = *(type metadata accessor for LogMessage() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8._object = 0x800000010013B1B0;
    v8._countAndFlagsBits = 0xD00000000000002DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    swift_getErrorValue();
    v9 = v0[6];
    v10 = v0[7];
    v0[5] = v10;
    v11 = sub_100042BAC(v0 + 2);
    (*(*(v10 - 8) + 16))(v11, v9, v10);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C((v0 + 2), &qword_10016AB10, &unk_100130B10);
    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    v13 = v0[11];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[12];
    v17 = v0[10];

    v18 = *sub_100026F50((v17 + v16), *(v17 + v16 + 24));
    v19 = swift_task_alloc();
    v0[16] = v19;
    *v19 = v0;
    v19[1] = sub_100072FF4;

    return sub_100068CF8("removeAllScheduledNotifications", 31, 2, 0, 0);
  }
}

uint64_t sub_100072DC0()
{
  v1 = v0[15];
  if (qword_10016A4A0 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  sub_100026F50(qword_10016B748, qword_10016B760);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v3 = *(type metadata accessor for LogMessage() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010013B1B0;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = v0[6];
  v8 = v0[7];
  v0[5] = v8;
  v9 = sub_100042BAC(v0 + 2);
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 2), &qword_10016AB10, &unk_100130B10);
  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100072FF4()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {
    v4 = v3[10];

    return _swift_task_switch(sub_100073130, v4, 0);
  }

  else
  {
    v5 = v3[11];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_100073130()
{
  v1 = v0[17];
  if (qword_10016A4A0 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  sub_100026F50(qword_10016B748, qword_10016B760);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v3 = *(type metadata accessor for LogMessage() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010013B1B0;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = v0[6];
  v8 = v0[7];
  v0[5] = v8;
  v9 = sub_100042BAC(v0 + 2);
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 2), &qword_10016AB10, &unk_100130B10);
  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100073364(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100073388, v2, 0);
}

uint64_t sub_100073388()
{
  if ((static Utils.isUnderTest.getter() & 1) != 0 && (static Utils.isInternalBuild.getter() & 1) != 0 && (v1 = v0[4] + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_scheduler, (v2 = *v1) != 0))
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = *(v1 + 8);

    v6 = v2(v4, v3);
    sub_1000743C4(v2);
    v7 = v0[1];

    return v7(v6 & 1);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[5] = v9;
    *v9 = v0;
    v9[1] = sub_1000734B4;
    v10 = v0[4];

    return sub_10007382C();
  }
}

uint64_t sub_1000734B4(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1000735CC, v3, 0);
}

uint64_t sub_1000735CC()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v6 = v0[6];

    if (qword_10016A4A0 == -1)
    {
LABEL_6:
      sub_100026F50(qword_10016B748, qword_10016B760);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v7 = *(type metadata accessor for LogMessage() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();
      goto LABEL_7;
    }

LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  v3 = v0[2];
  v4 = v3[6];
  if (v4 != 1 && v4 != 2)
  {
    v13 = (v1 + 40);
    v14 = -v2;
    v15 = -1;
    while (1)
    {
      if (v14 + v15 == -1)
      {
        v24 = v0[6];
        goto LABEL_7;
      }

      if (++v15 >= *(v1 + 16))
      {
        break;
      }

      v17 = *(v13 - 1);
      v16 = *v13;
      v18 = v3[2];
      v19 = v3[3];

      if (sub_10008B764())
      {
        v25 = v0[6];

        goto LABEL_19;
      }

      v13 += 2;
      v20 = v3[4];
      v21 = v3[5];
      v22 = sub_10008B764();

      if (v22)
      {
        v23 = v0[6];
LABEL_19:

        v10 = 1;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v5 = v0[6];
LABEL_7:

  v10 = 0;
LABEL_8:
  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_10007384C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_cachedPrefixes;
  v0[3] = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_cachedPrefixes;
  v3 = v1 + v2;
  os_unfair_lock_lock((v1 + v2));
  v4 = *(v3 + 8);

  os_unfair_lock_unlock(v3);
  if (v4)
  {
    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = v0[2];
    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = sub_100073950;

    return sub_100073AEC();
  }
}

uint64_t sub_100073950(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100073A50, 0, 0);
}

uint64_t sub_100073A50()
{
  v1 = v0[2] + v0[3];
  if (v0[5])
  {
    v2 = v0[5];
  }

  else
  {
    v2 = &off_1001645F8;
  }

  os_unfair_lock_lock((v0[2] + v0[3]));
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;

  os_unfair_lock_unlock(v1);
  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_100073AEC()
{
  v1[3] = v0;
  v2 = sub_100026F94(&qword_10016AC08, &qword_100131520);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100073BB8, 0, 0);
}

uint64_t sub_100073BB8()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v4 = async function pointer to Bag.Value.currentOrNil()[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100073C94;
  v6 = v0[6];
  v7 = v0[4];

  return Bag.Value.currentOrNil()(v0 + 2, v7);
}

uint64_t sub_100073C94()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100073DEC, 0, 0);
}

uint64_t sub_100073DEC()
{
  if (v0[2])
  {
    v1 = sub_10002F3B8(v0[2]);
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[6];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_100073E78()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  if (qword_10016A670 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  sub_100026F50(v11, v11[3]);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v2 = *(type metadata accessor for LogMessage() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x800000010013B160;
  v5._countAndFlagsBits = 0xD00000000000002FLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v10[3] = v9;
  v6 = sub_100042BAC(v10);
  (*(*(v9 - 8) + 16))(v6);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v10, &qword_10016AB10, &unk_100130B10);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  return sub_100026FDC(v11);
}

void sub_1000740BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100074124()
{
  v1 = OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_bag;
  v2 = type metadata accessor for Bag();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100026FDC((v0 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dataRegistry));
  v3 = *(v0 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_engagementFactory + 8);

  sub_100026FDC((v0 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_dateProvider));
  v4 = *(v0 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_scheduler + 8);
  sub_1000743C4(*(v0 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_scheduler));
  sub_10002BA6C(v0 + OBJC_IVAR____TtC19amsondevicestoraged32NotificationCenterImplementation_cachedPrefixes + 8, &qword_10016B8A0, &qword_1001314F8);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for NotificationCenterImplementation()
{
  result = qword_10016B7C8;
  if (!qword_10016B7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007425C()
{
  result = type metadata accessor for Bag();
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

char *sub_100074324()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100026F94(&qword_10016B888, &qword_100131498);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

unint64_t sub_100074354()
{
  result = qword_10016AB40;
  if (!qword_10016AB40)
  {
    type metadata accessor for DaemonError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AB40);
  }

  return result;
}

uint64_t sub_1000743AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000743C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000743D8()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016B8A8);
  sub_10002FD14(v0, qword_10016B8A8);
  if (qword_10016A520 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100074494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[79] = a4;
  v5[78] = a3;
  v5[77] = a2;
  v5[76] = a1;
  v6 = type metadata accessor for ColumnDefinition();
  v5[80] = v6;
  v7 = *(v6 - 8);
  v5[81] = v7;
  v8 = *(v7 + 64) + 15;
  v5[82] = swift_task_alloc();
  v9 = type metadata accessor for DataSpecification.Namespace.Table.Column();
  v5[83] = v9;
  v10 = *(v9 - 8);
  v5[84] = v10;
  v11 = *(v10 + 64) + 15;
  v5[85] = swift_task_alloc();
  v12 = type metadata accessor for DataSpecification.Namespace.Table();
  v5[86] = v12;
  v13 = *(v12 - 8);
  v5[87] = v13;
  v14 = *(v13 + 64) + 15;
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v15 = type metadata accessor for DataSpecification.Namespace();
  v5[90] = v15;
  v16 = *(v15 - 8);
  v5[91] = v16;
  v17 = *(v16 + 64) + 15;
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v18 = type metadata accessor for DataSpecification();
  v5[94] = v18;
  v19 = *(v18 - 8);
  v5[95] = v19;
  v20 = *(v19 + 64) + 15;
  v5[96] = swift_task_alloc();
  v21 = type metadata accessor for AccessType();
  v5[97] = v21;
  v22 = *(v21 - 8);
  v5[98] = v22;
  v23 = *(v22 + 64) + 15;
  v5[99] = swift_task_alloc();
  v5[100] = swift_task_alloc();
  v24 = type metadata accessor for OSSignpostID();
  v5[101] = v24;
  v25 = *(v24 - 8);
  v5[102] = v25;
  v26 = *(v25 + 64) + 15;
  v5[103] = swift_task_alloc();
  v5[104] = swift_task_alloc();

  return _swift_task_switch(sub_1000747EC, v4, 0);
}

uint64_t sub_1000747EC()
{
  v335 = v0;
  if (qword_10016A4A8 != -1)
  {
    goto LABEL_160;
  }

LABEL_2:
  v1 = v0[34].__r_.__value_.__r.__words[2];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016B8A8);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[34].__r_.__value_.__r.__words[2];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "checkQuery", "", v6, 2u);
  }

  v8 = v0[34].__r_.__value_.__r.__words[2];
  size = v0[34].__r_.__value_.__l.__size_;
  data = v0[34].__r_.__value_.__l.__data_;
  v11 = v0[33].__r_.__value_.__r.__words[2];
  v12 = v0[33].__r_.__value_.__l.__size_;
  v13 = v0[25].__r_.__value_.__l.__size_;

  (*(data + 2))(size, v8, v11);
  v14 = type metadata accessor for OSSignpostIntervalState();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v318 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(data + 1))(v8, v11);
  v17 = *v13;
  v333 = v0;
  sub_10007AA90(v17, &v0[18].__r_.__value_.__r.__words[2]);
  v324 = 0;
  v0 = v333;
  v18 = v333[33].__r_.__value_.__l.__size_;
  v19 = v333[33].__r_.__value_.__l.__data_;
  v20 = v333[32].__r_.__value_.__r.__words[2];
  v21 = v333[32].__r_.__value_.__l.__size_;
  v22 = v333[25].__r_.__value_.__r.__words[2];
  AccessCredential.accessType.getter();
  sub_1000785F0(&qword_10016B968);
  LOBYTE(v22) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v25 = *(v20 + 8);
  v23 = v20 + 8;
  v24 = v25;
  v25(v19, v21);
  if ((v22 & 1) == 0)
  {
    v49 = v0[33].__r_.__value_.__l.__size_;
    v50 = v0[32].__r_.__value_.__l.__size_;
    sub_100078504();
    v324 = swift_allocError();
    *v51 = v17;
    *(v51 + 8) = 0;
    swift_willThrow();
    v24(v49, v50);
    goto LABEL_138;
  }

  v305 = v24;
  v306 = v23;
  v26 = v0[32].__r_.__value_.__l.__data_;
  v27 = v0[31].__r_.__value_.__r.__words[2];
  v28 = v0[31].__r_.__value_.__l.__size_;
  v29 = v0[25].__r_.__value_.__r.__words[2];
  v30 = v0[25].__r_.__value_.__l.__size_;
  AccessCredential.dataSpecification.getter();
  v308 = DataSpecification.namespaces.getter();
  (*(v27 + 8))(v26, v28);
  sub_10001DAD8(v30, &v0[8]);
  v31 = sub_10002A1C8(&v0[8]);
  v32 = sub_10002A1D0(&v0[8]);
  v0[23].__r_.__value_.__l.__size_ = v31;
  v0[23].__r_.__value_.__r.__words[0] = v32;
  v33 = sub_10002A30C(&v0[23].__r_.__value_.__l.__size_, v0[23].__r_.__value_.__r.__words);
  if (v33)
  {
    v34 = v33;
    v334 = _swiftEmptyArrayStorage;
    result = sub_10007E9EC(0, v33 & ~(v33 >> 63), 0);
    if (v34 < 0)
    {
      goto LABEL_163;
    }

    v36 = 0;
    v0 = v333;
    v37 = v334;
    v38 = &v333[21].__r_.__value_.__r.__words[2];
    v39 = &v333[22];
    do
    {
      v40 = sub_10002A418(v0[8].__r_.__value_.__r.__words, v36);
      std::string::basic_string(v0 + 10, v40);
      std::string::basic_string(v0 + 11, v0 + 10);
      sub_10002EFB0(&v0[11]);
      sub_10002EFC4(&v0[11]);
      v41 = static String._fromUTF8Repairing(_:)();
      v43 = v42;
      std::string::~string(v0 + 10);
      std::string::~string(v0 + 11);
      v334 = v37;
      v45 = v37[2];
      v44 = v37[3];
      if (v45 >= v44 >> 1)
      {
        sub_10007E9EC((v44 > 1), v45 + 1, 1);
        v0 = v333;
        v37 = v334;
      }

      v37[2] = v45 + 1;
      v46 = &v37[2 * v45];
      v46[4] = v41;
      v46[5] = v43;
      v47 = sub_10002A1C8(&v0[8]);
      v48 = sub_10002A1D0(&v0[8]);
      v39->__words[0] = v47;
      *v38 = v48;
      if (v36 >= sub_10002A30C(v39, v38))
      {
        __break(1u);
        goto LABEL_158;
      }

      ++v36;
    }

    while (v34 != v36);
    sub_100078558(&v0[8].__r_.__value_.__l.__data_);
  }

  else
  {
    sub_100078558(&v0[8].__r_.__value_.__l.__data_);
    v37 = _swiftEmptyArrayStorage;
  }

  v321 = sub_1000817CC(v37);

  v52 = *(v308 + 16);
  v53 = _swiftEmptyArrayStorage;
  if (v52)
  {
    v54 = v0[30].__r_.__value_.__l.__size_;
    v334 = _swiftEmptyArrayStorage;
    sub_10007E9EC(0, v52, 0);
    v53 = v334;
    v56 = *(v54 + 16);
    v55 = v54 + 16;
    v332 = v56;
    v57 = v308 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
    v331 = *(v55 + 56);
    v58 = (v55 - 8);
    do
    {
      v59 = v333[31].__r_.__value_.__l.__data_;
      v60 = v333[30].__r_.__value_.__l.__data_;
      v61 = v55;
      (v332)(v59, v57, v60);
      v62 = DataSpecification.Namespace.name.getter();
      v64 = v63;
      (*v58)(v59, v60);
      v334 = v53;
      v66 = v53[2];
      v65 = v53[3];
      if (v66 >= v65 >> 1)
      {
        sub_10007E9EC((v65 > 1), v66 + 1, 1);
        v53 = v334;
      }

      v53[2] = v66 + 1;
      v67 = &v53[2 * v66];
      v67[4] = v62;
      v67[5] = v64;
      v57 += v331;
      --v52;
      v55 = v61;
    }

    while (v52);
    v0 = v333;
  }

  v68 = sub_1000817CC(v53);

  v69 = v321;
  if ((sub_100076660(v68, v321) & 1) == 0)
  {

    if (*(v68 + 16) <= v69[2] >> 3)
    {
      v334 = v69;
      sub_100077768(v68);

      v0 = v333;
      v234 = v334;
    }

    else
    {
      v234 = sub_100076D38(v68, v69);
    }

    v237 = v0[33].__r_.__value_.__l.__size_;
    v238 = v0[32].__r_.__value_.__l.__size_;
    sub_100078504();
    v324 = swift_allocError();
    *v239 = v234;
    *(v239 + 8) = 1;
    swift_willThrow();
    goto LABEL_130;
  }

  result = v308;
  v301 = *(v308 + 16);
  if (!v301)
  {
LABEL_127:

    v235 = v0[26].__r_.__value_.__l.__data_;
    v236 = *(v235 + 10);
    (*(v235 + 9))(*v235, *(v235 + 1), v0[25].__r_.__value_.__r.__words[2]);
    v241 = v333[26].__r_.__value_.__l.__data_;
    v242 = v333[25].__r_.__value_.__r.__words[2];
    AccessCredential.entitlements.getter();
    v243 = v241[8];
    sub_100026F50(v241 + 4, v241[7]);
    v244 = dispatch thunk of EntitlementChecker.hasEntitlements(_:)();

    if (v244)
    {
      v245 = v333[34].__r_.__value_.__r.__words[2];
      v246 = v333[34].__r_.__value_.__l.__size_;
      v247 = v333[33].__r_.__value_.__l.__size_;
      v248 = v333[33].__r_.__value_.__l.__data_;
      v249 = v333[32].__r_.__value_.__l.__size_;
      v250 = v333[32].__r_.__value_.__l.__data_;
      v251 = v333[31].__r_.__value_.__l.__data_;
      v252 = v333[30].__r_.__value_.__r.__words[2];
      v253 = v333[29].__r_.__value_.__r.__words[2];
      v254 = v333[29].__r_.__value_.__l.__size_;
      v332 = v333[28].__r_.__value_.__l.__size_;
      v255 = v333[27].__r_.__value_.__l.__size_;
      v305(v247, v249);
      sub_100078228("checkQuery", 10, 2);

      v256 = v333->__r_.__value_.__l.__size_;
      goto LABEL_139;
    }

    sub_100042B50();
    v258 = v333;
    v333[19].__r_.__value_.__l.__size_ = 0;
    v258[19].__r_.__value_.__r.__words[2] = 0;
    swift_willThrowTypedImpl();
    v0 = v333;
    v259 = v333[33].__r_.__value_.__l.__size_;
    v238 = v333[32].__r_.__value_.__l.__size_;
    sub_100042B50();
    v324 = swift_allocError();
    *v260 = 0;
    v260[1] = 0;
    v240 = v259;
    goto LABEL_136;
  }

  v70 = 0;
  p_size = &v0[21].__r_.__value_.__l.__size_;
  v298 = &v0[22].__r_.__value_.__l.__size_;
  v297 = &v0[22].__r_.__value_.__r.__words[2];
  v330 = &v0[24];
  v331 = &v0[23].__r_.__value_.__r.__words[2];
  v316 = &v0[25];
  v71 = v0[30].__r_.__value_.__l.__size_;
  v72 = v0[29].__r_.__value_.__l.__data_;
  v73 = v0[28].__r_.__value_.__l.__data_;
  v74 = v0[27].__r_.__value_.__l.__data_;
  v303 = v308 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
  v302 = v71 + 16;
  v315 = v321 + 56;
  v323 = v72 + 16;
  v312 = v72;
  v322 = (v72 + 8);
  v329 = v73 + 16;
  v296 = v73;
  v328 = (v73 + 8);
  v320 = v74 + 16;
  v294 = v74;
  v319 = (v74 + 8);
  v304 = v71;
  v299 = (v71 + 8);
  while (1)
  {
    if (v70 >= *(result + 16))
    {
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
      return result;
    }

    v77 = v0[30].__r_.__value_.__r.__words[2];
    v78 = v0[30].__r_.__value_.__l.__data_;
    v79 = *(v304 + 72);
    v307 = v70;
    (*(v304 + 16))(v77, v303 + v79 * v70, v78);
    v325 = DataSpecification.Namespace.name.getter();
    v326 = v80;
    if (!*(v321 + 16) || (v81 = *(v321 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v82 = Hasher._finalize()(), v83 = -1 << *(v321 + 32), v84 = v82 & ~v83, ((*(v315 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0))
    {
      v0 = v333;
LABEL_25:
      v75 = v0[30].__r_.__value_.__r.__words[2];
      v76 = v0[30].__r_.__value_.__l.__data_;

      goto LABEL_26;
    }

    v85 = ~v83;
    v0 = v333;
    while (1)
    {
      v86 = (*(v321 + 48) + 16 * v84);
      if (*v86 == v325 && v86[1] == v326)
      {
        break;
      }

      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v0 = v333;
      if (v88)
      {
        break;
      }

      v84 = (v84 + 1) & v85;
      if (((*(v315 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v89 = v0[30].__r_.__value_.__r.__words[2];
    v332 = DataSpecification.Namespace.tables.getter();
    v90 = v332[2];
    if (v90)
    {
      v334 = _swiftEmptyArrayStorage;
      sub_10007E9EC(0, v90, 0);
      v91 = v334;
      v92 = v332 + ((v312[80] + 32) & ~v312[80]);
      v93 = *(v312 + 9);
      v94 = *(v312 + 2);
      do
      {
        v95 = v333[29].__r_.__value_.__r.__words[2];
        v96 = v333[28].__r_.__value_.__r.__words[2];
        v94(v95, v92, v96);
        v97 = DataSpecification.Namespace.Table.name.getter();
        v99 = v98;
        (*v322)(v95, v96);
        v334 = v91;
        v101 = v91[2];
        v100 = v91[3];
        if (v101 >= v100 >> 1)
        {
          sub_10007E9EC((v100 > 1), v101 + 1, 1);
          v91 = v334;
        }

        v91[2] = v101 + 1;
        v102 = &v91[2 * v101];
        v102[4] = v97;
        v102[5] = v99;
        v92 += v93;
        --v90;
      }

      while (v90);
    }

    else
    {

      v91 = _swiftEmptyArrayStorage;
    }

    v103 = v333[25].__r_.__value_.__l.__size_;
    v104 = sub_1000817CC(v91);

    v105 = v326;

    sub_10007683C(v325, v105, v333 + 15);
    v106 = v333;
    sub_10001DD08(v103, &v333[15], &v333[14]);
    std::string::~string(v106 + 15);
    v107 = sub_10002A1C8(&v106[14]);
    v108 = sub_10002A1D0(&v106[14]);
    v109 = p_size;
    *p_size = v107;
    v106[20].__r_.__value_.__r.__words[2] = v108;
    v110 = sub_10002A2EC(v109, &v106[20].__r_.__value_.__r.__words[2]);
    if (v110)
    {
      v111 = v110;
      v334 = _swiftEmptyArrayStorage;
      result = sub_10007E9EC(0, v110 & ~(v110 >> 63), 0);
      if (v111 < 0)
      {
        goto LABEL_164;
      }

      v112 = 0;
      v0 = v333;
      v113 = v334;
      while (1)
      {
        v114 = sub_10002C030(v0[14].__r_.__value_.__r.__words, v112);
        sub_10002A33C(&v0[4].__r_.__value_.__s.__data_[16], v114);
        std::string::basic_string(v0 + 17, (v0 + 136));
        sub_10002EFB0(&v0[17]);
        sub_10002EFC4(&v0[17]);
        v115 = static String._fromUTF8Repairing(_:)();
        v117 = v116;
        v0 = v333;
        sub_10001B428(&v333[4].__r_.__value_.__r.__words[2]);
        std::string::~string(v0 + 17);
        v334 = v113;
        v119 = v113[2];
        v118 = v113[3];
        if (v119 >= v118 >> 1)
        {
          sub_10007E9EC((v118 > 1), v119 + 1, 1);
          v0 = v333;
          v113 = v334;
        }

        v113[2] = v119 + 1;
        v120 = &v113[2 * v119];
        v120[4] = v115;
        v120[5] = v117;
        v121 = sub_10002A1C8(&v0[14]);
        v122 = sub_10002A1D0(&v0[14]);
        v0[21].__r_.__value_.__r.__words[0] = v121;
        v123 = v316;
        *v316 = v122;
        if (v112 >= sub_10002A2EC(v0[21].__r_.__value_.__r.__words, v123))
        {
          break;
        }

        if (v111 == ++v112)
        {
          goto LABEL_54;
        }
      }

LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      swift_once();
      goto LABEL_2;
    }

    v113 = _swiftEmptyArrayStorage;
LABEL_54:
    v332 = sub_1000817CC(v113);

    if ((sub_100076660(v104, v332) & 1) == 0)
    {

      if (*(v104 + 16) <= v332[2] >> 3)
      {
        v334 = v332;
        sub_100077768(v104);

        v286 = v334;
      }

      else
      {
        v286 = sub_100076D38(v104, v332);
      }

      v0 = v333;
      v237 = v333[33].__r_.__value_.__l.__size_;
      v238 = v333[32].__r_.__value_.__l.__size_;
      v287 = v333[30].__r_.__value_.__r.__words[2];
      v288 = v333[30].__r_.__value_.__l.__data_;
      sub_100078504();
      v324 = swift_allocError();
      *v292 = v286;
      *(v292 + 8) = 2;
      swift_willThrow();
LABEL_156:
      sub_10002A4B8(&v0[14].__r_.__value_.__l.__data_);
      (*v299)(v287, v288);
LABEL_130:
      v240 = v237;
LABEL_136:
      v261 = v238;
      goto LABEL_137;
    }

    v124 = v333[30].__r_.__value_.__r.__words[2];

    v125 = DataSpecification.Namespace.tables.getter();
    v313 = v125;
    v311 = *(v125 + 16);
    if (v311)
    {
      break;
    }

    v0 = v333;
LABEL_124:

    v75 = v0[30].__r_.__value_.__r.__words[2];
    v76 = v0[30].__r_.__value_.__l.__data_;

    sub_10002A4B8(&v0[14].__r_.__value_.__l.__data_);
LABEL_26:
    (*v299)(v75, v76);
    v70 = v307 + 1;
    result = v308;
    if (v307 + 1 == v301)
    {
      goto LABEL_127;
    }
  }

  v126 = 0;
  v310 = v125 + ((v312[80] + 32) & ~v312[80]);
  v0 = v333;
  v327 = v332 + 7;
  while (1)
  {
    if (v126 >= *(v313 + 16))
    {
      goto LABEL_159;
    }

    v129 = v0[29].__r_.__value_.__l.__size_;
    v130 = v0[28].__r_.__value_.__r.__words[2];
    v131 = *(v312 + 9);
    v317 = v126;
    (*(v312 + 2))(v129, v310 + v131 * v126, v130);
    v132 = DataSpecification.Namespace.Table.name.getter();
    v134 = v133;
    if (!v332[2] || (v135 = v132, v136 = v332[5], Hasher.init(_seed:)(), String.hash(into:)(), v137 = Hasher._finalize()(), v138 = -1 << *(v332 + 32), v139 = v137 & ~v138, ((*(v327 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139) & 1) == 0))
    {
      v0 = v333;
LABEL_58:
      v127 = v0[29].__r_.__value_.__l.__size_;
      v128 = v0[28].__r_.__value_.__r.__words[2];

      (*v322)(v127, v128);
      goto LABEL_59;
    }

    v140 = ~v138;
    v0 = v333;
    while (1)
    {
      v141 = (v332[6] + 16 * v139);
      if (*v141 == v135 && v141[1] == v134)
      {
        break;
      }

      v143 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v0 = v333;
      if (v143)
      {
        break;
      }

      v139 = (v139 + 1) & v140;
      if (((*(v327 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v144 = v0[29].__r_.__value_.__l.__size_;
    v145 = v0[25].__r_.__value_.__l.__size_;

    v146 = DataSpecification.Namespace.Table.name.getter();
    sub_10007683C(v146, v147, v333 + 13);
    v148 = v326;

    sub_10007683C(v325, v148, v333 + 12);
    v149 = v333;
    sub_10001DE4C(v145, &v333[13], &v333[12], &v333[16]);
    std::string::~string(v149 + 12);
    std::string::~string(v149 + 13);
    v150 = sub_10002A1C8(&v149[16]);
    v151 = sub_10002A1D0(&v149[16]);
    v152 = v298;
    *v298 = v150;
    v153 = v297;
    *v297 = v151;
    v154 = sub_10002A2B8(v152, v153);
    v155 = _swiftEmptyArrayStorage;
    if (v154)
    {
      v156 = v154;
      v334 = _swiftEmptyArrayStorage;
      result = sub_10007E9EC(0, v154 & ~(v154 >> 63), 0);
      if (v156 < 0)
      {
        goto LABEL_162;
      }

      v157 = 0;
      v158 = v333;
      v155 = v334;
      while (1)
      {
        sub_10002A2D8(v158[16].__r_.__value_.__r.__words, v157);
        sub_10002A2E8(&v158->__r_.__value_.__r.__words[2]);
        std::string::basic_string(v158 + 9, (v158 + 64));
        sub_10002EFB0(&v158[9]);
        sub_10002EFC4(&v158[9]);
        v159 = static String._fromUTF8Repairing(_:)();
        v161 = v160;
        v158 = v333;
        sub_10001B830(&v333->__r_.__value_.__r.__words[2]);
        std::string::~string(v158 + 9);
        v334 = v155;
        v163 = v155[2];
        v162 = v155[3];
        if (v163 >= v162 >> 1)
        {
          sub_10007E9EC((v162 > 1), v163 + 1, 1);
          v158 = v333;
          v155 = v334;
        }

        v155[2] = v163 + 1;
        v164 = &v155[2 * v163];
        v164[4] = v159;
        v164[5] = v161;
        v165 = sub_10002A1C8(&v158[16]);
        v166 = sub_10002A1D0(&v158[16]);
        v167 = v330;
        v168 = v331;
        *v331 = v165;
        *v167 = v166;
        v169 = sub_10002A2B8(v168, v167);
        if (v157 >= v169)
        {
          break;
        }

        if (v156 == ++v157)
        {
          goto LABEL_78;
        }
      }

      __break(1u);
      goto LABEL_151;
    }

LABEL_78:
    v170 = sub_1000817CC(v155);

    v172 = *(v170 + 32);
    v173 = ((1 << v172) + 63) >> 6;
    if ((v172 & 0x3Fu) <= 0xD)
    {
      goto LABEL_79;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v233 = swift_slowAlloc();

    v314 = sub_100076AFC(v233, v173, v170, sub_100076A20);
    v324 = 0;
    swift_bridgeObjectRelease_n();

    if (v324)
    {
      return result;
    }

LABEL_97:

    v188 = static Connection.ServiceColumns.allNames.getter();
    v189 = sub_100076B8C(v188, v314);

    if (*(v189 + 16))
    {
      v190 = v333[33].__r_.__value_.__l.__size_;
      if ((AccessType.isReadonly.getter() & 1) == 0)
      {
        v0 = v333;
        v272 = v333[33].__r_.__value_.__l.__size_;
        v273 = v333[32].__r_.__value_.__l.__size_;
        v274 = v333[30].__r_.__value_.__r.__words[2];
        v275 = v333[30].__r_.__value_.__l.__data_;
        v276 = v333[29].__r_.__value_.__l.__size_;
        v277 = v333[28].__r_.__value_.__r.__words[2];

        sub_100078504();
        v324 = swift_allocError();
        *v278 = v189;
        *(v278 + 8) = 4;
        swift_willThrow();
        sub_1000785A4(&v0[16].__r_.__value_.__l.__data_);
        (*v322)(v276, v277);
        sub_10002A4B8(&v0[14].__r_.__value_.__l.__data_);
        (*v299)(v274, v275);
        v240 = v272;
        v261 = v273;
        goto LABEL_137;
      }
    }

    v191 = v333[29].__r_.__value_.__l.__size_;

    v309 = DataSpecification.Namespace.Table.columns.getter();
    v192 = v309[2];
    if (v192)
    {
      v334 = _swiftEmptyArrayStorage;
      sub_10007E9EC(0, v192, 0);
      v193 = v334;
      v194 = v309 + ((v296[80] + 32) & ~v296[80]);
      v195 = *(v296 + 9);
      v196 = *(v296 + 2);
      do
      {
        v197 = v333[28].__r_.__value_.__l.__size_;
        v198 = v333[27].__r_.__value_.__r.__words[2];
        v196(v197, v194, v198);
        v199 = DataSpecification.Namespace.Table.Column.name.getter();
        v201 = v200;
        (*v328)(v197, v198);
        v334 = v193;
        v203 = v193[2];
        v202 = v193[3];
        if (v203 >= v202 >> 1)
        {
          sub_10007E9EC((v202 > 1), v203 + 1, 1);
          v193 = v334;
        }

        v193[2] = v203 + 1;
        v204 = &v193[2 * v203];
        v204[4] = v199;
        v204[5] = v201;
        v194 += v195;
        --v192;
      }

      while (v192);
    }

    else
    {

      v193 = _swiftEmptyArrayStorage;
    }

    v205 = v333[33].__r_.__value_.__l.__size_;
    v206 = v333[33].__r_.__value_.__l.__data_;
    v207 = v333[32].__r_.__value_.__l.__size_;
    v309 = sub_1000817CC(v193);

    static AccessType.delete.getter();
    sub_1000785F0(&qword_10016B978);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v305(v206, v207);
    if (v333[24].__r_.__value_.__l.__size_ == v333[24].__r_.__value_.__r.__words[2])
    {
      v208 = v333[29].__r_.__value_.__l.__size_;
      v209 = v333[26].__r_.__value_.__l.__size_;
      Connection.schema.getter();
      v210 = DataSpecification.Namespace.Table.name.getter();
      v211 = v333;
      v333[20].__r_.__value_.__r.__words[0] = v210;
      v211[20].__r_.__value_.__l.__size_ = v212;
      String.init<A>(_:)();
      v300 = dispatch thunk of SchemaReader.columnDefinitions(table:)();
      v324 = 0;

      v213 = *(v300 + 16);
      if (v213)
      {
        v334 = _swiftEmptyArrayStorage;
        sub_10007E9EC(0, v213, 0);
        v214 = v334;
        v215 = v300 + ((v294[80] + 32) & ~v294[80]);
        v216 = *(v294 + 9);
        v217 = *(v294 + 2);
        do
        {
          v218 = v333[27].__r_.__value_.__l.__size_;
          v219 = v333[26].__r_.__value_.__r.__words[2];
          v217(v218, v215, v219);
          v220 = ColumnDefinition.name.getter();
          v221 = v333;
          v333[18].__r_.__value_.__r.__words[0] = v220;
          v221[18].__r_.__value_.__l.__size_ = v222;
          v223 = String.init<A>(_:)();
          v225 = v224;
          (*v319)(v218, v219);
          v334 = v214;
          v227 = v214[2];
          v226 = v214[3];
          if (v227 >= v226 >> 1)
          {
            sub_10007E9EC((v226 > 1), v227 + 1, 1);
            v214 = v334;
          }

          v214[2] = v227 + 1;
          v228 = &v214[2 * v227];
          v228[4] = v223;
          v228[5] = v225;
          v215 += v216;
          --v213;
        }

        while (v213);
      }

      else
      {

        v214 = _swiftEmptyArrayStorage;
      }

      v229 = sub_1000817CC(v214);

      v230 = static Connection.ServiceColumns.allNames.getter();
      v165 = sub_1000772BC(v230, v229);

      if ((sub_100076660(v309, v165) & 1) == 0)
      {

        v169 = v309;
        if (v309[2] <= v165[2] >> 3)
        {
LABEL_151:
          v334 = v165;
          sub_100077768(v169);
          goto LABEL_152;
        }

        v257 = sub_100076D38(v309, v165);
LABEL_147:
        v285 = v257;

LABEL_153:
        v0 = v333;
        v237 = v333[33].__r_.__value_.__l.__size_;
        v238 = v333[32].__r_.__value_.__l.__size_;
        v287 = v333[30].__r_.__value_.__r.__words[2];
        v288 = v333[30].__r_.__value_.__l.__data_;
        v289 = v333[29].__r_.__value_.__l.__size_;
        v290 = v333[28].__r_.__value_.__r.__words[2];
        sub_100078504();
        v324 = swift_allocError();
        *v291 = v285;
        *(v291 + 8) = 3;
        swift_willThrow();
        sub_1000785A4(&v0[16].__r_.__value_.__l.__data_);
        (*v322)(v289, v290);
        goto LABEL_156;
      }
    }

    if ((sub_100076660(v309, v314) & 1) == 0)
    {

      if (v309[2] <= v314[2] >> 3)
      {
        v334 = v314;
        sub_100077768(v309);
LABEL_152:

        v285 = v334;
        goto LABEL_153;
      }

      v257 = sub_100076D38(v309, v314);
      goto LABEL_147;
    }

    v0 = v333;
    v231 = v333[29].__r_.__value_.__l.__size_;
    v232 = v333[28].__r_.__value_.__r.__words[2];

    sub_1000785A4(&v0[16].__r_.__value_.__l.__data_);
    (*v322)(v231, v232);
LABEL_59:
    v126 = v317 + 1;
    if (v317 + 1 == v311)
    {

      goto LABEL_124;
    }
  }

LABEL_79:
  v309 = &v293;
  __chkstk_darwin(v171);
  v175 = &v293 - ((v174 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v175, v174);
  v176 = 0;
  v177 = 0;
  v178 = 1 << *(v170 + 32);
  if (v178 < 64)
  {
    v179 = ~(-1 << v178);
  }

  else
  {
    v179 = -1;
  }

  v180 = v179 & *(v170 + 56);
  v181 = (v178 + 63) >> 6;
  while (v180)
  {
    v182 = __clz(__rbit64(v180));
    v180 &= v180 - 1;
LABEL_90:
    v185 = v182 | (v177 << 6);
    v186 = (*(v170 + 48) + 16 * v185);
    if (*v186 != 42 || v186[1] != 0xE100000000000000)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        *&v175[(v185 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v185;
        if (__OFADD__(v176++, 1))
        {
          goto LABEL_165;
        }
      }
    }
  }

  v183 = v177;
  while (1)
  {
    v177 = v183 + 1;
    if (__OFADD__(v183, 1))
    {
      break;
    }

    if (v177 >= v181)
    {
      v314 = sub_100077CB0(v175, v173, v176, v170);
      goto LABEL_97;
    }

    v184 = *(v170 + 56 + 8 * v177);
    ++v183;
    if (v184)
    {
      v182 = __clz(__rbit64(v184));
      v180 = (v184 - 1) & v184;
      goto LABEL_90;
    }
  }

  __break(1u);
  v0 = v333;
  v279 = v333[33].__r_.__value_.__l.__size_;
  v280 = v333[32].__r_.__value_.__l.__size_;
  v281 = v333[30].__r_.__value_.__r.__words[2];
  v282 = v333[30].__r_.__value_.__l.__data_;
  v283 = v333[29].__r_.__value_.__l.__size_;
  v284 = v333[28].__r_.__value_.__r.__words[2];

  sub_1000785A4(&v0[16].__r_.__value_.__l.__data_);
  (*v322)(v283, v284);
  sub_10002A4B8(&v0[14].__r_.__value_.__l.__data_);
  (*v299)(v281, v282);
  v240 = v279;
  v261 = v280;
LABEL_137:
  v305(v240, v261);
LABEL_138:
  v262 = v0[34].__r_.__value_.__r.__words[2];
  v263 = v0[34].__r_.__value_.__l.__size_;
  v264 = v0[33].__r_.__value_.__l.__size_;
  v265 = v0[33].__r_.__value_.__l.__data_;
  v266 = v0[32].__r_.__value_.__l.__data_;
  v267 = v0[31].__r_.__value_.__l.__data_;
  v268 = v0[30].__r_.__value_.__r.__words[2];
  v269 = v0[29].__r_.__value_.__r.__words[2];
  v270 = v0[29].__r_.__value_.__l.__size_;
  v332 = v0[28].__r_.__value_.__l.__size_;
  v271 = v0[27].__r_.__value_.__l.__size_;
  sub_100078228("checkQuery", 10, 2);

  v256 = v333->__r_.__value_.__l.__size_;
LABEL_139:

  return v256();
}

void sub_10007660C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100076614);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100076660(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_10007683C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  sub_100078668(a3);
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_35:
    v7 = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  std::string::reserve(a3, v7);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v9 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v6 = 15;
  while (4 * v8 != v6 >> 14)
  {
    v11 = v6 & 0xC;
    v12 = v6;
    if (v11 == v10)
    {
      v12 = sub_1000876A8(v6, a1, a2);
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v8)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v15 = String.UTF8View._foreignSubscript(position:)();
      if (v11 != v10)
      {
        goto LABEL_24;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v17[0] = a1;
      v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v15 = *(v17 + v13);
      if (v11 != v10)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v14 = _StringObject.sharedUTF8.getter();
      }

      v15 = *(v14 + v13);
      if (v11 != v10)
      {
LABEL_24:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_25;
      }
    }

    v6 = sub_1000876A8(v6, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_11:
      v6 = (v6 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_12;
    }

LABEL_25:
    if (v8 <= v6 >> 16)
    {
      goto LABEL_34;
    }

    v6 = String.UTF8View._foreignIndex(after:)();
LABEL_12:
    std::string::push_back(a3, v15);
  }
}

uint64_t sub_100076A20(void *a1)
{
  if (*a1 == 42 && a1[1] == 0xE100000000000000)
  {
    return 0;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

unint64_t sub_100076AA8()
{
  result = qword_10016B960;
  if (!qword_10016B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B960);
  }

  return result;
}

void *sub_100076AFC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000780B4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100076B8C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_100077ED4(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_100078634(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

void sub_100076D2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void *sub_100076D38(unint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a1;
  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
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
  v62 = a2 + 7;

  v15 = 0;
  v60 = v13;
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
    v18 = *(v5 + 48);
    v61 = v15;
    v19 = (v18 + ((v15 << 10) | (16 * __clz(__rbit64(v11)))));
    v21 = *v19;
    v20 = v19[1];
    v22 = v4[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v11 &= v11 - 1;
    v24 = -1 << *(v4 + 32);
    v2 = v23 & ~v24;
    v5 = v2 >> 6;
    v3 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v5 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v25 = ~v24;
  while (1)
  {
    v26 = (v4[6] + 16 * v2);
    v27 = *v26 == v21 && v26[1] == v20;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v25;
    v5 = v2 >> 6;
    v3 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v8 = v60;
  v28 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v30 = *(v4 + 32);
  v55 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v55;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v56 = &v54;
    __chkstk_darwin(v29);
    v2 = &v54 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v31);
    v32 = *(v2 + 8 * v5) & ~v3;
    v33 = v4[2];
    v59 = v2;
    *(v2 + 8 * v5) = v32;
    v34 = v33 - 1;
LABEL_23:
    v57 = v34;
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
        v4 = sub_100077CB0(v59, v55, v57, v4);
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
            v38 = *(v8 + 48);
            v61 = v28;
            v39 = (v38 + ((v28 << 10) | (16 * __clz(__rbit64(v11)))));
            v40 = *v39;
            v3 = v39[1];
            v41 = v4[5];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v42 = Hasher._finalize()();
            v11 &= v11 - 1;
            v43 = -1 << *(v4 + 32);
            v5 = v42 & ~v43;
            v2 = v5 >> 6;
            v44 = 1 << v5;
            if (((1 << v5) & v62[v5 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (v4[6] + 16 * v5);
          if (*v45 != v40 || v45[1] != v3)
          {
            v47 = ~v43;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v5 = (v5 + 1) & v47;
              v2 = v5 >> 6;
              v44 = 1 << v5;
              if (((1 << v5) & v62[v5 >> 6]) == 0)
              {
                v8 = v60;
                goto LABEL_45;
              }

              v48 = (v4[6] + 16 * v5);
              if (*v48 == v40 && v48[1] == v3)
              {
                break;
              }
            }
          }

          v8 = v60;
          v35 = v59[v2];
          v59[v2] = v35 & ~v44;
          v27 = (v35 & v44) == 0;
          v28 = v61;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v4 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v61;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v50);
  v52 = v54;
  v53 = sub_100077894(v51, v55, v4, v2, v63);

  if (!v52)
  {

    v58 = v64;
    v4 = v53;
LABEL_52:
    sub_100042570();
    return v4;
  }

  __break(1u);
  return result;
}

void sub_1000772B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

unint64_t *sub_1000772BC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v58[0] = a1;
  v4 = *(a1 + 16);

  if (!v4)
  {
    goto LABEL_40;
  }

  v5 = 0;
  v50 = 0;
  v6 = a1 + 32;
  v56 = a1;
  v57 = v2 + 7;
  v55 = a1 + 32;
  while (1)
  {
    v7 = v5;
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v11 = v2[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = v7 + 1;
    v14 = -1 << *(v2 + 32);
    v15 = v12 & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & v57[v15 >> 6]) != 0)
    {
      break;
    }

LABEL_5:

    v5 = v13;
    v6 = v55;
    if (v13 == v4)
    {
      goto LABEL_40;
    }
  }

  v18 = (v2[6] + 16 * v15);
  if (*v18 != v10 || v18[1] != v9)
  {
    v20 = ~v14;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v15 = (v15 + 1) & v20;
      v16 = v15 >> 6;
      v17 = 1 << v15;
      if (((1 << v15) & v57[v15 >> 6]) == 0)
      {
        goto LABEL_5;
      }

      v21 = (v2[6] + 16 * v15);
      if (*v21 == v10 && v21[1] == v9)
      {
        break;
      }
    }
  }

  v22 = v13;
  v58[1] = v13;

  v24 = *(v2 + 32);
  v51 = ((1 << v24) + 63) >> 6;
  v25 = 8 * v51;
  v26 = v56;
  if ((v24 & 0x3Fu) <= 0xD)
  {
    goto LABEL_17;
  }

LABEL_44:
  v45 = v25;

  v46 = v45;
  if (swift_stdlib_isStackAllocationSafe())
  {

    v22 = v13;
LABEL_17:
    v52 = &v50;
    __chkstk_darwin(v23);
    v15 = &v50 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v15, v57, v27);
    v28 = v2[2];
    v29 = *(v15 + 8 * v16) & ~v17;
    v54 = v15;
    *(v15 + 8 * v16) = v29;
    v30 = v28 - 1;
    v31 = *(v26 + 16);
    while (1)
    {
      v53 = v30;
      if (v22 == v31)
      {
LABEL_39:
        v2 = sub_100077CB0(v54, v51, v53, v2);
LABEL_40:

        return v2;
      }

      v13 = v22;
      while (1)
      {
        if ((v22 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (v13 >= *(v26 + 16))
        {
          goto LABEL_43;
        }

        v16 = v22;
        v33 = (v55 + 16 * v13);
        v34 = *v33;
        v17 = v33[1];
        v35 = v2[5];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v36 = Hasher._finalize()();
        ++v13;
        v37 = -1 << *(v2 + 32);
        v38 = v36 & ~v37;
        v15 = v38 >> 6;
        v39 = 1 << v38;
        if (((1 << v38) & v57[v38 >> 6]) != 0)
        {
          break;
        }

LABEL_35:

LABEL_21:
        v26 = v56;
        v22 = v16;
        if (v13 == v31)
        {
          goto LABEL_39;
        }
      }

      v40 = (v2[6] + 16 * v38);
      if (*v40 != v34 || v40[1] != v17)
      {
        v42 = ~v37;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v38 = (v38 + 1) & v42;
          v15 = v38 >> 6;
          v39 = 1 << v38;
          if (((1 << v38) & v57[v38 >> 6]) == 0)
          {
            goto LABEL_35;
          }

          v43 = (v2[6] + 16 * v38);
          if (*v43 == v34 && v43[1] == v17)
          {
            break;
          }
        }
      }

      v32 = v54[v15];
      v54[v15] = v32 & ~v39;
      if ((v32 & v39) == 0)
      {
        goto LABEL_21;
      }

      v30 = v53 - 1;
      v26 = v56;
      if (__OFSUB__(v53, 1))
      {
        __break(1u);
      }

      v22 = v13;
      if (v53 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_40;
      }
    }
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v57, v46);
  v48 = v50;
  v49 = sub_100077ACC(v47, v51, v2, v15, v58);

  if (!v48)
  {

    return v49;
  }

  __break(1u);
  return result;
}

void sub_10007775C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100077768(uint64_t result)
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

        sub_1000A3548(v12, v13);

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

unint64_t *sub_100077894(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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

          return sub_100077CB0(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
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
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
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

unint64_t *sub_100077ACC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_100077CB0(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v17 = Hasher._finalize()();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_100077CB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100026F94(&qword_10016B560, &qword_1001311D0);
  result = static _SetStorage.allocate(capacity:)();
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
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
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

uint64_t sub_100077ED4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v14 = Hasher._finalize()();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_100077CB0(v26, a2, v25, a4);
}

uint64_t sub_1000780B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_100077CB0(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100078228(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A4A8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016B8A8);
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

unint64_t sub_100078504()
{
  result = qword_10016B970;
  if (!qword_10016B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B970);
  }

  return result;
}

void **sub_100078558(void **a1)
{
  v3 = a1;
  sub_100078674(&v3, sub_10001F244);
  return a1;
}

void **sub_1000785A4(void **a1)
{
  v3 = a1;
  sub_100078674(&v3, sub_10002BE98);
  return a1;
}

uint64_t sub_1000785F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100078634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100077ED4(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void *sub_100078668(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_100078674(void ***a1, void (*a2)(void))
{
  if (**a1)
  {
    a2();
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1000786CC()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016B980);
  sub_10002FD14(v0, qword_10016B980);
  if (qword_10016A520 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_100078788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_100026F94(&qword_10016BA48, &unk_100131630) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for RateLimitInfo();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = type metadata accessor for MonotonicTime();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v12 = type metadata accessor for OSSignpostID();
  v4[15] = v12;
  v13 = *(v12 - 8);
  v4[16] = v13;
  v14 = *(v13 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100078960, v3, 0);
}

uint64_t sub_100078960()
{
  v27 = v0;
  if (qword_10016A4B0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[3];
  v3 = type metadata accessor for OSSignposter();
  sub_10002FD14(v3, qword_10016B980);

  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = v0[18];
    v8 = v0[2];
    v7 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v26);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v11, "checkRateLimits", "requestId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[14];
  v16 = v0[5];
  (*(v14 + 16))(v0[17], v12, v13);
  v17 = type metadata accessor for OSSignpostIntervalState();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v0[19] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  static MonotonicTime.now.getter();
  v20 = *sub_100026F50((v16 + 112), *(v16 + 136));
  v21 = swift_task_alloc();
  v0[20] = v21;
  *v21 = v0;
  v21[1] = sub_100078BD0;
  v22 = v0[6];
  v23 = v0[2];
  v24 = v0[3];

  return sub_10003A070(v22, v23, v24);
}

uint64_t sub_100078BD0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100079270;
  }

  else
  {
    v6 = sub_100078CFC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100078CFC()
{
  v1 = v0[6];
  v2 = (*(v0[8] + 48))(v1, 1, v0[7]);
  v3 = v0[14];
  if (v2 == 1)
  {
    v4 = v0[5];
    sub_10007A8A8(v1);
    v5 = sub_100026F50((v4 + 112), *(v4 + 136));
    MonotonicTime.timeInterval.getter();
    v7 = v6;
    v8 = *v5;
    v9 = swift_task_alloc();
    v0[34] = v9;
    *v9 = v0;
    v10 = sub_10007A284;
LABEL_5:
    v9[1] = v10;
    v18 = v0[2];
    v17 = v0[3];

    return sub_10003B500(v18, v17, v7);
  }

  v11 = v0[13];
  v12 = v0[4];
  sub_10007A910(v1, v0[9]);
  RateLimit.window.getter();
  static MonotonicTime.+ infix(_:_:)();
  if (static MonotonicTime.< infix(_:_:)())
  {
    v13 = v0[14];
    v14 = sub_100026F50((v0[5] + 112), *(v0[5] + 136));
    MonotonicTime.timeInterval.getter();
    v7 = v15;
    v16 = *v14;
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v10 = sub_100079370;
    goto LABEL_5;
  }

  v20 = v0[13];
  v21 = v0[14];
  if (*(v0[9] + *(v0[7] + 24)) <= 0.0)
  {
    v31 = v0[14];
    result = static MonotonicTime.< infix(_:_:)();
    if (result)
    {
      v32 = v0[14];
      v33 = sub_100026F50((v0[5] + 112), *(v0[5] + 136));
      MonotonicTime.timeInterval.getter();
      v7 = v34;
      v35 = *v33;
      v9 = swift_task_alloc();
      v0[28] = v9;
      *v9 = v0;
      v10 = sub_100079A2C;
      goto LABEL_5;
    }

    v47 = *(v0[9] + *(v0[7] + 20));
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
    }

    else
    {
      v50 = v0[4];
      v49 = v0[5];
      v51 = RateLimit.capacity.getter();
      v52 = sub_100026F50((v49 + 112), *(v49 + 136));
      v53 = v52;
      if (v48 < 1 || v51 >= v48)
      {
        v55 = *v52;
        v56 = swift_task_alloc();
        v0[32] = v56;
        *v56 = v0;
        v56[1] = sub_10007A030;
        v58 = v0[2];
        v57 = v0[3];

        return sub_10003BF08(v58, v57);
      }

      else
      {
        v59 = v0[4];
        RateLimit.delay.getter();
        v61 = v60;
        v62 = *v53;
        v63 = swift_task_alloc();
        v0[30] = v63;
        *v63 = v0;
        v63[1] = sub_100079C80;
        v65 = v0[2];
        v64 = v0[3];

        return sub_10003C7D0(v65, v64, v61);
      }
    }
  }

  else
  {
    v23 = v0[11];
    v22 = v0[12];
    v24 = v0[10];
    static MonotonicTime.+ infix(_:_:)();
    sub_10007AA24();
    v25 = dispatch thunk of static Comparable.> infix(_:_:)();
    v26 = *(v23 + 8);
    v0[24] = v26;
    v0[25] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v22, v24);
    if (v25)
    {
      v27 = v0[14];
      v28 = sub_100026F50((v0[5] + 112), *(v0[5] + 136));
      MonotonicTime.timeInterval.getter();
      v7 = v29;
      v30 = *v28;
      v9 = swift_task_alloc();
      v0[26] = v9;
      *v9 = v0;
      v10 = sub_1000796E8;
      goto LABEL_5;
    }

    v36 = v0[13];
    v38 = v0[9];
    v37 = v0[10];
    sub_10007A9D0();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
    v26(v36, v37);
    sub_10007A974(v38);
    v41 = v0[18];
    v40 = v0[19];
    v42 = v0[17];
    v43 = v0[13];
    v44 = v0[12];
    v45 = v0[9];
    v66 = v0[6];
    v26(v0[14], v0[10]);
    sub_10007A5CC("checkRateLimits", 15, 2);

    v46 = v0[1];

    return v46();
  }

  return result;
}

uint64_t sub_100079270()
{
  v1 = v0[12];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[9];
  v8 = v0[6];
  (*(v0[11] + 8))(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100079370()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1000795C0;
  }

  else
  {
    v6 = sub_10007949C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10007949C()
{
  v1 = v0[9];
  v2 = *(v0[11] + 8);
  v2(v0[13], v0[10]);
  sub_10007A974(v1);
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[12];
  v8 = v0[9];
  v11 = v0[6];
  v2(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000795C0()
{
  v1 = v0[9];
  v2 = *(v0[11] + 8);
  v2(v0[13], v0[10]);
  sub_10007A974(v1);
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[6];
  v12 = v0[23];
  v2(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000796E8()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_10007991C;
  }

  else
  {
    v6 = sub_100079814;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100079814()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 72);
  (*(v0 + 192))(*(v0 + 104), *(v0 + 80));
  sub_10007A974(v2);
  v3 = *(v0 + 200);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = *(v0 + 104);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 48);
  (*(v0 + 192))(*(v0 + 112), *(v0 + 80));
  sub_10007A5CC("checkRateLimits", 15, 2);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10007991C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 72);
  (*(v0 + 192))(*(v0 + 104), *(v0 + 80));
  sub_10007A974(v2);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 104);
  v9 = *(v0 + 96);
  v10 = *(v0 + 72);
  v11 = *(v0 + 48);
  (*(v0 + 192))(*(v0 + 112), *(v0 + 80));
  sub_10007A5CC("checkRateLimits", 15, 2);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100079A2C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100079B58;
  }

  else
  {
    v6 = sub_10007949C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100079B58()
{
  v1 = v0[9];
  v2 = *(v0[11] + 8);
  v2(v0[13], v0[10]);
  sub_10007A974(v1);
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[6];
  v12 = v0[29];
  v2(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100079C80()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100079F08;
  }

  else
  {
    v6 = sub_100079DAC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100079DAC()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  sub_10007A9D0();
  swift_allocError();
  *v5 = 1;
  swift_willThrow();
  v6 = *(v2 + 8);
  v6(v1, v3);
  sub_10007A974(v4);
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[13];
  v11 = v0[12];
  v12 = v0[9];
  v15 = v0[6];
  v6(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100079F08()
{
  v1 = v0[9];
  v2 = *(v0[11] + 8);
  v2(v0[13], v0[10]);
  sub_10007A974(v1);
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[6];
  v12 = v0[31];
  v2(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10007A030()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_10007A15C;
  }

  else
  {
    v6 = sub_10007AA7C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10007A15C()
{
  v1 = v0[9];
  v2 = *(v0[11] + 8);
  v2(v0[13], v0[10]);
  sub_10007A974(v1);
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[6];
  v12 = v0[33];
  v2(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10007A284()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_10007A4A8;
  }

  else
  {
    v6 = sub_10007A3B0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10007A3B0()
{
  v1 = v0[12];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[9];
  v7 = v0[6];
  (*(v0[11] + 8))(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10007A4A8()
{
  v1 = v0[12];
  v2 = v0[35];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[9];
  v8 = v0[6];
  (*(v0[11] + 8))(v0[14], v0[10]);
  sub_10007A5CC("checkRateLimits", 15, 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10007A5CC(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A4B0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016B980);
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

uint64_t sub_10007A8A8(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016BA48, &unk_100131630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007A910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RateLimitInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007A974(uint64_t a1)
{
  v2 = type metadata accessor for RateLimitInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007A9D0()
{
  result = qword_10016BA50;
  if (!qword_10016BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA50);
  }

  return result;
}

unint64_t sub_10007AA24()
{
  result = qword_10016BA58;
  if (!qword_10016BA58)
  {
    type metadata accessor for MonotonicTime();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA58);
  }

  return result;
}

uint64_t sub_10007AA90(int a1, void *a2)
{
  if (a1 > 3)
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return static AccessType.delete.getter();
      }

      goto LABEL_8;
    }

    return static AccessType.update.getter();
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 3)
      {
        return static AccessType.insert.getter();
      }

LABEL_8:
      _StringGuts.grow(_:)(26);

      v5._countAndFlagsBits = hsql.StatementType.description.getter(a1);
      String.append(_:)(v5);

      sub_100076AA8();
      result = swift_willThrowTypedImpl();
      *a2 = 0xD000000000000018;
      a2[1] = 0x800000010013B360;
      return result;
    }

    return static AccessType.select.getter();
  }
}

uint64_t sub_10007AB90()
{
  if (qword_10016A648 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_10007ABF0()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_100173640);
  v1 = sub_10002FD14(v0, qword_100173640);
  if (qword_10016A548 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10007ACB8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v22 = a3;
  v28 = type metadata accessor for OSSignpostID();
  v25 = *(v28 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v28);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignposter();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A4C0 != -1)
  {
    swift_once();
  }

  v12 = sub_10002FD14(v7, qword_100173640);
  (*(v8 + 16))(v11, v12, v7);
  static OSSignpostID.exclusive.getter();
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.begin.getter();
  v16 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v16, "SQLAnalyzer.analyze", "", v13, 2u);
  v17 = v24;
  sub_10007AFBC(a1, v23, v26);
  if (v17)
  {
  }

  else
  {
    v18 = static os_signpost_type_t.end.getter();
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v18, v19, "SQLAnalyzer.analyze", "", v13, 2u);

    sub_10002ABE8(v27, v26);
    sub_10002AAE4(v26);

    sub_10002ABE8(v22, v27);
    sub_10002AAE4(v27);
  }

  (*(v25 + 8))(v6, v28);
  return (*(v8 + 8))(v11, v7);
}

void **sub_10007AFBC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  *(a3 + 80) = 0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  sub_10007B2E4(a3);
  memset(&__str, 0, sizeof(__str));
  sub_100078668(&__str);
  memset(v24, 0, sizeof(v24));
  sub_10001050C(v24);

  sub_10007683C(a1, a2, &v22);
  v8 = sub_10001093C(v24, &v22, a3, &__str);
  std::string::~string(&v22);
  if (v8)
  {
    if (qword_10016A4B8 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_100173618, qword_100173630);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v10 = *(type metadata accessor for LogMessage() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._object = 0x800000010013B3A0;
    v13._countAndFlagsBits = 0xD00000000000002BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v14 = sub_10001E078(a3);
    v23 = &type metadata for Int64;
    v22.__r_.__value_.__r.__words[0] = v14;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(&v22);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_10001062C(v24);
    return sub_10007B304(&__str);
  }

  else
  {
    v17 = std::string::basic_string(v9, &__str);
    sub_10002EFB0(v17);
    sub_10002EFC4(&v22);
    v18 = static String._fromUTF8Repairing(_:)();
    v20 = v19;
    std::string::~string(&v22);
    sub_100076AA8();
    swift_allocError();
    *v21 = v18;
    v21[1] = v20;
    swift_willThrow();
    sub_10001062C(v24);
    sub_10007B304(&__str);
    return sub_10002AAE4(a3);
  }
}

double sub_10007B2E4(uint64_t a1)
{
  *(a1 + 4) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_10007B304(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10007B338(uint64_t a1, int a2)
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

uint64_t sub_10007B380(uint64_t result, int a2, int a3)
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

uint64_t sub_10007B3CC()
{
  v0 = type metadata accessor for ErrorCode.SQL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ErrorCode.SQL.analyzer(_:), v0);
  v5 = ErrorCode.SQL.errorCode.getter();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_10007B4B8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_10007B4E8()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(22);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  return 0xD000000000000014;
}

uint64_t sub_10007B570(uint64_t a1)
{
  v2 = sub_10007B704();

  return RichError.description.getter(a1, v2);
}

uint64_t sub_10007B5AC(uint64_t a1)
{
  v2 = sub_10007B704();

  return RichError.debugDescription.getter(a1, v2);
}

unint64_t sub_10007B5F0()
{
  result = qword_10016BA60;
  if (!qword_10016BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA60);
  }

  return result;
}

unint64_t sub_10007B648()
{
  result = qword_10016BA68;
  if (!qword_10016BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA68);
  }

  return result;
}

unint64_t sub_10007B6A0()
{
  result = qword_10016BA70;
  if (!qword_10016BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA70);
  }

  return result;
}

unint64_t sub_10007B704()
{
  result = qword_10016BA78;
  if (!qword_10016BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA78);
  }

  return result;
}

uint64_t sub_10007B758@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100026F94(&qword_10016BAC0, &qword_100131800);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17[-1] - v4;
  Connection.currentClientContext.getter();
  if (v18)
  {
    sub_100026F94(&qword_10016BAD0, &qword_100131818);
    v6 = type metadata accessor for RequestContext();
    v7 = swift_dynamicCast();
    v8 = *(v6 - 8);
    v9 = *(v8 + 56);
    v9(v5, v7 ^ 1u, 1, v6);
    if ((*(v8 + 48))(v5, 1, v6) != 1)
    {
      sub_10007BEF4(v5, a1);
      return (v9)(a1, 0, 1, v6);
    }
  }

  else
  {
    sub_10002BA6C(v17, &qword_10016BAC8, &unk_100131808);
    v11 = type metadata accessor for RequestContext();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  }

  sub_10002BA6C(v5, &qword_10016BAC0, &qword_100131800);
  if ((static Utils.isUnderTest.getter() & 1) == 0)
  {
    if (qword_10016A648 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100026F50(v17, v18);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v12 = *(type metadata accessor for LogMessage() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100026FDC(v17);
  }

  v15 = type metadata accessor for RequestContext();
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

uint64_t type metadata accessor for RequestContext()
{
  result = qword_10016BB30;
  if (!qword_10016BB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007BAEC()
{
  if (qword_10016A638 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_1001737A8, &unk_10016BA80);
}

uint64_t sub_10007BB50()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016BAA8);
  v1 = sub_10002FD14(v0, qword_10016BAA8);
  if (qword_10016A538 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10007BC18(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A4D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016BAA8);
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

uint64_t sub_10007BEF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007BF6C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = type metadata accessor for AccessCredential();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10007C02C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessCredential();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007C0D0()
{
  result = type metadata accessor for AccessCredential();
  if (v1 <= 0x3F)
  {
    result = sub_10007C1A4(319, &qword_10016BB40);
    if (v2 <= 0x3F)
    {
      result = sub_10007C1A4(319, &unk_10016BB48);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10007C1A4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10007C200(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v6 = *(a4 + 16);
    if (v6)
    {
      sub_10007E9EC(0, v6, 0);
      v8 = (a4 + 40);
      do
      {
        v9 = *(v8 - 1);
        v10 = *v8;

        v11._countAndFlagsBits = v9;
        v11._object = v10;
        String.append(_:)(v11);
        v12._countAndFlagsBits = a1;
        v12._object = a2;
        String.append(_:)(v12);

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_10007E9EC((v13 > 1), v14 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        v15 = &_swiftEmptyArrayStorage[2 * v14];
        *(v15 + 4) = a1;
        *(v15 + 5) = a2;
        v8 += 2;
        --v6;
      }

      while (v6);
    }

    sub_100026F94(&qword_10016AB28, &qword_100131390);
    sub_10002B95C(&qword_10016AB30, &qword_10016AB28, &qword_100131390);
    v17 = BidirectionalCollection<>.joined(separator:)();

    return v17;
  }

  else
  {
    sub_100026F94(&qword_10016AB28, &qword_100131390);
    sub_10002B95C(&qword_10016AB30, &qword_10016AB28, &qword_100131390);
    return BidirectionalCollection<>.joined(separator:)();
  }
}

uint64_t sub_10007C3FC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_10007C420, 0, 0);
}

uint64_t sub_10007C420()
{
  sub_100026F50(*(v0 + 32), *(*(v0 + 32) + 24));
  v1 = type metadata accessor for ConfigurationStoreImplementation();
  if (sub_10004FB7C(v1, &off_100164E30))
  {
    v2 = *(v0 + 48);
    v7 = *(v0 + 8);

    return v7(v3);
  }

  else
  {
    v5 = *sub_100026F50(*(v0 + 40), *(*(v0 + 40) + 24));
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_10007C554;

    return sub_10008512C();
  }
}

uint64_t sub_10007C554(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;

    return _swift_task_switch(sub_10007C6B4, 0, 0);
  }
}

uint64_t sub_10007C6B4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  *(v0 + 16) = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);
  v3 = Connection.key<A>(_:db:)();
  v4 = sub_1000822A0(*(v0 + 16), *(v0 + 24));
  v5 = *(v0 + 8);
  if (!v1)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t sub_10007C770()
{
  if (Connection.isServiceConnection.getter())
  {
  }

  else
  {
    swift_allocObject();
    swift_weakInit();
    default argument 1 of Connection.createFunction<A>(_:deterministic:_:)();
    Connection.createFunction<A>(_:deterministic:_:)();

    if (!v1)
    {

      swift_allocObject();
      swift_weakInit();
      default argument 1 of Connection.createFunction<A>(_:deterministic:_:)();
      Connection.createFunction<A>(_:deterministic:_:)();

      v0 = sub_100081E3C();
      swift_allocObject();
      swift_weakInit();

      default argument 1 of Connection.createFunction<A, B, C, D>(_:deterministic:_:)();
      Connection.createFunction<A, B, C, D>(_:deterministic:_:)();

      swift_allocObject();
      swift_weakInit();
      default argument 1 of Connection.createFunction<A, B, C, D>(_:deterministic:_:)();
      Connection.createFunction<A, B, C, D>(_:deterministic:_:)();
    }
  }

  return v0;
}

uint64_t sub_10007CACC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007CB04@<X0>(void *a1@<X8>)
{
  v2 = sub_100026F94(&qword_10016BAC0, &qword_100131800);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_4;
  }

  sub_10007B758(v5);

  v7 = type metadata accessor for RequestContext();
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    result = sub_10002BA6C(v5, &qword_10016BAC0, &qword_100131800);
LABEL_4:
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  sub_10004F224(v5, v10);
  sub_100082184(v5);
  v9 = v10[0];
  v8 = v10[1];

  result = sub_100042AFC(v10);
  *a1 = v9;
  a1[1] = v8;
  return result;
}

uint64_t sub_10007CC50@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AccessCredential();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100026F94(&qword_10016BAC0, &qword_100131800);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_4;
  }

  sub_10007B758(v10);

  v12 = type metadata accessor for RequestContext();
  if ((*(*(v12 - 8) + 48))(v10, 1, v12) == 1)
  {
    result = sub_10002BA6C(v10, &qword_10016BAC0, &qword_100131800);
LABEL_4:
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  (*(v3 + 16))(v6, &v10[*(v12 + 20)], v2);
  sub_100082184(v10);
  v13 = AccessCredential.requestId.getter();
  v15 = v14;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v13;
  a1[1] = v15;
  return result;
}

uint64_t sub_10007CE4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, void *a4@<X8>)
{
  v8 = sub_100026F94(&qword_10016BAC0, &qword_100131800);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = *a2;
  v15 = a2[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_10007B758(v11);
    v18 = type metadata accessor for RequestContext();
    if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
    {

      result = sub_10002BA6C(v11, &qword_10016BAC0, &qword_100131800);
    }

    else
    {
      v19 = *&v11[*(v18 + 24)];
      swift_unknownObjectRetain();
      sub_100082184(v11);
      a3(v17, v12, v13, v14, v15);
      swift_unknownObjectRelease();
    }
  }

  *a4 = 1;
  return result;
}

uint64_t sub_10007CFE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _BOOL8 *a4@<X8>)
{
  v26 = a4;
  v7 = sub_100026F94(&qword_10016BAC0, &qword_100131800);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for RequestContext();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = *a2;
  v19 = a2[1];
  v20 = *a3;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_5;
  }

  sub_10007B758(v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_5:
    result = sub_10002BA6C(v10, &qword_10016BAC0, &qword_100131800);
    v25 = 0;
    goto LABEL_6;
  }

  sub_10007BEF4(v10, v15);
  v21 = *(v11 + 20);
  v22 = sub_100026F50(&v15[*(v11 + 28)], *&v15[*(v11 + 28) + 24]);
  v23 = sub_100080B08(v16, v17, v18, v19, v20, v15, *v22, &v15[v21]);
  result = sub_100082184(v15);
  v25 = v23;
LABEL_6:
  *v26 = v25;
  return result;
}

uint64_t sub_10007D1FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100026F94(&qword_10016BAC0, &qword_100131800);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v58 - v13;
  v15 = type metadata accessor for RequestContext();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a1;
  v21 = a1[1];
  v23 = *a2;
  v22 = a2[1];
  v62 = v20;
  v63 = v23;
  v64 = v22;
  v24 = *a3;
  v25 = *(a3 + 8);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_16:
    result = sub_10002BA6C(v14, &qword_10016BAC0, &qword_100131800);
    v42 = 0;
    v43 = 0xE000000000000000;
LABEL_27:
    *a4 = v42;
    a4[1] = v43;
    return result;
  }

  sub_10007B758(v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_16;
  }

  sub_10007BEF4(v14, v19);
  v26 = *(v15 + 20);
  v60 = v19;
  v27 = AccessCredential.ownershipList.getter();
  v69 = v24;
  v70 = v25;
  v66 = 47;
  v67 = 0xE100000000000000;
  sub_10002C5B0();
  v28 = StringProtocol.components<A>(separatedBy:)();
  v29 = 0;
  v59 = 0;
  v30 = *(v28 + 16);
  v31 = _swiftEmptyArrayStorage;
  v61 = v21;
LABEL_4:
  v32 = (v28 + 40 + 16 * v29);
  while (v30 != v29)
  {
    if (v29 >= *(v28 + 16))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_once();
LABEL_25:
      TaskLocal.get()();
      sub_100026F50(&v69, v71);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v50 = *(type metadata accessor for LogMessage() - 8);
      v51 = *(v50 + 72);
      v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v53._object = 0x800000010013B4A0;
      v53._countAndFlagsBits = 0xD00000000000001FLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v53);
      v68 = &type metadata for String;
      v66 = v62;
      v67 = v21;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v66, &qword_10016AB10, &unk_100130B10);
      v54._countAndFlagsBits = 0x65686373206E6920;
      v54._object = 0xEB0000000020616DLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v54);
      v68 = &type metadata for String;
      v66 = v63;
      v67 = v64;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v66, &qword_10016AB10, &unk_100130B10);
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v55);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100026FDC(&v69);
      v47 = v60;
      v56 = *v60;
      v69 = 47;
      v70 = 0xE100000000000000;
      String.append(_:)(v56);
      v57._countAndFlagsBits = 47;
      v57._object = 0xE100000000000000;
      String.append(_:)(v57);
      v42 = v69;
      v43 = v70;
      goto LABEL_26;
    }

    ++v29;
    v33 = *(v32 - 1);
    v34 = *v32;
    v32 += 2;
    v35 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      v58 = v27;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v31;
      v37 = a4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10007E9EC(0, *(v31 + 2) + 1, 1);
        v31 = v69;
      }

      v39 = *(v31 + 2);
      v38 = *(v31 + 3);
      if (v39 >= v38 >> 1)
      {
        sub_10007E9EC((v38 > 1), v39 + 1, 1);
        v31 = v69;
      }

      *(v31 + 2) = v39 + 1;
      v40 = &v31[16 * v39];
      *(v40 + 4) = v33;
      *(v40 + 5) = v34;
      a4 = v37;
      v21 = v61;
      v27 = v58;
      goto LABEL_4;
    }
  }

  v69 = v27;
  sub_10007FDCC(v31);
  v44 = sub_1000817CC(v69);

  v45 = *(v44 + 16);
  if (v45)
  {
    v46 = sub_10007E850(*(v44 + 16), 0, &qword_10016AB20, &unk_100130B30);
    v21 = sub_100080804(&v69, v46 + 4, v45, v44);
    sub_100042570();
    v47 = v60;
    if (v21 != v45)
    {
      goto LABEL_29;
    }

    v21 = v61;
  }

  else
  {

    v46 = _swiftEmptyArrayStorage;
    v47 = v60;
  }

  v69 = v46;

  v48 = v59;
  sub_10007F2F4(&v69);
  if (!v48)
  {

    if (!*(v69 + 16))
    {

      if (qword_10016A648 != -1)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    v42 = sub_10007C200(47, 0xE100000000000000, 1, v69);
    v43 = v49;

LABEL_26:
    result = sub_100082184(v47);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_10007D888(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  _StringGuts.grow(_:)(18);

  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 656419879;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = a3;
  v14._object = a4;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 2108455;
  v15._object = 0xE300000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = a5;
  v16._object = a6;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0);
  return ExpressionType.init(literal:)();
}

uint64_t sub_10007D9F0()
{
  sub_100026F94(&qword_10016BBC8, &unk_1001318B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100131220;
  v1 = sub_100026F94(&qword_10016BBD0, &qword_100132F30);
  v24 = v1;
  v2 = sub_10002B95C(&qword_10016BBD8, &qword_10016BBD0, &qword_100132F30);
  v25 = v2;
  sub_100042BAC(&v23);
  static Connection.ServiceColumns.creationTime.getter();
  v3 = static Date.declaredDatatype.getter();
  v5 = v4;
  v6 = type metadata accessor for Date();
  v21 = v6;
  v7 = sub_100082558(&qword_10016BBE0, &type metadata accessor for Date);
  v22 = v7;
  sub_100042BAC(&v20);
  static Date.now.getter();
  sub_10002C604(&v23, v0 + 32);
  *(v0 + 72) = v3;
  *(v0 + 80) = v5;
  *(v0 + 88) = 0;
  *(v0 + 96) = sub_1000825A0;
  *(v0 + 104) = 0;
  sub_10002C604(&v20, v0 + 112);
  v24 = v1;
  v25 = v2;
  sub_100042BAC(&v23);
  static Connection.ServiceColumns.modificationTime.getter();
  v8 = static Date.declaredDatatype.getter();
  v10 = v9;
  v21 = v6;
  v22 = v7;
  sub_100042BAC(&v20);
  static Date.now.getter();
  sub_10002C604(&v23, v0 + 152);
  *(v0 + 192) = v8;
  *(v0 + 200) = v10;
  *(v0 + 208) = 0;
  *(v0 + 216) = sub_1000825A0;
  *(v0 + 224) = 0;
  sub_10002C604(&v20, v0 + 232);
  v11 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v24 = v11;
  v12 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
  v25 = v12;
  sub_100042BAC(&v23);
  static Connection.ServiceColumns.bundleIds.getter();
  v13 = static String.declaredDatatype.getter();
  v15 = v14;
  *(v0 + 376) = &type metadata for String;
  *(v0 + 384) = &protocol witness table for String;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0xE000000000000000;
  sub_10002C604(&v23, v0 + 272);
  *(v0 + 312) = v13;
  *(v0 + 320) = v15;
  *(v0 + 328) = 0;
  *(v0 + 336) = sub_10007DD88;
  *(v0 + 344) = 0;
  v24 = v11;
  v25 = v12;
  sub_100042BAC(&v23);
  static Connection.ServiceColumns.requestIds.getter();
  v16 = static String.declaredDatatype.getter();
  v18 = v17;
  *(v0 + 496) = &type metadata for String;
  *(v0 + 504) = &protocol witness table for String;
  *(v0 + 472) = 0;
  *(v0 + 480) = 0xE000000000000000;
  result = sub_10002C604(&v23, v0 + 392);
  *(v0 + 432) = v16;
  *(v0 + 440) = v18;
  *(v0 + 448) = 0;
  *(v0 + 456) = sub_10007DE44;
  *(v0 + 464) = 0;
  qword_100173658 = v0;
  return result;
}

uint64_t sub_10007DCC8@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_100026F94(&qword_10016BBD0, &qword_100132F30);
  a1[4] = sub_10002B95C(&qword_10016BBD8, &qword_10016BBD0, &qword_100132F30);
  sub_100042BAC(a1);
  sub_10002B95C(&qword_10016BBE8, &qword_10016BBD0, &qword_100132F30);
  return static ExpressionType<>.currentTimestamp.getter();
}

uint64_t sub_10007DD88@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  a5[4] = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
  sub_100042BAC(a5);
  return sub_10007D888(a1, a2, a3, a4, 10023, 0xE200000000000000);
}

uint64_t sub_10007DE44@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  a1[4] = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
  sub_100042BAC(a1);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0);
  return ExpressionType.init(literal:)();
}

char *sub_10007DF24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016BB80, &unk_100131840);
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

char *sub_10007E054(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016AB20, &unk_100130B30);
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

size_t sub_10007E18C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100026F94(a5, a6);
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

void *sub_10007E36C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100026F94(&qword_10016BBF8, &unk_1001318E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100026F94(&qword_10016B728, &unk_1001313B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10007E4A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016BBA0, &unk_100131870);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10007E5C8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100026F94(&qword_10016AD50, &qword_100130C90);
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
    sub_100026F94(&qword_10016A948, &unk_100131880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10007E714(uint64_t a1, uint64_t a2)
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

  sub_100026F94(&qword_10016BC00, &qword_100131948);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 80);
  return v4;
}

void *sub_10007E7A4(uint64_t a1, uint64_t a2)
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

  sub_100026F94(&qword_10016BC08, &unk_100131950);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 + 31;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 6);
  return v4;
}

void *sub_10007E850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100026F94(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  v8 = v7 - 32;
  if (v7 < 32)
  {
    v8 = v7 - 17;
  }

  v6[2] = a1;
  v6[3] = 2 * (v8 >> 4);
  return v6;
}

void *sub_10007E8CC(uint64_t a1, uint64_t a2)
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

  sub_100026F94(&qword_10016BB88, &qword_100131858);
  v4 = *(type metadata accessor for ForwardDeletionRules() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
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

char *sub_10007E9CC(char *a1, int64_t a2, char a3)
{
  result = sub_10007EAAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007E9EC(char *a1, int64_t a2, char a3)
{
  result = sub_10007EBB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007EA0C(void *a1, int64_t a2, char a3)
{
  result = sub_10007ECC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007EA2C(void *a1, int64_t a2, char a3)
{
  result = sub_10007EDFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007EA4C(char *a1, int64_t a2, char a3)
{
  result = sub_10007EF48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007EA6C(void *a1, int64_t a2, char a3)
{
  result = sub_10007F070(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10007EA8C(void *a1, int64_t a2, char a3)
{
  result = sub_10007F1A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10007EAAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016BBB8, &qword_1001318A8);
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

char *sub_10007EBB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016AB20, &unk_100130B30);
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

void *sub_10007ECC4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100026F94(&qword_10016BB90, &qword_100131860);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100026F94(&qword_10016BB98, &qword_100131868);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10007EDFC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100026F94(&qword_10016BBA8, &qword_100131890);
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
    sub_100026F94(&qword_10016BBB0, &qword_100131898);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10007EF48(char *result, int64_t a2, char a3, char *a4)
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
    sub_100026F94(&qword_10016BBC8, &unk_1001318B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10007F070(void *result, int64_t a2, char a3, void *a4)
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
    sub_100026F94(&qword_10016BBF0, &unk_1001318D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100026F94(&qword_10016B730, &qword_1001321B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10007F1A8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100026F94(&qword_10016AD50, &qword_100130C90);
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
    sub_100026F94(&qword_10016A948, &unk_100131880);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_10007F2F4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100080AF4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10007F360(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10007F360(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10007F528(v7, v8, a1, v4);
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
    return sub_10007F458(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10007F458(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10007F528(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_10007FDB8(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10007FB04((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10007DF24(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_10007DF24((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10007FB04((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10007FDB8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_10007FD2C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_10007FB04(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_10007FD2C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10007FDB8(v3);
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

uint64_t sub_10007FDCC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10007E054(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10007FEC0(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = v4[3] >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_10007E36C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = v4[3] >> 1;
  }

  v12 = v4[2];
  v13 = (v10 - v12);
  result = sub_10008095C(&v50, &v4[4 * v12 + 4], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = v4[2];
    v18 = __OFADD__(v17, result);
    v19 = result + v17;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_49:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v53 = v24;
          v54 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    v4[2] = v19;
  }

  result = v50;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = v4[2];
  v14 = v51;
  v15 = v52;
  v2 = v53;
  v49 = v51;
  v46 = v52;
  if (!v54)
  {
    goto LABEL_19;
  }

  v20 = (v54 - 1) & v54;
  v21 = __clz(__rbit64(v54)) | (v53 << 6);
  v22 = (v52 + 64) >> 6;
LABEL_27:
  v27 = 16 * v21;
  v48 = result;
  v28 = (result[6] + 16 * v21);
  v30 = *v28;
  v29 = v28[1];
  v31 = (result[7] + v27);
  v33 = *v31;
  v32 = v31[1];

  v34 = v49;
LABEL_29:
  while (1)
  {
    v35 = v4[3];
    v36 = v35 >> 1;
    if ((v35 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v36)
    {
      goto LABEL_31;
    }

LABEL_28:
    v4[2] = v6;
  }

  v44 = sub_10007E36C((v35 > 1), v6 + 1, 1, v4);
  v34 = v49;
  v4 = v44;
  v36 = v44[3] >> 1;
  if (v6 >= v36)
  {
    goto LABEL_28;
  }

LABEL_31:
  v47 = v36;
  while (1)
  {
    v37 = &v4[4 * v6 + 4];
    *v37 = v30;
    v37[1] = v29;
    v37[2] = v33;
    v37[3] = v32;
    ++v6;
    if (!v20)
    {
      break;
    }

    result = v48;
LABEL_39:
    v40 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v41 = (v2 << 10) | (16 * v40);
    v42 = (result[6] + v41);
    v30 = *v42;
    v29 = v42[1];
    v43 = (result[7] + v41);
    v33 = *v43;
    v32 = v43[1];

    v34 = v49;
    if (v6 == v47)
    {
      v6 = v47;
      v4[2] = v47;
      goto LABEL_29;
    }
  }

  v38 = v2;
  result = v48;
  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v39 >= v22)
    {
      break;
    }

    v20 = *(v34 + 8 * v39);
    ++v38;
    if (v20)
    {
      v2 = v39;
      goto LABEL_39;
    }
  }

  if (v22 <= v2 + 1)
  {
    v45 = v2 + 1;
  }

  else
  {
    v45 = v22;
  }

  v52 = v46;
  v53 = v45 - 1;
  v54 = 0;
  v4[2] = v6;
LABEL_13:
  result = sub_100042570();
  *v1 = v4;
  return result;
}

uint64_t sub_1000801B0(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__(0);
  sub_100082558(&qword_10016A8B8, type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.Table_ std.__1.allocator_hsql.SQLStatementSummary.Table__);
  result = dispatch thunk of Sequence.makeIterator()();
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    v9 = v17;
    v7 = v18;
LABEL_12:
    *a1 = v16;
    a1[1] = v9;
    a1[2] = v7;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = v18;
    v8 = 1;
    while (1)
    {
      v9 = v17;
      v12 = v7;
      v13 = v17;
      if (sub_10002A2A4(&v13, &v12))
      {
        break;
      }

      v13 = v9;
      v10 = sub_10002A1D0(&v13);
      sub_10002A33C(__dst, v10);
      v13 = v9;
      sub_10002A428(&v13);
      v17 = v13;
      sub_10002A694(v15, __dst);
      sub_10001B428(__dst);
      sub_10002A694(a2, v15);
      sub_10001B428(v15);
      if (a3 == v8)
      {
        goto LABEL_11;
      }

      a2 += 80;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v8 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008030C(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.ExpansionPoint_ std.__1.allocator_hsql.SQLStatementSummary.ExpansionPoint__(0);
  sub_100082558(&qword_10016A828, type metadata accessor for std.__1.vector_hsql.SQLStatementSummary.ExpansionPoint_ std.__1.allocator_hsql.SQLStatementSummary.ExpansionPoint__);
  result = dispatch thunk of Sequence.makeIterator()();
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    v9 = v17;
    v7 = v18;
LABEL_12:
    *a1 = v16;
    a1[1] = v9;
    a1[2] = v7;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = v18;
    v8 = 1;
    while (1)
    {
      v9 = v17;
      v12 = v7;
      v13 = v17;
      if (sub_10002A2A4(&v13, &v12))
      {
        break;
      }

      v13 = v9;
      v10 = sub_10002A1D0(&v13);
      sub_10002A1F8(v14, v10);
      v13 = v9;
      sub_10002A294(&v13);
      v17 = v13;
      sub_10002B9C8(v15, v14);
      sub_10001BBEC(v14);
      sub_10002B9C8(a2, v15);
      sub_10001BBEC(v15);
      if (a3 == v8)
      {
        goto LABEL_11;
      }

      a2 += 64;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v8 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_100080460(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100080560(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for ForwardDeletionRules();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100080804(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10008095C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL sub_100080B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a8;
  v73 = a6;
  v63 = a5;
  v74 = a4;
  v75 = a3;
  v70 = a1;
  v71 = a2;
  v65 = type metadata accessor for AccessCredential.Error();
  v64 = *(v65 - 8);
  v9 = *(v64 + 64);
  __chkstk_darwin(v65);
  v66 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DataSpecification();
  v67 = *(v69 - 8);
  v11 = *(v67 + 64);
  __chkstk_darwin(v69);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DataSpecification.Namespace.Table();
  v61 = *(v62 - 8);
  v14 = *(v61 + 64);
  __chkstk_darwin(v62);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LogMessage.StringInterpolation();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v72 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OSSignpostID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v61 - v26;
  v80 = type metadata accessor for DatabaseConnectionManagerImplementation();
  v81 = &off_100164E98;
  v79[0] = a7;
  v28 = qword_10016A4D0;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for OSSignposter();
  sub_10002FD14(v29, qword_10016BAA8);
  static OSSignpostID.exclusive.getter();
  v30 = OSSignposter.logHandle.getter();
  v31 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v31, v33, "shouldEvictRow", "", v32, 2u);
  }

  (*(v21 + 16))(v25, v27, v20);
  v34 = type metadata accessor for OSSignpostIntervalState();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v21 + 8))(v27, v20);
  v38 = *sub_100026F50(v79, v80);
  os_unfair_lock_lock((v38 + 120));
  v39 = *(v38 + 128);
  sub_100026F50((v38 + 136), *(v38 + 160));
  type metadata accessor for ConfigurationStoreImplementation();
  v40 = sub_10004FD58();
  os_unfair_lock_unlock((v38 + 120));
  if (v39 >= v40)
  {
    if (qword_10016A4C8 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016BA80, qword_10016BA98);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v49 = *(type metadata accessor for LogMessage() - 8);
    v50 = *(v49 + 72);
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    v46 = 1;
  }

  else
  {
    v41 = *sub_100026F50(v79, v80);
    v42 = v74;
    if (sub_100052C98(v75, v74, v73))
    {
      if (qword_10016A4C8 != -1)
      {
        swift_once();
      }

      sub_100026F50(qword_10016BA80, qword_10016BA98);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v43 = *(type metadata accessor for LogMessage() - 8);
      v44 = *(v43 + 72);
      v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      v46 = 1;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v47._object = 0x800000010013B560;
      v47._countAndFlagsBits = 0xD000000000000028;
      LogMessage.StringInterpolation.appendLiteral(_:)(v47);
      v78 = &type metadata for String;
      v76 = v75;
      v77 = v42;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v76, &qword_10016AB10, &unk_100130B10);
      v48._countAndFlagsBits = 0xD00000000000002DLL;
      v48._object = 0x800000010013B590;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      LogMessage.init(stringInterpolation:)();
      Logger.warning(_:)();
    }

    else
    {
      AccessCredential.dataSpecification.getter();
      _s19OnDeviceStorageCore17DataSpecificationV05tableF03for2inAC9NamespaceV5TableVSS_SStAA16AccessCredentialV5ErrorOYKF();
      (*(v67 + 8))(v13, v69);
      v52 = DataSpecification.Namespace.Table.rowLimit.getter();
      (*(v61 + 8))(v16, v62);
      v46 = v52 <= v63;
      if (v52 <= v63)
      {
        v73 = v37;
        if (qword_10016A4C8 != -1)
        {
          swift_once();
        }

        sub_100026F50(qword_10016BA80, qword_10016BA98);
        sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
        v53 = *(type metadata accessor for LogMessage() - 8);
        v54 = *(v53 + 72);
        v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        *(swift_allocObject() + 16) = xmmword_10012FA10;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v56._countAndFlagsBits = 0xD000000000000015;
        v56._object = 0x800000010013B510;
        LogMessage.StringInterpolation.appendLiteral(_:)(v56);
        v78 = &type metadata for Int;
        v76 = v52;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002BA6C(&v76, &qword_10016AB10, &unk_100130B10);
        v57._countAndFlagsBits = 0x62617420726F6620;
        v57._object = 0xEC000000203A656CLL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v57);
        v78 = &type metadata for String;
        v76 = v70;
        v77 = v71;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002BA6C(&v76, &qword_10016AB10, &unk_100130B10);
        v58._countAndFlagsBits = 0x65686373206E6920;
        v58._object = 0xEC000000203A616DLL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v58);
        v78 = &type metadata for String;
        v76 = v75;
        v77 = v74;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002BA6C(&v76, &qword_10016AB10, &unk_100130B10);
        v59._object = 0x800000010013B530;
        v59._countAndFlagsBits = 0xD000000000000028;
        LogMessage.StringInterpolation.appendLiteral(_:)(v59);
        LogMessage.init(stringInterpolation:)();
        Logger.debug(_:)();

        v46 = 1;
      }
    }
  }

  sub_10007BC18("shouldEvictRow", 14, 2);

  sub_100026FDC(v79);
  return v46;
}

uint64_t sub_100081580(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for _NSRange(0);
  sub_100082558(&qword_10016BBC0, type metadata accessor for _NSRange);
  result = Set.init(minimumCapacity:)();
  v6 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      sub_100054AD4(v5, *(v4 - 1), *v4);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_100081630(uint64_t a1)
{
  v2 = type metadata accessor for ForwardDeletionRules();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_100082558(&qword_10016B570, &type metadata accessor for ForwardDeletionRules);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100054D40(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_1000817CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100054BF0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100081864(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_100082558(&qword_10016A768, type metadata accessor for URLResourceKey);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100055028(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100081920(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  if ((a2 & 1) == 0 && (Connection.isServiceConnection.getter() & 1) == 0)
  {
    Connection.busyTimeout.getter();
    Connection.setBusyTimeout(_:)(v8);
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(149);
    v9._object = 0x800000010013B640;
    v9._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v9);
    sub_100026F50(a1, a1[3]);
    type metadata accessor for ConfigurationStoreImplementation();
    LODWORD(v30[0]) = sub_10004FEF0();
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0xD00000000000001ALL;
    v11._object = 0x800000010013B660;
    String.append(_:)(v11);
    sub_100026F50(a1, a1[3]);
    LODWORD(v30[0]) = sub_10004FFBC();
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0xD00000000000001BLL;
    v13._object = 0x800000010013B680;
    String.append(_:)(v13);
    sub_100026F50(a1, a1[3]);
    v14._countAndFlagsBits = sub_100050154();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0xD00000000000001CLL;
    v15._object = 0x800000010013B6A0;
    String.append(_:)(v15);
    sub_100026F50(a1, a1[3]);
    v16._countAndFlagsBits = sub_100050238();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0xD000000000000022;
    v17._object = 0x800000010013B6C0;
    String.append(_:)(v17);
    sub_100026F50(a1, a1[3]);
    LODWORD(v30[0]) = sub_100050318();
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 59;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    Connection.execute(_:)(v20);
    if (v21)
    {

      if (qword_10016A648 != -1)
      {
        swift_once();
      }

      TaskLocal.get()();
      sub_100026F50(v31, v31[3]);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v22 = *(type metadata accessor for LogMessage() - 8);
      v23 = *(v22 + 72);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v25._countAndFlagsBits = 0xD000000000000036;
      v25._object = 0x800000010013B6F0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      swift_getErrorValue();
      v30[3] = v29;
      v26 = sub_100042BAC(v30);
      (*(*(v29 - 8) + 16))(v26);
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v30, &qword_10016AB10, &unk_100130B10);
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      sub_100026FDC(v31);
      swift_willThrow();
    }

    else
    {
    }
  }

  return v3;
}

uint64_t sub_100081E3C()
{
  swift_allocObject();
  swift_weakInit();
  default argument 1 of Connection.createFunction<A, B, C>(_:deterministic:_:)();
  Connection.createFunction<A, B, C>(_:deterministic:_:)();

  if (!v1)
  {

    swift_allocObject();
    swift_weakInit();
    default argument 1 of Connection.createFunction<A, B, C>(_:deterministic:_:)();
    Connection.createFunction<A, B, C>(_:deterministic:_:)();

    swift_allocObject();
    swift_weakInit();
    default argument 1 of Connection.createFunction<A, B, C>(_:deterministic:_:)();
    Connection.createFunction<A, B, C>(_:deterministic:_:)();

    swift_allocObject();
    swift_weakInit();
    default argument 1 of Connection.createFunction<A, B, C>(_:deterministic:_:)();
    Connection.createFunction<A, B, C>(_:deterministic:_:)();
  }

  return v0;
}

uint64_t sub_100082184(uint64_t a1)
{
  v2 = type metadata accessor for RequestContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000822A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000822F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22 = a5;
  if (qword_10016A4D8 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v7 = qword_100173658;
    v8 = *(qword_100173658 + 16);
    if (!v8)
    {
      break;
    }

    v9 = 0;
    v10 = (qword_100173658 + 104);
    while (v9 < *(v7 + 16))
    {
      sub_100026EEC((v10 - 9), v21);
      v11 = *(v10 - 4);
      v12 = *(v10 - 3);
      v13 = *(v10 - 16);
      v15 = *(v10 - 1);
      v14 = *v10;

      v15(v20, a2, a3, a4, v22);

      TableBuilder.column(_:datatype:isPrimaryKey:isUnique:isNullable:defaultValue:)();

      if (v6)
      {
        sub_10002BA6C(v20, &qword_10016B708, &unk_100133390);
        return sub_100026FDC(v21);
      }

      ++v9;
      sub_10002BA6C(v20, &qword_10016B708, &unk_100133390);
      result = sub_100026FDC(v21);
      v10 += 15;
      if (v8 == v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_11:
    result = swift_once();
  }

  return result;
}

__n128 sub_100082478(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000824A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000824EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100082558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000825A4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 16);
  v15 = sub_100082B2C(&qword_10016BCB8, v14, type metadata accessor for DispatchQueueExecutor);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = v1;
  v16[4] = v15;
  aBlock[4] = sub_100082B08;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008287C;
  aBlock[3] = &unk_1001651F0;
  v17 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_100082B2C(&qword_10016BCC0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100026F94(&qword_10016BCC8, &unk_100131A20);
  sub_100082B74();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_10008287C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100082914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_100082B2C(&qword_10016BCB0, a2, type metadata accessor for DispatchQueueExecutor);

  return a4(a1, v6, v7);
}

uint64_t sub_100082B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100082B2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100082B74()
{
  result = qword_10016BCD0;
  if (!qword_10016BCD0)
  {
    sub_10002AD94(&qword_10016BCC8, &unk_100131A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BCD0);
  }

  return result;
}

uint64_t FileManagerWrapper.directorySize(at:)(unint64_t a1)
{
  v51 = a1;
  v1 = sub_100026F94(&qword_10016BD80, &qword_100131A58);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v38 - v3;
  v5 = type metadata accessor for URLResourceValues();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100026F94(&qword_10016BD88, &qword_100131A60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for URL();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin(v12);
  v42 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for NSFastEnumerationIterator();
  v39 = *(v44 - 8);
  v15 = *(v39 + 64);
  __chkstk_darwin(v44);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100026F94(&qword_10016BD90, &qword_100131A68);
  inited = swift_initStackObject();
  v48 = xmmword_100130B20;
  *(inited + 16) = xmmword_100130B20;
  *(inited + 32) = NSURLFileSizeKey;
  *(inited + 40) = NSURLIsDirectoryKey;
  v19 = NSURLFileSizeKey;
  v20 = NSURLIsDirectoryKey;
  v47 = v19;
  v21 = v20;
  v22 = sub_100081864(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  v23 = *(v50 + 16);
  v24 = swift_allocObject();
  *(v24 + 16) = v48;
  *(v24 + 32) = v47;
  *(v24 + 40) = v21;
  v25 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v25)
  {

    return 0;
  }

  v50 = v22;
  v38 = v25;
  NSEnumerator.makeIterator()();
  v26 = sub_100083360();
  v27 = v44;
  v51 = v26;
  dispatch thunk of IteratorProtocol.next()();
  v28 = v17;
  if (!v55)
  {
    v45 = 0;
LABEL_17:

    (*(v39 + 8))(v28, v27);
    return v45;
  }

  v45 = 0;
  v29 = (v41 + 56);
  v49 = (v41 + 32);
  *&v48 = v43 + 56;
  v47 = (v41 + 8);
  v41 = v43 + 32;
  v40 = (v43 + 8);
  v30 = v42;
  while (1)
  {
    sub_100070144(&v54, v53);
    sub_10002FE08(v53, v52);
    v31 = swift_dynamicCast();
    v32 = *v29;
    if (!v31)
    {
      v32(v11, 1, 1, v12);
      sub_100026FDC(v53);
      sub_10002BA6C(v11, &qword_10016BD88, &qword_100131A60);
      goto LABEL_5;
    }

    v32(v11, 0, 1, v12);
    (*v49)(v30, v11, v12);
    URL.resourceValues(forKeys:)();
    (*v48)(v4, 0, 1, v5);
    (*v41)(v46, v4, v5);
    v33 = URLResourceValues.isDirectory.getter();
    if (v33 != 2 && (v33 & 1) != 0)
    {
      (*v40)(v46, v5);
      (*v47)(v30, v12);
      sub_100026FDC(v53);
      goto LABEL_5;
    }

    v34 = v46;
    v44 = URLResourceValues.fileSize.getter();
    LODWORD(v43) = v35;
    (*v40)(v34, v5);
    (*v47)(v30, v12);
    result = sub_100026FDC(v53);
    v37 = v44;
    if (v43)
    {
      v37 = 0;
    }

    if (v37 < 0)
    {
      break;
    }

    if (__CFADD__(v45, v37))
    {
      goto LABEL_20;
    }

    v45 += v37;
    v30 = v42;
LABEL_5:
    dispatch thunk of IteratorProtocol.next()();
    if (!v55)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_100083360()
{
  result = qword_10016BD98;
  if (!qword_10016BD98)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BD98);
  }

  return result;
}

uint64_t sub_1000833B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100026F94(&qword_10016BDA0, &unk_100131A70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - v7;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  inserted = type metadata accessor for InsertRequest();
  v14 = *(inserted - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(inserted);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v2, a1);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v8, 0, 1, inserted);
    (*(v14 + 32))(v17, v8, inserted);
    v20 = BatchedRequest.isFirstInBatch.getter();
    (*(v14 + 8))(v17, inserted);
  }

  else
  {
    v20 = 1;
    v19(v8, 1, 1, inserted);
    sub_100083604(v8);
  }

  return v20 & 1;
}

uint64_t sub_100083604(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016BDA0, &unk_100131A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008366C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v3 = &enum case for StatementType.update(_:);
      goto LABEL_11;
    }

    if (a1 == 5)
    {
      v3 = &enum case for StatementType.delete(_:);
      goto LABEL_11;
    }

LABEL_8:
    v5 = type metadata accessor for DaemonError();
    sub_100074354();
    swift_allocError();
    v7 = v6;
    *v6 = hsql.StatementType.description.getter(a1);
    v7[1] = v8;
    (*(*(v5 - 8) + 104))(v7, enum case for DaemonError.unsupportedStatementType(_:), v5);
    return swift_willThrow();
  }

  if (a1 == 1)
  {
    v3 = &enum case for StatementType.select(_:);
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    goto LABEL_8;
  }

  v3 = &enum case for StatementType.insert(_:);
LABEL_11:
  v10 = *v3;
  v11 = type metadata accessor for StatementType();
  return (*(*(v11 - 8) + 104))(a2, v10, v11);
}

uint64_t sub_1000837B8()
{
  *v11.val = XPCReceivedMessage.auditToken.getter();
  *&v11.val[2] = v0;
  v11.val[4] = v1;
  v11.val[5] = v2;
  v11.val[6] = v3;
  v11.val[7] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &v11);
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = SecTaskCopySigningIdentifier(v5, 0);
  if (!v7)
  {
    v7 = v6;
LABEL_8:

    goto LABEL_9;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_8;
  }

  *v11.val = 0;
  *&v11.val[2] = 0;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (*&v11.val[2])
  {
    return *v11.val;
  }

LABEL_9:
  v9 = type metadata accessor for DaemonError();
  sub_100074354();
  swift_allocError();
  (*(*(v9 - 8) + 104))(v10, enum case for DaemonError.noBundleId(_:), v9);
  return swift_willThrow();
}

uint64_t sub_1000838FC()
{
  sub_10001E05C(v0, v18);
  *&v16 = sub_10002BFD0(v18);
  v17 = sub_10002BF74(v18);
  v1 = sub_10002A1D8(&v16, &v17);
  if (!v1)
  {
    sub_10002A8A8(v18);
    v4 = _swiftEmptyArrayStorage;
LABEL_10:
    v9 = sub_100081580(v4);

    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = sub_10007E828(*(v9 + 16), 0);
      v12 = sub_100080460(&v16, v11 + 2, v10, v9);
      sub_100042570();
      if (v12 == v10)
      {
LABEL_14:
        *&v16 = v11;

        sub_100083F94(&v16);

        return v16;
      }

      __break(1u);
    }

    v11 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v2 = v1;
  v17 = _swiftEmptyArrayStorage;
  sub_10007E9CC(0, v1 & ~(v1 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = v17;
    while (1)
    {
      v5 = sub_10002C034(v18, v3);
      sub_10002A1F8(&v16, v5);
      v14 = v16;
      sub_10001BBEC(&v16);
      v17 = v4;
      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        sub_10007E9CC((v6 > 1), v7 + 1, 1);
        v4 = v17;
      }

      v4[2] = v7 + 1;
      *&v4[2 * v7 + 4] = v14;
      v8 = sub_10002BFD0(v18);
      v15 = sub_10002BF74(v18);
      *&v16 = v8;
      if (v3 >= sub_10002A1D8(&v16, &v15))
      {
        break;
      }

      if (v2 == ++v3)
      {
        sub_10002A8A8(v18);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t hsql.StatementType.description.getter(int a1)
{
  result = 0x524F525245;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x5443454C4553;
      break;
    case 2:
      result = 0x54524F504D49;
      break;
    case 3:
      result = 0x545245534E49;
      break;
    case 4:
      result = 0x455441445055;
      break;
    case 5:
      result = 0x4554454C4544;
      break;
    case 6:
      result = 0x455441455243;
      break;
    case 7:
      result = 1347375684;
      break;
    case 8:
      result = 0x45524150455250;
      break;
    case 9:
      result = 0x45545543455845;
      break;
    case 10:
      result = 0x54524F505845;
      break;
    case 11:
      result = 0x454D414E4552;
      break;
    case 12:
      result = 0x5452454C41;
      break;
    case 13:
      result = 1464813651;
      break;
    case 14:
      result = 0x544341534E415254;
      break;
    default:
      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      result = 0x204E574F4E4B4E55;
      break;
  }

  return result;
}