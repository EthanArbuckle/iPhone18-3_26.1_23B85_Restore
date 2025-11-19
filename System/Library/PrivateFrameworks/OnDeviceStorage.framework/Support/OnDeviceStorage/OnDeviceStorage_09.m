uint64_t sub_1000ACCA0()
{
  v1 = v0[32];
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

  sub_10009C9B8(0, 0, v7, &unk_1001324D0, v10);

  sub_1000ABE54("CheckInvalidAccessCredentialsTask.run", 37, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000ACE00(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000ACE54()
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_1000ACEB4()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C720);
  v1 = sub_10002FD14(v0, qword_10016C720);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000ACF7C(uint64_t a1)
{
  v2[61] = a1;
  v2[62] = v1;
  v3 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[63] = swift_task_alloc();
  v4 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v2[64] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v2[65] = v5;
  v6 = *(v5 - 8);
  v2[66] = v6;
  v7 = *(v6 + 64) + 15;
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();

  return _swift_task_switch(sub_1000AD0AC, v1, 0);
}

uint64_t sub_1000AD0AC()
{
  if (qword_10016A5B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 544);
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016C720);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 544);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "DataOwnershipIndexCleanupTask.run", "", v6, 2u);
  }

  v8 = *(v0 + 544);
  v9 = *(v0 + 536);
  v10 = *(v0 + 528);
  v11 = *(v0 + 520);

  (*(v10 + 16))(v9, v8, v11);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 552) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v8, v11);
  if (qword_10016A5B0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C6F8, qword_10016C710);
  *(v0 + 560) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v15 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 568) = *(v15 + 72);
  *(v0 + 680) = *(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v16 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
  v17 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v18 = swift_task_alloc();
  *(v0 + 576) = v18;
  *v18 = v0;
  v18[1] = sub_1000AD3E0;
  v19 = *(v0 + 488);

  return BaseObjectGraph.inject<A>(_:)(v0 + 152, v16, v16);
}

uint64_t sub_1000AD3E0()
{
  v2 = *(*v1 + 576);
  v3 = *v1;
  v3[73] = v0;

  if (v0)
  {
    v4 = v3[62];

    return _swift_task_switch(sub_1000AE420, v4, 0);
  }

  else
  {
    v5 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v7 = swift_task_alloc();
    v3[74] = v7;
    *v7 = v3;
    v7[1] = sub_1000AD584;
    v8 = v3[61];

    return BaseObjectGraph.inject<A>(_:)(v3 + 24, v5, v5);
  }
}

uint64_t sub_1000AD584()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *v1;
  *(*v1 + 600) = v0;

  v5 = *(v2 + 496);
  if (v0)
  {
    v6 = sub_1000AE610;
  }

  else
  {
    v6 = sub_1000AD6B0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000AD6B0()
{
  v1 = *sub_100026F50(v0 + 24, v0[27]);
  v2 = swift_task_alloc();
  v0[76] = v2;
  *v2 = v0;
  v2[1] = sub_1000AD74C;

  return sub_1000614EC();
}

uint64_t sub_1000AD74C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 608);
  v6 = *v2;
  *(v4 + 616) = a1;
  *(v4 + 624) = v1;

  v7 = *(v3 + 496);
  if (v1)
  {
    v8 = sub_1000AD884;
  }

  else
  {
    v8 = sub_1000ADA84;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000AD884()
{
  v1 = v0[64];
  v2 = v0[61];
  sub_100026FDC(v0 + 19);
  sub_100026FDC(v0 + 24);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = qword_10016A6C8;

  v16 = v0[78];
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[63];
  v9 = v0[64];
  v10 = v0[61];
  v11 = qword_1001738A8;
  v12 = sub_1000B0BF8(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v10;

  sub_10009C9B8(0, 0, v9, &unk_1001327E0, v13);

  sub_1000B091C("DataOwnershipIndexCleanupTask.run", 33, 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000ADA84()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 680);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 504);
  sub_100026F50(qword_10016C6F8, qword_10016C710);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x20646E756F46;
  v6._object = 0xE600000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v0 + 232) = *(v1 + 16);
  v33 = (v0 + 192);
  *(v0 + 256) = &type metadata for Int;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 232);
  v7._object = 0x800000010013C640;
  v7._countAndFlagsBits = 0xD00000000000002CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v8 = *(v1 + 16);
  *(v0 + 632) = v8;
  v9 = *(v0 + 616);
  if (v8)
  {
    *(v0 + 656) = 0;
    *(v0 + 640) = 0u;
    sub_1000A3D14(v9 + 32, v0 + 16);
    v10 = swift_task_alloc();
    *(v0 + 664) = v10;
    *v10 = v0;
    v10[1] = sub_1000ADF0C;
    v11 = *(v0 + 496);

    return sub_1000AEDE0(v0 + 16, v0 + 152, v33);
  }

  else
  {

    v13 = *(v0 + 680);
    v14 = *(v0 + 568);
    v15 = *(v0 + 560);
    v16 = *(v0 + 504);
    v31 = *(v0 + 512);
    v32 = *(v0 + 488);
    sub_100026F50(qword_10016C6F8, qword_10016C710);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._countAndFlagsBits = 0xD000000000000039;
    v17._object = 0x800000010013C6C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    *(v0 + 448) = &type metadata for Int;
    *(v0 + 424) = 0;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v0 + 424);
    v18._countAndFlagsBits = 0x6520656C61747320;
    v18._object = 0xEE0073656972746ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 152));
    sub_100026FDC(v33);
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v31, 1, 1, v19);
    v20 = qword_10016A6C8;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 552);
    v22 = *(v0 + 544);
    v23 = *(v0 + 536);
    v25 = *(v0 + 504);
    v24 = *(v0 + 512);
    v26 = *(v0 + 488);
    v27 = qword_1001738A8;
    v28 = sub_1000B0BF8(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
    v29 = swift_allocObject();
    v29[2] = v27;
    v29[3] = v28;
    v29[4] = v26;

    sub_10009C9B8(0, 0, v24, &unk_1001326B0, v29);

    sub_1000B091C("DataOwnershipIndexCleanupTask.run", 33, 2);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1000ADF0C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 664);
  v6 = *v2;
  *(v4 + 672) = v1;

  v7 = *(v4 + 496);
  if (v1)
  {
    v8 = sub_1000AE808;
  }

  else
  {
    *(v4 + 684) = a1 & 1;
    v8 = sub_1000AE04C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000AE04C()
{
  v1 = *(v0 + 684);
  sub_1000A3D70(v0 + 16);
  v2 = *(v0 + 648);
  if (v1)
  {
    v3 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    ++v2;
  }

  else
  {
    v3 = *(v0 + 640);
  }

  v4 = *(v0 + 656) + 1;
  if (v4 == *(v0 + 632))
  {
    v5 = *(v0 + 616);

    v6 = *(v0 + 680);
    v7 = *(v0 + 568);
    v8 = *(v0 + 560);
    v9 = *(v0 + 504);
    v27 = *(v0 + 512);
    v28 = *(v0 + 488);
    sub_100026F50(qword_10016C6F8, qword_10016C710);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._object = 0x800000010013C6C0;
    v10._countAndFlagsBits = 0xD000000000000039;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    *(v0 + 448) = &type metadata for Int;
    *(v0 + 424) = v3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v0 + 424);
    v11._countAndFlagsBits = 0x6520656C61747320;
    v11._object = 0xEE0073656972746ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 152));
    sub_100026FDC((v0 + 192));
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v27, 1, 1, v12);
    v13 = qword_10016A6C8;

    if (v13 == -1)
    {
LABEL_7:
      v14 = *(v0 + 552);
      v15 = *(v0 + 544);
      v16 = *(v0 + 536);
      v18 = *(v0 + 504);
      v17 = *(v0 + 512);
      v19 = *(v0 + 488);
      v20 = qword_1001738A8;
      v21 = sub_1000B0BF8(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
      v22 = swift_allocObject();
      v22[2] = v20;
      v22[3] = v21;
      v22[4] = v19;

      sub_10009C9B8(0, 0, v17, &unk_1001326B0, v22);

      sub_1000B091C("DataOwnershipIndexCleanupTask.run", 33, 2);

      v23 = *(v0 + 8);

      return v23();
    }

LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  *(v0 + 656) = v4;
  *(v0 + 648) = v2;
  *(v0 + 640) = v3;
  sub_1000A3D14(*(v0 + 616) + 136 * v4 + 32, v0 + 16);
  v25 = swift_task_alloc();
  *(v0 + 664) = v25;
  *v25 = v0;
  v25[1] = sub_1000ADF0C;
  v26 = *(v0 + 496);

  return sub_1000AEDE0(v0 + 16, v0 + 152, v0 + 192);
}

uint64_t sub_1000AE420()
{
  v1 = v0[64];
  v2 = v0[61];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = qword_10016A6C8;

  v16 = v0[73];
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[63];
  v9 = v0[64];
  v10 = v0[61];
  v11 = qword_1001738A8;
  v12 = sub_1000B0BF8(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v10;

  sub_10009C9B8(0, 0, v9, &unk_1001324D0, v13);

  sub_1000B091C("DataOwnershipIndexCleanupTask.run", 33, 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000AE610()
{
  v1 = v0[64];
  v2 = v0[61];
  sub_100026FDC(v0 + 19);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = qword_10016A6C8;

  v16 = v0[75];
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[63];
  v9 = v0[64];
  v10 = v0[61];
  v11 = qword_1001738A8;
  v12 = sub_1000B0BF8(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v10;

  sub_10009C9B8(0, 0, v9, &unk_1001327D0, v13);

  sub_1000B091C("DataOwnershipIndexCleanupTask.run", 33, 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000AE808()
{
  v46 = *(v0 + 672);
  v1 = *(v0 + 680);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 504);
  sub_100026F50(qword_10016C6F8, qword_10016C710);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD00000000000002FLL;
  v5._object = 0x800000010013C670;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  *(v0 + 288) = &type metadata for String;
  *(v0 + 264) = v7;
  *(v0 + 272) = v6;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 264);
  v8._countAndFlagsBits = 0x65686373206E6920;
  v8._object = 0xEC000000203A616DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  *(v0 + 320) = &type metadata for String;
  *(v0 + 296) = v10;
  *(v0 + 304) = v9;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 296);
  v11._object = 0x800000010013C6A0;
  v11._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  *(v0 + 352) = &type metadata for String;
  *(v0 + 328) = v13;
  *(v0 + 336) = v12;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 328);
  v14._countAndFlagsBits = 0x656C646E7562202CLL;
  v14._object = 0xEC000000203A6449;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v16 = *(v0 + 32);
  v15 = *(v0 + 40);
  *(v0 + 384) = &type metadata for String;
  *(v0 + 360) = v16;
  *(v0 + 368) = v15;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 360);
  v17._countAndFlagsBits = 0x3A726F727265202CLL;
  v17._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  swift_getErrorValue();
  v19 = *(v0 + 456);
  v18 = *(v0 + 464);
  *(v0 + 416) = v18;
  v20 = sub_100042BAC((v0 + 392));
  (*(*(v18 - 8) + 16))(v20, v19, v18);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 392);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_1000A3D70(v0 + 16);
  v22 = *(v0 + 656) + 1;
  if (v22 == *(v0 + 632))
  {
    v23 = *(v0 + 640);
    v24 = *(v0 + 616);

    v25 = *(v0 + 680);
    v26 = *(v0 + 568);
    v27 = *(v0 + 560);
    v28 = *(v0 + 504);
    v47 = *(v0 + 512);
    v48 = *(v0 + 488);
    sub_100026F50(qword_10016C6F8, qword_10016C710);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v29._countAndFlagsBits = 0xD000000000000039;
    v29._object = 0x800000010013C6C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    *(v0 + 448) = &type metadata for Int;
    *(v0 + 424) = v23;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v0 + 424);
    v30._countAndFlagsBits = 0x6520656C61747320;
    v30._object = 0xEE0073656972746ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 152));
    sub_100026FDC((v0 + 192));
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v47, 1, 1, v31);
    v32 = qword_10016A6C8;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 552);
    v34 = *(v0 + 544);
    v35 = *(v0 + 536);
    v37 = *(v0 + 504);
    v36 = *(v0 + 512);
    v38 = *(v0 + 488);
    v39 = qword_1001738A8;
    v40 = sub_1000B0BF8(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
    v41 = swift_allocObject();
    v41[2] = v39;
    v41[3] = v40;
    v41[4] = v38;

    sub_10009C9B8(0, 0, v36, &unk_1001326B0, v41);

    sub_1000B091C("DataOwnershipIndexCleanupTask.run", 33, 2);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    *(v0 + 656) = v22;
    sub_1000A3D14(*(v0 + 616) + 136 * v22 + 32, v0 + 16);
    v44 = swift_task_alloc();
    *(v0 + 664) = v44;
    *v44 = v0;
    v44[1] = sub_1000ADF0C;
    v45 = *(v0 + 496);

    return sub_1000AEDE0(v0 + 16, v0 + 152, v0 + 192);
  }
}

uint64_t sub_1000AEDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[65] = v3;
  v4[63] = a2;
  v4[64] = a3;
  v4[62] = a1;
  v5 = sub_100026F94(&qword_10016AD10, &qword_100132950);
  v4[66] = v5;
  v6 = *(v5 - 8);
  v4[67] = v6;
  v7 = *(v6 + 64) + 15;
  v4[68] = swift_task_alloc();
  v8 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v4[69] = v8;
  v9 = *(v8 - 8);
  v4[70] = v9;
  v10 = *(v9 + 64) + 15;
  v4[71] = swift_task_alloc();
  v11 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v4[72] = v11;
  v12 = *(v11 - 8);
  v4[73] = v12;
  v13 = *(v12 + 64) + 15;
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v14 = type metadata accessor for Table();
  v4[77] = v14;
  v15 = *(v14 - 8);
  v4[78] = v15;
  v16 = *(v15 + 64) + 15;
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v17 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[81] = swift_task_alloc();

  return _swift_task_switch(sub_1000AF030, v3, 0);
}

uint64_t sub_1000AF030()
{
  if (qword_10016A5B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 648);
  v2 = *(v0 + 520);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  sub_100026F50(qword_10016C6F8, qword_10016C710);
  *(v0 + 656) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v5 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 664) = *(v5 + 72);
  *(v0 + 800) = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010013C700;
  v6._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v7 = *v4;
  *(v0 + 672) = *v4;
  v8 = v4[1];
  *(v0 + 680) = v8;
  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = v7;
  *(v0 + 24) = v8;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 16);
  v9._countAndFlagsBits = 0x656C646E7562202CLL;
  v9._object = 0xEC000000203A6449;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v10 = v4[2];
  *(v0 + 688) = v10;
  v11 = v4[3];
  *(v0 + 696) = v11;
  *(v0 + 72) = &type metadata for String;
  *(v0 + 48) = v10;
  *(v0 + 56) = v11;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 48);
  v12._countAndFlagsBits = 0x3A656C626174202CLL;
  v12._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  v13 = v4[13];
  *(v0 + 704) = v13;
  v14 = v4[14];
  *(v0 + 712) = v14;
  *(v0 + 104) = &type metadata for String;
  *(v0 + 80) = v13;
  *(v0 + 88) = v14;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 80);
  v15._countAndFlagsBits = 0x616D65686373202CLL;
  v15._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v4[15];
  *(v0 + 720) = v16;
  v17 = v4[16];
  *(v0 + 728) = v17;
  *(v0 + 136) = &type metadata for String;
  *(v0 + 112) = v16;
  *(v0 + 120) = v17;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 112);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v19 = sub_100026F50(v3, v3[3]);
  v20 = *v2;
  v21 = _typeName(_:qualified:)();
  v23 = v22;
  *(v0 + 736) = v22;
  v24 = *v19;
  v25 = swift_task_alloc();
  *(v0 + 744) = v25;
  *v25 = v0;
  v25[1] = sub_1000AF3D0;
  v26 = *(v0 + 496);

  return sub_10009D2E4(v26, v21, v23);
}

uint64_t sub_1000AF3D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 744);
  v6 = *v2;
  v4[94] = a1;
  v4[95] = v1;

  v7 = v3[92];
  if (v1)
  {

    v8 = v4[81];
    v9 = v4[80];
    v10 = v4[79];
    v11 = v4[76];
    v12 = v4[75];
    v13 = v4[74];
    v14 = v4[71];
    v15 = v4[68];

    v16 = *(v6 + 8);

    return v16(0);
  }

  else
  {
    v18 = v4[65];

    return _swift_task_switch(sub_1000AF5B8, v18, 0);
  }
}

uint64_t sub_1000AF5B8()
{
  v103 = *(v0 + 752);
  v107 = *(v0 + 760);
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v83 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 640);
  v110 = *(v0 + 624);
  v94 = *(v0 + 616);
  v6 = *(v0 + 600);
  v85 = *(v0 + 688);
  v86 = *(v0 + 592);
  v87 = *(v0 + 584);
  v88 = *(v0 + 608);
  v89 = *(v0 + 576);
  v7 = *(v0 + 568);
  v84 = *(v0 + 560);
  v8 = *(v0 + 552);
  v96 = *(v0 + 632);
  v99 = *(v0 + 544);

  Table.init(_:database:)();

  static Connection.ServiceColumns.requestIds.getter();
  v9._countAndFlagsBits = v4;
  v9._object = v3;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 47;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 47;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 37;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  sub_1000A3DC4();
  ExpressionType<>.like(_:escape:)();

  v13 = *(v84 + 8);
  v13(v7, v8);
  static Connection.ServiceColumns.bundleIds.getter();
  v14._countAndFlagsBits = v85;
  v14._object = v83;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 47;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 47;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 37;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  ExpressionType<>.like(_:escape:)();

  v13(v7, v8);
  static Expression<A>.&& infix(_:_:)();
  v18 = *(v87 + 8);
  v18(v86, v89);
  v18(v6, v89);
  sub_1000B0BF8(&qword_10016AD20, 255, &type metadata accessor for Table);
  QueryType.where(_:)();
  v18(v88, v89);
  QueryType.exists.getter();
  v19 = *(v110 + 8);
  *(v0 + 768) = v19;
  *(v0 + 776) = (v110 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v96, v94);
  Connection.scalar<A>(_:)();
  if (v107)
  {
    v104 = *(v0 + 752);
    v20 = *(v0 + 696);
    v21 = *(v0 + 680);
    v22 = *(v0 + 640);
    v23 = *(v0 + 616);
    v24 = *(v0 + 544);
    v25 = *(v0 + 536);
    v26 = *(v0 + 528);
    v100 = *(v0 + 520);
    v27 = *(v0 + 496);
    v28 = *(v0 + 504);

    (*(v25 + 8))(v24, v26);
    v19(v22, v23);
    v29 = sub_100026F50(v28, v28[3]);
    sub_1000B072C(*v29, v27, v100);

    v30 = *(v0 + 648);
    v31 = *(v0 + 640);
    v32 = *(v0 + 632);
    v33 = *(v0 + 608);
    v34 = *(v0 + 600);
    v35 = *(v0 + 592);
    v36 = *(v0 + 568);
    v37 = *(v0 + 544);

    v38 = *(v0 + 8);
    v39 = 0;
LABEL_5:

    return v38(v39);
  }

  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  v40 = *(v0 + 804);
  *(v0 + 805) = v40;
  if (v40)
  {
    v41 = *(v0 + 712);
    v42 = *(v0 + 704);
    v101 = *(v0 + 688);
    v105 = *(v0 + 696);
    v97 = *(v0 + 680);
    v43 = *(v0 + 672);
    v44 = *(v0 + 800);
    v45 = *(v0 + 664);
    v46 = *(v0 + 656);
    v47 = *(v0 + 648);
    sub_100026F50(qword_10016C6F8, qword_10016C710);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v48._countAndFlagsBits = 0x203A656C626154;
    v48._object = 0xE700000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v48);
    *(v0 + 424) = &type metadata for String;
    *(v0 + 400) = v42;
    *(v0 + 408) = v41;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v0 + 400);
    v49._countAndFlagsBits = 0xD000000000000024;
    v49._object = 0x800000010013C7D0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v49);
    *(v0 + 456) = &type metadata for String;
    *(v0 + 432) = v43;
    *(v0 + 440) = v97;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v0 + 432);
    v50._countAndFlagsBits = 0x646E756220726F20;
    v50._object = 0xEE00203A6449656CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v50);
    *(v0 + 488) = &type metadata for String;
    *(v0 + 464) = v101;
    *(v0 + 472) = v105;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v0 + 464);
    v51._object = 0x800000010013C800;
    v51._countAndFlagsBits = 0xD000000000000019;
    LogMessage.StringInterpolation.appendLiteral(_:)(v51);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();
    v111 = *(v0 + 805);
    v52 = *(v0 + 776);
    v53 = *(v0 + 768);
    v54 = *(v0 + 752);
    v55 = *(v0 + 640);
    v90 = *(v0 + 648);
    v92 = *(v0 + 632);
    v56 = *(v0 + 616);
    v95 = *(v0 + 608);
    v98 = *(v0 + 600);
    v102 = *(v0 + 592);
    v106 = *(v0 + 568);
    v108 = *(v0 + 544);
    v57 = *(v0 + 520);
    v58 = *(v0 + 496);
    v59 = *(v0 + 504);

    v53(v55, v56);
    v60 = sub_100026F50(v59, v59[3]);
    sub_1000B072C(*v60, v58, v57);

    v38 = *(v0 + 8);
    v39 = (v111 & 1) == 0;
    goto LABEL_5;
  }

  v62 = *(v0 + 712);
  v63 = *(v0 + 696);
  v91 = *(v0 + 688);
  v93 = *(v0 + 704);
  v64 = *(v0 + 680);
  v65 = *(v0 + 672);
  v66 = *(v0 + 800);
  v67 = *(v0 + 664);
  v68 = *(v0 + 656);
  v69 = *(v0 + 648);
  v109 = *(v0 + 512);
  v112 = *(v0 + 496);
  sub_100026F50(qword_10016C6F8, qword_10016C710);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v70._countAndFlagsBits = 0xD00000000000002DLL;
  v70._object = 0x800000010013C760;
  LogMessage.StringInterpolation.appendLiteral(_:)(v70);
  *(v0 + 168) = &type metadata for String;
  *(v0 + 144) = v65;
  *(v0 + 152) = v64;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 144);
  v71._countAndFlagsBits = 0x656C646E7562202CLL;
  v71._object = 0xEC000000203A6449;
  LogMessage.StringInterpolation.appendLiteral(_:)(v71);
  *(v0 + 200) = &type metadata for String;
  *(v0 + 176) = v91;
  *(v0 + 184) = v63;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 176);
  v72._countAndFlagsBits = 0x3A656C626174202CLL;
  v72._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v72);
  *(v0 + 232) = &type metadata for String;
  *(v0 + 208) = v93;
  *(v0 + 216) = v62;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 208);
  v73._countAndFlagsBits = 2108704;
  v73._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v73);
  *(v0 + 264) = &type metadata for String;
  *(v0 + 240) = 0xD000000000000023;
  *(v0 + 248) = 0x800000010013C730;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 240);
  v74._countAndFlagsBits = 0;
  v74._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v74);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v75 = *sub_100026F50(v109, v109[3]);
  v76 = swift_task_alloc();
  *(v0 + 784) = v76;
  *v76 = v0;
  v76[1] = sub_1000AFF58;
  v77 = *(v0 + 728);
  v78 = *(v0 + 720);
  v79 = *(v0 + 712);
  v80 = *(v0 + 704);
  v81 = *(v0 + 680);
  v82 = *(v0 + 672);

  return sub_10005EDF0(v82, v81, v112 + 16, v80, v79, v78, v77);
}

