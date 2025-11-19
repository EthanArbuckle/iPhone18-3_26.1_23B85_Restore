uint64_t sub_20C324BA8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[22];

    v6 = v2[20];
    v7 = v2[21];

    return MEMORY[0x2822009F8](sub_20C324CBC, v6, v7);
  }

  return result;
}

uint64_t sub_20C324CBC()
{
  v1 = *(v0 + 200);
  if (v1 == 3)
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 120);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v6 = sub_20C36C3D4();
    __swift_project_value_buffer(v6, qword_2810ED6B8);
    v7 = sub_20C36C3B4();
    v8 = sub_20C36CFD4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20C2F6000, v7, v8, "Network Conditions Updated — refreshing", v9, 2u);
      MEMORY[0x20F2F83A0](v9, -1, -1);
    }

    v10 = *(v0 + 120);
    v11 = *(v0 + 104);

    *v10 = v1;
    swift_storeEnumTagMultiPayload();
    v12 = *(MEMORY[0x277D043C8] + 4);
    v13 = swift_task_alloc();
    *(v0 + 192) = v13;
    v14 = sub_20C36CCB4();
    *v13 = v0;
    v13[1] = sub_20C324EA0;
    v15 = *(v0 + 120);
    v16 = *(v0 + 96);

    return MEMORY[0x282159B08](v15, v14);
  }
}

uint64_t sub_20C324EA0()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 104);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 168);
  v7 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C325024, v7, v6);
}

uint64_t sub_20C325024()
{
  v1 = v0[16];
  v2 = sub_20C36CEE4();
  v0[22] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_20C324BA8;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v2, v6);
}

uint64_t sub_20C325100(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for ForYouSummaryAction();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = sub_20C36CEF4();
  v2[17] = sub_20C36CEE4();
  v7 = *(a2 + 136);
  v11 = (*(a2 + 128) + **(a2 + 128));
  v8 = *(*(a2 + 128) + 4);
  v9 = swift_task_alloc();
  v2[18] = v9;
  *v9 = v2;
  v9[1] = sub_20C325278;

  return v11(v2 + 7);
}

uint64_t sub_20C325278()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v8 = *v0;

  v6 = sub_20C36CEC4();
  *(v1 + 152) = v6;
  *(v1 + 160) = v5;

  return MEMORY[0x2822009F8](sub_20C3253BC, v6, v5);
}

uint64_t sub_20C3253BC()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[16];
  v7 = sub_20C36CEE4();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_20C325594;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v7, v11);
}

uint64_t sub_20C325594()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x2822009F8](sub_20C3256A8, v6, v7);
  }

  return result;
}

uint64_t sub_20C3256A8()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 120);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v5 = sub_20C36C3D4();
    __swift_project_value_buffer(v5, qword_2810ED6B8);
    v6 = sub_20C36C3B4();
    v7 = sub_20C36CFD4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20C2F6000, v6, v7, "Onboarding Survey Results Updated — refreshing", v8, 2u);
      MEMORY[0x20F2F83A0](v8, -1, -1);
    }

    v9 = *(v0 + 120);
    v10 = *(v0 + 104);

    *v9 = 0;
    swift_storeEnumTagMultiPayload();
    v11 = *(MEMORY[0x277D043C8] + 4);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    v13 = sub_20C36CCB4();
    *v12 = v0;
    v12[1] = sub_20C32588C;
    v14 = *(v0 + 120);
    v15 = *(v0 + 96);

    return MEMORY[0x282159B08](v14, v13);
  }
}

uint64_t sub_20C32588C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 104);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 160);
  v7 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_20C325A10, v7, v6);
}

uint64_t sub_20C325A10()
{
  v1 = v0[16];
  v2 = sub_20C36CEE4();
  v0[21] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_20C325594;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 24, v2, v6);
}

uint64_t sub_20C325AEC(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for ForYouSummaryAction();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = sub_20C36CEF4();
  v2[17] = sub_20C36CEE4();
  v7 = *(a2 + 152);
  v11 = (*(a2 + 144) + **(a2 + 144));
  v8 = *(*(a2 + 144) + 4);
  v9 = swift_task_alloc();
  v2[18] = v9;
  *v9 = v2;
  v9[1] = sub_20C325C64;

  return v11(v2 + 7);
}

uint64_t sub_20C325C64()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v11 = *v1;
  v3[19] = v2;

  v8 = sub_20C36CEC4();
  v3[20] = v8;
  v3[21] = v7;
  if (v2)
  {
    v9 = sub_20C3295BC;
  }

  else
  {
    v9 = sub_20C325DC4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_20C325DC4()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[16];
  v7 = sub_20C36CEE4();
  v0[22] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_20C325F9C;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v7, v11);
}

uint64_t sub_20C325F9C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[22];

    v6 = v2[20];
    v7 = v2[21];

    return MEMORY[0x2822009F8](sub_20C3260B0, v6, v7);
  }

  return result;
}

uint64_t sub_20C3260B0()
{
  if (*(v0 + 200) == 1)
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 120);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v5 = sub_20C36C3D4();
    __swift_project_value_buffer(v5, qword_2810ED6B8);
    v6 = sub_20C36C3B4();
    v7 = sub_20C36CFD4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20C2F6000, v6, v7, "Personalization Privacy Preference Updated — refreshing", v8, 2u);
      MEMORY[0x20F2F83A0](v8, -1, -1);
    }

    v9 = *(v0 + 120);
    v10 = *(v0 + 104);

    *v9 = 1;
    swift_storeEnumTagMultiPayload();
    v11 = *(MEMORY[0x277D043C8] + 4);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    v13 = sub_20C36CCB4();
    *v12 = v0;
    v12[1] = sub_20C326298;
    v14 = *(v0 + 120);
    v15 = *(v0 + 96);

    return MEMORY[0x282159B08](v14, v13);
  }
}

uint64_t sub_20C326298()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 104);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 168);
  v7 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C32641C, v7, v6);
}

uint64_t sub_20C32641C()
{
  v1 = v0[16];
  v2 = sub_20C36CEE4();
  v0[22] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_20C325F9C;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v2, v6);
}

uint64_t sub_20C3264F8(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for ForYouSummaryAction();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = sub_20C36CEF4();
  v2[17] = sub_20C36CEE4();
  v7 = *(a2 + 168);
  v11 = (*(a2 + 160) + **(a2 + 160));
  v8 = *(*(a2 + 160) + 4);
  v9 = swift_task_alloc();
  v2[18] = v9;
  *v9 = v2;
  v9[1] = sub_20C326670;

  return v11(v2 + 7);
}

uint64_t sub_20C326670()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v11 = *v1;
  v3[19] = v2;

  v8 = sub_20C36CEC4();
  v3[20] = v8;
  v3[21] = v7;
  if (v2)
  {
    v9 = sub_20C3295BC;
  }

  else
  {
    v9 = sub_20C3267D0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_20C3267D0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[16];
  v7 = sub_20C36CEE4();
  v0[22] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_20C3269A8;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v7, v11);
}

uint64_t sub_20C3269A8()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[22];

    v6 = v2[20];
    v7 = v2[21];

    return MEMORY[0x2822009F8](sub_20C326ABC, v6, v7);
  }

  return result;
}

uint64_t sub_20C326ABC()
{
  if (*(v0 + 200) == 1)
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 120);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v5 = sub_20C36C3D4();
    __swift_project_value_buffer(v5, qword_2810ED6B8);
    v6 = sub_20C36C3B4();
    v7 = sub_20C36CFD4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20C2F6000, v6, v7, "Significant Time Change — refreshing", v8, 2u);
      MEMORY[0x20F2F83A0](v8, -1, -1);
    }

    v9 = *(v0 + 120);
    v10 = *(v0 + 104);

    *v9 = 1;
    swift_storeEnumTagMultiPayload();
    v11 = *(MEMORY[0x277D043C8] + 4);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    v13 = sub_20C36CCB4();
    *v12 = v0;
    v12[1] = sub_20C326CA4;
    v14 = *(v0 + 120);
    v15 = *(v0 + 96);

    return MEMORY[0x282159B08](v14, v13);
  }
}

uint64_t sub_20C326CA4()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 104);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 168);
  v7 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C326E28, v7, v6);
}

uint64_t sub_20C326E28()
{
  v1 = v0[16];
  v2 = sub_20C36CEE4();
  v0[22] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_20C3269A8;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v2, v6);
}

uint64_t sub_20C326F04(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for ForYouSummaryAction();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = sub_20C36CEF4();
  v2[17] = sub_20C36CEE4();
  v7 = *(a2 + 184);
  v11 = (*(a2 + 176) + **(a2 + 176));
  v8 = *(*(a2 + 176) + 4);
  v9 = swift_task_alloc();
  v2[18] = v9;
  *v9 = v2;
  v9[1] = sub_20C32707C;

  return v11(v2 + 7);
}

uint64_t sub_20C32707C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v11 = *v1;
  v3[19] = v2;

  v8 = sub_20C36CEC4();
  v3[20] = v8;
  v3[21] = v7;
  if (v2)
  {
    v9 = sub_20C3295BC;
  }

  else
  {
    v9 = sub_20C3271DC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_20C3271DC()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C36CF44();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[16];
  v7 = sub_20C36CEE4();
  v0[22] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_20C3273B4;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v7, v11);
}

uint64_t sub_20C3273B4()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[22];

    v6 = v2[20];
    v7 = v2[21];

    return MEMORY[0x2822009F8](sub_20C3274C8, v6, v7);
  }

  return result;
}

uint64_t sub_20C3274C8()
{
  if (*(v0 + 200) == 1)
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 120);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_2810E8CA8 != -1)
    {
      swift_once();
    }

    v5 = sub_20C36C3D4();
    __swift_project_value_buffer(v5, qword_2810ED6B8);
    v6 = sub_20C36C3B4();
    v7 = sub_20C36CFD4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20C2F6000, v6, v7, "Wheelchair Status Updated — refreshing", v8, 2u);
      MEMORY[0x20F2F83A0](v8, -1, -1);
    }

    v9 = *(v0 + 120);
    v10 = *(v0 + 104);

    *v9 = 1;
    swift_storeEnumTagMultiPayload();
    v11 = *(MEMORY[0x277D043C8] + 4);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    v13 = sub_20C36CCB4();
    *v12 = v0;
    v12[1] = sub_20C3276B0;
    v14 = *(v0 + 120);
    v15 = *(v0 + 96);

    return MEMORY[0x282159B08](v14, v13);
  }
}

uint64_t sub_20C3276B0()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 104);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 168);
  v7 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C327834, v7, v6);
}

uint64_t sub_20C327834()
{
  v1 = v0[16];
  v2 = sub_20C36CEE4();
  v0[22] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_20C3273B4;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 25, v2, v6);
}

char *sub_20C327928(char *a1, int64_t a2, char a3)
{
  result = sub_20C327948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20C327948(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E500, &unk_20C372740);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_20C327A70(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v9 = a3 + *(type metadata accessor for ForYouSummaryState() + 68);
  v10 = *v9;
  v11 = *(v9 + 8);
  if (qword_2810E8CA8 != -1)
  {
    swift_once();
  }

  v12 = sub_20C36C3D4();
  __swift_project_value_buffer(v12, qword_2810ED6B8);
  sub_20C314340(v10, v11);
  sub_20C314340(a1, a2);
  v13 = sub_20C36C3B4();
  v14 = sub_20C36CFD4();
  sub_20C31439C(a1, a2);
  if (os_log_type_enabled(v13, v14))
  {
    v24 = v14;
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v15 = 136315394;
    v27 = v10;
    LOBYTE(v28) = v11;
    type metadata accessor for ForYouSummaryLoadState();
    v16 = sub_20C36CD94();
    v18 = v10;
    v19 = sub_20C359E04(v16, v17, &v26);

    *(v15 + 4) = v19;
    v10 = v18;
    *(v15 + 12) = 2080;
    v27 = a1;
    LOBYTE(v28) = a2;
    sub_20C314340(a1, a2);
    v20 = sub_20C36CD94();
    v22 = sub_20C359E04(v20, v21, &v26);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_20C2F6000, v13, v24, "Transitioning from %s to %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F83A0](v25, -1, -1);
    MEMORY[0x20F2F83A0](v15, -1, -1);
  }

  else
  {

    sub_20C31439C(v10, v11);
  }

  sub_20C314340(a1, a2);
  result = sub_20C31439C(v10, v11);
  *v9 = a1;
  *(v9 + 8) = a2;
  return result;
}

uint64_t sub_20C327CEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C320AA0(a1, (v1 + 6));
}

uint64_t sub_20C327DAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C321518(a1, (v1 + 6));
}

uint64_t sub_20C327E6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C321F24(a1, (v1 + 6));
}

uint64_t sub_20C327F2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C322930(a1, (v1 + 6));
}

uint64_t sub_20C327FEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C323270(a1, (v1 + 6));
}

uint64_t sub_20C3280AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C323CEC(a1, (v1 + 6));
}

uint64_t sub_20C32816C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C3246F8(a1, (v1 + 6));
}

uint64_t sub_20C32822C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C325100(a1, (v1 + 6));
}

uint64_t sub_20C3282EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C325AEC(a1, (v1 + 6));
}

uint64_t sub_20C3283AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C3264F8(a1, (v1 + 6));
}

uint64_t sub_20C32846C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C326F04(a1, (v1 + 6));
}

uint64_t sub_20C32852C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C32075C(a1);
}

uint64_t sub_20C3285E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C320654(a1, (v1 + 6));
}

uint64_t sub_20C3286A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C320410(a1, (v1 + 6));
}

uint64_t sub_20C328768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C3287D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(type metadata accessor for ForYouItemContext() - 8);
  v9 = (*(v8 + 80) + 296) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20C3295B8;

  return sub_20C3200D8(a1, (v1 + 6), v1 + v9);
}

uint64_t sub_20C3288D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C328934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(sub_20C36C164() - 8);
  v9 = (*(v8 + 80) + 296) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20C3295B8;

  return sub_20C31EBFC(a1, (v1 + 6), v1 + v9, v4, v5, v6, v7);
}

uint64_t sub_20C328A38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C31E698(a1);
}

uint64_t sub_20C328AF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C3295B8;

  return sub_20C31EA40(a1);
}

