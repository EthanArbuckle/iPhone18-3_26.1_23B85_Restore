uint64_t sub_20DF03658(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = a3;
  *(v3 + 264) = a1;
  v4 = sub_20DF47BD4();
  *(v3 + 168) = v4;
  v5 = *(v4 - 8);
  *(v3 + 176) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0371C, 0, 0);
}

uint64_t sub_20DF0371C()
{
  v1 = sub_20DF477E4();
  v3 = v2;
  v0[24] = v2;
  v4 = swift_task_alloc();
  v0[25] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[26] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE30, qword_20DF4AFE8);
  *v6 = v0;
  v6[1] = sub_20DF03830;

  return MEMORY[0x2822008A0](v0 + 18, 0, 0, 0xD000000000000016, 0x800000020DF4F840, sub_20DF161FC, v4, v7);
}

uint64_t sub_20DF03830()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_20DF03B10;
  }

  else
  {
    v5 = *(v2 + 192);
    v6 = *(v2 + 200);

    v4 = sub_20DF03954;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF03954()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
    v1 = sub_20DED8600(MEMORY[0x277D84F90]);
  }

  v2 = *(v0 + 264);
  *(v0 + 136) = v1;
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  if (v2 == 1)
  {
    *(v0 + 72) = MEMORY[0x277D839B0];
    *(v0 + 48) = 1;
    sub_20DED8390((v0 + 48), (v0 + 80));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20DF0E9A0((v0 + 80), v4, v3, isUniquelyReferenced_nonNull_native);
    v6 = v1;
    *(v0 + 136) = v1;
  }

  else
  {
    sub_20DF0E74C(*(v0 + 152), *(v0 + 160), (v0 + 16));
    sub_20DED8730(v0 + 16, &qword_27C84CA00, &qword_20DF4A170);
    v6 = *(v0 + 136);
  }

  *(v0 + 224) = v6;
  v7 = sub_20DF477E4();
  v9 = v8;
  *(v0 + 232) = v8;
  v10 = swift_task_alloc();
  *(v0 + 240) = v10;
  v10[2] = v7;
  v10[3] = v9;
  v10[4] = v6;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  *v12 = v0;
  v12[1] = sub_20DF03DD0;
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v12, 0, 0, 0xD00000000000001BLL, 0x800000020DF4F820, sub_20DF161D8, v10, v13);
}

uint64_t sub_20DF03B10()
{
  v28 = v0;
  v1 = v0[24];
  v2 = v0[25];

  v3 = v0[27];
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = __swift_project_value_buffer(v6, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);

  v8 = v3;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FF4();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[22];
  v12 = v0[23];
  v14 = v0[21];
  if (v11)
  {
    v26 = v0[23];
    v15 = v0[19];
    v16 = v0[20];
    v25 = v0[21];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v17 = 136315650;
    *(v17 + 4) = sub_20DED38E8(0xD00000000000002BLL, 0x800000020DF4F860, &v27);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_20DED38E8(v15, v16, &v27);
    *(v17 + 22) = 2112;
    v20 = v3;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v21;
    *v18 = v21;
    _os_log_impl(&dword_20DEAF000, v9, v10, "%s failed for homeID: %s error: %@", v17, 0x20u);
    sub_20DED8730(v18, &qword_27C84C948, qword_20DF49940);
    MEMORY[0x20F329700](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v19, -1, -1);
    MEMORY[0x20F329700](v17, -1, -1);

    (*(v13 + 8))(v26, v25);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = v0[23];

  v23 = v0[1];

  return v23();
}

uint64_t sub_20DF03DD0()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v9 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_20DF03F68;
  }

  else
  {
    v6 = v2[29];
    v5 = v2[30];
    v7 = v2[28];

    v4 = sub_20DF03F08;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF03F08()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DF03F68()
{
  v29 = v0;
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];

  v4 = v0[32];
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = __swift_project_value_buffer(v7, qword_27C851F48);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);

  v9 = v4;
  v10 = sub_20DF47BB4();
  v11 = sub_20DF47FF4();

  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[21];
  if (v12)
  {
    v27 = v0[23];
    v16 = v0[19];
    v17 = v0[20];
    v26 = v0[21];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v18 = 136315650;
    *(v18 + 4) = sub_20DED38E8(0xD00000000000002BLL, 0x800000020DF4F860, &v28);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_20DED38E8(v16, v17, &v28);
    *(v18 + 22) = 2112;
    v21 = v4;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v22;
    *v19 = v22;
    _os_log_impl(&dword_20DEAF000, v10, v11, "%s failed for homeID: %s error: %@", v18, 0x20u);
    sub_20DED8730(v19, &qword_27C84C948, qword_20DF49940);
    MEMORY[0x20F329700](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v20, -1, -1);
    MEMORY[0x20F329700](v18, -1, -1);

    (*(v14 + 8))(v27, v26);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v23 = v0[23];

  v24 = v0[1];

  return v24();
}

uint64_t sub_20DF04234(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_20DF47BD4();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF042F4, 0, 0);
}

uint64_t sub_20DF042F4()
{
  v1 = sub_20DF477E4();
  v3 = v2;
  v0[15] = v2;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[17] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE30, qword_20DF4AFE8);
  *v6 = v0;
  v6[1] = sub_20DF04408;

  return MEMORY[0x2822008A0](v0 + 9, 0, 0, 0xD000000000000016, 0x800000020DF4F840, sub_20DF161FC, v4, v7);
}

uint64_t sub_20DF04408()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_20DF0461C;
  }

  else
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 128);

    v4 = sub_20DF0452C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF0452C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    if (!*(v1 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v1 = sub_20DED8600(MEMORY[0x277D84F90]);
    if (!*(v1 + 16))
    {
LABEL_8:

      goto LABEL_9;
    }
  }

  v2 = sub_20DEEFAE0(*(v0 + 80), *(v0 + 88));
  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_20DEBA2EC(*(v1 + 56) + 32 * v2, v0 + 16);

  if (swift_dynamicCast())
  {
    v4 = *(v0 + 152);
    goto LABEL_10;
  }

LABEL_9:
  v4 = 0;
LABEL_10:
  v5 = *(v0 + 112);

  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_20DF0461C()
{
  v29 = v0;
  v1 = v0[15];
  v2 = v0[16];

  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = __swift_project_value_buffer(v6, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);

  v8 = v3;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FF4();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[18];
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[12];
  if (v11)
  {
    v27 = v0[14];
    v16 = v0[10];
    v17 = v0[11];
    v26 = v0[12];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v18 = 136315650;
    *(v18 + 4) = sub_20DED38E8(0xD000000000000026, 0x800000020DF4F890, &v28);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_20DED38E8(v16, v17, &v28);
    *(v18 + 22) = 2112;
    v21 = v12;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v22;
    *v19 = v22;
    _os_log_impl(&dword_20DEAF000, v9, v10, "%s failed for homeID: %s error: %@", v18, 0x20u);
    sub_20DED8730(v19, &qword_27C84C948, qword_20DF49940);
    MEMORY[0x20F329700](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v20, -1, -1);
    MEMORY[0x20F329700](v18, -1, -1);

    (*(v14 + 8))(v27, v26);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v23 = v0[14];

  v24 = v0[1];

  return v24(0);
}

uint64_t sub_20DF048E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_20DF04908, 0, 0);
}

uint64_t sub_20DF04908()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  *v5 = v0;
  v5[1] = sub_20DF04A18;
  v7 = *(v0 + 16);

  return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000020, 0x800000020DF4F8C0, sub_20DF0EEEC, v2, v6);
}

uint64_t sub_20DF04A18()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_20DF04B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE80, &qword_20DF4B320);
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v7[24] = *(v9 + 64);
  v7[25] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF04C50, 0, 0);
}

uint64_t sub_20DF04C50()
{
  v16 = v0[27];
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v14 = v0[20];
  v15 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[29] = sub_20DF3C9D8();
  (*(v3 + 16))(v2, v6, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = sub_20DF3D598(sub_20DF13E00, v8);
  v0[30] = v9;

  v10 = sub_20DF47D04();
  v0[31] = v10;
  v11 = sub_20DF47524();
  v0[32] = v11;
  v0[2] = v0;
  v0[7] = v16;
  v0[3] = sub_20DF04E78;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE88, &qword_20DF4B338);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF05090;
  v0[13] = &block_descriptor_246;
  v0[14] = v12;
  [v9 addGuidanceTokenWithGridID:v10 siteID:v11 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF04E78()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF04F58, 0, 0);
}

uint64_t sub_20DF04F58()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[26];
  v11 = v0[25];
  v7 = v0[22];
  v8 = v0[18];
  sub_20DED9CE8(v0[27], v5, &qword_27C84CCB8, &qword_20DF4AC48);
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  sub_20DED8804(v5, v6, &qword_27C84CCB8, &qword_20DF4AC48);
  sub_20DF47EE4();

  sub_20DED8730(v5, &qword_27C84CCB8, &qword_20DF4AC48);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DF05090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_20DF47544();
    v12 = sub_20DF47564();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  else
  {
    v13 = sub_20DF47564();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  sub_20DED9CE8(v8, v10, &qword_27C84CCB8, &qword_20DF4AC48);
  sub_20DED9CE8(v10, *(*(v11 + 64) + 40), &qword_27C84CCB8, &qword_20DF4AC48);
  return swift_continuation_resume();
}

uint64_t sub_20DF05240()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_20DF05334;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD00000000000001CLL, 0x800000020DF4F8F0, sub_20DF0EF28, v2, v5);
}

uint64_t sub_20DF05334()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DF0544C, 0, 0);
}

uint64_t sub_20DF05460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340);
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v5[22] = *(v7 + 64);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF05534, 0, 0);
}

uint64_t sub_20DF05534()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[24] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = sub_20DF3D598(sub_20DF13AE4, v8);
  v0[25] = v9;

  v10 = sub_20DF47524();
  v0[26] = v10;
  v0[2] = v0;
  v0[3] = sub_20DF05730;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF2B4C4;
  v0[13] = &block_descriptor_236;
  v0[14] = v11;
  [v9 deleteGuidanceTokenWithSiteID:v10 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF05730()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF05810, 0, 0);
}

uint64_t sub_20DF05810()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[20];
  v6 = v0[18];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  sub_20DF47EE4();

  v7 = v0[1];

  return v7();
}

uint64_t sub_20DF058B8(void *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27C851F48);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[1] = a1;
    v19 = v12;
    *v11 = 136315138;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v14 = sub_20DF47D24();
    v16 = sub_20DED38E8(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_20DEAF000, v9, v10, "Failed to delete Guidance Token. %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340);
  return sub_20DF47EE4();
}

uint64_t sub_20DF05B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_20DF05B40, 0, 0);
}

uint64_t sub_20DF05B40()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  *v5 = v0;
  v5[1] = sub_20DF16108;
  v7 = *(v0 + 16);

  return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000020, 0x800000020DF4F910, sub_20DF0EF70, v2, v6);
}

uint64_t sub_20DF05C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a3;
  v34 = a6;
  v31 = a5;
  v32 = a2;
  v30 = a1;
  v7 = sub_20DF47564();
  v28 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE80, &qword_20DF4B320);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = sub_20DF47F04();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v11 + 16))(v14, v30, v10);
  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v8 + 80) + v21 + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v11 + 32))(v23 + v20, v14, v10);
  v24 = (v23 + v21);
  v25 = v33;
  *v24 = v32;
  v24[1] = v25;
  (*(v8 + 32))(v23 + v22, v29, v28);

  sub_20DEBB534(0, 0, v18, v34, v23);
}

uint64_t sub_20DF05F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE80, &qword_20DF4B320);
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v7[24] = *(v9 + 64);
  v7[25] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF06044, 0, 0);
}

uint64_t sub_20DF06044()
{
  v16 = v0[27];
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v14 = v0[20];
  v15 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[29] = sub_20DF3C9D8();
  (*(v3 + 16))(v2, v6, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = sub_20DF3D598(sub_20DF161F4, v8);
  v0[30] = v9;

  v10 = sub_20DF47D04();
  v0[31] = v10;
  v11 = sub_20DF47524();
  v0[32] = v11;
  v0[2] = v0;
  v0[7] = v16;
  v0[3] = sub_20DF0626C;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE88, &qword_20DF4B338);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF05090;
  v0[13] = &block_descriptor_226;
  v0[14] = v12;
  [v9 getGuidanceTokenWithGridID:v10 siteID:v11 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF0626C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF161B0, 0, 0);
}

uint64_t sub_20DF0634C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - v6;
  v8 = sub_20DF47BD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_27C851F48);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = a1;
  v15 = sub_20DF47BB4();
  v16 = sub_20DF47FF4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26[0] = a2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26[1] = a1;
    v27 = v19;
    *v18 = 136315138;
    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v21 = sub_20DF47D24();
    v23 = sub_20DED38E8(v21, v22, &v27);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_20DEAF000, v15, v16, "Failed to add Guidance Token. %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x20F329700](v19, -1, -1);
    MEMORY[0x20F329700](v18, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v24 = sub_20DF47564();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE80, &qword_20DF4B320);
  return sub_20DF47EE4();
}

uint64_t sub_20DF06668()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C930, qword_20DF4AFB0);
  *v4 = v0;
  v4[1] = sub_20DF06770;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000011, 0x800000020DF4F940, sub_20DF0EFAC, v2, v5);
}

uint64_t sub_20DF06770()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DF06888, 0, 0);
}

uint64_t sub_20DF068A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v29 = a2;
  v9 = sub_20DF47564();
  v10 = *(v9 - 8);
  v28 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v28 - v20;
  v22 = sub_20DF47F04();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v14 + 16))(v17, a1, v13);
  v23 = v9;
  (*(v10 + 16))(v12, v29, v9);
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v25 = (v15 + *(v10 + 80) + v24) & ~*(v10 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  (*(v14 + 32))(v26 + v24, v17, v13);
  (*(v10 + 32))(v26 + v25, v12, v23);
  sub_20DEBB534(0, 0, v21, v31, v26);
}

uint64_t sub_20DF06B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE78, &qword_20DF4B300);
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v5[26] = *(v7 + 64);
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF06C24, 0, 0);
}

uint64_t sub_20DF06C24()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[28] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = sub_20DF3D598(sub_20DF1368C, v8);
  v0[29] = v9;

  v10 = sub_20DF47524();
  v0[30] = v10;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DF06E2C;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCD8, &qword_20DF4AC80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEF28A4;
  v0[13] = &block_descriptor_216;
  v0[14] = v11;
  [v9 getGridIDWithToken:v10 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF06E2C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF06F0C, 0, 0);
}

uint64_t sub_20DF06F0C()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[18];
  v8 = v0[19];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  v0[20] = v7;
  v0[21] = v8;
  sub_20DF47EE4();

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DF06FCC(void *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27C851F48);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = a1;
    v19[0] = v12;
    *v11 = 136315138;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v14 = sub_20DF47D24();
    v16 = sub_20DED38E8(v14, v15, v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_20DEAF000, v9, v10, "Failed to get gridID for token. %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v19[0] = 0;
  v19[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE78, &qword_20DF4B300);
  return sub_20DF47EE4();
}

uint64_t sub_20DF07238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_20DF0725C, 0, 0);
}