uint64_t sub_1000AFF58()
{
  v2 = *v1;
  v3 = *(*v1 + 784);
  v9 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v4 = *(v2 + 696);
    v5 = *(v2 + 520);

    v6 = sub_1000B0080;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 520);
    v6 = sub_1000B0198;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000B0080()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 752);
  v3 = *(v0 + 520);
  v5 = *(v0 + 496);
  v4 = *(v0 + 504);
  (*(v0 + 768))(*(v0 + 640), *(v0 + 616));
  v6 = sub_100026F50(v4, v4[3]);
  sub_1000B072C(*v6, v5, v3);

  v7 = *(v0 + 792);
  v8 = *(v0 + 648);
  v9 = *(v0 + 640);
  v10 = *(v0 + 632);
  v11 = *(v0 + 608);
  v12 = *(v0 + 600);
  v13 = *(v0 + 592);
  v14 = *(v0 + 568);
  v15 = *(v0 + 544);

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_1000B0198()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  v30 = *(v0 + 704);
  v32 = *(v0 + 720);
  v26 = *(v0 + 688);
  v28 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 800);
  v6 = *(v0 + 664);
  v7 = *(v0 + 656);
  v8 = *(v0 + 648);
  sub_100026F50(qword_10016C6F8, qword_10016C710);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x800000010013C790;
  v9._countAndFlagsBits = 0xD000000000000033;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  *(v0 + 296) = &type metadata for String;
  *(v0 + 272) = v4;
  *(v0 + 280) = v3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 272);
  v10._countAndFlagsBits = 0x656C646E7562202CLL;
  v10._object = 0xEC000000203A6449;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  *(v0 + 328) = &type metadata for String;
  *(v0 + 304) = v26;
  *(v0 + 312) = v28;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 304);
  v11._countAndFlagsBits = 0x3A656C626174202CLL;
  v11._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 360) = &type metadata for String;
  *(v0 + 336) = v30;
  *(v0 + 344) = v2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 336);
  v12._countAndFlagsBits = 0x616D65686373202CLL;
  v12._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v0 + 392) = &type metadata for String;
  *(v0 + 368) = v32;
  *(v0 + 376) = v1;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 368);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();
  v36 = *(v0 + 805);
  v14 = *(v0 + 776);
  v15 = *(v0 + 768);
  v16 = *(v0 + 752);
  v17 = *(v0 + 640);
  v25 = *(v0 + 648);
  v27 = *(v0 + 632);
  v18 = *(v0 + 616);
  v29 = *(v0 + 608);
  v31 = *(v0 + 600);
  v33 = *(v0 + 592);
  v34 = *(v0 + 568);
  v35 = *(v0 + 544);
  v19 = *(v0 + 520);
  v20 = *(v0 + 496);
  v21 = *(v0 + 504);

  v15(v17, v18);
  v22 = sub_100026F50(v21, v21[3]);
  sub_1000B072C(*v22, v20, v19);

  v23 = *(v0 + 8);

  return v23((v36 & 1) == 0);
}

uint64_t sub_1000B04C0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042680;

  return sub_1000ACF7C(a1);
}

uint64_t sub_1000B0558(uint64_t a1, uint64_t a2)
{
  result = sub_1000B0BF8(&qword_10016C7D8, a2, type metadata accessor for DataOwnershipIndexCleanupTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B05B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return _swift_task_switch(sub_1000B0678, a6, 0);
}

uint64_t sub_1000B0678()
{
  v1 = *(v0 + 32);
  v2 = sub_100026F50(*(v0 + 16), *(*(v0 + 16) + 24));
  v3 = *v1;
  *(v0 + 64) = _typeName(_:qualified:)();
  *(v0 + 72) = v4;
  *(v0 + 80) = *v2;

  return _swift_task_switch(sub_10009E06C, 0, 0);
}

uint64_t sub_1000B072C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v12 = sub_1000B0BF8(&qword_10016C7E0, v11, type metadata accessor for DataOwnershipIndexCleanupTask);
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

  sub_10009C9B8(0, 0, v9, &unk_100132960, v13);

  return sub_100026FDC(v24);
}

uint64_t sub_1000B091C(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A5B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016C720);
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

uint64_t sub_1000B0BF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000B0C40()
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

uint64_t sub_1000B0CC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042680;

  return sub_1000B05B0(a1, v4, v5, (v1 + 4), (v1 + 9), v6);
}

uint64_t sub_1000B0D90()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C7E8);
  v1 = sub_10002FD14(v0, qword_10016C7E8);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B0E58(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[24] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[25] = sub_1000B1C54(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[26] = v8;
  v2[27] = v7;

  return _swift_task_switch(sub_1000B0FF4, v8, v7);
}

uint64_t sub_1000B0FF4()
{
  if (qword_10016A5C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016C7E8);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 184);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "FetchRevokedAccessCredentialsTask.run", "", v6, 2u);
  }

  v8 = *(v0 + 176);
  v9 = *(v0 + 184);
  v10 = *(v0 + 160);
  v11 = *(v0 + 168);

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 224) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v0 + 232) = qword_100173878;
  TaskLocal.get()();
  v15 = *(v0 + 48);
  sub_100026F50((v0 + 16), *(v0 + 40));
  *(v0 + 240) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v16 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 248) = *(v16 + 72);
  *(v0 + 288) = *(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 16));
  v17 = sub_100026F94(&qword_10016C458, &qword_1001324C8);
  v18 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v19 = swift_task_alloc();
  *(v0 + 256) = v19;
  *v19 = v0;
  v19[1] = sub_1000B1338;
  v20 = *(v0 + 136);

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v17, v17);
}

uint64_t sub_1000B1338()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_1000B19DC;
  }

  else
  {
    v7 = sub_1000B1474;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000B1474()
{
  v1 = v0[18];
  v2 = sub_100026F50(v0 + 7, v0[10]);
  v3 = *(v1 + 112);
  v4 = *v2;
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = sub_1000B1524;
  v6 = v0[17];

  return sub_100037A8C(v6, v3);
}

uint64_t sub_1000B1524()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 208);
  if (v0)
  {
    v7 = sub_1000B1660;
  }

  else
  {
    v7 = sub_1000B17CC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000B1660()
{
  sub_100026FDC(v0 + 7);
  v1 = v0[35];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[19];
  v8 = v0[17];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001327D0, v10);

  sub_1000B1CA0("FetchRevokedAccessCredentialsTask.run", 37, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B17CC()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 232);
  v13 = *(v0 + 200);
  v14 = *(v0 + 224);
  v12 = *(v0 + 192);
  v15 = *(v0 + 184);
  v16 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
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

  sub_1000B1CA0("FetchRevokedAccessCredentialsTask.run", 37, 2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000B19DC()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[19];
  v8 = v0[17];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001324D0, v10);

  sub_1000B1CA0("FetchRevokedAccessCredentialsTask.run", 37, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B1B64(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042680;

  return sub_1000B0E58(a1);
}

uint64_t sub_1000B1BFC(uint64_t a1, uint64_t a2)
{
  result = sub_1000B1C54(&qword_10016C8A8, a2, type metadata accessor for FetchRevokedAccessCredentialsTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B1C54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000B1CA0(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A5C0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016C7E8);
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

uint64_t sub_1000B1F84()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C8B0);
  v1 = sub_10002FD14(v0, qword_10016C8B0);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B204C(uint64_t a1)
{
  v2[47] = a1;
  v2[48] = v1;
  v3 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v2[49] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v2[50] = v4;
  v5 = *(v4 - 8);
  v2[51] = v5;
  v6 = *(v5 + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[54] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[55] = sub_1000B50AC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[56] = v8;
  v2[57] = v7;

  return _swift_task_switch(sub_1000B21E8, v8, v7);
}

uint64_t sub_1000B21E8()
{
  if (qword_10016A5C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 424);
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016C8B0);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 424);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "MaintenanceTask.run", "", v6, 2u);
  }

  v8 = *(v0 + 416);
  v9 = *(v0 + 424);
  v10 = *(v0 + 400);
  v11 = *(v0 + 408);

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 464) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v0 + 472) = qword_100173878;
  TaskLocal.get()();
  v15 = *(v0 + 48);
  sub_100026F50((v0 + 16), *(v0 + 40));
  *(v0 + 480) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v16 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 488) = *(v16 + 72);
  *(v0 + 608) = *(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 16));
  v17 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v18 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v19 = swift_task_alloc();
  *(v0 + 496) = v19;
  *v19 = v0;
  v19[1] = sub_1000B252C;
  v20 = *(v0 + 376);

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v17, v17);
}

uint64_t sub_1000B252C()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = v0;

  v5 = *(v2 + 456);
  v6 = *(v2 + 448);
  if (v0)
  {
    v7 = sub_1000B3590;
  }

  else
  {
    v7 = sub_1000B2668;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000B2668()
{
  v1 = type metadata accessor for CheckInvalidAccessCredentialsTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[15] = v1;
  v0[16] = sub_1000B50AC(&qword_10016C970, 255, type metadata accessor for CheckInvalidAccessCredentialsTask);
  v0[12] = v2;
  v3 = swift_task_alloc();
  v0[64] = v3;
  *v3 = v0;
  v3[1] = sub_1000B2770;
  v4 = v0[47];
  v5 = v0[48];

  return sub_1000B3FA4((v0 + 12), (v0 + 7), v4);
}

uint64_t sub_1000B2770()
{
  v2 = *v1;
  v3 = (*v1)[64];
  v8 = *v1;
  (*v1)[65] = v0;

  if (v0)
  {
    v4 = v2[56];
    v5 = v2[57];
    v6 = sub_1000B36F4;
  }

  else
  {
    sub_100026FDC(v2 + 12);
    v4 = v2[56];
    v5 = v2[57];
    v6 = sub_1000B288C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000B288C()
{
  v1 = type metadata accessor for CheckInstalledAppsTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[20] = v1;
  v0[21] = sub_1000B50AC(&qword_10016C978, 255, type metadata accessor for CheckInstalledAppsTask);
  v0[17] = v2;
  v3 = swift_task_alloc();
  v0[66] = v3;
  *v3 = v0;
  v3[1] = sub_1000B2994;
  v4 = v0[47];
  v5 = v0[48];

  return sub_1000B3FA4((v0 + 17), (v0 + 7), v4);
}

uint64_t sub_1000B2994()
{
  v2 = *v1;
  v3 = (*v1)[66];
  v8 = *v1;
  (*v1)[67] = v0;

  if (v0)
  {
    v4 = v2[56];
    v5 = v2[57];
    v6 = sub_1000B3868;
  }

  else
  {
    sub_100026FDC(v2 + 17);
    v4 = v2[56];
    v5 = v2[57];
    v6 = sub_1000B2AB0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000B2AB0()
{
  v1 = type metadata accessor for TriggerForwardDeletionRulesTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[25] = v1;
  v0[26] = sub_1000B50AC(&qword_10016C980, 255, type metadata accessor for TriggerForwardDeletionRulesTask);
  v0[22] = v2;
  v3 = swift_task_alloc();
  v0[68] = v3;
  *v3 = v0;
  v3[1] = sub_1000B2BB8;
  v4 = v0[47];
  v5 = v0[48];

  return sub_1000B3FA4((v0 + 22), (v0 + 7), v4);
}

uint64_t sub_1000B2BB8()
{
  v2 = *v1;
  v3 = (*v1)[68];
  v8 = *v1;
  (*v1)[69] = v0;

  if (v0)
  {
    v4 = v2[56];
    v5 = v2[57];
    v6 = sub_1000B39DC;
  }

  else
  {
    sub_100026FDC(v2 + 22);
    v4 = v2[56];
    v5 = v2[57];
    v6 = sub_1000B2CD4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000B2CD4()
{
  v1 = type metadata accessor for ScheduledTTLCleanupTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = sub_1000B8294;
  *(v2 + 120) = 0;
  v0[30] = v1;
  v0[31] = sub_1000B50AC(&qword_10016C988, 255, type metadata accessor for ScheduledTTLCleanupTask);
  v0[27] = v2;
  v3 = swift_task_alloc();
  v0[70] = v3;
  *v3 = v0;
  v3[1] = sub_1000B2DF0;
  v4 = v0[47];
  v5 = v0[48];

  return sub_1000B3FA4((v0 + 27), (v0 + 7), v4);
}

uint64_t sub_1000B2DF0()
{
  v2 = *v1;
  v3 = (*v1)[70];
  v8 = *v1;
  (*v1)[71] = v0;

  if (v0)
  {
    v4 = v2[56];
    v5 = v2[57];
    v6 = sub_1000B3B50;
  }

  else
  {
    sub_100026FDC(v2 + 27);
    v4 = v2[56];
    v5 = v2[57];
    v6 = sub_1000B2F0C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000B2F0C()
{
  v1 = type metadata accessor for DataOwnershipIndexCleanupTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[35] = v1;
  v0[36] = sub_1000B50AC(&qword_10016C990, 255, type metadata accessor for DataOwnershipIndexCleanupTask);
  v0[32] = v2;
  v3 = swift_task_alloc();
  v0[72] = v3;
  *v3 = v0;
  v3[1] = sub_1000B300C;
  v4 = v0[47];
  v5 = v0[48];

  return sub_1000B3FA4((v0 + 32), (v0 + 7), v4);
}

uint64_t sub_1000B300C()
{
  v2 = (*v1)[72];
  v3 = *v1;
  v3[73] = v0;

  if (v0)
  {
    v4 = v3[56];
    v5 = v3[57];

    return _swift_task_switch(sub_1000B3CC4, v4, v5);
  }

  else
  {
    sub_100026FDC(v3 + 32);
    v6 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v8 = swift_task_alloc();
    v3[74] = v8;
    *v8 = v3;
    v8[1] = sub_1000B31B4;
    v9 = v3[47];

    return BaseObjectGraph.inject<A>(_:)(v3 + 37, v6, v6);
  }
}

uint64_t sub_1000B31B4()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *v1;
  *(*v1 + 600) = v0;

  v5 = *(v2 + 456);
  v6 = *(v2 + 448);
  if (v0)
  {
    v7 = sub_1000B3E38;
  }

  else
  {
    v7 = sub_1000B32F0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000B32F0()
{
  v1 = *(v0 + 608);
  v12 = *(v0 + 488);
  v13 = *(v0 + 480);
  v2 = *(v0 + 472);
  v16 = *(v0 + 440);
  v17 = *(v0 + 464);
  v18 = *(v0 + 424);
  v19 = *(v0 + 416);
  v3 = *(v0 + 392);
  v14 = *(v0 + 376);
  v15 = *(v0 + 432);
  v4 = *sub_100026F50((v0 + 296), *(v0 + 320));
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;

  sub_10009C9B8(0, 0, v3, &unk_1001332E0, v7);

  sub_100026FDC((v0 + 296));
  TaskLocal.get()();
  v8 = *(v0 + 368);
  sub_100026F50((v0 + 336), *(v0 + 360));
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 56));
  sub_100026FDC((v0 + 336));
  v6(v3, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = v15;
  v9[3] = v16;
  v9[4] = v14;

  sub_10009C9B8(0, 0, v3, &unk_100132AE0, v9);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000B3590()
{
  v1 = v0[63];
  v2 = v0[58];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[49];
  v8 = v0[47];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001324D0, v10);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B36F4()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 12);
  v1 = v0[65];
  v2 = v0[58];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[49];
  v8 = v0[47];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001327D0, v10);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B3868()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 17);
  v1 = v0[67];
  v2 = v0[58];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[49];
  v8 = v0[47];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001327E0, v10);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B39DC()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 22);
  v1 = v0[69];
  v2 = v0[58];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[49];
  v8 = v0[47];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001326B0, v10);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B3B50()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 27);
  v1 = v0[71];
  v2 = v0[58];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[49];
  v8 = v0[47];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001326C0, v10);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B3CC4()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 32);
  v1 = v0[73];
  v2 = v0[58];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[49];
  v8 = v0[47];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_100132AD0, v10);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B3E38()
{
  sub_100026FDC(v0 + 7);
  v1 = v0[75];
  v2 = v0[58];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[53];
  v7 = v0[49];
  v8 = v0[47];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001326D0, v10);

  sub_1000B4DD0("MaintenanceTask.run", 19, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B3FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[34] = v3;
  v4[32] = a1;
  v5 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v4[36] = v6;
  v7 = *(v6 - 8);
  v4[37] = v7;
  v8 = *(v7 + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_1000B40A0, v3, 0);
}

uint64_t sub_1000B40A0()
{
  static Task<>.checkCancellation()();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_1000B50AC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 320) = v2;
  *(v0 + 328) = v1;

  return _swift_task_switch(sub_1000B41F8, v2, v1);
}

uint64_t sub_1000B41F8()
{
  v39 = v0;
  if (qword_10016A568 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  v3 = type metadata accessor for OSSignposter();
  sub_10002FD14(v3, qword_10016C1C0);
  sub_100026EEC(v2, v0 + 16);
  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = *(v0 + 312);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38 = v8;
    *v7 = 136315138;
    v9 = *(v0 + 48);
    sub_100026F50((v0 + 16), *(v0 + 40));
    v10 = *(v9 + 8);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100026FDC((v0 + 16));
    v14 = sub_10006CB64(v11, v13, &v38);

    *(v7 + 4) = v14;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v15, "TaskCenter.run", "task=%s", v7, 0xCu);
    sub_100026FDC(v8);
  }

  else
  {

    sub_100026FDC((v0 + 16));
  }

  v16 = *(v0 + 312);
  v17 = *(v0 + 288);
  v18 = *(v0 + 296);
  (*(v18 + 16))(*(v0 + 304), v16, v17);
  v19 = type metadata accessor for OSSignpostIntervalState();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v0 + 336) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v18 + 8))(v16, v17);
  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 280);
  v23 = *(v0 + 256);
  sub_100026F50(qword_10016C198, qword_10016C1B0);
  *(v0 + 344) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v24 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 352) = *(v24 + 72);
  *(v0 + 376) = *(v24 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._object = 0x800000010013BF60;
  v25._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v23[3];
  v27 = sub_100026F50(v23, v26);
  *(v0 + 120) = v26;
  v28 = sub_100042BAC((v0 + 96));
  (*(*(v26 - 8) + 16))(v28, v27, v26);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 96);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v30 = v23[3];
  v31 = v23[4];
  sub_100026F50(v23, v30);
  v32 = *(v31 + 24);
  v37 = (v32 + *v32);
  v33 = v32[1];
  v34 = swift_task_alloc();
  *(v0 + 360) = v34;
  *v34 = v0;
  v34[1] = sub_1000B46D0;
  v35 = *(v0 + 264);

  return v37(v35, v30, v31);
}

uint64_t sub_1000B46D0()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 328);
  v6 = *(v2 + 320);
  if (v0)
  {
    v7 = sub_1000B49DC;
  }

  else
  {
    v7 = sub_1000B480C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000B480C()
{
  v1 = *(v0 + 376);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  sub_100026F50(qword_10016C198, qword_10016C1B0);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013BF80;
  v7._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v8 = v6[3];
  v9 = sub_100026F50(v6, v8);
  *(v0 + 216) = v8;
  v10 = sub_100042BAC((v0 + 192));
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 192);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_1000964EC("TaskCenter.run", 14, 2);

  v13 = *(v0 + 304);
  v12 = *(v0 + 312);
  v14 = *(v0 + 280);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000B49DC()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 272);
  sub_1000964EC("TaskCenter.run", 14, 2);

  return _swift_task_switch(sub_1000B4A64, v2, 0);
}

