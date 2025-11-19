void sub_251BD581C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_251C6FD74();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_251BD58BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthRecordsIngestionServiceServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251BD5924(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  ObjectType = swift_getObjectType();
  sub_251BDB154(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v13 = sub_251C70764();
  __swift_project_value_buffer(v13, qword_2813E8130);
  v14 = v4;
  v15 = sub_251C70744();
  v16 = sub_251C713F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = a3;
    v19 = v18;
    v33 = v18;
    *v17 = 136315138;
    v29 = a1;
    v31 = ObjectType;
    swift_getMetatypeMetadata();
    v31 = sub_251C70F74();
    v32 = v20;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a1 = v29;
    MEMORY[0x25308CDA0](0xD000000000000035, 0x8000000251C8FF60);

    v21 = sub_251B10780(v31, v32, &v33);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_251A6C000, v15, v16, "%s starting", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v22 = v19;
    a3 = v28;
    MEMORY[0x25308E2B0](v22, -1, -1);
    MEMORY[0x25308E2B0](v17, -1, -1);
  }

  v23 = sub_251C71214();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v14;
  v24[5] = a1;
  v24[6] = v30;
  v24[7] = a3;
  v24[8] = a4;
  v25 = v14;
  v26 = a1;

  sub_251C56428(0, 0, v12, &unk_251C84F60, v24);
}

uint64_t sub_251BD5C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  return MEMORY[0x2822009F8](sub_251BD5C68, 0, 0);
}

uint64_t sub_251BD5C68()
{
  type metadata accessor for SignedClinicalDataManager();
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 16) = 0;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_251BD5D18;
  v4 = v0[14];
  v3 = v0[15];

  return sub_251BCC8A8(v4, v3);
}

uint64_t sub_251BD5D18(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = sub_251BD600C;
  }

  else
  {
    v5 = sub_251BD5E2C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BD5E2C()
{
  v20 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);
  v3 = v1;
  v4 = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = sub_251B2DA28(0xD000000000000035, 0x8000000251C8FF60);
    v11 = sub_251B10780(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_251A6C000, v4, v5, "%s finished successfully", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }

  v12 = v0[20];
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v16 = v12;
  v15(v12, 0);

  swift_setDeallocating();
  v17 = v0[1];

  return v17();
}

uint64_t sub_251BD600C()
{
  v29 = v0;
  v1 = v0[18];
  swift_setDeallocating();

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = v0[13];
  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);
  v5 = v3;
  v6 = v2;
  v7 = sub_251C70744();
  v8 = sub_251C713D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[21];
    v10 = v0[13];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315394;
    v13 = sub_251B2DA28(0xD000000000000035, 0x8000000251C8FF60);
    v15 = sub_251B10780(v13, v14, &v28);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v16 = v0[8];
    v17 = v0[10];
    v18 = sub_251BBFFA4(v0[9]);
    v20 = sub_251B10780(v18, v19, &v28);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_251A6C000, v7, v8, "%s failed with %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  v21 = v0[21];
  v23 = v0[16];
  v22 = v0[17];
  swift_getErrorValue();
  v24 = v0[5];
  v25 = sub_251BC0124(v0[6], v0[7]);
  v23(0, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_251BD62A8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  ObjectType = swift_getObjectType();
  sub_251BDB154(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v13 = sub_251C70764();
  __swift_project_value_buffer(v13, qword_2813E8130);
  v14 = v4;
  v15 = sub_251C70744();
  v16 = sub_251C713F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136315138;
    v31 = a2;
    v33 = ObjectType;
    swift_getMetatypeMetadata();
    v33 = sub_251C70F74();
    v34 = v20;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a2 = v31;
    MEMORY[0x25308CDA0](0xD00000000000003DLL, 0x8000000251C8FF20);

    v21 = sub_251B10780(v33, v34, &v35);

    *(v18 + 4) = v21;
    _os_log_impl(&dword_251A6C000, v15, v16, "%s starting", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x25308E2B0](v19, -1, -1);
    v22 = v18;
    a1 = v30;
    MEMORY[0x25308E2B0](v22, -1, -1);
  }

  v23 = sub_251C71214();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v14;
  v24[5] = a1;
  v25 = v32;
  v24[6] = a2;
  v24[7] = v25;
  v24[8] = a4;
  v26 = v14;
  v27 = a1;
  v28 = a2;

  sub_251C56428(0, 0, v12, &unk_251C84F50, v24);
}

uint64_t sub_251BD65C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  return MEMORY[0x2822009F8](sub_251BD65F0, 0, 0);
}

uint64_t sub_251BD65F0()
{
  type metadata accessor for SignedClinicalDataManager();
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 16) = 0;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_251BD66A4;
  v4 = v0[14];
  v3 = v0[15];

  return sub_251BCDE04(v4, v3, 0);
}

uint64_t sub_251BD66A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v7 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = sub_251BD6998;
  }

  else
  {
    v5 = sub_251BD67B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BD67B8()
{
  v20 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);
  v3 = v1;
  v4 = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = sub_251B2DA28(0xD00000000000003DLL, 0x8000000251C8FF20);
    v11 = sub_251B10780(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_251A6C000, v4, v5, "%s finished successfully", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }

  v12 = v0[20];
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v16 = v12;
  v15(v12, 0);

  swift_setDeallocating();
  v17 = v0[1];

  return v17();
}

uint64_t sub_251BD6998()
{
  v29 = v0;
  v1 = v0[18];
  swift_setDeallocating();

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = v0[13];
  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);
  v5 = v3;
  v6 = v2;
  v7 = sub_251C70744();
  v8 = sub_251C713D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[21];
    v10 = v0[13];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315394;
    v13 = sub_251B2DA28(0xD00000000000003DLL, 0x8000000251C8FF20);
    v15 = sub_251B10780(v13, v14, &v28);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v16 = v0[8];
    v17 = v0[10];
    v18 = sub_251BBFFA4(v0[9]);
    v20 = sub_251B10780(v18, v19, &v28);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_251A6C000, v7, v8, "%s failed with %s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  v21 = v0[21];
  v23 = v0[16];
  v22 = v0[17];
  swift_getErrorValue();
  v24 = v0[5];
  v25 = sub_251BC0124(v0[6], v0[7]);
  v23(0, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_251BD6CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  ObjectType = swift_getObjectType();
  sub_251BDB154(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v13 = sub_251C70764();
  __swift_project_value_buffer(v13, qword_2813E8130);
  v14 = v4;
  v15 = sub_251C70744();
  v16 = sub_251C713F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = a3;
    v19 = v18;
    v32 = v18;
    *v17 = 136315138;
    v28 = a1;
    v30 = ObjectType;
    swift_getMetatypeMetadata();
    v30 = sub_251C70F74();
    v31 = v20;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a1 = v28;
    MEMORY[0x25308CDA0](0xD000000000000046, 0x8000000251C8FED0);

    v21 = sub_251B10780(v30, v31, &v32);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_251A6C000, v15, v16, "%s starting", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v22 = v19;
    a3 = v27;
    MEMORY[0x25308E2B0](v22, -1, -1);
    MEMORY[0x25308E2B0](v17, -1, -1);
  }

  v23 = sub_251C71214();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v14;
  v24[5] = a1;
  v24[6] = v29;
  v24[7] = a3;
  v24[8] = a4;
  v25 = v14;

  sub_251C56428(0, 0, v12, &unk_251C84F40, v24);
}

uint64_t sub_251BD6FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[10] = a4;
  v11 = swift_task_alloc();
  v8[13] = v11;
  *v11 = v8;
  v11[1] = sub_251BD7098;

  return sub_251BD13CC(a5, a6);
}

uint64_t sub_251BD7098(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = sub_251BD7378;
  }

  else
  {
    v5 = sub_251BD71AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BD71AC()
{
  v19 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);
  v3 = v1;
  v4 = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = sub_251B2DA28(0xD000000000000046, 0x8000000251C8FED0);
    v11 = sub_251B10780(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_251A6C000, v4, v5, "%s finished successfully", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }

  v12 = v0[14];
  v14 = v0[11];
  v13 = v0[12];
  v15 = v12;
  v14(v12, 0);

  v16 = v0[1];

  return v16();
}

uint64_t sub_251BD7378()
{
  v28 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[10];
  v3 = sub_251C70764();
  __swift_project_value_buffer(v3, qword_2813E8130);
  v4 = v2;
  v5 = v1;
  v6 = sub_251C70744();
  v7 = sub_251C713D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[15];
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315394;
    v12 = sub_251B2DA28(0xD000000000000046, 0x8000000251C8FED0);
    v14 = sub_251B10780(v12, v13, &v27);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v15 = v0[5];
    v16 = v0[7];
    v17 = sub_251BBFFA4(v0[6]);
    v19 = sub_251B10780(v17, v18, &v27);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_251A6C000, v6, v7, "%s failed with %s)", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v11, -1, -1);
    MEMORY[0x25308E2B0](v10, -1, -1);
  }

  v20 = v0[15];
  v22 = v0[11];
  v21 = v0[12];
  swift_getErrorValue();
  v23 = v0[2];
  v24 = sub_251BC0124(v0[3], v0[4]);
  v22(0, v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_251BD76A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  ObjectType = swift_getObjectType();
  sub_251BDB154(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v13 = sub_251C70764();
  __swift_project_value_buffer(v13, qword_2813E8130);
  v14 = v4;
  v15 = sub_251C70744();
  v16 = sub_251C713F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = a3;
    v19 = v18;
    v33 = v18;
    *v17 = 136315138;
    v29 = a1;
    v31 = ObjectType;
    swift_getMetatypeMetadata();
    v31 = sub_251C70F74();
    v32 = v20;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a1 = v29;
    MEMORY[0x25308CDA0](0xD000000000000031, 0x8000000251C8FE90);

    v21 = sub_251B10780(v31, v32, &v33);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_251A6C000, v15, v16, "%s starting", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v22 = v19;
    a3 = v28;
    MEMORY[0x25308E2B0](v22, -1, -1);
    MEMORY[0x25308E2B0](v17, -1, -1);
  }

  v23 = sub_251C71214();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v14;
  v24[5] = a1;
  v24[6] = v30;
  v24[7] = a3;
  v24[8] = a4;
  v25 = v14;
  v26 = a1;

  sub_251C56428(0, 0, v12, &unk_251C84F30, v24);
}

uint64_t sub_251BD79BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  return MEMORY[0x2822009F8](sub_251BD79E4, 0, 0);
}

uint64_t sub_251BD79E4()
{
  v1 = v0[14];
  type metadata accessor for SignedClinicalDataManager();
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 16) = 0;
  sub_251A82418();
  v3 = swift_allocObject();
  v0[19] = v3;
  *(v3 + 16) = xmmword_251C74560;
  *(v3 + 32) = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_251BD7AD4;
  v6 = v0[15];

  return sub_251BCD34C(v3, v6);
}

uint64_t sub_251BD7AD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v5 = *(*v2 + 152);
  v8 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v6 = sub_251BD7DE8;
  }

  else
  {
    v6 = sub_251BD7C08;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_251BD7C08()
{
  v20 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);
  v3 = v1;
  v4 = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = sub_251B2DA28(0xD000000000000031, 0x8000000251C8FE90);
    v11 = sub_251B10780(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_251A6C000, v4, v5, "%s finished successfully", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }

  v12 = v0[21];
  v14 = v0[17];
  v13 = v0[18];
  v15 = v0[16];
  v16 = v12;
  v15(v12, 0);

  swift_setDeallocating();
  v17 = v0[1];

  return v17();
}

uint64_t sub_251BD7DE8()
{
  v29 = v0;
  v1 = v0[18];
  swift_setDeallocating();

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v3 = v0[13];
  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);
  v5 = v3;
  v6 = v2;
  v7 = sub_251C70744();
  v8 = sub_251C713D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[22];
    v10 = v0[13];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136315394;
    v13 = sub_251B2DA28(0xD000000000000031, 0x8000000251C8FE90);
    v15 = sub_251B10780(v13, v14, &v28);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v16 = v0[8];
    v17 = v0[10];
    v18 = sub_251BBFFA4(v0[9]);
    v20 = sub_251B10780(v18, v19, &v28);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_251A6C000, v7, v8, "%s failed with %s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  v21 = v0[22];
  v23 = v0[16];
  v22 = v0[17];
  swift_getErrorValue();
  v24 = v0[5];
  v25 = sub_251BC0124(v0[6], v0[7]);
  v23(0, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_251BD8084(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a1;
  a8(v15, a4, a7, v14);
}

uint64_t sub_251BD813C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v7 = sub_251C70764();
  __swift_project_value_buffer(v7, qword_2813E8130);
  v8 = v3;
  v9 = sub_251C70744();
  v10 = sub_251C713F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315138;
    v28 = v12;
    swift_getMetatypeMetadata();
    aBlock = sub_251C70F74();
    v30 = v13;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    MEMORY[0x25308CDA0](0xD000000000000027, 0x8000000251C8FE60);

    v14 = sub_251B10780(aBlock, v30, &v28);

    *(v11 + 4) = v14;
    _os_log_impl(&dword_251A6C000, v9, v10, "%s starting", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  type metadata accessor for SignedClinicalDataManager();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  v16[2] = v8;
  v16[3] = a2;
  v16[4] = a3;
  v17 = sub_251C70734();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = v8;

  v21 = sub_251C70724();
  v22 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v23 = [objc_allocWithZone(MEMORY[0x277D124A8]) initWithHealthStore_];
  v24 = swift_allocObject();
  *(v24 + 16) = v15;
  *(v24 + 24) = sub_251BDB248;
  *(v24 + 32) = v16;
  *(v24 + 40) = 1;
  *(v24 + 48) = v21;
  *(v24 + 56) = a1;
  v33 = sub_251BD1794;
  v34 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_251AD9914;
  v32 = &block_descriptor_36;
  v25 = _Block_copy(&aBlock);

  v26 = a1;

  [v23 fetchSignedClinicalDataGroupBackingMedicalRecord:v26 options:11 completion:v25];

  _Block_release(v25);
}

uint64_t sub_251BD84EC(char a1, uint64_t a2, void *a3, uint64_t (*a4)(void, uint64_t))
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v8 = sub_251C70764();
  __swift_project_value_buffer(v8, qword_2813E8130);
  v9 = a3;
  v10 = sub_251C70744();
  v11 = sub_251C713F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    v14 = sub_251B2DA28(0xD000000000000027, 0x8000000251C8FE60);
    v16 = sub_251B10780(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_251A6C000, v10, v11, "%s finished", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25308E2B0](v13, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  return a4(a1 & 1, a2);
}

uint64_t sub_251BD872C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_251C70BF4();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_251C70C24();
  v37 = *(v39 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251C70C04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v13 = sub_251C70764();
  __swift_project_value_buffer(v13, qword_2813E8130);
  v14 = v1;
  v15 = sub_251C70744();
  v16 = sub_251C713F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v41 = v19;
    *v18 = 136315138;
    v33 = "ataRecord(with:)";
    aBlock = ObjectType;
    swift_getMetatypeMetadata();
    v20 = sub_251C70F74();
    ObjectType = a1;
    aBlock = v20;
    v43 = v21;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    MEMORY[0x25308CDA0](0xD00000000000002CLL, v33 | 0x8000000000000000);

    v22 = sub_251B10780(aBlock, v43, &v41);

    *(v18 + 4) = v22;
    a1 = ObjectType;
    _os_log_impl(&dword_251A6C000, v15, v16, "%s starting", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x25308E2B0](v19, -1, -1);
    v23 = v18;
    v3 = v34;
    MEMORY[0x25308E2B0](v23, -1, -1);
  }

  sub_251A8223C(0, &qword_27F47BD00, 0x277D85C78);
  (*(v9 + 104))(v12, *MEMORY[0x277D851D0], v8);
  v24 = sub_251C71494();
  (*(v9 + 8))(v12, v8);
  v25 = swift_allocObject();
  *(v25 + 16) = v14;
  *(v25 + 24) = a1;
  v46 = sub_251BDB240;
  v47 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_251BD8E14;
  v45 = &block_descriptor_24;
  v26 = _Block_copy(&aBlock);
  v27 = v14;
  v28 = a1;
  v29 = v36;
  sub_251C70C14();
  v41 = MEMORY[0x277D84F90];
  sub_251BDB0FC();
  sub_251BDB154(0, &qword_27F47BD10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_251BDB1B8();
  v30 = v38;
  sub_251C715E4();
  MEMORY[0x25308D230](0, v29, v30, v26);
  _Block_release(v26);

  (*(v40 + 8))(v30, v3);
  (*(v37 + 8))(v29, v39);
}

void sub_251BD8C68(void *a1, void *a2)
{
  type metadata accessor for SignedClinicalDataManager();
  *(swift_allocObject() + 16) = 0;
  sub_251BCF398(a2);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);
  v5 = a1;
  oslog = sub_251C70744();
  v6 = sub_251C713F4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_251B2DA28(0xD00000000000002CLL, 0x8000000251C8FE30);
    v11 = sub_251B10780(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_251A6C000, oslog, v6, "%s finished", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25308E2B0](v8, -1, -1);
    MEMORY[0x25308E2B0](v7, -1, -1);
  }
}

uint64_t sub_251BD8E14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_251BD8EC0(uint64_t a1)
{
  v48 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_251C70BF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v51 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251C70C24();
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_251C70074();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v47);
  v45 = v11;
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_251C70C04();
  v12 = *(v44 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v44);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v16 = sub_251C70764();
  __swift_project_value_buffer(v16, qword_2813E8130);
  v17 = v1;
  v18 = sub_251C70744();
  v19 = sub_251C713F4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = v2;
    v21 = v20;
    v22 = swift_slowAlloc();
    v41 = v3;
    v23 = v22;
    v52 = v22;
    *v21 = 136315138;
    v40 = "stry(options:completion:)";
    aBlock = ObjectType;
    swift_getMetatypeMetadata();
    v24 = sub_251C70F74();
    ObjectType = v6;
    aBlock = v24;
    v54 = v25;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    MEMORY[0x25308CDA0](0xD000000000000030, v40 | 0x8000000000000000);

    v26 = sub_251B10780(aBlock, v54, &v52);

    *(v21 + 4) = v26;
    v6 = ObjectType;
    _os_log_impl(&dword_251A6C000, v18, v19, "%s starting", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v27 = v23;
    v3 = v41;
    MEMORY[0x25308E2B0](v27, -1, -1);
    v28 = v21;
    v2 = v42;
    MEMORY[0x25308E2B0](v28, -1, -1);
  }

  sub_251A8223C(0, &qword_27F47BD00, 0x277D85C78);
  v29 = v44;
  (*(v12 + 104))(v15, *MEMORY[0x277D851D0], v44);
  v30 = sub_251C71494();
  (*(v12 + 8))(v15, v29);
  v32 = v46;
  v31 = v47;
  (*(v9 + 16))(v46, v48, v47);
  v33 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v17;
  (*(v9 + 32))(v34 + v33, v32, v31);
  v57 = sub_251BDB080;
  v58 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_251BD8E14;
  v56 = &block_descriptor_17;
  v35 = _Block_copy(&aBlock);
  v36 = v17;
  v37 = v49;
  sub_251C70C14();
  v52 = MEMORY[0x277D84F90];
  sub_251BDB0FC();
  sub_251BDB154(0, &qword_27F47BD10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_251BDB1B8();
  v38 = v51;
  sub_251C715E4();
  MEMORY[0x25308D230](0, v37, v38, v35);
  _Block_release(v35);

  (*(v3 + 8))(v38, v2);
  (*(v50 + 8))(v37, v6);
}

void sub_251BD94D0(void *a1)
{
  type metadata accessor for SignedClinicalDataManager();
  *(swift_initStackObject() + 16) = 0;
  v2 = sub_251C70734();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_251C70724();
  sub_251C70714();

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v5 = sub_251C70764();
  __swift_project_value_buffer(v5, qword_2813E8130);
  v6 = a1;
  v7 = sub_251C70744();
  v8 = sub_251C713F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = sub_251B2DA28(0xD000000000000030, 0x8000000251C8FDF0);
    v13 = sub_251B10780(v11, v12, &v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_251A6C000, v7, v8, "%s finished", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x25308E2B0](v10, -1, -1);
    MEMORY[0x25308E2B0](v9, -1, -1);
  }
}

uint64_t sub_251BD977C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_251BDB154(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);
  v13 = v3;
  v14 = sub_251C70744();
  v15 = sub_251C713F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315138;
    v28 = a3;
    v29 = ObjectType;
    swift_getMetatypeMetadata();
    v29 = sub_251C70F74();
    v30 = v19;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a3 = v28;
    MEMORY[0x25308CDA0](0xD000000000000039, 0x8000000251C8FDB0);

    v20 = sub_251B10780(v29, v30, &v31);

    *(v17 + 4) = v20;
    _os_log_impl(&dword_251A6C000, v14, v15, "%s starting", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x25308E2B0](v18, -1, -1);
    v21 = v17;
    a1 = v27;
    MEMORY[0x25308E2B0](v21, -1, -1);
  }

  v22 = sub_251C71214();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a1;
  v23[5] = v13;
  v23[6] = a2;
  v23[7] = a3;
  v24 = v13;

  sub_251C56428(0, 0, v11, &unk_251C84F20, v23);
}