unint64_t sub_20C328BEC()
{
  result = qword_27C79E3B8[0];
  if (!qword_27C79E3B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C79E3B8);
  }

  return result;
}

uint64_t sub_20C328C5C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_20C328CE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C328D2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C328DC0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_13FitnessForYou0bC14SummaryFeatureV14TaskIdentifier33_639753F80728DE6975B8961204DAAA87LLOyxq__G(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_20C328E2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20C328E74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_20C328EB8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_20C328EEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_20C31F9EC(a1);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  v5 = v0[15];

  v6 = v0[17];

  v7 = v0[19];

  v8 = v0[21];

  v9 = v0[23];

  v10 = v0[25];

  v11 = v0[27];

  v12 = v0[29];

  v13 = v0[31];

  v14 = v0[33];

  v15 = v0[35];

  v16 = v0[36];

  return swift_deallocObject();
}

uint64_t sub_20C329090(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 296);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20C329164;

  return sub_20C3185AC(a1, (v1 + 48), v8, v1 + 304, v4, v5, v6, v7);
}

uint64_t sub_20C329164()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20C329308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  return sub_20C31B674(a1, *(v2 + 48), *(v2 + 16), *(v2 + 32), a2);
}

unint64_t sub_20C32932C()
{
  result = qword_27C79E4E0;
  if (!qword_27C79E4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79E4D8, &qword_20C372728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E4E0);
  }

  return result;
}

uint64_t sub_20C329390@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_20C31F9EC(a1);
}

uint64_t sub_20C3293C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4F0, &qword_20C372738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C32942C()
{
  result = qword_27C79E4F8;
  if (!qword_27C79E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E4F8);
  }

  return result;
}

uint64_t sub_20C329480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4F0, &qword_20C372738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C329508@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  return sub_20C31FD6C(a1);
}

uint64_t sub_20C32952C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C3295C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 15;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C3295F8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C32962C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C329660()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C329694()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C3296E0()
{
  if (*v0)
  {
    return 0x7061547473616F74;
  }

  else
  {
    return 0x6977537473616F74;
  }
}

uint64_t sub_20C32971C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6977537473616F74 && a2 == 0xEB00000000646570;
  if (v6 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7061547473616F74 && a2 == 0xEB00000000646570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C3297FC(uint64_t a1)
{
  v2 = sub_20C329C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C329838(uint64_t a1)
{
  v2 = sub_20C329C88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C329874(uint64_t a1)
{
  v2 = sub_20C329D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3298B0(uint64_t a1)
{
  v2 = sub_20C329D30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3298EC(uint64_t a1)
{
  v2 = sub_20C329CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C329928(uint64_t a1)
{
  v2 = sub_20C329CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ForYouToastAction.hashValue.getter()
{
  v1 = *v0;
  sub_20C36D314();
  MEMORY[0x20F2F7E60](v1);
  return sub_20C36D354();
}

uint64_t ForYouToastAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E508, &qword_20C372750);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E510, &qword_20C372758);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E518, &qword_20C372760);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C329C88();
  sub_20C36D374();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_20C329CDC();
    v18 = v22;
    sub_20C36D1B4();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_20C329D30();
    sub_20C36D1B4();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_20C329C88()
{
  result = qword_27C79E520;
  if (!qword_27C79E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E520);
  }

  return result;
}

unint64_t sub_20C329CDC()
{
  result = qword_27C79E528;
  if (!qword_27C79E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E528);
  }

  return result;
}

unint64_t sub_20C329D30()
{
  result = qword_27C79E530;
  if (!qword_27C79E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E530);
  }

  return result;
}

uint64_t ForYouToastAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E538, &qword_20C372768);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E540, &qword_20C372770);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E548, &unk_20C372778);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C329C88();
  v17 = v37;
  sub_20C36D364();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_20C36D194();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_20C36D064();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0) + 48);
    *v25 = &type metadata for ForYouToastAction;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_20C329CDC();
    sub_20C36D0F4();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_20C329D30();
    sub_20C36D0F4();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

unint64_t sub_20C32A1DC()
{
  result = qword_27C79E550;
  if (!qword_27C79E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E550);
  }

  return result;
}

unint64_t sub_20C32A2A4()
{
  result = qword_27C79E558;
  if (!qword_27C79E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E558);
  }

  return result;
}

unint64_t sub_20C32A2FC()
{
  result = qword_27C79E560;
  if (!qword_27C79E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E560);
  }

  return result;
}

unint64_t sub_20C32A354()
{
  result = qword_27C79E568;
  if (!qword_27C79E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E568);
  }

  return result;
}

unint64_t sub_20C32A3AC()
{
  result = qword_27C79E570;
  if (!qword_27C79E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E570);
  }

  return result;
}

unint64_t sub_20C32A404()
{
  result = qword_27C79E578;
  if (!qword_27C79E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E578);
  }

  return result;
}

unint64_t sub_20C32A45C()
{
  result = qword_27C79E580;
  if (!qword_27C79E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E580);
  }

  return result;
}

unint64_t sub_20C32A4B4()
{
  result = qword_27C79E588;
  if (!qword_27C79E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E588);
  }

  return result;
}

unint64_t sub_20C32A518()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_20C32A55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C377E50 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C32A648(uint64_t a1)
{
  v2 = sub_20C32BD14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C32A684(uint64_t a1)
{
  v2 = sub_20C32BD14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C32A6C0()
{
  if (*v0)
  {
    result = 0x657669746361;
  }

  else
  {
    result = 1701736302;
  }

  *v0;
  return result;
}

uint64_t sub_20C32A6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C32A7C8(uint64_t a1)
{
  v2 = sub_20C32BC5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C32A804(uint64_t a1)
{
  v2 = sub_20C32BC5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C32A840(uint64_t a1)
{
  v2 = sub_20C32BD68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C32A87C(uint64_t a1)
{
  v2 = sub_20C32BD68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlanMetadata.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E590, &qword_20C372B00);
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v33 - v4;
  v5 = sub_20C36C124();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E598, &qword_20C372B08);
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v34);
  v11 = &v33 - v10;
  v12 = type metadata accessor for PlanMetadata();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5A0, &unk_20C372B10);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C32BC5C();
  sub_20C36D374();
  sub_20C32BCB0(v40, v15);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
  {
    v43 = 0;
    sub_20C32BD68();
    sub_20C36D1B4();
    (*(v8 + 8))(v11, v34);
    return (*(v17 + 8))(v20, v16);
  }

  else
  {
    v40 = v17;
    v24 = v15[*(v22 + 48)];
    v25 = v35;
    v26 = v36;
    (*(v35 + 32))(v41, v15, v36);
    v46 = 1;
    sub_20C32BD14();
    v27 = v37;
    sub_20C36D1B4();
    v45 = 0;
    sub_20C32BE04(&qword_27C79E258, MEMORY[0x277CC95F0]);
    v28 = v39;
    v29 = v42;
    sub_20C36D234();
    v30 = v25;
    v31 = v16;
    if (v29)
    {
      (*(v38 + 8))(v27, v28);
      (*(v30 + 8))(v41, v26);
    }

    else
    {
      v32 = v41;
      v44 = 1;
      sub_20C36D204();
      (*(v38 + 8))(v27, v28);
      (*(v30 + 8))(v32, v26);
    }

    return (*(v40 + 8))(v20, v31);
  }
}

uint64_t PlanMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5B0, &qword_20C372B20);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = &v52 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5B8, &qword_20C372B28);
  v58 = *(v55 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5C0, &unk_20C372B30);
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  v14 = type metadata accessor for PlanMetadata();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_20C32BC5C();
  v23 = v62;
  sub_20C36D364();
  if (!v23)
  {
    v62 = v14;
    v25 = v58;
    v24 = v59;
    v53 = v20;
    v54 = v18;
    v26 = v60;
    v27 = sub_20C36D194();
    v28 = (2 * *(v27 + 16)) | 1;
    v64 = v27;
    v65 = v27 + 32;
    v66 = 0;
    v67 = v28;
    v29 = sub_20C32A508();
    v30 = v13;
    if (v29 == 2 || v66 != v67 >> 1)
    {
      v35 = v10;
      v36 = sub_20C36D064();
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0) + 48);
      *v38 = v62;
      sub_20C36D104();
      sub_20C36D054();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
      swift_willThrow();
      (*(v61 + 8))(v13, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        v68 = 1;
        sub_20C32BD14();
        v31 = v24;
        sub_20C36D0F4();
        v32 = v26;
        sub_20C36C124();
        v68 = 0;
        sub_20C32BE04(&qword_27C79E268, MEMORY[0x277CC95F0]);
        v33 = v56;
        sub_20C36D184();
        v34 = v61;
        v68 = 1;
        v42 = sub_20C36D154();
        v62 = 0;
        v43 = v57;
        v44 = v42;
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
        v46 = v43;
        v47 = v30;
        v48 = *(v45 + 48);
        (*(v46 + 8))(v31, v33);
        (*(v34 + 8))(v47, v10);
        swift_unknownObjectRelease();
        v49 = v54;
        v54[v48] = v44 & 1;
        (*(*(v45 - 8) + 56))(v49, 0, 1, v45);
        v50 = v49;
        v51 = v53;
        sub_20C2FB2D8(v50, v53);
      }

      else
      {
        v68 = 0;
        sub_20C32BD68();
        sub_20C36D0F4();
        v32 = v26;
        (*(v25 + 8))(v9, v55);
        (*(v61 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
        v51 = v53;
        (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
      }

      sub_20C2FB2D8(v51, v32);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t PlanMetadata.hash(into:)()
{
  v1 = v0;
  v2 = sub_20C36C124();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlanMetadata();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C32BCB0(v1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    return MEMORY[0x20F2F7E60](0);
  }

  v13 = v10[*(v11 + 48)];
  (*(v3 + 32))(v6, v10, v2);
  MEMORY[0x20F2F7E60](1);
  sub_20C32BE04(&qword_27C79D7B0, MEMORY[0x277CC95F0]);
  sub_20C36CD34();
  sub_20C36D334();
  return (*(v3 + 8))(v6, v2);
}

uint64_t PlanMetadata.hashValue.getter()
{
  v1 = v0;
  v2 = sub_20C36C124();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlanMetadata();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C36D314();
  sub_20C32BCB0(v1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    MEMORY[0x20F2F7E60](0);
  }

  else
  {
    v12 = v10[*(v11 + 48)];
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x20F2F7E60](1);
    sub_20C32BE04(&qword_27C79D7B0, MEMORY[0x277CC95F0]);
    sub_20C36CD34();
    sub_20C36D334();
    (*(v3 + 8))(v6, v2);
  }

  return sub_20C36D354();
}

uint64_t sub_20C32B940()
{
  sub_20C36D314();
  PlanMetadata.hash(into:)();
  return sub_20C36D354();
}

uint64_t _s13FitnessForYou12PlanMetadataO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C36C124();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(*(type metadata accessor for PlanMetadata() - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5E0, &qword_20C372F08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x28223BE20]();
  v15 = &v25[-v14];
  v16 = &v25[*(v13 + 56) - v14];
  sub_20C32BCB0(a1, &v25[-v14]);
  sub_20C32BCB0(a2, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D7A8, &qword_20C36D960);
  v18 = *(*(v17 - 8) + 48);
  if (v18(v15, 1, v17) == 1)
  {
    if (v18(v16, 1, v17) == 1)
    {
      sub_20C32C1CC(v15);
      return 1;
    }

    goto LABEL_6;
  }

  sub_20C32BCB0(v15, v11);
  v20 = *(v17 + 48);
  v26 = v11[v20];
  if (v18(v16, 1, v17) == 1)
  {
    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_20C32C164(v15);
    return 0;
  }

  v21 = v16[v20];
  (*(v5 + 32))(v8, v16, v4);
  v22 = sub_20C36C114();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v11, v4);
  if (v22)
  {
    v24 = v26 ^ v21;
    sub_20C32C1CC(v15);
    return v24 ^ 1u;
  }

  sub_20C32C1CC(v15);
  return 0;
}

unint64_t sub_20C32BC5C()
{
  result = qword_2810E9018;
  if (!qword_2810E9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9018);
  }

  return result;
}

uint64_t sub_20C32BCB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlanMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C32BD14()
{
  result = qword_27C79E5A8;
  if (!qword_27C79E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E5A8);
  }

  return result;
}

unint64_t sub_20C32BD68()
{
  result = qword_2810E9000;
  if (!qword_2810E9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9000);
  }

  return result;
}

uint64_t sub_20C32BE04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20C32BEA8()
{
  result = qword_27C79E5D0;
  if (!qword_27C79E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E5D0);
  }

  return result;
}

unint64_t sub_20C32BF00()
{
  result = qword_27C79E5D8;
  if (!qword_27C79E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E5D8);
  }

  return result;
}

unint64_t sub_20C32BF58()
{
  result = qword_2810E8FF0;
  if (!qword_2810E8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8FF0);
  }

  return result;
}

unint64_t sub_20C32BFB0()
{
  result = qword_2810E8FF8;
  if (!qword_2810E8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8FF8);
  }

  return result;
}

unint64_t sub_20C32C008()
{
  result = qword_2810E8FE0;
  if (!qword_2810E8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8FE0);
  }

  return result;
}

unint64_t sub_20C32C060()
{
  result = qword_2810E8FE8;
  if (!qword_2810E8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8FE8);
  }

  return result;
}

unint64_t sub_20C32C0B8()
{
  result = qword_2810E9008;
  if (!qword_2810E9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9008);
  }

  return result;
}

unint64_t sub_20C32C110()
{
  result = qword_2810E9010;
  if (!qword_2810E9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E9010);
  }

  return result;
}

