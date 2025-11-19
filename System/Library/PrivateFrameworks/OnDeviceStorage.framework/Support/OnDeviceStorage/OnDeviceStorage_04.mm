uint64_t sub_10003BE70()
{
  v1 = v0[11];

  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[16];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10003BF08(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Setter();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = type metadata accessor for Table();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v13 = type metadata accessor for Update();
  v3[17] = v13;
  v14 = *(v13 - 8);
  v3[18] = v14;
  v15 = *(v14 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10003C0EC, v2, 0);
}

uint64_t sub_10003C0EC()
{
  v1 = v0[6];
  v2 = sub_100026F50((v0[7] + 152), *(v0[7] + 176));
  v3 = *v2;
  v0[20] = *v2;

  return _swift_task_switch(sub_10003C178, v3, 0);
}

uint64_t sub_10003C178()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_10003C274;
  v4 = *(v0 + 160);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10003C274(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v7 = *(v3 + 160);
  if (v1)
  {
    v8 = sub_10003C738;
  }

  else
  {
    v8 = sub_10003C3A8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10003C3A8()
{
  v1 = v0[20];
  v2 = *(v1 + 216);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v39 = v0[20];
    *(v1 + 216) = v4;
    if (qword_10016A2F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_10002FD14(v0[14], qword_1001732E8);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v11 = v0[5];
  v10 = v0[6];
  v12 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v12, qword_100173318);
  v0[2] = v11;
  v0[3] = v10;
  static Expression<A>.== infix<A>(_:_:)();
  sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
  QueryType.where(_:)();
  (*(v9 + 8))(v6, v8);
  if (qword_10016A330 != -1)
  {
    swift_once();
  }

  v13 = v0[22];
  v38 = v0[23];
  v14 = v0[19];
  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[14];
  v18 = v0[9];
  v19 = v0[10];
  v20 = v0[8];
  v21 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
  sub_10002FD14(v21, qword_1001733A8);
  v0[4] = 1;
  static Expression<A>.+= infix<A>(_:_:)();
  QueryType.update(_:_:)();
  (*(v18 + 8))(v19, v20);
  (*(v16 + 8))(v15, v17);
  Connection.run(_:)();
  v22 = v0[22];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v24 = *(v39 + 216);
  v3 = __OFSUB__(v24, 1);
  v25 = v24 - 1;
  v26 = v3;
  if (!v38)
  {
    if ((v26 & 1) == 0)
    {
      v33 = v0[19];
      v34 = v0[16];
      v35 = v0[13];
      v36 = v0[10];
      v37 = v0[6];
      *(v39 + 216) = v25;

      v32 = v0[1];
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    return result;
  }

  if (v26)
  {
    __break(1u);
    goto LABEL_21;
  }

  v27 = v0[6];
  *(v39 + 216) = v25;

  v28 = v0[19];
  v29 = v0[16];
  v30 = v0[13];
  v31 = v0[10];

  v32 = v0[1];
LABEL_15:

  return v32();
}

uint64_t sub_10003C738()
{
  v1 = v0[6];

  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10003C7D0(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 72) = v3;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  v5 = type metadata accessor for Setter();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v8 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  *(v4 + 104) = v8;
  v9 = *(v8 - 8);
  *(v4 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v11 = type metadata accessor for Table();
  *(v4 + 128) = v11;
  v12 = *(v11 - 8);
  *(v4 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v14 = type metadata accessor for Update();
  *(v4 + 152) = v14;
  v15 = *(v14 - 8);
  *(v4 + 160) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_10003C9B8, v3, 0);
}

uint64_t sub_10003C9B8()
{
  v1 = v0[7];
  v2 = sub_100026F50((v0[9] + 152), *(v0[9] + 176));
  v3 = *v2;
  v0[22] = *v2;

  return _swift_task_switch(sub_10003CA48, v3, 0);
}

uint64_t sub_10003CA48()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_10003CB44;
  v4 = *(v0 + 176);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10003CB44(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v7 = *(v3 + 176);
  if (v1)
  {
    v8 = sub_10003D008;
  }

  else
  {
    v8 = sub_10003CC78;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10003CC78()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 216);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v40 = *(v0 + 176);
    *(v1 + 216) = v4;
    if (qword_10016A2F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_10002FD14(*(v0 + 128), qword_1001732E8);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v12, qword_100173318);
  *(v0 + 16) = v11;
  *(v0 + 24) = v10;
  static Expression<A>.== infix<A>(_:_:)();
  sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
  QueryType.where(_:)();
  (*(v9 + 8))(v6, v8);
  if (qword_10016A340 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 192);
  v39 = *(v0 + 200);
  v14 = *(v0 + 168);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 128);
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  v20 = *(v0 + 80);
  v21 = *(v0 + 64);
  v22 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  sub_10002FD14(v22, qword_1001733D8);
  *(v0 + 32) = v21;
  *(v0 + 40) = 0;
  <- infix<A>(_:_:)();
  QueryType.update(_:_:)();
  (*(v18 + 8))(v19, v20);
  (*(v16 + 8))(v15, v17);
  Connection.run(_:)();
  v23 = *(v0 + 192);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

  v25 = *(v40 + 216);
  v3 = __OFSUB__(v25, 1);
  v26 = v25 - 1;
  v27 = v3;
  if (!v39)
  {
    if ((v27 & 1) == 0)
    {
      v34 = *(v0 + 168);
      v35 = *(v0 + 144);
      v36 = *(v0 + 120);
      v37 = *(v0 + 96);
      v38 = *(v0 + 56);
      *(v40 + 216) = v26;

      v33 = *(v0 + 8);
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    return result;
  }

  if (v27)
  {
    __break(1u);
    goto LABEL_21;
  }

  v28 = *(v0 + 56);
  *(v40 + 216) = v26;

  v29 = *(v0 + 168);
  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = *(v0 + 96);

  v33 = *(v0 + 8);
LABEL_15:

  return v33();
}

uint64_t sub_10003D008()
{
  v1 = v0[7];

  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10003D0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[13] = *v3;
  v5 = type metadata accessor for OSSignpostID();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003D198, v3, 0);
}

uint64_t sub_10003D198()
{
  v24 = v0;
  if (qword_10016A2E8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[11];
  v3 = type metadata accessor for OSSignposter();
  sub_10002FD14(v3, qword_10016AC28);

  static OSSignpostID.exclusive.getter();
  v4 = OSSignposter.logHandle.getter();
  v5 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = v0[17];
    v8 = v0[10];
    v7 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10006CB64(v8, v7, &v23);
    v11 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, v5, v11, "cachedCredential", "requestId=%s", v9, 0xCu);
    sub_100026FDC(v10);
  }

  v12 = v0[17];
  v13 = v0[14];
  v14 = v0[15];
  v15 = v0[11];
  v16 = v0[12];
  (*(v14 + 16))(v0[16], v12, v13);
  v17 = type metadata accessor for OSSignpostIntervalState();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v0[18] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v14 + 8))(v12, v13);
  v20 = sub_100026F50((v16 + 152), *(v16 + 176));
  sub_100026EEC(v16 + 312, (v0 + 2));
  v21 = *v20;
  v0[19] = v21;

  return _swift_task_switch(sub_10003D3E4, v21, 0);
}

uint64_t sub_10003D3E4()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_10003D4E0;
  v4 = *(v0 + 152);

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10003D4E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v7 = *(v3 + 152);
  if (v1)
  {
    v8 = sub_10003D720;
  }

  else
  {
    v8 = sub_10003D614;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10003D614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 152);
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(v3 + 168);
  v9 = *(v3 + 176);
  v10 = *(v3 + 104);
  v11 = *(v3 + 80);
  v12 = *(v3 + 88);
  *(v4 + 216) = v7;
  sub_10003D98C(v8, v11, v12, (v3 + 56));
  *(v3 + 184) = v9;
  v13 = *(v3 + 168);

  v14 = *(v4 + 216);
  v6 = __OFSUB__(v14, 1);
  v15 = v14 - 1;
  v16 = v6;
  if (v9)
  {
    if ((v16 & 1) == 0)
    {
      v17 = *(v3 + 88);
      *(v4 + 216) = v15;

      *(v3 + 208) = v9;
      v18 = *(v3 + 96);
      sub_100026FDC((v3 + 16));
      v19 = sub_10003D8F0;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v16)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v20 = *(v3 + 88);
  v18 = *(v3 + 96);
  *(v4 + 216) = v15;

  *(v3 + 192) = *(v3 + 56);
  sub_100026FDC((v3 + 16));
  v19 = sub_10003D79C;
LABEL_10:
  a1 = v19;
  a2 = v18;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10003D720()
{
  v1 = v0[11];

  v0[26] = v0[22];
  v2 = v0[12];
  sub_100026FDC(v0 + 2);

  return _swift_task_switch(sub_10003D8F0, v2, 0);
}

uint64_t sub_10003D79C()
{
  if (v0[25])
  {
    v2 = v0[23];
    v1 = v0[24];
    v3 = v0[9];
    AccessCredential.init(from:)();
    if (v2)
    {
      v4 = v0[17];
      v5 = v0[18];
      v6 = v0[16];
      sub_100042820("cachedCredential", 16, 2);

      v7 = v0[1];
      goto LABEL_7;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  v12 = v0[9];
  v13 = type metadata accessor for AccessCredential();
  (*(*(v13 - 8) + 56))(v12, v8, 1, v13);
  sub_100042820("cachedCredential", 16, 2);

  v7 = v0[1];
LABEL_7:

  return v7();
}

uint64_t sub_10003D8F0()
{
  v1 = v0[26];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  sub_100042820("cachedCredential", 16, 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003D98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v88 = a2;
  v86 = a1;
  v79 = a4;
  v73 = type metadata accessor for Date();
  v72 = *(v73 - 8);
  v5 = *(v72 + 64);
  __chkstk_darwin(v73);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v78 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v85 = &v70 - v12;
  v13 = type metadata accessor for Row();
  v80 = *(v13 - 8);
  v81 = v13;
  v14 = *(v80 + 64);
  __chkstk_darwin(v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v83 = *(v17 - 8);
  v84 = v17;
  v18 = *(v83 + 64);
  __chkstk_darwin(v17);
  v20 = &v70 - v19;
  v21 = type metadata accessor for Table();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v95 = &v70 - v27;
  if (qword_10016A2F0 != -1)
  {
    swift_once();
  }

  v77 = v16;
  v82 = sub_10002FD14(v21, qword_1001732E8);
  if (qword_10016A308 != -1)
  {
    swift_once();
  }

  v89 = a3;
  v90 = v21;
  v28 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v29 = sub_10002FD14(v28, qword_100173330);
  v93 = v28;
  v94 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
  v30 = sub_100042BAC(&v91);
  v31 = *(*(v28 - 8) + 16);
  v75 = v29;
  v31(v30, v29, v28);
  sub_100026F94(&qword_10016AD50, &qword_100130C90);
  v32 = swift_allocObject();
  v76 = xmmword_10012FA10;
  *(v32 + 16) = xmmword_10012FA10;
  if (qword_10016A310 != -1)
  {
    swift_once();
  }

  v33 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  v34 = sub_10002FD14(v33, qword_100173348);
  *(v32 + 56) = v33;
  *(v32 + 64) = sub_10002B95C(&qword_10016AE00, &qword_10016ADB0, &unk_100130CD0);
  v35 = sub_100042BAC((v32 + 32));
  v36 = *(*(v33 - 8) + 16);
  v74 = v34;
  v36(v35, v34, v33);
  sub_100042C10(&qword_10016AD68, &type metadata accessor for Table);
  v37 = v90;
  SchemaType.select(_:_:)();

  sub_100026FDC(&v91);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v28, qword_100173318);
  v91 = *&v88;
  v92 = v89;
  static Expression<A>.== infix<A>(_:_:)();
  v38 = sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
  v39 = v95;
  QueryType.where(_:)();
  (*(v83 + 8))(v20, v84);
  v40 = *(v22 + 8);
  v40(v26, v37);
  v93 = v37;
  v94 = v38;
  v41 = sub_100042BAC(&v91);
  (*(v22 + 16))(v41, v39, v37);
  v42 = v85;
  v43 = v87;
  Connection.pluck(_:)();
  if (v43)
  {
    v40(v39, v37);
    return sub_100026FDC(&v91);
  }

  sub_100026FDC(&v91);
  v45 = v80;
  v46 = v42;
  v47 = v42;
  v48 = v81;
  if ((*(v80 + 48))(v46, 1, v81) == 1)
  {
    sub_10002BA6C(v47, &qword_10016AD38, &qword_1001332F0);
    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for OSLogger();
    sub_10002FD14(v49, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v50 = *(type metadata accessor for LogMessage() - 8);
    v51 = *(v50 + 72);
    v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    *(swift_allocObject() + 16) = v76;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v53._countAndFlagsBits = 0xD00000000000002ALL;
    v53._object = 0x800000010013A1A0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v53);
    v93 = &type metadata for String;
    v91 = *&v88;
    v92 = v89;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v91, &qword_10016AB10, &unk_100130B10);
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v54);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

LABEL_15:
    result = v40(v95, v90);
    v55 = v79;
    *v79 = 0;
    v55[1] = 0;
    return result;
  }

  v56 = v77;
  (*(v45 + 32))(v77, v47, v48);
  Row.get<A>(_:)();
  v57 = *&v91;
  v58 = v92;
  Row.get<A>(_:)();
  v59 = v91;
  v60 = v71;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v62 = v61;
  (*(v72 + 8))(v60, v73);
  if (v59 <= v62)
  {

    if (qword_10016A2E0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for OSLogger();
    sub_10002FD14(v64, qword_10016AC10);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v65 = *(type metadata accessor for LogMessage() - 8);
    v66 = *(v65 + 72);
    v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    *(swift_allocObject() + 16) = v76;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v68._object = 0x800000010013A1D0;
    v68._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v68);
    v93 = &type metadata for String;
    v91 = *&v88;
    v92 = v89;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v91, &qword_10016AB10, &unk_100130B10);
    v69._countAndFlagsBits = 0x6970786520736920;
    v69._object = 0xEB00000000646572;
    LogMessage.StringInterpolation.appendLiteral(_:)(v69);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    (*(v80 + 8))(v77, v81);
    goto LABEL_15;
  }

  (*(v80 + 8))(v56, v81);
  result = v40(v95, v37);
  v63 = v79;
  *v79 = v57;
  v63[1] = v58;
  return result;
}

uint64_t sub_10003E568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 192) = a4;
  *(v6 + 200) = v5;
  *(v6 + 89) = a5;
  *(v6 + 176) = a2;
  *(v6 + 184) = a3;
  *(v6 + 168) = a1;
  v7 = type metadata accessor for OnConflict();
  *(v6 + 208) = v7;
  v8 = *(v7 - 8);
  *(v6 + 216) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  v10 = type metadata accessor for Insert();
  *(v6 + 232) = v10;
  v11 = *(v10 - 8);
  *(v6 + 240) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v13 = type metadata accessor for DataDeletionTrigger();
  *(v6 + 272) = v13;
  v14 = *(v13 - 8);
  *(v6 + 280) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  v16 = sub_100026F94(&qword_10016AD40, &qword_100130C88);
  *(v6 + 296) = v16;
  v17 = *(v16 - 8);
  *(v6 + 304) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 312) = swift_task_alloc();
  v19 = *(*(sub_100026F94(&qword_10016AE40, &unk_100130D60) - 8) + 64) + 15;
  *(v6 + 320) = swift_task_alloc();
  v20 = type metadata accessor for ForwardDeletionRules();
  *(v6 + 328) = v20;
  v21 = *(v20 - 8);
  *(v6 + 336) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 344) = swift_task_alloc();
  v23 = type metadata accessor for MonotonicTime();
  *(v6 + 352) = v23;
  v24 = *(v23 - 8);
  *(v6 + 360) = v24;
  v25 = *(v24 + 64) + 15;
  *(v6 + 368) = swift_task_alloc();
  v26 = type metadata accessor for Setter();
  *(v6 + 376) = v26;
  v27 = *(v26 - 8);
  *(v6 + 384) = v27;
  v28 = *(v27 + 64) + 15;
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_10003E8F4, v5, 0);
}

uint64_t sub_10003E8F4()
{
  v1 = sub_100026F50((*(v0 + 200) + 152), *(*(v0 + 200) + 176));
  v2 = *v1;
  *(v0 + 440) = *v1;

  return _swift_task_switch(sub_10003E968, v2, 0);
}