uint64_t sub_1000B4A64()
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  TaskLocal.get()();
  v19 = *(v0 + 88);
  sub_100026F50((v0 + 56), *(v0 + 80));
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013C9D0;
  v7._countAndFlagsBits = 0xD000000000000014;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  sub_100026F50(v6, v6[3]);
  DynamicType = swift_getDynamicType();
  *(v0 + 152) = swift_getMetatypeMetadata();
  *(v0 + 128) = DynamicType;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 128);
  v9._countAndFlagsBits = 2629678;
  v9._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  swift_getErrorValue();
  v10 = *(v0 + 224);
  v11 = *(v0 + 232);
  *(v0 + 184) = v11;
  v12 = sub_100042BAC((v0 + 160));
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 160);
  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100026FDC((v0 + 56));
  v15 = *(v0 + 304);
  v14 = *(v0 + 312);
  v16 = *(v0 + 280);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000B4CDC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042680;

  return sub_1000B204C(a1);
}

uint64_t sub_1000B4D74(uint64_t a1, uint64_t a2)
{
  result = sub_1000B50AC(&qword_10016C968, a2, type metadata accessor for MaintenanceTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B4DD0(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A5C8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016C8B0);
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

uint64_t sub_1000B50AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000B5114()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C998);
  v1 = sub_10002FD14(v0, qword_10016C998);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B51DC(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v2[30] = v4;
  v5 = *(v4 - 8);
  v2[31] = v5;
  v6 = *(v5 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[34] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[35] = sub_1000B6BFC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[36] = v8;
  v2[37] = v7;

  return _swift_task_switch(sub_1000B5378, v8, v7);
}

uint64_t sub_1000B5378()
{
  if (qword_10016A5D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016C998);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 264);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "OnlineMaintenanceTask.run", "", v6, 2u);
  }

  v8 = *(v0 + 256);
  v9 = *(v0 + 264);
  v10 = *(v0 + 240);
  v11 = *(v0 + 248);

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 304) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v0 + 312) = qword_100173878;
  TaskLocal.get()();
  v15 = *(v0 + 48);
  sub_100026F50((v0 + 16), *(v0 + 40));
  *(v0 + 320) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v16 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 328) = *(v16 + 72);
  *(v0 + 384) = *(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 16));
  v17 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v18 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v19 = swift_task_alloc();
  *(v0 + 336) = v19;
  *v19 = v0;
  v19[1] = sub_1000B56BC;
  v20 = *(v0 + 216);

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v17, v17);
}

uint64_t sub_1000B56BC()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 296);
  v6 = *(v2 + 288);
  if (v0)
  {
    v7 = sub_1000B5E54;
  }

  else
  {
    v7 = sub_1000B57F8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000B57F8()
{
  RevokedAccessCredentialsTask = type metadata accessor for FetchRevokedAccessCredentialsTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  v0[15] = RevokedAccessCredentialsTask;
  v0[16] = sub_1000B6BFC(&qword_10016CA58, 255, type metadata accessor for FetchRevokedAccessCredentialsTask);
  v0[12] = v2;
  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = sub_1000B5904;
  v4 = v0[27];
  v5 = v0[28];

  return sub_1000B62A0((v0 + 12), (v0 + 7), v4);
}

uint64_t sub_1000B5904()
{
  v2 = *v1;
  v3 = (*v1)[44];
  v8 = *v1;
  (*v1)[45] = v0;

  if (v0)
  {
    v4 = v2[36];
    v5 = v2[37];
    v6 = sub_1000B5FB8;
  }

  else
  {
    sub_100026FDC(v2 + 12);
    v4 = v2[36];
    v5 = v2[37];
    v6 = sub_1000B5A20;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000B5A20()
{
  v1 = type metadata accessor for CheckInvalidAccessCredentialsTask();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v0[20] = v1;
  v0[21] = sub_1000B6BFC(&qword_10016C970, 255, type metadata accessor for CheckInvalidAccessCredentialsTask);
  v0[17] = v2;
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_1000B5B28;
  v4 = v0[27];
  v5 = v0[28];

  return sub_1000B62A0((v0 + 17), (v0 + 7), v4);
}

uint64_t sub_1000B5B28()
{
  v2 = *v1;
  v3 = (*v1)[46];
  v8 = *v1;
  (*v1)[47] = v0;

  if (v0)
  {
    v4 = v2[36];
    v5 = v2[37];
    v6 = sub_1000B612C;
  }

  else
  {
    sub_100026FDC(v2 + 17);
    v4 = v2[36];
    v5 = v2[37];
    v6 = sub_1000B5C44;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000B5C44()
{
  v1 = *(v0 + 384);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 312);
  v13 = *(v0 + 280);
  v14 = *(v0 + 304);
  v12 = *(v0 + 272);
  v15 = *(v0 + 264);
  v16 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  TaskLocal.get()();
  v7 = *(v0 + 208);
  sub_100026F50((v0 + 176), *(v0 + 200));
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 56));
  sub_100026FDC((v0 + 176));
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = v12;
  v9[3] = v13;
  v9[4] = v6;

  sub_10009C9B8(0, 0, v5, &unk_100132B90, v9);

  sub_1000B6920("OnlineMaintenanceTask.run", 25, 2);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000B5E54()
{
  v1 = v0[43];
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[29];
  v8 = v0[27];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001324D0, v10);

  sub_1000B6920("OnlineMaintenanceTask.run", 25, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B5FB8()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 12);
  v1 = v0[45];
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[29];
  v8 = v0[27];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001327D0, v10);

  sub_1000B6920("OnlineMaintenanceTask.run", 25, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B612C()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 17);
  v1 = v0[47];
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[33];
  v7 = v0[29];
  v8 = v0[27];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001327E0, v10);

  sub_1000B6920("OnlineMaintenanceTask.run", 25, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B62A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_1000B6334, v3, 0);
}

uint64_t sub_1000B6334()
{
  static Task<>.checkCancellation()();
  v1 = *sub_100026F50(*(v0 + 160), *(*(v0 + 160) + 24));
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_1000B6430;
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);

  return sub_100095AAC(v4, v3);
}

uint64_t sub_1000B6430()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {
    v4 = v3[22];

    return _swift_task_switch(sub_1000B656C, v4, 0);
  }

  else
  {
    v5 = v3[23];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1000B656C()
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[19];
  TaskLocal.get()();
  v4 = v0[6];
  sub_100026F50(v0 + 2, v0[5]);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x800000010013C9D0;
  v8._countAndFlagsBits = 0xD000000000000014;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  sub_100026F50(v3, v3[3]);
  DynamicType = swift_getDynamicType();
  v0[10] = swift_getMetatypeMetadata();
  v0[7] = DynamicType;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 7));
  v10._countAndFlagsBits = 2629678;
  v10._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  swift_getErrorValue();
  v11 = v0[15];
  v12 = v0[16];
  v0[14] = v12;
  v13 = sub_100042BAC(v0 + 11);
  (*(*(v12 - 8) + 16))(v13, v11, v12);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 11));
  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100026FDC(v0 + 2);
  v15 = v0[23];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000B682C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042680;

  return sub_1000B51DC(a1);
}

uint64_t sub_1000B68C4(uint64_t a1, uint64_t a2)
{
  result = sub_1000B6BFC(&qword_10016CA50, a2, type metadata accessor for OnlineMaintenanceTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B6920(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A5D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016C998);
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

uint64_t sub_1000B6BFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000B6C50()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016CA60);
  v1 = sub_10002FD14(v0, qword_10016CA60);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B6D18(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = *(*(sub_100026F94(&qword_10016CB48, &qword_100132C60) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for AccessCredential();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = type metadata accessor for OSSignpostID();
  v2[14] = v8;
  v9 = *(v8 - 8);
  v2[15] = v9;
  v10 = *(v9 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[18] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[19] = sub_1000B7D68(&qword_10016ADA0, type metadata accessor for DaemonActor);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[20] = v12;
  v2[21] = v11;

  return _swift_task_switch(sub_1000B6F44, v12, v11);
}

uint64_t sub_1000B6F44()
{
  if (qword_10016A5D8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016CA60);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "PostScheduledNotificationsTask.run", "", v6, 2u);
  }

  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[15];

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[22] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v15 = sub_100026F94(&qword_10016CB50, &qword_100133370);
  v16 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v17 = swift_task_alloc();
  v0[23] = v17;
  *v17 = v0;
  v17[1] = sub_1000B7150;
  v18 = v0[7];

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v15, v15);
}

uint64_t sub_1000B7150()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 168);
  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_1000B7974;
  }

  else
  {
    v7 = sub_1000B728C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000B728C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_1000B8090(v0[8] + OBJC_IVAR____TtC19amsondevicestoraged30PostScheduledNotificationsTask_credential, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000B8100(v0[10]);
    v4 = *sub_100026F50(v0 + 2, v0[5]);
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    v5[1] = sub_1000B76D0;

    return sub_100072840();
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    v7 = *sub_100026F50(v0 + 2, v0[5]);
    v8 = swift_task_alloc();
    v0[25] = v8;
    *v8 = v0;
    v8[1] = sub_1000B7414;
    v9 = v0[13];

    return sub_100071670(v9);
  }
}

uint64_t sub_1000B7414()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return _swift_task_switch(sub_1000B7534, v4, v3);
}

uint64_t sub_1000B7534()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[9];
  v13 = v0[10];
  v8 = v0[7];
  sub_100026FDC(v0 + 2);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_100132C68, v10);

  sub_1000B7DB4("PostScheduledNotificationsTask.run", 34, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B76D0()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return _swift_task_switch(sub_1000B77F0, v4, v3);
}

uint64_t sub_1000B77F0()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[9];
  v13 = v0[10];
  v8 = v0[7];
  sub_100026FDC(v0 + 2);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_100132C68, v10);

  sub_1000B7DB4("PostScheduledNotificationsTask.run", 34, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B7974()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[9];
  v14 = v0[10];
  v8 = v0[7];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001324D0, v10);

  sub_1000B7DB4("PostScheduledNotificationsTask.run", 34, 2);

  v11 = v0[1];
  v12 = v0[24];

  return v11();
}

uint64_t sub_1000B7AF0()
{
  sub_1000B8100(v0 + OBJC_IVAR____TtC19amsondevicestoraged30PostScheduledNotificationsTask_credential);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for PostScheduledNotificationsTask()
{
  result = qword_10016CAA8;
  if (!qword_10016CAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B7B84()
{
  sub_1000B7C20();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000B7C20()
{
  if (!qword_10016CAB8)
  {
    type metadata accessor for AccessCredential();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10016CAB8);
    }
  }
}

uint64_t sub_1000B7C78(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042680;

  return sub_1000B6D18(a1);
}

uint64_t sub_1000B7D10(uint64_t a1)
{
  result = sub_1000B7D68(&qword_10016CB40, type metadata accessor for PostScheduledNotificationsTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B7D68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B7DB4(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A5D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016CA60);
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

uint64_t sub_1000B8090(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026F94(&qword_10016CB48, &qword_100132C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B8100(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016CB48, &qword_100132C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B816C()
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_1000B81CC()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016CB80);
  v1 = sub_10002FD14(v0, qword_10016CB80);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B8294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for TTLCleanupTask.CredentialSource(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000A3D14(a1, v20);
  v10 = type metadata accessor for TTLCleanupTask(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  v14 = v20[14];
  v13[14] = v20[13];
  v13[15] = v14;
  v15 = v20[16];
  v13[16] = v20[15];
  v13[17] = v15;
  v17 = v20[0];
  v16 = v20[1];

  sub_1000A3D70(v20);
  *v9 = v17;
  v9[1] = v16;
  swift_storeEnumTagMultiPayload();
  sub_1000BBB30(v9, v13 + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_credentialSource);
  *(v13 + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_connection) = a2;
  a3[3] = v10;
  a3[4] = sub_1000BBF18(&qword_10016CC48, 255, type metadata accessor for TTLCleanupTask);
  *a3 = v13;
}

uint64_t sub_1000B840C(uint64_t a1)
{
  v2[106] = v1;
  v2[105] = a1;
  v3 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2[107] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[108] = swift_task_alloc();
  v5 = type metadata accessor for StorageCategory();
  v2[109] = v5;
  v6 = *(v5 - 8);
  v2[110] = v6;
  v7 = *(v6 + 64) + 15;
  v2[111] = swift_task_alloc();
  v8 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[112] = swift_task_alloc();
  v9 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v10 = type metadata accessor for OSSignpostID();
  v2[116] = v10;
  v11 = *(v10 - 8);
  v2[117] = v11;
  v12 = *(v11 + 64) + 15;
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[120] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[121] = sub_1000BBF18(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[122] = v14;
  v2[123] = v13;

  return _swift_task_switch(sub_1000B8680, v14, v13);
}

uint64_t sub_1000B8680()
{
  if (qword_10016A5E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 952);
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016CB80);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 952);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "ScheduledTTLCleanupTask.run", "", v6, 2u);
  }

  v8 = *(v0 + 952);
  v9 = *(v0 + 944);
  v10 = *(v0 + 936);
  v11 = *(v0 + 928);

  (*(v10 + 16))(v9, v8, v11);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 992) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v8, v11);
  if (qword_10016A5E0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016CB58, qword_10016CB70);
  *(v0 + 1000) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v15 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 1008) = *(v15 + 72);
  *(v0 + 1240) = *(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v16 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
  v17 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v18 = swift_task_alloc();
  *(v0 + 1016) = v18;
  *v18 = v0;
  v18[1] = sub_1000B89B4;
  v19 = *(v0 + 840);

  return BaseObjectGraph.inject<A>(_:)(v0 + 288, v16, v16);
}

uint64_t sub_1000B89B4()
{
  v2 = *(*v1 + 1016);
  v3 = *v1;
  v3[128] = v0;

  if (v0)
  {
    v4 = v3[123];
    v5 = v3[122];

    return _swift_task_switch(sub_1000BB63C, v5, v4);
  }

  else
  {
    v6 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v8 = swift_task_alloc();
    v3[129] = v8;
    *v8 = v3;
    v8[1] = sub_1000B8B58;
    v9 = v3[105];

    return BaseObjectGraph.inject<A>(_:)(v3 + 41, v6, v6);
  }
}

uint64_t sub_1000B8B58()
{
  v2 = *v1;
  v3 = *(*v1 + 1032);
  v4 = *v1;
  *(*v1 + 1040) = v0;

  v5 = *(v2 + 984);
  v6 = *(v2 + 976);
  if (v0)
  {
    v7 = sub_1000BB7F4;
  }

  else
  {
    v7 = sub_1000B8C94;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000B8C94()
{
  v1 = *sub_100026F50(v0 + 41, v0[44]);
  v2 = swift_task_alloc();
  v0[131] = v2;
  *v2 = v0;
  v2[1] = sub_1000B8D30;

  return sub_1000696AC();
}

uint64_t sub_1000B8D30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1048);
  v6 = *v2;
  *(*v2 + 1056) = v1;

  if (v1)
  {
    v7 = v4[123];
    v8 = v4[122];
    v9 = sub_1000B8E60;
  }

  else
  {
    v4[133] = a1;
    v7 = v4[123];
    v8 = v4[122];
    v9 = sub_1000B9028;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1000B8E60()
{
  sub_100026FDC(v0 + 41);
  sub_100026FDC(v0 + 36);
  v1 = v0[124];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  v6 = v0[115];
  v7 = v0[114];
  v13 = v0[113];
  v14 = v0[112];
  v15 = v0[111];
  v16 = v0[108];
  v17 = v0[132];
  v8 = v0[105];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v6, &unk_1001327E0, v10);

  sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000B9028()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 1000);
  v6 = *(v0 + 896);

  v8 = sub_1000BC240(v7);
  *(v0 + 1072) = v8;

  sub_100026F50(qword_10016CB58, qword_10016CB70);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x20646E756F46;
  v9._object = 0xE600000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v10 = *(v1 + 16);

  *(v0 + 512) = &type metadata for Int;
  *(v0 + 488) = v10;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 488, &qword_10016AB10, &unk_100130B10);
  v11._object = 0x800000010013CBB0;
  v11._countAndFlagsBits = 0xD000000000000016;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v12 = *(v8 + 16);
  *(v0 + 544) = &type metadata for Int;
  *(v0 + 520) = v12;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 520, &qword_10016AB10, &unk_100130B10);
  v13._countAndFlagsBits = 0xD000000000000020;
  v13._object = 0x800000010013CBD0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v17 = 0;
  v18 = *(v8 + 32);
  *(v0 + 1248) = v18;
  v19 = 1 << v18;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v8 + 64);
  *(v0 + 1244) = enum case for StorageCategory.classC(_:);
  if (v21)
  {
    while (1)
    {
      v22 = *(v0 + 1072);
LABEL_10:
      *(v0 + 1088) = v17;
      *(v0 + 1080) = v21;
      v24 = *(v0 + 1240);
      v25 = *(v0 + 1008);
      v26 = *(v0 + 1000);
      v27 = *(v0 + 896);
      v28 = __clz(__rbit64(v21)) | (v17 << 6);
      v29 = (*(v22 + 48) + 16 * v28);
      v30 = *v29;
      *(v0 + 1096) = *v29;
      v31 = v29[1];
      *(v0 + 1104) = v31;
      v32 = *(*(v22 + 56) + 8 * v28);
      *(v0 + 1112) = v32;
      sub_100026F50(qword_10016CB58, qword_10016CB70);
      *(swift_allocObject() + 16) = xmmword_10012FA10;

      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v33._countAndFlagsBits = 0xD000000000000021;
      v33._object = 0x800000010013CC00;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      *(v0 + 576) = &type metadata for String;
      *(v0 + 552) = v30;
      *(v0 + 560) = v31;

      LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
      sub_10002BA6C(v0 + 552, &qword_10016AB10, &unk_100130B10);
      v34._countAndFlagsBits = 0x206874697720;
      v34._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      v35 = *(v32 + 16);
      *(v0 + 608) = &type metadata for Int;
      *(v0 + 584) = v35;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 584, &qword_10016AB10, &unk_100130B10);
      v36._countAndFlagsBits = 0x73656C62617420;
      v36._object = 0xE700000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v37 = *(v32 + 16);
      *(v0 + 1120) = v37;
      if (v37)
      {
        break;
      }

      v17 = *(v0 + 1088);
      v21 = (*(v0 + 1080) - 1) & *(v0 + 1080);
      if (!v21)
      {
        goto LABEL_6;
      }
    }

    *(v0 + 1144) = 0;
    *(v0 + 1128) = 0u;
    v50 = *(v0 + 848);
    sub_1000A3D14(*(v0 + 1112) + 32, v0 + 16);
    v51 = sub_100026F50((v0 + 288), *(v0 + 312));
    v52 = *v50;
    *(v0 + 1152) = _typeName(_:qualified:)();
    *(v0 + 1160) = v53;
    *(v0 + 1168) = *v51;
    v14 = sub_1000B975C;
    v15 = 0;
    v16 = 0;

    return _swift_task_switch(v14, v15, v16);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return _swift_task_switch(v14, v15, v16);
      }

      if (v23 >= (((1 << *(v0 + 1248)) + 63) >> 6))
      {
        break;
      }

      v22 = *(v0 + 1072);
      v21 = *(v22 + 8 * v23 + 64);
      ++v17;
      if (v21)
      {
        v17 = v23;
        goto LABEL_10;
      }
    }

    v38 = *(v0 + 1072);
    v39 = *(v0 + 1240);
    v40 = *(v0 + 1008);
    v41 = *(v0 + 1000);
    v56 = *(v0 + 968);
    v57 = *(v0 + 992);
    v58 = *(v0 + 952);
    v59 = *(v0 + 944);
    v54 = *(v0 + 920);
    v55 = *(v0 + 960);
    v60 = *(v0 + 912);
    v61 = *(v0 + 904);
    v42 = *(v0 + 896);
    v62 = *(v0 + 888);
    v63 = *(v0 + 864);
    v43 = *(v0 + 840);

    sub_100026F50(qword_10016CB58, qword_10016CB70);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v44._countAndFlagsBits = 0xD000000000000039;
    v44._object = 0x800000010013CC60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v44);
    *(v0 + 800) = &type metadata for Int;
    *(v0 + 776) = 0;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 776, &qword_10016AB10, &unk_100130B10);
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v45);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 328));
    sub_100026FDC((v0 + 288));
    v46 = type metadata accessor for TaskPriority();
    (*(*(v46 - 8) + 56))(v54, 1, 1, v46);
    v47 = swift_allocObject();
    v47[2] = v55;
    v47[3] = v56;
    v47[4] = v43;

    sub_10009C9B8(0, 0, v54, &unk_100132500, v47);

    sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2);

    v48 = *(v0 + 8);

    return v48(0);
  }
}

uint64_t sub_1000B975C()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1244);
  v3 = *(v0 + 888);
  v4 = *(v0 + 880);
  v5 = *(v0 + 872);
  v6 = *(v0 + 144);
  *(v0 + 1176) = *(v0 + 136);
  *(v0 + 1184) = v6;
  (*(v4 + 104))(v3, v2, v5);

  return _swift_task_switch(sub_1000B97EC, v1, 0);
}