uint64_t sub_20DF0725C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_20DF0735C;
  v5 = MEMORY[0x277D83B88];

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000025, 0x800000020DF4F960, sub_20DF0EFF4, v2, v5);
}

uint64_t sub_20DF0735C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_20DEFE8E8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_20DF16200;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF07478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v28 = a1;
  v29 = a2;
  v34 = sub_20DF473B4();
  v4 = *(v34 - 8);
  v30 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20DF47564();
  v26 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE68, &qword_20DF4B2E0);
  v25 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  v18 = sub_20DF47F04();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, v28, v9);
  (*(v7 + 16))(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v6);
  (*(v4 + 16))(v33, v31, v34);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + *(v7 + 80) + v19) & ~*(v7 + 80);
  v21 = (v8 + *(v4 + 80) + v20) & ~*(v4 + 80);
  v22 = (v30 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v10 + 32))(v23 + v19, v13, v25);
  (*(v7 + 32))(v23 + v20, v27, v26);
  (*(v4 + 32))(v23 + v21, v33, v34);
  *(v23 + v22) = v32;
  sub_20DEBB534(0, 0, v17, &unk_20DF4B2F0, v23);
}

uint64_t sub_20DF07814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE68, &qword_20DF4B2E0);
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v7[27] = *(v9 + 64);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF078EC, 0, 0);
}

uint64_t sub_20DF078EC()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v15 = v0[24];
  v14 = v0[23];
  v6 = v0[21];
  v5 = v0[22];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[29] = sub_20DF3C9D8();
  (*(v3 + 16))(v2, v6, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = sub_20DF3D598(sub_20DF13508, v8);
  v0[30] = v9;

  v10 = sub_20DF47524();
  v0[31] = v10;
  v11 = sub_20DF47384();
  v0[32] = v11;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DEBEB7C;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE70, &qword_20DF4B2F8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF07D90;
  v0[13] = &block_descriptor_206;
  v0[14] = v12;
  [v9 downloadLoadEventsWithSite:v10 range:v11 limit:v15 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF07B14(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
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
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to fetch events. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE68, &qword_20DF4B2E0);
  return sub_20DF47ED4();
}

uint64_t sub_20DF07D90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_20DF07E5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 65) = a5;
  *(v5 + 64) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_20DF07E88, 0, 0);
}

uint64_t sub_20DF07E88()
{
  v1 = *(v0 + 65);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v9 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 41) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_20DEFFCA4;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000004ALL, 0x800000020DF4F990, sub_20DF0F000, v4, v7);
}

uint64_t sub_20DF07FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v34 = a5;
  v35 = a6;
  v31 = a4;
  v32 = a2;
  v33 = a3;
  v7 = sub_20DF474E4();
  v29 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v29 - v17;
  v19 = sub_20DF47F04();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v11 + 16))(v14, a1, v10);
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v7);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v8 + 80) + v21 + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v11 + 32))(v23 + v20, v14, v10);
  v24 = (v23 + v21);
  v25 = v33;
  *v24 = v32;
  v24[1] = v25;
  (*(v8 + 32))(v23 + v22, v30, v29);
  v26 = (v23 + v22 + v9);
  v27 = v35;
  *v26 = v34;
  v26[1] = v27;

  sub_20DEBB534(0, 0, v18, &unk_20DF4B2D8, v23);
}

uint64_t sub_20DF08298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 257) = v13;
  *(v8 + 256) = a8;
  *(v8 + 168) = a6;
  *(v8 + 176) = a7;
  *(v8 + 152) = a4;
  *(v8 + 160) = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  *(v8 + 184) = v9;
  v10 = *(v9 - 8);
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 + 64);
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF08380, 0, 0);
}

uint64_t sub_20DF08380()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 216) = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = sub_20DF3D598(sub_20DF132F0, v8);
  *(v0 + 224) = v9;

  if (v5)
  {
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v12 = sub_20DF47D04();
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 232) = v12;
  v13 = *(v0 + 257);
  v14 = *(v0 + 256);
  v15 = *(v0 + 176);
  v16 = sub_20DF47464();
  *(v0 + 240) = v16;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_20DF085A0;
  v17 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DEC8A6C;
  *(v0 + 104) = &block_descriptor_196;
  *(v0 + 112) = v17;
  [v9 saveAllHistoricalWithGridID:v12 untilDate:v16 mockCompleteSession:v14 deterministicMock:v13 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DF085A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_20DF161A0;
  }

  else
  {
    v3 = sub_20DF161C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF086B0(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
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
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to save initial historical guidance in cache. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF0892C()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_20DF08A04;
  v3 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 32, 0, 0, 0xD000000000000015, 0x800000020DF4F9E0, sub_20DF08B50, 0, v3);
}

uint64_t sub_20DF08A04()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_20DF08B34;
  }

  else
  {
    v3 = sub_20DF08B18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF08B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v4[22] = *(v6 + 64);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF08C54, 0, 0);
}

uint64_t sub_20DF08C54()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[24] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v1, v3);
  v8 = sub_20DF3D598(sub_20DF13108, v7);
  v0[25] = v8;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_20DF08E48;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA40, &qword_20DF49FA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF3B890;
  v0[13] = &block_descriptor_186_0;
  v0[14] = v9;
  [v8 deleteAllHistoricalWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF08E48()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_20DF01190;
  }

  else
  {
    v3 = sub_20DF08F58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF08F58()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 216);
  swift_unknownObjectRelease();
  [*(v2 + 16) invalidate];
  *(v0 + 217) = v5;
  sub_20DF47EE4();

  v6 = *(v0 + 184);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20DF08FF8()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_20DF090D0;
  v3 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 32, 0, 0, 0xD000000000000018, 0x800000020DF4FA00, sub_20DF091E4, 0, v3);
}

uint64_t sub_20DF090D0()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_20DF161D4;
  }

  else
  {
    v3 = sub_20DF16204;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF09214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v4[22] = *(v6 + 64);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF092E8, 0, 0);
}

uint64_t sub_20DF092E8()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[24] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v1, v3);
  v8 = sub_20DF3D598(sub_20DF161F0, v7);
  v0[25] = v8;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_20DF094DC;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA40, &qword_20DF49FA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF3B890;
  v0[13] = &block_descriptor_176_0;
  v0[14] = v9;
  [v8 deleteAllHistoricalWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF094DC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_20DF161CC;
  }

  else
  {
    v3 = sub_20DF161E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF095EC(void *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27C851F48);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[1] = a1;
    v19 = v12;
    *v11 = 136315138;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v14 = sub_20DF47D24();
    v16 = sub_20DED38E8(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_20DEAF000, v9, v10, "Failed to delete historical data: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  LOBYTE(v19) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  return sub_20DF47EE4();
}

uint64_t sub_20DF09858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = sub_20DF47BD4();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v10 = sub_20DF47764();
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0997C, 0, 0);
}

uint64_t sub_20DF0997C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_20DF47754();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v27 = *(v0 + 40);
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    v8 = *(v0 + 72);
    *(v7 + 16) = v27;
    *(v7 + 32) = v6;
    *(v7 + 40) = v5;
    *(v7 + 48) = v8;
    v9 = *(MEMORY[0x277D85A40] + 4);
    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_20DF09C68;
    v11 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000036, 0x800000020DF4FA20, sub_20DF0F014, v7, v11);
  }

  else
  {
    if (qword_27C84C728 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = *(v0 + 88);
    v15 = __swift_project_value_buffer(v14, qword_27C851F48);
    swift_beginAccess();
    (*(v13 + 16))(v12, v15, v14);
    v16 = sub_20DF47BB4();
    v17 = sub_20DF47FF4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20DEAF000, v16, v17, "Feature not enabled", v18, 2u);
      MEMORY[0x20F329700](v18, -1, -1);
    }

    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v21 = *(v0 + 88);

    (*(v20 + 8))(v19, v21);
    sub_20DED4D6C();
    swift_allocError();
    *v22 = 8;
    swift_willThrow();
    v23 = *(v0 + 128);
    v24 = *(v0 + 104);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_20DF09C68()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_20DF09DF4;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_20DF09D84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF09D84()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DF09DF4()
{
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DF09E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a2;
  v39 = a7;
  v43 = a5;
  v44 = a6;
  v41 = a3;
  v42 = a4;
  v37 = a1;
  v46 = sub_20DF473B4();
  v7 = *(v46 - 8);
  v40 = *(v7 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20DF47564();
  v34 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v33 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v33 - v19;
  v36 = &v33 - v19;
  v21 = sub_20DF47F04();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v13 + 16))(v16, v37, v12);
  (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v9);
  (*(v7 + 16))(v45, v39, v46);
  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v23 = (v14 + *(v10 + 80) + v22) & ~*(v10 + 80);
  v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v7 + 80) + v25 + 16) & ~*(v7 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  (*(v13 + 32))(v27 + v22, v16, v33);
  (*(v10 + 32))(v27 + v23, v35, v34);
  v28 = (v27 + v24);
  v29 = v42;
  *v28 = v41;
  v28[1] = v29;
  v30 = (v27 + v25);
  v31 = v44;
  *v30 = v43;
  v30[1] = v31;
  (*(v7 + 32))(v27 + v26, v45, v46);

  sub_20DEBB534(0, 0, v36, &unk_20DF4B290, v27);
}

uint64_t sub_20DF0A23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = v13;
  v8[25] = v14;
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v8[26] = v9;
  v10 = *(v9 - 8);
  v8[27] = v10;
  v8[28] = *(v10 + 64);
  v8[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0A324, 0, 0);
}

uint64_t sub_20DF0A324()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[26];
  v20 = v0[25];
  v18 = v0[23];
  v19 = v0[24];
  v16 = v0[21];
  v17 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[30] = sub_20DF3C9D8();
  (*(v2 + 16))(v1, v6, v4);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  (*(v2 + 32))(v8 + v7, v1, v4);
  v9 = sub_20DF3D598(sub_20DF12E70, v8);
  v0[31] = v9;

  v10 = sub_20DF47524();
  v0[32] = v10;
  v11 = sub_20DF47D04();
  v0[33] = v11;
  v12 = sub_20DF47D04();
  v0[34] = v12;
  v13 = sub_20DF47384();
  v0[35] = v13;
  v0[2] = v0;
  v0[3] = sub_20DF0A570;
  v14 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEC8A6C;
  v0[13] = &block_descriptor_166_0;
  v0[14] = v14;
  [v9 processDailyDigestsWithSiteID:v10 sourceID:v11 deviceID:v12 between:v13 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF0A570()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_20DF0A740;
  }

  else
  {
    v3 = sub_20DF0A680;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF0A680()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[26];
  v8 = v0[19];
  swift_unknownObjectRelease();

  [*(v6 + 16) invalidate];
  sub_20DF47EE4();

  v9 = v0[29];

  v10 = v0[1];

  return v10();
}

uint64_t sub_20DF0A740()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[30];
  v12 = v0[26];
  v8 = v0[19];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[18] = v1;
  sub_20DF47ED4();
  v9 = v0[29];

  v10 = v0[1];

  return v10();
}

uint64_t sub_20DF0A814(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
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
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to processDailyDigests: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF0AA90(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_20DF47BD4();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_20DF47764();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0ABAC, 0, 0);
}

uint64_t sub_20DF0ABAC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_20DF47754();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *(v5 + 16) = *(v0 + 40);
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_20DF0AE80;
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000027, 0x800000020DF4FA60, sub_20DF0F024, v5, v8);
  }

  else
  {
    if (qword_27C84C728 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);
    v12 = __swift_project_value_buffer(v11, qword_27C851F48);
    swift_beginAccess();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_20DF47BB4();
    v14 = sub_20DF47FF4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20DEAF000, v13, v14, "Feature not enabled", v15, 2u);
      MEMORY[0x20F329700](v15, -1, -1);
    }

    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);

    (*(v17 + 8))(v16, v18);
    sub_20DED4D6C();
    swift_allocError();
    *v19 = 8;
    swift_willThrow();
    v20 = *(v0 + 96);
    v21 = *(v0 + 72);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_20DF0AE80()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_20DF0B00C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_20DF0AF9C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF0AF9C()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DF0B00C()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DF0B084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v33 = sub_20DF474E4();
  v3 = *(v33 - 8);
  v29 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DF47564();
  v26 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v25 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = sub_20DF47F04();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, v30, v8);
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v5);
  v18 = v28;
  (*(v3 + 16))(v28, v32, v33);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = (v10 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = (v7 + *(v3 + 80) + v20) & ~*(v3 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v9 + 32))(v22 + v19, v12, v25);
  (*(v6 + 32))(v22 + v20, v27, v26);
  (*(v3 + 32))(v22 + v21, v18, v33);
  sub_20DEBB534(0, 0, v16, &unk_20DF4B280, v22);
}

uint64_t sub_20DF0B414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v6[21] = v7;
  v8 = *(v7 - 8);
  v6[22] = v8;
  v6[23] = *(v8 + 64);
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0B4EC, 0, 0);
}

uint64_t sub_20DF0B4EC()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[19];
  v14 = v0[20];
  v6 = v0[18];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[25] = sub_20DF3C9D8();
  (*(v4 + 16))(v2, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v2, v3);
  v9 = sub_20DF3D598(sub_20DF12C44, v8);
  v0[26] = v9;

  v10 = sub_20DF47524();
  v0[27] = v10;
  v11 = sub_20DF47464();
  v0[28] = v11;
  v0[2] = v0;
  v0[3] = sub_20DF0B700;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF2B4C4;
  v0[13] = &block_descriptor_156_0;
  v0[14] = v12;
  [v9 processSiteRawLoadEventsWithSiteID:v10 after:v11 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF0B700()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF0B7E0, 0, 0);
}

uint64_t sub_20DF0B7E0()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[18];
  swift_unknownObjectRelease();

  [*(v4 + 16) invalidate];
  sub_20DF47EE4();

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DF0B890(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
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
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to processSite: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF0BB0C()
{
  v1 = sub_20DF47BD4();
  v0[7] = v1;
  v2 = *(v1 - 8);
  v0[8] = v2;
  v3 = *(v2 + 64) + 15;
  v0[9] = swift_task_alloc();
  v4 = sub_20DF47764();
  v0[10] = v4;
  v5 = *(v4 - 8);
  v0[11] = v5;
  v6 = *(v5 + 64) + 15;
  v0[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0BC24, 0, 0);
}

uint64_t sub_20DF0BC24()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_20DF47754();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = *(MEMORY[0x277D85A40] + 4);
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_20DF0BEE4;
    v7 = MEMORY[0x277D837D0];

    return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000015, 0x800000020DF4FA90, sub_20DF0C0EC, 0, v7);
  }

  else
  {
    if (qword_27C84C728 != -1)
    {
      swift_once();
    }

    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    v11 = __swift_project_value_buffer(v10, qword_27C851F48);
    swift_beginAccess();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_20DF47BB4();
    v13 = sub_20DF47FF4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20DEAF000, v12, v13, "Feature not enabled", v14, 2u);
      MEMORY[0x20F329700](v14, -1, -1);
    }

    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[7];

    (*(v16 + 8))(v15, v17);
    sub_20DED4D6C();
    swift_allocError();
    *v18 = 8;
    swift_willThrow();
    v19 = v0[12];
    v20 = v0[9];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_20DF0BEE4()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_20DF0C07C;
  }

  else
  {
    v3 = sub_20DF0BFF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF0BFF8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[6];

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_20DF0C07C()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DF0C11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE58, &qword_20DF4B258);
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v4[25] = *(v6 + 64);
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0C1F0, 0, 0);
}

