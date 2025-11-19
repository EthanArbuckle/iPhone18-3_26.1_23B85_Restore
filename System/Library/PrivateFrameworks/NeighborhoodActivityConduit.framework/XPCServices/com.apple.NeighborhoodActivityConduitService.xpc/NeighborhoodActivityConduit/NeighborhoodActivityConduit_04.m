uint64_t sub_10005DE28()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005DE8C()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10005DEF0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000E0D68();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v3[9] = qword_1001230F0;

  return _swift_task_switch(sub_10005DFF4, v6, 0);
}

uint64_t sub_10005DFF4()
{
  *(v0 + 80) = *(*(v0 + 32) + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;

  return _swift_task_switch(sub_10005E09C, v1, 0);
}

uint64_t sub_10005E09C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_100044D58(*(v0 + 24));
  *(v0 + 88) = v3;

  return _swift_task_switch(sub_10005E10C, v1, 0);
}

uint64_t sub_10005E10C()
{
  v1 = v0[11];
  if (v1)
  {
    if (qword_10011DCA8 != -1)
    {
      swift_once();
    }

    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[4];
    v7 = v0[2];
    sub_1000E2DA8();
    (*(v5 + 16))(v2, v7, v4);
    v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v9 = swift_allocObject();
    v0[12] = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v1;
    (*(v5 + 32))(v9 + v8, v2, v4);
    v10 = v6;

    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_10005E438;

    return sub_10005CD04();
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v13 = v0[3];
    v14 = sub_1000E1F08();
    sub_1000049D0(v14, qword_100123128);
    v15 = v13;
    v16 = sub_1000E1EE8();
    v17 = sub_1000E2678();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[3];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v18;
      *v20 = v18;
      v21 = v18;
      _os_log_impl(&_mh_execute_header, v16, v17, "[PullConversation] Unable to find conduit device for %@.", v19, 0xCu);
      sub_1000033C8(v20, &unk_10011EAC0, &unk_1000F0E60);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v22 = v0[8];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_10005E438()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_10005E5D0;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 72);

    v5 = sub_10005E560;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10005E560()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10005E5D0()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[14];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10005E644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = type metadata accessor for HandoffState(0);
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v8 = type metadata accessor for HandoffInfo(0);
  v4[22] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v10 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v11 = *(*(sub_10000ADE4(&qword_10011F888, &qword_1000F22B0) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v12 = qword_1001230F0;
  v4[29] = qword_1001230F0;

  return _swift_task_switch(sub_10005E810, v12, 0);
}

uint64_t sub_10005E810()
{
  *(v0 + 240) = *(*(v0 + 136) + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;

  return _swift_task_switch(sub_10005E8B8, v1, 0);
}

uint64_t sub_10005E8B8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  sub_100044D58(*(v0 + 128));
  *(v0 + 248) = v3;

  return _swift_task_switch(sub_10005E928, v1, 0);
}

uint64_t sub_10005E928()
{
  v83 = v0;
  v1 = v0[31];
  if (!v1)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v14 = v0[16];
    v15 = sub_1000E1F08();
    sub_1000049D0(v15, qword_100123128);
    v16 = v14;
    v17 = sub_1000E1EE8();
    v18 = sub_1000E2678();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[16];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v19;
      *v21 = v19;
      v22 = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "[StartConversation] Rejecting start conversation request because we cannot find a device for %@.", v20, 0xCu);
      sub_1000033C8(v21, &unk_10011EAC0, &unk_1000F0E60);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    goto LABEL_31;
  }

  v2 = v0[28];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  v0[32] = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v5 + v6, v2, &qword_10011F888, &qword_1000F22B0);
  v7 = *(v3 + 48);
  LODWORD(v4) = v7(v2, 1, v4);
  sub_1000033C8(v2, &qword_10011F888, &qword_1000F22B0);
  if (v4 != 1)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v23 = v0[17];
    v24 = sub_1000E1F08();
    sub_1000049D0(v24, qword_100123128);
    v25 = v23;
    v26 = sub_1000E1EE8();
    v27 = sub_1000E2678();

    if (os_log_type_enabled(v26, v27))
    {
      v79 = v27;
      v28 = v5;
      v30 = v0[25];
      v29 = v0[26];
      v77 = v0[18];
      v31 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v82 = v78;
      *v31 = 136315138;
      sub_10000CB64(v28 + v6, v29, &qword_10011F888, &qword_1000F22B0);
      sub_10000CB64(v29, v30, &qword_10011F888, &qword_1000F22B0);
      v32 = v7(v30, 1, v77);
      v33 = v0[25];
      if (v32 == 1)
      {
        sub_1000033C8(v33, &qword_10011F888, &qword_1000F22B0);
        v34 = 0xE300000000000000;
        v35 = 7104878;
      }

      else
      {
        v63 = v0[20];
        v62 = v0[21];
        v64 = v0[18];
        sub_1000A877C(v33, v62, type metadata accessor for HandoffState);
        sub_1000A87E4(v62, v63, type metadata accessor for HandoffState);
        v35 = sub_1000E2368();
        v34 = v65;
        sub_1000AD5EC(v62, type metadata accessor for HandoffState);
      }

      sub_1000033C8(v0[26], &qword_10011F888, &qword_1000F22B0);
      v66 = sub_100029C70(v35, v34, &v82);

      *(v31 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v26, v79, "[StartConversation] Rejecting start conversation request because we're already in a session: %s", v31, 0xCu);
      sub_10000E9DC(v78);
    }

    else
    {
    }

    v13 = TUMakeNeighborhoodConduitError();
    goto LABEL_30;
  }

  sub_100020430(v0[15]);
  if (v8)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v9 = sub_1000E1F08();
    sub_1000049D0(v9, qword_100123128);
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "[StartConversation] Rejecting start conversation request because trying to initiate a request with a blocked contact", v12, 2u);
    }

    v13 = TUMakeNeighborhoodConduitError();
LABEL_30:
    v13;
    swift_willThrow();

LABEL_31:
    v68 = v0[27];
    v67 = v0[28];
    v70 = v0[25];
    v69 = v0[26];
    v72 = v0[23];
    v71 = v0[24];
    v74 = v0[20];
    v73 = v0[21];

    v75 = v0[1];

    return v75();
  }

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v80 = v5;
  v81 = v1;
  v36 = v0[16];
  v37 = sub_1000E1F08();
  v0[33] = sub_1000049D0(v37, qword_100123128);
  v38 = v36;
  v39 = sub_1000E1EE8();
  v40 = sub_1000E2698();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = v0[16];
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    *(v42 + 4) = v41;
    *v43 = v41;
    v44 = v41;
    _os_log_impl(&_mh_execute_header, v39, v40, "[StartConversation] Initializing request to start conversation on %@.", v42, 0xCu);
    sub_1000033C8(v43, &unk_10011EAC0, &unk_1000F0E60);
  }

  v45 = v0[29];
  v46 = v0[27];
  v47 = v0[24];
  v48 = v0[18];
  v49 = v0[19];
  v50 = v0[17];

  v51 = sub_1000E2538();
  (*(*(v51 - 8) + 56))(v47, 1, 1, v51);
  v53 = sub_1000A75DC(&qword_100120020, v52, type metadata accessor for ConduitActor);
  v54 = swift_allocObject();
  v54[2] = v45;
  v54[3] = v53;
  v54[4] = v50;
  v54[5] = v81;
  v50;

  v55 = sub_100022678(0, 0, v47, &unk_1000F2AD0, v54);
  v0[34] = v55;
  *v46 = v55;
  swift_storeEnumTagMultiPayload();
  v56 = *(v49 + 56);
  v0[35] = v56;
  v0[36] = (v49 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v56(v46, 0, 1, v48);
  swift_beginAccess();

  sub_1000A884C(v46, v80 + v6);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v46, &qword_10011F888, &qword_1000F22B0);
  v57 = async function pointer to Task.value.getter[1];
  v58 = swift_task_alloc();
  v0[37] = v58;
  v59 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  *v58 = v0;
  v58[1] = sub_10005F238;
  v61 = v0[22];
  v60 = v0[23];

  return Task.value.getter(v60, v55, v61, v59, &protocol self-conformance witness table for Error);
}

uint64_t sub_10005F238()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = sub_10005F9D4;
  }

  else
  {
    v6 = sub_10005F364;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005F364()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 216);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  sub_1000A87E4(*(v0 + 184), v5, type metadata accessor for HandoffInfo);
  swift_storeEnumTagMultiPayload();
  v2(v5, 0, 1, v7);
  swift_beginAccess();
  sub_1000A884C(v5, v6 + v4);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v5, &qword_10011F888, &qword_1000F22B0);
  v9 = v8;
  v10 = sub_1000E1EE8();
  v11 = sub_1000E2698();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 128);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v12;
    *v14 = v12;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v10, v11, "[StartConversation] Successfully started conversation on %@.", v13, 0xCu);
    sub_1000033C8(v14, &unk_10011EAC0, &unk_1000F0E60);
  }

  v16 = *(v0 + 176);
  v17 = *(v0 + 184);
  v18 = *(v0 + 136);

  v19 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v20 = *(v16 + 24);
  v21 = *(v18 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  isa = sub_1000E0D18().super.isa;
  v23 = [v21 activeConversationWithUUID:isa];

  if (v23)
  {
    v24 = *(v0 + 304);
    v25 = *(v0 + 248);
    v65 = *(v0 + 224);
    v66 = *(v0 + 216);
    v67 = *(v0 + 208);
    v68 = *(v0 + 200);
    v64 = *(v0 + 184);
    v69 = *(v0 + 192);
    v70 = *(v0 + 168);
    v71 = *(v0 + 160);
    v62 = *(v0 + 272);
    v63 = *(v0 + 112);
    v26 = sub_10005A700(*(v0 + 120));
    v27 = *(v18 + v19);
    sub_1000D4B50(v26);

    sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
    sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
    v28 = sub_1000E25D8().super.isa;

    [v27 addRemoteMembers:v28 toConversation:v23];

    v29 = sub_1000E0D68();
    (*(*(v29 - 8) + 16))(v63, v17 + v20, v29);
    sub_1000AD5EC(v64, type metadata accessor for HandoffInfo);

    v30 = *(v0 + 8);
  }

  else
  {
    v31 = *(v0 + 264);
    v32 = sub_1000E1EE8();
    v33 = sub_1000E2678();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "[StartConversation] [InternalStatusError] Unable to find conversation after it was started.", v34, 2u);
    }

    v35 = *(v0 + 272);
    v36 = *(v0 + 184);

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    sub_1000AD5EC(v36, type metadata accessor for HandoffInfo);
    v37 = *(v0 + 264);
    v38 = *(v0 + 128);
    swift_errorRetain();
    v39 = sub_1000E1EE8();
    v40 = sub_1000E2678();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = *(v0 + 128);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412546;
      *(v42 + 4) = v41;
      *v43 = v41;
      *(v42 + 12) = 2112;
      v44 = v41;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v45;
      v43[1] = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "[StartConversation] Failed to start conversation on %@ due to %@.", v42, 0x16u);
      sub_10000ADE4(&unk_10011EAC0, &unk_1000F0E60);
      swift_arrayDestroy();
    }

    v47 = *(v0 + 280);
    v46 = *(v0 + 288);
    v48 = *(v0 + 248);
    v49 = *(v0 + 256);
    v50 = *(v0 + 216);
    v51 = *(v0 + 136);
    v52 = *(v0 + 144);

    v47(v50, 1, 1, v52);
    swift_beginAccess();
    sub_1000A884C(v50, v51 + v49);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v50, &qword_10011F888, &qword_1000F22B0);
    swift_willThrow();

    v54 = *(v0 + 216);
    v53 = *(v0 + 224);
    v56 = *(v0 + 200);
    v55 = *(v0 + 208);
    v58 = *(v0 + 184);
    v57 = *(v0 + 192);
    v60 = *(v0 + 160);
    v59 = *(v0 + 168);

    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t sub_10005F9D4()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 304);
  v3 = *(v0 + 264);
  v4 = *(v0 + 128);
  swift_errorRetain();
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2678();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 128);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2112;
    v10 = v7;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[StartConversation] Failed to start conversation on %@ due to %@.", v8, 0x16u);
    sub_10000ADE4(&unk_10011EAC0, &unk_1000F0E60);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 280);
  v12 = *(v0 + 288);
  v14 = *(v0 + 248);
  v15 = *(v0 + 256);
  v16 = *(v0 + 216);
  v17 = *(v0 + 136);
  v18 = *(v0 + 144);

  v13(v16, 1, 1, v18);
  swift_beginAccess();
  sub_1000A884C(v16, v17 + v15);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v16, &qword_10011F888, &qword_1000F22B0);
  swift_willThrow();

  v20 = *(v0 + 216);
  v19 = *(v0 + 224);
  v22 = *(v0 + 200);
  v21 = *(v0 + 208);
  v24 = *(v0 + 184);
  v23 = *(v0 + 192);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);

  v27 = *(v0 + 8);

  return v27();
}

void sub_10005FC2C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

char *sub_10005FCA8()
{
  v1 = [v0 value];
  v2 = sub_1000E2338();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = [v0 value];
    v7 = sub_1000E2338();
    v9 = v8;

    v10 = sub_1000D2030(0, 1, 1, _swiftEmptyArrayStorage);
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1000D2030((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v9;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v14 = [v0 normalizedValue];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1000E2338();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1000D2030(0, *(v10 + 2) + 1, 1, v10);
      }

      v21 = *(v10 + 2);
      v20 = *(v10 + 3);
      if (v21 >= v20 >> 1)
      {
        v10 = sub_1000D2030((v20 > 1), v21 + 1, 1, v10);
      }

      *(v10 + 2) = v21 + 1;
      v22 = &v10[16 * v21];
      *(v22 + 4) = v16;
      *(v22 + 5) = v18;
    }

    else
    {
    }
  }

  return v10;
}

id related decl e for TUNeighborhoodActivityConduitError.init(_:underlying:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1000E0BD8();
  }

  else
  {
    v2 = 0;
  }

  v3 = TUMakeNeighborhoodConduitError();

  return v3;
}

uint64_t sub_10005FED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[4] = a2;
  v7 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_10005FF74, 0, 0);
}

uint64_t sub_10005FF74()
{
  v1 = v0[9];
  v15 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = sub_1000E2538();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v2;

  sub_100061074(v1, &unk_1000F2830, v8);
  sub_1000033C8(v1, &unk_10011EA50, &qword_1000F0D30);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v15;
  sub_100061074(v1, &unk_1000F2840, v9);
  sub_1000033C8(v1, &unk_10011EA50, &qword_1000F0D30);
  v10 = async function pointer to ThrowingTaskGroup.nextResult()[1];
  v11 = swift_task_alloc();
  v0[10] = v11;
  v12 = sub_10000ADE4(&qword_10011FBD8, &qword_1000F2848);
  *v11 = v0;
  v11[1] = sub_100060170;
  v13 = v0[4];

  return ThrowingTaskGroup.nextResult()(v0 + 2, v12);
}

uint64_t sub_100060170()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1000AE230;
  }

  else
  {
    *(v2 + 96) = *(v2 + 16);
    *(v2 + 25) = *(v2 + 24);
    v4 = sub_100060294;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100060294()
{
  v1 = *(v0 + 25);
  if (v1 == 255)
  {
    sub_10002CFB4();
    swift_allocError();
    *v4 = 1;
    goto LABEL_5;
  }

  v2 = **(v0 + 32);
  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  sub_1000E25A8();
  if (v1)
  {
    v3 = *(v0 + 96);
LABEL_5:
    v5 = *(v0 + 72);
    swift_willThrow();

    v6 = *(v0 + 8);
    goto LABEL_7;
  }

  v7 = *(v0 + 72);

  v6 = *(v0 + 8);
LABEL_7:

  return v6();
}

uint64_t sub_10006039C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100060440, 0, 0);
}

uint64_t sub_100060440()
{
  v1 = v0[9];
  v15 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = sub_1000E2538();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v2;

  sub_100061264(v1, &unk_1000F2340, v8);
  sub_1000033C8(v1, &unk_10011EA50, &qword_1000F0D30);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v15;
  sub_100061264(v1, &unk_1000F2350, v9);
  sub_1000033C8(v1, &unk_10011EA50, &qword_1000F0D30);
  v10 = async function pointer to ThrowingTaskGroup.nextResult()[1];
  v11 = swift_task_alloc();
  v0[10] = v11;
  v12 = sub_10000ADE4(&unk_10011F8D0, &qword_1000F2358);
  *v11 = v0;
  v11[1] = sub_10006063C;
  v13 = v0[4];

  return ThrowingTaskGroup.nextResult()(v0 + 2, v12);
}

uint64_t sub_10006063C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1000608A0;
  }

  else
  {
    *(v2 + 96) = *(v2 + 16);
    *(v2 + 25) = *(v2 + 24);
    v4 = sub_100060760;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100060760()
{
  v1 = *(v0 + 25);
  if (v1 == 255)
  {
    sub_10002CFB4();
    swift_allocError();
    *v7 = 1;
  }

  else
  {
    v2 = **(v0 + 32);
    sub_10000ADE4(&qword_10011ED40, &qword_1000F1188);
    sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    sub_1000E25A8();
    v3 = *(v0 + 96);
    if ((v1 & 1) == 0)
    {
      v4 = *(v0 + 72);

      v5 = *(v0 + 8);

      return v5(v3 & 1);
    }
  }

  v8 = *(v0 + 72);
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000608BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(sub_10000ADE4(&qword_10011FAA0, &qword_1000F26A8) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = sub_10000ADE4(&qword_10011FAA8, &qword_1000F26B0);
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v11 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_100060A0C, 0, 0);
}

uint64_t sub_100060A0C()
{
  v1 = v0[13];
  v2 = v0[6];
  v16 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = sub_1000E2538();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;

  sub_100061460(v1, &unk_1000F26C0, v8);
  sub_1000033C8(v1, &unk_10011EA50, &qword_1000F0D30);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v16;
  sub_100061460(v1, &unk_1000F26D0, v9);
  sub_1000033C8(v1, &unk_10011EA50, &qword_1000F0D30);
  v10 = async function pointer to ThrowingTaskGroup.nextResult()[1];
  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = sub_10000ADE4(&unk_10011FAB0, &qword_1000F26D8);
  *v11 = v0;
  v11[1] = sub_100060C0C;
  v13 = v0[8];
  v14 = v0[3];

  return ThrowingTaskGroup.nextResult()(v13, v12);
}

uint64_t sub_100060C0C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100060F60;
  }

  else
  {
    v3 = sub_100060D20;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100060D20()
{
  v1 = v0[8];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    sub_1000033C8(v1, &qword_10011FAA0, &qword_1000F26A8);
    sub_10002CFB4();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
LABEL_5:
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    v12 = v0[8];

    v13 = v0[1];
    goto LABEL_7;
  }

  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[3];
  sub_1000AD400(v1, v3, &qword_10011FAA8, &qword_1000F26B0);
  v6 = *v5;
  type metadata accessor for HandoffInfo(0);
  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  sub_1000E25A8();
  sub_10000CB64(v3, v4, &qword_10011FAA8, &qword_1000F26B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = v0[12];
    v8 = *v0[11];
    swift_willThrow();
    sub_1000033C8(v7, &qword_10011FAA8, &qword_1000F26B0);
    goto LABEL_5;
  }

  v14 = v0[13];
  v15 = v0[11];
  v16 = v0[8];
  v17 = v0[2];
  sub_1000033C8(v0[12], &qword_10011FAA8, &qword_1000F26B0);
  sub_1000A877C(v15, v17, type metadata accessor for HandoffInfo);

  v13 = v0[1];
LABEL_7:

  return v13();
}

uint64_t sub_100060F7C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_100002D64;

  return v9(a1);
}

uint64_t sub_100061074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  sub_10000CB64(a1, v20 - v9, &unk_10011EA50, &qword_1000F0D30);
  v11 = sub_1000E2538();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000033C8(v10, &unk_10011EA50, &qword_1000F0D30);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1000E24B8();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000E2528();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_100061264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  sub_10000CB64(a1, v20 - v9, &unk_10011EA50, &qword_1000F0D30);
  v11 = sub_1000E2538();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000033C8(v10, &unk_10011EA50, &qword_1000F0D30);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1000E24B8();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000E2528();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  sub_10000ADE4(&qword_10011ED40, &qword_1000F1188);
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_100061460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v20 - v9;
  sub_10000CB64(a1, v20 - v9, &unk_10011EA50, &qword_1000F0D30);
  v11 = sub_1000E2538();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000033C8(v10, &unk_10011EA50, &qword_1000F0D30);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1000E24B8();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000E2528();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  type metadata accessor for HandoffInfo(0);
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_100061650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1000E2B28();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100061710, 0, 0);
}

uint64_t sub_100061710()
{
  v1 = v0[6];
  sub_1000E2CF8();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000617D0;
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  return sub_100003DA4(v5, v4, 0, 0, 1);
}

uint64_t sub_1000617D0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000AE214;
  }

  else
  {
    v6 = sub_1000AE1EC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100061940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1000E2B28();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100061A00, 0, 0);
}

uint64_t sub_100061A00()
{
  v1 = v0[6];
  sub_1000E2CF8();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_100061AC0;
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  return sub_100003DA4(v5, v4, 0, 0, 1);
}

