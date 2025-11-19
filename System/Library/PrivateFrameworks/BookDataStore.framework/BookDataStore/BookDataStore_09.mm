uint64_t sub_1E46F73B4(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3)
  {
    v6 = [v3 zoneName];
    v7 = sub_1E470AF1C();
    v9 = v8;

    if (v7 == a2 && v9 == a3)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1E470B84C();
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

void sub_1E46F745C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E46FD074(v1);
  }
}

void sub_1E46F7598()
{
  v1 = v0;
  v2 = sub_1E470A5DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E470A0BC();
  v9 = sub_1E470B2CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1E4654D04(0xD000000000000010, 0x80000001E471A8C0, aBlock);
    _os_log_impl(&dword_1E45E0000, v8, v9, "BDSSyncEnginePipeline - %s", v10, 0xCu);
    sub_1E4658A0C(v11);
    MEMORY[0x1E6917530](v11, -1, -1);
    MEMORY[0x1E6917530](v10, -1, -1);
  }

  v12 = *(v1 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_stateQueue);
  v13 = sub_1E470A5CC();
  MEMORY[0x1EEE9AC00](v13, v14);
  *(&v21 - 2) = v1;
  *(&v21 - 8) = 1;
  sub_1E470B36C();

  (*(v3 + 8))(v7, v2);
  v15 = os_transaction_create();
  v16 = *(v1 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_scheduleSyncBlock);
  if (v16)
  {
    v17 = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    aBlock[4] = nullsub_60;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46C4624;
    aBlock[3] = &unk_1F5E66B28;
    v19 = _Block_copy(aBlock);
    v20 = v16;
    swift_unknownObjectRetain();

    [v20 signalWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v19);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E46F78EC()
{
  v1[2] = v0;
  v2 = sub_1E470A5DC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46F79AC, 0, 0);
}

uint64_t sub_1E46F79AC()
{
  v15 = v0;
  v1 = v0[2];
  v0[6] = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_logger;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1E4654D04(0x6E79537472617473, 0xEF29284B436F5463, &v14);
    _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEnginePipeline - %s", v4, 0xCu);
    sub_1E4658A0C(v5);
    MEMORY[0x1E6917530](v5, -1, -1);
    MEMORY[0x1E6917530](v4, -1, -1);
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v9 = v0[3];
  v10 = *(v8 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_stateQueue);
  sub_1E470A5CC();
  v11 = swift_task_alloc();
  *(v11 + 16) = v8;
  *(v11 + 24) = 1;
  sub_1E470B36C();

  (*(v7 + 8))(v6, v9);
  if (qword_1EE2AE3E8 != -1)
  {
    swift_once();
  }

  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_1E46F7BFC;

  return BDSSyncEngine.sendChangesIfReady()();
}

uint64_t sub_1E46F7BFC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E46F7D38, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E46F7D38()
{
  v18 = v0;
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[2];
  v4 = v1;
  v5 = sub_1E470A0BC();
  v6 = sub_1E470B2AC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[8];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_1E4654D04(0x6E79537472617473, 0xEF29284B436F5463, &v17);
    *(v9 + 12) = 2112;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1E45E0000, v5, v6, "BDSSyncEnginePipeline - %s error: %@", v9, 0x16u);
    sub_1E465E050(v10, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v10, -1, -1);
    sub_1E4658A0C(v11);
    MEMORY[0x1E6917530](v11, -1, -1);
    MEMORY[0x1E6917530](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1E46F8084(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E46F812C;

  return sub_1E46F78EC();
}

uint64_t sub_1E46F812C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1E46F8264()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E46C674C;

  return sub_1E4700AA0();
}

uint64_t sub_1E46F848C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1E46F855C;

  return sub_1E4700AA0();
}

uint64_t sub_1E46F855C(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

id sub_1E46F86C0()
{
  if (qword_1EE2AE3E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE2AE3F0;

  return v1;
}

uint64_t sub_1E46F8778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_1E470A5DC();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v7 = *(v6 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46F883C, 0, 0);
}

uint64_t sub_1E46F883C()
{
  v35 = v0;
  v1 = *(v0 + 176);
  *(v0 + 208) = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_logger;
  v2 = v1;
  v3 = sub_1E470A0BC();
  v4 = sub_1E470B2CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471A8E0, v34);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1E4654D04(*(v5 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType), *(v5 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType + 8), v34);
    _os_log_impl(&dword_1E45E0000, v3, v4, "BDSSyncEnginePipeline - %s: [%s]", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v7, -1, -1);
    MEMORY[0x1E6917530](v6, -1, -1);
  }

  if (sub_1E46F4630(*(*(v0 + 176) + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_zoneID), *(v0 + 160)))
  {
    v8 = *(v0 + 176);
    v9 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_stateQueue;
    *(v0 + 216) = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_stateQueue;
    v10 = *(v8 + v9);
    *(swift_task_alloc() + 16) = v8;
    v11 = v10;
    sub_1E470B37C();
    *(v0 + 224) = 0;

    v12 = *(v0 + 176);
    if (*(v0 + 288) == 1)
    {
      *(v0 + 232) = os_transaction_create();
      v13 = &v12[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType];
      v14 = *&v12[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType];
      *(v0 + 240) = v14;
      v15 = *(v13 + 1);
      *(v0 + 248) = v15;

      v16 = sub_1E470A0BC();
      v17 = sub_1E470B2CC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v34[0] = v19;
        *v18 = 136315394;
        *(v18 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471A8E0, v34);
        *(v18 + 12) = 2080;
        *(v18 + 14) = sub_1E4654D04(v14, v15, v34);
        _os_log_impl(&dword_1E45E0000, v16, v17, "BDSSyncEnginePipeline - %s: [%s] About to fetch dirty changes", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v19, -1, -1);
        MEMORY[0x1E6917530](v18, -1, -1);
      }

      v20 = *(v0 + 168);
      v21 = *(*(v0 + 176) + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1E46F8DE8;
      v22 = swift_continuation_init();
      *(v0 + 136) = sub_1E4650534(&qword_1ECF75A28, &qword_1E4720350);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1E46F942C;
      *(v0 + 104) = &unk_1F5E66B50;
      *(v0 + 112) = v22;
      [v21 nextBatchOfMutableCloudDataToSaveToCKWithFetchLimit:v20 completion:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v23 = v12;
    v24 = sub_1E470A0BC();
    v25 = sub_1E470B2CC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 176);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34[0] = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471A8E0, v34);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1E4654D04(*(v26 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType), *(v26 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType + 8), v34);
      _os_log_impl(&dword_1E45E0000, v24, v25, "BDSSyncEnginePipeline - %s: [%s] No pending modifications. Returning nil", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v28, -1, -1);
      MEMORY[0x1E6917530](v27, -1, -1);
    }
  }

  v29 = *(v0 + 152);
  v30 = sub_1E470A30C();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  v31 = *(v0 + 200);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1E46F8DE8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E46F8EC8, 0, 0);
}

uint64_t sub_1E46F8EC8()
{
  v35 = v0;
  v1 = v0[18];
  v0[32] = v1;
  if (v1)
  {
    v2 = v0[29];
    v3 = v0[22];
    v4 = swift_allocObject();
    v0[33] = v4;
    swift_unknownObjectWeakInit();
    v5 = swift_task_alloc();
    v0[34] = v5;
    v5[2] = v4;
    v5[3] = v1;
    v5[4] = v2;
    v6 = *(MEMORY[0x1E69E88D0] + 4);
    v7 = swift_task_alloc();
    v0[35] = v7;
    v8 = sub_1E4650534(&qword_1ECF75A30, &qword_1E471E950);
    *v7 = v0;
    v7[1] = sub_1E46F926C;
    v9 = v0[19];

    return MEMORY[0x1EEE6DDE0](v9, 0, 0, 0xD00000000000002ELL, 0x80000001E471A8E0, sub_1E4700C44, v5, v8);
  }

  else
  {
    v10 = v0[31];
    v11 = v0[26];
    v12 = v0[22];

    v13 = sub_1E470A0BC();
    v14 = sub_1E470B2CC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[31];
    if (v15)
    {
      v17 = v0[30];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34[0] = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471A8E0, v34);
      *(v18 + 12) = 2080;
      v20 = sub_1E4654D04(v17, v16, v34);

      *(v18 + 14) = v20;
      _os_log_impl(&dword_1E45E0000, v13, v14, "BDSSyncEnginePipeline - %s: [%s] no more dirty changes", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v19, -1, -1);
      MEMORY[0x1E6917530](v18, -1, -1);
    }

    else
    {
    }

    v21 = v0[28];
    v22 = v0[29];
    v24 = v0[24];
    v23 = v0[25];
    v26 = v0[22];
    v25 = v0[23];
    v27 = v0[19];
    v28 = *(v26 + v0[27]);
    sub_1E470A5CC();
    v29 = swift_task_alloc();
    *(v29 + 16) = v26;
    *(v29 + 24) = 0;
    sub_1E470B36C();
    swift_unknownObjectRelease();

    (*(v24 + 8))(v23, v25);
    v30 = sub_1E470A30C();
    (*(*(v30 - 8) + 56))(v27, 1, 1, v30);
    v31 = v0[25];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_1E46F926C()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 256);
  v6 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E46F93C4, 0, 0);
}

