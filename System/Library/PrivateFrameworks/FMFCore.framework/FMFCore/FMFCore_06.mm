uint64_t sub_24A3F73D4()
{
  v1 = v0[17];

  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24A3F7458()
{
  v1[17] = v0;
  v2 = *(*(sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v3 = sub_24A4AB3F0();
  v1[19] = v3;
  v4 = *(v3 - 8);
  v1[20] = v4;
  v5 = *(v4 + 64) + 15;
  v1[21] = swift_task_alloc();
  v6 = sub_24A4AB400();
  v1[22] = v6;
  v7 = *(v6 - 8);
  v1[23] = v7;
  v8 = *(v7 + 64) + 15;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3F75AC, v0, 0);
}

uint64_t sub_24A3F75AC()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[25] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFSecureLocationCtrl: stop refreshing", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v5 = v0[17];

  swift_beginAccess();
  v6 = v5[15];
  v7 = MEMORY[0x277D84F98];
  v5[15] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v8 = v5[16];
  v5[16] = v7;

  swift_beginAccess();
  v9 = v5[19];
  v5[19] = v7;

  swift_beginAccess();
  v10 = v5[20];
  v5[20] = v7;

  if (v5[17])
  {

    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    sub_24A4ABBA0();
  }

  v11 = v0[17];
  if (*(v11 + 144))
  {
    v12 = *(v11 + 144);

    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    sub_24A4ABBA0();

    v11 = v0[17];
  }

  v13 = *(v11 + 112);
  v0[26] = v13;
  if (v13)
  {
    v14 = objc_opt_self();

    v15 = [v14 mainBundle];
    v16 = [v15 bundleIdentifier];

    if (v16)
    {
      sub_24A4AB850();
    }

    v24 = v0[24];
    (*(v0[20] + 104))(v0[21], *MEMORY[0x277D094A8], v0[19]);
    sub_24A4AB3E0();
    v25 = *(MEMORY[0x277D093E0] + 4);
    v26 = swift_task_alloc();
    v0[27] = v26;
    *v26 = v0;
    v26[1] = sub_24A3F79C0;
    v27 = v0[24];

    return MEMORY[0x28215FB08](v27);
  }

  else
  {
    v17 = v0[24];
    v18 = v0[21];
    v19 = v0[18];
    v20 = sub_24A4AAAD0();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v21 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
    swift_beginAccess();
    sub_24A3A87F4(v19, v11 + v21);
    swift_endAccess();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_24A3F79C0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 192);
  v6 = *(*v1 + 184);
  v7 = *(*v1 + 176);
  v8 = *v1;
  *(*v1 + 224) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 136);
  if (v0)
  {
    v10 = sub_24A3F7F20;
  }

  else
  {
    v10 = sub_24A3F7B6C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_24A3F7B6C()
{
  v1 = v0[17];
  v2 = *(v1 + 112);
  v0[29] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x277D093B8] + 4);

    v4 = swift_task_alloc();
    v0[30] = v4;
    *v4 = v0;
    v4[1] = sub_24A3F7CF8;

    return MEMORY[0x28215FAD8]();
  }

  else
  {
    v5 = v0[24];
    v6 = v0[21];
    v7 = v0[18];
    v8 = sub_24A4AAAD0();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
    swift_beginAccess();
    sub_24A3A87F4(v7, v1 + v9);
    swift_endAccess();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_24A3F7CF8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v9 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = sub_24A3F81A4;
  }

  else
  {
    v6 = *(v2 + 232);
    v7 = *(v2 + 136);

    v5 = sub_24A3F7E20;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24A3F7E20()
{
  v1 = v0[24];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = sub_24A4AAAD0();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
  swift_beginAccess();
  sub_24A3A87F4(v3, v4 + v6);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24A3F7F20()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v1;
  v4 = sub_24A4AB600();
  v5 = sub_24A4ABCE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24A376000, v4, v5, "FMFSecureLocationCtrl: Stop refreshing location failed with error: %@", v8, 0xCu);
    sub_24A37EF2C(v9, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[17];
  v13 = *(v12 + 112);
  v0[29] = v13;
  if (v13)
  {
    v14 = *(MEMORY[0x277D093B8] + 4);

    v15 = swift_task_alloc();
    v0[30] = v15;
    *v15 = v0;
    v15[1] = sub_24A3F7CF8;

    return MEMORY[0x28215FAD8]();
  }

  else
  {
    v16 = v0[24];
    v17 = v0[21];
    v18 = v0[18];
    v19 = sub_24A4AAAD0();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v20 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
    swift_beginAccess();
    sub_24A3A87F4(v18, v12 + v20);
    swift_endAccess();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_24A3F81A4()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[25];

  v4 = v1;
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[31];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24A376000, v5, v6, "FMFSecureLocationCtrl: Stop updating friends failed with error: %@", v9, 0xCu);
    sub_24A37EF2C(v10, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v10, -1, -1);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[24];
  v14 = v0[21];
  v16 = v0[17];
  v15 = v0[18];
  v17 = sub_24A4AAAD0();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
  swift_beginAccess();
  sub_24A3A87F4(v15, v16 + v18);
  swift_endAccess();

  v19 = v0[1];

  return v19();
}

uint64_t sub_24A3F83A4()
{
  v1[2] = v0;
  v2 = *(*(sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(sub_24A3C9CEC(&qword_27EF3FA98, &qword_24A4B7308) - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3F84B8, v0, 0);
}

uint64_t sub_24A3F84B8()
{
  v1 = v0[2];
  v2 = *(v1 + 112);
  v0[8] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x277D093C8] + 4);

    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_24A3F8778;
    v5 = v0[7];

    return MEMORY[0x28215FAF0](v5, 0);
  }

  else
  {
    v6 = v0[6];
    v7 = v0[7];
    v9 = v0[4];
    v8 = v0[5];
    v10 = v0[3];
    v11 = sub_24A3C9CEC(&qword_27EF3FAA0, &qword_24A4B7310);
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = sub_24A4ABB70();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    sub_24A37B740(v7, v6, &qword_27EF3FA98, &qword_24A4B7308);
    v13 = sub_24A4069B8(&qword_27EF3FA50, type metadata accessor for FMFSecureLocationController);
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = v13;
    sub_24A37BE24(v6, v16 + v14, &qword_27EF3FA98, &qword_24A4B7308);
    *(v16 + v15) = v1;
    swift_retain_n();
    sub_24A432D64(0, 0, v10, &unk_24A4B7320, v16);

    sub_24A37EF2C(v7, &qword_27EF3FA98, &qword_24A4B7308);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_24A3F8778()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_24A3F8AC0;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 16);

    v5 = sub_24A3F88A0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24A3F88A0()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_24A3C9CEC(&qword_27EF3FAA0, &qword_24A4B7310);
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  v8 = sub_24A4ABB70();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_24A37B740(v2, v1, &qword_27EF3FA98, &qword_24A4B7308);
  v9 = sub_24A4069B8(&qword_27EF3FA50, type metadata accessor for FMFSecureLocationController);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v9;
  sub_24A37BE24(v1, v12 + v10, &qword_27EF3FA98, &qword_24A4B7308);
  *(v12 + v11) = v6;
  swift_retain_n();
  sub_24A432D64(0, 0, v5, &unk_24A4B7320, v12);

  sub_24A37EF2C(v2, &qword_27EF3FA98, &qword_24A4B7308);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A3F8AC0()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];

  v5 = v0[1];
  v6 = v0[10];

  return v5();
}

uint64_t sub_24A3F8B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v7 = sub_24A4AAD40();
  v5[19] = v7;
  v8 = *(v7 - 8);
  v5[20] = v8;
  v9 = *(v8 + 64) + 15;
  v5[21] = swift_task_alloc();
  v10 = sub_24A4AAD60();
  v5[22] = v10;
  v11 = *(v10 - 8);
  v5[23] = v11;
  v12 = *(v11 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v13 = sub_24A4AB220();
  v5[26] = v13;
  v14 = *(v13 - 8);
  v5[27] = v14;
  v15 = *(v14 + 64) + 15;
  v5[28] = swift_task_alloc();
  v16 = sub_24A4AB1E0();
  v5[29] = v16;
  v17 = *(v16 - 8);
  v5[30] = v17;
  v18 = *(v17 + 64) + 15;
  v5[31] = swift_task_alloc();
  v19 = sub_24A4AAE00();
  v5[32] = v19;
  v20 = *(v19 - 8);
  v5[33] = v20;
  v21 = *(v20 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v22 = *(*(sub_24A3C9CEC(&qword_27EF3FAA8, &qword_24A4B7328) - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v23 = sub_24A3C9CEC(&qword_27EF3FAB0, &unk_24A4B7330);
  v5[40] = v23;
  v24 = *(v23 - 8);
  v5[41] = v24;
  v25 = *(v24 + 64) + 15;
  v5[42] = swift_task_alloc();
  v26 = *(*(sub_24A3C9CEC(&qword_27EF3FA98, &qword_24A4B7308) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v27 = sub_24A3C9CEC(&qword_27EF3FAA0, &qword_24A4B7310);
  v5[44] = v27;
  v28 = *(v27 - 8);
  v5[45] = v28;
  v29 = *(v28 + 64) + 15;
  v5[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3F8EFC, a5, 0);
}

uint64_t sub_24A3F8EFC()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  sub_24A37B740(*(v0 + 136), v3, &qword_27EF3FA98, &qword_24A4B7308);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24A37EF2C(*(v0 + 344), &qword_27EF3FA98, &qword_24A4B7308);
    v4 = *(v0 + 368);
    v5 = *(v0 + 336);
    v6 = *(v0 + 344);
    v8 = *(v0 + 304);
    v7 = *(v0 + 312);
    v10 = *(v0 + 288);
    v9 = *(v0 + 296);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 248);
    v25 = *(v0 + 224);
    v26 = *(v0 + 200);
    v27 = *(v0 + 192);
    v28 = *(v0 + 168);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 336);
    v17 = *(v0 + 144);
    (*(*(v0 + 360) + 32))(*(v0 + 368), *(v0 + 344), *(v0 + 352));
    sub_24A4ABB80();
    *(v0 + 376) = sub_24A4069B8(&qword_27EF3FA50, type metadata accessor for FMFSecureLocationController);
    swift_beginAccess();
    *(v0 + 432) = *MEMORY[0x277D090C0];
    *(v0 + 436) = *MEMORY[0x277D09030];
    *(v0 + 440) = *MEMORY[0x277D08FE0];
    *(v0 + 384) = 0;
    v18 = *(v0 + 376);
    v19 = *(v0 + 144);
    v20 = *(MEMORY[0x277D85798] + 4);
    v21 = swift_task_alloc();
    *(v0 + 392) = v21;
    *v21 = v0;
    v21[1] = sub_24A3F91B8;
    v22 = *(v0 + 336);
    v23 = *(v0 + 312);
    v24 = *(v0 + 320);

    return MEMORY[0x2822003E8](v23, v19, v18, v24);
  }
}

uint64_t sub_24A3F91B8()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24A3F92C8, v2, 0);
}

uint64_t sub_24A3F92C8()
{
  v160 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = *(v0 + 352);
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    (*(v5 + 8))(v4, v6);
    v7 = *(v0 + 368);
    v8 = *(v0 + 336);
    v9 = *(v0 + 344);
    v11 = *(v0 + 304);
    v10 = *(v0 + 312);
    v13 = *(v0 + 288);
    v12 = *(v0 + 296);
    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v16 = *(v0 + 248);
    v147 = *(v0 + 224);
    v150 = *(v0 + 200);
    v153 = *(v0 + 192);
    v156 = *(v0 + 168);

    v17 = *(v0 + 8);
LABEL_5:

    return v17();
  }

  v18 = *(v0 + 384);
  (*(v3 + 32))(*(v0 + 304), v1, v2);
  sub_24A4ABBB0();
  if (v18)
  {
    v20 = *(v0 + 360);
    v19 = *(v0 + 368);
    v21 = *(v0 + 352);
    v23 = *(v0 + 328);
    v22 = *(v0 + 336);
    v24 = *(v0 + 320);
    (*(*(v0 + 264) + 8))(*(v0 + 304), *(v0 + 256));
    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
    v25 = *(v0 + 368);
    v26 = *(v0 + 336);
    v27 = *(v0 + 344);
    v29 = *(v0 + 304);
    v28 = *(v0 + 312);
    v31 = *(v0 + 288);
    v30 = *(v0 + 296);
    v33 = *(v0 + 272);
    v32 = *(v0 + 280);
    v145 = *(v0 + 248);
    v148 = *(v0 + 224);
    v151 = *(v0 + 200);
    v154 = *(v0 + 192);
    v157 = *(v0 + 168);

    v17 = *(v0 + 8);
    goto LABEL_5;
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 296);
  v35 = *(v0 + 304);
  v37 = *(v0 + 256);
  v38 = *(v0 + 264);
  v39 = sub_24A4AB630();
  sub_24A378E18(v39, qword_27EF4E260);
  v40 = *(v38 + 16);
  v40(v36, v35, v37);
  v41 = sub_24A4AB600();
  v42 = sub_24A4ABCB0();
  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v0 + 296);
  v158 = v40;
  if (v43)
  {
    v45 = *(v0 + 288);
    v47 = *(v0 + 256);
    v46 = *(v0 + 264);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v159[0] = v49;
    *v48 = 136315138;
    v158(v45, v44, v47);
    v50 = sub_24A4AB870();
    v52 = v51;
    v53 = v47;
    v54 = *(v46 + 8);
    v54(v44, v53);
    v55 = v50;
    v40 = v158;
    v56 = sub_24A37BD58(v55, v52, v159);

    *(v48 + 4) = v56;
    _os_log_impl(&dword_24A376000, v41, v42, "FMFSecureLocationCtrl: friendship stream update - %s", v48, 0xCu);
    sub_24A37EEE0(v49);
    MEMORY[0x24C219130](v49, -1, -1);
    MEMORY[0x24C219130](v48, -1, -1);
  }

  else
  {
    v58 = *(v0 + 256);
    v57 = *(v0 + 264);

    v54 = *(v57 + 8);
    v54(v44, v58);
  }

  *(v0 + 400) = v54;
  v59 = *(v0 + 432);
  v60 = *(v0 + 280);
  v61 = *(v0 + 256);
  v62 = *(v0 + 264);
  v40(v60, *(v0 + 304), v61);
  if ((*(v62 + 88))(v60, v61) == v59)
  {
    v152 = v54;
    v63 = *(v0 + 280);
    v64 = *(v0 + 240);
    v65 = *(v0 + 248);
    v67 = *(v0 + 224);
    v66 = *(v0 + 232);
    v68 = *(v0 + 208);
    v69 = *(v0 + 216);
    (*(*(v0 + 264) + 96))(v63, *(v0 + 256));
    (*(v64 + 32))(v65, v63, v66);
    sub_24A4AB1D0();
    v70 = sub_24A4AB210();
    v72 = v71;
    (*(v69 + 8))(v67, v68);
    if (v72)
    {
      v149 = v70;
      v73 = *(v0 + 436);
      v74 = *(v0 + 248);
      v76 = *(v0 + 192);
      v75 = *(v0 + 200);
      v78 = *(v0 + 176);
      v77 = *(v0 + 184);
      sub_24A4AB1C0();
      (*(v77 + 104))(v76, v73, v78);
      LOBYTE(v74) = sub_24A4AAD50();
      v79 = *(v77 + 8);
      v79(v76, v78);
      v79(v75, v78);
      if (v74)
      {
        v80 = *(*(v0 + 144) + 120);
        if (*(v80 + 16))
        {
          v81 = *(*(v0 + 144) + 120);

          v82 = sub_24A39B2C8(v149, v72);
          if (v83)
          {
            v84 = *(v0 + 304);
            v85 = *(v0 + 272);
            v86 = *(v0 + 256);
            v87 = *(v80 + 56) + 32 * v82;
            v143 = *v87;
            v88 = *(v87 + 16);
            v141 = *(v87 + 25);
            v142 = *(v87 + 24);
            v140 = *(v87 + 26);
            v146 = *(v87 + 8);

            v144 = v88;

            v158(v85, v84, v86);
            v89 = sub_24A4AB600();
            v90 = sub_24A4ABCE0();
            if (os_log_type_enabled(v89, v90))
            {
              v91 = *(v0 + 288);
              v92 = *(v0 + 272);
              v93 = *(v0 + 256);
              v139 = *(v0 + 264) + 8;
              v94 = swift_slowAlloc();
              v155 = swift_slowAlloc();
              v159[0] = v155;
              *v94 = 136315138;
              v158(v91, v92, v93);
              v95 = sub_24A4AB870();
              v97 = v96;
              v152(v92, v93);
              v98 = sub_24A37BD58(v95, v97, v159);

              *(v94 + 4) = v98;
              _os_log_impl(&dword_24A376000, v89, v90, "FMFSecureLocationCtrl: stream friend added but we already started locating them. Restart. - %s", v94, 0xCu);
              sub_24A37EEE0(v155);
              MEMORY[0x24C219130](v155, -1, -1);
              MEMORY[0x24C219130](v94, -1, -1);
            }

            else
            {
              v116 = *(v0 + 264);
              v115 = *(v0 + 272);
              v117 = *(v0 + 256);

              v152(v115, v117);
            }

            v118 = *(v0 + 144);
            swift_beginAccess();
            v119 = *(v118 + 120);
            v120 = sub_24A39B2C8(v149, v72);
            LOBYTE(v119) = v121;

            if (v119)
            {
              v122 = *(v0 + 144);
              v123 = *(v122 + 120);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v125 = *(v122 + 120);
              *(v0 + 128) = v125;
              *(v122 + 120) = 0x8000000000000000;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_24A4A863C();
                v125 = *(v0 + 128);
              }

              v126 = *(v0 + 144);
              v127 = *(*(v125 + 48) + 16 * v120 + 8);

              v128 = *(v125 + 56) + 32 * v120;
              v129 = *(v128 + 8);
              v130 = *(v128 + 16);

              sub_24A4A7078(v120, v125);
              *(v126 + 120) = v125;
            }

            v131 = *(v0 + 440);
            v133 = *(v0 + 160);
            v132 = *(v0 + 168);
            v134 = *(v0 + 152);
            swift_endAccess();
            sub_24A3C9CEC(&qword_27EF3F520, &qword_24A4B5760);
            inited = swift_initStackObject();
            *(v0 + 408) = inited;
            *(inited + 16) = xmmword_24A4B4E10;
            *(inited + 32) = v143;
            *(inited + 40) = v146;
            *(inited + 48) = v144;
            *(inited + 56) = v142;
            *(inited + 57) = v141;
            *(inited + 58) = v140;
            (*(v133 + 104))(v132, v131, v134);
            v136 = swift_task_alloc();
            *(v0 + 416) = v136;
            *v136 = v0;
            v136[1] = sub_24A3F9D70;
            v137 = *(v0 + 168);
            v138 = *(v0 + 144);

            return sub_24A404CA4(inited, v137);
          }
        }
      }

      v101 = *(v0 + 400);
      v102 = *(v0 + 304);
      v103 = *(v0 + 256);
      v104 = *(v0 + 264) + 8;
      (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
      v101(v102, v103);
    }

    else
    {
      v105 = *(v0 + 304);
      v106 = *(v0 + 256);
      v107 = *(v0 + 264) + 8;
      (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
      v152(v105, v106);
    }
  }

  else
  {
    v99 = *(v0 + 280);
    v100 = *(v0 + 256);
    v54(*(v0 + 304), v100);
    v54(v99, v100);
  }

  *(v0 + 384) = 0;
  v108 = *(v0 + 376);
  v109 = *(v0 + 144);
  v110 = *(MEMORY[0x277D85798] + 4);
  v111 = swift_task_alloc();
  *(v0 + 392) = v111;
  *v111 = v0;
  v111[1] = sub_24A3F91B8;
  v112 = *(v0 + 336);
  v113 = *(v0 + 312);
  v114 = *(v0 + 320);

  return MEMORY[0x2822003E8](v113, v109, v108, v114);
}

uint64_t sub_24A3F9D70()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = v2[51];
  v6 = v2[21];
  v7 = v2[20];
  v8 = v2[19];
  v9 = v2[18];
  (*(v7 + 8))(v6, v8);
  swift_setDeallocating();
  v10 = *(v5 + 16);
  swift_arrayDestroy();
  if (v0)
  {
    v11 = sub_24A3FA01C;
  }

  else
  {
    v11 = sub_24A3F9F1C;
  }

  return MEMORY[0x2822009F8](v11, v9, 0);
}

uint64_t sub_24A3F9F1C()
{
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[38];
  v4 = v0[32];
  v5 = v0[33] + 8;
  (*(v0[30] + 8))(v0[31], v0[29]);
  v2(v3, v4);
  v0[48] = v1;
  v6 = v0[47];
  v7 = v0[18];
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[49] = v9;
  *v9 = v0;
  v9[1] = sub_24A3F91B8;
  v10 = v0[42];
  v11 = v0[39];
  v12 = v0[40];

  return MEMORY[0x2822003E8](v11, v7, v6, v12);
}

uint64_t sub_24A3FA01C()
{
  v1 = v0[50];
  v2 = v0[45];
  v26 = v0[46];
  v3 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[40];
  v7 = v0[38];
  v8 = v0[32];
  v9 = v0[33] + 8;
  (*(v0[30] + 8))(v0[31], v0[29]);
  v1(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v26, v3);
  v10 = v0[46];
  v12 = v0[42];
  v11 = v0[43];
  v14 = v0[38];
  v13 = v0[39];
  v16 = v0[36];
  v15 = v0[37];
  v18 = v0[34];
  v17 = v0[35];
  v19 = v0[31];
  v22 = v0[28];
  v23 = v0[25];
  v24 = v0[24];
  v25 = v0[21];
  v27 = v0[53];

  v20 = v0[1];

  return v20();
}

