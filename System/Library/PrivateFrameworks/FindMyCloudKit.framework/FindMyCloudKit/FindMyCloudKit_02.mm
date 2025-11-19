uint64_t sub_24AD28060()
{
  v1 = v0[153];
  v2 = v0[144];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD280C4()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1152);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD28130()
{
  v2 = *(*v1 + 1408);
  v5 = *v1;
  *(*v1 + 1416) = v0;

  if (v0)
  {
    v3 = sub_24AD28BB8;
  }

  else
  {
    v3 = sub_24AD28244;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD28244()
{
  *(v0 + 1304) = *(v0 + 1416);
  if (sub_24AD1C25C(1u, *(v0 + 1128)))
  {
    v1 = *(v0 + 1200);
    *(v0 + 1491) = 1;

    return MEMORY[0x2822009F8](sub_24AD277DC, v1, 0);
  }

  else
  {

    v2 = *(v0 + 1152);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_24AD28318()
{
  v1 = *(v0 + 1256);
  *(v0 + 1056) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 1064);
    *(v0 + 1400) = v3;
    *(v0 + 1072) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError);
    sub_24AD5E2E4();
    if (*(v0 + 1080) == 21)
    {
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v4 = sub_24AD5E7A4();
      __swift_project_value_buffer(v4, qword_281065448);
      v5 = v3;
      v6 = sub_24AD5E784();
      v7 = sub_24AD5EB44();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_24ACF2000, v6, v7, "privateDatabaseToken is expired: %{public}@", v8, 0xCu);
        sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v9, -1, -1);
        MEMORY[0x24C22F400](v8, -1, -1);
      }

      v12 = swift_task_alloc();
      *(v0 + 1408) = v12;
      *v12 = v0;
      v12[1] = sub_24AD28130;
      v13 = *(v0 + 1120);

      return sub_24AD191B4();
    }

    v15 = *(v0 + 1216);
    swift_willThrow();
  }

  else
  {
  }

  v16 = *(v0 + 1152);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24AD285E8()
{
  sub_24AD06518(v0 + 304, &qword_27EFA61C0, &qword_24AD608C8);
  v1 = *(v0 + 1280);
  *(v0 + 1056) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 1064);
    *(v0 + 1400) = v3;
    *(v0 + 1072) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError);
    sub_24AD5E2E4();
    if (*(v0 + 1080) == 21)
    {
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v4 = sub_24AD5E7A4();
      __swift_project_value_buffer(v4, qword_281065448);
      v5 = v3;
      v6 = sub_24AD5E784();
      v7 = sub_24AD5EB44();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_24ACF2000, v6, v7, "privateDatabaseToken is expired: %{public}@", v8, 0xCu);
        sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v9, -1, -1);
        MEMORY[0x24C22F400](v8, -1, -1);
      }

      v12 = swift_task_alloc();
      *(v0 + 1408) = v12;
      *v12 = v0;
      v12[1] = sub_24AD28130;
      v13 = *(v0 + 1120);

      return sub_24AD191B4();
    }

    v15 = *(v0 + 1216);
    swift_willThrow();
  }

  else
  {
  }

  v16 = *(v0 + 1152);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24AD288D0()
{
  sub_24AD06518(v0 + 304, &qword_27EFA61C0, &qword_24AD608C8);
  v1 = *(v0 + 1296);
  *(v0 + 1056) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 1064);
    *(v0 + 1400) = v3;
    *(v0 + 1072) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError);
    sub_24AD5E2E4();
    if (*(v0 + 1080) == 21)
    {
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v4 = sub_24AD5E7A4();
      __swift_project_value_buffer(v4, qword_281065448);
      v5 = v3;
      v6 = sub_24AD5E784();
      v7 = sub_24AD5EB44();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_24ACF2000, v6, v7, "privateDatabaseToken is expired: %{public}@", v8, 0xCu);
        sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v9, -1, -1);
        MEMORY[0x24C22F400](v8, -1, -1);
      }

      v12 = swift_task_alloc();
      *(v0 + 1408) = v12;
      *v12 = v0;
      v12[1] = sub_24AD28130;
      v13 = *(v0 + 1120);

      return sub_24AD191B4();
    }

    v15 = *(v0 + 1216);
    swift_willThrow();
  }

  else
  {
  }

  v16 = *(v0 + 1152);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24AD28BB8()
{
  v1 = *(v0 + 1216);

  v2 = *(v0 + 1416);
  v3 = *(v0 + 1152);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AD28C34()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1152);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD28CA0()
{
  v1 = *(v0 + 1312);

  v2 = *(v0 + 1336);
  v3 = *(v0 + 1152);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AD28D14()
{
  v1 = *(v0 + 1200);
  sub_24ACF9C80((v0 + 1489));
  *(v0 + 1432) = 0;
  *(v0 + 1488) = 1;
  v2 = swift_task_alloc();
  *(v0 + 1440) = v2;
  *v2 = v0;
  v2[1] = sub_24AD28E24;
  v3 = *(v0 + 1328);
  v4 = *(v0 + 1312);
  v5 = *(v0 + 1120);

  return sub_24AD29E60(v0 + 448, v4, v3, (v0 + 1488));
}

uint64_t sub_24AD28E24()
{
  v2 = *v1;
  v3 = *(*v1 + 1440);
  v7 = *v1;
  *(*v1 + 1448) = v0;

  v4 = *(v2 + 1328);

  if (v0)
  {
    v5 = sub_24AD29CA4;
  }

  else
  {
    v5 = sub_24AD28F48;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AD28F48()
{
  v1 = *(v0 + 464);
  *(v0 + 592) = *(v0 + 448);
  *(v0 + 608) = v1;
  v2 = *(v0 + 496);
  *(v0 + 624) = *(v0 + 480);
  *(v0 + 640) = v2;
  *(v0 + 656) = *(v0 + 512);
  v3 = *(v0 + 592);
  *(v0 + 1456) = v3;
  v4 = *(v0 + 504);
  *(v0 + 912) = *(v0 + 488);
  *(v0 + 928) = v4;
  v5 = *(v0 + 472);
  *(v0 + 880) = *(v0 + 456);
  *(v0 + 896) = v5;
  if (v3)
  {
    v6 = *(v0 + 1200);
    *(v0 + 664) = v3;
    v7 = *(v0 + 472);
    *(v0 + 672) = *(v0 + 456);
    *(v0 + 688) = v7;
    v8 = *(v0 + 504);
    *(v0 + 704) = *(v0 + 488);
    *(v0 + 720) = v8;

    return MEMORY[0x2822009F8](sub_24AD29050, v6, 0);
  }

  else
  {
    v9 = *(v0 + 1312);
    v10 = *(v0 + 1216);

    v11 = *(v0 + 1152);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_24AD29050()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1200);
  sub_24ACFBDBC((v0 + 664));
  *(v0 + 1464) = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24AD29D28, 0, 0);
  }

  else
  {
    v3 = *(v0 + 1168);
    *(v0 + 736) = *(v0 + 1456);
    v4 = *(v0 + 896);
    *(v0 + 744) = *(v0 + 880);
    *(v0 + 760) = v4;
    v5 = *(v0 + 928);
    *(v0 + 776) = *(v0 + 912);
    *(v0 + 792) = v5;
    v12 = (*(v3 + 24) + **(v3 + 24));
    v6 = *(*(v3 + 24) + 4);
    v7 = swift_task_alloc();
    *(v0 + 1472) = v7;
    *v7 = v0;
    v7[1] = sub_24AD291DC;
    v8 = *(v0 + 1176);
    v9 = *(v0 + 1168);
    v10 = *(v0 + 1160);

    return v12(v0 + 736, v8, v9);
  }
}

uint64_t sub_24AD291DC()
{
  v2 = *(*v1 + 1472);
  v5 = *v1;
  *(*v1 + 1480) = v0;

  if (v0)
  {
    v3 = sub_24AD29DC4;
  }

  else
  {
    v3 = sub_24AD292F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD292F0()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1216);

  sub_24AD06518(v0 + 592, &qword_27EFA61C0, &qword_24AD608C8);
  v3 = *(v0 + 1152);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AD2938C()
{
  v1 = *(v0 + 1352);
  *(v0 + 1088) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 1096);
    *(v0 + 1424) = v3;
    *(v0 + 1104) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError);
    sub_24AD5E2E4();
    if (*(v0 + 1112) == 21)
    {
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v4 = sub_24AD5E7A4();
      __swift_project_value_buffer(v4, qword_281065448);
      v5 = v3;
      v6 = sub_24AD5E784();
      v7 = sub_24AD5EB44();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_24ACF2000, v6, v7, "sharedDatabaseToken is expired: %{public}@", v8, 0xCu);
        sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v9, -1, -1);
        MEMORY[0x24C22F400](v8, -1, -1);
      }

      v12 = *(v0 + 1200);

      *(v0 + 1489) = 1;

      return MEMORY[0x2822009F8](sub_24AD28D14, v12, 0);
    }

    v16 = *(v0 + 1328);
    v17 = *(v0 + 1312);
    v18 = *(v0 + 1216);

    swift_willThrow();
  }

  else
  {
    v13 = *(v0 + 1328);
    v14 = *(v0 + 1312);
    v15 = *(v0 + 1216);
  }

  v19 = *(v0 + 1152);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24AD29658()
{
  sub_24AD06518(v0 + 808, &qword_27EFA61C0, &qword_24AD608C8);
  v1 = *(v0 + 1376);
  *(v0 + 1088) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 1096);
    *(v0 + 1424) = v3;
    *(v0 + 1104) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError);
    sub_24AD5E2E4();
    if (*(v0 + 1112) == 21)
    {
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v4 = sub_24AD5E7A4();
      __swift_project_value_buffer(v4, qword_281065448);
      v5 = v3;
      v6 = sub_24AD5E784();
      v7 = sub_24AD5EB44();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_24ACF2000, v6, v7, "sharedDatabaseToken is expired: %{public}@", v8, 0xCu);
        sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v9, -1, -1);
        MEMORY[0x24C22F400](v8, -1, -1);
      }

      v12 = *(v0 + 1200);

      *(v0 + 1489) = 1;

      return MEMORY[0x2822009F8](sub_24AD28D14, v12, 0);
    }

    v16 = *(v0 + 1328);
    v17 = *(v0 + 1312);
    v18 = *(v0 + 1216);

    swift_willThrow();
  }

  else
  {
    v13 = *(v0 + 1328);
    v14 = *(v0 + 1312);
    v15 = *(v0 + 1216);
  }

  v19 = *(v0 + 1152);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24AD2993C()
{
  sub_24AD06518(v0 + 808, &qword_27EFA61C0, &qword_24AD608C8);
  v1 = *(v0 + 1392);
  *(v0 + 1088) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 1096);
    *(v0 + 1424) = v3;
    *(v0 + 1104) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError);
    sub_24AD5E2E4();
    if (*(v0 + 1112) == 21)
    {
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v4 = sub_24AD5E7A4();
      __swift_project_value_buffer(v4, qword_281065448);
      v5 = v3;
      v6 = sub_24AD5E784();
      v7 = sub_24AD5EB44();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138543362;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_24ACF2000, v6, v7, "sharedDatabaseToken is expired: %{public}@", v8, 0xCu);
        sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v9, -1, -1);
        MEMORY[0x24C22F400](v8, -1, -1);
      }

      v12 = *(v0 + 1200);

      *(v0 + 1489) = 1;

      return MEMORY[0x2822009F8](sub_24AD28D14, v12, 0);
    }

    v16 = *(v0 + 1328);
    v17 = *(v0 + 1312);
    v18 = *(v0 + 1216);

    swift_willThrow();
  }

  else
  {
    v13 = *(v0 + 1328);
    v14 = *(v0 + 1312);
    v15 = *(v0 + 1216);
  }

  v19 = *(v0 + 1152);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24AD29C20()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1216);

  v3 = *(v0 + 1432);
  v4 = *(v0 + 1152);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AD29CA4()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1216);

  v3 = *(v0 + 1448);
  v4 = *(v0 + 1152);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AD29D28()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1216);

  sub_24AD06518(v0 + 592, &qword_27EFA61C0, &qword_24AD608C8);
  v3 = *(v0 + 1464);
  v4 = *(v0 + 1152);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AD29DC4()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1216);

  sub_24AD06518(v0 + 592, &qword_27EFA61C0, &qword_24AD608C8);
  v3 = *(v0 + 1480);
  v4 = *(v0 + 1152);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AD29E60(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 216) = a3;
  *(v5 + 224) = v4;
  *(v5 + 200) = a1;
  *(v5 + 208) = a2;
  v7 = sub_24AD5EAD4();
  *(v5 + 232) = v7;
  v8 = *(v7 - 8);
  *(v5 + 240) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  v10 = sub_24AD5EAA4();
  *(v5 + 256) = v10;
  v11 = *(v10 - 8);
  *(v5 + 264) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 272) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F30, &qword_24AD5FDF8);
  *(v5 + 280) = v13;
  v14 = *(v13 - 8);
  *(v5 + 288) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C0, &qword_24AD60400);
  *(v5 + 312) = v16;
  v17 = *(v16 - 8);
  *(v5 + 320) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 328) = swift_task_alloc();
  v19 = sub_24AD5EA64();
  *(v5 + 336) = v19;
  v20 = *(v19 - 8);
  *(v5 + 344) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 550) = *a4;

  return MEMORY[0x2822009F8](sub_24AD2A0FC, v4, 0);
}