uint64_t sub_1000B97EC()
{
  v1 = v0[148];
  v2 = v0[147];
  v3 = v0[108];
  v4 = v0[107];
  (*(v0[110] + 16))(&v3[v4[5]], v0[111], v0[109]);
  v5 = v0[6];
  v6 = v0[7];
  *v3 = v2;
  *(v3 + 1) = v1;
  v7 = &v3[v4[6]];
  *v7 = v5;
  *(v7 + 1) = v6;
  v3[v4[7]] = 0;
  v3[v4[8]] = 1;

  v8 = swift_task_alloc();
  v0[149] = v8;
  *v8 = v0;
  v8[1] = sub_1000B990C;
  v9 = v0[146];
  v10 = v0[145];
  v11 = v0[144];
  v12 = v0[108];

  return sub_100050F58(v12, v11, v10);
}

uint64_t sub_1000B990C(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[149];
  v16 = *v2;
  v3[150] = a1;
  v3[151] = v1;

  if (v1)
  {
    v5 = v3[146];
    v6 = v3[145];
    sub_100054A78(v3[108]);

    v7 = sub_1000B9C80;
    v8 = v5;
    v9 = 0;
  }

  else
  {
    v10 = v3[145];
    v11 = v3[111];
    v12 = v3[110];
    v13 = v3[109];
    v14 = v3[108];

    sub_100054A78(v14);
    (*(v12 + 8))(v11, v13);
    v9 = v3[123];
    v8 = v3[122];
    v7 = sub_1000B9A90;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000B9A90()
{
  v1 = v0[106];
  v2 = *(v1 + 120);
  (*(v1 + 112))(v0 + 2, v0[150]);
  v3 = *sub_100026F50(v0 + 46, v0[49]);
  v4 = swift_task_alloc();
  v0[152] = v4;
  *v4 = v0;
  v4[1] = sub_1000B9B50;
  v5 = v0[105];

  return sub_1000BF074(v5);
}

uint64_t sub_1000B9B50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1216);
  v6 = *v2;
  *(*v2 + 1224) = v1;

  if (v1)
  {
    v7 = v4[123];
    v8 = v4[122];
    v9 = sub_1000BADE8;
  }

  else
  {
    v4[154] = a1;
    v7 = v4[123];
    v8 = v4[122];
    v9 = sub_1000BA538;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1000B9C80()
{
  (*(v0[110] + 8))(v0[111], v0[109]);

  return _swift_task_switch(sub_1000B9CFC, 0, 0);
}

uint64_t sub_1000B9D18()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1104);
  v66 = *(v0 + 1096);
  v69 = *(v0 + 1208);
  v4 = *(v0 + 1240);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 1000);
  v7 = *(v0 + 896);
  sub_100026F50(qword_10016CB58, qword_10016CB70);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD000000000000029;
  v8._object = 0x800000010013CC30;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  *(v0 + 640) = &type metadata for String;
  *(v0 + 616) = v10;
  *(v0 + 624) = v9;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 616, &qword_10016AB10, &unk_100130B10);
  v11._countAndFlagsBits = 0x65686373206E6920;
  v11._object = 0xEC000000203A616DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  *(v0 + 672) = &type metadata for String;
  *(v0 + 648) = v2;
  *(v0 + 656) = v1;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 648, &qword_10016AB10, &unk_100130B10);
  v12._countAndFlagsBits = 0x65737520726F6620;
  v12._object = 0xEB00000000203A72;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v0 + 704) = &type metadata for String;
  *(v0 + 680) = v66;
  *(v0 + 688) = v3;

  LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
  sub_10002BA6C(v0 + 680, &qword_10016AB10, &unk_100130B10);
  v13._countAndFlagsBits = 0x3A726F727265202CLL;
  v13._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  swift_getErrorValue();
  v14 = *(v0 + 808);
  v15 = *(v0 + 816);
  *(v0 + 736) = v15;
  v16 = sub_100042BAC((v0 + 712));
  (*(*(v15 - 8) + 16))(v16, v14, v15);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 712, &qword_10016AB10, &unk_100130B10);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v67 = *(v0 + 1136);
  v70 = *(v0 + 1128);
  v18 = *(v0 + 1120);
  v19 = *(v0 + 1144) + 1;
  sub_1000A3D70(v0 + 16);
  if (v19 == v18)
  {
    v20 = *(v0 + 1112);
    v21 = *(v0 + 1104);

    {
      v25 = *(v0 + 1088);
      v26 = (*(v0 + 1080) - 1) & *(v0 + 1080);
      if (!v26)
      {
        break;
      }

      v27 = *(v0 + 1072);
LABEL_9:
      *(v0 + 1088) = v25;
      *(v0 + 1080) = v26;
      v29 = *(v0 + 1240);
      v30 = *(v0 + 1008);
      v31 = *(v0 + 1000);
      v32 = *(v0 + 896);
      v33 = __clz(__rbit64(v26)) | (v25 << 6);
      v34 = (*(v27 + 48) + 16 * v33);
      v35 = *v34;
      *(v0 + 1096) = *v34;
      v36 = v34[1];
      *(v0 + 1104) = v36;
      v37 = *(*(v27 + 56) + 8 * v33);
      *(v0 + 1112) = v37;
      sub_100026F50(qword_10016CB58, qword_10016CB70);
      *(swift_allocObject() + 16) = xmmword_10012FA10;

      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v38._object = 0x800000010013CC00;
      v38._countAndFlagsBits = 0xD000000000000021;
      LogMessage.StringInterpolation.appendLiteral(_:)(v38);
      *(v0 + 576) = &type metadata for String;
      *(v0 + 552) = v35;
      *(v0 + 560) = v36;

      LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
      sub_10002BA6C(v0 + 552, &qword_10016AB10, &unk_100130B10);
      v39._countAndFlagsBits = 0x206874697720;
      v39._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      v40 = *(v37 + 16);
      *(v0 + 608) = &type metadata for Int;
      *(v0 + 584) = v40;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 584, &qword_10016AB10, &unk_100130B10);
      v41._countAndFlagsBits = 0x73656C62617420;
      v41._object = 0xE700000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v42 = *(v37 + 16);
      *(v0 + 1120) = v42;
      if (v42)
      {
        v43 = 0;
        goto LABEL_12;
      }
    }

    while (1)
    {
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        return _swift_task_switch(i, v23, v24);
      }

      if (v28 >= (((1 << *(v0 + 1248)) + 63) >> 6))
      {
        break;
      }

      v27 = *(v0 + 1072);
      v26 = *(v27 + 8 * v28 + 64);
      ++v25;
      if (v26)
      {
        v25 = v28;
        goto LABEL_9;
      }
    }

    v48 = *(v0 + 1072);
    v49 = *(v0 + 1240);
    v50 = *(v0 + 1008);
    v51 = *(v0 + 1000);
    v62 = *(v0 + 968);
    v63 = *(v0 + 992);
    v64 = *(v0 + 952);
    v65 = *(v0 + 944);
    v60 = *(v0 + 920);
    v61 = *(v0 + 960);
    v68 = *(v0 + 912);
    v71 = *(v0 + 904);
    v52 = *(v0 + 896);
    v72 = *(v0 + 888);
    v73 = *(v0 + 864);
    v53 = *(v0 + 840);

    sub_100026F50(qword_10016CB58, qword_10016CB70);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v54._countAndFlagsBits = 0xD000000000000039;
    v54._object = 0x800000010013CC60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v54);
    *(v0 + 800) = &type metadata for Int;
    *(v0 + 776) = v70;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 776, &qword_10016AB10, &unk_100130B10);
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v55);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 328));
    sub_100026FDC((v0 + 288));
    v56 = type metadata accessor for TaskPriority();
    (*(*(v56 - 8) + 56))(v60, 1, 1, v56);
    v57 = swift_allocObject();
    v57[2] = v61;
    v57[3] = v62;
    v57[4] = v53;

    sub_10009C9B8(0, 0, v60, &unk_100132500, v57);

    sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2);

    v58 = *(v0 + 8);

    return v58(v70);
  }

  else
  {
    v43 = *(v0 + 1144) + 1;
LABEL_12:
    *(v0 + 1144) = v43;
    *(v0 + 1136) = v67;
    *(v0 + 1128) = v70;
    v44 = *(v0 + 848);
    sub_1000A3D14(*(v0 + 1112) + 136 * v43 + 32, v0 + 16);
    v45 = sub_100026F50((v0 + 288), *(v0 + 312));
    v46 = *v44;
    *(v0 + 1152) = _typeName(_:qualified:)();
    *(v0 + 1160) = v47;
    *(v0 + 1168) = *v45;
    i = sub_1000B975C;
    v23 = 0;
    v24 = 0;

    return _swift_task_switch(i, v23, v24);
  }
}

uint64_t sub_1000BA538(uint64_t (*i)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 1232);
  v5 = *(v3 + 1136);
  v6 = __OFADD__(v5, v4);
  v7 = v5 + v4;
  if (v6)
  {
LABEL_29:
    __break(1u);
    return _swift_task_switch(i, a2, a3);
  }

  v74 = v7;
  v77 = *(v3 + 968);
  v8 = *(v3 + 960);
  v9 = *(v3 + 912);
  v10 = *(v3 + 904);
  v11 = *(v3 + 848);
  sub_100026FDC((v3 + 368));
  v12 = *sub_100026F50((v3 + 288), *(v3 + 312));
  *(v3 + 432) = type metadata accessor for DatabaseConnectionManagerImplementation();
  *(v3 + 440) = &off_100164E98;
  *(v3 + 408) = v12;
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v72 = *(v14 + 56);
  v72(v9, 1, 1, v13);
  sub_100026EEC(v3 + 408, v3 + 448);
  sub_1000A3D14(v3 + 16, v3 + 152);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v77;
  sub_10002C604((v3 + 448), v15 + 32);
  *(v15 + 152) = *(v3 + 232);
  *(v15 + 168) = *(v3 + 248);
  *(v15 + 184) = *(v3 + 264);
  v16 = *(v3 + 280);
  *(v15 + 88) = *(v3 + 168);
  *(v15 + 104) = *(v3 + 184);
  *(v15 + 120) = *(v3 + 200);
  *(v15 + 136) = *(v3 + 216);
  *(v15 + 72) = *(v3 + 152);
  *(v15 + 200) = v16;
  *(v15 + 208) = v11;
  sub_100042774(v9, v10);
  v17 = v10;
  v18 = v13;
  LODWORD(v13) = (*(v14 + 48))(v17, 1, v13);

  v19 = *(v3 + 904);
  v73 = v18;
  if (v13 == 1)
  {
    sub_10002BA6C(v19, &qword_10016AD80, &qword_1001311B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v19, v18);
  }

  v21 = *(v15 + 16);
  v20 = *(v15 + 24);
  swift_unknownObjectRetain();

  if (v21)
  {
    swift_getObjectType();
    v22 = dispatch thunk of Actor.unownedExecutor.getter();
    v24 = v23;
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  sub_10002BA6C(*(v3 + 912), &qword_10016AD80, &qword_1001311B0);
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_100132D20;
  *(v25 + 24) = v15;
  if (v24 | v22)
  {
    *(v3 + 744) = 0;
    *(v3 + 752) = 0;
    *(v3 + 760) = v22;
    *(v3 + 768) = v24;
  }

  v26 = *(v3 + 1200);
  swift_task_create();

  sub_100026FDC((v3 + 408));
  v27 = *(v3 + 1120);
  v28 = *(v3 + 1144) + 1;
  sub_1000A3D70(v3 + 16);
  if (v28 != v27)
  {
    v49 = *(v3 + 1144) + 1;
LABEL_21:
    *(v3 + 1144) = v49;
    *(v3 + 1136) = v74;
    *(v3 + 1128) = v74;
    v50 = *(v3 + 848);
    sub_1000A3D14(*(v3 + 1112) + 136 * v49 + 32, v3 + 16);
    v51 = sub_100026F50((v3 + 288), *(v3 + 312));
    v52 = *v50;
    *(v3 + 1152) = _typeName(_:qualified:)();
    *(v3 + 1160) = v53;
    *(v3 + 1168) = *v51;
    i = sub_1000B975C;
    a2 = 0;
    a3 = 0;

    return _swift_task_switch(i, a2, a3);
  }

  v29 = *(v3 + 1112);
  v30 = *(v3 + 1104);

  {
    v31 = *(v3 + 1088);
    v32 = (*(v3 + 1080) - 1) & *(v3 + 1080);
    if (!v32)
    {
      break;
    }

    v33 = *(v3 + 1072);
LABEL_18:
    *(v3 + 1088) = v31;
    *(v3 + 1080) = v32;
    v35 = *(v3 + 1240);
    v36 = *(v3 + 1008);
    v37 = *(v3 + 1000);
    v38 = *(v3 + 896);
    v39 = __clz(__rbit64(v32)) | (v31 << 6);
    v40 = (*(v33 + 48) + 16 * v39);
    v41 = *v40;
    *(v3 + 1096) = *v40;
    v42 = v40[1];
    *(v3 + 1104) = v42;
    v43 = *(*(v33 + 56) + 8 * v39);
    *(v3 + 1112) = v43;
    sub_100026F50(qword_10016CB58, qword_10016CB70);
    *(swift_allocObject() + 16) = xmmword_10012FA10;

    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v44._object = 0x800000010013CC00;
    v44._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v44);
    *(v3 + 576) = &type metadata for String;
    *(v3 + 552) = v41;
    *(v3 + 560) = v42;

    LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
    sub_10002BA6C(v3 + 552, &qword_10016AB10, &unk_100130B10);
    v45._countAndFlagsBits = 0x206874697720;
    v45._object = 0xE600000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v45);
    v46 = *(v43 + 16);
    *(v3 + 608) = &type metadata for Int;
    *(v3 + 584) = v46;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v3 + 584, &qword_10016AB10, &unk_100130B10);
    v47._countAndFlagsBits = 0x73656C62617420;
    v47._object = 0xE700000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v47);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v48 = *(v43 + 16);
    *(v3 + 1120) = v48;
    if (v48)
    {
      v49 = 0;
      goto LABEL_21;
    }
  }

  while (1)
  {
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v34 >= (((1 << *(v3 + 1248)) + 63) >> 6))
    {
      break;
    }

    v33 = *(v3 + 1072);
    v32 = *(v33 + 8 * v34 + 64);
    ++v31;
    if (v32)
    {
      v31 = v34;
      goto LABEL_18;
    }
  }

  v54 = *(v3 + 1072);
  v55 = *(v3 + 1240);
  v56 = *(v3 + 1008);
  v57 = *(v3 + 1000);
  v67 = *(v3 + 968);
  v68 = *(v3 + 992);
  v69 = *(v3 + 952);
  v70 = *(v3 + 944);
  v65 = *(v3 + 920);
  v66 = *(v3 + 960);
  v71 = *(v3 + 912);
  v75 = *(v3 + 904);
  v58 = *(v3 + 896);
  v76 = *(v3 + 888);
  v78 = *(v3 + 864);
  v59 = *(v3 + 840);

  sub_100026F50(qword_10016CB58, qword_10016CB70);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v60._countAndFlagsBits = 0xD000000000000039;
  v60._object = 0x800000010013CC60;
  LogMessage.StringInterpolation.appendLiteral(_:)(v60);
  *(v3 + 800) = &type metadata for Int;
  *(v3 + 776) = v74;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v3 + 776, &qword_10016AB10, &unk_100130B10);
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v61);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026FDC((v3 + 328));
  sub_100026FDC((v3 + 288));
  v72(v65, 1, 1, v73);
  v62 = swift_allocObject();
  v62[2] = v66;
  v62[3] = v67;
  v62[4] = v59;

  sub_10009C9B8(0, 0, v65, &unk_100132500, v62);

  sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2);

  v63 = *(v3 + 8);

  return v63(v74);
}

uint64_t sub_1000BADE8()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 848);
  sub_100026FDC((v0 + 368));
  v3 = sub_100026F50((v0 + 288), *(v0 + 312));
  sub_1000BBCE8(*v3, v0 + 16, v2);

  v4 = *(v0 + 1184);
  v5 = *(v0 + 1176);
  v6 = *(v0 + 1104);
  v69 = *(v0 + 1096);
  v72 = *(v0 + 1224);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1008);
  v9 = *(v0 + 1000);
  v10 = *(v0 + 896);
  sub_100026F50(qword_10016CB58, qword_10016CB70);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000029;
  v11._object = 0x800000010013CC30;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);
  *(v0 + 640) = &type metadata for String;
  *(v0 + 616) = v13;
  *(v0 + 624) = v12;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 616, &qword_10016AB10, &unk_100130B10);
  v14._countAndFlagsBits = 0x65686373206E6920;
  v14._object = 0xEC000000203A616DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v0 + 672) = &type metadata for String;
  *(v0 + 648) = v5;
  *(v0 + 656) = v4;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 648, &qword_10016AB10, &unk_100130B10);
  v15._countAndFlagsBits = 0x65737520726F6620;
  v15._object = 0xEB00000000203A72;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v0 + 704) = &type metadata for String;
  *(v0 + 680) = v69;
  *(v0 + 688) = v6;

  LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
  sub_10002BA6C(v0 + 680, &qword_10016AB10, &unk_100130B10);
  v16._countAndFlagsBits = 0x3A726F727265202CLL;
  v16._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  swift_getErrorValue();
  v17 = *(v0 + 808);
  v18 = *(v0 + 816);
  *(v0 + 736) = v18;
  v19 = sub_100042BAC((v0 + 712));
  (*(*(v18 - 8) + 16))(v19, v17, v18);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 712, &qword_10016AB10, &unk_100130B10);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v70 = *(v0 + 1136);
  v73 = *(v0 + 1128);
  v21 = *(v0 + 1120);
  v22 = *(v0 + 1144) + 1;
  sub_1000A3D70(v0 + 16);
  if (v22 == v21)
  {
    v23 = *(v0 + 1112);
    v24 = *(v0 + 1104);

    {
      v28 = *(v0 + 1088);
      v29 = (*(v0 + 1080) - 1) & *(v0 + 1080);
      if (!v29)
      {
        break;
      }

      v30 = *(v0 + 1072);
LABEL_9:
      *(v0 + 1088) = v28;
      *(v0 + 1080) = v29;
      v32 = *(v0 + 1240);
      v33 = *(v0 + 1008);
      v34 = *(v0 + 1000);
      v35 = *(v0 + 896);
      v36 = __clz(__rbit64(v29)) | (v28 << 6);
      v37 = (*(v30 + 48) + 16 * v36);
      v38 = *v37;
      *(v0 + 1096) = *v37;
      v39 = v37[1];
      *(v0 + 1104) = v39;
      v40 = *(*(v30 + 56) + 8 * v36);
      *(v0 + 1112) = v40;
      sub_100026F50(qword_10016CB58, qword_10016CB70);
      *(swift_allocObject() + 16) = xmmword_10012FA10;

      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v41._object = 0x800000010013CC00;
      v41._countAndFlagsBits = 0xD000000000000021;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v0 + 576) = &type metadata for String;
      *(v0 + 552) = v38;
      *(v0 + 560) = v39;

      LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
      sub_10002BA6C(v0 + 552, &qword_10016AB10, &unk_100130B10);
      v42._countAndFlagsBits = 0x206874697720;
      v42._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v42);
      v43 = *(v40 + 16);
      *(v0 + 608) = &type metadata for Int;
      *(v0 + 584) = v43;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 584, &qword_10016AB10, &unk_100130B10);
      v44._countAndFlagsBits = 0x73656C62617420;
      v44._object = 0xE700000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v45 = *(v40 + 16);
      *(v0 + 1120) = v45;
      if (v45)
      {
        v46 = 0;
        goto LABEL_12;
      }
    }

    while (1)
    {
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return _swift_task_switch(i, v26, v27);
      }

      if (v31 >= (((1 << *(v0 + 1248)) + 63) >> 6))
      {
        break;
      }

      v30 = *(v0 + 1072);
      v29 = *(v30 + 8 * v31 + 64);
      ++v28;
      if (v29)
      {
        v28 = v31;
        goto LABEL_9;
      }
    }

    v51 = *(v0 + 1072);
    v52 = *(v0 + 1240);
    v53 = *(v0 + 1008);
    v54 = *(v0 + 1000);
    v65 = *(v0 + 968);
    v66 = *(v0 + 992);
    v67 = *(v0 + 952);
    v68 = *(v0 + 944);
    v63 = *(v0 + 920);
    v64 = *(v0 + 960);
    v71 = *(v0 + 912);
    v74 = *(v0 + 904);
    v55 = *(v0 + 896);
    v75 = *(v0 + 888);
    v76 = *(v0 + 864);
    v56 = *(v0 + 840);

    sub_100026F50(qword_10016CB58, qword_10016CB70);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v57._countAndFlagsBits = 0xD000000000000039;
    v57._object = 0x800000010013CC60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v57);
    *(v0 + 800) = &type metadata for Int;
    *(v0 + 776) = v73;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 776, &qword_10016AB10, &unk_100130B10);
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v58);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 328));
    sub_100026FDC((v0 + 288));
    v59 = type metadata accessor for TaskPriority();
    (*(*(v59 - 8) + 56))(v63, 1, 1, v59);
    v60 = swift_allocObject();
    v60[2] = v64;
    v60[3] = v65;
    v60[4] = v56;

    sub_10009C9B8(0, 0, v63, &unk_100132500, v60);

    sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2);

    v61 = *(v0 + 8);

    return v61(v73);
  }

  else
  {
    v46 = *(v0 + 1144) + 1;
LABEL_12:
    *(v0 + 1144) = v46;
    *(v0 + 1136) = v70;
    *(v0 + 1128) = v73;
    v47 = *(v0 + 848);
    sub_1000A3D14(*(v0 + 1112) + 136 * v46 + 32, v0 + 16);
    v48 = sub_100026F50((v0 + 288), *(v0 + 312));
    v49 = *v47;
    *(v0 + 1152) = _typeName(_:qualified:)();
    *(v0 + 1160) = v50;
    *(v0 + 1168) = *v48;
    i = sub_1000B975C;
    v26 = 0;
    v27 = 0;

    return _swift_task_switch(i, v26, v27);
  }
}