uint64_t sub_100061AC0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_10002CC4C;
  }

  else
  {
    v6 = sub_100061C30;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100061C30()
{
  v1 = v0[8];
  sub_1000E2588();
  if (!v1)
  {
    sub_10002CFB4();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
  }

  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100061CD4()
{
  v1 = [v0 knownIdentifiersByHandleType];
  sub_10000CAAC(0, &qword_10011DF80, NSNumber_ptr);
  sub_10000EA70(&qword_10011FA40, &qword_10011DF80, NSNumber_ptr);
  v2 = sub_1000E22B8();

  v3 = [objc_allocWithZone(NSNumber) initWithInteger:2];
  v4 = v3;
  if (*(v2 + 16) && (v5 = sub_10000B424(v3), (v6 & 1) != 0))
  {
    v7 = (*(v2 + 56) + 16 * v5);
    v9 = *v7;
    v8 = v7[1];

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100061DF0()
{
  type metadata accessor for ConduitActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1001230F0 = v0;
  return result;
}

uint64_t sub_100061E2C()
{
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100061E88()
{
  v0 = type metadata accessor for ConduitActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v0);
}

void sub_100061EC0()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 conversationManager];

  v3 = [v0 sharedInstance];
  v4 = objc_allocWithZone(type metadata accessor for NeighborhoodActivityConduit());
  sub_100066480(v2, v3);
  qword_1001230F8 = v5;
}

uint64_t sub_100061F64()
{
  v1 = type metadata accessor for HandoffState(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v34 - v7;
  v9 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v34 - v15;
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v19 = sub_1000E1F08();
  sub_1000049D0(v19, qword_100123128);
  v20 = v0;
  v21 = sub_1000E1EE8();
  v22 = sub_1000E2698();

  v39 = v22;
  if (os_log_type_enabled(v21, v22))
  {
    v35 = v6;
    v36 = v8;
    v23 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    v38 = v23;
    *v23 = 136315138;
    v24 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
    swift_beginAccess();
    sub_10000CB64(&v20[v24], v18, &qword_10011F888, &qword_1000F22B0);
    sub_10000CB64(v18, v16, &qword_10011F888, &qword_1000F22B0);
    if ((*(v2 + 48))(v16, 1, v1) == 1)
    {
      sub_1000033C8(v16, &qword_10011F888, &qword_1000F22B0);
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      v27 = v36;
      sub_1000A877C(v16, v36, type metadata accessor for HandoffState);
      sub_1000A87E4(v27, v35, type metadata accessor for HandoffState);
      v26 = sub_1000E2368();
      v25 = v28;
      sub_1000AD5EC(v27, type metadata accessor for HandoffState);
    }

    sub_1000033C8(v18, &qword_10011F888, &qword_1000F22B0);
    v29 = sub_100029C70(v26, v25, &v40);

    v30 = v38;
    *(v38 + 1) = v29;
    _os_log_impl(&_mh_execute_header, v21, v39, "Handoff state updated to %s", v30, 0xCu);
    sub_10000E9DC(v37);
  }

  else
  {
  }

  v31 = *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffStateSubject];
  v32 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(&v20[v32], v13, &qword_10011F888, &qword_1000F22B0);
  sub_1000E1FE8();
  return sub_1000033C8(v13, &qword_10011F888, &qword_1000F22B0);
}

uint64_t sub_100062394(int a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v58 = a1;
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v52 - v9;
  v11 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v52 - v13;
  v15 = type metadata accessor for HandoffInfo(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v57 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v59 = (&v52 - v21);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v22 = sub_1000E1F08();
  v56 = sub_1000049D0(v22, qword_100123128);
  v23 = sub_1000E1EE8();
  v24 = sub_1000E2698();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v54 = v16;
    v26 = v25;
    v27 = swift_slowAlloc();
    v53 = v3;
    v28 = v27;
    v61[0] = v27;
    *v26 = 136315138;
    v60 = v58 & 1;
    v29 = sub_1000E2368();
    v55 = v10;
    v31 = v15;
    v32 = v14;
    v33 = a3;
    v34 = sub_100029C70(v29, v30, v61);
    v10 = v55;

    *(v26 + 4) = v34;
    a3 = v33;
    v14 = v32;
    v15 = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "Safely get handoff info, requireJoined: %s", v26, 0xCu);
    sub_10000E9DC(v28);
    v4 = v53;

    v16 = v54;
  }

  v35 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  v36 = v59;
  sub_10000CB64(v4 + v35, v59, &qword_10011F888, &qword_1000F22B0);
  v37 = type metadata accessor for HandoffState(0);
  if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    a2(v14);
    return sub_1000033C8(v14, &qword_10011F8B8, &qword_1000F22D8);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v57;
    sub_1000A877C(v36, v57, type metadata accessor for HandoffInfo);
    sub_1000A87E4(v39, v14, type metadata accessor for HandoffInfo);
    (*(v16 + 56))(v14, 0, 1, v15);
    a2(v14);
    sub_1000033C8(v14, &qword_10011F8B8, &qword_1000F22D8);
    return sub_1000AD5EC(v39, type metadata accessor for HandoffInfo);
  }

  else
  {
    v40 = v4;
    v41 = *v36;
    if (v58)
    {
      v42 = sub_1000E1EE8();
      v43 = sub_1000E2678();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
      }

      (*(v16 + 56))(v14, 1, 1, v15);
      a2(v14);

      return sub_1000033C8(v14, &qword_10011F8B8, &qword_1000F22D8);
    }

    v45 = sub_1000E2538();
    (*(*(v45 - 8) + 56))(v10, 1, 1, v45);
    v46 = qword_10011DC30;

    v47 = v40;

    if (v46 != -1)
    {
      swift_once();
    }

    v49 = qword_1001230F0;
    v50 = sub_1000A75DC(&qword_100120020, v48, type metadata accessor for ConduitActor);
    v51 = swift_allocObject();
    v51[2] = v49;
    v51[3] = v50;
    v51[4] = v41;
    v51[5] = v47;
    v51[6] = a2;
    v51[7] = a3;

    sub_100022960(0, 0, v10, &unk_1000F22F0, v51);
  }
}

uint64_t sub_100062A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = *(*(sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8) - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v7[5] = v10;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7[6] = qword_1001230F0;
  v11 = async function pointer to Task.value.getter[1];
  v12 = swift_task_alloc();
  v7[7] = v12;
  v13 = type metadata accessor for HandoffInfo(0);
  v7[8] = v13;
  v14 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  *v12 = v7;
  v12[1] = sub_100062B74;

  return Task.value.getter(v10, a4, v13, v14, &protocol self-conformance witness table for Error);
}

uint64_t sub_100062B74()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = sub_100062FC8;
  }

  else
  {
    v6 = sub_100062CAC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100062CAC()
{
  v1 = v0[5];
  v2 = v0[2];
  (*(*(v0[8] - 8) + 56))(v1, 0, 1);
  sub_1000033C8(v1, &qword_10011F8B8, &qword_1000F22D8);
  v3 = swift_allocObject();
  v0[9] = v3;
  swift_unknownObjectWeakInit();
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100062DFC;

  return sub_10005CF64(500000000000000000, 0, &unk_1000F2308, v3);
}

uint64_t sub_100062DFC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  v5 = *(v2 + 72);
  v6 = *(v2 + 48);
  if (v0)
  {

    v7 = sub_1000AE208;
  }

  else
  {

    v7 = sub_100062F58;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100062F58()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_100062394(1, *(v0 + 24), *(v0 + 32));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100062FC8()
{
  v1 = v0[5];
  v2 = v0[2];
  (*(*(v0[8] - 8) + 56))(v1, 1, 1);
  sub_1000033C8(v1, &qword_10011F8B8, &qword_1000F22D8);
  v3 = swift_allocObject();
  v0[9] = v3;
  swift_unknownObjectWeakInit();
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100062DFC;

  return sub_10005CF64(500000000000000000, 0, &unk_1000F2308, v3);
}

uint64_t sub_100063118(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = *(*(sub_10000ADE4(&qword_10011F8E0, &qword_1000F2368) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = sub_10000ADE4(&qword_10011F8E8, &qword_1000F2370);
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v10 = sub_10000ADE4(&unk_10011F8F0, &unk_1000F2378);
  v2[17] = v10;
  v11 = *(v10 - 8);
  v2[18] = v11;
  v12 = *(v11 + 64) + 15;
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000632F8, 0, 0);
}

uint64_t sub_1000632F8()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 152);
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 112);
    *(v0 + 40) = *(Strong + OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffStateSubject);
    sub_10000ADE4(&unk_10011EAD0, &qword_1000F0E80);
    sub_100002C64(&qword_10011F900, &unk_10011EAD0, &qword_1000F0E80);
    sub_1000E20E8();
    sub_1000E1FA8();
    (*(v5 + 8))(v4, v6);
    v7 = sub_100002C64(&qword_10011F908, &unk_10011F8F0, &unk_1000F2378);
    v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_10006352C;
    v10 = *(v0 + 152);
    v11 = *(v0 + 136);
    v12 = *(v0 + 104);

    return dispatch thunk of AsyncIteratorProtocol.next()(v12, v11, v7);
  }

  else
  {
    v13 = *(v0 + 152);
    v14 = *(v0 + 128);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v17 = *(v0 + 88);
    **(v0 + 56) = 0;

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10006352C()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1000638A8;
  }

  else
  {
    v3 = sub_100063640;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10006365C()
{
  v1 = *(v0 + 104);
  if ((*(*(v0 + 80) + 48))(v1, 1, *(v0 + 72)) == 1)
  {
    v2 = *(v0 + 160);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v3 = *(v0 + 152);
    v4 = *(v0 + 128);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);
    **(v0 + 56) = 0;

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 96);
    sub_1000AD400(v1, v10, &qword_10011F888, &qword_1000F22B0);
    v11 = type metadata accessor for HandoffState(0);
    if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
    {
      v12 = *(v0 + 88);
      sub_10000CB64(*(v0 + 96), v12, &qword_10011F888, &qword_1000F22B0);
      sub_1000AD5EC(v12, type metadata accessor for HandoffState);
    }

    sub_1000033C8(*(v0 + 96), &qword_10011F888, &qword_1000F22B0);
    v13 = sub_100002C64(&qword_10011F908, &unk_10011F8F0, &unk_1000F2378);
    v14 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    *v15 = v0;
    v15[1] = sub_10006352C;
    v16 = *(v0 + 152);
    v17 = *(v0 + 136);
    v18 = *(v0 + 104);

    return dispatch thunk of AsyncIteratorProtocol.next()(v18, v17, v13);
  }
}

uint64_t sub_1000638A8()
{
  *(v0 + 48) = *(v0 + 176);
  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100063934()
{
  v0 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v26 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_10000C400(&_swiftEmptyArrayStorage);
    v7 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
    swift_beginAccess();
    sub_10000CB64(&v5[v7], v3, &qword_10011F888, &qword_1000F22B0);
    v8 = sub_1000E2358();
    v31 = &type metadata for String;
    *&v30 = v8;
    *(&v30 + 1) = v9;
    sub_10000C154(&v30, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v6;
    sub_1000CAB60(v29, 0x5366666F646E6168, 0xEC00000065746174, isUniquelyReferenced_nonNull_native);
    v11 = v28;
    v12 = OBJC_IVAR___CSDNeighborhoodActivityConduit_nearbyDevices;
    swift_beginAccess();
    v13 = *&v5[v12];

    sub_10005AC44(v14);
    v16 = v15;

    v31 = sub_10000ADE4(&qword_10011F9B8, &qword_1000F24A8);
    *&v30 = v16;
    sub_10000C154(&v30, v29);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v11;
    sub_1000CAB60(v29, 0x565479627261656ELL, 0xE900000000000073, v17);
    v18 = v27;
    v19 = *&v5[OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy];
    if (v19)
    {
      sub_10000ADE4(&unk_10011F9C0, &unk_1000F24B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000F1FB0;
      *(inited + 32) = 0x746567726174;
      *(inited + 40) = 0xE600000000000000;
      v21 = *(v19 + 48);
      *(inited + 48) = *(v19 + 40);
      *(inited + 56) = v21;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x6E69726566667562;
      *(inited + 88) = 0xE900000000000067;
      *(inited + 96) = *(v19 + 72);
      *(inited + 120) = &type metadata for Bool;
      *(inited + 128) = 0x4D646569786F7270;
      *(inited + 136) = 0xEF73656761737365;
      v22 = *(v19 + 64);
      *(inited + 168) = &type metadata for Int;
      *(inited + 144) = v22;

      v23 = sub_10000C400(inited);
      swift_setDeallocating();
      sub_10000ADE4(&qword_10011DF78, &qword_1000F04D8);
      swift_arrayDestroy();
      v31 = sub_10000ADE4(&qword_10011F9D0, &unk_1000F24C0);
      *&v30 = v23;
      sub_10000C154(&v30, v29);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v27 = v18;
      sub_1000CAB60(v29, 0x506567617373656DLL, 0xEC00000079786F72, v24);
    }

    v25 = sub_100063EEC(0xD000000000000011, 0x80000001000EBB30);

    swift_bridgeObjectRelease_n();
    return v25;
  }

  return result;
}

_OWORD *sub_100063EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E0AB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = objc_opt_self();
  isa = sub_1000E22A8().super.isa;
  *v42 = 0;
  v11 = [v9 dataWithPropertyList:isa format:200 options:0 error:v42];

  v12 = *v42;
  if (!v11)
  {
    v18 = v12;
    sub_1000E0BE8();

    swift_willThrow();
    return v11;
  }

  v13 = sub_1000E0C88();
  v15 = v14;

  v41 = v15;
  v16 = v15 >> 62;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_13;
    }

    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    v21 = __OFSUB__(v19, v20);
    v17 = v19 - v20;
    if (!v21)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    LODWORD(v17) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v17 = v17;
    goto LABEL_13;
  }

  if (v16)
  {
    goto LABEL_10;
  }

  v17 = BYTE6(v41);
LABEL_13:
  if (__OFADD__(v17, 200))
  {
    __break(1u);
    goto LABEL_37;
  }

  v22 = malloc(v17 + 200);
  if (v22)
  {
    v11 = v22;
    *v42 = 1;
    memset(&v42[4], 0, 196);
    sub_1000A6B90(a1, a2, &v42[136], &v43);
    if (v16 > 1)
    {
      if (v16 != 2)
      {
LABEL_31:
        *(v11 + 24) = *&v42[192];
        *&v42[4] = 0;
        v33 = *&v42[176];
        v11[10] = *&v42[160];
        v11[11] = v33;
        goto LABEL_32;
      }

      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      v21 = __OFSUB__(v24, v25);
      v26 = v24 - v25;
      if (!v21)
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v16)
    {
      *&v42[4] = BYTE6(v41);
      v23 = *&v42[176];
      v11[10] = *&v42[160];
      v11[11] = v23;
      *(v11 + 24) = *&v42[192];
LABEL_32:
      v34 = *&v42[112];
      v11[6] = *&v42[96];
      v11[7] = v34;
      v35 = *&v42[144];
      v11[8] = *&v42[128];
      v11[9] = v35;
      v36 = *&v42[48];
      v11[2] = *&v42[32];
      v11[3] = v36;
      v37 = *&v42[80];
      v11[4] = *&v42[64];
      v11[5] = v37;
      v38 = *&v42[16];
      *v11 = *v42;
      v11[1] = v38;
LABEL_34:
      v39 = v41;
      sub_1000E0CA8();
      sub_100006660(v13, v39);
      return v11;
    }

    LODWORD(v26) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = v26;
LABEL_25:
    if ((v26 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v26))
      {
        *&v42[4] = v26;
        v27 = *&v42[176];
        v11[10] = *&v42[160];
        v11[11] = v27;
        *(v11 + 24) = *&v42[192];
        v28 = *&v42[112];
        v11[6] = *&v42[96];
        v11[7] = v28;
        v29 = *&v42[144];
        v11[8] = *&v42[128];
        v11[9] = v29;
        v30 = *&v42[48];
        v11[2] = *&v42[32];
        v11[3] = v30;
        v31 = *&v42[80];
        v11[4] = *&v42[64];
        v11[5] = v31;
        v32 = *&v42[16];
        *v11 = *v42;
        v11[1] = v32;
        if (v16 == 2)
        {
          if (!__OFSUB__(*(v13 + 24), *(v13 + 16)))
          {
            goto LABEL_34;
          }

          __break(1u);
          goto LABEL_31;
        }

        if (!__OFSUB__(HIDWORD(v13), v13))
        {
          goto LABEL_34;
        }

LABEL_41:
        __break(1u);
      }

      goto LABEL_38;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *v42 = 12;
  sub_10000C400(&_swiftEmptyArrayStorage);
  sub_1000A75DC(&unk_10011F9D8, 255, &type metadata accessor for POSIXError);
  sub_1000E0BC8();
  v11 = v8;
  sub_1000E0AA8();
  (*(v5 + 8))(v8, v4);
  swift_willThrow();
  sub_100006660(v13, v41);
  return v11;
}

uint64_t sub_1000643C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

