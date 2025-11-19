uint64_t MediaSessionController.__allocating_init()()
{
  v0 = swift_allocObject();
  MediaSessionController.init()();
  return v0;
}

uint64_t MediaSessionController.init()()
{
  v1 = v0;
  if (qword_27F958F80 != -1)
  {
    swift_once();
  }

  v2 = sub_258783764();
  __swift_project_value_buffer(v2, qword_27F95CF78);
  v3 = sub_258783744();
  v4 = sub_258783924();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258766000, v3, v4, "Setting up media tokens XPC client", v5, 2u);
    MEMORY[0x259C8A730](v5, -1, -1);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F958F90, &unk_258783F10);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_258783804();
  return v1;
}

uint64_t sub_2587675CC()
{
  v14 = v0;
  if (qword_27F958F80 != -1)
  {
    swift_once();
  }

  v1 = sub_258783764();
  v0[7] = __swift_project_value_buffer(v1, qword_27F95CF78);
  v2 = sub_258783744();
  v3 = sub_258783924();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = sub_258783884();
    v8 = sub_258771F6C(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_258766000, v2, v3, "Sending message %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x259C8A730](v5, -1, -1);
    MEMORY[0x259C8A730](v4, -1, -1);
  }

  v9 = *(v0[6] + 16);
  v10 = *(MEMORY[0x277CF7E48] + 4);
  v11 = swift_task_alloc();
  v0[8] = v11;
  sub_25876D9E0();
  *v11 = v0;
  v11[1] = sub_2587677A4;

  return MEMORY[0x282149820]();
}

uint64_t sub_2587677A4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2587678D8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2587678D8()
{
  v24 = v0;
  v1 = v0[9];
  v2 = v0[7];
  MEMORY[0x259C8A640](v1);
  v3 = sub_258783744();
  v4 = sub_258783904();
  MEMORY[0x259C8A630](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v6 = 136315138;
    swift_getErrorValue();
    v7 = v0[2];
    v8 = v0[3];
    v9 = sub_258783934();
    v10 = *(v9 - 8);
    v11 = *(v10 + 64) + 15;
    v12 = swift_task_alloc();
    v13 = *(v8 - 8);
    (*(v13 + 16))(v12, v7, v8);
    (*(v13 + 56))(v12, 0, 1, v8);
    v14 = sub_2587832BC(v12, v8);
    v16 = v15;
    (*(v10 + 8))(v12, v9);

    v17 = sub_258771F6C(v14, v16, &v23);

    *(v6 + 4) = v17;
    _os_log_impl(&dword_258766000, v3, v4, "Failed to send message with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x259C8A730](v22, -1, -1);
    MEMORY[0x259C8A730](v6, -1, -1);
  }

  v18 = v0[9];
  swift_willThrow();
  v19 = v0[1];
  v20 = v0[9];

  return v19();
}

uint64_t sub_258767B68()
{
  v14 = v0;
  if (qword_27F958F80 != -1)
  {
    swift_once();
  }

  v1 = sub_258783764();
  v0[8] = __swift_project_value_buffer(v1, qword_27F95CF78);
  v2 = sub_258783744();
  v3 = sub_258783924();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = sub_258783884();
    v8 = sub_258771F6C(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_258766000, v2, v3, "Sending message %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x259C8A730](v5, -1, -1);
    MEMORY[0x259C8A730](v4, -1, -1);
  }

  v9 = *(v0[7] + 16);
  v10 = *(MEMORY[0x277CF7E48] + 4);
  v11 = swift_task_alloc();
  v0[9] = v11;
  sub_25876D98C();
  *v11 = v0;
  v11[1] = sub_258767D44;

  return MEMORY[0x282149820](v0 + 5);
}

uint64_t sub_258767D44()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258767E7C, 0, 0);
  }

  else
  {
    v4 = v3[5];
    v5 = v3[1];

    return v5(v4);
  }
}

uint64_t sub_258767E7C()
{
  v24 = v0;
  v1 = v0[10];
  v2 = v0[8];
  MEMORY[0x259C8A640](v1);
  v3 = sub_258783744();
  v4 = sub_258783904();
  MEMORY[0x259C8A630](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v6 = 136315138;
    swift_getErrorValue();
    v7 = v0[2];
    v8 = v0[3];
    v9 = sub_258783934();
    v10 = *(v9 - 8);
    v11 = *(v10 + 64) + 15;
    v12 = swift_task_alloc();
    v13 = *(v8 - 8);
    (*(v13 + 16))(v12, v7, v8);
    (*(v13 + 56))(v12, 0, 1, v8);
    v14 = sub_2587832BC(v12, v8);
    v16 = v15;
    (*(v10 + 8))(v12, v9);

    v17 = sub_258771F6C(v14, v16, &v23);

    *(v6 + 4) = v17;
    _os_log_impl(&dword_258766000, v3, v4, "Failed to send message with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x259C8A730](v22, -1, -1);
    MEMORY[0x259C8A730](v6, -1, -1);
  }

  v18 = v0[10];
  swift_willThrow();
  v19 = v0[1];
  v20 = v0[10];

  return v19();
}

uint64_t sub_2587680EC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F958FD8, &qword_258784050) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for ValidateMediaSession();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258768208, 0, 0);
}

uint64_t sub_258768208()
{
  v29 = v0;
  if (qword_27F958F80 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = sub_258783764();
  v0[15] = __swift_project_value_buffer(v3, qword_27F95CF78);
  sub_25876D7AC(v2, v1, type metadata accessor for ValidateMediaSession);
  v4 = sub_258783744();
  v5 = sub_258783924();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    sub_25876D7AC(v7, v10, type metadata accessor for ValidateMediaSession);
    (*(v9 + 56))(v10, 0, 1, v8);
    sub_25876D85C(v10, v11, &qword_27F958FD8, &qword_258784050);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      sub_25876D8C4(v0[8], &qword_27F958FD8, &qword_258784050);
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[12];
      v17 = v0[13];
      v18 = v0[10];
      sub_25876D924(v0[8], v17, type metadata accessor for ValidateMediaSession);
      sub_25876D7AC(v17, v16, type metadata accessor for ValidateMediaSession);
      v15 = sub_258783884();
      v14 = v19;
      sub_25876CB94(v17, type metadata accessor for ValidateMediaSession);
    }

    v20 = v0[14];
    sub_25876D8C4(v0[9], &qword_27F958FD8, &qword_258784050);
    sub_25876CB94(v20, type metadata accessor for ValidateMediaSession);
    v21 = sub_258771F6C(v15, v14, &v28);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_258766000, v4, v5, "Sending message %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C8A730](v13, -1, -1);
    MEMORY[0x259C8A730](v12, -1, -1);
  }

  else
  {

    sub_25876CB94(v7, type metadata accessor for ValidateMediaSession);
  }

  v22 = *(v0[7] + 16);
  v23 = *(MEMORY[0x277CF7E48] + 4);
  v24 = swift_task_alloc();
  v0[16] = v24;
  sub_25876D814(&qword_27F958FE0, type metadata accessor for ValidateMediaSession);
  *v24 = v0;
  v24[1] = sub_2587685C0;
  v25 = v0[10];
  v26 = v0[6];

  return MEMORY[0x282149820](v0 + 18);
}

uint64_t sub_2587685C0()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  *(v3 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25876DA38, 0, 0);
  }

  else
  {
    v5 = *(v3 + 104);
    v4 = *(v3 + 112);
    v6 = *(v3 + 96);
    v8 = *(v3 + 64);
    v7 = *(v3 + 72);
    v9 = *(v3 + 144);

    v10 = *(v3 + 8);

    return v10(v9);
  }
}

uint64_t sub_258768748(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F958FB8, &qword_258784040) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for ValidateMediaToken();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258768864, 0, 0);
}

uint64_t sub_258768864()
{
  v29 = v0;
  if (qword_27F958F80 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = sub_258783764();
  v0[15] = __swift_project_value_buffer(v3, qword_27F95CF78);
  sub_25876D7AC(v2, v1, type metadata accessor for ValidateMediaToken);
  v4 = sub_258783744();
  v5 = sub_258783924();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    sub_25876D7AC(v7, v10, type metadata accessor for ValidateMediaToken);
    (*(v9 + 56))(v10, 0, 1, v8);
    sub_25876D85C(v10, v11, &qword_27F958FB8, &qword_258784040);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      sub_25876D8C4(v0[8], &qword_27F958FB8, &qword_258784040);
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[12];
      v17 = v0[13];
      v18 = v0[10];
      sub_25876D924(v0[8], v17, type metadata accessor for ValidateMediaToken);
      sub_25876D7AC(v17, v16, type metadata accessor for ValidateMediaToken);
      v15 = sub_258783884();
      v14 = v19;
      sub_25876CB94(v17, type metadata accessor for ValidateMediaToken);
    }

    v20 = v0[14];
    sub_25876D8C4(v0[9], &qword_27F958FB8, &qword_258784040);
    sub_25876CB94(v20, type metadata accessor for ValidateMediaToken);
    v21 = sub_258771F6C(v15, v14, &v28);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_258766000, v4, v5, "Sending message %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C8A730](v13, -1, -1);
    MEMORY[0x259C8A730](v12, -1, -1);
  }

  else
  {

    sub_25876CB94(v7, type metadata accessor for ValidateMediaToken);
  }

  v22 = *(v0[7] + 16);
  v23 = *(MEMORY[0x277CF7E48] + 4);
  v24 = swift_task_alloc();
  v0[16] = v24;
  sub_25876D814(&qword_27F958FC0, type metadata accessor for ValidateMediaToken);
  *v24 = v0;
  v24[1] = sub_258768C1C;
  v25 = v0[10];
  v26 = v0[6];

  return MEMORY[0x282149820](v0 + 18);
}

uint64_t sub_258768C1C()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  *(v3 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258768DA4, 0, 0);
  }

  else
  {
    v5 = *(v3 + 104);
    v4 = *(v3 + 112);
    v6 = *(v3 + 96);
    v8 = *(v3 + 64);
    v7 = *(v3 + 72);
    v9 = *(v3 + 144);

    v10 = *(v3 + 8);

    return v10(v9);
  }
}

uint64_t sub_258768DA4()
{
  v29 = v0;
  v1 = v0[17];
  v2 = v0[15];
  MEMORY[0x259C8A640](v1);
  v3 = sub_258783744();
  v4 = sub_258783904();
  MEMORY[0x259C8A630](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v6 = 136315138;
    swift_getErrorValue();
    v7 = v0[2];
    v8 = v0[3];
    v9 = sub_258783934();
    v10 = *(v9 - 8);
    v11 = *(v10 + 64) + 15;
    v12 = swift_task_alloc();
    v13 = *(v8 - 8);
    (*(v13 + 16))(v12, v7, v8);
    (*(v13 + 56))(v12, 0, 1, v8);
    v14 = sub_2587832BC(v12, v8);
    v16 = v15;
    (*(v10 + 8))(v12, v9);

    v17 = sub_258771F6C(v14, v16, &v28);

    *(v6 + 4) = v17;
    _os_log_impl(&dword_258766000, v3, v4, "Failed to send message with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x259C8A730](v27, -1, -1);
    MEMORY[0x259C8A730](v6, -1, -1);
  }

  v18 = v0[17];
  v19 = v0[13];
  v20 = v0[14];
  v21 = v0[12];
  v23 = v0[8];
  v22 = v0[9];
  swift_willThrow();

  v24 = v0[1];
  v25 = v0[17];

  return v24(0);
}

uint64_t sub_25876904C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F958FF8, &qword_258784060) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  MediaSession = type metadata accessor for CreateMediaSession();
  v2[10] = MediaSession;
  v5 = *(MediaSession - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258769168, 0, 0);
}

uint64_t sub_258769168()
{
  v30 = v0;
  if (qword_27F958F80 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = sub_258783764();
  v0[15] = __swift_project_value_buffer(v3, qword_27F95CF78);
  sub_25876D7AC(v2, v1, type metadata accessor for CreateMediaSession);
  v4 = sub_258783744();
  v5 = sub_258783924();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    sub_25876D7AC(v7, v10, type metadata accessor for CreateMediaSession);
    (*(v9 + 56))(v10, 0, 1, v8);
    sub_25876D85C(v10, v11, &qword_27F958FF8, &qword_258784060);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      sub_25876D8C4(v0[8], &qword_27F958FF8, &qword_258784060);
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[12];
      v17 = v0[13];
      v18 = v0[10];
      sub_25876D924(v0[8], v17, type metadata accessor for CreateMediaSession);
      sub_25876D7AC(v17, v16, type metadata accessor for CreateMediaSession);
      v15 = sub_258783884();
      v14 = v19;
      sub_25876CB94(v17, type metadata accessor for CreateMediaSession);
    }

    v20 = v0[14];
    sub_25876D8C4(v0[9], &qword_27F958FF8, &qword_258784060);
    sub_25876CB94(v20, type metadata accessor for CreateMediaSession);
    v21 = sub_258771F6C(v15, v14, &v29);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_258766000, v4, v5, "Sending message %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C8A730](v13, -1, -1);
    MEMORY[0x259C8A730](v12, -1, -1);
  }

  else
  {

    sub_25876CB94(v7, type metadata accessor for CreateMediaSession);
  }

  v22 = *(v0[7] + 16);
  v23 = *(MEMORY[0x277CF7E50] + 4);
  v24 = swift_task_alloc();
  v0[16] = v24;
  v25 = sub_25876D814(&qword_27F959000, type metadata accessor for CreateMediaSession);
  *v24 = v0;
  v24[1] = sub_25876951C;
  v26 = v0[10];
  v27 = v0[6];

  return MEMORY[0x282149828](v27, v26, v25);
}

uint64_t sub_25876951C()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25876DA34, 0, 0);
  }

  else
  {
    v5 = v3[13];
    v4 = v3[14];
    v6 = v3[12];
    v7 = v3[8];
    v8 = v3[9];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_258769690(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F958FE8, &qword_258784058) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for EndMediaSession();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2587697AC, 0, 0);
}

uint64_t sub_2587697AC()
{
  v30 = v0;
  if (qword_27F958F80 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = sub_258783764();
  v0[15] = __swift_project_value_buffer(v3, qword_27F95CF78);
  sub_25876D7AC(v2, v1, type metadata accessor for EndMediaSession);
  v4 = sub_258783744();
  v5 = sub_258783924();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    sub_25876D7AC(v7, v10, type metadata accessor for EndMediaSession);
    (*(v9 + 56))(v10, 0, 1, v8);
    sub_25876D85C(v10, v11, &qword_27F958FE8, &qword_258784058);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      sub_25876D8C4(v0[8], &qword_27F958FE8, &qword_258784058);
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[12];
      v17 = v0[13];
      v18 = v0[10];
      sub_25876D924(v0[8], v17, type metadata accessor for EndMediaSession);
      sub_25876D7AC(v17, v16, type metadata accessor for EndMediaSession);
      v15 = sub_258783884();
      v14 = v19;
      sub_25876CB94(v17, type metadata accessor for EndMediaSession);
    }

    v20 = v0[14];
    sub_25876D8C4(v0[9], &qword_27F958FE8, &qword_258784058);
    sub_25876CB94(v20, type metadata accessor for EndMediaSession);
    v21 = sub_258771F6C(v15, v14, &v29);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_258766000, v4, v5, "Sending message %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C8A730](v13, -1, -1);
    MEMORY[0x259C8A730](v12, -1, -1);
  }

  else
  {

    sub_25876CB94(v7, type metadata accessor for EndMediaSession);
  }

  v22 = *(v0[7] + 16);
  v23 = *(MEMORY[0x277CF7E50] + 4);
  v24 = swift_task_alloc();
  v0[16] = v24;
  v25 = sub_25876D814(&qword_27F958FF0, type metadata accessor for EndMediaSession);
  *v24 = v0;
  v24[1] = sub_25876951C;
  v26 = v0[10];
  v27 = v0[6];

  return MEMORY[0x282149828](v27, v26, v25);
}