uint64_t sub_24A3FA1B8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = *(*(sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = sub_24A3C9CEC(&qword_27EF3FA28, &qword_24A4B72A0);
  v2[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = *(sub_24A3C9CEC(&qword_27EF3FA30, &qword_24A4B72A8) - 8);
  v2[11] = v7;
  v2[12] = *(v7 + 64);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v8 = sub_24A4AAD40();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = type metadata accessor for FMFFriend();
  v2[19] = v11;
  v12 = *(v11 - 8);
  v2[20] = v12;
  v13 = *(v12 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3C0160, v1, 0);
}

uint64_t sub_24A3FA428()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = v2[26];
  v6 = v2[25];
  v7 = v2[17];
  v8 = v2[16];
  v9 = v2[15];
  v10 = v2[6];
  (*(v8 + 8))(v7, v9);

  if (v0)
  {
    v11 = sub_24A3FA8E8;
  }

  else
  {
    v11 = sub_24A3FA5E4;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_24A3FA5E4()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  sub_24A3C9CEC(&qword_27EF3FA38, &qword_24A4B72B8);
  sub_24A378704(&qword_27EF3FA40, &qword_27EF3FA28, &qword_24A4B72A0);
  sub_24A4AC230();
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[18];
  v23 = v0[17];
  v4 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[7];
  v24 = v0[10];
  v25 = v0[8];
  v9 = v0[6];
  v10 = sub_24A3C9CEC(&qword_27EF3FA48, &qword_24A4B72C0);
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  v11 = sub_24A4ABB70();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_24A37B740(v5, v4, &qword_27EF3FA30, &qword_24A4B72A8);
  v12 = sub_24A4069B8(&qword_27EF3FA50, type metadata accessor for FMFSecureLocationController);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v12;
  sub_24A37BE24(v4, v15 + v13, &qword_27EF3FA30, &qword_24A4B72A8);
  *(v15 + v14) = v9;
  swift_retain_n();
  sub_24A432D64(0, 0, v8, &unk_24A4B72D0, v15);

  sub_24A37EF2C(v5, &qword_27EF3FA30, &qword_24A4B72A8);

  v16 = v0[1];

  return v16();
}

uint64_t sub_24A3FA8E8()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[10];
  v10 = v0[8];
  v14 = v0[7];

  v11 = v0[1];
  v12 = v0[28];

  return v11();
}

uint64_t sub_24A3FA9D4(uint64_t a1, uint64_t a2)
{
  v2[48] = a1;
  v2[49] = a2;
  v3 = type metadata accessor for FMFLocation();
  v2[50] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v5 = sub_24A4AB220();
  v2[53] = v5;
  v6 = *(v5 - 8);
  v2[54] = v6;
  v7 = *(v6 + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v8 = sub_24A4AB4E0();
  v2[58] = v8;
  v9 = *(v8 - 8);
  v2[59] = v9;
  v10 = *(v9 + 64) + 15;
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v11 = sub_24A4AAE30();
  v2[62] = v11;
  v12 = *(v11 - 8);
  v2[63] = v12;
  v13 = *(v12 + 64) + 15;
  v2[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FABAC, 0, 0);
}

uint64_t sub_24A3FABAC()
{
  v68 = v0;
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  (*(v2 + 16))(v1, v0[49], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D09130])
  {
    v5 = v0[64];
    v6 = v0[61];
    v7 = v0[59];
    v9 = v0[57];
    v8 = v0[58];
    v63 = v0[56];
    v11 = v0[53];
    v10 = v0[54];
    v64 = v0[60];
    v65 = v0[52];
    v66 = v0[48];
    (*(v0[63] + 96))(v5, v0[62]);
    v12 = *(sub_24A3C9CEC(&qword_27EF3FA90, &qword_24A4B7300) + 48);
    (*(v7 + 32))(v6, v5, v8);
    v13 = *(v10 + 32);
    v13(v9, v5 + v12, v11);
    (*(v7 + 16))(v64, v6, v8);
    (*(v10 + 16))(v63, v9, v11);
    sub_24A3EAF90(v64, v63, v65);
    (*(v7 + 8))(v6, v8);
    v14 = sub_24A3C9CEC(&qword_27EF3FA38, &qword_24A4B72B8);
    v15 = *(v14 + 48);
    sub_24A39976C(v65, v66, type metadata accessor for FMFLocation);
    v13(v66 + v15, v9, v11);
    (*(*(v14 - 8) + 56))(v66, 0, 1, v14);
  }

  else
  {
    v17 = v0[63];
    v16 = v0[64];
    v18 = v0[62];
    if (v4 == *MEMORY[0x277D09128])
    {
      v20 = v0[54];
      v19 = v0[55];
      v21 = v0[53];
      (*(v17 + 96))(v0[64], v0[62]);
      v22 = *(v20 + 32);
      v22(v19, v16, v21);
      v23 = sub_24A4AB210();
      if (v24)
      {
        v25 = v23;
        v26 = v24;
        v28 = v0[50];
        v27 = v0[51];
        v29 = v28[8];
        v30 = sub_24A4AAB20();
        (*(*(v30 - 8) + 56))(v27 + v29, 1, 1, v30);
        *v27 = v25;
        *(v27 + 8) = v26;
        sub_24A3B4ACC((v0 + 2));
        memcpy((v27 + v28[11]), v0 + 2, 0x161uLL);
        *(v27 + 16) = 0;
        *(v27 + 24) = 0;
        *(v27 + 32) = 257;
        *(v27 + v28[9]) = 0;
        *(v27 + v28[10]) = 0;
        v31 = FMFLocation.debugDescription.getter();
        v33 = v32;
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v34 = sub_24A4AB630();
        sub_24A378E18(v34, qword_27EF4E260);

        v35 = sub_24A4AB600();
        v36 = sub_24A4ABCE0();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v67 = v38;
          *v37 = 136315394;
          v39 = sub_24A37BD58(v31, v33, &v67);

          *(v37 + 4) = v39;
          *(v37 + 12) = 2080;
          v0[47] = 0;
          sub_24A3C9CEC(&qword_27EF3FA88, &qword_24A4B72F8);
          v40 = sub_24A4ABDE0();
          v42 = sub_24A37BD58(v40, v41, &v67);

          *(v37 + 14) = v42;
          _os_log_impl(&dword_24A376000, v35, v36, "👀 FMFLocation: created %s with location: '%s'", v37, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C219130](v38, -1, -1);
          MEMORY[0x24C219130](v37, -1, -1);
        }

        else
        {
        }

        v47 = v0[55];
        v48 = v0[53];
        v49 = v0[51];
        v50 = v0[48];
        v51 = sub_24A3C9CEC(&qword_27EF3FA38, &qword_24A4B72B8);
        v52 = *(v51 + 48);
        sub_24A39976C(v49, v50, type metadata accessor for FMFLocation);
        v22(v50 + v52, v47, v48);
        (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
      }

      else
      {
        v45 = v0[48];
        (*(v0[54] + 8))(v0[55], v0[53]);
        v46 = sub_24A3C9CEC(&qword_27EF3FA38, &qword_24A4B72B8);
        (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
      }
    }

    else
    {
      v43 = v0[48];
      v44 = sub_24A3C9CEC(&qword_27EF3FA38, &qword_24A4B72B8);
      (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
      (*(v17 + 8))(v16, v18);
    }
  }

  v53 = v0[64];
  v54 = v0[60];
  v55 = v0[61];
  v57 = v0[56];
  v56 = v0[57];
  v58 = v0[55];
  v60 = v0[51];
  v59 = v0[52];

  v61 = v0[1];

  return v61();
}

uint64_t sub_24A3FB240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[148] = a5;
  v5[147] = a4;
  v7 = *(*(sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0) - 8) + 64) + 15;
  v5[149] = swift_task_alloc();
  v5[150] = swift_task_alloc();
  v8 = sub_24A3C9CEC(&qword_27EF3FA38, &qword_24A4B72B8);
  v5[151] = v8;
  v9 = *(v8 - 8);
  v5[152] = v9;
  v10 = *(v9 + 64) + 15;
  v5[153] = swift_task_alloc();
  v5[154] = swift_task_alloc();
  v5[155] = swift_task_alloc();
  v5[156] = swift_task_alloc();
  v5[157] = swift_task_alloc();
  v5[158] = swift_task_alloc();
  v5[159] = swift_task_alloc();
  v5[160] = swift_task_alloc();
  v5[161] = swift_task_alloc();
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v5[164] = swift_task_alloc();
  v11 = type metadata accessor for FMFLocation();
  v5[165] = v11;
  v12 = *(v11 - 8);
  v5[166] = v12;
  v13 = *(v12 + 64) + 15;
  v5[167] = swift_task_alloc();
  v14 = sub_24A3C9CEC(&qword_27EF3FA58, &qword_24A4B72D8);
  v5[168] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[169] = swift_task_alloc();
  v16 = sub_24A3C9CEC(&qword_27EF3FA60, &qword_24A4B72E0);
  v5[170] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v5[171] = swift_task_alloc();
  v18 = *(*(sub_24A3C9CEC(&qword_27EF3FA30, &qword_24A4B72A8) - 8) + 64) + 15;
  v5[172] = swift_task_alloc();
  v19 = sub_24A3C9CEC(&qword_27EF3FA48, &qword_24A4B72C0);
  v5[173] = v19;
  v20 = *(v19 - 8);
  v5[174] = v20;
  v21 = *(v20 + 64) + 15;
  v5[175] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FB550, a5, 0);
}

uint64_t sub_24A3FB550()
{
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1376);
  sub_24A37B740(*(v0 + 1176), v3, &qword_27EF3FA30, &qword_24A4B72A8);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_24A37EF2C(*(v0 + 1376), &qword_27EF3FA30, &qword_24A4B72A8);
    v4 = *(v0 + 1400);
    v5 = *(v0 + 1376);
    v6 = *(v0 + 1368);
    v7 = *(v0 + 1352);
    v8 = *(v0 + 1336);
    v9 = *(v0 + 1312);
    v10 = *(v0 + 1304);
    v11 = *(v0 + 1296);
    v12 = *(v0 + 1288);
    v13 = *(v0 + 1280);
    v27 = *(v0 + 1272);
    v28 = *(v0 + 1264);
    v29 = *(v0 + 1256);
    v30 = *(v0 + 1248);
    v31 = *(v0 + 1240);
    v32 = *(v0 + 1232);
    v33 = *(v0 + 1224);
    v34 = *(v0 + 1200);
    v35 = *(v0 + 1192);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 1368);
    v36 = *(v0 + 1360);
    v17 = *(v0 + 1352);
    v18 = *(v0 + 1344);
    (*(*(v0 + 1392) + 32))(*(v0 + 1400), *(v0 + 1376), *(v0 + 1384));
    sub_24A4AC2E0();
    *(v17 + *(v18 + 36)) = xmmword_24A4B6FF0;
    v19 = v17 + *(v18 + 40);
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 1;
    sub_24A3C9CEC(&qword_27EF3FA68, &qword_24A4B72E8);
    sub_24A4AC010();
    sub_24A378704(&qword_27EF3FA70, &qword_27EF3FA48, &qword_24A4B72C0);
    sub_24A4069B8(&qword_27EF3FA18, MEMORY[0x277D85928]);
    sub_24A378704(&qword_27EF3FA78, &qword_27EF3FA68, &qword_24A4B72E8);
    sub_24A4ABBC0();
    sub_24A37EF2C(v17, &qword_27EF3FA58, &qword_24A4B72D8);
    v20 = sub_24A4AB5E0();
    *(v0 + 1408) = v21;
    *(v0 + 1096) = v20;
    *(v0 + 1104) = v23;
    *(v0 + 1112) = v21;
    *(v0 + 1120) = v22 & 1;
    *(v0 + 1416) = sub_24A4069B8(&qword_27EF3FA50, type metadata accessor for FMFSecureLocationController);
    *(v0 + 1424) = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_delegate;
    v24 = *(MEMORY[0x277CEF738] + 4);
    v25 = swift_task_alloc();
    *(v0 + 1432) = v25;
    v26 = sub_24A3C9CEC(&qword_27EF3FA80, &qword_24A4B72F0);
    *v25 = v0;
    v25[1] = sub_24A3FB994;

    return MEMORY[0x282141C70](v0 + 1152, v26);
  }
}

uint64_t sub_24A3FB994()
{
  v2 = *v1;
  v3 = *(*v1 + 1432);
  v4 = *v1;
  v2[180] = v0;

  v5 = v2[148];
  if (v0)
  {
    if (v5)
    {
      v6 = v2[177];
      swift_getObjectType();
      v7 = sub_24A4ABB40();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_24A3FCD14;
  }

  else
  {
    v2[181] = v2[144];
    if (v5)
    {
      v11 = v2[177];
      swift_getObjectType();
      v7 = sub_24A4ABB40();
      v9 = v12;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_24A3FBB34;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_24A3FBB50()
{
  v192 = v0;
  v1 = *(v0 + 1448);
  if (!v1)
  {
    v12 = *(v0 + 1408);

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v13 = sub_24A4AB630();
    sub_24A378E18(v13, qword_27EF4E260);
    v14 = sub_24A4AB600();
    v15 = sub_24A4ABCE0();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 1400);
    v18 = *(v0 + 1392);
    v19 = *(v0 + 1384);
    v20 = *(v0 + 1368);
    if (v16)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24A376000, v14, v15, "FMFSecureLocationCtrl: location stream - ending", v21, 2u);
      MEMORY[0x24C219130](v21, -1, -1);
    }

    sub_24A37EF2C(v20, &qword_27EF3FA60, &qword_24A4B72E0);
    (*(v18 + 8))(v17, v19);
    v22 = *(v0 + 1400);
    v23 = *(v0 + 1376);
    v24 = *(v0 + 1368);
    v25 = *(v0 + 1352);
    v26 = *(v0 + 1336);
    v27 = *(v0 + 1312);
    v28 = *(v0 + 1304);
    v29 = *(v0 + 1296);
    v30 = *(v0 + 1288);
    v31 = *(v0 + 1280);
    v156 = *(v0 + 1272);
    v158 = *(v0 + 1264);
    v161 = *(v0 + 1256);
    logb = *(v0 + 1248);
    v171 = *(v0 + 1240);
    v174 = *(v0 + 1232);
    v177 = *(v0 + 1224);
    v182 = *(v0 + 1200);
    v187 = *(v0 + 1192);

    v11 = *(v0 + 8);
    goto LABEL_9;
  }

  v2 = *(v0 + 1440);
  sub_24A4ABBB0();
  if (v2)
  {
    v3 = *(v0 + 1408);
    v4 = *(v0 + 1400);
    v5 = *(v0 + 1392);
    v6 = *(v0 + 1384);
    v7 = *(v0 + 1376);
    v8 = *(v0 + 1368);
    v9 = *(v0 + 1352);
    v10 = *(v0 + 1336);
    v147 = *(v0 + 1312);
    v148 = *(v0 + 1304);
    v149 = *(v0 + 1296);
    v151 = *(v0 + 1288);
    v153 = *(v0 + 1280);
    v155 = *(v0 + 1272);
    v157 = *(v0 + 1264);
    v160 = *(v0 + 1256);
    loga = *(v0 + 1248);
    v170 = *(v0 + 1240);
    v173 = *(v0 + 1232);
    v176 = *(v0 + 1224);
    v181 = *(v0 + 1200);
    v186 = *(v0 + 1192);

    sub_24A37EF2C(v8, &qword_27EF3FA60, &qword_24A4B72E0);
    (*(v5 + 8))(v4, v6);

    v11 = *(v0 + 8);
LABEL_9:

    return v11();
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v33 = sub_24A4AB630();
  sub_24A378E18(v33, qword_27EF4E260);

  v34 = sub_24A4AB600();
  v35 = sub_24A4ABCE0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = *(v1 + 16);

    _os_log_impl(&dword_24A376000, v34, v35, "FMFSecureLocationCtrl: location stream update - updating %ld locations", v36, 0xCu);
    MEMORY[0x24C219130](v36, -1, -1);
  }

  else
  {
  }

  v37 = v1;

  v38 = *(v0 + 1424);
  v39 = *(v0 + 1184);
  v146 = v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v40 = *(v1 + 16);
    v41 = MEMORY[0x277D84F90];
    if (v40)
    {
      v42 = v37;
      v43 = *(v0 + 1216);
      *(v0 + 1168) = MEMORY[0x277D84F90];
      sub_24A3B57CC(0, v40, 0);
      v41 = *(v0 + 1168);
      v44 = v42 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v183 = *(v43 + 72);
      do
      {
        v188 = v40;
        v45 = *(v0 + 1336);
        v46 = *(v0 + 1312);
        v47 = *(v0 + 1304);
        v48 = *(v0 + 1208);
        sub_24A37B740(v44, v46, &qword_27EF3FA38, &qword_24A4B72B8);
        sub_24A37BE24(v46, v47, &qword_27EF3FA38, &qword_24A4B72B8);
        v49 = *(v48 + 48);
        sub_24A39976C(v47, v45, type metadata accessor for FMFLocation);
        v50 = sub_24A4AB220();
        (*(*(v50 - 8) + 8))(v47 + v49, v50);
        *(v0 + 1168) = v41;
        v52 = v41[2];
        v51 = v41[3];
        if (v52 >= v51 >> 1)
        {
          sub_24A3B57CC(v51 > 1, v52 + 1, 1);
          v41 = *(v0 + 1168);
        }

        v53 = *(v0 + 1336);
        v54 = *(v0 + 1328);
        v41[2] = v52 + 1;
        sub_24A39976C(v53, v41 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v52, type metadata accessor for FMFLocation);
        v44 += v183;
        --v40;
      }

      while (v188 != 1);
    }

    sub_24A43E62C(v41);
    swift_unknownObjectRelease();

    v37 = v146;
  }

  v55 = *(v37 + 16);
  if (v55)
  {
    v56 = v37;
    v57 = *(v0 + 1216);
    v58 = *(v0 + 1184);
    v152 = *(*(v0 + 1208) + 48);
    v154 = *(v0 + 1296);
    v59 = v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    swift_beginAccess();
    v150 = *(v57 + 72);
    v172 = v55 - 1;
    for (i = v0; ; v0 = i)
    {
      v60 = *(v0 + 1296);
      v61 = *(v0 + 1288);
      v62 = *(v0 + 1280);
      v63 = *(v0 + 1272);
      v64 = *(v0 + 1208);
      sub_24A37B740(v59, v60, &qword_27EF3FA38, &qword_24A4B72B8);
      v65 = *(v64 + 48);
      sub_24A39976C(v60, v61, type metadata accessor for FMFLocation);
      v66 = sub_24A4AB220();
      v189 = *(v66 - 8);
      (*(v189 + 32))(v61 + v65, v154 + v152, v66);
      sub_24A37B740(v61, v62, &qword_27EF3FA38, &qword_24A4B72B8);
      sub_24A37B740(v61, v63, &qword_27EF3FA38, &qword_24A4B72B8);
      v67 = sub_24A4AB600();
      v68 = sub_24A4ABCE0();
      v175 = v59;
      if (os_log_type_enabled(v67, v68))
      {
        v69 = *(v0 + 1312);
        v70 = *(v0 + 1280);
        v71 = *(v0 + 1272);
        v72 = *(v0 + 1208);
        v73 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        v191[0] = v184;
        *v73 = 136315394;
        sub_24A37B740(v70, v69, &qword_27EF3FA38, &qword_24A4B72B8);
        logc = v67;
        v74 = v66;
        v75 = *(v72 + 48);
        v178 = v68;
        v76 = sub_24A4AB1F0();
        v78 = v77;
        sub_24A37EF2C(v70, &qword_27EF3FA38, &qword_24A4B72B8);
        v162 = *(v189 + 8);
        v162(v69 + v75, v74);
        sub_24A39A638(v69, type metadata accessor for FMFLocation);
        v79 = sub_24A37BD58(v76, v78, v191);

        *(v73 + 4) = v79;
        *(v73 + 12) = 2080;
        sub_24A37B740(v71, v69, &qword_27EF3FA38, &qword_24A4B72B8);
        v80 = *(v72 + 48);
        v81 = FMFLocation.debugDescription.getter();
        v83 = v82;
        sub_24A37EF2C(v71, &qword_27EF3FA38, &qword_24A4B72B8);
        sub_24A39A638(v69, type metadata accessor for FMFLocation);
        v162(v69 + v80, v74);
        v84 = sub_24A37BD58(v81, v83, v191);

        *(v73 + 14) = v84;
        _os_log_impl(&dword_24A376000, logc, v178, "FMFSecureLocationCtrl: location stream update - %s: %s", v73, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C219130](v184, -1, -1);
        MEMORY[0x24C219130](v73, -1, -1);
      }

      else
      {
        v85 = *(v0 + 1280);
        v86 = *(v0 + 1272);

        sub_24A37EF2C(v86, &qword_27EF3FA38, &qword_24A4B72B8);
        sub_24A37EF2C(v85, &qword_27EF3FA38, &qword_24A4B72B8);
        v74 = v66;
      }

      v87 = *(v0 + 1320);
      v88 = *(v0 + 1288);
      v89 = *(v0 + 1264);
      v90 = *(v0 + 1256);
      v91 = *(v0 + 1208);
      sub_24A37B740(v88, v89, &qword_27EF3FA38, &qword_24A4B72B8);
      v92 = *(v91 + 48);
      v179 = sub_24A4AB210();
      v185 = v93;
      v94 = v89 + v92;
      v95 = *(v189 + 8);
      v95(v94, v74);
      sub_24A37B740(v88, v90, &qword_27EF3FA38, &qword_24A4B72B8);
      v96 = *(v91 + 48);
      memmove((v0 + 16), (v90 + *(v87 + 44)), 0x161uLL);
      v97 = sub_24A3B9C24(v0 + 16);
      v98 = *(v0 + 1256);
      v99 = *(v0 + 1200);
      if (v97 == 1)
      {
        sub_24A39A638(*(v0 + 1256), type metadata accessor for FMFLocation);
        v95(v90 + v96, v74);
        v100 = sub_24A4AAAD0();
        (*(*(v100 - 8) + 56))(v99, 1, 1, v100);
      }

      else
      {
        v101 = *(v0 + 320);
        sub_24A39A638(v98, type metadata accessor for FMFLocation);
        v102 = [v101 timestamp];

        sub_24A4AAAA0();
        v103 = sub_24A4AAAD0();
        (*(*(v103 - 8) + 56))(v99, 0, 1, v103);
        v95(v90 + v96, v74);
      }

      v104 = v74;
      v105 = *(v0 + 1320);
      v106 = *(v0 + 1312);
      v159 = *(i + 1288);
      logd = *(i + 1264);
      v107 = *(i + 1208);
      v163 = v107;
      v108 = *(i + 1200);
      v109 = *(i + 1184);
      sub_24A37B740(v159, v106, &qword_27EF3FA38, &qword_24A4B72B8);
      v110 = *(v107 + 48);
      memcpy((i + 376), (v106 + *(v105 + 44)), 0x161uLL);
      LODWORD(v107) = sub_24A3B9C24(i + 376) == 0;
      sub_24A39A638(v106, type metadata accessor for FMFLocation);
      v95(v106 + v110, v104);
      sub_24A4244D4(v179, v185, v108, v107);

      sub_24A37EF2C(v108, &qword_27EF3F460, &unk_24A4B53B0);
      sub_24A39A638(logd, type metadata accessor for FMFLocation);
      sub_24A37B740(v159, v106, &qword_27EF3FA38, &qword_24A4B72B8);
      v111 = *(v163 + 48);
      LODWORD(v110) = *(v106 + 33);
      sub_24A39A638(v106, type metadata accessor for FMFLocation);
      v180 = v104;
      v95(v106 + v111, v104);
      if (v110 == 2)
      {
        v112 = *(i + 1320);
        v113 = *(i + 1288);
        v114 = *(i + 1248);
        v115 = *(i + 1240);
        v116 = *(i + 1208);
        sub_24A37B740(v113, v114, &qword_27EF3FA38, &qword_24A4B72B8);
        v117 = *(v116 + 48);
        v164 = sub_24A4AB210();
        log = v118;
        v95(v114 + v117, v180);
        sub_24A37B740(v113, v115, &qword_27EF3FA38, &qword_24A4B72B8);
        v119 = *(v116 + 48);
        memmove((i + 736), (v115 + *(v112 + 44)), 0x161uLL);
        v120 = sub_24A3B9C24(i + 736);
        v121 = *(i + 1240);
        v122 = *(i + 1192);
        if (v120 == 1)
        {
          sub_24A39A638(*(i + 1240), type metadata accessor for FMFLocation);
          v95(v115 + v119, v180);
          v123 = sub_24A4AAAD0();
          (*(*(v123 - 8) + 56))(v122, 1, 1, v123);
        }

        else
        {
          v124 = *(i + 1040);
          sub_24A39A638(v121, type metadata accessor for FMFLocation);
          v125 = [v124 timestamp];

          sub_24A4AAAA0();
          v126 = sub_24A4AAAD0();
          (*(*(v126 - 8) + 56))(v122, 0, 1, v126);
          v95(v115 + v119, v180);
        }

        v127 = *(i + 1248);
        v128 = *(i + 1192);
        v129 = *(*(i + 1184) + 128);

        sub_24A424CB4(v164, log, v128, v129);

        sub_24A37EF2C(v128, &qword_27EF3F460, &unk_24A4B53B0);
        sub_24A39A638(v127, type metadata accessor for FMFLocation);
      }

      v130 = *(i + 1232);
      sub_24A37B740(*(i + 1288), v130, &qword_27EF3FA38, &qword_24A4B72B8);
      v131 = *(v130 + 33);
      sub_24A39A638(v130, type metadata accessor for FMFLocation);
      v132 = *(i + 1288);
      if (v131 == 2)
      {
        v133 = *(i + 1224);
        v134 = *(i + 1208);
        sub_24A37B740(v132, v133, &qword_27EF3FA38, &qword_24A4B72B8);
        v135 = *(v134 + 48);
        v136 = sub_24A4AB210();
        v138 = *(i + 1288);
        v139 = *(i + 1224);
        if (v137)
        {
          v140 = v136;
          v141 = v137;
          v142 = *(i + 1184);
          v95(v133 + v135, v180);
          sub_24A39A638(v139, type metadata accessor for FMFLocation);
          sub_24A3FEB38(v140, v141);

          sub_24A37EF2C(v138, &qword_27EF3FA38, &qword_24A4B72B8);
        }

        else
        {
          sub_24A37EF2C(*(i + 1288), &qword_27EF3FA38, &qword_24A4B72B8);
          v95(v133 + v135, v180);
          sub_24A39A638(v139, type metadata accessor for FMFLocation);
        }

        v95(*(i + 1232) + *(*(i + 1208) + 48), v180);
      }

      else
      {
        sub_24A37EF2C(v132, &qword_27EF3FA38, &qword_24A4B72B8);
        v95(*(i + 1232) + *(*(i + 1208) + 48), v180);
      }

      if (!v172)
      {
        break;
      }

      --v172;
      v59 = v175 + v150;
    }

    v0 = i;
  }

  else
  {
  }

  v143 = *(MEMORY[0x277CEF738] + 4);
  v144 = swift_task_alloc();
  *(v0 + 1432) = v144;
  v145 = sub_24A3C9CEC(&qword_27EF3FA80, &qword_24A4B72F0);
  *v144 = v0;
  v144[1] = sub_24A3FB994;

  return MEMORY[0x282141C70](v0 + 1152, v145);
}

