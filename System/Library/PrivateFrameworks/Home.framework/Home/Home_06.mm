uint64_t sub_20DA3EC84(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *(*v2 + 344);
  v7 = *v2;
  v4[57] = v1;

  v8 = (v6 + 8);
  v4[58] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = v4[45];
  v10 = v4[44];
  v11 = v4[42];
  if (v1)
  {
    v12 = *v8;
    v4[61] = *v8;
    v12(v10, v11);
    v12(v9, v11);
    v13 = v4[50];
    v14 = v4[51];
    v15 = sub_20DA3F040;
  }

  else
  {
    v4[59] = a1;
    v16 = *v8;
    v4[60] = *v8;
    v16(v10, v11);
    v16(v9, v11);
    v13 = v4[50];
    v14 = v4[51];
    v15 = sub_20DA3EE70;
  }

  return MEMORY[0x2822009F8](v15, v13, v14);
}

uint64_t sub_20DA3EE70()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[55];
  v6 = v0[48];
  v5 = v0[49];
  v7 = v0[42];
  v8 = v0[40];
  v9 = v0[14];

  sub_20D9D76EC(v8, &unk_27C843810, &qword_20DD93F00);
  v1(v6, v7);
  *v9 = v2;
  (*(*(v4 - 8) + 56))(v9, 0, 1, v4);
  v11 = v0[47];
  v10 = v0[48];
  v13 = v0[45];
  v12 = v0[46];
  v14 = v0[44];
  v16 = v0[40];
  v15 = v0[41];
  v18 = v0[38];
  v17 = v0[39];
  v19 = v0[37];
  v22 = v0[36];
  v23 = v0[33];
  v24 = v0[30];
  v25 = v0[27];
  v26 = v0[24];
  v27 = v0[23];
  v28 = v0[21];
  v29 = v0[20];
  v30 = v0[19];

  v20 = v0[1];

  return v20();
}

uint64_t sub_20DA3F040()
{
  v1 = v0[57];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[19];

  v5 = v2;
  sub_20DD64C54();
  v6 = v1;
  v7 = sub_20DD64C24();
  v8 = sub_20DD65364();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[57];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20D9BF000, v7, v8, "Error while prefetching events: %@", v10, 0xCu);
    sub_20D9D76EC(v11, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v11, -1, -1);
    MEMORY[0x20F327D10](v10, -1, -1);
  }

  v14 = v0[57];
  v44 = v0[58];
  v46 = v0[61];
  v15 = v7;
  v16 = v0[54];
  v17 = v0[55];
  v18 = v0[53];
  v19 = v0[48];
  v20 = v0[42];
  v21 = v0[40];
  v22 = v0[19];
  v23 = v0[17];
  v42 = v0[14];

  v18(v22, v23);
  sub_20D9D76EC(v21, &unk_27C843810, &qword_20DD93F00);
  v46(v19, v20);
  (*(*(v17 - 8) + 56))(v42, 1, 1, v17);
  v25 = v0[47];
  v24 = v0[48];
  v27 = v0[45];
  v26 = v0[46];
  v28 = v0[44];
  v30 = v0[40];
  v29 = v0[41];
  v32 = v0[38];
  v31 = v0[39];
  v33 = v0[37];
  v36 = v0[36];
  v37 = v0[33];
  v38 = v0[30];
  v39 = v0[27];
  v40 = v0[24];
  v41 = v0[23];
  v43 = v0[21];
  v45 = v0[20];
  v47 = v0[19];

  v34 = v0[1];

  return v34();
}

uint64_t sub_20DA3F330(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_20DD65114();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_20DD650F4();

  v9 = sub_20DD650E4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = a1;
  *(v10 + 40) = v2;
  sub_20DA1C514(0, 0, v7, &unk_20DD953D0, v10);
}

uint64_t sub_20DA3F45C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 80) = a4;
  v6 = sub_20DD64C44();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  *(v5 + 48) = swift_task_alloc();
  sub_20DD650F4();
  *(v5 + 56) = sub_20DD650E4();
  v10 = sub_20DD65094();
  *(v5 + 64) = v10;
  *(v5 + 72) = v9;

  return MEMORY[0x2822009F8](sub_20DA3F560, v10, v9);
}

uint64_t sub_20DA3F560()
{
  if (*(v0 + 80) == 1)
  {
    if (qword_27C842480 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 48);
    v2 = qword_27C84C658;
    sub_20DD64C54();
    v3 = sub_20DD64C24();
    v4 = sub_20DD65384();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20D9BF000, v3, v4, "Beginning auto-fetch timer", v5, 2u);
      MEMORY[0x20F327D10](v5, -1, -1);
    }

    v6 = *(v0 + 48);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    v9 = *(v0 + 16);

    (*(v8 + 8))(v6, v7);
    v10 = sub_20DA3F790;
  }

  else
  {
    if (qword_27C842480 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 40);
    v12 = qword_27C84C658;
    sub_20DD64C54();
    v13 = sub_20DD64C24();
    v14 = sub_20DD65384();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20D9BF000, v13, v14, "Stopping auto-fetch timer", v15, 2u);
      MEMORY[0x20F327D10](v15, -1, -1);
    }

    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    v9 = *(v0 + 16);
    v18 = *(v0 + 24);

    (*(v17 + 8))(v16, v18);
    v10 = sub_20DA3F86C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_20DA3F790()
{
  v1 = v0[2];
  sub_20DA3F908(0);
  v2 = v0[8];
  v3 = v0[9];

  return MEMORY[0x2822009F8](sub_20DA3F7F8, v2, v3);
}

uint64_t sub_20DA3F7F8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DA3F86C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer;
  v3 = *(v1 + OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v1 + v2);
    *(v1 + v2) = 0;
  }

  v5 = v0[8];
  v6 = v0[9];

  return MEMORY[0x2822009F8](sub_20DA4852C, v5, v6);
}

void sub_20DA3F908(char a1)
{
  v3 = sub_20DD64C44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer;
  v9 = *(v1 + OBJC_IVAR___HFActivityLogCoordinator_Swift_updateTimer);
  if (v9)
  {
    [v9 invalidate];
  }

  else if (a1)
  {
    return;
  }

  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_20DA4763C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA446BC;
  aBlock[3] = &block_descriptor_5;
  v11 = _Block_copy(aBlock);
  v12 = objc_opt_self();

  v13 = [v12 timerWithTimeInterval:0 repeats:v11 block:5.0];
  _Block_release(v11);

  v14 = *(v1 + v8);
  *(v1 + v8) = v13;
  v15 = v13;

  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v16 = qword_27C84C658;
  sub_20DD64C54();
  v17 = sub_20DD64C24();
  v18 = sub_20DD65354();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20D9BF000, v17, v18, "Scheduling update timer", v19, 2u);
    MEMORY[0x20F327D10](v19, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v20 = [objc_opt_self() mainRunLoop];
  [v20 addTimer:v15 forMode:*MEMORY[0x277CBE640]];
}

void ActivityLogCoordinator.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void ActivityLogCoordinator.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_20DA3FCAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityLogCoordinator();
  result = sub_20DD64C84();
  *a1 = result;
  return result;
}

void sub_20DA3FCEC()
{
  v0 = @"activityHistoryDebug";
  v1 = HFPreferencesBoolForKey(v0);

  byte_27C84C628 = v1;
}

uint64_t sub_20DA3FD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[2] = a1;
  v8[3] = sub_20DD650F4();
  v8[4] = sub_20DD650E4();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0) + 48);
  v15 = swift_task_alloc();
  v8[5] = v15;
  *v15 = v8;
  v15[1] = sub_20DA3FE3C;

  return sub_20DA40090(a1 + v14, a5, a6, a7, a8);
}

uint64_t sub_20DA3FE3C(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *v2;
  v5[6] = v1;

  v8 = v5[4];
  v9 = v5[3];
  if (v3)
  {
    v10 = sub_20DD65094();
    v12 = v11;
    v13 = sub_20DA4002C;
  }

  else
  {
    v5[7] = a1;
    v10 = sub_20DD65094();
    v12 = v14;
    v13 = sub_20DA3FFBC;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_20DA3FFBC()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];

  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_20DA4002C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_20DA40090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 104) = a4;
  *(v6 + 112) = v5;
  *(v6 + 419) = a5;
  *(v6 + 88) = a2;
  *(v6 + 96) = a3;
  *(v6 + 80) = a1;
  v7 = sub_20DD636C4();
  *(v6 + 120) = v7;
  v8 = *(v7 - 8);
  *(v6 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  v10 = sub_20DD637F4();
  *(v6 + 144) = v10;
  v11 = *(v10 - 8);
  *(v6 + 152) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v13 = sub_20DD64C44();
  *(v6 + 168) = v13;
  v14 = *(v13 - 8);
  *(v6 + 176) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00) - 8) + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  v17 = sub_20DD64614();
  *(v6 + 232) = v17;
  v18 = *(v17 - 8);
  *(v6 + 240) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  v20 = sub_20DD64624();
  *(v6 + 256) = v20;
  v21 = *(v20 - 8);
  *(v6 + 264) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 272) = swift_task_alloc();
  v23 = sub_20DD63744();
  *(v6 + 280) = v23;
  v24 = *(v23 - 8);
  *(v6 + 288) = v24;
  v25 = *(v24 + 64) + 15;
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844588, &qword_20DD95370);
  *(v6 + 312) = v26;
  v27 = *(v26 - 8);
  *(v6 + 320) = v27;
  v28 = *(v27 + 64) + 15;
  *(v6 + 328) = swift_task_alloc();
  sub_20DD650F4();
  *(v6 + 336) = sub_20DD650E4();
  v30 = sub_20DD65094();
  *(v6 + 344) = v30;
  *(v6 + 352) = v29;

  return MEMORY[0x2822009F8](sub_20DA40438, v30, v29);
}

void sub_20DA40438()
{
  if ((*(v0 + 419) & 1) == 0)
  {
    v1 = *(v0 + 112);
    v2 = *(v1 + OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount);
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      __break(1u);
      return;
    }

    *(v1 + OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount) = v4;
    if (v4 == 1)
    {
      v5 = *(v0 + 112);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 418) = 1;

      sub_20DD64CE4();
    }
  }

  v31 = *(v0 + 328);
  v6 = *(v0 + 304);
  v7 = *(v0 + 288);
  v37 = *(v0 + 280);
  v8 = *(v0 + 264);
  v9 = *(v0 + 272);
  v10 = *(v0 + 256);
  v32 = *(v0 + 240);
  v33 = *(v0 + 232);
  v11 = *(v0 + 128);
  v34 = v11;
  v35 = *(v0 + 224);
  v36 = *(v0 + 120);
  v12 = *(v0 + 112);
  v27 = *(v0 + 104);
  v28 = *(v0 + 248);
  v25 = *(v0 + 88);
  v26 = *(v0 + 96);
  v13 = *(v12 + 112);
  *(v0 + 360) = v13;
  v14 = [v13 uniqueIdentifier];
  sub_20DD63714();

  v15 = [v13 hf_currentUserIsOwner];
  v16 = MEMORY[0x277D175C0];
  if (!v15)
  {
    v16 = MEMORY[0x277D175C8];
  }

  v30 = v9;
  (*(v8 + 104))(v9, *v16, v10);
  sub_20DD64704();
  sub_20DA39BD4(*(v12 + 120));
  sub_20DD646D4();

  v17 = *(v12 + OBJC_IVAR___HFActivityLogCoordinator_Swift_queryController);
  *(v0 + 48) = sub_20DD646E4();
  *(v0 + 56) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844590, &unk_20DD95380);
  type metadata accessor for HFEvent();
  sub_20D9EF5F8(&qword_27C844598, &qword_27C844590, &unk_20DD95380);
  sub_20DD65804();
  (*(v32 + 8))(v29, v33);
  (*(v8 + 8))(v30, v10);
  v19 = *(v7 + 8);
  *(v0 + 368) = v19;
  *(v0 + 376) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v6, v37);
  (*(v34 + 56))(v35, 1, 1, v36);
  if (qword_27C842470 != -1)
  {
    swift_once();
  }

  v20 = byte_27C84C628;
  *(v0 + 420) = byte_27C84C628;
  v21 = swift_task_alloc();
  *(v0 + 384) = v21;
  *v21 = v0;
  v21[1] = sub_20DA407D0;
  v22 = *(v0 + 328);
  v23 = *(v0 + 216);
  v24 = *(v0 + 112);

  sub_20DA414D8(v23, v22, v20);
}

uint64_t sub_20DA407D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 384);
  v7 = *v3;
  v5[49] = a1;
  v5[50] = a2;
  v5[51] = v2;

  v8 = v4[44];
  v9 = v4[43];
  if (v2)
  {
    v10 = sub_20DA4104C;
  }

  else
  {
    v10 = sub_20DA40918;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_20DA40918()
{
  v94 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 112);
  sub_20D9D76EC(v2, &unk_27C843810, &qword_20DD93F00);
  sub_20DA47868(v1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 72) = 0;

  sub_20DD64CE4();
  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 200);
  v5 = qword_27C84C658;
  sub_20DD64C54();
  v6 = sub_20DD64C24();
  v7 = sub_20DD65384();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 400);
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = v8;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v9;
    _os_log_impl(&dword_20D9BF000, v6, v7, "Fetched %ld event(s) out of %ld limit", v10, 0x16u);
    MEMORY[0x20F327D10](v10, -1, -1);
  }

  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  v14 = *(v0 + 168);
  v13 = *(v0 + 176);

  v15 = *(v13 + 8);
  v15(v11, v14);
  sub_20DD64C54();
  v16 = sub_20DD64C24();
  v17 = sub_20DD65384();
  if (os_log_type_enabled(v16, v17))
  {
    v89 = v15;
    v18 = *(v0 + 392);
    v19 = *(v0 + 420);
    v20 = *(v0 + 192);
    v21 = *(v0 + 168);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v93[0] = v23;
    *v22 = 134218242;
    *(v22 + 4) = *(v18 + 16);
    *(v22 + 12) = 2080;
    if (v19)
    {
      v24 = 0x2947554245442820;
    }

    else
    {
      v24 = 0;
    }

    if (v19)
    {
      v25 = 0xE900000000000020;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v26 = sub_20D9E0B38(v24, v25, v93);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_20D9BF000, v16, v17, "%ld event(s) after processing%s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x20F327D10](v23, -1, -1);
    MEMORY[0x20F327D10](v22, -1, -1);

    v89(v20, v21);
  }

  else
  {
    v27 = *(v0 + 192);
    v28 = *(v0 + 168);

    v15(v27, v28);
  }

  v29 = *(v0 + 392);
  if (*(v29 + 16))
  {
    v30 = *(v0 + 408);
    v31 = *(v0 + 160);
    v32 = *(v0 + 112);
    sub_20DD637D4();
    v33 = swift_task_alloc();
    *(v33 + 16) = v31;

    v35 = sub_20DA42D78(v34, sub_20DA478D8, v33);

    swift_getKeyPath();
    swift_getKeyPath();
    v36 = sub_20DD64CC4();
    v38 = v37;
    v39 = *v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93[0] = *v38;
    *v38 = 0x8000000000000000;
    sub_20DA48074(v35, sub_20DA45CBC, 0, isUniquelyReferenced_nonNull_native, v93);
    if (v30)
    {

      v41 = *v38;
      *v38 = v93[0];
    }

    v43 = *(v0 + 152);
    v90 = *(v0 + 160);
    v44 = *(v0 + 144);

    v45 = *v38;
    *v38 = v93[0];

    v36(v0 + 16, 0);

    (*(v43 + 8))(v90, v44);
  }

  if (*(v0 + 400) == *(v0 + 104))
  {
    v46 = *(v0 + 208);
    v48 = *(v0 + 120);
    v47 = *(v0 + 128);
    sub_20DA4688C(*(v0 + 224), v46);
    result = (*(v47 + 48))(v46, 1, v48);
    if (result == 1)
    {
      goto LABEL_32;
    }

    v50 = *(v0 + 328);
    v49 = *(v0 + 336);
    v52 = *(v0 + 312);
    v51 = *(v0 + 320);
    v53 = *(v0 + 224);
    v54 = *(v0 + 208);
    v56 = *(v0 + 128);
    v55 = *(v0 + 136);
    v57 = *(v0 + 120);

    sub_20D9D76EC(v53, &unk_27C843810, &qword_20DD93F00);
    (*(v51 + 8))(v50, v52);
    v58 = *(v56 + 32);
    v58(v55, v54, v57);
  }

  else
  {
    v60 = *(v0 + 328);
    v59 = *(v0 + 336);
    v61 = *(v0 + 312);
    v62 = *(v0 + 320);
    v63 = *(v0 + 224);
    v64 = *(v0 + 128);
    v65 = *(v0 + 136);
    v66 = *(v0 + 120);
    v67 = *(v0 + 88);

    sub_20D9D76EC(v63, &unk_27C843810, &qword_20DD93F00);
    (*(v62 + 8))(v60, v61);
    (*(v64 + 16))(v65, v67, v66);
    v58 = *(v64 + 32);
  }

  v68 = *(v0 + 392);
  v69 = *(v0 + 419);
  v70 = *(v29 + 16);
  v58(*(v0 + 80), *(v0 + 136), *(v0 + 120));

  if ((v69 & 1) == 0)
  {
    v71 = *(v0 + 112);
    v72 = *(v71 + OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount);
    v73 = __OFSUB__(v72, 1);
    v74 = v72 - 1;
    if (!v73)
    {
      *(v71 + OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount) = v74;
      if (!v74)
      {
        v75 = *(v0 + 112);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 417) = 0;

        sub_20DD64CE4();
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

LABEL_28:
  v76 = *(v0 + 328);
  v78 = *(v0 + 296);
  v77 = *(v0 + 304);
  v79 = *(v0 + 272);
  v80 = *(v0 + 248);
  v92 = v70;
  v82 = *(v0 + 216);
  v81 = *(v0 + 224);
  v84 = *(v0 + 200);
  v83 = *(v0 + 208);
  v85 = *(v0 + 192);
  v87 = *(v0 + 184);
  v88 = *(v0 + 160);
  v91 = *(v0 + 136);

  v86 = *(v0 + 8);

  return v86(v92);
}

uint64_t sub_20DA4104C()
{
  v61 = v0;
  v1 = *(v0 + 336);

  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 408);
  v3 = *(v0 + 184);
  v4 = *(v0 + 112);
  v5 = qword_27C84C658;
  sub_20DD64C54();

  v6 = v2;
  v7 = sub_20DD64C24();
  v8 = sub_20DD65364();

  if (os_log_type_enabled(v7, v8))
  {
    v52 = *(v0 + 376);
    v53 = *(v0 + 408);
    v51 = *(v0 + 368);
    v9 = *(v0 + 360);
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);
    v54 = *(v0 + 176);
    v56 = *(v0 + 168);
    v58 = *(v0 + 184);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v60 = v14;
    *v12 = 136315394;
    v15 = [v9 uniqueIdentifier];
    sub_20DD63714();

    sub_20DA483E4(&qword_27C8436C0, MEMORY[0x277CC95F0]);
    v16 = sub_20DD65934();
    v18 = v17;
    v51(v10, v11);
    v19 = sub_20D9E0B38(v16, v18, &v60);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2112;
    v20 = v53;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v21;
    *v13 = v21;
    _os_log_impl(&dword_20D9BF000, v7, v8, "Error with home query for %s %@", v12, 0x16u);
    sub_20D9D76EC(v13, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x20F327D10](v14, -1, -1);
    MEMORY[0x20F327D10](v12, -1, -1);

    (*(v54 + 8))(v58, v56);
  }

  else
  {
    v23 = *(v0 + 176);
    v22 = *(v0 + 184);
    v24 = *(v0 + 168);

    (*(v23 + 8))(v22, v24);
  }

  v25 = *(v0 + 408);
  v27 = *(v0 + 320);
  v26 = *(v0 + 328);
  v28 = *(v0 + 312);
  v29 = *(v0 + 224);
  v30 = *(v0 + 112);
  v31 = *(v0 + 419);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v25;

  v32 = v25;
  sub_20DD64CE4();
  swift_willThrow();
  sub_20D9D76EC(v29, &unk_27C843810, &qword_20DD93F00);
  result = (*(v27 + 8))(v26, v28);
  if ((v31 & 1) == 0)
  {
    v34 = *(v0 + 112);
    v35 = *(v34 + OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount);
    v36 = __OFSUB__(v35, 1);
    v37 = v35 - 1;
    if (v36)
    {
      __break(1u);
      return result;
    }

    *(v34 + OBJC_IVAR___HFActivityLogCoordinator_Swift_fetchCount) = v37;
    if (!v37)
    {
      v38 = *(v0 + 112);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 416) = 0;

      sub_20DD64CE4();
    }
  }

  v39 = *(v0 + 328);
  v40 = *(v0 + 296);
  v41 = *(v0 + 304);
  v42 = *(v0 + 272);
  v43 = *(v0 + 248);
  v45 = *(v0 + 216);
  v44 = *(v0 + 224);
  v47 = *(v0 + 200);
  v46 = *(v0 + 208);
  v48 = *(v0 + 192);
  v55 = *(v0 + 184);
  v57 = *(v0 + 160);
  v59 = *(v0 + 136);

  v49 = *(v0 + 8);
  v50 = *(v0 + 408);

  return v49();
}