uint64_t sub_100064418()
{
  v3 = *(*&v0[OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_10000ADE4(&unk_100120850, &qword_1000F2488);
  sub_100002C64(&qword_10011F9A0, &unk_100120850, &qword_1000F2488);
  sub_1000E2028();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_10000ADE4(&qword_10011F9A8, &qword_1000F2490);
  sub_100002C64(&qword_10011F9B0, &qword_10011F9A8, &qword_1000F2490);
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();
}

uint64_t sub_1000645A8(void **a1, void *a2)
{
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = *a1;
  v9 = sub_1000E2538();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = qword_10011DC30;
  v11 = v8;
  v13 = a2;
  if (v10 != -1)
  {
    swift_once();
  }

  v14 = qword_1001230F0;
  v15 = sub_1000A75DC(&qword_100120020, v12, type metadata accessor for ConduitActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v8;
  v16[5] = v13;

  sub_100022960(0, 0, v7, &unk_1000F24A0, v16);
}

uint64_t sub_100064740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;

  return _swift_task_switch(sub_1000647D8, v6, 0);
}

uint64_t sub_1000647D8()
{
  v1 = v0[2];
  v2 = *(v0[3] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationUIStateObserver);
  if (v1)
  {
    v3 = v1;

    sub_10000EEB4(v3);
  }

  else
  {

    sub_10000F0B0();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100064884()
{
  v1 = *(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers);
  v3 = *(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationJoinedSubject);
  sub_10000ADE4(&unk_100120840, &qword_1000F2430);
  sub_100002C64(&qword_10011F970, &unk_100120840, &qword_1000F2430);
  sub_1000E2028();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000ADE4(&qword_10011F978, &qword_1000F2438);
  sub_100002C64(&unk_10011F980, &qword_10011F978, &qword_1000F2438);
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();

  v4 = *(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_conversationLeftSubject);
  sub_1000E2028();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();
}

uint64_t sub_100064AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;

  return _swift_task_switch(sub_100064B7C, v6, 0);
}

uint64_t sub_100064B7C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1000A9980(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100064C18(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = *a1;
  v12 = sub_1000E2538();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = qword_10011DC30;

  v15 = v11;
  if (v13 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230F0;
  v17 = sub_1000A75DC(&qword_100120020, v14, type metadata accessor for ConduitActor);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = a2;
  v18[5] = v15;

  sub_100022F54(0, 0, v10, a4, v18);
}

uint64_t sub_100064DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v5[8] = qword_1001230F0;

  return _swift_task_switch(sub_100064E50, v6, 0);
}

uint64_t sub_100064E50()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_100064F4C;
    v4 = *(v0 + 56);

    return sub_10006509C(v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100064F4C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return _swift_task_switch(sub_100065074, v3, 0);
}

uint64_t sub_10006509C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(sub_10000ADE4(&unk_10011F878, &unk_1000F2290) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v7 = sub_1000E0D68();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230F0;

  return _swift_task_switch(sub_100065248, v10, 0);
}

uint64_t sub_100065248()
{
  v73 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123128);
  v3 = v1;
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();

  v6 = &CSDVoucherManagerImpl__prots_0;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v72 = v12;
    *v11 = 136315138;
    v13 = [v10 UUID];
    sub_1000E0D38();

    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
    v14 = sub_1000E2C18();
    v16 = v15;
    (*(v7 + 8))(v8, v9);
    v6 = &CSDVoucherManagerImpl__prots_0;
    v17 = sub_100029C70(v14, v16, &v72);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Conversation %s was left.", v11, 0xCu);
    sub_10000E9DC(v12);
  }

  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  v20 = *(v0 + 104);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);
  v23 = *(v0 + 48);
  v24 = *(v0 + 56);
  v25 = *(v0 + 40);
  v26 = v23;
  sub_1000A7624(0, v26, v25, v26);

  v27 = [v25 v6[436].count];
  sub_1000E0D38();

  swift_beginAccess();
  sub_1000B93B0(v18, v24);
  swift_endAccess();
  v28 = *(v19 + 8);
  v28(v18, v20);
  if ((*(v22 + 48))(v24, 1, v21) == 1)
  {
    v29 = *(v0 + 56);
    v30 = &unk_10011F878;
    v31 = &unk_1000F2290;
  }

  else
  {
    v33 = *(v0 + 88);
    v32 = *(v0 + 96);
    v34 = *(v0 + 40);
    sub_1000AD400(*(v0 + 56), v32, &qword_10011EBB0, &qword_1000F04F0);
    sub_10000CB64(v32, v33, &qword_10011EBB0, &qword_1000F04F0);
    v35 = v34;
    v36 = sub_1000E1EE8();
    v37 = sub_1000E2698();

    if (os_log_type_enabled(v36, v37))
    {
      v71 = v37;
      v38 = *(v0 + 120);
      v39 = *(v0 + 104);
      v40 = *(v0 + 80);
      v69 = *(v0 + 88);
      v70 = *(v0 + 64);
      v41 = *(v0 + 40);
      v42 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v42 = 136315394;
      v43 = [v41 UUID];
      sub_1000E0D38();

      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v44 = sub_1000E2C18();
      v46 = v45;
      v28(v38, v39);
      v47 = sub_100029C70(v44, v46, &v72);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      sub_10000CB64(v69, v40, &qword_10011EBB0, &qword_1000F04F0);
      v48 = *(v40 + *(v70 + 48));
      v49 = sub_1000E0CE8();
      (*(*(v49 - 8) + 8))(v40, v49);
      v50 = TUConversationAVMode.description.getter(v48);
      v52 = v51;
      sub_1000033C8(v69, &qword_10011EBB0, &qword_1000F04F0);
      v53 = sub_100029C70(v50, v52, &v72);

      *(v42 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v36, v71, "Reporting call ended for %s because it was started on TV (avMode=%s).", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v54 = *(v0 + 88);

      sub_1000033C8(v54, &qword_10011EBB0, &qword_1000F04F0);
    }

    v55 = *(v0 + 96);
    v56 = *(v0 + 80);
    v57 = *(v0 + 64);
    v58 = *(v0 + 40);
    v59 = *(*(v0 + 48) + OBJC_IVAR___CSDNeighborhoodActivityConduit_callHistoryManager);
    sub_10000CB64(v55, v56, &qword_10011EBB0, &qword_1000F04F0);
    isa = sub_1000E0CC8().super.isa;
    v61 = sub_1000E0CE8();
    (*(*(v61 - 8) + 8))(v56, v61);
    [v59 reportRecentCallForConversation:v58 withStartDate:isa avMode:*(v55 + *(v57 + 48))];

    v29 = v55;
    v30 = &qword_10011EBB0;
    v31 = &qword_1000F04F0;
  }

  sub_1000033C8(v29, v30, v31);
  v62 = *(v0 + 120);
  v63 = *(v0 + 88);
  v64 = *(v0 + 96);
  v65 = *(v0 + 80);
  v66 = *(v0 + 56);

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_1000658F8()
{
  v2 = *(*(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer) + 112);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10000ADE4(&unk_100120230, &qword_1000F2470);
  sub_100002C64(&unk_10011F990, &unk_100120230, &qword_1000F2470);
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();
}

uint64_t sub_100065A28(__int128 *a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18[-v6];
  v8 = a1[1];
  v19 = *a1;
  v20 = v8;
  v9 = a1[3];
  v21 = a1[2];
  v22 = v9;
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);

  sub_1000A9C1C(&v19, v18);
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v12 = qword_1001230F0;
  v13 = sub_1000A75DC(&qword_100120020, v11, type metadata accessor for ConduitActor);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  *(v14 + 32) = a2;
  v15 = v20;
  *(v14 + 40) = v19;
  *(v14 + 56) = v15;
  v16 = v22;
  *(v14 + 72) = v21;
  *(v14 + 88) = v16;

  sub_100022F54(0, 0, v7, &unk_1000F2480, v14);
}

uint64_t sub_100065BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[13] = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;

  return _swift_task_switch(sub_100065C8C, v6, 0);
}

uint64_t sub_100065C8C()
{
  v16 = v0;
  v1 = *(v0 + 112);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 120);
    v4 = sub_1000E1F08();
    sub_1000049D0(v4, qword_100123128);
    sub_1000A9C1C(v3, v0 + 16);
    v5 = sub_1000E1EE8();
    v6 = sub_1000E2698();
    sub_1000A9D38(v3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 120);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = sub_1000B9764();
      v12 = sub_100029C70(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Continuity session ended: %s", v8, 0xCu);
      sub_10000E9DC(v9);
    }

    sub_100065E6C(**(v0 + 120), *(*(v0 + 120) + 8));
  }

  **(v0 + 104) = Strong == 0;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100065E6C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v58 = a1;
  v5 = sub_1000E13E8();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  __chkstk_darwin(v5);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandoffInfo(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v54 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v52 - v19;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v21 = sub_1000E1F08();
  v22 = sub_1000049D0(v21, qword_100123128);

  v23 = v3;
  v24 = sub_1000E1EE8();
  v25 = sub_1000E2698();

  v26 = &unk_100123000;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v53 = v13;
    v28 = v27;
    v29 = swift_slowAlloc();
    v52 = v22;
    v60[0] = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_100029C70(v58, a2, v60);
    *(v28 + 12) = 2080;
    v30 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
    swift_beginAccess();
    sub_10000CB64(v23 + v30, v20, &qword_10011F888, &qword_1000F22B0);
    v31 = sub_1000E2358();
    v33 = sub_100029C70(v31, v32, v60);

    *(v28 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "Reset handoff for %s - handoffState: %s", v28, 0x16u);
    swift_arrayDestroy();
    v26 = &unk_100123000;

    v13 = v53;
  }

  v34 = v26[32];
  swift_beginAccess();
  sub_10000CB64(v23 + v34, v18, &qword_10011F888, &qword_1000F22B0);
  v35 = type metadata accessor for HandoffState(0);
  if ((*(*(v35 - 8) + 48))(v18, 1, v35) == 1)
  {
    return sub_1000033C8(v18, &qword_10011F888, &qword_1000F22B0);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000A877C(v18, v13, type metadata accessor for HandoffInfo);
    if (*(v13 + 1) == v58 && *(v13 + 2) == a2 || (sub_1000E2C68() & 1) != 0)
    {
      v37 = v54;
      sub_1000A87E4(v13, v54, type metadata accessor for HandoffInfo);
      v38 = sub_1000E1EE8();
      v39 = sub_1000E2698();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = v13;
        v42 = swift_slowAlloc();
        v59 = v42;
        *v40 = 136315138;
        v43 = sub_1000DDC88();
        v45 = v44;
        sub_1000AD5EC(v37, type metadata accessor for HandoffInfo);
        v46 = sub_100029C70(v43, v45, &v59);

        *(v40 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "Ending handoff because device is no longer reachable %s.", v40, 0xCu);
        sub_10000E9DC(v42);
        v13 = v41;
      }

      else
      {

        sub_1000AD5EC(v37, type metadata accessor for HandoffInfo);
      }

      v50 = v55;
      v49 = v56;
      v51 = v57;
      (*(v56 + 104))(v55, enum case for NCProtoDisconnectRequest.DisconnectReason.endingHandoff(_:), v57);
      sub_10006B2FC(v50);

      (*(v49 + 8))(v50, v51);
    }

    v47 = type metadata accessor for HandoffInfo;
    v48 = v13;
  }

  else
  {
    v47 = type metadata accessor for HandoffState;
    v48 = v18;
  }

  return sub_1000AD5EC(v48, v47);
}

void sub_100066480(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(IDSService);
  v7 = sub_1000E2328();
  v8 = [v6 initWithService:v7];

  if (v8)
  {
    swift_getObjectType();
    v9 = [objc_allocWithZone(TUVouchingEnablementImpl) init];
    v10 = objc_allocWithZone(type metadata accessor for VoucherManagerImpl());
    v11 = v8;
    v12 = sub_1000AE60C(v11);
    v13 = [objc_allocWithZone(TUFeatureFlags) init];
    v14 = [objc_allocWithZone(RPRemoteDisplayDiscovery) init];
    if (qword_10011DC10 != -1)
    {
      swift_once();
    }

    sub_1000A5718(a1, v11, v9, v12, v13, a2, v14, qword_1001230D8);
    v15 = *((swift_isaMask & *v3) + 0x30);
    v16 = *((swift_isaMask & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __break(1u);
  }
}

void sub_10006668C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_1000E2538();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = qword_10011DC30;
    v14 = v11;

    if (v13 != -1)
    {
      swift_once();
    }

    v16 = qword_1001230F0;
    v17 = sub_1000A75DC(&qword_100120020, v15, type metadata accessor for ConduitActor);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    *(v18 + 32) = v14;
    *(v18 + 40) = a1;
    *(v18 + 48) = a2;
    *(v18 + 56) = a3;

    sub_100022960(0, 0, v9, &unk_1000F25C0, v18);
  }
}

uint64_t sub_100066868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100002E7C;

  return sub_10006694C(a5, a6, a7);
}

uint64_t sub_10006694C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  *(v4 + 96) = a1;
  v5 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  *(v4 + 64) = qword_1001230F0;

  return _swift_task_switch(sub_100066A28, v6, 0);
}

uint64_t sub_100066A28()
{
  v45 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123128);

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = "agerError.lockdownModeEnabled";
    if (!v5)
    {
      v7 = "emoteDisplayDiscoveryState";
    }

    if (v5 == 1)
    {
      v8 = 0xD000000000000027;
    }

    else
    {
      v8 = 0xD00000000000002ALL;
    }

    if (v5 == 1)
    {
      v9 = "iscoveryState.outOfSession";
    }

    else
    {
      v9 = v7;
    }

    v10 = *(v0 + 40);
    v11 = sub_100029C70(v8, v9 | 0x8000000000000000, &v44);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    if (v10)
    {
      *(v0 + 16) = *(v0 + 32);
      *(v0 + 24) = v1;

      v12 = sub_1000E2368();
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_100029C70(v12, v14, &v44);

    *(v6 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Discovery session state changed to %s with %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  v19 = *(v0 + 40);
  v18 = *(v0 + 48);
  v20 = *(v0 + 32);
  v21 = *(v0 + 96);
  v22 = sub_1000E2538();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v24 = sub_1000A75DC(&qword_100120020, v23, type metadata accessor for ConduitActor);
  v25 = swift_allocObject();
  *(v25 + 16) = v17;
  *(v25 + 24) = v24;
  *(v25 + 32) = v21;
  *(v25 + 40) = v20;
  *(v25 + 48) = v19;
  *(v25 + 56) = v18;

  v26 = v18;

  sub_100022960(0, 0, v16, &unk_1000F25D8, v25);

  v27 = OBJC_IVAR___CSDNeighborhoodActivityConduit_discoverySessionBleDiscoveryAssertion;
  *(v0 + 72) = OBJC_IVAR___CSDNeighborhoodActivityConduit_discoverySessionBleDiscoveryAssertion;
  v28 = *&v26[v27];
  if (v21 == 1)
  {
    if (!v28)
    {
      v29 = sub_1000E1EE8();
      v30 = sub_1000E2698();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Taking BLE assertion due to discovery session!", v31, 2u);
      }

      v32 = *(v0 + 48);

      v33 = *(v32 + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
      v34 = swift_task_alloc();
      *(v0 + 80) = v34;
      *v34 = v0;
      v34[1] = sub_100066F14;

      return sub_10003FF60();
    }
  }

  else if (v28)
  {
    v36 = sub_1000E1EE8();
    v37 = sub_1000E2698();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Releasing discovery session BLE assertion...", v38, 2u);
    }

    v39 = *(v0 + 72);
    v40 = *(v0 + 48);
    v41 = *(v40 + v39);
    *(v40 + v39) = 0;
  }

  v42 = *(v0 + 56);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_100066F14(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 80);
  v7 = *v2;

  v8 = *(v4 + 64);
  if (v1)
  {

    v9 = sub_1000670D0;
  }

  else
  {
    *(v5 + 88) = a1;
    v9 = sub_100067058;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100067058()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[11];

  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000670D0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;

  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100067144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = sub_1000E2338();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5(a2, v6, v8);
}

void sub_1000671D0(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v1 = sub_1000E1F08();
    sub_1000049D0(v1, qword_100123128);
    swift_errorRetain();
    oslog = sub_1000E1EE8();
    v2 = sub_1000E2678();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to activate remote display discovery: %@", v3, 0xCu);
      sub_1000033C8(v4, &unk_10011EAC0, &unk_1000F0E60);
    }

    else
    {
    }
  }
}

void sub_100067380(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1000673EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v4[3] = qword_1001230F0;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_1000674BC;

  return sub_100067784();
}

uint64_t sub_1000674BC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_1000675FC;
  v5 = *(v1 + 16);

  return sub_100068618();
}

uint64_t sub_1000675FC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_10006770C, v2, 0);
}

uint64_t sub_10006770C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___CSDNeighborhoodActivityConduit_activatedSubject);
  *(v0 + 48) = 1;
  sub_1000E1FE8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100067784()
{
  v1[13] = v0;
  v2 = sub_1000E16E8();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v4 = *(v3 + 64) + 15;
  v1[16] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  v1[17] = qword_1001230F0;

  return _swift_task_switch(sub_10006787C, v5, 0);
}

uint64_t sub_10006787C()
{
  v0[18] = *(v0[13] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;
  v0[19] = qword_1001230E0;

  return _swift_task_switch(sub_100067928, v1, 0);
}

uint64_t sub_100067928()
{
  v1 = v0[13];
  *(v0[18] + 24) = &off_100114820;
  swift_unknownObjectWeakAssign();
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1000679D4;
  v3 = v0[18];

  return sub_100040C34();
}

uint64_t sub_1000679D4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_10006846C;
  }

  else
  {
    v6 = sub_100067B00;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100067B00()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[13];
  v0[11] = *(v2 + 32);
  *(swift_allocObject() + 16) = v3;

  v4 = v3;
  sub_10000ADE4(&qword_10011F5D8, &unk_1000F1B70);
  sub_100002C64(&qword_10011FA50, &qword_10011F5D8, &unk_1000F1B70);
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();

  v0[12] = *(v2 + 40);
  *(swift_allocObject() + 16) = v4;
  v5 = v4;

  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();

  return _swift_task_switch(sub_100067D10, v1, 0);
}

uint64_t sub_100067D10()
{
  v9 = v0;
  v1 = v0[18];
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_10002BA7C(*(v2 + 16), 0);
    v5 = sub_10002A9B0(&v8, v4 + 4, v3, v2);

    sub_10000A840();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[22] = v4;
  v6 = v0[17];

  return _swift_task_switch(sub_100067E20, v6, 0);
}

uint64_t sub_100067E20()
{
  v1 = v0[22];
  if (v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1000E2B68();
    v0[23] = result;
    if (result)
    {
LABEL_4:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[22];
        v0[24] = 0;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = sub_1000E2A98();
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v0[25] = v4;
        v5 = swift_task_alloc();
        v0[26] = v5;
        *v5 = v0;
        v5[1] = sub_100067F54;
        v6 = v0[13];

        return sub_1000693F0(v4);
      }

      return result;
    }
  }

  else
  {
    result = *(v1 + 16);
    v0[23] = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  v7 = v0[22];

  v8 = v0[16];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100067F54()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_100068064, v2, 0);
}

uint64_t sub_100068064()
{
  v1 = v0[25];
  v2 = v0[16];
  sub_1000E16D8();
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_100068120;
  v6 = v0[18];
  v7 = v0[16];

  return sub_10002878C(11, v7, v4, v3, 0);
}

uint64_t sub_100068120()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;

  v5 = *(v2 + 152);
  if (v0)
  {

    v6 = sub_1000683F4;
  }

  else
  {
    v6 = sub_100068258;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100068258()
{
  v1 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);

  return _swift_task_switch(sub_1000682D0, v1, 0);
}

uint64_t sub_1000682D0()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  if (v2 + 1 == v3)
  {
    v4 = v0[22];

    v5 = v0[16];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[24] + 1;
    v0[24] = v8;
    v9 = v0[22];
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = sub_1000E2A98();
    }

    else
    {
      v10 = *(v9 + 8 * v8 + 32);
    }

    v0[25] = v10;
    v11 = swift_task_alloc();
    v0[26] = v11;
    *v11 = v0;
    v11[1] = sub_100067F54;
    v12 = v0[13];

    return sub_1000693F0(v10);
  }
}

uint64_t sub_1000683F4()
{
  v1 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);

  return _swift_task_switch(sub_1000AE28C, v1, 0);
}

uint64_t sub_10006846C()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123128);
  swift_errorRetain();
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2678();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[21];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to activate device manager: %@", v7, 0xCu);
    sub_1000033C8(v8, &unk_10011EAC0, &unk_1000F0E60);
  }

  else
  {
  }

  v10 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100068618()
{
  v1[24] = v0;
  v2 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230F0;
  v1[26] = qword_1001230F0;

  return _swift_task_switch(sub_1000686EC, v3, 0);
}

uint64_t sub_1000686EC()
{
  if ([*(v0[24] + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaEnabled])
  {
    v0[27] = *(v0[24] + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
    if (qword_10011DC08 != -1)
    {
      swift_once();
    }

    v1 = qword_1001230D0;

    return _swift_task_switch(sub_1000687EC, v1, 0);
  }

  else
  {
    v2 = v0[25];

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1000687EC()
{
  v1 = v0[26];
  v2 = v0[24];
  *(v0[27] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_delegate + 8) = &off_100114898;
  swift_unknownObjectWeakAssign();

  return _swift_task_switch(sub_100068870, v1, 0);
}

uint64_t sub_100068870()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for first unlock to activate suggestion controller", v4, 2u);
  }

  v5 = v0[24];

  v6 = *(v5 + OBJC_IVAR___CSDNeighborhoodActivityConduit_systemMonitor);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[22] = sub_1000A9FF4;
  v0[23] = v7;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1000026A0;
  v0[21] = &unk_100114DC8;
  v8 = _Block_copy(v0 + 18);
  v9 = v0[23];

  [v6 setFirstUnlockHandler:v8];
  _Block_release(v8);
  v0[2] = v0;
  v0[3] = sub_100068AF4;
  v10 = swift_continuation_init();
  v0[17] = sub_10000ADE4(&qword_10011FA38, &qword_1000F2538);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10009D8F0;
  v0[13] = &unk_100114DF0;
  v0[14] = v10;
  [v6 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100068AF4()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return _swift_task_switch(sub_100068BE8, v1, 0);
}

uint64_t sub_100068BE8()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = sub_1000E2538();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v6 = sub_1000A75DC(&qword_100120020, v5, type metadata accessor for ConduitActor);
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v6;
  v7[4] = v3;
  v8 = v3;

  sub_100022960(0, 0, v2, &unk_1000F2548, v7);

  v9 = v0[25];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100068D30()
{
  v1 = v0;
  v2 = sub_10000ADE4(&qword_10011F9F0, &qword_1000F24D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR___CSDNeighborhoodActivityConduit_availableConversationUpdateCancellable;
  if (*(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_availableConversationUpdateCancellable))
  {

    sub_1000E1F88();
  }

  v15 = *(*(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_10000ADE4(&unk_100120850, &qword_1000F2488);
  sub_100002C64(&qword_10011F9A0, &unk_100120850, &qword_1000F2488);
  v8 = sub_1000E2028();
  v16 = 0;
  v17 = v8;
  v15 = 0;
  sub_10000ADE4(&qword_10011F9A8, &qword_1000F2490);
  sub_10000ADE4(&qword_10011F9F8, &qword_1000F24E0);
  sub_100002C64(&qword_10011F9B0, &qword_10011F9A8, &qword_1000F2490);
  sub_1000E2058();

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000A9E70;
  *(v10 + 24) = v9;
  sub_100002C64(&qword_10011FA00, &qword_10011F9F0, &qword_1000F24D8);
  v11 = sub_1000E20D8();

  (*(v3 + 8))(v6, v2);
  v12 = *(v1 + v7);
  *(v1 + v7) = v11;
}

id sub_100069010()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR___CSDNeighborhoodActivityConduit_stateHandle];
  os_state_remove_handler();
  [*&v0[OBJC_IVAR___CSDNeighborhoodActivityConduit_systemMonitor] invalidate];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100069328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100002D64;

  return sub_1000693F0(a5);
}

uint64_t sub_1000693F0(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230F0;
  v2[13] = qword_1001230F0;

  return _swift_task_switch(sub_10006948C, v3, 0);
}

uint64_t sub_10006948C()
{
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;
  *(v0 + 112) = qword_1001230E0;

  return _swift_task_switch(sub_100069524, v1, 0);
}

uint64_t sub_100069524()
{
  v1 = v0[13];
  v2 = v0[11];
  v0[15] = sub_100013B80();
  v0[16] = v3;

  return _swift_task_switch(sub_100069594, v1, 0);
}

uint64_t sub_100069594()
{
  v14 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123128);

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    v10 = sub_100029C70(v7, v6, &v13);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "ConduitDevice appeared: %s", v8, 0xCu);
    sub_10000E9DC(v9);
  }

  else
  {
  }

  v11 = v0[14];

  return _swift_task_switch(sub_100069740, v11, 0);
}

uint64_t sub_100069740()
{
  v1 = v0[13];
  v2 = v0[11];
  v0[17] = sub_100012CD8();

  return _swift_task_switch(sub_1000697B0, v1, 0);
}

uint64_t sub_1000697B0()
{
  v13 = v0;
  v1 = v0[17];
  v2 = v0[12];
  swift_beginAccess();
  sub_1000D2BCC(&v12, v1);
  swift_endAccess();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v0[17];
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = v3;
    sub_10001629C(sub_1000AA154, v4);

    swift_unknownObjectRelease();
  }

  v6 = v0[17];
  sub_10000ADE4(&qword_10011EB20, &qword_1000F2570);
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 16) = xmmword_1000F0F40;
  *(inited + 32) = v6;
  v8 = v6;
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_10006993C;
  v10 = v0[12];

  return sub_10006DBA0(inited);
}

uint64_t sub_10006993C()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 104);
  v6 = *v0;

  swift_setDeallocating();
  v4 = *(v2 + 16);
  swift_arrayDestroy();

  return _swift_task_switch(sub_100069A80, v3, 0);
}

uint64_t sub_100069A80()
{
  v1 = *(*(v0[12] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_1000E1FF8();
  v2 = v0[10];
  v0[20] = v2;
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_100069B48;
  v4 = v0[11];
  v5 = v0[12];

  return sub_10006E0E0(v4, 0, v2);
}

uint64_t sub_100069B48()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return _swift_task_switch(sub_100069C70, v3, 0);
}

uint64_t sub_100069C70()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100069CD0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = *a1;
  v12 = sub_1000E2538();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = qword_10011DC30;
  v14 = a2;

  if (v13 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230F0;
  v17 = sub_1000A75DC(&qword_100120020, v15, type metadata accessor for ConduitActor);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v14;
  v18[5] = v11;

  sub_100022960(0, 0, v10, a4, v18);
}

uint64_t sub_100069E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100002D64;

  return sub_100069F30(a5);
}

