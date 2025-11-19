uint64_t sub_10007A46C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  sub_1000BA9C4(*(v0 + 96), (v0 + 16));

  return _swift_task_switch(sub_10007A4E0, v2, 0);
}

uint64_t sub_10007A4E0()
{
  v20 = v0;
  if (v0[3])
  {
    v1 = v0[18];
    v2 = v0[13];
    v3 = v0[11];
    sub_1000033C8((v0 + 2), &unk_10011FA58, &unk_1000F25E0);
    sub_1000A75DC(&qword_100120020, v4, type metadata accessor for ConduitActor);
    v5 = swift_task_alloc();
    v0[24] = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
    v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v7 = swift_task_alloc();
    v0[25] = v7;
    *v7 = v0;
    v7[1] = sub_10007A77C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v8 = v0[19];
    v9 = v0[12];

    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[12];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100029C70(*(v12 + 16), *(v12 + 24), &v19);
      _os_log_impl(&_mh_execute_header, v10, v11, "[DeclineCall] Rejecting request because no session exists for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v16 = v0[16];
    v15 = v0[17];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_10007A77C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_10007AA6C;
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 144);

    v5 = sub_10007A8A4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10007A8A4()
{
  v23 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  (*(v0 + 160))(*(v0 + 128), *(v0 + 88), *(v0 + 112));
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 176);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 112);
  if (v5)
  {
    v21 = v4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    v12 = sub_1000E1A98();
    v14 = v13;
    v6(v7, v9);
    v15 = sub_100029C70(v12, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v21, "[DeclineCall] Successfully declined call (%s).", v10, 0xCu);
    sub_10000E9DC(v11);
  }

  else
  {

    v6(v7, v9);
  }

  v16 = *(v0 + 128);
  v17 = *(v0 + 136);
  v18 = *(v0 + 80);
  sub_1000E1BC8();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10007AA6C()
{
  v1 = v0[24];

  v2 = v0[26];
  v4 = v0[16];
  v3 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10007AAE0(uint64_t a1, char *a2, uint64_t a3)
{
  v28 = a3;
  v29 = a1;
  v33 = sub_1000E2118();
  v36 = *(v33 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v33);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E2148();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = sub_1000E1AA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [*&a2[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] queue];
  (*(v15 + 16))(v17, v28, v14);
  (*(v10 + 16))(v13, v29, v9);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v16 + *(v10 + 80) + v18) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  (*(v15 + 32))(v20 + v18, v17, v14);
  (*(v10 + 32))(v20 + v19, v13, v9);
  aBlock[4] = sub_1000AAAA0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115098;
  v21 = _Block_copy(aBlock);
  v22 = a2;
  v23 = v31;
  sub_1000E2138();
  v37 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  v25 = v32;
  v24 = v33;
  sub_1000E28C8();
  v26 = v30;
  sub_1000E2738();
  _Block_release(v21);

  (*(v36 + 8))(v25, v24);
  (*(v34 + 8))(v23, v35);
}

void sub_10007AF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000E1AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter);
  sub_1000E1A98();
  v10 = sub_1000E2328();

  v21 = [v9 callWithCallUUID:v10];

  if (v21)
  {
    [v9 disconnectCall:v21 withReason:2];
    sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
    sub_1000E24D8();
    v11 = v21;
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v12 = sub_1000E1F08();
    sub_1000049D0(v12, qword_100123128);
    (*(v5 + 16))(v8, a2, v4);
    v13 = sub_1000E1EE8();
    v14 = sub_1000E2678();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v17 = sub_1000E1A98();
      v19 = v18;
      (*(v5 + 8))(v8, v4);
      v20 = sub_100029C70(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "[DeclineCall] Rejecting decline continuity call request because we can't find the requested call: %s.", v15, 0xCu);
      sub_10000E9DC(v16);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v22 = TUMakeNeighborhoodConduitError();
    sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
    sub_1000E24C8();
  }
}

uint64_t sub_10007B2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1000E1338();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v7 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  v4[12] = qword_1001230F0;

  return _swift_task_switch(sub_10007B3EC, v8, 0);
}

uint64_t sub_10007B3EC()
{
  v1 = v0[11];
  v2 = v0[10];
  v21 = v2;
  v22 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v23 = v0[6];
  v24 = v0[12];
  v25 = v0[5];
  v5 = v0[4];
  v6 = sub_10000ADE4(&qword_10011FC40, &qword_1000F2928);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1000E1FD8();
  v0[13] = v9;
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  (*(v3 + 16))(v2, v5, v4);
  v12 = sub_1000A75DC(&qword_100120020, v11, type metadata accessor for ConduitActor);
  v13 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v24;
  *(v14 + 3) = v12;
  *(v14 + 4) = v23;
  *(v14 + 5) = v9;
  (*(v3 + 32))(&v14[v13], v21, v4);
  *&v14[(v22 + v13 + 7) & 0xFFFFFFFFFFFFFFF8] = v25;
  v15 = v23;

  sub_100022960(0, 0, v1, &unk_1000F2938, v14);

  v0[2] = v9;
  sub_100002C64(&qword_10011FC48, &qword_10011FC40, &qword_1000F2928);
  v16 = sub_1000E2028();
  v0[14] = v16;
  v17 = swift_task_alloc();
  v0[15] = v17;
  *v17 = v0;
  v17[1] = sub_10007B6A8;
  v18 = v0[6];
  v19 = v0[3];

  return sub_10007107C(v19, v16);
}

uint64_t sub_10007B6A8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = sub_10007B848;
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 96);

    v5 = sub_10007B7D0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10007B7D0()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10007B848()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_10007B8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v8 = type metadata accessor for HandoffState(0);
  v7[19] = v8;
  v9 = *(v8 - 8);
  v7[20] = v9;
  v10 = *(v9 + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v11 = type metadata accessor for HandoffInfo(0);
  v7[23] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v13 = sub_1000E1338();
  v7[25] = v13;
  v14 = *(v13 - 8);
  v7[26] = v14;
  v7[27] = *(v14 + 64);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v15 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v7[32] = swift_task_alloc();
  v16 = *(*(sub_10000ADE4(&qword_10011F888, &qword_1000F22B0) - 8) + 64) + 15;
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v17 = qword_1001230F0;
  v7[37] = qword_1001230F0;

  return _swift_task_switch(sub_10007BB24, v17, 0);
}

uint64_t sub_10007BB24()
{
  v97 = v0;
  v1 = v0[36];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[15];
  v5 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  v0[38] = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v4 + v5, v1, &qword_10011F888, &qword_1000F22B0);
  v6 = *(v3 + 48);
  LODWORD(v2) = v6(v1, 1, v2);
  sub_1000033C8(v1, &qword_10011F888, &qword_1000F22B0);
  if (v2 == 1)
  {
    buf = v5;
    v93 = v4;
    v7 = v0[37];
    v9 = v0[31];
    v8 = v0[32];
    v11 = v0[26];
    v10 = v0[27];
    v12 = v0[25];
    v13 = v0[17];
    v85 = v0[18];
    v84 = v0[16];
    v82 = v9;
    v83 = v0[15];
    v14 = sub_1000E2538();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v15 = *(v11 + 16);
    v0[39] = v15;
    v0[40] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v88 = v15;
    v15(v9, v13, v12);
    v17 = sub_1000A75DC(&qword_100120020, v16, type metadata accessor for ConduitActor);
    v18 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 2) = v7;
    *(v20 + 3) = v17;
    *(v20 + 4) = v83;
    (*(v11 + 32))(&v20[v18], v82, v12);
    *&v20[v19] = v85;
    *&v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8] = v84;
    v21 = v83;

    v22 = sub_100022678(0, 0, v8, &unk_1000F2988, v20);
    v0[41] = v22;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v23 = v0[30];
    v24 = v0[25];
    v25 = v0[17];
    v26 = sub_1000E1F08();
    v0[42] = sub_1000049D0(v26, qword_100123128);
    v88(v23, v25, v24);
    v27 = sub_1000E1EE8();
    v28 = sub_1000E2698();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[30];
    v31 = v0[25];
    v32 = v0[26];
    if (v29)
    {
      v33 = swift_slowAlloc();
      v89 = v22;
      v34 = swift_slowAlloc();
      v96 = v34;
      *v33 = 136315138;
      v86 = sub_1000E12E8();
      v36 = v35;
      v37 = *(v32 + 8);
      v37(v30, v31);
      v38 = sub_100029C70(v86, v36, &v96);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "[Handoff][PullExpanse] Initiating task for pulling %s.", v33, 0xCu);
      sub_10000E9DC(v34);
      v22 = v89;
    }

    else
    {

      v37 = *(v32 + 8);
      v37(v30, v31);
    }

    v0[43] = v37;
    v53 = v0[35];
    v55 = v0[19];
    v54 = v0[20];
    v56 = v0[15];
    *v53 = v22;
    swift_storeEnumTagMultiPayload();
    v57 = *(v54 + 56);
    v0[44] = v57;
    v0[45] = (v54 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v57(v53, 0, 1, v55);
    swift_beginAccess();

    sub_1000A884C(v53, &buf[v93]);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v53, &qword_10011F888, &qword_1000F22B0);
    v58 = async function pointer to Task.value.getter[1];
    v59 = swift_task_alloc();
    v0[46] = v59;
    v60 = sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    *v59 = v0;
    v59[1] = sub_10007C368;
    v62 = v0[23];
    v61 = v0[24];

    return Task.value.getter(v61, v22, v62, v60, &protocol self-conformance witness table for Error);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v39 = v0[15];
    v40 = sub_1000E1F08();
    sub_1000049D0(v40, qword_100123128);
    v41 = v39;
    v42 = sub_1000E1EE8();
    v43 = sub_1000E2698();

    if (os_log_type_enabled(v42, v43))
    {
      v94 = v43;
      v44 = v4;
      v45 = v5;
      v47 = v0[33];
      v46 = v0[34];
      v87 = v0[19];
      v48 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v96 = v90;
      *v48 = 136315138;
      sub_10000CB64(v44 + v45, v46, &qword_10011F888, &qword_1000F22B0);
      sub_10000CB64(v46, v47, &qword_10011F888, &qword_1000F22B0);
      v49 = v6(v47, 1, v87);
      v50 = v0[33];
      if (v49 == 1)
      {
        sub_1000033C8(v50, &qword_10011F888, &qword_1000F22B0);
        v51 = 0xE300000000000000;
        v52 = 7104878;
      }

      else
      {
        v63 = v0[21];
        v64 = v0[22];
        v65 = v0[19];
        sub_1000A877C(v50, v64, type metadata accessor for HandoffState);
        sub_1000A87E4(v64, v63, type metadata accessor for HandoffState);
        v52 = sub_1000E2368();
        v51 = v66;
        sub_1000AD5EC(v64, type metadata accessor for HandoffState);
      }

      sub_1000033C8(v0[34], &qword_10011F888, &qword_1000F22B0);
      v67 = sub_100029C70(v52, v51, &v96);

      *(v48 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v42, v94, "[Handoff][PullExpanse] Rejecting pull because we're already in a session: %s)", v48, 0xCu);
      sub_10000E9DC(v90);
    }

    v68 = v0[16];
    v69 = TUMakeNeighborhoodConduitError();
    v0[14] = v69;
    sub_1000E1FB8();

    v71 = v0[35];
    v70 = v0[36];
    v73 = v0[33];
    v72 = v0[34];
    v75 = v0[31];
    v74 = v0[32];
    v77 = v0[29];
    v76 = v0[30];
    v78 = v0[28];
    v79 = v0[24];
    bufa = v0[22];
    v95 = v0[21];

    v80 = v0[1];

    return v80();
  }
}

uint64_t sub_10007C368()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 296);
  if (v0)
  {
    v6 = sub_10007C7C0;
  }

  else
  {
    v6 = sub_10007C494;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10007C494()
{
  v46 = v0;
  v2 = v0[44];
  v1 = v0[45];
  v39 = v0[40];
  v42 = v0[42];
  v37 = v0[39];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[19];
  v8 = v0[17];
  v9 = v0[15];
  sub_1000A87E4(v0[24], v4, type metadata accessor for HandoffInfo);
  swift_storeEnumTagMultiPayload();
  v2(v4, 0, 1, v7);
  swift_beginAccess();
  sub_1000A884C(v4, v9 + v3);
  swift_endAccess();
  sub_100061F64();
  sub_1000033C8(v4, &qword_10011F888, &qword_1000F22B0);
  v37(v5, v8, v6);
  v10 = sub_1000E1EE8();
  v11 = sub_1000E2698();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[43];
  v14 = v0[29];
  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[24];
  if (v12)
  {
    v43 = v0[41];
    v18 = swift_slowAlloc();
    v38 = v13;
    v19 = swift_slowAlloc();
    v45 = v19;
    *v18 = 136315138;
    v20 = sub_1000E12E8();
    v40 = v17;
    v22 = v21;
    v38(v14, v16);
    v23 = sub_100029C70(v20, v22, &v45);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Handoff][PullExpanse] Successfully pulled %s.", v18, 0xCu);
    sub_10000E9DC(v19);

    v24 = v40;
  }

  else
  {

    v13(v14, v16);
    v24 = v17;
  }

  sub_1000AD5EC(v24, type metadata accessor for HandoffInfo);
  v26 = v0[35];
  v25 = v0[36];
  v28 = v0[33];
  v27 = v0[34];
  v30 = v0[31];
  v29 = v0[32];
  v32 = v0[29];
  v31 = v0[30];
  v33 = v0[28];
  v34 = v0[24];
  v41 = v0[22];
  v44 = v0[21];

  v35 = v0[1];

  return v35();
}

uint64_t sub_10007C7C0()
{
  v48 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 136);

  v5(v6, v8, v7);
  swift_errorRetain();
  v9 = sub_1000E1EE8();
  v10 = sub_1000E2678();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 376);
    v12 = *(v0 + 224);
    v42 = *(v0 + 208);
    v43 = *(v0 + 200);
    v45 = *(v0 + 344);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v47 = v15;
    *v13 = 136315394;
    v16 = sub_1000E12E8();
    v18 = v17;
    v45(v12, v43);
    v19 = sub_100029C70(v16, v18, &v47);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "[Handoff][PullExpanse] Failed to pull %s due to %@.", v13, 0x16u);
    sub_1000033C8(v14, &unk_10011EAC0, &unk_1000F0E60);

    sub_10000E9DC(v15);
  }

  else
  {
    v21 = *(v0 + 344);
    v22 = *(v0 + 224);
    v23 = *(v0 + 200);
    v24 = *(v0 + 208);

    v21(v22, v23);
  }

  v25 = *(v0 + 376);
  v26 = *(v0 + 360);
  v27 = *(v0 + 304);
  v28 = *(v0 + 280);
  v29 = *(v0 + 120);
  (*(v0 + 352))(v28, 1, 1, *(v0 + 152));
  swift_beginAccess();
  sub_1000A884C(v28, v29 + v27);
  swift_endAccess();
  sub_100061F64();

  sub_1000033C8(v28, &qword_10011F888, &qword_1000F22B0);
  v31 = *(v0 + 280);
  v30 = *(v0 + 288);
  v33 = *(v0 + 264);
  v32 = *(v0 + 272);
  v35 = *(v0 + 248);
  v34 = *(v0 + 256);
  v37 = *(v0 + 232);
  v36 = *(v0 + 240);
  v38 = *(v0 + 224);
  v39 = *(v0 + 192);
  v44 = *(v0 + 176);
  v46 = *(v0 + 168);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10007CAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  *(v11 + 16) = v13;
  *v13 = v11;
  v13[1] = sub_100002D64;

  return sub_10007CBE4(a1, a5, a6, a7);
}

uint64_t sub_10007CBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = *(*(sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v7 = sub_1000E0D68();
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v9 = *(v8 + 64) + 15;
  v5[14] = swift_task_alloc();
  v10 = sub_1000E1338();
  v5[15] = v10;
  v11 = *(v10 - 8);
  v5[16] = v11;
  v5[17] = *(v11 + 64);
  v5[18] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v12 = qword_1001230F0;
  v5[19] = qword_1001230F0;

  return _swift_task_switch(sub_10007CD80, v12, 0);
}

uint64_t sub_10007CD80()
{
  v1 = swift_allocObject();
  v0[20] = v1;
  *(v1 + 16) = 0;
  if (qword_10011DCA8 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v19 = v3;
  v20 = v0[10];
  v21 = v0[9];
  v6 = v0[7];
  v18 = v0[8];
  v7 = sub_1000E2DA8();
  v22 = v8;
  v23 = v7;
  (*(v4 + 16))(v3, v6, v5);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[21] = v13;
  (*(v4 + 32))(v13 + v9, v19, v5);
  *(v13 + v10) = v20;
  *(v13 + v11) = v18;
  *(v13 + v12) = v1;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v14 = v20;

  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  v15[1] = sub_10007CFA4;
  v16 = v0[6];

  return sub_10005D2F4(v16, v23, v22, &unk_1000F29A0, v13);
}

uint64_t sub_10007CFA4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_10007D15C;
  }

  else
  {
    v6 = *(v2 + 168);
    v7 = *(v2 + 152);

    v5 = sub_10007D0CC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10007D0CC()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10007D15C()
{
  v1 = v0[21];

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_1000E1F08();
  sub_1000049D0(v3, qword_100123128);
  swift_errorRetain();
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "[Handoff][PullExpanse] Pull failed with error %@.", v7, 0xCu);
    sub_1000033C8(v8, &unk_10011EAC0, &unk_1000F0E60);
  }

  v10 = v0[20];

  swift_beginAccess();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v0[12];
    v13 = v0[13];
    v14 = v0[11];
    v15 = v0[7];
    v16 = v11;
    sub_1000E12E8();
    sub_1000E0CF8();

    if ((*(v13 + 48))(v14, 1, v12) == 1)
    {
      v17 = v0[11];

      sub_1000033C8(v17, &unk_10011F0C0, &qword_1000F1670);
    }

    else
    {
      v18 = v0[10];
      (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
      v19 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
      v20 = *(v18 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
      isa = sub_1000E0D18().super.isa;
      v22 = [v20 activeConversationWithUUID:isa];

      v24 = v0[13];
      v23 = v0[14];
      v25 = v0[12];
      if (v22)
      {
        v26 = *(v18 + v19);
        [v26 kickMember:v16 conversation:v22];

        (*(v24 + 8))(v23, v25);
      }

      else
      {
        (*(v24 + 8))(v0[14], v0[12]);
      }
    }
  }

  v27 = v0[20];
  v28 = v0[18];
  v29 = v0[14];
  v30 = v0[11];
  v31 = v0[9];
  v0[5] = v0[23];
  swift_errorRetain();
  sub_1000E1FB8();

  swift_willThrow();

  v32 = v0[1];
  v33 = v0[23];

  return v32();
}

uint64_t sub_10007D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v5[5] = qword_1001230F0;

  return _swift_task_switch(sub_10007D55C, v6, 0);
}