uint64_t sub_20DF0C1F0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[27] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v1, v3);
  v8 = sub_20DF3D598(sub_20DF12A5C, v7);
  v0[28] = v8;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DF0C3E4;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE60, &qword_20DF4B270);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEF5950;
  v0[13] = &block_descriptor_146;
  v0[14] = v9;
  [v8 processAllEventDataWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF0C3E4()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF0C4C4, 0, 0);
}

uint64_t sub_20DF0C4C4()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[18];
  v7 = v0[19];
  swift_unknownObjectRelease();
  [*(v2 + 16) invalidate];
  v0[20] = v6;
  v0[21] = v7;
  sub_20DF47EE4();

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DF0C574(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
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
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to processAllEventData: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE58, &qword_20DF4B258);
  return sub_20DF47ED4();
}

uint64_t sub_20DF0C7F0(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_20DF47BD4();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_20DF47764();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0C90C, 0, 0);
}

uint64_t sub_20DF0C90C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_20DF47754();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[5];
    v6 = swift_task_alloc();
    v0[12] = v6;
    *(v6 + 16) = v5;
    v7 = *(MEMORY[0x277D85A40] + 4);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_20DF0CBE0;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000020, 0x800000020DF4FAB0, sub_20DF0F02C, v6, v9);
  }

  else
  {
    if (qword_27C84C728 != -1)
    {
      swift_once();
    }

    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    v13 = __swift_project_value_buffer(v12, qword_27C851F48);
    swift_beginAccess();
    (*(v11 + 16))(v10, v13, v12);
    v14 = sub_20DF47BB4();
    v15 = sub_20DF47FF4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20DEAF000, v14, v15, "Feature not enabled", v16, 2u);
      MEMORY[0x20F329700](v16, -1, -1);
    }

    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];

    (*(v18 + 8))(v17, v19);
    sub_20DED4D6C();
    swift_allocError();
    *v20 = 8;
    swift_willThrow();
    v21 = v0[11];
    v22 = v0[8];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_20DF0CBE0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_20DF0CD6C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_20DF0CCFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF0CCFC()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20DF0CD6C()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_20DF0CDE4(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_20DF474E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  v16 = sub_20DF47F04();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  (*(v4 + 16))(v6, v22, v3);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v9 + *(v4 + 80) + v17) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v8 + 32))(v19 + v17, v11, v7);
  (*(v4 + 32))(v19 + v18, v6, v3);
  sub_20DEBB534(0, 0, v15, &unk_20DF4B248, v19);
}

uint64_t sub_20DF0D098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v5[22] = *(v7 + 64);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0D16C, 0, 0);
}

uint64_t sub_20DF0D16C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[24] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = sub_20DF3D598(sub_20DF128B0, v8);
  v0[25] = v9;

  v10 = sub_20DF47464();
  v0[26] = v10;
  v0[2] = v0;
  v0[3] = sub_20DF0D368;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF2B4C4;
  v0[13] = &block_descriptor_136;
  v0[14] = v11;
  [v9 deleteAllDeviceInsightsBefore:v10 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF0D368()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF1610C, 0, 0);
}

uint64_t sub_20DF0D448(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
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
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to deleteAllDeviceInsights: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF0D6C4()
{
  v1 = sub_20DF47BD4();
  v0[6] = v1;
  v2 = *(v1 - 8);
  v0[7] = v2;
  v3 = *(v2 + 64) + 15;
  v0[8] = swift_task_alloc();
  v4 = sub_20DF47764();
  v0[9] = v4;
  v5 = *(v4 - 8);
  v0[10] = v5;
  v6 = *(v5 + 64) + 15;
  v0[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0D7DC, 0, 0);
}

uint64_t sub_20DF0D7DC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v2 + 104))(v1, *MEMORY[0x277D07390], v3);
  v4 = sub_20DF47754();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = *(MEMORY[0x277D85A40] + 4);
    v6 = swift_task_alloc();
    v0[12] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE38, &qword_20DF4B070);
    *v6 = v0;
    v6[1] = sub_20DF0DAAC;

    return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD00000000000001FLL, 0x800000020DF4FAE0, sub_20DF0DCA8, 0, v7);
  }

  else
  {
    if (qword_27C84C728 != -1)
    {
      swift_once();
    }

    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = __swift_project_value_buffer(v10, qword_27C851F48);
    swift_beginAccess();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_20DF47BB4();
    v13 = sub_20DF47FF4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20DEAF000, v12, v13, "Feature not enabled", v14, 2u);
      MEMORY[0x20F329700](v14, -1, -1);
    }

    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[6];

    (*(v16 + 8))(v15, v17);
    sub_20DED4D6C();
    swift_allocError();
    *v18 = 8;
    swift_willThrow();
    v19 = v0[11];
    v20 = v0[8];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_20DF0DAAC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_20DF0DC38;
  }

  else
  {
    v3 = sub_20DF0DBC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF0DBC0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_20DF0DC38()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_20DF0DCD8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  v16 = sub_20DF47F04();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  (*(v8 + 32))(v18 + v17, v11, v7);
  sub_20DEBB534(0, 0, v15, a5, v18);
}

uint64_t sub_20DF0DEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE48, &unk_20DF4B218);
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v4[24] = *(v6 + 64);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF0DF74, 0, 0);
}

uint64_t sub_20DF0DF74()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[26] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v1, v3);
  v8 = sub_20DF3D598(sub_20DF12714, v7);
  v0[27] = v8;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20DF0E168;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE50, &qword_20DF4B238);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF0E5B0;
  v0[13] = &block_descriptor_126;
  v0[14] = v9;
  [v8 clearEnergyKitDataForAllHomesWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF0E168()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_20DF0E278;
  }

  else
  {
    v3 = sub_20DEDC6A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF0E278()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[21];
  v5 = v0[22];
  swift_willThrow();
  swift_unknownObjectRelease();
  [*(v3 + 16) invalidate];
  v0[19] = v2;
  sub_20DF47ED4();

  v6 = v0[25];

  v7 = v0[1];

  return v7();
}

uint64_t sub_20DF0E334(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
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
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to clearEnergyKitDataForAllHomes: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE48, &unk_20DF4B218);
  return sub_20DF47ED4();
}

uint64_t sub_20DF0E5B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_20DF47564();
    sub_20DF1489C(&qword_27C84C858, MEMORY[0x277CC95F0]);
    **(*(v4 + 64) + 40) = sub_20DF47C34();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t HomeEnergyManager.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t HomeEnergyManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

double sub_20DF0E74C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_20DEEFAE0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20DEF0FE8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_20DED8390((*(v12 + 56) + 32 * v9), a3);
    sub_20DF0E7F0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_20DF0E7F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20DF480D4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_20DF48494();

      sub_20DF47D54();
      v14 = sub_20DF484D4();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_20DF0E9A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20DEEFAE0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20DEF0FE8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20DEF05E8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_20DEEFAE0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_20DF48424();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_20DED8390(a1, v23);
  }

  else
  {
    sub_20DF0EE80(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_20DF0EC40()
{
  result = qword_281122580;
  if (!qword_281122580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281122580);
  }

  return result;
}

uint64_t sub_20DF0ED04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20DEEFAE0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_20DEF08A0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_20DEEFAE0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_20DF48424();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_20DEF118C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_20DF0EE80(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_20DED8390(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t dispatch thunk of HomeEnergyManager.dumpAllData()()
{
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C4;

  return v6();
}

uint64_t dispatch thunk of HomeEnergyManager.useMockData(filePath:disableMock:validityDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 192);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_20DEBA16C;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeEnergyManager.testNotifications(forGridID:notificationContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 200);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_20DF161E4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HomeEnergyManager.testDelegate(forGridIds:)(uint64_t a1)
{
  v4 = *(*v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DEDA9C0;

  return v8(a1);
}

uint64_t dispatch thunk of HomeEnergyManager.testSetMockURLSession()()
{
  v2 = *(*v0 + 216);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C0;

  return v6();
}

uint64_t dispatch thunk of HomeEnergyManager.isNextCleanEnergyWindowNotificationEnabled(forGridID:homeID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 224);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_20DED71AC;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeEnergyManager.enableNextCleanEnergyWindowNotifications(forGridID:notificationContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 232);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_20DEDA9C4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HomeEnergyManager.disableNextCleanEnergyWindowNotifications(forGridID:homeID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 240);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_20DEDA9C4;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeEnergyManager.disableNextCleanEnergyWindowNotifications(forGridID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 248);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20DEDA9C4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HomeEnergyManager.disableAllNextCleanEnergyWindowNotifications()()
{
  v2 = *(*v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C4;

  return v6();
}

uint64_t dispatch thunk of HomeEnergyManager.energyGuidance(for:guidanceType:ratePlan:utilityID:timeZone:withCaching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(*v9 + 264);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_20DF161E4;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of HomeEnergyManager.disableGuidanceCollection()()
{
  v2 = *(*v0 + 272);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C4;

  return v6();
}

uint64_t dispatch thunk of HomeEnergyManager.disableGuidanceCollection(gridID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 280);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20DEDA9C4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HomeEnergyManager.enableGuidanceCollection(gridID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 288);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20DEDA9C4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HomeEnergyManager.historicalGridQuality(for:from:withCaching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 296);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_20DEDA9C0;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of HomeEnergyManager.gridIDLookup(_:)(double a1, double a2)
{
  v6 = *(*v2 + 304);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20DF103A4;
  v9.n128_f64[0] = a1;
  v10.n128_f64[0] = a2;

  return v12(v9, v10);
}

uint64_t sub_20DF103A4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of HomeEnergyManager.getCurrentLocation()()
{
  v2 = *(*v0 + 312);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C4;

  return v6();
}

uint64_t dispatch thunk of HomeEnergyManager.requestAddToShareFor(homeUUID:siteID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 320);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_20DEDA9C0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HomeEnergyManager.resetUtilityData()()
{
  v2 = *(*v0 + 328);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C0;

  return v6();
}

uint64_t dispatch thunk of HomeEnergyManager.submitTestTask(taskID:delay:withRetry:taskDuration:cancelOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 336);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_20DEDA9C0;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of HomeEnergyManager.setKVSDictionary(key:dict:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 344);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_20DEDA9C0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HomeEnergyManager.getKVSDictionary(key:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 352);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20DEDA9C4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HomeEnergyManager.setHasDismissedConnectAccountBanner(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 360);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_20DEDA9C0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HomeEnergyManager.hasDismissedConnectAccountBanner(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 368);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20DEBBAA8;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HomeEnergyManager.addGuidanceToken(gridID:siteID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 376);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_20DEDA9C0;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeEnergyManager.deleteGuidanceToken(siteID:)(uint64_t a1)
{
  v4 = *(*v1 + 384);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DEDA9C0;

  return v8(a1);
}

uint64_t dispatch thunk of HomeEnergyManager.getGuidanceToken(gridID:siteID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 392);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_20DEDA9C0;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeEnergyManager.getGridID(token:)(uint64_t a1)
{
  v4 = *(*v1 + 400);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DF11348;

  return v8(a1);
}

uint64_t sub_20DF11348(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of HomeEnergyManager.downloadLoadEvents(site:range:limit:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 408);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_20DEDA9C4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of HomeEnergyManager.saveAllHistorical(gridID:untilDate:mockCompleteSession:deterministicMock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 416);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_20DEDA9C0;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of HomeEnergyManager.deleteAllHistorical()()
{
  v2 = *(*v0 + 424);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DED71AC;

  return v6();
}

uint64_t dispatch thunk of HomeEnergyManager.deleteGuidanceTrackers()()
{
  v2 = *(*v0 + 432);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C4;

  return v6();
}

uint64_t dispatch thunk of HomeEnergyManager.processDailyDigests(siteID:sourceID:deviceID:between:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 440);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_20DEDA9C0;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of HomeEnergyManager.processSiteRawLoadEvents(siteID:after:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 448);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20DEDA9C0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HomeEnergyManager.processAllEventData()()
{
  v2 = *(*v0 + 456);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DF161E4;

  return v6();
}

uint64_t dispatch thunk of HomeEnergyManager.deleteAllDeviceInsights(before:)(uint64_t a1)
{
  v4 = *(*v1 + 464);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DEDA9C0;

  return v8(a1);
}

uint64_t dispatch thunk of HomeEnergyManager.clearEnergyKitDataForAllHomes()()
{
  v2 = *(*v0 + 472);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C4;

  return v6();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DF11F1C(uint64_t a1)
{
  v2 = sub_20DF47404();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20DF47BD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_281122F18);
  swift_beginAccess();
  (*(v8 + 16))(v11, v12, v7);

  v13 = sub_20DF47BB4();
  v14 = sub_20DF48004();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v3;
    v18 = v17;
    *&v34[0] = v17;
    *v16 = 136380675;
    v19 = sub_20DF47FA4();
    v21 = sub_20DED38E8(v19, v20, v34);
    v29 = v7;
    v22 = v21;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_20DEAF000, v13, v14, "[GridForecast] serverDidUpdateEnergyWindows called with %{private}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v23 = v18;
    v3 = v30;
    MEMORY[0x20F329700](v23, -1, -1);
    v24 = v16;
    v2 = v31;
    MEMORY[0x20F329700](v24, -1, -1);

    (*(v8 + 8))(v11, v29);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  sub_20DF477D4();
  sub_20DF47D04();

  memset(v34, 0, sizeof(v34));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE40, &qword_20DF4B210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DF4AF10;
  v32 = 7562345;
  v33 = 0xE300000000000000;
  sub_20DF48104();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA80, &qword_20DF4A0B8);
  *(inited + 72) = a1;

  sub_20DED8254(inited);
  swift_setDeallocating();
  sub_20DED8730(inited + 32, &qword_27C84C9D8, &unk_20DF49ED0);
  sub_20DF473E4();
  v26 = [objc_opt_self() defaultCenter];
  v27 = sub_20DF473C4();
  [v26 postNotification_];

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_20DF12354()
{
  v0 = sub_20DF47404();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DF47BD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_281122F18);
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_20DF47BB4();
  v12 = sub_20DF48004();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20DEAF000, v11, v12, "[GridForecast] serverDidUpdateCoreLocation called", v13, 2u);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  sub_20DF477F4();
  sub_20DF47D04();

  memset(v17, 0, sizeof(v17));
  sub_20DF473E4();
  v14 = [objc_opt_self() defaultCenter];
  v15 = sub_20DF473C4();
  [v14 postNotification_];

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_20DF12618(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE48, &unk_20DF4B218) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEDA9C0;

  return sub_20DF0DEA0(a1, v6, v7, v1 + v5);
}

uint64_t sub_20DF12754(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20DF474E4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DF0D098(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_20DF128D8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_20DF12960(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE58, &qword_20DF4B258) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEDA9C0;

  return sub_20DF0C11C(a1, v6, v7, v1 + v5);
}

uint64_t sub_20DF12A84(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20DF47564() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20DF474E4() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_20DEDA9C0;

  return sub_20DF0B414(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_20DF12C6C(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = v5;
  v6 = *(v4 + 64);
  v7 = *(sub_20DF47564() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_20DF473B4() - 8);
  v12 = (v10 + *(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v1 + v9;
  v16 = *(v1 + v9);
  v17 = *(v15 + 8);
  v18 = v1 + v10;
  v20 = *(v1 + v10);
  v19 = *(v18 + 8);
  v21 = swift_task_alloc();
  *(v3 + 16) = v21;
  *v21 = v3;
  v21[1] = sub_20DEDA9C0;

  return sub_20DF0A23C(a1, v13, v14, v1 + v23, v1 + v8, v16, v17, v20);
}

uint64_t sub_20DF12E98(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEDA9C0;

  return sub_20DF09214(a1, v6, v7, v1 + v5);
}

uint64_t sub_20DF1300C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEDA9C0;

  return sub_20DF08B80(a1, v6, v7, v1 + v5);
}

uint64_t sub_20DF13130(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_20DF474E4() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v1 + v6;
  v12 = *(v1 + v6);
  v13 = *(v11 + 8);
  v14 = v1 + v8;
  v15 = (v1 + v8 + *(v7 + 64));
  v16 = *v15;
  v17 = v15[1];
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_20DEDA9C0;

  return sub_20DF08298(a1, v9, v10, v1 + v5, v12, v13, v14, v16);
}

uint64_t sub_20DF13318(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE68, &qword_20DF4B2E0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20DF47564() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20DF473B4() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20DEDA9C0;

  return sub_20DF07814(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12, v15);
}

uint64_t sub_20DF13530(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE78, &qword_20DF4B300) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20DF47564() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DF06B50(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_20DF136B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE80, &qword_20DF4B320) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20DF47564() - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_20DEDA9C0;

  return sub_20DF05F1C(a1, v10, v11, v1 + v6, v13, v14, v1 + v9);
}

uint64_t objectdestroy_128Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 64);
  v10 = a3(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  v16 = *(v3 + 16);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v3 + v8, v5);
  (*(v11 + 8))(v3 + v13, v10);

  return MEMORY[0x2821FE8E8](v3, v13 + v14, v15 | 7);
}

uint64_t sub_20DF13988(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE90, &qword_20DF4B340) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20DF47564() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DF05460(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_218Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE80, &qword_20DF4B320);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_20DF47564();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_20DF13C80(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE80, &qword_20DF4B320) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20DF47564() - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_20DEDA9C0;

  return sub_20DF04B28(a1, v10, v11, v1 + v6, v13, v14, v1 + v9);
}

uint64_t sub_20DF13E28(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE98, &qword_20DF4B368) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DF02FF4(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_20DF13F90(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_20DEDA9C0;

  return sub_20DF024C4(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_20DF14108(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 24);
  v19 = *(v1 + 16);
  v10 = (v1 + v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v7);
  v14 = *(v1 + v7 + 8);
  v15 = *(v1 + v8);
  v16 = *(v1 + v8 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_20DEDA9C0;

  return sub_20DF01978(a1, v19, v9, v1 + v5, v11, v12, v13, v14);
}

uint64_t sub_20DF142B4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEDA9C0;

  return sub_20DF00D34(a1, v6, v7, v1 + v5);
}

uint64_t sub_20DF143D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20DF47564() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_20DEDA9C0;

  return sub_20DF0009C(a1, v10, v11, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_20DF1459C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEA8, &qword_20DF4B3C8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEDA9C0;

  return sub_20DEFF558(a1, v6, v7, v1 + v5);
}

uint64_t sub_20DF146C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20DF473B4() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEB8, &qword_20DF4B3E8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1 + v9;
  v15 = *(v1 + v9 + *(v8 + 64));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20DEDA9C0;

  return sub_20DEFD728(a1, v10, v11, v12, v13, v1 + v6, v14, v15);
}

uint64_t sub_20DF14888(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20DED8A4C(a1, a2);
  }

  return a1;
}

uint64_t sub_20DF1489C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DF148E4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20DEDA9C0;

  return sub_20DEFC9CC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_248Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);
  v9 = *(v2 + v7 + 8);

  return MEMORY[0x2821FE8E8](v2, v7 + 16, v5 | 7);
}

uint64_t sub_20DF14AF4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DEFC0DC(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_20DF14C5C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEDA9C0;

  return sub_20DEFB9A4(a1, v6, v7, v1 + v5);
}

uint64_t sub_20DF14D58(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE0, &qword_20DF4B448) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_20DF47644() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = v1[2];
  v24 = v1[3];
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = v1[4];
  v22 = v1[5];
  v12 = (v1 + v9);
  v13 = v12[1];
  v21 = *v12;
  v14 = *(v1 + v10);
  v15 = *(v1 + v10 + 8);
  v16 = *(v1 + v11);
  v17 = *(v1 + v11 + 8);
  v18 = *(v1 + v11 + 16);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_20DEDA9C0;

  return sub_20DEFAC98(a1, v25, v24, v23, v22, v1 + v5, v1 + v8, v21);
}

uint64_t sub_20DF14F74(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEDA9C0;

  return sub_20DEFA094(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_319Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DF15170(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20DEDA9C0;

  return sub_20DEF982C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_20DF152A8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_20DEDA9C0;

  return sub_20DEF8FF4(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_20DF153CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CED0, &qword_20DF4B408) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DEF8480(a1, v8, v9, v10, v11, v1 + v6, v1 + v7);
}

uint64_t objectdestroy_379Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 64) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 2);
  swift_unknownObjectRelease();
  v9 = *(v2 + 5);

  v10 = *(v2 + 7);

  (*(v4 + 8))(&v2[v6], v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_20DF15638(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEE8, &qword_20DF4B4A0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_20DEBA16C;

  return sub_20DEF75D0(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_20DF15784(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEDA9C0;

  return sub_20DEF68E4(a1, v6, v7, v1 + v5);
}

uint64_t sub_20DF158A8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20DEDA9C0;

  return sub_20DEF5E20(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_20DF159FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CE58, &qword_20DF4B258) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_20DEDA9C0;

  return sub_20DEF5070(a1, v9, v10, v1 + v6, v12, v13, v1 + v8);
}

uint64_t sub_20DF15B70(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C988, &qword_20DF4AD10) - 8);
  v9 = (v7 + *(v8 + 80) + 17) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20DEDA9C0;

  return sub_20DEF4128(a1, v10, v11, v1 + v6, v13, v14, v15, v1 + v9);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_20DF15DF4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEF8, &qword_20DF4B508) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEDA9C0;

  return sub_20DEF33F4(a1, v6, v7, v1 + v5);
}

uint64_t sub_20DF15F18(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF08, &qword_20DF4B528) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DEFEB4C(v10, v11, a1, v7, v8, v1 + v6);
}