uint64_t sub_24A3FCD14()
{
  *(v0 + 1160) = *(v0 + 1440);
  sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_24A3FCDA0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for FMFFriend();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FCE7C, v2, 0);
}

uint64_t sub_24A3FCE7C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = *(v3 + 72);
    v7 = v1 + v5;
    v8 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F90];
    do
    {
      v10 = v0[9];
      sub_24A3A0ADC(v7, v10);
      v11 = v0[9];
      if ((*(v10 + *(v4 + 36)) & 2) != 0)
      {
        sub_24A39976C(v11, v0[8], type metadata accessor for FMFFriend);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24A39E574(0, *(v9 + 16) + 1, 1);
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        v14 = v9;
        if (v13 >= v12 >> 1)
        {
          sub_24A39E574(v12 > 1, v13 + 1, 1);
          v14 = v9;
        }

        v15 = v0[8];
        *(v14 + 16) = v13 + 1;
        sub_24A39976C(v15, v14 + v5 + v13 * v6, type metadata accessor for FMFFriend);
        v9 = v14;
      }

      else
      {
        sub_24A39A638(v11, type metadata accessor for FMFFriend);
      }

      v7 += v6;
      --v2;
    }

    while (v2);
    v16 = *(v9 + 16);
    if (v16)
    {
      v34 = v0[7];
      sub_24A3DBDC8(0, v16, 0);
      v17 = v8;
      v18 = v9 + v5;
      v35 = v6;
      v36 = v0;
      do
      {
        v19 = v0[7];
        sub_24A3A0ADC(v18, v19);
        v20 = *v19;
        v21 = *(v34 + 8);
        v22 = *(v34 + 32);

        sub_24A39A638(v19, type metadata accessor for FMFFriend);
        v24 = *(v8 + 16);
        v23 = *(v8 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_24A3DBDC8((v23 > 1), v24 + 1, 1);
        }

        *(v8 + 16) = v24 + 1;
        v25 = v8 + 32 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v21;
        *(v25 + 48) = v22;
        *(v25 + 56) = 0;
        *(v25 + 58) = 0;
        v0 = v36;
        v18 += v35;
        --v16;
      }

      while (v16);
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v0[10] = v17;
    v31 = swift_task_alloc();
    v0[11] = v31;
    *v31 = v0;
    v31[1] = sub_24A3FD1B8;
    v32 = v0[3];
    v33 = v0[4];

    return sub_24A3FFDAC(v17, v32);
  }

  else
  {
    v27 = v0[8];
    v26 = v0[9];
    v28 = v0[7];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_24A3FD1B8()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v9 = *v0;

  v4 = v1[9];
  v5 = v1[8];
  v6 = v1[7];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_24A3FD324(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for FMFFriend();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = sub_24A4AAD40();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FD468, v2, 0);
}

uint64_t sub_24A3FD468()
{
  v84 = v0;
  v1 = *(v0[8] + 16);
  if (v1)
  {
    if (qword_27EF3EBF8 != -1)
    {
LABEL_45:
      swift_once();
    }

    v2 = v0[19];
    v3 = v0[16];
    v4 = v0[17];
    v5 = v0[9];
    v6 = sub_24A4AB630();
    sub_24A378E18(v6, qword_27EF4E260);
    v79 = *(v4 + 16);
    v79(v2, v5, v3);
    v7 = sub_24A4AB600();
    v8 = sub_24A4ABCE0();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[19];
    v11 = v0[16];
    v12 = v0[17];
    v80 = v1;
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v83 = v14;
      *v13 = 136315138;
      sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0]);
      v15 = sub_24A4AC240();
      v17 = v16;
      v78 = *(v12 + 8);
      v78(v10, v11);
      v18 = sub_24A37BD58(v15, v17, &v83);
      v1 = v80;

      *(v13 + 4) = v18;
      _os_log_impl(&dword_24A376000, v7, v8, "FMFSecureLocationCtrl: startLocating called, with priority: %s", v13, 0xCu);
      sub_24A37EEE0(v14);
      MEMORY[0x24C219130](v14, -1, -1);
      MEMORY[0x24C219130](v13, -1, -1);
    }

    else
    {

      v78 = *(v12 + 8);
      v78(v10, v11);
    }

    v26 = 0;
    v28 = v0[11];
    v27 = v0[12];
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = *(v27 + 72);
    v31 = v0[8] + v29;
    v32 = MEMORY[0x277D84F90];
    v82 = v30;
    do
    {
      v33 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      v34 = v0[15];
      sub_24A3A0ADC(v31, v34);
      v35 = v0[15];
      if ((*(v34 + *(v28 + 36)) & 2) != 0)
      {
        sub_24A39976C(v35, v0[14], type metadata accessor for FMFFriend);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A39E574(0, *(v32 + 16) + 1, 1);
          v32 = v83;
        }

        v38 = *(v32 + 16);
        v37 = *(v32 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_24A39E574(v37 > 1, v38 + 1, 1);
          v32 = v83;
        }

        v39 = v0[14];
        *(v32 + 16) = v38 + 1;
        v30 = v82;
        sub_24A39976C(v39, v32 + v29 + v38 * v82, type metadata accessor for FMFFriend);
        v1 = v80;
      }

      else
      {
        sub_24A39A638(v35, type metadata accessor for FMFFriend);
      }

      v31 += v30;
      ++v26;
    }

    while (v33 != v1);
    v40 = *(v32 + 16);
    v81 = v0;
    if (v40)
    {
      v41 = v0[13];
      v83 = MEMORY[0x277D84F90];
      sub_24A3DBDC8(0, v40, 0);
      v42 = v83;
      v43 = v32 + v29;
      do
      {
        v44 = v0[13];
        sub_24A3A0ADC(v43, v44);
        v45 = *v44;
        v46 = *(v41 + 8);
        v47 = *(v41 + 32);

        sub_24A39A638(v44, type metadata accessor for FMFFriend);
        v83 = v42;
        v49 = *(v42 + 16);
        v48 = *(v42 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_24A3DBDC8((v48 > 1), v49 + 1, 1);
          v42 = v83;
        }

        *(v42 + 16) = v49 + 1;
        v50 = v42 + 32 * v49;
        *(v50 + 32) = v45;
        *(v50 + 40) = v46;
        *(v50 + 48) = v47;
        *(v50 + 56) = 0;
        *(v50 + 58) = 0;
        v0 = v81;
        v43 += v82;
        --v40;
      }

      while (v40);
    }

    else
    {

      v42 = MEMORY[0x277D84F90];
    }

    v51 = v0;
    v54 = v0 + 17;
    v53 = v0[17];
    v52 = v54[1];
    v55 = v51[16];
    v79(v52, v51[9], v55);
    v56 = (*(v53 + 88))(v52, v55);
    if (v56 == *MEMORY[0x277D08FE0])
    {
      v57 = v51[10];
      swift_beginAccess();
      v58 = *(v57 + 120);
      v59 = *(v58 + 16);
      if (!v59)
      {
LABEL_34:
        v60 = MEMORY[0x277D84F90];
        goto LABEL_35;
      }

      v60 = sub_24A40B3F8(*(v58 + 16), 0);
      v61 = sub_24A40C0A8(&v83, (v60 + 4), v59, v58);

      v56 = sub_24A3A13C0();
      if (v61 == v59)
      {
LABEL_35:
        v66 = v81;
        v67 = sub_24A489CD4(v60);

        goto LABEL_37;
      }

      __break(1u);
    }

    if (v56 != *MEMORY[0x277D08FD8])
    {
      v66 = v81;
      v68 = v81[17] + 8;
      v78(v81[18], v81[16]);
      v67 = MEMORY[0x277D84FA0];
LABEL_37:
      v69 = sub_24A489CD4(v42);

      v70 = sub_24A475F30(v69, v67);
      v71 = v70;
      v72 = *(v70 + 16);
      if (v72)
      {
        v73 = sub_24A40B3F8(*(v70 + 16), 0);
        v74 = sub_24A40BF10(&v83, (v73 + 4), v72, v71);
        sub_24A3A13C0();
        if (v74 == v72)
        {
LABEL_41:
          v66[20] = v73;
          v75 = swift_task_alloc();
          v66[21] = v75;
          *v75 = v66;
          v75[1] = sub_24A3FDBDC;
          v76 = v66[9];
          v77 = v66[10];

          return sub_24A3FFDAC(v73, v76);
        }

        __break(1u);
      }

      v73 = MEMORY[0x277D84F90];
      goto LABEL_41;
    }

    v62 = v81[10];
    swift_beginAccess();
    v63 = *(v62 + 128);
    v64 = *(v63 + 16);
    if (!v64)
    {
      goto LABEL_34;
    }

    v60 = sub_24A40B3F8(*(v63 + 16), 0);
    v65 = sub_24A40C0A8(&v83, (v60 + 4), v64, v63);

    sub_24A3A13C0();
    if (v65 != v64)
    {
      __break(1u);
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v20 = v0[18];
  v19 = v0[19];
  v22 = v0[14];
  v21 = v0[15];
  v23 = v0[13];

  v24 = v0[1];

  return v24();
}

uint64_t sub_24A3FDBDC()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {
    v4 = v3[10];

    return MEMORY[0x2822009F8](sub_24A3FDD58, v4, 0);
  }

  else
  {
    v5 = v3[20];

    v7 = v3[18];
    v6 = v3[19];
    v9 = v3[14];
    v8 = v3[15];
    v10 = v3[13];

    v11 = v3[1];

    return v11();
  }
}

uint64_t sub_24A3FDD58()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  v7 = v0[1];
  v8 = v0[22];

  return v7();
}

void *sub_24A3FDE00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_24A3A11D8(*(a1 + 16), 0);
  v4 = sub_24A40BDB8(&v6, v3 + 4, v2, a1);
  sub_24A3A13C0();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_24A3FDE90(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(type metadata accessor for FMFFriend() - 8);
  v3[8] = v4;
  v5 = *(v4 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = sub_24A4AAD40();
  v3[11] = v6;
  v7 = *(v6 - 8);
  v3[12] = v7;
  v8 = *(v7 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FDFD0, v2, 0);
}

uint64_t sub_24A3FDFD0()
{
  v51 = v0;
  v1 = *(v0[5] + 16);
  v0[16] = v1;
  if (v1)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v2 = v0;
    v3 = v0[15];
    v4 = v0[12];
    v5 = v2[11];
    v6 = v2[6];
    v7 = sub_24A4AB630();
    sub_24A378E18(v7, qword_27EF4E260);
    v8 = *(v4 + 16);
    v2[17] = v8;
    v2[18] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v3, v6, v5);
    v9 = sub_24A4AB600();
    v10 = sub_24A4ABCE0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v2[15];
    v47 = v2;
    v15 = v2 + 11;
    v14 = v2[11];
    v13 = v15[1];
    if (v11)
    {
      v16 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50 = v48;
      *v16 = 136315138;
      sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0]);
      v17 = sub_24A4AC240();
      v19 = v18;
      v20 = *(v13 + 8);
      v20(v12, v14);
      v21 = sub_24A37BD58(v17, v19, &v50);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_24A376000, v9, v10, "FMFSecureLocationCtrl: stopLocating called, with priority: %s", v16, 0xCu);
      sub_24A37EEE0(v48);
      MEMORY[0x24C219130](v48, -1, -1);
      MEMORY[0x24C219130](v16, -1, -1);
    }

    else
    {

      v20 = *(v13 + 8);
      v20(v12, v14);
    }

    v47[19] = v20;
    v29 = v47[10];
    v30 = v47[8];
    v31 = v47[5];
    v50 = MEMORY[0x277D84F90];
    sub_24A3DBDC8(0, v1, 0);
    v32 = v47;
    v33 = v50;
    v34 = *(v30 + 80);
    *(v47 + 50) = v34;
    v35 = v31 + ((v34 + 32) & ~v34);
    v49 = *(v30 + 72);
    v47[20] = v49;
    do
    {
      v36 = v32[10];
      sub_24A3A0ADC(v35, v36);
      v37 = *v36;
      v38 = *(v29 + 8);
      v39 = *(v29 + 32);

      sub_24A39A638(v36, type metadata accessor for FMFFriend);
      v50 = v33;
      v41 = *(v33 + 16);
      v40 = *(v33 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_24A3DBDC8((v40 > 1), v41 + 1, 1);
        v32 = v47;
        v33 = v50;
      }

      v32[21] = v33;
      *(v33 + 16) = v41 + 1;
      v42 = v33 + 32 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v38;
      *(v42 + 48) = v39;
      *(v42 + 56) = 0;
      v35 += v49;
      *(v42 + 58) = 0;
      --v1;
    }

    while (v1);
    v43 = swift_task_alloc();
    v32[22] = v43;
    *v43 = v32;
    v43[1] = sub_24A3FE3F4;
    v44 = v32;
    v45 = v32[7];
    v46 = v44[6];

    return sub_24A4032F0(v33, v46);
  }

  else
  {
    v23 = v0[14];
    v22 = v0[15];
    v24 = v0[13];
    v26 = v0[9];
    v25 = v0[10];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_24A3FE3F4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *v1;

  if (v0)
  {
    v7 = v2[14];
    v6 = v2[15];
    v8 = v2[13];
    v11 = v2 + 9;
    v9 = v2[9];
    v10 = v11[1];

    v12 = *(v5 + 8);

    return v12();
  }

  else
  {
    v14 = v2[7];

    return MEMORY[0x2822009F8](sub_24A3FE588, v14, 0);
  }
}

uint64_t sub_24A3FE588()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  (*(v0 + 136))(v2, *(v0 + 48), v3);
  v5 = (*(v4 + 88))(v2, v3);
  v6 = *MEMORY[0x277D08FE0];
  if (v5 != v6)
  {
    if (v5 == *MEMORY[0x277D08FD8])
    {
      v7 = 0;
      v8 = *(v0 + 72);
      v9 = *(v0 + 56);
      do
      {
        v15 = *(v0 + 72);
        sub_24A3A0ADC(*(v0 + 40) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(v0 + 160) * v7, v15);
        v16 = *v15;
        v17 = *(v8 + 8);

        sub_24A39A638(v15, type metadata accessor for FMFFriend);
        swift_beginAccess();
        v18 = *(v9 + 120);
        v19 = sub_24A39B2C8(v16, v17);
        LOBYTE(v18) = v20;

        if (v18)
        {
          v21 = *(v9 + 120);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v23 = *(v9 + 120);
          *(v9 + 120) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_24A4A863C();
          }

          v10 = *(*(v23 + 48) + 16 * v19 + 8);

          v11 = *(v23 + 56) + 32 * v19;
          v12 = *(v11 + 8);
          v13 = *(v11 + 16);

          sub_24A4A7078(v19, v23);
          *(v9 + 120) = v23;
        }

        ++v7;
        v14 = *(v0 + 128);
        swift_endAccess();
      }

      while (v7 != v14);
      (*(*(v0 + 96) + 104))(*(v0 + 104), v6, *(v0 + 88));
      v32 = swift_task_alloc();
      *(v0 + 184) = v32;
      *v32 = v0;
      v32[1] = sub_24A3FE864;
      v33 = *(v0 + 104);
      v34 = *(v0 + 56);
      v35 = *(v0 + 40);

      return sub_24A3FD324(v35, v33);
    }

    v24 = *(v0 + 96) + 8;
    (*(v0 + 152))(*(v0 + 112), *(v0 + 88));
  }

  v26 = *(v0 + 112);
  v25 = *(v0 + 120);
  v27 = *(v0 + 104);
  v29 = *(v0 + 72);
  v28 = *(v0 + 80);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_24A3FE864()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 192) = v0;

  v4(v5, v7);
  v9 = *(v2 + 56);
  if (v0)
  {
    v10 = sub_24A3FEA9C;
  }

  else
  {
    v10 = sub_24A3FEA08;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_24A3FEA08()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24A3FEA9C()
{
  v1 = v0[24];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24A3FEB38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - v8;
  v10 = sub_24A4AAD40();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(v2 + 128);
  if (!*(v15 + 16))
  {
LABEL_13:
    v28 = 0;
    v29 = 0;
    v20 = 0;
    v27 = 0;
    if (!*(v3 + 144))
    {
      goto LABEL_15;
    }

LABEL_14:

    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    sub_24A4ABBA0();

    goto LABEL_15;
  }

  v16 = sub_24A39B2C8(a1, a2);
  if ((v17 & 1) == 0)
  {

    goto LABEL_13;
  }

  v48 = v11;
  v49 = a1;
  v18 = *(v15 + 56) + 32 * v16;
  v19 = *v18;
  v46 = *(v18 + 8);
  v47 = v19;
  v20 = *(v18 + 16);
  v21 = *(v18 + 24);
  v22 = *(v18 + 25);
  v23 = *(v18 + 26);

  if (v22)
  {
    v24 = 256;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24 | v21;
  if (v23)
  {
    v26 = 0x10000;
  }

  else
  {
    v26 = 0;
  }

  v27 = v25 | v26;
  if (v21 & 1) != 0 || (v22)
  {
    v43 = *MEMORY[0x277D08FD8];
    v36 = v48;
    v37 = *(v48 + 104);
    v44 = v48 + 104;
    v45 = v37;
    v37(v14);

    sub_24A3FFB54(v49, a2, v20, 0x10000, v14);

    v38 = *(v36 + 8);
    v48 = v36 + 8;
    v42 = v38;
    v38(v14, v10);
    sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A4B4E10;
    *(inited + 32) = v49;
    v40 = inited + 32;
    *(inited + 40) = a2;
    v45(v14, v43, v10);

    sub_24A3FF864(0, inited, v14);
    a1 = v49;
    swift_setDeallocating();
    sub_24A406964(v40);
    v42(v14, v10);
  }

  else
  {
    a1 = v49;
  }

  v29 = v46;
  v28 = v47;
  if (*(v3 + 144))
  {
    goto LABEL_14;
  }

LABEL_15:
  v30 = sub_24A4ABB70();
  (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v31;
  *(v32 + 40) = a1;
  *(v32 + 48) = a2;
  *(v32 + 56) = v28;
  *(v32 + 64) = v29;
  *(v32 + 72) = v20;
  *(v32 + 82) = BYTE2(v27);
  *(v32 + 80) = v27;

  v33 = sub_24A432D64(0, 0, v9, &unk_24A4B7298, v32);
  v34 = *(v3 + 144);
  *(v3 + 144) = v33;
}

uint64_t sub_24A3FEF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v17;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = sub_24A4AAD40();
  v8[18] = v9;
  v10 = *(v9 - 8);
  v8[19] = v10;
  v11 = *(v10 + 64) + 15;
  v8[20] = swift_task_alloc();
  v12 = sub_24A4AC010();
  v8[21] = v12;
  v13 = *(v12 - 8);
  v8[22] = v13;
  v14 = *(v13 + 64) + 15;
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FF094, 0, 0);
}

uint64_t sub_24A3FF094()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v0[12] = 0x403E000000000000;
    if (qword_27EF3EC08 != -1)
    {
      swift_once();
    }

    v3 = v0[23];
    v4 = swift_task_alloc();
    *(v4 + 16) = 3;
    *(v4 + 24) = v0 + 12;
    sub_24A4ABD70();

    v5 = v0[11];
    v6 = sub_24A4AC3E0();
    v8 = v7;
    sub_24A4AC2E0();
    v9 = swift_task_alloc();
    v0[25] = v9;
    *v9 = v0;
    v9[1] = sub_24A3FF280;
    v10 = v0[23];

    return sub_24A405F7C(v6, v8, 0, 0, 1);
  }

  else
  {
    v12 = v0[23];
    v13 = v0[20];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_24A3FF280()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  (*(v2[22] + 8))(v2[23], v2[21]);
  if (v0)
  {
    v5 = sub_24A3FF518;
  }

  else
  {
    v5 = sub_24A3FF3E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24A3FF3E8()
{
  v1 = *(v0 + 208);
  sub_24A4ABBB0();
  if (v1)
  {
    v2 = *(v0 + 192);

    v3 = *(v0 + 184);
    v4 = *(v0 + 160);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    if (*(v0 + 128))
    {
      v7 = *(v0 + 136);
    }

    else
    {
      v8 = MEMORY[0x277D84FA0];
    }

    *(v0 + 216) = v8;
    v9 = *(v0 + 192);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 144);
    v13 = *(v0 + 120);
    *(v0 + 264) = *MEMORY[0x277D08FD8];
    v14 = *(v11 + 104);
    *(v0 + 224) = v14;
    *(v0 + 232) = (v11 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v14(v10);

    return MEMORY[0x2822009F8](sub_24A3FF590, v9, 0);
  }
}

uint64_t sub_24A3FF518()
{
  v1 = v0[24];

  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24A3FF590()
{
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  sub_24A3FFB54(v0[14], v0[15], v0[27], 65792, v2);

  v5 = *(v3 + 8);
  v0[30] = v5;
  v0[31] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_24A3FF660, 0, 0);
}

uint64_t sub_24A3FF660()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 264);
  v4 = *(v0 + 192);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  inited = swift_initStackObject();
  *(v0 + 256) = inited;
  *(inited + 16) = xmmword_24A4B4E10;
  *(inited + 32) = v8;
  *(inited + 40) = v7;
  v2(v5, v3, v6);

  return MEMORY[0x2822009F8](sub_24A3FF73C, v4, 0);
}