uint64_t sub_10007D55C()
{
  v1 = *(*(v0[3] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_1000E1FF8();
  v2 = v0[2];
  v0[6] = v2;
  if (v2)
  {
    if (qword_10011DC18 != -1)
    {
      swift_once();
    }

    v3 = qword_1001230E0;

    return _swift_task_switch(sub_10007D650, v3, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10007D650()
{
  v2 = v0[4];
  v1 = v0[5];
  v0[7] = sub_100012CD8();

  return _swift_task_switch(sub_10007D6BC, v1, 0);
}

uint64_t sub_10007D6BC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  v4 = v2;
  LOBYTE(v2) = sub_10006EE20(v1, v2);

  v5 = v0[6];
  if (v2)
  {
    v6 = v0[4];
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_10007D7D0;
    v10 = v0[3];

    return sub_10006F004(v7, v8, v5);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_10007D7D0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10007D8E0, v2, 0);
}

uint64_t sub_10007D8E0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10007D940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;

  return _swift_task_switch(sub_10007D9D8, v5, 0);
}

uint64_t sub_10007D9D8()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Cancelling suggestion due to cancel add member event.", v4, 2u);
  }

  v5 = *(v0 + 16);

  *(v0 + 24) = *(v5 + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230D0;

  return _swift_task_switch(sub_10007DB3C, v6, 0);
}

uint64_t sub_10007DB3C()
{
  v1 = *(v0 + 24);
  sub_100031750(4);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007DBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;

  return _swift_task_switch(sub_10007DC38, v5, 0);
}

uint64_t sub_10007DC38()
{
  v1 = *(v0 + 16);
  sub_1000A7CE4(0, v1, v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10007DCB0(uint64_t a1, void *a2)
{
  v56 = a2;
  v3 = type metadata accessor for HandoffState(0);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  v5 = __chkstk_darwin(v3);
  v50 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = &v50 - v7;
  v8 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v53 = &v50 - v13;
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  v23 = type metadata accessor for HandoffInfo(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v50 - v29;
  sub_10000CB64(a1, v22, &qword_10011F8B8, &qword_1000F22D8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v31 = v56;
    sub_1000033C8(v22, &qword_10011F8B8, &qword_1000F22D8);
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v32 = sub_1000E1F08();
    sub_1000049D0(v32, qword_100123128);
    v33 = v31;
    v34 = sub_1000E1EE8();
    v35 = sub_1000E2698();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57 = v37;
      *v36 = 136315138;
      v38 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
      swift_beginAccess();
      v39 = v33 + v38;
      v40 = v53;
      sub_10000CB64(v39, v53, &qword_10011F888, &qword_1000F22B0);
      v41 = v52;
      sub_10000CB64(v40, v52, &qword_10011F888, &qword_1000F22B0);
      if ((*(v54 + 48))(v41, 1, v55) == 1)
      {
        sub_1000033C8(v41, &qword_10011F888, &qword_1000F22B0);
        v42 = 0xE300000000000000;
        v43 = 7104878;
      }

      else
      {
        v47 = v51;
        sub_1000A877C(v41, v51, type metadata accessor for HandoffState);
        sub_1000A87E4(v47, v50, type metadata accessor for HandoffState);
        v43 = sub_1000E2368();
        v42 = v48;
        sub_1000AD5EC(v47, type metadata accessor for HandoffState);
      }

      sub_1000033C8(v40, &qword_10011F888, &qword_1000F22B0);
      v49 = sub_100029C70(v43, v42, &v57);

      *(v36 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v34, v35, "Skipping contact push because we're not handed off: %s)", v36, 0xCu);
      sub_10000E9DC(v37);
    }
  }

  else
  {
    sub_1000A877C(v22, v30, type metadata accessor for HandoffInfo);
    v44 = v56;
    sub_10007E37C(v30, v20);
    (*(v24 + 56))(v20, 0, 1, v23);
    sub_1000A877C(v20, v28, type metadata accessor for HandoffInfo);
    sub_1000A87E4(v28, v15, type metadata accessor for HandoffInfo);
    v45 = v55;
    swift_storeEnumTagMultiPayload();
    (*(v54 + 56))(v15, 0, 1, v45);
    v46 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
    swift_beginAccess();
    sub_1000A884C(v15, v44 + v46);
    swift_endAccess();
    sub_100061F64();
    sub_1000033C8(v15, &qword_10011F888, &qword_1000F22B0);
    sub_1000AD5EC(v28, type metadata accessor for HandoffInfo);
    sub_1000AD5EC(v30, type metadata accessor for HandoffInfo);
  }
}

void sub_10007E37C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v4 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v83 - v9;
  v11 = type metadata accessor for HandoffInfo(0);
  v86 = *(v11 - 8);
  v12 = *(v86 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v83 - v17;
  v83[1] = v19;
  __chkstk_darwin(v16);
  v85 = v83 - v20;
  v21 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v88 = v83 - v23;
  v84 = v2;
  v24 = *&v2[OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager];
  v25 = *(v11 + 24);
  v26 = v24;
  isa = sub_1000E0D18().super.isa;
  v28 = [v26 activeConversationWithUUID:isa];

  if (v28)
  {
    v29 = sub_10007ED90();
    v30 = sub_10007EF08(*&a1[*(v11 + 40)], v29);
    v31 = v30;
    v32 = v11;
    v33 = v28;
    if ((v30 & 0xC000000000000001) != 0)
    {
      v34 = sub_1000E2968();
      v35 = v89;
      if (v34)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v35 = v89;
      if (*(v30 + 16))
      {
LABEL_4:
        v36 = v35;
        sub_1000CFEF8(v31);
        v38 = sub_1000D4CDC(v37);

        v39 = sub_1000206F8(v38, 1, 0, 0);

        if (v39)
        {
          v83[0] = v32;
          if (qword_10011DC60 != -1)
          {
            swift_once();
          }

          v40 = sub_1000E1F08();
          sub_1000049D0(v40, qword_100123128);

          v41 = sub_1000E1EE8();
          v42 = sub_1000E2698();
          v43 = os_log_type_enabled(v41, v42);
          v44 = v85;
          v89 = v36;
          if (v43)
          {
            v45 = swift_slowAlloc();
            *v45 = 134217984;
            *(v45 + 4) = *(v39 + 16);

            _os_log_impl(&_mh_execute_header, v41, v42, "Pushing %ld new contacts.", v45, 0xCu);
          }

          else
          {
          }

          v68 = sub_1000E2538();
          (*(*(v68 - 8) + 56))(v88, 1, 1, v68);
          sub_1000A87E4(a1, v44, type metadata accessor for HandoffInfo);
          v69 = qword_10011DC30;
          v70 = v84;
          v72 = v33;
          v84 = a1;
          v73 = v44;
          if (v69 != -1)
          {
            swift_once();
          }

          v74 = qword_1001230F0;
          v75 = sub_1000A75DC(&qword_100120020, v71, type metadata accessor for ConduitActor);
          v76 = (*(v86 + 80) + 56) & ~*(v86 + 80);
          v77 = swift_allocObject();
          v77[2] = v74;
          v77[3] = v75;
          v77[4] = v70;
          v77[5] = v39;
          v77[6] = v72;
          sub_1000A877C(v73, v77 + v76, type metadata accessor for HandoffInfo);

          sub_1000223DC(0, 0, v88, &unk_1000F2390, v77);

          v78 = v87;
          sub_1000A87E4(v84, v87, type metadata accessor for HandoffInfo);
          v79 = v78 + *(v83[0] + 40);
          sub_10001E388(v31);
        }

        else
        {

          if (qword_10011DC60 != -1)
          {
            swift_once();
          }

          v63 = sub_1000E1F08();
          sub_1000049D0(v63, qword_100123128);
          v64 = sub_1000E1EE8();
          v65 = sub_1000E2698();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            *v66 = 0;
            _os_log_impl(&_mh_execute_header, v64, v65, "Skipping contact push because we don't have contact data for the new handles.", v66, 2u);
          }

          sub_1000A88BC();
          swift_allocError();
          *v67 = 1;
          swift_willThrow();
        }

        return;
      }
    }

    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v59 = sub_1000E1F08();
    sub_1000049D0(v59, qword_100123128);
    v60 = sub_1000E1EE8();
    v61 = sub_1000E2698();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Skipping contact push because there are no new handles in the conversation.", v62, 2u);
    }

    sub_1000A87E4(a1, v87, type metadata accessor for HandoffInfo);
  }

  else
  {
    v88 = v18;
    v89 = v10;
    v83[0] = v11;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v46 = sub_1000E1F08();
    sub_1000049D0(v46, qword_100123128);
    v47 = v88;
    sub_1000A87E4(a1, v88, type metadata accessor for HandoffInfo);
    v48 = sub_1000E1EE8();
    v49 = sub_1000E2698();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v89;
    if (v50)
    {
      v52 = v15;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v90 = v54;
      *v53 = 136315138;
      sub_1000A87E4(v47, v51, type metadata accessor for HandoffInfo);
      v55 = v86;
      v56 = v83[0];
      (*(v86 + 56))(v51, 0, 1, v83[0]);
      sub_10000CB64(v51, v8, &qword_10011F8B8, &qword_1000F22D8);
      if ((*(v55 + 48))(v8, 1, v56) == 1)
      {
        sub_1000033C8(v8, &qword_10011F8B8, &qword_1000F22D8);
        v57 = 0xE300000000000000;
        v58 = 7104878;
      }

      else
      {
        sub_1000A877C(v8, v52, type metadata accessor for HandoffInfo);
        sub_1000A87E4(v52, v85, type metadata accessor for HandoffInfo);
        v58 = sub_1000E2368();
        v57 = v80;
        sub_1000AD5EC(v52, type metadata accessor for HandoffInfo);
      }

      sub_1000033C8(v89, &qword_10011F8B8, &qword_1000F22D8);
      sub_1000AD5EC(v88, type metadata accessor for HandoffInfo);
      v81 = sub_100029C70(v58, v57, &v90);

      *(v53 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v48, v49, "Skipping contact push, no matching conversation for handoff info: %s)", v53, 0xCu);
      sub_10000E9DC(v54);
    }

    else
    {

      sub_1000AD5EC(v47, type metadata accessor for HandoffInfo);
    }

    sub_1000A88BC();
    swift_allocError();
    *v82 = 0;
    swift_willThrow();
  }
}

uint64_t sub_10007ED90()
{
  v1 = [v0 remoteMembers];
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
  v2 = sub_1000E25E8();

  v3 = sub_10001DBD4(v2);

  v4 = [v0 localMember];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 handle];
    sub_1000E2448();
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000E2488();
    }

    sub_1000E24A8();
  }

  v7 = sub_1000D4F64(v3);

  return v7;
}

void *sub_10007EF08(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000E2968();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1000A4758(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1000E2968() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1000E2968();
  v2 = sub_1000D30AC(v5, v6);
LABEL_10:

  return sub_1000A49DC(a1, v2);
}

uint64_t sub_10007EFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1000E0D68();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230F0;
  v7[9] = qword_1001230F0;

  return _swift_task_switch(sub_10007F0F8, v11, 0);
}

uint64_t sub_10007F0F8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = [*(v0 + 32) groupUUID];
  sub_1000E0D38();

  v5 = *(v2 + 8);
  v4 = *(v2 + 16);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_10007F1D0;
  v7 = *(v0 + 64);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);

  return sub_10007F3DC(v8, v7, v5, v4);
}

uint64_t sub_10007F1D0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *v1;
  v6[11] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[9];

    return _swift_task_switch(sub_10007F378, v7, 0);
  }

  else
  {
    v8 = v6[8];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_10007F378()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_10007F3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1000E1558();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v9 = qword_1001230F0;
  v5[10] = qword_1001230F0;

  return _swift_task_switch(sub_10007F4DC, v9, 0);
}

uint64_t sub_10007F4DC()
{
  v1 = v0[4].i64[1];
  v2 = v0[3].i64[1];
  v3 = v0[2].i64[1];
  v4 = *(v0[3].i64[0] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  *(swift_task_alloc() + 16) = vextq_s8(v0[1], v0[1], 8uLL);
  sub_1000A75DC(&qword_10011ED98, 255, &type metadata accessor for NCProtoContactUpdateEvent);
  sub_1000E0E38();

  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[5].i64[1] = qword_1001230E0;
  v5 = swift_task_alloc();
  v0[6].i64[0] = v5;
  *v5 = v0;
  v5[1] = sub_10007F66C;
  v6 = v0[4].i64[1];
  v7 = v0[2].i64[0];

  return sub_1000265E0(1, v6, v7, v3, 0);
}

uint64_t sub_10007F66C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_10007F814;
  }

  else
  {
    v4 = sub_10007F794;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10007F794()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10007F814()
{
  v1 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);

  return _swift_task_switch(sub_10007F88C, v1, 0);
}

uint64_t sub_10007F88C()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_10007F8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[0] = a3;
  v3 = sub_1000E21E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000E2248();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E2238();
  v15[1] = sub_1000E0D48();
  v15[2] = v13;
  sub_1000E2218();
  sub_1000E2228();
  sub_1000E21D8();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  sub_1000E1538();
  sub_1000A3F70(v15[0]);
  return sub_1000E1548();
}

uint64_t sub_10007FB1C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000E0D68();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v2[8] = qword_1001230F0;

  return _swift_task_switch(sub_10007FC14, v6, 0);
}

uint64_t sub_10007FC14()
{
  v1 = *(*(v0[4] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_1000E1FF8();
  v2 = v0[2];
  v0[9] = v2;
  if (v2)
  {
    v3 = v0[7];
    v4 = [v2 UUID];
    sub_1000E0D38();

    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_10007FE1C;
    v6 = v0[7];
    v7 = v0[3];
    v8 = v0[4];

    return sub_10005B2F8(v7, v6);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    sub_1000049D0(v10, qword_100123128);
    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "[Handoff][Push] Unable to push because no conversation available", v13, 2u);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v14 = v0[7];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10007FE1C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = v2[8];
  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v6 = sub_1000AE204;
  }

  else
  {
    v6 = sub_1000AE280;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10007FF98(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = sub_1000E0D68();
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  *(v3 + 64) = qword_1001230F0;

  return _swift_task_switch(sub_100080094, v7, 0);
}

uint64_t sub_100080094()
{
  v1 = *(*(*(v0 + 32) + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_1000E1FF8();
  v2 = *(v0 + 16);
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = *(v0 + 56);
    v4 = [v2 UUID];
    sub_1000E0D38();

    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_1000802A0;
    v6 = *(v0 + 56);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    v9 = *(v0 + 96);

    return sub_10005D678(v6, v7, v9);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v11 = sub_1000E1F08();
    sub_1000049D0(v11, qword_100123128);
    v12 = sub_1000E1EE8();
    v13 = sub_1000E2698();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[HandoffConversation] Unable to push because no conversation available", v14, 2u);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v15 = *(v0 + 56);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1000802A0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = v2[8];
  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v6 = sub_10008048C;
  }

  else
  {
    v6 = sub_10008041C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008041C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10008048C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000804F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 88) = a6;
  *(v8 + 96) = v19;
  *(v8 + 568) = a8;
  *(v8 + 567) = a7;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + 64) = a1;
  v9 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v10 = *(sub_10000ADE4(&unk_10011FA80, &qword_1000F2660) - 8);
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 + 64);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  v11 = sub_1000E0FE8();
  *(v8 + 144) = v11;
  v12 = *(v11 - 8);
  *(v8 + 152) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v14 = sub_1000E0D68();
  *(v8 + 192) = v14;
  v15 = *(v14 - 8);
  *(v8 + 200) = v15;
  *(v8 + 208) = *(v15 + 64);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230F0;
  *(v8 + 264) = qword_1001230F0;

  return _swift_task_switch(sub_10008077C, v16, 0);
}

uint64_t sub_10008077C()
{
  v60 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v0[34] = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v4 = *(v1 + v3);
  isa = sub_1000E0D18().super.isa;
  v6 = [v4 activeConversationWithUUID:isa];
  v0[35] = v6;

  if (v6)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v7 = v0[31];
    v8 = v0[24];
    v9 = v0[25];
    v10 = v0[10];
    v11 = sub_1000E1F08();
    v0[36] = sub_1000049D0(v11, qword_100123128);
    v12 = *(v9 + 16);
    v0[37] = v12;
    v0[38] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v7, v10, v8);
    v13 = sub_1000E1EE8();
    v14 = sub_1000E2698();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[31];
    v17 = v0[24];
    v18 = v0[25];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59[0] = v58;
      *v19 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v20 = sub_1000E2C18();
      v22 = v21;
      v23 = *(v18 + 8);
      v23(v16, v17);
      v24 = sub_100029C70(v20, v22, v59);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "[HandoffConversation] Looking up call state for conversation with uuid: %s", v19, 0xCu);
      sub_10000E9DC(v58);
    }

    else
    {

      v23 = *(v18 + 8);
      v23(v16, v17);
    }

    v0[39] = v23;
    if (qword_10011DC18 != -1)
    {
      swift_once();
    }

    v42 = qword_1001230E0;

    return _swift_task_switch(sub_100080CF8, v42, 0);
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v25 = v0[32];
    v26 = v0[24];
    v27 = v0[25];
    v28 = v0[10];
    v29 = sub_1000E1F08();
    sub_1000049D0(v29, qword_100123128);
    (*(v27 + 16))(v25, v28, v26);
    v30 = sub_1000E1EE8();
    v31 = sub_1000E2678();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[32];
    v34 = v0[24];
    v35 = v0[25];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v59[0] = v37;
      *v36 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v38 = sub_1000E2C18();
      v40 = v39;
      (*(v35 + 8))(v33, v34);
      v41 = sub_100029C70(v38, v40, v59);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "[HandoffConversation] Rejecting request because cannot find conversation with uuid: %s", v36, 0xCu);
      sub_10000E9DC(v37);
    }

    else
    {

      (*(v35 + 8))(v33, v34);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v44 = v0[31];
    v43 = v0[32];
    v46 = v0[29];
    v45 = v0[30];
    v48 = v0[27];
    v47 = v0[28];
    v50 = v0[22];
    v49 = v0[23];
    v51 = v0[20];
    v52 = v0[21];
    v55 = v0[17];
    v56 = v0[16];
    v57 = v0[13];

    v53 = v0[1];

    return v53();
  }
}

uint64_t sub_100080CF8()
{
  v1 = v0[33];
  v2 = v0[11];
  v0[40] = sub_100012CD8();

  return _swift_task_switch(sub_100080D68, v1, 0);
}

uint64_t sub_100080D68()
{
  v1 = v0[40];
  v2 = [v1 capabilities];
  v0[41] = v2;

  v3 = swift_task_alloc();
  v0[42] = v3;
  *v3 = v0;
  v3[1] = sub_100080E30;
  v4 = v0[35];
  v5 = v0[23];
  v6 = v0[9];

  return sub_100084150(v5, v4, v2);
}

uint64_t sub_100080E30()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v8 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 264);
    v5 = sub_100082D40;
  }

  else
  {
    v6 = *(v2 + 264);

    v5 = sub_100080F58;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100080F58()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 567);
  v6 = [*(v0 + 280) presentationContext];
  *(v0 + 352) = [v6 mode];

  v7 = *(v4 + 16);
  *(v0 + 360) = v7;
  *(v0 + 368) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v2, v3);
  if (v5 != 2)
  {
    v8 = *(v0 + 176);
    v9 = *(v0 + 567);
    sub_1000E0F38();
  }

  if (*(v0 + 568) != 2)
  {
    v10 = *(v0 + 176);
    sub_1000E0F58();
  }

  v11 = *(v0 + 288);
  *(v0 + 564) = 0;
  *(v0 + 566) = 0;
  v12 = sub_1000E1EE8();
  v13 = sub_1000E2698();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "[HandoffConversation] Preparing tuconversation handoff.", v14, 2u);
  }

  v15 = swift_task_alloc();
  *(v0 + 376) = v15;
  *v15 = v0;
  v15[1] = sub_100081110;
  v17 = *(v0 + 72);
  v16 = *(v0 + 80);

  return sub_10008470C(v16, 2, 0);
}

uint64_t sub_100081110()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = sub_1000837B0;
  }

  else
  {
    v6 = sub_10008123C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008123C()
{
  v1 = *(v0 + 288);
  *(v0 + 564) = 1;
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[HandoffConversation] Allowlisting device for remote display discovery and requesting connection.", v4, 2u);
  }

  v5 = *(v0 + 72);

  v6 = *(v5 + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  v7 = swift_task_alloc();
  *(v0 + 392) = v7;
  *v7 = v0;
  v7[1] = sub_100081364;
  v8 = *(v0 + 184);
  v9 = *(v0 + 88);

  return sub_1000BAB70(v9, v8);
}

uint64_t sub_100081364()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 264);
  if (v0)
  {
    v6 = sub_100083C80;
  }

  else
  {
    v6 = sub_100081490;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100081490()
{
  v1 = *(v0 + 288);
  *(v0 + 565) = 1;
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[HandoffConversation] Muting uplink and video before handing off.", v4, 2u);
  }

  v5 = *(v0 + 400);
  v6 = *(v0 + 280);
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);
  v9 = *(v0 + 168);
  v10 = *(v0 + 144);
  v11 = *(v0 + 72);

  sub_1000A75DC(&qword_10011FA98, 255, &type metadata accessor for NCProtoCallState);
  sub_1000E0E38();
  v12 = [v6 groupUUID];
  sub_1000E0D38();

  v14 = sub_1000A75DC(&qword_100120020, v13, type metadata accessor for ConduitActor);
  *(v0 + 408) = v14;
  v15 = swift_task_alloc();
  *(v0 + 416) = v15;
  v15[2] = v11;
  v15[3] = v8;
  v15[4] = v9;
  v16 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v17 = swift_task_alloc();
  *(v0 + 424) = v17;
  *v17 = v0;
  v17[1] = sub_1000816F8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v17, v7, v14, 0xD00000000000001DLL, 0x80000001000EBCE0, sub_1000AE228, v15, &type metadata for () + 8);
}

uint64_t sub_1000816F8()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v9 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = *(v2 + 264);
    v5 = sub_100081C80;
  }

  else
  {
    v6 = *(v2 + 416);
    v7 = *(v2 + 264);

    v5 = sub_100081820;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100081820()
{
  v64 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 312);
  v4 = *(v0 + 288);
  v5 = *(v0 + 240);
  v6 = *(v0 + 192);
  v7 = *(v0 + 184);
  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  *(v0 + 440) = (*(v0 + 200) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v5, v6);
  v12 = *(v11 + 8);
  *(v0 + 448) = v12;
  *(v0 + 456) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v10);
  *(v0 + 566) = 1;
  v2(v9, v7, v10);
  v13 = sub_1000E1EE8();
  v14 = sub_1000E2698();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 160);
  v17 = *(v0 + 144);
  if (v15)
  {
    v18 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v63 = v61;
    *v18 = 136315138;
    v19 = NCProtoCallState.description.getter();
    v21 = v20;
    v12(v16, v17);
    v22 = sub_100029C70(v19, v21, &v63);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "[HandoffConversation] Laguna connection established, pushing conversation with call state %s.", v18, 0xCu);
    sub_10000E9DC(v61);
  }

  else
  {

    v12(v16, v17);
  }

  v23 = *(v0 + 368);
  v24 = *(v0 + 144);
  v25 = *(v0 + 152);
  v26 = *(v0 + 136);
  (*(v0 + 360))(v26, *(v0 + 176), v24);
  (*(v25 + 56))(v26, 0, 1, v24);
  *(v0 + 464) = sub_1000D605C(2);
  v27 = swift_allocObject();
  *(v0 + 472) = v27;
  v62 = v27;
  *(v27 + 16) = 0;
  if (qword_10011DCA8 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 296);
  v28 = *(v0 + 304);
  v30 = *(v0 + 232);
  v31 = *(v0 + 200);
  v32 = *(v0 + 192);
  v54 = v32;
  v55 = v30;
  v33 = *(v0 + 128);
  v34 = *(v0 + 136);
  v35 = *(v0 + 112);
  v52 = *(v0 + 208);
  v53 = *(v0 + 120);
  v56 = *(v0 + 88);
  v36 = *(v0 + 80);
  v57 = *(v0 + 72);
  v58 = *(v0 + 96);
  v37 = sub_1000E2DA8();
  v59 = v38;
  v60 = v37;
  v29(v30, v36, v32);
  sub_10000CB64(v34, v33, &unk_10011FA80, &qword_1000F2660);
  v39 = *(v31 + 80);
  *(v0 + 560) = v39;
  v40 = (v39 + 16) & ~v39;
  v41 = (v52 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (*(v35 + 80) + v42 + 9) & ~*(v35 + 80);
  v44 = (v43 + v53) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v0 + 480) = v45;
  v46 = *(v31 + 32);
  *(v0 + 488) = v46;
  *(v0 + 496) = (v31 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v46(v45 + v40, v55, v54);
  *(v45 + v41) = v56;
  v47 = v45 + v42;
  *v47 = v57;
  *(v47 + 8) = 1;
  sub_1000AD400(v33, v45 + v43, &unk_10011FA80, &qword_1000F2660);
  *(v45 + v43 + v53) = 0;
  *(v45 + v44 + 8) = v58;
  *(v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8)) = v62;

  v48 = v57;

  v49 = swift_task_alloc();
  *(v0 + 504) = v49;
  *v49 = v0;
  v49[1] = sub_1000821A0;
  v50 = *(v0 + 64);

  return sub_10005D2F4(v50, v60, v59, &unk_1000F2A50, v45);
}

uint64_t sub_100081C80()
{
  v63 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 312);
  v3 = *(v0 + 240);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 200) + 8;

  v2(v3, v4);
  (*(v7 + 8))(v5, v6);
  *(v0 + 520) = *(v0 + 432);
  v9 = *(v0 + 288);
  v10 = sub_1000E1EE8();
  v11 = sub_1000E2678();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v62 = v13;
    *v12 = 136315138;
    swift_beginAccess();
    v14 = *(v0 + 564);
    v15 = *(v0 + 565);
    v16 = *(v0 + 566);
    if (*(v0 + 566))
    {
      v17 = 0x10000;
    }

    else
    {
      v17 = 0;
    }

    if (*(v0 + 565))
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_10009EE2C(v18 | v14 | v17);
    v21 = sub_100029C70(v19, v20, &v62);

    *(v12 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "[HandoffConversation] Rolling back for %s.", v12, 0xCu);
    sub_10000E9DC(v13);

    if (v16)
    {
      *(v0 + 570) = v14;
      *(v0 + 569) = v15;
      v22 = *(v0 + 264);
      v23 = *(v0 + 216);
      v24 = *(v0 + 184);
      v25 = *(v0 + 72);
      v26 = [*(v0 + 280) groupUUID];
      sub_1000E0D38();

      v28 = sub_1000A75DC(&qword_100120020, v27, type metadata accessor for ConduitActor);
      v29 = swift_task_alloc();
      *(v0 + 528) = v29;
      v29[2] = v25;
      v29[3] = v23;
      v29[4] = v24;
      v30 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v31 = swift_task_alloc();
      *(v0 + 536) = v31;
      *v31 = v0;
      v31[1] = sub_100082E58;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v31, v22, v28, 0xD00000000000001DLL, 0x80000001000EBCE0, sub_1000ACDA4, v29, &type metadata for () + 8);
    }

    if (!v15)
    {
      if (v14)
      {
        v35 = swift_task_alloc();
        *(v0 + 552) = v35;
        *v35 = v0;
        v35[1] = sub_10008352C;
        v36 = *(v0 + 352);
        v38 = *(v0 + 72);
        v37 = *(v0 + 80);

        return sub_10008470C(v37, v36, 0);
      }

      else
      {
        v39 = *(v0 + 520);
        v40 = *(v0 + 280);
        v41 = *(v0 + 176);
        v42 = *(v0 + 184);
        v43 = *(v0 + 144);
        v44 = *(v0 + 152);
        swift_willThrow();

        v45 = *(v44 + 8);
        v45(v41, v43);
        v45(v42, v43);
        v47 = *(v0 + 248);
        v46 = *(v0 + 256);
        v49 = *(v0 + 232);
        v48 = *(v0 + 240);
        v51 = *(v0 + 216);
        v50 = *(v0 + 224);
        v53 = *(v0 + 176);
        v52 = *(v0 + 184);
        v54 = *(v0 + 160);
        v55 = *(v0 + 168);
        v58 = *(v0 + 136);
        v59 = *(v0 + 128);
        v60 = *(v0 + 104);
        v61 = *(v0 + 520);

        v56 = *(v0 + 8);

        return v56();
      }
    }
  }

  else
  {

    LOBYTE(v14) = *(v0 + 384) == 0;
  }

  *(v0 + 571) = v14;
  v32 = *(*(v0 + 72) + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  v33 = swift_task_alloc();
  *(v0 + 544) = v33;
  *v33 = v0;
  v33[1] = sub_100083240;
  v34 = *(v0 + 88);

  return sub_1000BC98C(v34);
}