uint64_t sub_20C32C164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5E0, &qword_20C372F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C32C1CC(uint64_t a1)
{
  v2 = type metadata accessor for PlanMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C32C23C()
{
  v1 = 0x726F727265;
  v2 = 0x676E69636E7973;
  if (*v0 != 2)
  {
    v2 = 0x616C696176616E75;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_20C32C2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C32CBF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C32C2E8(uint64_t a1)
{
  v2 = sub_20C32C97C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C32C324(uint64_t a1)
{
  v2 = sub_20C32C97C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C32C360(uint64_t a1)
{
  v2 = sub_20C32CACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C32C39C(uint64_t a1)
{
  v2 = sub_20C32CACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C32C3D8(uint64_t a1)
{
  v2 = sub_20C32CA78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C32C414(uint64_t a1)
{
  v2 = sub_20C32CA78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C32C450(uint64_t a1)
{
  v2 = sub_20C32CA24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C32C48C(uint64_t a1)
{
  v2 = sub_20C32CA24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C32C4C8(uint64_t a1)
{
  v2 = sub_20C32C9D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C32C504(uint64_t a1)
{
  v2 = sub_20C32C9D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ForYouSummaryLoadFailureReason.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5E8, &qword_20C372F10);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5F0, &qword_20C372F18);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E5F8, &qword_20C372F20);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E600, &qword_20C372F28);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E608, &qword_20C372F30);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C32C97C();
  sub_20C36D374();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_20C32CA24();
      v12 = v29;
      sub_20C36D1B4();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_20C32C9D0();
      v12 = v32;
      sub_20C36D1B4();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_20C32CA78();
    sub_20C36D1B4();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_20C32CACC();
  sub_20C36D1B4();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_20C32C97C()
{
  result = qword_27C79E610;
  if (!qword_27C79E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E610);
  }

  return result;
}

unint64_t sub_20C32C9D0()
{
  result = qword_27C79E618;
  if (!qword_27C79E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E618);
  }

  return result;
}

unint64_t sub_20C32CA24()
{
  result = qword_27C79E620;
  if (!qword_27C79E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E620);
  }

  return result;
}

unint64_t sub_20C32CA78()
{
  result = qword_27C79E628;
  if (!qword_27C79E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E628);
  }

  return result;
}

unint64_t sub_20C32CACC()
{
  result = qword_27C79E630;
  if (!qword_27C79E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E630);
  }

  return result;
}

void *sub_20C32CB38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20C32CD5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ForYouSummaryLoadFailureReason.hashValue.getter(unsigned __int8 a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](a1);
  return sub_20C36D354();
}

uint64_t sub_20C32CBF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C377E70 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69636E7973 && a2 == 0xE700000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C36D264();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_20C32CD5C(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E698, &qword_20C373420);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6A0, &qword_20C373428);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6A8, &qword_20C373430);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6B0, &qword_20C373438);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6B8, &unk_20C373440);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_20C32C97C();
  v21 = v50;
  sub_20C36D364();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_20C36D194();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_20C32A50C();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_20C32CA78();
        v36 = v40;
        sub_20C36D0F4();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_20C32CACC();
        v29 = v40;
        sub_20C36D0F4();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_20C32CA24();
      v35 = v40;
      sub_20C36D0F4();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_20C32C9D0();
      v37 = v40;
      sub_20C36D0F4();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_20C36D064();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0) + 48);
  *v15 = &type metadata for ForYouSummaryLoadFailureReason;
  sub_20C36D104();
  sub_20C36D054();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x277D84160], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_20C32D3A0()
{
  result = qword_27C79E638;
  if (!qword_27C79E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E638);
  }

  return result;
}

unint64_t sub_20C32D458()
{
  result = qword_27C79E640;
  if (!qword_27C79E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E640);
  }

  return result;
}

unint64_t sub_20C32D4B0()
{
  result = qword_27C79E648;
  if (!qword_27C79E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E648);
  }

  return result;
}

unint64_t sub_20C32D508()
{
  result = qword_27C79E650;
  if (!qword_27C79E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E650);
  }

  return result;
}

unint64_t sub_20C32D560()
{
  result = qword_27C79E658;
  if (!qword_27C79E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E658);
  }

  return result;
}

unint64_t sub_20C32D5B8()
{
  result = qword_27C79E660;
  if (!qword_27C79E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E660);
  }

  return result;
}

unint64_t sub_20C32D610()
{
  result = qword_27C79E668;
  if (!qword_27C79E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E668);
  }

  return result;
}

unint64_t sub_20C32D668()
{
  result = qword_27C79E670;
  if (!qword_27C79E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E670);
  }

  return result;
}

unint64_t sub_20C32D6C0()
{
  result = qword_27C79E678;
  if (!qword_27C79E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E678);
  }

  return result;
}

unint64_t sub_20C32D718()
{
  result = qword_27C79E680;
  if (!qword_27C79E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E680);
  }

  return result;
}

unint64_t sub_20C32D770()
{
  result = qword_27C79E688;
  if (!qword_27C79E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E688);
  }

  return result;
}

unint64_t sub_20C32D7C8()
{
  result = qword_27C79E690;
  if (!qword_27C79E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E690);
  }

  return result;
}

uint64_t sub_20C32D82C()
{
  if (*v0)
  {
    result = 0x65746F6D6572;
  }

  else
  {
    result = 0x6C61636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_20C32D860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C32D934(uint64_t a1)
{
  v2 = sub_20C32DD58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C32D970(uint64_t a1)
{
  v2 = sub_20C32DD58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C32D9AC(uint64_t a1)
{
  v2 = sub_20C32DE00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C32D9E8(uint64_t a1)
{
  v2 = sub_20C32DE00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C32DA24(uint64_t a1)
{
  v2 = sub_20C32DDAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C32DA60(uint64_t a1)
{
  v2 = sub_20C32DDAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowsingIdentity.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6C0, &qword_20C373450);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6C8, &qword_20C373458);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E6D0, &qword_20C373460);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C32DD58();
  sub_20C36D374();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_20C32DDAC();
    sub_20C36D1B4();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_20C32DE00();
    sub_20C36D1B4();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_20C32DD58()
{
  result = qword_27C79E6D8;
  if (!qword_27C79E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E6D8);
  }

  return result;
}

unint64_t sub_20C32DDAC()
{
  result = qword_27C79E6E0;
  if (!qword_27C79E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E6E0);
  }

  return result;
}

unint64_t sub_20C32DE00()
{
  result = qword_27C79E6E8;
  if (!qword_27C79E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E6E8);
  }

  return result;
}

uint64_t sub_20C32DE70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20C32DF2C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t BrowsingIdentity.hashValue.getter(char a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](a1 & 1);
  return sub_20C36D354();
}

uint64_t sub_20C32DF2C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E730, &qword_20C3737C0);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E738, &qword_20C3737C8);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E740, &unk_20C3737D0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C32DD58();
  v15 = v32;
  sub_20C36D364();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_20C36D194();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_20C32A508();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_20C36D064();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0) + 48);
    *v24 = &type metadata for BrowsingIdentity;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_20C32DDAC();
    sub_20C36D0F4();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_20C32DE00();
    sub_20C36D0F4();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_20C32E3EC()
{
  result = qword_27C79E6F0;
  if (!qword_27C79E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E6F0);
  }

  return result;
}

unint64_t sub_20C32E484()
{
  result = qword_27C79E6F8;
  if (!qword_27C79E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E6F8);
  }

  return result;
}

unint64_t sub_20C32E4DC()
{
  result = qword_27C79E700;
  if (!qword_27C79E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E700);
  }

  return result;
}

unint64_t sub_20C32E534()
{
  result = qword_27C79E708;
  if (!qword_27C79E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E708);
  }

  return result;
}

unint64_t sub_20C32E58C()
{
  result = qword_27C79E710;
  if (!qword_27C79E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E710);
  }

  return result;
}

unint64_t sub_20C32E5E4()
{
  result = qword_27C79E718;
  if (!qword_27C79E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E718);
  }

  return result;
}

unint64_t sub_20C32E63C()
{
  result = qword_27C79E720;
  if (!qword_27C79E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E720);
  }

  return result;
}

unint64_t sub_20C32E694()
{
  result = qword_27C79E728;
  if (!qword_27C79E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E728);
  }

  return result;
}

uint64_t CanvasSectionDescriptor.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CanvasSectionDescriptor.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CanvasSectionDescriptor.subtitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CanvasSectionDescriptor.detail.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t CanvasSectionDescriptor.recoId.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t sub_20C32E824()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x5379616C70736964;
  if (v1 != 6)
  {
    v3 = 0x64496F636572;
  }

  v4 = 0x6C6961746564;
  if (v1 != 4)
  {
    v4 = 0x736D657469;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20C32E920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C32FCA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C32E948(uint64_t a1)
{
  v2 = sub_20C32ED00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C32E984(uint64_t a1)
{
  v2 = sub_20C32ED00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CanvasSectionDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E748, &unk_20C3737E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v32 = v1[3];
  v33 = v10;
  v11 = v1[4];
  v30 = v1[5];
  v31 = v11;
  v36 = *(v1 + 48);
  v12 = v1[7];
  v28 = v1[8];
  v29 = v12;
  v13 = v1[9];
  v25 = *(v1 + 80);
  v14 = v1[11];
  v15 = v1[12];
  v26 = v13;
  v27 = v14;
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v16);
  sub_20C32ED00();
  sub_20C36D374();
  LOBYTE(v35) = 0;
  v21 = v34;
  sub_20C36D1F4();
  if (v21)
  {
    return (*(v4 + 8))(v7, v20);
  }

  v22 = v36;
  v34 = v15;
  LOBYTE(v35) = 1;
  sub_20C36D1C4();
  LOBYTE(v35) = 2;
  sub_20C36D1C4();
  LOBYTE(v35) = v22;
  v37 = 3;
  sub_20C32ED54();
  sub_20C36D234();
  LOBYTE(v35) = 4;
  sub_20C36D1C4();
  v35 = v26;
  v37 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4D8, &qword_20C372728);
  sub_20C32F42C(&qword_2810E8C10, &qword_2810E8F00);
  sub_20C36D234();
  LOBYTE(v35) = v25;
  v37 = 6;
  sub_20C2FBA48();
  sub_20C36D234();
  LOBYTE(v35) = 7;
  sub_20C36D1F4();
  return (*(v4 + 8))(0, v20);
}

unint64_t sub_20C32ED00()
{
  result = qword_2810E8D08;
  if (!qword_2810E8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8D08);
  }

  return result;
}

unint64_t sub_20C32ED54()
{
  result = qword_2810E8F30;
  if (!qword_2810E8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8F30);
  }

  return result;
}

uint64_t CanvasSectionDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E750, &qword_20C3737F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C32ED00();
  sub_20C36D364();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v55[0]) = 0;
  v12 = sub_20C36D144();
  v47 = v13;
  LOBYTE(v55[0]) = 1;
  v14 = sub_20C36D114();
  v46 = v15;
  v44 = v14;
  LOBYTE(v55[0]) = 2;
  v43 = sub_20C36D114();
  v45 = v16;
  LOBYTE(v48) = 3;
  sub_20C32F3D8();
  sub_20C36D184();
  v17 = LOBYTE(v55[0]);
  LOBYTE(v55[0]) = 4;
  v18 = sub_20C36D114();
  v41 = v19;
  v39 = v18;
  v63 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E4D8, &qword_20C372728);
  LOBYTE(v48) = 5;
  sub_20C32F42C(&qword_27C79E760, &qword_27C79E768);
  v40 = 0;
  sub_20C36D184();
  v42 = 0;
  v38 = v55[0];
  LOBYTE(v48) = 6;
  sub_20C2FC0B0();
  v20 = v42;
  sub_20C36D184();
  if (v20)
  {
    v42 = v20;
    (*(v6 + 8))(v9, v5);
    v25 = v40;
    __swift_destroy_boxed_opaque_existential_1(a1);

    if (!v25)
    {
    }
  }

  else
  {
    v21 = v41;
    v22 = LOBYTE(v55[0]);
    v64 = 7;
    v23 = sub_20C36D144();
    v37 = v24;
    v42 = 0;
    v26 = v23;
    (*(v6 + 8))(v9, v5);
    *&v48 = v12;
    *(&v48 + 1) = v47;
    *&v49 = v44;
    v27 = v46;
    *(&v49 + 1) = v46;
    *&v50 = v43;
    v28 = v45;
    *(&v50 + 1) = v45;
    LOBYTE(v51) = v63;
    *(&v51 + 1) = v39;
    *&v52 = v21;
    v29 = v22;
    v36 = v22;
    v30 = v38;
    *(&v52 + 1) = v38;
    LOBYTE(v53) = v29;
    v31 = v37;
    *(&v53 + 1) = v26;
    v54 = v37;
    *(a2 + 96) = v37;
    v32 = v53;
    *(a2 + 64) = v52;
    *(a2 + 80) = v32;
    v33 = v49;
    *a2 = v48;
    *(a2 + 16) = v33;
    v34 = v51;
    *(a2 + 32) = v50;
    *(a2 + 48) = v34;
    sub_20C329258(&v48, v55);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v55[0] = v12;
    v55[1] = v47;
    v55[2] = v44;
    v55[3] = v27;
    v55[4] = v43;
    v55[5] = v28;
    v56 = v63;
    v57 = v39;
    v58 = v21;
    v59 = v30;
    v60 = v36;
    v61 = v26;
    v62 = v31;
    return sub_20C3292B4(v55);
  }
}

unint64_t sub_20C32F3D8()
{
  result = qword_27C79E758;
  if (!qword_27C79E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E758);
  }

  return result;
}

