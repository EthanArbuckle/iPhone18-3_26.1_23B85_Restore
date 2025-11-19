uint64_t sub_2224852EC(uint64_t a1)
{
  v2 = *(*(sub_2224B4128() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v5 = &v21 - v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4A8, &qword_2224B5570) - 8) + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v21 - v10);
  sub_2224A7810(a1, &v21 - v10, &qword_27D00E4A8, &qword_2224B5570);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23[0] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E498, &qword_2224B5568);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v11, v5, &qword_27D00E480, &qword_2224B5560);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E498, &qword_2224B5568);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v9, &qword_27D00E4A8, &qword_2224B5570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v9, &qword_27D00E4A8, &qword_2224B5570);
  }

  v12 = *v9;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v13 = sub_2224B4628();
  __swift_project_value_buffer(v13, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v14 = *(sub_2224B4148() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v17 = v21;
  v18 = v22;
  v23[3] = v22;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v23);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1Tm, v17, v18);
  sub_2224B40F8();
  sub_2224A7878(v23, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v12);
}

uint64_t sub_2224856E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2224B4398();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222485750(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_2224B4398();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22248584C()
{
  v1 = sub_2224B4398();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));
  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_222485948(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_222485960()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2224859D4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222485A10()
{
  v1 = v0;
  v2 = sub_2224B4398();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Connection.State(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2224A5830(v1, v10);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    if (v11 == 1)
    {
      return 1701602409;
    }

    else
    {
      return 0x6465736F6C63;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v15[0] = 0x5B6E65706FLL;
    v15[1] = 0xE500000000000000;
    v13 = sub_2224B4388();
    MEMORY[0x223DB7580](v13);

    MEMORY[0x223DB7580](93, 0xE100000000000000);
    v14 = v15[0];
    (*(v3 + 8))(v6, v2);
    return v14;
  }
}

void Connection.PaginationOptions.pageSize.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t _s15OnDeviceStorage10ConnectionC17PaginationOptionsV8pageSizeA2E04PageH0O_tAA0abC5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2224B41F8();
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2224B4198();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v17 = *(a1 + 8);
  if ((v17 & 1) != 0 || v16 > 0)
  {
    *a3 = v16;
    *(a3 + 8) = v17;
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2224B49C8();

    v27 = 0xD000000000000027;
    v28 = 0x80000002224B5A60;
    v29 = v16;
    v18 = sub_2224B4A78();
    MEMORY[0x223DB7580](v18);

    v19 = v27;
    v20 = v28;
    *v15 = 0x657A695365676170;
    v15[1] = 0xE800000000000000;
    v15[2] = v19;
    v15[3] = v20;
    (*(v11 + 104))(v15, *MEMORY[0x277D37750], v10);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v21 = swift_allocError();
    (*(v11 + 16))(v22, v15, v10);
    MEMORY[0x223DB7AE0](v21);
    sub_2224B4208();
    *a2 = sub_2224B41E8();
    v23 = v26;
    *(a2 + 32) = v26;
    *(a2 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a2 + 8));
    (*(v25 + 32))(boxed_opaque_existential_1Tm, v9, v23);
    MEMORY[0x223DB7AD0](v21);
    (*(v11 + 8))(v15, v10);
    *(a2 + 48) = 7;
    sub_222485F68();
    return swift_willThrowTypedImpl();
  }

  return result;
}

unint64_t sub_222485F68()
{
  result = qword_28130A408;
  if (!qword_28130A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130A408);
  }

  return result;
}

uint64_t Connection.PaginationOptions.PageSize.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

BOOL static Connection.PaginationOptions.PageSize.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void *sub_222486004@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_222486014(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_222486050()
{
  v0 = sub_2224B4628();
  __swift_allocate_value_buffer(v0, qword_28130A600);
  v1 = __swift_project_value_buffer(v0, qword_28130A600);
  if (qword_28130A458 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28130A730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222486118()
{
  v0 = sub_2224B46D8();
  __swift_allocate_value_buffer(v0, qword_28130A6E0);
  v1 = __swift_project_value_buffer(v0, qword_28130A6E0);
  if (qword_28130A448 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28130A700);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222486234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  v14 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  v15 = sub_2224B4398();
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 2, v15);
  v16 = v13 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential;
  *v16 = a1;
  *(v16 + 8) = a2;
  *(v16 + 16) = a5;
  v17 = (v13 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  *v17 = a3;
  v17[1] = a4;
  *(v13 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_insertValuesBatchSize) = 20480;
  *(v13 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_selectStatementBatchSize) = 204800;
  if (qword_28130A570 != -1)
  {
    swift_once();
  }

  sub_2224A7124(&qword_28130A748, v13 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession);
  return v13;
}

uint64_t sub_222486394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  v12 = sub_2224B4398();
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 2, v12);
  v13 = v5 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential;
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = a5;
  v14 = (v5 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  *v14 = a3;
  v14[1] = a4;
  *(v5 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_insertValuesBatchSize) = 20480;
  *(v5 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_selectStatementBatchSize) = 204800;
  if (qword_28130A570 != -1)
  {
    swift_once();
  }

  sub_2224A7124(&qword_28130A748, v5 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession);
  return v5;
}

uint64_t _s15OnDeviceStorage10ConnectionC4openyyYaAA0abC5ErrorOYKF(uint64_t a1)
{
  v2[30] = v1;
  v2[31] = a1;
  v3 = sub_2224B41F8();
  v2[32] = v3;
  v4 = *(v3 - 8);
  v2[33] = v4;
  v5 = *(v4 + 64) + 15;
  v2[34] = swift_task_alloc();
  v6 = sub_2224B4198();
  v2[35] = v6;
  v7 = *(v6 - 8);
  v2[36] = v7;
  v8 = *(v7 + 64) + 15;
  v2[37] = swift_task_alloc();
  v9 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v10 = sub_2224B4398();
  v2[39] = v10;
  v11 = *(v10 - 8);
  v2[40] = v11;
  v12 = *(v11 + 64) + 15;
  v2[41] = swift_task_alloc();
  v13 = sub_2224B43B8();
  v2[42] = v13;
  v14 = *(v13 - 8);
  v2[43] = v14;
  v15 = *(v14 + 64) + 15;
  v2[44] = swift_task_alloc();
  v16 = *(*(type metadata accessor for Connection.State(0) - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v17 = sub_2224B46A8();
  v2[47] = v17;
  v18 = *(v17 - 8);
  v2[48] = v18;
  v19 = *(v18 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222486768, v1, 0);
}

uint64_t sub_222486768()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 400);
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = *(v0 + 400);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "Open", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = *(v0 + 392);
  v9 = *(v0 + 400);
  v10 = *(v0 + 376);
  v11 = *(v0 + 384);

  (*(v11 + 16))(v8, v9, v10);
  v12 = sub_2224B4718();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 408) = sub_2224B4708();
  (*(v11 + 8))(v9, v10);
  if (qword_28130A5F8 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 368);
  v16 = *(v0 + 320);
  v59 = *(v0 + 312);
  v17 = *(v0 + 240);
  v18 = sub_2224B4628();
  *(v0 + 416) = v18;
  *(v0 + 424) = __swift_project_value_buffer(v18, qword_28130A600);
  *(v0 + 432) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v19 = *(sub_2224B4148() - 8);
  *(v0 + 440) = *(v19 + 72);
  *(v0 + 68) = *(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B40E8();
  sub_2224B4568();

  v20 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  *(v0 + 448) = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  swift_beginAccess();
  sub_2224A5830(v17 + v20, v15);
  LODWORD(v18) = (*(v16 + 48))(v15, 2, v59);
  sub_2224A70C4(v15, type metadata accessor for Connection.State);
  if (v18 == 1)
  {
    v21 = *(v0 + 352);
    v22 = *(v0 + 240);
    v23 = *(v22 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential);
    v24 = *(v22 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential + 8);
    v25 = *(v22 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential + 16);
    v26 = *(v22 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
    v27 = *(v22 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId + 8);
    sub_2224A63F8();

    sub_2224B43A8();
    v28 = *__swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession), *(v22 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession + 24));
    v29 = swift_task_alloc();
    *(v0 + 456) = v29;
    *v29 = v0;
    v29[1] = sub_222486F10;
    v30 = *(v0 + 352);
    v31 = *(v0 + 328);

    return sub_2224963C0(v31, v30, v0 + 72);
  }

  else
  {
    v33 = *(v0 + 360);
    v34 = *(v0 + 296);
    v35 = *(v0 + 304);
    v36 = *(v0 + 280);
    v55 = *(v0 + 288);
    v56 = *(v0 + 272);
    v60 = *(v0 + 264);
    v57 = *(v0 + 248);
    v58 = *(v0 + 256);
    sub_2224A5830(v17 + v20, v33);
    v37 = sub_222485A10();
    v39 = v38;
    sub_2224A70C4(v33, type metadata accessor for Connection.State);
    *v34 = v37;
    v34[1] = v39;
    v34[2] = 0x29286E65706FLL;
    v34[3] = 0xE600000000000000;
    (*(v55 + 104))(v34, *MEMORY[0x277D37770], v36);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 152) = v36;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 128));
    v41 = *(v55 + 16);
    v41(boxed_opaque_existential_1Tm, v34, v36);
    sub_2224B40F8();
    sub_2224A7878(v0 + 128, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v42 = swift_allocError();
    v41(v43, v34, v36);
    MEMORY[0x223DB7AE0](v42);
    sub_2224B4208();
    *v57 = sub_2224B41E8();
    *(v57 + 32) = v58;
    *(v57 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v44 = __swift_allocate_boxed_opaque_existential_1Tm((v57 + 8));
    (*(v60 + 32))(v44, v56, v58);
    MEMORY[0x223DB7AD0](v42);
    *(v57 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    (*(v55 + 8))(v34, v36);
    v45 = *(v0 + 400);
    v46 = *(v0 + 408);
    v47 = *(v0 + 392);
    v49 = *(v0 + 360);
    v48 = *(v0 + 368);
    v50 = *(v0 + 352);
    v51 = *(v0 + 328);
    v53 = *(v0 + 296);
    v52 = *(v0 + 304);
    v61 = *(v0 + 272);
    sub_2224A6760("Open", 4, 2);

    v54 = *(v0 + 8);

    return v54();
  }
}

uint64_t sub_222486F10()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 456);
  v5 = *v1;

  v6 = *(v2 + 240);
  if (v0)
  {
    v7 = *(v3 + 88);
    *(v3 + 16) = *(v3 + 72);
    *(v3 + 32) = v7;
    *(v3 + 48) = *(v3 + 104);
    *(v3 + 64) = *(v3 + 120);
    v8 = sub_222487054;
  }

  else
  {
    v8 = sub_22248718C;
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

uint64_t sub_222487054()
{
  v1 = *(v0 + 248);
  (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *v1 = v2;
  v5 = *(v0 + 400);
  v6 = *(v0 + 408);
  v7 = *(v0 + 392);
  v9 = *(v0 + 360);
  v8 = *(v0 + 368);
  v10 = *(v0 + 352);
  v11 = *(v0 + 328);
  v13 = *(v0 + 296);
  v12 = *(v0 + 304);
  v16 = *(v0 + 272);
  sub_2224A6760("Open", 4, 2);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22248718C()
{
  v1 = v0;
  v2 = *(v0 + 68);
  v3 = v1[56];
  v14 = v1[55];
  v15 = v1[54];
  v17 = v1[52];
  v18 = v1[53];
  v21 = v1[51];
  v22 = v1[50];
  v4 = v1[45];
  v16 = v1[43];
  v5 = v1[41];
  v19 = v1[42];
  v20 = v1[44];
  v6 = v1[39];
  v7 = v1[40];
  v8 = v1[38];
  v23 = v1[37];
  v24 = v1[34];
  v9 = v1[30];
  (*(v7 + 16))(v4, v5, v6);
  (*(v7 + 56))(v4, 0, 2, v6);
  swift_beginAccess();
  sub_2224A6444(v4, v9 + v3);
  swift_endAccess();
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v10 = sub_2224B4388();
  v1[23] = MEMORY[0x277D837D0];
  v1[20] = v10;
  v1[21] = v11;
  sub_2224B40F8();
  sub_2224A7878((v1 + 20), &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  (*(v7 + 8))(v5, v6);
  (*(v16 + 8))(v20, v19);
  sub_2224A6760("Open", 4, 2);

  v12 = v1[1];

  return v12();
}

uint64_t _s15OnDeviceStorage10ConnectionC5closeyyYaAA0abC5ErrorOYKF(uint64_t a1)
{
  v2[27] = v1;
  v2[28] = a1;
  v3 = *(*(type metadata accessor for Connection.State(0) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v4 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v5 = sub_2224B44C8();
  v2[31] = v5;
  v6 = *(v5 - 8);
  v2[32] = v6;
  v7 = *(v6 + 64) + 15;
  v2[33] = swift_task_alloc();
  v8 = sub_2224B46A8();
  v2[34] = v8;
  v9 = *(v8 - 8);
  v2[35] = v9;
  v10 = *(v9 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2224875BC, v1, 0);
}

uint64_t sub_2224875BC()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = *(v0 + 296);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "Close", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = *(v0 + 288);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  v11 = *(v0 + 280);

  (*(v11 + 16))(v8, v9, v10);
  v12 = sub_2224B4718();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 304) = sub_2224B4708();
  (*(v11 + 8))(v9, v10);
  if (qword_28130A5F8 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 216);
  v16 = sub_2224B4628();
  *(v0 + 312) = v16;
  *(v0 + 320) = __swift_project_value_buffer(v16, qword_28130A600);
  *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v17 = *(sub_2224B4148() - 8);
  *(v0 + 336) = *(v17 + 72);
  *(v0 + 68) = *(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B40E8();
  sub_2224B4568();

  *(v0 + 344) = sub_222487F1C(0x292865736F6C63, 0xE700000000000000, (v0 + 16));
  *(v0 + 352) = v18;
  v19 = *(v0 + 264);
  v20 = *(v0 + 216);
  v21 = *(v20 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v22 = *(v20 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId + 8);

  sub_2224B44B8();
  v23 = *__swift_project_boxed_opaque_existential_1((v20 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession), *(v20 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession + 24));
  v24 = swift_task_alloc();
  *(v0 + 360) = v24;
  *v24 = v0;
  v24[1] = sub_222487A34;
  v25 = *(v0 + 264);

  return sub_222497590(v25, v0 + 72);
}

uint64_t sub_222487A34(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 360);
  v15 = *v2;

  if (v1)
  {
    v6 = *(v4 + 352);
    v8 = *(v4 + 216);
    v7 = *(v4 + 224);

    v9 = *(v4 + 72);
    v10 = *(v4 + 88);
    v11 = *(v4 + 104);
    *(v7 + 48) = *(v4 + 120);
    *(v7 + 16) = v10;
    *(v7 + 32) = v11;
    *v7 = v9;
    v12 = sub_222487B88;
    v13 = v8;
  }

  else
  {
    v13 = *(v4 + 216);
    *(v4 + 65) = a1 & 1;
    v12 = sub_222487C64;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

uint64_t sub_222487B88()
{
  (*(v0[32] + 8))(v0[33], v0[31]);
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[33];
  v6 = v0[29];
  v5 = v0[30];
  sub_2224A6760("Close", 5, 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_222487C64()
{
  v13 = *(v0 + 65);
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v14 = *(v0 + 312);
  v15 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 296);
  v21 = *(v0 + 288);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  v16 = *(v0 + 248);
  v17 = *(v0 + 264);
  v7 = *(v0 + 232);
  v8 = (*(v0 + 68) + 32) & ~*(v0 + 68);
  v18 = *(v0 + 216);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  *(v0 + 152) = MEMORY[0x277D837D0];
  *(v0 + 128) = v2;
  *(v0 + 136) = v1;
  sub_2224B40F8();
  sub_2224A7878(v0 + 128, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  *(v0 + 184) = MEMORY[0x277D839B0];
  *(v0 + 160) = v13;
  sub_2224B40F8();
  sub_2224A7878(v0 + 160, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  (*(v5 + 8))(v17, v16);
  v9 = sub_2224B4398();
  (*(*(v9 - 8) + 56))(v7, 2, 2, v9);
  v10 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  swift_beginAccess();
  sub_2224A6444(v7, v18 + v10);
  swift_endAccess();
  sub_2224A6760("Close", 5, 2);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_222487F1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v59 = a3;
  v4 = v3;
  v53 = a1;
  v54 = a2;
  v5 = sub_2224B41F8();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2224B4128();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2224B4198();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Connection.State(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  v22 = sub_2224B4398();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  swift_beginAccess();
  sub_2224A5830(v4 + v27, v21);
  if ((*(v23 + 48))(v21, 2, v22))
  {
    sub_2224A70C4(v21, type metadata accessor for Connection.State);
    sub_2224A5830(v4 + v27, v19);
    v28 = sub_222485A10();
    v30 = v29;
    sub_2224A70C4(v19, type metadata accessor for Connection.State);
    *v14 = v28;
    v14[1] = v30;
    v31 = v54;
    v14[2] = v53;
    v14[3] = v31;
    v32 = v52;
    (*(v52 + 104))(v14, *MEMORY[0x277D37770], v11);
    v33 = qword_28130A5F8;

    v34 = v11;
    v35 = v32;
    if (v33 != -1)
    {
      swift_once();
    }

    v36 = sub_2224B4628();
    v54 = __swift_project_value_buffer(v36, qword_28130A600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v37 = *(sub_2224B4148() - 8);
    v38 = *(v37 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    v60[8] = 1;
    sub_2224B4118();
    sub_2224B4108();
    v60[3] = v34;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v60);
    v41 = *(v32 + 16);
    v41(boxed_opaque_existential_1Tm, v14, v34);
    sub_2224B40F8();
    sub_2224A7878(v60, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v42 = swift_allocError();
    v41(v43, v14, v34);
    MEMORY[0x223DB7AE0](v42);
    v44 = v56;
    sub_2224B4208();
    v45 = sub_2224B41E8();
    v46 = v34;
    v48 = v58;
    v47 = v59;
    *v59 = v45;
    *(v47 + 32) = v48;
    *(v47 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v49 = __swift_allocate_boxed_opaque_existential_1Tm((v47 + 8));
    (*(v57 + 32))(v49, v44, v48);
    MEMORY[0x223DB7AD0](v42);
    *(v47 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    (*(v35 + 8))(v14, v46);
  }

  else
  {
    (*(v23 + 32))(v26, v21, v22);
    v47 = sub_2224B4388();
    (*(v23 + 8))(v26, v22);
  }

  return v47;
}

uint64_t *Connection.deinit()
{
  v1 = *v0;
  v2 = type metadata accessor for Connection.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  swift_beginAccess();
  sub_2224A5830(v0 + v6, v5);
  v7 = (v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession);
  v8 = v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId;
  v9 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v10 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId + 8);
  v11 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession), *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession + 24));

  sub_2224A6090(v5, v11, v9, v10, v1);

  sub_2224A70C4(v5, type metadata accessor for Connection.State);
  sub_2224A70C4(v0 + v6, type metadata accessor for Connection.State);
  v12 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential);
  v13 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential + 8);
  v14 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential + 16);
  sub_2224A64A8();
  v15 = *(v8 + 1);

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t Connection.__deallocating_deinit()
{
  v1 = *v0;
  v2 = type metadata accessor for Connection.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  swift_beginAccess();
  sub_2224A5830(v0 + v6, v5);
  v7 = (v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession);
  v8 = v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId;
  v9 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v10 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId + 8);
  v11 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession), *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession + 24));

  sub_2224A6090(v5, v11, v9, v10, v1);

  sub_2224A70C4(v5, type metadata accessor for Connection.State);
  sub_2224A70C4(v0 + v6, type metadata accessor for Connection.State);
  v12 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential);
  v13 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential + 8);
  v14 = *(v0 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_credential + 16);
  sub_2224A64A8();
  v15 = *(v8 + 1);

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_222488880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[30] = a6;
  v7[31] = a7;
  v7[28] = a4;
  v7[29] = a5;
  v8 = sub_2224B44C8();
  v7[32] = v8;
  v9 = *(v8 - 8);
  v7[33] = v9;
  v10 = *(v9 + 64) + 15;
  v7[34] = swift_task_alloc();
  v11 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222488970, 0, 0);
}

uint64_t sub_222488970()
{
  v1 = v0;
  if (qword_28130A5F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 280);
  v14 = *(v0 + 248);
  v15 = *(v0 + 272);
  v16 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = sub_2224B4628();
  *(v0 + 288) = v5;
  *(v0 + 296) = __swift_project_value_buffer(v5, qword_28130A600);
  *(v0 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v6 = *(sub_2224B4148() - 8);
  *(v0 + 312) = *(v6 + 72);
  *(v0 + 68) = *(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v7 = sub_2224B4388();
  *(v0 + 152) = MEMORY[0x277D837D0];
  *(v0 + 128) = v7;
  *(v0 + 136) = v8;
  sub_2224B40F8();
  sub_2224A7878(v0 + 128, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4598();

  v9 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2224B4388();

  sub_2224B44B8();
  v10 = *v9;
  v11 = swift_task_alloc();
  *(v1 + 320) = v11;
  *v11 = v1;
  v11[1] = sub_222488C34;
  v12 = *(v1 + 272);

  return sub_222497590(v12, v1 + 72);
}

uint64_t sub_222488C34()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 272);
  v5 = *(*v1 + 264);
  v6 = *(*v1 + 256);
  v7 = *v1;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v8 = *(v2 + 88);
    *(v2 + 16) = *(v2 + 72);
    *(v2 + 32) = v8;
    *(v2 + 48) = *(v2 + 104);
    *(v2 + 64) = *(v2 + 120);

    return MEMORY[0x2822009F8](sub_222488DFC, 0, 0);
  }

  else
  {
    v10 = *(v2 + 272);
    v9 = *(v2 + 280);

    v11 = *(v7 + 8);

    return v11();
  }
}

uint64_t sub_222488DFC()
{
  v1 = *(v0 + 68);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 280);
  sub_222485F68();
  v7 = swift_allocError();
  v9 = *(v0 + 32);
  v8 = *(v0 + 48);
  v10 = *(v0 + 16);
  *(v11 + 48) = *(v0 + 64);
  *(v11 + 16) = v9;
  *(v11 + 32) = v8;
  *v11 = v10;
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  MEMORY[0x223DB7AE0](v7);
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v12 = *(v0 + 192);
  v13 = *(v0 + 200);
  *(v0 + 184) = v13;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 160));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1Tm, v12, v13);
  sub_2224B40F8();
  sub_2224A7878(v0 + 160, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  MEMORY[0x223DB7AD0](v7);
  MEMORY[0x223DB7AD0](v7);
  v16 = *(v0 + 272);
  v15 = *(v0 + 280);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_222488FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E548, &qword_2224B55C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2224A7810(a3, v27 - v11, &qword_27D00E548, &qword_2224B55C0);
  v13 = sub_2224B48D8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2224A7878(v12, &qword_27D00E548, &qword_2224B55C0);
  }

  else
  {
    sub_2224B48C8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2224B4898();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2224B4828() + 32;
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

      sub_2224A7878(a3, &qword_27D00E548, &qword_2224B55C0);

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

  sub_2224A7878(a3, &qword_27D00E548, &qword_2224B55C0);
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

uint64_t _s15OnDeviceStorage10ConnectionC6selectySay0abC4Core3RowVGAE9QueryType_pYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[15] = v2;
  v3[16] = a2;
  v3[14] = a1;
  v4 = sub_2224B46A8();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2224893A8, v2, 0);
}

