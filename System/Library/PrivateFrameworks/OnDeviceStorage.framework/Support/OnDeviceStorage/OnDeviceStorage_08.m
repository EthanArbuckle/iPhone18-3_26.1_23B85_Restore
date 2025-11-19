uint64_t sub_100096244()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v14 = *(v0 + 168);
  v15 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  sub_100026F50(qword_10016C198, qword_10016C1B0);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013BF80;
  v7._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v6[3];
  v9 = sub_100026F50(v6, v8);
  *(v0 + 112) = v8;
  v10 = sub_100042BAC((v0 + 88));
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 88);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_1000964EC("TaskCenter.run", 14, 2);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100096420()
{
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  sub_1000964EC("TaskCenter.run", 14, 2);

  v5 = v0[1];
  v6 = v0[28];

  return v5();
}

uint64_t sub_1000964EC(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A568 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016C1C0);
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

uint64_t sub_1000967C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_100026FDC((v0 + 56));
  v3 = *(v0 + 96);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100096820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[12];
  v10 = v1[13];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100042680;

  return sub_10009521C(a1, v4, v5, v6, v7, v8, (v1 + 7), v9);
}

uint64_t sub_10009690C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10009694C()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_100095898(v0[2], v0[3]);
}

uint64_t sub_100096958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100096970(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v8 = *(type metadata accessor for LogMessage() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x800000010013C020;
  v11._countAndFlagsBits = 0xD00000000000001CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v16 = &type metadata for String;
  v14 = a1;
  v15 = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&v14);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return [a3 setTaskCompleted];
}

uint64_t sub_100096B74(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100096BBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100096C04()
{
  result = qword_10016C2A0;
  if (!qword_10016C2A0)
  {
    sub_10002AD94(&qword_10016C298, &unk_1001323C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C2A0);
  }

  return result;
}

uint64_t sub_100096C68()
{
  v0 = type metadata accessor for PreferenceNamespace();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002FDA4(v3, qword_100173700);
  sub_10002FD14(v0, qword_100173700);
  static PreferenceNamespace.jetEngine.getter();
  PreferenceNamespace.appending(_:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100096D70(uint64_t a1)
{
  v3 = sub_100026F94(&qword_10016C2A8, &qword_1001323D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  v7 = sub_100026F94(&qword_10016C2B0, &qword_1001323D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  v12 = type metadata accessor for MetricsSamplingLottery();
  (*(v8 + 16))(v11, v1 + *(v12 + 20), v7);
  sub_1000975A4(a1, v6);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v6, 1, v13);
  if (v15 == 1)
  {
    sub_1000974A8(v6);
    v16 = 0;
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v16 = v17;
    (*(v14 + 8))(v6, v13);
  }

  v19 = v16;
  v20 = v15 == 1;
  Preferences.subscript.setter();

  return sub_1000974A8(a1);
}

uint64_t sub_100096FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  v11 = type metadata accessor for MetricsSamplingLottery();
  v12 = *(v11 + 20);
  Preferences.subscript.getter();

  if (v17)
  {
    v13 = 1;
  }

  else
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    (*(v4 + 32))(v10, v8, v3);
    v14 = *(v1 + *(v11 + 28));
    Date.addingTimeInterval(_:)();
    (*(v4 + 8))(v10, v3);
    v13 = 0;
  }

  return (*(v4 + 56))(a1, v13, 1, v3);
}

uint64_t sub_100097174()
{
  v1 = sub_100026F94(&qword_10016C2A8, &qword_1001323D0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v22[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v22[-v14];
  if (os_variant_has_internal_content())
  {
    type metadata accessor for LocalPreferences();
    static LocalPreferences.currentApplication.getter();
    Preferences.subscript.getter();

    if (v23 != 2 && (v23 & 1) != 0)
    {
      return 1;
    }
  }

  v16 = *(v0 + *(type metadata accessor for MetricsSamplingLottery() + 24));
  if (v16 <= 0.0)
  {
    return 0;
  }

  if (v16 < 1.0)
  {
    sub_100096FB4(v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000974A8(v7);
      goto LABEL_9;
    }

    (*(v9 + 32))(v15, v7, v8);
    Date.init()();
    v17 = static Date.< infix(_:_:)();
    v18 = *(v9 + 8);
    v18(v13, v8);
    v18(v15, v8);
    if ((v17 & 1) == 0)
    {
LABEL_9:
      v19 = vcvtd_n_f64_u64(sub_100097510(0x20000000000001uLL), 0x35uLL);
      if (v19 > 0.0 && v19 <= v16)
      {
        Date.init()();
        (*(v9 + 56))(v5, 0, 1, v8);
        sub_100096D70(v5);
        return 1;
      }

      return 0;
    }
  }

  return 1;
}

uint64_t type metadata accessor for MetricsSamplingLottery()
{
  result = qword_10016C310;
  if (!qword_10016C310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000974A8(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016C2A8, &qword_1001323D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100097510(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000975A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026F94(&qword_10016C2A8, &qword_1001323D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100097628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100026F94(&qword_10016B328, &qword_100131030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100026F94(&qword_10016C2B0, &qword_1001323D8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100097744(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100026F94(&qword_10016B328, &qword_100131030);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100026F94(&qword_10016C2B0, &qword_1001323D8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100097858()
{
  sub_100097908(319, &qword_10016C320);
  if (v0 <= 0x3F)
  {
    sub_100097908(319, &unk_10016C328);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100097908(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100097954(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10009E5F4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000A259C();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  sub_100054A78(v10 + *(*(v11 - 8) + 72) * v6);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1000A0858(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_100097A04(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10009E5F4(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000A216C();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  sub_100054A78(v10 + *(*(v11 - 8) + 72) * v6);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1000A0858(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_100097AB4(uint64_t a1, char a2)
{
  *(v3 + 624) = v2;
  *(v3 + 1156) = a2;
  *(v3 + 616) = a1;
  v4 = sub_100026F94(&qword_10016C450, &unk_1001324B8);
  *(v3 + 632) = v4;
  v5 = *(v4 - 8);
  *(v3 + 640) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 648) = swift_task_alloc();
  v7 = type metadata accessor for Delete();
  *(v3 + 656) = v7;
  v8 = *(v7 - 8);
  *(v3 + 664) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 672) = swift_task_alloc();
  v10 = type metadata accessor for Setter();
  *(v3 + 680) = v10;
  v11 = *(v10 - 8);
  *(v3 + 688) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 696) = swift_task_alloc();
  v13 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  *(v3 + 704) = v13;
  v14 = *(v13 - 8);
  *(v3 + 712) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 720) = swift_task_alloc();
  v16 = type metadata accessor for Update();
  *(v3 + 728) = v16;
  v17 = *(v16 - 8);
  *(v3 + 736) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 744) = swift_task_alloc();
  v19 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  *(v3 + 752) = v19;
  v20 = *(v19 - 8);
  *(v3 + 760) = v20;
  v21 = *(v20 + 64) + 15;
  *(v3 + 768) = swift_task_alloc();
  *(v3 + 776) = swift_task_alloc();
  v22 = type metadata accessor for Table();
  *(v3 + 784) = v22;
  v23 = *(v22 - 8);
  *(v3 + 792) = v23;
  v24 = *(v23 + 64) + 15;
  *(v3 + 800) = swift_task_alloc();
  *(v3 + 808) = swift_task_alloc();
  v25 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  *(v3 + 816) = swift_task_alloc();
  v26 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  *(v3 + 824) = swift_task_alloc();
  v27 = type metadata accessor for OSSignpostID();
  *(v3 + 832) = v27;
  v28 = *(v27 - 8);
  *(v3 + 840) = v28;
  v29 = *(v28 + 64) + 15;
  *(v3 + 848) = swift_task_alloc();
  *(v3 + 856) = swift_task_alloc();

  return _swift_task_switch(sub_100097EAC, v2, 0);
}

uint64_t sub_100097EAC()
{
  if (qword_10016A588 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 856);
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016C388);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 856);
    v6 = *(v0 + 1156);
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v6;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v8, "AccessCredentialDataCleanupTask.cleanup", "forceCleanup=%{BOOL}d", v7, 8u);
  }

  v9 = *(v0 + 856);
  v10 = *(v0 + 848);
  v11 = *(v0 + 840);
  v12 = *(v0 + 832);

  (*(v11 + 16))(v10, v9, v12);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 864) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v12);
  if (qword_10016A580 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 824);
  v17 = *(v0 + 624);
  v18 = *(v0 + 1156);
  sub_100026F50(qword_10016C360, qword_10016C378);
  *(v0 + 872) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v19 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 880) = *(v19 + 72);
  *(v0 + 1152) = *(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0xD000000000000031;
  v20._object = 0x800000010013C110;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  v21 = *(v17 + 112);
  *(v0 + 888) = v21;
  v22 = *(v17 + 120);
  *(v0 + 896) = v22;
  *(v0 + 296) = &type metadata for String;
  *(v0 + 272) = v21;
  *(v0 + 280) = v22;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 272, &qword_10016AB10, &unk_100130B10);
  v23._object = 0x800000010013C150;
  v23._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  *(v0 + 328) = &type metadata for Bool;
  *(v0 + 304) = v18;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 304, &qword_10016AB10, &unk_100130B10);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v25 = sub_100026F94(&qword_10016C458, &qword_1001324C8);
  v26 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v27 = swift_task_alloc();
  *(v0 + 904) = v27;
  *v27 = v0;
  v27[1] = sub_1000982C4;
  v28 = *(v0 + 616);

  return BaseObjectGraph.inject<A>(_:)(v0 + 152, v25, v25);
}

uint64_t sub_1000982C4()
{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v4 = *v1;
  *(*v1 + 912) = v0;

  v5 = *(v2 + 624);
  if (v0)
  {
    v6 = sub_10009BFB0;
  }

  else
  {
    v6 = sub_1000983F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000983F0()
{
  if (*(v0 + 1156))
  {
    v1 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v3 = swift_task_alloc();
    *(v0 + 936) = v3;
    *v3 = v0;
    v3[1] = sub_100098D24;
    v4 = *(v0 + 616);

    return BaseObjectGraph.inject<A>(_:)(v0 + 192, v1, v1);
  }

  else
  {
    v5 = *sub_100026F50((v0 + 152), *(v0 + 176));
    v6 = swift_task_alloc();
    *(v0 + 920) = v6;
    *v6 = v0;
    v6[1] = sub_100098534;
    v7 = *(v0 + 896);
    v8 = *(v0 + 888);

    return sub_100033FEC(v8, v7);
  }
}

uint64_t sub_100098534(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 920);
  v6 = *v2;
  *(v4 + 928) = v1;

  v7 = *(v4 + 624);
  if (v1)
  {
    v8 = sub_100098AA8;
  }

  else
  {
    *(v4 + 1157) = a1 & 1;
    v8 = sub_100098674;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100098674()
{
  if (*(v0 + 1157) == 1)
  {
    v1 = *(v0 + 896);
    v2 = *(v0 + 888);
    v3 = *(v0 + 1152);
    v4 = *(v0 + 880);
    v5 = *(v0 + 872);
    v6 = *(v0 + 824);
    v33 = *(v0 + 816);
    v35 = *(v0 + 616);
    sub_100026F50(qword_10016C360, qword_10016C378);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v7._countAndFlagsBits = 0xD00000000000001ELL;
    v7._object = 0x800000010013C220;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    *(v0 + 520) = &type metadata for String;
    *(v0 + 496) = v2;
    *(v0 + 504) = v1;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 496, &qword_10016AB10, &unk_100130B10);
    v8._object = 0x800000010013C240;
    v8._countAndFlagsBits = 0xD000000000000010;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 152));
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v33, 1, 1, v9);
    v10 = qword_10016A6C8;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 864);
    v12 = *(v0 + 856);
    v13 = *(v0 + 848);
    v14 = *(v0 + 824);
    v15 = *(v0 + 816);
    v26 = *(v0 + 808);
    v27 = *(v0 + 800);
    v28 = *(v0 + 776);
    v29 = *(v0 + 768);
    v30 = *(v0 + 744);
    v31 = *(v0 + 720);
    v32 = *(v0 + 696);
    v34 = *(v0 + 672);
    v36 = *(v0 + 648);
    v16 = *(v0 + 616);
    v17 = qword_1001738A8;
    v18 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = v16;

    sub_10009C9B8(0, 0, v15, &unk_100132550, v19);

    sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2);

    v20 = *(v0 + 8);

    return v20(0);
  }

  else
  {
    v22 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v23 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v24 = swift_task_alloc();
    *(v0 + 936) = v24;
    *v24 = v0;
    v24[1] = sub_100098D24;
    v25 = *(v0 + 616);

    return BaseObjectGraph.inject<A>(_:)(v0 + 192, v22, v22);
  }
}

uint64_t sub_100098AA8()
{
  v1 = v0[102];
  v2 = v0[77];
  sub_100026FDC(v0 + 19);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = qword_10016A6C8;

  v25 = v0[116];
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[106];
  v8 = v0[103];
  v9 = v0[102];
  v16 = v0[101];
  v17 = v0[100];
  v18 = v0[97];
  v19 = v0[96];
  v20 = v0[93];
  v21 = v0[90];
  v22 = v0[87];
  v23 = v0[84];
  v24 = v0[81];
  v10 = v0[77];
  v11 = qword_1001738A8;
  v12 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v10;

  sub_10009C9B8(0, 0, v9, &unk_1001324D8, v13);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100098D24()
{
  v2 = *(*v1 + 936);
  v3 = *v1;
  v3[118] = v0;

  if (v0)
  {
    v4 = v3[78];

    return _swift_task_switch(sub_10009C224, v4, 0);
  }

  else
  {
    v5 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v7 = swift_task_alloc();
    v3[119] = v7;
    *v7 = v3;
    v7[1] = sub_100098EC8;
    v8 = v3[77];

    return BaseObjectGraph.inject<A>(_:)(v3 + 29, v5, v5);
  }
}

uint64_t sub_100098EC8()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v4 = *v1;
  *(*v1 + 960) = v0;

  v5 = *(v2 + 624);
  if (v0)
  {
    v6 = sub_10009C4A0;
  }

  else
  {
    v6 = sub_100098FF4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100098FF4()
{
  v1 = *sub_100026F50(v0 + 29, v0[32]);
  v2 = swift_task_alloc();
  v0[121] = v2;
  *v2 = v0;
  v2[1] = sub_10009909C;
  v3 = v0[112];
  v4 = v0[111];

  return sub_100060B24(v4, v3);
}

uint64_t sub_10009909C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 968);
  v6 = *v2;
  *(v4 + 976) = a1;
  *(v4 + 984) = v1;

  v7 = *(v3 + 624);
  if (v1)
  {
    v8 = sub_100099890;
  }

  else
  {
    v8 = sub_1000991D4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000991D4()
{
  v1 = *(v0 + 976);
  v2 = *(v1 + 16);
  *(v0 + 992) = v2;
  if (v2)
  {
    *(v0 + 1000) = 0u;
    if (*(v1 + 16))
    {
      v52 = *(v0 + 888);
      v3 = *(v0 + 1152);
      v4 = *(v0 + 880);
      v5 = *(v0 + 872);
      v6 = *(v0 + 824);
      sub_1000A3D14(v1 + 32, v0 + 16);
      sub_100026F50(qword_10016C360, qword_10016C378);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v7._countAndFlagsBits = 0xD00000000000001DLL;
      v7._object = 0x800000010013C170;
      LogMessage.StringInterpolation.appendLiteral(_:)(v7);
      v9 = *(v0 + 120);
      v8 = *(v0 + 128);
      *(v0 + 1016) = v9;
      *(v0 + 1024) = v8;
      *(v0 + 360) = &type metadata for String;
      *(v0 + 336) = v9;
      *(v0 + 344) = v8;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 336, &qword_10016AB10, &unk_100130B10);
      v10._countAndFlagsBits = 0x203A6E69202CLL;
      v10._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v10);
      v12 = *(v0 + 136);
      v11 = *(v0 + 144);
      *(v0 + 1032) = v12;
      *(v0 + 1040) = v11;
      *(v0 + 392) = &type metadata for String;
      *(v0 + 368) = v12;
      *(v0 + 376) = v11;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 368, &qword_10016AB10, &unk_100130B10);
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v13);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v14 = sub_100026F50((v0 + 192), *(v0 + 216));
      *(v0 + 544) = 0;
      *(v0 + 552) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);
      v15 = *(v0 + 552);

      *(v0 + 528) = 0xD000000000000020;
      *(v0 + 536) = 0x800000010013C190;
      String.append(_:)(v52);
      v16._countAndFlagsBits = 41;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v17 = *(v0 + 528);
      v18 = *(v0 + 536);
      *(v0 + 1048) = v18;
      v19 = *v14;
      v20 = swift_task_alloc();
      *(v0 + 1056) = v20;
      *v20 = v0;
      v20[1] = sub_100099B1C;

      return sub_10009D2E4(v0 + 16, v17, v18);
    }

    __break(1u);
    goto LABEL_11;
  }

  v22 = *(v0 + 896);
  v23 = *(v0 + 888);
  v24 = *(v0 + 1152);
  v25 = *(v0 + 880);
  v26 = *(v0 + 872);
  v27 = *(v0 + 824);
  v48 = *(v0 + 1156);
  v53 = *(v0 + 816);
  v55 = *(v0 + 616);

  sub_100026F50(qword_10016C360, qword_10016C378);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0xD00000000000003ALL;
  v28._object = 0x800000010013C1C0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v28);
  *(v0 + 424) = &type metadata for String;
  *(v0 + 400) = v23;
  *(v0 + 408) = v22;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 400, &qword_10016AB10, &unk_100130B10);
  v29._object = 0x800000010013C150;
  v29._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  *(v0 + 456) = &type metadata for Bool;
  *(v0 + 432) = v48;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 432, &qword_10016AB10, &unk_100130B10);
  v30._countAndFlagsBits = 0xD000000000000017;
  v30._object = 0x800000010013C200;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  *(v0 + 488) = &type metadata for Int;
  *(v0 + 464) = 0;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 464, &qword_10016AB10, &unk_100130B10);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 232));
  sub_100026FDC((v0 + 192));
  sub_100026FDC((v0 + 152));
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v53, 1, 1, v32);
  v33 = qword_10016A6C8;

  if (v33 != -1)
  {
LABEL_11:
    swift_once();
  }

  v34 = *(v0 + 864);
  v35 = *(v0 + 856);
  v36 = *(v0 + 848);
  v37 = *(v0 + 824);
  v38 = *(v0 + 816);
  v44 = *(v0 + 808);
  v45 = *(v0 + 800);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  v49 = *(v0 + 744);
  v50 = *(v0 + 720);
  v51 = *(v0 + 696);
  v54 = *(v0 + 672);
  v56 = *(v0 + 648);
  v39 = *(v0 + 616);
  v40 = qword_1001738A8;
  v41 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v42 = swift_allocObject();
  v42[2] = v40;
  v42[3] = v41;
  v42[4] = v39;

  sub_10009C9B8(0, 0, v38, &unk_100132548, v42);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2);

  v43 = *(v0 + 8);

  return v43(0);
}