uint64_t sub_20C32F42C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79E4D8, &qword_20C372728);
    sub_20C32F4B4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C32F4B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CanvasPlaceholder();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CanvasSectionDescriptor.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 48);
  v10 = v1[8];
  v11 = v1[9];
  v12 = *(v1 + 80);
  v16 = v1[11];
  v14 = v1[7];
  v15 = v1[12];
  sub_20C36CDC4();
  if (v5)
  {
    sub_20C36D334();
    sub_20C36CDC4();
    if (v8)
    {
LABEL_3:
      sub_20C36D334();
      sub_20C36CDC4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_20C36D334();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_20C36D334();
LABEL_6:
  sub_20C36CDC4();

  sub_20C36D334();
  if (v10)
  {
    sub_20C36CDC4();
  }

  sub_20C303294(a1, v11);
  DisplayStyle.rawValue.getter(v12);
  sub_20C36CDC4();

  return sub_20C36CDC4();
}

uint64_t CanvasSectionDescriptor.hashValue.getter()
{
  sub_20C36D314();
  CanvasSectionDescriptor.hash(into:)(v1);
  return sub_20C36D354();
}

uint64_t sub_20C32F6F8()
{
  sub_20C36D314();
  CanvasSectionDescriptor.hash(into:)(v1);
  return sub_20C36D354();
}

uint64_t sub_20C32F73C()
{
  sub_20C36D314();
  CanvasSectionDescriptor.hash(into:)(v1);
  return sub_20C36D354();
}

uint64_t _s13FitnessForYou23CanvasSectionDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v34 = *(a1 + 64);
  v32 = *(a1 + 72);
  v28 = *(a1 + 80);
  v25 = *(a1 + 96);
  v26 = *(a1 + 88);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v29 = *(a2 + 56);
  v30 = *(a1 + 56);
  v33 = *(a2 + 64);
  v31 = *(a2 + 72);
  v27 = *(a2 + 80);
  v23 = *(a2 + 96);
  v24 = *(a2 + 88);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8 || (v2 != v7 || v4 != v8) && (sub_20C36D264() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_20C36D264() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    v12 = 1954047348;
  }

  else
  {
    v12 = 0x657069636572;
  }

  if (v6)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v11)
  {
    v14 = 1954047348;
  }

  else
  {
    v14 = 0x657069636572;
  }

  if (v11)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v16 = sub_20C36D264();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if (v34)
  {
    if (!v33 || (v30 != v29 || v34 != v33) && (sub_20C36D264() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  if ((sub_20C3324C0(v32, v31) & 1) == 0)
  {
    return 0;
  }

  v17 = DisplayStyle.rawValue.getter(v28);
  v19 = v18;
  if (v17 != DisplayStyle.rawValue.getter(v27) || v19 != v20)
  {
    v21 = sub_20C36D264();

    if (v21)
    {
      goto LABEL_46;
    }

    return 0;
  }

LABEL_46:
  if (v26 == v24 && v25 == v23)
  {
    return 1;
  }

  return sub_20C36D264();
}

unint64_t sub_20C32FA58()
{
  result = qword_27C79E770;
  if (!qword_27C79E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E770);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20C32FAD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_20C32FB20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20C32FB9C()
{
  result = qword_27C79E778;
  if (!qword_27C79E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E778);
  }

  return result;
}

unint64_t sub_20C32FBF4()
{
  result = qword_2810E8CF8;
  if (!qword_2810E8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CF8);
  }

  return result;
}

unint64_t sub_20C32FC4C()
{
  result = qword_2810E8D00;
  if (!qword_2810E8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8D00);
  }

  return result;
}

uint64_t sub_20C32FCA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEC00000065707954 || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_20C36D264() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64496F636572 && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_20C36D264();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

BOOL sub_20C32FF48(uint64_t a1, char a2)
{
  if (!a2)
  {
    return (a1 & 0xFE) == 0;
  }

  if (a2 == 1)
  {
    return 0;
  }

  return a1 == 0;
}

uint64_t sub_20C32FF7C()
{
  v1 = 0x726F727265;
  v2 = 0x676E69636E7973;
  if (*v0 != 2)
  {
    v2 = 0x616C696176616E75;
  }

  if (*v0)
  {
    v1 = 0x6F70707553746F6ELL;
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

uint64_t sub_20C330004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C330E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C33002C(uint64_t a1)
{
  v2 = sub_20C3307F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C330068(uint64_t a1)
{
  v2 = sub_20C3307F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3300A4(uint64_t a1)
{
  v2 = sub_20C33099C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3300E0(uint64_t a1)
{
  v2 = sub_20C33099C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C330138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C36D264();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C3301C8(uint64_t a1)
{
  v2 = sub_20C3308F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C330204(uint64_t a1)
{
  v2 = sub_20C3308F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C330240(uint64_t a1)
{
  v2 = sub_20C3308A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C33027C(uint64_t a1)
{
  v2 = sub_20C3308A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3302B8(uint64_t a1)
{
  v2 = sub_20C33084C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3302F4(uint64_t a1)
{
  v2 = sub_20C33084C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LoadFailureReason.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v43 = a2;
  v42 = a4;
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E780, &qword_20C373A50);
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E788, &qword_20C373A58);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v32 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E790, &qword_20C373A60);
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E798, &qword_20C373A68);
  v38 = *(v15 - 8);
  v16 = *(v38 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E7A0, &qword_20C373A70);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3307F8();
  sub_20C36D374();
  if (!v42)
  {
    v44 = 0;
    sub_20C33099C();
    sub_20C36D1B4();
    sub_20C36D1F4();
    (*(v38 + 8))(v18, v15);
    return (*(v20 + 8))(v23, v19);
  }

  if (v42 == 1)
  {
    v46 = 1;
    sub_20C3308F4();
    sub_20C36D1B4();
    v45 = v43;
    sub_20C330948();
    v25 = v40;
    sub_20C36D1E4();
    (*(v39 + 8))(v14, v25);
    return (*(v20 + 8))(v23, v19);
  }

  v27 = (v20 + 8);
  if (v43 | v41)
  {
    v48 = 3;
    sub_20C33084C();
    v28 = v35;
    sub_20C36D1B4();
    v30 = v36;
    v29 = v37;
  }

  else
  {
    v47 = 2;
    sub_20C3308A0();
    v28 = v32;
    sub_20C36D1B4();
    v30 = v33;
    v29 = v34;
  }

  (*(v30 + 8))(v28, v29);
  return (*v27)(v23, v19);
}

unint64_t sub_20C3307F8()
{
  result = qword_2810E8E48[0];
  if (!qword_2810E8E48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E8E48);
  }

  return result;
}

unint64_t sub_20C33084C()
{
  result = qword_27C79E7A8;
  if (!qword_27C79E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7A8);
  }

  return result;
}

unint64_t sub_20C3308A0()
{
  result = qword_27C79E7B0;
  if (!qword_27C79E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7B0);
  }

  return result;
}

unint64_t sub_20C3308F4()
{
  result = qword_27C79E7B8;
  if (!qword_27C79E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7B8);
  }

  return result;
}

unint64_t sub_20C330948()
{
  result = qword_27C79E7C0;
  if (!qword_27C79E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7C0);
  }

  return result;
}

unint64_t sub_20C33099C()
{
  result = qword_2810E8E30;
  if (!qword_2810E8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E30);
  }

  return result;
}

uint64_t LoadFailureReason.init(from:)(uint64_t *a1)
{
  result = sub_20C330FDC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_20C330A14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20C330FDC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t LoadFailureReason.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a2;
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x20F2F7E60](1);
      if (v4 == 4)
      {
        return sub_20C36D334();
      }

      sub_20C36D334();
      v6 = v4;
    }

    else if (a2 | a3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    return MEMORY[0x20F2F7E60](v6);
  }

  else
  {
    MEMORY[0x20F2F7E60](0);

    return sub_20C36CDC4();
  }
}

uint64_t LoadFailureReason.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_20C36D314();
  if (!a3)
  {
    MEMORY[0x20F2F7E60](0);
    sub_20C36CDC4();
    return sub_20C36D354();
  }

  if (a3 != 1)
  {
    if (a1 | a2)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    goto LABEL_10;
  }

  MEMORY[0x20F2F7E60](1);
  if (a1 != 4)
  {
    sub_20C36D334();
    v6 = a1;
LABEL_10:
    MEMORY[0x20F2F7E60](v6);
    return sub_20C36D354();
  }

  sub_20C36D334();
  return sub_20C36D354();
}

uint64_t sub_20C330C00()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x20F2F7E60](1);
      if (v1 == 4)
      {
        return sub_20C36D334();
      }

      sub_20C36D334();
      v3 = v1;
    }

    else if (*v0 == 0)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    return MEMORY[0x20F2F7E60](v3);
  }

  else
  {
    MEMORY[0x20F2F7E60](0);

    return sub_20C36CDC4();
  }
}

uint64_t sub_20C330CBC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_20C36D314();
  if (!v3)
  {
    MEMORY[0x20F2F7E60](0);
    sub_20C36CDC4();
    return sub_20C36D354();
  }

  if (v3 != 1)
  {
    if (v1 | v2)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    goto LABEL_10;
  }

  MEMORY[0x20F2F7E60](1);
  if (v1 != 4)
  {
    sub_20C36D334();
    v4 = v1;
LABEL_10:
    MEMORY[0x20F2F7E60](v4);
    return sub_20C36D354();
  }

  sub_20C36D334();
  return sub_20C36D354();
}

uint64_t _s13FitnessForYou17LoadFailureReasonO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == 4)
        {
          if (a4 == 4)
          {
            return 1;
          }
        }

        else if (a4 != 4 && a4 == a1)
        {
          return 1;
        }
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_20C36D264();
  }
}

uint64_t sub_20C330E74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69636E7973 && a2 == 0xE700000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C36D264();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_20C330FDC(uint64_t *a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E7E8, &qword_20C374080);
  v58 = *(v52 - 8);
  v2 = *(v58 + 64);
  MEMORY[0x28223BE20](v52);
  v57 = &v47 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E7F0, &qword_20C374088);
  v51 = *(v53 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v56 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E7F8, &qword_20C374090);
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E800, &qword_20C374098);
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E808, &unk_20C3740A0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v60 = a1;
  v22 = __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_20C3307F8();
  v23 = v59;
  sub_20C36D364();
  if (!v23)
  {
    v47 = v11;
    v48 = v14;
    v25 = v56;
    v24 = v57;
    v49 = 0;
    v26 = v58;
    v59 = v16;
    v27 = sub_20C36D194();
    v28 = (2 * *(v27 + 16)) | 1;
    v61 = v27;
    v62 = v27 + 32;
    v63 = 0;
    v64 = v28;
    v29 = sub_20C32A50C();
    v30 = v15;
    if (v29 == 4 || v63 != v64 >> 1)
    {
      v34 = sub_20C36D064();
      swift_allocError();
      v35 = v30;
      v37 = v36;
      v22 = v19;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0) + 48);
      *v37 = &type metadata for LoadFailureReason;
      sub_20C36D104();
      sub_20C36D054();
      (*(*(v34 - 8) + 104))(v37, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v59 + 8))(v22, v35);
      goto LABEL_9;
    }

    if (v29 <= 1u)
    {
      if (v29)
      {
        v65 = 1;
        sub_20C3308F4();
        v22 = v19;
        v42 = v49;
        sub_20C36D0F4();
        if (!v42)
        {
          sub_20C331CB4();
          v45 = v54;
          sub_20C36D134();
          v46 = v59;
          (*(v55 + 8))(v10, v45);
          (*(v46 + 8))(v19, v30);
          swift_unknownObjectRelease();
          v22 = v65;
          goto LABEL_10;
        }
      }

      else
      {
        v65 = 0;
        sub_20C33099C();
        v32 = v48;
        v31 = v49;
        v22 = v19;
        sub_20C36D0F4();
        if (!v31)
        {
          v33 = v47;
          v22 = sub_20C36D144();
          (*(v50 + 8))(v32, v33);
          (*(v59 + 8))(v19, v15);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      (*(v59 + 8))(v19, v15);
LABEL_9:
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    if (v29 == 2)
    {
      v65 = 2;
      sub_20C3308A0();
      v22 = v19;
      v40 = v49;
      sub_20C36D0F4();
      v41 = v59;
      if (!v40)
      {
        (*(v51 + 8))(v25, v53);
        (*(v41 + 8))(v19, v30);
        swift_unknownObjectRelease();
        v22 = 0;
        goto LABEL_10;
      }

      (*(v59 + 8))(v19, v30);
      goto LABEL_9;
    }

    v65 = 3;
    sub_20C33084C();
    v43 = v49;
    sub_20C36D0F4();
    v44 = v59;
    if (v43)
    {
      v22 = v59 + 8;
      (*(v59 + 8))(v19, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v26 + 8))(v24, v52);
      (*(v44 + 8))(v19, v15);
      swift_unknownObjectRelease();
      v22 = 1;
    }
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v60);
  return v22;
}

unint64_t sub_20C331788()
{
  result = qword_27C79E7C8;
  if (!qword_27C79E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7C8);
  }

  return result;
}

unint64_t sub_20C331840()
{
  result = qword_27C79E7D0;
  if (!qword_27C79E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7D0);
  }

  return result;
}

unint64_t sub_20C331898()
{
  result = qword_27C79E7D8;
  if (!qword_27C79E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7D8);
  }

  return result;
}

unint64_t sub_20C3318F0()
{
  result = qword_27C79E7E0;
  if (!qword_27C79E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E7E0);
  }

  return result;
}

unint64_t sub_20C331948()
{
  result = qword_2810E8E20;
  if (!qword_2810E8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E20);
  }

  return result;
}

unint64_t sub_20C3319A0()
{
  result = qword_2810E8E28;
  if (!qword_2810E8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E28);
  }

  return result;
}

unint64_t sub_20C3319F8()
{
  result = qword_2810E8DF0;
  if (!qword_2810E8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8DF0);
  }

  return result;
}

unint64_t sub_20C331A50()
{
  result = qword_2810E8DF8;
  if (!qword_2810E8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8DF8);
  }

  return result;
}

unint64_t sub_20C331AA8()
{
  result = qword_2810E8E10;
  if (!qword_2810E8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E10);
  }

  return result;
}

unint64_t sub_20C331B00()
{
  result = qword_2810E8E18;
  if (!qword_2810E8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E18);
  }

  return result;
}

unint64_t sub_20C331B58()
{
  result = qword_2810E8E00;
  if (!qword_2810E8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E00);
  }

  return result;
}

unint64_t sub_20C331BB0()
{
  result = qword_2810E8E08;
  if (!qword_2810E8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E08);
  }

  return result;
}

unint64_t sub_20C331C08()
{
  result = qword_2810E8E38;
  if (!qword_2810E8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E38);
  }

  return result;
}

unint64_t sub_20C331C60()
{
  result = qword_2810E8E40;
  if (!qword_2810E8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8E40);
  }

  return result;
}

unint64_t sub_20C331CB4()
{
  result = qword_27C79E810;
  if (!qword_27C79E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E810);
  }

  return result;
}