uint64_t sub_1E46F93C4()
{
  v1 = v0[29];
  swift_unknownObjectRelease();
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E46F942C(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1E465057C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1E45E2DE8(0, &qword_1ECF75460, off_1E8758B88);
    v4 = sub_1E470B0BC();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1E46F94BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v42 = a3;
  v5 = sub_1E470A5DC();
  v45 = *(v5 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E470A61C();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E4650534(&qword_1ECF75D48, &unk_1E4720570);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v38 - v19;
  v21 = sub_1E4650534(&qword_1ECF75A30, &qword_1E471E950);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v38 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = *(Strong + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue);
    v40 = v5;
    v27 = Strong;
    (*(v16 + 16))(v20, a1, v15);
    v28 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v29 = swift_allocObject();
    v30 = v9;
    v31 = v42;
    *(v29 + 16) = v27;
    *(v29 + 24) = v31;
    (*(v16 + 32))(v29 + v28, v20, v15);
    *(v29 + ((v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v41;
    aBlock[4] = sub_1E4701ADC;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46C4624;
    aBlock[3] = &unk_1F5E67308;
    v32 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v33 = v39;
    v34 = v27;

    sub_1E470A5FC();
    v46 = MEMORY[0x1E69E7CC0];
    sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
    sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
    sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
    v35 = v40;
    sub_1E470B4CC();
    MEMORY[0x1E69160A0](0, v14, v30, v32);
    _Block_release(v32);

    (*(v45 + 8))(v30, v35);
    (*(v43 + 8))(v14, v44);
  }

  else
  {
    v37 = sub_1E470A30C();
    (*(*(v37 - 8) + 56))(v25, 1, 1, v37);
    return sub_1E470B12C();
  }
}

uint64_t sub_1E46F9970(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E4650534(&qword_1ECF75A30, &qword_1E471E950);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v13 - v10;
  sub_1E46F9A84(a2, &v13 - v10);
  sub_1E465E0B0(v11, v7, &qword_1ECF75A30, &qword_1E471E950);
  sub_1E4650534(&qword_1ECF75D48, &unk_1E4720570);
  sub_1E470B12C();
  return sub_1E465E050(v11, &qword_1ECF75A30, &qword_1E471E950);
}

uint64_t sub_1E46F9A84@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v56 = a2;
  v6 = sub_1E470A5DC();
  v55[0] = *(v6 - 8);
  v7 = *(v55[0] + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType);
  v11 = *(v2 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType + 8);
  v13 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_logger;

  v55[1] = v13;
  v14 = sub_1E470A0BC();
  LOBYTE(v15) = sub_1E470B2CC();

  if (!os_log_type_enabled(v14, v15))
  {

    goto LABEL_6;
  }

  v3 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v57[0] = v16;
  *v3 = 136315650;
  *(v3 + 4) = sub_1E4654D04(0xD000000000000029, 0x80000001E471AD70, v57);
  *(v3 + 12) = 2080;
  *(v3 + 14) = sub_1E4654D04(v12, v11, v57);
  *(v3 + 22) = 2048;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E470B50C())
  {
    *(v3 + 24) = i;

    _os_log_impl(&dword_1E45E0000, v14, v15, "BDSSyncEnginePipeline - %s: [%s] %ld dirty changes", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v16, -1, -1);
    MEMORY[0x1E6917530](v3, -1, -1);

LABEL_6:
    v15 = MEMORY[0x1E69E7CC0];
    v58 = MEMORY[0x1E69E7CC0];
    v59 = MEMORY[0x1E69E7CC0];
    v18 = *(v4 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_currentModifyBatchResponse);
    swift_beginAccess();

    sub_1E46FD1E4(a1, &v59, &v58, v18 + 48);
    swift_endAccess();

    a1 = v59;
    v16 = v59 >> 62;
    if (v59 >> 62)
    {
      if (sub_1E470B50C())
      {
        goto LABEL_10;
      }
    }

    else if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    v3 = v58;
    if (v58 >> 62)
    {
      if (!sub_1E470B50C())
      {
LABEL_37:

        v47 = sub_1E470A0BC();
        v48 = sub_1E470B2CC();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v57[0] = v50;
          *v49 = 136315394;
          *(v49 + 4) = sub_1E4654D04(0xD000000000000029, 0x80000001E471AD70, v57);
          *(v49 + 12) = 2080;
          v51 = sub_1E4654D04(v12, v11, v57);

          *(v49 + 14) = v51;
          _os_log_impl(&dword_1E45E0000, v47, v48, "BDSSyncEnginePipeline - %s: [%s] Cannot create CKRecords to save", v49, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E6917530](v50, -1, -1);
          MEMORY[0x1E6917530](v49, -1, -1);
        }

        else
        {
        }

        v28 = v56;
        v52 = *(v4 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_stateQueue);
        v53 = sub_1E470A5CC();
        MEMORY[0x1EEE9AC00](v53, v54);
        v55[-2] = v4;
        LOBYTE(v55[-1]) = 0;
        sub_1E470B36C();

        (*(v55[0] + 8))(v10, v6);
        v44 = 1;
        goto LABEL_29;
      }
    }

    else if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

LABEL_10:
    if (v16)
    {
      v6 = sub_1E470B50C();
      if (!v6)
      {
LABEL_20:

        v24 = MEMORY[0x1E69E7CC0];
        goto LABEL_21;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    v57[0] = v15;

    v14 = v57;
    sub_1E470B63C();
    if ((v6 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_33:
    ;
  }

  v55[0] = v12;
  v19 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1E6916300](v19, a1);
    }

    else
    {
      v20 = *(a1 + 8 * v19 + 32);
    }

    v21 = v20;
    ++v19;
    v22 = [v20 recordID];

    sub_1E470B61C();
    v23 = *(v57[0] + 16);
    sub_1E470B64C();
    sub_1E470B65C();
    sub_1E470B62C();
  }

  while (v6 != v19);
  v24 = v57[0];
  v12 = v55[0];
LABEL_21:

  v25 = sub_1E470A0BC();
  v26 = sub_1E470B2CC();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v56;
  if (v27)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v57[0] = v30;
    *v29 = 136316418;
    *(v29 + 4) = sub_1E4654D04(0xD000000000000029, 0x80000001E471AD70, v57);
    *(v29 + 12) = 2080;
    v31 = sub_1E4654D04(v12, v11, v57);

    *(v29 + 14) = v31;
    *(v29 + 22) = 2048;
    if (v24 >> 62)
    {
      v32 = sub_1E470B50C();
    }

    else
    {
      v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v29 + 24) = v32;

    *(v29 + 32) = 2080;
    v33 = sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
    v34 = MEMORY[0x1E6915DE0](v24, v33);
    v36 = v35;

    v37 = sub_1E4654D04(v34, v36, v57);

    *(v29 + 34) = v37;
    *(v29 + 42) = 2048;
    swift_beginAccess();
    if (v58 >> 62)
    {
      v38 = sub_1E470B50C();
    }

    else
    {
      v38 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v29 + 44) = v38;
    *(v29 + 52) = 2080;

    v40 = MEMORY[0x1E6915DE0](v39, v33);
    v42 = v41;

    v43 = sub_1E4654D04(v40, v42, v57);

    *(v29 + 54) = v43;
    _os_log_impl(&dword_1E45E0000, v25, v26, "BDSSyncEnginePipeline - %s: [%s] Returning records %ld idsToSave=%s, %ld idsToDelete=%s", v29, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v30, -1, -1);
    MEMORY[0x1E6917530](v29, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  swift_beginAccess();

  sub_1E470A2CC();
  v44 = 0;
LABEL_29:
  v45 = sub_1E470A30C();
  (*(*(v45 - 8) + 56))(v28, v44, 1, v45);
}

uint64_t sub_1E46FA2FC(void *a1)
{
  v2 = v1;
  v4 = sub_1E470A5DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E470A61C();
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = sub_1E470A0BC();
  v17 = sub_1E470B2CC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v5;
    v21 = v20;
    aBlock[0] = v20;
    *v18 = 136315394;
    *(v18 + 4) = sub_1E4654D04(0xD000000000000010, 0x80000001E471A980, aBlock);
    *(v18 + 12) = 2112;
    v22 = [v15 recordID];
    *(v18 + 14) = v22;
    *v19 = v22;
    _os_log_impl(&dword_1E45E0000, v16, v17, "BDSSyncEnginePipeline - %s: %@", v18, 0x16u);
    sub_1E465E050(v19, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v19, -1, -1);
    sub_1E4658A0C(v21);
    v23 = v21;
    v5 = v31;
    MEMORY[0x1E6917530](v23, -1, -1);
    MEMORY[0x1E6917530](v18, -1, -1);
  }

  v24 = *&v2[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue];
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = v15;
  aBlock[4] = sub_1E4700C50;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66BC8;
  v26 = _Block_copy(aBlock);
  v27 = v15;
  v28 = v24;
  v29 = v2;
  sub_1E470A5FC();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v14, v9, v26);
  _Block_release(v26);

  (*(v5 + 8))(v9, v4);
  (*(v32 + 8))(v14, v33);
}

void sub_1E46FA720(void *a1)
{
  v3 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_currentModifyBatchResponse;
  v4 = *(v1 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_currentModifyBatchResponse);

  v5 = [a1 recordID];
  swift_beginAccess();
  v6 = *(v4 + 48);

  v7 = sub_1E46F4384(v5, v6, &qword_1ECF75460, off_1E8758B88);

  if (!v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate);
    v9 = [a1 recordID];
    v7 = [v8 mutableCloudDataForRecordID_];

    if (!v7)
    {
      return;
    }

    v10 = v1;
    v11 = sub_1E470A0BC();
    v12 = sub_1E470B2AC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1E4654D04(0xD000000000000013, 0x80000001E471AD50, &v17);
      _os_log_impl(&dword_1E45E0000, v11, v12, "BDSSyncEnginePipeline - %s: Unable to find outstanding cloudData. Overwrite existing.", v13, 0xCu);
      sub_1E4658A0C(v14);
      MEMORY[0x1E6917530](v14, -1, -1);
      MEMORY[0x1E6917530](v13, -1, -1);
    }

    v1 = v10;
  }

  [v7 setSystemFields_];
  v15 = *(v1 + v3);

  v16 = [a1 recordID];
  sub_1E47009C4(v7, v16, v15);
}

uint64_t sub_1E46FA96C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1E470A5DC();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E470A61C();
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = sub_1E470A0BC();
  v18 = sub_1E470B2CC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = a2;
    v21 = v20;
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v19 = 136315394;
    *(v19 + 4) = sub_1E4654D04(0xD000000000000027, 0x80000001E471A9A0, aBlock);
    *(v19 + 12) = 2112;
    *(v19 + 14) = v16;
    *v21 = v16;
    v23 = v16;
    _os_log_impl(&dword_1E45E0000, v17, v18, "BDSSyncEnginePipeline - %s: %@", v19, 0x16u);
    sub_1E465E050(v21, &qword_1ECF75100, qword_1E471E820);
    v24 = v21;
    a2 = v34;
    MEMORY[0x1E6917530](v24, -1, -1);
    sub_1E4658A0C(v22);
    MEMORY[0x1E6917530](v22, -1, -1);
    MEMORY[0x1E6917530](v19, -1, -1);
  }

  v25 = *&v3[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue];
  v26 = swift_allocObject();
  v26[2] = v3;
  v26[3] = v16;
  v26[4] = a2;
  aBlock[4] = sub_1E4700C78;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66C18;
  v27 = _Block_copy(aBlock);
  v28 = v16;
  v29 = v25;
  v30 = v3;
  v31 = a2;
  sub_1E470A5FC();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v15, v10, v27);
  _Block_release(v27);

  (*(v37 + 8))(v10, v6);
  (*(v35 + 8))(v15, v36);
}

uint64_t sub_1E46FAD90(void *a1)
{
  v2 = v1;
  v4 = sub_1E470A5DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E470A61C();
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = sub_1E470A0BC();
  v17 = sub_1E470B2CC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v5;
    v21 = v20;
    aBlock[0] = v20;
    *v18 = 136315394;
    *(v18 + 4) = sub_1E4654D04(0xD00000000000001ELL, 0x80000001E471A9D0, aBlock);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v15;
    *v19 = v15;
    v22 = v15;
    _os_log_impl(&dword_1E45E0000, v16, v17, "BDSSyncEnginePipeline - %s: %@", v18, 0x16u);
    sub_1E465E050(v19, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v19, -1, -1);
    sub_1E4658A0C(v21);
    v23 = v21;
    v5 = v31;
    MEMORY[0x1E6917530](v23, -1, -1);
    MEMORY[0x1E6917530](v18, -1, -1);
  }

  v24 = *&v2[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue];
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = v15;
  aBlock[4] = sub_1E4700CA4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66C68;
  v26 = _Block_copy(aBlock);
  v27 = v15;
  v28 = v24;
  v29 = v2;
  sub_1E470A5FC();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v14, v9, v26);
  _Block_release(v26);

  (*(v5 + 8))(v9, v4);
  (*(v32 + 8))(v14, v33);
}

uint64_t sub_1E46FB1A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_currentModifyBatchResponse);

  sub_1E46FE000(a2);
}