uint64_t HomeEnergyStatusCode.description.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000013;
      }

      if (a1 == 3)
      {
        return 0xD000000000000015;
      }

      return 0xD000000000000014;
    }

    if (!a1)
    {
      return 0x73736563637553;
    }

    if (a1 == 1)
    {
      return 0xD000000000000017;
    }

LABEL_22:
    result = sub_20DF483F4();
    __break(1u);
    return result;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0xD000000000000011;
      case 8:
        return 0x2065636976726553;
      case 9:
        return 0xD000000000000023;
    }

    goto LABEL_22;
  }

  if (a1 == 5)
  {
    return 0x6573616261746144;
  }

  else
  {
    return 0x6961676120797254;
  }
}

unint64_t sub_20DF16400@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20DF1643C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_20DF1643C(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20DF16450()
{
  result = qword_27C84CF10;
  if (!qword_27C84CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CF10);
  }

  return result;
}

id XPCGuidanceContainer.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_20DEE5ED0(a1, v3 + OBJC_IVAR____TtC17EnergyKitInternal20XPCGuidanceContainer_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_20DF165B0(a1);
  return v4;
}

id XPCGuidanceContainer.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_20DEE5ED0(a1, v1 + OBJC_IVAR____TtC17EnergyKitInternal20XPCGuidanceContainer_value);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_20DF165B0(a1);
  return v4;
}

uint64_t sub_20DF165B0(uint64_t a1)
{
  v2 = type metadata accessor for Guidance();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t XPCGuidanceContainer.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_getObjectType();
  sub_20DF168F8(&qword_27C84CF20, type metadata accessor for XPCGuidanceContainer);
  sub_20DF168F8(&qword_27C84CF28, type metadata accessor for Guidance);
  sub_20DF168F8(&unk_27C84CF30, type metadata accessor for Guidance);
  v2 = sub_20DF47B24();
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t XPCGuidanceContainer.init(coder:)()
{
  swift_getObjectType();
  sub_20DF168F8(&qword_27C84CF20, type metadata accessor for XPCGuidanceContainer);
  sub_20DF168F8(&qword_27C84CF28, type metadata accessor for Guidance);
  sub_20DF168F8(&unk_27C84CF30, type metadata accessor for Guidance);
  v1 = sub_20DF47B24();
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x34);
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t type metadata accessor for XPCGuidanceContainer()
{
  result = qword_27C84CF40;
  if (!qword_27C84CF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20DF168F8(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall XPCGuidanceContainer.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  sub_20DF168F8(&qword_27C84CF20, type metadata accessor for XPCGuidanceContainer);
  sub_20DF168F8(&qword_27C84CF28, type metadata accessor for Guidance);
  sub_20DF168F8(&unk_27C84CF30, type metadata accessor for Guidance);

  sub_20DF47B34();
}

id XPCGuidanceContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCGuidanceContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20DF16D90(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_20DEE5ED0(a1, v3 + OBJC_IVAR____TtC17EnergyKitInternal20XPCGuidanceContainer_value);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_20DF165B0(a1);
  return v4;
}

uint64_t sub_20DF16E0C()
{
  result = type metadata accessor for Guidance();
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

uint64_t sub_20DF16EC8(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = sub_20DF47444();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = *(*(v3 + 64) + 40);
  *v7 = a2;
  v7[1] = v6;

  return swift_continuation_resume();
}

uint64_t HomeEnergyManager.completedOnboarding(id:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_20DF47BD4();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF17018, 0, 0);
}

uint64_t sub_20DF17018()
{
  v21 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FE4();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_20DED38E8(0xD000000000000018, 0x800000020DF4FD30, &v20);
    _os_log_impl(&dword_20DEAF000, v5, v6, "HomeEnergyManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v14 = v0[5];
  v13 = v0[6];
  v15 = swift_task_alloc();
  v0[10] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = *(MEMORY[0x277D85A40] + 4);
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_20DF172AC;
  v18 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 13, 0, 0, 0xD000000000000018, 0x800000020DF4FD30, sub_20DF173C8, v15, v18);
}

uint64_t sub_20DF172AC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_20DF1FB88;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_20DF1FB90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF17410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  v7 = sub_20DF47BD4();
  v6[24] = v7;
  v8 = *(v7 - 8);
  v6[25] = v8;
  v9 = *(v8 + 64) + 15;
  v6[26] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v6[27] = v10;
  v11 = *(v10 - 8);
  v6[28] = v11;
  v6[29] = *(v11 + 64);
  v6[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF17544, 0, 0);
}

uint64_t sub_20DF17544()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[22];
  v13 = v0[23];
  v6 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[31] = sub_20DF3C9D8();
  (*(v4 + 16))(v2, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v2, v3);
  v9 = sub_20DF3D598(sub_20DF1FA9C, v8);
  v0[32] = v9;

  v10 = sub_20DF47D04();
  v0[33] = v10;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_20DF17758;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF98, &qword_20DF4B7D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF17D08;
  v0[13] = &block_descriptor_90;
  v0[14] = v11;
  [v9 completedOnboardingWithId:v10 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF17758()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF17838, 0, 0);
}

uint64_t sub_20DF17838()
{
  v23 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  swift_unknownObjectRelease();

  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = __swift_project_value_buffer(v6, qword_281122F18);
  swift_beginAccess();
  (*(v5 + 16))(v4, v7, v6);
  v8 = sub_20DF47BB4();
  v9 = sub_20DF47FE4();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v13 = *(v0 + 192);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20DED38E8(0xD000000000000018, 0x800000020DF4FD30, &v22);
    *(v14 + 12) = 1024;
    *(v14 + 14) = v3;
    _os_log_impl(&dword_20DEAF000, v8, v9, "%s Completed onboarding:  %{BOOL}d", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v12 + 8))(v11, v13);
  v16 = *(v0 + 240);
  v17 = *(v0 + 208);
  v18 = *(v0 + 216);
  v19 = *(v0 + 168);
  [*(*(v0 + 248) + 16) invalidate];
  *(v0 + 273) = v3;
  sub_20DF47EE4();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_20DF17A6C(void *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20DED38E8(0xD000000000000018, 0x800000020DF4FD30, &v18);
    *(v11 + 12) = 2112;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20DEAF000, v9, v10, "%s Failed to establish daemon connection. %@", v11, 0x16u);
    sub_20DF1EFA8(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F329700](v13, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v18 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  return sub_20DF47ED4();
}

uint64_t sub_20DF17D08(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t HomeEnergyManager.updateCompletedOnboarding(id:value:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 104) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  v4 = sub_20DF47BD4();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF17E28, 0, 0);
}

uint64_t sub_20DF17E28()
{
  v22 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FE4();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 56);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_20DED38E8(0xD000000000000024, 0x800000020DF4FD50, &v21);
    _os_log_impl(&dword_20DEAF000, v5, v6, "HomeEnergyManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v13 = *(v0 + 104);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  *(v16 + 32) = v13;
  v17 = *(MEMORY[0x277D85A40] + 4);
  v18 = swift_task_alloc();
  *(v0 + 88) = v18;
  *v18 = v0;
  v18[1] = sub_20DF180C0;
  v19 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v18, 0, 0, 0xD000000000000024, 0x800000020DF4FD50, sub_20DF1EDC0, v16, v19);
}

uint64_t sub_20DF180C0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_20DF181DC;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_20DED1E44;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF181DC()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_20DF18248(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  v17 = sub_20DF47F04();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v9 + 32))(v19 + v18, v12, v8);
  v20 = v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v20 = a2;
  *(v20 + 8) = a3;
  *(v20 + 16) = a4;

  sub_20DEBB534(0, 0, v16, &unk_20DF4B7B8, v19);
}

uint64_t sub_20DF18458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 272) = a7;
  *(v7 + 176) = a5;
  *(v7 + 184) = a6;
  *(v7 + 168) = a4;
  v8 = sub_20DF47BD4();
  *(v7 + 192) = v8;
  v9 = *(v8 - 8);
  *(v7 + 200) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 208) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  *(v7 + 216) = v11;
  v12 = *(v11 - 8);
  *(v7 + 224) = v12;
  *(v7 + 232) = *(v12 + 64);
  *(v7 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF18590, 0, 0);
}

uint64_t sub_20DF18590()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v14 = *(v0 + 272);
  v5 = *(v0 + 176);
  v13 = *(v0 + 184);
  v6 = *(v0 + 168);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 248) = sub_20DF3C9D8();
  (*(v3 + 16))(v2, v6, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = sub_20DF3D598(sub_20DF1F934, v8);
  *(v0 + 256) = v9;

  v10 = sub_20DF47D04();
  *(v0 + 264) = v10;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_20DF187A0;
  v11 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_20DF2B4C4;
  *(v0 + 104) = &block_descriptor_80;
  *(v0 + 112) = v11;
  [v9 updateCompletedOnboardingWithId:v10 value:v14 completionHandler:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_20DF187A0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF18880, 0, 0);
}