uint64_t sub_1000BB63C()
{
  v1 = v0[124];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  v6 = v0[115];
  v7 = v0[114];
  v13 = v0[113];
  v14 = v0[112];
  v15 = v0[111];
  v16 = v0[108];
  v17 = v0[128];
  v8 = v0[105];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v6, &unk_1001324D0, v10);

  sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000BB7F4()
{
  sub_100026FDC(v0 + 36);
  v1 = v0[124];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  v6 = v0[115];
  v7 = v0[114];
  v13 = v0[113];
  v14 = v0[112];
  v15 = v0[111];
  v16 = v0[108];
  v17 = v0[130];
  v8 = v0[105];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v6, &unk_1001327D0, v10);

  sub_1000BBF64("ScheduledTTLCleanupTask.run", 27, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000BB9B4()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000BBA10(uint64_t a1)
{
  v4 = *v1;
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042680;

  return sub_1000B840C(a1);
}

uint64_t sub_1000BBAD8(uint64_t a1, uint64_t a2)
{
  result = sub_1000BBF18(&qword_10016CC40, a2, type metadata accessor for ScheduledTTLCleanupTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000BBB30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTLCleanupTask.CredentialSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BBB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  sub_1000BBF18(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B0678, v11, v10);
}

uint64_t sub_1000BBCE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v13 = sub_1000BBF18(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
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

  sub_10009C9B8(0, 0, v9, &unk_100132D30, v14);

  return sub_100026FDC(v25);
}

uint64_t sub_1000BBF18(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000BBF64(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A5E8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016CB80);
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

uint64_t sub_1000BC240(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v49 = &_swiftEmptyDictionarySingleton;
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = a1 + 32;
  v4 = &selRef_processInfo;
  while (1)
  {
    sub_1000A3D14(v3, &v40);
    if (v4[217] != -1)
    {
      swift_once();
    }

    type metadata accessor for DaemonActor();
    sub_1000BBF18(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v6 = v42;

    v8 = sub_10009E700(v6, *(&v6 + 1));
    v9 = v1[2];
    v10 = (v7 & 1) == 0;
    v11 = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      break;
    }

    v12 = v7;
    if (v1[3] < v11)
    {
      sub_1000A05B0(v11, 1);
      v1 = v49;
      v13 = sub_10009E700(v6, *(&v6 + 1));
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_23;
      }

      v8 = v13;
    }

    if (v12)
    {

      v15 = v1[7];
      v37 = v46;
      v38 = v47;
      v39 = v48;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v36 = v45;
      v31 = v40;
      v32 = v41;
      v16 = *(v15 + 8 * v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + 8 * v8) = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_10007E4A4(0, *(v16 + 2) + 1, 1, v16);
        *(v15 + 8 * v8) = v16;
      }

      v19 = *(v16 + 2);
      v18 = *(v16 + 3);
      if (v19 >= v18 >> 1)
      {
        v16 = sub_10007E4A4((v18 > 1), v19 + 1, 1, v16);
        *(v15 + 8 * v8) = v16;
      }

      *(v16 + 2) = v19 + 1;
      v5 = &v16[136 * v19];
      *(v5 + 2) = v31;
      *(v5 + 5) = v34;
      *(v5 + 6) = v35;
      *(v5 + 3) = v32;
      *(v5 + 4) = v33;
      *(v5 + 20) = v39;
      *(v5 + 8) = v37;
      *(v5 + 9) = v38;
      *(v5 + 7) = v36;
      v4 = &selRef_processInfo;
    }

    else
    {
      sub_100026F94(&qword_10016BBA0, &unk_100131870);
      v20 = swift_allocObject();
      v21 = v46;
      v22 = v47;
      v23 = v44;
      *(v20 + 112) = v45;
      *(v20 + 128) = v21;
      *(v20 + 144) = v22;
      v24 = v42;
      v25 = v43;
      v26 = v40;
      *(v20 + 48) = v41;
      *(v20 + 64) = v24;
      *(v20 + 80) = v25;
      *(v20 + 96) = v23;
      *(v20 + 160) = v48;
      *(v20 + 16) = xmmword_10012FA10;
      *(v20 + 32) = v26;
      v1[(v8 >> 6) + 8] |= 1 << v8;
      *(v1[6] + 16 * v8) = v6;
      *(v1[7] + 8 * v8) = v20;
      v27 = v1[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_22;
      }

      v1[2] = v29;
    }

    v3 += 136;
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000BC598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A444C;

  return sub_1000BBB94(a1, v4, v5, (v1 + 4), (v1 + 9), v6);
}

uint64_t sub_1000BC65C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BC694()
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

uint64_t sub_1000BC714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042680;

  return sub_1000BBB94(a1, v4, v5, (v1 + 4), (v1 + 9), v6);
}

uint64_t sub_1000BC7E8()
{
  v1 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v0[25] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v0[26] = qword_1001738A8;
  v2 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
  v3 = async function pointer to BaseObjectGraph.injectIfAvailable<A>(_:)[1];
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_1000BC90C;

  return BaseObjectGraph.injectIfAvailable<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_1000BC90C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 208);
  v6 = *v1;
  v3[28] = v2;

  type metadata accessor for DaemonActor();
  sub_1000BCFE8();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[29] = v8;
  v3[30] = v7;
  if (v2)
  {
    v9 = sub_1000BCD98;
  }

  else
  {
    v9 = sub_1000BCA68;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_1000BCA68()
{
  sub_1000BD040((v0 + 2), (v0 + 12));
  v1 = v0[15];
  if (v1)
  {
    v2 = sub_100026F50(v0 + 12, v1);
    v3 = *v2;
    v0[31] = *v2;

    return _swift_task_switch(sub_1000BCB50, v3, 0);
  }

  else
  {
    sub_10002BA6C((v0 + 2), &qword_10016CC50, &unk_100132D60);
    sub_10002BA6C((v0 + 12), &qword_10016CC50, &unk_100132D60);
    v4 = v0[25];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000BCB50()
{
  if (*(v0[31] + 216) <= 0)
  {
    if (qword_10016A3B8 != -1)
    {
      swift_once();
      v6 = v0[31];
    }

    sub_100026F50(qword_10016B350, qword_10016B368);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v1 = *(type metadata accessor for LogMessage() - 8);
    v2 = *(v1 + 72);
    v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_1000522FC(0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
    type metadata accessor for Connection();
    static Connection.releaseMemory()();
  }

  v4 = v0[29];
  v5 = v0[30];

  return _swift_task_switch(sub_1000BCD18, v4, v5);
}

uint64_t sub_1000BCD18()
{
  sub_10002BA6C((v0 + 2), &qword_10016CC50, &unk_100132D60);
  sub_100026FDC(v0 + 12);
  v1 = v0[25];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000BCD98()
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[25];
  TaskLocal.get()();
  v3 = v0[11];
  sub_100026F50(v0 + 7, v0[10]);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013CCE0;
  v7._countAndFlagsBits = 0xD00000000000002CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[21];
  v9 = v0[22];
  v0[20] = v9;
  v10 = sub_100042BAC(v0 + 17);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 17), &qword_10016AB10, &unk_100130B10);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100026FDC(v0 + 7);
  v12 = v0[25];

  v13 = v0[1];

  return v13();
}

unint64_t sub_1000BCFE8()
{
  result = qword_10016ADA0;
  if (!qword_10016ADA0)
  {
    type metadata accessor for DaemonActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016ADA0);
  }

  return result;
}

uint64_t sub_1000BD040(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026F94(&qword_10016CC50, &unk_100132D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BD0B0()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016CC58);
  v1 = sub_10002FD14(v0, qword_10016CC58);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000BD19C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_1000BD578(a1);
}

uint64_t sub_1000BD244(uint64_t a1, uint64_t a2)
{
  result = sub_1000BEE54(&qword_10016CD10, a2, type metadata accessor for TriggerForwardDeletionRulesTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000BD29C(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A5F0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016CC58);
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

uint64_t sub_1000BD578(uint64_t a1)
{
  v1[39] = a1;
  v2 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v3 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v1[41] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v1[42] = v4;
  v5 = *(v4 - 8);
  v1[43] = v5;
  v6 = *(v5 + 64) + 15;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v1[46] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v1[47] = sub_1000BEE54(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[48] = v8;
  v1[49] = v7;

  return _swift_task_switch(sub_1000BD740, v8, v7);
}

uint64_t sub_1000BD740()
{
  if (qword_10016A5F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016CC58);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 360);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "TriggerForwardDeletionRulesTask.run", "", v6, 2u);
  }

  v8 = *(v0 + 352);
  v9 = *(v0 + 360);
  v10 = *(v0 + 336);
  v11 = *(v0 + 344);

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 400) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v0 + 408) = qword_100173878;
  TaskLocal.get()();
  v15 = *(v0 + 48);
  sub_100026F50((v0 + 16), *(v0 + 40));
  *(v0 + 416) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v16 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 424) = *(v16 + 72);
  *(v0 + 536) = *(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 16));
  v17 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v18 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v19 = swift_task_alloc();
  *(v0 + 432) = v19;
  *v19 = v0;
  v19[1] = sub_1000BDA84;
  v20 = *(v0 + 312);

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v17, v17);
}

uint64_t sub_1000BDA84()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 392);
  v6 = *(v2 + 384);
  if (v0)
  {
    v7 = sub_1000BE724;
  }

  else
  {
    v7 = sub_1000BDBC0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000BDBC0()
{
  v1 = *sub_100026F50(v0 + 7, v0[10]);
  v2 = swift_task_alloc();
  v0[56] = v2;
  *v2 = v0;
  v2[1] = sub_1000BDC5C;

  return sub_10005CC18();
}

uint64_t sub_1000BDC5C(uint64_t a1)
{
  v3 = *(*v2 + 448);
  v4 = *v2;
  v4[57] = a1;
  v4[58] = v1;

  if (v1)
  {
    v5 = v4[48];
    v6 = v4[49];

    return _swift_task_switch(sub_1000BDF18, v5, v6);
  }

  else
  {
    v7 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
    v8 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v9 = swift_task_alloc();
    v4[59] = v9;
    *v9 = v4;
    v9[1] = sub_1000BDDFC;
    v10 = v4[39];

    return BaseObjectGraph.inject<A>(_:)(v4 + 12, v7, v7);
  }
}

uint64_t sub_1000BDDFC()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v9 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = v2[57];

    v5 = v2[48];
    v6 = v2[49];
    v7 = sub_1000BE898;
  }

  else
  {
    v5 = v2[48];
    v6 = v2[49];
    v7 = sub_1000BE094;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000BDF18()
{
  sub_100026FDC(v0 + 7);
  v13 = v0[58];
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v5 = v0[45];
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[39];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001327D0, v10);

  sub_1000BD29C("TriggerForwardDeletionRulesTask.run", 35, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000BE094()
{
  v1 = v0[57];
  v2 = v1[2];
  v0[61] = v2;
  if (v2)
  {
    v0[62] = 0;
    v3 = v1[4];
    v0[63] = v3;
    v4 = v1[5];
    v0[64] = v4;
    v5 = sub_100026F50(v0 + 12, v0[15]);
    v6 = type metadata accessor for AppDataCleanupTask();
    v7 = swift_allocObject();
    swift_bridgeObjectRetain_n();
    swift_defaultActor_initialize();
    *(v7 + 112) = v3;
    *(v7 + 120) = v4;
    v0[20] = v6;
    v0[21] = sub_1000BEE54(&qword_10016CD18, 255, type metadata accessor for AppDataCleanupTask);
    v0[17] = v7;
    v8 = *v5;
    v9 = swift_task_alloc();
    v0[65] = v9;
    *v9 = v0;
    v9[1] = sub_1000BE344;
    v10 = v0[39];

    return sub_100095AAC((v0 + 17), v10);
  }

  else
  {
    v12 = v0[50];
    v13 = v0[46];
    v14 = v0[47];
    v15 = v0[44];
    v16 = v0[45];
    v18 = v0[40];
    v17 = v0[41];
    v19 = v0[39];

    sub_100026FDC(v0 + 12);
    sub_100026FDC(v0 + 7);
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = v13;
    v21[3] = v14;
    v21[4] = v19;

    sub_10009C9B8(0, 0, v17, &unk_1001326B0, v21);

    sub_1000BD29C("TriggerForwardDeletionRulesTask.run", 35, 2);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1000BE344()
{
  v2 = *v1;
  v3 = (*v1)[65];
  v9 = *v1;
  (*v1)[66] = v0;

  if (v0)
  {
    v4 = v2[48];
    v5 = v2[49];
    v6 = sub_1000BEA14;
  }

  else
  {
    v7 = v2[64];

    sub_100026FDC(v2 + 17);
    v4 = v2[48];
    v5 = v2[49];
    v6 = sub_1000BE468;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000BE468()
{
  v1 = v0[62] + 1;
  if (v1 == v0[61])
  {
    v2 = v0[57];
    v3 = v0[50];
    v4 = v0[46];
    v5 = v0[47];
    v6 = v0[44];
    v7 = v0[45];
    v9 = v0[40];
    v8 = v0[41];
    v10 = v0[39];

    sub_100026FDC(v0 + 12);
    sub_100026FDC(v0 + 7);
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = v4;
    v12[3] = v5;
    v12[4] = v10;

    sub_10009C9B8(0, 0, v8, &unk_1001326B0, v12);

    sub_1000BD29C("TriggerForwardDeletionRulesTask.run", 35, 2);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v0[62] = v1;
    v15 = v0[57] + 16 * v1;
    v16 = *(v15 + 32);
    v0[63] = v16;
    v17 = *(v15 + 40);
    v0[64] = v17;
    v18 = sub_100026F50(v0 + 12, v0[15]);
    v19 = type metadata accessor for AppDataCleanupTask();
    v20 = swift_allocObject();
    swift_bridgeObjectRetain_n();
    swift_defaultActor_initialize();
    *(v20 + 112) = v16;
    *(v20 + 120) = v17;
    v0[20] = v19;
    v0[21] = sub_1000BEE54(&qword_10016CD18, 255, type metadata accessor for AppDataCleanupTask);
    v0[17] = v20;
    v21 = *v18;
    v22 = swift_task_alloc();
    v0[65] = v22;
    *v22 = v0;
    v22[1] = sub_1000BE344;
    v23 = v0[39];

    return sub_100095AAC((v0 + 17), v23);
  }
}

uint64_t sub_1000BE724()
{
  v13 = v0[55];
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v5 = v0[45];
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[39];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001324D0, v10);

  sub_1000BD29C("TriggerForwardDeletionRulesTask.run", 35, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000BE898()
{
  sub_100026FDC(v0 + 7);
  v13 = v0[60];
  v1 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v5 = v0[45];
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[39];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_1001327E0, v10);

  sub_1000BD29C("TriggerForwardDeletionRulesTask.run", 35, 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000BEA14()
{
  v37 = *(v0 + 528);
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 536);
  v4 = *(v0 + 416);
  v5 = *(v0 + 424);
  v6 = *(v0 + 408);
  v7 = *(v0 + 320);
  sub_100026FDC((v0 + 136));
  TaskLocal.get()();
  v38 = *(v0 + 208);
  sub_100026F50((v0 + 176), *(v0 + 200));
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x800000010013CDB0;
  v8._countAndFlagsBits = 0xD000000000000032;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  *(v0 + 216) = v1;
  *(v0 + 240) = &type metadata for String;
  *(v0 + 224) = v2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 216);
  v9._countAndFlagsBits = 2629678;
  v9._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  swift_getErrorValue();
  v10 = *(v0 + 280);
  v11 = *(v0 + 288);
  *(v0 + 272) = v11;
  v12 = sub_100042BAC((v0 + 248));
  (*(*(v11 - 8) + 16))(v12, v10, v11);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 248);
  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100026FDC((v0 + 176));
  v14 = *(v0 + 496) + 1;
  if (v14 == *(v0 + 488))
  {
    v15 = *(v0 + 456);
    v16 = *(v0 + 400);
    v17 = *(v0 + 368);
    v18 = *(v0 + 376);
    v19 = *(v0 + 352);
    v20 = *(v0 + 360);
    v22 = *(v0 + 320);
    v21 = *(v0 + 328);
    v23 = *(v0 + 312);

    sub_100026FDC((v0 + 96));
    sub_100026FDC((v0 + 56));
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = v17;
    v25[3] = v18;
    v25[4] = v23;

    sub_10009C9B8(0, 0, v21, &unk_1001326B0, v25);

    sub_1000BD29C("TriggerForwardDeletionRulesTask.run", 35, 2);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    *(v0 + 496) = v14;
    v28 = *(v0 + 456) + 16 * v14;
    v29 = *(v28 + 32);
    *(v0 + 504) = v29;
    v30 = *(v28 + 40);
    *(v0 + 512) = v30;
    v31 = sub_100026F50((v0 + 96), *(v0 + 120));
    v32 = type metadata accessor for AppDataCleanupTask();
    v33 = swift_allocObject();
    swift_bridgeObjectRetain_n();
    swift_defaultActor_initialize();
    *(v33 + 112) = v29;
    *(v33 + 120) = v30;
    *(v0 + 160) = v32;
    *(v0 + 168) = sub_1000BEE54(&qword_10016CD18, 255, type metadata accessor for AppDataCleanupTask);
    *(v0 + 136) = v33;
    v34 = *v31;
    v35 = swift_task_alloc();
    *(v0 + 520) = v35;
    *v35 = v0;
    v35[1] = sub_1000BE344;
    v36 = *(v0 + 312);

    return sub_100095AAC(v0 + 136, v36);
  }
}

uint64_t sub_1000BEE54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000BEEA8()
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_1000BEF08()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016CD48);
  v1 = sub_10002FD14(v0, qword_10016CD48);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000BEFD0()
{
  _StringGuts.grow(_:)(22);

  String.append(_:)(v0[7]);
  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  String.append(_:)(v0[8]);
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0x6E61656C434C5454;
}

uint64_t sub_1000BF074(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v2[44] = swift_task_alloc();
  v4 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  v2[45] = v4;
  v5 = *(v4 - 8);
  v2[46] = v5;
  v6 = *(v5 + 64) + 15;
  v2[47] = swift_task_alloc();
  v7 = sub_100026F94(&qword_10016BBD0, &qword_100132F30);
  v2[48] = v7;
  v8 = *(v7 - 8);
  v2[49] = v8;
  v9 = *(v8 + 64) + 15;
  v2[50] = swift_task_alloc();
  v10 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v2[51] = v10;
  v11 = *(v10 - 8);
  v2[52] = v11;
  v12 = *(v11 + 64) + 15;
  v2[53] = swift_task_alloc();
  v13 = type metadata accessor for Table();
  v2[54] = v13;
  v14 = *(v13 - 8);
  v2[55] = v14;
  v15 = *(v14 + 64) + 15;
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v16 = type metadata accessor for Delete();
  v2[58] = v16;
  v17 = *(v16 - 8);
  v2[59] = v17;
  v18 = *(v17 + 64) + 15;
  v2[60] = swift_task_alloc();
  v19 = type metadata accessor for Date();
  v2[61] = v19;
  v20 = *(v19 - 8);
  v2[62] = v20;
  v21 = *(v20 + 64) + 15;
  v2[63] = swift_task_alloc();
  v22 = type metadata accessor for AccessCredential.Error();
  v2[64] = v22;
  v23 = *(v22 - 8);
  v2[65] = v23;
  v24 = *(v23 + 64) + 15;
  v2[66] = swift_task_alloc();
  v25 = type metadata accessor for DataSpecification();
  v2[67] = v25;
  v26 = *(v25 - 8);
  v2[68] = v26;
  v27 = *(v26 + 64) + 15;
  v2[69] = swift_task_alloc();
  v28 = type metadata accessor for DataSpecification.Namespace.Table();
  v2[70] = v28;
  v29 = *(v28 - 8);
  v2[71] = v29;
  v30 = *(v29 + 64) + 15;
  v2[72] = swift_task_alloc();
  v31 = *(*(sub_100026F94(&qword_10016CB48, &qword_100132C60) - 8) + 64) + 15;
  v2[73] = swift_task_alloc();
  v32 = type metadata accessor for AccessCredential();
  v2[74] = v32;
  v33 = *(v32 - 8);
  v2[75] = v33;
  v34 = *(v33 + 64) + 15;
  v2[76] = swift_task_alloc();
  v35 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[77] = swift_task_alloc();
  v36 = type metadata accessor for OSSignpostID();
  v2[78] = v36;
  v37 = *(v36 - 8);
  v2[79] = v37;
  v38 = *(v37 + 64) + 15;
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[82] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[83] = sub_1000C1BB0(&qword_10016ADA0, type metadata accessor for DaemonActor);
  v40 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[84] = v40;
  v2[85] = v39;

  return _swift_task_switch(sub_1000BF63C, v40, v39);
}

uint64_t sub_1000BF63C()
{
  if (qword_10016A600 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 648);
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016CD48);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 648);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "TTLCleanupTask.run", "", v6, 2u);
  }

  v8 = *(v0 + 648);
  v9 = *(v0 + 640);
  v10 = *(v0 + 632);
  v11 = *(v0 + 624);

  (*(v10 + 16))(v9, v8, v11);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 688) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v8, v11);
  if (qword_10016A5F8 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 616);
  v16 = *(v0 + 344);
  sub_100026F50(qword_10016CD20, qword_10016CD38);
  *(v0 + 696) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v17 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 704) = *(v17 + 72);
  *(v0 + 776) = *(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x800000010013CE60;
  v18._countAndFlagsBits = 0xD000000000000024;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v16[14];
  *(v0 + 712) = v19;
  v20 = v16[15];
  *(v0 + 720) = v20;
  *(v0 + 80) = &type metadata for String;
  *(v0 + 56) = v19;
  *(v0 + 64) = v20;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 56, &qword_10016AB10, &unk_100130B10);
  v21._countAndFlagsBits = 0x65686373206E6920;
  v21._object = 0xEC000000203A616DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v16[16];
  *(v0 + 728) = v22;
  v23 = v16[17];
  *(v0 + 736) = v23;
  *(v0 + 112) = &type metadata for String;
  *(v0 + 88) = v22;
  *(v0 + 96) = v23;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 88, &qword_10016AB10, &unk_100130B10);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v25 = swift_task_alloc();
  *(v0 + 744) = v25;
  *v25 = v0;
  v25[1] = sub_1000BFA38;
  v26 = *(v0 + 584);
  v27 = *(v0 + 336);
  v28 = *(v0 + 344);

  return sub_1000C1090(v26, v27);
}

