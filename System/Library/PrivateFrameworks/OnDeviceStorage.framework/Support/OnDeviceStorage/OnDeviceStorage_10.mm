uint64_t sub_1000C9B00()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = *(v2 + 400);
  if (v0)
  {
    v6 = sub_1000CA114;
  }

  else
  {
    v6 = sub_1000C9C2C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000C9C2C()
{
  v1 = *sub_100026F50(v0 + 17, v0[20]);
  v2 = swift_task_alloc();
  v0[66] = v2;
  *v2 = v0;
  v2[1] = sub_1000C9CCC;

  return sub_100061DD0(0);
}

uint64_t sub_1000C9CCC()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = *(v2 + 400);
  if (v0)
  {
    v6 = sub_1000C9F20;
  }

  else
  {
    v6 = sub_1000C9DF8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000C9DF8()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[59];
  v5 = v0[53];
  v4 = v0[54];
  v7 = v0[51];
  v6 = v0[52];
  v8 = v0[47];
  sub_10002BA6C(v0[56], &qword_10016D228, &qword_1001332F8);
  sub_1000F7F90(v4, v8, &qword_10016AD38, &qword_1001332F0);
  sub_100026FDC(v0 + 17);
  sub_1000F7B88("performPluckRequest", 19, 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000C9F20()
{
  v1 = v0[61];
  v2 = v0[56];
  sub_10002BA6C(v0[54], &qword_10016AD38, &qword_1001332F0);
  sub_10002BA6C(v2, &qword_10016D228, &qword_1001332F8);
  sub_100026FDC(v0 + 17);
  sub_1000F7B88("performPluckRequest", 19, 2);

  v3 = v0[67];
  v5 = v0[59];
  v4 = v0[60];
  v6 = v0[56];
  v8 = v0[53];
  v7 = v0[54];
  v10 = v0[51];
  v9 = v0[52];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000CA038()
{
  v1 = v0[61];
  sub_1000F7B88("performPluckRequest", 19, 2);

  v2 = v0[63];
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[56];
  v7 = v0[53];
  v6 = v0[54];
  v9 = v0[51];
  v8 = v0[52];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000CA114()
{
  v1 = v0[61];
  v2 = v0[56];
  sub_10002BA6C(v0[54], &qword_10016AD38, &qword_1001332F0);
  sub_10002BA6C(v2, &qword_10016D228, &qword_1001332F8);
  sub_1000F7B88("performPluckRequest", 19, 2);

  v3 = v0[65];
  v5 = v0[59];
  v4 = v0[60];
  v6 = v0[56];
  v8 = v0[53];
  v7 = v0[54];
  v10 = v0[51];
  v9 = v0[52];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000CA224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[45] = a3;
  v4[46] = v3;
  v4[43] = a1;
  v4[44] = a2;
  v5 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[47] = swift_task_alloc();
  v6 = sub_100026F94(&qword_10016D240, &qword_100133328);
  v4[48] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[49] = swift_task_alloc();
  v8 = type metadata accessor for OSSignpostID();
  v4[50] = v8;
  v9 = *(v8 - 8);
  v4[51] = v9;
  v10 = *(v9 + 64) + 15;
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();

  return _swift_task_switch(sub_1000CA35C, v3, 0);
}

uint64_t sub_1000CA35C()
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v1 = v0[53];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[53];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "performScalarValueRequest", "", v6, 2u);
  }

  v8 = v0[52];
  v9 = v0[53];
  v10 = v0[50];
  v11 = v0[51];

  (*(v11 + 16))(v8, v9, v10);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[54] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v15 = swift_task_alloc();
  v0[55] = v15;
  *v15 = v0;
  v15[1] = sub_1000CA548;
  v16 = v0[49];
  v17 = v0[45];
  v18 = v0[46];
  v19 = v0[44];

  return sub_1000E0C94(v16, v19, v17);
}

uint64_t sub_1000CA548()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 368);
  if (v0)
  {
    v6 = sub_1000CB158;
  }

  else
  {
    v6 = sub_1000CA674;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000CA674()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = (v2 + *(v1 + 40));
  v5 = *v3;
  v4 = v3[1];
  v34 = *(v2 + *(v1 + 44));
  v6 = qword_10016A678;

  if (v6 != -1)
  {
    swift_once();
    v32 = v0[49];
  }

  v7 = v0[47];
  v33 = v0[56];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v8 = *(type metadata accessor for LogMessage() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x800000010013D3F0;
  v11._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v0[30] = &type metadata for String;
  v0[27] = v5;
  v0[28] = v4;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 27), &qword_10016AB10, &unk_100130B10);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  type metadata accessor for ScalarValueRequest();
  sub_1000F820C(&qword_10016D248, &type metadata accessor for ScalarValueRequest);
  v0[31] = dispatch thunk of QueryRequest.statement.getter();
  v0[32] = v13;

  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v0[33] = v5;
  v0[34] = v4;
  v0[35] = 0;
  v0[36] = 0xE000000000000000;
  sub_10002C5B0();
  v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v17 = v16;

  v0[37] = v15;
  v0[38] = v17;
  v18._countAndFlagsBits = v5;
  v18._object = v4;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 11810;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v0[39] = 34;
  v0[40] = 0xE100000000000000;
  v0[41] = 0;
  v0[42] = 0xE000000000000000;
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  Connection.scalar(_:_:)();
  if (v33)
  {
    v20 = v0[54];
    v21 = v0[49];

    sub_10002BA6C(v21, &qword_10016D240, &qword_100133328);
    sub_1000F7B88("performScalarValueRequest", 25, 2);

    v23 = v0[52];
    v22 = v0[53];
    v24 = v0[49];
    v25 = v0[47];

    v26 = v0[1];

    return v26();
  }

  else
  {

    v28 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v29 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v30 = swift_task_alloc();
    v0[57] = v30;
    *v30 = v0;
    v30[1] = sub_1000CAB1C;
    v31 = v0[45];

    return BaseObjectGraph.inject<A>(_:)(v0 + 7, v28, v28);
  }
}

uint64_t sub_1000CAB1C()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = v0;

  v5 = *(v2 + 368);
  if (v0)
  {
    v6 = sub_1000CB208;
  }

  else
  {
    v6 = sub_1000CAC48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000CAC48()
{
  v1 = *sub_100026F50(v0 + 7, v0[10]);
  v2 = swift_task_alloc();
  v0[59] = v2;
  *v2 = v0;
  v2[1] = sub_1000CACE8;

  return sub_100061DD0(0);
}

uint64_t sub_1000CACE8()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 368);
  if (v0)
  {
    v6 = sub_1000CB06C;
  }

  else
  {
    v6 = sub_1000CAE14;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000CAE14()
{
  sub_10002BA04(v0 + 16, v0 + 136, &qword_10016C030, &qword_1001321B8);
  v1 = *(v0 + 344);
  if (*(v0 + 160))
  {
    v2 = *(v0 + 480);
    sub_10002C604((v0 + 136), v0 + 96);
    sub_100026EEC(v0 + 96, v0 + 176);
    AnyValue.init(binding:)();
    if (v2)
    {
      v3 = *(v0 + 432);
      v4 = *(v0 + 392);
      sub_100026FDC((v0 + 96));
      sub_10002BA6C(v0 + 16, &qword_10016C030, &qword_1001321B8);
      sub_10002BA6C(v4, &qword_10016D240, &qword_100133328);
      sub_100026FDC((v0 + 56));
      sub_1000F7B88("performScalarValueRequest", 25, 2);

      v6 = *(v0 + 416);
      v5 = *(v0 + 424);
      v7 = *(v0 + 392);
      v8 = *(v0 + 376);

      v9 = *(v0 + 8);
      goto LABEL_7;
    }

    v12 = *(v0 + 392);
    sub_100026FDC((v0 + 96));
    sub_10002BA6C(v0 + 16, &qword_10016C030, &qword_1001321B8);
    v11 = v12;
  }

  else
  {
    v10 = *(v0 + 392);
    sub_10002BA6C(v0 + 136, &qword_10016C030, &qword_1001321B8);
    AnyValue.init(_:)();
    sub_10002BA6C(v0 + 16, &qword_10016C030, &qword_1001321B8);
    v11 = v10;
  }

  sub_10002BA6C(v11, &qword_10016D240, &qword_100133328);
  sub_100026FDC((v0 + 56));
  v13 = *(v0 + 424);
  v14 = *(v0 + 432);
  v15 = *(v0 + 416);
  v16 = *(v0 + 392);
  v17 = *(v0 + 376);
  sub_1000F7B88("performScalarValueRequest", 25, 2);

  v9 = *(v0 + 8);
LABEL_7:

  return v9();
}

uint64_t sub_1000CB06C()
{
  v1 = v0[54];
  v2 = v0[49];
  sub_10002BA6C((v0 + 2), &qword_10016C030, &qword_1001321B8);
  sub_10002BA6C(v2, &qword_10016D240, &qword_100133328);
  sub_100026FDC(v0 + 7);
  sub_1000F7B88("performScalarValueRequest", 25, 2);

  v3 = v0[60];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[49];
  v7 = v0[47];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000CB158()
{
  v1 = v0[54];
  sub_1000F7B88("performScalarValueRequest", 25, 2);

  v2 = v0[56];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[49];
  v6 = v0[47];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000CB208()
{
  v1 = v0[54];
  v2 = v0[49];
  sub_10002BA6C((v0 + 2), &qword_10016C030, &qword_1001321B8);
  sub_10002BA6C(v2, &qword_10016D240, &qword_100133328);
  sub_1000F7B88("performScalarValueRequest", 25, 2);

  v3 = v0[58];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[49];
  v7 = v0[47];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000CB2EC(uint64_t a1, uint64_t a2)
{
  v3[160] = v2;
  v3[159] = a2;
  v3[158] = a1;
  v4 = *(*(sub_100026F94(&qword_10016CB48, &qword_100132C60) - 8) + 64) + 15;
  v3[161] = swift_task_alloc();
  v5 = type metadata accessor for StatementType();
  v3[162] = v5;
  v6 = *(v5 - 8);
  v3[163] = v6;
  v7 = *(v6 + 64) + 15;
  v3[164] = swift_task_alloc();
  v8 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v3[165] = swift_task_alloc();
  v9 = type metadata accessor for RequestContext();
  v3[166] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[167] = swift_task_alloc();
  v3[168] = swift_task_alloc();
  v3[169] = swift_task_alloc();
  v11 = type metadata accessor for Table();
  v3[170] = v11;
  v12 = *(v11 - 8);
  v3[171] = v12;
  v13 = *(v12 + 64) + 15;
  v3[172] = swift_task_alloc();
  v14 = type metadata accessor for AccessCredential.Error();
  v3[173] = v14;
  v15 = *(v14 - 8);
  v3[174] = v15;
  v16 = *(v15 + 64) + 15;
  v3[175] = swift_task_alloc();
  v17 = type metadata accessor for DataSpecification();
  v3[176] = v17;
  v18 = *(v17 - 8);
  v3[177] = v18;
  v19 = *(v18 + 64) + 15;
  v3[178] = swift_task_alloc();
  v20 = type metadata accessor for DataSpecification.Namespace.Table();
  v3[179] = v20;
  v21 = *(v20 - 8);
  v3[180] = v21;
  v22 = *(v21 + 64) + 15;
  v3[181] = swift_task_alloc();
  v23 = type metadata accessor for OSSignposter();
  v3[182] = v23;
  v24 = *(v23 - 8);
  v3[183] = v24;
  v25 = *(v24 + 64) + 15;
  v3[184] = swift_task_alloc();
  v26 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v3[185] = swift_task_alloc();
  v27 = sub_100026F94(&qword_10016D258, &qword_100133350);
  v3[186] = v27;
  v28 = *(v27 - 8);
  v3[187] = v28;
  v3[188] = *(v28 + 64);
  v3[189] = swift_task_alloc();
  v3[190] = swift_task_alloc();
  v3[191] = swift_task_alloc();
  v3[192] = swift_task_alloc();
  v29 = type metadata accessor for OSSignpostID();
  v3[193] = v29;
  v30 = *(v29 - 8);
  v3[194] = v30;
  v31 = *(v30 + 64) + 15;
  v3[195] = swift_task_alloc();
  v3[196] = swift_task_alloc();
  v3[197] = swift_task_alloc();

  return _swift_task_switch(sub_1000CB76C, v2, 0);
}

uint64_t sub_1000CB76C()
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v1 = v0[197];
  v0[198] = sub_10002FD14(v0[182], qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v0[197];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v6, "performInsertRequest", "", v5, 2u);
  }

  v7 = v0[197];
  v8 = v0[196];
  v9 = v0[194];
  v10 = v0[193];

  (*(v9 + 16))(v8, v7, v10);
  v11 = type metadata accessor for OSSignpostIntervalState();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[199] = OSSignpostIntervalState.init(id:isOpen:)();
  v14 = *(v9 + 8);
  v0[200] = v14;
  v0[201] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v7, v10);
  v15 = swift_task_alloc();
  v0[202] = v15;
  *v15 = v0;
  v15[1] = sub_1000CB974;
  v16 = v0[192];
  v17 = v0[160];
  v18 = v0[159];
  v19 = v0[158];

  return sub_1000E4AD8(v16, v19, v18);
}

uint64_t sub_1000CB974()
{
  v2 = *v1;
  v3 = *(*v1 + 1616);
  v4 = *v1;
  *(*v1 + 1624) = v0;

  v5 = *(v2 + 1280);
  if (v0)
  {
    v6 = sub_1000D0000;
  }

  else
  {
    v6 = sub_1000CBAA0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000CBAA0()
{
  v1 = *(v0 + 1536);
  v2 = *(v0 + 1488);
  v3 = (v1 + *(v2 + 40));
  v4 = *v3;
  *(v0 + 1632) = *v3;
  v87 = v3[1];
  *(v0 + 1640) = v87;
  sub_10002A9C4(v0 + 104, (v1 + *(v2 + 36)));
  v85 = v4;
  v79 = *(*(v0 + 1536) + *(*(v0 + 1488) + 44));
  *(v0 + 1648) = v79;
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 1480);
  v83 = *(v0 + 1624);
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  *(v0 + 1656) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v6 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 1664) = *(v6 + 72);
  *(v0 + 1936) = *(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0xD000000000000023;
  v7._object = 0x800000010013D440;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  *(v0 + 1168) = &type metadata for String;
  *(v0 + 1144) = v4;
  *(v0 + 1152) = v87;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 1144, &qword_10016AB10, &unk_100130B10);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100083D2C(v4, v87, v0 + 192);
  if (v83)
  {
    v9 = *(v0 + 1592);
    v10 = *(v0 + 1536);
    sub_10002AAE4((v0 + 104));
    sub_10002BA6C(v10, &qword_10016D258, &qword_100133350);
    sub_1000F7B88("performInsertRequest", 20, 2);

    v25 = *(v0 + 1576);
    v26 = *(v0 + 1568);
    v27 = *(v0 + 1560);
    v28 = *(v0 + 1536);
    v29 = *(v0 + 1528);
    v30 = *(v0 + 1520);
    v31 = *(v0 + 1512);
    v32 = *(v0 + 1480);
    v33 = *(v0 + 1472);
    v34 = *(v0 + 1448);
    v75 = *(v0 + 1424);
    v77 = *(v0 + 1400);
    v78 = *(v0 + 1376);
    v80 = *(v0 + 1352);
    v81 = *(v0 + 1344);
    v82 = *(v0 + 1336);
    v84 = *(v0 + 1320);
    v86 = *(v0 + 1312);
    v88 = *(v0 + 1288);

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    std::string::basic_string((v0 + 1240), (v0 + 216));
    sub_10002EFB0((v0 + 1240));
    sub_10002EFC4(v0 + 1240);
    v11 = static String._fromUTF8Repairing(_:)();
    v13 = v12;
    v14 = *(v0 + 1280);
    *(v0 + 1672) = v12;
    *(v0 + 1680) = v11;
    std::string::~string((v0 + 1240));
    v15 = v14 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_connectionDelegate;
    *(v0 + 1688) = *(v14 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_connectionDelegate);
    *(v0 + 1696) = *(v15 + 8);
    v16 = v85;
    v17 = v87;
    sub_10002CDF4(v79, v11, v13, v85, v87);
    v18._countAndFlagsBits = v11;
    v18._object = v13;
    if (Connection.tableExists(_:)(v18))
    {
      v19 = *(v0 + 1480);
      v74 = *(v0 + 1280);
      sub_100026F50(qword_10016D0C8, qword_10016D0E0);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v20._countAndFlagsBits = 0x203A656C626154;
      v20._object = 0xE700000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      *(v0 + 1200) = &type metadata for String;
      *(v0 + 1176) = v11;
      *(v0 + 1184) = v13;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 1176, &qword_10016AB10, &unk_100130B10);
      v21._countAndFlagsBits = 0xD00000000000001CLL;
      v21._object = 0x800000010013D5B0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      *(v0 + 1232) = &type metadata for String;
      *(v0 + 1208) = v85;
      *(v0 + 1216) = v87;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 1208, &qword_10016AB10, &unk_100130B10);
      v22._countAndFlagsBits = 0xD000000000000027;
      v22._object = 0x800000010013D5D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_1000EDCE8(v11, v13, v85, v87, v79, v0 + 104);
      v23 = v79;
    }

    else
    {
      v73 = v11;
      v76 = v13;
      v37 = *(v0 + 1560);
      v38 = *(v0 + 1280);
      (*(*(v0 + 1464) + 16))(*(v0 + 1472), *(v0 + 1584), *(v0 + 1456));
      static OSSignpostID.exclusive.getter();
      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = OSSignposter.logHandle.getter();
      v41 = static os_signpost_type_t.begin.getter();
      v42 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, v41, v42, "performInsertRequest.createTable", "", v39, 2u);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v43 = *(v0 + 1280);
        swift_task_reportUnexpectedExecutor();
      }

      v44 = *(v0 + 1448);
      v45 = *(v0 + 1424);
      v46 = *(v0 + 1400);
      v47 = *(v0 + 1280) + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
      AccessCredential.dataSpecification.getter();
      _s19OnDeviceStorageCore17DataSpecificationV05tableF03for2inAC9NamespaceV5TableVSS_SStAA16AccessCredentialV5ErrorOYKF();
      v48 = *(v0 + 1480);
      v67 = *(v0 + 1448);
      v68 = *(v0 + 1376);
      v71 = *(v0 + 1368);
      (*(*(v0 + 1416) + 8))(*(v0 + 1424), *(v0 + 1408));
      sub_100026F50(qword_10016D0C8, qword_10016D0E0);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v49._object = 0x800000010013D4D0;
      v49._countAndFlagsBits = 0xD000000000000014;
      LogMessage.StringInterpolation.appendLiteral(_:)(v49);
      *(v0 + 784) = &type metadata for String;
      *(v0 + 760) = v73;
      *(v0 + 768) = v13;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 760, &qword_10016AB10, &unk_100130B10);
      v50._countAndFlagsBits = 0x686373206E69202CLL;
      v50._object = 0xED0000203A616D65;
      LogMessage.StringInterpolation.appendLiteral(_:)(v50);
      *(v0 + 1136) = &type metadata for String;
      *(v0 + 1112) = v85;
      *(v0 + 1120) = v87;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 1112, &qword_10016AB10, &unk_100130B10);
      v51._countAndFlagsBits = 0xD000000000000010;
      v51._object = 0x800000010013D4F0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v51);
      v52 = DataSpecification.Namespace.Table.columns.getter();
      *(v0 + 752) = sub_100026F94(&qword_10016D260, &qword_100133360);
      *(v0 + 728) = v52;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 728, &qword_10016AB10, &unk_100130B10);
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v53);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      Table.init(_:database:)();
      v54 = swift_task_alloc();
      v54[2] = v67;
      v54[3] = v73;
      v54[4] = v13;
      v54[5] = v85;
      v54[6] = v87;
      default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
      default argument 1 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
      default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
      Table.create(temporary:ifNotExists:withoutRowid:block:)();
      v58 = *(v0 + 1440);
      (*(v71 + 8))(*(v0 + 1376), *(v0 + 1360));

      Connection.run(_:_:)();
      v59 = (v58 + 8);
      v60 = *(v0 + 1608);
      v61 = *(v0 + 1560);
      v69 = *(v0 + 1544);
      v70 = *(v0 + 1600);
      v62 = *(v0 + 1472);
      v63 = *(v0 + 1464);
      v72 = *(v0 + 1456);
      v64 = *(v0 + 1448);
      v65 = *(v0 + 1432);

      (*v59)(v64, v65);
      LOBYTE(v65) = static os_signpost_type_t.end.getter();
      v66 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, v65, v66, "performInsertRequest.createTable", "", v39, 2u);

      v70(v61, v69);
      (*(v63 + 8))(v62, v72);
      v11 = v73;
      v13 = v76;
      v23 = v79;
      v16 = v85;
      v17 = v87;
    }

    v24 = *(v0 + 1280);
    sub_1000F002C(v11, v13, v16, v17, v23);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    v55 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v56 = swift_task_alloc();
    *(v0 + 1704) = v56;
    *v56 = v0;
    v56[1] = sub_1000CC81C;
    v57 = *(v0 + 1272);

    return BaseObjectGraph.inject<A>(_:)(v0 + 16, &type metadata for ClientInfo, &type metadata for ClientInfo);
  }
}

uint64_t sub_1000CC81C()
{
  v2 = *v1;
  v3 = *(*v1 + 1704);
  v9 = *v1;
  *(*v1 + 1712) = v0;

  if (v0)
  {
    v4 = *(v2 + 1672);
    v5 = *(v2 + 1280);

    v6 = sub_1000D019C;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 1280);
    v6 = sub_1000CC944;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000CC944()
{
  v1 = *(v0 + 1536);
  v2 = *(v0 + 1528);
  v72 = *(v0 + 1520);
  v74 = *(v0 + 1648);
  v3 = *(v0 + 1352);
  v4 = *(v0 + 1344);
  v70 = *(v0 + 1336);
  v5 = *(v0 + 1328);
  v6 = *(v0 + 1280);
  v7 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  *(v0 + 1720) = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  v8 = v5[5];
  v9 = type metadata accessor for AccessCredential();
  *(v0 + 1728) = v9;
  v10 = *(v9 - 8);
  *(v0 + 1736) = v10;
  v11 = *(v10 + 16);
  *(v0 + 1744) = v11;
  *(v0 + 1752) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v76 = *(v0 + 1688);
  v11(v3 + v8, v6 + v7, v9);
  sub_100026EEC(v6 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager, v3 + v5[7]);
  v12 = *(v0 + 32);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v12;
  v14 = *(v0 + 64);
  v13 = *(v0 + 80);
  v15 = *(v0 + 48);
  *(v3 + 80) = *(v0 + 96);
  *(v3 + 48) = v14;
  *(v3 + 64) = v13;
  *(v3 + 32) = v15;
  *(v3 + v5[6]) = v76;
  sub_1000F6524(v3, v4);
  sub_10002BA04(v1, v2, &qword_10016D258, &qword_100133350);
  sub_1000F6524(v3, v70);
  sub_10002BA04(v1, v72, &qword_10016D258, &qword_100133350);
  swift_unknownObjectRetain();

  sub_10002BA04(v6 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_statusProvider, v0 + 528, &qword_10016AFF8, &unk_100130F10);
  if (*(v0 + 552))
  {
    sub_10002C604((v0 + 528), v0 + 488);
    *(v0 + 1760) = sub_100026F50((v0 + 488), *(v0 + 512));

    return _swift_task_switch(sub_1000CD020, 0, 0);
  }

  else
  {
    v16 = *(v0 + 1712);
    v17 = *(v0 + 1648);
    v18 = *(v0 + 1528);
    v19 = *(v0 + 1512);
    v20 = *(v0 + 1504);
    v21 = *(v0 + 1496);
    v22 = *(v0 + 1344);
    sub_10002BA6C(v0 + 528, &qword_10016AFF8, &unk_100130F10);
    sub_10002BA04(v18, v19, &qword_10016D258, &qword_100133350);
    v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v17;
    sub_1000F7F90(v19, v24 + v23, &qword_10016D258, &qword_100133350);

    v25 = sub_1000D9E7C();
    if (v16)
    {
      v26 = *(v0 + 1672);
      v27 = *(v0 + 1648);
      v28 = *(v0 + 1528);
      v29 = *(v0 + 1520);
      v30 = *(v0 + 1344);
      v31 = *(v0 + 1336);

      sub_1000F65EC(v31, type metadata accessor for RequestContext);
      sub_10002BA6C(v29, &qword_10016D258, &qword_100133350);

      sub_10002BA6C(v28, &qword_10016D258, &qword_100133350);
      sub_1000F65EC(v30, type metadata accessor for RequestContext);
      v32 = *(v0 + 1592);
      v33 = *(v0 + 1536);
      sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
      sub_10001B428(v0 + 192);
      sub_10002AAE4((v0 + 104));
      sub_10002BA6C(v33, &qword_10016D258, &qword_100133350);
      sub_1000F7B88("performInsertRequest", 20, 2);

      v34 = *(v0 + 1576);
      v35 = *(v0 + 1568);
      v36 = *(v0 + 1560);
      v37 = *(v0 + 1536);
      v38 = *(v0 + 1528);
      v39 = *(v0 + 1520);
      v40 = *(v0 + 1512);
      v41 = *(v0 + 1480);
      v42 = *(v0 + 1472);
      v43 = *(v0 + 1448);
      v64 = *(v0 + 1424);
      v65 = *(v0 + 1400);
      v66 = *(v0 + 1376);
      v67 = *(v0 + 1352);
      v68 = *(v0 + 1344);
      v69 = *(v0 + 1336);
      v71 = *(v0 + 1320);
      v73 = *(v0 + 1312);
      v75 = *(v0 + 1288);

      v44 = *(v0 + 8);

      return v44();
    }

    else
    {
      v45 = v25;
      v46 = *(v0 + 1648);
      v47 = *(v0 + 1528);
      v48 = *(v0 + 1520);
      v49 = *(v0 + 1344);
      v50 = *(v0 + 1336);

      sub_1000F65EC(v50, type metadata accessor for RequestContext);
      sub_10002BA6C(v48, &qword_10016D258, &qword_100133350);
      sub_10002BA6C(v47, &qword_10016D258, &qword_100133350);
      sub_1000F65EC(v49, type metadata accessor for RequestContext);
      *(v0 + 1776) = v45;
      v51 = *(v0 + 1264);
      if (InsertRequest.isLastInBatch.getter())
      {
        v52 = sub_100026F94(&qword_10016B008, &unk_100130F30);
        v53 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
        v54 = swift_task_alloc();
        *(v0 + 1792) = v54;
        *v54 = v0;
        v54[1] = sub_1000CD894;
        v55 = *(v0 + 1272);

        return BaseObjectGraph.inject<A>(_:)(v0 + 448, v52, v52);
      }

      else
      {
        v56 = swift_task_alloc();
        *(v0 + 1824) = v56;
        *v56 = v0;
        v56[1] = sub_1000CDE20;
        v57 = *(v0 + 1680);
        v58 = *(v0 + 1672);
        v59 = *(v0 + 1640);
        v60 = *(v0 + 1632);
        v61 = *(v0 + 1280);
        v62 = *(v0 + 1272);

        return sub_1000F0814(v57, v58, v60, v59, v62);
      }
    }
  }
}

uint64_t sub_1000CD020()
{
  sub_100026F50(*(v0 + 1760), *(*(v0 + 1760) + 24));
  type metadata accessor for ConfigurationStoreImplementation();
  if (sub_1000503E4())
  {
    v1 = *(v0 + 1760);
    sub_10008CEE4();
    Current = CFAbsoluteTimeGetCurrent();
    v3 = *(v0 + 1712);
    v4 = *(v0 + 1648);
    v5 = *(v0 + 1512);
    v6 = *(v0 + 1504);
    v7 = *(v0 + 1496);
    v8 = *(v0 + 1336);
    sub_10002BA04(*(v0 + 1520), v5, &qword_10016D258, &qword_100133350);
    v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    sub_1000F7F90(v5, v10 + v9, &qword_10016D258, &qword_100133350);

    v11 = sub_1000D9E7C();
    if (v3)
    {
      v12 = *(v0 + 1672);

      v13 = CFAbsoluteTimeGetCurrent();
      v14 = *(v0 + 1760);
      v15 = *(v0 + 1320);
      v16 = *(v0 + 1272);
      sub_10009173C(v13 - Current);
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
      sub_10008E36C(v14, v0 + 320);
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      v19 = *(v0 + 336);
      *(v18 + 32) = *(v0 + 320);
      *(v18 + 48) = v19;
      *(v18 + 64) = *(v0 + 352);
      *(v18 + 80) = v16;

      sub_10009C9B8(0, 0, v15, &unk_100133380, v18);

LABEL_6:
      *(v0 + 1784) = v3;
      v29 = *(v0 + 1280);
      v30 = sub_1000CD64C;
      goto LABEL_10;
    }

    v31 = v11;

    v32 = CFAbsoluteTimeGetCurrent();
    v33 = *(v0 + 1760);
    v34 = *(v0 + 1320);
    v35 = *(v0 + 1272);
    sub_10009173C(v32 - Current);
    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
    sub_10008E36C(v33, v0 + 272);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v38 = *(v0 + 288);
    *(v37 + 32) = *(v0 + 272);
    *(v37 + 48) = v38;
    *(v37 + 64) = *(v0 + 304);
    *(v37 + 80) = v35;

    sub_10009C9B8(0, 0, v34, &unk_100133388, v37);
  }

  else
  {
    v3 = *(v0 + 1712);
    v20 = *(v0 + 1648);
    v21 = *(v0 + 1512);
    v22 = *(v0 + 1504);
    v23 = *(v0 + 1496);
    v24 = *(v0 + 1336);
    sub_10002BA04(*(v0 + 1520), v21, &qword_10016D258, &qword_100133350);
    v25 = (*(v23 + 80) + 24) & ~*(v23 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v20;
    sub_1000F7F90(v21, v26 + v25, &qword_10016D258, &qword_100133350);

    v27 = sub_1000D9E7C();
    if (v3)
    {
      v28 = *(v0 + 1672);

      goto LABEL_6;
    }

    v31 = v27;
  }

  *(v0 + 1768) = v31;
  v29 = *(v0 + 1280);
  v30 = sub_1000CD468;
LABEL_10:

  return _swift_task_switch(v30, v29, 0);
}

uint64_t sub_1000CD468()
{
  v1 = v0[206];
  v2 = v0[191];
  v3 = v0[190];
  v4 = v0[168];
  v5 = v0[167];

  sub_1000F65EC(v5, type metadata accessor for RequestContext);
  sub_10002BA6C(v3, &qword_10016D258, &qword_100133350);
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_1000F65EC(v4, type metadata accessor for RequestContext);
  sub_100026FDC(v0 + 61);
  v0[222] = v0[221];
  v6 = v0[158];
  if (InsertRequest.isLastInBatch.getter())
  {
    v7 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v8 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v9 = swift_task_alloc();
    v0[224] = v9;
    *v9 = v0;
    v9[1] = sub_1000CD894;
    v10 = v0[159];

    return BaseObjectGraph.inject<A>(_:)(v0 + 56, v7, v7);
  }

  else
  {
    v11 = swift_task_alloc();
    v0[228] = v11;
    *v11 = v0;
    v11[1] = sub_1000CDE20;
    v12 = v0[210];
    v13 = v0[209];
    v14 = v0[205];
    v15 = v0[204];
    v16 = v0[160];
    v17 = v0[159];

    return sub_1000F0814(v12, v13, v15, v14, v17);
  }
}

uint64_t sub_1000CD64C()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1528);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1344);
  v5 = *(v0 + 1336);

  sub_1000F65EC(v5, type metadata accessor for RequestContext);
  sub_10002BA6C(v3, &qword_10016D258, &qword_100133350);
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_1000F65EC(v4, type metadata accessor for RequestContext);
  sub_100026FDC((v0 + 488));
  v29 = *(v0 + 1784);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v7, &qword_10016D258, &qword_100133350);
  sub_1000F7B88("performInsertRequest", 20, 2);

  v8 = *(v0 + 1576);
  v9 = *(v0 + 1568);
  v10 = *(v0 + 1560);
  v11 = *(v0 + 1536);
  v12 = *(v0 + 1528);
  v13 = *(v0 + 1520);
  v14 = *(v0 + 1512);
  v15 = *(v0 + 1480);
  v16 = *(v0 + 1472);
  v17 = *(v0 + 1448);
  v20 = *(v0 + 1424);
  v21 = *(v0 + 1400);
  v22 = *(v0 + 1376);
  v23 = *(v0 + 1352);
  v24 = *(v0 + 1344);
  v25 = *(v0 + 1336);
  v26 = *(v0 + 1320);
  v27 = *(v0 + 1312);
  v28 = *(v0 + 1288);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000CD894()
{
  v2 = *v1;
  v3 = *(*v1 + 1792);
  v9 = *v1;
  *(*v1 + 1800) = v0;

  if (v0)
  {
    v4 = *(v2 + 1672);
    v5 = *(v2 + 1280);

    v6 = sub_1000D0364;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 1280);
    v6 = sub_1000CD9BC;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000CD9BC()
{
  v1 = *sub_100026F50(v0 + 56, v0[59]);
  v2 = swift_task_alloc();
  v0[226] = v2;
  *v2 = v0;
  v2[1] = sub_1000CDA5C;

  return sub_100061DD0(1);
}

uint64_t sub_1000CDA5C()
{
  v2 = *v1;
  v3 = *(*v1 + 1808);
  v9 = *v1;
  *(*v1 + 1816) = v0;

  if (v0)
  {
    v4 = *(v2 + 1672);
    v5 = *(v2 + 1280);

    v6 = sub_1000CDC34;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 1280);
    v6 = sub_1000CDB84;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000CDB84()
{
  sub_100026FDC(v0 + 56);
  v1 = swift_task_alloc();
  v0[228] = v1;
  *v1 = v0;
  v1[1] = sub_1000CDE20;
  v2 = v0[210];
  v3 = v0[209];
  v4 = v0[205];
  v5 = v0[204];
  v6 = v0[160];
  v7 = v0[159];

  return sub_1000F0814(v2, v3, v5, v4, v7);
}

uint64_t sub_1000CDC34()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performInsertRequest", 20, 2);

  v24 = *(v0 + 1816);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1568);
  v5 = *(v0 + 1560);
  v6 = *(v0 + 1536);
  v7 = *(v0 + 1528);
  v8 = *(v0 + 1520);
  v9 = *(v0 + 1512);
  v10 = *(v0 + 1480);
  v11 = *(v0 + 1472);
  v12 = *(v0 + 1448);
  v15 = *(v0 + 1424);
  v16 = *(v0 + 1400);
  v17 = *(v0 + 1376);
  v18 = *(v0 + 1352);
  v19 = *(v0 + 1344);
  v20 = *(v0 + 1336);
  v21 = *(v0 + 1320);
  v22 = *(v0 + 1312);
  v23 = *(v0 + 1288);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000CDE20()
{
  v2 = *v1;
  v3 = *(*v1 + 1824);
  v9 = *v1;
  *(*v1 + 1832) = v0;

  if (v0)
  {
    v4 = *(v2 + 1672);
    v5 = *(v2 + 1280);

    v6 = sub_1000D0548;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 1280);
    v6 = sub_1000CDF48;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000CDF48()
{
  v1 = *(v0 + 1688);
  v2 = sub_10002CA64(*(v0 + 1648), *(v0 + 1680), *(v0 + 1672), *(v0 + 1632), *(v0 + 1640));
  if (v2 >= 1)
  {
    v3 = v2;
    v4 = *(v0 + 1672);
    v5 = *(v0 + 1936);
    v6 = *(v0 + 1664);
    v7 = *(v0 + 1656);
    v8 = *(v0 + 1640);
    v53 = *(v0 + 1680);
    v56 = *(v0 + 1632);
    v9 = *(v0 + 1480);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0x206465726F6E6749;
    v10._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    *(v0 + 1040) = &type metadata for Int;
    *(v0 + 1016) = v3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 1016, &qword_10016AB10, &unk_100130B10);
    v11._countAndFlagsBits = 0xD00000000000003ALL;
    v11._object = 0x800000010013D570;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    *(v0 + 1072) = &type metadata for String;
    *(v0 + 1048) = v53;
    *(v0 + 1056) = v4;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 1048, &qword_10016AB10, &unk_100130B10);
    v12._countAndFlagsBits = 0x686373206E69202CLL;
    v12._object = 0xED0000203A616D65;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    *(v0 + 1104) = &type metadata for String;
    *(v0 + 1080) = v56;
    *(v0 + 1088) = v8;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 1080, &qword_10016AB10, &unk_100130B10);
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();
  }

  v14 = *(v0 + 1688);
  v15 = sub_10002CB94(*(v0 + 1648), *(v0 + 1680), *(v0 + 1672), *(v0 + 1632), *(v0 + 1640));
  if (v15 >= 1)
  {
    v16 = v15;
    v17 = *(v0 + 1672);
    v18 = *(v0 + 1936);
    v19 = *(v0 + 1664);
    v20 = *(v0 + 1656);
    v21 = *(v0 + 1640);
    v52 = *(v0 + 1680);
    v54 = *(v0 + 1632);
    v22 = *(v0 + 1480);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._countAndFlagsBits = 0x206465726F6E6749;
    v23._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v0 + 944) = &type metadata for Int;
    *(v0 + 920) = v16;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 920, &qword_10016AB10, &unk_100130B10);
    v24._object = 0x800000010013D530;
    v24._countAndFlagsBits = 0xD00000000000003CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    *(v0 + 976) = &type metadata for String;
    *(v0 + 952) = v52;
    *(v0 + 960) = v17;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 952, &qword_10016AB10, &unk_100130B10);
    v25._countAndFlagsBits = 0x686373206E69202CLL;
    v25._object = 0xED0000203A616D65;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    *(v0 + 1008) = &type metadata for String;
    *(v0 + 984) = v54;
    *(v0 + 992) = v21;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 984, &qword_10016AB10, &unk_100130B10);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();
  }

  v27 = *(v0 + 1688);
  v28 = sub_10002CCC4(*(v0 + 1648), *(v0 + 1680), *(v0 + 1672), *(v0 + 1632), *(v0 + 1640));
  if (v28 >= 1)
  {
    v29 = v28;
    v30 = *(v0 + 1672);
    v31 = *(v0 + 1936);
    v32 = *(v0 + 1664);
    v33 = *(v0 + 1656);
    v34 = *(v0 + 1640);
    v55 = *(v0 + 1680);
    v57 = *(v0 + 1632);
    v35 = *(v0 + 1480);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v36._countAndFlagsBits = 0x2064657463697645;
    v36._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    *(v0 + 848) = &type metadata for Int;
    *(v0 + 824) = v29;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 824, &qword_10016AB10, &unk_100130B10);
    v37._object = 0x800000010013D530;
    v37._countAndFlagsBits = 0xD00000000000003CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(v0 + 880) = &type metadata for String;
    *(v0 + 856) = v55;
    *(v0 + 864) = v30;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 856, &qword_10016AB10, &unk_100130B10);
    v38._countAndFlagsBits = 0x686373206E69202CLL;
    v38._object = 0xED0000203A616D65;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    *(v0 + 912) = &type metadata for String;
    *(v0 + 888) = v57;
    *(v0 + 896) = v34;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 888, &qword_10016AB10, &unk_100130B10);
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();
  }

  if (*(v0 + 1776) < 1)
  {
    v45 = *(v0 + 1264);
    inserted = type metadata accessor for InsertRequest();
    *(v0 + 1856) = inserted;
    *(v0 + 592) = inserted;
    v47 = sub_1000F820C(&qword_10016D268, &type metadata accessor for InsertRequest);
    *(v0 + 1864) = v47;
    *(v0 + 600) = v47;
    *(v0 + 1872) = sub_100042BAC((v0 + 568));
    (*(*(inserted - 8) + 16))();
    *(v0 + 1940) = InsertRequest.isLastInBatch.getter() & 1;
    v40 = sub_100026F94(&qword_10016CB50, &qword_100133370);
    v48 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v49 = swift_task_alloc();
    *(v0 + 1880) = v49;
    *v49 = v0;
    v49[1] = sub_1000CE9E0;
    v50 = *(v0 + 1272);
    v44 = v0 + 608;
  }

  else
  {
    v40 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v41 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v42 = swift_task_alloc();
    *(v0 + 1840) = v42;
    *v42 = v0;
    v42[1] = sub_1000CE6A8;
    v43 = *(v0 + 1272);
    v44 = v0 + 648;
  }

  return BaseObjectGraph.inject<A>(_:)(v44, v40, v40);
}