uint64_t sub_100069F30(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230F0;
  v2[7] = qword_1001230F0;

  return _swift_task_switch(sub_100069FCC, v3, 0);
}

uint64_t sub_100069FCC()
{
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;
  *(v0 + 64) = qword_1001230E0;

  return _swift_task_switch(sub_10006A064, v1, 0);
}

uint64_t sub_10006A064()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[9] = sub_100013B80();
  v0[10] = v3;

  return _swift_task_switch(sub_10006A0D4, v1, 0);
}

uint64_t sub_10006A0D4()
{
  v14 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123128);

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    v10 = sub_100029C70(v7, v6, &v13);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "ConduitDevice disappeared: %s", v8, 0xCu);
    sub_10000E9DC(v9);
  }

  else
  {
  }

  v11 = v0[8];

  return _swift_task_switch(sub_10006A280, v11, 0);
}

uint64_t sub_10006A280()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[11] = sub_100012CD8();

  return _swift_task_switch(sub_10006A2F0, v1, 0);
}

uint64_t sub_10006A2F0()
{
  v1 = v0[11];
  v2 = v0[6];
  swift_beginAccess();
  v3 = sub_1000A42A0(v1, &qword_10011EAB0, TUNearbyDeviceHandle_ptr, sub_1000D408C, sub_1000D30D0);
  swift_endAccess();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = v0[11];
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    sub_10001629C(sub_1000AA21C, v5);

    swift_unknownObjectRelease();
  }

  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_10006A46C;
  v8 = v0[5];
  v9 = v0[6];

  return sub_10006E894(v8);
}

uint64_t sub_10006A46C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_10006A57C, v2, 0);
}

uint64_t sub_10006A57C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006A5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  v7 = sub_1000E0D68();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v6[11] = *(v8 + 64);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v9 = *(sub_10000ADE4(&unk_10011FA80, &qword_1000F2660) - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230F0;
  v6[18] = qword_1001230F0;

  return _swift_task_switch(sub_10006A764, v10, 0);
}

uint64_t sub_10006A764()
{
  *(v0 + 152) = *(*(v0 + 48) + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;

  return _swift_task_switch(sub_10006A80C, v1, 0);
}

uint64_t sub_10006A80C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_100044D58(*(v0 + 56));
  *(v0 + 160) = v3;

  return _swift_task_switch(sub_10006A87C, v1, 0);
}

uint64_t sub_10006A87C()
{
  if (v0[20])
  {
    v47 = v0[20];
    v1 = v0[17];
    v2 = sub_1000E0FE8();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
    v0[21] = sub_1000D605C(2);
    v3 = swift_allocObject();
    v0[22] = v3;
    v46 = v3;
    *(v3 + 16) = 0;
    if (qword_10011DCA8 != -1)
    {
      swift_once();
    }

    v4 = v0[16];
    v5 = v0[17];
    v6 = v0[14];
    v7 = v0[15];
    v8 = v0[13];
    v41 = v8;
    v42 = v4;
    v10 = v0[10];
    v9 = v0[11];
    v12 = v0[8];
    v11 = v0[9];
    v43 = v0[6];
    v13 = sub_1000E2DA8();
    v44 = v14;
    v45 = v13;
    v15 = *(v10 + 16);
    v0[23] = v15;
    v0[24] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v8, v12, v11);
    sub_10000CB64(v5, v4, &unk_10011FA80, &qword_1000F2660);
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
    v19 = (*(v6 + 80) + v18 + 9) & ~*(v6 + 80);
    v20 = (v19 + v7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v0[25] = v21;
    (*(v10 + 32))(v21 + v16, v41, v11);
    *(v21 + v17) = v47;
    v22 = v21 + v18;
    *v22 = v43;
    *(v22 + 8) = 0;
    sub_1000AD400(v42, v21 + v19, &unk_10011FA80, &qword_1000F2660);
    *(v21 + v19 + v7) = 0;
    *(v21 + v20 + 8) = 2;
    *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v46;

    v23 = v43;

    v24 = swift_task_alloc();
    v0[26] = v24;
    *v24 = v0;
    v24[1] = sub_10006ACF8;
    v25 = v0[5];

    return sub_10005D2F4(v25, v45, v44, &unk_1000F2A08, v21);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v27 = v0[7];
    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_100123128);
    v29 = v27;
    v30 = sub_1000E1EE8();
    v31 = sub_1000E2698();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0[7];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v32;
      *v34 = v32;
      v35 = v32;
      _os_log_impl(&_mh_execute_header, v30, v31, "[Handoff][Push] Conduit device not found for %@.", v33, 0xCu);
      sub_1000033C8(v34, &unk_10011EAC0, &unk_1000F0E60);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v37 = v0[16];
    v36 = v0[17];
    v39 = v0[12];
    v38 = v0[13];

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_10006ACF8()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v9 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_10006AEF4;
  }

  else
  {
    v6 = *(v2 + 200);
    v7 = *(v2 + 144);

    v5 = sub_10006AE20;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10006AE20()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[12];
  v6 = v0[13];

  sub_1000D6278(2);

  sub_1000033C8(v4, &unk_10011FA80, &qword_1000F2660);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10006AEF4()
{
  v49 = v0;
  v1 = v0[25];

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[20];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  v9 = sub_1000E1F08();
  sub_1000049D0(v9, qword_100123128);
  v4(v6, v8, v7);

  swift_errorRetain();
  v10 = sub_1000E1EE8();
  v11 = sub_1000E2698();

  if (os_log_type_enabled(v10, v11))
  {
    v47 = v0[27];
    v12 = v0[20];
    v13 = v0[12];
    v15 = v0[9];
    v14 = v0[10];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_100029C70(*(v12 + 16), *(v12 + 24), v48);
    *(v16 + 12) = 2080;
    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
    v18 = sub_1000E2C18();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_100029C70(v18, v20, v48);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v22;
    *v17 = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Handoff][Push] Failed to add %s to %s due to %@.", v16, 0x20u);
    sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[12];
    v24 = v0[9];
    v25 = v0[10];

    (*(v25 + 8))(v23, v24);
  }

  v26 = v0[22];
  swift_beginAccess();
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v0[8];
    v29 = v0[6];
    v30 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
    v31 = *(v29 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    v32 = v27;
    isa = sub_1000E0D18().super.isa;
    v34 = [v31 activeConversationWithUUID:isa];

    if (v34)
    {
      [*(v29 + v30) kickMember:v32 conversation:v34];

      v32 = v34;
    }
  }

  v35 = v0[27];
  v36 = v0[21];
  v37 = v0[22];
  v38 = v0[20];
  v39 = v0[17];
  swift_willThrow();

  sub_1000D6278(2);

  sub_1000033C8(v39, &unk_10011FA80, &qword_1000F2660);

  v40 = v0[27];
  v42 = v0[16];
  v41 = v0[17];
  v44 = v0[12];
  v43 = v0[13];

  v45 = v0[1];

  return v45();
}

uint64_t sub_10006B2FC(uint64_t a1)
{
  v2 = v1;
  v71 = a1;
  v3 = sub_1000E13E8();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  __chkstk_darwin(v3);
  v67 = v5;
  v68 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v61 - v8;
  v10 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v61 - v15;
  v17 = type metadata accessor for HandoffInfo(0);
  v18 = *(v17 - 8);
  v65 = v17;
  v66 = v18;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v72 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v61 - v22;
  __chkstk_darwin(v21);
  v73 = &v61 - v24;
  v25 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v2 + v25, v16, &qword_10011F888, &qword_1000F22B0);
  v26 = type metadata accessor for HandoffState(0);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v16, 1, v26) == 1)
  {
    sub_1000033C8(v16, &qword_10011F888, &qword_1000F22B0);
LABEL_9:
    v37 = sub_1000E2538();
    (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
    if (qword_10011DC30 != -1)
    {
      swift_once();
    }

    v39 = qword_1001230F0;
    v40 = sub_1000A75DC(&qword_100120020, v38, type metadata accessor for ConduitActor);
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = v40;

    return sub_100022960(0, 0, v9, &unk_1000F23F0, v41);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000AD5EC(v16, type metadata accessor for HandoffState);
    goto LABEL_9;
  }

  v64 = v9;
  v28 = v73;
  sub_1000A877C(v16, v73, type metadata accessor for HandoffInfo);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v29 = sub_1000E1F08();
  sub_1000049D0(v29, qword_100123128);
  sub_1000A87E4(v28, v23, type metadata accessor for HandoffInfo);
  v30 = sub_1000E1EE8();
  v31 = sub_1000E2698();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v62 = v32;
    v63 = swift_slowAlloc();
    v74 = v63;
    *v32 = 136315138;
    v61 = sub_1000DDC88();
    v34 = v33;
    sub_1000AD5EC(v23, type metadata accessor for HandoffInfo);
    v35 = sub_100029C70(v61, v34, &v74);

    v36 = v62;
    *(v62 + 1) = v35;
    _os_log_impl(&_mh_execute_header, v30, v31, "Handoff ending for %s.", v36, 0xCu);
    sub_10000E9DC(v63);
  }

  else
  {

    sub_1000AD5EC(v23, type metadata accessor for HandoffInfo);
  }

  (*(v27 + 56))(v14, 1, 1, v26);
  swift_beginAccess();
  sub_1000A884C(v14, v2 + v25);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v14, &qword_10011F888, &qword_1000F22B0);
  v43 = sub_1000E2538();
  (*(*(v43 - 8) + 56))(v64, 1, 1, v43);
  v44 = v73;
  sub_1000A87E4(v73, v72, type metadata accessor for HandoffInfo);
  v45 = v68;
  v46 = v69;
  v47 = v70;
  (*(v69 + 16))(v68, v71, v70);
  v48 = qword_10011DC30;
  v50 = v2;
  if (v48 != -1)
  {
    swift_once();
  }

  v51 = qword_1001230F0;
  v52 = sub_1000A75DC(&qword_100120020, v49, type metadata accessor for ConduitActor);
  v53 = (*(v66 + 80) + 40) & ~*(v66 + 80);
  v54 = (v19 + *(v46 + 80) + v53) & ~*(v46 + 80);
  v55 = swift_allocObject();
  *(v55 + 2) = v51;
  *(v55 + 3) = v52;
  *(v55 + 4) = v50;
  sub_1000A877C(v72, &v55[v53], type metadata accessor for HandoffInfo);
  (*(v46 + 32))(&v55[v54], v45, v47);

  v56 = sub_100022960(0, 0, v64, &unk_1000F2400, v55);
  if (*v44 == 1)
  {
    (*(v46 + 104))(v45, enum case for NCProtoDisconnectRequest.DisconnectReason.pullingBackToPhone(_:), v47);
    sub_1000A75DC(&unk_10011F960, 255, &type metadata accessor for NCProtoDisconnectRequest.DisconnectReason);
    v57 = sub_1000E2318();
    (*(v46 + 8))(v45, v47);
    if ((v57 & 1) == 0)
    {
      v58 = *(v65 + 24);
      v59 = *&v50[OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager];
      isa = sub_1000E0D18().super.isa;
      [v59 leaveConversationWithUUID:isa];
    }
  }

  sub_100011E2C();
  sub_1000AD5EC(v44, type metadata accessor for HandoffInfo);
  return v56;
}

uint64_t sub_10006BBF4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 104) = a3;
  *(v4 + 16) = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  *(v4 + 40) = qword_1001230F0;

  return _swift_task_switch(sub_10006BC98, v5, 0);
}

uint64_t sub_10006BC98()
{
  v0[6] = *(v0[4] + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230D0;
  v0[7] = qword_1001230D0;

  return _swift_task_switch(sub_10006BD44, v1, 0);
}

uint64_t sub_10006BD44()
{
  v1 = v0[6] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  v2 = *v1;
  v0[8] = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (v2)
  {
    v5 = v2;
  }

  v6 = v0[5];
  sub_10001C3F0(v2, v3);
  sub_10001C430(v2, v3);

  return _swift_task_switch(sub_10006BDF8, v6, 0);
}

uint64_t sub_10006BDF8()
{
  v1 = v0[7];
  v2 = v0[3];
  v0[9] = *(v2 + 16);
  v0[10] = *(v2 + 24);
  return _swift_task_switch(sub_10006BE28, v1, 0);
}

uint64_t sub_10006BE28()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_100030E7C(*(v0 + 104), *(v0 + 72), *(v0 + 80));

  return _swift_task_switch(sub_10006BE98, v1, 0);
}

uint64_t sub_10006BE98()
{
  v1 = v0[8];
  if (v1 && ![v1 type])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_10006BF60;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_10006C18C(v6, v4, v2, 2, 2);
}

uint64_t sub_10006BF60()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_10006C128;
  }

  else
  {
    v6 = sub_10006C08C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10006C08C()
{
  v1 = *(v0 + 64);
  if (*(v0 + 104))
  {
    if (!v1)
    {
      goto LABEL_6;
    }

    v2 = [*(v0 + 64) type] == 0;
  }

  else
  {
    v2 = 2;
  }

  sub_10001D85C(v2);

LABEL_6:
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10006C128()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_10006C18C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 329) = a5;
  *(v6 + 328) = a4;
  *(v6 + 128) = a3;
  *(v6 + 136) = v5;
  *(v6 + 112) = a1;
  *(v6 + 120) = a2;
  v7 = type metadata accessor for HandoffInfo(0);
  *(v6 + 144) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  v9 = sub_1000E0D68();
  *(v6 + 168) = v9;
  v10 = *(v9 - 8);
  *(v6 + 176) = v10;
  *(v6 + 184) = *(v10 + 64);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v11 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  v12 = *(*(sub_10000ADE4(&qword_10011F888, &qword_1000F22B0) - 8) + 64) + 15;
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  v13 = type metadata accessor for HandoffState(0);
  *(v6 + 232) = v13;
  v14 = *(v13 - 8);
  *(v6 + 240) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230F0;
  *(v6 + 264) = qword_1001230F0;

  return _swift_task_switch(sub_10006C3C4, v16, 0);
}

uint64_t sub_10006C3C4()
{
  v87 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 136);
  v5 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  *(v0 + 272) = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v4 + v5, v3, &qword_10011F888, &qword_1000F22B0);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = *(v0 + 224);
  if (v6 == 1)
  {
    v84 = v5;
    v85 = v4;
    v8 = *(v0 + 264);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v13 = *(v0 + 168);
    v81 = *(v0 + 328);
    v77 = *(v0 + 136);
    v78 = v9;
    v14 = *(v0 + 112);
    v79 = *(v0 + 120);
    v80 = *(v0 + 128);
    sub_1000033C8(v7, &qword_10011F888, &qword_1000F22B0);
    v15 = sub_1000E2538();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    v83 = *(v12 + 16);
    v83(v10, v14, v13);
    v17 = sub_1000A75DC(&qword_100120020, v16, type metadata accessor for ConduitActor);
    v18 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 2) = v8;
    *(v20 + 3) = v17;
    *(v20 + 4) = v77;
    (*(v12 + 32))(&v20[v18], v10, v13);
    v21 = &v20[v19];
    *v21 = v79;
    *(v21 + 4) = v81;
    *&v20[(v19 + 17) & 0xFFFFFFFFFFFFFFF8] = v80;
    v22 = v77;

    v23 = sub_100022678(0, 0, v78, &unk_1000F2A38, v20);
    *(v0 + 280) = v23;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 192);
    v25 = *(v0 + 168);
    v26 = *(v0 + 112);
    v27 = *(v0 + 120);
    v28 = sub_1000E1F08();
    *(v0 + 288) = sub_1000049D0(v28, qword_100123128);
    v83(v24, v26, v25);

    v29 = sub_1000E1EE8();
    v30 = sub_1000E2698();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 192);
    v34 = *(v0 + 168);
    v33 = *(v0 + 176);
    if (v31)
    {
      v82 = *(v0 + 120);
      v35 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v35 = 136315394;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v36 = v23;
      v37 = sub_1000E2C18();
      v39 = v38;
      (*(v33 + 8))(v32, v34);
      v40 = v37;
      v23 = v36;
      v41 = sub_100029C70(v40, v39, v86);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_100029C70(*(v82 + 16), *(v82 + 24), v86);
      _os_log_impl(&_mh_execute_header, v29, v30, "[HandoffConversation] Starting handoff of conversation %s to %s.", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }

    v56 = *(v0 + 232);
    v55 = *(v0 + 240);
    v57 = *(v0 + 216);
    v58 = *(v0 + 136);
    *v57 = v23;
    swift_storeEnumTagMultiPayload();
    v59 = *(v55 + 56);
    *(v0 + 296) = v59;
    *(v0 + 304) = (v55 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v59(v57, 0, 1, v56);
    swift_beginAccess();

    sub_1000A884C(v57, v85 + v84);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v57, &qword_10011F888, &qword_1000F22B0);
    v60 = async function pointer to Task.value.getter[1];
    v61 = swift_task_alloc();
    *(v0 + 312) = v61;
    v62 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    *v61 = v0;
    v61[1] = sub_10006CBDC;
    v63 = *(v0 + 160);
    v64 = *(v0 + 144);

    return Task.value.getter(v63, v23, v64, v62, &protocol self-conformance witness table for Error);
  }

  else
  {
    sub_1000A877C(v7, *(v0 + 256), type metadata accessor for HandoffState);
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 248);
    v43 = *(v0 + 256);
    v44 = sub_1000E1F08();
    sub_1000049D0(v44, qword_100123128);
    sub_1000A87E4(v43, v42, type metadata accessor for HandoffState);
    v45 = sub_1000E1EE8();
    v46 = sub_1000E2678();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 248);
    if (v47)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v86[0] = v50;
      *v49 = 136315138;
      v51 = sub_1000DDE18();
      v53 = v52;
      sub_1000AD5EC(v48, type metadata accessor for HandoffState);
      v54 = sub_100029C70(v51, v53, v86);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v45, v46, "[HandoffConversation] Rejecting request because we already have a session active with a different device %s", v49, 0xCu);
      sub_10000E9DC(v50);
    }

    else
    {

      sub_1000AD5EC(v48, type metadata accessor for HandoffState);
    }

    v65 = *(v0 + 256);
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    sub_1000AD5EC(v65, type metadata accessor for HandoffState);
    v67 = *(v0 + 248);
    v66 = *(v0 + 256);
    v69 = *(v0 + 216);
    v68 = *(v0 + 224);
    v71 = *(v0 + 200);
    v70 = *(v0 + 208);
    v72 = *(v0 + 192);
    v74 = *(v0 + 152);
    v73 = *(v0 + 160);

    v75 = *(v0 + 8);

    return v75();
  }
}

uint64_t sub_10006CBDC()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = sub_10006CFD4;
  }

  else
  {
    v6 = sub_10006CD08;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10006CD08()
{
  v28 = v0;
  v1 = v0[36];
  sub_1000A87E4(v0[20], v0[19], type metadata accessor for HandoffInfo);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[19];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315138;
    v8 = sub_1000DDC88();
    v10 = v9;
    sub_1000AD5EC(v5, type metadata accessor for HandoffInfo);
    v11 = sub_100029C70(v8, v10, &v27);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "[HandoffConversation] Successfully handed off conversation %s.", v6, 0xCu);
    sub_10000E9DC(v7);
  }

  else
  {

    sub_1000AD5EC(v5, type metadata accessor for HandoffInfo);
  }

  v13 = v0[37];
  v12 = v0[38];
  v15 = v0[34];
  v14 = v0[35];
  v16 = v0[32];
  v17 = v0[29];
  v23 = v0[31];
  v24 = v0[28];
  v18 = v0[27];
  v25 = v0[26];
  v26 = v0[25];
  v19 = v0[20];
  v20 = v0[17];
  sub_1000A87E4(v19, v18, type metadata accessor for HandoffInfo);
  swift_storeEnumTagMultiPayload();
  v13(v18, 0, 1, v17);
  swift_beginAccess();
  sub_1000A884C(v18, v20 + v15);
  swift_endAccess();
  sub_100061F64();

  sub_1000033C8(v18, &qword_10011F888, &qword_1000F22B0);
  sub_1000AD5EC(v19, type metadata accessor for HandoffInfo);

  v21 = v0[1];

  return v21();
}

uint64_t sub_10006CFD4()
{
  v1 = v0[40];
  v2 = v0[36];
  swift_errorRetain();
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2678();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[40];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[HandoffConversation] Failed to hand off due to %@.", v6, 0xCu);
    sub_1000033C8(v7, &unk_10011EAC0, &unk_1000F0E60);
  }

  v9 = v0[40];
  v11 = v0[37];
  v10 = v0[38];
  v13 = v0[34];
  v12 = v0[35];
  v14 = v0[29];
  v15 = v0[27];
  v16 = v0[17];

  v11(v15, 1, 1, v14);
  swift_beginAccess();
  sub_1000A884C(v15, v16 + v13);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v15, &qword_10011F888, &qword_1000F22B0);
  swift_willThrow();

  v17 = v0[40];
  v19 = v0[31];
  v18 = v0[32];
  v21 = v0[27];
  v20 = v0[28];
  v23 = v0[25];
  v22 = v0[26];
  v24 = v0[24];
  v26 = v0[19];
  v25 = v0[20];

  v27 = v0[1];

  return v27();
}

uint64_t sub_10006D204(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 280) = a6;
  *(v7 + 288) = a7;
  *(v7 + 272) = a5;
  *(v7 + 312) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  *(v7 + 296) = qword_1001230F0;

  return _swift_task_switch(sub_10006D2A8, v8, 0);
}