uint64_t sub_1000BFA38()
{
  v1 = *v0;
  v2 = *(*v0 + 744);
  v6 = *v0;

  v3 = *(v1 + 680);
  v4 = *(v1 + 672);

  return _swift_task_switch(sub_1000BFB58, v4, v3);
}

uint64_t sub_1000BFB58()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 776);
    v5 = *(v0 + 704);
    v6 = *(v0 + 696);
    v7 = *(v0 + 616);
    v8 = *(v0 + 344);
    sub_10002BA6C(v3, &qword_10016CB48, &qword_100132C60);
    sub_100026F50(qword_10016CD20, qword_10016CD38);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._countAndFlagsBits = 0xD000000000000033;
    v9._object = 0x800000010013CE90;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v10 = OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_credentialSource;
    *(v0 + 144) = type metadata accessor for TTLCleanupTask.CredentialSource(0);
    v11 = sub_100042BAC((v0 + 120));
    sub_1000C1BF8(v8 + v10, v11);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 120, &qword_10016AB10, &unk_100130B10);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();

    v13 = &unk_1001324D0;
LABEL_3:
    v14 = *(v0 + 688);
    v15 = *(v0 + 664);
    v16 = *(v0 + 656);
    v17 = *(v0 + 648);
    v18 = *(v0 + 640);
    v47 = *(v0 + 616);
    v48 = *(v0 + 608);
    v49 = *(v0 + 584);
    v50 = *(v0 + 576);
    v51 = *(v0 + 552);
    v53 = *(v0 + 528);
    v55 = *(v0 + 504);
    v56 = *(v0 + 480);
    v57 = *(v0 + 456);
    v58 = *(v0 + 448);
    v60 = *(v0 + 424);
    v62 = *(v0 + 400);
    v65 = *(v0 + 376);
    v19 = *(v0 + 352);
    v20 = *(v0 + 336);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = v16;
    v22[3] = v15;
    v22[4] = v20;

    sub_10009C9B8(0, 0, v19, v13, v22);

    sub_1000C1C60("TTLCleanupTask.run", 18, 2);

    v23 = *(v0 + 8);

    return v23(0);
  }

  v66 = *(v0 + 736);
  v63 = *(v0 + 728);
  v25 = *(v0 + 720);
  v26 = *(v0 + 712);
  v27 = *(v0 + 576);
  v28 = *(v0 + 552);
  v29 = *(v0 + 528);
  (*(v1 + 32))(*(v0 + 608), v3, v2);
  AccessCredential.dataSpecification.getter();
  _s19OnDeviceStorageCore17DataSpecificationV05tableF03for2inAC9NamespaceV5TableVSS_SStAA16AccessCredentialV5ErrorOYKF();
  v30 = *(v0 + 576);
  (*(*(v0 + 544) + 8))(*(v0 + 552), *(v0 + 536));
  *(v0 + 312) = DataSpecification.Namespace.Table.timeToLive.getter();
  *(v0 + 320) = v31;
  if (v31)
  {
    v32 = *(v0 + 736);
    v33 = *(v0 + 720);
    v52 = *(v0 + 712);
    v54 = *(v0 + 728);
    v34 = *(v0 + 776);
    v35 = *(v0 + 704);
    v36 = *(v0 + 696);
    v37 = *(v0 + 616);
    v67 = *(v0 + 608);
    v38 = *(v0 + 600);
    v61 = *(v0 + 576);
    v64 = *(v0 + 592);
    v39 = *(v0 + 568);
    v59 = *(v0 + 560);
    sub_100026F50(qword_10016CD20, qword_10016CD38);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v40._object = 0x800000010013CED0;
    v40._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    *(v0 + 176) = &type metadata for String;
    *(v0 + 152) = v52;
    *(v0 + 160) = v33;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 152, &qword_10016AB10, &unk_100130B10);
    v41._countAndFlagsBits = 0x65686373206E6920;
    v41._object = 0xEC000000203A616DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v41);
    *(v0 + 208) = &type metadata for String;
    *(v0 + 184) = v54;
    *(v0 + 192) = v32;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 184, &qword_10016AB10, &unk_100130B10);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v42);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    (*(v39 + 8))(v61, v59);
    (*(v38 + 8))(v67, v64);
    v13 = &unk_100132F50;
    goto LABEL_3;
  }

  v43 = sub_100026F94(&qword_10016CF08, &qword_100132F58);
  v44 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v45 = swift_task_alloc();
  *(v0 + 752) = v45;
  *v45 = v0;
  v45[1] = sub_1000C0474;
  v46 = *(v0 + 336);

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v43, v43);
}

uint64_t sub_1000C0474()
{
  v2 = *v1;
  v3 = *(*v1 + 752);
  v8 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v4 = v2[85];
    v5 = v2[84];
    v6 = sub_1000C0E2C;
  }

  else
  {
    v2[96] = v2[39];
    v4 = v2[85];
    v5 = v2[84];
    v6 = sub_1000C0598;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000C0598()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 720);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = *(v0 + 488);
  v94 = *(v0 + 480);
  v98 = *(v0 + 760);
  v54 = *(v0 + 448);
  v57 = *(v0 + 712);
  v71 = *(v0 + 432);
  v75 = *(v0 + 456);
  v79 = *(v0 + 416);
  v6 = *(v0 + 400);
  v86 = *(v0 + 408);
  v90 = *(v0 + 440);
  v7 = *(v0 + 392);
  v61 = *(v0 + 384);
  v65 = *(v0 + 424);
  v8 = *(v0 + 368);
  v9 = *(v0 + 376);
  v68 = *(v0 + 360);
  v10 = *(v0 + 344);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v12 = v11;
  (*(v4 + 8))(v3, v5);
  v82 = *(v10 + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_connection);

  Table.init(_:database:)();
  static Connection.ServiceColumns.modificationTime.getter();
  Expression<A>.timestamp.getter();
  (*(v7 + 8))(v6, v61);
  *(v0 + 328) = v12 - v1;
  static Expression<A>.<= infix<A>(_:_:)();
  (*(v8 + 8))(v9, v68);
  sub_1000C1BB0(&qword_10016AD20, &type metadata accessor for Table);
  QueryType.where(_:)();
  (*(v79 + 8))(v65, v86);
  v13 = *(v90 + 8);
  v13(v54, v71);
  QueryType.delete()();
  v13(v75, v71);
  v14 = Connection.run(_:)();
  if (v98)
  {
    v15 = *(v0 + 608);
    v16 = *(v0 + 600);
    v17 = *(v0 + 592);
    v18 = *(v0 + 576);
    v19 = *(v0 + 568);
    v20 = *(v0 + 560);
    (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
    sub_100026FDC((v0 + 16));
    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
    v21 = *(v0 + 688);
    v22 = *(v0 + 664);
    v23 = *(v0 + 656);
    v24 = *(v0 + 648);
    v25 = *(v0 + 640);
    v55 = *(v0 + 616);
    v58 = *(v0 + 608);
    v62 = *(v0 + 584);
    v66 = *(v0 + 576);
    v69 = *(v0 + 552);
    v72 = *(v0 + 528);
    v76 = *(v0 + 504);
    v80 = *(v0 + 480);
    v83 = *(v0 + 456);
    v87 = *(v0 + 448);
    v91 = *(v0 + 424);
    v95 = *(v0 + 400);
    v99 = *(v0 + 376);
    v26 = *(v0 + 352);
    v27 = *(v0 + 336);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = v23;
    v29[3] = v22;
    v29[4] = v27;

    sub_10009C9B8(0, 0, v26, &unk_100132F68, v29);

    sub_1000C1C60("TTLCleanupTask.run", 18, 2);

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v73 = *(v0 + 728);
    v77 = *(v0 + 736);
    v32 = *(v0 + 720);
    v33 = *(v0 + 704);
    v34 = *(v0 + 696);
    v35 = *(v0 + 616);
    v36 = *(v0 + 600);
    v92 = *(v0 + 592);
    v96 = *(v0 + 608);
    v37 = *(v0 + 568);
    v84 = *(v0 + 560);
    v88 = *(v0 + 576);
    v59 = *(v0 + 712);
    v63 = (*(v0 + 776) + 32) & ~*(v0 + 776);
    v38 = v14;
    v100 = v14;
    (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
    sub_100026F50(qword_10016CD20, qword_10016CD38);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v39._object = 0x800000010013CEF0;
    v39._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    *(v0 + 240) = &type metadata for Int;
    *(v0 + 216) = v38;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 216, &qword_10016AB10, &unk_100130B10);
    v40._countAndFlagsBits = 0xD00000000000001ALL;
    v40._object = 0x800000010013CF10;
    LogMessage.StringInterpolation.appendLiteral(_:)(v40);
    *(v0 + 272) = &type metadata for String;
    *(v0 + 248) = v59;
    *(v0 + 256) = v32;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 248, &qword_10016AB10, &unk_100130B10);
    v41._countAndFlagsBits = 0x65686373206E6920;
    v41._object = 0xEC000000203A616DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v41);
    *(v0 + 304) = &type metadata for String;
    *(v0 + 280) = v73;
    *(v0 + 288) = v77;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 280, &qword_10016AB10, &unk_100130B10);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v42);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 16));
    (*(v37 + 8))(v88, v84);
    (*(v36 + 8))(v96, v92);
    v43 = *(v0 + 688);
    v44 = *(v0 + 664);
    v45 = *(v0 + 656);
    v46 = *(v0 + 648);
    v47 = *(v0 + 640);
    v48 = *(v0 + 616);
    v56 = *(v0 + 608);
    v60 = *(v0 + 584);
    v64 = *(v0 + 576);
    v67 = *(v0 + 552);
    v70 = *(v0 + 528);
    v74 = *(v0 + 504);
    v78 = *(v0 + 480);
    v81 = *(v0 + 456);
    v85 = *(v0 + 448);
    v89 = *(v0 + 424);
    v93 = *(v0 + 400);
    v97 = *(v0 + 376);
    v49 = *(v0 + 352);
    v50 = *(v0 + 336);
    v51 = type metadata accessor for TaskPriority();
    (*(*(v51 - 8) + 56))(v49, 1, 1, v51);
    v52 = swift_allocObject();
    v52[2] = v45;
    v52[3] = v44;
    v52[4] = v50;

    sub_10009C9B8(0, 0, v49, &unk_100132AD0, v52);

    sub_1000C1C60("TTLCleanupTask.run", 18, 2);

    v53 = *(v0 + 8);

    return v53(v100);
  }
}

uint64_t sub_1000C0E2C()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  (*(v0[71] + 8))(v0[72], v0[70]);
  (*(v2 + 8))(v1, v3);
  v28 = v0[95];
  v4 = v0[86];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[77];
  v16 = v0[76];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[69];
  v20 = v0[66];
  v21 = v0[63];
  v22 = v0[60];
  v23 = v0[57];
  v24 = v0[56];
  v25 = v0[53];
  v26 = v0[50];
  v27 = v0[47];
  v10 = v0[44];
  v11 = v0[42];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = v5;
  v13[4] = v11;

  sub_10009C9B8(0, 0, v10, &unk_100132F60, v13);

  sub_1000C1C60("TTLCleanupTask.run", 18, 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000C1090(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for TTLCleanupTask.CredentialSource(0);
  v3[10] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000C1128, v2, 0);
}

uint64_t sub_1000C1128()
{
  v1 = v0[10];
  sub_1000C1BF8(v0[9] + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_credentialSource, v0[11]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[11];
    v3 = v0[7];
    v4 = type metadata accessor for AccessCredential();
    v5 = *(v4 - 8);
    (*(v5 + 32))(v3, v2, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    v6 = v0[11];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[11];
    v0[12] = *v9;
    v0[13] = v9[1];
    v10 = sub_100026F94(&qword_10016C458, &qword_1001324C8);
    v11 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_1000C1300;
    v13 = v0[8];

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v10, v10);
  }
}