uint64_t sub_1000CE6A8()
{
  v2 = *v1;
  v3 = *(*v1 + 1840);
  v9 = *v1;
  *(*v1 + 1848) = v0;

  if (v0)
  {
    v4 = *(v2 + 1672);
    v5 = *(v2 + 1280);

    v6 = sub_1000D072C;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 1280);
    v6 = sub_1000CE7D0;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000CE7D0()
{
  v1 = *(v0 + 1320);
  v2 = *sub_100026F50((v0 + 648), *(v0 + 672));
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_10009C9B8(0, 0, v1, &unk_100133378, v4);

  sub_100026FDC((v0 + 648));
  v5 = *(v0 + 1264);
  inserted = type metadata accessor for InsertRequest();
  *(v0 + 1856) = inserted;
  *(v0 + 592) = inserted;
  v7 = sub_1000F820C(&qword_10016D268, &type metadata accessor for InsertRequest);
  *(v0 + 1864) = v7;
  *(v0 + 600) = v7;
  *(v0 + 1872) = sub_100042BAC((v0 + 568));
  (*(*(inserted - 8) + 16))();
  *(v0 + 1940) = InsertRequest.isLastInBatch.getter() & 1;
  v8 = sub_100026F94(&qword_10016CB50, &qword_100133370);
  v9 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v10 = swift_task_alloc();
  *(v0 + 1880) = v10;
  *v10 = v0;
  v10[1] = sub_1000CE9E0;
  v11 = *(v0 + 1272);

  return BaseObjectGraph.inject<A>(_:)(v0 + 608, v8, v8);
}

uint64_t sub_1000CE9E0()
{
  v2 = *v1;
  v3 = *(*v1 + 1880);
  v9 = *v1;
  *(*v1 + 1888) = v0;

  if (v0)
  {
    v4 = *(v2 + 1672);
    v5 = *(v2 + 1280);

    v6 = sub_1000CF0C8;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 1280);
    v6 = sub_1000CEB08;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1000CEB08()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1864);
  v3 = *(v0 + 1856);
  v4 = *(v0 + 1312);
  v5 = *(v0 + 1304);
  v6 = *(v0 + 1296);
  v7 = *(v0 + 600);
  sub_100026F50((v0 + 568), *(v0 + 592));
  dispatch thunk of QueryRequest.statementType.getter();
  v8 = (*(v5 + 88))(v4, v6);
  if (v8 == enum case for StatementType.select(_:))
  {
    v9 = *(v0 + 1672);

LABEL_3:
    v10 = *(v0 + 1592);
    v11 = *(v0 + 1576);
    v12 = *(v0 + 1568);
    v13 = *(v0 + 1560);
    v14 = *(v0 + 1536);
    v15 = *(v0 + 1528);
    v16 = *(v0 + 1520);
    v17 = *(v0 + 1512);
    v54 = *(v0 + 1480);
    v55 = *(v0 + 1472);
    v56 = *(v0 + 1448);
    v57 = *(v0 + 1424);
    v58 = *(v0 + 1400);
    v59 = *(v0 + 1376);
    v18 = *(v0 + 1352);
    v60 = *(v0 + 1344);
    v62 = *(v0 + 1336);
    v63 = *(v0 + 1320);
    v64 = *(v0 + 1312);
    v65 = *(v0 + 1288);
    sub_100026FDC((v0 + 608));
    sub_100026FDC((v0 + 568));
    sub_1000F65EC(v18, type metadata accessor for RequestContext);
    sub_10001B428(v0 + 192);
    sub_10002AAE4((v0 + 104));
    sub_10002BA6C(v14, &qword_10016D258, &qword_100133350);
    sub_1000F7B88("performInsertRequest", 20, 2);

    v19 = *(v0 + 8);
    v20 = *(v0 + 1776);

    return v19(v20);
  }

  if (v8 == enum case for StatementType.insert(_:))
  {
    v22 = *(v0 + 1720);
    v23 = *(v0 + 1280);
    v24 = *sub_100026F50((v0 + 608), *(v0 + 632));
    v25 = swift_task_alloc();
    *(v0 + 1896) = v25;
    *v25 = v0;
    v25[1] = sub_1000CF2B4;
    v26 = *(v0 + 1680);
    v27 = *(v0 + 1672);
    v28 = *(v0 + 1640);
    v29 = *(v0 + 1632);

    return sub_1000706AC(v23 + v22, v29, v28, v26, v27);
  }

  else if (v8 == enum case for StatementType.update(_:))
  {
    v30 = *(v0 + 1720);
    v31 = *(v0 + 1280);
    v32 = *sub_100026F50((v0 + 608), *(v0 + 632));
    v33 = swift_task_alloc();
    *(v0 + 1904) = v33;
    *v33 = v0;
    v33[1] = sub_1000CF680;
    v34 = *(v0 + 1680);
    v35 = *(v0 + 1672);
    v36 = *(v0 + 1640);
    v37 = *(v0 + 1632);

    return sub_100070C50(v31 + v30, v37, v36, v34, v35);
  }

  else
  {
    if (v8 != enum case for StatementType.delete(_:))
    {
      v46 = *(v0 + 1672);
      v47 = *(v0 + 1936);
      v48 = *(v0 + 1664);
      v49 = *(v0 + 1656);
      v50 = *(v0 + 1480);
      v66 = *(v0 + 1312);
      v51 = *(v0 + 1304);
      v61 = *(v0 + 1296);

      sub_100026F50(qword_10016D0C8, qword_10016D0E0);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v52._object = 0x800000010013B360;
      v52._countAndFlagsBits = 0xD000000000000018;
      LogMessage.StringInterpolation.appendLiteral(_:)(v52);
      *(v0 + 816) = v61;
      sub_100042BAC((v0 + 792));
      dispatch thunk of QueryRequest.statementType.getter();
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 792, &qword_10016AB10, &unk_100130B10);
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v53);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v51 + 8))(v66, v61);
      goto LABEL_3;
    }

    v38 = *(v0 + 1720);
    v39 = *(v0 + 1280);
    v40 = *sub_100026F50((v0 + 608), *(v0 + 632));
    v41 = swift_task_alloc();
    *(v0 + 1912) = v41;
    *v41 = v0;
    v41[1] = sub_1000CF7AC;
    v42 = *(v0 + 1680);
    v43 = *(v0 + 1672);
    v44 = *(v0 + 1640);
    v45 = *(v0 + 1632);

    return sub_100070E88(v39 + v38, v45, v44, v42, v43);
  }
}

uint64_t sub_1000CF0C8()
{
  v24 = *(v0 + 1888);
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_100026FDC((v0 + 568));
  sub_1000F7B88("performInsertRequest", 20, 2);

  v3 = *(v0 + 1576);
  v4 = *(v0 + 1568);
  v5 = *(v0 + 1560);
  v6 = *(v0 + 1536);
  v7 = *(v0 + 1528);
  v8 = *(v0 + 1520);
  v9 = *(v0 + 1512);
  v10 = *(v0 + 1480);
  v11 = *(v0 + 1472);
  v12 = *(v0 + 1448);
  v15 = *(v0 + 1424);
  v16 = *(v0 + 1400);
  v17 = *(v0 + 1376);
  v18 = *(v0 + 1352);
  v19 = *(v0 + 1344);
  v20 = *(v0 + 1336);
  v21 = *(v0 + 1320);
  v22 = *(v0 + 1312);
  v23 = *(v0 + 1288);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000CF2B4()
{
  v1 = *(*v0 + 1896);
  v2 = *(*v0 + 1672);
  v3 = *(*v0 + 1280);
  v5 = *v0;

  return _swift_task_switch(sub_1000CF3E0, v3, 0);
}

uint64_t sub_1000CF3E0()
{
  if (*(v0 + 1940))
  {
    v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
    v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v3 = swift_task_alloc();
    *(v0 + 1920) = v3;
    *v3 = v0;
    v3[1] = sub_1000CF8D8;
    v4 = *(v0 + 1272);

    return BaseObjectGraph.inject<A>(_:)(v0 + 688, v1, v1);
  }

  else
  {
    v5 = *(v0 + 1592);
    v6 = *(v0 + 1576);
    v7 = *(v0 + 1568);
    v8 = *(v0 + 1560);
    v9 = *(v0 + 1536);
    v10 = *(v0 + 1528);
    v11 = *(v0 + 1520);
    v12 = *(v0 + 1512);
    v17 = *(v0 + 1480);
    v18 = *(v0 + 1472);
    v19 = *(v0 + 1448);
    v20 = *(v0 + 1424);
    v21 = *(v0 + 1400);
    v22 = *(v0 + 1376);
    v13 = *(v0 + 1352);
    v23 = *(v0 + 1344);
    v24 = *(v0 + 1336);
    v25 = *(v0 + 1320);
    v26 = *(v0 + 1312);
    v27 = *(v0 + 1288);
    sub_100026FDC((v0 + 608));
    sub_100026FDC((v0 + 568));
    sub_1000F65EC(v13, type metadata accessor for RequestContext);
    sub_10001B428(v0 + 192);
    sub_10002AAE4((v0 + 104));
    sub_10002BA6C(v9, &qword_10016D258, &qword_100133350);
    sub_1000F7B88("performInsertRequest", 20, 2);

    v14 = *(v0 + 8);
    v15 = *(v0 + 1776);

    return v14(v15);
  }
}

uint64_t sub_1000CF680()
{
  v1 = *(*v0 + 1904);
  v2 = *(*v0 + 1672);
  v3 = *(*v0 + 1280);
  v5 = *v0;

  return _swift_task_switch(sub_1000F8854, v3, 0);
}

uint64_t sub_1000CF7AC()
{
  v1 = *(*v0 + 1912);
  v2 = *(*v0 + 1672);
  v3 = *(*v0 + 1280);
  v5 = *v0;

  return _swift_task_switch(sub_1000F8854, v3, 0);
}

uint64_t sub_1000CF8D8()
{
  v2 = *v1;
  v3 = *(*v1 + 1920);
  v4 = *v1;
  *(*v1 + 1928) = v0;

  v5 = *(v2 + 1280);
  if (v0)
  {
    v6 = sub_1000CFE0C;
  }

  else
  {
    v6 = sub_1000CFA04;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000CFA04()
{
  v1 = *(v0 + 1752);
  v2 = *(v0 + 1736);
  v3 = *(v0 + 1728);
  v4 = *(v0 + 1320);
  v5 = *(v0 + 1288);
  v6 = *(v0 + 1272);
  (*(v0 + 1744))(v5, *(v0 + 1280) + *(v0 + 1720), v3);
  (*(v2 + 56))(v5, 0, 1, v3);
  v7 = type metadata accessor for PostScheduledNotificationsTask();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000F7F90(v5, v10 + OBJC_IVAR____TtC19amsondevicestoraged30PostScheduledNotificationsTask_credential, &qword_10016CB48, &qword_100132C60);
  *(v0 + 432) = v7;
  *(v0 + 440) = sub_1000F820C(&qword_10016D270, type metadata accessor for PostScheduledNotificationsTask);
  *(v0 + 408) = v10;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_100026EEC(v0 + 408, v0 + 368);
  v12 = qword_10016A6C8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 1320);
  v14 = *(v0 + 1272);
  v15 = qword_1001738A8;
  v16 = sub_1000F820C(&qword_10016ADA0, type metadata accessor for DaemonActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  sub_10002C604((v0 + 368), (v17 + 4));
  v17[9] = v14;

  sub_100053D08(0, 0, v13, &unk_100130CC0, v17);

  sub_100026FDC((v0 + 688));
  sub_100026FDC((v0 + 408));
  v18 = *(v0 + 1592);
  v19 = *(v0 + 1576);
  v20 = *(v0 + 1568);
  v21 = *(v0 + 1560);
  v22 = *(v0 + 1536);
  v23 = *(v0 + 1528);
  v24 = *(v0 + 1520);
  v25 = *(v0 + 1512);
  v30 = *(v0 + 1480);
  v31 = *(v0 + 1472);
  v32 = *(v0 + 1448);
  v33 = *(v0 + 1424);
  v34 = *(v0 + 1400);
  v35 = *(v0 + 1376);
  v26 = *(v0 + 1352);
  v36 = *(v0 + 1344);
  v37 = *(v0 + 1336);
  v38 = *(v0 + 1320);
  v39 = *(v0 + 1312);
  v40 = *(v0 + 1288);
  sub_100026FDC((v0 + 608));
  sub_100026FDC((v0 + 568));
  sub_1000F65EC(v26, type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v22, &qword_10016D258, &qword_100133350);
  sub_1000F7B88("performInsertRequest", 20, 2);

  v27 = *(v0 + 8);
  v28 = *(v0 + 1776);

  return v27(v28);
}

uint64_t sub_1000CFE0C()
{
  sub_100026FDC((v0 + 608));
  v24 = *(v0 + 1928);
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_100026FDC((v0 + 568));
  sub_1000F7B88("performInsertRequest", 20, 2);

  v3 = *(v0 + 1576);
  v4 = *(v0 + 1568);
  v5 = *(v0 + 1560);
  v6 = *(v0 + 1536);
  v7 = *(v0 + 1528);
  v8 = *(v0 + 1520);
  v9 = *(v0 + 1512);
  v10 = *(v0 + 1480);
  v11 = *(v0 + 1472);
  v12 = *(v0 + 1448);
  v15 = *(v0 + 1424);
  v16 = *(v0 + 1400);
  v17 = *(v0 + 1376);
  v18 = *(v0 + 1352);
  v19 = *(v0 + 1344);
  v20 = *(v0 + 1336);
  v21 = *(v0 + 1320);
  v22 = *(v0 + 1312);
  v23 = *(v0 + 1288);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D0000()
{
  v1 = v0[199];
  sub_1000F7B88("performInsertRequest", 20, 2);

  v23 = v0[203];
  v2 = v0[197];
  v3 = v0[196];
  v4 = v0[195];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[189];
  v9 = v0[185];
  v10 = v0[184];
  v11 = v0[181];
  v14 = v0[178];
  v15 = v0[175];
  v16 = v0[172];
  v17 = v0[169];
  v18 = v0[168];
  v19 = v0[167];
  v20 = v0[165];
  v21 = v0[164];
  v22 = v0[161];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D019C()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_1000F7B88("performInsertRequest", 20, 2);

  v24 = *(v0 + 1712);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1568);
  v5 = *(v0 + 1560);
  v6 = *(v0 + 1536);
  v7 = *(v0 + 1528);
  v8 = *(v0 + 1520);
  v9 = *(v0 + 1512);
  v10 = *(v0 + 1480);
  v11 = *(v0 + 1472);
  v12 = *(v0 + 1448);
  v15 = *(v0 + 1424);
  v16 = *(v0 + 1400);
  v17 = *(v0 + 1376);
  v18 = *(v0 + 1352);
  v19 = *(v0 + 1344);
  v20 = *(v0 + 1336);
  v21 = *(v0 + 1320);
  v22 = *(v0 + 1312);
  v23 = *(v0 + 1288);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D0364()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_1000F7B88("performInsertRequest", 20, 2);

  v24 = *(v0 + 1800);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1568);
  v5 = *(v0 + 1560);
  v6 = *(v0 + 1536);
  v7 = *(v0 + 1528);
  v8 = *(v0 + 1520);
  v9 = *(v0 + 1512);
  v10 = *(v0 + 1480);
  v11 = *(v0 + 1472);
  v12 = *(v0 + 1448);
  v15 = *(v0 + 1424);
  v16 = *(v0 + 1400);
  v17 = *(v0 + 1376);
  v18 = *(v0 + 1352);
  v19 = *(v0 + 1344);
  v20 = *(v0 + 1336);
  v21 = *(v0 + 1320);
  v22 = *(v0 + 1312);
  v23 = *(v0 + 1288);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D0548()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_1000F7B88("performInsertRequest", 20, 2);

  v24 = *(v0 + 1832);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1568);
  v5 = *(v0 + 1560);
  v6 = *(v0 + 1536);
  v7 = *(v0 + 1528);
  v8 = *(v0 + 1520);
  v9 = *(v0 + 1512);
  v10 = *(v0 + 1480);
  v11 = *(v0 + 1472);
  v12 = *(v0 + 1448);
  v15 = *(v0 + 1424);
  v16 = *(v0 + 1400);
  v17 = *(v0 + 1376);
  v18 = *(v0 + 1352);
  v19 = *(v0 + 1344);
  v20 = *(v0 + 1336);
  v21 = *(v0 + 1320);
  v22 = *(v0 + 1312);
  v23 = *(v0 + 1288);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D072C()
{
  v1 = *(v0 + 1592);
  v2 = *(v0 + 1536);
  sub_1000F65EC(*(v0 + 1352), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D258, &qword_100133350);
  sub_1000F7B88("performInsertRequest", 20, 2);

  v24 = *(v0 + 1848);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1568);
  v5 = *(v0 + 1560);
  v6 = *(v0 + 1536);
  v7 = *(v0 + 1528);
  v8 = *(v0 + 1520);
  v9 = *(v0 + 1512);
  v10 = *(v0 + 1480);
  v11 = *(v0 + 1472);
  v12 = *(v0 + 1448);
  v15 = *(v0 + 1424);
  v16 = *(v0 + 1400);
  v17 = *(v0 + 1376);
  v18 = *(v0 + 1352);
  v19 = *(v0 + 1344);
  v20 = *(v0 + 1336);
  v21 = *(v0 + 1320);
  v22 = *(v0 + 1312);
  v23 = *(v0 + 1288);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D0910(uint64_t a1, uint64_t a2)
{
  v3[140] = v2;
  v3[139] = a2;
  v3[138] = a1;
  v4 = *(*(sub_100026F94(&qword_10016CB48, &qword_100132C60) - 8) + 64) + 15;
  v3[141] = swift_task_alloc();
  v5 = type metadata accessor for StatementType();
  v3[142] = v5;
  v6 = *(v5 - 8);
  v3[143] = v6;
  v7 = *(v6 + 64) + 15;
  v3[144] = swift_task_alloc();
  v8 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v3[145] = swift_task_alloc();
  v9 = type metadata accessor for RequestContext();
  v3[146] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[147] = swift_task_alloc();
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();
  v11 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v3[150] = swift_task_alloc();
  v12 = sub_100026F94(&qword_10016D298, &qword_1001333F0);
  v3[151] = v12;
  v13 = *(v12 - 8);
  v3[152] = v13;
  v3[153] = *(v13 + 64);
  v3[154] = swift_task_alloc();
  v3[155] = swift_task_alloc();
  v3[156] = swift_task_alloc();
  v3[157] = swift_task_alloc();
  v14 = type metadata accessor for OSSignpostID();
  v3[158] = v14;
  v15 = *(v14 - 8);
  v3[159] = v15;
  v16 = *(v15 + 64) + 15;
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();

  return _swift_task_switch(sub_1000D0BB8, v2, 0);
}

uint64_t sub_1000D0BB8()
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v1 = v0[161];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[161];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "performUpdateRequest", "", v6, 2u);
  }

  v8 = v0[161];
  v9 = v0[160];
  v10 = v0[159];
  v11 = v0[158];

  (*(v10 + 16))(v9, v8, v11);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[162] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v8, v11);
  v15 = swift_task_alloc();
  v0[163] = v15;
  *v15 = v0;
  v15[1] = sub_1000D0DB0;
  v16 = v0[157];
  v17 = v0[140];
  v18 = v0[139];
  v19 = v0[138];

  return sub_1000E7B88(v16, v19, v18);
}

uint64_t sub_1000D0DB0()
{
  v2 = *v1;
  v3 = *(*v1 + 1304);
  v4 = *v1;
  *(*v1 + 1312) = v0;

  v5 = *(v2 + 1120);
  if (v0)
  {
    v6 = sub_1000D4854;
  }

  else
  {
    v6 = sub_1000D0EDC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000D0EDC()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1208);
  v3 = (v1 + *(v2 + 40));
  v4 = *v3;
  *(v0 + 1320) = *v3;
  v5 = v3[1];
  *(v0 + 1328) = v5;
  sub_10002A9C4(v0 + 104, (v1 + *(v2 + 36)));
  v38 = *(*(v0 + 1256) + *(*(v0 + 1208) + 44));
  *(v0 + 1336) = v38;
  v6 = qword_10016A678;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1200);
  v42 = *(v0 + 1312);
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  *(v0 + 1344) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v8 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 1352) = *(v8 + 72);
  *(v0 + 1624) = *(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000023;
  v9._object = 0x800000010013DEE0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  *(v0 + 784) = &type metadata for String;
  *(v0 + 760) = v4;
  *(v0 + 768) = v5;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 760, &qword_10016AB10, &unk_100130B10);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100083D2C(v4, v5, v0 + 192);
  if (v42)
  {
    v11 = *(v0 + 1296);
    v12 = *(v0 + 1256);

LABEL_8:
    sub_10002AAE4((v0 + 104));
    sub_10002BA6C(v12, &qword_10016D298, &qword_1001333F0);
    sub_1000F7B88("performUpdateRequest", 20, 2);

    v23 = *(v0 + 1288);
    v24 = *(v0 + 1280);
    v25 = *(v0 + 1256);
    v26 = *(v0 + 1248);
    v27 = *(v0 + 1240);
    v28 = *(v0 + 1232);
    v29 = *(v0 + 1200);
    v30 = *(v0 + 1192);
    v31 = *(v0 + 1184);
    v32 = *(v0 + 1176);
    v39 = *(v0 + 1160);
    v40 = *(v0 + 1152);
    v41 = *(v0 + 1128);

    v33 = *(v0 + 8);

    return v33();
  }

  std::string::basic_string((v0 + 1080), (v0 + 216));
  v13 = v5;
  sub_10002EFB0((v0 + 1080));
  sub_10002EFC4(v0 + 1080);
  v14 = static String._fromUTF8Repairing(_:)();
  v16 = v15;
  *(v0 + 1360) = v15;
  *(v0 + 1368) = v14;
  std::string::~string((v0 + 1080));
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  if (!Connection.tableExists(_:)(v17))
  {
    v20 = *(v0 + 1296);
    v12 = *(v0 + 1256);
    v21 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError);
    swift_allocError();
    *v22 = v14;
    v22[1] = v16;
    v22[2] = v4;
    v22[3] = v13;
    (*(*(v21 - 8) + 104))(v22, enum case for DaemonError.noTable(_:), v21);
    swift_willThrow();
    sub_10001B428(v0 + 192);
    goto LABEL_8;
  }

  v18 = (*(v0 + 1120) + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_connectionDelegate);
  *(v0 + 1376) = *v18;
  *(v0 + 1384) = v18[1];
  sub_10002CDF4(v38, v14, v16, v4, v13);
  sub_1000EDCE8(v14, v16, v4, v13, v38, v0 + 104);
  v19 = *(v0 + 1120);
  sub_1000F002C(v14, v16, v4, v13, v38);
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v35 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v36 = swift_task_alloc();
  *(v0 + 1392) = v36;
  *v36 = v0;
  v36[1] = sub_1000D1534;
  v37 = *(v0 + 1112);

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000D1534()
{
  v2 = *v1;
  v3 = *(*v1 + 1392);
  v10 = *v1;
  *(*v1 + 1400) = v0;

  if (v0)
  {
    v4 = v2[170];
    v5 = v2[166];
    v6 = v2[140];

    v7 = sub_1000D4998;
    v8 = v6;
  }

  else
  {
    v8 = v2[140];
    v7 = sub_1000D1668;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000D1668()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1248);
  v59 = *(v0 + 1240);
  v61 = *(v0 + 1336);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1176);
  v6 = *(v0 + 1168);
  v7 = *(v0 + 1120);
  v8 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  *(v0 + 1408) = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  v9 = v6[5];
  v10 = type metadata accessor for AccessCredential();
  *(v0 + 1416) = v10;
  v11 = *(v10 - 8);
  *(v0 + 1424) = v11;
  v12 = *(v11 + 16);
  *(v0 + 1432) = v12;
  *(v0 + 1440) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v63 = *(v0 + 1376);
  v12(v3 + v9, v7 + v8, v10);
  sub_100026EEC(v7 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager, v3 + v6[7]);
  v13 = *(v0 + 32);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v13;
  v15 = *(v0 + 64);
  v14 = *(v0 + 80);
  v16 = *(v0 + 48);
  *(v3 + 80) = *(v0 + 96);
  *(v3 + 48) = v15;
  *(v3 + 64) = v14;
  *(v3 + 32) = v16;
  *(v3 + v6[6]) = v63;
  sub_1000F6524(v3, v4);
  sub_10002BA04(v1, v2, &qword_10016D298, &qword_1001333F0);
  sub_1000F6524(v3, v5);
  sub_10002BA04(v1, v59, &qword_10016D298, &qword_1001333F0);
  swift_unknownObjectRetain();

  sub_10002BA04(v7 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_statusProvider, v0 + 408, &qword_10016AFF8, &unk_100130F10);
  if (*(v0 + 432))
  {
    sub_10002C604((v0 + 408), v0 + 368);
    *(v0 + 1448) = sub_100026F50((v0 + 368), *(v0 + 392));

    return _swift_task_switch(sub_1000D1C58, 0, 0);
  }

  else
  {
    v17 = *(v0 + 1400);
    v18 = *(v0 + 1336);
    v19 = *(v0 + 1248);
    v20 = *(v0 + 1232);
    v21 = *(v0 + 1224);
    v22 = *(v0 + 1216);
    v23 = *(v0 + 1184);
    sub_10002BA6C(v0 + 408, &qword_10016AFF8, &unk_100130F10);
    sub_10002BA04(v19, v20, &qword_10016D298, &qword_1001333F0);
    v24 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v18;
    sub_1000F7F90(v20, v25 + v24, &qword_10016D298, &qword_1001333F0);

    v26 = sub_1000D9E7C();
    if (v17)
    {
      v27 = *(v0 + 1360);
      v28 = *(v0 + 1336);
      v29 = *(v0 + 1328);
      v30 = *(v0 + 1248);
      v31 = *(v0 + 1240);
      v32 = *(v0 + 1184);
      v33 = *(v0 + 1176);

      sub_1000F65EC(v33, type metadata accessor for RequestContext);
      sub_10002BA6C(v31, &qword_10016D298, &qword_1001333F0);

      sub_10002BA6C(v30, &qword_10016D298, &qword_1001333F0);
      sub_1000F65EC(v32, type metadata accessor for RequestContext);
      v34 = *(v0 + 1296);
      v35 = *(v0 + 1256);
      sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
      sub_10001B428(v0 + 192);
      sub_10002AAE4((v0 + 104));
      sub_10002BA6C(v35, &qword_10016D298, &qword_1001333F0);
      sub_1000F7B88("performUpdateRequest", 20, 2);

      v36 = *(v0 + 1288);
      v37 = *(v0 + 1280);
      v38 = *(v0 + 1256);
      v39 = *(v0 + 1248);
      v40 = *(v0 + 1240);
      v41 = *(v0 + 1232);
      v42 = *(v0 + 1200);
      v43 = *(v0 + 1192);
      v44 = *(v0 + 1184);
      v45 = *(v0 + 1176);
      v58 = *(v0 + 1160);
      v60 = *(v0 + 1152);
      v62 = *(v0 + 1128);

      v46 = *(v0 + 8);

      return v46();
    }

    else
    {
      v47 = v26;
      v48 = *(v0 + 1336);
      v49 = *(v0 + 1248);
      v50 = *(v0 + 1240);
      v51 = *(v0 + 1184);
      v52 = *(v0 + 1176);

      sub_1000F65EC(v52, type metadata accessor for RequestContext);
      sub_10002BA6C(v50, &qword_10016D298, &qword_1001333F0);
      sub_10002BA6C(v49, &qword_10016D298, &qword_1001333F0);
      sub_1000F65EC(v51, type metadata accessor for RequestContext);
      *(v0 + 1464) = v47;
      v53 = sub_100026F94(&qword_10016B008, &unk_100130F30);
      v54 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v55 = swift_task_alloc();
      *(v0 + 1472) = v55;
      *v55 = v0;
      v55[1] = sub_1000D2208;
      v56 = *(v0 + 1112);

      return BaseObjectGraph.inject<A>(_:)(v0 + 448, v53, v53);
    }
  }
}