uint64_t sub_24A3FF73C()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[24];
  v4 = v0[20];
  v5 = v0[18];
  sub_24A3FF864(2, v1, v4);
  swift_setDeallocating();
  sub_24A406964(v1 + 32);
  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_24A3FF7EC, 0, 0);
}

uint64_t sub_24A3FF7EC()
{
  v1 = v0[24];

  v2 = v0[23];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

void sub_24A3FF864(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A4AAD40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = a3;
      v28 = v10;
      v29 = v7;
      v30 = v6;
      v31 = Strong;
      v32 = MEMORY[0x277D84F90];
      sub_24A3DBD70(0, v11, 0);
      v13 = v32;
      v14 = (a2 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        v32 = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);

        if (v18 >= v17 >> 1)
        {
          sub_24A3DBD70((v17 > 1), v18 + 1, 1);
          v13 = v32;
        }

        *(v13 + 16) = v18 + 1;
        v19 = v13 + 24 * v18;
        *(v19 + 32) = v15;
        *(v19 + 40) = v16;
        *(v19 + 48) = a1;
        v14 += 2;
        --v11;
      }

      while (v11);
      v21 = v28;
      v20 = v29;
      v22 = v30;
      (*(v29 + 16))(v28, v27, v30);
      v23 = (*(v20 + 88))(v21, v22);
      if (v23 == *MEMORY[0x277D08FE0] || v23 == *MEMORY[0x277D08FD8])
      {
        v24 = *(v31 + 88);
        v25 = *(v24 + 56);
        MEMORY[0x28223BE20](v23);
        *(&v26 - 2) = v13;
        *(&v26 - 1) = v24;

        sub_24A4ABD70();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        (*(v20 + 8))(v21, v22);
      }
    }
  }
}

uint64_t sub_24A3FFB54(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24A4AAD40();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a5, v12, v15);
  v18 = (*(v13 + 88))(v17, v12);
  if (v18 == *MEMORY[0x277D08FE0])
  {
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    v19 = *(v6 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v6 + 120);
    *(v6 + 120) = 0x8000000000000000;
    sub_24A430468(a1, a2, a3, a4 & 0x10101, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v6 + 120) = v24;
    return swift_endAccess();
  }

  if (v18 == *MEMORY[0x277D08FD8])
  {
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    v21 = *(v6 + 128);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v6 + 128);
    *(v6 + 128) = 0x8000000000000000;
    sub_24A430468(a1, a2, a3, a4 & 0x10101, a1, a2, v22);

    *(v6 + 128) = v24;
    return swift_endAccess();
  }

  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_24A3FFDAC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_24A4AB3F0();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = sub_24A4AB400();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = *(*(sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v11 = *(*(sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v12 = sub_24A4AAD40();
  v3[19] = v12;
  v13 = *(v12 - 8);
  v3[20] = v13;
  v14 = *(v13 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3FFFBC, v2, 0);
}

uint64_t sub_24A3FFFBC()
{
  v337 = v0;
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_191;
  }

  while (1)
  {
    v2 = *(v1 + 192);
    v3 = *(v1 + 152);
    v4 = *(v1 + 160);
    v5 = *(v1 + 72);
    v6 = sub_24A4AB630();
    *(v1 + 200) = sub_24A378E18(v6, qword_27EF4E260);
    v7 = *(v4 + 16);
    *(v1 + 208) = v7;
    *(v1 + 216) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v2, v5, v3);
    v8 = sub_24A4AB600();
    v9 = sub_24A4ABCB0();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v1 + 192);
    v12 = *(v1 + 152);
    v13 = *(v1 + 160);
    v311 = v1;
    if (v10)
    {
      v322 = v9;
      v14 = swift_slowAlloc();
      v328 = v7;
      v336[0] = swift_slowAlloc();
      v15 = v336[0];
      *v14 = 136315138;
      sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0]);
      v16 = sub_24A4AC240();
      v18 = v17;
      v19 = *(v13 + 8);
      v19(v11, v12);
      v20 = v16;
      v1 = v311;
      v21 = sub_24A37BD58(v20, v18, v336);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_24A376000, v8, v322, "FMFSecureLocationCtrl: updateLocating called mode: %s, determining whether we should add friends to the stream", v14, 0xCu);
      sub_24A37EEE0(v15);
      v22 = v15;
      v7 = v328;
      MEMORY[0x24C219130](v22, -1, -1);
      v23 = v14;
      v24 = v19;
      MEMORY[0x24C219130](v23, -1, -1);
    }

    else
    {

      v24 = *(v13 + 8);
      v24(v11, v12);
    }

    *(v1 + 224) = v24;
    v25 = *(v1 + 184);
    v26 = *(v1 + 152);
    v27 = *(v1 + 160);
    v7(v25, *(v1 + 72), v26);
    v28 = (*(v27 + 88))(v25, v26);
    v29 = v28;
    v30 = *MEMORY[0x277D08FE0];
    *(v1 + 296) = *MEMORY[0x277D08FE0];
    if (v28 != v30)
    {
      if (v28 == *MEMORY[0x277D08FD8])
      {
        v42 = *(v1 + 64);
        v43 = *(v42 + 16);
        v44 = MEMORY[0x277D84F90];
        v282 = v43;
        v304 = v28;
        if (v43)
        {
          v45 = v24;
          v336[0] = MEMORY[0x277D84F90];
          sub_24A3DBDA8(0, v43, 0);
          v44 = v336[0];
          v46 = *(v336[0] + 16);
          v47 = 16 * v46;
          v48 = (v42 + 40);
          do
          {
            v50 = *(v48 - 1);
            v49 = *v48;
            v336[0] = v44;
            v51 = *(v44 + 24);

            if (v46 >= v51 >> 1)
            {
              sub_24A3DBDA8((v51 > 1), v46 + 1, 1);
              v44 = v336[0];
            }

            *(v44 + 16) = v46 + 1;
            v52 = v44 + v47;
            *(v52 + 32) = v50;
            *(v52 + 40) = v49;
            v47 += 16;
            v48 += 4;
            ++v46;
            --v43;
          }

          while (v43);
          v1 = v311;
          v24 = v45;
          v29 = v304;
        }

        v113 = *(v1 + 80);
        v114 = sub_24A3999E0(v44);

        swift_beginAccess();
        v281 = v113;
        v115 = *(v113 + 128);
        v116 = *(v115 + 16);
        v309 = v24;
        v278 = v115;
        if (v116)
        {
          v117 = sub_24A3A11D8(v116, 0);
          v331 = sub_24A40BDB8(v336, v117 + 4, v116, v115);
          swift_bridgeObjectRetain_n();
          v118 = sub_24A3A13C0();
          if (v331 != v116)
          {
            __break(1u);
            return MEMORY[0x28215FB30](v118, v119, v120, v121);
          }

          v29 = v304;
        }

        else
        {

          v117 = MEMORY[0x277D84F90];
        }

        v122 = v282;
        v123 = sub_24A3999E0(v117);

        if (*(v123 + 16) <= *(v114 + 16) >> 3)
        {
          v336[0] = v114;

          sub_24A472DCC(v123);
          v124 = v336[0];
        }

        else
        {

          v124 = sub_24A472EF8(v123, v114);
        }

        if (*(v114 + 16) <= *(v123 + 16) >> 3)
        {
          v336[0] = v123;
          sub_24A472DCC(v114);

          v288 = v336[0];
        }

        else
        {
          v288 = sub_24A472EF8(v114, v123);
        }

        v125 = 0;
        v126 = v124 + 56;
        v127 = -1;
        v128 = -1 << *(v124 + 32);
        v293 = *(v1 + 80);
        if (-v128 < 64)
        {
          v127 = ~(-1 << -v128);
        }

        v129 = v127 & *(v124 + 56);
        v130 = *(v1 + 64);
        v131 = (63 - v128) >> 6;
        v291 = (*(v1 + 160) + 104);
        v283 = (v130 + 58);
        v279 = (v130 + 40);
        v95 = MEMORY[0x277D84F90];
        v284 = v131;
        v285 = v124 + 56;
        v280 = v124;
LABEL_89:
        v132 = v125;
        v313 = v95;
        if (!v129)
        {
          goto LABEL_91;
        }

        do
        {
          v133 = v132;
LABEL_94:
          logb = ((v129 - 1) & v129);
          v299 = v133;
          v134 = (*(v124 + 48) + ((v133 << 10) | (16 * __clz(__rbit64(v129)))));
          v136 = *v134;
          v135 = v134[1];
          v137 = -1;
          v138 = v283;
          while (1)
          {
            v139 = v138 + 32;
            if (v122 == ++v137)
            {
              break;
            }

            v140 = *(v138 - 26);
            v141 = *(v138 - 18);
            v332 = *(v138 - 10);
            v316 = *(v138 - 2);
            v325 = *(v138 - 1);
            v319 = *v138;
            if (v140 == v136 && v141 == v135)
            {
              v140 = v136;
LABEL_105:
              v301 = v140;
              swift_bridgeObjectRetain_n();

              v144 = sub_24A4AB600();
              v145 = sub_24A4ABCE0();

              if (os_log_type_enabled(v144, v145))
              {
                v146 = swift_slowAlloc();
                v336[0] = swift_slowAlloc();
                v147 = v336[0];
                *v146 = 136315138;
                v148 = sub_24A37BD58(v136, v135, v336);

                *(v146 + 4) = v148;
                _os_log_impl(&dword_24A376000, v144, v145, "FMFSecureLocationCtrl: Insertion detected, will start live locating %s", v146, 0xCu);
                sub_24A37EEE0(v147);
                v149 = v147;
                v29 = v304;
                MEMORY[0x24C219130](v149, -1, -1);
                MEMORY[0x24C219130](v146, -1, -1);
              }

              else
              {
              }

              v150 = *(v1 + 176);
              v151 = *(v1 + 144);
              v152 = *(v1 + 152);
              v153 = *(v1 + 80);
              v286 = *v291;
              (*v291)(v150, v29, v152);

              sub_24A3FFB54(v301, v141, v332, 1, v150);

              v309(v150, v152);
              v154 = sub_24A4AAAD0();
              (*(*(v154 - 8) + 56))(v151, 1, 1, v154);
              v155 = *(v281 + 128);

              sub_24A424CB4(v301, v141, v151, v155);

              sub_24A37EF2C(v151, &qword_27EF3F460, &unk_24A4B53B0);
              v336[0] = MEMORY[0x277D84F90];
              sub_24A3DBDA8(0, v122, 0);
              v156 = v336[0];
              v157 = *(v336[0] + 16);
              v158 = 16 * v157;
              v159 = v279;
              v160 = v122;
              do
              {
                v162 = *(v159 - 1);
                v161 = *v159;
                v336[0] = v156;
                v163 = v157 + 1;
                v164 = *(v156 + 24);

                if (v157 >= v164 >> 1)
                {
                  sub_24A3DBDA8((v164 > 1), v163, 1);
                  v156 = v336[0];
                }

                *(v156 + 16) = v163;
                v165 = v156 + v158;
                *(v165 + 32) = v162;
                *(v165 + 40) = v161;
                v158 += 16;
                v159 += 4;
                ++v157;
                --v160;
              }

              while (v160);
              v1 = v311;
              v166 = *(v311 + 176);
              v167 = *(v311 + 152);
              v168 = *(v311 + 80);
              v29 = v304;
              v286(v166, v304, v167);
              sub_24A3FF864(1, v156, v166);

              v309(v166, v167);
              if (*(v293 + 144))
              {
                v169 = *(v293 + 144);

                sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
                sub_24A4ABBA0();
              }

              v170 = *(v311 + 136);
              v171 = *(v311 + 80);
              v172 = sub_24A4ABB70();
              (*(*(v172 - 8) + 56))(v170, 1, 1, v172);
              v173 = swift_allocObject();
              swift_weakInit();
              v174 = swift_allocObject();
              *(v174 + 16) = 0;
              *(v174 + 24) = 0;
              *(v174 + 32) = v173;
              *(v174 + 40) = v301;
              *(v174 + 48) = v141;
              *(v174 + 56) = v332;
              *(v174 + 64) = v316;
              *(v174 + 65) = v325;
              *(v174 + 66) = v319;

              v175 = sub_24A432D64(0, 0, v170, &unk_24A4B7278, v174);
              v176 = *(v293 + 144);
              *(v293 + 144) = v175;

              v124 = v280;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v313 = sub_24A3EDB8C(0, *(v313 + 2) + 1, 1, v313);
              }

              v178 = *(v313 + 2);
              v177 = *(v313 + 3);
              v122 = v282;
              v179 = v301;
              if (v178 >= v177 >> 1)
              {
                v313 = sub_24A3EDB8C((v177 > 1), v178 + 1, 1, v313);
                v179 = v301;
              }

              *(v313 + 2) = v178 + 1;
              v180 = &v313[32 * v178];
              *(v180 + 4) = v179;
              *(v180 + 5) = v141;
              v95 = v313;
              *(v180 + 6) = v332;
              v180[56] = v316;
              v180[57] = v325;
              v180[58] = v319;
              v131 = v284;
              v126 = v285;
              v129 = logb;
              v125 = v299;
              goto LABEL_89;
            }

            v143 = sub_24A4AC270();
            v138 = v139;
            if (v143)
            {
              goto LABEL_105;
            }
          }

          v129 = logb;
          v132 = v299;
          v95 = v313;
          v131 = v284;
          v126 = v285;
        }

        while (logb);
LABEL_91:
        while (1)
        {
          v133 = v132 + 1;
          if (__OFADD__(v132, 1))
          {
            goto LABEL_184;
          }

          if (v133 >= v131)
          {

            v181 = 0;
            v182 = -1;
            v183 = -1 << *(v288 + 32);
            if (-v183 < 64)
            {
              v182 = ~(-1 << -v183);
            }

            v184 = v182 & *(v288 + 56);
            v185 = (63 - v183) >> 6;
            v93 = MEMORY[0x277D84F90];
            v186 = v278;
            while (v184)
            {
              v187 = v184;
LABEL_128:
              v184 = (v187 - 1) & v187;
              if (*(v186 + 16))
              {
                v189 = (*(v288 + 48) + ((v181 << 10) | (16 * __clz(__rbit64(v187)))));
                v190 = *v189;
                v191 = v189[1];

                v192 = sub_24A39B2C8(v190, v191);
                if (v193)
                {
                  v194 = *(v186 + 56) + 32 * v192;
                  v195 = *(v194 + 8);
                  v317 = *v194;
                  v326 = *(v194 + 16);
                  v306 = *(v194 + 25);
                  v310 = *(v194 + 24);
                  v302 = *(v194 + 26);

                  v320 = v195;

                  v333 = sub_24A4AB600();
                  v196 = sub_24A4ABCE0();

                  if (os_log_type_enabled(v333, v196))
                  {
                    v197 = swift_slowAlloc();
                    v198 = swift_slowAlloc();
                    v336[0] = v198;
                    *v197 = 136315138;
                    v199 = sub_24A37BD58(v190, v191, v336);

                    *(v197 + 4) = v199;
                    _os_log_impl(&dword_24A376000, v333, v196, "FMFSecureLocationCtrl: Removal detected, will stop live locating %s", v197, 0xCu);
                    sub_24A37EEE0(v198);
                    v200 = v198;
                    v186 = v278;
                    MEMORY[0x24C219130](v200, -1, -1);
                    MEMORY[0x24C219130](v197, -1, -1);
                  }

                  else
                  {
                  }

                  v1 = v311;
                  v95 = v313;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v93 = sub_24A3EDB8C(0, *(v93 + 2) + 1, 1, v93);
                  }

                  v202 = *(v93 + 2);
                  v201 = *(v93 + 3);
                  if (v202 >= v201 >> 1)
                  {
                    v93 = sub_24A3EDB8C((v201 > 1), v202 + 1, 1, v93);
                  }

                  *(v93 + 2) = v202 + 1;
                  v203 = &v93[32 * v202];
                  *(v203 + 4) = v317;
                  *(v203 + 5) = v320;
                  *(v203 + 6) = v326;
                  v203[56] = v310;
                  v203[57] = v306;
                  v203[58] = v302;
                }

                else
                {

                  v1 = v311;
                  v95 = v313;
                }
              }
            }

            while (1)
            {
              v188 = v181 + 1;
              if (__OFADD__(v181, 1))
              {
                goto LABEL_185;
              }

              if (v188 >= v185)
              {

                goto LABEL_142;
              }

              v187 = *(v288 + 56 + 8 * v188);
              ++v181;
              if (v187)
              {
                v181 = v188;
                goto LABEL_128;
              }
            }
          }

          v129 = *(v126 + 8 * v133);
          ++v132;
          if (v129)
          {
            goto LABEL_94;
          }
        }
      }

      v59 = *(v1 + 160) + 8;
      v24(*(v1 + 184), *(v1 + 152));
      goto LABEL_141;
    }

    v303 = v28;
    v307 = v24;
    v31 = *(v1 + 64);
    v32 = *(v31 + 16);
    v33 = MEMORY[0x277D84F90];
    if (v32)
    {
      v336[0] = MEMORY[0x277D84F90];
      sub_24A3DBDA8(0, v32, 0);
      v33 = v336[0];
      v34 = *(v336[0] + 16);
      v35 = 16 * v34;
      v36 = (v31 + 40);
      v37 = v32;
      do
      {
        v39 = *(v36 - 1);
        v38 = *v36;
        v336[0] = v33;
        v40 = *(v33 + 24);

        if (v34 >= v40 >> 1)
        {
          sub_24A3DBDA8((v40 > 1), v34 + 1, 1);
          v33 = v336[0];
        }

        *(v33 + 16) = v34 + 1;
        v41 = v33 + v35;
        *(v41 + 32) = v39;
        *(v41 + 40) = v38;
        v35 += 16;
        v36 += 4;
        ++v34;
        --v37;
      }

      while (v37);
      v1 = v311;
    }

    v53 = *(v1 + 80);
    v54 = sub_24A3999E0(v33);

    swift_beginAccess();
    v55 = *(v53 + 120);
    swift_bridgeObjectRetain_n();
    v56 = sub_24A3FDE00(v55);
    v57 = sub_24A3999E0(v56);

    if (*(v57 + 16) <= *(v54 + 16) >> 3)
    {
      v336[0] = v54;

      sub_24A472DCC(v57);
      v58 = v336[0];
    }

    else
    {

      v58 = sub_24A472EF8(v57, v54);
    }

    if (*(v54 + 16) <= *(v57 + 16) >> 3)
    {
      v336[0] = v57;
      sub_24A472DCC(v54);

      v318 = v336[0];
      if (*(v58 + 16))
      {
        goto LABEL_28;
      }

LABEL_27:
      if (*(v318 + 16))
      {
        goto LABEL_28;
      }

LABEL_141:
      v93 = MEMORY[0x277D84F90];
      v95 = MEMORY[0x277D84F90];
      goto LABEL_142;
    }

    v318 = sub_24A472EF8(v54, v57);

    if (!*(v58 + 16))
    {
      goto LABEL_27;
    }

