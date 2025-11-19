uint64_t sub_20DF24AA8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {
    v3 = sub_20DF24C80;
  }

  else
  {
    v3 = sub_20DF24BB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF24BB8()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  v4 = v0[43];
  v5 = v0[41];
  v6 = v0[35];
  swift_unknownObjectRelease();
  v7 = v0[34];

  sub_20DEE5ED0(v7 + OBJC_IVAR____TtC17EnergyKitInternal20XPCGuidanceContainer_value, v6);
  [v4 invalidate];

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DF24C80()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[43];
  swift_willThrow();

  swift_unknownObjectRelease();
  v6 = v0[50];
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v8 = v0[40];
  v7 = v0[41];
  v9 = v0[39];
  v10 = __swift_project_value_buffer(v9, qword_281122F18);
  swift_beginAccess();
  (*(v8 + 16))(v7, v10, v9);
  v11 = v6;
  v12 = sub_20DF47BB4();
  v13 = sub_20DF47FF4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_20DEAF000, v12, v13, "[GuidanceService] Error fetching guidance: %@", v14, 0xCu);
    sub_20DED8730(v15, &qword_27C84C948, qword_20DF49940);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  v19 = v0[40];
  v18 = v0[41];
  v20 = v0[39];

  (*(v19 + 8))(v18, v20);
  sub_20DEDD4D8();
  swift_allocError();
  *v21 = 2;
  swift_willThrow();

  v22 = v0[41];

  v23 = v0[1];

  return v23();
}

uint64_t sub_20DF24EBC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  v6 = sub_20DF47BD4();
  *(v4 + 64) = v6;
  v7 = *(v6 - 8);
  *(v4 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 112) = *a4;
  *(v4 + 113) = a4[1];

  return MEMORY[0x2822009F8](sub_20DF24F94, 0, 0);
}

uint64_t sub_20DF24F94()
{
  if (*(v0 + 113))
  {
    sub_20DEDD4D8();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
    v2 = *(v0 + 80);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 112);
    type metadata accessor for SiteOperations();
    v6 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v7 = sub_20DF47D04();
    v8 = [v6 initWithServiceName_];
    *(v0 + 88) = v8;

    v9 = [objc_opt_self() interfaceWithProtocol_];
    [v8 setRemoteObjectInterface_];

    [v8 resume];
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = sub_20DF25174;
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    v13 = *(v0 + 40);

    return sub_20DEE1D38(v13, v5, v11, v12, v8);
  }
}

uint64_t sub_20DF25174()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  *(v3 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20DF252BC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 80);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_20DF252BC()
{
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FF4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20DEAF000, v7, v8, "[GuidanceService] Error fetching guidance: %@", v10, 0xCu);
    sub_20DED8730(v11, &qword_27C84C948, qword_20DF49940);
    MEMORY[0x20F329700](v11, -1, -1);
    MEMORY[0x20F329700](v10, -1, -1);
  }

  v14 = *(v0 + 104);
  v16 = *(v0 + 72);
  v15 = *(v0 + 80);
  v17 = *(v0 + 64);

  (*(v16 + 8))(v15, v17);
  sub_20DEDD4D8();
  swift_allocError();
  *v18 = 2;
  swift_willThrow();

  v19 = *(v0 + 80);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_20DF254E4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  v10 = sub_20DF47BD4();
  *(v5 + 48) = v10;
  v11 = *(v10 - 8);
  *(v5 + 56) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D048, &qword_20DF4BC38);
  *(v5 + 72) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D050, &qword_20DF4BC40);
  *(v5 + 88) = v15;
  v16 = *(v15 - 8);
  *(v5 + 96) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v18 = *(*(type metadata accessor for Guidance() - 8) + 64) + 15;
  v19 = swift_task_alloc();
  *(v5 + 112) = v19;
  v20 = a1[1];
  *(v5 + 136) = *a1;
  *(v5 + 137) = v20;
  v21 = swift_task_alloc();
  *(v5 + 120) = v21;
  *v21 = v5;
  v21[1] = sub_20DF256F0;

  return sub_20DF24134(v19, a2, a3, a4, (v5 + 136));
}

uint64_t sub_20DF256F0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_20DF25924;
  }

  else
  {
    v3 = sub_20DF25804;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF25804()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[5];
  sub_20DEE5ED0(v1, v5);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  sub_20DF47F34();
  sub_20DED8730(v5, &qword_27C84D048, &qword_20DF4BC38);
  (*(v4 + 8))(v2, v3);
  sub_20DF165B0(v1);
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[10];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_20DF25924()
{
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FF4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[16];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20DEAF000, v7, v8, "[GuidanceService] Error fetching guidance: %@", v10, 0xCu);
    sub_20DED8730(v11, &qword_27C84C948, qword_20DF49940);
    MEMORY[0x20F329700](v11, -1, -1);
    MEMORY[0x20F329700](v10, -1, -1);
  }

  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[10];
  v30 = v0[16];
  v31 = v0[11];
  v18 = v0[8];
  v17 = v0[9];
  v20 = v0[6];
  v19 = v0[7];
  v21 = v0[5];

  (*(v19 + 8))(v18, v20);
  sub_20DEDD4D8();
  v22 = swift_allocError();
  *v23 = 2;
  *v16 = v22;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  sub_20DF47F34();

  sub_20DED8730(v16, &qword_27C84D048, &qword_20DF4BC38);
  (*(v15 + 8))(v14, v31);
  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[10];
  v27 = v0[8];

  v28 = v0[1];

  return v28();
}

uint64_t sub_20DF25BE0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v8 = sub_20DF47BD4();
  *(v4 + 48) = v8;
  v9 = *(v8 - 8);
  *(v4 + 56) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D048, &qword_20DF4BC38);
  *(v4 + 72) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D050, &qword_20DF4BC40);
  *(v4 + 88) = v13;
  v14 = *(v13 - 8);
  *(v4 + 96) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v16 = *(*(type metadata accessor for Guidance() - 8) + 64) + 15;
  v17 = swift_task_alloc();
  *(v4 + 112) = v17;
  v18 = a1[1];
  *(v4 + 136) = *a1;
  *(v4 + 137) = v18;
  v19 = swift_task_alloc();
  *(v4 + 120) = v19;
  *v19 = v4;
  v19[1] = sub_20DF25DDC;

  return sub_20DF24EBC(v17, a2, a3, (v4 + 136));
}

uint64_t sub_20DF25DDC()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_20DF2B4B0;
  }

  else
  {
    v3 = sub_20DF2B4AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF25EF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v35 = a4;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v4 = sub_20DF47564();
  v30 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v29 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - v14;
  v16 = sub_20DF47F04();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v11;
  v19 = v7;
  (*(v8 + 16))(v18, v32, v7);
  (*(v5 + 16))(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v4);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v5 + 80) + v21 + 8) & ~*(v5 + 80);
  v23 = v22 + v6;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v8 + 32))(v24 + v20, v29, v19);
  *(v24 + v21) = v17;
  (*(v5 + 32))(v24 + v22, v31, v30);
  v25 = (v24 + v23);
  v26 = BYTE1(v35);
  *v25 = v35 & 1;
  v25[1] = v26 & 1;
  sub_20DF28378(0, 0, v15, &unk_20DF4BC50, v24);

  return sub_20DED8730(v15, &qword_27C84C918, &qword_20DF49EE0);
}

uint64_t sub_20DF2621C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  *(v7 + 496) = a7;
  *(v7 + 280) = a5;
  *(v7 + 288) = a6;
  *(v7 + 272) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  *(v7 + 296) = v8;
  v9 = *(v8 - 8);
  *(v7 + 304) = v9;
  *(v7 + 312) = *(v9 + 64);
  *(v7 + 320) = swift_task_alloc();
  v10 = sub_20DF48014();
  *(v7 + 328) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v7 + 336) = swift_task_alloc();
  v12 = sub_20DF48024();
  *(v7 + 344) = v12;
  v13 = *(v12 - 8);
  *(v7 + 352) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  v15 = *(*(sub_20DF47C14() - 8) + 64) + 15;
  *(v7 + 368) = swift_task_alloc();
  v16 = sub_20DF47564();
  *(v7 + 376) = v16;
  v17 = *(v16 - 8);
  *(v7 + 384) = v17;
  *(v7 + 392) = *(v17 + 64);
  *(v7 + 400) = swift_task_alloc();
  v18 = sub_20DF47BD4();
  *(v7 + 408) = v18;
  v19 = *(v18 - 8);
  *(v7 + 416) = v19;
  v20 = *(v19 + 64) + 15;
  *(v7 + 424) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF26470, 0, 0);
}

uint64_t sub_20DF26470()
{
  if (sub_20DF47F14())
  {
    v1 = v0[37];
    v2 = v0[34];
    v0[33] = 0;
LABEL_15:
    sub_20DF47F44();
    v33 = v0[53];
    v34 = v0[50];
    v36 = v0[45];
    v35 = v0[46];
    v37 = v0[42];
    v38 = v0[40];

    v39 = v0[1];

    return v39();
  }

  v3 = sub_20DF47764();
  v0[11] = v3;
  v4 = sub_20DF2AD60(&qword_27C84CFA0, MEMORY[0x277D073A0]);
  v0[12] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  v6 = *(*(v3 - 8) + 104);
  v6(boxed_opaque_existential_1, *MEMORY[0x277D07378], v3);
  v7 = sub_20DF47614();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  if ((v7 & 1) == 0 || (v0[16] = v3, v0[17] = v4, v8 = __swift_allocate_boxed_opaque_existential_1(v0 + 13), v6(v8, *MEMORY[0x277D07388], v3), v9 = sub_20DF47614(), __swift_destroy_boxed_opaque_existential_1(v0 + 13), (v9 & 1) == 0))
  {
    v10 = v0[37];
    v11 = v0[34];
    sub_20DEDD4D8();
    v12 = swift_allocError();
    *v13 = 0;
    v0[30] = v12;
    sub_20DF47F44();
  }

  v14 = v0[35];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[54] = Strong;
  if (!Strong)
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v20 = v0[52];
    v19 = v0[53];
    v21 = v0[51];
    v22 = __swift_project_value_buffer(v21, qword_281122F18);
    swift_beginAccess();
    (*(v20 + 16))(v19, v22, v21);
    v23 = sub_20DF47BB4();
    v24 = sub_20DF47FF4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20DEAF000, v23, v24, "[GuidanceService] GridID not found", v25, 2u);
      MEMORY[0x20F329700](v25, -1, -1);
    }

    v27 = v0[52];
    v26 = v0[53];
    v28 = v0[51];
    v29 = v0[37];
    v30 = v0[34];

    (*(v27 + 8))(v26, v28);
    sub_20DEDD4D8();
    v31 = swift_allocError();
    *v32 = 2;
    v0[31] = v31;
    goto LABEL_15;
  }

  v16 = swift_task_alloc();
  v0[55] = v16;
  *v16 = v0;
  v16[1] = sub_20DF26848;
  v17 = v0[36];

  return (sub_20DF2A620)(v17);
}

uint64_t sub_20DF26848(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v5 = *(*v2 + 432);
  v7 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = a2;

  return MEMORY[0x2822009F8](sub_20DF26968, 0, 0);
}

uint64_t sub_20DF26968()
{
  v1 = v0[57];
  if (v1)
  {
    v2 = v0[56];
    v3 = v0[50];
    v5 = v0[47];
    v4 = v0[48];
    v6 = v0[46];
    v7 = v0[44];
    v64 = v0[45];
    v66 = v0[43];
    v8 = v0[41];
    v68 = v0[42];
    v62 = *(v0 + 248);
    v70 = v0[35];
    sub_20DF2AD14();
    sub_20DF48154();

    MEMORY[0x20F328950](v2, v1);
    MEMORY[0x20F328950](95, 0xE100000000000000);
    sub_20DF47554();
    sub_20DF2AD60(&qword_27C84D020, MEMORY[0x277CC95F0]);
    v9 = sub_20DF483B4();
    MEMORY[0x20F328950](v9);

    (*(v4 + 8))(v3, v5);
    sub_20DF47C04();
    (*(v7 + 104))(v64, *MEMORY[0x277D85268], v66);
    v0[32] = MEMORY[0x277D84F90];
    sub_20DF2AD60(&qword_27C84D028, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D030, &qword_20DF4BC10);
    sub_20DF2ADA8();
    sub_20DF480C4();
    v10 = sub_20DF48034();
    v0[58] = v10;
    v11 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    v0[59] = v11;
    [v11 setMaxConcurrentOperationCount_];
    [v11 setUnderlyingQueue_];
    [v11 setQualityOfService_];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[60] = Strong;
    if (Strong)
    {
      v13 = *(v0 + 497);
      *(v0 + 498) = v62 & 1;
      *(v0 + 499) = v13 & 1;
      v14 = swift_task_alloc();
      v0[61] = v14;
      *v14 = v0;
      v14[1] = sub_20DF27144;
      v15 = v0[56];
      v16 = v0[36];
      v17 = v0[34];

      return sub_20DF254E4(v0 + 498, v16, v15, v1, v17);
    }

    v33 = *(v0 + 497);

    v69 = v33 & 1;
    v34 = v0[59];
    v71 = v0[58];
    v57 = v0[50];
    v35 = v0[47];
    v36 = v0[48];
    v37 = v0[40];
    v60 = v0[39];
    v61 = v0[49];
    v38 = v0[38];
    v58 = v0[37];
    v40 = v0[35];
    v39 = v0[36];
    v41 = v0[34];
    v63 = v0[62] & 1;
    v67 = [objc_opt_self() defaultCenter];
    sub_20DF477D4();
    v65 = sub_20DF47D04();

    v56 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();
    v59 = v34;

    (*(v36 + 16))(v57, v39, v35);
    (*(v38 + 16))(v37, v41, v58);
    v42 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v43 = (v61 + *(v38 + 80) + v42) & ~*(v38 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v56;
    (*(v36 + 32))(v44 + v42, v57, v35);
    (*(v38 + 32))(v44 + v43, v37, v58);
    v45 = (v44 + v43 + v60);
    *v45 = v63;
    v45[1] = v69;
    v0[6] = sub_20DF2B1AC;
    v0[7] = v44;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_20DEDA9EC;
    v0[5] = &block_descriptor_58;
    v46 = _Block_copy(v0 + 2);
    v47 = v0[7];

    v48 = [v67 addObserverForName:v65 object:0 queue:v59 usingBlock:v46];
    _Block_release(v46);

    *(swift_allocObject() + 16) = v48;
    sub_20DF47F24();
  }

  else
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v20 = v0[52];
    v19 = v0[53];
    v21 = v0[51];
    v22 = __swift_project_value_buffer(v21, qword_281122F18);
    swift_beginAccess();
    (*(v20 + 16))(v19, v22, v21);
    v23 = sub_20DF47BB4();
    v24 = sub_20DF47FF4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20DEAF000, v23, v24, "[GuidanceService] GridID not found", v25, 2u);
      MEMORY[0x20F329700](v25, -1, -1);
    }

    v27 = v0[52];
    v26 = v0[53];
    v28 = v0[51];
    v29 = v0[37];
    v30 = v0[34];

    (*(v27 + 8))(v26, v28);
    sub_20DEDD4D8();
    v31 = swift_allocError();
    *v32 = 2;
    v0[31] = v31;
    sub_20DF47F44();
  }

  v49 = v0[53];
  v50 = v0[50];
  v52 = v0[45];
  v51 = v0[46];
  v53 = v0[42];
  v54 = v0[40];

  v55 = v0[1];

  return v55();
}

uint64_t sub_20DF27144()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 456);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20DF27278, 0, 0);
}

uint64_t sub_20DF27278()
{
  v1 = *(v0 + 248);
  v34 = (v1 >> 8) & 1;
  v2 = v0[59];
  v35 = v0[58];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[40];
  v29 = v0[39];
  v30 = v0[49];
  v6 = v0[38];
  v26 = v0[50];
  v27 = v0[37];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[34];
  v31 = v1 & 1;
  v33 = [objc_opt_self() defaultCenter];
  sub_20DF477D4();
  v32 = sub_20DF47D04();

  v25 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();
  v28 = v2;

  (*(v4 + 16))(v26, v7, v3);
  (*(v6 + 16))(v5, v9, v27);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v30 + *(v6 + 80) + v10) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v25;
  (*(v4 + 32))(v12 + v10, v26, v3);
  (*(v6 + 32))(v12 + v11, v5, v27);
  v13 = (v12 + v11 + v29);
  *v13 = v31;
  v13[1] = v34;
  v0[6] = sub_20DF2B1AC;
  v0[7] = v12;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DEDA9EC;
  v0[5] = &block_descriptor_58;
  v14 = _Block_copy(v0 + 2);
  v15 = v0[7];

  v16 = [v33 addObserverForName:v32 object:0 queue:v28 usingBlock:v14];
  _Block_release(v14);

  *(swift_allocObject() + 16) = v16;
  sub_20DF47F24();

  v17 = v0[53];
  v18 = v0[50];
  v20 = v0[45];
  v19 = v0[46];
  v21 = v0[42];
  v22 = v0[40];

  v23 = v0[1];

  return v23();
}