uint64_t sub_1000D1C58()
{
  sub_100026F50(*(v0 + 1448), *(*(v0 + 1448) + 24));
  type metadata accessor for ConfigurationStoreImplementation();
  if (sub_1000503E4())
  {
    v1 = *(v0 + 1448);
    sub_10008CEE4();
    Current = CFAbsoluteTimeGetCurrent();
    v3 = *(v0 + 1400);
    v4 = *(v0 + 1336);
    v5 = *(v0 + 1232);
    v6 = *(v0 + 1224);
    v7 = *(v0 + 1216);
    v8 = *(v0 + 1176);
    sub_10002BA04(*(v0 + 1240), v5, &qword_10016D298, &qword_1001333F0);
    v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    sub_1000F7F90(v5, v10 + v9, &qword_10016D298, &qword_1001333F0);

    v11 = sub_1000D9E7C();
    if (v3)
    {
      v12 = *(v0 + 1360);
      v13 = *(v0 + 1328);

      v14 = CFAbsoluteTimeGetCurrent();
      v15 = *(v0 + 1448);
      v16 = *(v0 + 1160);
      v17 = *(v0 + 1112);
      sub_10009173C(v14 - Current);
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
      sub_10008E36C(v15, v0 + 320);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      v20 = *(v0 + 336);
      *(v19 + 32) = *(v0 + 320);
      *(v19 + 48) = v20;
      *(v19 + 64) = *(v0 + 352);
      *(v19 + 80) = v17;

      sub_10009C9B8(0, 0, v16, &unk_100133410, v19);

LABEL_6:
      *(v0 + 1488) = v3;
      v31 = *(v0 + 1120);
      v32 = sub_1000D233C;
      goto LABEL_10;
    }

    v33 = v11;

    v34 = CFAbsoluteTimeGetCurrent();
    v35 = *(v0 + 1448);
    v36 = *(v0 + 1160);
    v37 = *(v0 + 1112);
    sub_10009173C(v34 - Current);
    v38 = type metadata accessor for TaskPriority();
    (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
    sub_10008E36C(v35, v0 + 272);
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    v40 = *(v0 + 288);
    *(v39 + 32) = *(v0 + 272);
    *(v39 + 48) = v40;
    *(v39 + 64) = *(v0 + 304);
    *(v39 + 80) = v37;

    sub_10009C9B8(0, 0, v36, &unk_100133418, v39);
  }

  else
  {
    v3 = *(v0 + 1400);
    v21 = *(v0 + 1336);
    v22 = *(v0 + 1232);
    v23 = *(v0 + 1224);
    v24 = *(v0 + 1216);
    v25 = *(v0 + 1176);
    sub_10002BA04(*(v0 + 1240), v22, &qword_10016D298, &qword_1001333F0);
    v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    sub_1000F7F90(v22, v27 + v26, &qword_10016D298, &qword_1001333F0);

    v28 = sub_1000D9E7C();
    if (v3)
    {
      v29 = *(v0 + 1360);
      v30 = *(v0 + 1328);

      goto LABEL_6;
    }

    v33 = v28;
  }

  *(v0 + 1456) = v33;
  v31 = *(v0 + 1120);
  v32 = sub_1000D20B8;
LABEL_10:

  return _swift_task_switch(v32, v31, 0);
}

uint64_t sub_1000D20B8()
{
  v1 = v0[167];
  v2 = v0[156];
  v3 = v0[155];
  v4 = v0[148];
  v5 = v0[147];

  sub_1000F65EC(v5, type metadata accessor for RequestContext);
  sub_10002BA6C(v3, &qword_10016D298, &qword_1001333F0);
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_1000F65EC(v4, type metadata accessor for RequestContext);
  sub_100026FDC(v0 + 46);
  v0[183] = v0[182];
  v6 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v8 = swift_task_alloc();
  v0[184] = v8;
  *v8 = v0;
  v8[1] = sub_1000D2208;
  v9 = v0[139];

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v6, v6);
}

uint64_t sub_1000D2208()
{
  v2 = *v1;
  v3 = *(*v1 + 1472);
  v10 = *v1;
  *(*v1 + 1480) = v0;

  if (v0)
  {
    v4 = v2[170];
    v5 = v2[166];
    v6 = v2[140];

    v7 = sub_1000D4B08;
    v8 = v6;
  }

  else
  {
    v8 = v2[140];
    v7 = sub_1000D2530;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000D233C()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1176);

  sub_1000F65EC(v5, type metadata accessor for RequestContext);
  sub_10002BA6C(v3, &qword_10016D298, &qword_1001333F0);
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_1000F65EC(v4, type metadata accessor for RequestContext);
  sub_100026FDC((v0 + 368));
  v23 = *(v0 + 1488);
  v6 = *(v0 + 1296);
  v7 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v7, &qword_10016D298, &qword_1001333F0);
  sub_1000F7B88("performUpdateRequest", 20, 2);

  v8 = *(v0 + 1288);
  v9 = *(v0 + 1280);
  v10 = *(v0 + 1256);
  v11 = *(v0 + 1248);
  v12 = *(v0 + 1240);
  v13 = *(v0 + 1232);
  v14 = *(v0 + 1200);
  v15 = *(v0 + 1192);
  v16 = *(v0 + 1184);
  v17 = *(v0 + 1176);
  v20 = *(v0 + 1160);
  v21 = *(v0 + 1152);
  v22 = *(v0 + 1128);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1000D2530()
{
  v1 = *sub_100026F50(v0 + 56, v0[59]);
  v2 = swift_task_alloc();
  v0[187] = v2;
  *v2 = v0;
  v2[1] = sub_1000D25D0;

  return sub_100061DD0(1);
}

uint64_t sub_1000D25D0()
{
  v2 = *(*v1 + 1496);
  v3 = *v1;
  v3[188] = v0;

  if (v0)
  {
    v4 = v3[170];
    v5 = v3[166];
    v6 = v3[140];

    return _swift_task_switch(sub_1000D28A0, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[189] = v7;
    *v7 = v3;
    v7[1] = sub_1000D276C;
    v8 = v3[170];
    v9 = v3[166];
    v10 = v3[165];
    v11 = v3[140];
    v12 = v3[139];
    v13 = v3[171];

    return sub_1000F0814(v13, v8, v10, v9, v12);
  }
}

uint64_t sub_1000D276C()
{
  v2 = *v1;
  v3 = *(*v1 + 1512);
  v10 = *v1;
  *(*v1 + 1520) = v0;

  if (v0)
  {
    v4 = v2[170];
    v5 = v2[166];
    v6 = v2[140];

    v7 = sub_1000D4C94;
    v8 = v6;
  }

  else
  {
    v8 = v2[140];
    v7 = sub_1000D2A34;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000D28A0()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performUpdateRequest", 20, 2);

  v3 = *(v0 + 1288);
  v4 = *(v0 + 1280);
  v5 = *(v0 + 1256);
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1232);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1176);
  v15 = *(v0 + 1160);
  v16 = *(v0 + 1152);
  v17 = *(v0 + 1128);
  v18 = *(v0 + 1504);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D2A34()
{
  v1 = *(v0 + 1376);
  v2 = sub_10002CA64(*(v0 + 1336), *(v0 + 1368), *(v0 + 1360), *(v0 + 1320), *(v0 + 1328));
  if (v2 >= 1)
  {
    v3 = v2;
    v4 = *(v0 + 1360);
    v5 = *(v0 + 1624);
    v6 = *(v0 + 1352);
    v7 = *(v0 + 1344);
    v8 = *(v0 + 1328);
    v53 = *(v0 + 1368);
    v56 = *(v0 + 1320);
    v9 = *(v0 + 1200);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0x206465726F6E6749;
    v10._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    *(v0 + 1008) = &type metadata for Int;
    *(v0 + 984) = v3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 984, &qword_10016AB10, &unk_100130B10);
    v11._countAndFlagsBits = 0xD00000000000003ALL;
    v11._object = 0x800000010013D570;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    *(v0 + 1040) = &type metadata for String;
    *(v0 + 1016) = v53;
    *(v0 + 1024) = v4;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 1016, &qword_10016AB10, &unk_100130B10);
    v12._countAndFlagsBits = 0x686373206E69202CLL;
    v12._object = 0xED0000203A616D65;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    *(v0 + 1072) = &type metadata for String;
    *(v0 + 1048) = v56;
    *(v0 + 1056) = v8;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 1048, &qword_10016AB10, &unk_100130B10);
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();
  }

  v14 = *(v0 + 1376);
  v15 = sub_10002CB94(*(v0 + 1336), *(v0 + 1368), *(v0 + 1360), *(v0 + 1320), *(v0 + 1328));
  if (v15 >= 1)
  {
    v16 = v15;
    v17 = *(v0 + 1360);
    v18 = *(v0 + 1624);
    v19 = *(v0 + 1352);
    v20 = *(v0 + 1344);
    v21 = *(v0 + 1328);
    v52 = *(v0 + 1368);
    v54 = *(v0 + 1320);
    v22 = *(v0 + 1200);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._countAndFlagsBits = 0x206465726F6E6749;
    v23._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    *(v0 + 912) = &type metadata for Int;
    *(v0 + 888) = v16;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 888, &qword_10016AB10, &unk_100130B10);
    v24._object = 0x800000010013D530;
    v24._countAndFlagsBits = 0xD00000000000003CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    *(v0 + 944) = &type metadata for String;
    *(v0 + 920) = v52;
    *(v0 + 928) = v17;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 920, &qword_10016AB10, &unk_100130B10);
    v25._countAndFlagsBits = 0x686373206E69202CLL;
    v25._object = 0xED0000203A616D65;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    *(v0 + 976) = &type metadata for String;
    *(v0 + 952) = v54;
    *(v0 + 960) = v21;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 952, &qword_10016AB10, &unk_100130B10);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();
  }

  v27 = *(v0 + 1376);
  v28 = sub_10002CCC4(*(v0 + 1336), *(v0 + 1368), *(v0 + 1360), *(v0 + 1320), *(v0 + 1328));
  if (v28 >= 1)
  {
    v29 = v28;
    v30 = *(v0 + 1360);
    v31 = *(v0 + 1624);
    v32 = *(v0 + 1352);
    v33 = *(v0 + 1344);
    v34 = *(v0 + 1328);
    v55 = *(v0 + 1368);
    v57 = *(v0 + 1320);
    v35 = *(v0 + 1200);
    sub_100026F50(qword_10016D0C8, qword_10016D0E0);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v36._countAndFlagsBits = 0x2064657463697645;
    v36._object = 0xE800000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v36);
    *(v0 + 816) = &type metadata for Int;
    *(v0 + 792) = v29;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 792, &qword_10016AB10, &unk_100130B10);
    v37._object = 0x800000010013D530;
    v37._countAndFlagsBits = 0xD00000000000003CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(v0 + 848) = &type metadata for String;
    *(v0 + 824) = v55;
    *(v0 + 832) = v30;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 824, &qword_10016AB10, &unk_100130B10);
    v38._countAndFlagsBits = 0x686373206E69202CLL;
    v38._object = 0xED0000203A616D65;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    *(v0 + 880) = &type metadata for String;
    *(v0 + 856) = v57;
    *(v0 + 864) = v34;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 856, &qword_10016AB10, &unk_100130B10);
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();
  }

  if (*(v0 + 1464) < 1)
  {
    v45 = *(v0 + 1104);
    updated = type metadata accessor for UpdateRequest();
    *(v0 + 1544) = updated;
    *(v0 + 512) = updated;
    v47 = sub_1000F820C(&qword_10016D2A0, &type metadata accessor for UpdateRequest);
    *(v0 + 1552) = v47;
    *(v0 + 520) = v47;
    *(v0 + 1560) = sub_100042BAC((v0 + 488));
    (*(*(updated - 8) + 16))();
    v40 = sub_100026F94(&qword_10016CB50, &qword_100133370);
    v48 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v49 = swift_task_alloc();
    *(v0 + 1568) = v49;
    *v49 = v0;
    v49[1] = sub_1000D34C0;
    v50 = *(v0 + 1112);
    v44 = v0 + 528;
  }

  else
  {
    v40 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v41 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v42 = swift_task_alloc();
    *(v0 + 1528) = v42;
    *v42 = v0;
    v42[1] = sub_1000D3188;
    v43 = *(v0 + 1112);
    v44 = v0 + 648;
  }

  return BaseObjectGraph.inject<A>(_:)(v44, v40, v40);
}

uint64_t sub_1000D3188()
{
  v2 = *v1;
  v3 = *(*v1 + 1528);
  v10 = *v1;
  *(*v1 + 1536) = v0;

  if (v0)
  {
    v4 = v2[170];
    v5 = v2[166];
    v6 = v2[140];

    v7 = sub_1000D4E28;
    v8 = v6;
  }

  else
  {
    v8 = v2[140];
    v7 = sub_1000D32BC;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000D32BC()
{
  v1 = v0[145];
  v2 = *sub_100026F50(v0 + 81, v0[84]);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_10009C9B8(0, 0, v1, &unk_100133408, v4);

  sub_100026FDC(v0 + 81);
  v5 = v0[138];
  updated = type metadata accessor for UpdateRequest();
  v0[193] = updated;
  v0[64] = updated;
  v7 = sub_1000F820C(&qword_10016D2A0, &type metadata accessor for UpdateRequest);
  v0[194] = v7;
  v0[65] = v7;
  v0[195] = sub_100042BAC(v0 + 61);
  (*(*(updated - 8) + 16))();
  v8 = sub_100026F94(&qword_10016CB50, &qword_100133370);
  v9 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v10 = swift_task_alloc();
  v0[196] = v10;
  *v10 = v0;
  v10[1] = sub_1000D34C0;
  v11 = v0[139];

  return BaseObjectGraph.inject<A>(_:)(v0 + 66, v8, v8);
}

uint64_t sub_1000D34C0()
{
  v2 = *v1;
  v3 = *(*v1 + 1568);
  v10 = *v1;
  *(*v1 + 1576) = v0;

  if (v0)
  {
    v4 = v2[170];
    v5 = v2[166];
    v6 = v2[140];

    v7 = sub_1000D3B78;
    v8 = v6;
  }

  else
  {
    v8 = v2[140];
    v7 = sub_1000D35F4;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000D35F4()
{
  v1 = *(v0 + 1560);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1544);
  v4 = *(v0 + 1152);
  v5 = *(v0 + 1144);
  v6 = *(v0 + 1136);
  v7 = *(v0 + 520);
  sub_100026F50((v0 + 488), *(v0 + 512));
  dispatch thunk of QueryRequest.statementType.getter();
  v8 = (*(v5 + 88))(v4, v6);
  if (v8 == enum case for StatementType.select(_:))
  {
    v9 = *(v0 + 1360);
    v10 = *(v0 + 1328);

LABEL_3:
    v11 = *(v0 + 1296);
    v12 = *(v0 + 1288);
    v13 = *(v0 + 1280);
    v14 = *(v0 + 1256);
    v15 = *(v0 + 1248);
    v16 = *(v0 + 1240);
    v17 = *(v0 + 1232);
    v18 = *(v0 + 1200);
    v19 = *(v0 + 1192);
    v56 = *(v0 + 1184);
    v57 = *(v0 + 1176);
    v58 = *(v0 + 1160);
    v59 = *(v0 + 1152);
    v61 = *(v0 + 1128);
    sub_100026FDC((v0 + 528));
    sub_100026FDC((v0 + 488));
    sub_1000F65EC(v19, type metadata accessor for RequestContext);
    sub_10001B428(v0 + 192);
    sub_10002AAE4((v0 + 104));
    sub_10002BA6C(v14, &qword_10016D298, &qword_1001333F0);
    sub_100026FDC((v0 + 448));
    sub_1000F7B88("performUpdateRequest", 20, 2);

    v20 = *(v0 + 8);
    v21 = *(v0 + 1464);

    return v20(v21);
  }

  if (v8 == enum case for StatementType.insert(_:))
  {
    v23 = *(v0 + 1408);
    v24 = *(v0 + 1120);
    v25 = *sub_100026F50((v0 + 528), *(v0 + 552));
    v26 = swift_task_alloc();
    *(v0 + 1584) = v26;
    *v26 = v0;
    v26[1] = sub_1000D3D18;
    v27 = *(v0 + 1368);
    v28 = *(v0 + 1360);
    v29 = *(v0 + 1328);
    v30 = *(v0 + 1320);

    return sub_1000706AC(v24 + v23, v30, v29, v27, v28);
  }

  else if (v8 == enum case for StatementType.update(_:))
  {
    v31 = *(v0 + 1408);
    v32 = *(v0 + 1120);
    v33 = *sub_100026F50((v0 + 528), *(v0 + 552));
    v34 = swift_task_alloc();
    *(v0 + 1592) = v34;
    *v34 = v0;
    v34[1] = sub_1000D3F24;
    v35 = *(v0 + 1368);
    v36 = *(v0 + 1360);
    v37 = *(v0 + 1328);
    v38 = *(v0 + 1320);

    return sub_100070C50(v32 + v31, v38, v37, v35, v36);
  }

  else
  {
    if (v8 != enum case for StatementType.delete(_:))
    {
      v47 = *(v0 + 1360);
      v48 = *(v0 + 1624);
      v49 = *(v0 + 1352);
      v50 = *(v0 + 1344);
      v51 = *(v0 + 1328);
      v52 = *(v0 + 1200);
      v60 = *(v0 + 1144);
      v62 = *(v0 + 1152);
      v53 = *(v0 + 1136);

      sub_100026F50(qword_10016D0C8, qword_10016D0E0);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v54._object = 0x800000010013B360;
      v54._countAndFlagsBits = 0xD000000000000018;
      LogMessage.StringInterpolation.appendLiteral(_:)(v54);
      *(v0 + 752) = v53;
      sub_100042BAC((v0 + 728));
      dispatch thunk of QueryRequest.statementType.getter();
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 728, &qword_10016AB10, &unk_100130B10);
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v55);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v60 + 8))(v62, v53);
      goto LABEL_3;
    }

    v39 = *(v0 + 1408);
    v40 = *(v0 + 1120);
    v41 = *sub_100026F50((v0 + 528), *(v0 + 552));
    v42 = swift_task_alloc();
    *(v0 + 1600) = v42;
    *v42 = v0;
    v42[1] = sub_1000D4074;
    v43 = *(v0 + 1368);
    v44 = *(v0 + 1360);
    v45 = *(v0 + 1328);
    v46 = *(v0 + 1320);

    return sub_100070E88(v40 + v39, v46, v45, v43, v44);
  }
}

uint64_t sub_1000D3B78()
{
  v18 = *(v0 + 1576);
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_100026FDC((v0 + 488));
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performUpdateRequest", 20, 2);

  v3 = *(v0 + 1288);
  v4 = *(v0 + 1280);
  v5 = *(v0 + 1256);
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1232);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1176);
  v15 = *(v0 + 1160);
  v16 = *(v0 + 1152);
  v17 = *(v0 + 1128);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D3D18()
{
  v1 = *(*v0 + 1584);
  v2 = *(*v0 + 1360);
  v3 = *(*v0 + 1328);
  v4 = *(*v0 + 1120);
  v6 = *v0;

  return _swift_task_switch(sub_1000D3E68, v4, 0);
}

uint64_t sub_1000D3E68()
{
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 1608) = v3;
  *v3 = v0;
  v3[1] = sub_1000D41C4;
  v4 = *(v0 + 1112);

  return BaseObjectGraph.inject<A>(_:)(v0 + 568, v1, v1);
}

uint64_t sub_1000D3F24()
{
  v1 = *(*v0 + 1592);
  v2 = *(*v0 + 1360);
  v3 = *(*v0 + 1328);
  v4 = *(*v0 + 1120);
  v6 = *v0;

  return _swift_task_switch(sub_1000F88C4, v4, 0);
}

uint64_t sub_1000D4074()
{
  v1 = *(*v0 + 1600);
  v2 = *(*v0 + 1360);
  v3 = *(*v0 + 1328);
  v4 = *(*v0 + 1120);
  v6 = *v0;

  return _swift_task_switch(sub_1000F88C4, v4, 0);
}

uint64_t sub_1000D41C4()
{
  v2 = *v1;
  v3 = *(*v1 + 1608);
  v4 = *v1;
  *(*v1 + 1616) = v0;

  v5 = *(v2 + 1120);
  if (v0)
  {
    v6 = sub_1000D46AC;
  }

  else
  {
    v6 = sub_1000D42F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000D42F0()
{
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1416);
  v4 = *(v0 + 1160);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 1112);
  (*(v0 + 1432))(v5, *(v0 + 1120) + *(v0 + 1408), v3);
  (*(v2 + 56))(v5, 0, 1, v3);
  v7 = type metadata accessor for PostScheduledNotificationsTask();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000F7F90(v5, v10 + OBJC_IVAR____TtC19amsondevicestoraged30PostScheduledNotificationsTask_credential, &qword_10016CB48, &qword_100132C60);
  *(v0 + 632) = v7;
  *(v0 + 640) = sub_1000F820C(&qword_10016D270, type metadata accessor for PostScheduledNotificationsTask);
  *(v0 + 608) = v10;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_100026EEC(v0 + 608, v0 + 688);
  v12 = qword_10016A6C8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 1160);
  v14 = *(v0 + 1112);
  v15 = qword_1001738A8;
  v16 = sub_1000F820C(&qword_10016ADA0, type metadata accessor for DaemonActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  sub_10002C604((v0 + 688), (v17 + 4));
  v17[9] = v14;

  sub_100053D08(0, 0, v13, &unk_100133400, v17);

  sub_100026FDC((v0 + 568));
  sub_100026FDC((v0 + 608));
  v18 = *(v0 + 1296);
  v19 = *(v0 + 1288);
  v20 = *(v0 + 1280);
  v21 = *(v0 + 1256);
  v22 = *(v0 + 1248);
  v23 = *(v0 + 1240);
  v24 = *(v0 + 1232);
  v25 = *(v0 + 1200);
  v26 = *(v0 + 1192);
  v30 = *(v0 + 1184);
  v31 = *(v0 + 1176);
  v32 = *(v0 + 1160);
  v33 = *(v0 + 1152);
  v34 = *(v0 + 1128);
  sub_100026FDC((v0 + 528));
  sub_100026FDC((v0 + 488));
  sub_1000F65EC(v26, type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v21, &qword_10016D298, &qword_1001333F0);
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performUpdateRequest", 20, 2);

  v27 = *(v0 + 8);
  v28 = *(v0 + 1464);

  return v27(v28);
}

uint64_t sub_1000D46AC()
{
  sub_100026FDC((v0 + 528));
  v18 = *(v0 + 1616);
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_100026FDC((v0 + 488));
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performUpdateRequest", 20, 2);

  v3 = *(v0 + 1288);
  v4 = *(v0 + 1280);
  v5 = *(v0 + 1256);
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1232);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1176);
  v15 = *(v0 + 1160);
  v16 = *(v0 + 1152);
  v17 = *(v0 + 1128);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D4854()
{
  v1 = v0[162];
  sub_1000F7B88("performUpdateRequest", 20, 2);

  v2 = v0[161];
  v3 = v0[160];
  v4 = v0[157];
  v5 = v0[156];
  v6 = v0[155];
  v7 = v0[154];
  v8 = v0[150];
  v9 = v0[149];
  v10 = v0[148];
  v11 = v0[147];
  v14 = v0[145];
  v15 = v0[144];
  v16 = v0[141];
  v17 = v0[164];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D4998()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_1000F7B88("performUpdateRequest", 20, 2);

  v3 = *(v0 + 1288);
  v4 = *(v0 + 1280);
  v5 = *(v0 + 1256);
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1232);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1176);
  v15 = *(v0 + 1160);
  v16 = *(v0 + 1152);
  v17 = *(v0 + 1128);
  v18 = *(v0 + 1400);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D4B08()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_1000F7B88("performUpdateRequest", 20, 2);

  v3 = *(v0 + 1288);
  v4 = *(v0 + 1280);
  v5 = *(v0 + 1256);
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1232);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1176);
  v15 = *(v0 + 1160);
  v16 = *(v0 + 1152);
  v17 = *(v0 + 1128);
  v18 = *(v0 + 1480);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D4C94()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performUpdateRequest", 20, 2);

  v3 = *(v0 + 1288);
  v4 = *(v0 + 1280);
  v5 = *(v0 + 1256);
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1232);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1176);
  v15 = *(v0 + 1160);
  v16 = *(v0 + 1152);
  v17 = *(v0 + 1128);
  v18 = *(v0 + 1520);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D4E28()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  sub_1000F65EC(*(v0 + 1192), type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002AAE4((v0 + 104));
  sub_10002BA6C(v2, &qword_10016D298, &qword_1001333F0);
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performUpdateRequest", 20, 2);

  v3 = *(v0 + 1288);
  v4 = *(v0 + 1280);
  v5 = *(v0 + 1256);
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1232);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1176);
  v15 = *(v0 + 1160);
  v16 = *(v0 + 1152);
  v17 = *(v0 + 1128);
  v18 = *(v0 + 1536);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000D4FBC(uint64_t a1, uint64_t a2)
{
  v3[109] = v2;
  v3[108] = a2;
  v3[107] = a1;
  v4 = *(*(sub_100026F94(&qword_10016CB48, &qword_100132C60) - 8) + 64) + 15;
  v3[110] = swift_task_alloc();
  v5 = type metadata accessor for StatementType();
  v3[111] = v5;
  v6 = *(v5 - 8);
  v3[112] = v6;
  v7 = *(v6 + 64) + 15;
  v3[113] = swift_task_alloc();
  v8 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v3[114] = v8;
  v9 = *(v8 - 8);
  v3[115] = v9;
  v10 = *(v9 + 64) + 15;
  v3[116] = swift_task_alloc();
  v11 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v3[117] = v11;
  v12 = *(v11 - 8);
  v3[118] = v12;
  v13 = *(v12 + 64) + 15;
  v3[119] = swift_task_alloc();
  v14 = type metadata accessor for Table();
  v3[120] = v14;
  v15 = *(v14 - 8);
  v3[121] = v15;
  v16 = *(v15 + 64) + 15;
  v3[122] = swift_task_alloc();
  v17 = *(*(sub_100026F94(&qword_10016AD38, &qword_1001332F0) - 8) + 64) + 15;
  v3[123] = swift_task_alloc();
  v18 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v3[124] = swift_task_alloc();
  v19 = type metadata accessor for RequestContext();
  v3[125] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v3[126] = swift_task_alloc();
  v3[127] = swift_task_alloc();
  v3[128] = swift_task_alloc();
  v21 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v3[129] = swift_task_alloc();
  v22 = sub_100026F94(&qword_10016D2B0, &qword_100133430);
  v3[130] = v22;
  v23 = *(v22 - 8);
  v3[131] = v23;
  v3[132] = *(v23 + 64);
  v3[133] = swift_task_alloc();
  v3[134] = swift_task_alloc();
  v3[135] = swift_task_alloc();
  v3[136] = swift_task_alloc();
  v24 = type metadata accessor for OSSignpostID();
  v3[137] = v24;
  v25 = *(v24 - 8);
  v3[138] = v25;
  v26 = *(v25 + 64) + 15;
  v3[139] = swift_task_alloc();
  v3[140] = swift_task_alloc();

  return _swift_task_switch(sub_1000D53C8, v2, 0);
}

uint64_t sub_1000D53C8()
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v1 = v0[140];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[140];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "performDeleteRequest", "", v6, 2u);
  }

  v8 = v0[140];
  v9 = v0[139];
  v10 = v0[138];
  v11 = v0[137];

  (*(v10 + 16))(v9, v8, v11);
  v12 = type metadata accessor for OSSignpostIntervalState();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v0[141] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v8, v11);
  v15 = swift_task_alloc();
  v0[142] = v15;
  *v15 = v0;
  v15[1] = sub_1000D55C0;
  v16 = v0[136];
  v17 = v0[109];
  v18 = v0[108];
  v19 = v0[107];

  return sub_1000EAC38(v16, v19, v18);
}

uint64_t sub_1000D55C0()
{
  v2 = *v1;
  v3 = *(*v1 + 1136);
  v4 = *v1;
  *(*v1 + 1144) = v0;

  v5 = *(v2 + 872);
  if (v0)
  {
    v6 = sub_1000D95E4;
  }

  else
  {
    v6 = sub_1000D56EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000D56EC()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1040);
  v3 = (v1 + v2[10]);
  v4 = *v3;
  *(v0 + 1152) = *v3;
  v5 = v3[1];
  *(v0 + 1160) = v5;
  v42 = v2[9];
  *(v0 + 1168) = *(v1 + v2[11]);
  v6 = qword_10016A678;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1032);
  v40 = *(v0 + 1144);
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  *(v0 + 1176) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v8 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 1184) = *(v8 + 72);
  *(v0 + 1464) = *(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000023;
  v9._object = 0x800000010013DF50;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  *(v0 + 792) = &type metadata for String;
  *(v0 + 768) = v4;
  *(v0 + 776) = v5;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 768, &qword_10016AB10, &unk_100130B10);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100083D2C(v4, v5, v0 + 192);
  if (v40)
  {
    v11 = *(v0 + 1128);
    v12 = *(v0 + 1088);

LABEL_10:
    sub_10002BA6C(v12, &qword_10016D2B0, &qword_100133430);
    sub_1000F7B88("performDeleteRequest", 20, 2);

    v23 = *(v0 + 1120);
    v24 = *(v0 + 1112);
    v25 = *(v0 + 1088);
    v26 = *(v0 + 1080);
    v27 = *(v0 + 1072);
    v28 = *(v0 + 1064);
    v29 = *(v0 + 1032);
    v30 = *(v0 + 1024);
    v31 = *(v0 + 1016);
    v32 = *(v0 + 1008);
    v35 = *(v0 + 992);
    v36 = *(v0 + 984);
    v37 = *(v0 + 976);
    v38 = *(v0 + 952);
    v39 = *(v0 + 928);
    v41 = *(v0 + 904);
    v44 = *(v0 + 880);

    v33 = *(v0 + 8);

    return v33();
  }

  v45 = v4;
  std::string::basic_string((v0 + 832), (v0 + 216));
  v43 = v5;
  sub_10002EFB0((v0 + 832));
  sub_10002EFC4(v0 + 832);
  v13 = static String._fromUTF8Repairing(_:)();
  v15 = v14;
  *(v0 + 1192) = v14;
  *(v0 + 1200) = v13;
  std::string::~string((v0 + 832));
  v16._countAndFlagsBits = v13;
  v16._object = v15;
  if (!Connection.tableExists(_:)(v16))
  {
    v20 = *(v0 + 1128);
    v12 = *(v0 + 1088);
    v21 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError);
    swift_allocError();
    *v22 = v13;
    v22[1] = v15;
    v22[2] = v45;
    v22[3] = v43;
    (*(*(v21 - 8) + 104))(v22, enum case for DaemonError.noTable(_:), v21);
    swift_willThrow();
    sub_10001B428(v0 + 192);
    goto LABEL_10;
  }

  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v17 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v18 = swift_task_alloc();
  *(v0 + 1208) = v18;
  *v18 = v0;
  v18[1] = sub_1000D5CC0;
  v19 = *(v0 + 864);

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000D5CC0()
{
  v2 = *v1;
  v3 = *(*v1 + 1208);
  v10 = *v1;
  *(*v1 + 1216) = v0;

  if (v0)
  {
    v4 = v2[149];
    v5 = v2[145];
    v6 = v2[109];

    v7 = sub_1000D9764;
    v8 = v6;
  }

  else
  {
    v8 = v2[109];
    v7 = sub_1000D5DF4;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000D5DF4()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v63 = *(v0 + 1072);
  v65 = *(v0 + 1168);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 1000);
  v7 = *(v0 + 872);
  v8 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  *(v0 + 1224) = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  v9 = v6[5];
  v10 = type metadata accessor for AccessCredential();
  *(v0 + 1232) = v10;
  v11 = *(v10 - 8);
  *(v0 + 1240) = v11;
  v12 = *(v11 + 16);
  *(v0 + 1248) = v12;
  *(v0 + 1256) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v3 + v9, v7 + v8, v10);
  v67 = *(v7 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_connectionDelegate);
  sub_100026EEC(v7 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager, v3 + v6[7]);
  v13 = *(v0 + 32);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v13;
  v15 = *(v0 + 64);
  v14 = *(v0 + 80);
  v16 = *(v0 + 48);
  *(v3 + 80) = *(v0 + 96);
  *(v3 + 48) = v15;
  *(v3 + 64) = v14;
  *(v3 + 32) = v16;
  *(v3 + v6[6]) = v67;
  sub_1000F6524(v3, v4);
  sub_10002BA04(v1, v2, &qword_10016D2B0, &qword_100133430);
  sub_1000F6524(v3, v5);
  sub_10002BA04(v1, v63, &qword_10016D2B0, &qword_100133430);
  swift_unknownObjectRetain();

  sub_10002BA04(v7 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_statusProvider, v0 + 408, &qword_10016AFF8, &unk_100130F10);
  if (*(v0 + 432))
  {
    sub_10002C604((v0 + 408), v0 + 368);
    *(v0 + 1264) = sub_100026F50((v0 + 368), *(v0 + 392));

    return _swift_task_switch(sub_1000D641C, 0, 0);
  }

  else
  {
    v17 = *(v0 + 1216);
    v18 = *(v0 + 1168);
    v19 = *(v0 + 1080);
    v20 = *(v0 + 1064);
    v21 = *(v0 + 1056);
    v22 = *(v0 + 1048);
    v23 = *(v0 + 1016);
    sub_10002BA6C(v0 + 408, &qword_10016AFF8, &unk_100130F10);
    sub_10002BA04(v19, v20, &qword_10016D2B0, &qword_100133430);
    v24 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v18;
    sub_1000F7F90(v20, v25 + v24, &qword_10016D2B0, &qword_100133430);

    v26 = sub_1000D9E7C();
    if (v17)
    {
      v27 = *(v0 + 1192);
      v28 = *(v0 + 1168);
      v29 = *(v0 + 1160);
      v30 = *(v0 + 1080);
      v31 = *(v0 + 1072);
      v32 = *(v0 + 1016);
      v33 = *(v0 + 1008);

      sub_1000F65EC(v33, type metadata accessor for RequestContext);
      sub_10002BA6C(v31, &qword_10016D2B0, &qword_100133430);

      sub_10002BA6C(v30, &qword_10016D2B0, &qword_100133430);
      sub_1000F65EC(v32, type metadata accessor for RequestContext);
      v34 = *(v0 + 1128);
      v35 = *(v0 + 1088);
      sub_1000F65EC(*(v0 + 1024), type metadata accessor for RequestContext);
      sub_10001B428(v0 + 192);
      sub_10002BA6C(v35, &qword_10016D2B0, &qword_100133430);
      sub_1000F7B88("performDeleteRequest", 20, 2);

      v36 = *(v0 + 1120);
      v37 = *(v0 + 1112);
      v38 = *(v0 + 1088);
      v39 = *(v0 + 1080);
      v40 = *(v0 + 1072);
      v41 = *(v0 + 1064);
      v42 = *(v0 + 1032);
      v43 = *(v0 + 1024);
      v44 = *(v0 + 1016);
      v45 = *(v0 + 1008);
      v58 = *(v0 + 992);
      v59 = *(v0 + 984);
      v60 = *(v0 + 976);
      v61 = *(v0 + 952);
      v62 = *(v0 + 928);
      v64 = *(v0 + 904);
      v66 = *(v0 + 880);

      v46 = *(v0 + 8);

      return v46();
    }

    else
    {
      v47 = v26;
      v48 = *(v0 + 1168);
      v49 = *(v0 + 1080);
      v50 = *(v0 + 1072);
      v51 = *(v0 + 1016);
      v52 = *(v0 + 1008);

      sub_1000F65EC(v52, type metadata accessor for RequestContext);
      sub_10002BA6C(v50, &qword_10016D2B0, &qword_100133430);
      sub_10002BA6C(v49, &qword_10016D2B0, &qword_100133430);
      sub_1000F65EC(v51, type metadata accessor for RequestContext);
      *(v0 + 1280) = v47;
      v53 = sub_100026F94(&qword_10016B008, &unk_100130F30);
      v54 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v55 = swift_task_alloc();
      *(v0 + 1288) = v55;
      *v55 = v0;
      v55[1] = sub_1000D69CC;
      v56 = *(v0 + 864);

      return BaseObjectGraph.inject<A>(_:)(v0 + 448, v53, v53);
    }
  }
}