uint64_t sub_10006D2A8()
{
  if (*(v0 + 312) == 1)
  {
    if (*(v0 + 280))
    {
      v1 = *(*(v0 + 288) + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
      *(v0 + 304) = v1;

      return _swift_task_switch(sub_10006D440, v1, 0);
    }

    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v2 = sub_1000E1F08();
    sub_1000049D0(v2, qword_100123128);
    v3 = sub_1000E1EE8();
    v4 = sub_1000E2698();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Continuity camera connected. End any ongoing calls on iOS device.", v5, 2u);
    }

    v6 = *(v0 + 288);

    sub_10006D8A0(0x100000000);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10006D440()
{
  v1 = *(v0 + 304);
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v4 = *(v1 + 120);
  *(v0 + 48) = *(v1 + 152);
  *(v0 + 64) = v3;
  *(v0 + 16) = v4;
  *(v0 + 32) = v2;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  if (v6)
  {
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    *(v0 + 80) = v5;
    *(v0 + 88) = v6;
    v9 = *(v1 + 168);
    v10 = *(v1 + 152);
    *(v0 + 96) = *(v1 + 136);
    *(v0 + 112) = v10;
    *(v0 + 128) = v9;
    sub_10000CB64(v0 + 16, v0 + 144, &unk_10011FA58, &unk_1000F25E0);

    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    if (v5 == v8 && v7 == v6)
    {

LABEL_7:
      v16 = *(v0 + 296);
      v17 = *(v1 + 136);
      v18 = *(v1 + 168);
      v19 = *(v1 + 120);
      *(v0 + 176) = *(v1 + 152);
      *(v0 + 192) = v18;
      *(v0 + 144) = v19;
      *(v0 + 160) = v17;
      sub_10000CB64(v0 + 144, v0 + 208, &unk_10011FA58, &unk_1000F25E0);
      v20 = sub_10006D614;
      v21 = v16;
      goto LABEL_9;
    }

    v13 = *(v0 + 272);
    v14 = *(v0 + 280);
    v15 = sub_1000E2C68();

    if (v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(v0 + 80) = v5;
    *(v0 + 88) = 0;
    v11 = *(v1 + 136);
    v12 = *(v1 + 168);
    *(v0 + 112) = *(v1 + 152);
    *(v0 + 128) = v12;
    *(v0 + 96) = v11;
    sub_10000CB64(v0 + 16, v0 + 144, &unk_10011FA58, &unk_1000F25E0);
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
  }

  v21 = *(v0 + 296);
  v20 = sub_10006D76C;
LABEL_9:

  return _swift_task_switch(v20, v21, 0);
}

uint64_t sub_10006D614()
{
  if (v0[19])
  {
    sub_1000033C8((v0 + 18), &unk_10011FA58, &unk_1000F25E0);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v1 = sub_1000E1F08();
    sub_1000049D0(v1, qword_100123128);
    v2 = sub_1000E1EE8();
    v3 = sub_1000E2698();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Continuity camera connected. End any ongoing calls on iOS device.", v4, 2u);
    }

    v5 = v0[36];

    sub_10006D8A0(0x100000000);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10006D76C()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Continuity camera connected. End any ongoing calls on iOS device.", v4, 2u);
  }

  v5 = *(v0 + 288);

  sub_10006D8A0(0x100000000);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006D8A0(uint64_t a1)
{
  v3 = sub_1000E2118();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000E2148();
  v7 = *(v17 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*&v1[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  *(v12 + 28) = BYTE4(a1) & 1;
  aBlock[4] = sub_1000AA554;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100114FF8;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  sub_1000E2138();
  v19 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v13);

  (*(v18 + 8))(v6, v3);
  (*(v7 + 8))(v10, v17);
}

uint64_t sub_10006DBA0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230F0;

  return _swift_task_switch(sub_10006DC38, v3, 0);
}

uint64_t sub_10006DC38()
{
  if ([*(v0[3] + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaEnabled])
  {
    v1 = v0[2];
    v2 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
LABEL_33:
      v3 = sub_1000E2B68();
      v4 = v0[2];
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v4 = v0[2];
    }

    v5 = _swiftEmptyArrayStorage;
    v0[4] = _swiftEmptyArrayStorage;
    if (v3)
    {
      v6 = 0;
      v7 = v1 & 0xC000000000000001;
      v8 = v4 + 32;
      v30 = v0;
      v32 = v4 + 32;
      while (1)
      {
        v31 = v5;
        v9 = v6;
        while (1)
        {
          if (v7)
          {
            v18 = v30[2];
            v10 = sub_1000E2A98();
          }

          else
          {
            if (v9 >= *(v2 + 16))
            {
              goto LABEL_32;
            }

            v10 = *&v8[8 * v9];
          }

          v11 = v10;
          v6 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v1 = [v10 capabilities];
          v12 = [v1 isLagunaCapable];

          if (v12)
          {
            break;
          }

LABEL_8:

          ++v9;
          if (v6 == v3)
          {
            v0 = v30;
            v5 = v31;
            goto LABEL_28;
          }
        }

        v13 = [v11 knownIdentifiersByHandleType];
        v0 = NSNumber_ptr;
        sub_10000CAAC(0, &qword_10011DF80, NSNumber_ptr);
        sub_10000EA70(&qword_10011FA40, &qword_10011DF80, NSNumber_ptr);
        v1 = sub_1000E22B8();

        v14 = [objc_allocWithZone(NSNumber) initWithInteger:2];
        v15 = v14;
        if (!*(v1 + 16))
        {
          break;
        }

        v16 = sub_10000B424(v14);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v19 = (*(v1 + 56) + 16 * v16);
        v20 = *v19;
        v21 = v19[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = sub_1000D2030(0, *(v31 + 2) + 1, 1, v31);
        }

        v24 = *(v31 + 2);
        v23 = *(v31 + 3);
        v1 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          v31 = sub_1000D2030((v23 > 1), v24 + 1, 1, v31);
        }

        v8 = v32;
        *(v31 + 2) = v1;
        v25 = &v31[16 * v24];
        *(v25 + 4) = v20;
        *(v25 + 5) = v21;
        v5 = v31;
        v0 = v30;
        v30[4] = v31;
        if (v6 == v3)
        {
          goto LABEL_28;
        }
      }

      v8 = v32;
      goto LABEL_8;
    }

LABEL_28:
    v28 = *(v0[3] + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
    v29 = swift_task_alloc();
    v0[5] = v29;
    *v29 = v0;
    v29[1] = sub_10006DFD0;

    return sub_100030378(v5);
  }

  else
  {
    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_10006DFD0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10006E0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000E0D68();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  v4[9] = qword_1001230F0;

  return _swift_task_switch(sub_10006E1DC, v8, 0);
}

uint64_t sub_10006E1DC()
{
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0 = qword_1001230E0;

  return _swift_task_switch(sub_10006E270, v0, 0);
}

uint64_t sub_10006E270()
{
  v1 = v0[9];
  v2 = v0[2];
  v0[10] = sub_100012CD8();

  return _swift_task_switch(sub_10006E2E0, v1, 0);
}

uint64_t sub_10006E2E0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = sub_10006EE20(*(v0 + 80), v2);
  v4 = *(v0 + 80);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  if ((v3 & 1) == 0 || !v2)
  {
    if (sub_10006EE20(*(v0 + 80), *(v0 + 32)))
    {
      v9 = *(v0 + 32);
      if (v9)
      {
        if (([*(v0 + 32) isContinuitySession] & 1) == 0)
        {
LABEL_11:
          *(v0 + 88) = v9;
          v11 = *(v0 + 16);
          v12 = *(v11 + 16);
          v13 = *(v11 + 24);
          v14 = v9;
          v15 = swift_task_alloc();
          *(v0 + 96) = v15;
          *v15 = v0;
          v15[1] = sub_10006E53C;
          v16 = *(v0 + 40);

          return sub_10006F004(v12, v13, v14);
        }
      }
    }

    goto LABEL_15;
  }

  v7 = *(v0 + 24);
  v8 = [v7 isContinuitySession];
  if ((sub_10006EE20(v4, v6) & 1) == 0 || (v9 = *(v0 + 32)) == 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_15:

    v18 = *(v0 + 64);

    v19 = *(v0 + 8);

    return v19();
  }

  v10 = [*(v0 + 32) isContinuitySession];
  if (v8)
  {
    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_19:
  v20 = *(v0 + 64);
  v21 = *(v0 + 16);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v24 = [v7 UUID];
  sub_1000E0D38();

  v25 = swift_task_alloc();
  *(v0 + 104) = v25;
  *v25 = v0;
  v25[1] = sub_10006E6B8;
  v26 = *(v0 + 64);
  v27 = *(v0 + 40);

  return sub_10006FE08(v22, v23, v26);
}

uint64_t sub_10006E53C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_10006E64C, v2, 0);
}

uint64_t sub_10006E64C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10006E6B8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10006E824, v2, 0);
}

uint64_t sub_10006E824()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10006E894(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v4 = qword_1001230F0;
  v2[5] = qword_1001230F0;

  return _swift_task_switch(sub_10006E968, v4, 0);
}

uint64_t sub_10006E968()
{
  v20 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123128);

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100029C70(*(v5 + 16), *(v5 + 24), &v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "Reset session state for %s", v6, 0xCu);
    sub_10000E9DC(v7);
  }

  v8 = v0[4];
  v9 = v0[5];
  v11 = v0[2];
  v10 = v0[3];
  sub_100065E6C(*(v11 + 16), *(v11 + 24));
  v12 = sub_1000E2538();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v14 = sub_1000A75DC(&qword_100120020, v13, type metadata accessor for ConduitActor);
  v15 = swift_allocObject();
  v15[2] = v9;
  v15[3] = v14;
  v15[4] = v10;
  v15[5] = v11;

  v16 = v10;

  sub_100022960(0, 0, v8, &unk_1000F25A0, v15);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10006EBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;

  return _swift_task_switch(sub_10006EC70, v6, 0);
}

uint64_t sub_10006EC70()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_10006EC9C, v1, 0);
}

uint64_t sub_10006EC9C()
{
  v12 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100120060);

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100029C70(*(v5 + 16), *(v5 + 24), &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "Reseting state for session with %s.", v6, 0xCu);
    sub_10000E9DC(v7);
  }

  v8 = v0[4];
  sub_1000BE71C(*(v0[3] + 16), *(v0[3] + 24));
  v9 = v0[1];

  return v9();
}

uint64_t sub_10006EE20(void *a1, void *a2)
{
  if (a2)
  {
    v4 = qword_10011DC58;
    v5 = a2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = objc_allocWithZone(NSUserDefaults);
    v7 = sub_1000E2328();
    v8 = [v6 initWithSuiteName:v7];

    if (!v8 || (v9 = sub_1000E2328(), v10 = [v8 BOOLForKey:v9], v9, v8, !v10) || objc_msgSend(a1, "deviceModel") != 3)
    {
      v11 = [v5 avMode];
      if (v11 == 2)
      {
        v13 = 1;
        goto LABEL_16;
      }

      if (v11 == 1)
      {
        if ([*(v2 + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaAudioCallsEnabled])
        {
          v14 = [a1 capabilities];
          v13 = [v14 isAudioCallCapable];

          goto LABEL_16;
        }
      }

      else if (!v11)
      {
        v12 = [a1 capabilities];
        v13 = [v12 isAVLessCapable];

        v5 = v12;
LABEL_16:

        return v13;
      }
    }

    v13 = 0;
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_10006F004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_1000E1798();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = sub_1000E0D68();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v11 = *(*(sub_10000ADE4(&qword_10011FA08, &unk_1000F2508) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v12 = sub_1000E1B18();
  v4[27] = v12;
  v13 = *(v12 - 8);
  v4[28] = v13;
  v14 = *(v13 + 64) + 15;
  v4[29] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v15 = qword_1001230F0;
  v4[30] = qword_1001230F0;

  return _swift_task_switch(sub_10006F1F0, v15, 0);
}

uint64_t sub_10006F1F0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 152);
  v8 = [*(v0 + 144) UUID];
  sub_1000E0D38();

  sub_10006F82C(v3);
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000033C8(*(v0 + 208), &qword_10011FA08, &unk_1000F2508);
LABEL_7:
    v16 = *(v0 + 232);
    v17 = *(v0 + 200);
    v18 = *(v0 + 208);
    v19 = *(v0 + 176);

    v20 = *(v0 + 8);

    return v20();
  }

  (*(*(v0 + 224) + 32))(*(v0 + 232), *(v0 + 208), *(v0 + 216));
  sub_100005524((v0 + 72));
  v9 = *(v0 + 80);
  if (!v9)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    goto LABEL_7;
  }

  v10 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = v9;
  v11 = *(v0 + 104);
  *(v0 + 32) = *(v0 + 88);
  *(v0 + 48) = v11;
  *(v0 + 64) = *(v0 + 120);
  v12 = [v10 isContinuitySession];
  v13 = *(v0 + 232);
  if (v12)
  {
    v14 = *(v0 + 216);
    v15 = *(v0 + 224);
    sub_1000033C8(v0 + 72, &qword_10011ECC0, &unk_1000F1120);
    (*(v15 + 8))(v13, v14);
    goto LABEL_7;
  }

  v22 = *(v0 + 176);
  v23 = *(v0 + 160);
  v24 = *(v0 + 136);
  v25 = *(v0 + 144);
  v26 = *(*(v0 + 152) + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  v27 = swift_task_alloc();
  v27[2] = v25;
  v27[3] = v0 + 16;
  v27[4] = v13;
  sub_1000A75DC(&unk_10011FA10, 255, &type metadata accessor for NCProtoStartedSessionEvent);
  sub_1000E0E38();

  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  *(v0 + 248) = qword_1001230E0;
  v28 = swift_task_alloc();
  *(v0 + 256) = v28;
  *v28 = v0;
  v28[1] = sub_10006F53C;
  v29 = *(v0 + 176);
  v30 = *(v0 + 128);

  return sub_10002793C(2, v29, v30, v24, 0);
}

uint64_t sub_10006F53C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;

  v5 = *(v2 + 248);
  if (v0)
  {

    v6 = sub_10006F7B0;
  }

  else
  {
    v6 = sub_10006F674;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10006F674()
{
  v1 = v0[30];
  (*(v0[21] + 8))(v0[22], v0[20]);

  return _swift_task_switch(sub_10006F6F0, v1, 0);
}

uint64_t sub_10006F6F0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  sub_1000033C8((v0 + 9), &qword_10011ECC0, &unk_1000F1120);
  (*(v2 + 8))(v1, v3);
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[22];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10006F7B0()
{
  v1 = v0[30];
  (*(v0[21] + 8))(v0[22], v0[20]);

  return _swift_task_switch(sub_1000AE218, v1, 0);
}

uint64_t sub_10006F82C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  isa = sub_1000E0D18().super.isa;
  v5 = [v3 activeConversationWithUUID:isa];

  if (v5)
  {
    v6 = [v5 localMember];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 avcSessionIdentifier];
      if (v8)
      {
        v9 = v8;
        sub_1000E2338();

        v10 = sub_1000E1B18();
        __chkstk_darwin(v10);
        sub_1000A75DC(&qword_10011FA20, 255, &type metadata accessor for NCProtoMemberAssociationPrimaryInfo);
        sub_1000E0E38();

        return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
      }
    }

    else
    {
      v7 = v5;
    }
  }

  v12 = sub_1000E1B18();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, 1, 1, v12);
}

uint64_t sub_10006FA7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v27 = a2;
  v5 = sub_1000E15C8();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000E1B18();
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v28);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000E0D68();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a2 UUID];
  sub_1000E0D38();

  sub_1000E0D08();
  (*(v14 + 8))(v17, v13);
  sub_1000E1738();
  sub_100005F20();
  sub_1000E1748();
  (*(v9 + 16))(v12, v30, v28);
  sub_1000E1778();
  v19 = [v27 resolvedAudioVideoMode];
  v20 = &enum case for NCProtoConversationAVMode.audio(_:);
  v21 = &enum case for NCProtoConversationAVMode.none(_:);
  if (v19)
  {
    v21 = &enum case for NCProtoConversationAVMode.video(_:);
  }

  if (v19 != 1)
  {
    v20 = v21;
  }

  (*(v31 + 104))(v8, *v20, v32);
  sub_1000E1788();
  sub_1000E1768();
  if (qword_10011DC58 != -1)
  {
    swift_once();
  }

  v22 = objc_allocWithZone(NSUserDefaults);
  v23 = sub_1000E2328();
  v24 = [v22 initWithSuiteName:v23];

  if (v24)
  {
    v25 = sub_1000E2328();
    [v24 BOOLForKey:v25];
  }

  return sub_1000E1758();
}

uint64_t sub_10006FE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000E1448();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  v4[9] = qword_1001230F0;

  return _swift_task_switch(sub_10006FF04, v8, 0);
}

uint64_t sub_10006FF04()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0[5] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  *(swift_task_alloc() + 16) = v4;
  sub_1000A75DC(&qword_10011EDC0, 255, &type metadata accessor for NCProtoEndedSessionEvent);
  sub_1000E0E38();

  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[10] = qword_1001230E0;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_100070094;
  v7 = v0[8];
  v8 = v0[2];

  return sub_100027CD0(3, v7, v8, v3, 0);
}

uint64_t sub_100070094()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  v5 = *(v2 + 80);
  if (v0)
  {

    v6 = sub_100070244;
  }

  else
  {
    v6 = sub_1000701CC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000701CC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[8];

  v2 = v0[1];

  return v2();
}

uint64_t sub_100070244()
{
  v1 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);

  return _swift_task_switch(sub_1000702BC, v1, 0);
}

uint64_t sub_1000702BC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10007031C(void *a1, void *a2)
{
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1000E2538();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = qword_10011DC30;
    v12 = v9;
    v13 = a1;
    v14 = a2;
    if (v11 != -1)
    {
      swift_once();
    }

    v16 = qword_1001230F0;
    v17 = sub_1000A75DC(&qword_100120020, v15, type metadata accessor for ConduitActor);
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = v17;
    v18[4] = v12;
    v18[5] = a1;
    v18[6] = a2;

    sub_100022960(0, 0, v7, &unk_1000F24F0, v18);
  }
}

uint64_t sub_1000704F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_1000E0D68();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230F0;
  v6[11] = qword_1001230F0;

  return _swift_task_switch(sub_1000705EC, v10, 0);
}

uint64_t sub_1000705EC()
{
  v0[12] = *(v0[5] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;
  v0[13] = qword_1001230E0;

  return _swift_task_switch(sub_100070698, v1, 0);
}

uint64_t sub_100070698()
{
  v9 = v0;
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_10002BA7C(*(v2 + 16), 0);
    v5 = sub_10002A9B0(&v8, v4 + 4, v3, v2);

    sub_10000A840();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[14] = v4;
  v6 = v0[11];

  return _swift_task_switch(sub_1000707A8, v6, 0);
}

uint64_t sub_1000707A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[14];
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    v5 = sub_1000E2B68();
    v3[15] = v5;
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    v3[15] = v5;
    if (v5)
    {
LABEL_4:
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        v6 = v3[14];
        v3[16] = 0;
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = sub_1000E2A98();
        }

        else
        {
          v8 = *(v6 + 32);
        }

        v3[17] = v7;
        a2 = v3[13];
        v5 = sub_1000708A4;
        a3 = 0;
      }

      return _swift_task_switch(v5, a2, a3);
    }
  }

  v9 = v3[14];
  v10 = v3[10];

  v11 = v3[1];

  return v11();
}

uint64_t sub_1000708A4()
{
  v1 = v0[17];
  v2 = v0[11];
  v0[18] = sub_100012CD8();

  return _swift_task_switch(sub_100070914, v2, 0);
}

uint64_t sub_100070914()
{
  v1 = *(v0 + 48);
  v2 = sub_10006EE20(*(v0 + 144), v1);
  v3 = *(v0 + 144);
  v4 = *(v0 + 56);
  if ((v2 & 1) == 0 || !v1)
  {
    v9 = *(v0 + 40);
    if (sub_10006EE20(*(v0 + 144), *(v0 + 56)) & 1) == 0 || (v10 = *(v0 + 56)) == 0 || ([v10 isContinuitySession])
    {
LABEL_15:

      v19 = *(v0 + 128);
      v18 = *(v0 + 136);
      v20 = *(v0 + 120);

      if (v19 + 1 == v20)
      {
        v21 = *(v0 + 112);
        v22 = *(v0 + 80);

        v23 = *(v0 + 8);

        return v23();
      }

      else
      {
        v24 = *(v0 + 128) + 1;
        *(v0 + 128) = v24;
        v25 = *(v0 + 112);
        if ((v25 & 0xC000000000000001) != 0)
        {
          v26 = sub_1000E2A98();
        }

        else
        {
          v27 = *(v25 + 8 * v24 + 32);
        }

        *(v0 + 136) = v26;
        v28 = *(v0 + 104);

        return _swift_task_switch(sub_1000708A4, v28, 0);
      }
    }

    goto LABEL_11;
  }

  v5 = *(v0 + 40);
  v6 = [*(v0 + 48) isContinuitySession];
  if ((sub_10006EE20(v3, v4) & 1) != 0 && (v7 = *(v0 + 56)) != 0)
  {
    v8 = [v7 isContinuitySession];
    if (v6)
    {
      if (v8)
      {
        goto LABEL_15;
      }

LABEL_11:
      v11 = *(v0 + 136);
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      v14 = *(v0 + 56);
      v15 = swift_task_alloc();
      *(v0 + 160) = v15;
      *v15 = v0;
      v15[1] = sub_100070E70;
      v16 = *(v0 + 40);

      return sub_10006F004(v13, v12, v14);
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v6)
  {
    goto LABEL_15;
  }

  v29 = *(v0 + 136);
  v30 = *(v0 + 80);
  v31 = *(v29 + 16);
  v32 = *(v29 + 24);
  v33 = [*(v0 + 48) UUID];
  sub_1000E0D38();

  v34 = swift_task_alloc();
  *(v0 + 152) = v34;
  *v34 = v0;
  v34[1] = sub_100070BFC;
  v35 = *(v0 + 80);
  v36 = *(v0 + 40);

  return sub_10006FE08(v31, v32, v35);
}

uint64_t sub_100070BFC()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_100070D68, v2, 0);
}