uint64_t sub_20DF18880()
{
  v22 = v0;
  v1 = v0[32];
  v2 = v0[33];
  swift_unknownObjectRelease();

  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = __swift_project_value_buffer(v5, qword_281122F18);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_20DF47BB4();
  v8 = sub_20DF47FE4();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_20DED38E8(0xD000000000000024, 0x800000020DF4FD50, &v21);
    _os_log_impl(&dword_20DEAF000, v7, v8, "%s Completed onboarding", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F329700](v14, -1, -1);
    MEMORY[0x20F329700](v13, -1, -1);
  }

  (*(v11 + 8))(v10, v12);
  v15 = v0[30];
  v16 = v0[26];
  v17 = v0[27];
  v18 = v0[21];
  [*(v0[31] + 16) invalidate];
  sub_20DF47EE4();

  v19 = v0[1];

  return v19();
}

uint64_t sub_20DF18A94(void *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20DED38E8(0xD000000000000024, 0x800000020DF4FD50, &v18);
    *(v11 + 12) = 2112;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20DEAF000, v9, v10, "%s Failed to establish daemon connection. %@", v11, 0x16u);
    sub_20DF1EFA8(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F329700](v13, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v18 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t HomeEnergyManager.utilitiesNearLocation(location:)(double a1, double a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  v3 = sub_20DF47BD4();
  *(v2 + 64) = v3;
  v4 = *(v3 - 8);
  *(v2 + 72) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF18DF0, 0, 0);
}

uint64_t sub_20DF18DF0()
{
  v21 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FE4();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_20DED38E8(0xD000000000000020, 0x800000020DF4FD80, &v20);
    _os_log_impl(&dword_20DEAF000, v5, v6, "HomeEnergyManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v14 = v0[6];
  v13 = v0[7];
  v15 = swift_task_alloc();
  v0[11] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = *(MEMORY[0x277D85A40] + 4);
  v17 = swift_task_alloc();
  v0[12] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA08, &qword_20DF49F40);
  *v17 = v0;
  v17[1] = sub_20DF1909C;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000020, 0x800000020DF4FD80, sub_20DF1EDCC, v15, v18);
}

uint64_t sub_20DF1909C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_20DF1FB84;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_20DF1FB8C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF191B8(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF88, &qword_20DF4B790);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = sub_20DF47F04();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v7 + 32))(v17 + v16, v10, v6);
  v18 = (v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a2;
  v18[1] = a3;
  sub_20DEBB534(0, 0, v14, &unk_20DF4B7A0, v17);
}

uint64_t sub_20DF193B8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 224) = a1;
  *(v6 + 232) = a2;
  *(v6 + 216) = a6;
  v7 = sub_20DF47BD4();
  *(v6 + 240) = v7;
  v8 = *(v7 - 8);
  *(v6 + 248) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF88, &qword_20DF4B790);
  *(v6 + 272) = v10;
  v11 = *(v10 - 8);
  *(v6 + 280) = v11;
  *(v6 + 288) = *(v11 + 64);
  *(v6 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF194F8, 0, 0);
}

uint64_t sub_20DF194F8()
{
  v2 = *(v0 + 36);
  v1 = *(v0 + 37);
  v3 = *(v0 + 34);
  v4 = *(v0 + 35);
  v6 = v0[28];
  v5 = v0[29];
  v7 = *(v0 + 27);
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  *(v0 + 38) = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v7, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v1, v3);
  v10 = sub_20DF3D598(sub_20DF1F7C4, v9);
  *(v0 + 39) = v10;

  *(v0 + 2) = v0;
  *(v0 + 7) = v0 + 24;
  *(v0 + 3) = sub_20DF19700;
  v11 = swift_continuation_init();
  *(v0 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF90, &qword_20DF4B7A8);
  *(v0 + 10) = MEMORY[0x277D85DD0];
  *(v0 + 11) = 1107296256;
  *(v0 + 12) = sub_20DF19EB8;
  *(v0 + 13) = &block_descriptor_70;
  *(v0 + 14) = v11;
  [v10 utilitiesNearLocationWithLocation:v0 + 10 completionHandler:{v6, v5}];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF19700()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF197E0, 0, 0);
}

uint64_t sub_20DF197E0()
{
  v47 = v0;
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[24];
  swift_unknownObjectRelease();
  [*(v2 + 16) invalidate];
  if (v3)
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v4 = v0[33];
    v5 = v0[30];
    v6 = v0[31];
    v7 = __swift_project_value_buffer(v5, qword_281122F18);
    swift_beginAccess();
    (*(v6 + 16))(v4, v7, v5);

    v8 = sub_20DF47BB4();
    v9 = sub_20DF47FE4();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[33];
    v13 = v0[30];
    v12 = v0[31];
    if (v10)
    {
      v45 = v0[33];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v46 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_20DED38E8(0xD000000000000020, 0x800000020DF4FD80, &v46);
      *(v14 + 12) = 2080;
      v16 = MEMORY[0x20F328A50](v3, MEMORY[0x277D837D0]);
      v18 = sub_20DED38E8(v16, v17, &v46);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_20DEAF000, v8, v9, "%s result: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F329700](v15, -1, -1);
      MEMORY[0x20F329700](v14, -1, -1);

      (*(v12 + 8))(v45, v13);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v37 = v0[38];
    v38 = v0[34];
    v39 = v0[27];
    v0[26] = v3;
    sub_20DF47EE4();
  }

  else
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v20 = v0[31];
    v19 = v0[32];
    v21 = v0[30];
    v22 = __swift_project_value_buffer(v21, qword_281122F18);
    swift_beginAccess();
    (*(v20 + 16))(v19, v22, v21);
    v23 = sub_20DF47BB4();
    v24 = sub_20DF47FF4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      sub_20DED4D6C();
      swift_allocError();
      *v27 = 16;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_20DEAF000, v23, v24, "%@", v25, 0xCu);
      sub_20DF1EFA8(v26);
      MEMORY[0x20F329700](v26, -1, -1);
      MEMORY[0x20F329700](v25, -1, -1);
    }

    v29 = v0[38];
    v30 = v0[34];
    v32 = v0[31];
    v31 = v0[32];
    v33 = v0[30];
    v34 = v0[27];

    (*(v32 + 8))(v31, v33);
    sub_20DED4D6C();
    v35 = swift_allocError();
    *v36 = 16;
    v0[25] = v35;
    sub_20DF47ED4();
  }

  v40 = v0[37];
  v41 = v0[32];
  v42 = v0[33];

  v43 = v0[1];

  return v43();
}

uint64_t sub_20DF19C1C(void *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20DED38E8(0xD000000000000020, 0x800000020DF4FD80, &v18);
    *(v11 + 12) = 2112;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20DEAF000, v9, v10, "%s Failed to establish daemon connection. %@", v11, 0x16u);
    sub_20DF1EFA8(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F329700](v13, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v18 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF88, &qword_20DF4B790);
  return sub_20DF47ED4();
}

uint64_t HomeEnergyManager.getAllUtilities(countryCode:)(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_20DF47BD4();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF19F84, 0, 0);
}

uint64_t sub_20DF19F84()
{
  v21 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FE4();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_20DED38E8(0xD00000000000001DLL, 0x800000020DF4FDB0, &v20);
    _os_log_impl(&dword_20DEAF000, v5, v6, "HomeEnergyManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v14 = v0[6];
  v13 = v0[7];
  v15 = swift_task_alloc();
  v0[11] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = *(MEMORY[0x277D85A40] + 4);
  v17 = swift_task_alloc();
  v0[12] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF50, &qword_20DF4B6F8);
  *v17 = v0;
  v17[1] = sub_20DF1A228;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD00000000000001DLL, 0x800000020DF4FDB0, sub_20DF1EDD4, v15, v18);
}

uint64_t sub_20DF1A228()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_20DF1A344;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_20DED4958;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF1A344()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_20DF1A3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF70, &qword_20DF4B770);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = sub_20DF47F04();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v7 + 32))(v17 + v16, v10, v6);
  v18 = (v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a2;
  v18[1] = a3;

  sub_20DEBB534(0, 0, v14, &unk_20DF4B780, v17);
}

uint64_t sub_20DF1A5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[29] = a4;
  v7 = sub_20DF47BD4();
  v6[32] = v7;
  v8 = *(v7 - 8);
  v6[33] = v8;
  v9 = *(v8 + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF70, &qword_20DF4B770);
  v6[37] = v10;
  v11 = *(v10 - 8);
  v6[38] = v11;
  v6[39] = *(v11 + 64);
  v6[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF1A704, 0, 0);
}

uint64_t sub_20DF1A704()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[31];
  v6 = v0[29];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[41] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v1, v3);
  v9 = sub_20DF3D598(sub_20DF1F614, v8);
  v0[42] = v9;

  if (v5)
  {
    v10 = v0[30];
    v11 = v0[31];
    v12 = sub_20DF47D04();
  }

  else
  {
    v12 = 0;
  }

  v0[43] = v12;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_20DF1A910;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF78, &qword_20DF4B788);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF1B3B0;
  v0[13] = &block_descriptor_60_0;
  v0[14] = v13;
  [v9 getAllUtilitiesWithCountryCode:v12 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF1A910()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF1A9F0, 0, 0);
}

uint64_t sub_20DF1A9F0()
{
  v60 = v0;
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  v4 = v0[24];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  if (v4)
  {
    if (qword_281122988[0] != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v5 = v0[36];
      v7 = v0[32];
      v6 = v0[33];
      v8 = __swift_project_value_buffer(v7, qword_281122F18);
      swift_beginAccess();
      (*(v6 + 16))(v5, v8, v7);

      v9 = sub_20DF47BB4();
      v10 = sub_20DF47FE4();

      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[36];
      v14 = v0[32];
      v13 = v0[33];
      v58 = v4;
      if (v11)
      {
        v15 = swift_slowAlloc();
        v57 = v12;
        v16 = swift_slowAlloc();
        v59[0] = v16;
        *v15 = 136315394;
        *(v15 + 4) = sub_20DED38E8(0xD00000000000001DLL, 0x800000020DF4FDB0, v59);
        *(v15 + 12) = 2080;
        v17 = MEMORY[0x20F328A50](v4, MEMORY[0x277CC9318]);
        v19 = sub_20DED38E8(v17, v18, v59);

        *(v15 + 14) = v19;
        _os_log_impl(&dword_20DEAF000, v9, v10, "%s result: %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F329700](v16, -1, -1);
        MEMORY[0x20F329700](v15, -1, -1);

        (*(v13 + 8))(v57, v14);
      }

      else
      {

        (*(v13 + 8))(v12, v14);
      }

      v37 = sub_20DF47324();
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      swift_allocObject();
      sub_20DF47314();
      v40 = *(v4 + 16);
      if (!v40)
      {
        break;
      }

      v59[0] = MEMORY[0x277D84F90];
      sub_20DF481D4();
      sub_20DF47B74();
      v41 = 0;
      v42 = (v4 + 40);
      while (v41 < *(v4 + 16))
      {
        v44 = *(v42 - 1);
        v43 = *v42;
        sub_20DED8AA0(v44, *v42);
        sub_20DF1F63C(&qword_27C84CF80, MEMORY[0x277D18228]);
        sub_20DF47304();
        ++v41;
        sub_20DED8A4C(v44, v43);
        v45 = v0[26];
        sub_20DF481B4();
        v46 = *(v59[0] + 16);
        sub_20DF481E4();
        sub_20DF481F4();
        sub_20DF481C4();
        v42 += 2;
        v4 = v58;
        if (v40 == v41)
        {

          v47 = v59[0];
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_22:
      swift_once();
    }

    v47 = MEMORY[0x277D84F90];
LABEL_17:
    v48 = v0[41];
    v49 = v0[37];
    v50 = v0[29];
    v0[28] = v47;
    sub_20DF47EE4();
  }

  else
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v21 = v0[33];
    v20 = v0[34];
    v22 = v0[32];
    v23 = __swift_project_value_buffer(v22, qword_281122F18);
    swift_beginAccess();
    (*(v21 + 16))(v20, v23, v22);
    v24 = sub_20DF47BB4();
    v25 = sub_20DF47FF4();
    v26 = os_log_type_enabled(v24, v25);
    v28 = v0[33];
    v27 = v0[34];
    v29 = v0[32];
    if (v26)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v59[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_20DED38E8(0xD00000000000001DLL, 0x800000020DF4FDB0, v59);
      _os_log_impl(&dword_20DEAF000, v24, v25, "%s Failed to fetch utilities", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x20F329700](v31, -1, -1);
      MEMORY[0x20F329700](v30, -1, -1);
    }

    (*(v28 + 8))(v27, v29);
    v32 = v0[41];
    v33 = v0[37];
    v34 = v0[29];
    sub_20DED4D6C();
    v35 = swift_allocError();
    *v36 = 14;
    v0[25] = v35;
    sub_20DF47ED4();
  }

  v51 = v0[40];
  v52 = v0[35];
  v53 = v0[36];
  v54 = v0[34];

  v55 = v0[1];

  return v55();
}

uint64_t sub_20DF1B114(void *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20DED38E8(0xD00000000000001DLL, 0x800000020DF4FDB0, &v18);
    *(v11 + 12) = 2112;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20DEAF000, v9, v10, "%s Failed to establish daemon connection. %@", v11, 0x16u);
    sub_20DF1EFA8(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F329700](v13, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v18 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF70, &qword_20DF4B770);
  return sub_20DF47ED4();
}

uint64_t sub_20DF1B3BC(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_20DF47E64();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return swift_continuation_resume();
}

uint64_t HomeEnergyManager.utilityInformation(utilityID:)(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_20DF47BD4();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF1B500, 0, 0);
}

uint64_t sub_20DF1B500()
{
  v23 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FE4();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v11 = v0[6];
    v21 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_20DED38E8(0xD00000000000001ELL, 0x800000020DF4FDD0, &v22);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20DED38E8(v11, v21, &v22);
    _os_log_impl(&dword_20DEAF000, v5, v6, "HomeEnergyManager %s: utility ID %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v13, -1, -1);
    MEMORY[0x20F329700](v12, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v15 = v0[6];
  v14 = v0[7];
  v16 = swift_task_alloc();
  v0[11] = v16;
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = *(MEMORY[0x277D85A40] + 4);
  v18 = swift_task_alloc();
  v0[12] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF58, &qword_20DF4B708);
  *v18 = v0;
  v18[1] = sub_20DF1909C;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD00000000000001ELL, 0x800000020DF4FDD0, sub_20DF1EDDC, v16, v19);
}

uint64_t sub_20DF1B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[30] = a4;
  v7 = sub_20DF47BD4();
  v6[33] = v7;
  v8 = *(v7 - 8);
  v6[34] = v8;
  v9 = *(v8 + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF60, &qword_20DF4B758);
  v6[38] = v10;
  v11 = *(v10 - 8);
  v6[39] = v11;
  v6[40] = *(v11 + 64);
  v6[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF1B934, 0, 0);
}