uint64_t sub_20DF275E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v37 = a5;
  v34 = a3;
  v35 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = sub_20DF47564();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v31 - v15;
  v17 = sub_20DF473F4();
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  v38 = 7562345;
  v39 = 0xE300000000000000;
  sub_20DF48104();
  if (!*(v18 + 16) || (v19 = sub_20DEEF9D4(v40), (v20 & 1) == 0))
  {

    sub_20DED8790(v40);
LABEL_8:
    v41 = 0u;
    v42 = 0u;
    goto LABEL_9;
  }

  sub_20DEBA2EC(*(v18 + 56) + 32 * v19, &v41);
  sub_20DED8790(v40);

  if (!*(&v42 + 1))
  {
LABEL_9:
    v28 = &qword_27C84CA00;
    v29 = &qword_20DF4A170;
    v30 = &v41;
    return sub_20DED8730(v30, v28, v29);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA80, &qword_20DF4A0B8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v33 = v40[0];
  v22 = sub_20DF47F04();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v32 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v10 + 16))(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
  v23 = v36;
  (*(v36 + 16))(v8, v35, v5);
  v35 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v24 = (v11 + *(v23 + 80) + v35) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v32;
  (*(v10 + 32))(&v25[v35], v12, v9);
  (*(v23 + 32))(&v25[v24], v8, v5);
  v26 = &v25[(v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v26 = v33;
  v27 = BYTE1(v37);
  v26[8] = v37 & 1;
  v26[9] = v27 & 1;
  sub_20DF28378(0, 0, v16, &unk_20DF4BC68, v25);

  v28 = &qword_27C84C918;
  v29 = &qword_20DF49EE0;
  v30 = v16;
  return sub_20DED8730(v30, v28, v29);
}

uint64_t sub_20DF27A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  *(v8 + 200) = a8;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  v9 = sub_20DF47BD4();
  *(v8 + 128) = v9;
  v10 = *(v9 - 8);
  *(v8 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF27AF4, 0, 0);
}

uint64_t sub_20DF27AF4()
{
  if ((sub_20DF47F14() & 1) == 0)
  {
    v1 = v0[12];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[19] = Strong;
    if (Strong)
    {
      v3 = swift_task_alloc();
      v0[20] = v3;
      *v3 = v0;
      v3[1] = sub_20DF27D6C;
      v4 = v0[13];

      return sub_20DF2A620(v4);
    }

    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[16];
    v9 = __swift_project_value_buffer(v8, qword_281122F18);
    swift_beginAccess();
    (*(v7 + 16))(v6, v9, v8);
    v10 = sub_20DF47BB4();
    v11 = sub_20DF47FF4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DEAF000, v10, v11, "[GuidanceService] GridID not found", v12, 2u);
      MEMORY[0x20F329700](v12, -1, -1);
    }

    v14 = v0[17];
    v13 = v0[18];
    v15 = v0[16];
    v16 = v0[14];

    (*(v14 + 8))(v13, v15);
    sub_20DEDD4D8();
    v17 = swift_allocError();
    *v18 = 2;
    v0[11] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
    sub_20DF47F44();
  }

  v19 = v0[18];

  v20 = v0[1];

  return v20();
}

uint64_t sub_20DF27D6C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v5 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = a2;

  return MEMORY[0x2822009F8](sub_20DF27E8C, 0, 0);
}

uint64_t sub_20DF27E8C()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    if (sub_20DF28280(*(v0 + 168), *(v0 + 176), *(v0 + 120)))
    {
      v2 = *(v0 + 96);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      *(v0 + 184) = Strong;
      if (Strong)
      {
        v4 = *(v0 + 200);
        *(v0 + 202) = v4 & 1;
        *(v0 + 203) = HIBYTE(v4) & 1;
        v5 = swift_task_alloc();
        *(v0 + 192) = v5;
        *v5 = v0;
        v5[1] = sub_20DF28130;
        v6 = *(v0 + 168);
        v7 = *(v0 + 104);
        v8 = *(v0 + 112);

        return sub_20DF254E4((v0 + 202), v7, v6, v1, v8);
      }
    }
  }

  else
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 136);
    v10 = *(v0 + 144);
    v12 = *(v0 + 128);
    v13 = __swift_project_value_buffer(v12, qword_281122F18);
    swift_beginAccess();
    (*(v11 + 16))(v10, v13, v12);
    v14 = sub_20DF47BB4();
    v15 = sub_20DF47FF4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20DEAF000, v14, v15, "[GuidanceService] GridID not found", v16, 2u);
      MEMORY[0x20F329700](v16, -1, -1);
    }

    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v19 = *(v0 + 128);
    v20 = *(v0 + 112);

    (*(v18 + 8))(v17, v19);
    sub_20DEDD4D8();
    v21 = swift_allocError();
    *v22 = 2;
    *(v0 + 88) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
    sub_20DF47F44();
  }

  v23 = *(v0 + 144);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_20DF28130()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v8 = *v0;

  v5 = *(v1 + 144);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_20DF28280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_20DF48494();
  sub_20DF47D54();
  v7 = sub_20DF484D4();
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
    if (v12 || (sub_20DF483D4() & 1) != 0)
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

uint64_t sub_20DF28378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20DF2ABEC(a3, v27 - v11);
  v13 = sub_20DF47F04();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20DED8730(v12, &qword_27C84C918, &qword_20DF49EE0);
  }

  else
  {
    sub_20DF47EF4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20DF47EC4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20DF47D44() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_20DF28628(uint64_t a1, uint64_t a2, void *a3, __int16 a4)
{
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = sub_20DF47F04();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v10, a1, v6);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v7 + 32))(v19 + v17, v10, v6);
  *(v19 + v18) = v16;
  v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = v25;
  *v20 = v25;
  *(v20 + 8) = a4 & 1;
  *(v20 + 9) = HIBYTE(a4) & 1;
  v22 = v21;
  sub_20DF28378(0, 0, v14, &unk_20DF4BC00, v19);

  return sub_20DED8730(v14, &qword_27C84C918, &qword_20DF49EE0);
}

uint64_t sub_20DF28890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  *(v7 + 488) = a7;
  *(v7 + 280) = a5;
  *(v7 + 288) = a6;
  *(v7 + 272) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  *(v7 + 296) = v8;
  v9 = *(v8 - 8);
  *(v7 + 304) = v9;
  *(v7 + 312) = *(v9 + 64);
  *(v7 + 320) = swift_task_alloc();
  v10 = sub_20DF48014();
  *(v7 + 328) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v7 + 336) = swift_task_alloc();
  v12 = sub_20DF48024();
  *(v7 + 344) = v12;
  v13 = *(v12 - 8);
  *(v7 + 352) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  v15 = *(*(sub_20DF47C14() - 8) + 64) + 15;
  *(v7 + 368) = swift_task_alloc();
  v16 = sub_20DF47564();
  *(v7 + 376) = v16;
  v17 = *(v16 - 8);
  *(v7 + 384) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 392) = swift_task_alloc();
  v19 = sub_20DF47BD4();
  *(v7 + 400) = v19;
  v20 = *(v19 - 8);
  *(v7 + 408) = v20;
  v21 = *(v20 + 64) + 15;
  *(v7 + 416) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF28ADC, 0, 0);
}

uint64_t sub_20DF28ADC()
{
  if (sub_20DF47F14())
  {
    v1 = v0[37];
    v2 = v0[34];
    v0[33] = 0;
LABEL_15:
    sub_20DF47F44();
    v33 = v0[52];
    v34 = v0[49];
    v36 = v0[45];
    v35 = v0[46];
    v37 = v0[42];
    v38 = v0[40];

    v39 = v0[1];

    return v39();
  }

  v3 = sub_20DF47764();
  v0[11] = v3;
  v4 = sub_20DF2AD60(&qword_27C84CFA0, MEMORY[0x277D073A0]);
  v0[12] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  v6 = *(*(v3 - 8) + 104);
  v6(boxed_opaque_existential_1, *MEMORY[0x277D07378], v3);
  v7 = sub_20DF47614();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  if ((v7 & 1) == 0 || (v0[16] = v3, v0[17] = v4, v8 = __swift_allocate_boxed_opaque_existential_1(v0 + 13), v6(v8, *MEMORY[0x277D07388], v3), v9 = sub_20DF47614(), __swift_destroy_boxed_opaque_existential_1(v0 + 13), (v9 & 1) == 0))
  {
    v10 = v0[37];
    v11 = v0[34];
    sub_20DEDD4D8();
    v12 = swift_allocError();
    *v13 = 0;
    v0[30] = v12;
    sub_20DF47F44();
  }

  v14 = v0[35];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[53] = Strong;
  if (!Strong)
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v20 = v0[51];
    v19 = v0[52];
    v21 = v0[50];
    v22 = __swift_project_value_buffer(v21, qword_281122F18);
    swift_beginAccess();
    (*(v20 + 16))(v19, v22, v21);
    v23 = sub_20DF47BB4();
    v24 = sub_20DF47FF4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20DEAF000, v23, v24, "[GuidanceService] GridID not found", v25, 2u);
      MEMORY[0x20F329700](v25, -1, -1);
    }

    v27 = v0[51];
    v26 = v0[52];
    v28 = v0[50];
    v29 = v0[37];
    v30 = v0[34];

    (*(v27 + 8))(v26, v28);
    sub_20DEDD4D8();
    v31 = swift_allocError();
    *v32 = 2;
    v0[31] = v31;
    goto LABEL_15;
  }

  v16 = swift_task_alloc();
  v0[54] = v16;
  *v16 = v0;
  v16[1] = sub_20DF28EB4;
  v17 = v0[36];

  return sub_20DF2A8BC(v17);
}

uint64_t sub_20DF28EB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 432);
  v5 = *(*v2 + 424);
  v7 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = a2;

  return MEMORY[0x2822009F8](sub_20DF28FD4, 0, 0);
}

uint64_t sub_20DF28FD4()
{
  v63 = v0[56];
  if (v63)
  {
    v1 = v0[55];
    v2 = v0[48];
    v3 = v0[49];
    v4 = v0[46];
    v5 = v0[47];
    v6 = v0[44];
    v7 = v0[42];
    v57 = v0[45];
    v59 = v0[43];
    v8 = v0[41];
    aBlock = v0[35];
    sub_20DF2AD14();
    sub_20DF48154();

    MEMORY[0x20F328950](v1, v63);
    MEMORY[0x20F328950](95, 0xE100000000000000);
    sub_20DF47554();
    sub_20DF2AD60(&qword_27C84D020, MEMORY[0x277CC95F0]);
    v9 = sub_20DF483B4();
    MEMORY[0x20F328950](v9);

    (*(v2 + 8))(v3, v5);
    sub_20DF47C04();
    (*(v6 + 104))(v57, *MEMORY[0x277D85268], v59);
    v0[32] = MEMORY[0x277D84F90];
    sub_20DF2AD60(&qword_27C84D028, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D030, &qword_20DF4BC10);
    sub_20DF2ADA8();
    sub_20DF480C4();
    v10 = sub_20DF48034();
    v0[57] = v10;
    v11 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    v0[58] = v11;
    [v11 setMaxConcurrentOperationCount_];
    [v11 setUnderlyingQueue_];
    [v11 setQualityOfService_];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[59] = Strong;
    if (Strong)
    {
      v13 = *(v0 + 244);
      *(v0 + 490) = v13 & 1;
      *(v0 + 491) = HIBYTE(v13) & 1;
      v14 = swift_task_alloc();
      v0[60] = v14;
      *v14 = v0;
      v14[1] = sub_20DF29718;
      v15 = v0[55];
      v16 = v0[34];

      return sub_20DF25BE0(v0 + 490, v15, v63, v16);
    }

    v32 = *(v0 + 244);
    v60 = v32 & 1;
    v58 = (v32 >> 8) & 1;
    v33 = v0[58];
    v64 = v0[57];
    v55 = v0[55];
    v56 = v0[56];
    v34 = v0[40];
    v54 = v0[39];
    v36 = v0[37];
    v35 = v0[38];
    v37 = v0[34];
    v38 = v0[35];
    v61 = [objc_opt_self() defaultCenter];
    sub_20DF477D4();
    v39 = sub_20DF47D04();

    v40 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();
    v41 = v33;

    (*(v35 + 16))(v34, v37, v36);
    v42 = (*(v35 + 80) + 42) & ~*(v35 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    *(v43 + 24) = v55;
    *(v43 + 32) = v56;
    *(v43 + 40) = v60;
    *(v43 + 41) = v58;
    (*(v35 + 32))(v43 + v42, v34, v36);
    v0[6] = sub_20DF2AE0C;
    v0[7] = v43;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_20DEDA9EC;
    v0[5] = &block_descriptor_34;
    v44 = _Block_copy(v0 + 2);
    v45 = v0[7];

    v46 = [v61 addObserverForName:v39 object:0 queue:v41 usingBlock:v44];
    _Block_release(v44);

    *(swift_allocObject() + 16) = v46;
    sub_20DF47F24();
  }

  else
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v19 = v0[51];
    v18 = v0[52];
    v20 = v0[50];
    v21 = __swift_project_value_buffer(v20, qword_281122F18);
    swift_beginAccess();
    (*(v19 + 16))(v18, v21, v20);
    v22 = sub_20DF47BB4();
    v23 = sub_20DF47FF4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20DEAF000, v22, v23, "[GuidanceService] GridID not found", v24, 2u);
      MEMORY[0x20F329700](v24, -1, -1);
    }

    v26 = v0[51];
    v25 = v0[52];
    v27 = v0[50];
    v28 = v0[37];
    v29 = v0[34];

    (*(v26 + 8))(v25, v27);
    sub_20DEDD4D8();
    v30 = swift_allocError();
    *v31 = 2;
    v0[31] = v30;
    sub_20DF47F44();
  }

  v47 = v0[52];
  v48 = v0[49];
  v50 = v0[45];
  v49 = v0[46];
  v51 = v0[42];
  v52 = v0[40];

  v53 = v0[1];

  return v53();
}

uint64_t sub_20DF29718()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DF29830, 0, 0);
}

uint64_t sub_20DF29830()
{
  v1 = *(v0 + 244);
  v27 = v1 & 1;
  v28 = (v1 >> 8) & 1;
  v2 = v0[58];
  v30 = v0[57];
  v25 = v0[55];
  v26 = v0[56];
  v3 = v0[40];
  v24 = v0[39];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[34];
  v7 = v0[35];
  v29 = [objc_opt_self() defaultCenter];
  sub_20DF477D4();
  v8 = sub_20DF47D04();

  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();
  v10 = v2;

  (*(v4 + 16))(v3, v6, v5);
  v11 = (*(v4 + 80) + 42) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v25;
  *(v12 + 32) = v26;
  *(v12 + 40) = v27;
  *(v12 + 41) = v28;
  (*(v4 + 32))(v12 + v11, v3, v5);
  v0[6] = sub_20DF2AE0C;
  v0[7] = v12;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_20DEDA9EC;
  v0[5] = &block_descriptor_34;
  v13 = _Block_copy(v0 + 2);
  v14 = v0[7];

  v15 = [v29 addObserverForName:v8 object:0 queue:v10 usingBlock:v13];
  _Block_release(v13);

  *(swift_allocObject() + 16) = v15;
  sub_20DF47F24();

  v16 = v0[52];
  v17 = v0[49];
  v19 = v0[45];
  v18 = v0[46];
  v20 = v0[42];
  v21 = v0[40];

  v22 = v0[1];

  return v22();
}

uint64_t sub_20DF29B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  v32 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - v16;
  v18 = sub_20DF473F4();
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = v18;
  v33 = 7562345;
  v34 = 0xE300000000000000;
  sub_20DF48104();
  if (!*(v19 + 16) || (v20 = sub_20DEEF9D4(v35), (v21 & 1) == 0))
  {

    sub_20DED8790(v35);
LABEL_8:
    v36 = 0u;
    v37 = 0u;
    goto LABEL_9;
  }

  sub_20DEBA2EC(*(v19 + 56) + 32 * v20, &v36);
  sub_20DED8790(v35);

  if (!*(&v37 + 1))
  {
LABEL_9:
    v27 = &qword_27C84CA00;
    v28 = &qword_20DF4A170;
    v29 = &v36;
    return sub_20DED8730(v29, v27, v28);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA80, &qword_20DF4A0B8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v31 = v35[0];
  v23 = sub_20DF47F04();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  v24 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v10 + 16))(v13, a6, v9);
  v25 = (*(v10 + 80) + 66) & ~*(v10 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v31;
  *(v26 + 40) = a3;
  *(v26 + 48) = v32;
  *(v26 + 56) = v24;
  *(v26 + 64) = a5 & 1;
  *(v26 + 65) = HIBYTE(a5) & 1;
  (*(v10 + 32))(v26 + v25, v13, v9);

  sub_20DF28378(0, 0, v17, &unk_20DF4BC30, v26);

  v27 = &qword_27C84C918;
  v28 = &qword_20DF49EE0;
  v29 = v17;
  return sub_20DED8730(v29, v27, v28);
}

uint64_t sub_20DF29E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v10;
  *(v8 + 96) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  return MEMORY[0x2822009F8](sub_20DF29EC0, 0, 0);
}