uint64_t sub_100070D68()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 48);

  if (v2 + 1 == v3)
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 80);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 128) + 1;
    *(v0 + 128) = v9;
    v10 = *(v0 + 112);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = sub_1000E2A98();
    }

    else
    {
      v12 = *(v10 + 8 * v9 + 32);
    }

    *(v0 + 136) = v11;
    v13 = *(v0 + 104);

    return _swift_task_switch(sub_1000708A4, v13, 0);
  }
}

uint64_t sub_100070E70()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_100070F80, v2, 0);
}

uint64_t sub_100070F80()
{
  v1 = *(v0 + 56);

  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);

  if (v3 + 1 == v4)
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 80);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 128) + 1;
    *(v0 + 128) = v9;
    v10 = *(v0 + 112);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = sub_1000E2A98();
    }

    else
    {
      v12 = *(v10 + 8 * v9 + 32);
    }

    *(v0 + 136) = v11;
    v13 = *(v0 + 104);

    return _swift_task_switch(sub_1000708A4, v13, 0);
  }
}

uint64_t sub_10007107C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000E0D68();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;

  return _swift_task_switch(sub_100071174, v7, 0);
}

uint64_t sub_1000711A4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[3];
  sub_1000E0D58();
  v4 = swift_task_alloc();
  v0[9] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = sub_1000E1398();
  *v7 = v0;
  v7[1] = sub_1000712C4;
  v9 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v9, &unk_1000F2950, v4, sub_1000AE220, v5, 0, 0, v8);
}

uint64_t sub_1000712C4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_100071468;
  }

  else
  {
    v6 = *(v2 + 72);
    v5 = *(v2 + 80);

    v4 = sub_1000713E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000713E8()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100071468()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];
  v7 = v0[12];

  return v6();
}

uint64_t sub_100071504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_1000E1948();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v4[20] = *(v6 + 64);
  v4[21] = swift_task_alloc();
  v7 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = sub_1000E13E8();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v11 = type metadata accessor for HandoffInfo(0);
  v4[26] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v13 = *(*(sub_10000ADE4(&qword_10011F888, &qword_1000F22B0) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v14 = type metadata accessor for HandoffState(0);
  v4[32] = v14;
  v15 = *(v14 - 8);
  v4[33] = v15;
  v16 = *(v15 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v17 = qword_1001230F0;
  v4[38] = qword_1001230F0;

  return _swift_task_switch(sub_1000717A8, v17, 0);
}

uint64_t sub_1000717A8()
{
  v99 = v0;
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[17];
  v5 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  v0[39] = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v4 + v5, v3, &qword_10011F888, &qword_1000F22B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000033C8(v0[31], &qword_10011F888, &qword_1000F22B0);
    v6 = v0[38];
    v8 = v0[21];
    v7 = v0[22];
    v97 = v7;
    v10 = v0[19];
    v9 = v0[20];
    v12 = v0[17];
    v11 = v0[18];
    v14 = v0[15];
    v13 = v0[16];
    v15 = sub_1000E2538();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    (*(v10 + 16))(v8, v14, v11);
    v17 = sub_1000A75DC(&qword_100120020, v16, type metadata accessor for ConduitActor);
    v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = v6;
    *(v19 + 3) = v17;
    *(v19 + 4) = v12;
    *(v19 + 5) = v13;
    (*(v10 + 32))(&v19[v18], v8, v11);
    v20 = v12;

    v21 = sub_100022678(0, 0, v97, &unk_1000F28D8, v19);
    v0[42] = v21;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v22 = v0[16];
    v23 = sub_1000E1F08();
    v0[43] = sub_1000049D0(v23, qword_100123128);

    v24 = sub_1000E1EE8();
    v25 = sub_1000E2698();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[16];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v98[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_100029C70(*(v26 + 16), *(v26 + 24), v98);
      _os_log_impl(&_mh_execute_header, v24, v25, "[StartConversation] Initiated task to start conversation with %s", v27, 0xCu);
      sub_10000E9DC(v28);
    }

    v29 = v0[39];
    v30 = v0[32];
    v31 = v0[33];
    v32 = v0[30];
    v33 = v0[17];
    *v32 = v21;
    swift_storeEnumTagMultiPayload();
    v34 = *(v31 + 56);
    v0[44] = v34;
    v0[45] = (v31 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v34(v32, 0, 1, v30);
    swift_beginAccess();

    sub_1000A884C(v32, v33 + v29);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v32, &qword_10011F888, &qword_1000F22B0);
    v35 = async function pointer to Task.value.getter[1];
    v36 = swift_task_alloc();
    v0[46] = v36;
    v37 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    *v36 = v0;
    v36[1] = sub_1000726E0;
    v38 = v0[28];
    v39 = v0[26];

    return Task.value.getter(v38, v21, v39, v37, &protocol self-conformance witness table for Error);
  }

  v40 = v0[36];
  v41 = v0[37];
  v42 = v0[32];
  sub_1000A877C(v0[31], v41, type metadata accessor for HandoffState);
  sub_1000A87E4(v41, v40, type metadata accessor for HandoffState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = v0[36];
  if (EnumCaseMultiPayload == 1)
  {
    v45 = v0[29];
    v46 = v0[16];
    sub_1000A877C(v44, v45, type metadata accessor for HandoffInfo);
    v47 = *(v45 + 8) == *(v46 + 16) && *(v45 + 16) == *(v46 + 24);
    if (v47 || (sub_1000E2C68() & 1) != 0)
    {
      if (qword_10011DC60 != -1)
      {
        swift_once();
      }

      v48 = v0[37];
      v49 = v0[34];
      v50 = sub_1000E1F08();
      sub_1000049D0(v50, qword_100123128);
      sub_1000A87E4(v48, v49, type metadata accessor for HandoffState);
      v51 = sub_1000E1EE8();
      v52 = sub_1000E2678();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v0[34];
      if (v53)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v98[0] = v56;
        *v55 = 136315138;
        v57 = sub_1000DDE18();
        v59 = v58;
        sub_1000AD5EC(v54, type metadata accessor for HandoffState);
        v60 = sub_100029C70(v57, v59, v98);

        *(v55 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v51, v52, "[StartConversation] Received start call request from device to which we currently think we're handed off. Ending existing handoff: %s", v55, 0xCu);
        sub_10000E9DC(v56);
      }

      else
      {

        sub_1000AD5EC(v54, type metadata accessor for HandoffState);
      }

      v88 = v0[24];
      v87 = v0[25];
      v89 = v0[23];
      v90 = v0[17];
      (*(v88 + 104))(v87, enum case for NCProtoDisconnectRequest.DisconnectReason.endingHandoff(_:), v89);
      v91 = sub_10006B2FC(v87);
      v0[40] = v91;
      (*(v88 + 8))(v87, v89);
      v92 = async function pointer to Task<>.value.getter[1];
      v93 = swift_task_alloc();
      v0[41] = v93;
      *v93 = v0;
      v93[1] = sub_1000721AC;

      return Task<>.value.getter(v93, v91, &type metadata for () + 8);
    }

    v44 = v0[29];
    v61 = type metadata accessor for HandoffInfo;
  }

  else
  {
    v61 = type metadata accessor for HandoffState;
  }

  sub_1000AD5EC(v44, v61);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v62 = v0[37];
  v63 = v0[35];
  v64 = sub_1000E1F08();
  sub_1000049D0(v64, qword_100123128);
  sub_1000A87E4(v62, v63, type metadata accessor for HandoffState);
  v65 = sub_1000E1EE8();
  v66 = sub_1000E2678();
  v67 = os_log_type_enabled(v65, v66);
  v68 = v0[35];
  if (v67)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v98[0] = v70;
    *v69 = 136315138;
    v71 = sub_1000DDE18();
    v73 = v72;
    sub_1000AD5EC(v68, type metadata accessor for HandoffState);
    v74 = sub_100029C70(v71, v73, v98);

    *(v69 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v65, v66, "[StartConversation] Rejecting start conversation request because we're already in a session: %s", v69, 0xCu);
    sub_10000E9DC(v70);
  }

  else
  {

    sub_1000AD5EC(v68, type metadata accessor for HandoffState);
  }

  v75 = v0[37];
  TUMakeNeighborhoodConduitError();
  swift_willThrow();
  sub_1000AD5EC(v75, type metadata accessor for HandoffState);
  v77 = v0[36];
  v76 = v0[37];
  v79 = v0[34];
  v78 = v0[35];
  v81 = v0[30];
  v80 = v0[31];
  v83 = v0[28];
  v82 = v0[29];
  v84 = v0[27];
  v85 = v0[25];
  v95 = v0[22];
  v96 = v0[21];

  v86 = v0[1];

  return v86();
}

uint64_t sub_1000721AC()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 304);
  v5 = *v0;

  return _swift_task_switch(sub_1000722D8, v3, 0);
}

uint64_t sub_1000722D8()
{
  v39 = v0;
  v1 = v0[29];
  sub_1000AD5EC(v0[37], type metadata accessor for HandoffState);
  sub_1000AD5EC(v1, type metadata accessor for HandoffInfo);
  v2 = v0[38];
  v4 = v0[21];
  v3 = v0[22];
  v37 = v3;
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v11 = sub_1000E2538();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  (*(v6 + 16))(v4, v10, v7);
  v13 = sub_1000A75DC(&qword_100120020, v12, type metadata accessor for ConduitActor);
  v14 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v2;
  *(v15 + 3) = v13;
  *(v15 + 4) = v8;
  *(v15 + 5) = v9;
  (*(v6 + 32))(&v15[v14], v4, v7);
  v16 = v8;

  v17 = sub_100022678(0, 0, v37, &unk_1000F28D8, v15);
  v0[42] = v17;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v18 = v0[16];
  v19 = sub_1000E1F08();
  v0[43] = sub_1000049D0(v19, qword_100123128);

  v20 = sub_1000E1EE8();
  v21 = sub_1000E2698();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v0[16];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_100029C70(*(v22 + 16), *(v22 + 24), &v38);
    _os_log_impl(&_mh_execute_header, v20, v21, "[StartConversation] Initiated task to start conversation with %s", v23, 0xCu);
    sub_10000E9DC(v24);
  }

  v25 = v0[39];
  v26 = v0[32];
  v27 = v0[33];
  v28 = v0[30];
  v29 = v0[17];
  *v28 = v17;
  swift_storeEnumTagMultiPayload();
  v30 = *(v27 + 56);
  v0[44] = v30;
  v0[45] = (v27 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v30(v28, 0, 1, v26);
  swift_beginAccess();

  sub_1000A884C(v28, v29 + v25);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v28, &qword_10011F888, &qword_1000F22B0);
  v31 = async function pointer to Task.value.getter[1];
  v32 = swift_task_alloc();
  v0[46] = v32;
  v33 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  *v32 = v0;
  v32[1] = sub_1000726E0;
  v34 = v0[28];
  v35 = v0[26];

  return Task.value.getter(v34, v17, v35, v33, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000726E0()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 304);
  if (v0)
  {
    v6 = sub_100072B10;
  }

  else
  {
    v6 = sub_10007280C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10007280C()
{
  v32 = v0;
  v1 = v0[43];
  sub_1000A87E4(v0[28], v0[27], type metadata accessor for HandoffInfo);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136315138;
    v8 = sub_1000DDC88();
    v10 = v9;
    sub_1000AD5EC(v5, type metadata accessor for HandoffInfo);
    v11 = sub_100029C70(v8, v10, &v31);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "[StartConversation] Successfully started conversation %s", v6, 0xCu);
    sub_10000E9DC(v7);
  }

  else
  {

    sub_1000AD5EC(v5, type metadata accessor for HandoffInfo);
  }

  v13 = v0[44];
  v12 = v0[45];
  v14 = v0[42];
  v15 = v0[39];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[35];
  v26 = v0[34];
  v16 = v0[32];
  v17 = v0[30];
  v18 = v0[28];
  v27 = v0[27];
  v28 = v0[25];
  v29 = v0[22];
  v30 = v0[21];
  v19 = v0[17];
  v20 = v0[14];
  sub_1000A87E4(v18, v17, type metadata accessor for HandoffInfo);
  swift_storeEnumTagMultiPayload();
  v13(v17, 0, 1, v16);
  swift_beginAccess();
  sub_1000A884C(v17, v19 + v15);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v17, &qword_10011F888, &qword_1000F22B0);
  sub_1000E19B8();

  sub_1000AD5EC(v18, type metadata accessor for HandoffInfo);

  v21 = v0[1];

  return v21();
}

uint64_t sub_100072B10()
{
  v34 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v0 + 128);

  swift_errorRetain();
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2678();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 376);
    v8 = *(v0 + 128);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100029C70(*(v8 + 16), *(v8 + 24), &v33);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "[StartConversation] Failed to start conversation with %s due to %@", v9, 0x16u);
    sub_1000033C8(v10, &unk_10011EAC0, &unk_1000F0E60);

    sub_10000E9DC(v11);
  }

  v13 = *(v0 + 376);
  v14 = *(v0 + 360);
  v15 = *(v0 + 312);
  v16 = *(v0 + 240);
  v17 = *(v0 + 136);
  (*(v0 + 352))(v16, 1, 1, *(v0 + 256));
  swift_beginAccess();
  sub_1000A884C(v16, v17 + v15);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v16, &qword_10011F888, &qword_1000F22B0);
  swift_willThrow();
  v19 = *(v0 + 288);
  v18 = *(v0 + 296);
  v21 = *(v0 + 272);
  v20 = *(v0 + 280);
  v23 = *(v0 + 240);
  v22 = *(v0 + 248);
  v25 = *(v0 + 224);
  v24 = *(v0 + 232);
  v26 = *(v0 + 216);
  v27 = *(v0 + 200);
  v30 = *(v0 + 176);
  v31 = *(v0 + 168);
  v32 = *(v0 + 376);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100072DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_1000E15C8();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230F0;

  return _swift_task_switch(sub_100072EC4, v10, 0);
}

uint64_t sub_100072EC4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  sub_1000E1938();
  (*(v4 + 32))(v2, v1, v3);
  v6 = (*(v4 + 88))(v2, v3);
  if (v6 == enum case for NCProtoConversationAVMode.none(_:))
  {
    v7 = 0;
  }

  else if (v6 == enum case for NCProtoConversationAVMode.audio(_:))
  {
    v7 = 1;
  }

  else
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    v7 = 2;
  }

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_100073010;
  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];

  return sub_100073144(v11, v9, v7);
}

uint64_t sub_100073010()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100073144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  v4[6] = qword_1001230F0;

  return _swift_task_switch(sub_1000731E4, v5, 0);
}

uint64_t sub_1000731E4()
{
  v0[7] = sub_1000D605C(0);
  if (_swiftEmptyArrayStorage >> 62 && sub_1000E2B68())
  {
    sub_1000E03A0(_swiftEmptyArrayStorage);
  }

  v1 = objc_allocWithZone(TUJoinConversationRequest);
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
  isa = sub_1000E25D8().super.isa;

  v3 = [v1 initWithRemoteMembers:isa];
  v0[8] = v3;

  [v3 setAvMode:0];
  [v3 setPresentationMode:2];
  [v3 setWantsStagingArea:0];
  [v3 setShouldSuppressInCallUI:1];
  [v3 setPrefersAddingRemoteMembersAfterHandoff:1];
  if (qword_10011DCA8 != -1)
  {
    swift_once();
  }

  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  v7 = sub_1000E2DA8();
  v9 = v8;
  v10 = swift_allocObject();
  v0[9] = v10;
  v10[2] = v5;
  v10[3] = v3;
  v10[4] = v4;
  v10[5] = v6;
  v11 = v5;
  v12 = v3;

  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_10007348C;
  v14 = v0[2];

  return sub_10005D2F4(v14, v7, v9, &unk_1000F28F0, v10);
}

uint64_t sub_10007348C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_10007362C;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 48);

    v5 = sub_1000735B4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000735B4()
{
  v1 = *(v0 + 56);

  sub_1000D6278(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007362C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_1000D6278(0);

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_1000736AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for HandoffState(0);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v8 = *(*(sub_10000ADE4(&qword_10011F888, &qword_1000F22B0) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v9 = qword_1001230F0;
  v4[16] = qword_1001230F0;

  return _swift_task_switch(sub_100073804, v9, 0);
}

uint64_t sub_100073804()
{
  v47 = v0;
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v4 + v5, v1, &qword_10011F888, &qword_1000F22B0);
  v6 = *(v3 + 48);
  LODWORD(v2) = v6(v1, 1, v2);
  sub_1000033C8(v1, &qword_10011F888, &qword_1000F22B0);
  if (v2 == 1)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v7 = sub_1000E1F08();
    v0[17] = sub_1000049D0(v7, qword_100123128);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2698();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[Handoff][PullToTV] Initiating Laguna pull conversation request", v10, 2u);
    }

    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];

    v14 = *(v11 + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = sub_100073FF8();
    v18 = swift_task_alloc();
    v0[18] = v18;
    *v18 = v0;
    v18[1] = sub_100073CF0;

    return sub_10002F464(v15, v16, 0, v17);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v20 = v0[8];
    v21 = sub_1000E1F08();
    sub_1000049D0(v21, qword_100123128);
    v22 = v20;
    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();

    if (os_log_type_enabled(v23, v24))
    {
      v45 = v24;
      v25 = v0[13];
      v26 = v0[14];
      v43 = v0[9];
      v27 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v27 = 136315138;
      sub_10000CB64(v4 + v5, v26, &qword_10011F888, &qword_1000F22B0);
      sub_10000CB64(v26, v25, &qword_10011F888, &qword_1000F22B0);
      v28 = v6(v25, 1, v43);
      v29 = v0[13];
      if (v28 == 1)
      {
        sub_1000033C8(v29, &qword_10011F888, &qword_1000F22B0);
        v30 = 0xE300000000000000;
        v31 = 7104878;
      }

      else
      {
        v32 = v0[11];
        v33 = v0[12];
        v34 = v0[9];
        sub_1000A877C(v29, v33, type metadata accessor for HandoffState);
        sub_1000A87E4(v33, v32, type metadata accessor for HandoffState);
        v31 = sub_1000E2368();
        v30 = v35;
        sub_1000AD5EC(v33, type metadata accessor for HandoffState);
      }

      sub_1000033C8(v0[14], &qword_10011F888, &qword_1000F22B0);
      v36 = sub_100029C70(v31, v30, &v46);

      *(v27 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v23, v45, "[Handoff][PullToTV] Rejecting pull because we're already in a session: %s", v27, 0xCu);
      sub_10000E9DC(v44);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v38 = v0[14];
    v37 = v0[15];
    v40 = v0[12];
    v39 = v0[13];
    v41 = v0[11];

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_100073CF0(uint64_t a1)
{
  v3 = *(*v2 + 144);
  v4 = *v2;
  v4[19] = a1;

  if (v1)
  {
    v6 = v4[14];
    v5 = v4[15];
    v8 = v4[12];
    v7 = v4[13];
    v9 = v4[11];

    v10 = v4[1];

    return v10();
  }

  else
  {
    v12 = v4[16];

    return _swift_task_switch(sub_100073E6C, v12, 0);
  }
}

uint64_t sub_100073E6C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 152);
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Handoff][PullToTV] Finishing Laguna pull conversation request with result: %@", v6, 0xCu);
    sub_1000033C8(v7, &unk_10011EAC0, &unk_1000F0E60);
  }

  v9 = *(v0 + 152);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);
  v14 = *(v0 + 88);
  v15 = *(v0 + 40);

  sub_1000E1C58();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100073FF8()
{
  v0 = sub_10000ADE4(&qword_10011FC30, &qword_1000F28C0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  if (sub_1000E1B88())
  {
    sub_1000E1B78();
    v7 = sub_1000E1B68();
    v8 = *(v7 - 8);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_10000CB64(v6, v4, &qword_10011FC30, &qword_1000F28C0);
    v9 = (*(v8 + 88))(v4, v7);
    v10 = 0;
    if (v9 != enum case for NCProtoPullLagunaSessionToTVRequest.Reason.userInitiated(_:))
    {
      if (v9 != enum case for NCProtoPullLagunaSessionToTVRequest.Reason.systemWake(_:))
      {
        (*(v8 + 8))(v4, v7);
        TUMakeNeighborhoodConduitError();
        swift_willThrow();
        sub_1000033C8(v6, &qword_10011FC30, &qword_1000F28C0);
        return v10;
      }

      v10 = 2;
    }
  }

  else
  {
    v11 = sub_1000E1B68();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v10 = 0;
  }

  sub_1000033C8(v6, &qword_10011FC30, &qword_1000F28C0);
  return v10;
}

uint64_t sub_100074228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v3[4] = qword_1001230F0;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10007430C;

  return sub_100074698(a2, a3);
}