uint64_t sub_258769B60(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F958FC8, &qword_258784048) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for RequestMediaToken();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258769C7C, 0, 0);
}

uint64_t sub_258769C7C()
{
  v30 = v0;
  if (qword_27F958F80 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = sub_258783764();
  v0[15] = __swift_project_value_buffer(v3, qword_27F95CF78);
  sub_25876D7AC(v2, v1, type metadata accessor for RequestMediaToken);
  v4 = sub_258783744();
  v5 = sub_258783924();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    sub_25876D7AC(v7, v10, type metadata accessor for RequestMediaToken);
    (*(v9 + 56))(v10, 0, 1, v8);
    sub_25876D85C(v10, v11, &qword_27F958FC8, &qword_258784048);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      sub_25876D8C4(v0[8], &qword_27F958FC8, &qword_258784048);
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[12];
      v17 = v0[13];
      v18 = v0[10];
      sub_25876D924(v0[8], v17, type metadata accessor for RequestMediaToken);
      sub_25876D7AC(v17, v16, type metadata accessor for RequestMediaToken);
      v15 = sub_258783884();
      v14 = v19;
      sub_25876CB94(v17, type metadata accessor for RequestMediaToken);
    }

    v20 = v0[14];
    sub_25876D8C4(v0[9], &qword_27F958FC8, &qword_258784048);
    sub_25876CB94(v20, type metadata accessor for RequestMediaToken);
    v21 = sub_258771F6C(v15, v14, &v29);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_258766000, v4, v5, "Sending message %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C8A730](v13, -1, -1);
    MEMORY[0x259C8A730](v12, -1, -1);
  }

  else
  {

    sub_25876CB94(v7, type metadata accessor for RequestMediaToken);
  }

  v22 = *(v0[7] + 16);
  v23 = *(MEMORY[0x277CF7E50] + 4);
  v24 = swift_task_alloc();
  v0[16] = v24;
  v25 = sub_25876D814(&qword_27F958FD0, type metadata accessor for RequestMediaToken);
  *v24 = v0;
  v24[1] = sub_25876951C;
  v26 = v0[10];
  v27 = v0[6];

  return MEMORY[0x282149828](v27, v26, v25);
}

uint64_t sub_25876A030(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F958FA8, &qword_258784038) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for ActivateMediaToken();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25876A14C, 0, 0);
}

uint64_t sub_25876A14C()
{
  v30 = v0;
  if (qword_27F958F80 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = sub_258783764();
  v0[15] = __swift_project_value_buffer(v3, qword_27F95CF78);
  sub_25876D7AC(v2, v1, type metadata accessor for ActivateMediaToken);
  v4 = sub_258783744();
  v5 = sub_258783924();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    sub_25876D7AC(v7, v10, type metadata accessor for ActivateMediaToken);
    (*(v9 + 56))(v10, 0, 1, v8);
    sub_25876D85C(v10, v11, &qword_27F958FA8, &qword_258784038);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      sub_25876D8C4(v0[8], &qword_27F958FA8, &qword_258784038);
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[12];
      v17 = v0[13];
      v18 = v0[10];
      sub_25876D924(v0[8], v17, type metadata accessor for ActivateMediaToken);
      sub_25876D7AC(v17, v16, type metadata accessor for ActivateMediaToken);
      v15 = sub_258783884();
      v14 = v19;
      sub_25876CB94(v17, type metadata accessor for ActivateMediaToken);
    }

    v20 = v0[14];
    sub_25876D8C4(v0[9], &qword_27F958FA8, &qword_258784038);
    sub_25876CB94(v20, type metadata accessor for ActivateMediaToken);
    v21 = sub_258771F6C(v15, v14, &v29);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_258766000, v4, v5, "Sending message %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C8A730](v13, -1, -1);
    MEMORY[0x259C8A730](v12, -1, -1);
  }

  else
  {

    sub_25876CB94(v7, type metadata accessor for ActivateMediaToken);
  }

  v22 = *(v0[7] + 16);
  v23 = *(MEMORY[0x277CF7E50] + 4);
  v24 = swift_task_alloc();
  v0[16] = v24;
  v25 = sub_25876D814(&qword_27F958FB0, type metadata accessor for ActivateMediaToken);
  *v24 = v0;
  v24[1] = sub_25876951C;
  v26 = v0[10];
  v27 = v0[6];

  return MEMORY[0x282149828](v27, v26, v25);
}

uint64_t sub_25876A500(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F958F98, &qword_258784030) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for DeactivateMediaToken();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25876A61C, 0, 0);
}

uint64_t sub_25876A61C()
{
  v30 = v0;
  if (qword_27F958F80 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[6];
  v3 = sub_258783764();
  v0[15] = __swift_project_value_buffer(v3, qword_27F95CF78);
  sub_25876D7AC(v2, v1, type metadata accessor for DeactivateMediaToken);
  v4 = sub_258783744();
  v5 = sub_258783924();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    sub_25876D7AC(v7, v10, type metadata accessor for DeactivateMediaToken);
    (*(v9 + 56))(v10, 0, 1, v8);
    sub_25876D85C(v10, v11, &qword_27F958F98, &qword_258784030);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      sub_25876D8C4(v0[8], &qword_27F958F98, &qword_258784030);
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[12];
      v17 = v0[13];
      v18 = v0[10];
      sub_25876D924(v0[8], v17, type metadata accessor for DeactivateMediaToken);
      sub_25876D7AC(v17, v16, type metadata accessor for DeactivateMediaToken);
      v15 = sub_258783884();
      v14 = v19;
      sub_25876CB94(v17, type metadata accessor for DeactivateMediaToken);
    }

    v20 = v0[14];
    sub_25876D8C4(v0[9], &qword_27F958F98, &qword_258784030);
    sub_25876CB94(v20, type metadata accessor for DeactivateMediaToken);
    v21 = sub_258771F6C(v15, v14, &v29);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_258766000, v4, v5, "Sending message %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C8A730](v13, -1, -1);
    MEMORY[0x259C8A730](v12, -1, -1);
  }

  else
  {

    sub_25876CB94(v7, type metadata accessor for DeactivateMediaToken);
  }

  v22 = *(v0[7] + 16);
  v23 = *(MEMORY[0x277CF7E50] + 4);
  v24 = swift_task_alloc();
  v0[16] = v24;
  v25 = sub_25876D814(&qword_27F958FA0, type metadata accessor for DeactivateMediaToken);
  *v24 = v0;
  v24[1] = sub_25876A9D0;
  v26 = v0[10];
  v27 = v0[6];

  return MEMORY[0x282149828](v27, v26, v25);
}

uint64_t sub_25876A9D0()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25876AB44, 0, 0);
  }

  else
  {
    v5 = v3[13];
    v4 = v3[14];
    v6 = v3[12];
    v7 = v3[8];
    v8 = v3[9];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_25876AB44()
{
  v29 = v0;
  v1 = v0[17];
  v2 = v0[15];
  MEMORY[0x259C8A640](v1);
  v3 = sub_258783744();
  v4 = sub_258783904();
  MEMORY[0x259C8A630](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v6 = 136315138;
    swift_getErrorValue();
    v7 = v0[2];
    v8 = v0[3];
    v9 = sub_258783934();
    v10 = *(v9 - 8);
    v11 = *(v10 + 64) + 15;
    v12 = swift_task_alloc();
    v13 = *(v8 - 8);
    (*(v13 + 16))(v12, v7, v8);
    (*(v13 + 56))(v12, 0, 1, v8);
    v14 = sub_2587832BC(v12, v8);
    v16 = v15;
    (*(v10 + 8))(v12, v9);

    v17 = sub_258771F6C(v14, v16, &v28);

    *(v6 + 4) = v17;
    _os_log_impl(&dword_258766000, v3, v4, "Failed to send message with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x259C8A730](v27, -1, -1);
    MEMORY[0x259C8A730](v6, -1, -1);
  }

  v18 = v0[17];
  v19 = v0[13];
  v20 = v0[14];
  v21 = v0[12];
  v23 = v0[8];
  v22 = v0[9];
  swift_willThrow();

  v24 = v0[1];
  v25 = v0[17];

  return v24();
}

uint64_t sub_25876ADE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25876AE74;

  return sub_2587675AC();
}

uint64_t sub_25876AE74()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25876AF68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25876AFF4;

  return sub_258767B48();
}

uint64_t sub_25876AFF4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_25876B0F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for CreateMediaSession() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25876B184, 0, 0);
}

uint64_t sub_25876B184()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_258783704();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25876B25C;
  v6 = v0[3];
  v5 = v0[4];

  return sub_25876904C(v5);
}

uint64_t sub_25876B25C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_25876B3F4;
  }

  else
  {
    v3 = sub_25876B370;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25876B370()
{
  sub_25876CB94(*(v0 + 32), type metadata accessor for CreateMediaSession);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25876B3F4()
{
  sub_25876CB94(v0[4], type metadata accessor for CreateMediaSession);

  v1 = v0[1];
  v2 = v0[6];

  return v1();
}

uint64_t sub_25876B478(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for EndMediaSession() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25876B508, 0, 0);
}

uint64_t sub_25876B508()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_258783704();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25876B5E0;
  v6 = v0[3];
  v5 = v0[4];

  return sub_258769690(v5);
}

uint64_t sub_25876B5E0()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_25876B778;
  }

  else
  {
    v3 = sub_25876B6F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25876B6F4()
{
  sub_25876CB94(*(v0 + 32), type metadata accessor for EndMediaSession);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25876B778()
{
  sub_25876CB94(v0[4], type metadata accessor for EndMediaSession);

  v1 = v0[1];
  v2 = v0[6];

  return v1();
}

uint64_t sub_25876B7FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for ValidateMediaSession() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25876B88C, 0, 0);
}

uint64_t sub_25876B88C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_258783704();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25876B964;
  v6 = v0[3];
  v5 = v0[4];

  return sub_2587680EC(v5);
}

uint64_t sub_25876B964(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_25876BB18;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v7 = sub_25876BA90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25876BA90()
{
  sub_25876CB94(*(v0 + 32), type metadata accessor for ValidateMediaSession);

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_25876BB18()
{
  sub_25876CB94(v0[4], type metadata accessor for ValidateMediaSession);

  v1 = v0[1];
  v2 = v0[6];

  return v1(0);
}

uint64_t sub_25876BBA0(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for RequestMediaToken();
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x2822009F8](sub_25876BC40, 0, 0);
}

uint64_t sub_25876BC40()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = sub_258783704();
  (*(*(v5 - 8) + 16))(v2, v4, v5);
  *(v2 + *(v3 + 20)) = v1;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_25876BD30;
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);

  return sub_258769B60(v7);
}

uint64_t sub_25876BD30()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_25876BEC8;
  }

  else
  {
    v3 = sub_25876BE44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25876BE44()
{
  sub_25876CB94(*(v0 + 40), type metadata accessor for RequestMediaToken);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25876BEC8()
{
  sub_25876CB94(v0[5], type metadata accessor for RequestMediaToken);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t sub_25876BF4C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for ValidateMediaToken();
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x2822009F8](sub_25876BFEC, 0, 0);
}

uint64_t sub_25876BFEC()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = sub_258783704();
  (*(*(v5 - 8) + 16))(v2, v4, v5);
  *(v2 + *(v3 + 20)) = v1;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_25876C0DC;
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);

  return sub_258768748(v7);
}

uint64_t sub_25876C0DC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_25876C290;
  }

  else
  {
    *(v4 + 65) = a1 & 1;
    v7 = sub_25876C208;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25876C208()
{
  sub_25876CB94(*(v0 + 40), type metadata accessor for ValidateMediaToken);

  v1 = *(v0 + 8);
  v2 = *(v0 + 65);

  return v1(v2);
}

uint64_t sub_25876C290()
{
  sub_25876CB94(v0[5], type metadata accessor for ValidateMediaToken);

  v1 = v0[1];
  v2 = v0[7];

  return v1(0);
}

uint64_t sub_25876C318(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for ActivateMediaToken();
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x2822009F8](sub_25876C3B8, 0, 0);
}

uint64_t sub_25876C3B8()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = sub_258783704();
  (*(*(v5 - 8) + 16))(v2, v4, v5);
  *(v2 + *(v3 + 20)) = v1;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_25876C4A8;
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);

  return sub_25876A030(v7);
}

uint64_t sub_25876C4A8()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_25876C640;
  }

  else
  {
    v3 = sub_25876C5BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25876C5BC()
{
  sub_25876CB94(*(v0 + 40), type metadata accessor for ActivateMediaToken);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25876C640()
{
  sub_25876CB94(v0[5], type metadata accessor for ActivateMediaToken);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t sub_25876C6C4(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for DeactivateMediaToken();
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x2822009F8](sub_25876C764, 0, 0);
}

uint64_t sub_25876C764()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = sub_258783704();
  (*(*(v5 - 8) + 16))(v2, v4, v5);
  *(v2 + *(v3 + 20)) = v1;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_25876C854;
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);

  return sub_25876A500(v7);
}

uint64_t sub_25876C854()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_25876C9EC;
  }

  else
  {
    v3 = sub_25876C968;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25876C968()
{
  sub_25876CB94(*(v0 + 40), type metadata accessor for DeactivateMediaToken);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25876C9EC()
{
  sub_25876CB94(v0[5], type metadata accessor for DeactivateMediaToken);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t MediaSessionController.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MediaSessionController.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_25876CB48(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_25876CB94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of MediaSessionController.ping()()
{
  v2 = *(*v0 + 112);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25876DA40;

  return v6();
}

uint64_t dispatch thunk of MediaSessionController.dump()()
{
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25876CE64;

  return v6();
}

uint64_t sub_25876CE64(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of MediaSessionController.createMediaSession(identifier:)(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25876DA40;

  return v8(a1);
}

uint64_t dispatch thunk of MediaSessionController.endMediaSession(identifier:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25876DA40;

  return v8(a1);
}

uint64_t dispatch thunk of MediaSessionController.validateMediaSession(identifier:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25876DA3C;

  return v8(a1);
}

uint64_t dispatch thunk of MediaSessionController.requestMediaToken(sessionID:type:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25876DA40;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MediaSessionController.validateMediaToken(sessionID:type:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25876CE64;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MediaSessionController.activateMediaToken(sessionID:type:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25876DA40;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MediaSessionController.deactivateMediaToken(sessionID:type:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25876AE74;

  return v10(a1, a2);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25876D7AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25876D814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25876D85C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25876D8C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25876D924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25876D98C()
{
  result = qword_27F959008;
  if (!qword_27F959008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959008);
  }

  return result;
}

unint64_t sub_25876D9E0()
{
  result = qword_27F959010;
  if (!qword_27F959010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959010);
  }

  return result;
}

MediaTokens::MediaSessionError_optional __swiftcall MediaSessionError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2587839A4();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MediaSessionError.rawValue.getter()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD000000000000018;
  if (v2 == 6)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v2 != 4)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0 > 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v2 == 2)
  {
    v5 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_25876DB80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000013;
  v3 = &unk_258786020;
  if (a1 > 3u)
  {
    v4 = "activeTokenDoesNotExist";
    v10 = 0xD000000000000018;
    if (a1 == 6)
    {
      v11 = 0xD000000000000018;
    }

    else
    {
      v11 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v4 = "tokenRequestDoesNotExist";
    }

    v6 = "tokenRequestAlreadyExists";
    if (a1 != 4)
    {
      v10 = 0xD000000000000017;
      v6 = "activeTokenAlreadyExists";
    }

    v8 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v4 = "sessionDoesNotExist";
    v5 = 0xD000000000000019;
    if (a1 == 2)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v4 = "failedToWriteToDisk";
    }

    v6 = "sessionAlreadyExists";
    if (a1)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = 0xD000000000000014;
    }

    if (!a1)
    {
      v6 = &unk_258786020;
    }

    v8 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }
  }

  if (v8)
  {
    v12 = v6;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        v14 = "tokenRequestExpired";
        goto LABEL_42;
      }

      v13 = "tokenRequestDoesNotExist";
    }

    else
    {
      if (a2 != 4)
      {
        v3 = "activeTokenAlreadyExists";
        v2 = 0xD000000000000017;
        goto LABEL_43;
      }

      v13 = "activeTokenAlreadyExists";
    }

    v3 = v13 - 32;
    v2 = 0xD000000000000018;
    goto LABEL_43;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v3 = "failedToWriteToDisk";
      v2 = 0xD000000000000019;
      goto LABEL_43;
    }

    v14 = "failedToWriteToDisk";
LABEL_42:
    v3 = v14 - 32;
    goto LABEL_43;
  }

  if (a2)
  {
    v14 = "sessionDoesNotExist";
    goto LABEL_42;
  }

  v2 = 0xD000000000000014;