LABEL_28:
    v60 = 0;
    v61 = (v58 + 56);
    v62 = -1;
    v63 = -1 << *(v58 + 32);
    if (-v63 < 64)
    {
      v62 = ~(-1 << -v63);
    }

    isa = v62 & *(v58 + 56);
    v65 = (63 - v63) >> 6;
    v287 = (*(v1 + 160) + 104);
    v289 = v32 + 1;
    v290 = *(v1 + 64) + 58;
    v66 = MEMORY[0x277D84F90];
    v297 = v58;
    v300 = v55;
    v292 = v65;
    log = (v58 + 56);
LABEL_31:
    v312 = v66;
    v67 = v60;
    if (!isa)
    {
      goto LABEL_33;
    }

    do
    {
      v68 = v67;
LABEL_36:
      v69 = (*(v58 + 48) + ((v68 << 10) | (16 * __clz(__rbit64(isa)))));
      v70 = *v69;
      v71 = v69[1];

      v72 = sub_24A4AB600();
      v73 = sub_24A4ABCE0();
      v329 = v68;
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v336[0] = v75;
        *v74 = 136315138;
        *(v74 + 4) = sub_24A37BD58(v70, v71, v336);
        _os_log_impl(&dword_24A376000, v72, v73, "FMFSecureLocationCtrl: Insertion detected, will start shallow locating %s", v74, 0xCu);
        sub_24A37EEE0(v75);
        MEMORY[0x24C219130](v75, -1, -1);
        MEMORY[0x24C219130](v74, -1, -1);
      }

      v323 = (isa - 1) & isa;
      v76 = v289;
      v77 = v290;
      while (--v76)
      {
        v1 = *(v77 - 26);
        v78 = *(v77 - 18);
        v79 = *(v77 - 10);
        v80 = *(v77 - 2);
        v81 = *(v77 - 1);
        v82 = *v77;
        if (v1 == v70 && v78 == v71)
        {
          v1 = v70;
LABEL_49:
          v84 = *(v311 + 176);
          v314 = *(v311 + 152);
          v85 = *(v311 + 80);
          (*v287)(v84, v303);
          swift_bridgeObjectRetain_n();

          sub_24A3FFB54(v70, v71, v79, 0, v84);

          v307(v84, v314);
          v66 = v312;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_24A3EDB8C(0, *(v312 + 2) + 1, 1, v312);
          }

          v87 = *(v66 + 2);
          v86 = *(v66 + 3);
          if (v87 >= v86 >> 1)
          {
            v66 = sub_24A3EDB8C((v86 > 1), v87 + 1, 1, v66);
          }

          *(v66 + 2) = v87 + 1;
          v88 = &v66[32 * v87];
          *(v88 + 4) = v1;
          *(v88 + 5) = v78;
          *(v88 + 6) = v79;
          v88[56] = v80;
          v88[57] = v81;
          v88[58] = v82;
          v58 = v297;
          v55 = v300;
          v65 = v292;
          v61 = log;
          isa = v323;
          v60 = v329;
          goto LABEL_31;
        }

        v77 += 32;
        if (sub_24A4AC270())
        {
          goto LABEL_49;
        }
      }

      isa = v323;
      v67 = v329;
      v58 = v297;
      v55 = v300;
      v65 = v292;
      v61 = log;
    }

    while (v323);
LABEL_33:
    v68 = v67 + 1;
    if (!__OFADD__(v67, 1))
    {
      break;
    }

    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    swift_once();
  }

  if (v68 < v65)
  {
    isa = v61[v68].isa;
    ++v67;
    if (isa)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v89 = 0;
  v90 = -1;
  v91 = -1 << *(v318 + 32);
  if (-v91 < 64)
  {
    v90 = ~(-1 << -v91);
  }

  v92 = v90 & *(v318 + 56);
  v1 = (63 - v91) >> 6;
  v93 = MEMORY[0x277D84F90];
  while (v92)
  {
    v94 = v92;
LABEL_64:
    v92 = (v94 - 1) & v94;
    if (*(v55 + 16))
    {
      v97 = (*(v318 + 48) + ((v89 << 10) | (16 * __clz(__rbit64(v94)))));
      v99 = *v97;
      v98 = v97[1];

      v100 = sub_24A39B2C8(v99, v98);
      if (v101)
      {
        v102 = *(v55 + 56) + 32 * v100;
        v103 = *(v102 + 8);
        v315 = *v102;
        v104 = *(v102 + 16);
        v305 = *(v102 + 25);
        v308 = *(v102 + 24);
        v298 = *(v102 + 26);

        v330 = v103;

        v105 = sub_24A4AB600();
        v106 = sub_24A4ABCE0();

        loga = v105;
        v324 = v104;
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v336[0] = v108;
          *v107 = 136315138;
          v109 = sub_24A37BD58(v99, v98, v336);

          *(v107 + 4) = v109;
          _os_log_impl(&dword_24A376000, loga, v106, "FMFSecureLocationCtrl: Removal detected, will stop shallow locating %s", v107, 0xCu);
          sub_24A37EEE0(v108);
          MEMORY[0x24C219130](v108, -1, -1);
          MEMORY[0x24C219130](v107, -1, -1);
        }

        else
        {
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_24A3EDB8C(0, *(v93 + 2) + 1, 1, v93);
        }

        v111 = *(v93 + 2);
        v110 = *(v93 + 3);
        if (v111 >= v110 >> 1)
        {
          v93 = sub_24A3EDB8C((v110 > 1), v111 + 1, 1, v93);
        }

        *(v93 + 2) = v111 + 1;
        v112 = &v93[32 * v111];
        *(v112 + 4) = v315;
        *(v112 + 5) = v330;
        *(v112 + 6) = v324;
        v112[56] = v308;
        v112[57] = v305;
        v112[58] = v298;
        v55 = v300;
      }

      else
      {
      }
    }
  }

  v95 = v312;
  while (1)
  {
    v96 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      goto LABEL_183;
    }

    if (v96 >= v1)
    {
      break;
    }

    v94 = *(v318 + 56 + 8 * v96);
    ++v89;
    if (v94)
    {
      v89 = v96;
      goto LABEL_64;
    }
  }

  v1 = v311;
LABEL_142:
  *(v1 + 232) = v93;
  *(v1 + 240) = v95;
  if (*(v93 + 2))
  {
    v204 = swift_task_alloc();
    *(v1 + 248) = v204;
    *v204 = v1;
    v204[1] = sub_24A401C10;
    v205 = *(v1 + 72);
    v206 = *(v1 + 80);

    return sub_24A4032F0(v93, v205);
  }

  v208 = *(v95 + 2);
  if (!v208)
  {

    goto LABEL_176;
  }

  v336[0] = MEMORY[0x277D84F90];
  sub_24A3DBDA8(0, v208, 0);
  v209 = v336[0];
  v210 = *(v336[0] + 16);
  v211 = 16 * v210;
  v212 = (v95 + 40);
  do
  {
    v214 = *(v212 - 1);
    v213 = *v212;
    v336[0] = v209;
    v215 = v210 + 1;
    v216 = *(v209 + 24);

    if (v210 >= v216 >> 1)
    {
      sub_24A3DBDA8((v216 > 1), v215, 1);
      v209 = v336[0];
    }

    *(v209 + 16) = v215;
    v217 = v209 + v211;
    *(v217 + 32) = v214;
    *(v217 + 40) = v213;
    v211 += 16;
    v212 += 4;
    ++v210;
    --v208;
  }

  while (v208);
  v218 = *(v311 + 224);
  v321 = *(v311 + 216);
  v219 = *(v311 + 208);
  v327 = *(v311 + 200);
  v334 = *(v311 + 240);
  v221 = *(v311 + 168);
  v220 = *(v311 + 176);
  v222 = *(v311 + 152);
  v224 = *(v311 + 72);
  v223 = *(v311 + 80);
  (*(*(v311 + 160) + 104))(v220, *(v311 + 296), v222);
  sub_24A3FF864(1, v209, v220);

  v218(v220, v222);
  v219(v221, v224, v222);

  v225 = sub_24A4AB600();
  v226 = sub_24A4ABCE0();
  v227 = os_log_type_enabled(v225, v226);
  v228 = *(v311 + 240);
  v229 = *(v311 + 224);
  v230 = *(v311 + 168);
  v231 = *(v311 + 152);
  if (!v227)
  {
    v258 = *(v311 + 240);

    v229(v230, v231);
    v239 = *(v95 + 2);
    if (!v239)
    {
      goto LABEL_172;
    }

LABEL_153:
    v1 = 0;
    v240 = (v95 + 48);
    v241 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v1 >= *(v95 + 2))
      {
        goto LABEL_186;
      }

      v243 = *(v240 - 1);
      v242 = *v240;

      v245 = sub_24A3F5BAC(v244);

      v246 = *(v245 + 16);
      v247 = v241[2];
      v248 = v247 + v246;
      if (__OFADD__(v247, v246))
      {
        goto LABEL_187;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v248 <= v241[3] >> 1)
      {
        if (!*(v245 + 16))
        {
          goto LABEL_154;
        }
      }

      else
      {
        if (v247 <= v248)
        {
          v250 = v247 + v246;
        }

        else
        {
          v250 = v247;
        }

        v241 = sub_24A3C0C78(isUniquelyReferenced_nonNull_native, v250, 1, v241);
        if (!*(v245 + 16))
        {
LABEL_154:

          if (v246)
          {
            goto LABEL_188;
          }

          goto LABEL_155;
        }
      }

      v251 = (v241[3] >> 1) - v241[2];
      v252 = *(sub_24A4AB220() - 8);
      if (v251 < v246)
      {
        goto LABEL_189;
      }

      v253 = (*(v252 + 80) + 32) & ~*(v252 + 80);
      v254 = *(v252 + 72);
      swift_arrayInitWithCopy();

      if (v246)
      {
        v255 = v241[2];
        v256 = __OFADD__(v255, v246);
        v257 = v255 + v246;
        if (v256)
        {
          goto LABEL_190;
        }

        v241[2] = v257;
      }

LABEL_155:
      ++v1;
      v240 += 4;
      if (v239 == v1)
      {
        goto LABEL_173;
      }
    }
  }

  v232 = swift_slowAlloc();
  v335 = swift_slowAlloc();
  v336[0] = v335;
  *v232 = 134218242;
  *(v232 + 4) = *(v95 + 2);

  *(v232 + 12) = 2080;
  sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0]);
  v233 = sub_24A4AC240();
  v234 = v229;
  v235 = v233;
  v237 = v236;
  v234(v230, v231);
  v238 = sub_24A37BD58(v235, v237, v336);

  *(v232 + 14) = v238;
  _os_log_impl(&dword_24A376000, v225, v226, "FMFSecureLocationCtrl: add handles to location stream: %ld friends, mode: %s", v232, 0x16u);
  sub_24A37EEE0(v335);
  MEMORY[0x24C219130](v335, -1, -1);
  MEMORY[0x24C219130](v232, -1, -1);

  v239 = *(v95 + 2);
  if (v239)
  {
    goto LABEL_153;
  }

LABEL_172:
  v241 = MEMORY[0x277D84F90];
LABEL_173:
  v1 = v311;
  *(v311 + 264) = v241;
  v259 = *(v311 + 232);
  v260 = *(v311 + 240);
  v261 = *(v311 + 80);

  v262 = *(v261 + 112);
  *(v311 + 272) = v262;
  if (v262)
  {
    v263 = objc_opt_self();

    v264 = [v263 mainBundle];
    v265 = [v264 bundleIdentifier];

    if (v265)
    {
      sub_24A4AB850();
    }

    v275 = *(v311 + 128);
    (*(*(v311 + 96) + 104))(*(v311 + 104), *MEMORY[0x277D094A8], *(v311 + 88));
    sub_24A4AB3E0();
    v276 = *(MEMORY[0x277D09408] + 4);
    v277 = swift_task_alloc();
    *(v311 + 280) = v277;
    *v277 = v311;
    v277[1] = sub_24A40243C;
    v121 = *(v311 + 128);
    v119 = *(v311 + 72);
    v118 = v241;
    v120 = 1;

    return MEMORY[0x28215FB30](v118, v119, v120, v121);
  }

LABEL_176:

  v267 = *(v1 + 184);
  v266 = *(v1 + 192);
  v268 = *(v1 + 168);
  v269 = *(v1 + 176);
  v271 = *(v1 + 136);
  v270 = *(v1 + 144);
  v272 = *(v1 + 128);
  v273 = *(v1 + 104);

  v274 = *(v1 + 8);

  return v274();
}

uint64_t sub_24A401C10()
{
  v2 = *(*v1 + 248);
  v3 = *v1;
  v3[32] = v0;

  if (v0)
  {
    v4 = v3[29];
    v5 = v3[30];

    v7 = v3[23];
    v6 = v3[24];
    v9 = v3[21];
    v8 = v3[22];
    v11 = v3[17];
    v10 = v3[18];
    v12 = v3[16];
    v13 = v3[13];

    v14 = v3[1];

    return v14();
  }

  else
  {
    v16 = v3[10];

    return MEMORY[0x2822009F8](sub_24A401DC8, v16, 0);
  }
}

uint64_t sub_24A401DC8()
{
  v88 = v0;
  v1 = v0[30];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v57 = v0[29];

LABEL_31:

    v67 = v0[23];
    v66 = v0[24];
    v69 = v0[21];
    v68 = v0[22];
    v71 = v0[17];
    v70 = v0[18];
    v72 = v0[16];
    v73 = v0[13];

    v74 = v0[1];

    return v74();
  }

  v3 = v0[32];
  v87 = MEMORY[0x277D84F90];
  sub_24A3DBDA8(0, v2, 0);
  v4 = v87;
  v5 = *(v87 + 16);
  v6 = 16 * v5;
  v86 = v1;
  v7 = (v1 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v87 = v4;
    v10 = v5 + 1;
    v11 = *(v4 + 24);

    if (v5 >= v11 >> 1)
    {
      sub_24A3DBDA8((v11 > 1), v10, 1);
      v4 = v87;
    }

    *(v4 + 16) = v10;
    v12 = v4 + v6;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
    v6 += 16;
    v7 += 4;
    ++v5;
    --v2;
  }

  while (v2);
  v13 = *(v85 + 224);
  v14 = *(v85 + 208);
  v79 = v14;
  v80 = *(v85 + 216);
  v81 = *(v85 + 200);
  v83 = *(v85 + 240);
  v16 = *(v85 + 168);
  v15 = *(v85 + 176);
  v17 = *(v85 + 152);
  v19 = *(v85 + 72);
  v18 = *(v85 + 80);
  (*(*(v85 + 160) + 104))(v15, *(v85 + 296), v17);
  sub_24A3FF864(1, v4, v15);

  v13(v15, v17);
  v79(v16, v19, v17);

  v20 = sub_24A4AB600();
  v21 = sub_24A4ABCE0();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v85 + 240);
  v24 = *(v85 + 224);
  v25 = *(v85 + 168);
  v26 = *(v85 + 152);
  if (!v22)
  {
    v58 = *(v85 + 240);

    v33 = v24(v25, v26);
    v28 = v86;
    v37 = *(v86 + 16);
    if (v37)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

  v27 = swift_slowAlloc();
  v84 = swift_slowAlloc();
  v87 = v84;
  *v27 = 134218242;
  v82 = v24;
  v28 = v86;
  *(v27 + 4) = *(v86 + 16);

  *(v27 + 12) = 2080;
  sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0]);
  v29 = sub_24A4AC240();
  v31 = v30;
  v82(v25, v26);
  v32 = sub_24A37BD58(v29, v31, &v87);

  *(v27 + 14) = v32;
  _os_log_impl(&dword_24A376000, v20, v21, "FMFSecureLocationCtrl: add handles to location stream: %ld friends, mode: %s", v27, 0x16u);
  sub_24A37EEE0(v84);
  MEMORY[0x24C219130](v84, -1, -1);
  MEMORY[0x24C219130](v27, -1, -1);

  v37 = *(v86 + 16);
  if (!v37)
  {
LABEL_27:
    v40 = MEMORY[0x277D84F90];
LABEL_28:
    v0 = v85;
    *(v85 + 264) = v40;
    v59 = *(v85 + 232);
    v60 = *(v85 + 240);
    v61 = *(v85 + 80);

    v62 = *(v61 + 112);
    *(v85 + 272) = v62;
    if (v62)
    {
      v63 = objc_opt_self();

      v64 = [v63 mainBundle];
      v65 = [v64 bundleIdentifier];

      if (v65)
      {
        sub_24A4AB850();
      }

      v76 = *(v85 + 128);
      (*(*(v85 + 96) + 104))(*(v85 + 104), *MEMORY[0x277D094A8], *(v85 + 88));
      sub_24A4AB3E0();
      v77 = *(MEMORY[0x277D09408] + 4);
      v78 = swift_task_alloc();
      *(v85 + 280) = v78;
      *v78 = v85;
      v78[1] = sub_24A40243C;
      v36 = *(v85 + 128);
      v34 = *(v85 + 72);
      v33 = v40;
      v35 = 1;

      return MEMORY[0x28215FB30](v33, v34, v35, v36);
    }

    goto LABEL_31;
  }

LABEL_8:
  v38 = 0;
  v39 = (v28 + 48);
  v40 = MEMORY[0x277D84F90];
  while (v38 < *(v28 + 16))
  {
    v42 = *(v39 - 1);
    v41 = *v39;

    v44 = sub_24A3F5BAC(v43);

    v45 = *(v44 + 16);
    v46 = v40[2];
    v47 = v46 + v45;
    if (__OFADD__(v46, v45))
    {
      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v47 <= v40[3] >> 1)
    {
      if (*(v44 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v46 <= v47)
      {
        v49 = v46 + v45;
      }

      else
      {
        v49 = v46;
      }

      v40 = sub_24A3C0C78(isUniquelyReferenced_nonNull_native, v49, 1, v40);
      if (*(v44 + 16))
      {
LABEL_21:
        v50 = (v40[3] >> 1) - v40[2];
        v33 = sub_24A4AB220();
        v51 = *(v33 - 8);
        if (v50 < v45)
        {
          goto LABEL_40;
        }

        v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v53 = *(v51 + 72);
        swift_arrayInitWithCopy();

        v28 = v86;
        if (v45)
        {
          v54 = v40[2];
          v55 = __OFADD__(v54, v45);
          v56 = v54 + v45;
          if (v55)
          {
            goto LABEL_41;
          }

          v40[2] = v56;
        }

        goto LABEL_10;
      }
    }

    if (v45)
    {
      goto LABEL_39;
    }

LABEL_10:
    ++v38;
    v39 += 4;
    if (v37 == v38)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return MEMORY[0x28215FB30](v33, v34, v35, v36);
}

uint64_t sub_24A40243C()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  v2[36] = v0;

  v5 = v2[34];
  v6 = v2[33];
  v7 = v2[16];
  v8 = v2[15];
  v9 = v2[14];
  if (v0)
  {
    v10 = v2[10];
    (*(v8 + 8))(v7, v9);

    return MEMORY[0x2822009F8](sub_24A402694, v10, 0);
  }

  else
  {
    (*(v8 + 8))(v7, v9);

    v12 = v2[23];
    v11 = v2[24];
    v14 = v2[21];
    v13 = v2[22];
    v16 = v2[17];
    v15 = v2[18];
    v17 = v2[16];
    v18 = v2[13];

    v19 = *(v4 + 8);

    return v19();
  }
}

uint64_t sub_24A402694()
{
  v1 = v0[36];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v9 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t sub_24A402758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v8 = sub_24A4AAD40();
  v7[17] = v8;
  v9 = *(v8 - 8);
  v7[18] = v9;
  v10 = *(v9 + 64) + 15;
  v7[19] = swift_task_alloc();
  v11 = sub_24A4AC010();
  v7[20] = v11;
  v12 = *(v11 - 8);
  v7[21] = v12;
  v13 = *(v12 + 64) + 15;
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A402878, 0, 0);
}

uint64_t sub_24A402878()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v0[12] = 0x403E000000000000;
    if (qword_27EF3EC08 != -1)
    {
      swift_once();
    }

    v3 = v0[22];
    v4 = swift_task_alloc();
    *(v4 + 16) = 3;
    *(v4 + 24) = v0 + 12;
    sub_24A4ABD70();

    v5 = v0[11];
    v6 = sub_24A4AC3E0();
    v8 = v7;
    sub_24A4AC2E0();
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_24A402A64;
    v10 = v0[22];

    return sub_24A405F7C(v6, v8, 0, 0, 1);
  }

  else
  {
    v12 = v0[22];
    v13 = v0[19];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_24A402A64()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);
  if (v0)
  {
    v5 = sub_24A402DB0;
  }

  else
  {
    v5 = sub_24A402BCC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24A402BCC()
{
  v1 = *(v0 + 200);
  sub_24A4ABBB0();
  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v0 + 152);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v7 = sub_24A4AB630();
    sub_24A378E18(v7, qword_27EF4E260);
    v8 = sub_24A4AB600();
    v9 = sub_24A4ABCE0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24A376000, v8, v9, "FMFSecureLocationCtrl: Stop initial live locating spinners", v10, 2u);
      MEMORY[0x24C219130](v10, -1, -1);
    }

    v11 = *(v0 + 184);
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 136);
    v15 = *(v0 + 120);

    *(v0 + 248) = *MEMORY[0x277D08FD8];
    v16 = *(v13 + 104);
    *(v0 + 208) = v16;
    *(v0 + 216) = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v16(v12);

    return MEMORY[0x2822009F8](sub_24A403050, v11, 0);
  }
}