uint64_t sub_100099890()
{
  v1 = v0[102];
  v2 = v0[77];
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = qword_10016A6C8;

  v25 = v0[123];
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[106];
  v8 = v0[103];
  v9 = v0[102];
  v16 = v0[101];
  v17 = v0[100];
  v18 = v0[97];
  v19 = v0[96];
  v20 = v0[93];
  v21 = v0[90];
  v22 = v0[87];
  v23 = v0[84];
  v24 = v0[81];
  v10 = v0[77];
  v11 = qword_1001738A8;
  v12 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v10;

  sub_10009C9B8(0, 0, v9, &unk_100132500, v13);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100099B1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1056);
  v6 = *v2;
  v4[133] = a1;
  v4[134] = v1;

  v7 = v3[131];
  if (v1)
  {
    v8 = v4[122];
    v9 = v4[78];

    v10 = sub_10009C724;
    v11 = v9;
  }

  else
  {
    v12 = v4[78];

    v10 = sub_100099C80;
    v11 = v12;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100099C80()
{
  v1 = *(v0 + 1064);
  if (Connection.tableExists(_:)(*(v0 + 1016)))
  {
    v84 = *(v0 + 1064);
    v87 = *(v0 + 1072);
    v2 = *(v0 + 1024);
    v3 = *(v0 + 1016);
    v4 = *(v0 + 896);
    v5 = *(v0 + 888);
    v69 = v5;
    v70 = *(v0 + 808);
    v90 = *(v0 + 800);
    v97 = *(v0 + 792);
    v92 = *(v0 + 784);
    v6 = *(v0 + 776);
    v73 = *(v0 + 768);
    v95 = *(v0 + 760);
    v68 = *(v0 + 752);
    v7 = *(v0 + 720);
    v8 = *(v0 + 712);
    v72 = *(v0 + 704);
    v75 = *(v0 + 696);
    v77 = *(v0 + 744);
    v79 = *(v0 + 688);
    v81 = *(v0 + 680);

    Table.init(_:database:)();
    static Connection.ServiceColumns.requestIds.getter();
    *(v0 + 560) = 47;
    *(v0 + 568) = 0xE100000000000000;
    v9._countAndFlagsBits = v5;
    v9._object = v4;
    v10 = v4;
    String.append(_:)(v9);
    v11._countAndFlagsBits = 47;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12 = *(v0 + 560);
    v13 = *(v0 + 568);
    sub_1000A3DC4();
    ExpressionType<>.like(_:escape:)();

    sub_1000A3FAC(&qword_10016AD20, 255, &type metadata accessor for Table);
    QueryType.where(_:)();
    v71 = *(v8 + 8);
    v71(v7, v72);
    *(v0 + 576) = 47;
    *(v0 + 584) = 0xE100000000000000;
    v14._countAndFlagsBits = v69;
    v14._object = v10;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 47;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = *(v0 + 576);
    v17 = *(v0 + 584);
    ExpressionType<>.replace(_:with:)();

    <- infix<A>(_:_:)();
    v18 = *(v95 + 8);
    *(v0 + 1080) = v18;
    *(v0 + 1088) = (v95 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v73, v68);
    QueryType.update(_:_:)();
    (*(v79 + 8))(v75, v81);
    v19 = *(v97 + 8);
    *(v0 + 1096) = v19;
    *(v0 + 1104) = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v90, v92);
    Connection.run(_:)();
    v93 = *(v0 + 1064);
    if (v87)
    {
      v20 = *(v0 + 976);
      v88 = *(v0 + 816);
      v21 = *(v0 + 808);
      v22 = *(v0 + 784);
      v23 = *(v0 + 776);
      v24 = *(v0 + 752);
      v25 = *(v0 + 744);
      v26 = *(v0 + 736);
      v27 = *(v0 + 728);
      v82 = *(v0 + 624);
      v85 = *(v0 + 616);

      (*(v26 + 8))(v25, v27);
      v18(v23, v24);
      v19(v21, v22);
      v28 = sub_100026F50((v0 + 192), *(v0 + 216));
      sub_1000A3848(*v28, v0 + 16, v82);

      sub_1000A3D70(v0 + 16);
      sub_100026FDC((v0 + 232));
      sub_100026FDC((v0 + 192));
      sub_100026FDC((v0 + 152));
      v29 = type metadata accessor for TaskPriority();
      (*(*(v29 - 8) + 56))(v88, 1, 1, v29);
      v30 = qword_10016A6C8;

      if (v30 != -1)
      {
        swift_once();
      }

      v53 = *(v0 + 864);
      v54 = *(v0 + 856);
      v55 = *(v0 + 848);
      v56 = *(v0 + 824);
      v57 = *(v0 + 816);
      v74 = *(v0 + 808);
      v76 = *(v0 + 800);
      v78 = *(v0 + 776);
      v80 = *(v0 + 768);
      v83 = *(v0 + 744);
      v86 = *(v0 + 720);
      v89 = *(v0 + 696);
      v94 = *(v0 + 672);
      v96 = *(v0 + 648);
      v58 = *(v0 + 616);
      v59 = qword_1001738A8;
      v60 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
      v61 = swift_allocObject();
      v61[2] = v59;
      v61[3] = v60;
      v61[4] = v58;

      sub_10009C9B8(0, 0, v57, &unk_100132520, v61);

      sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2);

      v62 = *(v0 + 8);

      return v62();
    }

    v41 = *(v0 + 808);
    v42 = *(v0 + 800);
    v43 = *(v0 + 784);
    v44 = *(v0 + 776);
    v45 = *(v0 + 720);
    v91 = *(v0 + 704);
    v46 = *(v0 + 672);
    (*(*(v0 + 736) + 8))(*(v0 + 744), *(v0 + 728));
    *(v0 + 592) = 0;
    *(v0 + 600) = 0xE000000000000000;
    static Expression<A>.== infix<A>(_:_:)();
    QueryType.where(_:)();
    v71(v45, v91);
    QueryType.delete()();
    v19(v42, v43);
    v47 = Connection.run(_:)();
    v48 = *(v0 + 1000);
    result = (*(*(v0 + 664) + 8))(*(v0 + 672), *(v0 + 656));
    *(v0 + 1112) = v48 + v47;
    if (__OFADD__(v48, v47))
    {
      __break(1u);
      return result;
    }

    v49 = *(v0 + 1064);
    v50 = *(v0 + 808);
    v51 = *(v0 + 784);
    v52 = *(v0 + 648);
    sub_1000A3FAC(&qword_10016AD68, 255, &type metadata accessor for Table);
    SchemaType.count.getter();
    Connection.scalar<A>(_:)();
    (*(*(v0 + 640) + 8))(*(v0 + 648), *(v0 + 632));
    if (!*(v0 + 608))
    {
      v64 = *(v0 + 1064);
      v65 = *(v0 + 808);
      v66 = *(v0 + 784);
      v67 = default argument 0 of SchemaType.drop(ifExists:)();
      SchemaType.drop(ifExists:)(v67 & 1);
      Connection.run(_:_:)();
    }

    v63 = *sub_100026F50((v0 + 232), *(v0 + 256));
    v32 = swift_task_alloc();
    *(v0 + 1120) = v32;
    *v32 = v0;
    v33 = sub_10009A960;
  }

  else
  {
    v31 = *sub_100026F50((v0 + 232), *(v0 + 256));
    v32 = swift_task_alloc();
    *(v0 + 1136) = v32;
    *v32 = v0;
    v33 = sub_10009B4BC;
  }

  v32[1] = v33;
  v34 = *(v0 + 1040);
  v35 = *(v0 + 1032);
  v36 = *(v0 + 1024);
  v37 = *(v0 + 1016);
  v38 = *(v0 + 896);
  v39 = *(v0 + 888);

  return sub_10005EDF0(v39, v38, v0 + 32, v37, v36, v35, v34);
}

