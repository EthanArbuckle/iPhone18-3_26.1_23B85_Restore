uint64_t sub_22B2018A0(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_22B35EACC();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_22B35EE8C();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B201A18, 0, 0);
}

uint64_t sub_22B201A18()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_22B35EE7C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    v8 = v0[5];
    v9 = sub_22B35E6AC();
    (*(*(v9 - 8) + 16))(v5, v8, v9);
    v10 = *MEMORY[0x277D174F0];
    v11 = sub_22B35E41C();
    (*(*(v11 - 8) + 104))(v5, v10, v11);
    (*(v6 + 104))(v5, *MEMORY[0x277D17968], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6D0, &qword_22B365968);
    v12 = *(v6 + 72);
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = swift_allocObject();
    v0[15] = v14;
    *(v14 + 16) = xmmword_22B3634B0;
    (*(v6 + 16))(v14 + v13, v5, v7);
    v15 = *(MEMORY[0x277D17638] + 4);
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_22B201D88;

    return MEMORY[0x282171BF0](v14);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];
    v20 = __swift_project_value_buffer(v19, qword_28140BD10);
    swift_beginAccess();
    (*(v18 + 16))(v17, v20, v19);
    v21 = sub_22B36050C();
    v22 = sub_22B360D1C();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[7];
    v24 = v0[8];
    v26 = v0[6];
    if (v23)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22B116000, v21, v22, "[LoadSessionEventUploader] Feature Disabled. Skip submission", v27, 2u);
      MEMORY[0x23188F650](v27, -1, -1);
    }

    (*(v25 + 8))(v24, v26);
    v28 = v0[14];
    v29 = v0[11];
    v30 = v0[8];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_22B201D88()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  v5 = *(v2 + 120);
  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_22B202284, 0, 0);
}

uint64_t sub_22B201F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B201FDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B20203C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22B202100()
{
  result = qword_281409310;
  if (!qword_281409310)
  {
    sub_22B128014(255, &qword_281409318, 0x277CBC5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409310);
  }

  return result;
}

void sub_22B2021A0()
{
  sub_22B35DE9C();
  if (v0 <= 0x3F)
  {
    sub_22B180EAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22B2022FC()
{
  type metadata accessor for HomeServicesManager();
  result = swift_allocObject();
  qword_28140BCB0 = result;
  return result;
}

uint64_t sub_22B20234C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B20240C, 0, 0);
}

uint64_t sub_22B20240C()
{
  v16 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD000000000000018, 0x800000022B368FD0, &v15);
    _os_log_impl(&dword_22B116000, v5, v6, "HomeServicesManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (qword_27D8B9F70 != -1)
  {
    swift_once();
  }

  v13 = qword_27D8BB1A0;
  v0[10] = qword_27D8BB1A0;

  return MEMORY[0x2822009F8](sub_22B202618, v13, 0);
}

uint64_t sub_22B202618()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = sub_22B13534C(v0[5], v0[6]);

  v4 = v0[1];

  return v4(v3 & 1);
}

uint64_t sub_22B20268C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 88) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  v4 = sub_22B36052C();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B202750, 0, 0);
}

uint64_t sub_22B202750()
{
  v16 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD000000000000024, 0x800000022B368FA0, &v15);
    _os_log_impl(&dword_22B116000, v5, v6, "HomeServicesManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (qword_27D8B9F70 != -1)
  {
    swift_once();
  }

  v13 = qword_27D8BB1A0;
  v0[10] = qword_27D8BB1A0;

  return MEMORY[0x2822009F8](sub_22B20295C, v13, 0);
}

uint64_t sub_22B20295C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_22B13580C(*(v0 + 40), *(v0 + 48), *(v0 + 88));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B2029CC(double a1, double a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  v3 = sub_22B36052C();
  *(v2 + 56) = v3;
  v4 = *(v3 - 8);
  *(v2 + 64) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B202A8C, 0, 0);
}

uint64_t sub_22B202A8C()
{
  v18 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 8);
  v1 = *(v0 + 9);
  v3 = *(v0 + 7);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 8);
  v8 = *(v0 + 9);
  v10 = *(v0 + 7);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD000000000000020, 0x800000022B368F70, &v17);
    _os_log_impl(&dword_22B116000, v5, v6, "HomeServicesManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (qword_27D8B9F70 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  *(v0 + 10) = v13;
  *v13 = v0;
  v13[1] = sub_22B203688;
  v14 = v0[5];
  v15 = v0[6];

  return sub_22B136050(v14, v15);
}

uint64_t sub_22B202CC8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B202D88, 0, 0);
}

uint64_t sub_22B202D88()
{
  v18 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD00000000000001ELL, 0x800000022B368F30, &v17);
    _os_log_impl(&dword_22B116000, v5, v6, "HomeServicesManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (qword_27D8B9F70 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_22B203688;
  v15 = v0[5];
  v14 = v0[6];

  return sub_22B1375D8(v15, v14);
}

uint64_t sub_22B202FC8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B203088, 0, 0);
}

uint64_t sub_22B203088()
{
  v18 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD00000000000001DLL, 0x800000022B368F50, &v17);
    _os_log_impl(&dword_22B116000, v5, v6, "HomeServicesManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (qword_27D8B9F70 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_22B2032C8;
  v15 = v0[5];
  v14 = v0[6];

  return sub_22B13695C(v15, v14);
}

uint64_t sub_22B2032C8(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_22B2033E0()
{
  v1 = sub_22B36052C();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B20349C, 0, 0);
}

uint64_t sub_22B20349C()
{
  v17 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0x6361437261656C63, 0xEC00000029286568, &v16);
    _os_log_impl(&dword_22B116000, v5, v6, "HomeServicesManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v13 = v0[7];
  sub_22B3602DC();
  MEMORY[0x23188DB90]();

  v14 = v0[1];

  return v14();
}

uint64_t sub_22B20368C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = sub_22B35E7EC();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B203758, v6, 0);
}

uint64_t sub_22B203758()
{
  if (qword_27D8B9FB8 != -1)
  {
    swift_once();
  }

  v1 = qword_27D8BB1D0;
  *(v0 + 104) = qword_27D8BB1D0;

  return MEMORY[0x2822009F8](sub_22B2037F0, v1, 0);
}

uint64_t sub_22B2037F0()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);
    v4 = *(v1 + 120);

    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v7 = sub_22B2A632C();
      v5 = [v7 newBackgroundContext];
      v8 = sub_22B36081C();
      [v5 setTransactionAuthor_];

      [v5 setMergePolicy_];
      [v5 setUndoManager_];
      [v5 setShouldRefreshAfterSave_];
      [v5 setStalenessInterval_];
      [v5 setShouldDeleteInaccessibleFaults_];

      v3 = 0;
    }

    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v17 = *(v0 + 24);
    v11 = swift_task_alloc();
    v12 = *(v0 + 56);
    *(v11 + 16) = v17;
    *(v11 + 32) = v10;
    *(v11 + 40) = v9;
    *(v11 + 48) = v12;
    *(v11 + 64) = v5;
    *(v11 + 72) = v2;
    v13 = v3;
    v14 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA818, &qword_22B365B80);
    sub_22B360E7C();

    v6 = *(v0 + 16);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *(v0 + 112) = v6;
  v15 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_22B203A0C, v15, 0);
}

uint64_t sub_22B203A0C()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  *(v0 + 120) = v2;
  if (v2)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 168) = v6;
    *(v0 + 128) = *(v4 + 56);
    *(v0 + 136) = v5;
    *(v0 + 144) = 0;
    v5(*(v0 + 96), v1 + ((v6 + 32) & ~v6), v3);
    if (qword_27D8B9F78 != -1)
    {
      swift_once();
    }

    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_22B203B68;
    v8 = *(v0 + 96);

    return sub_22B174D34(v8);
  }

  else
  {

    v10 = *(v0 + 96);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_22B203B68()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = swift_task_alloc();
  *(v2 + 160) = v5;
  *v5 = v4;
  v5[1] = sub_22B203CAC;
  v6 = *(v2 + 96);

  return sub_22B1FDE04(v6);
}

uint64_t sub_22B203CAC()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B203DBC, v2, 0);
}

uint64_t sub_22B203DBC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 144) + 1;
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  if (v2 == v1)
  {
    v3 = *(v0 + 112);

    v4 = *(v0 + 96);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 144) + 1;
    *(v0 + 144) = v8;
    v9 = *(v0 + 88) + 16;
    v7(*(v0 + 96), *(v0 + 112) + ((*(v0 + 168) + 32) & ~*(v0 + 168)) + *(v0 + 128) * v8, *(v0 + 80));
    if (qword_27D8B9F78 != -1)
    {
      swift_once();
    }

    v10 = swift_task_alloc();
    *(v0 + 152) = v10;
    *v10 = v0;
    v10[1] = sub_22B203B68;
    v11 = *(v0 + 96);

    return sub_22B174D34(v11);
  }
}

uint64_t sub_22B203F38(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_22B35E7EC();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_22B35D8BC();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = sub_22B36052C();
  v2[17] = v9;
  v10 = *(v9 - 8);
  v2[18] = v10;
  v11 = *(v10 + 64) + 15;
  v2[19] = swift_task_alloc();
  v12 = sub_22B35F6FC();
  v2[20] = v12;
  v13 = *(v12 - 8);
  v2[21] = v13;
  v14 = *(v13 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v16 = sub_22B35E0BC();
  v2[27] = v16;
  v17 = *(v16 - 8);
  v2[28] = v17;
  v18 = *(v17 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v19 = sub_22B35DE9C();
  v2[32] = v19;
  v20 = *(v19 - 8);
  v2[33] = v20;
  v21 = *(v20 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2042B0, v1, 0);
}

uint64_t sub_22B2042B0()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[26];
  sub_22B35DE6C();
  sub_22B35DDCC();
  v8 = *(v4 + 8);
  v0[45] = v8;
  v0[46] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  sub_22B35E08C();
  v60 = *(v6 + 48);
  v9 = v60(v7, 1, v5);
  if (v9 == 1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v12 = v0[43];
  v13 = v0[44];
  v15 = v0[31];
  v14 = v0[32];
  v16 = v0[27];
  v17 = v0[28];
  v58 = *(v17 + 32);
  v58(v15, v0[26], v16);
  sub_22B35F50C();
  v57 = *(v17 + 8);
  v57(v15, v16);
  v59 = v8;
  v8(v12, v14);
  if (sub_22B35EEBC())
  {
    if (qword_27D8B9FF8 != -1)
    {
      swift_once();
    }

    v19 = v0[22];
    v18 = v0[23];
    v21 = v0[20];
    v20 = v0[21];
    v22 = __swift_project_value_buffer(v21, qword_27D8BB230);
    swift_beginAccess();
    v54 = *(v20 + 16);
    v55 = v22;
    v54(v18, v22, v21);
    sub_22B35F6AC();
    sub_22B2062E8(&qword_27D8BA820, MEMORY[0x277D07408]);
    LOBYTE(v22) = sub_22B36103C();
    v23 = *(v20 + 8);
    v23(v19, v21);
    v23(v18, v21);
    if (v22)
    {
      v25 = v0[22];
      v24 = v0[23];
      v26 = v0[20];
      v54(v24, v55, v26);
      sub_22B35F6BC();
      v27 = sub_22B36103C();
      v23(v25, v26);
      v23(v24, v26);
      if (v27)
      {
        goto LABEL_8;
      }

      v29 = v0[22];
      v28 = v0[23];
      v30 = v0[20];
      v54(v28, v55, v30);
      sub_22B35F6CC();
      v31 = sub_22B36103C();
      v23(v29, v30);
      v23(v28, v30);
      if (v31)
      {
LABEL_8:
        v32 = v0[42];
        v33 = v0[40];
        v34 = v0[32];
        v35 = v0[27];
        v36 = v0[25];
        sub_22B35DE6C();
        sub_22B35DDCC();
        v59(v32, v34);
        sub_22B35E08C();
        v9 = v60(v36, 1, v35);
        if (v9 == 1)
        {
LABEL_18:
          __break(1u);
          return MEMORY[0x2822009F8](v9, v10, v11);
        }

        v56 = v0[44];
        v38 = v0[40];
        v37 = v0[41];
        v39 = v0[32];
        v40 = v0[33];
        v41 = v0[30];
        v42 = v0[27];
        v58(v41, v0[25], v42);
        sub_22B35F50C();
        v57(v41, v42);
        v59(v38, v39);
        v59(v56, v39);
        (*(v40 + 32))(v56, v37, v39);
      }
    }
  }

  v43 = v0[42];
  v44 = v0[38];
  v45 = v0[32];
  v46 = v0[27];
  v47 = v0[24];
  sub_22B35DE6C();
  sub_22B35DDCC();
  v59(v43, v45);
  sub_22B35E08C();
  v9 = v60(v47, 1, v46);
  if (v9 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v48 = v0[38];
  v49 = v0[39];
  v50 = v0[32];
  v51 = v0[29];
  v52 = v0[27];
  v58(v51, v0[24], v52);
  sub_22B35F50C();
  v57(v51, v52);
  v59(v48, v50);
  if (qword_27D8B9FB8 != -1)
  {
    swift_once();
  }

  v10 = qword_27D8BB1D0;
  v0[47] = qword_27D8BB1D0;
  v9 = sub_22B204848;
  v11 = 0;

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22B204848()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[9];
  v4 = v0[10];
  v0[48] = sub_22B248940();

  return MEMORY[0x2822009F8](sub_22B2048BC, v4, 0);
}

uint64_t sub_22B2048BC()
{
  if (qword_27D8B9F78 != -1)
  {
    swift_once();
  }

  v1 = qword_27D8BB1A8;
  *(v0 + 392) = qword_27D8BB1A8;

  return MEMORY[0x2822009F8](sub_22B204954, v1, 0);
}

uint64_t sub_22B204954()
{
  v1 = v0[49];
  v2 = v0[9];
  v3 = v0[10];
  v0[50] = sub_22B174B48();

  return MEMORY[0x2822009F8](sub_22B2049C4, v3, 0);
}

uint64_t sub_22B2049C4()
{
  v1 = 0;
  v2 = *(v0 + 384);
  v3 = *(v2 + 32);
  *(v0 + 540) = v3;
  v4 = 1 << v3;
  v5 = *(v2 + 56);
  v6 = v4 < 64;
  v7 = -1 << v4;
  if (v6)
  {
    v8 = ~v7;
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  *(v0 + 408) = 0;
  if ((v8 & v5) != 0)
  {
    do
    {
      v10 = *(v0 + 384);
LABEL_10:
      *(v0 + 416) = v9;
      *(v0 + 424) = v1;
      v12 = (*(v10 + 48) + ((v1 << 11) | (32 * __clz(__rbit64(v9)))));
      v13 = *v12;
      *(v0 + 432) = *v12;
      v14 = v12[1];
      *(v0 + 440) = v14;
      v15 = v12[2];
      *(v0 + 448) = v15;
      v16 = v12[3];
      *(v0 + 456) = v16;

      if (sub_22B360BFC())
      {
        v51 = *(v0 + 400);

        if (qword_28140A0C8 != -1)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      }

      v17 = *(v0 + 264);
      if (*(*(v0 + 400) + 16))
      {
        v18 = sub_22B33B790(v13, v14, v15, v16);
        v19 = *(v17 + 16);
        v20 = *(v0 + 264);
        if (v21)
        {
          v23 = *(v0 + 288);
          v22 = *(v0 + 296);
          v24 = *(v0 + 256);
          v19(v23, *(*(v0 + 400) + 56) + *(v20 + 72) * v18, v24);
          (*(v20 + 32))(v22, v23, v24);
          goto LABEL_16;
        }
      }

      else
      {
        v19 = *(v17 + 16);
      }

      v19(*(v0 + 296), *(v0 + 352), *(v0 + 256));
LABEL_16:
      v25 = *(v0 + 296);
      v26 = *(v0 + 264) + 16;
      v19(*(v0 + 280), *(v0 + 312), *(v0 + 256));
      sub_22B2062E8(&qword_28140B490, MEMORY[0x277CC9578]);
      if (sub_22B36074C())
      {
        v68 = *(v0 + 376);
        v70 = *(v0 + 272);
        v69 = *(v0 + 280);
        v71 = *(v0 + 256);
        v72 = *(v0 + 128);
        v19(*(v0 + 336), *(v0 + 296), v71);
        v19(v70, v69, v71);
        sub_22B35D88C();

        return MEMORY[0x2822009F8](sub_22B204FDC, v68, 0);
      }

      v9 &= v9 - 1;
      v28 = *(v0 + 360);
      v27 = *(v0 + 368);
      v29 = *(v0 + 296);
      v30 = *(v0 + 280);
      v31 = *(v0 + 256);

      v28(v30, v31);
      v28(v29, v31);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v11 >= (((1 << *(v0 + 540)) + 63) >> 6))
    {
      v32 = *(v0 + 400);
      v33 = *(v0 + 384);
      v35 = *(v0 + 360);
      v34 = *(v0 + 368);
      v36 = *(v0 + 352);
      v37 = *(v0 + 312);
      v38 = *(v0 + 256);

      v35(v37, v38);
      v35(v36, v38);

      goto LABEL_20;
    }

    v10 = *(v0 + 384);
    v9 = *(v10 + 8 * v11 + 56);
    ++v1;
    if (v9)
    {
      v1 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_32:
  swift_once();
LABEL_24:
  v53 = *(v0 + 144);
  v52 = *(v0 + 152);
  v54 = *(v0 + 136);
  v55 = __swift_project_value_buffer(v54, qword_28140BD10);
  swift_beginAccess();
  (*(v53 + 16))(v52, v55, v54);
  v56 = sub_22B36050C();
  v57 = sub_22B360D1C();
  v58 = os_log_type_enabled(v56, v57);
  v59 = *(v0 + 384);
  v61 = *(v0 + 360);
  v60 = *(v0 + 368);
  v62 = *(v0 + 352);
  v87 = *(v0 + 312);
  v63 = *(v0 + 256);
  v64 = *(v0 + 144);
  v85 = *(v0 + 152);
  v65 = *(v0 + 136);
  if (v58)
  {
    v83 = *(v0 + 352);
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_22B116000, v56, v57, "[LoadEventsProcessor] Task was cancelled", v66, 2u);
    MEMORY[0x23188F650](v66, -1, -1);

    (*(v64 + 8))(v85, v65);
    v61(v87, v63);
    v67 = v83;
  }

  else
  {

    (*(v64 + 8))(v85, v65);
    v61(v87, v63);
    v67 = v62;
  }

  v61(v67, v63);
LABEL_20:
  v40 = *(v0 + 344);
  v39 = *(v0 + 352);
  v42 = *(v0 + 328);
  v41 = *(v0 + 336);
  v44 = *(v0 + 312);
  v43 = *(v0 + 320);
  v46 = *(v0 + 296);
  v45 = *(v0 + 304);
  v47 = *(v0 + 280);
  v48 = *(v0 + 288);
  v73 = *(v0 + 272);
  v74 = *(v0 + 248);
  v75 = *(v0 + 240);
  v76 = *(v0 + 232);
  v77 = *(v0 + 208);
  v78 = *(v0 + 200);
  v79 = *(v0 + 192);
  v80 = *(v0 + 184);
  v81 = *(v0 + 176);
  v82 = *(v0 + 152);
  v84 = *(v0 + 128);
  v86 = *(v0 + 104);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_22B204FDC()
{
  v1 = v0[47];
  if (*(v1 + 120))
  {
    v2 = *(v1 + 112);
    v20 = *(v1 + 120);

    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v6 = sub_22B2A632C();
      v3 = [v6 newBackgroundContext];
      v7 = sub_22B36081C();
      [v3 setTransactionAuthor_];

      [v3 setMergePolicy_];
      [v3 setUndoManager_];
      [v3 setShouldRefreshAfterSave_];
      [v3 setStalenessInterval_];
      [v3 setShouldDeleteInaccessibleFaults_];
    }

    v9 = v0[56];
    v8 = v0[57];
    v11 = v0[54];
    v10 = v0[55];
    v19 = v0[51];
    v12 = v0[16];
    v13 = v0[9];
    v14 = swift_task_alloc();
    v14[2] = v13;
    v14[3] = v11;
    v14[4] = v10;
    v14[5] = v9;
    v14[6] = v8;
    v14[7] = v12;
    v14[8] = v3;
    v14[9] = v20;
    v15 = v2;
    v16 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA818, &qword_22B365B80);
    v4 = v19;
    sub_22B360E7C();

    v5 = v0[8];
  }

  else
  {
    v4 = v0[51];
    v5 = MEMORY[0x277D84F90];
  }

  v0[58] = v4;
  v0[59] = v5;
  v17 = v0[10];

  return MEMORY[0x2822009F8](sub_22B205204, v17, 0);
}

uint64_t sub_22B205204()
{
  v1 = *(v0 + 472);
  v2 = *(v1 + 16);
  *(v0 + 480) = v2;
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 536) = v6;
    *(v0 + 488) = *(v4 + 56);
    *(v0 + 496) = v5;
    *(v0 + 504) = 0;
    v5(*(v0 + 104), v1 + ((v6 + 32) & ~v6), v3);
    v7 = swift_task_alloc();
    *(v0 + 512) = v7;
    *v7 = v0;
    v7[1] = sub_22B20592C;
    v8 = *(v0 + 392);
    v9 = *(v0 + 104);

    return sub_22B174D34(v9);
  }

  v11 = *(v0 + 440);

  v12 = *(v0 + 456);
  v13 = *(v0 + 464);
  v15 = *(v0 + 360);
  v14 = *(v0 + 368);
  v16 = *(v0 + 296);
  v17 = *(v0 + 280);
  v18 = *(v0 + 256);
  v20 = *(v0 + 120);
  v19 = *(v0 + 128);
  v21 = *(v0 + 112);

  (*(v20 + 8))(v19, v21);
  v15(v17, v18);
  v15(v16, v18);
  v22 = *(v0 + 424);
  v23 = (*(v0 + 416) - 1) & *(v0 + 416);
  *(v0 + 408) = v13;
  if (!v23)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v24 = *(v0 + 384);
LABEL_11:
    *(v0 + 416) = v23;
    *(v0 + 424) = v22;
    v26 = (*(v24 + 48) + ((v22 << 11) | (32 * __clz(__rbit64(v23)))));
    v27 = *v26;
    *(v0 + 432) = *v26;
    v28 = v26[1];
    *(v0 + 440) = v28;
    v29 = v26[2];
    *(v0 + 448) = v29;
    v30 = v26[3];
    *(v0 + 456) = v30;

    if (sub_22B360BFC())
    {
      break;
    }

    v31 = *(v0 + 264);
    if (!*(*(v0 + 400) + 16))
    {
      v33 = *(v31 + 16);
LABEL_16:
      v33(*(v0 + 296), *(v0 + 352), *(v0 + 256));
      goto LABEL_17;
    }

    v32 = sub_22B33B790(v27, v28, v29, v30);
    v33 = *(v31 + 16);
    v34 = *(v0 + 264);
    if ((v35 & 1) == 0)
    {
      goto LABEL_16;
    }

    v37 = *(v0 + 288);
    v36 = *(v0 + 296);
    v38 = *(v0 + 256);
    v33(v37, *(*(v0 + 400) + 56) + *(v34 + 72) * v32, v38);
    (*(v34 + 32))(v36, v37, v38);
LABEL_17:
    v39 = *(v0 + 296);
    v40 = *(v0 + 264) + 16;
    v33(*(v0 + 280), *(v0 + 312), *(v0 + 256));
    sub_22B2062E8(&qword_28140B490, MEMORY[0x277CC9578]);
    if (sub_22B36074C())
    {
      v81 = *(v0 + 376);
      v83 = *(v0 + 272);
      v82 = *(v0 + 280);
      v84 = *(v0 + 256);
      v85 = *(v0 + 128);
      v33(*(v0 + 336), *(v0 + 296), v84);
      v33(v83, v82, v84);
      sub_22B35D88C();

      return MEMORY[0x2822009F8](sub_22B204FDC, v81, 0);
    }

    v23 &= v23 - 1;
    v42 = *(v0 + 360);
    v41 = *(v0 + 368);
    v43 = *(v0 + 296);
    v44 = *(v0 + 280);
    v45 = *(v0 + 256);

    v42(v44, v45);
    v42(v43, v45);
    if (!v23)
    {
LABEL_7:
      while (1)
      {
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v25 >= (((1 << *(v0 + 540)) + 63) >> 6))
        {
          v46 = *(v0 + 400);
          v47 = *(v0 + 384);
          v49 = *(v0 + 360);
          v48 = *(v0 + 368);
          v50 = *(v0 + 352);
          v51 = *(v0 + 312);
          v52 = *(v0 + 256);

          v49(v51, v52);
          v49(v50, v52);

          goto LABEL_21;
        }

        v24 = *(v0 + 384);
        v23 = *(v24 + 8 * v25 + 56);
        ++v22;
        if (v23)
        {
          v22 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_33;
    }
  }

  v64 = *(v0 + 400);

  if (qword_28140A0C8 == -1)
  {
    goto LABEL_25;
  }

LABEL_33:
  swift_once();
LABEL_25:
  v66 = *(v0 + 144);
  v65 = *(v0 + 152);
  v67 = *(v0 + 136);
  v68 = __swift_project_value_buffer(v67, qword_28140BD10);
  swift_beginAccess();
  (*(v66 + 16))(v65, v68, v67);
  v69 = sub_22B36050C();
  v70 = sub_22B360D1C();
  v71 = os_log_type_enabled(v69, v70);
  v72 = *(v0 + 384);
  v74 = *(v0 + 360);
  v73 = *(v0 + 368);
  v75 = *(v0 + 352);
  v100 = *(v0 + 312);
  v76 = *(v0 + 256);
  v77 = *(v0 + 144);
  v98 = *(v0 + 152);
  v78 = *(v0 + 136);
  if (v71)
  {
    v96 = *(v0 + 352);
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_22B116000, v69, v70, "[LoadEventsProcessor] Task was cancelled", v79, 2u);
    MEMORY[0x23188F650](v79, -1, -1);

    (*(v77 + 8))(v98, v78);
    v74(v100, v76);
    v80 = v96;
  }

  else
  {

    (*(v77 + 8))(v98, v78);
    v74(v100, v76);
    v80 = v75;
  }

  v74(v80, v76);
LABEL_21:
  v54 = *(v0 + 344);
  v53 = *(v0 + 352);
  v56 = *(v0 + 328);
  v55 = *(v0 + 336);
  v58 = *(v0 + 312);
  v57 = *(v0 + 320);
  v60 = *(v0 + 296);
  v59 = *(v0 + 304);
  v61 = *(v0 + 280);
  v62 = *(v0 + 288);
  v86 = *(v0 + 272);
  v87 = *(v0 + 248);
  v88 = *(v0 + 240);
  v89 = *(v0 + 232);
  v90 = *(v0 + 208);
  v91 = *(v0 + 200);
  v92 = *(v0 + 192);
  v93 = *(v0 + 184);
  v94 = *(v0 + 176);
  v95 = *(v0 + 152);
  v97 = *(v0 + 128);
  v99 = *(v0 + 104);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_22B20592C()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;

  if (v0)
  {
  }

  v2[65] = 0;
  v5 = swift_task_alloc();
  v2[66] = v5;
  *v5 = v4;
  v5[1] = sub_22B205A74;
  v6 = v2[13];

  return sub_22B1FDE04(v6);
}

uint64_t sub_22B205A74()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B205B84, v2, 0);
}