uint64_t sub_20DA414D8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 540) = a3;
  *(v3 + 168) = a1;
  *(v3 + 176) = a2;
  v4 = sub_20DD649D4();
  *(v3 + 184) = v4;
  v5 = *(v4 - 8);
  *(v3 + 192) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  v7 = sub_20DD64784();
  *(v3 + 216) = v7;
  v8 = *(v7 - 8);
  *(v3 + 224) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260) - 8) + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  v11 = sub_20DD63744();
  *(v3 + 256) = v11;
  v12 = *(v11 - 8);
  *(v3 + 264) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  v14 = sub_20DD636C4();
  *(v3 + 288) = v14;
  v15 = *(v14 - 8);
  *(v3 + 296) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v17 = type metadata accessor for HFEvent();
  *(v3 + 312) = v17;
  v18 = *(v17 - 8);
  *(v3 + 320) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844198, &qword_20DD949D0) - 8) + 64) + 15;
  *(v3 + 352) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844588, &qword_20DD95370);
  *(v3 + 360) = v21;
  v22 = *(v21 - 8);
  *(v3 + 368) = v22;
  v23 = *(v22 + 64) + 15;
  *(v3 + 376) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844580, &qword_20DD95368);
  *(v3 + 384) = v24;
  v25 = *(v24 - 8);
  *(v3 + 392) = v25;
  v26 = *(v25 + 64) + 15;
  *(v3 + 400) = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00) - 8) + 64) + 15;
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = sub_20DD650F4();
  *(v3 + 448) = sub_20DD650E4();
  v29 = sub_20DD65094();
  *(v3 + 456) = v29;
  *(v3 + 464) = v28;

  return MEMORY[0x2822009F8](sub_20DA4191C, v29, v28);
}

uint64_t sub_20DA4191C()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 400);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v5 = *(v0 + 360);
  v6 = *(v0 + 288);
  v7 = *(v0 + 296);
  v8 = *(v0 + 176);
  v9 = *(v7 + 56);
  *(v0 + 472) = v9;
  *(v0 + 480) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1, 1, 1, v6);
  (*(v4 + 16))(v3, v8, v5);
  sub_20D9EF5F8(&qword_27C844610, &qword_27C844588, &qword_20DD95370);
  sub_20DD651A4();
  *(v0 + 536) = *MEMORY[0x277D17970];
  v10 = MEMORY[0x277D84F98];
  *(v0 + 488) = MEMORY[0x277D84F98];
  *(v0 + 496) = v10;
  v11 = MEMORY[0x277D84F90];
  *(v0 + 504) = 0;
  *(v0 + 512) = v11;
  v12 = *(v0 + 440);
  v13 = sub_20DD650E4();
  *(v0 + 520) = v13;
  v14 = sub_20D9EF5F8(&qword_27C844618, &qword_27C844580, &qword_20DD95368);
  v15 = *(MEMORY[0x277D856D8] + 4);
  v16 = swift_task_alloc();
  *(v0 + 528) = v16;
  *v16 = v0;
  v16[1] = sub_20DA41AE8;
  v17 = *(v0 + 400);
  v18 = *(v0 + 384);
  v19 = *(v0 + 352);
  v20 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v19, v13, v20, v0 + 136, v18, v14);
}

uint64_t sub_20DA41AE8()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v9 = *v1;

  v4 = v2[65];

  v5 = v2[57];
  v6 = v2[58];
  if (v0)
  {
    v7 = sub_20DA42738;
  }

  else
  {
    v7 = sub_20DA41C08;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20DA41C08()
{
  v2 = *(v1 + 352);
  if ((*(*(v1 + 320) + 48))(v2, 1, *(v1 + 312)) == 1)
  {
    v3 = *(v1 + 496);
    v4 = *(v1 + 448);
    v6 = *(v1 + 424);
    v5 = *(v1 + 432);
    v7 = *(v1 + 408);
    v8 = *(v1 + 416);
    v128 = *(v1 + 376);
    v129 = *(v1 + 344);
    v130 = *(v1 + 336);
    v131 = *(v1 + 328);
    v132 = *(v1 + 304);
    v134 = *(v1 + 280);
    v136 = *(v1 + 272);
    v137 = *(v1 + 248);
    v139 = *(v1 + 240);
    v9 = *(v1 + 232);
    v141 = *(v1 + 208);
    v144 = *(v1 + 200);
    v10 = *(v1 + 168);
    (*(*(v1 + 392) + 8))(*(v1 + 400), *(v1 + 384));

    sub_20DA47868(v5, v10);

    v11 = *(v1 + 8);
    v13 = *(v1 + 504);
    v12 = *(v1 + 512);

    return v11(v12, v13);
  }

  v15 = *(v1 + 504);
  sub_20DA1A8FC(v2, *(v1 + 344));
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_56;
  }

  v143 = v15 + 1;
  v16 = *(v1 + 424);
  v17 = *(v1 + 288);
  v18 = *(v1 + 296);
  sub_20DA4688C(*(v1 + 432), v16);
  v19 = *(v18 + 48);
  LODWORD(v17) = v19(v16, 1, v17);
  sub_20D9D76EC(v16, &unk_27C843810, &qword_20DD93F00);
  if (v17 == 1)
  {
    goto LABEL_9;
  }

  v20 = *(v1 + 432);
  v21 = *(v1 + 416);
  v22 = *(v1 + 344);
  v23 = *(v1 + 304);
  v24 = *(v1 + 288);
  sub_20DD649A4();
  v25 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_0((v1 + 96), *(v1 + 120));
  sub_20DD64694();
  __swift_destroy_boxed_opaque_existential_0((v1 + 96));
  sub_20DA4688C(v20, v21);
  v26 = v19(v21, 1, v24);
  if (v26 == 1)
  {
    __break(1u);
    return MEMORY[0x282200310](v26, v27, v28, v29, v30, v31);
  }

  v32 = *(v1 + 416);
  v34 = *(v1 + 296);
  v33 = *(v1 + 304);
  v35 = *(v1 + 288);
  v36 = sub_20DD63644();
  v37 = *(v34 + 8);
  v37(v33, v35);
  v37(v32, v35);
  if (v36)
  {
LABEL_9:
    v39 = *(v1 + 472);
    v38 = *(v1 + 480);
    v40 = *(v1 + 432);
    v41 = *(v1 + 408);
    v42 = *(v1 + 344);
    v43 = *(v1 + 288);
    sub_20DD649A4();
    v44 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
    sub_20DD64694();
    sub_20D9D76EC(v40, &unk_27C843810, &qword_20DD93F00);
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
    v39(v41, 0, 1, v43);
    sub_20DA47868(v41, v40);
  }

  if (*(v1 + 540))
  {
LABEL_23:
    v77 = *(v1 + 512);
    sub_20DA1A828(*(v1 + 344), *(v1 + 336));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0 = *(v1 + 512);
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_24:
      v80 = *(v0 + 16);
      v79 = *(v0 + 24);
      if (v80 >= v79 >> 1)
      {
        v0 = sub_20D9E0628(v79 > 1, v80 + 1, 1, v0);
      }

      v81 = *(v1 + 336);
      v82 = *(v1 + 320);
      sub_20DA1A960(*(v1 + 344));
      *(v0 + 16) = v80 + 1;
      sub_20DA1A8FC(v81, v0 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v80);
LABEL_27:
      *(v1 + 504) = v143;
      *(v1 + 512) = v0;
      v83 = *(v1 + 440);
      v84 = sub_20DD650E4();
      *(v1 + 520) = v84;
      v85 = sub_20D9EF5F8(&qword_27C844618, &qword_27C844580, &qword_20DD95368);
      v86 = *(MEMORY[0x277D856D8] + 4);
      v87 = swift_task_alloc();
      *(v1 + 528) = v87;
      *v87 = v1;
      v87[1] = sub_20DA41AE8;
      v88 = *(v1 + 400);
      v30 = *(v1 + 384);
      v26 = *(v1 + 352);
      v28 = MEMORY[0x277D85700];
      v29 = v1 + 136;
      v27 = v84;
      v31 = v85;

      return MEMORY[0x282200310](v26, v27, v28, v29, v30, v31);
    }

LABEL_56:
    v0 = sub_20D9E0628(0, *(v0 + 16) + 1, 1, v0);
    goto LABEL_24;
  }

  v45 = *(v1 + 536);
  v46 = *(v1 + 208);
  v47 = *(v1 + 184);
  v48 = *(v1 + 192);
  v49 = *(v48 + 16);
  (v49)(v46, *(v1 + 344), v47);
  v50 = *(v48 + 88);
  v51 = v50(v46, v47);
  v52 = *(v1 + 256);
  v53 = *(v1 + 264);
  v54 = *(v1 + 248);
  if (v51 != v45)
  {
    (*(*(v1 + 192) + 8))(*(v1 + 208), *(v1 + 184));
    (*(v53 + 56))(v54, 1, 1, v52);
    goto LABEL_22;
  }

  v140 = v50;
  v142 = v49;
  v55 = *(v1 + 240);
  v56 = *(v1 + 216);
  v57 = *(v1 + 224);
  v58 = *(v1 + 208);
  v138 = *(*(v1 + 192) + 96);
  v138(v58, *(v1 + 184));
  v135 = *(v57 + 32);
  v135(v55, v58, v56);
  sub_20DD64774();
  v133 = *(v57 + 8);
  v133(v55, v56);
  v59 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  sub_20DD647E4();
  (*(v53 + 56))(v54, 0, 1, v52);
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  if ((*(v53 + 48))(v54, 1, v52) == 1)
  {
LABEL_22:
    sub_20D9D76EC(*(v1 + 248), &unk_27C843A70, &qword_20DD94260);
    goto LABEL_23;
  }

  v60 = *(v1 + 536);
  v61 = *(v1 + 344);
  v62 = *(v1 + 200);
  v63 = *(v1 + 184);
  (*(*(v1 + 264) + 32))(*(v1 + 280), *(v1 + 248), *(v1 + 256));
  v142(v62, v61, v63);
  if (v140(v62, v63) == v60)
  {
    v64 = *(v1 + 232);
    v65 = *(v1 + 216);
    v66 = *(v1 + 200);
    v138(v66, *(v1 + 184));
    v135(v64, v66, v65);
    LOBYTE(v66) = sub_20DA35C54(v64);
    v133(v64, v65);
    if (v66)
    {
      if (!*(*(v1 + 496) + 16) || (v67 = sub_20D9CB38C(*(v1 + 280)), (v68 & 1) == 0))
      {
        v120 = *(v1 + 344);
        (*(*(v1 + 264) + 8))(*(v1 + 280), *(v1 + 256));
        sub_20DA1A960(v120);
        v0 = *(v1 + 512);
        v75 = *(v1 + 488);
        v76 = *(v1 + 496);
        goto LABEL_54;
      }

      v69 = *(*(*(v1 + 496) + 56) + 8 * v67);
      v70 = sub_20D9CB38C(*(v1 + 280));
      if ((v71 & 1) == 0)
      {
        v75 = *(v1 + 488);
        v76 = *(v1 + 496);
        goto LABEL_50;
      }

      v0 = v70;
      v72 = *(v1 + 488);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 160) = v72;
      if (!v73)
      {
        goto LABEL_63;
      }

      v74 = (v1 + 488);
      while (1)
      {
        v75 = *v74;
        (*(*(v1 + 264) + 8))(*(*v74 + 48) + *(*(v1 + 264) + 72) * v0, *(v1 + 256));
        sub_20DA288EC(v0, v75);
        v76 = v75;
LABEL_50:
        v121 = *(v1 + 512);
        v122 = swift_isUniquelyReferenced_nonNull_native();
        v0 = *(v1 + 512);
        if (v122)
        {
          if ((v69 & 0x8000000000000000) != 0)
          {
            goto LABEL_61;
          }
        }

        else
        {
LABEL_60:
          v0 = sub_20DA45D70(v0);
          if ((v69 & 0x8000000000000000) != 0)
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }
        }

        if (v69 < *(v0 + 16))
        {
          v123 = *(v1 + 344);
          v124 = *(v1 + 280);
          v125 = *(v1 + 256);
          v126 = *(v1 + 264);
          v127 = v0 + ((*(*(v1 + 320) + 80) + 32) & ~*(*(v1 + 320) + 80)) + *(*(v1 + 320) + 72) * v69;
          sub_20DA30998(v123);
          (*(v126 + 8))(v124, v125);
          sub_20DA1A960(v123);
          goto LABEL_54;
        }

LABEL_62:
        __break(1u);
LABEL_63:
        v74 = (v1 + 160);
        sub_20D9D3280();
      }
    }
  }

  else
  {
    (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
  }

  v89 = *(v1 + 512);
  v90 = *(v1 + 488);
  v0 = *(v1 + 272);
  v91 = *(v1 + 264);
  v93 = *(v91 + 16);
  v92 = (v91 + 16);
  v69 = v93;
  v93(v0, *(v1 + 280), *(v1 + 256));
  v76 = *(v89 + 2);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 152) = v90;
  v94 = sub_20D9CB38C(v0);
  v96 = *(v90 + 16);
  v97 = (v95 & 1) == 0;
  v98 = __OFADD__(v96, v97);
  v99 = v96 + v97;
  if (v98)
  {
    __break(1u);
    goto LABEL_58;
  }

  v100 = v95;
  if (*(*(v1 + 488) + 24) >= v99)
  {
    v142 = v89;
    if ((v75 & 1) == 0)
    {
      v105 = v94;
      sub_20D9D3280();
      v94 = v105;
    }

LABEL_40:
    v75 = *(v1 + 152);
    v107 = *(v1 + 264);
    v106 = *(v1 + 272);
    v108 = *(v1 + 256);
    v109 = (v107 + 8);
    if (v100)
    {
      *(*(v75 + 56) + 8 * v94) = v76;
      v92 = *v109;
      (*v109)(v106, v108);
    }

    else
    {
      *(v75 + 8 * (v94 >> 6) + 64) |= 1 << v94;
      v0 = v94;
      (v69)(*(v75 + 48) + *(v107 + 72) * v94, v106, v108);
      *(*(v75 + 56) + 8 * v0) = v76;
      v92 = *(v107 + 8);
      v92(v106, v108);
      v110 = *(v75 + 16);
      v98 = __OFADD__(v110, 1);
      v111 = v110 + 1;
      if (v98)
      {
        __break(1u);
        goto LABEL_60;
      }

      *(v75 + 16) = v111;
    }

    v112 = *(v1 + 512);
    sub_20DA1A828(*(v1 + 344), *(v1 + 328));
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v0 = *(v1 + 512);
    if (v113)
    {
LABEL_45:
      v115 = *(v0 + 16);
      v114 = *(v0 + 24);
      if (v115 >= v114 >> 1)
      {
        v0 = sub_20D9E0628(v114 > 1, v115 + 1, 1, v0);
      }

      v116 = *(v1 + 344);
      v118 = *(v1 + 320);
      v117 = *(v1 + 328);
      v119 = *(v1 + 264) + 8;
      v92(*(v1 + 280), *(v1 + 256));
      sub_20DA1A960(v116);
      *(v0 + 16) = v115 + 1;
      sub_20DA1A8FC(v117, v0 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v115);
      v76 = v75;
LABEL_54:
      *(v1 + 488) = v75;
      *(v1 + 496) = v76;
      goto LABEL_27;
    }

LABEL_58:
    v0 = sub_20D9E0628(0, *(v142 + 2) + 1, 1, v0);
    goto LABEL_45;
  }

  v101 = *(v1 + 272);
  sub_20D9CEDF0(v99, v75);
  v102 = *(v1 + 152);
  v94 = sub_20D9CB38C(v101);
  if ((v100 & 1) == (v103 & 1))
  {
    v142 = v89;
    goto LABEL_40;
  }

  v104 = *(v1 + 256);

  return sub_20DD659E4();
}

uint64_t sub_20DA42738()
{
  v1 = v0[56];

  v2 = v0[17];
  v0[18] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
  if (sub_20DD65954())
  {
  }

  else
  {
    swift_allocError();
    *v3 = v2;
  }

  v4 = v0[64];
  v5 = v0[62];
  v6 = v0[53];
  v7 = v0[54];
  v8 = v0[51];
  v9 = v0[52];
  v10 = v0[47];
  v11 = v0[44];
  v15 = v0[43];
  v16 = v0[42];
  v17 = v0[41];
  v18 = v0[38];
  v19 = v0[35];
  v20 = v0[34];
  v21 = v0[31];
  v22 = v0[30];
  v12 = v0[29];
  v23 = v0[26];
  v24 = v0[25];
  (*(v0[49] + 8))(v0[50], v0[48]);
  sub_20D9D76EC(v7, &unk_27C843810, &qword_20DD93F00);

  v13 = v0[1];

  return v13();
}

uint64_t sub_20DA42948@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a2;
  v43 = a1;
  v2 = sub_20DD637B4();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20DD637C4();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20DD637A4();
  v10 = *(v9 - 8);
  v11 = v10;
  v35 = v9;
  v36 = v10;
  v12 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20DD636C4();
  v37 = *(v39 - 8);
  v15 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v34 - v20;
  sub_20DD649A4();
  __swift_project_boxed_opaque_existential_0(v44, v44[3]);
  sub_20DD64694();
  __swift_destroy_boxed_opaque_existential_0(v44);
  (*(v11 + 104))(v14, *MEMORY[0x277CC9878], v9);
  v22 = v38;
  v23 = v6;
  (*(v45 + 104))(v38, *MEMORY[0x277CC9900], v6);
  v24 = v41;
  v25 = v42;
  v26 = v40;
  (*(v42 + 104))(v40, *MEMORY[0x277CC98E8], v41);
  v27 = v14;
  v28 = v22;
  v29 = v26;
  sub_20DD637E4();
  v30 = v37;
  (*(v25 + 8))(v29, v24);
  v31 = v23;
  v32 = v39;
  (*(v45 + 8))(v28, v31);
  (*(v36 + 8))(v27, v35);
  (*(v30 + 8))(v17, v32);
  result = (*(v30 + 48))(v21, 1, v32);
  if (result != 1)
  {
    return (*(v30 + 32))(v34, v21, v32);
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA42D78(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v53 = a2;
  v54 = a3;
  v51 = sub_20DD636C4();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v51);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HFEvent();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v50 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v41 - v14;
  v15 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F98];
  v49 = *(a1 + 16);
  if (v49)
  {
    v16 = 0;
    v45 = v6 + 32;
    v46 = v6;
    v44 = (v6 + 8);
    v43 = xmmword_20DD93A70;
    v17 = a1;
    v47 = a1;
    v55 = v9;
    while (v16 < *(v17 + 16))
    {
      v18 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v19 = *(v52 + 72);
      v20 = v17;
      v21 = v17 + v18 + v19 * v16;
      v22 = v56;
      sub_20DA1A828(v21, v56);
      v53(v22);
      if (v4)
      {
        sub_20DA1A960(v56);

        goto LABEL_20;
      }

      v24 = sub_20D9CB72C(v9);
      v25 = v15[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_22;
      }

      v28 = v23;
      if (v15[3] < v27)
      {
        sub_20D9CF1B0(v27, 1);
        v15 = v57;
        v29 = sub_20D9CB72C(v55);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_24;
        }

        v24 = v29;
      }

      if (v28)
      {
        (*v44)(v55, v51);
        v31 = v15[7];
        sub_20DA1A8FC(v56, v50);
        v32 = *(v31 + 8 * v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v31 + 8 * v24) = v32;
        v48 = 0;
        v42 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = sub_20D9E0628(0, v32[2] + 1, 1, v32);
          *(v31 + 8 * v24) = v32;
        }

        v35 = v32[2];
        v34 = v32[3];
        if (v35 >= v34 >> 1)
        {
          v32 = sub_20D9E0628(v34 > 1, v35 + 1, 1, v32);
          *(v42 + 8 * v24) = v32;
        }

        v17 = v47;
        v32[2] = v35 + 1;
        sub_20DA1A8FC(v50, v32 + v18 + v35 * v19);
        v4 = v48;
        v9 = v55;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843890, &qword_20DD93F58);
        v36 = swift_allocObject();
        *(v36 + 16) = v43;
        sub_20DA1A8FC(v56, v36 + v18);
        v15[(v24 >> 6) + 8] |= 1 << v24;
        v9 = v55;
        (*(v46 + 32))(v15[6] + *(v46 + 72) * v24, v55, v51);
        *(v15[7] + 8 * v24) = v36;
        v37 = v15[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_23;
        }

        v15[2] = v39;
        v17 = v20;
      }

      if (v49 == ++v16)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_20DD659E4();
    __break(1u);
  }

  else
  {
LABEL_20:

    return v15;
  }

  return result;
}