uint64_t sub_24A402DB0()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFSecureLocationCtrl: Live loading task cancelled", v6, 2u);
    MEMORY[0x24C219130](v6, -1, -1);
  }

  sub_24A4ABBB0();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  sub_24A378E18(v1, qword_27EF4E260);
  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A376000, v7, v8, "FMFSecureLocationCtrl: Stop initial live locating spinners", v9, 2u);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  v10 = *(v0 + 184);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  v13 = *(v0 + 136);
  v14 = *(v0 + 120);

  *(v0 + 248) = *MEMORY[0x277D08FD8];
  v15 = *(v12 + 104);
  *(v0 + 208) = v15;
  *(v0 + 216) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v15(v11);

  return MEMORY[0x2822009F8](sub_24A403050, v10, 0);
}

uint64_t sub_24A403050()
{
  v1 = v0[23];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  sub_24A3FFB54(v0[14], v0[15], v0[16], 0, v2);
  v5 = *(v3 + 8);
  v0[28] = v5;
  v0[29] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_24A4030F8, 0, 0);
}

uint64_t sub_24A4030F8()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 248);
  v4 = *(v0 + 184);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
  inited = swift_initStackObject();
  *(v0 + 240) = inited;
  *(inited + 16) = xmmword_24A4B4E10;
  *(inited + 32) = v8;
  *(inited + 40) = v7;
  v2(v5, v3, v6);

  return MEMORY[0x2822009F8](sub_24A4031C8, v4, 0);
}

uint64_t sub_24A4031C8()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[23];
  v4 = v0[19];
  v5 = v0[17];
  sub_24A3FF864(0, v1, v4);
  swift_setDeallocating();
  sub_24A406964(v1 + 32);
  v2(v4, v5);

  return MEMORY[0x2822009F8](sub_24A403278, 0, 0);
}

uint64_t sub_24A403278()
{
  v1 = v0[23];

  v2 = v0[22];
  v3 = v0[19];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24A4032F0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_24A4AB3F0();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = sub_24A4AB400();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = sub_24A4AAD40();
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A403490, v2, 0);
}

uint64_t sub_24A403490()
{
  v138 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v1 = v0[22];
    v2 = v0[17];
    v3 = v0[18];
    v5 = v0[8];
    v4 = v0[9];
    v6 = sub_24A4AB630();
    v0[23] = sub_24A378E18(v6, qword_27EF4E260);
    v7 = *(v3 + 16);
    v0[24] = v7;
    v0[25] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v1, v4, v2);

    v8 = sub_24A4AB600();
    v9 = sub_24A4ABCE0();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[22];
    v12 = v0[17];
    v13 = v0[18];
    v14 = v0[8];
    if (v10)
    {
      v15 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v137 = v134;
      *v15 = 134218242;
      *(v15 + 4) = *(v14 + 16);

      *(v15 + 12) = 2080;
      sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0]);
      v16 = sub_24A4AC240();
      v18 = v17;
      v19 = *(v13 + 8);
      v19(v11, v12);
      v20 = sub_24A37BD58(v16, v18, &v137);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_24A376000, v8, v9, "FMFSecureLocationCtrl: stop refreshing location: %ld friends, mode: %s", v15, 0x16u);
      sub_24A37EEE0(v134);
      MEMORY[0x24C219130](v134, -1, -1);
      MEMORY[0x24C219130](v15, -1, -1);
    }

    else
    {
      v21 = v0[8];

      v19 = *(v13 + 8);
      v19(v11, v12);
    }

    v0[26] = v19;
    v22 = v0[8];
    v23 = *(v22 + 16);
    v0[27] = v23;
    if (!v23)
    {
      break;
    }

    v24 = (v22 + 48);
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      v27 = *(v24 - 1);
      v26 = *v24;

      v29 = sub_24A3F5BAC(v28);

      v30 = *(v29 + 16);
      v31 = v25[2];
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v32 <= v25[3] >> 1)
      {
        if (*(v29 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v31 <= v32)
        {
          v34 = v31 + v30;
        }

        else
        {
          v34 = v31;
        }

        v25 = sub_24A3C0C78(isUniquelyReferenced_nonNull_native, v34, 1, v25);
        if (*(v29 + 16))
        {
LABEL_18:
          v35 = (v25[3] >> 1) - v25[2];
          v36 = *(sub_24A4AB220() - 8);
          if (v35 < v30)
          {
            goto LABEL_66;
          }

          v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
          v38 = *(v36 + 72);
          swift_arrayInitWithCopy();

          if (v30)
          {
            v39 = v25[2];
            v40 = __OFADD__(v39, v30);
            v41 = v39 + v30;
            if (v40)
            {
              goto LABEL_67;
            }

            v25[2] = v41;
          }

          goto LABEL_8;
        }
      }

      if (v30)
      {
        goto LABEL_65;
      }

LABEL_8:
      v24 += 4;
      if (!--v23)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
  }

  v25 = MEMORY[0x277D84F90];
LABEL_23:
  v0[28] = v25;
  v42 = *(v0[10] + 112);
  v0[29] = v42;
  if (v42)
  {
    v43 = objc_opt_self();

    v44 = [v43 mainBundle];
    v45 = [v44 bundleIdentifier];

    if (v45)
    {
      sub_24A4AB850();
    }

    v71 = v0[16];
    (*(v0[12] + 104))(v0[13], *MEMORY[0x277D094A8], v0[11]);
    sub_24A4AB3E0();
    v72 = *(MEMORY[0x277D093D8] + 4);
    v73 = swift_task_alloc();
    v0[30] = v73;
    *v73 = v0;
    v73[1] = sub_24A403E7C;
    v74 = v0[16];
    v75 = v0[9];

    return MEMORY[0x28215FB00](v25, v75, v74);
  }

  v46 = v0[25];
  v47 = v0[21];
  v48 = v0[17];
  v49 = v0[18];
  (v0[24])(v47, v0[9], v48);
  v50 = (*(v49 + 88))(v47, v48);
  v51 = v50;
  if (v50 == *MEMORY[0x277D08FE0])
  {
    v52 = MEMORY[0x277D84F90];
    if (v0[27])
    {
      v135 = v50;
      v53 = 0;
      v54 = v0[10];
      v133 = v0[8];
      v55 = (v133 + 48);
      do
      {
        v62 = *(v55 - 2);
        v61 = *(v55 - 1);
        v63 = *v55;
        swift_beginAccess();
        v64 = *(v54 + 120);

        v65 = sub_24A39B2C8(v62, v61);
        if (v66)
        {
          v67 = v65;
          v68 = *(v54 + 120);
          v69 = swift_isUniquelyReferenced_nonNull_native();
          v70 = *(v54 + 120);
          v137 = v70;
          *(v54 + 120) = 0x8000000000000000;
          if (!v69)
          {
            sub_24A4A863C();
            v70 = v137;
          }

          v56 = *(*(v70 + 48) + 16 * v67 + 8);

          v57 = *(v70 + 56) + 32 * v67;
          v58 = *(v57 + 8);
          v59 = *(v57 + 16);

          sub_24A4A7078(v67, v70);
          *(v54 + 120) = v70;
        }

        ++v53;
        v60 = v0[27];
        swift_endAccess();

        v55 += 4;
      }

      while (v53 != v60);
      v94 = v0[27];
      v137 = v52;
      sub_24A3DBDA8(0, v94, 0);
      v95 = 0;
      v52 = v137;
      v96 = *(v137 + 16);
      v97 = 16 * v96;
      v98 = (v133 + 40);
      do
      {
        v100 = *(v98 - 1);
        v99 = *v98;
        v137 = v52;
        v101 = v96 + 1;
        v102 = *(v52 + 24);

        if (v96 >= v102 >> 1)
        {
          sub_24A3DBDA8((v102 > 1), v101, 1);
          v52 = v137;
        }

        v103 = v0[27];
        ++v95;
        *(v52 + 16) = v101;
        v104 = v52 + v97;
        *(v104 + 32) = v100;
        *(v104 + 40) = v99;
        v97 += 16;
        v98 += 4;
        ++v96;
      }

      while (v95 != v103);
      v51 = v135;
    }

    v105 = v0[26];
    v106 = v0[20];
    v107 = v0[17];
    v108 = v0[10];
    (*(v0[18] + 104))(v106, v51, v107);
    goto LABEL_60;
  }

  if (v50 == *MEMORY[0x277D08FD8])
  {
    v136 = v50;
    if (v0[27])
    {
      v76 = 0;
      v77 = v0[10];
      v78 = (v0[8] + 48);
      do
      {
        v85 = *(v78 - 2);
        v84 = *(v78 - 1);
        v86 = *v78;
        swift_beginAccess();
        v87 = *(v77 + 128);

        v88 = sub_24A39B2C8(v85, v84);
        if (v89)
        {
          v90 = v88;
          v91 = *(v77 + 128);
          v92 = swift_isUniquelyReferenced_nonNull_native();
          v93 = *(v77 + 128);
          v137 = v93;
          *(v77 + 128) = 0x8000000000000000;
          if (!v92)
          {
            sub_24A4A863C();
            v93 = v137;
          }

          v79 = *(*(v93 + 48) + 16 * v90 + 8);

          v80 = *(v93 + 56) + 32 * v90;
          v81 = *(v80 + 8);
          v82 = *(v80 + 16);

          sub_24A4A7078(v90, v93);
          *(v77 + 128) = v93;
        }

        ++v76;
        v83 = v0[27];
        swift_endAccess();

        v78 += 4;
      }

      while (v76 != v83);
    }

    v110 = v0[10];
    if (*(v110 + 144))
    {
      v111 = *(v110 + 144);

      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      sub_24A4ABBA0();
    }

    v112 = v0[27];
    v52 = MEMORY[0x277D84F90];
    if (v112)
    {
      v113 = v0[8];
      v137 = MEMORY[0x277D84F90];
      sub_24A3DBDA8(0, v112, 0);
      v114 = 0;
      v52 = v137;
      v115 = *(v137 + 16);
      v116 = 16 * v115;
      v117 = (v113 + 40);
      do
      {
        v119 = *(v117 - 1);
        v118 = *v117;
        v137 = v52;
        v120 = v115 + 1;
        v121 = *(v52 + 24);

        if (v115 >= v121 >> 1)
        {
          sub_24A3DBDA8((v121 > 1), v120, 1);
          v52 = v137;
        }

        v122 = v0[27];
        ++v114;
        *(v52 + 16) = v120;
        v123 = v52 + v116;
        *(v123 + 32) = v119;
        *(v123 + 40) = v118;
        v116 += 16;
        v117 += 4;
        ++v115;
      }

      while (v114 != v122);
    }

    v105 = v0[26];
    v106 = v0[20];
    v107 = v0[17];
    v124 = v0[10];
    (*(v0[18] + 104))(v106, v136, v107);
LABEL_60:
    sub_24A3FF864(0, v52, v106);

    v105(v106, v107);
  }

  else
  {
    v109 = v0[18] + 8;
    (v0[26])(v0[21], v0[17]);
  }

  v126 = v0[21];
  v125 = v0[22];
  v128 = v0[19];
  v127 = v0[20];
  v129 = v0[16];
  v130 = v0[13];

  v131 = v0[1];

  return v131();
}

uint64_t sub_24A403E7C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = v2[29];
  v6 = v2[28];
  v7 = v2[16];
  v8 = v2[15];
  v9 = v2[14];
  v10 = v2[10];
  (*(v8 + 8))(v7, v9);

  if (v0)
  {
    v11 = sub_24A404574;
  }

  else
  {
    v11 = sub_24A404038;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_24A404038()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  (*(v0 + 192))(v2, *(v0 + 72), v3);
  v5 = (*(v4 + 88))(v2, v3);
  v6 = v5;
  if (v5 == *MEMORY[0x277D08FE0])
  {
    v7 = MEMORY[0x277D84F90];
    if (*(v0 + 216))
    {
      v83 = v5;
      v8 = 0;
      v9 = *(v0 + 80);
      v82 = *(v0 + 64);
      v10 = (v82 + 48);
      do
      {
        v17 = *(v10 - 2);
        v16 = *(v10 - 1);
        v18 = *v10;
        swift_beginAccess();
        v19 = *(v9 + 120);

        v20 = sub_24A39B2C8(v17, v16);
        if (v21)
        {
          v22 = v20;
          v23 = *(v9 + 120);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = *(v9 + 120);
          *(v9 + 120) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_24A4A863C();
          }

          v11 = *(*(v25 + 48) + 16 * v22 + 8);

          v12 = *(v25 + 56) + 32 * v22;
          v13 = *(v12 + 8);
          v14 = *(v12 + 16);

          sub_24A4A7078(v22, v25);
          *(v9 + 120) = v25;
        }

        ++v8;
        v15 = *(v0 + 216);
        swift_endAccess();

        v10 += 4;
      }

      while (v8 != v15);
      sub_24A3DBDA8(0, *(v0 + 216), 0);
      v44 = 0;
      v45 = *(v7 + 16);
      v46 = 16 * v45;
      v47 = (v82 + 40);
      do
      {
        v49 = *(v47 - 1);
        v48 = *v47;
        v50 = v45 + 1;
        v51 = *(v7 + 24);

        if (v45 >= v51 >> 1)
        {
          sub_24A3DBDA8((v51 > 1), v50, 1);
        }

        v52 = *(v0 + 216);
        ++v44;
        *(v7 + 16) = v50;
        v53 = v7 + v46;
        *(v53 + 32) = v49;
        *(v53 + 40) = v48;
        v46 += 16;
        v47 += 4;
        ++v45;
      }

      while (v44 != v52);
      v6 = v83;
    }

    v54 = *(v0 + 208);
    v55 = *(v0 + 160);
    v56 = *(v0 + 136);
    v57 = *(v0 + 80);
    (*(*(v0 + 144) + 104))(v55, v6, v56);
  }

  else
  {
    if (v5 != *MEMORY[0x277D08FD8])
    {
      v58 = *(v0 + 144) + 8;
      (*(v0 + 208))(*(v0 + 168), *(v0 + 136));
      goto LABEL_33;
    }

    v84 = v5;
    if (*(v0 + 216))
    {
      v26 = 0;
      v27 = *(v0 + 80);
      v28 = (*(v0 + 64) + 48);
      do
      {
        v35 = *(v28 - 2);
        v34 = *(v28 - 1);
        v36 = *v28;
        swift_beginAccess();
        v37 = *(v27 + 128);

        v38 = sub_24A39B2C8(v35, v34);
        if (v39)
        {
          v40 = v38;
          v41 = *(v27 + 128);
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v43 = *(v27 + 128);
          *(v27 + 128) = 0x8000000000000000;
          if (!v42)
          {
            sub_24A4A863C();
          }

          v29 = *(*(v43 + 48) + 16 * v40 + 8);

          v30 = *(v43 + 56) + 32 * v40;
          v31 = *(v30 + 8);
          v32 = *(v30 + 16);

          sub_24A4A7078(v40, v43);
          *(v27 + 128) = v43;
        }

        ++v26;
        v33 = *(v0 + 216);
        swift_endAccess();

        v28 += 4;
      }

      while (v26 != v33);
    }

    v59 = *(v0 + 80);
    if (*(v59 + 144))
    {
      v60 = *(v59 + 144);

      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      sub_24A4ABBA0();
    }

    v61 = *(v0 + 216);
    v7 = MEMORY[0x277D84F90];
    if (v61)
    {
      v62 = *(v0 + 64);
      v85 = MEMORY[0x277D84F90];
      sub_24A3DBDA8(0, v61, 0);
      v63 = 0;
      v7 = v85;
      v64 = *(v85 + 16);
      v65 = 16 * v64;
      v66 = (v62 + 40);
      do
      {
        v68 = *(v66 - 1);
        v67 = *v66;
        v69 = v64 + 1;
        v70 = *(v85 + 24);

        if (v64 >= v70 >> 1)
        {
          sub_24A3DBDA8((v70 > 1), v69, 1);
        }

        v71 = *(v0 + 216);
        ++v63;
        *(v85 + 16) = v69;
        v72 = v85 + v65;
        *(v72 + 32) = v68;
        *(v72 + 40) = v67;
        v65 += 16;
        v66 += 4;
        ++v64;
      }

      while (v63 != v71);
    }

    v54 = *(v0 + 208);
    v55 = *(v0 + 160);
    v56 = *(v0 + 136);
    v73 = *(v0 + 80);
    (*(*(v0 + 144) + 104))(v55, v84, v56);
  }

  sub_24A3FF864(0, v7, v55);

  v54(v55, v56);
LABEL_33:
  v75 = *(v0 + 168);
  v74 = *(v0 + 176);
  v77 = *(v0 + 152);
  v76 = *(v0 + 160);
  v78 = *(v0 + 128);
  v79 = *(v0 + 104);

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_24A404574()
{
  v109 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  (*(v0 + 192))(*(v0 + 152), *(v0 + 72), *(v0 + 136));
  v4 = v1;
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 248);
  v9 = *(v0 + 208);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 136);
  if (v7)
  {
    v103 = *(v0 + 208);
    v13 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v108 = v105;
    *v13 = 138412546;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v102 = v15;
    *(v13 + 12) = 2080;
    sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0]);
    v16 = sub_24A4AC240();
    v18 = v17;
    v103(v10, v12);
    v19 = sub_24A37BD58(v16, v18, &v108);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_24A376000, v5, v6, "FMFSecureLocationCtrl: Error when trying to stop refreshing locations: %@ mode: %s", v13, 0x16u);
    sub_24A37EF2C(v102, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v102, -1, -1);
    sub_24A37EEE0(v105);
    MEMORY[0x24C219130](v105, -1, -1);
    MEMORY[0x24C219130](v13, -1, -1);
  }

  else
  {

    v9(v10, v12);
  }

  v20 = *(v0 + 200);
  v21 = *(v0 + 168);
  v22 = *(v0 + 136);
  v23 = *(v0 + 144);
  (*(v0 + 192))(v21, *(v0 + 72), v22);
  v24 = (*(v23 + 88))(v21, v22);
  v25 = v24;
  if (v24 == *MEMORY[0x277D08FE0])
  {
    v26 = MEMORY[0x277D84F90];
    if (*(v0 + 216))
    {
      v106 = v24;
      v27 = 0;
      v28 = *(v0 + 80);
      v104 = *(v0 + 64);
      v29 = (v104 + 48);
      do
      {
        v36 = *(v29 - 2);
        v35 = *(v29 - 1);
        v37 = *v29;
        swift_beginAccess();
        v38 = *(v28 + 120);

        v39 = sub_24A39B2C8(v36, v35);
        if (v40)
        {
          v41 = v39;
          v42 = *(v28 + 120);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = *(v28 + 120);
          v108 = v44;
          *(v28 + 120) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_24A4A863C();
            v44 = v108;
          }

          v30 = *(*(v44 + 48) + 16 * v41 + 8);

          v31 = *(v44 + 56) + 32 * v41;
          v32 = *(v31 + 8);
          v33 = *(v31 + 16);

          sub_24A4A7078(v41, v44);
          *(v28 + 120) = v44;
        }

        ++v27;
        v34 = *(v0 + 216);
        swift_endAccess();

        v29 += 4;
      }

      while (v27 != v34);
      v63 = *(v0 + 216);
      v108 = v26;
      sub_24A3DBDA8(0, v63, 0);
      v64 = 0;
      v26 = v108;
      v65 = *(v108 + 16);
      v66 = 16 * v65;
      v67 = (v104 + 40);
      do
      {
        v69 = *(v67 - 1);
        v68 = *v67;
        v108 = v26;
        v70 = v65 + 1;
        v71 = *(v26 + 24);

        if (v65 >= v71 >> 1)
        {
          sub_24A3DBDA8((v71 > 1), v70, 1);
          v26 = v108;
        }

        v72 = *(v0 + 216);
        ++v64;
        *(v26 + 16) = v70;
        v73 = v26 + v66;
        *(v73 + 32) = v69;
        *(v73 + 40) = v68;
        v66 += 16;
        v67 += 4;
        ++v65;
      }

      while (v64 != v72);
      v25 = v106;
    }

    v74 = *(v0 + 208);
    v75 = *(v0 + 160);
    v76 = *(v0 + 136);
    v77 = *(v0 + 80);
    (*(*(v0 + 144) + 104))(v75, v25, v76);
  }

  else
  {
    if (v24 != *MEMORY[0x277D08FD8])
    {
      v78 = *(v0 + 144) + 8;
      (*(v0 + 208))(*(v0 + 168), *(v0 + 136));
      goto LABEL_36;
    }

    v107 = v24;
    if (*(v0 + 216))
    {
      v45 = 0;
      v46 = *(v0 + 80);
      v47 = (*(v0 + 64) + 48);
      do
      {
        v54 = *(v47 - 2);
        v53 = *(v47 - 1);
        v55 = *v47;
        swift_beginAccess();
        v56 = *(v46 + 128);

        v57 = sub_24A39B2C8(v54, v53);
        if (v58)
        {
          v59 = v57;
          v60 = *(v46 + 128);
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v62 = *(v46 + 128);
          v108 = v62;
          *(v46 + 128) = 0x8000000000000000;
          if (!v61)
          {
            sub_24A4A863C();
            v62 = v108;
          }

          v48 = *(*(v62 + 48) + 16 * v59 + 8);

          v49 = *(v62 + 56) + 32 * v59;
          v50 = *(v49 + 8);
          v51 = *(v49 + 16);

          sub_24A4A7078(v59, v62);
          *(v46 + 128) = v62;
        }

        ++v45;
        v52 = *(v0 + 216);
        swift_endAccess();

        v47 += 4;
      }

      while (v45 != v52);
    }

    v79 = *(v0 + 80);
    if (*(v79 + 144))
    {
      v80 = *(v79 + 144);

      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      sub_24A4ABBA0();
    }

    v81 = *(v0 + 216);
    v26 = MEMORY[0x277D84F90];
    if (v81)
    {
      v82 = *(v0 + 64);
      v108 = MEMORY[0x277D84F90];
      sub_24A3DBDA8(0, v81, 0);
      v83 = 0;
      v26 = v108;
      v84 = *(v108 + 16);
      v85 = 16 * v84;
      v86 = (v82 + 40);
      do
      {
        v88 = *(v86 - 1);
        v87 = *v86;
        v108 = v26;
        v89 = v84 + 1;
        v90 = *(v26 + 24);

        if (v84 >= v90 >> 1)
        {
          sub_24A3DBDA8((v90 > 1), v89, 1);
          v26 = v108;
        }

        v91 = *(v0 + 216);
        ++v83;
        *(v26 + 16) = v89;
        v92 = v26 + v85;
        *(v92 + 32) = v88;
        *(v92 + 40) = v87;
        v85 += 16;
        v86 += 4;
        ++v84;
      }

      while (v83 != v91);
    }

    v74 = *(v0 + 208);
    v75 = *(v0 + 160);
    v76 = *(v0 + 136);
    v93 = *(v0 + 80);
    (*(*(v0 + 144) + 104))(v75, v107, v76);
  }

  sub_24A3FF864(0, v26, v75);

  v74(v75, v76);