uint64_t sub_2224893A8()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "Select", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[18];
  v12 = v0[14];

  (*(v11 + 16))(v8, v9, v10);
  v13 = sub_2224B4718();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[21] = sub_2224B4708();
  (*(v11 + 8))(v9, v10);
  v16 = v12[3];
  v17 = v12[4];
  v18 = __swift_project_boxed_opaque_existential_1(v12, v16);
  v0[12] = v16;
  v0[13] = *(v17 + 8);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 9);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1Tm, v18, v16);
  v20 = swift_task_alloc();
  v0[22] = v20;
  *v20 = v0;
  v20[1] = sub_2224895F0;
  v21 = v0[15];

  return sub_22248988C((v0 + 9), (v0 + 2));
}

uint64_t sub_2224895F0(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[22];
  v6 = *v2;

  if (v1)
  {
    v7 = v4[15];
    v8 = sub_2224897CC;
  }

  else
  {
    v9 = v4[15];
    v4[23] = a1;
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 9);
    v8 = sub_22248972C;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22248972C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  sub_2224A6760("Select", 6, 2);

  v4 = v0[1];
  v5 = v0[23];

  return v4(v5);
}

uint64_t sub_2224897CC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  *(v4 + 48) = *(v0 + 64);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *v4 = v5;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  sub_2224A6760("Select", 6, 2);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22248988C(uint64_t a1, uint64_t a2)
{
  v3[53] = v2;
  v3[54] = a2;
  v3[52] = a1;
  v4 = sub_2224B41F8();
  v3[55] = v4;
  v5 = *(v4 - 8);
  v3[56] = v5;
  v6 = *(v5 + 64) + 15;
  v3[57] = swift_task_alloc();
  v7 = sub_2224B4198();
  v3[58] = v7;
  v8 = *(v7 - 8);
  v3[59] = v8;
  v9 = *(v8 + 64) + 15;
  v3[60] = swift_task_alloc();
  v10 = sub_2224B42A8();
  v3[61] = v10;
  v11 = *(v10 - 8);
  v3[62] = v11;
  v12 = *(v11 + 64) + 15;
  v3[63] = swift_task_alloc();
  v13 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v3[64] = swift_task_alloc();
  v14 = sub_2224B4368();
  v3[65] = v14;
  v15 = *(v14 - 8);
  v3[66] = v15;
  v16 = *(v15 + 64) + 15;
  v3[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222489A90, v2, 0);
}

uint64_t sub_222489A90()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2224903A4(0xD000000000000013, 0x80000002224B5ED0, (v0 + 16), v1);
  v5 = *(v0 + 536);
  v6 = *(v0 + 528);
  v7 = *(v0 + 520);
  v8 = sub_2224B41B8();
  *(v0 + 544) = v8;
  (*(v6 + 8))(v5, v7);
  if (qword_28130A5F8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 512);
  v10 = sub_2224B4628();
  *(v0 + 552) = v10;
  *(v0 + 560) = __swift_project_value_buffer(v10, qword_28130A600);
  *(v0 + 568) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v11 = *(sub_2224B4148() - 8);
  *(v0 + 576) = *(v11 + 72);
  *(v0 + 68) = *(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  *(v0 + 304) = MEMORY[0x277D83B88];
  *(v0 + 280) = v8;
  sub_2224B40F8();
  sub_2224A7878(v0 + 280, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  *(v0 + 408) = MEMORY[0x277D84F90];
  *(v0 + 584) = OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId;
  *(v0 + 592) = OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession;
  *(v0 + 600) = 0;
  v12 = *(v0 + 424);
  sub_2224A7124(*(v0 + 416), v0 + 240);
  sub_222487F1C(0xD000000000000013, 0x80000002224B5ED0, (v0 + 128));
  v13 = *(v0 + 544);
  v14 = *(v0 + 504);
  v15 = *(v0 + 480);
  v16 = (*(v0 + 424) + *(v0 + 584));
  v17 = *v16;
  v18 = v16[1];

  sub_2224B42B8();
  v19 = (*(v0 + 424) + *(v0 + 592));
  v20 = *__swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v21 = swift_task_alloc();
  *(v0 + 608) = v21;
  *v21 = v0;
  v21[1] = sub_22248A064;
  v22 = *(v0 + 504);

  return sub_222498770(v22, v0 + 184);
}

uint64_t sub_22248A064(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 608);
  v14 = *v2;
  *(v3 + 616) = a1;
  *(v3 + 624) = v1;

  if (v1)
  {
    v5 = *(v3 + 424);
    v6 = *(v3 + 432);
    v7 = *(v3 + 408);

    v8 = *(v3 + 184);
    v9 = *(v3 + 200);
    v10 = *(v3 + 216);
    *(v6 + 48) = *(v3 + 232);
    *(v6 + 16) = v9;
    *(v6 + 32) = v10;
    *v6 = v8;
    v11 = sub_22248A1B4;
    v12 = v5;
  }

  else
  {
    v12 = *(v3 + 424);
    v11 = sub_22248A264;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

uint64_t sub_22248A1B4()
{
  (*(v0[62] + 8))(v0[63], v0[61]);
  v1 = v0[67];
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[60];
  v5 = v0[57];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22248A264()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 600);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v64 = *(v0 + 552);
  v65 = *(v0 + 560);
  v5 = *(v0 + 512);
  v6 = (*(v0 + 68) + 32) & ~*(v0 + 68);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v7 = *(v1 + 16);
  v8 = MEMORY[0x277D83B88];
  *(v0 + 336) = MEMORY[0x277D83B88];
  *(v0 + 312) = v7;
  sub_2224B40F8();
  sub_2224A7878(v0 + 312, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  *(v0 + 368) = v8;
  *(v0 + 344) = v2;
  sub_2224B40F8();
  sub_2224A7878(v0 + 344, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  v9 = *(v0 + 616);
  if (*(v1 + 16))
  {
    v10 = *(v0 + 544);
    v12 = *(v0 + 496);
    v11 = *(v0 + 504);
    v13 = *(v0 + 488);
    sub_2224943AC(*(v0 + 616));
    v14 = sub_2224B4298();
    result = (*(v12 + 8))(v11, v13);
    if ((v14 & 1) == 0 && v7 >= v10)
    {
      v16 = *(v0 + 600);
      if (!__OFADD__(v16, 1))
      {
        v17 = *(v0 + 624);
        *(v0 + 600) = v16 + 1;
        v18 = *(v0 + 424);
        sub_2224A7124(*(v0 + 416), v0 + 240);
        sub_222487F1C(0xD000000000000013, 0x80000002224B5ED0, (v0 + 128));
        if (v17)
        {
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
          v19 = *(v0 + 408);

          sub_222485F68();
          v20 = swift_allocError();
          v22 = *(v0 + 144);
          v21 = *(v0 + 160);
          v23 = *(v0 + 128);
          *(v24 + 48) = *(v0 + 176);
          *(v24 + 16) = v22;
          *(v24 + 32) = v21;
          *v24 = v23;
          v47 = *(v0 + 448);
          v46 = *(v0 + 456);
          v49 = *(v0 + 432);
          v48 = *(v0 + 440);
          MEMORY[0x223DB7AE0](v20);
          sub_2224B4208();
          *(v0 + 72) = sub_2224B41E8();
          *(v0 + 104) = v48;
          *(v0 + 112) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 80));
          (*(v47 + 32))(boxed_opaque_existential_1Tm, v46, v48);
          *(v0 + 120) = 7;
          sub_222485F68();
          swift_willThrowTypedImpl();
          MEMORY[0x223DB7AD0](v20);
          v51 = *(v0 + 72);
          v52 = *(v0 + 88);
          v53 = *(v0 + 104);
          *(v49 + 48) = *(v0 + 120);
          *(v49 + 16) = v52;
          *(v49 + 32) = v53;
          *v49 = v51;
          v54 = *(v0 + 536);
          v55 = *(v0 + 504);
          v56 = *(v0 + 512);
          v57 = *(v0 + 480);
          v58 = *(v0 + 456);

          v59 = *(v0 + 8);

          return v59();
        }

        else
        {
          v40 = *(v0 + 544);
          v41 = *(v0 + 504);
          v42 = *(v0 + 480);
          v43 = (*(v0 + 424) + *(v0 + 584));
          v44 = *v43;
          v45 = v43[1];

          sub_2224B42B8();
          v60 = (*(v0 + 424) + *(v0 + 592));
          v61 = *__swift_project_boxed_opaque_existential_1(v60, v60[3]);
          v62 = swift_task_alloc();
          *(v0 + 608) = v62;
          *v62 = v0;
          v62[1] = sub_22248A064;
          v63 = *(v0 + 504);

          return sub_222498770(v63, v0 + 184);
        }
      }

LABEL_20:
      __break(1u);
      return result;
    }
  }

  else
  {
    (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));
  }

  v25 = *(v0 + 600);
  v26 = *(v0 + 68);
  v27 = *(v0 + 576);
  v28 = *(v0 + 568);
  v29 = *(v0 + 512);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  result = sub_2224B4108();
  v30 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v31 = *(v0 + 560);
  v32 = *(v0 + 552);
  v33 = *(v0 + 536);
  v35 = *(v0 + 504);
  v34 = *(v0 + 512);
  v36 = *(v0 + 480);
  v66 = *(v0 + 456);
  v37 = (*(v0 + 68) + 32) & ~*(v0 + 68);
  *(v0 + 400) = MEMORY[0x277D83B88];
  *(v0 + 376) = v30;
  sub_2224B40F8();
  sub_2224A7878(v0 + 376, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  v38 = *(v0 + 408);

  v39 = *(v0 + 8);

  return v39(v38);
}

uint64_t _s15OnDeviceStorage10ConnectionC5plucky0abC4Core3RowVSgAE9QueryType_pYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = v3;
  v4[29] = a3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = sub_2224B4228();
  v4[30] = v5;
  v6 = *(v5 - 8);
  v4[31] = v6;
  v7 = *(v6 + 64) + 15;
  v4[32] = swift_task_alloc();
  v8 = sub_2224B46A8();
  v4[33] = v8;
  v9 = *(v8 - 8);
  v4[34] = v9;
  v10 = *(v9 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248AA34, v3, 0);
}

uint64_t sub_22248AA34()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = v0[36];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "Pluck", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = v0[35];
  v9 = v0[36];
  v10 = v0[33];
  v11 = v0[34];
  v13 = v0[27];
  v12 = v0[28];

  (*(v11 + 16))(v8, v9, v10);
  v14 = sub_2224B4718();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[37] = sub_2224B4708();
  (*(v11 + 8))(v9, v10);
  sub_2224A7124(v12 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 16));
  v17 = __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  v18 = v13[3];
  v19 = v13[4];
  v20 = __swift_project_boxed_opaque_existential_1(v13, v18);
  v0[24] = v18;
  v0[25] = *(v19 + 8);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 21);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1Tm, v20, v18);
  sub_222487F1C(0x3A5F286B63756C70, 0xE900000000000029, v0 + 2);
  v22 = v0[32];
  v23 = (v0[28] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v24 = *v23;
  v25 = v23[1];

  sub_2224B4238();
  v26 = *v17;
  v27 = swift_task_alloc();
  v0[38] = v27;
  *v27 = v0;
  v27[1] = sub_22248ADE0;
  v28 = v0[32];
  v29 = v0[26];

  return sub_2224996B8(v29, v28, (v0 + 9));
}

uint64_t sub_22248ADE0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 304);
  v5 = *v1;

  v6 = v2[32];
  v7 = v2[31];
  v8 = v2[30];
  if (v0)
  {
    v9 = v3[28];
    v10 = v3[29];
    (*(v7 + 8))(v6, v8);
    v11 = *(v3 + 9);
    v12 = *(v3 + 11);
    v13 = *(v3 + 13);
    *(v10 + 48) = *(v3 + 120);
    *(v10 + 16) = v12;
    *(v10 + 32) = v13;
    *v10 = v11;
    v14 = sub_22248B028;
  }

  else
  {
    v9 = v3[28];
    (*(v7 + 8))(v6, v8);
    v14 = sub_22248AF78;
  }

  return MEMORY[0x2822009F8](v14, v9, 0);
}

uint64_t sub_22248AF78()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[32];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_2224A6760("Pluck", 5, 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22248B028()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[32];
  sub_2224A6760("Pluck", 5, 2);

  v5 = v0[1];

  return v5();
}

uint64_t _s15OnDeviceStorage10ConnectionC6selectySay0abC4Core3RowVGSSYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[17] = a3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_2224B46A8();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248B1A8, v3, 0);
}

uint64_t sub_22248B1A8()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "Select(String)", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  v13 = v0[14];
  v12 = v0[15];

  (*(v11 + 16))(v8, v9, v10);
  v14 = sub_2224B4718();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[22] = sub_2224B4708();
  (*(v11 + 8))(v9, v10);
  v17 = MEMORY[0x277D37928];
  v0[12] = MEMORY[0x277D837D0];
  v0[13] = v17;
  v0[9] = v13;
  v0[10] = v12;

  v18 = swift_task_alloc();
  v0[23] = v18;
  *v18 = v0;
  v18[1] = sub_22248B3C8;
  v19 = v0[16];

  return sub_22248988C((v0 + 9), (v0 + 2));
}

uint64_t sub_22248B3C8(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[23];
  v6 = *v2;

  if (v1)
  {
    v7 = v4[16];
    v8 = sub_22248B5A4;
  }

  else
  {
    v9 = v4[16];
    v4[24] = a1;
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 9);
    v8 = sub_22248B504;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22248B504()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_2224A6760("Select(String)", 14, 2);

  v4 = v0[1];
  v5 = v0[24];

  return v4(v5);
}

uint64_t sub_22248B5A4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  *(v4 + 48) = *(v0 + 64);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *v4 = v5;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  sub_2224A6760("Select(String)", 14, 2);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t _s15OnDeviceStorage10ConnectionC5plucky0abC4Core3RowVSgSSYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = v4;
  v5[30] = a4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = sub_2224B4228();
  v5[31] = v6;
  v7 = *(v6 - 8);
  v5[32] = v7;
  v8 = *(v7 + 64) + 15;
  v5[33] = swift_task_alloc();
  v9 = sub_2224B46A8();
  v5[34] = v9;
  v10 = *(v9 - 8);
  v5[35] = v10;
  v11 = *(v10 + 64) + 15;
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248B794, v4, 0);
}

uint64_t sub_22248B794()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = v0[37];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "Pluck(String)", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = v0[36];
  v9 = v0[37];
  v10 = v0[34];
  v11 = v0[35];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[27];

  (*(v11 + 16))(v8, v9, v10);
  v15 = sub_2224B4718();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[38] = sub_2224B4708();
  (*(v11 + 8))(v9, v10);
  sub_2224A7124(v12 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 16));
  v18 = __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  v19 = MEMORY[0x277D37928];
  v0[24] = MEMORY[0x277D837D0];
  v0[25] = v19;
  v0[21] = v14;
  v0[22] = v13;

  sub_222487F1C(0x3A5F286B63756C70, 0xE900000000000029, v0 + 2);
  v20 = v0[33];
  v21 = (v0[29] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v22 = *v21;
  v23 = v21[1];

  sub_2224B4238();
  v24 = *v18;
  v25 = swift_task_alloc();
  v0[39] = v25;
  *v25 = v0;
  v25[1] = sub_22248BB18;
  v26 = v0[33];
  v27 = v0[26];

  return sub_2224996B8(v27, v26, (v0 + 9));
}

uint64_t sub_22248BB18()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 312);
  v5 = *v1;

  v6 = v2[33];
  v7 = v2[32];
  v8 = v2[31];
  if (v0)
  {
    v9 = v3[29];
    v10 = v3[30];
    (*(v7 + 8))(v6, v8);
    v11 = *(v3 + 9);
    v12 = *(v3 + 11);
    v13 = *(v3 + 13);
    *(v10 + 48) = *(v3 + 120);
    *(v10 + 16) = v12;
    *(v10 + 32) = v13;
    *v10 = v11;
    v14 = sub_22248BD60;
  }

  else
  {
    v9 = v3[29];
    (*(v7 + 8))(v6, v8);
    v14 = sub_22248BCB0;
  }

  return MEMORY[0x2822009F8](v14, v9, 0);
}

uint64_t sub_22248BCB0()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[33];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_2224A6760("Pluck(String)", 13, 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22248BD60()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[33];
  sub_2224A6760("Pluck(String)", 13, 2);

  v5 = v0[1];

  return v5();
}

unint64_t Connection.select(paginated:options:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v17 = v5;
  v18 = v6;
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = *(v8 + 8);

  v15 = sub_2224A64B0(v12, &v17, v3, v7, v14);

  a3[3] = &type metadata for Connection.PaginatedSelectSequence;
  result = sub_2224A65A4();
  a3[4] = result;
  *a3 = v15;
  return result;
}

unint64_t Connection.select(paginated:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a3;
  v8 = *(a3 + 8);

  v9 = sub_2224A65F8(a1, a2, v7, v8);

  a4[3] = &type metadata for Connection.PaginatedSelectSequence;
  result = sub_2224A65A4();
  a4[4] = result;
  *a4 = v9;
  return result;
}

uint64_t _s15OnDeviceStorage10ConnectionC6scalaryx0abC4Core11ScalarQueryVyxGYaAA0abC5ErrorOYKAE5ValueRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[47] = v5;
  v6[48] = a5;
  v6[45] = a2;
  v6[46] = a3;
  v6[44] = a1;
  v7 = sub_2224B41F8();
  v6[49] = v7;
  v8 = *(v7 - 8);
  v6[50] = v8;
  v9 = *(v8 + 64) + 15;
  v6[51] = swift_task_alloc();
  v10 = sub_2224B4198();
  v6[52] = v10;
  v11 = *(v10 - 8);
  v6[53] = v11;
  v12 = *(v11 + 64) + 15;
  v6[54] = swift_task_alloc();
  v13 = sub_2224B4958();
  v6[55] = v13;
  v14 = *(v13 - 8);
  v6[56] = v14;
  v15 = *(v14 + 64) + 15;
  v6[57] = swift_task_alloc();
  v16 = sub_2224B4498();
  v6[58] = v16;
  v17 = *(v16 - 8);
  v6[59] = v17;
  v18 = *(v17 + 64) + 15;
  v6[60] = swift_task_alloc();
  v19 = sub_2224B45D8();
  v6[61] = v19;
  v20 = *(v19 - 8);
  v6[62] = v20;
  v21 = *(v20 + 64) + 15;
  v6[63] = swift_task_alloc();
  v22 = sub_2224B46A8();
  v6[64] = v22;
  v23 = *(v22 - 8);
  v6[65] = v23;
  v24 = *(v23 + 64) + 15;
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248C268, v5, 0);
}

uint64_t sub_22248C268()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = v0[67];
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = v0[67];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "Scalar<V>", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = v0[67];
  v9 = v0[66];
  v10 = v0[65];
  v11 = v0[64];
  v13 = v0[46];
  v12 = v0[47];
  v14 = v0[45];

  (*(v10 + 16))(v9, v8, v11);
  v15 = sub_2224B4718();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[68] = sub_2224B4708();
  (*(v10 + 8))(v8, v11);
  sub_2224A7124(v12 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 23));
  v18 = __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
  v19 = sub_2224B4218();
  v0[31] = v19;
  v0[32] = swift_getWitnessTable();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 28);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1Tm, v14, v19);
  sub_222487F1C(0x5F2872616C616373, 0xEA0000000000293ALL, v0 + 2);
  v21 = v0[60];
  v22 = (v0[47] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v23 = *v22;
  v24 = v22[1];

  sub_2224B4238();
  v25 = *v18;
  v26 = swift_task_alloc();
  v0[69] = v26;
  *v26 = v0;
  v26[1] = sub_22248C674;
  v27 = v0[63];
  v28 = v0[60];

  return sub_22249A5C8(v27, v28, (v0 + 16));
}

uint64_t sub_22248C674()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 552);
  v5 = *v1;

  v6 = v2[60];
  v7 = v2[59];
  v8 = v2[58];
  v9 = v2[47];
  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v10 = *(v3 + 9);
    *(v3 + 9) = *(v3 + 8);
    *(v3 + 11) = v10;
    *(v3 + 13) = *(v3 + 10);
    *(v3 + 120) = *(v3 + 176);
    v11 = sub_22248CCAC;
  }

  else
  {
    v11 = sub_22248C808;
  }

  return MEMORY[0x2822009F8](v11, v9, 0);
}

uint64_t sub_22248C808()
{
  v1 = v0[63];
  v2 = v0[57];
  v3 = v0[46];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  sub_2224B45C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E348, &qword_2224B50F0);
  if (swift_dynamicCast())
  {
    v4 = v0[68];
    v5 = v0[67];
    v6 = v0[66];
    v7 = v0[60];
    v8 = v0[57];
    v9 = v0[54];
    v44 = v0[51];
    v10 = v0[46];
    v11 = v0[44];
    (*(v0[62] + 8))(v0[63], v0[61]);
    v12 = *(v10 - 8);
    (*(v12 + 56))(v8, 0, 1, v10);
    (*(v12 + 32))(v11, v8, v10);
  }

  else
  {
    v43 = v0[62];
    v45 = v0[61];
    v15 = v0[56];
    v14 = v0[57];
    v17 = v0[54];
    v16 = v0[55];
    v18 = v0[52];
    v19 = v0[53];
    v39 = v0[63];
    v40 = v0[51];
    v20 = v0[48];
    v41 = v0[49];
    v42 = v0[50];
    v21 = v0[46];
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    (*(v15 + 8))(v14, v16);
    v0[43] = v21;
    swift_getMetatypeMetadata();
    v22 = sub_2224B4808();
    v24 = v23;
    sub_2224B45C8();
    v25 = sub_2224B4808();
    *v17 = 0x5F2872616C616373;
    v17[1] = 0xEA0000000000293ALL;
    v17[2] = v22;
    v17[3] = v24;
    v17[4] = v25;
    v17[5] = v26;
    (*(v19 + 104))(v17, *MEMORY[0x277D37758], v18);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v27 = swift_allocError();
    (*(v19 + 16))(v28, v17, v18);
    MEMORY[0x223DB7AE0](v27);
    sub_2224B4208();
    *v20 = sub_2224B41E8();
    *(v20 + 32) = v41;
    *(v20 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v20 + 8));
    (*(v42 + 32))(boxed_opaque_existential_1Tm, v40, v41);
    MEMORY[0x223DB7AD0](v27);
    (*(v19 + 8))(v17, v18);
    *(v20 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    (*(v43 + 8))(v39, v45);
    v30 = v0[68];
    v31 = v0[67];
    v32 = v0[66];
    v33 = v0[63];
    v34 = v0[60];
    v35 = v0[57];
    v36 = v0[54];
    v37 = v0[51];
  }

  sub_2224A6760("Scalar<V>", 9, 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_22248CCAC()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 120);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *v1 = v2;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 528);
  v8 = *(v0 + 504);
  v9 = *(v0 + 480);
  v10 = *(v0 + 456);
  v11 = *(v0 + 432);
  v12 = *(v0 + 408);
  sub_2224A6760("Scalar<V>", 9, 2);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t _s15OnDeviceStorage10ConnectionC6scalary9ValueTypeQzSg0abC4Core11ScalarQueryVyxSgGYaAA0abC5ErrorOYKAH0F0RzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[47] = v5;
  v6[48] = a5;
  v6[45] = a2;
  v6[46] = a3;
  v6[44] = a1;
  v7 = sub_2224B41F8();
  v6[49] = v7;
  v8 = *(v7 - 8);
  v6[50] = v8;
  v9 = *(v8 + 64) + 15;
  v6[51] = swift_task_alloc();
  v10 = sub_2224B4198();
  v6[52] = v10;
  v11 = *(v10 - 8);
  v6[53] = v11;
  v12 = *(v11 + 64) + 15;
  v6[54] = swift_task_alloc();
  v6[55] = swift_getAssociatedTypeWitness();
  v13 = sub_2224B4958();
  v6[56] = v13;
  v14 = *(v13 - 8);
  v6[57] = v14;
  v15 = *(v14 + 64) + 15;
  v6[58] = swift_task_alloc();
  v16 = sub_2224B4958();
  v6[59] = v16;
  v17 = *(v16 - 8);
  v6[60] = v17;
  v18 = *(v17 + 64) + 15;
  v6[61] = swift_task_alloc();
  v19 = sub_2224B4498();
  v6[62] = v19;
  v20 = *(v19 - 8);
  v6[63] = v20;
  v21 = *(v20 + 64) + 15;
  v6[64] = swift_task_alloc();
  v22 = sub_2224B45D8();
  v6[65] = v22;
  v23 = *(v22 - 8);
  v6[66] = v23;
  v24 = *(v23 + 64) + 15;
  v6[67] = swift_task_alloc();
  v25 = sub_2224B46A8();
  v6[68] = v25;
  v26 = *(v25 - 8);
  v6[69] = v26;
  v27 = *(v26 + 64) + 15;
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248D100, v5, 0);
}