LABEL_43:
  if (v9 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_258783A04();
  }

  return v15 & 1;
}

void sub_25876DD6C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = *v1;
  v4 = &unk_258786020;
  v5 = "activeTokenDoesNotExist";
  v6 = 0xD000000000000018;
  if (v3 == 6)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (v3 != 6)
  {
    v5 = "tokenRequestDoesNotExist";
  }

  v8 = "tokenRequestAlreadyExists";
  if (v3 != 4)
  {
    v6 = 0xD000000000000017;
    v8 = "activeTokenAlreadyExists";
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
  }

  else
  {
    v6 = v7;
  }

  v9 = "sessionDoesNotExist";
  v10 = 0xD000000000000019;
  if (v3 == 2)
  {
    v10 = 0xD000000000000013;
  }

  else
  {
    v9 = "failedToWriteToDisk";
  }

  if (*v1)
  {
    v4 = "sessionAlreadyExists";
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v1 > 1u)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

unint64_t sub_25876DE58()
{
  result = qword_27F959018;
  if (!qword_27F959018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959018);
  }

  return result;
}

uint64_t sub_25876DEC0()
{
  sub_2587838A4();
}

uint64_t getEnumTagSinglePayload for MediaSessionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaSessionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25876E140()
{
  sub_258783A64();
  sub_2587838A4();

  return sub_258783A94();
}

MediaTokens::MediaTokenType_optional __swiftcall MediaTokenType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MediaTokenType.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *sub_25876E2AC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_25876E2CC(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

unint64_t sub_25876E398()
{
  result = qword_27F959020;
  if (!qword_27F959020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959020);
  }

  return result;
}

uint64_t sub_25876E3EC()
{
  v1 = *v0;
  sub_258783A64();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x259C8A340](v2);
  return sub_258783A94();
}

uint64_t sub_25876E43C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x259C8A340](v1);
}

uint64_t sub_25876E474()
{
  v1 = *v0;
  sub_258783A64();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x259C8A340](v2);
  return sub_258783A94();
}

unint64_t sub_25876E4C4()
{
  result = qword_27F959028;
  if (!qword_27F959028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F959030, &qword_258784288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959028);
  }

  return result;
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

uint64_t sub_25876E580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25876E8AC();
  v9 = MEMORY[0x277CEEA98];

  return MEMORY[0x282140EE8](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_25876E5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25876E8AC();
  v5 = MEMORY[0x277CEEA98];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

uint64_t sub_25876E648(uint64_t a1, uint64_t a2)
{
  v4 = sub_25876E858();
  v5 = sub_25876E8AC();
  v6 = MEMORY[0x277CEEA98];

  return MEMORY[0x282140D40](a1, a2, v4, v5, v6);
}

uint64_t sub_25876E6A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25876E858();

  return MEMORY[0x282140D48](a1, a2, v4);
}

uint64_t getEnumTagSinglePayload for MediaTokenType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaTokenType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25876E858()
{
  result = qword_27F959038;
  if (!qword_27F959038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959038);
  }

  return result;
}

unint64_t sub_25876E8AC()
{
  result = qword_27F959040;
  if (!qword_27F959040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959040);
  }

  return result;
}

uint64_t Daemon.__allocating_init()()
{
  v0 = swift_allocObject();
  Daemon.init()();
  return v0;
}

void *Daemon.init()()
{
  v1 = v0;
  v2 = type metadata accessor for PersistenceConfiguration();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0;
  if (qword_27F958F78 != -1)
  {
    v18 = v4;
    swift_once();
    v4 = v18;
  }

  v7 = __swift_project_value_buffer(v4, qword_27F95CF58);
  sub_258771E84(v7, v6);
  v8 = type metadata accessor for PersistenceController();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  sub_258773584(v6, v11 + OBJC_IVAR____TtC11MediaTokens21PersistenceController_configuration, type metadata accessor for PersistenceConfiguration);
  v1[3] = v11;
  type metadata accessor for MediaSessionServer();
  v12 = swift_allocObject();

  swift_defaultActor_initialize();
  v12[14] = v11;
  v12[15] = j__mach_continuous_time;
  v12[16] = 0;
  v12[17] = sub_258772524(MEMORY[0x277D84F90]);
  v1[4] = v12;
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v13 = sub_258783764();
  __swift_project_value_buffer(v13, qword_27F95CF90);
  v14 = sub_258783744();
  v15 = sub_258783924();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_258766000, v14, v15, "Initialising media tokens daemon", v16, 2u);
    MEMORY[0x259C8A730](v16, -1, -1);
  }

  return v1;
}

uint64_t sub_25876EB74()
{
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v1 = sub_258783764();
  v0[7] = __swift_project_value_buffer(v1, qword_27F95CF90);
  v2 = sub_258783744();
  v3 = sub_258783924();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258766000, v2, v3, "Started media tokens daemon", v4, 2u);
    MEMORY[0x259C8A730](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_25876ECC4;
  v6 = v0[6];

  return sub_25876F084();
}

uint64_t sub_25876ECC4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25876EDF8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25876EDF8()
{
  v23 = v0;
  v1 = v0[9];
  v2 = v0[7];
  MEMORY[0x259C8A640](v1);
  v3 = sub_258783744();
  v4 = sub_258783904();
  MEMORY[0x259C8A630](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v21 = v0[9];
    v5 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v5 = 136315138;
    swift_getErrorValue();
    v6 = v0[2];
    v7 = v0[3];
    v8 = sub_258783934();
    v9 = *(v8 - 8);
    v10 = *(v9 + 64) + 15;
    v11 = swift_task_alloc();
    v12 = *(v7 - 8);
    (*(v12 + 16))(v11, v6, v7);
    (*(v12 + 56))(v11, 0, 1, v7);
    v13 = sub_2587832BC(v11, v7);
    v15 = v14;
    (*(v9 + 8))(v11, v8);

    v16 = sub_258771F6C(v13, v15, &v22);

    *(v5 + 4) = v16;
    _os_log_impl(&dword_258766000, v3, v4, "Failed to start media tokens daemon with error %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x259C8A730](v20, -1, -1);
    MEMORY[0x259C8A730](v5, -1, -1);
    MEMORY[0x259C8A630](v21);
  }

  else
  {
    v17 = v0[9];

    MEMORY[0x259C8A630](v17);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_25876F0A4()
{
  sub_25877277C();
  v1 = *(v0[5] + 24);
  sub_25877BCF0();
  v0[6] = 0;
  v2 = *(v0[5] + 32);
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_25876F16C, v2, 0);
}

uint64_t sub_25876F16C()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 112);
  v3 = sub_25877C26C();
  swift_beginAccess();
  v4 = *(v1 + 136);
  *(v1 + 136) = v3;

  return MEMORY[0x2822009F8](sub_25876F1FC, 0, 0);
}

uint64_t sub_25876F1FC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959058, &qword_258784388);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v6 = sub_258783794();
  if (v2)
  {
    v7 = v0[1];
  }

  else
  {
    v8 = v0[5];
    v9 = *(v8 + 16);
    *(v8 + 16) = v6;

    if (*(v8 + 16))
    {
      v10 = v0[5];
      v11 = swift_allocObject();
      *(v11 + 16) = sub_258772C88;
      *(v11 + 24) = v10;
      sub_25876D9E0();

      sub_2587837B4();

      if (*(v8 + 16))
      {
        v12 = v0[5];
        type metadata accessor for CreateMediaSession();
        sub_258773418(&qword_27F959000, type metadata accessor for CreateMediaSession);

        sub_2587837C4();

        if (*(v8 + 16))
        {
          v13 = v0[5];
          type metadata accessor for EndMediaSession();
          sub_258773418(&qword_27F958FF0, type metadata accessor for EndMediaSession);

          sub_2587837C4();

          if (*(v8 + 16))
          {
            v14 = v0[5];
            type metadata accessor for ValidateMediaSession();
            v15 = swift_allocObject();
            *(v15 + 16) = &unk_2587843B8;
            *(v15 + 24) = v14;
            sub_258773418(&qword_27F958FE0, type metadata accessor for ValidateMediaSession);

            sub_2587837A4();

            if (*(v8 + 16))
            {
              v16 = v0[5];
              v17 = swift_allocObject();
              *(v17 + 16) = &unk_2587843D8;
              *(v17 + 24) = v16;
              sub_25876D98C();

              sub_2587837A4();

              if (*(v8 + 16))
              {
                v18 = v0[5];
                type metadata accessor for RequestMediaToken();
                sub_258773418(&qword_27F958FD0, type metadata accessor for RequestMediaToken);

                sub_2587837C4();

                if (*(v8 + 16))
                {
                  v19 = v0[5];
                  type metadata accessor for ValidateMediaToken();
                  v20 = swift_allocObject();
                  *(v20 + 16) = &unk_258784408;
                  *(v20 + 24) = v19;
                  sub_258773418(&qword_27F958FC0, type metadata accessor for ValidateMediaToken);

                  sub_2587837A4();

                  if (*(v8 + 16))
                  {
                    v21 = v0[5];
                    type metadata accessor for ActivateMediaToken();
                    sub_258773418(&qword_27F958FB0, type metadata accessor for ActivateMediaToken);

                    sub_2587837C4();

                    if (*(v8 + 16))
                    {
                      v22 = v0[5];
                      type metadata accessor for DeactivateMediaToken();
                      sub_258773418(&qword_27F958FA0, type metadata accessor for DeactivateMediaToken);

                      sub_2587837C4();

                      if (*(v8 + 16))
                      {
                        v23 = *(v8 + 16);

                        sub_2587837D4();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_25876F89C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25876DA40;

  return sub_25876F934(a1);
}

uint64_t sub_25876F934(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for CreateMediaSession() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25876F9C4, 0, 0);
}

uint64_t sub_25876F9C4()
{
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v1 = sub_258783764();
  __swift_project_value_buffer(v1, qword_27F95CF90);
  v2 = sub_258783744();
  v3 = sub_258783924();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258766000, v2, v3, "Handling incoming CreateMediaSession message", v4, 2u);
    MEMORY[0x259C8A730](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959098, &qword_2587844B0);
  sub_258783784();
  v8 = *(v6 + 32);
  v0[5] = v8;

  return MEMORY[0x2822009F8](sub_25876FB08, v8, 0);
}

uint64_t sub_25876FB08()
{
  v1 = *(v0 + 40);
  sub_258775CD8(*(v0 + 32), (v0 + 48));

  return MEMORY[0x2822009F8](sub_25876FB94, 0, 0);
}

uint64_t sub_25876FB94()
{
  sub_2587734B4(*(v0 + 32), type metadata accessor for CreateMediaSession);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25876FC18()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  sub_258773460();
  swift_allocError();
  *v3 = v2;
  sub_2587734B4(v1, type metadata accessor for CreateMediaSession);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25876FCCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25876DA40;

  return sub_25876FD64(a1);
}

uint64_t sub_25876FD64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for EndMediaSession() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25876FDF4, 0, 0);
}

uint64_t sub_25876FDF4()
{
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v1 = sub_258783764();
  __swift_project_value_buffer(v1, qword_27F95CF90);
  v2 = sub_258783744();
  v3 = sub_258783924();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258766000, v2, v3, "Handling incoming EndMediaSession message", v4, 2u);
    MEMORY[0x259C8A730](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959090, &qword_2587844A0);
  sub_258783784();
  v8 = *(v6 + 32);
  v0[5] = v8;

  return MEMORY[0x2822009F8](sub_25876FF38, v8, 0);
}

uint64_t sub_25876FF38()
{
  v1 = *(v0 + 40);
  sub_258776A7C(*(v0 + 32), (v0 + 48));

  return MEMORY[0x2822009F8](sub_25876FFC4, 0, 0);
}

uint64_t sub_25876FFC4()
{
  sub_2587734B4(*(v0 + 32), type metadata accessor for EndMediaSession);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258770048()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  sub_258773460();
  swift_allocError();
  *v3 = v2;
  sub_2587734B4(v1, type metadata accessor for EndMediaSession);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2587700FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2587735FC;

  return sub_258770194(a1);
}

uint64_t sub_258770194(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for ValidateMediaSession() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258770224, 0, 0);
}

uint64_t sub_258770224()
{
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v1 = sub_258783764();
  __swift_project_value_buffer(v1, qword_27F95CF90);
  v2 = sub_258783744();
  v3 = sub_258783924();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258766000, v2, v3, "Handling incoming EndMediaSession message", v4, 2u);
    MEMORY[0x259C8A730](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959088, &qword_258784490);
  sub_258783784();
  v8 = *(v6 + 32);
  v0[5] = v8;

  return MEMORY[0x2822009F8](sub_258770368, v8, 0);
}

uint64_t sub_258770368()
{
  v1 = *(v0 + 40);
  *(v0 + 48) = sub_258777458(*(v0 + 32)) & 1;

  return MEMORY[0x2822009F8](sub_2587703D8, 0, 0);
}

uint64_t sub_2587703D8()
{
  sub_2587734B4(*(v0 + 32), type metadata accessor for ValidateMediaSession);

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_258770460(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2587735F8;

  return v8(a2);
}

uint64_t sub_258770558()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25876AFF4;

  return sub_2587705E8();
}

uint64_t sub_258770608()
{
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v1 = sub_258783764();
  __swift_project_value_buffer(v1, qword_27F95CF90);
  v2 = sub_258783744();
  v3 = sub_258783924();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258766000, v2, v3, "Handling incoming DumpRequest message", v4, 2u);
    MEMORY[0x259C8A730](v4, -1, -1);
  }

  v5 = *(v0 + 40);

  v6 = *(v5 + 32);
  *(v0 + 48) = v6;

  return MEMORY[0x2822009F8](sub_25877072C, v6, 0);
}

uint64_t sub_25877072C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 136);
  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_2587707B0(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2587708A8;

  return v8(a2);
}