LABEL_36:
  v95 = *(v0 + 168);
  v94 = *(v0 + 176);
  v97 = *(v0 + 152);
  v96 = *(v0 + 160);
  v98 = *(v0 + 128);
  v99 = *(v0 + 104);

  v100 = *(v0 + 8);

  return v100();
}

uint64_t sub_24A404CA4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_24A4AAD40();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A404D74, v2, 0);
}

uint64_t sub_24A404D74()
{
  v54 = v0;
  if (*(v0[8] + 16))
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v1 = v0[14];
    v2 = v0[11];
    v3 = v0[12];
    v4 = v0[9];
    v5 = sub_24A4AB630();
    sub_24A378E18(v5, qword_27EF4E260);
    v6 = *(v3 + 16);
    v6(v1, v4, v2);
    v7 = sub_24A4AB600();
    v8 = sub_24A4ABCE0();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    if (v9)
    {
      buf = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *buf = 136315138;
      sub_24A4069B8(&qword_27EF3FA08, MEMORY[0x277D08FF0]);
      v50 = v8;
      v13 = v6;
      v14 = sub_24A4AC240();
      v16 = v15;
      v17 = *(v11 + 8);
      (v17)(v10, v12);
      v18 = v14;
      v6 = v13;
      v19 = sub_24A37BD58(v18, v16, &v53);

      *(buf + 4) = v19;
      _os_log_impl(&dword_24A376000, v7, v50, "FMFSecureLocationCtrl: startLocating secure friends called, with priority: %s", buf, 0xCu);
      sub_24A37EEE0(v52);
      MEMORY[0x24C219130](v52, -1, -1);
      MEMORY[0x24C219130](buf, -1, -1);
    }

    else
    {

      v17 = *(v11 + 8);
      (v17)(v10, v12);
    }

    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[11];
    v6(v24, v0[9], v26);
    v27 = (*(v25 + 88))(v24, v26);
    if (v27 == *MEMORY[0x277D08FE0])
    {
      v28 = v0[10];
      swift_beginAccess();
      v29 = *(v28 + 120);
      v30 = *(v29 + 16);
      if (!v30)
      {
LABEL_18:
        v31 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }

      v31 = sub_24A40B3F8(*(v29 + 16), 0);
      v32 = sub_24A40C0A8(&v53, (v31 + 4), v30, v29);
      v17 = v53;

      v27 = sub_24A3A13C0();
      if (v32 == v30)
      {
LABEL_19:
        v37 = sub_24A489CD4(v31);

        goto LABEL_21;
      }

      __break(1u);
    }

    if (v27 != *MEMORY[0x277D08FD8])
    {
      v38 = v0[12] + 8;
      (v17)(v0[13], v0[11]);
      v37 = MEMORY[0x277D84FA0];
LABEL_21:
      v39 = v0[8];

      v41 = sub_24A489CD4(v40);

      v42 = sub_24A475F30(v41, v37);
      v43 = v42;
      v44 = *(v42 + 16);
      if (v44)
      {
        v45 = sub_24A40B3F8(*(v42 + 16), 0);
        v46 = sub_24A40BF10(&v53, (v45 + 4), v44, v43);
        sub_24A3A13C0();
        if (v46 == v44)
        {
LABEL_25:
          v0[15] = v45;
          v47 = swift_task_alloc();
          v0[16] = v47;
          *v47 = v0;
          v47[1] = sub_24A405290;
          v48 = v0[9];
          v49 = v0[10];

          return sub_24A3FFDAC(v45, v48);
        }

        __break(1u);
      }

      v45 = MEMORY[0x277D84F90];
      goto LABEL_25;
    }

    v33 = v0[10];
    swift_beginAccess();
    v34 = *(v33 + 128);
    v35 = *(v34 + 16);
    if (!v35)
    {
      goto LABEL_18;
    }

    v31 = sub_24A40B3F8(*(v34 + 16), 0);
    v36 = sub_24A40C0A8(&v53, (v31 + 4), v35, v34);

    sub_24A3A13C0();
    if (v36 != v35)
    {
      __break(1u);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v21 = v0[13];
  v20 = v0[14];

  v22 = v0[1];

  return v22();
}

uint64_t sub_24A405290()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {
    v4 = v3[10];

    return MEMORY[0x2822009F8](sub_24A4053E0, v4, 0);
  }

  else
  {
    v5 = v3[15];

    v7 = v3[13];
    v6 = v3[14];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_24A4053E0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

void *sub_24A405458()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  v5 = v0[18];

  v6 = v0[19];

  v7 = v0[20];

  sub_24A37EF2C(v0 + OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A3C8470(v0 + OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_delegate);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24A4054E0()
{
  sub_24A405458();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24A405518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = *(*(sub_24A3C9CEC(&qword_27EF3F9B8, qword_24A4B7008) - 8) + 64) + 15;
  v6[4] = swift_task_alloc();
  v8 = sub_24A4AAE80();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[7] = v11;
  v12 = *(MEMORY[0x277D09438] + 4);
  v13 = swift_task_alloc();
  v6[8] = v13;
  *v13 = v6;
  v13[1] = sub_24A405650;

  return MEMORY[0x28215FB68](v11);
}

uint64_t sub_24A405650()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_24A4058C8;
  }

  else
  {
    v3 = sub_24A405764;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A405764()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_24A4067E4();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v5 = SPSecureLocationsStewiePublishResult.init(_:)(v4);
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  v10 = v0[2];
  v9 = v0[3];
  if (v5)
  {
    v11 = v5;
    v10(v5, 0);
  }

  else
  {
    sub_24A4066C8();
    v11 = swift_allocError();
    *v12 = 1;
    v10(0, v11);
  }

  (*(v7 + 8))(v6, v8);
  v13 = v0[7];
  v14 = v0[4];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24A4058C8()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(0, v1);

  v5 = v0[7];
  v6 = v0[4];

  v7 = v0[1];

  return v7();
}

id SPSecureLocationsStewiePublishResult.init(_:)(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_24A3C9CEC(&qword_27EF3F9B8, qword_24A4B7008);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_24A4AAE80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A37B740(a1, v9, &qword_27EF3F9B8, qword_24A4B7008);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24A37EF2C(a1, &qword_27EF3F9B8, qword_24A4B7008);
    sub_24A37EF2C(v9, &qword_27EF3F9B8, qword_24A4B7008);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_24A4AAE70();
    v16 = sub_24A4AAAD0();
    v17 = *(v16 - 8);
    v18 = 0;
    if ((*(v17 + 48))(v5, 1, v16) != 1)
    {
      v18 = sub_24A4AAA60();
      (*(v17 + 8))(v5, v16);
    }

    [v15 setLastPublished_];

    sub_24A4AAE60();
    [v15 setNextAllowedPublish_];

    sub_24A37EF2C(a1, &qword_27EF3F9B8, qword_24A4B7008);
    (*(v11 + 8))(v14, v10);
  }

  return v15;
}

uint64_t sub_24A405CF0()
{
  result = sub_24A4AAAD0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24A405DBC()
{
  sub_24A37E944();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 sub_24A405E44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_24A405E58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_24A405EA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A405EFC()
{
  result = qword_27EF3F9F0;
  if (!qword_27EF3F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F9F0);
  }

  return result;
}

uint64_t sub_24A405F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24A4AC000();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24A40607C, 0, 0);
}

uint64_t sub_24A40607C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_24A4AC010();
  v7 = sub_24A4069B8(&qword_27EF3FA18, MEMORY[0x277D85928]);
  sub_24A4AC2C0();
  sub_24A4069B8(&qword_27EF3FA20, MEMORY[0x277D858F8]);
  sub_24A4AC020();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_24A40620C;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_24A40620C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A4063C8, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_24A4063C8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_24A406434(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_24A3C9CEC(&qword_27EF3FA10, &qword_24A4B7268);
    v3 = sub_24A4AC090();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24A39B2C8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_24A406538(void (*a1)(void, void *), uint64_t a2)
{
  v5 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = *(v2 + 112);
  if (v9)
  {
    v10 = sub_24A4ABB70();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = a1;
    v11[6] = a2;

    sub_24A432370(0, 0, v8, &unk_24A4B7260, v11);
  }

  else
  {
    sub_24A4066C8();
    v12 = swift_allocError();
    *v13 = 0;
    a1(0, v12);
  }
}

unint64_t sub_24A4066C8()
{
  result = qword_27EF3F9F8;
  if (!qword_27EF3F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F9F8);
  }

  return result;
}

uint64_t sub_24A40671C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A35A8;

  return sub_24A405518(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_24A4067E4()
{
  result = qword_27EF3FA00;
  if (!qword_27EF3FA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF3FA00);
  }

  return result;
}

uint64_t sub_24A406830(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24A40683C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 66);
  if (*(v1 + 65))
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | *(v1 + 64);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_24A3A357C;

  return sub_24A402758(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24A4069B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A406A38(uint64_t a1)
{
  v4 = *(v1 + 24);
  v14 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = *(v1 + 64);
  v9 = *(v1 + 72);
  v11 = *(v1 + 80) | (*(v1 + 82) << 16);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24A3A357C;

  return sub_24A3FEF68(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_24A406B38(uint64_t a1)
{
  v4 = *(sub_24A3C9CEC(&qword_27EF3FA30, &qword_24A4B72A8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A35A8;

  return sub_24A3FB240(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24A406C64(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(sub_24A3C9CEC(a1, a2) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = *(v7 + 64);
  v11 = *(v4 + 16);
  swift_unknownObjectRelease();
  v12 = sub_24A3C9CEC(a3, a4);
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v9, 1, v12))
  {
    (*(v13 + 8))(v4 + v9, v12);
  }

  v14 = (v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v4 + v14);

  return MEMORY[0x2821FE8E8](v4, v14 + 8, v8 | 7);
}

uint64_t sub_24A406D94(uint64_t a1)
{
  v4 = *(sub_24A3C9CEC(&qword_27EF3FA98, &qword_24A4B7308) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24A3A357C;

  return sub_24A3F8B4C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_24A406EC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A3A357C;

  return sub_24A3F6808(a1, v4, v5, v7, v6);
}

unint64_t sub_24A406F94()
{
  result = qword_27EF3FAB8;
  if (!qword_27EF3FAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FAB8);
  }

  return result;
}

uint64_t sub_24A407004(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 0;
  }

  if (*(*a1 + 24) == *a2 && v2 == *(*a1 + 32))
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270() & 1;
  }
}

uint64_t FMFContact.storeUUID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMFContact.displayName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMFContact.shortName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_24A40712C()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A407208()
{
  *v0;
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A4072D0()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4073A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A407E94();
  *a2 = result;
  return result;
}

void sub_24A4073D8(uint64_t *a1@<X8>)
{
  v2 = 0x49555565726F7473;
  v3 = 0xED00006567616D49;
  v4 = 0x73614865726F7473;
  if (*v1 != 2)
  {
    v4 = 0x6D614E74726F6873;
    v3 = 0xE900000000000065;
  }

  v5 = 0xEB00000000656D61;
  if (*v1)
  {
    v2 = 0x4E79616C70736964;
  }

  else
  {
    v5 = 0xE900000000000044;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t sub_24A407470()
{
  v1 = 0x49555565726F7473;
  v2 = 0x73614865726F7473;
  if (*v0 != 2)
  {
    v2 = 0x6D614E74726F6873;
  }

  if (*v0)
  {
    v1 = 0x4E79616C70736964;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A407504@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A407E94();
  *a1 = result;
  return result;
}

uint64_t sub_24A40752C(uint64_t a1)
{
  v2 = sub_24A407858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A407568(uint64_t a1)
{
  v2 = sub_24A407858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFContact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3FAC0, &qword_24A4B7418);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A407858();
  sub_24A4AC3C0();
  if (v2)
  {
    return sub_24A37EEE0(a1);
  }

  v29 = 0;
  v11 = sub_24A4AC120();
  v24 = v12;
  v28 = 1;
  v22 = sub_24A4AC120();
  v23 = v13;
  v27 = 2;
  v25 = sub_24A4AC130();
  v26 = 3;
  v14 = sub_24A4AC120();
  v17 = v16;
  v25 &= 1u;
  v18 = v14;
  (*(v6 + 8))(v9, v5);
  v20 = v23;
  v19 = v24;
  *a2 = v11;
  *(a2 + 8) = v19;
  *(a2 + 16) = v22;
  *(a2 + 24) = v20;
  *(a2 + 32) = v25;
  *(a2 + 40) = v18;
  *(a2 + 48) = v17;

  sub_24A37EEE0(a1);
}

unint64_t sub_24A407858()
{
  result = qword_27EF3FAC8;
  if (!qword_27EF3FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FAC8);
  }

  return result;
}

uint64_t FMFContact.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FAD0, &qword_24A4B7420);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v16 = *(v1 + 32);
  v11 = v1[5];
  v15[1] = v1[6];
  v15[2] = v11;
  v12 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A407858();
  sub_24A4AC3D0();
  v20 = 0;
  v13 = v15[5];
  sub_24A4AC1B0();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v19 = 1;
  sub_24A4AC1B0();
  v18 = 2;
  sub_24A4AC1C0();
  v17 = 3;
  sub_24A4AC1B0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t static FMFContact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_24A4AC270() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_24A4AC270();
    result = 0;
    if (v13 & 1) == 0 || ((v4 ^ v9))
    {
      return result;
    }
  }

  if (v5 == v10 && v6 == v11)
  {
    return 1;
  }

  return sub_24A4AC270();
}

uint64_t sub_24A407BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_24A4AC270() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_24A4AC270();
    result = 0;
    if (v13 & 1) == 0 || ((v4 ^ v9))
    {
      return result;
    }
  }

  if (v5 == v10 && v6 == v11)
  {
    return 1;
  }

  return sub_24A4AC270();
}

__n128 sub_24A407D14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24A407D30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A407D90()
{
  result = qword_27EF3FAD8;
  if (!qword_27EF3FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FAD8);
  }

  return result;
}

unint64_t sub_24A407DE8()
{
  result = qword_27EF3FAE0;
  if (!qword_27EF3FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FAE0);
  }

  return result;
}

unint64_t sub_24A407E40()
{
  result = qword_27EF3FAE8;
  if (!qword_27EF3FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FAE8);
  }

  return result;
}

uint64_t sub_24A407E94()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A407EE0(uint64_t a1)
{
  v54 = sub_24A4AA7F0();
  v3 = *(v54 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v54);
  v57 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v48[1] = v1;
    v63 = MEMORY[0x277D84F90];
    sub_24A4ABFD0();
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_24A4ABEA0();
    v10 = result;
    v11 = 0;
    v12 = *MEMORY[0x277CBECE8];
    v52 = (v3 + 8);
    v53 = v12;
    v49 = a1;
    v50 = a1 + 64;
    v55 = v6;
    v56 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v15 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_40;
      }

      v16 = *(a1 + 36);
      v58 = v11;
      v59 = v16;
      v17 = (*(a1 + 48) + 16 * v10);
      v19 = *v17;
      v18 = v17[1];
      v20 = qword_27EF3EBC0;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = qword_27EF4E198;
      v22 = sub_24A4AB820();
      LODWORD(v21) = [v21 evaluateWithObject_];

      v60 = 1 << v10;
      if (v21)
      {
        v23 = sub_24A4AB820();
        result = CMFItemCreateWithEmailAddress();
        if (!result)
        {
          goto LABEL_45;
        }
      }

      else
      {
        sub_24A4AA7B0();
        sub_24A4AA7C0();
        v61 = v19;
        v62 = v18;
        sub_24A3A1434();
        sub_24A4ABE20();
        if (v24)
        {

          v25 = v19;
          v26 = v18;
        }

        else
        {
          v61 = v19;
          v62 = v18;
          v27 = sub_24A4AB900();
          result = sub_24A4AB910();
          v28 = result - v27;
          if (__OFSUB__(result, v27))
          {
            goto LABEL_44;
          }

          v29 = sub_24A4AB820();
          v30 = [v29 substringWithRange_];

          v25 = sub_24A4AB850();
          v26 = v31;
        }

        v32 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v32 = v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v32)
        {
          v51 = v25;
          sub_24A45D034();
          v33 = sub_24A4AB820();
          v34 = sub_24A4AB820();

          v35 = CFPhoneNumberCreate();

          if (v35)
          {
            v36 = v35;
            String = CFPhoneNumberCreateString();
            a1 = v49;
            if (String)
            {
              v38 = String;

              sub_24A4AB850();

              (*v52)(v57, v54);
            }

            else
            {
              (*v52)(v57, v54);
            }
          }

          else
          {
            (*v52)(v57, v54);
            a1 = v49;
          }
        }

        else
        {
          (*v52)(v57, v54);
        }

        v23 = sub_24A4AB820();

        v39 = CFPhoneNumberCreate();
        result = CMFItemCreateWithPhoneNumber();
        if (!result)
        {
          goto LABEL_46;
        }
      }

      sub_24A4ABFB0();
      v40 = *(v63 + 16);
      sub_24A4ABFE0();
      sub_24A4ABFF0();
      result = sub_24A4ABFC0();
      v13 = 1 << *(a1 + 32);
      if (v10 >= v13)
      {
        goto LABEL_41;
      }

      v8 = v56;
      v41 = *(v56 + 8 * v15);
      if ((v41 & v60) == 0)
      {
        goto LABEL_42;
      }

      if (v59 != *(a1 + 36))
      {
        goto LABEL_43;
      }

      v42 = v41 & (-2 << (v10 & 0x3F));
      if (v42)
      {
        v13 = __clz(__rbit64(v42)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v14 = v55;
      }

      else
      {
        v43 = v15 << 6;
        v44 = v15 + 1;
        v45 = (v50 + 8 * v15);
        v14 = v55;
        while (v44 < (v13 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            result = sub_24A406830(v10, v59, 0);
            v13 = __clz(__rbit64(v46)) + v43;
            goto LABEL_4;
          }
        }

        result = sub_24A406830(v10, v59, 0);
      }

LABEL_4:
      v11 = v58 + 1;
      v10 = v13;
      if (v58 + 1 == v14)
      {
        return v63;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  return result;
}

uint64_t FMFFriend.personIdHash.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMFFriend.fallbackToLegacy.setter(char a1)
{
  result = type metadata accessor for FMFFriend();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t FMFFriend.fallbackToLegacyAllowed.setter(char a1)
{
  result = type metadata accessor for FMFFriend();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t FMFFriend.locationAlertsOnMe.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFFriend() + 68));
}

uint64_t FMFFriend.isWaitingForShallowLocation.setter(char a1)
{
  result = type metadata accessor for FMFFriend();
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t FMFFriend.properName.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFFriend() + 76));
  if (!v1[1])
  {
    return 0;
  }

  v2 = v1[2];
  v3 = v1[3];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  return v2;
}

uint64_t FMFFriend.pendingUpdateReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMFFriend();
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t FMFFriend.pendingUpdateReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for FMFFriend();
  *(v1 + *(result + 84)) = v2;
  return result;
}