uint64_t sub_10003E968()
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v2 = sub_10002FD14(v1, qword_10016B3A0);
  v0[56] = v2;
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_10003EA68;
  v4 = v0[55];

  return sub_100050F58(v2, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10003EA68(uint64_t a1)
{
  v3 = *(*v2 + 456);
  v4 = *v2;
  v4[58] = a1;
  v4[59] = v1;

  if (v1)
  {
    v6 = v4[53];
    v5 = v4[54];
    v8 = v4[51];
    v7 = v4[52];
    v10 = v4[49];
    v9 = v4[50];
    v11 = v4[46];
    v12 = v4[43];
    v17 = v4[40];
    v18 = v4[39];
    v19 = v4[36];
    v20 = v4[33];
    v21 = v4[32];
    v22 = v4[31];
    v13 = v4[28];

    v14 = v4[1];

    return v14();
  }

  else
  {
    v16 = v4[55];

    return _swift_task_switch(sub_10003EC74, v16, 0);
  }
}

uint64_t sub_10003EC74()
{
  v1 = v0[55];
  v2 = *(v1 + 216);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 216) = v4;
    if (qword_10016A2F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = v0[58];
  v5 = v0[59];
  v7 = type metadata accessor for Table();
  v0[60] = v7;
  v0[61] = sub_10002FD14(v7, qword_1001732E8);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  v8 = v0[58];
  if (!v5)
  {

    v25 = *(v1 + 216);
    v3 = __OFSUB__(v25, 1);
    v26 = v25 - 1;
    if (!v3)
    {
      v10 = v0[25];
      *(v1 + 216) = v26;
      v9 = sub_10003EEEC;
      v11 = 0;

      return _swift_task_switch(v9, v10, v11);
    }

LABEL_15:
    __break(1u);
    return _swift_task_switch(v9, v10, v11);
  }

  v12 = *(v1 + 216);
  v3 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v1 + 216) = v13;
  v15 = v0[53];
  v14 = v0[54];
  v17 = v0[51];
  v16 = v0[52];
  v19 = v0[49];
  v18 = v0[50];
  v20 = v0[46];
  v21 = v0[43];
  v22 = v0[40];
  v27 = v0[39];
  v28 = v0[36];
  v29 = v0[33];
  v30 = v0[32];
  v31 = v0[31];
  v32 = v0[28];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10003EEEC()
{
  v1 = v0;
  v2 = *(v0 + 384);
  sub_100026F94(&qword_10016ADE8, &qword_1001318A0);
  v3 = *(v2 + 72);
  *(v0 + 496) = v3;
  v4 = *(v2 + 80);
  *(v0 + 92) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100130BB0;
  v128 = v5;
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 184);
  v8 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v8, qword_100173318);
  *(v0 + 16) = AccessCredential.requestId.getter();
  *(v0 + 24) = v9;
  <- infix<A>(_:_:)();

  if (qword_10016A310 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 184);
  v11 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FD14(v11, qword_100173348);
  AccessCredential.expiresAt.getter();
  *(v0 + 144) = v12;
  <- infix<A>(_:_:)();
  if (qword_10016A308 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 176);
  v13 = *(v1 + 184);
  v15 = *(v1 + 168);
  sub_10002FD14(v8, qword_100173330);
  *(v1 + 32) = v15;
  *(v1 + 40) = v14;
  <- infix<A>(_:_:)();
  v130 = v1;
  if (AccessCredential.isRateLimited.getter())
  {
    if (qword_10016A330 != -1)
    {
      swift_once();
    }

    v16 = *(v1 + 432);
    v17 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
    sub_10002FD14(v17, qword_1001733A8);
    *(v1 + 96) = 1;
    *(v1 + 104) = 0;
    <- infix<A>(_:_:)();
    v19 = *(v6 + 16);
    v18 = *(v6 + 24);
    if (v19 >= v18 >> 1)
    {
      v6 = sub_10007E02C(v18 > 1, v19 + 1, 1, v6);
    }

    v20 = *(v1 + 432);
    v21 = *(v1 + 376);
    v22 = *(v1 + 384);
    *(v6 + 16) = v19 + 1;
    v126 = *(v22 + 32);
    v126(v6 + v128 + v19 * v3, v20, v21);
    if (qword_10016A338 != -1)
    {
      swift_once();
    }

    v23 = *(v1 + 424);
    v25 = *(v1 + 360);
    v24 = *(v1 + 368);
    v26 = *(v1 + 352);
    v27 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
    sub_10002FD14(v27, qword_1001733C0);
    static MonotonicTime.now.getter();
    MonotonicTime.timeInterval.getter();
    v29 = v28;
    (*(v25 + 8))(v24, v26);
    *(v1 + 112) = v29;
    *(v1 + 120) = 0;
    <- infix<A>(_:_:)();
    v31 = *(v6 + 16);
    v30 = *(v6 + 24);
    if (v31 >= v30 >> 1)
    {
      v6 = sub_10007E02C(v30 > 1, v31 + 1, 1, v6);
    }

    v32 = *(v1 + 424);
    v33 = *(v1 + 376);
    *(v6 + 16) = v31 + 1;
    v126(v6 + v128 + v31 * v3, v32, v33);
    if (qword_10016A340 != -1)
    {
      swift_once();
    }

    v34 = *(v1 + 416);
    sub_10002FD14(v27, qword_1001733D8);
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
    <- infix<A>(_:_:)();
    v36 = *(v6 + 16);
    v35 = *(v6 + 24);
    if (v36 >= v35 >> 1)
    {
      v6 = sub_10007E02C(v35 > 1, v36 + 1, 1, v6);
    }

    v37 = *(v1 + 416);
    v38 = *(v1 + 376);
    *(v6 + 16) = v36 + 1;
    v126(v6 + v128 + v36 * v3, v37, v38);
  }

  v39 = *(v1 + 328);
  v40 = *(v1 + 336);
  v41 = *(v1 + 320);
  v42 = *(v1 + 184);
  AccessCredential.forwardDeletionRules.getter();
  if ((*(v40 + 48))(v41, 1, v39) == 1)
  {
    sub_10002BA6C(*(v1 + 320), &qword_10016AE40, &unk_100130D60);
    v43 = *(v1 + 184);
    v44 = *(AccessCredential.dataDeletionTriggers.getter() + 16);

    if (v44)
    {
      if (qword_10016A328 != -1)
      {
        swift_once();
      }

      v125 = v6;
      v45 = *(v1 + 304);
      v46 = *(v1 + 312);
      v47 = *(v1 + 296);
      v48 = *(v1 + 184);
      v49 = sub_10002FD14(v47, qword_100173390);
      (*(v45 + 16))(v46, v49, v47);
      v50 = AccessCredential.dataDeletionTriggers.getter();
      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = *(v1 + 280);
        sub_10007E9EC(0, v51, 0);
        v53 = *(v52 + 16);
        v52 += 16;
        v54 = v50 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
        v127 = *(v52 + 56);
        v129 = v53;
        v55 = (v52 - 8);
        do
        {
          v56 = *(v1 + 288);
          v57 = *(v1 + 272);
          v129(v56, v54, v57);
          v58 = DataDeletionTrigger.name.getter();
          v60 = v59;
          (*v55)(v56, v57);
          v62 = _swiftEmptyArrayStorage[2];
          v61 = _swiftEmptyArrayStorage[3];
          if (v62 >= v61 >> 1)
          {
            sub_10007E9EC((v61 > 1), v62 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v62 + 1;
          v63 = &_swiftEmptyArrayStorage[2 * v62];
          v63[4] = v58;
          v63[5] = v60;
          v54 += v127;
          --v51;
          v1 = v130;
        }

        while (v51);
      }

      v96 = *(v1 + 392);
      v97 = *(v1 + 304);
      v98 = *(v1 + 312);
      v99 = *(v1 + 296);
      *(v1 + 152) = _swiftEmptyArrayStorage;
      sub_100026F94(&qword_10016AB28, &qword_100131390);
      sub_10002B95C(&qword_10016AB30, &qword_10016AB28, &qword_100131390);
      v100 = BidirectionalCollection<>.joined(separator:)();
      v102 = v101;

      *(v1 + 48) = v100;
      *(v1 + 56) = v102;
      <- infix<A>(_:_:)();

      (*(v97 + 8))(v98, v99);
      v103 = v125;
      v105 = v125[2];
      v104 = v125[3];
      if (v105 >= v104 >> 1)
      {
        v103 = sub_10007E02C(v104 > 1, v105 + 1, 1, v125);
      }

      v106 = *(v1 + 92);
      v107 = *(v1 + 496);
      v109 = *(v1 + 384);
      v108 = *(v1 + 392);
      v110 = *(v1 + 376);
      *(v103 + 16) = v105 + 1;
      (*(v109 + 32))(v103 + ((v106 + 32) & ~v106) + v107 * v105, v108, v110);
    }

    v112 = *(v1 + 480);
    v111 = *(v1 + 488);
    v113 = *(v1 + 256);
    if (*(v1 + 89) == 1)
    {
      v114 = *(v1 + 216);
      v115 = *(v1 + 224);
      v116 = *(v1 + 208);
      (*(v114 + 104))(v115, enum case for OnConflict.ignore(_:), v116);
      sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
      QueryType.insert(or:_:)();

      (*(v114 + 8))(v115, v116);
    }

    else
    {
      sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
      QueryType.insert(_:)();
    }

    v117 = *(v1 + 264);
    v119 = *(v1 + 240);
    v118 = *(v1 + 248);
    v120 = *(v1 + 232);
    v121 = *(v1 + 200);
    (*(v119 + 32))(v117, *(v1 + 256), v120);
    v122 = sub_100026F50((v121 + 152), *(v121 + 176));
    (*(v119 + 16))(v118, v117, v120);
    *(v1 + 528) = *v122;
    v123 = swift_task_alloc();
    *(v1 + 536) = v123;
    *v123 = v1;
    v123[1] = sub_10004034C;
    v124 = *(v1 + 448);

    return sub_100050F58(v124, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
  }

  else
  {
    v64 = v6;
    (*(*(v1 + 336) + 32))(*(v1 + 344), *(v1 + 320), *(v1 + 328));
    if (qword_10016A318 != -1)
    {
      swift_once();
    }

    v65 = *(v1 + 408);
    v66 = *(v1 + 344);
    sub_10002FD14(*(v1 + 296), qword_100173360);
    *(v1 + 160) = ForwardDeletionRules.bundleIds.getter();
    sub_100026F94(&qword_10016AB28, &qword_100131390);
    sub_10002B95C(&qword_10016AB30, &qword_10016AB28, &qword_100131390);
    v67 = BidirectionalCollection<>.joined(separator:)();
    v69 = v68;

    *(v1 + 64) = v67;
    *(v1 + 72) = v69;
    <- infix<A>(_:_:)();

    v70 = v64;
    v72 = v64[2];
    v71 = v64[3];
    if (v72 >= v71 >> 1)
    {
      v70 = sub_10007E02C(v71 > 1, v72 + 1, 1, v64);
    }

    v73 = *(v1 + 408);
    v74 = *(v1 + 376);
    v75 = *(v1 + 384);
    *(v70 + 16) = v72 + 1;
    v76 = v70;
    v77 = *(v75 + 32);
    v77(v70 + v128 + v72 * v3, v73, v74);
    if (qword_10016A320 != -1)
    {
      swift_once();
    }

    v78 = *(v1 + 400);
    v79 = *(v1 + 344);
    v80 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
    sub_10002FD14(v80, qword_100173378);
    ForwardDeletionRules.retentionInterval.getter();
    *(v1 + 80) = v81;
    *(v1 + 88) = 0;
    <- infix<A>(_:_:)();
    v83 = v76[2];
    v82 = v76[3];
    v84 = v76;
    if (v83 >= v82 >> 1)
    {
      v84 = sub_10007E02C(v82 > 1, v83 + 1, 1, v76);
    }

    *(v1 + 504) = v84;
    v85 = *(v1 + 400);
    v86 = *(v1 + 376);
    v88 = *(v1 + 192);
    v87 = *(v1 + 200);
    *(v84 + 16) = v83 + 1;
    v77(v84 + v128 + v83 * v3, v85, v86);
    v89 = sub_100026F50((v87 + 192), *(v87 + 216));
    v91 = *v88;
    v90 = v88[1];
    v92 = *v89;
    v93 = swift_task_alloc();
    *(v1 + 512) = v93;
    *v93 = v1;
    v93[1] = sub_10003FBBC;
    v94 = *(v1 + 344);

    return sub_10005A90C(v91, v90, v94);
  }
}

uint64_t sub_10003FBBC()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v9 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = *(v2 + 504);
    v5 = *(v2 + 200);

    v6 = sub_100040208;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 200);
    v6 = sub_10003FCE4;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10003FCE4()
{
  v1 = v0;
  (*(v0[42] + 8))(v0[43], v0[41]);
  v2 = v0[63];
  v3 = v0[23];
  v4 = *(AccessCredential.dataDeletionTriggers.getter() + 16);

  if (v4)
  {
    if (qword_10016A328 != -1)
    {
      swift_once();
    }

    v55 = v2;
    v5 = v0[38];
    v6 = v1[39];
    v7 = v1[37];
    v8 = v1[23];
    v9 = sub_10002FD14(v7, qword_100173390);
    (*(v5 + 16))(v6, v9, v7);
    v10 = AccessCredential.dataDeletionTriggers.getter();
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v1[35];
      sub_10007E9EC(0, v11, 0);
      v13 = *(v12 + 16);
      v12 += 16;
      v14 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v56 = *(v12 + 56);
      v57 = v13;
      v15 = (v12 - 8);
      do
      {
        v16 = v1[36];
        v17 = v1;
        v18 = v1[34];
        v57(v16, v14, v18);
        v19 = DataDeletionTrigger.name.getter();
        v21 = v20;
        (*v15)(v16, v18);
        v23 = _swiftEmptyArrayStorage[2];
        v22 = _swiftEmptyArrayStorage[3];
        if (v23 >= v22 >> 1)
        {
          sub_10007E9EC((v22 > 1), v23 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v23 + 1;
        v24 = &_swiftEmptyArrayStorage[2 * v23];
        v24[4] = v19;
        v24[5] = v21;
        v14 += v56;
        --v11;
        v1 = v17;
      }

      while (v11);
    }

    v25 = v1[49];
    v26 = v1[38];
    v27 = v1[39];
    v28 = v1[37];
    v1[19] = _swiftEmptyArrayStorage;
    sub_100026F94(&qword_10016AB28, &qword_100131390);
    sub_10002B95C(&qword_10016AB30, &qword_10016AB28, &qword_100131390);
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;

    v1[6] = v29;
    v1[7] = v31;
    <- infix<A>(_:_:)();

    (*(v26 + 8))(v27, v28);
    v32 = v55;
    v34 = v55[2];
    v33 = v55[3];
    if (v34 >= v33 >> 1)
    {
      v32 = sub_10007E02C(v33 > 1, v34 + 1, 1, v55);
    }

    v35 = *(v1 + 92);
    v36 = v1[62];
    v38 = v1[48];
    v37 = v1[49];
    v39 = v1[47];
    *(v32 + 16) = v34 + 1;
    (*(v38 + 32))(v32 + ((v35 + 32) & ~v35) + v36 * v34, v37, v39);
  }

  v41 = v1[60];
  v40 = v1[61];
  v42 = v1[32];
  if (*(v1 + 89) == 1)
  {
    v43 = v1[27];
    v44 = v1[28];
    v45 = v1[26];
    (*(v43 + 104))(v44, enum case for OnConflict.ignore(_:), v45);
    sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
    QueryType.insert(or:_:)();

    (*(v43 + 8))(v44, v45);
  }

  else
  {
    sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
    QueryType.insert(_:)();
  }

  v46 = v1[33];
  v48 = v1[30];
  v47 = v1[31];
  v49 = v1[29];
  v50 = v1[25];
  (*(v48 + 32))(v46, v1[32], v49);
  v51 = sub_100026F50((v50 + 152), *(v50 + 176));
  (*(v48 + 16))(v47, v46, v49);
  v1[66] = *v51;
  v52 = swift_task_alloc();
  v1[67] = v52;
  *v52 = v1;
  v52[1] = sub_10004034C;
  v53 = v1[56];

  return sub_100050F58(v53, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_100040208()
{
  (*(v0[42] + 8))(v0[43], v0[41]);
  v2 = v0[53];
  v1 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[39];
  v10 = v0[40];
  v13 = v0[36];
  v14 = v0[33];
  v15 = v0[32];
  v16 = v0[31];
  v17 = v0[28];
  v18 = v0[65];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10004034C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 536);
  v6 = *v2;
  *(v4 + 544) = a1;
  *(v4 + 552) = v1;

  v7 = *(v3 + 528);
  if (v1)
  {
    v8 = sub_1000406E8;
  }

  else
  {
    v8 = sub_100040484;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100040484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[66];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v3[69];
  v9 = v3[68];
  v10 = v3[31];
  *(v4 + 216) = v7;
  Connection.run(_:)();
  v11 = v3[68];

  v12 = *(v4 + 216);
  v6 = __OFSUB__(v12, 1);
  v13 = v12 - 1;
  v14 = v6;
  if (v8)
  {
    if ((v14 & 1) == 0)
    {
      *(v4 + 216) = v13;
      v3[72] = v8;
      v16 = v3[30];
      v15 = v3[31];
      v17 = v3[29];
      v18 = v3[25];
      v19 = *(v16 + 8);
      v3[73] = v19;
      v3[74] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v19(v15, v17);
      v20 = sub_10004077C;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  if (v14)
  {
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v22 = v3[30];
  v21 = v3[31];
  v23 = v3[29];
  v18 = v3[25];
  *(v4 + 216) = v13;
  v24 = *(v22 + 8);
  v3[70] = v24;
  v3[71] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v21, v23);
  v20 = sub_1000405B0;
LABEL_10:
  a1 = v20;
  a2 = v18;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1000405B0()
{
  v1 = *(v0 + 568);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v7 = *(v0 + 392);
  v6 = *(v0 + 400);
  v8 = *(v0 + 368);
  v9 = *(v0 + 344);
  v13 = *(v0 + 320);
  v14 = *(v0 + 312);
  v15 = *(v0 + 288);
  v16 = *(v0 + 256);
  v10 = *(v0 + 248);
  v17 = *(v0 + 224);
  (*(v0 + 560))(*(v0 + 264), *(v0 + 232));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000406E8()
{
  v0[72] = v0[69];
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[25];
  v5 = *(v2 + 8);
  v0[73] = v5;
  v0[74] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);

  return _swift_task_switch(sub_10004077C, v4, 0);
}

uint64_t sub_10004077C()
{
  v1 = *(v0 + 592);
  (*(v0 + 584))(*(v0 + 264), *(v0 + 232));
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v7 = *(v0 + 392);
  v6 = *(v0 + 400);
  v8 = *(v0 + 368);
  v9 = *(v0 + 344);
  v10 = *(v0 + 312);
  v11 = *(v0 + 320);
  v14 = *(v0 + 288);
  v15 = *(v0 + 264);
  v16 = *(v0 + 256);
  v17 = *(v0 + 248);
  v18 = *(v0 + 224);
  v19 = *(v0 + 576);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000408BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v45 = a2;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v37[1] = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v10 = v37 - v9;
  v11 = type metadata accessor for Table();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100026F94(&qword_10016AD10, &qword_100132950);
  v42 = *(v16 - 8);
  v43 = v16;
  v17 = *(v42 + 64);
  __chkstk_darwin(v16);
  v41 = v37 - v18;
  if (qword_10016A2F8 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v11, qword_100173300);
  sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
  v19._countAndFlagsBits = QueryType.name.getter();
  v40 = a1;
  v20 = Connection.tableExists(_:)(v19);

  if (v20)
  {
    v22 = v12;
    if (qword_10016A300 != -1)
    {
      swift_once();
    }

    v23 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
    sub_10002FD14(v23, qword_100173318);
    v24 = v44;
    v46 = v45;
    v47 = v44;
    static Expression<A>.== infix<A>(_:_:)();
    QueryType.where(_:)();
    (*(v38 + 8))(v10, v39);
    v25 = v41;
    QueryType.exists.getter();
    (*(v22 + 8))(v15, v11);
    v26 = v49;
    Connection.scalar<A>(_:)();
    if (v26 || v46 != 1)
    {
      return (*(v42 + 8))(v25, v43);
    }

    else
    {
      if (qword_10016A2E0 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for OSLogger();
      sub_10002FD14(v27, qword_10016AC10);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v28 = *(type metadata accessor for LogMessage() - 8);
      v29 = *(v28 + 72);
      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v31._object = 0x800000010013A400;
      v31._countAndFlagsBits = 0xD00000000000001FLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      v48 = &type metadata for String;
      v32 = v45;
      v46 = v45;
      v47 = v24;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v46, &qword_10016AB10, &unk_100130B10);
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      LogMessage.init(stringInterpolation:)();
      Logger.error(_:)();

      v34 = type metadata accessor for AccessCredential.Error();
      sub_100042C10(&qword_10016AB18, &type metadata accessor for AccessCredential.Error);
      swift_allocError();
      *v35 = v32;
      v35[1] = v24;
      (*(*(v34 - 8) + 104))(v35, enum case for AccessCredential.Error.revokedCredential(_:), v34);
      swift_willThrow();
      v36 = *(v42 + 8);

      return v36(v25, v43);
    }
  }

  return result;
}

uint64_t sub_100040EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a3;
  v64 = a2;
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v62 = v51 - v13;
  v61 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v59 = *(v61 - 8);
  v14 = *(v59 + 64);
  __chkstk_darwin(v61);
  v58 = v51 - v15;
  v16 = type metadata accessor for Table();
  v60 = *(v16 - 8);
  v17 = *(v60 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v63 = v51 - v21;
  if (qword_10016A2F0 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v16, qword_1001732E8);
  default argument 0 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  default argument 2 of Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v4)
  {
  }

  v57 = 0;
  v51[1] = v10;
  v52 = a4;

  if (qword_10016A308 != -1)
  {
    swift_once();
  }

  v56 = a1;
  v23 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  v24 = sub_10002FD14(v23, qword_100173330);
  v67 = v23;
  v55 = sub_10002B95C(&qword_10016ADA8, &qword_10016AD28, &unk_1001318C0);
  v68 = v55;
  v25 = sub_100042BAC(&v65);
  v26 = *(v23 - 8);
  v27 = *(v26 + 16);
  v53 = v26 + 16;
  v54 = v27;
  v27(v25, v24, v23);
  sub_100026F94(&qword_10016AD50, &qword_100130C90);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100130B20;
  if (qword_10016A310 != -1)
  {
    swift_once();
  }

  v29 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  v30 = sub_10002FD14(v29, qword_100173348);
  *(v28 + 56) = v29;
  *(v28 + 64) = sub_10002B95C(&qword_10016AE00, &qword_10016ADB0, &unk_100130CD0);
  v31 = sub_100042BAC((v28 + 32));
  (*(*(v29 - 8) + 16))(v31, v30, v29);
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v32 = sub_10002FD14(v23, qword_100173318);
  v33 = v55;
  *(v28 + 96) = v23;
  *(v28 + 104) = v33;
  v34 = sub_100042BAC((v28 + 72));
  v54(v34, v32, v23);
  sub_100042C10(&qword_10016AD68, &type metadata accessor for Table);
  SchemaType.select(_:_:)();

  sub_100026FDC(&v65);
  v65 = v64;
  v66 = v69;
  v35 = v58;
  static Expression<A>.== infix<A>(_:_:)();
  v36 = sub_100042C10(&qword_10016AD20, &type metadata accessor for Table);
  v37 = v63;
  QueryType.where(_:)();
  (*(v59 + 8))(v35, v61);
  v38 = v60;
  v39 = *(v60 + 8);
  v39(v20, v16);
  v67 = v16;
  v68 = v36;
  v40 = sub_100042BAC(&v65);
  (*(v38 + 16))(v40, v37, v16);
  v41 = v62;
  v42 = v57;
  Connection.pluck(_:)();
  if (v42)
  {
    v39(v37, v16);
    return sub_100026FDC(&v65);
  }

  else
  {
    sub_100026FDC(&v65);
    v43 = type metadata accessor for Row();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v41, 1, v43) == 1)
    {
      v57 = 0;
      sub_10002BA6C(v41, &qword_10016AD38, &qword_1001332F0);
      if (qword_10016A2E0 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for OSLogger();
      v61 = sub_10002FD14(v62, qword_10016AC10);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v45 = *(type metadata accessor for LogMessage() - 8);
      v46 = *(v45 + 72);
      v60 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      v47 = 1;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v48._object = 0x800000010013A3E0;
      v48._countAndFlagsBits = 0xD00000000000001ELL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      v67 = &type metadata for String;
      v65 = v64;
      v66 = v69;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v65, &qword_10016AB10, &unk_100130B10);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v49);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v39(v63, v16);
      v50 = v52;
    }

    else
    {
      v39(v37, v16);
      v50 = v52;
      (*(v44 + 32))(v52, v41, v43);
      v47 = 0;
    }

    return (*(v44 + 56))(v50, v47, 1, v43);
  }
}

uint64_t sub_10004181C()
{
  sub_100026FDC(v0 + 14);
  sub_100026FDC(v0 + 19);
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 34);
  sub_100026FDC(v0 + 39);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000418A0()
{
  v0 = sub_100026F94(&qword_10016AE28, &qword_100130D48);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v41 = &v37 - v2;
  v3 = sub_100026F94(&qword_10016AE30, &unk_100130D50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v37 - v5;
  v7 = sub_100026F94(&qword_10016ADF0, &unk_100130CF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v37 - v13;
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v15 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v15, qword_100173318);
  v16 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v18(v14, 1, 1, v16);
  v20 = *(v15 - 8);
  v42 = *(v20 + 56);
  v43 = v15;
  v49 = (v20 + 56);
  v42(v10, 1, 1, v15);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_10002BA6C(v10, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v14, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A310 != -1)
  {
    swift_once();
  }

  v21 = sub_100026F94(&qword_10016ADB0, &unk_100130CD0);
  sub_10002FD14(v21, qword_100173348);
  v18(v14, 1, 1, v16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v50 = v21;
  v44 = v22 + 56;
  v45 = v23;
  v23(v6, 1, 1, v21);
  v47 = v19;
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v46 = v6;
  sub_10002BA6C(v6, &qword_10016AE30, &unk_100130D50);
  sub_10002BA6C(v14, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A308 != -1)
  {
    swift_once();
  }

  v24 = v43;
  sub_10002FD14(v43, qword_100173330);
  v18(v14, 1, 1, v16);
  v25 = v42;
  v42(v10, 1, 1, v24);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v10, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v14, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A318 != -1)
  {
    swift_once();
  }

  v38 = sub_100026F94(&qword_10016AD40, &qword_100130C88);
  sub_10002FD14(v38, qword_100173360);
  v18(v14, 1, 1, v16);
  v25(v10, 1, 1, v24);
  v48 = v16;
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  v39 = v10;
  sub_10002BA6C(v10, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v14, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A320 != -1)
  {
    swift_once();
  }

  v40 = sub_100026F94(&qword_10016AD58, &qword_100130C98);
  sub_10002FD14(v40, qword_100173378);
  v18(v14, 1, 1, v48);
  v26 = v46;
  v45(v46, 1, 1, v50);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v26, &qword_10016AE30, &unk_100130D50);
  sub_10002BA6C(v14, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A328 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v38, qword_100173390);
  v27 = v48;
  v18(v14, 1, 1, v48);
  v28 = v39;
  v42(v39, 1, 1, v43);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v28, &qword_10016ADF0, &unk_100130CF0);
  sub_10002BA6C(v14, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A330 != -1)
  {
    swift_once();
  }

  v29 = sub_100026F94(&qword_10016AE08, &qword_100130D18);
  sub_10002FD14(v29, qword_1001733A8);
  v18(v14, 1, 1, v27);
  v30 = sub_100026F94(&qword_10016AE38, &unk_1001333A0);
  v31 = v41;
  (*(*(v30 - 8) + 56))(v41, 1, 1, v30);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v31, &qword_10016AE28, &qword_100130D48);
  sub_10002BA6C(v14, &qword_10016ADF8, &unk_1001312B0);
  v49 = v18;
  v32 = v50;
  v33 = v40;
  if (qword_10016A338 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v33, qword_1001733C0);
  v49(v14, 1, 1, v27);
  v35 = v45;
  v34 = v46;
  v45(v46, 1, 1, v32);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v34, &qword_10016AE30, &unk_100130D50);
  sub_10002BA6C(v14, &qword_10016ADF8, &unk_1001312B0);
  if (qword_10016A340 != -1)
  {
    swift_once();
  }

  sub_10002FD14(v33, qword_1001733D8);
  v49(v14, 1, 1, v48);
  v35(v34, 1, 1, v50);
  default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10002BA6C(v34, &qword_10016AE30, &unk_100130D50);
  return sub_10002BA6C(v14, &qword_10016ADF8, &unk_1001312B0);
}