uint64_t sub_20DA431A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20DA431C4, 0, 0);
}

uint64_t sub_20DA431C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_20DD649D4();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = *(type metadata accessor for HFEvent() + 20);
  v5 = sub_20DD63744();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_20DA432A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_20DD64C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v9 = qword_27C84C658;
  sub_20DD64C54();
  v10 = sub_20DD64C24();
  v11 = sub_20DD65354();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20D9BF000, v10, v11, "Timer fired, scheduling task", v12, 2u);
    MEMORY[0x20F327D10](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = sub_20DD65114();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    sub_20DD650F4();

    v16 = sub_20DD650E4();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;

    sub_20DA89720(0, 0, v3, &unk_20DD95548, v17);
  }

  return result;
}

uint64_t sub_20DA4357C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
  v4[19] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v8 = *(type metadata accessor for HFEvent() - 8);
  v4[22] = v8;
  v9 = *(v8 + 64) + 15;
  v4[23] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v11 = sub_20DD636C4();
  v4[28] = v11;
  v12 = *(v11 - 8);
  v4[29] = v12;
  v4[30] = *(v12 + 64);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v13 = sub_20DD64C44();
  v4[38] = v13;
  v14 = *(v13 - 8);
  v4[39] = v14;
  v15 = *(v14 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = sub_20DD650F4();
  v4[42] = sub_20DD650E4();
  v17 = sub_20DD65094();
  v4[43] = v17;
  v4[44] = v16;

  return MEMORY[0x2822009F8](sub_20DA43848, v17, v16);
}

uint64_t sub_20DA43848()
{
  v67 = v0;
  if (qword_27C842480 != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v2 = qword_27C84C658;
  sub_20DD64C54();
  v3 = sub_20DD64C24();
  v4 = sub_20DD65354();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20D9BF000, v3, v4, "Timer task running", v5, 2u);
    MEMORY[0x20F327D10](v5, -1, -1);
  }

  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[38];
  v9 = v0[18];

  (*(v7 + 8))(v6, v8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[45] = Strong;
  if (Strong)
  {
    v11 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_20DD64CD4();

    v12 = v0[16];
    v13 = *(v12 + 16);
    if (v13)
    {
      v63 = v11;
      v14 = v0[29];
      v15 = sub_20D9E09B4(v13, 0);
      v16 = sub_20D9EB224(&v66, &v15[(*(v14 + 80) + 32) & ~*(v14 + 80)], v13, v12);

      v17 = sub_20D9C51CC();
      if (v16 != v13)
      {
        __break(1u);
        goto LABEL_24;
      }

      v11 = v63;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v66 = v15;
    sub_20DA44724(&v66);
    v33 = v0[28];
    v34 = v0[29];
    v35 = v0[27];

    sub_20DA5319C(v66, v35);

    v36 = *(v34 + 48);
    v0[46] = v36;
    v0[47] = (v34 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v37 = v36(v35, 1, v33);
    v38 = v0[28];
    v39 = v0[29];
    v40 = v0[27];
    if (v37 == 1)
    {
      v41 = v0[36];
      sub_20D9D76EC(v0[27], &unk_27C843810, &qword_20DD93F00);
      (*(v39 + 16))(v41, v11 + OBJC_IVAR___HFActivityLogCoordinator_Swift_oneMonthAgo, v38);
      v42 = *(v39 + 32);
      v43 = (v39 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      goto LABEL_20;
    }

    v45 = *(v39 + 32);
    v44 = v39 + 32;
    v42 = v45;
    v45(v0[35], v0[27], v0[28]);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_20DD64CD4();

    v46 = v0[17];
    if (*(v46 + 16))
    {
      v17 = sub_20D9CB72C(v0[35]);
      if (v18)
      {
        v47 = *(*(v46 + 56) + 8 * v17);
        if (*(v47 + 16))
        {
          v65 = v11;

          if (*(v47 + 16))
          {
            v43 = v44 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
            v48 = v0[36];
            v62 = v0[35];
            v50 = v0[28];
            v49 = v0[29];
            v51 = v0[23];
            v52 = *(v0[22] + 80);
            sub_20DA1A828(v47 + ((v52 + 32) & ~v52), v51);

            sub_20DD649A4();
            v53 = v0[6];
            __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
            sub_20DD64694();
            (*(v49 + 8))(v62, v50);
            __swift_destroy_boxed_opaque_existential_0(v0 + 2);
            sub_20DA1A960(v51);
            v11 = v65;
LABEL_20:
            v55 = v0[36];
            v54 = v0[37];
            v56 = v0[34];
            v57 = v0[28];
            v0[48] = v42;
            v0[49] = v43;
            v42(v54, v55, v57);
            sub_20DD63684();
            v17 = sub_20DA43DEC;
            v18 = v11;
            v19 = 0;

            return MEMORY[0x2822009F8](v17, v18, v19);
          }

LABEL_27:
          __break(1u);
          return MEMORY[0x2822009F8](v17, v18, v19);
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = v0[42];

  v21 = v0[40];
  v22 = v0[36];
  v23 = v0[37];
  v25 = v0[34];
  v24 = v0[35];
  v27 = v0[32];
  v26 = v0[33];
  v28 = v0[31];
  v30 = v0[26];
  v29 = v0[27];
  v58 = v0[25];
  v59 = v0[24];
  v60 = v0[23];
  v61 = v0[21];
  v64 = v0[20];

  v31 = v0[1];

  return v31();
}

uint64_t sub_20DA43DEC()
{
  v31 = v0[48];
  v32 = v0[49];
  v1 = v0[45];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[32];
  v28 = v5;
  v29 = v0[41];
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[28];
  v9 = v0[21];
  v30 = v9;
  v10 = sub_20DD65114();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = *(v6 + 16);
  v11(v3, v2, v8);
  v11(v5, v4, v8);
  v12 = v1;

  v13 = sub_20DD650E4();
  v14 = *(v6 + 80);
  v15 = (v14 + 40) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v13;
  *(v17 + 3) = v18;
  *(v17 + 4) = v12;
  v31(&v17[v15], v3, v8);
  v31(&v17[v16], v28, v8);
  v19 = &v17[(v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v19 = 200;
  v19[8] = 1;
  v20 = sub_20DA89464(0, 0, v30, &unk_20DD95558, v17);
  v0[50] = v20;
  v21 = *(MEMORY[0x277D857C8] + 4);
  v22 = swift_task_alloc();
  v0[51] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
  *v22 = v0;
  v22[1] = sub_20DA44038;
  v25 = v0[19];
  v24 = v0[20];
  v26 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v24, v20, v25, v23, v26);
}

uint64_t sub_20DA44038()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 360);
  if (v0)
  {
    v6 = sub_20DA4437C;
  }

  else
  {
    v6 = sub_20DA44164;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_20DA44164()
{
  v1 = *(v0 + 392);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 360);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  (*(v0 + 384))(*(v0 + 248), *(v0 + 160) + *(*(v0 + 152) + 48), v5);
  v7 = OBJC_IVAR___HFActivityLogCoordinator_Swift_oldestFetchStartDate;
  swift_beginAccess();
  sub_20DA4688C(v4 + v7, v6);
  if (v3(v6, 1, v5) == 1)
  {
    v8 = *(v0 + 400);
    v9 = *(v0 + 208);

    sub_20D9D76EC(v9, &unk_27C843810, &qword_20DD93F00);
LABEL_5:
    v24 = *(v0 + 392);
    v25 = *(v0 + 224);
    v26 = *(v0 + 232);
    v27 = *(v0 + 192);
    (*(v0 + 384))(v27, *(v0 + 248), v25);
    (*(v26 + 56))(v27, 0, 1, v25);
    swift_beginAccess();
    sub_20DA469F4(v27, v4 + v7);
    swift_endAccess();
    goto LABEL_7;
  }

  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  v12 = *(v0 + 224);
  v13 = *(v0 + 200);
  sub_20D9D76EC(*(v0 + 208), &unk_27C843810, &qword_20DD93F00);
  sub_20DA4688C(v4 + v7, v13);
  v14 = v11(v13, 1, v12);
  if (v14 == 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  v17 = *(v0 + 400);
  v18 = *(v0 + 248);
  v19 = *(v0 + 224);
  v20 = *(v0 + 232);
  v21 = *(v0 + 200);
  v22 = sub_20DD63644();

  v23 = *(v20 + 8);
  v23(v21, v19);
  if (v22)
  {
    goto LABEL_5;
  }

  v23(*(v0 + 248), *(v0 + 224));
LABEL_7:
  v28 = *(v0 + 360);
  sub_20DA3F908(1);
  v15 = *(v0 + 344);
  v16 = *(v0 + 352);
  v14 = sub_20DA44550;

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_20DA4437C()
{
  v1 = v0[50];

  v2 = v0[43];
  v3 = v0[44];

  return MEMORY[0x2822009F8](sub_20DA443E0, v2, v3);
}

uint64_t sub_20DA443E0()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[40];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  v15 = v0[32];
  v16 = v0[31];
  v10 = v0[28];
  v9 = v0[29];
  v17 = v0[27];
  v18 = v0[26];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[23];
  v22 = v0[21];
  v23 = v0[20];

  v11 = *(v9 + 8);
  v11(v7, v10);
  v11(v4, v10);

  v12 = v0[1];
  v13 = v0[52];

  return v12();
}

uint64_t sub_20DA44550()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[28];
  v6 = v0[29];

  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  v8 = v0[40];
  v9 = v0[36];
  v10 = v0[37];
  v12 = v0[34];
  v11 = v0[35];
  v14 = v0[32];
  v13 = v0[33];
  v15 = v0[31];
  v17 = v0[26];
  v16 = v0[27];
  v20 = v0[25];
  v21 = v0[24];
  v22 = v0[23];
  v23 = v0[21];
  v24 = v0[20];

  v18 = v0[1];

  return v18();
}

void sub_20DA446BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_20DA44724(void **a1)
{
  v2 = *(sub_20DD636C4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20DA73A28(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20DA447CC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20DA447CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20DD65924();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20DD636C4();
        v6 = sub_20DD65034();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20DD636C4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20DA44BBC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_20DA448F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20DA448F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20DD636C4();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v32 - v13;
  result = MEMORY[0x28223BE20](v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v45;
      v25 = v43;
      v43(v45, v22, v8);
      v26 = v46;
      v25(v46, v23, v8);
      sub_20DA483E4(&qword_27C8445B8, MEMORY[0x277CC9578]);
      v27 = sub_20DD64E54();
      v28 = *v19;
      (*v19)(v26, v8);
      result = v28(v24, v8);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v21 = v36 - 1;
        v22 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v29 = *v40;
      v30 = v42;
      (*v40)(v42, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v29)(v23, v30, v8);
      v23 += v39;
      v22 += v39;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20DA44BBC(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_20DD636C4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v128 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v135 = &v120 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v141 = &v120 - v16;
  result = MEMORY[0x28223BE20](v15);
  v140 = &v120 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_20DA73550(v21);
      v21 = result;
    }

    v143 = v21;
    v116 = *(v21 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v21[16 * v116];
        v118 = *&v21[16 * v116 + 24];
        sub_20DA455E4(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20DA73550(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        result = sub_20DA734C4(v116 - 1);
        v21 = v143;
        v116 = *(v143 + 2);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v120 = a4;
  v20 = 0;
  v138 = (v9 + 1);
  v139 = v9 + 2;
  v137 = (v9 + 4);
  v21 = MEMORY[0x277D84F90];
  v125 = v9;
  v142 = v8;
  v121 = a3;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v133 = v19;
      v122 = v5;
      v23 = *a3;
      v24 = v9[9];
      v25 = v20;
      v124 = v20;
      v26 = &v23[v24 * (v20 + 1)];
      v27 = v8;
      v28 = v9[2];
      v29 = v140;
      v28(v140, v26, v27);
      v30 = &v23[v24 * v25];
      v31 = v141;
      v132 = v28;
      v28(v141, v30, v27);
      v131 = sub_20DA483E4(&qword_27C8445B8, MEMORY[0x277CC9578]);
      LODWORD(v134) = sub_20DD64E54();
      v32 = v9[1];
      v32(v31, v27);
      v130 = v32;
      result = (v32)(v29, v27);
      v33 = v124 + 2;
      v136 = v24;
      v34 = &v23[v24 * (v124 + 2)];
      while (1)
      {
        v35 = v133;
        if (v133 == v33)
        {
          break;
        }

        v36 = v140;
        v37 = v9;
        v38 = v142;
        v39 = v132;
        (v132)(v140, v34, v142);
        v40 = v141;
        v39(v141, v26, v38);
        v41 = sub_20DD64E54() & 1;
        v42 = v130;
        (v130)(v40, v38);
        v43 = v38;
        v9 = v37;
        result = v42(v36, v43);
        ++v33;
        v34 += v136;
        v26 += v136;
        if ((v134 & 1) != v41)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v5 = v122;
      v21 = v126;
      v8 = v142;
      a3 = v121;
      v22 = v124;
      if (v134)
      {
        if (v35 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v35)
        {
          v44 = v35;
          v45 = v136 * (v35 - 1);
          v46 = v35 * v136;
          v133 = v35;
          v47 = v124;
          v48 = v124 * v136;
          do
          {
            if (v47 != --v44)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v134 = *v137;
              v134(v128, &v50[v48], v142);
              if (v48 < v45 || &v50[v48] >= &v50[v46])
              {
                v49 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v142;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v134)(&v50[v45], v128, v49);
              v9 = v125;
              v21 = v126;
            }

            ++v47;
            v45 -= v136;
            v46 -= v136;
            v48 += v136;
          }

          while (v47 < v44);
          v5 = v122;
          v8 = v142;
          v22 = v124;
          v35 = v133;
        }
      }
    }

    v51 = a3[1];
    if (v35 < v51)
    {
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_122;
      }

      if (v35 - v22 < v120)
      {
        if (__OFADD__(v22, v120))
        {
          goto LABEL_124;
        }

        if (v22 + v120 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v22 + v120;
        }

        if (v52 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v35 != v52)
        {
          break;
        }
      }
    }

    v53 = v35;
    if (v35 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20D9E014C(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_20D9E014C((v54 > 1), v55 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v56;
    v57 = &v21[16 * v55];
    *(v57 + 4) = v22;
    *(v57 + 5) = v53;
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v129 = v53;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_52:
          if (v62)
          {
            goto LABEL_110;
          }

          v75 = &v21[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_113;
          }

          v81 = &v21[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_117;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v85 = &v21[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_66:
        if (v80)
        {
          goto LABEL_112;
        }

        v88 = &v21[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_73:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v97 = *&v21[16 * v96 + 32];
        v98 = *&v21[16 * v58 + 40];
        sub_20DA455E4(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20DA73550(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        result = sub_20DA734C4(v58);
        v21 = v143;
        v56 = *(v143 + 2);
        v8 = v142;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v21[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = &v21[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v74 >= v66)
      {
        v92 = &v21[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v129;
    if (v129 >= v19)
    {
      goto LABEL_94;
    }
  }

  v122 = v5;
  v100 = *a3;
  v101 = v9[9];
  v136 = v9[2];
  v102 = v100 + v101 * (v35 - 1);
  v103 = -v101;
  v124 = v22;
  v104 = v22 - v35;
  v134 = v100;
  v127 = v101;
  v105 = v100 + v35 * v101;
  v129 = v52;
LABEL_85:
  v132 = v102;
  v133 = v35;
  v130 = v105;
  v131 = v104;
  v106 = v102;
  while (1)
  {
    v107 = v140;
    v108 = v136;
    (v136)(v140, v105, v8);
    v109 = v141;
    v108(v141, v106, v142);
    sub_20DA483E4(&qword_27C8445B8, MEMORY[0x277CC9578]);
    v110 = sub_20DD64E54();
    v111 = *v138;
    v112 = v109;
    v8 = v142;
    (*v138)(v112, v142);
    result = v111(v107, v8);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v35 = v133 + 1;
      v102 = &v132[v127];
      v104 = v131 - 1;
      v105 = &v130[v127];
      v53 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v5 = v122;
      a3 = v121;
      v9 = v125;
      v21 = v126;
      v22 = v124;
      if (v129 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v113 = *v137;
    v114 = v135;
    (*v137)(v135, v105, v8);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v8);
    v106 += v103;
    v105 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_20DA455E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_20DD636C4();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v53);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_20DA483E4(&qword_27C8445B8, MEMORY[0x277CC9578]);
          LOBYTE(v36) = sub_20DD64E54();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_20DA483E4(&qword_27C8445B8, MEMORY[0x277CC9578]);
        LOBYTE(v23) = sub_20DD64E54();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_20DA45BD8(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_20DA45BD8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_20DD636C4();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_20DA45CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844388, &qword_20DD95590) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844398, &qword_20DD94DF8) + 48);
  v6 = *(a1 + v4);
  v7 = sub_20DD636C4();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;
}

uint64_t sub_20DA45D84(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844F40, &qword_20DD953C0);
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v8 = sub_20DD636C4();
  v3[19] = v8;
  v9 = *(v8 - 8);
  v3[20] = v9;
  v3[21] = *(v9 + 64);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA45F5C, v2, 0);
}

uint64_t sub_20DA45F5C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_20DA4688C(v0[8], v3);
  v4 = *(v2 + 48);
  v0[27] = v4;
  v0[28] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v3, 1, v1);
  v6 = v0[26];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, v0[10] + OBJC_IVAR___HFActivityLogCoordinator_Swift_oneMonthAgo, v0[19]);
    if (v4(v9, 1, v8) != 1)
    {
      sub_20D9D76EC(v0[18], &unk_27C843810, &qword_20DD93F00);
    }
  }

  else
  {
    (*(v7 + 32))(v6, v0[18], v0[19]);
  }

  v10 = v0[19];
  v11 = v0[17];
  sub_20DA4688C(v0[9], v11);
  if (v4(v11, 1, v10) == 1)
  {
    v12 = v0[19];
    v13 = v0[17];
    v14 = v0[25];
    sub_20DD63684();
    if (v4(v13, 1, v12) != 1)
    {
      sub_20D9D76EC(v0[17], &unk_27C843810, &qword_20DD93F00);
    }
  }

  else
  {
    (*(v0[20] + 32))(v0[25], v0[17], v0[19]);
  }

  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[23];
  v18 = v0[24];
  v19 = v0[20];
  v20 = v0[21];
  v21 = v0[19];
  v22 = v0[13];
  v42 = v22;
  v41 = v0[10];
  v23 = sub_20DD65114();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = *(v19 + 16);
  v24(v18, v15, v21);
  v24(v17, v16, v21);
  sub_20DD650F4();

  v25 = sub_20DD650E4();
  v26 = *(v19 + 80);
  v27 = (v26 + 40) & ~v26;
  v28 = (v20 + v26 + v27) & ~v26;
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 2) = v25;
  *(v29 + 3) = v30;
  *(v29 + 4) = v41;
  v31 = *(v19 + 32);
  v0[29] = v31;
  v0[30] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v31(&v29[v27], v18, v21);
  v31(&v29[v28], v17, v21);
  v32 = &v29[(v20 + v28 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v32 = 200;
  v32[8] = 0;
  v33 = sub_20DA89464(0, 0, v42, &unk_20DD955A8, v29);
  v0[31] = v33;
  v34 = *(MEMORY[0x277D857C8] + 4);
  v35 = swift_task_alloc();
  v0[32] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
  *v35 = v0;
  v35[1] = sub_20DA46328;
  v38 = v0[11];
  v37 = v0[12];
  v39 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v37, v33, v38, v36, v39);
}

uint64_t sub_20DA46328()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_20DA46750;
  }

  else
  {
    v6 = sub_20DA46454;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_20DA46454()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  v47 = *v6;
  (*(v0 + 232))(*(v0 + 176), &v6[*(*(v0 + 88) + 48)], v4);
  v8 = OBJC_IVAR___HFActivityLogCoordinator_Swift_oldestFetchStartDate;
  swift_beginAccess();
  sub_20DA4688C(v7 + v8, v5);
  if (v3(v5, 1, v4) == 1)
  {
    v9 = *(v0 + 248);
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 128);

    v15 = *(v13 + 8);
    v15(v11, v12);
    v15(v10, v12);
    sub_20D9D76EC(v14, &unk_27C843810, &qword_20DD93F00);
  }

  else
  {
    v17 = *(v0 + 216);
    v16 = *(v0 + 224);
    v18 = *(v0 + 152);
    v19 = *(v0 + 120);
    sub_20D9D76EC(*(v0 + 128), &unk_27C843810, &qword_20DD93F00);
    sub_20DA4688C(v7 + v8, v19);
    result = v17(v19, 1, v18);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v21 = *(v0 + 248);
    v23 = *(v0 + 200);
    v22 = *(v0 + 208);
    v24 = *(v0 + 176);
    v25 = *(v0 + 152);
    v26 = *(v0 + 160);
    v27 = *(v0 + 120);
    v28 = sub_20DD63644();

    v29 = *(v26 + 8);
    v29(v23, v25);
    v29(v22, v25);
    v29(v27, v25);
    if ((v28 & 1) == 0)
    {
      v29(*(v0 + 176), *(v0 + 152));
      goto LABEL_7;
    }
  }

  v30 = *(v0 + 240);
  v31 = *(v0 + 152);
  v32 = *(v0 + 160);
  v33 = *(v0 + 112);
  (*(v0 + 232))(v33, *(v0 + 176), v31);
  (*(v32 + 56))(v33, 0, 1, v31);
  swift_beginAccess();
  sub_20DA469F4(v33, v7 + v8);
  swift_endAccess();
LABEL_7:
  v35 = *(v0 + 200);
  v34 = *(v0 + 208);
  v37 = *(v0 + 184);
  v36 = *(v0 + 192);
  v38 = *(v0 + 176);
  v40 = *(v0 + 136);
  v39 = *(v0 + 144);
  v42 = *(v0 + 120);
  v41 = *(v0 + 128);
  v43 = *(v0 + 112);
  v45 = *(v0 + 104);
  v46 = *(v0 + 96);

  v44 = *(v0 + 8);

  return v44(v47);
}

uint64_t sub_20DA46750()
{
  v1 = v0[31];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v14 = v0[17];
  v15 = v0[16];
  v16 = v0[15];
  v17 = v0[14];
  v18 = v0[13];
  v19 = v0[12];

  v10 = *(v7 + 8);
  v10(v3, v8);
  v10(v2, v8);

  v11 = v0[1];
  v12 = v0[33];

  return v11();
}

uint64_t sub_20DA4688C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA468FC(uint64_t a1)
{
  v4 = *(sub_20DD636C4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9D77C4;

  return sub_20DA3D98C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20DA469F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA46A64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9D77C4;

  return sub_20DA3F45C(a1, v4, v5, v6, v7);
}

void sub_20DA46B30()
{
  sub_20DA11C74(319, &qword_27C8445D0, &qword_27C844560, &qword_20DD95320);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_20DA11C74(319, &qword_27C8445D8, &qword_27C844568, qword_20DD95328);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_20DA474D8();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = sub_20DD636C4();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_20DA47528();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of ActivityLogCoordinator.fetchEvents(startDate:endDate:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x188);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_20D9D7010;

  return (v14)(a1, a2, a3, a4 & 1);
}

uint64_t dispatch thunk of ActivityLogCoordinator.fetchEventCount(startDate:endDate:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x190);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_20D9D77BC;

  return (v14)(a1, a2, a3, a4 & 1);
}

uint64_t dispatch thunk of ActivityLogCoordinator.eventsExist()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x198);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9D7010;

  return v6();
}

uint64_t dispatch thunk of ActivityLogCoordinator.prefetch(eventsOlderThan:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x1A0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DA473A0;

  return v8(a1);
}

uint64_t sub_20DA473A0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_20DA474D8()
{
  if (!qword_27C8445E0)
  {
    v0 = sub_20DD64CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8445E0);
    }
  }
}

void sub_20DA47528()
{
  if (!qword_27C8445E8)
  {
    sub_20DD636C4();
    v0 = sub_20DD65494();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8445E8);
    }
  }
}

uint64_t sub_20DA47590()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20D9C76B4;

  return sub_20DA3CB20(v2, v3);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DA4765C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9C76B4;

  return sub_20DA4357C(a1, v4, v5, v6);
}

uint64_t sub_20DA47710(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20DD636C4() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = v13[8];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20D9D77C4;

  return sub_20DA3FD30(a1, v10, v11, v12, v1 + v7, v1 + v9, v14, v15);
}

uint64_t sub_20DA47868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA478F4(uint64_t a1, uint64_t a2)
{
  v71 = sub_20DD636C4();
  v4 = *(v71 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v71);
  v70 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = &v60 - v8;
  v9 = type metadata accessor for HFEvent();
  v73 = *(v9 - 8);
  v10 = *(v73 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v63 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v60 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v61 = &v60 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v60 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v60 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v60 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v60 - v29;
  v74 = *(a1 + 16);
  if (!v74)
  {

    return a2;
  }

  v31 = *(a2 + 16);
  if (!v31 || v31 == 1 && (v32 = (*(v73 + 80) + 32) & ~*(v73 + 80), sub_20DA1A828(a1 + v32, &v60 - v29), sub_20DA1A828(a2 + v32, v28), LOBYTE(v32) = MEMORY[0x20F325910](v30, v28), sub_20DA1A960(v28), sub_20DA1A960(v30), (v32 & 1) != 0))
  {

    return a1;
  }

  if (__OFADD__(v74, v31))
  {
    goto LABEL_42;
  }

  v60 = v17;
  v67 = a2;
  v33 = sub_20D9E0628(0, (v74 + v31) & ~((v74 + v31) >> 63), 0, MEMORY[0x277D84F90]);
  v34 = 0;
  v35 = 0;
  v79 = v33;
  v65 = (v4 + 8);
  v64 = a1;
  v66 = v31;
  v72 = v25;
  while (1)
  {
    if (v35 >= v31)
    {
      if (v34 < 0)
      {
        goto LABEL_43;
      }

      v54 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v55 = (2 * v74) | 1;

      v57 = a1 + v54;
      v58 = v34;
      goto LABEL_37;
    }

    if (v34 < 0)
    {
      break;
    }

    v36 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v37 = *(v73 + 72);
    sub_20DA1A828(a1 + v36 + v37 * v34, v25);
    if (v35 < 0)
    {
      goto LABEL_41;
    }

    v75 = v34;
    v76 = v35;
    v62 = v67 + v36;
    sub_20DA1A828(v67 + v36 + v37 * v35, v22);
    sub_20DD649A4();
    __swift_project_boxed_opaque_existential_0(v77, v78);
    v38 = v69;
    sub_20DD64694();
    __swift_destroy_boxed_opaque_existential_0(v77);
    sub_20DD649A4();
    __swift_project_boxed_opaque_existential_0(v77, v78);
    v39 = v22;
    v40 = v70;
    sub_20DD64694();
    __swift_destroy_boxed_opaque_existential_0(v77);
    v4 = sub_20DD63694();
    v41 = *v65;
    v42 = v40;
    v22 = v39;
    v43 = v71;
    (*v65)(v42, v71);
    v41(v38, v43);
    type metadata accessor for ComparisonResult(0);
    if (v4 == -1)
    {
      goto LABEL_23;
    }

    v25 = v72;
    if (v4 != 1)
    {
      if (v4)
      {
        goto LABEL_45;
      }

      sub_20DD65A64();
      _s4Home7HFEventV4hash4intoys6HasherVz_tF_0();
      v44 = sub_20DD65AA4();
      sub_20DD65A64();
      _s4Home7HFEventV4hash4intoys6HasherVz_tF_0();
      v45 = sub_20DD65AA4();
      if (v44 >= v45)
      {
        if (v45 >= v44)
        {
          v25 = v72;
          sub_20DA1A828(v72, v61);
          v51 = v33[2];
          v50 = v33[3];
          v4 = v51 + 1;
          if (v51 >= v50 >> 1)
          {
            v33 = sub_20D9E0628(v50 > 1, v51 + 1, 1, v33);
          }

          a1 = v64;
          v31 = v66;
          v33[2] = v4;
          sub_20DA1A8FC(v61, v33 + v36 + v51 * v37);
          v79 = v33;
          if (MEMORY[0x20F325910](v25, v39))
          {
            sub_20DA1A960(v39);
            sub_20DA1A960(v25);
          }

          else
          {
            sub_20DA1A828(v39, v60);
            v53 = v33[2];
            v52 = v33[3];
            v4 = v53 + 1;
            if (v53 >= v52 >> 1)
            {
              v33 = sub_20D9E0628(v52 > 1, v53 + 1, 1, v33);
            }

            sub_20DA1A960(v39);
            sub_20DA1A960(v25);
            v33[2] = v4;
            sub_20DA1A8FC(v60, v33 + v36 + v53 * v37);
            v79 = v33;
          }

          v34 = v75 + 1;
          v35 = v76 + 1;
          goto LABEL_11;
        }

LABEL_23:
        sub_20DA1A828(v39, v63);
        v49 = v33[2];
        v48 = v33[3];
        v4 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          v33 = sub_20D9E0628(v48 > 1, v49 + 1, 1, v33);
        }

        a1 = v64;
        v25 = v72;
        sub_20DA1A960(v39);
        sub_20DA1A960(v25);
        v33[2] = v4;
        sub_20DA1A8FC(v63, v33 + v36 + v49 * v37);
        v79 = v33;
        v34 = v75;
        v35 = v76 + 1;
        v31 = v66;
        goto LABEL_11;
      }
    }

    sub_20DA1A828(v25, v68);
    v47 = v33[2];
    v46 = v33[3];
    v4 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v33 = sub_20D9E0628(v46 > 1, v47 + 1, 1, v33);
    }

    a1 = v64;
    v31 = v66;
    sub_20DA1A960(v39);
    sub_20DA1A960(v25);
    v33[2] = v4;
    sub_20DA1A8FC(v68, v33 + v36 + v47 * v37);
    v79 = v33;
    v35 = v76;
    v34 = v75 + 1;
LABEL_11:
    if (v34 >= v74)
    {
      if (v35 >= v31)
      {
        return v79;
      }

      if (v35 < 0)
      {
        goto LABEL_44;
      }

      v55 = (2 * v31) | 1;

      v57 = v62;
      v58 = v35;
LABEL_37:
      sub_20DA13008(v56, v57, v58, v55);
      return v79;
    }
  }

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
  v77[0] = v4;
  result = sub_20DD659B4();
  __break(1u);
  return result;
}

uint64_t sub_20DA48074(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v59 = a5;
  v51 = sub_20DD636C4();
  v9 = *(v51 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v51);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844608, &unk_20DD95580);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v48 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v52 = a1;
  v53 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v54 = v18;
  v55 = 0;
  v56 = v21 & v19;
  v57 = a2;
  v58 = a3;
  v22 = (v9 + 32);
  v49 = (v9 + 8);
  v50 = v9;

  v48 = a3;

  while (1)
  {
    sub_20DA2A39C(v16);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844398, &qword_20DD94DF8);
    if ((*(*(v28 - 8) + 48))(v16, 1, v28) == 1)
    {
      sub_20D9C51CC();
    }

    v29 = *(v28 + 48);
    v30 = *v22;
    (*v22)(v12, v16, v51);
    v31 = *&v16[v29];
    v32 = *v59;
    v34 = sub_20D9CB72C(v12);
    v35 = *(v32 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    if (*(v32 + 24) >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_20D9D34F0();
      }
    }

    else
    {
      v39 = v59;
      sub_20D9CF1B0(v37, a4 & 1);
      v40 = *v39;
      v41 = sub_20D9CB72C(v12);
      if ((v38 & 1) != (v42 & 1))
      {
        goto LABEL_19;
      }

      v34 = v41;
    }

    v43 = *v59;
    if (v38)
    {
      v23 = *(v43[7] + 8 * v34);

      v25 = sub_20DA478F4(v24, v31);

      (*v49)(v12, v51);
      v26 = v43[7];
      v27 = *(v26 + 8 * v34);
      *(v26 + 8 * v34) = v25;

      a4 = 1;
    }

    else
    {
      v43[(v34 >> 6) + 8] |= 1 << v34;
      v30((v43[6] + *(v50 + 72) * v34), v12, v51);
      *(v43[7] + 8 * v34) = v31;
      v44 = v43[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_18;
      }

      v43[2] = v46;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_20DD659E4();
  __break(1u);
  return result;
}

uint64_t sub_20DA483E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_81Tm()
{
  v1 = sub_20DD636C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v10(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 9, v3 | 7);
}

uint64_t sub_20DA48530()
{
  v1 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_20DA48578(uint64_t a1)
{
  v3 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_20DA48634(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844638, &unk_20DD955B0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([a1 isKindOfClass_])
  {
    objc_opt_self();
    v6 = [swift_dynamicCastObjCClassUnconditional() sourceItem];
  }

  else
  {
    v6 = a1;
  }

  v7 = v6;
  v8 = swift_dynamicCastObjCProtocolConditional();
  if (!v8)
  {
    v11 = v7;
LABEL_17:

    MEMORY[0x28223BE20](v24);
    sub_20DD63DB4();
    v23 = 1;
    return v23 & 1;
  }

  v9 = v8;
  if ([a2 isKindOfClass_])
  {
    objc_opt_self();
    v10 = [swift_dynamicCastObjCClassUnconditional() sourceItem];
  }

  else
  {
    v10 = a2;
  }

  v11 = v10;
  v12 = swift_dynamicCastObjCProtocolConditional();
  if (!v12)
  {

    goto LABEL_17;
  }

  v13 = v12;
  v14 = (*((*MEMORY[0x277D85000] & *v2) + 0xA0))(v9, v12);
  if (v14 == 2 && (v14 = sub_20DA4BFE8(v9, v13), v14 == 2))
  {
    v15 = [v9 uuidString];
    v16 = sub_20DD64EB4();
    v18 = v17;

    v19 = [v13 uuidString];
    v20 = sub_20DD64EB4();
    v22 = v21;

    if (v16 == v20 && v18 == v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = sub_20DD65974();
    }
  }

  else
  {
    v23 = v14;
  }

  return v23 & 1;
}

uint64_t sub_20DA4891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*((*MEMORY[0x277D85000] & *v4) + 0xA8))();
  if (v9 != 2)
  {
    return v9 & 1;
  }

  if (a1 == a3 && a2 == a4)
  {
    v9 = 0;
    return v9 & 1;
  }

  return sub_20DD65974();
}

uint64_t sub_20DA489E8()
{
  v1 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

char *sub_20DA48A30(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_20DD655B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_16:
    v24 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
    swift_beginAccess();
    v25 = *(v2 + v24);
    *(v2 + v24) = v5;
  }

  v27 = MEMORY[0x277D84F90];
  result = sub_20DA4AF84(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v26 = v1;
    v5 = v27;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        MEMORY[0x20F326680](v7, a1);
        v8 = [swift_unknownObjectRetain() uuidString];
        v9 = sub_20DD64EB4();
        v11 = v10;
        swift_unknownObjectRelease_n();

        v13 = *(v27 + 16);
        v12 = *(v27 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_20DA4AF84((v12 > 1), v13 + 1, 1);
        }

        ++v7;
        *(v27 + 16) = v13 + 1;
        v14 = v27 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
      }

      while (v4 != v7);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v17 = [v16 uuidString];
        v18 = sub_20DD64EB4();
        v20 = v19;

        v22 = *(v27 + 16);
        v21 = *(v27 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_20DA4AF84((v21 > 1), v22 + 1, 1);
        }

        *(v27 + 16) = v22 + 1;
        v23 = v27 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        ++v15;
        --v4;
      }

      while (v4);
    }

    v2 = v26;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA48C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v10 + 16);
  v12 = v11 == 0;
  v13 = 0;
  if (v11)
  {
    v14 = (v10 + 40);
    while (1)
    {
      v15 = *(v14 - 1) == a1 && *v14 == a2;
      if (v15 || (sub_20DD65974() & 1) != 0)
      {
        break;
      }

      ++v13;
      v14 += 2;
      v12 = v11 == v13;
      if (v11 == v13)
      {
        v13 = 0;
        break;
      }
    }
  }

  v16 = *(v10 + 16);
  if (!v16)
  {
    return (*((*MEMORY[0x277D85000] & *v4) + 0xB0))(a1, a2, a3, a4);
  }

  v17 = 0;
  for (i = (v10 + 40); ; i += 2)
  {
    v19 = *(i - 1) == a3 && *i == a4;
    if (v19 || (sub_20DD65974() & 1) != 0)
    {
      break;
    }

    if (v16 == ++v17)
    {
      return (*((*MEMORY[0x277D85000] & *v4) + 0xB0))(a1, a2, a3, a4);
    }
  }

  if (!v12)
  {
    return v13 < v17;
  }

  else
  {
    return (*((*MEMORY[0x277D85000] & *v4) + 0xB0))(a1, a2, a3, a4);
  }
}