uint64_t sub_1E46FB1F0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1E470A5DC();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E470A61C();
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = sub_1E470A0BC();
  v18 = sub_1E470B2CC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = a2;
    v21 = v20;
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v19 = 136315394;
    *(v19 + 4) = sub_1E4654D04(0xD000000000000029, 0x80000001E471A9F0, aBlock);
    *(v19 + 12) = 2112;
    *(v19 + 14) = v16;
    *v21 = v16;
    v23 = v16;
    _os_log_impl(&dword_1E45E0000, v17, v18, "BDSSyncEnginePipeline - %s: %@", v19, 0x16u);
    sub_1E465E050(v21, &qword_1ECF75100, qword_1E471E820);
    v24 = v21;
    a2 = v34;
    MEMORY[0x1E6917530](v24, -1, -1);
    sub_1E4658A0C(v22);
    MEMORY[0x1E6917530](v22, -1, -1);
    MEMORY[0x1E6917530](v19, -1, -1);
  }

  v25 = *&v3[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue];
  v26 = swift_allocObject();
  v26[2] = v3;
  v26[3] = v16;
  v26[4] = a2;
  aBlock[4] = sub_1E4701C2C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66CB8;
  v27 = _Block_copy(aBlock);
  v28 = v16;
  v29 = v25;
  v30 = v3;
  v31 = a2;
  sub_1E470A5FC();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v15, v10, v27);
  _Block_release(v27);

  (*(v37 + 8))(v10, v6);
  (*(v35 + 8))(v15, v36);
}

uint64_t sub_1E46FB614(void *a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType);
  v5 = *(v2 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType + 8);
  swift_beginAccess();
  v6 = a1[2];
  swift_beginAccess();
  v7 = a1[3];
  swift_beginAccess();
  v8 = a1[4];
  swift_beginAccess();
  v9 = a1[5];
  v55 = v9 >> 62;
  if (v9 >> 62)
  {
    v10 = sub_1E470B50C();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = sub_1E470A0BC();
  v12 = v7 >> 62;
  v58 = v8;
  v59 = v8 >> 62;
  v56 = v10;
  if (v10)
  {
    v13 = sub_1E470B2AC();
    if (os_log_type_enabled(v11, v13))
    {
      log = v11;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v14 = 136316418;
      *(v14 + 4) = sub_1E4654D04(0xD000000000000019, 0x80000001E471ADF0, &aBlock);
      *(v14 + 12) = 2080;
      v16 = sub_1E4654D04(v4, v5, &aBlock);

      *(v14 + 14) = v16;
      *(v14 + 22) = 2048;
      if (v6 >> 62)
      {
        v17 = sub_1E470B50C();
      }

      else
      {
        v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v7 >> 62;
      *(v14 + 24) = v17;
      *(v14 + 32) = 2048;
      if (v7 >> 62)
      {
        v18 = sub_1E470B50C();
      }

      else
      {
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 34) = v18;
      *(v14 + 42) = 2048;
      if (v59)
      {
        v19 = sub_1E470B50C();
      }

      else
      {
        v19 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 44) = v19;
      *(v14 + 52) = 2048;
      if (v55)
      {
        v20 = sub_1E470B50C();
      }

      else
      {
        v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 54) = v20;
      _os_log_impl(&dword_1E45E0000, log, v13, "BDSSyncEnginePipeline - %s: [%s] %ld savedCloudDatas, %ld deletedRecordIDs, %ld serverVersionRecords, %ld failedRecordIDs", v14, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v15, -1, -1);
      MEMORY[0x1E6917530](v14, -1, -1);

      v28 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!(v6 >> 62))
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }
  }

  else
  {
    v21 = sub_1E470B2CC();
    if (os_log_type_enabled(v11, v21))
    {
      v53 = v21;
      v22 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock = v52;
      *v22 = 136316418;
      *(v22 + 4) = sub_1E4654D04(0xD000000000000019, 0x80000001E471ADF0, &aBlock);
      *(v22 + 12) = 2080;
      v23 = sub_1E4654D04(v4, v5, &aBlock);

      *(v22 + 14) = v23;
      *(v22 + 22) = 2048;
      if (v6 >> 62)
      {
        v24 = sub_1E470B50C();
      }

      else
      {
        v24 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 24) = v24;
      *(v22 + 32) = 2048;
      if (v12)
      {
        v25 = sub_1E470B50C();
      }

      else
      {
        v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 34) = v25;
      *(v22 + 42) = 2048;
      if (v59)
      {
        v26 = sub_1E470B50C();
      }

      else
      {
        v26 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 44) = v26;
      *(v22 + 52) = 2048;
      if (v55)
      {
        v27 = sub_1E470B50C();
      }

      else
      {
        v27 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 54) = v27;
      _os_log_impl(&dword_1E45E0000, v11, v53, "BDSSyncEnginePipeline - %s: [%s] %ld savedCloudDatas, %ld deletedRecordIDs, %ld serverVersionRecords, %ld failedRecordIDs", v22, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v52, -1, -1);
      MEMORY[0x1E6917530](v22, -1, -1);

      v28 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!(v6 >> 62))
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }
  }

  v28 = v6 & 0xFFFFFFFFFFFFFF8;
  if (!(v6 >> 62))
  {
LABEL_26:
    v29 = *(v28 + 16);
    goto LABEL_27;
  }

LABEL_45:
  v29 = sub_1E470B50C();
LABEL_27:
  if (v29)
  {
    v30 = v12;
    v31 = *(v60 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate);
    sub_1E4650534(&qword_1ECF75D40, &qword_1E47200E8);
    v32 = sub_1E470B0AC();
    v33 = v60;

    v65 = nullsub_60;
    v66 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_1E46BA7E4;
    v64 = &unk_1F5E67240;
    v34 = _Block_copy(&aBlock);
    [v31 syncProvider:v60 updateSyncGenerationFromCloudData:v32 completion:v34];
    _Block_release(v34);

    v35 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v30)
    {
      goto LABEL_29;
    }
  }

  else
  {

    v33 = v60;
    v35 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v12)
    {
LABEL_29:
      if (*(v35 + 16))
      {
        goto LABEL_30;
      }

      goto LABEL_36;
    }
  }

  if (sub_1E470B50C())
  {
LABEL_30:
    v36 = *(v33 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate);
    sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
    v37 = sub_1E470B0AC();

    v65 = nullsub_60;
    v66 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_1E46BA7E4;
    v64 = &unk_1F5E67268;
    v38 = _Block_copy(&aBlock);
    [v36 syncProvider:v33 removeCloudDataForIDs:v37 completion:v38];
    _Block_release(v38);

    v39 = v58;
    if (!v59)
    {
      goto LABEL_31;
    }

    goto LABEL_37;
  }

LABEL_36:

  v39 = v58;
  if (!v59)
  {
LABEL_31:
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

LABEL_38:

    if (v56)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

LABEL_37:
  if (!sub_1E470B50C())
  {
    goto LABEL_38;
  }

LABEL_32:
  v40 = *(v33 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate);
  sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
  v41 = sub_1E470B0AC();

  v65 = nullsub_60;
  v66 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1E46BA7E4;
  v64 = &unk_1F5E67290;
  v42 = _Block_copy(&aBlock);
  [v40 syncProvider:v33 resolveConflictsForRecords:v41 completion:v42];
  _Block_release(v42);

  if (v56)
  {
LABEL_33:
    v43 = *(v33 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate);
    sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
    v44 = sub_1E470B0AC();

    v65 = nullsub_60;
    v66 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_1E46BA7E4;
    v64 = &unk_1F5E672B8;
    v45 = _Block_copy(&aBlock);
    [v43 syncProvider:v33 failedRecordIDs:v44 completion:v45];
    _Block_release(v45);

    goto LABEL_40;
  }

LABEL_39:

LABEL_40:
  v46 = a1[2];
  v47 = MEMORY[0x1E69E7CC0];
  a1[2] = MEMORY[0x1E69E7CC0];

  v48 = a1[3];
  a1[3] = v47;

  v49 = a1[4];
  a1[4] = v47;

  v50 = a1[5];
  a1[5] = v47;

  if (a2)
  {
    return sub_1E46FEC08();
  }

  return result;
}