uint64_t sub_22B205B84()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 504) + 1;
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  if (v2 != v1)
  {
    v39 = *(v0 + 496);
    v40 = *(v0 + 504) + 1;
    *(v0 + 504) = v40;
    v41 = (*(v0 + 96) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v39(*(v0 + 104), *(v0 + 472) + ((*(v0 + 536) + 32) & ~*(v0 + 536)) + *(v0 + 488) * v40, *(v0 + 88));
    v42 = swift_task_alloc();
    *(v0 + 512) = v42;
    *v42 = v0;
    v42[1] = sub_22B20592C;
    v43 = *(v0 + 392);
    v44 = *(v0 + 104);

    return sub_22B174D34(v44);
  }

  v3 = *(v0 + 472);
  v4 = *(v0 + 440);

  v5 = *(v0 + 520);
  v6 = *(v0 + 456);
  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v9 = *(v0 + 296);
  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);
  v14 = *(v0 + 112);

  (*(v13 + 8))(v12, v14);
  v8(v10, v11);
  v8(v9, v11);
  v15 = *(v0 + 424);
  v16 = (*(v0 + 416) - 1) & *(v0 + 416);
  *(v0 + 408) = v5;
  if (!v16)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v17 = *(v0 + 384);
LABEL_8:
    *(v0 + 416) = v16;
    *(v0 + 424) = v15;
    v19 = (*(v17 + 48) + ((v15 << 11) | (32 * __clz(__rbit64(v16)))));
    v20 = *v19;
    *(v0 + 432) = *v19;
    v21 = v19[1];
    *(v0 + 440) = v21;
    v22 = v19[2];
    *(v0 + 448) = v22;
    v23 = v19[3];
    *(v0 + 456) = v23;

    if (sub_22B360BFC())
    {
      break;
    }

    v24 = *(v0 + 264);
    if (!*(*(v0 + 400) + 16))
    {
      v26 = *(v24 + 16);
LABEL_13:
      v26(*(v0 + 296), *(v0 + 352), *(v0 + 256));
      goto LABEL_14;
    }

    v25 = sub_22B33B790(v20, v21, v22, v23);
    v26 = *(v24 + 16);
    v27 = *(v0 + 264);
    if ((v28 & 1) == 0)
    {
      goto LABEL_13;
    }

    v30 = *(v0 + 288);
    v29 = *(v0 + 296);
    v31 = *(v0 + 256);
    v26(v30, *(*(v0 + 400) + 56) + *(v27 + 72) * v25, v31);
    (*(v27 + 32))(v29, v30, v31);
LABEL_14:
    v32 = *(v0 + 296);
    v33 = *(v0 + 264) + 16;
    v26(*(v0 + 280), *(v0 + 312), *(v0 + 256));
    sub_22B2062E8(&qword_28140B490, MEMORY[0x277CC9578]);
    if (sub_22B36074C())
    {
      v81 = *(v0 + 376);
      v83 = *(v0 + 272);
      v82 = *(v0 + 280);
      v84 = *(v0 + 256);
      v85 = *(v0 + 128);
      v26(*(v0 + 336), *(v0 + 296), v84);
      v26(v83, v82, v84);
      sub_22B35D88C();

      return MEMORY[0x2822009F8](sub_22B204FDC, v81, 0);
    }

    v16 &= v16 - 1;
    v35 = *(v0 + 360);
    v34 = *(v0 + 368);
    v36 = *(v0 + 296);
    v37 = *(v0 + 280);
    v38 = *(v0 + 256);

    v35(v37, v38);
    v35(v36, v38);
    if (!v16)
    {
LABEL_4:
      while (1)
      {
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v18 >= (((1 << *(v0 + 540)) + 63) >> 6))
        {
          v46 = *(v0 + 400);
          v47 = *(v0 + 384);
          v49 = *(v0 + 360);
          v48 = *(v0 + 368);
          v50 = *(v0 + 352);
          v51 = *(v0 + 312);
          v52 = *(v0 + 256);

          v49(v51, v52);
          v49(v50, v52);

          goto LABEL_21;
        }

        v17 = *(v0 + 384);
        v16 = *(v17 + 8 * v18 + 56);
        ++v15;
        if (v16)
        {
          v15 = v18;
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_33;
    }
  }

  v64 = *(v0 + 400);

  if (qword_28140A0C8 == -1)
  {
    goto LABEL_25;
  }

LABEL_33:
  swift_once();
LABEL_25:
  v66 = *(v0 + 144);
  v65 = *(v0 + 152);
  v67 = *(v0 + 136);
  v68 = __swift_project_value_buffer(v67, qword_28140BD10);
  swift_beginAccess();
  (*(v66 + 16))(v65, v68, v67);
  v69 = sub_22B36050C();
  v70 = sub_22B360D1C();
  v71 = os_log_type_enabled(v69, v70);
  v72 = *(v0 + 384);
  v74 = *(v0 + 360);
  v73 = *(v0 + 368);
  v75 = *(v0 + 352);
  v100 = *(v0 + 312);
  v76 = *(v0 + 256);
  v77 = *(v0 + 144);
  v98 = *(v0 + 152);
  v78 = *(v0 + 136);
  if (v71)
  {
    v96 = *(v0 + 352);
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_22B116000, v69, v70, "[LoadEventsProcessor] Task was cancelled", v79, 2u);
    MEMORY[0x23188F650](v79, -1, -1);

    (*(v77 + 8))(v98, v78);
    v74(v100, v76);
    v80 = v96;
  }

  else
  {

    (*(v77 + 8))(v98, v78);
    v74(v100, v76);
    v80 = v75;
  }

  v74(v80, v76);