uint64_t ForYouToastEnvironment.init(requestToastDismissal:navigateToForYou:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ForYouToastEnvironment.requestToastDismissal.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ForYouToastEnvironment.navigateToForYou.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_20C331D74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C331DBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C331E0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE500000000000000;
    v11 = 0x6169726F74696465;
    v12 = 0xEF736D6574692D6CLL;
    if (a1 != 2)
    {
      v11 = 0x7974696C61646F6DLL;
      v12 = 0xE800000000000000;
    }

    v13 = 0x6169726F74696465;
    if (a1)
    {
      v10 = 0xEF73647261632D6CLL;
    }

    else
    {
      v13 = 0x6472617761;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v3 = 0x2D72656E69617274;
    v4 = 0xEC00000073706974;
    v5 = 0x72656E69617274;
    if (a1 != 7)
    {
      v5 = 0x74756F6B726F77;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = 0xE700000000000000;
    }

    v6 = 0xE800000000000000;
    v7 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v7 = 0x6D6172676F7270;
      v6 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v14 = 0xE800000000000000;
        if (v8 != 0x7974696C61646F6DLL)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0x6D6574692D6CLL;
    }

    else
    {
      if (!a2)
      {
        v14 = 0xE500000000000000;
        if (v8 != 0x6472617761)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0x647261632D6CLL;
    }

    v14 = v15 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
    if (v8 != 0x6169726F74696465)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE800000000000000;
      if (v8 != 0x7473696C79616C70)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v8 != 0x6D6172676F7270)
      {
LABEL_52:
        v16 = sub_20C36D264();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xEC00000073706974;
    if (v8 != 0x2D72656E69617274)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE700000000000000;
    if (a2 == 7)
    {
      if (v8 != 0x72656E69617274)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 0x74756F6B726F77)
    {
      goto LABEL_52;
    }
  }

LABEL_50:
  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_20C3320F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v7 = *(a1 + v5 + 48);
      v8 = *(a1 + v5 + 56);
      v9 = *(a1 + v5 + 64);
      v10 = *(a2 + v5 + 48);
      v11 = *(a2 + v5 + 56);
      v12 = *(a2 + v5 + 64);
      v13 = *(a1 + v5 + 32) == *(a2 + v5 + 32) && *(a1 + v5 + 40) == *(a2 + v5 + 40);
      if (!v13 && (sub_20C36D264() & 1) == 0)
      {
        return 0;
      }

      if (v7 <= 3)
      {
        if (v7 <= 1)
        {
          if (!v7)
          {
            v14 = 0xE500000000000000;
            v15 = 0x6472617761;
            if (v10 > 3)
            {
              goto LABEL_39;
            }

            goto LABEL_31;
          }

          v15 = 0x6169726F74696465;
          v16 = 0x647261632D6CLL;
          goto LABEL_38;
        }

        if (v7 == 2)
        {
          v15 = 0x6169726F74696465;
          v16 = 0x6D6574692D6CLL;
LABEL_38:
          v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
          if (v10 > 3)
          {
            goto LABEL_39;
          }

          goto LABEL_31;
        }

        v14 = 0xE800000000000000;
        v15 = 0x7974696C61646F6DLL;
        if (v10 > 3)
        {
          goto LABEL_39;
        }
      }

      else if (v7 <= 5)
      {
        if (v7 == 4)
        {
          v14 = 0xE800000000000000;
          v15 = 0x7473696C79616C70;
          if (v10 > 3)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v14 = 0xE700000000000000;
          v15 = 0x6D6172676F7270;
          if (v10 > 3)
          {
LABEL_39:
            if (v10 <= 5)
            {
              if (v10 == 4)
              {
                v17 = 0xE800000000000000;
                if (v15 != 0x7473696C79616C70)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v17 = 0xE700000000000000;
                if (v15 != 0x6D6172676F7270)
                {
                  goto LABEL_65;
                }
              }
            }

            else if (v10 == 6)
            {
              v17 = 0xEC00000073706974;
              if (v15 != 0x2D72656E69617274)
              {
                goto LABEL_65;
              }
            }

            else if (v10 == 7)
            {
              v17 = 0xE700000000000000;
              if (v15 != 0x72656E69617274)
              {
                goto LABEL_65;
              }
            }

            else
            {
              v17 = 0xE700000000000000;
              if (v15 != 0x74756F6B726F77)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_63;
          }
        }
      }

      else if (v7 == 6)
      {
        v15 = 0x2D72656E69617274;
        v14 = 0xEC00000073706974;
        if (v10 > 3)
        {
          goto LABEL_39;
        }
      }

      else if (v7 == 7)
      {
        v14 = 0xE700000000000000;
        v15 = 0x72656E69617274;
        if (v10 > 3)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v14 = 0xE700000000000000;
        v15 = 0x74756F6B726F77;
        if (v10 > 3)
        {
          goto LABEL_39;
        }
      }

LABEL_31:
      if (v10 > 1)
      {
        if (v10 != 2)
        {
          v17 = 0xE800000000000000;
          if (v15 != 0x7974696C61646F6DLL)
          {
            goto LABEL_65;
          }

          goto LABEL_63;
        }

        v18 = 0x6D6574692D6CLL;
        goto LABEL_52;
      }

      if (v10)
      {
        v18 = 0x647261632D6CLL;
LABEL_52:
        v17 = v18 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
        if (v15 != 0x6169726F74696465)
        {
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      v17 = 0xE500000000000000;
      if (v15 != 0x6472617761)
      {
        goto LABEL_65;
      }

LABEL_63:
      if (v14 == v17)
      {

        goto LABEL_66;
      }

LABEL_65:
      v19 = sub_20C36D264();

      if ((v19 & 1) == 0)
      {
        return 0;
      }

LABEL_66:
      if (v9)
      {
        if (!v12)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == v11)
        {
          v6 = v12;
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_20C3324C0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for CanvasPlaceholder() - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_20C333830(v13, v10);
        sub_20C333830(v14, v7);
        v16 = _s13FitnessForYou17CanvasPlaceholderV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_20C2FC16C(v7);
        sub_20C2FC16C(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_20C332634(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 2);
      v8 = *(i - 1);
      v14 = *i;
      v10 = *(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3);
      if (!v10 && (sub_20C36D264() & 1) == 0)
      {
        break;
      }

      v11 = v6 == v9 && v5 == v8;
      if (!v11 && (sub_20C36D264() & 1) == 0)
      {
        break;
      }

      v12 = sub_20C3320F4(v7, v14);

      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_20C33279C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v47 = v2;
  v48 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v34 = *(v5 + 64);
    v35 = v8;
    v36 = *(v5 + 96);
    v9 = *(v5 + 16);
    v31[0] = *v5;
    v31[1] = v9;
    v10 = *(v5 + 48);
    v32 = *(v5 + 32);
    v33 = v10;
    v24 = v31[0];
    v25 = v9;
    v26 = v32;
    v27 = v10;
    v28 = v34;
    v29 = v8;
    v30 = v36;
    v11 = *(v6 + 80);
    v40 = *(v6 + 64);
    v41 = v11;
    v42 = *(v6 + 96);
    v12 = *(v6 + 16);
    v37[0] = *v6;
    v37[1] = v12;
    v13 = *(v6 + 48);
    v38 = *(v6 + 32);
    v39 = v13;
    v17 = v37[0];
    v18 = v12;
    v19 = v38;
    v20 = v13;
    v21 = v40;
    v22 = v11;
    v23 = v42;
    sub_20C329258(v31, v16);
    sub_20C329258(v37, v16);
    v14 = _s13FitnessForYou23CanvasSectionDescriptorV2eeoiySbAC_ACtFZ_0(&v24, &v17);
    v43[4] = v21;
    v43[5] = v22;
    v44 = v23;
    v43[0] = v17;
    v43[1] = v18;
    v43[2] = v19;
    v43[3] = v20;
    sub_20C3292B4(v43);
    v45[4] = v28;
    v45[5] = v29;
    v46 = v30;
    v45[0] = v24;
    v45[1] = v25;
    v45[2] = v26;
    v45[3] = v27;
    sub_20C3292B4(v45);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 104;
    v5 += 104;
  }

  return 1;
}

uint64_t AwardCanvasSectionDescriptor.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AwardCanvasSectionDescriptor.templateUniqueName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall AwardCanvasSectionDescriptor.init(identifier:templateUniqueName:items:)(FitnessForYou::AwardCanvasSectionDescriptor *__return_ptr retstr, Swift::String identifier, Swift::String templateUniqueName, Swift::OpaquePointer items)
{
  retstr->identifier = identifier;
  retstr->templateUniqueName = templateUniqueName;
  retstr->items = items;
}

uint64_t sub_20C332984()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x736D657469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_20C3329E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C33370C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C332A0C(uint64_t a1)
{
  v2 = sub_20C332CC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C332A48(uint64_t a1)
{
  v2 = sub_20C332CC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardCanvasSectionDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E818, "V[");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17 = v1[3];
  v18 = v10;
  v16 = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C332CC4();
  sub_20C36D374();
  v23 = 0;
  v12 = v19;
  sub_20C36D1F4();
  if (!v12)
  {
    v14 = v16;
    v22 = 1;
    sub_20C36D1F4();
    v20 = v14;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E820, &qword_20C374108);
    sub_20C333038(&qword_2810E8C08, sub_20C332D18);
    sub_20C36D234();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_20C332CC4()
{
  result = qword_2810E8CD8;
  if (!qword_2810E8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CD8);
  }

  return result;
}

unint64_t sub_20C332D18()
{
  result = qword_2810E8D10;
  if (!qword_2810E8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8D10);
  }

  return result;
}

uint64_t AwardCanvasSectionDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E828, &qword_20C374110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C332CC4();
  sub_20C36D364();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v11 = sub_20C36D144();
  v13 = v12;
  v20 = v11;
  v23 = 1;
  v18 = sub_20C36D144();
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E820, &qword_20C374108);
  v22 = 2;
  sub_20C333038(&qword_27C79E830, sub_20C3330B0);
  sub_20C36D184();
  (*(v6 + 8))(v9, v5);
  v15 = v21;
  *a2 = v20;
  a2[1] = v13;
  v16 = v19;
  a2[2] = v18;
  a2[3] = v16;
  a2[4] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_20C333038(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79E820, &qword_20C374108);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C3330B0()
{
  result = qword_27C79E838;
  if (!qword_27C79E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E838);
  }

  return result;
}

uint64_t static AwardCanvasSectionDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  return sub_20C3320F4(v3, v7);
}

uint64_t AwardCanvasSectionDescriptor.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_20C36CDC4();
  sub_20C36CDC4();

  return sub_20C3030B8(a1, v7);
}

uint64_t AwardCanvasSectionDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_20C36D314();
  sub_20C36CDC4();
  sub_20C36CDC4();
  sub_20C3030B8(v7, v5);
  return sub_20C36D354();
}

uint64_t sub_20C3332D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_20C36D314();
  sub_20C36CDC4();
  sub_20C36CDC4();
  sub_20C3030B8(v7, v5);
  return sub_20C36D354();
}

uint64_t sub_20C333350(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_20C36CDC4();
  sub_20C36CDC4();

  return sub_20C3030B8(a1, v7);
}

uint64_t sub_20C3333B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_20C36D314();
  sub_20C36CDC4();
  sub_20C36CDC4();
  sub_20C3030B8(v7, v5);
  return sub_20C36D354();
}

uint64_t sub_20C33342C(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_20C36D264() & 1) == 0)
  {
    return 0;
  }

  return sub_20C3320F4(v3, v7);
}

unint64_t sub_20C3334EC()
{
  result = qword_27C79E840;
  if (!qword_27C79E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E840);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20C333554(uint64_t a1, int a2)
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

uint64_t sub_20C33359C(uint64_t result, int a2, int a3)
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

unint64_t sub_20C333608()
{
  result = qword_27C79E848;
  if (!qword_27C79E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E848);
  }

  return result;
}

unint64_t sub_20C333660()
{
  result = qword_2810E8CC8;
  if (!qword_2810E8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CC8);
  }

  return result;
}

unint64_t sub_20C3336B8()
{
  result = qword_2810E8CD0;
  if (!qword_2810E8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8CD0);
  }

  return result;
}

uint64_t sub_20C33370C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C377E90 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C36D264();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20C333830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasPlaceholder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ForYouState.activeStorefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C36C144();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ForYouState.awardLoadStates.getter()
{
  v1 = *(v0 + *(type metadata accessor for ForYouState() + 20));
}

uint64_t type metadata accessor for ForYouState()
{
  result = qword_2810E92F8;
  if (!qword_2810E92F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ForYouState.awardLoadStates.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ForYouState() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ForYouState.isShowingCreatePlanAlert.setter(char a1)
{
  result = type metadata accessor for ForYouState();
  *(v1 + *(result + 36)) = a1;
  return result;
}

__n128 ForYouState.layout.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ForYouState() + 40);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t ForYouState.loadState.getter()
{
  v1 = v0 + *(type metadata accessor for ForYouState() + 44);
  v2 = *v1;
  sub_20C3047D4(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

uint64_t ForYouState.loadState.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + *(type metadata accessor for ForYouState() + 44);
  result = sub_20C3048B4(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24));
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  return result;
}

__n128 ForYouState.metrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ForYouState() + 48);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 57) = *(v3 + 57);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