uint64_t sub_1000821A0()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v9 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = *(v2 + 264);
    v5 = sub_100082554;
  }

  else
  {
    v6 = *(v2 + 480);
    v7 = *(v2 + 264);

    v5 = sub_1000822C8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000822C8()
{
  v20 = *(v0 + 488);
  v21 = *(v0 + 496);
  v1 = *(v0 + 560);
  v3 = *(v0 + 464);
  v2 = *(v0 + 472);
  v26 = *(v0 + 448);
  v27 = *(v0 + 456);
  v18 = *(v0 + 304);
  v19 = *(v0 + 408);
  v17 = *(v0 + 296);
  v25 = *(v0 + 280);
  v4 = *(v0 + 264);
  v28 = *(v0 + 256);
  v29 = *(v0 + 248);
  v30 = *(v0 + 240);
  v5 = *(v0 + 232);
  v31 = *(v0 + 224);
  v32 = *(v0 + 216);
  v16 = *(v0 + 208);
  v6 = *(v0 + 192);
  v23 = *(v0 + 176);
  v24 = *(v0 + 184);
  v33 = *(v0 + 168);
  v34 = *(v0 + 160);
  v7 = *(v0 + 136);
  v22 = *(v0 + 144);
  v35 = *(v0 + 128);
  v8 = *(v0 + 104);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);

  sub_1000D6278(2);

  sub_1000033C8(v7, &unk_10011FA80, &qword_1000F2660);
  v11 = sub_1000E2538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v17(v5, v9, v6);
  v12 = swift_allocObject();
  *(v12 + 2) = v4;
  *(v12 + 3) = v19;
  *(v12 + 4) = v10;
  v20(&v12[(v1 + 40) & ~v1], v5, v6);
  v13 = v10;

  sub_100022960(0, 0, v8, &unk_1000F2A60, v12);

  v26(v23, v22);
  v26(v24, v22);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100082554()
{
  v94 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 480);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 288);
  v6 = *(v0 + 224);
  v7 = *(v0 + 192);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);

  v4(v6, v9, v7);

  swift_errorRetain();
  v10 = sub_1000E1EE8();
  v11 = sub_1000E2698();

  if (os_log_type_enabled(v10, v11))
  {
    v89 = *(v0 + 440);
    v91 = *(v0 + 512);
    v87 = *(v0 + 312);
    v12 = *(v0 + 224);
    v13 = *(v0 + 192);
    v14 = *(v0 + 88);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_100029C70(*(v14 + 16), *(v14 + 24), v93);
    *(v15 + 12) = 2080;
    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
    v17 = sub_1000E2C18();
    v19 = v18;
    v87(v12, v13);
    v20 = sub_100029C70(v17, v19, v93);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v21;
    *v16 = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Handoff][Push] Failed to add %s to %s due to %@.", v15, 0x20u);
    sub_1000033C8(v16, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  else
  {
    v22 = *(v0 + 440);
    v23 = *(v0 + 312);
    v24 = *(v0 + 224);
    v25 = *(v0 + 192);

    v23(v24, v25);
  }

  v26 = *(v0 + 472);
  swift_beginAccess();
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = *(v0 + 80);
    v29 = *(*(v0 + 72) + *(v0 + 272));
    v30 = v27;
    isa = sub_1000E0D18().super.isa;
    v32 = [v29 activeConversationWithUUID:isa];

    if (v32)
    {
      [*(*(v0 + 72) + *(v0 + 272)) kickMember:v30 conversation:v32];

      v30 = v32;
    }
  }

  v33 = *(v0 + 512);
  v34 = *(v0 + 464);
  v35 = *(v0 + 472);
  v36 = *(v0 + 136);
  swift_willThrow();

  sub_1000D6278(2);

  sub_1000033C8(v36, &unk_10011FA80, &qword_1000F2660);
  *(v0 + 520) = *(v0 + 512);
  v37 = *(v0 + 288);
  v38 = sub_1000E1EE8();
  v39 = sub_1000E2678();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v93[0] = v41;
    *v40 = 136315138;
    swift_beginAccess();
    v42 = *(v0 + 564);
    v43 = *(v0 + 565);
    v44 = *(v0 + 566);
    if (*(v0 + 566))
    {
      v45 = 0x10000;
    }

    else
    {
      v45 = 0;
    }

    if (*(v0 + 565))
    {
      v46 = 256;
    }

    else
    {
      v46 = 0;
    }

    v47 = sub_10009EE2C(v46 | v42 | v45);
    v49 = sub_100029C70(v47, v48, v93);

    *(v40 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v38, v39, "[HandoffConversation] Rolling back for %s.", v40, 0xCu);
    sub_10000E9DC(v41);

    if (!v44)
    {
      if (v43)
      {
        *(v0 + 571) = v42;
        v50 = *(*(v0 + 72) + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
        v51 = swift_task_alloc();
        *(v0 + 544) = v51;
        *v51 = v0;
        v51[1] = sub_100083240;
        v52 = *(v0 + 88);

        return sub_1000BC98C(v52);
      }

      else if (v42)
      {
        v64 = swift_task_alloc();
        *(v0 + 552) = v64;
        *v64 = v0;
        v64[1] = sub_10008352C;
        v65 = *(v0 + 352);
        v67 = *(v0 + 72);
        v66 = *(v0 + 80);

        return sub_10008470C(v66, v65, 0);
      }

      else
      {
        v68 = *(v0 + 520);
        v69 = *(v0 + 280);
        v70 = *(v0 + 176);
        v71 = *(v0 + 184);
        v72 = *(v0 + 144);
        v73 = *(v0 + 152);
        swift_willThrow();

        v74 = *(v73 + 8);
        v74(v70, v72);
        v74(v71, v72);
        v76 = *(v0 + 248);
        v75 = *(v0 + 256);
        v78 = *(v0 + 232);
        v77 = *(v0 + 240);
        v80 = *(v0 + 216);
        v79 = *(v0 + 224);
        v82 = *(v0 + 176);
        v81 = *(v0 + 184);
        v83 = *(v0 + 160);
        v84 = *(v0 + 168);
        v86 = *(v0 + 136);
        v88 = *(v0 + 128);
        v90 = *(v0 + 104);
        v92 = *(v0 + 520);

        v85 = *(v0 + 8);

        return v85();
      }
    }
  }

  else
  {

    LOBYTE(v42) = *(v0 + 384) == 0;
    LOBYTE(v43) = 1;
  }

  *(v0 + 570) = v42;
  *(v0 + 569) = v43;
  v54 = *(v0 + 264);
  v55 = *(v0 + 216);
  v56 = *(v0 + 184);
  v57 = *(v0 + 72);
  v58 = [*(v0 + 280) groupUUID];
  sub_1000E0D38();

  v60 = sub_1000A75DC(&qword_100120020, v59, type metadata accessor for ConduitActor);
  v61 = swift_task_alloc();
  *(v0 + 528) = v61;
  v61[2] = v57;
  v61[3] = v55;
  v61[4] = v56;
  v62 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v63 = swift_task_alloc();
  *(v0 + 536) = v63;
  *v63 = v0;
  v63[1] = sub_100082E58;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v63, v54, v60, 0xD00000000000001DLL, 0x80000001000EBCE0, sub_1000ACDA4, v61, &type metadata for () + 8);
}

uint64_t sub_100082D40()
{
  v1 = *(v0 + 328);

  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v10 = *(v0 + 160);
  v11 = *(v0 + 168);
  v14 = *(v0 + 136);
  v15 = *(v0 + 128);
  v16 = *(v0 + 104);
  v17 = *(v0 + 344);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100082E58()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;

  v5 = *(v2 + 528);
  v6 = *(v2 + 264);
  if (v0)
  {

    v7 = sub_1000AE1F8;
  }

  else
  {

    v7 = sub_100082FB4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100082FB4()
{
  v1 = *(v0 + 569);
  (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
  if (v1 == 1)
  {
    *(v0 + 571) = *(v0 + 570);
    v2 = *(*(v0 + 72) + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
    v3 = swift_task_alloc();
    *(v0 + 544) = v3;
    *v3 = v0;
    v3[1] = sub_100083240;
    v4 = *(v0 + 88);

    return sub_1000BC98C(v4);
  }

  else if (*(v0 + 570))
  {
    v6 = swift_task_alloc();
    *(v0 + 552) = v6;
    *v6 = v0;
    v6[1] = sub_10008352C;
    v7 = *(v0 + 352);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);

    return sub_10008470C(v8, v7, 0);
  }

  else
  {
    v10 = *(v0 + 520);
    v11 = *(v0 + 280);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = *(v0 + 144);
    v15 = *(v0 + 152);
    swift_willThrow();

    v16 = *(v15 + 8);
    v16(v12, v14);
    v16(v13, v14);
    v18 = *(v0 + 248);
    v17 = *(v0 + 256);
    v20 = *(v0 + 232);
    v19 = *(v0 + 240);
    v22 = *(v0 + 216);
    v21 = *(v0 + 224);
    v24 = *(v0 + 176);
    v23 = *(v0 + 184);
    v25 = *(v0 + 160);
    v26 = *(v0 + 168);
    v28 = *(v0 + 136);
    v29 = *(v0 + 128);
    v30 = *(v0 + 104);
    v31 = *(v0 + 520);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_100083240()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return _swift_task_switch(sub_100083350, v2, 0);
}

uint64_t sub_100083350()
{
  if (*(v0 + 571) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 552) = v1;
    *v1 = v0;
    v1[1] = sub_10008352C;
    v2 = *(v0 + 352);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);

    return sub_10008470C(v3, v2, 0);
  }

  else
  {
    v6 = *(v0 + 520);
    v7 = *(v0 + 280);
    v8 = *(v0 + 176);
    v9 = *(v0 + 184);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    swift_willThrow();

    v12 = *(v11 + 8);
    v12(v8, v10);
    v12(v9, v10);
    v14 = *(v0 + 248);
    v13 = *(v0 + 256);
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);
    v18 = *(v0 + 216);
    v17 = *(v0 + 224);
    v20 = *(v0 + 176);
    v19 = *(v0 + 184);
    v21 = *(v0 + 160);
    v22 = *(v0 + 168);
    v24 = *(v0 + 136);
    v25 = *(v0 + 128);
    v26 = *(v0 + 104);
    v27 = *(v0 + 520);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_10008352C()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;

  v5 = *(v2 + 264);
  if (v0)
  {

    v6 = sub_1000AE210;
  }

  else
  {
    v6 = sub_100083664;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100083664()
{
  v1 = v0[65];
  v2 = v0[35];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[18];
  v6 = v0[19];
  swift_willThrow();

  v7 = *(v6 + 8);
  v7(v3, v5);
  v7(v4, v5);
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[27];
  v12 = v0[28];
  v15 = v0[22];
  v14 = v0[23];
  v16 = v0[20];
  v17 = v0[21];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[13];
  v23 = v0[65];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000837B0()
{
  v55 = v0;
  *(v0 + 520) = *(v0 + 384);
  v1 = *(v0 + 288);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2678();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v54 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v0 + 564);
    v7 = *(v0 + 565);
    v8 = *(v0 + 566);
    if (*(v0 + 566))
    {
      v9 = 0x10000;
    }

    else
    {
      v9 = 0;
    }

    if (*(v0 + 565))
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_10009EE2C(v10 | v6 | v9);
    v13 = sub_100029C70(v11, v12, &v54);

    *(v4 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "[HandoffConversation] Rolling back for %s.", v4, 0xCu);
    sub_10000E9DC(v5);

    if (v8)
    {
      *(v0 + 570) = v6;
      *(v0 + 569) = v7;
      v14 = *(v0 + 264);
      v15 = *(v0 + 216);
      v16 = *(v0 + 184);
      v17 = *(v0 + 72);
      v18 = [*(v0 + 280) groupUUID];
      sub_1000E0D38();

      v20 = sub_1000A75DC(&qword_100120020, v19, type metadata accessor for ConduitActor);
      v21 = swift_task_alloc();
      *(v0 + 528) = v21;
      v21[2] = v17;
      v21[3] = v15;
      v21[4] = v16;
      v22 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v23 = swift_task_alloc();
      *(v0 + 536) = v23;
      *v23 = v0;
      v23[1] = sub_100082E58;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v23, v14, v20, 0xD00000000000001DLL, 0x80000001000EBCE0, sub_1000ACDA4, v21, &type metadata for () + 8);
    }

    if (v7)
    {
      *(v0 + 571) = v6;
      v42 = *(*(v0 + 72) + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
      v43 = swift_task_alloc();
      *(v0 + 544) = v43;
      *v43 = v0;
      v43[1] = sub_100083240;
      v44 = *(v0 + 88);

      return sub_1000BC98C(v44);
    }

    if (v6)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!*(v0 + 384))
    {
LABEL_21:
      v45 = swift_task_alloc();
      *(v0 + 552) = v45;
      *v45 = v0;
      v45[1] = sub_10008352C;
      v46 = *(v0 + 352);
      v48 = *(v0 + 72);
      v47 = *(v0 + 80);

      return sub_10008470C(v47, v46, 0);
    }
  }

  v24 = *(v0 + 520);
  v25 = *(v0 + 280);
  v26 = *(v0 + 176);
  v27 = *(v0 + 184);
  v28 = *(v0 + 144);
  v29 = *(v0 + 152);
  swift_willThrow();

  v30 = *(v29 + 8);
  v30(v26, v28);
  v30(v27, v28);
  v32 = *(v0 + 248);
  v31 = *(v0 + 256);
  v34 = *(v0 + 232);
  v33 = *(v0 + 240);
  v36 = *(v0 + 216);
  v35 = *(v0 + 224);
  v38 = *(v0 + 176);
  v37 = *(v0 + 184);
  v39 = *(v0 + 160);
  v40 = *(v0 + 168);
  v50 = *(v0 + 136);
  v51 = *(v0 + 128);
  v52 = *(v0 + 104);
  v53 = *(v0 + 520);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100083C80()
{
  v55 = v0;
  *(v0 + 520) = *(v0 + 400);
  v1 = *(v0 + 288);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2678();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v54 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v0 + 564);
    v7 = *(v0 + 565);
    v8 = *(v0 + 566);
    if (*(v0 + 566))
    {
      v9 = 0x10000;
    }

    else
    {
      v9 = 0;
    }

    if (*(v0 + 565))
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_10009EE2C(v10 | v6 | v9);
    v13 = sub_100029C70(v11, v12, &v54);

    *(v4 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "[HandoffConversation] Rolling back for %s.", v4, 0xCu);
    sub_10000E9DC(v5);

    if (v8)
    {
      *(v0 + 570) = v6;
      *(v0 + 569) = v7;
      v14 = *(v0 + 264);
      v15 = *(v0 + 216);
      v16 = *(v0 + 184);
      v17 = *(v0 + 72);
      v18 = [*(v0 + 280) groupUUID];
      sub_1000E0D38();

      v20 = sub_1000A75DC(&qword_100120020, v19, type metadata accessor for ConduitActor);
      v21 = swift_task_alloc();
      *(v0 + 528) = v21;
      v21[2] = v17;
      v21[3] = v15;
      v21[4] = v16;
      v22 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
      v23 = swift_task_alloc();
      *(v0 + 536) = v23;
      *v23 = v0;
      v23[1] = sub_100082E58;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v23, v14, v20, 0xD00000000000001DLL, 0x80000001000EBCE0, sub_1000ACDA4, v21, &type metadata for () + 8);
    }

    if (v7)
    {
      *(v0 + 571) = v6;
      v42 = *(*(v0 + 72) + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
      v43 = swift_task_alloc();
      *(v0 + 544) = v43;
      *v43 = v0;
      v43[1] = sub_100083240;
      v44 = *(v0 + 88);

      return sub_1000BC98C(v44);
    }

    if (v6)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!*(v0 + 384))
    {
LABEL_21:
      v45 = swift_task_alloc();
      *(v0 + 552) = v45;
      *v45 = v0;
      v45[1] = sub_10008352C;
      v46 = *(v0 + 352);
      v48 = *(v0 + 72);
      v47 = *(v0 + 80);

      return sub_10008470C(v47, v46, 0);
    }
  }

  v24 = *(v0 + 520);
  v25 = *(v0 + 280);
  v26 = *(v0 + 176);
  v27 = *(v0 + 184);
  v28 = *(v0 + 144);
  v29 = *(v0 + 152);
  swift_willThrow();

  v30 = *(v29 + 8);
  v30(v26, v28);
  v30(v27, v28);
  v32 = *(v0 + 248);
  v31 = *(v0 + 256);
  v34 = *(v0 + 232);
  v33 = *(v0 + 240);
  v36 = *(v0 + 216);
  v35 = *(v0 + 224);
  v38 = *(v0 + 176);
  v37 = *(v0 + 184);
  v39 = *(v0 + 160);
  v40 = *(v0 + 168);
  v50 = *(v0 + 136);
  v51 = *(v0 + 128);
  v52 = *(v0 + 104);
  v53 = *(v0 + 520);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100084150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(sub_10000ADE4(&qword_10011E478, &unk_1000F0998) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = sub_1000E0D68();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v9 = qword_1001230F0;
  v4[13] = qword_1001230F0;

  return _swift_task_switch(sub_100084284, v9, 0);
}

uint64_t sub_100084284()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = [*(v0 + 48) groupUUID];
  sub_1000E0D38();

  if (v2)
  {
    LOBYTE(v2) = [*(v0 + 56) isAudioCallCapable];
  }

  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 48);
  v9 = [*(v7 + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaAudioCallsEnabled] & v2;
  v10 = *(v7 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationUIStateObserver);
  v11 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService27ConversationUIStateObserver_uiState;
  swift_beginAccess();
  sub_10000CB64(v10 + v11, v6, &qword_10011E478, &unk_1000F0998);
  v13 = sub_1000A75DC(&qword_100120020, v12, type metadata accessor for ConduitActor);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *(v14 + 16) = v7;
  *(v14 + 24) = v5;
  *(v14 + 32) = v9;
  *(v14 + 40) = v8;
  *(v14 + 48) = v6;
  v15 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  v17 = sub_1000E0FE8();
  *v16 = v0;
  v16[1] = sub_100084488;
  v18 = *(v0 + 40);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v18, v4, v13, 0xD000000000000035, 0x80000001000EBD90, sub_1000AD3F0, v14, v17);
}

uint64_t sub_100084488()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_100084658;
  }

  else
  {
    v7 = *(v2 + 104);
    v6 = *(v2 + 112);

    v5 = sub_1000845AC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000845AC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1000033C8(v0[9], &qword_10011E478, &unk_1000F0998);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100084658()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  sub_1000033C8(v5, &qword_10011E478, &unk_1000F0998);
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];
  v7 = v0[16];

  return v6();
}

uint64_t sub_10008470C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 120) = a3;
  *(v4 + 16) = a1;
  v5 = sub_1000E0D68();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 + 64);
  *(v4 + 64) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  *(v4 + 72) = qword_1001230F0;

  return _swift_task_switch(sub_100084814, v7, 0);
}

uint64_t sub_100084814()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 120);
  v4 = *(v0 + 16);
  v5 = [objc_allocWithZone(TUConversationPresentationContext) init];
  *(v0 + 80) = v5;
  [v5 setMode:v1];
  v6 = [objc_allocWithZone(TUConversationHandoffContext) init];
  *(v0 + 88) = v6;
  [v6 setPrefersToPlayDuringWombat:v1 != 2];
  v7 = [objc_opt_self() noNotificationInvitationPreferences];
  sub_10000CAAC(0, &qword_10011FCA8, TUConversationInvitationPreference_ptr);
  sub_10000EA70(&unk_10011FCB0, &qword_10011FCA8, TUConversationInvitationPreference_ptr);
  sub_1000E25E8();

  isa = sub_1000E25D8().super.isa;

  [v6 setInvitationPreferences:isa];

  [v6 setPresentationContext:v5];
  [v6 setSetUplinkMuted:v3];
  v9 = *(v2 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  v10 = sub_1000E0D18().super.isa;
  [v9 prepareConversationWithUUID:v10 withHandoffContext:v6];

  if (qword_10011DCA8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  v15 = *(v0 + 32);
  v16 = *(v0 + 16);
  v17 = sub_1000E2DA8();
  v19 = v18;
  (*(v14 + 16))(v11, v16, v13);
  v20 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v0 + 96) = v21;
  *(v21 + 16) = v15;
  (*(v14 + 32))(v21 + v20, v11, v13);
  v22 = v15;
  v23 = swift_task_alloc();
  *(v0 + 104) = v23;
  *v23 = v0;
  v23[1] = sub_100084B44;

  return sub_10005CD04(sub_10005CD04, v17, v19, &unk_1000F2A70, v21);
}

uint64_t sub_100084B44()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_100084CE0;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 72);

    v5 = sub_100084C6C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100084C6C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100084CE0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];

  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

uint64_t sub_100084D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1000E2B28();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v9 = qword_1001230F0;
  v5[7] = qword_1001230F0;

  return _swift_task_switch(sub_100084E94, v9, 0);
}

uint64_t sub_100084E94()
{
  v1 = *(v0 + 48);
  sub_1000E2CF8();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100084F60;
  v3 = *(v0 + 48);

  return sub_100003DA4(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100084F60()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  v5 = v2[7];
  v6 = v2[6];
  v7 = v2[5];
  v8 = v2[4];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = sub_1000AE288;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = sub_10008510C;
  }

  return _swift_task_switch(v9, v5, 0);
}