uint64_t sub_22248D100()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = v0[71];
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = v0[71];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "Scalar<V?>", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[69];
  v11 = v0[68];
  v13 = v0[46];
  v12 = v0[47];
  v14 = v0[45];

  (*(v10 + 16))(v9, v8, v11);
  v15 = sub_2224B4718();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v0[72] = sub_2224B4708();
  (*(v10 + 8))(v8, v11);
  sub_2224A7124(v12 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 23));
  v18 = __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
  sub_2224B4958();
  v19 = sub_2224B4218();
  v0[31] = v19;
  v0[32] = swift_getWitnessTable();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 28);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1Tm, v14, v19);
  sub_222487F1C(0x5F2872616C616373, 0xEA0000000000293ALL, v0 + 2);
  v21 = v0[64];
  v22 = (v0[47] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v23 = *v22;
  v24 = v22[1];

  sub_2224B4238();
  v25 = *v18;
  v26 = swift_task_alloc();
  v0[73] = v26;
  *v26 = v0;
  v26[1] = sub_22248D524;
  v27 = v0[67];
  v28 = v0[64];

  return sub_22249A5C8(v27, v28, (v0 + 16));
}

uint64_t sub_22248D524()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 584);
  v5 = *v1;

  v6 = v2[64];
  v7 = v2[63];
  v8 = v2[62];
  v9 = v2[47];
  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v10 = *(v3 + 9);
    *(v3 + 9) = *(v3 + 8);
    *(v3 + 11) = v10;
    *(v3 + 13) = *(v3 + 10);
    *(v3 + 120) = *(v3 + 176);
    v11 = sub_22248DCC0;
  }

  else
  {
    v11 = sub_22248D6B8;
  }

  return MEMORY[0x2822009F8](v11, v9, 0);
}

uint64_t sub_22248D6B8()
{
  v1 = v0[67];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  sub_2224B45C8();
  if (!v0[36])
  {
    v9 = v0[61];
    v10 = v0[55];
    (*(v0[66] + 8))(v0[67], v0[65]);
    sub_2224A7878((v0 + 33), &qword_27D00E348, &qword_2224B50F0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    goto LABEL_5;
  }

  v2 = v0[58];
  v3 = v0[55];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E350, &qword_2224B5100);
  if (swift_dynamicCast())
  {
    v4 = v0[61];
    v5 = v0[58];
    v6 = v0[55];
    (*(v0[66] + 8))(v0[67], v0[65]);
    v7 = *(v6 - 8);
    v8 = *(v7 + 56);
    v8(v5, 0, 1, v6);
    (*(v7 + 32))(v4, v5, v6);
    v8(v4, 0, 1, v6);
LABEL_5:
    v11 = v0[72];
    v12 = v0[71];
    v13 = v0[70];
    v14 = v0[67];
    v15 = v0[64];
    v16 = v0[61];
    v17 = v0[57];
    v18 = v0[56];
    v53 = v0[58];
    v55 = v0[54];
    v57 = v0[51];
    v19 = v0[44];
    (*(v17 + 56))(v16, 0, 1, v18);
    (*(v17 + 32))(v19, v16, v18);
    sub_2224A6760("Scalar<V?>", 10, 2);

    v20 = v0[1];
    goto LABEL_7;
  }

  v21 = v0[66];
  v56 = v21;
  v58 = v0[65];
  v23 = v0[60];
  v22 = v0[61];
  v24 = v0[58];
  v25 = v0[59];
  v26 = v0[56];
  v27 = v0[57];
  v28 = v0[54];
  v29 = v0[53];
  v49 = v0[67];
  v50 = v0[52];
  v54 = v0[50];
  v30 = v0[48];
  v51 = v0[51];
  v52 = v0[49];
  (*(*(v0[55] - 8) + 56))(v24, 1, 1);
  (*(v27 + 8))(v24, v26);
  (*(v27 + 56))(v22, 1, 1, v26);
  (*(v23 + 8))(v22, v25);
  v0[43] = v26;
  swift_getMetatypeMetadata();
  v31 = sub_2224B4808();
  v33 = v32;
  sub_2224B45C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E348, &qword_2224B50F0);
  v34 = sub_2224B4808();
  *v28 = 0x5F2872616C616373;
  v28[1] = 0xEA0000000000293ALL;
  v28[2] = v31;
  v28[3] = v33;
  v28[4] = v34;
  v28[5] = v35;
  (*(v29 + 104))(v28, *MEMORY[0x277D37758], v50);
  sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
  v36 = swift_allocError();
  (*(v29 + 16))(v37, v28, v50);
  MEMORY[0x223DB7AE0](v36);
  sub_2224B4208();
  *v30 = sub_2224B41E8();
  *(v30 + 32) = v52;
  *(v30 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v30 + 8));
  (*(v54 + 32))(boxed_opaque_existential_1Tm, v51, v52);
  MEMORY[0x223DB7AD0](v36);
  (*(v29 + 8))(v28, v50);
  *(v30 + 48) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  (*(v56 + 8))(v49, v58);
  v39 = v0[72];
  v40 = v0[71];
  v41 = v0[70];
  v42 = v0[67];
  v43 = v0[64];
  v44 = v0[61];
  v45 = v0[58];
  v46 = v0[54];
  v47 = v0[51];
  sub_2224A6760("Scalar<V?>", 10, 2);

  v20 = v0[1];
LABEL_7:

  return v20();
}

uint64_t sub_22248DCC0()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 120);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *v1 = v2;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
  v5 = *(v0 + 576);
  v6 = *(v0 + 568);
  v7 = *(v0 + 560);
  v8 = *(v0 + 536);
  v9 = *(v0 + 512);
  v10 = *(v0 + 488);
  v11 = *(v0 + 464);
  v12 = *(v0 + 432);
  v13 = *(v0 + 408);
  sub_2224A6760("Scalar<V?>", 10, 2);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t _s15OnDeviceStorage10ConnectionC6existsySb0abC4Core6SelectVySbGYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[45] = v2;
  v3[46] = a2;
  v3[44] = a1;
  v4 = sub_2224B41F8();
  v3[47] = v4;
  v5 = *(v4 - 8);
  v3[48] = v5;
  v6 = *(v5 + 64) + 15;
  v3[49] = swift_task_alloc();
  v7 = sub_2224B4198();
  v3[50] = v7;
  v8 = *(v7 - 8);
  v3[51] = v8;
  v9 = *(v8 + 64) + 15;
  v3[52] = swift_task_alloc();
  v10 = sub_2224B4498();
  v3[53] = v10;
  v11 = *(v10 - 8);
  v3[54] = v11;
  v12 = *(v11 + 64) + 15;
  v3[55] = swift_task_alloc();
  v13 = sub_2224B45D8();
  v3[56] = v13;
  v14 = *(v13 - 8);
  v3[57] = v14;
  v15 = *(v14 + 64) + 15;
  v3[58] = swift_task_alloc();
  v16 = sub_2224B46A8();
  v3[59] = v16;
  v17 = *(v16 - 8);
  v3[60] = v17;
  v18 = *(v17 + 64) + 15;
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248E028, v2, 0);
}

uint64_t sub_22248E028()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = v0[62];
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = v0[62];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "Exists", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = v0[61];
  v9 = v0[62];
  v10 = v0[59];
  v11 = v0[60];
  v13 = v0[44];
  v12 = v0[45];

  (*(v11 + 16))(v8, v9, v10);
  v14 = sub_2224B4718();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[63] = sub_2224B4708();
  (*(v11 + 8))(v9, v10);
  sub_2224A7124(v12 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 23));
  v17 = __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E358, &qword_2224B5110);
  v0[31] = v18;
  v0[32] = sub_2224A77C8(&qword_27D00E360, &qword_27D00E358, &qword_2224B5110);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 28);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1Tm, v13, v18);
  sub_222487F1C(0x5F28737473697865, 0xEA0000000000293ALL, v0 + 2);
  v20 = v0[55];
  v21 = (v0[45] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v22 = *v21;
  v23 = v21[1];

  sub_2224B4238();
  v24 = *v17;
  v25 = swift_task_alloc();
  v0[64] = v25;
  *v25 = v0;
  v25[1] = sub_22248E42C;
  v26 = v0[58];
  v27 = v0[55];

  return sub_22249A5C8(v26, v27, (v0 + 16));
}

uint64_t sub_22248E42C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 512);
  v5 = *v1;

  v6 = v2[55];
  v7 = v2[54];
  v8 = v2[53];
  v9 = v2[45];
  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v10 = *(v3 + 9);
    *(v3 + 9) = *(v3 + 8);
    *(v3 + 11) = v10;
    *(v3 + 13) = *(v3 + 10);
    *(v3 + 120) = *(v3 + 176);
    v11 = sub_22248E9B4;
  }

  else
  {
    v11 = sub_22248E5C0;
  }

  return MEMORY[0x2822009F8](v11, v9, 0);
}

uint64_t sub_22248E5C0()
{
  v1 = *(v0 + 464);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
  sub_2224B45C8();
  if (*(v0 + 288))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E350, &qword_2224B5100);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 496);
      v3 = *(v0 + 504);
      v4 = *(v0 + 488);
      v5 = *(v0 + 440);
      v6 = *(v0 + 416);
      v7 = *(v0 + 392);
      (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
      v8 = *(v0 + 65);
      sub_2224A6760("Exists", 6, 2);

      v9 = *(v0 + 8);
      v10 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2224A7878(v0 + 264, &qword_27D00E348, &qword_2224B50F0);
  }

  v34 = *(v0 + 464);
  v35 = *(v0 + 456);
  v36 = *(v0 + 448);
  v12 = *(v0 + 408);
  v11 = *(v0 + 416);
  v14 = *(v0 + 392);
  v13 = *(v0 + 400);
  v15 = *(v0 + 384);
  v33 = *(v0 + 376);
  v16 = *(v0 + 368);
  *(v0 + 344) = MEMORY[0x277D839B0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E368, &qword_2224B5118);
  v17 = sub_2224B4808();
  v19 = v18;
  sub_2224B45C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E348, &qword_2224B50F0);
  v20 = sub_2224B4808();
  *v11 = 0x5F28737473697865;
  v11[1] = 0xEA0000000000293ALL;
  v11[2] = v17;
  v11[3] = v19;
  v11[4] = v20;
  v11[5] = v21;
  (*(v12 + 104))(v11, *MEMORY[0x277D37758], v13);
  sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
  v22 = swift_allocError();
  (*(v12 + 16))(v23, v11, v13);
  MEMORY[0x223DB7AE0](v22);
  sub_2224B4208();
  *v16 = sub_2224B41E8();
  *(v16 + 32) = v33;
  *(v16 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v16 + 8));
  (*(v15 + 32))(boxed_opaque_existential_1Tm, v14, v33);
  MEMORY[0x223DB7AD0](v22);
  (*(v12 + 8))(v11, v13);
  *(v16 + 48) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  (*(v35 + 8))(v34, v36);
  v25 = *(v0 + 496);
  v26 = *(v0 + 504);
  v27 = *(v0 + 488);
  v28 = *(v0 + 464);
  v29 = *(v0 + 440);
  v30 = *(v0 + 416);
  v31 = *(v0 + 392);
  sub_2224A6760("Exists", 6, 2);

  v9 = *(v0 + 8);
  v10 = 0;
LABEL_6:

  return v9(v10);
}

uint64_t sub_22248E9B4()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 120);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *v1 = v2;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
  v5 = *(v0 + 496);
  v6 = *(v0 + 504);
  v7 = *(v0 + 488);
  v8 = *(v0 + 464);
  v9 = *(v0 + 440);
  v10 = *(v0 + 416);
  v11 = *(v0 + 392);
  sub_2224A6760("Exists", 6, 2);

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t _s15OnDeviceStorage10ConnectionC6insertys5Int64V0abC4Core6InsertVYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[55] = v2;
  v3[56] = a2;
  v3[54] = a1;
  v4 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v3[57] = swift_task_alloc();
  v5 = sub_2224B4198();
  v3[58] = v5;
  v6 = *(v5 - 8);
  v3[59] = v6;
  v7 = *(v6 + 64) + 15;
  v3[60] = swift_task_alloc();
  v8 = sub_2224B4278();
  v3[61] = v8;
  v9 = *(v8 - 8);
  v3[62] = v9;
  v10 = *(v9 + 64) + 15;
  v3[63] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E370, &qword_2224B5128);
  v3[64] = v11;
  v12 = *(v11 - 8);
  v3[65] = v12;
  v13 = *(v12 + 64) + 15;
  v3[66] = swift_task_alloc();
  v14 = sub_2224B41F8();
  v3[67] = v14;
  v15 = *(v14 - 8);
  v3[68] = v15;
  v16 = *(v15 + 64) + 15;
  v3[69] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E378, &qword_2224B5130) - 8) + 64) + 15;
  v3[70] = swift_task_alloc();
  v18 = sub_2224B4368();
  v3[71] = v18;
  v19 = *(v18 - 8);
  v3[72] = v19;
  v20 = *(v19 + 64) + 15;
  v3[73] = swift_task_alloc();
  v21 = sub_2224B4558();
  v3[74] = v21;
  v22 = *(v21 - 8);
  v3[75] = v22;
  v23 = *(v22 + 64) + 15;
  v3[76] = swift_task_alloc();
  v24 = sub_2224B46A8();
  v3[77] = v24;
  v25 = *(v24 - 8);
  v3[78] = v25;
  v26 = *(v25 + 64) + 15;
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22248EE24, v2, 0);
}

uint64_t sub_22248EE24()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = v0[80];
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = v0[80];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "Insert", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = v0[80];
  v9 = v0[79];
  v10 = v0[78];
  v11 = v0[77];
  v12 = v0[55];

  (*(v10 + 16))(v9, v8, v11);
  v13 = sub_2224B4718();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[81] = sub_2224B4708();
  (*(v10 + 8))(v8, v11);
  v0[82] = sub_222487F1C(0x5F28747265736E69, 0xEA0000000000293ALL, v0 + 2);
  v0[83] = v16;
  v17 = v0[55];
  sub_2224903A4(0x5F28747265736E69, 0xEA0000000000293ALL, v0 + 16, v0[73]);
  v18 = v0[76];
  v19 = v0[73];
  v20 = v0[54];
  sub_2224B4548();
  v21 = v0[76];
  v22 = v0[70];
  v23 = v0[65];
  v24 = v0[64];
  (*(v0[72] + 8))(v0[73], v0[71]);
  sub_2224B4538();
  v0[84] = sub_2224B49E8();

  v0[85] = OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession;
  v0[86] = OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId;
  sub_2224B4A58();
  v25 = *(v23 + 48);
  v0[87] = v25;
  if (v25(v22, 1, v24) == 1)
  {
    v26 = v0[84];
    v27 = v0[83];

    if (qword_28130A5F8 != -1)
    {
      swift_once();
    }

    v28 = v0[81];
    v53 = v0[80];
    v54 = v0[79];
    v29 = v0[76];
    v30 = v0[75];
    v52 = v0[74];
    v55 = v0[73];
    v56 = v0[70];
    v57 = v0[69];
    v58 = v0[66];
    v59 = v0[63];
    v60 = v0[60];
    v31 = v0[57];
    v32 = sub_2224B4628();
    __swift_project_value_buffer(v32, qword_28130A600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v33 = *(sub_2224B4148() - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    v0[50] = MEMORY[0x277D83B88];
    v0[47] = 0;
    sub_2224B40F8();
    sub_2224A7878((v0 + 47), &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4568();

    (*(v30 + 8))(v29, v52);
    sub_2224A6760("Insert", 6, 2);

    v36 = v0[1];

    return v36(0);
  }

  else
  {
    v38 = *(v0[65] + 32);
    v0[88] = v38;
    v0[89] = 0;
    v39 = v0[85];
    v40 = v0[83];
    v61 = v0[82];
    v41 = v0[74];
    v42 = v0[63];
    v43 = v0[60];
    v44 = v0[55];
    v45 = (v44 + v0[86]);
    v38(v0[66], v0[70], v0[64]);
    sub_2224A7124(v44 + v39, (v0 + 37));
    v46 = __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
    v0[45] = v41;
    v0[46] = sub_2224A76C8(&qword_28130A460, MEMORY[0x277D378E8]);
    __swift_allocate_boxed_opaque_existential_1Tm(v0 + 42);
    sub_2224B4178();
    sub_2224B4158();
    sub_2224B4188();
    v47 = *v45;
    v48 = v45[1];

    sub_2224B4288();
    v49 = *v46;
    v50 = swift_task_alloc();
    v0[90] = v50;
    *v50 = v0;
    v50[1] = sub_22248F8FC;
    v51 = v0[63];

    return sub_22249B4D8(v51, (v0 + 30));
  }
}

uint64_t sub_22248F8FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 408) = v2;
  *(v4 + 416) = a1;
  *(v4 + 424) = v1;
  v5 = *(v3 + 720);
  v19 = *v2;
  *(v4 + 728) = v1;

  if (v1)
  {
    v6 = *(v4 + 664);
    v8 = *(v4 + 496);
    v7 = *(v4 + 504);
    v9 = *(v4 + 488);
    v10 = *(v4 + 440);
    v11 = *(v4 + 448);

    (*(v8 + 8))(v7, v9);
    v12 = *(v4 + 240);
    v13 = *(v4 + 256);
    v14 = *(v4 + 272);
    *(v11 + 48) = *(v4 + 288);
    *(v11 + 16) = v13;
    *(v11 + 32) = v14;
    *v11 = v12;
    v15 = sub_222490230;
    v16 = v10;
  }

  else
  {
    v17 = *(v4 + 440);
    (*(*(v4 + 496) + 8))(*(v4 + 504), *(v4 + 488));
    v15 = sub_22248FA90;
    v16 = v17;
  }

  return MEMORY[0x2822009F8](v15, v16, 0);
}

uint64_t sub_22248FA90()
{
  v1 = *(v0 + 712);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = *(v0 + 696);
  v4 = *(v0 + 672);
  v5 = *(v0 + 560);
  v6 = *(v0 + 512);
  (*(*(v0 + 520) + 8))(*(v0 + 528), v6);
  sub_2224B4A58();
  if (v3(v5, 1, v6) == 1)
  {
    v75 = *(v0 + 416);
    v7 = *(v0 + 672);
    v8 = *(v0 + 664);

    if (qword_28130A5F8 == -1)
    {
LABEL_4:
      v9 = *(v0 + 648);
      v59 = *(v0 + 640);
      v60 = *(v0 + 632);
      v10 = *(v0 + 600);
      v57 = *(v0 + 592);
      v58 = *(v0 + 608);
      v61 = *(v0 + 584);
      v62 = *(v0 + 560);
      v64 = *(v0 + 552);
      v66 = *(v0 + 528);
      v68 = *(v0 + 504);
      v71 = *(v0 + 480);
      v11 = *(v0 + 456);
      v12 = sub_2224B4628();
      __swift_project_value_buffer(v12, qword_28130A600);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
      v13 = *(sub_2224B4148() - 8);
      v14 = *(v13 + 72);
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      *(swift_allocObject() + 16) = xmmword_2224B5060;
      sub_2224B4118();
      sub_2224B4108();
      *(v0 + 400) = MEMORY[0x277D83B88];
      *(v0 + 376) = v2;
      sub_2224B40F8();
      sub_2224A7878(v0 + 376, &qword_27D00E338, &qword_2224B5090);
      sub_2224B4108();
      sub_2224B4138();
      sub_2224B4568();

      (*(v10 + 8))(v58, v57);
      sub_2224A6760("Insert", 6, 2);

      v16 = *(v0 + 8);

      return v16(v75);
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v18 = *(v0 + 728);
  *(v0 + 712) = v2;
  v19 = *(v0 + 680);
  v20 = *(v0 + 664);
  v72 = *(v0 + 656);
  v76 = v18;
  v21 = *(v0 + 592);
  v22 = *(v0 + 504);
  v23 = *(v0 + 440);
  v24 = (v23 + *(v0 + 688));
  v25 = *(v0 + 480);
  v26 = (*(v0 + 520) + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  (*(v0 + 704))(*(v0 + 528), *(v0 + 560), *(v0 + 512));
  sub_2224A7124(v23 + v19, v0 + 296);
  v69 = __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
  *(v0 + 360) = v21;
  *(v0 + 368) = sub_2224A76C8(&qword_28130A460, MEMORY[0x277D378E8]);
  __swift_allocate_boxed_opaque_existential_1Tm((v0 + 336));
  sub_2224B4178();
  sub_2224B4158();
  sub_2224B4188();
  v28 = *v24;
  v27 = v24[1];

  sub_2224B4288();
  if (v76)
  {
    v29 = *(v0 + 664);
    v30 = *(v0 + 600);
    v63 = *(v0 + 672);
    v65 = *(v0 + 592);
    v31 = *(v0 + 552);
    v32 = *(v0 + 544);
    v33 = *(v0 + 536);
    v67 = *(v0 + 608);
    v70 = *(v0 + 520);
    v73 = *(v0 + 512);
    v77 = *(v0 + 528);
    v34 = *(v0 + 472);
    v35 = *(v0 + 480);
    v36 = *(v0 + 464);
    v37 = *(v0 + 448);

    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v38 = swift_allocError();
    (*(v34 + 32))(v39, v35, v36);
    MEMORY[0x223DB7AE0](v38);
    sub_2224B4208();
    *(v0 + 184) = sub_2224B41E8();
    *(v0 + 216) = v33;
    *(v0 + 224) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 192));
    (*(v32 + 32))(boxed_opaque_existential_1Tm, v31, v33);
    *(v0 + 232) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();

    MEMORY[0x223DB7AD0](v38);
    (*(v30 + 8))(v67, v65);
    v41 = *(v0 + 184);
    v42 = *(v0 + 200);
    v43 = *(v0 + 216);
    *(v37 + 48) = *(v0 + 232);
    *(v37 + 16) = v42;
    *(v37 + 32) = v43;
    *v37 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
    (*(v70 + 8))(v77, v73);
    v44 = *(v0 + 648);
    v45 = *(v0 + 640);
    v46 = *(v0 + 632);
    v47 = *(v0 + 608);
    v48 = *(v0 + 584);
    v49 = *(v0 + 560);
    v50 = *(v0 + 552);
    v51 = *(v0 + 528);
    v52 = *(v0 + 504);
    v74 = *(v0 + 480);
    v78 = *(v0 + 456);
    sub_2224A6760("Insert", 6, 2);

    v53 = *(v0 + 8);

    return v53();
  }

  else
  {
    v54 = *v69;
    v55 = swift_task_alloc();
    *(v0 + 720) = v55;
    *v55 = v0;
    v55[1] = sub_22248F8FC;
    v56 = *(v0 + 504);

    return sub_22249B4D8(v56, v0 + 240);
  }
}

uint64_t sub_222490230()
{
  v1 = v0[84];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[64];

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  (*(v6 + 8))(v5, v7);
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[76];
  v12 = v0[73];
  v13 = v0[70];
  v14 = v0[69];
  v15 = v0[66];
  v16 = v0[63];
  v19 = v0[60];
  v20 = v0[57];
  sub_2224A6760("Insert", 6, 2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_2224903A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v40 = a1;
  v5 = v4;
  v41 = a2;
  v39[1] = a4;
  v6 = sub_2224B41F8();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2224B4198();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Connection.State(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v39 - v18;
  v20 = sub_2224B4398();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_state;
  swift_beginAccess();
  sub_2224A5830(v5 + v25, v19);
  if ((*(v21 + 48))(v19, 2, v20))
  {
    sub_2224A70C4(v19, type metadata accessor for Connection.State);
    sub_2224A5830(v5 + v25, v17);
    v26 = sub_222485A10();
    v28 = v27;
    sub_2224A70C4(v17, type metadata accessor for Connection.State);
    *v12 = v26;
    v12[1] = v28;
    v29 = v41;
    v12[2] = v40;
    v12[3] = v29;
    v30 = v42;
    (*(v42 + 104))(v12, *MEMORY[0x277D37770], v9);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v31 = swift_allocError();
    (*(v30 + 16))(v32, v12, v9);

    MEMORY[0x223DB7AE0](v31);
    v33 = v43;
    sub_2224B4208();
    v34 = sub_2224B41E8();
    v35 = v46;
    *v46 = v34;
    v36 = v45;
    v35[4] = v45;
    v35[5] = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v35 + 1);
    (*(v44 + 32))(boxed_opaque_existential_1Tm, v33, v36);
    MEMORY[0x223DB7AD0](v31);
    (*(v30 + 8))(v12, v9);
    *(v35 + 48) = 7;
    sub_222485F68();
    return swift_willThrowTypedImpl();
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    sub_2224B4378();
    return (*(v21 + 8))(v24, v20);
  }
}

uint64_t _s15OnDeviceStorage10ConnectionC6upsertys5Int64VAA16DictionaryUpsertVYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[69] = a2;
  v3[68] = v2;
  v3[67] = a1;
  v4 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v3[70] = swift_task_alloc();
  v5 = sub_2224B4198();
  v3[71] = v5;
  v6 = *(v5 - 8);
  v3[72] = v6;
  v7 = *(v6 + 64) + 15;
  v3[73] = swift_task_alloc();
  v8 = sub_2224B4278();
  v3[74] = v8;
  v9 = *(v8 - 8);
  v3[75] = v9;
  v10 = *(v9 + 64) + 15;
  v3[76] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E370, &qword_2224B5128);
  v3[77] = v11;
  v12 = *(v11 - 8);
  v3[78] = v12;
  v13 = *(v12 + 64) + 15;
  v3[79] = swift_task_alloc();
  v14 = sub_2224B41F8();
  v3[80] = v14;
  v15 = *(v14 - 8);
  v3[81] = v15;
  v16 = *(v15 + 64) + 15;
  v3[82] = swift_task_alloc();
  v17 = sub_2224B4368();
  v3[83] = v17;
  v18 = *(v17 - 8);
  v3[84] = v18;
  v19 = *(v18 + 64) + 15;
  v3[85] = swift_task_alloc();
  v20 = sub_2224B46A8();
  v3[86] = v20;
  v21 = *(v20 - 8);
  v3[87] = v21;
  v22 = *(v21 + 64) + 15;
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222490AF8, v2, 0);
}