uint64_t sub_20DF29EC0()
{
  if ((sub_20DF47F14() & 1) == 0 && (sub_20DF28280(*(v0 + 48), *(v0 + 56), *(v0 + 40)) & 1) != 0 && (v1 = *(v0 + 64), swift_beginAccess(), Strong = swift_weakLoadStrong(), (*(v0 + 80) = Strong) != 0))
  {
    v3 = *(v0 + 96);
    *(v0 + 98) = v3 & 1;
    *(v0 + 99) = HIBYTE(v3) & 1;
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_20DF29FE0;
    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);

    return sub_20DF25BE0((v0 + 98), v6, v7, v5);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_20DF29FE0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_20DF2A0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D040, &qword_20DF4BC20);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  (*(v16 + 16))(&v34 - v18, a1, v15);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277D85868])
  {
    (*(v16 + 8))(v19, v15);
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v4, qword_281122F18);
    swift_beginAccess();
    (*(v5 + 16))(v14, v21, v4);
    v22 = sub_20DF47BB4();
    v23 = sub_20DF47FF4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20DEAF000, v22, v23, "[GuidanceService] Terminated due to finish", v24, 2u);
      MEMORY[0x20F329700](v24, -1, -1);
    }

    (*(v5 + 8))(v14, v4);
  }

  else if (v20 == *MEMORY[0x277D85870])
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v4, qword_281122F18);
    swift_beginAccess();
    (*(v5 + 16))(v12, v25, v4);
    v26 = sub_20DF47BB4();
    v27 = sub_20DF47FF4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20DEAF000, v26, v27, "[GuidanceService] Terminated due to cancellation", v28, 2u);
      MEMORY[0x20F329700](v28, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
  }

  else
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v4, qword_281122F18);
    swift_beginAccess();
    (*(v5 + 16))(v9, v29, v4);
    v30 = sub_20DF47BB4();
    v31 = sub_20DF47FF4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20DEAF000, v30, v31, "[GuidanceService] Terminated due to unknown reason", v32, 2u);
      MEMORY[0x20F329700](v32, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    (*(v16 + 8))(v19, v15);
  }

  v33 = [objc_opt_self() defaultCenter];
  [v33 removeObserver_];
}

uint64_t sub_20DF2A640()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[3] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_20DF2A798;
  v6 = v0[2];

  return sub_20DEE2684(v6, v3);
}

uint64_t sub_20DF2A798(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v9 = *v2;

  v7 = *(v9 + 8);

  return v7(a1, a2);
}

uint64_t sub_20DF2A8DC()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithServiceName_];
  v0[3] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_20DF2B4B4;
  v6 = v0[2];

  return sub_20DEE3190(v6, v3);
}

uint64_t sub_20DF2AA80(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  if (*(v1 + v8 + 9))
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_20DEDA9C0;

  return sub_20DF28890(a1, v9, v10, v1 + v6, v11, v12, v14 | v13);
}

uint64_t sub_20DF2ABEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DF2AC5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DEBA16C;

  return sub_20DED3614(a1, v5);
}

unint64_t sub_20DF2AD14()
{
  result = qword_27C84D018;
  if (!qword_27C84D018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C84D018);
  }

  return result;
}

uint64_t sub_20DF2AD60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20DF2ADA8()
{
  result = qword_27C84D038;
  if (!qword_27C84D038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C84D030, &qword_20DF4BC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D038);
  }

  return result;
}

uint64_t sub_20DF2AE0C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = v1 + ((*(v3 + 80) + 42) & ~*(v3 + 80));

  return sub_20DF29B20(a1, v4, v5, v6, v8 | v7, v9);
}

uint64_t sub_20DF2AEA8(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0) - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  if (*(v1 + 65))
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v13 = v1 + ((*(v4 + 80) + 66) & ~*(v4 + 80));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_20DEDA9C0;

  return sub_20DF29E8C(a1, v5, v6, v7, v8, v9, v10, v12 | v11);
}

uint64_t sub_20DF2AFF0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20DF47564() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = v1 + v9;
  v14 = (v1 + v9 + *(v8 + 64));
  v15 = *v14;
  if (v14[1])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_20DEBA16C;

  return sub_20DF2621C(a1, v10, v11, v1 + v6, v12, v13, v16 | v15);
}

uint64_t sub_20DF2B1AC(uint64_t a1)
{
  v3 = *(sub_20DF47564() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));
  v9 = (v8 + *(v6 + 64));
  v10 = *v9;
  if (v9[1])
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return sub_20DF275E8(a1, v7, v1 + v4, v8, v11 | v10);
}

uint64_t sub_20DF2B2E4(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_20DF47564() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D010, &qword_20DF4BBF0) - 8);
  v8 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = v12[8];
  if (v12[9])
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20DEDA9C0;

  return sub_20DF27A2C(a1, v9, v10, v11, v1 + v5, v1 + v8, v13, v15 | v14);
}

uint64_t sub_20DF2B4C4(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t sub_20DF2B4F8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = sub_20DF47F04();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);
  v16 = a2;
  sub_20DEBB534(0, 0, v12, &unk_20DF4BCB0, v15);
}

uint64_t sub_20DF2B6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v6 = sub_20DF47424();
  v5[34] = v6;
  v7 = *(v6 - 8);
  v5[35] = v7;
  v8 = *(v7 + 64) + 15;
  v5[36] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340);
  v5[37] = v9;
  v10 = *(v9 - 8);
  v5[38] = v10;
  v5[39] = *(v10 + 64);
  v5[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF2B810, 0, 0);
}

uint64_t sub_20DF2B810()
{
  receiver = v0[20].receiver;
  super_class = v0[18].super_class;
  v3 = v0[19].receiver;
  v4 = v0[16].receiver;
  v3[2](receiver, v0[16].super_class, super_class);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v3[4]((v6 + v5), receiver, super_class);
  v0[11].receiver = sub_20DF2C0F0;
  v0[11].super_class = v6;
  v0[9].receiver = MEMORY[0x277D85DD0];
  v0[9].super_class = 1107296256;
  v0[10].receiver = sub_20DF3C970;
  v0[10].super_class = &block_descriptor_7;
  v7 = _Block_copy(&v0[9]);
  v8 = v0[11].super_class;
  v9 = v4;

  v10 = [v9 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v11 = v0[15].receiver;
    v0[20].super_class = v11;
    sub_20DF47744();
    v12 = sub_20DF47734();
    sub_20DF47724();
    v0[15].super_class = MEMORY[0x277D84F90];
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v0[17].super_class;
      v15 = *(v14 + 2);
      v14 = (v14 + 16);
      v50 = v15;
      v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v17 = *MEMORY[0x277D861C0];
      v48 = *(v14 + 7);
      v47 = *MEMORY[0x277D861E8];
      v44 = (v14 - 8);
      v45 = (v14 + 16);
      v46 = MEMORY[0x277D84F90];
      v49 = *MEMORY[0x277D861C0];
      v15(v0[18].receiver, v16, v0[17].receiver);
      while (1)
      {
        type metadata accessor for EKSandboxExtension.Context();
        v20 = swift_allocObject();
        v20[2] = j__sandbox_extension_consume;
        v20[3] = 0;
        v20[4] = j__sandbox_extension_release;
        v20[5] = 0;
        v20[6] = j__sandbox_extension_issue_file;
        v20[7] = 0;
        v21 = type metadata accessor for EKSandboxExtension();
        v22 = *(v21 + 48);
        v23 = *(v21 + 52);
        v24 = swift_allocObject();
        *(v24 + 40) = 0;
        *(v24 + 48) = 1;
        if (!v17)
        {
          break;
        }

        v25 = v24;
        v26 = v0[18].receiver;
        sub_20DF47D84();
        sub_20DF47414();
        sub_20DF47D44();

        sub_20DF47D44();

        v27 = sandbox_extension_issue_file();

        v28 = v0[18].receiver;
        v29 = v0[17].receiver;
        if (v27)
        {
          *(v25 + 3) = sub_20DF47D84();
          *(v25 + 4) = v30;
          free(v27);
          (*v45)(&v25[OBJC_IVAR____TtC17EnergyKitInternal18EKSandboxExtension_fileURL], v28, v29);
          *(v25 + 2) = v20;

          MEMORY[0x20F328A20](v31);
          if (*((v0[15].super_class & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[15].super_class & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v32 = *((v0[15].super_class & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_20DF47E84();
          }

          sub_20DF47EA4();

          v46 = v0[15].super_class;
        }

        else
        {

          (*v44)(v28, v29);
          v18 = *(*v25 + 48);
          v19 = *(*v25 + 52);
          swift_deallocPartialClassInstance();
        }

        v17 = v49;
        v16 += v48;
        if (!--v13)
        {

          v39 = v46;
          goto LABEL_17;
        }

        v50(v0[18].receiver, v16, v0[17].receiver);
      }

      __break(1u);
    }

    else
    {

      v39 = MEMORY[0x277D84F90];
LABEL_17:
      v40 = type metadata accessor for XPCEKSandboxExtensionContainer();
      v41 = objc_allocWithZone(v40);
      *&v41[OBJC_IVAR____TtC17EnergyKitInternal30XPCEKSandboxExtensionContainer_value] = v39;
      v0[14].receiver = v41;
      v0[14].super_class = v40;
      v42 = objc_msgSendSuper2(v0 + 14, sel_init);
      v0[21].receiver = v42;
      v0[1].receiver = v0;
      v0[1].super_class = sub_20DF2BE48;
      v43 = swift_continuation_init();
      v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
      v0[5].receiver = MEMORY[0x277D85DD0];
      v0[5].super_class = 1107296256;
      v0[6].receiver = sub_20DF2B4C4;
      v0[6].super_class = &block_descriptor_8_0;
      v0[7].receiver = v43;
      [(objc_class *)v11 setUpEKSandboxWithSandboxExtension:v42 completionHandler:&v0[5]];
      v24 = &v0[1];
    }

    return MEMORY[0x282200938](v24);
  }

  else
  {
    v33 = v0[18].super_class;
    v34 = v0[16].super_class;
    [v0[16].receiver invalidate];
    sub_20DF47EE4();
    v35 = v0[20].receiver;
    v36 = v0[18].receiver;

    v37 = v0->super_class;

    return v37();
  }
}

uint64_t sub_20DF2BE48()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF2BF28, 0, 0);
}

uint64_t sub_20DF2BF28()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  v4 = *(v0 + 264);
  [*(v0 + 256) invalidate];
  sub_20DF47EE4();
  swift_unknownObjectRelease();

  v5 = *(v0 + 320);
  v6 = *(v0 + 288);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20DF2BFEC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEBA16C;

  return sub_20DF2B6E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20DF2C0F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  [*(v0 + 16) invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340);
  return sub_20DF47EE4();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t EnergySite.generateMockAMIData(startDate:endDate:forceAllReadingsToConstant:recordInterval:batchSize:rateSchedule:netMetering:direction:randomization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 235) = v18;
  *(v9 + 104) = v17;
  *(v9 + 112) = v8;
  *(v9 + 234) = v16;
  *(v9 + 88) = a8;
  *(v9 + 96) = v15;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  *(v9 + 233) = a5;
  *(v9 + 56) = a3;
  *(v9 + 64) = a4;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  v10 = sub_20DF47BD4();
  *(v9 + 120) = v10;
  v11 = *(v10 - 8);
  *(v9 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF2C308, 0, 0);
}

uint64_t sub_20DF2C308()
{
  v142 = v0;
  if (sub_20DF47794())
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 200);
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    v4 = *(v0 + 112);
    v5 = __swift_project_value_buffer(v2, qword_281122F18);
    swift_beginAccess();
    v140 = *(v3 + 16);
    v140(v1, v5, v2);

    v6 = sub_20DF47BB4();
    v7 = sub_20DF47FF4();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 200);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v137 = v5;
    if (v8)
    {
      v134 = *(v0 + 200);
      v12 = *(v0 + 112);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v141 = v14;
      *v13 = 136315138;
      v15 = *(v12 + 16);
      v16 = sub_20DF479B4();
      v18 = v17;

      v19 = sub_20DED38E8(v16, v18, &v141);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_20DEAF000, v6, v7, "Configs that will be used to generate mock data for %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      v20 = v14;
      v5 = v137;
      MEMORY[0x20F329700](v20, -1, -1);
      MEMORY[0x20F329700](v13, -1, -1);

      v21 = *(v10 + 8);
      v21(v134, v11);
    }

    else
    {

      v21 = *(v10 + 8);
      v21(v9, v11);
    }

    v33 = *(v0 + 48);
    v140(*(v0 + 192), v5, *(v0 + 120));

    v34 = sub_20DF47BB4();
    v35 = sub_20DF47FF4();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 192);
    v38 = *(v0 + 120);
    v39 = *(v0 + 128);
    v135 = v21;
    if (v36)
    {
      v41 = *(v0 + 40);
      v40 = *(v0 + 48);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v141 = v43;
      *v42 = 136315138;
      v44 = v41;
      v21 = v135;
      *(v42 + 4) = sub_20DED38E8(v44, v40, &v141);
      _os_log_impl(&dword_20DEAF000, v34, v35, "Start date: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v45 = v43;
      v5 = v137;
      MEMORY[0x20F329700](v45, -1, -1);
      MEMORY[0x20F329700](v42, -1, -1);
    }

    v21(v37, v38);
    v46 = *(v0 + 64);
    v140(*(v0 + 184), v5, *(v0 + 120));

    v47 = sub_20DF47BB4();
    v48 = sub_20DF47FF4();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 184);
    v51 = *(v0 + 120);
    v52 = *(v0 + 128);
    if (v49)
    {
      v54 = *(v0 + 56);
      v53 = *(v0 + 64);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v141 = v56;
      *v55 = 136315138;
      v57 = v54;
      v21 = v135;
      *(v55 + 4) = sub_20DED38E8(v57, v53, &v141);
      _os_log_impl(&dword_20DEAF000, v47, v48, "End date: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      v58 = v56;
      v5 = v137;
      MEMORY[0x20F329700](v58, -1, -1);
      MEMORY[0x20F329700](v55, -1, -1);
    }

    v21(v50, v51);
    v140(*(v0 + 176), v5, *(v0 + 120));
    v59 = sub_20DF47BB4();
    v60 = sub_20DF47FF4();
    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 176);
    v63 = *(v0 + 120);
    v64 = *(v0 + 128);
    if (v61)
    {
      v65 = *(v0 + 233);
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v141 = v67;
      *v66 = 136315138;
      if (v65)
      {
        v68 = 1702195828;
      }

      else
      {
        v68 = 0x65736C6166;
      }

      if (v65)
      {
        v69 = 0xE400000000000000;
      }

      else
      {
        v69 = 0xE500000000000000;
      }

      v70 = sub_20DED38E8(v68, v69, &v141);

      *(v66 + 4) = v70;
      v5 = v137;
      _os_log_impl(&dword_20DEAF000, v59, v60, "Force all readings to be constant: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x20F329700](v67, -1, -1);
      MEMORY[0x20F329700](v66, -1, -1);

      v135(v62, v63);
    }

    else
    {

      v21(v62, v63);
    }

    v140(*(v0 + 168), v5, *(v0 + 120));
    v71 = sub_20DF47BB4();
    v72 = sub_20DF47FF4();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = *(v0 + 72);
      v74 = swift_slowAlloc();
      *v74 = 134217984;
      *(v74 + 4) = v73;
      _os_log_impl(&dword_20DEAF000, v71, v72, "Record interval: %ld seconds", v74, 0xCu);
      MEMORY[0x20F329700](v74, -1, -1);
    }

    v76 = *(v0 + 160);
    v75 = *(v0 + 168);
    v77 = *(v0 + 120);
    v78 = *(v0 + 128);
    v79 = *(v0 + 96);

    v135(v75, v77);
    v140(v76, v5, v77);

    v80 = sub_20DF47BB4();
    v81 = sub_20DF47FF4();

    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 160);
    v84 = *(v0 + 120);
    if (v82)
    {
      v86 = *(v0 + 88);
      v85 = *(v0 + 96);
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v141 = v88;
      *v87 = 136315138;
      *(v87 + 4) = sub_20DED38E8(v86, v85, &v141);
      _os_log_impl(&dword_20DEAF000, v80, v81, "Rate Schedule: %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      v89 = v88;
      v5 = v137;
      MEMORY[0x20F329700](v89, -1, -1);
      MEMORY[0x20F329700](v87, -1, -1);
    }

    v135(v83, v84);
    v90 = v135;
    v140(*(v0 + 152), v5, *(v0 + 120));
    v91 = sub_20DF47BB4();
    v92 = sub_20DF47FF4();
    v93 = os_log_type_enabled(v91, v92);
    v94 = *(v0 + 152);
    v95 = *(v0 + 120);
    if (v93)
    {
      v96 = *(v0 + 234);
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v141 = v98;
      *v97 = 136315138;
      if (v96)
      {
        v99 = 1702195828;
      }

      else
      {
        v99 = 0x65736C6166;
      }

      if (v96)
      {
        v100 = 0xE400000000000000;
      }

      else
      {
        v100 = 0xE500000000000000;
      }

      v101 = sub_20DED38E8(v99, v100, &v141);

      *(v97 + 4) = v101;
      v5 = v137;
      _os_log_impl(&dword_20DEAF000, v91, v92, "Net metering: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      v102 = v98;
      v90 = v135;
      MEMORY[0x20F329700](v102, -1, -1);
      MEMORY[0x20F329700](v97, -1, -1);
    }

    v90(v94, v95);
    v140(*(v0 + 144), v5, *(v0 + 120));
    v103 = sub_20DF47BB4();
    v104 = sub_20DF47FF4();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = *(v0 + 104);
      v106 = swift_slowAlloc();
      *v106 = 134217984;
      *(v106 + 4) = v105;
      _os_log_impl(&dword_20DEAF000, v103, v104, "Direction of energy flow: %ld", v106, 0xCu);
      MEMORY[0x20F329700](v106, -1, -1);
    }

    v108 = *(v0 + 136);
    v107 = *(v0 + 144);
    v109 = *(v0 + 120);

    v90(v107, v109);
    v140(v108, v5, v109);
    v110 = sub_20DF47BB4();
    v111 = sub_20DF47FF4();
    v112 = os_log_type_enabled(v110, v111);
    v113 = *(v0 + 136);
    v114 = *(v0 + 120);
    if (v112)
    {
      v115 = *(v0 + 235);
      v116 = swift_slowAlloc();
      v117 = v90;
      v118 = swift_slowAlloc();
      v141 = v118;
      *v116 = 136315138;
      if (v115)
      {
        v119 = 1702195828;
      }

      else
      {
        v119 = 0x65736C6166;
      }

      if (v115)
      {
        v120 = 0xE400000000000000;
      }

      else
      {
        v120 = 0xE500000000000000;
      }

      v121 = sub_20DED38E8(v119, v120, &v141);

      *(v116 + 4) = v121;
      _os_log_impl(&dword_20DEAF000, v110, v111, "Demo mode: %s", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v118);
      MEMORY[0x20F329700](v118, -1, -1);
      MEMORY[0x20F329700](v116, -1, -1);

      v117(v113, v114);
    }

    else
    {

      v90(v113, v114);
    }

    v139 = *(v0 + 235);
    v123 = *(v0 + 104);
    v122 = *(v0 + 112);
    v124 = *(v0 + 234);
    v126 = *(v0 + 88);
    v125 = *(v0 + 96);
    v127 = *(v0 + 233);
    v128 = *(v0 + 64);
    v136 = *(v0 + 48);
    v138 = *(v0 + 72);
    v129 = *(v0 + 40);
    v130 = swift_task_alloc();
    *(v0 + 208) = v130;
    *(v130 + 16) = v122;
    *(v130 + 24) = v129;
    *(v130 + 32) = v136;
    *(v130 + 48) = v128;
    *(v130 + 56) = v127;
    *(v130 + 64) = v138;
    *(v130 + 80) = v126;
    *(v130 + 88) = v125;
    *(v130 + 96) = v124;
    *(v130 + 104) = v123;
    *(v130 + 112) = v139;
    v131 = *(MEMORY[0x277D85A40] + 4);
    v132 = swift_task_alloc();
    *(v0 + 216) = v132;
    *v132 = v0;
    v132[1] = sub_20DF2CF64;
    v133 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](v0 + 232, 0, 0, 0xD00000000000008CLL, 0x800000020DF4FFC0, sub_20DF2ED44, v130, v133);
  }

  else
  {
    v23 = *(v0 + 192);
    v22 = *(v0 + 200);
    v25 = *(v0 + 176);
    v24 = *(v0 + 184);
    v27 = *(v0 + 160);
    v26 = *(v0 + 168);
    v29 = *(v0 + 144);
    v28 = *(v0 + 152);
    v30 = *(v0 + 136);

    v31 = *(v0 + 8);

    return v31(0);
  }
}