uint64_t sub_10009A960()
{
  v2 = *v1;
  v3 = *(*v1 + 1120);
  v9 = *v1;
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v4 = *(v2 + 976);
    v5 = *(v2 + 624);

    v6 = sub_10009B1CC;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 624);
    v6 = sub_10009AA88;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10009AA88()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 992);
  v6 = *(v0 + 808);
  v7 = *(v0 + 784);
  v8 = *(v0 + 624);
  v9 = *(v0 + 1008) + 1;
  (*(v0 + 1080))(*(v0 + 776), *(v0 + 752));
  v2(v6, v7);
  v10 = sub_100026F50((v0 + 192), *(v0 + 216));
  sub_1000A3848(*v10, v0 + 16, v8);

  result = sub_1000A3D70(v0 + 16);
  if (v9 == v5)
  {
    v12 = *(v0 + 1112);
    v13 = *(v0 + 976);
    v14 = *(v0 + 896);
    v15 = *(v0 + 888);
    v16 = *(v0 + 1152);
    v17 = *(v0 + 880);
    v18 = *(v0 + 872);
    v19 = *(v0 + 824);
    v68 = *(v0 + 1156);
    v63 = *(v0 + 816);
    v65 = *(v0 + 616);

    sub_100026F50(qword_10016C360, qword_10016C378);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 0xD00000000000003ALL;
    v20._object = 0x800000010013C1C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    *(v0 + 424) = &type metadata for String;
    *(v0 + 400) = v15;
    *(v0 + 408) = v14;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 400, &qword_10016AB10, &unk_100130B10);
    v21._object = 0x800000010013C150;
    v21._countAndFlagsBits = 0xD000000000000011;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v0 + 456) = &type metadata for Bool;
    *(v0 + 432) = v68;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 432, &qword_10016AB10, &unk_100130B10);
    v22._countAndFlagsBits = 0xD000000000000017;
    v22._object = 0x800000010013C200;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v0 + 488) = &type metadata for Int;
    v69 = v12;
    *(v0 + 464) = v12;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 464, &qword_10016AB10, &unk_100130B10);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 232));
    sub_100026FDC((v0 + 192));
    sub_100026FDC((v0 + 152));
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v63, 1, 1, v24);
    v25 = qword_10016A6C8;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 864);
    v27 = *(v0 + 856);
    v28 = *(v0 + 848);
    v29 = *(v0 + 824);
    v30 = *(v0 + 816);
    v56 = *(v0 + 808);
    v57 = *(v0 + 800);
    v58 = *(v0 + 776);
    v59 = *(v0 + 768);
    v60 = *(v0 + 744);
    v61 = *(v0 + 720);
    v62 = *(v0 + 696);
    v64 = *(v0 + 672);
    v66 = *(v0 + 648);
    v31 = *(v0 + 616);
    v32 = qword_1001738A8;
    v33 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = v33;
    v34[4] = v31;

    sub_10009C9B8(0, 0, v30, &unk_100132548, v34);

    sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2);

    v35 = *(v0 + 8);

    return v35(v69);
  }

  else
  {
    v36 = *(v0 + 1008) + 1;
    *(v0 + 1000) = *(v0 + 1112);
    *(v0 + 1008) = v36;
    v37 = *(v0 + 976);
    if (v36 >= *(v37 + 16))
    {
      __break(1u);
    }

    else
    {
      v67 = *(v0 + 888);
      v38 = *(v0 + 1152);
      v39 = *(v0 + 880);
      v40 = *(v0 + 872);
      v41 = *(v0 + 824);
      sub_1000A3D14(v37 + 136 * v36 + 32, v0 + 16);
      sub_100026F50(qword_10016C360, qword_10016C378);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v42._countAndFlagsBits = 0xD00000000000001DLL;
      v42._object = 0x800000010013C170;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      v44 = *(v0 + 120);
      v43 = *(v0 + 128);
      *(v0 + 1016) = v44;
      *(v0 + 1024) = v43;
      *(v0 + 360) = &type metadata for String;
      *(v0 + 336) = v44;
      *(v0 + 344) = v43;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 336, &qword_10016AB10, &unk_100130B10);
      v45._countAndFlagsBits = 0x203A6E69202CLL;
      v45._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v45);
      v47 = *(v0 + 136);
      v46 = *(v0 + 144);
      *(v0 + 1032) = v47;
      *(v0 + 1040) = v46;
      *(v0 + 392) = &type metadata for String;
      *(v0 + 368) = v47;
      *(v0 + 376) = v46;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 368, &qword_10016AB10, &unk_100130B10);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v49 = sub_100026F50((v0 + 192), *(v0 + 216));
      *(v0 + 544) = 0;
      *(v0 + 552) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);
      v50 = *(v0 + 552);

      *(v0 + 528) = 0xD000000000000020;
      *(v0 + 536) = 0x800000010013C190;
      String.append(_:)(v67);
      v51._countAndFlagsBits = 41;
      v51._object = 0xE100000000000000;
      String.append(_:)(v51);
      v52 = *(v0 + 528);
      v53 = *(v0 + 536);
      *(v0 + 1048) = v53;
      v54 = *v49;
      v55 = swift_task_alloc();
      *(v0 + 1056) = v55;
      *v55 = v0;
      v55[1] = sub_100099B1C;

      return sub_10009D2E4(v0 + 16, v52, v53);
    }
  }

  return result;
}

uint64_t sub_10009B1CC()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 816);
  v6 = *(v0 + 808);
  v7 = *(v0 + 784);
  v8 = *(v0 + 624);
  v9 = *(v0 + 616);
  (*(v0 + 1080))(*(v0 + 776), *(v0 + 752));
  v2(v6, v7);
  v10 = sub_100026F50((v0 + 192), *(v0 + 216));
  sub_1000A3848(*v10, v0 + 16, v8);

  sub_1000A3D70(v0 + 16);
  sub_100026FDC((v0 + 232));
  sub_100026FDC((v0 + 192));
  sub_100026FDC((v0 + 152));
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = qword_10016A6C8;

  v33 = *(v0 + 1128);
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 864);
  v14 = *(v0 + 856);
  v15 = *(v0 + 848);
  v16 = *(v0 + 824);
  v17 = *(v0 + 816);
  v24 = *(v0 + 808);
  v25 = *(v0 + 800);
  v26 = *(v0 + 776);
  v27 = *(v0 + 768);
  v28 = *(v0 + 744);
  v29 = *(v0 + 720);
  v30 = *(v0 + 696);
  v31 = *(v0 + 672);
  v32 = *(v0 + 648);
  v18 = *(v0 + 616);
  v19 = qword_1001738A8;
  v20 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v18;

  sub_10009C9B8(0, 0, v17, &unk_100132538, v21);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10009B4BC()
{
  v2 = *v1;
  v3 = *(*v1 + 1136);
  v9 = *v1;
  *(*v1 + 1144) = v0;

  if (v0)
  {
    v4 = *(v2 + 976);
    v5 = *(v2 + 624);

    v6 = sub_10009BCF0;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 624);
    v6 = sub_10009B5E4;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10009B5E4()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 992);
  v3 = *(v0 + 624);
  v4 = *(v0 + 1008) + 1;
  v5 = sub_100026F50((v0 + 192), *(v0 + 216));
  sub_1000A3848(*v5, v0 + 16, v3);

  result = sub_1000A3D70(v0 + 16);
  if (v4 == v2)
  {
    v7 = *(v0 + 1000);
    v8 = *(v0 + 976);
    v9 = *(v0 + 896);
    v10 = *(v0 + 888);
    v11 = *(v0 + 1152);
    v12 = *(v0 + 880);
    v13 = *(v0 + 872);
    v14 = *(v0 + 824);
    v63 = *(v0 + 1156);
    v58 = *(v0 + 816);
    v60 = *(v0 + 616);

    sub_100026F50(qword_10016C360, qword_10016C378);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 0xD00000000000003ALL;
    v15._object = 0x800000010013C1C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v0 + 424) = &type metadata for String;
    *(v0 + 400) = v10;
    *(v0 + 408) = v9;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 400, &qword_10016AB10, &unk_100130B10);
    v16._object = 0x800000010013C150;
    v16._countAndFlagsBits = 0xD000000000000011;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v0 + 456) = &type metadata for Bool;
    *(v0 + 432) = v63;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 432, &qword_10016AB10, &unk_100130B10);
    v17._countAndFlagsBits = 0xD000000000000017;
    v17._object = 0x800000010013C200;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    *(v0 + 488) = &type metadata for Int;
    v64 = v7;
    *(v0 + 464) = v7;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 464, &qword_10016AB10, &unk_100130B10);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 232));
    sub_100026FDC((v0 + 192));
    sub_100026FDC((v0 + 152));
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v58, 1, 1, v19);
    v20 = qword_10016A6C8;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 864);
    v22 = *(v0 + 856);
    v23 = *(v0 + 848);
    v24 = *(v0 + 824);
    v25 = *(v0 + 816);
    v51 = *(v0 + 808);
    v52 = *(v0 + 800);
    v53 = *(v0 + 776);
    v54 = *(v0 + 768);
    v55 = *(v0 + 744);
    v56 = *(v0 + 720);
    v57 = *(v0 + 696);
    v59 = *(v0 + 672);
    v61 = *(v0 + 648);
    v26 = *(v0 + 616);
    v27 = qword_1001738A8;
    v28 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
    v29 = swift_allocObject();
    v29[2] = v27;
    v29[3] = v28;
    v29[4] = v26;

    sub_10009C9B8(0, 0, v25, &unk_100132548, v29);

    sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2);

    v30 = *(v0 + 8);

    return v30(v64);
  }

  else
  {
    v31 = *(v0 + 1008) + 1;
    *(v0 + 1008) = v31;
    v32 = *(v0 + 976);
    if (v31 >= *(v32 + 16))
    {
      __break(1u);
    }

    else
    {
      v62 = *(v0 + 888);
      v33 = *(v0 + 1152);
      v34 = *(v0 + 880);
      v35 = *(v0 + 872);
      v36 = *(v0 + 824);
      sub_1000A3D14(v32 + 136 * v31 + 32, v0 + 16);
      sub_100026F50(qword_10016C360, qword_10016C378);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v37._countAndFlagsBits = 0xD00000000000001DLL;
      v37._object = 0x800000010013C170;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      v39 = *(v0 + 120);
      v38 = *(v0 + 128);
      *(v0 + 1016) = v39;
      *(v0 + 1024) = v38;
      *(v0 + 360) = &type metadata for String;
      *(v0 + 336) = v39;
      *(v0 + 344) = v38;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 336, &qword_10016AB10, &unk_100130B10);
      v40._countAndFlagsBits = 0x203A6E69202CLL;
      v40._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      v42 = *(v0 + 136);
      v41 = *(v0 + 144);
      *(v0 + 1032) = v42;
      *(v0 + 1040) = v41;
      *(v0 + 392) = &type metadata for String;
      *(v0 + 368) = v42;
      *(v0 + 376) = v41;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 368, &qword_10016AB10, &unk_100130B10);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v44 = sub_100026F50((v0 + 192), *(v0 + 216));
      *(v0 + 544) = 0;
      *(v0 + 552) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);
      v45 = *(v0 + 552);

      *(v0 + 528) = 0xD000000000000020;
      *(v0 + 536) = 0x800000010013C190;
      String.append(_:)(v62);
      v46._countAndFlagsBits = 41;
      v46._object = 0xE100000000000000;
      String.append(_:)(v46);
      v47 = *(v0 + 528);
      v48 = *(v0 + 536);
      *(v0 + 1048) = v48;
      v49 = *v44;
      v50 = swift_task_alloc();
      *(v0 + 1056) = v50;
      *v50 = v0;
      v50[1] = sub_100099B1C;

      return sub_10009D2E4(v0 + 16, v47, v48);
    }
  }

  return result;
}