uint64_t sub_10004236C()
{
  v0 = sub_100026F94(&qword_10016ADF0, &unk_100130CF0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_100026F94(&qword_10016ADF8, &unk_1001312B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  if (qword_10016A300 != -1)
  {
    swift_once();
  }

  v8 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  sub_10002FD14(v8, qword_100173318);
  v9 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_10002BA6C(v3, &qword_10016ADF0, &unk_100130CF0);
  return sub_10002BA6C(v7, &qword_10016ADF8, &unk_1001312B0);
}

uint64_t sub_100042578()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_100026FDC(v0 + 4);
  v2 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000425C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100042680;

  return sub_100094AB0(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_100042680()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100042774(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100042820(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A2E8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016AC28);
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

unint64_t sub_100042B50()
{
  result = qword_10016AE20;
  if (!qword_10016AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AE20);
  }

  return result;
}

uint64_t *sub_100042BAC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100042C10(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_100042CB0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100042D18()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100042D68()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100042DCC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_100042E70()
{
  if (qword_10016A638 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_1001737A8, &unk_10016AEE8);
}

uint64_t sub_100042EC8()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016AF10);
  v1 = sub_10002FD14(v0, qword_10016AF10);
  if (qword_10016A538 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100042F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[127] = v6;
  v7[126] = a6;
  v7[125] = a5;
  v7[124] = a4;
  v7[123] = a3;
  v7[122] = a2;
  v7[121] = a1;
  v8 = type metadata accessor for RequestAccessType();
  v7[128] = v8;
  v9 = *(v8 - 8);
  v7[129] = v9;
  v10 = *(v9 + 64) + 15;
  v7[130] = swift_task_alloc();
  v11 = type metadata accessor for RichFailure();
  v7[131] = v11;
  v12 = *(v11 - 8);
  v7[132] = v12;
  v13 = *(v12 + 64) + 15;
  v7[133] = swift_task_alloc();
  v14 = type metadata accessor for StatusRequest();
  v7[134] = v14;
  v15 = *(v14 - 8);
  v7[135] = v15;
  v16 = *(v15 + 64) + 15;
  v7[136] = swift_task_alloc();
  v17 = type metadata accessor for DataDeletionTriggerRequest();
  v7[137] = v17;
  v18 = *(v17 - 8);
  v7[138] = v18;
  v19 = *(v18 + 64) + 15;
  v7[139] = swift_task_alloc();
  v20 = type metadata accessor for DeleteRequest();
  v7[140] = v20;
  v21 = *(v20 - 8);
  v7[141] = v21;
  v22 = *(v21 + 64) + 15;
  v7[142] = swift_task_alloc();
  updated = type metadata accessor for UpdateRequest();
  v7[143] = updated;
  v24 = *(updated - 8);
  v7[144] = v24;
  v25 = *(v24 + 64) + 15;
  v7[145] = swift_task_alloc();
  inserted = type metadata accessor for InsertRequest();
  v7[146] = inserted;
  v27 = *(inserted - 8);
  v7[147] = v27;
  v28 = *(v27 + 64) + 15;
  v7[148] = swift_task_alloc();
  v29 = type metadata accessor for AnyValue();
  v7[149] = v29;
  v30 = *(v29 - 8);
  v7[150] = v30;
  v31 = *(v30 + 64) + 15;
  v7[151] = swift_task_alloc();
  v7[152] = swift_task_alloc();
  v32 = type metadata accessor for ScalarValueRequest();
  v7[153] = v32;
  v33 = *(v32 - 8);
  v7[154] = v33;
  v34 = *(v33 + 64) + 15;
  v7[155] = swift_task_alloc();
  v35 = sub_100026F94(&qword_10016AD38, &qword_1001332F0);
  v7[156] = v35;
  v36 = *(*(v35 - 8) + 64) + 15;
  v7[157] = swift_task_alloc();
  v7[158] = swift_task_alloc();
  v37 = type metadata accessor for PluckRequest();
  v7[159] = v37;
  v38 = *(v37 - 8);
  v7[160] = v38;
  v39 = *(v38 + 64) + 15;
  v7[161] = swift_task_alloc();
  v40 = type metadata accessor for SelectRequest();
  v7[162] = v40;
  v41 = *(v40 - 8);
  v7[163] = v41;
  v42 = *(v41 + 64) + 15;
  v7[164] = swift_task_alloc();
  v43 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v7[165] = swift_task_alloc();
  v44 = type metadata accessor for DisconnectionRequest();
  v7[166] = v44;
  v45 = *(v44 - 8);
  v7[167] = v45;
  v46 = *(v45 + 64) + 15;
  v7[168] = swift_task_alloc();
  v47 = type metadata accessor for AccessCredential();
  v7[169] = v47;
  v48 = *(v47 - 8);
  v7[170] = v48;
  v49 = *(v48 + 64) + 15;
  v7[171] = swift_task_alloc();
  v7[172] = swift_task_alloc();
  v7[173] = swift_task_alloc();
  v50 = type metadata accessor for ConnectionRequest();
  v7[174] = v50;
  v51 = *(v50 - 8);
  v7[175] = v51;
  v52 = *(v51 + 64) + 15;
  v7[176] = swift_task_alloc();
  v53 = type metadata accessor for Dependency();
  v7[177] = v53;
  v54 = *(v53 - 8);
  v7[178] = v54;
  v55 = *(v54 + 64) + 15;
  v7[179] = swift_task_alloc();
  v56 = type metadata accessor for OSSignpostID();
  v7[180] = v56;
  v57 = *(v56 - 8);
  v7[181] = v57;
  v58 = *(v57 + 64) + 15;
  v7[182] = swift_task_alloc();
  v7[183] = swift_task_alloc();
  v59 = type metadata accessor for ClientMessage();
  v7[184] = v59;
  v60 = *(*(v59 - 8) + 64) + 15;
  v7[185] = swift_task_alloc();
  v7[186] = swift_task_alloc();

  return _swift_task_switch(sub_1000436AC, v6, 0);
}

uint64_t sub_1000436AC()
{
  v110 = v0;
  if (qword_10016A350 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1488);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 976);
  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016AF10);
  sub_10004F164(v3, v1);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  v7 = OS_os_log.signpostsEnabled.getter();
  v8 = *(v0 + 1488);
  if (v7)
  {
    v9 = *(v0 + 1472);
    v10 = *(v0 + 1464);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v109 = v12;
    *v11 = 136315138;
    sub_10004F508(&qword_10016B148, &type metadata accessor for ClientMessage);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_10004F1C8(v8);
    v16 = sub_10006CB64(v13, v15, &v109);

    *(v11 + 4) = v16;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v17, "handleRequest", "message=%s", v11, 0xCu);
    sub_100026FDC(v12);
  }

  else
  {

    sub_10004F1C8(v8);
  }

  v18 = *(v0 + 1480);
  v19 = *(v0 + 1464);
  v20 = *(v0 + 1448);
  v21 = *(v0 + 1440);
  v22 = *(v0 + 1432);
  v23 = *(v0 + 1424);
  v106 = *(v0 + 1416);
  v24 = *(v0 + 1008);
  v25 = *(v0 + 984);
  v107 = *(v0 + 976);
  v108 = *(v0 + 1472);
  (*(v20 + 16))(*(v0 + 1456), v19, v21);
  v26 = type metadata accessor for OSSignpostIntervalState();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *(v0 + 1496) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v20 + 8))(v19, v21);
  sub_10004F224(v25, v0 + 16);
  Dependency.init<A>(satisfying:with:)();
  v29 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  *(v0 + 1504) = v29;
  (*(v23 + 8))(v22, v106);
  sub_10004F164(v107, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v57 = *(v0 + 1184);
        v58 = *(v0 + 1176);
        v59 = *(v0 + 1168);
        (*(v58 + 32))(v57, *(v0 + 1480), v59);
        *(v0 + 528) = v59;
        *(v0 + 536) = sub_10004F508(&qword_10016B068, &type metadata accessor for InsertRequest);
        v60 = sub_100042BAC((v0 + 504));
        (*(v58 + 16))(v60, v57, v59);
        v61 = swift_task_alloc();
        *(v0 + 1808) = v61;
        *v61 = v0;
        v61[1] = sub_100047064;
        v62 = *(v0 + 1016);
        v37 = *(v0 + 1000);
        v38 = *(v0 + 992);
        v39 = v0 + 504;
      }

      else
      {
        v90 = *(v0 + 1160);
        v91 = *(v0 + 1152);
        v92 = *(v0 + 1144);
        (*(v91 + 32))(v90, *(v0 + 1480), v92);
        *(v0 + 448) = v92;
        *(v0 + 456) = sub_10004F508(&qword_10016B060, &type metadata accessor for UpdateRequest);
        v93 = sub_100042BAC((v0 + 424));
        (*(v91 + 16))(v93, v90, v92);
        v94 = swift_task_alloc();
        *(v0 + 1856) = v94;
        *v94 = v0;
        v94[1] = sub_1000475FC;
        v95 = *(v0 + 1016);
        v37 = *(v0 + 1000);
        v38 = *(v0 + 992);
        v39 = v0 + 424;
      }

LABEL_30:

      return sub_10004C954(v39, v38, v37, v29);
    }

    if (EnumCaseMultiPayload == 7)
    {
      v69 = *(v0 + 1136);
      v70 = *(v0 + 1128);
      v71 = *(v0 + 1120);
      (*(v70 + 32))(v69, *(v0 + 1480), v71);
      *(v0 + 368) = v71;
      *(v0 + 376) = sub_10004F508(&qword_10016B058, &type metadata accessor for DeleteRequest);
      v72 = sub_100042BAC((v0 + 344));
      (*(v70 + 16))(v72, v69, v71);
      v73 = swift_task_alloc();
      *(v0 + 1904) = v73;
      *v73 = v0;
      v73[1] = sub_100047B94;
      v74 = *(v0 + 1016);
      v37 = *(v0 + 1000);
      v38 = *(v0 + 992);
      v39 = v0 + 344;
      goto LABEL_30;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v40 = *(v0 + 1112);
      v41 = *(v0 + 1104);
      v42 = *(v0 + 1096);
      (*(v41 + 32))(v40, *(v0 + 1480), v42);
      *(v0 + 288) = v42;
      *(v0 + 296) = sub_10004F508(&qword_10016B040, &type metadata accessor for DataDeletionTriggerRequest);
      v43 = sub_100042BAC((v0 + 264));
      (*(v41 + 16))(v43, v40, v42);
      v44 = swift_task_alloc();
      *(v0 + 1952) = v44;
      *v44 = v0;
      v44[1] = sub_10004812C;
      v45 = *(v0 + 1016);
      v37 = *(v0 + 1000);
      v38 = *(v0 + 992);
      v39 = v0 + 264;
      goto LABEL_30;
    }

    (*(*(v0 + 1080) + 32))(*(v0 + 1088), *(v0 + 1480), *(v0 + 1072));
    if (static Utils.isInternalBuild.getter())
    {
      v81 = sub_100026F94(&qword_10016AFF0, &qword_100130F08);
      v82 = async function pointer to BaseObjectGraph.injectIfAvailable<A>(_:)[1];
      v83 = swift_task_alloc();
      *(v0 + 2008) = v83;
      *v83 = v0;
      v83[1] = sub_1000488EC;

      return BaseObjectGraph.injectIfAvailable<A>(_:)(v0 + 184, v81, v81);
    }

    else
    {
      v96 = *(v0 + 1088);
      v97 = *(v0 + 1080);
      v98 = *(v0 + 1072);
      v99 = type metadata accessor for DaemonError();
      sub_10004F508(&qword_10016AB40, &type metadata accessor for DaemonError);
      v100 = swift_allocError();
      (*(*(v99 - 8) + 104))(v101, enum case for DaemonError.unavailableStatusCommand(_:), v99);
      swift_willThrow();
      (*(v97 + 8))(v96, v98);
      *(v0 + 2072) = v100;
      v102 = sub_100026F94(&qword_10016B008, &unk_100130F30);
      v103 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v104 = swift_task_alloc();
      *(v0 + 2080) = v104;
      *v104 = v0;
      v104[1] = sub_100049418;
      v105 = *(v0 + 1504);

      return BaseObjectGraph.inject<A>(_:)(v0 + 544, v102, v102);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v63 = *(v0 + 1312);
        v64 = *(v0 + 1304);
        v65 = *(v0 + 1296);
        (*(v64 + 32))(v63, *(v0 + 1480), v65);
        *(v0 + 688) = v65;
        *(v0 + 696) = sub_10004F508(&qword_10016B0E0, &type metadata accessor for SelectRequest);
        v66 = sub_100042BAC((v0 + 664));
        (*(v64 + 16))(v66, v63, v65);
        v67 = swift_task_alloc();
        *(v0 + 1680) = v67;
        *v67 = v0;
        v67[1] = sub_100045DDC;
        v68 = *(v0 + 1016);
        v37 = *(v0 + 1000);
        v38 = *(v0 + 992);
        v39 = v0 + 664;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v31 = *(v0 + 1288);
        v32 = *(v0 + 1280);
        v33 = *(v0 + 1272);
        (*(v32 + 32))(v31, *(v0 + 1480), v33);
        *(v0 + 648) = v33;
        *(v0 + 656) = sub_10004F508(&qword_10016B0A8, &type metadata accessor for PluckRequest);
        v34 = sub_100042BAC((v0 + 624));
        (*(v32 + 16))(v34, v31, v33);
        v35 = swift_task_alloc();
        *(v0 + 1728) = v35;
        *v35 = v0;
        v35[1] = sub_1000463FC;
        v36 = *(v0 + 1016);
        v37 = *(v0 + 1000);
        v38 = *(v0 + 992);
        v39 = v0 + 624;
      }

      else
      {
        v75 = *(v0 + 1240);
        v76 = *(v0 + 1232);
        v77 = *(v0 + 1224);
        (*(v76 + 32))(v75, *(v0 + 1480), v77);
        *(v0 + 608) = v77;
        *(v0 + 616) = sub_10004F508(&qword_10016B080, &type metadata accessor for ScalarValueRequest);
        v78 = sub_100042BAC((v0 + 584));
        (*(v76 + 16))(v78, v75, v77);
        v79 = swift_task_alloc();
        *(v0 + 1768) = v79;
        *v79 = v0;
        v79[1] = sub_100046A3C;
        v80 = *(v0 + 1016);
        v37 = *(v0 + 1000);
        v38 = *(v0 + 992);
        v39 = v0 + 584;
      }

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload)
    {
      v84 = *(v0 + 1344);
      v85 = *(v0 + 1336);
      v86 = *(v0 + 1328);
      (*(v85 + 32))(v84, *(v0 + 1480), v86);
      *(v0 + 728) = v86;
      *(v0 + 736) = sub_10004F508(&qword_10016B110, &type metadata accessor for DisconnectionRequest);
      v87 = sub_100042BAC((v0 + 704));
      (*(v85 + 16))(v87, v84, v86);
      v88 = swift_task_alloc();
      *(v0 + 1640) = v88;
      *v88 = v0;
      v88[1] = sub_100045574;
      v89 = *(v0 + 1016);
      v37 = *(v0 + 1000);
      v38 = *(v0 + 992);
      v39 = v0 + 704;
      goto LABEL_30;
    }

    v46 = *(v0 + 1016);
    (*(*(v0 + 1400) + 32))(*(v0 + 1408), *(v0 + 1480), *(v0 + 1392));
    v47 = sub_100026F50((v46 + 112), *(v46 + 136));
    v48 = ConnectionRequest.credential.getter();
    v50 = v49;
    v52 = v51;
    *(v0 + 1512) = v48;
    *(v0 + 1520) = v49;
    *(v0 + 2161) = v51;
    v53 = *v47;
    v54 = swift_task_alloc();
    *(v0 + 1528) = v54;
    *v54 = v0;
    v54[1] = sub_100044420;
    v55 = *(v0 + 1384);

    return sub_1000307B0(v55, v48, v50, v52 & 1, v29);
  }
}