uint64_t sub_1000C1300()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 72);

    v7 = sub_1000C1758;
    v8 = v6;
  }

  else
  {
    v8 = *(v2 + 72);
    v7 = sub_1000C1440;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000C1440()
{
  v1 = *sub_100026F50(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1000C14E8;
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[7];

  return sub_10003D0A0(v5, v3, v4);
}

uint64_t sub_1000C14E8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  v5 = *(v2 + 104);
  v6 = *(v2 + 72);
  if (v0)
  {

    v7 = sub_1000C16AC;
  }

  else
  {

    v7 = sub_1000C1644;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000C1644()
{
  sub_100026FDC(v0 + 2);
  v1 = v0[11];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000C16AC()
{
  sub_100026FDC(v0 + 2);
  v1 = v0[7];
  v2 = type metadata accessor for AccessCredential();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000C1758()
{
  v1 = v0[7];
  v2 = type metadata accessor for AccessCredential();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000C17FC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  sub_1000C1F3C(v0 + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_credentialSource);
  v3 = *(v0 + OBJC_IVAR____TtC19amsondevicestoraged14TTLCleanupTask_connection);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C1884()
{
  result = type metadata accessor for TTLCleanupTask.CredentialSource(319);
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

uint64_t sub_1000C19A8()
{
  result = type metadata accessor for AccessCredential();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000C1A14(uint64_t a1)
{
  v4 = *v1;
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042680;

  return sub_1000BF074(a1);
}

uint64_t sub_1000C1B00(uint64_t a1)
{
  result = sub_1000C1BB0(&qword_10016CEF8, type metadata accessor for TTLCleanupTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C1B58(uint64_t a1)
{
  result = sub_1000C1BB0(&qword_10016CF00, type metadata accessor for TTLCleanupTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C1BB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C1BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTLCleanupTask.CredentialSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C1C60(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A600 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016CD48);
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

uint64_t sub_1000C1F3C(uint64_t a1)
{
  v2 = type metadata accessor for TTLCleanupTask.CredentialSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C1FAC(uint64_t inited)
{
  v3 = (*v1 / 0x989680uLL) * 10000000.0;
  if (v3 == INFINITY)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  sub_100026F94(&qword_10016BF18, &qword_100131B78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100131AD0;
  *(inited + 32) = 0x55656761726F7473;
  *(inited + 40) = 0xEB00000000646573;
  *(inited + 48) = v4;
  *(inited + 72) = &type metadata for UInt64;
  *(inited + 80) = 0x6673736563637573;
  v2 = &type metadata for Int;
  v5 = v1[1];
  v6 = v1[2];
  *(inited + 88) = 0xEF73646165526C75;
  *(inited + 96) = v5;
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x800000010013D0F0;
  *(inited + 144) = v6;
  *(inited + 168) = &type metadata for Int;
  *(inited + 176) = 0xD000000000000010;
  v7 = v1[3];
  v8 = v1[4];
  *(inited + 184) = 0x800000010013D110;
  *(inited + 192) = v7;
  *(inited + 216) = &type metadata for Int;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x800000010013D130;
  *(inited + 240) = v8;
  *(inited + 264) = &type metadata for Int;
  strcpy((inited + 272), "hardwareModel");
  *(inited + 286) = -4864;
  if (qword_10016A608 != -1)
  {
LABEL_9:
    v16 = inited;
    swift_once();
    inited = v16;
  }

  v9 = *algn_10016CF18;
  *(inited + 288) = qword_10016CF10;
  *(inited + 296) = v9;
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0x707954746E657665;
  *(inited + 328) = 0xE900000000000065;
  *(inited + 336) = 0x74736F6E67616964;
  *(inited + 344) = 0xEB00000000736369;
  *(inited + 360) = &type metadata for String;
  strcpy((inited + 368), "eventVersion");
  *(inited + 408) = v2;
  *(inited + 381) = 0;
  *(inited + 382) = -5120;
  *(inited + 384) = 1;
  v10 = inited;

  sub_100088F4C(v10);
  swift_setDeallocating();
  sub_100026F94(&qword_10016BF20, &qword_100131B80);
  swift_arrayDestroy();
  sub_100026F94(&qword_10016CFE8, &qword_1001330E8);
  v11 = *(type metadata accessor for MetricsFieldExclusionRequest() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100132F70;
  static MetricsFieldExclusionRequest.amsMetricsID.getter();
  static MetricsFieldExclusionRequest.app.getter();
  static MetricsFieldExclusionRequest.appVersion.getter();
  static MetricsFieldExclusionRequest.baseVersion.getter();
  static MetricsFieldExclusionRequest.clientEventId.getter();
  static MetricsFieldExclusionRequest.clientBuildType.getter();
  static MetricsFieldExclusionRequest.connection.getter();
  static MetricsFieldExclusionRequest.osLanguages.getter();
  static MetricsFieldExclusionRequest.isSignedIn.getter();
  static MetricsFieldExclusionRequest.page.getter();
  static MetricsFieldExclusionRequest.storeFrontHeader.getter();
  static MetricsFieldExclusionRequest.timezoneOffset.getter();
  static MetricsFieldExclusionRequest.userAgent.getter();
  static MetricsFieldExclusionRequest.xpPostFrequency.getter();
  static MetricsFieldExclusionRequest.capacity.getter();
  static MetricsFieldExclusionRequest.eventTime.getter();
  static MetricsFieldExclusionRequest.systemInfo.getter();
  static MetricsFieldExclusionRequest.screen.getter();
  static MetricsFieldExclusionRequest.pageHistory.getter();
  static MetricsFieldExclusionRequest.eventVersion.getter();
  static MetricsFieldExclusionRequest.sampling.getter();
  static MetricsFieldExclusionRequest.xpViewablePercentage.getter();
  static MetricsFieldExclusionRequest.xpViewableThreshold.getter();
  static MetricsFieldExclusionRequest.xpSendMethod.getter();
  static MetricsFieldExclusionRequest.config.getter();
  static MetricsFieldExclusionRequest.pageRenderClientId.getter();
  sub_1000C6E1C(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return MetricsData.init(topic:shouldFlush:fields:includingFields:excludingFields:)();
}

uint64_t sub_1000C24A4()
{
  result = sub_1000C24C8();
  qword_10016CF10 = result;
  *algn_10016CF18 = v1;
  return result;
}

uint64_t sub_1000C24C8()
{
  v8 = 0;
  v0 = 0x6E776F6E6B6E75;
  if (!sysctlbyname("hw.machine", 0, &v8, 0, 0))
  {
    v1 = v8;
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    if (v8)
    {
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v2[2] = v1;
      bzero(v2 + 4, v1);
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    if (sysctlbyname("hw.machine", v2 + 4, &v8, 0, 0))
    {
    }

    else
    {

      v5 = sub_1000C260C(v4);
      v7 = v6;

      if (v7)
      {
        return v5;
      }
    }
  }

  return v0;
}

void sub_1000C25F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x1000C25FCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000C260C(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = sub_1000C68BC(v8);
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      v1 = 0;
      while (*(a1 + v1 + 32))
      {
        if (v12 == ++v1)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    static String.Encoding.utf8.getter();
    v13 = String.Encoding.rawValue.getter();
    (*(v4 + 8))(v7, v3);
    v14 = [objc_allocWithZone(NSString) initWithBytes:a1 + 32 length:v1 encoding:v13];

    if (v14)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_1000C27DC()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016CF20);
  v1 = sub_10002FD14(v0, qword_10016CF20);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000C28A4(uint64_t a1)
{
  v2[152] = v1;
  v2[151] = a1;
  v3 = type metadata accessor for MetricsFieldsContext();
  v2[153] = v3;
  v4 = *(v3 - 8);
  v2[154] = v4;
  v5 = *(v4 + 64) + 15;
  v2[155] = swift_task_alloc();
  v6 = type metadata accessor for MetricsData();
  v2[156] = v6;
  v7 = *(v6 - 8);
  v2[157] = v7;
  v8 = *(v7 + 64) + 15;
  v2[158] = swift_task_alloc();
  v9 = type metadata accessor for LintedMetricsEvent();
  v2[159] = v9;
  v10 = *(v9 - 8);
  v2[160] = v10;
  v11 = *(v10 + 64) + 15;
  v2[161] = swift_task_alloc();
  v12 = type metadata accessor for MetricsPipeline();
  v2[162] = v12;
  v13 = *(v12 - 8);
  v2[163] = v13;
  v14 = *(v13 + 64) + 15;
  v2[164] = swift_task_alloc();
  v15 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v2[165] = swift_task_alloc();
  v16 = type metadata accessor for PreferenceNamespace();
  v2[166] = v16;
  v17 = *(v16 - 8);
  v2[167] = v17;
  v18 = *(v17 + 64) + 15;
  v2[168] = swift_task_alloc();
  v2[169] = swift_task_alloc();
  v19 = type metadata accessor for MetricsSamplingLottery();
  v2[170] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v2[171] = swift_task_alloc();
  v21 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[172] = swift_task_alloc();
  v22 = sub_100026F94(&qword_10016CFE0, &qword_100133030);
  v2[173] = v22;
  v23 = *(v22 - 8);
  v2[174] = v23;
  v24 = *(v23 + 64) + 15;
  v2[175] = swift_task_alloc();
  v25 = type metadata accessor for Bag();
  v2[176] = v25;
  v26 = *(v25 - 8);
  v2[177] = v26;
  v27 = *(v26 + 64) + 15;
  v2[178] = swift_task_alloc();
  v28 = type metadata accessor for OSSignpostID();
  v2[179] = v28;
  v29 = *(v28 - 8);
  v2[180] = v29;
  v30 = *(v29 + 64) + 15;
  v2[181] = swift_task_alloc();
  v2[182] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v2[183] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v2[184] = sub_1000C71FC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v32 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[185] = v32;
  v2[186] = v31;

  return _swift_task_switch(sub_1000C2D40, v32, v31);
}

uint64_t sub_1000C2D40()
{
  if (qword_10016A610 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1456);
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016CF20);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 1456);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "WeeklyMetricsTask.run", "", v6, 2u);
  }

  v8 = *(v0 + 1456);
  v9 = *(v0 + 1448);
  v10 = *(v0 + 1440);
  v11 = *(v0 + 1432);

  (*(v10 + 16))(v9, v8, v11);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 1496) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v8, v11);
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  *(v0 + 1504) = qword_100173878;
  TaskLocal.get()();
  v15 = *(v0 + 152);
  sub_100026F50((v0 + 120), *(v0 + 144));
  *(v0 + 1512) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v16 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 1520) = *(v16 + 72);
  *(v0 + 1204) = *(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 120));
  v17 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v18 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v19 = swift_task_alloc();
  *(v0 + 1528) = v19;
  *v19 = v0;
  v19[1] = sub_1000C308C;
  v20 = *(v0 + 1208);

  return BaseObjectGraph.inject<A>(_:)(v0 + 160, v17, v17);
}

uint64_t sub_1000C308C()
{
  v2 = *(*v1 + 1528);
  v3 = *v1;
  v3[192] = v0;

  if (v0)
  {
    v4 = v3[186];
    v5 = v3[185];

    return _swift_task_switch(sub_1000C52C4, v5, v4);
  }

  else
  {
    v6 = sub_100026F94(&qword_10016B128, &qword_100130F90);
    v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v8 = swift_task_alloc();
    v3[193] = v8;
    *v8 = v3;
    v8[1] = sub_1000C3230;
    v9 = v3[151];

    return BaseObjectGraph.inject<A>(_:)(v3 + 25, v6, v6);
  }
}

uint64_t sub_1000C3230()
{
  v2 = *v1;
  v3 = *(*v1 + 1544);
  v4 = *v1;
  *(*v1 + 1552) = v0;

  v5 = *(v2 + 1488);
  v6 = *(v2 + 1480);
  if (v0)
  {
    v7 = sub_1000C54C4;
  }

  else
  {
    v7 = sub_1000C336C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000C336C()
{
  v1 = [objc_opt_self() sharedConnection];
  if (!v1)
  {
    __break(1u);
    return BaseObjectGraph.inject<A>(_:)(v1, v2, v3);
  }

  v4 = v1;
  v5 = [v1 isDiagnosticSubmissionAllowed];

  if (v5)
  {
    v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v7 = swift_task_alloc();
    *(v0 + 1560) = v7;
    *v7 = v0;
    v7[1] = sub_1000C37B4;
    v1 = *(v0 + 1424);
    v2 = *(v0 + 1408);
    v8 = *(v0 + 1208);
    v3 = v2;

    return BaseObjectGraph.inject<A>(_:)(v1, v2, v3);
  }

  v9 = *(v0 + 1204);
  v10 = *(v0 + 1520);
  v11 = *(v0 + 1512);
  v12 = *(v0 + 1504);
  v13 = *(v0 + 1472);
  v29 = v13;
  v39 = *(v0 + 1464);
  v14 = *(v0 + 1320);
  TaskLocal.get()();
  v15 = *(v0 + 352);
  sub_100026F50((v0 + 320), *(v0 + 344));
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_100026FDC((v0 + 200));
  sub_100026FDC((v0 + 320));
  v16 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 384) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 392) = &off_100164F18;
  *(v0 + 360) = v16;
  v17 = type metadata accessor for TaskPriority();
  v18 = *(*(v17 - 8) + 56);
  v18(v14, 1, 1, v17);
  sub_100026EEC(v0 + 360, v0 + 400);
  v19 = swift_allocObject();
  *(v19 + 16) = v39;
  *(v19 + 24) = v13;
  sub_10002C604((v0 + 400), v19 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v14, &unk_100133050, v19);

  sub_100026FDC((v0 + 360));
  sub_100026FDC((v0 + 160));
  v20 = *(v0 + 1496);
  v21 = *(v0 + 1456);
  v22 = *(v0 + 1448);
  v30 = *(v0 + 1424);
  v31 = *(v0 + 1400);
  v32 = *(v0 + 1376);
  v33 = *(v0 + 1368);
  v34 = *(v0 + 1352);
  v35 = *(v0 + 1344);
  v23 = *(v0 + 1320);
  v36 = *(v0 + 1312);
  v37 = *(v0 + 1288);
  v24 = *(v0 + 1264);
  v38 = *(v0 + 1240);
  v25 = *(v0 + 1208);
  v18(v23, 1, 1, v17);
  v26 = swift_allocObject();
  v26[2] = v39;
  v26[3] = v29;
  v26[4] = v25;

  sub_10009C9B8(0, 0, v23, &unk_100132F60, v26);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1000C37B4()
{
  v2 = *v1;
  v3 = *(*v1 + 1560);
  v4 = *v1;
  *(*v1 + 1568) = v0;

  v5 = *(v2 + 1488);
  v6 = *(v2 + 1480);
  if (v0)
  {
    v7 = sub_1000C5790;
  }

  else
  {
    v7 = sub_1000C38F0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000C38F0()
{
  v1 = v0[178];
  v2 = v0[175];
  v3 = String._bridgeToObjectiveC()();
  Bag.subscript.getter();

  v4 = async function pointer to Bag.Value.currentOrNil()[1];
  v5 = swift_task_alloc();
  v0[197] = v5;
  *v5 = v0;
  v5[1] = sub_1000C39CC;
  v6 = v0[175];
  v7 = v0[173];

  return Bag.Value.currentOrNil()(v0 + 149, v7);
}

uint64_t sub_1000C39CC()
{
  v1 = *v0;
  v2 = *(*v0 + 1576);
  v3 = *(*v0 + 1400);
  v4 = *(*v0 + 1392);
  v5 = *(*v0 + 1384);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 1488);
  v7 = *(v1 + 1480);

  return _swift_task_switch(sub_1000C3B50, v7, v6);
}

uint64_t sub_1000C3B50()
{
  v1 = *(v0 + 1204);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1512);
  v4 = *(v0 + 1504);
  v5 = *(v0 + 1376);
  v6 = *(v0 + 1192);
  v7 = *(v0 + 1200);
  TaskLocal.get()();
  v56 = *(v0 + 552);
  sub_100026F50((v0 + 520), *(v0 + 544));
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD000000000000024;
  v8._object = 0x800000010013D000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  if (v7)
  {
    v9 = 0;
    *(v0 + 1168) = 0u;
    v10 = 0.0;
  }

  else
  {
    v9 = &type metadata for Double;
    v10 = v6;
  }

  v11 = *(v0 + 1376);
  *(v0 + 1160) = v10;
  *(v0 + 1184) = v9;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 1160, &qword_10016AB10, &unk_100130B10);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026FDC((v0 + 520));
  if (v7)
  {
    v6 = 0.01;
  }

  if (qword_10016A578 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 1368);
  v14 = *(v0 + 1360);
  v15 = *(v0 + 1352);
  v16 = *(v0 + 1344);
  v17 = *(v0 + 1336);
  v18 = *(v0 + 1328);
  sub_10002FD14(v18, qword_100173700);
  PreferenceNamespace.appending(_:)();
  v19 = *(v17 + 16);
  v19(v16, v15, v18);
  PreferenceKey.init(_:in:)();
  v19(v16, v15, v18);
  v20 = v13 + v14[5];
  PreferenceKey.init(_:in:)();
  (*(v17 + 8))(v15, v18);
  *(v13 + v14[6]) = v6;
  *(v13 + v14[7]) = 0x40F5180000000000;
  if (sub_100097174())
  {
    v21 = *sub_100026F50((v0 + 160), *(v0 + 184));
    v22 = swift_task_alloc();
    *(v0 + 1584) = v22;
    *v22 = v0;
    v22[1] = sub_1000C4220;

    return sub_100064D70(v0 + 16);
  }

  else
  {
    v24 = *(v0 + 1204);
    v25 = *(v0 + 1520);
    v26 = *(v0 + 1512);
    v27 = *(v0 + 1504);
    v57 = *(v0 + 1472);
    v28 = *(v0 + 1416);
    v49 = *(v0 + 1408);
    v51 = *(v0 + 1424);
    v29 = *(v0 + 1368);
    v52 = *(v0 + 1320);
    v54 = *(v0 + 1464);
    TaskLocal.get()();
    v30 = *(v0 + 592);
    sub_100026F50((v0 + 560), *(v0 + 584));
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();

    sub_1000C6D80(v29);
    (*(v28 + 8))(v51, v49);
    sub_100026FDC((v0 + 200));
    sub_100026FDC((v0 + 560));
    v31 = *sub_100026F50((v0 + 160), *(v0 + 184));
    *(v0 + 624) = type metadata accessor for DataRegistryImplementation();
    *(v0 + 632) = &off_100164F18;
    *(v0 + 600) = v31;
    v32 = type metadata accessor for TaskPriority();
    v33 = *(*(v32 - 8) + 56);
    v33(v52, 1, 1, v32);
    sub_100026EEC(v0 + 600, v0 + 640);
    v34 = swift_allocObject();
    *(v34 + 16) = v54;
    *(v34 + 24) = v57;
    sub_10002C604((v0 + 640), v34 + 32);
    swift_retain_n();

    sub_100053D08(0, 0, v52, &unk_100133078, v34);

    sub_100026FDC((v0 + 600));
    sub_100026FDC((v0 + 160));
    v35 = *(v0 + 1496);
    v36 = *(v0 + 1456);
    v42 = *(v0 + 1448);
    v43 = *(v0 + 1424);
    v44 = *(v0 + 1400);
    v45 = *(v0 + 1376);
    v46 = *(v0 + 1368);
    v47 = *(v0 + 1352);
    v37 = *(v0 + 1320);
    v48 = *(v0 + 1344);
    v50 = *(v0 + 1312);
    v38 = *(v0 + 1288);
    v53 = *(v0 + 1264);
    v55 = *(v0 + 1240);
    v39 = *(v0 + 1208);
    v33(v37, 1, 1, v32);
    v40 = swift_allocObject();
    v40[2] = v54;
    v40[3] = v57;
    v40[4] = v39;

    sub_10009C9B8(0, 0, v37, &unk_100133080, v40);

    sub_1000C6940("WeeklyMetricsTask.run", 21, 2);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1000C4220()
{
  v2 = *v1;
  v3 = *(*v1 + 1584);
  v4 = *v1;
  *(*v1 + 1592) = v0;

  v5 = *(v2 + 1488);
  v6 = *(v2 + 1480);
  if (v0)
  {
    v7 = sub_1000C47F8;
  }

  else
  {
    v7 = sub_1000C435C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000C435C()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 40);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = *(v2 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = (v2 + 32);
      while (1)
      {
        v10 = *v9++;
        v11 = __CFADD__(v8, v10);
        v8 += v10;
        if (v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
      v8 = 0;
LABEL_11:
      sub_10002BA6C(result, &qword_10016C048, &qword_1001321F8);
      *(v0 + 80) = v8;
      *(v0 + 88) = v3;
      *(v0 + 96) = v4;
      *(v0 + 104) = v5;
      *(v0 + 112) = v6;
      v30 = swift_task_alloc();
      *(v0 + 1600) = v30;
      *v30 = v0;
      v30[1] = sub_1000C4AF0;
      v31 = *(v0 + 1424);
      v32 = *(v0 + 1312);
      v33 = *(v0 + 1216);

      return sub_1000C6068(v32, v31);
    }
  }

  else
  {
    v12 = *(v0 + 1204);
    v13 = *(v0 + 1520);
    v14 = *(v0 + 1512);
    v15 = *(v0 + 1504);
    v48 = *(v0 + 1472);
    v16 = *(v0 + 1416);
    v42 = *(v0 + 1408);
    v43 = *(v0 + 1424);
    v17 = *(v0 + 1368);
    v45 = *(v0 + 1320);
    v47 = *(v0 + 1464);
    TaskLocal.get()();
    v18 = *(v0 + 792);
    sub_100026F50((v0 + 760), *(v0 + 784));
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.warning(_:)();

    sub_1000C6D80(v17);
    (*(v16 + 8))(v43, v42);
    sub_100026FDC((v0 + 200));
    sub_100026FDC((v0 + 760));
    v19 = *sub_100026F50((v0 + 160), *(v0 + 184));
    *(v0 + 824) = type metadata accessor for DataRegistryImplementation();
    *(v0 + 832) = &off_100164F18;
    *(v0 + 800) = v19;
    v20 = type metadata accessor for TaskPriority();
    v21 = *(*(v20 - 8) + 56);
    v21(v45, 1, 1, v20);
    sub_100026EEC(v0 + 800, v0 + 840);
    v22 = swift_allocObject();
    *(v22 + 16) = v47;
    *(v22 + 24) = v48;
    sub_10002C604((v0 + 840), v22 + 32);
    swift_retain_n();

    sub_100053D08(0, 0, v45, &unk_100133098, v22);

    sub_100026FDC((v0 + 800));
    sub_100026FDC((v0 + 160));
    v23 = *(v0 + 1496);
    v24 = *(v0 + 1456);
    v34 = *(v0 + 1448);
    v35 = *(v0 + 1424);
    v36 = *(v0 + 1400);
    v37 = *(v0 + 1376);
    v38 = *(v0 + 1368);
    v39 = *(v0 + 1352);
    v25 = *(v0 + 1320);
    v40 = *(v0 + 1344);
    v41 = *(v0 + 1312);
    v26 = *(v0 + 1288);
    v44 = *(v0 + 1264);
    v46 = *(v0 + 1240);
    v27 = *(v0 + 1208);
    v21(v25, 1, 1, v20);
    v28 = swift_allocObject();
    v28[2] = v47;
    v28[3] = v48;
    v28[4] = v27;

    sub_10009C9B8(0, 0, v25, &unk_1001330A0, v28);

    sub_1000C6940("WeeklyMetricsTask.run", 21, 2);

    v29 = *(v0 + 8);

    return v29();
  }

  return result;
}

uint64_t sub_1000C47F8()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1416);
  v5 = *(v0 + 1408);
  v6 = *(v0 + 1320);
  v7 = *(v0 + 1208);
  sub_1000C6D80(*(v0 + 1368));
  (*(v4 + 8))(v3, v5);
  sub_100026FDC((v0 + 200));
  v8 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 704) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 712) = &off_100164F18;
  *(v0 + 680) = v8;
  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  sub_100026EEC(v0 + 680, v0 + 720);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  sub_10002C604((v0 + 720), v11 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v6, &unk_100133088, v11);

  sub_100026FDC((v0 + 680));
  sub_100026FDC((v0 + 160));
  v10(v6, 1, 1, v9);
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = v1;
  v12[4] = v7;
  v13 = *(v0 + 1496);
  v14 = *(v0 + 1456);
  v15 = *(v0 + 1448);
  v16 = *(v0 + 1424);
  v17 = *(v0 + 1400);
  v18 = *(v0 + 1376);
  v19 = *(v0 + 1368);
  v24 = *(v0 + 1352);
  v25 = *(v0 + 1344);
  v20 = *(v0 + 1320);
  v26 = *(v0 + 1312);
  v27 = *(v0 + 1288);
  v28 = *(v0 + 1264);
  v29 = *(v0 + 1240);
  v30 = *(v0 + 1592);
  v21 = *(v0 + 1208);

  sub_10009C9B8(0, 0, v20, &unk_100132530, v12);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1000C4AF0()
{
  v2 = *v1;
  v3 = *(*v1 + 1600);
  v4 = *v1;
  *(*v1 + 1608) = v0;

  v5 = *(v2 + 1488);
  v6 = *(v2 + 1480);
  if (v0)
  {
    v7 = sub_1000C5A58;
  }

  else
  {
    v7 = sub_1000C4C2C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000C4C2C(uint64_t a1)
{
  v2 = v1[158];
  v3 = v1[155];
  sub_1000C1FAC(a1);
  MetricsFieldsContext.init()();
  v4 = async function pointer to MetricsPipeline.process(_:using:)[1];
  v5 = swift_task_alloc();
  v1[202] = v5;
  *v5 = v1;
  v5[1] = sub_1000C4CE8;
  v6 = v1[164];
  v7 = v1[161];
  v8 = v1[158];
  v9 = v1[155];

  return MetricsPipeline.process(_:using:)(v7, v8, v9);
}

uint64_t sub_1000C4CE8()
{
  v2 = *v1;
  v3 = *(*v1 + 1616);
  v4 = *(*v1 + 1264);
  v5 = *(*v1 + 1256);
  v6 = *(*v1 + 1248);
  v7 = *(*v1 + 1240);
  v8 = *(*v1 + 1232);
  v9 = *(*v1 + 1224);
  v10 = *v1;
  *(*v1 + 1624) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v11 = v2[186];
    v12 = v2[185];
    v13 = sub_1000C5D50;
  }

  else
  {
    (*(v2[160] + 8))(v2[161], v2[159]);
    v11 = v2[186];
    v12 = v2[185];
    v13 = sub_1000C4EEC;
  }

  return _swift_task_switch(v13, v12, v11);
}

uint64_t sub_1000C4EEC()
{
  v1 = *(v0 + 1204);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1512);
  v4 = *(v0 + 1504);
  v37 = *(v0 + 1472);
  v5 = *(v0 + 1416);
  v31 = *(v0 + 1408);
  v32 = *(v0 + 1424);
  v34 = *(v0 + 1320);
  v36 = *(v0 + 1464);
  v27 = *(v0 + 1312);
  v29 = *(v0 + 1368);
  v6 = *(v0 + 1304);
  v25 = *(v0 + 1296);
  TaskLocal.get()();
  v7 = *(v0 + 1072);
  sub_100026F50((v0 + 1040), *(v0 + 1064));
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  (*(v6 + 8))(v27, v25);
  sub_1000C6D80(v29);
  (*(v5 + 8))(v32, v31);
  sub_100026FDC((v0 + 200));
  sub_100026FDC((v0 + 1040));
  v8 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 1104) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 1112) = &off_100164F18;
  *(v0 + 1080) = v8;
  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 56);
  v10(v34, 1, 1, v9);
  sub_100026EEC(v0 + 1080, v0 + 1120);
  v11 = swift_allocObject();
  *(v11 + 16) = v36;
  *(v11 + 24) = v37;
  sub_10002C604((v0 + 1120), v11 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v34, &unk_1001330D8, v11);

  sub_100026FDC((v0 + 1080));
  sub_100026FDC((v0 + 160));
  v12 = *(v0 + 1496);
  v13 = *(v0 + 1456);
  v20 = *(v0 + 1448);
  v21 = *(v0 + 1424);
  v22 = *(v0 + 1400);
  v23 = *(v0 + 1376);
  v24 = *(v0 + 1368);
  v26 = *(v0 + 1352);
  v14 = *(v0 + 1320);
  v28 = *(v0 + 1344);
  v30 = *(v0 + 1312);
  v15 = *(v0 + 1288);
  v33 = *(v0 + 1264);
  v35 = *(v0 + 1240);
  v16 = *(v0 + 1208);
  v10(v14, 1, 1, v9);
  v17 = swift_allocObject();
  v17[2] = v36;
  v17[3] = v37;
  v17[4] = v16;

  sub_10009C9B8(0, 0, v14, &unk_1001330E0, v17);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000C52C4()
{
  v1 = v0[184];
  v2 = v0[183];
  v3 = v0[165];
  v4 = v0[151];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v24 = v0[192];
  v7 = v0[187];
  v8 = v0[182];
  v9 = v0[181];
  v10 = v0[178];
  v11 = v0[175];
  v12 = v0[172];
  v17 = v0[171];
  v18 = v0[169];
  v13 = v0[165];
  v19 = v0[168];
  v20 = v0[164];
  v21 = v0[161];
  v22 = v0[158];
  v23 = v0[155];
  v14 = v0[151];

  sub_10009C9B8(0, 0, v13, &unk_1001324D0, v6);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000C54C4()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1320);
  v26 = *(v0 + 1208);
  v4 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 264) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 272) = &off_100164F18;
  *(v0 + 240) = v4;
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  sub_100026EEC(v0 + 240, v0 + 280);
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  sub_10002C604((v0 + 280), v7 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v3, &unk_100133040, v7);

  sub_100026FDC((v0 + 240));
  sub_100026FDC((v0 + 160));
  v6(v3, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v1;
  v8[4] = v26;
  v9 = *(v0 + 1496);
  v10 = *(v0 + 1456);
  v11 = *(v0 + 1448);
  v12 = *(v0 + 1424);
  v13 = *(v0 + 1400);
  v14 = *(v0 + 1376);
  v15 = *(v0 + 1368);
  v20 = *(v0 + 1352);
  v21 = *(v0 + 1344);
  v16 = *(v0 + 1320);
  v22 = *(v0 + 1312);
  v23 = *(v0 + 1288);
  v24 = *(v0 + 1264);
  v25 = *(v0 + 1240);
  v27 = *(v0 + 1552);
  v17 = *(v0 + 1208);

  sub_10009C9B8(0, 0, v16, &unk_100133048, v8);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000C5790()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1320);
  v4 = *(v0 + 1208);
  sub_100026FDC((v0 + 200));
  v5 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 464) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 472) = &off_100164F18;
  *(v0 + 440) = v5;
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v3, 1, 1, v6);
  sub_100026EEC(v0 + 440, v0 + 480);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  sub_10002C604((v0 + 480), v8 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v3, &unk_100133060, v8);

  sub_100026FDC((v0 + 440));
  sub_100026FDC((v0 + 160));
  v7(v3, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v1;
  v9[4] = v4;
  v10 = *(v0 + 1496);
  v11 = *(v0 + 1456);
  v12 = *(v0 + 1448);
  v13 = *(v0 + 1424);
  v14 = *(v0 + 1400);
  v15 = *(v0 + 1376);
  v16 = *(v0 + 1368);
  v21 = *(v0 + 1352);
  v22 = *(v0 + 1344);
  v17 = *(v0 + 1320);
  v23 = *(v0 + 1312);
  v24 = *(v0 + 1288);
  v25 = *(v0 + 1264);
  v26 = *(v0 + 1240);
  v27 = *(v0 + 1568);
  v18 = *(v0 + 1208);

  sub_10009C9B8(0, 0, v17, &unk_100133068, v9);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1000C5A58()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1416);
  v5 = *(v0 + 1408);
  v6 = *(v0 + 1320);
  v7 = *(v0 + 1208);
  sub_1000C6D80(*(v0 + 1368));
  (*(v4 + 8))(v3, v5);
  sub_100026FDC((v0 + 200));
  v8 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 904) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 912) = &off_100164F18;
  *(v0 + 880) = v8;
  v9 = type metadata accessor for TaskPriority();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 1, 1, v9);
  sub_100026EEC(v0 + 880, v0 + 920);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  sub_10002C604((v0 + 920), v11 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v6, &unk_1001330B8, v11);

  sub_100026FDC((v0 + 880));
  sub_100026FDC((v0 + 160));
  v10(v6, 1, 1, v9);
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = v1;
  v12[4] = v7;
  v13 = *(v0 + 1496);
  v14 = *(v0 + 1456);
  v15 = *(v0 + 1448);
  v16 = *(v0 + 1424);
  v17 = *(v0 + 1400);
  v18 = *(v0 + 1376);
  v19 = *(v0 + 1368);
  v24 = *(v0 + 1352);
  v25 = *(v0 + 1344);
  v20 = *(v0 + 1320);
  v26 = *(v0 + 1312);
  v27 = *(v0 + 1288);
  v28 = *(v0 + 1264);
  v29 = *(v0 + 1240);
  v30 = *(v0 + 1608);
  v21 = *(v0 + 1208);

  sub_10009C9B8(0, 0, v20, &unk_1001330C0, v12);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1000C5D50()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1416);
  v5 = *(v0 + 1408);
  v6 = *(v0 + 1368);
  v7 = *(v0 + 1320);
  v8 = *(v0 + 1208);
  (*(*(v0 + 1304) + 8))(*(v0 + 1312), *(v0 + 1296));
  sub_1000C6D80(v6);
  (*(v4 + 8))(v3, v5);
  sub_100026FDC((v0 + 200));
  v9 = *sub_100026F50((v0 + 160), *(v0 + 184));
  *(v0 + 984) = type metadata accessor for DataRegistryImplementation();
  *(v0 + 992) = &off_100164F18;
  *(v0 + 960) = v9;
  v10 = type metadata accessor for TaskPriority();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 1, 1, v10);
  sub_100026EEC(v0 + 960, v0 + 1000);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v1;
  sub_10002C604((v0 + 1000), v12 + 32);
  swift_retain_n();

  sub_100053D08(0, 0, v7, &unk_1001330C8, v12);

  sub_100026FDC((v0 + 960));
  sub_100026FDC((v0 + 160));
  v11(v7, 1, 1, v10);
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = v1;
  v13[4] = v8;
  v14 = *(v0 + 1496);
  v15 = *(v0 + 1456);
  v16 = *(v0 + 1448);
  v17 = *(v0 + 1424);
  v18 = *(v0 + 1400);
  v19 = *(v0 + 1376);
  v20 = *(v0 + 1368);
  v25 = *(v0 + 1352);
  v26 = *(v0 + 1344);
  v21 = *(v0 + 1320);
  v27 = *(v0 + 1312);
  v28 = *(v0 + 1288);
  v29 = *(v0 + 1264);
  v30 = *(v0 + 1240);
  v31 = *(v0 + 1624);
  v22 = *(v0 + 1208);

  sub_10009C9B8(0, 0, v21, &unk_1001330D0, v13);

  sub_1000C6940("WeeklyMetricsTask.run", 21, 2);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1000C6068(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = type metadata accessor for Bag.Profile();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = type metadata accessor for Bag();
  v3[7] = v7;
  v8 = *(v7 - 8);
  v3[8] = v8;
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = *(*(type metadata accessor for MetricsPipeline.Configuration() - 8) + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000C61C8, v2, 0);
}