uint64_t sub_20DA48DA0(void *a1, void *a2)
{
  v5 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v6 = *(v2 + v5);

  v27 = a1;
  v7 = [a1 uuidString];
  v8 = sub_20DD64EB4();
  v10 = v9;

  v11 = *(v6 + 16);
  v12 = v11 == 0;
  v13 = 0;
  if (v11)
  {
    v14 = (v6 + 40);
    while (1)
    {
      v15 = *(v14 - 1) == v8 && *v14 == v10;
      if (v15 || (sub_20DD65974() & 1) != 0)
      {
        break;
      }

      ++v13;
      v14 += 2;
      v12 = v11 == v13;
      if (v11 == v13)
      {
        v13 = 0;
        break;
      }
    }
  }

  v16 = *(v2 + v5);

  v17 = a2;
  v18 = [a2 uuidString];
  v19 = sub_20DD64EB4();
  v21 = v20;

  v22 = *(v16 + 16);
  if (!v22)
  {
LABEL_18:

    return (*((*MEMORY[0x277D85000] & *v2) + 0xB8))(v27, v17);
  }

  v23 = 0;
  v24 = (v16 + 40);
  while (1)
  {
    v25 = *(v24 - 1) == v19 && *v24 == v21;
    if (v25 || (sub_20DD65974() & 1) != 0)
    {
      break;
    }

    ++v23;
    v24 += 2;
    if (v22 == v23)
    {
      goto LABEL_18;
    }
  }

  if (v12)
  {
    return (*((*MEMORY[0x277D85000] & *v2) + 0xB8))(v27, v17);
  }

  return v13 < v23;
}