uint64_t sub_222490AF8()
{
  v101 = v0;
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 712);
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = *(v0 + 712);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "Upsert", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = *(v0 + 712);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = *(v0 + 688);
  v12 = *(v0 + 536);

  (*(v10 + 16))(v9, v8, v11);
  v13 = sub_2224B4718();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v0 + 720) = sub_2224B4708();
  (*(v10 + 8))(v8, v11);
  if (!*(*(v12 + 40) + 16))
  {
    if (qword_28130A5F8 != -1)
    {
      swift_once();
    }

    v17 = sub_2224B4628();
    __swift_project_value_buffer(v17, qword_28130A600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v18 = *(sub_2224B4148() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B40E8();
    sub_2224B4568();

    goto LABEL_10;
  }

  v16 = *(v0 + 544);
  sub_2224903A4(0x5F28747265737075, 0xEA0000000000293ALL, (v0 + 16), *(v0 + 680));
  v31 = *(v0 + 544);
  *(v0 + 728) = sub_222487F1C(0x5F28747265737075, 0xEA0000000000293ALL, (v0 + 72));
  *(v0 + 736) = v32;
  v33 = *(v0 + 536);
  v34 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_2224B4678();
  if (v35)
  {
    v97 = *(v0 + 680);
    v36 = v33[3];
    v37 = v33[4];
    __swift_project_boxed_opaque_existential_1(*(v0 + 536), v36);
    sub_2224B4668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E380, &qword_2224B5148);
    sub_2224A77C8(&qword_28130A320, &qword_27D00E380, &qword_2224B5148);
    v68 = sub_2224B44D8();
    v69 = *(v0 + 680);
    v70 = *(v0 + 536);

    sub_2224A7124(v70, v0 + 352);
    *(v0 + 392) = v68;
    sub_2224AA918((v0 + 352), v69, 20480, &v100);
    v71 = *(v0 + 544);
    v72 = v100;
    *(v0 + 744) = v100;
    v73 = *(v72 + 16);
    *(v0 + 752) = v73;
    v74 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession;
    *(v0 + 760) = OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession;
    v75 = OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId;
    *(v0 + 768) = OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId;
    if (v73)
    {
      v76 = *(v0 + 624);
      *(v0 + 776) = 0;
      if (*(v72 + 16))
      {
        v77 = (v71 + v75);
        v78 = *(v0 + 736);
        v79 = *(v0 + 728);
        v80 = *(v0 + 608);
        v98 = *(v0 + 584);
        (*(v76 + 16))(*(v0 + 632), v72 + ((*(v76 + 80) + 32) & ~*(v76 + 80)), *(v0 + 616));
        sub_2224A7124(v71 + v74, v0 + 400);
        v81 = __swift_project_boxed_opaque_existential_1((v0 + 400), *(v0 + 424));
        *(v0 + 464) = sub_2224B4558();
        *(v0 + 472) = sub_2224A76C8(&qword_28130A460, MEMORY[0x277D378E8]);
        __swift_allocate_boxed_opaque_existential_1Tm((v0 + 440));
        sub_2224B4178();
        sub_2224B4158();
        sub_2224B4188();
        v82 = *v77;
        v83 = v77[1];

        sub_2224B4288();
        v94 = *v81;
        v95 = swift_task_alloc();
        *(v0 + 784) = v95;
        *v95 = v0;
        v95[1] = sub_22249193C;
        v96 = *(v0 + 608);

        return sub_22249B4D8(v96, v0 + 296);
      }

      __break(1u);
    }

    else
    {
      v84 = *(v0 + 736);

      if (qword_28130A5F8 == -1)
      {
LABEL_22:
        v85 = *(v0 + 752);
        v86 = *(v0 + 720);
        v99 = *(v0 + 680);
        v87 = *(v0 + 672);
        v88 = *(v0 + 664);
        v89 = *(v0 + 560);
        v90 = sub_2224B4628();
        __swift_project_value_buffer(v90, qword_28130A600);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
        v91 = *(sub_2224B4148() - 8);
        v92 = *(v91 + 72);
        v93 = (*(v91 + 80) + 32) & ~*(v91 + 80);
        *(swift_allocObject() + 16) = xmmword_2224B5060;
        sub_2224B4118();
        sub_2224B4108();
        *(v0 + 504) = MEMORY[0x277D83B88];
        *(v0 + 480) = v85;
        sub_2224B40F8();
        sub_2224A7878(v0 + 480, &qword_27D00E338, &qword_2224B5090);
        sub_2224B4108();
        sub_2224B4138();
        sub_2224B4568();

        sub_2224A670C(v0 + 352);
        (*(v87 + 8))(v99, v88);
LABEL_10:
        sub_2224A6760("Upsert", 6, 2);

        v21 = *(v0 + 712);
        v22 = *(v0 + 704);
        v23 = *(v0 + 680);
        v24 = *(v0 + 656);
        v25 = *(v0 + 632);
        v26 = *(v0 + 608);
        v27 = *(v0 + 584);
        v28 = *(v0 + 560);

        v29 = *(v0 + 8);

        return v29(0);
      }
    }

    swift_once();
    goto LABEL_22;
  }

  v38 = *(v0 + 576);
  v39 = *(v0 + 568);
  v40 = *(v0 + 536);
  sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
  v41 = swift_allocError();
  v43 = v42;
  v44 = v33[3];
  v45 = v33[4];
  __swift_project_boxed_opaque_existential_1(v40, v44);
  *v43 = sub_2224B4668();
  v43[1] = v46;
  (*(v38 + 104))(v43, *MEMORY[0x277D37768], v39);
  swift_willThrow();
  v47 = *(v0 + 680);
  v48 = *(v0 + 672);
  v49 = *(v0 + 664);
  v50 = *(v0 + 656);
  v51 = *(v0 + 648);
  v52 = *(v0 + 640);
  v53 = *(v0 + 552);

  MEMORY[0x223DB7AE0](v41);
  sub_2224B4208();
  *(v0 + 128) = sub_2224B41E8();
  *(v0 + 160) = v52;
  *(v0 + 168) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 136));
  (*(v51 + 32))(boxed_opaque_existential_1Tm, v50, v52);
  *(v0 + 176) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  MEMORY[0x223DB7AD0](v41);
  v55 = *(v0 + 128);
  v56 = *(v0 + 144);
  v57 = *(v0 + 160);
  *(v53 + 48) = *(v0 + 176);
  *(v53 + 16) = v56;
  *(v53 + 32) = v57;
  *v53 = v55;
  (*(v48 + 8))(v47, v49);
  v58 = *(v0 + 720);
  v59 = *(v0 + 712);
  v60 = *(v0 + 704);
  v61 = *(v0 + 680);
  v62 = *(v0 + 656);
  v63 = *(v0 + 632);
  v64 = *(v0 + 608);
  v65 = *(v0 + 584);
  v66 = *(v0 + 560);
  sub_2224A6760("Upsert", 6, 2);

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_22249193C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[64] = v2;
  v4[65] = a1;
  v4[66] = v1;
  v5 = v3[98];
  v21 = *v2;
  v4[99] = v1;

  if (v1)
  {
    v6 = v4 + 37;
    v7 = v4[93];
    v8 = v4[92];
    v9 = v4[76];
    v10 = v4[75];
    v11 = v4[74];
    v12 = v4[69];
    v13 = v4[68];

    (*(v10 + 8))(v9, v11);
    v14 = *v6;
    v15 = *(v6 + 1);
    v16 = *(v6 + 2);
    *(v12 + 48) = *(v6 + 48);
    *(v12 + 16) = v15;
    *(v12 + 32) = v16;
    *v12 = v14;
    v17 = sub_22249226C;
    v18 = v13;
  }

  else
  {
    v19 = v4[68];
    (*(v4[75] + 8))(v4[76], v4[74]);
    v17 = sub_222491AF8;
    v18 = v19;
  }

  return MEMORY[0x2822009F8](v17, v18, 0);
}

uint64_t sub_222491AF8()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 776) + 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 400));
  result = (*(v3 + 8))(v2, v4);
  if (v5 == v1)
  {
    v74 = *(v0 + 520);
    v7 = *(v0 + 744);
    v8 = *(v0 + 736);

    if (qword_28130A5F8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 752);
    v10 = *(v0 + 720);
    v72 = *(v0 + 680);
    v11 = *(v0 + 672);
    v12 = *(v0 + 664);
    v13 = *(v0 + 560);
    v14 = sub_2224B4628();
    __swift_project_value_buffer(v14, qword_28130A600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v15 = *(sub_2224B4148() - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 504) = MEMORY[0x277D83B88];
    *(v0 + 480) = v9;
    sub_2224B40F8();
    sub_2224A7878(v0 + 480, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4568();

    sub_2224A670C(v0 + 352);
    (*(v11 + 8))(v72, v12);
    sub_2224A6760("Upsert", 6, 2);

    v18 = *(v0 + 712);
    v19 = *(v0 + 704);
    v20 = *(v0 + 680);
    v21 = *(v0 + 656);
    v22 = *(v0 + 632);
    v23 = *(v0 + 608);
    v24 = *(v0 + 584);
    v25 = *(v0 + 560);

    v26 = *(v0 + 8);

    return v26(v74);
  }

  else
  {
    v27 = *(v0 + 792);
    v28 = *(v0 + 776) + 1;
    *(v0 + 776) = v28;
    v29 = *(v0 + 744);
    if (v28 >= *(v29 + 16))
    {
      __break(1u);
    }

    else
    {
      v30 = *(v0 + 760);
      v31 = *(v0 + 736);
      v75 = v27;
      v32 = *(v0 + 728);
      v33 = *(v0 + 608);
      v34 = *(v0 + 584);
      v35 = *(v0 + 544);
      v36 = (v35 + *(v0 + 768));
      (*(*(v0 + 624) + 16))(*(v0 + 632), v29 + ((*(*(v0 + 624) + 80) + 32) & ~*(*(v0 + 624) + 80)) + *(*(v0 + 624) + 72) * v28, *(v0 + 616));
      sub_2224A7124(v35 + v30, v0 + 400);
      v37 = __swift_project_boxed_opaque_existential_1((v0 + 400), *(v0 + 424));
      *(v0 + 464) = sub_2224B4558();
      *(v0 + 472) = sub_2224A76C8(&qword_28130A460, MEMORY[0x277D378E8]);
      __swift_allocate_boxed_opaque_existential_1Tm((v0 + 440));
      sub_2224B4178();
      sub_2224B4158();
      sub_2224B4188();
      v39 = *v36;
      v38 = v36[1];

      sub_2224B4288();
      if (v75)
      {
        v40 = *(v0 + 736);
        v73 = *(v0 + 664);
        v76 = *(v0 + 680);
        v41 = *(v0 + 656);
        v42 = *(v0 + 648);
        v43 = *(v0 + 640);
        v70 = *(v0 + 632);
        v71 = *(v0 + 672);
        v44 = *(v0 + 624);
        v68 = *(v0 + 744);
        v69 = *(v0 + 616);
        v45 = *(v0 + 584);
        v46 = *(v0 + 576);
        v47 = *(v0 + 568);
        v48 = *(v0 + 552);

        sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
        v49 = swift_allocError();
        (*(v46 + 32))(v50, v45, v47);
        MEMORY[0x223DB7AE0](v49);
        sub_2224B4208();
        *(v0 + 240) = sub_2224B41E8();
        *(v0 + 272) = v43;
        *(v0 + 280) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 248));
        (*(v42 + 32))(boxed_opaque_existential_1Tm, v41, v43);
        *(v0 + 288) = 7;
        sub_222485F68();
        swift_willThrowTypedImpl();

        MEMORY[0x223DB7AD0](v49);
        sub_2224A670C(v0 + 352);
        v53 = *(v0 + 256);
        v52 = *(v0 + 272);
        v54 = *(v0 + 240);
        *(v48 + 48) = *(v0 + 288);
        *(v48 + 16) = v53;
        *(v48 + 32) = v52;
        *v48 = v54;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 400));
        (*(v44 + 8))(v70, v69);
        (*(v71 + 8))(v76, v73);
        v55 = *(v0 + 720);
        v56 = *(v0 + 712);
        v57 = *(v0 + 704);
        v58 = *(v0 + 680);
        v59 = *(v0 + 656);
        v60 = *(v0 + 632);
        v61 = *(v0 + 608);
        v62 = *(v0 + 584);
        v63 = *(v0 + 560);
        sub_2224A6760("Upsert", 6, 2);

        v64 = *(v0 + 8);

        return v64();
      }

      else
      {
        v65 = *v37;
        v66 = swift_task_alloc();
        *(v0 + 784) = v66;
        *v66 = v0;
        v66[1] = sub_22249193C;
        v67 = *(v0 + 608);

        return sub_22249B4D8(v67, v0 + 296);
      }
    }
  }

  return result;
}

uint64_t sub_22249226C()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[77];
  sub_2224A670C((v0 + 44));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 50);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[90];
  v8 = v0[89];
  v9 = v0[88];
  v10 = v0[85];
  v11 = v0[82];
  v12 = v0[79];
  v13 = v0[76];
  v14 = v0[73];
  v15 = v0[70];
  sub_2224A6760("Upsert", 6, 2);

  v16 = v0[1];

  return v16();
}

uint64_t _s15OnDeviceStorage10ConnectionC6updateySi0abC4Core6UpdateVYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[41] = v2;
  v3[42] = a2;
  v3[40] = a1;
  v4 = sub_2224B41F8();
  v3[43] = v4;
  v5 = *(v4 - 8);
  v3[44] = v5;
  v6 = *(v5 + 64) + 15;
  v3[45] = swift_task_alloc();
  v7 = sub_2224B42F8();
  v3[46] = v7;
  v8 = *(v7 - 8);
  v3[47] = v8;
  v9 = *(v8 + 64) + 15;
  v3[48] = swift_task_alloc();
  v10 = sub_2224B4368();
  v3[49] = v10;
  v11 = *(v10 - 8);
  v3[50] = v11;
  v12 = *(v11 + 64) + 15;
  v3[51] = swift_task_alloc();
  v13 = sub_2224B46A8();
  v3[52] = v13;
  v14 = *(v13 - 8);
  v3[53] = v14;
  v15 = *(v14 + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2224925A8, v2, 0);
}

uint64_t sub_2224925A8()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = v0[55];
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = v0[55];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "Update", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = v0[54];
  v9 = v0[55];
  v10 = v0[52];
  v11 = v0[53];
  v12 = v0[51];
  v13 = v0[41];

  (*(v11 + 16))(v8, v9, v10);
  v14 = sub_2224B4718();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[56] = sub_2224B4708();
  (*(v11 + 8))(v9, v10);
  sub_2224903A4(0x5F28657461647075, 0xEA0000000000293ALL, v0 + 9, v12);
  v17 = v0[51];
  v18 = v0[40];
  sub_2224B45A8();
  v20 = v0[40];
  v19 = v0[41];
  (*(v0[50] + 8))(v0[51], v0[49]);
  sub_2224A7124(v19 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 30));
  v21 = __swift_project_boxed_opaque_existential_1(v0 + 30, v0[33]);
  v22 = sub_2224B45B8();
  v0[38] = v22;
  v0[39] = sub_2224A76C8(&qword_27D00E388, MEMORY[0x277D37900]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 35);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1Tm, v20, v22);
  sub_222487F1C(0x5F28657461647075, 0xEA0000000000293ALL, v0 + 16);
  v24 = v0[48];
  v25 = (v0[41] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v26 = *v25;
  v27 = v25[1];

  sub_2224B4238();
  v28 = *v21;
  v29 = swift_task_alloc();
  v0[57] = v29;
  *v29 = v0;
  v29[1] = sub_222492B00;
  v30 = v0[48];

  return sub_22249C420(v30, (v0 + 23));
}

uint64_t sub_222492B00(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 456);
  v7 = *(*v2 + 376);
  v8 = *v2;

  v9 = (v7 + 8);
  v10 = *(v4 + 384);
  v11 = *(v4 + 368);
  if (v1)
  {
    v12 = *(v5 + 328);
    v13 = *(v5 + 336);
    (*v9)(v10, v11);
    v14 = *(v5 + 184);
    v15 = *(v5 + 200);
    v16 = *(v5 + 216);
    *(v13 + 48) = *(v5 + 232);
    *(v13 + 16) = v15;
    *(v13 + 32) = v16;
    *v13 = v14;
    v17 = sub_222492D80;
  }

  else
  {
    v12 = *(v5 + 328);
    *(v5 + 464) = a1;
    (*v9)(v10, v11);
    v17 = sub_222492CAC;
  }

  return MEMORY[0x2822009F8](v17, v12, 0);
}

uint64_t sub_222492CAC()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[54];
  v4 = v0[51];
  v5 = v0[48];
  v6 = v0[45];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  sub_2224A6760("Update", 6, 2);

  v7 = v0[1];
  v8 = v0[58];

  return v7(v8);
}

uint64_t sub_222492D80()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[54];
  v4 = v0[51];
  v5 = v0[48];
  v6 = v0[45];
  sub_2224A6760("Update", 6, 2);

  v7 = v0[1];

  return v7();
}

uint64_t _s15OnDeviceStorage10ConnectionC6deleteySi0abC4Core6DeleteVYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[27] = v2;
  v3[28] = a2;
  v3[26] = a1;
  v4 = sub_2224B4258();
  v3[29] = v4;
  v5 = *(v4 - 8);
  v3[30] = v5;
  v6 = *(v5 + 64) + 15;
  v3[31] = swift_task_alloc();
  v7 = sub_2224B46A8();
  v3[32] = v7;
  v8 = *(v7 - 8);
  v3[33] = v8;
  v9 = *(v8 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222492F7C, v2, 0);
}

uint64_t sub_222492F7C()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = v0[35];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "Delete", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = v0[34];
  v9 = v0[35];
  v10 = v0[32];
  v11 = v0[33];
  v13 = v0[26];
  v12 = v0[27];

  (*(v11 + 16))(v8, v9, v10);
  v14 = sub_2224B4718();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[36] = sub_2224B4708();
  (*(v11 + 8))(v9, v10);
  sub_2224A7124(v12 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 16));
  v17 = __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  v18 = sub_2224B4528();
  v0[24] = v18;
  v0[25] = sub_2224A76C8(qword_27D00E390, MEMORY[0x277D378D0]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v0 + 21);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1Tm, v13, v18);
  sub_222487F1C(0x5F286574656C6564, 0xEA0000000000293ALL, v0 + 2);
  v20 = v0[31];
  v21 = (v0[27] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v22 = *v21;
  v23 = v21[1];

  sub_2224B4238();
  v24 = *v17;
  v25 = swift_task_alloc();
  v0[37] = v25;
  *v25 = v0;
  v25[1] = sub_22249334C;
  v26 = v0[31];

  return sub_22249CF8C(v26, (v0 + 9));
}

uint64_t sub_22249334C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 296);
  v7 = *(*v2 + 240);
  v8 = *v2;

  v9 = (v7 + 8);
  v10 = *(v4 + 248);
  v11 = *(v4 + 232);
  if (v1)
  {
    v12 = *(v5 + 216);
    v13 = *(v5 + 224);
    (*v9)(v10, v11);
    v14 = *(v5 + 72);
    v15 = *(v5 + 88);
    v16 = *(v5 + 104);
    *(v13 + 48) = *(v5 + 120);
    *(v13 + 16) = v15;
    *(v13 + 32) = v16;
    *v13 = v14;
    v17 = sub_2224935AC;
  }

  else
  {
    v12 = *(v5 + 216);
    *(v5 + 304) = a1;
    (*v9)(v10, v11);
    v17 = sub_2224934F8;
  }

  return MEMORY[0x2822009F8](v17, v12, 0);
}