void sub_1E46FBF34(void *a1, id a2)
{
  v4 = v2;
  v93 = a2;
  v7 = a2;
  sub_1E4650534(&unk_1ECF75C20, &unk_1E471DAC0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v8 = v92;
    v93 = MEMORY[0x1E69E7CC0];
    v9 = sub_1E470AE1C();
    if (v9)
    {
      v10 = v9;
      sub_1E4701460(&qword_1ECF743C8, type metadata accessor for CKError);
      sub_1E4709ACC();
      if (v91 == 14)
      {
        v11 = a1;
        v12 = v92;
        v13 = sub_1E470A0BC();
        v14 = sub_1E470B28C();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v3 = swift_slowAlloc();
          v90 = v3;
          *v15 = 136315650;
          *(v15 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471AD20, &v90);
          *(v15 + 12) = 2112;
          *(v15 + 14) = v11;
          *v16 = v11;
          *(v15 + 22) = 2112;
          v17 = v11;
          v18 = v12;
          v19 = _swift_stdlib_bridgeErrorToNSError();
          *(v15 + 24) = v19;
          v16[1] = v19;
          _os_log_impl(&dword_1E45E0000, v13, v14, "BDSSyncEnginePipeline - %s: CKErrorServerRecordChanged record %@ perRecordError %@", v15, 0x20u);
          sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
          swift_arrayDestroy();
          MEMORY[0x1E6917530](v16, -1, -1);
          sub_1E4658A0C(v3);
          MEMORY[0x1E6917530](v3, -1, -1);
          MEMORY[0x1E6917530](v15, -1, -1);
        }

        v20 = MEMORY[0x1E69E7CC8];
        v21 = v10;
        if (!(v20 >> 62))
        {
          goto LABEL_9;
        }

        v22 = sub_1E470B50C();
        if (!__OFADD__(v22, 1))
        {
          v20 = sub_1E46C6E94(MEMORY[0x1E69E7CC8], v22 + 1);
LABEL_9:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = v20;
          sub_1E46C7664(v21, v11, isUniquelyReferenced_nonNull_native);

          v24 = 0;
          v25 = v90;
          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_53;
      }

      v46 = v92;
      v47 = v10;
      v48 = sub_1E470A0BC();
      v49 = sub_1E470B2AC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v90 = v52;
        *v50 = 136315650;
        *(v50 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471AD20, &v90);
        *(v50 + 12) = 2112;
        *(v50 + 14) = v47;
        *v51 = v10;
        *(v50 + 22) = 2112;
        v53 = v46;
        v54 = v47;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 24) = v55;
        v51[1] = v55;
        _os_log_impl(&dword_1E45E0000, v48, v49, "BDSSyncEnginePipeline - %s: Unhandled error for record %@ perRecordError %@", v50, 0x20u);
        sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v51, -1, -1);
        sub_1E4658A0C(v52);
        MEMORY[0x1E6917530](v52, -1, -1);
        MEMORY[0x1E6917530](v50, -1, -1);

LABEL_32:
        v24 = 0;
        v25 = MEMORY[0x1E69E7CC8];
LABEL_33:
        v71 = MEMORY[0x1E69E7CC0];
        if ((v25 & 0xC000000000000001) != 0)
        {
          goto LABEL_34;
        }

LABEL_44:
        v72 = &qword_1ECF75000;
        if (!*(v25 + 16))
        {
LABEL_36:
          if (v71 >> 62)
          {
            if (sub_1E470B50C())
            {
LABEL_38:
              v75 = *(v4 + v72[334]);

              sub_1E46FE8C4(v71);

              if (v24)
              {
LABEL_39:
                sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
                v76 = [*(v4 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_zoneID) zoneName];
                sub_1E470AF1C();

                v77 = *MEMORY[0x1E695B728];
                sub_1E470AF1C();
                v78 = sub_1E470B2EC();
                v79 = [objc_allocWithZone(MEMORY[0x1E695BA80]) initWithZoneID_];
                if (qword_1EE2AE3E8 != -1)
                {
                  swift_once();
                }

                BDSSyncEngine.resetCloudKitZone(_:)(v79);

                goto LABEL_51;
              }

LABEL_50:

              goto LABEL_51;
            }
          }

          else if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          if (v24)
          {
            goto LABEL_39;
          }

          goto LABEL_50;
        }

LABEL_35:
        v73 = *(v4 + v72[334]);

        sub_1E46FE0D8(v74);

        goto LABEL_36;
      }
    }

    else
    {
      v3 = a1;
      v35 = v92;
      v36 = sub_1E470A0BC();
      v37 = sub_1E470B2AC();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = v92;
        v41 = swift_slowAlloc();
        v92 = v41;
        *v38 = 136315650;
        *(v38 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471AD20, &v92);
        *(v38 + 12) = 2112;
        *(v38 + 14) = v3;
        *v39 = v3;
        *(v38 + 22) = 2112;
        v42 = v3;
        v43 = v35;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 24) = v44;
        v39[1] = v44;
        _os_log_impl(&dword_1E45E0000, v36, v37, "BDSSyncEnginePipeline - %s: Unable to retrieve serverRecord for recordID %@ perRecordError %@", v38, 0x20u);
        sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v39, -1, -1);
        sub_1E4658A0C(v41);
        v45 = v41;
        v8 = v40;
        MEMORY[0x1E6917530](v45, -1, -1);
        MEMORY[0x1E6917530](v38, -1, -1);
      }

      v92 = v35;
      sub_1E4701460(&qword_1ECF743C8, type metadata accessor for CKError);
      sub_1E4709ACC();
      if (v91 > 25)
      {
        if (v91 == 26 || v91 == 28)
        {
          if (qword_1EE2AE3E8 == -1)
          {
LABEL_23:
            sub_1E4650534(&qword_1ECF75078, qword_1E471E7D0);
            v56 = swift_allocObject();
            *(v56 + 16) = xmmword_1E471E8F0;
            v57 = *(v4 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_zoneID);
            *(v56 + 32) = v57;
            v58 = v57;

            v59 = sub_1E470A0BC();
            v60 = sub_1E470B2CC();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v90 = swift_slowAlloc();
              v62 = v8;
              v63 = v3;
              v64 = v90;
              *v61 = 136446210;
              v65 = sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
              v66 = MEMORY[0x1E6915DE0](v56, v65);
              v68 = sub_1E4654D04(v66, v67, &v90);

              *(v61 + 4) = v68;
              _os_log_impl(&dword_1E45E0000, v59, v60, "BDSSyncEngine - handleZoneMissingOrDeleted: %{public}s", v61, 0xCu);
              sub_1E4658A0C(v64);
              v69 = v64;
              v3 = v63;
              v8 = v62;
              MEMORY[0x1E6917530](v69, -1, -1);
              MEMORY[0x1E6917530](v61, -1, -1);
            }

            sub_1E46C3D48(v56, 1);

LABEL_26:
            v70 = v3;
            MEMORY[0x1E6915DB0]();
            if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v89 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1E470B0DC();
            }

            sub_1E470B0FC();
            v24 = 0;
            v71 = v93;
            v25 = MEMORY[0x1E69E7CC8];
            if ((MEMORY[0x1E69E7CC8] & 0xC000000000000001) == 0)
            {
              goto LABEL_44;
            }

LABEL_34:
            v72 = &qword_1ECF75000;
            if (!sub_1E470B50C())
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

LABEL_53:
          swift_once();
          goto LABEL_23;
        }
      }

      else if (v91 == 14 || v91 == 21)
      {
        goto LABEL_26;
      }

      v90 = v35;
      if (sub_1E4709AEC() == 112)
      {
        v25 = MEMORY[0x1E69E7CC8];
        v71 = MEMORY[0x1E69E7CC0];
        v24 = 1;
        if ((MEMORY[0x1E69E7CC8] & 0xC000000000000001) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_34;
      }

      v80 = v3;
      v81 = v35;
      v48 = sub_1E470A0BC();
      v82 = sub_1E470B2AC();

      if (os_log_type_enabled(v48, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v92 = v85;
        *v83 = 136315650;
        *(v83 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471AD20, &v92);
        *(v83 + 12) = 2112;
        *(v83 + 14) = v80;
        *v84 = v80;
        *(v83 + 22) = 2112;
        v86 = v80;
        v87 = v81;
        v88 = _swift_stdlib_bridgeErrorToNSError();
        *(v83 + 24) = v88;
        v84[1] = v88;
        _os_log_impl(&dword_1E45E0000, v48, v82, "BDSSyncEnginePipeline - %s: Unhandled error for recordID %@ perRecordError %@", v83, 0x20u);
        sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v84, -1, -1);
        sub_1E4658A0C(v85);
        MEMORY[0x1E6917530](v85, -1, -1);
        MEMORY[0x1E6917530](v83, -1, -1);
      }
    }

    goto LABEL_32;
  }

  v26 = a2;
  v27 = a1;
  v8 = sub_1E470A0BC();
  v28 = sub_1E470B2AC();

  if (os_log_type_enabled(v8, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v93 = v31;
    *v29 = 136315650;
    *(v29 + 4) = sub_1E4654D04(0xD00000000000002ELL, 0x80000001E471AD20, &v93);
    *(v29 + 12) = 2112;
    *(v29 + 14) = v27;
    *v30 = v27;
    *(v29 + 22) = 2112;
    v32 = a2;
    v33 = v27;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 24) = v34;
    v30[1] = v34;
    _os_log_impl(&dword_1E45E0000, v8, v28, "BDSSyncEnginePipeline - %s: Error modifying record:%@ error=%@", v29, 0x20u);
    sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v30, -1, -1);
    sub_1E4658A0C(v31);
    MEMORY[0x1E6917530](v31, -1, -1);
    MEMORY[0x1E6917530](v29, -1, -1);
  }

LABEL_51:
}

uint64_t sub_1E46FCC1C()
{
  v1 = v0;
  v2 = sub_1E470A5DC();
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E470A61C();
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v0[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType];
  v12 = *&v0[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType + 8];

  v14 = sub_1E470A0BC();
  v15 = sub_1E470B2CC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1E4654D04(0xD00000000000001FLL, 0x80000001E471AA20, aBlock);
    *(v16 + 12) = 2080;
    v18 = sub_1E4654D04(v13, v12, aBlock);

    *(v16 + 14) = v18;
    _os_log_impl(&dword_1E45E0000, v14, v15, "BDSSyncEnginePipeline - %s: [%s]", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v17, -1, -1);
    MEMORY[0x1E6917530](v16, -1, -1);
  }

  else
  {
  }

  v19 = *&v1[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  aBlock[4] = sub_1E4700CF4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66D08;
  v21 = _Block_copy(aBlock);
  v22 = v19;
  v23 = v1;
  sub_1E470A5FC();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v11, v6, v21);
  _Block_release(v21);

  (*(v27 + 8))(v6, v2);
  (*(v25 + 8))(v11, v26);
}

uint64_t sub_1E46FD024(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_currentModifyBatchResponse);

  sub_1E46FB614(v2, 1);
}

void sub_1E46FD074(void *a1)
{
  v2 = a1;
  oslog = sub_1E470A0BC();
  v3 = sub_1E470B2CC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1E4654D04(0xD000000000000025, 0x80000001E471ACF0, &v9);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v2;
    *v5 = a1;
    v7 = v2;
    _os_log_impl(&dword_1E45E0000, oslog, v3, "BDSSyncEnginePipeline - %s: %@", v4, 0x16u);
    sub_1E465E050(v5, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v5, -1, -1);
    sub_1E4658A0C(v6);
    MEMORY[0x1E6917530](v6, -1, -1);
    MEMORY[0x1E6917530](v4, -1, -1);
  }
}