uint64_t sub_20DF1B934()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[31];
  v13 = v0[32];
  v6 = v0[30];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[42] = sub_20DF3C9D8();
  (*(v4 + 16))(v2, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v2, v3);
  v9 = sub_20DF3D598(sub_20DF1F4AC, v8);
  v0[43] = v9;

  v10 = sub_20DF47D04();
  v0[44] = v10;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_20DF1BB48;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CEC0, &qword_20DF4B400);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF16EC8;
  v0[13] = &block_descriptor_50;
  v0[14] = v11;
  [v9 utilityInformationWithUtilityID:v10 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF1BB48()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF1BC28, 0, 0);
}

uint64_t sub_20DF1BC28()
{
  v57 = v0;
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  v5 = v0[24];
  v4 = v0[25];
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  if (v4 >> 60 == 15)
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v7 = v0[34];
    v6 = v0[35];
    v8 = v0[33];
    v9 = __swift_project_value_buffer(v8, qword_281122F18);
    swift_beginAccess();
    (*(v7 + 16))(v6, v9, v8);
    v10 = sub_20DF47BB4();
    v11 = sub_20DF47FF4();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[34];
    v13 = v0[35];
    v15 = v0[33];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v56[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_20DED38E8(0xD00000000000001ELL, 0x800000020DF4FDD0, v56);
      _os_log_impl(&dword_20DEAF000, v10, v11, "%s Failed to fetch utilities", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x20F329700](v17, -1, -1);
      MEMORY[0x20F329700](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
    v18 = v0[42];
    v19 = v0[38];
    v20 = v0[30];
    sub_20DED4D6C();
    v21 = swift_allocError();
    *v22 = 15;
    v0[26] = v21;
    sub_20DF47ED4();
  }

  else
  {
    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v23 = v0[37];
    v24 = v0[33];
    v25 = v0[34];
    v26 = __swift_project_value_buffer(v24, qword_281122F18);
    swift_beginAccess();
    (*(v25 + 16))(v23, v26, v24);
    sub_20DED8AA0(v5, v4);
    v27 = sub_20DF47BB4();
    v28 = sub_20DF47FE4();
    sub_20DF14888(v5, v4);
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[37];
    v31 = v0[34];
    v55 = v0[33];
    if (v29)
    {
      v32 = v5;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v56[0] = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_20DED38E8(0xD00000000000001ELL, 0x800000020DF4FDD0, v56);
      *(v33 + 12) = 2080;
      sub_20DED8AA0(v32, v4);
      v35 = sub_20DF47434();
      v54 = v30;
      v37 = v36;
      sub_20DF14888(v32, v4);
      v38 = sub_20DED38E8(v35, v37, v56);

      *(v33 + 14) = v38;
      _os_log_impl(&dword_20DEAF000, v27, v28, "%s result: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F329700](v34, -1, -1);
      v39 = v33;
      v5 = v32;
      MEMORY[0x20F329700](v39, -1, -1);

      v40 = (*(v31 + 8))(v54, v55);
    }

    else
    {

      v40 = (*(v31 + 8))(v30, v55);
    }

    v41 = MEMORY[0x20F329140](v40);
    v42 = sub_20DF47324();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    sub_20DF47314();
    sub_20DF47B64();
    sub_20DF1F63C(&qword_27C84CF68, MEMORY[0x277D18158]);
    sub_20DF47304();
    v45 = v0[42];
    v46 = v0[38];
    v47 = v0[30];

    objc_autoreleasePoolPop(v41);
    v0[29] = v0[27];
    sub_20DF47EE4();
    sub_20DF14888(v5, v4);
  }

  v48 = v0[41];
  v49 = v0[36];
  v50 = v0[37];
  v51 = v0[35];

  v52 = v0[1];

  return v52();
}

uint64_t sub_20DF1C2F4(void *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20DED38E8(0xD00000000000001ELL, 0x800000020DF4FDD0, &v18);
    *(v11 + 12) = 2112;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20DEAF000, v9, v10, "%s Failed to establish daemon connection. %@", v11, 0x16u);
    sub_20DF1EFA8(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F329700](v13, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v18 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF60, &qword_20DF4B758);
  return sub_20DF47ED4();
}

uint64_t HomeEnergyManager.isTAFEnabled(utilityID:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_20DF47BD4();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF1C650, 0, 0);
}

uint64_t sub_20DF1C650()
{
  v23 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FE4();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  if (v7)
  {
    v11 = v0[5];
    v21 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_20DED38E8(0xD000000000000018, 0x800000020DF4FDF0, &v22);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20DED38E8(v11, v21, &v22);
    _os_log_impl(&dword_20DEAF000, v5, v6, "HomeEnergyManager %s: utility ID %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F329700](v13, -1, -1);
    MEMORY[0x20F329700](v12, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v15 = v0[5];
  v14 = v0[6];
  v16 = swift_task_alloc();
  v0[10] = v16;
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = *(MEMORY[0x277D85A40] + 4);
  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  v18[1] = sub_20DF1C928;
  v19 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 13, 0, 0, 0xD000000000000018, 0x800000020DF4FDF0, sub_20DF1EE24, v16, v19);
}

uint64_t sub_20DF1C928()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_20DF1CAB0;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_20DF1CA44;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF1CA44()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_20DF1CAB0()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3(0);
}

uint64_t sub_20DF1CB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v25 - v18;
  v20 = sub_20DF47F04();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v12 + 16))(v15, a1, v11);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v12 + 32))(v22 + v21, v15, v11);
  v23 = (v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a2;
  v23[1] = a3;

  sub_20DEBB534(0, 0, v19, a7, v22);
}

uint64_t sub_20DF1CD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = sub_20DF47BD4();
  v6[25] = v7;
  v8 = *(v7 - 8);
  v6[26] = v8;
  v9 = *(v8 + 64) + 15;
  v6[27] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v6[28] = v10;
  v11 = *(v10 - 8);
  v6[29] = v11;
  v6[30] = *(v11 + 64);
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF1CE48, 0, 0);
}

uint64_t sub_20DF1CE48()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[23];
  v13 = v0[24];
  v6 = v0[22];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[32] = sub_20DF3C9D8();
  (*(v4 + 16))(v2, v6, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v2, v3);
  v9 = sub_20DF3D598(sub_20DF1F344, v8);
  v0[33] = v9;

  v10 = sub_20DF47D04();
  v0[34] = v10;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_20DF1D05C;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA40, &qword_20DF49FA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF3B890;
  v0[13] = &block_descriptor_40;
  v0[14] = v11;
  [v9 isTAFEnabledWithUtilityID:v10 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF1D05C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_20DF1D3A4;
  }

  else
  {
    v3 = sub_20DF1D16C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF1D16C()
{
  v25 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 288);
  swift_unknownObjectRelease();

  [*(v3 + 16) invalidate];
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 200);
  v8 = __swift_project_value_buffer(v7, qword_281122F18);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FE4();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 200);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_20DED38E8(0xD000000000000018, 0x800000020DF4FDF0, &v24);
    *(v15 + 12) = 1024;
    *(v15 + 14) = v4;
    _os_log_impl(&dword_20DEAF000, v9, v10, "%s result: %{BOOL}d", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x20F329700](v16, -1, -1);
    MEMORY[0x20F329700](v15, -1, -1);
  }

  (*(v13 + 8))(v12, v14);
  v17 = *(v0 + 256);
  v18 = *(v0 + 224);
  v19 = *(v0 + 176);
  *(v0 + 289) = v4;
  sub_20DF47EE4();

  v20 = *(v0 + 248);
  v21 = *(v0 + 216);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_20DF1D3A4()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[28];
  v6 = v0[22];
  swift_willThrow();

  swift_unknownObjectRelease();

  v0[21] = v1;
  sub_20DF47ED4();
  v7 = v0[31];
  v8 = v0[27];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DF1D464(void *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20DED38E8(0xD000000000000018, 0x800000020DF4FDF0, &v18);
    *(v11 + 12) = 2112;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20DEAF000, v9, v10, "%s Failed to establish daemon connection. %@", v11, 0x16u);
    sub_20DF1EFA8(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F329700](v13, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v18 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  return sub_20DF47ED4();
}

uint64_t HomeEnergyManager.clearCache()()
{
  v1 = sub_20DF47BD4();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF1D7BC, 0, 0);
}

uint64_t sub_20DF1D7BC()
{
  v20 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_20DF47BB4();
  v6 = sub_20DF47FE4();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_20DED38E8(0x6361437261656C63, 0xEC00000029286568, &v19);
    _os_log_impl(&dword_20DEAF000, v5, v6, "HomeEnergyManager %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  if (sub_20DF47794())
  {
    v13 = *(MEMORY[0x277D85A40] + 4);
    v14 = swift_task_alloc();
    v0[8] = v14;
    *v14 = v0;
    v14[1] = sub_20DF1DA5C;
    v15 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v14, 0, 0, 0x6361437261656C63, 0xEC00000029286568, sub_20DF1DBD4, 0, v15);
  }

  else
  {
    v16 = v0[7];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_20DF1DA5C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_20DEF7358;
  }

  else
  {
    v3 = sub_20DF1DB70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF1DB70()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DF1DBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_20DF47BD4();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v4[25] = v8;
  v9 = *(v8 - 8);
  v4[26] = v9;
  v4[27] = *(v9 + 64);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF1DD24, 0, 0);
}

uint64_t sub_20DF1DD24()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[21];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[29] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v1, v3);
  v8 = sub_20DF3D598(sub_20DF1F1DC, v7);
  v0[30] = v8;

  v0[2] = v0;
  v0[3] = sub_20DF1DF08;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C920, &qword_20DF4B250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF2B4C4;
  v0[13] = &block_descriptor_30_0;
  v0[14] = v9;
  [v8 clearCacheWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF1DF08()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20DF1DFE8, 0, 0);
}

uint64_t sub_20DF1DFE8()
{
  v2 = v0[29];
  v1 = v0[30];
  swift_unknownObjectRelease();
  [*(v2 + 16) invalidate];
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = __swift_project_value_buffer(v5, qword_281122F18);
  swift_beginAccess();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_20DF47BB4();
  v8 = sub_20DF48004();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20DEAF000, v7, v8, "Clearing UtilityServices cache)", v9, 2u);
    MEMORY[0x20F329700](v9, -1, -1);
  }

  v11 = v0[28];
  v10 = v0[29];
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[22];
  v15 = v0[23];
  v16 = v0[21];

  (*(v15 + 8))(v13, v14);
  sub_20DF47EE4();

  v17 = v0[1];

  return v17();
}

uint64_t sub_20DF1E19C(void *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20DED38E8(0x6361437261656C63, 0xEC00000029286568, &v18);
    *(v11 + 12) = 2112;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20DEAF000, v9, v10, "%s Failed to open xpc connection. %@", v11, 0x16u);
    sub_20DF1EFA8(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F329700](v13, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v18 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF1E458()
{
  if (sub_20DF47794())
  {
    v1 = *(MEMORY[0x277D85A40] + 4);
    v2 = swift_task_alloc();
    *(v0 + 16) = v2;
    *v2 = v0;
    v2[1] = sub_20DF1E568;
    v3 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v2, 0, 0, 0xD00000000000001CLL, 0x800000020DF4FE10, sub_20DF1E67C, 0, v3);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_20DF1E568()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_20DECBDB4;
  }

  else
  {
    v3 = sub_20DEB9614;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF1E69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_20DF47F04();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v6 + 16))(v9, a1, v5);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v6 + 32))(v16 + v15, v9, v5);
  sub_20DEBB534(0, 0, v13, a3, v16);
}

uint64_t sub_20DF1E86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v4[22] = *(v6 + 64);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF1E940, 0, 0);
}

uint64_t sub_20DF1E940()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[24] = sub_20DF3C9D8();
  (*(v4 + 16))(v1, v5, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v1, v3);
  v8 = sub_20DF3D598(sub_20DF1EF68, v7);
  v0[25] = v8;

  v0[2] = v0;
  v0[3] = sub_20DF00FEC;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9E0, &unk_20DF49F10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DEC8A6C;
  v0[13] = &block_descriptor_5;
  v0[14] = v9;
  [v8 triggerAMIFetchFromDropboxWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF1EB24(void *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_20DF47BB4();
  v10 = sub_20DF47FF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20DED38E8(0xD00000000000001CLL, 0x800000020DF4FE10, &v18);
    *(v11 + 12) = 2112;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20DEAF000, v9, v10, "%s Failed to open xpc connection. %@", v11, 0x16u);
    sub_20DF1EFA8(v12);
    MEMORY[0x20F329700](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F329700](v13, -1, -1);
    MEMORY[0x20F329700](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v18 = a1;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  return sub_20DF47ED4();
}

uint64_t sub_20DF1EE6C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEDA9C0;

  return sub_20DF1E86C(a1, v6, v7, v1 + v5);
}

uint64_t sub_20DF1EFA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C948, qword_20DF49940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DF1F0E0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20DEBA16C;

  return sub_20DF1DBF4(a1, v6, v7, v1 + v5);
}

uint64_t sub_20DF1F204(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DF1CD14(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_20DF1F36C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF60, &qword_20DF4B758) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DF1B7E8(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_20DF1F4D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF70, &qword_20DF4B770) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DF1A5B8(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_20DF1F63C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DF1F684(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CF88, &qword_20DF4B790) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DF193B8(v10, v11, a1, v7, v8, v1 + v6);
}

uint64_t sub_20DF1F7EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C910, &qword_20DF49790) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20DEDA9C0;

  return sub_20DF18458(a1, v7, v8, v1 + v6, v10, v11, v12);
}

uint64_t sub_20DF1F95C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_20DEDA9C0;

  return sub_20DF17410(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_20DF1FAC4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_20DF1FBB4()
{
  v1 = sub_20DF47764();
  v0[5] = v1;
  v2 = sub_20DF200D4();
  v0[6] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v4 = *(*(v1 - 8) + 104);
  v4(boxed_opaque_existential_1, *MEMORY[0x277D07378], v1);
  v5 = sub_20DF47614();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v5 & 1) != 0 && (v0[10] = v1, v0[11] = v2, v6 = __swift_allocate_boxed_opaque_existential_1(v0 + 7), v4(v6, *MEMORY[0x277D07388], v1), v7 = sub_20DF47614(), __swift_destroy_boxed_opaque_existential_1(v0 + 7), (v7))
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v9 = sub_20DF47D04();
    v10 = [v8 initWithServiceName_];
    v0[13] = v10;

    v11 = [objc_opt_self() interfaceWithProtocol_];
    [v10 setRemoteObjectInterface_];

    [v10 resume];
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_20DF1FE14;
    v13 = v0[12];

    return sub_20DEE4E10(v13, v10, 50.0);
  }

  else
  {
    v15 = v0[1];
    v16 = MEMORY[0x277D84F90];

    return v15(v16);
  }
}

uint64_t sub_20DF1FE14(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_20DF1FF30, 0, 0);
}

void sub_20DF1FF30()
{
  v1 = 0;
  v2 = *(v0 + 120);
  v3 = MEMORY[0x277D84F90];
  v4 = *(v2 + 64);
  v20 = MEMORY[0x277D84F90];
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v4;
  v8 = (63 - v6) >> 6;
  if ((v5 & v4) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v2 + 64 + 8 * v9);
    ++v1;
    if (v7)
    {
      v1 = v9;
      do
      {
LABEL_8:
        v10 = (v1 << 10) | (16 * __clz(__rbit64(v7)));
        v11 = (*(v2 + 48) + v10);
        v13 = *v11;
        v12 = v11[1];
        v14 = (*(v2 + 56) + v10);
        v15 = *v14;
        v16 = v14[1];

        sub_20DED3F64(v15, v16, v13, v12);
        MEMORY[0x20F328A20]();
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20DF47E84();
        }

        v7 &= v7 - 1;
        sub_20DF47EA4();
        v3 = v20;
      }

      while (v7);
    }
  }

  v18 = *(v0 + 120);

  v19 = *(v0 + 8);

  v19(v3);
}