LABEL_21:
  v54 = *(v0 + 344);
  v53 = *(v0 + 352);
  v56 = *(v0 + 328);
  v55 = *(v0 + 336);
  v58 = *(v0 + 312);
  v57 = *(v0 + 320);
  v60 = *(v0 + 296);
  v59 = *(v0 + 304);
  v61 = *(v0 + 280);
  v62 = *(v0 + 288);
  v86 = *(v0 + 272);
  v87 = *(v0 + 248);
  v88 = *(v0 + 240);
  v89 = *(v0 + 232);
  v90 = *(v0 + 208);
  v91 = *(v0 + 200);
  v92 = *(v0 + 192);
  v93 = *(v0 + 184);
  v94 = *(v0 + 176);
  v95 = *(v0 + 152);
  v97 = *(v0 + 128);
  v99 = *(v0 + 104);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_22B2062E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PeakFinder.queryListWithDateRank(list:queryDate:)@<X0>(int64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v5 = sub_22B35DE9C();
  v88 = *(v5 - 8);
  v6 = *(v88 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v20);
  v69 = &v60 - v21;
  v22 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_22B206AD8(v22);
  }

  v23 = *(v22 + 16);
  v77 = v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  if (v23)
  {
    v64 = v22;
    v75 = v16;
    v62 = v13;
    v81 = v8;
    v65 = a1;
    v68 = v9;
    v67 = a3;
    v22 = 0;
    v66 = v10;
    v24 = *(v10 + 72);
    v63 = -v24;
    v76 = v19;
    v25 = v77;
    v82 = v5;
    v79 = (v88 + 8);
    v80 = v24;
LABEL_5:
    v26 = v24 * v22;
    v27 = (v24 + v24 * (v22 - v23));
    v28 = v69;
    v84 = v23;
    while (1)
    {
      v86 = v27;
      v87 = v26;
      v88 = v22;
      sub_22B2071B4(v25 + v26, v28);
      sub_22B2071B4(v28, v19);
      v29 = v81;
      sub_22B35EF8C();
      v30 = sub_22B35EFAC();
      v31 = *(v30 - 8);
      a1 = *(v31 + 8);
      v85 = v31 + 8;
      (a1)(v19, v30);
      v32 = sub_22B207224();
      v33 = v28;
      v34 = v82;
      v78 = v32;
      v35 = sub_22B36074C();
      v36 = *v79;
      (*v79)(v29, v34);
      if (v35)
      {
        sub_22B20727C(v33);
        v28 = v33;
      }

      else
      {
        sub_22B2071B4(v33, v19);
        sub_22B35EF7C();
        (a1)(v19, v30);
        v37 = sub_22B35DDEC();
        v36(v29, v34);
        sub_22B20727C(v33);
        v28 = v33;
        if (v37)
        {
          v38 = v36;
          v71 = a1;
          v72 = v30;
          v25 = v77;
          v61 = v77 + v87;
          v39 = v84 - 1;
          v40 = v80 * (v84 - 1);
          v41 = v63 * v84;
          v19 = v76;
          v42 = v86;
          v70 = v36;
          while (1)
          {
            v22 = v88;
            if (v88 >= v39)
            {
              break;
            }

            v43 = v40;
            v74 = v41;
            v86 = v42;
            v84 = v39;
            v44 = v75;
            sub_22B2071B4(v25 + v40, v75);
            sub_22B2071B4(v44, v19);
            v45 = v81;
            sub_22B35EF8C();
            v46 = v71;
            v47 = v72;
            (v71)(v19, v72);
            v73 = v43;
            v48 = v82;
            v49 = sub_22B36074C();
            v38(v45, v48);
            if (v49)
            {
              sub_22B20727C(v75);
              v23 = v84;
              v24 = v80;
              v53 = v73;
              v54 = v74;
              a1 = v86;
LABEL_16:
              v55 = v88;
              if (v88 != v23)
              {
                v56 = v61;
                sub_22B2072E4(v61, v62);
                if (v87 < v53 || v56 >= v25 - v54)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (a1)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_22B2072E4(v62, v25 + v53);
                v23 = v84;
              }

              v22 = v55 + 1;
              if (v22 < v23)
              {
                goto LABEL_5;
              }

              break;
            }

            sub_22B2071B4(v75, v19);
            sub_22B35EF7C();
            (v46)(v19, v47);
            v50 = sub_22B35DDEC();
            v51 = v45;
            v52 = v70;
            v70(v51, v48);
            sub_22B20727C(v75);
            v23 = v84;
            v39 = v84 - 1;
            v24 = v80;
            a1 = v86;
            v42 = (v86 + v80);
            v53 = v73;
            v54 = v74;
            v40 = v73 - v80;
            v41 = v74 + v80;
            v38 = v52;
            if ((v50 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

LABEL_24:
          v57 = v64;
          *v65 = v64;
          if (v22 >= *(v57 + 16))
          {
            v58 = 1;
            a3 = v67;
            v9 = v68;
            v10 = v66;
          }

          else
          {
            a3 = v67;
            v9 = v68;
            v10 = v66;
            if (v22 < 0)
            {
              __break(1u);
              break;
            }

LABEL_29:
            sub_22B2071B4(v25 + *(v10 + 72) * v22, a3);
            v58 = 0;
          }

          return (*(v10 + 56))(a3, v58, 1, v9);
        }
      }

      v22 = v88 + 1;
      v26 = v87 + v80;
      v27 = (v86 + v80);
      v19 = v76;
      v25 = v77;
      if (v88 + 1 >= v84)
      {
        goto LABEL_24;
      }
    }
  }

  *a1 = v22;
  if (*(v22 + 16))
  {
    v22 = 0;
    v25 = v77;
    goto LABEL_29;
  }

  v58 = 1;
  return (*(v10 + 56))(a3, v58, 1, v9);
}

uint64_t sub_22B206AEC(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v77 = a2;
  v3 = sub_22B35DE9C();
  v82 = *(v3 - 8);
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v21);
  v64 = &v56 - v22;
  v23 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_22B206AD8(v23);
  }

  v24 = *(v23 + 2);
  v72 = (v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
  if (v24)
  {
    v62 = v23;
    v70 = v17;
    v61 = v7;
    v60 = v11;
    v63 = a1;
    v25 = 0;
    v59 = v8;
    v26 = *(v8 + 72);
    v58 = -v26;
    v71 = v20;
    v27 = v6;
    v75 = v3;
    v57 = v14;
    v76 = v26;
    v74 = (v82 + 8);
LABEL_5:
    v28 = v26 * v25;
    v29 = v26 + v26 * (v25 - v24);
    v30 = v64;
    v31 = v72;
    v78 = v24;
    while (1)
    {
      v80 = v29;
      v81 = v28;
      v82 = v25;
      sub_22B2071B4(v31 + v28, v30);
      sub_22B2071B4(v30, v20);
      sub_22B35EF8C();
      v32 = sub_22B35EFAC();
      v33 = *(v32 - 8);
      v34 = *(v33 + 8);
      v79 = v33 + 8;
      v34(v20, v32);
      v35 = sub_22B207224();
      v36 = v30;
      v37 = v75;
      v73 = v35;
      a1 = sub_22B36074C();
      v23 = *v74;
      (*v74)(v27, v37);
      if (a1)
      {
        sub_22B20727C(v36);
        v30 = v36;
      }

      else
      {
        sub_22B2071B4(v36, v20);
        sub_22B35EF7C();
        v34(v20, v32);
        a1 = sub_22B35DDEC();
        v23(v27, v37);
        sub_22B20727C(v36);
        v30 = v36;
        if (a1)
        {
          v65 = v32;
          v66 = v34;
          v31 = v72;
          v56 = v72 + v81;
          v38 = v78 - 1;
          v39 = v76 * (v78 - 1);
          v40 = v58 * v78;
          v20 = v71;
          v25 = v82;
          v41 = v80;
          v69 = v23;
          while (v25 < v38)
          {
            v42 = v39;
            v68 = v40;
            v80 = v41;
            v78 = v38;
            v43 = v70;
            sub_22B2071B4(v31 + v39, v70);
            sub_22B2071B4(v43, v20);
            sub_22B35EF8C();
            v44 = v65;
            v67 = v42;
            v45 = v66;
            v66(v20, v65);
            v23 = v77;
            v46 = v75;
            a1 = sub_22B36074C();
            v69(v27, v46);
            if (a1)
            {
              sub_22B20727C(v70);
              v24 = v78;
              v26 = v76;
              v25 = v82;
              v48 = v67;
              v49 = v68;
              v47 = v80;
LABEL_16:
              v50 = v57;
              if (v25 != v24)
              {
                v51 = v56;
                sub_22B2072E4(v56, v57);
                if (v81 < v48 || v51 >= v72 - v49)
                {
                  v23 = v72;
                  swift_arrayInitWithTakeFrontToBack();
                }

                else
                {
                  v23 = v72;
                  if (v47)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                sub_22B2072E4(v50, v23 + v48);
                v24 = v78;
                v26 = v76;
              }

              if (++v25 >= v24)
              {
                v31 = v72;
                break;
              }

              goto LABEL_5;
            }

            sub_22B2071B4(v70, v20);
            sub_22B35EF7C();
            v45(v20, v44);
            a1 = sub_22B35DDEC();
            v23 = v69;
            v69(v27, v46);
            sub_22B20727C(v70);
            v24 = v78;
            v38 = v78 - 1;
            v26 = v76;
            v47 = v80;
            v41 = v80 + v76;
            v48 = v67;
            v49 = v68;
            v39 = v67 - v76;
            v40 = v68 + v76;
            v25 = v82;
            if ((a1 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

LABEL_25:
          v52 = v62;
          *v63 = v62;
          if (v25 >= *(v52 + 2))
          {
            return 0;
          }

          v11 = v60;
          v7 = v61;
          v8 = v59;
          if (v25 < 0)
          {
            __break(1u);
            break;
          }

LABEL_30:
          sub_22B2071B4(v31 + *(v8 + 72) * v25, v20);
          v53 = *(v7 + 48);
          v25 = *&v20[v53];
          v54 = sub_22B35EFAC();
          (*(*(v54 - 8) + 32))(v11, v20, v54);
          *&v11[v53] = v25;
          sub_22B20727C(v11);
          return v25;
        }
      }

      v25 = v82 + 1;
      v28 = v81 + v76;
      v29 = v80 + v76;
      v20 = v71;
      v31 = v72;
      if (v82 + 1 >= v78)
      {
        goto LABEL_25;
      }
    }
  }

  v25 = 0;
  *a1 = v23;
  if (*(v23 + 2))
  {
    v31 = v72;
    goto LABEL_30;
  }

  return v25;
}

uint64_t sub_22B2071B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B207224()
{
  result = qword_28140B490;
  if (!qword_28140B490)
  {
    sub_22B35DE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140B490);
  }

  return result;
}

uint64_t sub_22B20727C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B2072E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22B207390(int a1)
{
  v2 = v1;
  v54[4] = *MEMORY[0x277D85DE8];
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v46[-v11];
  result = [v2 hasChanges];
  if (result)
  {
    v53 = v2;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v15 = v5[2];
    v49 = v5 + 2;
    v50 = v14;
    v48 = v15;
    v15(v12, v14, v4);
    v16 = sub_22B36050C();
    v17 = sub_22B360D0C();
    v18 = os_log_type_enabled(v16, v17);
    v47 = a1;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v52 = v4;
      v20 = v19;
      v21 = swift_slowAlloc();
      v54[0] = v21;
      *v20 = 136315138;
      v22 = sub_22B20EC98(a1);
      v51 = v8;
      v24 = sub_22B1A7B20(v22, v23, v54);
      v8 = v51;

      *(v20 + 4) = v24;
      _os_log_impl(&dword_22B116000, v16, v17, "[CoreDataCloudKitStack] Saving changes for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23188F650](v21, -1, -1);
      v25 = v20;
      v4 = v52;
      MEMORY[0x23188F650](v25, -1, -1);
    }

    v26 = v5[1];
    v26(v12, v4);
    v54[0] = 0;
    if ([v53 save_])
    {
      result = v54[0];
    }

    else
    {
      v27 = v54[0];
      v28 = sub_22B35DB9C();

      v29 = v28;
      swift_willThrow();
      v48(v8, v50, v4);
      v30 = v28;
      v31 = sub_22B36050C();
      v32 = sub_22B360D0C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v53 = v5;
        v34 = v33;
        v35 = swift_slowAlloc();
        v52 = v4;
        v36 = v35;
        v37 = swift_slowAlloc();
        v54[0] = v37;
        *v34 = 136315394;
        v38 = sub_22B20EC98(v47);
        v51 = v8;
        v40 = sub_22B1A7B20(v38, v39, v54);

        *(v34 + 4) = v40;
        *(v34 + 12) = 2112;
        v41 = v29;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 14) = v42;
        *v36 = v42;
        _os_log_impl(&dword_22B116000, v31, v32, "[CoreDataCloudKitStack] Error saving changes for %s. %@", v34, 0x16u);
        sub_22B123284(v36, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v36, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x23188F650](v37, -1, -1);
        MEMORY[0x23188F650](v34, -1, -1);

        v43 = v52;
        v44 = v51;
      }

      else
      {

        v44 = v8;
        v43 = v4;
      }

      v26(v44, v43);
      result = swift_willThrow();
    }
  }

  v45 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_22B207820()
{
  v1 = sub_22B360D5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22B35DC4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v19[-v13];
  result = *(v0 + 112);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = [result URL];
  if (!result)
  {
    return result;
  }

  v16 = result;
  sub_22B35DC0C();

  (*(v7 + 32))(v14, v10, v6);
  result = *(v0 + 112);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v17 = [result persistentStoreCoordinator];
  if (v17)
  {
    v18 = v17;
    sub_22B360D4C();
    sub_22B360F2C();

    (*(v2 + 8))(v5, v1);
  }

  return (*(v7 + 8))(v14, v6);
}

id sub_22B207A4C()
{
  v1 = sub_22B360D5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22B35DC4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v19[-v13];
  result = *(v0 + 120);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = [result URL];
  if (!result)
  {
    return result;
  }

  v16 = result;
  sub_22B35DC0C();

  (*(v7 + 32))(v14, v10, v6);
  result = *(v0 + 120);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v17 = [result persistentStoreCoordinator];
  if (v17)
  {
    v18 = v17;
    sub_22B360D4C();
    sub_22B360F2C();

    (*(v2 + 8))(v5, v1);
  }

  return (*(v7 + 8))(v14, v6);
}

uint64_t sub_22B207C78(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22B207D24(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x23188EAC0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_22B36109C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_22B207E4C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

id sub_22B207EFC()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[18];
  }

  else
  {
    v3 = sub_22B207F58(v0);
    v4 = v0[18];
    v0[18] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_22B207F58(void *a1)
{
  v266 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v237 = &v227 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v227 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v227 - v8;
  MEMORY[0x28223BE20](v10);
  v234 = &v227 - v11;
  v263 = sub_22B35DC4C();
  v265 = *(v263 - 8);
  v12 = v265[8];
  MEMORY[0x28223BE20](v263);
  v259 = &v227 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v260 = &v227 - v15;
  MEMORY[0x28223BE20](v16);
  v264 = &v227 - v17;
  v18 = sub_22B36052C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v227 = &v227 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v227 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v227 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v227 - v29;
  if (qword_28140A0C8 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v235 = v9;
    v236 = v6;
    v31 = __swift_project_value_buffer(v18, qword_28140BD10);
    swift_beginAccess();
    v32 = *(v19 + 16);
    v229 = v19 + 16;
    v230 = v31;
    v228 = v32;
    v32(v30, v31, v18);
    v33 = sub_22B36050C();
    v34 = sub_22B360D2C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_22B116000, v33, v34, "[CoreDataCloudKitStack] Setting up NSPersistentCloudKitContainer", v35, 2u);
      MEMORY[0x23188F650](v35, -1, -1);
    }

    v231 = *(v19 + 8);
    v232 = v19 + 8;
    v231(v30, v18);
    v36 = sub_22B35EF2C();
    if (!v36)
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      v228(v27, v230, v233);
      v208 = sub_22B36050C();
      v209 = sub_22B360D1C();
      if (os_log_type_enabled(v208, v209))
      {
        v210 = swift_slowAlloc();
        *v210 = 0;
        _os_log_impl(&dword_22B116000, v208, v209, "[CoreDataCloudKitStack] Could not set up NSPersistentCloudKitContainerOptions", v210, 2u);
        MEMORY[0x23188F650](v210, -1, -1);
      }

      v211 = v27;
LABEL_84:
      v231(v211, v233);
      exit(1);
    }

    v37 = v36;
    v38 = v266[10];
    v39 = v266[11];
    v40 = sub_22B36081C();
    v41 = sub_22B36081C();
    v42 = [v37 URLForResource:v40 withExtension:v41];

    if (!v42)
    {
      goto LABEL_76;
    }

    v262 = v24;
    v233 = v18;
    sub_22B35DC0C();

    v43 = objc_allocWithZone(MEMORY[0x277CBE450]);
    v44 = sub_22B35DBDC();
    v45 = [v43 initWithContentsOfURL_];

    if (!v45)
    {
      goto LABEL_77;
    }

    v46 = objc_allocWithZone(MEMORY[0x277CBE470]);
    v47 = v45;
    v48 = sub_22B36081C();
    v49 = [v46 initWithName:v48 managedObjectModel:v47];

    v251 = v47;
    v50 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v252 = v49;
    v51 = [v50 init];
    v52 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v267 = v51;
    v53 = [v52 init];
    v54 = objc_opt_self();
    v268 = v53;
    v55 = sub_22B36081C();
    v56 = sub_22B36081C();
    v57 = [v54 homeenergyd:v55 optionsWithContainerIdentifier:v56 apnsServiceName:?];

    if (!v57)
    {
      goto LABEL_78;
    }

    v58 = v57;
    v59 = sub_22B36081C();
    v60 = sub_22B36081C();
    v61 = [v54 homeenergyd:v59 optionsWithContainerIdentifier:v60 apnsServiceName:?];

    if (!v61)
    {
      v228(v262, v230, v233);
      v212 = sub_22B36050C();
      v213 = sub_22B360D1C();
      if (os_log_type_enabled(v212, v213))
      {
        v214 = swift_slowAlloc();
        *v214 = 0;
        _os_log_impl(&dword_22B116000, v212, v213, "[CoreDataCloudKitStack] Could not set up NSPersistentCloudKitContainerOptions", v214, 2u);
        MEMORY[0x23188F650](v214, -1, -1);
      }

      v211 = v262;
      goto LABEL_84;
    }

    v62 = v263;
    v250 = swift_allocBox();
    v64 = v63;
    v255 = v61;
    v65 = MEMORY[0x23188EEB0]();
    sub_22B34CE74(0xD000000000000015, 1, v64);
    v249 = 0;
    objc_autoreleasePoolPop(v65);
    v66 = sub_22B36081C();
    v67 = v267;
    [v267 setConfiguration_];

    v68 = sub_22B36081C();
    v69 = v62;
    v70 = v268;
    [v268 setConfiguration_];

    v71 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v58 setOperationMemoryThresholdBytes_];

    v72 = v265;
    v73 = v265[2];
    v74 = v259;
    v248 = v64;
    v256 = v73;
    v257 = v265 + 2;
    v73(v259, v64, v69);
    v75 = v266[6];
    v76 = v260;
    v245 = v266[7];
    v246 = v75;
    sub_22B35DBFC();
    v77 = v72[1];
    v77(v74, v69);
    v78 = sub_22B35DBDC();
    v261 = v77;
    v262 = (v72 + 1);
    v77(v76, v69);
    [v67 setURL_];

    [v58 setDatabaseScope_];
    [v67 setCloudKitContainerOptions_];

    v79 = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
    v80 = sub_22B360F8C();
    v244 = *MEMORY[0x277CBE210];
    [v67 setOption:v80 forKey:?];

    v81 = sub_22B360F9C();
    v243 = *MEMORY[0x277CBE218];
    [v67 setOption:v81 forKey:?];

    v82 = sub_22B360F8C();
    v242 = *MEMORY[0x277CBE270];
    [v67 setOption:v82 forKey:?];

    v247 = v79;
    v83 = sub_22B360F8C();
    v258 = *MEMORY[0x277CBE280];
    [v67 setOption:v83 forKey:?];

    v84 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v85 = sub_22B36081C();
    [v67 setValue:v84 forPragmaNamed:v85];

    v86 = sub_22B35EE8C();
    *(&v274 + 1) = v86;
    v87 = sub_22B20EF9C(&qword_281409378, MEMORY[0x277D073A0]);
    *&v275 = v87;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    v89 = *MEMORY[0x277D07378];
    v90 = *(v86 - 8);
    v18 = *(v90 + 104);
    v91 = v90 + 104;
    (v18)(boxed_opaque_existential_1, v89, v86);
    LOBYTE(v84) = sub_22B35E0CC();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    v240 = v86;
    v241 = v58;
    v238 = v91;
    v239 = v87;
    v254 = v89;
    v253 = v18;
    if ((v84 & 1) == 0)
    {
      goto LABEL_30;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_22B364840;
    v93 = *MEMORY[0x277CBE328];
    *(v92 + 32) = sub_22B36084C();
    v94 = MEMORY[0x277D839B0];
    *(v92 + 40) = v95;
    *(v92 + 72) = v94;
    *(v92 + 48) = 1;
    v96 = *MEMORY[0x277CBE340];
    *(v92 + 80) = sub_22B36084C();
    *(v92 + 88) = v97;
    *(v92 + 120) = MEMORY[0x277D837D0];
    *(v92 + 96) = 0xD000000000000020;
    *(v92 + 104) = 0x800000022B36C810;
    v98 = *MEMORY[0x277CBE330];
    *(v92 + 128) = sub_22B36084C();
    *(v92 + 136) = v99;
    *(v92 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    *(v92 + 144) = &unk_283EF80B8;
    *(v92 + 176) = sub_22B36084C();
    *(v92 + 184) = v100;
    *(v92 + 216) = v94;
    *(v92 + 192) = 1;
    v6 = sub_22B321AAC(v92);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v101 = 0;
    v30 = v6 + 64;
    v102 = 1 << v6[32];
    v103 = -1;
    if (v102 < 64)
    {
      v103 = ~(-1 << v102);
    }

    v19 = v103 & *(v6 + 8);
    v27 = ((v102 + 63) >> 6);
    if (v19)
    {
      break;
    }

LABEL_14:
    if (v27 <= (v101 + 1))
    {
      v104 = v101 + 1;
    }

    else
    {
      v104 = v27;
    }

    v9 = v104 - 1;
    while (1)
    {
      v24 = (v101 + 1);
      if (__OFADD__(v101, 1))
      {
        break;
      }

      if (v24 >= v27)
      {
        v19 = 0;
        v271 = 0u;
        v272 = 0u;
        v270 = 0u;
        goto LABEL_22;
      }

      v19 = *&v30[8 * v24];
      ++v101;
      if (v19)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  while (1)
  {
    v24 = v101;
LABEL_21:
    v105 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v106 = v105 | (v24 << 6);
    v107 = (*(v6 + 6) + 16 * v106);
    v108 = *v107;
    v109 = v107[1];
    sub_22B170C58(*(v6 + 7) + 32 * v106, v269);
    *&v270 = v108;
    *(&v270 + 1) = v109;
    sub_22B172454(v269, &v271);

    v9 = v24;
LABEL_22:
    aBlock = v270;
    v274 = v271;
    v275 = v272;
    if (!*(&v270 + 1))
    {
      break;
    }

    sub_22B172454(&v274, &v270);
    sub_22B128014(0, &qword_281409270, 0x277D82BB8);
    v110 = swift_dynamicCast();
    v111 = *&v269[0];
    v18 = sub_22B36081C();

    if (v110)
    {
      v112 = v111;
    }

    else
    {
      v112 = 0;
    }

    [v267 setOption:v112 forKey:v18];

    v101 = v9;
    if (!v19)
    {
      goto LABEL_14;
    }
  }

  v69 = v263;
  v87 = v239;
  v86 = v240;
  v89 = v254;
  v18 = v253;
LABEL_30:
  *(&v274 + 1) = v86;
  *&v275 = v87;
  v113 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  (v18)(v113, v89, v86);
  v114 = sub_22B35E0CC();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v115 = v87;
  if (v114)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B364840;
    v117 = *MEMORY[0x277CBE328];
    *(inited + 32) = sub_22B36084C();
    *(inited + 40) = v118;
    v119 = MEMORY[0x277D839B0];
    *(inited + 72) = MEMORY[0x277D839B0];
    v24 = 1;
    *(inited + 48) = 1;
    v120 = *MEMORY[0x277CBE340];
    *(inited + 80) = sub_22B36084C();
    *(inited + 88) = v121;
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = 0xD00000000000001FLL;
    *(inited + 104) = 0x800000022B36C7F0;
    v122 = *MEMORY[0x277CBE330];
    *(inited + 128) = sub_22B36084C();
    *(inited + 136) = v123;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    *(inited + 144) = &unk_283EF80E8;
    *(inited + 176) = sub_22B36084C();
    *(inited + 184) = v124;
    *(inited + 216) = v119;
    *(inited + 192) = 1;
    v30 = sub_22B321AAC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
    swift_arrayDestroy();
    v125 = 0;
    v6 = v30 + 64;
    v126 = 1 << v30[32];
    v127 = -1;
    if (v126 < 64)
    {
      v127 = ~(-1 << v126);
    }

    v19 = v127 & *(v30 + 8);
    v27 = ((v126 + 63) >> 6);
    if (!v19)
    {
      goto LABEL_35;
    }

LABEL_34:
    v18 = v125;
LABEL_42:
    v129 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v130 = v129 | (v18 << 6);
    v131 = (*(v30 + 6) + 16 * v130);
    v133 = *v131;
    v132 = v131[1];
    sub_22B170C58(*(v30 + 7) + 32 * v130, v269);
    *&v270 = v133;
    *(&v270 + 1) = v132;
    sub_22B172454(v269, &v271);

    v9 = v18;
    while (1)
    {
      aBlock = v270;
      v274 = v271;
      v275 = v272;
      if (!*(&v270 + 1))
      {
        break;
      }

      sub_22B172454(&v274, &v270);
      sub_22B128014(0, &qword_281409270, 0x277D82BB8);
      v134 = swift_dynamicCast();
      v135 = *&v269[0];
      v24 = sub_22B36081C();

      if (v134)
      {
        v136 = v135;
      }

      else
      {
        v136 = 0;
      }

      [v268 setOption:v136 forKey:v24];

      v125 = v9;
      if (v19)
      {
        goto LABEL_34;
      }

LABEL_35:
      if (v27 <= (v125 + 1))
      {
        v128 = v125 + 1;
      }

      else
      {
        v128 = v27;
      }

      v9 = v128 - 1;
      while (1)
      {
        v18 = (v125 + 1);
        if (__OFADD__(v125, 1))
        {
          goto LABEL_73;
        }

        if (v18 >= v27)
        {
          break;
        }

        v19 = *&v6[8 * v18];
        ++v125;
        if (v19)
        {
          goto LABEL_42;
        }
      }

      v19 = 0;
      v271 = 0u;
      v272 = 0u;
      v270 = 0u;
    }

    v69 = v263;
    v115 = v239;
    v86 = v240;
  }

  v137 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v138 = v255;
  [v255 setOperationMemoryThresholdBytes_];

  v139 = v259;
  v256(v259, v248, v69);
  *&aBlock = 0x5F646572616873;
  *(&aBlock + 1) = 0xE700000000000000;
  MEMORY[0x23188E270](v246, v245);
  v140 = v260;
  sub_22B35DBFC();

  v141 = v139;
  v142 = v261;
  v261(v141, v69);
  v143 = sub_22B35DBDC();
  v142(v140, v69);
  v144 = v268;
  [v268 setURL_];

  [v138 setDatabaseScope_];
  [v144 setCloudKitContainerOptions_];

  v145 = sub_22B360F8C();
  [v144 setOption:v145 forKey:v244];

  v146 = sub_22B360F9C();
  [v144 setOption:v146 forKey:v243];

  v147 = sub_22B360F8C();
  [v144 setOption:v147 forKey:v242];

  v148 = sub_22B360F8C();
  [v144 setOption:v148 forKey:v258];

  v149 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v150 = sub_22B36081C();
  [v144 setValue:v149 forPragmaNamed:v150];

  *(&v274 + 1) = v86;
  *&v275 = v115;
  v151 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v253(v151, v254, v86);
  LOBYTE(v149) = sub_22B35E0CC();
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  if (v149)
  {
    v152 = [v267 URL];
    if (v152)
    {
      v153 = v234;
      v154 = v152;
      sub_22B35DC0C();

      v155 = 0;
    }

    else
    {
      v155 = 1;
      v153 = v234;
    }

    v156 = v235;
    v157 = v265;
    v158 = v265[7];
    v158(v153, v155, 1, v69);
    v256(v156, v264, v69);
    v158(v156, 0, 1, v69);
    v159 = [v267 options];
    v259 = sub_22B128014(0, &qword_281409270, 0x277D82BB8);
    v160 = sub_22B3606EC();

    sub_22B2A5AC0(v160);

    v258 = type metadata accessor for CoreDataServerHandlingPolicy();
    v161 = v153;
    v162 = [objc_allocWithZone(v258) init];
    v163 = v157[6];
    v265 = v157 + 6;
    v260 = v163;
    v164 = 0;
    if ((v163)(v161, 1, v69) != 1)
    {
      v164 = sub_22B35DBDC();
      v261(v161, v69);
    }

    if ((v260)(v156, 1, v69) == 1)
    {
      v165 = 0;
    }

    else
    {
      v165 = sub_22B35DBDC();
      v261(v156, v69);
    }

    v166 = objc_allocWithZone(MEMORY[0x277CBE510]);
    v167 = sub_22B3606CC();

    v168 = [v166 initForStoreWithURL:v164 usingModelAtURL:v165 options:v167 policy:v162];

    v169 = v266[17];
    v266[17] = v168;

    v170 = [v268 URL];
    if (v170)
    {
      v171 = v236;
      v172 = v170;
      sub_22B35DC0C();

      v173 = 0;
    }

    else
    {
      v173 = 1;
      v171 = v236;
    }

    v174 = v237;
    v158(v171, v173, 1, v69);
    v256(v174, v264, v69);
    v158(v174, 0, 1, v69);
    v175 = [v268 options];
    v176 = sub_22B3606EC();

    sub_22B2A5AC0(v176);

    v177 = [objc_allocWithZone(v258) init];
    if ((v260)(v171, 1, v69) == 1)
    {
      v178 = 0;
    }

    else
    {
      v178 = sub_22B35DBDC();
      v261(v171, v69);
    }

    if ((v260)(v174, 1, v69) == 1)
    {
      v179 = 0;
    }

    else
    {
      v179 = sub_22B35DBDC();
      v261(v174, v69);
    }

    v180 = objc_allocWithZone(MEMORY[0x277CBE510]);
    v181 = sub_22B3606CC();

    v182 = [v180 initForStoreWithURL:v178 usingModelAtURL:v179 options:v181 policy:v177];

    v183 = v266[16];
    v266[16] = v182;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v184 = swift_allocObject();
  *(v184 + 16) = xmmword_22B363950;
  v185 = v267;
  v186 = v268;
  *(v184 + 32) = v267;
  *(v184 + 40) = v186;
  sub_22B128014(0, &qword_281409288, 0x277CBE4E0);
  v187 = v252;
  v267 = v185;
  v188 = v186;
  v189 = sub_22B360A3C();

  [v187 setPersistentStoreDescriptions_];

  v190 = swift_allocObject();
  v191 = v266;
  v190[2] = v250;
  v190[3] = v191;
  v190[4] = v187;
  *&v275 = sub_22B20EFE4;
  *(&v275 + 1) = v190;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v274 = sub_22B2A62A0;
  *(&v274 + 1) = &block_descriptor_44;
  v192 = _Block_copy(&aBlock);

  [v187 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v192);
  v193 = objc_opt_self();
  v194 = [v193 defaultCenter];
  [v194 addObserver:v191 selector:sel_handlePersistentCloudKitContainerEventChanged_ name:*MEMORY[0x277CBE1F0] object:0];

  v195 = [v193 defaultCenter];
  v196 = *MEMORY[0x277CBE260];
  v197 = [v187 persistentStoreCoordinator];
  [v195 addObserver:v191 selector:sel_storeRemoteChange_ name:v196 object:v197];

  v198 = [v187 newBackgroundContext];
  v199 = v191[12];
  v191[12] = v198;
  v200 = v198;

  [v200 setAutomaticallyMergesChangesFromParent_];
  [v191[12] setMergePolicy_];
  v201 = v191[4];
  v202 = v191[5];
  v203 = v191[12];
  v204 = sub_22B36081C();
  [v203 setTransactionAuthor_];

  [v191[12] setUndoManager_];
  v205 = v191[12];
  v206 = v249;
  sub_22B360E7C();
  if (v206)
  {

    v228(v227, v230, v233);
    v215 = v206;
    v216 = sub_22B36050C();
    v217 = sub_22B360D1C();

    if (os_log_type_enabled(v216, v217))
    {
      v218 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      *v218 = 138412290;
      v220 = v206;
      v221 = _swift_stdlib_bridgeErrorToNSError();
      *(v218 + 4) = v221;
      *v219 = v221;
      _os_log_impl(&dword_22B116000, v216, v217, "[CoreDataCloudKitStack] Failed to pin background context to the current generation:%@", v218, 0xCu);
      sub_22B123284(v219, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v219, -1, -1);
      MEMORY[0x23188F650](v218, -1, -1);
    }

    v231(v227, v233);
    v222 = [objc_opt_self() processInfo];
    v223 = [v222 processName];

    v224 = sub_22B36084C();
    v226 = v225;

    LOWORD(aBlock) = 1;
    BYTE2(aBlock) = 9;
    *(&aBlock + 1) = v224;
    v274 = v226;
    static AutoBugCaptureManager.sendIssue(_:)(&aBlock);
    exit(1);
  }

  v261(v264, v263);

  return v187;
}

void sub_22B209BE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v56 = a4;
  v57 = a5;
  v7 = sub_22B35DC4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  v15 = sub_22B36052C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_projectBox();
  if (a2)
  {
    v21 = v20;
    v22 = sub_22B35DB8C();
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v15, qword_28140BD10);
    swift_beginAccess();
    (*(v16 + 16))(v19, v23, v15);
    v24 = v22;
    v25 = sub_22B36050C();
    v26 = sub_22B360D1C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&dword_22B116000, v25, v26, "[CoreDataCloudKitStack] Failed to load persistent stores:%{public}@", v27, 0xCu);
      sub_22B123284(v28, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v28, -1, -1);
      MEMORY[0x23188F650](v27, -1, -1);
    }

    v30 = (*(v16 + 8))(v19, v15);
    MEMORY[0x23188EEB0](v30);
    sub_22B20A200(v21);
  }

  v31 = v57;
  v32 = [a1 cloudKitContainerOptions];
  if (v32)
  {
    v33 = v32;
    v34 = v7;
    v35 = v11;
    if ([v32 databaseScope] == 2)
    {
      v36 = v34;
      v37 = [v31 persistentStoreCoordinator];
      v38 = [a1 URL];
      if (!v38)
      {
        __break(1u);
        goto LABEL_19;
      }

      v39 = v38;
      sub_22B35DC0C();

      v40 = sub_22B35DBDC();
      (*(v8 + 8))(v14, v34);
      v41 = [v37 persistentStoreForURL_];

      v42 = *(v56 + 112);
      *(v56 + 112) = v41;
      v34 = v36;

      v43 = sub_22B35EE8C();
      v59 = v43;
      v60 = sub_22B20EF9C(&qword_281409378, MEMORY[0x277D073A0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
      (*(*(v43 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07378], v43);
      LOBYTE(v43) = sub_22B35E0CC();
      __swift_destroy_boxed_opaque_existential_0(v58);
      if (v43)
      {
        [*(v56 + 136) startListening];
      }
    }

    if ([v33 databaseScope] != 3)
    {
LABEL_7:

      return;
    }

    v45 = v8;
    v46 = [v31 persistentStoreCoordinator];
    v47 = [a1 URL];
    if (v47)
    {
      v48 = v47;
      sub_22B35DC0C();

      v49 = sub_22B35DBDC();
      (*(v45 + 8))(v35, v34);
      v50 = [v46 persistentStoreForURL_];

      v51 = v56;
      v52 = *(v56 + 120);
      *(v56 + 120) = v50;

      v53 = sub_22B35EE8C();
      v59 = v53;
      v60 = sub_22B20EF9C(&qword_281409378, MEMORY[0x277D073A0]);
      v54 = __swift_allocate_boxed_opaque_existential_1(v58);
      (*(*(v53 - 8) + 104))(v54, *MEMORY[0x277D07378], v53);
      LOBYTE(v53) = sub_22B35E0CC();
      __swift_destroy_boxed_opaque_existential_0(v58);
      if (v53)
      {
        v55 = *(v51 + 128);
        [v55 startListening];
      }

      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_22B20A200(uint64_t a1)
{
  v41[10] = *MEMORY[0x277D85DE8];
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  MEMORY[0x28223BE20](v7);
  v9 = v41 - v8 + 24;
  v10 = sub_22B35DC4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v15 = [objc_opt_self() defaultManager];
  swift_beginAccess();
  (*(v11 + 16))(v14, a1, v10);
  v16 = sub_22B35DBDC();
  (*(v11 + 8))(v14, v10);
  v41[0] = 0;
  LODWORD(v10) = [v15 removeItemAtURL:v16 error:v41];

  if (v10)
  {
    v17 = qword_28140A0C8;
    v18 = v41[0];
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v9, v19, v2);
    v20 = sub_22B36050C();
    v21 = sub_22B360D1C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22B116000, v20, v21, "[CoreDataCloudKitStack] Deleted the persistent store in attempt to recover", v22, 2u);
      MEMORY[0x23188F650](v22, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    v23 = [objc_opt_self() processInfo];
    v24 = [v23 processName];
  }

  else
  {
    v25 = v41[0];
    v26 = sub_22B35DB9C();

    swift_willThrow();
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v6, v27, v2);
    v28 = v26;
    v29 = sub_22B36050C();
    v30 = sub_22B360D1C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41[0] = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = sub_22B3613EC();
      v35 = sub_22B1A7B20(v33, v34, v41);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_22B116000, v29, v30, "[CoreDataCloudKitStack] Could not delete persistent store: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x23188F650](v32, -1, -1);
      MEMORY[0x23188F650](v31, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v23 = [objc_opt_self() processInfo];
    v24 = [v23 processName];
  }

  v36 = v24;

  v37 = sub_22B36084C();
  v39 = v38;

  LOWORD(v41[0]) = 513;
  BYTE2(v41[0]) = 4;
  v41[1] = v37;
  v41[2] = v39;
  v41[3] = 0;
  static AutoBugCaptureManager.sendIssue(_:)(v41);
  exit(1);
}

id sub_22B20A740(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 96);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 currentQueryGenerationToken];
  v9[0] = 0;
  v5 = [v3 setQueryGenerationFromToken:v4 error:v9];

  if (v5)
  {
    result = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_22B35DB9C();

    result = swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B20A830(uint64_t a1)
{
  v51[3] = *MEMORY[0x277D85DE8];
  v3 = sub_22B36052C();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = sub_22B35DC4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 152);
  if (v15)
  {
    v48 = v6;
    v49 = v3;
    v16 = objc_opt_self();
    v51[0] = 0;
    v17 = v15;
    v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:v51];
    v19 = v51[0];
    if (v18)
    {
      v20 = sub_22B35DCDC();
      v22 = v21;

      v23 = v20;
      v24 = v22;
      sub_22B20AD80(v14);
      sub_22B35DCEC();
      if (v1)
      {
        (*(v11 + 8))(v14, v10);
        if (qword_281409380 != -1)
        {
          swift_once();
        }

        v25 = v49;
        v26 = __swift_project_value_buffer(v49, qword_28140BCB8);
        swift_beginAccess();
        v27 = v50;
        v28 = v48;
        (*(v50 + 16))(v48, v26, v25);
        v29 = v1;
        v30 = sub_22B36050C();
        v31 = sub_22B360D1C();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = v23;
          v34 = swift_slowAlloc();
          *v32 = 138412290;
          v35 = v1;
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v32 + 4) = v36;
          *v34 = v36;
          _os_log_impl(&dword_22B116000, v30, v31, "[CoreDataCloudKitStack] Failed to write token data. Error = %@", v32, 0xCu);
          sub_22B123284(v34, &unk_27D8BAA90, &unk_22B362BC0);
          MEMORY[0x23188F650](v34, -1, -1);
          v37 = v32;
          v28 = v48;
          MEMORY[0x23188F650](v37, -1, -1);
          sub_22B12F174(v33, v24);
        }

        else
        {

          sub_22B12F174(v23, v24);
          v17 = v30;
        }

        result = (*(v27 + 8))(v28, v49);
      }

      else
      {
        (*(v11 + 8))(v14, v10);

        result = sub_22B12F174(v20, v22);
      }

      goto LABEL_18;
    }

    v39 = v19;
    v40 = sub_22B35DB9C();

    swift_willThrow();
    v3 = v49;
    v38 = v50;
  }

  else
  {
    v38 = v50;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v38 + 16))(v9, v41, v3);
  v42 = sub_22B36050C();
  v43 = sub_22B360D1C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_22B116000, v42, v43, "[CoreDataCloudKitStack] Failed to set history token", v44, 2u);
    MEMORY[0x23188F650](v44, -1, -1);
  }

  result = (*(v38 + 8))(v9, v3);