uint64_t sub_20DF2CF64()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_20DF2D158;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_20DF2D080;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF2D080()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 136);

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_20DF2D158()
{
  v1 = *(v0 + 208);

  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 136);

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_20DF2D238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14)
{
  v54 = a8;
  v44 = a3;
  v45 = a4;
  v52 = a7;
  v53 = a14;
  v50 = a6;
  v51 = a13;
  v49 = a12;
  v47 = a11;
  v48 = a5;
  v46 = a10;
  v42 = a2;
  v43 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v40 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v39 - v22;
  v41 = &v39 - v22;
  v24 = sub_20DF47F04();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  (*(v16 + 16))(v19, a1, v15);
  v25 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v26 = (v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  (*(v16 + 32))(v30 + v25, v19, v40);
  *(v30 + v26) = v42;
  v31 = (v30 + v27);
  v32 = v45;
  *v31 = v44;
  v31[1] = v32;
  v33 = v30 + v39;
  v34 = v47;
  v35 = v50;
  *v33 = v48;
  *(v33 + 8) = v35;
  *(v33 + 16) = v52;
  *(v30 + v28) = v54;
  *(v30 + v29) = v43;
  v36 = v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v36 = v46;
  *(v36 + 8) = v34;
  *(v36 + 16) = v49;
  v37 = v30 + ((v29 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v37 = v51;
  *(v37 + 8) = v53;

  sub_20DEBB534(0, 0, v41, &unk_20DF4BCE8, v30);
}

uint64_t sub_20DF2D520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 332) = v21;
  *(v8 + 224) = v18;
  *(v8 + 232) = v20;
  *(v8 + 331) = v19;
  *(v8 + 208) = v16;
  *(v8 + 216) = v17;
  *(v8 + 192) = v13;
  *(v8 + 200) = v15;
  *(v8 + 330) = v14;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 152) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  *(v8 + 240) = v9;
  v10 = *(v9 - 8);
  *(v8 + 248) = v10;
  *(v8 + 256) = *(v10 + 64);
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF2D634, 0, 0);
}

uint64_t sub_20DF2D634()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v27 = *(v0 + 332);
  v4 = *(v0 + 240);
  v26 = *(v0 + 232);
  v25 = *(v0 + 331);
  v23 = *(v0 + 216);
  v24 = *(v0 + 224);
  v29 = *(v0 + 200);
  v30 = *(v0 + 208);
  v28 = *(v0 + 330);
  v21 = *(v0 + 184);
  v22 = *(v0 + 192);
  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 272) = sub_20DF3C9D8();
  (*(v2 + 16))(v1, v5, v4);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  (*(v2 + 32))(v8 + v7, v1, v4);
  v9 = sub_20DF3D598(sub_20DF2F230, v8);
  *(v0 + 280) = v9;

  v10 = *(v6 + 16);
  sub_20DF479B4();

  v11 = sub_20DF47D04();
  *(v0 + 288) = v11;

  v12 = sub_20DF47D04();
  *(v0 + 296) = v12;
  v13 = sub_20DF47D04();
  *(v0 + 304) = v13;
  v14 = sub_20DF47D04();
  *(v0 + 312) = v14;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 328;
  *(v0 + 24) = sub_20DF2D904;
  v15 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA40, &qword_20DF49FA0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DF3B890;
  *(v0 + 104) = &block_descriptor_16;
  *(v0 + 112) = v15;
  LOBYTE(v18) = v27;
  LOBYTE(v17) = v25;
  [v9 generateMockAMIDataWithSiteID:v11 startDate:v12 endDate:v13 forceAllReadingsToConstant:v28 recordInterval:v29 batchSize:v30 rateSchedule:v14 netMetering:v17 direction:v26 randomization:v18 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DF2D904()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_20DF2DAE0;
  }

  else
  {
    v3 = sub_20DF2DA14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF2DA14()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v7 = *(v0 + 240);
  v8 = *(v0 + 152);
  v9 = *(v0 + 328);
  swift_unknownObjectRelease();

  [*(v6 + 16) invalidate];
  *(v0 + 329) = v9;
  sub_20DF47EE4();

  v10 = *(v0 + 264);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_20DF2DAE0()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  v7 = v0[34];
  v12 = v0[30];
  v8 = v0[19];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[18] = v1;
  sub_20DF47ED4();
  v9 = v0[33];

  v10 = v0[1];

  return v10();
}

uint64_t sub_20DF2DBB4(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0xD00000000000008CLL, 0x800000020DF4FFC0, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  return sub_20DF47ED4();
}

uint64_t EnergySite.generateMultipleMeterMockAMIData(startDate:endDate:recordInterval:rateSchedule:multipleMeters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x2822009F8](sub_20DF2DEA0, 0, 0);
}

uint64_t sub_20DF2DEA0()
{
  if (sub_20DF47794())
  {
    v2 = *(v0 + 72);
    v1 = *(v0 + 80);
    v3 = *(v0 + 48);
    v12 = *(v0 + 32);
    v13 = *(v0 + 56);
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v6 = swift_task_alloc();
    *(v0 + 88) = v6;
    *(v6 + 16) = v1;
    *(v6 + 24) = v5;
    *(v6 + 32) = v4;
    *(v6 + 40) = v12;
    *(v6 + 56) = v3;
    *(v6 + 64) = v13;
    *(v6 + 80) = v2;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_20DF2E01C;
    v9 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](v0 + 112, 0, 0, 0xD00000000000005FLL, 0x800000020DF50050, sub_20DF2EDA0, v6, v9);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_20DF2E01C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_20DF2E150;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_20DF2E138;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF2E150()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_20DF2E1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a7;
  v48 = a8;
  v41 = a3;
  v42 = a4;
  v40 = a2;
  v45 = a10;
  v46 = a6;
  v43 = a9;
  v44 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v38 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v39 = &v37 - v18;
  v20 = sub_20DF47F04();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v12 + 16))(v15, a1, v11);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v12 + 32))(v27 + v21, v15, v38);
  v28 = v41;
  *(v27 + v22) = v40;
  v29 = (v27 + v23);
  v31 = v42;
  v30 = v43;
  *v29 = v28;
  v29[1] = v31;
  v32 = (v27 + v24);
  v33 = v46;
  *v32 = v44;
  v32[1] = v33;
  v34 = v48;
  *(v27 + v25) = v47;
  v35 = (v27 + v26);
  *v35 = v34;
  v35[1] = v30;
  *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v45;

  sub_20DEBB534(0, 0, v39, &unk_20DF4BCD8, v27);
}

uint64_t sub_20DF2E454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 224) = v15;
  *(v8 + 192) = v13;
  *(v8 + 208) = v14;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 160) = a5;
  *(v8 + 168) = a6;
  *(v8 + 152) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  *(v8 + 232) = v9;
  v10 = *(v9 - 8);
  *(v8 + 240) = v10;
  *(v8 + 248) = *(v10 + 64);
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF2E544, 0, 0);
}

uint64_t sub_20DF2E544()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v21 = v0[26];
  v22 = v0[27];
  v23 = v0[25];
  v24 = v0[28];
  v19 = v0[23];
  v20 = v0[24];
  v17 = v0[21];
  v18 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[33] = sub_20DF3C9D8();
  (*(v4 + 16))(v2, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v2, v3);
  v9 = sub_20DF3D598(sub_20DF2EF80, v8);
  v0[34] = v9;

  v10 = *(v6 + 16);
  sub_20DF479B4();

  v11 = sub_20DF47D04();
  v0[35] = v11;

  v12 = sub_20DF47D04();
  v0[36] = v12;
  v13 = sub_20DF47D04();
  v0[37] = v13;
  v14 = sub_20DF47D04();
  v0[38] = v14;
  v0[2] = v0;
  v0[7] = v0 + 40;
  v0[3] = sub_20DF2E7D8;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA40, &qword_20DF49FA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF3B890;
  v0[13] = &block_descriptor_8;
  v0[14] = v15;
  [v9 generateMultipleMeterMockAMIDataWithSiteID:v11 startDate:v12 endDate:v13 recordInterval:v23 rateSchedule:v14 multipleMeters:v24 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF2E7D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_20DF2E9B4;
  }

  else
  {
    v3 = sub_20DF2E8E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF2E8E8()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 232);
  v8 = *(v0 + 152);
  v9 = *(v0 + 320);
  swift_unknownObjectRelease();

  [*(v6 + 16) invalidate];
  *(v0 + 321) = v9;
  sub_20DF47EE4();

  v10 = *(v0 + 256);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_20DF2E9B4()
{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  v12 = v0[29];
  v8 = v0[19];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[18] = v1;
  sub_20DF47ED4();
  v9 = v0[32];

  v10 = v0[1];

  return v10();
}

uint64_t sub_20DF2EA88(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0xD00000000000005FLL, 0x800000020DF50050, &v23);
    *(v14 + 12) = 2080;
    v22[1] = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "%s error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  return sub_20DF47ED4();
}

uint64_t sub_20DF2EDD8(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v1 + 24);
  v23 = *(v1 + 16);
  v21 = *(v1 + v6);
  v11 = *(v1 + v7 + 8);
  v20 = *(v1 + v7);
  v13 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = *(v1 + v10 + 8);
  v17 = *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_20DEDA9C0;

  return sub_20DF2E454(a1, v23, v22, v1 + v5, v21, v20, v11, v13);
}

uint64_t sub_20DF2EFB0(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v1 + 24);
  v30 = *(v1 + 16);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v1 + v6);
  v12 = (v1 + v7);
  v26 = v12[1];
  v27 = *v12;
  v25 = *(v1 + v8);
  v24 = *(v1 + v8 + 8);
  v23 = *(v1 + v9);
  v13 = *(v1 + v8 + 16);
  v14 = *(v1 + v10);
  v15 = *(v1 + v11);
  v16 = *(v1 + v11 + 8);
  v17 = *(v1 + v11 + 16);
  v18 = (v1 + ((v10 + 39) & 0xFFFFFFFFFFFFFFF8));
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = swift_task_alloc();
  *(v3 + 16) = v21;
  *v21 = v3;
  v21[1] = sub_20DEBA16C;

  return sub_20DF2D520(a1, v30, v29, v1 + v5, v28, v27, v26, v25);
}

uint64_t objectdestroy_5Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DF2F248(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_20DF2F2E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1801807223;
    }

    else
    {
      v3 = 7954788;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x68746E6F6DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x68746E6F4D786973;
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1918985593;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1801807223;
    }

    else
    {
      v9 = 7954788;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x68746E6F4D786973;
    v6 = 0xE900000000000073;
    if (a2 != 3)
    {
      v5 = 1918985593;
      v6 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x68746E6F6DLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_20DF483D4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t EnergySite.historicalEnergyUsage(interval:start:timezone:utilityID:subscriptionID:bulk:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 249) = v20;
  *(v9 + 112) = a8;
  *(v9 + 120) = v8;
  *(v9 + 96) = a6;
  *(v9 + 104) = a7;
  *(v9 + 80) = a4;
  *(v9 + 88) = a5;
  *(v9 + 64) = a1;
  *(v9 + 72) = a3;
  v11 = sub_20DF47BD4();
  *(v9 + 128) = v11;
  v12 = *(v11 - 8);
  *(v9 + 136) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D058, &qword_20DF4BCF8) - 8) + 64) + 15;
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  v15 = sub_20DF474E4();
  *(v9 + 176) = v15;
  v16 = *(v15 - 8);
  *(v9 + 184) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 250) = *a2;

  return MEMORY[0x2822009F8](sub_20DF2F604, 0, 0);
}

uint64_t sub_20DF2F604()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = *(v0 + 72);
  LOBYTE(v135) = *(v0 + 250);
  sub_20DF30B0C(&v135, v3, v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D060, &qword_20DF4BD00);
  v5 = *(*(v4 - 8) + 48);
  if (v5(v1, 1, v4) == 1)
  {
    sub_20DED8730(*(v0 + 168), &qword_27C84D058, &qword_20DF4BCF8);
    if (qword_27C84C730 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = *(v0 + 176);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);
    v12 = *(v0 + 72);
    v13 = __swift_project_value_buffer(v11, qword_27C851F60);
    swift_beginAccess();
    (*(v10 + 16))(v9, v13, v11);
    (*(v7 + 16))(v6, v12, v8);
    v14 = sub_20DF47BB4();
    v15 = sub_20DF47FF4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 250);
      v17 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v135 = v129;
      *v17 = 136315650;
      *(v17 + 4) = sub_20DED38E8(0xD00000000000004DLL, 0x800000020DF500B0, &v135);
      v18 = 0xE300000000000000;
      *(v17 + 12) = 2080;
      v19 = 0xE500000000000000;
      v20 = 0x68746E6F6DLL;
      v21 = 0x68746E6F4D786973;
      v22 = 0xE900000000000073;
      if (v16 != 3)
      {
        v21 = 1918985593;
        v22 = 0xE400000000000000;
      }

      if (v16 != 2)
      {
        v20 = v21;
        v19 = v22;
      }

      v23 = 1801807223;
      if (v16)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v23 = 7954788;
      }

      if (v16 <= 1)
      {
        v24 = v23;
      }

      else
      {
        v24 = v20;
      }

      if (v16 <= 1)
      {
        v25 = v18;
      }

      else
      {
        v25 = v19;
      }

      v26 = *(v0 + 184);
      v27 = *(v0 + 192);
      v28 = *(v0 + 176);
      v29 = *(v0 + 136);
      v124 = *(v0 + 128);
      v127 = *(v0 + 144);
      v30 = sub_20DED38E8(v24, v25, &v135);

      *(v17 + 14) = v30;
      *(v17 + 22) = 2080;
      sub_20DF3AB8C(&qword_27C84D068, MEMORY[0x277CC9578]);
      v31 = sub_20DF483B4();
      v33 = v32;
      (*(v26 + 8))(v27, v28);
      v34 = sub_20DED38E8(v31, v33, &v135);

      *(v17 + 24) = v34;
      _os_log_impl(&dword_20DEAF000, v14, v15, "%s error calculating intervals parameters. interval:%s, start:%s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F329700](v129, -1, -1);
      MEMORY[0x20F329700](v17, -1, -1);

      (*(v29 + 8))(v127, v124);
    }

    else
    {
      v47 = *(v0 + 184);
      v46 = *(v0 + 192);
      v48 = *(v0 + 176);
      v50 = *(v0 + 136);
      v49 = *(v0 + 144);
      v51 = *(v0 + 128);

      (*(v47 + 8))(v46, v48);
      (*(v50 + 8))(v49, v51);
    }