uint64_t sub_2587708A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_2587709B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25876DA40;

  return sub_258770A50(a1);
}

uint64_t sub_258770A50(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RequestMediaToken();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258770AE4, 0, 0);
}

uint64_t sub_258770AE4()
{
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v1 = sub_258783764();
  __swift_project_value_buffer(v1, qword_27F95CF90);
  v2 = sub_258783744();
  v3 = sub_258783924();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258766000, v2, v3, "Handling incoming RequestMediaToken message", v4, 2u);
    MEMORY[0x259C8A730](v4, -1, -1);
  }

  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959080, &qword_258784478);
  sub_258783784();
  v9 = *(v8 + 32);
  *(v0 + 48) = v9;
  *(v0 + 56) = *(v5 + *(v6 + 20));

  return MEMORY[0x2822009F8](sub_258770C3C, v9, 0);
}

uint64_t sub_258770C3C()
{
  v1 = *(v0 + 48);
  sub_2587776BC(*(v0 + 40), (v0 + 56), (v0 + 57));

  return MEMORY[0x2822009F8](sub_258770CCC, 0, 0);
}

uint64_t sub_258770CCC()
{
  sub_2587734B4(*(v0 + 40), type metadata accessor for RequestMediaToken);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258770D50()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 57);
  sub_258773460();
  swift_allocError();
  *v3 = v2;
  sub_2587734B4(v1, type metadata accessor for RequestMediaToken);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_258770E04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258770E9C;

  return sub_258770FA4(a1);
}

uint64_t sub_258770E9C(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_258770FA4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ValidateMediaToken();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258771038, 0, 0);
}

uint64_t sub_258771038()
{
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v1 = sub_258783764();
  __swift_project_value_buffer(v1, qword_27F95CF90);
  v2 = sub_258783744();
  v3 = sub_258783924();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258766000, v2, v3, "Handling incoming ValidateMediaToken message", v4, 2u);
    MEMORY[0x259C8A730](v4, -1, -1);
  }

  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959078, &qword_258784468);
  sub_258783784();
  v9 = *(v8 + 32);
  *(v0 + 48) = v9;
  *(v0 + 56) = *(v5 + *(v6 + 20));

  return MEMORY[0x2822009F8](sub_258771190, v9, 0);
}

uint64_t sub_258771190()
{
  v1 = *(v0 + 48);
  *(v0 + 58) = sub_25877803C(*(v0 + 40), (v0 + 56)) & 1;

  return MEMORY[0x2822009F8](sub_258771228, 0, 0);
}

uint64_t sub_258771228()
{
  sub_2587734B4(*(v0 + 40), type metadata accessor for ValidateMediaToken);

  v1 = *(v0 + 8);
  v2 = *(v0 + 58);

  return v1(v2);
}

uint64_t sub_2587712B0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 57);
  sub_258773460();
  swift_allocError();
  *v3 = v2;
  sub_2587734B4(v1, type metadata accessor for ValidateMediaToken);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_258771368(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_258771460;

  return v8(a2);
}

uint64_t sub_258771460(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_258771574(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25876DA40;

  return sub_25877160C(a1);
}

uint64_t sub_25877160C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ActivateMediaToken();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2587716A0, 0, 0);
}

uint64_t sub_2587716A0()
{
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v1 = sub_258783764();
  __swift_project_value_buffer(v1, qword_27F95CF90);
  v2 = sub_258783744();
  v3 = sub_258783924();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258766000, v2, v3, "Handling incoming ActivateMediaToken message", v4, 2u);
    MEMORY[0x259C8A730](v4, -1, -1);
  }

  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959070, &qword_258784458);
  sub_258783784();
  v9 = *(v8 + 32);
  *(v0 + 48) = v9;
  *(v0 + 56) = *(v5 + *(v6 + 20));

  return MEMORY[0x2822009F8](sub_2587717F8, v9, 0);
}

uint64_t sub_2587717F8()
{
  v1 = *(v0 + 48);
  sub_258778808(*(v0 + 40), (v0 + 56), (v0 + 57));

  return MEMORY[0x2822009F8](sub_258771888, 0, 0);
}

uint64_t sub_258771888()
{
  sub_2587734B4(*(v0 + 40), type metadata accessor for ActivateMediaToken);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25877190C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 57);
  sub_258773460();
  swift_allocError();
  *v3 = v2;
  sub_2587734B4(v1, type metadata accessor for ActivateMediaToken);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2587719C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25876AE74;

  return sub_258771A58(a1);
}

uint64_t sub_258771A58(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DeactivateMediaToken();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258771AEC, 0, 0);
}

uint64_t sub_258771AEC()
{
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v1 = sub_258783764();
  __swift_project_value_buffer(v1, qword_27F95CF90);
  v2 = sub_258783744();
  v3 = sub_258783924();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258766000, v2, v3, "Handling incoming DeactivateMediaToken message", v4, 2u);
    MEMORY[0x259C8A730](v4, -1, -1);
  }

  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959060, &qword_258784448);
  sub_258783784();
  v9 = *(v8 + 32);
  *(v0 + 48) = v9;
  *(v0 + 56) = *(v5 + *(v6 + 20));

  return MEMORY[0x2822009F8](sub_258771C44, v9, 0);
}

uint64_t sub_258771C44()
{
  v1 = *(v0 + 48);
  sub_2587793A4(*(v0 + 40), (v0 + 56), (v0 + 57));

  return MEMORY[0x2822009F8](sub_258771CD4, 0, 0);
}

uint64_t sub_258771CD4()
{
  sub_2587734B4(*(v0 + 40), type metadata accessor for DeactivateMediaToken);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258771D58()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 57);
  sub_258773460();
  swift_allocError();
  *v3 = v2;
  sub_2587734B4(v1, type metadata accessor for DeactivateMediaToken);

  v4 = *(v0 + 8);

  return v4();
}

void *Daemon.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_258771E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistenceConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258771F10(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_258771F6C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_258771F6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_258772038(v11, 0, 0, 1, a1, a2);
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
    sub_258772C24(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_258772038(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_258772144(a5, a6);
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
    result = sub_258783964();
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

uint64_t sub_258772144(uint64_t a1, unint64_t a2)
{
  v4 = sub_258772190(a1, a2);
  sub_2587722C0(&unk_2869B8CE8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_258772190(uint64_t a1, unint64_t a2)
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

  v6 = sub_2587723AC(v5, 0);
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

  result = sub_258783964();
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
        v10 = sub_2587838C4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2587723AC(v10, 0);
        result = sub_258783954();
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

uint64_t sub_2587722C0(uint64_t result)
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

  result = sub_258772420(result, v12, 1, v3);
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

void *sub_2587723AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959050, &qword_258784380);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_258772420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959050, &qword_258784380);
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

_BYTE **sub_258772514(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_258772524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9590A0, &qword_2587844B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9590A8, &unk_2587844C0);
    v8 = sub_258783994();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_258773514(v10, v6);
      result = sub_258779DB8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_258783704();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for MediaSession();
      result = sub_258773584(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for MediaSession);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

void sub_25877277C()
{
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v1 = sub_258783764();
  __swift_project_value_buffer(v1, qword_27F95CF90);
  v2 = sub_258783744();
  v3 = sub_258783924();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258766000, v2, v3, "Entering sandbox", v4, 2u);
    MEMORY[0x259C8A730](v4, -1, -1);
  }

  sub_25877D3D0();
  if (v0)
  {
    v5 = sub_258783744();
    v6 = sub_258783904();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      v9 = sub_258783884();
      v11 = sub_258771F6C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_258766000, v5, v6, "Failed to enter sandbox with error %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x259C8A730](v8, -1, -1);
      MEMORY[0x259C8A730](v7, -1, -1);
    }
  }
}

uint64_t sub_258772970()
{
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v0 = sub_258783764();
  __swift_project_value_buffer(v0, qword_27F95CF90);
  v1 = sub_258783744();
  v2 = sub_258783924();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258766000, v1, v2, "Accepting incoming XPC connection request", v3, 2u);
    MEMORY[0x259C8A730](v3, -1, -1);
  }

  return 1;
}

void sub_258772A4C()
{
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v0 = sub_258783764();
  __swift_project_value_buffer(v0, qword_27F95CF90);
  v1 = sub_258783744();
  v2 = sub_258783924();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258766000, v1, v2, "Handling incoming Ping message", v3, 2u);
    MEMORY[0x259C8A730](v3, -1, -1);
  }
}

unint64_t sub_258772B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959048, qword_2587849E0);
    v3 = sub_258783994();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 24);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_258779D48(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_258772C24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_258772CA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258772CD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_258772D00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25876DA40;

  return sub_25876F89C(a1);
}

uint64_t sub_258772D98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25876DA40;

  return sub_25876FCCC(a1);
}

uint64_t sub_258772E30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25876DA3C;

  return sub_2587700FC(a1);
}

uint64_t sub_258772EC8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25876DA40;

  return sub_258770460(a1, a2, v7);
}

uint64_t sub_258772F90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25876CE64;

  return sub_258770558();
}

uint64_t sub_258773028(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25876DA40;

  return sub_2587707B0(a1, a2, v7);
}

uint64_t sub_2587730F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25876DA40;

  return sub_2587709B8(a1);
}

uint64_t sub_258773188(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25876CE64;

  return sub_258770E04(a1);
}

uint64_t sub_258773220(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25876DA40;

  return sub_258771368(a1, a2, v7);
}

uint64_t sub_2587732E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25876DA40;

  return sub_258771574(a1);
}

uint64_t sub_258773380(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25876AE74;

  return sub_2587719C0(a1);
}

uint64_t sub_258773418(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258773460()
{
  result = qword_27F959068;
  if (!qword_27F959068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959068);
  }

  return result;
}