LABEL_18:
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B20AD80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22B35DC4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___tokenFile;
  swift_beginAccess();
  sub_22B20EEBC(v1 + v15, v14);
  if ((*(v4 + 48))(v14, 1, v3) != 1)
  {
    return (*(v4 + 32))(a1, v14, v3);
  }

  v16 = sub_22B123284(v14, &qword_27D8BA640, &qword_22B366A50);
  v17 = MEMORY[0x23188EEB0](v16);
  v18 = MEMORY[0x23188EEB0]();
  sub_22B34CE74(0xD000000000000015, 1, v7);
  objc_autoreleasePoolPop(v18);
  v19 = *(v1 + 16);
  v20 = *(v1 + 24);
  sub_22B35DBEC();
  (*(v4 + 8))(v7, v3);
  objc_autoreleasePoolPop(v17);
  (*(v4 + 16))(v11, a1, v3);
  (*(v4 + 56))(v11, 0, 1, v3);
  swift_beginAccess();
  sub_22B20EF2C(v11, v1 + v15);
  return swift_endAccess();
}

id sub_22B20B020()
{
  v1 = OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___historyQueue;
  v2 = *(v0 + OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___historyQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___historyQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    [v4 setMaxConcurrentOperationCount_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_22B20B0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_22B36052C();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B35DC4C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = 0x696B796772656E65;
  *(v5 + 24) = 0xEF6E656B6F742E74;
  strcpy((v5 + 32), "EnergyKitData");
  *(v5 + 46) = -4864;
  *(v5 + 64) = 0xD000000000000022;
  *(v5 + 72) = 0x800000022B36C720;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  (*(v15 + 56))(v5 + OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___tokenFile, 1, 1, v14);
  *(v5 + OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___historyQueue) = 0;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  *(v5 + 80) = a3;
  *(v5 + 88) = a4;
  v19 = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];
  *(v5 + 96) = v19;
  [v19 setAutomaticallyMergesChangesFromParent_];
  [*(v5 + 96) setMergePolicy_];
  v20 = *(v5 + 32);
  v21 = *(v5 + 40);
  v22 = *(v5 + 96);

  v23 = sub_22B36081C();

  [v22 setTransactionAuthor_];

  sub_22B20AD80(v18);
  v24 = sub_22B35DC6C();
  v26 = v25;
  v30[1] = v13;
  v30[2] = v10;
  (*(v15 + 8))(v18, v14);
  sub_22B128014(0, &qword_281409300, 0x277CCAAC8);
  sub_22B128014(0, &unk_2814092A0, 0x277CBE4C0);
  v27 = sub_22B360D3C();
  sub_22B12F174(v24, v26);
  v28 = *(v5 + 152);
  *(v5 + 152) = v27;

  return v5;
}

uint64_t sub_22B20B5C4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  sub_22B123284(v0 + OBJC_IVAR____TtC16HomeEnergyDaemon21CoreDataCloudKitStack____lazy_storage___tokenFile, &qword_27D8BA640, &qword_22B366A50);
  return v0;
}

uint64_t sub_22B20B66C()
{
  sub_22B20B5C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CoreDataCloudKitStack()
{
  result = qword_281409BC8;
  if (!qword_281409BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B20B718()
{
  sub_22B20B7E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22B20B7E4()
{
  if (!qword_28140B498)
  {
    sub_22B35DC4C();
    v0 = sub_22B360FFC();
    if (!v1)
    {
      atomic_store(v0, &qword_28140B498);
    }
  }
}

void sub_22B20B83C(uint64_t a1, uint64_t *a2)
{
  v149 = a2;
  v147 = sub_22B35DE9C();
  v146 = *(v147 - 8);
  v3 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v142 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v136 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v136 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v136 - v12;
  MEMORY[0x28223BE20](v14);
  v148 = &v136 - v15;
  v150 = sub_22B36052C();
  v155 = *(v150 - 8);
  v16 = *(v155 + 64);
  MEMORY[0x28223BE20](v150);
  v144 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v143 = &v136 - v19;
  MEMORY[0x28223BE20](v20);
  v145 = &v136 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v136 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v136 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v136 - v29;
  v31 = sub_22B35D8DC();
  if (!v31)
  {
    v154 = 0u;
    v153 = 0u;
    goto LABEL_14;
  }

  v32 = v31;
  v33 = *MEMORY[0x277CBE1F8];
  v151[0] = sub_22B36084C();
  v151[1] = v34;
  sub_22B36110C();
  if (!*(v32 + 16) || (v35 = sub_22B33B248(v152), (v36 & 1) == 0))
  {

    sub_22B1B0560(v152);
    v153 = 0u;
    v154 = 0u;
    goto LABEL_14;
  }

  sub_22B170C58(*(v32 + 56) + 32 * v35, &v153);
  sub_22B1B0560(v152);

  if (!*(&v154 + 1))
  {
LABEL_14:
    sub_22B123284(&v153, &unk_27D8BA950, &qword_22B364940);
    return;
  }

  sub_22B128014(0, &qword_281409280, 0x277CBE480);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v37 = v152[0];
  v38 = [v152[0] error];
  v141 = v37;
  if (v38)
  {
    v152[0] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    sub_22B128014(0, &qword_281408530, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      inited = v153;
      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v39 = v150;
      v40 = __swift_project_value_buffer(v150, qword_28140BCB8);
      swift_beginAccess();
      (*(v155 + 16))(v30, v40, v39);
      v41 = inited;
      v139 = sub_22B36050C();
      LODWORD(v40) = sub_22B360D1C();
      inited = v41;

      v138 = v40;
      v42 = v40;
      v43 = v139;
      if (os_log_type_enabled(v139, v42))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v137 = v45;
        *v44 = 138412290;
        v46 = inited;
        *(v44 + 4) = inited;
        v136 = v44;
        *v45 = v46;
        inited = v46;
        _os_log_impl(&dword_22B116000, v43, v138, "[CoreDataCloudKitStack] CK returned an error: %@", v44, 0xCu);
        v47 = v137;
        sub_22B123284(v137, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v47, -1, -1);
        MEMORY[0x23188F650](v136, -1, -1);
        v48 = inited;
      }

      else
      {
        v48 = v43;
        v43 = inited;
      }

      v37 = v141;

      (*(v155 + 8))(v30, v150);
    }
  }

  if (([v37 succeeded] & 1) == 0)
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA830, &qword_22B365D50);
  inited = swift_initStackObject();
  *&inited[2].isa = xmmword_22B3634C0;
  v49 = v149[14];
  if (!v49)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v50 = [v49 identifier];
  if (v50)
  {
    v51 = v50;
    v52 = sub_22B36084C();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = inited;
  inited[4].isa = v52;
  v55[5].isa = v54;
  v56 = v149[15];
  if (!v56)
  {
    goto LABEL_61;
  }

  v57 = [v56 identifier];
  if (v57)
  {
    v58 = v57;
    v59 = sub_22B36084C();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  v62 = inited;
  inited[6].isa = v59;
  v62[7].isa = v61;
  v63 = [v141 storeIdentifier];
  v139 = sub_22B36084C();
  v65 = v64;

  v149 = &v136;
  v152[0] = v139;
  v152[1] = v65;
  MEMORY[0x28223BE20](v66);
  *(&v136 - 2) = v152;
  LOBYTE(v63) = sub_22B207E4C(sub_22B20F014, (&v136 - 4), v62);
  v139 = v2;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA218, &qword_22B363548);
  swift_arrayDestroy();

  if ((v63 & 1) == 0)
  {
    v87 = v155;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v88 = v150;
    v89 = __swift_project_value_buffer(v150, qword_28140BD10);
    swift_beginAccess();
    (*(v87 + 16))(v27, v89, v88);
    v90 = sub_22B36050C();
    v91 = sub_22B360D0C();
    v92 = os_log_type_enabled(v90, v91);
    v93 = v141;
    if (v92)
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_22B116000, v90, v91, "[CoreDataCloudKitStack] Ignore eventNotification because of no valid storeUUID.", v94, 2u);
      MEMORY[0x23188F650](v94, -1, -1);
    }

    (*(v87 + 8))(v27, v88);
    return;
  }

  v37 = v141;
  v67 = [v141 endDate];
  v68 = v155;
  if (!v67)
  {
LABEL_22:

    return;
  }

  v69 = v148;
  v70 = v67;
  sub_22B35DE5C();

  v71 = [v37 type];
  if (v71)
  {
    v72 = v146;
    v73 = v147;
    if (v71 == 1)
    {
      v95 = v150;
      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v96 = __swift_project_value_buffer(v95, qword_28140BCB8);
      swift_beginAccess();
      (*(v68 + 16))(v145, v96, v95);
      (*(v72 + 16))(v10, v69, v73);
      v97 = sub_22B36050C();
      v98 = sub_22B360D0C();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v151[0] = v149;
        *v99 = 136315138;
        sub_22B20EF9C(&qword_28140B488, MEMORY[0x277CC9578]);
        v100 = sub_22B36131C();
        v102 = v101;
        v103 = *(v72 + 8);
        v103(v10, v73);
        v104 = sub_22B1A7B20(v100, v102, v151);

        *(v99 + 4) = v104;
        _os_log_impl(&dword_22B116000, v97, v98, "[CoreDataCloudKitStack] Import finished at: %s", v99, 0xCu);
        v105 = v149;
        __swift_destroy_boxed_opaque_existential_0(v149);
        MEMORY[0x23188F650](v105, -1, -1);
        MEMORY[0x23188F650](v99, -1, -1);

        (*(v155 + 8))(v145, v150);
        v103(v148, v73);
        return;
      }

      v133 = *(v72 + 8);
      v133(v10, v73);
      (*(v68 + 8))(v145, v95);
    }

    else
    {
      v74 = v150;
      if (v71 == 2)
      {
        if (qword_281409380 != -1)
        {
          swift_once();
        }

        v75 = __swift_project_value_buffer(v74, qword_28140BCB8);
        swift_beginAccess();
        v76 = v143;
        (*(v68 + 16))(v143, v75, v74);
        (*(v72 + 16))(v7, v69, v73);
        v77 = sub_22B36050C();
        v78 = sub_22B360D0C();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          v151[0] = v149;
          *v79 = 136315138;
          sub_22B20EF9C(&qword_28140B488, MEMORY[0x277CC9578]);
          v80 = sub_22B36131C();
          v81 = v73;
          v83 = v82;
          v84 = *(v72 + 8);
          v84(v7, v81);
          v85 = sub_22B1A7B20(v80, v83, v151);

          *(v79 + 4) = v85;
          _os_log_impl(&dword_22B116000, v77, v78, "[CoreDataCloudKitStack] Export finished at: %s", v79, 0xCu);
          v86 = v149;
          __swift_destroy_boxed_opaque_existential_0(v149);
          MEMORY[0x23188F650](v86, -1, -1);
          MEMORY[0x23188F650](v79, -1, -1);

          (*(v68 + 8))(v143, v150);
          v84(v148, v147);
        }

        else
        {

          v135 = *(v72 + 8);
          v135(v7, v73);
          (*(v68 + 8))(v76, v150);
          v135(v69, v73);
        }

        return;
      }

      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v120 = __swift_project_value_buffer(v74, qword_28140BCB8);
      swift_beginAccess();
      v121 = v144;
      (*(v68 + 16))(v144, v120, v74);
      v122 = v142;
      (*(v72 + 16))(v142, v69, v73);
      v123 = sub_22B36050C();
      v124 = sub_22B360D0C();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = v122;
        v126 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v151[0] = v149;
        *v126 = 136315138;
        sub_22B20EF9C(&qword_28140B488, MEMORY[0x277CC9578]);
        v127 = sub_22B36131C();
        v129 = v128;
        v130 = *(v72 + 8);
        v130(v125, v73);
        v131 = sub_22B1A7B20(v127, v129, v151);

        *(v126 + 4) = v131;
        _os_log_impl(&dword_22B116000, v123, v124, "[CoreDataCloudKitStack] Unexpected event: %s)", v126, 0xCu);
        v132 = v149;
        __swift_destroy_boxed_opaque_existential_0(v149);
        MEMORY[0x23188F650](v132, -1, -1);
        MEMORY[0x23188F650](v126, -1, -1);

        (*(v68 + 8))(v144, v150);
        v130(v148, v147);
        return;
      }

      v133 = *(v72 + 8);
      v133(v122, v73);
      (*(v68 + 8))(v121, v74);
    }

    v133(v69, v73);
    return;
  }

  v106 = v146;
  v107 = v147;
  if (qword_281409380 != -1)
  {
    swift_once();
  }

  v108 = v150;
  v109 = __swift_project_value_buffer(v150, qword_28140BCB8);
  swift_beginAccess();
  (*(v68 + 16))(v24, v109, v108);
  (*(v106 + 16))(v13, v69, v107);
  v110 = sub_22B36050C();
  v111 = v69;
  v112 = sub_22B360D0C();
  if (os_log_type_enabled(v110, v112))
  {
    v113 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v151[0] = v149;
    *v113 = 136315138;
    sub_22B20EF9C(&qword_28140B488, MEMORY[0x277CC9578]);
    v114 = sub_22B36131C();
    v116 = v115;
    v117 = *(v106 + 8);
    v117(v13, v107);
    v118 = sub_22B1A7B20(v114, v116, v151);

    *(v113 + 4) = v118;
    _os_log_impl(&dword_22B116000, v110, v112, "[CoreDataCloudKitStack] Setup finished at: %s", v113, 0xCu);
    v119 = v149;
    __swift_destroy_boxed_opaque_existential_0(v149);
    MEMORY[0x23188F650](v119, -1, -1);
    MEMORY[0x23188F650](v113, -1, -1);

    (*(v155 + 8))(v24, v150);
    v117(v148, v107);
  }

  else
  {

    v134 = *(v106 + 8);
    v134(v13, v107);
    (*(v68 + 8))(v24, v108);
    v134(v111, v107);
  }
}

void sub_22B20CB54(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B36052C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v69 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v69 - v15;
  v17 = sub_22B35D8DC();
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = v17;
  v19 = *MEMORY[0x277CBE300];
  v81 = sub_22B36084C();
  v82 = v20;
  sub_22B36110C();
  if (!*(v18 + 16) || (v21 = sub_22B33B248(&aBlock), (v22 & 1) == 0))
  {

    sub_22B1B0560(&aBlock);
LABEL_10:
    v83 = 0u;
    v84 = 0u;
    goto LABEL_11;
  }

  sub_22B170C58(*(v18 + 56) + 32 * v21, &v83);
  sub_22B1B0560(&aBlock);

  if (!*(&v84 + 1))
  {
LABEL_11:
    sub_22B123284(&v83, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v72 = aBlock;
  v73 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA830, &qword_22B365D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634C0;
  v24 = *(a2 + 112);
  if (!v24)
  {
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  v70 = v13;
  v74 = a2;
  v25 = [v24 identifier];
  if (v25)
  {
    v26 = v25;
    v71 = sub_22B36084C();
    v28 = v27;

    v29 = v71;
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  *(inited + 32) = v29;
  *(inited + 40) = v28;
  v34 = *(v74 + 120);
  if (!v34)
  {
    goto LABEL_50;
  }

  v35 = [v34 identifier];
  if (v35)
  {
    v36 = v35;
    v71 = sub_22B36084C();
    v38 = v37;

    v39 = v71;
  }

  else
  {
    v39 = 0;
    v38 = 0;
  }

  v71 = &v69;
  *(inited + 48) = v39;
  *(inited + 56) = v38;
  aBlock = v72;
  v76 = v73;
  MEMORY[0x28223BE20](v35);
  *(&v69 - 2) = &aBlock;
  v40 = v85;
  v41 = sub_22B207E4C(sub_22B20EE8C, (&v69 - 4), inited);
  v85 = v40;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA218, &qword_22B363548);
  swift_arrayDestroy();

  if (v41)
  {
    v42 = sub_22B35D8DC();
    if (v42)
    {
      v43 = v42;
      v44 = *MEMORY[0x277CBE200];
      v81 = sub_22B36084C();
      v82 = v45;
      sub_22B36110C();
      if (*(v43 + 16))
      {
        v46 = sub_22B33B248(&aBlock);
        if (v47)
        {
          sub_22B170C58(*(v43 + 56) + 32 * v46, &v83);
          sub_22B1B0560(&aBlock);

          if (*(&v84 + 1))
          {
            sub_22B128014(0, &unk_2814092A0, 0x277CBE4C0);
            if (swift_dynamicCast())
            {
              v48 = aBlock;
              v49 = *(v74 + 152);
              if (v49 && (v50 = aBlock, v51 = v49, v52 = sub_22B360FBC(), v50, v51, (v52 & 1) != 0))
              {
                if (qword_28140A0C8 != -1)
                {
                  swift_once();
                }

                v53 = __swift_project_value_buffer(v3, qword_28140BD10);
                swift_beginAccess();
                v54 = v70;
                (*(v4 + 16))(v70, v53, v3);
                v55 = sub_22B36050C();
                v56 = sub_22B360D0C();
                if (os_log_type_enabled(v55, v56))
                {
                  v57 = swift_slowAlloc();
                  *v57 = 0;
                  _os_log_impl(&dword_22B116000, v55, v56, "[CoreDataCloudKitStack] Received remote change notification with repeated token", v57, 2u);
                  MEMORY[0x23188F650](v57, -1, -1);
                }

                else
                {
                }

                (*(v4 + 8))(v54, v3);
              }

              else
              {

                if (qword_28140A0C8 != -1)
                {
                  swift_once();
                }

                v62 = __swift_project_value_buffer(v3, qword_28140BD10);
                swift_beginAccess();
                (*(v4 + 16))(v10, v62, v3);
                v63 = sub_22B36050C();
                v64 = sub_22B360D0C();
                if (os_log_type_enabled(v63, v64))
                {
                  v65 = swift_slowAlloc();
                  *v65 = 0;
                  _os_log_impl(&dword_22B116000, v63, v64, "[CoreDataCloudKitStack] Received remote change notification", v65, 2u);
                  MEMORY[0x23188F650](v65, -1, -1);
                }

                (*(v4 + 8))(v10, v3);
                v66 = v74;
                v67 = sub_22B20B020();
                v79 = sub_22B20EEAC;
                v80 = v66;
                aBlock = MEMORY[0x277D85DD0];
                v76 = 1107296256;
                v77 = sub_22B118A6C;
                v78 = &block_descriptor_15;
                v68 = _Block_copy(&aBlock);

                [v67 addOperationWithBlock_];
                _Block_release(v68);
              }

              return;
            }

            goto LABEL_37;
          }

LABEL_36:
          sub_22B123284(&v83, &unk_27D8BA950, &qword_22B364940);
LABEL_37:
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v58 = __swift_project_value_buffer(v3, qword_28140BD10);
          swift_beginAccess();
          (*(v4 + 16))(v16, v58, v3);
          v59 = sub_22B36050C();
          v60 = sub_22B360D0C();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&dword_22B116000, v59, v60, "[CoreDataCloudKitStack] Received remote change notification with no token", v61, 2u);
            MEMORY[0x23188F650](v61, -1, -1);
          }

          (*(v4 + 8))(v16, v3);
          return;
        }
      }

      sub_22B1B0560(&aBlock);
    }

    v83 = 0u;
    v84 = 0u;
    goto LABEL_36;
  }

LABEL_12:
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v7, v30, v3);
  v31 = sub_22B36050C();
  v32 = sub_22B360D0C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_22B116000, v31, v32, "[CoreDataCloudKitStack] Ignore a store remote Change notification because of no valid storeUUID.", v33, 2u);
    MEMORY[0x23188F650](v33, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

void sub_22B20D4F0(uint64_t a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_22B36050C();
  v9 = sub_22B360D0C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v8, v9, "[CoreDataCloudKitStack]Processing Transactions", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  v11 = (*(v3 + 8))(v6, v2);
  v12 = MEMORY[0x23188EEB0](v11);
  sub_22B20DCC0(a1);
  objc_autoreleasePoolPop(v12);
}

uint64_t sub_22B20D6D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v6 = sub_22B35D8EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35D8CC();

  v12 = MEMORY[0x23188EEB0](v11);
  a4(v10, a1);
  objc_autoreleasePoolPop(v12);

  return (*(v7 + 8))(v10, v6);
}