uint64_t sub_1000D641C()
{
  sub_100026F50(*(v0 + 1264), *(*(v0 + 1264) + 24));
  type metadata accessor for ConfigurationStoreImplementation();
  if (sub_1000503E4())
  {
    v1 = *(v0 + 1264);
    sub_10008CEE4();
    Current = CFAbsoluteTimeGetCurrent();
    v3 = *(v0 + 1216);
    v4 = *(v0 + 1168);
    v5 = *(v0 + 1064);
    v6 = *(v0 + 1056);
    v7 = *(v0 + 1048);
    v8 = *(v0 + 1008);
    sub_10002BA04(*(v0 + 1072), v5, &qword_10016D2B0, &qword_100133430);
    v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    sub_1000F7F90(v5, v10 + v9, &qword_10016D2B0, &qword_100133430);

    v11 = sub_1000D9E7C();
    if (v3)
    {
      v12 = *(v0 + 1192);
      v13 = *(v0 + 1160);

      v14 = CFAbsoluteTimeGetCurrent();
      v15 = *(v0 + 1264);
      v16 = *(v0 + 992);
      v17 = *(v0 + 864);
      sub_10009173C(v14 - Current);
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
      sub_10008E36C(v15, v0 + 272);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      v20 = *(v0 + 288);
      *(v19 + 32) = *(v0 + 272);
      *(v19 + 48) = v20;
      *(v19 + 64) = *(v0 + 304);
      *(v19 + 80) = v17;

      sub_10009C9B8(0, 0, v16, &unk_100133450, v19);

LABEL_6:
      *(v0 + 1304) = v3;
      v31 = *(v0 + 872);
      v32 = sub_1000D6B00;
      goto LABEL_10;
    }

    v33 = v11;

    v34 = CFAbsoluteTimeGetCurrent();
    v35 = *(v0 + 1264);
    v36 = *(v0 + 992);
    v37 = *(v0 + 864);
    sub_10009173C(v34 - Current);
    v38 = type metadata accessor for TaskPriority();
    (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
    sub_10008E36C(v35, v0 + 320);
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    v40 = *(v0 + 336);
    *(v39 + 32) = *(v0 + 320);
    *(v39 + 48) = v40;
    *(v39 + 64) = *(v0 + 352);
    *(v39 + 80) = v37;

    sub_10009C9B8(0, 0, v36, &unk_100133458, v39);
  }

  else
  {
    v3 = *(v0 + 1216);
    v21 = *(v0 + 1168);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);
    v24 = *(v0 + 1048);
    v25 = *(v0 + 1008);
    sub_10002BA04(*(v0 + 1072), v22, &qword_10016D2B0, &qword_100133430);
    v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    sub_1000F7F90(v22, v27 + v26, &qword_10016D2B0, &qword_100133430);

    v28 = sub_1000D9E7C();
    if (v3)
    {
      v29 = *(v0 + 1192);
      v30 = *(v0 + 1160);

      goto LABEL_6;
    }

    v33 = v28;
  }

  *(v0 + 1272) = v33;
  v31 = *(v0 + 872);
  v32 = sub_1000D687C;
LABEL_10:

  return _swift_task_switch(v32, v31, 0);
}

uint64_t sub_1000D687C()
{
  v1 = v0[146];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[127];
  v5 = v0[126];

  sub_1000F65EC(v5, type metadata accessor for RequestContext);
  sub_10002BA6C(v3, &qword_10016D2B0, &qword_100133430);
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_1000F65EC(v4, type metadata accessor for RequestContext);
  sub_100026FDC(v0 + 46);
  v0[160] = v0[159];
  v6 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v8 = swift_task_alloc();
  v0[161] = v8;
  *v8 = v0;
  v8[1] = sub_1000D69CC;
  v9 = v0[108];

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v6, v6);
}

uint64_t sub_1000D69CC()
{
  v2 = *v1;
  v3 = *(*v1 + 1288);
  v10 = *v1;
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v4 = v2[149];
    v5 = v2[145];
    v6 = v2[109];

    v7 = sub_1000D9908;
    v8 = v6;
  }

  else
  {
    v8 = v2[109];
    v7 = sub_1000D6D24;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000D6B00()
{
  v1 = v0[146];
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[127];
  v5 = v0[126];

  sub_1000F65EC(v5, type metadata accessor for RequestContext);
  sub_10002BA6C(v3, &qword_10016D2B0, &qword_100133430);
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_1000F65EC(v4, type metadata accessor for RequestContext);
  sub_100026FDC(v0 + 46);
  v27 = v0[163];
  v6 = v0[141];
  v7 = v0[136];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v7, &qword_10016D2B0, &qword_100133430);
  sub_1000F7B88("performDeleteRequest", 20, 2);

  v8 = v0[140];
  v9 = v0[139];
  v10 = v0[136];
  v11 = v0[135];
  v12 = v0[134];
  v13 = v0[133];
  v14 = v0[129];
  v15 = v0[128];
  v16 = v0[127];
  v17 = v0[126];
  v20 = v0[124];
  v21 = v0[123];
  v22 = v0[122];
  v23 = v0[119];
  v24 = v0[116];
  v25 = v0[113];
  v26 = v0[110];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000D6D24()
{
  v1 = *sub_100026F50(v0 + 56, v0[59]);
  v2 = swift_task_alloc();
  v0[164] = v2;
  *v2 = v0;
  v2[1] = sub_1000D6DC4;

  return sub_100061DD0(1);
}

uint64_t sub_1000D6DC4()
{
  v2 = *(*v1 + 1312);
  v3 = *v1;
  v3[165] = v0;

  if (v0)
  {
    v4 = v3[149];
    v5 = v3[145];
    v6 = v3[109];

    return _swift_task_switch(sub_1000D7094, v6, 0);
  }

  else
  {
    v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v8 = swift_task_alloc();
    v3[166] = v8;
    *v8 = v3;
    v8[1] = sub_1000D6F60;
    v9 = v3[108];

    return BaseObjectGraph.inject<A>(_:)(v3 + 13, &type metadata for ClientInfo, &type metadata for ClientInfo);
  }
}

uint64_t sub_1000D6F60()
{
  v2 = *v1;
  v3 = *(*v1 + 1328);
  v10 = *v1;
  *(*v1 + 1336) = v0;

  if (v0)
  {
    v4 = v2[149];
    v5 = v2[145];
    v6 = v2[109];

    v7 = sub_1000D9AC8;
    v8 = v6;
  }

  else
  {
    v8 = v2[109];
    v7 = sub_1000D725C;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000D7094()
{
  v1 = v0[141];
  v2 = v0[136];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC(v0 + 56);
  sub_1000F7B88("performDeleteRequest", 20, 2);

  v22 = v0[165];
  v3 = v0[140];
  v4 = v0[139];
  v5 = v0[136];
  v6 = v0[135];
  v7 = v0[134];
  v8 = v0[133];
  v9 = v0[129];
  v10 = v0[128];
  v11 = v0[127];
  v12 = v0[126];
  v15 = v0[124];
  v16 = v0[123];
  v17 = v0[122];
  v18 = v0[119];
  v19 = v0[116];
  v20 = v0[113];
  v21 = v0[110];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000D725C()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v62 = *(v0 + 1168);
  v64 = *(v0 + 1336);
  v3 = *(v0 + 976);
  v58 = *(v0 + 968);
  v60 = *(v0 + 984);
  v4 = *(v0 + 960);
  v5 = *(v0 + 952);
  v6 = *(v0 + 944);
  v56 = *(v0 + 936);
  v7 = *(v0 + 928);
  v8 = *(v0 + 920);
  v9 = *(v0 + 912);

  Table.init(_:database:)();
  static Connection.ServiceColumns.bundleIds.getter();
  String.append(_:)(*(v0 + 104));
  v10._countAndFlagsBits = 47;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0);
  ExpressionType<>.like(_:escape:)();

  (*(v8 + 8))(v7, v9);
  *(v0 + 512) = v4;
  *(v0 + 520) = sub_1000F820C(&qword_10016AD20, &type metadata accessor for Table);
  sub_100042BAC((v0 + 488));
  QueryType.where(_:)();
  (*(v6 + 8))(v5, v56);
  (*(v58 + 8))(v3, v4);
  Connection.pluck(_:)();
  if (v64)
  {
    v11 = *(v0 + 1192);
    v12 = *(v0 + 1160);
    v13 = *(v0 + 1128);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1024);

    sub_1000F65EC(v15, type metadata accessor for RequestContext);
    sub_10001B428(v0 + 192);
    sub_100042AFC(v0 + 104);
    sub_10002BA6C(v14, &qword_10016D2B0, &qword_100133430);
    sub_100026FDC((v0 + 488));
    sub_100026FDC((v0 + 448));
    sub_1000F7B88("performDeleteRequest", 20, 2);

    v16 = *(v0 + 1120);
    v17 = *(v0 + 1112);
    v18 = *(v0 + 1088);
    v19 = *(v0 + 1080);
    v20 = *(v0 + 1072);
    v21 = *(v0 + 1064);
    v22 = *(v0 + 1032);
    v23 = *(v0 + 1024);
    v24 = *(v0 + 1016);
    v25 = *(v0 + 1008);
    v53 = *(v0 + 992);
    v54 = *(v0 + 984);
    v55 = *(v0 + 976);
    v57 = *(v0 + 952);
    v59 = *(v0 + 928);
    v61 = *(v0 + 904);
    v63 = *(v0 + 880);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 984);
    sub_100026FDC((v0 + 488));
    v29 = type metadata accessor for Row();
    if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
    {
      v30 = *(v0 + 1224);
      v31 = *(v0 + 872);
      v32 = sub_100026F50((v0 + 448), *(v0 + 472));
      v33 = AccessCredential.requestId.getter();
      v35 = v34;
      *(v0 + 1344) = v34;
      v36 = *v32;
      v37 = swift_task_alloc();
      *(v0 + 1352) = v37;
      *v37 = v0;
      v37[1] = sub_1000D78BC;
      v38 = *(v0 + 1200);
      v39 = *(v0 + 1192);
      v40 = *(v0 + 1160);
      v41 = *(v0 + 1152);

      return sub_10005EDF0(v33, v35, v0 + 104, v38, v39, v41, v40);
    }

    else
    {
      if (*(v0 + 1280) < 1)
      {
        v47 = *(v0 + 856);
        v48 = type metadata accessor for DeleteRequest();
        *(v0 + 1384) = v48;
        *(v0 + 552) = v48;
        v49 = sub_1000F820C(&qword_10016D2B8, &type metadata accessor for DeleteRequest);
        *(v0 + 1392) = v49;
        *(v0 + 560) = v49;
        *(v0 + 1400) = sub_100042BAC((v0 + 528));
        (*(*(v48 - 8) + 16))();
        v42 = sub_100026F94(&qword_10016CB50, &qword_100133370);
        v50 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
        v51 = swift_task_alloc();
        *(v0 + 1408) = v51;
        *v51 = v0;
        v51[1] = sub_1000D8108;
        v52 = *(v0 + 864);
        v46 = v0 + 568;
      }

      else
      {
        v42 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
        v43 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
        v44 = swift_task_alloc();
        *(v0 + 1368) = v44;
        *v44 = v0;
        v44[1] = sub_1000D7DD0;
        v45 = *(v0 + 864);
        v46 = v0 + 728;
      }

      return BaseObjectGraph.inject<A>(_:)(v46, v42, v42);
    }
  }
}

uint64_t sub_1000D78BC()
{
  v2 = *v1;
  v3 = *(*v1 + 1352);
  v4 = *v1;
  v2[170] = v0;

  v5 = v2[168];
  if (v0)
  {
    v6 = v2[149];
    v7 = v2[145];
    v8 = v2[109];

    v9 = sub_1000D7BE4;
    v10 = v8;
  }

  else
  {
    v11 = v2[109];

    v9 = sub_1000D7A20;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1000D7A20()
{
  if (v0[160] < 1)
  {
    v6 = v0[107];
    v7 = type metadata accessor for DeleteRequest();
    v0[173] = v7;
    v0[69] = v7;
    v8 = sub_1000F820C(&qword_10016D2B8, &type metadata accessor for DeleteRequest);
    v0[174] = v8;
    v0[70] = v8;
    v0[175] = sub_100042BAC(v0 + 66);
    (*(*(v7 - 8) + 16))();
    v1 = sub_100026F94(&qword_10016CB50, &qword_100133370);
    v9 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v10 = swift_task_alloc();
    v0[176] = v10;
    *v10 = v0;
    v10[1] = sub_1000D8108;
    v11 = v0[108];
    v5 = v0 + 71;
  }

  else
  {
    v1 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v3 = swift_task_alloc();
    v0[171] = v3;
    *v3 = v0;
    v3[1] = sub_1000D7DD0;
    v4 = v0[108];
    v5 = v0 + 91;
  }

  return BaseObjectGraph.inject<A>(_:)(v5, v1, v1);
}

uint64_t sub_1000D7BE4()
{
  v1 = v0[141];
  v2 = v0[136];
  v3 = v0[123];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v3, &qword_10016AD38, &qword_1001332F0);
  sub_100042AFC((v0 + 13));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC(v0 + 56);
  sub_1000F7B88("performDeleteRequest", 20, 2);

  v23 = v0[170];
  v4 = v0[140];
  v5 = v0[139];
  v6 = v0[136];
  v7 = v0[135];
  v8 = v0[134];
  v9 = v0[133];
  v10 = v0[129];
  v11 = v0[128];
  v12 = v0[127];
  v13 = v0[126];
  v16 = v0[124];
  v17 = v0[123];
  v18 = v0[122];
  v19 = v0[119];
  v20 = v0[116];
  v21 = v0[113];
  v22 = v0[110];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000D7DD0()
{
  v2 = *v1;
  v3 = *(*v1 + 1368);
  v10 = *v1;
  *(*v1 + 1376) = v0;

  if (v0)
  {
    v4 = v2[149];
    v5 = v2[145];
    v6 = v2[109];

    v7 = sub_1000D9C90;
    v8 = v6;
  }

  else
  {
    v8 = v2[109];
    v7 = sub_1000D7F04;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000D7F04()
{
  v1 = v0[124];
  v2 = *sub_100026F50(v0 + 91, v0[94]);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_10009C9B8(0, 0, v1, &unk_100133448, v4);

  sub_100026FDC(v0 + 91);
  v5 = v0[107];
  v6 = type metadata accessor for DeleteRequest();
  v0[173] = v6;
  v0[69] = v6;
  v7 = sub_1000F820C(&qword_10016D2B8, &type metadata accessor for DeleteRequest);
  v0[174] = v7;
  v0[70] = v7;
  v0[175] = sub_100042BAC(v0 + 66);
  (*(*(v6 - 8) + 16))();
  v8 = sub_100026F94(&qword_10016CB50, &qword_100133370);
  v9 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v10 = swift_task_alloc();
  v0[176] = v10;
  *v10 = v0;
  v10[1] = sub_1000D8108;
  v11 = v0[108];

  return BaseObjectGraph.inject<A>(_:)(v0 + 71, v8, v8);
}

uint64_t sub_1000D8108()
{
  v2 = *v1;
  v3 = *(*v1 + 1408);
  v10 = *v1;
  *(*v1 + 1416) = v0;

  if (v0)
  {
    v4 = v2[149];
    v5 = v2[145];
    v6 = v2[109];

    v7 = sub_1000D8810;
    v8 = v6;
  }

  else
  {
    v8 = v2[109];
    v7 = sub_1000D823C;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1000D823C()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1384);
  v4 = *(v0 + 904);
  v5 = *(v0 + 896);
  v6 = *(v0 + 888);
  v7 = *(v0 + 560);
  sub_100026F50((v0 + 528), *(v0 + 552));
  dispatch thunk of QueryRequest.statementType.getter();
  v8 = (*(v5 + 88))(v4, v6);
  if (v8 == enum case for StatementType.select(_:))
  {
    v9 = *(v0 + 1192);
    v10 = *(v0 + 1160);

LABEL_3:
    v11 = *(v0 + 1128);
    v12 = *(v0 + 1120);
    v13 = *(v0 + 1112);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 1072);
    v17 = *(v0 + 1064);
    v18 = *(v0 + 1024);
    v56 = *(v0 + 1032);
    v57 = *(v0 + 1016);
    v58 = *(v0 + 1008);
    v59 = *(v0 + 992);
    v19 = *(v0 + 984);
    v60 = *(v0 + 976);
    v61 = *(v0 + 952);
    v62 = *(v0 + 928);
    v63 = *(v0 + 904);
    v65 = *(v0 + 880);
    sub_100026FDC((v0 + 568));
    sub_100026FDC((v0 + 528));
    sub_1000F65EC(v18, type metadata accessor for RequestContext);
    sub_10001B428(v0 + 192);
    sub_10002BA6C(v19, &qword_10016AD38, &qword_1001332F0);
    sub_100042AFC(v0 + 104);
    sub_10002BA6C(v14, &qword_10016D2B0, &qword_100133430);
    sub_100026FDC((v0 + 448));
    sub_1000F7B88("performDeleteRequest", 20, 2);

    v20 = *(v0 + 8);
    v21 = *(v0 + 1280);

    return v20(v21);
  }

  if (v8 == enum case for StatementType.insert(_:))
  {
    v23 = *(v0 + 1224);
    v24 = *(v0 + 872);
    v25 = *sub_100026F50((v0 + 568), *(v0 + 592));
    v26 = swift_task_alloc();
    *(v0 + 1424) = v26;
    *v26 = v0;
    v26[1] = sub_1000D8A04;
    v27 = *(v0 + 1200);
    v28 = *(v0 + 1192);
    v29 = *(v0 + 1160);
    v30 = *(v0 + 1152);

    return sub_1000706AC(v24 + v23, v30, v29, v27, v28);
  }

  else if (v8 == enum case for StatementType.update(_:))
  {
    v31 = *(v0 + 1224);
    v32 = *(v0 + 872);
    v33 = *sub_100026F50((v0 + 568), *(v0 + 592));
    v34 = swift_task_alloc();
    *(v0 + 1432) = v34;
    *v34 = v0;
    v34[1] = sub_1000D8C10;
    v35 = *(v0 + 1200);
    v36 = *(v0 + 1192);
    v37 = *(v0 + 1160);
    v38 = *(v0 + 1152);

    return sub_100070C50(v32 + v31, v38, v37, v35, v36);
  }

  else
  {
    if (v8 != enum case for StatementType.delete(_:))
    {
      v47 = *(v0 + 1192);
      v48 = *(v0 + 1464);
      v49 = *(v0 + 1184);
      v50 = *(v0 + 1176);
      v51 = *(v0 + 1160);
      v52 = *(v0 + 1032);
      v64 = *(v0 + 896);
      v66 = *(v0 + 904);
      v53 = *(v0 + 888);

      sub_100026F50(qword_10016D0C8, qword_10016D0E0);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v54._object = 0x800000010013B360;
      v54._countAndFlagsBits = 0xD000000000000018;
      LogMessage.StringInterpolation.appendLiteral(_:)(v54);
      *(v0 + 824) = v53;
      sub_100042BAC((v0 + 800));
      dispatch thunk of QueryRequest.statementType.getter();
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 800, &qword_10016AB10, &unk_100130B10);
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v55);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      (*(v64 + 8))(v66, v53);
      goto LABEL_3;
    }

    v39 = *(v0 + 1224);
    v40 = *(v0 + 872);
    v41 = *sub_100026F50((v0 + 568), *(v0 + 592));
    v42 = swift_task_alloc();
    *(v0 + 1440) = v42;
    *v42 = v0;
    v42[1] = sub_1000D8D60;
    v43 = *(v0 + 1200);
    v44 = *(v0 + 1192);
    v45 = *(v0 + 1160);
    v46 = *(v0 + 1152);

    return sub_100070E88(v40 + v39, v46, v45, v43, v44);
  }
}

uint64_t sub_1000D8810()
{
  v23 = v0[177];
  v1 = v0[141];
  v2 = v0[136];
  v3 = v0[123];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v3, &qword_10016AD38, &qword_1001332F0);
  sub_100042AFC((v0 + 13));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC(v0 + 66);
  sub_100026FDC(v0 + 56);
  sub_1000F7B88("performDeleteRequest", 20, 2);

  v4 = v0[140];
  v5 = v0[139];
  v6 = v0[136];
  v7 = v0[135];
  v8 = v0[134];
  v9 = v0[133];
  v10 = v0[129];
  v11 = v0[128];
  v12 = v0[127];
  v13 = v0[126];
  v16 = v0[124];
  v17 = v0[123];
  v18 = v0[122];
  v19 = v0[119];
  v20 = v0[116];
  v21 = v0[113];
  v22 = v0[110];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000D8A04()
{
  v1 = *(*v0 + 1424);
  v2 = *(*v0 + 1192);
  v3 = *(*v0 + 1160);
  v4 = *(*v0 + 872);
  v6 = *v0;

  return _swift_task_switch(sub_1000D8B54, v4, 0);
}

uint64_t sub_1000D8B54()
{
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 1448) = v3;
  *v3 = v0;
  v3[1] = sub_1000D8EB0;
  v4 = *(v0 + 864);

  return BaseObjectGraph.inject<A>(_:)(v0 + 608, v1, v1);
}

uint64_t sub_1000D8C10()
{
  v1 = *(*v0 + 1432);
  v2 = *(*v0 + 1192);
  v3 = *(*v0 + 1160);
  v4 = *(*v0 + 872);
  v6 = *v0;

  return _swift_task_switch(sub_1000F88C8, v4, 0);
}

uint64_t sub_1000D8D60()
{
  v1 = *(*v0 + 1440);
  v2 = *(*v0 + 1192);
  v3 = *(*v0 + 1160);
  v4 = *(*v0 + 872);
  v6 = *v0;

  return _swift_task_switch(sub_1000F88C8, v4, 0);
}