uint64_t sub_24AD2A0FC()
{
  v1 = *(*(v0 + 224) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
  *(v0 + 392) = v1;
  return MEMORY[0x2822009F8](sub_24AD2A128, v1, 0);
}

uint64_t sub_24AD2A128()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 208);

  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 400) = v4;
  *v4 = v0;
  v4[1] = sub_24AD2A1D8;
  v5 = *(v0 + 392);
  v6 = *(v0 + 208);
  v7 = *(v0 + 550);

  return sub_24AD54DF0(v5, v5, v6, v7);
}

uint64_t sub_24AD2A1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 400);
  v8 = *v4;
  v6[51] = a1;
  v6[52] = a2;
  v6[53] = a3;

  v9 = v5[49];
  if (v3)
  {
    v10 = v6[26];

    v12 = v6[47];
    v11 = v6[48];
    v14 = v6[45];
    v13 = v6[46];
    v15 = v6[44];
    v16 = v6[41];
    v18 = v6[37];
    v17 = v6[38];
    v19 = v6[34];
    v20 = v6[31];

    v21 = *(v8 + 8);

    return v21();
  }

  else
  {
    v23 = v6[28];
    v24 = v6[26];

    return MEMORY[0x2822009F8](sub_24AD2A3EC, v23, 0);
  }
}

uint64_t sub_24AD2A3EC()
{
  v209 = v0;
  v1 = MEMORY[0x277D84F90];
  if (!*(v0 + 550))
  {
    v24 = v0[51];
    v208 = MEMORY[0x277D84F90];
    v25 = *(v24 + 16);
    if (!v25)
    {
      goto LABEL_33;
    }

    v26 = v0[43];
    v27 = *(v26 + 16);
    v26 += 16;
    v201 = v27;
    v204 = *MEMORY[0x277CBBF28];
    v28 = v24 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v29 = *(v26 + 56);
    v30 = (v26 - 8);
    v9 = MEMORY[0x277D84F90];
    for (i = v27(v0[48], v28, v0[42]); ; i = v201(v0[48], v28, v0[42]))
    {
      v32 = MEMORY[0x24C22E740](i);
      v33 = [v32 ownerName];

      v34 = sub_24AD5E844();
      v36 = v35;

      if (v34 == sub_24AD5E844() && v36 == v37)
      {
      }

      else
      {
        v39 = sub_24AD5EF84();

        if ((v39 & 1) == 0)
        {
          (*v30)(v0[48], v0[42]);
          goto LABEL_20;
        }
      }

      v41 = v0[48];
      v42 = v0[42];
      MEMORY[0x24C22E740](v40);
      v43 = (*v30)(v41, v42);
      MEMORY[0x24C22E590](v43);
      if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v44 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24AD5E8E4();
        v0 = v207;
      }

      sub_24AD5E904();
      v9 = v208;
LABEL_20:
      v28 += v29;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }
  }

  if (*(v0 + 550) != 1)
  {
    sub_24AD37964(MEMORY[0x277D84F90]);
    v0[8] = v1;
    v0[9] = v1;
    goto LABEL_58;
  }

  v2 = v0[51];
  v208 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[43];
    v5 = *(v4 + 16);
    v4 += 16;
    v200 = v5;
    v203 = *MEMORY[0x277CBBF28];
    v6 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v7 = *(v4 + 56);
    v8 = (v4 - 8);
    v9 = MEMORY[0x277D84F90];
    for (j = v5(v0[47], v6, v0[42]); ; j = v200(v0[47], v6, v0[42]))
    {
      v11 = MEMORY[0x24C22E740](j);
      v12 = [v11 ownerName];

      v13 = sub_24AD5E844();
      v15 = v14;

      if (v13 == sub_24AD5E844() && v15 == v16)
      {
        break;
      }

      v18 = sub_24AD5EF84();

      if (v18)
      {
        goto LABEL_6;
      }

      v20 = v0[47];
      v21 = v0[42];
      MEMORY[0x24C22E740](v19);
      v22 = (*v8)(v20, v21);
      MEMORY[0x24C22E590](v22);
      if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24AD5E8E4();
        v0 = v207;
      }

      sub_24AD5E904();
      v9 = v208;
LABEL_7:
      v6 += v7;
      if (!--v3)
      {
        goto LABEL_34;
      }
    }

LABEL_6:
    (*v8)(v0[47], v0[42]);
    goto LABEL_7;
  }

LABEL_33:
  v9 = MEMORY[0x277D84F90];
LABEL_34:
  v45 = *(v0 + 550);
  sub_24AD37964(v9);
  v1 = MEMORY[0x277D84F90];
  v0[8] = MEMORY[0x277D84F90];
  v0[9] = v1;
  if (!v45)
  {
    v70 = v0[51];
    v69 = v0[52];

    v71 = sub_24AD37CDC();
    v49 = v71;
    v208 = v1;
    v206 = v71 & 0xFFFFFFFFFFFFFF8;
    if (v71 >> 62)
    {
      v72 = sub_24AD5EC94();
    }

    else
    {
      v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v73 = MEMORY[0x277D84F90];
    if (!v72)
    {
      goto LABEL_80;
    }

    v74 = 0;
    v198 = *MEMORY[0x277CBBF28];
LABEL_63:
    v75 = v74;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x24C22EA30](v75, v49);
      }

      else
      {
        if (v75 >= *(v206 + 16))
        {
          goto LABEL_105;
        }

        v76 = *(v49 + 8 * v75 + 32);
      }

      v77 = v76;
      v74 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      v78 = v73;
      v79 = [v76 ownerName];
      v80 = sub_24AD5E844();
      v82 = v81;

      if (v80 == sub_24AD5E844() && v82 == v83)
      {

LABEL_77:
        MEMORY[0x24C22E590](v86);
        if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v87 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24AD5E8E4();
          v0 = v207;
        }

        sub_24AD5E904();
        v73 = v208;
        if (v74 == v72)
        {
LABEL_80:

          if (v73 >> 62)
          {
            v88 = sub_24AD5EC94();
            if (!v88)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v88 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v88)
            {
              goto LABEL_111;
            }
          }

          v208 = MEMORY[0x277D84F90];
          sub_24AD33640(0, v88 & ~(v88 >> 63), 0);
          if (v88 < 0)
          {
            goto LABEL_151;
          }

          v89 = 0;
          v90 = v0[43];
          v91 = v208;
          do
          {
            if ((v73 & 0xC000000000000001) != 0)
            {
              MEMORY[0x24C22EA30](v89, v73);
            }

            else
            {
              v92 = *(v73 + 8 * v89 + 32);
            }

            v93 = v0[46];
            sub_24AD5EA44();
            v208 = v91;
            v95 = *(v91 + 16);
            v94 = *(v91 + 24);
            if (v95 >= v94 >> 1)
            {
              sub_24AD33640(v94 > 1, v95 + 1, 1);
              v91 = v208;
            }

            v96 = v0[46];
            v97 = v0[42];
            ++v89;
            *(v91 + 16) = v95 + 1;
            (*(v90 + 32))(v91 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v95, v96, v97);
          }

          while (v88 != v89);
          goto LABEL_101;
        }

        goto LABEL_63;
      }

      v85 = sub_24AD5EF84();

      if (v85)
      {
        goto LABEL_77;
      }

      ++v75;
      v73 = v78;
      if (v74 == v72)
      {
        goto LABEL_80;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v45 != 1)
  {
LABEL_58:
    v67 = v0[51];
    v66 = v0[52];

    v68 = MEMORY[0x277D84FA0];
    goto LABEL_113;
  }

  v47 = v0[51];
  v46 = v0[52];

  v48 = sub_24AD37CDC();
  v49 = v48;
  v208 = v1;
  if (v48 >> 62)
  {
LABEL_106:
    v205 = v49 & 0xFFFFFFFFFFFFFF8;
    v50 = sub_24AD5EC94();
    goto LABEL_38;
  }

  v205 = v48 & 0xFFFFFFFFFFFFFF8;
  v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:
  v51 = MEMORY[0x277D84F90];
  if (!v50)
  {
    goto LABEL_91;
  }

  v52 = 0;
  v197 = *MEMORY[0x277CBBF28];
  do
  {
    v53 = v52;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x24C22EA30](v53, v49);
      }

      else
      {
        if (v53 >= *(v205 + 16))
        {
          goto LABEL_104;
        }

        v54 = *(v49 + 8 * v53 + 32);
      }

      v55 = v54;
      v52 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        __break(1u);
        goto LABEL_103;
      }

      v56 = v51;
      v57 = [v54 ownerName];
      v58 = sub_24AD5E844();
      v60 = v59;

      if (v58 != sub_24AD5E844() || v60 != v61)
      {
        break;
      }

LABEL_42:

      ++v53;
      v51 = v56;
      if (v52 == v50)
      {
        goto LABEL_91;
      }
    }

    v63 = sub_24AD5EF84();

    if (v63)
    {
      goto LABEL_42;
    }

    MEMORY[0x24C22E590](v64);
    if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v65 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24AD5E8E4();
      v0 = v207;
    }

    sub_24AD5E904();
    v51 = v208;
  }

  while (v52 != v50);