uint64_t sub_2224934F8()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[31];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_2224A6760("Delete", 6, 2);

  v5 = v0[1];
  v6 = v0[38];

  return v5(v6);
}

uint64_t sub_2224935AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[31];
  sub_2224A6760("Delete", 6, 2);

  v5 = v0[1];

  return v5();
}

uint64_t _s15OnDeviceStorage10ConnectionC19triggerDataDeletionySiSSYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = v3;
  v4[24] = a3;
  v4[21] = a1;
  v4[22] = a2;
  v5 = sub_2224B44F8();
  v4[25] = v5;
  v6 = *(v5 - 8);
  v4[26] = v6;
  v7 = *(v6 + 64) + 15;
  v4[27] = swift_task_alloc();
  v8 = sub_2224B46A8();
  v4[28] = v8;
  v9 = *(v8 - 8);
  v4[29] = v9;
  v10 = *(v9 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222493788, v3, 0);
}

uint64_t sub_222493788()
{
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = sub_2224B46D8();
  __swift_project_value_buffer(v2, qword_28130A6E0);
  sub_2224B4698();
  v3 = sub_2224B46B8();
  v4 = sub_2224B4938();
  if (sub_2224B4948())
  {
    v5 = v0[31];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v3, v4, v7, "TriggerDataDeletion", "", v6, 2u);
    MEMORY[0x223DB7C20](v6, -1, -1);
  }

  v8 = v0[30];
  v9 = v0[31];
  v10 = v0[28];
  v11 = v0[29];
  v12 = v0[23];

  (*(v11 + 16))(v8, v9, v10);
  v13 = sub_2224B4718();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[32] = sub_2224B4708();
  (*(v11 + 8))(v9, v10);
  sub_2224A7124(v12 + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 16));
  v16 = __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  sub_222487F1C(0xD000000000000017, 0x80000002224B5C30, v0 + 2);
  v17 = v0[27];
  v18 = v0[22];
  v19 = v0[21];
  v20 = (v0[23] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v21 = *v20;
  v22 = v20[1];

  sub_2224B44E8();
  v23 = *v16;
  v24 = swift_task_alloc();
  v0[33] = v24;
  *v24 = v0;
  v24[1] = sub_222493AEC;
  v25 = v0[27];

  return sub_22249D9D0(v25, (v0 + 9));
}

uint64_t sub_222493AEC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 264);
  v7 = *(*v2 + 208);
  v8 = *v2;

  v9 = (v7 + 8);
  v10 = *(v4 + 216);
  v11 = *(v4 + 200);
  if (v1)
  {
    v12 = *(v5 + 184);
    v13 = *(v5 + 192);
    (*v9)(v10, v11);
    v14 = *(v5 + 72);
    v15 = *(v5 + 88);
    v16 = *(v5 + 104);
    *(v13 + 48) = *(v5 + 120);
    *(v13 + 16) = v15;
    *(v13 + 32) = v16;
    *v13 = v14;
    v17 = sub_222493D4C;
  }

  else
  {
    v12 = *(v5 + 184);
    *(v5 + 272) = a1;
    (*v9)(v10, v11);
    v17 = sub_222493C98;
  }

  return MEMORY[0x2822009F8](v17, v12, 0);
}

uint64_t sub_222493C98()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[27];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_2224A6760("TriggerDataDeletion", 19, 2);

  v5 = v0[1];
  v6 = v0[34];

  return v5(v6);
}

uint64_t sub_222493D4C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[27];
  sub_2224A6760("TriggerDataDeletion", 19, 2);

  v5 = v0[1];

  return v5();
}

uint64_t _s15OnDeviceStorage10ConnectionC6statusySDyS2SG0abC4Core13StatusCommandOYaAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[22] = v2;
  v3[23] = a2;
  v3[21] = a1;
  v4 = sub_2224B42C8();
  v3[24] = v4;
  v5 = *(v4 - 8);
  v3[25] = v5;
  v6 = *(v5 + 64) + 15;
  v3[26] = swift_task_alloc();
  v7 = sub_2224B42E8();
  v3[27] = v7;
  v8 = *(v7 - 8);
  v3[28] = v8;
  v9 = *(v8 + 64) + 15;
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222493F1C, v2, 0);
}

uint64_t sub_222493F1C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  sub_2224A7124(v0[22] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession, (v0 + 16));
  v5 = __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  (*(v2 + 16))(v1, v4, v3);
  sub_222487F1C(0x5F28737574617473, 0xEA0000000000293ALL, v0 + 2);
  v6 = v0[29];
  v7 = v0[26];
  sub_2224B42D8();
  v8 = *v5;
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = sub_222494104;
  v10 = v0[29];

  return sub_22249EBD8(v10, (v0 + 9));
}

uint64_t sub_222494104(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 240);
  v7 = *(*v2 + 224);
  v8 = *v2;

  v9 = (v7 + 8);
  v10 = *(v4 + 232);
  v11 = *(v4 + 216);
  if (v1)
  {
    v12 = *(v5 + 176);
    v13 = *(v5 + 184);
    (*v9)(v10, v11);
    v14 = *(v5 + 72);
    v15 = *(v5 + 88);
    v16 = *(v5 + 104);
    *(v13 + 48) = *(v5 + 120);
    *(v13 + 16) = v15;
    *(v13 + 32) = v16;
    *v13 = v14;
    v17 = sub_222494330;
  }

  else
  {
    v12 = *(v5 + 176);
    *(v5 + 248) = a1;
    (*v9)(v10, v11);
    v17 = sub_2224942B0;
  }

  return MEMORY[0x2822009F8](v17, v12, 0);
}

uint64_t sub_2224942B0()
{
  v1 = v0[29];
  v2 = v0[26];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v3 = v0[1];
  v4 = v0[31];

  return v3(v4);
}

uint64_t sub_222494330()
{
  v1 = v0[29];
  v2 = v0[26];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2224943AC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_2224AF74C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_2224B4508();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2224944E4(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = sub_2224B41F8();
  v2[51] = v3;
  v4 = *(v3 - 8);
  v2[52] = v4;
  v5 = *(v4 + 64) + 15;
  v2[53] = swift_task_alloc();
  v6 = sub_2224B42A8();
  v2[54] = v6;
  v7 = *(v6 - 8);
  v2[55] = v7;
  v8 = *(v7 + 64) + 15;
  v2[56] = swift_task_alloc();
  v9 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v10 = sub_2224B4368();
  v2[58] = v10;
  v11 = *(v10 - 8);
  v2[59] = v11;
  v12 = *(v11 + 64) + 15;
  v2[60] = swift_task_alloc();
  v13 = sub_2224B46A8();
  v2[61] = v13;
  v14 = *(v13 - 8);
  v2[62] = v14;
  v15 = *(v14 + 64) + 15;
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2224946F0, v1, 0);
}

uint64_t sub_2224946F0()
{
  if ((*(*(v0 + 400) + 184) & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 520) = Strong) == 0))
  {
    **(v0 + 392) = 0;
    v13 = *(v0 + 504);
    v12 = *(v0 + 512);
    v14 = *(v0 + 480);
    v16 = *(v0 + 448);
    v15 = *(v0 + 456);
    v17 = *(v0 + 424);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v2 = Strong;
    if (qword_28130A6D8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 512);
    v4 = *(v0 + 400);
    v5 = sub_2224B46D8();
    __swift_project_value_buffer(v5, qword_28130A6E0);

    sub_2224B4698();
    v6 = sub_2224B46B8();
    v7 = sub_2224B4938();
    if (sub_2224B4948())
    {
      v8 = *(v0 + 512);
      v9 = *(v0 + 400);
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(v9 + 176);

      v11 = sub_2224B4688();
      _os_signpost_emit_with_name_impl(&dword_222484000, v6, v7, v11, "PaginatedSelect.next", "batchIndex=%ld", v10, 0xCu);
      MEMORY[0x223DB7C20](v10, -1, -1);
    }

    else
    {
      v20 = *(v0 + 400);
    }

    v21 = *(v0 + 512);
    v22 = *(v0 + 488);
    v23 = *(v0 + 496);
    v24 = *(v0 + 400);
    (*(v23 + 16))(*(v0 + 504), v21, v22);
    v25 = sub_2224B4718();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    *(v0 + 528) = sub_2224B4708();
    (*(v23 + 8))(v21, v22);
    if (*(v24 + 200) == 1)
    {
      v28 = *(v0 + 400);
      if (*(v28 + 160) == 1)
      {

        return MEMORY[0x2822009F8](sub_222494BC4, v2, 0);
      }

      v29 = *(v28 + 152);
      *(v28 + 192) = v29;
      *(v28 + 200) = 0;
    }

    else
    {
      v29 = *(v24 + 192);
    }

    *(v0 + 536) = v29;
    if (qword_28130A5F8 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 456);
    v31 = sub_2224B4628();
    *(v0 + 544) = v31;
    *(v0 + 552) = __swift_project_value_buffer(v31, qword_28130A600);
    *(v0 + 560) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v32 = *(sub_2224B4148() - 8);
    *(v0 + 568) = *(v32 + 72);
    *(v0 + 68) = *(v32 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 320) = MEMORY[0x277D83B88];
    *(v0 + 296) = v29;
    sub_2224B40F8();
    sub_2224A7878(v0 + 296, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4568();

    v33 = swift_task_alloc();
    *(v0 + 576) = v33;
    *v33 = v0;
    v33[1] = sub_222494F14;
    v34 = *(v0 + 520);
    v35 = *(v0 + 448);
    v36 = *(v0 + 400);

    return sub_222495A2C(v35, v36, v29, v34);
  }
}

uint64_t sub_222494BC4()
{
  v1 = v0[65];
  sub_2224903A4(0x29287478656ELL, 0xE600000000000000, v0 + 30, v0[60]);
  v2 = v0[50];

  return MEMORY[0x2822009F8](sub_222494C64, v2, 0);
}

uint64_t sub_222494C64()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 400);
  v5 = v4[18];
  __swift_project_boxed_opaque_existential_1(v4 + 14, v4[17]);
  v6 = sub_2224B41B8();
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 400);
  *(v7 + 192) = v6;
  *(v7 + 200) = 0;
  *(v0 + 536) = v6;
  if (qword_28130A5F8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 456);
  v9 = sub_2224B4628();
  *(v0 + 544) = v9;
  *(v0 + 552) = __swift_project_value_buffer(v9, qword_28130A600);
  *(v0 + 560) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v10 = *(sub_2224B4148() - 8);
  *(v0 + 568) = *(v10 + 72);
  *(v0 + 68) = *(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  *(v0 + 320) = MEMORY[0x277D83B88];
  *(v0 + 296) = v6;
  sub_2224B40F8();
  sub_2224A7878(v0 + 296, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  v11 = swift_task_alloc();
  *(v0 + 576) = v11;
  *v11 = v0;
  v11[1] = sub_222494F14;
  v12 = *(v0 + 520);
  v13 = *(v0 + 448);
  v14 = *(v0 + 400);

  return sub_222495A2C(v13, v14, v6, v12);
}

uint64_t sub_222494F14()
{
  v2 = *(*v1 + 576);
  v5 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = sub_222495240;
  }

  else
  {
    v3 = sub_222495028;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222495044()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[65] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession), *(v0[65] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_daemonSession + 24));
  v2 = swift_task_alloc();
  v0[74] = v2;
  *v2 = v0;
  v2[1] = sub_22249510C;
  v3 = v0[56];

  return sub_222498770(v3, (v0 + 23));
}

uint64_t sub_22249510C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 592);
  v11 = *v2;
  *(*v2 + 600) = a1;

  v5 = *(v3 + 400);
  if (v1)
  {
    v6 = *(v3 + 200);
    v7 = *(v3 + 216);
    v8 = *(v3 + 184);
    *(v3 + 64) = *(v3 + 232);
    *(v3 + 32) = v6;
    *(v3 + 48) = v7;
    *(v3 + 16) = v8;
    v9 = sub_2224954BC;
  }

  else
  {
    v9 = sub_222495620;
  }

  return MEMORY[0x2822009F8](v9, v5, 0);
}

uint64_t sub_222495240()
{
  v1 = *(v0 + 584);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 400);
  v5 = *(v0 + 408);
  MEMORY[0x223DB7AE0](v1);
  sub_2224B4208();
  *(v0 + 72) = sub_2224B41E8();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 80));
  (*(v3 + 32))(boxed_opaque_existential_1Tm, v2, v5);
  *(v0 + 120) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  MEMORY[0x223DB7AD0](v1);

  return MEMORY[0x2822009F8](sub_222495360, v4, 0);
}

uint64_t sub_222495360()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  *(v0 + 16) = v1;
  *(v0 + 32) = v2;
  v3 = *(v0 + 104);
  *(v0 + 48) = v3;
  v4 = *(v0 + 120);
  *(v0 + 64) = v4;
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 504);
  v8 = *(v0 + 512);
  v9 = *(v0 + 480);
  v10 = *(v0 + 448);
  v11 = *(v0 + 456);
  v16 = *(v0 + 424);
  v12 = *(v0 + 400);
  *(v0 + 176) = v4;
  *(v0 + 144) = v2;
  *(v0 + 160) = v3;
  *(v0 + 128) = v1;
  *(v12 + 184) = 1;
  sub_222485F68();
  swift_allocError();
  sub_2224A6F34(v0 + 128, v13);
  swift_willThrow();
  sub_2224A6F90(v0 + 128);
  sub_2224A6760("PaginatedSelect.next", 20, 2);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2224954BC()
{
  (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 480);
  v6 = *(v0 + 448);
  v7 = *(v0 + 456);
  v13 = *(v0 + 424);
  v8 = *(v0 + 400);
  v9 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v9;
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = *(v0 + 64);
  *(v8 + 184) = 1;
  sub_222485F68();
  swift_allocError();
  sub_2224A6F34(v0 + 128, v10);
  swift_willThrow();
  sub_2224A6F90(v0 + 128);
  sub_2224A6760("PaginatedSelect.next", 20, 2);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_222495620()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v35 = *(v0 + 544);
  v36 = *(v0 + 552);
  v4 = *(v0 + 456);
  v5 = *(v0 + 400);
  v6 = (*(v0 + 68) + 32) & ~*(v0 + 68);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  v7 = *(v1 + 16);
  v8 = MEMORY[0x277D83B88];
  *(v0 + 352) = MEMORY[0x277D83B88];
  *(v0 + 328) = v7;
  sub_2224B40F8();
  sub_2224A7878(v0 + 328, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  v9 = *(v5 + 176);
  *(v0 + 384) = v8;
  *(v0 + 360) = v9;
  sub_2224B40F8();
  sub_2224A7878(v0 + 360, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4568();

  if (*(v1 + 16))
  {
    v10 = *(v0 + 536);
    v12 = *(v0 + 440);
    v11 = *(v0 + 448);
    v13 = *(v0 + 432);
    v14 = sub_2224B4298();
    result = (*(v12 + 8))(v11, v13);
    if ((v14 & 1) != 0 || v7 < v10)
    {
      *(*(v0 + 400) + 184) = 1;
    }

    v16 = *(v5 + 176);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      __break(1u);
      return result;
    }

    v19 = *(v0 + 600);
    v20 = *(v0 + 528);
    v21 = *(v0 + 520);
    v22 = *(v0 + 392);
    *(v5 + 176) = v18;
    *v22 = v19;
  }

  else
  {
    v23 = *(v0 + 600);
    v24 = *(v0 + 528);
    v25 = *(v0 + 520);
    v27 = *(v0 + 392);
    v26 = *(v0 + 400);
    (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
    *(v26 + 184) = 1;

    *v27 = 0;
  }

  sub_2224A6760("PaginatedSelect.next", 20, 2);

  v29 = *(v0 + 504);
  v28 = *(v0 + 512);
  v30 = *(v0 + 480);
  v32 = *(v0 + 448);
  v31 = *(v0 + 456);
  v33 = *(v0 + 424);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2224958D4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 256);
  *(v0 + 16) = v1;
  *(v0 + 32) = v2;
  v3 = *(v0 + 272);
  *(v0 + 48) = v3;
  v4 = *(v0 + 288);
  *(v0 + 64) = v4;
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 504);
  v8 = *(v0 + 512);
  v9 = *(v0 + 480);
  v10 = *(v0 + 448);
  v11 = *(v0 + 456);
  v16 = *(v0 + 424);
  v12 = *(v0 + 400);
  *(v0 + 176) = v4;
  *(v0 + 144) = v2;
  *(v0 + 160) = v3;
  *(v0 + 128) = v1;
  *(v12 + 184) = 1;
  sub_222485F68();
  swift_allocError();
  sub_2224A6F34(v0 + 128, v13);
  swift_willThrow();
  sub_2224A6F90(v0 + 128);
  sub_2224A6760("PaginatedSelect.next", 20, 2);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_222495A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_2224B4198();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222495AF0, 0, 0);
}

uint64_t sub_222495AF0()
{
  v1 = *(v0 + 120);
  sub_2224A7124(v1 + 112, v0 + 72);

  return MEMORY[0x2822009F8](sub_222495B60, v1, 0);
}

uint64_t sub_222495B60()
{
  v1 = v0[17];
  v0[21] = *(v0[15] + 176);
  return MEMORY[0x2822009F8](sub_222495B88, v1, 0);
}

uint64_t sub_222495B88()
{
  v1 = v0[17];
  v2 = sub_222487F1C(0x29287478656ELL, 0xE600000000000000, v0 + 2);
  v0[22] = 0;
  v0[23] = v3;
  v0[24] = v2;

  return MEMORY[0x2822009F8](sub_222495C34, 0, 0);
}

uint64_t sub_222495C34()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v6 = v0[16];
  v7 = v0[14];
  v8 = (v0[17] + OBJC_IVAR____TtC15OnDeviceStorage10Connection_userId);
  v9 = *v8;
  v10 = v8[1];

  sub_2224B42B8();
  v11 = v0[20];
  if (v3)
  {
    v12 = v0[18];
    v13 = v0[19];
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    swift_allocError();
    (*(v13 + 32))(v14, v11, v12);
  }

  v15 = v0[20];

  v16 = v0[1];

  return v16();
}

uint64_t sub_222495D98()
{
  sub_222485F68();
  swift_allocError();
  v2 = *(v0 + 32);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  *(v4 + 48) = *(v0 + 64);
  *(v4 + 16) = v2;
  *(v4 + 32) = v1;
  *v4 = v3;
  v5 = *(v0 + 160);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_222495E30()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_222495E70(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222495F0C;

  return sub_2224944E4(a1);
}

uint64_t sub_222495F0C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_222496000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[12] = a4;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_2224B4898();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[13] = v6;
  v5[14] = v8;

  return MEMORY[0x2822009F8](sub_222496098, v6, v8);
}

uint64_t sub_222496098()
{
  v1 = **(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_222496134;
  v3 = *(v0 + 80);

  return sub_2224944E4(v3);
}

uint64_t sub_222496134()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_222496288;
  }

  else
  {
    v7 = sub_222496270;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_222496288()
{
  v1 = *(v0 + 96);
  *(v0 + 72) = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E428, &qword_2224B5510);
  swift_dynamicCast();
  sub_222485F68();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *v1 = v2;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2224963C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[17] = a3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E568, &qword_2224B5608);
  v4[19] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v7 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = sub_2224B41F8();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v11 = sub_2224B4198();
  v4[26] = v11;
  v12 = *(v11 - 8);
  v4[27] = v12;
  v13 = *(v12 + 64) + 15;
  v4[28] = swift_task_alloc();
  v14 = sub_2224B46A8();
  v4[29] = v14;
  v15 = *(v14 - 8);
  v4[30] = v15;
  v16 = *(v15 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v17 = sub_2224B43B8();
  v4[33] = v17;
  v18 = *(v17 - 8);
  v4[34] = v18;
  v19 = *(v18 + 64) + 15;
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222496640, v3, 0);
}