void sub_20DA48F98(uint64_t a1)
{
  if ([v1 applicationDataContainer])
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() sharedDispatcher];
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      v20 = sub_20DA4C4D4;
      v21 = v6;
      aBlock = MEMORY[0x277D85DD0];
      v17 = 1107296256;
      v18 = sub_20DA2E46C;
      v19 = &block_descriptor_22;
      v7 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      sub_20DA4C2CC(a1, &aBlock);
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844660, &qword_20DD95620);
        if (swift_dynamicCast())
        {
          v8 = v15;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        sub_20D9D76EC(&aBlock, &unk_27C843A80, &qword_20DD94100);
        v8 = 0;
      }

      [v5 dispatchHomeObserverMessage:v7 sender:v8];
      swift_unknownObjectRelease();
      _Block_release(v7);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if ([v1 applicationDataContainer])
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = [objc_opt_self() sharedDispatcher];
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v20 = sub_20DA4C4CC;
      v21 = v12;
      aBlock = MEMORY[0x277D85DD0];
      v17 = 1107296256;
      v18 = sub_20DA2E46C;
      v19 = &block_descriptor_16;
      v13 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      sub_20DA4C2CC(a1, &aBlock);
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844660, &qword_20DD95620);
        if (swift_dynamicCast())
        {
          v14 = v15;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        sub_20D9D76EC(&aBlock, &unk_27C843A80, &qword_20DD94100);
        v14 = 0;
      }

      [v11 dispatchHomeObserverMessage:v13 sender:v14];
      swift_unknownObjectRelease();
      _Block_release(v13);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_20DA49324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8446A8, &qword_20DD95688);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_20DD644A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v26 = &v23 - v12;
  v13 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  sub_20DA4AFA4(0, v13, 0);
  v14 = v28;
  if (v13)
  {
    v15 = a1 + 32;
    v24 = v5;
    v25 = (v7 + 56);
    v16 = (v7 + 32);
    while (1)
    {
      sub_20D9FF4D0(v15, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843970, &qword_20DD95690);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v25)(v5, 0, 1, v6);
      v17 = *v16;
      v18 = v26;
      (*v16)(v26, v5, v6);
      v17(v11, v18, v6);
      v28 = v14;
      v19 = v11;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_20DA4AFA4(v20 > 1, v21 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v21 + 1;
      v17((v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21), v19, v6);
      v15 += 40;
      --v13;
      v11 = v19;
      v5 = v24;
      if (!v13)
      {
        return v14;
      }
    }

    (*v25)(v5, 1, 1, v6);
    sub_20D9D76EC(v5, &unk_27C8446A8, &qword_20DD95688);
    return 0;
  }

  return v14;
}

uint64_t sub_20DA495F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  sub_20DA4AFE8(0, v2, 0);
  v3 = v15;
  if (v2)
  {
    v4 = (a1 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (!v6)
      {
        break;
      }

      swift_getObjectType();
      v7 = swift_conformsToProtocol2();
      if (!v7)
      {
        break;
      }

      v8 = v7;
      v9 = *(v15 + 16);
      v10 = *(v15 + 24);
      v11 = v5;
      if (v9 >= v10 >> 1)
      {
        v13 = v11;
        sub_20DA4AFE8((v10 > 1), v9 + 1, 1);
        v11 = v13;
      }

      *(v15 + 16) = v9 + 1;
      v12 = v15 + 16 * v9;
      *(v12 + 32) = v11;
      *(v12 + 40) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_20DA49700(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_20DD65774();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_20D9D7174(i, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844688, &qword_20DD95670);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_20DD65754();
    v4 = *(v7 + 16);
    sub_20DD65784();
    sub_20DD65794();
    sub_20DD65764();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_20DA49810(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

id ReorderableItemList.__allocating_init(applicationDataContainer:category:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_20DD64E74();

  v5 = [v3 initWithApplicationDataContainer:a1 category:v4];
  swift_unknownObjectRelease();

  return v5;
}

id ReorderableItemList.init(applicationDataContainer:category:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = 0xD000000000000019;
  v19 = 0x800000020DD99250;
  MEMORY[0x20F325E90](a2, a3);
  v6 = &v3[OBJC_IVAR___HFReorderableItemList_applicationDataKey];
  *v6 = 0xD000000000000019;
  *(v6 + 1) = 0x800000020DD99250;
  v7 = [a1 applicationData];
  v8 = *v6;
  v9 = *(v6 + 1);

  v10 = sub_20DD64E74();

  v11 = [v7 objectForKeyedSubscript_];

  if (v11 && (v18 = v11, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CB0, &unk_20DD955C0), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436B0, &qword_20DD93CF0), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v16;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  *&v4[OBJC_IVAR___HFReorderableItemList_sortedIdentifiers] = v12;
  v13 = sub_20DD64E74();

  v17.receiver = v4;
  v17.super_class = type metadata accessor for ReorderableItemList();
  v14 = objc_msgSendSuper2(&v17, sel_initWithApplicationDataContainer_category_, a1, v13);

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_20DA49AFC(void *a1, void *a2, void *a3)
{
  sub_20DD65704();
  MEMORY[0x20F325E90](0xD00000000000005BLL, 0x800000020DD99350);
  v6 = [a1 description];
  v7 = sub_20DD64EB4();
  v9 = v8;

  MEMORY[0x20F325E90](v7, v9);

  MEMORY[0x20F325E90](32, 0xE100000000000000);
  v10 = [a2 description];
  v11 = sub_20DD64EB4();
  v13 = v12;

  MEMORY[0x20F325E90](v11, v13);

  MEMORY[0x20F325E90](32, 0xE100000000000000);
  v14 = [a3 description];
  v15 = sub_20DD64EB4();
  v17 = v16;

  MEMORY[0x20F325E90](v15, v17);

  return 0;
}

id sub_20DA49EBC(uint64_t a1)
{
  v3 = [v1 applicationDataContainer];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 applicationData];
  swift_unknownObjectRelease();
  v5 = *&v1[OBJC_IVAR___HFReorderableItemList_applicationDataKey];
  v6 = *&v1[OBJC_IVAR___HFReorderableItemList_applicationDataKey + 8];
  v7 = sub_20DD64E74();
  v8 = [v4 objectForKeyedSubscript_];

  if (!v8)
  {
    goto LABEL_5;
  }

  *&aBlock = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844CB0, &unk_20DD955C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436B0, &qword_20DD93CF0);
  if (swift_dynamicCast())
  {
    v9 = *&v54[0];
  }

  else
  {
LABEL_5:
    v9 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844648, &qword_20DD955D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD93A70;
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v11;
  v12 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v13 = *(*&v1[v12] + 16);
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = v13;
  sub_20D9D4C24(inited);
  swift_setDeallocating();
  sub_20D9D76EC(inited + 32, &unk_27C844030, &qword_20DD93C68);
  LOBYTE(inited) = sub_20DA4A7A8(v9, *&v1[v12]);

  if (inited)
  {
    if (*(*&v1[v12] + 16))
    {
      v14 = sub_20DD64EB4();
      v16 = v15;
      v17 = sub_20DD64EB4();
      v57 = MEMORY[0x277D837D0];
      *&aBlock = v17;
      *(&aBlock + 1) = v18;
      sub_20D9D77C8(&aBlock, v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_20D9D01B0(v54, v14, v16, isUniquelyReferenced_nonNull_native);

      v20 = objc_opt_self();
      v21 = sub_20DD64DB4();

      [v20 sendEvent:39 withData:v21];
    }

    else
    {
    }

    v53 = [objc_opt_self() futureWithNoResult];

    return v53;
  }

  else
  {
    v22 = [v1 applicationDataContainer];
    if (v22)
    {
      v23 = [v22 applicationData];
      swift_unknownObjectRelease();
      v24 = *&v1[OBJC_IVAR___HFReorderableItemList_applicationDataKey];
      v25 = *&v1[OBJC_IVAR___HFReorderableItemList_applicationDataKey + 8];
      v26 = *&v1[v12];

      sub_20DA0B794(v27);

      v28 = objc_allocWithZone(MEMORY[0x277CBEA60]);
      v29 = sub_20DD64FB4();

      v30 = [v28 initWithArray_];

      v31 = sub_20DD64E74();
      [v23 setObject:v30 forKeyedSubscript:v31];
    }

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = sub_20DA4C2AC;
    v59 = v32;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v56 = sub_20DA4A9B0;
    v57 = &block_descriptor_6;
    v33 = _Block_copy(&aBlock);
    v34 = objc_opt_self();

    v35 = [v34 futureWithErrorOnlyHandlerAdapterBlock_];
    _Block_release(v33);

    sub_20DA4C2CC(a1, v54);
    v36 = swift_allocObject();
    v37 = v54[1];
    *(v36 + 24) = v54[0];
    *(v36 + 16) = v1;
    *(v36 + 40) = v37;
    v58 = sub_20DA4C33C;
    v59 = v36;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v56 = sub_20DA055A4;
    v57 = &block_descriptor_6;
    v38 = _Block_copy(&aBlock);
    v39 = v1;

    v40 = [v35 flatMap_];
    _Block_release(v38);

    if (*(*&v1[v12] + 16) == 1)
    {
      v41 = &HFAnalyticsSectionReorderingTypeDoneWithNoChange;
    }

    else
    {
      v41 = HFAnalyticsSectionReorderingTypeDoneWithChange;
    }

    v42 = *v41;
    v43 = sub_20DD64EB4();
    v45 = v44;
    v46 = sub_20DD64EB4();
    v48 = v47;
    v57 = MEMORY[0x277D837D0];
    *&aBlock = v43;
    *(&aBlock + 1) = v45;
    sub_20D9D77C8(&aBlock, v54);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D01B0(v54, v46, v48, v49);

    v50 = objc_opt_self();
    v51 = sub_20DD64DB4();

    [v50 sendEvent:39 withData:v51];

    return v35;
  }
}

uint64_t sub_20DA4A558(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x20F326680](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x20F326680](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_20DD65454();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_20DD65454();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_20DD655B4();
  }

  result = sub_20DD655B4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_20DA4A7A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_20DD65974() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_20DA4A838(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [v5 applicationDataContainer];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 applicationDataContainer];

      if (v8)
      {
        v9 = [v8 applicationData];
        swift_unknownObjectRelease();
      }

      else
      {
        v9 = 0;
      }

      aBlock[4] = a1;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20DA899CC;
      aBlock[3] = &block_descriptor_28;
      v10 = _Block_copy(aBlock);

      [v7 hf:v9 updateApplicationData:1 handleError:v10 completionHandler:?];
      swift_unknownObjectRelease();

      _Block_release(v10);
      v5 = v9;
    }

    else
    {
    }
  }
}

uint64_t sub_20DA4A9B0(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_20DA4C544, v5);
}

void sub_20DA4AA44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_20DD63494();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_20DA4AAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20DA48F98(a3);
  v4 = [objc_opt_self() futureWithResult_];

  return v4;
}

uint64_t sub_20DA4AB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v10 + 16);
  v12 = v11 == 0;
  if (v11)
  {
    v13 = (v10 + 40);
    do
    {
      if (*(v13 - 1) == a1 && *v13 == a2)
      {
        break;
      }

      if (sub_20DD65974())
      {
        break;
      }

      v13 += 2;
      v12 = --v11 == 0;
    }

    while (v11);
  }

  v15 = *(v10 + 16);
  if (v15)
  {
    v16 = (v10 + 40);
    while (1)
    {
      v17 = *(v16 - 1) == a3 && *v16 == a4;
      if (v17 || (sub_20DD65974() & 1) != 0)
      {
        break;
      }

      v16 += 2;
      if (!--v15)
      {
        goto LABEL_17;
      }
    }

    if (v12)
    {
      return 0;
    }
  }

  else
  {
LABEL_17:
    if (!v12)
    {
      return 1;
    }
  }

  return 2;
}

uint64_t sub_20DA4ACA8(void *a1, void *a2)
{
  v5 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  v6 = *(v2 + v5);

  v7 = [a1 uuidString];
  v8 = sub_20DD64EB4();
  v10 = v9;

  v11 = *(v6 + 16);
  v12 = v11 == 0;
  if (v11)
  {
    v13 = (v6 + 40);
    do
    {
      if (*(v13 - 1) == v8 && *v13 == v10)
      {
        break;
      }

      if (sub_20DD65974())
      {
        break;
      }

      v13 += 2;
      v12 = --v11 == 0;
    }

    while (v11);
  }

  v15 = *(v2 + v5);

  v16 = [a2 uuidString];
  v17 = sub_20DD64EB4();
  v19 = v18;

  v20 = *(v15 + 16);
  if (v20)
  {
    v21 = (v15 + 40);
    while (1)
    {
      v22 = *(v21 - 1) == v17 && *v21 == v19;
      if (v22 || (sub_20DD65974() & 1) != 0)
      {
        break;
      }

      v21 += 2;
      if (!--v20)
      {
        goto LABEL_17;
      }
    }

    if (v12)
    {
      return 0;
    }
  }

  else
  {
LABEL_17:

    if (!v12)
    {
      return 1;
    }
  }

  return 2;
}

uint64_t sub_20DA4AE4C(void *a1, void *a2)
{
  result = [a1 respondsToSelector_];
  if (result)
  {
    swift_unknownObjectRetain();
    v5 = [a2 home];
    if (v5)
    {
      v6 = v5;
      [a1 home:v5 didUpdateApplicationDataForRoom:a2];

      return swift_unknownObjectRelease();
    }

    else
    {
      result = swift_unknownObjectRelease();
      __break(1u);
    }
  }

  return result;
}