void sub_22B20D7EC(void *a1, _BYTE *a2)
{
  v34 = a2;
  v4 = sub_22B36052C();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v33 - v13;
  v15 = [a1 changedObjectID];
  v16 = [v15 entity];

  v17 = [v16 name];
  if (v17)
  {
    v36 = v2;
    v18 = sub_22B36084C();
    v20 = v19;

    if (v18 == 0xD000000000000011 && 0x800000022B369070 == v20)
    {
    }

    else
    {
      v22 = sub_22B36134C();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v23 = [a1 changeType];
    if (v23 == 2)
    {
      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v4, qword_28140BCB8);
      swift_beginAccess();
      v25 = v35;
      (*(v35 + 16))(v10, v31, v4);
      v26 = sub_22B36050C();
      v32 = sub_22B360D0C();
      if (!os_log_type_enabled(v26, v32))
      {
        v7 = v10;
        goto LABEL_26;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22B116000, v26, v32, "[CoreDataCloudKitStack] CD_EnergySiteRecords deleted", v28, 2u);
      v14 = v10;
    }

    else if (v23 == 1)
    {
      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v4, qword_28140BCB8);
      swift_beginAccess();
      v25 = v35;
      (*(v35 + 16))(v7, v29, v4);
      v26 = sub_22B36050C();
      v30 = sub_22B360D0C();
      if (!os_log_type_enabled(v26, v30))
      {
        goto LABEL_26;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22B116000, v26, v30, "[CoreDataCloudKitStack] CD_EnergySiteRecords updated", v28, 2u);
      v14 = v7;
    }

    else
    {
      if (v23)
      {
        return;
      }

      *v34 = 1;
      if (qword_281409380 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v4, qword_28140BCB8);
      swift_beginAccess();
      v25 = v35;
      (*(v35 + 16))(v14, v24, v4);
      v26 = sub_22B36050C();
      v27 = sub_22B360D0C();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_25;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22B116000, v26, v27, "[CoreDataCloudKitStack] CD_EnergySiteRecords inserted", v28, 2u);
    }

    MEMORY[0x23188F650](v28, -1, -1);
LABEL_25:
    v7 = v14;
LABEL_26:

    (*(v25 + 8))(v7, v4);
  }
}

uint64_t sub_22B20DCC0(uint64_t a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() fetchHistoryAfterToken_];
  v8 = [objc_opt_self() fetchRequest];
  if (v8)
  {
    v9 = v8;
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_22B3634B0;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_22B1280E4();
    strcpy((v10 + 32), "EnergyKitData");
    *(v10 + 46) = -4864;
    v11 = sub_22B360CCC();
    [v9 setPredicate_];

    [v9 setFetchBatchSize_];
    [v7 setFetchRequest_];
  }

  [v7 setResultType_];
  [v7 setFetchBatchSize_];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v12, v2);

  v13 = sub_22B36050C();
  v14 = sub_22B360CFC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = *(a1 + 152);
    *(v15 + 4) = v17;
    *v16 = v17;
    v18 = v17;
    _os_log_impl(&dword_22B116000, v13, v14, "[CoreDataCloudKitStack] Fetching history since %@", v15, 0xCu);
    sub_22B123284(v16, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v19 = *(a1 + 96);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_22B20EEB4;
  *(v21 + 24) = v20;
  aBlock[4] = sub_22B12819C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_37;
  v22 = _Block_copy(aBlock);

  v23 = v19;
  v24 = v7;

  [v23 performBlockAndWait_];

  _Block_release(v22);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  return result;
}

void sub_22B20E184(uint64_t a1, uint64_t a2)
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v68 - v10;
  v12 = sub_22B35DF1C();
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v68 - v18;
  v20 = *(a1 + 96);
  *&v81[0] = 0;
  v21 = [v20 executeRequest:a2 error:{v81, v17}];
  v22 = *&v81[0];
  if (!v21)
  {
    v27 = *&v81[0];
    v28 = sub_22B35DB9C();

    swift_willThrow();
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v30 = v5;
    (*(v5 + 16))(v8, v29, v4);

    v31 = v28;
    v32 = sub_22B36050C();
    v33 = sub_22B360D1C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412546;
      v36 = *(a1 + 152);
      *(v34 + 4) = v36;
      *v35 = v36;
      *(v34 + 12) = 2112;
      v37 = v28;
      v38 = v36;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v39;
      v35[1] = v39;
      _os_log_impl(&dword_22B116000, v32, v33, "[CoreDataCloudKitStack] Failed to fetch history with token %@: %@", v34, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA90, &unk_22B362BC0);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v35, -1, -1);
      MEMORY[0x23188F650](v34, -1, -1);
    }

    else
    {
    }

    (*(v30 + 8))(v8, v4);
    goto LABEL_12;
  }

  v23 = v21;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    v40 = v22;
LABEL_23:

    goto LABEL_25;
  }

  v25 = v24;
  v26 = v22;
  if ([v25 result])
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
  }

  v81[0] = v79;
  v81[1] = v80;
  if (!*(&v80 + 1))
  {

    sub_22B123284(v81, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA838, &qword_22B365D58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v41 = v78;
  v42 = v78 >> 62;
  if (!(v78 >> 62))
  {
    v43 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_18;
    }

LABEL_38:

    goto LABEL_39;
  }

  v67 = v78;
  v43 = sub_22B36109C();
  v41 = v67;
  if (!v43)
  {
    goto LABEL_38;
  }

LABEL_18:
  v73 = v42;
  v75 = v43;
  v76 = v41;
  sub_22B35DF0C();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  v74 = v5;
  (*(v5 + 16))(v11, v44, v4);
  (*(v77 + 16))(v15, v19, v12);
  v45 = v76;
  swift_bridgeObjectRetain_n();
  v46 = sub_22B36050C();
  v72 = sub_22B360CFC();
  if (os_log_type_enabled(v46, v72))
  {
    v70 = v46;
    v47 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v79 = v69;
    *v47 = 136315394;
    sub_22B20EF9C(&qword_2814091D0, MEMORY[0x277CC95F0]);
    v68 = sub_22B36131C();
    v49 = v48;
    v71 = *(v77 + 8);
    v71(v15, v12);
    v50 = sub_22B1A7B20(v68, v49, &v79);

    *(v47 + 4) = v50;
    v51 = v47;
    *(v47 + 12) = 2048;
    v45 = v76;
    if (v73)
    {
      v52 = sub_22B36109C();
    }

    else
    {
      v52 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v51 + 14) = v52;

    v57 = v70;
    _os_log_impl(&dword_22B116000, v70, v72, "[CoreDataCloudKitStack] (%s) Found %ld transactions since last token with changes", v51, 0x16u);
    v58 = v69;
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x23188F650](v58, -1, -1);
    MEMORY[0x23188F650](v51, -1, -1);

    v56 = (*(v74 + 8))(v11, v4);
    v55 = v71;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v54 = v15;
    v55 = *(v77 + 8);
    v55(v54, v12);
    v56 = (*(v74 + 8))(v11, v4);
  }

  v59 = MEMORY[0x23188EEB0](v56);
  sub_22B20EA24(v45, a1);
  objc_autoreleasePoolPop(v59);
  v60 = v75 - 1;
  if (__OFSUB__(v75, 1))
  {
    __break(1u);
  }

  else if ((v45 & 0xC000000000000001) == 0)
  {
    if ((v60 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v60 < *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v61 = *(v45 + 8 * v60 + 32);
      goto LABEL_34;
    }

    __break(1u);
  }

  v61 = MEMORY[0x23188EAC0](v60, v45);
LABEL_34:
  v62 = v61;

  v63 = [v62 token];

  if (!v63)
  {
    v55(v19, v12);
LABEL_39:

    goto LABEL_12;
  }

  v64 = *(a1 + 152);
  *(a1 + 152) = v63;
  v65 = v63;

  v66 = MEMORY[0x23188EEB0]();
  sub_22B20A830(a1);
  objc_autoreleasePoolPop(v66);

  v55(v19, v12);
LABEL_12:
  [*(a1 + 96) reset];
LABEL_25:
  v53 = *MEMORY[0x277D85DE8];
}

void sub_22B20EA24(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_34:
    [*(a2 + 96) reset];
    return;
  }

LABEL_3:
  LOBYTE(v6) = 0;
  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v21 = v4 + 32;
  v22 = v4 & 0xFFFFFFFFFFFFFF8;
  v19 = v5;
  v20 = v4;
  v18 = v4 & 0xC000000000000001;
  while (1)
  {
    if (v8)
    {
      v9 = MEMORY[0x23188EAC0](v7, v4);
    }

    else
    {
      if (v7 >= *(v22 + 16))
      {
        goto LABEL_32;
      }

      v9 = *(v21 + 8 * v7);
    }

    v10 = v9;
    if (__OFADD__(v7++, 1))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v5 = sub_22B36109C();
      if (!v5)
      {
        goto LABEL_34;
      }

      goto LABEL_3;
    }

    if ((v6 & 1) == 0)
    {
      break;
    }

    LOBYTE(v6) = 1;
LABEL_5:
    if (v7 == v5)
    {
      goto LABEL_34;
    }
  }

  v6 = [v9 changes];
  if (!v6)
  {

    goto LABEL_5;
  }

  v23 = v10;
  sub_22B128014(0, &qword_281408578, 0x277CBE4A8);
  v12 = sub_22B360A5C();

  v24 = 0;
  if (!(v12 >> 62))
  {
    v6 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  v6 = sub_22B36109C();
  if (!v6)
  {
LABEL_28:

    goto LABEL_5;
  }

LABEL_15:
  v13 = 0;
  while (2)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x23188EAC0](v13, v12);
    }

    else
    {
      if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v14 = *(v12 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v24)
    {
LABEL_16:

      ++v13;
      if (v16 == v6)
      {

        LOBYTE(v6) = v24;
        v5 = v19;
        v4 = v20;
        v8 = v18;
        goto LABEL_5;
      }

      continue;
    }

    break;
  }

  v4 = MEMORY[0x23188EEB0]();
  sub_22B20D7EC(v15, &v24);
  if (!v3)
  {
    v3 = 0;
    objc_autoreleasePoolPop(v4);
    goto LABEL_16;
  }

  objc_autoreleasePoolPop(v4);
  __break(1u);
}

unint64_t sub_22B20EC98(char a1)
{
  result = 0x6373627553646461;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6772656E45646461;
      break;
    case 4:
    case 5:
    case 7:
    case 8:
      result = 0xD000000000000010;
      break;
    case 6:
    case 12:
      result = 0x6567617355646461;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
    case 11:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_22B20EE18(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_22B36134C() & 1;
    }
  }

  return result;
}

uint64_t sub_22B20EEBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B20EF2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B20EF9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22B20F038(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, uint64_t a10, void *a11)
{
  v119 = a5;
  v120 = a7;
  v116 = a2;
  v117 = a11;
  v118 = a4;
  v109 = a10;
  v103 = sub_22B35DE9C();
  v101 = *(v103 - 8);
  v15 = *(v101 + 64);
  MEMORY[0x28223BE20](v103);
  v100 = v16;
  v102 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22B36052C();
  v105 = *(v106 - 8);
  v17 = *(v105 + 64);
  v18 = MEMORY[0x28223BE20](v106);
  v104 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = MEMORY[0x23188EEB0](v18);
  v114 = MEMORY[0x23188EEB0]();
  v20 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v107 = "energyGuidanceTracker";
  v21 = sub_22B36081C();
  v22 = [v20 initWithEntityName_];

  [v22 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22B363640;
  v24 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v25 = sub_22B1280E4();
  *(v23 + 64) = v25;
  v26 = MEMORY[0x277D84958];
  v115 = a1;
  *(v23 + 32) = a1;
  v27 = v116;
  *(v23 + 40) = v116;
  v28 = MEMORY[0x277D849A0];
  *(v23 + 96) = v26;
  *(v23 + 104) = v28;
  v108 = a9;
  *(v23 + 72) = a9;
  *(v23 + 136) = v24;
  *(v23 + 144) = v25;
  v110 = a3;
  v30 = v118;
  v29 = v119;
  *(v23 + 112) = a3;
  *(v23 + 120) = v30;
  *(v23 + 176) = v24;
  *(v23 + 184) = v25;
  *(v23 + 152) = v29;
  *(v23 + 160) = a6;
  *(v23 + 216) = v24;
  *(v23 + 224) = v25;
  *(v23 + 192) = v120;
  *(v23 + 200) = a8;

  v111 = a6;

  v112 = a8;

  v31 = sub_22B360CCC();
  [v22 setPredicate_];
  v32 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v33 = sub_22B36081C();
  v34 = [v32 initWithKey:v33 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_22B363650;
  *(v35 + 32) = v34;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v36 = v34;
  v37 = sub_22B360A3C();

  [v22 setSortDescriptors_];

  [v22 setFetchLimit_];
  [v22 setPredicate_];

  v38 = v117[6];
  sub_22B35EE1C();
  v39 = v38;
  v70 = sub_22B360E9C();
  v71 = v100;
  v72 = v102;
  v73 = v101;
  v74 = v103;

  if (!(v70 >> 62))
  {
    v75 = v72;
    if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_20:

    goto LABEL_5;
  }

  v75 = v72;
  if (!sub_22B36109C())
  {
    goto LABEL_20;
  }

LABEL_10:
  v76 = v71;
  if ((v70 & 0xC000000000000001) != 0)
  {
    v77 = MEMORY[0x23188EAC0](0, v70);
LABEL_13:
    v78 = v77;

    objc_autoreleasePoolPop(v114);
    v79 = v115;
    if (!v78)
    {
      while (1)
      {
        v50 = objc_opt_self();
        v51 = sub_22B36081C();
        v52 = v117;
        v53 = [v50 insertNewObjectForEntityForName:v51 inManagedObjectContext:v117[6]];

        v54 = sub_22B36081C();
        v55 = sub_22B36081C();
        [v53 setValue:v54 forKeyPath:v55];

        v56 = sub_22B36144C();
        v57 = sub_22B36081C();
        [v53 setValue:v56 forKeyPath:v57];

        v58 = sub_22B35DDDC();
        v59 = sub_22B36081C();
        [v53 setValue:v58 forKey:v59];

        v60 = sub_22B36081C();
        v61 = sub_22B36081C();
        [v53 setValue:v60 forKeyPath:v61];

        v62 = sub_22B36081C();
        v63 = sub_22B36081C();
        [v53 setValue:v62 forKeyPath:v63];

        v64 = sub_22B36081C();
        v65 = sub_22B36081C();
        [v53 setValue:v64 forKeyPath:v65];

        v66 = v52[6];
        v67 = swift_allocObject();
        *(v67 + 16) = sub_22B12823C;
        *(v67 + 24) = v52;
        v125 = sub_22B128240;
        v126 = v67;
        aBlock = MEMORY[0x277D85DD0];
        v122 = 1107296256;
        v123 = sub_22B32556C;
        v124 = &block_descriptor_26;
        v68 = _Block_copy(&aBlock);
        v69 = v66;

        [v69 performBlockAndWait_];

        _Block_release(v68);
        LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

        if ((v68 & 1) == 0)
        {
          break;
        }

        __break(1u);
        swift_once();
        v40 = v106;
        v41 = __swift_project_value_buffer(v106, qword_28140BD10);
        swift_beginAccess();
        v42 = v105;
        v43 = v104;
        (*(v105 + 16))(v104, v41, v40);

        v44 = sub_22B36050C();
        v45 = sub_22B360D1C();

        v46 = os_log_type_enabled(v44, v45);
        v47 = v115;
        if (v46)
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          aBlock = v49;
          *v48 = 136380675;
          *(v48 + 4) = sub_22B1A7B20(v47, v27, &aBlock);
          _os_log_impl(&dword_22B116000, v44, v45, "Failed to fetch cache entry for %{private}s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v49);
          MEMORY[0x23188F650](v49, -1, -1);
          MEMORY[0x23188F650](v48, -1, -1);
        }

        (*(v42 + 8))(v43, v40);
LABEL_5:
        objc_autoreleasePoolPop(v114);
      }

      goto LABEL_7;
    }

    v80 = [v78 managedObjectContext];
    if (v80)
    {
      v81 = *(v73 + 16);
      v117 = v80;
      v81(v75, v109, v74);
      v82 = (*(v73 + 80) + 42) & ~*(v73 + 80);
      v83 = (v76 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
      v84 = (v83 + 23) & 0xFFFFFFFFFFFFFFF8;
      v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF8;
      v86 = swift_allocObject();
      *(v86 + 16) = v78;
      *(v86 + 24) = v79;
      *(v86 + 32) = v27;
      *(v86 + 40) = v108;
      (*(v73 + 32))(v86 + v82, v102, v103);
      v87 = (v86 + v83);
      v88 = v111;
      v90 = v117;
      v89 = v118;
      *v87 = v110;
      v87[1] = v89;
      v91 = (v86 + v84);
      v92 = v120;
      *v91 = v119;
      v91[1] = v88;
      v93 = (v86 + v85);
      v94 = v112;
      *v93 = v92;
      v93[1] = v94;
      *(v86 + ((v85 + 23) & 0xFFFFFFFFFFFFFFF8)) = v90;
      v95 = swift_allocObject();
      *(v95 + 16) = sub_22B2126DC;
      *(v95 + 24) = v86;
      v125 = sub_22B128240;
      v126 = v95;
      aBlock = MEMORY[0x277D85DD0];
      v122 = 1107296256;
      v123 = sub_22B32556C;
      v124 = &block_descriptor_36_0;
      v96 = _Block_copy(&aBlock);
      v97 = v90;

      v98 = v97;
      v99 = v78;

      [v98 performBlockAndWait_];

      _Block_release(v96);
      LOBYTE(v98) = swift_isEscapingClosureAtFileLocation();

      if ((v98 & 1) == 0)
      {
LABEL_7:
        objc_autoreleasePoolPop(v113);
        return;
      }

      __break(1u);
    }

    goto LABEL_7;
  }

  if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v77 = *(v70 + 32);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_22B20FCEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a6;
  v47 = a8;
  v45 = a4;
  v44 = a3;
  v48 = a10;
  v14 = sub_22B36052C();
  v41 = *(v14 - 8);
  v42 = v14;
  v15 = *(v41 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v40[1] = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x23188EEB0](v16);
  v18 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v19 = sub_22B36081C();
  v20 = [v18 initWithEntityName_];

  [v20 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22B363640;
  v22 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  v23 = sub_22B1280E4();
  *(v21 + 64) = v23;
  v24 = MEMORY[0x277D84958];
  v40[0] = a1;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  v25 = MEMORY[0x277D849A0];
  *(v21 + 96) = v24;
  *(v21 + 104) = v25;
  *(v21 + 72) = v44;
  *(v21 + 136) = v22;
  *(v21 + 144) = v23;
  v26 = v46;
  *(v21 + 112) = v45;
  *(v21 + 120) = a5;
  *(v21 + 176) = v22;
  *(v21 + 184) = v23;
  *(v21 + 152) = v26;
  *(v21 + 160) = a7;
  *(v21 + 216) = v22;
  *(v21 + 224) = v23;
  *(v21 + 192) = v47;
  *(v21 + 200) = a9;
  v47 = a2;

  v27 = sub_22B360CCC();
  [v20 setPredicate_];
  v28 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v29 = sub_22B36081C();
  v30 = [v28 initWithKey:v29 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22B363650;
  *(v31 + 32) = v30;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v32 = v30;
  v33 = sub_22B360A3C();

  [v20 setSortDescriptors_];

  [v20 setFetchLimit_];
  [v20 setPredicate_];

  v34 = *(v48 + 48);
  sub_22B35EE1C();
  v35 = v34;
  v36 = sub_22B360E9C();

  if (!(v36 >> 62))
  {
    result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    v39 = 0;
    goto LABEL_7;
  }

  result = sub_22B36109C();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v36 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x23188EAC0](0, v36);
    goto LABEL_6;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(v36 + 32);
LABEL_6:
    v39 = v38;

LABEL_7:
    objc_autoreleasePoolPop(v43);
    return v39;
  }

  __break(1u);
  return result;
}

void sub_22B210314(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v32 = a11;
  v33 = a12;
  v31 = a10;
  v13 = sub_22B36052C();
  v29 = *(v13 - 8);
  v30 = v13;
  v14 = *(v29 + 64);
  MEMORY[0x28223BE20](v13);
  v28 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22B36081C();
  v17 = sub_22B36081C();
  [a1 setValue:v16 forKeyPath:v17];

  v18 = sub_22B36144C();
  v19 = sub_22B36081C();
  [a1 setValue:v18 forKeyPath:v19];

  v20 = sub_22B35DDDC();
  v21 = sub_22B36081C();
  [a1 setValue:v20 forKey:v21];

  v22 = sub_22B36081C();
  v23 = sub_22B36081C();
  [a1 setValue:v22 forKeyPath:v23];

  v24 = sub_22B36081C();
  v25 = sub_22B36081C();
  [a1 setValue:v24 forKeyPath:v25];

  v26 = sub_22B36081C();
  v27 = sub_22B36081C();
  [a1 setValue:v26 forKeyPath:v27];

  if (v33)
  {
    sub_22B2A534C(2);
  }
}

void sub_22B2106DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = a6;
  v46 = a8;
  v44 = a4;
  v43 = a3;
  v42 = a1;
  v13 = sub_22B36052C();
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = *(v39 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x23188EEB0](v15);
  v17 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v18 = sub_22B36081C();
  v19 = [v17 initWithEntityName_];

  [v19 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22B363640;
  v21 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v22 = sub_22B1280E4();
  *(v20 + 64) = v22;
  v23 = MEMORY[0x277D84958];
  *(v20 + 32) = v42;
  *(v20 + 40) = a2;
  v24 = MEMORY[0x277D849A0];
  *(v20 + 96) = v23;
  *(v20 + 104) = v24;
  *(v20 + 72) = v43;
  *(v20 + 136) = v21;
  *(v20 + 144) = v22;
  v25 = v45;
  *(v20 + 112) = v44;
  *(v20 + 120) = a5;
  *(v20 + 176) = v21;
  *(v20 + 184) = v22;
  *(v20 + 152) = v25;
  *(v20 + 160) = a7;
  *(v20 + 216) = v21;
  *(v20 + 224) = v22;
  *(v20 + 192) = v46;
  *(v20 + 200) = a9;

  v26 = sub_22B360CCC();
  [v19 setPredicate_];
  v27 = *(a10 + 48);
  sub_22B35EE1C();
  v28 = v27;
  v29 = sub_22B360E9C();

  if (v29 >> 62)
  {
    v30 = sub_22B36109C();
    if (!v30)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      goto LABEL_10;
    }
  }

  if (v30 < 1)
  {
    goto LABEL_13;
  }

  for (i = 0; i != v30; ++i)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x23188EAC0](i, v29);
    }

    else
    {
      v32 = *(v29 + 8 * i + 32);
    }

    v33 = v32;
    [*(a10 + 48) deleteObject_];
  }