uint64_t sub_251BD9A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  return MEMORY[0x2822009F8](sub_251BD9AA8, 0, 0);
}

uint64_t sub_251BD9AA8()
{
  sub_251BD5744(v0 + 2);
  type metadata accessor for IssuerDirectoryDownloadTaskManager();
  v1 = swift_allocObject();
  v2 = v0[5];
  v3 = v0[6];
  v4 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v2);
  v0[15] = sub_251B14AC4(v7, 0, v1, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_251BD9C1C;
  v9 = v0[11];

  return sub_251B110E4(v9);
}

uint64_t sub_251BD9C1C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 128);
  v8 = *v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  if (v2)
  {
    v6 = sub_251BD9F9C;
  }

  else
  {
    v6 = sub_251BD9D34;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_251BD9D34()
{
  v27 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[12];
  v3 = sub_251C70764();
  __swift_project_value_buffer(v3, qword_2813E8130);
  swift_bridgeObjectRetain_n();
  v4 = v2;
  v5 = sub_251C70744();
  v6 = sub_251C713F4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v8 = v0[18];
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315650;
    v12 = sub_251B2DA28(0xD000000000000039, 0x8000000251C8FDB0);
    v14 = sub_251B10780(v12, v13, &v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v8;
    *(v10 + 22) = 2048;
    if (v7 >> 62)
    {
      if (v0[17] < 0)
      {
        v25 = v0[17];
      }

      v15 = sub_251C717F4();
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v0[17];

    *(v10 + 24) = v15;

    _os_log_impl(&dword_251A6C000, v5, v6, "%s finished. Version: %ld, new issuer entries count: %ld", v10, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25308E2B0](v11, -1, -1);
    MEMORY[0x25308E2B0](v10, -1, -1);
  }

  else
  {
    v7 = v0[17];
    swift_bridgeObjectRelease_n();
  }

  v18 = v0[17];
  v17 = v0[18];
  v19 = v0[14];
  v20 = v0[15];
  v21 = v0[13];
  v22 = sub_251C712A4();
  v21(v7, v22, 0);

  v23 = v0[1];

  return v23();
}

uint64_t sub_251BD9F9C()
{
  v28 = v0;
  v1 = v0[15];

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = v0[12];
  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);
  v5 = v3;
  v6 = v2;
  v7 = sub_251C70744();
  v8 = sub_251C713D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[19];
    v10 = v0[12];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315394;
    v13 = sub_251B2DA28(0xD000000000000039, 0x8000000251C8FDB0);
    v15 = sub_251B10780(v13, v14, &v27);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v16 = v0[7];
    v17 = v0[9];
    v18 = sub_251BBFFA4(v0[8]);
    v20 = sub_251B10780(v18, v19, &v27);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_251A6C000, v7, v8, "%s failed with %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  v21 = v0[19];
  v23 = v0[13];
  v22 = v0[14];
  v24 = v21;
  v23(0, 0, v21);

  v25 = v0[1];

  return v25();
}

uint64_t sub_251BDA218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_251BDB154(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v12 = sub_251C70764();
  __swift_project_value_buffer(v12, qword_2813E8130);
  v13 = v3;
  v14 = sub_251C70744();
  v15 = sub_251C713F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315138;
    v28 = a3;
    v29 = ObjectType;
    swift_getMetatypeMetadata();
    v29 = sub_251C70F74();
    v30 = v19;

    MEMORY[0x25308CDA0](46, 0xE100000000000000);

    a3 = v28;
    MEMORY[0x25308CDA0](0xD000000000000035, 0x8000000251C8FD70);

    v20 = sub_251B10780(v29, v30, &v31);

    *(v17 + 4) = v20;
    _os_log_impl(&dword_251A6C000, v14, v15, "%s starting", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x25308E2B0](v18, -1, -1);
    v21 = v17;
    a1 = v27;
    MEMORY[0x25308E2B0](v21, -1, -1);
  }

  v22 = sub_251C71214();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a1;
  v23[5] = v13;
  v23[6] = a2;
  v23[7] = a3;
  v24 = v13;

  sub_251C56428(0, 0, v11, &unk_251C84F10, v23);
}

uint64_t sub_251BDA520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  return MEMORY[0x2822009F8](sub_251BDA544, 0, 0);
}

uint64_t sub_251BDA544()
{
  sub_251BD5744(v0 + 2);
  type metadata accessor for IssuerDirectoryDownloadTaskManager();
  v1 = swift_allocObject();
  v2 = v0[5];
  v3 = v0[6];
  v4 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v2);
  v0[15] = sub_251B14AC4(v7, 0, v1, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_251BDA6B8;
  v9 = v0[11];

  return sub_251B11608(v9);
}

uint64_t sub_251BDA6B8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 128);
  v8 = *v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  if (v2)
  {
    v6 = sub_251BDAA38;
  }

  else
  {
    v6 = sub_251BDA7D0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_251BDA7D0()
{
  v27 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[12];
  v3 = sub_251C70764();
  __swift_project_value_buffer(v3, qword_2813E8130);
  swift_bridgeObjectRetain_n();
  v4 = v2;
  v5 = sub_251C70744();
  v6 = sub_251C713F4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v8 = v0[18];
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315650;
    v12 = sub_251B2DA28(0xD000000000000035, 0x8000000251C8FD70);
    v14 = sub_251B10780(v12, v13, &v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v8;
    *(v10 + 22) = 2048;
    if (v7 >> 62)
    {
      if (v0[17] < 0)
      {
        v25 = v0[17];
      }

      v15 = sub_251C717F4();
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v0[17];

    *(v10 + 24) = v15;

    _os_log_impl(&dword_251A6C000, v5, v6, "%s finished. Version: %ld, new public key entries count: %ld", v10, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x25308E2B0](v11, -1, -1);
    MEMORY[0x25308E2B0](v10, -1, -1);
  }

  else
  {
    v7 = v0[17];
    swift_bridgeObjectRelease_n();
  }

  v18 = v0[17];
  v17 = v0[18];
  v19 = v0[14];
  v20 = v0[15];
  v21 = v0[13];
  v22 = sub_251C712A4();
  v21(v7, v22, 0);

  v23 = v0[1];

  return v23();
}

uint64_t sub_251BDAA38()
{
  v28 = v0;
  v1 = v0[15];

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = v0[12];
  v4 = sub_251C70764();
  __swift_project_value_buffer(v4, qword_2813E8130);
  v5 = v3;
  v6 = v2;
  v7 = sub_251C70744();
  v8 = sub_251C713D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[19];
    v10 = v0[12];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315394;
    v13 = sub_251B2DA28(0xD000000000000035, 0x8000000251C8FD70);
    v15 = sub_251B10780(v13, v14, &v27);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v16 = v0[7];
    v17 = v0[9];
    v18 = sub_251BBFFA4(v0[8]);
    v20 = sub_251B10780(v18, v19, &v27);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_251A6C000, v7, v8, "%s failed with %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  v21 = v0[19];
  v23 = v0[13];
  v22 = v0[14];
  v24 = v21;
  v23(0, 0, v21);

  v25 = v0[1];

  return v25();
}

uint64_t sub_251BDACB4(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a1;
  a7(a3, a6, v12);
}

void sub_251BDAD50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v9 = a1;
  if (a1)
  {
    sub_251A8223C(0, a5, a6);
    v9 = sub_251C71144();
  }

  if (a3)
  {
    v10 = sub_251C6FD74();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a4 + 16))(a4, v9, a2);
}

uint64_t sub_251BDAE64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_251B14FE8;

  return sub_251BDA520(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_4Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251BDAFAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_251B14FE8;

  return sub_251BD9A84(a1, v4, v5, v6, v7, v9, v8);
}

void sub_251BDB080()
{
  v1 = *(*(sub_251C70074() - 8) + 80);
  v2 = *(v0 + 16);

  sub_251BD94D0(v2);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251BDB0FC()
{
  result = qword_27F47BD08;
  if (!qword_27F47BD08)
  {
    sub_251C70BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BD08);
  }

  return result;
}

void sub_251BDB154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_251BDB1B8()
{
  result = qword_27F47BD18;
  if (!qword_27F47BD18)
  {
    sub_251BDB154(255, &qword_27F47BD10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BD18);
  }

  return result;
}