uint64_t sub_2587734B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258773514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9590A0, &qword_2587844B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258773584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258773670(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2587736D0()
{
  v0 = sub_258783774();
  __swift_allocate_value_buffer(v0, qword_27F95CF40);
  v1 = __swift_project_value_buffer(v0, qword_27F95CF40);
  *v1 = 0xD00000000000001ELL;
  v1[1] = 0x80000002587861D0;
  v2 = *MEMORY[0x277CF7E30];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_258773774@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F958F70 != -1)
  {
    swift_once();
  }

  v2 = sub_258783774();
  v3 = __swift_project_value_buffer(v2, qword_27F95CF40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2587738C8()
{
  v1 = 0x5474736575716572;
  if (*v0 != 1)
  {
    v1 = 0x5474756F656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_25877392C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2587757B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25877396C(uint64_t a1)
{
  v2 = sub_2587759FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2587739A8(uint64_t a1)
{
  v2 = sub_2587759FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2587739E4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959180, &qword_258784830);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2587759FC();
  sub_258783AB4();
  v17 = v9;
  v16 = 0;
  sub_2587745D8();
  sub_2587839D4();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_2587839E4();
  v14 = 2;
  sub_2587839E4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_258773BA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959190, &qword_258784838);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2587759FC();
  sub_258783AA4();
  if (!v2)
  {
    v18 = 0;
    sub_2587750C8();
    sub_2587839B4();
    v11 = v19;
    v17 = 1;
    v13 = sub_2587839C4();
    v16 = 2;
    v14 = sub_2587839C4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_258773D8C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_258783A64();
  if (v1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x259C8A340](v4);
  MEMORY[0x259C8A350](v2);
  MEMORY[0x259C8A350](v3);
  return sub_258783A94();
}

uint64_t sub_258773E00()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*v0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x259C8A340](v3);
  MEMORY[0x259C8A350](v1);
  return MEMORY[0x259C8A350](v2);
}

uint64_t sub_258773E54()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_258783A64();
  if (v1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x259C8A340](v4);
  MEMORY[0x259C8A350](v2);
  MEMORY[0x259C8A350](v3);
  return sub_258783A94();
}

uint64_t static MediaSession.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2587836F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MediaSession();
  if ((sub_258773FFC(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_258773FFC(v6, v7);
}

uint64_t type metadata accessor for MediaSession()
{
  result = qword_27F959140;
  if (!qword_27F959140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258773FFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = (*(v3 + 56) + 24 * v12);
    v15 = *v14;
    v16 = *(v14 + 1);
    v17 = *(v14 + 2);
    v18 = sub_258779D48(v13);
    if ((v19 & 1) == 0)
    {
      return 0;
    }

    v20 = v18;
    result = 0;
    v21 = (*(a2 + 56) + 24 * v20);
    if (((v15 ^ *v21) & 1) == 0)
    {
      v23 = *(v21 + 1);
      v22 = *(v21 + 2);
      if (v23 == v16 && v22 == v17)
      {
        continue;
      }
    }

    return result;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_258774138()
{
  v1 = *v0;
  sub_258783A64();
  MEMORY[0x259C8A340](v1);
  return sub_258783A94();
}

uint64_t sub_258774180()
{
  v1 = *v0;
  sub_258783A64();
  MEMORY[0x259C8A340](v1);
  return sub_258783A94();
}

uint64_t sub_2587741C4()
{
  v1 = 0x6F54657669746361;
  if (*v0 != 1)
  {
    v1 = 0x6574736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_25877422C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2587758D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258774254(uint64_t a1)
{
  v2 = sub_258774584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258774290(uint64_t a1)
{
  v2 = sub_258774584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaSession.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9590D0, &qword_258784550);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258774584();
  sub_258783AB4();
  LOBYTE(v15) = 0;
  sub_258783704();
  sub_258775278(&qword_27F9590E0, MEMORY[0x277CC95F0]);
  sub_2587839D4();
  if (!v2)
  {
    v11 = type metadata accessor for MediaSession();
    v15 = *(v3 + *(v11 + 20));
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9590E8, &qword_258784558);
    sub_258775038(&qword_27F9590F0, sub_2587745D8, sub_25877462C);
    sub_2587839D4();
    v15 = *(v3 + *(v11 + 24));
    v14 = 2;
    sub_2587839D4();
  }

  return (*(v6 + 8))(v9, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_258774584()
{
  result = qword_27F9590D8;
  if (!qword_27F9590D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9590D8);
  }

  return result;
}

unint64_t sub_2587745D8()
{
  result = qword_27F9590F8;
  if (!qword_27F9590F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9590F8);
  }

  return result;
}

unint64_t sub_25877462C()
{
  result = qword_27F959100;
  if (!qword_27F959100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959100);
  }

  return result;
}

uint64_t MediaSession.hash(into:)(__int128 *a1)
{
  sub_258783704();
  sub_258775278(&qword_27F959108, MEMORY[0x277CC95F0]);
  sub_258783844();
  v3 = type metadata accessor for MediaSession();
  sub_258774ED8(a1, *(v1 + *(v3 + 20)));
  v4 = *(v1 + *(v3 + 24));

  return sub_258774ED8(a1, v4);
}

uint64_t MediaSession.hashValue.getter()
{
  sub_258783A64();
  sub_258783704();
  sub_258775278(&qword_27F959108, MEMORY[0x277CC95F0]);
  sub_258783844();
  v1 = type metadata accessor for MediaSession();
  sub_258774ED8(v3, *(v0 + *(v1 + 20)));
  sub_258774ED8(v3, *(v0 + *(v1 + 24)));
  return sub_258783A94();
}

uint64_t MediaSession.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_258783704();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959110, &qword_258784560);
  v25 = *(v28 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v22 - v8;
  v10 = type metadata accessor for MediaSession();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258774584();
  sub_258783AA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v25;
  v15 = v26;
  v22 = v13;
  v23 = a1;
  LOBYTE(v30) = 0;
  sub_258775278(&qword_27F959118, MEMORY[0x277CC95F0]);
  v18 = v27;
  v17 = v28;
  sub_2587839B4();
  (*(v15 + 32))(v22, v18, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9590E8, &qword_258784558);
  v29 = 1;
  v27 = sub_258775038(&qword_27F959120, sub_2587750C8, sub_25877511C);
  sub_2587839B4();
  *&v22[*(v10 + 20)] = v30;
  v29 = 2;
  sub_2587839B4();
  (*(v16 + 8))(v9, v17);
  v19 = *(v10 + 24);
  v20 = v22;
  *&v22[v19] = v30;
  sub_258775170(v20, v24);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return sub_2587751D4(v20);
}

uint64_t sub_258774C20(uint64_t a1)
{
  sub_258783A64();
  sub_258783704();
  sub_258775278(&qword_27F959108, MEMORY[0x277CC95F0]);
  sub_258783844();
  sub_258774ED8(v4, *(v1 + *(a1 + 20)));
  sub_258774ED8(v4, *(v1 + *(a1 + 24)));
  return sub_258783A94();
}

uint64_t sub_258774CD4(__int128 *a1, uint64_t a2)
{
  sub_258783704();
  sub_258775278(&qword_27F959108, MEMORY[0x277CC95F0]);
  sub_258783844();
  sub_258774ED8(a1, *(v2 + *(a2 + 20)));
  v5 = *(v2 + *(a2 + 24));

  return sub_258774ED8(a1, v5);
}

uint64_t sub_258774D7C(uint64_t a1, uint64_t a2)
{
  sub_258783A64();
  sub_258783704();
  sub_258775278(&qword_27F959108, MEMORY[0x277CC95F0]);
  sub_258783844();
  sub_258774ED8(v5, *(v2 + *(a2 + 20)));
  sub_258774ED8(v5, *(v2 + *(a2 + 24)));
  return sub_258783A94();
}

uint64_t sub_258774E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_2587836F4() & 1) == 0 || (sub_258773FFC(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_258773FFC(v7, v8);
}

uint64_t sub_258774ED8(__int128 *a1, uint64_t a2)
{
  result = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_258783A94() ^ v22)
  {
    v22 = result;
    v10 = v4;
LABEL_9:
    v11 = __clz(__rbit64(v8)) | (v10 << 6);
    v12 = *(*(a2 + 48) + v11);
    v13 = (*(a2 + 56) + 24 * v11);
    v14 = *v13;
    v8 &= v8 - 1;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    v24 = a1[2];
    v25 = a1[3];
    v17 = *(a1 + 8);
    v18 = *a1;
    v23 = a1[1];
    if (v12)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    MEMORY[0x259C8A340](v19);
    if (v14)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    MEMORY[0x259C8A340](v20);
    MEMORY[0x259C8A350](v15);
    MEMORY[0x259C8A350](v16);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x259C8A340](result);
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v22 = result;
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_258775038(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9590E8, &qword_258784558);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2587750C8()
{
  result = qword_27F959128;
  if (!qword_27F959128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959128);
  }

  return result;
}

unint64_t sub_25877511C()
{
  result = qword_27F959130;
  if (!qword_27F959130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959130);
  }

  return result;
}

uint64_t sub_258775170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaSession();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587751D4(uint64_t a1)
{
  v2 = type metadata accessor for MediaSession();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258775278(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2587752D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258783704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2587753A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_258783704();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_25877545C()
{
  sub_258783704();
  if (v0 <= 0x3F)
  {
    sub_2587754E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2587754E0()
{
  if (!qword_27F959150)
  {
    sub_258775544();
    v0 = sub_258783824();
    if (!v1)
    {
      atomic_store(v0, &qword_27F959150);
    }
  }
}

unint64_t sub_258775544()
{
  result = qword_27F959158;
  if (!qword_27F959158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959158);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaToken(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaToken(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_258775658()
{
  result = qword_27F959160;
  if (!qword_27F959160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959160);
  }

  return result;
}

unint64_t sub_2587756B0()
{
  result = qword_27F959168;
  if (!qword_27F959168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959168);
  }

  return result;
}

unint64_t sub_258775708()
{
  result = qword_27F959170;
  if (!qword_27F959170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959170);
  }

  return result;
}

unint64_t sub_258775760()
{
  result = qword_27F959178;
  if (!qword_27F959178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959178);
  }

  return result;
}

uint64_t sub_2587757B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_258783A04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5474736575716572 && a2 == 0xEB00000000656D69 || (sub_258783A04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5474756F656D6974 && a2 == 0xEB00000000656D69)
  {

    return 2;
  }

  else
  {
    v6 = sub_258783A04();

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

uint64_t sub_2587758D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_258783A04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F54657669746361 && a2 == 0xEC000000736E656BLL || (sub_258783A04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xEF736E656B6F5464)
  {

    return 2;
  }

  else
  {
    v6 = sub_258783A04();

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

unint64_t sub_2587759FC()
{
  result = qword_27F959188;
  if (!qword_27F959188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959188);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SandboxError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SandboxError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258775BAC()
{
  result = qword_27F959198;
  if (!qword_27F959198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959198);
  }

  return result;
}

unint64_t sub_258775C04()
{
  result = qword_27F9591A0;
  if (!qword_27F9591A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9591A0);
  }

  return result;
}

unint64_t sub_258775C5C()
{
  result = qword_27F9591A8;
  if (!qword_27F9591A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9591A8);
  }

  return result;
}

uint64_t sub_258775CD8(uint64_t a1, _BYTE *a2)
{
  v109 = sub_258783704();
  v6 = *(v109 - 1);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v109);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v105 = (&v98 - v12);
  MEMORY[0x28223BE20](v11);
  v104 = &v98 - v13;
  v107 = type metadata accessor for MediaSession();
  v14 = *(v107 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v107);
  v108 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9591B0, &unk_2587849D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v98 - v22;
  swift_beginAccess();
  v106 = v2;
  v24 = *(v2 + 136);
  if (*(v24 + 16))
  {

    v25 = sub_258779DB8(a1);
    if (v26)
    {
      sub_258775170(*(v24 + 56) + *(v14 + 72) * v25, v23);

      (*(v14 + 56))(v23, 0, 1, v107);
      sub_258779EA0(v23);
      if (qword_27F958F88 != -1)
      {
        swift_once();
      }

      v27 = sub_258783764();
      __swift_project_value_buffer(v27, qword_27F95CF90);
      v28 = a1;
      v29 = v109;
      (*(v6 + 16))(v10, v28, v109);
      v30 = sub_258783744();
      v31 = sub_258783924();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v102 = a2;
        v33 = v32;
        v34 = swift_slowAlloc();
        v112[0] = v34;
        *v33 = 136315138;
        sub_25877B754(&qword_27F9591B8);
        v35 = sub_2587839F4();
        v36 = v29;
        v38 = v37;
        (*(v6 + 8))(v10, v36);
        v39 = sub_258771F6C(v35, v38, v112);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_258766000, v30, v31, "Not creating new media session for id %s because it already exists", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x259C8A730](v34, -1, -1);
        v40 = v33;
        a2 = v102;
        MEMORY[0x259C8A730](v40, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v10, v29);
      }

      *a2 = 0;
      LOBYTE(v112[0]) = 0;
      sub_258773460();
      return swift_willThrowTypedImpl();
    }
  }

  v101 = v3;
  v102 = a2;
  v98 = *(v14 + 56);
  v41 = v107;
  v98(v23, 1, 1, v107);
  sub_258779EA0(v23);
  v100 = v6;
  v42 = *(v6 + 16);
  v103 = v21;
  v44 = v108;
  v43 = v109;
  v42(v108, a1, v109);
  v45 = MEMORY[0x277D84F90];
  v46 = sub_258772B2C(MEMORY[0x277D84F90]);
  v47 = sub_258772B2C(v45);
  *(v44 + v41[5]) = v46;
  *(v44 + v41[6]) = v47;
  v48 = v104;
  v99 = v42;
  v42(v104, a1, v43);
  v49 = v44;
  v50 = v103;
  sub_258775170(v49, v103);
  v98(v50, 0, 1, v41);
  v51 = v106;
  swift_beginAccess();
  sub_2587767E8(v50, v48);
  swift_endAccess();
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v52 = sub_258783764();
  v53 = __swift_project_value_buffer(v52, qword_27F95CF90);
  v54 = v105;
  v104 = a1;
  v55 = a1;
  v56 = v109;
  v99(v105, v55, v109);
  v57 = sub_258783744();
  v58 = sub_258783924();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v99 = v53;
    v60 = v59;
    v61 = v54;
    v62 = swift_slowAlloc();
    v112[0] = v62;
    *v60 = 136315138;
    sub_25877B754(&qword_27F9591B8);
    v63 = sub_2587839F4();
    v65 = v64;
    (*(v100 + 8))(v61, v109);
    v66 = sub_258771F6C(v63, v65, v112);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_258766000, v57, v58, "Created new media session for id %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x259C8A730](v62, -1, -1);
    MEMORY[0x259C8A730](v60, -1, -1);
  }

  else
  {

    (*(v100 + 8))(v54, v56);
  }

  v67 = sub_258783744();
  v68 = sub_258783924();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v112[0] = v105;
    *v69 = 136315138;
    v70 = *(v51 + 136);
    sub_25877B754(&qword_27F959108);

    v71 = sub_258783814();
    v73 = v72;

    v74 = sub_258771F6C(v71, v73, v112);

    *(v69 + 4) = v74;
    _os_log_impl(&dword_258766000, v67, v68, "Writing media sessions to disk %s", v69, 0xCu);
    v75 = v105;
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x259C8A730](v75, -1, -1);
    MEMORY[0x259C8A730](v69, -1, -1);
  }

  v76 = *(v51 + 112);
  v77 = *(v51 + 136);

  v79 = v101;
  sub_25877C640(v78);
  if (v79)
  {

    MEMORY[0x259C8A640](v79);
    v80 = sub_258783744();
    v81 = sub_258783914();
    MEMORY[0x259C8A630](v79);
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v112[0] = v109;
      *v82 = 136315138;
      swift_getErrorValue();
      v83 = v111;
      v105 = v110;
      v84 = sub_258783934();
      v107 = &v98;
      v85 = *(v84 - 8);
      v86 = *(v85 + 64);
      MEMORY[0x28223BE20](v84);
      v88 = &v98 - v87;
      v89 = *(v83 - 8);
      (*(v89 + 16))(&v98 - v87, v105, v83);
      (*(v89 + 56))(v88, 0, 1, v83);
      v90 = sub_2587832BC(v88, v83);
      v92 = v91;
      v93 = v84;
      v50 = v103;
      (*(v85 + 8))(v88, v93);
      v94 = sub_258771F6C(v90, v92, v112);

      *(v82 + 4) = v94;
      _os_log_impl(&dword_258766000, v80, v81, "Failed to write media sessions to disk %s", v82, 0xCu);
      v95 = v109;
      __swift_destroy_boxed_opaque_existential_0(v109);
      MEMORY[0x259C8A730](v95, -1, -1);
      MEMORY[0x259C8A730](v82, -1, -1);
    }

    v96 = v102;
    swift_beginAccess();
    sub_25877A134(v104, v50);
    sub_258779EA0(v50);
    swift_endAccess();
    *v96 = 2;
    LOBYTE(v112[0]) = 2;
    sub_258773460();
    swift_willThrowTypedImpl();
    MEMORY[0x259C8A630](v79);
    return sub_2587751D4(v108);
  }

  else
  {
    sub_2587751D4(v108);
  }
}

uint64_t sub_2587767E8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9591B0, &unk_2587849D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for MediaSession();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_258779EA0(a1);
    sub_25877A134(a2, v8);
    v14 = sub_258783704();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_258779EA0(v8);
  }

  else
  {
    sub_258779E3C(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_25877B2F4(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_258783704();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

unint64_t sub_2587769D4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  result = sub_258779D48(a1 & 1);
  if (v7)
  {
    v8 = result;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25877B190();
      v11 = v13;
    }

    v12 = *(v11 + 56) + 24 * v8;
    *a2 = *v12;
    *(a2 + 8) = *(v12 + 8);
    result = sub_25877ACE4(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 2;
  }

  return result;
}

uint64_t sub_258776A7C(uint64_t a1, _BYTE *a2)
{
  v5 = sub_258783704();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v85 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9591B0, &unk_2587849D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v85 - v18;
  swift_beginAccess();
  v89 = v2;
  v90 = a2;
  v20 = v2[17];
  if (*(v20 + 16))
  {

    v21 = sub_258779DB8(a1);
    if (v22)
    {
      v23 = v21;
      v86 = v12;
      v87 = v5;
      v24 = *(v20 + 56);
      v25 = a1;
      v26 = type metadata accessor for MediaSession();
      v27 = *(v26 - 8);
      sub_258775170(v24 + *(v27 + 72) * v23, v19);

      v28 = *(v27 + 56);
      v85[1] = v26;
      v29 = v26;
      v30 = v25;
      v28(v19, 0, 1, v29);
      sub_258779EA0(v19);
      v31 = v89;
      swift_beginAccess();
      sub_25877A134(v25, v17);
      sub_258779EA0(v17);
      swift_endAccess();
      if (qword_27F958F88 != -1)
      {
        swift_once();
      }

      v32 = sub_258783764();
      v33 = __swift_project_value_buffer(v32, qword_27F95CF90);
      v35 = v86;
      v34 = v87;
      (*(v6 + 16))(v86, v30, v87);
      v36 = sub_258783744();
      v37 = sub_258783924();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v85[0] = v33;
        v40 = v39;
        v93[0] = v39;
        *v38 = 136315138;
        sub_25877B754(&qword_27F9591B8);
        v41 = sub_2587839F4();
        v43 = v42;
        (*(v6 + 8))(v35, v34);
        v44 = sub_258771F6C(v41, v43, v93);
        v31 = v89;

        *(v38 + 4) = v44;
        _os_log_impl(&dword_258766000, v36, v37, "Ended media session for id %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x259C8A730](v40, -1, -1);
        MEMORY[0x259C8A730](v38, -1, -1);
      }

      else
      {

        (*(v6 + 8))(v35, v34);
      }

      v57 = sub_258783744();
      v58 = sub_258783924();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v93[0] = v60;
        *v59 = 136315138;
        v61 = v89[17];
        sub_25877B754(&qword_27F959108);

        v62 = sub_258783814();
        v64 = v63;
        v31 = v89;

        v65 = sub_258771F6C(v62, v64, v93);

        *(v59 + 4) = v65;
        _os_log_impl(&dword_258766000, v57, v58, "Writing media sessions to disk %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x259C8A730](v60, -1, -1);
        MEMORY[0x259C8A730](v59, -1, -1);
      }

      v66 = v31[14];
      v67 = v31[17];

      v69 = v88;
      sub_25877C640(v68);
      if (!v69)
      {
      }

      MEMORY[0x259C8A640](v69);
      v70 = sub_258783744();
      v71 = sub_258783914();
      MEMORY[0x259C8A630](v69);
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v93[0] = v89;
        *v72 = 136315138;
        swift_getErrorValue();
        v73 = v92;
        v87 = v91;
        v74 = sub_258783934();
        v88 = v85;
        v75 = *(v74 - 8);
        v76 = *(v75 + 64);
        MEMORY[0x28223BE20](v74);
        v78 = v85 - v77;
        v79 = *(v73 - 8);
        (*(v79 + 16))(v85 - v77, v87, v73);
        (*(v79 + 56))(v78, 0, 1, v73);
        v80 = sub_2587832BC(v78, v73);
        v82 = v81;
        (*(v75 + 8))(v78, v74);
        v83 = sub_258771F6C(v80, v82, v93);

        *(v72 + 4) = v83;
        _os_log_impl(&dword_258766000, v70, v71, "Failed to write media sessions to disk %s", v72, 0xCu);
        v84 = v89;
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x259C8A730](v84, -1, -1);
        MEMORY[0x259C8A730](v72, -1, -1);
      }

      *v90 = 2;
      LOBYTE(v93[0]) = 2;
      sub_258773460();
      swift_willThrowTypedImpl();
      return MEMORY[0x259C8A630](v69);
    }

    a2 = v90;
  }

  v45 = type metadata accessor for MediaSession();
  (*(*(v45 - 8) + 56))(v19, 1, 1, v45);
  sub_258779EA0(v19);
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v46 = sub_258783764();
  __swift_project_value_buffer(v46, qword_27F95CF90);
  (*(v6 + 16))(v10, a1, v5);
  v47 = sub_258783744();
  v48 = sub_258783924();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v93[0] = v50;
    *v49 = 136315138;
    sub_25877B754(&qword_27F9591B8);
    v51 = sub_2587839F4();
    v53 = v52;
    (*(v6 + 8))(v10, v5);
    v54 = sub_258771F6C(v51, v53, v93);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_258766000, v47, v48, "Media session doesn't exist for identifier %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    v55 = v50;
    a2 = v90;
    MEMORY[0x259C8A730](v55, -1, -1);
    MEMORY[0x259C8A730](v49, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  *a2 = 1;
  LOBYTE(v93[0]) = 1;
  sub_258773460();
  return swift_willThrowTypedImpl();
}

uint64_t sub_258777458(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9591B0, &unk_2587849D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  swift_beginAccess();
  v7 = *(v1 + 136);
  if (*(v7 + 16))
  {

    v8 = sub_258779DB8(a1);
    if (v9)
    {
      v10 = v8;
      v11 = *(v7 + 56);
      v12 = type metadata accessor for MediaSession();
      v13 = *(v12 - 8);
      sub_258775170(v11 + *(v13 + 72) * v10, v6);

      v14 = 1;
      (*(v13 + 56))(v6, 0, 1, v12);
      goto LABEL_6;
    }
  }

  v15 = type metadata accessor for MediaSession();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v14 = 0;
LABEL_6:
  sub_258779EA0(v6);
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v16 = sub_258783764();
  __swift_project_value_buffer(v16, qword_27F95CF90);
  v17 = sub_258783744();
  v18 = sub_258783924();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v14;
    _os_log_impl(&dword_258766000, v17, v18, "Validated media session for identifier %{BOOL}d", v19, 8u);
    MEMORY[0x259C8A730](v19, -1, -1);
  }

  return v14;
}