LABEL_10:

  v34 = *(a10 + 48);
  v35 = swift_allocObject();
  *(v35 + 16) = sub_22B1281A4;
  *(v35 + 24) = a10;
  aBlock[4] = sub_22B12819C;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_16;
  v36 = _Block_copy(aBlock);
  v37 = v34;

  [v37 performBlockAndWait_];

  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if ((v36 & 1) == 0)
  {
    objc_autoreleasePoolPop(v41);
    return;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_22B210C48(uint64_t a1@<X0>, void *a2@<X8>)
{
  v80 = a2;
  v4 = sub_22B36052C();
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x277D84F90];
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22B36081C();
  v10 = [v8 initWithEntityName_];

  [v10 setResultType_];
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_22B36081C();
  v13 = [v11 initWithKey:v12 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22B363650;
  *(v14 + 32) = v13;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v15 = v13;
  v16 = sub_22B360A3C();

  [v10 setSortDescriptors_];

  v17 = *(a1 + 48);
  sub_22B35EE1C();
  v18 = v17;
  v19 = sub_22B360E9C();
  if (!v2)
  {
    v78[1] = 0;
    v79 = v15;
    v33 = v19;

    v34 = v33;
    v86 = MEMORY[0x277D84FA0];
    if (v33 >> 62)
    {
      v35 = sub_22B36109C();
      v34 = v33;
      v36 = v79;
      if (v35)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = v79;
      if (v35)
      {
LABEL_9:
        v78[0] = v10;
        if (v35 < 1)
        {
          __break(1u);
          return;
        }

        v37 = 0;
        v84 = v34 & 0xC000000000000001;
        v81 = MEMORY[0x277D84F90];
        v82 = v35;
        v83 = v34;
        do
        {
          if (v84)
          {
            v38 = MEMORY[0x23188EAC0](v37);
          }

          else
          {
            v38 = *(v34 + 8 * v37 + 32);
          }

          v39 = v38;
          v40 = v86;
          v41 = [v38 gridID];
          v42 = sub_22B36084C();
          v44 = v43;

          v87 = v42;
          v88 = v44;
          MEMORY[0x23188E270](59, 0xE100000000000000);
          v85 = [v39 guidanceType];
          v45 = sub_22B36131C();
          MEMORY[0x23188E270](v45);

          MEMORY[0x23188E270](59, 0xE100000000000000);
          v46 = [v39 ratePlan];
          v47 = sub_22B36084C();
          v49 = v48;

          MEMORY[0x23188E270](v47, v49);

          MEMORY[0x23188E270](59, 0xE100000000000000);
          v50 = [v39 utilityID];
          v51 = sub_22B36084C();
          v53 = v52;

          MEMORY[0x23188E270](v51, v53);

          MEMORY[0x23188E270](59, 0xE100000000000000);
          v54 = [v39 timeZone];
          v55 = sub_22B36084C();
          v57 = v56;

          MEMORY[0x23188E270](v55, v57);

          LOBYTE(v55) = sub_22B325CF0(v87, v88, v40);

          if (v55)
          {
          }

          else
          {
            v58 = [v39 gridID];
            v59 = sub_22B36084C();
            v61 = v60;

            v87 = v59;
            v88 = v61;
            MEMORY[0x23188E270](59, 0xE100000000000000);
            v85 = [v39 guidanceType];
            v62 = sub_22B36131C();
            MEMORY[0x23188E270](v62);

            MEMORY[0x23188E270](59, 0xE100000000000000);
            v63 = [v39 ratePlan];
            v64 = sub_22B36084C();
            v66 = v65;

            MEMORY[0x23188E270](v64, v66);

            MEMORY[0x23188E270](59, 0xE100000000000000);
            v67 = [v39 utilityID];
            v68 = sub_22B36084C();
            v70 = v69;

            MEMORY[0x23188E270](v68, v70);

            MEMORY[0x23188E270](59, 0xE100000000000000);
            v71 = [v39 timeZone];
            v72 = sub_22B36084C();
            v74 = v73;

            MEMORY[0x23188E270](v72, v74);

            sub_22B32DF50(&v87, v87, v88);

            v75 = v39;
            MEMORY[0x23188E350]();
            if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v76 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22B360A7C();
            }

            sub_22B360A9C();

            v81 = v91;
          }

          ++v37;
          v34 = v83;
        }

        while (v82 != v37);

        v36 = v79;
        v77 = v81;
LABEL_23:

        *v80 = v77;
        return;
      }
    }

    v77 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v21 = sub_22B36081C();
  v22 = [v20 initWithDomain:v21 code:1 userInfo:0];

  swift_willThrow();
  v23 = [objc_opt_self() processInfo];
  v24 = [v23 processName];

  v25 = sub_22B36084C();
  v27 = v26;

  LOWORD(v87) = 513;
  BYTE2(v87) = 10;
  v88 = v25;
  v89 = v27;
  v90 = 0;
  static AutoBugCaptureManager.sendIssue(_:)(&v87);

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  v29 = v84;
  (*(v84 + 16))(v7, v28, v4);
  v30 = sub_22B36050C();
  v31 = sub_22B360D1C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_22B116000, v30, v31, "Failed to fetch cache entries", v32, 2u);
    MEMORY[0x23188F650](v32, -1, -1);
  }

  (*(v29 + 8))(v7, v4);
  *v80 = MEMORY[0x277D84F90];
}

void sub_22B211518(void *a1, uint64_t a2)
{
  v4 = sub_22B36052C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22B35DE6C();
  v11 = sub_22B35DDDC();
  (*(v7 + 8))(v10, v6);
  v12 = sub_22B36081C();
  [a1 setValue:v11 forKey:v12];

  if (a2)
  {
    sub_22B2A534C(2);
  }
}

uint64_t sub_22B2117DC()
{
  type metadata accessor for EnergyGuidanceTrackerManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  v1 = sub_22B33AD90(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);
  v2 = *(v0 + 112);
  *(v0 + 112) = v1;

  qword_28140BDC0 = v0;
  return result;
}

id sub_22B211898(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10, uint64_t a11)
{
  sub_22B20F038(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a1);
  v12 = a1[6];

  return [v12 reset];
}

id sub_22B211914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_22B2106DC(a2, a3, a4, a5, a6, a7, a8, a10, a11, a1);
  v14 = v13;
  result = [*(a1 + 48) reset];
  *a9 = v14 & 1;
  return result;
}

uint64_t sub_22B211998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v31 = a7;
  v32 = a8;
  v35 = a9;
  v34 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v30 - v20;
  v33 = a1;
  v22 = sub_22B20FCEC(a2, a3, a4, a5, a6, v31, v32, a10, a11, a1);
  v23 = v22;
  if (v22)
  {
    v24 = [v22 lastAccessed];
    sub_22B35DE5C();

    v25 = sub_22B35DE9C();
    (*(*(v25 - 8) + 56))(v21, 0, 1, v25);
  }

  else
  {
    v26 = sub_22B35DE9C();
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
  }

  v27 = v34;
  sub_22B1B0624(v21, v34);
  v28 = *(v33 + 48);
  [v28 reset];

  return sub_22B1B05B4(v27, v35);
}

uint64_t sub_22B211B68()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_22B36050C();
  v9 = sub_22B360D2C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v8, v9, "Get all energy guidance tracking from cache", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 112);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 48);

  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA840, &qword_22B365DF8);
  sub_22B360E7C();

  return v15[2];
}

void sub_22B211D8C(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for CDEnergyGuidanceTracker();
  v47 = *(v5 - 1);
  v6 = *(v47 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x23188EEB0](v7);
  sub_22B210C48(a1, &v48);
  if (v2)
  {
    objc_autoreleasePoolPop(v10);
    __break(1u);
  }

  else
  {
    v11 = 0;
    objc_autoreleasePoolPop(v10);
    v12 = v48;
    if (v48 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B36109C())
    {
      v40 = v11;
      v41 = a1;
      v42 = a2;
      if (!i)
      {
        break;
      }

      v14 = 0;
      v45 = v12 & 0xFFFFFFFFFFFFFF8;
      v46 = v12 & 0xC000000000000001;
      v15 = MEMORY[0x277D84F90];
      v43 = i;
      v44 = v12;
      while (1)
      {
        if (v46)
        {
          v16 = MEMORY[0x23188EAC0](v14, v12);
        }

        else
        {
          if (v14 >= *(v45 + 16))
          {
            goto LABEL_20;
          }

          v16 = *(v12 + 8 * v14 + 32);
        }

        v11 = v16;
        a2 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v17 = [v16 gridID];
        v18 = sub_22B36084C();
        v20 = v19;

        *v9 = v18;
        *(v9 + 1) = v20;
        *(v9 + 8) = [v11 guidanceType];
        v21 = [v11 lastAccessed];
        v22 = &v9[v5[6]];
        sub_22B35DE5C();

        v23 = [v11 ratePlan];
        v24 = sub_22B36084C();
        v26 = v25;

        v27 = &v9[v5[7]];
        *v27 = v24;
        v27[1] = v26;
        v28 = [v11 timeZone];
        v29 = sub_22B36084C();
        v31 = v30;

        v32 = &v9[v5[8]];
        *v32 = v29;
        v32[1] = v31;
        v33 = [v11 utilityID];
        v34 = sub_22B36084C();
        v36 = v35;

        v37 = &v9[v5[9]];
        *v37 = v34;
        v37[1] = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_22B32D094(0, v15[2] + 1, 1, v15);
        }

        v38 = v43;
        v12 = v44;
        a1 = v15[2];
        v39 = v15[3];
        v11 = (a1 + 1);
        if (a1 >= v39 >> 1)
        {
          v15 = sub_22B32D094(v39 > 1, a1 + 1, 1, v15);
        }

        v15[2] = v11;
        sub_22B212670(v9, v15 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * a1);
        ++v14;
        if (a2 == v38)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v15 = MEMORY[0x277D84F90];
LABEL_18:

    [*(v41 + 48) reset];
    *v42 = v15;
  }
}

uint64_t sub_22B212108()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_22B36050C();
  v9 = sub_22B360D2C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v8, v9, "Delete all energy guidance tracking from cache", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 112);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 48);

  v13 = v12;
  sub_22B360E7C();

  return v15[23];
}

void sub_22B212318(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = MEMORY[0x23188EEB0]();
  sub_22B339F64(0xD000000000000015, 0x800000022B36C8A0, a1, &v7);
  objc_autoreleasePoolPop(v5);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v6 = v7;
    [*(a1 + 48) reset];
    *a2 = v6;
  }
}

id sub_22B2123B8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = MEMORY[0x23188EEB0]();
  v18 = sub_22B20FCEC(a2, a3, a4, a5, a6, a7, a8, a9, a10, a1);
  if (v18)
  {
    isEscapingClosureAtFileLocation = v18;
    v20 = [v18 managedObjectContext];
    if (!v20)
    {
LABEL_5:

      goto LABEL_6;
    }

    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = isEscapingClosureAtFileLocation;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_22B2126D4;
    *(v23 + 24) = v22;
    aBlock[4] = sub_22B128240;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B32556C;
    aBlock[3] = &block_descriptor_18;
    v24 = _Block_copy(aBlock);
    v25 = v21;
    v26 = isEscapingClosureAtFileLocation;

    [v25 performBlockAndWait_];

    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

LABEL_6:
  objc_autoreleasePoolPop(v28);
  return [*(a1 + 48) reset];
}

uint64_t type metadata accessor for CDEnergyGuidanceTracker()
{
  result = qword_281409858;
  if (!qword_281409858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B212670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDEnergyGuidanceTracker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22B2126DC()
{
  v1 = *(sub_22B35DE9C() - 8);
  v2 = (*(v1 + 80) + 42) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_22B210314(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_22B2127D0()
{
  result = sub_22B35DE9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22B212870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v7 = *(type metadata accessor for CDEnergyWindowNotifications() - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v9 = sub_22B36052C();
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2129F8, v4, 0);
}

uint64_t sub_22B2129F8()
{
  v22 = v0;
  if (v0[11])
  {
    if (qword_28140AF70 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BDB8;
    v0[23] = qword_28140BDB8;
    v2 = sub_22B212C7C;
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v3 = v0[20];
    v4 = v0[17];
    v5 = v0[18];
    v6 = v0[9];
    v7 = __swift_project_value_buffer(v4, qword_28140BD10);
    v0[25] = v7;
    swift_beginAccess();
    v8 = *(v5 + 16);
    v0[26] = v8;
    v0[27] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v3, v7, v4);

    v9 = sub_22B36050C();
    v10 = sub_22B360D0C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[20];
    v13 = v0[17];
    v14 = v0[18];
    if (v11)
    {
      v16 = v0[8];
      v15 = v0[9];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_22B1A7B20(v16, v15, &v21);
      _os_log_impl(&dword_22B116000, v9, v10, "Parsing for %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x23188F650](v18, -1, -1);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    v19 = *(v14 + 8);
    v19(v12, v13);
    v0[28] = v19;
    if (qword_28140AF70 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BDB8;
    v0[29] = qword_28140BDB8;
    v2 = sub_22B213240;
  }

  return MEMORY[0x2822009F8](v2, v1, 0);
}

uint64_t sub_22B212C7C()
{
  v1 = v0[23];
  v2 = v0[12];
  v0[24] = sub_22B17FAD0(v0[8], v0[9], v0[10], v0[11]);

  return MEMORY[0x2822009F8](sub_22B212CF4, v2, 0);
}

uint64_t sub_22B212CF4()
{
  v74 = v0;
  if (qword_28140A0C8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[11];
  v5 = v0[9];
  v6 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  v68 = *(v3 + 16);
  v69 = v6;
  v68(v1, v6, v2);

  v7 = sub_22B36050C();
  v8 = sub_22B360D0C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  v12 = v0[17];
  v11 = v0[18];
  if (v9)
  {
    v13 = v0[10];
    v66 = v0[11];
    v70 = v0[22];
    v14 = v0[8];
    v15 = v0[9];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v73 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_22B1A7B20(v14, v15, &v73);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_22B1A7B20(v13, v66, &v73);
    _os_log_impl(&dword_22B116000, v7, v8, "Parsing for %s and %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);

    v18 = *(v11 + 8);
    v19 = v70;
  }

  else
  {

    v18 = *(v11 + 8);
    v19 = v10;
  }

  v67 = v18;
  v18(v19, v12);
  v20 = v0[24];
  v21 = *(v20 + 16);
  if (!v21)
  {
    v44 = v0[24];
LABEL_27:

    v46 = 0;
    goto LABEL_31;
  }

  v22 = 0;
  v23 = v0[16];
  v72 = v0[14];
  v71 = v20 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
  v63 = v0[18] + 8;
  v64 = *(v20 + 16);
  v65 = v0[24];
  while (1)
  {
    if (v22 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    v24 = v0[16];
    v26 = v0[8];
    v25 = v0[9];
    sub_22B180AC8(v71 + *(v72 + 72) * v22, v24);
    v27 = *v24 == v26 && *(v23 + 8) == v25;
    if (v27 || (v28 = v0[8], v29 = v0[9], (sub_22B36134C() & 1) != 0))
    {
      v30 = *(v23 + 80);
      if (v30)
      {
        break;
      }
    }

LABEL_7:
    ++v22;
    sub_22B180B2C(v0[16]);
    if (v21 == v22)
    {
      v45 = v0[24];
      goto LABEL_27;
    }
  }

  if (*(v23 + 72) != v0[10] || v30 != v0[11])
  {
    v31 = *(v23 + 80);
    if ((sub_22B36134C() & 1) == 0)
    {
      goto LABEL_7;
    }

    v32 = v0[11];
  }

  v33 = v0[9];
  v68(v0[21], v69, v0[17]);

  v34 = sub_22B36050C();
  v35 = sub_22B360D0C();

  v36 = os_log_type_enabled(v34, v35);
  v37 = v0[21];
  v38 = v0[17];
  if (v36)
  {
    v60 = v0[10];
    v61 = v0[11];
    v62 = v0[21];
    v39 = v0[8];
    v40 = v0[9];
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v73 = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_22B1A7B20(v39, v40, &v73);
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_22B1A7B20(v60, v61, &v73);
    _os_log_impl(&dword_22B116000, v34, v35, "Found entry for %s and %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v42, -1, -1);
    MEMORY[0x23188F650](v41, -1, -1);

    v43 = v62;
  }

  else
  {

    v43 = v37;
  }

  v67(v43, v38);
  v21 = v64;
  v20 = v65;
  if (*(v23 + 17))
  {
    if (*(v23 + 88))
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (*(v23 + 88))
  {
LABEL_29:
    v47 = v0[24];
    v48 = v0[16];

    sub_22B180B2C(v48);
    v46 = 3;
    goto LABEL_31;
  }

  v49 = v0[24];
  v50 = v0[16];

  sub_22B180B2C(v50);
  v46 = 2;
LABEL_31:
  v52 = v0[21];
  v51 = v0[22];
  v54 = v0[19];
  v53 = v0[20];
  v56 = v0[15];
  v55 = v0[16];
  v57 = v0[13];

  v58 = v0[1];

  return v58(v46);
}

uint64_t sub_22B213240()
{
  v1 = v0[29];
  v2 = v0[12];
  v0[30] = sub_22B17F314(v0[8], v0[9]);

  return MEMORY[0x2822009F8](sub_22B2132B4, v2, 0);
}

void sub_22B2132B4()
{
  v53 = v0;
  v1 = *(v0 + 240);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 120);
    v51 = *(v0 + 112);
    v50 = v1 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v48 = *(v0 + 144) + 8;
    v49 = *(v1 + 16);
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v5 = *(v0 + 120);
      v7 = *(v0 + 64);
      v6 = *(v0 + 72);
      sub_22B180AC8(v50 + *(v51 + 72) * v3, v5);
      v8 = *v5 == v7 && *(v4 + 8) == v6;
      if (v8 || (v9 = *(v0 + 64), v10 = *(v0 + 72), (sub_22B36134C() & 1) != 0))
      {
        if (*(v4 + 80))
        {
          v11 = *(v4 + 72);
          v12 = *(v4 + 80);
        }

        v13 = *(v0 + 104);

        sub_22B35DEBC();

        v14 = sub_22B35DF1C();
        v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
        sub_22B123284(v13, &qword_27D8BA970, &unk_22B363560);
        if (v15 == 1)
        {
          v16 = *(v0 + 216);
          v17 = *(v0 + 72);
          (*(v0 + 208))(*(v0 + 152), *(v0 + 200), *(v0 + 136));

          v18 = sub_22B36050C();
          v19 = sub_22B360D0C();

          v20 = os_log_type_enabled(v18, v19);
          v21 = *(v0 + 224);
          v22 = *(v0 + 152);
          v23 = *(v0 + 136);
          if (v20)
          {
            v47 = *(v0 + 136);
            v24 = v1;
            v25 = *(v0 + 64);
            v26 = *(v0 + 72);
            v46 = *(v0 + 224);
            v27 = swift_slowAlloc();
            v45 = v22;
            v28 = swift_slowAlloc();
            v52 = v28;
            *v27 = 136315138;
            v29 = v25;
            v1 = v24;
            *(v27 + 4) = sub_22B1A7B20(v29, v26, &v52);
            _os_log_impl(&dword_22B116000, v18, v19, "Found entry for %s", v27, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v28);
            MEMORY[0x23188F650](v28, -1, -1);
            MEMORY[0x23188F650](v27, -1, -1);

            v46(v45, v47);
          }

          else
          {

            v21(v22, v23);
          }

          v2 = v49;
          if ((*(v4 + 17) & 1) == 0)
          {
            if (*(v4 + 88))
            {
LABEL_23:
              v33 = *(v0 + 240);
              v34 = *(v0 + 120);

              sub_22B180B2C(v34);
              v32 = 3;
              goto LABEL_25;
            }

            v35 = *(v0 + 240);
            v36 = *(v0 + 120);

            sub_22B180B2C(v36);
            v32 = 2;
            goto LABEL_25;
          }

          if (*(v4 + 88))
          {
            goto LABEL_23;
          }
        }
      }

      ++v3;
      sub_22B180B2C(*(v0 + 120));
      if (v2 == v3)
      {
        v31 = *(v0 + 240);
        goto LABEL_21;
      }
    }
  }

  v30 = *(v0 + 240);
LABEL_21:

  v32 = 0;
LABEL_25:
  v38 = *(v0 + 168);
  v37 = *(v0 + 176);
  v40 = *(v0 + 152);
  v39 = *(v0 + 160);
  v42 = *(v0 + 120);
  v41 = *(v0 + 128);
  v43 = *(v0 + 104);

  v44 = *(v0 + 8);

  v44(v32);
}

uint64_t sub_22B21365C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 312) = a2;
  *(v4 + 320) = v3;
  *(v4 + 304) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790) - 8) + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  v7 = sub_22B35DE9C();
  *(v4 + 336) = v7;
  v8 = *(v7 - 8);
  *(v4 + 344) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  v10 = sub_22B35EE8C();
  *(v4 + 368) = v10;
  v11 = *(v10 - 8);
  *(v4 + 376) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 384) = swift_task_alloc();
  v13 = sub_22B36052C();
  *(v4 + 392) = v13;
  v14 = *(v13 - 8);
  *(v4 + 400) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  v16 = *(a3 + 48);
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = v16;
  *(v4 + 80) = *(a3 + 64);
  v17 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v17;

  return MEMORY[0x2822009F8](sub_22B21384C, v3, 0);
}

uint64_t sub_22B21384C()
{
  if (qword_28140A7B0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 424) = v1;
  *v1 = v0;
  v1[1] = sub_22B213910;

  return sub_22B28C6E0();
}

uint64_t sub_22B213910(char a1)
{
  v2 = *(*v1 + 424);
  v3 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 81) = a1;

  return MEMORY[0x2822009F8](sub_22B213A28, v3, 0);
}

uint64_t sub_22B213A28()
{
  if (*(v0 + 81))
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 400);
    v1 = *(v0 + 408);
    v3 = *(v0 + 392);
    v4 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_22B36050C();
    v6 = sub_22B360D2C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B116000, v5, v6, "Permission for notifications granted", v7, 2u);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v9 = *(v0 + 400);
    v8 = *(v0 + 408);
    v11 = *(v0 + 384);
    v10 = *(v0 + 392);
    v12 = *(v0 + 368);
    v13 = *(v0 + 376);

    (*(v9 + 8))(v8, v10);
    (*(v13 + 104))(v11, *MEMORY[0x277D07360], v12);
    v14 = sub_22B35EE7C();
    (*(v13 + 8))(v11, v12);
    if (v14)
    {
      v15 = *(v0 + 360);
      v16 = *(v0 + 328);
      v17 = sub_22B35D8BC();
      (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
      sub_22B35DE6C();
      if (qword_28140AC88 != -1)
      {
        swift_once();
      }

      v18 = qword_28140BD80;
      *(v0 + 440) = qword_28140BD80;

      return MEMORY[0x2822009F8](sub_22B2140A8, v18, 0);
    }

    else
    {
      v37 = *(v0 + 360);
      sub_22B35DE6C();
      v38 = *(v0 + 16);
      *(v0 + 104) = *(v0 + 32);
      v39 = *(v0 + 64);
      *(v0 + 120) = *(v0 + 48);
      *(v0 + 136) = v39;
      *(v0 + 152) = *(v0 + 80);
      *(v0 + 88) = v38;
      v40 = swift_task_alloc();
      *(v0 + 432) = v40;
      *v40 = v0;
      v40[1] = sub_22B213EAC;
      v41 = *(v0 + 360);
      v42 = *(v0 + 312);
      v43 = *(v0 + 320);
      v44 = *(v0 + 304);

      return sub_22B25053C(v41, v44, v42, v0 + 88, 1);
    }
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 416);
    v20 = *(v0 + 392);
    v21 = *(v0 + 400);
    v22 = __swift_project_value_buffer(v20, qword_28140BD10);
    swift_beginAccess();
    (*(v21 + 16))(v19, v22, v20);
    v23 = sub_22B36050C();
    v24 = sub_22B360D2C();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 416);
    v27 = *(v0 + 392);
    v28 = *(v0 + 400);
    if (v25)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22B116000, v23, v24, "Permission for notifications denied", v29, 2u);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    (*(v28 + 8))(v26, v27);
    v31 = *(v0 + 408);
    v30 = *(v0 + 416);
    v32 = *(v0 + 384);
    v34 = *(v0 + 352);
    v33 = *(v0 + 360);
    v35 = *(v0 + 328);

    v36 = *(v0 + 8);

    return v36(9);
  }
}

uint64_t sub_22B213EAC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 432);
  v5 = *(*v1 + 360);
  v6 = *(*v1 + 344);
  v7 = *(*v1 + 336);
  v8 = *v1;

  (*(v6 + 8))(v5, v7);
  v9 = v3[52];
  v10 = v3[51];
  v11 = v3[48];
  v12 = v3[45];
  v13 = v3[44];
  v14 = v3[41];

  v15 = *(v8 + 8);

  return v15(a1);
}