LABEL_91:

  if (v51 >> 62)
  {
    v98 = sub_24AD5EC94();
    if (!v98)
    {
      goto LABEL_111;
    }

LABEL_93:
    v208 = MEMORY[0x277D84F90];
    sub_24AD33640(0, v98 & ~(v98 >> 63), 0);
    if (v98 < 0)
    {
      goto LABEL_152;
    }

    v99 = 0;
    v100 = v0[43];
    v91 = v208;
    do
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C22EA30](v99, v51);
      }

      else
      {
        v101 = *(v51 + 8 * v99 + 32);
      }

      v102 = v0[45];
      sub_24AD5EA44();
      v208 = v91;
      v104 = *(v91 + 16);
      v103 = *(v91 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_24AD33640(v103 > 1, v104 + 1, 1);
        v91 = v208;
      }

      v105 = v0[45];
      v106 = v0[42];
      ++v99;
      *(v91 + 16) = v104 + 1;
      (*(v100 + 32))(v91 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v104, v105, v106);
    }

    while (v98 != v99);
LABEL_101:

    goto LABEL_112;
  }

  v98 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v98)
  {
    goto LABEL_93;
  }

LABEL_111:

  v91 = MEMORY[0x277D84F90];
LABEL_112:
  v68 = sub_24AD375B0(v91);

  v1 = MEMORY[0x277D84F90];
LABEL_113:
  v107 = sub_24AD375B0(v0[51]);

  v108 = sub_24AD2D918(v107, v68);
  v109 = v108;
  v110 = *(v108 + 16);
  if (v110)
  {
    v111 = v0[43];
    v112 = sub_24AD2ECB0(*(v108 + 16), 0);
    v113 = sub_24AD33F28(&v208, (v112 + ((*(v111 + 80) + 32) & ~*(v111 + 80))), v110, v109);
    sub_24ACF40D8();
    if (v113 == v110)
    {
      v0 = v207;
      goto LABEL_117;
    }

    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    swift_once();
LABEL_125:
    v137 = sub_24AD5E7A4();
    __swift_project_value_buffer(v137, qword_281065448);
    v138 = sub_24AD5E784();
    v139 = sub_24AD5EB24();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      *v140 = 0;
      _os_log_impl(&dword_24ACF2000, v138, v139, "databaseChangeToken unchanged", v140, 2u);
      MEMORY[0x24C22F400](v140, -1, -1);
    }

    v141 = v207[53];
    v142 = v207[52];
    v143 = v207[51];
    v144 = v207[26];
    v145 = v207[25];

    v146 = v207;
    *(v145 + 64) = 0;
    *(v145 + 32) = 0u;
    *(v145 + 48) = 0u;
    *v145 = 0u;
    *(v145 + 16) = 0u;
    goto LABEL_141;
  }

  v112 = MEMORY[0x277D84F90];
LABEL_117:
  v0[54] = v112;
  v114 = v0[49];
  *(v0 + 551) = *(v114 + 161);
  v0[10] = v1;
  v115 = *(v112 + 16);
  v0[55] = v115;
  if (v115)
  {
    v116 = v0[43];
    v117 = v0[27];
    v118 = *(v116 + 80);
    *(v0 + 136) = v118;
    v119 = MEMORY[0x277D84F98];
    v0[59] = MEMORY[0x277D84F98];
    v0[60] = v1;
    v0[57] = 0;
    v0[58] = v1;
    v0[56] = v119;
    if (!*(v112 + 16))
    {
      goto LABEL_150;
    }

    v120 = v0;
    v121 = v117 & 0xC000000000000001;
    v122 = v120[44];
    v123 = v120[42];
    v124 = (*(v116 + 16))(v122, v112 + ((v118 + 32) & ~v118), v123);
    v125 = MEMORY[0x24C22E740](v124);
    v120[61] = v125;
    (*(v116 + 8))(v122, v123);
    if (v121)
    {
      v126 = v125;
      v127 = sub_24AD5EE94();

      v128 = v207;
      if (v127)
      {
        v207[24] = v127;
        sub_24AD06578(0, &qword_281064980, 0x277CBC670);
        swift_dynamicCast();
        v127 = v207[23];
      }
    }

    else if (*(v120[27] + 16))
    {
      v147 = sub_24AD095D0(v125);
      v128 = v207;
      if (v148)
      {
        v127 = *(*(v207[27] + 56) + 8 * v147);
        v149 = v127;
      }

      else
      {
        v127 = 0;
      }
    }

    else
    {
      v127 = 0;
      v128 = v207;
    }

    v128[62] = v127;
    v194 = v128[49];

    return MEMORY[0x2822009F8](sub_24AD2B42C, v194, 0);
  }

  else
  {
    v129 = v0;
    v130 = v0[26];
    if (v130)
    {
      v131 = v129[53];
      sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
      v132 = v130;
      if (sub_24AD5EC04())
      {
        v133 = v129[54];
        v134 = v129[52];
        v135 = v129[9];

        v136 = v129[8];

        if (qword_281064D90 != -1)
        {
          goto LABEL_153;
        }

        goto LABEL_125;
      }

      v114 = v129[49];
    }

    v146 = v129;
    v150 = [*(v114 + 112) containerID];
    v152 = v129[8];
    v151 = v129[9];
    v153 = *(v152 + 16);
    if (v153)
    {
      v195 = v150;
      v196 = v129[9];
      v154 = v129[53];
      v155 = v129[30];
      v208 = v1;
      v156 = v154;
      sub_24AD33620(0, v153, 0);
      v157 = v208;
      v158 = *(v155 + 16);
      v155 += 16;
      v159 = v152 + ((*(v155 + 64) + 32) & ~*(v155 + 64));
      v199 = *(v155 + 56);
      v202 = v158;
      v160 = (v155 - 8);
      do
      {
        v161 = v207[31];
        v162 = v207[29];
        v202(v161, v159, v162);
        v163 = sub_24AD5EAB4();
        v165 = v164;
        v166 = MEMORY[0x24C22E7B0]();
        (*v160)(v161, v162);
        v208 = v157;
        v168 = *(v157 + 16);
        v167 = *(v157 + 24);
        if (v168 >= v167 >> 1)
        {
          sub_24AD33620((v167 > 1), v168 + 1, 1);
          v157 = v208;
        }

        *(v157 + 16) = v168 + 1;
        v169 = (v157 + 24 * v168);
        v169[4] = v163;
        v169[5] = v165;
        v169[6] = v166;
        v159 += v199;
        --v153;
      }

      while (v153);
      v170 = v207[52];
      v171 = v207[53];
      v172 = v207[51];

      v146 = v207;

      v1 = MEMORY[0x277D84F90];
      v173 = v195;
      v151 = v196;
    }

    else
    {
      v174 = v129[51];
      v175 = v129[52];
      v176 = v150;

      v173 = v176;
      v157 = MEMORY[0x277D84F90];
    }

    v177 = *(v146 + 53);
    v178 = v146[52];
    v179 = *(v146 + 550);
    v180 = v146[25];
    *v180 = v173;
    *(v180 + 8) = v179;
    *(v180 + 16) = v177;
    *(v180 + 32) = v178;
    *(v180 + 40) = v151;
    v181 = MEMORY[0x277D84F98];
    *(v180 + 48) = v157;
    *(v180 + 56) = v181;
    *(v180 + 64) = v1;
LABEL_141:
    v183 = v146[47];
    v182 = v146[48];
    v185 = v146[45];
    v184 = v146[46];
    v186 = v146[44];
    v187 = v146[41];
    v189 = v146[37];
    v188 = v146[38];
    v190 = v146[34];
    v191 = v146[31];

    v192 = v146[1];

    return v192();
  }
}

uint64_t sub_24AD2B42C()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 392);

  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 504) = v6;
  *v6 = v0;
  v6[1] = sub_24AD2B4E8;
  v7 = *(v0 + 488);
  v8 = *(v0 + 496);
  v9 = *(v0 + 392);
  v10 = *(v0 + 550);

  return sub_24AD55D74(v9, v9, v7, v8, v10);
}

uint64_t sub_24AD2B4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 504);
  v8 = *v4;
  v6[64] = a1;
  v6[65] = a2;
  v6[66] = a3;
  v6[67] = v3;

  v9 = v5[62];
  v10 = v5[61];
  v11 = v5[49];

  if (v3)
  {
    v12 = sub_24AD2CAC0;
  }

  else
  {
    v12 = sub_24AD2B664;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_24AD2B664()
{
  v1 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_24AD2B6D0, v1, 0);
}