uint64_t sub_1000D8EB0()
{
  v2 = *v1;
  v3 = *(*v1 + 1448);
  v4 = *v1;
  *(*v1 + 1456) = v0;

  v5 = *(v2 + 872);
  if (v0)
  {
    v6 = sub_1000D93E8;
  }

  else
  {
    v6 = sub_1000D8FDC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000D8FDC()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1240);
  v3 = *(v0 + 1232);
  v4 = *(v0 + 992);
  v5 = *(v0 + 880);
  v6 = *(v0 + 864);
  (*(v0 + 1248))(v5, *(v0 + 872) + *(v0 + 1224), v3);
  (*(v2 + 56))(v5, 0, 1, v3);
  v7 = type metadata accessor for PostScheduledNotificationsTask();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000F7F90(v5, v10 + OBJC_IVAR____TtC19amsondevicestoraged30PostScheduledNotificationsTask_credential, &qword_10016CB48, &qword_100132C60);
  *(v0 + 672) = v7;
  *(v0 + 680) = sub_1000F820C(&qword_10016D270, type metadata accessor for PostScheduledNotificationsTask);
  *(v0 + 648) = v10;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_100026EEC(v0 + 648, v0 + 688);
  v12 = qword_10016A6C8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 992);
  v14 = *(v0 + 864);
  v15 = qword_1001738A8;
  v16 = sub_1000F820C(&qword_10016ADA0, type metadata accessor for DaemonActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  sub_10002C604((v0 + 688), (v17 + 4));
  v17[9] = v14;

  sub_100053D08(0, 0, v13, &unk_100133440, v17);

  sub_100026FDC((v0 + 608));
  sub_100026FDC((v0 + 648));
  v18 = *(v0 + 1128);
  v19 = *(v0 + 1120);
  v20 = *(v0 + 1112);
  v21 = *(v0 + 1088);
  v22 = *(v0 + 1080);
  v23 = *(v0 + 1072);
  v24 = *(v0 + 1064);
  v25 = *(v0 + 1024);
  v30 = *(v0 + 1032);
  v31 = *(v0 + 1016);
  v32 = *(v0 + 1008);
  v33 = *(v0 + 992);
  v26 = *(v0 + 984);
  v34 = *(v0 + 976);
  v35 = *(v0 + 952);
  v36 = *(v0 + 928);
  v37 = *(v0 + 904);
  v38 = *(v0 + 880);
  sub_100026FDC((v0 + 568));
  sub_100026FDC((v0 + 528));
  sub_1000F65EC(v25, type metadata accessor for RequestContext);
  sub_10001B428(v0 + 192);
  sub_10002BA6C(v26, &qword_10016AD38, &qword_1001332F0);
  sub_100042AFC(v0 + 104);
  sub_10002BA6C(v21, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC((v0 + 448));
  sub_1000F7B88("performDeleteRequest", 20, 2);

  v27 = *(v0 + 8);
  v28 = *(v0 + 1280);

  return v27(v28);
}

uint64_t sub_1000D93E8()
{
  sub_100026FDC(v0 + 71);
  v23 = v0[182];
  v1 = v0[141];
  v2 = v0[136];
  v3 = v0[123];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v3, &qword_10016AD38, &qword_1001332F0);
  sub_100042AFC((v0 + 13));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC(v0 + 66);
  sub_100026FDC(v0 + 56);
  sub_1000F7B88("performDeleteRequest", 20, 2);

  v4 = v0[140];
  v5 = v0[139];
  v6 = v0[136];
  v7 = v0[135];
  v8 = v0[134];
  v9 = v0[133];
  v10 = v0[129];
  v11 = v0[128];
  v12 = v0[127];
  v13 = v0[126];
  v16 = v0[124];
  v17 = v0[123];
  v18 = v0[122];
  v19 = v0[119];
  v20 = v0[116];
  v21 = v0[113];
  v22 = v0[110];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000D95E4()
{
  v1 = v0[141];
  sub_1000F7B88("performDeleteRequest", 20, 2);

  v21 = v0[143];
  v2 = v0[140];
  v3 = v0[139];
  v4 = v0[136];
  v5 = v0[135];
  v6 = v0[134];
  v7 = v0[133];
  v8 = v0[129];
  v9 = v0[128];
  v10 = v0[127];
  v11 = v0[126];
  v14 = v0[124];
  v15 = v0[123];
  v16 = v0[122];
  v17 = v0[119];
  v18 = v0[116];
  v19 = v0[113];
  v20 = v0[110];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000D9764()
{
  v1 = v0[141];
  v2 = v0[136];
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_1000F7B88("performDeleteRequest", 20, 2);

  v22 = v0[152];
  v3 = v0[140];
  v4 = v0[139];
  v5 = v0[136];
  v6 = v0[135];
  v7 = v0[134];
  v8 = v0[133];
  v9 = v0[129];
  v10 = v0[128];
  v11 = v0[127];
  v12 = v0[126];
  v15 = v0[124];
  v16 = v0[123];
  v17 = v0[122];
  v18 = v0[119];
  v19 = v0[116];
  v20 = v0[113];
  v21 = v0[110];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000D9908()
{
  v1 = v0[141];
  v2 = v0[136];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_1000F7B88("performDeleteRequest", 20, 2);

  v22 = v0[162];
  v3 = v0[140];
  v4 = v0[139];
  v5 = v0[136];
  v6 = v0[135];
  v7 = v0[134];
  v8 = v0[133];
  v9 = v0[129];
  v10 = v0[128];
  v11 = v0[127];
  v12 = v0[126];
  v15 = v0[124];
  v16 = v0[123];
  v17 = v0[122];
  v18 = v0[119];
  v19 = v0[116];
  v20 = v0[113];
  v21 = v0[110];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000D9AC8()
{
  v1 = v0[141];
  v2 = v0[136];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC(v0 + 56);
  sub_1000F7B88("performDeleteRequest", 20, 2);

  v22 = v0[167];
  v3 = v0[140];
  v4 = v0[139];
  v5 = v0[136];
  v6 = v0[135];
  v7 = v0[134];
  v8 = v0[133];
  v9 = v0[129];
  v10 = v0[128];
  v11 = v0[127];
  v12 = v0[126];
  v15 = v0[124];
  v16 = v0[123];
  v17 = v0[122];
  v18 = v0[119];
  v19 = v0[116];
  v20 = v0[113];
  v21 = v0[110];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000D9C90()
{
  v1 = v0[141];
  v2 = v0[136];
  v3 = v0[123];
  sub_1000F65EC(v0[128], type metadata accessor for RequestContext);
  sub_10001B428((v0 + 24));
  sub_10002BA6C(v3, &qword_10016AD38, &qword_1001332F0);
  sub_100042AFC((v0 + 13));
  sub_10002BA6C(v2, &qword_10016D2B0, &qword_100133430);
  sub_100026FDC(v0 + 56);
  sub_1000F7B88("performDeleteRequest", 20, 2);

  v23 = v0[172];
  v4 = v0[140];
  v5 = v0[139];
  v6 = v0[136];
  v7 = v0[135];
  v8 = v0[134];
  v9 = v0[133];
  v10 = v0[129];
  v11 = v0[128];
  v12 = v0[127];
  v13 = v0[126];
  v16 = v0[124];
  v17 = v0[123];
  v18 = v0[122];
  v19 = v0[119];
  v20 = v0[116];
  v21 = v0[113];
  v22 = v0[110];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000D9E7C()
{
  if (Connection.isOnClientContextQueue.getter())
  {
    v1 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, enum case for DaemonError.unexpectedContextReentry(_:), v1);
    return swift_willThrow();
  }

  else
  {
    v4 = Connection.clientContextQueue.getter();
    swift_allocObject();
    v5 = swift_weakInit();
    v6[1] = v6;
    __chkstk_darwin(v5);
    OS_dispatch_queue.sync<A>(execute:)();

    if (!v0)
    {
      return v6[3];
    }
  }

  return result;
}

uint64_t sub_1000DA01C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v11[3] = type metadata accessor for RequestContext();
    v6 = sub_100042BAC(v11);
    sub_1000F6524(a2, v6);
    Connection.setClientContext(_:)();
    v7 = sub_100026FDC(v11);
    a3(&v12, v7);
    Connection.clearClientContext()();
    if (v3)
    {
    }

    else
    {

      return v12;
    }
  }

  else
  {
    v9 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for DaemonError.interruptedContext(_:), v9);
    return swift_willThrow();
  }
}

uint64_t sub_1000DA19C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  _StringGuts.grow(_:)(41);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 656419879;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = a3;
  v10._object = a4;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000019;
  v11._object = 0x800000010013DC00;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 10537;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10002B95C(&qword_10016AD30, &qword_10016AD28, &unk_1001318C0);
  return ExpressionType.init(literal:)();
}

uint64_t sub_1000DA304()
{
  if (qword_10016A638 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_1001737A8, &unk_10016D0C8);
}

uint64_t sub_1000DA35C()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016D0F0);
  v1 = sub_10002FD14(v0, qword_10016D0F0);
  if (qword_10016A538 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000DA424()
{
  v1 = v0;
  v2 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v8 = *(type metadata accessor for LogMessage() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x800000010013D250;
  v11._countAndFlagsBits = 0xD000000000000014;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v12 = (v0 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
  v14 = *(v0 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
  v13 = *(v0 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id + 8);
  v28 = &type metadata for String;
  *&v27 = v14;
  *(&v27 + 1) = v13;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v27, &qword_10016AB10, &unk_100130B10);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager;
  v19 = *v12;
  v18 = v12[1];
  sub_100026EEC(v1 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager, &v27);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  sub_10002C604(&v27, (v20 + 4));
  v20[9] = v19;
  v20[10] = v18;

  sub_10009C9B8(0, 0, v5, &unk_100133270, v20);

  v21 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  v22 = type metadata accessor for AccessCredential();
  (*(*(v22 - 8) + 8))(v1 + v21, v22);
  v23 = *(v1 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_connectionDelegate);
  swift_unknownObjectRelease();
  v24 = v12[1];

  sub_100026FDC((v1 + v17));
  sub_10002BA6C(v1 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_statusProvider, &qword_10016AFF8, &unk_100130F10);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1000DA7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000DA7DC, 0, 0);
}

uint64_t sub_1000DA7DC()
{
  v1 = sub_100026F50(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = *v1;
  *(v0 + 40) = *v1;

  return _swift_task_switch(sub_1000DA84C, v2, 0);
}

uint64_t sub_1000DA84C()
{
  v1 = v0[5];
  sub_1000522FC(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000DA8B0()
{
  sub_1000DA424();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ClientSession()
{
  result = qword_10016D148;
  if (!qword_10016D148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000DA930()
{
  result = type metadata accessor for AccessCredential();
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

uint64_t sub_1000DA9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[168] = v3;
  v4[167] = a3;
  v4[166] = a2;
  v4[165] = a1;
  v5 = type metadata accessor for RequestAccessType();
  v4[169] = v5;
  v6 = *(v5 - 8);
  v4[170] = v6;
  v7 = *(v6 + 64) + 15;
  v4[171] = swift_task_alloc();
  v8 = type metadata accessor for AccessCredential();
  v4[172] = v8;
  v9 = *(v8 - 8);
  v4[173] = v9;
  v4[174] = *(v9 + 64);
  v4[175] = swift_task_alloc();
  v10 = type metadata accessor for OSSignposter();
  v4[176] = v10;
  v11 = *(v10 - 8);
  v4[177] = v11;
  v12 = *(v11 + 64) + 15;
  v4[178] = swift_task_alloc();
  v13 = type metadata accessor for SelectRequest();
  v4[179] = v13;
  v14 = *(v13 - 8);
  v4[180] = v14;
  v15 = *(v14 + 64) + 15;
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  v4[183] = swift_task_alloc();
  v4[184] = swift_task_alloc();
  v16 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v4[185] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v4[186] = swift_task_alloc();
  v18 = type metadata accessor for StorageCategory();
  v4[187] = v18;
  v19 = *(v18 - 8);
  v4[188] = v19;
  v20 = *(v19 + 64) + 15;
  v4[189] = swift_task_alloc();
  v21 = type metadata accessor for StatementType();
  v4[190] = v21;
  v22 = *(v21 - 8);
  v4[191] = v22;
  v23 = *(v22 + 64) + 15;
  v4[192] = swift_task_alloc();
  v4[193] = swift_task_alloc();
  v4[194] = swift_task_alloc();
  v24 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[195] = swift_task_alloc();
  v25 = type metadata accessor for OSSignpostID();
  v4[196] = v25;
  v26 = *(v25 - 8);
  v4[197] = v26;
  v27 = *(v26 + 64) + 15;
  v4[198] = swift_task_alloc();
  v4[199] = swift_task_alloc();
  v4[200] = swift_task_alloc();

  return _swift_task_switch(sub_1000DAD98, v3, 0);
}

uint64_t sub_1000DAD98()
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v1 = v0[200];
  sub_10002FD14(v0[176], qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v0[200];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v6, "makeContext", "", v5, 2u);
  }

  v7 = v0[200];
  v8 = v0[199];
  v9 = v0[197];
  v10 = v0[196];

  (*(v9 + 16))(v8, v7, v10);
  v11 = type metadata accessor for OSSignpostIntervalState();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[201] = OSSignpostIntervalState.init(id:isOpen:)();
  v14 = *(v9 + 8);
  v0[202] = v14;
  v0[203] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v7, v10);
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  v15 = v0[195];
  v16 = v0[190];
  v17 = v0[179];
  v18 = v0[166];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v19 = *(type metadata accessor for LogMessage() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x800000010013D2D0;
  v22._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v0[116] = v16;
  sub_100042BAC(v0 + 113);
  v0[204] = sub_1000F820C(&qword_10016A960, &type metadata accessor for SelectRequest);
  dispatch thunk of QueryRequest.statementType.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 113), &qword_10016AB10, &unk_100130B10);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v24 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v25 = swift_task_alloc();
  v0[205] = v25;
  *v25 = v0;
  v25[1] = sub_1000DB180;
  v26 = v0[167];

  return BaseObjectGraph.inject<A>(_:)(v0 + 13, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000DB180()
{
  v2 = *(*v1 + 1640);
  v3 = *v1;
  v3[206] = v0;

  if (v0)
  {
    v4 = v3[168];

    return _swift_task_switch(sub_1000F8858, v4, 0);
  }

  else
  {
    v5 = sub_100026F94(&qword_10016D200, &qword_1001332A0);
    v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v7 = swift_task_alloc();
    v3[207] = v7;
    *v7 = v3;
    v7[1] = sub_1000DB324;
    v8 = v3[167];

    return BaseObjectGraph.inject<A>(_:)(v3 + 78, v5, v5);
  }
}

uint64_t sub_1000DB324()
{
  v2 = *v1;
  v3 = *(*v1 + 1656);
  v4 = *v1;
  *(*v1 + 1664) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000F87DC;
  }

  else
  {
    v6 = sub_1000DB450;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000DB450()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1432);
  v4 = *(v0 + 1328);
  sub_100026F50((v0 + 624), *(v0 + 648));
  v5 = dispatch thunk of QueryRequest.statement.getter();
  sub_10007ACB8(v5, v6, v0 + 192);
  if (v1)
  {
    sub_100042AFC(v0 + 104);

LABEL_24:
    sub_100026FDC((v0 + 624));
    v46 = *(v0 + 1608);
    v47 = *(v0 + 1600);
    v48 = *(v0 + 1592);
    v49 = *(v0 + 1584);
    v50 = *(v0 + 1560);
    v51 = *(v0 + 1552);
    v52 = *(v0 + 1544);
    v53 = *(v0 + 1536);
    v54 = *(v0 + 1512);
    v62 = *(v0 + 1488);
    v63 = *(v0 + 1472);
    v64 = *(v0 + 1464);
    v65 = *(v0 + 1456);
    v66 = *(v0 + 1448);
    v68 = *(v0 + 1424);
    v70 = *(v0 + 1400);
    v73 = *(v0 + 1368);
    sub_1000F7B88("makeContext", 11, 2);

    v55 = *(v0 + 8);

    return v55();
  }

  sub_10001DAD8(v0 + 192, v0 + 960);
  v7 = sub_10002A1C8(v0 + 960);
  v8 = sub_10002A1D0(v0 + 960);
  *(v0 + 1296) = v7;
  *(v0 + 1288) = v8;
  v9 = sub_10002A30C((v0 + 1296), (v0 + 1288));
  sub_100078558((v0 + 960));
  if (v9 != 1)
  {
    goto LABEL_14;
  }

  sub_10001DAD8(v0 + 192, v0 + 936);
  v10 = sub_10002A1C8(v0 + 936);
  v11 = sub_10002A1D0(v0 + 936);
  *(v0 + 1304) = v10;
  *(v0 + 1280) = v11;
  if (!sub_10002A30C((v0 + 1304), (v0 + 1280)))
  {
    sub_100078558((v0 + 936));
LABEL_14:
    v28 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError);
    swift_allocError();
    v30 = v29;
    sub_10001DAD8(v0 + 192, v0 + 984);
    v31 = sub_10002A1C8(v0 + 984);
    v32 = sub_10002A1D0(v0 + 984);
    *(v0 + 1264) = v31;
    *(v0 + 1256) = v32;
    v33 = sub_10002A30C((v0 + 1264), (v0 + 1256));
    if (!v33)
    {
      sub_100078558((v0 + 984));
LABEL_23:
      *v30 = _swiftEmptyArrayStorage;
      (*(*(v28 - 8) + 104))(v30, enum case for DaemonError.multipleSchemas(_:), v28);
      swift_willThrow();
      sub_100042AFC(v0 + 104);
      sub_10002AAE4((v0 + 192));
      goto LABEL_24;
    }

    v34 = v33;
    v67 = v30;
    v69 = v28;
    result = sub_10007E9EC(0, v33 & ~(v33 >> 63), 0);
    if (v34 < 0)
    {
      goto LABEL_32;
    }

    v35 = 0;
    v72 = (v0 + 1216);
    while (1)
    {
      v36 = sub_10002A418((v0 + 984), v35);
      std::string::basic_string((v0 + 1104), v36);
      std::string::basic_string((v0 + 1128), (v0 + 1104));
      v37 = v34;
      sub_10002EFB0((v0 + 1128));
      sub_10002EFC4(v0 + 1128);
      v38 = static String._fromUTF8Repairing(_:)();
      v40 = v39;
      std::string::~string((v0 + 1104));
      std::string::~string((v0 + 1128));
      v42 = _swiftEmptyArrayStorage[2];
      v41 = _swiftEmptyArrayStorage[3];
      if (v42 >= v41 >> 1)
      {
        sub_10007E9EC((v41 > 1), v42 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v42 + 1;
      v43 = &_swiftEmptyArrayStorage[2 * v42];
      v43[4] = v38;
      v43[5] = v40;
      v44 = sub_10002A1C8(v0 + 984);
      v45 = sub_10002A1D0(v0 + 984);
      *v72 = v44;
      *(v0 + 1248) = v45;
      result = sub_10002A30C(v72, (v0 + 1248));
      if (v35 >= result)
      {
        break;
      }

      ++v35;
      v34 = v37;
      if (v37 == v35)
      {
        sub_100078558((v0 + 984));
        v28 = v69;
        v30 = v67;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v12 = sub_10002A418((v0 + 936), 0);
  std::string::basic_string((v0 + 1056), v12);
  sub_100078558((v0 + 936));
  sub_10001DE24(v0 + 192, (v0 + 1008));
  v13 = sub_10002A1C8(v0 + 1008);
  v14 = sub_10002A1D0(v0 + 1008);
  *(v0 + 1272) = v13;
  *(v0 + 1312) = v14;
  v15 = sub_10002A2EC((v0 + 1272), (v0 + 1312));
  if (v15)
  {
    v16 = v15;
    result = sub_10007E9EC(0, v15 & ~(v15 >> 63), 0);
    if (v16 < 0)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v18 = 0;
    v71 = v16;
    do
    {
      v19 = sub_10002C030((v0 + 1008), v18);
      sub_10002A33C((v0 + 544), v19);
      std::string::basic_string((v0 + 1080), (v0 + 568));
      sub_10002EFB0((v0 + 1080));
      sub_10002EFC4(v0 + 1080);
      v20 = static String._fromUTF8Repairing(_:)();
      v22 = v21;
      sub_10001B428(v0 + 544);
      std::string::~string((v0 + 1080));
      v24 = _swiftEmptyArrayStorage[2];
      v23 = _swiftEmptyArrayStorage[3];
      if (v24 >= v23 >> 1)
      {
        sub_10007E9EC((v23 > 1), v24 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v24 + 1;
      v25 = &_swiftEmptyArrayStorage[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
      v26 = sub_10002A1C8(v0 + 1008);
      v27 = sub_10002A1D0(v0 + 1008);
      *(v0 + 1232) = v26;
      *(v0 + 1224) = v27;
      result = sub_10002A2EC((v0 + 1232), (v0 + 1224));
      if (v18 >= result)
      {
        goto LABEL_31;
      }
    }

    while (v71 != ++v18);
  }

  sub_10002A4B8((v0 + 1008));
  *(v0 + 1672) = _swiftEmptyArrayStorage;
  std::string::basic_string((v0 + 1152), (v0 + 1056));
  sub_10002EFB0((v0 + 1152));
  sub_10002EFC4(v0 + 1152);
  v56 = static String._fromUTF8Repairing(_:)();
  v58 = v57;
  *(v0 + 1680) = v57;
  std::string::~string((v0 + 1152));
  v59 = swift_task_alloc();
  *(v0 + 1688) = v59;
  *v59 = v0;
  v59[1] = sub_1000DBBD0;
  v60 = *(v0 + 1344);
  v61 = *(v0 + 1336);

  return sub_1000F14AC(_swiftEmptyArrayStorage, v56, v58, v0 + 104, v61);
}

uint64_t sub_1000DBBD0()
{
  v2 = *v1;
  v3 = *(*v1 + 1688);
  v4 = *v1;
  *(*v1 + 1696) = v0;

  v5 = v2[210];
  v6 = v2[209];
  v7 = v2[168];

  if (v0)
  {
    v8 = sub_1000F885C;
  }

  else
  {
    v8 = sub_1000DBD34;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000DBD34()
{
  v1 = *(v0 + 1696);
  sub_10008366C(*(v0 + 192), *(v0 + 1552));
  if (!v1)
  {
    v2 = *(v0 + 1632);
    v3 = *(v0 + 1552);
    v4 = *(v0 + 1544);
    v5 = *(v0 + 1528);
    v6 = *(v0 + 1520);
    v7 = *(v0 + 1432);
    v8 = *(v0 + 1328);
    dispatch thunk of QueryRequest.statementType.getter();
    LOBYTE(v8) = static StatementType.== infix(_:_:)();
    v9 = *(v5 + 8);
    *(v0 + 1704) = v9;
    *(v0 + 1712) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v4, v6);
    v51 = v9;
    if (v8)
    {
      std::string::basic_string((v0 + 1176), (v0 + 1056));
      sub_10002EFB0((v0 + 1176));
      sub_10002EFC4(v0 + 1176);
      v28 = static String._fromUTF8Repairing(_:)();
      v53 = *(v0 + 1632);
      v29 = *(v0 + 1544);
      v30 = *(v0 + 1536);
      v31 = *(v0 + 1528);
      v32 = *(v0 + 1520);
      v33 = *(v0 + 1512);
      v50 = *(v0 + 1432);
      v34 = *(v0 + 1344);
      v35 = *(v0 + 1328);
      *(v0 + 1720) = v36;
      *(v0 + 1728) = v28;
      std::string::~string((v0 + 1176));
      *(v0 + 1736) = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
      AccessCredential.storageCategory.getter();
      dispatch thunk of QueryRequest.statementType.getter();
      (*(v31 + 104))(v29, enum case for StatementType.select(_:), v32);
      *(v0 + 1209) = static StatementType.== infix(_:_:)() & 1;
      v51(v29, v32);
      v51(v30, v32);
      v37 = sub_100026F50((v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager), *(v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager + 24));
      v38 = v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id;
      *(v0 + 1744) = *(v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
      *(v0 + 1752) = *(v38 + 8);
      v39 = *v37;
      *(v0 + 1760) = *v37;

      return _swift_task_switch(sub_1000DC1F4, v39, 0);
    }

    v10 = *(v0 + 1552);
    v11 = *(v0 + 1528);
    v12 = *(v0 + 1520);
    v46 = *(v0 + 1432);
    v48 = *(v0 + 1632);
    v44 = *(v0 + 1328);
    v13 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError);
    swift_allocError();
    v15 = v14;
    v16 = *(sub_100026F94(&qword_10016D208, &qword_1001332B0) + 48);
    (*(v11 + 16))(v15, v10, v12);
    dispatch thunk of QueryRequest.statementType.getter();
    (*(*(v13 - 8) + 104))(v15, enum case for DaemonError.statementTypeMismatch(_:), v13);
    swift_willThrow();
    v51(v10, v12);
  }

  std::string::~string((v0 + 1056));
  sub_100042AFC(v0 + 104);
  sub_10002AAE4((v0 + 192));
  sub_100026FDC((v0 + 624));
  v17 = *(v0 + 1608);
  v18 = *(v0 + 1600);
  v19 = *(v0 + 1592);
  v20 = *(v0 + 1584);
  v21 = *(v0 + 1560);
  v22 = *(v0 + 1552);
  v23 = *(v0 + 1544);
  v24 = *(v0 + 1536);
  v25 = *(v0 + 1512);
  v40 = *(v0 + 1488);
  v41 = *(v0 + 1472);
  v42 = *(v0 + 1464);
  v43 = *(v0 + 1456);
  v45 = *(v0 + 1448);
  v47 = *(v0 + 1424);
  v49 = *(v0 + 1400);
  v52 = *(v0 + 1368);
  sub_1000F7B88("makeContext", 11, 2);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1000DC1F4()
{
  v1 = *(v0 + 1209);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1488);
  v5 = *(v0 + 1480);
  (*(*(v0 + 1504) + 16))(&v4[v5[5]], *(v0 + 1512), *(v0 + 1496));
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  *v4 = v2;
  *(v4 + 1) = v3;
  v8 = &v4[v5[6]];
  *v8 = v7;
  *(v8 + 1) = v6;
  v4[v5[7]] = v1;
  v4[v5[8]] = 0;

  v9 = swift_task_alloc();
  *(v0 + 1768) = v9;
  *v9 = v0;
  v9[1] = sub_1000DC308;
  v10 = *(v0 + 1760);
  v11 = *(v0 + 1752);
  v12 = *(v0 + 1744);
  v13 = *(v0 + 1488);

  return sub_100050F58(v13, v12, v11);
}

uint64_t sub_1000DC308(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1768);
  v8 = *v2;
  v3[222] = a1;
  v3[223] = v1;

  if (v1)
  {
    v5 = v3[220];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v6 = sub_1000DCC68;
  }

  else
  {
    v5 = v3[168];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v6 = sub_1000DC460;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000DC460()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1328);
  (*(*(v0 + 1504) + 8))(*(v0 + 1512), *(v0 + 1496));
  dispatch thunk of QueryRequest.query.getter();
  v4 = *(v0 + 896);
  sub_100026F50((v0 + 864), *(v0 + 888));
  LOBYTE(v3) = Expressible.isExpandable.getter();
  sub_100026FDC((v0 + 864));
  if (v3)
  {
    v5 = *(v0 + 1776);
    v6 = qword_10016A548;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 1632);
    v8 = *(v0 + 1584);
    v9 = *(v0 + 1432);
    v10 = *(v0 + 1424);
    v11 = *(v0 + 1416);
    v12 = *(v0 + 1408);
    v13 = *(v0 + 1328);
    v14 = sub_10002FD14(v12, qword_1001736D0);
    (*(v11 + 16))(v10, v14, v12);
    static OSSignpostID.exclusive.getter();
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignposter.logHandle.getter();
    LOBYTE(v12) = static os_signpost_type_t.begin.getter();
    v17 = OSSignpostID.rawValue.getter();
    v105 = v15;
    v106 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v12, v17, "expandQuery", "", v15, 2u);
    dispatch thunk of QueryRequest.query.getter();
    v18 = *(v0 + 776);
    sub_100026F50((v0 + 744), *(v0 + 768));
    LOBYTE(v10) = Expressible.isExpandable.getter();
    sub_100026FDC((v0 + 744));
    if (v10)
    {
      v101 = v5;
      v19 = *(v0 + 1736);
      v20 = *(v0 + 1632);
      v21 = *(v0 + 1432);
      v22 = *(v0 + 1400);
      v23 = *(v0 + 1384);
      v24 = *(v0 + 1376);
      v25 = *(v0 + 1344);
      v26 = *(v0 + 1328);
      dispatch thunk of QueryRequest.query.getter();
      v94 = *(v0 + 696);
      sub_100026F50((v0 + 664), *(v0 + 688));
      (*(v23 + 16))(v22, v25 + v19, v24);
      sub_10002A9C4(v0 + 16, (v0 + 192));
      v27 = *(v0 + 1776);
      v85 = *(v0 + 1736);
      v88 = *(v0 + 1784);
      v28 = *(v0 + 1400);
      v29 = *(v0 + 1384);
      v30 = *(v0 + 1376);
      v31 = *(v0 + 1344);
      v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v33 = (*(v0 + 1392) + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      (*(v29 + 32))(v34 + v32, v28, v30);
      *(v34 + v33) = v101;
      sub_10002ABE8(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8), (v0 + 16));
      sub_10002AAE4((v0 + 16));

      Expressible.expanded(using:in:rawStatementHandler:)();
      if (v88)
      {
        v35 = *(v0 + 1776);
        v36 = *(v0 + 1712);
        v37 = *(v0 + 1704);
        v102 = *(v0 + 1624);
        v38 = *(v0 + 1584);
        v39 = *(v0 + 1568);
        v40 = *(v0 + 1552);
        v41 = *(v0 + 1520);
        v95 = *(v0 + 1424);
        v98 = *(v0 + 1616);
        v42 = *(v0 + 1416);
        v91 = *(v0 + 1408);

        sub_100026FDC((v0 + 664));

        v37(v40, v41);
        std::string::~string((v0 + 1056));
        sub_100042AFC(v0 + 104);
        v98(v38, v39);
        (*(v42 + 8))(v95, v91);
LABEL_12:
        sub_10002AAE4((v0 + 192));
        sub_100026FDC((v0 + 624));
        v67 = *(v0 + 1608);
        v68 = *(v0 + 1600);
        v69 = *(v0 + 1592);
        v70 = *(v0 + 1584);
        v71 = *(v0 + 1560);
        v72 = *(v0 + 1552);
        v73 = *(v0 + 1544);
        v74 = *(v0 + 1536);
        v75 = *(v0 + 1512);
        v84 = *(v0 + 1488);
        v87 = *(v0 + 1472);
        v90 = *(v0 + 1464);
        v93 = *(v0 + 1456);
        v97 = *(v0 + 1448);
        v100 = *(v0 + 1424);
        v104 = *(v0 + 1400);
        v107 = *(v0 + 1368);
        sub_1000F7B88("makeContext", 11, 2);

        v76 = *(v0 + 8);

        return v76();
      }

      v43 = *(v0 + 1632);
      v44 = *(v0 + 1456);
      v45 = *(v0 + 1432);
      v46 = *(v0 + 1328);

      sub_100026FDC((v0 + 664));
      dispatch thunk of QueryRequest.withQuery(_:)();
      sub_100026FDC((v0 + 704));
      v103 = 0;
    }

    else
    {
      (*(*(v0 + 1440) + 16))(*(v0 + 1456), *(v0 + 1328), *(v0 + 1432));
      v103 = *(v0 + 1784);
    }

    v96 = *(v0 + 1624);
    v99 = *(v0 + 1632);
    v47 = *(v0 + 1584);
    v89 = *(v0 + 1568);
    v92 = *(v0 + 1616);
    v48 = *(v0 + 1472);
    v49 = *(v0 + 1464);
    v50 = *(v0 + 1456);
    v51 = *(v0 + 1440);
    v52 = *(v0 + 1432);
    v86 = *(v0 + 1424);
    v53 = *(v0 + 1416);
    v82 = *(v0 + 1776);
    v83 = *(v0 + 1408);
    v54 = static os_signpost_type_t.end.getter();
    v55 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v106, v54, v55, "expandQuery", "", v105, 2u);

    v56 = *(v51 + 32);
    v56(v49, v50, v52);

    v56(v48, v49, v52);
    v92(v47, v89);
    (*(v53 + 8))(v86, v83);
    sub_100026F50((v0 + 624), *(v0 + 648));
    v57 = dispatch thunk of QueryRequest.statement.getter();
    sub_10007ACB8(v57, v58, v0 + 280);
    if (v103)
    {
      v59 = *(v0 + 1776);
      v60 = *(v0 + 1712);
      v61 = *(v0 + 1704);
      v62 = *(v0 + 1552);
      v63 = *(v0 + 1520);
      v64 = *(v0 + 1472);
      v65 = *(v0 + 1440);
      v66 = *(v0 + 1432);

      (*(v65 + 8))(v64, v66);
      v61(v62, v63);
      std::string::~string((v0 + 1056));
      sub_100042AFC(v0 + 104);
      goto LABEL_12;
    }

    sub_10002ABE8(v0 + 456, (v0 + 280));
    sub_10002AAE4((v0 + 280));
  }

  else
  {
    (*(*(v0 + 1440) + 16))(*(v0 + 1472), *(v0 + 1328), *(v0 + 1432));
    sub_10002A9C4(v0 + 456, (v0 + 192));
  }

  v78 = sub_100026F94(&qword_10016D210, &unk_1001332B8);
  v79 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v80 = swift_task_alloc();
  *(v0 + 1792) = v80;
  *v80 = v0;
  v80[1] = sub_1000DCC84;
  v81 = *(v0 + 1336);

  return BaseObjectGraph.inject<A>(_:)(v0 + 824, v78, v78);
}

uint64_t sub_1000DCC84()
{
  v2 = *v1;
  v3 = *(*v1 + 1792);
  v4 = *v1;
  *(*v1 + 1800) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000DCF9C;
  }

  else
  {
    v6 = sub_1000DCDB0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000DCDB0()
{
  v1 = v0[217];
  v2 = v0[168];
  v3 = *sub_100026F50(v0 + 103, v0[106]);
  v4 = swift_task_alloc();
  v0[226] = v4;
  *v4 = v0;
  v4[1] = sub_1000DCE70;
  v5 = v0[222];

  return sub_100074494((v0 + 57), v2 + v1, (v0 + 13), v5);
}

uint64_t sub_1000DCE70()
{
  v2 = *v1;
  v3 = *(*v1 + 1808);
  v4 = *v1;
  *(*v1 + 1816) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000DD560;
  }

  else
  {
    v6 = sub_1000DD284;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000DCF9C()
{
  data = v0[75].__r_.__value_.__l.__data_;
  v0[76].__r_.__value_.__r.__words[0] = data;
  v0[51].__r_.__value_.__r.__words[2] = data;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v4 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v4;
    *v4 = v0;
    v4[1] = sub_1000DD850;
    v5 = v0[55].__r_.__value_.__r.__words[2];

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    v6 = v0[76].__r_.__value_.__l.__data_;
    v7 = v0[74].__r_.__value_.__l.__data_;
    size = v0[71].__r_.__value_.__l.__size_;
    v9 = v0[71].__r_.__value_.__l.__data_;
    v10 = v0[64].__r_.__value_.__r.__words[2];
    v11 = v0[63].__r_.__value_.__l.__size_;
    v12 = v0[61].__r_.__value_.__l.__size_;
    v13 = v0[60].__r_.__value_.__l.__data_;
    v14 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v13 + 1))(v12, v14);
    v9(v10, v11);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(&v0[26]);
    v34 = v0[76].__r_.__value_.__l.__data_;
    v15 = v0[67].__r_.__value_.__l.__data_;
    v16 = v0[66].__r_.__value_.__r.__words[2];
    v17 = v0[66].__r_.__value_.__l.__size_;
    v18 = v0[66].__r_.__value_.__l.__data_;
    v19 = v0[65].__r_.__value_.__l.__data_;
    v20 = v0[64].__r_.__value_.__r.__words[2];
    v21 = v0[64].__r_.__value_.__l.__size_;
    v22 = v0[64].__r_.__value_.__l.__data_;
    v23 = v0[63].__r_.__value_.__l.__data_;
    v26 = v0[62].__r_.__value_.__l.__data_;
    v27 = v0[61].__r_.__value_.__l.__size_;
    v28 = v0[61].__r_.__value_.__l.__data_;
    v29 = v0[60].__r_.__value_.__r.__words[2];
    v30 = v0[60].__r_.__value_.__l.__size_;
    v31 = v0[59].__r_.__value_.__l.__size_;
    v32 = v0[58].__r_.__value_.__l.__size_;
    v33 = v0[57].__r_.__value_.__l.__data_;
    sub_1000F7B88("makeContext", 11, 2);

    v24 = v0->__r_.__value_.__l.__size_;

    return v24();
  }
}

uint64_t sub_1000DD284()
{
  (*(*(v0 + 1440) + 16))(*(v0 + 1448), *(v0 + 1472), *(v0 + 1432));
  sub_10002A9C4(v0 + 368, (v0 + 456));
  std::string::basic_string((v0 + 1032), (v0 + 1056));
  v17 = *(v0 + 1776);
  v15 = *(v0 + 1712);
  v1 = *(v0 + 1704);
  v18 = *(v0 + 1608);
  v19 = *(v0 + 1600);
  v20 = *(v0 + 1592);
  v21 = *(v0 + 1584);
  v2 = *(v0 + 1552);
  v22 = *(v0 + 1560);
  v23 = *(v0 + 1544);
  v3 = *(v0 + 1520);
  v24 = *(v0 + 1536);
  v25 = *(v0 + 1512);
  v4 = *(v0 + 1472);
  v26 = *(v0 + 1488);
  v27 = *(v0 + 1464);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1440);
  v7 = *(v0 + 1432);
  v28 = *(v0 + 1456);
  v29 = *(v0 + 1424);
  v30 = *(v0 + 1400);
  v31 = *(v0 + 1368);
  v8 = *(v0 + 1320);
  sub_10002EFB0((v0 + 1032));
  sub_10002EFC4(v0 + 1032);
  v9 = static String._fromUTF8Repairing(_:)();
  v16 = v10;
  sub_10002AAE4((v0 + 456));
  (*(v6 + 8))(v4, v7);
  v1(v2, v3);
  std::string::~string((v0 + 1056));
  sub_100042AFC(v0 + 104);
  std::string::~string((v0 + 1032));
  sub_10002AAE4((v0 + 192));
  (*(v6 + 32))(v8, v5, v7);
  v11 = sub_100026F94(&qword_10016D1F8, &qword_100133288);
  sub_10002ABE8(v8 + v11[9], (v0 + 368));
  sub_10002AAE4((v0 + 368));
  v12 = (v8 + v11[10]);
  *v12 = v9;
  v12[1] = v16;
  *(v8 + v11[11]) = v17;
  sub_100026FDC((v0 + 824));
  sub_100026FDC((v0 + 624));
  sub_1000F7B88("makeContext", 11, 2);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000DD560()
{
  sub_100026FDC(&v0[34].__r_.__value_.__l.__size_);
  v1 = v0[75].__r_.__value_.__r.__words[2];
  v0[76].__r_.__value_.__r.__words[0] = v1;
  v0[51].__r_.__value_.__r.__words[2] = v1;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v4 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v4;
    *v4 = v0;
    v4[1] = sub_1000DD850;
    v5 = v0[55].__r_.__value_.__r.__words[2];

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    data = v0[76].__r_.__value_.__l.__data_;
    v7 = v0[74].__r_.__value_.__l.__data_;
    size = v0[71].__r_.__value_.__l.__size_;
    v9 = v0[71].__r_.__value_.__l.__data_;
    v10 = v0[64].__r_.__value_.__r.__words[2];
    v11 = v0[63].__r_.__value_.__l.__size_;
    v12 = v0[61].__r_.__value_.__l.__size_;
    v13 = v0[60].__r_.__value_.__l.__data_;
    v14 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v13 + 1))(v12, v14);
    v9(v10, v11);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(&v0[26]);
    v34 = v0[76].__r_.__value_.__l.__data_;
    v15 = v0[67].__r_.__value_.__l.__data_;
    v16 = v0[66].__r_.__value_.__r.__words[2];
    v17 = v0[66].__r_.__value_.__l.__size_;
    v18 = v0[66].__r_.__value_.__l.__data_;
    v19 = v0[65].__r_.__value_.__l.__data_;
    v20 = v0[64].__r_.__value_.__r.__words[2];
    v21 = v0[64].__r_.__value_.__l.__size_;
    v22 = v0[64].__r_.__value_.__l.__data_;
    v23 = v0[63].__r_.__value_.__l.__data_;
    v26 = v0[62].__r_.__value_.__l.__data_;
    v27 = v0[61].__r_.__value_.__l.__size_;
    v28 = v0[61].__r_.__value_.__l.__data_;
    v29 = v0[60].__r_.__value_.__r.__words[2];
    v30 = v0[60].__r_.__value_.__l.__size_;
    v31 = v0[59].__r_.__value_.__l.__size_;
    v32 = v0[58].__r_.__value_.__l.__size_;
    v33 = v0[57].__r_.__value_.__l.__data_;
    sub_1000F7B88("makeContext", 11, 2);

    v24 = v0->__r_.__value_.__l.__size_;

    return v24();
  }
}

uint64_t sub_1000DD850()
{
  v2 = *v1;
  v3 = *(*v1 + 1832);
  v4 = *v1;
  *(*v1 + 1840) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000F87F8;
  }

  else
  {
    v6 = sub_1000DD97C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000DD97C()
{
  v1 = v0[179];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[166];
  v6 = sub_100026F50(v0 + 98, v0[101]);
  sub_1000F820C(&qword_10016D218, &type metadata accessor for SelectRequest);
  dispatch thunk of RequestType.accessType.getter();
  LOBYTE(v1) = RequestAccessType.isRead.getter();
  (*(v3 + 8))(v2, v4);
  v7 = *v6;
  v8 = swift_task_alloc();
  v0[231] = v8;
  *v8 = v0;
  v8[1] = sub_1000DDAB8;
  if (v1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  return sub_100061DD0(v9);
}

uint64_t sub_1000DDAB8()
{
  v2 = *v1;
  v3 = *(*v1 + 1848);
  v4 = *v1;
  *(*v1 + 1856) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000F88CC;
  }

  else
  {
    v6 = sub_1000F8860;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000DDBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[168] = v3;
  v4[167] = a3;
  v4[166] = a2;
  v4[165] = a1;
  v5 = type metadata accessor for RequestAccessType();
  v4[169] = v5;
  v6 = *(v5 - 8);
  v4[170] = v6;
  v7 = *(v6 + 64) + 15;
  v4[171] = swift_task_alloc();
  v8 = type metadata accessor for AccessCredential();
  v4[172] = v8;
  v9 = *(v8 - 8);
  v4[173] = v9;
  v4[174] = *(v9 + 64);
  v4[175] = swift_task_alloc();
  v10 = type metadata accessor for OSSignposter();
  v4[176] = v10;
  v11 = *(v10 - 8);
  v4[177] = v11;
  v12 = *(v11 + 64) + 15;
  v4[178] = swift_task_alloc();
  v13 = type metadata accessor for PluckRequest();
  v4[179] = v13;
  v14 = *(v13 - 8);
  v4[180] = v14;
  v15 = *(v14 + 64) + 15;
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  v4[183] = swift_task_alloc();
  v4[184] = swift_task_alloc();
  v16 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v4[185] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v4[186] = swift_task_alloc();
  v18 = type metadata accessor for StorageCategory();
  v4[187] = v18;
  v19 = *(v18 - 8);
  v4[188] = v19;
  v20 = *(v19 + 64) + 15;
  v4[189] = swift_task_alloc();
  v21 = type metadata accessor for StatementType();
  v4[190] = v21;
  v22 = *(v21 - 8);
  v4[191] = v22;
  v23 = *(v22 + 64) + 15;
  v4[192] = swift_task_alloc();
  v4[193] = swift_task_alloc();
  v4[194] = swift_task_alloc();
  v24 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[195] = swift_task_alloc();
  v25 = type metadata accessor for OSSignpostID();
  v4[196] = v25;
  v26 = *(v25 - 8);
  v4[197] = v26;
  v27 = *(v26 + 64) + 15;
  v4[198] = swift_task_alloc();
  v4[199] = swift_task_alloc();
  v4[200] = swift_task_alloc();

  return _swift_task_switch(sub_1000DDF90, v3, 0);
}

uint64_t sub_1000DDF90()
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v1 = v0[200];
  sub_10002FD14(v0[176], qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v0[200];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v6, "makeContext", "", v5, 2u);
  }

  v7 = v0[200];
  v8 = v0[199];
  v9 = v0[197];
  v10 = v0[196];

  (*(v9 + 16))(v8, v7, v10);
  v11 = type metadata accessor for OSSignpostIntervalState();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[201] = OSSignpostIntervalState.init(id:isOpen:)();
  v14 = *(v9 + 8);
  v0[202] = v14;
  v0[203] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v7, v10);
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  v15 = v0[195];
  v16 = v0[190];
  v17 = v0[179];
  v18 = v0[166];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v19 = *(type metadata accessor for LogMessage() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x800000010013D2D0;
  v22._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v0[116] = v16;
  sub_100042BAC(v0 + 113);
  v0[204] = sub_1000F820C(&qword_10016D230, &type metadata accessor for PluckRequest);
  dispatch thunk of QueryRequest.statementType.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 113), &qword_10016AB10, &unk_100130B10);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v24 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v25 = swift_task_alloc();
  v0[205] = v25;
  *v25 = v0;
  v25[1] = sub_1000DE378;
  v26 = v0[167];

  return BaseObjectGraph.inject<A>(_:)(v0 + 13, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000DE378()
{
  v2 = *(*v1 + 1640);
  v3 = *v1;
  v3[206] = v0;

  if (v0)
  {
    v4 = v3[168];

    return _swift_task_switch(sub_1000F8858, v4, 0);
  }

  else
  {
    v5 = sub_100026F94(&qword_10016D200, &qword_1001332A0);
    v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v7 = swift_task_alloc();
    v3[207] = v7;
    *v7 = v3;
    v7[1] = sub_1000DE51C;
    v8 = v3[167];

    return BaseObjectGraph.inject<A>(_:)(v3 + 78, v5, v5);
  }
}

uint64_t sub_1000DE51C()
{
  v2 = *v1;
  v3 = *(*v1 + 1656);
  v4 = *v1;
  *(*v1 + 1664) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000F87DC;
  }

  else
  {
    v6 = sub_1000DE648;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000DE648()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1432);
  v4 = *(v0 + 1328);
  sub_100026F50((v0 + 624), *(v0 + 648));
  v5 = dispatch thunk of QueryRequest.statement.getter();
  sub_10007ACB8(v5, v6, v0 + 192);
  if (v1)
  {
    sub_100042AFC(v0 + 104);

LABEL_24:
    sub_100026FDC((v0 + 624));
    v46 = *(v0 + 1608);
    v47 = *(v0 + 1600);
    v48 = *(v0 + 1592);
    v49 = *(v0 + 1584);
    v50 = *(v0 + 1560);
    v51 = *(v0 + 1552);
    v52 = *(v0 + 1544);
    v53 = *(v0 + 1536);
    v54 = *(v0 + 1512);
    v62 = *(v0 + 1488);
    v63 = *(v0 + 1472);
    v64 = *(v0 + 1464);
    v65 = *(v0 + 1456);
    v66 = *(v0 + 1448);
    v68 = *(v0 + 1424);
    v70 = *(v0 + 1400);
    v73 = *(v0 + 1368);
    sub_1000F7B88("makeContext", 11, 2);

    v55 = *(v0 + 8);

    return v55();
  }

  sub_10001DAD8(v0 + 192, v0 + 960);
  v7 = sub_10002A1C8(v0 + 960);
  v8 = sub_10002A1D0(v0 + 960);
  *(v0 + 1296) = v7;
  *(v0 + 1288) = v8;
  v9 = sub_10002A30C((v0 + 1296), (v0 + 1288));
  sub_100078558((v0 + 960));
  if (v9 != 1)
  {
    goto LABEL_14;
  }

  sub_10001DAD8(v0 + 192, v0 + 936);
  v10 = sub_10002A1C8(v0 + 936);
  v11 = sub_10002A1D0(v0 + 936);
  *(v0 + 1304) = v10;
  *(v0 + 1280) = v11;
  if (!sub_10002A30C((v0 + 1304), (v0 + 1280)))
  {
    sub_100078558((v0 + 936));
LABEL_14:
    v28 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError);
    swift_allocError();
    v30 = v29;
    sub_10001DAD8(v0 + 192, v0 + 984);
    v31 = sub_10002A1C8(v0 + 984);
    v32 = sub_10002A1D0(v0 + 984);
    *(v0 + 1264) = v31;
    *(v0 + 1256) = v32;
    v33 = sub_10002A30C((v0 + 1264), (v0 + 1256));
    if (!v33)
    {
      sub_100078558((v0 + 984));
LABEL_23:
      *v30 = _swiftEmptyArrayStorage;
      (*(*(v28 - 8) + 104))(v30, enum case for DaemonError.multipleSchemas(_:), v28);
      swift_willThrow();
      sub_100042AFC(v0 + 104);
      sub_10002AAE4((v0 + 192));
      goto LABEL_24;
    }

    v34 = v33;
    v67 = v30;
    v69 = v28;
    result = sub_10007E9EC(0, v33 & ~(v33 >> 63), 0);
    if (v34 < 0)
    {
      goto LABEL_32;
    }

    v35 = 0;
    v72 = (v0 + 1216);
    while (1)
    {
      v36 = sub_10002A418((v0 + 984), v35);
      std::string::basic_string((v0 + 1104), v36);
      std::string::basic_string((v0 + 1128), (v0 + 1104));
      v37 = v34;
      sub_10002EFB0((v0 + 1128));
      sub_10002EFC4(v0 + 1128);
      v38 = static String._fromUTF8Repairing(_:)();
      v40 = v39;
      std::string::~string((v0 + 1104));
      std::string::~string((v0 + 1128));
      v42 = _swiftEmptyArrayStorage[2];
      v41 = _swiftEmptyArrayStorage[3];
      if (v42 >= v41 >> 1)
      {
        sub_10007E9EC((v41 > 1), v42 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v42 + 1;
      v43 = &_swiftEmptyArrayStorage[2 * v42];
      v43[4] = v38;
      v43[5] = v40;
      v44 = sub_10002A1C8(v0 + 984);
      v45 = sub_10002A1D0(v0 + 984);
      *v72 = v44;
      *(v0 + 1248) = v45;
      result = sub_10002A30C(v72, (v0 + 1248));
      if (v35 >= result)
      {
        break;
      }

      ++v35;
      v34 = v37;
      if (v37 == v35)
      {
        sub_100078558((v0 + 984));
        v28 = v69;
        v30 = v67;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v12 = sub_10002A418((v0 + 936), 0);
  std::string::basic_string((v0 + 1056), v12);
  sub_100078558((v0 + 936));
  sub_10001DE24(v0 + 192, (v0 + 1008));
  v13 = sub_10002A1C8(v0 + 1008);
  v14 = sub_10002A1D0(v0 + 1008);
  *(v0 + 1272) = v13;
  *(v0 + 1312) = v14;
  v15 = sub_10002A2EC((v0 + 1272), (v0 + 1312));
  if (v15)
  {
    v16 = v15;
    result = sub_10007E9EC(0, v15 & ~(v15 >> 63), 0);
    if (v16 < 0)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v18 = 0;
    v71 = v16;
    do
    {
      v19 = sub_10002C030((v0 + 1008), v18);
      sub_10002A33C((v0 + 544), v19);
      std::string::basic_string((v0 + 1080), (v0 + 568));
      sub_10002EFB0((v0 + 1080));
      sub_10002EFC4(v0 + 1080);
      v20 = static String._fromUTF8Repairing(_:)();
      v22 = v21;
      sub_10001B428(v0 + 544);
      std::string::~string((v0 + 1080));
      v24 = _swiftEmptyArrayStorage[2];
      v23 = _swiftEmptyArrayStorage[3];
      if (v24 >= v23 >> 1)
      {
        sub_10007E9EC((v23 > 1), v24 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v24 + 1;
      v25 = &_swiftEmptyArrayStorage[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
      v26 = sub_10002A1C8(v0 + 1008);
      v27 = sub_10002A1D0(v0 + 1008);
      *(v0 + 1232) = v26;
      *(v0 + 1224) = v27;
      result = sub_10002A2EC((v0 + 1232), (v0 + 1224));
      if (v18 >= result)
      {
        goto LABEL_31;
      }
    }

    while (v71 != ++v18);
  }

  sub_10002A4B8((v0 + 1008));
  *(v0 + 1672) = _swiftEmptyArrayStorage;
  std::string::basic_string((v0 + 1152), (v0 + 1056));
  sub_10002EFB0((v0 + 1152));
  sub_10002EFC4(v0 + 1152);
  v56 = static String._fromUTF8Repairing(_:)();
  v58 = v57;
  *(v0 + 1680) = v57;
  std::string::~string((v0 + 1152));
  v59 = swift_task_alloc();
  *(v0 + 1688) = v59;
  *v59 = v0;
  v59[1] = sub_1000DEDC8;
  v60 = *(v0 + 1344);
  v61 = *(v0 + 1336);

  return sub_1000F14AC(_swiftEmptyArrayStorage, v56, v58, v0 + 104, v61);
}

uint64_t sub_1000DEDC8()
{
  v2 = *v1;
  v3 = *(*v1 + 1688);
  v4 = *v1;
  *(*v1 + 1696) = v0;

  v5 = v2[210];
  v6 = v2[209];
  v7 = v2[168];

  if (v0)
  {
    v8 = sub_1000F885C;
  }

  else
  {
    v8 = sub_1000DEF2C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000DEF2C()
{
  v1 = *(v0 + 1696);
  sub_10008366C(*(v0 + 192), *(v0 + 1552));
  if (!v1)
  {
    v2 = *(v0 + 1632);
    v3 = *(v0 + 1552);
    v4 = *(v0 + 1544);
    v5 = *(v0 + 1528);
    v6 = *(v0 + 1520);
    v7 = *(v0 + 1432);
    v8 = *(v0 + 1328);
    dispatch thunk of QueryRequest.statementType.getter();
    LOBYTE(v8) = static StatementType.== infix(_:_:)();
    v9 = *(v5 + 8);
    *(v0 + 1704) = v9;
    *(v0 + 1712) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v4, v6);
    v51 = v9;
    if (v8)
    {
      std::string::basic_string((v0 + 1176), (v0 + 1056));
      sub_10002EFB0((v0 + 1176));
      sub_10002EFC4(v0 + 1176);
      v28 = static String._fromUTF8Repairing(_:)();
      v53 = *(v0 + 1632);
      v29 = *(v0 + 1544);
      v30 = *(v0 + 1536);
      v31 = *(v0 + 1528);
      v32 = *(v0 + 1520);
      v33 = *(v0 + 1512);
      v50 = *(v0 + 1432);
      v34 = *(v0 + 1344);
      v35 = *(v0 + 1328);
      *(v0 + 1720) = v36;
      *(v0 + 1728) = v28;
      std::string::~string((v0 + 1176));
      *(v0 + 1736) = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
      AccessCredential.storageCategory.getter();
      dispatch thunk of QueryRequest.statementType.getter();
      (*(v31 + 104))(v29, enum case for StatementType.select(_:), v32);
      *(v0 + 1209) = static StatementType.== infix(_:_:)() & 1;
      v51(v29, v32);
      v51(v30, v32);
      v37 = sub_100026F50((v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager), *(v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager + 24));
      v38 = v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id;
      *(v0 + 1744) = *(v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
      *(v0 + 1752) = *(v38 + 8);
      v39 = *v37;
      *(v0 + 1760) = *v37;

      return _swift_task_switch(sub_1000DF3EC, v39, 0);
    }

    v10 = *(v0 + 1552);
    v11 = *(v0 + 1528);
    v12 = *(v0 + 1520);
    v46 = *(v0 + 1432);
    v48 = *(v0 + 1632);
    v44 = *(v0 + 1328);
    v13 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError);
    swift_allocError();
    v15 = v14;
    v16 = *(sub_100026F94(&qword_10016D208, &qword_1001332B0) + 48);
    (*(v11 + 16))(v15, v10, v12);
    dispatch thunk of QueryRequest.statementType.getter();
    (*(*(v13 - 8) + 104))(v15, enum case for DaemonError.statementTypeMismatch(_:), v13);
    swift_willThrow();
    v51(v10, v12);
  }

  std::string::~string((v0 + 1056));
  sub_100042AFC(v0 + 104);
  sub_10002AAE4((v0 + 192));
  sub_100026FDC((v0 + 624));
  v17 = *(v0 + 1608);
  v18 = *(v0 + 1600);
  v19 = *(v0 + 1592);
  v20 = *(v0 + 1584);
  v21 = *(v0 + 1560);
  v22 = *(v0 + 1552);
  v23 = *(v0 + 1544);
  v24 = *(v0 + 1536);
  v25 = *(v0 + 1512);
  v40 = *(v0 + 1488);
  v41 = *(v0 + 1472);
  v42 = *(v0 + 1464);
  v43 = *(v0 + 1456);
  v45 = *(v0 + 1448);
  v47 = *(v0 + 1424);
  v49 = *(v0 + 1400);
  v52 = *(v0 + 1368);
  sub_1000F7B88("makeContext", 11, 2);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1000DF3EC()
{
  v1 = *(v0 + 1209);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1488);
  v5 = *(v0 + 1480);
  (*(*(v0 + 1504) + 16))(&v4[v5[5]], *(v0 + 1512), *(v0 + 1496));
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  *v4 = v2;
  *(v4 + 1) = v3;
  v8 = &v4[v5[6]];
  *v8 = v7;
  *(v8 + 1) = v6;
  v4[v5[7]] = v1;
  v4[v5[8]] = 0;

  v9 = swift_task_alloc();
  *(v0 + 1768) = v9;
  *v9 = v0;
  v9[1] = sub_1000DF500;
  v10 = *(v0 + 1760);
  v11 = *(v0 + 1752);
  v12 = *(v0 + 1744);
  v13 = *(v0 + 1488);

  return sub_100050F58(v13, v12, v11);
}

uint64_t sub_1000DF500(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1768);
  v8 = *v2;
  v3[222] = a1;
  v3[223] = v1;

  if (v1)
  {
    v5 = v3[220];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v6 = sub_1000DCC68;
  }

  else
  {
    v5 = v3[168];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v6 = sub_1000DF658;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000DF658()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1328);
  (*(*(v0 + 1504) + 8))(*(v0 + 1512), *(v0 + 1496));
  dispatch thunk of QueryRequest.query.getter();
  v4 = *(v0 + 896);
  sub_100026F50((v0 + 864), *(v0 + 888));
  LOBYTE(v3) = Expressible.isExpandable.getter();
  sub_100026FDC((v0 + 864));
  if (v3)
  {
    v5 = *(v0 + 1776);
    v6 = qword_10016A548;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 1632);
    v8 = *(v0 + 1584);
    v9 = *(v0 + 1432);
    v10 = *(v0 + 1424);
    v11 = *(v0 + 1416);
    v12 = *(v0 + 1408);
    v13 = *(v0 + 1328);
    v14 = sub_10002FD14(v12, qword_1001736D0);
    (*(v11 + 16))(v10, v14, v12);
    static OSSignpostID.exclusive.getter();
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignposter.logHandle.getter();
    LOBYTE(v12) = static os_signpost_type_t.begin.getter();
    v17 = OSSignpostID.rawValue.getter();
    v105 = v15;
    v106 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v12, v17, "expandQuery", "", v15, 2u);
    dispatch thunk of QueryRequest.query.getter();
    v18 = *(v0 + 776);
    sub_100026F50((v0 + 744), *(v0 + 768));
    LOBYTE(v10) = Expressible.isExpandable.getter();
    sub_100026FDC((v0 + 744));
    if (v10)
    {
      v101 = v5;
      v19 = *(v0 + 1736);
      v20 = *(v0 + 1632);
      v21 = *(v0 + 1432);
      v22 = *(v0 + 1400);
      v23 = *(v0 + 1384);
      v24 = *(v0 + 1376);
      v25 = *(v0 + 1344);
      v26 = *(v0 + 1328);
      dispatch thunk of QueryRequest.query.getter();
      v94 = *(v0 + 696);
      sub_100026F50((v0 + 664), *(v0 + 688));
      (*(v23 + 16))(v22, v25 + v19, v24);
      sub_10002A9C4(v0 + 16, (v0 + 192));
      v27 = *(v0 + 1776);
      v85 = *(v0 + 1736);
      v88 = *(v0 + 1784);
      v28 = *(v0 + 1400);
      v29 = *(v0 + 1384);
      v30 = *(v0 + 1376);
      v31 = *(v0 + 1344);
      v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v33 = (*(v0 + 1392) + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      (*(v29 + 32))(v34 + v32, v28, v30);
      *(v34 + v33) = v101;
      sub_10002ABE8(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8), (v0 + 16));
      sub_10002AAE4((v0 + 16));

      Expressible.expanded(using:in:rawStatementHandler:)();
      if (v88)
      {
        v35 = *(v0 + 1776);
        v36 = *(v0 + 1712);
        v37 = *(v0 + 1704);
        v102 = *(v0 + 1624);
        v38 = *(v0 + 1584);
        v39 = *(v0 + 1568);
        v40 = *(v0 + 1552);
        v41 = *(v0 + 1520);
        v95 = *(v0 + 1424);
        v98 = *(v0 + 1616);
        v42 = *(v0 + 1416);
        v91 = *(v0 + 1408);

        sub_100026FDC((v0 + 664));

        v37(v40, v41);
        std::string::~string((v0 + 1056));
        sub_100042AFC(v0 + 104);
        v98(v38, v39);
        (*(v42 + 8))(v95, v91);
LABEL_12:
        sub_10002AAE4((v0 + 192));
        sub_100026FDC((v0 + 624));
        v67 = *(v0 + 1608);
        v68 = *(v0 + 1600);
        v69 = *(v0 + 1592);
        v70 = *(v0 + 1584);
        v71 = *(v0 + 1560);
        v72 = *(v0 + 1552);
        v73 = *(v0 + 1544);
        v74 = *(v0 + 1536);
        v75 = *(v0 + 1512);
        v84 = *(v0 + 1488);
        v87 = *(v0 + 1472);
        v90 = *(v0 + 1464);
        v93 = *(v0 + 1456);
        v97 = *(v0 + 1448);
        v100 = *(v0 + 1424);
        v104 = *(v0 + 1400);
        v107 = *(v0 + 1368);
        sub_1000F7B88("makeContext", 11, 2);

        v76 = *(v0 + 8);

        return v76();
      }

      v43 = *(v0 + 1632);
      v44 = *(v0 + 1456);
      v45 = *(v0 + 1432);
      v46 = *(v0 + 1328);

      sub_100026FDC((v0 + 664));
      dispatch thunk of QueryRequest.withQuery(_:)();
      sub_100026FDC((v0 + 704));
      v103 = 0;
    }

    else
    {
      (*(*(v0 + 1440) + 16))(*(v0 + 1456), *(v0 + 1328), *(v0 + 1432));
      v103 = *(v0 + 1784);
    }

    v96 = *(v0 + 1624);
    v99 = *(v0 + 1632);
    v47 = *(v0 + 1584);
    v89 = *(v0 + 1568);
    v92 = *(v0 + 1616);
    v48 = *(v0 + 1472);
    v49 = *(v0 + 1464);
    v50 = *(v0 + 1456);
    v51 = *(v0 + 1440);
    v52 = *(v0 + 1432);
    v86 = *(v0 + 1424);
    v53 = *(v0 + 1416);
    v82 = *(v0 + 1776);
    v83 = *(v0 + 1408);
    v54 = static os_signpost_type_t.end.getter();
    v55 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v106, v54, v55, "expandQuery", "", v105, 2u);

    v56 = *(v51 + 32);
    v56(v49, v50, v52);

    v56(v48, v49, v52);
    v92(v47, v89);
    (*(v53 + 8))(v86, v83);
    sub_100026F50((v0 + 624), *(v0 + 648));
    v57 = dispatch thunk of QueryRequest.statement.getter();
    sub_10007ACB8(v57, v58, v0 + 280);
    if (v103)
    {
      v59 = *(v0 + 1776);
      v60 = *(v0 + 1712);
      v61 = *(v0 + 1704);
      v62 = *(v0 + 1552);
      v63 = *(v0 + 1520);
      v64 = *(v0 + 1472);
      v65 = *(v0 + 1440);
      v66 = *(v0 + 1432);

      (*(v65 + 8))(v64, v66);
      v61(v62, v63);
      std::string::~string((v0 + 1056));
      sub_100042AFC(v0 + 104);
      goto LABEL_12;
    }

    sub_10002ABE8(v0 + 456, (v0 + 280));
    sub_10002AAE4((v0 + 280));
  }

  else
  {
    (*(*(v0 + 1440) + 16))(*(v0 + 1472), *(v0 + 1328), *(v0 + 1432));
    sub_10002A9C4(v0 + 456, (v0 + 192));
  }

  v78 = sub_100026F94(&qword_10016D210, &unk_1001332B8);
  v79 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v80 = swift_task_alloc();
  *(v0 + 1792) = v80;
  *v80 = v0;
  v80[1] = sub_1000DFE60;
  v81 = *(v0 + 1336);

  return BaseObjectGraph.inject<A>(_:)(v0 + 824, v78, v78);
}

uint64_t sub_1000DFE60()
{
  v2 = *v1;
  v3 = *(*v1 + 1792);
  v4 = *v1;
  *(*v1 + 1800) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000E0178;
  }

  else
  {
    v6 = sub_1000DFF8C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000DFF8C()
{
  v1 = v0[217];
  v2 = v0[168];
  v3 = *sub_100026F50(v0 + 103, v0[106]);
  v4 = swift_task_alloc();
  v0[226] = v4;
  *v4 = v0;
  v4[1] = sub_1000E004C;
  v5 = v0[222];

  return sub_100074494((v0 + 57), v2 + v1, (v0 + 13), v5);
}

uint64_t sub_1000E004C()
{
  v2 = *v1;
  v3 = *(*v1 + 1808);
  v4 = *v1;
  *(*v1 + 1816) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000E073C;
  }

  else
  {
    v6 = sub_1000E0460;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E0178()
{
  data = v0[75].__r_.__value_.__l.__data_;
  v0[76].__r_.__value_.__r.__words[0] = data;
  v0[51].__r_.__value_.__r.__words[2] = data;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v4 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v4;
    *v4 = v0;
    v4[1] = sub_1000E0A2C;
    v5 = v0[55].__r_.__value_.__r.__words[2];

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    v6 = v0[76].__r_.__value_.__l.__data_;
    v7 = v0[74].__r_.__value_.__l.__data_;
    size = v0[71].__r_.__value_.__l.__size_;
    v9 = v0[71].__r_.__value_.__l.__data_;
    v10 = v0[64].__r_.__value_.__r.__words[2];
    v11 = v0[63].__r_.__value_.__l.__size_;
    v12 = v0[61].__r_.__value_.__l.__size_;
    v13 = v0[60].__r_.__value_.__l.__data_;
    v14 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v13 + 1))(v12, v14);
    v9(v10, v11);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(&v0[26]);
    v34 = v0[76].__r_.__value_.__l.__data_;
    v15 = v0[67].__r_.__value_.__l.__data_;
    v16 = v0[66].__r_.__value_.__r.__words[2];
    v17 = v0[66].__r_.__value_.__l.__size_;
    v18 = v0[66].__r_.__value_.__l.__data_;
    v19 = v0[65].__r_.__value_.__l.__data_;
    v20 = v0[64].__r_.__value_.__r.__words[2];
    v21 = v0[64].__r_.__value_.__l.__size_;
    v22 = v0[64].__r_.__value_.__l.__data_;
    v23 = v0[63].__r_.__value_.__l.__data_;
    v26 = v0[62].__r_.__value_.__l.__data_;
    v27 = v0[61].__r_.__value_.__l.__size_;
    v28 = v0[61].__r_.__value_.__l.__data_;
    v29 = v0[60].__r_.__value_.__r.__words[2];
    v30 = v0[60].__r_.__value_.__l.__size_;
    v31 = v0[59].__r_.__value_.__l.__size_;
    v32 = v0[58].__r_.__value_.__l.__size_;
    v33 = v0[57].__r_.__value_.__l.__data_;
    sub_1000F7B88("makeContext", 11, 2);

    v24 = v0->__r_.__value_.__l.__size_;

    return v24();
  }
}

uint64_t sub_1000E0460()
{
  (*(*(v0 + 1440) + 16))(*(v0 + 1448), *(v0 + 1472), *(v0 + 1432));
  sub_10002A9C4(v0 + 368, (v0 + 456));
  std::string::basic_string((v0 + 1032), (v0 + 1056));
  v17 = *(v0 + 1776);
  v15 = *(v0 + 1712);
  v1 = *(v0 + 1704);
  v18 = *(v0 + 1608);
  v19 = *(v0 + 1600);
  v20 = *(v0 + 1592);
  v21 = *(v0 + 1584);
  v2 = *(v0 + 1552);
  v22 = *(v0 + 1560);
  v23 = *(v0 + 1544);
  v3 = *(v0 + 1520);
  v24 = *(v0 + 1536);
  v25 = *(v0 + 1512);
  v4 = *(v0 + 1472);
  v26 = *(v0 + 1488);
  v27 = *(v0 + 1464);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1440);
  v7 = *(v0 + 1432);
  v28 = *(v0 + 1456);
  v29 = *(v0 + 1424);
  v30 = *(v0 + 1400);
  v31 = *(v0 + 1368);
  v8 = *(v0 + 1320);
  sub_10002EFB0((v0 + 1032));
  sub_10002EFC4(v0 + 1032);
  v9 = static String._fromUTF8Repairing(_:)();
  v16 = v10;
  sub_10002AAE4((v0 + 456));
  (*(v6 + 8))(v4, v7);
  v1(v2, v3);
  std::string::~string((v0 + 1056));
  sub_100042AFC(v0 + 104);
  std::string::~string((v0 + 1032));
  sub_10002AAE4((v0 + 192));
  (*(v6 + 32))(v8, v5, v7);
  v11 = sub_100026F94(&qword_10016D228, &qword_1001332F8);
  sub_10002ABE8(v8 + v11[9], (v0 + 368));
  sub_10002AAE4((v0 + 368));
  v12 = (v8 + v11[10]);
  *v12 = v9;
  v12[1] = v16;
  *(v8 + v11[11]) = v17;
  sub_100026FDC((v0 + 824));
  sub_100026FDC((v0 + 624));
  sub_1000F7B88("makeContext", 11, 2);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000E073C()
{
  sub_100026FDC(&v0[34].__r_.__value_.__l.__size_);
  v1 = v0[75].__r_.__value_.__r.__words[2];
  v0[76].__r_.__value_.__r.__words[0] = v1;
  v0[51].__r_.__value_.__r.__words[2] = v1;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v4 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v4;
    *v4 = v0;
    v4[1] = sub_1000E0A2C;
    v5 = v0[55].__r_.__value_.__r.__words[2];

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    data = v0[76].__r_.__value_.__l.__data_;
    v7 = v0[74].__r_.__value_.__l.__data_;
    size = v0[71].__r_.__value_.__l.__size_;
    v9 = v0[71].__r_.__value_.__l.__data_;
    v10 = v0[64].__r_.__value_.__r.__words[2];
    v11 = v0[63].__r_.__value_.__l.__size_;
    v12 = v0[61].__r_.__value_.__l.__size_;
    v13 = v0[60].__r_.__value_.__l.__data_;
    v14 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v13 + 1))(v12, v14);
    v9(v10, v11);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(&v0[26]);
    v34 = v0[76].__r_.__value_.__l.__data_;
    v15 = v0[67].__r_.__value_.__l.__data_;
    v16 = v0[66].__r_.__value_.__r.__words[2];
    v17 = v0[66].__r_.__value_.__l.__size_;
    v18 = v0[66].__r_.__value_.__l.__data_;
    v19 = v0[65].__r_.__value_.__l.__data_;
    v20 = v0[64].__r_.__value_.__r.__words[2];
    v21 = v0[64].__r_.__value_.__l.__size_;
    v22 = v0[64].__r_.__value_.__l.__data_;
    v23 = v0[63].__r_.__value_.__l.__data_;
    v26 = v0[62].__r_.__value_.__l.__data_;
    v27 = v0[61].__r_.__value_.__l.__size_;
    v28 = v0[61].__r_.__value_.__l.__data_;
    v29 = v0[60].__r_.__value_.__r.__words[2];
    v30 = v0[60].__r_.__value_.__l.__size_;
    v31 = v0[59].__r_.__value_.__l.__size_;
    v32 = v0[58].__r_.__value_.__l.__size_;
    v33 = v0[57].__r_.__value_.__l.__data_;
    sub_1000F7B88("makeContext", 11, 2);

    v24 = v0->__r_.__value_.__l.__size_;

    return v24();
  }
}

uint64_t sub_1000E0A2C()
{
  v2 = *v1;
  v3 = *(*v1 + 1832);
  v4 = *v1;
  *(*v1 + 1840) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000F87F8;
  }

  else
  {
    v6 = sub_1000E0B58;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E0B58()
{
  v1 = v0[179];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[166];
  v6 = sub_100026F50(v0 + 98, v0[101]);
  sub_1000F820C(&qword_10016D238, &type metadata accessor for PluckRequest);
  dispatch thunk of RequestType.accessType.getter();
  LOBYTE(v1) = RequestAccessType.isRead.getter();
  (*(v3 + 8))(v2, v4);
  v7 = *v6;
  v8 = swift_task_alloc();
  v0[231] = v8;
  *v8 = v0;
  v8[1] = sub_1000DDAB8;
  if (v1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  return sub_100061DD0(v9);
}

uint64_t sub_1000E0C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[168] = v3;
  v4[167] = a3;
  v4[166] = a2;
  v4[165] = a1;
  v5 = type metadata accessor for RequestAccessType();
  v4[169] = v5;
  v6 = *(v5 - 8);
  v4[170] = v6;
  v7 = *(v6 + 64) + 15;
  v4[171] = swift_task_alloc();
  v8 = type metadata accessor for AccessCredential();
  v4[172] = v8;
  v9 = *(v8 - 8);
  v4[173] = v9;
  v4[174] = *(v9 + 64);
  v4[175] = swift_task_alloc();
  v10 = type metadata accessor for OSSignposter();
  v4[176] = v10;
  v11 = *(v10 - 8);
  v4[177] = v11;
  v12 = *(v11 + 64) + 15;
  v4[178] = swift_task_alloc();
  v13 = type metadata accessor for ScalarValueRequest();
  v4[179] = v13;
  v14 = *(v13 - 8);
  v4[180] = v14;
  v15 = *(v14 + 64) + 15;
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  v4[183] = swift_task_alloc();
  v4[184] = swift_task_alloc();
  v16 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v4[185] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v4[186] = swift_task_alloc();
  v18 = type metadata accessor for StorageCategory();
  v4[187] = v18;
  v19 = *(v18 - 8);
  v4[188] = v19;
  v20 = *(v19 + 64) + 15;
  v4[189] = swift_task_alloc();
  v21 = type metadata accessor for StatementType();
  v4[190] = v21;
  v22 = *(v21 - 8);
  v4[191] = v22;
  v23 = *(v22 + 64) + 15;
  v4[192] = swift_task_alloc();
  v4[193] = swift_task_alloc();
  v4[194] = swift_task_alloc();
  v24 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[195] = swift_task_alloc();
  v25 = type metadata accessor for OSSignpostID();
  v4[196] = v25;
  v26 = *(v25 - 8);
  v4[197] = v26;
  v27 = *(v26 + 64) + 15;
  v4[198] = swift_task_alloc();
  v4[199] = swift_task_alloc();
  v4[200] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1040, v3, 0);
}

uint64_t sub_1000E1040()
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v1 = v0[200];
  sub_10002FD14(v0[176], qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v0[200];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v6, "makeContext", "", v5, 2u);
  }

  v7 = v0[200];
  v8 = v0[199];
  v9 = v0[197];
  v10 = v0[196];

  (*(v9 + 16))(v8, v7, v10);
  v11 = type metadata accessor for OSSignpostIntervalState();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[201] = OSSignpostIntervalState.init(id:isOpen:)();
  v14 = *(v9 + 8);
  v0[202] = v14;
  v0[203] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v7, v10);
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  v15 = v0[195];
  v16 = v0[190];
  v17 = v0[179];
  v18 = v0[166];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v19 = *(type metadata accessor for LogMessage() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x800000010013D2D0;
  v22._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v0[116] = v16;
  sub_100042BAC(v0 + 113);
  v0[204] = sub_1000F820C(&qword_10016D248, &type metadata accessor for ScalarValueRequest);
  dispatch thunk of QueryRequest.statementType.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 113), &qword_10016AB10, &unk_100130B10);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v24 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v25 = swift_task_alloc();
  v0[205] = v25;
  *v25 = v0;
  v25[1] = sub_1000E1428;
  v26 = v0[167];

  return BaseObjectGraph.inject<A>(_:)(v0 + 13, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000E1428()
{
  v2 = *(*v1 + 1640);
  v3 = *v1;
  v3[206] = v0;

  if (v0)
  {
    v4 = v3[168];

    return _swift_task_switch(sub_1000E16F8, v4, 0);
  }

  else
  {
    v5 = sub_100026F94(&qword_10016D200, &qword_1001332A0);
    v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v7 = swift_task_alloc();
    v3[207] = v7;
    *v7 = v3;
    v7[1] = sub_1000E15CC;
    v8 = v3[167];

    return BaseObjectGraph.inject<A>(_:)(v3 + 78, v5, v5);
  }
}

uint64_t sub_1000E15CC()
{
  v2 = *v1;
  v3 = *(*v1 + 1656);
  v4 = *v1;
  *(*v1 + 1664) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000E1FF0;
  }

  else
  {
    v6 = sub_1000E1870;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E16F8()
{
  v20 = v0[206];
  v1 = v0[201];
  v2 = v0[200];
  v3 = v0[199];
  v4 = v0[198];
  v5 = v0[195];
  v6 = v0[194];
  v7 = v0[193];
  v8 = v0[192];
  v9 = v0[189];
  v12 = v0[186];
  v13 = v0[184];
  v14 = v0[183];
  v15 = v0[182];
  v16 = v0[181];
  v17 = v0[178];
  v18 = v0[175];
  v19 = v0[171];
  sub_1000F7B88("makeContext", 11, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000E1870()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1432);
  v4 = *(v0 + 1328);
  sub_100026F50((v0 + 624), *(v0 + 648));
  v5 = dispatch thunk of QueryRequest.statement.getter();
  sub_10007ACB8(v5, v6, v0 + 192);
  if (v1)
  {
    sub_100042AFC(v0 + 104);

LABEL_24:
    sub_100026FDC((v0 + 624));
    v46 = *(v0 + 1608);
    v47 = *(v0 + 1600);
    v48 = *(v0 + 1592);
    v49 = *(v0 + 1584);
    v50 = *(v0 + 1560);
    v51 = *(v0 + 1552);
    v52 = *(v0 + 1544);
    v53 = *(v0 + 1536);
    v54 = *(v0 + 1512);
    v62 = *(v0 + 1488);
    v63 = *(v0 + 1472);
    v64 = *(v0 + 1464);
    v65 = *(v0 + 1456);
    v66 = *(v0 + 1448);
    v68 = *(v0 + 1424);
    v70 = *(v0 + 1400);
    v73 = *(v0 + 1368);
    sub_1000F7B88("makeContext", 11, 2);

    v55 = *(v0 + 8);

    return v55();
  }

  sub_10001DAD8(v0 + 192, v0 + 960);
  v7 = sub_10002A1C8(v0 + 960);
  v8 = sub_10002A1D0(v0 + 960);
  *(v0 + 1296) = v7;
  *(v0 + 1288) = v8;
  v9 = sub_10002A30C((v0 + 1296), (v0 + 1288));
  sub_100078558((v0 + 960));
  if (v9 != 1)
  {
    goto LABEL_14;
  }

  sub_10001DAD8(v0 + 192, v0 + 936);
  v10 = sub_10002A1C8(v0 + 936);
  v11 = sub_10002A1D0(v0 + 936);
  *(v0 + 1304) = v10;
  *(v0 + 1280) = v11;
  if (!sub_10002A30C((v0 + 1304), (v0 + 1280)))
  {
    sub_100078558((v0 + 936));
LABEL_14:
    v28 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError);
    swift_allocError();
    v30 = v29;
    sub_10001DAD8(v0 + 192, v0 + 984);
    v31 = sub_10002A1C8(v0 + 984);
    v32 = sub_10002A1D0(v0 + 984);
    *(v0 + 1264) = v31;
    *(v0 + 1256) = v32;
    v33 = sub_10002A30C((v0 + 1264), (v0 + 1256));
    if (!v33)
    {
      sub_100078558((v0 + 984));
LABEL_23:
      *v30 = _swiftEmptyArrayStorage;
      (*(*(v28 - 8) + 104))(v30, enum case for DaemonError.multipleSchemas(_:), v28);
      swift_willThrow();
      sub_100042AFC(v0 + 104);
      sub_10002AAE4((v0 + 192));
      goto LABEL_24;
    }

    v34 = v33;
    v67 = v30;
    v69 = v28;
    result = sub_10007E9EC(0, v33 & ~(v33 >> 63), 0);
    if (v34 < 0)
    {
      goto LABEL_32;
    }

    v35 = 0;
    v72 = (v0 + 1216);
    while (1)
    {
      v36 = sub_10002A418((v0 + 984), v35);
      std::string::basic_string((v0 + 1104), v36);
      std::string::basic_string((v0 + 1128), (v0 + 1104));
      v37 = v34;
      sub_10002EFB0((v0 + 1128));
      sub_10002EFC4(v0 + 1128);
      v38 = static String._fromUTF8Repairing(_:)();
      v40 = v39;
      std::string::~string((v0 + 1104));
      std::string::~string((v0 + 1128));
      v42 = _swiftEmptyArrayStorage[2];
      v41 = _swiftEmptyArrayStorage[3];
      if (v42 >= v41 >> 1)
      {
        sub_10007E9EC((v41 > 1), v42 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v42 + 1;
      v43 = &_swiftEmptyArrayStorage[2 * v42];
      v43[4] = v38;
      v43[5] = v40;
      v44 = sub_10002A1C8(v0 + 984);
      v45 = sub_10002A1D0(v0 + 984);
      *v72 = v44;
      *(v0 + 1248) = v45;
      result = sub_10002A30C(v72, (v0 + 1248));
      if (v35 >= result)
      {
        break;
      }

      ++v35;
      v34 = v37;
      if (v37 == v35)
      {
        sub_100078558((v0 + 984));
        v28 = v69;
        v30 = v67;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v12 = sub_10002A418((v0 + 936), 0);
  std::string::basic_string((v0 + 1056), v12);
  sub_100078558((v0 + 936));
  sub_10001DE24(v0 + 192, (v0 + 1008));
  v13 = sub_10002A1C8(v0 + 1008);
  v14 = sub_10002A1D0(v0 + 1008);
  *(v0 + 1272) = v13;
  *(v0 + 1312) = v14;
  v15 = sub_10002A2EC((v0 + 1272), (v0 + 1312));
  if (v15)
  {
    v16 = v15;
    result = sub_10007E9EC(0, v15 & ~(v15 >> 63), 0);
    if (v16 < 0)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v18 = 0;
    v71 = v16;
    do
    {
      v19 = sub_10002C030((v0 + 1008), v18);
      sub_10002A33C((v0 + 544), v19);
      std::string::basic_string((v0 + 1080), (v0 + 568));
      sub_10002EFB0((v0 + 1080));
      sub_10002EFC4(v0 + 1080);
      v20 = static String._fromUTF8Repairing(_:)();
      v22 = v21;
      sub_10001B428(v0 + 544);
      std::string::~string((v0 + 1080));
      v24 = _swiftEmptyArrayStorage[2];
      v23 = _swiftEmptyArrayStorage[3];
      if (v24 >= v23 >> 1)
      {
        sub_10007E9EC((v23 > 1), v24 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v24 + 1;
      v25 = &_swiftEmptyArrayStorage[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
      v26 = sub_10002A1C8(v0 + 1008);
      v27 = sub_10002A1D0(v0 + 1008);
      *(v0 + 1232) = v26;
      *(v0 + 1224) = v27;
      result = sub_10002A2EC((v0 + 1232), (v0 + 1224));
      if (v18 >= result)
      {
        goto LABEL_31;
      }
    }

    while (v71 != ++v18);
  }

  sub_10002A4B8((v0 + 1008));
  *(v0 + 1672) = _swiftEmptyArrayStorage;
  std::string::basic_string((v0 + 1152), (v0 + 1056));
  sub_10002EFB0((v0 + 1152));
  sub_10002EFC4(v0 + 1152);
  v56 = static String._fromUTF8Repairing(_:)();
  v58 = v57;
  *(v0 + 1680) = v57;
  std::string::~string((v0 + 1152));
  v59 = swift_task_alloc();
  *(v0 + 1688) = v59;
  *v59 = v0;
  v59[1] = sub_1000E2170;
  v60 = *(v0 + 1344);
  v61 = *(v0 + 1336);

  return sub_1000F14AC(_swiftEmptyArrayStorage, v56, v58, v0 + 104, v61);
}

uint64_t sub_1000E1FF0()
{
  sub_100042AFC((v0 + 13));
  v20 = v0[208];
  v1 = v0[201];
  v2 = v0[200];
  v3 = v0[199];
  v4 = v0[198];
  v5 = v0[195];
  v6 = v0[194];
  v7 = v0[193];
  v8 = v0[192];
  v9 = v0[189];
  v12 = v0[186];
  v13 = v0[184];
  v14 = v0[183];
  v15 = v0[182];
  v16 = v0[181];
  v17 = v0[178];
  v18 = v0[175];
  v19 = v0[171];
  sub_1000F7B88("makeContext", 11, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000E2170()
{
  v2 = *v1;
  v3 = *(*v1 + 1688);
  v4 = *v1;
  *(*v1 + 1696) = v0;

  v5 = v2[210];
  v6 = v2[209];
  v7 = v2[168];

  if (v0)
  {
    v8 = sub_1000E2794;
  }

  else
  {
    v8 = sub_1000E22D4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000E22D4()
{
  v1 = *(v0 + 1696);
  sub_10008366C(*(v0 + 192), *(v0 + 1552));
  if (!v1)
  {
    v2 = *(v0 + 1632);
    v3 = *(v0 + 1552);
    v4 = *(v0 + 1544);
    v5 = *(v0 + 1528);
    v6 = *(v0 + 1520);
    v7 = *(v0 + 1432);
    v8 = *(v0 + 1328);
    dispatch thunk of QueryRequest.statementType.getter();
    LOBYTE(v8) = static StatementType.== infix(_:_:)();
    v9 = *(v5 + 8);
    *(v0 + 1704) = v9;
    *(v0 + 1712) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v4, v6);
    v51 = v9;
    if (v8)
    {
      std::string::basic_string((v0 + 1176), (v0 + 1056));
      sub_10002EFB0((v0 + 1176));
      sub_10002EFC4(v0 + 1176);
      v28 = static String._fromUTF8Repairing(_:)();
      v53 = *(v0 + 1632);
      v29 = *(v0 + 1544);
      v30 = *(v0 + 1536);
      v31 = *(v0 + 1528);
      v32 = *(v0 + 1520);
      v33 = *(v0 + 1512);
      v50 = *(v0 + 1432);
      v34 = *(v0 + 1344);
      v35 = *(v0 + 1328);
      *(v0 + 1720) = v36;
      *(v0 + 1728) = v28;
      std::string::~string((v0 + 1176));
      *(v0 + 1736) = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
      AccessCredential.storageCategory.getter();
      dispatch thunk of QueryRequest.statementType.getter();
      (*(v31 + 104))(v29, enum case for StatementType.select(_:), v32);
      *(v0 + 1209) = static StatementType.== infix(_:_:)() & 1;
      v51(v29, v32);
      v51(v30, v32);
      v37 = sub_100026F50((v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager), *(v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager + 24));
      v38 = v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id;
      *(v0 + 1744) = *(v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
      *(v0 + 1752) = *(v38 + 8);
      v39 = *v37;
      *(v0 + 1760) = *v37;

      return _swift_task_switch(sub_1000E292C, v39, 0);
    }

    v10 = *(v0 + 1552);
    v11 = *(v0 + 1528);
    v12 = *(v0 + 1520);
    v46 = *(v0 + 1432);
    v48 = *(v0 + 1632);
    v44 = *(v0 + 1328);
    v13 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError);
    swift_allocError();
    v15 = v14;
    v16 = *(sub_100026F94(&qword_10016D208, &qword_1001332B0) + 48);
    (*(v11 + 16))(v15, v10, v12);
    dispatch thunk of QueryRequest.statementType.getter();
    (*(*(v13 - 8) + 104))(v15, enum case for DaemonError.statementTypeMismatch(_:), v13);
    swift_willThrow();
    v51(v10, v12);
  }

  std::string::~string((v0 + 1056));
  sub_100042AFC(v0 + 104);
  sub_10002AAE4((v0 + 192));
  sub_100026FDC((v0 + 624));
  v17 = *(v0 + 1608);
  v18 = *(v0 + 1600);
  v19 = *(v0 + 1592);
  v20 = *(v0 + 1584);
  v21 = *(v0 + 1560);
  v22 = *(v0 + 1552);
  v23 = *(v0 + 1544);
  v24 = *(v0 + 1536);
  v25 = *(v0 + 1512);
  v40 = *(v0 + 1488);
  v41 = *(v0 + 1472);
  v42 = *(v0 + 1464);
  v43 = *(v0 + 1456);
  v45 = *(v0 + 1448);
  v47 = *(v0 + 1424);
  v49 = *(v0 + 1400);
  v52 = *(v0 + 1368);
  sub_1000F7B88("makeContext", 11, 2);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1000E2794()
{
  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(&v0[26]);
  v20 = v0[70].__r_.__value_.__r.__words[2];
  data = v0[67].__r_.__value_.__l.__data_;
  v2 = v0[66].__r_.__value_.__r.__words[2];
  size = v0[66].__r_.__value_.__l.__size_;
  v4 = v0[66].__r_.__value_.__l.__data_;
  v5 = v0[65].__r_.__value_.__l.__data_;
  v6 = v0[64].__r_.__value_.__r.__words[2];
  v7 = v0[64].__r_.__value_.__l.__size_;
  v8 = v0[64].__r_.__value_.__l.__data_;
  v9 = v0[63].__r_.__value_.__l.__data_;
  v12 = v0[62].__r_.__value_.__l.__data_;
  v13 = v0[61].__r_.__value_.__l.__size_;
  v14 = v0[61].__r_.__value_.__l.__data_;
  v15 = v0[60].__r_.__value_.__r.__words[2];
  v16 = v0[60].__r_.__value_.__l.__size_;
  v17 = v0[59].__r_.__value_.__l.__size_;
  v18 = v0[58].__r_.__value_.__l.__size_;
  v19 = v0[57].__r_.__value_.__l.__data_;
  sub_1000F7B88("makeContext", 11, 2);

  v10 = v0->__r_.__value_.__l.__size_;

  return v10();
}

uint64_t sub_1000E292C()
{
  v1 = *(v0 + 1209);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1488);
  v5 = *(v0 + 1480);
  (*(*(v0 + 1504) + 16))(&v4[v5[5]], *(v0 + 1512), *(v0 + 1496));
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  *v4 = v2;
  *(v4 + 1) = v3;
  v8 = &v4[v5[6]];
  *v8 = v7;
  *(v8 + 1) = v6;
  v4[v5[7]] = v1;
  v4[v5[8]] = 0;

  v9 = swift_task_alloc();
  *(v0 + 1768) = v9;
  *v9 = v0;
  v9[1] = sub_1000E2A40;
  v10 = *(v0 + 1760);
  v11 = *(v0 + 1752);
  v12 = *(v0 + 1744);
  v13 = *(v0 + 1488);

  return sub_100050F58(v13, v12, v11);
}

uint64_t sub_1000E2A40(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1768);
  v8 = *v2;
  v3[222] = a1;
  v3[223] = v1;

  if (v1)
  {
    v5 = v3[220];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v6 = sub_1000E33A0;
  }

  else
  {
    v5 = v3[168];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v6 = sub_1000E2B98;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E2B98()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1328);
  (*(*(v0 + 1504) + 8))(*(v0 + 1512), *(v0 + 1496));
  dispatch thunk of QueryRequest.query.getter();
  v4 = *(v0 + 896);
  sub_100026F50((v0 + 864), *(v0 + 888));
  LOBYTE(v3) = Expressible.isExpandable.getter();
  sub_100026FDC((v0 + 864));
  if (v3)
  {
    v5 = *(v0 + 1776);
    v6 = qword_10016A548;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 1632);
    v8 = *(v0 + 1584);
    v9 = *(v0 + 1432);
    v10 = *(v0 + 1424);
    v11 = *(v0 + 1416);
    v12 = *(v0 + 1408);
    v13 = *(v0 + 1328);
    v14 = sub_10002FD14(v12, qword_1001736D0);
    (*(v11 + 16))(v10, v14, v12);
    static OSSignpostID.exclusive.getter();
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignposter.logHandle.getter();
    LOBYTE(v12) = static os_signpost_type_t.begin.getter();
    v17 = OSSignpostID.rawValue.getter();
    v105 = v15;
    v106 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v12, v17, "expandQuery", "", v15, 2u);
    dispatch thunk of QueryRequest.query.getter();
    v18 = *(v0 + 776);
    sub_100026F50((v0 + 744), *(v0 + 768));
    LOBYTE(v10) = Expressible.isExpandable.getter();
    sub_100026FDC((v0 + 744));
    if (v10)
    {
      v101 = v5;
      v19 = *(v0 + 1736);
      v20 = *(v0 + 1632);
      v21 = *(v0 + 1432);
      v22 = *(v0 + 1400);
      v23 = *(v0 + 1384);
      v24 = *(v0 + 1376);
      v25 = *(v0 + 1344);
      v26 = *(v0 + 1328);
      dispatch thunk of QueryRequest.query.getter();
      v94 = *(v0 + 696);
      sub_100026F50((v0 + 664), *(v0 + 688));
      (*(v23 + 16))(v22, v25 + v19, v24);
      sub_10002A9C4(v0 + 16, (v0 + 192));
      v27 = *(v0 + 1776);
      v85 = *(v0 + 1736);
      v88 = *(v0 + 1784);
      v28 = *(v0 + 1400);
      v29 = *(v0 + 1384);
      v30 = *(v0 + 1376);
      v31 = *(v0 + 1344);
      v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v33 = (*(v0 + 1392) + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      (*(v29 + 32))(v34 + v32, v28, v30);
      *(v34 + v33) = v101;
      sub_10002ABE8(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8), (v0 + 16));
      sub_10002AAE4((v0 + 16));

      Expressible.expanded(using:in:rawStatementHandler:)();
      if (v88)
      {
        v35 = *(v0 + 1776);
        v36 = *(v0 + 1712);
        v37 = *(v0 + 1704);
        v102 = *(v0 + 1624);
        v38 = *(v0 + 1584);
        v39 = *(v0 + 1568);
        v40 = *(v0 + 1552);
        v41 = *(v0 + 1520);
        v95 = *(v0 + 1424);
        v98 = *(v0 + 1616);
        v42 = *(v0 + 1416);
        v91 = *(v0 + 1408);

        sub_100026FDC((v0 + 664));

        v37(v40, v41);
        std::string::~string((v0 + 1056));
        sub_100042AFC(v0 + 104);
        v98(v38, v39);
        (*(v42 + 8))(v95, v91);
LABEL_12:
        sub_10002AAE4((v0 + 192));
        sub_100026FDC((v0 + 624));
        v67 = *(v0 + 1608);
        v68 = *(v0 + 1600);
        v69 = *(v0 + 1592);
        v70 = *(v0 + 1584);
        v71 = *(v0 + 1560);
        v72 = *(v0 + 1552);
        v73 = *(v0 + 1544);
        v74 = *(v0 + 1536);
        v75 = *(v0 + 1512);
        v84 = *(v0 + 1488);
        v87 = *(v0 + 1472);
        v90 = *(v0 + 1464);
        v93 = *(v0 + 1456);
        v97 = *(v0 + 1448);
        v100 = *(v0 + 1424);
        v104 = *(v0 + 1400);
        v107 = *(v0 + 1368);
        sub_1000F7B88("makeContext", 11, 2);

        v76 = *(v0 + 8);

        return v76();
      }

      v43 = *(v0 + 1632);
      v44 = *(v0 + 1456);
      v45 = *(v0 + 1432);
      v46 = *(v0 + 1328);

      sub_100026FDC((v0 + 664));
      dispatch thunk of QueryRequest.withQuery(_:)();
      sub_100026FDC((v0 + 704));
      v103 = 0;
    }

    else
    {
      (*(*(v0 + 1440) + 16))(*(v0 + 1456), *(v0 + 1328), *(v0 + 1432));
      v103 = *(v0 + 1784);
    }

    v96 = *(v0 + 1624);
    v99 = *(v0 + 1632);
    v47 = *(v0 + 1584);
    v89 = *(v0 + 1568);
    v92 = *(v0 + 1616);
    v48 = *(v0 + 1472);
    v49 = *(v0 + 1464);
    v50 = *(v0 + 1456);
    v51 = *(v0 + 1440);
    v52 = *(v0 + 1432);
    v86 = *(v0 + 1424);
    v53 = *(v0 + 1416);
    v82 = *(v0 + 1776);
    v83 = *(v0 + 1408);
    v54 = static os_signpost_type_t.end.getter();
    v55 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v106, v54, v55, "expandQuery", "", v105, 2u);

    v56 = *(v51 + 32);
    v56(v49, v50, v52);

    v56(v48, v49, v52);
    v92(v47, v89);
    (*(v53 + 8))(v86, v83);
    sub_100026F50((v0 + 624), *(v0 + 648));
    v57 = dispatch thunk of QueryRequest.statement.getter();
    sub_10007ACB8(v57, v58, v0 + 280);
    if (v103)
    {
      v59 = *(v0 + 1776);
      v60 = *(v0 + 1712);
      v61 = *(v0 + 1704);
      v62 = *(v0 + 1552);
      v63 = *(v0 + 1520);
      v64 = *(v0 + 1472);
      v65 = *(v0 + 1440);
      v66 = *(v0 + 1432);

      (*(v65 + 8))(v64, v66);
      v61(v62, v63);
      std::string::~string((v0 + 1056));
      sub_100042AFC(v0 + 104);
      goto LABEL_12;
    }

    sub_10002ABE8(v0 + 456, (v0 + 280));
    sub_10002AAE4((v0 + 280));
  }

  else
  {
    (*(*(v0 + 1440) + 16))(*(v0 + 1472), *(v0 + 1328), *(v0 + 1432));
    sub_10002A9C4(v0 + 456, (v0 + 192));
  }

  v78 = sub_100026F94(&qword_10016D210, &unk_1001332B8);
  v79 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v80 = swift_task_alloc();
  *(v0 + 1792) = v80;
  *v80 = v0;
  v80[1] = sub_1000E358C;
  v81 = *(v0 + 1336);

  return BaseObjectGraph.inject<A>(_:)(v0 + 824, v78, v78);
}

uint64_t sub_1000E33BC()
{
  size = v0[71].__r_.__value_.__l.__size_;
  data = v0[71].__r_.__value_.__l.__data_;
  v3 = v0[64].__r_.__value_.__r.__words[2];
  v4 = v0[63].__r_.__value_.__l.__size_;
  (*(v0[62].__r_.__value_.__r.__words[2] + 8))(v0[63].__r_.__value_.__r.__words[0], v0[62].__r_.__value_.__l.__size_);
  data(v3, v4);
  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(&v0[26]);
  v24 = v0[74].__r_.__value_.__l.__size_;
  v5 = v0[67].__r_.__value_.__l.__data_;
  v6 = v0[66].__r_.__value_.__r.__words[2];
  v7 = v0[66].__r_.__value_.__l.__size_;
  v8 = v0[66].__r_.__value_.__l.__data_;
  v9 = v0[65].__r_.__value_.__l.__data_;
  v10 = v0[64].__r_.__value_.__r.__words[2];
  v11 = v0[64].__r_.__value_.__l.__size_;
  v12 = v0[64].__r_.__value_.__l.__data_;
  v13 = v0[63].__r_.__value_.__l.__data_;
  v16 = v0[62].__r_.__value_.__l.__data_;
  v17 = v0[61].__r_.__value_.__l.__size_;
  v18 = v0[61].__r_.__value_.__l.__data_;
  v19 = v0[60].__r_.__value_.__r.__words[2];
  v20 = v0[60].__r_.__value_.__l.__size_;
  v21 = v0[59].__r_.__value_.__l.__size_;
  v22 = v0[58].__r_.__value_.__l.__size_;
  v23 = v0[57].__r_.__value_.__l.__data_;
  sub_1000F7B88("makeContext", 11, 2);

  v14 = v0->__r_.__value_.__l.__size_;

  return v14();
}

uint64_t sub_1000E358C()
{
  v2 = *v1;
  v3 = *(*v1 + 1792);
  v4 = *v1;
  *(*v1 + 1800) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000E38A4;
  }

  else
  {
    v6 = sub_1000E36B8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E36B8()
{
  v1 = v0[217];
  v2 = v0[168];
  v3 = *sub_100026F50(v0 + 103, v0[106]);
  v4 = swift_task_alloc();
  v0[226] = v4;
  *v4 = v0;
  v4[1] = sub_1000E3778;
  v5 = v0[222];

  return sub_100074494((v0 + 57), v2 + v1, (v0 + 13), v5);
}

uint64_t sub_1000E3778()
{
  v2 = *v1;
  v3 = *(*v1 + 1808);
  v4 = *v1;
  *(*v1 + 1816) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000E3E68;
  }

  else
  {
    v6 = sub_1000E3B8C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E38A4()
{
  data = v0[75].__r_.__value_.__l.__data_;
  v0[76].__r_.__value_.__r.__words[0] = data;
  v0[51].__r_.__value_.__r.__words[2] = data;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v4 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v4;
    *v4 = v0;
    v4[1] = sub_1000E4158;
    v5 = v0[55].__r_.__value_.__r.__words[2];

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    v6 = v0[76].__r_.__value_.__l.__data_;
    v7 = v0[74].__r_.__value_.__l.__data_;
    size = v0[71].__r_.__value_.__l.__size_;
    v9 = v0[71].__r_.__value_.__l.__data_;
    v10 = v0[64].__r_.__value_.__r.__words[2];
    v11 = v0[63].__r_.__value_.__l.__size_;
    v12 = v0[61].__r_.__value_.__l.__size_;
    v13 = v0[60].__r_.__value_.__l.__data_;
    v14 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v13 + 1))(v12, v14);
    v9(v10, v11);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(&v0[26]);
    v34 = v0[76].__r_.__value_.__l.__data_;
    v15 = v0[67].__r_.__value_.__l.__data_;
    v16 = v0[66].__r_.__value_.__r.__words[2];
    v17 = v0[66].__r_.__value_.__l.__size_;
    v18 = v0[66].__r_.__value_.__l.__data_;
    v19 = v0[65].__r_.__value_.__l.__data_;
    v20 = v0[64].__r_.__value_.__r.__words[2];
    v21 = v0[64].__r_.__value_.__l.__size_;
    v22 = v0[64].__r_.__value_.__l.__data_;
    v23 = v0[63].__r_.__value_.__l.__data_;
    v26 = v0[62].__r_.__value_.__l.__data_;
    v27 = v0[61].__r_.__value_.__l.__size_;
    v28 = v0[61].__r_.__value_.__l.__data_;
    v29 = v0[60].__r_.__value_.__r.__words[2];
    v30 = v0[60].__r_.__value_.__l.__size_;
    v31 = v0[59].__r_.__value_.__l.__size_;
    v32 = v0[58].__r_.__value_.__l.__size_;
    v33 = v0[57].__r_.__value_.__l.__data_;
    sub_1000F7B88("makeContext", 11, 2);

    v24 = v0->__r_.__value_.__l.__size_;

    return v24();
  }
}

uint64_t sub_1000E3B8C()
{
  (*(*(v0 + 1440) + 16))(*(v0 + 1448), *(v0 + 1472), *(v0 + 1432));
  sub_10002A9C4(v0 + 368, (v0 + 456));
  std::string::basic_string((v0 + 1032), (v0 + 1056));
  v17 = *(v0 + 1776);
  v15 = *(v0 + 1712);
  v1 = *(v0 + 1704);
  v18 = *(v0 + 1608);
  v19 = *(v0 + 1600);
  v20 = *(v0 + 1592);
  v21 = *(v0 + 1584);
  v2 = *(v0 + 1552);
  v22 = *(v0 + 1560);
  v23 = *(v0 + 1544);
  v3 = *(v0 + 1520);
  v24 = *(v0 + 1536);
  v25 = *(v0 + 1512);
  v4 = *(v0 + 1472);
  v26 = *(v0 + 1488);
  v27 = *(v0 + 1464);
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1440);
  v7 = *(v0 + 1432);
  v28 = *(v0 + 1456);
  v29 = *(v0 + 1424);
  v30 = *(v0 + 1400);
  v31 = *(v0 + 1368);
  v8 = *(v0 + 1320);
  sub_10002EFB0((v0 + 1032));
  sub_10002EFC4(v0 + 1032);
  v9 = static String._fromUTF8Repairing(_:)();
  v16 = v10;
  sub_10002AAE4((v0 + 456));
  (*(v6 + 8))(v4, v7);
  v1(v2, v3);
  std::string::~string((v0 + 1056));
  sub_100042AFC(v0 + 104);
  std::string::~string((v0 + 1032));
  sub_10002AAE4((v0 + 192));
  (*(v6 + 32))(v8, v5, v7);
  v11 = sub_100026F94(&qword_10016D240, &qword_100133328);
  sub_10002ABE8(v8 + v11[9], (v0 + 368));
  sub_10002AAE4((v0 + 368));
  v12 = (v8 + v11[10]);
  *v12 = v9;
  v12[1] = v16;
  *(v8 + v11[11]) = v17;
  sub_100026FDC((v0 + 824));
  sub_100026FDC((v0 + 624));
  sub_1000F7B88("makeContext", 11, 2);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000E3E68()
{
  sub_100026FDC(&v0[34].__r_.__value_.__l.__size_);
  v1 = v0[75].__r_.__value_.__r.__words[2];
  v0[76].__r_.__value_.__r.__words[0] = v1;
  v0[51].__r_.__value_.__r.__words[2] = v1;
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if (swift_dynamicCast())
  {
    sub_1000F62E0(v0[50].__r_.__value_.__l.__data_, v0[50].__r_.__value_.__s.__data_[8]);
    v2 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v3 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v4 = swift_task_alloc();
    v0[76].__r_.__value_.__l.__size_ = v4;
    *v4 = v0;
    v4[1] = sub_1000E4158;
    v5 = v0[55].__r_.__value_.__r.__words[2];

    return BaseObjectGraph.inject<A>(_:)(&v0[32].__r_.__value_.__r.__words[2], v2, v2);
  }

  else
  {
    data = v0[76].__r_.__value_.__l.__data_;
    v7 = v0[74].__r_.__value_.__l.__data_;
    size = v0[71].__r_.__value_.__l.__size_;
    v9 = v0[71].__r_.__value_.__l.__data_;
    v10 = v0[64].__r_.__value_.__r.__words[2];
    v11 = v0[63].__r_.__value_.__l.__size_;
    v12 = v0[61].__r_.__value_.__l.__size_;
    v13 = v0[60].__r_.__value_.__l.__data_;
    v14 = v0[59].__r_.__value_.__r.__words[2];
    swift_willThrow();

    sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
    (*(v13 + 1))(v12, v14);
    v9(v10, v11);
    std::string::~string(v0 + 44);
    sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
    sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
    sub_100026FDC(&v0[26]);
    v34 = v0[76].__r_.__value_.__l.__data_;
    v15 = v0[67].__r_.__value_.__l.__data_;
    v16 = v0[66].__r_.__value_.__r.__words[2];
    v17 = v0[66].__r_.__value_.__l.__size_;
    v18 = v0[66].__r_.__value_.__l.__data_;
    v19 = v0[65].__r_.__value_.__l.__data_;
    v20 = v0[64].__r_.__value_.__r.__words[2];
    v21 = v0[64].__r_.__value_.__l.__size_;
    v22 = v0[64].__r_.__value_.__l.__data_;
    v23 = v0[63].__r_.__value_.__l.__data_;
    v26 = v0[62].__r_.__value_.__l.__data_;
    v27 = v0[61].__r_.__value_.__l.__size_;
    v28 = v0[61].__r_.__value_.__l.__data_;
    v29 = v0[60].__r_.__value_.__r.__words[2];
    v30 = v0[60].__r_.__value_.__l.__size_;
    v31 = v0[59].__r_.__value_.__l.__size_;
    v32 = v0[58].__r_.__value_.__l.__size_;
    v33 = v0[57].__r_.__value_.__l.__data_;
    sub_1000F7B88("makeContext", 11, 2);

    v24 = v0->__r_.__value_.__l.__size_;

    return v24();
  }
}

uint64_t sub_1000E4158()
{
  v2 = *v1;
  v3 = *(*v1 + 1832);
  v4 = *v1;
  *(*v1 + 1840) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000E44EC;
  }

  else
  {
    v6 = sub_1000E4284;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E4284()
{
  v1 = v0[179];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[166];
  v6 = sub_100026F50(v0 + 98, v0[101]);
  sub_1000F820C(&qword_10016D250, &type metadata accessor for ScalarValueRequest);
  dispatch thunk of RequestType.accessType.getter();
  LOBYTE(v1) = RequestAccessType.isRead.getter();
  (*(v3 + 8))(v2, v4);
  v7 = *v6;
  v8 = swift_task_alloc();
  v0[231] = v8;
  *v8 = v0;
  v8[1] = sub_1000E43C0;
  if (v1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  return sub_100061DD0(v9);
}

uint64_t sub_1000E43C0()
{
  v2 = *v1;
  v3 = *(*v1 + 1848);
  v4 = *v1;
  *(*v1 + 1856) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000E48DC;
  }

  else
  {
    v6 = sub_1000E46E0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E44EC()
{
  data = v0[76].__r_.__value_.__l.__data_;
  v2 = v0[74].__r_.__value_.__l.__data_;
  size = v0[71].__r_.__value_.__l.__size_;
  v4 = v0[71].__r_.__value_.__l.__data_;
  v5 = v0[64].__r_.__value_.__r.__words[2];
  v6 = v0[63].__r_.__value_.__l.__size_;
  v7 = v0[61].__r_.__value_.__l.__size_;
  v8 = v0[60].__r_.__value_.__l.__data_;
  v9 = v0[59].__r_.__value_.__r.__words[2];

  sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
  (*(v8 + 1))(v7, v9);
  v4(v5, v6);
  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(&v0[26]);
  v29 = v0[76].__r_.__value_.__r.__words[2];
  v10 = v0[67].__r_.__value_.__l.__data_;
  v11 = v0[66].__r_.__value_.__r.__words[2];
  v12 = v0[66].__r_.__value_.__l.__size_;
  v13 = v0[66].__r_.__value_.__l.__data_;
  v14 = v0[65].__r_.__value_.__l.__data_;
  v15 = v0[64].__r_.__value_.__r.__words[2];
  v16 = v0[64].__r_.__value_.__l.__size_;
  v17 = v0[64].__r_.__value_.__l.__data_;
  v18 = v0[63].__r_.__value_.__l.__data_;
  v21 = v0[62].__r_.__value_.__l.__data_;
  v22 = v0[61].__r_.__value_.__l.__size_;
  v23 = v0[61].__r_.__value_.__l.__data_;
  v24 = v0[60].__r_.__value_.__r.__words[2];
  v25 = v0[60].__r_.__value_.__l.__size_;
  v26 = v0[59].__r_.__value_.__l.__size_;
  v27 = v0[58].__r_.__value_.__l.__size_;
  v28 = v0[57].__r_.__value_.__l.__data_;
  sub_1000F7B88("makeContext", 11, 2);

  v19 = v0->__r_.__value_.__l.__size_;

  return v19();
}

uint64_t sub_1000E46E0()
{
  sub_100026FDC(&v0[32].__r_.__value_.__r.__words[2]);
  data = v0[76].__r_.__value_.__l.__data_;
  v2 = v0[74].__r_.__value_.__l.__data_;
  size = v0[71].__r_.__value_.__l.__size_;
  v4 = v0[71].__r_.__value_.__l.__data_;
  v5 = v0[64].__r_.__value_.__r.__words[2];
  v6 = v0[63].__r_.__value_.__l.__size_;
  v7 = v0[61].__r_.__value_.__l.__size_;
  v8 = v0[60].__r_.__value_.__l.__data_;
  v9 = v0[59].__r_.__value_.__r.__words[2];
  swift_willThrow();

  sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
  (*(v8 + 1))(v7, v9);
  v4(v5, v6);
  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(&v0[26]);
  v29 = v0[76].__r_.__value_.__l.__data_;
  v10 = v0[67].__r_.__value_.__l.__data_;
  v11 = v0[66].__r_.__value_.__r.__words[2];
  v12 = v0[66].__r_.__value_.__l.__size_;
  v13 = v0[66].__r_.__value_.__l.__data_;
  v14 = v0[65].__r_.__value_.__l.__data_;
  v15 = v0[64].__r_.__value_.__r.__words[2];
  v16 = v0[64].__r_.__value_.__l.__size_;
  v17 = v0[64].__r_.__value_.__l.__data_;
  v18 = v0[63].__r_.__value_.__l.__data_;
  v21 = v0[62].__r_.__value_.__l.__data_;
  v22 = v0[61].__r_.__value_.__l.__size_;
  v23 = v0[61].__r_.__value_.__l.__data_;
  v24 = v0[60].__r_.__value_.__r.__words[2];
  v25 = v0[60].__r_.__value_.__l.__size_;
  v26 = v0[59].__r_.__value_.__l.__size_;
  v27 = v0[58].__r_.__value_.__l.__size_;
  v28 = v0[57].__r_.__value_.__l.__data_;
  sub_1000F7B88("makeContext", 11, 2);

  v19 = v0->__r_.__value_.__l.__size_;

  return v19();
}

uint64_t sub_1000E48DC()
{
  data = v0[76].__r_.__value_.__l.__data_;
  v2 = v0[74].__r_.__value_.__l.__data_;
  size = v0[71].__r_.__value_.__l.__size_;
  v4 = v0[71].__r_.__value_.__l.__data_;
  v5 = v0[64].__r_.__value_.__r.__words[2];
  v6 = v0[63].__r_.__value_.__l.__size_;
  v7 = v0[61].__r_.__value_.__l.__size_;
  v8 = v0[60].__r_.__value_.__l.__data_;
  v9 = v0[59].__r_.__value_.__r.__words[2];

  sub_10002AAE4(&v0[19].__r_.__value_.__l.__data_);
  (*(v8 + 1))(v7, v9);
  v4(v5, v6);
  std::string::~string(v0 + 44);
  sub_100042AFC(&v0[4].__r_.__value_.__l.__size_);
  sub_10002AAE4(&v0[8].__r_.__value_.__l.__data_);
  sub_100026FDC(&v0[32].__r_.__value_.__r.__words[2]);
  sub_100026FDC(&v0[26]);
  v29 = v0[77].__r_.__value_.__l.__size_;
  v10 = v0[67].__r_.__value_.__l.__data_;
  v11 = v0[66].__r_.__value_.__r.__words[2];
  v12 = v0[66].__r_.__value_.__l.__size_;
  v13 = v0[66].__r_.__value_.__l.__data_;
  v14 = v0[65].__r_.__value_.__l.__data_;
  v15 = v0[64].__r_.__value_.__r.__words[2];
  v16 = v0[64].__r_.__value_.__l.__size_;
  v17 = v0[64].__r_.__value_.__l.__data_;
  v18 = v0[63].__r_.__value_.__l.__data_;
  v21 = v0[62].__r_.__value_.__l.__data_;
  v22 = v0[61].__r_.__value_.__l.__size_;
  v23 = v0[61].__r_.__value_.__l.__data_;
  v24 = v0[60].__r_.__value_.__r.__words[2];
  v25 = v0[60].__r_.__value_.__l.__size_;
  v26 = v0[59].__r_.__value_.__l.__size_;
  v27 = v0[58].__r_.__value_.__l.__size_;
  v28 = v0[57].__r_.__value_.__l.__data_;
  sub_1000F7B88("makeContext", 11, 2);

  v19 = v0->__r_.__value_.__l.__size_;

  return v19();
}

uint64_t sub_1000E4AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[168] = v3;
  v4[167] = a3;
  v4[166] = a2;
  v4[165] = a1;
  v5 = type metadata accessor for RequestAccessType();
  v4[169] = v5;
  v6 = *(v5 - 8);
  v4[170] = v6;
  v7 = *(v6 + 64) + 15;
  v4[171] = swift_task_alloc();
  v8 = type metadata accessor for AccessCredential();
  v4[172] = v8;
  v9 = *(v8 - 8);
  v4[173] = v9;
  v4[174] = *(v9 + 64);
  v4[175] = swift_task_alloc();
  v10 = type metadata accessor for OSSignposter();
  v4[176] = v10;
  v11 = *(v10 - 8);
  v4[177] = v11;
  v12 = *(v11 + 64) + 15;
  v4[178] = swift_task_alloc();
  inserted = type metadata accessor for InsertRequest();
  v4[179] = inserted;
  v14 = *(inserted - 8);
  v4[180] = v14;
  v15 = *(v14 + 64) + 15;
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  v4[183] = swift_task_alloc();
  v4[184] = swift_task_alloc();
  v16 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v4[185] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v4[186] = swift_task_alloc();
  v18 = type metadata accessor for StorageCategory();
  v4[187] = v18;
  v19 = *(v18 - 8);
  v4[188] = v19;
  v20 = *(v19 + 64) + 15;
  v4[189] = swift_task_alloc();
  v21 = type metadata accessor for StatementType();
  v4[190] = v21;
  v22 = *(v21 - 8);
  v4[191] = v22;
  v23 = *(v22 + 64) + 15;
  v4[192] = swift_task_alloc();
  v4[193] = swift_task_alloc();
  v4[194] = swift_task_alloc();
  v24 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[195] = swift_task_alloc();
  v25 = type metadata accessor for OSSignpostID();
  v4[196] = v25;
  v26 = *(v25 - 8);
  v4[197] = v26;
  v27 = *(v26 + 64) + 15;
  v4[198] = swift_task_alloc();
  v4[199] = swift_task_alloc();
  v4[200] = swift_task_alloc();

  return _swift_task_switch(sub_1000E4E84, v3, 0);
}

uint64_t sub_1000E4E84()
{
  if (qword_10016A680 != -1)
  {
    swift_once();
  }

  v1 = v0[200];
  sub_10002FD14(v0[176], qword_10016D0F0);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v0[200];
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v6, "makeContext", "", v5, 2u);
  }

  v7 = v0[200];
  v8 = v0[199];
  v9 = v0[197];
  v10 = v0[196];

  (*(v9 + 16))(v8, v7, v10);
  v11 = type metadata accessor for OSSignpostIntervalState();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[201] = OSSignpostIntervalState.init(id:isOpen:)();
  v14 = *(v9 + 8);
  v0[202] = v14;
  v0[203] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v7, v10);
  if (qword_10016A678 != -1)
  {
    swift_once();
  }

  v15 = v0[195];
  v16 = v0[190];
  v17 = v0[179];
  v18 = v0[166];
  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v19 = *(type metadata accessor for LogMessage() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x800000010013D2D0;
  v22._countAndFlagsBits = 0xD000000000000029;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v0[116] = v16;
  sub_100042BAC(v0 + 113);
  v0[204] = sub_1000F820C(&qword_10016D268, &type metadata accessor for InsertRequest);
  dispatch thunk of QueryRequest.statementType.getter();
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 113), &qword_10016AB10, &unk_100130B10);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v24 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v25 = swift_task_alloc();
  v0[205] = v25;
  *v25 = v0;
  v25[1] = sub_1000E526C;
  v26 = v0[167];

  return BaseObjectGraph.inject<A>(_:)(v0 + 13, &type metadata for ClientInfo, &type metadata for ClientInfo);
}

uint64_t sub_1000E526C()
{
  v2 = *(*v1 + 1640);
  v3 = *v1;
  v3[206] = v0;

  if (v0)
  {
    v4 = v3[168];

    return _swift_task_switch(sub_1000F8858, v4, 0);
  }

  else
  {
    v5 = sub_100026F94(&qword_10016D200, &qword_1001332A0);
    v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v7 = swift_task_alloc();
    v3[207] = v7;
    *v7 = v3;
    v7[1] = sub_1000E5410;
    v8 = v3[167];

    return BaseObjectGraph.inject<A>(_:)(v3 + 78, v5, v5);
  }
}

uint64_t sub_1000E5410()
{
  v2 = *v1;
  v3 = *(*v1 + 1656);
  v4 = *v1;
  *(*v1 + 1664) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000F87DC;
  }

  else
  {
    v6 = sub_1000E553C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E553C()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1432);
  v4 = *(v0 + 1328);
  sub_100026F50((v0 + 624), *(v0 + 648));
  v5 = dispatch thunk of QueryRequest.statement.getter();
  sub_10007ACB8(v5, v6, v0 + 192);
  if (v1)
  {
    sub_100042AFC(v0 + 104);

LABEL_24:
    sub_100026FDC((v0 + 624));
    v46 = *(v0 + 1608);
    v47 = *(v0 + 1600);
    v48 = *(v0 + 1592);
    v49 = *(v0 + 1584);
    v50 = *(v0 + 1560);
    v51 = *(v0 + 1552);
    v52 = *(v0 + 1544);
    v53 = *(v0 + 1536);
    v54 = *(v0 + 1512);
    v62 = *(v0 + 1488);
    v63 = *(v0 + 1472);
    v64 = *(v0 + 1464);
    v65 = *(v0 + 1456);
    v66 = *(v0 + 1448);
    v68 = *(v0 + 1424);
    v70 = *(v0 + 1400);
    v73 = *(v0 + 1368);
    sub_1000F7B88("makeContext", 11, 2);

    v55 = *(v0 + 8);

    return v55();
  }

  sub_10001DAD8(v0 + 192, v0 + 960);
  v7 = sub_10002A1C8(v0 + 960);
  v8 = sub_10002A1D0(v0 + 960);
  *(v0 + 1296) = v7;
  *(v0 + 1288) = v8;
  v9 = sub_10002A30C((v0 + 1296), (v0 + 1288));
  sub_100078558((v0 + 960));
  if (v9 != 1)
  {
    goto LABEL_14;
  }

  sub_10001DAD8(v0 + 192, v0 + 936);
  v10 = sub_10002A1C8(v0 + 936);
  v11 = sub_10002A1D0(v0 + 936);
  *(v0 + 1304) = v10;
  *(v0 + 1280) = v11;
  if (!sub_10002A30C((v0 + 1304), (v0 + 1280)))
  {
    sub_100078558((v0 + 936));
LABEL_14:
    v28 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError);
    swift_allocError();
    v30 = v29;
    sub_10001DAD8(v0 + 192, v0 + 984);
    v31 = sub_10002A1C8(v0 + 984);
    v32 = sub_10002A1D0(v0 + 984);
    *(v0 + 1264) = v31;
    *(v0 + 1256) = v32;
    v33 = sub_10002A30C((v0 + 1264), (v0 + 1256));
    if (!v33)
    {
      sub_100078558((v0 + 984));
LABEL_23:
      *v30 = _swiftEmptyArrayStorage;
      (*(*(v28 - 8) + 104))(v30, enum case for DaemonError.multipleSchemas(_:), v28);
      swift_willThrow();
      sub_100042AFC(v0 + 104);
      sub_10002AAE4((v0 + 192));
      goto LABEL_24;
    }

    v34 = v33;
    v67 = v30;
    v69 = v28;
    result = sub_10007E9EC(0, v33 & ~(v33 >> 63), 0);
    if (v34 < 0)
    {
      goto LABEL_32;
    }

    v35 = 0;
    v72 = (v0 + 1216);
    while (1)
    {
      v36 = sub_10002A418((v0 + 984), v35);
      std::string::basic_string((v0 + 1104), v36);
      std::string::basic_string((v0 + 1128), (v0 + 1104));
      v37 = v34;
      sub_10002EFB0((v0 + 1128));
      sub_10002EFC4(v0 + 1128);
      v38 = static String._fromUTF8Repairing(_:)();
      v40 = v39;
      std::string::~string((v0 + 1104));
      std::string::~string((v0 + 1128));
      v42 = _swiftEmptyArrayStorage[2];
      v41 = _swiftEmptyArrayStorage[3];
      if (v42 >= v41 >> 1)
      {
        sub_10007E9EC((v41 > 1), v42 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v42 + 1;
      v43 = &_swiftEmptyArrayStorage[2 * v42];
      v43[4] = v38;
      v43[5] = v40;
      v44 = sub_10002A1C8(v0 + 984);
      v45 = sub_10002A1D0(v0 + 984);
      *v72 = v44;
      *(v0 + 1248) = v45;
      result = sub_10002A30C(v72, (v0 + 1248));
      if (v35 >= result)
      {
        break;
      }

      ++v35;
      v34 = v37;
      if (v37 == v35)
      {
        sub_100078558((v0 + 984));
        v28 = v69;
        v30 = v67;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v12 = sub_10002A418((v0 + 936), 0);
  std::string::basic_string((v0 + 1056), v12);
  sub_100078558((v0 + 936));
  sub_10001DE24(v0 + 192, (v0 + 1008));
  v13 = sub_10002A1C8(v0 + 1008);
  v14 = sub_10002A1D0(v0 + 1008);
  *(v0 + 1272) = v13;
  *(v0 + 1312) = v14;
  v15 = sub_10002A2EC((v0 + 1272), (v0 + 1312));
  if (v15)
  {
    v16 = v15;
    result = sub_10007E9EC(0, v15 & ~(v15 >> 63), 0);
    if (v16 < 0)
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v18 = 0;
    v71 = v16;
    do
    {
      v19 = sub_10002C030((v0 + 1008), v18);
      sub_10002A33C((v0 + 544), v19);
      std::string::basic_string((v0 + 1080), (v0 + 568));
      sub_10002EFB0((v0 + 1080));
      sub_10002EFC4(v0 + 1080);
      v20 = static String._fromUTF8Repairing(_:)();
      v22 = v21;
      sub_10001B428(v0 + 544);
      std::string::~string((v0 + 1080));
      v24 = _swiftEmptyArrayStorage[2];
      v23 = _swiftEmptyArrayStorage[3];
      if (v24 >= v23 >> 1)
      {
        sub_10007E9EC((v23 > 1), v24 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v24 + 1;
      v25 = &_swiftEmptyArrayStorage[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
      v26 = sub_10002A1C8(v0 + 1008);
      v27 = sub_10002A1D0(v0 + 1008);
      *(v0 + 1232) = v26;
      *(v0 + 1224) = v27;
      result = sub_10002A2EC((v0 + 1232), (v0 + 1224));
      if (v18 >= result)
      {
        goto LABEL_31;
      }
    }

    while (v71 != ++v18);
  }

  sub_10002A4B8((v0 + 1008));
  *(v0 + 1672) = _swiftEmptyArrayStorage;
  std::string::basic_string((v0 + 1152), (v0 + 1056));
  sub_10002EFB0((v0 + 1152));
  sub_10002EFC4(v0 + 1152);
  v56 = static String._fromUTF8Repairing(_:)();
  v58 = v57;
  *(v0 + 1680) = v57;
  std::string::~string((v0 + 1152));
  v59 = swift_task_alloc();
  *(v0 + 1688) = v59;
  *v59 = v0;
  v59[1] = sub_1000E5CBC;
  v60 = *(v0 + 1344);
  v61 = *(v0 + 1336);

  return sub_1000F14AC(_swiftEmptyArrayStorage, v56, v58, v0 + 104, v61);
}

uint64_t sub_1000E5CBC()
{
  v2 = *v1;
  v3 = *(*v1 + 1688);
  v4 = *v1;
  *(*v1 + 1696) = v0;

  v5 = v2[210];
  v6 = v2[209];
  v7 = v2[168];

  if (v0)
  {
    v8 = sub_1000F885C;
  }

  else
  {
    v8 = sub_1000E5E20;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000E5E20()
{
  v1 = *(v0 + 1696);
  sub_10008366C(*(v0 + 192), *(v0 + 1552));
  if (!v1)
  {
    v2 = *(v0 + 1632);
    v3 = *(v0 + 1552);
    v4 = *(v0 + 1544);
    v5 = *(v0 + 1528);
    v6 = *(v0 + 1520);
    v7 = *(v0 + 1432);
    v8 = *(v0 + 1328);
    dispatch thunk of QueryRequest.statementType.getter();
    LOBYTE(v8) = static StatementType.== infix(_:_:)();
    v9 = *(v5 + 8);
    *(v0 + 1704) = v9;
    *(v0 + 1712) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v4, v6);
    v51 = v9;
    if (v8)
    {
      std::string::basic_string((v0 + 1176), (v0 + 1056));
      sub_10002EFB0((v0 + 1176));
      sub_10002EFC4(v0 + 1176);
      v28 = static String._fromUTF8Repairing(_:)();
      v53 = *(v0 + 1632);
      v29 = *(v0 + 1544);
      v30 = *(v0 + 1536);
      v31 = *(v0 + 1528);
      v32 = *(v0 + 1520);
      v33 = *(v0 + 1512);
      v50 = *(v0 + 1432);
      v34 = *(v0 + 1344);
      v35 = *(v0 + 1328);
      *(v0 + 1720) = v36;
      *(v0 + 1728) = v28;
      std::string::~string((v0 + 1176));
      *(v0 + 1736) = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
      AccessCredential.storageCategory.getter();
      dispatch thunk of QueryRequest.statementType.getter();
      (*(v31 + 104))(v29, enum case for StatementType.select(_:), v32);
      *(v0 + 1209) = static StatementType.== infix(_:_:)() & 1;
      v51(v29, v32);
      v51(v30, v32);
      v37 = sub_100026F50((v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager), *(v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager + 24));
      v38 = v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id;
      *(v0 + 1744) = *(v34 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
      *(v0 + 1752) = *(v38 + 8);
      v39 = *v37;
      *(v0 + 1760) = *v37;

      return _swift_task_switch(sub_1000E62E0, v39, 0);
    }

    v10 = *(v0 + 1552);
    v11 = *(v0 + 1528);
    v12 = *(v0 + 1520);
    v46 = *(v0 + 1432);
    v48 = *(v0 + 1632);
    v44 = *(v0 + 1328);
    v13 = type metadata accessor for DaemonError();
    sub_1000F820C(&qword_10016AB40, &type metadata accessor for DaemonError);
    swift_allocError();
    v15 = v14;
    v16 = *(sub_100026F94(&qword_10016D208, &qword_1001332B0) + 48);
    (*(v11 + 16))(v15, v10, v12);
    dispatch thunk of QueryRequest.statementType.getter();
    (*(*(v13 - 8) + 104))(v15, enum case for DaemonError.statementTypeMismatch(_:), v13);
    swift_willThrow();
    v51(v10, v12);
  }

  std::string::~string((v0 + 1056));
  sub_100042AFC(v0 + 104);
  sub_10002AAE4((v0 + 192));
  sub_100026FDC((v0 + 624));
  v17 = *(v0 + 1608);
  v18 = *(v0 + 1600);
  v19 = *(v0 + 1592);
  v20 = *(v0 + 1584);
  v21 = *(v0 + 1560);
  v22 = *(v0 + 1552);
  v23 = *(v0 + 1544);
  v24 = *(v0 + 1536);
  v25 = *(v0 + 1512);
  v40 = *(v0 + 1488);
  v41 = *(v0 + 1472);
  v42 = *(v0 + 1464);
  v43 = *(v0 + 1456);
  v45 = *(v0 + 1448);
  v47 = *(v0 + 1424);
  v49 = *(v0 + 1400);
  v52 = *(v0 + 1368);
  sub_1000F7B88("makeContext", 11, 2);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1000E62E0()
{
  v1 = *(v0 + 1209);
  v2 = *(v0 + 1728);
  v3 = *(v0 + 1720);
  v4 = *(v0 + 1488);
  v5 = *(v0 + 1480);
  (*(*(v0 + 1504) + 16))(&v4[v5[5]], *(v0 + 1512), *(v0 + 1496));
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  *v4 = v2;
  *(v4 + 1) = v3;
  v8 = &v4[v5[6]];
  *v8 = v7;
  *(v8 + 1) = v6;
  v4[v5[7]] = v1;
  v4[v5[8]] = 0;

  v9 = swift_task_alloc();
  *(v0 + 1768) = v9;
  *v9 = v0;
  v9[1] = sub_1000E63F4;
  v10 = *(v0 + 1760);
  v11 = *(v0 + 1752);
  v12 = *(v0 + 1744);
  v13 = *(v0 + 1488);

  return sub_100050F58(v13, v12, v11);
}

uint64_t sub_1000E63F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1768);
  v8 = *v2;
  v3[222] = a1;
  v3[223] = v1;

  if (v1)
  {
    v5 = v3[220];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v6 = sub_1000DCC68;
  }

  else
  {
    v5 = v3[168];
    sub_1000F65EC(v3[186], type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey);
    v6 = sub_1000E654C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E654C()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1328);
  (*(*(v0 + 1504) + 8))(*(v0 + 1512), *(v0 + 1496));
  dispatch thunk of QueryRequest.query.getter();
  v4 = *(v0 + 896);
  sub_100026F50((v0 + 864), *(v0 + 888));
  LOBYTE(v3) = Expressible.isExpandable.getter();
  sub_100026FDC((v0 + 864));
  if (v3)
  {
    v5 = *(v0 + 1776);
    v6 = qword_10016A548;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 1632);
    v8 = *(v0 + 1584);
    v9 = *(v0 + 1432);
    v10 = *(v0 + 1424);
    v11 = *(v0 + 1416);
    v12 = *(v0 + 1408);
    v13 = *(v0 + 1328);
    v14 = sub_10002FD14(v12, qword_1001736D0);
    (*(v11 + 16))(v10, v14, v12);
    static OSSignpostID.exclusive.getter();
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignposter.logHandle.getter();
    LOBYTE(v12) = static os_signpost_type_t.begin.getter();
    v17 = OSSignpostID.rawValue.getter();
    v105 = v15;
    v106 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v12, v17, "expandQuery", "", v15, 2u);
    dispatch thunk of QueryRequest.query.getter();
    v18 = *(v0 + 776);
    sub_100026F50((v0 + 744), *(v0 + 768));
    LOBYTE(v10) = Expressible.isExpandable.getter();
    sub_100026FDC((v0 + 744));
    if (v10)
    {
      v101 = v5;
      v19 = *(v0 + 1736);
      v20 = *(v0 + 1632);
      v21 = *(v0 + 1432);
      v22 = *(v0 + 1400);
      v23 = *(v0 + 1384);
      v24 = *(v0 + 1376);
      v25 = *(v0 + 1344);
      v26 = *(v0 + 1328);
      dispatch thunk of QueryRequest.query.getter();
      v94 = *(v0 + 696);
      sub_100026F50((v0 + 664), *(v0 + 688));
      (*(v23 + 16))(v22, v25 + v19, v24);
      sub_10002A9C4(v0 + 16, (v0 + 192));
      v27 = *(v0 + 1776);
      v85 = *(v0 + 1736);
      v88 = *(v0 + 1784);
      v28 = *(v0 + 1400);
      v29 = *(v0 + 1384);
      v30 = *(v0 + 1376);
      v31 = *(v0 + 1344);
      v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v33 = (*(v0 + 1392) + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      (*(v29 + 32))(v34 + v32, v28, v30);
      *(v34 + v33) = v101;
      sub_10002ABE8(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8), (v0 + 16));
      sub_10002AAE4((v0 + 16));

      Expressible.expanded(using:in:rawStatementHandler:)();
      if (v88)
      {
        v35 = *(v0 + 1776);
        v36 = *(v0 + 1712);
        v37 = *(v0 + 1704);
        v102 = *(v0 + 1624);
        v38 = *(v0 + 1584);
        v39 = *(v0 + 1568);
        v40 = *(v0 + 1552);
        v41 = *(v0 + 1520);
        v95 = *(v0 + 1424);
        v98 = *(v0 + 1616);
        v42 = *(v0 + 1416);
        v91 = *(v0 + 1408);

        sub_100026FDC((v0 + 664));

        v37(v40, v41);
        std::string::~string((v0 + 1056));
        sub_100042AFC(v0 + 104);
        v98(v38, v39);
        (*(v42 + 8))(v95, v91);
LABEL_12:
        sub_10002AAE4((v0 + 192));
        sub_100026FDC((v0 + 624));
        v67 = *(v0 + 1608);
        v68 = *(v0 + 1600);
        v69 = *(v0 + 1592);
        v70 = *(v0 + 1584);
        v71 = *(v0 + 1560);
        v72 = *(v0 + 1552);
        v73 = *(v0 + 1544);
        v74 = *(v0 + 1536);
        v75 = *(v0 + 1512);
        v84 = *(v0 + 1488);
        v87 = *(v0 + 1472);
        v90 = *(v0 + 1464);
        v93 = *(v0 + 1456);
        v97 = *(v0 + 1448);
        v100 = *(v0 + 1424);
        v104 = *(v0 + 1400);
        v107 = *(v0 + 1368);
        sub_1000F7B88("makeContext", 11, 2);

        v76 = *(v0 + 8);

        return v76();
      }

      v43 = *(v0 + 1632);
      v44 = *(v0 + 1456);
      v45 = *(v0 + 1432);
      v46 = *(v0 + 1328);

      sub_100026FDC((v0 + 664));
      dispatch thunk of QueryRequest.withQuery(_:)();
      sub_100026FDC((v0 + 704));
      v103 = 0;
    }

    else
    {
      (*(*(v0 + 1440) + 16))(*(v0 + 1456), *(v0 + 1328), *(v0 + 1432));
      v103 = *(v0 + 1784);
    }

    v96 = *(v0 + 1624);
    v99 = *(v0 + 1632);
    v47 = *(v0 + 1584);
    v89 = *(v0 + 1568);
    v92 = *(v0 + 1616);
    v48 = *(v0 + 1472);
    v49 = *(v0 + 1464);
    v50 = *(v0 + 1456);
    v51 = *(v0 + 1440);
    v52 = *(v0 + 1432);
    v86 = *(v0 + 1424);
    v53 = *(v0 + 1416);
    v82 = *(v0 + 1776);
    v83 = *(v0 + 1408);
    v54 = static os_signpost_type_t.end.getter();
    v55 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v106, v54, v55, "expandQuery", "", v105, 2u);

    v56 = *(v51 + 32);
    v56(v49, v50, v52);

    v56(v48, v49, v52);
    v92(v47, v89);
    (*(v53 + 8))(v86, v83);
    sub_100026F50((v0 + 624), *(v0 + 648));
    v57 = dispatch thunk of QueryRequest.statement.getter();
    sub_10007ACB8(v57, v58, v0 + 280);
    if (v103)
    {
      v59 = *(v0 + 1776);
      v60 = *(v0 + 1712);
      v61 = *(v0 + 1704);
      v62 = *(v0 + 1552);
      v63 = *(v0 + 1520);
      v64 = *(v0 + 1472);
      v65 = *(v0 + 1440);
      v66 = *(v0 + 1432);

      (*(v65 + 8))(v64, v66);
      v61(v62, v63);
      std::string::~string((v0 + 1056));
      sub_100042AFC(v0 + 104);
      goto LABEL_12;
    }

    sub_10002ABE8(v0 + 456, (v0 + 280));
    sub_10002AAE4((v0 + 280));
  }

  else
  {
    (*(*(v0 + 1440) + 16))(*(v0 + 1472), *(v0 + 1328), *(v0 + 1432));
    sub_10002A9C4(v0 + 456, (v0 + 192));
  }

  v78 = sub_100026F94(&qword_10016D210, &unk_1001332B8);
  v79 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v80 = swift_task_alloc();
  *(v0 + 1792) = v80;
  *v80 = v0;
  v80[1] = sub_1000E6D54;
  v81 = *(v0 + 1336);

  return BaseObjectGraph.inject<A>(_:)(v0 + 824, v78, v78);
}

uint64_t sub_1000E6D54()
{
  v2 = *v1;
  v3 = *(*v1 + 1792);
  v4 = *v1;
  *(*v1 + 1800) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000E706C;
  }

  else
  {
    v6 = sub_1000E6E80;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E6E80()
{
  v1 = v0[217];
  v2 = v0[168];
  v3 = *sub_100026F50(v0 + 103, v0[106]);
  v4 = swift_task_alloc();
  v0[226] = v4;
  *v4 = v0;
  v4[1] = sub_1000E6F40;
  v5 = v0[222];

  return sub_100074494((v0 + 57), v2 + v1, (v0 + 13), v5);
}

uint64_t sub_1000E6F40()
{
  v2 = *v1;
  v3 = *(*v1 + 1808);
  v4 = *v1;
  *(*v1 + 1816) = v0;

  v5 = *(v2 + 1344);
  if (v0)
  {
    v6 = sub_1000E7630;
  }

  else
  {
    v6 = sub_1000E7354;
  }

  return _swift_task_switch(v6, v5, 0);
}