uint64_t sub_2587776BC(uint64_t a1, unsigned __int8 *a2, char *a3)
{
  v91 = a3;
  v4 = v3;
  v94 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9591B0, &unk_2587849D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v88 - v8;
  v10 = sub_258783704();
  v92 = *(v10 - 8);
  v93 = v10;
  v11 = *(v92 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v88 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v89 = &v88 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v88 - v20;
  v22 = type metadata accessor for MediaSession();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = &v88 - v28;
  v96 = *a2;
  swift_beginAccess();
  v29 = *(v4 + 136);
  if (*(v29 + 16))
  {
    v30 = *(v4 + 136);

    v31 = sub_258779DB8(v94);
    if (v32)
    {
      sub_258775170(*(v29 + 56) + *(v23 + 72) * v31, v27);

      v33 = v27;
      v34 = v90;
      v35 = sub_258779E3C(v33, v90);
      v36 = *(v22 + 24);
      if (*(*(v34 + v36) + 16) && (v35 = sub_258779D48(v96), (v37 & 1) != 0))
      {
        if (qword_27F958F88 == -1)
        {
LABEL_6:
          v38 = sub_258783764();
          __swift_project_value_buffer(v38, qword_27F95CF90);
          v40 = v92;
          v39 = v93;
          (*(v92 + 16))(v21, v94, v93);
          v41 = sub_258783744();
          v42 = sub_258783924();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v95[0] = v44;
            *v43 = 136315394;
            sub_25877B754(&qword_27F9591B8);
            v45 = sub_2587839F4();
            v47 = v46;
            (*(v40 + 8))(v21, v39);
            v48 = sub_258771F6C(v45, v47, v95);

            *(v43 + 4) = v48;
            *(v43 + 12) = 2080;
            v97 = v96;
            v49 = sub_258783884();
            v51 = sub_258771F6C(v49, v50, v95);

            *(v43 + 14) = v51;
            v34 = v90;
            _os_log_impl(&dword_258766000, v41, v42, "Already have a token request for session %s and token type %s", v43, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x259C8A730](v44, -1, -1);
            MEMORY[0x259C8A730](v43, -1, -1);
          }

          else
          {

            (*(v40 + 8))(v21, v39);
          }

          v87 = 3;
LABEL_27:
          *v91 = v87;
          LOBYTE(v95[0]) = v87;
          sub_258773460();
          swift_willThrowTypedImpl();
          return sub_2587751D4(v34);
        }
      }

      else
      {
        if (*(*(v34 + *(v22 + 20)) + 16))
        {
          v35 = sub_258779D48(v96);
          if (v64)
          {
            if (qword_27F958F88 != -1)
            {
              swift_once();
            }

            v65 = sub_258783764();
            __swift_project_value_buffer(v65, qword_27F95CF90);
            v67 = v92;
            v66 = v93;
            v68 = v89;
            (*(v92 + 16))(v89, v94, v93);
            v69 = sub_258783744();
            v70 = sub_258783924();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              v95[0] = v72;
              *v71 = 136315394;
              sub_25877B754(&qword_27F9591B8);
              v73 = sub_2587839F4();
              v75 = v74;
              (*(v67 + 8))(v68, v66);
              v76 = sub_258771F6C(v73, v75, v95);
              v34 = v90;

              *(v71 + 4) = v76;
              *(v71 + 12) = 2080;
              v97 = v96;
              v77 = sub_258783884();
              v79 = sub_258771F6C(v77, v78, v95);

              *(v71 + 14) = v79;
              _os_log_impl(&dword_258766000, v69, v70, "Already have an active token for session %s and token type %s", v71, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x259C8A730](v72, -1, -1);
              MEMORY[0x259C8A730](v71, -1, -1);
            }

            else
            {

              (*(v67 + 8))(v68, v66);
            }

            v87 = 4;
            goto LABEL_27;
          }
        }

        v80 = *(v4 + 128);
        v81 = (*(v4 + 120))(v35);
        v91 = (v81 + 2000000000);
        if (v81 < 0xFFFFFFFF88CA6C00)
        {
          v82 = v81;
          v83 = v90;
          v84 = *(v90 + v36);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v95[0] = *(v83 + v36);
          sub_25877B4DC(v96, v82, v91, v96, isUniquelyReferenced_nonNull_native);
          v86 = v94;
          *(v83 + v36) = v95[0];
          (*(v92 + 16))(v17, v86, v93);
          sub_258775170(v83, v9);
          (*(v23 + 56))(v9, 0, 1, v22);
          swift_beginAccess();
          sub_2587767E8(v9, v17);
          swift_endAccess();
          return sub_2587751D4(v83);
        }

        __break(1u);
      }

      swift_once();
      goto LABEL_6;
    }
  }

  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v52 = sub_258783764();
  __swift_project_value_buffer(v52, qword_27F95CF90);
  v54 = v92;
  v53 = v93;
  (*(v92 + 16))(v14, v94, v93);
  v55 = sub_258783744();
  v56 = sub_258783924();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v95[0] = v58;
    *v57 = 136315138;
    sub_25877B754(&qword_27F9591B8);
    v59 = sub_2587839F4();
    v61 = v60;
    (*(v54 + 8))(v14, v53);
    v62 = sub_258771F6C(v59, v61, v95);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_258766000, v55, v56, "Media session doesn't exist for identifier %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x259C8A730](v58, -1, -1);
    MEMORY[0x259C8A730](v57, -1, -1);
  }

  else
  {

    (*(v54 + 8))(v14, v53);
  }

  *v91 = 1;
  LOBYTE(v95[0]) = 1;
  sub_258773460();
  return swift_willThrowTypedImpl();
}

uint64_t sub_25877803C(uint64_t a1, char *a2)
{
  v5 = sub_258783704();
  v72 = *(v5 - 8);
  v6 = *(v72 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v68 - v11;
  MEMORY[0x28223BE20](v10);
  v70 = &v68 - v13;
  v14 = type metadata accessor for MediaSession();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v71 = &v68 - v20;
  v21 = *a2;
  swift_beginAccess();
  v22 = *(v2 + 136);
  if (!*(v22 + 16))
  {
    goto LABEL_10;
  }

  v23 = sub_258779DB8(a1);
  if ((v24 & 1) == 0)
  {

LABEL_10:
    if (qword_27F958F88 != -1)
    {
      swift_once();
    }

    v42 = sub_258783764();
    __swift_project_value_buffer(v42, qword_27F95CF90);
    v43 = v72;
    (*(v72 + 16))(v9, a1, v5);
    v44 = sub_258783744();
    v45 = sub_258783924();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v74 = v47;
      *v46 = 136315138;
      sub_25877B754(&qword_27F9591B8);
      v48 = sub_2587839F4();
      v50 = v49;
      (*(v43 + 8))(v9, v5);
      v51 = sub_258771F6C(v48, v50, &v74);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_258766000, v44, v45, "Media session doesn't exist for identifier %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x259C8A730](v47, -1, -1);
      MEMORY[0x259C8A730](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v9, v5);
    }

    return 0;
  }

  sub_258775170(*(v22 + 56) + *(v15 + 72) * v23, v19);

  v25 = v71;
  sub_258779E3C(v19, v71);
  if (!*(*(v25 + *(v14 + 20)) + 16) || (sub_258779D48(v21), (v26 & 1) == 0))
  {
    v52 = v5;
    if (qword_27F958F88 != -1)
    {
      swift_once();
    }

    v53 = sub_258783764();
    __swift_project_value_buffer(v53, qword_27F95CF90);
    v54 = v72;
    (*(v72 + 16))(v12, a1, v52);
    v55 = sub_258783744();
    v56 = sub_258783924();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v74 = v58;
      *v57 = 136315394;
      v73 = v21;
      v59 = sub_258783884();
      v61 = v52;
      v62 = sub_258771F6C(v59, v60, &v74);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2080;
      sub_25877B754(&qword_27F9591B8);
      v63 = sub_2587839F4();
      v65 = v64;
      (*(v54 + 8))(v12, v61);
      v66 = sub_258771F6C(v63, v65, &v74);

      *(v57 + 14) = v66;
      _os_log_impl(&dword_258766000, v55, v56, "No active token %s for identifier %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8A730](v58, -1, -1);
      MEMORY[0x259C8A730](v57, -1, -1);
    }

    else
    {

      (*(v54 + 8))(v12, v52);
    }

    sub_2587751D4(v71);
    return 0;
  }

  v27 = v5;
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v28 = sub_258783764();
  __swift_project_value_buffer(v28, qword_27F95CF90);
  v29 = v72;
  v30 = v70;
  (*(v72 + 16))(v70, a1, v27);
  v31 = sub_258783744();
  v32 = sub_258783924();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v74 = v69;
    *v33 = 136315394;
    v73 = v21;
    v34 = sub_258783884();
    v36 = sub_258771F6C(v34, v35, &v74);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    sub_25877B754(&qword_27F9591B8);
    v37 = sub_2587839F4();
    v39 = v38;
    (*(v29 + 8))(v30, v27);
    v40 = sub_258771F6C(v37, v39, &v74);

    *(v33 + 14) = v40;
    _os_log_impl(&dword_258766000, v31, v32, "Validated active token %s for identifier %s", v33, 0x16u);
    v41 = v69;
    swift_arrayDestroy();
    MEMORY[0x259C8A730](v41, -1, -1);
    MEMORY[0x259C8A730](v33, -1, -1);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
  }

  sub_2587751D4(v71);
  return 1;
}