uint64_t sub_10008510C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v0[2] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  isa = sub_1000E0D18().super.isa;
  [v3 updateLocalParticipantToAVLessWithPresentationMode:2 forConversationUUID:isa];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000851B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = sub_1000E13E8();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_1000E15C8();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v11 = sub_1000E0FE8();
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v13 = *(v12 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v14 = *(*(sub_10000ADE4(&unk_10011FA80, &qword_1000F2660) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v15 = sub_1000E0D68();
  v4[23] = v15;
  v16 = *(v15 - 8);
  v4[24] = v16;
  v17 = *(v16 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v18 = *(*(sub_10000ADE4(&qword_10011F888, &qword_1000F22B0) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v19 = type metadata accessor for HandoffInfo(0);
  v4[28] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v21 = qword_1001230F0;
  v4[30] = qword_1001230F0;

  return _swift_task_switch(sub_1000854B0, v21, 0);
}

uint64_t sub_1000854B0()
{
  v65 = v0;
  v1 = v0[27];
  v2 = v0[5];
  v3 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v2 + v3, v1, &qword_10011F888, &qword_1000F22B0);
  v4 = type metadata accessor for HandoffState(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v6 = v0[27];
  if (v5 == 1)
  {
    sub_1000033C8(v0[27], &qword_10011F888, &qword_1000F22B0);
LABEL_22:
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v42 = v0[6];
    v43 = sub_1000E1F08();
    sub_1000049D0(v43, qword_100123128);

    v44 = sub_1000E1EE8();
    v45 = sub_1000E2678();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = v0[6];
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v64[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_100029C70(*(v46 + 16), *(v46 + 24), v64);
      _os_log_impl(&_mh_execute_header, v44, v45, "[PullConversationHandoff] Rejecting request because we don't have a session active with %s", v47, 0xCu);
      sub_10000E9DC(v48);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
LABEL_27:
    v49 = v0[29];
    v51 = v0[26];
    v50 = v0[27];
    v52 = v0[25];
    v54 = v0[21];
    v53 = v0[22];
    v56 = v0[19];
    v55 = v0[20];
    v57 = v0[17];
    v58 = v0[18];
    v61 = v0[14];
    v62 = v0[13];
    v63 = v0[10];

    v59 = v0[1];

    return v59();
  }

  v7 = v0[27];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24 = type metadata accessor for HandoffState;
    v9 = v6;
LABEL_21:
    sub_1000AD5EC(v9, v24);
    goto LABEL_22;
  }

  v8 = v0[29];
  sub_1000A877C(v6, v8, type metadata accessor for HandoffInfo);
  v9 = v0[29];
  if (*v8 != 1)
  {
LABEL_20:
    v24 = type metadata accessor for HandoffInfo;
    goto LABEL_21;
  }

  v10 = v0[6];
  if (*(v10 + 16) != *(v9 + 8) || *(v10 + 24) != *(v9 + 16))
  {
    v12 = *(v10 + 16);
    if ((sub_1000E2C68() & 1) == 0)
    {
      v9 = v0[29];
      goto LABEL_20;
    }
  }

  v13 = v0[7];
  v14 = v0[5];
  v15 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v0[31] = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v16 = *(v14 + v15);
  isa = sub_1000E0D18().super.isa;
  v18 = [v16 activeConversationWithUUID:isa];
  v0[32] = v18;

  if (!v18)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v25 = v0[26];
    v26 = v0[23];
    v27 = v0[24];
    v28 = v0[7];
    v29 = sub_1000E1F08();
    sub_1000049D0(v29, qword_100123128);
    (*(v27 + 16))(v25, v28, v26);
    v30 = sub_1000E1EE8();
    v31 = sub_1000E2678();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[26];
    v34 = v0[23];
    v35 = v0[24];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v64[0] = v37;
      *v36 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v38 = sub_1000E2C18();
      v40 = v39;
      (*(v35 + 8))(v33, v34);
      v41 = sub_100029C70(v38, v40, v64);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "[PullConversationHandoff] Unable to find conversation with %s.", v36, 0xCu);
      sub_10000E9DC(v37);
    }

    else
    {

      (*(v35 + 8))(v33, v34);
    }

    v60 = v0[29];
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    sub_1000AD5EC(v60, type metadata accessor for HandoffInfo);
    goto LABEL_27;
  }

  v19 = swift_task_alloc();
  v0[33] = v19;
  *v19 = v0;
  v19[1] = sub_100085B18;
  v20 = v0[29];
  v21 = v0[22];
  v22 = v0[5];

  return sub_100087148(v21, v20);
}

uint64_t sub_100085B18()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return _swift_task_switch(sub_100085C28, v2, 0);
}

uint64_t sub_100085C28()
{
  *(v0 + 272) = *(*(v0 + 40) + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230D0;

  return _swift_task_switch(sub_100085CD0, v1, 0);
}

uint64_t sub_100085CD0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  sub_10002E8E4(10.0);

  return _swift_task_switch(sub_100085D40, v2, 0);
}

uint64_t sub_100085D40()
{
  v29 = v0;
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  sub_10000CB64(v0[22], v1, &unk_10011FA80, &qword_1000F2660);
  v4 = *(v3 + 48);
  v0[35] = v4;
  v0[36] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = v0[21];
  if (v5 == 1)
  {
    sub_1000033C8(v0[21], &unk_10011FA80, &qword_1000F2660);
LABEL_3:
    v7 = 2;
    goto LABEL_8;
  }

  v8 = v0[19];
  v9 = v0[15];
  v10 = v0[16];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[11];
  v14 = v0[12];
  (*(v10 + 32))(v8, v0[21], v9);
  sub_1000E0FB8();
  (*(v10 + 8))(v8, v9);
  (*(v14 + 32))(v12, v11, v13);
  v15 = (*(v14 + 88))(v12, v13);
  if (v15 == enum case for NCProtoConversationAVMode.none(_:))
  {
    v7 = 0;
  }

  else
  {
    if (v15 != enum case for NCProtoConversationAVMode.audio(_:))
    {
      (*(v0[12] + 8))(v0[13], v0[11]);
      goto LABEL_3;
    }

    v7 = 1;
  }

LABEL_8:
  v0[37] = v7;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v16 = sub_1000E1F08();
  v0[38] = sub_1000049D0(v16, qword_100123128);
  v17 = sub_1000E1EE8();
  v18 = sub_1000E2698();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    v21 = TUConversationAVMode.description.getter(v7);
    v23 = sub_100029C70(v21, v22, &v28);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "[PullConversationHandoff] Re-enabling Wombat priority and upgrading to %s.", v19, 0xCu);
    sub_10000E9DC(v20);
  }

  v24 = swift_task_alloc();
  v0[39] = v24;
  *v24 = v0;
  v24[1] = sub_100086058;
  v25 = v0[7];
  v26 = v0[5];

  return sub_10008470C(v25, 0, 1);
}

uint64_t sub_100086058()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_100086FF8;
  }

  else
  {
    v6 = sub_100086184;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100086184()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[7];
  v4 = *(v0[5] + v0[31]);
  isa = sub_1000E0D18().super.isa;
  [v4 setLocalParticipantAudioVideoMode:v2 forConversationUUID:isa];

  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[PullConversationHandoff] End handoff", v8, 2u);
  }

  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  v12 = v0[5];

  (*(v10 + 104))(v9, enum case for NCProtoDisconnectRequest.DisconnectReason.pullingBackToPhone(_:), v11);
  v13 = sub_10006B2FC(v9);
  v0[41] = v13;
  (*(v10 + 8))(v9, v11);
  v14 = async function pointer to Task<>.value.getter[1];
  v15 = swift_task_alloc();
  v0[42] = v15;
  *v15 = v0;
  v15[1] = sub_100086344;

  return Task<>.value.getter(v15, v13, &type metadata for () + 8);
}

uint64_t sub_100086344()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 240);
  v5 = *v0;

  return _swift_task_switch(sub_100086470, v3, 0);
}

uint64_t sub_100086470()
{
  v58 = v0;
  v1 = *(v0 + 304);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PullConversationHandoff] Exit Laguna Rapport Session", v4, 2u);
  }

  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 176);
  v8 = *(v0 + 160);
  v9 = *(v0 + 120);
  v10 = *(v0 + 40);

  v11 = *(v10 + OBJC_IVAR___CSDNeighborhoodActivityConduit_remoteDisplayDiscovery);
  v12 = sub_1000E2328();
  [v11 exitDiscoverySessionWithReason:v12];

  sub_10000CB64(v7, v8, &unk_10011FA80, &qword_1000F2660);
  if (v6(v8, 1, v9) == 1)
  {
    sub_1000033C8(*(v0 + 160), &unk_10011FA80, &qword_1000F2660);
    v13 = *(v0 + 304);
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2698();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[PullConversationHandoff] Launch ICS", v16, 2u);
    }

    v17 = *(v0 + 240);

    v19 = sub_1000A75DC(&qword_100120020, v18, type metadata accessor for ConduitActor);
    v20 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v21 = swift_task_alloc();
    *(v0 + 368) = v21;
    *v21 = v0;
    v21[1] = sub_100086CBC;
    v22 = sub_100087E54;
    v23 = 0xD000000000000021;
    v24 = 0x80000001000EBDF0;
    v25 = &type metadata for () + 8;
    v26 = v17;
    v27 = v19;
    v28 = 0;
  }

  else
  {
    v29 = *(v0 + 304);
    v31 = *(v0 + 136);
    v30 = *(v0 + 144);
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    (*(v33 + 32))(v30, *(v0 + 160), v32);
    (*(v33 + 16))(v31, v30, v32);
    v34 = sub_1000E1EE8();
    v35 = sub_1000E2698();
    v36 = os_log_type_enabled(v34, v35);
    v38 = *(v0 + 128);
    v37 = *(v0 + 136);
    v39 = *(v0 + 120);
    if (v36)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v57 = v41;
      *v40 = 136315138;
      v56 = NCProtoCallState.description.getter();
      v43 = v42;
      v44 = *(v38 + 8);
      v44(v37, v39);
      v45 = sub_100029C70(v56, v43, &v57);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v34, v35, "[PullConversationHandoff] Setting callState to match TV callState: %s", v40, 0xCu);
      sub_10000E9DC(v41);
    }

    else
    {

      v44 = *(v38 + 8);
      v44(v37, v39);
    }

    *(v0 + 344) = v44;
    v46 = *(v0 + 240);
    v47 = *(v0 + 200);
    v48 = *(v0 + 144);
    v49 = *(v0 + 40);
    v50 = [*(v0 + 256) groupUUID];
    sub_1000E0D38();

    v52 = sub_1000A75DC(&qword_100120020, v51, type metadata accessor for ConduitActor);
    v53 = swift_task_alloc();
    *(v0 + 352) = v53;
    v53[2] = v49;
    v53[3] = v47;
    v53[4] = v48;
    v54 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v21 = swift_task_alloc();
    *(v0 + 360) = v21;
    *v21 = v0;
    v21[1] = sub_10008699C;
    v22 = sub_1000AE228;
    v23 = 0xD00000000000001DLL;
    v24 = 0x80000001000EBCE0;
    v25 = &type metadata for () + 8;
    v26 = v46;
    v27 = v52;
    v28 = v53;
  }

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v21, v26, v27, v23, v24, v22, v28, v25);
}

uint64_t sub_10008699C()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;

  v5 = *(v2 + 352);
  v6 = *(v2 + 240);
  if (v0)
  {

    v7 = sub_1000AE278;
  }

  else
  {

    v7 = sub_100086AF8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100086AF8()
{
  v1 = v0[43];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1(v2, v3);
  v5 = v0[38];
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[PullConversationHandoff] Launch ICS", v8, 2u);
  }

  v9 = v0[30];

  v11 = sub_1000A75DC(&qword_100120020, v10, type metadata accessor for ConduitActor);
  v12 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  v0[46] = v13;
  *v13 = v0;
  v13[1] = sub_100086CBC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, v9, v11, 0xD000000000000021, 0x80000001000EBDF0, sub_100087E54, 0, &type metadata for () + 8);
}

uint64_t sub_100086CBC()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;

  v5 = *(v2 + 240);
  if (v0)
  {

    v6 = sub_1000AE22C;
  }

  else
  {
    v6 = sub_100086DF4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100086DF4()
{
  v1 = v0[38];
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PullConversationHandoff] Set SharePlay not handedOff", v4, 2u);
  }

  v5 = v0[31];
  v6 = v0[32];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[26];
  v10 = v0[27];
  v11 = v0[22];
  v18 = v0[25];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[18];
  v23 = v0[17];
  v24 = v0[14];
  v25 = v0[13];
  v26 = v0[10];
  v12 = v0[5];

  v13 = *(v8 + 24);
  v14 = *(v12 + v5);
  isa = sub_1000E0D18().super.isa;
  [v14 setSharePlayHandedOff:0 onConversationWithUUID:isa];

  sub_1000033C8(v11, &unk_10011FA80, &qword_1000F2660);
  sub_1000AD5EC(v7, type metadata accessor for HandoffInfo);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100086FF8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 176);

  sub_1000033C8(v2, &unk_10011FA80, &qword_1000F2660);
  sub_1000AD5EC(v1, type metadata accessor for HandoffInfo);
  v3 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v15 = *(v0 + 112);
  v16 = *(v0 + 104);
  v17 = *(v0 + 80);
  v18 = *(v0 + 320);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100087148(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000E0FE8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1000E1358();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_1000E13B8();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v13 = *(*(type metadata accessor for HandoffInfo(0) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v14 = qword_1001230F0;
  v3[18] = qword_1001230F0;

  return _swift_task_switch(sub_10008734C, v14, 0);
}

uint64_t sub_10008734C()
{
  v25 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[3];
  v3 = sub_1000E1F08();
  v0[19] = sub_1000049D0(v3, qword_100123128);
  sub_1000A87E4(v2, v1, type metadata accessor for HandoffInfo);
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    v10 = sub_1000DDC88();
    v12 = v11;
    sub_1000AD5EC(v7, type metadata accessor for HandoffInfo);
    v13 = sub_100029C70(v10, v12, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sending callState request for %s", v8, 0xCu);
    sub_10000E9DC(v9);
  }

  else
  {

    sub_1000AD5EC(v7, type metadata accessor for HandoffInfo);
  }

  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[3];
  v17 = *(v0[4] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  *(swift_task_alloc() + 16) = v16;
  sub_1000A75DC(&qword_100120270, 255, &type metadata accessor for NCProtoCallStateRequest);
  sub_1000E0E38();

  v18 = *(v16 + 8);
  v19 = *(v16 + 16);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[20] = qword_1001230E0;
  v20 = swift_task_alloc();
  v0[21] = v20;
  *v20 = v0;
  v20[1] = sub_100087670;
  v21 = v0[14];
  v22 = v0[10];

  return sub_1000B6B1C(v21, 9, v22, v18, v19, 0);
}

uint64_t sub_100087670()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_100087B40;
  }

  else
  {
    v6 = sub_10008779C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008779C()
{
  v1 = v0[18];
  (*(v0[9] + 8))(v0[10], v0[8]);

  return _swift_task_switch(sub_100087818, v1, 0);
}

uint64_t sub_100087818()
{
  v41 = v0;
  v1 = v0[19];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  sub_1000A87E4(v0[3], v0[16], type metadata accessor for HandoffInfo);
  (*(v5 + 16))(v3, v2, v4);
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[16];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];
  if (v8)
  {
    v39 = v7;
    v13 = v0[6];
    v14 = v0[7];
    v37 = v0[5];
    v38 = v0[11];
    v15 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = sub_1000DDC88();
    v18 = v17;
    sub_1000AD5EC(v9, type metadata accessor for HandoffInfo);
    v19 = sub_100029C70(v16, v18, &v40);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    sub_1000E13A8();
    v20 = NCProtoCallState.description.getter();
    v22 = v21;
    (*(v13 + 8))(v14, v37);
    v23 = *(v11 + 8);
    v23(v10, v38);
    v24 = sub_100029C70(v20, v22, &v40);

    *(v15 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v6, v39, "CallState retrieved for associated TV with %s with result %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = *(v11 + 8);
    v23(v10, v12);
    sub_1000AD5EC(v9, type metadata accessor for HandoffInfo);
  }

  v25 = v0[14];
  v26 = v0[11];
  v27 = v0[2];
  sub_1000E13A8();
  v23(v25, v26);
  v28 = v0[16];
  v29 = v0[17];
  v31 = v0[14];
  v30 = v0[15];
  v32 = v0[13];
  v33 = v0[10];
  v34 = v0[7];
  (*(v0[6] + 56))(v0[2], 0, 1, v0[5]);

  v35 = v0[1];

  return v35();
}

uint64_t sub_100087B40()
{
  v1 = v0[18];
  (*(v0[9] + 8))(v0[10], v0[8]);

  return _swift_task_switch(sub_100087BBC, v1, 0);
}

uint64_t sub_100087BBC()
{
  v27 = v0;
  v1 = v0[22];
  v2 = v0[19];
  sub_1000A87E4(v0[3], v0[15], type metadata accessor for HandoffInfo);
  swift_errorRetain();
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2678();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[22];
  v7 = v0[15];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136315394;
    v11 = sub_1000DDC88();
    v13 = v12;
    sub_1000AD5EC(v7, type metadata accessor for HandoffInfo);
    v14 = sub_100029C70(v11, v13, &v26);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to retrieve CallState for associated TV for %s with error %@", v8, 0x16u);
    sub_1000033C8(v9, &unk_10011EAC0, &unk_1000F0E60);

    sub_10000E9DC(v10);
  }

  else
  {
    v16 = v0[22];

    sub_1000AD5EC(v7, type metadata accessor for HandoffInfo);
  }

  v17 = v0[16];
  v18 = v0[17];
  v20 = v0[14];
  v19 = v0[15];
  v21 = v0[13];
  v22 = v0[10];
  v23 = v0[7];
  (*(v0[6] + 56))(v0[2], 1, 1, v0[5]);

  v24 = v0[1];

  return v24();
}

void sub_100087E54(uint64_t a1)
{
  v2 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v7 = sub_1000E0C38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() faceTimeShowInCallUIURL];
  if (v12)
  {
    v13 = v12;
    sub_1000E0C28();

    sub_1000E0BF8(v14);
    v16 = v15;
    (*(v8 + 8))(v11, v7);
    (*(v3 + 16))(v6, a1, v2);
    v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v18 = swift_allocObject();
    (*(v3 + 32))(v18 + v17, v6, v2);
    aBlock[4] = sub_1000ADFEC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100088334;
    aBlock[3] = &unk_100115AE8;
    v19 = _Block_copy(aBlock);

    TUOpenURLWithCompletion();
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000880D8(uint64_t a1, uint64_t a2)
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v3 = sub_1000E1F08();
  sub_1000049D0(v3, qword_100123128);

  swift_errorRetain();
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    v9 = sub_1000E22C8();
    v11 = sub_100029C70(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v6 + 14) = v12;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[PullConversationHandoff] Launch ICS result:%s error:%@", v6, 0x16u);
    sub_1000033C8(v7, &unk_10011EAC0, &unk_1000F0E60);

    sub_10000E9DC(v8);
  }

  if (a2)
  {
    v15 = a2;
    swift_errorRetain();
    sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
    return sub_1000E24C8();
  }

  else
  {
    sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
    return sub_1000E24D8();
  }
}

void sub_100088334(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_1000E22B8();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1000883D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v3[16] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v12 = qword_1001230F0;
  v3[17] = qword_1001230F0;

  return _swift_task_switch(sub_1000885B4, v12, 0);
}

uint64_t sub_1000885B4()
{
  v1 = v0[13];
  v18 = v0[16];
  v19 = v0[14];
  v2 = v0[12];
  v16 = v0[15];
  v17 = v0[11];
  v3 = v0[7];
  v14 = v0[8];
  v15 = v0[10];
  v12 = v0[6];
  v13 = v0[9];
  v11 = v0[5];
  v20 = v0[4];
  v0[2] = *(*(v20 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_10000ADE4(&unk_100120850, &qword_1000F2488);
  sub_100002C64(&qword_10011F9A0, &unk_100120850, &qword_1000F2488);
  v0[3] = sub_1000E2028();
  sub_10000ADE4(&qword_10011F9A8, &qword_1000F2490);
  sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  sub_100002C64(&qword_10011F9B0, &qword_10011F9A8, &qword_1000F2490);
  sub_1000E2038();

  (*(v3 + 16))(v13, v11, v12);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  (*(v3 + 32))(v5 + v4, v13, v12);
  sub_100002C64(&qword_10011FBF0, &qword_10011FBE0, &qword_1000F2850);
  sub_1000E2078();

  (*(v17 + 8))(v2, v15);
  sub_1000E1F28();
  v6 = *(v19 + 8);
  v6(v16, v1);
  sub_100002C64(&qword_10011FBF8, &qword_10011FBE8, &qword_1000F2858);
  v7 = sub_1000E2028();
  v0[18] = v7;
  v6(v18, v1);
  v8 = *(v20 + OBJC_IVAR___CSDNeighborhoodActivityConduit_publisherService);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_100088970;

  return sub_10009F290(v7);
}

uint64_t sub_100088970(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  v7 = *(v4 + 136);
  if (v1)
  {
    v8 = sub_100088B40;
  }

  else
  {

    v8 = sub_100088AA8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100088AA8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[12];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100088B40()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[12];
  v5 = v0[9];

  v6 = v0[1];
  v7 = v0[20];

  return v6();
}

BOOL sub_100088BD8(id *a1)
{
  v1 = [*a1 presentationContext];
  v2 = [v1 mode];

  return v2 == 2;
}

uint64_t sub_100088C2C(uint64_t a1, char *a2, uint64_t a3, int a4, void *a5, uint64_t a6)
{
  v46 = a1;
  v47 = a6;
  v51 = a5;
  v50 = a4;
  v45 = a3;
  v57 = a2;
  v53 = sub_1000E2118();
  v56 = *(v53 - 8);
  v6 = *(v56 + 64);
  __chkstk_darwin(v53);
  v52 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000E2148();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  __chkstk_darwin(v8);
  v49 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000ADE4(&qword_10011E478, &unk_1000F0998);
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v40 - v13;
  v43 = &v40 - v13;
  v15 = sub_10000ADE4(&qword_10011FCC0, &qword_1000F2A80);
  v41 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  v42 = &v40 - v18;
  v20 = sub_1000E0D68();
  v40 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = [*&v57[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] queue];
  (*(v21 + 16))(v23, v45, v20);
  (*(v16 + 16))(v19, v46, v15);
  sub_10000CB64(v47, v14, &qword_10011E478, &unk_1000F0998);
  v24 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v25 = (v22 + *(v16 + 80) + v24) & ~*(v16 + 80);
  v26 = v25 + v17;
  v27 = v26 & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v44 + 80) + (v26 & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v44 + 80);
  v29 = swift_allocObject();
  v30 = v57;
  *(v29 + 16) = v57;
  (*(v21 + 32))(v29 + v24, v23, v40);
  (*(v16 + 32))(v29 + v25, v42, v41);
  *(v29 + v26) = v50;
  v31 = v51;
  *(v29 + v27 + 8) = v51;
  sub_1000AD400(v43, v29 + v28, &qword_10011E478, &unk_1000F0998);
  aBlock[4] = sub_1000AD468;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115980;
  v32 = _Block_copy(aBlock);
  v33 = v30;
  v34 = v31;
  v35 = v49;
  sub_1000E2138();
  v58 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  v37 = v52;
  v36 = v53;
  sub_1000E28C8();
  v38 = v48;
  sub_1000E2738();
  _Block_release(v32);

  (*(v56 + 8))(v37, v36);
  (*(v54 + 8))(v35, v55);
}

void sub_1000891F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1000E0FE8();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = *(a1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter);
  isa = sub_1000E0D18().super.isa;
  v14 = [v12 callForConversationWithGroupUUID:isa];

  if (v14)
  {
    __chkstk_darwin(v15);
    *(&v16 - 4) = v14;
    *(&v16 - 24) = a4 & 1;
    *(&v16 - 2) = a5;
    *(&v16 - 1) = a6;
    sub_1000A75DC(&qword_10011FA98, 255, &type metadata accessor for NCProtoCallState);
    sub_1000E0E38();
    sub_10000ADE4(&qword_10011FCC0, &qword_1000F2A80);
    sub_1000E24D8();
  }

  else
  {
    TUMakeNeighborhoodConduitError();
    sub_10000ADE4(&qword_10011FCC0, &qword_1000F2A80);
    sub_1000E24C8();
  }
}

uint64_t sub_1000893E4(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5)
{
  v9 = sub_10000ADE4(&qword_10011E478, &unk_1000F0998);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_1000E15C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 isUplinkMuted];
  sub_1000E0F38();
  [a2 isSendingVideo];
  sub_1000E0F58();
  if (a3)
  {
    v18 = [a4 resolvedAudioVideoMode];
    if (v18)
    {
      if (v18 == 1)
      {
        v19 = &enum case for NCProtoConversationAVMode.audio(_:);
      }

      else
      {
        v19 = &enum case for NCProtoConversationAVMode.video(_:);
      }
    }

    else
    {
      v19 = &enum case for NCProtoConversationAVMode.none(_:);
    }

    (*(v14 + 104))(v17, *v19, v13);
  }

  else
  {
    (*(v14 + 104))(v17, enum case for NCProtoConversationAVMode.video(_:), v13);
  }

  sub_1000E0FC8();
  sub_10000CB64(a5, v12, &qword_10011E478, &unk_1000F0998);
  v20 = type metadata accessor for ConversationUIState(0);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    sub_1000033C8(v12, &qword_10011E478, &unk_1000F0998);
  }

  else
  {
    v21 = v12[*(v20 + 20)];
    sub_1000AD5EC(v12, type metadata accessor for ConversationUIState);
  }

  return sub_1000E0F98();
}