uint64_t sub_10007430C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_10007449C;
  }

  else
  {
    v6 = sub_100074438;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100074438()
{
  v1 = *(v0 + 16);
  sub_1000E1DF8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007449C()
{
  v17 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = sub_1000E1F08();
  sub_1000049D0(v3, qword_100123128);

  swift_errorRetain();
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_100029C70(*(v7 + 16), *(v7 + 24), &v16);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to add conversation participant request for %s due to %@.", v8, 0x16u);
    sub_1000033C8(v9, &unk_10011EAC0, &unk_1000F0E60);

    sub_10000E9DC(v10);
  }

  v12 = v0[6];
  swift_willThrow();
  v13 = v0[1];
  v14 = v0[6];

  return v13();
}

uint64_t sub_100074698(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v5 = *(*(sub_10000ADE4(&qword_10011F888, &qword_1000F22B0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v6 = type metadata accessor for HandoffInfo(0);
  v3[27] = v6;
  v7 = *(v6 - 8);
  v3[28] = v7;
  v3[29] = *(v7 + 64);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v8 = sub_1000E1DC8();
  v3[34] = v8;
  v9 = *(v8 - 8);
  v3[35] = v9;
  v10 = *(v9 + 64) + 15;
  v3[36] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230F0;
  v3[37] = qword_1001230F0;

  return _swift_task_switch(sub_10007488C, v11, 0);
}

uint64_t sub_10007488C()
{
  v21 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[22];
  v5 = sub_1000E1F08();
  v0[38] = sub_1000049D0(v5, qword_100123128);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[35];
  v9 = v0[36];
  v11 = v0[34];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v12 = 136315138;
    sub_1000E1DB8();
    v13 = sub_1000E2478();
    v15 = v14;

    (*(v10 + 8))(v9, v11);
    v16 = sub_100029C70(v13, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "[AddParticipants] Received request to add participants %s.", v12, 0xCu);
    sub_10000E9DC(v19);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = *(v0[24] + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  v0[39] = v17;

  return _swift_task_switch(sub_100074AB8, v17, 0);
}

uint64_t sub_100074AB8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  sub_1000BA9C4(*(v0 + 184), (v0 + 80));

  return _swift_task_switch(sub_100074B2C, v2, 0);
}

uint64_t sub_100074B2C()
{
  v114 = v0;
  v1 = *(v0 + 88);
  if (!v1)
  {
    goto LABEL_19;
  }

  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 24) = v1;
  v4 = *(v0 + 112);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v4;
  *(v0 + 64) = *(v0 + 128);
  v5 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v3 + v5, v2, &qword_10011F888, &qword_1000F22B0);
  v6 = type metadata accessor for HandoffState(0);
  v7 = (*(*(v6 - 8) + 48))(v2, 1, v6);
  v8 = *(v0 + 208);
  if (v7 == 1)
  {
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    sub_1000033C8(v8, &qword_10011F888, &qword_1000F22B0);
LABEL_19:
    v34 = *(v0 + 304);
    v35 = *(v0 + 184);

    v36 = sub_1000E1EE8();
    v37 = sub_1000E2698();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 184);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v113[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_100029C70(*(v38 + 16), *(v38 + 24), v113);
      _os_log_impl(&_mh_execute_header, v36, v37, "[AddParticipants] Rejecting request to add conversation participants from device with which we do not have a laguna session %s.", v39, 0xCu);
      sub_10000E9DC(v40);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    goto LABEL_22;
  }

  v9 = *(v0 + 208);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    v33 = type metadata accessor for HandoffState;
LABEL_18:
    sub_1000AD5EC(v8, v33);
    goto LABEL_19;
  }

  v10 = *(v0 + 264);
  sub_1000A877C(v8, v10, type metadata accessor for HandoffInfo);
  v8 = *(v0 + 264);
  if (*v10 != 1 || ((v11 = *(v0 + 184), v12 = *(v8 + 8), v13 = *(v8 + 16), v12 != *(v11 + 16)) || v13 != *(v11 + 24)) && (v14 = *(v8 + 8), v15 = *(v8 + 16), v16 = sub_1000E2C68(), v8 = *(v0 + 264), (v16 & 1) == 0))
  {
LABEL_17:
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    v33 = type metadata accessor for HandoffInfo;
    goto LABEL_18;
  }

  v17 = *(v0 + 216);
  v18 = *(v0 + 192);
  v19 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  *(v0 + 320) = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v20 = *(v17 + 24);
  v21 = *(v18 + v19);
  isa = sub_1000E0D18().super.isa;
  v23 = [v21 activeConversationWithUUID:isa];
  *(v0 + 328) = v23;

  if (!v23)
  {
    v8 = *(v0 + 264);
    goto LABEL_17;
  }

  v24 = *(v0 + 176);
  v25 = sub_1000E1DB8();
  v26 = *(v25 + 16);
  if (v26)
  {
    v108 = v13;
    result = sub_1000E2AE8();
    v28 = 0;
    v29 = (v25 + 40);
    while (v28 < *(v25 + 16))
    {
      v30 = *(v0 + 184);
      v31 = *v29;
      v113[0] = *(v29 - 1);
      v113[1] = v31;

      sub_10008EEA0(v113, v0 + 16, v30, (v0 + 168), &v112);
      ++v28;

      sub_1000E2AC8();
      v32 = _swiftEmptyArrayStorage[2];
      sub_1000E2AF8();
      sub_1000E2B08();
      result = sub_1000E2AD8();
      v29 += 2;
      if (v26 == v28)
      {

        v13 = v108;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    v49 = sub_1000D4F64(_swiftEmptyArrayStorage);
    *(v0 + 336) = v49;

    sub_100020430(v49);
    if (v50)
    {
      v51 = *(v0 + 296);
      v52 = *(v0 + 264);
      v109 = v52;
      v54 = *(v0 + 232);
      v53 = *(v0 + 240);
      v55 = *(v0 + 224);
      v57 = *(v0 + 192);
      v56 = *(v0 + 200);

      v58 = sub_1000E2538();
      (*(*(v58 - 8) + 56))(v56, 1, 1, v58);
      sub_1000A87E4(v52, v53, type metadata accessor for HandoffInfo);
      v60 = sub_1000A75DC(&qword_100120020, v59, type metadata accessor for ConduitActor);
      v61 = (*(v55 + 80) + 40) & ~*(v55 + 80);
      v62 = swift_allocObject();
      v62[2] = v51;
      v62[3] = v60;
      v62[4] = v57;
      sub_1000A877C(v53, v62 + v61, type metadata accessor for HandoffInfo);
      v63 = v57;

      sub_1000223DC(0, 0, v56, &unk_1000F28A8, v62);

      TUMakeNeighborhoodConduitError();
      swift_willThrow();
      sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);

      sub_1000AD5EC(v109, type metadata accessor for HandoffInfo);
LABEL_22:
      v41 = *(v0 + 288);
      v43 = *(v0 + 256);
      v42 = *(v0 + 264);
      v45 = *(v0 + 240);
      v44 = *(v0 + 248);
      v47 = *(v0 + 200);
      v46 = *(v0 + 208);

      v48 = *(v0 + 8);
LABEL_23:

      return v48();
    }

    sub_1000CFEF8(v64);
    v66 = v65;

    v67 = sub_1000D4CDC(v66);

    v68 = sub_1000206F8(v67, 1, 0, 0);
    *(v0 + 344) = v68;

    v69 = *(v0 + 304);
    v70 = *(v0 + 264);
    if (!v68)
    {
      sub_1000A87E4(v70, *(v0 + 248), type metadata accessor for HandoffInfo);
      v82 = sub_1000E1EE8();
      v83 = sub_1000E2698();
      v84 = os_log_type_enabled(v82, v83);
      v85 = *(v0 + 248);
      if (v84)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v113[0] = v87;
        *v86 = 136315138;
        v88 = sub_1000DDC88();
        v90 = v89;
        sub_1000AD5EC(v85, type metadata accessor for HandoffInfo);
        v91 = sub_100029C70(v88, v90, v113);

        *(v86 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v82, v83, "[AddParticipants] Not pushing contacts for %s.", v86, 0xCu);
        sub_10000E9DC(v87);
      }

      else
      {

        sub_1000AD5EC(v85, type metadata accessor for HandoffInfo);
      }

      v96 = *(v0 + 328);
      v97 = *(v0 + 320);
      v98 = *(v0 + 288);
      v99 = *(v0 + 256);
      v100 = *(v0 + 264);
      v105 = *(v0 + 248);
      v106 = *(v0 + 240);
      v107 = *(v0 + 208);
      v111 = *(v0 + 200);
      v101 = *(v0 + 192);
      v102 = sub_10005A700(*(v0 + 336));

      v103 = *(v101 + v97);
      sub_1000D4B50(v102);

      sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
      sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
      v104 = sub_1000E25D8().super.isa;

      [v103 addRemoteMembers:v104 toConversation:v96];
      sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);

      sub_1000AD5EC(v100, type metadata accessor for HandoffInfo);

      v48 = *(v0 + 8);
      goto LABEL_23;
    }

    sub_1000A87E4(v70, *(v0 + 256), type metadata accessor for HandoffInfo);

    v71 = sub_1000E1EE8();
    v72 = sub_1000E2698();
    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v0 + 256);
    if (v73)
    {
      v75 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v113[0] = v110;
      *v75 = 134218242;
      *(v75 + 4) = *(v68 + 16);

      *(v75 + 12) = 2080;
      v76 = v13;
      v77 = sub_1000DDC88();
      v79 = v78;
      sub_1000AD5EC(v74, type metadata accessor for HandoffInfo);
      v80 = v77;
      v13 = v76;
      v81 = sub_100029C70(v80, v79, v113);

      *(v75 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v71, v72, "[AddParticipants] Pushing %ld initial contacts for %s.", v75, 0x16u);
      sub_10000E9DC(v110);
    }

    else
    {

      sub_1000AD5EC(v74, type metadata accessor for HandoffInfo);
    }

    v92 = *(v0 + 264);
    v93 = *(*(v0 + 216) + 28);
    v94 = swift_task_alloc();
    *(v0 + 352) = v94;
    *v94 = v0;
    v94[1] = sub_1000756C8;
    v95 = *(v0 + 192);

    return sub_10007F3DC(v68, v92 + v93, v12, v13);
  }

  return result;
}