uint64_t sub_258778808(uint64_t a1, unsigned __int8 *a2, char *a3)
{
  v113 = a3;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9591B0, &unk_2587849D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v109 = &v107 - v9;
  v10 = sub_258783704();
  v11 = *(v10 - 8);
  v114 = v10;
  v115 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v107 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v107 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v110 = &v107 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v107 - v24;
  v26 = type metadata accessor for MediaSession();
  v111 = *(v26 - 8);
  v27 = *(v111 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v112 = &v107 - v31;
  v117 = *a2;
  swift_beginAccess();
  v32 = *(v4 + 136);
  if (!*(v32 + 16))
  {
    goto LABEL_11;
  }

  v33 = *(v4 + 136);

  v34 = sub_258779DB8(a1);
  if ((v35 & 1) == 0)
  {

LABEL_11:
    if (qword_27F958F88 != -1)
    {
      swift_once();
    }

    v58 = sub_258783764();
    __swift_project_value_buffer(v58, qword_27F95CF90);
    v60 = v114;
    v59 = v115;
    (*(v115 + 16))(v15, a1, v114);
    v61 = sub_258783744();
    v62 = sub_258783924();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v116[0] = v64;
      *v63 = 136315138;
      sub_25877B754(&qword_27F9591B8);
      v65 = sub_2587839F4();
      v67 = v66;
      (*(v59 + 8))(v15, v60);
      v68 = sub_258771F6C(v65, v67, v116);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_258766000, v61, v62, "Media session doesn't exist for identifier %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x259C8A730](v64, -1, -1);
      MEMORY[0x259C8A730](v63, -1, -1);
    }

    else
    {

      (*(v59 + 8))(v15, v60);
    }

    *v113 = 1;
    LOBYTE(v116[0]) = 1;
    sub_258773460();
    return swift_willThrowTypedImpl();
  }

  sub_258775170(*(v32 + 56) + *(v111 + 72) * v34, v30);

  v36 = v112;
  sub_258779E3C(v30, v112);
  v37 = *(v36 + *(v26 + 24));
  if (!*(v37 + 16) || (v38 = sub_258779D48(v117), (v39 & 1) == 0))
  {
    if (qword_27F958F88 != -1)
    {
      swift_once();
    }

    v70 = sub_258783764();
    __swift_project_value_buffer(v70, qword_27F95CF90);
    v72 = v114;
    v71 = v115;
    (*(v115 + 16))(v18, a1, v114);
    v73 = sub_258783744();
    v74 = sub_258783924();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v116[0] = v76;
      *v75 = 136315394;
      sub_25877B754(&qword_27F9591B8);
      v77 = sub_2587839F4();
      v79 = v78;
      (*(v71 + 8))(v18, v72);
      v80 = sub_258771F6C(v77, v79, v116);

      *(v75 + 4) = v80;
      *(v75 + 12) = 2080;
      v118 = v117;
      v81 = sub_258783884();
      v83 = sub_258771F6C(v81, v82, v116);

      *(v75 + 14) = v83;
      _os_log_impl(&dword_258766000, v73, v74, "Token request doesn't exist for identifier %s and token %s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8A730](v76, -1, -1);
      MEMORY[0x259C8A730](v75, -1, -1);
    }

    else
    {

      (*(v71 + 8))(v18, v72);
    }

    v84 = 6;
    goto LABEL_29;
  }

  v40 = (*(v37 + 56) + 24 * v38);
  v41 = *v40;
  v42 = *(v40 + 2);
  v108 = *(v40 + 1);
  v43 = *(v4 + 128);
  if (v42 < (*(v4 + 120))())
  {
    if (qword_27F958F88 != -1)
    {
      swift_once();
    }

    v44 = sub_258783764();
    __swift_project_value_buffer(v44, qword_27F95CF90);
    v46 = v114;
    v45 = v115;
    (*(v115 + 16))(v21, a1, v114);
    v47 = sub_258783744();
    v48 = sub_258783924();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v116[0] = v50;
      *v49 = 136315394;
      sub_25877B754(&qword_27F9591B8);
      v51 = sub_2587839F4();
      v53 = v52;
      (*(v45 + 8))(v21, v46);
      v54 = sub_258771F6C(v51, v53, v116);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2080;
      v118 = v117;
      v55 = sub_258783884();
      v57 = sub_258771F6C(v55, v56, v116);

      *(v49 + 14) = v57;
      _os_log_impl(&dword_258766000, v47, v48, "Token request has timed out for identifier %s and token %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8A730](v50, -1, -1);
      MEMORY[0x259C8A730](v49, -1, -1);
    }

    else
    {

      (*(v45 + 8))(v21, v46);
    }

    v84 = 7;
LABEL_29:
    *v113 = v84;
    LOBYTE(v116[0]) = v84;
    sub_258773460();
    swift_willThrowTypedImpl();
    return sub_2587751D4(v112);
  }

  v85 = v112;
  LODWORD(v113) = v41;
  v86 = v117;
  sub_2587769D4(v117, v116);
  v87 = *(v26 + 20);
  v88 = *(v85 + v87);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v116[0] = *(v85 + v87);
  sub_25877B4DC(v113, v108, v42, v86, isUniquelyReferenced_nonNull_native);
  *(v85 + v87) = v116[0];
  v90 = v114;
  v91 = *(v115 + 16);
  v91(v25, a1, v114);
  v92 = v85;
  v93 = v109;
  sub_258775170(v92, v109);
  (*(v111 + 56))(v93, 0, 1, v26);
  swift_beginAccess();
  sub_2587767E8(v93, v25);
  swift_endAccess();
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v94 = sub_258783764();
  __swift_project_value_buffer(v94, qword_27F95CF90);
  v95 = v110;
  v91(v110, a1, v90);
  v96 = sub_258783744();
  v97 = sub_258783924();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v116[0] = v99;
    *v98 = 136315394;
    sub_25877B754(&qword_27F9591B8);
    v100 = sub_2587839F4();
    v102 = v101;
    (*(v115 + 8))(v95, v90);
    v103 = sub_258771F6C(v100, v102, v116);

    *(v98 + 4) = v103;
    *(v98 + 12) = 2080;
    v118 = v117;
    v104 = sub_258783884();
    v106 = sub_258771F6C(v104, v105, v116);

    *(v98 + 14) = v106;
    _os_log_impl(&dword_258766000, v96, v97, "Successfully activated media token for session=%s type=%s", v98, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C8A730](v99, -1, -1);
    MEMORY[0x259C8A730](v98, -1, -1);
  }

  else
  {

    (*(v115 + 8))(v95, v90);
  }

  return sub_2587751D4(v112);
}

uint64_t sub_2587793A4(uint64_t a1, unsigned __int8 *a2, void (*a3)(char *, char *, uint64_t))
{
  v85 = a3;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9591B0, &unk_2587849D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v81 - v9;
  v11 = sub_258783704();
  v12 = *(v11 - 8);
  v86 = v11;
  v87 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v83 = &v81 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v82 = &v81 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v81 - v21;
  v23 = type metadata accessor for MediaSession();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v84 = &v81 - v29;
  v89 = *a2;
  swift_beginAccess();
  v30 = *(v4 + 136);
  if (*(v30 + 16))
  {
    v31 = *(v4 + 136);

    v32 = sub_258779DB8(a1);
    if (v33)
    {
      sub_258775170(*(v30 + 56) + *(v24 + 72) * v32, v28);

      v34 = v84;
      sub_258779E3C(v28, v84);
      if (*(*(v34 + *(v23 + 20)) + 16) && (sub_258779D48(v89), (v35 & 1) != 0))
      {
        v36 = v84;
        sub_2587769D4(v89, v88);
        v37 = *(v87 + 16);
        v83 = a1;
        v38 = a1;
        v39 = v86;
        v85 = v37;
        v37(v22, v38, v86);
        sub_258775170(v36, v10);
        (*(v24 + 56))(v10, 0, 1, v23);
        swift_beginAccess();
        sub_2587767E8(v10, v22);
        swift_endAccess();
        if (qword_27F958F88 != -1)
        {
          swift_once();
        }

        v40 = sub_258783764();
        __swift_project_value_buffer(v40, qword_27F95CF90);
        v41 = v82;
        v85(v82, v83, v39);
        v42 = sub_258783744();
        v43 = sub_258783924();
        v44 = v39;
        if (os_log_type_enabled(v42, v43))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v88[0] = v46;
          *v45 = 136315394;
          sub_25877B754(&qword_27F9591B8);
          v47 = sub_2587839F4();
          v49 = v48;
          (*(v87 + 8))(v41, v44);
          v50 = sub_258771F6C(v47, v49, v88);

          *(v45 + 4) = v50;
          *(v45 + 12) = 2080;
          v90 = v89;
          v51 = sub_258783884();
          v53 = sub_258771F6C(v51, v52, v88);

          *(v45 + 14) = v53;
          _os_log_impl(&dword_258766000, v42, v43, "Successfully deactivated media token for session=%s type=%s", v45, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C8A730](v46, -1, -1);
          MEMORY[0x259C8A730](v45, -1, -1);
        }

        else
        {

          (*(v87 + 8))(v41, v39);
        }

        return sub_2587751D4(v84);
      }

      else
      {
        if (qword_27F958F88 != -1)
        {
          swift_once();
        }

        v66 = sub_258783764();
        __swift_project_value_buffer(v66, qword_27F95CF90);
        v67 = v86;
        v68 = v87;
        v69 = v83;
        (*(v87 + 16))(v83, a1, v86);
        v70 = sub_258783744();
        v71 = sub_258783924();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v88[0] = v73;
          *v72 = 136315394;
          sub_25877B754(&qword_27F9591B8);
          v74 = sub_2587839F4();
          v76 = v75;
          (*(v68 + 8))(v69, v67);
          v77 = sub_258771F6C(v74, v76, v88);

          *(v72 + 4) = v77;
          *(v72 + 12) = 2080;
          v90 = v89;
          v78 = sub_258783884();
          v80 = sub_258771F6C(v78, v79, v88);

          *(v72 + 14) = v80;
          _os_log_impl(&dword_258766000, v70, v71, "Active token doesn't exist for identifier %s and token %s", v72, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C8A730](v73, -1, -1);
          MEMORY[0x259C8A730](v72, -1, -1);
        }

        else
        {

          (*(v68 + 8))(v69, v67);
        }

        *v85 = 5;
        LOBYTE(v88[0]) = 5;
        sub_258773460();
        swift_willThrowTypedImpl();
        return sub_2587751D4(v84);
      }
    }
  }

  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v54 = sub_258783764();
  __swift_project_value_buffer(v54, qword_27F95CF90);
  v55 = v86;
  v56 = v87;
  (*(v87 + 16))(v16, a1, v86);
  v57 = sub_258783744();
  v58 = sub_258783924();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v88[0] = v60;
    *v59 = 136315138;
    sub_25877B754(&qword_27F9591B8);
    v61 = sub_2587839F4();
    v63 = v62;
    (*(v56 + 8))(v16, v55);
    v64 = sub_258771F6C(v61, v63, v88);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_258766000, v57, v58, "Media session doesn't exist for identifier %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x259C8A730](v60, -1, -1);
    MEMORY[0x259C8A730](v59, -1, -1);
  }

  else
  {

    (*(v56 + 8))(v16, v55);
  }

  *v85 = 1;
  LOBYTE(v88[0]) = 1;
  sub_258773460();
  return swift_willThrowTypedImpl();
}

uint64_t sub_258779CD0()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[17];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_258779D48(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_258783A64();
  MEMORY[0x259C8A340]((a1 & 1u) + 1);
  v5 = sub_258783A94();

  return sub_258779F08(a1 & 1, v5);
}

unint64_t sub_258779DB8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_258783704();
  sub_25877B754(&qword_27F959108);
  v5 = sub_258783834();

  return sub_258779F88(a1, v5);
}

uint64_t sub_258779E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaSession();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258779EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9591B0, &unk_2587849D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258779F08(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = (a1 & 1u) + 1;
    do
    {
      if (*(*(v2 + 48) + result))
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      if (v8 == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_258779F88(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_258783704();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_25877B754(&qword_27F9591C0);
      v16 = sub_258783854();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_25877A134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_258779DB8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25877AE8C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_258783704();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for MediaSession();
    v22 = *(v15 - 8);
    sub_258779E3C(v14 + *(v22 + 72) * v8, a2);
    sub_25877A9B4(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for MediaSession();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_25877A2BC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for MediaSession();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258783704();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9590A8, &unk_2587844C0);
  v48 = a2;
  result = sub_258783984();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_258779E3C(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_258775170(v33 + v32 * v28, v52);
      }

      v34 = *(v16 + 40);
      sub_25877B754(&qword_27F959108);
      result = sub_258783834();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_258779E3C(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_25877A70C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959048, qword_2587849E0);
  result = sub_258783984();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = a2;
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(*(v5 + 48) + v21);
      v24 = (v22 + 24 * v21);
      v25 = *(v24 + 1);
      v40 = *(v24 + 2);
      v26 = *v24;
      v27 = *(v8 + 40);
      sub_258783A64();
      if (v23)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      MEMORY[0x259C8A340](v28);
      result = sub_258783A94();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v23;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v26;
      v5 = v39;
      *(v17 + 8) = v25;
      *(v17 + 16) = v40;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_25877A9B4(int64_t a1, uint64_t a2)
{
  v4 = sub_258783704();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_258783944();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_25877B754(&qword_27F959108);
      v24 = sub_258783834();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for MediaSession() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25877ACE4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258783944() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_258783A64();
      if (v11)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      MEMORY[0x259C8A340](v12);
      result = sub_258783A94();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v13)
      {
LABEL_13:
        v14 = *(a2 + 48);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 24 * v3;
        v19 = (v17 + 24 * v6);
        if (v3 != v6 || v18 >= v19 + 24)
        {
          v9 = *v19;
          *(v18 + 16) = *(v19 + 2);
          *v18 = v9;
          v3 = v6;
        }
      }

LABEL_4:
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

char *sub_25877AE8C()
{
  v1 = v0;
  v2 = type metadata accessor for MediaSession();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_258783704();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9590A8, &unk_2587844C0);
  v7 = *v0;
  v8 = sub_258783974();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_258775170(*(v7 + 56) + v28, v37);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_258779E3C(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
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

void *sub_25877B190()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959048, qword_2587849E0);
  v2 = *v0;
  v3 = sub_258783974();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_25877B2F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_258783704();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_258779DB8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25877AE8C();
      goto LABEL_7;
    }

    sub_25877A2BC(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_258779DB8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25877B614(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_258783A14();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for MediaSession() - 8) + 72) * v15;

  return sub_25877B6F0(a1, v23);
}

unint64_t sub_25877B4DC(char a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_258779D48(a4 & 1);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      sub_25877B190();
      result = v21;
      goto LABEL_8;
    }

    sub_25877A70C(v18, a5 & 1);
    v22 = *v6;
    result = sub_258779D48(a4 & 1);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_14:
      result = sub_258783A14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 24 * result;
    *v25 = a1 & 1;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3;
  }

  else
  {

    return sub_25877B798(result, a4 & 1, a1 & 1, a2, a3, v24);
  }

  return result;
}