id ReorderableItemList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReorderableItemList();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_20DA4AF84(char *a1, int64_t a2, char a3)
{
  result = sub_20DA4B150(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_20DA4AFA4(size_t a1, int64_t a2, char a3)
{
  result = sub_20DA4BE0C(a1, a2, a3, *v3, &unk_27C8446B8, &unk_20DD95698, MEMORY[0x277D16970]);
  *v3 = result;
  return result;
}

void *sub_20DA4AFE8(void *a1, int64_t a2, char a3)
{
  result = sub_20DA4B398(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20DA4B008(void *a1, int64_t a2, char a3)
{
  result = sub_20DA4B4CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_20DA4B028(size_t a1, int64_t a2, char a3)
{
  result = sub_20DA4B600(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20DA4B048(char *a1, int64_t a2, char a3)
{
  result = sub_20DA4B818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_20DA4B068(size_t a1, int64_t a2, char a3)
{
  result = sub_20DA4BE0C(a1, a2, a3, *v3, &qword_27C844658, &qword_20DD95608, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_20DA4B0AC(void *a1, int64_t a2, char a3)
{
  result = sub_20DA4BA2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20DA4B0CC(void *a1, int64_t a2, char a3)
{
  result = sub_20DA4BB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20DA4B0EC(void *a1, int64_t a2, char a3)
{
  result = sub_20DA4BCC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_20DA4B10C(size_t a1, int64_t a2, char a3)
{
  result = sub_20DA4BE0C(a1, a2, a3, *v3, &qword_27C844668, &qword_20DD95628, MEMORY[0x277D16408]);
  *v3 = result;
  return result;
}

char *sub_20DA4B150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_20DA4B25C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3)) | 1;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DA4B398(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843FB0, &unk_20DD95650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438F0, &qword_20DD93F90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DA4B4CC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8438C8, &qword_20DD93F78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438D0, &unk_20DD93F80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_20DA4B600(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844698, &qword_20DD95678);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843530, &qword_20DD95680) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843530, &qword_20DD95680) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_20DA4B818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844680, &unk_20DD95660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20DA4B928(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8437F8, &unk_20DD95610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_20DA4BA2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844670, &unk_20DD95630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C845270, &unk_20DD96CD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DA4BB7C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844648, &qword_20DD955D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844030, &qword_20DD93C68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20DA4BCC4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8433D0, &unk_20DD95640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8452C0, &qword_20DD96DA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_20DA4BE0C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

uint64_t sub_20DA4BFE8(void *a1, void *a2)
{
  v3 = [a1 latestResults];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v5 = sub_20DD64DC4();

  v6 = sub_20DD64EB4();
  if (!*(v5 + 16))
  {

    goto LABEL_11;
  }

  v8 = sub_20D9CB170(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_11:

LABEL_12:
    v12 = 0;
    v13 = 0;
    goto LABEL_13;
  }

  sub_20D9D7174(*(v5 + 56) + 32 * v8, v29);

  v11 = swift_dynamicCast();
  if (v11)
  {
    v12 = v27;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v28;
  }

  else
  {
    v13 = 0;
  }

LABEL_13:
  v14 = [a2 latestResults];
  if (v14)
  {
    v15 = v14;
    v16 = sub_20DD64DC4();

    v17 = sub_20DD64EB4();
    if (*(v16 + 16))
    {
      v19 = sub_20D9CB170(v17, v18);
      v21 = v20;

      if (v21)
      {
        sub_20D9D7174(*(v16 + 56) + 32 * v19, v29);

        v22 = swift_dynamicCast();
        if (v22)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          v24 = v28;
        }

        else
        {
          v24 = 0;
        }

        if (!v13)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  v23 = 0;
  v24 = 0;
  if (!v13)
  {
LABEL_23:
    if (!v24)
    {
      return 2;
    }

    return 0;
  }

LABEL_28:
  if (v24)
  {
    if (v12 == v23 && v13 == v24 || (sub_20DD65974() & 1) != 0)
    {

      return 2;
    }

    else
    {
      v26 = sub_20DD65974();

      return v26 & 1;
    }
  }

  else
  {

    return 1;
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DA4C2CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A80, &qword_20DD94100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_20DA4C4D4(void *a1)
{
  v3 = *(v1 + 16);
  result = [a1 respondsToSelector_];
  if (result)
  {

    return [a1 homeDidUpdateApplicationData_];
  }

  return result;
}

void ItemSelectionController.itemsToUpdate(with:)()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
  {
    v1 = MEMORY[0x277D84F90];

    sub_20D9EE8F4(v1);
  }
}

uint64_t SingleItemSelectionController.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_20DA4C63C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = a1;
  v4 = a1;
  sub_20D9EE8F4(inited);
  v6 = v5;
  swift_setDeallocating();
  v7 = *(inited + 16);
  swift_arrayDestroy();
  v10 = v6;
  if (Strong)
  {
    sub_20D9E23C4(&v9, Strong);

    return v10;
  }

  return v6;
}

void sub_20DA4C720(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong isEqual_], v3, v4))
  {
    swift_unknownObjectWeakAssign();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20DD940A0;
    *(inited + 32) = a1;
    v6 = a1;
    sub_20D9EE8F4(inited);
    swift_setDeallocating();
    v7 = *(inited + 16);
    swift_arrayDestroy();
  }

  else if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_20DD655B4())
    {
      sub_20D9EE8F4(MEMORY[0x277D84F90]);
    }
  }
}

id sub_20DA4C83C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = [Strong isEqual_];

  return v4;
}

uint64_t SingleItemSelectionController.__deallocating_deinit()
{
  MEMORY[0x20F327E10](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t MultipleItemSelectionController.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() weakObjectsHashTable];
  return v0;
}

uint64_t sub_20DA4C9EC(void *a1, SEL *a2)
{
  [*(v2 + 16) *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = a1;
  v5 = a1;
  sub_20D9EE8F4(inited);
  v7 = v6;
  swift_setDeallocating();
  v8 = *(inited + 16);
  swift_arrayDestroy();
  return v7;
}

uint64_t MultipleItemSelectionController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20DA4CB5C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  [*(v4 + 16) *a4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = a1;
  v7 = a1;
  sub_20D9EE8F4(inited);
  v9 = v8;
  swift_setDeallocating();
  v10 = *(inited + 16);
  swift_arrayDestroy();
  return v9;
}

void sub_20DA4CC0C()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
  {
    v1 = MEMORY[0x277D84F90];

    sub_20D9EE8F4(v1);
  }
}

uint64_t AccessoryRepresentableSelectionController.select(item:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20DA4CD7C(a1, a2, a3);
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = [v6 accessoryRepresentableObject];
    v9 = (*(a3 + 24))();

    swift_unknownObjectRelease();
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v9;
}

id sub_20DA4CD7C(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8446C8, &qword_20DD95860);
  if (swift_dynamicCast())
  {
    sub_20D9C51D4(v12, v15);
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_0(v15, v16);
    v8 = (*(v7 + 8))(v6, v7);
    v9 = sub_20DA4CD7C(v8, a2, a3);

    __swift_destroy_boxed_opaque_existential_0(v15);
    return v9;
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_20DA4D694(v12);

    return v11;
  }
}

uint64_t AccessoryRepresentableSelectionController.deselect(item:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20DA4CD7C(a1, a2, a3);
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = [v6 accessoryRepresentableObject];
    v9 = (*(a3 + 32))();

    swift_unknownObjectRelease();
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v9;
}

Swift::Bool __swiftcall AccessoryRepresentableSelectionController.isItemSelected(_:)(HFItem *a1)
{
  v3 = v2;
  v4 = sub_20DA4CD7C(a1, v1, v2);
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = [v6 accessoryRepresentableObject];
    v9 = (*(v3 + 16))();

    swift_unknownObjectRelease();
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

void AccessoryRepresentableSelectionController.selectionBehavior(for:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = sub_20DA4CD7C(a1, a2, a3);
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    v10 = [v8 accessoryRepresentableObject];
    (*(a3 + 40))();

    swift_unknownObjectRelease();
  }

  else
  {

    *a4 = 1;
  }
}

uint64_t _s4Home21ItemSelectionBehaviorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_20D9D7510(0, &qword_27C8441A0, 0x277D82BB8);
      sub_20DA4D6FC(v3);
      sub_20DA4D6FC(v2);
      v4 = sub_20DD65454();
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_20DA4D6FC(*a2);
    sub_20DA4D6FC(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_20DA4D70C(v2);
  sub_20DA4D70C(v3);
  return v4 & 1;
}

id _s4Home23ItemSelectionControllerPAAE23selectionCompleteFutureSo8NAFutureCyyXlGvg_0()
{
  v0 = [objc_opt_self() futureWithNoResult];
  v1 = [v0 asGeneric];

  return v1;
}

uint64_t get_enum_tag_for_layout_string_4Home21ItemSelectionBehaviorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20DA4D360(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20DA4D3B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_20DA4D410(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_20DA4D694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8446D0, &qword_20DD95868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20DA4D6FC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_20DA4D70C(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_20DA4D74C()
{
  sub_20DA4D7E0();
  result = sub_20DD65484();
  qword_27C84C658 = result;
  return result;
}

unint64_t sub_20DA4D7E0()
{
  result = qword_280E01EC0;
  if (!qword_280E01EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E01EC0);
  }

  return result;
}

uint64_t sub_20DA4D82C()
{
  sub_20DA4D7E0();
  result = sub_20DD65484();
  qword_280E03EA8 = result;
  return result;
}

uint64_t sub_20DA4D8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_20DA4D7E0();
  result = sub_20DD65484();
  *a4 = result;
  return result;
}

uint64_t HFEvent.stateDescription.getter()
{
  v1 = sub_20DD649D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  if ((*(v2 + 88))(v5, v1) == *MEMORY[0x277D17970] && ((v6 = sub_20DA50684(), v7) || (v6 = sub_20DA51270(), v8)))
  {
    v9 = v6;
  }

  else
  {
    v10 = sub_20DD64E74();
    v11 = HFLocalizedString(v10);

    v9 = sub_20DD64EB4();
  }

  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t HFEvent.displayName.getter()
{
  v1 = v0;
  v2 = sub_20DD64784();
  v27 = *(v2 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20DD649D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = *(v7 + 16);
  v28 = v1;
  v14(&v26 - v12, v1, v6);
  v15 = *(v7 + 88);
  v29 = v13;
  v16 = v15(v13, v6);
  if (v16 != *MEMORY[0x277D17970])
  {
    v22 = sub_20DD64E74();
    v23 = HFLocalizedString(v22);
LABEL_8:
    v24 = v23;

    v21 = sub_20DD64EB4();
    goto LABEL_9;
  }

  v17 = v16;
  v14(v11, v28, v6);
  if (v15(v11, v6) != v17)
  {
    (*(v7 + 8))(v11, v6);
    v22 = sub_20DD64E74();
    v23 = HFLocalizedString(v22);
    goto LABEL_8;
  }

  (*(v7 + 96))(v11, v6);
  v18 = v27;
  (*(v27 + 32))(v5, v11, v2);
  sub_20DD64774();
  (*(v18 + 8))(v5, v2);
  sub_20D9C51D4(&v30, v31);
  v19 = sub_20DA4DE04();
  if (!v20)
  {
    v19 = sub_20DA504BC(v31);
  }

  v21 = v19;
  __swift_destroy_boxed_opaque_existential_0(v31);
LABEL_9:
  (*(v7 + 8))(v29, v6);
  return v21;
}

uint64_t sub_20DA4DE04()
{
  v244 = sub_20DD648C4();
  v243 = *(v244 - 8);
  v0 = *(v243 + 64);
  MEMORY[0x28223BE20](v244);
  v240 = &v213 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_20DD648E4();
  v241 = *(v242 - 8);
  v2 = *(v241 + 64);
  MEMORY[0x28223BE20](v242);
  v239 = &v213 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20DD648F4();
  v255 = *(v4 - 8);
  v256 = v4;
  v5 = *(v255 + 64);
  MEMORY[0x28223BE20](v4);
  v254 = &v213 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_20DD64914();
  v252 = *(v253 - 8);
  v7 = *(v252 + 64);
  MEMORY[0x28223BE20](v253);
  v251 = &v213 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_20DD64934();
  v262 = *(v257 - 8);
  v9 = *(v262 + 64);
  MEMORY[0x28223BE20](v257);
  v261 = &v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_20DD64854();
  v220 = *(v219 - 8);
  v11 = *(v220 + 64);
  v12 = MEMORY[0x28223BE20](v219);
  v217 = &v213 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v218 = &v213 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v215 = &v213 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v216 = &v213 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v213 = &v213 - v21;
  MEMORY[0x28223BE20](v20);
  v214 = &v213 - v22;
  v233 = sub_20DD64814();
  v234 = *(v233 - 8);
  v23 = *(v234 + 64);
  v24 = MEMORY[0x28223BE20](v233);
  v230 = &v213 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v231 = &v213 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v225 = &v213 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v226 = &v213 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v221 = &v213 - v33;
  MEMORY[0x28223BE20](v32);
  v222 = &v213 - v34;
  v258 = sub_20DD64834();
  v248 = *(v258 - 8);
  v35 = *(v248 + 64);
  MEMORY[0x28223BE20](v258);
  v247 = &v213 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_20DD64844();
  v269 = *(v264 - 8);
  v37 = *(v269 + 64);
  v38 = MEMORY[0x28223BE20](v264);
  v238 = &v213 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v237 = &v213 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v250 = &v213 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v260 = &v213 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v229 = &v213 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v228 = &v213 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v236 = &v213 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v246 = &v213 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v224 = &v213 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v223 = &v213 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v227 = &v213 - v59;
  MEMORY[0x28223BE20](v58);
  v232 = &v213 - v60;
  v61 = sub_20DD64864();
  v62 = *(v61 - 8);
  v267 = v61;
  v268 = v62;
  v63 = *(v62 + 64);
  v64 = MEMORY[0x28223BE20](v61);
  v263 = &v213 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v259 = &v213 - v67;
  MEMORY[0x28223BE20](v66);
  v245 = &v213 - v68;
  v266 = sub_20DD64804();
  v270 = *(v266 - 8);
  v69 = *(v270 + 8);
  MEMORY[0x28223BE20](v266);
  v71 = &v213 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_20DD64894();
  v265 = *(v271 - 1);
  v72 = *(v265 + 64);
  v73 = MEMORY[0x28223BE20](v271);
  v75 = &v213 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v73);
  v249 = &v213 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v235 = &v213 - v79;
  MEMORY[0x28223BE20](v78);
  v81 = &v213 - v80;
  v82 = sub_20DD648B4();
  v83 = *(v82 - 8);
  v272 = v82;
  v273 = v83;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  v274 = &v213 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_20DD649D4();
  v87 = *(v86 - 8);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  v90 = &v213 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_20DD64784();
  v92 = *(v91 - 8);
  v93 = *(v92 + 64);
  v94 = MEMORY[0x28223BE20](v91);
  v96 = &v213 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v94);
  v98 = &v213 - v97;
  (*(v87 + 16))(v90, v275, v86);
  if ((*(v87 + 88))(v90, v86) != *MEMORY[0x277D17970])
  {
    (*(v87 + 8))(v90, v86);
    return 0;
  }

  (*(v87 + 96))(v90, v86);
  (*(v92 + 32))(v98, v90, v91);
  (*(v92 + 16))(v96, v98, v91);
  v99 = (*(v92 + 88))(v96, v91);
  v100 = v91;
  if (v99 == *MEMORY[0x277D17770])
  {
    v275 = v98;
    (*(v92 + 96))(v96, v91);
    v101 = v274;
    (*(v273 + 32))(v274, v96, v272);
    sub_20DD648A4();
    sub_20DD64874();
    v102 = *(v265 + 8);
    v103 = v81;
    v104 = v271;
    v102(v103, v271);
    v105 = v266;
    v106 = (*(v270 + 11))(v71, v266);
    if (v106 == *MEMORY[0x277D17830])
    {
      sub_20DD648A4();
      v107 = v263;
      sub_20DD64884();
      v102(v75, v104);
      v109 = v267;
      v108 = v268;
      v110 = (*(v268 + 88))(v107, v267);
      if (v110 == *MEMORY[0x277D17898])
      {
        (*(v108 + 96))(v107, v109);
        v111 = v269;
        v112 = v260;
        v113 = v107;
        v114 = v264;
        (*(v269 + 32))(v260, v113, v264);
        v115 = v250;
        (*(v111 + 16))(v250, v112, v114);
        v116 = (*(v111 + 88))(v115, v114);
        if (v116 == *MEMORY[0x277D17868])
        {
          (*(v111 + 96))(v115, v114);
          v117 = v273;
          v118 = v248;
          v119 = *(v248 + 32);
          v120 = v247;
          v271 = v91;
          v121 = v258;
          v119(v247, v115, v258);
          v270 = "yHistory_EveryoneWentAway";
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
          v122 = swift_allocObject();
          *(v122 + 16) = xmmword_20DD93A70;
          v123 = sub_20DD64824();
          v125 = v124;
          *(v122 + 56) = MEMORY[0x277D837D0];
          *(v122 + 64) = sub_20DA52BE8();
          *(v122 + 32) = v123;
          *(v122 + 40) = v125;
          v126 = sub_20DD64F14();

          (*(v118 + 8))(v120, v121);
          (*(v111 + 8))(v260, v114);
          (*(v117 + 8))(v274, v272);
LABEL_7:
          (*(v92 + 8))(v275, v271);
          return v126;
        }

        goto LABEL_31;
      }

      v167 = v269;
      if (v110 == *MEMORY[0x277D17848])
      {
        v168 = v263;
        (*(v108 + 96))(v263, v109);
        v169 = v237;
        v170 = v264;
        (*(v167 + 32))(v237, v168, v264);
        v171 = v238;
        (*(v167 + 16))(v238, v169, v170);
        v172 = (*(v167 + 88))(v171, v170);
        if (v172 == *MEMORY[0x277D17868])
        {
          v173 = sub_20DD64F04();
          v174 = *(v167 + 8);
          v174(v169, v170);
          (*(v273 + 8))(v274, v272);
          (*(v92 + 8))(v275, v91);
          v174(v171, v170);
          return v173;
        }

        if (v172 == *MEMORY[0x277D17860])
        {
          v173 = sub_20DD64F04();
          (*(v167 + 8))(v169, v264);
          goto LABEL_70;
        }

        v203 = *(v167 + 8);
        v204 = v264;
        v203(v169, v264);
        (*(v273 + 8))(v274, v272);
        (*(v92 + 8))(v275, v91);
        v203(v171, v204);
        return 0;
      }

      if (v110 == *MEMORY[0x277D17890])
      {
        v180 = v263;
        (*(v108 + 96))(v263, v109);
        v181 = v234;
        v182 = v231;
        v183 = v233;
        (*(v234 + 32))(v231, v180, v233);
        v184 = v230;
        (*(v181 + 16))(v230, v182, v183);
        v185 = (*(v181 + 88))(v184, v183);
        if (v185 == *MEMORY[0x277D17858] || v185 == *MEMORY[0x277D17850])
        {
LABEL_60:
          v173 = sub_20DD64F04();
          (*(v181 + 8))(v182, v183);
          (*(v273 + 8))(v101, v272);
LABEL_71:
          (*(v92 + 8))(v275, v91);
          return v173;
        }

        goto LABEL_87;
      }

      v193 = v263;
      if (v110 == *MEMORY[0x277D178A0] || v110 == *MEMORY[0x277D17888])
      {
        v173 = sub_20DD64F04();
        (*(v273 + 8))(v101, v272);
LABEL_85:
        (*(v92 + 8))(v275, v91);
        (*(v108 + 8))(v193, v109);
        return v173;
      }

      if (v110 == *MEMORY[0x277D17870])
      {
        (*(v108 + 96))(v263, v109);
        v181 = v220;
        v182 = v218;
        v207 = v193;
        v183 = v219;
        (*(v220 + 32))(v218, v207, v219);
        v184 = v217;
        (*(v181 + 16))(v217, v182, v183);
        v208 = (*(v181 + 88))(v184, v183);
        if (v208 == *MEMORY[0x277D17878] || v208 == *MEMORY[0x277D17880])
        {
          goto LABEL_60;
        }

LABEL_87:
        v210 = *(v181 + 8);
        v210(v182, v183);
        (*(v273 + 8))(v101, v272);
LABEL_96:
        (*(v92 + 8))(v275, v91);
        v210(v184, v183);
        return 0;
      }

      (*(v273 + 8))(v101, v272);
LABEL_93:
      (*(v92 + 8))(v275, v91);
      (*(v108 + 8))(v193, v109);
      return 0;
    }

    v109 = v267;
    if (v106 != *MEMORY[0x277D17838] && v106 != *MEMORY[0x277D17840])
    {
      v108 = v268;
      v130 = v269;
      if (v106 != *MEMORY[0x277D17828])
      {
        (*(v273 + 8))(v274, v272);
        (*(v92 + 8))(v275, v91);
        (*(v270 + 1))(v71, v105);
        return 0;
      }

      v131 = v235;
      sub_20DD648A4();
      v132 = v245;
      sub_20DD64884();
      v102(v131, v271);
      v133 = (*(v108 + 88))(v132, v109);
      if (v133 == *MEMORY[0x277D17898])
      {
        (*(v108 + 96))(v132, v109);
        v111 = v130;
        v112 = v232;
        v134 = v132;
        v114 = v264;
        (*(v130 + 32))(v232, v134, v264);
        v115 = v227;
        (*(v130 + 16))(v227, v112, v114);
        v116 = (*(v130 + 88))(v115, v114);
        if (v116 == *MEMORY[0x277D17868])
        {
          (*(v130 + 96))(v115, v114);
          v135 = v248;
          v136 = v247;
          v137 = v258;
          (*(v248 + 32))(v247, v115, v258);
          v271 = v91;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
          v138 = swift_allocObject();
          *(v138 + 16) = xmmword_20DD93A70;
          v139 = sub_20DD64824();
          v141 = v140;
          *(v138 + 56) = MEMORY[0x277D837D0];
          *(v138 + 64) = sub_20DA52BE8();
          *(v138 + 32) = v139;
          *(v138 + 40) = v141;
          v126 = sub_20DD64F14();

          (*(v135 + 8))(v136, v137);
          (*(v111 + 8))(v232, v114);
          (*(v273 + 8))(v274, v272);
          goto LABEL_7;
        }

        goto LABEL_31;
      }

      v194 = v264;
      if (v133 == *MEMORY[0x277D17848])
      {
        v195 = v245;
        (*(v108 + 96))(v245, v109);
        v196 = v223;
        (*(v130 + 32))(v223, v195, v194);
        v197 = v224;
        (*(v130 + 16))(v224, v196, v194);
        v198 = (*(v130 + 88))(v197, v194);
        if (v198 == *MEMORY[0x277D17868])
        {
          v173 = sub_20DD64F04();
          v199 = *(v130 + 8);
          v199(v196, v194);
          (*(v273 + 8))(v274, v272);
          (*(v92 + 8))(v275, v91);
          v199(v197, v194);
          return v173;
        }

        if (v198 == *MEMORY[0x277D17860])
        {
          v173 = sub_20DD64F04();
          (*(v130 + 8))(v196, v194);
          goto LABEL_70;
        }

        v209 = *(v130 + 8);
        v209(v196, v194);
        (*(v273 + 8))(v274, v272);
        (*(v92 + 8))(v275, v91);
        v209(v197, v194);
        return 0;
      }

      if (v133 == *MEMORY[0x277D17890])
      {
        v205 = v245;
        (*(v108 + 96))(v245, v109);
        v189 = v234;
        v190 = v222;
        v183 = v233;
        (*(v234 + 32))(v222, v205, v233);
        v191 = *(v189 + 16);
        v192 = &v253;
        goto LABEL_67;
      }

      v193 = v245;
      if (v133 == *MEMORY[0x277D178A0] || v133 == *MEMORY[0x277D17888])
      {
        goto LABEL_84;
      }

      if (v133 == *MEMORY[0x277D17870])
      {
        (*(v108 + 96))(v245, v109);
        v189 = v220;
        v190 = v214;
        v211 = v193;
        v183 = v219;
        (*(v220 + 32))(v214, v211, v219);
        v201 = *(v189 + 16);
        v202 = &v245;
        goto LABEL_90;
      }

      goto LABEL_92;
    }

    v156 = v249;
    sub_20DD648A4();
    v157 = v259;
    sub_20DD64884();
    v102(v156, v271);
    v108 = v268;
    v158 = (*(v268 + 88))(v157, v109);
    v111 = v269;
    if (v158 == *MEMORY[0x277D17898])
    {
      (*(v108 + 96))(v157, v109);
      v112 = v246;
      v159 = v157;
      v114 = v264;
      (*(v111 + 32))(v246, v159, v264);
      v115 = v236;
      (*(v111 + 16))(v236, v112, v114);
      v116 = (*(v111 + 88))(v115, v114);
      if (v116 == *MEMORY[0x277D17868])
      {
        (*(v111 + 96))(v115, v114);
        v160 = v248;
        v161 = v247;
        (*(v248 + 32))(v247, v115, v258);
        v162 = v273;
        v271 = "yHistory_EveryoneWentAway";
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
        v163 = swift_allocObject();
        *(v163 + 16) = xmmword_20DD93A70;
        v164 = sub_20DD64824();
        v166 = v165;
        *(v163 + 56) = MEMORY[0x277D837D0];
        *(v163 + 64) = sub_20DA52BE8();
        *(v163 + 32) = v164;
        *(v163 + 40) = v166;
        v126 = sub_20DD64F14();

        (*(v160 + 8))(v161, v258);
        (*(v111 + 8))(v246, v114);
        (*(v162 + 8))(v274, v272);
        (*(v92 + 8))(v275, v100);
        return v126;
      }

LABEL_31:
      if (v116 == *MEMORY[0x277D17860])
      {
LABEL_32:
        v173 = sub_20DD64F04();
        (*(v111 + 8))(v112, v114);
LABEL_70:
        (*(v273 + 8))(v274, v272);
        goto LABEL_71;
      }

      v186 = *(v111 + 8);
      v186(v112, v114);
      (*(v273 + 8))(v274, v272);
      (*(v92 + 8))(v275, v91);
      v187 = v115;
      goto LABEL_41;
    }

    v114 = v264;
    if (v158 != *MEMORY[0x277D17848])
    {
      if (v158 == *MEMORY[0x277D17890])
      {
        v188 = v259;
        (*(v108 + 96))(v259, v109);
        v189 = v234;
        v190 = v226;
        v183 = v233;
        (*(v234 + 32))(v226, v188, v233);
        v191 = *(v189 + 16);
        v192 = &v257;
LABEL_67:
        v184 = *(v192 - 32);
        v191(v184, v190, v183);
        v206 = (*(v189 + 88))(v184, v183);
        if (v206 == *MEMORY[0x277D17858] || v206 == *MEMORY[0x277D17850])
        {
LABEL_69:
          v173 = sub_20DD64F04();
          (*(v189 + 8))(v190, v183);
          goto LABEL_70;
        }

LABEL_95:
        v210 = *(v189 + 8);
        v210(v190, v183);
        (*(v273 + 8))(v274, v272);
        goto LABEL_96;
      }

      v193 = v259;
      if (v158 == *MEMORY[0x277D178A0] || v158 == *MEMORY[0x277D17888])
      {
LABEL_84:
        v173 = sub_20DD64F04();
        (*(v273 + 8))(v274, v272);
        goto LABEL_85;
      }

      if (v158 == *MEMORY[0x277D17870])
      {
        (*(v108 + 96))(v259, v109);
        v189 = v220;
        v190 = v216;
        v200 = v193;
        v183 = v219;
        (*(v220 + 32))(v216, v200, v219);
        v201 = *(v189 + 16);
        v202 = &v247;
LABEL_90:
        v184 = *(v202 - 32);
        v201(v184, v190, v183);
        v212 = (*(v189 + 88))(v184, v183);
        if (v212 == *MEMORY[0x277D17878] || v212 == *MEMORY[0x277D17880])
        {
          goto LABEL_69;
        }

        goto LABEL_95;
      }

LABEL_92:
      (*(v273 + 8))(v274, v272);
      goto LABEL_93;
    }

    v176 = v259;
    (*(v108 + 96))(v259, v109);
    v112 = v228;
    (*(v111 + 32))(v228, v176, v114);
    v177 = v229;
    (*(v111 + 16))(v229, v112, v114);
    v178 = (*(v111 + 88))(v177, v114);
    if (v178 != *MEMORY[0x277D17868])
    {
      if (v178 == *MEMORY[0x277D17860])
      {
        goto LABEL_32;
      }

      v186 = *(v111 + 8);
      v186(v112, v114);
      (*(v273 + 8))(v274, v272);
      (*(v92 + 8))(v275, v91);
      v187 = v177;
LABEL_41:
      v186(v187, v114);
      return 0;
    }

    v173 = sub_20DD64F04();
    v179 = *(v111 + 8);
    v179(v112, v114);
    (*(v273 + 8))(v274, v272);
    (*(v92 + 8))(v275, v91);
    v179(v177, v114);
  }

  else
  {
    if (v99 == *MEMORY[0x277D17778])
    {
      v128 = sub_20DD64F04();
      v129 = *(v92 + 8);
      v129(v98, v91);
      v129(v96, v91);
      return v128;
    }

    if (v99 != *MEMORY[0x277D17780])
    {
      v175 = *(v92 + 8);
      v175(v98, v91);
      v175(v96, v91);
      return 0;
    }

    (*(v92 + 96))(v96, v91);
    v143 = v261;
    v142 = v262;
    v144 = v257;
    (*(v262 + 32))(v261, v96, v257);
    v145 = v251;
    sub_20DD64924();
    v146 = v254;
    sub_20DD64904();
    (*(v252 + 8))(v145, v253);
    v148 = v255;
    v147 = v256;
    if ((*(v255 + 88))(v146, v256) != *MEMORY[0x277D178B8])
    {
      (*(v142 + 8))(v143, v144);
      (*(v92 + 8))(v98, v100);
      (*(v148 + 8))(v146, v147);
      return 0;
    }

    (*(v148 + 96))(v146, v147);
    v149 = v241;
    v150 = v239;
    v151 = v242;
    (*(v241 + 32))(v239, v146, v242);
    v152 = v240;
    sub_20DD648D4();
    v153 = v243;
    v154 = v244;
    v155 = (*(v243 + 88))(v152, v244);
    if (v155 != *MEMORY[0x277D178A8] && v155 != *MEMORY[0x277D178B0])
    {
      (*(v149 + 8))(v150, v151);
      (*(v262 + 8))(v261, v144);
      (*(v92 + 8))(v98, v100);
      (*(v153 + 8))(v152, v154);
      return 0;
    }

    v173 = sub_20DD64F04();
    (*(v149 + 8))(v150, v151);
    (*(v262 + 8))(v261, v144);
    (*(v92 + 8))(v98, v100);
  }

  return v173;
}

uint64_t sub_20DA504BC(void *a1)
{
  v2 = HFEvent.accessory.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 hf_serviceNameComponents];

    v5 = [v4 serviceName];
    sub_20DD64EB4();
  }

  else
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_20DD647C4();
  }

  v7 = HFEvent.room.getter();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 name];

    sub_20DD64EB4();
  }

  else
  {
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_20DD647F4();
  }

  v11 = objc_allocWithZone(HFServiceNameComponents);
  v12 = sub_20DD64E74();

  v13 = sub_20DD64E74();

  v14 = [v11 initWithRawServiceName:v12 rawRoomName:v13];

  v15 = [v14 composedString];
  v16 = sub_20DD64EB4();

  return v16;
}

uint64_t sub_20DA50684()
{
  v1 = v0;
  v2 = sub_20DD64804();
  v86 = *(v2 - 1);
  v87 = v2;
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20DD64894();
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20DD648B4();
  v89 = *(v10 - 8);
  v90 = v10;
  v11 = *(v89 + 64);
  MEMORY[0x28223BE20](v10);
  v88 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20DD649D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20DD64784();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v82 - v24;
  (*(v14 + 16))(v17, v1, v13);
  if ((*(v14 + 88))(v17, v13) != *MEMORY[0x277D17970])
  {
    (*(v14 + 8))(v17, v13);
    return 0;
  }

  (*(v14 + 96))(v17, v13);
  (*(v19 + 32))(v25, v17, v18);
  (*(v19 + 16))(v23, v25, v18);
  v26 = (*(v19 + 88))(v23, v18);
  v27 = v19;
  if (v26 == *MEMORY[0x277D17770])
  {
    v83 = v25;
    (*(v19 + 96))(v23, v18);
    (*(v89 + 32))(v88, v23, v90);
    v28 = [objc_opt_self() sharedInstance];
    v29 = [v28 temperatureFormatter];

    sub_20DD648A4();
    sub_20DD64874();
    (*(v84 + 8))(v9, v85);
    v31 = v86;
    v30 = v87;
    v32 = (*(v86 + 88))(v5, v87);
    if (v32 == *MEMORY[0x277D17830])
    {
      v85 = v18;
      (*(v31 + 96))(v5, v30);
      v33 = *v5;
      v34 = v5[1];
      v35 = sub_20DD651B4();
      v36 = [v29 stringForObjectValue_];

      if (v36)
      {
        v86 = sub_20DD64EB4();
        v84 = v37;
      }

      else
      {
        v86 = 0;
        v84 = 0xE000000000000000;
      }

      v56 = sub_20DD651B4();
      v87 = v29;
      v57 = [v29 stringForObjectValue_];

      v58 = v27;
      if (v57)
      {
        v59 = sub_20DD64EB4();
        v61 = v60;
      }

      else
      {
        v59 = 0;
        v61 = 0xE000000000000000;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_20DD95210;
      v63 = v83;
      sub_20DD64774();
      __swift_project_boxed_opaque_existential_0(v91, v92);
      v64 = sub_20DD647C4();
      v66 = v65;
      v67 = MEMORY[0x277D837D0];
      *(v62 + 56) = MEMORY[0x277D837D0];
      v68 = sub_20DA52BE8();
      *(v62 + 32) = v64;
      *(v62 + 40) = v66;
      *(v62 + 96) = v67;
      *(v62 + 104) = v68;
      v69 = v86;
      *(v62 + 64) = v68;
      *(v62 + 72) = v69;
      *(v62 + 80) = v84;
      *(v62 + 136) = v67;
      *(v62 + 144) = v68;
      *(v62 + 112) = v59;
      *(v62 + 120) = v61;
      __swift_destroy_boxed_opaque_existential_0(v91);
      v51 = sub_20DD64F14();

      (*(v89 + 8))(v88, v90);
      (*(v58 + 8))(v63, v85);
      return v51;
    }

    if (v32 == *MEMORY[0x277D17838])
    {
      v85 = v18;
      (*(v31 + 96))(v5, v30);
      v39 = *v5;
      v40 = sub_20DD651B4();
      v41 = [v29 stringForObjectValue_];

      v82 = v27;
      v42 = v29;
      if (!v41)
      {
        v43 = 0;
        v45 = 0xE000000000000000;
        goto LABEL_29;
      }

LABEL_12:
      v43 = sub_20DD64EB4();
      v45 = v44;

LABEL_29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_20DD94280;
      v76 = v83;
      sub_20DD64774();
      __swift_project_boxed_opaque_existential_0(v91, v92);
      v77 = sub_20DD647C4();
      v79 = v78;
      v80 = MEMORY[0x277D837D0];
      *(v75 + 56) = MEMORY[0x277D837D0];
      v81 = sub_20DA52BE8();
      *(v75 + 32) = v77;
      *(v75 + 40) = v79;
      *(v75 + 96) = v80;
      *(v75 + 104) = v81;
      *(v75 + 64) = v81;
      *(v75 + 72) = v43;
      *(v75 + 80) = v45;
      __swift_destroy_boxed_opaque_existential_0(v91);
      v51 = sub_20DD64F14();

      (*(v89 + 8))(v88, v90);
      (*(v82 + 8))(v76, v85);
      return v51;
    }

    if (v32 == *MEMORY[0x277D17840])
    {
      v85 = v18;
      (*(v31 + 96))(v5, v30);
      v53 = *v5;
      v54 = sub_20DD651B4();
      v41 = [v29 stringForObjectValue_];

      v82 = v27;
      v42 = v29;
      if (!v41)
      {
        v43 = 0;
        v45 = 0xE000000000000000;
        goto LABEL_29;
      }

      goto LABEL_12;
    }

    if (v32 == *MEMORY[0x277D17828])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_20DD93A70;
      v71 = v83;
      sub_20DD64774();
      __swift_project_boxed_opaque_existential_0(v91, v92);
      v72 = sub_20DD647C4();
      v74 = v73;
      *(v70 + 56) = MEMORY[0x277D837D0];
      *(v70 + 64) = sub_20DA52BE8();
      *(v70 + 32) = v72;
      *(v70 + 40) = v74;
      __swift_destroy_boxed_opaque_existential_0(v91);
      v51 = sub_20DD64F14();

      (*(v89 + 8))(v88, v90);
      (*(v27 + 8))(v71, v18);
      return v51;
    }

    (*(v89 + 8))(v88, v90);
    (*(v27 + 8))(v83, v18);
    (*(v31 + 8))(v5, v30);
    return 0;
  }

  if (v26 != *MEMORY[0x277D17778] && v26 != *MEMORY[0x277D17780])
  {
    v55 = *(v19 + 8);
    v55(v25, v18);
    v55(v23, v18);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20DD93A70;
  v47 = v25;
  sub_20DD64774();
  __swift_project_boxed_opaque_existential_0(v91, v92);
  v48 = sub_20DD647C4();
  v50 = v49;
  *(v46 + 56) = MEMORY[0x277D837D0];
  *(v46 + 64) = sub_20DA52BE8();
  *(v46 + 32) = v48;
  *(v46 + 40) = v50;
  __swift_destroy_boxed_opaque_existential_0(v91);
  v51 = sub_20DD64F14();

  v52 = *(v19 + 8);
  v52(v47, v18);
  v52(v23, v18);
  return v51;
}

uint64_t sub_20DA51270()
{
  v139 = sub_20DD64744();
  v137 = *(v139 - 8);
  v0 = *(v137 + 64);
  MEMORY[0x28223BE20](v139);
  v135 = &v127 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_20DD64764();
  v138 = *(v140 - 8);
  v2 = *(v138 + 64);
  MEMORY[0x28223BE20](v140);
  v136 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_20DD64794();
  v141 = *(v143 - 8);
  v4 = *(v141 + 64);
  MEMORY[0x28223BE20](v143);
  v146 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_20DD647B4();
  v144 = *(v145 - 8);
  v6 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v142 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20DD64944();
  v163 = *(v8 - 8);
  v164 = v8;
  v9 = *(v163 + 64);
  MEMORY[0x28223BE20](v8);
  v160 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20DD64964();
  v161 = *(v11 - 8);
  v162 = v11;
  v12 = *(v161 + 64);
  MEMORY[0x28223BE20](v11);
  v159 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_20DD64634();
  v133 = *(v134 - 8);
  v14 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v130 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_20DD64654();
  v131 = *(v132 - 8);
  v16 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v129 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_20DD646A4();
  v157 = *(v153 - 8);
  v18 = *(v157 + 64);
  MEMORY[0x28223BE20](v153);
  v156 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20DD646C4();
  v21 = *(v20 - 8);
  v154 = v20;
  v155 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v158 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20DD64714();
  v166 = *(v24 - 8);
  v167 = v24;
  v25 = *(v166 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20DD64734();
  v165 = *(v28 - 8);
  v29 = *(v165 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_20DD64974();
  v148 = *(v149 - 8);
  v32 = *(v148 + 64);
  MEMORY[0x28223BE20](v149);
  v147 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20DD64994();
  v151 = *(v34 - 8);
  v152 = v34;
  v35 = *(v151 + 64);
  MEMORY[0x28223BE20](v34);
  v150 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20DD649D4();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20DD64784();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v127 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = &v127 - v48;
  (*(v38 + 16))(v41, v168, v37);
  if ((*(v38 + 88))(v41, v37) != *MEMORY[0x277D17970])
  {
    (*(v38 + 8))(v41, v37);
    return 0;
  }

  (*(v38 + 96))(v41, v37);
  (*(v43 + 32))(v49, v41, v42);
  (*(v43 + 16))(v47, v49, v42);
  v50 = (*(v43 + 88))(v47, v42);
  v51 = v42;
  v52 = v49;
  if (v50 != *MEMORY[0x277D17758])
  {
    if (v50 == *MEMORY[0x277D17788])
    {
      (*(v43 + 96))(v47, v42);
      v58 = v161;
      v57 = v162;
      v59 = v159;
      (*(v161 + 32))(v159, v47, v162);
      v60 = v160;
      sub_20DD64954();
      v62 = v163;
      v61 = v164;
      v63 = (*(v163 + 88))(v60, v164);
      if (v63 == *MEMORY[0x277D178E0])
      {
LABEL_10:
        (*(v58 + 8))(v59, v57);
LABEL_35:
        (*(v43 + 8))(v52, v51);
        return 0;
      }

      v75 = v63 == *MEMORY[0x277D178C0];
      v69 = v168;
      v128 = v52;
      if (v75)
      {
        goto LABEL_19;
      }

      if (v63 == *MEMORY[0x277D178C8])
      {
LABEL_30:
        v64 = v51;
        v67 = 0x736E6553726F6F44;
        v66 = 0x6465736F6C43;
        (*(v58 + 8))(v59, v57);
        v68 = 0xE600000000000000;
        goto LABEL_31;
      }

      if (v63 == *MEMORY[0x277D178D8])
      {
LABEL_19:
        v64 = v51;
        v67 = 0x736E6553726F6F44;
        v66 = 1852141647;
        (*(v58 + 8))(v59, v57);
        v68 = 0xE400000000000000;
LABEL_31:
        v65 = 0xEF6574617453726FLL;
        goto LABEL_81;
      }

      if (v63 == *MEMORY[0x277D178D0])
      {
        goto LABEL_30;
      }

LABEL_50:
      (*(v58 + 8))(v59, v57);
      (*(v62 + 8))(v60, v61);
      goto LABEL_35;
    }

    if (v50 == *MEMORY[0x277D17750])
    {
      (*(v43 + 96))(v47, v42);
      v28 = v154;
      v70 = v155;
      v71 = v158;
      (*(v155 + 32))(v158, v47, v154);
      v72 = v156;
      sub_20DD646B4();
      v73 = v153;
      v74 = (*(v157 + 88))(v72, v153);
      if (v74 == *MEMORY[0x277D176E8])
      {
        v55 = *(v70 + 8);
        v56 = v71;
        goto LABEL_5;
      }

      v65 = 0x800000020DD99790;
      v67 = 0xD000000000000014;
      v75 = v74 == *MEMORY[0x277D176C0];
      v128 = v52;
      if (v75)
      {
        v86 = v71;
        v64 = v51;
        v66 = 1852141647;
        (*(v70 + 8))(v86, v28);
        goto LABEL_13;
      }

      v69 = v168;
      if (v74 == *MEMORY[0x277D176C8])
      {
        v92 = v71;
        v64 = v51;
        v66 = 0x6465736F6C43;
        (*(v70 + 8))(v92, v28);
        goto LABEL_22;
      }

      if (v74 == *MEMORY[0x277D176D8])
      {
        v95 = v71;
        v64 = v51;
        (*(v70 + 8))(v95, v28);
        v68 = 0xE700000000000000;
        v96 = 1852141647;
LABEL_71:
        v66 = v96 | 0x676E6900000000;
        goto LABEL_81;
      }

      v64 = v51;
      if (v74 == *MEMORY[0x277D176D0])
      {
        (*(v70 + 8))(v158, v28);
        v68 = 0xE700000000000000;
        v96 = 1936682051;
        goto LABEL_71;
      }

      if (v74 == *MEMORY[0x277D176E0])
      {
        (*(v70 + 8))(v158, v28);
        v68 = 0xE700000000000000;
        v66 = 0x646570706F7453;
        goto LABEL_81;
      }

      v125 = *MEMORY[0x277D176B8];
      v126 = v74;
      (*(v70 + 8))(v158, v28);
      if (v126 == v125)
      {
        v68 = 0xEA00000000006465;
        v66 = 0x746375727473624FLL;
        goto LABEL_81;
      }

      (*(v157 + 8))(v156, v73);
LABEL_33:
      v51 = v64;
LABEL_34:
      v52 = v128;
      goto LABEL_35;
    }

    if (v50 == *MEMORY[0x277D17790])
    {
      (*(v43 + 96))(v47, v42);
      v80 = v151;
      v79 = v152;
      v81 = v150;
      (*(v151 + 32))(v150, v47, v152);
      v82 = v147;
      sub_20DD64984();
      v83 = v148;
      v84 = v149;
      v85 = (*(v148 + 88))(v82, v149);
      if (v85 == *MEMORY[0x277D17928])
      {
        (*(v80 + 8))(v81, v79);
        goto LABEL_35;
      }

      v75 = v85 == *MEMORY[0x277D17930];
      v128 = v52;
      if (v75)
      {
        v64 = v51;
        v68 = 0xE800000000000000;
        v66 = 0x64656B636F6C6E55;
        v69 = v168;
      }

      else
      {
        v69 = v168;
        if (v85 == *MEMORY[0x277D17918])
        {
          v64 = v51;
          v68 = 0xE600000000000000;
          v94 = 1801678668;
        }

        else
        {
          if (v85 == *MEMORY[0x277D17938])
          {
            v64 = v51;
            v68 = 0xE900000000000067;
            v66 = 0x6E696B636F6C6E55;
            goto LABEL_80;
          }

          if (v85 == *MEMORY[0x277D17920])
          {
            v64 = v51;
            v68 = 0xE700000000000000;
            v66 = 0x676E696B636F4CLL;
            goto LABEL_80;
          }

          if (v85 != *MEMORY[0x277D17910])
          {
            (*(v80 + 8))(v81, v79);
            (*(v83 + 8))(v82, v84);
            goto LABEL_35;
          }

          v64 = v51;
          v68 = 0xE600000000000000;
          v94 = 1835884874;
        }

        v66 = v94 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
      }

LABEL_80:
      (*(v80 + 8))(v81, v79);
      v65 = 0xEE00657461745374;
      v67 = 0x6E6576456B636F4CLL;
      goto LABEL_81;
    }

    if (v50 == *MEMORY[0x277D17768])
    {
      (*(v43 + 96))(v47, v42);
      v58 = v144;
      v59 = v142;
      v57 = v145;
      (*(v144 + 32))(v142, v47, v145);
      v88 = v146;
      sub_20DD647A4();
      v89 = v141;
      v90 = v143;
      v91 = (*(v141 + 88))(v88, v143);
      if (v91 == *MEMORY[0x277D177C0])
      {
        goto LABEL_10;
      }

      if (v91 == *MEMORY[0x277D177D0])
      {
        v128 = v52;
        v64 = v51;
        v68 = 0xE800000000000000;
        v66 = 0x64656D7261736944;
      }

      else
      {
        if (v91 == *MEMORY[0x277D177B8] || v91 == *MEMORY[0x277D177E0])
        {
          goto LABEL_10;
        }

        v128 = v52;
        v64 = v51;
        if (v91 != *MEMORY[0x277D177C8])
        {
          v68 = 0xE900000000000064;
          v66 = 0x656D724179617453;
          v69 = v168;
          if (v91 == *MEMORY[0x277D177D8])
          {
            v66 = 0x656D724179617741;
          }

          else if (v91 == *MEMORY[0x277D177B0])
          {
            v68 = 0xEA00000000006465;
            v66 = 0x6D7241746867694ELL;
          }

          else if (v91 != *MEMORY[0x277D177E8])
          {
            (*(v58 + 8))(v59, v57);
            (*(v89 + 8))(v146, v90);
            goto LABEL_33;
          }

LABEL_42:
          v65 = 0x800000020DD99750;
          (*(v58 + 8))(v59, v57);
          v67 = 0xD000000000000013;
          goto LABEL_81;
        }

        v66 = 0x676E696D72616C41;
        v68 = 0xE800000000000000;
      }

      v69 = v168;
      goto LABEL_42;
    }

    if (v50 == *MEMORY[0x277D17760])
    {
      (*(v43 + 96))(v47, v42);
      v58 = v138;
      v59 = v136;
      v57 = v140;
      (*(v138 + 32))(v136, v47, v140);
      v60 = v135;
      sub_20DD64754();
      v62 = v137;
      v61 = v139;
      v93 = (*(v137 + 88))(v60, v139);
      if (v93 == *MEMORY[0x277D17740])
      {
        goto LABEL_10;
      }

      if (v93 == *MEMORY[0x277D17738])
      {
        v128 = v52;
        v64 = v51;
        v68 = 0xE600000000000000;
        v66 = 0x6C616D726F4ELL;
        v69 = v168;
      }

      else
      {
        v69 = v168;
        if (v93 != *MEMORY[0x277D17748])
        {
          goto LABEL_50;
        }

        v128 = v52;
        v64 = v51;
        v66 = 0x676E696D72616C41;
        v68 = 0xE800000000000000;
      }

      v65 = 0x800000020DD99730;
      (*(v58 + 8))(v59, v57);
      v67 = 0xD000000000000012;
      goto LABEL_81;
    }

    v128 = v49;
    if (v50 != *MEMORY[0x277D17798])
    {
      v104 = *(v43 + 8);
      v104(v128, v42);
      v104(v47, v42);
      return 0;
    }

    (*(v43 + 96))(v47, v42);
    v97 = v131;
    v98 = v129;
    v99 = v132;
    (*(v131 + 32))(v129, v47, v132);
    v100 = v130;
    sub_20DD64644();
    v101 = v133;
    v102 = v134;
    v103 = (*(v133 + 88))(v100, v134);
    if (v103 == *MEMORY[0x277D175F8])
    {
      (*(v97 + 8))(v98, v99);
      goto LABEL_34;
    }

    v65 = 0x800000020DD99770;
    v69 = v168;
    if (v103 == *MEMORY[0x277D175D8])
    {
LABEL_77:
      v64 = v51;
      v66 = 1852141647;
      (*(v97 + 8))(v98, v99);
      v67 = 0xD000000000000011;
      v68 = 0xE400000000000000;
      goto LABEL_81;
    }

    if (v103 != *MEMORY[0x277D175E0])
    {
      if (v103 == *MEMORY[0x277D175F0])
      {
        goto LABEL_77;
      }

      if (v103 != *MEMORY[0x277D175E8])
      {
        (*(v97 + 8))(v98, v99);
        (*(v101 + 8))(v100, v102);
        goto LABEL_34;
      }
    }

    v64 = v51;
    v66 = 0x6465736F6C43;
    (*(v97 + 8))(v98, v99);
    v67 = 0xD000000000000011;
    goto LABEL_22;
  }

  (*(v43 + 96))(v47, v42);
  v53 = v165;
  (*(v165 + 32))(v31, v47, v28);
  sub_20DD64724();
  v54 = (*(v166 + 88))(v27, v167);
  if (v54 == *MEMORY[0x277D17730])
  {
    v55 = *(v53 + 8);
    v56 = v31;
LABEL_5:
    v55(v56, v28);
    goto LABEL_35;
  }

  v128 = v49;
  v64 = v42;
  v65 = 0x800000020DD997B0;
  if (v54 != *MEMORY[0x277D17720])
  {
    v76 = *MEMORY[0x277D17728];
    v77 = *(v53 + 8);
    v78 = v54;
    v77(v31, v28);
    v69 = v168;
    if (v78 == v76)
    {
      v66 = 0x6465736F6C43;
      v67 = 0xD000000000000011;
LABEL_22:
      v68 = 0xE600000000000000;
      goto LABEL_81;
    }

    (*(v166 + 8))(v27, v167);
    goto LABEL_33;
  }

  v66 = 1852141647;
  (*(v53 + 8))(v31, v28);
  v67 = 0xD000000000000011;
LABEL_13:
  v68 = 0xE400000000000000;
  v69 = v168;
LABEL_81:
  v169 = v67;
  v170 = v65;
  MEMORY[0x20F325E90](v66, v68);

  v106 = v169;
  v105 = v170;
  v107 = HFEvent.home.getter();
  if (!v107)
  {
    goto LABEL_84;
  }

  v108 = v107;
  v109 = [v107 hf_allUsersIncludingCurrentUser];

  sub_20DA52C3C();
  v110 = sub_20DD64FD4();

  MEMORY[0x28223BE20](v111);
  *(&v127 - 2) = v69;
  v112 = sub_20DA36A4C(sub_20DA3315C, (&v127 - 4), v110);

  if (v112)
  {
    v113 = [v112 name];
  }

  else
  {
LABEL_84:
    v114 = HFEvent.guestUser.getter();
    if (!v114 || (v115 = v114, v113 = [v114 simpleLabel], v115, !v113))
    {
      v123 = sub_20DD64E74();

      v124 = HFLocalizedString(v123);

      v122 = sub_20DD64EB4();
      goto LABEL_88;
    }
  }

  v116 = sub_20DD64EB4();
  v118 = v117;

  v169 = v106;
  v170 = v105;
  MEMORY[0x20F325E90](0x4025726573557942, 0xE800000000000000);
  v119 = sub_20DD64E74();

  v120 = HFLocalizedString(v119);

  sub_20DD64EB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_20DD93A70;
  *(v121 + 56) = MEMORY[0x277D837D0];
  *(v121 + 64) = sub_20DA52BE8();
  *(v121 + 32) = v116;
  *(v121 + 40) = v118;
  v122 = sub_20DD64E84();

LABEL_88:
  (*(v43 + 8))(v128, v64);
  return v122;
}

unint64_t sub_20DA52BE8()
{
  result = qword_27C8446D8;
  if (!qword_27C8446D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8446D8);
  }

  return result;
}

unint64_t sub_20DA52C3C()
{
  result = qword_27C844400;
  if (!qword_27C844400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C844400);
  }

  return result;
}

uint64_t sub_20DA52C88(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_20DD655B4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_20D9EF64C(v3, 0);
  sub_20DA16DC0(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_20DA52D1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void sub_20DA52D74(uint64_t a1)
{
  v1 = a1;
  v23 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
    sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);
    sub_20DD65284();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v16 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_20DD655F4() || (sub_20D9D7510(0, &qword_27C844290, 0x277CD1650), swift_dynamicCast(), v13 = v17, v4 = v9, v5 = v10, !v17))
      {
LABEL_22:
        sub_20D9C51CC();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 room];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x20F325F00]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20DD65014();
      }

      sub_20DD65054();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_20DA53050@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void, void, uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = -1 << *(a1 + 32);
  v9 = sub_20DD65514();
  v10 = 1;
  if (v9 != 1 << *(a1 + 32))
  {
    a2(v9, *(a1 + 36), 0, a1);
    v10 = 0;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

uint64_t sub_20DA53124(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_20DD65514();
  if (v3 == 1 << *(a1 + 32))
  {
    return 6;
  }

  v5 = *(a1 + 36);

  return sub_20DA73784(v3, v5, 0, a1);
}

uint64_t sub_20DA5319C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_20DD636C4();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a2, a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v5, v6);
    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = sub_20DD636C4();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t sub_20DA532F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_20DD65554();
    v7 = v6;
    v8 = sub_20DD65614();
    v10 = v9;
    v11 = MEMORY[0x20F3264E0](v5, v7, v8, v9);
    sub_20D9EF46C(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_20D9EF46C(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v5 = sub_20DD65514();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v14 = a2(v5, v7, v4 != 0, a1);
  sub_20D9EF46C(v5, v7, v4 != 0);
  return v14;
}

uint64_t HFAccessoryLikeObject.components.getter()
{
  if ([v0 homeKitObject])
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8441D0, &unk_20DD95880);
      result = swift_allocObject();
      *(result + 16) = xmmword_20DD93A70;
      v4 = &protocol witness table for HMServiceGroup;
LABEL_6:
      *(result + 32) = v2;
      *(result + 40) = v4;
      return result;
    }

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v2 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8441D0, &unk_20DD95880);
      result = swift_allocObject();
      *(result + 16) = xmmword_20DD93A70;
      v4 = &protocol witness table for HMMediaSystem;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  return MEMORY[0x277D84F90];
}