uint64_t sub_100089658(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  v45 = a4;
  v43 = a3;
  v39 = a2;
  v49 = sub_1000E2118();
  v52 = *(v49 - 8);
  v5 = *(v52 + 64);
  __chkstk_darwin(v49);
  v48 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E2148();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v47 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E0FE8();
  v37 = v10;
  v41 = *(v10 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v10);
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v36 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v38 = &v35 - v15;
  v17 = sub_1000E0D68();
  v35 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = [*&a2[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] queue];
  (*(v18 + 16))(v20, v43, v17);
  (*(v13 + 16))(v16, v44, v12);
  v22 = v40;
  v21 = v41;
  (*(v41 + 16))(v40, v45, v10);
  v23 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v24 = (v19 + *(v13 + 80) + v23) & ~*(v13 + 80);
  v25 = (v14 + *(v21 + 80) + v24) & ~*(v21 + 80);
  v26 = swift_allocObject();
  v27 = v39;
  *(v26 + 16) = v39;
  (*(v18 + 32))(v26 + v23, v20, v35);
  (*(v13 + 32))(v26 + v24, v38, v36);
  (*(v21 + 32))(v26 + v25, v22, v37);
  aBlock[4] = sub_1000AD088;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_1001158E0;
  v28 = _Block_copy(aBlock);
  v29 = v27;
  v30 = v47;
  sub_1000E2138();
  v53 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  v32 = v48;
  v31 = v49;
  sub_1000E28C8();
  v33 = v46;
  sub_1000E2738();
  _Block_release(v28);

  (*(v52 + 8))(v32, v31);
  (*(v50 + 8))(v30, v51);
}

void sub_100089C08(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter);
  isa = sub_1000E0D18().super.isa;
  v3 = [v1 callForConversationWithGroupUUID:isa];

  if (v3)
  {
    [v3 setUplinkMuted:(sub_1000E0F28() & 1) == 0];
    [v3 setIsSendingVideo:sub_1000E0F48() & 1];
    sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
    sub_1000E24D8();
  }

  else
  {
    TUMakeNeighborhoodConduitError();
    sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
    sub_1000E24C8();
  }
}

void sub_100089D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter);
  v4 = [v3 frontmostAudioOrVideoCall];
  if (v4)
  {
    v5 = v4;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v6 = sub_1000E1F08();
    sub_1000049D0(v6, qword_100123128);
    v7 = v5;
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2698();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2080;
      v13 = v7;
      sub_10000ADE4(&qword_10011FA68, &qword_1000F25F0);
      v14 = sub_1000E2358();
      v16 = sub_100029C70(v14, v15, &v21);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Disconnect call %@ with reason: %s", v10, 0x16u);
      sub_1000033C8(v11, &unk_10011EAC0, &unk_1000F0E60);

      sub_10000E9DC(v12);
    }

    if ((a2 & 0x100000000) != 0)
    {
      [v3 disconnectCall:v7];
    }

    else
    {
      [v3 disconnectCall:v7 withReason:a2];
    }
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v17 = sub_1000E1F08();
    sub_1000049D0(v17, qword_100123128);
    oslog = sub_1000E1EE8();
    v18 = sub_1000E2658();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v18, "endCurrentCall executed but no frontmostAudioOrVideoCall to end", v19, 2u);
    }
  }
}

uint64_t sub_10008A04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v7 + 16) = v9;
  *v9 = v7;
  v9[1] = sub_100002E7C;

  return sub_100073144(a1, a5, 2);
}

uint64_t sub_10008A130(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a1;
  v28 = sub_1000E2118();
  v31 = *(v28 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000E2148();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000ADE4(&qword_10011FC38, &qword_1000F3350);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 callFilterController];

  v19 = [*(a2 + OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter) queue];
  (*(v13 + 16))(v16, v27, v12);
  v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = a3;
  (*(v13 + 32))(v21 + v20, v16, v12);
  aBlock[4] = sub_1000AC0E4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115610;
  v22 = _Block_copy(aBlock);
  v23 = v18;
  v24 = a3;
  sub_1000E2138();
  v32 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  v25 = v28;
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v22);

  (*(v31 + 8))(v7, v25);
  (*(v29 + 8))(v11, v30);
}

uint64_t sub_10008A548(void *a1, uint64_t a2)
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v4 = sub_1000E1F08();
  sub_1000049D0(v4, qword_100123128);
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2698();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[StartConversation] Checking if join request is restricted...", v7, 2u);
  }

  v8 = [a1 shouldRestrictJoinConversationRequest:a2 performSynchronously:1];
  v9 = sub_1000E1EE8();
  v10 = sub_1000E2698();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "[StartConversation] Should restrict join request: %{BOOL}d.", v11, 8u);
  }

  sub_10000ADE4(&qword_10011FC38, &qword_1000F3350);
  return sub_1000E24D8();
}

uint64_t sub_10008A700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[142] = a5;
  v5[141] = a4;
  v5[135] = a3;
  v5[129] = a2;
  v5[123] = a1;
  v6 = *(sub_10000ADE4(&unk_10011FA80, &qword_1000F2660) - 8);
  v5[143] = v6;
  v5[144] = *(v6 + 64);
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v7 = *(*(type metadata accessor for HandoffInfo(0) - 8) + 64) + 15;
  v5[147] = swift_task_alloc();
  v8 = sub_1000E0D68();
  v5[148] = v8;
  v9 = *(v8 - 8);
  v5[149] = v9;
  v5[150] = *(v9 + 64);
  v5[151] = swift_task_alloc();
  v5[152] = swift_task_alloc();
  v5[153] = swift_task_alloc();
  v5[154] = swift_task_alloc();
  v5[155] = swift_task_alloc();
  v10 = *(*(sub_10000ADE4(&unk_10011F878, &unk_1000F2290) - 8) + 64) + 15;
  v5[156] = swift_task_alloc();
  v11 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  v5[157] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[158] = swift_task_alloc();
  v5[159] = swift_task_alloc();
  v5[160] = swift_task_alloc();
  v13 = *(*(sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670) - 8) + 64) + 15;
  v5[161] = swift_task_alloc();
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v14 = sub_1000E2118();
  v5[164] = v14;
  v15 = *(v14 - 8);
  v5[165] = v15;
  v16 = *(v15 + 64) + 15;
  v5[166] = swift_task_alloc();
  v17 = sub_1000E2148();
  v5[167] = v17;
  v18 = *(v17 - 8);
  v5[168] = v18;
  v19 = *(v18 + 64) + 15;
  v5[169] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v20 = qword_1001230F0;
  v5[170] = qword_1001230F0;

  return _swift_task_switch(sub_10008AA78, v20, 0);
}

uint64_t sub_10008AA78()
{
  v38 = v0;
  if ([*(v0[129] + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaEnabled])
  {
    v1 = v0[135];
    v2 = v0[129];
    v3 = swift_allocObject();
    v0[171] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = v2;
    v5 = v1;
    swift_asyncLet_begin();
    if (![*&v4[OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceSupport] isGreenTea] || ((v6 = v0[141], TUGreenTeaLagunaEnabled()) ? (v7 = v6 == 2) : (v7 = 0), v7))
    {
      sub_10005A5B8();
      v0[172] = 0;
      if (qword_10011DC60 != -1)
      {
        swift_once();
      }

      v20 = sub_1000E1F08();
      v0[173] = sub_1000049D0(v20, qword_100123128);
      v21 = sub_1000E1EE8();
      v22 = sub_1000E2698();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = v0[141];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v37 = v25;
        *v24 = 136315138;
        v26 = TUConversationAVMode.description.getter(v23);
        v28 = sub_100029C70(v26, v27, &v37);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v21, v22, "[StartConversation] Received request to start conversation with mode %s.", v24, 0xCu);
        sub_10000E9DC(v25);
      }

      v29 = *(v0[129] + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
      v0[174] = v29;

      return _swift_task_switch(sub_10008B030, v29, 0);
    }

    else
    {
      v0[196] = TUMakeNeighborhoodConduitError();
      swift_willThrow();

      return _swift_asyncLet_finish(v0 + 2, v0 + 198, sub_10008D690, v0 + 136);
    }
  }

  else
  {
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v8 = v0[169];
    v9 = v0[166];
    v10 = v0[163];
    v11 = v0[162];
    v12 = v0[161];
    v13 = v0[160];
    v14 = v0[159];
    v15 = v0[158];
    v16 = v0[156];
    v17 = v0[155];
    v30 = v0[154];
    v31 = v0[153];
    v32 = v0[152];
    v33 = v0[151];
    v34 = v0[147];
    v35 = v0[146];
    v36 = v0[145];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10008AECC()
{
  v1 = v0[171];

  v21 = v0[172];
  v2 = v0[169];
  v3 = v0[166];
  v4 = v0[163];
  v5 = v0[162];
  v6 = v0[161];
  v7 = v0[160];
  v8 = v0[159];
  v9 = v0[158];
  v10 = v0[156];
  v11 = v0[155];
  v14 = v0[154];
  v15 = v0[153];
  v16 = v0[152];
  v17 = v0[151];
  v18 = v0[147];
  v19 = v0[146];
  v20 = v0[145];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10008B030()
{
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1360);
  sub_1000BA9C4(*(v0 + 1136), (v0 + 696));

  return _swift_task_switch(sub_10008B0A4, v2, 0);
}

uint64_t sub_10008B0A4()
{
  v10 = v0;
  if (v0[88])
  {
    sub_1000033C8((v0 + 87), &unk_10011FA58, &unk_1000F25E0);

    return _swift_asyncLet_get(v0 + 2, v0 + 198, sub_10008B268, v0 + 112);
  }

  else
  {
    v1 = v0[173];
    v2 = v0[142];

    v3 = sub_1000E1EE8();
    v4 = sub_1000E2678();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[142];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100029C70(*(v5 + 16), *(v5 + 24), &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "[StartConversation] Rejecting request because no session exists for %s.", v6, 0xCu);
      sub_10000E9DC(v7);
    }

    v0[195] = TUMakeNeighborhoodConduitError();
    swift_willThrow();

    return _swift_asyncLet_finish(v0 + 2, v0 + 198, sub_10008D510, v0 + 104);
  }
}

uint64_t sub_10008B284()
{
  v1 = v0[173];
  v2 = *(v0 + 1584);
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[StartConversation] Rejecting request becaused it's restricted by Screen Time settings.", v6, 2u);
    }

    v0[194] = TUMakeNeighborhoodConduitError();
    swift_willThrow();

    return _swift_asyncLet_finish(v0 + 2, v0 + 198, sub_10008D390, v0 + 130);
  }

  else
  {
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[StartConversation] Creating conversation and waiting to join.", v7, 2u);
    }

    v8 = v0[169];
    v27 = v0[168];
    v28 = v0[167];
    v9 = v0[166];
    v26 = v0[165];
    v10 = v0[164];
    v11 = v0[149];
    v29 = v0[163];
    v30 = v0[148];
    v12 = v0[135];
    v13 = v0[129];

    v25 = [*&v13[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] queue];
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    v0[99] = sub_1000AC06C;
    v0[100] = v14;
    v0[95] = _NSConcreteStackBlock;
    v0[96] = 1107296256;
    v0[97] = sub_1000026A0;
    v0[98] = &unk_100115570;
    v15 = _Block_copy(v0 + 95);
    v16 = v13;
    v17 = v12;
    sub_1000E2138();
    v0[117] = _swiftEmptyArrayStorage;
    sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
    sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
    sub_1000E28C8();
    sub_1000E2738();
    _Block_release(v15);

    (*(v26 + 8))(v9, v10);
    (*(v27 + 8))(v8, v28);
    v18 = v0[100];

    v19 = *(v11 + 56);
    v0[175] = v19;
    v0[176] = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v19(v29, 1, 1, v30);
    if (_swiftEmptyArrayStorage >> 62 && sub_1000E2B68())
    {
      sub_1000E03A0(_swiftEmptyArrayStorage);
      v20 = v23;
    }

    else
    {
      v20 = &_swiftEmptySetSingleton;
    }

    v0[177] = v20;
    v21 = swift_task_alloc();
    v0[178] = v21;
    *v21 = v0;
    v21[1] = sub_10008B6D8;
    v22 = v0[129];

    return sub_10008E344(v20);
  }
}

uint64_t sub_10008B6D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1424);
  v10 = *v2;
  v3[179] = a1;
  v3[180] = v1;

  if (v1)
  {
    v5 = v3[170];
    v6 = sub_10008D990;
  }

  else
  {
    v7 = v3[177];
    v8 = v3[170];

    v6 = sub_10008B804;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008B804()
{
  v91 = v0;
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1408);
  v3 = *(v0 + 1400);
  v4 = *(v0 + 1304);
  v5 = *(v0 + 1296);
  v6 = *(v0 + 1184);
  v7 = [*(v0 + 1432) UUID];
  sub_1000E0D38();

  sub_1000033C8(v4, &unk_10011F0C0, &qword_1000F1670);
  v3(v5, 0, 1, v6);
  sub_1000AD400(v5, v4, &unk_10011F0C0, &qword_1000F1670);
  sub_1000E2588();
  *(v0 + 1448) = v1;
  if (v1)
  {

    *(v0 + 1576) = v1;
    v8 = *(v0 + 1384);
    swift_errorRetain();
    v9 = sub_1000E1EE8();
    v10 = sub_1000E2678();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "[StartConversation] Failed to start conversation due to %@.", v11, 0xCu);
      sub_1000033C8(v12, &unk_10011EAC0, &unk_1000F0E60);
    }

    v14 = *(v0 + 1304);
    v15 = *(v0 + 1288);
    v16 = *(v0 + 1192);
    v17 = *(v0 + 1184);

    sub_10000CB64(v14, v15, &unk_10011F0C0, &qword_1000F1670);
    if ((*(v16 + 48))(v15, 1, v17) == 1)
    {
      v18 = *(v0 + 1032);
      sub_1000033C8(*(v0 + 1288), &unk_10011F0C0, &qword_1000F1670);
      v19 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
      v20 = [*(v18 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager) avLessConversation];
      if (v20)
      {
        v21 = v20;
        if ([v20 isContinuitySession])
        {
          v22 = *(v0 + 1384);
          v23 = v21;
          v24 = sub_1000E1EE8();
          v25 = sub_1000E2698();

          if (os_log_type_enabled(v24, v25))
          {
            v87 = v25;
            v26 = *(v0 + 1240);
            v81 = *(v0 + 1192);
            v27 = *(v0 + 1184);
            buf = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v90[0] = v84;
            *buf = 136315138;
            v28 = [v23 UUID];
            sub_1000E0D38();

            sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
            v29 = sub_1000E2C18();
            v30 = v23;
            v32 = v31;
            (*(v81 + 8))(v26, v27);
            v33 = sub_100029C70(v29, v32, v90);
            v23 = v30;

            *(buf + 4) = v33;
            _os_log_impl(&_mh_execute_header, v24, v87, "[StartConversation] Leaving conversationManager avLess continuity conversation: %s", buf, 0xCu);
            sub_10000E9DC(v84);
          }

          v34 = *(v0 + 1240);
          v35 = *(v0 + 1192);
          v36 = *(v0 + 1184);
          v37 = *(v18 + v19);
          v38 = [v23 UUID];
          sub_1000E0D38();

          isa = sub_1000E0D18().super.isa;
          (*(v35 + 8))(v34, v36);
          [v37 leaveConversationWithUUID:isa];
        }

        else
        {
        }
      }
    }

    else
    {
      v55 = *(v0 + 1384);
      v56 = *(v0 + 1216);
      v57 = *(v0 + 1208);
      v58 = *(v0 + 1192);
      v59 = *(v0 + 1184);
      (*(v58 + 32))(v56, *(v0 + 1288), v59);
      (*(v58 + 16))(v57, v56, v59);
      v60 = sub_1000E1EE8();
      v61 = sub_1000E2698();
      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v0 + 1208);
      v64 = *(v0 + 1192);
      v65 = *(v0 + 1184);
      if (v62)
      {
        v86 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v90[0] = v89;
        *v86 = 136315138;
        sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
        v83 = v61;
        v66 = sub_1000E2C18();
        v68 = v67;
        v69 = *(v64 + 8);
        v69(v63, v65);
        v70 = v69;
        v71 = sub_100029C70(v66, v68, v90);

        *(v86 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v60, v83, "[StartConversation] Leaving conversation: %s", v86, 0xCu);
        sub_10000E9DC(v89);
      }

      else
      {

        v72 = *(v64 + 8);
        v72(v63, v65);
        v70 = v72;
      }

      v73 = *(v0 + 1216);
      v74 = *(v0 + 1184);
      v75 = *(*(v0 + 1032) + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
      v76 = sub_1000E0D18().super.isa;
      [v75 leaveConversationWithUUID:v76];

      v70(v73, v74);
    }

    v77 = *(v0 + 1304);
    swift_willThrow();
    sub_1000033C8(v77, &unk_10011F0C0, &qword_1000F1670);

    return _swift_asyncLet_finish(v0 + 16, v0 + 1584, sub_10008D810, v0 + 944);
  }

  else
  {
    v40 = *(v0 + 1280);
    v41 = *(v0 + 1272);
    v42 = *(v0 + 1264);
    v43 = *(v0 + 1256);
    bufa = *(v0 + 1432);
    v82 = *(v0 + 1248);
    v44 = *(v0 + 1240);
    v45 = *(v0 + 1192);
    v85 = *(v0 + 1184);
    v88 = *(v0 + 1136);
    v46 = *(v0 + 1128);
    v47 = *(v0 + 1032);
    v48 = *(v43 + 48);
    sub_1000E0CD8();
    *(v40 + v48) = v46;
    sub_10000CB64(v40, v41, &qword_10011EBB0, &qword_1000F04F0);
    v49 = *(v43 + 48);
    v50 = *(v41 + v49);
    v51 = sub_1000E0CE8();
    (*(*(v51 - 8) + 32))(v42, v41, v51);
    *(v42 + v49) = v50;
    v52 = [(uint8_t *)bufa UUID];
    sub_1000E0D38();

    swift_beginAccess();
    sub_1000A5324(v42, v44, v82);
    swift_endAccess();
    v53 = *(v45 + 8);
    *(v0 + 1456) = v53;
    *(v0 + 1464) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53(v44, v85);
    sub_1000033C8(v82, &unk_10011F878, &unk_1000F2290);
    *(v0 + 1472) = *(v47 + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
    *(v0 + 1480) = *(v88 + 16);
    *(v0 + 1488) = *(v88 + 24);
    if (qword_10011DC08 != -1)
    {
      swift_once();
    }

    v54 = qword_1001230D0;

    return _swift_task_switch(sub_10008C0E0, v54, 0);
  }
}

uint64_t sub_10008C0E0()
{
  v1 = v0[184];
  v2 = v0[170];
  sub_100030E7C(0, v0[185], v0[186]);

  return _swift_task_switch(sub_10008C158, v2, 0);
}

uint64_t sub_10008C158()
{
  v1 = v0[173];
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[StartConversation] Conversation joined, pushing to sender.", v4, 2u);
  }

  v5 = v0[181];
  v6 = v0[179];
  v7 = v0[154];
  v8 = v0[146];
  v9 = v0[141];

  v10 = [v6 UUID];
  sub_1000E0D38();

  v11 = sub_1000E0FE8();
  *(swift_task_alloc() + 16) = v9;
  sub_1000A75DC(&qword_10011FA98, 255, &type metadata accessor for NCProtoCallState);
  sub_1000E0E38();

  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  v0[187] = sub_1000D605C(2);
  v12 = swift_allocObject();
  v0[188] = v12;
  v43 = v12;
  *(v12 + 16) = 0;
  if (qword_10011DCA8 != -1)
  {
    swift_once();
  }

  v13 = v0[155];
  v14 = v0[154];
  v15 = v0[150];
  v16 = v0[149];
  v17 = v0[148];
  v37 = v17;
  v38 = v13;
  v18 = v0[146];
  v19 = v0[145];
  v20 = v0[144];
  v21 = v0[143];
  v39 = v0[142];
  v40 = v0[129];
  v22 = sub_1000E2DA8();
  v41 = v23;
  v42 = v22;
  v24 = *(v16 + 16);
  v0[189] = v24;
  v0[190] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v13, v14, v17);
  sub_10000CB64(v18, v19, &unk_10011FA80, &qword_1000F2660);
  v25 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v26 = (v15 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v21 + 80) + v27 + 9) & ~*(v21 + 80);
  v29 = v28 + v20;
  v30 = (v28 + v20) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v0[191] = v31;
  (*(v16 + 32))(v31 + v25, v38, v37);
  *(v31 + v26) = v39;
  v32 = v31 + v27;
  *v32 = v40;
  *(v32 + 8) = 1;
  sub_1000AD400(v19, v31 + v28, &unk_10011FA80, &qword_1000F2660);
  *(v31 + v29) = 1;
  *(v31 + v30 + 8) = 4;
  *(v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8)) = v43;
  v33 = v40;

  v34 = swift_task_alloc();
  v0[192] = v34;
  *v34 = v0;
  v34[1] = sub_10008C570;
  v35 = v0[147];

  return sub_10005D2F4(v35, v42, v41, &unk_1000F2910, v31);
}