uint64_t sub_1000756C8()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 344);
  v6 = *(v2 + 296);
  if (v0)
  {

    v7 = sub_1000759F4;
  }

  else
  {

    v7 = sub_100075824;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100075824()
{
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[40];
  v4 = v0[36];
  v5 = v0[32];
  v6 = v0[33];
  v13 = v0[31];
  v14 = v0[30];
  v15 = v0[26];
  v16 = v0[25];
  v7 = v0[24];
  v8 = sub_10005A700(v0[42]);

  v9 = *(v7 + v3);
  sub_1000D4B50(v8);

  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
  isa = sub_1000E25D8().super.isa;

  [v9 addRemoteMembers:isa toConversation:v2];
  sub_1000033C8((v0 + 10), &unk_10011FA58, &unk_1000F25E0);

  sub_1000AD5EC(v6, type metadata accessor for HandoffInfo);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000759F4()
{
  v1 = v0[41];
  v2 = v0[40];
  v3 = v0[36];
  v4 = v0[32];
  v5 = v0[33];
  v12 = v0[31];
  v13 = v0[30];
  v14 = v0[26];
  v15 = v0[25];
  v6 = v0[24];
  v7 = sub_10005A700(v0[42]);

  v8 = *(v6 + v2);
  sub_1000D4B50(v7);

  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
  isa = sub_1000E25D8().super.isa;

  [v8 addRemoteMembers:isa toConversation:v1];
  sub_1000033C8((v0 + 10), &unk_10011FA58, &unk_1000F25E0);

  sub_1000AD5EC(v5, type metadata accessor for HandoffInfo);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100075BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *(*(sub_10000ADE4(&qword_10011F888, &qword_1000F22B0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = sub_1000E1C48();
  v4[17] = v6;
  v7 = *(v6 - 8);
  v4[18] = v7;
  v4[19] = *(v7 + 64);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v9 = *(*(sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v10 = sub_1000E0D68();
  v4[25] = v10;
  v11 = *(v10 - 8);
  v4[26] = v11;
  v4[27] = *(v11 + 64);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v12 = qword_1001230F0;
  v4[30] = qword_1001230F0;

  return _swift_task_switch(sub_100075E04, v12, 0);
}

uint64_t sub_100075E04()
{
  v93 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[12];
  sub_1000E1BF8();
  sub_1000E0CF8();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000033C8(v0[24], &unk_10011F0C0, &qword_1000F1670);
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v5 = v0[20];
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[12];
    v9 = sub_1000E1F08();
    sub_1000049D0(v9, qword_100123128);
    (*(v7 + 16))(v5, v8, v6);
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[20];
    v14 = v0[17];
    v15 = v0[18];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v92[0] = v17;
      *v16 = 136315138;
      v18 = sub_1000E1BF8();
      v20 = v19;
      (*(v15 + 8))(v13, v14);
      v21 = sub_100029C70(v18, v20, v92);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "[JoinActiveConversation] Received malformed UUID: %s", v16, 0xCu);
      sub_10000E9DC(v17);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v25 = v0[28];
    v24 = v0[29];
    v27 = v0[23];
    v26 = v0[24];
    v29 = v0[21];
    v28 = v0[22];
    v30 = v0[20];
    v32 = v0[15];
    v31 = v0[16];

    v33 = v0[1];

    return v33();
  }

  else
  {
    v22 = v0[14];
    v23 = *(v0[26] + 32);
    v23(v0[29], v0[24], v0[25]);
    sub_100076BB0();
    v90 = v0[29];
    v35 = v0[28];
    v82 = v0[27];
    v37 = v0[25];
    v36 = v0[26];
    v39 = v0[22];
    v38 = v0[23];
    v86 = v0[30];
    v87 = v38;
    v81 = v37;
    v40 = v0[18];
    v41 = v0[17];
    v80 = v41;
    v83 = v0[19];
    v84 = v0[14];
    v85 = v0[13];
    v88 = v0[12];
    v42 = sub_1000E2538();
    (*(*(v42 - 8) + 56))(v38, 1, 1, v42);
    (*(v36 + 16))(v35, v90, v37);
    v91 = *(v40 + 16);
    v91(v39, v88, v41);
    v44 = sub_1000A75DC(&qword_100120020, v43, type metadata accessor for ConduitActor);
    v45 = (*(v36 + 80) + 48) & ~*(v36 + 80);
    v46 = (v82 + *(v40 + 80) + v45) & ~*(v40 + 80);
    v47 = swift_allocObject();
    *(v47 + 2) = v86;
    *(v47 + 3) = v44;
    *(v47 + 4) = v84;
    *(v47 + 5) = v85;
    v23(&v47[v45], v35, v81);
    (*(v40 + 32))(&v47[v46], v39, v80);
    v48 = v84;

    v49 = sub_100022678(0, 0, v87, &unk_1000F2658, v47);
    v50 = v49;
    v0[31] = v49;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v51 = v0[21];
    v52 = v0[17];
    v53 = v0[12];
    v54 = v0[13];
    v55 = sub_1000E1F08();
    v0[32] = sub_1000049D0(v55, qword_100123128);
    v91(v51, v53, v52);

    v56 = sub_1000E1EE8();
    v57 = sub_1000E2698();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v0[21];
    v61 = v0[17];
    v60 = v0[18];
    if (v58)
    {
      v89 = v0[13];
      v62 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v62 = 136315394;
      v63 = v50;
      v64 = sub_1000E1BF8();
      v66 = v65;
      (*(v60 + 8))(v59, v61);
      v67 = v64;
      v50 = v63;
      v68 = sub_100029C70(v67, v66, v92);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_100029C70(*(v89 + 16), *(v89 + 24), v92);
      _os_log_impl(&_mh_execute_header, v56, v57, "[JoinActiveConversation] requested to join conversation %s from %s", v62, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v60 + 8))(v59, v61);
    }

    v69 = v0[16];
    v70 = v0[14];
    *v69 = v50;
    v71 = type metadata accessor for HandoffState(0);
    v0[33] = v71;
    swift_storeEnumTagMultiPayload();
    v72 = *(v71 - 8);
    v73 = *(v72 + 56);
    v0[34] = v73;
    v0[35] = (v72 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v73(v69, 0, 1, v71);
    v74 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
    v0[36] = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
    swift_beginAccess();

    sub_1000A884C(v69, v70 + v74);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v69, &qword_10011F888, &qword_1000F22B0);
    v75 = async function pointer to Task.value.getter[1];
    v76 = swift_task_alloc();
    v0[37] = v76;
    v77 = type metadata accessor for HandoffInfo(0);
    v78 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    *v76 = v0;
    v76[1] = sub_100076630;
    v79 = v0[15];

    return Task.value.getter(v79, v50, v77, v78, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100076630()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_10007695C;
  }

  else
  {
    v6 = sub_10007675C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10007675C()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[32];
  v6 = v0[14];
  v7 = v0[15];
  swift_storeEnumTagMultiPayload();
  v4(v7, 0, 1, v3);
  swift_beginAccess();
  sub_1000A884C(v7, v6 + v1);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v7, &qword_10011F888, &qword_1000F22B0);
  v8 = sub_1000E1EE8();
  v9 = sub_1000E2698();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "[JoinActiveConversation] Handoff succeeded, returning successfully", v10, 2u);
  }

  v11 = v0[31];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[25];
  v15 = v0[26];
  v17 = v0[23];
  v16 = v0[24];
  v21 = v0[22];
  v22 = v0[21];
  v23 = v0[20];
  v24 = v0[16];
  v25 = v0[15];
  v18 = v0[11];

  sub_1000E1CA8();

  (*(v15 + 8))(v12, v14);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10007695C()
{
  v1 = v0[38];
  v2 = v0[32];
  swift_errorRetain();
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2678();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[38];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[JoinActiveConversation] Join active conversation failed due to %@", v6, 0xCu);
    sub_1000033C8(v7, &unk_10011EAC0, &unk_1000F0E60);
  }

  v9 = v0[38];
  v11 = v0[35];
  v10 = v0[36];
  v12 = v0[33];
  v13 = v0[34];
  v31 = v0[29];
  v14 = v0[26];
  v29 = v0[31];
  v30 = v0[25];
  v15 = v0[16];
  v16 = v0[14];

  v13(v15, 1, 1, v12);
  swift_beginAccess();
  sub_1000A884C(v15, v16 + v10);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v15, &qword_10011F888, &qword_1000F22B0);
  swift_willThrow();

  (*(v14 + 8))(v31, v30);
  v17 = v0[38];
  v19 = v0[28];
  v18 = v0[29];
  v21 = v0[23];
  v20 = v0[24];
  v23 = v0[21];
  v22 = v0[22];
  v24 = v0[20];
  v26 = v0[15];
  v25 = v0[16];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100076BB0()
{
  v1 = type metadata accessor for HandoffState(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v60 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v60 - v6;
  v7 = sub_1000E13E8();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = v65[8];
  __chkstk_darwin(v7);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandoffInfo(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v60 - v15;
  v16 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v62 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v63 = &v60 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v60 - v23;
  __chkstk_darwin(v22);
  v26 = &v60 - v25;
  v27 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(&v0[v27], v26, &qword_10011F888, &qword_1000F22B0);
  v28 = *(v2 + 48);
  if (v28(v26, 1, v1) == 1)
  {
    return sub_1000033C8(v26, &qword_10011F888, &qword_1000F22B0);
  }

  sub_10000CB64(v26, v24, &qword_10011F888, &qword_1000F22B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v67;
    sub_1000A877C(v24, v67, type metadata accessor for HandoffInfo);
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v30 = sub_1000E1F08();
    sub_1000049D0(v30, qword_100123128);
    sub_1000A87E4(v29, v14, type metadata accessor for HandoffInfo);
    v31 = sub_1000E1EE8();
    v32 = sub_1000E2698();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v26;
      v35 = swift_slowAlloc();
      v69 = v35;
      *v33 = 136315138;
      v36 = sub_1000DDC88();
      v38 = v37;
      sub_1000AD5EC(v14, type metadata accessor for HandoffInfo);
      v39 = sub_100029C70(v36, v38, &v69);
      v29 = v67;

      *(v33 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v31, v32, "Ending existing conversation as we join another: %s", v33, 0xCu);
      sub_10000E9DC(v35);
      v26 = v34;
    }

    else
    {

      sub_1000AD5EC(v14, type metadata accessor for HandoffInfo);
    }

    v52 = v64;
    v51 = v65;
    v53 = v66;
    (v65[13])(v64, enum case for NCProtoDisconnectRequest.DisconnectReason.endingHandoff(_:), v66);
    sub_10006B2FC(v52);

    (v51[1])(v52, v53);
    sub_1000AD5EC(v29, type metadata accessor for HandoffInfo);
    return sub_1000033C8(v26, &qword_10011F888, &qword_1000F22B0);
  }

  v68 = v26;
  sub_1000AD5EC(v24, type metadata accessor for HandoffState);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v40 = sub_1000E1F08();
  sub_1000049D0(v40, qword_100123128);
  v67 = v0;
  v41 = v0;
  v42 = sub_1000E1EE8();
  v43 = sub_1000E2678();

  if (os_log_type_enabled(v42, v43))
  {
    LODWORD(v66) = v43;
    v44 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v69 = v65;
    *v44 = 136315138;
    v45 = &v67[v27];
    v46 = v63;
    sub_10000CB64(v45, v63, &qword_10011F888, &qword_1000F22B0);
    v47 = v46;
    v48 = v62;
    sub_10000CB64(v47, v62, &qword_10011F888, &qword_1000F22B0);
    if (v28(v48, 1, v1) == 1)
    {
      sub_1000033C8(v48, &qword_10011F888, &qword_1000F22B0);
      v49 = 0xE300000000000000;
      v50 = 7104878;
    }

    else
    {
      v55 = v48;
      v56 = v61;
      sub_1000A877C(v55, v61, type metadata accessor for HandoffState);
      sub_1000A87E4(v56, v60, type metadata accessor for HandoffState);
      v50 = sub_1000E2368();
      v49 = v57;
      sub_1000AD5EC(v56, type metadata accessor for HandoffState);
    }

    v58 = v66;
    sub_1000033C8(v63, &qword_10011F888, &qword_1000F22B0);
    v59 = sub_100029C70(v50, v49, &v69);

    *(v44 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v42, v58, "Rejecting request because we're already joining a conversation: %s", v44, 0xCu);
    sub_10000E9DC(v65);
  }

  TUMakeNeighborhoodConduitError();
  swift_willThrow();
  return sub_1000033C8(v68, &qword_10011F888, &qword_1000F22B0);
}

uint64_t sub_100077390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[20] = a1;
  v8 = *(sub_10000ADE4(&unk_10011FA80, &qword_1000F2660) - 8);
  v7[25] = v8;
  v7[26] = *(v8 + 64);
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v9 = sub_1000E15C8();
  v7[29] = v9;
  v10 = *(v9 - 8);
  v7[30] = v10;
  v11 = *(v10 + 64) + 15;
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v12 = sub_1000E0D68();
  v7[33] = v12;
  v13 = *(v12 - 8);
  v7[34] = v13;
  v7[35] = *(v13 + 64);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v14 = sub_1000E1C48();
  v7[39] = v14;
  v15 = *(v14 - 8);
  v7[40] = v15;
  v16 = *(v15 + 64) + 15;
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v17 = sub_1000E2118();
  v7[44] = v17;
  v18 = *(v17 - 8);
  v7[45] = v18;
  v19 = *(v18 + 64) + 15;
  v7[46] = swift_task_alloc();
  v20 = sub_1000E2148();
  v7[47] = v20;
  v21 = *(v20 - 8);
  v7[48] = v21;
  v22 = *(v21 + 64) + 15;
  v7[49] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v23 = qword_1001230F0;
  v7[50] = qword_1001230F0;

  return _swift_task_switch(sub_1000776BC, v23, 0);
}

uint64_t sub_1000776BC()
{
  if ([*(v0[21] + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaIncomingCallsEnabled])
  {
    if (qword_10011DC18 != -1)
    {
      swift_once();
    }

    v1 = qword_1001230E0;

    return _swift_task_switch(sub_100077874, v1, 0);
  }

  else
  {
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v2 = v0[49];
    v3 = v0[46];
    v5 = v0[42];
    v4 = v0[43];
    v6 = v0[41];
    v8 = v0[37];
    v7 = v0[38];
    v9 = v0[36];
    v10 = v0[32];
    v13 = v0[31];
    v14 = v0[28];
    v15 = v0[27];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100077874()
{
  v1 = [objc_allocWithZone(TUFeatureFlags) init];
  v2 = [v1 lagunaAudioCallsEnabled];

  if (v2)
  {
    v3 = *(v0 + 176);
    v4 = sub_100012CD8();
    v5 = [v4 capabilities];

    v6 = [v5 isAudioCallCapable];
  }

  else
  {
    v6 = 0;
  }

  *(v0 + 548) = v6;
  v7 = *(v0 + 400);

  return _swift_task_switch(sub_100077954, v7, 0);
}

uint64_t sub_100077954()
{
  v1 = *(*(v0 + 168) + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  *(v0 + 408) = v1;
  return _swift_task_switch(sub_100077980, v1, 0);
}

uint64_t sub_100077980()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  sub_1000BA9C4(*(v0 + 176), (v0 + 16));

  return _swift_task_switch(sub_1000779F0, v1, 0);
}

uint64_t sub_1000779F0()
{
  v119 = v0;
  if (!v0[3])
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v30 = v0[22];
    v31 = sub_1000E1F08();
    sub_1000049D0(v31, qword_100123128);

    v32 = sub_1000E1EE8();
    v33 = sub_1000E2678();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[22];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v118[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_100029C70(*(v34 + 16), *(v34 + 24), v118);
      _os_log_impl(&_mh_execute_header, v32, v33, "[JoinActiveConversation] Continuity session doesn't exist for %s", v35, 0xCu);
      sub_10000E9DC(v36);
    }

    v37 = TUMakeNeighborhoodConduitError();
    goto LABEL_23;
  }

  v1 = v0[23];
  v2 = v0[21];
  sub_1000033C8((v0 + 2), &unk_10011FA58, &unk_1000F25E0);
  v3 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v0[52] = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v4 = [*(v2 + v3) activeConversations];
  sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  sub_10000EA70(&qword_10011FA90, qword_10011F0D0, TUConversation_ptr);
  v5 = sub_1000E25E8();

  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  sub_1000DEED4(sub_1000AAC40, v6, v5);
  v8 = v7;
  v0[53] = v7;

  if (!v8)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v39 = v0[40];
    v38 = v0[41];
    v40 = v0[39];
    v41 = v0[24];
    v42 = sub_1000E1F08();
    sub_1000049D0(v42, qword_100123128);
    (*(v39 + 16))(v38, v41, v40);
    v43 = sub_1000E1EE8();
    v44 = sub_1000E2678();
    v45 = os_log_type_enabled(v43, v44);
    v47 = v0[40];
    v46 = v0[41];
    v48 = v0[39];
    if (v45)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v118[0] = v50;
      *v49 = 136315138;
      v51 = sub_1000E1BF8();
      v53 = v52;
      (*(v47 + 8))(v46, v48);
      v54 = sub_100029C70(v51, v53, v118);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v43, v44, "[JoinActiveConversation] Unable to find conversation for %s", v49, 0xCu);
      sub_10000E9DC(v50);
    }

    else
    {

      (*(v47 + 8))(v46, v48);
    }

    v37 = TUMakeNeighborhoodConduitError();
LABEL_23:
    v37;
    swift_willThrow();
LABEL_26:
    v84 = v0[49];
    v85 = v0[46];
    v87 = v0[42];
    v86 = v0[43];
    v88 = v0[41];
    v90 = v0[37];
    v89 = v0[38];
    v91 = v0[36];
    v92 = v0[31];
    v93 = v0[32];
    v113 = v0[28];
    v115 = v0[27];

    v94 = v0[1];

    return v94();
  }

  v9 = [v8 remoteMembers];
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
  v10 = sub_1000E25E8();

  v11 = sub_10001DBD4(v10);

  v12 = sub_1000D4F64(v11);

  sub_100020430(v12);
  LOBYTE(v11) = v13;

  if (v11)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v14 = v0[42];
    v15 = v0[39];
    v16 = v0[40];
    v17 = v0[24];
    v18 = sub_1000E1F08();
    sub_1000049D0(v18, qword_100123128);
    (*(v16 + 16))(v14, v17, v15);
    v19 = sub_1000E1EE8();
    v20 = sub_1000E2678();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[42];
    v23 = v0[39];
    v24 = v0[40];
    if (v21)
    {
      v25 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v118[0] = v116;
      *v25 = 136315138;
      v26 = sub_1000E1BF8();
      v28 = v27;
      (*(v24 + 8))(v22, v23);
      v29 = sub_100029C70(v26, v28, v118);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v19, v20, "[JoinActiveConversation] Unable to join conversation with blocked handles %s", v25, 0xCu);
      sub_10000E9DC(v116);
    }

    else
    {

      (*(v24 + 8))(v22, v23);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    goto LABEL_26;
  }

  v55 = v0[49];
  v56 = v0[46];
  v114 = v0[48];
  v117 = v0[47];
  v57 = v0[44];
  v112 = v0[45];
  v58 = v0[21];
  v59 = [objc_allocWithZone(TUJoinConversationRequest) initWithConversation:v8 originatingUIType:44];
  v0[54] = v59;
  [v59 setAvMode:0];
  [v59 setPresentationMode:2];
  [v59 setWantsStagingArea:0];
  [v59 setShouldSuppressInCallUI:1];
  v60 = [*&v58[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] queue];
  v61 = swift_allocObject();
  *(v61 + 16) = v58;
  *(v61 + 24) = v59;
  v0[14] = sub_1000AE200;
  v0[15] = v61;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000026A0;
  v0[13] = &unk_100115110;
  v62 = _Block_copy(v0 + 10);
  v63 = v58;
  v64 = v59;
  sub_1000E2138();
  v0[19] = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  v65 = v0;
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v62);

  (*(v112 + 8))(v56, v57);
  (*(v114 + 8))(v55, v117);
  v66 = v0[15];

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v67 = v0[43];
  v68 = v0[39];
  v69 = v0[40];
  v70 = v65[24];
  v71 = sub_1000E1F08();
  v65[55] = sub_1000049D0(v71, qword_100123128);
  (*(v69 + 16))(v67, v70, v68);
  v72 = sub_1000E1EE8();
  v73 = sub_1000E2698();
  v74 = os_log_type_enabled(v72, v73);
  v75 = v65[43];
  v77 = v65[39];
  v76 = v65[40];
  if (v74)
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v118[0] = v79;
    *v78 = 136315138;
    v80 = sub_1000E1BF8();
    v82 = v81;
    (*(v76 + 8))(v75, v77);
    v83 = sub_100029C70(v80, v82, v118);

    *(v78 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v72, v73, "[JoinActiveConversation] Attempting to join conversation %s.", v78, 0xCu);
    sub_10000E9DC(v79);
  }

  else
  {

    (*(v76 + 8))(v75, v77);
  }

  if (qword_10011DCA8 != -1)
  {
    swift_once();
  }

  v96 = v65[38];
  v97 = v65[34];
  v98 = v65[35];
  v99 = v65[33];
  v100 = v65[23];
  v101 = v65[21];
  v102 = sub_1000E2DA8();
  v104 = v103;
  v105 = *(v97 + 16);
  v65[56] = v105;
  v65[57] = (v97 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v105(v96, v100, v99);
  v106 = *(v97 + 80);
  *(v65 + 136) = v106;
  v107 = (v106 + 24) & ~v106;
  v108 = swift_allocObject();
  v65[58] = v108;
  *(v108 + 16) = v101;
  v109 = *(v97 + 32);
  v65[59] = v109;
  v65[60] = (v97 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v109(v108 + v107, v96, v99);
  v110 = v101;
  v111 = swift_task_alloc();
  v65[61] = v111;
  *v111 = v65;
  v111[1] = sub_100078680;

  return sub_10005CD04(sub_10005CD04, v102, v104, &unk_1000F2670, v108);
}

uint64_t sub_100078680()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 496) = v0;

  v6 = *(v2 + 400);
  if (v0)
  {
    v7 = sub_1000793DC;
  }

  else
  {
    v7 = sub_1000787C8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000787C8()
{
  v1 = *(v0 + 440);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[JoinActiveConversation] Conversation joined, attempting to handoff...", v4, 2u);
  }

  v5 = *(v0 + 548);

  if (v5 != 1 || (v6 = *(v0 + 192), (sub_1000E1C38() & 1) != 0) && (v7 = *(v0 + 192), (sub_1000E1C18() & 1) != 0))
  {
    (*(*(v0 + 240) + 104))(*(v0 + 248), enum case for NCProtoConversationAVMode.video(_:), *(v0 + 232));
  }

  else
  {
    v8 = *(v0 + 240);
    v9 = [*(v0 + 424) resolvedAudioVideoMode];
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = &enum case for NCProtoConversationAVMode.audio(_:);
      }

      else
      {
        v10 = &enum case for NCProtoConversationAVMode.video(_:);
      }
    }

    else
    {
      v10 = &enum case for NCProtoConversationAVMode.none(_:);
    }

    (*(v8 + 104))(*(v0 + 248), *v10, *(v0 + 232));
  }

  v11 = *(v0 + 496);
  v48 = *(v0 + 480);
  v47 = *(v0 + 472);
  v12 = *(v0 + 544);
  v40 = *(v0 + 448);
  v41 = *(v0 + 456);
  v13 = *(v0 + 424);
  v14 = *(v0 + 296);
  v49 = *(v0 + 304);
  v15 = *(v0 + 256);
  v39 = *(v0 + 264);
  v16 = *(v0 + 224);
  v17 = *(v0 + 216);
  v35 = v17;
  v43 = *(v0 + 280);
  v44 = *(v0 + 208);
  v18 = *(v0 + 192);
  v42 = *(v0 + 200);
  v45 = *(v0 + 176);
  v46 = *(v0 + 168);
  (*(*(v0 + 240) + 32))(v15, *(v0 + 248), *(v0 + 232));
  v19 = [v13 UUID];
  sub_1000E0D38();

  v20 = sub_1000E0FE8();
  v21 = swift_task_alloc();
  *(v21 + 16) = v18;
  *(v21 + 24) = v15;
  sub_1000A75DC(&qword_10011FA98, 255, &type metadata accessor for NCProtoCallState);
  sub_1000E0E38();

  (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
  *(v0 + 504) = sub_1000D605C(2);
  v36 = swift_allocObject();
  *(v0 + 512) = v36;
  *(v36 + 16) = 0;
  v22 = sub_1000E2DA8();
  v37 = v23;
  v38 = v22;
  v40(v49, v14, v39);
  sub_10000CB64(v16, v17, &unk_10011FA80, &qword_1000F2660);
  v24 = (v12 + 16) & ~v12;
  v25 = (v24 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + *(v42 + 80) + 9) & ~*(v42 + 80);
  v28 = (v27 + v44) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v0 + 520) = v29;
  v47(v29 + v24, v49, v39);
  *(v29 + v25) = v45;
  v30 = v29 + v26;
  *v30 = v46;
  *(v30 + 8) = 1;
  sub_1000AD400(v35, v29 + v27, &unk_10011FA80, &qword_1000F2660);
  *(v29 + v27 + v44) = 1;
  *(v29 + v28 + 8) = 3;
  *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = v36;
  v31 = v46;

  v32 = swift_task_alloc();
  *(v0 + 528) = v32;
  *v32 = v0;
  v32[1] = sub_100078C6C;
  v33 = *(v0 + 160);

  return (sub_10005D2F4)(v33, v38, v37, &unk_1000F2688, v29);
}

uint64_t sub_100078C6C()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v9 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v4 = *(v2 + 400);
    v5 = sub_100078F20;
  }

  else
  {
    v6 = *(v2 + 520);
    v7 = *(v2 + 400);

    v5 = sub_100078D94;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100078D94()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[53];
  v13 = v0[54];
  v14 = v0[49];
  v15 = v0[46];
  v16 = v0[43];
  v17 = v0[42];
  v18 = v0[41];
  v4 = v0[37];
  v19 = v0[38];
  v20 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];
  v21 = v0[31];
  v22 = v0[27];

  sub_1000D6278(2);

  sub_1000033C8(v10, &unk_10011FA80, &qword_1000F2660);
  (*(v5 + 8))(v4, v6);

  (*(v8 + 8))(v7, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100078F20()
{
  v66 = v0;
  v1 = v0[67];
  v2 = v0[65];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[33];
  v9 = v0[22];

  v4(v7, v6, v8);

  swift_errorRetain();
  v10 = sub_1000E1EE8();
  v11 = sub_1000E2698();

  if (os_log_type_enabled(v10, v11))
  {
    v59 = v0[67];
    v12 = v0[36];
    v14 = v0[33];
    v13 = v0[34];
    v15 = v0[22];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_100029C70(*(v15 + 16), *(v15 + 24), v65);
    *(v16 + 12) = 2080;
    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
    v18 = sub_1000E2C18();
    v20 = v19;
    v63 = *(v13 + 8);
    v63(v12, v14);
    v21 = sub_100029C70(v18, v20, v65);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v22;
    *v17 = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Handoff][Push] Failed to add %s to %s due to %@.", v16, 0x20u);
    sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[36];
    v24 = v0[33];
    v25 = v0[34];

    v63 = *(v25 + 8);
    v63(v23, v24);
  }

  v26 = v0[64];
  swift_beginAccess();
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v0[37];
    v29 = *(v0[21] + v0[52]);
    v30 = v27;
    isa = sub_1000E0D18().super.isa;
    v32 = [v29 activeConversationWithUUID:isa];

    if (v32)
    {
      [*(v0[21] + v0[52]) kickMember:v30 conversation:v32];

      v30 = v32;
    }
  }

  v33 = v0[67];
  v34 = v0[63];
  v35 = v0[64];
  v36 = v0[37];
  v37 = v0[33];
  v38 = v0[34];
  v61 = v0[32];
  v40 = v0[29];
  v39 = v0[30];
  v41 = v0[28];
  swift_willThrow();

  sub_1000D6278(2);

  sub_1000033C8(v41, &unk_10011FA80, &qword_1000F2660);
  v63(v36, v37);
  (*(v39 + 8))(v61, v40);
  v64 = v0[67];
  v43 = v0[53];
  v42 = v0[54];
  v44 = v0[23];
  v45 = *(v0[21] + v0[52]);
  v46 = sub_1000E0D18().super.isa;
  [v45 leaveConversationWithUUID:v46];

  swift_willThrow();
  v47 = v0[49];
  v48 = v0[46];
  v50 = v0[42];
  v49 = v0[43];
  v51 = v0[41];
  v53 = v0[37];
  v52 = v0[38];
  v54 = v0[36];
  v55 = v0[31];
  v56 = v0[32];
  v60 = v0[28];
  v62 = v0[27];

  v57 = v0[1];

  return v57();
}

uint64_t sub_1000793DC()
{
  v20 = v0[62];
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[23];
  v4 = *(v0[21] + v0[52]);
  isa = sub_1000E0D18().super.isa;
  [v4 leaveConversationWithUUID:isa];

  swift_willThrow();
  v6 = v0[49];
  v7 = v0[46];
  v9 = v0[42];
  v8 = v0[43];
  v10 = v0[41];
  v12 = v0[37];
  v11 = v0[38];
  v13 = v0[36];
  v14 = v0[31];
  v15 = v0[32];
  v18 = v0[28];
  v19 = v0[27];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10007952C(id *a1)
{
  v2 = sub_1000E0D68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  sub_1000E0D38();

  v8 = sub_1000E0D28();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_100079638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v4 = sub_1000E0D68();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v6 = sub_10000ADE4(&qword_10011FBE0, &qword_1000F2850);
  v3[10] = v6;
  v7 = *(v6 - 8);
  v3[11] = v7;
  v8 = *(v7 + 64) + 15;
  v3[12] = swift_task_alloc();
  v9 = sub_10000ADE4(&qword_10011FBE8, &qword_1000F2858);
  v3[13] = v9;
  v10 = *(v9 - 8);
  v3[14] = v10;
  v11 = *(v10 + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000797D0, 0, 0);
}

uint64_t sub_1000797D0()
{
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230F0;
  *(v0 + 128) = qword_1001230F0;

  return _swift_task_switch(sub_100079868, v1, 0);
}

uint64_t sub_100079868()
{
  v0[2] = *(*(v0[4] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_10000ADE4(&unk_100120850, &qword_1000F2488);
  sub_100002C64(&qword_10011F9A0, &unk_100120850, &qword_1000F2488);
  v0[17] = sub_1000E2028();

  return _swift_task_switch(sub_10007994C, 0, 0);
}

uint64_t sub_10007994C()
{
  v14 = v0[14];
  v15 = v0[16];
  v1 = v0[12];
  v13 = v0[13];
  v11 = v0[15];
  v12 = v0[11];
  v9 = v0[8];
  v10 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v7 = v0[5];
  v8 = v0[9];
  v0[3] = v0[17];
  sub_10000ADE4(&qword_10011F9A8, &qword_1000F2490);
  sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  sub_100002C64(&qword_10011F9B0, &qword_10011F9A8, &qword_1000F2490);
  sub_1000E2038();

  (*(v2 + 16))(v8, v7, v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  (*(v2 + 32))(v5 + v4, v8, v3);
  sub_100002C64(&qword_10011FBF0, &qword_10011FBE0, &qword_1000F2850);
  sub_1000E2078();

  (*(v12 + 8))(v1, v10);
  sub_100002C64(&qword_10011FBF8, &qword_10011FBE8, &qword_1000F2858);
  v0[18] = sub_1000E2028();
  (*(v14 + 8))(v11, v13);

  return _swift_task_switch(sub_100079BE8, v15, 0);
}

uint64_t sub_100079BE8()
{
  v1 = *(v0[4] + OBJC_IVAR___CSDNeighborhoodActivityConduit_publisherService);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_100079CA0;
  v3 = v0[18];

  return sub_10009F290(v3);
}

uint64_t sub_100079CA0(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  v7 = *(v4 + 128);
  if (v1)
  {
    v8 = sub_100079E68;
  }

  else
  {

    v8 = sub_100079DD8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100079DD8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100079E68()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];
  v6 = v0[20];

  return v5();
}

uint64_t sub_100079EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000E15C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000E1C28())
  {
    sub_1000E1C08();
  }

  sub_1000E0F38();
  (*(v5 + 104))(v8, enum case for NCProtoConversationAVMode.video(_:), v4);
  sub_1000A75DC(&qword_10011FBD0, 255, &type metadata accessor for NCProtoConversationAVMode);
  sub_1000E2438();
  sub_1000E2438();
  (*(v5 + 8))(v8, v4);
  if (v10[3] == v10[1] && (sub_1000E1C38() & 1) != 0)
  {
    sub_1000E1C18();
  }

  sub_1000E0F58();
  (*(v5 + 16))(v8, a3, v4);
  return sub_1000E0FC8();
}

uint64_t sub_10007A0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1000E1AA8();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  v4[18] = qword_1001230F0;

  return _swift_task_switch(sub_10007A204, v8, 0);
}

uint64_t sub_10007A204()
{
  v24 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v6 = sub_1000E1F08();
  v0[19] = sub_1000049D0(v6, qword_100123128);
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v2);

  v8 = sub_1000E1EE8();
  v9 = sub_1000E2698();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[17];
  v13 = v0[14];
  v12 = v0[15];
  if (v10)
  {
    v22 = v0[12];
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = sub_1000E1A98();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_100029C70(v15, v17, &v23);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_100029C70(*(v22 + 16), *(v22 + 24), &v23);
    _os_log_impl(&_mh_execute_header, v8, v9, "[DeclineCall] Received decline continuity call request for %s from %s.", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  v0[22] = v18;
  v20 = *(v0[13] + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  v0[23] = v20;

  return _swift_task_switch(sub_10007A46C, v20, 0);
}