__n128 ForYouState.metrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ForYouState() + 48);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t ForYouState.networkConditions.setter(char a1)
{
  result = type metadata accessor for ForYouState();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t ForYouState.retryCount.setter(uint64_t a1)
{
  result = type metadata accessor for ForYouState();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t ForYouState.sizeClass.setter(char a1)
{
  result = type metadata accessor for ForYouState();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t ForYouState.subscriptionState.setter(char a1)
{
  result = type metadata accessor for ForYouState();
  *(v1 + *(result + 72)) = a1;
  return result;
}

__n128 ForYouState.init(activeStorefrontLocale:awardLoadStates:hasExistingDescriptors:isFixedWidth:isInternalBuild:isShowingCreatePlanAlert:layout:loadState:metrics:maxRetryCount:networkConditions:shouldShowExploreButton:sizeClass:subscriptionState:supportsLocalDataSource:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, char a16, char a17, char a18, char a19)
{
  v25 = *(a7 + 4);
  v26 = *(a7 + 5);
  v27 = type metadata accessor for ForYouState();
  *(a9 + v27[15]) = 0;
  v28 = sub_20C36C144();
  v34 = a7[1];
  v35 = *a7;
  (*(*(v28 - 8) + 32))(a9, a1, v28);
  *(a9 + v27[5]) = a2;
  *(a9 + v27[6]) = a3;
  *(a9 + v27[7]) = a4;
  *(a9 + v27[8]) = a5;
  *(a9 + v27[9]) = a6;
  v29 = a9 + v27[10];
  *v29 = v35;
  *(v29 + 16) = v34;
  *(v29 + 32) = v25;
  *(v29 + 40) = v26;
  v30 = a9 + v27[11];
  *v30 = a8;
  *(v30 + 8) = a10;
  *(v30 + 16) = a11;
  *(v30 + 24) = a12;
  v31 = a9 + v27[12];
  v32 = *(a13 + 48);
  *(v31 + 32) = *(a13 + 32);
  *(v31 + 48) = v32;
  *(v31 + 57) = *(a13 + 57);
  result = *(a13 + 16);
  *v31 = *a13;
  *(v31 + 16) = result;
  *(a9 + v27[13]) = a14;
  *(a9 + v27[14]) = a15;
  *(a9 + v27[16]) = a16;
  *(a9 + v27[17]) = a17;
  *(a9 + v27[18]) = a18;
  *(a9 + v27[19]) = a19;
  return result;
}

unint64_t sub_20C3341E0(char a1)
{
  result = 0x616F4C6472617761;
  switch(a1)
  {
    case 1:
      return result;
    case 3:
      result = 0x5764657869467369;
      break;
    case 4:
      result = 0x6E7265746E497369;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0x74756F79616CLL;
      break;
    case 7:
      result = 0x7461745364616F6CLL;
      break;
    case 8:
      result = 0x7363697274656DLL;
      break;
    case 9:
      result = 0x797274655278616DLL;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x756F437972746572;
      break;
    case 12:
    case 15:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x73616C43657A6973;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_20C3343C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C335DFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C3343F8(uint64_t a1)
{
  v2 = sub_20C3349A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C334434(uint64_t a1)
{
  v2 = sub_20C3349A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ForYouState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E850, &qword_20C374340);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3349A8();
  sub_20C36D374();
  LOBYTE(v31) = 0;
  sub_20C36C144();
  sub_20C307EC8(&qword_27C79DD70);
  sub_20C36D234();
  if (!v2)
  {
    v11 = type metadata accessor for ForYouState();
    *&v31 = *(v3 + v11[5]);
    LOBYTE(v36) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E860, &qword_20C374348);
    sub_20C335294(&qword_27C79E868, sub_20C3349FC);
    sub_20C36D234();
    v12 = *(v3 + v11[6]);
    LOBYTE(v31) = 2;
    sub_20C36D204();
    v13 = *(v3 + v11[7]);
    LOBYTE(v31) = 3;
    sub_20C36D204();
    v14 = *(v3 + v11[8]);
    LOBYTE(v31) = 4;
    sub_20C36D204();
    v15 = *(v3 + v11[9]);
    LOBYTE(v31) = 5;
    sub_20C36D204();
    v16 = (v3 + v11[10]);
    v17 = v16[1];
    v31 = *v16;
    v32 = v17;
    v33 = v16[2];
    LOBYTE(v36) = 6;
    sub_20C334A50();
    sub_20C36D234();
    v18 = (v3 + v11[11]);
    v19 = *(v18 + 2);
    v20 = *(v18 + 24);
    v36 = *v18;
    v37 = v19;
    v38 = v20;
    v35 = 7;
    sub_20C304D60();
    sub_20C36D234();
    v21 = (v3 + v11[12]);
    v22 = v21[3];
    v33 = v21[2];
    *v34 = v22;
    *&v34[9] = *(v21 + 57);
    v23 = v21[1];
    v31 = *v21;
    v32 = v23;
    v30 = 8;
    sub_20C334AA4();
    sub_20C36D234();
    v24 = *(v3 + v11[13]);
    LOBYTE(v31) = 9;
    sub_20C36D224();
    LOBYTE(v31) = *(v3 + v11[14]);
    v30 = 10;
    sub_20C30A438();
    sub_20C36D234();
    v25 = *(v3 + v11[15]);
    LOBYTE(v31) = 11;
    sub_20C36D224();
    v26 = *(v3 + v11[16]);
    LOBYTE(v31) = 12;
    sub_20C36D204();
    LOBYTE(v31) = *(v3 + v11[17]);
    v30 = 13;
    sub_20C312DF0();
    sub_20C36D234();
    LOBYTE(v31) = *(v3 + v11[18]);
    v30 = 14;
    sub_20C30A294();
    sub_20C36D234();
    v27 = *(v3 + v11[19]);
    LOBYTE(v31) = 15;
    sub_20C36D204();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20C3349A8()
{
  result = qword_27C79E858;
  if (!qword_27C79E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E858);
  }

  return result;
}

unint64_t sub_20C3349FC()
{
  result = qword_27C79E870;
  if (!qword_27C79E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E870);
  }

  return result;
}

unint64_t sub_20C334A50()
{
  result = qword_27C79E878;
  if (!qword_27C79E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E878);
  }

  return result;
}

unint64_t sub_20C334AA4()
{
  result = qword_27C79E880;
  if (!qword_27C79E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E880);
  }

  return result;
}

uint64_t ForYouState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_20C36C144();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E888, &qword_20C374350);
  v36 = *(v40 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v40);
  v9 = v32 - v8;
  v10 = type metadata accessor for ForYouState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3349A8();
  v39 = v9;
  sub_20C36D364();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v10;
  v34 = v13;
  v16 = v36;
  v15 = v37;
  LOBYTE(v41) = 0;
  sub_20C307EC8(&qword_27C79DD80);
  v17 = v38;
  sub_20C36D184();
  v18 = v34;
  (*(v15 + 32))(v34, v17, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E860, &qword_20C374348);
  v47 = 1;
  sub_20C335294(&qword_27C79E890, sub_20C335318);
  sub_20C36D184();
  v38 = 0;
  v19 = v33;
  *&v18[v33[5]] = v41;
  LOBYTE(v41) = 2;
  v20 = sub_20C36D154();
  v32[1] = a1;
  v18[v19[6]] = v20 & 1;
  LOBYTE(v41) = 3;
  v18[v19[7]] = sub_20C36D154() & 1;
  LOBYTE(v41) = 4;
  v18[v19[8]] = sub_20C36D154() & 1;
  LOBYTE(v41) = 5;
  v18[v19[9]] = sub_20C36D154() & 1;
  v47 = 6;
  sub_20C33536C();
  sub_20C36D184();
  v21 = &v18[v19[10]];
  v22 = v42;
  *v21 = v41;
  *(v21 + 1) = v22;
  *(v21 + 2) = v43;
  v47 = 7;
  sub_20C305020();
  sub_20C36D184();
  v23 = v42;
  v24 = BYTE8(v42);
  v25 = &v18[v19[11]];
  *v25 = v41;
  *(v25 + 2) = v23;
  v25[24] = v24;
  v47 = 8;
  sub_20C3353C0();
  sub_20C36D184();
  v26 = &v18[v19[12]];
  v27 = v44[0];
  *(v26 + 2) = v43;
  *(v26 + 3) = v27;
  *(v26 + 57) = *(v44 + 9);
  v28 = v42;
  *v26 = v41;
  *(v26 + 1) = v28;
  v46 = 9;
  *&v34[v33[13]] = sub_20C36D174();
  v45 = 10;
  sub_20C30D9B8();
  sub_20C36D184();
  v34[v33[14]] = v46;
  v46 = 11;
  *&v34[v33[15]] = sub_20C36D174();
  v46 = 12;
  v34[v33[16]] = sub_20C36D154() & 1;
  v45 = 13;
  sub_20C312D98();
  sub_20C36D184();
  v34[v33[17]] = v46;
  v45 = 14;
  sub_20C30D964();
  sub_20C36D184();
  v34[v33[18]] = v46;
  v46 = 15;
  v29 = sub_20C36D154();
  (*(v16 + 8))(v39, v40);
  v30 = v34;
  v34[v33[19]] = v29 & 1;
  sub_20C335414(v30, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C335478(v30);
}

uint64_t sub_20C335294(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C79E860, &qword_20C374348);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C335318()
{
  result = qword_27C79E898;
  if (!qword_27C79E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E898);
  }

  return result;
}

unint64_t sub_20C33536C()
{
  result = qword_27C79E8A0;
  if (!qword_27C79E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8A0);
  }

  return result;
}

unint64_t sub_20C3353C0()
{
  result = qword_27C79E8A8;
  if (!qword_27C79E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8A8);
  }

  return result;
}

uint64_t sub_20C335414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C335478(uint64_t a1)
{
  v2 = type metadata accessor for ForYouState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C335508(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);

    sub_20C336328(v17);
    v18 = sub_20C35A4F4(v15, v16);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
LABEL_42:
      sub_20C336338(v17);
      return 0;
    }

    v21 = *(*(v2 + 56) + 8 * v18);
    if (v21)
    {
      if (v21 == 1)
      {
        if (v17 != 1)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v17 < 2)
        {
          goto LABEL_42;
        }

        v22 = *(v21 + 16);
        if (v22 != *(v17 + 16))
        {
          goto LABEL_42;
        }

        if (v22)
        {
          v23 = v21 == v17;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          v34 = v9;
          v35 = v5;
          v36 = v2;

          v24 = 0;
          v25 = (v21 + 64);
          v26 = (v17 + 64);
          v38 = v8;
          v39 = v21;
          v40 = v17;
          v37 = v22;
          while (v24 < *(v21 + 16))
          {
            if (v24 >= *(v17 + 16))
            {
              goto LABEL_46;
            }

            v27 = *(v25 - 2);
            v28 = *(v25 - 1);
            v29 = *v25;
            v30 = *(v26 - 2);
            v31 = *(v26 - 1);
            v41 = *v26;
            if (*(v25 - 4) != *(v26 - 4) || *(v25 - 3) != *(v26 - 3))
            {
              v32 = *(v25 - 3);
              v31 = *(v26 - 1);
              if ((sub_20C36D264() & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            if ((v27 != v30 || v28 != v31) && (sub_20C36D264() & 1) == 0)
            {
              goto LABEL_41;
            }

            v33 = sub_20C3320F4(v29, v41);

            if ((v33 & 1) == 0)
            {
LABEL_41:
              sub_20C336338(v40);
              v17 = v39;
              goto LABEL_42;
            }

            ++v24;
            v25 += 5;
            v26 += 5;
            v8 = v38;
            v21 = v39;
            v17 = v40;
            if (v37 == v24)
            {
              sub_20C336338(v40);
              v2 = v36;
              v9 = v34;
              v5 = v35;
              goto LABEL_28;
            }
          }

          goto LABEL_45;
        }

        v21 = v17;
LABEL_28:
        result = sub_20C336338(v21);
      }
    }

    else if (v17)
    {
      goto LABEL_42;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t _s13FitnessForYou0bC5StateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x20F2F6C70]() & 1) == 0)
  {
    goto LABEL_17;
  }

  v4 = type metadata accessor for ForYouState();
  if ((sub_20C335508(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    goto LABEL_17;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    goto LABEL_17;
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]))
  {
    goto LABEL_17;
  }

  if (*(a1 + v4[9]) != *(a2 + v4[9]))
  {
    goto LABEL_17;
  }

  v5 = a1 + v4[10];
  v6 = *(v5 + 16);
  v23 = *v5;
  v24 = v6;
  v25 = *(v5 + 32);
  v7 = a2 + v4[10];
  v8 = *(v7 + 16);
  v19 = *v7;
  v20 = v8;
  v21 = *(v7 + 32);
  if (!_s13FitnessForYou6LayoutV2eeoiySbAC_ACtFZ_0(&v23, &v19))
  {
    goto LABEL_17;
  }

  v9 = v4[11];
  if ((_s13FitnessForYou9LoadStateO2eeoiySbAC_ACtFZ_0(*(a1 + v9), *(a1 + v9 + 8), *(a1 + v9 + 16), *(a1 + v9 + 24), *(a2 + v9), *(a2 + v9 + 8), *(a2 + v9 + 16), *(a2 + v9 + 24)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v10 = a1 + v4[12];
  v11 = *(v10 + 57);
  v12 = *(v10 + 48);
  v25 = *(v10 + 32);
  v26[0] = v12;
  *(v26 + 9) = v11;
  v13 = *(v10 + 16);
  v23 = *v10;
  v24 = v13;
  v14 = a2 + v4[12];
  v15 = *(v14 + 48);
  v21 = *(v14 + 32);
  v22[0] = v15;
  *(v22 + 9) = *(v14 + 57);
  v16 = *(v14 + 16);
  v19 = *v14;
  v20 = v16;
  if (!_s13FitnessForYou0bC17PerformanceMetricV2eeoiySbAC_ACtFZ_0(&v23, &v19))
  {
    goto LABEL_17;
  }

  if (*(a1 + v4[13]) == *(a2 + v4[13]) && *(a1 + v4[14]) == *(a2 + v4[14]) && *(a1 + v4[15]) == *(a2 + v4[15]) && *(a1 + v4[16]) == *(a2 + v4[16]) && *(a1 + v4[17]) == *(a2 + v4[17]) && *(a1 + v4[18]) == *(a2 + v4[18]))
  {
    v17 = *(a1 + v4[19]) ^ *(a2 + v4[19]) ^ 1;
  }

  else
  {
LABEL_17:
    v17 = 0;
  }

  return v17 & 1;
}

void sub_20C335A54()
{
  sub_20C36C144();
  if (v0 <= 0x3F)
  {
    sub_20C335B44();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20C335B44()
{
  if (!qword_2810E8C28)
  {
    v0 = sub_20C36CD24();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E8C28);
    }
  }
}

uint64_t getEnumTagSinglePayload for ForYouState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ForYouState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C335CF8()
{
  result = qword_27C79E8B0;
  if (!qword_27C79E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8B0);
  }

  return result;
}

unint64_t sub_20C335D50()
{
  result = qword_27C79E8B8;
  if (!qword_27C79E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8B8);
  }

  return result;
}