void sub_1E46FD1E4(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  isUniquelyReferenced_nonNull_native = a1;
  v115 = *(v4 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType);
  v119 = *(v4 + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType + 8);
  if (a1 >> 62)
  {
LABEL_92:
    v7 = sub_1E470B50C();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v126 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v116 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_dataMapper;
      v117 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v124 = a4;
      v120 = isUniquelyReferenced_nonNull_native;
      v118 = v7;
      do
      {
        if (v126)
        {
          v9 = MEMORY[0x1E6916300](v8, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          if (v8 >= *(v117 + 16))
          {
            goto LABEL_85;
          }

          v9 = *(isUniquelyReferenced_nonNull_native + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v12 = [v9 systemFields];
        if (!v12)
        {

          v23 = v10;
          v24 = sub_1E470A0BC();
          v25 = sub_1E470B2AC();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v127[0] = v28;
            *v26 = 136315394;
            *(v26 + 4) = sub_1E4654D04(v115, v119, v127);
            *(v26 + 12) = 2112;
            *(v26 + 14) = v23;
            *v27 = v23;
            v23 = v23;
            _os_log_impl(&dword_1E45E0000, v24, v25, "BDSSyncEnginePipeline - [%s] Unable to retrieve systemFields from %@", v26, 0x16u);
            sub_1E465E050(v27, &qword_1ECF75100, qword_1E471E820);
            v29 = v27;
            v7 = v118;
            MEMORY[0x1E6917530](v29, -1, -1);
            sub_1E4658A0C(v28);
            v30 = v28;
            a4 = v124;
            MEMORY[0x1E6917530](v30, -1, -1);
            MEMORY[0x1E6917530](v26, -1, -1);
          }

          goto LABEL_5;
        }

        v13 = v12;
        if ([v10 deletedFlag])
        {
          v14 = [v13 recordID];
          v15 = v14;
          v16 = *a4;
          if ((*a4 & 0xC000000000000001) != 0)
          {
            if (v16 < 0)
            {
              v17 = *a4;
            }

            else
            {
              v17 = v16 & 0xFFFFFFFFFFFFFF8;
            }

            v18 = v14;
            a4 = sub_1E470B69C();

            if (a4)
            {
              sub_1E45E2DE8(0, &qword_1ECF75460, off_1E8758B88);
              swift_dynamicCast();
              v19 = v127[0];
              if (v127[0])
              {
LABEL_28:

                v36 = v10;
                v37 = sub_1E470A0BC();
                v38 = sub_1E470B2AC();

                if (os_log_type_enabled(v37, v38))
                {
                  v39 = swift_slowAlloc();
                  v40 = swift_slowAlloc();
                  v121 = v13;
                  v41 = swift_slowAlloc();
                  v127[0] = v41;
                  *v39 = 136315394;
                  *(v39 + 4) = sub_1E4654D04(v115, v119, v127);
                  *(v39 + 12) = 2112;
                  *(v39 + 14) = v36;
                  *v40 = v36;
                  v42 = v36;
                  _os_log_impl(&dword_1E45E0000, v37, v38, "BDSSyncEnginePipeline - [%s] cloudDataMap already contans an entry for deleting %@", v39, 0x16u);
                  sub_1E465E050(v40, &qword_1ECF75100, qword_1E471E820);
                  MEMORY[0x1E6917530](v40, -1, -1);
                  sub_1E4658A0C(v41);
                  MEMORY[0x1E6917530](v41, -1, -1);
                  MEMORY[0x1E6917530](v39, -1, -1);
                }

                else
                {
                }

                isUniquelyReferenced_nonNull_native = v120;
                v7 = v118;
                a4 = v124;
                goto LABEL_5;
              }
            }

            v20 = v18;
            v21 = v10;
            v22 = sub_1E470B50C();
            if (__OFADD__(v22, 1))
            {
              goto LABEL_88;
            }

            a4 = v124;
            *v124 = sub_1E46C70E0(v17, v22 + 1);
          }

          else
          {
            if (*(v16 + 16))
            {
              v33 = sub_1E46554E8(v14);
              if (v34)
              {
                v35 = *(*(v16 + 56) + 8 * v33);
                v19 = v35;
                if (v35)
                {
                  goto LABEL_28;
                }
              }
            }

            v61 = v15;
            v62 = v10;
            v63 = *a4;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v127[0] = *a4;
          v64 = v127[0];
          v65 = sub_1E46554E8(v15);
          v67 = *(v64 + 16);
          v68 = (v66 & 1) == 0;
          v69 = __OFADD__(v67, v68);
          v70 = v67 + v68;
          if (v69)
          {
            goto LABEL_86;
          }

          v71 = v66;
          if (*(v64 + 24) >= v70)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v108 = v65;
              sub_1E46583EC();
              v65 = v108;
              v7 = v118;
              a4 = v124;
            }
          }

          else
          {
            sub_1E4656AF4(v70, isUniquelyReferenced_nonNull_native);
            v65 = sub_1E46554E8(v15);
            if ((v71 & 1) != (v72 & 1))
            {
              goto LABEL_94;
            }
          }

          isUniquelyReferenced_nonNull_native = v120;
          v73 = v127[0];
          if (v71)
          {
            v74 = *(v127[0] + 56);
            v75 = *(v74 + 8 * v65);
            *(v74 + 8 * v65) = v10;
          }

          else
          {
            *(v127[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
            *(v73[6] + 8 * v65) = v15;
            *(v73[7] + 8 * v65) = v10;
            v76 = v73[2];
            v69 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v69)
            {
              goto LABEL_89;
            }

            v73[2] = v77;
          }

          *a4 = v73;
          v78 = v15;
          MEMORY[0x1E6915DB0]();
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_81;
          }

          v79 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1E470B0DC();
          goto LABEL_83;
        }

        v31 = *(v125 + v116);
        if (v31)
        {
          v32 = [v31 recordFromCloudData_];
        }

        else
        {
          v32 = [v10 configuredRecordFromAttributes];
        }

        v43 = v32;
        if (!v43)
        {
          v50 = v10;
          v51 = sub_1E470A0BC();
          v52 = sub_1E470B2AC();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v127[0] = v54;
            *v53 = 136315394;
            *(v53 + 4) = sub_1E4654D04(0xD000000000000019, 0x80000001E471ACD0, v127);
            *(v53 + 12) = 2080;
            v55 = [v50 localRecordID];
            v123 = v13;
            v56 = sub_1E470AF1C();
            v58 = v57;

            v59 = sub_1E4654D04(v56, v58, v127);
            v7 = v118;

            *(v53 + 14) = v59;
            a4 = v124;
            _os_log_impl(&dword_1E45E0000, v51, v52, "BDSSyncEnginePipeline - %s: failed to create CKRecord for %s", v53, 0x16u);
            swift_arrayDestroy();
            v60 = v54;
            isUniquelyReferenced_nonNull_native = v120;
            MEMORY[0x1E6917530](v60, -1, -1);
            MEMORY[0x1E6917530](v53, -1, -1);
          }

          else
          {
          }

          goto LABEL_5;
        }

        v44 = v43;
        v122 = v13;
        v45 = [v43 recordID];
        v46 = v45;
        v47 = *a4;
        isUniquelyReferenced_nonNull_native = *a4 & 0xC000000000000001;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v47 < 0)
          {
            v48 = *a4;
          }

          v49 = v45;
          a4 = sub_1E470B69C();

          if (!a4)
          {
LABEL_59:

            v82 = v124;
            goto LABEL_60;
          }

          sub_1E45E2DE8(0, &qword_1ECF75460, off_1E8758B88);
          swift_dynamicCast();
          a4 = v127[0];
        }

        else
        {
          if (!*(v47 + 16))
          {
            goto LABEL_59;
          }

          v80 = sub_1E46554E8(v45);
          if ((v81 & 1) == 0)
          {
            goto LABEL_59;
          }

          a4 = *(*(v47 + 56) + 8 * v80);
        }

        v82 = v124;
        if (a4)
        {

          v83 = v10;
          v84 = sub_1E470A0BC();
          v85 = sub_1E470B2AC();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = v84;
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v127[0] = v89;
            *v87 = 136315394;
            *(v87 + 4) = sub_1E4654D04(v115, v119, v127);
            *(v87 + 12) = 2112;
            *(v87 + 14) = v83;
            *v88 = v83;
            v90 = v83;
            _os_log_impl(&dword_1E45E0000, v86, v85, "BDSSyncEnginePipeline - [%s] cloudDataMap already contans an entry for saving %@", v87, 0x16u);
            sub_1E465E050(v88, &qword_1ECF75100, qword_1E471E820);
            MEMORY[0x1E6917530](v88, -1, -1);
            sub_1E4658A0C(v89);
            v91 = v89;
            a4 = v124;
            MEMORY[0x1E6917530](v91, -1, -1);
            MEMORY[0x1E6917530](v87, -1, -1);

            isUniquelyReferenced_nonNull_native = v120;
            v7 = v118;
          }

          else
          {

            isUniquelyReferenced_nonNull_native = v120;
            v7 = v118;
            a4 = v124;
          }

          goto LABEL_5;
        }

LABEL_60:
        v92 = [v44 recordID];
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v47 >= 0)
          {
            v47 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v93 = v10;
          v94 = sub_1E470B50C();
          v95 = v122;
          if (__OFADD__(v94, 1))
          {
            goto LABEL_90;
          }

          *v82 = sub_1E46C70E0(v47, v94 + 1);
        }

        else
        {
          v96 = v10;
          v97 = *v82;
          v95 = v122;
        }

        a4 = swift_isUniquelyReferenced_nonNull_native();
        v127[0] = *v82;
        v98 = v127[0];
        v99 = sub_1E46554E8(v92);
        v101 = *(v98 + 16);
        v102 = (v100 & 1) == 0;
        v69 = __OFADD__(v101, v102);
        v103 = v101 + v102;
        if (v69)
        {
          goto LABEL_87;
        }

        isUniquelyReferenced_nonNull_native = v100;
        if (*(v98 + 24) < v103)
        {
          sub_1E4656AF4(v103, a4);
          v99 = sub_1E46554E8(v92);
          if ((isUniquelyReferenced_nonNull_native & 1) != (v104 & 1))
          {
LABEL_94:
            sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
            sub_1E470B86C();
            __break(1u);
            return;
          }

LABEL_72:
          v105 = v127[0];
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_73;
          }

          goto LABEL_78;
        }

        if (a4)
        {
          goto LABEL_72;
        }

        a4 = v95;
        v109 = v99;
        sub_1E46583EC();
        v99 = v109;
        v95 = a4;
        v105 = v127[0];
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_73:
          v13 = v95;
          v106 = v105[7];
          v107 = *(v106 + 8 * v99);
          *(v106 + 8 * v99) = v10;

          goto LABEL_80;
        }

LABEL_78:
        v105[(v99 >> 6) + 8] |= 1 << v99;
        *(v105[6] + 8 * v99) = v92;
        *(v105[7] + 8 * v99) = v10;
        v110 = v105[2];
        v69 = __OFADD__(v110, 1);
        v111 = v110 + 1;
        if (v69)
        {
          goto LABEL_91;
        }

        v13 = v95;
        v105[2] = v111;
LABEL_80:
        a4 = v124;
        *v124 = v105;
        v78 = v44;
        MEMORY[0x1E6915DB0]();
        isUniquelyReferenced_nonNull_native = v120;
        v7 = v118;
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v112 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1E470B0DC();
LABEL_83:
          v7 = v118;
          a4 = v124;
        }

LABEL_81:
        sub_1E470B0FC();

LABEL_5:
        ++v8;
      }

      while (v11 != v7);
    }
  }
}

id BDSSyncEnginePipeline.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BDSSyncEnginePipeline.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BDSSyncEnginePipeline();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E46FE000(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_1E46FF8C4(a1);
  swift_endAccess();

  swift_beginAccess();
  v5 = a1;
  MEMORY[0x1E6915DB0]();
  if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v7 = *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  return swift_endAccess();
}

void sub_1E46FE0D8(unint64_t a1)
{
  v2 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1E470B67C() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v4 = ~v7;
    v3 = a1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(a1 + 64);
    v6 = a1;
  }

  v10 = 0;
  v36 = v4;
  v11 = (v4 + 64) >> 6;
  v37 = v6;
  while ((v6 & 0x8000000000000000) != 0)
  {
    if (!sub_1E470B6AC() || (swift_unknownObjectRelease(), sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60), swift_dynamicCast(), (v14 = v40) == 0))
    {
LABEL_32:
      sub_1E45E781C();
      swift_beginAccess();

      sub_1E46FE52C(v35);
      swift_endAccess();
      return;
    }