LABEL_23:
    v52 = *(v0 + 216);
    v53 = *(v0 + 224);
    v55 = *(v0 + 200);
    v54 = *(v0 + 208);
    v56 = *(v0 + 192);
    v58 = *(v0 + 160);
    v57 = *(v0 + 168);
    v59 = *(v0 + 152);
    v131 = *(v0 + 144);
    v60 = *(v0 + 64);
    v61 = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
    (*(*(v61 - 8) + 56))(v60, 1, 1, v61);

    v62 = *(v0 + 8);

    return v62();
  }

  v130 = v5;
  v35 = *(v0 + 216);
  v36 = *(v0 + 224);
  v37 = *(v0 + 176);
  v38 = *(v0 + 184);
  v39 = *(v0 + 168);
  v40 = *(v0 + 249);
  v41 = *(v4 + 48);
  v42 = sub_20DF475C4();
  v122 = *(*(v42 - 8) + 8);
  v125 = v42;
  v122(v39);
  v119 = *(v38 + 32);
  v119(v36, v39 + v41, v37);
  v43 = *(v38 + 16);
  v43(v35, v36, v37);
  if (v40 == 1)
  {
    v44 = *(v0 + 250);
    if (v44 == 3)
    {

      v45 = 3;
    }

    else
    {
      v64 = sub_20DF483D4();

      if (v64)
      {
        v45 = v44;
      }

      else
      {
        v45 = 4;
      }
    }

    v65 = *(v0 + 160);
    v66 = *(v0 + 120);
    v67 = *(v0 + 72);
    LOBYTE(v135) = v45;
    sub_20DF30B0C(&v135, v67, v65);
    if (v130(v65, 1, v4) == 1)
    {
      sub_20DED8730(*(v0 + 160), &qword_27C84D058, &qword_20DF4BCF8);
      if (qword_27C84C730 != -1)
      {
        swift_once();
      }

      v68 = *(v0 + 200);
      v69 = *(v0 + 176);
      v70 = *(v0 + 152);
      v72 = *(v0 + 128);
      v71 = *(v0 + 136);
      v73 = *(v0 + 72);
      v74 = __swift_project_value_buffer(v72, qword_27C851F60);
      swift_beginAccess();
      (*(v71 + 16))(v70, v74, v72);
      v43(v68, v73, v69);
      v75 = sub_20DF47BB4();
      v76 = sub_20DF47FF4();
      if (os_log_type_enabled(v75, v76))
      {
        v132 = v76;
        v77 = *(v0 + 250);
        v78 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v135 = v128;
        *v78 = 136315650;
        *(v78 + 4) = sub_20DED38E8(0xD00000000000004DLL, 0x800000020DF500B0, &v135);
        *(v78 + 12) = 2080;
        v79 = 0xE500000000000000;
        v80 = 0x68746E6F6DLL;
        v81 = 0xE400000000000000;
        v82 = 1918985593;
        if (v77 == 3)
        {
          v82 = 0x68746E6F4D786973;
          v81 = 0xE900000000000073;
        }

        if (v77 != 2)
        {
          v80 = v82;
          v79 = v81;
        }

        v83 = 0xE300000000000000;
        v84 = 1801807223;
        if (v77)
        {
          v83 = 0xE400000000000000;
        }

        else
        {
          v84 = 7954788;
        }

        if (v77 <= 1)
        {
          v85 = v84;
        }

        else
        {
          v85 = v80;
        }

        if (v77 <= 1)
        {
          v86 = v83;
        }

        else
        {
          v86 = v79;
        }

        v123 = *(v0 + 216);
        v126 = *(v0 + 224);
        v87 = *(v0 + 200);
        v89 = *(v0 + 176);
        v88 = *(v0 + 184);
        v90 = *(v0 + 136);
        v120 = *(v0 + 128);
        v121 = *(v0 + 152);
        v91 = sub_20DED38E8(v85, v86, &v135);

        *(v78 + 14) = v91;
        *(v78 + 22) = 2080;
        sub_20DF3AB8C(&qword_27C84D068, MEMORY[0x277CC9578]);
        v92 = sub_20DF483B4();
        v94 = v93;
        v95 = *(v88 + 8);
        v95(v87, v89);
        v96 = sub_20DED38E8(v92, v94, &v135);

        *(v78 + 24) = v96;
        _os_log_impl(&dword_20DEAF000, v75, v132, "%s error calculating intervals parameters. interval:%s, start:%s", v78, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F329700](v128, -1, -1);
        MEMORY[0x20F329700](v78, -1, -1);

        (*(v90 + 8))(v121, v120);
        v95(v123, v89);
        v95(v126, v89);
      }

      else
      {
        v110 = *(v0 + 216);
        v111 = *(v0 + 224);
        v112 = *(v0 + 200);
        v113 = *(v0 + 176);
        v114 = *(v0 + 184);
        v115 = *(v0 + 152);
        v116 = *(v0 + 128);
        v117 = *(v0 + 136);

        v118 = *(v114 + 8);
        v118(v112, v113);
        (*(v117 + 8))(v115, v116);
        v118(v110, v113);
        v118(v111, v113);
      }

      goto LABEL_23;
    }

    v97 = *(v0 + 208);
    v98 = *(v0 + 216);
    v99 = *(v0 + 176);
    v100 = *(v0 + 160);
    (*(*(v0 + 184) + 8))(v98, v99);
    v119(v97, v100 + *(v4 + 48), v99);
    (v122)(v100, v125);
    v119(v98, v97, v99);
  }

  *(v0 + 248) = *(v0 + 250);
  v101 = swift_task_alloc();
  *(v0 + 232) = v101;
  *v101 = v0;
  v101[1] = sub_20DF30100;
  v102 = *(v0 + 216);
  v103 = *(v0 + 120);
  v104 = *(v0 + 96);
  v105 = *(v0 + 104);
  v106 = *(v0 + 80);
  v107 = *(v0 + 88);
  v108 = *(v0 + 64);
  v109 = *(v0 + 72);
  v134 = *(v0 + 112);

  return EnergySite.historicalEnergyUsageInterval(interval:start:end:timezone:utilityID:subscriptionID:)(v108, (v0 + 248), v109, v102, v106, v107, v104, v105);
}

uint64_t sub_20DF30100()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_20DF30360;
  }

  else
  {
    v3 = sub_20DF30214;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF30214()
{
  v1 = v0[28];
  v2 = v0[22];
  v3 = *(v0[23] + 8);
  v3(v0[27], v2);
  v3(v1, v2);
  v4 = v0[27];
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  v16 = v0[18];
  v12 = v0[8];
  v13 = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_20DF30360()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[22];
  v4 = *(v0[23] + 8);
  v4(v0[27], v3);
  v4(v2, v3);

  v5 = v0[27];
  v6 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[19];
  v17 = v0[18];
  v13 = v0[8];
  v14 = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_20DF304B8(uint64_t a1)
{
  result = MEMORY[0x20F328B90](*(a1 + 16), MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_20DF357FC(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DF305B0(uint64_t a1)
{
  v2 = sub_20DF474E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = *(a1 + 16);
  v14 = sub_20DF3AB8C(&qword_27C84CA58, MEMORY[0x277CC9578]);
  result = MEMORY[0x20F328B90](v13, v2, v14);
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v12, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_20DF358DC(v10, v7);
      result = (*(v3 + 8))(v10, v2);
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

uint64_t sub_20DF30810(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_20DF357FC(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20DF308F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF474E4();
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
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
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
      sub_20DF358DC(v12, v9);
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

uint64_t sub_20DF30B0C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a2;
  v115 = a3;
  v4 = sub_20DF47BD4();
  v107 = *(v4 - 8);
  v108 = v4;
  v5 = *(v107 + 64);
  MEMORY[0x28223BE20](v4);
  v106 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v98 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v97 = &v95 - v12;
  MEMORY[0x28223BE20](v11);
  v96 = &v95 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C958, qword_20DF499C8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v95 - v16;
  v18 = sub_20DF47604();
  v104 = *(v18 - 8);
  v19 = *(v104 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v105 = &v95 - v23;
  v24 = sub_20DF47574();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20DF475D4();
  v110 = *(v29 - 8);
  v111 = v29;
  v30 = *(v110 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_20DF474E4();
  v112 = *(v114 - 8);
  v33 = *(v112 + 64);
  v34 = MEMORY[0x28223BE20](v114);
  v99 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v95 - v36;
  v38 = sub_20DF475C4();
  v101 = *(v38 - 8);
  v102 = v38;
  v39 = *(v101 + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v95 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v103 = &v95 - v43;
  v44 = *a1;
  v113 = v37;
  v45 = v32;
  sub_20DF474D4();
  (*(v25 + 104))(v28, *MEMORY[0x277CC9830], v24);
  sub_20DF47584();
  (*(v25 + 8))(v28, v24);
  v46 = *(v109 + 16);
  sub_20DF47A04();
  v48 = v47;

  if (!v48)
  {
    goto LABEL_4;
  }

  sub_20DF475E4();

  v49 = v104;
  if ((*(v104 + 48))(v17, 1, v18) == 1)
  {
    sub_20DED8730(v17, &qword_27C84C958, qword_20DF499C8);
LABEL_4:
    if (qword_27C84C730 != -1)
    {
      swift_once();
    }

    v50 = v108;
    v51 = __swift_project_value_buffer(v108, qword_27C851F60);
    swift_beginAccess();
    v53 = v106;
    v52 = v107;
    (*(v107 + 16))(v106, v51, v50);
    v54 = sub_20DF47BB4();
    v55 = sub_20DF47FF4();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v115;
    v58 = v113;
    if (v56)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v116 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_20DED38E8(0xD00000000000002ALL, 0x800000020DF50160, &v116);
      _os_log_impl(&dword_20DEAF000, v54, v55, "%s valid timezone set for EnergySite required", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x20F329700](v60, -1, -1);
      MEMORY[0x20F329700](v59, -1, -1);
    }

    (*(v52 + 8))(v53, v50);
    (*(v110 + 8))(v45, v111);
    (*(v112 + 8))(v58, v114);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D060, &qword_20DF4BD00);
    v62 = *(*(v61 - 8) + 56);
    v63 = v57;
    goto LABEL_9;
  }

  v65 = v105;
  (*(v49 + 32))(v105, v17, v18);
  v66 = v49;
  v67 = *(v49 + 16);
  v109 = v18;
  v67(v22, v65, v18);
  v68 = v32;
  sub_20DF475B4();
  if (v44 <= 1)
  {
    v69 = v112;
    v71 = v101;
    v70 = v102;
    if (!v44)
    {
      v79 = v99;
      v80 = v103;
      sub_20DF47AF4();
      (*(v66 + 8))(v105, v109);
      v74 = v80;
      (*(v110 + 8))(v68, v111);
      v76 = v113;
      v75 = v114;
      (*(v69 + 8))(v113, v114);
      v77 = *(v69 + 32);
      v81 = v79;
      v70 = v102;
      v77(v76, v81, v75);
      (*(v71 + 104))(v74, *MEMORY[0x277CC9980], v70);
      goto LABEL_16;
    }

    v87 = *MEMORY[0x277CC9968];
    v88 = *(v101 + 104);
    v88(v103, v87, v102);
    v88(v42, v87, v70);
    v86 = v96;
  }

  else
  {
    v69 = v112;
    v71 = v101;
    v70 = v102;
    if (v44 == 2)
    {
      v83 = *(v101 + 104);
      v83(v103, *MEMORY[0x277CC9968], v102);
      v83(v42, *MEMORY[0x277CC9998], v70);
      v84 = &v117;
    }

    else
    {
      if (v44 == 3)
      {
        v72 = v103;
        (*(v101 + 104))(v103, *MEMORY[0x277CC9940], v102);
        v73 = v99;
        sub_20DF47A54();
        (*(v66 + 8))(v105, v109);
        v74 = v72;
        (*(v110 + 8))(v68, v111);
        v76 = v113;
        v75 = v114;
        (*(v69 + 8))(v113, v114);
        v77 = *(v69 + 32);
        v78 = v73;
        v70 = v102;
        v77(v76, v78, v75);
LABEL_16:
        v82 = v115;
LABEL_24:
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D060, &qword_20DF4BD00);
        v93 = *(v92 + 48);
        (*(v71 + 32))(v82, v74, v70);
        v77((v82 + v93), v76, v75);
        v62 = *(*(v92 - 8) + 56);
        v63 = v82;
        v64 = 0;
        v61 = v92;
        return v62(v63, v64, 1, v61);
      }

      v85 = *(v101 + 104);
      v85(v103, *MEMORY[0x277CC9998], v102);
      v85(v42, *MEMORY[0x277CC9988], v70);
      v84 = &v118;
    }

    v86 = *(v84 - 32);
  }

  v89 = v68;
  v90 = v86;
  sub_20DF475A4();
  v91 = *(v71 + 8);
  v91(v42, v70);
  (*(v66 + 8))(v105, v109);
  (*(v110 + 8))(v89, v111);
  v76 = v113;
  v75 = v114;
  (*(v69 + 8))(v113, v114);
  if ((*(v69 + 48))(v90, 1, v75) != 1)
  {
    v77 = *(v69 + 32);
    v77(v76, v90, v75);
    v82 = v115;
    v74 = v103;
    goto LABEL_24;
  }

  v91(v103, v70);
  sub_20DED8730(v90, &qword_27C84C988, &qword_20DF4AD10);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D060, &qword_20DF4BD00);
  v62 = *(*(v61 - 8) + 56);
  v63 = v115;
LABEL_9:
  v64 = 1;
  return v62(v63, v64, 1, v61);
}

uint64_t EnergySite.historicalEnergyUsageInterval(interval:start:end:timezone:utilityID:subscriptionID:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 136) = v29;
  *(v9 + 144) = v8;
  *(v9 + 120) = a7;
  *(v9 + 128) = a8;
  *(v9 + 104) = a5;
  *(v9 + 112) = a6;
  *(v9 + 88) = a3;
  *(v9 + 96) = a4;
  *(v9 + 80) = a1;
  v11 = sub_20DF47BD4();
  *(v9 + 152) = v11;
  v12 = *(v11 - 8);
  *(v9 + 160) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D070, &qword_20DF4BD10) - 8) + 64) + 15;
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  v15 = sub_20DF474E4();
  *(v9 + 232) = v15;
  v16 = *(v15 - 8);
  *(v9 + 240) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 248) = swift_task_alloc();
  *(v9 + 256) = swift_task_alloc();
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  v18 = type metadata accessor for EnergySite.EnergyUsage(0);
  *(v9 + 280) = v18;
  v19 = *(v18 - 8);
  *(v9 + 288) = v19;
  v20 = *(v19 + 64) + 15;
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D078, &qword_20DF4BD18) - 8) + 64) + 15;
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  v22 = sub_20DF47834();
  *(v9 + 352) = v22;
  v23 = *(v22 - 8);
  *(v9 + 360) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D080, &qword_20DF4BD20);
  *(v9 + 408) = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 472) = swift_task_alloc();
  *(v9 + 480) = swift_task_alloc();
  *(v9 + 552) = *a2;

  return MEMORY[0x2822009F8](sub_20DF31AF0, 0, 0);
}

uint64_t sub_20DF31AF0()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 144);
  v10 = *(v0 + 112);
  v11 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = swift_task_alloc();
  *(v0 + 488) = v4;
  v5 = *(v0 + 88);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v11;
  *(v4 + 56) = v10;
  *(v4 + 72) = v3;
  *(v4 + 80) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 496) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D088, &qword_20DF4BD28);
  *(v0 + 504) = v8;
  *v7 = v0;
  v7[1] = sub_20DF31C2C;

  return MEMORY[0x2822008A0](v0 + 64, 0, 0, 0xD000000000000054, 0x800000020DF50100, sub_20DF357DC, v4, v8);
}