uint64_t sub_100044420()
{
  v2 = *(*v1 + 1528);
  v3 = *v1;
  *(v3 + 1536) = v0;

  if (v0)
  {
    v4 = *(v3 + 1520);
    v5 = *(v3 + 1512);
    v6 = *(v3 + 1016);
    v7 = *(v3 + 2161);
    sub_100042BA4();

    return _swift_task_switch(sub_10004471C, v6, 0);
  }

  else
  {
    v8 = *(v3 + 1520);
    v9 = *(v3 + 1512);
    v10 = *(v3 + 2161);
    sub_100042BA4();
    v11 = sub_100026F94(&qword_10016B128, &qword_100130F90);
    v12 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v13 = swift_task_alloc();
    *(v3 + 1544) = v13;
    *v13 = v3;
    v13[1] = sub_1000445F0;
    v14 = *(v3 + 1504);

    return BaseObjectGraph.inject<A>(_:)(v3 + 464, v11, v11);
  }
}

uint64_t sub_1000445F0()
{
  v2 = *v1;
  v3 = *(*v1 + 1544);
  v4 = *v1;
  *(*v1 + 1552) = v0;

  v5 = *(v2 + 1016);
  if (v0)
  {
    v6 = sub_10004A208;
  }

  else
  {
    v6 = sub_1000447FC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004471C()
{
  (*(v0[175] + 8))(v0[176], v0[174]);
  v0[259] = v0[192];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_1000447FC()
{
  v1 = v0[173];
  if ((AccessCredential.isDiagnosticsAndUsageRequired.getter() & 1) == 0)
  {
    goto LABEL_4;
  }

  v2 = [objc_opt_self() sharedConnection];
  if (!v2)
  {
    __break(1u);
    return BaseObjectGraph.inject<A>(_:)(v2, v3, v4);
  }

  v5 = v2;
  v6 = [v2 isDiagnosticSubmissionAllowed];

  if ((v6 & 1) == 0)
  {
    v17 = v0[176];
    v18 = v0[175];
    v19 = v0[174];
    v20 = v0[173];
    v21 = v0[170];
    v22 = v0[169];
    v23 = type metadata accessor for DaemonError();
    sub_10004F508(&qword_10016AB40, &type metadata accessor for DaemonError);
    v24 = swift_allocError();
    v26 = v28;
    v27 = &enum case for DaemonError.dnuRequired(_:);
  }

  else
  {
LABEL_4:
    v7 = v0[173];
    if (AccessCredential.isCompatibleWithCurrentOs.getter())
    {
      v8 = v0[173];
      v9 = v0[172];
      v10 = v0[170];
      v11 = v0[169];
      v12 = *(v10 + 16);
      v0[195] = v12;
      v0[196] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v12(v9, v8, v11);
      v13 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
      v14 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v15 = swift_task_alloc();
      v0[197] = v15;
      *v15 = v0;
      v15[1] = sub_100044B48;
      v16 = v0[188];
      v2 = v0 + 48;
      goto LABEL_9;
    }

    v17 = v0[176];
    v18 = v0[175];
    v19 = v0[174];
    v20 = v0[173];
    v21 = v0[170];
    v22 = v0[169];
    v23 = type metadata accessor for DaemonError();
    sub_10004F508(&qword_10016AB40, &type metadata accessor for DaemonError);
    v24 = swift_allocError();
    v26 = v25;
    v27 = &enum case for DaemonError.incompatibleOs(_:);
  }

  (*(*(v23 - 8) + 104))(v26, *v27, v23);
  swift_willThrow();
  sub_100026FDC(v0 + 58);
  (*(v21 + 8))(v20, v22);
  (*(v18 + 8))(v17, v19);
  v0[259] = v24;
  v13 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v29 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v30 = swift_task_alloc();
  v0[260] = v30;
  *v30 = v0;
  v30[1] = sub_100049418;
  v31 = v0[188];
  v2 = v0 + 68;
LABEL_9:
  v3 = v13;
  v4 = v13;

  return BaseObjectGraph.inject<A>(_:)(v2, v3, v4);
}

uint64_t sub_100044B48()
{
  v2 = *(*v1 + 1576);
  v3 = *v1;
  v3[198] = v0;

  if (v0)
  {
    v4 = v3[172];
    v5 = v3[170];
    v6 = v3[169];
    v7 = v3[127];
    v8 = *(v5 + 8);
    v3[266] = v8;
    v3[267] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v4, v6);

    return _swift_task_switch(sub_10004A314, v7, 0);
  }

  else
  {
    v9 = sub_100026F94(&qword_10016AFF0, &qword_100130F08);
    v10 = async function pointer to BaseObjectGraph.injectIfAvailable<A>(_:)[1];
    v11 = swift_task_alloc();
    v3[199] = v11;
    *v11 = v3;
    v11[1] = sub_100044D1C;
    v12 = v3[188];

    return BaseObjectGraph.injectIfAvailable<A>(_:)(v3 + 38, v9, v9);
  }
}

uint64_t sub_100044D1C()
{
  v2 = *v1;
  v3 = (*v1)[199];
  v12 = *v1;
  (*v1)[200] = v0;

  if (v0)
  {
    v4 = v2[172];
    v5 = v2[170];
    v6 = v2[169];
    v7 = v2[127];
    v8 = *(v5 + 8);
    v2[268] = v8;
    v2[269] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v4, v6);
    sub_100026FDC(v2 + 48);
    v9 = sub_10004A438;
    v10 = v7;
  }

  else
  {
    v10 = v2[127];
    v9 = sub_100044E70;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100044E70()
{
  type metadata accessor for DefaultConnectionDelegate();
  v1 = swift_allocObject();
  v2 = [objc_allocWithZone(NSCache) init];
  v3 = v0[175];
  v25 = v0[174];
  v26 = v0[176];
  v4 = v0[172];
  v5 = v0[127];
  v6 = v0[125];
  v24 = v0[124];
  *(v1 + 16) = v2;
  v7 = v0[51];
  v8 = sub_10004F464((v0 + 48), v7);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  (*(v9 + 16))(v11, v8, v7);
  v12 = sub_10004E668(v4, *v11, (v0 + 38), v1);
  v0[201] = v12;

  sub_100026FDC(v0 + 48);

  v13 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id;
  v0[202] = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id;
  v14 = (v12 + v13);
  v15 = *v14;
  v16 = v14[1];
  swift_beginAccess();

  v17 = *(v5 + 192);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v5 + 192);
  *(v5 + 192) = 0x8000000000000000;
  sub_1000A1508(v12, v24, v6, v15, v16, isUniquelyReferenced_nonNull_native);

  *(v5 + 192) = v27;
  swift_endAccess();
  v0[16] = v25;
  v0[17] = sub_10004F508(&qword_10016B130, &type metadata accessor for ConnectionRequest);
  v19 = sub_100042BAC(v0 + 13);
  (*(v3 + 16))(v19, v26, v25);
  v20 = swift_task_alloc();
  v0[203] = v20;
  *v20 = v0;
  v20[1] = sub_10004513C;
  v21 = v0[188];
  v22 = v0[127];

  return sub_10004B7C8((v0 + 13), v12, v21);
}

uint64_t sub_10004513C()
{
  v2 = *v1;
  v3 = *(*v1 + 1624);
  v8 = *v1;
  *(*v1 + 1632) = v0;

  if (v0)
  {
    v4 = *(v2 + 1016);
    v5 = sub_10004A55C;
  }

  else
  {
    v6 = *(v2 + 1016);
    sub_100026FDC((v2 + 104));
    v5 = sub_100045264;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100045264()
{
  v32 = v0[195];
  v34 = v0[196];
  v36 = v0[188];
  v1 = v0[175];
  v39 = v0[174];
  v41 = v0[176];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[121];
  v6 = (v0[201] + v0[202]);
  v7 = v6[1];
  v28 = v0[173];
  v30 = *v6;
  v5[3] = sub_100026F94(&qword_10016B138, &qword_100130FA0);
  v5[4] = sub_10004F4B4(&qword_10016B140, &qword_10016B138, &qword_100130FA0);
  sub_100042BAC(v5);
  v32(v2, v28, v4);

  ConnectionDetails.init(connectionId:credential:)();
  swift_storeEnumTagMultiPayload();

  sub_100026FDC(v0 + 58);
  (*(v3 + 8))(v28, v4);
  (*(v1 + 8))(v41, v39);

  v8 = v0[187];
  v9 = v0[186];
  v10 = v0[185];
  v11 = v0[183];
  v12 = v0[182];
  v13 = v0[179];
  v14 = v0[176];
  v15 = v0[173];
  v16 = v0[172];
  v19 = v0[171];
  v20 = v0[168];
  v21 = v0[165];
  v22 = v0[164];
  v23 = v0[161];
  v24 = v0[158];
  v25 = v0[157];
  v26 = v0[155];
  v27 = v0[152];
  v29 = v0[151];
  v31 = v0[148];
  v33 = v0[145];
  v35 = v0[142];
  v37 = v0[139];
  v38 = v0[136];
  v40 = v0[133];
  v42 = v0[130];
  sub_10004EB5C("handleRequest", 13, 2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100045574(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[205];
  v9 = *v2;
  v3[206] = a1;
  v3[207] = v1;

  if (v1)
  {
    v5 = v3[127];
    v6 = sub_10004A690;
  }

  else
  {
    v7 = v3[127];
    sub_100026FDC(v3 + 88);
    v6 = sub_1000456A0;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000456A0()
{
  v1 = v0[127];
  v2 = v0[125];
  v3 = v0[124];
  v4 = (v0[206] + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
  v5 = *v4;
  v6 = v4[1];
  swift_beginAccess();

  v27 = v5;
  v7 = sub_10004E2B4(v3, v2, v5, v6);
  swift_endAccess();
  if (qword_10016A348 != -1)
  {
    swift_once();
  }

  v8 = v0[165];
  sub_100026EEC(qword_10016AEE8, (v0 + 93));
  v26 = v0[97];
  sub_100026F50(v0 + 93, v0[96]);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v9 = *(type metadata accessor for LogMessage() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x800000010013A5E0;
  v12._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  if (v7)
  {
    v14 = *(v7 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
    v13 = *(v7 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id + 8);
    v0[101] = &type metadata for String;

    if (v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v0[101] = &type metadata for String;
  }

  v15 = 0xE90000000000003ELL;
  v14 = 0x6E776F6E6B6E753CLL;
LABEL_8:
  v0[208] = v7;
  v16 = v0[165];
  v17 = v0[125];
  v18 = v0[124];
  v0[98] = v14;
  v0[99] = v15;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 98), &qword_10016AB10, &unk_100130B10);
  v19._countAndFlagsBits = 0x656B20726F66202CLL;
  v19._object = 0xEB00000000203A79;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  v0[105] = &type metadata for ClientSessionManagerImplementation.SessionKey;
  v20 = swift_allocObject();
  v0[102] = v20;
  v20[2] = v18;
  v20[3] = v17;
  v20[4] = v27;
  v20[5] = v6;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 102), &qword_10016AB10, &unk_100130B10);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_100026FDC(v0 + 93);
  v22 = swift_task_alloc();
  v0[209] = v22;
  *v22 = v0;
  v22[1] = sub_100045A0C;
  v23 = v0[188];
  v24 = v0[127];

  return sub_10004CE0C(v23);
}

uint64_t sub_100045A0C()
{
  v1 = *(*v0 + 1672);
  v2 = *(*v0 + 1016);
  v4 = *v0;

  return _swift_task_switch(sub_100045B1C, v2, 0);
}

uint64_t sub_100045B1C()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 1344);
  v5 = *(v0 + 1336);
  v6 = *(v0 + 1328);
  v7 = *(v0 + 968);
  *(v0 + 2160) = 1;
  *(v7 + 24) = sub_100026F94(&qword_10016B118, &qword_100130F88);
  *(v7 + 32) = sub_10004F4B4(&qword_10016B120, &qword_10016B118, &qword_100130F88);
  DaemonResponse.init(_:)();

  (*(v5 + 8))(v4, v6);
  v8 = *(v0 + 1496);
  v9 = *(v0 + 1488);
  v10 = *(v0 + 1480);
  v11 = *(v0 + 1464);
  v12 = *(v0 + 1456);
  v13 = *(v0 + 1432);
  v14 = *(v0 + 1408);
  v15 = *(v0 + 1384);
  v16 = *(v0 + 1376);
  v19 = *(v0 + 1368);
  v20 = *(v0 + 1344);
  v21 = *(v0 + 1320);
  v22 = *(v0 + 1312);
  v23 = *(v0 + 1288);
  v24 = *(v0 + 1264);
  v25 = *(v0 + 1256);
  v26 = *(v0 + 1240);
  v27 = *(v0 + 1216);
  v28 = *(v0 + 1208);
  v29 = *(v0 + 1184);
  v30 = *(v0 + 1160);
  v31 = *(v0 + 1136);
  v32 = *(v0 + 1112);
  v33 = *(v0 + 1088);
  v34 = *(v0 + 1064);
  v35 = *(v0 + 1040);
  sub_10004EB5C("handleRequest", 13, 2);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100045DDC(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[210];
  v6 = *v2;
  v4[211] = a1;
  v4[212] = v1;

  if (v1)
  {
    v7 = v4[127];

    return _swift_task_switch(sub_10004A778, v7, 0);
  }

  else
  {
    sub_100026FDC(v4 + 83);
    v8 = swift_task_alloc();
    v4[213] = v8;
    *v8 = v6;
    v8[1] = sub_100045F74;
    v9 = v4[188];
    v10 = v4[164];

    return sub_1000C8094(v10, v9);
  }
}

uint64_t sub_100045F74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1704);
  v6 = *v2;
  v4[214] = v1;

  v7 = v4[211];
  v8 = v4[127];

  if (v1)
  {
    v9 = sub_10004A860;
  }

  else
  {
    v4[215] = a1;
    v9 = sub_1000460CC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000460CC()
{
  v1 = v0[188];
  v2 = v0[164];
  v3 = v0[163];
  v4 = v0[162];
  v5 = v0[121];
  v0[115] = v0[215];
  *(v5 + 24) = sub_100026F94(&qword_10016B0E8, &qword_100130F78);
  *(v5 + 32) = sub_10004F4B4(&qword_10016B0F0, &qword_10016B0E8, &qword_100130F78);
  sub_100026F94(&qword_10016B0F8, &qword_100130F80);
  sub_10004F388(&qword_10016B100, &qword_10016B0C8);
  sub_10004F388(&qword_10016B108, &qword_10016B0D8);
  DaemonResponse.init(_:)();

  (*(v3 + 8))(v2, v4);
  v6 = v0[187];
  v7 = v0[186];
  v8 = v0[185];
  v9 = v0[183];
  v10 = v0[182];
  v11 = v0[179];
  v12 = v0[176];
  v13 = v0[173];
  v14 = v0[172];
  v17 = v0[171];
  v18 = v0[168];
  v19 = v0[165];
  v20 = v0[164];
  v21 = v0[161];
  v22 = v0[158];
  v23 = v0[157];
  v24 = v0[155];
  v25 = v0[152];
  v26 = v0[151];
  v27 = v0[148];
  v28 = v0[145];
  v29 = v0[142];
  v30 = v0[139];
  v31 = v0[136];
  v32 = v0[133];
  v33 = v0[130];
  sub_10004EB5C("handleRequest", 13, 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000463FC(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[216];
  v6 = *v2;
  v4[217] = a1;
  v4[218] = v1;

  if (v1)
  {
    v7 = v4[127];

    return _swift_task_switch(sub_10004A940, v7, 0);
  }

  else
  {
    sub_100026FDC(v4 + 78);
    v8 = swift_task_alloc();
    v4[219] = v8;
    *v8 = v6;
    v8[1] = sub_100046594;
    v9 = v4[188];
    v10 = v4[161];
    v11 = v4[158];

    return sub_1000C8EC4(v11, v10, v9);
  }
}

uint64_t sub_100046594()
{
  v2 = *v1;
  v3 = *(*v1 + 1752);
  v4 = *v1;
  *(*v1 + 1760) = v0;

  v5 = *(v2 + 1736);
  v6 = *(v2 + 1016);

  if (v0)
  {
    v7 = sub_10004AA28;
  }

  else
  {
    v7 = sub_1000466DC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000466DC()
{
  v1 = v0[188];
  v34 = v0[161];
  v2 = v0[160];
  v3 = v0[159];
  v4 = v0[158];
  v5 = v0[156];
  v6 = v0[121];
  sub_10002BA04(v4, v0[157], &qword_10016AD38, &qword_1001332F0);
  v6[3] = sub_100026F94(&qword_10016B0B0, &qword_100130F70);
  v6[4] = sub_10004F4B4(&qword_10016B0B8, &qword_10016B0B0, &qword_100130F70);
  sub_100042BAC(v6);
  sub_10004F2EC(&qword_10016B0C0, &qword_10016B0C8);
  sub_10004F2EC(&qword_10016B0D0, &qword_10016B0D8);
  DaemonResponse.init(_:)();

  sub_10002BA6C(v4, &qword_10016AD38, &qword_1001332F0);
  (*(v2 + 8))(v34, v3);
  v7 = v0[187];
  v8 = v0[186];
  v9 = v0[185];
  v10 = v0[183];
  v11 = v0[182];
  v12 = v0[179];
  v13 = v0[176];
  v14 = v0[173];
  v15 = v0[172];
  v18 = v0[171];
  v19 = v0[168];
  v20 = v0[165];
  v21 = v0[164];
  v22 = v0[161];
  v23 = v0[158];
  v24 = v0[157];
  v25 = v0[155];
  v26 = v0[152];
  v27 = v0[151];
  v28 = v0[148];
  v29 = v0[145];
  v30 = v0[142];
  v31 = v0[139];
  v32 = v0[136];
  v33 = v0[133];
  v35 = v0[130];
  sub_10004EB5C("handleRequest", 13, 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100046A3C(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[221];
  v6 = *v2;
  v4[222] = a1;
  v4[223] = v1;

  if (v1)
  {
    v7 = v4[127];

    return _swift_task_switch(sub_10004AB08, v7, 0);
  }

  else
  {
    sub_100026FDC(v4 + 73);
    v8 = swift_task_alloc();
    v4[224] = v8;
    *v8 = v6;
    v8[1] = sub_100046BD4;
    v9 = v4[188];
    v10 = v4[155];
    v11 = v4[152];

    return sub_1000CA224(v11, v10, v9);
  }
}

uint64_t sub_100046BD4()
{
  v2 = *v1;
  v3 = *(*v1 + 1792);
  v4 = *v1;
  *(*v1 + 1800) = v0;

  v5 = *(v2 + 1776);
  v6 = *(v2 + 1016);

  if (v0)
  {
    v7 = sub_10004ABF0;
  }

  else
  {
    v7 = sub_100046D1C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100046D1C()
{
  v1 = v0[188];
  v2 = v0[154];
  v33 = v0[153];
  v35 = v0[155];
  v3 = v0[152];
  v4 = v0[150];
  v5 = v0[149];
  v6 = v0[121];
  (*(v4 + 16))(v0[151], v3, v5);
  v6[3] = sub_100026F94(&qword_10016B088, &qword_100130F68);
  v6[4] = sub_10004F4B4(&qword_10016B090, &qword_10016B088, &qword_100130F68);
  sub_100042BAC(v6);
  sub_10004F508(&qword_10016B098, &type metadata accessor for AnyValue);
  sub_10004F508(&qword_10016B0A0, &type metadata accessor for AnyValue);
  DaemonResponse.init(_:)();

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v35, v33);
  v7 = v0[187];
  v8 = v0[186];
  v9 = v0[185];
  v10 = v0[183];
  v11 = v0[182];
  v12 = v0[179];
  v13 = v0[176];
  v14 = v0[173];
  v15 = v0[172];
  v18 = v0[171];
  v19 = v0[168];
  v20 = v0[165];
  v21 = v0[164];
  v22 = v0[161];
  v23 = v0[158];
  v24 = v0[157];
  v25 = v0[155];
  v26 = v0[152];
  v27 = v0[151];
  v28 = v0[148];
  v29 = v0[145];
  v30 = v0[142];
  v31 = v0[139];
  v32 = v0[136];
  v34 = v0[133];
  v36 = v0[130];
  sub_10004EB5C("handleRequest", 13, 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100047064(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[226];
  v6 = *v2;
  v4[227] = a1;
  v4[228] = v1;

  if (v1)
  {
    v7 = v4[127];

    return _swift_task_switch(sub_10004ACD0, v7, 0);
  }

  else
  {
    sub_100026FDC(v4 + 63);
    v8 = swift_task_alloc();
    v4[229] = v8;
    *v8 = v6;
    v8[1] = sub_1000471FC;
    v9 = v4[188];
    v10 = v4[148];

    return sub_1000CB2EC(v10, v9);
  }
}

uint64_t sub_1000471FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1832);
  v6 = *v2;
  v4[230] = v1;

  v7 = v4[227];
  v8 = v4[127];

  if (v1)
  {
    v9 = sub_10004ADB8;
  }

  else
  {
    v4[231] = a1;
    v9 = sub_100047354;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100047354()
{
  v1 = v0[188];
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[146];
  v5 = v0[121];
  v0[120] = v0[231];
  *(v5 + 24) = sub_100026F94(&qword_10016B070, &qword_100130F60);
  *(v5 + 32) = sub_10004F4B4(&qword_10016B078, &qword_10016B070, &qword_100130F60);
  DaemonResponse.init(_:)();

  (*(v3 + 8))(v2, v4);
  v6 = v0[187];
  v7 = v0[186];
  v8 = v0[185];
  v9 = v0[183];
  v10 = v0[182];
  v11 = v0[179];
  v12 = v0[176];
  v13 = v0[173];
  v14 = v0[172];
  v17 = v0[171];
  v18 = v0[168];
  v19 = v0[165];
  v20 = v0[164];
  v21 = v0[161];
  v22 = v0[158];
  v23 = v0[157];
  v24 = v0[155];
  v25 = v0[152];
  v26 = v0[151];
  v27 = v0[148];
  v28 = v0[145];
  v29 = v0[142];
  v30 = v0[139];
  v31 = v0[136];
  v32 = v0[133];
  v33 = v0[130];
  sub_10004EB5C("handleRequest", 13, 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000475FC(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[232];
  v6 = *v2;
  v4[233] = a1;
  v4[234] = v1;

  if (v1)
  {
    v7 = v4[127];

    return _swift_task_switch(sub_10004AE98, v7, 0);
  }

  else
  {
    sub_100026FDC(v4 + 53);
    v8 = swift_task_alloc();
    v4[235] = v8;
    *v8 = v6;
    v8[1] = sub_100047794;
    v9 = v4[188];
    v10 = v4[145];

    return sub_1000D0910(v10, v9);
  }
}

uint64_t sub_100047794(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1880);
  v6 = *v2;
  v4[236] = v1;

  v7 = v4[233];
  v8 = v4[127];

  if (v1)
  {
    v9 = sub_10004AF80;
  }

  else
  {
    v4[237] = a1;
    v9 = sub_1000478EC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000478EC()
{
  v1 = v0[188];
  v2 = v0[145];
  v3 = v0[144];
  v4 = v0[143];
  v5 = v0[121];
  v0[116] = v0[237];
  *(v5 + 24) = sub_100026F94(&qword_10016B048, &qword_100130F58);
  *(v5 + 32) = sub_10004F4B4(&qword_10016B050, &qword_10016B048, &qword_100130F58);
  DaemonResponse.init(_:)();

  (*(v3 + 8))(v2, v4);
  v6 = v0[187];
  v7 = v0[186];
  v8 = v0[185];
  v9 = v0[183];
  v10 = v0[182];
  v11 = v0[179];
  v12 = v0[176];
  v13 = v0[173];
  v14 = v0[172];
  v17 = v0[171];
  v18 = v0[168];
  v19 = v0[165];
  v20 = v0[164];
  v21 = v0[161];
  v22 = v0[158];
  v23 = v0[157];
  v24 = v0[155];
  v25 = v0[152];
  v26 = v0[151];
  v27 = v0[148];
  v28 = v0[145];
  v29 = v0[142];
  v30 = v0[139];
  v31 = v0[136];
  v32 = v0[133];
  v33 = v0[130];
  sub_10004EB5C("handleRequest", 13, 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100047B94(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[238];
  v6 = *v2;
  v4[239] = a1;
  v4[240] = v1;

  if (v1)
  {
    v7 = v4[127];

    return _swift_task_switch(sub_10004B060, v7, 0);
  }

  else
  {
    sub_100026FDC(v4 + 43);
    v8 = swift_task_alloc();
    v4[241] = v8;
    *v8 = v6;
    v8[1] = sub_100047D2C;
    v9 = v4[188];
    v10 = v4[142];

    return sub_1000D4FBC(v10, v9);
  }
}

uint64_t sub_100047D2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1928);
  v6 = *v2;
  v4[242] = v1;

  v7 = v4[239];
  v8 = v4[127];

  if (v1)
  {
    v9 = sub_10004B148;
  }

  else
  {
    v4[243] = a1;
    v9 = sub_100047E84;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100047E84()
{
  v1 = v0[188];
  v2 = v0[142];
  v3 = v0[141];
  v4 = v0[140];
  v5 = v0[121];
  v0[117] = v0[243];
  *(v5 + 24) = sub_100026F94(&qword_10016B048, &qword_100130F58);
  *(v5 + 32) = sub_10004F4B4(&qword_10016B050, &qword_10016B048, &qword_100130F58);
  DaemonResponse.init(_:)();

  (*(v3 + 8))(v2, v4);
  v6 = v0[187];
  v7 = v0[186];
  v8 = v0[185];
  v9 = v0[183];
  v10 = v0[182];
  v11 = v0[179];
  v12 = v0[176];
  v13 = v0[173];
  v14 = v0[172];
  v17 = v0[171];
  v18 = v0[168];
  v19 = v0[165];
  v20 = v0[164];
  v21 = v0[161];
  v22 = v0[158];
  v23 = v0[157];
  v24 = v0[155];
  v25 = v0[152];
  v26 = v0[151];
  v27 = v0[148];
  v28 = v0[145];
  v29 = v0[142];
  v30 = v0[139];
  v31 = v0[136];
  v32 = v0[133];
  v33 = v0[130];
  sub_10004EB5C("handleRequest", 13, 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10004812C(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[244];
  v9 = *v2;
  v3[245] = a1;
  v3[246] = v1;

  if (v1)
  {
    v5 = v3[127];
    v6 = sub_10004B228;
  }

  else
  {
    v7 = v3[127];
    sub_100026FDC(v3 + 33);
    v6 = sub_100048258;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100048258()
{
  v1 = v0[245];
  v2 = v0[139];
  v3._countAndFlagsBits = DataDeletionTriggerRequest.triggerName.getter();
  LOBYTE(v2) = AccessCredential.containsDataDeletionTrigger(_:)(v3);

  if (v2)
  {
    v4 = AccessCredential.requestId.getter();
    v6 = v5;
    type metadata accessor for AccessCredentialDataCleanupTask();
    v7 = swift_allocObject();
    v0[247] = v7;
    swift_defaultActor_initialize();
    *(v7 + 112) = v4;
    *(v7 + 120) = v6;
    v8 = swift_task_alloc();
    v0[248] = v8;
    *v8 = v0;
    v8[1] = sub_1000484F0;
    v9 = v0[188];

    return sub_100097AB4(v9, 1);
  }

  else
  {
    v11 = v0[245];
    v12 = v0[139];
    v13 = v0[138];
    v14 = v0[137];
    v15 = type metadata accessor for DaemonError();
    sub_10004F508(&qword_10016AB40, &type metadata accessor for DaemonError);
    v16 = swift_allocError();
    v18 = v17;
    *v17 = DataDeletionTriggerRequest.triggerName.getter();
    v18[1] = v19;
    (*(*(v15 - 8) + 104))(v18, enum case for DaemonError.noDataDeletionTrigger(_:), v15);
    swift_willThrow();

    (*(v13 + 8))(v12, v14);
    v0[259] = v16;
    v20 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v21 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v22 = swift_task_alloc();
    v0[260] = v22;
    *v22 = v0;
    v22[1] = sub_100049418;
    v23 = v0[188];

    return BaseObjectGraph.inject<A>(_:)(v0 + 68, v20, v20);
  }
}

uint64_t sub_1000484F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1984);
  v6 = *v2;
  v4[249] = v1;

  v7 = v4[127];
  if (v1)
  {
    v8 = sub_10004B310;
  }

  else
  {
    v4[250] = a1;
    v8 = sub_10004862C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10004862C()
{
  v1 = v0[247];
  v2 = v0[245];
  v3 = v0[188];
  v4 = v0[139];
  v5 = v0[138];
  v6 = v0[137];
  v7 = v0[121];
  v0[118] = v0[250];
  *(v7 + 24) = sub_100026F94(&qword_10016B048, &qword_100130F58);
  *(v7 + 32) = sub_10004F4B4(&qword_10016B050, &qword_10016B048, &qword_100130F58);
  DaemonResponse.init(_:)();

  (*(v5 + 8))(v4, v6);
  v8 = v0[187];
  v9 = v0[186];
  v10 = v0[185];
  v11 = v0[183];
  v12 = v0[182];
  v13 = v0[179];
  v14 = v0[176];
  v15 = v0[173];
  v16 = v0[172];
  v19 = v0[171];
  v20 = v0[168];
  v21 = v0[165];
  v22 = v0[164];
  v23 = v0[161];
  v24 = v0[158];
  v25 = v0[157];
  v26 = v0[155];
  v27 = v0[152];
  v28 = v0[151];
  v29 = v0[148];
  v30 = v0[145];
  v31 = v0[142];
  v32 = v0[139];
  v33 = v0[136];
  v34 = v0[133];
  v35 = v0[130];
  sub_10004EB5C("handleRequest", 13, 2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000488EC()
{
  v2 = *v1;
  v3 = *(*v1 + 2008);
  v4 = *v1;
  *(*v1 + 2016) = v0;

  v5 = *(v2 + 1016);
  if (v0)
  {
    v6 = sub_10004B414;
  }

  else
  {
    v6 = sub_100048A18;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100048A18()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1072);
  if (*(v0 + 208))
  {
    sub_10002C604((v0 + 184), v0 + 144);
    *(v0 + 248) = v3;
    *(v0 + 256) = sub_10004F508(&qword_10016B010, &type metadata accessor for StatusRequest);
    v4 = sub_100042BAC((v0 + 224));
    (*(v2 + 16))(v4, v1, v3);
    v5 = swift_task_alloc();
    *(v0 + 2024) = v5;
    *v5 = v0;
    v5[1] = sub_100048CB4;
    v6 = *(v0 + 1504);
    v7 = *(v0 + 1016);
    v8 = *(v0 + 1000);
    v9 = *(v0 + 992);

    return sub_10004C954(v0 + 224, v9, v8, v6);
  }

  else
  {
    sub_10002BA6C(v0 + 184, &qword_10016AFF8, &unk_100130F10);
    v11 = type metadata accessor for DaemonError();
    sub_10004F508(&qword_10016AB40, &type metadata accessor for DaemonError);
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, enum case for DaemonError.unavailableStatusProvider(_:), v11);
    swift_willThrow();
    (*(v2 + 8))(v1, v3);
    *(v0 + 2072) = v12;
    v14 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v15 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v16 = swift_task_alloc();
    *(v0 + 2080) = v16;
    *v16 = v0;
    v16[1] = sub_100049418;
    v17 = *(v0 + 1504);

    return BaseObjectGraph.inject<A>(_:)(v0 + 544, v14, v14);
  }
}

uint64_t sub_100048CB4(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[253];
  v6 = *v2;

  if (v1)
  {
    v7 = v4[127];

    v8 = sub_10004B4F4;
    v9 = v7;
  }

  else
  {
    v10 = v4[127];
    v4[254] = a1;
    sub_100026FDC(v4 + 28);
    v8 = sub_100048DFC;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100048DFC()
{
  v0[255] = v0[254];
  sub_100026F50(v0 + 18, v0[21]);
  v1 = swift_task_alloc();
  v0[256] = v1;
  *v1 = v0;
  v1[1] = sub_100048EC0;
  v2 = v0[188];
  v3 = v0[136];

  return sub_100093860(v3, v2);
}

uint64_t sub_100048EC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2048);
  v6 = *v2;
  v4[257] = v1;

  v7 = v4[127];
  if (v1)
  {
    v8 = sub_100049318;
  }

  else
  {
    v4[258] = a1;
    v8 = sub_100048FFC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100048FFC()
{
  v1 = v0[255];
  v2 = v0[188];
  v3 = v0[136];
  v4 = v0[135];
  v5 = v0[134];
  v6 = v0[121];
  v0[119] = v0[258];
  *(v6 + 24) = sub_100026F94(&qword_10016B018, &qword_100130F48);
  *(v6 + 32) = sub_10004F4B4(&qword_10016B020, &qword_10016B018, &qword_100130F48);
  sub_100026F94(&qword_10016B028, &qword_100130F50);
  sub_10004F280(&qword_10016B030);
  sub_10004F280(&qword_10016B038);
  DaemonResponse.init(_:)();

  (*(v4 + 8))(v3, v5);
  sub_100026FDC(v0 + 18);
  v7 = v0[187];
  v8 = v0[186];
  v9 = v0[185];
  v10 = v0[183];
  v11 = v0[182];
  v12 = v0[179];
  v13 = v0[176];
  v14 = v0[173];
  v15 = v0[172];
  v18 = v0[171];
  v19 = v0[168];
  v20 = v0[165];
  v21 = v0[164];
  v22 = v0[161];
  v23 = v0[158];
  v24 = v0[157];
  v25 = v0[155];
  v26 = v0[152];
  v27 = v0[151];
  v28 = v0[148];
  v29 = v0[145];
  v30 = v0[142];
  v31 = v0[139];
  v32 = v0[136];
  v33 = v0[133];
  v34 = v0[130];
  sub_10004EB5C("handleRequest", 13, 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100049318()
{
  v1 = v0[255];
  v2 = v0[136];
  v3 = v0[135];
  v4 = v0[134];

  (*(v3 + 8))(v2, v4);
  sub_100026FDC(v0 + 18);
  v0[259] = v0[257];
  v5 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v6 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v7 = swift_task_alloc();
  v0[260] = v7;
  *v7 = v0;
  v7[1] = sub_100049418;
  v8 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v5, v5);
}

uint64_t sub_100049418()
{
  v2 = *v1;
  v3 = *(*v1 + 2080);
  v4 = *v1;
  *(*v1 + 2088) = v0;

  v5 = *(v2 + 1016);
  if (v0)
  {
    v6 = sub_10004B5BC;
  }

  else
  {
    v6 = sub_100049544;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100049544()
{
  v1 = v0[259];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[131];
  v5 = sub_100026F50(v0 + 68, v0[71]);
  swift_errorRetain();
  RichFailure.init(_:)();
  v6 = RichFailure.errorCode.getter();
  (*(v3 + 8))(v2, v4);
  v7 = *v5;
  v8 = swift_task_alloc();
  v0[262] = v8;
  *v8 = v0;
  v8[1] = sub_100049640;

  return sub_100063610(v6);
}

uint64_t sub_100049640()
{
  v2 = *v1;
  v3 = *(*v1 + 2096);
  v4 = *v1;
  *(*v1 + 2104) = v0;

  v5 = *(v2 + 1016);
  if (v0)
  {
    v6 = sub_100049AA0;
  }

  else
  {
    v6 = sub_10004976C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004976C()
{
  v0[114] = v0[259];
  swift_errorRetain();
  sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_4:
    v1 = v0[259];
    v2 = v0[188];
    swift_willThrow();

    sub_100026FDC(v0 + 68);
    v40 = v0[259];
    v3 = v0[187];
    v4 = v0[186];
    v5 = v0[185];
    v6 = v0[183];
    v7 = v0[182];
    v8 = v0[179];
    v9 = v0[176];
    v10 = v0[173];
    v11 = v0[172];
    v23 = v0[171];
    v24 = v0[168];
    v25 = v0[165];
    v26 = v0[164];
    v27 = v0[161];
    v28 = v0[158];
    v29 = v0[157];
    v30 = v0[155];
    v31 = v0[152];
    v32 = v0[151];
    v33 = v0[148];
    v34 = v0[145];
    v35 = v0[142];
    v36 = v0[139];
    v37 = v0[136];
    v38 = v0[133];
    v39 = v0[130];
    sub_10004EB5C("handleRequest", 13, 2);

    v12 = v0[1];

    return v12();
  }

  if (v0[113])
  {

    goto LABEL_4;
  }

  v14 = v0[130];
  v15 = v0[129];
  v16 = v0[128];
  v17 = v0[122];
  v18 = sub_100026F50(v0 + 68, v0[71]);
  ClientMessage.accessType.getter();
  v19 = RequestAccessType.isRead.getter();
  (*(v15 + 8))(v14, v16);
  v20 = *v18;
  v21 = swift_task_alloc();
  v0[264] = v21;
  *v21 = v0;
  v21[1] = sub_100049CB4;
  if (v19)
  {
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  return sub_100061DD0(v22);
}

uint64_t sub_100049AA0()
{
  v1 = v0[259];
  v2 = v0[188];

  sub_100026FDC(v0 + 68);
  v31 = v0[263];
  v3 = v0[187];
  v4 = v0[186];
  v5 = v0[185];
  v6 = v0[183];
  v7 = v0[182];
  v8 = v0[179];
  v9 = v0[176];
  v10 = v0[173];
  v11 = v0[172];
  v14 = v0[171];
  v15 = v0[168];
  v16 = v0[165];
  v17 = v0[164];
  v18 = v0[161];
  v19 = v0[158];
  v20 = v0[157];
  v21 = v0[155];
  v22 = v0[152];
  v23 = v0[151];
  v24 = v0[148];
  v25 = v0[145];
  v26 = v0[142];
  v27 = v0[139];
  v28 = v0[136];
  v29 = v0[133];
  v30 = v0[130];
  sub_10004EB5C("handleRequest", 13, 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100049CB4()
{
  v2 = *v1;
  v3 = *(*v1 + 2112);
  v4 = *v1;
  *(*v1 + 2120) = v0;

  v5 = *(v2 + 1016);
  if (v0)
  {
    v6 = sub_100049FF4;
  }

  else
  {
    v6 = sub_100049DE0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100049DE0()
{
  v1 = v0[259];
  v2 = v0[188];
  swift_willThrow();

  sub_100026FDC(v0 + 68);
  v31 = v0[259];
  v3 = v0[187];
  v4 = v0[186];
  v5 = v0[185];
  v6 = v0[183];
  v7 = v0[182];
  v8 = v0[179];
  v9 = v0[176];
  v10 = v0[173];
  v11 = v0[172];
  v14 = v0[171];
  v15 = v0[168];
  v16 = v0[165];
  v17 = v0[164];
  v18 = v0[161];
  v19 = v0[158];
  v20 = v0[157];
  v21 = v0[155];
  v22 = v0[152];
  v23 = v0[151];
  v24 = v0[148];
  v25 = v0[145];
  v26 = v0[142];
  v27 = v0[139];
  v28 = v0[136];
  v29 = v0[133];
  v30 = v0[130];
  sub_10004EB5C("handleRequest", 13, 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100049FF4()
{
  v1 = v0[259];
  v2 = v0[188];

  sub_100026FDC(v0 + 68);
  v31 = v0[265];
  v3 = v0[187];
  v4 = v0[186];
  v5 = v0[185];
  v6 = v0[183];
  v7 = v0[182];
  v8 = v0[179];
  v9 = v0[176];
  v10 = v0[173];
  v11 = v0[172];
  v14 = v0[171];
  v15 = v0[168];
  v16 = v0[165];
  v17 = v0[164];
  v18 = v0[161];
  v19 = v0[158];
  v20 = v0[157];
  v21 = v0[155];
  v22 = v0[152];
  v23 = v0[151];
  v24 = v0[148];
  v25 = v0[145];
  v26 = v0[142];
  v27 = v0[139];
  v28 = v0[136];
  v29 = v0[133];
  v30 = v0[130];
  sub_10004EB5C("handleRequest", 13, 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10004A208()
{
  v1 = v0[176];
  v2 = v0[175];
  v3 = v0[174];
  (*(v0[170] + 8))(v0[173], v0[169]);
  (*(v2 + 8))(v1, v3);
  v0[259] = v0[194];
  v4 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v6 = swift_task_alloc();
  v0[260] = v6;
  *v6 = v0;
  v6[1] = sub_100049418;
  v7 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v4, v4);
}

uint64_t sub_10004A314()
{
  v1 = v0[267];
  v2 = v0[266];
  v3 = v0[176];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[169];
  sub_100026FDC(v0 + 58);
  v2(v6, v7);
  (*(v4 + 8))(v3, v5);
  v0[259] = v0[198];
  v8 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v9 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v10 = swift_task_alloc();
  v0[260] = v10;
  *v10 = v0;
  v10[1] = sub_100049418;
  v11 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v8, v8);
}

uint64_t sub_10004A438()
{
  v1 = v0[269];
  v2 = v0[268];
  v3 = v0[176];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[169];
  sub_100026FDC(v0 + 58);
  v2(v6, v7);
  (*(v4 + 8))(v3, v5);
  v0[259] = v0[200];
  v8 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v9 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v10 = swift_task_alloc();
  v0[260] = v10;
  *v10 = v0;
  v10[1] = sub_100049418;
  v11 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v8, v8);
}

uint64_t sub_10004A55C()
{
  v1 = v0[201];
  v2 = v0[176];
  v3 = v0[175];
  v4 = v0[174];
  v5 = v0[173];
  v6 = v0[170];
  v7 = v0[169];

  sub_100026FDC(v0 + 58);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_100026FDC(v0 + 13);
  v0[259] = v0[204];
  v8 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v9 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v10 = swift_task_alloc();
  v0[260] = v10;
  *v10 = v0;
  v10[1] = sub_100049418;
  v11 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v8, v8);
}

uint64_t sub_10004A690()
{
  (*(v0[167] + 8))(v0[168], v0[166]);
  sub_100026FDC(v0 + 88);
  v0[259] = v0[207];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004A778()
{
  (*(v0[163] + 8))(v0[164], v0[162]);
  sub_100026FDC(v0 + 83);
  v0[259] = v0[212];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004A860()
{
  (*(v0[163] + 8))(v0[164], v0[162]);
  v0[259] = v0[214];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004A940()
{
  (*(v0[160] + 8))(v0[161], v0[159]);
  sub_100026FDC(v0 + 78);
  v0[259] = v0[218];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004AA28()
{
  (*(v0[160] + 8))(v0[161], v0[159]);
  v0[259] = v0[220];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004AB08()
{
  (*(v0[154] + 8))(v0[155], v0[153]);
  sub_100026FDC(v0 + 73);
  v0[259] = v0[223];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004ABF0()
{
  (*(v0[154] + 8))(v0[155], v0[153]);
  v0[259] = v0[225];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004ACD0()
{
  (*(v0[147] + 8))(v0[148], v0[146]);
  sub_100026FDC(v0 + 63);
  v0[259] = v0[228];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004ADB8()
{
  (*(v0[147] + 8))(v0[148], v0[146]);
  v0[259] = v0[230];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004AE98()
{
  (*(v0[144] + 8))(v0[145], v0[143]);
  sub_100026FDC(v0 + 53);
  v0[259] = v0[234];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004AF80()
{
  (*(v0[144] + 8))(v0[145], v0[143]);
  v0[259] = v0[236];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004B060()
{
  (*(v0[141] + 8))(v0[142], v0[140]);
  sub_100026FDC(v0 + 43);
  v0[259] = v0[240];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004B148()
{
  (*(v0[141] + 8))(v0[142], v0[140]);
  v0[259] = v0[242];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004B228()
{
  (*(v0[138] + 8))(v0[139], v0[137]);
  sub_100026FDC(v0 + 33);
  v0[259] = v0[246];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004B310()
{
  v1 = v0[247];
  v2 = v0[245];
  v3 = v0[139];
  v4 = v0[138];
  v5 = v0[137];

  (*(v4 + 8))(v3, v5);
  v0[259] = v0[249];
  v6 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v8 = swift_task_alloc();
  v0[260] = v8;
  *v8 = v0;
  v8[1] = sub_100049418;
  v9 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v6, v6);
}

uint64_t sub_10004B414()
{
  (*(v0[135] + 8))(v0[136], v0[134]);
  v0[259] = v0[252];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[260] = v3;
  *v3 = v0;
  v3[1] = sub_100049418;
  v4 = v0[188];

  return BaseObjectGraph.inject<A>(_:)(v0 + 68, v1, v1);
}

uint64_t sub_10004B4F4()
{
  sub_100026FDC(v0 + 28);
  v0[255] = 0;
  sub_100026F50(v0 + 18, v0[21]);
  v1 = swift_task_alloc();
  v0[256] = v1;
  *v1 = v0;
  v1[1] = sub_100048EC0;
  v2 = v0[188];
  v3 = v0[136];

  return sub_100093860(v3, v2);
}

uint64_t sub_10004B5BC()
{
  v1 = v0[259];
  v2 = v0[188];

  v31 = v0[261];
  v3 = v0[187];
  v4 = v0[186];
  v5 = v0[185];
  v6 = v0[183];
  v7 = v0[182];
  v8 = v0[179];
  v9 = v0[176];
  v10 = v0[173];
  v11 = v0[172];
  v14 = v0[171];
  v15 = v0[168];
  v16 = v0[165];
  v17 = v0[164];
  v18 = v0[161];
  v19 = v0[158];
  v20 = v0[157];
  v21 = v0[155];
  v22 = v0[152];
  v23 = v0[151];
  v24 = v0[148];
  v25 = v0[145];
  v26 = v0[142];
  v27 = v0[139];
  v28 = v0[136];
  v29 = v0[133];
  v30 = v0[130];
  sub_10004EB5C("handleRequest", 13, 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10004B7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for RequestAccessType();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for OSSignpostID();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v11 = *(*(sub_100026F94(&qword_10016B150, &qword_100130FA8) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v12 = type metadata accessor for RateLimit();
  v4[24] = v12;
  v13 = *(v12 - 8);
  v4[25] = v13;
  v14 = *(v13 + 64) + 15;
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_10004B988, v3, 0);
}

uint64_t sub_10004B988()
{
  v37 = v0;
  v1 = v0[12];
  v2 = v1[3];
  sub_100026F50(v1, v2);
  if ((sub_1000833B8(v2) & 1) == 0)
  {
LABEL_4:
    v7 = v0[26];
    v8 = v0[22];
    v9 = v0[23];
    v10 = v0[21];
    v11 = v0[18];

    v12 = v0[1];

    return v12();
  }

  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[13];
  v0[27] = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  AccessCredential.rateLimit.getter();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_10002BA6C(v0[23], &qword_10016B150, &qword_100130FA8);
    goto LABEL_4;
  }

  (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
  if (qword_10016A350 != -1)
  {
    swift_once();
  }

  v14 = v0[22];
  v15 = v0[13];
  v16 = type metadata accessor for OSSignposter();
  sub_10002FD14(v16, qword_10016AF10);

  static OSSignpostID.exclusive.getter();
  v17 = OSSignposter.logHandle.getter();
  v18 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v19 = v0[22];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v21;
    *v20 = 136315138;
    v22 = AccessCredential.requestId.getter();
    v24 = sub_10006CB64(v22, v23, &v36);

    *(v20 + 4) = v24;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v25, "performRateLimitingCheck", "requestId=%s", v20, 0xCu);
    sub_100026FDC(v21);
  }

  v26 = v0[22];
  v27 = v0[19];
  v28 = v0[20];
  (*(v28 + 16))(v0[21], v26, v27);
  v29 = type metadata accessor for OSSignpostIntervalState();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v0[28] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v28 + 8))(v26, v27);
  v32 = sub_100026F94(&qword_10016B158, &unk_100130FB0);
  v33 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v34 = swift_task_alloc();
  v0[29] = v34;
  *v34 = v0;
  v34[1] = sub_10004BD30;
  v35 = v0[14];

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v32, v32);
}

uint64_t sub_10004BD30()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_10004C798;
  }

  else
  {
    v6 = sub_10004BE5C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004BE5C()
{
  v1 = v0[27];
  v2 = v0[13];
  v3 = sub_100026F50(v0 + 2, v0[5]);
  v4 = AccessCredential.requestId.getter();
  v6 = v5;
  v0[31] = v5;
  v7 = *v3;
  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = sub_10004BF2C;
  v9 = v0[26];

  return sub_100078788(v4, v6, v9);
}

uint64_t sub_10004BF2C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 120);

  if (v0)
  {
    v7 = sub_10004C158;
  }

  else
  {
    v7 = sub_10004C074;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10004C074()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  sub_100026FDC(v0 + 2);
  sub_10004EB5C("performRateLimitingCheck", 24, 2);

  (*(v3 + 8))(v2, v4);
  v5 = v0[26];
  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[21];
  v9 = v0[18];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10004C158()
{
  sub_100026FDC(v0 + 2);
  v0[34] = v0[33];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_10004C224;
  v4 = v0[14];

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v1, v1);
}

uint64_t sub_10004C224()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_10004C85C;
  }

  else
  {
    v6 = sub_10004C350;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004C350()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[12];
  v5 = sub_100026F50(v0 + 7, v0[10]);
  v6 = v4[4];
  sub_100026F50(v4, v4[3]);
  dispatch thunk of RequestType.accessType.getter();
  v7 = RequestAccessType.isRead.getter();
  (*(v2 + 8))(v1, v3);
  v8 = *v5;
  v9 = swift_task_alloc();
  v0[37] = v9;
  *v9 = v0;
  v9[1] = sub_10004C46C;
  if (v7)
  {
    v10 = 4;
  }

  else
  {
    v10 = 5;
  }

  return sub_100061DD0(v10);
}

uint64_t sub_10004C46C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_10004C698;
  }

  else
  {
    v6 = sub_10004C598;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004C598()
{
  v1 = v0[34];
  swift_willThrow();
  sub_100026FDC(v0 + 7);
  v2 = v0[34];
  v3 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[18];
  sub_10004EB5C("performRateLimitingCheck", 24, 2);

  (*(v5 + 8))(v4, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10004C698()
{
  v1 = v0[34];

  sub_100026FDC(v0 + 7);
  v2 = v0[38];
  v3 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[18];
  sub_10004EB5C("performRateLimitingCheck", 24, 2);

  (*(v5 + 8))(v4, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10004C798()
{
  v0[34] = v0[30];
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_10004C224;
  v4 = v0[14];

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v1, v1);
}

uint64_t sub_10004C85C()
{
  v1 = v0[34];

  v2 = v0[36];
  v3 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[18];
  sub_10004EB5C("performRateLimitingCheck", 24, 2);

  (*(v5 + 8))(v4, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10004C954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  return _swift_task_switch(sub_10004C97C, v4, 0);
}

uint64_t sub_10004C97C()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v3[4];
  sub_100026F50(v3, v3[3]);

  v5 = dispatch thunk of SessionRequest.connectionId.getter();
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 192);
  if (*(v8 + 16) && (v9 = sub_10009E660(v0[11], v0[12], v5, v7), (v10 & 1) != 0))
  {
    v11 = v0[12];
    v12 = v0[10];
    v13 = *(*(v8 + 56) + 8 * v9);
    v0[15] = v13;
    swift_endAccess();

    v14 = v3[3];
    v15 = v3[4];
    v16 = sub_100026F50(v12, v14);
    v0[5] = v14;
    v0[6] = *(v15 + 8);
    v17 = sub_100042BAC(v0 + 2);
    (*(*(v14 - 8) + 16))(v17, v16, v14);
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_10004CC60;
    v19 = v0[13];
    v20 = v0[14];

    return sub_10004B7C8((v0 + 2), v13, v19);
  }

  else
  {
    v23 = v0[11];
    v22 = v0[12];
    swift_endAccess();

    v24 = type metadata accessor for DaemonError();
    sub_10004F508(&qword_10016AB40, &type metadata accessor for DaemonError);
    swift_allocError();
    v26 = v25;
    *v25 = dispatch thunk of SessionRequest.connectionId.getter();
    v26[1] = v27;
    v26[2] = v23;
    v26[3] = v22;
    (*(*(v24 - 8) + 104))(v26, enum case for DaemonError.noSession(_:), v24);
    swift_willThrow();
    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_10004CC60()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {
    v4 = v3[14];

    return _swift_task_switch(sub_10004CDA0, v4, 0);
  }

  else
  {
    sub_100026FDC(v3 + 2);
    v5 = v3[1];
    v6 = v3[15];

    return v5(v6);
  }
}

uint64_t sub_10004CDA0()
{
  v1 = v0[15];

  sub_100026FDC(v0 + 2);
  v2 = v0[17];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10004CE0C(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_10004CE9C, v1, 0);
}

uint64_t sub_10004CE9C()
{
  v1 = *(v0 + 232);
  swift_beginAccess();
  if (*(*(v1 + 192) + 16))
  {
    v2 = *(v0 + 240);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_10016A348 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016AEE8, qword_10016AF00);
    *(v0 + 248) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v5 = *(type metadata accessor for LogMessage() - 8);
    *(v0 + 256) = *(v5 + 72);
    *(v0 + 312) = *(v5 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.debug(_:)();

    v6 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v8 = swift_task_alloc();
    *(v0 + 264) = v8;
    *v8 = v0;
    v8[1] = sub_10004D0EC;
    v9 = *(v0 + 224);

    return BaseObjectGraph.inject<A>(_:)(v0 + 16, v6, v6);
  }
}

uint64_t sub_10004D0EC()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = sub_10004D818;
  }

  else
  {
    v6 = sub_10004D218;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004D218()
{
  v1 = sub_100026F50(v0 + 2, v0[5]);
  v2 = *v1;
  v0[35] = *v1;

  return _swift_task_switch(sub_10004D288, v2, 0);
}

uint64_t sub_10004D288()
{
  if (*(*(v0 + 280) + 216) <= 0)
  {
    if (qword_10016A3B8 != -1)
    {
      swift_once();
      v8 = *(v0 + 280);
    }

    v1 = *(v0 + 312);
    v2 = *(v0 + 248);
    v3 = *(v0 + 256);
    sub_100026F50(qword_10016B350, qword_10016B368);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_1000522FC(0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
    type metadata accessor for Connection();
    static Connection.releaseMemory()();
  }

  v4 = sub_100026F94(&qword_10016AFF0, &qword_100130F08);
  v5 = async function pointer to BaseObjectGraph.injectIfAvailable<A>(_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 288) = v6;
  *v6 = v0;
  v6[1] = sub_10004D45C;
  v7 = *(v0 + 224);

  return BaseObjectGraph.injectIfAvailable<A>(_:)(v0 + 96, v4, v4);
}

uint64_t sub_10004D45C()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = sub_10004D9C0;
  }

  else
  {
    v6 = sub_10004D588;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10004D588()
{
  if (*(v0 + 120))
  {
    sub_10002C604((v0 + 96), v0 + 56);
    sub_100026F50((v0 + 56), *(v0 + 80));
    v1 = swift_task_alloc();
    *(v0 + 304) = v1;
    *v1 = v0;
    v1[1] = sub_10004D698;
    v2 = *(v0 + 224);

    return sub_10008D458(v2);
  }

  else
  {
    sub_10002BA6C(v0 + 96, &qword_10016AFF8, &unk_100130F10);
    sub_100026FDC((v0 + 16));
    v4 = *(v0 + 240);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10004D698()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return _swift_task_switch(sub_10004D7A8, v2, 0);
}

uint64_t sub_10004D7A8()
{
  sub_100026FDC(v0 + 7);
  sub_100026FDC(v0 + 2);
  v1 = v0[30];

  v2 = v0[1];

  return v2();
}

uint64_t sub_10004D818()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 312);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  sub_100026F50(qword_10016AEE8, qword_10016AF00);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010013A580;
  v6._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  *(v0 + 160) = v8;
  v9 = sub_100042BAC((v0 + 136));
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 136, &qword_10016AB10, &unk_100130B10);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v11 = *(v0 + 240);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10004D9C0()
{
  sub_100026FDC((v0 + 16));
  v1 = *(v0 + 296);
  v2 = *(v0 + 312);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  sub_100026F50(qword_10016AEE8, qword_10016AF00);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010013A580;
  v6._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  *(v0 + 160) = v8;
  v9 = sub_100042BAC((v0 + 136));
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v0 + 136, &qword_10016AB10, &unk_100130B10);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v11 = *(v0 + 240);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10004DB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_10004DC04, v3, 0);
}

uint64_t sub_10004DC04()
{
  v1 = v0;
  if (qword_10016A348 != -1)
  {
    swift_once();
  }

  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  sub_100026F50(qword_10016AEE8, qword_10016AF00);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v6 = *(type metadata accessor for LogMessage() - 8);
  v24 = *(v6 + 72);
  v23 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0xD000000000000023;
  v7._object = 0x800000010013A4E0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v0[5] = &type metadata for String;
  v0[2] = v5;
  v0[3] = v4;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 2), &qword_10016AB10, &unk_100130B10);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  swift_beginAccess();
  v9 = *(*(v3 + 192) + 16);
  v10 = swift_task_alloc();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  v11 = v4;

  v13 = sub_10004EFD8(v12, sub_10004E278);

  v14 = *(v3 + 192);
  *(v3 + 192) = v13;

  v15 = *(*(v3 + 192) + 16);
  sub_100026F50(qword_10016AEE8, qword_10016AF00);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x206465766F6D6552;
  v16._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  v1[9] = &type metadata for Int;
  v1[6] = v9 - v15;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v1 + 6), &qword_10016AB10, &unk_100130B10);
  v17._object = 0x800000010013A510;
  v17._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v1[13] = &type metadata for String;
  v1[10] = v5;
  v1[11] = v11;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v1 + 10), &qword_10016AB10, &unk_100130B10);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  v19 = swift_task_alloc();
  v1[22] = v19;
  *v19 = v1;
  v19[1] = sub_10004E000;
  v20 = v1[20];
  v21 = v1[19];

  return sub_10004CE0C(v21);
}

uint64_t sub_10004E000()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10004E110()
{
  sub_100026FDC(v0 + 14);
  sub_100026FDC(v0 + 19);
  v1 = v0[24];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_10004E17C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004E188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10004E1D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004E224()
{
  result = qword_10016AFE0;
  if (!qword_10016AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AFE0);
  }

  return result;
}

uint64_t sub_10004E278(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) == a1 && *(v2 + 24) == a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10004E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = sub_10009E660(a1, a2, a3, a4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v5;
  v18 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000A2A9C();
    v12 = v18;
  }

  v13 = *(v12 + 48) + 32 * v9;
  v14 = *(v13 + 8);
  v15 = *(v13 + 24);

  v16 = *(*(v12 + 56) + 8 * v9);
  sub_1000A0B84(v9, v12);
  *v5 = v12;
  return v16;
}

void *sub_10004E358(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
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

    v8 = sub_10004EE38(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10004E3E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100026F94(&qword_10016B000, &qword_100131BC0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v35 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v36 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = (*(v4 + 48) + 32 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v21 = *(*(v4 + 56) + 8 * v15);
    v22 = *(v8 + 40);
    v23 = v8;
    Hasher.init(_seed:)();

    String.hash(into:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v8 = v23;
    v24 = -1 << *(v23 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v11 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v23 + 48) + 32 * v27);
    *v32 = v18;
    v32[1] = v17;
    v32[2] = v19;
    v32[3] = v20;
    *(*(v23 + 56) + 8 * v27) = v21;
    ++*(v23 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    v9 = v36;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v36 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10004E668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v50 = a3;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DatabaseConnectionManagerImplementation();
  v55[3] = v13;
  v55[4] = &off_100164E98;
  v55[0] = a2;
  v14 = type metadata accessor for ClientSession();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = sub_10004F464(v55, v13);
  v19 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v54[3] = v13;
  v54[4] = &off_100164E98;
  v54[0] = v23;
  swift_defaultActor_initialize();
  v51 = AccessCredential.requestId.getter();
  v52 = v24;
  v25._countAndFlagsBits = 40;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  UUID.init()();
  v26 = UUID.uuidString.getter();
  v28 = v27;
  (*(v9 + 8))(v12, v8);
  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 41;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31 = v52;
  v32 = (v17 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
  *v32 = v51;
  v32[1] = v31;
  v33 = OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_credential;
  v34 = type metadata accessor for AccessCredential();
  v35 = *(v34 - 8);
  v36 = *(v35 + 16);
  v49 = a1;
  v36(v17 + v33, a1, v34);
  sub_100026EEC(v54, v17 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_dbManager);
  sub_10002BA04(v50, v17 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_statusProvider, &qword_10016AFF8, &unk_100130F10);
  v37 = (v17 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_connectionDelegate);
  *v37 = v48;
  v37[1] = &off_100164C80;
  v38 = qword_10016A678;
  swift_unknownObjectRetain();
  if (v38 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D0C8, qword_10016D0E0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v39 = *(type metadata accessor for LogMessage() - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v42._object = 0x800000010013A620;
  v42._countAndFlagsBits = 0xD000000000000012;
  LogMessage.StringInterpolation.appendLiteral(_:)(v42);
  v44 = *(v17 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id);
  v43 = *(v17 + OBJC_IVAR____TtC19amsondevicestoraged13ClientSession_id + 8);
  v53 = &type metadata for String;
  v51 = v44;
  v52 = v43;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v51, &qword_10016AB10, &unk_100130B10);
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  sub_10002BA6C(v50, &qword_10016AFF8, &unk_100130F10);
  (*(v35 + 8))(v49, v34);
  sub_100026FDC(v54);
  sub_100026FDC(v55);
  return v17;
}

uint64_t sub_10004EB5C(const char *a1, uint64_t a2, int a3)
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
  if (qword_10016A350 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016AF10);
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

uint64_t sub_10004EE38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v24 = 0;
  v23 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v27 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 32 * v13);
    v15 = *v14;
    v16 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v13;
    v20 = *(*(a3 + 56) + 8 * v13);

    LOBYTE(v18) = a4(v15, v16, v18, v17, v20);

    v8 = v27;
    if (v18)
    {
      *(v23 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_10004E3E8(v23, a2, v24, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_10004E3E8(v23, a2, v24, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004EFD8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_10004EE38(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_10004E358(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

void sub_10004F158(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10004F164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F1C8(uint64_t a1)
{
  v2 = type metadata accessor for ClientMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004F280(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(&qword_10016B028, &qword_100130F50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004F2EC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(&qword_10016AD38, &qword_1001332F0);
    sub_10004F508(a2, &type metadata accessor for Row);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004F388(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(&qword_10016B0F8, &qword_100130F80);
    sub_10004F508(a2, &type metadata accessor for Row);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004F424()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004F464(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10004F4B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002AD94(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004F508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004F550()
{
  v0 = sub_100026F94(&qword_10016B328, &qword_100131030);
  sub_10002FDA4(v0, qword_10016B160);
  sub_10002FD14(v0, qword_10016B160);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F5D4()
{
  v0 = sub_100026F94(&qword_10016B328, &qword_100131030);
  sub_10002FDA4(v0, qword_10016B178);
  sub_10002FD14(v0, qword_10016B178);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F64C()
{
  v0 = sub_100026F94(&qword_10016B348, &unk_100131050);
  sub_10002FDA4(v0, qword_10016B190);
  sub_10002FD14(v0, qword_10016B190);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F6D0()
{
  v0 = sub_100026F94(&qword_10016B348, &unk_100131050);
  sub_10002FDA4(v0, qword_10016B1A8);
  sub_10002FD14(v0, qword_10016B1A8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F748()
{
  v0 = sub_100026F94(&qword_10016B340, &qword_100131048);
  sub_10002FDA4(v0, qword_10016B1C0);
  sub_10002FD14(v0, qword_10016B1C0);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F7C0()
{
  v0 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FDA4(v0, qword_10016B1D8);
  sub_10002FD14(v0, qword_10016B1D8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F844()
{
  v0 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FDA4(v0, qword_10016B1F0);
  sub_10002FD14(v0, qword_10016B1F0);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F8C8()
{
  v0 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FDA4(v0, qword_10016B208);
  sub_10002FD14(v0, qword_10016B208);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F940()
{
  v0 = sub_100026F94(&qword_10016B338, &qword_100131040);
  sub_10002FDA4(v0, qword_10016B220);
  sub_10002FD14(v0, qword_10016B220);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004F9B8()
{
  v0 = sub_100026F94(&qword_10016B338, &qword_100131040);
  sub_10002FDA4(v0, qword_10016B238);
  sub_10002FD14(v0, qword_10016B238);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004FA30()
{
  v0 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FDA4(v0, qword_10016B250);
  sub_10002FD14(v0, qword_10016B250);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004FAA8()
{
  v0 = sub_100026F94(&qword_10016B328, &qword_100131030);
  sub_10002FDA4(v0, qword_10016B268);
  sub_10002FD14(v0, qword_10016B268);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10004FB20()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10004FBC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *v4;
  if (static Utils.isInternalBuild.getter())
  {
    v8 = *(v7 + 112);
    if (*a3 != -1)
    {
      swift_once();
    }

    v9 = sub_100026F94(&qword_10016B328, &qword_100131030);
    sub_10002FD14(v9, a4);
    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    v10 = (v12 == 2) | v12;
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t sub_10004FC8C()
{
  v1 = *v0;
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 0x20000000;
  }

  v2 = *(v1 + 112);
  if (qword_10016A368 != -1)
  {
    swift_once();
  }

  v3 = sub_100026F94(&qword_10016B348, &unk_100131050);
  sub_10002FD14(v3, qword_10016B190);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v6)
  {
    return 0x20000000;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_10004FD58()
{
  v1 = *v0;
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 0x80000000;
  }

  v2 = *(v1 + 112);
  if (qword_10016A370 != -1)
  {
    swift_once();
  }

  v3 = sub_100026F94(&qword_10016B348, &unk_100131050);
  sub_10002FD14(v3, qword_10016B1A8);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v6)
  {
    return 0x80000000;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_10004FE24()
{
  v1 = *v0;
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 3145728;
  }

  v2 = *(v1 + 112);
  if (qword_10016A378 != -1)
  {
    swift_once();
  }

  v3 = sub_100026F94(&qword_10016B340, &qword_100131048);
  sub_10002FD14(v3, qword_10016B1C0);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v6)
  {
    return 3145728;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_10004FEF0()
{
  v1 = *v0;
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 4096;
  }

  v2 = *(v1 + 112);
  if (qword_10016A380 != -1)
  {
    swift_once();
  }

  v3 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FD14(v3, qword_10016B1D8);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v6)
  {
    return 4096;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_10004FFBC()
{
  v1 = *v0;
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 256;
  }

  v2 = *(v1 + 112);
  if (qword_10016A388 != -1)
  {
    swift_once();
  }

  v3 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FD14(v3, qword_10016B1F0);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v6)
  {
    return 256;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100050088()
{
  v1 = *v0;
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 5;
  }

  v2 = *(v1 + 112);
  if (qword_10016A390 != -1)
  {
    swift_once();
  }

  v3 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FD14(v3, qword_10016B208);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v6)
  {
    return 5;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100050154()
{
  v1 = 0x4C414D524F4ELL;
  v2 = *v0;
  if (static Utils.isInternalBuild.getter())
  {
    v3 = *(v2 + 112);
    if (qword_10016A398 != -1)
    {
      swift_once();
    }

    v4 = sub_100026F94(&qword_10016B338, &qword_100131040);
    sub_10002FD14(v4, qword_10016B220);
    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    if (v7)
    {
      return v6;
    }
  }

  return v1;
}

uint64_t sub_100050238()
{
  v1 = 4997463;
  v2 = *v0;
  if (static Utils.isInternalBuild.getter())
  {
    v3 = *(v2 + 112);
    if (qword_10016A3A0 != -1)
    {
      swift_once();
    }

    v4 = sub_100026F94(&qword_10016B338, &qword_100131040);
    sub_10002FD14(v4, qword_10016B238);
    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    if (v7)
    {
      return v6;
    }
  }

  return v1;
}

uint64_t sub_100050318()
{
  v1 = *v0;
  if ((static Utils.isInternalBuild.getter() & 1) == 0)
  {
    return 500;
  }

  v2 = *(v1 + 112);
  if (qword_10016A3A8 != -1)
  {
    swift_once();
  }

  v3 = sub_100026F94(&qword_10016B330, &qword_100131038);
  sub_10002FD14(v3, qword_10016B250);
  type metadata accessor for LocalPreferences();
  Preferences.subscript.getter();
  if (v6)
  {
    return 500;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1000503E4()
{
  v1 = *v0;
  if (static Utils.isInternalBuild.getter())
  {
    v2 = *(v1 + 112);
    if (qword_10016A3B0 != -1)
    {
      swift_once();
    }

    v3 = sub_100026F94(&qword_10016B328, &qword_100131030);
    sub_10002FD14(v3, qword_10016B268);
    type metadata accessor for LocalPreferences();
    Preferences.subscript.getter();
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1000504A4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1000A0ED0(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100054A78(a2);
    *v2 = v19;
  }

  else
  {
    v9 = *v2;
    v10 = sub_10009E5F4(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v20 = *v3;
      if (!v14)
      {
        sub_1000A2384();
        v15 = v20;
      }

      v16 = *(v15 + 48);
      v17 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
      sub_100054A78(v16 + *(*(v17 - 8) + 72) * v12);
      v18 = *(*(v15 + 56) + 8 * v12);

      sub_1000A0858(v12, v15);
      result = sub_100054A78(a2);
      *v3 = v15;
    }

    else
    {

      return sub_100054A78(a2);
    }
  }

  return result;
}

uint64_t sub_1000505D0()
{
  if (qword_10016A640 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_1001737D0, &unk_10016B350);
}

uint64_t sub_100050634()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016B378);
  v1 = sub_10002FD14(v0, qword_10016B378);
  if (qword_10016A540 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000506FC()
{
  _StringGuts.grow(_:)(16);
  v0 = static Utils.daemonBundleId.getter();
  v2 = v1;

  v3._countAndFlagsBits = 0x61642D6E69616D2ELL;
  v3._object = 0xEE00657361626174;
  String.append(_:)(v3);
  qword_10016B390 = v0;
  *algn_10016B398 = v2;
}

void sub_100050790(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v38 = a5;
  v39 = a4;
  v37 = a6;
  v10 = type metadata accessor for URL.DirectoryHint();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = *(v40 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  v21 = *(*a1 + 16);
  NSFileManager.protectedGroupContainerUrl.getter();
  if (v6)
  {

    return;
  }

  if (!a3)
  {
    (*(v40 + 16))(v18, v20, v41);
    v30 = *(v42 + 104);

    goto LABEL_7;
  }

  v43 = sub_1000893C4(a2, a3);
  v44 = v22;
  v36 = *(v42 + 104);
  v36(v13, enum case for URL.DirectoryHint.isDirectory(_:), v10);
  sub_10002C5B0();
  URL.append<A>(path:directoryHint:)();
  (*(v42 + 8))(v13, v10);

  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  v43 = 0;
  v26 = [v21 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v43];

  if (v26)
  {
    v35 = *(v40 + 16);
    v27 = v43;
    v35(v18, v20, v41);
    v39 = sub_1000893C4(v39, v38);
    v29 = v28;
    v30 = v36;
LABEL_7:
    v43 = v39;
    v44 = v29;
    v30(v13, enum case for URL.DirectoryHint.inferFromPath(_:), v10);
    sub_10002C5B0();
    URL.appending<A>(path:directoryHint:)();

    (*(v42 + 8))(v13, v10);

    v31 = v41;
    v32 = *(v40 + 8);
    v32(v18, v41);
    v32(v20, v31);
    return;
  }

  v33 = v43;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v40 + 8))(v20, v41);
}

void sub_100050B78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100050B84()
{
  v46 = sub_100026F94(&qword_10016B598, &qword_1001311F0);
  v1 = *(*(v46 - 8) + 64);
  v2 = __chkstk_darwin(v46);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v44 = &v39 - v4;
  swift_beginAccess();
  v5 = *(v0 + 232);
  v6 = *(v5 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v48 = _swiftEmptyArrayStorage;

    sub_10007EA2C(0, v6, 0);
    v7 = v48;
    v8 = v5 + 64;
    v9 = -1 << *(v5 + 32);
    v10 = _HashTable.startBucket.getter();
    v11 = 0;
    v12 = *(v5 + 36);
    v40 = v5 + 72;
    v41 = v6;
    v42 = v12;
    v43 = v5 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v5 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_26;
      }

      if (v12 != *(v5 + 36))
      {
        goto LABEL_27;
      }

      v47 = v11;
      v15 = *(v5 + 48);
      v16 = v15 + *(*(type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey() - 8) + 72) * v10;
      v17 = v44;
      sub_100054A14(v16, v44);
      v18 = *(*(v5 + 56) + 8 * v10);
      v19 = v17;
      v20 = v45;
      sub_100057720(v19, v45);
      *(v20 + *(v46 + 48)) = v18;

      v22 = sub_1000533F4(v21);
      v24 = v23;

      sub_10002BA6C(v20, &qword_10016B598, &qword_1001311F0);
      v48 = v7;
      v26 = v7[2];
      v25 = v7[3];
      v27 = v7;
      if (v26 >= v25 >> 1)
      {
        sub_10007EA2C((v25 > 1), v26 + 1, 1);
        v27 = v48;
      }

      v27[2] = v26 + 1;
      v28 = &v27[3 * v26];
      v28[4] = v22;
      v28[5] = v24;
      v28[6] = v18;
      v13 = 1 << *(v5 + 32);
      if (v10 >= v13)
      {
        goto LABEL_28;
      }

      v8 = v43;
      v29 = *(v43 + 8 * v14);
      if ((v29 & (1 << v10)) == 0)
      {
        goto LABEL_29;
      }

      v7 = v27;
      LODWORD(v12) = v42;
      if (v42 != *(v5 + 36))
      {
        goto LABEL_30;
      }

      v30 = v29 & (-2 << (v10 & 0x3F));
      if (v30)
      {
        v13 = __clz(__rbit64(v30)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v14 << 6;
        v32 = v14 + 1;
        v33 = (v40 + 8 * v14);
        while (v32 < (v13 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            sub_1000579A0(v10, v42, 0);
            v13 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        sub_1000579A0(v10, v42, 0);
      }

LABEL_4:
      v11 = v47 + 1;
      v10 = v13;
      if (v47 + 1 == v41)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (v7[2])
    {
      sub_100026F94(&qword_10016B5A0, &qword_1001311F8);
      v36 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v36 = &_swiftEmptyDictionarySingleton;
    }

    v48 = v36;

    sub_100056DE0(v37, 1, &v48);

    return v48;
  }

  return result;
}

uint64_t sub_100050F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[34] = v3;
  v4[31] = a1;
  v4[32] = a2;
  v5 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v4[36] = v6;
  v7 = *(v6 - 8);
  v4[37] = v7;
  v8 = *(v7 + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v9 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v4[40] = v9;
  v10 = *(v9 - 8);
  v4[41] = v10;
  v4[42] = *(v10 + 64);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return _swift_task_switch(sub_1000510D0, v3, 0);
}

uint64_t sub_1000510D0()
{
  v103 = v0;
  if (qword_10016A3C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 312);
  v3 = *(v0 + 248);
  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016B378);
  sub_100054A14(v3, v1);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  v7 = OS_os_log.signpostsEnabled.getter();
  v8 = *(v0 + 352);
  if (v7)
  {
    v9 = *(v0 + 312);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v102 = v11;
    *v10 = 136315138;
    v12 = sub_1000533F4();
    v14 = v13;
    sub_100054A78(v8);
    v15 = sub_10006CB64(v12, v14, &v102);

    *(v10 + 4) = v15;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v16, "connection(for:)", "key=%s", v10, 0xCu);
    sub_100026FDC(v11);
  }

  else
  {

    sub_100054A78(v8);
  }

  v17 = *(v0 + 312);
  v18 = *(v0 + 288);
  v19 = *(v0 + 296);
  v20 = *(v0 + 272);
  (*(v19 + 16))(*(v0 + 304), v17, v18);
  v21 = type metadata accessor for OSSignpostIntervalState();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v0 + 360) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v19 + 8))(v17, v18);
  swift_beginAccess();
  v24 = *(v20 + 232);
  if (!*(v24 + 16) || (v25 = sub_10009E5F4(*(v0 + 248)), (v26 & 1) == 0))
  {
    v47 = *(v0 + 272);
    swift_endAccess();
    swift_beginAccess();
    v48 = *(v47 + 224);
    if (*(v48 + 16) && (v49 = sub_10009E5F4(*(v0 + 248)), (v50 & 1) != 0))
    {
      v51 = *(*(v48 + 56) + 8 * v49);
      *(v0 + 368) = v51;
      swift_endAccess();
      v52 = async function pointer to Task.value.getter[1];

      v53 = swift_task_alloc();
      *(v0 + 376) = v53;
      v54 = type metadata accessor for Connection();
      v35 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v53 = v0;
      v53[1] = sub_1000519C8;
      v36 = &protocol self-conformance witness table for Error;
      v40 = v0 + 240;
      v33 = v51;
      v34 = v54;
    }

    else
    {
      v55 = *(v0 + 320);
      v56 = *(v0 + 248);
      swift_endAccess();
      v57 = *(v55 + 20);
      v58 = StorageCategory.fileProtectionType.getter();
      *(v0 + 392) = v58;
      if (!v58)
      {
        v79 = type metadata accessor for DaemonError();
        sub_100057958(&qword_10016AB40, 255, &type metadata accessor for DaemonError);
        swift_allocError();
        v81 = v80;
        v82 = type metadata accessor for StorageCategory();
        (*(*(v82 - 8) + 16))(v81, v56 + v57, v82);
        (*(*(v79 - 8) + 104))(v81, enum case for DaemonError.unsupportedStorageCategory(_:), v79);
        swift_willThrow();
        v84 = *(v0 + 352);
        v83 = *(v0 + 360);
        v85 = *(v0 + 344);
        v87 = *(v0 + 304);
        v86 = *(v0 + 312);
        v88 = *(v0 + 280);
        sub_100057328("connection(for:)", 16, 2);

        v89 = *(v0 + 8);

        return v89();
      }

      v59 = v58;
      v61 = *(v0 + 336);
      v60 = *(v0 + 344);
      v62 = *(v0 + 328);
      v64 = *(v0 + 272);
      v63 = *(v0 + 280);
      v65 = *(v0 + 248);
      v101 = v65;
      v66 = type metadata accessor for TaskPriority();
      (*(*(v66 - 8) + 56))(v63, 1, 1, v66);
      sub_100054A14(v65, v60);
      v68 = sub_100057958(&qword_10016B558, v67, type metadata accessor for DatabaseConnectionManagerImplementation);
      v69 = (*(v62 + 80) + 40) & ~*(v62 + 80);
      v70 = (v61 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
      v71 = swift_allocObject();
      v71[2] = v64;
      v71[3] = v68;
      v71[4] = v64;
      sub_100057720(v60, v71 + v69);
      *(v71 + v70) = v59;
      swift_retain_n();
      v72 = v59;
      v73 = sub_100053FBC(0, 0, v63, &unk_1001311C0, v71, &type metadata accessor for Connection);
      *(v0 + 400) = v73;
      swift_beginAccess();

      v74 = *(v47 + 224);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = *(v47 + 224);
      *(v47 + 224) = 0x8000000000000000;
      sub_1000A0ED0(v73, v101, isUniquelyReferenced_nonNull_native);
      *(v47 + 224) = v102;
      swift_endAccess();
      v76 = async function pointer to Task.value.getter[1];
      v77 = swift_task_alloc();
      *(v0 + 408) = v77;
      v78 = type metadata accessor for Connection();
      v35 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v77 = v0;
      v77[1] = sub_100051D14;
      v36 = &protocol self-conformance witness table for Error;
      v40 = v0 + 232;
      v33 = v73;
      v34 = v78;
    }

    return Task.value.getter(v40, v33, v34, v35, v36);
  }

  v27 = *(v0 + 272);
  v28 = *(v0 + 248);
  v29 = *(*(v24 + 56) + 8 * v25);
  swift_endAccess();
  swift_beginAccess();

  v30 = *(v27 + 240);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *(v27 + 240);
  v32 = v102;
  *(v27 + 240) = 0x8000000000000000;
  v37 = sub_10009E5F4(v28);
  v38 = v32[2];
  v39 = (v33 & 1) == 0;
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    __break(1u);
    return Task.value.getter(v40, v33, v34, v35, v36);
  }

  v41 = v33;
  if (v32[3] >= v40)
  {
    if ((v31 & 1) == 0)
    {
      sub_1000A216C();
      v32 = v102;
    }
  }

  else
  {
    v42 = *(v0 + 248);
    sub_10009EB50(v40, v31);
    v32 = v102;
    v43 = sub_10009E5F4(v42);
    if ((v41 & 1) != (v44 & 1))
    {
      v45 = *(v0 + 320);

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v37 = v43;
  }

  *(v27 + 240) = v32;
  if ((v41 & 1) == 0)
  {
    v90 = *(v0 + 344);
    sub_100054A14(*(v0 + 248), v90);
    sub_1000A1844(v37, v90, &_swiftEmptySetSingleton, v32);
  }

  v92 = *(v0 + 256);
  v91 = *(v0 + 264);
  v93 = v32[7] + 8 * v37;

  sub_100054BF0(&v102, v92, v91);
  swift_endAccess();

  v95 = *(v0 + 352);
  v94 = *(v0 + 360);
  v96 = *(v0 + 344);
  v98 = *(v0 + 304);
  v97 = *(v0 + 312);
  v99 = *(v0 + 280);
  sub_100057328("connection(for:)", 16, 2);

  v100 = *(v0 + 8);

  return v100(v29);
}

uint64_t sub_1000519C8()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 272);
  if (v0)
  {
    v6 = sub_10005210C;
  }

  else
  {
    v6 = sub_100051AF4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100051AF4()
{
  v30 = v0;
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[31];
  swift_beginAccess();
  v4 = *(v1 + 240);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v1 + 240);
  v6 = v29;
  *(v1 + 240) = 0x8000000000000000;
  v8 = sub_10009E5F4(v3);
  v9 = v6[2];
  v10 = (v7 & 1) == 0;
  result = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    return result;
  }

  v12 = v7;
  if (v6[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000A216C();
      v6 = v29;
    }
  }

  else
  {
    v13 = v0[31];
    sub_10009EB50(result, isUniquelyReferenced_nonNull_native);
    v6 = v29;
    v14 = sub_10009E5F4(v13);
    if ((v12 & 1) != (v15 & 1))
    {
      v16 = v0[40];

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v8 = v14;
  }

  *(v1 + 240) = v6;
  if ((v12 & 1) == 0)
  {
    v17 = v0[43];
    sub_100054A14(v0[31], v17);
    sub_1000A1844(v8, v17, &_swiftEmptySetSingleton, v6);
  }

  v18 = v0[46];
  v20 = v0[32];
  v19 = v0[33];
  v21 = v6[7] + 8 * v8;

  sub_100054BF0(&v29, v20, v19);
  swift_endAccess();

  v23 = v0[44];
  v22 = v0[45];
  v24 = v0[43];
  v26 = v0[38];
  v25 = v0[39];
  v27 = v0[35];
  sub_100057328("connection(for:)", 16, 2);

  v28 = v0[1];

  return v28(v2);
}

uint64_t sub_100051D14()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 272);
  if (v0)
  {
    v6 = sub_1000521E0;
  }

  else
  {
    v6 = sub_100051E40;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100051E40()
{
  v37 = v0;
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[29];
  swift_beginAccess();

  v4 = *(v1 + 232);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v1 + 232);
  *(v1 + 232) = 0x8000000000000000;
  sub_1000A1060(v3, v2, isUniquelyReferenced_nonNull_native);
  *(v1 + 232) = v36;
  swift_endAccess();
  swift_beginAccess();
  v6 = *(v1 + 240);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v1 + 240);
  v8 = v36;
  *(v1 + 240) = 0x8000000000000000;
  v10 = sub_10009E5F4(v2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    return result;
  }

  v14 = v9;
  if (v8[3] >= result)
  {
    if ((v7 & 1) == 0)
    {
      sub_1000A216C();
      v8 = v36;
    }
  }

  else
  {
    v15 = v0[31];
    sub_10009EB50(result, v7);
    v8 = v36;
    v16 = sub_10009E5F4(v15);
    if ((v14 & 1) != (v17 & 1))
    {
      v18 = v0[40];

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v10 = v16;
  }

  v35 = v3;
  *(v1 + 240) = v8;
  if ((v14 & 1) == 0)
  {
    v19 = v0[43];
    sub_100054A14(v0[31], v19);
    sub_1000A1844(v10, v19, &_swiftEmptySetSingleton, v8);
  }

  v21 = v0[49];
  v20 = v0[50];
  v22 = v0[43];
  v24 = v0[33];
  v23 = v0[34];
  v26 = v0[31];
  v25 = v0[32];
  v27 = v8[7] + 8 * v10;

  sub_100054BF0(&v36, v25, v24);
  swift_endAccess();

  sub_100054A14(v26, v22);
  swift_beginAccess();
  sub_1000504A4(0, v22);
  swift_endAccess();

  v29 = v0[44];
  v28 = v0[45];
  v30 = v0[43];
  v32 = v0[38];
  v31 = v0[39];
  v33 = v0[35];
  sub_100057328("connection(for:)", 16, 2);

  v34 = v0[1];

  return v34(v35);
}

uint64_t sub_10005210C()
{
  v1 = v0[46];

  v2 = v0[48];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[35];
  sub_100057328("connection(for:)", 16, 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000521E0()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[43];
  v4 = v0[34];
  sub_100054A14(v0[31], v3);
  swift_beginAccess();
  sub_1000504A4(0, v3);
  swift_endAccess();

  v5 = v0[52];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[43];
  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[35];
  sub_100057328("connection(for:)", 16, 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000522FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a2;
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v52 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v51);
  v12 = (v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = v48 - v13;
  swift_beginAccess();
  v15 = *(v2 + 240);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v50 = " for namespace: ";
  v56 = v15;

  v22 = 0;
  v49 = xmmword_10012FA10;
  v55 = v14;
  while (v19)
  {
LABEL_11:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    sub_100054A14(*(v56 + 48) + *(v8 + 72) * (v24 | (v22 << 6)), v14);
    sub_100057720(v14, v12);
    swift_beginAccess();
    v25 = *(v3 + 240);
    if (*(v25 + 16) && (v26 = sub_10009E5F4(v12), (v27 & 1) != 0))
    {
      v60 = *(*(v25 + 56) + 8 * v26);
      v28 = v60;
      swift_endAccess();
      if (*(v28 + 16))
      {
        v53 = v8;
        v54 = v3;
        v29 = *(v28 + 40);
        Hasher.init(_seed:)();
        swift_bridgeObjectRetain_n();
        v30 = v57;
        String.hash(into:)();
        v31 = Hasher._finalize()();
        v32 = v30;
        v33 = -1 << *(v28 + 32);
        v34 = v31 & ~v33;
        if (((*(v28 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
LABEL_22:

          v8 = v53;
          v3 = v54;
          goto LABEL_24;
        }

        v35 = ~v33;
        while (1)
        {
          v36 = (*(v28 + 48) + 16 * v34);
          if (*v36 == a1 && v36[1] == v32)
          {
            break;
          }

          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v32 = v57;
          if (v38)
          {
            break;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v28 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v8 = v53;
        if (qword_10016A3B8 != -1)
        {
          swift_once();
        }

        v48[2] = qword_10016B368;
        v48[3] = qword_10016B370;
        v48[1] = sub_100026F50(qword_10016B350, qword_10016B368);
        sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
        v39 = *(type metadata accessor for LogMessage() - 8);
        v40 = *(v39 + 72);
        v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        *(swift_allocObject() + 16) = v49;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v42._object = (v50 | 0x8000000000000000);
        v42._countAndFlagsBits = 0xD00000000000001CLL;
        LogMessage.StringInterpolation.appendLiteral(_:)(v42);
        v59[3] = v51;
        v43 = sub_100042BAC(v59);
        sub_100054A14(v12, v43);
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002BA6C(v59, &qword_10016AB10, &unk_100130B10);
        v44._countAndFlagsBits = 0;
        v44._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v44);
        LogMessage.init(stringInterpolation:)();
        Logger.info(_:)();

        sub_1000A3548(a1, v57);

        v45 = v60;
        if (*(v60 + 16))
        {
          v3 = v54;
          swift_beginAccess();
          v46 = *(v3 + 240);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v58 = *(v3 + 240);
          *(v3 + 240) = 0x8000000000000000;
          sub_1000A11F0(v45, v12, isUniquelyReferenced_nonNull_native);
          *(v3 + 240) = v58;
          swift_endAccess();
        }

        else
        {

          v3 = v54;
          swift_beginAccess();
          sub_100097954(v12);
          swift_endAccess();

          swift_beginAccess();
          sub_100097A04(v12);
          swift_endAccess();
        }

        result = sub_100054A78(v12);
        v14 = v55;
      }

      else
      {

LABEL_24:
        sub_100054A78(v12);

        v14 = v55;
      }
    }

    else
    {
      swift_endAccess();
      result = sub_100054A78(v12);
    }
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
    }

    v19 = *(v16 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1000528EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 24);
  v14 = *(v3 + 112);
  v18 = *(a3 + 16);
  v19 = v13;
  v20 = v3;
  v21 = a1;
  v22 = a2;
  os_unfair_lock_lock(v14 + 6);
  sub_1000579AC(&v14[4], v12);
  os_unfair_lock_unlock(v14 + 6);
  if (!v4)
  {
    v15 = URL.path(percentEncoded:)(0);
    v16 = (*(v9 + 8))(v12, v8);
    __chkstk_darwin(v16);
    *(&v17 - 1) = v15;
    os_unfair_lock_lock(v14 + 6);
    sub_1000578F0(&v14[4], &v23);
    os_unfair_lock_unlock(v14 + 6);
  }
}

void sub_100052A9C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = String._bridgeToObjectiveC()();
  v14 = 0;
  v5 = [v3 attributesOfItemAtPath:v4 error:&v14];

  v6 = v14;
  if (v5)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_100057958(&qword_10016A778, 255, type metadata accessor for FileAttributeKey);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v6;

    if (*(v7 + 16) && (v9 = sub_10009E778(NSFileSize), (v10 & 1) != 0))
    {
      sub_10002FE08(*(v7 + 56) + 32 * v9, v15);

      sub_10005790C();
      if (swift_dynamicCast())
      {
        v11 = v14;
        v12 = [v14 unsignedLongLongValue];

        *a2 = v12;
        return;
      }
    }

    else
    {
    }

    *a2 = 0;
  }

  else
  {
    v13 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100052C84(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100052C8CLL);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100052C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LogMessage.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_1000528EC(a1, a2, a3);
  v10 = v9;
  sub_100026F50((v3 + 136), *(v3 + 160));
  type metadata accessor for ConfigurationStoreImplementation();
  return v10 >= sub_10004FC8C();
}

uint64_t sub_100052FF0()
{
  v1 = *(v0 + 16);
  sub_100053050();
  v2 = *(v0 + 8);

  return v2();
}

void sub_100053050()
{
  v1 = type metadata accessor for LogMessage.StringInterpolation();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100054274();
  os_unfair_lock_lock((v0 + 120));
  *(v0 + 128) = v3;

  os_unfair_lock_unlock((v0 + 120));
}

uint64_t sub_1000532DC()
{
  v0 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  sub_10002FDA4(v0, qword_10016B3A0);
  v1 = sub_10002FD14(v0, qword_10016B3A0);
  if (qword_10016A3C8 != -1)
  {
    swift_once();
  }

  v3 = qword_10016B390;
  v2 = *algn_10016B398;
  v4 = v0[5];
  v5 = enum case for StorageCategory.classC(_:);
  v6 = type metadata accessor for StorageCategory();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  *v1 = v3;
  *(v1 + 1) = v2;
  v7 = &v1[v0[6]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v1[v0[7]] = 0;
  v1[v0[8]] = 1;
}

void sub_1000535DC()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  String.hash(into:)();
  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v5 = v4[5];
  type metadata accessor for StorageCategory();
  sub_100057958(&qword_10016B550, 255, &type metadata accessor for StorageCategory);
  dispatch thunk of Hashable.hash(into:)();
  v6 = (v1 + v4[6]);
  if (v6[1])
  {
    v7 = *v6;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + v4[7]));
  Hasher._combine(_:)(*(v1 + v4[8]));
}

Swift::Int sub_1000536DC()
{
  Hasher.init(_seed:)();
  sub_1000535DC();
  return Hasher._finalize()();
}

Swift::Int sub_100053720()
{
  Hasher.init(_seed:)();
  sub_1000535DC();
  return Hasher._finalize()();
}

uint64_t sub_100053764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v8 = *(*(type metadata accessor for Connection.Attributes() - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v6[7] = v9;
  v10 = *(v9 - 8);
  v6[8] = v10;
  v11 = *(v10 + 64) + 15;
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100053858, a4, 0);
}

uint64_t sub_100053858()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *v2;
  v5 = v2[1];
  v6 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  v7 = (v2 + v6[6]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v3 + 112);
  v11 = swift_task_alloc();
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v3;
  v11[5] = v4;
  v11[6] = v5;
  os_unfair_lock_lock(v10 + 6);
  sub_1000578B4(&v10[4], v1);
  os_unfair_lock_unlock(v10 + 6);

  v13 = *(v0 + 64);
  v12 = *(v0 + 72);
  v14 = *(v0 + 56);
  v15 = *(v0 + 32);
  URL.absoluteString.getter();
  (*(v13 + 8))(v12, v14);
  *(v0 + 112) = *(v15 + v6[7]);
  v16 = *(v0 + 48);
  if (*(v15 + v6[8]) == 1)
  {
    static Connection.Attributes.service.getter();
  }

  else
  {
    static Connection.Attributes.none.getter();
  }

  v18 = *(v0 + 40);
  v17 = *(v0 + 48);
  type metadata accessor for Connection();
  v19 = v18;
  *(v0 + 80) = Connection.__allocating_init(_:readonly:protectionType:attributes:)();
  v20 = *(v0 + 24);
  v21 = swift_task_alloc();
  *(v0 + 88) = v21;
  *v21 = v0;
  v21[1] = sub_100053A78;

  return sub_10007C3FC(v20 + 136, v20 + 176);
}

uint64_t sub_100053A78(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v10 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_100053C90;
  }

  else
  {
    v7 = v3[10];
    v8 = v3[3];

    v6 = sub_100053BA0;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100053BA0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_100081920((*(v0 + 24) + 136), *(v0 + 112));
  v3 = *(v0 + 96);
  if (v2)
  {
    v4 = *(v0 + 96);

    v6 = *(v0 + 72);
    v7 = *(v0 + 48);

    v8 = *(v0 + 8);
  }

  else
  {

    v5 = sub_10007C770();

    v10 = *(v0 + 72);
    v11 = *(v0 + 48);
    **(v0 + 16) = v5;

    v8 = *(v0 + 8);
  }

  return v8();
}

uint64_t sub_100053C90()
{
  v1 = v0[10];

  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100053D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100042774(a3, v24 - v10);
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

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10002BA6C(a3, &qword_10016AD80, &qword_1001311B0);

      return v22;
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
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100053FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v26 - v12;
  sub_100042774(a3, v26 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_10002BA6C(v13, &qword_10016AD80, &qword_1001311B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a2;
      v22 = String.utf8CString.getter() + 32;
      a6(0);

      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      else
      {
        v23 = 0;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      sub_10002BA6C(a3, &qword_10016AD80, &qword_1001311B0);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002BA6C(a3, &qword_10016AD80, &qword_1001311B0);
  a6(0);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_100054274()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for OSSignpostID();
  v31 = *(v32 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v32);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignposter();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A3C0 != -1)
  {
    swift_once();
  }

  v14 = sub_10002FD14(v9, qword_10016B378);
  v29 = v10;
  v30 = v9;
  (*(v10 + 16))(v13, v14, v9);
  static OSSignpostID.exclusive.getter();
  v15 = swift_slowAlloc();
  *v15 = 0;
  v16 = OSSignposter.logHandle.getter();
  v17 = static os_signpost_type_t.begin.getter();
  v18 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v18, "computerContainerSize", "", v15, 2u);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *(v1 + 112);
  os_unfair_lock_lock((v19 + 24));
  v20 = *(v19 + 16);
  v21 = *(v20 + 16);
  v22 = v28;
  NSFileManager.protectedGroupContainerUrl.getter();

  if (v22)
  {
    os_unfair_lock_unlock((v19 + 24));
  }

  else
  {
    v20 = FileManagerWrapper.directorySize(at:)(v5);
    (*(v26 + 8))(v5, v27);
    os_unfair_lock_unlock((v19 + 24));
    v23 = static os_signpost_type_t.end.getter();
    v24 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v23, v24, "computerContainerSize", "", v15, 2u);
  }

  (*(v31 + 8))(v8, v32);
  (*(v29 + 8))(v13, v30);
  return v20;
}

uint64_t sub_10005465C()
{
  v1 = v0[14];

  sub_100026FDC(v0 + 17);
  sub_100026FDC(v0 + 22);
  v2 = v0[28];

  v3 = v0[29];

  v4 = v0[30];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

char *sub_1000546E0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100026F94(&qword_10016B498, &qword_1001310C8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100054724(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for StorageCategory();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000547E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StorageCategory();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey()
{
  result = qword_10016B4F8;
  if (!qword_10016B4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000548D4()
{
  type metadata accessor for StorageCategory();
  if (v0 <= 0x3F)
  {
    sub_100054978();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100054978()
{
  if (!qword_10016B508)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10016B508);
    }
  }
}

uint64_t sub_100054A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100054A78(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100054AD4(Swift::UInt *a1, Swift::UInt a2, Swift::UInt a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == a2 && v14 == a3)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100055C78(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_100054BF0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_100055DE8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100054D40(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ForwardDeletionRules();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100057958(&qword_10016B570, 255, &type metadata accessor for ForwardDeletionRules);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100057958(&qword_10016B578, 255, &type metadata accessor for ForwardDeletionRules);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100055F68(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100055028(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_100056214(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_1000551D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100026F94(&qword_10016B5A8, &unk_100131200);
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
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
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

uint64_t sub_10005543C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100026F94(&qword_10016B560, &qword_1001311D0);
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

uint64_t sub_10005569C(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for ForwardDeletionRules();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100026F94(&qword_10016B580, &qword_1001311D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100057958(&qword_10016B570, 255, &type metadata accessor for ForwardDeletionRules);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1000559FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100026F94(&qword_10016B590, &qword_1001325A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100055C78(Swift::Int result, Swift::UInt a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_1000551D4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1000A2F20();
      a3 = v9;
      goto LABEL_15;
    }

    sub_1000563FC(v7 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(a2);
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v16 = *v14;
      v15 = v14[1];
      if (v16 == v6 && v15 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v6;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_18:
  type metadata accessor for _NSRange(0);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100055DE8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_10005543C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000A3064();
      goto LABEL_16;
    }

    sub_100056634(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
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

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100055F68(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for ForwardDeletionRules();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10005569C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1000A31C0();
      goto LABEL_12;
    }

    sub_10005686C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100057958(&qword_10016B570, 255, &type metadata accessor for ForwardDeletionRules);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100057958(&qword_10016B578, 255, &type metadata accessor for ForwardDeletionRules);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100056214(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1000559FC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1000A33F8();
      goto LABEL_16;
    }

    sub_100056B8C(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000563FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100026F94(&qword_10016B5A8, &unk_100131200);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
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