uint64_t sub_10009BCF0()
{
  v1 = v0[133];
  v2 = v0[102];
  v3 = v0[78];
  v4 = v0[77];
  v5 = sub_100026F50(v0 + 24, v0[27]);
  sub_1000A3848(*v5, (v0 + 2), v3);

  sub_1000A3D70((v0 + 2));
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = qword_10016A6C8;

  v28 = v0[143];
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = v0[108];
  v9 = v0[107];
  v10 = v0[106];
  v11 = v0[103];
  v12 = v0[102];
  v19 = v0[101];
  v20 = v0[100];
  v21 = v0[97];
  v22 = v0[96];
  v23 = v0[93];
  v24 = v0[90];
  v25 = v0[87];
  v26 = v0[84];
  v27 = v0[81];
  v13 = v0[77];
  v14 = qword_1001738A8;
  v15 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v13;

  sub_10009C9B8(0, 0, v12, &unk_100132518, v16);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10009BFB0()
{
  v1 = v0[102];
  v2 = v0[77];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = qword_10016A6C8;

  v25 = v0[114];
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[106];
  v8 = v0[103];
  v9 = v0[102];
  v16 = v0[101];
  v17 = v0[100];
  v18 = v0[97];
  v19 = v0[96];
  v20 = v0[93];
  v21 = v0[90];
  v22 = v0[87];
  v23 = v0[84];
  v24 = v0[81];
  v10 = v0[77];
  v11 = qword_1001738A8;
  v12 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v10;

  sub_10009C9B8(0, 0, v9, &unk_1001324D0, v13);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10009C224()
{
  v1 = v0[102];
  v2 = v0[77];
  sub_100026FDC(v0 + 19);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = qword_10016A6C8;

  v25 = v0[118];
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[106];
  v8 = v0[103];
  v9 = v0[102];
  v16 = v0[101];
  v17 = v0[100];
  v18 = v0[97];
  v19 = v0[96];
  v20 = v0[93];
  v21 = v0[90];
  v22 = v0[87];
  v23 = v0[84];
  v24 = v0[81];
  v10 = v0[77];
  v11 = qword_1001738A8;
  v12 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v10;

  sub_10009C9B8(0, 0, v9, &unk_1001324E8, v13);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10009C4A0()
{
  v1 = v0[102];
  v2 = v0[77];
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = qword_10016A6C8;

  v25 = v0[120];
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[106];
  v8 = v0[103];
  v9 = v0[102];
  v16 = v0[101];
  v17 = v0[100];
  v18 = v0[97];
  v19 = v0[96];
  v20 = v0[93];
  v21 = v0[90];
  v22 = v0[87];
  v23 = v0[84];
  v24 = v0[81];
  v10 = v0[77];
  v11 = qword_1001738A8;
  v12 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v10;

  sub_10009C9B8(0, 0, v9, &unk_1001324F8, v13);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10009C724()
{
  v1 = v0[102];
  v2 = v0[77];
  sub_1000A3D70((v0 + 2));
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = qword_10016A6C8;

  v25 = v0[134];
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[106];
  v8 = v0[103];
  v9 = v0[102];
  v16 = v0[101];
  v17 = v0[100];
  v18 = v0[97];
  v19 = v0[96];
  v20 = v0[93];
  v21 = v0[90];
  v22 = v0[87];
  v23 = v0[84];
  v24 = v0[81];
  v10 = v0[77];
  v11 = qword_1001738A8;
  v12 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v10;

  sub_10009C9B8(0, 0, v9, &unk_100132510, v13);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10009C9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100042774(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002BA6C(v11, &qword_10016AD80, &qword_1001311B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10002BA6C(a3, &qword_10016AD80, &qword_1001311B0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002BA6C(a3, &qword_10016AD80, &qword_1001311B0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10009CCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10009CDA0()
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_10009CE00()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C388);
  v1 = sub_10002FD14(v0, qword_10016C388);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10009CEC8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[4] = qword_1001738A8;
  v3 = async function pointer to BaseObjectGraph.injectIfAvailable<A>(_:)[1];
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_10009CFB4;

  return BaseObjectGraph.injectIfAvailable<A>(_:)(v2 + 8, &type metadata for AccessCredentialDataCleanupTask.Config, &type metadata for AccessCredentialDataCleanupTask.Config);
}

uint64_t sub_10009CFB4()
{
  v2 = v0;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 48) = v2;

  type metadata accessor for DaemonActor();
  sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v7 = sub_10009D2CC;
  }

  else
  {
    v7 = sub_10009D13C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10009D13C()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10009D1D8;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_100097AB4(v3, v1 & 1);
}

uint64_t sub_10009D1D8()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10009D2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for StorageCategory();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10009D3D8, 0, 0);
}

uint64_t sub_10009D3D8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[2];
  v0[11] = *(v5 + 120);
  v0[12] = *(v5 + 128);
  (*(v2 + 104))(v1, enum case for StorageCategory.classC(_:), v3);

  return _swift_task_switch(sub_10009D474, v4, 0);
}

uint64_t sub_10009D474()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];
  v4 = v0[6];
  v5 = v0[2];
  (*(v0[9] + 16))(&v3[v4[5]], v0[10], v0[8]);
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  *v3 = v2;
  *(v3 + 1) = v1;
  v8 = &v3[v4[6]];
  *v8 = v6;
  *(v8 + 1) = v7;
  v3[v4[7]] = 0;
  v3[v4[8]] = 1;

  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_10009D588;
  v10 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[3];

  return sub_100050F58(v10, v13, v11);
}

uint64_t sub_10009D588(uint64_t a1)
{
  v4 = *(*v2 + 104);
  v5 = *v2;
  v5[14] = v1;

  if (v1)
  {
    v6 = v5[5];
    sub_100054A78(v5[7]);

    return _swift_task_switch(sub_10009D724, v6, 0);
  }

  else
  {
    v8 = v5[9];
    v7 = v5[10];
    v9 = v5[8];
    sub_100054A78(v5[7]);
    (*(v8 + 8))(v7, v9);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_10009D724()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  return _swift_task_switch(sub_10009D79C, 0, 0);
}

uint64_t sub_10009D79C()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_10009D80C()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10009D868(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042680;

  return sub_10009CEC8(a1);
}

unint64_t sub_10009D900()
{
  v1 = *v0;
  _StringGuts.grow(_:)(35);

  String.append(_:)(v1[7]);
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0xD000000000000020;
}

uint64_t sub_10009D980(uint64_t a1, uint64_t a2)
{
  result = sub_1000A3FAC(&qword_10016C448, a2, type metadata accessor for AccessCredentialDataCleanupTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10009D9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v7[25] = swift_task_alloc();
  v9 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v7[26] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[27] = swift_task_alloc();

  return _swift_task_switch(sub_10009DAA4, v6, 0);
}

uint64_t sub_10009DAA4()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = v2[5];
  v9 = type metadata accessor for StorageCategory();
  (*(*(v9 - 8) + 16))(&v1[v8], v4, v9);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  *v1 = v7;
  *(v1 + 1) = v6;
  v12 = &v1[v2[6]];
  *v12 = v10;
  *(v12 + 1) = v11;
  v1[v2[7]] = 0;
  v1[v2[8]] = 1;
  swift_beginAccess();
  v13 = *(v3 + 240);
  v14 = *(v13 + 16);

  if (!v14 || (v15 = sub_10009E5F4(*(v0 + 216)), (v16 & 1) == 0))
  {
    v32 = *(v0 + 216);
    swift_endAccess();
    v31 = v32;
LABEL_10:
    sub_100054A78(v31);
    goto LABEL_11;
  }

  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  v40 = *(*(v13 + 56) + 8 * v15);
  swift_endAccess();
  swift_bridgeObjectRetain_n();
  LOBYTE(v17) = sub_10009CCA8(v18, v17, v40);

  if (v17)
  {
    if (qword_10016A3B8 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 208);
    v20 = *(v0 + 216);
    v21 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    sub_100026F50(qword_10016B350, qword_10016B368);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v22 = *(type metadata accessor for LogMessage() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._object = 0x800000010013A900;
    v25._countAndFlagsBits = 0xD00000000000001CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    *(v0 + 40) = v19;
    v26 = sub_100042BAC((v0 + 16));
    sub_100054A14(v20, v26);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 16, &qword_10016AB10, &unk_100130B10);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_1000A3548(v38, v39);

    v28 = *(v0 + 216);
    if (*(v40 + 16))
    {
      swift_beginAccess();
      v29 = *(v3 + 240);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v3 + 240);
      *(v3 + 240) = 0x8000000000000000;
      sub_1000A11F0(v40, v28, isUniquelyReferenced_nonNull_native);
      *(v3 + 240) = v41;
      swift_endAccess();
    }

    else
    {
      v37 = *(v0 + 192);

      swift_beginAccess();
      sub_100097954(v28);
      swift_endAccess();

      swift_beginAccess();
      sub_100097A04(v28);
      swift_endAccess();
    }

    v31 = v28;
    goto LABEL_10;
  }

  sub_100054A78(*(v0 + 216));

LABEL_11:
  v33 = *(v0 + 216);
  v34 = *(v0 + 200);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_10009DEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = type metadata accessor for StorageCategory();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009DF8C, a6, 0);
}

uint64_t sub_10009DF8C()
{
  v1 = *(v0 + 32);
  v2 = sub_100026F50(*(v0 + 16), *(*(v0 + 16) + 24));
  _StringGuts.grow(_:)(35);

  String.append(_:)(v1[7]);
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  *(v0 + 64) = 0xD000000000000020;
  *(v0 + 72) = 0x800000010013C190;
  *(v0 + 80) = *v2;

  return _swift_task_switch(sub_10009E06C, 0, 0);
}

uint64_t sub_10009E06C()
{
  v1 = v0[3];
  v3 = *(v1 + 120);
  v2 = *(v1 + 128);
  (*(v0[6] + 104))(v0[7], enum case for StorageCategory.classC(_:), v0[5]);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10009E158;
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];

  return sub_10009D9D8(v3, v2, v7, v1 + 16, v8, v5);
}

uint64_t sub_10009E158()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v8 = *v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_10009E2CC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10009E3C4;

  return v7(a1);
}

uint64_t sub_10009E3C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10009E4C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A444C;

  return sub_1000BC7E8();
}

unint64_t sub_10009E574(Swift::UInt a1, Swift::UInt a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();

  return sub_1000A18E4(a1, a2, v6);
}

unint64_t sub_10009E5F4(uint64_t *a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_1000535DC();
  v4 = Hasher._finalize()();

  return sub_1000A195C(a1, v4);
}

unint64_t sub_10009E660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  return sub_1000A1C14(a1, a2, a3, a4, v10);
}

unint64_t sub_10009E700(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000A1D14(a1, a2, v6);
}

unint64_t sub_10009E778(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000A1DCC(a1, v4);
}

unint64_t sub_10009E80C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_1000A1ED0(a1, v4);
}

unint64_t sub_10009E850(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000A1F3C(a1, v4);
}

uint64_t sub_10009E894(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100026F94(&qword_10016C478, &unk_1001325E0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v37 = *(*(v5 + 48) + v22);
      v23 = (*(v5 + 56) + v22);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v37);
      Hasher._combine(_:)(*(&v37 + 1));
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      *(*(v8 + 48) + v17) = v37;
      v18 = (*(v8 + 56) + v17);
      *v18 = v24;
      v18[1] = v25;
      ++*(v8 + 16);
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
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

Swift::Int sub_10009EB50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_100026F94(&qword_10016BF68, &qword_100131BD0);
  v12 = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = v12;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = *(v10 + 64);
    v50 = v2;
    v51 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v20 = v12 + 64;
    v21 = v53;
    v52 = v19;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v24 = (v18 - 1) & v18;
LABEL_17:
      v28 = v23 | (v14 << 6);
      v29 = *(v10 + 48);
      v55 = *(v7 + 72);
      v56 = v24;
      v30 = v29 + v55 * v28;
      if (a2)
      {
        sub_100057720(v30, v21);
        v54 = *(*(v10 + 56) + 8 * v28);
      }

      else
      {
        sub_100054A14(v30, v21);
        v54 = *(*(v10 + 56) + 8 * v28);
      }

      v31 = *(v13 + 40);
      Hasher.init(_seed:)();
      v32 = *v21;
      v33 = v21[1];
      String.hash(into:)();
      v34 = v6[5];
      type metadata accessor for StorageCategory();
      sub_1000A3FAC(&qword_10016B550, 255, &type metadata accessor for StorageCategory);
      dispatch thunk of Hashable.hash(into:)();
      v35 = (v21 + v6[6]);
      if (v35[1])
      {
        v36 = v7;
        v37 = v6;
        v38 = v13;
        v39 = a2;
        v40 = v10;
        v41 = *v35;
        Hasher._combine(_:)(1u);
        v10 = v40;
        a2 = v39;
        v13 = v38;
        v6 = v37;
        v7 = v36;
        v21 = v53;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(*(v21 + v6[7]));
      Hasher._combine(_:)(*(v21 + v6[8]));
      result = Hasher._finalize()();
      v42 = -1 << *(v13 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v20 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v20 + 8 * v44);
          if (v48 != -1)
          {
            v22 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v43) & ~*(v20 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_100057720(v21, *(v13 + 48) + v55 * v22);
      *(*(v13 + 56) + 8 * v22) = v54;
      ++*(v13 + 16);
      v19 = v52;
      v18 = v56;
    }

    v25 = v14;
    result = v51;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v51[v14];
      ++v25;
      if (v27)
      {
        v23 = __clz(__rbit64(v27));
        v24 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_39;
    }

    v49 = 1 << *(v10 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v51, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v51 = -1 << v49;
    }

    *(v10 + 16) = 0;
  }

LABEL_39:
  *v3 = v13;
  return result;
}

Swift::Int sub_10009EF74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_100026F94(&qword_10016BF88, &unk_100131BF0);
  v12 = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = v12;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = *(v10 + 64);
    v50 = v2;
    v51 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v20 = v12 + 64;
    v21 = v53;
    v52 = v19;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v24 = (v18 - 1) & v18;
LABEL_17:
      v28 = v23 | (v14 << 6);
      v29 = *(v10 + 48);
      v55 = *(v7 + 72);
      v56 = v24;
      v30 = v29 + v55 * v28;
      if (a2)
      {
        sub_100057720(v30, v21);
        v54 = *(*(v10 + 56) + 8 * v28);
      }

      else
      {
        sub_100054A14(v30, v21);
        v54 = *(*(v10 + 56) + 8 * v28);
      }

      v31 = *(v13 + 40);
      Hasher.init(_seed:)();
      v32 = *v21;
      v33 = v21[1];
      String.hash(into:)();
      v34 = v6[5];
      type metadata accessor for StorageCategory();
      sub_1000A3FAC(&qword_10016B550, 255, &type metadata accessor for StorageCategory);
      dispatch thunk of Hashable.hash(into:)();
      v35 = (v21 + v6[6]);
      if (v35[1])
      {
        v36 = v7;
        v37 = v6;
        v38 = v13;
        v39 = a2;
        v40 = v10;
        v41 = *v35;
        Hasher._combine(_:)(1u);
        v10 = v40;
        a2 = v39;
        v13 = v38;
        v6 = v37;
        v7 = v36;
        v21 = v53;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(*(v21 + v6[7]));
      Hasher._combine(_:)(*(v21 + v6[8]));
      result = Hasher._finalize()();
      v42 = -1 << *(v13 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v20 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v20 + 8 * v44);
          if (v48 != -1)
          {
            v22 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v43) & ~*(v20 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_100057720(v21, *(v13 + 48) + v55 * v22);
      *(*(v13 + 56) + 8 * v22) = v54;
      ++*(v13 + 16);
      v19 = v52;
      v18 = v56;
    }

    v25 = v14;
    result = v51;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v51[v14];
      ++v25;
      if (v27)
      {
        v23 = __clz(__rbit64(v27));
        v24 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_39;
    }

    v49 = 1 << *(v10 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v51, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v51 = -1 << v49;
    }

    *(v10 + 16) = 0;
  }

LABEL_39:
  *v3 = v13;
  return result;
}

Swift::Int sub_10009F398(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  sub_100026F94(&qword_10016BF78, &qword_100131BE0);
  v12 = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = v12;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = *(v10 + 64);
    v50 = v2;
    v51 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v20 = v12 + 64;
    v21 = v53;
    v52 = v19;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v24 = (v18 - 1) & v18;
LABEL_17:
      v28 = v23 | (v14 << 6);
      v29 = *(v10 + 48);
      v55 = *(v7 + 72);
      v56 = v24;
      v30 = v29 + v55 * v28;
      if (a2)
      {
        sub_100057720(v30, v21);
        v54 = *(*(v10 + 56) + 8 * v28);
      }

      else
      {
        sub_100054A14(v30, v21);
        v54 = *(*(v10 + 56) + 8 * v28);
      }

      v31 = *(v13 + 40);
      Hasher.init(_seed:)();
      v32 = *v21;
      v33 = v21[1];
      String.hash(into:)();
      v34 = v6[5];
      type metadata accessor for StorageCategory();
      sub_1000A3FAC(&qword_10016B550, 255, &type metadata accessor for StorageCategory);
      dispatch thunk of Hashable.hash(into:)();
      v35 = (v21 + v6[6]);
      if (v35[1])
      {
        v36 = v7;
        v37 = v6;
        v38 = v13;
        v39 = a2;
        v40 = v10;
        v41 = *v35;
        Hasher._combine(_:)(1u);
        v10 = v40;
        a2 = v39;
        v13 = v38;
        v6 = v37;
        v7 = v36;
        v21 = v53;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(*(v21 + v6[7]));
      Hasher._combine(_:)(*(v21 + v6[8]));
      result = Hasher._finalize()();
      v42 = -1 << *(v13 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v20 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v20 + 8 * v44);
          if (v48 != -1)
          {
            v22 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v43) & ~*(v20 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_100057720(v21, *(v13 + 48) + v55 * v22);
      *(*(v13 + 56) + 8 * v22) = v54;
      ++*(v13 + 16);
      v19 = v52;
      v18 = v56;
    }

    v25 = v14;
    result = v51;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v51[v14];
      ++v25;
      if (v27)
      {
        v23 = __clz(__rbit64(v27));
        v24 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_39;
    }

    v49 = 1 << *(v10 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v51, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v51 = -1 << v49;
    }

    *(v10 + 16) = 0;
  }

LABEL_39:
  *v3 = v13;
  return result;
}