uint64_t HFAccessoryLikeObject.elements.getter()
{
  v1 = v0;
  if ([v0 homeKitObject])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v2 = HMMediaProfile.elements.getter();
LABEL_4:
      v3 = v2;
      swift_unknownObjectRelease_n();
      return v3;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      return MEMORY[0x277D84F90];
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v2 = HMMediaSystem.leafElements.getter();
      goto LABEL_4;
    }

    swift_unknownObjectRelease();
  }

  v13 = MEMORY[0x277D84F90];
  v5 = [v0 services];
  sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  sub_20D9EC18C(&qword_27C843900, &qword_27C8435F0, 0x277CD1D90);
  v6 = sub_20DD651E4();

  v7 = sub_20DA55084(v6, sub_20D9EF64C, sub_20D9EB1EC);

  v8 = sub_20DA0B284(v7);

  sub_20DA12E14(v8);
  v9 = [v1 profiles];
  sub_20D9D7510(0, &unk_27C8442A0, 0x277CD1760);
  sub_20D9EC18C(&unk_27C8438E0, &unk_27C8442A0, 0x277CD1760);
  v10 = sub_20DD651E4();

  v11 = sub_20DA55084(v10, sub_20D9EF64C, sub_20D9EB208);

  v12 = sub_20DA0B3C0(v11);

  sub_20DA12E14(v12);
  return v13;
}