unint64_t sub_20DF200D4()
{
  result = qword_27C84CFA0;
  if (!qword_27C84CFA0)
  {
    sub_20DF47764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CFA0);
  }

  return result;
}

uint64_t static EnergyKitManager.sites(near:radius:)(uint64_t a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DF21524;

  return sub_20DF20FE4(a1, a2);
}

uint64_t static EnergyKitManager.sites(near:radius:applicationID:)(uint64_t a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DEBBAA8;

  return sub_20DF20FE4(a1, a2);
}

uint64_t sub_20DF202B8()
{
  v1 = sub_20DF47764();
  v0[5] = v1;
  v2 = sub_20DF200D4();
  v0[6] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v4 = *(*(v1 - 8) + 104);
  v4(boxed_opaque_existential_1, *MEMORY[0x277D07378], v1);
  v5 = sub_20DF47614();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v5 & 1) != 0 && (v0[10] = v1, v0[11] = v2, v6 = __swift_allocate_boxed_opaque_existential_1(v0 + 7), v4(v6, *MEMORY[0x277D07388], v1), v7 = sub_20DF47614(), __swift_destroy_boxed_opaque_existential_1(v0 + 7), (v7))
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v9 = sub_20DF47D04();
    v10 = [v8 initWithServiceName_];
    v0[12] = v10;

    v11 = [objc_opt_self() interfaceWithProtocol_];
    [v10 setRemoteObjectInterface_];

    [v10 resume];
    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_20DF20508;

    return sub_20DEE54D8(v10);
  }

  else
  {
    v14 = v0[1];
    v15 = MEMORY[0x277D84F90];

    return v14(v15);
  }
}

uint64_t sub_20DF20508(uint64_t a1)
{
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_20DF2063C()
{
  v1 = sub_20DF47764();
  v0[5] = v1;
  v2 = sub_20DF200D4();
  v0[6] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v4 = *(*(v1 - 8) + 104);
  v4(boxed_opaque_existential_1, *MEMORY[0x277D07378], v1);
  v5 = sub_20DF47614();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v5 & 1) != 0 && (v0[10] = v1, v0[11] = v2, v6 = __swift_allocate_boxed_opaque_existential_1(v0 + 7), v4(v6, *MEMORY[0x277D07388], v1), v7 = sub_20DF47614(), __swift_destroy_boxed_opaque_existential_1(v0 + 7), (v7))
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v9 = sub_20DF47D04();
    v10 = [v8 initWithServiceName_];
    v0[13] = v10;

    v11 = [objc_opt_self() interfaceWithProtocol_];
    [v10 setRemoteObjectInterface_];

    [v10 resume];
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_20DF20890;
    v13 = v0[12];

    return sub_20DEE3C74(v13, v10);
  }

  else
  {
    v15 = v0[1];

    return v15(0);
  }
}

uint64_t sub_20DF20890(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_20DF209AC, 0, 0);
}

uint64_t sub_20DF209AC()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    type metadata accessor for EnergySite();
    v2 = swift_allocObject();
    v2[3] = [objc_opt_self() defaultCenter];
    v2[4] = 0;
    v2[5] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    v2[7] = 0;
    swift_unknownObjectWeakInit();
    v2[2] = v1;
    v3 = v2[5];
    v4 = v1;
    [v3 setMaxConcurrentOperationCount_];
    sub_20DEC70E0();
  }

  else
  {
    v2 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_20DF20AD4()
{
  v1 = sub_20DF47764();
  v0[5] = v1;
  v2 = sub_20DF200D4();
  v0[6] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v4 = *(*(v1 - 8) + 104);
  v4(boxed_opaque_existential_1, *MEMORY[0x277D07378], v1);
  v5 = sub_20DF47614();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v5 & 1) != 0 && (v0[10] = v1, v0[11] = v2, v6 = __swift_allocate_boxed_opaque_existential_1(v0 + 7), v4(v6, *MEMORY[0x277D07388], v1), v7 = sub_20DF47614(), __swift_destroy_boxed_opaque_existential_1(v0 + 7), (v7))
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v9 = sub_20DF47D04();
    v10 = [v8 initWithServiceName_];
    v0[13] = v10;

    v11 = [objc_opt_self() interfaceWithProtocol_];
    [v10 setRemoteObjectInterface_];

    [v10 resume];
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_20DF20D50;
    v13 = v0[12];

    return sub_20DEE4348(v13, v10);
  }

  else
  {
    sub_20DEDD4D8();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_20DF20D50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_20DF20F80;
  }

  else
  {

    *(v4 + 128) = a1;
    v7 = sub_20DF20E80;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20DF20E80()
{
  v1 = *(v0 + 128);
  type metadata accessor for EnergySite();
  v2 = swift_allocObject();
  v2[3] = [objc_opt_self() defaultCenter];
  v2[4] = 0;
  v2[5] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v2[7] = 0;
  swift_unknownObjectWeakInit();
  v2[2] = v1;
  v3 = v2[5];
  v4 = v1;
  [v3 setMaxConcurrentOperationCount_];
  sub_20DEC70E0();

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_20DF20F80()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DF20FE4(uint64_t a1, double a2)
{
  *(v2 + 104) = a2;
  *(v2 + 96) = a1;
  return MEMORY[0x2822009F8](sub_20DF21008, 0, 0);
}

uint64_t sub_20DF21008()
{
  v1 = sub_20DF47764();
  v0[5] = v1;
  v2 = sub_20DF200D4();
  v0[6] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v4 = *(*(v1 - 8) + 104);
  v4(boxed_opaque_existential_1, *MEMORY[0x277D07378], v1);
  v5 = sub_20DF47614();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v5 & 1) != 0 && (v0[10] = v1, v0[11] = v2, v6 = __swift_allocate_boxed_opaque_existential_1(v0 + 7), v4(v6, *MEMORY[0x277D07388], v1), v7 = sub_20DF47614(), __swift_destroy_boxed_opaque_existential_1(v0 + 7), (v7))
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v9 = sub_20DF47D04();
    v10 = [v8 initWithServiceName_];
    v0[14] = v10;

    v11 = [objc_opt_self() interfaceWithProtocol_];
    [v10 setRemoteObjectInterface_];

    [v10 resume];
    v12 = swift_task_alloc();
    v0[15] = v12;
    *v12 = v0;
    v12[1] = sub_20DF21264;
    v13 = *(v0 + 13);
    v14 = v0[12];

    return sub_20DEE4E10(v14, v10, v13);
  }

  else
  {
    v16 = v0[1];
    v17 = MEMORY[0x277D84F90];

    return v16(v17);
  }
}

uint64_t sub_20DF21264(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_20DF21380, 0, 0);
}

void sub_20DF21380()
{
  v1 = 0;
  v2 = *(v0 + 128);
  v3 = MEMORY[0x277D84F90];
  v4 = *(v2 + 64);
  v20 = MEMORY[0x277D84F90];
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v4;
  v8 = (63 - v6) >> 6;
  if ((v5 & v4) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v2 + 64 + 8 * v9);
    ++v1;
    if (v7)
    {
      v1 = v9;
      do
      {
LABEL_8:
        v10 = (v1 << 10) | (16 * __clz(__rbit64(v7)));
        v11 = (*(v2 + 48) + v10);
        v13 = *v11;
        v12 = v11[1];
        v14 = (*(v2 + 56) + v10);
        v15 = *v14;
        v16 = v14[1];

        sub_20DED3F64(v15, v16, v13, v12);
        MEMORY[0x20F328A20]();
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_20DF47E84();
        }

        v7 &= v7 - 1;
        sub_20DF47EA4();
        v3 = v20;
      }

      while (v7);
    }
  }

  v18 = *(v0 + 128);

  v19 = *(v0 + 8);

  v19(v3);
}

uint64_t EKSandboxExtension.__allocating_init(extensionClass:fileURL:context:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  EKSandboxExtension.init(extensionClass:fileURL:context:)(a1, a2, a3);
  return v9;
}

uint64_t EKSandboxExtensionClass.hashValue.getter()
{
  v1 = *v0;
  sub_20DF48494();
  MEMORY[0x20F329080](v1);
  return sub_20DF484D4();
}

void *EKSandboxExtension.Context.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = j__sandbox_extension_consume;
  result[3] = 0;
  result[4] = j__sandbox_extension_release;
  result[5] = 0;
  result[6] = j__sandbox_extension_issue_file;
  result[7] = 0;
  return result;
}

uint64_t EKSandboxExtension.__allocating_init(token:fileURL:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 48) = 1;
  *(v11 + 16) = a4;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = 0;
  v12 = OBJC_IVAR____TtC17EnergyKitInternal18EKSandboxExtension_fileURL;
  v13 = sub_20DF47424();
  (*(*(v13 - 8) + 32))(v11 + v12, a3, v13);
  return v11;
}

uint64_t EKSandboxExtension.init(token:fileURL:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = 1;
  *(v4 + 16) = a4;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = 0;
  v6 = OBJC_IVAR____TtC17EnergyKitInternal18EKSandboxExtension_fileURL;
  v7 = sub_20DF47424();
  (*(*(v7 - 8) + 32))(v4 + v6, a3, v7);
  return v4;
}