LABEL_20:
    v15 = [v14 recordID];
    swift_beginAccess();
    v16 = *(v2 + 48);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v38 = v5;
      v17 = v2;
      if (v16 < 0)
      {
        v18 = *(v2 + 48);
      }

      else
      {
        v18 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v19 = v15;
      v20 = sub_1E470B69C();

      if (v20)
      {
        swift_unknownObjectRelease();

        v21 = sub_1E470B50C();
        v22 = sub_1E46C70E0(v18, v21);

        v23 = sub_1E46554E8(v19);
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          goto LABEL_34;
        }

        v26 = *(*(v22 + 56) + 8 * v23);
        sub_1E4700060(v23, v22);

        v2 = v17;
        *(v17 + 48) = v22;
      }

      else
      {

        v2 = v17;
      }

      v6 = v37;
      v5 = v38;
    }

    else
    {
      v27 = *(v2 + 48);
      v28 = sub_1E46554E8(v15);
      if (v29)
      {
        v30 = v28;
        v39 = v5;
        v31 = *(v2 + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = *(v2 + 48);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E46583EC();
        }

        v34 = *(*(v33 + 56) + 8 * v30);
        sub_1E4700060(v30, v33);
        *(v2 + 48) = v33;

        v5 = v39;
      }

      else
      {
      }
    }

    swift_endAccess();
  }

  v12 = v10;
  v13 = v5;
  if (v5)
  {
LABEL_16:
    v5 = (v13 - 1) & v13;
    v14 = *(*(v6 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      goto LABEL_32;
    }

    v13 = *(v3 + 8 * v10);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1E46FE43C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1E470B50C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1E470B50C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1E47001EC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E470028C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E46FE52C(unint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1E470B50C();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *v1;
  if (!(*v1 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v9);
    result = v11 + v9;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
    v18 = *v1;
  }

  v19 = sub_1E470B50C();
  v12 = __OFADD__(v19, v9);
  result = v19 + v9;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_1E47001EC(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v3 + 0x10);
  v15 = (*(v3 + 0x18) >> 1) - v14;
  result = sub_1E46B8EE0(&v36, (v3 + 8 * v14 + 32), v15, v8);
  if (result < v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v16 = *(v3 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v3 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_11:
    result = sub_1E45E781C();
    *v7 = v2;
    return result;
  }

LABEL_18:
  v4 = *(v3 + 16);
  v3 = v36;
  v5 = v37;
  v8 = v39;
  v33 = v38;
  v6 = v40;
  if (v36 < 0)
  {
LABEL_22:
    if (!sub_1E470B6AC())
    {
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
    sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
    result = swift_dynamicCast();
    v21 = v35;
    goto LABEL_33;
  }

  if (!v40)
  {
    v22 = (v38 + 64) >> 6;
    if (v22 <= (v39 + 1))
    {
      v23 = v39 + 1;
    }

    else
    {
      v23 = (v38 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v20 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v21 = 0;
        v6 = 0;
        goto LABEL_32;
      }

      v6 = *(v37 + 8 * v20);
      ++v8;
      if (v6)
      {
        goto LABEL_31;
      }
    }
  }

  v20 = v39;
LABEL_31:
  v25 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v21 = *(*(v36 + 56) + ((v20 << 9) | (8 * v25)));
  result = v21;
  v24 = v20;
LABEL_32:
  v39 = v24;
  v40 = v6;
  v8 = v24;
LABEL_33:
  if (!v21)
  {
    goto LABEL_11;
  }

  v26 = (v33 + 64) >> 6;
LABEL_35:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1E470B0DC();
  }

  v2 = *v7;
  v27 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v32 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v27)
  {
    v27 = v4;
  }

  v34 = v27;
  while (1)
  {
    while (1)
    {
      if (v4 == v34)
      {
        v4 = v34;
        *(v32 + 16) = v34;
        goto LABEL_35;
      }

      *(v32 + 32 + 8 * v4++) = v21;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1E470B6AC())
      {
        swift_unknownObjectRelease();
        sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
        result = swift_dynamicCast();
        v21 = v35;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    if (!v6)
    {
      break;
    }

    v28 = v8;
LABEL_56:
    v31 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = *(*(v3 + 56) + ((v28 << 9) | (8 * v31)));
    result = v21;
    v30 = v28;
LABEL_41:
    v36 = v3;
    v37 = v5;
    v38 = v33;
    v39 = v30;
    v8 = v30;
    v40 = v6;
    if (!v21)
    {
LABEL_58:
      *(v32 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v26 <= (v8 + 1))
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (v33 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v21 = 0;
      v6 = 0;
      goto LABEL_41;
    }

    v6 = *(v5 + 8 * v28);
    ++v8;
    if (v6)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

unint64_t sub_1E46FE8C4(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_33;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_34:
    swift_beginAccess();

    sub_1E46FE43C(v41);
    return swift_endAccess();
  }

LABEL_3:
  if (v4 >= 1)
  {
    if ((v3 & 0xC000000000000001) == 0)
    {
      v23 = (v3 + 32);
      do
      {
        v25 = *v23;
        swift_beginAccess();
        v26 = *(v2 + 48);
        if ((v26 & 0xC000000000000001) != 0)
        {
          if (v26 < 0)
          {
            v27 = *(v2 + 48);
          }

          else
          {
            v27 = v26 & 0xFFFFFFFFFFFFFF8;
          }

          v28 = v25;
          if (sub_1E470B69C())
          {
            swift_unknownObjectRelease();

            v29 = sub_1E470B50C();
            v30 = sub_1E46C70E0(v27, v29);

            v31 = sub_1E46554E8(v28);
            v33 = v32;

            if ((v33 & 1) == 0)
            {
              goto LABEL_32;
            }

            v34 = *(*(v30 + 56) + 8 * v31);
            sub_1E4700060(v31, v30);

            *(v2 + 48) = v30;
          }
        }

        else
        {
          v35 = sub_1E46554E8(v25);
          if (v36)
          {
            v37 = v35;
            v38 = *(v2 + 48);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v40 = *(v2 + 48);
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1E46583EC();
            }

            v24 = *(*(v40 + 56) + 8 * v37);
            sub_1E4700060(v37, v40);
            *(v2 + 48) = v40;
          }
        }

        swift_endAccess();

        ++v23;
        --v4;
      }

      while (v4);
      goto LABEL_34;
    }

    v5 = 0;
    while (1)
    {
      v7 = MEMORY[0x1E6916300](v5, v3);
      swift_beginAccess();
      v8 = *(v2 + 48);
      if ((v8 & 0xC000000000000001) != 0)
      {
        if (v8 < 0)
        {
          v9 = *(v2 + 48);
        }

        else
        {
          v9 = v8 & 0xFFFFFFFFFFFFFF8;
        }

        if (sub_1E470B69C())
        {
          swift_unknownObjectRelease();

          v10 = sub_1E470B50C();
          v11 = sub_1E46C70E0(v9, v10);

          v12 = sub_1E46554E8(v7);
          v14 = v13;

          if ((v14 & 1) == 0)
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            result = sub_1E470B50C();
            v4 = result;
            if (!result)
            {
              goto LABEL_34;
            }

            goto LABEL_3;
          }

          v15 = *(*(v11 + 56) + 8 * v12);
          sub_1E4700060(v12, v11);

          *(v2 + 48) = v11;
        }
      }

      else
      {
        v16 = *(v2 + 48);
        v17 = sub_1E46554E8(v7);
        if (v18)
        {
          v19 = v17;
          v20 = *(v2 + 48);
          v21 = swift_isUniquelyReferenced_nonNull_native();
          v22 = *(v2 + 48);
          if (!v21)
          {
            sub_1E46583EC();
          }

          v6 = *(*(v22 + 56) + 8 * v19);
          sub_1E4700060(v19, v22);
          *(v2 + 48) = v22;
        }
      }

      ++v5;
      swift_endAccess();
      swift_unknownObjectRelease();
      if (v4 == v5)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46FEC08()
{
  v1 = v0;
  result = swift_beginAccess();
  v3 = *(v0 + 48);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (!*(v3 + 16))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v3 < 0)
  {
    v4 = *(v0 + 48);
  }

  v5 = *(v0 + 48);

  v6 = sub_1E470B50C();

  if (v6)
  {
LABEL_7:

    v7 = sub_1E470A0BC();
    v8 = sub_1E470B2AC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1E4654D04(0x676F6C28656E6F64, 0xED0000293A726567, &v17);
      *(v9 + 12) = 2080;
      v11 = *(v1 + 48);
      sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
      sub_1E45E2DE8(0, &qword_1ECF75460, off_1E8758B88);
      sub_1E470141C(&qword_1ECF75C18, &qword_1ECF742F0, 0x1E695BA70);

      v12 = sub_1E470AE7C();
      v14 = v13;

      v15 = sub_1E4654D04(v12, v14, &v17);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_1E45E0000, v7, v8, "BDSSyncEnginePipeline - %s: Unexpected outstanding IDs: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v10, -1, -1);
      MEMORY[0x1E6917530](v9, -1, -1);
    }

    v16 = *(v1 + 48);
    *(v1 + 48) = MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E46FEE6C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_1E46FEEC4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1E4665FC8;

  return v7();
}

uint64_t sub_1E46FEFAC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1E4665DD0;

  return v8();
}

uint64_t sub_1E46FF094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v26 - v12;
  sub_1E465E0B0(a3, v26 - v12, &unk_1ECF752E0, &qword_1E471B9A8);
  v14 = sub_1E470B14C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1E465E050(v13, &unk_1ECF752E0, &qword_1E471B9A8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1E470B13C();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_1E470B11C();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_1E470AF9C() + 32;
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

    sub_1E465E050(a3, &unk_1ECF752E0, &qword_1E471B9A8);

    return v24;
  }

LABEL_8:
  sub_1E465E050(a3, &unk_1ECF752E0, &qword_1E471B9A8);
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

unint64_t sub_1E46FF390@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1E470B05C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1E4693CE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1E4693CE8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1E470B04C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1E470AFDC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1E470AFDC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1E470B05C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1E4693CE8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1E470B05C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1E4693CE8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1E4693CE8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1E470AFDC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46FF780(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v5 = *v2;
  v6 = sub_1E4655454(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  v9 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v4;
  v17 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a2();
    v11 = v17;
  }

  v12 = v8;
  v13 = (*(v11 + 56) + 16 * v8);
  v14 = *v13;
  v15 = v13[1];
  sub_1E46FFD58(v12, v11);
  *v4 = v11;
  return v14;
}

double sub_1E46FF81C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1E4655498(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E46580E4();
      v11 = v13;
    }

    sub_1E46585B4((*(v11 + 56) + 40 * v8), a2);
    sub_1E46FFEC8(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E46FF8C4(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_1E46554E8(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1E4700060(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1E46583EC();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1E470B69C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1E470B50C();
  v8 = sub_1E46C70E0(v4, v7);

  v9 = sub_1E46554E8(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1E4700060(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

unint64_t sub_1E46FFA10(int64_t a1, uint64_t a2)
{
  v4 = sub_1E4709CCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_1E470B4DC();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v4);
      v24 = *(a2 + 40);
      sub_1E4701460(&qword_1ECF75D50, MEMORY[0x1E6969530]);
      v25 = sub_1E470AEBC();
      result = (*v40)(v10, v4);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(type metadata accessor for ReadingHistoryDay(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1E46FFD58(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E470B4DC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1E470B8EC();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1E46FFEC8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E470B4DC() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = sub_1E470B41C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

void sub_1E4700060(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E470B4DC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1E470B41C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_1E47001EC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1E470B50C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1E470B5FC();
  *v1 = result;
  return result;
}

uint64_t sub_1E470028C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E470B50C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E470B50C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E45E2F14(&unk_1ECF75C48, &qword_1ECF75C40, &qword_1E4720480);
          for (i = 0; i != v6; ++i)
          {
            sub_1E4650534(&qword_1ECF75C40, &qword_1E4720480);
            v9 = sub_1E46C9ECC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4700440(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E470B84C() & 1;
  }
}

uint64_t sub_1E47004CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E47004E4(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v17[3] = type metadata accessor for BDSSyncEnginePipeline();
  v17[4] = &off_1F5E66D30;
  v17[0] = a1;
  v6 = a1;
  v7 = sub_1E470AF0C();
  v8 = *&a4[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue];
  sub_1E4658550(v17, v16);
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = v7;
  sub_1E46585B4(v16, v9 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1E4701674;
  *(v10 + 24) = v9;
  v15[4] = sub_1E465DE98;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1E46679F4;
  v15[3] = &unk_1F5E67038;
  v11 = _Block_copy(v15);
  v12 = a4;
  v13 = v7;

  dispatch_sync(v8, v11);

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return sub_1E4658A0C(v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E47006AC(void *a1, uint64_t a2)
{
  v4 = sub_1E470A5DC();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E470A61C();
  v9 = *(v20 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v20, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = sub_1E46D129C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E66FC0;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_1E470A5FC();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1E4701460(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v13, v8, v16);
  _Block_release(v16);
  (*(v21 + 8))(v8, v4);
  (*(v9 + 8))(v13, v20);
}

uint64_t sub_1E47009C4(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = sub_1E46FF8C4(a2);
  swift_endAccess();

  swift_beginAccess();
  v7 = a1;
  MEMORY[0x1E6915DB0]();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v9 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  return swift_endAccess();
}

uint64_t sub_1E4700AC0()
{
  v9 = v0;
  v1 = *(v0 + 16) + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_logger;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1E4654D04(0xD000000000000011, 0x80000001E471AE10, &v8);
    _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEnginePipeline - %s", v4, 0xCu);
    sub_1E4658A0C(v5);
    MEMORY[0x1E6917530](v5, -1, -1);
    MEMORY[0x1E6917530](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6(0);
}

void sub_1E4700C50()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1E46FA720(v1);
}

void sub_1E4700C78()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1E46FBF34(v1, v2);
}

uint64_t sub_1E4700CAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t type metadata accessor for BDSSyncEnginePipeline()
{
  result = qword_1ECF75AE0;
  if (!qword_1ECF75AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4700D50()
{
  result = sub_1E470A0DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of BDSSyncEnginePipeline.startSyncToCK()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x190);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E4665FC8;

  return v6();
}

uint64_t dispatch thunk of BDSSyncEnginePipeline.fetchRecord(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E46C674C;

  return v8(a1);
}

uint64_t dispatch thunk of BDSSyncEnginePipeline.nextRecordZoneChangeBatch(zoneIDs:fetchLimit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B0);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E4665FC8;

  return v12(a1, a2, a3);
}

uint64_t sub_1E470141C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1E45E2DE8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4701460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E47014B0(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3();
  return a1(v5);
}

uint64_t sub_1E4701500()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E4701590()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E47015D0()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = (*(v0 + 16))();
  return v3(v4);
}

uint64_t sub_1E470161C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E470B84C() & 1;
  }
}

void sub_1E4701680()
{
  v1 = *(sub_1E470A0DC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  sub_1E46F6FDC(v0 + v2, v6, v7, v8);
}

void sub_1E470171C()
{
  v1 = *(sub_1E470A0DC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = v5[1];

  sub_1E46F69A4(v0 + v2, v8, v9, v6, v7);
}

uint64_t sub_1E47017C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4665DD0;

  return sub_1E46F848C(v2, v3, v4);
}

uint64_t sub_1E4701878(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E4665FC8;

  return sub_1E46C6CA4(a1, v5);
}

uint64_t sub_1E4701930(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E4665DD0;

  return sub_1E46C6CA4(a1, v5);
}

uint64_t sub_1E47019E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E4665FC8;

  return sub_1E46F8084(v2, v3);
}

uint64_t sub_1E4701A94(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 40);

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1E4701ADC()
{
  v1 = *(sub_1E4650534(&qword_1ECF75D48, &unk_1E4720570) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E46F9970(v2, v3);
}

void sub_1E4701C30(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BDSMediaLibraryUtils No daap item found for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E4701CA8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BDSMediaLibraryUtils No collections for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E4701D78()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "BDSSyncEngineSaltManager - Create salt: unable to save salt record %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4701DE0(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a2 + 48);
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_1E45E0000, log, OS_LOG_TYPE_ERROR, "BDSSyncEngineSaltManager: Error retrieving record salt: %@ serverRecord:%@.. Trying to recover", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4701E70()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "BDSSyncEngineSaltManager - Create salt: unable to save record salt %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4701ED8()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "BDSSyncEngineSaltManager - Create salt: unable to get record salt %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4701F40(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  sub_1E45EDAF8(&dword_1E45E0000, a2, a3, "BDSSyncEngineSaltManager: unable to generate record name for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4701FB0()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "BDSSyncEngineSaltManager - requesting salted ID for %@ without salt!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E470202C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E470209C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E470210C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E470217C(uint64_t a1)
{
  sub_1E45FE9C0(a1, *MEMORY[0x1E69E9840]);
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47021FC()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702238()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E47022A8()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47022E4()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4702354()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702390()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4702400()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E470243C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E47024AC()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47024E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4702558()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702594()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4702604()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702640()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E47026B0()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47026EC()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E470275C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702798()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4702808()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702844()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E47028B4()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47028F0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4702960()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E470299C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4702A0C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702A48(uint64_t a1)
{
  sub_1E45FE994(a1, *MEMORY[0x1E69E9840]);
  sub_1E45FE928();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4702AB8()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702AF4(uint64_t a1)
{
  sub_1E45FE994(a1, *MEMORY[0x1E69E9840]);
  sub_1E45FE928();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4702B64()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702BA0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4702C30()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702C6C(uint64_t a1)
{
  sub_1E45FE9C0(a1, *MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4702CDC()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702D18(uint64_t a1)
{
  sub_1E45FE9C0(a1, *MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4702D88()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702DC4()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4702E34()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702E70()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4702EE0()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702F1C(uint64_t a1)
{
  sub_1E45FE994(a1, *MEMORY[0x1E69E9840]);
  sub_1E45FE928();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4702F8C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4702FC8(uint64_t a1)
{
  sub_1E45FE994(a1, *MEMORY[0x1E69E9840]);
  sub_1E45FE928();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4703038()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703074(uint64_t a1)
{
  sub_1E45FE994(a1, *MEMORY[0x1E69E9840]);
  sub_1E45FE928();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47030E4()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703120()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4703190()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47031CC(uint64_t a1)
{
  sub_1E45FE9C0(a1, *MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E470323C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703278(uint64_t a1)
{
  sub_1E45FE9FC(a1, *MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47032E8()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703324(uint64_t a1)
{
  sub_1E45FE9FC(a1, *MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4703394()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47033D0(uint64_t a1)
{
  sub_1E45FE9FC(a1, *MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4703440()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E470347C(uint64_t a1)
{
  sub_1E45FE9FC(a1, *MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47034EC()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703528()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4703598()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47035D4()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4703644()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703680()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E47036F0()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E470372C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E470379C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47037D8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4703848()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703884()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E47038F4()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703930()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E47039A0()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47039DC()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4703A4C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703A88(uint64_t a1)
{
  v7 = *(sub_1E45FE9C0(a1, *MEMORY[0x1E69E9840]) + 48);
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4703B18()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703B54()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4703BC4()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703C00()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4703C70()
{
  sub_1E45FE9B4();
  v10 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = sub_1E45FE9D8();
  v3 = NSStringFromSelector(v2);
  sub_1E45FE97C();
  sub_1E45E54D0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4703D18()
{
  sub_1E45FE9A4();
  v1 = *MEMORY[0x1E69E9840];
  v3 = sub_1E45FE9E4(v2);
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_1E45FE9CC();
  v5 = NSStringFromSelector(v4);
  sub_1E45FE94C();
  sub_1E45E54D0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4703DBC()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703DF8(uint64_t a1)
{
  sub_1E45FE9C0(a1, *MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4703E68()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703EA4()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4703F14()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703F50(uint64_t a1)
{
  sub_1E45FE9C0(a1, *MEMORY[0x1E69E9840]);
  sub_1E45E54B8();
  sub_1E45FE96C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4703FC0()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4703FFC()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E470406C()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E47040A8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4704118()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4704154()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E47041F8(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 collectionID];
  sub_1E45E54D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47042A0(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 collectionID];
  sub_1E45E54D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47043CC(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 collectionID];
  sub_1E45E54D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47044A0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412802;
  v6 = v3;
  v7 = 1024;
  v8 = 0;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1E45E0000, log, OS_LOG_TYPE_ERROR, "[BDSSaltVersionIdentifierManager] #saltVersionIdentifierChanged - %@ - 5b. dissociateCloudDataFromSyncWithCompletion %{BOOL}d ERROR:%@", &v5, 0x1Cu);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E47045A4()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Error reading widget reading history data file: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E470460C()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Error unarchiving widget reading history data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4704674()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Failed to write widget reading history data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47046DC()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Tried to remove widget reading history data file after failing to save it and failed with: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4704758()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Failed to create directory for saving widget reading history data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47047C0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E45E0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create rawHistoryToken from data error: %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1E4704840(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving persistent history token: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E470496C(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "_isServiceEnabled(%{public}@): TCC returned a NULL array!", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E47049E4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "_isServiceDisabled(%{public}@): TCC returned a NULL array!", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E4704A5C(uint64_t a1, char a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = @"YES";
  if ((a2 & 1) == 0)
  {
    v3 = @"NO";
  }

  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_1E45E0000, log, OS_LOG_TYPE_ERROR, "Failed to set %{public}@ to %{public}@.", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4704AFC(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1E45E0000, log, OS_LOG_TYPE_ERROR, "Unable to create CKAsset local cache at %@ error=%@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4704B88(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 ckAssetStoreDirectory];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "Failed to create cache URL. directory: %@ assetID: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4704C6C(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 startTimestampString];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BDSSecureEngagementData %@ Mismatch key from record key %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4704D1C(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 startTimestampString];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BDSSecureEngagementData %@ No Record supplied", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4704E84(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 storeID];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCStoreItem %@ Mismatch storeID from record storeID %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4704F34(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 storeID];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BCStoreItem %@ No Record supplied", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4705034(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  sub_1E45EDAF8(&dword_1E45E0000, a2, a3, "Error adding storeItem for storeID: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E47050A4()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Error <BCCloudCollectionMemberManager setCollectionMember:completion:> {%@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E470510C()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Error <BCCloudCollectionMemberManager fetchCollectionMembersIncludingDeleted:completion:> {%@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4705174(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) allKeys];
  sub_1E45E54AC();
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "Error adding storeItems for storeIDs: %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E470520C()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Error <BCCloudCollectionMemberManager fetchMaxSortOrderInCollectionID:> {%@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47052A8(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 assetReviewID];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCAssetReview %@ Mismatch assetReviewID from record assetReviewID %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4705358(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 assetReviewID];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BCAssetReview %@ No Record supplied", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4705458(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_DEBUG, "[BCCloudKitTransactionManager] Creating syncToCKTransaction %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E47054D0(const void **a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = _Block_copy(*a1);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_debug_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_DEBUG, "[BCCloudKitTransactionManager] registering completion %@ for syncToCKTransaction %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4705594(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  [a1 establishedSalt];
  v3 = [a2 ckSystemFields];
  sub_1E45E54D0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x18u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E470565C(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v10 = [a1 identifier];
  sub_1E45E54D0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4705728(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 identifier];
  sub_1E45E54D0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47059F8()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4705A34(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 assetID];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4705AC0(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 assetID];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4705B64(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 assetID];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4705BF0(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 assetID];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4705C7C(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 assetID];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4705D08()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4705D44()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4705D80()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4705DBC(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  sub_1E45E54E0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4705E34()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4705E70()
{
  sub_1E45E54EC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1E4705EAC()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4705F1C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4705F8C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4706068(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "monitorServiceNotifications: Got an error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E47060E0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BDSServiceProxy returned fatal error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E4706158(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_1E45E0000, log, OS_LOG_TYPE_ERROR, "BDSServiceProxy returned error: %{public}@, attemptsRemaining: %ld", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1E47061E0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BDSServiceProxy depleted error attempts: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E470626C()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "BCCloudKitDatabaseController - Error fetching zone changes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47062D4(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4706360()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "did not call completion after 10s in %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47063C8(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E470646C(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 attachedToContainer];
  v4 = @"NO";
  if (v3)
  {
    v4 = @"YES";
  }

  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_DEBUG, "BCCloudKitDatabaseController - fetchRecordForRecordID attached: %@", &v6, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4706510()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "BCCloudKitDatabaseController - Error fetching user recordID: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4706578()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "BCCloudKitDatabaseController - requesting salted ID for %@ without salt!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47065E0()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "BCCloudDatabaseController: unable to generate record name for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4706648(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1E45E0000, log, OS_LOG_TYPE_DEBUG, "BCCloudKitDatabaseController modifySubscriptionsOperation: %@, id: %@", buf, 0x16u);
}

void sub_1E47066B0()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "CKFetchDatabaseChangesOperation failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4706718()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "CKFetchRecordZonesOperation failed. Account Temporarily Unavailable: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4706780()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "CKFetchRecordZonesOperation failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47067E8()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "BCCloudKitDatabaseController - Create salt: unable to save salt record %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4706850()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "BCCloudKitDatabaseController - Create salt: unable to save record salt %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47068B8()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "BCCloudKitDatabaseController - Create salt: unable to get record salt %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4706920()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "BCCloudKitDatabaseController - CKFetchRecordZoneChangesOperation NOT retrying fetch for error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4706988()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Error decoding BCCloudKitDatabaseController from data.  Error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47069F0(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  sub_1E4628AFC();
  sub_1E45E5514(&dword_1E45E0000, v2, v3, "Error deleting zones (%{public}@): (%{public}@)");
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4706A60(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 containerIdentifier];
  sub_1E4628AE8();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4706AFC(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 containerIdentifier];
  sub_1E4628AE8();
  sub_1E45E54D0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4706B98()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1E4628AE8();
  sub_1E45E5514(&dword_1E45E0000, v0, v1, "BCCloudKitDatabaseController - Invalid parameter combination observer=%p recordType=%{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E4706C04(uint64_t *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  sub_1E4628AFC();
  sub_1E45E5514(&dword_1E45E0000, v4, v5, "BCCloudKitDatabaseController - Attempt to remove observer %p that is not observing recordType %{public}@.");
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4706C78(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *a2;
  sub_1E4628AFC();
  sub_1E45E5514(&dword_1E45E0000, v4, v5, "BCCloudKitDatabaseController - Attempt to remove observer %p that is not observing recordType %{public}@.");
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4706CEC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1E45EDAF8(&dword_1E45E0000, a1, a3, "BCCloudKitDatabaseController - Invalid observer=%p", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4706D5C(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 40);
  sub_1E4628AFC();
  sub_1E45E5514(&dword_1E45E0000, v4, v5, "BCCloudKitDatabaseController - Invalid parameter combination BCCloudKitDatabaseZoneObserver observer=%p recordType=%{public}@");
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4706DD0()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1E4628AE8();
  sub_1E45E5514(&dword_1E45E0000, v0, v1, "BCCloudKitDatabaseController - Invalid parameter combination tokenStore=%p recordZoneID=%{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E4706E3C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  sub_1E45EDAF8(&dword_1E45E0000, a2, a3, "BCCloudKitDatabaseController - Registered multiple stores for record zone %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4706F48()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Error reading widget data file: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4706FB0()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Error unarchiving currentWidgetData: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4707018()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Failed to write out current widget data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4707080()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Tried to remove current widget data file after failing to update it and failed with: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47070FC()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Failed to create directory for saving widget data: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47071B0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "#dissociateCloudData Change Token Controller error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E4707228()
{
  sub_1E45FE9B4();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(v1 + 32) zoneName];
  [v0 count];
  sub_1E45E5534(&dword_1E45E0000, v3, v4, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ we should never have more than 1 record. We have %lu@) records.", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E47072D0()
{
  sub_1E45FE9B4();
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(v1 + 32) zoneName];
  v10 = *v0;
  sub_1E45E5534(&dword_1E45E0000, v3, v4, "<%@ BCCloudChangeTokenController - No change yet we tried updating %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4707374()
{
  sub_1E45FE9B4();
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 40) zoneName];
  sub_1E462D6DC();
  sub_1E45E5534(&dword_1E45E0000, v2, v3, "BCCloudChangeTokenController - Error deleting cloud tokens: %@ with server change token: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4707404()
{
  sub_1E45FE9B4();
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 32) zoneName];
  sub_1E462D6DC();
  sub_1E45E5534(&dword_1E45E0000, v2, v3, "BCCloudChangeTokenController - #recordChange Error saving MOC zone: %@ with server change token: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4707494()
{
  sub_1E45FE9B4();
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 40) zoneName];
  sub_1E462D6DC();
  sub_1E45E5534(&dword_1E45E0000, v2, v3, "BCCloudChangeTokenController - #recordChange Error fetching from MOC zone: %@ with server change token: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4707524(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "Error unarchiving server change token: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E47075D0(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 key];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCSecureUserDatum %@ Mismatch key from record key %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4707680(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 key];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BCSecureUserDatum %@ No Record supplied", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4707780()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4707870()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45E54E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E47078F4()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "BCCloudKitController - Error connecting user to database error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E470795C()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "_coalescedAttachment did not call completion after 10s in %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47079C4()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "did not call _coalescedChangeAttachment completion after 45 in %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4707A2C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4707AD4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4707B7C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E4639D48();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4707C28(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_DEBUG, "BCCloudKitController - CURRENT ACCOUNT STATUS %ld", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1E4707CA4(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  sub_1E45EDAF8(&dword_1E45E0000, a2, a3, "Could not determine iCloud status.  Not syncing anything.  Account status error=%{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4707D14()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E45EDAF8(&dword_1E45E0000, v0, v1, "Error connecting user to database error=%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4707D7C(id *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [*a1 configuration];
  v4 = [v3 containerIdentifier];
  v5 = *(a2 + 40);
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1E4707E38(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 configuration];
  v4 = [v3 containerIdentifier];
  sub_1E45E54AC();
  _os_log_debug_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_DEBUG, "_updateAccountCacheWithTimeout(%{public}@)", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1E4707F70(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 48) configuration];
  v6 = [v5 containerIdentifier];
  v7 = *(*(*a2 + 8) + 24);
  sub_1E45E54AC();
  v11 = 1024;
  v12 = v8;
  _os_log_debug_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_DEBUG, "(%{public}@) _updateAccountCacheWithTimeout hasChanged:%{BOOL}d ", v10, 0x12u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4708040(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 40) configuration];
  v10 = [v4 containerIdentifier];
  [*(a1 + 48) currentStatus];
  v11 = *a2;
  sub_1E4639D48();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E4708120(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) configuration];
  v8 = [v2 containerIdentifier];
  [*(a1 + 48) currentStatus];
  sub_1E4639D48();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E47081E8(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E470828C(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E4708330(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E45E54D0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E47083D4(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 configuration];
  v2 = [v1 containerIdentifier];
  sub_1E45E54AC();
  sub_1E4639D48();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E47084D0(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "Unable to create persistent stores on the coordinator:%@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1E470854C(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [a2 domain];
  v8 = 138543874;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  v12 = 1024;
  v13 = [a2 code];
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "Error %{public}@: %{public}@ %d", &v8, 0x1Cu);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E4708718(void *a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = [a1 assetID];
  v7 = [a1 debugDescription];
  v8 = [a2 assetID];
  v10 = 138412802;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  _os_log_debug_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_DEBUG, "BCReadingNowDetail configured: %@ %@ from readingNowDetail:%@", &v10, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1E47087FC(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 assetID];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCReadingNowDetail %@ Mismatch assetID from record assetID %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47088AC(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [a1 assetID];
  v5 = [a2 recordID];
  v6 = [v5 recordName];
  v7 = [a1 debugDescription];
  sub_1E463C098();
  sub_1E463C0B8(&dword_1E45E0000, v8, v9, "Assuming cloudAssetType %@ Resolving: from record: %@ %@", v10, v11, v12, v13, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4708980(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [a1 assetID];
  v5 = [a2 recordID];
  v6 = [v5 recordName];
  v7 = [a1 debugDescription];
  sub_1E463C098();
  sub_1E463C0B8(&dword_1E45E0000, v8, v9, "BCReadingNowDetail %@ Resolving: Identical properties from record: %@ %@", v10, v11, v12, v13, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E4708A54(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 assetID];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BCReadingNowDetail %@ No Record supplied", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4708BE0(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 collectionMemberID];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCCollectionMember %@ Mismatch assetID from record collectionMemberID %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4708E24(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 assetID];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCAssetDetail %@ Mismatch assetID from record assetID %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E4708ED4(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 assetID];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BCAssetDetail %@ No Record supplied", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4709008(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 key];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1E45E0000, a3, OS_LOG_TYPE_ERROR, "BCGlobalMetadatum %@ Mismatch key from record key %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47090B8(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 key];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1E45E0000, a2, OS_LOG_TYPE_ERROR, "BCGlobalMetadatum %@ No Record supplied", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E47091CC()
{
  v4 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  sub_1E4650124(&dword_1E45E0000, v0, v1, "#dissociateCloudData error: %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E4709238()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1E45E54AC();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_1E45E0000, v1, OS_LOG_TYPE_ERROR, "BCCloudDataManager error: %{public}@, at: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E47092F0(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 entityName];
  sub_1E45E54AC();
  sub_1E4639D48();
  sub_1E4650124(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E470937C(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  sub_1E465010C();
  sub_1E4639D48();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E470941C(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  sub_1E465010C();
  sub_1E4639D48();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x12u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E47094BC(void *a1, id *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a1 entityName];
  v9 = [*a2 debugDescription];
  sub_1E4639D48();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E47095E4(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 24);
  sub_1E465010C();
  _os_log_fault_impl(&dword_1E45E0000, v3, OS_LOG_TYPE_FAULT, "BCCloudDataManager %{public}@ resolveConflictsForRecords: Encountered duplicates: %d", v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E4709664(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543362;
  v6 = v3;
  sub_1E4650124(&dword_1E45E0000, a2, a3, "BCCloudDataManager #recordChange failedRecordIDs:%{public}@", &v5);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E47096D8(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) entityName];
  sub_1E45E54AC();
  sub_1E4639D48();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E470976C(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*a1 entityName];
  sub_1E45E54AC();
  sub_1E4639D48();
  sub_1E4650124(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1E47097F8(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 40) entityName];
  sub_1E45E54AC();
  sub_1E4639D48();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1E470988C(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [a1 entityName];
  sub_1E45E54AC();
  sub_1E4639D48();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}