uint64_t sub_251BDB270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_251B14FE8;

  return sub_251BD79BC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_251BDB34C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_251AF4F78;

  return sub_251BD6FDC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_251BDB428(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_251B14FE8;

  return sub_251BD65C8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_251BDB554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_251B14FE8;

  return sub_251BD5C40(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_251BDB684(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE51C4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BDB710(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE7074();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BDB79C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE80B8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BDB7EC@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = xmmword_251C745D0;
  *(a1 + 88) = xmmword_251C745D0;
  *(a1 + 104) = xmmword_251C745D0;
  *(a1 + 120) = xmmword_251C745D0;
  *(a1 + 136) = xmmword_251C745D0;
  *(a1 + 152) = xmmword_251C745D0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  v2 = type metadata accessor for PBState(0);
  v3 = a1 + v2[16];
  sub_251C703A4();
  v4 = v2[17];
  v5 = sub_251C70384();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[18];
  v7 = type metadata accessor for PBOtherData(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t sub_251BDB920@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_251BDB980@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_251BDB9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE7190();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BDBA08()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2758);
  __swift_project_value_buffer(v0, qword_27F4A2758);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 0;
  *v7 = "UNDEFINED";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "HEALTH_APP";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 2;
  *v13 = "DASHBOARD";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 3;
  *v15 = "UNIVERSAL";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BDBC8C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2770);
  __swift_project_value_buffer(v0, qword_27F4A2770);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_251C84F70;
  v5 = v62 + v4;
  v6 = v62 + v4 + *(v2 + 56);
  *(v62 + v4) = 0;
  *v6 = "UNDEFINED_EVENT";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v62 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "INITIATE";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v62 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "ABORT";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v62 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "GEO_ACCEPT";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v62 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "GEO_DENY";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v62 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "PA_DELIVERY";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v62 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "PA_GENERATE_ERROR";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  v21 = (v62 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "PB_VERIFY_SUCCESS";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  v23 = v62 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "PB_VERIFY_ERROR";
  *(v23 + 8) = 15;
  *(v23 + 16) = 2;
  v9();
  v24 = (v62 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "CONFIRMATIONA_DELIVERY";
  *(v25 + 1) = 22;
  v25[16] = 2;
  v9();
  v26 = (v62 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "CONFIRMATIONA_GENERATE_ERROR";
  *(v27 + 1) = 28;
  v27[16] = 2;
  v9();
  v28 = (v62 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "CONFIRMATIONB_VERIFY_SUCCESS";
  *(v29 + 1) = 28;
  v29[16] = 2;
  v9();
  v30 = (v62 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "CONFIRMATIONB_VERIFY_ERROR";
  *(v31 + 1) = 26;
  v31[16] = 2;
  v9();
  v32 = (v62 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "LOOKUPINFO_DELIVERY";
  *(v33 + 1) = 19;
  v33[16] = 2;
  v9();
  v34 = (v62 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "LOOKUPINFO_RECEIVED";
  *(v35 + 1) = 19;
  v35[16] = 2;
  v9();
  v36 = (v62 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "ACCESS_CODE_DELIVERY";
  *(v37 + 1) = 20;
  v37[16] = 2;
  v9();
  v38 = v62 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "GEO_DELIVERY";
  *(v38 + 8) = 12;
  *(v38 + 16) = 2;
  v9();
  v39 = (v62 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "PB_DELIVERY";
  *(v40 + 1) = 11;
  v40[16] = 2;
  v9();
  v41 = (v62 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 18;
  *v42 = "PB_GENERATE_ERROR";
  *(v42 + 1) = 17;
  v42[16] = 2;
  v9();
  v43 = (v62 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 19;
  *v44 = "PA_VERIFY_SUCCESS";
  *(v44 + 1) = 17;
  v44[16] = 2;
  v9();
  v45 = (v62 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 20;
  *v46 = "PA_VERIFY_ERROR";
  *(v46 + 1) = 15;
  v46[16] = 2;
  v9();
  v47 = (v62 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 21;
  *v48 = "CONFIRMATIONB_DELIVERY";
  *(v48 + 1) = 22;
  v48[16] = 2;
  v9();
  v49 = (v62 + v4 + 22 * v3);
  v50 = v49 + *(v2 + 56);
  *v49 = 22;
  *v50 = "CONFIRMATIONB_GENERATE_ERROR";
  *(v50 + 1) = 28;
  v50[16] = 2;
  v9();
  v51 = (v62 + v4 + 23 * v3);
  v52 = v51 + *(v2 + 56);
  *v51 = 23;
  *v52 = "CONFIRMATIONA_VERIFY_SUCCESS";
  *(v52 + 1) = 28;
  v52[16] = 2;
  v9();
  v53 = (v62 + v4 + 24 * v3);
  v54 = v53 + *(v2 + 56);
  *v53 = 24;
  *v54 = "CONFIRMATIONA_VERIFY_ERROR";
  *(v54 + 1) = 26;
  v54[16] = 2;
  v9();
  v55 = (v62 + v4 + 25 * v3);
  v56 = v55 + *(v2 + 56);
  *v55 = 25;
  *v56 = "LOOKUPINFO_DEREF_SUCCESS";
  *(v56 + 1) = 24;
  v56[16] = 2;
  v9();
  v57 = (v62 + v4 + 26 * v3);
  v58 = v57 + *(v2 + 56);
  *v57 = 26;
  *v58 = "LOOKUPINFO_DEREF_FAIL";
  *(v58 + 1) = 21;
  v58[16] = 2;
  v9();
  v59 = (v62 + v4 + 27 * v3);
  v60 = v59 + *(v2 + 56);
  *v59 = 27;
  *v60 = "SHARE_OTHER_DATA";
  *(v60 + 1) = 16;
  v60[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251BDC4AC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2788);
  __swift_project_value_buffer(v0, qword_27F4A2788);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_251C7C210;
  v5 = v42 + v4;
  v6 = v42 + v4 + *(v2 + 56);
  *(v42 + v4) = 0;
  *v6 = "UNDEFINED_STEP";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v42 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "ABORTED";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v42 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "DISPLAY_COMPOSITE_CODE";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v42 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "PENDING_SUBMIT_GEO";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v42 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "PENDING_ACKNOWLEDGE_GEO";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v42 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "GENERATE_PA";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v42 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "GENERATE_PB";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v42 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "PENDING_VERIFY_PB";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  v23 = v42 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "PENDING_VERIFY_PA";
  *(v23 + 8) = 17;
  *(v23 + 16) = 2;
  v9();
  v24 = (v42 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "GENERATE_CONFIRMATIONA";
  *(v25 + 1) = 22;
  v25[16] = 2;
  v9();
  v26 = (v42 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "GENERATE_CONFIRMATIONB";
  *(v27 + 1) = 22;
  v27[16] = 2;
  v9();
  v28 = (v42 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "PENDING_VERIFY_CONFIRMATIONB";
  *(v29 + 1) = 28;
  v29[16] = 2;
  v9();
  v30 = (v42 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "PENDING_VERIFY_CONFIRMATIONA";
  *(v31 + 1) = 28;
  v31[16] = 2;
  v9();
  v32 = (v42 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 13;
  *v33 = "PENDING_LOOKUPINFO_DELIVERY";
  *(v33 + 1) = 27;
  v33[16] = 2;
  v9();
  v34 = (v42 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 14;
  *v35 = "VERIFY_LOOKUPINFO_DELIVERED";
  *(v35 + 1) = 27;
  v35[16] = 2;
  v9();
  v36 = (v42 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 15;
  *v37 = "PENDING_DATA_TRANSFER_SUCCESS";
  *(v37 + 1) = 29;
  v37[16] = 2;
  v9();
  v38 = v42 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 16;
  *v38 = "DATA_TRANSFER_SUCCESS";
  *(v38 + 8) = 21;
  *(v38 + 16) = 2;
  v9();
  v39 = (v42 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 17;
  *v40 = "OTHER_DATA";
  *(v40 + 1) = 10;
  v40[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251BDCA80()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A27A0);
  __swift_project_value_buffer(v0, qword_27F4A27A0);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "actor";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "mailbox_id";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21888];
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BDCC68()
{
  result = sub_251C70444();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_251BE51C4();
        sub_251C70494();
      }

      else if (result == 2)
      {
        sub_251C70534();
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251BDCD24()
{
  if (!*v0 || (v6 = *v0, v7 = *(v0 + 8), sub_251BE51C4(), result = sub_251C70604(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_251C70674(), !v1))
    {
      v5 = v0 + *(type metadata accessor for PBPollParameters(0) + 24);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251BDCE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_251C703A4();
}

uint64_t sub_251BDCE88(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BF10, type metadata accessor for PBPollParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BDCF28(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BEF8, type metadata accessor for PBPollParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BDCF94()
{
  sub_251BE4824(&qword_27F47BEF8, type metadata accessor for PBPollParameters);

  return sub_251C705C4();
}

uint64_t sub_251BDD02C()
{
  v0 = *(type metadata accessor for PBPollStateRequest(0) + 24);
  type metadata accessor for PBPollParameters(0);
  sub_251BE4824(&qword_27F47BEF8, type metadata accessor for PBPollParameters);
  return sub_251C70564();
}

uint64_t sub_251BDD0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251BE161C(0, &qword_27F47BF28, type metadata accessor for PBPollParameters, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBPollParameters(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBPollStateRequest(0);
  sub_251BE7FC8(a1 + *(v14 + 24), v8, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BE8048(v8, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  }

  sub_251BE6F30(v8, v13, type metadata accessor for PBPollParameters);
  sub_251BE4824(&qword_27F47BEF8, type metadata accessor for PBPollParameters);
  sub_251C706A4();
  return sub_251BE6F98(v13, type metadata accessor for PBPollParameters);
}

uint64_t sub_251BDD3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BF20, type metadata accessor for PBPollStateRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BDD480(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BED8, type metadata accessor for PBPollStateRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BDD4EC()
{
  sub_251BE4824(&qword_27F47BED8, type metadata accessor for PBPollStateRequest);

  return sub_251C705C4();
}

uint64_t sub_251BDD56C()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A27D0);
  __swift_project_value_buffer(v0, qword_27F4A27D0);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "version";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "value";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BDD74C()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251C704F4();
    }

    else if (result == 2)
    {
      sub_251C70534();
    }
  }

  return result;
}

uint64_t sub_251BDD7D8()
{
  if (!*v0 || (result = sub_251C70644(), !v1))
  {
    v3 = *(v0 + 16);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_251C70674(), !v1))
    {
      v5 = v0 + *(type metadata accessor for PBOtherData(0) + 24);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251BDD88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_251C703A4();
}

uint64_t sub_251BDD904(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BF38, type metadata accessor for PBOtherData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BDD9A4(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BEB8, type metadata accessor for PBOtherData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BDDA10()
{
  sub_251BE4824(&qword_27F47BEB8, type metadata accessor for PBOtherData);

  return sub_251C705C4();
}

uint64_t sub_251BDDA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    v4 = a3;
    v5 = *(a2 + 8);
    v6 = sub_251C719D4();
    a3 = v4;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a3 + 24);
  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BDDB60()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A27E8);
  __swift_project_value_buffer(v0, qword_27F4A27E8);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_251C84F80;
  v5 = v32 + v4;
  v6 = v32 + v4 + *(v2 + 56);
  *(v32 + v4) = 1;
  *v6 = "actor";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v32 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "mailbox_id";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v32 + v4 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "access_code";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v9();
  v14 = (v32 + v4 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "confirmation_b";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  v16 = (v32 + v4 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "pb";
  *(v17 + 1) = 2;
  v17[16] = 2;
  v9();
  v18 = (v32 + v4 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "geo_encrypted";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v9();
  v20 = (v32 + v4 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "confirmation_a";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v9();
  v22 = (v32 + v4 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 8;
  *v23 = "lookupinfo_encrypted";
  *(v23 + 1) = 20;
  v23[16] = 2;
  v9();
  v24 = v32 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v24 = "pa";
  *(v24 + 8) = 2;
  *(v24 + 16) = 2;
  v9();
  v25 = (v32 + v4 + 9 * v3);
  v26 = v25 + *(v2 + 56);
  *v25 = 10;
  *v26 = "root_dlid";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v9();
  v27 = (v32 + v4 + 10 * v3);
  v28 = v27 + *(v2 + 56);
  *v27 = 12;
  *v28 = "other_data";
  *(v28 + 1) = 10;
  v28[16] = 2;
  v9();
  v29 = (v32 + v4 + 11 * v3);
  v30 = v29 + *(v2 + 56);
  *v29 = 11;
  *v30 = "event_type";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251BDDFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_251C70444();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 6)
      {
        if (result <= 9)
        {
          if (result == 7)
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 4;
          }

          else if (result == 8)
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 5;
          }

          else
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 6;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 10:
            v16 = a1;
            v17 = v5;
            v18 = a2;
            v19 = a3;
            v20 = 7;
LABEL_28:
            sub_251BDE458(v16, v17, v18, v19, v20);
            break;
          case 11:
            sub_251BDE6A4();
            break;
          case 12:
            sub_251BDE718(v5, a1, a2, a3);
            break;
        }
      }

      else
      {
        if (result > 3)
        {
          if (result == 4)
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 1;
          }

          else if (result == 5)
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 2;
          }

          else
          {
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 3;
          }

LABEL_5:
          sub_251BDE1E4(v11, v12, v13, v14, v15);
          goto LABEL_6;
        }

        if (result == 1)
        {
          sub_251BE51C4();
          sub_251C70494();
          goto LABEL_6;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_6;
          }

          v16 = a1;
          v17 = v5;
          v18 = a2;
          v19 = a3;
          v20 = 0;
          goto LABEL_28;
        }

        sub_251C70534();
      }

LABEL_6:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251BDE1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v22 = xmmword_251C74660;
  sub_251C704C4();
  v12 = v22;
  if (v5 || *(&v22 + 1) >> 60 == 15)
  {
    return sub_251A8596C(v22, *(&v22 + 1));
  }

  v23 = a5;
  v21 = (a2 + *(type metadata accessor for PBUpdateParameters(0) + 24));
  sub_251BE7FC8(v21, v11, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v13 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  v19 = *(v13 - 8);
  v20 = v13;
  v14 = (*(v19 + 48))(v11, 1);
  sub_251A858C4(v12, *(&v12 + 1));
  sub_251BE8048(v11, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  if (v14 != 1)
  {
    sub_251C70454();
  }

  sub_251A8596C(v12, *(&v12 + 1));
  v16 = v21;
  sub_251BE8048(v21, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  *v16 = v12;
  v17 = v20;
  swift_storeEnumTagMultiPayload();
  return (*(v19 + 56))(v16, 0, 1, v17);
}

uint64_t sub_251BDE458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  v21 = 0;
  v22 = 0;
  result = sub_251C70524();
  if (v5)
  {
  }

  if (v22)
  {
    v23 = v22;
    v20 = a5;
    v19 = v21;
    v13 = (a2 + *(type metadata accessor for PBUpdateParameters(0) + 24));
    sub_251BE7FC8(v13, v11, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    v14 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
    v18 = *(v14 - 8);
    v15 = (*(v18 + 48))(v11, 1, v14);
    sub_251BE8048(v11, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    if (v15 != 1)
    {
      sub_251C70454();
    }

    sub_251BE8048(v13, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    v16 = v23;
    *v13 = v19;
    v13[1] = v16;
    swift_storeEnumTagMultiPayload();
    return (*(v18 + 56))(v13, 0, 1, v14);
  }

  return result;
}

uint64_t sub_251BDE6A4()
{
  v0 = *(type metadata accessor for PBUpdateParameters(0) + 28);
  sub_251BE7074();
  return sub_251C70494();
}

uint64_t sub_251BDE718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v52 = a1;
  v4 = type metadata accessor for PBOtherData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v40 - v9;
  v45 = type metadata accessor for PBUpdateParameters.OneOf_Data;
  v10 = MEMORY[0x277D83D88];
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_251BE161C(0, &qword_27F47BD70, type metadata accessor for PBOtherData, v10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v44 = v5;
  v29 = *(v5 + 56);
  v48 = v4;
  v29(&v40 - v27, 1, 1, v4);
  v41 = *(type metadata accessor for PBUpdateParameters(0) + 24);
  sub_251BE7FC8(v52 + v41, v14, &qword_27F47BF48, v45);
  v45 = v16;
  v30 = (*(v16 + 48))(v14, 1, v15);
  if (v30 == 1)
  {
    sub_251BE8048(v14, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    v31 = v48;
    v32 = v15;
  }

  else
  {
    sub_251BE6F30(v14, v22, type metadata accessor for PBUpdateParameters.OneOf_Data);
    sub_251BE6F30(v22, v20, type metadata accessor for PBUpdateParameters.OneOf_Data);
    v32 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_251BE8048(v28, &qword_27F47BD70, type metadata accessor for PBOtherData);
      v33 = v43;
      sub_251BE6F30(v20, v43, type metadata accessor for PBOtherData);
      sub_251BE6F30(v33, v28, type metadata accessor for PBOtherData);
      v31 = v48;
      v29(v28, 0, 1, v48);
    }

    else
    {
      sub_251BE6F98(v20, type metadata accessor for PBUpdateParameters.OneOf_Data);
      v31 = v48;
    }
  }

  v34 = v46;
  sub_251BE4824(&qword_27F47BEB8, type metadata accessor for PBOtherData);
  v35 = v47;
  sub_251C70564();
  if (v35)
  {
    return sub_251BE8048(v28, &qword_27F47BD70, type metadata accessor for PBOtherData);
  }

  sub_251BE7FC8(v28, v34, &qword_27F47BD70, type metadata accessor for PBOtherData);
  if ((*(v44 + 48))(v34, 1, v31) == 1)
  {
    sub_251BE8048(v28, &qword_27F47BD70, type metadata accessor for PBOtherData);
    return sub_251BE8048(v34, &qword_27F47BD70, type metadata accessor for PBOtherData);
  }

  else
  {
    v37 = v42;
    sub_251BE6F30(v34, v42, type metadata accessor for PBOtherData);
    if (v30 != 1)
    {
      sub_251C70454();
    }

    sub_251BE8048(v28, &qword_27F47BD70, type metadata accessor for PBOtherData);
    v38 = v52;
    v39 = v41;
    sub_251BE8048(v52 + v41, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    sub_251BE6F30(v37, v38 + v39, type metadata accessor for PBOtherData);
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 7))(v38 + v39, 0, 1, v32);
  }
}

uint64_t sub_251BDED74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  if (*v3)
  {
    v16 = *(v3 + 8);
    v29 = *v3;
    v30 = v16;
    sub_251BE51C4();
    result = sub_251C70604();
    if (v4)
    {
      return result;
    }
  }

  v18 = *(v3 + 24);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    result = sub_251C70674();
    if (v4)
    {
      return result;
    }
  }

  v20 = v4;
  v21 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(v3 + v21[6], v15, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v22 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
  {
    goto LABEL_26;
  }

  sub_251BE7FC8(v15, v13, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_251BE6F98(v13, type metadata accessor for PBUpdateParameters.OneOf_Data);
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_251BDF4D0(v5);
      }

      else
      {
        sub_251BDF68C(v5);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_251BDF314(v5);
    }

    else
    {
      sub_251BDF164(v5);
    }

LABEL_24:
    v20 = v4;
    if (v4)
    {
      return sub_251BE8048(v15, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_251BDF848(v5);
    }

    else
    {
      sub_251BDFA04(v5);
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_251BDFBC0(v5);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 7)
  {
    sub_251BDFD7C(v5);
    goto LABEL_24;
  }

LABEL_26:
  sub_251BE8048(v15, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v24 = v5 + v21[7];
  v25 = *v24;
  v26 = *(v24 + 8);
  if (sub_251BB3774(*v24, v26, 0))
  {
    v27 = v20;
  }

  else
  {
    v29 = v25;
    v30 = v26;
    sub_251BE7074();
    v27 = v20;
    result = sub_251C70604();
    if (v20)
    {
      return result;
    }
  }

  result = sub_251BDFF30(v5, a1, a2, a3);
  if (!v27)
  {
    v28 = v5 + v21[8];
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251BDF164(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v11 - v4);
  v6 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v6 + 24), v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v7 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251BE8048(v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v8 = *v5;
    v9 = v5[1];
    sub_251C70674();
  }

  result = sub_251BE6F98(v5, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDF314(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v11 - v4);
  v6 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v6 + 24), v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v7 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251BE8048(v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v5;
    v8 = v5[1];
    sub_251C70624();
    return sub_251A83028(v9, v8);
  }

  result = sub_251BE6F98(v5, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDF4D0(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v11 - v4);
  v6 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v6 + 24), v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v7 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251BE8048(v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v9 = *v5;
    v8 = v5[1];
    sub_251C70624();
    return sub_251A83028(v9, v8);
  }

  result = sub_251BE6F98(v5, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDF68C(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v11 - v4);
  v6 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v6 + 24), v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v7 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251BE8048(v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v9 = *v5;
    v8 = v5[1];
    sub_251C70624();
    return sub_251A83028(v9, v8);
  }

  result = sub_251BE6F98(v5, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDF848(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v11 - v4);
  v6 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v6 + 24), v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v7 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251BE8048(v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    v9 = *v5;
    v8 = v5[1];
    sub_251C70624();
    return sub_251A83028(v9, v8);
  }

  result = sub_251BE6F98(v5, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDFA04(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v11 - v4);
  v6 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v6 + 24), v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v7 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251BE8048(v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    v9 = *v5;
    v8 = v5[1];
    sub_251C70624();
    return sub_251A83028(v9, v8);
  }

  result = sub_251BE6F98(v5, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDFBC0(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v11 - v4);
  v6 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v6 + 24), v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v7 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251BE8048(v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    v9 = *v5;
    v8 = v5[1];
    sub_251C70624();
    return sub_251A83028(v9, v8);
  }

  result = sub_251BE6F98(v5, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDFD7C(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v11 - v4);
  v6 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v6 + 24), v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v7 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_251BE8048(v5, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    v8 = *v5;
    v9 = v5[1];
    sub_251C70674();
  }

  result = sub_251BE6F98(v5, type metadata accessor for PBUpdateParameters.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_251BDFF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  v9 = type metadata accessor for PBOtherData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBUpdateParameters(0);
  sub_251BE7FC8(a1 + *(v13 + 24), v8, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v14 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    return sub_251BE8048(v8, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  }

  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_251BE6F30(v8, v12, type metadata accessor for PBOtherData);
    sub_251BE4824(&qword_27F47BEB8, type metadata accessor for PBOtherData);
    sub_251C706A4();
    v16 = type metadata accessor for PBOtherData;
    v17 = v12;
  }

  else
  {
    v16 = type metadata accessor for PBUpdateParameters.OneOf_Data;
    v17 = v8;
  }

  return sub_251BE6F98(v17, v16);
}

uint64_t sub_251BE01A0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  v4 = a1[6];
  v5 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  return sub_251C703A4();
}

uint64_t sub_251BE0288(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BF40, type metadata accessor for PBUpdateParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BE0328(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BE98, type metadata accessor for PBUpdateParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BE0394()
{
  sub_251BE4824(&qword_27F47BE98, type metadata accessor for PBUpdateParameters);

  return sub_251C705C4();
}

uint64_t sub_251BE042C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_251C706D4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 72);
  v9 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_251C75800;
  v11 = (v10 + v9);
  v12 = v10 + v9 + *(v7 + 56);
  *v11 = 1;
  *v12 = "blob_auth";
  *(v12 + 8) = 9;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21888];
  v14 = sub_251C706B4();
  v15 = *(*(v14 - 8) + 104);
  (v15)(v12, v13, v14);
  v16 = v11 + v8 + *(v7 + 56);
  *(v11 + v8) = 2;
  *v16 = a3;
  *(v16 + 1) = a4;
  v16[16] = 2;
  v15();
  return sub_251C706C4();
}

uint64_t sub_251BE0604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_251C70444();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_251BE06B0(a1, v9, a2, a3, a4);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_251BE06B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 20);
  type metadata accessor for PBBlobAuth(0);
  sub_251BE4824(&qword_27F47A8F8, type metadata accessor for PBBlobAuth);
  return sub_251C70564();
}

uint64_t sub_251BE0768()
{
  v0 = *(type metadata accessor for PBUpdateStateRequest(0) + 24);
  type metadata accessor for PBUpdateParameters(0);
  sub_251BE4824(&qword_27F47BE98, type metadata accessor for PBUpdateParameters);
  return sub_251C70564();
}

uint64_t sub_251BE081C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_251BE0898(v5, a1, a2, a3, a4);
  if (!v6)
  {
    a5(v5, a1, a2, a3);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251BE0898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  sub_251BE161C(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for PBBlobAuth(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  sub_251BE7FC8(a1 + *(v16 + 20), v10, qword_2813E7028, type metadata accessor for PBBlobAuth);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_251BE8048(v10, qword_2813E7028, type metadata accessor for PBBlobAuth);
  }

  sub_251BE6F30(v10, v15, type metadata accessor for PBBlobAuth);
  sub_251BE4824(&qword_27F47A8F8, type metadata accessor for PBBlobAuth);
  sub_251C706A4();
  return sub_251BE6F98(v15, type metadata accessor for PBBlobAuth);
}

uint64_t sub_251BE0AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251BE161C(0, &qword_27F47BF70, type metadata accessor for PBUpdateParameters, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBUpdateParameters(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBUpdateStateRequest(0);
  sub_251BE7FC8(a1 + *(v14 + 24), v8, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BE8048(v8, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  }

  sub_251BE6F30(v8, v13, type metadata accessor for PBUpdateParameters);
  sub_251BE4824(&qword_27F47BE98, type metadata accessor for PBUpdateParameters);
  sub_251C706A4();
  return sub_251BE6F98(v13, type metadata accessor for PBUpdateParameters);
}

uint64_t sub_251BE0D4C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_251C703A4();
  v6 = *(a1 + 20);
  v7 = type metadata accessor for PBBlobAuth(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(a1 + 24);
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v8, 1, 1, v9);
}

uint64_t sub_251BE0EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BF68, type metadata accessor for PBUpdateStateRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BE0F54(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BE78, type metadata accessor for PBUpdateStateRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BE0FC0()
{
  sub_251BE4824(&qword_27F47BE78, type metadata accessor for PBUpdateStateRequest);

  return sub_251C705C4();
}

uint64_t sub_251BE1040()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2818);
  __swift_project_value_buffer(v0, qword_27F4A2818);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C763E0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "mailbox_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "state";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v10();
  v13 = (v6 + 2 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "msg";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v10();
  v15 = (v6 + 3 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "result_code";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BE12B4()
{
  v0 = type metadata accessor for PBStateResponse._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state;
  v5 = type metadata accessor for PBState(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v7 = (v3 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__msg);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = v3 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__resultCode;
  *v8 = 0;
  *(v8 + 8) = 1;
  qword_27F47BD28 = v3;
  return result;
}

uint64_t sub_251BE1370()
{
  v1 = v0[3];

  sub_251BE8048(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state, &qword_27F47BD58, type metadata accessor for PBState);
  v2 = *(v0 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__msg + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_251BE1434()
{
  sub_251BE161C(319, &qword_27F47BD58, type metadata accessor for PBState, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_251BE1574()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PBStateResponse._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_251BE161C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_251BE16B4()
{
  sub_251C703B4();
  if (v0 <= 0x3F)
  {
    sub_251BE161C(319, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_251BE161C(319, &qword_27F47BD70, type metadata accessor for PBOtherData, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_251BE1854()
{
  result = qword_27F47BD98;
  if (!qword_27F47BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BD98);
  }

  return result;
}

unint64_t sub_251BE18DC()
{
  result = qword_27F47BDB0;
  if (!qword_27F47BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BDB0);
  }

  return result;
}

unint64_t sub_251BE1934()
{
  result = qword_27F47BDB8;
  if (!qword_27F47BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BDB8);
  }

  return result;
}

unint64_t sub_251BE198C()
{
  result = qword_27F47BDC0;
  if (!qword_27F47BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BDC0);
  }

  return result;
}

unint64_t sub_251BE1A14()
{
  result = qword_27F47BDD8;
  if (!qword_27F47BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BDD8);
  }

  return result;
}

unint64_t sub_251BE1A6C()
{
  result = qword_27F47BDE0;
  if (!qword_27F47BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BDE0);
  }

  return result;
}

unint64_t sub_251BE1AC4()
{
  result = qword_27F47BDE8;
  if (!qword_27F47BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BDE8);
  }

  return result;
}

unint64_t sub_251BE1B4C()
{
  result = qword_27F47BE00;
  if (!qword_27F47BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BE00);
  }

  return result;
}

unint64_t sub_251BE1BA4()
{
  result = qword_27F47BE08;
  if (!qword_27F47BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BE08);
  }

  return result;
}

uint64_t sub_251BE1BF8()
{
  v1 = v0;
  v2 = *(type metadata accessor for PBStateResponse(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v0 + v2);
    v7 = type metadata accessor for PBStateResponse._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = sub_251BE7C50(v6);

    *(v1 + v2) = v10;
  }

  return sub_251BE1CAC();
}

uint64_t sub_251BE1CAC()
{
  while (1)
  {
    result = sub_251C70444();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_251BE1E6C();
      }

      else if (result == 4)
      {
        sub_251BE1EF8();
      }
    }

    else if (result == 1)
    {
      sub_251B98414();
    }

    else if (result == 2)
    {
      sub_251BE1D90();
    }
  }

  return result;
}

uint64_t sub_251BE1D90()
{
  swift_beginAccess();
  type metadata accessor for PBState(0);
  sub_251BE4824(&qword_27F47BE18, type metadata accessor for PBState);
  sub_251C70564();
  return swift_endAccess();
}

uint64_t sub_251BE1E6C()
{
  swift_beginAccess();
  sub_251C70534();
  return swift_endAccess();
}

uint64_t sub_251BE1EF8()
{
  swift_beginAccess();
  sub_251BE7190();
  sub_251C70494();
  return swift_endAccess();
}

uint64_t sub_251BE1F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for PBStateResponse(0);
  result = sub_251BE2000(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251BE2000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (v11 = *(a1 + 24), , sub_251C70674(), result = , !v4))
  {
    result = sub_251BE21AC(a1, a2, a3, a4);
    if (!v4)
    {
      v13 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__msg);
      swift_beginAccess();
      v14 = *v13;
      v15 = v13[1];
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {

        sub_251C70674();
      }

      v17 = a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__resultCode;
      result = swift_beginAccess();
      if (*v17)
      {
        v18 = *v17;
        v19 = *(v17 + 8);
        sub_251BE7190();
        return sub_251C70604();
      }
    }
  }

  return result;
}

uint64_t sub_251BE21AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_251BE161C(0, &qword_27F47BD58, type metadata accessor for PBState, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state;
  swift_beginAccess();
  sub_251BE7FC8(a1 + v14, v8, &qword_27F47BD58, type metadata accessor for PBState);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BE8048(v8, &qword_27F47BD58, type metadata accessor for PBState);
  }

  sub_251BE6F30(v8, v13, type metadata accessor for PBState);
  sub_251BE4824(&qword_27F47BE18, type metadata accessor for PBState);
  sub_251C706A4();
  return sub_251BE6F98(v13, type metadata accessor for PBState);
}

BOOL sub_251BE2404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBState(0);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BE7F50(0, &qword_27F47BF90, &qword_27F47BD58, type metadata accessor for PBState);
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  sub_251BE161C(0, &qword_27F47BD58, type metadata accessor for PBState, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v40 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  swift_beginAccess();
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  swift_beginAccess();
  if ((v19 != *(a2 + 16) || v20 != *(a2 + 24)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v39 = v7;
  v21 = v4;
  v22 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state;
  swift_beginAccess();
  sub_251BE7FC8(a1 + v22, v18, &qword_27F47BD58, type metadata accessor for PBState);
  v23 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state;
  v24 = a2;
  swift_beginAccess();
  v25 = *(v9 + 48);
  sub_251BE7FC8(v18, v12, &qword_27F47BD58, type metadata accessor for PBState);
  sub_251BE7FC8(a2 + v23, &v12[v25], &qword_27F47BD58, type metadata accessor for PBState);
  v26 = *(v41 + 48);
  if (v26(v12, 1, v21) == 1)
  {

    sub_251BE8048(v18, &qword_27F47BD58, type metadata accessor for PBState);
    if (v26(&v12[v25], 1, v21) == 1)
    {
      sub_251BE8048(v12, &qword_27F47BD58, type metadata accessor for PBState);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v27 = v40;
  sub_251BE7FC8(v12, v40, &qword_27F47BD58, type metadata accessor for PBState);
  if (v26(&v12[v25], 1, v21) == 1)
  {

    sub_251BE8048(v18, &qword_27F47BD58, type metadata accessor for PBState);
    sub_251BE6F98(v27, type metadata accessor for PBState);
LABEL_9:
    sub_251BE6FF8(v12, &qword_27F47BF90, &qword_27F47BD58, type metadata accessor for PBState);
LABEL_10:

    return 0;
  }

  v29 = v39;
  sub_251BE6F30(&v12[v25], v39, type metadata accessor for PBState);

  v30 = sub_251BE71E4(v27, v29);
  sub_251BE6F98(v29, type metadata accessor for PBState);
  sub_251BE8048(v18, &qword_27F47BD58, type metadata accessor for PBState);
  sub_251BE6F98(v27, type metadata accessor for PBState);
  sub_251BE8048(v12, &qword_27F47BD58, type metadata accessor for PBState);
  if ((v30 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v31 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__msg);
  swift_beginAccess();
  v32 = *v31;
  v33 = v31[1];
  v34 = (v24 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__msg);
  swift_beginAccess();
  if ((v32 != *v34 || v33 != v34[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v35 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__resultCode;
  swift_beginAccess();
  v36 = *(a1 + v35);

  v37 = v24 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__resultCode;
  swift_beginAccess();
  v38 = *v37;
  LODWORD(v37) = *(v37 + 8);

  if (v37 == 1)
  {
    if (v38 <= 2)
    {
      if (v38)
      {
        if (v38 == 1)
        {
          if (v36 == 1)
          {
            return 1;
          }
        }

        else if (v36 == 2)
        {
          return 1;
        }
      }

      else if (!v36)
      {
        return 1;
      }
    }

    else if (v38 > 4)
    {
      if (v38 == 5)
      {
        if (v36 == 5)
        {
          return 1;
        }
      }

      else if (v36 == 6)
      {
        return 1;
      }
    }

    else if (v38 == 3)
    {
      if (v36 == 3)
      {
        return 1;
      }
    }

    else if (v36 == 4)
    {
      return 1;
    }

    return 0;
  }

  return v36 == v38;
}

uint64_t sub_251BE2A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251C703A4();
  v4 = *(a1 + 20);
  if (qword_27F478910 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27F47BD28;
}

uint64_t sub_251BE2B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BF80, type metadata accessor for PBStateResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BE2BAC(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BE58, type metadata accessor for PBStateResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BE2C18()
{
  sub_251BE4824(&qword_27F47BE58, type metadata accessor for PBStateResponse);

  return sub_251C705C4();
}

uint64_t sub_251BE2C98()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2830);
  __swift_project_value_buffer(v0, qword_27F4A2830);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C75420;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 0;
  *v5 = "UNDEFINED";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 1;
  *v9 = "OK";
  *(v9 + 8) = 2;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "STATE_UPDATED";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "STATE_NOT_UPDATED";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "SERVER_ERROR";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "MAILBOX_NOT_FOUND";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "UNAUTHORIZED";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251BE2FCC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2848);
  __swift_project_value_buffer(v0, qword_27F4A2848);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "latitude";
  *(v7 + 8) = 8;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "longitude";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "radius";
  *(v12 + 8) = 6;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BE31F8()
{
  if (!*v0 || (result = sub_251C70664(), !v1))
  {
    if (!*(v0 + 8) || (result = sub_251C70664(), !v1))
    {
      if (!*(v0 + 16) || (result = sub_251C70644(), !v1))
      {
        v3 = v0 + *(type metadata accessor for PBGeo(0) + 28);
        return sub_251C70394();
      }
    }
  }

  return result;
}

uint64_t sub_251BE32F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BFA0, type metadata accessor for PBGeo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BE3398(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BE38, type metadata accessor for PBGeo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BE3404()
{
  sub_251BE4824(&qword_27F47BE38, type metadata accessor for PBGeo);

  return sub_251C705C4();
}

uint64_t sub_251BE3484()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2860);
  __swift_project_value_buffer(v0, qword_27F4A2860);
  sub_251BE161C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_251C7C1E0;
  v5 = v35 + v4;
  v6 = v35 + v4 + *(v2 + 56);
  *(v35 + v4) = 1;
  *v6 = "mailbox_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v35 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "actor";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v36 = *MEMORY[0x277D21870];
  v9();
  v11 = (v35 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "access_code";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v35 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "sid";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v35 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "composite_code_trials";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v35 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "expiration_time";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v35 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "geo_encrypted";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  v21 = (v35 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "pa";
  *(v22 + 1) = 2;
  v22[16] = 2;
  v9();
  v23 = v35 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "pb";
  *(v23 + 8) = 2;
  *(v23 + 16) = 2;
  v9();
  v24 = (v35 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "confirmation_a";
  *(v25 + 1) = 14;
  v25[16] = 2;
  v9();
  v26 = (v35 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "confirmation_b";
  *(v27 + 1) = 14;
  v27[16] = 2;
  v9();
  v28 = (v35 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "lookupinfo_encrypted";
  *(v29 + 1) = 20;
  v29[16] = 2;
  v9();
  v30 = (v35 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "step";
  *(v31 + 1) = 4;
  v31[16] = 2;
  v9();
  v32 = (v35 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "other_data";
  *(v33 + 1) = 10;
  v33[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251BE3958()
{
  result = sub_251C70444();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 3:
        case 4:
          sub_251C70534();
          break;
        case 2:
          v3 = v0;
          sub_251BE51C4();
          goto LABEL_12;
        case 5:
          sub_251C704F4();
          break;
        case 6:
          sub_251BE3AF8();
          break;
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
          sub_251C704D4();
          break;
        case 13:
          v3 = v0;
          sub_251BE80B8();
LABEL_12:
          v0 = v3;
          sub_251C70494();
          break;
        case 14:
          sub_251BE3BAC();
          break;
        default:
          break;
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251BE3AF8()
{
  v0 = *(type metadata accessor for PBState(0) + 68);
  sub_251C70384();
  sub_251BE4824(&qword_27F47A968, MEMORY[0x277D21570]);
  return sub_251C70564();
}

uint64_t sub_251BE3BAC()
{
  v0 = *(type metadata accessor for PBState(0) + 72);
  type metadata accessor for PBOtherData(0);
  sub_251BE4824(&qword_27F47BEB8, type metadata accessor for PBOtherData);
  return sub_251C70564();
}

uint64_t sub_251BE3C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_251C70674(), !v4))
  {
    if (!*(v3 + 16) || (v47 = *(v3 + 16), v49 = *(v3 + 24), sub_251BE51C4(), result = sub_251C70604(), !v4))
    {
      v12 = *(v3 + 40);
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v13 || (result = sub_251C70674(), !v4))
      {
        v14 = *(v3 + 56);
        v15 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v15 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v15 || (result = sub_251C70674(), !v4))
        {
          if (!*(v3 + 64) || (result = sub_251C70644(), !v4))
          {
            result = sub_251BE4058(v3, a1, a2, a3);
            if (!v4)
            {
              v16 = *(v3 + 72);
              v17 = *(v3 + 80);
              v18 = v17 >> 62;
              if ((v17 >> 62) > 1)
              {
                if (v18 != 2)
                {
                  goto LABEL_28;
                }

                v19 = *(v16 + 16);
                v20 = *(v16 + 24);
              }

              else
              {
                if (!v18)
                {
                  if ((v17 & 0xFF000000000000) == 0)
                  {
LABEL_28:
                    v21 = *(v3 + 88);
                    v22 = *(v3 + 96);
                    v23 = v22 >> 62;
                    if ((v22 >> 62) > 1)
                    {
                      if (v23 != 2)
                      {
                        goto LABEL_37;
                      }

                      v24 = *(v21 + 16);
                      v25 = *(v21 + 24);
                    }

                    else
                    {
                      if (!v23)
                      {
                        if ((v22 & 0xFF000000000000) == 0)
                        {
LABEL_37:
                          v26 = *(v3 + 104);
                          v27 = *(v3 + 112);
                          v28 = v27 >> 62;
                          if ((v27 >> 62) > 1)
                          {
                            if (v28 != 2)
                            {
                              goto LABEL_46;
                            }

                            v29 = *(v26 + 16);
                            v30 = *(v26 + 24);
                          }

                          else
                          {
                            if (!v28)
                            {
                              if ((v27 & 0xFF000000000000) == 0)
                              {
LABEL_46:
                                v31 = *(v3 + 120);
                                v32 = *(v3 + 128);
                                v33 = v32 >> 62;
                                if ((v32 >> 62) > 1)
                                {
                                  if (v33 != 2)
                                  {
                                    goto LABEL_55;
                                  }

                                  v34 = *(v31 + 16);
                                  v35 = *(v31 + 24);
                                }

                                else
                                {
                                  if (!v33)
                                  {
                                    if ((v32 & 0xFF000000000000) == 0)
                                    {
LABEL_55:
                                      v36 = *(v3 + 136);
                                      v37 = *(v3 + 144);
                                      v38 = v37 >> 62;
                                      if ((v37 >> 62) > 1)
                                      {
                                        if (v38 != 2)
                                        {
                                          goto LABEL_64;
                                        }

                                        v39 = *(v36 + 16);
                                        v40 = *(v36 + 24);
                                      }

                                      else
                                      {
                                        if (!v38)
                                        {
                                          if ((v37 & 0xFF000000000000) == 0)
                                          {
LABEL_64:
                                            v41 = *(v3 + 152);
                                            v42 = *(v3 + 160);
                                            v43 = v42 >> 62;
                                            if ((v42 >> 62) > 1)
                                            {
                                              if (v43 != 2)
                                              {
                                                goto LABEL_73;
                                              }

                                              v44 = *(v41 + 16);
                                              v45 = *(v41 + 24);
                                            }

                                            else
                                            {
                                              if (!v43)
                                              {
                                                if ((v42 & 0xFF000000000000) == 0)
                                                {
                                                  goto LABEL_73;
                                                }

                                                goto LABEL_72;
                                              }

                                              v44 = v41;
                                              v45 = v41 >> 32;
                                            }

                                            if (v44 != v45)
                                            {
LABEL_72:
                                              sub_251C70624();
                                            }

LABEL_73:
                                            if (*(v3 + 168))
                                            {
                                              v48 = *(v3 + 168);
                                              v50 = *(v3 + 176);
                                              sub_251BE80B8();
                                              sub_251C70604();
                                            }

                                            sub_251BE42A4(v3, a1, a2, a3);
                                            v46 = v3 + *(type metadata accessor for PBState(0) + 64);
                                            return sub_251C70394();
                                          }

LABEL_63:
                                          sub_251C70624();
                                          goto LABEL_64;
                                        }

                                        v39 = v36;
                                        v40 = v36 >> 32;
                                      }

                                      if (v39 == v40)
                                      {
                                        goto LABEL_64;
                                      }

                                      goto LABEL_63;
                                    }

LABEL_54:
                                    sub_251C70624();
                                    goto LABEL_55;
                                  }

                                  v34 = v31;
                                  v35 = v31 >> 32;
                                }

                                if (v34 == v35)
                                {
                                  goto LABEL_55;
                                }

                                goto LABEL_54;
                              }

LABEL_45:
                              sub_251C70624();
                              goto LABEL_46;
                            }

                            v29 = v26;
                            v30 = v26 >> 32;
                          }

                          if (v29 == v30)
                          {
                            goto LABEL_46;
                          }

                          goto LABEL_45;
                        }

LABEL_36:
                        sub_251C70624();
                        goto LABEL_37;
                      }

                      v24 = v21;
                      v25 = v21 >> 32;
                    }

                    if (v24 == v25)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_36;
                  }

LABEL_27:
                  sub_251C70624();
                  goto LABEL_28;
                }

                v19 = v16;
                v20 = v16 >> 32;
              }

              if (v19 == v20)
              {
                goto LABEL_28;
              }

              goto LABEL_27;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251BE4058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x277D21570];
  sub_251BE161C(0, &qword_27F479130, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_251C70384();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PBState(0);
  sub_251BE7FC8(a1 + *(v15 + 68), v9, &qword_27F479130, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_251BE8048(v9, &qword_27F479130, MEMORY[0x277D21570]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_251BE4824(&qword_27F47A968, MEMORY[0x277D21570]);
  sub_251C706A4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_251BE42A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_251BE161C(0, &qword_27F47BD70, type metadata accessor for PBOtherData, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for PBOtherData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBState(0);
  sub_251BE7FC8(a1 + *(v14 + 72), v8, &qword_27F47BD70, type metadata accessor for PBOtherData);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BE8048(v8, &qword_27F47BD70, type metadata accessor for PBOtherData);
  }

  sub_251BE6F30(v8, v13, type metadata accessor for PBOtherData);
  sub_251BE4824(&qword_27F47BEB8, type metadata accessor for PBOtherData);
  sub_251C706A4();
  return sub_251BE6F98(v13, type metadata accessor for PBOtherData);
}

uint64_t sub_251BE4514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251BE4588(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_251BE45FC(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t sub_251BE4650(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BE4824(&qword_27F47BFA8, type metadata accessor for PBState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BE46F0(uint64_t a1)
{
  v2 = sub_251BE4824(&qword_27F47BE18, type metadata accessor for PBState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BE475C()
{
  sub_251BE4824(&qword_27F47BE18, type metadata accessor for PBState);

  return sub_251C705C4();
}

uint64_t sub_251BE4824(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_251BE51C4()
{
  result = qword_27F47BF18;
  if (!qword_27F47BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BF18);
  }

  return result;
}

uint64_t sub_251BE5218(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(type metadata accessor for PBGeo(0) + 28);
  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BE52E0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for PBUpdateParameters(0);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_251BE161C(0, &qword_27F47BF70, type metadata accessor for PBUpdateParameters, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = (&v49 - v9);
  sub_251BE7F50(0, &qword_27F47BF78, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  v53 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v56 = &v49 - v12;
  v13 = type metadata accessor for PBBlobAuth(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BE161C(0, qword_2813E7028, type metadata accessor for PBBlobAuth, v6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = (&v49 - v20);
  sub_251BE7F50(0, &qword_27F47A940, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v49 - v25;
  v52 = type metadata accessor for PBUpdateStateRequest(0);
  v27 = *(v52 + 20);
  v28 = *(v23 + 56);
  v57 = a1;
  sub_251BE7FC8(a1 + v27, v26, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v29 = v58 + v27;
  v30 = v58;
  sub_251BE7FC8(v29, &v26[v28], qword_2813E7028, type metadata accessor for PBBlobAuth);
  v31 = *(v14 + 48);
  if (v31(v26, 1, v13) == 1)
  {
    if (v31(&v26[v28], 1, v13) == 1)
    {
      sub_251BE8048(v26, qword_2813E7028, type metadata accessor for PBBlobAuth);
      goto LABEL_4;
    }

LABEL_9:
    v37 = &qword_27F47A940;
    v38 = qword_2813E7028;
    v39 = type metadata accessor for PBBlobAuth;
    v40 = v26;
LABEL_21:
    sub_251BE6FF8(v40, v37, v38, v39);
    goto LABEL_22;
  }

  sub_251BE7FC8(v26, v21, qword_2813E7028, type metadata accessor for PBBlobAuth);
  if (v31(&v26[v28], 1, v13) == 1)
  {
    sub_251BE6F98(v21, type metadata accessor for PBBlobAuth);
    goto LABEL_9;
  }

  sub_251BE6F30(&v26[v28], v17, type metadata accessor for PBBlobAuth);
  if ((sub_251A9C778(*v21, *v17) & 1) == 0 || (sub_251A9D1F0(v21[1], v21[2], v17[1], v17[2]) & 1) == 0 || (v21[3] != v17[3] || v21[4] != v17[4]) && (sub_251C719D4() & 1) == 0)
  {
    sub_251BE6F98(v17, type metadata accessor for PBBlobAuth);
    sub_251BE6F98(v21, type metadata accessor for PBBlobAuth);
    sub_251BE8048(v26, qword_2813E7028, type metadata accessor for PBBlobAuth);
    goto LABEL_22;
  }

  v41 = *(v13 + 28);
  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8]);
  v42 = sub_251C70ED4();
  sub_251BE6F98(v17, type metadata accessor for PBBlobAuth);
  sub_251BE6F98(v21, type metadata accessor for PBBlobAuth);
  sub_251BE8048(v26, qword_2813E7028, type metadata accessor for PBBlobAuth);
  if ((v42 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v32 = *(v52 + 24);
  v33 = *(v53 + 48);
  v34 = v56;
  sub_251BE7FC8(v57 + v32, v56, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  sub_251BE7FC8(v30 + v32, v34 + v33, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  v35 = v55;
  v36 = *(v54 + 48);
  if (v36(v34, 1, v55) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_251BE8048(v34, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
LABEL_25:
      sub_251C703B4();
      sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8]);
      v44 = sub_251C70ED4();
      return v44 & 1;
    }

    goto LABEL_20;
  }

  v43 = v51;
  sub_251BE7FC8(v34, v51, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    sub_251BE6F98(v43, type metadata accessor for PBUpdateParameters);
LABEL_20:
    v37 = &qword_27F47BF78;
    v38 = &qword_27F47BF70;
    v39 = type metadata accessor for PBUpdateParameters;
    v40 = v34;
    goto LABEL_21;
  }

  v46 = v34 + v33;
  v47 = v50;
  sub_251BE6F30(v46, v50, type metadata accessor for PBUpdateParameters);
  v48 = sub_251BE5AA0(v43, v47);
  sub_251BE6F98(v47, type metadata accessor for PBUpdateParameters);
  sub_251BE6F98(v43, type metadata accessor for PBUpdateParameters);
  sub_251BE8048(v34, &qword_27F47BF70, type metadata accessor for PBUpdateParameters);
  if (v48)
  {
    goto LABEL_25;
  }

LABEL_22:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_251BE5AA0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BE161C(0, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  sub_251BE7F50(0, &qword_27F47BF58, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = *a1;
  v19 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v18 == v19)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      if (v18 != 2)
      {
        goto LABEL_26;
      }
    }

    else if (v18 != 3)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (!v19)
    {
      if (!v18)
      {
        goto LABEL_7;
      }

LABEL_26:
      v32 = 0;
      return v32 & 1;
    }

    if (v18 != 1)
    {
      goto LABEL_26;
    }
  }

LABEL_7:
  if ((a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_26;
  }

  v34 = v8;
  v35 = type metadata accessor for PBUpdateParameters(0);
  v20 = *(v35 + 24);
  v21 = *(v14 + 48);
  sub_251BE7FC8(a1 + v20, v17, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  sub_251BE7FC8(a2 + v20, &v17[v21], &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v22 = *(v5 + 48);
  if (v22(v17, 1, v4) == 1)
  {
    if (v22(&v17[v21], 1, v4) == 1)
    {
      sub_251BE8048(v17, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  sub_251BE7FC8(v17, v12, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  if (v22(&v17[v21], 1, v4) == 1)
  {
    sub_251BE6F98(v12, type metadata accessor for PBUpdateParameters.OneOf_Data);
LABEL_18:
    sub_251BE6FF8(v17, &qword_27F47BF58, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
    goto LABEL_26;
  }

  v23 = v34;
  sub_251BE6F30(&v17[v21], v34, type metadata accessor for PBUpdateParameters.OneOf_Data);
  v24 = sub_251BE5F28(v12, v23);
  sub_251BE6F98(v23, type metadata accessor for PBUpdateParameters.OneOf_Data);
  sub_251BE6F98(v12, type metadata accessor for PBUpdateParameters.OneOf_Data);
  sub_251BE8048(v17, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data);
  if ((v24 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_24:
  v25 = v35;
  v26 = *(v35 + 28);
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = a2 + v26;
  v30 = *(v29 + 8);
  if (!sub_251BB3774(v27, v28, *v29))
  {
    goto LABEL_26;
  }

  v31 = *(v25 + 32);
  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8]);
  v32 = sub_251C70ED4();
  return v32 & 1;
}

uint64_t sub_251BE5F28(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v79 = a2;
  v74 = type metadata accessor for PBOtherData(0);
  v2 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v75 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v77 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v76 = (&v74 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v74 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v74 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v74 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v74 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v74 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v74 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = (&v74 - v28);
  sub_251BE70C8();
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &v34[*(v32 + 56)];
  sub_251BE712C(v78, v34);
  v78 = v35;
  sub_251BE712C(v79, v35);
  v79 = v34;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v45 = v78;
      v46 = v79;
      if (!EnumCaseMultiPayload)
      {
        sub_251BE712C(v79, v29);
        v48 = *v29;
        v47 = v29[1];
        if (!swift_getEnumCaseMultiPayload())
        {
          if (v48 != *v45 || v47 != v45[1])
          {
            v70 = v45[1];
            v71 = sub_251C719D4();

            v44 = v71 << 31 >> 31;
            v53 = type metadata accessor for PBUpdateParameters.OneOf_Data;
            goto LABEL_29;
          }

          v73 = v45[1];

          goto LABEL_53;
        }

LABEL_28:
        LOBYTE(v44) = 0;
        v53 = sub_251BE70C8;
        goto LABEL_29;
      }

      sub_251BE712C(v79, v27);
      v57 = *v27;
      v58 = v27[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    v45 = v78;
    v46 = v79;
    if (EnumCaseMultiPayload != 2)
    {
      sub_251BE712C(v79, v21);
      v57 = *v21;
      v58 = v21[1];
      v59 = swift_getEnumCaseMultiPayload();
      if (v59 == 3)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    sub_251BE712C(v79, v24);
    v57 = *v24;
    v58 = v24[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_26:
      v54 = v57;
      v55 = v58;
      goto LABEL_27;
    }

LABEL_23:
    v50 = *v45;
    v49 = v45[1];
    LOBYTE(v44) = sub_251A9D1F0(v57, v58, v50, v49);
    sub_251A83028(v50, v49);
    v51 = v57;
    v52 = v58;
LABEL_24:
    sub_251A83028(v51, v52);
    v53 = type metadata accessor for PBUpdateParameters.OneOf_Data;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v46 = v79;
      sub_251BE712C(v79, v15);
      v65 = *v15;
      v64 = v15[1];
      v66 = v78;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v68 = *v66;
        v67 = v66[1];
        LOBYTE(v44) = sub_251A9D1F0(v65, v64, v68, v67);
        sub_251A83028(v68, v67);
        v51 = v65;
        v52 = v64;
        goto LABEL_24;
      }

      v54 = v65;
      v55 = v64;
LABEL_27:
      sub_251A83028(v54, v55);
      goto LABEL_28;
    }

    v46 = v79;
    sub_251BE712C(v79, v18);
    v57 = *v18;
    v58 = v18[1];
    v45 = v78;
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v46 = v79;
    sub_251BE712C(v79, v12);
    v57 = *v12;
    v58 = v12[1];
    v45 = v78;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 7)
  {
    v46 = v79;
    v60 = v77;
    sub_251BE712C(v79, v77);
    v61 = v78;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v62 = v75;
      sub_251BE6F30(v61, v75, type metadata accessor for PBOtherData);
      if (*v60 != *v62 || (*(v60 + 8) != *(v62 + 8) || *(v60 + 16) != *(v62 + 16)) && (sub_251C719D4() & 1) == 0 || (v63 = *(v74 + 24), sub_251C703B4(), sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8]), (sub_251C70ED4() & 1) == 0))
      {
        sub_251BE6F98(v62, type metadata accessor for PBOtherData);
        sub_251BE6F98(v60, type metadata accessor for PBOtherData);
        LOBYTE(v44) = 0;
        v53 = type metadata accessor for PBUpdateParameters.OneOf_Data;
        goto LABEL_29;
      }

      sub_251BE6F98(v62, type metadata accessor for PBOtherData);
      sub_251BE6F98(v60, type metadata accessor for PBOtherData);
LABEL_53:
      LOBYTE(v44) = 1;
      v53 = type metadata accessor for PBUpdateParameters.OneOf_Data;
      goto LABEL_29;
    }

    sub_251BE6F98(v60, type metadata accessor for PBOtherData);
    goto LABEL_28;
  }

  v37 = v76;
  sub_251BE712C(v79, v76);
  v39 = *v37;
  v38 = v37[1];
  v40 = v78;
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    if (v39 == *v40 && v38 == v40[1])
    {
      v72 = v40[1];

      LOBYTE(v44) = 1;
    }

    else
    {
      v42 = v40[1];
      v43 = sub_251C719D4();

      v44 = v43 << 31 >> 31;
    }

    v53 = type metadata accessor for PBUpdateParameters.OneOf_Data;
    v46 = v79;
  }

  else
  {

    LOBYTE(v44) = 0;
    v53 = sub_251BE70C8;
    v46 = v79;
  }

LABEL_29:
  sub_251BE6F98(v46, v53);
  return v44 & 1;
}

uint64_t sub_251BE665C(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for PBPollParameters(0);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_251BE161C(0, &qword_27F47BF28, type metadata accessor for PBPollParameters, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = (&v49 - v9);
  sub_251BE7F50(0, &qword_27F47BF30, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  v53 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v56 = &v49 - v12;
  v13 = type metadata accessor for PBBlobAuth(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BE161C(0, qword_2813E7028, type metadata accessor for PBBlobAuth, v6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = (&v49 - v20);
  sub_251BE7F50(0, &qword_27F47A940, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v49 - v25;
  v52 = type metadata accessor for PBPollStateRequest(0);
  v27 = *(v52 + 20);
  v28 = *(v23 + 56);
  v57 = a1;
  sub_251BE7FC8(a1 + v27, v26, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v29 = v58 + v27;
  v30 = v58;
  sub_251BE7FC8(v29, &v26[v28], qword_2813E7028, type metadata accessor for PBBlobAuth);
  v31 = *(v14 + 48);
  if (v31(v26, 1, v13) == 1)
  {
    if (v31(&v26[v28], 1, v13) == 1)
    {
      sub_251BE8048(v26, qword_2813E7028, type metadata accessor for PBBlobAuth);
      goto LABEL_4;
    }

LABEL_9:
    v37 = &qword_27F47A940;
    v38 = qword_2813E7028;
    v39 = type metadata accessor for PBBlobAuth;
    v40 = v26;
LABEL_21:
    sub_251BE6FF8(v40, v37, v38, v39);
    goto LABEL_22;
  }

  sub_251BE7FC8(v26, v21, qword_2813E7028, type metadata accessor for PBBlobAuth);
  if (v31(&v26[v28], 1, v13) == 1)
  {
    sub_251BE6F98(v21, type metadata accessor for PBBlobAuth);
    goto LABEL_9;
  }

  sub_251BE6F30(&v26[v28], v17, type metadata accessor for PBBlobAuth);
  if ((sub_251A9C778(*v21, *v17) & 1) == 0 || (sub_251A9D1F0(v21[1], v21[2], v17[1], v17[2]) & 1) == 0 || (v21[3] != v17[3] || v21[4] != v17[4]) && (sub_251C719D4() & 1) == 0)
  {
    sub_251BE6F98(v17, type metadata accessor for PBBlobAuth);
    sub_251BE6F98(v21, type metadata accessor for PBBlobAuth);
    sub_251BE8048(v26, qword_2813E7028, type metadata accessor for PBBlobAuth);
    goto LABEL_22;
  }

  v41 = *(v13 + 28);
  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8]);
  v42 = sub_251C70ED4();
  sub_251BE6F98(v17, type metadata accessor for PBBlobAuth);
  sub_251BE6F98(v21, type metadata accessor for PBBlobAuth);
  sub_251BE8048(v26, qword_2813E7028, type metadata accessor for PBBlobAuth);
  if ((v42 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v32 = *(v52 + 24);
  v33 = *(v53 + 48);
  v34 = v56;
  sub_251BE7FC8(v57 + v32, v56, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  sub_251BE7FC8(v30 + v32, v34 + v33, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  v35 = v55;
  v36 = *(v54 + 48);
  if (v36(v34, 1, v55) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_251BE8048(v34, &qword_27F47BF28, type metadata accessor for PBPollParameters);
LABEL_25:
      sub_251C703B4();
      sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8]);
      v44 = sub_251C70ED4();
      return v44 & 1;
    }

    goto LABEL_20;
  }

  v43 = v51;
  sub_251BE7FC8(v34, v51, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    sub_251BE6F98(v43, type metadata accessor for PBPollParameters);
LABEL_20:
    v37 = &qword_27F47BF30;
    v38 = &qword_27F47BF28;
    v39 = type metadata accessor for PBPollParameters;
    v40 = v34;
    goto LABEL_21;
  }

  v46 = v34 + v33;
  v47 = v50;
  sub_251BE6F30(v46, v50, type metadata accessor for PBPollParameters);
  v48 = sub_251BE6E1C(v43, v47);
  sub_251BE6F98(v47, type metadata accessor for PBPollParameters);
  sub_251BE6F98(v43, type metadata accessor for PBPollParameters);
  sub_251BE8048(v34, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  if (v48)
  {
    goto LABEL_25;
  }

LABEL_22:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_251BE6E1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v4 || (sub_251C719D4() & 1) != 0)
  {
    v5 = *(type metadata accessor for PBPollParameters(0) + 24);
    sub_251C703B4();
    sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8]);
    return sub_251C70ED4() & 1;
  }

  return 0;
}

uint64_t sub_251BE6F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BE6F98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251BE6FF8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251BE7F50(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_251BE7074()
{
  result = qword_27F47BF50;
  if (!qword_27F47BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BF50);
  }

  return result;
}

void sub_251BE70C8()
{
  if (!qword_27F47BF60)
  {
    type metadata accessor for PBUpdateParameters.OneOf_Data(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47BF60);
    }
  }
}

uint64_t sub_251BE712C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_251BE7190()
{
  result = qword_27F47BF88;
  if (!qword_27F47BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BF88);
  }

  return result;
}

uint64_t sub_251BE71E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBOtherData(0);
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_251BE161C(0, &qword_27F47BD70, type metadata accessor for PBOtherData, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v63 = &v59 - v11;
  sub_251BE7F50(0, &qword_27F47BF98, &qword_27F47BD70, type metadata accessor for PBOtherData);
  v64 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - v14;
  v16 = sub_251C70384();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277D21570];
  sub_251BE161C(0, &qword_27F479130, MEMORY[0x277D21570], v8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v59 - v24;
  sub_251BE7F50(0, &qword_27F479138, &qword_27F479130, v21);
  v27 = v26;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v59 - v29;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_53;
  }

  v31 = *(a1 + 16);
  v32 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v32 > 1)
    {
      if (v32 == 2)
      {
        if (v31 != 2)
        {
          goto LABEL_53;
        }
      }

      else if (v31 != 3)
      {
        goto LABEL_53;
      }
    }

    else if (v32)
    {
      if (v31 != 1)
      {
        goto LABEL_53;
      }
    }

    else if (v31)
    {
      goto LABEL_53;
    }
  }

  else if (v31 != v32)
  {
    goto LABEL_53;
  }

  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_251C719D4() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    goto LABEL_53;
  }

  v59 = v7;
  v60 = v15;
  v61 = type metadata accessor for PBState(0);
  v33 = v61[17];
  v34 = *(v27 + 48);
  v35 = MEMORY[0x277D21570];
  sub_251BE7FC8(a1 + v33, v30, &qword_27F479130, MEMORY[0x277D21570]);
  v62 = v34;
  sub_251BE7FC8(a2 + v33, &v30[v34], &qword_27F479130, v35);
  v36 = v17;
  v37 = *(v17 + 48);
  if (v37(v30, 1, v16) == 1)
  {
    if (v37(&v30[v62], 1, v16) == 1)
    {
      sub_251BE8048(v30, &qword_27F479130, MEMORY[0x277D21570]);
      goto LABEL_32;
    }

LABEL_29:
    v39 = &qword_27F479138;
    v40 = &qword_27F479130;
    v41 = MEMORY[0x277D21570];
    v42 = v30;
LABEL_30:
    sub_251BE6FF8(v42, v39, v40, v41);
    goto LABEL_53;
  }

  sub_251BE7FC8(v30, v25, &qword_27F479130, MEMORY[0x277D21570]);
  v38 = v62;
  if (v37(&v30[v62], 1, v16) == 1)
  {
    (*(v36 + 8))(v25, v16);
    goto LABEL_29;
  }

  (*(v36 + 32))(v20, &v30[v38], v16);
  sub_251BE4824(&qword_27F479140, MEMORY[0x277D21570]);
  v43 = sub_251C70ED4();
  v44 = *(v36 + 8);
  v44(v20, v16);
  v44(v25, v16);
  sub_251BE8048(v30, &qword_27F479130, MEMORY[0x277D21570]);
  if ((v43 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_32:
  if ((sub_251A9D1F0(*(a1 + 72), *(a1 + 80), *(a2 + 72), *(a2 + 80)) & 1) == 0)
  {
    goto LABEL_53;
  }

  if ((sub_251A9D1F0(*(a1 + 88), *(a1 + 96), *(a2 + 88), *(a2 + 96)) & 1) == 0)
  {
    goto LABEL_53;
  }

  if ((sub_251A9D1F0(*(a1 + 104), *(a1 + 112), *(a2 + 104), *(a2 + 112)) & 1) == 0)
  {
    goto LABEL_53;
  }

  if ((sub_251A9D1F0(*(a1 + 120), *(a1 + 128), *(a2 + 120), *(a2 + 128)) & 1) == 0)
  {
    goto LABEL_53;
  }

  if ((sub_251A9D1F0(*(a1 + 136), *(a1 + 144), *(a2 + 136), *(a2 + 144)) & 1) == 0)
  {
    goto LABEL_53;
  }

  if ((sub_251A9D1F0(*(a1 + 152), *(a1 + 160), *(a2 + 152), *(a2 + 160)) & 1) == 0)
  {
    goto LABEL_53;
  }

  v45 = *(a2 + 176);
  if (!sub_251BB3774(*(a1 + 168), *(a1 + 176), *(a2 + 168)))
  {
    goto LABEL_53;
  }

  v46 = v60;
  v47 = v61[18];
  v48 = *(v64 + 48);
  sub_251BE7FC8(a1 + v47, v60, &qword_27F47BD70, type metadata accessor for PBOtherData);
  sub_251BE7FC8(a2 + v47, v46 + v48, &qword_27F47BD70, type metadata accessor for PBOtherData);
  v49 = v66;
  v50 = *(v65 + 48);
  if (v50(v46, 1, v66) != 1)
  {
    v53 = v63;
    sub_251BE7FC8(v46, v63, &qword_27F47BD70, type metadata accessor for PBOtherData);
    if (v50(v46 + v48, 1, v49) == 1)
    {
      sub_251BE6F98(v53, type metadata accessor for PBOtherData);
      goto LABEL_45;
    }

    v54 = v59;
    sub_251BE6F30(v46 + v48, v59, type metadata accessor for PBOtherData);
    if (*v53 == *v54 && (*(v53 + 8) == *(v59 + 1) && *(v53 + 16) == *(v59 + 2) || (sub_251C719D4() & 1) != 0))
    {
      v55 = *(v66 + 24);
      sub_251C703B4();
      sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8]);
      v56 = v59;
      v57 = sub_251C70ED4();
      sub_251BE6F98(v56, type metadata accessor for PBOtherData);
      sub_251BE6F98(v53, type metadata accessor for PBOtherData);
      sub_251BE8048(v46, &qword_27F47BD70, type metadata accessor for PBOtherData);
      if (v57)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_251BE6F98(v59, type metadata accessor for PBOtherData);
      sub_251BE6F98(v53, type metadata accessor for PBOtherData);
      sub_251BE8048(v46, &qword_27F47BD70, type metadata accessor for PBOtherData);
    }

LABEL_53:
    v52 = 0;
    return v52 & 1;
  }

  if (v50(v46 + v48, 1, v49) != 1)
  {
LABEL_45:
    v39 = &qword_27F47BF98;
    v40 = &qword_27F47BD70;
    v41 = type metadata accessor for PBOtherData;
    v42 = v46;
    goto LABEL_30;
  }

  sub_251BE8048(v46, &qword_27F47BD70, type metadata accessor for PBOtherData);
LABEL_42:
  v51 = v61[16];
  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8]);
  v52 = sub_251C70ED4();
  return v52 & 1;
}

uint64_t sub_251BE7B54(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PBStateResponse(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_251BE2404(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BE7C50(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BD58, type metadata accessor for PBState, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21[-v5];
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state;
  v8 = type metadata accessor for PBState(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__msg);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__resultCode;
  *v10 = 0;
  *(v10 + 8) = 1;
  swift_beginAccess();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v11;
  *(v1 + 24) = v12;
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state;
  swift_beginAccess();
  sub_251BE7FC8(a1 + v13, v6, &qword_27F47BD58, type metadata accessor for PBState);
  swift_beginAccess();

  sub_251BE7EBC(v6, v1 + v7);
  swift_endAccess();
  v14 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__msg);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];
  swift_beginAccess();
  v17 = v9[1];
  *v9 = v16;
  v9[1] = v15;

  v18 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__resultCode);
  swift_beginAccess();
  v19 = *v18;
  LOBYTE(v18) = *(v18 + 8);
  swift_beginAccess();
  *v10 = v19;
  *(v10 + 8) = v18;
  return v1;
}

uint64_t sub_251BE7EBC(uint64_t a1, uint64_t a2)
{
  sub_251BE161C(0, &qword_27F47BD58, type metadata accessor for PBState, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_251BE7F50(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251BE161C(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251BE7FC8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251BE161C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251BE8048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BE161C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_251BE80B8()
{
  result = qword_27F47BFB0;
  if (!qword_27F47BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BFB0);
  }

  return result;
}

uint64_t sub_251BE810C()
{
  result = type metadata accessor for PBOtherData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_251BE81D0()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251BE82BC()
{
  sub_251BE161C(319, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_251C703B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_81Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v10 = sub_251C703B4();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1;
LABEL_5:

    return v13(v14, a2, v12);
  }

  sub_251BE161C(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v12 = v15;
    v13 = *(v16 + 48);
    v14 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_251BE161C(0, a4, a5, MEMORY[0x277D83D88]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + *(a3 + 24);

  return v20(v21, a2, v19);
}

uint64_t __swift_store_extra_inhabitant_index_82Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v12 = sub_251C703B4();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, a2, v14);
  }

  sub_251BE161C(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a3)
  {
    v14 = v17;
    v15 = *(v18 + 56);
    v16 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_251BE161C(0, a5, a6, MEMORY[0x277D83D88]);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + *(a4 + 24);

  return v22(v23, a2, a2, v21);
}

void sub_251BE8724(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_251C703B4();
  if (v7 <= 0x3F)
  {
    sub_251BE161C(319, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      sub_251BE161C(319, a4, a5, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_251BE8844()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_251BE88D4()
{
  result = qword_27F47C018;
  if (!qword_27F47C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C018);
  }

  return result;
}

unint64_t sub_251BE895C()
{
  result = qword_27F47C030;
  if (!qword_27F47C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C030);
  }

  return result;
}

unint64_t sub_251BE89B4()
{
  result = qword_27F47C038;
  if (!qword_27F47C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C038);
  }

  return result;
}

void __swiftcall HKClinicalGatewayEndpointSchemaParameter.asHTTPHeader(using:)(HealthRecordsDaemon::HTTPHeader_optional *__return_ptr retstr, Swift::OpaquePointer_optional using)
{
  v4 = sub_251BE8BE4(using.value._rawValue);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = [v2 param];
    v9 = sub_251C70F14();
    v11 = v10;

    retstr->value.name._countAndFlagsBits = v9;
    retstr->value.name._object = v11;
    retstr->value.value._countAndFlagsBits = v6;
    retstr->value.value._object = v7;
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v12 = sub_251C70764();
    __swift_project_value_buffer(v12, qword_2813E8130);
    v13 = v2;
    v14 = sub_251C70744();
    v15 = sub_251C713C4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = [v13 param];
      v19 = sub_251C70F14();
      v21 = v20;

      v22 = sub_251B10780(v19, v21, &v23);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_251A6C000, v14, v15, "HKClinicalGatewayEndpointSchemaParameter.asHTTPHeader: no value found for parameter %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x25308E2B0](v17, -1, -1);
      MEMORY[0x25308E2B0](v16, -1, -1);
    }

    retstr->value.name = 0u;
    retstr->value.value = 0u;
  }
}

uint64_t sub_251BE8BE4(uint64_t a1)
{
  v3 = [v1 literal];
  if (v3)
  {
    v4 = v3;
    v5 = sub_251C70F14();

    return v5;
  }

  else if (a1)
  {
    return sub_251BE8DBC(a1);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v7 = sub_251C70764();
    __swift_project_value_buffer(v7, qword_2813E8130);
    v8 = v1;
    v9 = sub_251C70744();
    v10 = sub_251C713C4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = [v8 param];
      v14 = sub_251C70F14();
      v16 = v15;

      v17 = sub_251B10780(v14, v16, &v18);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_251A6C000, v9, v10, "HKClinicalGatewayEndpointSchemaParameter.paramValue: %s has no literal value and no substitusions is nil.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x25308E2B0](v12, -1, -1);
      MEMORY[0x25308E2B0](v11, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_251BE8DBC(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 variable];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_251C70F14();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  ContentVariables.init(rawValue:)(v9);
  if (v27 == 12)
  {
    goto LABEL_6;
  }

  if (*(a1 + 16) && (v10 = sub_251AC8DE8(v27), (v11 & 1) != 0))
  {
    v12 = (*(a1 + 56) + 16 * v10);
    v14 = *v12;
    v13 = v12[1];

    return v14;
  }

  else
  {
LABEL_6:
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v16 = sub_251C70764();
    __swift_project_value_buffer(v16, qword_2813E8130);
    v17 = v2;
    v18 = sub_251C70744();
    v19 = sub_251C713C4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      v22 = [v17 param];
      v23 = sub_251C70F14();
      v25 = v24;

      v26 = sub_251B10780(v23, v25, &v28);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_251A6C000, v18, v19, "HKClinicalGatewayEndpointSchemaParameter.variableValue: %s no substitusions to apply.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x25308E2B0](v21, -1, -1);
      MEMORY[0x25308E2B0](v20, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_251BE8FC0(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_251C86148[a1 - 1];
  }
}

uint64_t sub_251BE8FEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v61 = a3;
  v4 = sub_251C6FE64();
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BE9CC0(0, &qword_27F47A938, type metadata accessor for PBBlobs);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - v10;
  v12 = type metadata accessor for PBBlobs(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PBPushBlobsRequest(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BE9D14(&qword_27F47A918, type metadata accessor for PBPushBlobsRequest);
  v21 = v62;
  result = sub_251C70594();
  if (!v21)
  {
    v53 = v13;
    v54 = v20;
    v51 = v16;
    v52 = v11;
    v55 = v7;
    v56 = v4;
    v62 = v23;
    v57 = 0;
    v58 = result;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v24 = sub_251C70764();
    __swift_project_value_buffer(v24, qword_2813E8130);
    v25 = v54;
    sub_251BE9D5C(a1, v54, type metadata accessor for PBPushBlobsRequest);
    v26 = sub_251C70744();
    v27 = sub_251C713C4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v12;
      v29 = v27;
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      v31 = v52;
      sub_251BE9B98(v25 + *(v17 + 20), v52, &qword_27F47A938, type metadata accessor for PBBlobs);
      v32 = *(v53 + 48);
      if (v32(v31, 1, v28) == 1)
      {
        v33 = v51;
        *v51 = MEMORY[0x277D84F90];
        v34 = v33 + *(v28 + 20);
        sub_251C703A4();
        v35 = v32(v31, 1, v28) == 1;
        v36 = v55;
        if (!v35)
        {
          sub_251BE9C04(v31, &qword_27F47A938, type metadata accessor for PBBlobs);
        }
      }

      else
      {
        v33 = v51;
        sub_251BE9DC4(v31, v51, type metadata accessor for PBBlobs);
        v36 = v55;
      }

      v40 = *v33;

      sub_251BE9C60(v33, type metadata accessor for PBBlobs);
      v41 = *(v40 + 16);

      sub_251BE9C60(v25, type metadata accessor for PBPushBlobsRequest);
      *(v30 + 4) = v41;
      _os_log_impl(&dword_251A6C000, v26, v29, "Creating PushBlobRequest. Count: %ld", v30, 0xCu);
      MEMORY[0x25308E2B0](v30, -1, -1);
      v38 = v56;
      v39 = v59;
      v37 = v60;
    }

    else
    {
      sub_251BE9C60(v25, type metadata accessor for PBPushBlobsRequest);
      v37 = v60;
      v36 = v55;
      v38 = v56;
      v39 = v59;
    }

    v42 = __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    (*(v39 + 16))(v36, v42, v38);
    sub_251C6F954();
    sub_251C6F924();
    v43 = type metadata accessor for ClinicalSharingCloudStandardAPI();
    v44 = (v42 + *(v43 + 32));
    v46 = *v44;
    v45 = v44[1];

    sub_251C6F914();
    v47 = (v42 + *(v43 + 36));
    v48 = *v47;
    v49 = v47[1];
    sub_251C6F994();
    sub_251C6F994();
    return sub_251C6F984();
  }

  return result;
}

uint64_t sub_251BE9570@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_251AF86D4(a1, 3);
  *a3 = result;
  return result;
}

uint64_t sub_251BE95C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v60 = a3;
  v4 = sub_251C6FE64();
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BE9CC0(0, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for PBDeleteBlobs(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PBDeleteBlobsRequest(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BE9D14(&qword_27F47A7E0, type metadata accessor for PBDeleteBlobsRequest);
  v21 = v61;
  result = sub_251C70594();
  if (!v21)
  {
    v52 = v13;
    v53 = v20;
    v50 = v16;
    v51 = v11;
    v54 = v7;
    v55 = v4;
    v61 = v23;
    v56 = 0;
    v57 = result;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v24 = sub_251C70764();
    __swift_project_value_buffer(v24, qword_2813E8130);
    v25 = v53;
    sub_251BE9D5C(a1, v53, type metadata accessor for PBDeleteBlobsRequest);
    v26 = sub_251C70744();
    v27 = sub_251C713C4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v12;
      v29 = v27;
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      v31 = v51;
      sub_251BE9B98(v25 + *(v17 + 20), v51, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
      v32 = *(v52 + 48);
      if (v32(v31, 1, v28) == 1)
      {
        v33 = v50;
        *v50 = MEMORY[0x277D84F90];
        v34 = v33 + *(v28 + 20);
        sub_251C703A4();
        v35 = v32(v31, 1, v28) == 1;
        v36 = v54;
        if (!v35)
        {
          sub_251BE9C04(v31, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
        }
      }

      else
      {
        v33 = v50;
        sub_251BE9DC4(v31, v50, type metadata accessor for PBDeleteBlobs);
        v36 = v54;
      }

      v39 = *v33;

      sub_251BE9C60(v33, type metadata accessor for PBDeleteBlobs);
      v40 = *(v39 + 16);

      sub_251BE9C60(v25, type metadata accessor for PBDeleteBlobsRequest);
      *(v30 + 4) = v40;
      _os_log_impl(&dword_251A6C000, v26, v29, "Creating DeleteBlobRequest. Count: %ld", v30, 0xCu);
      MEMORY[0x25308E2B0](v30, -1, -1);
      v38 = v55;
      v37 = v59;
    }

    else
    {
      sub_251BE9C60(v25, type metadata accessor for PBDeleteBlobsRequest);
      v37 = v59;
      v36 = v54;
      v38 = v55;
    }

    v41 = __swift_project_boxed_opaque_existential_1(v58, v58[3]);
    v42 = type metadata accessor for ClinicalSharingCloudStandardAPI();
    (*(v37 + 16))(v36, &v41[v42[5]], v38);
    sub_251C6F954();
    sub_251C6F924();
    v43 = &v41[v42[8]];
    v45 = *v43;
    v44 = *(v43 + 1);

    sub_251C6F914();
    v46 = &v41[v42[9]];
    v47 = *v46;
    v48 = *(v46 + 1);
    sub_251C6F994();
    sub_251C6F994();
    return sub_251C6F984();
  }

  return result;
}

uint64_t sub_251BE9B48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_251AF90E0(a1, 3);
  *a3 = result;
  return result;
}

uint64_t sub_251BE9B98(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_251BE9CC0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251BE9C04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251BE9CC0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BE9C60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251BE9CC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251BE9D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251BE9D5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BE9DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BE9E2C()
{
  v1 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask();
  v83 = *(v1 - 8);
  v2 = *(v83 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v3;
  v5 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D839B0];
  sub_251BED730(0, &qword_27F47C040, &qword_2813E20D0, MEMORY[0x277D839B0], sub_251B41EF8);
  v67 = v7;
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v64 - v9;
  sub_251BEA89C();
  v69 = v11;
  v70 = *(v11 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v11);
  v84 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BEAAF8();
  v15 = *(v14 - 8);
  v72 = v14;
  v73 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v85 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BEABD8(0);
  v19 = *(v18 - 8);
  v75 = v18;
  v76 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v86 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BEACF8(0);
  v23 = *(v22 - 8);
  v77 = v22;
  v78 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v71 = v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BEAD34();
  v27 = *(v26 - 8);
  v79 = v26;
  v80 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v74 = v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A823B4(v0, v87);
  v30 = swift_allocObject();
  sub_251AE7B64(v87, v30 + 16);
  sub_251BEA978(0, &qword_2813E1FF0, v6, MEMORY[0x277CBCEA8]);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  *&v87[0] = sub_251C70A64();
  sub_251B45330();
  v34 = sub_251C70A94();

  *&v87[0] = v34;
  v35 = MEMORY[0x277CBCD88];
  sub_251BEA978(0, &qword_2813E20D0, v6, MEMORY[0x277CBCD88]);
  sub_251B41EF8();
  sub_251C70AE4();

  v36 = v5;
  sub_251BED004(v0, v5);
  v83 = *(v83 + 80);
  v37 = (v83 + 16) & ~v83;
  v66 = v4;
  v38 = swift_allocObject();
  v82 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask;
  sub_251BED354(v36, v38 + v37, type metadata accessor for ClinicalSharingOnboardingSubmissionTask);
  sub_251BEA978(0, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, v35);
  v81 = v39;
  sub_251BEA9F8();
  v40 = sub_251BEAA7C();
  v41 = v67;
  v42 = v40;
  sub_251C70B04();

  (*(v68 + 8))(v10, v41);
  v43 = v0;
  v65 = v0;
  v64[0] = v36;
  sub_251BED004(v0, v36);
  v44 = swift_allocObject();
  sub_251BED354(v36, v44 + v37, type metadata accessor for ClinicalSharingOnboardingSubmissionTask);
  sub_251C70964();
  sub_251BEDC80(&qword_27F47C070, sub_251BEA89C);
  v45 = v69;
  v64[1] = v42;
  v46 = v84;
  sub_251C70B94();

  (*(v70 + 8))(v46, v45);
  v47 = v64[0];
  sub_251BED004(v43, v64[0]);
  v48 = swift_allocObject();
  v49 = v47;
  v50 = v82;
  sub_251BED354(v47, v48 + v37, v82);
  sub_251C70964();
  v84 = MEMORY[0x277CBCCE0];
  sub_251BEDC80(&qword_27F47C080, sub_251BEAAF8);
  v51 = v72;
  v52 = v85;
  sub_251C70B94();

  (*(v73 + 8))(v52, v51);
  v53 = v65;
  sub_251BED004(v65, v49);
  v54 = swift_allocObject();
  sub_251BED354(v49, v54 + v37, v50);
  sub_251C70964();
  sub_251BEDC80(&qword_27F47C090, sub_251BEABD8);
  v55 = v71;
  v56 = v75;
  v57 = v86;
  sub_251C70B94();

  (*(v76 + 8))(v57, v56);
  sub_251BED004(v53, v49);
  v58 = swift_allocObject();
  sub_251BED354(v49, v58 + v37, v82);
  sub_251AA98B0(0, qword_2813E46A0);
  sub_251BEDC80(&qword_27F47C0A0, sub_251BEACF8);
  v59 = v74;
  v60 = v77;
  sub_251C70AE4();

  (*(v78 + 8))(v55, v60);
  sub_251BEDC80(&qword_27F47C0A8, sub_251BEAD34);
  v61 = v79;
  v62 = sub_251C70A94();
  (*(v80 + 8))(v59, v61);
  return v62;
}

uint64_t type metadata accessor for ClinicalSharingOnboardingSubmissionTask()
{
  result = qword_27F47C128;
  if (!qword_27F47C128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251BEA89C()
{
  if (!qword_27F47C048)
  {
    sub_251BED730(255, &qword_27F47C040, &qword_2813E20D0, MEMORY[0x277D839B0], sub_251B41EF8);
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251BEA9F8();
    sub_251BEAA7C();
    v0 = sub_251C70854();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C048);
    }
  }
}

void sub_251BEA978(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_251AA98B0(255, &qword_2813E1C30);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_251BEA9F8()
{
  result = qword_27F47C058;
  if (!qword_27F47C058)
  {
    sub_251BED730(255, &qword_27F47C040, &qword_2813E20D0, MEMORY[0x277D839B0], sub_251B41EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C058);
  }

  return result;
}

unint64_t sub_251BEAA7C()
{
  result = qword_27F47C060;
  if (!qword_27F47C060)
  {
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C060);
  }

  return result;
}

void sub_251BEAAF8()
{
  if (!qword_27F47C068)
  {
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251BEA89C();
    sub_251BEAA7C();
    sub_251BEDC80(&qword_27F47C070, sub_251BEA89C);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C068);
    }
  }
}

void sub_251BEAC14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    a3(255);
    sub_251BEAA7C();
    sub_251BEDC80(a4, a5);
    v9 = sub_251C708D4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251BEAD34()
{
  if (!qword_27F47C098)
  {
    sub_251BEACF8(255);
    sub_251AA98B0(255, qword_2813E46A0);
    sub_251BEDC80(&qword_27F47C0A0, sub_251BEACF8);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C098);
    }
  }
}

_BYTE *sub_251BEADF0@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_251BEAE0C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_251BED664(0, &qword_27F47C0D0, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCE78]);
  v7 = v6;
  v44 = *(v6 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  sub_251BEA978(0, &qword_27F47C0D8, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCF38]);
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v20 = sub_251C70764();
  __swift_project_value_buffer(v20, qword_2813E8130);
  sub_251BED004(a2, v18);
  v21 = v19;
  v22 = sub_251C70744();
  v23 = sub_251C713C4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v40 = v7;
    v26 = v25;
    v45 = v25;
    *v24 = 136315394;
    v27 = &v18[*(v15 + 36)];
    v41 = a3;
    v28 = *v27;
    v29 = v27[1];

    sub_251BED51C(v18);
    v30 = sub_251B10780(v28, v29, &v45);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    v46 = v19;
    v31 = v19;
    sub_251AA98B0(0, &qword_2813E1C30);
    sub_251C719F4();
    v32 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v33 = sub_251C70F74();
    v35 = sub_251B10780(v33, v34, &v45);

    *(v24 + 14) = v35;
    _os_log_impl(&dword_251A6C000, v22, v23, "%s Could not retrieve AnalyticsOptInState %s", v24, 0x16u);
    a3 = v41;
    swift_arrayDestroy();
    v36 = v26;
    v7 = v40;
    MEMORY[0x25308E2B0](v36, -1, -1);
    MEMORY[0x25308E2B0](v24, -1, -1);
  }

  else
  {

    sub_251BED51C(v18);
  }

  LOBYTE(v46) = 2;
  v47 = 0;
  v48 = 0;
  v49 = 1;
  v50 = 0;
  v51 = 0;
  sub_251C70A24();
  sub_251AA98B0(0, &qword_2813E1C30);
  sub_251C709F4();
  (*(v44 + 8))(v10, v7);
  sub_251BED6B4();
  v37 = v43;
  v38 = sub_251C70A94();
  result = (*(v42 + 8))(v14, v37);
  *a3 = v38;
  return result;
}

uint64_t sub_251BEB294@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a3;
  sub_251BEDB04();
  v60 = v5;
  v58 = *(v5 - 8);
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BEDBA0();
  v61 = v8;
  v59 = *(v8 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v18 = *a1;
  v17 = a1[1];
  v19 = *(a1 + 2);
  v66 = *(a1 + 1);
  v67 = v19;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v20 = sub_251C70764();
  __swift_project_value_buffer(v20, qword_2813E8130);
  sub_251BED004(a2, v16);
  v21 = sub_251C70744();
  v22 = sub_251C713C4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v65[0] = v24;
    *v23 = 136315138;
    v25 = &v16[*(v11 + 36)];
    v26 = *v25;
    v27 = v25[1];

    sub_251BED51C(v16);
    v28 = sub_251B10780(v26, v27, v65);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_251A6C000, v21, v22, "%s Retrieving HKClinicalAccount list", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x25308E2B0](v24, -1, -1);
    MEMORY[0x25308E2B0](v23, -1, -1);
  }

  else
  {

    sub_251BED51C(v16);
  }

  v29 = __swift_project_boxed_opaque_existential_1(a2, a2[3])[2];
  v65[3] = &type metadata for ClinicalSharingAccountStore;
  v65[4] = &off_2863F67B8;
  v65[0] = v29;
  __swift_project_boxed_opaque_existential_1(v65, &type metadata for ClinicalSharingAccountStore);
  v30 = off_2863F67E8;
  v31 = v29;
  v64 = v30();
  v32 = v17;
  v68 = v17;
  v69[0] = v67;
  v33 = swift_allocObject();
  *(v33 + 16) = v18;
  *(v33 + 24) = v17;
  v34 = v67;
  *(v33 + 32) = v66;
  *(v33 + 48) = v34;
  v52 = sub_251AC5BAC;
  v51 = MEMORY[0x277D83D88];
  sub_251BED580(&v68, v63, &qword_2813E1E20, sub_251AC5BAC, MEMORY[0x277D83D88], sub_251BED5F4);
  v35 = MEMORY[0x277D83D88];
  sub_251BED580(v69, v63, &qword_2813E1FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_251BED664);
  sub_251AA8E00();
  v50 = v18;
  v36 = a2;
  sub_251BEDC80(&qword_2813E2118, sub_251AA8E00);
  v37 = v55;
  sub_251C70AE4();

  __swift_destroy_boxed_opaque_existential_1(v65);
  v38 = v56;
  sub_251BED004(v36, v56);
  v39 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v40 = (v54 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_251BED354(v38, v41 + v39, type metadata accessor for ClinicalSharingOnboardingSubmissionTask);
  v42 = v41 + v40;
  *v42 = v50;
  *(v42 + 8) = v32;
  v43 = v67;
  *(v42 + 16) = v66;
  *(v42 + 32) = v43;
  sub_251BED580(&v68, v65, &qword_2813E1E20, v52, v51, sub_251BED5F4);
  sub_251BED580(v69, v65, &qword_2813E1FA0, MEMORY[0x277D837D0], v35, sub_251BED664);
  sub_251BEA978(0, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
  sub_251BEDC80(&qword_27F47C118, sub_251BEDB04);
  sub_251BEAA7C();
  v44 = v57;
  v45 = v60;
  sub_251C70B04();

  (*(v58 + 8))(v37, v45);
  sub_251BEDC80(&qword_27F47C120, sub_251BEDBA0);
  v46 = v61;
  v47 = sub_251C70A94();
  result = (*(v59 + 8))(v44, v46);
  *v62 = v47;
  return result;
}

uint64_t sub_251BEB9E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  *a3 = *a2;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v7;
  *(a3 + 40) = v6;
}

uint64_t sub_251BEBA38@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a3;
  sub_251BED730(0, &qword_27F47C0E8, &qword_2813E20B8, MEMORY[0x277D83B88], sub_251B45A10);
  v60 = v5;
  v58 = *(v5 - 8);
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v49 - v7;
  sub_251BED7C0();
  v61 = v8;
  v59 = *(v8 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v17 = a1[1];
  v63 = *a1;
  v18 = *(a1 + 2);
  v66 = *(a1 + 1);
  v67 = v18;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v19 = sub_251C70764();
  __swift_project_value_buffer(v19, qword_2813E8130);
  sub_251BED004(a2, v16);
  v20 = sub_251C70744();
  v21 = sub_251C713C4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v69[0] = v23;
    *v22 = 136315138;
    v24 = &v16[*(v11 + 36)];
    v25 = *v24;
    v26 = v24[1];

    sub_251BED51C(v16);
    v27 = sub_251B10780(v25, v26, v69);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_251A6C000, v20, v21, "%s Retrieving Age", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x25308E2B0](v23, -1, -1);
    MEMORY[0x25308E2B0](v22, -1, -1);
  }

  else
  {

    sub_251BED51C(v16);
  }

  v28 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v29 = *(v11 + 28);
  v30 = *v28;
  v31 = sub_251B3F5AC(a2 + v29);

  v65 = v31;
  v32 = v17;
  v68 = v17;
  *v69 = v67;
  v33 = swift_allocObject();
  *(v33 + 16) = v63;
  *(v33 + 24) = v17;
  v34 = v67;
  *(v33 + 32) = v66;
  *(v33 + 48) = v34;
  v52 = sub_251AC5BAC;
  v51 = MEMORY[0x277D83D88];
  v50 = sub_251BED5F4;
  sub_251BED580(&v68, v64, &qword_2813E1E20, sub_251AC5BAC, MEMORY[0x277D83D88], sub_251BED5F4);
  v35 = MEMORY[0x277D83D88];
  sub_251BED580(v69, v64, &qword_2813E1FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_251BED664);
  v36 = MEMORY[0x277CBCD88];
  sub_251BEA978(0, &qword_2813E20B8, MEMORY[0x277D83B88], MEMORY[0x277CBCD88]);
  sub_251B45A10();
  v37 = v55;
  sub_251C70AE4();

  v38 = v56;
  sub_251BED004(a2, v56);
  v39 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v40 = (v54 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_251BED354(v38, v41 + v39, type metadata accessor for ClinicalSharingOnboardingSubmissionTask);
  v42 = v41 + v40;
  *v42 = v63;
  *(v42 + 8) = v32;
  v43 = v67;
  *(v42 + 16) = v66;
  *(v42 + 32) = v43;
  sub_251BED580(&v68, v64, &qword_2813E1E20, v52, v51, v50);
  sub_251BED580(v69, v64, &qword_2813E1FA0, MEMORY[0x277D837D0], v35, sub_251BED664);
  sub_251BEA978(0, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, v36);
  sub_251BED89C();
  sub_251BEAA7C();
  v44 = v57;
  v45 = v60;
  sub_251C70B04();

  (*(v58 + 8))(v37, v45);
  sub_251BEDC80(&qword_27F47C100, sub_251BED7C0);
  v46 = v61;
  v47 = sub_251C70A94();
  result = (*(v59 + 8))(v44, v46);
  *v62 = v47;
  return result;
}

uint64_t sub_251BEC110@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  *a3 = *a2;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = v6;
  *(a3 + 40) = v5;
}

uint64_t sub_251BEC164@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a3;
  sub_251BED730(0, &qword_27F47C0B0, &qword_2813E2160, MEMORY[0x277D837D0], sub_251B4576C);
  v63 = v5;
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v58 = &v51 - v7;
  sub_251BED3BC();
  v64 = v8;
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask();
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = *(a1 + 2);
  v68 = *(a1 + 1);
  v69 = v19;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v20 = sub_251C70764();
  __swift_project_value_buffer(v20, qword_2813E8130);
  sub_251BED004(a2, v16);
  v21 = sub_251C70744();
  v22 = sub_251C713C4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v71[0] = v24;
    *v23 = 136315138;
    v25 = &v16[*(v11 + 36)];
    v26 = *v25;
    v27 = v25[1];

    sub_251BED51C(v16);
    v28 = sub_251B10780(v26, v27, v71);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_251A6C000, v21, v22, "%s Retrieving Sex", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x25308E2B0](v24, -1, -1);
    MEMORY[0x25308E2B0](v23, -1, -1);
  }

  else
  {

    sub_251BED51C(v16);
  }

  v29 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v30 = sub_251B3F978();
  v55 = a2;
  v31 = v30;

  v67 = v31;
  v32 = v18;
  v70 = v18;
  *v71 = v69;
  v33 = swift_allocObject();
  *(v33 + 16) = v17;
  *(v33 + 24) = v18;
  v34 = v69;
  *(v33 + 32) = v68;
  *(v33 + 48) = v34;
  v54 = sub_251AC5BAC;
  v53 = MEMORY[0x277D83D88];
  v52 = sub_251BED5F4;
  sub_251BED580(&v70, v66, &qword_2813E1E20, sub_251AC5BAC, MEMORY[0x277D83D88], sub_251BED5F4);
  v35 = MEMORY[0x277D837D0];
  v36 = MEMORY[0x277D83D88];
  sub_251BED580(v71, v66, &qword_2813E1FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_251BED664);
  v37 = MEMORY[0x277CBCD88];
  sub_251BEA978(0, &qword_2813E2160, v35, MEMORY[0x277CBCD88]);
  v38 = v17;
  sub_251B4576C();
  v39 = v58;
  sub_251C70AE4();

  v40 = v59;
  sub_251BED004(v55, v59);
  v41 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v42 = (v57 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_251BED354(v40, v43 + v41, type metadata accessor for ClinicalSharingOnboardingSubmissionTask);
  v44 = v43 + v42;
  *v44 = v38;
  *(v44 + 8) = v32;
  v45 = v69;
  *(v44 + 16) = v68;
  *(v44 + 32) = v45;
  sub_251BED580(&v70, v66, &qword_2813E1E20, v54, v53, v52);
  sub_251BED580(v71, v66, &qword_2813E1FA0, MEMORY[0x277D837D0], v36, sub_251BED664);
  sub_251BEA978(0, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, v37);
  sub_251BED498();
  sub_251BEAA7C();
  v46 = v60;
  v47 = v63;
  sub_251C70B04();

  (*(v61 + 8))(v39, v47);
  sub_251BEDC80(&qword_27F47C0C8, sub_251BED3BC);
  v48 = v64;
  v49 = sub_251C70A94();
  result = (*(v62 + 8))(v46, v48);
  *v65 = v49;
  return result;
}

uint64_t sub_251BEC82C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 24);
  *a3 = *a2;
  *(a3 + 8) = *(a2 + 8);
  *(a3 + 24) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
}

uint64_t sub_251BEC884@<X0>(void **a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, const char *a4@<X3>, uint64_t *a5@<X8>)
{
  v48 = a4;
  sub_251BED664(0, &qword_27F47C0D0, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCE78]);
  v10 = v9;
  v52 = *(v9 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - v12;
  sub_251BEA978(0, &qword_27F47C0D8, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCF38]);
  v51 = v13;
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - v15;
  v17 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v22 = sub_251C70764();
  __swift_project_value_buffer(v22, qword_2813E8130);
  sub_251BED004(a2, v20);
  v23 = v21;
  v24 = sub_251C70744();
  v25 = sub_251C713C4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v46 = v10;
    v27 = v26;
    v28 = swift_slowAlloc();
    *&v57 = v28;
    *v27 = 136315394;
    v29 = &v20[*(v17 + 36)];
    v47 = a5;
    v30 = *v29;
    v31 = v29[1];

    sub_251BED51C(v20);
    v32 = sub_251B10780(v30, v31, &v57);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    *&v54 = v21;
    v33 = v21;
    sub_251AA98B0(0, &qword_2813E1C30);
    sub_251C719F4();
    v34 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v35 = sub_251C70F74();
    v37 = sub_251B10780(v35, v36, &v57);

    *(v27 + 14) = v37;
    _os_log_impl(&dword_251A6C000, v24, v25, v48, v27, 0x16u);
    a5 = v47;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v28, -1, -1);
    v38 = v27;
    v10 = v46;
    MEMORY[0x25308E2B0](v38, -1, -1);
  }

  else
  {

    sub_251BED51C(v20);
  }

  v58 = *(a3 + 1);
  v39 = a3[1];
  v40 = a3[2];
  v54 = *a3;
  v55 = v39;
  v56 = a3[2];
  v57 = v40;
  sub_251BED580(&v58, v53, &qword_2813E1E20, sub_251AC5BAC, MEMORY[0x277D83D88], sub_251BED5F4);
  sub_251BED580(&v57, v53, &qword_2813E1FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_251BED664);
  v41 = v50;
  sub_251C70A24();
  sub_251AA98B0(0, &qword_2813E1C30);
  sub_251C709F4();
  (*(v52 + 8))(v41, v10);
  sub_251BED6B4();
  v42 = v51;
  v43 = sub_251C70A94();
  result = (*(v49 + 8))(v16, v42);
  *a5 = v43;
  return result;
}

uint64_t sub_251BECDAC@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ClinicalSharingOnboardingMetric();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C70014();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a1;
  v15 = *(a1 + 1);
  v34 = *(a1 + 2);
  v35 = v15;
  v33 = a1[24];
  v16 = *(a1 + 4);
  v17 = *(a1 + 5);
  v18 = *(a2 + 6);
  v31 = *(a2 + 5);
  v32 = v16;
  v19 = *(a2 + 7);
  v20 = *(a2 + 8);
  v29 = v17;
  v30 = v19;
  v21 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask();
  (*(v11 + 16))(v14, &a2[*(v21 + 28)], v10);
  LOBYTE(a2) = a2[*(v21 + 32)];
  a3[3] = v6;
  a3[4] = &off_2863FED40;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v22 = &v9[v6[12]];
  *v22 = 0xD000000000000031;
  *(v22 + 1) = 0x8000000251C90830;
  v23 = v35;
  *v9 = v34;
  v9[8] = v33;
  v24 = v31;
  v25 = v29;
  *(v9 + 2) = v32;
  *(v9 + 3) = v25;
  *(v9 + 4) = v24;
  *(v9 + 5) = v18;
  *(v9 + 6) = v30;
  *(v9 + 7) = v20;
  *(v9 + 8) = v23;
  v9[v6[10]] = a2;
  v9[v6[11]] = v36 & 1;
  (*(v11 + 32))(&v9[v6[9]], v14, v10);
  sub_251BED354(v9, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingOnboardingMetric);
}

uint64_t sub_251BED004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251BED068@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingOnboardingSubmissionTask() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251BEAE0C(a1, v6, a2);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = (type metadata accessor for ClinicalSharingOnboardingSubmissionTask() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  v5 = *(v0 + v3 + 48);

  v6 = *(v0 + v3 + 64);

  v7 = v1[9];
  v8 = sub_251C70014();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[11] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251BED240(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ClinicalSharingOnboardingSubmissionTask() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_251BED2D4@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingOnboardingSubmissionTask() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_251BECDAC(a1, v6, a2);
}

uint64_t sub_251BED354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251BED3BC()
{
  if (!qword_27F47C0B8)
  {
    sub_251BED730(255, &qword_27F47C0B0, &qword_2813E2160, MEMORY[0x277D837D0], sub_251B4576C);
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251BED498();
    sub_251BEAA7C();
    v0 = sub_251C70854();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C0B8);
    }
  }
}

unint64_t sub_251BED498()
{
  result = qword_27F47C0C0;
  if (!qword_27F47C0C0)
  {
    sub_251BED730(255, &qword_27F47C0B0, &qword_2813E2160, MEMORY[0x277D837D0], sub_251B4576C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C0C0);
  }

  return result;
}

uint64_t sub_251BED51C(uint64_t a1)
{
  v2 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251BED580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_251BED5F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_251BED664(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_251BED6B4()
{
  result = qword_27F47C0E0;
  if (!qword_27F47C0E0)
  {
    sub_251BEA978(255, &qword_27F47C0D8, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C0E0);
  }

  return result;
}

void sub_251BED730(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_251BEA978(255, a3, a4, MEMORY[0x277CBCD88]);
    a5();
    v7 = sub_251C70804();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_251BED7C0()
{
  if (!qword_27F47C0F0)
  {
    sub_251BED730(255, &qword_27F47C0E8, &qword_2813E20B8, MEMORY[0x277D83B88], sub_251B45A10);
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251BED89C();
    sub_251BEAA7C();
    v0 = sub_251C70854();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C0F0);
    }
  }
}

unint64_t sub_251BED89C()
{
  result = qword_27F47C0F8;
  if (!qword_27F47C0F8)
  {
    sub_251BED730(255, &qword_27F47C0E8, &qword_2813E20B8, MEMORY[0x277D83B88], sub_251B45A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C0F8);
  }

  return result;
}

uint64_t objectdestroy_20Tm_0()
{
  v1 = (type metadata accessor for ClinicalSharingOnboardingSubmissionTask() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  v6 = *(v5 + 48);

  v7 = *(v5 + 64);

  v8 = v1[9];
  v9 = sub_251C70014();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v5 + v1[11] + 8);

  v11 = *(v0 + v4 + 8);

  v12 = *(v0 + v4 + 40);

  return MEMORY[0x2821FE8E8](v0, v4 + 48, v2 | 7);
}

uint64_t sub_251BEDA5C@<X0>(void **a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(type metadata accessor for ClinicalSharingOnboardingSubmissionTask() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_251BEC884(a1, v3 + v8, (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

void sub_251BEDB04()
{
  if (!qword_27F47C108)
  {
    sub_251AA8E00();
    sub_251BEDC80(&qword_2813E2118, sub_251AA8E00);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C108);
    }
  }
}

void sub_251BEDBA0()
{
  if (!qword_27F47C110)
  {
    sub_251BEDB04();
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251BEDC80(&qword_27F47C118, sub_251BEDB04);
    sub_251BEAA7C();
    v0 = sub_251C70854();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C110);
    }
  }
}

uint64_t sub_251BEDC80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251BEDD1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_251BEDD78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_251BEDE10()
{
  result = sub_251AA98B0(319, qword_2813E7418);
  if (v1 <= 0x3F)
  {
    result = sub_251C70014();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251BEDEC4@<X0>(uint64_t a1@<X8>)
{
  sub_251ABCCD4(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    if (qword_27F478930 != -1)
    {
      swift_once();
    }

    v7 = qword_27F4A2878;
    v8 = sub_251C70EE4();
    v9 = [v7 dateFromString_];

    if (v9)
    {
      sub_251C6FFE4();

      v10 = sub_251C70014();
      (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    }

    else
    {
      v14 = sub_251C70014();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    }

    return sub_251AC55A0(v5, a1);
  }

  else
  {
    v11 = sub_251C70014();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

id sub_251BEE0B4()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  qword_27F4A2878 = result;
  return result;
}

uint64_t sub_251BEE0F8(uint64_t a1, void *a2)
{
  sub_251BEF55C();
  v21 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A823B4(a1 + 16, v23);
  v9 = *__swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v10 = objc_allocWithZone(MEMORY[0x277D62528]);
  v11 = v9;
  v12 = sub_251C70EE4();
  v13 = [v10 initWithIdentifier:v12 healthStore:v11];

  v14 = sub_251AD8F3C();
  v22 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_251BEF608();
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251BEF680(&qword_27F47C148, sub_251BEF608);

  v16 = a2;
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_251BEF680(&qword_27F47C150, sub_251BEF55C);
  v17 = v21;
  v18 = sub_251C70A94();
  (*(v5 + 8))(v8, v17);
  return v18;
}

uint64_t sub_251BEE36C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v32[0] = a4;
  v7 = sub_251C702E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BEF6C8(0, &qword_27F4793C8, type metadata accessor for PBTypedData);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v32 - v14;
  v16 = type metadata accessor for PBTypedData(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    goto LABEL_4;
  }

  v21 = *a1;
  sub_251BEE750(v21, a2, a3, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_251BEF71C(v15, &qword_27F4793C8, type metadata accessor for PBTypedData);
LABEL_4:
    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    return (*(*(Output - 8) + 56))(v32[0], 1, 1, Output);
  }

  sub_251BEF778(v15, v20, type metadata accessor for PBTypedData);
  v24 = *(a2 + 56);
  v25 = sub_251BF24A4(a3, v11);
  MEMORY[0x28223BE20](v25);
  v32[-2] = v11;
  v26 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, &v32[-4], v24);
  (*(v8 + 8))(v11, v7);
  if (*(v26 + 16))
  {
    v27 = v32[0];
    sub_251BEF7E0(v20, v32[0], type metadata accessor for PBTypedData);
    v28 = sub_251BFAE40(v26);

    v29 = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(v27 + *(v29 + 20)) = v28;
    v30 = (v27 + *(v29 + 24));
    *v30 = 0;
    v30[1] = 0;
    (*(*(v29 - 8) + 56))(v27, 0, 1, v29);
  }

  else
  {

    v31 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v31 - 8) + 56))(v32[0], 1, 1, v31);
  }

  return sub_251BEF848(v20, type metadata accessor for PBTypedData);
}

uint64_t sub_251BEE750@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v65 = a2;
  v66 = a1;
  v5 = sub_251C70014();
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v60 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v50 - v9;
  sub_251BEF6C8(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v50 - v12;
  v13 = type metadata accessor for PBDateRange(0);
  v67 = *(v13 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v13);
  v62 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PBTypedData(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BEF6C8(0, &qword_27F479090, type metadata accessor for PBSleepSummary);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v50 - v23;
  v25 = type metadata accessor for PBSleepSummary(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v58 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v50 - v30;
  sub_251BEEDE0(v66, v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_251BEF71C(v24, &qword_27F479090, type metadata accessor for PBSleepSummary);
    v32 = 1;
  }

  else
  {
    v54 = v31;
    v55 = type metadata accessor for PBSleepSummary;
    sub_251BEF778(v24, v31, type metadata accessor for PBSleepSummary);
    *v20 = 0;
    v20[8] = 1;
    v33 = v16[5];
    v53 = v33;
    v56 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v34 = *(v56 - 8);
    v57 = *(v34 + 56);
    v66 = (v34 + 56);
    v57(&v20[v33], 1, 1, v56);
    v35 = &v20[v16[6]];
    sub_251C703A4();
    v36 = v16[7];
    v37 = *(v67 + 56);
    v67 += 56;
    v50 = v36;
    v51 = v37;
    v37(&v20[v36], 1, 1, v13);
    v52 = a4;
    v38 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date;
    v39 = *(v61 + 16);
    v61 = v13;
    v40 = v65;
    v39(v59, v65 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v5);
    v39(v60, v40 + v38, v5);
    v41 = v63;
    sub_251C6FA94();
    v42 = sub_251C6FAE4();
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    v43 = v62;
    sub_251BFC468(5, 1, v41, v40);
    sub_251BEF71C(v41, &qword_27F478D90, MEMORY[0x277CC88A8]);
    v44 = v50;
    sub_251BEF71C(&v20[v50], qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251BEF778(v43, &v20[v44], type metadata accessor for PBDateRange);
    v51(&v20[v44], 0, 1, v61);
    *v20 = 113;
    v20[8] = 1;
    v45 = v55;
    v46 = v58;
    sub_251BEF778(v54, v58, v55);
    v47 = v53;
    sub_251BEF71C(&v20[v53], qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251BEF778(v46, &v20[v47], v45);
    v48 = v56;
    swift_storeEnumTagMultiPayload();
    v57(&v20[v47], 0, 1, v48);
    a4 = v52;
    sub_251BEF778(v20, v52, type metadata accessor for PBTypedData);
    v32 = 0;
  }

  return (*(v17 + 56))(a4, v32, 1, v16);
}

uint64_t sub_251BEEDE0@<X0>(void *a1@<X0>, unint64_t a2@<X8>)
{
  v75 = sub_251C6FC94();
  v4 = *(v75 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v75);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v63 - v9;
  v11 = type metadata accessor for PBSleepSummary.Schedule(0);
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = &v63 - v15;
  v16 = type metadata accessor for PBSleepSummary(0);
  v66 = *(v16 - 1);
  v17 = *(v66 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isEnabled])
  {
    v67 = v8;
    v20 = (v19 + *(v16 + 6));
    sub_251C703A4();
    [a1 sleepDurationGoal];
    *&v21 = v21 / 60.0;
    *(v19 + 8) = LODWORD(v21);
    v22 = [a1 occurrences];
    sub_251A8223C(0, &qword_27F47C158, 0x277D62508);
    v23 = sub_251C71154();

    v68 = v23;
    if (v23 >> 62)
    {
      goto LABEL_77;
    }

    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v63 = v19;
    v64 = v16;
    v65 = a2;
    if (v24)
    {
      v16 = v24;
      v19 = 0;
      a2 = v68;
      v25 = v68 & 0xC000000000000001;
      v26 = v68 & 0xFFFFFFFFFFFFFF8;
      v73 = (v4 + 1);
      v4 = MEMORY[0x277D84F90];
      v27 = &selRef_dateComponentsValue;
      while (1)
      {
        if (v25)
        {
          v28 = MEMORY[0x25308D460](v19, a2);
        }

        else
        {
          if (v19 >= *(v26 + 16))
          {
            goto LABEL_66;
          }

          v28 = *(a2 + 8 * v19 + 32);
        }

        v29 = v28;
        v30 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          v24 = sub_251C717F4();
          goto LABEL_4;
        }

        if (([v28 v27[218]] & 1) == 0)
        {
          break;
        }

LABEL_7:
        ++v19;
        if (v30 == v16)
        {
          goto LABEL_64;
        }
      }

      v31 = v76;
      *(v76 + 3) = 0;
      *v31 = 0;
      v32 = v31 + *(v70 + 52);
      sub_251C703A4();
      v33 = [v29 bedtimeComponents];
      sub_251C6FBD4();

      v34 = sub_251C6FC04();
      if (v35)
      {
        v36 = 0;
      }

      else
      {
        v36 = v34;
      }

      a2 = 60 * v36;
      if ((v36 * 60) >> 64 != (60 * v36) >> 63)
      {
        goto LABEL_67;
      }

      v37 = sub_251C6FC44();
      if (v38)
      {
        v39 = 0;
      }

      else
      {
        v39 = v37;
      }

      v40 = __OFADD__(a2, v39);
      a2 += v39;
      if (v40)
      {
        goto LABEL_68;
      }

      v41 = sub_251C6FC64() / 60;
      if (v42)
      {
        v41 = 0;
      }

      v40 = __OFADD__(a2, v41);
      a2 += v41;
      if (v40)
      {
        goto LABEL_69;
      }

      v72 = (v19 + 1);
      v43 = v16;
      v16 = *v73;
      (*v73)(v10, v75);
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      if (HIDWORD(a2))
      {
        goto LABEL_71;
      }

      v44 = v26;
      v71 = v4;
      v45 = v25;
      v46 = v10;
      *(v76 + 8) = a2;
      v47 = [v29 wakeUpComponents];
      v4 = v67;
      sub_251C6FBD4();

      v10 = v4;
      v48 = sub_251C6FC04();
      if (v49)
      {
        v50 = 0;
      }

      else
      {
        v50 = v48;
      }

      a2 = 60 * v50;
      if ((v50 * 60) >> 64 != (60 * v50) >> 63)
      {
        goto LABEL_72;
      }

      v10 = v4;
      v51 = sub_251C6FC44();
      if (v52)
      {
        v53 = 0;
      }

      else
      {
        v53 = v51;
      }

      v40 = __OFADD__(a2, v53);
      a2 += v53;
      if (v40)
      {
        goto LABEL_73;
      }

      v54 = sub_251C6FC64() / 60;
      if (v55)
      {
        v54 = 0;
      }

      v10 = a2 + v54;
      if (__OFADD__(a2, v54))
      {
        goto LABEL_74;
      }

      (v16)(v4, v75);
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }

      if (HIDWORD(v10))
      {
        goto LABEL_76;
      }

      *(v76 + 12) = v10;
      v56 = [v29 weekdays];

      if (v56)
      {
        *(v76 + 1) = 1;
      }

      a2 = v68;
      v16 = v43;
      v10 = v46;
      if ((v56 & 2) != 0)
      {
        *(v76 + 2) = 1;
        v25 = v45;
        if ((v56 & 4) == 0)
        {
LABEL_43:
          v26 = v44;
          if ((v56 & 8) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v25 = v45;
        if ((v56 & 4) == 0)
        {
          goto LABEL_43;
        }
      }

      *(v76 + 3) = 1;
      v26 = v44;
      if ((v56 & 8) == 0)
      {
LABEL_44:
        v27 = &selRef_dateComponentsValue;
        if ((v56 & 0x10) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_56;
      }

LABEL_55:
      *(v76 + 4) = 1;
      v27 = &selRef_dateComponentsValue;
      if ((v56 & 0x10) == 0)
      {
LABEL_45:
        if ((v56 & 0x20) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_57;
      }

LABEL_56:
      *(v76 + 5) = 1;
      if ((v56 & 0x20) == 0)
      {
LABEL_46:
        if ((v56 & 0x40) == 0)
        {
LABEL_48:
          sub_251BEF778(v76, v74, type metadata accessor for PBSleepSummary.Schedule);
          v4 = v71;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_251C3982C(0, v4[2] + 1, 1, v4);
          }

          v58 = v4[2];
          v57 = v4[3];
          if (v58 >= v57 >> 1)
          {
            v4 = sub_251C3982C(v57 > 1, v58 + 1, 1, v4);
          }

          v4[2] = v58 + 1;
          sub_251BEF778(v74, v4 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v58, type metadata accessor for PBSleepSummary.Schedule);
          v30 = v72;
          goto LABEL_7;
        }

LABEL_47:
        *v76 = 1;
        goto LABEL_48;
      }

LABEL_57:
      *(v76 + 6) = 1;
      if ((v56 & 0x40) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v4 = MEMORY[0x277D84F90];
LABEL_64:

    v61 = v63;
    *v63 = v4;
    v62 = v65;
    sub_251BEF7E0(v61, v65, type metadata accessor for PBSleepSummary);
    (*(v66 + 56))(v62, 0, 1, v64);
    return sub_251BEF848(v61, type metadata accessor for PBSleepSummary);
  }

  else
  {
    v59 = *(v66 + 56);

    return v59(a2, 1, 1, v16);
  }
}

void sub_251BEF55C()
{
  if (!qword_27F47C138)
  {
    sub_251BEF608();
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251BEF680(&qword_27F47C148, sub_251BEF608);
    v0 = sub_251C70784();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C138);
    }
  }
}

void sub_251BEF608()
{
  if (!qword_27F47C140)
  {
    sub_251AD9254(255);
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47C140);
    }
  }
}

uint64_t sub_251BEF680(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251BEF6C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251BEF71C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251BEF6C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BEF778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BEF7E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BEF848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251BEF8A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_251BEF8F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_251BEF948(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_251C719D4()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_251C719D4()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

id sub_251BEF9E4(void *a1)
{
  v2 = type metadata accessor for VerifiableHealthRecordsParsingServiceServer();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC19HealthRecordsDaemon43VerifiableHealthRecordsParsingServiceServer_client] = a1;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = a1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_251BEFA7C()
{
  sub_251B3F554();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_251C74800;
  if (qword_2813E74B8 != -1)
  {
    swift_once();
  }

  v1 = qword_2813E81A0;
  v2 = *algn_2813E81A8;
  v3 = type metadata accessor for DefaultDaemonXPCService();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_identifier];
  *v5 = v1;
  v5[1] = v2;
  v6 = &v4[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_requiredEntitlementOverride];
  *v6 = 0xD000000000000041;
  *(v6 + 1) = 0x8000000251C908B0;
  v7 = objc_allocWithZone(MEMORY[0x277D10BF0]);
  swift_bridgeObjectRetain_n();
  v8 = sub_251C70EE4();

  v9 = [v7 initWithLabel_];

  *&v4[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener] = v9;
  v10 = &v4[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_serverGenerator];
  *v10 = sub_251BEF9E4;
  v10[1] = 0;
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  *(v0 + 56) = v3;
  *(v0 + 64) = &off_2863F5E58;
  *(v0 + 32) = v11;
  return v0;
}

unint64_t sub_251BEFC0C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, __int16 a5)
{
  sub_251C716A4();

  MEMORY[0x25308CDA0](a1, a2);
  if (a3)
  {
    v9 = a3;
    [v9 code];
    v10 = sub_251C719A4();
    MEMORY[0x25308CDA0](v10);

    MEMORY[0x25308CDA0](45, 0xE100000000000000);
  }

  if ((a5 & 0x100) == 0)
  {
    v11 = sub_251C70F74();
    MEMORY[0x25308CDA0](v11);

    MEMORY[0x25308CDA0](45, 0xE100000000000000);
  }

  return 0xD000000000000011;
}

uint64_t sub_251BEFEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t *, char *)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v12 = sub_251C702E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(*v6 + 56);

  sub_251BF20BC(a3, v16);
  v29 = v16;
  v18 = sub_251BF1DA0(MEMORY[0x277D84F90], a4, v28, v17);

  (*(v13 + 8))(v16, v12);
  if (*(v18 + 16))
  {
    sub_251BFB8EC(a1, a6, type metadata accessor for PBTypedData);
    v19 = sub_251BFAE40(v18);

    if (a2)
    {
      v20 = *(v6 + *(v27(0) + 24));
      v21 = v20;
    }

    else
    {
      v20 = 0;
    }

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a6 + *(Output + 20)) = v19;
    v25 = (a6 + *(Output + 24));
    *v25 = v20;
    v25[1] = a2;
    (*(*(Output - 8) + 56))(a6, 0, 1, Output);
  }

  else
  {
    v22 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v22 - 8) + 56))(a6, 1, 1, v22);
  }
}

uint64_t sub_251BF00E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t *, char *)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v12 = sub_251C702E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(*v6 + 56);

  sub_251BF266C(a3, v16);
  v29 = v16;
  v18 = sub_251BF1DA0(MEMORY[0x277D84F90], a4, v28, v17);

  (*(v13 + 8))(v16, v12);
  if (*(v18 + 16))
  {
    sub_251BFB8EC(a1, a6, type metadata accessor for PBTypedData);
    v19 = sub_251BFAE40(v18);

    if (a2)
    {
      v20 = *(v6 + *(v27(0) + 32));
      v21 = v20;
    }

    else
    {
      v20 = 0;
    }

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a6 + *(Output + 20)) = v19;
    v25 = (a6 + *(Output + 24));
    *v25 = v20;
    v25[1] = a2;
    (*(*(Output - 8) + 56))(a6, 0, 1, Output);
  }

  else
  {
    v22 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v22 - 8) + 56))(a6, 1, 1, v22);
  }
}

uint64_t sub_251BF0320@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_251C70014();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277CC88A8];
  sub_251BFB6EC(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - v15;
  v17 = sub_251C6FAE4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  v22 = a4 + *(type metadata accessor for PBDateRange(0) + 28);
  sub_251C703A4();
  *(a4 + 32) = a1;
  *(a4 + 40) = a2 & 1;
  sub_251BFBA24(a3, v16, &qword_27F478D90, v12);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_251BFB954(v16, &qword_27F478D90, MEMORY[0x277CC88A8]);
  }

  (*(v18 + 32))(v21, v16, v17);
  sub_251C6FAB4();
  v37 = *v38;
  v38 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter;
  v24 = *(v37 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v25 = sub_251C6FF94();
  v26 = [v24 stringFromDate_];

  v27 = sub_251C70F14();
  v29 = v28;

  v30 = v40;
  v39 = *(v39 + 8);
  (v39)(v11, v40);
  *a4 = v27;
  *(a4 + 8) = v29;
  sub_251C6FA84();
  v31 = *(v38 + v37);
  v32 = sub_251C6FF94();
  v33 = [v31 stringFromDate_];

  v34 = sub_251C70F14();
  v36 = v35;

  (v39)(v11, v30);
  result = (*(v18 + 8))(v21, v17);
  *(a4 + 16) = v34;
  *(a4 + 24) = v36;
  return result;
}

uint64_t sub_251BF06C4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a4;
  v9 = sub_251C70014();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277CC88A8];
  sub_251BFB6EC(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - v16;
  v18 = sub_251C6FAE4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = 0;
  *(a5 + 8) = 0xE000000000000000;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0xE000000000000000;
  v23 = a5 + *(type metadata accessor for PBDateRange(0) + 28);
  sub_251C703A4();
  *(a5 + 32) = a1;
  *(a5 + 40) = a2 & 1;
  sub_251BFBA24(a3, v17, &qword_27F478D90, v13);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_251BFB954(v17, &qword_27F478D90, MEMORY[0x277CC88A8]);
  }

  (*(v19 + 32))(v22, v17, v18);
  sub_251C6FAB4();
  v25 = *(v38 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v26 = sub_251C6FF94();
  v27 = [v25 stringFromDate_];

  v28 = sub_251C70F14();
  v30 = v29;

  v38 = v18;
  v31 = v40;
  v39 = *(v39 + 8);
  (v39)(v12, v40);
  *a5 = v28;
  *(a5 + 8) = v30;
  sub_251C6FA84();
  v32 = sub_251C6FF94();
  v33 = [v25 stringFromDate_];

  v34 = sub_251C70F14();
  v36 = v35;

  (v39)(v12, v31);
  result = (*(v19 + 8))(v22, v38);
  *(a5 + 16) = v34;
  *(a5 + 24) = v36;
  return result;
}

uint64_t sub_251BF0A40@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_251C70014();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277CC88A8];
  sub_251BFB6EC(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - v15;
  v17 = sub_251C6FAE4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  v22 = a4 + *(type metadata accessor for PBDateRange(0) + 28);
  sub_251C703A4();
  *(a4 + 32) = a1;
  *(a4 + 40) = a2 & 1;
  sub_251BFBA24(a3, v16, &qword_27F478D90, v12);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_251BFB954(v16, &qword_27F478D90, MEMORY[0x277CC88A8]);
  }

  (*(v18 + 32))(v21, v16, v17);
  sub_251C6FAB4();
  v37 = *(v38 + *(type metadata accessor for ClinicalSharingCycleTrackingQuery() + 20));
  v38 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter;
  v24 = *(v37 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v25 = sub_251C6FF94();
  v26 = [v24 stringFromDate_];

  v27 = sub_251C70F14();
  v29 = v28;

  v30 = v40;
  v39 = *(v39 + 8);
  (v39)(v11, v40);
  *a4 = v27;
  *(a4 + 8) = v29;
  sub_251C6FA84();
  v31 = *(v37 + v38);
  v32 = sub_251C6FF94();
  v33 = [v31 stringFromDate_];

  v34 = sub_251C70F14();
  v36 = v35;

  (v39)(v11, v30);
  result = (*(v18 + 8))(v21, v17);
  *(a4 + 16) = v34;
  *(a4 + 24) = v36;
  return result;
}

uint64_t sub_251BF0DF0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_251C70014();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277CC88A8];
  sub_251BFB6EC(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - v15;
  v17 = sub_251C6FAE4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  v22 = a4 + *(type metadata accessor for PBDateRange(0) + 28);
  sub_251C703A4();
  *(a4 + 32) = a1;
  *(a4 + 40) = a2 & 1;
  sub_251BFBA24(a3, v16, &qword_27F478D90, v12);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_251BFB954(v16, &qword_27F478D90, MEMORY[0x277CC88A8]);
  }

  (*(v18 + 32))(v21, v16, v17);
  sub_251C6FAB4();
  v24 = *(*v37 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v25 = sub_251C6FF94();
  v26 = [v24 stringFromDate_];

  v27 = sub_251C70F14();
  v29 = v28;

  v37 = v17;
  v30 = v39;
  v38 = *(v38 + 8);
  (v38)(v11, v39);
  *a4 = v27;
  *(a4 + 8) = v29;
  sub_251C6FA84();
  v31 = sub_251C6FF94();
  v32 = [v24 stringFromDate_];

  v33 = sub_251C70F14();
  v35 = v34;

  (v38)(v11, v30);
  result = (*(v18 + 8))(v21, v37);
  *(a4 + 16) = v33;
  *(a4 + 24) = v35;
  return result;
}

uint64_t sub_251BF1170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251BFB6EC(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v33 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - v8;
  v10 = sub_251C6FAE4();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v32 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v29 - v14;
  v17 = v16;
  v38 = *(v16 + 56);
  v39 = v16 + 56;
  result = v38(a2, 1, 1, v10);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = *(v17 + 16);
    v21 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v22 = *(v17 + 72);
    v36 = (v17 + 48);
    v37 = v22;
    v34 = v20;
    v35 = (v17 + 32);
    v23 = v17 + 16;
    v30 = (v23 - 8);
    v31 = v9;
    v29[1] = v23;
    v24 = v32;
    v20(v15, v21, v10);
    while (1)
    {
      sub_251BFBA24(a2, v9, &qword_27F478D90, MEMORY[0x277CC88A8]);
      if ((*v36)(v9, 1, v10) == 1)
      {
        v25 = MEMORY[0x277CC88A8];
        sub_251BFB954(a2, &qword_27F478D90, MEMORY[0x277CC88A8]);
        sub_251BFB954(v9, &qword_27F478D90, v25);
        (*v35)(a2, v15, v10);
        result = v38(a2, 0, 1, v10);
      }

      else
      {
        (*v35)(v24, v9, v10);
        v26 = v33;
        sub_251C6FAD4();
        v27 = *v30;
        (*v30)(v24, v10);
        v27(v15, v10);
        sub_251BFB954(a2, &qword_27F478D90, MEMORY[0x277CC88A8]);
        v38(v26, 0, 1, v10);
        v28 = v26;
        v9 = v31;
        result = sub_251AAFBF8(v28, a2);
      }

      v21 += v37;
      if (!--v19)
      {
        break;
      }

      v34(v15, v21, v10);
    }
  }

  return result;
}

uint64_t sub_251BF1518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  sub_251BFB6EC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for PBDateRange(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v12 = type metadata accessor for PBTypedData(0);
  v13 = v12[5];
  v14 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  v15 = a2 + v12[6];
  sub_251C703A4();
  v16 = v12[7];
  v22 = *(v8 + 56);
  v22(a2 + v16, 1, 1, v7);
  v17 = [objc_opt_self() activitySummaryType];
  v18 = sub_251B3C450();
  v20 = v19;

  if ((v20 & 0x100) == 0)
  {
    *a2 = v18;
    *(a2 + 8) = v20 & 1;
  }

  sub_251BFBA24(v23, v6, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_251BFB954(v6, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BFBAA4(v6, v11, type metadata accessor for PBDateRange);
  sub_251BFB954(a2 + v16, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BFBAA4(v11, a2 + v16, type metadata accessor for PBDateRange);
  return (v22)(a2 + v16, 0, 1, v7);
}

uint64_t sub_251BF1814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251BFB6EC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for PBDateRange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v14 = type metadata accessor for PBTypedData(0);
  v15 = v14[5];
  v16 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
  v17 = a2 + v14[6];
  sub_251C703A4();
  v18 = v14[7];
  v19 = *(v10 + 56);
  v19(a2 + v18, 1, 1, v9);
  v20 = *(v2 + *(type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) + 32));
  v21 = sub_251B3C450();
  if ((v22 & 0x100) == 0)
  {
    *a2 = v21;
    *(a2 + 8) = v22 & 1;
  }

  sub_251BFBA24(a1, v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BFB954(v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BFBAA4(v8, v13, type metadata accessor for PBDateRange);
  sub_251BFB954(a2 + v18, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BFBAA4(v13, a2 + v18, type metadata accessor for PBDateRange);
  return (v19)(a2 + v18, 0, 1, v9);
}

uint64_t sub_251BF1AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251BFB6EC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for PBDateRange(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v14 = type metadata accessor for PBTypedData(0);
  v15 = v14[5];
  v16 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
  v17 = a2 + v14[6];
  sub_251C703A4();
  v18 = v14[7];
  v19 = *(v10 + 56);
  v19(a2 + v18, 1, 1, v9);
  v20 = *(v2 + 16);
  v21 = sub_251B3C450();
  if ((v22 & 0x100) == 0)
  {
    *a2 = v21;
    *(a2 + 8) = v22 & 1;
  }

  sub_251BFBA24(a1, v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_251BFB954(v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BFBAA4(v8, v13, type metadata accessor for PBDateRange);
  sub_251BFB954(a2 + v18, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BFBAA4(v13, a2 + v18, type metadata accessor for PBDateRange);
  return (v19)(a2 + v18, 0, 1, v9);
}

uint64_t sub_251BF1DA0(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  sub_251BFB7E4();
  v26 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v12 = a4 + 64;
  v13 = 1 << *(a4 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a4 + 64);
  v16 = (v13 + 63) >> 6;
  v28 = a4;

  v18 = 0;
  while (v15)
  {
    v29 = v5;
    v19 = v18;
LABEL_10:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = v20 | (v19 << 6);
    v22 = v28;
    v23 = *(v28 + 48);
    v24 = sub_251C70074();
    (*(*(v24 - 8) + 16))(v11, v23 + *(*(v24 - 8) + 72) * v21, v24);
    *&v11[*(v26 + 48)] = *(*(v22 + 56) + 8 * v21);

    v25 = v29;
    v27(&v30, v11);
    v5 = v25;
    result = sub_251BFB9C4(v11, sub_251BFB7E4);
    if (v25)
    {
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return v30;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v29 = v5;
      v18 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_251BF1F94(id a1, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = a1;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x25308D460](j, a4);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        a1 = *(a4 + 8 * j + 32);
      }

      v8 = a1;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = a1;
      a2(&v13, &v12);

      if (v4)
      {

        return;
      }

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = a1;
    i = sub_251C717F4();
  }
}

uint64_t sub_251BF20BC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  v5 = *(v2 + *(a1(0) + 24));
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v6 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC978]);
  v7 = sub_251C71534();

  if (v7 & 1) != 0 || (v8 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]), v9 = sub_251C71534(), v8, (v9))
  {
    v10 = [objc_opt_self() correlationTypeForIdentifier_];
    if (!v10)
    {
      result = sub_251C717E4();
      __break(1u);
      return result;
    }

    *a2 = v10;
  }

  else
  {
    *a2 = v5;
    v11 = v5;
  }

  v12 = *MEMORY[0x277D112F0];
  v13 = sub_251C702E4();
  v14 = *(*(v13 - 8) + 104);

  return v14(a2, v12, v13);
}

uint64_t sub_251BF2294@<X0>(void *a1@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  v2 = objc_opt_self();
  v3 = [v2 activitySummaryType];
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v4 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC978]);
  v5 = sub_251C71534();

  if (v5 & 1) != 0 || (v6 = [v2 activitySummaryType], v7 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]), v8 = sub_251C71534(), v6, v7, (v8))
  {
    v9 = [v2 correlationTypeForIdentifier_];
    if (v9)
    {
      goto LABEL_6;
    }

    LODWORD(v15) = 0;
    v14 = 76;
    sub_251C717E4();
    __break(1u);
  }

  v9 = [v2 activitySummaryType];
LABEL_6:
  *a1 = v9;
  v10 = *MEMORY[0x277D112F0];
  v11 = sub_251C702E4();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

uint64_t sub_251BF24A4@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v4 = *MEMORY[0x277CCC978];
  v5 = a1;
  v6 = MEMORY[0x25308D1E0](v4);
  LOBYTE(a1) = sub_251C71534();

  if ((a1 & 1) != 0 || (v7 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]), v8 = sub_251C71534(), v7, (v8)) && (v5, (v5 = [objc_opt_self() correlationTypeForIdentifier_]) == 0))
  {
    result = sub_251C717E4();
    __break(1u);
  }

  else
  {
    *a2 = v5;
    v9 = *MEMORY[0x277D112F0];
    v10 = sub_251C702E4();
    v11 = *(*(v10 - 8) + 104);

    return v11(a2, v9, v10);
  }

  return result;
}

uint64_t sub_251BF266C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  v5 = *(v2 + *(a1(0) + 32));
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v6 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC978]);
  v7 = sub_251C71534();

  if (v7 & 1) != 0 || (v8 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]), v9 = sub_251C71534(), v8, (v9))
  {
    v10 = [objc_opt_self() correlationTypeForIdentifier_];
    if (!v10)
    {
      result = sub_251C717E4();
      __break(1u);
      return result;
    }

    *a2 = v10;
  }

  else
  {
    *a2 = v5;
    v11 = v5;
  }

  v12 = *MEMORY[0x277D112F0];
  v13 = sub_251C702E4();
  v14 = *(*(v13 - 8) + 104);

  return v14(a2, v12, v13);
}