uint64_t EKSandboxExtension.init(extensionClass:fileURL:context:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = *a1;
  v4[5] = 0;
  *(v4 + 48) = 1;
  result = swift_beginAccess();
  v10 = *(a3 + 48);
  v11 = *(a3 + 56);
  if (v8)
  {
    if (*MEMORY[0x277D861C0])
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (!*MEMORY[0x277D861B8])
  {
    __break(1u);
    return result;
  }

LABEL_5:

  sub_20DF47D84();
  sub_20DF47414();
  v23 = a2;
  v12 = *MEMORY[0x277D861E8];
  v13 = sub_20DF47D44();

  v14 = sub_20DF47D44();

  v15 = v10(v13 + 32, v14 + 32, v12);

  if (v15)
  {
    v4[3] = sub_20DF47D84();
    v4[4] = v16;
    free(v15);
    v17 = OBJC_IVAR____TtC17EnergyKitInternal18EKSandboxExtension_fileURL;
    v18 = sub_20DF47424();
    (*(*(v18 - 8) + 32))(v4 + v17, v23, v18);
    v4[2] = a3;
  }

  else
  {
    sub_20DF23164();
    swift_allocError();
    *v19 = 0;
    *(v19 + 4) = 1;
    swift_willThrow();

    v20 = sub_20DF47424();
    (*(*(v20 - 8) + 8))(v23, v20);
    v21 = *(*v4 + 48);
    v22 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EKSandboxExtension.consume()()
{
  if (*(v0 + 48) == 1)
  {
    v1 = v0;
    v2 = *(v0 + 16);
    swift_beginAccess();
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
    v5 = *(v1 + 24);
    v6 = *(v1 + 32);
    v7 = sub_20DF47D44();

    v8 = v4(v7 + 32);

    if (v8 == -1)
    {
      v10 = MEMORY[0x20F3287C0](v9);
      sub_20DF23164();
      swift_allocError();
      *v11 = v10;
      *(v11 + 4) = 0;
      swift_willThrow();
    }

    else
    {
      *(v1 + 40) = v8;
      *(v1 + 48) = 0;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EKSandboxExtension.release()()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    v1 = v0;
    v2 = *(v0 + 40);
    v3 = *(v1 + 16);
    swift_beginAccess();
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);

    LODWORD(v2) = v4(v2);

    if (v2 == sub_20DF47BF4())
    {
      *(v1 + 40) = 0;
      *(v1 + 48) = 1;
    }

    else
    {
      v6 = MEMORY[0x20F3287C0]();
      sub_20DF23164();
      swift_allocError();
      *v7 = v6;
      *(v7 + 4) = 0;
      swift_willThrow();
    }
  }
}

uint64_t static EKSandboxExtension.withResources<A>(resources:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](sub_20DF21C40, 0, 0);
}

void sub_20DF21C40()
{
  v1 = v0[12];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v15 = v0[12];
    }

    v2 = sub_20DF48214();
    v0[15] = v2;
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[15] = v2;
    if (!v2)
    {
      goto LABEL_16;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v0[12] + 32;
  do
  {
    if (v4)
    {
      v6 = MEMORY[0x20F328D50](v3, v0[12]);
    }

    else
    {
      v6 = *(v5 + 8 * v3);
    }

    if (*(v6 + 48) == 1)
    {
      v7 = *(v6 + 16);
      swift_beginAccess();
      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      v10 = *(v6 + 24);
      v11 = *(v6 + 32);
      v12 = sub_20DF47D44();

      v13 = v9(v12 + 32);

      if (v13 == -1)
      {
        MEMORY[0x20F3287C0](v14);
      }

      else
      {
        *(v6 + 40) = v13;
        *(v6 + 48) = 0;
      }
    }

    ++v3;
  }

  while (v2 != v3);
LABEL_16:
  v20 = (v0[13] + *v0[13]);
  v16 = *(v0[13] + 4);
  v17 = swift_task_alloc();
  v0[16] = v17;
  *v17 = v0;
  v17[1] = sub_20DF21E5C;
  v18 = v0[14];
  v19 = v0[11];

  v20(v19);
}

uint64_t sub_20DF21E5C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_20DF220BC;
  }

  else
  {
    v3 = sub_20DF21F70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_20DF21F70()
{
  v1 = v0[15];
  if (v1)
  {
    if (v1 >= 1)
    {
      v2 = 0;
      v3 = v0[12];
      v4 = v3 & 0xC000000000000001;
      v5 = v3 + 32;
      while (1)
      {
        if (v4)
        {
          v7 = MEMORY[0x20F328D50](v2, v0[12]);
          if ((*(v7 + 48) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v7 = *(v5 + 8 * v2);

          if ((*(v7 + 48) & 1) == 0)
          {
LABEL_10:
            v8 = *(v7 + 40);
            v9 = *(v7 + 16);
            swift_beginAccess();
            v11 = *(v9 + 32);
            v10 = *(v9 + 40);

            LODWORD(v8) = v11(v8);

            if (v8 == sub_20DF47BF4())
            {
              *(v7 + 40) = 0;
              *(v7 + 48) = 1;
            }

            else
            {
              MEMORY[0x20F3287C0]();
            }
          }
        }

        ++v2;
        v6 = v0[15];

        if (v2 == v6)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v12 = v0[1];

    v12();
  }
}

void sub_20DF220BC()
{
  v1 = v0[15];
  if (v1)
  {
    if (v1 >= 1)
    {
      v2 = 0;
      v3 = v0[12];
      v4 = v3 & 0xC000000000000001;
      v5 = v3 + 32;
      while (1)
      {
        if (v4)
        {
          v7 = MEMORY[0x20F328D50](v2, v0[12]);
          if ((*(v7 + 48) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v7 = *(v5 + 8 * v2);

          if ((*(v7 + 48) & 1) == 0)
          {
LABEL_10:
            v8 = *(v7 + 40);
            v9 = *(v7 + 16);
            swift_beginAccess();
            v11 = *(v9 + 32);
            v10 = *(v9 + 40);

            LODWORD(v8) = v11(v8);

            if (v8 == sub_20DF47BF4())
            {
              *(v7 + 40) = 0;
              *(v7 + 48) = 1;
            }

            else
            {
              MEMORY[0x20F3287C0]();
            }
          }
        }

        ++v2;
        v6 = v0[15];

        if (v2 == v6)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v12 = v0[17];
    swift_willThrow();
    v13 = v0[1];
    v14 = v0[17];

    v13();
  }
}

void EKSandboxExtension.withResource<A>(_:)(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  EKSandboxExtension.consume()();
  if (!v8)
  {
    a1(v3 + OBJC_IVAR____TtC17EnergyKitInternal18EKSandboxExtension_fileURL);
    if ((*(v3 + 48) & 1) == 0)
    {
      v13 = *(v3 + 40);
      v14 = *(v4 + 16);
      swift_beginAccess();
      v15 = *(v14 + 32);
      v16 = *(v14 + 40);

      LODWORD(v13) = v15(v13);

      if (v13 == sub_20DF47BF4())
      {
        *(v4 + 40) = 0;
        *(v4 + 48) = 1;
        return;
      }

      v19 = MEMORY[0x20F3287C0]();
      sub_20DF23164();
      v20 = swift_allocError();
      *v21 = v19;
      *(v21 + 4) = 0;
      v22 = v20;
      swift_willThrow();
      (*(*(a2 - 8) + 8))(a3, a2);
      if ((*(v4 + 48) & 1) == 0)
      {
        v9 = *(v4 + 40);
        v10 = *(v4 + 16);
        swift_beginAccess();
        v11 = *(v10 + 32);
        v12 = *(v10 + 40);

        LODWORD(v9) = v11(v9);

        if (v9 != sub_20DF47BF4())
        {
          v17 = MEMORY[0x20F3287C0]();
          sub_20DF23164();
          swift_allocError();
          *v18 = v17;
          *(v18 + 4) = 0;
          swift_willThrow();

          return;
        }

        *(v4 + 40) = 0;
        *(v4 + 48) = 1;
      }

      swift_willThrow();
    }
  }
}

uint64_t EKSandboxExtension.withResource<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](sub_20DF22450, 0, 0);
}

uint64_t sub_20DF22450()
{
  v1 = v0[12];
  EKSandboxExtension.consume()();
  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[12];
    v6 = OBJC_IVAR____TtC17EnergyKitInternal18EKSandboxExtension_fileURL;
    v11 = (v0[9] + *v0[9]);
    v7 = *(v0[9] + 4);
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = sub_20DF225A4;
    v9 = v0[10];
    v10 = v0[8];

    return v11(v10, v5 + v6);
  }
}

uint64_t sub_20DF225A4()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_20DF228CC;
  }

  else
  {
    v3 = sub_20DF226B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF226B8()
{
  v1 = v0[12];
  if (*(v1 + 48))
  {
    goto LABEL_4;
  }

  v2 = *(v1 + 40);
  v3 = *(v1 + 16);
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);

  LODWORD(v2) = v5(v2);

  if (v2 == sub_20DF47BF4())
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 1;
LABEL_4:
    v6 = v0[1];
    goto LABEL_11;
  }

  v7 = v0[11];
  v8 = v0[8];
  v9 = MEMORY[0x20F3287C0]();
  sub_20DF23164();
  v10 = swift_allocError();
  *v11 = v9;
  *(v11 + 4) = 0;
  swift_willThrow();
  (*(*(v7 - 8) + 8))(v8, v7);
  v12 = v0[12];
  if ((*(v12 + 48) & 1) == 0)
  {
    v13 = *(v12 + 40);
    v14 = *(v12 + 16);
    swift_beginAccess();
    v16 = *(v14 + 32);
    v15 = *(v14 + 40);

    LODWORD(v13) = v16(v13);

    if (v13 != sub_20DF47BF4())
    {
      v17 = MEMORY[0x20F3287C0]();
      swift_allocError();
      *v18 = v17;
      *(v18 + 4) = 0;
      swift_willThrow();

      goto LABEL_10;
    }

    *(v12 + 40) = 0;
    *(v12 + 48) = 1;
  }

  swift_willThrow();
LABEL_10:
  v6 = v0[1];
LABEL_11:

  return v6();
}

uint64_t sub_20DF228CC()
{
  v1 = v0[14];
  v2 = v0[12];
  if (*(v2 + 48))
  {
    goto LABEL_4;
  }

  v3 = *(v2 + 40);
  v4 = *(v2 + 16);
  swift_beginAccess();
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);

  LODWORD(v3) = v6(v3);

  if (v3 == sub_20DF47BF4())
  {
    *(v2 + 40) = 0;
    *(v2 + 48) = 1;
LABEL_4:
    swift_willThrow();
    goto LABEL_6;
  }

  v7 = MEMORY[0x20F3287C0]();
  sub_20DF23164();
  swift_allocError();
  *v8 = v7;
  *(v8 + 4) = 0;
  swift_willThrow();

LABEL_6:
  v9 = v0[1];

  return v9();
}

uint64_t EKSandboxExtension.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC17EnergyKitInternal18EKSandboxExtension_fileURL;
  v4 = sub_20DF47424();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t EKSandboxExtension.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtC17EnergyKitInternal18EKSandboxExtension_fileURL;
  v4 = sub_20DF47424();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_20DF22B14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_20DF240AC;
  a2[1] = v6;
}

uint64_t sub_20DF22B94(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v6 + 16) = sub_20DF2406C;
  *(v6 + 24) = v5;
}

uint64_t EKSandboxExtension.Context.sandbox_extension_consume.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t EKSandboxExtension.Context.sandbox_extension_consume.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_20DF22D1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_20DF24038;
  a2[1] = v6;
}

uint64_t sub_20DF22D9C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 40);
  *(v6 + 32) = sub_20DF23FF8;
  *(v6 + 40) = v5;
}

uint64_t EKSandboxExtension.Context.sandbox_extension_release.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t EKSandboxExtension.Context.sandbox_extension_release.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_20DF22F20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_20DF23FBC;
  a2[1] = v6;
}

uint64_t sub_20DF22FA0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 56);
  *(v6 + 48) = sub_20DF23F70;
  *(v6 + 56) = v5;
}

uint64_t EKSandboxExtension.Context.sandbox_extension_issue_file.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t EKSandboxExtension.Context.sandbox_extension_issue_file.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void *EKSandboxExtension.Context.init()()
{
  result = v0;
  v0[2] = j__sandbox_extension_consume;
  v0[3] = 0;
  v0[4] = j__sandbox_extension_release;
  v0[5] = 0;
  v0[6] = j__sandbox_extension_issue_file;
  v0[7] = 0;
  return result;
}

unint64_t sub_20DF23164()
{
  result = qword_27C84CFB0;
  if (!qword_27C84CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CFB0);
  }

  return result;
}

void *EKSandboxExtension.Context.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t EKSandboxExtension.Context.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_20DF23230(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4C5255656C6966;
  }

  else
  {
    v4 = 0x6E656B6F74;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x4C5255656C6966;
  }

  else
  {
    v6 = 0x6E656B6F74;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_20DF483D4();
  }

  return v9 & 1;
}

uint64_t sub_20DF232D4()
{
  v1 = *v0;
  sub_20DF48494();
  sub_20DF47D54();

  return sub_20DF484D4();
}

uint64_t sub_20DF23354()
{
  *v0;
  sub_20DF47D54();
}

uint64_t sub_20DF233C0()
{
  v1 = *v0;
  sub_20DF48494();
  sub_20DF47D54();

  return sub_20DF484D4();
}

uint64_t sub_20DF2343C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20DF48254();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_20DF2349C(uint64_t *a1@<X8>)
{
  v2 = 0x6E656B6F74;
  if (*v1)
  {
    v2 = 0x4C5255656C6966;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_20DF234D8()
{
  if (*v0)
  {
    result = 0x4C5255656C6966;
  }

  else
  {
    result = 0x6E656B6F74;
  }

  *v0;
  return result;
}

uint64_t sub_20DF23510@<X0>(char *a1@<X8>)
{
  v2 = sub_20DF48254();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_20DF23574(uint64_t a1)
{
  v2 = sub_20DF23B20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF235B0(uint64_t a1)
{
  v2 = sub_20DF23B20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EKSandboxExtension.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CFB8, &qword_20DF4B860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF23B20();
  sub_20DF484F4();
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v14[15] = 0;
  sub_20DF48344();
  if (!v2)
  {
    v14[14] = 1;
    sub_20DF47424();
    sub_20DF240E0(&qword_27C84CFC8);
    sub_20DF48384();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_20DF237A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20DF237F4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_20DF237F4(uint64_t *a1)
{
  v3 = sub_20DF47424();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D000, &qword_20DF4BBC8);
  v7 = *(v28 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v28);
  v10 = &v25 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF23B20();
  sub_20DF484E4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = a1;
    v13 = v7;
    v30 = 0;
    v14 = v28;
    v15 = sub_20DF482A4();
    v17 = v16;
    v25 = v15;
    v29 = 1;
    sub_20DF240E0(&qword_27C84D008);
    sub_20DF482E4();
    (*(v13 + 8))(v10, v14);
    type metadata accessor for EKSandboxExtension.Context();
    v19 = v17;
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
    v12 = swift_allocObject();
    *(v12 + 48) = 1;
    v24 = v25;
    *(v12 + 16) = v20;
    *(v12 + 24) = v24;
    *(v12 + 32) = v19;
    *(v12 + 40) = 0;
    (*(v27 + 32))(v12 + OBJC_IVAR____TtC17EnergyKitInternal18EKSandboxExtension_fileURL, v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return v12;
}

unint64_t sub_20DF23B20()
{
  result = qword_27C84CFC0;
  if (!qword_27C84CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CFC0);
  }

  return result;
}

unint64_t sub_20DF23B78()
{
  result = qword_27C84CFD0;
  if (!qword_27C84CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CFD0);
  }

  return result;
}

uint64_t type metadata accessor for EKSandboxExtension()
{
  result = qword_27C84CFD8;
  if (!qword_27C84CFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20DF23C30()
{
  result = sub_20DF47424();
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EKSandboxExtensionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EKSandboxExtensionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_20DF23E1C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20DF23E38(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_20DF23E6C()
{
  result = qword_27C84CFE8;
  if (!qword_27C84CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CFE8);
  }

  return result;
}

unint64_t sub_20DF23EC4()
{
  result = qword_27C84CFF0;
  if (!qword_27C84CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CFF0);
  }

  return result;
}

unint64_t sub_20DF23F1C()
{
  result = qword_27C84CFF8;
  if (!qword_27C84CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84CFF8);
  }

  return result;
}

uint64_t sub_20DF23F70(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v9 = a2;
  v10 = a1;
  v8 = a3;
  v4(&v7, &v10, &v9, &v8);
  return v7;
}

uint64_t sub_20DF23FBC@<X0>(void *a1@<X0>, void *a2@<X1>, unsigned int *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  result = v6(*a1, *a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_20DF23FF8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t sub_20DF24038@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_20DF2406C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t sub_20DF240AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_20DF240E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20DF47424();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DF24134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 296) = a3;
  *(v5 + 304) = a4;
  *(v5 + 280) = a1;
  *(v5 + 288) = a2;
  v7 = sub_20DF47BD4();
  *(v5 + 312) = v7;
  v8 = *(v7 - 8);
  *(v5 + 320) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 408) = *a5;
  *(v5 + 409) = a5[1];

  return MEMORY[0x2822009F8](sub_20DF2420C, 0, 0);
}

uint64_t sub_20DF2420C()
{
  if (*(v0 + 409))
  {
    sub_20DEDD4D8();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
    v2 = *(v0 + 328);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 288);
    *(v0 + 248) = sub_20DF47514();
    *(v0 + 256) = v6;
    *(v0 + 336) = v6;
    v7 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v8 = sub_20DF47D04();
    v9 = [v7 initWithServiceName_];
    *(v0 + 344) = v9;

    v10 = objc_opt_self();
    v11 = [v10 interfaceWithProtocol_];
    [v9 setRemoteObjectInterface_];

    [v9 resume];
    v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v13 = sub_20DF47D04();
    v14 = [v12 initWithServiceName_];
    *(v0 + 352) = v14;

    v15 = [v10 interfaceWithProtocol_];
    [v14 setRemoteObjectInterface_];

    [v14 resume];
    v16 = swift_task_alloc();
    *(v0 + 360) = v16;
    *(v16 + 16) = v14;
    v17 = *(MEMORY[0x277D859E0] + 4);
    v18 = swift_task_alloc();
    *(v0 + 368) = v18;
    *v18 = v0;
    v18[1] = sub_20DF244CC;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_20DF244CC()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20DF245E4, 0, 0);
}

uint64_t sub_20DF245E4()
{
  v1 = *(v0 + 344);

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 176) = sub_20DF2AA34;
  *(v0 + 184) = v2;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_20DF3C970;
  *(v0 + 168) = &block_descriptor_6;
  v3 = _Block_copy((v0 + 144));
  v4 = *(v0 + 184);
  v5 = v1;

  v6 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v3);
  sub_20DF48074();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C84CB30, "Dd");
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 336);
    v8 = *(v0 + 248);
    v9 = *(v0 + 408);
    v11 = *(v0 + 296);
    v10 = *(v0 + 304);
    v12 = *(v0 + 264);
    *(v0 + 376) = v12;
    v13 = sub_20DF47D04();
    *(v0 + 384) = v13;

    v14 = sub_20DF47D04();
    *(v0 + 392) = v14;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_20DF24AA8;
    v15 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCD0, &qword_20DF4AC70);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20DEE5F98;
    *(v0 + 104) = &block_descriptor_7_0;
    *(v0 + 112) = v15;
    [v12 guidanceWithSite:v13 query:v9 gridID:v14 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v16 = *(v0 + 336);
    v17 = *(v0 + 344);

    [v17 invalidate];
    sub_20DEDD4D8();
    v18 = swift_allocError();
    *v19 = 2;
    swift_willThrow();

    if (qword_281122988[0] != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 320);
    v20 = *(v0 + 328);
    v22 = *(v0 + 312);
    v23 = __swift_project_value_buffer(v22, qword_281122F18);
    swift_beginAccess();
    (*(v21 + 16))(v20, v23, v22);
    v24 = v18;
    v25 = sub_20DF47BB4();
    v26 = sub_20DF47FF4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v18;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_20DEAF000, v25, v26, "[GuidanceService] Error fetching guidance: %@", v27, 0xCu);
      sub_20DED8730(v28, &qword_27C84C948, qword_20DF49940);
      MEMORY[0x20F329700](v28, -1, -1);
      MEMORY[0x20F329700](v27, -1, -1);
    }

    v32 = *(v0 + 320);
    v31 = *(v0 + 328);
    v33 = *(v0 + 312);

    (*(v32 + 8))(v31, v33);
    swift_allocError();
    *v34 = 2;
    swift_willThrow();

    v35 = *(v0 + 328);

    v36 = *(v0 + 8);

    return v36();
  }
}