uint64_t sub_20DF31C2C()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v7 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = sub_20DF33ED0;
  }

  else
  {
    v5 = *(v2 + 488);

    v4 = sub_20DF31D48;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF31D48(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v117 = v8;
  v9 = 0;
  v10 = *(v8 + 64);
  v13 = *(v10 + 64);
  v12 = v10 + 64;
  v11 = v13;
  v14 = -1;
  v101 = *(v8 + 64);
  v15 = -1 << *(v101 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & v11;
  v17 = (63 - v15) >> 6;
  v18 = *(v8 + 160);
  v103 = *(v8 + 408);
  v96 = *(v8 + 240);
  v102 = (v96 + 1);
  v92 = (v18 + 8);
  v93 = (v18 + 16);
  v91 = (*(v8 + 360) + 32);
  v89 = *(v8 + 360);
  v19 = *(v8 + 512);
  v20 = MEMORY[0x277D84F98];
  v94 = v17;
  v95 = v12;
  while (1)
  {
    *(v8 + 520) = v20;
    if (!v16)
    {
      while (1)
      {
        v23 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v23 >= v17)
        {
          break;
        }

        v16 = *(v12 + 8 * v23);
        ++v9;
        if (v16)
        {
          v108 = v19;
          v111 = v20;
          v9 = v23;
          goto LABEL_13;
        }
      }

      v81 = *(v8 + 552);
      v82 = *(v8 + 144);
      v112 = *(v8 + 112);
      v115 = *(v8 + 128);
      v83 = *(v8 + 104);
      v110 = *(v8 + 88);

      v84 = swift_task_alloc();
      *(v8 + 528) = v84;
      *(v84 + 16) = v81;
      *(v84 + 24) = v110;
      *(v84 + 40) = v115;
      *(v84 + 56) = v112;
      *(v84 + 72) = v83;
      *(v84 + 80) = v82;
      v85 = *(MEMORY[0x277D85A40] + 4);
      v86 = swift_task_alloc();
      *(v8 + 536) = v86;
      *v86 = v8;
      v86[1] = sub_20DF325F4;
      a8 = *(v8 + 504);
      a6 = sub_20DF35D0C;
      a1 = v8 + 72;
      a5 = 0x800000020DF50100;
      a2 = 0;
      a3 = 0;
      a4 = 0xD000000000000054;
      a7 = v84;

      return MEMORY[0x2822008A0](a1, a2, a3, a4, a5, a6, a7, a8);
    }

    v108 = v19;
    v111 = v20;
LABEL_13:
    v24 = *(v8 + 472);
    v25 = *(v8 + 480);
    v26 = *(v8 + 464);
    v106 = *(v8 + 400);
    v104 = *(v8 + 352);
    v27 = *(v8 + 232);
    v28 = __clz(__rbit64(v16)) | (v9 << 6);
    v99 = v96[9];
    v97 = v96[2];
    v97(v25, *(v101 + 48) + v99 * v28, v27);
    v113 = *(*(v101 + 56) + 16 * v28);
    *(v25 + *(v103 + 48)) = v113;
    v29 = v24 + *(v103 + 48);
    v30 = v96[4];
    v30(v24, v25, v27);
    *v29 = v113;
    sub_20DED8804(v24, v26, &qword_27C84D080, &qword_20DF4BD20);
    v31 = (v26 + *(v103 + 48));
    v33 = *v31;
    v32 = v31[1];
    sub_20DED8AA0(v113, *(&v113 + 1));
    sub_20DED8A4C(v33, v32);
    v34 = sub_20DF47324();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    sub_20DF47314();
    v37 = *v29;
    v38 = *(v29 + 8);
    sub_20DF3AB8C(&qword_27C84D090, MEMORY[0x277D073A8]);
    v39 = v108;
    sub_20DF47304();
    v40 = *(v8 + 464);
    if (v108)
    {
      v109 = v30;
      v114 = v39;
      v41 = *(v8 + 232);

      v107 = *v102;
      (*v102)(v40, v41);
      if (qword_281122988 != -1)
      {
        swift_once();
      }

      v42 = *(v8 + 472);
      v43 = *(v8 + 432);
      v44 = *(v8 + 176);
      v45 = *(v8 + 152);
      v46 = __swift_project_value_buffer(v45, qword_281122F18);
      swift_beginAccess();
      (*v93)(v44, v46, v45);
      sub_20DED8804(v42, v43, &qword_27C84D080, &qword_20DF4BD20);
      v47 = sub_20DF47BB4();
      v48 = sub_20DF47FF4();
      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v8 + 432);
      if (v49)
      {
        v51 = *(v8 + 424);
        v98 = v48;
        v52 = *(v8 + 272);
        v53 = *(v8 + 232);
        v105 = *(v8 + 176);
        v100 = *(v8 + 152);
        v54 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v116[0] = v90;
        *v54 = 136315138;
        sub_20DED8804(v50, v51, &qword_27C84D080, &qword_20DF4BD20);
        sub_20DED8A4C(*(v51 + *(v103 + 48)), *(v51 + *(v103 + 48) + 8));
        v109(v52, v51, v53);
        sub_20DF3AB8C(&qword_27C84D068, MEMORY[0x277CC9578]);
        v55 = sub_20DF483B4();
        v57 = v56;
        v107(v52, v53);
        sub_20DED8730(v50, &qword_27C84D080, &qword_20DF4BD20);
        v58 = sub_20DED38E8(v55, v57, v116);

        *(v54 + 4) = v58;
        _os_log_impl(&dword_20DEAF000, v47, v98, "Failed to decode entry for imports on %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v90);
        MEMORY[0x20F329700](v90, -1, -1);
        MEMORY[0x20F329700](v54, -1, -1);

        (*v92)(v105, v100);
      }

      else
      {
        v21 = *(v8 + 176);
        v22 = *(v8 + 152);

        sub_20DED8730(v50, &qword_27C84D080, &qword_20DF4BD20);
        (*v92)(v21, v22);
      }

      v17 = v94;
      v12 = v95;
      v20 = v111;
      goto LABEL_6;
    }

    v60 = *(v8 + 392);
    v59 = *(v8 + 400);
    v61 = *(v8 + 352);

    v62 = v61;
    v63 = *v91;
    (*v91)(v60, v59, v62);
    v20 = v111;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116[0] = v111;
    a1 = sub_20DEEFA5C(v40);
    v65 = *(v111 + 16);
    v66 = (a2 & 1) == 0;
    v67 = __OFADD__(v65, v66);
    v68 = v65 + v66;
    if (v67)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return MEMORY[0x2822008A0](a1, a2, a3, a4, a5, a6, a7, a8);
    }

    v69 = a2;
    if (*(v111 + 24) < v68)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v80 = a1;
      sub_20DEF0C94();
      v72 = v97;
      a1 = v80;
      v20 = v116[0];
      goto LABEL_24;
    }

LABEL_23:
    v72 = v97;
LABEL_24:
    if (v69)
    {
      (*(v89 + 40))(v20[7] + *(v89 + 72) * a1, *(v8 + 392), *(v8 + 352));
    }

    else
    {
      v73 = *(v8 + 464);
      v74 = *(v8 + 392);
      v75 = *(v8 + 352);
      v76 = *(v8 + 232);
      v20[(a1 >> 6) + 8] |= 1 << a1;
      v77 = a1;
      v72(v20[6] + a1 * v99, v73, v76);
      a1 = v63(v20[7] + *(v89 + 72) * v77, v74, v75);
      v78 = v20[2];
      v67 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v67)
      {
        goto LABEL_38;
      }

      v20[2] = v79;
    }

    v17 = v94;
    v12 = v95;
    (*v102)(*(v8 + 464), *(v8 + 232));
LABEL_6:
    v16 &= v16 - 1;
    a1 = sub_20DED8730(*(v8 + 472), &qword_27C84D080, &qword_20DF4BD20);
    v19 = 0;
  }

  v70 = *(v8 + 464);
  sub_20DEF0154(v68, isUniquelyReferenced_nonNull_native);
  v20 = v116[0];
  a1 = sub_20DEEFA5C(v70);
  if ((v69 & 1) == (v71 & 1))
  {
    goto LABEL_23;
  }

  v87 = *(v8 + 232);

  return sub_20DF48424();
}

uint64_t sub_20DF325F4()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 544) = v0;

  v5 = *(v2 + 528);

  if (v0)
  {
    v6 = sub_20DF340D8;
  }

  else
  {
    v6 = sub_20DF32728;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_20DF32728()
{
  v292 = v0;
  v1 = 0;
  v2 = *(v0 + 72);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v260 = *(v0 + 72);
  v7 = -1 << *(v260 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = *(v0 + 544);
  v11 = MEMORY[0x277D84F98];
  v239 = v9;
  v242 = v4;
  while (1)
  {
    v273 = v11;
    v279 = v10;
    if (v8)
    {
      goto LABEL_12;
    }

    do
    {
      v16 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v16 >= v9)
      {
        v77 = *(v0 + 520);

        v78 = sub_20DEB843C(0, *(v77 + 16), 0, MEMORY[0x277D84F90]);
        v79 = v78;
        if (v11[2])
        {
          v240 = v77;
          v80 = *(v0 + 520);

          v82 = sub_20DF305B0(v81);

          v84 = sub_20DF308F0(v83, v82);
          v85 = *(v84 + 16);
          if (v85)
          {
            v86 = *(v0 + 240);
            v87 = sub_20DF355D8(v85, 0);
            v88 = sub_20DF3A454(v291, &v87[(*(v86 + 80) + 32) & ~*(v86 + 80)], v85, v84);

            sub_20DEB599C();
            if (v88 != v85)
            {
              goto LABEL_91;
            }

            v10 = v279;
          }

          else
          {
            v87 = MEMORY[0x277D84F90];
          }

          v290 = v87;
          sub_20DF37AA0(&v290);
          if (!v10)
          {

            v94 = v290[2];
            if (!v94)
            {
LABEL_77:

              if (*(v79 + 16))
              {
                v195 = (v0 + 248);
                v194 = *(v0 + 248);
                v196 = *(v0 + 296);
                v197 = *(v0 + 232);
                v198 = *(v0 + 240);
                v199 = *(*(v0 + 288) + 80);
                sub_20DF3AA34(v79 + ((v199 + 32) & ~v199), v196);
                (*(v198 + 16))(v194, v196, v197);
                sub_20DF3AA98(v196);
                v200 = *(v0 + 240);
                v201 = (v200 + 32);
              }

              else
              {
                v200 = *(v0 + 240);
                v201 = (v200 + 16);
                v195 = (v0 + 88);
              }

              v202 = *v195;
              v203 = *(v0 + 520);
              v204 = *(v0 + 552);
              v205 = *(v0 + 480);
              v214 = *(v0 + 472);
              v215 = *(v0 + 464);
              v216 = *(v0 + 456);
              v217 = *(v0 + 448);
              v218 = *(v0 + 440);
              v219 = *(v0 + 432);
              v220 = *(v0 + 424);
              v221 = *(v0 + 416);
              v222 = *(v0 + 400);
              v223 = *(v0 + 392);
              v224 = *(v0 + 384);
              v225 = *(v0 + 376);
              v226 = *(v0 + 368);
              v227 = *(v0 + 344);
              v229 = *(v0 + 336);
              v231 = *(v0 + 328);
              v233 = *(v0 + 320);
              v235 = *(v0 + 312);
              v238 = *(v0 + 304);
              v241 = *(v0 + 296);
              v206 = *(v0 + 256);
              v207 = *(v0 + 232);
              v246 = *(v0 + 264);
              v251 = *(v0 + 216);
              v255 = *(v0 + 208);
              v263 = *(v0 + 200);
              v268 = *(v0 + 192);
              v272 = *(v0 + 184);
              v278 = *(v0 + 176);
              v283 = *(v0 + 168);
              v208 = *(v0 + 80);
              (*v201)(v206, v202, v207);
              v209 = type metadata accessor for EnergySite.HistoricalEnergyUsage(0);
              v210 = &v208[v209[7]];
              *v210 = 0;
              v210[8] = 1;
              v211 = &v208[v209[8]];
              *v211 = 0;
              v211[8] = 1;
              *v208 = v204;
              (*(v200 + 32))(&v208[v209[5]], v206, v207);

              *&v208[v209[6]] = v79;

              v212 = *(v0 + 8);

              v212();
              return;
            }

            v228 = *(v0 + 520);
            v95 = *(v0 + 360);
            v237 = *(v0 + 288);
            v232 = *(v0 + 280);
            v96 = *(v0 + 240);
            v97 = v290 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
            v234 = *(v96 + 72);
            v266 = (v95 + 56);
            v271 = *(v96 + 16);
            v230 = (v95 + 16);
            v281 = (v95 + 48);
            v261 = (v95 + 8);
            while (2)
            {
              v253 = v97;
              v258 = v94;
              v98 = *(v0 + 232);
              v249 = *(v0 + 240) + 16;
              v271(*(v0 + 264));
              if (*(v240 + 16) && (v99 = *(v0 + 520), v100 = sub_20DEEFA5C(*(v0 + 264)), (v101 & 1) != 0))
              {
                (*v230)(*(v0 + 224), *(v228 + 56) + *(*(v0 + 360) + 72) * v100, *(v0 + 352));
                v102 = 0;
              }

              else
              {
                v102 = 1;
              }

              v103 = *(v0 + 352);
              v105 = *(v0 + 216);
              v104 = *(v0 + 224);
              v106 = *v266;
              (*v266)(v104, v102, 1, v103);
              sub_20DED8804(v104, v105, &qword_27C84D070, &qword_20DF4BD10);
              v107 = *v281;
              if ((*v281)(v105, 1, v103) == 1)
              {
                sub_20DED8730(*(v0 + 216), &qword_27C84D070, &qword_20DF4BD10);
                v108 = 0.0;
              }

              else
              {
                v109 = *(v0 + 352);
                v110 = *(v0 + 216);
                sub_20DF47824();
                v108 = v111;
                (*v261)(v110, v109);
              }

              v112 = *(v0 + 352);
              v113 = *(v0 + 208);
              sub_20DED8804(*(v0 + 224), v113, &qword_27C84D070, &qword_20DF4BD10);
              if (v107(v113, 1, v112) == 1)
              {
                sub_20DED8730(*(v0 + 208), &qword_27C84D070, &qword_20DF4BD10);
                v244 = sub_20DED5560(MEMORY[0x277D84F90]);
                if (!v273[2])
                {
LABEL_53:
                  v118 = 1;
                  goto LABEL_54;
                }
              }

              else
              {
                v114 = *(v0 + 352);
                v115 = *(v0 + 208);
                v244 = sub_20DF47814();
                (*v261)(v115, v114);
                if (!v273[2])
                {
                  goto LABEL_53;
                }
              }

              v116 = sub_20DEEFA5C(*(v0 + 264));
              if ((v117 & 1) == 0)
              {
                goto LABEL_53;
              }

              (*v230)(*(v0 + 200), v273[7] + *(*(v0 + 360) + 72) * v116, *(v0 + 352));
              v118 = 0;
LABEL_54:
              v119 = *(v0 + 352);
              v121 = *(v0 + 192);
              v120 = *(v0 + 200);
              v106(v120, v118, 1, v119);
              sub_20DED8804(v120, v121, &qword_27C84D070, &qword_20DF4BD10);
              if (v107(v121, 1, v119) == 1)
              {
                sub_20DED8730(*(v0 + 192), &qword_27C84D070, &qword_20DF4BD10);
                v122 = 0.0;
              }

              else
              {
                v123 = *(v0 + 352);
                v124 = *(v0 + 192);
                sub_20DF47824();
                v122 = v125;
                (*v261)(v124, v123);
              }

              v288 = v79;
              v126 = *(v0 + 352);
              v127 = *(v0 + 184);
              sub_20DED8804(*(v0 + 200), v127, &qword_27C84D070, &qword_20DF4BD10);
              if (v107(v127, 1, v126) == 1)
              {
                sub_20DED8730(*(v0 + 184), &qword_27C84D070, &qword_20DF4BD10);
                v128 = MEMORY[0x277D84F90];
                v129 = sub_20DED5560(MEMORY[0x277D84F90]);
              }

              else
              {
                v130 = *(v0 + 352);
                v131 = *(v0 + 184);
                v129 = sub_20DF47814();
                (*v261)(v131, v130);
                v128 = MEMORY[0x277D84F90];
              }

              v132 = *(v0 + 312);
              v245 = *(v0 + 304);
              v133 = *(v0 + 272);
              v134 = *(v0 + 232);
              v276 = *(v0 + 240);
              (v271)(v133, *(v0 + 264), v134);
              v135 = sub_20DED5560(v128);
              v136 = sub_20DED5560(v128);
              (v271)(v132, v133, v134);
              *(v132 + v232[8]) = 1;
              *(v132 + v232[9]) = 1;
              *(v132 + v232[5]) = v108 - v122;
              *(v132 + v232[6]) = v108;
              *(v132 + v232[7]) = v122;
              *(v132 + v232[11]) = v129;
              *(v132 + v232[10]) = v244;

              *(v132 + v232[13]) = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(v129, v244);
              *(v132 + v232[12]) = v137;

              v139 = sub_20DED59C0(v138, 5uLL);

              *(v132 + v232[14]) = v139;
              v140 = sub_20DED59C0(v244, 5uLL);

              *(v132 + v232[15]) = v140;
              v141 = sub_20DED59C0(v129, 5uLL);

              *(v132 + v232[16]) = v141;
              *(v132 + v232[18]) = v136;
              *(v132 + v232[17]) = v135;

              *(v132 + v232[20]) = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(v136, v135);
              *(v132 + v232[19]) = v142;

              v144 = sub_20DED59C0(v143, 3uLL);

              *(v132 + v232[21]) = v144;
              v145 = sub_20DED59C0(v135, 3uLL);

              *(v132 + v232[22]) = v145;
              v146 = sub_20DED59C0(v136, 3uLL);

              v147 = *(v276 + 8);
              v147(v133, v134);
              *(v132 + v232[23]) = v146;
              sub_20DF3AA34(v132, v245);
              v149 = v288[2];
              v148 = v288[3];
              if (v149 >= v148 >> 1)
              {
                v288 = sub_20DEB843C(v148 > 1, v149 + 1, 1, v288);
              }

              v150 = *(v0 + 304);
              v151 = *(v0 + 264);
              v153 = *(v0 + 224);
              v152 = *(v0 + 232);
              v154 = *(v0 + 200);
              sub_20DF3AA98(*(v0 + 312));
              sub_20DED8730(v154, &qword_27C84D070, &qword_20DF4BD10);
              sub_20DED8730(v153, &qword_27C84D070, &qword_20DF4BD10);
              v147(v151, v152);
              v79 = v288;
              v288[2] = v149 + 1;
              sub_20DEF159C(v150, v288 + ((*(v237 + 80) + 32) & ~*(v237 + 80)) + *(v237 + 72) * v149);
              v97 = &v253[v234];
              v94 = v258 - 1;
              if (v258 == 1)
              {
                goto LABEL_77;
              }

              continue;
            }
          }
        }

        else
        {
          v89 = *(v77 + 16);
          if (v89)
          {
            v287 = v78;
            v90 = *(v0 + 520);
            v91 = sub_20DF356D4(v89, 0);
            v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30) - 8);
            v93 = sub_20DF3A6F8(v291, v91 + ((*(v92 + 80) + 32) & ~*(v92 + 80)), v89, v90);

            sub_20DEB599C();
            if (v93 != v89)
            {
              goto LABEL_92;
            }

            v79 = v287;
          }

          else
          {
            v91 = MEMORY[0x277D84F90];
          }

          v290 = v91;
          sub_20DF37B48(&v290);
          if (!v10)
          {
            v155 = 0;
            v157 = *(v0 + 280);
            v156 = *(v0 + 288);
            v158 = v290;
            v259 = v156;
            v262 = v290[2];
            v250 = (*(v0 + 360) + 8);
            v254 = v290;
            while (1)
            {
              if (v155 == v262)
              {
                v159 = *(v0 + 336);
                v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
                (*(*(v160 - 8) + 56))(v159, 1, 1, v160);
                v282 = v262;
              }

              else
              {
                if ((v155 & 0x8000000000000000) != 0)
                {
                  goto LABEL_87;
                }

                if (v155 >= v158[2])
                {
                  goto LABEL_88;
                }

                v161 = *(v0 + 336);
                v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
                v163 = *(v162 - 8);
                sub_20DED8804(v158 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v155, v161, &qword_27C84D098, &qword_20DF4BD30);
                v282 = v155 + 1;
                (*(v163 + 56))(v161, 0, 1, v162);
              }

              v164 = *(v0 + 344);
              sub_20DED9CE8(*(v0 + 336), v164, &qword_27C84D078, &qword_20DF4BD18);
              v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
              if ((*(*(v165 - 8) + 48))(v164, 1, v165) == 1)
              {
                goto LABEL_77;
              }

              v166 = *(v0 + 344);
              v289 = v79;
              v167 = *(v0 + 328);
              v277 = *(v0 + 320);
              v168 = *(v0 + 272);
              v170 = *(v0 + 232);
              v169 = *(v0 + 240);
              (*(*(v0 + 360) + 32))(*(v0 + 368), v166 + *(v165 + 48), *(v0 + 352));
              v267 = v170;
              (*(v169 + 32))(v168, v166, v170);
              sub_20DF47824();
              v172 = v171;
              v173 = sub_20DF47814();
              v174 = MEMORY[0x277D84F90];
              v175 = sub_20DED5560(MEMORY[0x277D84F90]);
              v176 = sub_20DED5560(v174);
              v177 = sub_20DED5560(v174);
              (*(v169 + 16))(v167, v168, v170);
              *(v167 + v157[8]) = 1;
              *(v167 + v157[9]) = 1;
              *(v167 + v157[5]) = v172;
              *(v167 + v157[6]) = v172;
              *(v167 + v157[7]) = 0;
              *(v167 + v157[11]) = v175;
              *(v167 + v157[10]) = v173;

              *(v167 + v157[13]) = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(v175, v173);
              *(v167 + v157[12]) = v178;

              v180 = sub_20DED59C0(v179, 5uLL);

              *(v167 + v157[14]) = v180;
              v181 = sub_20DED59C0(v173, 5uLL);

              *(v167 + v157[15]) = v181;
              v182 = sub_20DED59C0(v175, 5uLL);

              *(v167 + v157[16]) = v182;
              *(v167 + v157[18]) = v177;
              *(v167 + v157[17]) = v176;

              *(v167 + v157[20]) = _s17EnergyKitInternal0A4SiteC0A5UsageV027aggregateNetAndTotalImportsH17ExportsByCategory07exportslM007importslM0SDySiSdG03netL6Period_AI05totallQ0tAI_AItFZ_0(v177, v176);
              *(v167 + v157[19]) = v183;

              v185 = sub_20DED59C0(v184, 3uLL);

              *(v167 + v157[21]) = v185;
              v186 = sub_20DED59C0(v176, 3uLL);

              *(v167 + v157[22]) = v186;
              v187 = sub_20DED59C0(v177, 3uLL);

              (*(v169 + 8))(v168, v267);
              *(v167 + v157[23]) = v187;
              v188 = v167;
              v79 = v289;
              sub_20DF3AA34(v188, v277);
              v190 = v289[2];
              v189 = v289[3];
              if (v190 >= v189 >> 1)
              {
                v79 = sub_20DEB843C(v189 > 1, v190 + 1, 1, v289);
              }

              v191 = *(v0 + 368);
              v192 = *(v0 + 352);
              v193 = *(v0 + 320);
              sub_20DF3AA98(*(v0 + 328));
              (*v250)(v191, v192);
              *(v79 + 16) = v190 + 1;
              sub_20DEF159C(v193, v79 + ((*(v259 + 80) + 32) & ~*(v259 + 80)) + *(v259 + 72) * v190);
              v158 = v254;
              v155 = v282;
            }
          }
        }

        return;
      }

      v8 = *(v4 + 8 * v16);
      ++v1;
    }

    while (!v8);
    v1 = v16;
LABEL_12:
    v18 = *(v0 + 448);
    v17 = *(v0 + 456);
    v19 = *(v0 + 408);
    v274 = *(v0 + 384);
    v264 = *(v0 + 440);
    v269 = *(v0 + 352);
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = __clz(__rbit64(v8)) | (v1 << 6);
    v256 = v20[9];
    v247 = v20[2];
    v247(v17, *(v260 + 48) + v256 * v22, v21);
    v23 = v20[4];
    v284 = *(*(v260 + 56) + 16 * v22);
    *(v17 + *(v19 + 48)) = v284;
    v24 = v18 + *(v19 + 48);
    v243 = v23;
    v23(v18, v17, v21);
    *v24 = v284;
    sub_20DED8804(v18, v264, &qword_27C84D080, &qword_20DF4BD20);
    v25 = (v264 + *(v19 + 48));
    v26 = *v25;
    v27 = v25[1];
    sub_20DED8AA0(v284, *(&v284 + 1));
    sub_20DED8A4C(v26, v27);
    v28 = sub_20DF47324();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_20DF47314();
    v31 = *v24;
    v32 = *(v24 + 8);
    sub_20DF3AB8C(&qword_27C84D090, MEMORY[0x277D073A8]);
    sub_20DF47304();
    v33 = *(v0 + 440);
    if (!v279)
    {
      break;
    }

    v285 = v279;
    v34 = *(v0 + 232);
    v35 = *(v0 + 240);

    v280 = *(v35 + 8);
    v280(v33, v34);
    if (qword_281122988 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 448);
    v37 = *(v0 + 416);
    v38 = *(v0 + 160);
    v39 = *(v0 + 168);
    v40 = *(v0 + 152);
    v41 = __swift_project_value_buffer(v40, qword_281122F18);
    swift_beginAccess();
    (*(v38 + 16))(v39, v41, v40);
    sub_20DED8804(v36, v37, &qword_27C84D080, &qword_20DF4BD20);
    v42 = sub_20DF47BB4();
    v43 = sub_20DF47FF4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v0 + 416);
      v45 = *(v0 + 424);
      v248 = v44;
      v236 = *(v0 + 408);
      v257 = v43;
      v46 = *(v0 + 272);
      v47 = *(v0 + 232);
      v275 = *(v0 + 168);
      v265 = *(v0 + 160);
      v270 = *(v0 + 152);
      v48 = swift_slowAlloc();
      v252 = swift_slowAlloc();
      v291[0] = v252;
      *v48 = 136315138;
      sub_20DED8804(v44, v45, &qword_27C84D080, &qword_20DF4BD20);
      sub_20DED8A4C(*(v45 + *(v236 + 48)), *(v45 + *(v236 + 48) + 8));
      v243(v46, v45, v47);
      sub_20DF3AB8C(&qword_27C84D068, MEMORY[0x277CC9578]);
      v49 = sub_20DF483B4();
      v51 = v50;
      v280(v46, v47);
      sub_20DED8730(v248, &qword_27C84D080, &qword_20DF4BD20);
      v52 = sub_20DED38E8(v49, v51, v291);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_20DEAF000, v42, v257, "Failed to decode entry for exports on %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v252);
      MEMORY[0x20F329700](v252, -1, -1);
      MEMORY[0x20F329700](v48, -1, -1);

      (*(v265 + 8))(v275, v270);
    }

    else
    {
      v12 = *(v0 + 416);
      v14 = *(v0 + 160);
      v13 = *(v0 + 168);
      v15 = *(v0 + 152);

      sub_20DED8730(v12, &qword_27C84D080, &qword_20DF4BD20);
      (*(v14 + 8))(v13, v15);
    }

    v11 = v273;
    v9 = v239;
    v4 = v242;