uint64_t sub_222496640()
{
  v66 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 120);
  v6 = sub_2224B46D8();
  __swift_project_value_buffer(v6, qword_28130A5A0);
  v63 = *(v2 + 16);
  v63(v1, v5, v3);
  sub_2224B4698();
  v7 = sub_2224B46B8();
  v8 = sub_2224B4938();
  v9 = sub_2224B4948();
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v12 = *(v0 + 264);
  if (v9)
  {
    v62 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315138;
    sub_2224A76C8(&qword_28130A480, MEMORY[0x277D37860]);
    v15 = sub_2224B4A78();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_2224A5AE8(v15, v17, &v65);

    *(v13 + 4) = v18;
    v19 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v7, v8, v19, "send", "request=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DB7C20](v14, -1, -1);
    MEMORY[0x223DB7C20](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 232);
  v23 = *(v0 + 120);
  (*(v21 + 16))(*(v0 + 248), v20, v22);
  v24 = sub_2224B4718();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_2224B4708();
  (*(v21 + 8))(v20, v22);
  sub_2224A76C8(&qword_28130A478, MEMORY[0x277D37860]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 264);
    v49 = *(v0 + 176);
    v50 = *(v0 + 144);
    v52 = *(v0 + 120);
    v51 = *(v0 + 128);
    v53 = sub_2224B4628();
    *(v0 + 296) = v53;
    *(v0 + 304) = __swift_project_value_buffer(v53, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v54 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v54 + 72);
    *(v0 + 352) = *(v54 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v48;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v63(boxed_opaque_existential_1Tm, v52, v48);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v56 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation);
    v57 = swift_task_alloc();
    *(v0 + 328) = v57;
    v57[2] = v51;
    v57[3] = v52;
    v57[4] = v50;
    v58 = *(MEMORY[0x277D85A40] + 4);
    v59 = swift_task_alloc();
    *(v0 + 336) = v59;
    *v59 = v0;
    v59[1] = sub_222496E04;
    v61 = *(v0 + 152);
    v60 = *(v0 + 160);

    return MEMORY[0x2822008A0](v60, v51, v56, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A7654, v57, v61);
  }

  else
  {
    v27 = *(v0 + 264);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 192);
    v64 = *(v0 + 184);
    v33 = *(v0 + 136);
    v34 = *(v0 + 120);
    *v28 = sub_2224B41C8();
    v28[1] = 10485760;
    (*(v29 + 104))(v28, *MEMORY[0x277D37760], v30);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v35 = swift_allocError();
    (*(v29 + 16))(v36, v28, v30);
    MEMORY[0x223DB7AE0](v35);
    sub_2224B4208();
    *v33 = sub_2224B41E8();
    *(v33 + 32) = v64;
    *(v33 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v37 = __swift_allocate_boxed_opaque_existential_1Tm((v33 + 8));
    (*(v32 + 32))(v37, v31, v64);
    MEMORY[0x223DB7AD0](v35);
    (*(v29 + 8))(v28, v30);
    *(v33 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2);

    v38 = *(v0 + 280);
    v39 = *(v0 + 248);
    v40 = *(v0 + 256);
    v41 = *(v0 + 224);
    v42 = *(v0 + 200);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);
    v45 = *(v0 + 160);

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_222496E04()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_2224972D0;
  }

  else
  {
    v6 = *(v2 + 328);
    v7 = *(v2 + 128);

    v5 = sub_222496F2C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_222496F2C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);
  sub_2224A7660(*(v0 + 160), *(v0 + 168), &qword_27D00E568, &qword_2224B5608);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(*(v0 + 168), &qword_27D00E568, &qword_2224B5608);
    v4 = *(v0 + 312);
    v5 = *(v0 + 320);
    v33 = *(v0 + 296);
    v34 = *(v0 + 304);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 176);
    v35 = *(v0 + 184);
    v36 = *(v0 + 288);
    v9 = *(v0 + 136);
    v10 = (*(v0 + 352) + 32) & ~*(v0 + 352);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    *(v0 + 72) = v12;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 48));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v11, v12);
    sub_2224B40F8();
    sub_2224A7878(v0 + 48, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v9 = sub_2224B41E8();
    *(v9 + 32) = v35;
    *(v9 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v14 = __swift_allocate_boxed_opaque_existential_1Tm((v9 + 8));
    (*(v7 + 32))(v14, v6, v35);
    *(v9 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2);

    v15 = *(v0 + 280);
    v16 = *(v0 + 248);
    v17 = *(v0 + 256);
    v18 = *(v0 + 224);
    v19 = *(v0 + 200);
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v22 = *(v0 + 160);
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 288);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    v28 = *(v0 + 224);
    v29 = *(v0 + 200);
    v30 = *(v0 + 176);
    v31 = *(v0 + 160);
    sub_2224A7878(*(v0 + 168), &qword_27D00E568, &qword_2224B5608);
    sub_2224A8390("send", 4, 2);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2224972D0()
{
  v1 = *(v0 + 328);

  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v24 = *(v0 + 296);
  v25 = *(v0 + 304);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 176);
  v26 = *(v0 + 184);
  v27 = *(v0 + 288);
  v8 = *(v0 + 136);
  v9 = (*(v0 + 352) + 32) & ~*(v0 + 352);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  *(v0 + 72) = v11;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 48));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v10, v11);
  sub_2224B40F8();
  sub_2224A7878(v0 + 48, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  MEMORY[0x223DB7AE0](v2);
  sub_2224B4208();
  *v8 = sub_2224B41E8();
  *(v8 + 32) = v26;
  *(v8 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
  v13 = __swift_allocate_boxed_opaque_existential_1Tm((v8 + 8));
  (*(v6 + 32))(v13, v5, v26);
  *(v8 + 48) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  MEMORY[0x223DB7AD0](v2);
  sub_2224A8390("send", 4, 2);

  v14 = *(v0 + 280);
  v15 = *(v0 + 248);
  v16 = *(v0 + 256);
  v17 = *(v0 + 224);
  v18 = *(v0 + 200);
  v20 = *(v0 + 168);
  v19 = *(v0 + 176);
  v21 = *(v0 + 160);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_222497590(uint64_t a1, uint64_t a2)
{
  v3[15] = v2;
  v3[16] = a2;
  v3[14] = a1;
  v3[17] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E550, &qword_2224B55F0);
  v3[18] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v7 = sub_2224B41F8();
  v3[22] = v7;
  v8 = *(v7 - 8);
  v3[23] = v8;
  v9 = *(v8 + 64) + 15;
  v3[24] = swift_task_alloc();
  v10 = sub_2224B4198();
  v3[25] = v10;
  v11 = *(v10 - 8);
  v3[26] = v11;
  v12 = *(v11 + 64) + 15;
  v3[27] = swift_task_alloc();
  v13 = sub_2224B46A8();
  v3[28] = v13;
  v14 = *(v13 - 8);
  v3[29] = v14;
  v15 = *(v14 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v16 = sub_2224B44C8();
  v3[32] = v16;
  v17 = *(v16 - 8);
  v3[33] = v17;
  v18 = *(v17 + 64) + 15;
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222497810, v2, 0);
}

uint64_t sub_222497810()
{
  v66 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 112);
  v6 = sub_2224B46D8();
  __swift_project_value_buffer(v6, qword_28130A5A0);
  v63 = *(v2 + 16);
  v63(v1, v5, v3);
  sub_2224B4698();
  v7 = sub_2224B46B8();
  v8 = sub_2224B4938();
  v9 = sub_2224B4948();
  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v12 = *(v0 + 256);
  if (v9)
  {
    v62 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315138;
    sub_2224A76C8(&qword_28130A470, MEMORY[0x277D37890]);
    v15 = sub_2224B4A78();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_2224A5AE8(v15, v17, &v65);

    *(v13 + 4) = v18;
    v19 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v7, v8, v19, "send", "request=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DB7C20](v14, -1, -1);
    MEMORY[0x223DB7C20](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = *(v0 + 248);
  v21 = *(v0 + 232);
  v22 = *(v0 + 224);
  v23 = *(v0 + 112);
  (*(v21 + 16))(*(v0 + 240), v20, v22);
  v24 = sub_2224B4718();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 280) = sub_2224B4708();
  (*(v21 + 8))(v20, v22);
  sub_2224A76C8(&qword_28130A468, MEMORY[0x277D37890]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 256);
    v49 = *(v0 + 168);
    v50 = *(v0 + 136);
    v52 = *(v0 + 112);
    v51 = *(v0 + 120);
    v53 = sub_2224B4628();
    *(v0 + 288) = v53;
    *(v0 + 296) = __swift_project_value_buffer(v53, qword_28130A580);
    *(v0 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v54 = *(sub_2224B4148() - 8);
    *(v0 + 312) = *(v54 + 72);
    *(v0 + 344) = *(v54 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v48;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v63(boxed_opaque_existential_1Tm, v52, v48);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v56 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation);
    v57 = swift_task_alloc();
    *(v0 + 320) = v57;
    v57[2] = v51;
    v57[3] = v52;
    v57[4] = v50;
    v58 = *(MEMORY[0x277D85A40] + 4);
    v59 = swift_task_alloc();
    *(v0 + 328) = v59;
    *v59 = v0;
    v59[1] = sub_222497FD8;
    v61 = *(v0 + 144);
    v60 = *(v0 + 152);

    return MEMORY[0x2822008A0](v60, v51, v56, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A7620, v57, v61);
  }

  else
  {
    v27 = *(v0 + 256);
    v29 = *(v0 + 208);
    v28 = *(v0 + 216);
    v31 = *(v0 + 192);
    v30 = *(v0 + 200);
    v32 = *(v0 + 184);
    v64 = *(v0 + 176);
    v33 = *(v0 + 128);
    v34 = *(v0 + 112);
    *v28 = sub_2224B41C8();
    v28[1] = 10485760;
    (*(v29 + 104))(v28, *MEMORY[0x277D37760], v30);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v35 = swift_allocError();
    (*(v29 + 16))(v36, v28, v30);
    MEMORY[0x223DB7AE0](v35);
    sub_2224B4208();
    *v33 = sub_2224B41E8();
    *(v33 + 32) = v64;
    *(v33 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v37 = __swift_allocate_boxed_opaque_existential_1Tm((v33 + 8));
    (*(v32 + 32))(v37, v31, v64);
    MEMORY[0x223DB7AD0](v35);
    (*(v29 + 8))(v28, v30);
    *(v33 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2);

    v38 = *(v0 + 272);
    v39 = *(v0 + 240);
    v40 = *(v0 + 248);
    v41 = *(v0 + 216);
    v42 = *(v0 + 192);
    v44 = *(v0 + 160);
    v43 = *(v0 + 168);
    v45 = *(v0 + 152);

    v46 = *(v0 + 8);

    return v46(0);
  }
}

uint64_t sub_222497FD8()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v9 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_2224984AC;
  }

  else
  {
    v6 = *(v2 + 320);
    v7 = *(v2 + 120);

    v5 = sub_222498100;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_222498100()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 144);
  sub_2224A7660(*(v0 + 152), *(v0 + 160), &qword_27D00E550, &qword_2224B55F0);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(*(v0 + 160), &qword_27D00E550, &qword_2224B55F0);
    v3 = *(v0 + 304);
    v4 = *(v0 + 312);
    v34 = *(v0 + 288);
    v35 = *(v0 + 296);
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 168);
    v36 = *(v0 + 176);
    v37 = *(v0 + 280);
    v8 = *(v0 + 128);
    v9 = (*(v0 + 344) + 32) & ~*(v0 + 344);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    *(v0 + 72) = v11;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 48));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v10, v11);
    sub_2224B40F8();
    sub_2224A7878(v0 + 48, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v8 = sub_2224B41E8();
    *(v8 + 32) = v36;
    *(v8 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v13 = __swift_allocate_boxed_opaque_existential_1Tm((v8 + 8));
    (*(v6 + 32))(v13, v5, v36);
    *(v8 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2);

    v14 = *(v0 + 272);
    v15 = *(v0 + 240);
    v16 = *(v0 + 248);
    v17 = *(v0 + 216);
    v18 = *(v0 + 192);
    v20 = *(v0 + 160);
    v19 = *(v0 + 168);
    v21 = *(v0 + 152);

    v22 = *(v0 + 8);
    v23 = 0;
  }

  else
  {
    v24 = *(v0 + 272);
    v25 = *(v0 + 280);
    v27 = *(v0 + 240);
    v26 = *(v0 + 248);
    v28 = *(v0 + 216);
    v29 = *(v0 + 192);
    v30 = *(v0 + 168);
    v31 = *(v0 + 152);
    sub_2224A7878(*(v0 + 160), &qword_27D00E550, &qword_2224B55F0);
    sub_2224A8390("send", 4, 2);

    v32 = *(v0 + 348);

    v22 = *(v0 + 8);
    v23 = v32;
  }

  return v22(v23);
}

uint64_t sub_2224984AC()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 336);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v24 = *(v0 + 288);
  v25 = *(v0 + 296);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 168);
  v26 = *(v0 + 176);
  v27 = *(v0 + 280);
  v8 = *(v0 + 128);
  v9 = (*(v0 + 344) + 32) & ~*(v0 + 344);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  *(v0 + 72) = v11;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 48));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v10, v11);
  sub_2224B40F8();
  sub_2224A7878(v0 + 48, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  MEMORY[0x223DB7AE0](v2);
  sub_2224B4208();
  *v8 = sub_2224B41E8();
  *(v8 + 32) = v26;
  *(v8 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
  v13 = __swift_allocate_boxed_opaque_existential_1Tm((v8 + 8));
  (*(v6 + 32))(v13, v5, v26);
  *(v8 + 48) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  MEMORY[0x223DB7AD0](v2);
  sub_2224A8390("send", 4, 2);

  v14 = *(v0 + 272);
  v15 = *(v0 + 240);
  v16 = *(v0 + 248);
  v17 = *(v0 + 216);
  v18 = *(v0 + 192);
  v20 = *(v0 + 160);
  v19 = *(v0 + 168);
  v21 = *(v0 + 152);

  v22 = *(v0 + 8);

  return v22(0);
}

uint64_t sub_222498770(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v3[18] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E430, &qword_2224B5528);
  v3[19] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = sub_2224B41F8();
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();
  v10 = sub_2224B4198();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  v13 = sub_2224B46A8();
  v3[29] = v13;
  v14 = *(v13 - 8);
  v3[30] = v14;
  v15 = *(v14 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v16 = sub_2224B42A8();
  v3[33] = v16;
  v17 = *(v16 - 8);
  v3[34] = v17;
  v18 = *(v17 + 64) + 15;
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2224989F0, v2, 0);
}

uint64_t sub_2224989F0()
{
  v66 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 120);
  v6 = sub_2224B46D8();
  __swift_project_value_buffer(v6, qword_28130A5A0);
  v63 = *(v2 + 16);
  v63(v1, v5, v3);
  sub_2224B4698();
  v7 = sub_2224B46B8();
  v8 = sub_2224B4938();
  v9 = sub_2224B4948();
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v12 = *(v0 + 264);
  if (v9)
  {
    v62 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315138;
    sub_2224A76C8(&qword_28130A340, MEMORY[0x277D37800]);
    v15 = sub_2224B4A78();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_2224A5AE8(v15, v17, &v65);

    *(v13 + 4) = v18;
    v19 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v7, v8, v19, "send", "request=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DB7C20](v14, -1, -1);
    MEMORY[0x223DB7C20](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 232);
  v23 = *(v0 + 120);
  (*(v21 + 16))(*(v0 + 248), v20, v22);
  v24 = sub_2224B4718();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_2224B4708();
  (*(v21 + 8))(v20, v22);
  sub_2224A76C8(&qword_28130A338, MEMORY[0x277D37800]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 264);
    v49 = *(v0 + 176);
    v50 = *(v0 + 144);
    v52 = *(v0 + 120);
    v51 = *(v0 + 128);
    v53 = sub_2224B4628();
    *(v0 + 296) = v53;
    *(v0 + 304) = __swift_project_value_buffer(v53, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v54 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v54 + 72);
    *(v0 + 352) = *(v54 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v48;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v63(boxed_opaque_existential_1Tm, v52, v48);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v56 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation);
    v57 = swift_task_alloc();
    *(v0 + 328) = v57;
    v57[2] = v51;
    v57[3] = v52;
    v57[4] = v50;
    v58 = *(MEMORY[0x277D85A40] + 4);
    v59 = swift_task_alloc();
    *(v0 + 336) = v59;
    *v59 = v0;
    v59[1] = sub_2224991B4;
    v61 = *(v0 + 152);
    v60 = *(v0 + 160);

    return MEMORY[0x2822008A0](v60, v51, v56, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A6FE4, v57, v61);
  }

  else
  {
    v27 = *(v0 + 264);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 192);
    v64 = *(v0 + 184);
    v33 = *(v0 + 136);
    v34 = *(v0 + 120);
    *v28 = sub_2224B41C8();
    v28[1] = 10485760;
    (*(v29 + 104))(v28, *MEMORY[0x277D37760], v30);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v35 = swift_allocError();
    (*(v29 + 16))(v36, v28, v30);
    MEMORY[0x223DB7AE0](v35);
    sub_2224B4208();
    *v33 = sub_2224B41E8();
    *(v33 + 32) = v64;
    *(v33 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v37 = __swift_allocate_boxed_opaque_existential_1Tm((v33 + 8));
    (*(v32 + 32))(v37, v31, v64);
    MEMORY[0x223DB7AD0](v35);
    (*(v29 + 8))(v28, v30);
    *(v33 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2);

    v38 = *(v0 + 280);
    v39 = *(v0 + 248);
    v40 = *(v0 + 256);
    v41 = *(v0 + 224);
    v42 = *(v0 + 200);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);
    v45 = *(v0 + 160);

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_2224991B4()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_2224A7974;
  }

  else
  {
    v6 = *(v2 + 328);
    v7 = *(v2 + 128);

    v5 = sub_2224992DC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2224992DC()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 152);
  sub_2224A7660(*(v0 + 160), *(v0 + 168), &qword_27D00E430, &qword_2224B5528);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(*(v0 + 168), &qword_27D00E430, &qword_2224B5528);
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    v34 = *(v0 + 296);
    v35 = *(v0 + 304);
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 176);
    v36 = *(v0 + 184);
    v37 = *(v0 + 288);
    v8 = *(v0 + 136);
    v9 = (*(v0 + 352) + 32) & ~*(v0 + 352);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    *(v0 + 72) = v11;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 48));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v10, v11);
    sub_2224B40F8();
    sub_2224A7878(v0 + 48, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v8 = sub_2224B41E8();
    *(v8 + 32) = v36;
    *(v8 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v13 = __swift_allocate_boxed_opaque_existential_1Tm((v8 + 8));
    (*(v6 + 32))(v13, v5, v36);
    *(v8 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2);

    v14 = *(v0 + 280);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    v17 = *(v0 + 224);
    v18 = *(v0 + 200);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 160);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 288);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    v28 = *(v0 + 224);
    v29 = *(v0 + 200);
    v30 = *(v0 + 176);
    v31 = *(v0 + 160);
    sub_2224A7878(*(v0 + 168), &qword_27D00E430, &qword_2224B5528);
    sub_2224A8390("send", 4, 2);

    v32 = *(v0 + 104);

    v33 = *(v0 + 8);

    return v33(v32);
  }
}

uint64_t sub_2224996B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[17] = a3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E518, &qword_2224B55A8);
  v4[19] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v7 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = sub_2224B41F8();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v11 = sub_2224B4198();
  v4[26] = v11;
  v12 = *(v11 - 8);
  v4[27] = v12;
  v13 = *(v12 + 64) + 15;
  v4[28] = swift_task_alloc();
  v14 = sub_2224B46A8();
  v4[29] = v14;
  v15 = *(v14 - 8);
  v4[30] = v15;
  v16 = *(v15 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v17 = sub_2224B4228();
  v4[33] = v17;
  v18 = *(v17 - 8);
  v4[34] = v18;
  v19 = *(v18 + 64) + 15;
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222499938, v3, 0);
}

uint64_t sub_222499938()
{
  v66 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 120);
  v6 = sub_2224B46D8();
  __swift_project_value_buffer(v6, qword_28130A5A0);
  v63 = *(v2 + 16);
  v63(v1, v5, v3);
  sub_2224B4698();
  v7 = sub_2224B46B8();
  v8 = sub_2224B4938();
  v9 = sub_2224B4948();
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v12 = *(v0 + 264);
  if (v9)
  {
    v62 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315138;
    sub_2224A76C8(&qword_27D00E528, MEMORY[0x277D377A8]);
    v15 = sub_2224B4A78();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_2224A5AE8(v15, v17, &v65);

    *(v13 + 4) = v18;
    v19 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v7, v8, v19, "send", "request=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DB7C20](v14, -1, -1);
    MEMORY[0x223DB7C20](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 232);
  v23 = *(v0 + 120);
  (*(v21 + 16))(*(v0 + 248), v20, v22);
  v24 = sub_2224B4718();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_2224B4708();
  (*(v21 + 8))(v20, v22);
  sub_2224A76C8(&qword_27D00E520, MEMORY[0x277D377A8]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 264);
    v49 = *(v0 + 176);
    v50 = *(v0 + 144);
    v52 = *(v0 + 120);
    v51 = *(v0 + 128);
    v53 = sub_2224B4628();
    *(v0 + 296) = v53;
    *(v0 + 304) = __swift_project_value_buffer(v53, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v54 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v54 + 72);
    *(v0 + 352) = *(v54 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v48;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v63(boxed_opaque_existential_1Tm, v52, v48);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v56 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation);
    v57 = swift_task_alloc();
    *(v0 + 328) = v57;
    v57[2] = v51;
    v57[3] = v52;
    v57[4] = v50;
    v58 = *(MEMORY[0x277D85A40] + 4);
    v59 = swift_task_alloc();
    *(v0 + 336) = v59;
    *v59 = v0;
    v59[1] = sub_22249A0FC;
    v61 = *(v0 + 152);
    v60 = *(v0 + 160);

    return MEMORY[0x2822008A0](v60, v51, v56, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A7324, v57, v61);
  }

  else
  {
    v27 = *(v0 + 264);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 192);
    v64 = *(v0 + 184);
    v33 = *(v0 + 136);
    v34 = *(v0 + 120);
    *v28 = sub_2224B41C8();
    v28[1] = 10485760;
    (*(v29 + 104))(v28, *MEMORY[0x277D37760], v30);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v35 = swift_allocError();
    (*(v29 + 16))(v36, v28, v30);
    MEMORY[0x223DB7AE0](v35);
    sub_2224B4208();
    *v33 = sub_2224B41E8();
    *(v33 + 32) = v64;
    *(v33 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v37 = __swift_allocate_boxed_opaque_existential_1Tm((v33 + 8));
    (*(v32 + 32))(v37, v31, v64);
    MEMORY[0x223DB7AD0](v35);
    (*(v29 + 8))(v28, v30);
    *(v33 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2);

    v38 = *(v0 + 280);
    v39 = *(v0 + 248);
    v40 = *(v0 + 256);
    v41 = *(v0 + 224);
    v42 = *(v0 + 200);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);
    v45 = *(v0 + 160);

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_22249A0FC()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_2224A7980;
  }

  else
  {
    v6 = *(v2 + 328);
    v7 = *(v2 + 128);

    v5 = sub_22249A224;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22249A224()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);
  sub_2224A7660(*(v0 + 160), *(v0 + 168), &qword_27D00E518, &qword_2224B55A8);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(*(v0 + 168), &qword_27D00E518, &qword_2224B55A8);
    v4 = *(v0 + 312);
    v5 = *(v0 + 320);
    v33 = *(v0 + 296);
    v34 = *(v0 + 304);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 176);
    v35 = *(v0 + 184);
    v36 = *(v0 + 288);
    v9 = *(v0 + 136);
    v10 = (*(v0 + 352) + 32) & ~*(v0 + 352);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    *(v0 + 72) = v12;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 48));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v11, v12);
    sub_2224B40F8();
    sub_2224A7878(v0 + 48, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v9 = sub_2224B41E8();
    *(v9 + 32) = v35;
    *(v9 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v14 = __swift_allocate_boxed_opaque_existential_1Tm((v9 + 8));
    (*(v7 + 32))(v14, v6, v35);
    *(v9 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2);

    v15 = *(v0 + 280);
    v16 = *(v0 + 248);
    v17 = *(v0 + 256);
    v18 = *(v0 + 224);
    v19 = *(v0 + 200);
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v22 = *(v0 + 160);
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 288);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    v28 = *(v0 + 224);
    v29 = *(v0 + 200);
    v30 = *(v0 + 176);
    v31 = *(v0 + 160);
    sub_2224A7878(*(v0 + 168), &qword_27D00E518, &qword_2224B55A8);
    sub_2224A8390("send", 4, 2);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22249A5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[17] = a3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4E8, &qword_2224B5590);
  v4[19] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v7 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = sub_2224B41F8();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v11 = sub_2224B4198();
  v4[26] = v11;
  v12 = *(v11 - 8);
  v4[27] = v12;
  v13 = *(v12 + 64) + 15;
  v4[28] = swift_task_alloc();
  v14 = sub_2224B46A8();
  v4[29] = v14;
  v15 = *(v14 - 8);
  v4[30] = v15;
  v16 = *(v15 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v17 = sub_2224B4498();
  v4[33] = v17;
  v18 = *(v17 - 8);
  v4[34] = v18;
  v19 = *(v18 + 64) + 15;
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22249A848, v3, 0);
}