uint64_t sub_1000C61C8()
{
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v26 = v0[11];
  v27 = v0[5];
  v29 = v0[4];
  v6 = v0[3];
  sub_100026F94(&qword_10016D008, &qword_1001330F8);
  sub_1000C7144();
  LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:configuration:rules:)();
  v7 = *(v3 + 16);
  v7(v26, v6, v5);
  sub_1000C7198();
  v7(v1, v6, v5);
  v7(v2, v1, v5);
  v8 = type metadata accessor for DaemonMetricsEventRecorder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v7(v11 + OBJC_IVAR____TtC19amsondevicestoraged26DaemonMetricsEventRecorder_bag, v2, v5);

  Bag.profile.getter();
  Bag.Profile.name.getter();
  (*(v27 + 8))(v4, v29);
  v12 = Bag.amsBag.getter();
  v13 = objc_allocWithZone(AMSMetrics);
  v14 = String._bridgeToObjectiveC()();

  v30 = [v13 initWithContainerID:v14 bag:v12];
  v15 = v0[12];
  v17 = v0[9];
  v16 = v0[10];
  v18 = v0[7];
  v19 = v0[8];
  v28 = v0[6];
  v24 = v0[2];
  v25 = v0[11];
  swift_unknownObjectRelease();

  v20 = *(v19 + 8);
  v20(v17, v18);
  v20(v16, v18);
  *(v11 + OBJC_IVAR____TtC19amsondevicestoraged26DaemonMetricsEventRecorder_metrics) = v30;
  v21 = (v11 + OBJC_IVAR____TtC19amsondevicestoraged26DaemonMetricsEventRecorder_defaultTopic);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  *(v11 + OBJC_IVAR____TtC19amsondevicestoraged26DaemonMetricsEventRecorder_anonymousTopics) = &_swiftEmptySetSingleton;
  sub_1000C71FC(&qword_10016D020, 255, type metadata accessor for DaemonMetricsEventRecorder);
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:recorder:)();
  MetricsPipeline.init(from:)();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000C6520(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100042680;

  return sub_1000C28A4(a1);
}

uint64_t sub_1000C65B8(uint64_t a1, uint64_t a2)
{
  result = sub_1000C71FC(&qword_10016CFD8, a2, type metadata accessor for WeeklyMetricsTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C6634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_1000C71FC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C6728, v6, v5);
}

uint64_t sub_1000C6728()
{
  v1 = *sub_100026F50(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000C67C4;

  return sub_1000643EC();
}

uint64_t sub_1000C67C4()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000C68BC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = static String._tryFromUTF8(_:)();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C6940(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A610 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016CF20);
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

uint64_t sub_1000C6C20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000A444C;

  return sub_1000C6634(a1, v4, v5, v1 + 32);
}

uint64_t sub_1000C6CD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100042680;

  return sub_1000C6634(a1, v4, v5, v1 + 32);
}

uint64_t sub_1000C6D80(uint64_t a1)
{
  v2 = type metadata accessor for MetricsSamplingLottery();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C6DDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100026FDC((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void *sub_1000C6E1C(uint64_t a1)
{
  v2 = type metadata accessor for MetricsFieldExclusionRequest();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100026F94(&qword_10016CFF0, &qword_1001330F0);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1000C71FC(&qword_10016CFF8, 255, &type metadata accessor for MetricsFieldExclusionRequest);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1000C71FC(&qword_10016D000, 255, &type metadata accessor for MetricsFieldExclusionRequest);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_1000C7144()
{
  result = qword_10016D010;
  if (!qword_10016D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D010);
  }

  return result;
}

unint64_t sub_1000C7198()
{
  result = qword_10016D018;
  if (!qword_10016D018)
  {
    sub_10002AD94(&qword_10016D008, &qword_1001330F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D018);
  }

  return result;
}

uint64_t sub_1000C71FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000C72AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTime();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000C732C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTime();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RateLimitInfo()
{
  result = qword_10016D080;
  if (!qword_10016D080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C73E8()
{
  result = type metadata accessor for MonotonicTime();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000C746C()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  sub_10002FDA4(v0, qword_100173718);
  sub_10002FD14(v0, qword_100173718);
  static Utils.daemonBundleId.getter();
  return OSLogger.Subsystem.init(rawValue:)();
}

uint64_t sub_1000C74C0()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v5 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v4, v5, v0);
  qword_100173748 = type metadata accessor for OSLogger();
  unk_100173750 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_100173730);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C7604()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v5 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v4, v5, v0);
  qword_100173770 = type metadata accessor for OSLogger();
  unk_100173778 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_100173758);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C7744()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v5 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v4, v5, v0);
  qword_100173798 = type metadata accessor for OSLogger();
  unk_1001737A0 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_100173780);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C787C()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v5 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v4, v5, v0);
  qword_1001737C0 = type metadata accessor for OSLogger();
  unk_1001737C8 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_1001737A8);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C79C8()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v5 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v4, v5, v0);
  qword_1001737E8 = type metadata accessor for OSLogger();
  unk_1001737F0 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_1001737D0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C7B20()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v5 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v4, v5, v0);
  qword_100173818 = type metadata accessor for OSLogger();
  unk_100173820 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_100173800);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C7C60()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v5 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v4, v5, v0);
  qword_100173840 = type metadata accessor for OSLogger();
  unk_100173848 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_100173828);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C7DAC()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v5 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v4, v5, v0);
  qword_100173868 = type metadata accessor for OSLogger();
  unk_100173870 = &protocol witness table for OSLogger;
  sub_100042BAC(qword_100173850);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1000C7F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = type metadata accessor for OSLogger.Subsystem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v10 = sub_10002FD14(v5, qword_100173718);
  (*(v6 + 16))(v9, v10, v5);
  v16[3] = type metadata accessor for OSLogger();
  v16[4] = &protocol witness table for OSLogger;
  sub_100042BAC(v16);
  OSLogger.init(subsystem:category:)();
  v11 = sub_100026F94(&qword_10016D0C0, &qword_1001331A8);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  *a4 = result;
  return result;
}

uint64_t sub_1000C8094(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = sub_100026F94(&qword_10016D1F8, &qword_100133288);
  v3[15] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v3[17] = v7;
  v8 = *(v7 - 8);
  v3[18] = v8;
  v9 = *(v8 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000C81CC, v2, 0);
}

uint64_t sub_1000C81CC()
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "performSelectRequest", "", v6, 2u);
  }

  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[18];

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[21] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  v15[1] = sub_1000C83B8;
  v16 = v0[16];
  v17 = v0[12];
  v18 = v0[13];
  v19 = v0[11];

  return sub_1000DA9EC(v16, v19, v17);
}

uint64_t sub_1000C83B8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_1000C8D38;
  }

  else
  {
    v6 = sub_1000C84E4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000C84E4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = (v2 + *(v1 + 40));
  v4 = *v3;
  v5 = v3[1];
  v0[24] = *(v2 + *(v1 + 44));
  v6 = qword_10016A678;

  if (v6 != -1)
  {
    swift_once();
    v24 = v0[16];
  }

  v7 = v0[14];
  v25 = v0[23];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v8 = *(type metadata accessor for LogMessage() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x800000010013D290;
  v11._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v0[10] = &type metadata for String;
  v0[7] = v4;
  v0[8] = v5;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 7), &qword_10016AB10, &unk_100130B10);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_10002C044(v4, v5);
  v0[25] = Connection.prepare(_:_:)();
  if (v25)
  {
    v13 = v0[21];
    sub_10002BA6C(v0[16], &qword_10016D1F8, &qword_100133288);

    sub_1000F7B88("performSelectRequest", 20, 2);

    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[16];
    v17 = v0[14];

    v18 = v0[1];

    return v18();
  }

  else
  {

    v20 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v21 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v22 = swift_task_alloc();
    v0[26] = v22;
    *v22 = v0;
    v22[1] = sub_1000C884C;
    v23 = v0[12];

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v20, v20);
  }
}

uint64_t sub_1000C884C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_1000C8DE8;
  }

  else
  {
    v6 = sub_1000C8978;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000C8978()
{
  v1 = *sub_100026F50(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_1000C8A18;

  return sub_100061DD0(0);
}

uint64_t sub_1000C8A18()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_1000C8C54;
  }

  else
  {
    v6 = sub_1000C8B44;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000C8B44()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[14];

  v8 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  sub_10002BA6C(v6, &qword_10016D1F8, &qword_100133288);
  sub_100026FDC(v0 + 2);
  sub_1000F7B88("performSelectRequest", 20, 2);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1000C8C54()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v4 = v0[16];

  sub_10002BA6C(v4, &qword_10016D1F8, &qword_100133288);
  sub_100026FDC(v0 + 2);
  sub_1000F7B88("performSelectRequest", 20, 2);

  v5 = v0[29];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[16];
  v9 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000C8D38()
{
  v1 = v0[21];
  sub_1000F7B88("performSelectRequest", 20, 2);

  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[16];
  v6 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000C8DE8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v4 = v0[16];

  sub_10002BA6C(v4, &qword_10016D1F8, &qword_100133288);
  sub_1000F7B88("performSelectRequest", 20, 2);

  v5 = v0[27];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[16];
  v9 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000C8EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[49] = a3;
  v4[50] = v3;
  v4[47] = a1;
  v4[48] = a2;
  v5 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[51] = swift_task_alloc();
  v6 = *(*(sub_100026F94(&qword_10016AD38, &qword_1001332F0) - 8) + 64) + 15;
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v7 = sub_100026F94(&qword_10016D228, &qword_1001332F8);
  v4[55] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[56] = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  v4[57] = v9;
  v10 = *(v9 - 8);
  v4[58] = v10;
  v11 = *(v10 + 64) + 15;
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();

  return _swift_task_switch(sub_1000C904C, v3, 0);
}

uint64_t sub_1000C904C()
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v1 = v0[60];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[60];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "performPluckRequest", "", v6, 2u);
  }

  v8 = v0[59];
  v9 = v0[60];
  v10 = v0[57];
  v11 = v0[58];

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[61] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v15 = swift_task_alloc();
  v0[62] = v15;
  *v15 = v0;
  v15[1] = sub_1000C9238;
  v16 = v0[56];
  v17 = v0[49];
  v18 = v0[50];
  v19 = v0[48];

  return sub_1000DDBE4(v16, v19, v17);
}

uint64_t sub_1000C9238()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = v0;

  v5 = *(v2 + 400);
  if (v0)
  {
    v6 = sub_1000CA038;
  }

  else
  {
    v6 = sub_1000C9364;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000C9364()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = (v2 + *(v1 + 40));
  v4 = *v3;
  v5 = v3[1];
  v52 = *(v2 + *(v1 + 44));

  PluckRequest.query.getter();
  sub_100026F94(&qword_10016A948, &unk_100131880);
  sub_100026F94(&qword_10016A950, &unk_100133310);
  if (swift_dynamicCast())
  {
    sub_10002C604((v0 + 96), v0 + 16);
    if (qword_10016A678 != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 504);
    v6 = *(v0 + 424);
    v7 = *(v0 + 408);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v8 = *(type metadata accessor for LogMessage() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._object = 0x800000010013D3A0;
    v11._countAndFlagsBits = 0xD000000000000022;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    *(v0 + 272) = &type metadata for String;
    *(v0 + 248) = v4;
    *(v0 + 256) = v5;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 248, &qword_10016AB10, &unk_100130B10);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    sub_100026F50((v0 + 16), v13);
    *(v0 + 200) = v13;
    *(v0 + 208) = v14;
    sub_100042BAC((v0 + 176));
    dispatch thunk of QueryType.descoped.getter();
    Connection.pluck(_:)();
    if (v50)
    {
      v15 = *(v0 + 488);
      sub_10002BA6C(*(v0 + 448), &qword_10016D228, &qword_1001332F8);
      sub_100026FDC((v0 + 176));
      sub_100026FDC((v0 + 16));
LABEL_10:
      sub_1000F7B88("performPluckRequest", 19, 2);

      v32 = *(v0 + 472);
      v31 = *(v0 + 480);
      v33 = *(v0 + 448);
      v35 = *(v0 + 424);
      v34 = *(v0 + 432);
      v37 = *(v0 + 408);
      v36 = *(v0 + 416);

      v38 = *(v0 + 8);

      return v38();
    }

    v40 = *(v0 + 424);
    v41 = *(v0 + 432);
    sub_100026FDC((v0 + 176));
    sub_1000F7F90(v40, v41, &qword_10016AD38, &qword_1001332F0);
    sub_100026FDC((v0 + 16));
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_10002BA6C(v0 + 96, &qword_10016A958, &qword_100130A68);
    if (qword_10016A678 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 448);
    v16 = *(v0 + 408);
    v49 = *(v0 + 416);
    v51 = *(v0 + 504);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v17 = *(type metadata accessor for LogMessage() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 0xD00000000000002ALL;
    v20._object = 0x800000010013D370;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    *(v0 + 240) = &type metadata for String;
    *(v0 + 216) = v4;
    *(v0 + 224) = v5;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 216, &qword_10016AB10, &unk_100130B10);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    type metadata accessor for PluckRequest();
    sub_1000F820C(&qword_10016D230, &type metadata accessor for PluckRequest);
    *(v0 + 280) = QueryRequest.statement.getter();
    *(v0 + 288) = v22;

    v23._countAndFlagsBits = 46;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    *(v0 + 296) = v4;
    *(v0 + 304) = v5;
    *(v0 + 312) = 0;
    *(v0 + 320) = 0xE000000000000000;
    sub_10002C5B0();
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v26 = v25;

    *(v0 + 328) = v24;
    *(v0 + 336) = v26;
    v27._countAndFlagsBits = v4;
    v27._object = v5;
    String.append(_:)(v27);

    v28._countAndFlagsBits = 11810;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    *(v0 + 344) = 34;
    *(v0 + 352) = 0xE100000000000000;
    *(v0 + 360) = 0;
    *(v0 + 368) = 0xE000000000000000;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    Connection.pluck(_:_:)();
    if (v51)
    {
      v29 = *(v0 + 488);
      v30 = *(v0 + 448);

      sub_10002BA6C(v30, &qword_10016D228, &qword_1001332F8);
      goto LABEL_10;
    }

    v42 = *(v0 + 432);
    v43 = *(v0 + 416);

    sub_1000F7F90(v43, v42, &qword_10016AD38, &qword_1001332F0);
  }

  v44 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v45 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v46 = swift_task_alloc();
  *(v0 + 512) = v46;
  *v46 = v0;
  v46[1] = sub_1000C9B00;
  v47 = *(v0 + 392);

  return BaseObjectGraph.inject<A>(_:)(v0 + 136, v44, v44);
}