uint64_t sub_24AD2B6D0()
{
  v240 = v0;
  v238 = v0;
  if ((sub_24AD5E0C4() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_281064D48 != -1)
  {
    goto LABEL_121;
  }

  while (1)
  {
    v2 = *(v0 + 320);
    v1 = *(v0 + 328);
    v3 = *(v0 + 312);
    v4 = __swift_project_value_buffer(v3, qword_281064950);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    sub_24AD5E124();
    (*(v2 + 8))(v1, v3);
    v5 = *(v0 + 548);
    if (v5 != 2 && (v5 & 1) != 0)
    {
      v6 = *(v0 + 528);
      v7 = *(v0 + 520);
      v8 = *(v238 + 512);
      v9 = *(v238 + 312);
      *(v238 + 549) = 2;
      swift_beginAccess();
      sub_24AD5E134();
      swift_endAccess();
      type metadata accessor for CKError(0);
      *(v238 + 176) = 6;
      sub_24AD52E18(MEMORY[0x277D84F90]);
      sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError);
      sub_24AD5E314();
      v10 = *(v238 + 168);
      swift_willThrow();
      v11 = v238;

      v12 = *(v238 + 472);
      v13 = *(v238 + 448);
LABEL_32:
      *(v11 + 88) = v10;
      v62 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        v63 = *(v11 + 96);
        *(v11 + 104) = v63;
        sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError);
        sub_24AD5E2E4();
        if (*(v11 + 112) == 26)
        {

          if (qword_281064D90 != -1)
          {
            swift_once();
          }

          v64 = *(v11 + 488);
          v65 = sub_24AD5E7A4();
          __swift_project_value_buffer(v65, qword_281065448);
          v66 = v64;
          v67 = sub_24AD5E784();
          v68 = sub_24AD5EB44();

          if (os_log_type_enabled(v67, v68))
          {
            v229 = v12;
            v222 = v13;
            v69 = *(v11 + 550);
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v72 = v11;
            v73 = swift_slowAlloc();
            *(v72 + 144) = v73;
            *v70 = 136315394;
            v74 = 0x646572616853;
            if (v69 != 1)
            {
              v74 = 0x63696C627550;
            }

            if (v69)
            {
              v75 = v74;
            }

            else
            {
              v75 = 0x65746176697250;
            }

            if (v69)
            {
              v76 = 0xE600000000000000;
            }

            else
            {
              v76 = 0xE700000000000000;
            }

            v77 = *(v72 + 488);
            v78 = sub_24AD2EDAC(v75, v76, (v72 + 144));

            *(v70 + 4) = v78;
            *(v70 + 12) = 2112;
            *(v70 + 14) = v77;
            *v71 = v77;
            v79 = v77;
            _os_log_impl(&dword_24ACF2000, v67, v68, "Got .zoneNotFound error while fetching zone changes for %s/%@", v70, 0x16u);
            sub_24AD06518(v71, &qword_27EFA61C8, &unk_24AD60C30);
            MEMORY[0x24C22F400](v71, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm(v73);
            MEMORY[0x24C22F400](v73, -1, -1);
            MEMORY[0x24C22F400](v70, -1, -1);

            v11 = v72;
            v13 = v222;
            v12 = v229;
          }

          else
          {
            v217 = *(v11 + 488);
          }

          v85 = *(v11 + 480);
          v10 = *(v11 + 464);
          goto LABEL_48;
        }

        *(v11 + 120) = v63;
        sub_24AD5E2E4();
        if (*(v11 + 128) == 112 && (*(v11 + 551) & 1) != 0)
        {
          v142 = *(v11 + 488);

          MEMORY[0x24C22E590](v142);
          if (*((*(v11 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v11 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v219 = *((*(v11 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_24AD5E8E4();
          }

          v143 = *(v11 + 488);
          sub_24AD5E904();
          v10 = *(v11 + 80);
          if (qword_281064D90 != -1)
          {
            swift_once();
          }

          v144 = *(v11 + 488);
          v145 = sub_24AD5E7A4();
          __swift_project_value_buffer(v145, qword_281065448);
          v146 = v144;
          v147 = sub_24AD5E784();
          v148 = sub_24AD5EB44();

          if (os_log_type_enabled(v147, v148))
          {
            v231 = v12;
            v224 = v13;
            v149 = *(v11 + 550);
            v150 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            v236 = swift_slowAlloc();
            *(v11 + 136) = v236;
            *v150 = 136315394;
            v152 = 0x646572616853;
            if (v149 != 1)
            {
              v152 = 0x63696C627550;
            }

            if (v149)
            {
              v153 = v152;
            }

            else
            {
              v153 = 0x65746176697250;
            }

            if (v149)
            {
              v154 = 0xE600000000000000;
            }

            else
            {
              v154 = 0xE700000000000000;
            }

            v155 = *(v11 + 488);
            v156 = sub_24AD2EDAC(v153, v154, (v11 + 136));

            *(v150 + 4) = v156;
            *(v150 + 12) = 2112;
            *(v150 + 14) = v155;
            *v151 = v155;
            v157 = v155;
            _os_log_impl(&dword_24ACF2000, v147, v148, "Got .manateeIdentityLost error while fetching zone changes for %s/%@", v150, 0x16u);
            sub_24AD06518(v151, &qword_27EFA61C8, &unk_24AD60C30);
            MEMORY[0x24C22F400](v151, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm(v236);
            MEMORY[0x24C22F400](v236, -1, -1);
            MEMORY[0x24C22F400](v150, -1, -1);

            v13 = v224;
            v12 = v231;
          }

          else
          {
            v218 = *(v11 + 488);
          }

          v85 = v10;
          goto LABEL_48;
        }

        v178 = *(v11 + 72);
      }

      else
      {
        v113 = *(v11 + 72);
      }

      v179 = *(v11 + 464);
      v180 = *(v11 + 432);
      v181 = *(v11 + 416);

      v182 = *(v11 + 64);

      if (qword_281064D90 == -1)
      {
        goto LABEL_96;
      }

      goto LABEL_123;
    }

LABEL_6:
    v14 = *(v0 + 472);
    v15 = *(v0 + 528);
    v16 = *(v0 + 520);
    v17 = *(v0 + 512);
    v18 = *(v0 + 488);
    if ((v14 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (v14 < 0)
    {
      v19 = *(v0 + 472);
    }

    else
    {
      v19 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = v18;
    v21 = v15;

    v22 = sub_24AD5EC94();
    if (!__OFADD__(v22, 1))
    {
      v23 = sub_24AD0A25C(v19, v22 + 1);
      v24 = *(v0 + 528);
      v16 = *(v0 + 520);
      v17 = *(v0 + 512);
      v25 = *(v0 + 488);
      goto LABEL_13;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    swift_once();
  }

  v23 = *(v0 + 448);
  v25 = v18;
  v24 = v15;

LABEL_13:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v239 = v23;
  sub_24AD0AC00(v24, v25, isUniquelyReferenced_nonNull_native);

  v13 = v23;
  sub_24AD3AC78(v16);
  v27 = *(v17 + 16);
  v28 = *(v0 + 512);
  v11 = v0;
  if (v27)
  {
    v221 = v23;
    *(v0 + 152) = MEMORY[0x277D84F90];
    sub_24AD5ED94();
    v29 = v28 + 64;
    v30 = -1 << *(v28 + 32);
    v31 = sub_24AD5EC54();
    v32 = 0;
    v225 = v28 + 72;
    v0 = v28;
    while ((v31 & 0x8000000000000000) == 0 && v31 < 1 << *(v0 + 32))
    {
      if ((*(v29 + 8 * (v31 >> 6)) & (1 << v31)) == 0)
      {
        goto LABEL_116;
      }

      v235 = v31 >> 6;
      v228 = v32;
      v232 = *(v0 + 36);
      v36 = *(v11 + 296);
      v35 = *(v11 + 304);
      v37 = *(v11 + 280);
      sub_24AD38B48(*(v0 + 56) + *(*(v11 + 288) + 72) * v31, v35, &qword_27EFA5F30, &qword_24AD5FDF8);
      sub_24AD38B48(v35, v36, &qword_27EFA5F30, &qword_24AD5FDF8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v56 = *(v11 + 528);
        v57 = *(v11 + 520);
        v58 = *(v11 + 512);
        v59 = *(v11 + 296);
        v60 = *(v11 + 304);
        v10 = *v59;
        *(v11 + 160) = *v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
        swift_willThrowTypedImpl();

        sub_24AD06518(v60, &qword_27EFA5F30, &qword_24AD5FDF8);
        v61 = *(v11 + 152);

        v13 = v221;
        v12 = v221;
        goto LABEL_32;
      }

      v38 = *(v11 + 296);
      v39 = *(v11 + 304);
      v40 = *(v11 + 272);
      v41 = v11;
      v42 = v0;
      v44 = *(v41 + 256);
      v43 = *(v41 + 264);
      v45 = (*(v43 + 32))(v40, v38, v44);
      MEMORY[0x24C22E780](v45);
      (*(v43 + 8))(v40, v44);
      v0 = v42;
      sub_24AD06518(v39, &qword_27EFA5F30, &qword_24AD5FDF8);
      sub_24AD5ED74();
      v46 = *(*(v238 + 152) + 16);
      sub_24AD5EDA4();
      v11 = v238;
      sub_24AD5EDB4();
      sub_24AD5ED84();
      v33 = 1 << *(v0 + 32);
      if (v31 >= v33)
      {
        goto LABEL_117;
      }

      v47 = *(v29 + 8 * v235);
      if ((v47 & (1 << v31)) == 0)
      {
        goto LABEL_118;
      }

      if (v232 != *(v0 + 36))
      {
        goto LABEL_119;
      }

      v48 = v47 & (-2 << (v31 & 0x3F));
      if (v48)
      {
        v33 = __clz(__rbit64(v48)) | v31 & 0x7FFFFFFFFFFFFFC0;
        v34 = v228;
      }

      else
      {
        v49 = v235 << 6;
        v50 = (v225 + 8 * v235);
        v51 = v235 + 1;
        v34 = v228;
        while (v51 < (v33 + 63) >> 6)
        {
          v53 = *v50++;
          v52 = v53;
          v49 += 64;
          ++v51;
          if (v53)
          {
            sub_24ACF3B64(v31, v232, 0);
            v33 = __clz(__rbit64(v52)) + v49;
            goto LABEL_16;
          }
        }

        sub_24ACF3B64(v31, v232, 0);
      }

LABEL_16:
      v32 = v34 + 1;
      v31 = v33;
      if (v32 == v27)
      {
        v80 = *(v238 + 512);

        v55 = *(v238 + 152);
        v13 = v221;
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v54 = *(v0 + 512);

  v55 = MEMORY[0x277D84F90];
LABEL_47:
  v81 = *(v11 + 528);
  v82 = *(v11 + 520);
  v83 = *(v11 + 512);
  v84 = *(v11 + 488);
  sub_24AD3ACA4(v55);

  v85 = *(v11 + 480);
  v10 = *(v11 + 464);
  v12 = v13;
LABEL_48:
  v86 = *(v11 + 456) + 1;
  if (v86 == *(v11 + 440))
  {
    v87 = *(v11 + 208);
    if (v87)
    {
      v88 = *(v11 + 424);
      sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
      v89 = v87;
      if (sub_24AD5EC04())
      {
        v90 = *(v11 + 432);
        v91 = *(v11 + 416);
        v92 = *(v11 + 72);

        v93 = *(v11 + 64);

        if (qword_281064D90 != -1)
        {
          swift_once();
        }

        v94 = sub_24AD5E7A4();
        __swift_project_value_buffer(v94, qword_281065448);
        v95 = sub_24AD5E784();
        v96 = sub_24AD5EB24();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&dword_24ACF2000, v95, v96, "databaseChangeToken unchanged", v97, 2u);
          MEMORY[0x24C22F400](v97, -1, -1);
        }

        v98 = *(v11 + 416);
        v99 = *(v11 + 424);
        v100 = *(v11 + 408);
        v101 = *(v11 + 208);
        v102 = *(v238 + 200);

        *(v102 + 64) = 0;
        *(v102 + 32) = 0u;
        *(v102 + 48) = 0u;
        *v102 = 0u;
        *(v102 + 16) = 0u;
        v103 = v238;
        goto LABEL_89;
      }
    }

    v117 = [*(*(v11 + 392) + 112) containerID];
    v119 = *(v11 + 64);
    v118 = *(v11 + 72);
    v120 = v11;
    v121 = *(v119 + 16);
    if (v121)
    {
      v223 = v117;
      v226 = v118;
      v227 = v85;
      v230 = v12;
      v122 = v120[53];
      v123 = v120[30];
      v239 = MEMORY[0x277D84F90];
      v124 = v122;
      sub_24AD33620(0, v121, 0);
      v125 = v239;
      v126 = *(v123 + 16);
      v123 += 16;
      v127 = v119 + ((*(v123 + 64) + 32) & ~*(v123 + 64));
      v233 = *(v123 + 56);
      v234 = v126;
      v128 = (v123 - 8);
      do
      {
        v129 = *(v238 + 248);
        v130 = *(v238 + 232);
        v234(v129, v127, v130);
        v131 = sub_24AD5EAB4();
        v133 = v132;
        v134 = MEMORY[0x24C22E7B0]();
        (*v128)(v129, v130);
        v239 = v125;
        v136 = *(v125 + 16);
        v135 = *(v125 + 24);
        if (v136 >= v135 >> 1)
        {
          sub_24AD33620((v135 > 1), v136 + 1, 1);
          v125 = v239;
        }

        *(v125 + 16) = v136 + 1;
        v137 = (v125 + 24 * v136);
        v137[4] = v131;
        v137[5] = v133;
        v137[6] = v134;
        v127 += v233;
        --v121;
      }

      while (v121);
      v103 = v238;
      v138 = *(v238 + 416);
      v139 = *(v238 + 424);
      v140 = *(v238 + 408);

      v85 = v227;
      v12 = v230;
      v141 = v223;
      v118 = v226;
    }

    else
    {
      v158 = v120[51];
      v159 = v120[52];
      v160 = v117;

      v141 = v160;
      v125 = MEMORY[0x277D84F90];
      v103 = v120;
    }

    v161 = *(v103 + 53);
    v162 = v103[52];
    v163 = *(v103 + 550);
    v164 = v103[25];
    *v164 = v141;
    *(v164 + 8) = v163;
    *(v164 + 16) = v161;
    *(v164 + 32) = v162;
    *(v164 + 40) = v118;
    *(v164 + 48) = v125;
    *(v164 + 56) = v12;
    *(v164 + 64) = v85;
LABEL_89:
    v166 = v103[47];
    v165 = v103[48];
    v168 = v103[45];
    v167 = v103[46];
    v169 = v103[44];
    v170 = v103;
    v171 = v103[41];
    v173 = v170[37];
    v172 = v170[38];
    v174 = v170[34];
    v175 = v170[31];

    v176 = v170[1];
LABEL_108:

    return v176();
  }

  *(v11 + 472) = v12;
  *(v11 + 480) = v85;
  *(v11 + 456) = v86;
  *(v11 + 464) = v10;
  *(v11 + 448) = v13;
  v104 = *(v11 + 432);
  if (v86 >= *(v104 + 16))
  {
    __break(1u);
LABEL_123:
    swift_once();
LABEL_96:
    v183 = *(v11 + 488);
    v184 = sub_24AD5E7A4();
    __swift_project_value_buffer(v184, qword_281065448);
    v185 = v183;
    v186 = v10;
    v187 = sub_24AD5E784();
    v188 = sub_24AD5EB44();

    v237 = v10;
    if (os_log_type_enabled(v187, v188))
    {
      v189 = *(v11 + 550);
      v190 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v192 = v11;
      v193 = swift_slowAlloc();
      v239 = v193;
      *v190 = 136315650;
      v194 = 0x646572616853;
      if (v189 != 1)
      {
        v194 = 0x63696C627550;
      }

      if (v189)
      {
        v195 = v194;
      }

      else
      {
        v195 = 0x65746176697250;
      }

      if (v189)
      {
        v196 = 0xE600000000000000;
      }

      else
      {
        v196 = 0xE700000000000000;
      }

      v197 = *(v192 + 488);
      v198 = sub_24AD2EDAC(v195, v196, &v239);

      *(v190 + 4) = v198;
      *(v190 + 12) = 2112;
      *(v190 + 14) = v197;
      *v191 = v197;
      *(v190 + 22) = 2112;
      v199 = v197;
      v200 = v237;
      v201 = _swift_stdlib_bridgeErrorToNSError();
      *(v190 + 24) = v201;
      v191[1] = v201;
      _os_log_impl(&dword_24ACF2000, v187, v188, "Error from fetchZoneChanges for %s/%@: %@", v190, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61C8, &unk_24AD60C30);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v191, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v193);
      MEMORY[0x24C22F400](v193, -1, -1);
      MEMORY[0x24C22F400](v190, -1, -1);

      v11 = v192;
    }

    else
    {
    }

    v202 = *(v11 + 488);
    v203 = *(v11 + 416);
    v204 = *(v11 + 424);
    v205 = *(v11 + 408);
    swift_willThrow();

    v207 = *(v11 + 376);
    v206 = *(v11 + 384);
    v209 = *(v11 + 360);
    v208 = *(v11 + 368);
    v210 = v11;
    v211 = *(v11 + 352);
    v212 = v210[41];
    v214 = v210[37];
    v213 = v210[38];
    v215 = v210[34];
    v216 = v210[31];

    v176 = v210[1];
    goto LABEL_108;
  }

  v106 = *(v11 + 344);
  v105 = *(v11 + 352);
  v107 = *(v11 + 336);
  v108 = *(v11 + 216) & 0xC000000000000001;
  v109 = (*(v106 + 16))(v105, v104 + ((*(v11 + 544) + 32) & ~*(v11 + 544)) + *(v106 + 72) * v86, v107);
  v110 = MEMORY[0x24C22E740](v109);
  *(v11 + 488) = v110;
  (*(v106 + 8))(v105, v107);
  if (v108)
  {
    v111 = v110;
    v112 = sub_24AD5EE94();

    if (v112)
    {
      *(v11 + 192) = v112;
      sub_24AD06578(0, &qword_281064980, 0x277CBC670);
      swift_dynamicCast();
      v112 = *(v11 + 184);
    }
  }

  else if (*(*(v11 + 216) + 16) && (v114 = sub_24AD095D0(v110), (v115 & 1) != 0))
  {
    v112 = *(*(*(v11 + 216) + 56) + 8 * v114);
    v116 = v112;
  }

  else
  {
    v112 = 0;
  }

  *(v11 + 496) = v112;
  v177 = *(v11 + 392);

  return MEMORY[0x2822009F8](sub_24AD2B42C, v177, 0);
}

uint64_t sub_24AD2CAC0()
{
  v1 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_24AD2CB2C, v1, 0);
}

uint64_t sub_24AD2CB2C()
{
  v171 = v0;
  v1 = v0;
  v2 = *(v0 + 536);
  *(v0 + 88) = v2;
  v3 = v0 + 88;
  v4 = (v0 + 72);
  v5 = *(v0 + 472);
  v165 = *(v0 + 448);
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 96);
    *(v0 + 104) = v7;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError);
    sub_24AD5E2E4();
    if (*(v0 + 112) == 26)
    {

      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 488);
      v9 = sub_24AD5E7A4();
      __swift_project_value_buffer(v9, qword_281065448);
      v10 = v8;
      v11 = sub_24AD5E784();
      v12 = sub_24AD5EB44();

      if (os_log_type_enabled(v11, v12))
      {
        v167 = v7;
        v159 = v5;
        v13 = *(v1 + 550);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v1[18] = v16;
        *v14 = 136315394;
        v17 = 0x646572616853;
        if (v13 != 1)
        {
          v17 = 0x63696C627550;
        }

        if (v13)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0x65746176697250;
        }

        if (v13)
        {
          v19 = 0xE600000000000000;
        }

        else
        {
          v19 = 0xE700000000000000;
        }

        v20 = v1[61];
        v7 = v1;
        v21 = sub_24AD2EDAC(v18, v19, (v3 + 56));

        *(v14 + 4) = v21;
        v1 = v7;
        *(v14 + 12) = 2112;
        *(v14 + 14) = v20;
        *v15 = v20;
        v22 = v20;
        _os_log_impl(&dword_24ACF2000, v11, v12, "Got .zoneNotFound error while fetching zone changes for %s/%@", v14, 0x16u);
        sub_24AD06518(v15, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v15, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x24C22F400](v16, -1, -1);
        MEMORY[0x24C22F400](v14, -1, -1);

        v5 = v159;
      }

      else
      {
        v81 = v1[61];
      }

      v82 = v1[60];
      for (i = v1[58]; ; v82 = i)
      {
        v83 = v1[57] + 1;
        if (v83 == v1[55])
        {
          break;
        }

        v1[59] = v5;
        v1[60] = v82;
        v1[57] = v83;
        v1[58] = i;
        v1[56] = v165;
        v100 = v1[54];
        if (v83 < *(v100 + 16))
        {
          v102 = v1[43];
          v101 = v1[44];
          v103 = v1[42];
          v104 = v1[27] & 0xC000000000000001;
          v105 = (*(v102 + 16))(v101, v100 + ((*(v1 + 544) + 32) & ~*(v1 + 544)) + *(v102 + 72) * v83, v103);
          v106 = MEMORY[0x24C22E740](v105);
          v1[61] = v106;
          (*(v102 + 8))(v101, v103);
          if (v104)
          {
            v107 = v106;
            v108 = sub_24AD5EE94();

            if (v108)
            {
              *(v3 + 104) = v108;
              sub_24AD06578(0, &qword_281064980, 0x277CBC670);
              swift_dynamicCast();
              v108 = *(v3 + 96);
            }
          }

          else if (*(v1[27] + 16) && (v109 = sub_24AD095D0(v106), (v110 & 1) != 0))
          {
            v108 = *(*(v1[27] + 56) + 8 * v109);
            v111 = v108;
          }

          else
          {
            v108 = 0;
          }

          v1[62] = v108;
          v154 = v1[49];

          return MEMORY[0x2822009F8](sub_24AD2B42C, v154, 0);
        }

        __break(1u);
LABEL_82:
        sub_24AD5E8E4();
LABEL_19:
        v25 = v1[61];
        sub_24AD5E904();
        i = v1[10];
        if (qword_281064D90 != -1)
        {
          swift_once();
        }

        v27 = v1[61];
        v28 = sub_24AD5E7A4();
        __swift_project_value_buffer(v28, qword_281065448);
        v29 = v27;
        v30 = sub_24AD5E784();
        v31 = sub_24AD5EB44();

        if (os_log_type_enabled(v30, v31))
        {
          v168 = v7;
          v160 = v5;
          v32 = *(v1 + 550);
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v1[17] = v163;
          *v33 = 136315394;
          v35 = 0x646572616853;
          if (v32 != 1)
          {
            v35 = 0x63696C627550;
          }

          if (v32)
          {
            v36 = v35;
          }

          else
          {
            v36 = 0x65746176697250;
          }

          v7 = v1;
          if (v32)
          {
            v37 = 0xE600000000000000;
          }

          else
          {
            v37 = 0xE700000000000000;
          }

          v38 = v7[61];
          v39 = sub_24AD2EDAC(v36, v37, (v3 + 48));

          *(v33 + 4) = v39;
          *(v33 + 12) = 2112;
          *(v33 + 14) = v38;
          *v34 = v38;
          v40 = v38;
          _os_log_impl(&dword_24ACF2000, v30, v31, "Got .manateeIdentityLost error while fetching zone changes for %s/%@", v33, 0x16u);
          sub_24AD06518(v34, &qword_27EFA61C8, &unk_24AD60C30);
          MEMORY[0x24C22F400](v34, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v163);
          MEMORY[0x24C22F400](v163, -1, -1);
          MEMORY[0x24C22F400](v33, -1, -1);

          v1 = v7;
          v5 = v160;
        }

        else
        {
          v155 = v1[61];
        }
      }

      v84 = v1[26];
      if (v84)
      {
        v85 = v1[53];
        sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
        v86 = v84;
        if (sub_24AD5EC04())
        {
          v87 = v1[54];
          v88 = v1[52];
          v89 = v1[9];

          v90 = v1[8];

          if (qword_281064D90 != -1)
          {
            swift_once();
          }

          v91 = sub_24AD5E7A4();
          __swift_project_value_buffer(v91, qword_281065448);
          v92 = sub_24AD5E784();
          v93 = sub_24AD5EB24();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            *v94 = 0;
            _os_log_impl(&dword_24ACF2000, v92, v93, "databaseChangeToken unchanged", v94, 2u);
            MEMORY[0x24C22F400](v94, -1, -1);
          }

          v95 = v1[52];
          v96 = v1[53];
          v97 = v1[51];
          v99 = v1[25];
          v98 = v1[26];

          *(v99 + 64) = 0;
          *(v99 + 32) = 0u;
          *(v99 + 48) = 0u;
          *v99 = 0u;
          *(v99 + 16) = 0u;
LABEL_74:
          v144 = v1[47];
          v143 = v1[48];
          v146 = v1[45];
          v145 = v1[46];
          v147 = v1[44];
          v148 = v1[41];
          v150 = v1[37];
          v149 = v1[38];
          v151 = v1[34];
          v152 = v1;
          v153 = v1[31];

          v79 = v152[1];
          goto LABEL_45;
        }
      }

      v112 = [*(v1[49] + 112) containerID];
      v113 = v112;
      v115 = v1[8];
      v114 = v1[9];
      v116 = *(v115 + 16);
      if (v116)
      {
        v156 = v112;
        v157 = v1[9];
        v158 = v82;
        v161 = v5;
        v117 = v1[53];
        v118 = v1[30];
        v170 = MEMORY[0x277D84F90];
        v119 = v117;
        sub_24AD33620(0, v116, 0);
        v120 = v170;
        v121 = *(v118 + 16);
        v118 += 16;
        v122 = v115 + ((*(v118 + 64) + 32) & ~*(v118 + 64));
        v164 = *(v118 + 56);
        v166 = v121;
        v162 = (v118 - 8);
        do
        {
          v123 = v1[31];
          v124 = v1;
          v125 = v1[29];
          v166(v123, v122, v125);
          v126 = sub_24AD5EAB4();
          v128 = v127;
          v129 = MEMORY[0x24C22E7B0]();
          (*v162)(v123, v125);
          v170 = v120;
          v131 = *(v120 + 16);
          v130 = *(v120 + 24);
          if (v131 >= v130 >> 1)
          {
            sub_24AD33620((v130 > 1), v131 + 1, 1);
            v120 = v170;
          }

          *(v120 + 16) = v131 + 1;
          v132 = (v120 + 24 * v131);
          v132[4] = v126;
          v132[5] = v128;
          v132[6] = v129;
          v122 += v164;
          --v116;
          v1 = v124;
        }

        while (v116);
        v133 = v124[52];
        v134 = v124[53];
        v135 = v1[51];

        v82 = v158;
        v5 = v161;
        v113 = v156;
        v114 = v157;
      }

      else
      {
        v137 = v1[51];
        v136 = v1[52];
        v138 = v1[8];

        v120 = MEMORY[0x277D84F90];
      }

      v139 = *(v1 + 53);
      v140 = v1[52];
      v141 = *(v1 + 550);
      v142 = v1[25];
      *v142 = v113;
      *(v142 + 8) = v141;
      *(v142 + 16) = v139;
      *(v142 + 32) = v140;
      *(v142 + 40) = v114;
      *(v142 + 48) = v120;
      *(v142 + 56) = v5;
      *(v142 + 64) = v82;
      goto LABEL_74;
    }

    *(v0 + 120) = v7;
    sub_24AD5E2E4();
    if (*(v0 + 128) == 112 && (*(v0 + 551) & 1) != 0)
    {
      v24 = *(v0 + 488);

      MEMORY[0x24C22E590](v24);
      if (*((v1[10] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v1[10] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }

      goto LABEL_82;
    }

    v41 = *v4;
  }

  else
  {
    v23 = *v4;
  }

  v42 = *(v0 + 464);
  v43 = *(v0 + 432);
  v44 = *(v0 + 416);

  v45 = *(v0 + 64);

  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v46 = *(v0 + 488);
  v47 = sub_24AD5E7A4();
  __swift_project_value_buffer(v47, qword_281065448);
  v48 = v46;
  v49 = v2;
  v50 = sub_24AD5E784();
  v51 = sub_24AD5EB44();

  v169 = v2;
  if (os_log_type_enabled(v50, v51))
  {
    v52 = *(v1 + 550);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v170 = v55;
    *v53 = 136315650;
    v56 = 0x646572616853;
    if (v52 != 1)
    {
      v56 = 0x63696C627550;
    }

    if (v52)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0x65746176697250;
    }

    if (v52)
    {
      v58 = 0xE600000000000000;
    }

    else
    {
      v58 = 0xE700000000000000;
    }

    v59 = v1[61];
    v60 = sub_24AD2EDAC(v57, v58, &v170);

    *(v53 + 4) = v60;
    *(v53 + 12) = 2112;
    *(v53 + 14) = v59;
    *v54 = v59;
    *(v53 + 22) = 2112;
    v61 = v59;
    v62 = v169;
    v63 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 24) = v63;
    v54[1] = v63;
    _os_log_impl(&dword_24ACF2000, v50, v51, "Error from fetchZoneChanges for %s/%@: %@", v53, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61C8, &unk_24AD60C30);
    swift_arrayDestroy();
    MEMORY[0x24C22F400](v54, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x24C22F400](v55, -1, -1);
    MEMORY[0x24C22F400](v53, -1, -1);
  }

  v64 = v1[61];
  v65 = v1[52];
  v66 = v1[53];
  v67 = v1[51];
  swift_willThrow();

  v69 = v1[47];
  v68 = v1[48];
  v71 = v1[45];
  v70 = v1[46];
  v72 = v1[44];
  v73 = v1[41];
  v75 = v1[37];
  v74 = v1[38];
  v76 = v1;
  v77 = v1[34];
  v78 = v76[31];

  v79 = v76[1];
LABEL_45:

  return v79();
}

uint64_t sub_24AD2D918(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AD5EA64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v26 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      sub_24AD2F964(v12, v9);
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_24AD2DB34(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_24AD5EC84();
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    sub_24AD384B8(&qword_281064990);
    sub_24AD5EA24();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
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

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_24ACF40D8();
      return;
    }

    while (1)
    {
      sub_24AD2F72C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_24AD5ECB4())
      {
        sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_24AD2DD30()
{
  v0 = sub_24AD5E164();
  __swift_allocate_value_buffer(v0, qword_281064D30);
  v1 = __swift_project_value_buffer(v0, qword_281064D30);
  if (qword_281064DC0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281064DC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AD2DDF8()
{
  v0 = sub_24AD5E164();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B8, &qword_24AD603A8);
  __swift_allocate_value_buffer(v5, qword_281064D78);
  __swift_project_value_buffer(v5, qword_281064D78);
  if (qword_281064D28 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_281064D30);
  (*(v1 + 16))(v4, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6250, &qword_24AD609C8);
  sub_24AD38ACC();
  return sub_24AD5E144();
}

uint64_t sub_24AD2DF84()
{
  v0 = sub_24AD5E164();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C0, &qword_24AD60400);
  __swift_allocate_value_buffer(v5, qword_27EFA6070);
  __swift_project_value_buffer(v5, qword_27EFA6070);
  if (qword_281064D28 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_281064D30);
  (*(v1 + 16))(v4, v6, v0);
  return sub_24AD5E144();
}

uint64_t sub_24AD2E0F4()
{
  v0 = sub_24AD5E164();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C0, &qword_24AD60400);
  __swift_allocate_value_buffer(v5, qword_281064950);
  __swift_project_value_buffer(v5, qword_281064950);
  if (qword_281064D28 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_281064D30);
  (*(v1 + 16))(v4, v6, v0);
  return sub_24AD5E144();
}

uint64_t sub_24AD2E264()
{
  v0 = sub_24AD5E164();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D0, &qword_24AD608D0);
  __swift_allocate_value_buffer(v5, qword_281064D58);
  __swift_project_value_buffer(v5, qword_281064D58);
  if (qword_281064D28 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_281064D30);
  (*(v1 + 16))(v4, v6, v0);
  return sub_24AD5E144();
}

uint64_t sub_24AD2E3DC()
{
  v0 = sub_24AD5E7A4();
  __swift_allocate_value_buffer(v0, qword_281065400);
  __swift_project_value_buffer(v0, qword_281065400);
  return sub_24AD5E794();
}

uint64_t sub_24AD2E470(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

void *sub_24AD2E548(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6148, &qword_24AD60850);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6150, &qword_24AD60858);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24AD2E67C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6180, &qword_24AD60880);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24AD2E7B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6130, &unk_24AD60540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24AD2E948(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_24AD2EB24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6160, &qword_24AD60868);
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

void *sub_24AD2EC28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

size_t sub_24AD2ECB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6198, &qword_24AD60898);
  v4 = *(sub_24AD5EA64() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
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

uint64_t sub_24AD2EDAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AD2EE78(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24AD351B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_24AD2EE78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24AD2EF84(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24AD5ED64();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_24AD2EF84(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AD2EFD0(a1, a2);
  sub_24AD2F100(&unk_285E2AAC0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24AD2EFD0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24AD2F1EC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24AD5ED64();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24AD5E894();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AD2F1EC(v10, 0);
        result = sub_24AD5ED24();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24AD2F100(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_24AD2F260(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24AD2F1EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6200, &qword_24AD60918);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AD2F260(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6200, &qword_24AD60918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_24AD2F354(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_24AD5F074();
  MEMORY[0x24C22ED70](a2);
  v7 = sub_24AD5F094();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_24AD30D98(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24AD2F44C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_24AD34F14(&qword_2810653F8, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_24AD5E7F4();
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
      sub_24AD34F14(&qword_2810653F0, MEMORY[0x277CC95F0]);
      v23 = sub_24AD5E824();
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
    sub_24AD30EE4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_24AD2F72C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_24AD5ECA4();

    if (v9)
    {

      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_24AD5EC94();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_24AD2FD94(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_24AD30530(v22 + 1);
    }

    v20 = v8;
    sub_24AD30D14(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  v11 = *(v6 + 40);
  v12 = sub_24AD5EBF4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_24AD311AC(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_24AD5EC04();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_24AD2F964(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24AD5EA64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_24AD34F14(&qword_2810649D0, MEMORY[0x277CBBE40]);
  v36 = a2;
  v13 = sub_24AD5E7F4();
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
      sub_24AD34F14(qword_2810648B0, MEMORY[0x277CBBE40]);
      v23 = sub_24AD5E824();
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
    sub_24AD3131C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_24AD2FC44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24AD5F074();
  sub_24AD5E874();
  v9 = sub_24AD5F094();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24AD5EF84() & 1) != 0)
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

    sub_24AD315E4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AD2FD94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61E0, &qword_24AD608E0);
    v2 = sub_24AD5ED04();
    v16 = v2;
    sub_24AD5EC84();
    if (sub_24AD5ECB4())
    {
      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_24AD30530(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_24AD5EBF4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_24AD5ECB4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_24AD2FF84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6240, &qword_24AD609B0);
  result = sub_24AD5ECF4();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_24AD5F074();
      MEMORY[0x24C22ED70](v18);
      result = sub_24AD5F094();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AD301D4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_24AD5E404();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61F8, &qword_24AD60910);
  result = sub_24AD5ECF4();
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
      sub_24AD34F14(&qword_2810653F8, MEMORY[0x277CC95F0]);
      result = sub_24AD5E7F4();
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

uint64_t sub_24AD30530(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61E0, &qword_24AD608E0);
  result = sub_24AD5ECF4();
  v6 = result;
  if (*(v3 + 16))
  {
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
      result = sub_24AD5EBF4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AD30758(uint64_t a1)
{
  v2 = v1;
  v41 = sub_24AD5EA64();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61E8, &qword_24AD608E8);
  result = sub_24AD5ECF4();
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
      sub_24AD34F14(&qword_2810649D0, MEMORY[0x277CBBE40]);
      result = sub_24AD5E7F4();
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

uint64_t sub_24AD30AB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6168, &qword_24AD60870);
  result = sub_24AD5ECF4();
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
      sub_24AD5F074();
      sub_24AD5E874();
      result = sub_24AD5F094();
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

unint64_t sub_24AD30D14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_24AD5EBF4();
  v5 = -1 << *(a2 + 32);
  result = sub_24AD5EC74();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24AD30D98(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AD2FF84(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24AD31764();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24AD31D88(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_24AD5F074();
  MEMORY[0x24C22ED70](v4);
  result = sub_24AD5F094();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24AD5EFB4();
  __break(1u);
  return result;
}

uint64_t sub_24AD30EE4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
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
    sub_24AD301D4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24AD319F4(MEMORY[0x277CC95F0], &qword_27EFA61F8, &qword_24AD60910);
      goto LABEL_12;
    }

    sub_24AD31FA8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_24AD34F14(&qword_2810653F8, MEMORY[0x277CC95F0]);
  v15 = sub_24AD5E7F4();
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
      sub_24AD34F14(&qword_2810653F0, MEMORY[0x277CC95F0]);
      v23 = sub_24AD5E824();
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
  result = sub_24AD5EFB4();
  __break(1u);
  return result;
}

void sub_24AD311AC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AD30530(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24AD318A4();
      goto LABEL_12;
    }

    sub_24AD322C4(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_24AD5EBF4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_24AD5EC04();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_24AD5EFB4();
  __break(1u);
}

uint64_t sub_24AD3131C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_24AD5EA64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
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
    sub_24AD30758(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24AD319F4(MEMORY[0x277CBBE40], &qword_27EFA61E8, &qword_24AD608E8);
      goto LABEL_12;
    }

    sub_24AD324D8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_24AD34F14(&qword_2810649D0, MEMORY[0x277CBBE40]);
  v15 = sub_24AD5E7F4();
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
      sub_24AD34F14(qword_2810648B0, MEMORY[0x277CBBE40]);
      v23 = sub_24AD5E824();
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
  result = sub_24AD5EFB4();
  __break(1u);
  return result;
}

uint64_t sub_24AD315E4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_24AD30AB4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AD31C2C();
      goto LABEL_16;
    }

    sub_24AD327F4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24AD5F074();
  sub_24AD5E874();
  result = sub_24AD5F094();
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

      result = sub_24AD5EF84();
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
  result = sub_24AD5EFB4();
  __break(1u);
  return result;
}

void *sub_24AD31764()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6240, &qword_24AD609B0);
  v2 = *v0;
  v3 = sub_24AD5ECE4();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

id sub_24AD318A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61E0, &qword_24AD608E0);
  v2 = *v0;
  v3 = sub_24AD5ECE4();
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

void *sub_24AD319F4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_24AD5ECE4();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

void *sub_24AD31C2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6168, &qword_24AD60870);
  v2 = *v0;
  v3 = sub_24AD5ECE4();
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

uint64_t sub_24AD31D88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6240, &qword_24AD609B0);
  result = sub_24AD5ECF4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_24AD5F074();
      MEMORY[0x24C22ED70](v17);
      result = sub_24AD5F094();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_24AD31FA8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24AD5E404();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61F8, &qword_24AD60910);
  v10 = sub_24AD5ECF4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_24AD34F14(&qword_2810653F8, MEMORY[0x277CC95F0]);
      result = sub_24AD5E7F4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_24AD322C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61E0, &qword_24AD608E0);
  result = sub_24AD5ECF4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_24AD5EBF4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_24AD324D8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24AD5EA64();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61E8, &qword_24AD608E8);
  v10 = sub_24AD5ECF4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_24AD34F14(&qword_2810649D0, MEMORY[0x277CBBE40]);
      result = sub_24AD5E7F4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_24AD327F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6168, &qword_24AD60870);
  result = sub_24AD5ECF4();
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
      sub_24AD5F074();

      sub_24AD5E874();
      result = sub_24AD5F094();
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

void *sub_24AD32A2C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_24AD5EC94();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_24AD2EC28(v2, 0);

    v1 = sub_24AD33AEC(&v5, v3 + 4, v2, v1);
    sub_24ACF40D8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *sub_24AD32ADC(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_24AD5EC94();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_24AD2EC28(v2, 0);

    v1 = sub_24AD33CF0(&v5, v3 + 4, v2, v1);
    sub_24ACF40D8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_24AD32B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_24AD34F14(&qword_2810653F8, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_24AD5E7F4();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_24AD34F14(&qword_2810653F0, MEMORY[0x277CC95F0]);
      v22 = sub_24AD5E824();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24AD319F4(MEMORY[0x277CC95F0], &qword_27EFA61F8, &qword_24AD60910);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_24AD33158(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_24AD32E58(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_24AD5ECC4();

    if (v7)
    {
      v8 = sub_24AD32FF0();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  v11 = *(v3 + 40);
  v12 = sub_24AD5EBF4();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_24AD5EC04();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24AD318A4();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_24AD33460(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_24AD32FF0()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_24AD5EC94();
  v4 = swift_unknownObjectRetain();
  v5 = sub_24AD2FD94(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_24AD5EBF4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_24AD5EC04();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_24AD33460(v9);
  result = sub_24AD5EC04();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AD33158(int64_t a1)
{
  v3 = sub_24AD5E404();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_24AD5EC64();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_24AD34F14(&qword_2810653F8, MEMORY[0x277CC95F0]);
        v27 = sub_24AD5E7F4();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_24AD33460(unint64_t result)
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

    v9 = sub_24AD5EC64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_24AD5EBF4();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

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

char *sub_24AD33600(char *a1, int64_t a2, char a3)
{
  result = sub_24AD33660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AD33620(char *a1, int64_t a2, char a3)
{
  result = sub_24AD3376C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24AD33640(size_t a1, int64_t a2, char a3)
{
  result = sub_24AD3388C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AD33660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6158, &qword_24AD60860);
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

char *sub_24AD3376C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6130, &unk_24AD60540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24AD3388C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6198, &qword_24AD60898);
  v10 = *(sub_24AD5EA64() - 8);
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
  v15 = *(sub_24AD5EA64() - 8);
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

void (*sub_24AD33A64(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C22EA30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24AD33AE4;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AD33AEC(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_24AD5EE74();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_24AD5EEA4())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

id sub_24AD33CF0(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_24AD5EC84();
  sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  sub_24AD384B8(&qword_281064990);
  result = sub_24AD5EA24();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_24AD5ECB4())
      {
        goto LABEL_30;
      }

      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_24AD33F28(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_24AD5EA64();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
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

unint64_t sub_24AD341CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5EF8, &qword_24AD5FDD8);
    v3 = sub_24AD5EF14();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_24AD095D0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_24AD342C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6178, &qword_24AD60878);
    v8 = sub_24AD5EF14();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AD38B48(v10, v6, &qword_27EFA6170, &qword_24AD61280);
      v12 = *v6;
      result = sub_24AD09670(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_24AD5E654();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_24AD344AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61A8, &qword_24AD608A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61B0, &qword_24AD608B0);
    v8 = sub_24AD5EF14();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AD38B48(v10, v6, &qword_27EFA61A8, &qword_24AD608A8);
      result = sub_24AD0981C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_24AD5E364();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_24AD34694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61A0, &qword_24AD608A0);
    v3 = sub_24AD5EF14();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_24ACF40BC(v5);
      result = sub_24AD09620(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = v3[7] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
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

unint64_t sub_24AD3479C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5F48, &qword_24AD5FE10);
    v3 = sub_24AD5EF14();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      v10 = v8;
      sub_24AD063F0(v7, v9);
      result = sub_24AD096B4(v5, v6, v10);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 24 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v10;
      v14 = v3[7] + 16 * result;
      *v14 = v7;
      *(v14 + 8) = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

uint64_t sub_24AD348CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24AD38BB0();
  result = MEMORY[0x24C22E700](v2, &type metadata for CloudKitCoordinator.Database, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_24AD2F354(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t type metadata accessor for CloudKitStorage()
{
  result = qword_281064D00;
  if (!qword_281064D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AD3498C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AD0C594;

  return sub_24AD0E6A8();
}

uint64_t sub_24AD34A40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C594;

  return sub_24AD0FC08();
}

uint64_t sub_24AD34AD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AD0C594;

  return sub_24AD1161C(a1, v5);
}

uint64_t sub_24AD34B88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C594;

  return sub_24AD117FC();
}

uint64_t sub_24AD34C18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C594;

  return sub_24AD129F0();
}

uint64_t sub_24AD34CA8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AD0BDA0;

  return sub_24AD0F9C8(v0);
}

unint64_t sub_24AD34D38()
{
  result = qword_2810653A8;
  if (!qword_2810653A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA60C8, &qword_24AD61260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810653A8);
  }

  return result;
}

uint64_t sub_24AD34D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitChangeSet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AD34E00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AD0C594;

  return sub_24AD13D1C(v2, v3, v5);
}

uint64_t sub_24AD34EB0(uint64_t a1)
{
  v2 = type metadata accessor for CloudKitChangeSet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AD34F14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AD34F5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AD0C594;

  return sub_24AD26A3C(v2, v3);
}

uint64_t sub_24AD35004()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24AD38C10;

  return sub_24AD1BC8C(v0);
}

uint64_t sub_24AD35094(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AD0C594;

  return sub_24AD1BE48(a1, v5);
}

unint64_t sub_24AD3514C()
{
  result = qword_27EFA60F8;
  if (!qword_27EFA60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA60F8);
  }

  return result;
}

uint64_t sub_24AD351B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24AD35224()
{
  result = qword_27EFA6138;
  if (!qword_27EFA6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6138);
  }

  return result;
}

unint64_t sub_24AD3527C()
{
  result = qword_27EFA6140;
  if (!qword_27EFA6140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA6140);
  }

  return result;
}

void sub_24AD352D8()
{
  v0 = sub_24AD5E364();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_24AD37164(319, &qword_2810649F0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_24AD37164(319, &qword_2810649E8);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of CloudKitStorage.__allocating_init(containerURL:containerIdentifier:bundleIdentifier:dataStore:databases:containerEnvironment:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = (*(v10 + 320) + **(v10 + 320));
  v18 = *(*(v10 + 320) + 4);
  v19 = swift_task_alloc();
  *(v11 + 16) = v19;
  *v19 = v11;
  v19[1] = sub_24AD35664;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_24AD35664(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of CloudKitStorage.startup()()
{
  v2 = *(*v0 + 328);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AD0C594;

  return v6();
}

uint64_t dispatch thunk of CloudKitStorage.run()()
{
  v2 = *(*v0 + 336);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AD0C594;

  return v6();
}

uint64_t dispatch thunk of CloudKitStorage.changeSet(block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 344);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24AD0C594;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of CloudKitStorage.apply(changeSet:database:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 352);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD0C594;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.await(state:)(uint64_t a1)
{
  v4 = *(*v1 + 368);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AD0C594;

  return v8(a1);
}

uint64_t dispatch thunk of CloudKitStorage.isManateeAvailable()()
{
  v2 = *(*v0 + 376);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AD0BDA0;

  return v6();
}

uint64_t dispatch thunk of CloudKitStorage.create(zoneName:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 416);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD0C594;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.delete(zoneName:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 424);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD0C594;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.reset()()
{
  v2 = *(*v0 + 432);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AD0C594;

  return v6();
}

uint64_t dispatch thunk of CloudKitStorage.resetDataStore()()
{
  v2 = *(*v0 + 440);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AD0C594;

  return v6();
}

uint64_t dispatch thunk of CloudKitStorage.lostZones()()
{
  v2 = *(*v0 + 448);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AD38C10;

  return v6();
}

uint64_t dispatch thunk of CloudKitStorage.shareParticipant(forEmailAddress:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 456);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD38C10;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.shareParticipant(forPhoneNumber:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 464);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD38C10;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.shareParticipants(zoneName:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 472);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD38C10;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.shareMetadata(for:token:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 480);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD38C10;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.accept(metadata:)(uint64_t a1)
{
  v4 = *(*v1 + 488);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AD0C594;

  return v8(a1);
}

uint64_t dispatch thunk of CloudKitStorage.add(shareParticipant:zoneName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 496);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_24AD38C10;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CloudKitStorage.remove(shareParticipant:zoneName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 504);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24AD0C594;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of CloudKitStorage.isShared(zoneName:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 512);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD35664;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.share(zoneName:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 520);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD0C594;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.unshare(zoneName:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 528);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD0C594;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CloudKitStorage.leaveZone(zoneName:ownerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 536);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_24AD0C594;

  return v14(a1, a2, a3, a4);
}

void sub_24AD37164(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24AD5E9B4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CloudKitStorage.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitStorage.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudKitStorage.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitStorage.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24AD37454(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24AD5EC94())
  {
    v4 = sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    v5 = sub_24AD384B8(&qword_281064990);
    result = MEMORY[0x24C22E700](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C22EA30](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_24AD2F72C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_24AD5EC94();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24AD375B0(uint64_t a1)
{
  v2 = sub_24AD5EA64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_24AD34F14(&qword_2810649D0, MEMORY[0x277CBBE40]);
  result = MEMORY[0x24C22E700](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_24AD2F964(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_24AD3774C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C22E700](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24AD2FC44(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24AD37828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6240, &qword_24AD609B0);
    v3 = sub_24AD5ED14();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_24AD5F074();
      MEMORY[0x24C22ED70](v10);
      result = sub_24AD5F094();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24AD37964(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D0, &qword_24AD608D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  if (qword_281064D50 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281064D58);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  sub_24AD5E124();
  (*(v3 + 8))(v6, v2);
  v8 = v23;
  if (v23 >> 60 == 15)
  {
    v21 = MEMORY[0x277D84FA0];
  }

  else
  {
    v9 = v22;
    v10 = sub_24AD5E264();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_24AD5E254();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D8, &qword_24AD608D8);
    sub_24AD3850C(&qword_2810649D8, &qword_2810649A0);
    sub_24AD5E244();
    sub_24AD38594(v9, v8);

    v21 = v22;
  }

  v26 = v21;
  v13 = sub_24AD37454(a1);

  sub_24AD2DB34(v13);
  v14 = sub_24AD5E294();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_24AD5E284();
  v22 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D8, &qword_24AD608D8);
  sub_24AD3850C(&qword_2810649E0, &qword_2810649A8);
  v17 = sub_24AD5E274();
  v19 = v18;

  v24 = v17;
  v25 = v19;
  swift_beginAccess();
  sub_24AD0615C(v17, v19);
  sub_24AD5E134();
  swift_endAccess();
  return sub_24AD06204(v17, v19);
}

void *sub_24AD37CDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D0, &qword_24AD608D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  if (qword_281064D50 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281064D58);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  sub_24AD5E124();
  (*(v1 + 8))(v4, v0);
  v6 = v15;
  if (v15 >> 60 == 15)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = v14;
  v8 = sub_24AD5E264();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_24AD5E254();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D8, &qword_24AD608D8);
  sub_24AD3850C(&qword_2810649D8, &qword_2810649A0);
  sub_24AD5E244();

  v11 = sub_24AD32ADC(v14);
  sub_24AD38594(v7, v6);

  return v11;
}

uint64_t sub_24AD37F24(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D0, &qword_24AD608D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - v5;
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v7 = sub_24AD5E7A4();
  __swift_project_value_buffer(v7, qword_281065448);
  v8 = a1;
  v9 = sub_24AD5E784();
  v10 = sub_24AD5EB64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v44[0] = v12;
    *v11 = 136446466;
    v13 = [v8 ownerName];
    v40 = v2;
    v14 = v8;
    v15 = v13;
    v16 = sub_24AD5E844();
    v18 = v17;

    v19 = sub_24AD2EDAC(v16, v18, v44);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2082;
    v20 = [v14 zoneName];
    v21 = sub_24AD5E844();
    v23 = v22;

    v24 = sub_24AD2EDAC(v21, v23, v44);

    *(v11 + 14) = v24;
    v8 = v14;
    v2 = v40;
    _os_log_impl(&dword_24ACF2000, v9, v10, "mark CKRecordZone clean: %{public}s/%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22F400](v12, -1, -1);
    MEMORY[0x24C22F400](v11, -1, -1);
  }

  if (qword_281064D50 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v2, qword_281064D58);
  swift_beginAccess();
  (*(v3 + 16))(v6, v25, v2);
  sub_24AD5E124();
  (*(v3 + 8))(v6, v2);
  v26 = v42;
  if (v42 >> 60 == 15)
  {
    v39 = MEMORY[0x277D84FA0];
  }

  else
  {
    v27 = v41;
    v28 = sub_24AD5E264();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_24AD5E254();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D8, &qword_24AD608D8);
    sub_24AD3850C(&qword_2810649D8, &qword_2810649A0);
    sub_24AD5E244();
    sub_24AD38594(v27, v26);

    v39 = v41;
  }

  v45 = v39;

  v31 = v45;
  if ((v45 & 0xC000000000000001) != 0)
  {
    if (sub_24AD5EC94())
    {
LABEL_12:
      v32 = sub_24AD5E294();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      sub_24AD5E284();
      v41 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61D8, &qword_24AD608D8);
      sub_24AD3850C(&qword_2810649E0, &qword_2810649A8);
      v35 = sub_24AD5E274();
      v37 = v36;

      *&v43 = v35;
      *(&v43 + 1) = v37;
      swift_beginAccess();
      sub_24AD0615C(v35, v37);
      sub_24AD5E134();
      swift_endAccess();
      return sub_24AD06204(v35, v37);
    }
  }

  else if (*(v45 + 16))
  {
    goto LABEL_12;
  }

  v43 = xmmword_24AD60340;
  swift_beginAccess();
  sub_24AD5E134();
  return swift_endAccess();
}

uint64_t sub_24AD384B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24AD06578(255, &qword_281064998, 0x277CBC5F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AD3850C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA61D8, &qword_24AD608D8);
    sub_24AD384B8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AD38594(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AD06204(a1, a2);
  }

  return a1;
}

uint64_t sub_24AD385A8(uint64_t a1)
{
  v3 = *(sub_24AD5E404() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_24AD162F0(a1, v4, v5);
}

uint64_t sub_24AD3861C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24AD5E404() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AD0C594;

  return sub_24AD168EC(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_24AD38788(uint64_t a1)
{
  v4 = *(sub_24AD5E404() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AD0C360;

  return sub_24AD164D0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24AD38880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudKitChangeSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AD388E4()
{
  result = qword_281064A48;
  if (!qword_281064A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A48);
  }

  return result;
}

uint64_t sub_24AD38938(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD0C594;

  return sub_24AD514E8(a1, a2, v7, v6);
}

uint64_t sub_24AD389EC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AD0C360;

  return sub_24AD514E8(a1, a2, v7, v6);
}

unint64_t sub_24AD38AA0(unint64_t result, void *a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    return a2;
  }

  return result;
}

uint64_t sub_24AD38AAC(uint64_t result)
{
  if (result >> 2 != 0xFFFFFFFF)
  {
    return sub_24AD38AC0(result);
  }

  return result;
}

uint64_t sub_24AD38AC0(uint64_t result)
{
  if (result < 0)
  {
    return MEMORY[0x2821F96F8]();
  }

  return result;
}

unint64_t sub_24AD38ACC()
{
  result = qword_2810649F8;
  if (!qword_2810649F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA6250, &qword_24AD609C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810649F8);
  }

  return result;
}

uint64_t sub_24AD38B48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_24AD38BB0()
{
  result = qword_281065398;
  if (!qword_281065398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281065398);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudKitAnalytics.Events(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitAnalytics.Events(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AD38DBC()
{
  result = qword_281064A80;
  if (!qword_281064A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A80);
  }

  return result;
}

unint64_t sub_24AD38E14()
{
  result = qword_281064A70;
  if (!qword_281064A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A70);
  }

  return result;
}

uint64_t sub_24AD38E68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000036;
  v3 = &unk_24AD61530;
  v4 = a1;
  v5 = 0xD000000000000039;
  if (a1 == 4)
  {
    v5 = 0xD000000000000037;
    v6 = "yCloudKit.fetchZoneChanges";
  }

  else
  {
    v6 = "yCloudKit.cloudKitError";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000003ALL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "yCloudKit.fetchDatabaseChanges";
  }

  v8 = 0xD00000000000003ELL;
  if (a1 == 1)
  {
    v8 = 0xD000000000000036;
    v9 = "yCloudKit.pushReceived";
  }

  else
  {
    v9 = "yCloudKit.accountState";
  }

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0xD000000000000036;
    v10 = &unk_24AD61530;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000003ALL;
      v3 = "yCloudKit.fetchDatabaseChanges";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000037;
      v3 = "yCloudKit.fetchZoneChanges";
    }

    else
    {
      v2 = 0xD000000000000039;
      v3 = "yCloudKit.cloudKitError";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "yCloudKit.pushReceived";
    }

    else
    {
      v2 = 0xD00000000000003ELL;
      v3 = "yCloudKit.accountState";
    }
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_24AD5EF84();
  }

  return v13 & 1;
}

uint64_t sub_24AD38FCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000444972;
  v3 = 0x656E6961746E6F63;
  v4 = a1;
  v5 = 0xD000000000000011;
  if (a1 == 5)
  {
    v6 = 0x800000024AD616F0;
  }

  else
  {
    v5 = 0x6E6F6974656C6564;
    v6 = 0xED0000746E756F43;
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000024AD616D0;
  if (a1 != 3)
  {
    v7 = 0x53746E756F636361;
    v8 = 0xEC00000065746174;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x444965706F6373;
  if (a1 != 1)
  {
    v10 = 0x4449656E6F7ALL;
    v9 = 0xE600000000000000;
  }

  if (!a1)
  {
    v10 = 0x656E6961746E6F63;
    v9 = 0xEB00000000444972;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x444965706F6373)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x4449656E6F7ALL)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x800000024AD616F0;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xED0000746E756F43;
        if (v11 != 0x6E6F6974656C6564)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0x800000024AD616D0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x53746E756F636361;
    v2 = 0xEC00000065746174;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_24AD5EF84();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}