uint64_t sub_10008C570()
{
  v2 = *v1;
  v3 = *(*v1 + 1536);
  v9 = *v1;
  *(*v1 + 1544) = v0;

  if (v0)
  {
    v4 = *(v2 + 1360);
    v5 = sub_10008C844;
  }

  else
  {
    v6 = *(v2 + 1528);
    v7 = *(v2 + 1360);

    v5 = sub_10008C698;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10008C698()
{
  v1 = *(v0 + 1504);
  v2 = *(v0 + 1496);
  v3 = *(v0 + 1464);
  v4 = *(v0 + 1456);
  v5 = *(v0 + 1384);
  v6 = *(v0 + 1232);
  v7 = *(v0 + 1184);
  v8 = *(v0 + 1168);

  sub_1000D6278(2);

  sub_1000033C8(v8, &unk_10011FA80, &qword_1000F2660);
  v4(v6, v7);
  v9 = sub_1000E1EE8();
  v10 = sub_1000E2698();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "[StartConversation] Conversation started and pushed successfully!", v11, 2u);
  }

  v12 = *(v0 + 1304);
  v13 = *(v0 + 1280);
  v14 = *(v0 + 1176);
  v15 = *(v0 + 984);

  sub_1000033C8(v13, &qword_10011EBB0, &qword_1000F04F0);
  sub_1000033C8(v12, &unk_10011F0C0, &qword_1000F1670);
  sub_1000A877C(v14, v15, type metadata accessor for HandoffInfo);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1584, sub_10008D214, v0 + 992);
}

uint64_t sub_10008C844()
{
  v110 = v0;
  v1 = v0[193];
  v2 = v0[191];
  v3 = v0[190];
  v4 = v0[189];
  v5 = v0[173];
  v6 = v0[154];
  v7 = v0[153];
  v8 = v0[148];
  v9 = v0[142];

  v4(v7, v6, v8);

  swift_errorRetain();
  v10 = sub_1000E1EE8();
  v11 = sub_1000E2698();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[186];
    v13 = v0[185];
    v102 = v0[183];
    v105 = v0[193];
    v100 = v0[182];
    v14 = v0[153];
    v15 = v0[148];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v109[0] = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_100029C70(v13, v12, v109);
    *(v16 + 12) = 2080;
    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
    v18 = sub_1000E2C18();
    v20 = v19;
    v100(v14, v15);
    v21 = sub_100029C70(v18, v20, v109);

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
    v23 = v0[183];
    v24 = v0[182];
    v25 = v0[153];
    v26 = v0[148];

    v24(v25, v26);
  }

  v27 = v0[188];
  swift_beginAccess();
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v0[154];
    v30 = v0[129];
    v31 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
    v32 = *(v30 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    v33 = v28;
    isa = sub_1000E0D18().super.isa;
    v35 = [v32 activeConversationWithUUID:isa];

    if (v35)
    {
      [*(v30 + v31) kickMember:v33 conversation:v35];

      v33 = v35;
    }
  }

  v36 = v0[193];
  v37 = v0[188];
  v38 = v0[187];
  v39 = v0[183];
  v40 = v0[182];
  v41 = v0[179];
  v106 = v0[160];
  v42 = v0[154];
  v43 = v0[148];
  v44 = v0[146];
  swift_willThrow();

  sub_1000D6278(2);

  sub_1000033C8(v44, &unk_10011FA80, &qword_1000F2660);
  v40(v42, v43);

  sub_1000033C8(v106, &qword_10011EBB0, &qword_1000F04F0);
  v0[197] = v0[193];
  v45 = v0[173];
  swift_errorRetain();
  v46 = sub_1000E1EE8();
  v47 = sub_1000E2678();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    swift_errorRetain();
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 4) = v50;
    *v49 = v50;
    _os_log_impl(&_mh_execute_header, v46, v47, "[StartConversation] Failed to start conversation due to %@.", v48, 0xCu);
    sub_1000033C8(v49, &unk_10011EAC0, &unk_1000F0E60);
  }

  v51 = v0[163];
  v52 = v0[161];
  v53 = v0[149];
  v54 = v0[148];

  sub_10000CB64(v51, v52, &unk_10011F0C0, &qword_1000F1670);
  if ((*(v53 + 48))(v52, 1, v54) == 1)
  {
    v55 = v0[129];
    sub_1000033C8(v0[161], &unk_10011F0C0, &qword_1000F1670);
    v56 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
    v57 = [*(v55 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager) avLessConversation];
    if (v57)
    {
      v58 = v57;
      if ([v57 isContinuitySession])
      {
        v59 = v0[173];
        v58 = v58;
        v60 = sub_1000E1EE8();
        v61 = sub_1000E2698();

        if (os_log_type_enabled(v60, v61))
        {
          v107 = v61;
          v62 = v0[155];
          v101 = v0[149];
          v63 = v0[148];
          buf = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v109[0] = v103;
          *buf = 136315138;
          v64 = [v58 UUID];
          sub_1000E0D38();

          sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
          v65 = sub_1000E2C18();
          v67 = v66;
          (*(v101 + 8))(v62, v63);
          v68 = sub_100029C70(v65, v67, v109);

          *(buf + 4) = v68;
          _os_log_impl(&_mh_execute_header, v60, v107, "[StartConversation] Leaving conversationManager avLess continuity conversation: %s", buf, 0xCu);
          sub_10000E9DC(v103);
        }

        v69 = v0[155];
        v70 = v0[149];
        v71 = v0[148];
        v72 = *(v55 + v56);
        v73 = [v58 UUID];
        sub_1000E0D38();

        v74 = sub_1000E0D18().super.isa;
        (*(v70 + 8))(v69, v71);
        [v72 leaveConversationWithUUID:v74];
      }
    }
  }

  else
  {
    v75 = v0[173];
    v76 = v0[152];
    v77 = v0[151];
    v78 = v0[149];
    v79 = v0[148];
    (*(v78 + 32))(v76, v0[161], v79);
    (*(v78 + 16))(v77, v76, v79);
    v80 = sub_1000E1EE8();
    v81 = sub_1000E2698();
    v82 = os_log_type_enabled(v80, v81);
    v83 = v0[151];
    v84 = v0[149];
    v85 = v0[148];
    if (v82)
    {
      v104 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v109[0] = v108;
      *v104 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v86 = sub_1000E2C18();
      v88 = v87;
      v89 = *(v84 + 8);
      v89(v83, v85);
      v90 = v89;
      v91 = sub_100029C70(v86, v88, v109);

      *(v104 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v80, v81, "[StartConversation] Leaving conversation: %s", v104, 0xCu);
      sub_10000E9DC(v108);
    }

    else
    {

      v92 = *(v84 + 8);
      v92(v83, v85);
      v90 = v92;
    }

    v93 = v0[152];
    v94 = v0[148];
    v95 = *(v0[129] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    v96 = sub_1000E0D18().super.isa;
    [v95 leaveConversationWithUUID:v96];

    v90(v93, v94);
  }

  v97 = v0[163];
  swift_willThrow();
  sub_1000033C8(v97, &unk_10011F0C0, &qword_1000F1670);

  return _swift_asyncLet_finish(v0 + 2, v0 + 198, sub_10008D810, v0 + 118);
}

uint64_t sub_10008D230()
{
  v1 = v0[171];
  v2 = v0[169];
  v3 = v0[166];
  v4 = v0[163];
  v5 = v0[162];
  v6 = v0[161];
  v7 = v0[160];
  v8 = v0[159];
  v9 = v0[158];
  v10 = v0[156];
  v13 = v0[155];
  v14 = v0[154];
  v15 = v0[153];
  v16 = v0[152];
  v17 = v0[151];
  v18 = v0[147];
  v19 = v0[146];
  v20 = v0[145];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10008D3AC()
{
  v1 = v0[171];

  v21 = v0[194];
  v2 = v0[169];
  v3 = v0[166];
  v4 = v0[163];
  v5 = v0[162];
  v6 = v0[161];
  v7 = v0[160];
  v8 = v0[159];
  v9 = v0[158];
  v10 = v0[156];
  v11 = v0[155];
  v14 = v0[154];
  v15 = v0[153];
  v16 = v0[152];
  v17 = v0[151];
  v18 = v0[147];
  v19 = v0[146];
  v20 = v0[145];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10008D52C()
{
  v1 = v0[171];

  v21 = v0[195];
  v2 = v0[169];
  v3 = v0[166];
  v4 = v0[163];
  v5 = v0[162];
  v6 = v0[161];
  v7 = v0[160];
  v8 = v0[159];
  v9 = v0[158];
  v10 = v0[156];
  v11 = v0[155];
  v14 = v0[154];
  v15 = v0[153];
  v16 = v0[152];
  v17 = v0[151];
  v18 = v0[147];
  v19 = v0[146];
  v20 = v0[145];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10008D6AC()
{
  v1 = v0[171];

  v21 = v0[196];
  v2 = v0[169];
  v3 = v0[166];
  v4 = v0[163];
  v5 = v0[162];
  v6 = v0[161];
  v7 = v0[160];
  v8 = v0[159];
  v9 = v0[158];
  v10 = v0[156];
  v11 = v0[155];
  v14 = v0[154];
  v15 = v0[153];
  v16 = v0[152];
  v17 = v0[151];
  v18 = v0[147];
  v19 = v0[146];
  v20 = v0[145];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10008D82C()
{
  v1 = v0[171];

  v21 = v0[197];
  v2 = v0[169];
  v3 = v0[166];
  v4 = v0[163];
  v5 = v0[162];
  v6 = v0[161];
  v7 = v0[160];
  v8 = v0[159];
  v9 = v0[158];
  v10 = v0[156];
  v11 = v0[155];
  v14 = v0[154];
  v15 = v0[153];
  v16 = v0[152];
  v17 = v0[151];
  v18 = v0[147];
  v19 = v0[146];
  v20 = v0[145];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10008D990()
{
  v63 = v0;
  v1 = v0[177];

  v0[197] = v0[180];
  v2 = v0[173];
  swift_errorRetain();
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2678();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[StartConversation] Failed to start conversation due to %@.", v5, 0xCu);
    sub_1000033C8(v6, &unk_10011EAC0, &unk_1000F0E60);
  }

  v8 = v0[163];
  v9 = v0[161];
  v10 = v0[149];
  v11 = v0[148];

  sub_10000CB64(v8, v9, &unk_10011F0C0, &qword_1000F1670);
  if ((*(v10 + 48))(v9, 1, v11) == 1)
  {
    v12 = v0[129];
    sub_1000033C8(v0[161], &unk_10011F0C0, &qword_1000F1670);
    v13 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
    v14 = [*(v12 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager) avLessConversation];
    if (v14)
    {
      v15 = v14;
      if ([v14 isContinuitySession])
      {
        v16 = v0[173];
        v15 = v15;
        v17 = sub_1000E1EE8();
        v18 = sub_1000E2698();

        if (os_log_type_enabled(v17, v18))
        {
          v60 = v18;
          v19 = v0[155];
          v57 = v0[149];
          v20 = v0[148];
          buf = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v62[0] = v58;
          *buf = 136315138;
          v21 = [v15 UUID];
          sub_1000E0D38();

          sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
          v22 = sub_1000E2C18();
          v24 = v23;
          (*(v57 + 8))(v19, v20);
          v25 = sub_100029C70(v22, v24, v62);

          *(buf + 4) = v25;
          _os_log_impl(&_mh_execute_header, v17, v60, "[StartConversation] Leaving conversationManager avLess continuity conversation: %s", buf, 0xCu);
          sub_10000E9DC(v58);
        }

        v26 = v0[155];
        v27 = v0[149];
        v28 = v0[148];
        v29 = *(v12 + v13);
        v30 = [v15 UUID];
        sub_1000E0D38();

        isa = sub_1000E0D18().super.isa;
        (*(v27 + 8))(v26, v28);
        [v29 leaveConversationWithUUID:isa];
      }
    }
  }

  else
  {
    v32 = v0[173];
    v33 = v0[152];
    v34 = v0[151];
    v35 = v0[149];
    v36 = v0[148];
    (*(v35 + 32))(v33, v0[161], v36);
    (*(v35 + 16))(v34, v33, v36);
    v37 = sub_1000E1EE8();
    v38 = sub_1000E2698();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[151];
    v41 = v0[149];
    v42 = v0[148];
    if (v39)
    {
      v59 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62[0] = v61;
      *v59 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v43 = sub_1000E2C18();
      v45 = v44;
      v46 = *(v41 + 8);
      v46(v40, v42);
      v47 = v46;
      v48 = sub_100029C70(v43, v45, v62);

      *(v59 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v37, v38, "[StartConversation] Leaving conversation: %s", v59, 0xCu);
      sub_10000E9DC(v61);
    }

    else
    {

      v49 = *(v41 + 8);
      v49(v40, v42);
      v47 = v49;
    }

    v50 = v0[152];
    v51 = v0[148];
    v52 = *(v0[129] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    v53 = sub_1000E0D18().super.isa;
    [v52 leaveConversationWithUUID:v53];

    v47(v50, v51);
  }

  v54 = v0[163];
  swift_willThrow();
  sub_1000033C8(v54, &unk_10011F0C0, &qword_1000F1670);

  return _swift_asyncLet_finish(v0 + 2, v0 + 198, sub_10008D810, v0 + 118);
}

uint64_t sub_10008DFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v4 = qword_1001230F0;
  v3[5] = qword_1001230F0;

  return _swift_task_switch(sub_10008E09C, v4, 0);
}

uint64_t sub_10008E09C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = sub_1000A75DC(&qword_100120020, a2, type metadata accessor for ConduitActor);
  v5 = swift_task_alloc();
  *(v2 + 48) = v5;
  *(v5 + 16) = *(v2 + 24);
  v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  *(v2 + 56) = v7;
  *v7 = v2;
  v7[1] = sub_10008E1D0;

  return withCheckedContinuation<A>(isolation:function:_:)(v2 + 64, v3, v4, 0xD000000000000027, 0x80000001000EBC60, sub_1000AC0DC, v5, &type metadata for Bool);
}

uint64_t sub_10008E1D0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_10008E2FC, v3, 0);
}

uint64_t sub_10008E344(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10000ADE4(&qword_10011FBE0, &qword_1000F2850);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_10000ADE4(&qword_10011FBE8, &qword_1000F2858);
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v9 = qword_1001230F0;
  v2[12] = qword_1001230F0;

  return _swift_task_switch(sub_10008E4B0, v9, 0);
}

uint64_t sub_10008E4B0()
{
  v1 = v0[8];
  v10 = v0[11];
  v11 = v0[9];
  v2 = v0[7];
  v9 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v12 = v0[10];
  v0[13] = sub_1000D605C(1);
  v0[2] = *(*(v3 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_10000ADE4(&unk_100120850, &qword_1000F2488);
  sub_100002C64(&qword_10011F9A0, &unk_100120850, &qword_1000F2488);
  v0[3] = sub_1000E2028();
  sub_10000ADE4(&qword_10011F9A8, &qword_1000F2490);
  sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  sub_100002C64(&qword_10011F9B0, &qword_10011F9A8, &qword_1000F2490);
  sub_1000E2038();

  *(swift_allocObject() + 16) = v4;
  sub_100002C64(&qword_10011FBF0, &qword_10011FBE0, &qword_1000F2850);

  sub_1000E2078();

  (*(v2 + 8))(v1, v9);
  sub_100002C64(&qword_10011FBF8, &qword_10011FBE8, &qword_1000F2858);
  v5 = sub_1000E2028();
  v0[14] = v5;
  (*(v12 + 8))(v10, v11);
  v6 = *(v3 + OBJC_IVAR___CSDNeighborhoodActivityConduit_publisherService);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_10008E7D4;

  return sub_10009F290(v5);
}

uint64_t sub_10008E7D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  v4[16] = v1;

  v7 = v4[12];
  if (v1)
  {
    v8 = sub_10008E9AC;
  }

  else
  {
    v4[17] = a1;
    v8 = sub_10008E910;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10008E910()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[8];

  sub_1000D6278(1);

  v5 = v0[1];
  v6 = v0[17];

  return v5(v6);
}

uint64_t sub_10008E9AC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[8];

  sub_1000D6278(1);

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_10008EA44(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E15C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E0F38();
  sub_1000E0F58();
  v8 = &enum case for NCProtoConversationAVMode.audio(_:);
  v9 = &enum case for NCProtoConversationAVMode.none(_:);
  if (a2)
  {
    v9 = &enum case for NCProtoConversationAVMode.video(_:);
  }

  if (a2 != 1)
  {
    v8 = v9;
  }

  (*(v4 + 104))(v7, *v8, v3);
  return sub_1000E0FC8();
}

uint64_t sub_10008EB5C(id *a1, uint64_t a2)
{
  v3 = [*a1 remoteMembers];
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
  v4 = sub_1000E25E8();

  sub_10008EC28(v4, a2);
  LOBYTE(a2) = v5;

  return a2 & 1;
}

void sub_10008EC28(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      __CocoaSet.isEqual(to:)(v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1000A55D4(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_1000E2808(v20);
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_1000E2818();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

id sub_10008EEA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v32._countAndFlagsBits = sub_1000E2338();
  v11 = sub_1000E2408(v32);

  if (!v11)
  {
    v19 = objc_opt_self();

    v20 = sub_1000E2328();
    v21 = [v19 normalizedHandleWithDestinationID:v20];

    if (v21)
    {

      *a5 = v21;
      return result;
    }

    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_100123128);

    v23 = sub_1000E1EE8();
    v24 = sub_1000E2678();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v25 = 136315394;
      v29 = sub_100029C70(v10, v9, &v31);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_100029C70(*(a3 + 16), *(a3 + 24), &v31);
      v27 = "[AddParticipants] Rejecting request to add conversation participant: %s from %s because it is an invalid handle.";
      goto LABEL_15;
    }

LABEL_16:

    goto LABEL_17;
  }

  v12 = *(a2 + 48);
  v13 = *(v12 + 16);

  if (v13)
  {
    v14 = sub_10000B2D0(v10, v9);
    if (v15)
    {
      v16 = v14;

      v17 = *(*(v12 + 56) + 8 * v16);
      *a5 = v17;
      return v17;
    }
  }

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v22 = sub_1000E1F08();
  sub_1000049D0(v22, qword_100123128);

  v23 = sub_1000E1EE8();
  v24 = sub_1000E2678();

  if (!os_log_type_enabled(v23, v24))
  {
    goto LABEL_16;
  }

  v25 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  *v25 = 136315394;
  v26 = sub_100029C70(v10, v9, &v31);

  *(v25 + 4) = v26;
  *(v25 + 12) = 2080;
  *(v25 + 14) = sub_100029C70(*(a3 + 16), *(a3 + 24), &v31);
  v27 = "[AddParticipants] Rejecting request to add conversation participant: %s from %s because it is an anonym without a handle.";
LABEL_15:
  _os_log_impl(&_mh_execute_header, v23, v24, v27, v25, 0x16u);
  swift_arrayDestroy();

LABEL_17:

  v30 = TUMakeNeighborhoodConduitError();
  result = swift_willThrow();
  *a4 = v30;
  return result;
}

uint64_t sub_10008F254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_1000E0D68();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_1000E2B28();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v12 = qword_1001230F0;
  v5[11] = qword_1001230F0;

  return _swift_task_switch(sub_10008F3A8, v12, 0);
}

uint64_t sub_10008F3A8()
{
  v1 = *(v0 + 80);
  sub_1000E2CF8();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_10008F474;
  v3 = *(v0 + 80);

  return sub_100003DA4(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10008F474()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 88);
  if (v0)
  {
    v9 = sub_10008F8C0;
  }

  else
  {
    v9 = sub_10008F5FC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10008F5FC()
{
  v1 = *(*(v0[3] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_1000E1FF8();
  v2 = v0[2];
  if (v2)
  {
    v4 = v0[6];
    v3 = v0[7];
    v6 = v0[4];
    v5 = v0[5];
    v7 = *(type metadata accessor for HandoffInfo(0) + 24);
    v8 = [v2 UUID];
    sub_1000E0D38();

    LOBYTE(v8) = sub_1000E0D28();
    (*(v4 + 8))(v3, v5);
    if (v8)
    {
      v9 = [v2 mergedRemoteMembers];
      sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
      sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
      v10 = sub_1000E25E8();

      v11 = (v10 & 0xC000000000000001) != 0 ? sub_1000E2968() : *(v10 + 16);

      if (!v11)
      {
        if (qword_10011DC60 != -1)
        {
          swift_once();
        }

        v12 = sub_1000E1F08();
        sub_1000049D0(v12, qword_100123128);
        v13 = sub_1000E1EE8();
        v14 = sub_1000E2698();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "[AddParticipants] Attempted to add a blocked contact but secondary member did not handle leaving the conversation so primary is leaving", v15, 2u);
        }

        v16 = v0[3];

        v17 = *(v16 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
        isa = sub_1000E0D18().super.isa;
        [v17 leaveConversationWithUUID:isa];
      }
    }
  }

  v19 = v0[10];
  v20 = v0[7];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10008F8C0()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_10008F930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = sub_1000E1398();
  v6[25] = v7;
  v8 = *(v7 - 8);
  v6[26] = v8;
  v9 = *(v8 + 64) + 15;
  v6[27] = swift_task_alloc();
  v10 = sub_1000E0D68();
  v6[28] = v10;
  v11 = *(v10 - 8);
  v6[29] = v11;
  v12 = *(v11 + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v13 = sub_1000E1338();
  v6[33] = v13;
  v14 = *(v13 - 8);
  v6[34] = v14;
  v15 = *(v14 + 64) + 15;
  v6[35] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230F0;
  v6[36] = qword_1001230F0;

  return _swift_task_switch(sub_10008FB00, v16, 0);
}

uint64_t sub_10008FB00()
{
  v24 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[20];
  v5 = sub_1000E1F08();
  v0[37] = sub_1000049D0(v5, qword_100123128);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = sub_1000E12E8();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100029C70(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Handoff][PullExpanse] Initiating pull task for %s.", v12, 0xCu);
    sub_10000E9DC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[38] = v18;
  *v18 = v0;
  v18[1] = sub_10008FD40;
  v20 = v0[21];
  v19 = v0[22];
  v21 = v0[20];

  return sub_10009090C((v0 + 2), v21, v19);
}

uint64_t sub_10008FD40()
{
  v2 = *(*v1 + 304);
  v3 = *v1;
  v3[39] = v0;

  if (v0)
  {
    v4 = v3[35];
    v6 = v3[31];
    v5 = v3[32];
    v7 = v3[30];
    v8 = v3[27];

    v9 = v3[1];

    return v9();
  }

  else
  {
    v11 = v3[36];

    return _swift_task_switch(sub_10008FEC0, v11, 0);
  }
}

uint64_t sub_10008FEC0()
{
  v44 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 168);
  sub_100091CD0(v0 + 16);
  *(v0 + 320) = v3;
  if (v1)
  {
    sub_1000AB184(v0 + 16);
    v4 = *(v0 + 280);
    v5 = *(v0 + 248);
    v6 = *(v0 + 256);
    v7 = *(v0 + 240);
    v8 = *(v0 + 216);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = v3;
    v12 = *(v0 + 296);
    v14 = *(v0 + 176);
    v13 = *(v0 + 184);
    swift_beginAccess();
    v15 = *(v13 + 16);
    *(v13 + 16) = v11;
    v16 = v11;

    sub_1000AB1B4(v0 + 16, v0 + 72);

    v17 = sub_1000E1EE8();
    v18 = sub_1000E2698();
    sub_1000AB184(v0 + 16);

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 256);
      v21 = *(v0 + 224);
      v20 = *(v0 + 232);
      v40 = *(v0 + 176);
      v22 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v22 = 136315394;
      v23 = [*(v0 + 48) UUID];
      sub_1000E0D38();

      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v24 = sub_1000E2C18();
      v26 = v25;
      (*(v20 + 8))(v19, v21);
      v27 = sub_100029C70(v24, v26, v43);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_100029C70(*(v40 + 16), *(v40 + 24), v43);
      _os_log_impl(&_mh_execute_header, v17, v18, "[Handoff][PullExpanse] Returning add member response for %s to %s.", v22, 0x16u);
      swift_arrayDestroy();
    }

    v41 = *(v0 + 248);
    v42 = *(v0 + 240);
    v28 = *(v0 + 208);
    v29 = *(v0 + 216);
    v31 = *(v0 + 192);
    v30 = *(v0 + 200);
    v32 = *(v0 + 168);
    v33 = *(v0 + 176);
    v34 = swift_task_alloc();
    *(v34 + 16) = v0 + 16;
    *(v34 + 24) = v32;
    sub_1000A75DC(&qword_10011FC90, 255, &type metadata accessor for NCProtoAddMemberResponse);
    sub_1000E0E38();

    sub_1000E1FC8();
    (*(v28 + 8))(v29, v30);
    *(v0 + 328) = *(v33 + 16);
    *(v0 + 336) = *(v33 + 24);
    v35 = *(v0 + 48);

    v36 = [v35 UUID];
    sub_1000E0D38();

    v37 = [v35 groupUUID];
    sub_1000E0D38();

    v38 = swift_task_alloc();
    *(v0 + 344) = v38;
    *v38 = v0;
    v38[1] = sub_100090308;
    v39 = *(v0 + 176);

    return sub_100014704();
  }
}

uint64_t sub_100090308(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v17 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v6 = v4[42];
    v7 = v4[36];
    v9 = v4[30];
    v8 = v4[31];
    v12 = v4 + 28;
    v10 = v4[28];
    v11 = v12[1];

    v13 = *(v11 + 8);
    v13(v9, v10);
    v13(v8, v10);
    v14 = sub_100090794;
    v15 = v7;
  }

  else
  {
    v15 = v4[36];
    v4[45] = a1;
    v14 = sub_10009047C;
  }

  return _swift_task_switch(v14, v15, 0);
}

uint64_t sub_10009047C()
{
  v1 = v0[45];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[19];
  *v9 = 0;
  *(v9 + 8) = v3;
  *(v9 + 16) = v2;
  v10 = type metadata accessor for HandoffInfo(0);
  v11 = *(v8 + 32);
  v11(v9 + v10[6], v6, v7);
  v11(v9 + v10[7], v5, v7);
  *(v9 + v10[8]) = v1;
  *(v9 + v10[9]) = v4;
  *(v9 + v10[10]) = &_swiftEmptySetSingleton;
  v12 = swift_task_alloc();
  v0[46] = v12;
  *v12 = v0;
  v12[1] = sub_1000905BC;
  v13 = v0[21];
  v14 = v0[19];

  return sub_100092690(v14);
}

uint64_t sub_1000905BC()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 288);
  if (v0)
  {
    v6 = sub_100090844;
  }

  else
  {
    v6 = sub_1000906E8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000906E8()
{
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = v0[27];
  sub_1000AB184((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_100090794()
{
  sub_1000AB184(v0 + 16);
  v1 = *(v0 + 352);
  v2 = *(v0 + 280);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100090844()
{
  v1 = v0[19];
  sub_1000AB184((v0 + 2));
  sub_1000AD5EC(v1, type metadata accessor for HandoffInfo);
  v2 = v0[47];
  v3 = v0[35];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  v7 = v0[27];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10009090C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000E1318();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_1000E0D68();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v12 = qword_1001230F0;
  v4[16] = qword_1001230F0;

  return _swift_task_switch(sub_100090AC0, v12, 0);
}

uint64_t sub_100090AC0()
{
  v86 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  sub_1000E12E8();
  sub_1000E0CF8();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000033C8(v0[9], &unk_10011F0C0, &qword_1000F1670);
LABEL_18:
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v26 = sub_1000E1F08();
    sub_1000049D0(v26, qword_100123128);
    v27 = sub_1000E1EE8();
    v28 = sub_1000E2698();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "[Handoff][PullExpanse] Invalid arguments for add member request.", v29, 2u);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    goto LABEL_23;
  }

  v5 = v0[3];
  (*(v0[11] + 32))(v0[15], v0[9], v0[10]);
  v6 = sub_1000E12C8();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    (*(v0[11] + 8))(v0[15], v0[10]);
    goto LABEL_18;
  }

  if ([*(v0[5] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceSupport) isGreenTea])
  {
    v10 = *(v0[5] + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags);
    if (!TUGreenTeaLagunaEnabled())
    {
      v54 = v0[15];
      v55 = v0[10];
      v56 = v0[11];
      TUMakeNeighborhoodConduitError();
      swift_willThrow();
      (*(v56 + 8))(v54, v55);
LABEL_23:
      v31 = v0[14];
      v30 = v0[15];
      v33 = v0[12];
      v32 = v0[13];
      v35 = v0[8];
      v34 = v0[9];

      v36 = v0[1];

      return v36();
    }
  }

  v11 = v0[15];
  v12 = *(v0[5] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  isa = sub_1000E0D18().super.isa;
  v14 = [v12 activeConversationWithUUID:isa];
  v0[17] = v14;

  if (!v14)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v37 = v0[15];
    v39 = v0[11];
    v38 = v0[12];
    v40 = v0[10];
    v41 = sub_1000E1F08();
    sub_1000049D0(v41, qword_100123128);
    (*(v39 + 16))(v38, v37, v40);
    v42 = sub_1000E1EE8();
    v43 = sub_1000E2698();
    v44 = os_log_type_enabled(v42, v43);
    v46 = v0[11];
    v45 = v0[12];
    v47 = v0[10];
    if (v44)
    {
      v48 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v85[0] = v83;
      *v48 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      buf = v43;
      v49 = sub_1000E2C18();
      v51 = v50;
      v52 = *(v46 + 8);
      v52(v45, v47);
      v53 = sub_100029C70(v49, v51, v85);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v42, buf, "[Handoff][PullExpanse] Unable to find conversation with %s.", v48, 0xCu);
      sub_10000E9DC(v83);
    }

    else
    {

      v52 = *(v46 + 8);
      v52(v45, v47);
    }

    v57 = v0[15];
    v58 = v0[10];
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v52(v57, v58);
    goto LABEL_23;
  }

  v16 = v0[7];
  v15 = v0[8];
  v17 = v0[6];
  v18 = v0[3];
  sub_1000E1328();
  v19 = sub_1000E1308();
  v0[18] = v19;
  (*(v16 + 8))(v15, v17);
  if (v19 != 1)
  {
    v20 = [v14 activitySessions];
    sub_10000CAAC(0, &qword_10011FBB8, TUConversationActivitySession_ptr);
    sub_10000EA70(&unk_10011FBC0, &qword_10011FBB8, TUConversationActivitySession_ptr);
    v21 = sub_1000E25E8();

    v22 = sub_10005B1DC(v21);

    if (v22)
    {
      v23 = [v22 activity];
      v24 = [v23 isEligibleForHandoff];

      if (!v24)
      {
        if (qword_10011DC60 != -1)
        {
          swift_once();
        }

        v59 = v0[15];
        v60 = v0[13];
        v61 = v0[10];
        v62 = v0[11];
        v63 = sub_1000E1F08();
        sub_1000049D0(v63, qword_100123128);
        (*(v62 + 16))(v60, v59, v61);
        v64 = sub_1000E1EE8();
        v65 = sub_1000E2698();
        v66 = os_log_type_enabled(v64, v65);
        v67 = v0[13];
        v69 = v0[10];
        v68 = v0[11];
        if (v66)
        {
          bufa = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v85[0] = v84;
          *bufa = 136315138;
          sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
          v80 = v65;
          v70 = sub_1000E2C18();
          v72 = v71;
          v73 = *(v68 + 8);
          v73(v67, v69);
          v74 = v73;
          v75 = sub_100029C70(v70, v72, v85);

          *(bufa + 4) = v75;
          _os_log_impl(&_mh_execute_header, v64, v80, "[Handoff][PullExpanse] Unable to pull because conversation %s has an unsupported activity.", bufa, 0xCu);
          sub_10000E9DC(v84);
        }

        else
        {

          v76 = *(v68 + 8);
          v76(v67, v69);
          v74 = v76;
        }

        v77 = v0[15];
        v78 = v0[10];
        TUMakeNeighborhoodConduitError();
        swift_willThrow();

        v74(v77, v78);
        goto LABEL_23;
      }
    }
  }

  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v25 = qword_1001230E0;
  v0[19] = qword_1001230E0;

  return _swift_task_switch(sub_1000913A0, v25, 0);
}

uint64_t sub_1000913A0()
{
  v1 = v0[16];
  v2 = v0[4];
  v0[20] = sub_100012CD8();

  return _swift_task_switch(sub_100091410, v1, 0);
}

uint64_t sub_100091410()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[5];
  v6 = swift_task_alloc();
  v0[21] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v1;
  v6[5] = v2;
  v7 = swift_task_alloc();
  v0[22] = v7;
  *(v7 + 16) = v5;
  v9 = sub_1000A75DC(&qword_100120020, v8, type metadata accessor for ConduitActor);
  v10 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_10009156C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 30, &unk_1000F29B8, v6, sub_1000AC9E8, v7, v4, v9, &type metadata for Bool);
}