unint64_t sub_20C335DA8()
{
  result = qword_27C79E8C0;
  if (!qword_27C79E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8C0);
  }

  return result;
}

uint64_t sub_20C335DFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000020C377D80 == a2;
  if (v3 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616F4C6472617761 && a2 == 0xEF73657461745364 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000020C377EB0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5764657869467369 && a2 == 0xEC00000068746469 || (sub_20C36D264() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEF646C6975426C61 || (sub_20C36D264() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C377ED0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065 || (sub_20C36D264() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_20C36D264() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x797274655278616DLL && a2 == 0xED0000746E756F43 || (sub_20C36D264() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C377DC0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL || (sub_20C36D264() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C377EF0 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073 || (sub_20C36D264() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C377F10 == a2 || (sub_20C36D264() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C377F30 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_20C36D264();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

unint64_t sub_20C336328(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_20C336338(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_20C33634C()
{
  v1 = 1701602409;
  v2 = 0x64656863746566;
  if (*v0 != 2)
  {
    v2 = 0x676E696863746566;
  }

  if (*v0)
  {
    v1 = 0x6F5464656C696166;
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

uint64_t sub_20C3363C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C2FFDA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C3363F0(uint64_t a1)
{
  v2 = sub_20C336F9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C33642C(uint64_t a1)
{
  v2 = sub_20C336F9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C336468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C36D264();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C3364EC(uint64_t a1)
{
  v2 = sub_20C337098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C336528(uint64_t a1)
{
  v2 = sub_20C337098();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_20C336564()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x64496F636572;
  }

  *v0;
  return result;
}

uint64_t sub_20C3365A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496F636572 && a2 == 0xE600000000000000;
  if (v6 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C377CE0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C336680(uint64_t a1)
{
  v2 = sub_20C337044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3366BC(uint64_t a1)
{
  v2 = sub_20C337044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C3366F8(uint64_t a1)
{
  v2 = sub_20C336FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C336734(uint64_t a1)
{
  v2 = sub_20C336FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C336770(uint64_t a1)
{
  v2 = sub_20C3370EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C3367AC(uint64_t a1)
{
  v2 = sub_20C3370EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LoadState.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v46 = a5;
  v38 = a4;
  v39 = a2;
  v40 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E8C8, &qword_20C374580);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v31 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E8D0, &qword_20C374588);
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v35 = &v30 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E8D8, &qword_20C374590);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E8E0, &qword_20C374598);
  v30 = *(v16 - 8);
  v17 = *(v30 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E8E8, &unk_20C3745A0);
  v41 = *(v20 - 8);
  v21 = *(v41 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v30 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C336F9C();
  sub_20C36D374();
  if (!v46)
  {
    LOBYTE(v43) = 1;
    sub_20C337098();
    sub_20C36D1B4();
    v43 = v39;
    v44 = v40;
    v45 = v38;
    sub_20C30A750();
    sub_20C36D234();
    (*(v34 + 8))(v15, v12);
    return (*(v41 + 8))(v23, v20);
  }

  if (v46 != 1)
  {
    if (v38 | v40 | v39)
    {
      LOBYTE(v43) = 3;
      sub_20C336FF0();
      v29 = v31;
      sub_20C36D1B4();
      (*(v32 + 8))(v29, v33);
    }

    else
    {
      LOBYTE(v43) = 0;
      sub_20C3370EC();
      sub_20C36D1B4();
      (*(v30 + 8))(v19, v16);
    }

    return (*(v41 + 8))(v23, v20);
  }

  LOBYTE(v43) = 2;
  sub_20C337044();
  v25 = v35;
  sub_20C36D1B4();
  LOBYTE(v43) = 0;
  v26 = v37;
  v27 = v42;
  sub_20C36D1F4();
  if (!v27)
  {
    v43 = v38;
    v47 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE0, &qword_20C36EBE0);
    sub_20C30DA0C(&qword_2810E8C00, sub_20C3029B0);
    sub_20C36D234();
  }

  (*(v36 + 8))(v25, v26);
  return (*(v41 + 8))(v23, v20);
}

uint64_t LoadState.init(from:)(uint64_t *a1)
{
  result = sub_20C337140(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_20C336D84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20C337140(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t _s13FitnessForYou9LoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a4)
  {
    if (a8)
    {
      return 0;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        if (a7 != 1)
        {
          return 0;
        }

        if (a1 == 4)
        {
          if (a5 != 4)
          {
            return 0;
          }
        }

        else if (a5 == 4 || a5 != a1)
        {
          return 0;
        }
      }

      else if (a1 | a2)
      {
        if (a7 != 2 || a5 != 1 || a6)
        {
          return 0;
        }
      }

      else if (a7 != 2 || a6 | a5)
      {
        return 0;
      }
    }

    else if (a7 || (a1 != a5 || a2 != a6) && (sub_20C36D264() & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  if (a4 != 1)
  {
    if (a3 | a2 | a1)
    {
      if (a8 != 2 || a5 != 1 || a7 | a6)
      {
        return 0;
      }
    }

    else if (a8 != 2 || a6 | a5 | a7)
    {
      return 0;
    }

    return 1;
  }

  if (a8 != 1)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6 || (v8 = a3, v9 = a7, v10 = sub_20C36D264(), a3 = v8, a7 = v9, v11 = v10, result = 0, (v11 & 1) != 0))
  {

    return sub_20C33279C(a3, a7);
  }

  return result;
}

unint64_t sub_20C336F9C()
{
  result = qword_27C79E8F0;
  if (!qword_27C79E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8F0);
  }

  return result;
}

unint64_t sub_20C336FF0()
{
  result = qword_27C79E8F8;
  if (!qword_27C79E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E8F8);
  }

  return result;
}

unint64_t sub_20C337044()
{
  result = qword_27C79E900;
  if (!qword_27C79E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E900);
  }

  return result;
}

unint64_t sub_20C337098()
{
  result = qword_27C79E908;
  if (!qword_27C79E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E908);
  }

  return result;
}

unint64_t sub_20C3370EC()
{
  result = qword_27C79E910;
  if (!qword_27C79E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E910);
  }

  return result;
}

uint64_t sub_20C337140(uint64_t *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E980, &qword_20C374BD0);
  v40 = *(v44 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E988, &qword_20C374BD8);
  v45 = *(v47 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E990, &qword_20C374BE0);
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E998, &qword_20C374BE8);
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E9A0, &qword_20C374BF0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_20C336F9C();
  v21 = v49;
  sub_20C36D364();
  if (v21)
  {
    goto LABEL_10;
  }

  v22 = v13;
  v38 = v10;
  v39 = 0;
  v23 = v47;
  v10 = v48;
  v24 = v46;
  v49 = v15;
  v25 = sub_20C36D194();
  v26 = (2 * *(v25 + 16)) | 1;
  v52 = v25;
  v53 = v25 + 32;
  v54 = 0;
  v55 = v26;
  v27 = sub_20C32A50C();
  if (v27 == 4 || v54 != v55 >> 1)
  {
    v10 = sub_20C36D064();
    swift_allocError();
    v30 = v29;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0) + 48);
    *v30 = &type metadata for LoadState;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v10 - 8) + 104))(v30, *MEMORY[0x277D84160], v10);
    swift_willThrow();
    (*(v49 + 8))(v18, v14);
    goto LABEL_9;
  }

  if (v27 > 1u)
  {
    v33 = v49;
    if (v27 == 2)
    {
      LOBYTE(v51) = 2;
      sub_20C337044();
      v34 = v39;
      sub_20C36D0F4();
      if (!v34)
      {
        LOBYTE(v51) = 0;
        v10 = sub_20C36D144();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79DBE0, &qword_20C36EBE0);
        v56 = 1;
        sub_20C30DA0C(&qword_27C79DC00, sub_20C302E84);
        sub_20C36D184();
        (*(v45 + 8))(v24, v23);
      }

      (*(v33 + 8))(v18, v14);
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    LOBYTE(v51) = 3;
    sub_20C336FF0();
    v36 = v39;
    sub_20C36D0F4();
    if (!v36)
    {
      (*(v40 + 8))(v10, v44);
      (*(v33 + 8))(v18, v14);
      swift_unknownObjectRelease();
      v10 = 1;
      goto LABEL_10;
    }

    (*(v33 + 8))(v18, v14);
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  if (!v27)
  {
    LOBYTE(v51) = 0;
    sub_20C3370EC();
    v28 = v39;
    sub_20C36D0F4();
    if (!v28)
    {
      (*(v41 + 8))(v22, v38);
      (*(v49 + 8))(v18, v14);
      swift_unknownObjectRelease();
      v10 = 0;
      goto LABEL_10;
    }

    (*(v49 + 8))(v18, v14);
    goto LABEL_9;
  }

  LOBYTE(v51) = 1;
  sub_20C337098();
  v35 = v39;
  sub_20C36D0F4();
  v10 = v35;
  if (v35)
  {
    (*(v49 + 8))(v18, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_20C30DAD8();
    v37 = v43;
    sub_20C36D184();
    (*(v42 + 8))(v9, v37);
    (*(v49 + 8))(v18, v14);
    swift_unknownObjectRelease();
    v10 = v51;
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v50);
  return v10;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_20C3379D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20C337A20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_20C337A68(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_20C337AE8()
{
  result = qword_27C79E918;
  if (!qword_27C79E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E918);
  }

  return result;
}

unint64_t sub_20C337B40()
{
  result = qword_27C79E920;
  if (!qword_27C79E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E920);
  }

  return result;
}

unint64_t sub_20C337B98()
{
  result = qword_27C79E928;
  if (!qword_27C79E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E928);
  }

  return result;
}

unint64_t sub_20C337BF0()
{
  result = qword_27C79E930;
  if (!qword_27C79E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E930);
  }

  return result;
}

unint64_t sub_20C337C48()
{
  result = qword_27C79E938;
  if (!qword_27C79E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E938);
  }

  return result;
}

unint64_t sub_20C337CA0()
{
  result = qword_27C79E940;
  if (!qword_27C79E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E940);
  }

  return result;
}

unint64_t sub_20C337CF8()
{
  result = qword_27C79E948;
  if (!qword_27C79E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E948);
  }

  return result;
}

unint64_t sub_20C337D50()
{
  result = qword_27C79E950;
  if (!qword_27C79E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E950);
  }

  return result;
}

unint64_t sub_20C337DA8()
{
  result = qword_27C79E958;
  if (!qword_27C79E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E958);
  }

  return result;
}

unint64_t sub_20C337E00()
{
  result = qword_27C79E960;
  if (!qword_27C79E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E960);
  }

  return result;
}

unint64_t sub_20C337E58()
{
  result = qword_27C79E968;
  if (!qword_27C79E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E968);
  }

  return result;
}

unint64_t sub_20C337EB0()
{
  result = qword_27C79E970;
  if (!qword_27C79E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E970);
  }

  return result;
}

unint64_t sub_20C337F08()
{
  result = qword_27C79E978;
  if (!qword_27C79E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E978);
  }

  return result;
}

id sub_20C337F74()
{
  type metadata accessor for AssetBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27C79E9A8 = result;
  return result;
}

id static NSBundle.asset.getter()
{
  if (qword_27C79D760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27C79E9A8;

  return v0;
}

void static NSBundle.asset.setter(uint64_t a1)
{
  if (qword_27C79D760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27C79E9A8;
  qword_27C79E9A8 = a1;
}

uint64_t (*static NSBundle.asset.modify())()
{
  if (qword_27C79D760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

__n128 Layout.contentMargins.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

double Layout.imageSequenceViewSize.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

_OWORD *Layout.init(contentMargins:imageSequenceViewSize:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = result[1];
  *a2 = *result;
  *(a2 + 16) = v4;
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  return result;
}

unint64_t sub_20C3381B8()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x4D746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_20C338204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261;
  if (v6 || (sub_20C36D264() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020C377F80 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C36D264();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C3382F0(uint64_t a1)
{
  v2 = sub_20C3387A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C33832C(uint64_t a1)
{
  v2 = sub_20C3387A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Layout.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E9B0, &qword_20C374C20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(v3 + 4);
  v11 = *(v3 + 5);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3387A8();
  sub_20C36D374();
  v13 = v3[1];
  v17 = *v3;
  v18 = v13;
  v16 = 0;
  sub_20C2FD43C();
  sub_20C36D234();
  if (!v2)
  {
    *&v17 = v10;
    *(&v17 + 1) = v11;
    v16 = 1;
    type metadata accessor for CGSize(0);
    sub_20C3387FC(&qword_27C79E9C0);
    sub_20C36D234();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Layout.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E9C8, &qword_20C374C28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C3387A8();
  sub_20C36D364();
  if (!v2)
  {
    v18 = 0;
    sub_20C2FD718();
    sub_20C36D184();
    v14 = v17;
    v15 = v16;
    type metadata accessor for CGSize(0);
    v18 = 1;
    sub_20C3387FC(&qword_27C79E9D0);
    sub_20C36D184();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    v12 = v16;
    *a2 = v15;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s13FitnessForYou6LayoutV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) == 0)
  {
    return 0;
  }

  if (a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[2].f64[0] == a2[2].f64[0];
  }

  return 0;
}

unint64_t sub_20C3387A8()
{
  result = qword_27C79E9B8;
  if (!qword_27C79E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E9B8);
  }

  return result;
}

uint64_t sub_20C3387FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C338864()
{
  result = qword_27C79E9D8;
  if (!qword_27C79E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E9D8);
  }

  return result;
}

unint64_t sub_20C3388BC()
{
  result = qword_27C79E9E0;
  if (!qword_27C79E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E9E0);
  }

  return result;
}

unint64_t sub_20C338914()
{
  result = qword_27C79E9E8;
  if (!qword_27C79E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79E9E8);
  }

  return result;
}

uint64_t sub_20C33898C()
{
  v1 = 0x6269726373627573;
  if (*v0 != 1)
  {
    v1 = 0x7263736275736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_20C3389F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C33919C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C338A1C(uint64_t a1)
{
  v2 = sub_20C338F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C338A58(uint64_t a1)
{
  v2 = sub_20C338F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C338A94(uint64_t a1)
{
  v2 = sub_20C339024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C338AD0(uint64_t a1)
{
  v2 = sub_20C339024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C338B0C(uint64_t a1)
{
  v2 = sub_20C339078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C338B48(uint64_t a1)
{
  v2 = sub_20C339078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C338B84(uint64_t a1)
{
  v2 = sub_20C338FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C338BC0(uint64_t a1)
{
  v2 = sub_20C338FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionState.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E9F0, &qword_20C374E10);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79E9F8, &qword_20C374E18);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA00, &qword_20C374E20);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA08, &qword_20C374E28);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C338F7C();
  sub_20C36D374();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_20C339024();
      sub_20C36D1B4();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_20C338FD0();
      v21 = v27;
      sub_20C36D1B4();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_20C339078();
    sub_20C36D1B4();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

unint64_t sub_20C338F7C()
{
  result = qword_27C79EA10;
  if (!qword_27C79EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA10);
  }

  return result;
}

unint64_t sub_20C338FD0()
{
  result = qword_27C79EA18;
  if (!qword_27C79EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA18);
  }

  return result;
}

unint64_t sub_20C339024()
{
  result = qword_27C79EA20;
  if (!qword_27C79EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA20);
  }

  return result;
}

unint64_t sub_20C339078()
{
  result = qword_27C79EA28;
  if (!qword_27C79EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA28);
  }

  return result;
}

uint64_t sub_20C3390E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20C3392C0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SubscriptionState.hashValue.getter(unsigned __int8 a1)
{
  sub_20C36D314();
  MEMORY[0x20F2F7E60](a1);
  return sub_20C36D354();
}

uint64_t sub_20C33919C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_20C36D264() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000006465 || (sub_20C36D264() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEC00000064656269)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C36D264();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_20C3392C0(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA78, &qword_20C375250);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA80, &qword_20C375258);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA88, &qword_20C375260);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EA90, &qword_20C375268);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_20C338F7C();
  v18 = v39;
  sub_20C36D364();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_20C36D194();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_20C32A510();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_20C339024();
          sub_20C36D0F4();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_20C338FD0();
        v29 = v15;
        sub_20C36D0F4();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_20C339078();
        v29 = v15;
        sub_20C36D0F4();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_20C36D064();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79D8F0, &qword_20C36E2A0) + 48);
    *v27 = &type metadata for SubscriptionState;
    sub_20C36D104();
    sub_20C36D054();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