uint64_t sub_22B2140A8()
{
  v1 = *(v0 + 440);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  (*(v3 + 16))(v2, v1 + v5, v4);
  v6 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v6;
  *(v0 + 224) = *(v0 + 80);
  v7 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v7;
  v8 = swift_task_alloc();
  *(v0 + 448) = v8;
  *v8 = v0;
  v8[1] = sub_22B2141B8;
  v9 = *(v0 + 352);
  v10 = *(v0 + 360);
  v12 = *(v0 + 320);
  v11 = *(v0 + 328);
  v13 = *(v0 + 304);
  v14 = *(v0 + 312);

  return sub_22B28F98C(v10, v9, v13, v14, v0 + 160, v11);
}

uint64_t sub_22B2141B8(uint64_t a1)
{
  v2 = *(*v1 + 448);
  v3 = *(*v1 + 360);
  v4 = *(*v1 + 352);
  v5 = *(*v1 + 344);
  v6 = *(*v1 + 336);
  v7 = *(*v1 + 320);
  v10 = *v1;
  *(*v1 + 456) = a1;

  v8 = *(v5 + 8);
  v8(v4, v6);
  v8(v3, v6);

  return MEMORY[0x2822009F8](sub_22B21435C, v7, 0);
}

uint64_t sub_22B21435C()
{
  sub_22B123284(v0[41], &qword_27D8BA3E8, &unk_22B364790);
  v1 = v0[57];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[48];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[41];

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_22B214420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v7 = *(type metadata accessor for CDEnergyWindowNotifications() - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = sub_22B36052C();
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v11 = *(v10 + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B214584, v4, 0);
}

uint64_t sub_22B214584()
{
  v23 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[12];
  v5 = v0[10];
  v6 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v6, v3);

  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  v11 = v0[20];
  v12 = v0[18];
  if (v9)
  {
    v13 = v0[11];
    v20 = v0[12];
    v15 = v0[9];
    v14 = v0[10];
    v21 = v0[20];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136380931;
    *(v16 + 4) = sub_22B1A7B20(v15, v14, &v22);
    *(v16 + 12) = 2081;
    *(v16 + 14) = sub_22B1A7B20(v13, v20, &v22);
    _os_log_impl(&dword_22B116000, v7, v8, "Disabling next clean energy window notifications for:%{private}s,%{private}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);

    (*(v10 + 8))(v21, v12);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v18 = qword_28140BDB8;
  v0[21] = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B2147FC, v18, 0);
}

uint64_t sub_22B2147FC()
{
  v1 = v0[21];
  v2 = v0[13];
  v0[22] = sub_22B17FAD0(v0[9], v0[10], v0[11], v0[12]);

  return MEMORY[0x2822009F8](sub_22B214874, v2, 0);
}

uint64_t sub_22B214874()
{
  v1 = v0[22];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[16];
    v4 = v0[17];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v26 = v6;
    v27 = v4;
    do
    {
      sub_22B180AC8(v5, v0[17]);
      if (*(v4 + 17) == 1)
      {
        v7 = *(v4 + 80);
        if (v7)
        {
          v8 = *(v4 + 72);
          if (qword_28140A7B0 != -1)
          {
            swift_once();
          }

          v9 = v0[17];
          v10 = v0[14];
          v11 = v0[15];
          v28 = qword_28140BD40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_22B3634B0;
          v29 = *v9;
          v30 = *(v4 + 8);

          MEMORY[0x23188E270](45, 0xE100000000000000);
          MEMORY[0x23188E270](v8, v7);
          *(v12 + 32) = v29;
          *(v12 + 40) = v30;
          v13 = sub_22B360B6C();
          v14 = *(v13 - 8);
          (*(v14 + 56))(v11, 1, 1, v13);
          v15 = swift_allocObject();
          v15[2] = 0;
          v15[3] = 0;
          v15[4] = v28;
          v15[5] = v12;
          sub_22B124BA8(v11, v10);
          LODWORD(v10) = (*(v14 + 48))(v10, 1, v13);

          v16 = v0[14];
          if (v10 == 1)
          {
            sub_22B123284(v0[14], &qword_27D8BA8D0, &qword_22B363610);
          }

          else
          {
            sub_22B360B5C();
            (*(v14 + 8))(v16, v13);
          }

          v18 = v15[2];
          v17 = v15[3];
          swift_unknownObjectRetain();

          if (v18)
          {
            swift_getObjectType();
            v19 = sub_22B360ACC();
            v21 = v20;
            swift_unknownObjectRelease();
          }

          else
          {
            v19 = 0;
            v21 = 0;
          }

          sub_22B123284(v0[15], &qword_27D8BA8D0, &qword_22B363610);
          v22 = swift_allocObject();
          *(v22 + 16) = &unk_22B365E68;
          *(v22 + 24) = v15;
          if (v21 | v19)
          {
            v0[2] = 0;
            v0[3] = 0;
            v0[4] = v19;
            v0[5] = v21;
          }

          v6 = v26;
          swift_task_create();

          v4 = v27;
        }
      }

      sub_22B180B2C(v0[17]);
      v5 += v6;
      --v2;
    }

    while (v2);
    v23 = v0[22];
  }

  v24 = v0[21];

  return MEMORY[0x2822009F8](sub_22B214C08, v24, 0);
}

uint64_t sub_22B214C08()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  if (sub_22B17E790(v0[11], v0[12], v0[9], v0[10]))
  {
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22B214CB8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = *(type metadata accessor for CDEnergyWindowNotifications() - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = sub_22B36052C();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B214E18, v2, 0);
}

uint64_t sub_22B214E18()
{
  v19 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[10];
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  if (v8)
  {
    v13 = v0[9];
    v12 = v0[10];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v18);
    _os_log_impl(&dword_22B116000, v6, v7, "Disabling all next clean energy window notifications for grid: %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v16 = qword_28140BDB8;
  v0[19] = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B215034, v16, 0);
}

uint64_t sub_22B215034()
{
  v1 = v0[19];
  v2 = v0[11];
  v0[20] = sub_22B17F314(v0[9], v0[10]);

  return MEMORY[0x2822009F8](sub_22B2150A8, v2, 0);
}

uint64_t sub_22B2150A8()
{
  v1 = v0[20];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v4 = v0[15];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v26 = v6;
    v27 = v4;
    do
    {
      sub_22B180AC8(v5, v0[15]);
      if (*(v4 + 17) == 1)
      {
        v28 = v2;
        if (qword_28140A7B0 != -1)
        {
          swift_once();
        }

        v7 = v0[15];
        v8 = v0[12];
        v9 = v0[13];
        v10 = qword_28140BD40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_22B3634B0;
        v12 = *(v4 + 8);
        *(v11 + 32) = *v7;
        *(v11 + 40) = v12;
        v13 = sub_22B360B6C();
        v14 = *(v13 - 8);
        (*(v14 + 56))(v9, 1, 1, v13);
        v15 = swift_allocObject();
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = v10;
        v15[5] = v11;
        sub_22B124BA8(v9, v8);
        LODWORD(v8) = (*(v14 + 48))(v8, 1, v13);

        v16 = v0[12];
        if (v8 == 1)
        {
          sub_22B123284(v0[12], &qword_27D8BA8D0, &qword_22B363610);
        }

        else
        {
          sub_22B360B5C();
          (*(v14 + 8))(v16, v13);
        }

        v17 = v15[2];
        v18 = v15[3];
        swift_unknownObjectRetain();

        v4 = v27;
        if (v17)
        {
          swift_getObjectType();
          v19 = sub_22B360ACC();
          v21 = v20;
          swift_unknownObjectRelease();
        }

        else
        {
          v19 = 0;
          v21 = 0;
        }

        sub_22B123284(v0[13], &qword_27D8BA8D0, &qword_22B363610);
        v22 = swift_allocObject();
        *(v22 + 16) = &unk_22B365E50;
        *(v22 + 24) = v15;
        if (v21 | v19)
        {
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v19;
          v0[5] = v21;
        }

        swift_task_create();

        v2 = v28;
        v6 = v26;
      }

      sub_22B180B2C(v0[15]);
      v5 += v6;
      --v2;
    }

    while (v2);
    v23 = v0[20];
  }

  v24 = v0[19];

  return MEMORY[0x2822009F8](sub_22B215408, v24, 0);
}

uint64_t sub_22B215408()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  if (sub_22B17EB2C(v0[9], v0[10]))
  {
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22B2154B4()
{
  v1[13] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = *(type metadata accessor for CDEnergyWindowNotifications() - 8);
  v1[18] = v3;
  v4 = *(v3 + 64) + 15;
  v1[19] = swift_task_alloc();
  v5 = sub_22B36052C();
  v1[20] = v5;
  v6 = *(v5 - 8);
  v1[21] = v6;
  v7 = *(v6 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B215628, v0, 0);
}

uint64_t sub_22B215628()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Disabling all next clean energy window notifications", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];

  (*(v9 + 8))(v8, v10);
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v11 = qword_28140BDB8;
  v0[23] = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B2157CC, v11, 0);
}

uint64_t sub_22B2157CC()
{
  v1 = v0[23];
  v2 = v0[13];
  v0[24] = sub_22B1802B0();

  return MEMORY[0x2822009F8](sub_22B21583C, v2, 0);
}

uint64_t sub_22B21583C()
{
  v1 = v0[24];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[18];
    v4 = v0[19];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v41 = v6;
    v42 = v4;
    do
    {
      sub_22B180AC8(v5, v0[19]);
      if (*(v4 + 17) == 1)
      {
        v7 = *(v4 + 80);
        if (v7)
        {
          v8 = *(v4 + 72);
          if (qword_28140A7B0 != -1)
          {
            swift_once();
          }

          v9 = v0[19];
          v11 = v0[16];
          v10 = v0[17];
          v43 = qword_28140BD40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_22B3634B0;
          v45 = *v9;
          v46 = *(v4 + 8);

          MEMORY[0x23188E270](45, 0xE100000000000000);
          MEMORY[0x23188E270](v8, v7);
          *(v12 + 32) = v45;
          *(v12 + 40) = v46;
          v13 = sub_22B360B6C();
          v14 = *(v13 - 8);
          (*(v14 + 56))(v10, 1, 1, v13);
          v15 = swift_allocObject();
          v15[2] = 0;
          v15[3] = 0;
          v15[4] = v43;
          v15[5] = v12;
          sub_22B124BA8(v10, v11);
          LODWORD(v10) = (*(v14 + 48))(v11, 1, v13);

          v16 = v0[16];
          if (v10 == 1)
          {
            sub_22B123284(v0[16], &qword_27D8BA8D0, &qword_22B363610);
          }

          else
          {
            sub_22B360B5C();
            (*(v14 + 8))(v16, v13);
          }

          v27 = v15[2];
          v26 = v15[3];
          swift_unknownObjectRetain();

          if (v27)
          {
            swift_getObjectType();
            v28 = sub_22B360ACC();
            v30 = v29;
            swift_unknownObjectRelease();
          }

          else
          {
            v28 = 0;
            v30 = 0;
          }

          v6 = v41;
          sub_22B123284(v0[17], &qword_27D8BA8D0, &qword_22B363610);
          v31 = swift_allocObject();
          *(v31 + 16) = &unk_22B365E38;
          *(v31 + 24) = v15;
          if (v30 | v28)
          {
            v0[6] = 0;
            v0[7] = 0;
            v0[8] = v28;
            v0[9] = v30;
          }
        }

        else
        {
          if (qword_28140A7B0 != -1)
          {
            swift_once();
          }

          v17 = v0[19];
          v18 = v0[15];
          v44 = v0[14];
          v19 = qword_28140BD40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_22B3634B0;
          v21 = *(v4 + 8);
          *(v20 + 32) = *v17;
          *(v20 + 40) = v21;
          v22 = sub_22B360B6C();
          v23 = *(v22 - 8);
          (*(v23 + 56))(v18, 1, 1, v22);
          v24 = swift_allocObject();
          v24[2] = 0;
          v24[3] = 0;
          v24[4] = v19;
          v24[5] = v20;
          sub_22B124BA8(v18, v44);
          LODWORD(v18) = (*(v23 + 48))(v44, 1, v22);

          v25 = v0[14];
          if (v18 == 1)
          {
            sub_22B123284(v0[14], &qword_27D8BA8D0, &qword_22B363610);
          }

          else
          {
            sub_22B360B5C();
            (*(v23 + 8))(v25, v22);
          }

          v33 = v24[2];
          v32 = v24[3];
          swift_unknownObjectRetain();

          if (v33)
          {
            swift_getObjectType();
            v34 = sub_22B360ACC();
            v36 = v35;
            swift_unknownObjectRelease();
          }

          else
          {
            v34 = 0;
            v36 = 0;
          }

          v6 = v41;
          sub_22B123284(v0[15], &qword_27D8BA8D0, &qword_22B363610);
          v37 = swift_allocObject();
          *(v37 + 16) = &unk_22B365E30;
          *(v37 + 24) = v24;
          if (v36 | v34)
          {
            v0[2] = 0;
            v0[3] = 0;
            v0[4] = v34;
            v0[5] = v36;
          }
        }

        swift_task_create();

        v4 = v42;
      }

      sub_22B180B2C(v0[19]);
      v5 += v6;
      --v2;
    }

    while (v2);
    v38 = v0[24];
  }

  v39 = v0[23];

  return MEMORY[0x2822009F8](sub_22B215E28, v39, 0);
}

uint64_t sub_22B215E28()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  sub_22B17EE98();

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_22B215EE0(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_22B36052C();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B215FA4, v2, 0);
}

uint64_t sub_22B215FA4()
{
  v20 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 104);
  if (v8)
  {
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v19);
    _os_log_impl(&dword_22B116000, v6, v7, "Disabling all next clean energy window notifications for homeID: %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  if (qword_28140A7B0 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = v16;
  *(v0 + 48) = 0;
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *v17 = v0;
  v17[1] = sub_22B216208;

  return sub_22B28DDB0(v0 + 16);
}

uint64_t sub_22B216208()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B216318, v2, 0);
}

uint64_t sub_22B216318()
{
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDB8;
  *(v0 + 136) = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B2163B0, v1, 0);
}

uint64_t sub_22B2163B0()
{
  v1 = v0[17];
  v2 = v0[15];
  if (sub_22B17EB14(v0[10], v0[11]))
  {
    v3 = 0;
  }

  else
  {
    v3 = 5;
  }

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22B216430()
{
  v1[8] = v0;
  v2 = sub_22B35EE8C();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_22B36052C();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B21654C, v0, 0);
}

uint64_t sub_22B21654C()
{
  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BD50;
  *(v0 + 120) = qword_28140BD50;

  return MEMORY[0x2822009F8](sub_22B2165E4, v1, 0);
}

uint64_t sub_22B2165E4()
{
  v1 = v0[15];
  v2 = v0[8];
  swift_beginAccess();
  v0[16] = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_22B216670, v2, 0);
}

uint64_t sub_22B216670()
{
  if (qword_28140A0C8 == -1)
  {
    goto LABEL_2;
  }

LABEL_40:
  swift_once();
LABEL_2:
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 128);
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    *(v10 + 4) = *(v9 + 16);

    _os_log_impl(&dword_22B116000, v6, v7, "Refresh notifications for %{public}ld locations", v10, 0xCu);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  else
  {
    v11 = *(v0 + 128);
  }

  v12 = *(v0 + 128);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v13 = v12 + 56;
  v14 = -1;
  v15 = -1 << *(v12 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v12 + 56);
  v17 = (63 - v15) >> 6;
  v51 = v12;

  v18 = 0;
  for (i = MEMORY[0x277D84F90]; v16; *(v26 + 5) = v22)
  {
LABEL_12:
    v21 = (*(v51 + 48) + 72 * (__clz(__rbit64(v16)) | (v18 << 6)));
    v23 = *v21;
    v22 = v21[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_22B32CD20(0, *(i + 2) + 1, 1, i);
    }

    v25 = *(i + 2);
    v24 = *(i + 3);
    if (v25 >= v24 >> 1)
    {
      i = sub_22B32CD20((v24 > 1), v25 + 1, 1, i);
    }

    v16 &= v16 - 1;
    *(i + 2) = v25 + 1;
    v26 = &i[16 * v25];
    *(v26 + 4) = v23;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      goto LABEL_12;
    }
  }

  v27 = *(v0 + 128);

  v28 = sub_22B31A80C(i);
  *(v0 + 136) = v28;

  v29 = *(v28 + 32);
  *(v0 + 204) = v29;
  v30 = -1;
  v31 = -1 << v29;
  v32 = *(v28 + 56);
  if (-v31 < 64)
  {
    v30 = ~(-1 << -v31);
  }

  *(v0 + 200) = *MEMORY[0x277D07360];
  v33 = v30 & v32;
  if (v33)
  {
    v34 = 0;
    v35 = *(v0 + 136);
LABEL_25:
    *(v0 + 144) = v33;
    *(v0 + 152) = v34;
    v39 = *(v0 + 80);
    v38 = *(v0 + 88);
    v40 = *(v0 + 72);
    v41 = (*(v35 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v33)))));
    v43 = *v41;
    v42 = v41[1];
    *(v0 + 160) = v42;
    (*(v39 + 104))(v38);

    v44 = sub_22B35EE7C();
    (*(v39 + 8))(v38, v40);
    if (v44)
    {
      if (qword_28140A6A0 != -1)
      {
        swift_once();
      }

      *(v0 + 184) = qword_28140BD38;

      v45 = swift_task_alloc();
      *(v0 + 192) = v45;
      *v45 = v0;
      v45[1] = sub_22B21700C;

      return sub_22B2911E8(v43, v42);
    }

    else
    {
      if (qword_28140A6A0 != -1)
      {
        swift_once();
      }

      *(v0 + 168) = qword_28140BD38;

      v47 = swift_task_alloc();
      *(v0 + 176) = v47;
      *v47 = v0;
      v47[1] = sub_22B216BF4;

      return sub_22B251814(v43, v42);
    }
  }

  else
  {
    v36 = 0;
    v37 = ((63 - v31) >> 6) - 1;
    v35 = *(v0 + 136);
    while (v37 != v36)
    {
      v34 = v36 + 1;
      v33 = *(v35 + 8 * v36++ + 64);
      if (v33)
      {
        goto LABEL_25;
      }
    }

    v48 = *(v0 + 112);
    v49 = *(v0 + 88);

    v50 = *(v0 + 8);

    return v50();
  }
}

uint64_t sub_22B216BF4()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 64);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_22B216D44, v4, 0);
}

uint64_t sub_22B216D44()
{
  v3 = *(v2 + 152);
  v4 = (*(v2 + 144) - 1) & *(v2 + 144);
  if (v4)
  {
    v5 = *(v2 + 136);
LABEL_7:
    *(v2 + 144) = v4;
    *(v2 + 152) = v3;
    v7 = *(v2 + 200);
    v9 = *(v2 + 80);
    v8 = *(v2 + 88);
    v10 = *(v2 + 72);
    v11 = (*(v5 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v4)))));
    v1 = *v11;
    v0 = v11[1];
    *(v2 + 160) = v0;
    (*(v9 + 104))(v8, v7, v10);

    v12 = sub_22B35EE7C();
    (*(v9 + 8))(v8, v10);
    if (v12)
    {
      if (qword_28140A6A0 != -1)
      {
LABEL_21:
        swift_once();
      }

      *(v2 + 184) = qword_28140BD38;

      v13 = swift_task_alloc();
      *(v2 + 192) = v13;
      *v13 = v2;
      v13[1] = sub_22B21700C;

      return sub_22B2911E8(v1, v0);
    }

    else
    {
      if (qword_28140A6A0 != -1)
      {
        swift_once();
      }

      *(v2 + 168) = qword_28140BD38;

      v15 = swift_task_alloc();
      *(v2 + 176) = v15;
      *v15 = v2;
      v15[1] = sub_22B216BF4;

      return sub_22B251814(v1, v0);
    }
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      v5 = *(v2 + 136);
      if (v6 >= (((1 << *(v2 + 204)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 56);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v16 = *(v2 + 112);
    v17 = *(v2 + 88);

    v18 = *(v2 + 8);

    return v18();
  }
}

uint64_t sub_22B21700C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 64);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_22B217394, v4, 0);
}

uint64_t sub_22B21715C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B28D78C(a1, v4, v5, v7, v6);
}

uint64_t sub_22B21721C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B119A60;

  return sub_22B28D78C(a1, v4, v5, v7, v6);
}

uint64_t sub_22B2172DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B119A60;

  return sub_22B1243B8(a1, v5);
}

void sub_22B217398(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 tariffProfileID];
  v5 = sub_22B36084C();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  v8 = [a1 start];
  v9 = type metadata accessor for CDTOUPeak();
  v10 = a2 + v9[5];
  sub_22B35DE5C();

  v11 = [a1 end];
  v12 = a2 + v9[6];
  sub_22B35DE5C();

  v13 = [a1 peaks];
  v14 = sub_22B35DCDC();
  v16 = v15;

  v17 = sub_22B21CC88();
  sub_22B12F174(v14, v16);
  *(a2 + v9[7]) = v17;
  v18 = [a1 utilityID];
  v19 = sub_22B36084C();
  v21 = v20;

  v22 = (a2 + v9[8]);
  *v22 = v19;
  v22[1] = v21;
  v23 = [a1 descriptor];
  v24 = sub_22B36084C();
  v26 = v25;

  v27 = (a2 + v9[9]);
  *v27 = v24;
  v27[1] = v26;
}