uint64_t sub_22249A848()
{
  v66 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 120);
  v6 = sub_2224B46D8();
  __swift_project_value_buffer(v6, qword_28130A5A0);
  v63 = *(v2 + 16);
  v63(v1, v5, v3);
  sub_2224B4698();
  v7 = sub_2224B46B8();
  v8 = sub_2224B4938();
  v9 = sub_2224B4948();
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v12 = *(v0 + 264);
  if (v9)
  {
    v62 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315138;
    sub_2224A76C8(&qword_27D00E4F8, MEMORY[0x277D37878]);
    v15 = sub_2224B4A78();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_2224A5AE8(v15, v17, &v65);

    *(v13 + 4) = v18;
    v19 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v7, v8, v19, "send", "request=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DB7C20](v14, -1, -1);
    MEMORY[0x223DB7C20](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 232);
  v23 = *(v0 + 120);
  (*(v21 + 16))(*(v0 + 248), v20, v22);
  v24 = sub_2224B4718();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_2224B4708();
  (*(v21 + 8))(v20, v22);
  sub_2224A76C8(&qword_27D00E4F0, MEMORY[0x277D37878]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 264);
    v49 = *(v0 + 176);
    v50 = *(v0 + 144);
    v52 = *(v0 + 120);
    v51 = *(v0 + 128);
    v53 = sub_2224B4628();
    *(v0 + 296) = v53;
    *(v0 + 304) = __swift_project_value_buffer(v53, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v54 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v54 + 72);
    *(v0 + 352) = *(v54 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v48;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v63(boxed_opaque_existential_1Tm, v52, v48);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v56 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation);
    v57 = swift_task_alloc();
    *(v0 + 328) = v57;
    v57[2] = v51;
    v57[3] = v52;
    v57[4] = v50;
    v58 = *(MEMORY[0x277D85A40] + 4);
    v59 = swift_task_alloc();
    *(v0 + 336) = v59;
    *v59 = v0;
    v59[1] = sub_22249B00C;
    v61 = *(v0 + 152);
    v60 = *(v0 + 160);

    return MEMORY[0x2822008A0](v60, v51, v56, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A72F0, v57, v61);
  }

  else
  {
    v27 = *(v0 + 264);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 192);
    v64 = *(v0 + 184);
    v33 = *(v0 + 136);
    v34 = *(v0 + 120);
    *v28 = sub_2224B41C8();
    v28[1] = 10485760;
    (*(v29 + 104))(v28, *MEMORY[0x277D37760], v30);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v35 = swift_allocError();
    (*(v29 + 16))(v36, v28, v30);
    MEMORY[0x223DB7AE0](v35);
    sub_2224B4208();
    *v33 = sub_2224B41E8();
    *(v33 + 32) = v64;
    *(v33 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v37 = __swift_allocate_boxed_opaque_existential_1Tm((v33 + 8));
    (*(v32 + 32))(v37, v31, v64);
    MEMORY[0x223DB7AD0](v35);
    (*(v29 + 8))(v28, v30);
    *(v33 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2);

    v38 = *(v0 + 280);
    v39 = *(v0 + 248);
    v40 = *(v0 + 256);
    v41 = *(v0 + 224);
    v42 = *(v0 + 200);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);
    v45 = *(v0 + 160);

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_22249B00C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_2224A7980;
  }

  else
  {
    v6 = *(v2 + 328);
    v7 = *(v2 + 128);

    v5 = sub_22249B134;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22249B134()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);
  sub_2224A7660(*(v0 + 160), *(v0 + 168), &qword_27D00E4E8, &qword_2224B5590);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(*(v0 + 168), &qword_27D00E4E8, &qword_2224B5590);
    v4 = *(v0 + 312);
    v5 = *(v0 + 320);
    v33 = *(v0 + 296);
    v34 = *(v0 + 304);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 176);
    v35 = *(v0 + 184);
    v36 = *(v0 + 288);
    v9 = *(v0 + 136);
    v10 = (*(v0 + 352) + 32) & ~*(v0 + 352);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    *(v0 + 72) = v12;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 48));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v11, v12);
    sub_2224B40F8();
    sub_2224A7878(v0 + 48, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v9 = sub_2224B41E8();
    *(v9 + 32) = v35;
    *(v9 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v14 = __swift_allocate_boxed_opaque_existential_1Tm((v9 + 8));
    (*(v7 + 32))(v14, v6, v35);
    *(v9 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2);

    v15 = *(v0 + 280);
    v16 = *(v0 + 248);
    v17 = *(v0 + 256);
    v18 = *(v0 + 224);
    v19 = *(v0 + 200);
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v22 = *(v0 + 160);
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 288);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    v28 = *(v0 + 224);
    v29 = *(v0 + 200);
    v30 = *(v0 + 176);
    v31 = *(v0 + 160);
    sub_2224A7878(*(v0 + 168), &qword_27D00E4E8, &qword_2224B5590);
    sub_2224A8390("send", 4, 2);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22249B4D8(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v3[18] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4D0, &qword_2224B5578);
  v3[19] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = sub_2224B41F8();
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();
  v10 = sub_2224B4198();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  v13 = sub_2224B46A8();
  v3[29] = v13;
  v14 = *(v13 - 8);
  v3[30] = v14;
  v15 = *(v14 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v16 = sub_2224B4278();
  v3[33] = v16;
  v17 = *(v16 - 8);
  v3[34] = v17;
  v18 = *(v17 + 64) + 15;
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22249B758, v2, 0);
}

uint64_t sub_22249B758()
{
  v66 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 120);
  v6 = sub_2224B46D8();
  __swift_project_value_buffer(v6, qword_28130A5A0);
  v63 = *(v2 + 16);
  v63(v1, v5, v3);
  sub_2224B4698();
  v7 = sub_2224B46B8();
  v8 = sub_2224B4938();
  v9 = sub_2224B4948();
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v12 = *(v0 + 264);
  if (v9)
  {
    v62 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315138;
    sub_2224A76C8(&qword_28130A4A8, MEMORY[0x277D377E8]);
    v15 = sub_2224B4A78();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_2224A5AE8(v15, v17, &v65);

    *(v13 + 4) = v18;
    v19 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v7, v8, v19, "send", "request=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DB7C20](v14, -1, -1);
    MEMORY[0x223DB7C20](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 232);
  v23 = *(v0 + 120);
  (*(v21 + 16))(*(v0 + 248), v20, v22);
  v24 = sub_2224B4718();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_2224B4708();
  (*(v21 + 8))(v20, v22);
  sub_2224A76C8(&qword_28130A4A0, MEMORY[0x277D377E8]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 264);
    v49 = *(v0 + 176);
    v50 = *(v0 + 144);
    v52 = *(v0 + 120);
    v51 = *(v0 + 128);
    v53 = sub_2224B4628();
    *(v0 + 296) = v53;
    *(v0 + 304) = __swift_project_value_buffer(v53, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v54 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v54 + 72);
    *(v0 + 352) = *(v54 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v48;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v63(boxed_opaque_existential_1Tm, v52, v48);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v56 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation);
    v57 = swift_task_alloc();
    *(v0 + 328) = v57;
    v57[2] = v51;
    v57[3] = v52;
    v57[4] = v50;
    v58 = *(MEMORY[0x277D85A40] + 4);
    v59 = swift_task_alloc();
    *(v0 + 336) = v59;
    *v59 = v0;
    v59[1] = sub_22249BF1C;
    v61 = *(v0 + 152);
    v60 = *(v0 + 160);

    return MEMORY[0x2822008A0](v60, v51, v56, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A72BC, v57, v61);
  }

  else
  {
    v27 = *(v0 + 264);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 192);
    v64 = *(v0 + 184);
    v33 = *(v0 + 136);
    v34 = *(v0 + 120);
    *v28 = sub_2224B41C8();
    v28[1] = 10485760;
    (*(v29 + 104))(v28, *MEMORY[0x277D37760], v30);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v35 = swift_allocError();
    (*(v29 + 16))(v36, v28, v30);
    MEMORY[0x223DB7AE0](v35);
    sub_2224B4208();
    *v33 = sub_2224B41E8();
    *(v33 + 32) = v64;
    *(v33 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v37 = __swift_allocate_boxed_opaque_existential_1Tm((v33 + 8));
    (*(v32 + 32))(v37, v31, v64);
    MEMORY[0x223DB7AD0](v35);
    (*(v29 + 8))(v28, v30);
    *(v33 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2);

    v38 = *(v0 + 280);
    v39 = *(v0 + 248);
    v40 = *(v0 + 256);
    v41 = *(v0 + 224);
    v42 = *(v0 + 200);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);
    v45 = *(v0 + 160);

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_22249BF1C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_2224A7974;
  }

  else
  {
    v6 = *(v2 + 328);
    v7 = *(v2 + 128);

    v5 = sub_22249C044;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22249C044()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 152);
  sub_2224A7660(*(v0 + 160), *(v0 + 168), &qword_27D00E4D0, &qword_2224B5578);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(*(v0 + 168), &qword_27D00E4D0, &qword_2224B5578);
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    v34 = *(v0 + 296);
    v35 = *(v0 + 304);
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 176);
    v36 = *(v0 + 184);
    v37 = *(v0 + 288);
    v8 = *(v0 + 136);
    v9 = (*(v0 + 352) + 32) & ~*(v0 + 352);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    *(v0 + 72) = v11;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 48));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v10, v11);
    sub_2224B40F8();
    sub_2224A7878(v0 + 48, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v8 = sub_2224B41E8();
    *(v8 + 32) = v36;
    *(v8 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v13 = __swift_allocate_boxed_opaque_existential_1Tm((v8 + 8));
    (*(v6 + 32))(v13, v5, v36);
    *(v8 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2);

    v14 = *(v0 + 280);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    v17 = *(v0 + 224);
    v18 = *(v0 + 200);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 160);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 288);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    v28 = *(v0 + 224);
    v29 = *(v0 + 200);
    v30 = *(v0 + 176);
    v31 = *(v0 + 160);
    sub_2224A7878(*(v0 + 168), &qword_27D00E4D0, &qword_2224B5578);
    sub_2224A8390("send", 4, 2);

    v32 = *(v0 + 104);

    v33 = *(v0 + 8);

    return v33(v32);
  }
}

uint64_t sub_22249C420(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v3[18] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560);
  v3[19] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = sub_2224B41F8();
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();
  v10 = sub_2224B4198();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  v13 = sub_2224B46A8();
  v3[29] = v13;
  v14 = *(v13 - 8);
  v3[30] = v14;
  v15 = *(v14 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v16 = sub_2224B42F8();
  v3[33] = v16;
  v17 = *(v16 - 8);
  v3[34] = v17;
  v18 = *(v17 + 64) + 15;
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22249C6A0, v2, 0);
}

uint64_t sub_22249C6A0()
{
  v66 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 120);
  v6 = sub_2224B46D8();
  __swift_project_value_buffer(v6, qword_28130A5A0);
  v63 = *(v2 + 16);
  v63(v1, v5, v3);
  sub_2224B4698();
  v7 = sub_2224B46B8();
  v8 = sub_2224B4938();
  v9 = sub_2224B4948();
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v12 = *(v0 + 264);
  if (v9)
  {
    v62 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315138;
    sub_2224A76C8(&qword_27D00E4C8, MEMORY[0x277D37830]);
    v15 = sub_2224B4A78();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_2224A5AE8(v15, v17, &v65);

    *(v13 + 4) = v18;
    v19 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v7, v8, v19, "send", "request=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DB7C20](v14, -1, -1);
    MEMORY[0x223DB7C20](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 232);
  v23 = *(v0 + 120);
  (*(v21 + 16))(*(v0 + 248), v20, v22);
  v24 = sub_2224B4718();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_2224B4708();
  (*(v21 + 8))(v20, v22);
  sub_2224A76C8(&qword_27D00E4C0, MEMORY[0x277D37830]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 264);
    v49 = *(v0 + 176);
    v50 = *(v0 + 144);
    v52 = *(v0 + 120);
    v51 = *(v0 + 128);
    v53 = sub_2224B4628();
    *(v0 + 296) = v53;
    *(v0 + 304) = __swift_project_value_buffer(v53, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v54 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v54 + 72);
    *(v0 + 352) = *(v54 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v48;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v63(boxed_opaque_existential_1Tm, v52, v48);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v56 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation);
    v57 = swift_task_alloc();
    *(v0 + 328) = v57;
    v57[2] = v51;
    v57[3] = v52;
    v57[4] = v50;
    v58 = *(MEMORY[0x277D85A40] + 4);
    v59 = swift_task_alloc();
    *(v0 + 336) = v59;
    *v59 = v0;
    v59[1] = sub_22249CE64;
    v61 = *(v0 + 152);
    v60 = *(v0 + 160);

    return MEMORY[0x2822008A0](v60, v51, v56, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A72B0, v57, v61);
  }

  else
  {
    v27 = *(v0 + 264);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 192);
    v64 = *(v0 + 184);
    v33 = *(v0 + 136);
    v34 = *(v0 + 120);
    *v28 = sub_2224B41C8();
    v28[1] = 10485760;
    (*(v29 + 104))(v28, *MEMORY[0x277D37760], v30);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v35 = swift_allocError();
    (*(v29 + 16))(v36, v28, v30);
    MEMORY[0x223DB7AE0](v35);
    sub_2224B4208();
    *v33 = sub_2224B41E8();
    *(v33 + 32) = v64;
    *(v33 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v37 = __swift_allocate_boxed_opaque_existential_1Tm((v33 + 8));
    (*(v32 + 32))(v37, v31, v64);
    MEMORY[0x223DB7AD0](v35);
    (*(v29 + 8))(v28, v30);
    *(v33 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2);

    v38 = *(v0 + 280);
    v39 = *(v0 + 248);
    v40 = *(v0 + 256);
    v41 = *(v0 + 224);
    v42 = *(v0 + 200);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);
    v45 = *(v0 + 160);

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_22249CE64()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_2224A7974;
  }

  else
  {
    v6 = *(v2 + 328);
    v7 = *(v2 + 128);

    v5 = sub_2224A7978;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22249CF8C(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v3[18] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560);
  v3[19] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = sub_2224B41F8();
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();
  v10 = sub_2224B4198();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  v13 = sub_2224B46A8();
  v3[29] = v13;
  v14 = *(v13 - 8);
  v3[30] = v14;
  v15 = *(v14 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v16 = sub_2224B4258();
  v3[33] = v16;
  v17 = *(v16 - 8);
  v3[34] = v17;
  v18 = *(v17 + 64) + 15;
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22249D20C, v2, 0);
}

uint64_t sub_22249D20C()
{
  v66 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 120);
  v6 = sub_2224B46D8();
  __swift_project_value_buffer(v6, qword_28130A5A0);
  v63 = *(v2 + 16);
  v63(v1, v5, v3);
  sub_2224B4698();
  v7 = sub_2224B46B8();
  v8 = sub_2224B4938();
  v9 = sub_2224B4948();
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v12 = *(v0 + 264);
  if (v9)
  {
    v62 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315138;
    sub_2224A76C8(&qword_27D00E4B8, MEMORY[0x277D377D0]);
    v15 = sub_2224B4A78();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_2224A5AE8(v15, v17, &v65);

    *(v13 + 4) = v18;
    v19 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v7, v8, v19, "send", "request=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DB7C20](v14, -1, -1);
    MEMORY[0x223DB7C20](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 232);
  v23 = *(v0 + 120);
  (*(v21 + 16))(*(v0 + 248), v20, v22);
  v24 = sub_2224B4718();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_2224B4708();
  (*(v21 + 8))(v20, v22);
  sub_2224A76C8(&qword_27D00E4B0, MEMORY[0x277D377D0]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 264);
    v49 = *(v0 + 176);
    v50 = *(v0 + 144);
    v52 = *(v0 + 120);
    v51 = *(v0 + 128);
    v53 = sub_2224B4628();
    *(v0 + 296) = v53;
    *(v0 + 304) = __swift_project_value_buffer(v53, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v54 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v54 + 72);
    *(v0 + 352) = *(v54 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v48;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v63(boxed_opaque_existential_1Tm, v52, v48);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v56 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation);
    v57 = swift_task_alloc();
    *(v0 + 328) = v57;
    v57[2] = v51;
    v57[3] = v52;
    v57[4] = v50;
    v58 = *(MEMORY[0x277D85A40] + 4);
    v59 = swift_task_alloc();
    *(v0 + 336) = v59;
    *v59 = v0;
    v59[1] = sub_22249CE64;
    v61 = *(v0 + 152);
    v60 = *(v0 + 160);

    return MEMORY[0x2822008A0](v60, v51, v56, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A72A4, v57, v61);
  }

  else
  {
    v27 = *(v0 + 264);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 192);
    v64 = *(v0 + 184);
    v33 = *(v0 + 136);
    v34 = *(v0 + 120);
    *v28 = sub_2224B41C8();
    v28[1] = 10485760;
    (*(v29 + 104))(v28, *MEMORY[0x277D37760], v30);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v35 = swift_allocError();
    (*(v29 + 16))(v36, v28, v30);
    MEMORY[0x223DB7AE0](v35);
    sub_2224B4208();
    *v33 = sub_2224B41E8();
    *(v33 + 32) = v64;
    *(v33 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v37 = __swift_allocate_boxed_opaque_existential_1Tm((v33 + 8));
    (*(v32 + 32))(v37, v31, v64);
    MEMORY[0x223DB7AD0](v35);
    (*(v29 + 8))(v28, v30);
    *(v33 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2);

    v38 = *(v0 + 280);
    v39 = *(v0 + 248);
    v40 = *(v0 + 256);
    v41 = *(v0 + 224);
    v42 = *(v0 + 200);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);
    v45 = *(v0 + 160);

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_22249D9D0(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v3[18] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560);
  v3[19] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = sub_2224B41F8();
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();
  v10 = sub_2224B4198();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  v13 = sub_2224B46A8();
  v3[29] = v13;
  v14 = *(v13 - 8);
  v3[30] = v14;
  v15 = *(v14 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v16 = sub_2224B44F8();
  v3[33] = v16;
  v17 = *(v16 - 8);
  v3[34] = v17;
  v18 = *(v17 + 64) + 15;
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22249DC50, v2, 0);
}

uint64_t sub_22249DC50()
{
  v66 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 120);
  v6 = sub_2224B46D8();
  __swift_project_value_buffer(v6, qword_28130A5A0);
  v63 = *(v2 + 16);
  v63(v1, v5, v3);
  sub_2224B4698();
  v7 = sub_2224B46B8();
  v8 = sub_2224B4938();
  v9 = sub_2224B4948();
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v12 = *(v0 + 264);
  if (v9)
  {
    v62 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315138;
    sub_2224A76C8(&qword_27D00E490, MEMORY[0x277D378A8]);
    v15 = sub_2224B4A78();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_2224A5AE8(v15, v17, &v65);

    *(v13 + 4) = v18;
    v19 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v7, v8, v19, "send", "request=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DB7C20](v14, -1, -1);
    MEMORY[0x223DB7C20](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 232);
  v23 = *(v0 + 120);
  (*(v21 + 16))(*(v0 + 248), v20, v22);
  v24 = sub_2224B4718();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_2224B4708();
  (*(v21 + 8))(v20, v22);
  sub_2224A76C8(&qword_27D00E488, MEMORY[0x277D378A8]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 264);
    v49 = *(v0 + 176);
    v50 = *(v0 + 144);
    v52 = *(v0 + 120);
    v51 = *(v0 + 128);
    v53 = sub_2224B4628();
    *(v0 + 296) = v53;
    *(v0 + 304) = __swift_project_value_buffer(v53, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v54 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v54 + 72);
    *(v0 + 352) = *(v54 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v48;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v63(boxed_opaque_existential_1Tm, v52, v48);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v56 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation);
    v57 = swift_task_alloc();
    *(v0 + 328) = v57;
    v57[2] = v51;
    v57[3] = v52;
    v57[4] = v50;
    v58 = *(MEMORY[0x277D85A40] + 4);
    v59 = swift_task_alloc();
    *(v0 + 336) = v59;
    *v59 = v0;
    v59[1] = sub_22249E414;
    v61 = *(v0 + 152);
    v60 = *(v0 + 160);

    return MEMORY[0x2822008A0](v60, v51, v56, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A7270, v57, v61);
  }

  else
  {
    v27 = *(v0 + 264);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 192);
    v64 = *(v0 + 184);
    v33 = *(v0 + 136);
    v34 = *(v0 + 120);
    *v28 = sub_2224B41C8();
    v28[1] = 10485760;
    (*(v29 + 104))(v28, *MEMORY[0x277D37760], v30);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v35 = swift_allocError();
    (*(v29 + 16))(v36, v28, v30);
    MEMORY[0x223DB7AE0](v35);
    sub_2224B4208();
    *v33 = sub_2224B41E8();
    *(v33 + 32) = v64;
    *(v33 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v37 = __swift_allocate_boxed_opaque_existential_1Tm((v33 + 8));
    (*(v32 + 32))(v37, v31, v64);
    MEMORY[0x223DB7AD0](v35);
    (*(v29 + 8))(v28, v30);
    *(v33 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2);

    v38 = *(v0 + 280);
    v39 = *(v0 + 248);
    v40 = *(v0 + 256);
    v41 = *(v0 + 224);
    v42 = *(v0 + 200);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);
    v45 = *(v0 + 160);

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_22249E414()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_22249E918;
  }

  else
  {
    v6 = *(v2 + 328);
    v7 = *(v2 + 128);

    v5 = sub_22249E53C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22249E53C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 152);
  sub_2224A7660(*(v0 + 160), *(v0 + 168), &qword_27D00E480, &qword_2224B5560);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(*(v0 + 168), &qword_27D00E480, &qword_2224B5560);
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    v34 = *(v0 + 296);
    v35 = *(v0 + 304);
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 176);
    v36 = *(v0 + 184);
    v37 = *(v0 + 288);
    v8 = *(v0 + 136);
    v9 = (*(v0 + 352) + 32) & ~*(v0 + 352);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    *(v0 + 72) = v11;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 48));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v10, v11);
    sub_2224B40F8();
    sub_2224A7878(v0 + 48, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v8 = sub_2224B41E8();
    *(v8 + 32) = v36;
    *(v8 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v13 = __swift_allocate_boxed_opaque_existential_1Tm((v8 + 8));
    (*(v6 + 32))(v13, v5, v36);
    *(v8 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2);

    v14 = *(v0 + 280);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    v17 = *(v0 + 224);
    v18 = *(v0 + 200);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 160);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 288);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    v28 = *(v0 + 224);
    v29 = *(v0 + 200);
    v30 = *(v0 + 176);
    v31 = *(v0 + 160);
    sub_2224A7878(*(v0 + 168), &qword_27D00E480, &qword_2224B5560);
    sub_2224A8390("send", 4, 2);

    v32 = *(v0 + 104);

    v33 = *(v0 + 8);

    return v33(v32);
  }
}