unint64_t sub_20C339834()
{
  result = qword_2810E8DE0;
  if (!qword_2810E8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E8DE0);
  }

  return result;
}

unint64_t sub_20C3398DC()
{
  result = qword_27C79EA30;
  if (!qword_27C79EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA30);
  }

  return result;
}

unint64_t sub_20C339934()
{
  result = qword_27C79EA38;
  if (!qword_27C79EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA38);
  }

  return result;
}

unint64_t sub_20C33998C()
{
  result = qword_27C79EA40;
  if (!qword_27C79EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA40);
  }

  return result;
}

unint64_t sub_20C3399E4()
{
  result = qword_27C79EA48;
  if (!qword_27C79EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA48);
  }

  return result;
}

unint64_t sub_20C339A3C()
{
  result = qword_27C79EA50;
  if (!qword_27C79EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA50);
  }

  return result;
}

unint64_t sub_20C339A94()
{
  result = qword_27C79EA58;
  if (!qword_27C79EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA58);
  }

  return result;
}

unint64_t sub_20C339AEC()
{
  result = qword_27C79EA60;
  if (!qword_27C79EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA60);
  }

  return result;
}

unint64_t sub_20C339B44()
{
  result = qword_27C79EA68;
  if (!qword_27C79EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA68);
  }

  return result;
}

unint64_t sub_20C339B9C()
{
  result = qword_27C79EA70;
  if (!qword_27C79EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C79EA70);
  }

  return result;
}

uint64_t sub_20C339BF0(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_20C36CC84();
}

uint64_t sub_20C339DF8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAD0, &qword_20C375318);
  sub_20C3077A8(&qword_2810E8C38, &qword_27C79EAD0, &qword_20C375318);

  return sub_20C36C494();
}

uint64_t sub_20C339E98(uint64_t a1)
{
  v2 = (v1 + *(a1 + 80));
  v5 = *v2;
  v6 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB90, &qword_20C3754B0);
  sub_20C36CB64();
  return v4;
}

uint64_t sub_20C339EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 80));
  v6 = *v4;
  v7 = *(v4 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB90, &qword_20C3754B0);
  return sub_20C36CB74();
}

uint64_t sub_20C339F5C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 84));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBA0, &qword_20C377650);
  sub_20C36CB64();
  return v4;
}

uint64_t sub_20C339FBC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 84));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EBA0, &qword_20C377650);
  return sub_20C36CB74();
}

uint64_t sub_20C33A020(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 88));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB98, &qword_20C3754B8);
  sub_20C36CB64();
  return v3;
}

uint64_t sub_20C33A074(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 88));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB98, &qword_20C3754B8);
  return sub_20C36CB74();
}

uint64_t ForYouView.init(store:canvasViewBuilder:marketingForYouViewBuilder:imageSequenceViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>, __int128 a7, uint64_t a8)
{
  v13 = type metadata accessor for ForYouView();
  v14 = a6 + v13[20];
  sub_20C36CC34();
  sub_20C36CB54();
  *v14 = a7;
  *(v14 + 16) = a8;
  v15 = a6 + v13[21];
  sub_20C36CB54();
  *v15 = a7;
  *(v15 + 8) = *(&a7 + 1);
  v16 = v13[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAD8, qword_20C375320);
  sub_20C36CB54();
  *(a6 + v16) = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *a6 = sub_20C305E60;
  *(a6 + 8) = v17;
  *(a6 + 16) = 0;
  v18 = v13[17];

  v20 = a3(v19);
  v21 = a6 + v13[18];
  v22 = a4(v20);
  v23 = a6 + v13[19];
  a5(v22);
}

uint64_t sub_20C33A2A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[5];
  v8 = a3[6];
  v9 = a3[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAF0, &qword_20C3753A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAB0, &qword_20C375290);
  sub_20C3077A8(&qword_2810E8C40, &qword_27C79EAF0, &qword_20C3753A8);
  sub_20C34155C();
  return sub_20C36C774();
}

uint64_t sub_20C33A3EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C36C144();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20C36CD64();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v6 = qword_2810ED6B0;
  type metadata accessor for ForYouView();
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  result = sub_20C36C934();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_20C33A5B0@<X0>(char a1@<W3>, uint64_t a2@<X8>)
{
  v4 = sub_20C36C144();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_20C36CD64();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v8 = qword_2810ED6B0;
  v24 = a1;
  type metadata accessor for ForYouView();
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  v9 = sub_20C36C934();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v24 == 1)
  {
    sub_20C343EA0();

    v16 = sub_20C36C984();
    v17 = v20;
    v19 = v21;
    v18 = v22 & 1;
    sub_20C3078C8(v16, v20, v22 & 1);
  }

  sub_20C3078C8(v9, v11, v13 & 1);

  sub_20C343EF4(v16, v17, v18, v19);
  sub_20C343F38(v16, v17, v18, v19);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = v19;
  sub_20C343F38(v16, v17, v18, v19);
  sub_20C3078B8(v9, v11, v13 & 1);
}

uint64_t sub_20C33A8A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C36C144();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20C36CD64();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_20C36CD54();
  if (qword_2810E8BF0 != -1)
  {
    swift_once();
  }

  v6 = qword_2810ED6B0;
  type metadata accessor for ForYouView();
  sub_20C339DF8();
  swift_getKeyPath();
  sub_20C36CCE4();

  sub_20C36CDB4();
  sub_20C343EA0();
  result = sub_20C36C984();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_20C33AA90(char a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAC8, &qword_20C3752A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a2[3];
  v25 = a2[2];
  v26 = v10;
  v11 = a2[5];
  v27 = a2[4];
  v28 = v11;
  v12 = a2[7];
  v29 = a2[6];
  v30 = v12;
  v31 = v2;
  v32 = a1;
  v17 = v25;
  v18 = v10;
  v19 = v27;
  v20 = v11;
  v21 = v29;
  v22 = v12;
  v23 = v2;
  v24 = a1;
  v15 = nullsub_1;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EAF8, &qword_20C3753F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB00, &qword_20C375400);
  sub_20C344024();
  sub_20C3442A0();
  sub_20C36C774();
  sub_20C3077A8(&qword_2810E8C80, &qword_27C79EAC8, &qword_20C3752A8);
  sub_20C36CAD4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20C33ACBC@<X0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB78, &qword_20C375438);
  v5 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v40 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB80, &qword_20C375440);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB88, &qword_20C375448);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB28, &qword_20C375410);
  v15 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v17 = &v34 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB18, &qword_20C375408);
  v18 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v20 = &v34 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB38, &qword_20C375418);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v26 = &v34 - v25;
  if (a1 <= 1u)
  {
    v27 = v24;
    v35 = v24;
    v34 = &v34;
    MEMORY[0x28223BE20](v23);
    v28 = a2[2];
    *(&v34 - 4) = a2[1];
    *(&v34 - 3) = v28;
    *(&v34 - 2) = a2[3];
    *(&v34 - 2) = v36;
    sub_20C36CB44();
    (*(v27 + 16))(v14, v26, v21);
    swift_storeEnumTagMultiPayload();
    sub_20C3077A8(&qword_27C79EB30, &qword_27C79EB38, &qword_20C375418);
    sub_20C36C724();
    sub_20C3077F0(v17, v10, &qword_27C79EB28, &qword_20C375410);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB48, &qword_20C375420);
    sub_20C344188();
    sub_20C344238(&qword_27C79EB40, &qword_27C79EB48, &qword_20C375420);
    sub_20C36C724();
    sub_20C307858(v17, &qword_27C79EB28, &qword_20C375410);
    sub_20C3077F0(v20, v40, &qword_27C79EB18, &qword_20C375408);
    swift_storeEnumTagMultiPayload();
    sub_20C3440DC();
    sub_20C36C724();
    sub_20C307858(v20, &qword_27C79EB18, &qword_20C375408);
    return (*(v35 + 8))(v26, v21);
  }

  if (a1 == 2)
  {
    v42 = sub_20C36CAF4();
    v43 = 0;
    goto LABEL_7;
  }

  if (a1 == 3)
  {
    v42 = sub_20C36CAF4();
    v43 = 1;
LABEL_7:

    sub_20C36C724();
    v29 = v45;
    *v10 = v44;
    v10[8] = v29;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB48, &qword_20C375420);
    sub_20C344188();
    sub_20C344238(&qword_27C79EB40, &qword_27C79EB48, &qword_20C375420);
    sub_20C36C724();
    sub_20C3077F0(v20, v40, &qword_27C79EB18, &qword_20C375408);
    swift_storeEnumTagMultiPayload();
    sub_20C3440DC();
    sub_20C3077A8(&qword_27C79EB30, &qword_27C79EB38, &qword_20C375418);
    sub_20C36C724();

    return sub_20C307858(v20, &qword_27C79EB18, &qword_20C375408);
  }

  MEMORY[0x28223BE20](v23);
  v30 = a2[2];
  *(&v34 - 4) = a2[1];
  *(&v34 - 3) = v30;
  *(&v34 - 2) = a2[3];
  *(&v34 - 2) = v36;
  v32 = v31;
  sub_20C36CB44();
  (*(v32 + 16))(v40, v26, v21);
  swift_storeEnumTagMultiPayload();
  sub_20C3440DC();
  sub_20C3077A8(&qword_27C79EB30, &qword_27C79EB38, &qword_20C375418);
  sub_20C36C724();
  return (*(v32 + 8))(v26, v21);
}

double sub_20C33B51C@<D0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  *&v14 = a2;
  *(&v14 + 1) = a3;
  *&v15 = a4;
  *(&v15 + 1) = a5;
  v16 = a6;
  v17 = a7;
  type metadata accessor for ForYouView();
  sub_20C33B594(a1, &v14);
  v10 = v16;
  v11 = BYTE2(v16);
  result = *&v14;
  v13 = v15;
  *a8 = v14;
  *(a8 + 16) = v13;
  *(a8 + 32) = v10;
  *(a8 + 34) = v11;
  return result;
}

double sub_20C33B594@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_20C36C144();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_20C36CD64();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (a1 <= 1u)
  {
    if (a1)
    {
      sub_20C36CD54();
      if (qword_2810E8BF0 == -1)
      {
LABEL_13:
        v9 = qword_2810ED6B0;
        sub_20C339DF8();
        swift_getKeyPath();
        sub_20C36CCE4();

        v10 = sub_20C36C934();
        v12 = v11;
        v14 = v13 & 1;
        sub_20C3078C8(v10, v11, v13 & 1);

        sub_20C36C724();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB70, &qword_20C375430);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB48, &qword_20C375420);
        sub_20C344238(&qword_27C79EB68, &qword_27C79EB70, &qword_20C375430);
        sub_20C344238(&qword_27C79EB40, &qword_27C79EB48, &qword_20C375420);
        sub_20C36C724();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB60, &qword_20C375428);
        sub_20C34432C();
        sub_20C36C724();
        sub_20C3078B8(v10, v12, v14);

        goto LABEL_14;
      }
    }

    else
    {
      sub_20C36CD54();
      if (qword_2810E8BF0 == -1)
      {
        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_13;
  }

  if (a1 == 2 || a1 == 3)
  {
    sub_20C36CAF4();

    sub_20C36C724();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB70, &qword_20C375430);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB48, &qword_20C375420);
    sub_20C344238(&qword_27C79EB68, &qword_27C79EB70, &qword_20C375430);
    sub_20C344238(&qword_27C79EB40, &qword_27C79EB48, &qword_20C375420);
    sub_20C36C724();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB60, &qword_20C375428);
    sub_20C34432C();
    sub_20C36C724();
  }

  else
  {
    sub_20C36CD54();
    if (qword_2810E8BF0 != -1)
    {
      swift_once();
    }

    v8 = qword_2810ED6B0;
    sub_20C339DF8();
    swift_getKeyPath();
    sub_20C36CCE4();

    sub_20C36C934();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C79EB60, &qword_20C375428);
    sub_20C34432C();
    sub_20C36C724();
  }

LABEL_14:
  result = *&v16;
  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  *(a2 + 34) = v19;
  return result;
}