uint64_t sub_25877B614(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_258783704();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for MediaSession();
  result = sub_258779E3C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_25877B6F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaSession();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25877B754(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_258783704();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25877B798(unint64_t result, char a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + result) = a2 & 1;
  v6 = a6[7] + 24 * result;
  *v6 = a3 & 1;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_25877B804(uint64_t a1, uint64_t a2)
{
  v4 = sub_2587836A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25877B884(uint64_t a1, uint64_t a2)
{
  v4 = sub_2587836A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PersistenceConfiguration()
{
  result = qword_27F9591C8;
  if (!qword_27F9591C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25877B940()
{
  result = sub_2587836A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25877B9AC()
{
  v0 = sub_258783654();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2587836A4();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v26);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  v12 = type metadata accessor for PersistenceConfiguration();
  v25 = v12;
  __swift_allocate_value_buffer(v12, qword_27F95CF58);
  v13 = __swift_project_value_buffer(v12, qword_27F95CF58);
  sub_258783674();
  v27 = 0xD00000000000001CLL;
  v28 = 0x80000002587861B0;
  v14 = *MEMORY[0x277CC91D8];
  v15 = v1;
  v24 = *(v1 + 104);
  v16 = v0;
  v24(v4, v14, v0);
  v23[2] = sub_25877BC9C();
  sub_258783694();
  v17 = *(v15 + 8);
  v23[1] = v15 + 8;
  v17(v4, v16);
  v18 = *(v5 + 8);
  v19 = v9;
  v20 = v26;
  v18(v19, v26);
  (*(v5 + 16))(v13, v11, v20);
  v27 = 0xD000000000000013;
  v28 = 0x8000000258786250;
  v24(v4, *MEMORY[0x277CC91D0], v16);
  v21 = v13 + *(v25 + 20);
  sub_258783694();
  v17(v4, v16);
  return (v18)(v11, v26);
}

unint64_t sub_25877BC9C()
{
  result = qword_27F9591D8;
  if (!qword_27F9591D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9591D8);
  }

  return result;
}

void sub_25877BCF0()
{
  v33[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_258783684();
  v2 = sub_258783864();

  v3 = [v1 fileExistsAtPath_];

  if (v3)
  {
    if (qword_27F958F88 != -1)
    {
      swift_once();
    }

    v4 = sub_258783764();
    __swift_project_value_buffer(v4, qword_27F95CF90);

    v5 = sub_258783744();
    v6 = sub_258783924();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33[0] = v8;
      *v7 = 136315138;
      sub_2587836A4();
      sub_25877CE04(&qword_27F959220, MEMORY[0x277CC9260]);
      v9 = sub_2587839F4();
      v11 = sub_258771F6C(v9, v10, v33);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_258766000, v5, v6, "MediaTokens folder already exists at url %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x259C8A730](v8, -1, -1);
      MEMORY[0x259C8A730](v7, -1, -1);
    }
  }

  else
  {
    if (qword_27F958F88 != -1)
    {
      swift_once();
    }

    v12 = sub_258783764();
    __swift_project_value_buffer(v12, qword_27F95CF90);

    v13 = sub_258783744();
    v14 = sub_258783924();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      v16 = v33[0];
      *v15 = 136315138;
      sub_2587836A4();
      sub_25877CE04(&qword_27F959220, MEMORY[0x277CC9260]);
      v17 = sub_2587839F4();
      v19 = sub_258771F6C(v17, v18, v33);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_258766000, v13, v14, "MediaTokens folder doesn't exist - creating now at url %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x259C8A730](v16, -1, -1);
      MEMORY[0x259C8A730](v15, -1, -1);
    }

    v20 = [v0 defaultManager];
    v21 = sub_258783664();
    v33[0] = 0;
    v22 = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:v33];

    if (v22)
    {
      v23 = v33[0];
    }

    else
    {
      v24 = v33[0];
      sub_258783644();

      swift_willThrow();

      v25 = sub_258783744();
      v26 = sub_258783914();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33[0] = v28;
        *v27 = 136315138;
        sub_2587836A4();
        sub_25877CE04(&qword_27F959220, MEMORY[0x277CC9260]);
        v29 = sub_2587839F4();
        v31 = sub_258771F6C(v29, v30, v33);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_258766000, v25, v26, "Failed to create media tokens folder at URL %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x259C8A730](v28, -1, -1);
        MEMORY[0x259C8A730](v27, -1, -1);
      }

      swift_willThrow();
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25877C26C()
{
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v0 = sub_258783764();
  __swift_project_value_buffer(v0, qword_27F95CF90);
  v1 = sub_258783744();
  v2 = sub_258783924();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258766000, v1, v2, "Loading media sessions", v3, 2u);
    MEMORY[0x259C8A730](v3, -1, -1);
  }

  v4 = *(type metadata accessor for PersistenceConfiguration() + 20);
  v5 = sub_2587836C4();
  v7 = v6;
  v8 = sub_2587835A4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_258783594();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9591F0, &qword_258784A58);
  sub_25877CD18();
  sub_258783584();

  v12 = v20;

  v13 = sub_258783744();
  v14 = sub_258783924();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    sub_258783704();
    type metadata accessor for MediaSession();
    sub_25877CE04(&qword_27F959108, MEMORY[0x277CC95F0]);
    v17 = sub_258783814();
    v19 = sub_258771F6C(v17, v18, &v20);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_258766000, v13, v14, "Loaded media sessions %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x259C8A730](v16, -1, -1);
    MEMORY[0x259C8A730](v15, -1, -1);
  }

  sub_25877CCC4(v5, v7);

  return v12;
}

void sub_25877C640(uint64_t a1)
{
  v2 = v1;
  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v4 = sub_258783764();
  __swift_project_value_buffer(v4, qword_27F95CF90);

  v5 = sub_258783744();
  v6 = sub_258783924();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    sub_258783704();
    type metadata accessor for MediaSession();
    sub_25877CE04(&qword_27F959108, MEMORY[0x277CC95F0]);
    v9 = sub_258783814();
    v11 = sub_258771F6C(v9, v10, &v28);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_258766000, v5, v6, "Writing media sessions %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x259C8A730](v8, -1, -1);
    v2 = v1;
    MEMORY[0x259C8A730](v7, -1, -1);
  }

  v12 = sub_2587835D4();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_2587835C4();
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9591F0, &qword_258784A58);
  sub_25877CB70();
  v15 = sub_2587835B4();
  if (v2)
  {

    MEMORY[0x259C8A640](v2);
    v20 = sub_258783744();
    v21 = sub_258783914();
    MEMORY[0x259C8A630](v2);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      MEMORY[0x259C8A640](v2);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_258766000, v20, v21, "Failed to write media sessions with error %@", v22, 0xCu);
      sub_25877CC5C(v23);
      MEMORY[0x259C8A730](v23, -1, -1);
      MEMORY[0x259C8A730](v22, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v17 = v15;
    v18 = v16;

    v19 = *(type metadata accessor for PersistenceConfiguration() + 20);
    sub_2587836E4();
    v25 = sub_258783744();
    v26 = sub_258783924();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_258766000, v25, v26, "Finished writing media sessions", v27, 2u);
      MEMORY[0x259C8A730](v27, -1, -1);
    }

    sub_25877CCC4(v17, v18);
  }
}

uint64_t sub_25877CA28()
{
  sub_25877CE4C(v0 + OBJC_IVAR____TtC11MediaTokens21PersistenceController_configuration);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for PersistenceController()
{
  result = qword_27F9591E0;
  if (!qword_27F9591E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25877CAE0()
{
  result = type metadata accessor for PersistenceConfiguration();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_25877CB70()
{
  result = qword_27F9591F8;
  if (!qword_27F9591F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9591F0, &qword_258784A58);
    sub_25877CE04(&qword_27F9590E0, MEMORY[0x277CC95F0]);
    sub_25877CE04(&qword_27F959200, type metadata accessor for MediaSession);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9591F8);
  }

  return result;
}

uint64_t sub_25877CC5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959208, &unk_258784A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25877CCC4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_25877CD18()
{
  result = qword_27F959210;
  if (!qword_27F959210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9591F0, &qword_258784A58);
    sub_25877CE04(&qword_27F959118, MEMORY[0x277CC95F0]);
    sub_25877CE04(&qword_27F959218, type metadata accessor for MediaSession);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959210);
  }

  return result;
}

uint64_t sub_25877CE04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25877CE4C(uint64_t a1)
{
  v2 = type metadata accessor for PersistenceConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25877CEA8@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = sub_2587838B4();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_25877CF0C(uint64_t *a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_25877CCC4(v6, v5);
      *v21 = v6;
      *&v21[8] = v5;
      v21[10] = BYTE2(v5);
      v21[11] = BYTE3(v5);
      v21[12] = BYTE4(v5);
      v21[13] = BYTE5(v5);
      v21[14] = BYTE6(v5);
      result = sub_25877CEA8(v21, a2, &v22);
      if (!v2)
      {
        result = v22;
      }

      v9 = *&v21[8] | ((*&v21[12] | (v21[14] << 16)) << 32);
      *a1 = *v21;
      a1[1] = v9;
      goto LABEL_20;
    }

    v12 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25877CCC4(v6, v5);
    *a1 = xmmword_258784A70;
    sub_25877CCC4(0, 0xC000000000000000);
    v13 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v6)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (sub_2587835F4() && __OFSUB__(v6, sub_258783624()))
      {
LABEL_24:
        __break(1u);
      }

      v14 = sub_258783634();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_2587835E4();

      v12 = v17;
    }

    if (v13 >= v6)
    {

      v18 = sub_25877D27C(v6, v6 >> 32, v12, a2);

      v11 = v12 | 0x4000000000000000;
      if (!v2)
      {
        *a1 = v6;
        a1[1] = v11;
        result = v18;
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v7 == 2)
  {
    v10 = *a1;

    sub_25877CCC4(v6, v5);
    v22 = v6;
    v23 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_258784A70;
    sub_25877CCC4(0, 0xC000000000000000);
    sub_2587836B4();
    v6 = v22;
    result = sub_25877D27C(*(v22 + 16), *(v22 + 24), v23, a2);
    v11 = v23 | 0x8000000000000000;
    if (!v2)
    {
      *a1 = v22;
      a1[1] = v11;
      goto LABEL_20;
    }

LABEL_19:
    *a1 = v6;
    a1[1] = v11;
    goto LABEL_20;
  }

  memset(v21, 0, 15);
  result = sub_25877CEA8(v21, a2, &v22);
  if (!v2)
  {
    result = v22;
  }

LABEL_20:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25877D27C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_2587835F4();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = sub_258783624();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_258783614();
  result = sub_25877CEA8((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_25877D328(int *a1, int a2)
{
  result = sub_2587836D4();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_2587835F4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_258783624();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_258783614();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_25877D3D0()
{
  sub_258783894();
  v0 = _set_user_dir_suffix();

  if (v0)
  {
    v1 = NSTemporaryDirectory();
    v2 = sub_258783874();
    v4 = v3;

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = sub_258783634();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      v26 = 0x40000000000;
      v27 = sub_258783604();
      sub_25877D328(&v26, 0);
      v27 |= 0x4000000000000000uLL;
      sub_25877CF0C(&v26, 65537);
      v10 = v9;
      sub_25877CCC4(v26, v27);
      if (v10)
      {
        v11 = sub_258783894();

        v12 = realpath_DARWIN_EXTSN((v11 + 32), 0);

        if (v12)
        {
          sub_2587838B4();
          MEMORY[0x259C8A730](v12, -1, -1);

          return v12;
        }
      }

      if (qword_27F958F88 != -1)
      {
        swift_once();
      }

      v17 = sub_258783764();
      __swift_project_value_buffer(v17, qword_27F95CF90);
      v18 = sub_258783744();
      v19 = sub_258783904();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_258766000, v18, v19, "Sandbox: confstr(_CS_DARWIN_USER_TEMP_DIR) failed", v20, 2u);
        MEMORY[0x259C8A730](v20, -1, -1);
      }

      v12 = 2;
    }

    else
    {
      if (qword_27F958F88 != -1)
      {
        swift_once();
      }

      v21 = sub_258783764();
      __swift_project_value_buffer(v21, qword_27F95CF90);
      v22 = sub_258783744();
      v23 = sub_258783904();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_258766000, v22, v23, "Unable to create temp directory", v24, 2u);
        MEMORY[0x259C8A730](v24, -1, -1);
      }

      v12 = 1;
    }

    LOBYTE(v26) = v12;
    sub_25877D79C();
    swift_willThrowTypedImpl();
    return v12;
  }

  if (qword_27F958F88 != -1)
  {
    swift_once();
  }

  v13 = sub_258783764();
  __swift_project_value_buffer(v13, qword_27F95CF90);
  v14 = sub_258783744();
  v15 = sub_258783904();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_258766000, v14, v15, "Sandbox: _set_user_dir_suffix returned nil", v16, 2u);
    MEMORY[0x259C8A730](v16, -1, -1);
  }

  LOBYTE(v26) = 0;
  sub_25877D79C();
  swift_willThrowTypedImpl();
  return 0;
}

unint64_t sub_25877D79C()
{
  result = qword_27F959228;
  if (!qword_27F959228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959228);
  }

  return result;
}

unint64_t sub_25877D804()
{
  result = qword_27F959230;
  if (!qword_27F959230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959230);
  }

  return result;
}

uint64_t sub_25877D86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258783704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25877D938(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_258783704();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for ActivateMediaToken()
{
  result = qword_27F959238;
  if (!qword_27F959238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25877DA3C()
{
  result = sub_258783704();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25877DAB0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959268, &qword_258784C38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25877E264();
  sub_258783AB4();
  v12[15] = 0;
  sub_258783704();
  sub_25877E378(&qword_27F9590E0, MEMORY[0x277CC95F0]);
  sub_2587839D4();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for ActivateMediaToken() + 20));
    v12[13] = 1;
    sub_2587745D8();
    sub_2587839D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25877DC80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_258783704();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959258, &qword_258784C30);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ActivateMediaToken();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25877E264();
  sub_258783AA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_25877E378(&qword_27F959118, MEMORY[0x277CC95F0]);
  v19 = v31;
  v20 = v29;
  sub_2587839B4();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_2587750C8();
  sub_2587839B4();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v33;
  sub_25877E2B8(v22, v27);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25877E31C(v22);
}

uint64_t sub_25877DFE0()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 0x496E6F6973736573;
  }

  *v0;
  return result;
}

uint64_t sub_25877E018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v6 || (sub_258783A04() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_258783A04();

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

uint64_t sub_25877E108(uint64_t a1)
{
  v2 = sub_25877E264();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25877E144(uint64_t a1)
{
  v2 = sub_25877E264();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25877E264()
{
  result = qword_27F959260;
  if (!qword_27F959260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959260);
  }

  return result;
}

uint64_t sub_25877E2B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivateMediaToken();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25877E31C(uint64_t a1)
{
  v2 = type metadata accessor for ActivateMediaToken();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25877E378(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25877E3D4()
{
  result = qword_27F959270;
  if (!qword_27F959270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959270);
  }

  return result;
}

unint64_t sub_25877E42C()
{
  result = qword_27F959278;
  if (!qword_27F959278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959278);
  }

  return result;
}

unint64_t sub_25877E484()
{
  result = qword_27F959280;
  if (!qword_27F959280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F959280);
  }

  return result;
}

uint64_t sub_25877E4EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_258783704();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25877E56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_258783704();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CreateMediaSession()
{
  result = qword_27F959288;
  if (!qword_27F959288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25877E628()
{
  result = sub_258783704();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25877E694@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_258783704();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9592A8, &qword_258784E40);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  MediaSession = type metadata accessor for CreateMediaSession();
  v12 = *(*(MediaSession - 8) + 64);
  MEMORY[0x28223BE20](MediaSession - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25877ED0C();
  sub_258783AA4();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_25877EDC4(&qword_27F959118, MEMORY[0x277CC95F0]);
    sub_2587839B4();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_25877ED60(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25877E924()
{
  sub_258783A64();
  MEMORY[0x259C8A340](0);
  return sub_258783A94();
}

uint64_t sub_25877E990()
{
  sub_258783A64();
  MEMORY[0x259C8A340](0);
  return sub_258783A94();
}

uint64_t sub_25877E9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_258783A04();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25877EA74(uint64_t a1)
{
  v2 = sub_25877ED0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25877EAB0(uint64_t a1)
{
  v2 = sub_25877ED0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25877EB04(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9592B8, &qword_258784E48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25877ED0C();
  sub_258783AB4();
  sub_258783704();
  sub_25877EDC4(&qword_27F9590E0, MEMORY[0x277CC95F0]);
  sub_2587839D4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_25877ED0C()
{
  result = qword_27F9592B0;
  if (!qword_27F9592B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9592B0);
  }

  return result;
}

uint64_t sub_25877ED60(uint64_t a1, uint64_t a2)
{
  MediaSession = type metadata accessor for CreateMediaSession();
  (*(*(MediaSession - 8) + 32))(a2, a1, MediaSession);
  return a2;
}

uint64_t sub_25877EDC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for CreateMediaSession.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CreateMediaSession.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25877EEF8()
{
  result = qword_27F9592C0;
  if (!qword_27F9592C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9592C0);
  }

  return result;
}

unint64_t sub_25877EF50()
{
  result = qword_27F9592C8;
  if (!qword_27F9592C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9592C8);
  }

  return result;
}

unint64_t sub_25877EFA8()
{
  result = qword_27F9592D0;
  if (!qword_27F9592D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9592D0);
  }

  return result;
}

uint64_t sub_25877F010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258783704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25877F0DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_258783704();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for DeactivateMediaToken()
{
  result = qword_27F9592D8;
  if (!qword_27F9592D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25877F1E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F959308, &qword_258785058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25877F848();
  sub_258783AB4();
  v12[15] = 0;
  sub_258783704();
  sub_25877F95C(&qword_27F9590E0, MEMORY[0x277CC95F0]);
  sub_2587839D4();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for DeactivateMediaToken() + 20));
    v12[13] = 1;
    sub_2587745D8();
    sub_2587839D4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25877F3B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_258783704();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9592F8, &qword_258785050);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for DeactivateMediaToken();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25877F848();
  sub_258783AA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_25877F95C(&qword_27F959118, MEMORY[0x277CC95F0]);
  v19 = v31;
  v20 = v29;
  sub_2587839B4();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_2587750C8();
  sub_2587839B4();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v33;
  sub_25877F89C(v22, v27);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25877F900(v22);
}