void *AccessoryComponent.capabilities.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = (*(a1 + 24))();
  v4 = result;
  v5 = result[2];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = result + 5;
    while (v7 < v4[2])
    {
      ++v7;
      v9 = *(v8 - 1);
      v10 = *v8;
      ObjectType = swift_getObjectType();
      v12[1] = v9;
      result = (*(*(v10 + 8) + 8))(v12, ObjectType);
      v6 |= v12[0];
      v8 += 2;
      if (v5 == v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
LABEL_7:

    *a2 = v6;
  }

  return result;
}

uint64_t AccessoryComponent.room.getter(uint64_t a1)
{
  v1 = HFAccessoryRepresentable.associatedAccessories.getter(a1);
  sub_20DA52D74(v1);
  v3 = v2;

  v4 = sub_20D9F91FC(v3);

  if ((v4 & 0xC000000000000001) == 0)
  {
    if (*(v4 + 16) == 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  if (sub_20DD655B4() != 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = sub_20DA532F0(v4, sub_20DA737D4);
LABEL_6:

  return v5;
}

BOOL sub_20DA53A08(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_20DA53A38@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_20DA53A64@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t HMMediaProfile.elements.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843FB0, &unk_20DD95650);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20DD93A70;
  *(v1 + 32) = v0;
  *(v1 + 40) = &protocol witness table for HMAccessoryProfile;
  v2 = v1;
  v10 = v1;
  v3 = [v0 accessory];
  if (!v3)
  {
    return v2;
  }

  v4 = v3;
  v5 = [v3 services];

  sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  v6 = sub_20DD64FD4();

  v7 = sub_20DA52C88(v6);
  v8 = sub_20DA0B284(v7);

  sub_20DA12E14(v8);
  return v10;
}

uint64_t HMMediaSystem.leafElements.getter()
{
  v1 = v0;
  v16 = MEMORY[0x277D84F90];
  v2 = [v0 hf_containedServices];
  sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  sub_20D9EC18C(&qword_27C843900, &qword_27C8435F0, 0x277CD1D90);
  v3 = sub_20DD651E4();

  v4 = sub_20DA55084(v3, sub_20D9EF64C, sub_20D9EB1EC);

  v15 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8446E0, &qword_20DD95890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8446E8, &unk_20DD95898);
  swift_dynamicCast();
  sub_20DA12E14(v14);
  v5 = v16;
  if (!*(v16 + 16))
  {
    sub_20D9D7510(0, &qword_280E01EC0, 0x277D86200);
    v6 = v1;
    v7 = sub_20DD65474();
    v8 = sub_20DD65384();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_20D9E0B38(0x6D656C456661656CLL, 0xEC00000073746E65, &v15);
      *(v9 + 12) = 2112;
      *(v9 + 14) = v6;
      *v10 = v6;
      v12 = v6;
      _os_log_impl(&dword_20D9BF000, v7, v8, "%s: No leaf elements found for media system %@", v9, 0x16u);
      sub_20DA55258(v10);
      MEMORY[0x20F327D10](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F327D10](v11, -1, -1);
      MEMORY[0x20F327D10](v9, -1, -1);
    }
  }

  return v5;
}

void HFAccessoryLikeObject.capabilities.getter(void *a1@<X8>)
{
  v2 = v1;
  v4 = HFAccessoryLikeObject.elements.getter();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v4 + 40);
    while (v8 < *(v5 + 16))
    {
      ++v8;
      v10 = *(v9 - 1);
      v11 = *v9;
      ObjectType = swift_getObjectType();
      v37 = v10;
      (*(*(v11 + 8) + 8))(&v36, ObjectType);
      v7 |= v36;
      v9 += 2;
      if (v6 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = 0;
LABEL_7:

    v13 = HFAccessoryLikeObject.components.getter();
    v14 = v13;
    v15 = *(v13 + 16);
    if (!v15)
    {
LABEL_11:
      v35 = a1;

      v21 = [v2 accessories];
      sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
      sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);
      v22 = sub_20DD651E4();

      if ((v22 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_20DD65564();
        sub_20DD65284();
        v22 = v37;
        v23 = v38;
        v24 = v39;
        v25 = v40;
        v26 = v41;
      }

      else
      {
        v27 = -1 << *(v22 + 32);
        v23 = v22 + 56;
        v24 = ~v27;
        v28 = -v27;
        if (v28 < 64)
        {
          v29 = ~(-1 << v28);
        }

        else
        {
          v29 = -1;
        }

        v26 = v29 & *(v22 + 56);

        v25 = 0;
      }

      v30 = (v24 + 64) >> 6;
      while (1)
      {
        if (v22 < 0)
        {
          if (!sub_20DD655F4() || (swift_dynamicCast(), (v33 = v36) == 0))
          {
LABEL_30:
            sub_20D9C51CC();

LABEL_33:
            *v35 = v7;
            return;
          }
        }

        else
        {
          v31 = v25;
          for (i = v26; !i; ++v31)
          {
            v25 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_36;
            }

            if (v25 >= v30)
            {
              goto LABEL_30;
            }

            i = *(v23 + 8 * v25);
          }

          v26 = (i - 1) & i;
          v33 = *(*(v22 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(i)))));
          if (!v33)
          {
            goto LABEL_30;
          }
        }

        if ([v33 hf_isRemoteControl])
        {
          sub_20D9C51CC();

          goto LABEL_32;
        }

        v34 = [v33 hf_isVisibleAsBridge];

        if (v34)
        {
          sub_20D9C51CC();

LABEL_32:
          v7 |= 4uLL;
          goto LABEL_33;
        }
      }
    }

    v16 = 0;
    v17 = (v13 + 40);
    while (v16 < *(v14 + 16))
    {
      ++v16;
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = swift_getObjectType();
      v37 = v18;
      (*(*(v19 + 8) + 8))(&v36, v20);
      v7 |= v36;
      v17 += 2;
      if (v15 == v16)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void HMService.capabilities.getter(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = 0;
  v5 = &selRef_getReturnValue_;
  if ([v1 hf_isVisible])
  {
    v62 = v1;
    v63 = a1;
    v6 = [v1 characteristics];
    v61 = sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    v7 = sub_20DD64FD4();

    v64 = v7;
    if (v7 >> 62)
    {
      goto LABEL_67;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20DD655B4())
    {
      v4 = 0;
      if (!i)
      {
        break;
      }

      v66 = v64 & 0xFFFFFFFFFFFFFF8;
      v67 = v64 & 0xC000000000000001;
      v65 = v64 + 32;
      while (1)
      {
        if (v67)
        {
          v9 = MEMORY[0x20F326680](v4, v64);
        }

        else
        {
          if (v4 >= *(v66 + 16))
          {
            goto LABEL_64;
          }

          v9 = *(v65 + 8 * v4);
        }

        v10 = v9;
        if (__OFADD__(v4++, 1))
        {
          break;
        }

        v12 = [objc_opt_self() hf_sensingCharacteristicTypes];
        v13 = sub_20DD651E4();

        v14 = [v10 characteristicType];
        v15 = sub_20DD64EB4();
        v17 = v16;

        if (*(v13 + 16) && (v18 = *(v13 + 40), sub_20DD65A64(), sub_20DD64F24(), v19 = sub_20DD65AA4(), v20 = -1 << *(v13 + 32), v21 = v19 & ~v20, ((*(v13 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
        {
          v22 = ~v20;
          while (1)
          {
            v23 = (*(v13 + 48) + 16 * v21);
            v24 = *v23 == v15 && v23[1] == v17;
            if (v24 || (sub_20DD65974() & 1) != 0)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v13 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v25 = [v10 properties];
          v26 = sub_20DD64FD4();

          v68 = sub_20DD64D54();
          v69 = v27;
          MEMORY[0x28223BE20](v68);
          v60 = &v68;
          v28 = sub_20D9DFE38(sub_20DA552C0, v59, v26);

          if (v28)
          {
            v4 = 2;
            goto LABEL_26;
          }
        }

        else
        {
LABEL_6:
        }

        if (v4 == i)
        {
          v4 = 0;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      ;
    }

LABEL_26:

    v2 = v62;
    v29 = [v62 hf_isSensorService];
    a1 = v63;
    if (v29)
    {
      goto LABEL_47;
    }

    v30 = [v2 characteristics];
    v31 = sub_20DD64FD4();

    v65 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 >> 62)
    {
      v67 = sub_20DD655B4();
    }

    else
    {
      v67 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = 0;
    v66 = v31 & 0xC000000000000001;
    v33 = *MEMORY[0x277CCF740];
    while (v67 != v32)
    {
      if (v66)
      {
        v34 = MEMORY[0x20F326680](v32, v31);
      }

      else
      {
        if (v32 >= *(v65 + 16))
        {
          goto LABEL_66;
        }

        v34 = *(v31 + 8 * v32 + 32);
      }

      v35 = v34;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_65;
      }

      v36 = v4;
      v37 = [v34 properties];
      v38 = sub_20DD64FD4();

      v68 = sub_20DD64EB4();
      v69 = v39;
      MEMORY[0x28223BE20](v68);
      v60 = &v68;
      v40 = sub_20D9DFE38(sub_20DA55548, v59, v38);
      v4 = v36;

      ++v32;
      if (v40)
      {

        v4 = v36 | 0x21;
        goto LABEL_39;
      }
    }

LABEL_39:
    v2 = v62;
    v41 = [v62 characteristics];
    v42 = sub_20DD64FD4();

    a1 = v63;
    v5 = &selRef_getReturnValue_;
    if (v42 >> 62)
    {
      v43 = sub_20DD655B4();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!(v43 | v4))
    {
      v44 = sub_20DD65364();
      if (qword_280E01EC8 != -1)
      {
        swift_once();
      }

      v45 = qword_280E03EA0;
      if (os_log_type_enabled(qword_280E03EA0, v44))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v68 = v48;
        *v46 = 136315394;
        *(v46 + 4) = sub_20D9E0B38(0x696C696261706163, 0xEC00000073656974, &v68);
        *(v46 + 12) = 2112;
        *(v46 + 14) = v2;
        *v47 = v2;
        v49 = v2;
        _os_log_impl(&dword_20D9BF000, v45, v44, "%s: No characteristics found for service %@", v46, 0x16u);
        sub_20DA55258(v47);
        MEMORY[0x20F327D10](v47, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x20F327D10](v48, -1, -1);
        MEMORY[0x20F327D10](v46, -1, -1);
      }

      v4 = 4;
LABEL_47:
      v5 = &selRef_getReturnValue_;
    }
  }

  v50 = [v2 hf_isNetworkRouter];
  v51 = v4 | 0xC;
  if ((v4 & 0x20) != 0)
  {
    v51 = v4 & 0x13 | 0xC;
  }

  if (v50)
  {
    v52 = v51;
  }

  else
  {
    v52 = v4;
  }

  v53 = [v2 hf_isProgrammableSwitch];
  v54 = v52 | 4;
  if ((v52 & 0x20) != 0)
  {
    v54 = v52 & 0x1B | 4;
  }

  if (v53)
  {
    v55 = v54;
  }

  else
  {
    v55 = v52;
  }

  if (([v2 v5[481]] & 1) != 0 || (v56 = objc_msgSend(objc_opt_self(), sel_hiddenFromScenesAndAutomationsAccessoryTypeGroup), v57 = objc_msgSend(v2, sel_hf_accessoryType), v58 = objc_msgSend(v56, sel_containsType_, v57), v56, v57, v58))
  {
    if ((v55 & 0x20) != 0)
    {
      v55 &= 0x1Fu;
    }
  }

  *a1 = v55;
}