uint64_t sub_10009156C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v10 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = sub_100091A64;
  }

  else
  {
    v7 = v2[21];
    v6 = v2[22];
    v8 = v2[16];

    v5 = sub_10009169C;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10009169C()
{
  v46 = v0;

  if (*(v0 + 240) != 1)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_100123128);
    (*(v6 + 16))(v3, v4, v5);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2698();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 112);
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v14 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v15 = sub_1000E2C18();
      v17 = v16;
      v18 = v13;
      v19 = *(v12 + 8);
      v19(v11, v18);
      v20 = sub_100029C70(v15, v17, &v45);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "[Handoff][PullExpanse] Split session approval denied for %s.", v14, 0xCu);
      sub_10000E9DC(v44);
    }

    else
    {

      v21 = v13;
      v19 = *(v12 + 8);
      v19(v11, v21);
    }

    v22 = *(v0 + 136);
    v23 = *(v0 + 120);
    v24 = *(v0 + 80);
    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v19(v23, v24);
    goto LABEL_10;
  }

  v1 = *(v0 + 192);
  sub_1000E2588();
  if (v1)
  {
    v2 = *(v0 + 136);
    (*(*(v0 + 88) + 8))(*(v0 + 120), *(v0 + 80));

LABEL_10:
    v26 = *(v0 + 112);
    v25 = *(v0 + 120);
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v30 = *(v0 + 64);
    v29 = *(v0 + 72);

    v31 = *(v0 + 8);

    return v31();
  }

  v33 = *(v0 + 24);
  v34 = sub_1000E12C8();
  v36 = v35;
  if (sub_1000E12F8())
  {
    v37 = *(v0 + 24);
    v38 = sub_1000E12D8();
    v40 = v39;
    isa = sub_1000E0C78().super.isa;
    v42 = [objc_opt_self() voucherFromMessagingData:isa];

    sub_100006660(v38, v40);
  }

  else
  {
    v42 = 0;
  }

  v43 = *(v0 + 152);
  *(v0 + 200) = v42;
  *(v0 + 208) = v36;
  *(v0 + 216) = v34;

  return _swift_task_switch(sub_100091B4C, v43, 0);
}

uint64_t sub_100091A64()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);

  (*(v6 + 8))(v4, v5);
  v7 = *(v0 + 192);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100091B4C()
{
  v1 = v0[16];
  v2 = v0[4];
  v0[28] = *(v2 + 48);
  v0[29] = *(v2 + 56);

  return _swift_task_switch(sub_100091BCC, v1, 0);
}

uint64_t sub_100091BCC()
{
  v13 = v0[28];
  v14 = v0[29];
  v1 = v0[27];
  v2 = v0[25];
  v11 = v0[17];
  v12 = v0[26];
  v3 = v0[14];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[2];
  (*(v0[11] + 8))(v0[15], v0[10]);

  *v8 = 0;
  *(v8 + 8) = v1;
  *(v8 + 16) = v12;
  *(v8 + 24) = v2;
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  *(v8 + 48) = v14;
  v9 = v0[1];

  return v9();
}

void sub_100091CD0(uint64_t a1)
{
  v4 = sub_1000E0D68();
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  __chkstk_darwin(v4);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = *(a1 + 8);
  v50 = *(a1 + 16);
  v9 = sub_1000E2328();
  v10 = [v7 normalizedGenericHandleForValue:v9];

  if (!v10)
  {
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    return;
  }

  v48 = v1;
  v49 = v2;
  v11 = [objc_allocWithZone(TUConversationMember) initWithHandle:v10];
  v12 = *(a1 + 24);
  v54 = v12;
  if (v12)
  {
    v46 = v8;
    v47 = v4;
    v13 = v10;
    v14 = v10;
    sub_10000CB64(&v54, v53, &qword_10011FBB0, &qword_1000F2810);
    v15 = [v12 unsafeData];
    v16 = sub_1000E0C88();
    v18 = v17;

    isa = sub_1000E0C78().super.isa;
    v20 = [objc_opt_self() associationForHandle:v14 from:isa];

    sub_100006660(v16, v18);
    if (v20)
    {
      [v11 setValidationSource:2];
      [v11 setAssociationVoucher:v12];
      [v11 setAssociation:v20];
    }

    sub_1000033C8(&v54, &qword_10011FBB0, &qword_1000F2810);
    v10 = v13;
    v8 = v46;
    v4 = v47;
  }

  if (*a1)
  {
    [v11 setIsLightweightMember:0];
    v21 = [objc_allocWithZone(TULocalNicknameInfo) init];
    if (*(a1 + 48))
    {
      v22 = *(a1 + 40);
      v23 = sub_1000E2328();
    }

    else
    {
      v23 = 0;
    }

    v26 = [v21 appleTVNicknameForDeviceName:v23];

    if (!v26)
    {
      sub_1000E2338();
      v26 = sub_1000E2328();
    }

    [v11 setNickname:v26];
  }

  else
  {
    [v11 setIsLightweightMember:1];
    v24 = *(a1 + 32);
    v25 = [v24 localMember];
    if (!v25)
    {
      TUMakeNeighborhoodConduitError();
      swift_willThrow();

      return;
    }

    v26 = v25;
    v27 = [v25 handle];
    [v11 setLightweightPrimary:v27];

    [v11 setLightweightPrimaryParticipantIdentifier:{objc_msgSend(v24, "localParticipantIdentifier")}];
  }

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v28 = sub_1000E1F08();
  sub_1000049D0(v28, qword_100123128);
  sub_1000AB1B4(a1, v53);
  v29 = sub_1000E1EE8();
  v30 = sub_1000E2698();
  sub_1000AB184(a1);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47 = v10;
    v53[0] = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_100029C70(v8, v50, v53);
    *(v31 + 12) = 2080;
    v33 = [*(a1 + 32) UUID];
    v34 = v51;
    sub_1000E0D38();

    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
    v35 = sub_1000E2C18();
    v36 = v4;
    v38 = v37;
    (*(v52 + 8))(v34, v36);
    v39 = sub_100029C70(v35, v38, v53);

    *(v31 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "[Handoff] Adding remote member %s to %s.", v31, 0x16u);
    swift_arrayDestroy();
    v10 = v47;
  }

  v40 = *(v48 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  sub_10000ADE4(&qword_10011EB20, &qword_1000F2570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F0F40;
  *(inited + 32) = v11;
  v42 = v40;
  v11;
  sub_1000E03A0(inited);
  swift_setDeallocating();
  v43 = *(inited + 16);
  swift_arrayDestroy();
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
  v44 = sub_1000E25D8().super.isa;

  [v42 addRemoteMembers:v44 toConversation:*(a1 + 32)];
}

uint64_t sub_1000923AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v24 = a3;
  v4 = sub_1000E21E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000E2248();
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v22);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000E0D68();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [*(a2 + 32) groupUUID];
  sub_1000E0D38();

  sub_1000E2238();
  v25 = sub_1000E0D48();
  v26 = v18;
  sub_1000E2218();
  sub_1000E2228();
  sub_1000E21D8();
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v22);
  (*(v13 + 8))(v16, v21);
  sub_1000E1388();
  sub_1000DABD8();
  return sub_1000E1378();
}

uint64_t sub_100092690(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for HandoffInfo(0);
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  v2[11] = qword_1001230F0;

  return _swift_task_switch(sub_100092810, v8, 0);
}

uint64_t sub_100092810()
{
  v25 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = sub_1000E1F08();
  *(v0 + 96) = sub_1000049D0(v3, qword_100123128);
  sub_1000A87E4(v2, v1, type metadata accessor for HandoffInfo);
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    v10 = sub_1000DDC88();
    v12 = v11;
    sub_1000AD5EC(v7, type metadata accessor for HandoffInfo);
    v13 = sub_100029C70(v10, v12, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[Handoff] Waiting for TV to join %s.", v8, 0xCu);
    sub_10000E9DC(v9);
  }

  else
  {

    sub_1000AD5EC(v7, type metadata accessor for HandoffInfo);
  }

  v14 = *(v0 + 24);
  sub_10007E37C(*(v0 + 16), *(v0 + 40));
  v15 = *(v0 + 72);
  v16 = *(v0 + 40);
  (*(*(v0 + 56) + 56))(v16, 0, 1, *(v0 + 48));
  sub_1000A877C(v16, v15, type metadata accessor for HandoffInfo);
  v17 = *(v0 + 72);
  v18 = *(v0 + 48);
  v19 = [*(v17 + *(v18 + 36)) handle];
  *(v0 + 104) = v19;
  v20 = *(v18 + 24);
  *(v0 + 152) = v20;
  v21 = swift_task_alloc();
  *(v0 + 112) = v21;
  *v21 = v0;
  v21[1] = sub_100092B2C;
  v22 = *(v0 + 24);

  return sub_100096690(v19, v17 + v20);
}

uint64_t sub_100092B2C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 120) = v0;

  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_1000931A0;
  }

  else
  {
    v7 = sub_100092C70;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100092C70()
{
  v39 = v0;
  v1 = *(v0 + 120);
  sub_1000E2588();
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (v1)
  {
    v4 = *(v0 + 80);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    sub_1000AD5EC(*(v0 + 72), type metadata accessor for HandoffInfo);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 96);
    sub_1000A87E4(*(v0 + 72), *(v0 + 64), type metadata accessor for HandoffInfo);
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 64);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38 = v15;
      *v14 = 136315138;
      v16 = sub_1000DDC88();
      v18 = v17;
      sub_1000AD5EC(v13, type metadata accessor for HandoffInfo);
      v19 = sub_100029C70(v16, v18, &v38);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "[Handoff] TV successfully joined conversation: %s", v14, 0xCu);
      sub_10000E9DC(v15);
    }

    else
    {

      sub_1000AD5EC(v13, type metadata accessor for HandoffInfo);
    }

    v20 = *(v0 + 152);
    v21 = *(v0 + 72);
    v22 = *(v0 + 24);
    v23 = *(v22 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    isa = sub_1000E0D18().super.isa;
    [v23 setSharePlayHandedOff:1 onConversationWithUUID:isa];

    v25 = *(v22 + OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy);
    if (v25)
    {
      *(v25 + 72) = 0;

      sub_10000F7FC();
    }

    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v29 = *(v0 + 24);
    v28 = *(v0 + 32);
    sub_10001112C(5);
    v30 = *(v27 + 8);
    *(v0 + 128) = v30;
    v31 = *(v27 + 16);
    *(v0 + 136) = v31;
    v32 = sub_1000E2538();
    (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
    v34 = sub_1000A75DC(&qword_100120020, v33, type metadata accessor for ConduitActor);
    v35 = swift_allocObject();
    v35[2] = v26;
    v35[3] = v34;
    v35[4] = v29;
    v35[5] = v30;
    v35[6] = v31;
    v36 = v29;

    sub_1000223DC(0, 0, v28, &unk_1000F26F8, v35);

    *(v0 + 144) = *&v36[OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController];
    if (qword_10011DC08 != -1)
    {
      swift_once();
    }

    v37 = qword_1001230D0;

    return _swift_task_switch(sub_100093074, v37, 0);
  }
}

uint64_t sub_100093074()
{
  v1 = v0[18];
  v2 = v0[11];
  sub_100031358(v0[16], v0[17]);

  return _swift_task_switch(sub_1000930E4, v2, 0);
}

uint64_t sub_1000930E4()
{
  v1 = v0[10];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  sub_1000AD5EC(v0[9], type metadata accessor for HandoffInfo);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000931A0()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[8];
  v5 = v0[4];
  v4 = v0[5];
  sub_1000AD5EC(v0[9], type metadata accessor for HandoffInfo);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10009325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 192) = a8;
  *(v8 + 200) = v18;
  *(v8 + 409) = a7;
  *(v8 + 176) = a4;
  *(v8 + 184) = a6;
  *(v8 + 408) = a5;
  *(v8 + 160) = a2;
  *(v8 + 168) = a3;
  *(v8 + 152) = a1;
  v9 = sub_1000E1028();
  *(v8 + 208) = v9;
  v10 = *(v9 - 8);
  *(v8 + 216) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v12 = sub_1000E0D68();
  *(v8 + 232) = v12;
  v13 = *(v12 - 8);
  *(v8 + 240) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v15 = qword_1001230F0;
  *(v8 + 280) = qword_1001230F0;

  return _swift_task_switch(sub_1000933F0, v15, 0);
}