uint64_t sub_22B217524@<X0>(void *a1@<X2>, char **a2@<X8>)
{
  v36 = a2;
  v4 = sub_22B35FF8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  sub_22B128014(0, &qword_27D8BA690, 0x277CBEA60);
  result = sub_22B360F7C();
  if (v2)
  {
LABEL_2:
    *a1 = v2;
  }

  else
  {
    v16 = a1;
    v17 = v36;
    v41 = v14;
    v42 = v8;
    if (result)
    {
      v44 = 0;
      v45 = 0;
      v18 = result;
      sub_22B360A4C();

      result = v45;
      if (v45)
      {
        v40 = *(v45 + 16);
        if (v40)
        {
          v39 = v11;
          v35 = v16;
          v19 = 0;
          v37 = v5;
          v43 = (v5 + 32);
          v20 = (v45 + 40);
          v21 = MEMORY[0x277D84F90];
          v38 = v45;
          while (v19 < *(result + 16))
          {
            v22 = *(v20 - 1);
            v23 = *v20;
            v24 = sub_22B144B30(v22, *v20);
            v25 = MEMORY[0x23188EEB0](v24);
            v26 = sub_22B35D7FC();
            v27 = *(v26 + 48);
            v28 = *(v26 + 52);
            swift_allocObject();
            sub_22B35D7EC();
            sub_22B21CA9C(&qword_27D8BA868, MEMORY[0x277D180E0]);
            v29 = v44;
            sub_22B35D7DC();
            v44 = v29;
            if (v29)
            {

              objc_autoreleasePoolPop(v25);
              sub_22B12F174(v22, v23);

              v2 = v44;
              a1 = v35;
              goto LABEL_2;
            }

            objc_autoreleasePoolPop(v25);
            sub_22B12F174(v22, v23);
            v30 = *v43;
            v31 = v41;
            (*v43)(v41, v11, v4);
            v32 = v42;
            v30(v42, v31, v4);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_22B32D1C8(0, *(v21 + 2) + 1, 1, v21);
            }

            v34 = *(v21 + 2);
            v33 = *(v21 + 3);
            if (v34 >= v33 >> 1)
            {
              v21 = sub_22B32D1C8(v33 > 1, v34 + 1, 1, v21);
            }

            ++v19;
            *(v21 + 2) = v34 + 1;
            v30(&v21[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34], v32, v4);
            v20 += 2;
            result = v38;
            if (v40 == v19)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
        }

        else
        {
          v21 = MEMORY[0x277D84F90];
LABEL_18:

          *v36 = v21;
        }
      }

      else
      {
        *v17 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      *v36 = MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_22B217904(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, void *a7, uint64_t a8)
{
  v68[1] = a8;
  v74 = a7;
  v76 = a5;
  v77 = a2;
  v78 = a4;
  v88[1] = *MEMORY[0x277D85DE8];
  v13 = sub_22B35FF8C();
  v85 = *(v13 - 8);
  v14 = *(v85 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B36052C();
  v79 = *(v17 - 8);
  v18 = *(v79 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x23188EEB0](v19);
  v22 = *(sub_22B36022C() + 16);

  v72 = a1;
  v73 = a6;
  if (!v22)
  {
    v41 = 0xC000000000000000;
LABEL_14:
    v47 = v76;
    v48 = v77;
    v86 = v22;
    v87 = v41;
    v49 = v73;
    if (v74)
    {
      v50 = v74;
    }

    else
    {
      v51 = sub_22B2A632C();
      v52 = [v51 newBackgroundContext];
      v53 = sub_22B36081C();
      [v52 setTransactionAuthor_];

      [v52 setMergePolicy_];
      [v52 setUndoManager_];
      [v52 setShouldRefreshAfterSave_];
      [v52 setStalenessInterval_];
      [v52 setShouldDeleteInaccessibleFaults_];

      v23 = v52;
      v50 = v23;
    }

    v88[0] = v50;
    MEMORY[0x28223BE20](v23);
    v54 = v72;
    v68[-8] = v49;
    v68[-7] = v54;
    v68[-6] = v88;
    v68[-5] = v48;
    v55 = v78;
    v68[-4] = a3;
    v68[-3] = v55;
    v68[-2] = v47;
    v68[-1] = &v86;
    v57 = v56;
    sub_22B360E7C();

    sub_22B12F174(v86, v87);
    objc_autoreleasePoolPop(v75);
    goto LABEL_22;
  }

  v83 = v16;
  v84 = v13;
  v69 = a3;
  v24 = sub_22B36022C();
  MEMORY[0x28223BE20](v24);
  v68[-2] = a6;
  v88[0] = v25;

  v26 = 0;
  sub_22B21AEB4(sub_22B21AE94, &v68[-4]);
  v71 = v21;
  v70 = v17;

  v27 = v88[0];
  v82 = *(v88[0] + 2);
  if (v82)
  {
    v28 = 0;
    v29 = v84;
    v80 = v85 + 16;
    v81 = (v85 + 8);
    v30 = MEMORY[0x277D84F90];
    while (v28 < v27[2])
    {
      v9 = v27;
      v8 = v83;
      v31 = (*(v85 + 16))(v83, v27 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v28, v29);
      v32 = MEMORY[0x23188EEB0](v31);
      v33 = sub_22B35D82C();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      sub_22B35D81C();
      sub_22B21CA9C(&qword_27D8BA848, MEMORY[0x277D180E0]);
      v36 = sub_22B35D80C();
      v38 = v37;

      objc_autoreleasePoolPop(v32);
      (*v81)(v8, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22B32D0BC(0, *(v30 + 2) + 1, 1, v30);
      }

      v27 = v9;
      a6 = *(v30 + 2);
      v39 = *(v30 + 3);
      if (a6 >= v39 >> 1)
      {
        v30 = sub_22B32D0BC((v39 > 1), a6 + 1, 1, v30);
        v27 = v9;
      }

      ++v28;
      *(v30 + 2) = a6 + 1;
      v40 = &v30[16 * a6];
      *(v40 + 4) = v36;
      *(v40 + 5) = v38;
      if (v82 == v28)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_12:

  v42 = objc_opt_self();
  v43 = sub_22B360A3C();

  v88[0] = 0;
  v44 = [v42 archivedDataWithRootObject:v43 requiringSecureCoding:0 error:v88];

  v45 = v88[0];
  a6 = v79;
  v28 = v71;
  if (v44)
  {
    v22 = sub_22B35DCDC();
    v41 = v46;

    a3 = v69;
    goto LABEL_14;
  }

  v58 = v45;
  v59 = sub_22B35DB9C();

  swift_willThrow();
  v26 = v59;
  v30 = v70;
  v29 = v69;
  v8 = v76;
  v9 = v77;
  objc_autoreleasePoolPop(v75);
  if (qword_28140A0C8 != -1)
  {
LABEL_24:
    swift_once();
  }

  v60 = __swift_project_value_buffer(v30, qword_28140BD10);
  swift_beginAccess();
  (*(a6 + 16))(v28, v60, v30);

  v61 = sub_22B36050C();
  v62 = sub_22B360D1C();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = v8;
    v66 = v64;
    v88[0] = v64;
    *v63 = 136380931;
    *(v63 + 4) = sub_22B1A7B20(v78, v65, v88);
    *(v63 + 12) = 2081;
    *(v63 + 14) = sub_22B1A7B20(v9, v29, v88);
    _os_log_impl(&dword_22B116000, v61, v62, "Failed to add TOUPeaks entry for %{private}s profile %{private}s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v66, -1, -1);
    MEMORY[0x23188F650](v63, -1, -1);
  }

  (*(a6 + 8))(v28, v30);
LABEL_22:
  v67 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B218168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v41 = sub_22B35DDBC();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v38 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = sub_22B35DE9C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v31 - v22;
  v36 = a3;
  sub_22B35F55C();
  sub_22B35FF7C();
  v24 = v40;
  sub_22B35DD9C();
  if (v24)
  {

    (*(v4 + 8))(v9, v41);
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  else
  {
    v33 = v20;
    v34 = 0;
    v35 = *(v4 + 8);
    v35(v9, v41);

    v40 = *(v17 + 56);
    v40(v15, 0, 1, v16);
    v32 = *(v17 + 32);
    v32(v23, v15, v16);
    sub_22B35F55C();
    sub_22B35FF7C();
    v15 = v38;
    v25 = v34;
    sub_22B35DD9C();
    v26 = (v17 + 8);
    if (!v25)
    {
      v35(v39, v41);

      v40(v15, 0, 1, v16);
      v29 = v33;
      v32(v33, v15, v16);
      v27 = sub_22B35DDFC();
      v30 = *v26;
      (*v26)(v29, v16);
      v30(v23, v16);
      return v27 & 1;
    }

    v35(v39, v41);
    v40(v15, 1, 1, v16);
    (*v26)(v23, v16);
  }

  sub_22B123284(v15, &qword_27D8BA340, &qword_22B363FB0);
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_22B2185AC(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v49 = a7;
  v50 = a8;
  v47 = a5;
  v48 = a6;
  v46 = a4;
  v51 = a3;
  v10 = sub_22B35DDBC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = sub_22B35DE9C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v54 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - v23;
  v52 = a1;
  sub_22B35F59C();
  v53 = a2;
  sub_22B36021C();
  v25 = v55;
  sub_22B35DD9C();
  if (v25)
  {
    (*(v11 + 8))(v17, v10);
  }

  else
  {
    v44 = v24;
    v45 = v19;
    v55 = v18;
    v27 = *(v11 + 8);
    v27(v17, v10);

    sub_22B35F59C();
    sub_22B3601FC();
    sub_22B35DD9C();
    v27(v14, v10);

    sub_22B35FF3C();
    v28 = v51;
    v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v30 = v44;
    v31 = sub_22B35DDDC();
    [v29 setStart_];

    v32 = sub_22B35DDDC();
    [v29 setEnd_];

    v33 = sub_22B36081C();
    [v29 setTariffProfileID_];

    v34 = sub_22B36081C();
    [v29 setUtilityID_];

    v35 = *v50;
    v36 = v50[1];
    sub_22B144B30(*v50, v36);
    v37 = sub_22B35DCCC();
    sub_22B12F174(v35, v36);
    [v29 setPeaks_];

    sub_22B3601DC();
    v38 = sub_22B36081C();

    [v29 setDescriptor_];

    v39 = *v28;
    sub_22B2A534C(0);
    v40 = v45;

    [*v28 refreshAllObjects];
    v41 = *(v40 + 8);
    v42 = v55;
    v41(v54, v55);
    return (v41)(v30, v42);
  }
}

void sub_22B218A08(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, int a5@<W5>, uint64_t a6@<X6>, id *a7@<X7>, uint64_t a8@<X8>)
{
  v72 = a3;
  v73 = a7;
  v67[0] = a8;
  v67[1] = a6;
  LODWORD(v75) = a5;
  v71 = a1;
  v10 = type metadata accessor for CDTOUPeak();
  v78 = *(v10 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v79 = (v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = sub_22B35FF3C();
  v13 = sub_22B35FF2C();
  [v13 setResultType_];
  v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v15 = sub_22B36081C();
  v16 = [v14 initWithKey:v15 ascending:1];

  v17 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v18 = sub_22B36081C();
  v19 = [v17 initWithKey:v18 ascending:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22B363950;
  *(v20 + 32) = v16;
  *(v20 + 40) = v19;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v69 = v16;
  v68 = v19;
  v21 = sub_22B360A3C();

  v74 = v13;
  [v13 setSortDescriptors_];

  v80 = MEMORY[0x277D84F90];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v22 = swift_allocObject();
  v70 = xmmword_22B3634C0;
  *(v22 + 16) = xmmword_22B3634C0;
  v23 = MEMORY[0x277D837D0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  v24 = sub_22B1280E4();
  v25 = v72;
  *(v22 + 32) = v71;
  *(v22 + 40) = a2;
  *(v22 + 96) = v23;
  *(v22 + 104) = v24;
  *(v22 + 64) = v24;
  *(v22 + 72) = v25;
  *(v22 + 80) = a4;

  v26 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v72 = v26;
    sub_22B360A9C();
    v27 = swift_allocObject();
    *(v27 + 16) = v70;
    v28 = sub_22B35DDDC();
    v29 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v27 + 56) = v29;
    v30 = sub_22B1D7CDC();
    *(v27 + 64) = v30;
    *(v27 + 32) = v28;
    v31 = sub_22B35DDDC();
    *(v27 + 96) = v29;
    *(v27 + 104) = v30;
    *(v27 + 72) = v31;
    v32 = sub_22B360CCC();
    if (v75)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_22B363660;
      v34 = sub_22B35DDDC();
      *(v33 + 56) = v29;
      *(v33 + 64) = v30;
      *(v33 + 32) = v34;
      v35 = sub_22B35DDDC();
      *(v33 + 96) = v29;
      *(v33 + 104) = v30;
      *(v33 + 72) = v35;
      v36 = sub_22B35DDDC();
      *(v33 + 136) = v29;
      *(v33 + 144) = v30;
      *(v33 + 112) = v36;
      v37 = sub_22B35DDDC();
      *(v33 + 176) = v29;
      *(v33 + 184) = v30;
      *(v33 + 152) = v37;
      v38 = sub_22B35DDDC();
      *(v33 + 216) = v29;
      *(v33 + 224) = v30;
      *(v33 + 192) = v38;
      v39 = sub_22B35DDDC();
      *(v33 + 256) = v29;
      *(v33 + 264) = v30;
      *(v33 + 232) = v39;
      v40 = sub_22B360CCC();

      v32 = v40;
      MEMORY[0x23188E350]();
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v65 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22B360A7C();
      }

      sub_22B360A9C();
    }

    v42 = v73;
    v41 = v74;
    v43 = v32;
    MEMORY[0x23188E350]();
    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v64 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    sub_22B360A9C();
    v44 = v80;
    v45 = objc_allocWithZone(MEMORY[0x277CCA920]);
    v46 = sub_22B360A3C();
    v47 = [v45 initWithType:1 subpredicates:v46];

    [v41 setPredicate_];
    v48 = *v42;
    v49 = v43;
    v50 = v48;
    v51 = v77;
    v52 = sub_22B360E9C();
    v75 = v51;
    if (v51)
    {

      v53 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v54 = sub_22B36081C();
      v55 = [v53 initWithDomain:v54 code:1 userInfo:0];

      v75 = v55;
      swift_willThrow();

      return;
    }

    v56 = v52;
    v76 = v44;
    v77 = v47;
    v71 = v49;

    if (!(v56 >> 62))
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = v77;
      if (!v57)
      {
        break;
      }

      goto LABEL_12;
    }

    v57 = sub_22B36109C();
    v26 = v77;
    if (!v57)
    {
      break;
    }

LABEL_12:
    v58 = 0;
    v59 = MEMORY[0x277D84F90];
    while ((v56 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x23188EAC0](v58, v56);
      v26 = (v58 + 1);
      if (__OFADD__(v58, 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      sub_22B217398(v60, v79);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_22B32D810(0, v59[2] + 1, 1, v59);
      }

      v62 = v59[2];
      v61 = v59[3];
      if (v62 >= v61 >> 1)
      {
        v59 = sub_22B32D810(v61 > 1, v62 + 1, 1, v59);
      }

      v59[2] = v62 + 1;
      sub_22B21CC24(v79, v59 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v62);
      ++v58;
      v63 = v26 == v57;
      v26 = v77;
      if (v63)
      {
        goto LABEL_30;
      }
    }

    if (v58 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v60 = *(v56 + 8 * v58 + 32);
    v26 = (v58 + 1);
    if (!__OFADD__(v58, 1))
    {
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_22B360A7C();
  }

  v59 = MEMORY[0x277D84F90];
LABEL_30:

  v66 = *v73;
  [v66 refreshAllObjects];

  *v67[0] = v59;
}

void sub_22B2191D0(uint64_t a1, void *a2)
{
  v4 = sub_22B35DE9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x23188EEB0](v7);
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v10 = sub_22B2A632C();
    v11 = [v10 newBackgroundContext];
    v12 = sub_22B36081C();
    [v11 setTransactionAuthor_];

    [v11 setMergePolicy_];
    [v11 setUndoManager_];
    [v11 setShouldRefreshAfterSave_];
    [v11 setStalenessInterval_];
    [v11 setShouldDeleteInaccessibleFaults_];

    v9 = v11;
  }

  v22 = v9;
  (*(v5 + 16))(&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v22;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22B21CAE4;
  *(v15 + 24) = v14;
  aBlock[4] = sub_22B12819C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_17;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  [v9 performBlockAndWait_];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v19 = v22;

    objc_autoreleasePoolPop(v8);
  }
}

void sub_22B219510(uint64_t a1, id *a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v87 = sub_22B35DE9C();
  v86 = *(v87 - 8);
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v6 = &v81[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22B36052C();
  v89 = *(v7 - 8);
  v8 = v89[8];
  MEMORY[0x28223BE20](v7);
  v10 = &v81[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v88 = &v81[-v12];
  v13 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v14 = sub_22B36081C();
  v15 = [v13 initWithEntityName_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v16 = swift_allocObject();
  v85 = xmmword_22B3634B0;
  *(v16 + 16) = xmmword_22B3634B0;
  v17 = sub_22B35DDDC();
  *(v16 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v16 + 64) = sub_22B1D7CDC();
  *(v16 + 32) = v17;
  v91 = sub_22B360CCC();
  [v15 setPredicate_];
  v18 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v18 setResultType_];
  v19 = *a2;
  *&v96 = 0;
  v20 = [v19 executeRequest:v18 error:&v96];
  v21 = v96;
  if (v20)
  {
    v22 = v20;
    v23 = v7;
    v90 = v18;
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    v25 = v21;
    if (v24)
    {
      if ([v24 result])
      {
        sub_22B36102C();
        swift_unknownObjectRelease();
      }

      else
      {
        v94 = 0u;
        v95 = 0u;
      }

      v96 = v94;
      v97 = v95;
      if (*(&v95 + 1))
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA858, &qword_22B365EF8);
        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_23;
        }

        v51 = a2;
        v52 = v94;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
        inited = swift_initStackObject();
        *(inited + 16) = v85;
        v54 = *MEMORY[0x277CBE150];
        *&v96 = sub_22B36084C();
        *(&v96 + 1) = v55;
        sub_22B36110C();
        *(inited + 96) = v50;
        *(inited + 72) = v52;
        sub_22B321BDC(inited);
        swift_setDeallocating();
        sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
        v84 = objc_opt_self();
        v56 = sub_22B3606CC();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_22B363650;
        *&v85 = v51;
        v58 = *v51;
        *(v57 + 32) = v58;
        sub_22B128014(0, &qword_281408580, 0x277CBE440);
        v59 = v58;
        v60 = sub_22B360A3C();

        [v84 mergeChangesFromRemoteContextSave:v56 intoContexts:v60];

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v61 = v23;
        v62 = __swift_project_value_buffer(v23, qword_28140BD10);
        swift_beginAccess();
        v63 = v89;
        (v89[2])(v88, v62, v61);
        v64 = v86;
        v65 = v87;
        (*(v86 + 16))(v6, a1, v87);
        v66 = sub_22B36050C();
        v67 = sub_22B360D2C();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v83 = v66;
          v69 = v68;
          v84 = swift_slowAlloc();
          *&v96 = v84;
          *v69 = 136315138;
          sub_22B21CA9C(&qword_28140B488, MEMORY[0x277CC9578]);
          v82 = v67;
          v70 = sub_22B36131C();
          v71 = v65;
          v73 = v72;
          (*(v64 + 8))(v6, v71);
          v74 = sub_22B1A7B20(v70, v73, &v96);

          v75 = v69;
          *(v69 + 4) = v74;
          v76 = v83;
          v77 = v75;
          _os_log_impl(&dword_22B116000, v83, v82, "Sucessfully deleted all data for TOUPeaks older than %s", v75, 0xCu);
          v78 = v84;
          __swift_destroy_boxed_opaque_existential_0(v84);
          MEMORY[0x23188F650](v78, -1, -1);
          MEMORY[0x23188F650](v77, -1, -1);
        }

        else
        {

          (*(v64 + 8))(v6, v65);
        }

        (v63[1])(v88, v61);
        a2 = v85;
        v80 = *v85;
        sub_22B2A534C(1);

        v18 = v90;
        goto LABEL_12;
      }
    }

    else
    {

      v96 = 0u;
      v97 = 0u;
    }

    sub_22B123284(&v96, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_23;
  }

  v26 = v96;
  v27 = sub_22B35DB9C();

  swift_willThrow();
  v28 = v89;
  v93 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  sub_22B128014(0, &qword_281408530, 0x277CCA9B8);
  swift_dynamicCast();
  v29 = v92;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (v28[2])(v10, v30, v7);
  v31 = v29;
  v32 = sub_22B36050C();
  v33 = sub_22B360D1C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v90 = v18;
    v35 = v34;
    v36 = swift_slowAlloc();
    v89 = v15;
    *&v85 = a2;
    v37 = v36;
    *&v96 = v36;
    *v35 = 136446210;
    v38 = [v31 localizedDescription];
    v39 = sub_22B36084C();
    v88 = v7;
    v41 = v40;

    v42 = sub_22B1A7B20(v39, v41, &v96);

    *(v35 + 4) = v42;
    _os_log_impl(&dword_22B116000, v32, v33, "Failed to batch delete data %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    v43 = v37;
    a2 = v85;
    v15 = v89;
    MEMORY[0x23188F650](v43, -1, -1);
    v44 = v35;
    v18 = v90;
    MEMORY[0x23188F650](v44, -1, -1);

    (v28[1])(v10, v88);
  }

  else
  {

    (v28[1])(v10, v7);
  }

  v45 = [objc_opt_self() processInfo];
  v46 = [v45 processName];

  v47 = sub_22B36084C();
  v49 = v48;

  LOWORD(v96) = 513;
  BYTE2(v96) = 8;
  *(&v96 + 1) = v47;
  v97 = v49;
  static AutoBugCaptureManager.sendIssue(_:)(&v96);

LABEL_12:
  [*a2 refreshAllObjects];

LABEL_23:
  v79 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22B21A08C()
{
  type metadata accessor for TOUPeaksManager();
  v0 = swift_allocObject();
  result = sub_22B21A0C8();
  qword_28140BC80 = v0;
  return result;
}

uint64_t sub_22B21A0C8()
{
  v1 = v0;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  v2 = (v0 + 112);
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  v3 = sub_22B33AD90(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);
  v4 = *v2;
  *v2 = v3;

  v5 = *v2;
  if (v5)
  {

    v6 = sub_22B2A632C();

    v5 = [v6 newBackgroundContext];
    v7 = sub_22B36081C();
    [v5 setTransactionAuthor_];

    [v5 setMergePolicy_];
    [v5 setUndoManager_];
    [v5 setShouldRefreshAfterSave_];
    [v5 setStalenessInterval_];
    [v5 setShouldDeleteInaccessibleFaults_];
  }

  v8 = *(v1 + 120);
  *(v1 + 120) = v5;

  return v1;
}

uint64_t sub_22B21A278(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v77 = a1;
  v73 = a7;
  v78 = a3;
  v79 = a6;
  v10 = sub_22B35DE9C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  v18 = sub_22B36052C();
  v80 = *(v18 - 8);
  v81 = v18;
  v19 = v80[8];
  MEMORY[0x28223BE20](v18);
  v71 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v63 - v22;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v24 = v81;
  v25 = __swift_project_value_buffer(v81, qword_28140BD10);
  swift_beginAccess();
  v26 = v80[2];
  v69 = v80 + 2;
  v70 = v25;
  v68 = v26;
  v26(v23, v25, v24);
  v27 = v23;
  v28 = v11[2];
  v72 = a5;
  v28(v17, a5, v10);
  v28(v14, v79, v10);

  v75 = v27;
  v29 = sub_22B36050C();
  v30 = sub_22B360D2C();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v14;
  v74 = a4;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v83 = v67;
    *v33 = 136315906;
    v64 = v32;
    v66 = v30;
    v34 = v77;
    *(v33 + 4) = sub_22B1A7B20(v77, a2, &v83);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_22B1A7B20(v78, a4, &v83);
    *(v33 + 22) = 2080;
    sub_22B21CA9C(&qword_28140B488, MEMORY[0x277CC9578]);
    v65 = v29;
    v35 = sub_22B36131C();
    v37 = v36;
    v38 = v11[1];
    v38(v17, v10);
    v39 = sub_22B1A7B20(v35, v37, &v83);
    v40 = v81;
    v41 = a2;

    *(v33 + 24) = v39;
    *(v33 + 32) = 2080;
    v42 = v64;
    v43 = sub_22B36131C();
    v45 = v44;
    v38(v42, v10);
    v46 = sub_22B1A7B20(v43, v45, &v83);

    *(v33 + 34) = v46;
    v47 = v65;
    _os_log_impl(&dword_22B116000, v65, v66, "Getting TOUPeaks for %s: %s between %s-%s", v33, 0x2Au);
    v48 = v67;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v48, -1, -1);
    MEMORY[0x23188F650](v33, -1, -1);

    v49 = v80[1];
    v49(v75, v40);
  }

  else
  {

    v50 = v11[1];
    v50(v14, v10);
    v50(v17, v10);
    v49 = v80[1];
    v49(v75, v81);
    v34 = v77;
    v41 = a2;
  }

  if (!v76[14])
  {
    return 0;
  }

  v75 = v49;
  v51 = v76[15];
  v52 = v51;

  v54 = MEMORY[0x23188EEB0](v53);
  v76 = v54;
  v55 = v52;
  if (!v51)
  {
    v56 = sub_22B2A632C();
    v57 = [v56 newBackgroundContext];
    v58 = sub_22B36081C();
    [v57 setTransactionAuthor_];

    [v57 setMergePolicy_];
    [v57 setUndoManager_];
    [v57 setShouldRefreshAfterSave_];
    [v57 setStalenessInterval_];
    [v57 setShouldDeleteInaccessibleFaults_];

    v54 = v57;
    v55 = v54;
  }

  v82 = v55;
  MEMORY[0x28223BE20](v54);
  v59 = v79;
  v60 = v74;
  *(&v63 - 8) = v78;
  *(&v63 - 7) = v60;
  *(&v63 - 6) = v34;
  *(&v63 - 5) = v41;
  *(&v63 - 4) = v72;
  *(&v63 - 24) = v73 & 1;
  *(&v63 - 2) = v59;
  *(&v63 - 1) = &v82;
  v61 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA860, &qword_22B365F08);
  sub_22B360E7C();

  objc_autoreleasePoolPop(v76);

  return v83;
}