uint64_t sub_10009F7BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100026F94(&qword_10016B5A0, &qword_1001311F8);
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

uint64_t sub_10009FA64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100026F94(&qword_10016BF90, &qword_1001321F0);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
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

uint64_t sub_10009FD24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100026F94(&qword_10016B000, &qword_100131BC0);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = v23[1];
      v39 = *v23;
      v25 = v23[3];
      v38 = v23[2];
      v26 = *(v22 + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
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
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v39;
      v17[1] = v24;
      v17[2] = v38;
      v17[3] = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_10009FFF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100026F94(&qword_10016BF58, &qword_100131BB8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
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
        goto LABEL_35;
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1000A0258(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100026F94(&qword_10016C470, &unk_1001325D0);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
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
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + (v22 << 6);
      if (v42)
      {
        v44 = *v26;
        v43 = *(v26 + 16);
        v46 = *(v26 + 8);
        v47 = *(v26 + 24);
        v45 = *(v26 + 32);
        v48 = *(v26 + 48);
        v49 = *(v26 + 40);
        v27 = *(v26 + 56);
      }

      else
      {
        v28 = *v26;
        v29 = *(v26 + 16);
        v30 = *(v26 + 32);
        *&v51[9] = *(v26 + 41);
        v50[1] = v29;
        *v51 = v30;
        v50[0] = v28;
        v48 = *&v51[16];
        v49 = *(&v30 + 1);
        v27 = v51[24];
        v45 = v30;
        v46 = *(&v28 + 1);
        v47 = *(&v29 + 1);
        v43 = v29;
        v44 = v28;

        sub_100092A0C(v50, v52);
      }

      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v50[0]) = v27;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + (v16 << 6);
      *v18 = v44;
      *(v18 + 8) = v46;
      *(v18 + 16) = v43;
      *(v18 + 24) = v47;
      *(v18 + 32) = v45;
      *(v18 + 40) = v49;
      *(v18 + 48) = v48;
      *(v18 + 56) = v27;
      ++*(v8 + 16);
      v5 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000A05B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100026F94(&qword_10016C468, &unk_100132590);
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

unint64_t sub_1000A0858(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = *(v5 + 72);
    v36 = (v14 + 1) & v13;
    v37 = a2 + 64;
    v35 = v15;
    do
    {
      v16 = v15 * v12;
      sub_100054A14(*(a2 + 48) + v15 * v12, v9);
      v17 = *(a2 + 40);
      Hasher.init(_seed:)();
      v18 = *v9;
      v19 = v9[1];
      String.hash(into:)();
      v20 = v4[5];
      type metadata accessor for StorageCategory();
      sub_1000A3FAC(&qword_10016B550, 255, &type metadata accessor for StorageCategory);
      dispatch thunk of Hashable.hash(into:)();
      v21 = (v9 + v4[6]);
      if (v21[1])
      {
        v22 = a1;
        v23 = a2;
        v24 = v13;
        v25 = *v21;
        Hasher._combine(_:)(1u);
        v13 = v24;
        a2 = v23;
        a1 = v22;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(*(v9 + v4[7]));
      Hasher._combine(_:)(*(v9 + v4[8]));
      v26 = Hasher._finalize()();
      result = sub_100054A78(v9);
      v27 = v26 & v13;
      v10 = v37;
      if (a1 >= v36)
      {
        v15 = v35;
        if (v27 < v36)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v15 = v35;
        if (v27 >= v36)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v27)
      {
LABEL_13:
        v28 = *(a2 + 48);
        result = v28 + v15 * a1;
        if (v15 * a1 < v16 || result >= v28 + v16 + v15)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v15 * a1 != v16)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v29 = *(a2 + 56);
        v30 = (v29 + 8 * a1);
        v31 = (v29 + 8 * v12);
        if (a1 != v12 || v30 >= v31 + 1)
        {
          *v30 = *v31;
          a1 = v12;
        }
      }

LABEL_4:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000A0B84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 32 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v20 = v19[1];
          *v18 = *v19;
          v18[1] = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 8 * v3);
        v23 = (v21 + 8 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

unint64_t sub_1000A0D5C(uint64_t a1, uint64_t a2, Swift::UInt a3, Swift::UInt a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_10009E574(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10009E894(v18, a5 & 1);
      v22 = *v6;
      result = sub_10009E574(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        type metadata accessor for _NSRange(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1000A2004();
      result = v21;
    }
  }

  v24 = *v6;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    v27 = (v24[6] + 16 * result);
    *v27 = a3;
    v27[1] = a4;
    v28 = (v24[7] + 16 * result);
    *v28 = a1;
    v28[1] = a2;
    v29 = v24[2];
    v17 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v17)
    {
      v24[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v25 = (v24[7] + 16 * result);
  v26 = v25[1];
  *v25 = a1;
  v25[1] = a2;
}

uint64_t sub_1000A0ED0(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10009E5F4(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000A2384();
      goto LABEL_7;
    }

    sub_10009EF74(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_10009E5F4(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100054A14(a2, v11);
      return sub_1000A1844(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1000A1060(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10009E5F4(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000A259C();
      goto LABEL_7;
    }

    sub_10009F398(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_10009E5F4(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100054A14(a2, v11);
      return sub_1000A1844(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1000A11F0(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10009E5F4(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000A216C();
      goto LABEL_7;
    }

    sub_10009EB50(v17, a3 & 1);
    v24 = *v4;
    v25 = sub_10009E5F4(a2);
    if ((v18 & 1) == (v26 & 1))
    {
      v14 = v25;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100054A14(a2, v11);
      return sub_1000A1844(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1000A1380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10009E700(a3, a4);
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
      sub_10009FA64(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10009E700(a3, a4);
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
      sub_1000A2924();
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

uint64_t sub_1000A1508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_10009E660(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_10009FD24(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_10009E660(a2, a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1000A2A9C();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 32 * v15);
  *v30 = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a5;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_1000A16B4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10009E700(a2, a3);
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
      sub_1000A0258(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10009E700(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000A2D70();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + (v11 << 6);

    return sub_1000A43B8(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + (v11 << 6));
  v27 = *a1;
  v28 = a1[1];
  v29 = a1[2];
  *(v26 + 41) = *(a1 + 41);
  v26[1] = v28;
  v26[2] = v29;
  *v26 = v27;
  v30 = v22[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v31;
}

uint64_t sub_1000A1844(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  result = sub_100057720(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1000A18E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000A195C(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v2 + 64;
  v27 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v7 + 72);
    v24 = ~v10;
    v25 = v14;
    do
    {
      sub_100054A14(*(v27 + 48) + v25 * v11, v9);
      v15 = *v9 == v12 && v9[1] == v13;
      if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v16 = v5[5];
      type metadata accessor for StorageCategory();
      sub_1000A3FAC(&qword_10016B588, 255, &type metadata accessor for StorageCategory);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v30 == v28 && v31 == v29)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v18 = v5[6];
      v19 = (v9 + v18);
      v20 = *(v9 + v18 + 8);
      v21 = (a1 + v18);
      v22 = v21[1];
      if (v20)
      {
        if (!v22 || (*v19 != *v21 || v20 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v22)
      {
        goto LABEL_4;
      }

      if (*(v9 + v5[7]) == *(a1 + v5[7]) && *(v9 + v5[8]) == *(a1 + v5[8]))
      {
        sub_100054A78(v9);
        return v11;
      }

LABEL_4:
      sub_100054A78(v9);
      v11 = (v11 + 1) & v24;
    }

    while (((*(v26 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1000A1C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1000A1D14(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000A1DCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000A1ED0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000A1F3C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000A419C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000A41F8(v8);
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

void *sub_1000A2004()
{
  v1 = v0;
  sub_100026F94(&qword_10016C478, &unk_1001325E0);
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
        v18 = (*(v2 + 56) + v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_1000A216C()
{
  v1 = v0;
  v2 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026F94(&qword_10016BF68, &qword_100131BD0);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_100054A14(*(v6 + 48) + v22, v5);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_100057720(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_1000A2384()
{
  v1 = v0;
  v2 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026F94(&qword_10016BF88, &unk_100131BF0);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_100054A14(*(v6 + 48) + v22, v5);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_100057720(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_1000A259C()
{
  v1 = v0;
  v2 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026F94(&qword_10016BF78, &qword_100131BE0);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_100054A14(*(v6 + 48) + v22, v5);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_100057720(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_1000A27B4()
{
  v1 = v0;
  sub_100026F94(&qword_10016B5A0, &qword_1001311F8);
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

void *sub_1000A2924()
{
  v1 = v0;
  sub_100026F94(&qword_10016BF90, &qword_1001321F0);
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

void *sub_1000A2A9C()
{
  v1 = v0;
  sub_100026F94(&qword_10016B000, &qword_100131BC0);
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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

void *sub_1000A2C24()
{
  v1 = v0;
  sub_100026F94(&qword_10016BF58, &qword_100131BB8);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000A2D70()
{
  v1 = v0;
  sub_100026F94(&qword_10016C470, &unk_1001325D0);
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[9] = *(v19 + v17 + 41);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 41) = *&v34[9];
        v27[1] = v29;
        v27[2] = v30;
        *v27 = v28;

        result = sub_100092A0C(&v32, &v31);
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

void *sub_1000A2F20()
{
  v1 = v0;
  sub_100026F94(&qword_10016B5A8, &unk_100131200);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000A3064()
{
  v1 = v0;
  sub_100026F94(&qword_10016B560, &qword_1001311D0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

void *sub_1000A31C0()
{
  v1 = v0;
  v2 = type metadata accessor for ForwardDeletionRules();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026F94(&qword_10016B580, &qword_1001311D8);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

id sub_1000A33F8()
{
  v1 = v0;
  sub_100026F94(&qword_10016B590, &qword_1001325A0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_1000A3548(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
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
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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
    sub_1000A3064();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1000A3684(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1000A3684(unint64_t result)
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

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

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

uint64_t sub_1000A3848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v24[3] = type metadata accessor for DatabaseConnectionManagerImplementation();
  v24[4] = &off_100164E98;
  v24[0] = a1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100026EEC(v24, v23);
  sub_1000A3D14(a2, v21);
  v12 = sub_1000A3FAC(&qword_10016C460, v11, type metadata accessor for AccessCredentialDataCleanupTask);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = v12;
  sub_10002C604(v23, v13 + 32);
  v14 = v21[4];
  *(v13 + 152) = v21[5];
  v15 = v21[7];
  *(v13 + 168) = v21[6];
  *(v13 + 184) = v15;
  v16 = v21[0];
  *(v13 + 88) = v21[1];
  v17 = v21[3];
  *(v13 + 104) = v21[2];
  *(v13 + 120) = v17;
  *(v13 + 136) = v14;
  v18 = v22;
  *(v13 + 72) = v16;
  *(v13 + 200) = v18;
  *(v13 + 208) = a3;
  swift_retain_n();

  sub_10009C9B8(0, 0, v9, &unk_100132560, v13);

  return sub_100026FDC(v24);
}

uint64_t sub_1000A3A38(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A588 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016C388);
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

unint64_t sub_1000A3DC4()
{
  result = qword_10016AD30;
  if (!qword_10016AD30)
  {
    sub_10002AD94(&qword_10016AD28, &unk_1001318C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AD30);
  }

  return result;
}

uint64_t sub_1000A3E28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A3E68()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_100026FDC(v0 + 4);
  v2 = v0[10];

  v3 = v0[12];

  v4 = v0[14];

  sub_100026FDC(v0 + 15);
  v5 = v0[21];

  v6 = v0[23];

  v7 = v0[25];

  v8 = v0[26];

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_1000A3EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042680;

  return sub_10009DEC4(a1, v4, v5, (v1 + 4), (v1 + 9), v6);
}

uint64_t sub_1000A3FAC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000A3FF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A402C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000A444C;

  return sub_10009E2CC(a1, v5);
}

uint64_t sub_1000A40E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100042680;

  return sub_10009E2CC(a1, v5);
}

uint64_t getEnumTagSinglePayload for AccessCredentialDataCleanupTask.Config(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessCredentialDataCleanupTask.Config(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000A4450()
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_1000A44B0()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C4A8);
  v1 = sub_10002FD14(v0, qword_10016C4A8);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000A4578(uint64_t a1)
{
  v2[68] = v1;
  v2[67] = a1;
  v3 = sub_100026F94(&qword_10016C450, &unk_1001324B8);
  v2[69] = v3;
  v4 = *(v3 - 8);
  v2[70] = v4;
  v5 = *(v4 + 64) + 15;
  v2[71] = swift_task_alloc();
  v6 = type metadata accessor for Delete();
  v2[72] = v6;
  v7 = *(v6 - 8);
  v2[73] = v7;
  v8 = *(v7 + 64) + 15;
  v2[74] = swift_task_alloc();
  v9 = type metadata accessor for Setter();
  v2[75] = v9;
  v10 = *(v9 - 8);
  v2[76] = v10;
  v11 = *(v10 + 64) + 15;
  v2[77] = swift_task_alloc();
  v12 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v2[78] = v12;
  v13 = *(v12 - 8);
  v2[79] = v13;
  v14 = *(v13 + 64) + 15;
  v2[80] = swift_task_alloc();
  v15 = type metadata accessor for Update();
  v2[81] = v15;
  v16 = *(v15 - 8);
  v2[82] = v16;
  v17 = *(v16 + 64) + 15;
  v2[83] = swift_task_alloc();
  v18 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v2[84] = v18;
  v19 = *(v18 - 8);
  v2[85] = v19;
  v20 = *(v19 + 64) + 15;
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v21 = type metadata accessor for Table();
  v2[88] = v21;
  v22 = *(v21 - 8);
  v2[89] = v22;
  v23 = *(v22 + 64) + 15;
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v24 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v2[92] = swift_task_alloc();
  v25 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[93] = swift_task_alloc();
  v26 = type metadata accessor for OSSignpostID();
  v2[94] = v26;
  v27 = *(v26 - 8);
  v2[95] = v27;
  v28 = *(v27 + 64) + 15;
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[98] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[99] = sub_1000A8F48(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v30 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[100] = v30;
  v2[101] = v29;

  return _swift_task_switch(sub_1000A4A08, v30, v29);
}

uint64_t sub_1000A4A08()
{
  if (qword_10016A598 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 776);
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016C4A8);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 776);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "AppDataCleanupTask.run", "", v6, 2u);
  }

  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v10 = *(v0 + 760);
  v11 = *(v0 + 752);

  (*(v10 + 16))(v9, v8, v11);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 816) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v8, v11);
  if (qword_10016A590 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 744);
  v16 = *(v0 + 544);
  sub_100026F50(qword_10016C480, qword_10016C498);
  *(v0 + 824) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v17 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 832) = *(v17 + 72);
  *(v0 + 1040) = *(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x800000010013C2D0;
  v18._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v19 = *(v16 + 112);
  *(v0 + 840) = v19;
  v20 = *(v16 + 120);
  *(v0 + 848) = v20;
  *(v0 + 296) = &type metadata for String;
  *(v0 + 272) = v19;
  *(v0 + 280) = v20;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 272);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v22 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v23 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v24 = swift_task_alloc();
  *(v0 + 856) = v24;
  *v24 = v0;
  v24[1] = sub_1000A4DA4;
  v25 = *(v0 + 536);

  return BaseObjectGraph.inject<A>(_:)(v0 + 152, v22, v22);
}

uint64_t sub_1000A4DA4()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v4 = *v1;
  *(*v1 + 864) = v0;

  v5 = *(v2 + 808);
  v6 = *(v2 + 800);
  if (v0)
  {
    v7 = sub_1000A7BB0;
  }

  else
  {
    v7 = sub_1000A4EE0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000A4EE0()
{
  v1 = *sub_100026F50(v0 + 19, v0[22]);
  v2 = swift_task_alloc();
  v0[109] = v2;
  *v2 = v0;
  v2[1] = sub_1000A4F7C;

  return sub_10005CC18();
}

uint64_t sub_1000A4F7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 872);
  v6 = *v2;
  *(*v2 + 880) = v1;

  if (v1)
  {
    v7 = v4[101];
    v8 = v4[100];
    v9 = sub_1000A54A8;
  }

  else
  {
    v4[111] = a1;
    v7 = v4[101];
    v8 = v4[100];
    v9 = sub_1000A50AC;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1000A50AC()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 848);
  *(v0 + 464) = *(v0 + 840);
  *(v0 + 472) = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 464;
  LOBYTE(v2) = sub_10008AC28(sub_10002F1A8, v4, v1);

  if (v2)
  {
    v5 = sub_100026F94(&qword_10016C570, &qword_1001326A8);
    v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v7 = swift_task_alloc();
    *(v0 + 896) = v7;
    *v7 = v0;
    v7[1] = sub_1000A56B0;
    v8 = *(v0 + 536);

    return BaseObjectGraph.inject<A>(_:)(v0 + 192, v5, v5);
  }

  else
  {
    v9 = *(v0 + 848);
    v10 = *(v0 + 840);
    v11 = *(v0 + 1040);
    v12 = *(v0 + 832);
    v13 = *(v0 + 824);
    v14 = *(v0 + 744);
    sub_100026F50(qword_10016C480, qword_10016C498);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._object = 0x800000010013C300;
    v15._countAndFlagsBits = 0xD000000000000013;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v0 + 328) = &type metadata for String;
    *(v0 + 304) = v10;
    *(v0 + 312) = v9;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v0 + 304);
    v16._countAndFlagsBits = 0xD000000000000026;
    v16._object = 0x800000010013C320;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 152));
    v17 = *(v0 + 816);
    v18 = *(v0 + 792);
    v19 = *(v0 + 784);
    v20 = *(v0 + 776);
    v21 = *(v0 + 768);
    v22 = *(v0 + 744);
    v23 = *(v0 + 736);
    v29 = *(v0 + 728);
    v30 = *(v0 + 720);
    v31 = *(v0 + 696);
    v32 = *(v0 + 688);
    v33 = *(v0 + 664);
    v34 = *(v0 + 640);
    v35 = *(v0 + 616);
    v36 = *(v0 + 592);
    v37 = *(v0 + 568);
    v24 = *(v0 + 536);
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = v19;
    v26[3] = v18;
    v26[4] = v24;

    sub_10009C9B8(0, 0, v23, &unk_1001326A0, v26);

    sub_1000A8C6C("AppDataCleanupTask.run", 22, 2);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1000A54A8()
{
  sub_100026FDC(v0 + 19);
  v22 = v0[110];
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[93];
  v7 = v0[92];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[83];
  v18 = v0[80];
  v19 = v0[77];
  v20 = v0[74];
  v21 = v0[71];
  v8 = v0[67];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001327D0, v10);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000A56B0()
{
  v2 = *v1;
  v3 = *(*v1 + 896);
  v4 = *v1;
  *(*v1 + 904) = v0;

  v5 = *(v2 + 808);
  v6 = *(v2 + 800);
  if (v0)
  {
    v7 = sub_1000A7DB0;
  }

  else
  {
    v7 = sub_1000A57EC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000A57EC()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  objc_allocWithZone(LSApplicationRecord);

  v4 = sub_1000A8530(v3, v2, 0);
  if (v1)
  {

LABEL_3:
    v5 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v7 = swift_task_alloc();
    *(v0 + 928) = v7;
    *v7 = v0;
    v7[1] = sub_1000A5FF0;
    v8 = *(v0 + 536);

    return BaseObjectGraph.inject<A>(_:)(v0 + 232, v5, v5);
  }

  if (!v4)
  {
    goto LABEL_3;
  }

  v9 = *(v0 + 848);
  v10 = *(v0 + 840);
  v11 = *(v0 + 1040);
  v12 = *(v0 + 832);
  v13 = *(v0 + 824);
  v14 = *(v0 + 744);

  sub_100026F50(qword_10016C480, qword_10016C498);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD00000000000001DLL;
  v15._object = 0x800000010013C3B0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v0 + 456) = &type metadata for String;
  *(v0 + 432) = v10;
  *(v0 + 440) = v9;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 432);
  v16._object = 0x800000010013C3D0;
  v16._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v17 = *sub_100026F50((v0 + 152), *(v0 + 176));
  v18 = swift_task_alloc();
  *(v0 + 912) = v18;
  *v18 = v0;
  v18[1] = sub_1000A5A9C;
  v19 = *(v0 + 848);
  v20 = *(v0 + 840);

  return sub_10005BB70(v20, v19);
}

uint64_t sub_1000A5A9C()
{
  v2 = *v1;
  v3 = *(*v1 + 912);
  v4 = *v1;
  *(*v1 + 920) = v0;

  v5 = *(v2 + 808);
  v6 = *(v2 + 800);
  if (v0)
  {
    v7 = sub_1000A5DE0;
  }

  else
  {
    v7 = sub_1000A5BD8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000A5BD8()
{
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[93];
  v7 = v0[92];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[83];
  v18 = v0[80];
  v19 = v0[77];
  v20 = v0[74];
  v21 = v0[71];
  v8 = v0[67];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_100132710, v10);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000A5DE0()
{
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v22 = v0[115];
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[93];
  v7 = v0[92];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[83];
  v18 = v0[80];
  v19 = v0[77];
  v20 = v0[74];
  v21 = v0[71];
  v8 = v0[67];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_100132708, v10);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000A5FF0()
{
  v2 = *v1;
  v3 = *(*v1 + 928);
  v4 = *v1;
  *(*v1 + 936) = v0;

  v5 = *(v2 + 808);
  v6 = *(v2 + 800);
  if (v0)
  {
    v7 = sub_1000A7FB8;
  }

  else
  {
    v7 = sub_1000A612C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000A612C()
{
  v1 = *sub_100026F50(v0 + 19, v0[22]);
  v2 = swift_task_alloc();
  v0[118] = v2;
  *v2 = v0;
  v2[1] = sub_1000A61D4;
  v3 = v0[106];
  v4 = v0[105];

  return sub_10006015C(v4, v3);
}

uint64_t sub_1000A61D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 944);
  v6 = *v2;
  *(v4 + 952) = a1;
  *(v4 + 960) = v1;

  v7 = *(v3 + 808);
  v8 = *(v3 + 800);
  if (v1)
  {
    v9 = sub_1000A65D0;
  }

  else
  {
    v9 = sub_1000A631C;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1000A631C()
{
  result = *(v0 + 952);
  v2 = *(result + 16);
  *(v0 + 968) = v2;
  if (v2)
  {
    *(v0 + 976) = 0;
    if (*(result + 16))
    {
      v3 = *(v0 + 1040);
      v4 = *(v0 + 832);
      v5 = *(v0 + 824);
      v6 = *(v0 + 744);
      sub_1000A3D14(result + 32, v0 + 16);
      sub_100026F50(qword_10016C480, qword_10016C498);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v7._object = 0x800000010013C350;
      v7._countAndFlagsBits = 0xD000000000000021;
      LogMessage.StringInterpolation.appendLiteral(_:)(v7);
      v9 = *(v0 + 120);
      v8 = *(v0 + 128);
      *(v0 + 984) = v9;
      *(v0 + 992) = v8;
      *(v0 + 360) = &type metadata for String;
      *(v0 + 336) = v9;
      *(v0 + 344) = v8;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002D504(v0 + 336);
      v10._countAndFlagsBits = 0x203A6E69202CLL;
      v10._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v10);
      v12 = *(v0 + 136);
      v11 = *(v0 + 144);
      *(v0 + 392) = &type metadata for String;
      *(v0 + 368) = v12;
      *(v0 + 376) = v11;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002D504(v0 + 368);
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v13);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v14 = *sub_100026F50((v0 + 232), *(v0 + 256));
      v15 = swift_task_alloc();
      *(v0 + 1000) = v15;
      *v15 = v0;
      v15[1] = sub_1000A67E8;
      v16 = *(v0 + 848);
      v17 = *(v0 + 840);

      return sub_10009D2E4(v0 + 16, v17, v16);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v18 = *sub_100026F50((v0 + 152), *(v0 + 176));
    v19 = swift_task_alloc();
    *(v0 + 1024) = v19;
    *v19 = v0;
    v19[1] = sub_1000A7568;
    v20 = *(v0 + 848);
    v21 = *(v0 + 840);

    return sub_10005BB70(v21, v20);
  }

  return result;
}

uint64_t sub_1000A65D0()
{
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 19);
  v22 = v0[120];
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[93];
  v7 = v0[92];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[83];
  v18 = v0[80];
  v19 = v0[77];
  v20 = v0[74];
  v21 = v0[71];
  v8 = v0[67];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_100132AD0, v10);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000A67E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1000);
  v10 = *v2;
  v3[126] = a1;
  v3[127] = v1;

  if (v1)
  {
    v5 = v3[119];

    v6 = v3[101];
    v7 = v3[100];
    v8 = sub_1000A81C8;
  }

  else
  {
    v6 = v3[101];
    v7 = v3[100];
    v8 = sub_1000A6910;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000A6910()
{
  v99 = *(v0 + 1008);
  v103 = *(v0 + 1016);
  v1 = *(v0 + 992);
  v2 = *(v0 + 984);
  v3 = *(v0 + 848);
  v4 = *(v0 + 840);
  v85 = v3;
  v5 = *(v0 + 728);
  v105 = *(v0 + 720);
  v111 = *(v0 + 712);
  v86 = *(v0 + 704);
  v6 = *(v0 + 696);
  v89 = *(v0 + 688);
  v109 = *(v0 + 680);
  v7 = *(v0 + 672);
  v8 = *(v0 + 640);
  v9 = *(v0 + 632);
  v87 = *(v0 + 624);
  v91 = *(v0 + 616);
  v93 = *(v0 + 664);
  v95 = *(v0 + 608);
  v97 = *(v0 + 600);

  Table.init(_:database:)();
  static Connection.ServiceColumns.bundleIds.getter();
  *(v0 + 480) = 47;
  *(v0 + 488) = 0xE100000000000000;
  v10._countAndFlagsBits = v4;
  v10._object = v3;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 47;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = *(v0 + 480);
  v13 = *(v0 + 488);
  sub_1000A3DC4();
  ExpressionType<>.like(_:escape:)();

  sub_1000A8F48(&qword_10016AD20, 255, &type metadata accessor for Table);
  QueryType.where(_:)();
  v84 = *(v9 + 8);
  v84(v8, v87);
  *(v0 + 496) = 47;
  *(v0 + 504) = 0xE100000000000000;
  v14._countAndFlagsBits = v4;
  v14._object = v85;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 47;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16 = *(v0 + 496);
  v17 = *(v0 + 504);
  ExpressionType<>.replace(_:with:)();

  <- infix<A>(_:_:)();
  v18 = *(v109 + 8);
  v18(v89, v7);
  QueryType.update(_:_:)();
  (*(v95 + 8))(v91, v97);
  v19 = *(v111 + 8);
  v19(v105, v86);
  Connection.run(_:)();
  v20 = *(v0 + 704);
  v106 = *(v0 + 696);
  if (v103)
  {
    v100 = *(v0 + 704);
    v21 = *(v0 + 1008);
    v22 = *(v0 + 952);
    v23 = *(v0 + 728);
    v24 = *(v0 + 672);
    v25 = *(v0 + 664);
    v26 = *(v0 + 656);
    v27 = v19;
    v28 = *(v0 + 648);
    v29 = *(v0 + 544);

    (*(v26 + 8))(v25, v28);
    v18(v106, v24);
    v27(v23, v100);
    v38 = sub_100026F50((v0 + 232), *(v0 + 256));
    sub_1000A8A3C(*v38, v0 + 16, v29);

    sub_1000A3D70(v0 + 16);
    sub_100026FDC((v0 + 192));
    sub_100026FDC((v0 + 232));
    sub_100026FDC((v0 + 152));
    v39 = *(v0 + 816);
    v40 = *(v0 + 792);
    v41 = *(v0 + 784);
    v42 = *(v0 + 776);
    v43 = *(v0 + 768);
    v44 = *(v0 + 744);
    v45 = *(v0 + 736);
    v88 = *(v0 + 728);
    v90 = *(v0 + 720);
    v92 = *(v0 + 696);
    v94 = *(v0 + 688);
    v96 = *(v0 + 664);
    v98 = *(v0 + 640);
    v102 = *(v0 + 616);
    v108 = *(v0 + 592);
    v110 = *(v0 + 568);
    v46 = *(v0 + 536);
    v47 = type metadata accessor for TaskPriority();
    (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
    v48 = swift_allocObject();
    v48[2] = v41;
    v48[3] = v40;
    v48[4] = v46;

    sub_10009C9B8(0, 0, v45, &unk_1001326D8, v48);

    sub_1000A8C6C("AppDataCleanupTask.run", 22, 2);

    v49 = *(v0 + 8);

    return v49();
  }

  else
  {
    v101 = v18;
    v104 = *(v0 + 1008);
    v30 = *(v0 + 728);
    v31 = *(v0 + 720);
    v32 = *(v0 + 640);
    v33 = *(v0 + 624);
    v34 = *(v0 + 592);
    (*(*(v0 + 656) + 8))(*(v0 + 664), *(v0 + 648));
    *(v0 + 512) = 0;
    *(v0 + 520) = 0xE000000000000000;
    static Expression<A>.== infix<A>(_:_:)();
    QueryType.where(_:)();
    v84(v32, v33);
    QueryType.delete()();
    v19(v31, v20);
    Connection.run(_:)();
    v107 = *(v0 + 1008);
    v35 = *(v0 + 728);
    v36 = *(v0 + 704);
    v37 = *(v0 + 568);
    (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));
    sub_1000A8F48(&qword_10016AD68, 255, &type metadata accessor for Table);
    SchemaType.count.getter();
    Connection.scalar<A>(_:)();
    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
    if (!*(v0 + 528))
    {
      v80 = *(v0 + 1008);
      v81 = *(v0 + 728);
      v82 = *(v0 + 704);
      v83 = default argument 0 of SchemaType.drop(ifExists:)();
      SchemaType.drop(ifExists:)(v83 & 1);
      Connection.run(_:_:)();
    }

    v51 = *(v0 + 1008);
    v52 = *(v0 + 968);
    v53 = *(v0 + 728);
    v54 = *(v0 + 704);
    v55 = *(v0 + 544);
    v56 = *(v0 + 976) + 1;
    v101(*(v0 + 696), *(v0 + 672));
    v19(v53, v54);
    v57 = sub_100026F50((v0 + 232), *(v0 + 256));
    sub_1000A8A3C(*v57, v0 + 16, v55);

    result = sub_1000A3D70(v0 + 16);
    if (v56 == v52)
    {
      v58 = *(v0 + 952);

      v59 = *sub_100026F50((v0 + 152), *(v0 + 176));
      v60 = swift_task_alloc();
      *(v0 + 1024) = v60;
      *v60 = v0;
      v60[1] = sub_1000A7568;
      v61 = *(v0 + 848);
      v62 = *(v0 + 840);

      return sub_10005BB70(v62, v61);
    }

    else
    {
      v63 = *(v0 + 976) + 1;
      *(v0 + 976) = v63;
      v64 = *(v0 + 952);
      if (v63 >= *(v64 + 16))
      {
        __break(1u);
      }

      else
      {
        v65 = *(v0 + 1040);
        v66 = *(v0 + 832);
        v67 = *(v0 + 824);
        v68 = *(v0 + 744);
        sub_1000A3D14(v64 + 136 * v63 + 32, v0 + 16);
        sub_100026F50(qword_10016C480, qword_10016C498);
        *(swift_allocObject() + 16) = xmmword_10012FA10;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v69._object = 0x800000010013C350;
        v69._countAndFlagsBits = 0xD000000000000021;
        LogMessage.StringInterpolation.appendLiteral(_:)(v69);
        v71 = *(v0 + 120);
        v70 = *(v0 + 128);
        *(v0 + 984) = v71;
        *(v0 + 992) = v70;
        *(v0 + 360) = &type metadata for String;
        *(v0 + 336) = v71;
        *(v0 + 344) = v70;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002D504(v0 + 336);
        v72._countAndFlagsBits = 0x203A6E69202CLL;
        v72._object = 0xE600000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v72);
        v74 = *(v0 + 136);
        v73 = *(v0 + 144);
        *(v0 + 392) = &type metadata for String;
        *(v0 + 368) = v74;
        *(v0 + 376) = v73;

        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002D504(v0 + 368);
        v75._countAndFlagsBits = 0;
        v75._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v75);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        v76 = *sub_100026F50((v0 + 232), *(v0 + 256));
        v77 = swift_task_alloc();
        *(v0 + 1000) = v77;
        *v77 = v0;
        v77[1] = sub_1000A67E8;
        v78 = *(v0 + 848);
        v79 = *(v0 + 840);

        return sub_10009D2E4(v0 + 16, v79, v78);
      }
    }
  }

  return result;
}

uint64_t sub_1000A7568()
{
  v2 = *v1;
  v3 = *(*v1 + 1024);
  v4 = *v1;
  *(*v1 + 1032) = v0;

  v5 = *(v2 + 808);
  v6 = *(v2 + 800);
  if (v0)
  {
    v7 = sub_1000A76A4;
  }

  else
  {
    v7 = sub_1000A78BC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000A76A4()
{
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 19);
  v22 = v0[129];
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[93];
  v7 = v0[92];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[83];
  v18 = v0[80];
  v19 = v0[77];
  v20 = v0[74];
  v21 = v0[71];
  v8 = v0[67];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001326F8, v10);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000A78BC()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 840);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  v6 = *(v0 + 744);
  sub_100026F50(qword_10016C480, qword_10016C498);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013C380;
  v7._countAndFlagsBits = 0xD00000000000002CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  *(v0 + 424) = &type metadata for String;
  *(v0 + 400) = v2;
  *(v0 + 408) = v1;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 400);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 192));
  sub_100026FDC((v0 + 232));
  sub_100026FDC((v0 + 152));
  v9 = *(v0 + 816);
  v10 = *(v0 + 792);
  v11 = *(v0 + 784);
  v12 = *(v0 + 776);
  v13 = *(v0 + 768);
  v14 = *(v0 + 744);
  v15 = *(v0 + 736);
  v21 = *(v0 + 728);
  v22 = *(v0 + 720);
  v23 = *(v0 + 696);
  v24 = *(v0 + 688);
  v25 = *(v0 + 664);
  v26 = *(v0 + 640);
  v27 = *(v0 + 616);
  v28 = *(v0 + 592);
  v29 = *(v0 + 568);
  v16 = *(v0 + 536);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v10;
  v18[4] = v16;

  sub_10009C9B8(0, 0, v15, &unk_100132700, v18);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000A7BB0()
{
  v22 = v0[108];
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[93];
  v7 = v0[92];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[83];
  v18 = v0[80];
  v19 = v0[77];
  v20 = v0[74];
  v21 = v0[71];
  v8 = v0[67];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001324D0, v10);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000A7DB0()
{
  sub_100026FDC(v0 + 19);
  v22 = v0[113];
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[93];
  v7 = v0[92];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[83];
  v18 = v0[80];
  v19 = v0[77];
  v20 = v0[74];
  v21 = v0[71];
  v8 = v0[67];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001326B0, v10);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000A7FB8()
{
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v22 = v0[117];
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[93];
  v7 = v0[92];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[83];
  v18 = v0[80];
  v19 = v0[77];
  v20 = v0[74];
  v21 = v0[71];
  v8 = v0[67];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001326C0, v10);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000A81C8()
{
  sub_1000A3D70((v0 + 2));
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 19);
  v22 = v0[127];
  v1 = v0[102];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[93];
  v7 = v0[92];
  v13 = v0[91];
  v14 = v0[90];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[83];
  v18 = v0[80];
  v19 = v0[77];
  v20 = v0[74];
  v21 = v0[71];
  v8 = v0[67];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001326D0, v10);

  sub_1000A8C6C("AppDataCleanupTask.run", 22, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000A840C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042680;

  return sub_1000A4578(a1);
}

uint64_t sub_1000A84A4()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);

  return v1;
}

uint64_t sub_1000A84D8(uint64_t a1, uint64_t a2)
{
  result = sub_1000A8F48(&qword_10016C568, a2, type metadata accessor for AppDataCleanupTask);
  *(a1 + 8) = result;
  return result;
}

id sub_1000A8530(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void sub_1000A860C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000A8618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for StorageCategory();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_1000A8F48(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A876C, v11, v10);
}

uint64_t sub_1000A876C()
{
  v1 = *(v0 + 32);
  v2 = sub_100026F50(*(v0 + 16), *(*(v0 + 16) + 24));
  *(v0 + 64) = *(v1 + 112);
  *(v0 + 72) = *(v1 + 120);
  *(v0 + 80) = *v2;

  return _swift_task_switch(sub_1000A87F4, 0, 0);
}

uint64_t sub_1000A87F4()
{
  v1 = v0[3];
  v3 = *(v1 + 120);
  v2 = *(v1 + 128);
  (*(v0[6] + 104))(v0[7], enum case for StorageCategory.classC(_:), v0[5]);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1000A88E0;
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];

  return sub_10009D9D8(v3, v2, v7, v1 + 16, v8, v5);
}

uint64_t sub_1000A88E0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000A8A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - v8;
  v25[3] = type metadata accessor for DatabaseConnectionManagerImplementation();
  v25[4] = &off_100164E98;
  v25[0] = a1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100026EEC(v25, v24);
  sub_1000A3D14(a2, v22);
  v11 = qword_10016A6C8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_1001738A8;
  v13 = sub_1000A8F48(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  sub_10002C604(v24, v14 + 32);
  v15 = v22[4];
  *(v14 + 152) = v22[5];
  v16 = v22[7];
  *(v14 + 168) = v22[6];
  *(v14 + 184) = v16;
  v17 = v22[0];
  *(v14 + 88) = v22[1];
  v18 = v22[3];
  *(v14 + 104) = v22[2];
  *(v14 + 120) = v18;
  *(v14 + 136) = v15;
  v19 = v23;
  *(v14 + 72) = v17;
  *(v14 + 200) = v19;
  *(v14 + 208) = a3;

  sub_10009C9B8(0, 0, v9, &unk_100132720, v14);

  return sub_100026FDC(v25);
}

uint64_t sub_1000A8C6C(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A598 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016C4A8);
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

uint64_t sub_1000A8F48(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000A8F90()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_100026FDC(v0 + 4);
  v2 = v0[10];

  v3 = v0[12];

  v4 = v0[14];

  sub_100026FDC(v0 + 15);
  v5 = v0[21];

  v6 = v0[23];

  v7 = v0[25];

  v8 = v0[26];

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_1000A9010(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042680;

  return sub_1000A8618(a1, v4, v5, (v1 + 4), (v1 + 9), v6);
}

uint64_t sub_1000A910C()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C578);
  v1 = sub_10002FD14(v0, qword_10016C578);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000A91F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_1000A9604(a1);
}

uint64_t sub_1000A92D0(uint64_t a1, uint64_t a2)
{
  result = sub_1000ABADC(&qword_10016C630, a2, type metadata accessor for CheckInstalledAppsTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A9328(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A5A0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016C578);
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

uint64_t sub_1000A9604(uint64_t a1)
{
  v1[28] = a1;
  v2 = type metadata accessor for ForwardDeletionRules();
  v1[29] = v2;
  v3 = *(v2 - 8);
  v1[30] = v3;
  v4 = *(v3 + 64) + 15;
  v1[31] = swift_task_alloc();
  v5 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v1[33] = v6;
  v7 = *(v6 - 8);
  v1[34] = v7;
  v8 = *(v7 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v1[37] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v1[38] = sub_1000ABADC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[39] = v9;
  v1[40] = v10;

  return _swift_task_switch(sub_1000A9830, v9, v10);
}

uint64_t sub_1000A9830()
{
  if (qword_10016A5A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016C578);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 288);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "CheckInstalledAppsTask.run", "", v6, 2u);
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 288);
  v10 = *(v0 + 264);
  v11 = *(v0 + 272);

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 328) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v0 + 336) = qword_100173878;
  TaskLocal.get()();
  v15 = *(v0 + 48);
  sub_100026F50((v0 + 16), *(v0 + 40));
  *(v0 + 344) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v16 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 352) = *(v16 + 72);
  *(v0 + 512) = *(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 16));
  v17 = sub_100026F94(&qword_10016C458, &qword_1001324C8);
  v18 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v19 = swift_task_alloc();
  *(v0 + 360) = v19;
  *v19 = v0;
  v19[1] = sub_1000A9BA0;
  v20 = *(v0 + 224);

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v17, v17);
}

uint64_t sub_1000A9BA0()
{
  v2 = *(*v1 + 360);
  v3 = *v1;
  v3[46] = v0;

  if (v0)
  {
    v4 = v3[39];
    v5 = v3[40];

    return _swift_task_switch(sub_1000AB5E4, v4, v5);
  }

  else
  {
    v6 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v8 = swift_task_alloc();
    v3[47] = v8;
    *v8 = v3;
    v8[1] = sub_1000A9D84;
    v9 = v3[28];

    return BaseObjectGraph.inject<A>(_:)(v3 + 12, v6, v6);
  }
}

uint64_t sub_1000A9D84()
{
  v2 = *(*v1 + 376);
  v3 = *v1;
  v3[48] = v0;

  if (v0)
  {
    v4 = v3[39];
    v5 = v3[40];

    return _swift_task_switch(sub_1000AB784, v4, v5);
  }

  else
  {
    v6 = sub_100026F94(&qword_10016C570, &qword_1001326A8);
    v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v8 = swift_task_alloc();
    v3[49] = v8;
    *v8 = v3;
    v8[1] = sub_1000A9F68;
    v9 = v3[28];

    return BaseObjectGraph.inject<A>(_:)(v3 + 17, v6, v6);
  }
}

uint64_t sub_1000A9F68()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 320);
  v6 = *(v2 + 312);
  if (v0)
  {
    v7 = sub_1000AB92C;
  }

  else
  {
    v7 = sub_1000AA0D0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000AA0D0()
{
  v1 = *sub_100026F50(v0 + 7, v0[10]);
  v2 = swift_task_alloc();
  v0[51] = v2;
  *v2 = v0;
  v2[1] = sub_1000AA198;

  return sub_100038FC0();
}

uint64_t sub_1000AA198(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;

  v7 = *(v3 + 320);
  v8 = *(v3 + 312);
  if (v1)
  {
    v9 = sub_1000AA848;
  }

  else
  {
    v9 = sub_1000AA308;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1000AA308()
{
  v1 = *(v0 + 416);
  v2 = v1[2];
  *(v0 + 432) = v2;
  if (v2)
  {
    *(v0 + 516) = *(*(v0 + 240) + 80);
    *(v0 + 440) = 0;
    if (v1[2])
    {
      v3 = 0;
      while (1)
      {
        (*(*(v0 + 240) + 16))(*(v0 + 248), v1 + ((*(v0 + 516) + 32) & ~*(v0 + 516)) + *(*(v0 + 240) + 72) * v3, *(v0 + 232));
        v1 = ForwardDeletionRules.bundleIds.getter();
        *(v0 + 448) = v1;
        v4 = v1[2];
        *(v0 + 456) = v4;
        if (v4)
        {
          break;
        }

        v6 = *(v0 + 432);
        v5 = *(v0 + 440);
        v8 = *(v0 + 240);
        v7 = *(v0 + 248);
        v9 = *(v0 + 232);

        (*(v8 + 8))(v7, v9);
        if (v5 + 1 == v6)
        {
          v20 = *(v0 + 416);
          goto LABEL_14;
        }

        v3 = *(v0 + 440) + 1;
        *(v0 + 440) = v3;
        v1 = *(v0 + 416);
        if (v3 >= v1[2])
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      __break(1u);
    }

    *(v0 + 464) = 0;
    if (!v1[2])
    {
      __break(1u);
    }

    v11 = v1[4];
    v10 = v1[5];
    *(v0 + 472) = v10;
    v12 = objc_allocWithZone(LSApplicationRecord);

    v13 = String._bridgeToObjectiveC()();
    *(v0 + 216) = 0;
    v14 = [v12 initWithBundleIdentifier:v13 allowPlaceholder:0 error:v0 + 216];

    v15 = *(v0 + 216);
    if (v14)
    {
      v16 = v15;

      v17 = *sub_100026F50((v0 + 96), *(v0 + 120));
      v18 = swift_task_alloc();
      *(v0 + 496) = v18;
      *v18 = v0;
      v18[1] = sub_1000AAB84;

      return sub_10005BB70(v11, v10);
    }

    else
    {
      v31 = *(v0 + 248);
      v32 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v33 = sub_100026F50((v0 + 96), *(v0 + 120));
      ForwardDeletionRules.retentionInterval.getter();
      v35 = v34;
      v36 = *v33;
      v37 = swift_task_alloc();
      *(v0 + 480) = v37;
      *v37 = v0;
      v37[1] = sub_1000AAA00;

      return sub_100058A70(v11, v10, v35);
    }
  }

  else
  {
LABEL_14:

    v21 = *(v0 + 512);
    v23 = *(v0 + 344);
    v22 = *(v0 + 352);
    v24 = *(v0 + 336);
    v39 = *(v0 + 304);
    v40 = *(v0 + 328);
    v38 = *(v0 + 296);
    v41 = *(v0 + 288);
    v42 = *(v0 + 280);
    v25 = *(v0 + 256);
    v43 = *(v0 + 248);
    v26 = *(v0 + 224);
    TaskLocal.get()();
    v27 = *(v0 + 208);
    sub_100026F50((v0 + 176), *(v0 + 200));
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 136));
    sub_100026FDC((v0 + 176));
    sub_100026FDC((v0 + 96));
    sub_100026FDC((v0 + 56));
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = v38;
    v29[3] = v39;
    v29[4] = v26;

    sub_10009C9B8(0, 0, v25, &unk_1001327E8, v29);

    sub_1000A9328("CheckInstalledAppsTask.run", 26, 2);

    v30 = *(v0 + 8);

    return v30();
  }
}

void sub_1000AA83C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __break(1u);
}

uint64_t sub_1000AA848()
{
  sub_100026FDC(v0 + 17);
  sub_100026FDC(v0 + 12);
  sub_100026FDC(v0 + 7);
  v13 = v0[53];
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[28];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001326B0, v10);

  sub_1000A9328("CheckInstalledAppsTask.run", 26, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000AAA00()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  v2[61] = v0;

  v5 = v2[59];
  if (v0)
  {
    v6 = v2[56];
    v7 = v2[52];

    v8 = v2[39];
    v9 = v2[40];
    v10 = sub_1000AB414;
  }

  else
  {

    v8 = v2[39];
    v9 = v2[40];
    v10 = sub_1000ABBF4;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1000AAB84()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;
  v2[63] = v0;

  v5 = v2[59];
  if (v0)
  {
    v6 = v2[56];
    v7 = v2[52];

    v8 = v2[39];
    v9 = v2[40];
    v10 = sub_1000AB244;
  }

  else
  {

    v8 = v2[39];
    v9 = v2[40];
    v10 = sub_1000AAD08;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_1000AAD08()
{
  v1 = *(v0 + 464) + 1;
  if (v1 == *(v0 + 456))
  {
    v2 = *(v0 + 448);
    while (1)
    {
      v4 = *(v0 + 432);
      v3 = *(v0 + 440);
      v6 = *(v0 + 240);
      v5 = *(v0 + 248);
      v7 = *(v0 + 232);

      (*(v6 + 8))(v5, v7);
      if (v3 + 1 == v4)
      {
        break;
      }

      v8 = *(v0 + 440) + 1;
      *(v0 + 440) = v8;
      v9 = *(v0 + 416);
      if (v8 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      (*(*(v0 + 240) + 16))(*(v0 + 248), v9 + ((*(v0 + 516) + 32) & ~*(v0 + 516)) + *(*(v0 + 240) + 72) * v8, *(v0 + 232));
      v10 = ForwardDeletionRules.bundleIds.getter();
      *(v0 + 448) = v10;
      v11 = *(v10 + 16);
      *(v0 + 456) = v11;
      if (v11)
      {
        v1 = 0;
        goto LABEL_8;
      }
    }

    v30 = *(v0 + 416);

    v31 = *(v0 + 512);
    v33 = *(v0 + 344);
    v32 = *(v0 + 352);
    v34 = *(v0 + 336);
    v42 = *(v0 + 304);
    v43 = *(v0 + 328);
    v41 = *(v0 + 296);
    v44 = *(v0 + 288);
    v45 = *(v0 + 280);
    v35 = *(v0 + 256);
    v46 = *(v0 + 248);
    v36 = *(v0 + 224);
    TaskLocal.get()();
    v37 = *(v0 + 208);
    sub_100026F50((v0 + 176), *(v0 + 200));
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 136));
    sub_100026FDC((v0 + 176));
    sub_100026FDC((v0 + 96));
    sub_100026FDC((v0 + 56));
    v38 = type metadata accessor for TaskPriority();
    (*(*(v38 - 8) + 56))(v35, 1, 1, v38);
    v39 = swift_allocObject();
    v39[2] = v41;
    v39[3] = v42;
    v39[4] = v36;

    sub_10009C9B8(0, 0, v35, &unk_1001327E8, v39);

    sub_1000A9328("CheckInstalledAppsTask.run", 26, 2);

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v10 = *(v0 + 448);
LABEL_8:
    *(v0 + 464) = v1;
    if (v1 >= *(v10 + 16))
    {
LABEL_20:
      __break(1u);
    }

    v12 = v10 + 16 * v1;
    v14 = *(v12 + 32);
    v13 = *(v12 + 40);
    *(v0 + 472) = v13;
    v15 = objc_allocWithZone(LSApplicationRecord);

    v16 = String._bridgeToObjectiveC()();
    *(v0 + 216) = 0;
    v17 = [v15 initWithBundleIdentifier:v16 allowPlaceholder:0 error:v0 + 216];

    v18 = *(v0 + 216);
    if (v17)
    {
      v19 = v18;

      v20 = *sub_100026F50((v0 + 96), *(v0 + 120));
      v21 = swift_task_alloc();
      *(v0 + 496) = v21;
      *v21 = v0;
      v21[1] = sub_1000AAB84;

      return sub_10005BB70(v14, v13);
    }

    else
    {
      v23 = *(v0 + 248);
      v24 = v18;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v25 = sub_100026F50((v0 + 96), *(v0 + 120));
      ForwardDeletionRules.retentionInterval.getter();
      v27 = v26;
      v28 = *v25;
      v29 = swift_task_alloc();
      *(v0 + 480) = v29;
      *v29 = v0;
      v29[1] = sub_1000AAA00;

      return sub_100058A70(v14, v13, v27);
    }
  }
}

void sub_1000AB238(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __break(1u);
}

uint64_t sub_1000AB244()
{
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_100026FDC(v0 + 17);
  sub_100026FDC(v0 + 12);
  sub_100026FDC(v0 + 7);
  v13 = v0[63];
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[28];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001326D0, v10);

  sub_1000A9328("CheckInstalledAppsTask.run", 26, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000AB414()
{
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_100026FDC(v0 + 17);
  sub_100026FDC(v0 + 12);
  sub_100026FDC(v0 + 7);
  v13 = v0[61];
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[28];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001326C0, v10);

  sub_1000A9328("CheckInstalledAppsTask.run", 26, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000AB5E4()
{
  v13 = v0[46];
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[28];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001324D0, v10);

  sub_1000A9328("CheckInstalledAppsTask.run", 26, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000AB784()
{
  sub_100026FDC(v0 + 7);
  v13 = v0[48];
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[28];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001327D0, v10);

  sub_1000A9328("CheckInstalledAppsTask.run", 26, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000AB92C()
{
  sub_100026FDC(v0 + 12);
  sub_100026FDC(v0 + 7);
  v13 = v0[50];
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v6 = v0[31];
  v7 = v0[32];
  v8 = v0[28];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001327E0, v10);

  sub_1000A9328("CheckInstalledAppsTask.run", 26, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000ABADC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000ABB28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100042680;

  return sub_1000BC7E8();
}

uint64_t sub_1000ABBF4()
{

  return sub_1000AAD08();
}

uint64_t sub_1000ABC68()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C638);
  v1 = sub_10002FD14(v0, qword_10016C638);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000ABD54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_1000AC130(a1);
}

uint64_t sub_1000ABDFC(uint64_t a1, uint64_t a2)
{
  result = sub_1000ACE00(&qword_10016C6F0, a2, type metadata accessor for CheckInvalidAccessCredentialsTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000ABE54(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A5A8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016C638);
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

uint64_t sub_1000AC130(uint64_t a1)
{
  v1[17] = a1;
  v2 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v1[19] = v3;
  v4 = *(v3 - 8);
  v1[20] = v4;
  v5 = *(v4 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v1[23] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v1[24] = sub_1000ACE00(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[25] = v7;
  v1[26] = v6;

  return _swift_task_switch(sub_1000AC2CC, v7, v6);
}

uint64_t sub_1000AC2CC()
{
  if (qword_10016A5A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016C638);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "CheckInvalidAccessCredentialsTask.run", "", v6, 2u);
  }

  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  v10 = *(v0 + 152);
  v11 = *(v0 + 160);

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 216) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v0 + 224) = qword_100173878;
  TaskLocal.get()();
  v15 = *(v0 + 48);
  sub_100026F50((v0 + 16), *(v0 + 40));
  *(v0 + 232) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v16 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 240) = *(v16 + 72);
  *(v0 + 280) = *(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 16));
  v17 = sub_100026F94(&qword_10016C458, &qword_1001324C8);
  v18 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v19 = swift_task_alloc();
  *(v0 + 248) = v19;
  *v19 = v0;
  v19[1] = sub_1000AC610;
  v20 = *(v0 + 136);

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v17, v17);
}

uint64_t sub_1000AC610()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_1000ACCA0;
  }

  else
  {
    v7 = sub_1000AC74C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000AC74C()
{
  v1 = *sub_100026F50(v0 + 7, v0[10]);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_1000AC7F0;
  v3 = v0[17];

  return sub_100034D04(v3);
}

uint64_t sub_1000AC7F0()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 200);
  if (v0)
  {
    v7 = sub_1000AC92C;
  }

  else
  {
    v7 = sub_1000ACA94;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000AC92C()
{
  sub_100026FDC(v0 + 7);
  v1 = v0[34];
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  v8 = v0[17];
  v7 = v0[18];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001327D0, v10);

  sub_1000ABE54("CheckInvalidAccessCredentialsTask.run", 37, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000ACA94()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  v13 = *(v0 + 192);
  v14 = *(v0 + 216);
  v12 = *(v0 + 184);
  v15 = *(v0 + 176);
  v16 = *(v0 + 168);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  TaskLocal.get()();
  v7 = *(v0 + 128);
  sub_100026F50((v0 + 96), *(v0 + 120));
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 96));
  sub_100026FDC((v0 + 56));
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = v12;
  v9[3] = v13;
  v9[4] = v6;

  sub_10009C9B8(0, 0, v5, &unk_1001326A0, v9);

  sub_1000ABE54("CheckInvalidAccessCredentialsTask.run", 37, 2);

  v10 = *(v0 + 8);

  return v10();
}