LABEL_6:
    v8 &= v8 - 1;
    sub_20DED8730(*(v0 + 448), &qword_27C84D080, &qword_20DF4BD20);
    v10 = 0;
  }

  v54 = *(v0 + 376);
  v53 = *(v0 + 384);
  v55 = *(v0 + 352);
  v56 = *(v0 + 360);

  v286 = *(v56 + 32);
  v286(v54, v53, v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v291[0] = v273;
  v58 = sub_20DEEFA5C(v33);
  v60 = v273[2];
  v61 = (v59 & 1) == 0;
  v62 = __OFADD__(v60, v61);
  v63 = v60 + v61;
  if (v62)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v64 = v59;
  if (v273[3] >= v63)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v11 = v273;
      v67 = v247;
      if ((v59 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v68 = v58;
      sub_20DEF0C94();
      v58 = v68;
      v11 = v291[0];
      v67 = v247;
      if ((v64 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_24;
  }

  v65 = *(v0 + 440);
  sub_20DEF0154(v63, isUniquelyReferenced_nonNull_native);
  v11 = v291[0];
  v58 = sub_20DEEFA5C(v65);
  if ((v64 & 1) != (v66 & 1))
  {
    v213 = *(v0 + 232);

    sub_20DF48424();
    return;
  }

  v67 = v247;
  if (v64)
  {
LABEL_24:
    (*(*(v0 + 360) + 40))(v11[7] + *(*(v0 + 360) + 72) * v58, *(v0 + 376), *(v0 + 352));
LABEL_28:
    (*(*(v0 + 240) + 8))(*(v0 + 440), *(v0 + 232));
    v9 = v239;
    v4 = v242;
    goto LABEL_6;
  }

LABEL_26:
  v69 = *(v0 + 440);
  v70 = *(v0 + 376);
  v71 = *(v0 + 352);
  v72 = *(v0 + 360);
  v73 = *(v0 + 232);
  v11[(v58 >> 6) + 8] |= 1 << v58;
  v74 = v58;
  v67(v11[6] + v58 * v256, v69, v73);
  v286(v11[7] + *(v72 + 72) * v74, v70, v71);
  v75 = v11[2];
  v62 = __OFADD__(v75, 1);
  v76 = v75 + 1;
  if (!v62)
  {
    v11[2] = v76;
    goto LABEL_28;
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

uint64_t sub_20DF33ED0()
{
  v1 = v0[61];

  v37 = v0[64];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[57];
  v5 = v0[58];
  v7 = v0[55];
  v6 = v0[56];
  v9 = v0[53];
  v8 = v0[54];
  v10 = v0[52];
  v11 = v0[50];
  v14 = v0[49];
  v15 = v0[48];
  v16 = v0[47];
  v17 = v0[46];
  v18 = v0[43];
  v19 = v0[42];
  v20 = v0[41];
  v21 = v0[40];
  v22 = v0[39];
  v23 = v0[38];
  v24 = v0[37];
  v25 = v0[34];
  v26 = v0[33];
  v27 = v0[32];
  v28 = v0[31];
  v29 = v0[28];
  v30 = v0[27];
  v31 = v0[26];
  v32 = v0[25];
  v33 = v0[24];
  v34 = v0[23];
  v35 = v0[22];
  v36 = v0[21];

  v12 = v0[1];

  return v12();
}

uint64_t sub_20DF340D8()
{
  v1 = v0[65];

  v37 = v0[68];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[57];
  v5 = v0[58];
  v7 = v0[55];
  v6 = v0[56];
  v9 = v0[53];
  v8 = v0[54];
  v10 = v0[52];
  v11 = v0[50];
  v14 = v0[49];
  v15 = v0[48];
  v16 = v0[47];
  v17 = v0[46];
  v18 = v0[43];
  v19 = v0[42];
  v20 = v0[41];
  v21 = v0[40];
  v22 = v0[39];
  v23 = v0[38];
  v24 = v0[37];
  v25 = v0[34];
  v26 = v0[33];
  v27 = v0[32];
  v28 = v0[31];
  v29 = v0[28];
  v30 = v0[27];
  v31 = v0[26];
  v32 = v0[25];
  v33 = v0[24];
  v34 = v0[23];
  v35 = v0[22];
  v36 = v0[21];

  v12 = v0[1];

  return v12();
}

uint64_t sub_20DF342E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 224) = v15;
  *(v8 + 192) = v13;
  *(v8 + 208) = v14;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 336) = a5;
  *(v8 + 160) = a4;
  *(v8 + 168) = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50);
  *(v8 + 232) = v9;
  v10 = *(v9 - 8);
  *(v8 + 240) = v10;
  *(v8 + 248) = *(v10 + 64);
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF343D0, 0, 0);
}

uint64_t sub_20DF343D0()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 336);
  v6 = *(v0 + 160);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 264) = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v27 = sub_20DF3D598(sub_20DF3B400, v8);
  *(v0 + 272) = v27;

  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  v14 = *(v0 + 192);
  v15 = *(v0 + 168);
  v16 = *(v0 + 176);
  v26 = sub_20DF47D04();
  *(v0 + 280) = v26;

  v17 = sub_20DF47464();
  *(v0 + 288) = v17;
  v18 = sub_20DF47464();
  *(v0 + 296) = v18;
  v19 = sub_20DF47D04();
  *(v0 + 304) = v19;
  v20 = sub_20DF47D04();
  *(v0 + 312) = v20;
  v21 = sub_20DF475F4();
  *(v0 + 320) = v21;
  v22 = *(v9 + 16);
  sub_20DF479B4();

  v23 = sub_20DF47D04();
  *(v0 + 328) = v23;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_20DF3471C;
  v24 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0C0, &qword_20DF4BD68);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DF347FC;
  *(v0 + 104) = &block_descriptor_18_0;
  *(v0 + 112) = v24;
  [v27 leanHistoricalEnergyUsageWithInterval:v26 start:v17 end:v18 subscriptionID:v19 utilityID:v20 timeZone:v21 flowDirection:1 siteID:v23 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DF3471C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF3B3F4, 0, 0);
}

uint64_t sub_20DF347FC(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = 0;
  if (a2)
  {
    sub_20DF474E4();
    sub_20DF3AB8C(&qword_27C84CA58, MEMORY[0x277CC9578]);
    v4 = sub_20DF47C34();
  }

  **(*(v3 + 64) + 40) = v4;

  return swift_continuation_resume();
}

uint64_t sub_20DF348C0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v67 = a7;
  v68 = a8;
  v64 = a5;
  v65 = a6;
  v57 = a1;
  v58 = a3;
  v63 = a2;
  v69 = a12;
  v62 = a11;
  v66 = a10;
  v59 = a9;
  v60 = a4;
  v12 = sub_20DF47604();
  v71 = *(v12 - 8);
  v72 = v12;
  v61 = *(v71 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v14;
  v70 = sub_20DF474E4();
  v15 = *(v70 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v70);
  v54 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  v53 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50);
  v51 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  v52 = &v50 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v50 - v27;
  v56 = &v50 - v27;
  v29 = sub_20DF47F04();
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  (*(v21 + 16))(v24, v57, v20);
  v50 = v15;
  v30 = *(v15 + 16);
  v31 = v70;
  v30(v19, v58, v70);
  v30(&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v60, v31);
  v32 = v71;
  (*(v71 + 16))(v14, v59, v72);
  v33 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v34 = v33 + v22;
  v35 = *(v15 + 80);
  v36 = (v35 + v33 + v22 + 1) & ~v35;
  v37 = (v16 + v35 + v36) & ~v35;
  v38 = (v16 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v32 + 80) + v39 + 16) & ~*(v32 + 80);
  v41 = (v61 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  (*(v21 + 32))(v42 + v33, v52, v51);
  *(v42 + v34) = v63;
  v43 = *(v50 + 32);
  v44 = v70;
  v43(v42 + v36, v53, v70);
  v43(v42 + v37, v54, v44);
  v45 = (v42 + v38);
  v46 = v65;
  *v45 = v64;
  v45[1] = v46;
  v47 = (v42 + v39);
  v48 = v68;
  *v47 = v67;
  v47[1] = v48;
  (*(v71 + 32))(v42 + v40, v55, v72);
  *(v42 + v41) = v66;

  sub_20DEBB534(0, 0, v56, v69, v42);
}

uint64_t sub_20DF34D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 224) = v15;
  *(v8 + 192) = v13;
  *(v8 + 208) = v14;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8;
  *(v8 + 336) = a5;
  *(v8 + 160) = a4;
  *(v8 + 168) = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50);
  *(v8 + 232) = v9;
  v10 = *(v9 - 8);
  *(v8 + 240) = v10;
  *(v8 + 248) = *(v10 + 64);
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF34E30, 0, 0);
}

uint64_t sub_20DF34E30()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 336);
  v6 = *(v0 + 160);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 264) = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v27 = sub_20DF3D598(sub_20DF3AE24, v8);
  *(v0 + 272) = v27;

  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  v14 = *(v0 + 192);
  v15 = *(v0 + 168);
  v16 = *(v0 + 176);
  v26 = sub_20DF47D04();
  *(v0 + 280) = v26;

  v17 = sub_20DF47464();
  *(v0 + 288) = v17;
  v18 = sub_20DF47464();
  *(v0 + 296) = v18;
  v19 = sub_20DF47D04();
  *(v0 + 304) = v19;
  v20 = sub_20DF47D04();
  *(v0 + 312) = v20;
  v21 = sub_20DF475F4();
  *(v0 + 320) = v21;
  v22 = *(v9 + 16);
  sub_20DF479B4();

  v23 = sub_20DF47D04();
  *(v0 + 328) = v23;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_20DF3517C;
  v24 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0C0, &qword_20DF4BD68);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DF347FC;
  *(v0 + 104) = &block_descriptor_9;
  *(v0 + 112) = v24;
  [v27 leanHistoricalEnergyUsageWithInterval:v26 start:v17 end:v18 subscriptionID:v19 utilityID:v20 timeZone:v21 flowDirection:2 siteID:v23 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DF3517C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF3525C, 0, 0);
}