uint64_t sub_22249E918()
{
  v1 = *(v0 + 328);

  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v24 = *(v0 + 296);
  v25 = *(v0 + 304);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 176);
  v26 = *(v0 + 184);
  v27 = *(v0 + 288);
  v8 = *(v0 + 136);
  v9 = (*(v0 + 352) + 32) & ~*(v0 + 352);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  *(v0 + 72) = v11;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 48));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v10, v11);
  sub_2224B40F8();
  sub_2224A7878(v0 + 48, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  MEMORY[0x223DB7AE0](v2);
  sub_2224B4208();
  *v8 = sub_2224B41E8();
  *(v8 + 32) = v26;
  *(v8 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
  v13 = __swift_allocate_boxed_opaque_existential_1Tm((v8 + 8));
  (*(v6 + 32))(v13, v5, v26);
  *(v8 + 48) = 7;
  sub_222485F68();
  swift_willThrowTypedImpl();
  MEMORY[0x223DB7AD0](v2);
  sub_2224A8390("send", 4, 2);

  v14 = *(v0 + 280);
  v15 = *(v0 + 248);
  v16 = *(v0 + 256);
  v17 = *(v0 + 224);
  v18 = *(v0 + 200);
  v20 = *(v0 + 168);
  v19 = *(v0 + 176);
  v21 = *(v0 + 160);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22249EBD8(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  v3[18] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E450, &qword_2224B5548);
  v3[19] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = *(*(sub_2224B4128() - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = sub_2224B41F8();
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();
  v10 = sub_2224B4198();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  v13 = sub_2224B46A8();
  v3[29] = v13;
  v14 = *(v13 - 8);
  v3[30] = v14;
  v15 = *(v14 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v16 = sub_2224B42E8();
  v3[33] = v16;
  v17 = *(v16 - 8);
  v3[34] = v17;
  v18 = *(v17 + 64) + 15;
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22249EE58, v2, 0);
}

uint64_t sub_22249EE58()
{
  v66 = v0;
  if (qword_28130A598 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 120);
  v6 = sub_2224B46D8();
  __swift_project_value_buffer(v6, qword_28130A5A0);
  v63 = *(v2 + 16);
  v63(v1, v5, v3);
  sub_2224B4698();
  v7 = sub_2224B46B8();
  v8 = sub_2224B4938();
  v9 = sub_2224B4948();
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v12 = *(v0 + 264);
  if (v9)
  {
    v62 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315138;
    sub_2224A76C8(&qword_27D00E460, MEMORY[0x277D37818]);
    v15 = sub_2224B4A78();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_2224A5AE8(v15, v17, &v65);

    *(v13 + 4) = v18;
    v19 = sub_2224B4688();
    _os_signpost_emit_with_name_impl(&dword_222484000, v7, v8, v19, "send", "request=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DB7C20](v14, -1, -1);
    MEMORY[0x223DB7C20](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = *(v0 + 256);
  v21 = *(v0 + 240);
  v22 = *(v0 + 232);
  v23 = *(v0 + 120);
  (*(v21 + 16))(*(v0 + 248), v20, v22);
  v24 = sub_2224B4718();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_2224B4708();
  (*(v21 + 8))(v20, v22);
  sub_2224A76C8(&qword_27D00E458, MEMORY[0x277D37818]);
  if (sub_2224B41C8() <= 10485760)
  {
    if (qword_28130A578 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 264);
    v49 = *(v0 + 176);
    v50 = *(v0 + 144);
    v52 = *(v0 + 120);
    v51 = *(v0 + 128);
    v53 = sub_2224B4628();
    *(v0 + 296) = v53;
    *(v0 + 304) = __swift_project_value_buffer(v53, qword_28130A580);
    *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
    v54 = *(sub_2224B4148() - 8);
    *(v0 + 320) = *(v54 + 72);
    *(v0 + 352) = *(v54 + 80);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    *(v0 + 40) = v48;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    v63(boxed_opaque_existential_1Tm, v52, v48);
    sub_2224B40F8();
    sub_2224A7878(v0 + 16, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4578();

    v56 = sub_2224A76C8(&qword_28130A568, type metadata accessor for DaemonSessionImplementation);
    v57 = swift_task_alloc();
    *(v0 + 328) = v57;
    v57[2] = v51;
    v57[3] = v52;
    v57[4] = v50;
    v58 = *(MEMORY[0x277D85A40] + 4);
    v59 = swift_task_alloc();
    *(v0 + 336) = v59;
    *v59 = v0;
    v59[1] = sub_22249F61C;
    v61 = *(v0 + 152);
    v60 = *(v0 + 160);

    return MEMORY[0x2822008A0](v60, v51, v56, 0x293A5F28646E6573, 0xE800000000000000, sub_2224A7188, v57, v61);
  }

  else
  {
    v27 = *(v0 + 264);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 192);
    v64 = *(v0 + 184);
    v33 = *(v0 + 136);
    v34 = *(v0 + 120);
    *v28 = sub_2224B41C8();
    v28[1] = 10485760;
    (*(v29 + 104))(v28, *MEMORY[0x277D37760], v30);
    sub_2224A76C8(&qword_27D00E328, MEMORY[0x277D37778]);
    v35 = swift_allocError();
    (*(v29 + 16))(v36, v28, v30);
    MEMORY[0x223DB7AE0](v35);
    sub_2224B4208();
    *v33 = sub_2224B41E8();
    *(v33 + 32) = v64;
    *(v33 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v37 = __swift_allocate_boxed_opaque_existential_1Tm((v33 + 8));
    (*(v32 + 32))(v37, v31, v64);
    MEMORY[0x223DB7AD0](v35);
    (*(v29 + 8))(v28, v30);
    *(v33 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    sub_2224A8390("send", 4, 2);

    v38 = *(v0 + 280);
    v39 = *(v0 + 248);
    v40 = *(v0 + 256);
    v41 = *(v0 + 224);
    v42 = *(v0 + 200);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);
    v45 = *(v0 + 160);

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_22249F61C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_2224A7974;
  }

  else
  {
    v6 = *(v2 + 328);
    v7 = *(v2 + 128);

    v5 = sub_22249F744;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22249F744()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 152);
  sub_2224A7660(*(v0 + 160), *(v0 + 168), &qword_27D00E450, &qword_2224B5548);
  sub_2224B4318();
  if (v1)
  {
    sub_2224A7878(*(v0 + 168), &qword_27D00E450, &qword_2224B5548);
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    v34 = *(v0 + 296);
    v35 = *(v0 + 304);
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 176);
    v36 = *(v0 + 184);
    v37 = *(v0 + 288);
    v8 = *(v0 + 136);
    v9 = (*(v0 + 352) + 32) & ~*(v0 + 352);
    *(swift_allocObject() + 16) = xmmword_2224B5060;
    sub_2224B4118();
    sub_2224B4108();
    swift_getErrorValue();
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    *(v0 + 72) = v11;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 48));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v10, v11);
    sub_2224B40F8();
    sub_2224A7878(v0 + 48, &qword_27D00E338, &qword_2224B5090);
    sub_2224B4108();
    sub_2224B4138();
    sub_2224B4588();

    MEMORY[0x223DB7AE0](v1);
    sub_2224B4208();
    *v8 = sub_2224B41E8();
    *(v8 + 32) = v36;
    *(v8 + 40) = sub_2224A76C8(qword_28130A348, MEMORY[0x277D37790]);
    v13 = __swift_allocate_boxed_opaque_existential_1Tm((v8 + 8));
    (*(v6 + 32))(v13, v5, v36);
    *(v8 + 48) = 7;
    sub_222485F68();
    swift_willThrowTypedImpl();
    MEMORY[0x223DB7AD0](v1);
    sub_2224A8390("send", 4, 2);

    v14 = *(v0 + 280);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    v17 = *(v0 + 224);
    v18 = *(v0 + 200);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 160);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 288);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    v28 = *(v0 + 224);
    v29 = *(v0 + 200);
    v30 = *(v0 + 176);
    v31 = *(v0 + 160);
    sub_2224A7878(*(v0 + 168), &qword_27D00E450, &qword_2224B5548);
    sub_2224A8390("send", 4, 2);

    v32 = *(v0 + 104);

    v33 = *(v0 + 8);

    return v33(v32);
  }
}

uint64_t sub_22249FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v5 = sub_2224B41F8();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v23[2] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2224B4128();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E570, &qword_2224B5610);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = v23 - v12;
  v14 = sub_2224B4248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[1] = sub_2224A7C1C();
  sub_2224B43B8();
  v23[0] = a4;
  sub_2224A76C8(&qword_28130A478, MEMORY[0x277D37860]);
  sub_2224B41D8();
  v18 = v26;
  (*(v10 + 16))(v13, v27, v26);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v18);
  *(v21 + v20) = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E568, &qword_2224B5608);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8]);
  sub_2224A77C8(&qword_28130A498, &qword_27D00E568, &qword_2224B5608);
  sub_2224B4768();
  sub_2224A70C4(v17, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A01A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v5 = sub_2224B41F8();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v23[2] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2224B4128();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E558, &qword_2224B55F8);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = v23 - v12;
  v14 = sub_2224B4248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[1] = sub_2224A7C1C();
  sub_2224B44C8();
  v23[0] = a4;
  sub_2224A76C8(&qword_28130A468, MEMORY[0x277D37890]);
  sub_2224B41D8();
  v18 = v26;
  (*(v10 + 16))(v13, v27, v26);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v18);
  *(v21 + v20) = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E550, &qword_2224B55F0);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8]);
  sub_2224A77C8(&qword_28130A490, &qword_27D00E550, &qword_2224B55F0);
  sub_2224B4768();
  sub_2224A70C4(v17, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A0820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v5 = sub_2224B41F8();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v23[2] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2224B4128();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E440, &qword_2224B5538);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = v23 - v12;
  v14 = sub_2224B4248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[1] = sub_2224A7C1C();
  sub_2224B42A8();
  v23[0] = a4;
  sub_2224A76C8(&qword_28130A338, MEMORY[0x277D37800]);
  sub_2224B41D8();
  v18 = v26;
  (*(v10 + 16))(v13, v27, v26);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v18);
  *(v21 + v20) = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E430, &qword_2224B5528);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8]);
  sub_2224A77C8(&qword_28130A330, &qword_27D00E430, &qword_2224B5528);
  sub_2224B4768();
  sub_2224A70C4(v17, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A0EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v5 = sub_2224B41F8();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v23[2] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2224B4128();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E530, &qword_2224B55B0);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = v23 - v12;
  v14 = sub_2224B4248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[1] = sub_2224A7C1C();
  sub_2224B4228();
  v23[0] = a4;
  sub_2224A76C8(&qword_27D00E520, MEMORY[0x277D377A8]);
  sub_2224B41D8();
  v18 = v26;
  (*(v10 + 16))(v13, v27, v26);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v18);
  *(v21 + v20) = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E518, &qword_2224B55A8);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8]);
  sub_2224A77C8(&qword_27D00E538, &qword_27D00E518, &qword_2224B55A8);
  sub_2224B4768();
  sub_2224A70C4(v17, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A1520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v5 = sub_2224B41F8();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v23[2] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2224B4128();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E500, &qword_2224B5598);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = v23 - v12;
  v14 = sub_2224B4248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[1] = sub_2224A7C1C();
  sub_2224B4498();
  v23[0] = a4;
  sub_2224A76C8(&qword_27D00E4F0, MEMORY[0x277D37878]);
  sub_2224B41D8();
  v18 = v26;
  (*(v10 + 16))(v13, v27, v26);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v18);
  *(v21 + v20) = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4E8, &qword_2224B5590);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8]);
  sub_2224A77C8(&qword_27D00E508, &qword_27D00E4E8, &qword_2224B5590);
  sub_2224B4768();
  sub_2224A70C4(v17, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A1BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v5 = sub_2224B41F8();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v23[2] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2224B4128();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4D8, &qword_2224B5580);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = v23 - v12;
  v14 = sub_2224B4248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[1] = sub_2224A7C1C();
  sub_2224B4278();
  v23[0] = a4;
  sub_2224A76C8(&qword_28130A4A0, MEMORY[0x277D377E8]);
  sub_2224B41D8();
  v18 = v26;
  (*(v10 + 16))(v13, v27, v26);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v18);
  *(v21 + v20) = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4D0, &qword_2224B5578);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8]);
  sub_2224A77C8(&qword_28130A488, &qword_27D00E4D0, &qword_2224B5578);
  sub_2224B4768();
  sub_2224A70C4(v17, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A2220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v5 = sub_2224B41F8();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v23[2] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2224B4128();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E498, &qword_2224B5568);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = v23 - v12;
  v14 = sub_2224B4248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[1] = sub_2224A7C1C();
  sub_2224B42F8();
  v23[0] = a4;
  sub_2224A76C8(&qword_27D00E4C0, MEMORY[0x277D37830]);
  sub_2224B41D8();
  v18 = v26;
  (*(v10 + 16))(v13, v27, v26);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v18);
  *(v21 + v20) = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8]);
  sub_2224A77C8(&qword_27D00E4A0, &qword_27D00E480, &qword_2224B5560);
  sub_2224B4768();
  sub_2224A70C4(v17, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A28A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v5 = sub_2224B41F8();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v23[2] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2224B4128();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E498, &qword_2224B5568);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = v23 - v12;
  v14 = sub_2224B4248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[1] = sub_2224A7C1C();
  sub_2224B4258();
  v23[0] = a4;
  sub_2224A76C8(&qword_27D00E4B0, MEMORY[0x277D377D0]);
  sub_2224B41D8();
  v18 = v26;
  (*(v10 + 16))(v13, v27, v26);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v18);
  *(v21 + v20) = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8]);
  sub_2224A77C8(&qword_27D00E4A0, &qword_27D00E480, &qword_2224B5560);
  sub_2224B4768();
  sub_2224A70C4(v17, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A2F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v5 = sub_2224B41F8();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v23[2] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2224B4128();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E498, &qword_2224B5568);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = v23 - v12;
  v14 = sub_2224B4248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[1] = sub_2224A7C1C();
  sub_2224B44F8();
  v23[0] = a4;
  sub_2224A76C8(&qword_27D00E488, MEMORY[0x277D378A8]);
  sub_2224B41D8();
  v18 = v26;
  (*(v10 + 16))(v13, v27, v26);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v18);
  *(v21 + v20) = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E480, &qword_2224B5560);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8]);
  sub_2224A77C8(&qword_27D00E4A0, &qword_27D00E480, &qword_2224B5560);
  sub_2224B4768();
  sub_2224A70C4(v17, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A35A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v5 = sub_2224B41F8();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v23[2] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2224B4128();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E468, &qword_2224B5550);
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = v23 - v12;
  v14 = sub_2224B4248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23[1] = sub_2224A7C1C();
  sub_2224B42E8();
  v23[0] = a4;
  sub_2224A76C8(&qword_27D00E458, MEMORY[0x277D37818]);
  sub_2224B41D8();
  v18 = v26;
  (*(v10 + 16))(v13, v27, v26);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v18);
  *(v21 + v20) = v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E450, &qword_2224B5548);
  sub_2224A76C8(qword_28130A4B0, MEMORY[0x277D377B8]);
  sub_2224A77C8(&qword_27D00E470, &qword_27D00E450, &qword_2224B5548);
  sub_2224B4768();
  sub_2224A70C4(v17, MEMORY[0x277D377B8]);
}

uint64_t sub_2224A3C20(uint64_t a1)
{
  v2 = sub_2224B4128();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E568, &qword_2224B5608);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E578, &qword_2224B5618);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v24 - v13);
  sub_2224A7810(a1, &v24 - v13, &qword_27D00E578, &qword_2224B5618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26[0] = *v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E570, &qword_2224B5610);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v14, v7, &qword_27D00E568, &qword_2224B5608);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E570, &qword_2224B5610);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v12, &qword_27D00E578, &qword_2224B5618);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v12, &qword_27D00E578, &qword_2224B5618);
  }

  v15 = *v12;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v16 = sub_2224B4628();
  __swift_project_value_buffer(v16, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v17 = *(sub_2224B4148() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v20 = v24;
  v21 = v25;
  v26[3] = v25;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm, v20, v21);
  sub_2224B40F8();
  sub_2224A7878(v26, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v15);
}

uint64_t sub_2224A4018(uint64_t a1)
{
  v2 = sub_2224B4128();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E550, &qword_2224B55F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E560, &qword_2224B5600);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v24 - v13);
  sub_2224A7810(a1, &v24 - v13, &qword_27D00E560, &qword_2224B5600);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26[0] = *v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E558, &qword_2224B55F8);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v14, v7, &qword_27D00E550, &qword_2224B55F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E558, &qword_2224B55F8);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v12, &qword_27D00E560, &qword_2224B5600);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v12, &qword_27D00E560, &qword_2224B5600);
  }

  v15 = *v12;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v16 = sub_2224B4628();
  __swift_project_value_buffer(v16, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v17 = *(sub_2224B4148() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v20 = v24;
  v21 = v25;
  v26[3] = v25;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm, v20, v21);
  sub_2224B40F8();
  sub_2224A7878(v26, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v15);
}

uint64_t sub_2224A4410(uint64_t a1)
{
  v2 = sub_2224B4128();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E430, &qword_2224B5528);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E448, &qword_2224B5540);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v24 - v13);
  sub_2224A7810(a1, &v24 - v13, &qword_27D00E448, &qword_2224B5540);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26[0] = *v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E440, &qword_2224B5538);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v14, v7, &qword_27D00E430, &qword_2224B5528);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E440, &qword_2224B5538);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v12, &qword_27D00E448, &qword_2224B5540);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v12, &qword_27D00E448, &qword_2224B5540);
  }

  v15 = *v12;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v16 = sub_2224B4628();
  __swift_project_value_buffer(v16, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v17 = *(sub_2224B4148() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v20 = v24;
  v21 = v25;
  v26[3] = v25;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm, v20, v21);
  sub_2224B40F8();
  sub_2224A7878(v26, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v15);
}

uint64_t sub_2224A4808(uint64_t a1)
{
  v2 = sub_2224B4128();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E518, &qword_2224B55A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E540, &qword_2224B55B8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v24 - v13);
  sub_2224A7810(a1, &v24 - v13, &qword_27D00E540, &qword_2224B55B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26[0] = *v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E530, &qword_2224B55B0);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v14, v7, &qword_27D00E518, &qword_2224B55A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E530, &qword_2224B55B0);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v12, &qword_27D00E540, &qword_2224B55B8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v12, &qword_27D00E540, &qword_2224B55B8);
  }

  v15 = *v12;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v16 = sub_2224B4628();
  __swift_project_value_buffer(v16, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v17 = *(sub_2224B4148() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v20 = v24;
  v21 = v25;
  v26[3] = v25;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm, v20, v21);
  sub_2224B40F8();
  sub_2224A7878(v26, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v15);
}

uint64_t sub_2224A4C00(uint64_t a1)
{
  v2 = sub_2224B4128();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4E8, &qword_2224B5590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E510, &qword_2224B55A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v24 - v13);
  sub_2224A7810(a1, &v24 - v13, &qword_27D00E510, &qword_2224B55A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26[0] = *v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E500, &qword_2224B5598);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v14, v7, &qword_27D00E4E8, &qword_2224B5590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E500, &qword_2224B5598);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v12, &qword_27D00E510, &qword_2224B55A0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v12, &qword_27D00E510, &qword_2224B55A0);
  }

  v15 = *v12;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v16 = sub_2224B4628();
  __swift_project_value_buffer(v16, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v17 = *(sub_2224B4148() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v20 = v24;
  v21 = v25;
  v26[3] = v25;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm, v20, v21);
  sub_2224B40F8();
  sub_2224A7878(v26, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v15);
}

uint64_t sub_2224A4FF8(uint64_t a1)
{
  v2 = sub_2224B4128();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4D0, &qword_2224B5578);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4E0, &qword_2224B5588);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v24 - v13);
  sub_2224A7810(a1, &v24 - v13, &qword_27D00E4E0, &qword_2224B5588);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26[0] = *v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4D8, &qword_2224B5580);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v14, v7, &qword_27D00E4D0, &qword_2224B5578);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E4D8, &qword_2224B5580);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v12, &qword_27D00E4E0, &qword_2224B5588);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v12, &qword_27D00E4E0, &qword_2224B5588);
  }

  v15 = *v12;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v16 = sub_2224B4628();
  __swift_project_value_buffer(v16, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v17 = *(sub_2224B4148() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v20 = v24;
  v21 = v25;
  v26[3] = v25;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm, v20, v21);
  sub_2224B40F8();
  sub_2224A7878(v26, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v15);
}

uint64_t sub_2224A53F0(uint64_t a1)
{
  v2 = sub_2224B4128();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E450, &qword_2224B5548);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E478, &qword_2224B5558);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v24 - v13);
  sub_2224A7810(a1, &v24 - v13, &qword_27D00E478, &qword_2224B5558);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26[0] = *v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E468, &qword_2224B5550);
    sub_2224B48A8();
  }

  else
  {
    sub_2224A7660(v14, v7, &qword_27D00E450, &qword_2224B5548);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E468, &qword_2224B5550);
    sub_2224B48B8();
  }

  sub_2224A7810(a1, v12, &qword_27D00E478, &qword_2224B5558);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2224A7878(v12, &qword_27D00E478, &qword_2224B5558);
  }

  v15 = *v12;
  if (qword_28130A578 != -1)
  {
    swift_once();
  }

  v16 = sub_2224B4628();
  __swift_project_value_buffer(v16, qword_28130A580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E330, &qword_2224B5088);
  v17 = *(sub_2224B4148() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_2224B5060;
  sub_2224B4118();
  sub_2224B4108();
  swift_getErrorValue();
  v20 = v24;
  v21 = v25;
  v26[3] = v25;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm, v20, v21);
  sub_2224B40F8();
  sub_2224A7878(v26, &qword_27D00E338, &qword_2224B5090);
  sub_2224B4108();
  sub_2224B4138();
  sub_2224B4588();

  return MEMORY[0x223DB7AD0](v15);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2224A5830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Connection.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2224A58F8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2224A59F0;

  return v7(a1);
}

uint64_t sub_2224A59F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2224A5AE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2224A5BB4(v11, 0, 0, 1, a1, a2);
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
    sub_2224A703C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2224A5BB4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2224A5CC0(a5, a6);
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
    result = sub_2224B49D8();
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

uint64_t sub_2224A5CC0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2224A5D0C(a1, a2);
  sub_2224A5E3C(&unk_2835ABAF8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2224A5D0C(uint64_t a1, unint64_t a2)
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

  v6 = sub_2224A5F28(v5, 0);
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

  result = sub_2224B49D8();
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
        v10 = sub_2224B4858();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2224A5F28(v10, 0);
        result = sub_2224B49B8();
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

uint64_t sub_2224A5E3C(uint64_t result)
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

  result = sub_2224A5F9C(result, v12, 1, v3);
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

void *sub_2224A5F28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E438, &qword_2224B5530);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2224A5F9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E438, &qword_2224B5530);
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

uint64_t sub_2224A6090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v36 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00E548, &qword_2224B55C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Connection.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2224B4398();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - v20;
  v38[3] = type metadata accessor for DaemonSessionImplementation();
  v38[4] = &off_2835ABEC8;
  v38[0] = a2;
  sub_2224A5830(a1, v14);
  if ((*(v16 + 48))(v14, 2, v15))
  {

    sub_2224A70C4(v14, type metadata accessor for Connection.State);
  }

  else
  {
    v32 = *(v16 + 32);
    v32(v21, v14, v15);
    v22 = sub_2224B48D8();
    v23 = *(*(v22 - 8) + 56);
    v33 = v10;
    v23(v10, 1, 1, v22);
    (*(v16 + 16))(v19, v21, v15);
    sub_2224A7124(v38, v37);
    v24 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v25 = (v17 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
    v31 = a2;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    v32((v27 + v24), v19, v15);
    sub_222485948(v37, v27 + v25);
    v28 = (v27 + v26);
    v29 = v34;
    *v28 = v36;
    v28[1] = v29;
    *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v35;

    sub_222488FD8(0, 0, v33, &unk_2224B55D0, v27);

    (*(v16 + 8))(v21, v15);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2224A6444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Connection.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2224A64B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a4);
  v9 = *a2;
  LOBYTE(a2) = *(a2 + 8);
  sub_2224A7124(v13, v12);
  type metadata accessor for Connection.PaginatedSelectIterator();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  swift_weakInit();
  *(v10 + 176) = 0;
  *(v10 + 184) = 0;
  *(v10 + 192) = 0;
  *(v10 + 200) = 1;
  sub_222485948(v12, v10 + 112);
  *(v10 + 152) = v9;
  *(v10 + 160) = a2;
  swift_weakAssign();
  return v10;
}

unint64_t sub_2224A65A4()
{
  result = qword_27D00E340;
  if (!qword_27D00E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00E340);
  }

  return result;
}

uint64_t sub_2224A65F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9[0] = a1;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = MEMORY[0x277D37928];
  v9[1] = a2;
  sub_2224A7124(v9, v8);
  type metadata accessor for Connection.PaginatedSelectIterator();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  swift_weakInit();
  *(v6 + 176) = 0;
  *(v6 + 184) = 0;
  *(v6 + 192) = 0;
  *(v6 + 200) = 1;
  sub_222485948(v8, v6 + 112);
  *(v6 + 152) = a3;
  *(v6 + 160) = a4 & 1;
  swift_weakAssign();
  return v6;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2224A6760(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = sub_2224B46E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2224B46A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28130A6D8 != -1)
  {
    swift_once();
  }

  v14 = sub_2224B46D8();
  __swift_project_value_buffer(v14, qword_28130A6E0);
  v15 = sub_2224B46B8();
  sub_2224B46F8();
  v20 = sub_2224B4928();
  result = sub_2224B4948();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_2224B4728();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
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
      v19 = sub_2224B4688();
      _os_signpost_emit_with_name_impl(&dword_222484000, v15, v20, v19, a1, v17, v18, 2u);
      MEMORY[0x223DB7C20](v18, -1, -1);
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