uint64_t sub_1000933F0()
{
  v30 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = sub_1000E1F08();
  *(v0 + 288) = sub_1000049D0(v6, qword_100123128);
  (*(v3 + 16))(v1, v4, v2);

  v7 = sub_1000E1EE8();
  v8 = sub_1000E2698();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 272);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  if (v9)
  {
    v28 = *(v0 + 168);
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136315394;
    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
    v14 = sub_1000E2C18();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_100029C70(v14, v16, &v29);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100029C70(*(v28 + 16), *(v28 + 24), &v29);
    _os_log_impl(&_mh_execute_header, v7, v8, "[Handoff][Push] Initiating push of %s to %s.", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  *(v0 + 296) = v17;
  v19 = *(v0 + 408);
  v20 = swift_task_alloc();
  *(v0 + 304) = v20;
  *v20 = v0;
  v20[1] = sub_1000936C8;
  v21 = *(v0 + 184);
  v22 = *(v0 + 192);
  v23 = *(v0 + 409);
  v24 = *(v0 + 168);
  v25 = *(v0 + 176);
  v26 = *(v0 + 160);

  return sub_10009463C(v0 + 16, v26, v24, v19 & 1, v21, v23, v22);
}

uint64_t sub_1000936C8()
{
  v2 = *(*v1 + 304);
  v3 = *v1;
  v3[39] = v0;

  if (v0)
  {
    v5 = v3[33];
    v4 = v3[34];
    v7 = v3[31];
    v6 = v3[32];
    v8 = v3[28];

    v9 = v3[1];

    return v9();
  }

  else
  {
    v11 = v3[35];

    return _swift_task_switch(sub_100093844, v11, 0);
  }
}

uint64_t sub_100093844()
{
  v41 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 176);
  sub_100091CD0(v0 + 16);
  *(v0 + 320) = v3;
  if (v1)
  {
    sub_1000AB184(v0 + 16);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v7 = *(v0 + 248);
    v6 = *(v0 + 256);
    v8 = *(v0 + 224);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = v3;
    v12 = *(v0 + 288);
    v13 = *(v0 + 200);
    v14 = *(v0 + 168);
    swift_beginAccess();
    v15 = *(v13 + 16);
    *(v13 + 16) = v11;
    v16 = v11;

    sub_1000AB1B4(v0 + 16, v0 + 72);
    v17 = sub_1000E1EE8();
    v18 = sub_1000E2698();
    sub_1000AB184(v0 + 16);

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 264);
      v20 = *(v0 + 232);
      v37 = *(v0 + 240);
      v38 = *(v0 + 296);
      v39 = *(v0 + 168);
      v21 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v21 = 136315394;
      v22 = [*(v0 + 48) UUID];
      sub_1000E0D38();

      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v23 = sub_1000E2C18();
      v25 = v24;
      v38(v19, v20);
      v26 = sub_100029C70(v23, v25, v40);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_100029C70(*(v39 + 16), *(v39 + 24), v40);
      _os_log_impl(&_mh_execute_header, v17, v18, "[Handoff][Push] Sending join event for %s to %s.", v21, 0x16u);
      swift_arrayDestroy();
    }

    v27 = *(v0 + 224);
    v28 = *(v0 + 208);
    v30 = *(v0 + 168);
    v29 = *(v0 + 176);
    v31 = *(v29 + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
    v32 = swift_task_alloc();
    *(v32 + 16) = v0 + 16;
    *(v32 + 24) = v29;
    sub_1000A75DC(&qword_10011EDE8, 255, &type metadata accessor for NCProtoJoinEvent);
    sub_1000E0E38();

    v33 = *(v30 + 16);
    *(v0 + 328) = v33;
    v34 = *(v30 + 24);
    *(v0 + 336) = v34;
    if (qword_10011DC18 != -1)
    {
      swift_once();
    }

    *(v0 + 344) = qword_1001230E0;
    v35 = swift_task_alloc();
    *(v0 + 352) = v35;
    *v35 = v0;
    v35[1] = sub_100093C70;
    v36 = *(v0 + 224);

    return sub_100026974(0, v36, v33, v34, 0);
  }
}

uint64_t sub_100093C70()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 344);
  if (v0)
  {
    v6 = sub_100094088;
  }

  else
  {
    v6 = sub_100093D9C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100093D9C()
{
  v1 = v0[35];
  (*(v0[27] + 8))(v0[28], v0[26]);

  return _swift_task_switch(sub_100093E18, v1, 0);
}

uint64_t sub_100093E18()
{
  v1 = v0[42];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[6];

  v5 = [v4 UUID];
  sub_1000E0D38();

  v6 = [v4 groupUUID];
  sub_1000E0D38();

  v7 = swift_task_alloc();
  v0[46] = v7;
  *v7 = v0;
  v7[1] = sub_100093F10;
  v8 = v0[21];

  return sub_100014704();
}

uint64_t sub_100093F10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v17 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v6 = v4[42];
    v7 = v4[37];
    v8 = v4[35];
    v10 = v4[31];
    v9 = v4[32];
    v13 = v4 + 29;
    v11 = v4[29];
    v12 = v13[1];

    v7(v10, v11);
    v7(v9, v11);
    v14 = sub_1000944CC;
    v15 = v8;
  }

  else
  {
    v15 = v4[35];
    v4[48] = a1;
    v14 = sub_1000941B0;
  }

  return _swift_task_switch(v14, v15, 0);
}

uint64_t sub_100094088()
{
  v1 = v0[35];
  (*(v0[27] + 8))(v0[28], v0[26]);

  return _swift_task_switch(sub_100094104, v1, 0);
}

uint64_t sub_100094104()
{
  sub_1000AB184(v0 + 16);
  v1 = *(v0 + 360);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 224);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000941B0()
{
  v1 = *(v0 + 384);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 320);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 152);
  *v9 = *(v0 + 408) & 1;
  *(v9 + 8) = v3;
  *(v9 + 16) = v2;
  v10 = type metadata accessor for HandoffInfo(0);
  v11 = *(v8 + 32);
  v11(v9 + v10[6], v6, v7);
  v11(v9 + v10[7], v5, v7);
  *(v9 + v10[8]) = v1;
  *(v9 + v10[9]) = v4;
  *(v9 + v10[10]) = &_swiftEmptySetSingleton;
  v12 = swift_task_alloc();
  *(v0 + 392) = v12;
  *v12 = v0;
  v12[1] = sub_1000942F8;
  v13 = *(v0 + 176);
  v14 = *(v0 + 152);

  return sub_100092690(v14);
}

uint64_t sub_1000942F8()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_100094578;
  }

  else
  {
    v6 = sub_100094424;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100094424()
{
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[28];
  sub_1000AB184((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000944CC()
{
  sub_1000AB184(v0 + 16);
  v1 = *(v0 + 376);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 224);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100094578()
{
  v1 = v0[19];
  sub_1000AB184((v0 + 2));
  sub_1000AD5EC(v1, type metadata accessor for HandoffInfo);
  v2 = v0[50];
  v4 = v0[33];
  v3 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10009463C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  *(v8 + 289) = a6;
  *(v8 + 288) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1000E1638();
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  v12 = sub_1000E1728();
  *(v8 + 88) = v12;
  v13 = *(v12 - 8);
  *(v8 + 96) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v15 = sub_1000E0D68();
  *(v8 + 112) = v15;
  v16 = *(v15 - 8);
  *(v8 + 120) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v18 = *(*(sub_10000ADE4(&qword_10011FA08, &unk_1000F2508) - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  v19 = sub_1000E1B18();
  *(v8 + 176) = v19;
  v20 = *(v19 - 8);
  *(v8 + 184) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v22 = qword_1001230F0;
  *(v8 + 200) = qword_1001230F0;

  return _swift_task_switch(sub_1000948C0, v22, 0);
}

uint64_t sub_1000948C0()
{
  v40 = v0;
  if ([*(v0[7] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceSupport) isGreenTea] && (v1 = *(v0[7] + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags), !TUGreenTeaLagunaEnabled()))
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v24 = sub_1000E1F08();
    sub_1000049D0(v24, qword_100123128);
    v25 = sub_1000E1EE8();
    v26 = sub_1000E2698();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "[Handoff][Push] Unable to push conversation from Green Tea device.", v27, 2u);
    }
  }

  else
  {
    v2 = v0[3];
    v3 = *(v0[7] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    isa = sub_1000E0D18().super.isa;
    v5 = [v3 activeConversationWithUUID:isa];
    v0[26] = v5;

    if (v5)
    {
      if (qword_10011DC18 != -1)
      {
        swift_once();
      }

      v6 = qword_1001230E0;
      v0[27] = qword_1001230E0;

      return _swift_task_switch(sub_100094D3C, v6, 0);
    }

    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[14];
    v10 = v0[3];
    v11 = sub_1000E1F08();
    sub_1000049D0(v11, qword_100123128);
    (*(v8 + 16))(v7, v10, v9);
    v12 = sub_1000E1EE8();
    v13 = sub_1000E2698();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[14];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v20 = sub_1000E2C18();
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = sub_100029C70(v20, v22, &v39);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "[Handoff][Push] Unable to find conversation %s.", v18, 0xCu);
      sub_10000E9DC(v19);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }
  }

  TUMakeNeighborhoodConduitError();
  swift_willThrow();
  v28 = v0[24];
  v30 = v0[20];
  v29 = v0[21];
  v32 = v0[18];
  v31 = v0[19];
  v34 = v0[16];
  v33 = v0[17];
  v35 = v0[13];
  v36 = v0[10];

  v37 = v0[1];

  return v37();
}

uint64_t sub_100094D3C()
{
  v1 = v0[25];
  v2 = v0[4];
  v0[28] = sub_100012CD8();

  return _swift_task_switch(sub_100094DAC, v1, 0);
}

uint64_t sub_100094DAC()
{
  v109 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 56);
  v4 = v2;
  LOBYTE(v3) = sub_10006EE20(v1, v2);

  if ((v3 & 1) == 0)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v8 = *(v0 + 24);
    v9 = sub_1000E1F08();
    sub_1000049D0(v9, qword_100123128);
    (*(v7 + 16))(v5, v8, v6);
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 136);
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v108[0] = v17;
      *v16 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v18 = sub_1000E2C18();
      v20 = v19;
      (*(v15 + 8))(v13, v14);
      v21 = sub_100029C70(v18, v20, v108);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "[Handoff][Push] TV incapable of handoff for %s.", v16, 0xCu);
      sub_10000E9DC(v17);

LABEL_8:
      v22 = *(v0 + 208);
      v23 = TUMakeNeighborhoodConduitError();
LABEL_9:
      v23;
      swift_willThrow();

      v24 = *(v0 + 192);
      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v28 = *(v0 + 144);
      v27 = *(v0 + 152);
      v30 = *(v0 + 128);
      v29 = *(v0 + 136);
      v31 = *(v0 + 104);
      v32 = *(v0 + 80);

      v33 = *(v0 + 8);

      return v33();
    }

LABEL_7:

    (*(v15 + 8))(v13, v14);
    goto LABEL_8;
  }

  sub_1000E2588();
  if ((*(v0 + 288) & 1) == 0)
  {
    v35 = [*(v0 + 208) activitySessions];
    sub_10000CAAC(0, &qword_10011FBB8, TUConversationActivitySession_ptr);
    sub_10000EA70(&unk_10011FBC0, &qword_10011FBB8, TUConversationActivitySession_ptr);
    v36 = sub_1000E25E8();

    v37 = sub_10005B1DC(v36);

    if (v37)
    {
      v38 = [v37 activity];
      v39 = [v38 isEligibleForHandoff];

      if (!v39)
      {
        if (qword_10011DC60 != -1)
        {
          swift_once();
        }

        v90 = *(v0 + 144);
        v91 = *(v0 + 112);
        v92 = *(v0 + 120);
        v93 = *(v0 + 24);
        v94 = sub_1000E1F08();
        sub_1000049D0(v94, qword_100123128);
        (*(v92 + 16))(v90, v93, v91);
        v95 = sub_1000E1EE8();
        v96 = sub_1000E2698();
        v97 = os_log_type_enabled(v95, v96);
        v98 = *(v0 + 144);
        v99 = *(v0 + 112);
        v100 = *(v0 + 120);
        if (v97)
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v108[0] = v102;
          *v101 = 136315138;
          sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
          v103 = sub_1000E2C18();
          v105 = v104;
          (*(v100 + 8))(v98, v99);
          v106 = sub_100029C70(v103, v105, v108);

          *(v101 + 4) = v106;
          _os_log_impl(&_mh_execute_header, v95, v96, "[Handoff][Push] Current activity does not support handoff %s.", v101, 0xCu);
          sub_10000E9DC(v102);
        }

        else
        {

          (*(v100 + 8))(v98, v99);
        }

        v22 = *(v0 + 208);
        sub_1000AB580();
        v23 = TUMakeNeighborhoodConduitError();
        goto LABEL_9;
      }
    }
  }

  v40 = *(v0 + 176);
  v41 = *(v0 + 184);
  v42 = *(v0 + 168);
  v43 = *(v0 + 56);
  v44 = *(v0 + 24);
  sub_10006F82C(v42);
  if ((*(v41 + 48))(v42, 1, v40) == 1)
  {
    sub_1000033C8(*(v0 + 168), &qword_10011FA08, &unk_1000F2508);
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 152);
    v46 = *(v0 + 112);
    v47 = *(v0 + 120);
    v48 = *(v0 + 24);
    v49 = sub_1000E1F08();
    sub_1000049D0(v49, qword_100123128);
    (*(v47 + 16))(v45, v48, v46);
    v10 = sub_1000E1EE8();
    v50 = sub_1000E2698();
    v51 = os_log_type_enabled(v10, v50);
    v13 = *(v0 + 152);
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    if (v51)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v108[0] = v53;
      *v52 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v54 = sub_1000E2C18();
      v56 = v55;
      (*(v15 + 8))(v13, v14);
      v57 = sub_100029C70(v54, v56, v108);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v10, v50, "[Handoff][Push] Failed to generate member association primary info %s.", v52, 0xCu);
      sub_10000E9DC(v53);

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v58 = *(v0 + 160);
  v59 = *(v0 + 112);
  v60 = *(v0 + 120);
  v61 = *(v0 + 24);
  v62 = *(v0 + 32);
  v63 = sub_1000E1F08();
  sub_1000049D0(v63, qword_100123128);
  (*(v60 + 16))(v58, v61, v59);

  v64 = sub_1000E1EE8();
  v65 = sub_1000E2698();

  v66 = os_log_type_enabled(v64, v65);
  v67 = *(v0 + 160);
  v68 = *(v0 + 112);
  v69 = *(v0 + 120);
  if (v66)
  {
    v70 = *(v0 + 32);
    v71 = swift_slowAlloc();
    v108[0] = swift_slowAlloc();
    *v71 = 136315394;
    *(v71 + 4) = sub_100029C70(*(v70 + 16), *(v70 + 24), v108);
    *(v71 + 12) = 2080;
    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
    v72 = sub_1000E2C18();
    v74 = v73;
    (*(v69 + 8))(v67, v68);
    v75 = sub_100029C70(v72, v74, v108);

    *(v71 + 14) = v75;
    _os_log_impl(&_mh_execute_header, v64, v65, "[Handoff][Push] Requesting to get device token for %s to invite to %s.", v71, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v69 + 8))(v67, v68);
  }

  v76 = *(v0 + 192);
  v77 = *(v0 + 80);
  v78 = *(v0 + 64);
  v79 = *(v0 + 289);
  v81 = *(v0 + 40);
  v80 = *(v0 + 48);
  v82 = *(v0 + 24);
  v83 = *(v0 + 32);
  v107 = *(*(v0 + 56) + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  v84 = swift_task_alloc();
  *(v84 + 16) = v82;
  *(v84 + 24) = v76;
  *(v84 + 32) = v81;
  *(v84 + 40) = v79;
  *(v84 + 48) = v80;
  sub_1000A75DC(&qword_100120250, 255, &type metadata accessor for NCProtoDeviceTokenRequest);
  sub_1000E0E38();

  v85 = *(v83 + 16);
  v86 = *(v83 + 24);
  v87 = swift_task_alloc();
  *(v0 + 232) = v87;
  *v87 = v0;
  v87[1] = sub_1000958F0;
  v88 = *(v0 + 104);
  v89 = *(v0 + 80);

  return sub_1000B5788(v88, 0, v89, v85, v86, 0);
}

uint64_t sub_1000958F0()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_100095C7C;
  }

  else
  {
    v6 = sub_100095A1C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100095A1C()
{
  v1 = v0[25];
  (*(v0[9] + 8))(v0[10], v0[8]);

  return _swift_task_switch(sub_100095A98, v1, 0);
}

uint64_t sub_100095A98()
{
  v1 = v0[30];
  sub_1000E2588();
  if (v1)
  {
    v2 = v0[26];
    v4 = v0[23];
    v3 = v0[24];
    v5 = v0[22];
    (*(v0[12] + 8))(v0[13], v0[11]);

    (*(v4 + 8))(v3, v5);
    v6 = v0[24];
    v7 = v0[20];
    v8 = v0[21];
    v10 = v0[18];
    v9 = v0[19];
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[13];
    v14 = v0[10];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[13];
    v18 = sub_1000E16F8();
    v20 = v19;
    if (sub_1000E1718())
    {
      v21 = v0[13];
      v22 = sub_1000E1708();
      v24 = v23;
      isa = sub_1000E0C78().super.isa;
      v26 = [objc_opt_self() voucherFromMessagingData:isa];

      sub_100006660(v22, v24);
    }

    else
    {
      v26 = 0;
    }

    v27 = v0[27];
    v0[31] = v26;
    v0[32] = v20;
    v0[33] = v18;

    return _swift_task_switch(sub_100095DF8, v27, 0);
  }
}

uint64_t sub_100095C7C()
{
  v1 = v0[25];
  (*(v0[9] + 8))(v0[10], v0[8]);

  return _swift_task_switch(sub_100095CF8, v1, 0);
}

uint64_t sub_100095CF8()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 240);
  v5 = *(v0 + 192);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 104);
  v13 = *(v0 + 80);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100095DF8()
{
  v1 = v0[25];
  v2 = v0[4];
  v0[34] = *(v2 + 48);
  v0[35] = *(v2 + 56);

  return _swift_task_switch(sub_100095E78, v1, 0);
}

uint64_t sub_100095E78()
{
  v19 = *(v0 + 272);
  v20 = *(v0 + 280);
  v17 = *(v0 + 256);
  v18 = *(v0 + 264);
  v15 = *(v0 + 208);
  v16 = *(v0 + 248);
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  v11 = *(v0 + 136);
  v12 = *(v0 + 128);
  v13 = *(v0 + 80);
  v14 = *(v0 + 288);
  v8 = *(v0 + 16);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  (*(v2 + 8))(v1, v3);

  *v8 = v14 & 1;
  *(v8 + 8) = v18;
  *(v8 + 16) = v17;
  *(v8 + 24) = v16;
  *(v8 + 32) = v15;
  *(v8 + 40) = v19;
  *(v8 + 48) = v20;
  v9 = *(v0 + 8);

  return v9();
}

void sub_100095FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a3;
  v4 = sub_1000E21E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000E2248();
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000E0D68();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [*(a2 + 32) groupUUID];
  sub_1000E0D38();

  sub_1000E2238();
  v31 = sub_1000E0D48();
  v32 = v19;
  sub_1000E2218();
  sub_1000E2228();
  v20 = v23;
  sub_1000E21D8();
  v23 = v20;
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v22);
  (*(v14 + 8))(v17, v13);
  sub_1000E1008();
  sub_1000DABD8();
  sub_1000E0FF8();
  sub_100005524(&v26);
  if (v27)
  {
    v31 = v26;
    v32 = v27;
    v33 = v28;
    v34 = v29;
    v35 = v30;
    sub_100005F20();
    sub_1000E1018();
    sub_1000033C8(&v26, &qword_10011ECC0, &unk_1000F1120);
  }
}

uint64_t sub_100096310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v33 = a6;
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v28 = a1;
  v6 = sub_1000E15F8();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000ADE4(&unk_10011FA80, &qword_1000F2660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_1000E0FE8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v28 - v19;
  v21 = sub_1000E1B18();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E0D08();
  sub_1000E15E8();
  (*(v22 + 16))(v25, v29, v21);
  sub_1000E1618();
  sub_10000CB64(v30, v12, &unk_10011FA80, &qword_1000F2660);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000033C8(v12, &unk_10011FA80, &qword_1000F2660);
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
    (*(v14 + 16))(v18, v20, v13);
    sub_1000E1628();
    (*(v14 + 8))(v20, v13);
  }

  sub_1000E15D8();
  if ((v33 - 1) > 3)
  {
    v26 = &enum case for NCProtoDeviceTokenRequest.ConversationHandoffType.unknown(_:);
  }

  else
  {
    v26 = *(&off_100115C30 + v33 - 1);
  }

  (*(v34 + 104))(v32, *v26, v35);
  return sub_1000E1608();
}

uint64_t sub_100096690(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1000E0D68();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();
  v6 = sub_10000ADE4(&qword_10011FAC0, &qword_1000F2700);
  v3[11] = v6;
  v7 = *(v6 - 8);
  v3[12] = v7;
  v8 = *(v7 + 64) + 15;
  v3[13] = swift_task_alloc();
  v9 = sub_10000ADE4(&qword_10011FAC8, &qword_1000F2708);
  v3[14] = v9;
  v10 = *(v9 - 8);
  v3[15] = v10;
  v11 = *(v10 + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = sub_10000ADE4(&qword_10011FAD0, &qword_1000F2710);
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();
  v15 = sub_10000ADE4(&qword_10011FAD8, &qword_1000F2718);
  v3[20] = v15;
  v16 = *(v15 - 8);
  v3[21] = v16;
  v17 = *(v16 + 64) + 15;
  v3[22] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v18 = qword_1001230F0;
  v3[23] = qword_1001230F0;

  return _swift_task_switch(sub_100096934, v18, 0);
}

uint64_t sub_100096934()
{
  v23 = v0[22];
  v26 = v0[20];
  v27 = v0[21];
  v19 = v0[19];
  v24 = v0[18];
  v22 = v0[17];
  v20 = v0[15];
  v18 = v0[14];
  v10 = v0[13];
  v16 = v0[16];
  v17 = v0[12];
  v14 = v0[9];
  v15 = v0[11];
  v1 = v0[8];
  v12 = v0[7];
  v13 = v0[10];
  v2 = v0[6];
  v25 = v2;
  v11 = v0[5];
  v21 = v0[4];
  v0[24] = sub_1000D605C(3);
  v0[2] = *(*(v2 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_activeConversationsSubject);
  sub_10000ADE4(&qword_10011FAE0, &qword_1000F2720);
  sub_100002C64(&qword_10011FAE8, &qword_10011FAE0, &qword_1000F2720);
  v0[3] = sub_1000E2028();
  sub_1000E1F58();
  sub_10000ADE4(&qword_10011FAF0, &qword_1000F2728);
  sub_10000ADE4(&qword_10011FAF8, &qword_1000F2730);
  sub_100002C64(&qword_10011FB00, &qword_10011FAF0, &qword_1000F2728);
  sub_100002C64(&qword_10011FB08, &qword_10011FAF8, &qword_1000F2730);
  sub_1000E20F8();

  (*(v1 + 16))(v13, v11, v12);
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = swift_allocObject();
  (*(v1 + 32))(v4 + v3, v13, v12);
  sub_100002C64(&qword_10011FB10, &qword_10011FAC0, &qword_1000F2700);
  sub_1000E2078();

  (*(v17 + 8))(v10, v15);
  sub_1000E1F58();
  sub_10000ADE4(&qword_10011FB18, &qword_1000F2738);
  sub_100002C64(&qword_10011FB20, &qword_10011FAC8, &qword_1000F2708);
  sub_100002C64(&qword_10011FB28, &qword_10011FB18, &qword_1000F2738);
  sub_1000E20F8();
  (*(v20 + 8))(v16, v18);
  *(swift_allocObject() + 16) = v21;
  sub_100002C64(&qword_10011FB30, &qword_10011FAD0, &qword_1000F2710);
  v5 = v21;
  sub_1000E2078();

  (*(v24 + 8))(v19, v22);
  sub_100002C64(&qword_10011FB38, &qword_10011FAD8, &qword_1000F2718);
  v6 = sub_1000E2028();
  v0[25] = v6;
  (*(v27 + 8))(v23, v26);
  v7 = *(v25 + OBJC_IVAR___CSDNeighborhoodActivityConduit_publisherService);
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_100096E84;

  return sub_10009F6C8(v6);
}