unint64_t sub_24A408818(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x64496E6F73726570;
      break;
    case 2:
      result = 0x48746361746E6F63;
      break;
    case 3:
      result = 0x7078456572616873;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x746F4E646574706FLL;
      break;
    case 6:
      v3 = 10;
      goto LABEL_19;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
      v3 = 11;
LABEL_19:
      result = v3 | 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x657469726F766166;
      break;
    case 12:
      result = 0x6E6F697461636F6CLL;
      break;
    case 13:
      result = 0x746361746E6F63;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0x6E65644968737570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A408A44(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A408818(*a1);
  v5 = v4;
  if (v3 == sub_24A408818(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A408ACC()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A408818(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A408B30()
{
  sub_24A408818(*v0);
  sub_24A4AB8F0();
}

uint64_t sub_24A408B84()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A408818(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A408BE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A40DA14();
  *a2 = result;
  return result;
}

unint64_t sub_24A408C14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A408818(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A408C5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A40DA14();
  *a1 = result;
  return result;
}

uint64_t sub_24A408C90(uint64_t a1)
{
  v2 = sub_24A40D490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A408CCC(uint64_t a1)
{
  v2 = sub_24A40D490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFFriend.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - v5;
  v7 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - v9;
  v11 = sub_24A3C9CEC(&qword_27EF3FAF0, &qword_24A4B7640);
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v15 = type metadata accessor for FMFFriend();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v18 + *(v19 + 84)) = 7;
  v21 = a1[3];
  v20 = a1[4];
  v46 = a1;
  sub_24A37EACC(a1, v21);
  sub_24A40D490();
  v22 = v45;
  sub_24A4AC3C0();
  if (v22)
  {
    return sub_24A37EEE0(v46);
  }

  v23 = v44;
  LOBYTE(v47) = 0;
  *v18 = sub_24A4AC120();
  v18[1] = v24;
  LOBYTE(v47) = 1;
  v25 = sub_24A4AC120();
  v42 = v15;
  v26 = v10;
  v18[2] = v25;
  v18[3] = v27;
  sub_24A3C9CEC(&qword_27EF3FB00, &qword_24A4B7648);
  v54 = 2;
  sub_24A40D534();
  sub_24A4AC160();
  v18[4] = v47;
  sub_24A4AAAD0();
  LOBYTE(v47) = 3;
  sub_24A40DA68(&qword_27EF3F900, MEMORY[0x277CC9578]);
  sub_24A4AC160();
  (*(MEMORY[0xFFFFFFFFFFFFFFF8] + 56))(v10, 0, 1, 0);
  v28 = v42;
  sub_24A37BE24(v26, v18 + v42[8], &qword_27EF3F460, &unk_24A4B53B0);
  LOBYTE(v47) = 5;
  *(v18 + v28[10]) = sub_24A4AC130() & 1;
  LOBYTE(v47) = 6;
  *(v18 + v28[11]) = sub_24A4AC130() & 1;
  LOBYTE(v47) = 7;
  *(v18 + v28[12]) = sub_24A4AC130() & 1;
  LOBYTE(v47) = 8;
  *(v18 + v28[18]) = sub_24A4AC130() & 1;
  LOBYTE(v47) = 9;
  *(v18 + v28[13]) = sub_24A4AC130() & 1;
  LOBYTE(v47) = 10;
  *(v18 + v28[14]) = sub_24A4AC130() & 1;
  LOBYTE(v47) = 11;
  v29 = sub_24A4AC150();
  v45 = 0;
  *(v18 + v28[15]) = v29;
  v30 = v28;
  v31 = type metadata accessor for FMFLocation();
  LOBYTE(v47) = 12;
  sub_24A40DA68(&qword_27EF3F178, type metadata accessor for FMFLocation);
  sub_24A4AC160();
  (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
  sub_24A37BE24(v6, v18 + v30[20], &qword_27EF3F480, &unk_24A4B8C20);
  v54 = 13;
  sub_24A3870AC();
  sub_24A4AC160();
  v32 = v48;
  v33 = v49;
  v34 = v50;
  v35 = v51;
  v36 = v52;
  v37 = v53;
  v38 = (v18 + v30[19]);
  *v38 = v47;
  v38[1] = v32;
  v38[2] = v33;
  v38[3] = v34;
  v38[4] = v35;
  v38[5] = v36;
  v38[6] = v37;
  LOBYTE(v47) = 4;
  *(v18 + v30[9]) = sub_24A4AC150();
  sub_24A3C9CEC(&qword_27EF3F1B0, &unk_24A4B4980);
  v54 = 14;
  sub_24A40D79C(&qword_27EF3F1B8, &qword_27EF3F1C0);
  v45 = v14;
  sub_24A4AC160();
  *(v18 + v42[17]) = v47;
  v54 = 15;
  sub_24A4AC160();
  *(v18 + v42[16]) = v47;
  sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
  v54 = 16;
  sub_24A3B1A24();
  sub_24A4AC160();
  v39 = v47;
  v40 = v43;
  (*(v23 + 8))(v45, v11);
  v18[5] = v39;
  sub_24A39921C(v18, v40, type metadata accessor for FMFFriend);
  sub_24A37EEE0(v46);
  return sub_24A39A698(v18, type metadata accessor for FMFFriend);
}

uint64_t FMFFriend.init(friend:updatedLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v101 = a2;
  v5 = type metadata accessor for FMFFriend();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v69 - v12;
  v14 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v69 - v19;
  v21 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v69 - v26;
  v91 = a1;
  sub_24A39921C(a1, &v69 - v26, type metadata accessor for FMFFriend);
  (*(v6 + 56))(v27, 0, 1, v5);
  v92 = v20;
  v28 = v17;
  sub_24A37B740(v101, v20, &qword_27EF3F480, &unk_24A4B8C20);
  v29 = v5[21];
  *(a3 + v29) = 7;
  v30 = sub_24A4AAAD0();
  v31 = *(*(v30 - 8) + 56);
  v100 = v13;
  v31(v13, 1, 1, v30);
  v32 = type metadata accessor for FMFLocation();
  v85 = *(v32 - 8);
  v33 = *(v85 + 56);
  v96 = v32;
  v75 = v85 + 56;
  v74 = v33;
  (v33)(v28, 1, 1);
  v90 = v27;
  sub_24A37B740(v27, v24, &qword_27EF3F2D0, &qword_24A4B4F50);
  v34 = (*(v6 + 48))(v24, 1, v5);
  v93 = v28;
  if (v34 == 1)
  {
    sub_24A37EF2C(v24, &qword_27EF3F2D0, &qword_24A4B4F50);
    v35 = 0;
    v80 = 0;
    v81 = 0;
    v36 = 0;
    v89 = 0;
    v97 = 0;
    v94 = 0;
    v37 = 0;
    v79 = 0;
    v78 = 0;
    v77 = 0;
    v87 = 0;
    v88 = 0;
    v99 = 0;
    v86 = 0;
    v95 = 0xE000000000000000;
    v98 = MEMORY[0x277D84FA0];
    v76 = 2;
    v84 = 0x7FFFFFFFFFFFFFFFLL;
    v82 = 2;
    v83 = 2;
    v38 = 2;
    v39 = 2;
  }

  else
  {
    sub_24A37EF2C(v28, &qword_27EF3F480, &unk_24A4B8C20);
    v40 = v100;
    sub_24A37EF2C(v100, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A39CAB8(v24, v9, type metadata accessor for FMFFriend);
    v41 = *v9;
    v95 = v9[1];
    v42 = v9[2];
    v43 = v9[3];
    v87 = v41;
    v88 = v42;
    v98 = v9[4];
    v99 = v43;
    sub_24A37B740(v9 + v5[8], v40, &qword_27EF3F460, &unk_24A4B53B0);
    v44 = v5[10];
    v86 = *(v9 + v5[9]);
    v82 = *(v9 + v44);
    v45 = v5[12];
    v73 = *(v9 + v5[11]);
    v71 = *(v9 + v45);
    v76 = *(v9 + v5[18]);
    v46 = v5[14];
    v72 = *(v9 + v5[13]);
    v83 = *(v9 + v46);
    v84 = *(v9 + v5[15]);
    sub_24A37B740(v9 + v5[20], v28, &qword_27EF3F480, &unk_24A4B8C20);
    v47 = (v9 + v5[19]);
    v48 = v47[1];
    v97 = *v47;
    v94 = v48;
    v49 = v47[2];
    v37 = v47[3];
    v50 = v29;
    v51 = v47[4];
    v52 = v47[5];
    v53 = v47[6];
    v54 = *(v9 + v5[16]);
    v70 = *(v9 + v5[17]);
    *(a3 + v50) = *(v9 + v5[21]);
    v55 = v9[5];

    v81 = v49;
    v38 = v71;
    v79 = v51;
    v78 = v52;
    v77 = v53;
    sub_24A39AED0(v97, v94);
    v80 = v55;
    v39 = v73;

    v89 = v54;
    v35 = v72;

    v56 = v70;

    v57 = v9;
    v36 = v56;
    sub_24A39A698(v57, type metadata accessor for FMFFriend);
  }

  v58 = v5[14];
  sub_24A37EF2C(v101, &qword_27EF3F480, &unk_24A4B8C20);
  sub_24A39A698(v91, type metadata accessor for FMFFriend);
  sub_24A37EF2C(v90, &qword_27EF3F2D0, &qword_24A4B4F50);
  v59 = v95;
  *a3 = v87;
  a3[1] = v59;
  v60 = v98;
  v61 = v99;
  a3[2] = v88;
  a3[3] = v61;
  a3[4] = v60;
  sub_24A37BE24(v100, a3 + v5[8], &qword_27EF3F460, &unk_24A4B53B0);
  *(a3 + v5[9]) = v86;
  *(a3 + v5[10]) = v82;
  *(a3 + v5[11]) = v39;
  *(a3 + v5[12]) = v38;
  v62 = (a3 + v5[19]);
  v63 = v94;
  *v62 = v97;
  v62[1] = v63;
  v62[2] = v81;
  v62[3] = v37;
  v64 = v78;
  v62[4] = v79;
  v62[5] = v64;
  v62[6] = v77;
  *(a3 + v58) = v83;
  *(a3 + v5[18]) = (v76 == 2) | v76 & 1;
  *(a3 + v5[13]) = v35;
  a3[5] = v80;
  v65 = v85;
  *(a3 + v5[15]) = v84;
  v66 = v92;
  if ((*(v65 + 48))(v92, 1, v96) == 1)
  {
    sub_24A37EF2C(v66, &qword_27EF3F480, &unk_24A4B8C20);
    result = sub_24A37BE24(v93, a3 + v5[20], &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    sub_24A37EF2C(v93, &qword_27EF3F480, &unk_24A4B8C20);
    v68 = v5[20];
    sub_24A39CAB8(v66, a3 + v68, type metadata accessor for FMFLocation);
    result = v74(a3 + v68, 0, 1, v96);
  }

  *(a3 + v5[16]) = v89;
  *(a3 + v5[17]) = v36;
  return result;
}

Swift::Bool __swiftcall FMFFriend.isBlocked()()
{
  v1 = sub_24A407EE0(*(v0 + 32));
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_15:
    v4 = sub_24A4AC060();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C218380](v5, v2);
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v7 = *(v2 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    IsItemBlocked = CMFBlockListIsItemBlocked();
    swift_unknownObjectRelease();
    v5 = v6 + 1;
  }

  while (!IsItemBlocked);

  return v4 != v6;
}

uint64_t FMFFriend.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF3FB18, &qword_24A4B7650);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A40D490();
  sub_24A4AC3D0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v21) = 0;
  sub_24A4AC1B0();
  if (!v2)
  {
    v21 = *(v3 + 1);
    v22 = 1;
    sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
    sub_24A38D258();
    sub_24A4AC1F0();
    *&v21 = v3[4];
    v22 = 2;
    sub_24A3C9CEC(&qword_27EF3FB00, &qword_24A4B7648);
    sub_24A40D5B0();
    sub_24A4AC1F0();
    v13 = type metadata accessor for FMFFriend();
    v14 = v13[8];
    LOBYTE(v21) = 3;
    sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
    sub_24A38CB94();
    sub_24A4AC1F0();
    LOBYTE(v21) = *(v3 + v13[10]);
    v22 = 5;
    sub_24A3C9CEC(&qword_27EF3F408, &qword_24A4B54A8);
    sub_24A3D89D8();
    sub_24A4AC1F0();
    LOBYTE(v21) = *(v3 + v13[11]);
    v22 = 6;
    sub_24A4AC1F0();
    LOBYTE(v21) = *(v3 + v13[12]);
    v22 = 7;
    sub_24A4AC1F0();
    v15 = *(v3 + v13[18]);
    LOBYTE(v21) = 8;
    sub_24A4AC1C0();
    v16 = *(v3 + v13[13]);
    LOBYTE(v21) = 9;
    sub_24A4AC1C0();
    LOBYTE(v21) = *(v3 + v13[14]);
    v22 = 10;
    sub_24A4AC1F0();
    v17 = *(v3 + v13[15]);
    LOBYTE(v21) = 11;
    sub_24A4AC1E0();
    v18 = *(v3 + v13[9]);
    LOBYTE(v21) = 4;
    sub_24A4AC1E0();
    v19 = v13[20];
    LOBYTE(v21) = 12;
    sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
    sub_24A40D62C();
    sub_24A4AC1F0();
    *&v21 = *(v3 + v13[17]);
    v22 = 14;
    sub_24A3C9CEC(&qword_27EF3FB38, &qword_24A4B7658);
    sub_24A40D6E0();
    sub_24A4AC1F0();
    *&v21 = *(v3 + v13[16]);
    v22 = 15;
    sub_24A4AC1F0();
    *&v21 = v3[5];
    v22 = 16;
    sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
    sub_24A38CA78();
    sub_24A4AC1F0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FMFFriend.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24A4AB8F0();
}

uint64_t FMFFriend.debugDescription.getter()
{
  v1 = v0;
  v113 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v2 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v112 = &v105 - v3;
  v110 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v4 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v109 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v105 - v7;
  v9 = type metadata accessor for FMFFriend();
  v108 = *(v9 + 80);
  sub_24A37B740(v1 + v108, v8, &qword_27EF3F480, &unk_24A4B8C20);
  v10 = type metadata accessor for FMFLocation();
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_24A37EF2C(v8, &qword_27EF3F480, &unk_24A4B8C20);
LABEL_9:
    v106 = 0;
    v107 = 0xE000000000000000;
    goto LABEL_10;
  }

  memcpy(v115, &v8[*(v10 + 44)], 0x161uLL);
  if (sub_24A3B9C24(v115) == 1)
  {
    sub_24A39A698(v8, type metadata accessor for FMFLocation);
    goto LABEL_9;
  }

  v12 = v115[40];
  v11 = v115[41];

  sub_24A39A698(v8, type metadata accessor for FMFLocation);
  if (!v11)
  {
    goto LABEL_9;
  }

  v13._countAndFlagsBits = sub_24A4AB880();
  FMFDefaultLabel.init(rawValue:)(v13);
  if (v116 != 5)
  {
    v12 = FMFDefaultLabel.localizedLabel.getter();
    v15 = v14;

    v11 = v15;
  }

  v106 = v12;
  v107 = v11;
LABEL_10:
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v111 = 0xD000000000000018;
  v115[0] = 0xD000000000000018;
  v115[1] = 0x800000024A4B02D0;
  MEMORY[0x24C217D50](*v1, v1[1]);
  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v16 = v115[0];
  v17 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v115, "personIdHash: ");
  HIBYTE(v115[1]) = -18;
  v18 = v1[3];
  v116 = v1[2];
  v117 = v18;

  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v19 = sub_24A4AB870();
  MEMORY[0x24C217D50](v19);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v20 = v115[0];
  v21 = v115[1];
  v115[0] = v16;
  v115[1] = v17;

  MEMORY[0x24C217D50](v20, v21);

  v22 = v115[0];
  v23 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v115[0] = 0xD00000000000001CLL;
  v115[1] = 0x800000024A4B02F0;
  LOBYTE(v116) = *(v1 + *(v9 + 44));
  v114 = sub_24A3C9CEC(&qword_27EF3F408, &qword_24A4B54A8);
  v24 = sub_24A4AB870();
  MEMORY[0x24C217D50](v24);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v25 = v9;
  v27 = v115[0];
  v26 = v115[1];
  v115[0] = v22;
  v115[1] = v23;

  MEMORY[0x24C217D50](v27, v26);

  v28 = v115[0];
  v29 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v115[0] = 0xD000000000000020;
  v115[1] = 0x800000024A4B0310;
  LOBYTE(v116) = *(v1 + v25[12]);
  v30 = sub_24A4AB870();
  MEMORY[0x24C217D50](v30);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v31 = v115[0];
  v32 = v115[1];
  v115[0] = v28;
  v115[1] = v29;

  MEMORY[0x24C217D50](v31, v32);

  v33 = v1;
  v34 = v115[0];
  v35 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v115[0] = 0xD00000000000001DLL;
  v115[1] = 0x800000024A4B0340;
  if (*(v33 + v25[18]))
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (*(v33 + v25[18]))
  {
    v37 = 0xE400000000000000;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v36, v37);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v38 = v115[0];
  v39 = v115[1];
  v115[0] = v34;
  v115[1] = v35;

  MEMORY[0x24C217D50](v38, v39);

  v40 = v115[0];
  v41 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v105 = 0xD000000000000012;
  v115[0] = 0xD000000000000012;
  v115[1] = 0x800000024A4B0360;
  v42 = v25;
  if (*(v33 + v25[13]))
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (*(v33 + v25[13]))
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v43, v44);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v45 = v115[0];
  v46 = v115[1];
  v115[0] = v40;
  v115[1] = v41;

  MEMORY[0x24C217D50](v45, v46);

  v47 = v115[0];
  v48 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v115[0] = 0xD000000000000019;
  v115[1] = 0x800000024A4B0380;
  v49 = v33;
  LOBYTE(v116) = *(v33 + v42[14]);
  v50 = sub_24A4AB870();
  MEMORY[0x24C217D50](v50);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v51 = v115[0];
  v52 = v115[1];
  v115[0] = v47;
  v115[1] = v48;

  MEMORY[0x24C217D50](v51, v52);

  v53 = v115[0];
  v54 = v115[1];
  strcpy(v115, "label: '");
  BYTE1(v115[1]) = 0;
  WORD1(v115[1]) = 0;
  HIDWORD(v115[1]) = -402653184;
  MEMORY[0x24C217D50](v106, v107);

  MEMORY[0x24C217D50](8231, 0xE200000000000000);
  v55 = v115[0];
  v56 = v115[1];
  v115[0] = v53;
  v115[1] = v54;

  MEMORY[0x24C217D50](v55, v56);

  v57 = v115[0];
  v58 = v115[1];
  strcpy(v115, "location: ");
  BYTE3(v115[1]) = 0;
  HIDWORD(v115[1]) = -369098752;
  sub_24A37B740(v33 + v108, v109, &qword_27EF3F480, &unk_24A4B8C20);
  v59 = sub_24A4AB870();
  MEMORY[0x24C217D50](v59);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v60 = v115[0];
  v61 = v115[1];
  v115[0] = v57;
  v115[1] = v58;

  MEMORY[0x24C217D50](v60, v61);

  v62 = v115[0];
  v63 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v115[0] = 0xD000000000000010;
  v115[1] = 0x800000024A4B03A0;
  v64 = v49[4];
  v65 = sub_24A4ABBF0();
  MEMORY[0x24C217D50](v65);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v66 = v115[0];
  v67 = v115[1];
  v115[0] = v62;
  v115[1] = v63;

  MEMORY[0x24C217D50](v66, v67);

  v68 = v115[0];
  v69 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v115[0] = 0x657469726F766166;
  v115[1] = 0xEF203A726564724FLL;
  v116 = *(v49 + v42[15]);
  v70 = sub_24A4AC240();
  MEMORY[0x24C217D50](v70);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v71 = v115[0];
  v72 = v115[1];
  v115[0] = v68;
  v115[1] = v69;

  MEMORY[0x24C217D50](v71, v72);

  v73 = v115[0];
  v74 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v115, "shareExpires: ");
  HIBYTE(v115[1]) = -18;
  sub_24A37B740(v49 + v42[8], v112, &qword_27EF3F460, &unk_24A4B53B0);
  v75 = sub_24A4AB870();
  MEMORY[0x24C217D50](v75);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v76 = v115[0];
  v77 = v115[1];
  v115[0] = v73;
  v115[1] = v74;

  MEMORY[0x24C217D50](v76, v77);

  v78 = v115[0];
  v79 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](v105, 0x800000024A4B03C0);
  v116 = *(v49 + v42[9]);
  sub_24A4AC030();
  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v80 = v115[0];
  v81 = v115[1];
  v115[0] = v78;
  v115[1] = v79;

  MEMORY[0x24C217D50](v80, v81);

  v82 = v115[0];
  v83 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v115[0] = 0xD000000000000011;
  v115[1] = 0x800000024A4B03E0;
  v84 = v49;
  LOBYTE(v116) = *(v49 + v42[10]);
  v85 = sub_24A4AB870();
  MEMORY[0x24C217D50](v85);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v86 = v115[0];
  v87 = v115[1];
  v115[0] = v82;
  v115[1] = v83;

  MEMORY[0x24C217D50](v86, v87);

  v88 = v115[0];
  v89 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v115[0] = v111;
  v115[1] = 0x800000024A4B0400;
  v90 = v84;
  v116 = *(v84 + v42[16]);

  sub_24A3C9CEC(&qword_27EF3FB38, &qword_24A4B7658);
  v91 = sub_24A4AB870();
  MEMORY[0x24C217D50](v91);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v92 = v115[0];
  v93 = v115[1];
  v115[0] = v88;
  v115[1] = v89;

  MEMORY[0x24C217D50](v92, v93);

  v95 = v115[0];
  v94 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v115[0] = 0xD000000000000014;
  v115[1] = 0x800000024A4B0420;
  v116 = *(v90 + v42[17]);

  v96 = sub_24A4AB870();
  MEMORY[0x24C217D50](v96);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v97 = v115[0];
  v98 = v115[1];
  v115[0] = v95;
  v115[1] = v94;

  MEMORY[0x24C217D50](v97, v98);

  v100 = v115[0];
  v99 = v115[1];
  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v115[0] = 0xD000000000000011;
  v115[1] = 0x800000024A4B0440;
  v116 = v90[5];

  sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  v101 = sub_24A4AB870();
  MEMORY[0x24C217D50](v101);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v102 = v115[0];
  v103 = v115[1];
  v115[0] = v100;
  v115[1] = v99;

  MEMORY[0x24C217D50](v102, v103);

  return v115[0];
}

uint64_t FMFFriend.hashValue.getter()
{
  sub_24A4AC360();
  v1 = *v0;
  v2 = v0[1];
  sub_24A4AB8F0();
  return sub_24A4AC3A0();
}

uint64_t sub_24A40B348()
{
  sub_24A4AC360();
  v1 = *v0;
  v2 = v0[1];
  sub_24A4AB8F0();
  return sub_24A4AC3A0();
}

uint64_t sub_24A40B38C()
{
  sub_24A4AC360();
  v1 = *v0;
  v2 = v0[1];
  sub_24A4AB8F0();
  return sub_24A4AC3A0();
}

void *sub_24A40B3F8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_24A3C9CEC(&qword_27EF3F520, &qword_24A4B5760);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

size_t sub_24A40B4A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24A3C9CEC(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A40B5B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
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
      result = sub_24A41EC2C(v8);
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
        sub_24A40BB90((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = MEMORY[0x277D84F90];
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
        result = sub_24A4AC270();
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
            result = sub_24A4AC270();
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
      result = sub_24A3EDCB4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_24A3EDCB4((v39 > 1), v40 + 1, 1, v8);
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
        sub_24A40BB90((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24A41EC2C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_24A41EBA0(v44);
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
    if (v37 || (result = sub_24A4AC270(), (result & 1) == 0))
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

uint64_t sub_24A40BB90(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_24A4AC270() & 1) != 0)
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
      if (!v21 && (sub_24A4AC270() & 1) != 0)
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

void *sub_24A40BDB8(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_24A40BF10(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v9))));
      v19 = *v17;
      v18 = *(v17 + 8);
      v9 &= v9 - 1;
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 25);
      LOBYTE(v17) = *(v17 + 26);
      *v11 = v19;
      *(v11 + 8) = v18;
      *(v11 + 16) = v20;
      *(v11 + 24) = v21;
      *(v11 + 25) = v22;
      *(v11 + 26) = v17;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 32;

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
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_24A40C0A8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = *(a4 + 56) + ((v12 << 11) | (32 * __clz(__rbit64(v9))));
      v19 = *v17;
      v18 = *(v17 + 8);
      v9 &= v9 - 1;
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 25);
      LOBYTE(v17) = *(v17 + 26);
      *v11 = v19;
      *(v11 + 8) = v18;
      *(v11 + 16) = v20;
      *(v11 + 24) = v21;
      *(v11 + 25) = v22;
      *(v11 + 26) = v17;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 32;

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
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_24A40C270(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 17);
      LOBYTE(v18) = *(v18 + 18);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 17) = v22;
      *(v11 + 18) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

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
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}