uint64_t sub_20DF3525C()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[34];
  v8 = v0[35];
  v9 = v0[33];
  v15 = v0[29];
  v16 = v0[32];
  v14 = v0[20];
  v10 = v0[18];
  swift_unknownObjectRelease();

  [*(v9 + 16) invalidate];
  v11 = MEMORY[0x277D84F98];
  if (v10)
  {
    v11 = v10;
  }

  v0[19] = v11;
  sub_20DF47EE4();

  v12 = v0[1];

  return v12();
}

uint64_t sub_20DF3535C(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136315138;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to get insights. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50);
  return sub_20DF47ED4();
}

size_t sub_20DF355D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C8F0, &qword_20DF49758);
  v4 = *(sub_20DF474E4() - 8);
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

size_t sub_20DF356D4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0A8, &qword_20DF4BD40);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30) - 8);
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

uint64_t sub_20DF357FC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_20DF48484();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
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
    sub_20DF36550(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_20DF358DC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20DF474E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_20DF3AB8C(&qword_27C84CA58, MEMORY[0x277CC9578]);
  v36 = a2;
  v13 = sub_20DF47C94();
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
      sub_20DF3AB8C(&qword_27C84C9A0, MEMORY[0x277CC9578]);
      v23 = sub_20DF47CF4();
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
    sub_20DF36670(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_20DF35BBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_20DF48494();
  sub_20DF47D54();
  v9 = sub_20DF484D4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_20DF483D4() & 1) != 0)
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

    sub_20DF36914(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20DF35D70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0C8, &unk_20DF4BD80);
  result = sub_20DF48124();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      result = sub_20DF48484();
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

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20DF35F94(uint64_t a1)
{
  v2 = v1;
  v41 = sub_20DF474E4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B0, &qword_20DF4BD48);
  result = sub_20DF48124();
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
      sub_20DF3AB8C(&qword_27C84CA58, MEMORY[0x277CC9578]);
      result = sub_20DF47C94();
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

uint64_t sub_20DF362F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0A0, &qword_20DF4BD38);
  result = sub_20DF48124();
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
      sub_20DF48494();
      sub_20DF47D54();
      result = sub_20DF484D4();
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

uint64_t sub_20DF36550(uint64_t result, unint64_t a2, char a3)
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
    sub_20DF35D70(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_20DF36A94();
      a2 = v7;
      goto LABEL_12;
    }

    sub_20DF36F68(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_20DF48484();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v12 + 48) + 8 * a2) = v4;
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
  result = sub_20DF48414();
  __break(1u);
  return result;
}

uint64_t sub_20DF36670(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_20DF474E4();
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
    sub_20DF35F94(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20DF36BD4();
      goto LABEL_12;
    }

    sub_20DF37158(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_20DF3AB8C(&qword_27C84CA58, MEMORY[0x277CC9578]);
  v15 = sub_20DF47C94();
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
      sub_20DF3AB8C(&qword_27C84C9A0, MEMORY[0x277CC9578]);
      v23 = sub_20DF47CF4();
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
  result = sub_20DF48414();
  __break(1u);
  return result;
}

uint64_t sub_20DF36914(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_20DF362F0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20DF36E0C();
      goto LABEL_16;
    }

    sub_20DF37474(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_20DF48494();
  sub_20DF47D54();
  result = sub_20DF484D4();
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

      result = sub_20DF483D4();
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
  result = sub_20DF48414();
  __break(1u);
  return result;
}

void *sub_20DF36A94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0C8, &unk_20DF4BD80);
  v2 = *v0;
  v3 = sub_20DF48114();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_20DF36BD4()
{
  v1 = v0;
  v2 = sub_20DF474E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B0, &qword_20DF4BD48);
  v7 = *v0;
  v8 = sub_20DF48114();
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

void *sub_20DF36E0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0A0, &qword_20DF4BD38);
  v2 = *v0;
  v3 = sub_20DF48114();
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

uint64_t sub_20DF36F68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0C8, &unk_20DF4BD80);
  result = sub_20DF48124();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_20DF48484();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_20DF37158(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20DF474E4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B0, &qword_20DF4BD48);
  v10 = sub_20DF48124();
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
      sub_20DF3AB8C(&qword_27C84CA58, MEMORY[0x277CC9578]);
      result = sub_20DF47C94();
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

uint64_t sub_20DF37474(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0A0, &qword_20DF4BD38);
  result = sub_20DF48124();
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
      sub_20DF48494();

      sub_20DF47D54();
      result = sub_20DF484D4();
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

size_t sub_20DF376AC(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0A8, &qword_20DF4BD40);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30) - 8);
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

size_t sub_20DF378C4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_20DF37AA0(void **a1)
{
  v2 = *(sub_20DF474E4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20DF3A9D4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20DF37BFC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20DF37B48(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20DF3AA20(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20DF37D28(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20DF37BFC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20DF483A4();
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
        sub_20DF474E4();
        v6 = sub_20DF47E94();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20DF474E4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20DF38380(v8, v9, a1, v4);
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
    return sub_20DF37E6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20DF37D28(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20DF483A4();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
        v6 = sub_20DF47E94();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20DF38DA8(v8, v9, a1, v4);
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
    return sub_20DF38130(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20DF37E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20DF474E4();
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
      sub_20DF3AB8C(&qword_281122978, MEMORY[0x277CC9578]);
      v27 = sub_20DF47CD4();
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

uint64_t sub_20DF38130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_20DED8804(v23, v17, &qword_27C84D098, &qword_20DF4BD30);
      sub_20DED8804(v20, v13, &qword_27C84D098, &qword_20DF4BD30);
      v24 = sub_20DF47484();
      sub_20DED8730(v13, &qword_27C84D098, &qword_20DF4BD30);
      result = sub_20DED8730(v17, &qword_27C84D098, &qword_20DF4BD30);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_20DED9CE8(v23, v35, &qword_27C84D098, &qword_20DF4BD30);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_20DED9CE8(v25, v20, &qword_27C84D098, &qword_20DF4BD30);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20DF38380(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_20DF474E4();
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
      result = sub_20DF3A26C(v21);
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
        sub_20DF396E8(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20DF3A26C(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        result = sub_20DF3A1E0(v116 - 1);
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
      v131 = sub_20DF3AB8C(&qword_281122978, MEMORY[0x277CC9578]);
      LODWORD(v134) = sub_20DF47CD4();
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
        v41 = sub_20DF47CD4() & 1;
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
      result = sub_20DEB8338(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_20DEB8338((v54 > 1), v55 + 1, 1, v21);
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
        sub_20DF396E8(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20DF3A26C(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        result = sub_20DF3A1E0(v58);
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
    sub_20DF3AB8C(&qword_281122978, MEMORY[0x277CC9578]);
    v110 = sub_20DF47CD4();
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

uint64_t sub_20DF38DA8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v104 = a1;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
  v114 = *(v117 - 8);
  v9 = *(v114 + 64);
  v10 = MEMORY[0x28223BE20](v117);
  v108 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v116 = &v100 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v119 = &v100 - v15;
  result = MEMORY[0x28223BE20](v14);
  v118 = &v100 - v17;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_96:
    a4 = *v104;
    if (!*v104)
    {
      goto LABEL_136;
    }

    v4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_20DF3A26C(v4);
    }

    v95 = v6;
    v120 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (1)
      {
        v96 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v6 = a3;
        a3 = *(result + 16 * v4);
        v97 = result;
        v98 = *(result + 16 * (v4 - 1) + 40);
        sub_20DF39CDC(v96 + *(v114 + 72) * a3, v96 + *(v114 + 72) * *(result + 16 * (v4 - 1) + 32), v96 + *(v114 + 72) * v98, a4);
        if (v95)
        {
        }

        if (v98 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_20DF3A26C(v97);
        }

        if (v4 - 2 >= *(v97 + 2))
        {
          goto LABEL_124;
        }

        v99 = &v97[16 * v4];
        *v99 = a3;
        *(v99 + 1) = v98;
        v120 = v97;
        sub_20DF3A1E0(v4 - 1);
        result = v120;
        v4 = *(v120 + 16);
        a3 = v6;
        if (v4 <= 1)
        {
        }
      }
    }
  }

  v101 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v105 = a3;
  while (1)
  {
    v21 = v19;
    v109 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v103 = v6;
      v22 = v19;
      v23 = *a3;
      v24 = *(v114 + 72);
      a4 = *a3 + v24 * (v19 + 1);
      v25 = v118;
      sub_20DED8804(a4, v118, &qword_27C84D098, &qword_20DF4BD30);
      v26 = v119;
      sub_20DED8804(v23 + v24 * v22, v119, &qword_27C84D098, &qword_20DF4BD30);
      LODWORD(v113) = sub_20DF47484();
      sub_20DED8730(v26, &qword_27C84D098, &qword_20DF4BD30);
      result = sub_20DED8730(v25, &qword_27C84D098, &qword_20DF4BD30);
      v102 = v22;
      v4 = v22 + 2;
      v115 = v24;
      v27 = v23 + v24 * (v22 + 2);
      while (v18 != v4)
      {
        v28 = v118;
        sub_20DED8804(v27, v118, &qword_27C84D098, &qword_20DF4BD30);
        v29 = v119;
        sub_20DED8804(a4, v119, &qword_27C84D098, &qword_20DF4BD30);
        v30 = v18;
        v31 = sub_20DF47484() & 1;
        sub_20DED8730(v29, &qword_27C84D098, &qword_20DF4BD30);
        result = sub_20DED8730(v28, &qword_27C84D098, &qword_20DF4BD30);
        ++v4;
        v27 += v115;
        a4 += v115;
        v32 = (v113 & 1) == v31;
        v18 = v30;
        if (!v32)
        {
          v18 = v4 - 1;
          break;
        }
      }

      a3 = v105;
      v21 = v102;
      v6 = v103;
      if (v113)
      {
        if (v18 < v102)
        {
          goto LABEL_127;
        }

        if (v102 < v18)
        {
          v4 = v115 * (v18 - 1);
          v33 = v18 * v115;
          v34 = v18;
          v35 = v18;
          v36 = v102;
          a4 = v102 * v115;
          do
          {
            if (v36 != --v35)
            {
              v37 = *v105;
              if (!*v105)
              {
                goto LABEL_133;
              }

              sub_20DED9CE8(v37 + a4, v108, &qword_27C84D098, &qword_20DF4BD30);
              if (a4 < v4 || v37 + a4 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_20DED9CE8(v108, v37 + v4, &qword_27C84D098, &qword_20DF4BD30);
            }

            ++v36;
            v4 -= v115;
            v33 -= v115;
            a4 += v115;
          }

          while (v36 < v35);
          v21 = v102;
          v6 = v103;
          a3 = v105;
          v18 = v34;
        }
      }
    }

    v38 = *(a3 + 8);
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_126;
      }

      if (v18 - v21 < v101)
      {
        if (__OFADD__(v21, v101))
        {
          goto LABEL_128;
        }

        if (v21 + v101 >= v38)
        {
          v39 = *(a3 + 8);
        }

        else
        {
          v39 = v21 + v101;
        }

        if (v39 < v21)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v18 != v39)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v109;
    }

    else
    {
      result = sub_20DEB8338(0, *(v109 + 2) + 1, 1, v109);
      v20 = result;
    }

    v4 = *(v20 + 2);
    v40 = *(v20 + 3);
    a4 = v4 + 1;
    if (v4 >= v40 >> 1)
    {
      result = sub_20DEB8338((v40 > 1), v4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = a4;
    v41 = &v20[16 * v4];
    *(v41 + 4) = v21;
    *(v41 + 5) = v19;
    v42 = *v104;
    if (!*v104)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      while (1)
      {
        v43 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v44 = *(v20 + 4);
          v45 = *(v20 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_52:
          if (v47)
          {
            goto LABEL_114;
          }

          v60 = &v20[16 * a4];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_117;
          }

          v66 = &v20[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_121;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v70 = &v20[16 * a4];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_66:
        if (v65)
        {
          goto LABEL_116;
        }

        v73 = &v20[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_119;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v43 - 1;
        if (v43 - 1 >= a4)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v81 = v20;
        a4 = *&v20[16 * v4 + 32];
        v82 = *&v20[16 * v43 + 40];
        sub_20DF39CDC(*a3 + *(v114 + 72) * a4, *a3 + *(v114 + 72) * *&v20[16 * v43 + 32], *a3 + *(v114 + 72) * v82, v42);
        if (v6)
        {
        }

        if (v82 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v83 = v81;
        }

        else
        {
          v83 = sub_20DF3A26C(v81);
        }

        if (v4 >= *(v83 + 2))
        {
          goto LABEL_111;
        }

        v84 = &v83[16 * v4];
        *(v84 + 4) = a4;
        *(v84 + 5) = v82;
        v120 = v83;
        v4 = &v120;
        result = sub_20DF3A1E0(v43);
        v20 = v120;
        a4 = *(v120 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v20[16 * a4 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_112;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_113;
      }

      v55 = &v20[16 * a4];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_115;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_118;
      }

      if (v59 >= v51)
      {
        v77 = &v20[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_122;
        }

        if (v46 < v80)
        {
          v43 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = *(a3 + 8);
    if (v19 >= v18)
    {
      goto LABEL_96;
    }
  }

  v102 = v21;
  v103 = v6;
  v85 = *a3;
  v86 = *(v114 + 72);
  v87 = *a3 + v86 * (v18 - 1);
  v88 = -v86;
  v89 = v21 - v18;
  v106 = v86;
  v107 = v39;
  v115 = v85;
  a4 = v85 + v18 * v86;
LABEL_86:
  v112 = v87;
  v113 = v18;
  v110 = a4;
  v111 = v89;
  v90 = v87;
  while (1)
  {
    v4 = v118;
    sub_20DED8804(a4, v118, &qword_27C84D098, &qword_20DF4BD30);
    v91 = v119;
    sub_20DED8804(v90, v119, &qword_27C84D098, &qword_20DF4BD30);
    v92 = sub_20DF47484();
    sub_20DED8730(v91, &qword_27C84D098, &qword_20DF4BD30);
    result = sub_20DED8730(v4, &qword_27C84D098, &qword_20DF4BD30);
    if ((v92 & 1) == 0)
    {
LABEL_85:
      v18 = v113 + 1;
      v19 = v107;
      v87 = v112 + v106;
      v89 = v111 - 1;
      a4 = v110 + v106;
      if (v113 + 1 != v107)
      {
        goto LABEL_86;
      }

      v21 = v102;
      v6 = v103;
      a3 = v105;
      if (v107 < v102)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v115)
    {
      break;
    }

    v93 = v116;
    sub_20DED9CE8(a4, v116, &qword_27C84D098, &qword_20DF4BD30);
    swift_arrayInitWithTakeFrontToBack();
    sub_20DED9CE8(v93, v90, &qword_27C84D098, &qword_20DF4BD30);
    v90 += v88;
    a4 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_20DF396E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_20DF474E4();
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
          sub_20DF3AB8C(&qword_281122978, MEMORY[0x277CC9578]);
          LOBYTE(v36) = sub_20DF47CD4();
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
        sub_20DF3AB8C(&qword_281122978, MEMORY[0x277CC9578]);
        LOBYTE(v23) = sub_20DF47CD4();
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

  sub_20DF3A280(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_20DF39CDC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
  v8 = *(*(v44 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v44);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v45 = &v36 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v40 = a1;
      v41 = a4;
      v39 = -v14;
      do
      {
        v37 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v42 = v27;
        v43 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v37;
            goto LABEL_58;
          }

          v30 = a3;
          v38 = v24;
          a3 += v25;
          v31 = v26 + v25;
          v32 = v45;
          sub_20DED8804(v31, v45, &qword_27C84D098, &qword_20DF4BD30);
          v33 = v28;
          v34 = v46;
          sub_20DED8804(v33, v46, &qword_27C84D098, &qword_20DF4BD30);
          v35 = sub_20DF47484();
          sub_20DED8730(v34, &qword_27C84D098, &qword_20DF4BD30);
          sub_20DED8730(v32, &qword_27C84D098, &qword_20DF4BD30);
          if (v35)
          {
            break;
          }

          v24 = v31;
          if (v30 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v43;
            a1 = v40;
          }

          else
          {
            v28 = v43;
            a1 = v40;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v31;
          v27 = v42;
          v29 = v31 > v41;
          v25 = v39;
          if (!v29)
          {
            a2 = v42;
            goto LABEL_57;
          }
        }

        if (v30 < v42 || a3 >= v42)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v39;
          a1 = v40;
          v24 = v38;
        }

        else
        {
          a2 = v43;
          v25 = v39;
          a1 = v40;
          v24 = v38;
          if (v30 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v41);
    }

LABEL_57:
    v49 = a2;
    v47 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a3;
    v43 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = v14;
        v21 = v45;
        sub_20DED8804(a2, v45, &qword_27C84D098, &qword_20DF4BD30);
        v22 = v46;
        sub_20DED8804(a4, v46, &qword_27C84D098, &qword_20DF4BD30);
        v23 = sub_20DF47484();
        sub_20DED8730(v22, &qword_27C84D098, &qword_20DF4BD30);
        sub_20DED8730(v21, &qword_27C84D098, &qword_20DF4BD30);
        v14 = v20;
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v20;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = a4 + v20;
          a4 += v20;
        }

        a1 += v20;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v42);
    }
  }

LABEL_58:
  sub_20DF3A364(&v49, &v48, &v47);
  return 1;
}

uint64_t sub_20DF3A1E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20DF3A26C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}