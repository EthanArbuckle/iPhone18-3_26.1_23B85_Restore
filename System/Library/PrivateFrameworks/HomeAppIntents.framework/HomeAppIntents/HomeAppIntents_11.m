uint64_t ShowNavigationIntent.perform()(uint64_t a1)
{
  *(v2 + 128) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0) - 8) + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v6 = sub_2528BF400();
  *(v2 + 160) = v6;
  v7 = *(v6 - 8);
  *(v2 + 168) = v7;
  *(v2 + 176) = *(v7 + 64);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  *(v2 + 216) = v10;
  *(v2 + 224) = *(v10 + 64);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  v11 = sub_2528BE8B0();
  *(v2 + 248) = v11;
  v12 = *(v11 - 8);
  *(v2 + 256) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 264) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30);
  *(v2 + 272) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v2 + 280) = swift_task_alloc();
  v16 = v1[1];
  *(v2 + 288) = *v1;
  *(v2 + 304) = v16;
  *(v2 + 320) = v1[2];

  return MEMORY[0x2822009F8](sub_252811748, 0, 0);
}

uint64_t sub_252811748()
{
  v68 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v7 = sub_2528C08B0();
  *(v0 + 336) = __swift_project_value_buffer(v7, qword_27F5025C8);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v8 = sub_2528C0890();
  v9 = sub_2528C0D10();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 296);
    v62 = *(v0 + 304);
    v65 = v9;
    v12 = *(v0 + 280);
    v11 = *(v0 + 288);
    v63 = *(v0 + 272);
    v64 = *(v0 + 328);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v67 = v14;
    *v13 = 136315906;
    sub_2528BE790();
    *(v0 + 361) = *(v0 + 360);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF388, &qword_2528D2D90);
    v15 = sub_2528C0DB0();
    v17 = sub_2527389AC(v15, v16, &v67);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_2528BE790();
    *(v0 + 363) = *(v0 + 362);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF390, &qword_2528D2D98);
    v18 = sub_2528C0DB0();
    v20 = sub_2527389AC(v18, v19, &v67);

    *(v13 + 14) = v20;
    *(v13 + 22) = 2080;
    sub_2528BE790();
    *(v0 + 120) = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF28, &qword_2528D2DA0);
    v21 = sub_2528C0DB0();
    v23 = v22;

    v24 = sub_2527389AC(v21, v23, &v67);

    *(v13 + 24) = v24;
    *(v13 + 32) = 2080;
    sub_2528BE790();
    v25 = sub_2528C0DB0();
    v27 = v26;
    sub_2527213D8(v12, &qword_27F4FD690, &unk_2528D2D30);
    v28 = sub_2527389AC(v25, v27, &v67);

    *(v13 + 34) = v28;
    _os_log_impl(&dword_252711000, v8, v65, "Show Navigation Intent perform() called - category: %s dashboardViewType: %s devicesEntities: %s roomEntity: %s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v14, -1, -1);
    MEMORY[0x2530A8D80](v13, -1, -1);
  }

  v30 = *(v0 + 320);
  v29 = *(v0 + 328);
  v32 = *(v0 + 304);
  v31 = *(v0 + 312);
  v34 = *(v0 + 288);
  v33 = *(v0 + 296);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  v35 = sub_2528C0890();
  v36 = sub_2528C0D10();

  if (os_log_type_enabled(v35, v36))
  {
    v38 = *(v0 + 320);
    v37 = *(v0 + 328);
    v40 = *(v0 + 304);
    v39 = *(v0 + 312);
    v66 = v36;
    v41 = *(v0 + 288);
    v42 = *(v0 + 296);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v67 = v44;
    *v43 = 136315138;
    *(v0 + 64) = v41;
    *(v0 + 72) = v42;
    *(v0 + 80) = v40;
    *(v0 + 88) = v39;
    *(v0 + 96) = v38;
    *(v0 + 104) = v37;
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BEA50();
    sub_2528BEA50();
    v45 = sub_2528C0A20();
    v47 = sub_2527389AC(v45, v46, &v67);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_252711000, v35, v66, "ShowNavigationIntent = %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    MEMORY[0x2530A8D80](v44, -1, -1);
    MEMORY[0x2530A8D80](v43, -1, -1);
  }

  v49 = *(v0 + 256);
  v48 = *(v0 + 264);
  v51 = *(v0 + 240);
  v50 = *(v0 + 248);
  v52 = *(v0 + 200);
  v53 = *(v0 + 208);
  v54 = *(v0 + 304);
  *(v0 + 16) = *(v0 + 288);
  v55 = *(v0 + 320);
  *(v0 + 32) = v54;
  *(v0 + 48) = v55;
  sub_252816B9C();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v49 + 8))(v48, v50);
  v56 = type metadata accessor for HomeEntity(0);
  (*(*(v56 - 8) + 56))(v53, 1, 1, v56);
  v57 = sub_2528C05D0();
  (*(*(v57 - 8) + 56))(v52, 1, 1, v57);
  v58 = swift_task_alloc();
  *(v0 + 344) = v58;
  *v58 = v0;
  v58[1] = sub_252811D70;
  v59 = *(v0 + 200);
  v60 = *(v0 + 208);

  return sub_25277ECE4(v60, 0, 0, v59);
}

uint64_t sub_252811D70(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v6 = *v1;
  *(*v1 + 352) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_252811ECC, 0, 0);
}

uint64_t sub_252811ECC()
{
  v1 = v0[18];
  sub_2527D38F8(v0[44], v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  if (v3 == 1)
  {
    sub_2527213D8(v6, &qword_27F4FCDA8, &unk_2528C5CB0);
    (*(v5 + 56))(v7, 1, 1, v4);
  }

  else
  {
    v8 = *(v2 + 48);
    v9 = *(v5 + 16);
    v10 = v0[18];
    v9(v0[19], v6 + v8, v0[20]);
    sub_2527D6704(v10 + v8);
    (*(v5 + 56))(v7, 0, 1, v4);
    v11 = sub_2528BECF0();
    (*(*(v11 - 8) + 8))(v10, v11);
    if ((*(v5 + 48))(v7, 1, v4) != 1)
    {
      v40 = v0[35];
      v41 = v0[33];
      v24 = v0[30];
      v37 = v0[29];
      v25 = v0[27];
      v43 = v0[26];
      v47 = v0[25];
      v26 = v0[24];
      v36 = v0[23];
      v27 = v0[21];
      v38 = v0[22];
      v28 = v0[20];
      v45 = v0[19];
      v29 = v0[17];
      v39 = *(v27 + 32);
      v39(v26);
      v30 = sub_2528C0C40();
      (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
      v9(v36, v26, v28);
      sub_25272006C(v24, v37, &qword_27F4FCE00, &qword_2528C5D20);
      v31 = (*(v27 + 80) + 65) & ~*(v27 + 80);
      v32 = (v38 + *(v25 + 80) + v31) & ~*(v25 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      v34 = MEMORY[0x277D84F90];
      *(v33 + 32) = MEMORY[0x277D84F90];
      *(v33 + 40) = 2;
      *(v33 + 48) = v34;
      *(v33 + 56) = v34;
      *(v33 + 64) = 1;
      (v39)(v33 + v31, v36, v28);
      sub_25274AA0C(v37, v33 + v32, &qword_27F4FCE00, &qword_2528C5D20);
      sub_2527D3E74(0, 0, v29, &unk_2528CD990, v33);

      (*(v27 + 8))(v26, v28);
      sub_2527213D8(v24, &qword_27F4FCE00, &qword_2528C5D20);
      sub_2528BE670();

      v23 = v0[1];
      goto LABEL_8;
    }
  }

  v12 = v0[42];
  sub_2527213D8(v0[19], &qword_27F4FCD98, &qword_2528C6200);
  v13 = sub_2528C0890();
  v14 = sub_2528C0CF0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_252711000, v13, v14, "No snapshot found for current home", v15, 2u);
    MEMORY[0x2530A8D80](v15, -1, -1);
  }

  v16 = v0[35];
  v17 = v0[33];
  v19 = v0[29];
  v18 = v0[30];
  v21 = v0[25];
  v20 = v0[26];
  v22 = v0[24];
  v42 = v0[23];
  v44 = v0[19];
  v46 = v0[18];
  v48 = v0[17];

  sub_2527D66B0();
  swift_allocError();
  swift_willThrow();
  sub_2527213D8(v18, &qword_27F4FCE00, &qword_2528C5D20);

  v23 = v0[1];
LABEL_8:

  return v23();
}

uint64_t sub_25281244C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8A8 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FF318);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2528124F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25271F3AC;

  return ShowNavigationIntent.perform()(a1);
}

uint64_t sub_252812590(uint64_t a1)
{
  v2 = sub_252816B9C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_2528125CC(_WORD *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  *(v3 + 24) = swift_task_alloc();
  *(v3 + 64) = *a1;

  return MEMORY[0x2822009F8](sub_252812674, 0, 0);
}

uint64_t sub_252812674()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEB60, &qword_2528D3390);
  v4 = swift_allocObject();
  *(v0 + 32) = v4;
  *(v4 + 16) = xmmword_2528C3910;
  *(v4 + 32) = v1;
  v5 = type metadata accessor for HomeEntity(0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  if (sub_2528BE9A0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7F8, &qword_2528C48B0);
    v6 = *(type metadata accessor for RoomEntity() - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2528C3910;
    swift_getKeyPath();
    sub_25281710C();
    sub_2528BE840();
  }

  else
  {
    v9 = 0;
  }

  *(v0 + 40) = v9;
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_25281288C;
  v11 = *(v0 + 24);

  return sub_252836FA8(v4, v11, 0, v9);
}

uint64_t sub_25281288C(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[6];
  v6 = *v2;
  (*v2)[7] = v1;

  v7 = v4[5];
  v8 = v4[4];
  sub_2527213D8(v4[3], &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2527FD0F8, 0, 0);
  }

  else
  {

    v9 = v6[1];

    return v9(a1);
  }
}

uint64_t sub_252812A50(uint64_t a1, _WORD *a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25274BC30;

  return sub_2528125CC(a2, v7, v5);
}

uint64_t sub_252812AF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  *(v4 + 32) = swift_task_alloc();
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252812B9C, 0, 0);
}

uint64_t sub_252812B9C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for HomeEntity(0);
  v4 = *(*(v3 - 8) + 56);
  v5 = *(v0 + 24);
  if (v1)
  {
    v4(*(v0 + 32), 1, 1, v3);
    if (sub_2528BE9A0())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7F8, &qword_2528C48B0);
      v6 = *(type metadata accessor for RoomEntity() - 8);
      v7 = *(v6 + 72);
      v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_2528C3910;
      swift_getKeyPath();
      sub_25281710C();
      sub_2528BE840();
    }

    else
    {
      v9 = 0;
    }

    *(v0 + 72) = v9;
    v17 = sub_252838B2C;
    v13 = swift_task_alloc();
    *(v0 + 80) = v13;
    *v13 = v0;
    v13[1] = sub_2528130F0;
    v14 = *(v0 + 32);
  }

  else
  {
    v4(*(v0 + 40), 1, 1, v3);
    if (sub_2528BE9A0())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7F8, &qword_2528C48B0);
      v10 = *(type metadata accessor for RoomEntity() - 8);
      v11 = *(v10 + 72);
      v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_2528C3910;
      swift_getKeyPath();
      sub_25281710C();
      sub_2528BE840();
    }

    else
    {
      v9 = 0;
    }

    *(v0 + 48) = v9;
    v17 = sub_252837E58;
    v15 = swift_task_alloc();
    *(v0 + 56) = v15;
    *v15 = v0;
    v15[1] = sub_252812ECC;
    v14 = *(v0 + 40);
  }

  return v17(v2, v14, 0, v9);
}

uint64_t sub_252812ECC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *v2;
  *(*v2 + 64) = v1;

  sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252813084, 0, 0);
  }

  else
  {
    v10 = *(v4 + 32);
    v9 = *(v4 + 40);

    v11 = *(v8 + 8);

    return v11(a1);
  }
}

uint64_t sub_252813084()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2528130F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 32);
  v8 = *v2;
  *(*v2 + 88) = v1;

  sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2528132A8, 0, 0);
  }

  else
  {
    v10 = *(v4 + 32);
    v9 = *(v4 + 40);

    v11 = *(v8 + 8);

    return v11(a1);
  }
}

uint64_t sub_2528132A8()
{
  v1 = v0[11];
  v3 = v0[4];
  v2 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_252813314(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_25273430C;

  return sub_252812AF0(v4, v5, v8, v6);
}

uint64_t sub_2528133C4()
{
  v1 = *v0;
  sub_2528C1130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3F8, &qword_2528D3310);
  sub_25272275C(&qword_27F4FF400, &qword_27F4FF3F8, &qword_2528D3310);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_252813468()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3F8, &qword_2528D3310);
  sub_25272275C(&qword_27F4FF400, &qword_27F4FF3F8, &qword_2528D3310);
  return sub_2528C0910();
}

uint64_t sub_2528134FC()
{
  v1 = *v0;
  sub_2528C1130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3F8, &qword_2528D3310);
  sub_25272275C(&qword_27F4FF400, &qword_27F4FF3F8, &qword_2528D3310);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t ShowNavigationIntent.stateSnapshot.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB0, &qword_2528D2DB0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = sub_2528BF400();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25281373C, 0, 0);
}

uint64_t sub_25281373C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = type metadata accessor for HomeEntity(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_2528C05D0();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_252813874;
  v6 = v0[8];
  v7 = v0[9];

  return sub_25277ECE4(v7, 0, 0, v6);
}

uint64_t sub_252813874(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 88) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2528139D0, 0, 0);
}

uint64_t sub_2528139D0()
{
  v41 = v0;
  v1 = v0[3];
  sub_2527D38F8(v0[11], v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[4];
    sub_2527213D8(v0[3], &qword_27F4FCDA8, &unk_2528C5CB0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
LABEL_4:
    sub_2527213D8(v0[4], &qword_27F4FCDB0, &qword_2528D2DB0);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v15 = sub_2528C08B0();
    __swift_project_value_buffer(v15, qword_27F5025C8);
    v16 = sub_2528C0890();
    v17 = sub_2528C0D10();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_2527389AC(0xD000000000000029, 0x80000002528E6460, &v40);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2527389AC(0x616E536574617473, 0xED0000746F687370, &v40);
      _os_log_impl(&dword_252711000, v16, v17, "%s-%s Using currentStateSnapshot", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v19, -1, -1);
      MEMORY[0x2530A8D80](v18, -1, -1);
    }

    sub_2528BEEB0();
    v0[12] = MEMORY[0x2530A6500]();
    v0[13] = sub_2528BEEE0();
    v0[14] = sub_2528BEED0();
    v0[15] = sub_2528170C4(&qword_27F4FF398, MEMORY[0x277D153D0]);
    v21 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_25281405C, v21, v20);
  }

  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v8 + *(v2 + 48);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
  v11 = *(v10 + 48);
  (*(v6 + 16))(v7, v9, v5);
  v12 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v9 + *(v12 + 20), v7 + v11, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2527D6704(v9);
  v13 = *(v10 - 8);
  (*(v13 + 56))(v7, 0, 1, v10);
  v14 = sub_2528BECF0();
  (*(*(v14 - 8) + 8))(v8, v14);
  if ((*(v13 + 48))(v7, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  v22 = v0[4];
  v23 = *(v10 + 48);
  v24 = *(v0[6] + 32);
  v24(v0[7], v22, v0[5]);
  sub_2527213D8(v22 + v23, &qword_27F4FCDB8, &unk_2528C5CC0);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v25 = sub_2528C08B0();
  __swift_project_value_buffer(v25, qword_27F5025C8);
  v26 = sub_2528C0890();
  v27 = sub_2528C0D10();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_2527389AC(0xD000000000000029, 0x80000002528E6460, &v40);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_2527389AC(0x616E536574617473, 0xED0000746F687370, &v40);
    _os_log_impl(&dword_252711000, v26, v27, "%s-%s Using gathered snapshot", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v29, -1, -1);
    MEMORY[0x2530A8D80](v28, -1, -1);
  }

  v30 = v0[6];
  v31 = v0[5];
  v32 = v0[2];
  v24(v32, v0[7], v31);
  (*(v30 + 56))(v32, 0, 1, v31);
  v34 = v0[8];
  v33 = v0[9];
  v35 = v0[7];
  v37 = v0[3];
  v36 = v0[4];

  v38 = v0[1];

  return v38();
}

uint64_t sub_25281405C()
{
  v1 = v0[14];
  v2 = v0[12];

  v0[16] = sub_2528BEE90();

  return MEMORY[0x2822009F8](sub_2528140D8, 0, 0);
}

uint64_t sub_2528140D8()
{
  v1 = v0[15];
  v2 = v0[13];
  v0[17] = sub_2528BEED0();
  v4 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25281416C, v4, v3);
}

uint64_t sub_25281416C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[2];

  sub_2528BEE40();

  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v8 = v0[3];
  v7 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t ShowNavigationIntent.deepLinkURL.getter(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = sub_2528BFD70();
  *(v2 + 80) = v3;
  v4 = *(v3 - 8);
  *(v2 + 88) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  v6 = sub_2528BECF0();
  *(v2 + 112) = v6;
  v7 = *(v6 - 8);
  *(v2 + 120) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v10 = sub_2528C0050();
  *(v2 + 144) = v10;
  v11 = *(v10 - 8);
  *(v2 + 152) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  v13 = sub_2528C0180();
  *(v2 + 176) = v13;
  v14 = *(v13 - 8);
  *(v2 + 184) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  v17 = sub_2528BF400();
  *(v2 + 232) = v17;
  v18 = *(v17 - 8);
  *(v2 + 240) = v18;
  v19 = *(v18 + 64) + 15;
  *(v2 + 248) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3A0, &unk_2528D2DC0) - 8) + 64) + 15;
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  v21 = v1[1];
  *(v2 + 304) = *v1;
  *(v2 + 320) = v21;
  *(v2 + 336) = v1[2];

  return MEMORY[0x2822009F8](sub_252814578, 0, 0);
}

uint64_t sub_252814578()
{
  v105 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  *(v0 + 352) = __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v104[0] = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2527389AC(0xD000000000000029, 0x80000002528E6460, v104);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_2527389AC(0x6B6E694C70656564, 0xEB000000004C5255, v104);
    _os_log_impl(&dword_252711000, v2, v3, "%s-%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v5, -1, -1);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  v6 = *(v0 + 320);
  v7 = *(v0 + 296);
  v8 = sub_2528BEC50();
  *(v0 + 360) = v8;
  v9 = *(v8 - 8);
  *(v0 + 368) = v9;
  v11 = v9 + 56;
  v10 = *(v9 + 56);
  *(v0 + 376) = v10;
  *(v0 + 384) = v11 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v7, 1, 1, v8);
  sub_2528BE790();
  v12 = *(v0 + 64);
  *(v0 + 392) = v12;
  if (v12)
  {
    if (*(v12 + 16))
    {
      v13 = *(v0 + 320);
      *(v0 + 16) = *(v0 + 304);
      *(v0 + 32) = v13;
      *(v0 + 48) = *(v0 + 336);
      v14 = swift_task_alloc();
      *(v0 + 400) = v14;
      *v14 = v0;
      v14[1] = sub_25281500C;
      v15 = *(v0 + 224);

      return ShowNavigationIntent.stateSnapshot.getter(v15);
    }
  }

  v17 = *(v0 + 344);
  v18 = *(v0 + 136);
  sub_2528BE790();
  v19 = type metadata accessor for RoomEntity();
  if ((*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v20 = *(v0 + 304);
    sub_2527213D8(*(v0 + 136), &qword_27F4FD690, &unk_2528D2D30);
    sub_2528BE790();
    v21 = *(v0 + 432);
    if (v21 <= 3)
    {
      v31 = MEMORY[0x277D16020];
      v32 = MEMORY[0x277D15FC0];
      if (v21 != 2)
      {
        v32 = MEMORY[0x277D15FE0];
      }

      if (*(v0 + 432))
      {
        v31 = MEMORY[0x277D16008];
      }

      if (*(v0 + 432) <= 1u)
      {
        v22 = v31;
      }

      else
      {
        v22 = v32;
      }

      goto LABEL_29;
    }

    if (*(v0 + 432) <= 5u)
    {
      v33 = v21 == 4;
      v22 = MEMORY[0x277D15FD8];
      if (!v33)
      {
        v22 = MEMORY[0x277D16010];
      }

      goto LABEL_29;
    }

    if (v21 == 6)
    {
      v22 = MEMORY[0x277D16000];
      goto LABEL_29;
    }

    if (v21 == 7)
    {
      v22 = MEMORY[0x277D15FF0];
LABEL_29:
      v34 = *(v0 + 272);
      v35 = *(v0 + 200);
      v36 = *(v0 + 168);
      v37 = *(v0 + 144);
      v38 = *(v0 + 152);
      v40 = *(v0 + 96);
      v39 = *(v0 + 104);
      v41 = *(v0 + 80);
      v42 = *(v0 + 88);
      (*(v42 + 104))(v40, *v22, v41);
      (*(v42 + 32))(v39, v40, v41);
      (*(v38 + 104))(v36, *MEMORY[0x277D164F0], v37);
      sub_2528C0040();
      (*(v38 + 8))(v36, v37);
      sub_2528BFD60();
      sub_2528C0170();
      sub_2528C0160();
      v43 = *(v0 + 104);
      v45 = *(v0 + 80);
      v44 = *(v0 + 88);
      (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
      (*(v44 + 8))(v43, v45);
      v30 = (v0 + 272);
      goto LABEL_30;
    }

    v75 = *(v0 + 312);
    sub_2528BE790();
    if (*(v0 + 433) == 3)
    {
      goto LABEL_31;
    }

    v77 = *(v0 + 152);
    v76 = *(v0 + 160);
    v78 = *(v0 + 144);
    (*(v77 + 104))(v76, *MEMORY[0x277D16500], v78);
    sub_2528C0040();
    (*(v77 + 8))(v76, v78);
    v79 = *(v0 + 264);
    v80 = *(v0 + 192);
    sub_2528C0170();
    sub_2528C0160();
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    v30 = (v0 + 264);
  }

  else
  {
    v99 = *(v0 + 208);
    v102 = *(v0 + 280);
    v23 = *(v0 + 168);
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v29 = *(v0 + 112);
    v28 = *(v0 + 120);
    (*(v28 + 16))(v27, v26, v29);
    sub_2527213D8(v26, &qword_27F4FD690, &unk_2528D2D30);
    sub_2528BECB0();
    (*(v28 + 8))(v27, v29);
    (*(v24 + 104))(v23, *MEMORY[0x277D164E8], v25);
    sub_2528C0040();
    (*(v24 + 8))(v23, v25);
    sub_2528C0170();
    sub_2528C0160();
    (*(*(v0 + 184) + 8))(*(v0 + 208), *(v0 + 176));
    v30 = (v0 + 280);
  }

LABEL_30:
  v46 = *v30;
  v48 = *(v0 + 376);
  v47 = *(v0 + 384);
  v49 = *(v0 + 360);
  v50 = *(v0 + 296);
  sub_2527213D8(v50, &qword_27F4FF3A0, &unk_2528D2DC0);
  v48(v46, 0, 1, v49);
  sub_25274AA0C(v46, v50, &qword_27F4FF3A0, &unk_2528D2DC0);
LABEL_31:
  v51 = *(v0 + 360);
  v52 = *(v0 + 368);
  v53 = *(v0 + 256);
  sub_25272006C(*(v0 + 296), v53, &qword_27F4FF3A0, &unk_2528D2DC0);
  if ((*(v52 + 48))(v53, 1, v51) == 1)
  {
    v54 = *(v0 + 352);
    sub_2527213D8(*(v0 + 256), &qword_27F4FF3A0, &unk_2528D2DC0);
    v55 = sub_2528C0890();
    v56 = sub_2528C0CF0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_252711000, v55, v56, "No deep link generated", v57, 2u);
      MEMORY[0x2530A8D80](v57, -1, -1);
    }

    sub_252816BF0();
    swift_allocError();
    swift_willThrow();
    v58 = *(v0 + 288);
    v60 = *(v0 + 272);
    v59 = *(v0 + 280);
    v62 = *(v0 + 256);
    v61 = *(v0 + 264);
    v63 = *(v0 + 248);
    v65 = *(v0 + 216);
    v64 = *(v0 + 224);
    v83 = *(v0 + 208);
    v85 = *(v0 + 200);
    v87 = *(v0 + 192);
    v89 = *(v0 + 168);
    v91 = *(v0 + 160);
    v93 = *(v0 + 136);
    v95 = *(v0 + 128);
    v97 = *(v0 + 104);
    v100 = *(v0 + 96);
    sub_2527213D8(*(v0 + 296), &qword_27F4FF3A0, &unk_2528D2DC0);

    v66 = *(v0 + 8);
  }

  else
  {
    v67 = *(v0 + 360);
    v68 = *(v0 + 368);
    v69 = *(v0 + 288);
    v71 = *(v0 + 272);
    v70 = *(v0 + 280);
    v73 = *(v0 + 256);
    v72 = *(v0 + 264);
    v81 = *(v0 + 248);
    v82 = *(v0 + 224);
    v84 = *(v0 + 216);
    v86 = *(v0 + 208);
    v88 = *(v0 + 200);
    v90 = *(v0 + 192);
    v92 = *(v0 + 168);
    v94 = *(v0 + 160);
    v96 = *(v0 + 136);
    v98 = *(v0 + 128);
    v101 = *(v0 + 104);
    v103 = *(v0 + 96);
    v74 = *(v0 + 72);
    sub_2527213D8(*(v0 + 296), &qword_27F4FF3A0, &unk_2528D2DC0);
    (*(v68 + 32))(v74, v73, v67);

    v66 = *(v0 + 8);
  }

  return v66();
}

uint64_t sub_25281500C()
{
  v1 = *(*v0 + 400);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_252815108, 0, 0);
}

uint64_t sub_252815108()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 392);

    sub_2527213D8(v3, &qword_27F4FCD98, &qword_2528C6200);
    v5 = *(v0 + 344);
    v6 = *(v0 + 136);
    sub_2528BE790();
    v7 = type metadata accessor for RoomEntity();
    if ((*(*(v7 - 8) + 48))(v6, 1, v7))
    {
      v8 = *(v0 + 304);
      sub_2527213D8(*(v0 + 136), &qword_27F4FD690, &unk_2528D2D30);
      sub_2528BE790();
      v9 = *(v0 + 432);
      if (v9 <= 3)
      {
        v24 = MEMORY[0x277D16020];
        v25 = MEMORY[0x277D15FC0];
        if (v9 != 2)
        {
          v25 = MEMORY[0x277D15FE0];
        }

        if (*(v0 + 432))
        {
          v24 = MEMORY[0x277D16008];
        }

        if (*(v0 + 432) <= 1u)
        {
          v10 = v24;
        }

        else
        {
          v10 = v25;
        }

        goto LABEL_23;
      }

      if (*(v0 + 432) <= 5u)
      {
        v26 = v9 == 4;
        v10 = MEMORY[0x277D15FD8];
        if (!v26)
        {
          v10 = MEMORY[0x277D16010];
        }

        goto LABEL_23;
      }

      if (v9 == 6)
      {
        v10 = MEMORY[0x277D16000];
        goto LABEL_23;
      }

      if (v9 == 7)
      {
        v10 = MEMORY[0x277D15FF0];
LABEL_23:
        v27 = *(v0 + 272);
        v28 = *(v0 + 200);
        v29 = *(v0 + 168);
        v30 = *(v0 + 144);
        v31 = *(v0 + 152);
        v33 = *(v0 + 96);
        v32 = *(v0 + 104);
        v34 = *(v0 + 80);
        v35 = *(v0 + 88);
        (*(v35 + 104))(v33, *v10, v34);
        (*(v35 + 32))(v32, v33, v34);
        (*(v31 + 104))(v29, *MEMORY[0x277D164F0], v30);
        sub_2528C0040();
        (*(v31 + 8))(v29, v30);
        sub_2528BFD60();
        sub_2528C0170();
        sub_2528C0160();
        v36 = *(v0 + 104);
        v38 = *(v0 + 80);
        v37 = *(v0 + 88);
        (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
        (*(v37 + 8))(v36, v38);
        v23 = (v0 + 272);
        goto LABEL_24;
      }

      v68 = *(v0 + 312);
      sub_2528BE790();
      if (*(v0 + 433) == 3)
      {
        goto LABEL_25;
      }

      v70 = *(v0 + 152);
      v69 = *(v0 + 160);
      v71 = *(v0 + 144);
      (*(v70 + 104))(v69, *MEMORY[0x277D16500], v71);
      sub_2528C0040();
      (*(v70 + 8))(v69, v71);
      v72 = *(v0 + 264);
      v73 = *(v0 + 192);
      sub_2528C0170();
      sub_2528C0160();
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
      v23 = (v0 + 264);
    }

    else
    {
      v92 = *(v0 + 208);
      v95 = *(v0 + 280);
      v16 = *(v0 + 168);
      v18 = *(v0 + 144);
      v17 = *(v0 + 152);
      v20 = *(v0 + 128);
      v19 = *(v0 + 136);
      v22 = *(v0 + 112);
      v21 = *(v0 + 120);
      (*(v21 + 16))(v20, v19, v22);
      sub_2527213D8(v19, &qword_27F4FD690, &unk_2528D2D30);
      sub_2528BECB0();
      (*(v21 + 8))(v20, v22);
      (*(v17 + 104))(v16, *MEMORY[0x277D164E8], v18);
      sub_2528C0040();
      (*(v17 + 8))(v16, v18);
      sub_2528C0170();
      sub_2528C0160();
      (*(*(v0 + 184) + 8))(*(v0 + 208), *(v0 + 176));
      v23 = (v0 + 280);
    }

LABEL_24:
    v39 = *v23;
    v41 = *(v0 + 376);
    v40 = *(v0 + 384);
    v42 = *(v0 + 360);
    v43 = *(v0 + 296);
    sub_2527213D8(v43, &qword_27F4FF3A0, &unk_2528D2DC0);
    v41(v39, 0, 1, v42);
    sub_25274AA0C(v39, v43, &qword_27F4FF3A0, &unk_2528D2DC0);
LABEL_25:
    v44 = *(v0 + 360);
    v45 = *(v0 + 368);
    v46 = *(v0 + 256);
    sub_25272006C(*(v0 + 296), v46, &qword_27F4FF3A0, &unk_2528D2DC0);
    if ((*(v45 + 48))(v46, 1, v44) == 1)
    {
      v47 = *(v0 + 352);
      sub_2527213D8(*(v0 + 256), &qword_27F4FF3A0, &unk_2528D2DC0);
      v48 = sub_2528C0890();
      v49 = sub_2528C0CF0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_252711000, v48, v49, "No deep link generated", v50, 2u);
        MEMORY[0x2530A8D80](v50, -1, -1);
      }

      sub_252816BF0();
      swift_allocError();
      swift_willThrow();
      v51 = *(v0 + 288);
      v53 = *(v0 + 272);
      v52 = *(v0 + 280);
      v55 = *(v0 + 256);
      v54 = *(v0 + 264);
      v56 = *(v0 + 248);
      v58 = *(v0 + 216);
      v57 = *(v0 + 224);
      v76 = *(v0 + 208);
      v78 = *(v0 + 200);
      v80 = *(v0 + 192);
      v82 = *(v0 + 168);
      v84 = *(v0 + 160);
      v86 = *(v0 + 136);
      v88 = *(v0 + 128);
      v90 = *(v0 + 104);
      v93 = *(v0 + 96);
      sub_2527213D8(*(v0 + 296), &qword_27F4FF3A0, &unk_2528D2DC0);

      v59 = *(v0 + 8);
    }

    else
    {
      v60 = *(v0 + 360);
      v61 = *(v0 + 368);
      v62 = *(v0 + 288);
      v64 = *(v0 + 272);
      v63 = *(v0 + 280);
      v66 = *(v0 + 256);
      v65 = *(v0 + 264);
      v74 = *(v0 + 248);
      v75 = *(v0 + 224);
      v77 = *(v0 + 216);
      v79 = *(v0 + 208);
      v81 = *(v0 + 200);
      v83 = *(v0 + 192);
      v85 = *(v0 + 168);
      v87 = *(v0 + 160);
      v89 = *(v0 + 136);
      v91 = *(v0 + 128);
      v94 = *(v0 + 104);
      v96 = *(v0 + 96);
      v67 = *(v0 + 72);
      sub_2527213D8(*(v0 + 296), &qword_27F4FF3A0, &unk_2528D2DC0);
      (*(v61 + 32))(v67, v66, v60);

      v59 = *(v0 + 8);
    }

    return v59();
  }

  v11 = *(v0 + 392);
  v12 = *(v0 + 328);
  (*(v2 + 32))(*(v0 + 248), v3, v1);
  sub_2528BE790();
  *(v0 + 435) = *(v0 + 434);
  v13 = swift_task_alloc();
  *(v0 + 408) = v13;
  *v13 = v0;
  v13[1] = sub_252815A34;
  v14 = *(v0 + 248);

  return sub_25283980C(v11, (v0 + 435), v14);
}

uint64_t sub_252815A34(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 408);
  v5 = *(*v2 + 392);
  v7 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = a2;

  return MEMORY[0x2822009F8](sub_252815B54, 0, 0);
}

uint64_t sub_252815B54()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[36];
  v4 = v0[27];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  (*(v7 + 104))(v5, *MEMORY[0x277D164F8], v6);
  sub_2528C0040();
  (*(v7 + 8))(v5, v6);
  sub_2528C0170();
  sub_2528C0160();
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[29];
  (*(v0[23] + 8))(v0[27], v0[22]);
  (*(v9 + 8))(v8, v10);
  v12 = v0[47];
  v11 = v0[48];
  v13 = v0[45];
  v14 = v0[36];
  v15 = v0[37];
  sub_2527213D8(v15, &qword_27F4FF3A0, &unk_2528D2DC0);
  v12(v14, 0, 1, v13);
  sub_25274AA0C(v14, v15, &qword_27F4FF3A0, &unk_2528D2DC0);
  v16 = v0[45];
  v17 = v0[46];
  v18 = v0[32];
  sub_25272006C(v0[37], v18, &qword_27F4FF3A0, &unk_2528D2DC0);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    v19 = v0[44];
    sub_2527213D8(v0[32], &qword_27F4FF3A0, &unk_2528D2DC0);
    v20 = sub_2528C0890();
    v21 = sub_2528C0CF0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_252711000, v20, v21, "No deep link generated", v22, 2u);
      MEMORY[0x2530A8D80](v22, -1, -1);
    }

    sub_252816BF0();
    swift_allocError();
    swift_willThrow();
    v23 = v0[36];
    v25 = v0[34];
    v24 = v0[35];
    v27 = v0[32];
    v26 = v0[33];
    v28 = v0[31];
    v29 = v0[27];
    v30 = v0[28];
    v43 = v0[26];
    v45 = v0[25];
    v47 = v0[24];
    v49 = v0[21];
    v51 = v0[20];
    v53 = v0[17];
    v55 = v0[16];
    v57 = v0[13];
    v59 = v0[12];
    sub_2527213D8(v0[37], &qword_27F4FF3A0, &unk_2528D2DC0);

    v31 = v0[1];
  }

  else
  {
    v33 = v0[45];
    v34 = v0[46];
    v35 = v0[36];
    v37 = v0[34];
    v36 = v0[35];
    v39 = v0[32];
    v38 = v0[33];
    v41 = v0[31];
    v42 = v0[28];
    v44 = v0[27];
    v46 = v0[26];
    v48 = v0[25];
    v50 = v0[24];
    v52 = v0[21];
    v54 = v0[20];
    v56 = v0[17];
    v58 = v0[16];
    v60 = v0[13];
    v61 = v0[12];
    v40 = v0[9];
    sub_2527213D8(v0[37], &qword_27F4FF3A0, &unk_2528D2DC0);
    (*(v34 + 32))(v40, v39, v33);

    v31 = v0[1];
  }

  return v31();
}

uint64_t ShowNavigationIntent.ShowNavigationIntentError.hashValue.getter()
{
  sub_2528C1130();
  MEMORY[0x2530A87A0](0);
  return sub_2528C1180();
}

uint64_t sub_252816078(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_25272006C(a1, &v18 - v9, &qword_27F4FC488, &unk_2528C3F80);
  v11 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  sub_25272006C(v10, v8, &qword_27F4FC488, &unk_2528C3F80);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
  sub_2527213D8(v10, &qword_27F4FC488, &unk_2528C3F80);
}

uint64_t sub_2528161F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252816290, 0, 0);
}

uint64_t sub_252816290()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
  v4 = swift_allocObject();
  v0[7] = v4;
  *(v4 + 16) = xmmword_2528C3910;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  if (sub_2528BE9A0())
  {
    v5 = v0[6];
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v0[6];
  v8 = type metadata accessor for HomeEntity(0);
  (*(*(v8 - 8) + 56))(v7, v6, 1, v8);
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_252816420;
  v10 = v0[6];

  return sub_2528B5188(v4, v10);
}

uint64_t sub_252816420(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v9 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  sub_2527213D8(v6, &qword_27F4FC488, &unk_2528C3F80);

  if (v1)
  {
    v7 = sub_2528166C0;
  }

  else
  {
    v7 = sub_252816588;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252816588()
{
  v1 = v0[9];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for RoomEntity();
    v4 = *(v3 - 8);
    sub_252817060(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

    v5 = 0;
  }

  else
  {
    v6 = v0[9];

    v3 = type metadata accessor for RoomEntity();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  v7 = v0[6];
  (*(v4 + 56))(v0[2], v5, 1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2528166C0()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_252816724(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *v2;
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2527228B0;

  return sub_2528161F0(a1, v5, v6, v8, v7);
}

unint64_t sub_2528167D8()
{
  result = qword_27F4FF338;
  if (!qword_27F4FF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF338);
  }

  return result;
}

uint64_t sub_25281682C@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF418, &qword_2528D33C0);
  v1 = *(v10 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v10);
  v4 = &v9 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3F8, &qword_2528D3310);
  swift_getKeyPath();
  v15 = sub_2528BE9C0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD08, &unk_2528C5B90);
  v6 = sub_252817214();
  MEMORY[0x2530A60E0](&v16, &v15, v5, &type metadata for ShowNavigationIntentDeviceEntityFromAccessoryTypeResolver, v6);

  swift_getKeyPath();
  v14 = sub_2528BE9C0();
  v7 = sub_252817268();
  MEMORY[0x2530A60E0](&v15, &v14, v5, &type metadata for ShowNavigationIntentDeviceEntityFromInputTypeResolver, v7);

  v14 = v16;
  sub_252756100();
  sub_2528BEAA0();
  v12 = &type metadata for ShowNavigationIntentDeviceEntityFromAccessoryTypeResolver;
  v13 = v15;
  v11 = v6;
  sub_2528BEA90();
  (*(v1 + 8))(v4, v10);
}

unint64_t sub_252816A44()
{
  result = qword_27F4FF360;
  if (!qword_27F4FF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF360);
  }

  return result;
}

uint64_t sub_252816A98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3F8, &qword_2528D3310);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  v0 = type metadata accessor for RoomEntity();
  v1 = sub_2528171C0();
  MEMORY[0x2530A60E0](&v4, &v3, v0, &type metadata for ShowNavigationIntentRoomEntityFromNameResolver, v1);

  v3 = v4;
  sub_2528170C4(&qword_27F4FCD70, type metadata accessor for RoomEntity);
  sub_2528BEAA0();
}

unint64_t sub_252816B9C()
{
  result = qword_27F4FF380;
  if (!qword_27F4FF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF380);
  }

  return result;
}

unint64_t sub_252816BF0()
{
  result = qword_27F4FF3A8;
  if (!qword_27F4FF3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3A8);
  }

  return result;
}

unint64_t sub_252816C48()
{
  result = qword_27F4FF3B0;
  if (!qword_27F4FF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3B0);
  }

  return result;
}

unint64_t sub_252816CA0()
{
  result = qword_27F4FF3B8;
  if (!qword_27F4FF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3B8);
  }

  return result;
}

unint64_t sub_252816D64()
{
  result = qword_27F4FF3C0;
  if (!qword_27F4FF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3C0);
  }

  return result;
}

unint64_t sub_252816DBC()
{
  result = qword_27F4FF3C8;
  if (!qword_27F4FF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3C8);
  }

  return result;
}

unint64_t sub_252816E14()
{
  result = qword_27F4FF3D0;
  if (!qword_27F4FF3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3D0);
  }

  return result;
}

unint64_t sub_252816E6C()
{
  result = qword_27F4FF3D8;
  if (!qword_27F4FF3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3D8);
  }

  return result;
}

unint64_t sub_252816EC4()
{
  result = qword_27F4FF3E0;
  if (!qword_27F4FF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3E0);
  }

  return result;
}

unint64_t sub_252816F1C()
{
  result = qword_27F4FF3E8;
  if (!qword_27F4FF3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3E8);
  }

  return result;
}

unint64_t sub_252816FBC()
{
  result = qword_27F4FF3F0;
  if (!qword_27F4FF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF3F0);
  }

  return result;
}

uint64_t sub_252817060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoomEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2528170C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25281710C()
{
  result = qword_27F4FF408;
  if (!qword_27F4FF408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD690, &unk_2528D2D30);
    sub_2528170C4(&qword_27F4FCD70, type metadata accessor for RoomEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF408);
  }

  return result;
}

unint64_t sub_2528171C0()
{
  result = qword_27F4FF410;
  if (!qword_27F4FF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF410);
  }

  return result;
}

unint64_t sub_252817214()
{
  result = qword_27F4FF420;
  if (!qword_27F4FF420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF420);
  }

  return result;
}

unint64_t sub_252817268()
{
  result = qword_27F4FF428;
  if (!qword_27F4FF428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF428);
  }

  return result;
}

uint64_t sub_2528172D4()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F4FF430);
  __swift_project_value_buffer(v0, qword_27F4FF430);
  return sub_2528BEC20();
}

uint64_t static ShowSceneResultIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FF430);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ShowSceneResultIntent.sceneID.getter()
{
  v1 = *v0;
  sub_2528BE790();
  return v3;
}

uint64_t sub_252817424(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *a1;
  v6 = a1[1];

  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

void (*ShowSceneResultIntent.sceneID.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2528BE780();
  return sub_2528172C8;
}

uint64_t ShowSceneResultIntent.hasSiriExecutionFailure.getter()
{
  v1 = *(v0 + 8);
  sub_2528BE790();
  return v3;
}

uint64_t sub_252817580(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = *a1;
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BE7A0();
}

uint64_t (*ShowSceneResultIntent.hasSiriExecutionFailure.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2528BE780();
  return sub_25272EE48;
}

uint64_t ShowSceneResultIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF448, &unk_2528D33F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v40 = v33 - v3;
  v41 = sub_2528BE950();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v36 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD9B8, &unk_2528D3400);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v33 - v17;
  v19 = sub_2528BEC40();
  v38 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF450, &qword_2528D3410);
  sub_2528BEC20();
  v37 = *(v20 + 56);
  v37(v18, 1, 1, v19);
  v22 = sub_2528C0940();
  v42 = 0;
  v43 = 0;
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_2528BE630();
  v24 = *(v23 - 8);
  v34 = *(v24 + 56);
  v35 = v24 + 56;
  v34(v10, 1, 1, v23);
  v25 = *MEMORY[0x277CBA308];
  v26 = *(v4 + 104);
  v33[0] = v4 + 104;
  v27 = v36;
  v26(v36, v25, v41);
  v28 = v27;
  v29 = sub_2528BE800();
  v30 = v39;
  *v39 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF458, &qword_2528D3418);
  sub_2528BEC20();
  v37(v18, 1, 1, v38);
  LOBYTE(v42) = 2;
  v31 = sub_2528C0BC0();
  (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  v34(v10, 1, 1, v23);
  v26(v28, v25, v41);
  v30[1] = sub_2528BE810();
  LOBYTE(v42) = 0;
  return sub_2528BE7A0();
}

uint64_t ShowSceneResultIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0) - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v6 = sub_2528BF400();
  *(v2 + 64) = v6;
  v7 = *(v6 - 8);
  *(v2 + 72) = v7;
  *(v2 + 80) = *(v7 + 64);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8);
  *(v2 + 120) = v10;
  *(v2 + 128) = *(v10 + 64);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  v11 = sub_2528BE8B0();
  *(v2 + 152) = v11;
  v12 = *(v11 - 8);
  *(v2 + 160) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = *v1;

  return MEMORY[0x2822009F8](sub_252817E2C, 0, 0);
}

uint64_t sub_252817E2C()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  *(v0 + 192) = __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_252711000, v2, v3, "Show Scene Result Intent perform() called", v4, 2u);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v17 = *(v0 + 176);

  *(v0 + 16) = v17;
  sub_2528188A8();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v6 + 8))(v5, v7);
  v11 = type metadata accessor for HomeEntity(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = sub_2528C05D0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = sub_252818088;
  v14 = *(v0 + 104);
  v15 = *(v0 + 112);

  return sub_25277ECE4(v15, 0, 0, v14);
}

uint64_t sub_252818088(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 208) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2528181E4, 0, 0);
}

uint64_t sub_2528181E4()
{
  v1 = v0[6];
  sub_2527D38F8(v0[26], v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  if (v3 == 1)
  {
    sub_2527213D8(v6, &qword_27F4FCDA8, &unk_2528C5CB0);
    (*(v5 + 56))(v7, 1, 1, v4);
  }

  else
  {
    v8 = *(v2 + 48);
    v9 = *(v5 + 16);
    v10 = v0[6];
    v9(v0[7], v6 + v8, v0[8]);
    sub_2527D6704(v10 + v8);
    (*(v5 + 56))(v7, 0, 1, v4);
    v11 = sub_2528BECF0();
    (*(*(v11 - 8) + 8))(v10, v11);
    if ((*(v5 + 48))(v7, 1, v4) != 1)
    {
      v24 = v0[18];
      v41 = v0[16];
      v38 = v0[15];
      v43 = v0[21];
      v44 = v0[14];
      v48 = v0[13];
      v26 = v0[11];
      v25 = v0[12];
      v27 = v0[9];
      v36 = v0[17];
      v37 = v0[10];
      v28 = v0[8];
      v46 = v0[7];
      v29 = v0[5];
      v42 = v0[4];
      v39 = v29;
      v40 = *(v27 + 32);
      v40(v25);
      v30 = sub_2528C0C40();
      (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
      v9(v26, v25, v28);
      sub_2527F8AAC(v24, v36);
      v31 = (*(v27 + 80) + 65) & ~*(v27 + 80);
      v32 = (v37 + *(v38 + 80) + v31) & ~*(v38 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      v34 = MEMORY[0x277D84F90];
      *(v33 + 32) = MEMORY[0x277D84F90];
      *(v33 + 40) = 1;
      *(v33 + 48) = v34;
      *(v33 + 56) = v34;
      *(v33 + 64) = 2;
      (v40)(v33 + v31, v26, v28);
      sub_2527D6760(v36, v33 + v32);
      sub_2527D3E74(0, 0, v39, &unk_2528CD990, v33);

      (*(v27 + 8))(v25, v28);
      sub_2527213D8(v24, &qword_27F4FCE00, &qword_2528C5D20);
      sub_2528BE670();

      v23 = v0[1];
      goto LABEL_8;
    }
  }

  v12 = v0[24];
  sub_2527213D8(v0[7], &qword_27F4FCD98, &qword_2528C6200);
  v13 = sub_2528C0890();
  v14 = sub_2528C0CF0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_252711000, v13, v14, "No snapshot found for current home", v15, 2u);
    MEMORY[0x2530A8D80](v15, -1, -1);
  }

  v16 = v0[21];
  v18 = v0[17];
  v17 = v0[18];
  v19 = v0[13];
  v20 = v0[14];
  v22 = v0[11];
  v21 = v0[12];
  v45 = v0[7];
  v47 = v0[6];
  v49 = v0[5];

  sub_2527D66B0();
  swift_allocError();
  swift_willThrow();
  sub_2527213D8(v17, &qword_27F4FCE00, &qword_2528C5D20);

  v23 = v0[1];
LABEL_8:

  return v23();
}

uint64_t sub_252818728@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F4FF430);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2528187D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25271F3AC;

  return ShowSceneResultIntent.perform()(a1);
}

uint64_t sub_25281886C(uint64_t a1)
{
  v2 = sub_2528188A8();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2528188A8()
{
  result = qword_27F4FF460;
  if (!qword_27F4FF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF460);
  }

  return result;
}

unint64_t sub_252818900()
{
  result = qword_27F4FF468;
  if (!qword_27F4FF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF468);
  }

  return result;
}

unint64_t sub_252818958()
{
  result = qword_27F4FF470;
  if (!qword_27F4FF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF470);
  }

  return result;
}

uint64_t sub_252818A28(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    sub_2528C1130();
    RobotVacuumCleanerRunState.rawValue.getter();
    sub_2528C0A40();

    v5 = sub_2528C1180();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = 0xE700000000000000;
        v10 = 0x646570706F7473;
        switch(*(*(a2 + 48) + v7))
        {
          case 1:
            v10 = 0x676E696E6E7572;
            break;
          case 2:
            v9 = 0xE600000000000000;
            v10 = 0x646573756170;
            break;
          case 3:
            v9 = 0xE500000000000000;
            v10 = 0x726F727265;
            break;
          case 4:
            v10 = 0x43676E696B656573;
            v9 = 0xEE00726567726168;
            break;
          case 5:
            v9 = 0xE800000000000000;
            v10 = 0x676E696772616863;
            break;
          case 6:
            v9 = 0xE600000000000000;
            v10 = 0x64656B636F64;
            break;
          case 7:
            v10 = 0x676E697974706D65;
            v9 = 0xEF6E694274737544;
            break;
          case 8:
            v10 = 0x676E696E61656C63;
            v9 = 0xEB00000000706F4DLL;
            break;
          case 9:
            v10 = 0xD000000000000010;
            v9 = 0x80000002528E4E10;
            break;
          case 0xA:
            v10 = 0x676E697461647075;
            v9 = 0xEC0000007370614DLL;
            break;
          case 0xB:
            v9 = 0xE500000000000000;
            v10 = 0x6B63757473;
            break;
          case 0xC:
            v10 = 0xD000000000000018;
            v9 = 0x80000002528E4E40;
            break;
          case 0xD:
            v10 = 0x4D6E694274737564;
            v9 = 0xEE00676E69737369;
            break;
          case 0xE:
            v10 = 0x466E694274737564;
            v9 = 0xEB000000006C6C75;
            break;
          case 0xF:
            v10 = 0xD000000000000010;
            v9 = 0x80000002528E4E80;
            break;
          case 0x10:
            v10 = 0x6E61547265746177;
            v9 = 0xEE007974706D456BLL;
            break;
          case 0x11:
            v10 = 0xD000000000000010;
            v9 = 0x80000002528E4EA0;
            break;
          case 0x12:
            v10 = 0xD000000000000015;
            v9 = 0x80000002528E4EC0;
            break;
          case 0x13:
            v10 = 0x6574746142776F6CLL;
            v9 = 0xEA00000000007972;
            break;
          case 0x14:
            v10 = 0xD000000000000015;
            v9 = 0x80000002528E4EE0;
            break;
          case 0x15:
            v10 = 0xD000000000000012;
            v9 = 0x80000002528E4F00;
            break;
          case 0x16:
            v10 = 0xD000000000000015;
            v9 = 0x80000002528E4F20;
            break;
          case 0x17:
            v10 = 0x614A736C65656877;
            v9 = 0xEC00000064656D6DLL;
            break;
          case 0x18:
            v10 = 0x6D614A6873757262;
            v9 = 0xEB0000000064656DLL;
            break;
          case 0x19:
            v10 = 0xD000000000000018;
            v9 = 0x80000002528E4F50;
            break;
          case 0x1A:
            v10 = 0x6E776F6E6B6E75;
            break;
          default:
            break;
        }

        v11 = 0xE700000000000000;
        v12 = 0x646570706F7473;
        switch(a1)
        {
          case 1:
            if (v10 == 0x676E696E6E7572)
            {
              goto LABEL_80;
            }

            goto LABEL_81;
          case 2:
            v11 = 0xE600000000000000;
            v17 = 1937072496;
            goto LABEL_65;
          case 3:
            v11 = 0xE500000000000000;
            if (v10 != 0x726F727265)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 4:
            v13 = 0x43676E696B656573;
            v14 = 0x726567726168;
            goto LABEL_62;
          case 5:
            v11 = 0xE800000000000000;
            if (v10 != 0x676E696772616863)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 6:
            v11 = 0xE600000000000000;
            v17 = 1801678692;
LABEL_65:
            if (v10 != (v17 & 0xFFFF0000FFFFFFFFLL | 0x646500000000))
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 7:
            v11 = 0xEF6E694274737544;
            if (v10 != 0x676E697974706D65)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 8:
            v15 = 0x676E696E61656C63;
            v16 = 7368525;
            goto LABEL_72;
          case 9:
            v11 = 0x80000002528E4E10;
            if (v10 != 0xD000000000000010)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 10:
            v11 = 0xEC0000007370614DLL;
            if (v10 != 0x676E697461647075)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 11:
            v11 = 0xE500000000000000;
            if (v10 != 0x6B63757473)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 12:
            v11 = 0x80000002528E4E40;
            if (v10 != 0xD000000000000018)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 13:
            v13 = 0x4D6E694274737564;
            v14 = 0x676E69737369;
            goto LABEL_62;
          case 14:
            v15 = 0x466E694274737564;
            v16 = 7105653;
            goto LABEL_72;
          case 15:
            v11 = 0x80000002528E4E80;
            if (v10 != 0xD000000000000010)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 16:
            v13 = 0x6E61547265746177;
            v14 = 0x7974706D456BLL;
LABEL_62:
            v11 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v10 != v13)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 17:
            v11 = 0x80000002528E4EA0;
            if (v10 != 0xD000000000000010)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 18:
            v11 = 0x80000002528E4EC0;
            if (v10 != 0xD000000000000015)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 19:
            v11 = 0xEA00000000007972;
            if (v10 != 0x6574746142776F6CLL)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 20:
            v11 = 0x80000002528E4EE0;
            if (v10 != 0xD000000000000015)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 21:
            v11 = 0x80000002528E4F00;
            if (v10 != 0xD000000000000012)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 22:
            v11 = 0x80000002528E4F20;
            if (v10 != 0xD000000000000015)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 23:
            v12 = 0x614A736C65656877;
            v11 = 0xEC00000064656D6DLL;
            goto LABEL_79;
          case 24:
            v15 = 0x6D614A6873757262;
            v16 = 6579565;
LABEL_72:
            v11 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v10 != v15)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 25:
            v11 = 0x80000002528E4F50;
            if (v10 != 0xD000000000000018)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 26:
            if (v10 != 0x6E776F6E6B6E75)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          default:
LABEL_79:
            if (v10 != v12)
            {
              goto LABEL_81;
            }

LABEL_80:
            if (v9 == v11)
            {

              v18 = 1;
              return v18 & 1;
            }

LABEL_81:
            v18 = sub_2528C1060();

            if (v18)
            {
              return v18 & 1;
            }

            v7 = (v7 + 1) & v8;
            if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
            {
              return v18 & 1;
            }

            break;
        }
      }
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_2528191A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2528C0570();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_25283C680(&qword_27F4FC6C8, MEMORY[0x277D16AB0]), v9 = sub_2528C0900(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_25283C680(&qword_27F4FC6D0, MEMORY[0x277D16AB0]);
      v17 = sub_2528C0930();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_2528193BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2528BFDE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_25283C680(&qword_27F4FC798, MEMORY[0x277D16348]), v9 = sub_2528C0900(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_25283C680(&qword_27F4FC7A0, MEMORY[0x277D16348]);
      v17 = sub_2528C0930();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_2528195D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2528BFD70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_25283C680(&qword_27F4FF688, MEMORY[0x277D16028]), v9 = sub_2528C0900(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_25283C680(&qword_27F4FF690, MEMORY[0x277D16028]);
      v17 = sub_2528C0930();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

BOOL sub_2528197EC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_2528C1130();
  MEMORY[0x2530A87A0](a1);
  v5 = sub_2528C1180();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_2528198B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2528BECF0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_25283C680(&qword_27F4FBD88, MEMORY[0x277CC95F0]), v9 = sub_2528C0900(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_25283C680(&qword_27F4FC680, MEMORY[0x277CC95F0]);
      v17 = sub_2528C0930();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_252819AD0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v40 = a3;
  v39 = a2(0);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = v32 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v32[1] = v3;
    v45 = MEMORY[0x277D84F90];
    sub_25282EFBC(0, v8, 0);
    v10 = -1 << *(a1 + 32);
    v43 = a1 + 56;
    v44 = v45;
    result = sub_2528C0E00();
    v11 = result;
    v12 = 0;
    v36 = v5 + 8;
    v37 = v5 + 16;
    v33 = a1 + 64;
    v34 = v8;
    v35 = v5;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v43 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v41 = *(a1 + 36);
      v16 = v38;
      v17 = v39;
      v18 = (*(v5 + 16))(v38, *(a1 + 48) + *(v5 + 72) * v11, v39);
      v42 = v40(v18);
      v20 = v19;
      result = (*(v5 + 8))(v16, v17);
      v21 = v44;
      v45 = v44;
      v23 = *(v44 + 16);
      v22 = *(v44 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_25282EFBC((v22 > 1), v23 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v42;
      *(v24 + 40) = v20;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v25 = *(v43 + 8 * v15);
      if ((v25 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v44 = v21;
      if (v41 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v11 & 0x3F));
      if (v26)
      {
        v13 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v34;
        v5 = v35;
      }

      else
      {
        v27 = v15 << 6;
        v28 = v15 + 1;
        v14 = v34;
        v29 = (v33 + 8 * v15);
        v5 = v35;
        while (v28 < (v13 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_25271A63C(v11, v41, 0);
            v13 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_25271A63C(v11, v41, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v44;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_252819DE0()
{
  v1 = *v0;
  sub_2528BE6B0();
  return v3;
}

uint64_t DeviceEntity.debugDescription.getter()
{
  v1 = v0;
  sub_2528C0E70();

  v2 = v0[3];
  sub_2528BE6B0();
  MEMORY[0x2530A80B0]();

  MEMORY[0x2530A80B0](47, 0xE100000000000000);
  v3 = v1[5];
  sub_2528BE6B0();
  MEMORY[0x2530A80B0]();

  MEMORY[0x2530A80B0](47, 0xE100000000000000);
  v4 = *v1;
  sub_2528BE6B0();
  MEMORY[0x2530A80B0]();

  MEMORY[0x2530A80B0](10272, 0xE200000000000000);
  v5 = v1[1];
  sub_2528BE6B0();
  MEMORY[0x2530A80B0]();

  MEMORY[0x2530A80B0](2108457, 0xE300000000000000);
  v6 = v1[2];
  sub_2528BE6B0();
  v7 = DeviceType.description.getter();
  MEMORY[0x2530A80B0](v7);

  MEMORY[0x2530A80B0](125, 0xE100000000000000);
  return 123;
}

uint64_t sub_252819FA8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = *(v1 + 8);
  sub_2528BE6B0();
  sub_2528BECA0();

  v8 = sub_2528BECF0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_2527213D8(v6, &qword_27F4FC628, &qword_2528C4750);
  v11[2] = 0;
  v11[3] = 0xE000000000000000;
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
  type metadata accessor for DeviceEntity();
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
  sub_2528BE6B0();
  MEMORY[0x2530A80B0](v11[0], v11[1]);

  MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
  result = sub_2528C0EE0();
  __break(1u);
  return result;
}

uint64_t sub_25281A1D8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_252739514(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
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

uint64_t sub_25281A2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528BFCF0();
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
      sub_25273AF34(v12, v9);
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

uint64_t sub_25281A4D4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_25281A580(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x2530A84E0](v5, a3);
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
      v13 = sub_2528C0EF0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_25281A6A8(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_2528BF9D0();
  v6 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 56) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v3)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if (v20)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25281A8C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v92 = &v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v91 = &v75 - v11;
  v98 = sub_2528C00D0();
  v84 = *(v98 - 8);
  v12 = *(v84 + 64);
  v13 = MEMORY[0x28223BE20](v98);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = &v75 - v16;
  v17 = sub_2528BECF0();
  v89 = *(v17 - 8);
  v18 = *(v89 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v90 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v99 = &v75 - v22;
  MEMORY[0x28223BE20](v21);
  v81 = &v75 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6A8, &unk_2528D3CE8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v94 = &v75 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v75 - v32;
  if (*(a1 + 16) && (v34 = *(type metadata accessor for DeviceEntity() + 48), v35 = sub_252785C40(v2 + v34), (v36 & 1) != 0))
  {
    v37 = v84;
    v38 = *(a1 + 56) + *(v84 + 72) * v35;
    v39 = v98;
    (*(v84 + 16))(v33, v38, v98);
    (*(v37 + 56))(v33, 0, 1, v39);
    sub_2527213D8(v33, &qword_27F4FCDB8, &unk_2528C5CC0);
    v40 = v89;
    (*(v89 + 16))(a2, v3 + v34, v17);
    return (*(v40 + 56))(a2, 0, 1, v17);
  }

  else
  {
    v75 = a2;
    v88 = v2;
    v42 = (v84 + 56);
    (*(v84 + 56))(v33, 1, 1, v98);
    sub_2527213D8(v33, &qword_27F4FCDB8, &unk_2528C5CC0);
    v43 = *(a1 + 64);
    v77 = a1 + 64;
    v44 = 1 << *(a1 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & v43;
    v76 = (v44 + 63) >> 6;
    v79 = v89 + 16;
    v78 = v42 - 40;
    v47 = (v89 + 32);
    v96 = (v42 - 24);
    v86 = (v89 + 8);
    v87 = (v89 + 48);
    v85 = (v42 - 48);
    v83 = a1;

    v48 = 0;
    v80 = v15;
    v93 = v17;
    v95 = v28;
    v97 = v47;
    if (v46)
    {
      while (1)
      {
        v49 = v17;
        v50 = v48;
LABEL_16:
        v53 = __clz(__rbit64(v46));
        v46 &= v46 - 1;
        v54 = v53 | (v50 << 6);
        v55 = v83;
        v56 = v89;
        (*(v89 + 16))(v81, *(v83 + 48) + *(v89 + 72) * v54, v49);
        v57 = v84;
        v58 = v82;
        v59 = v98;
        (*(v84 + 16))(v82, *(v55 + 56) + *(v84 + 72) * v54, v98);
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
        v61 = *(v60 + 48);
        v28 = v95;
        v47 = v97;
        (*(v56 + 32))();
        (*(v57 + 32))(&v28[v61], v58, v59);
        (*(*(v60 - 8) + 56))(v28, 0, 1, v60);
        v52 = v50;
        v15 = v80;
LABEL_17:
        v62 = v94;
        sub_25274AA0C(v28, v94, &qword_27F4FF6A8, &unk_2528D3CE8);
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
        if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
        {

          return (*(v89 + 56))(v75, 1, 1, v93);
        }

        v64 = v52;
        v65 = *(v63 + 48);
        v66 = *v47;
        v67 = v93;
        (*v47)(v99, v62, v93);
        v68 = v98;
        (*v96)(v15, v62 + v65, v98);
        v69 = *(v88 + 8);
        sub_2528BE6B0();
        v42 = v92;
        sub_2528BECA0();

        if ((*v87)(v42, 1, v67) == 1)
        {
          goto LABEL_26;
        }

        v70 = v90;
        v66(v90, v42, v67);
        v71 = v91;
        sub_2528C0080();
        v42 = *v86;
        (*v86)(v70, v67);
        (*v85)(v15, v68);
        v72 = sub_2528BFB20();
        if ((*(*(v72 - 8) + 48))(v71, 1, v72) != 1)
        {
          break;
        }

        (v42)(v99, v67);
        sub_2527213D8(v71, &qword_27F4FCEF0, &unk_2528C6AB0);
        v48 = v64;
        v47 = v97;
        v28 = v95;
        v17 = v67;
        if (!v46)
        {
          goto LABEL_8;
        }
      }

      sub_2527213D8(v71, &qword_27F4FCEF0, &unk_2528C6AB0);
      v74 = v75;
      v66(v75, v99, v67);
      return (*(v89 + 56))(v74, 0, 1, v67);
    }

    else
    {
LABEL_8:
      if (v76 <= v48 + 1)
      {
        v51 = v48 + 1;
      }

      else
      {
        v51 = v76;
      }

      v52 = v51 - 1;
      while (1)
      {
        v50 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v50 >= v76)
        {
          v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
          (*(*(v73 - 8) + 56))(v28, 1, 1, v73);
          v46 = 0;
          goto LABEL_17;
        }

        v46 = *(v77 + 8 * v50);
        ++v48;
        if (v46)
        {
          v49 = v17;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_26:
      sub_2527213D8(v42, &qword_27F4FC628, &qword_2528C4750);
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_2528C0E70();
      MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
      type metadata accessor for DeviceEntity();
      sub_2528C0ED0();
      MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
      sub_2528BE6B0();
      MEMORY[0x2530A80B0](v100, v101);

      MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
      result = sub_2528C0EE0();
      __break(1u);
    }
  }

  return result;
}

uint64_t DeviceEntity.init(staticService:snapshot:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v252 = a1;
  v236 = a3;
  v251 = sub_2528BF9D0();
  v248 = *(v251 - 8);
  v4 = v248[8];
  v5 = MEMORY[0x28223BE20](v251);
  v247 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v244 = (&v206 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v232 = &v206 - v10;
  MEMORY[0x28223BE20](v9);
  v231 = &v206 - v11;
  v214 = sub_2528BF070();
  v217 = *(v214 - 8);
  v12 = *(v217 + 64);
  MEMORY[0x28223BE20](v214);
  v213 = &v206 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_2528BF030();
  v211 = *(v212 - 8);
  v14 = *(v211 + 64);
  v15 = MEMORY[0x28223BE20](v212);
  v209 = &v206 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v208 = &v206 - v17;
  v223 = sub_2528BEE30();
  v221 = *(v223 - 8);
  v18 = *(v221 + 64);
  MEMORY[0x28223BE20](v223);
  v220 = &v206 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v228 = &v206 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF4F0, &qword_2528D3578);
  v215 = *(v23 - 8);
  v24 = *(v215 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v243 = &v206 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v229 = &v206 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF4F8, &qword_2528D3580);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v216 = &v206 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD660, &qword_2528D4D00);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v222 = &v206 - v33;
  v225 = sub_2528BF240();
  v224 = *(v225 - 8);
  v34 = *(v224 + 64);
  MEMORY[0x28223BE20](v225);
  v230 = &v206 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2528BECF0();
  isa = v36[-1].isa;
  v250 = v36;
  v37 = *(isa + 8);
  v38 = MEMORY[0x28223BE20](v36);
  v219 = &v206 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v227 = &v206 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v206 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v206 - v45;
  v226 = sub_2528BFC70();
  v47 = *(v226 - 1);
  v48 = *(v47 + 8);
  MEMORY[0x28223BE20](v226);
  v50 = &v206 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2528BEC40();
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v242 = type metadata accessor for DeviceEntity();
  v235 = *(v242 - 8);
  v53 = *(v235 + 64);
  MEMORY[0x28223BE20](v242);
  v55 = (&v206 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v241 = sub_2528BE730();
  *v55 = v241;
  sub_2528BEC20();
  v240 = sub_2528BE730();
  v55[1] = v240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  v238 = sub_2528BE700();
  v55[2] = v238;
  sub_2528BEC20();
  v239 = sub_2528BE730();
  v55[3] = v239;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  v233 = sub_2528BE730();
  v55[4] = v233;
  sub_2528BEC20();
  v234 = sub_2528BE730();
  v55[5] = v234;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v56 = a2;
  v237 = sub_2528BE730();
  v55[6] = v237;
  v57 = sub_2528BF390();
  v58 = v252;
  sub_2528BF4C0();
  v59 = *(v57 + 16);
  v246 = v56;
  if (!v59 || (v60 = sub_252785C40(v46), (v61 & 1) == 0))
  {

    v44 = *(isa + 1);
    (v44)(v46, v250);
    goto LABEL_6;
  }

  v210 = v23;
  v62 = *(v57 + 56) + *(v47 + 9) * v60;
  v63 = v50;
  v64 = v50;
  v65 = v226;
  (*(v47 + 2))(v63, v62, v226);
  v66 = isa;
  v245 = *(isa + 1);
  v218 = isa + 8;
  v245(v46, v250);

  v67 = v230;
  sub_2528BF460();
  sub_2527FF5AC(v67, &v253);
  if (v253 == 33)
  {
    (*(v47 + 1))(v64, v65);
    v44 = v245;
LABEL_6:
    v68 = v251;
    v55 = v248;
    v57 = v244;
    if (qword_27F4FBB40 != -1)
    {
LABEL_54:
      swift_once();
    }

    v69 = sub_2528C08B0();
    __swift_project_value_buffer(v69, qword_27F5025C8);
    v70 = v55[2];
    v71 = v231;
    v70(v231, v58, v68);
    v72 = v232;
    v70(v232, v58, v68);
    v70(v57, v58, v68);
    v70(v247, v58, v68);
    v73 = sub_2528C0890();
    v74 = sub_2528C0CE0();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v253 = v243;
      *v75 = 136315906;
      sub_25283C680(&qword_27F4FF518, MEMORY[0x277D15AC0]);
      LODWORD(v229) = v74;
      v76 = sub_2528C1040();
      v78 = v77;
      v245 = v44;
      v80 = v55[1];
      v79 = (v55 + 1);
      v228 = (v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v80(v71, v68);
      v226 = v80;
      v81 = sub_2527389AC(v76, v78, &v253);

      *(v75 + 4) = v81;
      *(v75 + 12) = 2080;
      v82 = v227;
      sub_2528BF4C0();
      sub_25283C680(&qword_27F4FD070, MEMORY[0x277CC95F0]);
      v83 = v250;
      v84 = sub_2528C1040();
      v86 = v85;
      v245(v82, v83);
      v80(v72, v68);
      v87 = sub_2527389AC(v84, v86, &v253);

      v88 = v75;
      *(v75 + 14) = v87;
      *(v75 + 22) = 2080;
      v250 = v73;
      v89 = v230;
      v90 = v244;
      sub_2528BF460();
      sub_25283C680(&qword_27F4FF520, MEMORY[0x277D158E0]);
      v91 = v225;
      v92 = sub_2528C1040();
      v94 = v93;
      v248 = v79;
      v95 = *(v224 + 8);
      v95(v89, v91);
      v96 = v90;
      v97 = v226;
      (v226)(v96, v251);
      v98 = sub_2527389AC(v92, v94, &v253);

      *(v88 + 24) = v98;
      *(v88 + 32) = 2080;
      v99 = v88;
      v100 = v247;
      sub_2528BF460();
      v101 = sub_2528C1040();
      v103 = v102;
      v95(v89, v91);
      v68 = v251;
      v97(v100, v251);
      v104 = v242;
      v105 = sub_2527389AC(v101, v103, &v253);

      *(v99 + 34) = v105;
      v106 = v250;
      _os_log_impl(&dword_252711000, v250, v229, "Unable to create DeviceEntity for %s with accessoryID: %s serviceKind: %s primaryServiceKind: %s", v99, 0x2Au);
      v107 = v243;
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v107, -1, -1);
      MEMORY[0x2530A8D80](v99, -1, -1);

      v108 = sub_2528BF400();
      (*(*(v108 - 8) + 8))(v246, v108);
    }

    else
    {

      v109 = sub_2528BF400();
      (*(*(v109 - 8) + 8))(v246, v109);
      v97 = v55[1];
      v97(v247, v68);
      v97(v57, v68);
      v97(v72, v68);
      v97(v71, v68);
      v104 = v242;
    }

    v97(v252, v68);

    return (*(v235 + 56))(v236, 1, 1, v104);
  }

  LODWORD(v231) = v253;
  v207 = v64;
  v230 = v47;
  v111 = sub_2528BF3B0();
  v112 = v111 + 64;
  v113 = 1 << *(v111 + 32);
  v114 = -1;
  if (v113 < 64)
  {
    v114 = ~(-1 << v113);
  }

  v115 = v114 & *(v111 + 64);
  v58 = (v113 + 63) >> 6;
  v232 = v66 + 16;
  v244 = (v248 + 7);
  v247 = v111;

  v116 = 0;
  v117 = &qword_27F4FF4F0;
  v68 = v250;
  while (1)
  {
    if (!v115)
    {
      v121 = isa;
      while (1)
      {
        v122 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          break;
        }

        if (v122 >= v58)
        {

          v143 = v215;
          v142 = v216;
          v144 = v210;
          (*(v215 + 56))(v216, 1, 1, v210);
          v141 = v245;
          goto LABEL_26;
        }

        v115 = *(v112 + 8 * v122);
        ++v116;
        if (v115)
        {
          v119 = v68;
          v57 = v44;
          v120 = v117;
          v116 = v122;
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_53;
    }

    v119 = v68;
    v57 = v44;
    v120 = v117;
    v121 = isa;
LABEL_22:
    v123 = __clz(__rbit64(v115)) | (v116 << 6);
    v124 = v247;
    v125 = v229;
    (*(v121 + 2))(v229, *(v247 + 6) + *(v121 + 9) * v123, v119);
    v126 = *(v124 + 7);
    v127 = sub_2528C0020();
    v128 = *(v127 - 8);
    v129 = v126 + *(v128 + 72) * v123;
    v130 = v210;
    (*(v128 + 16))(&v125[*(v210 + 48)], v129, v127);
    v131 = v125;
    v132 = v243;
    v117 = v120;
    sub_25274AA0C(v131, v243, v120, &qword_2528D3578);
    v133 = v132 + *(v130 + 48);
    v134 = sub_2528BFFE0();
    v44 = v57;
    sub_2528BF900();
    if (*(v134 + 16))
    {
      v135 = sub_252785C40(v57);
      if (v136)
      {
        break;
      }
    }

    v115 &= v115 - 1;

    v68 = v250;
    v245(v57, v250);
    v118 = v228;
    (*v244)(v228, 1, 1, v251);
    sub_2527213D8(v118, &qword_27F4FD670, &qword_2528D3570);
    sub_2527213D8(v243, v117, &qword_2528D3578);
  }

  v137 = v248 + 2;
  v138 = v228;
  v139 = v251;
  (v248[2])(v228, *(v134 + 56) + v248[9] * v135, v251);
  v140 = v250;
  v141 = v245;
  v245(v57, v250);
  v68 = v140;

  (v137[5])(v138, 0, 1, v139);
  sub_2527213D8(v138, &qword_27F4FD670, &qword_2528D3570);

  v142 = v216;
  sub_25274AA0C(v243, v216, &qword_27F4FF4F0, &qword_2528D3578);
  v143 = v215;
  v144 = v210;
  (*(v215 + 56))(v142, 0, 1, v210);
LABEL_26:

  v145 = (*(v143 + 48))(v142, 1, v144);
  v146 = v252;
  v147 = v242;
  if (v145 == 1)
  {
    sub_2527213D8(v142, &qword_27F4FF4F8, &qword_2528D3580);
    v148 = sub_2528C0020();
    v149 = v222;
    (*(*(v148 - 8) + 56))(v222, 1, 1, v148);
  }

  else
  {
    v150 = *(v144 + 48);
    v151 = sub_2528C0020();
    v152 = *(v151 - 8);
    v149 = v222;
    (*(v152 + 32))(v222, v142 + v150, v151);
    (*(v152 + 56))(v149, 0, 1, v151);
    v141(v142, v68);
  }

  v153 = v207;
  *(v55 + *(v147 + 52)) = sub_25281F3E0(v149);
  v55[7] = sub_25281F600(v149, v146, v153);
  v154 = v147;
  v155 = v220;
  sub_2528BF2F0();
  v156 = v55 + *(v154 + 48);
  sub_2528BEE00();
  v157 = v221 + 8;
  isa = *(v221 + 8);
  (isa)(v155, v223);
  v158 = v227;
  sub_2528BF4C0();
  v159 = sub_2528BECB0();
  v161 = v160;
  v162 = v245;
  v245(v158, v68);
  v253 = v159;
  v254 = v161;
  sub_2528BE6C0();
  sub_2528BF900();
  v163 = sub_2528BECB0();
  v165 = v164;
  v162(v158, v68);
  v253 = v163;
  v254 = v165;
  sub_2528BE6C0();
  sub_25281F8E4(v146, v207, v231, &v253);
  sub_2528BE6C0();
  v253 = sub_2528BF950();
  v254 = v166;
  sub_2528BE6C0();
  sub_2528BF2F0();
  v167 = sub_2528BEE20();
  v169 = v168;
  v170 = v155;
  v171 = v157;
  (isa)(v170, v223);
  v253 = v167;
  v254 = v169;
  sub_2528BE6C0();
  v172 = sub_2528BF320();
  v173 = v219;
  sub_2528BF980();
  if (*(v172 + 16) && (v174 = sub_252785C40(v173), (v175 & 1) != 0))
  {
    v57 = v211;
    v176 = v208;
    v177 = v212;
    (*(v211 + 16))(v208, *(v172 + 56) + *(v211 + 72) * v174, v212);

    v178 = sub_2528BEFD0();
    (*(v57 + 8))(v176, v177);
    if (v178)
    {
      v221 = v171;
      v179 = v178 + 56;
      v180 = 1 << *(v178 + 32);
      v181 = -1;
      if (v180 < 64)
      {
        v181 = ~(-1 << v180);
      }

      v44 = v181 & *(v178 + 56);
      v68 = ((v180 + 63) >> 6);
      v243 = v217 + 16;
      v241 = v217 + 8;

      v58 = 0;
      v182 = MEMORY[0x277D84F90];
      v244 = v178;
      if (v44)
      {
        goto LABEL_39;
      }

      while (1)
      {
        v183 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v183 >= v68)
        {
          v245(v219, v250);

          v146 = v252;
          v193 = v242;
          goto LABEL_47;
        }

        v44 = *(v179 + 8 * v183);
        ++v58;
        if (v44)
        {
          v58 = v183;
          do
          {
LABEL_39:
            v184 = v217;
            v185 = *(v178 + 48) + *(v217 + 72) * (__clz(__rbit64(v44)) | (v58 << 6));
            v186 = v213;
            v187 = v214;
            (*(v217 + 16))(v213, v185, v214);
            v247 = sub_2528BF050();
            v189 = v188;
            (*(v184 + 8))(v186, v187);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v182 = sub_252737D40(0, *(v182 + 2) + 1, 1, v182);
            }

            v191 = *(v182 + 2);
            v190 = *(v182 + 3);
            v57 = v191 + 1;
            if (v191 >= v190 >> 1)
            {
              v182 = sub_252737D40((v190 > 1), v191 + 1, 1, v182);
            }

            v44 &= v44 - 1;
            *(v182 + 2) = v57;
            v192 = &v182[16 * v191];
            *(v192 + 4) = v247;
            *(v192 + 5) = v189;
            v178 = v244;
          }

          while (v44);
        }
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
  }

  v245(v173, v68);
  v182 = MEMORY[0x277D84F90];
  v193 = v242;
LABEL_47:
  v194 = sub_252743FCC(v182);

  v253 = v194;
  sub_2528BE6C0();
  v195 = sub_2528BF9A0();
  v197 = v226;
  if (v196)
  {
    v198 = v246;
  }

  else
  {
    v199 = v220;
    v198 = v246;
    sub_2528BF2F0();
    v200 = v209;
    sub_2528BEDE0();
    (isa)(v199, v223);
    v201 = sub_2528BF020();
    v203 = v202;
    (*(v211 + 8))(v200, v212);
    v196 = v203;
    v195 = v201;
  }

  v253 = v195;
  v254 = v196;
  sub_2528BE6C0();
  v204 = sub_2528BF400();
  (*(*(v204 - 8) + 8))(v198, v204);
  sub_2527213D8(v222, &qword_27F4FD660, &qword_2528D4D00);
  (*(v230 + 1))(v207, v197);
  v205 = v236;
  sub_25283B8C4(v55, v236, type metadata accessor for DeviceEntity);
  (*(v235 + 56))(v205, 0, 1, v193);
  (v248[1])(v146, v251);
  return sub_25283B92C(v55, type metadata accessor for DeviceEntity);
}

uint64_t DeviceEntity.init(staticEndpoint:staticMatterDevice:snapshot:)@<X0>(void (*a1)(char *, void *)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v217 = a2;
  v209 = a4;
  v214 = sub_2528BFF00();
  v216 = *(v214 - 8);
  v6 = *(v216 + 64);
  MEMORY[0x28223BE20](v214);
  v182 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_2528BFB20();
  v207 = *(v208 - 8);
  v8 = *(v207 + 64);
  v9 = MEMORY[0x28223BE20](v208);
  v219 = (&v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v202 = &v175 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v201 = &v175 - v14;
  MEMORY[0x28223BE20](v13);
  v186 = &v175 - v15;
  v188 = sub_2528BF070();
  v191 = *(v188 - 8);
  v16 = v191[8];
  MEMORY[0x28223BE20](v188);
  v187 = &v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2528BF290();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v178 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_2528BFA70();
  v177 = *(v179 - 8);
  v21 = *(v177 + 64);
  MEMORY[0x28223BE20](v179);
  v176 = &v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_2528BEE30();
  v181 = *(v185 - 8);
  v23 = *(v181 + 64);
  MEMORY[0x28223BE20](v185);
  v180 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD658, &qword_2528D35A0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v184 = &v175 - v27;
  v190 = sub_2528BFC70();
  v189 = *(v190 - 8);
  v28 = *(v189 + 64);
  MEMORY[0x28223BE20](v190);
  v183 = &v175 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC650, &qword_2528C4768);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v175 - v32;
  v203 = sub_2528BFCF0();
  v195 = *(v203 - 8);
  v34 = *(v195 + 64);
  v35 = MEMORY[0x28223BE20](v203);
  v37 = &v175 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v192 = &v175 - v38;
  v220 = sub_2528BECF0();
  v39 = *(v220 - 1);
  v193 = v39;
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v220);
  v199 = &v175 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v175 - v43;
  v194 = sub_2528BF030();
  v196 = *(v194 - 8);
  v45 = *(v196 + 64);
  MEMORY[0x28223BE20](v194);
  v200 = &v175 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2528BEC40();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v215 = type metadata accessor for DeviceEntity();
  v206 = *(v215 - 8);
  v49 = *(v206 + 64);
  MEMORY[0x28223BE20](v215);
  v51 = (&v175 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v213 = sub_2528BE730();
  *v51 = v213;
  sub_2528BEC20();
  v212 = sub_2528BE730();
  v51[1] = v212;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  v210 = sub_2528BE700();
  v51[2] = v210;
  sub_2528BEC20();
  v211 = sub_2528BE730();
  v51[3] = v211;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  v204 = sub_2528BE730();
  v51[4] = v204;
  sub_2528BEC20();
  v205 = sub_2528BE730();
  v51[5] = v205;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v52 = sub_2528BE730();
  v51[6] = v52;
  v218 = a3;
  v53 = sub_2528BF320();
  v221 = a1;
  sub_2528BFB00();
  if (!*(v53 + 16) || (v54 = sub_252785C40(v44), (v55 & 1) == 0))
  {

    v198 = *(v39 + 8);
    v198(v44, v220);
LABEL_7:
    v61 = v221;
    v62 = v208;
    v63 = v207;
    v51 = v219;
    v64 = v202;
    v65 = v201;
    if (qword_27F4FBB40 == -1)
    {
LABEL_8:
      v66 = sub_2528C08B0();
      __swift_project_value_buffer(v66, qword_27F5025C8);
      v67 = *(v63 + 16);
      v67(v65, v61, v62);
      v67(v64, v61, v62);
      v67(v51, v61, v62);
      v68 = sub_2528C0890();
      v69 = sub_2528C0CF0();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v222 = v200;
        *v70 = 136315650;
        sub_25283C680(&qword_27F4FF528, MEMORY[0x277D15C30]);
        v71 = sub_2528C1040();
        LODWORD(v196) = v69;
        v72 = v71;
        v74 = v73;
        v75 = *(v63 + 8);
        v75(v65, v62);
        v76 = sub_2527389AC(v72, v74, &v222);

        *(v70 + 4) = v76;
        v197 = v52;
        *(v70 + 12) = 2080;
        v77 = v199;
        sub_2528BFB00();
        sub_25283C680(&qword_27F4FD070, MEMORY[0x277CC95F0]);
        v78 = v220;
        v79 = sub_2528C1040();
        v81 = v80;
        v198(v77, v78);
        v75(v64, v62);
        v82 = sub_2527389AC(v79, v81, &v222);

        *(v70 + 14) = v82;
        *(v70 + 22) = 2080;
        v83 = v219;
        sub_2528BFA90();
        sub_25283C680(&qword_27F4FC638, MEMORY[0x277D15F48]);
        v84 = sub_2528C0C80();
        v86 = v85;

        v75(v83, v62);
        v87 = sub_2527389AC(v84, v86, &v222);

        *(v70 + 24) = v87;
        _os_log_impl(&dword_252711000, v68, v196, "Unable to create DeviceEntity for %s with roomID: %s deviceTypes: %s", v70, 0x20u);
        v88 = v200;
        swift_arrayDestroy();
        MEMORY[0x2530A8D80](v88, -1, -1);
        MEMORY[0x2530A8D80](v70, -1, -1);

        v89 = sub_2528BF400();
        (*(*(v89 - 8) + 8))(v218, v89);
        (*(v216 + 8))(v217, v214);
        v75(v221, v62);
      }

      else
      {

        v90 = sub_2528BF400();
        (*(*(v90 - 8) + 8))(v218, v90);
        (*(v216 + 8))(v217, v214);
        v91 = *(v63 + 8);
        v91(v61, v62);
        v91(v51, v62);
        v91(v64, v62);
        v91(v65, v62);
      }

      v92 = v209;
      v93 = v206;
LABEL_12:

      return (*(v93 + 56))(v92, 1, 1, v215);
    }

LABEL_54:
    swift_once();
    goto LABEL_8;
  }

  v197 = v52;
  v56 = v196;
  v57 = v200;
  v58 = v194;
  (*(v196 + 16))(v200, *(v53 + 56) + *(v196 + 72) * v54, v194);
  v198 = *(v39 + 8);
  v198(v44, v220);

  sub_2528BFAD0();
  v59 = v195;
  v60 = v203;
  if ((*(v195 + 48))(v33, 1, v203) == 1)
  {
    (*(v56 + 8))(v57, v58);
    sub_2527213D8(v33, &qword_27F4FC650, &qword_2528C4768);
LABEL_5:
    v52 = v197;
    goto LABEL_7;
  }

  v95 = v192;
  (*(v59 + 32))(v192, v33, v60);
  (*(v59 + 16))(v37, v95, v60);
  v96 = (*(v59 + 88))(v37, v60);
  v97 = 15;
  v98 = v217;
  if (v96 == *MEMORY[0x277D15ED0])
  {
    v99 = v216;
    v100 = v186;
  }

  else
  {
    v99 = v216;
    v100 = v186;
    if (v96 != *MEMORY[0x277D15F00] && v96 != *MEMORY[0x277D15F28] && v96 != *MEMORY[0x277D15F18])
    {
      v97 = 26;
      if (v96 != *MEMORY[0x277D15F08] && v96 != *MEMORY[0x277D15F10])
      {
        v97 = 20;
        if (v96 != *MEMORY[0x277D15F38] && v96 != *MEMORY[0x277D15EF0])
        {
          v97 = 29;
          if (v96 != *MEMORY[0x277D15F20] && v96 != *MEMORY[0x277D15ED8])
          {
            if (v96 == *MEMORY[0x277D15F30])
            {
              v97 = 17;
            }

            else
            {
              if (v96 != *MEMORY[0x277D15EE0])
              {
                v173 = *(v59 + 8);
                v174 = v203;
                v173(v192, v203);
                (*(v196 + 8))(v200, v58);
                v173(v37, v174);
                goto LABEL_5;
              }

              v97 = 21;
            }
          }
        }
      }
    }
  }

  LODWORD(v219) = v97;
  v101 = sub_2528BFED0();
  v102 = v184;
  StateSnapshot.staticAccessory(withNodeID:)(v101, v184);
  v103 = v189;
  v104 = v190;
  if ((*(v189 + 48))(v102, 1, v190) == 1)
  {
    sub_2527213D8(v102, &qword_27F4FD658, &qword_2528D35A0);
    v105 = v221;
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v106 = sub_2528C08B0();
    __swift_project_value_buffer(v106, qword_27F5025C8);
    v107 = v207;
    v108 = v100;
    v109 = v100;
    v110 = v208;
    (*(v207 + 16))(v108, v105, v208);
    v111 = v182;
    v112 = v214;
    (*(v99 + 16))(v182, v98, v214);
    v113 = sub_2528C0890();
    v114 = sub_2528C0CF0();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v222 = v116;
      *v115 = 136315394;
      sub_25283C680(&qword_27F4FF528, MEMORY[0x277D15C30]);
      v117 = sub_2528C1040();
      v119 = v118;
      v220 = *(v107 + 8);
      (v220)(v109, v110);
      v120 = sub_2527389AC(v117, v119, &v222);

      *(v115 + 4) = v120;
      *(v115 + 12) = 2048;
      v121 = v182;
      v122 = sub_2528BFED0();
      v123 = *(v216 + 8);
      v124 = v121;
      v125 = v214;
      v123(v124, v214);
      *(v115 + 14) = v122;
      _os_log_impl(&dword_252711000, v113, v114, "Unable to create DeviceEntity for %s because couldn't find a staticAccessory for nodeID %llu", v115, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v116);
      MEMORY[0x2530A8D80](v116, -1, -1);
      MEMORY[0x2530A8D80](v115, -1, -1);

      v126 = sub_2528BF400();
      (*(*(v126 - 8) + 8))(v218, v126);
      v123(v217, v125);
      (v220)(v221, v110);
    }

    else
    {
      v165 = *(v99 + 8);
      v165(v111, v112);

      v166 = sub_2528BF400();
      (*(*(v166 - 8) + 8))(v218, v166);
      v165(v98, v112);
      v167 = *(v107 + 8);
      v167(v221, v110);
      v167(v109, v110);
    }

    (*(v195 + 8))(v192, v203);
    (*(v196 + 8))(v200, v194);

    v92 = v209;
    v93 = v206;
    goto LABEL_12;
  }

  (*(v103 + 32))(v183, v102, v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2528C3910;
  *(inited + 32) = sub_2528BFEC0();
  *(inited + 40) = v128;
  v129 = sub_252749DC8(inited);
  swift_setDeallocating();
  sub_252836884(inited + 32);
  v130 = v215;
  *(v51 + *(v215 + 52)) = v129;
  v51[7] = MEMORY[0x277D84FA0];
  v131 = v180;
  sub_2528BF2F0();
  v132 = v51 + *(v130 + 48);
  sub_2528BEE00();
  v202 = *(v181 + 8);
  (v202)(v131, v185);
  v133 = v199;
  sub_2528BFC50();
  v134 = sub_2528BECB0();
  v136 = v135;
  v137 = v220;
  v61 = v198;
  v198(v133, v220);
  v222 = v134;
  v223 = v136;
  sub_2528BE6C0();
  v138 = v221;
  sub_2528BFAB0();
  v139 = v176;
  sub_2528BFA50();
  sub_2528BFA60();
  (*(v177 + 8))(v139, v179);
  v140 = sub_2528BECB0();
  v142 = v141;
  v143 = v133;
  v144 = v138;
  v52 = v218;
  v61(v143, v137);
  v222 = v140;
  v223 = v142;
  sub_2528BE6C0();
  LOWORD(v222) = v219;
  sub_2528BE6C0();
  v222 = sub_2528BFAE0();
  v223 = v145;
  sub_2528BE6C0();
  sub_2528BF2F0();
  v146 = sub_2528BEE20();
  v148 = v147;
  (v202)(v131, v185);
  v222 = v146;
  v223 = v148;
  sub_2528BE6C0();
  v62 = v200;
  v149 = sub_2528BEFD0();
  if (v149)
  {
    v150 = v149;
    v64 = (v149 + 56);
    v151 = 1 << *(v149 + 32);
    v152 = -1;
    if (v151 < 64)
    {
      v152 = ~(-1 << v151);
    }

    v63 = v152 & *(v149 + 56);
    v65 = (v151 + 63) >> 6;
    v219 = v191 + 2;
    v213 = (v191 + 1);

    v154 = 0;
    v155 = MEMORY[0x277D84F90];
    v212 = v153;
    if (v63)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v156 = v154 + 1;
      if (__OFADD__(v154, 1))
      {
        break;
      }

      if (v156 >= v65)
      {

        v144 = v221;
        v164 = v217;
        v52 = v218;
        v62 = v200;
        goto LABEL_49;
      }

      v63 = *&v64[8 * v156];
      ++v154;
      if (v63)
      {
        v154 = v156;
        do
        {
LABEL_39:
          v157 = v191;
          v158 = *(v150 + 48) + v191[9] * (__clz(__rbit64(v63)) | (v154 << 6));
          v159 = v187;
          v61 = v188;
          (v191[2])(v187, v158, v188);
          v220 = sub_2528BF050();
          v52 = v160;
          (v157[1])(v159, v61);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v155 = sub_252737D40(0, *(v155 + 2) + 1, 1, v155);
          }

          v162 = *(v155 + 2);
          v161 = *(v155 + 3);
          v62 = (v162 + 1);
          if (v162 >= v161 >> 1)
          {
            v155 = sub_252737D40((v161 > 1), v162 + 1, 1, v155);
          }

          v63 &= v63 - 1;
          *(v155 + 2) = v62;
          v163 = &v155[16 * v162];
          *(v163 + 4) = v220;
          *(v163 + 5) = v52;
          v150 = v212;
        }

        while (v63);
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  v155 = MEMORY[0x277D84F90];
  v164 = v217;
LABEL_49:
  v168 = v190;
  v169 = sub_252743FCC(v155);

  v222 = v169;
  sub_2528BE6C0();
  v222 = sub_2528BF020();
  v223 = v170;
  sub_2528BE6C0();
  v171 = sub_2528BF400();
  (*(*(v171 - 8) + 8))(v52, v171);
  (*(v216 + 8))(v164, v214);
  (*(v207 + 8))(v144, v208);
  (*(v189 + 8))(v183, v168);
  (*(v195 + 8))(v192, v203);
  (*(v196 + 8))(v62, v194);
  v172 = v209;
  sub_25283B8C4(v51, v209, type metadata accessor for DeviceEntity);
  (*(v206 + 56))(v172, 0, 1, v215);
  return sub_25283B92C(v51, type metadata accessor for DeviceEntity);
}

uint64_t DeviceEntity.id.getter()
{
  v1 = *(v0 + 8);
  sub_2528BE6B0();
  return v3;
}

uint64_t static DeviceEntity.createAccessoryControlPath(from:secondaryAccessoryControlDestination:snapshot:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25281EA40;

  return sub_25283980C(a1, a2, a3);
}

uint64_t sub_25281EA40(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_25281EB68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25281EBA4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  v5 = a1[1];

  return sub_2528BE6C0();
}

void (*DeviceEntity.id.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2528BE6A0();
  return sub_25272DDC8;
}

uint64_t sub_25281ECD0()
{
  v1 = *(v0 + 24);
  sub_2528BE6B0();
  return v3;
}

uint64_t sub_25281ED28()
{
  v1 = *(v0 + 32);
  sub_2528BE6B0();
  return v3;
}

uint64_t sub_25281ED80()
{
  v1 = *(v0 + 40);
  sub_2528BE6B0();
  return v3;
}

uint64_t type metadata accessor for DeviceEntity()
{
  result = qword_27F4FF5F0;
  if (!qword_27F4FF5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25281EE00()
{
  result = qword_27F4FF508;
  if (!qword_27F4FF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FF508);
  }

  return result;
}

uint64_t DeviceEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_2528BEC40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_2528C09B0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  v14 = *v0;
  sub_2528BE6B0();
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v10 + 56))(v8, 1, 1, v9);
  v15 = sub_2528BE8D0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  return sub_2528BE900();
}

uint64_t sub_25281F0E8()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FF478);
  __swift_project_value_buffer(v0, qword_27F4FF478);
  return sub_2528BE9D0();
}

uint64_t static DeviceEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FF478);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t DeviceEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  swift_getKeyPath();
  *a1 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  a1[1] = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  swift_getKeyPath();
  a1[2] = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF530, &qword_2528D3648);
  swift_getKeyPath();
  a1[3] = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  swift_getKeyPath();
  a1[4] = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF3F8, &qword_2528D3310);
  swift_getKeyPath();
  result = sub_2528BE9C0();
  a1[5] = result;
  return result;
}

uint64_t static DeviceEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F4FB8C0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27F4FF498;
  v2 = qword_27F4FF4A0;
  v3 = unk_27F4FF4A8;
  v4 = qword_27F4FF4B0;
  v5 = unk_27F4FF4B8;
  *a1 = qword_27F4FF490;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();

  return sub_2528BEA50();
}

uint64_t sub_25281F3E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD660, &qword_2528D4D00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_2528C0020();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D84FA0];
  sub_25272006C(a1, v5, &qword_27F4FD660, &qword_2528D4D00);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2527213D8(v5, &qword_27F4FD660, &qword_2528D4D00);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v11 = sub_2528C0000();
    sub_25273A0C4(&v17, v11, v12);

    (*(v7 + 8))(v10, v6);
  }

  if (sub_2528BF9B0())
  {
    v13 = sub_2528BFC60();
    sub_25273A0C4(&v17, v13, v14);
  }

  return v18;
}

uint64_t sub_25281F600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a3;
  v26[2] = a2;
  v4 = sub_2528BECF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD660, &qword_2528D4D00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  v13 = sub_2528C0020();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x277D84FA0];
  sub_25272006C(a1, v12, &qword_27F4FD660, &qword_2528D4D00);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2527213D8(v12, &qword_27F4FD660, &qword_2528D4D00);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_2528BFFF0();
    v18 = sub_2528BECB0();
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    sub_25273A0C4(&v27, v18, v20);

    (*(v14 + 8))(v17, v13);
  }

  v21 = v4;
  if (sub_2528BF9B0())
  {
    sub_2528BFC50();
    v22 = sub_2528BECB0();
    v24 = v23;
    (*(v5 + 8))(v8, v21);
    sub_25273A0C4(&v27, v22, v24);
  }

  return v28;
}

uint64_t sub_25281F8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, __int16 *a4@<X8>)
{
  v224 = a3;
  v223 = a2;
  v247 = a4;
  v266 = sub_2528BF9D0();
  v261 = *(v266 - 8);
  v5 = *(v261 + 64);
  v6 = MEMORY[0x28223BE20](v266);
  v253 = &v213[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v216 = &v213[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v263 = &v213[-v11];
  MEMORY[0x28223BE20](v10);
  v217 = &v213[-v12];
  v251 = sub_2528BFA80();
  v248 = *(v251 - 8);
  v13 = *(v248 + 64);
  MEMORY[0x28223BE20](v251);
  v238 = &v213[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF938, &qword_2528D41F8);
  v15 = *(*(v250 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v250);
  v222 = &v213[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v230 = &v213[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v228 = &v213[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v242 = &v213[-v23];
  MEMORY[0x28223BE20](v22);
  v241 = &v213[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF940, &qword_2528D4200);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v221 = &v213[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v27);
  v219 = &v213[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v220 = &v213[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v226 = &v213[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v229 = &v213[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v237 = &v213[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v218 = &v213[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v236 = &v213[-v42];
  v43 = MEMORY[0x28223BE20](v41);
  v227 = &v213[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v225 = &v213[-v46];
  v47 = MEMORY[0x28223BE20](v45);
  v244 = &v213[-v48];
  v49 = MEMORY[0x28223BE20](v47);
  v240 = &v213[-v50];
  v51 = MEMORY[0x28223BE20](v49);
  v239 = &v213[-v52];
  v53 = MEMORY[0x28223BE20](v51);
  v245 = &v213[-v54];
  MEMORY[0x28223BE20](v53);
  v246 = &v213[-v55];
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF948, &qword_2528D4208);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v260 = &v213[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v58);
  v61 = &v213[-v60];
  v62 = sub_2528BF240();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  v65 = MEMORY[0x28223BE20](v62);
  v255 = &v213[-((v66 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = MEMORY[0x28223BE20](v65);
  v254 = &v213[-v68];
  v69 = MEMORY[0x28223BE20](v67);
  v252 = &v213[-v70];
  v71 = MEMORY[0x28223BE20](v69);
  v262 = &v213[-v72];
  v73 = MEMORY[0x28223BE20](v71);
  v234 = &v213[-v74];
  v75 = MEMORY[0x28223BE20](v73);
  v235 = &v213[-v76];
  v77 = MEMORY[0x28223BE20](v75);
  v79 = &v213[-v78];
  v80 = MEMORY[0x28223BE20](v77);
  v249 = &v213[-v81];
  v82 = MEMORY[0x28223BE20](v80);
  v259 = &v213[-v83];
  v84 = MEMORY[0x28223BE20](v82);
  v243 = &v213[-v85];
  v86 = MEMORY[0x28223BE20](v84);
  v88 = &v213[-v87];
  MEMORY[0x28223BE20](v86);
  v90 = &v213[-v89];
  sub_2528BF460();
  sub_2528BF420();
  v91 = *(v63 + 48);
  v92 = v91(v61, 1, v62);
  v256 = a1;
  if (v92 == 1)
  {
    v93 = v63;
    sub_2528BF460();
    if (v91(v61, 1, v62) != 1)
    {
      sub_2527213D8(v61, &qword_27F4FF948, &qword_2528D4208);
    }
  }

  else
  {
    v93 = v63;
    (*(v63 + 32))(v88, v61, v62);
  }

  sub_25283C680(&qword_27F4FF950, MEMORY[0x277D158E0]);
  v94 = sub_2528C0930();
  v95 = *(v93 + 8);
  v95(v88, v62);
  v264 = v93 + 8;
  v265 = v95;
  v95(v90, v62);
  if ((v94 & 1) == 0)
  {
    v96 = v243;
    sub_2528BF460();
    sub_2527FF5AC(v96, &v269);
    v97 = v269;
    if (v269 != 33)
    {
      v98 = v260;
      sub_2528BF420();
      if (v91(v98, 1, v62) == 1)
      {
        v99 = v259;
        sub_2528BF460();
        if (v91(v98, 1, v62) != 1)
        {
          sub_2527213D8(v98, &qword_27F4FF948, &qword_2528D4208);
        }
      }

      else
      {
        v99 = v259;
        (*(v93 + 32))(v259, v98, v62);
      }

      result = sub_2527FF5AC(v99, &v269);
      if (v269 != 33)
      {
        v124 = v97 | (v269 << 8) | 0x8000;
        goto LABEL_86;
      }
    }
  }

  sub_2528BF460();
  v102 = v93 + 104;
  v101 = *(v93 + 104);
  v257 = *MEMORY[0x277D15850];
  v260 = v101;
  v101(v79);
  v103 = sub_25283C680(&qword_27F4FE890, MEMORY[0x277D158E0]);
  sub_2528C0AD0();
  v259 = v103;
  sub_2528C0AD0();
  v104 = MEMORY[0x277D15B88];
  v258 = v102;
  if (v269 == v267 && v270 == v268)
  {
    v105 = v265;
    v265(v79, v62);
    v105(v249, v62);
  }

  else
  {
    v106 = sub_2528C1060();
    v107 = v265;
    v265(v79, v62);
    v107(v249, v62);

    if ((v106 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v108 = v246;
  sub_2528BF5C0();
  v109 = *v104;
  v110 = v248;
  v111 = *(v248 + 104);
  v112 = v245;
  v113 = v251;
  v249 = v248 + 104;
  v232 = v111;
  v111(v245, v109, v251);
  v114 = *(v110 + 56);
  v233 = v110 + 56;
  v231 = v114;
  v114(v112, 0, 1, v113);
  v115 = *(v250 + 48);
  v116 = v241;
  sub_25272006C(v108, v241, &qword_27F4FF940, &qword_2528D4200);
  sub_25272006C(v112, &v116[v115], &qword_27F4FF940, &qword_2528D4200);
  v117 = *(v110 + 48);
  v118 = v117(v116, 1, v113);
  v215 = v110 + 48;
  if (v118 == 1)
  {
    sub_2527213D8(v112, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v108, &qword_27F4FF940, &qword_2528D4200);
    v119 = v117(&v116[v115], 1, v113) == 1;
    v120 = v116;
    v121 = v242;
    v122 = v244;
    v123 = v117;
    if (v119)
    {
      result = sub_2527213D8(v120, &qword_27F4FF940, &qword_2528D4200);
      v124 = 24087;
LABEL_86:
      *v247 = v124;
      return result;
    }

    goto LABEL_22;
  }

  v125 = v239;
  sub_25272006C(v116, v239, &qword_27F4FF940, &qword_2528D4200);
  v126 = v117(&v116[v115], 1, v113);
  v122 = v244;
  v123 = v117;
  if (v126 == 1)
  {
    sub_2527213D8(v245, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v246, &qword_27F4FF940, &qword_2528D4200);
    (*(v248 + 8))(v125, v113);
    v120 = v116;
    v121 = v242;
LABEL_22:
    sub_2527213D8(v120, &qword_27F4FF938, &qword_2528D41F8);
    goto LABEL_23;
  }

  v137 = v248;
  v138 = &v116[v115];
  v139 = v116;
  v140 = v238;
  (*(v248 + 32))(v238, v138, v113);
  sub_25283C680(&qword_27F4FF958, MEMORY[0x277D15B98]);
  v214 = sub_2528C0930();
  v141 = *(v137 + 8);
  v141(v140, v113);
  sub_2527213D8(v245, &qword_27F4FF940, &qword_2528D4200);
  sub_2527213D8(v246, &qword_27F4FF940, &qword_2528D4200);
  v141(v239, v113);
  result = sub_2527213D8(v139, &qword_27F4FF940, &qword_2528D4200);
  v121 = v242;
  if (v214)
  {
    v124 = 24087;
    goto LABEL_86;
  }

LABEL_23:
  v127 = v240;
  sub_2528BF5C0();
  v128 = v251;
  v232(v122, *MEMORY[0x277D15B90], v251);
  v231(v122, 0, 1, v128);
  v129 = *(v250 + 48);
  sub_25272006C(v127, v121, &qword_27F4FF940, &qword_2528D4200);
  sub_25272006C(v122, v121 + v129, &qword_27F4FF940, &qword_2528D4200);
  if (v123(v121, 1, v128) == 1)
  {
    sub_2527213D8(v122, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v127, &qword_27F4FF940, &qword_2528D4200);
    v130 = v123(v121 + v129, 1, v128);
    v131 = v236;
    if (v130 == 1)
    {
      result = sub_2527213D8(v121, &qword_27F4FF940, &qword_2528D4200);
      v124 = 24073;
      goto LABEL_86;
    }
  }

  else
  {
    v132 = v225;
    sub_25272006C(v121, v225, &qword_27F4FF940, &qword_2528D4200);
    if (v123(v121 + v129, 1, v128) != 1)
    {
      v160 = v132;
      v161 = v248;
      v162 = v121 + v129;
      v163 = v238;
      (*(v248 + 32))(v238, v162, v128);
      sub_25283C680(&qword_27F4FF958, MEMORY[0x277D15B98]);
      LODWORD(v246) = sub_2528C0930();
      v164 = *(v161 + 8);
      v164(v163, v128);
      sub_2527213D8(v244, &qword_27F4FF940, &qword_2528D4200);
      sub_2527213D8(v240, &qword_27F4FF940, &qword_2528D4200);
      v164(v160, v128);
      result = sub_2527213D8(v121, &qword_27F4FF940, &qword_2528D4200);
      v131 = v236;
      if (v246)
      {
        v124 = 24073;
        goto LABEL_86;
      }

      goto LABEL_29;
    }

    sub_2527213D8(v122, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v240, &qword_27F4FF940, &qword_2528D4200);
    (*(v248 + 8))(v132, v128);
    v131 = v236;
  }

  sub_2527213D8(v121, &qword_27F4FF938, &qword_2528D41F8);
LABEL_29:
  v133 = v227;
  sub_2528BF5C0();
  v134 = v251;
  v232(v131, *MEMORY[0x277D15B80], v251);
  v231(v131, 0, 1, v134);
  v135 = *(v250 + 48);
  v136 = v228;
  sub_25272006C(v133, v228, &qword_27F4FF940, &qword_2528D4200);
  sub_25272006C(v131, &v136[v135], &qword_27F4FF940, &qword_2528D4200);
  if (v123(v136, 1, v134) == 1)
  {
    sub_2527213D8(v131, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v133, &qword_27F4FF940, &qword_2528D4200);
    if (v123(&v136[v135], 1, v134) == 1)
    {
      result = sub_2527213D8(v136, &qword_27F4FF940, &qword_2528D4200);
      v124 = 24089;
      goto LABEL_86;
    }

    goto LABEL_36;
  }

  v142 = v218;
  sub_25272006C(v136, v218, &qword_27F4FF940, &qword_2528D4200);
  if (v123(&v136[v135], 1, v134) == 1)
  {
    sub_2527213D8(v131, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v133, &qword_27F4FF940, &qword_2528D4200);
    (*(v248 + 8))(v142, v134);
LABEL_36:
    sub_2527213D8(v136, &qword_27F4FF938, &qword_2528D41F8);
    goto LABEL_37;
  }

  v165 = v131;
  v166 = v248;
  v167 = &v136[v135];
  v168 = v238;
  (*(v248 + 32))(v238, v167, v134);
  sub_25283C680(&qword_27F4FF958, MEMORY[0x277D15B98]);
  LODWORD(v249) = sub_2528C0930();
  v169 = *(v166 + 8);
  v169(v168, v134);
  sub_2527213D8(v165, &qword_27F4FF940, &qword_2528D4200);
  sub_2527213D8(v133, &qword_27F4FF940, &qword_2528D4200);
  v169(v142, v134);
  result = sub_2527213D8(v136, &qword_27F4FF940, &qword_2528D4200);
  if (v249)
  {
    v124 = 24089;
    goto LABEL_86;
  }

LABEL_37:
  v143 = v235;
  sub_2528BF460();
  v144 = v234;
  (v260)(v234, *MEMORY[0x277D15868], v62);
  sub_2528C0AD0();
  sub_2528C0AD0();
  if (v269 == v267 && v270 == v268)
  {
    v145 = v265;
    v265(v144, v62);
    v145(v143, v62);
  }

  else
  {
    v146 = sub_2528C1060();
    v147 = v144;
    v148 = v265;
    v265(v147, v62);
    v148(v143, v62);

    if ((v146 & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  result = sub_2528BF740();
  v149 = result;
  v150 = *(result + 16);
  if (v150)
  {
    v151 = 0;
    v249 = v261 + 16;
    v152 = (v261 + 8);
    while (v151 < *(v149 + 16))
    {
      (*(v261 + 16))(v263, v149 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v151, v266);
      sub_2528BF460();
      v153 = v252;
      (v260)(v252, v257, v62);
      sub_2528C0AD0();
      sub_2528C0AD0();
      if (v269 == v267 && v270 == v268)
      {
        v170 = v265;
        v265(v153, v62);
        v170(v262, v62);

LABEL_55:

        v171 = v261 + 32;
        v172 = v217;
        v173 = v266;
        (*(v261 + 32))(v217, v263, v266);
        v158 = v237;
        sub_2528BF5C0();
        (*(v171 - 24))(v172, v173);
        v159 = v251;
        v157 = v248;
        goto LABEL_56;
      }

      v154 = sub_2528C1060();
      v155 = v153;
      v156 = v265;
      v265(v155, v62);
      v156(v262, v62);

      if (v154)
      {
        goto LABEL_55;
      }

      ++v151;
      result = (*v152)(v263, v266);
      if (v150 == v151)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_88;
  }

LABEL_48:

  v157 = v248;
  v158 = v237;
  v159 = v251;
  (*(v248 + 56))(v237, 1, 1, v251);
LABEL_56:
  v174 = *MEMORY[0x277D15B88];
  v175 = *(v157 + 104);
  v176 = v229;
  v249 = v157 + 104;
  v246 = v175;
  v175(v229, v174, v159);
  v177 = *(v157 + 56);
  v245 = (v157 + 56);
  v244 = v177;
  (v177)(v176, 0, 1, v159);
  v178 = *(v250 + 48);
  v179 = v230;
  sub_25272006C(v158, v230, &qword_27F4FF940, &qword_2528D4200);
  sub_25272006C(v176, &v179[v178], &qword_27F4FF940, &qword_2528D4200);
  v180 = *(v157 + 48);
  v181 = (v180)(v179, 1, v159);
  v262 = (v157 + 48);
  v252 = v180;
  if (v181 == 1)
  {
    sub_2527213D8(v176, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v158, &qword_27F4FF940, &qword_2528D4200);
    if ((v180)(&v179[v178], 1, v159) == 1)
    {
      result = sub_2527213D8(v179, &qword_27F4FF940, &qword_2528D4200);
      v124 = 23;
      goto LABEL_86;
    }

    goto LABEL_61;
  }

  v182 = v226;
  sub_25272006C(v179, v226, &qword_27F4FF940, &qword_2528D4200);
  if ((v180)(&v179[v178], 1, v159) == 1)
  {
    sub_2527213D8(v176, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v237, &qword_27F4FF940, &qword_2528D4200);
    (*(v157 + 8))(v182, v159);
LABEL_61:
    sub_2527213D8(v179, &qword_27F4FF938, &qword_2528D41F8);
    goto LABEL_62;
  }

  v192 = &v179[v178];
  v193 = v238;
  (*(v157 + 32))(v238, v192, v159);
  sub_25283C680(&qword_27F4FF958, MEMORY[0x277D15B98]);
  v194 = sub_2528C0930();
  v195 = *(v157 + 8);
  v195(v193, v159);
  sub_2527213D8(v176, &qword_27F4FF940, &qword_2528D4200);
  sub_2527213D8(v237, &qword_27F4FF940, &qword_2528D4200);
  v195(v226, v159);
  result = sub_2527213D8(v179, &qword_27F4FF940, &qword_2528D4200);
  if (v194)
  {
    v124 = 23;
    goto LABEL_86;
  }

LABEL_62:
  result = sub_2528BF740();
  v183 = result;
  v184 = *(result + 16);
  if (!v184)
  {
LABEL_69:

    v189 = v220;
    v190 = v251;
    v191 = v244;
    (v244)(v220, 1, 1, v251);
LABEL_74:
    v200 = v219;
    (v246)(v219, *MEMORY[0x277D15B90], v190);
    (v191)(v200, 0, 1, v190);
    v201 = *(v250 + 48);
    v202 = v222;
    sub_25272006C(v189, v222, &qword_27F4FF940, &qword_2528D4200);
    sub_25272006C(v200, &v202[v201], &qword_27F4FF940, &qword_2528D4200);
    v203 = v252;
    v204 = (v252)(v202, 1, v190);
    v205 = v221;
    if (v204 == 1)
    {
      sub_2527213D8(v200, &qword_27F4FF940, &qword_2528D4200);
      sub_2527213D8(v189, &qword_27F4FF940, &qword_2528D4200);
      if (v203(&v202[v201], 1, v190) == 1)
      {
        result = sub_2527213D8(v202, &qword_27F4FF940, &qword_2528D4200);
LABEL_85:
        v124 = 9;
        goto LABEL_86;
      }

      goto LABEL_79;
    }

    sub_25272006C(v202, v221, &qword_27F4FF940, &qword_2528D4200);
    if (v203(&v202[v201], 1, v190) == 1)
    {
      sub_2527213D8(v200, &qword_27F4FF940, &qword_2528D4200);
      sub_2527213D8(v189, &qword_27F4FF940, &qword_2528D4200);
      (*(v248 + 8))(v205, v190);
LABEL_79:
      sub_2527213D8(v202, &qword_27F4FF938, &qword_2528D41F8);
      goto LABEL_80;
    }

    v208 = v248;
    v209 = &v202[v201];
    v210 = v238;
    (*(v248 + 32))(v238, v209, v190);
    sub_25283C680(&qword_27F4FF958, MEMORY[0x277D15B98]);
    v211 = sub_2528C0930();
    v212 = *(v208 + 8);
    v212(v210, v190);
    sub_2527213D8(v200, &qword_27F4FF940, &qword_2528D4200);
    sub_2527213D8(v189, &qword_27F4FF940, &qword_2528D4200);
    v212(v205, v190);
    result = sub_2527213D8(v202, &qword_27F4FF940, &qword_2528D4200);
    if (v211)
    {
      goto LABEL_85;
    }

LABEL_80:
    v206 = v243;
    sub_2528BFC20();
    result = sub_2527FF5AC(v206, &v269);
    v207 = v269;
    if (v269 == 33 || (result = sub_2528BF9B0(), (result & 1) != 0))
    {
      v124 = v224;
    }

    else
    {
      v124 = v207 | (v224 << 8) | 0x4000;
    }

    goto LABEL_86;
  }

  v185 = 0;
  v263 = (v261 + 16);
  v186 = (v261 + 8);
  v187 = v265;
  while (v185 < *(v183 + 16))
  {
    (*(v261 + 16))(v253, v183 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v185, v266);
    sub_2528BF460();
    (v260)(v255, v257, v62);
    sub_2528C0AD0();
    sub_2528C0AD0();
    if (v269 == v267 && v270 == v268)
    {
      v196 = v265;
      v265(v255, v62);
      v196(v254, v62);

LABEL_73:

      v197 = v261 + 32;
      v198 = v216;
      v199 = v266;
      (*(v261 + 32))(v216, v253, v266);
      v189 = v220;
      sub_2528BF5C0();
      (*(v197 - 24))(v198, v199);
      v190 = v251;
      v191 = v244;
      goto LABEL_74;
    }

    v188 = sub_2528C1060();
    v187(v255, v62);
    v187(v254, v62);

    if (v188)
    {
      goto LABEL_73;
    }

    ++v185;
    result = (*v186)(v253, v266);
    if (v184 == v185)
    {
      goto LABEL_69;
    }
  }

LABEL_88:
  __break(1u);
  return result;
}

uint64_t DeviceEntity.init(staticServiceGroup:snapshot:)@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v167 = a2;
  v162 = a3;
  v168 = sub_2528C0020();
  v161 = *(v168 - 8);
  v4 = *(v161 + 64);
  v5 = MEMORY[0x28223BE20](v168);
  v154 = (&v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v151 = &v136 - v8;
  MEMORY[0x28223BE20](v7);
  v150 = &v136 - v9;
  v141 = sub_2528BF070();
  v149 = *(v141 - 8);
  v10 = *(v149 + 64);
  MEMORY[0x28223BE20](v141);
  v142 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_2528BF030();
  v143 = *(v144 - 8);
  v12 = *(v143 + 64);
  v13 = MEMORY[0x28223BE20](v144);
  v138 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v137 = &v136 - v15;
  v148 = sub_2528BF9D0();
  v147 = *(v148 - 8);
  v16 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v146 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_2528BECF0();
  v166 = *(v155 - 8);
  v18 = *(v166 + 64);
  v19 = MEMORY[0x28223BE20](v155);
  v145 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v152 = &v136 - v22;
  MEMORY[0x28223BE20](v21);
  v153 = &v136 - v23;
  v157 = sub_2528BEE30();
  v24 = *(v157 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v157);
  v27 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_2528BF240();
  v139 = *(v140 - 8);
  v28 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v30 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2528BEC40();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = type metadata accessor for DeviceEntity();
  v159 = *(v33 - 8);
  v34 = *(v159 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = (&v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v165 = sub_2528BE730();
  *v36 = v165;
  sub_2528BEC20();
  v164 = sub_2528BE730();
  v36[1] = v164;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  v37 = sub_2528BE700();
  v36[2] = v37;
  sub_2528BEC20();
  v163 = sub_2528BE730();
  v36[3] = v163;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  v156 = sub_2528BE730();
  v36[4] = v156;
  sub_2528BEC20();
  v158 = sub_2528BE730();
  v36[5] = v158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v38 = a1;
  v39 = sub_2528BE730();
  v36[6] = v39;
  sub_2528BFFD0();
  sub_2527FF5AC(v30, &v169);
  v40 = v169;
  v160 = v33;
  if (v169 == 33)
  {
    v152 = v39;
    v157 = v37;
    v41 = v168;
    if (qword_27F4FBB40 == -1)
    {
LABEL_3:
      v42 = sub_2528C08B0();
      __swift_project_value_buffer(v42, qword_27F5025C8);
      v43 = v161;
      v44 = *(v161 + 16);
      v45 = v150;
      v44(v150, v38, v41);
      v46 = v151;
      v44(v151, v38, v41);
      v47 = v154;
      v148 = v38;
      v44(v154, v38, v41);
      v48 = sub_2528C0890();
      v49 = sub_2528C0CE0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v169 = v149;
        *v50 = 136315650;
        sub_25283C680(&qword_27F4FF538, MEMORY[0x277D164A0]);
        LODWORD(v147) = v49;
        v51 = sub_2528C1040();
        v53 = v52;
        v54 = *(v43 + 8);
        v54(v45, v41);
        v55 = sub_2527389AC(v51, v53, &v169);

        *(v50 + 4) = v55;
        *(v50 + 12) = 2080;
        v56 = v153;
        sub_2528BFFF0();
        sub_25283C680(&qword_27F4FD070, MEMORY[0x277CC95F0]);
        v57 = v155;
        v58 = sub_2528C1040();
        v60 = v59;
        (*(v166 + 8))(v56, v57);
        v61 = v168;
        v54(v46, v168);
        v62 = sub_2527389AC(v58, v60, &v169);

        *(v50 + 14) = v62;
        *(v50 + 22) = 2080;
        v63 = v154;
        sub_2528BFFD0();
        sub_25283C680(&qword_27F4FF520, MEMORY[0x277D158E0]);
        v64 = v140;
        v65 = sub_2528C1040();
        v67 = v66;
        (*(v139 + 8))(v30, v64);
        v54(v63, v61);
        v68 = sub_2527389AC(v65, v67, &v169);

        *(v50 + 24) = v68;
        _os_log_impl(&dword_252711000, v48, v147, "Unable to create DeviceEntity for %s with serviceGroupId: %s primaryServiceKind: %s", v50, 0x20u);
        v69 = v149;
        swift_arrayDestroy();
        MEMORY[0x2530A8D80](v69, -1, -1);
        MEMORY[0x2530A8D80](v50, -1, -1);

        v70 = sub_2528BF400();
        (*(*(v70 - 8) + 8))(v167, v70);
        v54(v148, v61);
      }

      else
      {

        v119 = sub_2528BF400();
        (*(*(v119 - 8) + 8))(v167, v119);
        v120 = *(v43 + 8);
        v120(v148, v41);
        v120(v47, v41);
        v120(v46, v41);
        v120(v45, v41);
      }

      v121 = v162;
      v123 = v159;
      v122 = v160;

      return (*(v123 + 56))(v121, 1, 1, v122);
    }

LABEL_35:
    swift_once();
    goto LABEL_3;
  }

  sub_2528BF2F0();
  v71 = v36 + *(v33 + 48);
  sub_2528BEE00();
  v72 = *(v24 + 8);
  v73 = v36;
  v74 = v157;
  v72(v27, v157);
  v75 = MEMORY[0x277D84FA0];
  v73[7] = MEMORY[0x277D84FA0];
  v76 = *(v33 + 52);
  v154 = v73;
  *(v73 + v76) = v75;
  v77 = v153;
  sub_2528BFFF0();
  v78 = sub_2528BECB0();
  v80 = v79;
  v81 = *(v166 + 8);
  v82 = v77;
  v83 = v155;
  v153 = (v166 + 8);
  v151 = v81;
  (v81)(v82, v155);
  v169 = v78;
  v170 = v80;
  sub_2528BE6C0();
  LOWORD(v169) = v40;
  sub_2528BE6C0();
  v169 = sub_2528C0000();
  v170 = v84;
  sub_2528BE6C0();
  v85 = v167;
  sub_2528BF2F0();
  v86 = sub_2528BEE20();
  v88 = v87;
  v164 = v27;
  v165 = v24 + 8;
  v150 = v72;
  v72(v27, v74);
  v169 = v86;
  v170 = v88;
  sub_2528BE6C0();
  sub_25283C680(&qword_27F4FF540, MEMORY[0x277D164A0]);
  v89 = v168;
  v90 = sub_2528BFB70();
  v91 = v83;
  v92 = v85;
  if (*(v90 + 16))
  {
    v93 = v147;
    v94 = v146;
    v95 = v148;
    (*(v147 + 16))(v146, v90 + ((*(v93 + 80) + 32) & ~*(v93 + 80)), v148);

    v96 = v145;
    sub_2528BF980();
    (*(v93 + 8))(v94, v95);
    v97 = v152;
    (*(v166 + 32))(v152, v96, v91);
    v98 = sub_2528BF320();
    v99 = v154;
    if (*(v98 + 16) && (v100 = sub_252785C40(v97), (v101 & 1) != 0))
    {
      v102 = v143;
      v103 = v137;
      v104 = v144;
      (*(v143 + 16))(v137, *(v98 + 56) + *(v143 + 72) * v100, v144);

      v105 = sub_2528BEFD0();
      (*(v102 + 8))(v103, v104);
      if (v105)
      {
        v148 = v38;
        v41 = v105 + 56;
        v106 = 1 << *(v105 + 32);
        v107 = -1;
        if (v106 < 64)
        {
          v107 = ~(-1 << v106);
        }

        v108 = v107 & *(v105 + 56);
        v38 = (v106 + 63) >> 6;
        v147 = v149 + 16;
        v146 = (v149 + 8);

        v30 = 0;
        for (i = MEMORY[0x277D84F90]; v108; *(v117 + 5) = v118)
        {
          v110 = v142;
LABEL_17:
          v112 = v149;
          v113 = v141;
          (*(v149 + 16))(v110, *(v105 + 48) + *(v149 + 72) * (__clz(__rbit64(v108)) | (v30 << 6)), v141);
          v163 = sub_2528BF050();
          v166 = v114;
          (*(v112 + 8))(v110, v113);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            i = sub_252737D40(0, *(i + 2) + 1, 1, i);
          }

          v116 = *(i + 2);
          v115 = *(i + 3);
          v97 = v152;
          if (v116 >= v115 >> 1)
          {
            i = sub_252737D40((v115 > 1), v116 + 1, 1, i);
          }

          v108 &= v108 - 1;
          *(i + 2) = v116 + 1;
          v117 = &i[16 * v116];
          v118 = v166;
          *(v117 + 4) = v163;
        }

        while (1)
        {
          v111 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v111 >= v38)
          {

            v38 = v148;
            v92 = v167;
            v91 = v155;
            goto LABEL_28;
          }

          v108 = *(v41 + 8 * v111);
          ++v30;
          if (v108)
          {
            v110 = v142;
            v30 = v111;
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_35;
      }

      i = MEMORY[0x277D84F90];
      v125 = v157;
    }

    else
    {
      i = MEMORY[0x277D84F90];
LABEL_28:
      v125 = v157;
    }

    v127 = sub_252743FCC(i);

    v169 = v127;
    sub_2528BE6C0();
    (v151)(v97, v91);
    v126 = v164;
    v89 = v168;
  }

  else
  {

    v125 = v157;
    v126 = v164;
    v99 = v154;
  }

  v128 = sub_2528C0010();
  if (!v129)
  {
    sub_2528BF2F0();
    v130 = v138;
    sub_2528BEDE0();
    (v150)(v126, v125);
    v131 = sub_2528BF020();
    v133 = v132;
    (*(v143 + 8))(v130, v144);
    v129 = v133;
    v128 = v131;
  }

  v169 = v128;
  v170 = v129;
  sub_2528BE6C0();
  v134 = sub_2528BF400();
  (*(*(v134 - 8) + 8))(v92, v134);
  (*(v161 + 8))(v38, v89);
  v135 = v162;
  sub_25283B8C4(v99, v162, type metadata accessor for DeviceEntity);
  (*(v159 + 56))(v135, 0, 1, v160);
  return sub_25283B92C(v99, type metadata accessor for DeviceEntity);
}

uint64_t DeviceEntity.init(staticMediaProfile:snapshot:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v136 = a2;
  v137 = a3;
  v140 = a1;
  v139 = sub_2528BFF90();
  v3 = *(v139 - 8);
  v4 = *(v3 + 8);
  MEMORY[0x28223BE20](v139);
  v125 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_2528BF030();
  v118 = *(v119 - 8);
  v6 = *(v118 + 64);
  v7 = MEMORY[0x28223BE20](v119);
  v116 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v115 = &v111 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v120 = &v111 - v12;
  v13 = sub_2528BECF0();
  v126 = *(v13 - 8);
  v127 = v13;
  v14 = *(v126 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v117 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v124 = &v111 - v17;
  v123 = sub_2528BEE30();
  v122 = *(v123 - 8);
  v18 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF548, &qword_2528D36E0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v111 - v22;
  v24 = sub_2528BFC30();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v111 - v30;
  v32 = sub_2528BEC40();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v138 = type metadata accessor for DeviceEntity();
  v135 = *(v138 - 8);
  v34 = *(v135 + 64);
  MEMORY[0x28223BE20](v138);
  v36 = (&v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v132 = sub_2528BE730();
  *v36 = v132;
  sub_2528BEC20();
  v131 = sub_2528BE730();
  v36[1] = v131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  v129 = sub_2528BE700();
  v36[2] = v129;
  sub_2528BEC20();
  v130 = sub_2528BE730();
  v36[3] = v130;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  v133 = sub_2528BE730();
  v36[4] = v133;
  sub_2528BEC20();
  v37 = v140;
  v134 = sub_2528BE730();
  v36[5] = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v128 = sub_2528BE730();
  v36[6] = v128;
  sub_2528BFF10();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_2527213D8(v23, &qword_27F4FF548, &qword_2528D36E0);
LABEL_7:
    v64 = v139;
    v65 = v125;
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v66 = sub_2528C08B0();
    __swift_project_value_buffer(v66, qword_27F5025C8);
    (*(v3 + 2))(v65, v37, v64);
    v67 = sub_2528C0890();
    v68 = v3;
    v69 = v37;
    v70 = sub_2528C0CE0();
    if (os_log_type_enabled(v67, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v141 = v72;
      *v71 = 136315138;
      v73 = v124;
      sub_2528BFF50();
      sub_25283C680(&qword_27F4FD070, MEMORY[0x277CC95F0]);
      v74 = v65;
      v75 = v127;
      v76 = sub_2528C1040();
      v78 = v77;
      (*(v126 + 8))(v73, v75);
      v79 = *(v68 + 1);
      v80 = v74;
      v81 = v139;
      v79(v80, v139);
      v82 = sub_2527389AC(v76, v78, &v141);

      *(v71 + 4) = v82;
      _os_log_impl(&dword_252711000, v67, v70, "Unable to create DeviceEntity for media profile %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v72);
      MEMORY[0x2530A8D80](v72, -1, -1);
      MEMORY[0x2530A8D80](v71, -1, -1);

      v83 = sub_2528BF400();
      (*(*(v83 - 8) + 8))(v136, v83);
      v79(v140, v81);
    }

    else
    {

      v84 = sub_2528BF400();
      (*(*(v84 - 8) + 8))(v136, v84);
      v85 = *(v3 + 1);
      v85(v69, v64);
      v85(v65, v64);
    }

    return (*(v135 + 56))(v137, 1, 1, v138);
  }

  (*(v25 + 32))(v31, v23, v24);
  (*(v25 + 16))(v29, v31, v24);
  if ((*(v25 + 88))(v29, v24) != *MEMORY[0x277D15D18])
  {
    v63 = *(v25 + 8);
    v63(v31, v24);
    v63(v29, v24);
    goto LABEL_7;
  }

  v111 = v25;
  v112 = v24;
  v113 = v31;
  v125 = v3;
  v38 = v136;
  v39 = sub_252823B48();
  v40 = v138;
  *(v36 + *(v138 + 52)) = v39;
  v36[7] = sub_252823DA0();
  v41 = v121;
  sub_2528BF2F0();
  v42 = v36 + *(v40 + 48);
  sub_2528BEE00();
  v43 = v122 + 8;
  v114 = *(v122 + 8);
  v114(v41, v123);
  v44 = v124;
  sub_2528BFF40();
  v45 = sub_2528BECB0();
  v47 = v46;
  v48 = v126 + 8;
  v49 = *(v126 + 8);
  v49(v44, v127);
  v141 = v45;
  v142 = v47;
  sub_2528BE6C0();
  sub_2528BFF50();
  v50 = sub_2528BECB0();
  v52 = v51;
  v53 = v44;
  v54 = v38;
  v55 = v127;
  v128 = v48;
  v49(v53, v127);
  v141 = v50;
  v142 = v52;
  sub_2528BE6C0();
  LOWORD(v141) = 2;
  sub_2528BE6C0();
  v141 = sub_2528BFF60();
  v142 = v56;
  sub_2528BE6C0();
  sub_2528BF2F0();
  v57 = sub_2528BEE20();
  v59 = v58;
  v122 = v43;
  v114(v41, v123);
  v141 = v57;
  v142 = v59;
  sub_2528BE6C0();
  v60 = sub_2528BFF70();
  v61 = v120;
  sub_2527D3AB8(v60, v120);
  v62 = v126;

  if ((*(v62 + 48))(v61, 1, v55) == 1)
  {
    sub_2527213D8(v61, &qword_27F4FC628, &qword_2528C4750);
LABEL_18:
    v95 = v112;
    v96 = v111;
LABEL_19:
    v141 = MEMORY[0x277D84FA0];
    sub_2528BE6C0();
    goto LABEL_20;
  }

  v87 = v117;
  (*(v62 + 32))(v117, v61, v55);
  v88 = sub_2528BF320();
  if (!*(v88 + 16) || (v89 = sub_252785C40(v87), (v90 & 1) == 0))
  {

    v49(v87, v55);
    goto LABEL_18;
  }

  v132 = v49;
  v91 = v118;
  v92 = v115;
  v93 = v119;
  (*(v118 + 16))(v115, *(v88 + 56) + *(v118 + 72) * v89, v119);

  v94 = sub_2528BEFD0();
  (*(v91 + 8))(v92, v93);
  v95 = v112;
  v96 = v111;
  if (!v94)
  {
    v132(v87, v55);
    goto LABEL_19;
  }

  v97 = sub_252819AD0(v94, MEMORY[0x277D154F8], MEMORY[0x277D154F0]);

  v98 = sub_252743FCC(v97);

  v141 = v98;
  sub_2528BE6C0();
  v132(v87, v55);
LABEL_20:
  v99 = v140;
  v100 = v125;
  v101 = sub_2528BFF80();
  v103 = v113;
  if (!v102)
  {
    v104 = v121;
    sub_2528BF2F0();
    v105 = v116;
    sub_2528BEDE0();
    v114(v104, v123);
    v106 = sub_2528BF020();
    v108 = v107;
    (*(v118 + 8))(v105, v119);
    v102 = v108;
    v101 = v106;
    v100 = v125;
  }

  v141 = v101;
  v142 = v102;
  sub_2528BE6C0();
  v109 = sub_2528BF400();
  (*(*(v109 - 8) + 8))(v54, v109);
  v100[1](v99, v139);
  (*(v96 + 8))(v103, v95);
  v110 = v137;
  sub_25283B8C4(v36, v137, type metadata accessor for DeviceEntity);
  (*(v135 + 56))(v110, 0, 1, v138);
  return sub_25283B92C(v36, type metadata accessor for DeviceEntity);
}

uint64_t sub_252823B48()
{
  v0 = sub_2528BECF0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2528BFC70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2528BF390();
  sub_2528BFF40();
  if (*(v10 + 16) && (v11 = sub_252785C40(v4), (v12 & 1) != 0))
  {
    (*(v6 + 16))(v9, *(v10 + 56) + *(v6 + 72) * v11, v5);
    (*(v1 + 8))(v4, v0);

    v13 = sub_2528BFC60();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2528C3910;
    *(inited + 32) = v13;
    v17 = inited + 32;
    *(inited + 40) = v15;
    v18 = sub_252749DC8(inited);
    swift_setDeallocating();
    sub_252836884(v17);
    return v18;
  }

  else
  {

    (*(v1 + 8))(v4, v0);
    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_252823DA0()
{
  v25 = sub_2528BFC70();
  v0 = *(v25 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v25);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2528BECF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = sub_2528BF390();
  sub_2528BFF40();
  if (*(v15 + 16) && (v16 = sub_252785C40(v9), (v17 & 1) != 0))
  {
    (*(v0 + 16))(v3, *(v15 + 56) + *(v0 + 72) * v16, v25);
    v18 = v0;
    v19 = *(v5 + 8);
    v19(v9, v4);

    sub_2528BFC50();
    (*(v18 + 8))(v3, v25);
    (*(v5 + 32))(v14, v12, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2528C3910;
    *(inited + 32) = sub_2528BECB0();
    *(inited + 40) = v21;
    v22 = sub_252749DC8(inited);
    swift_setDeallocating();
    sub_252836884(inited + 32);
    v19(v14, v4);
    return v22;
  }

  else
  {

    (*(v5 + 8))(v9, v4);
    return MEMORY[0x277D84FA0];
  }
}

uint64_t DeviceEntity.init(staticEndpoint:staticMatterDevice:home:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v206 = a2;
  v194 = a4;
  v6 = sub_2528BFF00();
  v201 = *(v6 - 8);
  v202 = v6;
  v7 = *(v201 + 64);
  MEMORY[0x28223BE20](v6);
  v184 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2528BF290();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v178 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_2528BFA70();
  v177 = *(v179 - 8);
  v12 = *(v177 + 64);
  MEMORY[0x28223BE20](v179);
  v176 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC650, &qword_2528C4768);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v186 = &v174 - v16;
  v188 = sub_2528BFCF0();
  v187 = *(v188 - 1);
  v17 = *(v187 + 64);
  v18 = MEMORY[0x28223BE20](v188);
  v181 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v185 = &v174 - v20;
  v193 = sub_2528BFB20();
  v21 = *(v193 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v193);
  v183 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v182 = &v174 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v205 = &v174 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v174 - v29;
  v203 = sub_2528BECF0();
  v31 = *(v203 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v203);
  v189 = &v174 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v174 - v35;
  v37 = sub_2528BEC40();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v200 = type metadata accessor for DeviceEntity();
  v192 = *(v200 - 8);
  v39 = *(v192 + 64);
  MEMORY[0x28223BE20](v200);
  v41 = (&v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v199 = sub_2528BE730();
  *v41 = v199;
  sub_2528BEC20();
  v197 = sub_2528BE730();
  v41[1] = v197;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  v196 = sub_2528BE700();
  v41[2] = v196;
  sub_2528BEC20();
  v198 = sub_2528BE730();
  v41[3] = v198;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  v190 = sub_2528BE730();
  v41[4] = v190;
  sub_2528BEC20();
  v191 = sub_2528BE730();
  v41[5] = v191;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  v195 = sub_2528BE730();
  v41[6] = v195;
  v204 = a3;
  v42 = sub_2528259AC();
  v207 = a1;
  sub_2528BFB00();
  if (!*(v42 + 16) || (v43 = sub_252785C40(v36), (v44 & 1) == 0))
  {

    v78 = (v31 + 8);
    v188 = *(v31 + 8);
    v188(v36, v203);
    if (qword_27F4FBB40 != -1)
    {
LABEL_58:
      swift_once();
    }

    v79 = sub_2528C08B0();
    __swift_project_value_buffer(v79, qword_27F5025C8);
    v80 = *(v21 + 16);
    v81 = v207;
    v82 = v21;
    v83 = v193;
    v80(v30, v207, v193);
    v84 = v205;
    v80(v205, v81, v83);
    v85 = sub_2528C0890();
    v86 = sub_2528C0CF0();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v180 = v78;
      v88 = v87;
      v187 = swift_slowAlloc();
      v208 = v187;
      *v88 = 136315394;
      sub_25283C680(&qword_27F4FF528, MEMORY[0x277D15C30]);
      LODWORD(v186) = v86;
      v89 = sub_2528C1040();
      v90 = v203;
      v91 = v84;
      v93 = v92;
      v94 = *(v82 + 8);
      v94(v30, v83);
      v95 = sub_2527389AC(v89, v93, &v208);

      *(v88 + 4) = v95;
      *(v88 + 12) = 2080;
      v96 = v189;
      sub_2528BFB00();
      sub_25283C680(&qword_27F4FD070, MEMORY[0x277CC95F0]);
      v97 = sub_2528C1040();
      v99 = v98;
      v188(v96, v90);
      v94(v91, v83);
      v100 = sub_2527389AC(v97, v99, &v208);

      *(v88 + 14) = v100;
      _os_log_impl(&dword_252711000, v85, v186, "Unable to create DeviceEntity for %s because can't find room with id %s", v88, 0x16u);
      v101 = v187;
      swift_arrayDestroy();
      MEMORY[0x2530A8D80](v101, -1, -1);
      MEMORY[0x2530A8D80](v88, -1, -1);

      v94(v207, v83);
    }

    else
    {

      v102 = *(v82 + 8);
      v102(v81, v83);
      v102(v84, v83);
      v102(v30, v83);
    }

    v74 = v194;
    v76 = v201;
    v75 = v202;
    goto LABEL_15;
  }

  v175 = v21;
  v45 = v203;
  v46 = *(v31 + 8);
  v205 = *(*(v42 + 56) + 8 * v43);
  v47 = v36;
  v48 = v45;
  v180 = (v31 + 8);
  v46(v47, v45);

  v49 = [v204 accessories];
  sub_25272BFF4(0, &qword_27F4FF550, 0x277CD1650);
  v50 = sub_2528C0B30();

  MEMORY[0x28223BE20](v51);
  *(&v174 - 2) = v206;
  v21 = 0;
  v52 = sub_2527AAE00(sub_252839DB8, (&v174 - 4), v50);

  if (!v52)
  {
    v104 = v207;
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v105 = sub_2528C08B0();
    __swift_project_value_buffer(v105, qword_27F5025C8);
    v106 = v175;
    v107 = v183;
    v108 = v193;
    (*(v175 + 16))(v183, v104, v193);
    v76 = v201;
    v109 = v184;
    v110 = v202;
    (*(v201 + 16))(v184, v206);
    v111 = sub_2528C0890();
    v112 = sub_2528C0CF0();
    if (!os_log_type_enabled(v111, v112))
    {
      (*(v76 + 8))(v109, v110);

      v127 = *(v106 + 8);
      v127(v104, v108);
      v127(v107, v108);
      v75 = v110;
      v77 = v192;
      v74 = v194;
      goto LABEL_16;
    }

    v113 = swift_slowAlloc();
    v114 = v109;
    v115 = swift_slowAlloc();
    v208 = v115;
    *v113 = 136315394;
    sub_25283C680(&qword_27F4FF528, MEMORY[0x277D15C30]);
    v116 = sub_2528C1040();
    v118 = v117;
    v119 = *(v106 + 8);
    v119(v107, v108);
    v120 = sub_2527389AC(v116, v118, &v208);

    *(v113 + 4) = v120;
    *(v113 + 12) = 2048;
    v121 = sub_2528BFED0();
    (*(v201 + 8))(v114, v202);
    *(v113 + 14) = v121;
    _os_log_impl(&dword_252711000, v111, v112, "Unable to create DeviceEntity for %s because can't find the accessory for nodeID %llu", v113, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v115);
    v74 = v194;
    MEMORY[0x2530A8D80](v115, -1, -1);
    v122 = v202;
    MEMORY[0x2530A8D80](v113, -1, -1);

    v119(v207, v108);
    v76 = v201;
    v75 = v122;
LABEL_15:
    v77 = v192;
LABEL_16:
    (*(v76 + 8))(v206, v75);

    return (*(v77 + 56))(v74, 1, 1, v200);
  }

  v53 = v186;
  v54 = v207;
  sub_2528BFAD0();
  v55 = v187;
  v56 = v188;
  if ((*(v187 + 48))(v53, 1, v188) == 1)
  {
    sub_2527213D8(v53, &qword_27F4FC650, &qword_2528C4768);
LABEL_6:
    v57 = v193;
    v58 = v175;
    v59 = v182;
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v60 = sub_2528C08B0();
    __swift_project_value_buffer(v60, qword_27F5025C8);
    (*(v58 + 16))(v59, v54, v57);
    v61 = sub_2528C0890();
    v62 = sub_2528C0CF0();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v184 = v52;
      v65 = v64;
      v208 = v64;
      *v63 = 136315138;
      sub_25283C680(&qword_27F4FF528, MEMORY[0x277D15C30]);
      v66 = sub_2528C1040();
      v68 = v67;
      v69 = v59;
      v70 = v57;
      v71 = *(v58 + 8);
      v71(v69, v70);
      v72 = sub_2527389AC(v66, v68, &v208);

      *(v63 + 4) = v72;
      _os_log_impl(&dword_252711000, v61, v62, "Unable to create DeviceEntity for %s because primaryDeviceType couldn't be determined ", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      v73 = v194;
      MEMORY[0x2530A8D80](v65, -1, -1);
      MEMORY[0x2530A8D80](v63, -1, -1);

      v71(v207, v70);
      v74 = v73;
      v76 = v201;
      v75 = v202;
      v77 = v192;
    }

    else
    {

      v128 = *(v58 + 8);
      v128(v54, v57);
      v128(v59, v57);
      v76 = v201;
      v75 = v202;
      v77 = v192;
      v74 = v194;
    }

    goto LABEL_16;
  }

  v184 = v52;
  v123 = v185;
  (*(v55 + 32))(v185, v53, v56);
  v124 = v181;
  (*(v55 + 16))(v181, v123, v56);
  v125 = (*(v55 + 88))(v124, v56);
  v126 = 15;
  if (v125 != *MEMORY[0x277D15ED0] && v125 != *MEMORY[0x277D15F00] && v125 != *MEMORY[0x277D15F28] && v125 != *MEMORY[0x277D15F18])
  {
    v126 = 26;
    if (v125 != *MEMORY[0x277D15F08] && v125 != *MEMORY[0x277D15F10])
    {
      v126 = 20;
      if (v125 != *MEMORY[0x277D15F38] && v125 != *MEMORY[0x277D15EF0])
      {
        v126 = 29;
        if (v125 != *MEMORY[0x277D15F20] && v125 != *MEMORY[0x277D15ED8])
        {
          if (v125 == *MEMORY[0x277D15F30])
          {
            v126 = 17;
          }

          else
          {
            if (v125 != *MEMORY[0x277D15EE0])
            {
              v166 = *(v55 + 8);
              v166(v185, v56);
              v166(v124, v56);
              v54 = v207;
              v52 = v184;
              goto LABEL_6;
            }

            v126 = 21;
          }
        }
      }
    }
  }

  LODWORD(v186) = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2528C3910;
  *(inited + 32) = sub_2528BFEC0();
  *(inited + 40) = v130;
  v131 = sub_252749DC8(inited);
  swift_setDeallocating();
  sub_252836884(inited + 32);
  v132 = v200;
  *(v41 + *(v200 + 52)) = v131;
  v41[7] = MEMORY[0x277D84FA0];
  v133 = v204;
  v134 = [v204 uniqueIdentifier];
  v135 = v41 + *(v132 + 48);
  sub_2528BECD0();

  v136 = [v184 uniqueIdentifier];
  v30 = v189;
  sub_2528BECD0();

  v137 = sub_2528BECB0();
  v139 = v138;
  v78 = v48;
  v46(v30, v48);
  v208 = v137;
  v209 = v139;
  sub_2528BE6C0();
  sub_2528BFAB0();
  v140 = v176;
  sub_2528BFA50();
  sub_2528BFA60();
  (*(v177 + 8))(v140, v179);
  v141 = sub_2528BECB0();
  v143 = v142;
  v46(v30, v48);
  v208 = v141;
  v209 = v143;
  sub_2528BE6C0();
  LOWORD(v208) = v186;
  sub_2528BE6C0();
  v208 = sub_2528BFAE0();
  v209 = v144;
  sub_2528BE6C0();
  v145 = [v133 name];
  v146 = sub_2528C09F0();
  v148 = v147;

  v208 = v146;
  v209 = v148;
  sub_2528BE6C0();
  v149 = [v133 zones];
  sub_25272BFF4(0, &qword_27F4FF558, 0x277CD1F50);
  v150 = sub_2528C0B30();

  if (v150 >> 62)
  {
    v203 = v150 & 0xFFFFFFFFFFFFFF8;
    v151 = sub_2528C0EF0();
    if (v151)
    {
LABEL_39:
      v152 = 0;
      v199 = v150 & 0xC000000000000001;
      v198 = MEMORY[0x277D84F90];
      do
      {
        v153 = v152;
        while (1)
        {
          if (v199)
          {
            v154 = MEMORY[0x2530A84E0](v153, v150);
          }

          else
          {
            if (v153 >= *(v203 + 16))
            {
              goto LABEL_57;
            }

            v154 = *(v150 + 8 * v153 + 32);
          }

          v30 = v154;
          v152 = v153 + 1;
          if (__OFADD__(v153, 1))
          {
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v155 = [v154 rooms];
          sub_25272BFF4(0, &qword_27F4FF560, 0x277CD1D88);
          v156 = sub_2528C0B30();

          v78 = &v174;
          v208 = v205;
          MEMORY[0x28223BE20](v157);
          *(&v174 - 2) = &v208;
          LOBYTE(v155) = sub_25281A580(sub_252839E14, (&v174 - 4), v156);

          if (v155)
          {
            break;
          }

          ++v153;
          if (v152 == v151)
          {
            goto LABEL_61;
          }
        }

        v158 = [v30 name];
        v159 = sub_2528C09F0();
        v161 = v160;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v198 = sub_252737D40(0, *(v198 + 2) + 1, 1, v198);
        }

        v163 = *(v198 + 2);
        v162 = *(v198 + 3);
        v30 = (v163 + 1);
        if (v163 >= v162 >> 1)
        {
          v198 = sub_252737D40((v162 > 1), v163 + 1, 1, v198);
        }

        v164 = v198;
        *(v198 + 2) = v30;
        v165 = &v164[16 * v163];
        *(v165 + 4) = v159;
        *(v165 + 5) = v161;
      }

      while (v152 != v151);
      goto LABEL_61;
    }
  }

  else
  {
    v203 = v150 & 0xFFFFFFFFFFFFFF8;
    v151 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v151)
    {
      goto LABEL_39;
    }
  }

  v198 = MEMORY[0x277D84F90];
LABEL_61:

  v167 = sub_252743FCC(v198);

  v208 = v167;
  sub_2528BE6C0();
  v168 = v205;
  v169 = [v205 name];
  v170 = sub_2528C09F0();
  v172 = v171;

  v208 = v170;
  v209 = v172;
  sub_2528BE6C0();

  (*(v175 + 8))(v207, v193);
  (*(v187 + 8))(v185, v188);
  v173 = v194;
  sub_25283B8C4(v41, v194, type metadata accessor for DeviceEntity);
  (*(v192 + 56))(v173, 0, 1, v200);
  (*(v201 + 8))(v206, v202);
  return sub_25283B92C(v41, type metadata accessor for DeviceEntity);
}

uint64_t sub_2528259AC()
{
  v1 = v0;
  v46 = sub_2528BECF0();
  v43 = *(v46 - 8);
  v2 = *(v43 + 64);
  v3 = MEMORY[0x28223BE20](v46);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v38 - v6;
  v8 = sub_252790CE0(MEMORY[0x277D84F90]);
  v9 = [v1 rooms];
  sub_25272BFF4(0, &qword_27F4FF560, 0x277CD1D88);
  v10 = sub_2528C0B30();

  if (v10 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2528C0EF0())
  {
    v39 = v1;
    v40 = v5;
    v12 = 0;
    v5 = (v10 & 0xC000000000000001);
    v41 = v10 & 0xFFFFFFFFFFFFFF8;
    v42 = v43 + 16;
    v44 = i;
    v45 = (v43 + 8);
    while (1)
    {
      if (v5)
      {
        v15 = MEMORY[0x2530A84E0](v12, v10);
      }

      else
      {
        if (v12 >= *(v41 + 16))
        {
          goto LABEL_25;
        }

        v15 = *(v10 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v18 = [v15 uniqueIdentifier];
      sub_2528BECD0();

      v19 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v8;
      v21 = sub_252785C40(v7);
      v23 = v8[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_23;
      }

      v27 = v22;
      if (v8[3] < v26)
      {
        sub_2527DFB3C(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_252785C40(v7);
        if ((v27 & 1) != (v28 & 1))
        {
          result = sub_2528C10A0();
          __break(1u);
          return result;
        }

LABEL_16:
        v8 = v47;
        if (v27)
        {
          goto LABEL_4;
        }

        goto LABEL_17;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v33 = v21;
      sub_2527E24A4();
      v21 = v33;
      v8 = v47;
      if (v27)
      {
LABEL_4:
        v13 = v8[7];
        v14 = *(v13 + 8 * v21);
        *(v13 + 8 * v21) = v19;

        (*v45)(v7, v46);
        goto LABEL_5;
      }

LABEL_17:
      v1 = v5;
      v5 = v10;
      v8[(v21 >> 6) + 8] |= 1 << v21;
      v10 = v43;
      v29 = v21;
      v30 = v46;
      (*(v43 + 16))(v8[6] + *(v43 + 72) * v21, v7, v46);
      *(v8[7] + 8 * v29) = v19;

      (*(v10 + 8))(v7, v30);
      v31 = v8[2];
      v25 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v25)
      {
        goto LABEL_24;
      }

      v8[2] = v32;
      v10 = v5;
      v5 = v1;
LABEL_5:
      ++v12;
      if (v17 == v44)
      {

        v1 = v39;
        v5 = v40;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_28:
  v34 = [v1 roomForEntireHome];
  v35 = [v34 uniqueIdentifier];
  sub_2528BECD0();

  v36 = swift_isUniquelyReferenced_nonNull_native();
  v47 = v8;
  sub_25278C184(v34, v5, v36);
  (*(v43 + 8))(v5, v46);
  return v47;
}

uint64_t DeviceEntity.init(staticCameraProfile:snapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v85 = a1;
  v5 = sub_2528BF030();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v76 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v87 = &v74 - v12;
  v89 = sub_2528BECF0();
  v93 = *(v89 - 8);
  v13 = *(v93 + 64);
  v14 = MEMORY[0x28223BE20](v89);
  v80 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - v16;
  v18 = sub_2528BEE30();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2528BEC40();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  v92 = sub_2528BE730();
  *a3 = v92;
  sub_2528BEC20();
  v83 = sub_2528BE730();
  a3[1] = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  v82 = sub_2528BE700();
  a3[2] = v82;
  sub_2528BEC20();
  v84 = sub_2528BE730();
  a3[3] = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  v86 = sub_2528BE730();
  a3[4] = v86;
  sub_2528BEC20();
  v88 = sub_2528BE730();
  a3[5] = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  a3[6] = sub_2528BE730();
  v25 = type metadata accessor for DeviceEntity();
  v26 = MEMORY[0x277D84FA0];
  *(a3 + *(v25 + 52)) = MEMORY[0x277D84FA0];
  a3[7] = v26;
  v90 = v22;
  sub_2528BF2F0();
  v27 = a3 + *(v25 + 48);
  sub_2528BEE00();
  v28 = *(v19 + 8);
  v91 = v19 + 8;
  v81 = v28;
  v29 = v18;
  v28(v22, v18);
  v30 = v85;
  sub_2528C00E0();
  v31 = sub_2528BECB0();
  v33 = v32;
  v35 = v93 + 8;
  v34 = *(v93 + 8);
  v36 = v89;
  v34(v17, v89);
  v94 = v31;
  v95 = v33;
  sub_2528BE6C0();
  sub_2528C00F0();
  v37 = sub_2528BECB0();
  v39 = v38;
  v77 = v35;
  v34(v17, v36);
  v40 = v34;
  v94 = v37;
  v95 = v39;
  sub_2528BE6C0();
  LOWORD(v94) = 3;
  sub_2528BE6C0();
  v94 = sub_2528C0100();
  v95 = v41;
  sub_2528BE6C0();
  v42 = v90;
  v92 = a2;
  sub_2528BF2F0();
  v43 = sub_2528BEE20();
  v45 = v44;
  v46 = v42;
  v47 = v81;
  v83 = v29;
  v81(v46, v29);
  v48 = v93;
  v94 = v43;
  v95 = v45;
  sub_2528BE6C0();
  v49 = v30;
  v50 = sub_2528C0110();
  v51 = v87;
  sub_2527D3AB8(v50, v87);

  if ((*(v48 + 48))(v51, 1, v36) == 1)
  {
    sub_2527213D8(v51, &qword_27F4FC628, &qword_2528C4750);
  }

  else
  {
    v52 = v80;
    (*(v48 + 32))(v80, v51, v36);
    v53 = sub_2528BF320();
    if (*(v53 + 16) && (v54 = sub_252785C40(v52), (v55 & 1) != 0))
    {
      v57 = v78;
      v56 = v79;
      v58 = v75;
      (*(v78 + 16))(v75, *(v53 + 56) + *(v78 + 72) * v54, v79);

      v59 = sub_2528BEFD0();
      (*(v57 + 8))(v58, v56);
      if (v59)
      {
        v60 = sub_252819AD0(v59, MEMORY[0x277D154F8], MEMORY[0x277D154F0]);

        v61 = sub_252743FCC(v60);

        v94 = v61;
        sub_2528BE6C0();
        v40(v80, v89);
        goto LABEL_10;
      }

      v62 = v80;
      v63 = v89;
    }

    else
    {

      v62 = v52;
      v63 = v36;
    }

    v40(v62, v63);
  }

  v94 = MEMORY[0x277D84FA0];
  sub_2528BE6C0();
LABEL_10:
  v64 = sub_2528C0120();
  if (!v65)
  {
    v66 = v90;
    sub_2528BF2F0();
    v67 = v76;
    sub_2528BEDE0();
    v47(v66, v83);
    v68 = sub_2528BF020();
    v70 = v69;
    (*(v78 + 8))(v67, v79);
    v65 = v70;
    v64 = v68;
  }

  v94 = v64;
  v95 = v65;
  sub_2528BE6C0();
  v71 = sub_2528BF400();
  (*(*(v71 - 8) + 8))(v92, v71);
  v72 = sub_2528C0130();
  return (*(*(v72 - 8) + 8))(v49, v72);
}

uint64_t sub_252826664@<X0>(void *a1@<X8>)
{
  if (qword_27F4FB8C0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27F4FF498;
  v2 = qword_27F4FF4A0;
  v3 = unk_27F4FF4A8;
  v4 = qword_27F4FF4B0;
  v5 = unk_27F4FF4B8;
  *a1 = qword_27F4FF490;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();

  return sub_2528BEA50();
}

uint64_t sub_252826720@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_2528BE6B0();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_25282675C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FF478);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252826804(uint64_t a1)
{
  v2 = sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252826884(uint64_t a1)
{
  v2 = sub_25283C680(&qword_27F4FF5A8, type metadata accessor for DeviceEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t DeviceEntity.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = v1[1];
  sub_2528BE6B0();
  sub_2528C0A40();

  v5 = *v2;
  sub_2528BE6B0();
  sub_2528C0A40();

  v6 = v2[2];
  sub_2528BE6B0();
  DeviceType.hash(into:)();
  v7 = v2[3];
  sub_2528BE6B0();
  sub_2528C0A40();

  v8 = v2[5];
  sub_2528BE6B0();
  sub_2528C0A40();

  v9 = type metadata accessor for DeviceEntity();
  return sub_252834B90(a1, *(v2 + *(v9 + 52)));
}

uint64_t DeviceEntity.hashValue.getter()
{
  sub_2528C1130();
  DeviceEntity.hash(into:)(v1);
  return sub_2528C1180();
}

uint64_t sub_252826A40()
{
  sub_2528C1130();
  DeviceEntity.hash(into:)(v1);
  return sub_2528C1180();
}

uint64_t sub_252826A84()
{
  sub_2528C1130();
  DeviceEntity.hash(into:)(v1);
  return sub_2528C1180();
}

uint64_t sub_252826AC0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BECF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2528BEC40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *a1 = sub_2528BE730();
  sub_2528BEC20();
  a1[1] = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  sub_2528BEC20();
  sub_25281EE00();
  a1[2] = sub_2528BE700();
  sub_2528BEC20();
  a1[3] = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  sub_2528BEC20();
  a1[4] = sub_2528BE730();
  sub_2528BEC20();
  a1[5] = sub_2528BE730();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD990, &unk_2528C9548);
  sub_2528BEC20();
  a1[6] = sub_2528BE730();
  v9 = type metadata accessor for DeviceEntity();
  v10 = MEMORY[0x277D84FA0];
  *(a1 + *(v9 + 52)) = MEMORY[0x277D84FA0];
  a1[7] = v10;
  v11 = a1 + *(v9 + 48);
  sub_2528BE550();
  sub_2528BE550();
  v12 = sub_2528BECB0();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v16[0] = v12;
  v16[1] = v14;
  return sub_2528BE6C0();
}

uint64_t sub_252826DBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF568, &qword_2528D36E8);
  __swift_allocate_value_buffer(v0, qword_27F4FF4C0);
  __swift_project_value_buffer(v0, qword_27F4FF4C0);
  type metadata accessor for DeviceEntity();
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  return sub_2528BE990();
}

uint64_t sub_252826E78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF918, &qword_2528D41E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  swift_getKeyPath();
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  sub_25272275C(&qword_27F4FC948, &qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEAD0();
  type metadata accessor for DeviceEntity();
  sub_2528BEAF0();
  v8 = *(v1 + 8);
  v8(v5, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF920, &qword_2528D41E8);
  v9 = *(v1 + 72);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v11 + v10, v7, v0);
  v12 = sub_2528BEAE0();

  v8(v7, v0);
  return v12;
}

uint64_t static DeviceEntityQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF568, &qword_2528D36E8);
  v3 = __swift_project_value_buffer(v2, qword_27F4FF4C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252827178()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF570, &qword_2528D36F0);
  __swift_allocate_value_buffer(v0, qword_27F4FF4D8);
  __swift_project_value_buffer(v0, qword_27F4FF4D8);
  type metadata accessor for DeviceEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C0, &qword_2528D3D20);
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  return sub_2528BE920();
}

uint64_t sub_252827258()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6D0, &qword_2528D3E20);
  swift_getKeyPath();
  sub_2528BE870();
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  v0 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6D8, &qword_2528D3E50);
  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v1 = sub_2528BEA50();

  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v2 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6E0, &qword_2528D3EA8);
  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v3 = sub_2528BEA50();

  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v4 = sub_2528BEA50();

  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v5 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8C8, &qword_2528C49E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2528D3560;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  type metadata accessor for DeviceEntity();
  sub_2528BEA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C0, &qword_2528D3D20);
  v7 = sub_2528BEA40();

  return v7;
}

uint64_t sub_2528275E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF858, &qword_2528D40F8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF860, &qword_2528D4100);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for DeviceEntity();
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF868, &qword_2528D4108);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v10 + v9, v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF500, &qword_2528D3588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C0, &qword_2528D3D20);
  sub_2527FE2E0();
  v11 = sub_2528BEAB0();

  (*(v1 + 8))(v4, v0);
  return v11;
}

uint64_t sub_252827840(__int16 *a1)
{
  v2 = *a1;
  type metadata accessor for DeviceEntity();
  return sub_2528BED80();
}

uint64_t sub_2528278A4@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF710, &qword_2528D3F60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF870, &qword_2528D4110);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF878, &qword_2528D4118);
  v15 = *(v14 - 8);
  v27 = v14;
  v28 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v24[-v17];
  v19 = *a1;
  sub_25272275C(&qword_27F4FF728, &qword_27F4FF710, &qword_2528D3F60);
  sub_2528BEB90();
  swift_getKeyPath();
  sub_2528BEB40();

  (*(v5 + 8))(v8, v4);
  swift_getKeyPath();
  sub_25272275C(&qword_27F4FF880, &qword_27F4FF870, &qword_2528D4110);
  sub_2528BEB40();

  (*(v10 + 8))(v13, v9);
  v29 = v25;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF888, &qword_2528D4170);
  v21 = v26;
  v26[3] = v20;
  v21[4] = sub_25283C340();
  __swift_allocate_boxed_opaque_existential_0Tm(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF8B0, &qword_2528D4178);
  sub_25272275C(&qword_27F4FF8E8, &qword_27F4FF878, &qword_2528D4118);
  sub_25272275C(&qword_27F4FF8F0, &qword_27F4FF8B0, &qword_2528D4178);
  sub_25272275C(&qword_27F4FF8F8, &qword_27F4FF900, &qword_2528D4190);
  v22 = v27;
  sub_2528BEB50();
  return (*(v28 + 8))(v18, v22);
}

uint64_t sub_252827CB0@<X0>(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF8D0, &qword_2528D4188);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF8C0, &qword_2528D4180);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  sub_25272275C(&qword_27F4FF908, &qword_27F4FF8C0, &qword_2528D4180);
  sub_2528BEB90();
  v15 = a1;
  sub_2528BEB80();
  sub_25272275C(&qword_27F4FF910, &qword_27F4FF8D0, &qword_2528D4188);
  sub_252805B74();
  sub_2528BEB20();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_252827F04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6E8, &qword_2528D3F30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6F0, &qword_2528D3F38);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for DeviceEntity();
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6F8, &qword_2528D3F40);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v10 + v9, v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C0, &qword_2528D3D20);
  sub_25274690C();
  v11 = sub_2528BEAB0();

  (*(v1 + 8))(v4, v0);
  return v11;
}

uint64_t sub_252828174()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF790, &qword_2528D3FF0);
  v14 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF798, &qword_2528D3FF8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for DeviceEntity();
  sub_25283C680(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7A0, &qword_2528D4000);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v10 + v9, v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF510, &unk_2528D3590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF610, &unk_2528D3BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF6C0, &qword_2528D3D20);
  sub_25283B704(&qword_27F4FF618, &qword_27F4FF610, &unk_2528D3BA0);
  v11 = sub_2528BEAB0();

  (*(v1 + 8))(v4, v14);
  return v11;
}

uint64_t sub_252828424(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for DeviceEntity();
  return sub_2528BED80();
}

uint64_t sub_252828488@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7A8, &qword_2528D4008);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v47 = &v41 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7B0, &qword_2528D4010);
  v52 = *(v50 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v46 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF710, &qword_2528D3F60);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF700, &qword_2528D3F48);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7B8, &qword_2528D4018);
  v22 = *(v21 - 8);
  v42 = v21;
  v43 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v41 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7C0, &qword_2528D4020);
  v27 = *(v26 - 8);
  v44 = v26;
  v45 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v41 = &v41 - v29;
  v30 = *a1;
  sub_25272275C(&qword_27F4FF728, &qword_27F4FF710, &qword_2528D3F60);
  sub_2528BEB90();
  swift_getKeyPath();
  sub_2528BEB40();

  (*(v12 + 8))(v15, v11);
  v53 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7C8, &qword_2528D4050);
  sub_25272275C(&qword_27F4FF738, &qword_27F4FF700, &qword_2528D3F48);
  sub_25272275C(&qword_27F4FF7D0, &qword_27F4FF7C8, &qword_2528D4050);
  sub_25272275C(&qword_27F4FF740, &qword_27F4FF610, &unk_2528D3BA0);
  sub_2528BEB30();
  (*(v17 + 8))(v20, v16);
  swift_getKeyPath();
  sub_25272275C(&qword_27F4FF7D8, &qword_27F4FF7B8, &qword_2528D4018);
  v32 = v41;
  v31 = v42;
  sub_2528BEB40();

  (*(v43 + 8))(v25, v31);
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF610, &unk_2528D3BA0);
  v33 = v47;
  sub_2528BEB80();
  swift_getKeyPath();
  sub_25272275C(&qword_27F4FF7E0, &qword_27F4FF7A8, &qword_2528D4008);
  v34 = v46;
  v35 = v48;
  sub_2528BEB40();

  (*(v49 + 8))(v33, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7E8, &qword_2528D40C0);
  v37 = v51;
  v51[3] = v36;
  v37[4] = sub_25283BF10();
  __swift_allocate_boxed_opaque_existential_0Tm(v37);
  sub_25272275C(&qword_27F4FF840, &qword_27F4FF7C0, &qword_2528D4020);
  sub_25272275C(&qword_27F4FF848, &qword_27F4FF7B0, &qword_2528D4010);
  v38 = v44;
  v39 = v50;
  sub_2528BEB20();
  (*(v52 + 8))(v34, v39);
  return (*(v45 + 8))(v32, v38);
}

uint64_t sub_252828B80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF830, &qword_2528D40C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF7A8, &qword_2528D4008);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v14 - v11;
  v14[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF610, &unk_2528D3BA0);
  sub_2528BEB80();
  sub_25272275C(&qword_27F4FF850, &qword_27F4FF830, &qword_2528D40C8);
  sub_2528BEB90();
  sub_25272275C(&qword_27F4FF7E0, &qword_27F4FF7A8, &qword_2528D4008);
  sub_25272275C(&qword_27F4FF740, &qword_27F4FF610, &unk_2528D3BA0);
  sub_2528BEB60();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_252828E30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v26 = a4;
  v27 = a2;
  v28 = a3;
  v29 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8E8, &qword_2528C4A00);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF710, &qword_2528D3F60);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF718, &qword_2528D3F68);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  v21 = *a1;
  sub_25272275C(&qword_27F4FF728, &qword_27F4FF710, &qword_2528D3F60);
  sub_2528BEB90();
  swift_getKeyPath();
  sub_2528BEB40();

  (*(v12 + 8))(v15, v11);
  v32 = v27;
  v33 = v28;
  sub_2528BEB80();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF720, &qword_2528D3F70);
  v23 = v29;
  v29[3] = v22;
  v23[4] = sub_25283BCFC();
  __swift_allocate_boxed_opaque_existential_0Tm(v23);
  sub_25272275C(&qword_27F4FF730, &qword_27F4FF718, &qword_2528D3F68);
  sub_25272275C(&qword_27F4FC938, &qword_27F4FC8E8, &qword_2528C4A00);
  v24 = v30;
  sub_2528BEB20();
  (*(v31 + 8))(v10, v24);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_2528291CC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for DeviceEntity();
  return sub_2528BED80();
}

uint64_t sub_252829224@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v58 = a5;
  v53 = a4;
  v64 = a3;
  v47 = a2;
  v51 = a1;
  v61 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF700, &qword_2528D3F48);
  v8 = *(v7 - 8);
  v59 = v7;
  v60 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF708, &unk_2528D3F50);
  v12 = *(v11 - 8);
  v62 = v11;
  v63 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = v46 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8E8, &qword_2528C4A00);
  v65 = *(v52 - 8);
  v15 = *(v65 + 64);
  MEMORY[0x28223BE20](v52);
  v17 = v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF710, &qword_2528D3F60);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF718, &qword_2528D3F68);
  v24 = *(v23 - 8);
  v48 = v23;
  v49 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v46 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF720, &qword_2528D3F70);
  v29 = *(v28 - 8);
  v55 = v28;
  v56 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = *v51;
  v50 = v46 - v32;
  v51 = v31;
  sub_25272275C(&qword_27F4FF728, &qword_27F4FF710, &qword_2528D3F60);
  sub_2528BEB90();
  swift_getKeyPath();
  sub_2528BEB40();

  v33 = *(v19 + 8);
  v46[1] = v19 + 8;
  v53 = v33;
  v33(v22, v18);
  v66 = a2;
  v67 = v64;
  sub_2528BEB80();
  sub_25272275C(&qword_27F4FF730, &qword_27F4FF718, &qword_2528D3F68);
  v46[0] = sub_25272275C(&qword_27F4FC938, &qword_27F4FC8E8, &qword_2528C4A00);
  v34 = v48;
  v35 = v52;
  sub_2528BEB20();
  v36 = *(v65 + 8);
  v65 += 8;
  v36(v17, v35);
  (*(v49 + 8))(v27, v34);
  sub_2528BEB90();
  swift_getKeyPath();
  v37 = v54;
  sub_2528BEB40();

  v53(v22, v18);
  v66 = v47;
  v67 = v64;
  sub_2528BEB80();
  sub_25272275C(&qword_27F4FF738, &qword_27F4FF700, &qword_2528D3F48);
  sub_25272275C(&qword_27F4FF740, &qword_27F4FF610, &unk_2528D3BA0);
  v38 = v57;
  v39 = v59;
  sub_2528BEB60();
  v36(v17, v35);
  (*(v60 + 8))(v37, v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF748, &qword_2528D3FC0);
  v41 = v61;
  v61[3] = v40;
  v41[4] = sub_25283BC70();
  __swift_allocate_boxed_opaque_existential_0Tm(v41);
  sub_25272275C(&qword_27F4FF780, &qword_27F4FF720, &qword_2528D3F70);
  sub_25272275C(&qword_27F4FF788, &qword_27F4FF708, &unk_2528D3F50);
  v42 = v50;
  v43 = v55;
  v44 = v62;
  sub_2528BEB70();
  (*(v63 + 8))(v38, v44);
  return (*(v56 + 8))(v42, v43);
}

uint64_t static DeviceEntityQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF570, &qword_2528D36F0);
  v3 = __swift_project_value_buffer(v2, qword_27F4FF4D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252829A08@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v53 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v53 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v53 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v53 - v16;
  v18 = *v1;
  v61 = v1[1];
  v19 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v21 = v1[5];
  if (sub_2528BE9A0())
  {
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v23 = type metadata accessor for HomeEntity(0);
    v24 = *(*(v23 - 8) + 56);
    v24(v17, 0, 1, v23);
    v25 = v17;
    v26 = v62;
    sub_25283BBDC(v25, v62, type metadata accessor for HomeEntity);
    return (v24)(v26, 0, 1, v23);
  }

  else
  {
    v56 = v9;
    v57 = v19;
    v54 = v6;
    v55 = v20;
    v53[1] = v21;
    v53[2] = v22;
    v28 = v62;
    v58 = v12;
    v60 = v15;
    v29 = type metadata accessor for HomeEntity(0);
    v30 = *(v29 - 8);
    v31 = v30;
    v32 = v17;
    v33 = *(v30 + 56);
    v34 = v30 + 56;
    v59 = v32;
    v33();
    if (sub_2528BE9A0())
    {
      swift_getKeyPath();
      sub_252744BB0();
      v35 = v60;
      sub_2528BE840();

      (v33)(v35, 0, 1, v29);
      sub_25283BBDC(v35, v28, type metadata accessor for HomeEntity);
      (v33)(v28, 0, 1, v29);
      v36 = v59;
      result = (*(v31 + 48))(v59, 1, v29);
    }

    else
    {
      v61 = v31;
      (v33)(v60, 1, 1, v29);
      v37 = v29;
      v38 = v28;
      if (sub_2528BE9A0())
      {
        swift_getKeyPath();
        sub_252744BB0();
        v39 = v58;
        sub_2528BE840();

        (v33)(v39, 0, 1, v29);
        sub_25283BBDC(v39, v28, type metadata accessor for HomeEntity);
        (v33)(v28, 0, 1, v29);
        v40 = v60;
        v41 = *(v61 + 48);
        v36 = v59;
        v42 = v41(v60, 1, v29);
      }

      else
      {
        v43 = v58;
        (v33)(v58, 1, 1, v37);
        if (sub_2528BE9A0())
        {
          swift_getKeyPath();
          sub_252744BB0();
          v44 = v56;
          sub_2528BE840();

          (v33)(v44, 0, 1, v37);
          sub_25283BBDC(v44, v28, type metadata accessor for HomeEntity);
          (v33)(v28, 0, 1, v37);
          v40 = v60;
          v41 = *(v61 + 48);
          v36 = v59;
          v45 = v41(v43, 1, v37);
        }

        else
        {
          v46 = v56;
          (v33)(v56, 1, 1, v37);
          v47 = sub_2528BE9A0();
          v40 = v60;
          if (v47)
          {
            swift_getKeyPath();
            sub_252744BB0();
            v48 = v54;
            sub_2528BE840();

            (v33)(v48, 0, 1, v37);
            sub_25283BBDC(v48, v38, type metadata accessor for HomeEntity);
            (v33)(v38, 0, 1, v37);
            v41 = *(v61 + 48);
            v36 = v59;
            v49 = v41(v46, 1, v37);
          }

          else
          {
            v50 = 1;
            v57 = v34;
            v51 = v33;
            (v33)(v54, 1, 1, v37);
            if (sub_2528BE9A0())
            {
              swift_getKeyPath();
              sub_252744BB0();
              sub_2528BE840();

              v50 = 0;
            }

            v36 = v59;
            (v51)(v38, v50, 1, v37);
            v41 = *(v61 + 48);
            v52 = v54;
            if (v41(v54, 1, v37) != 1)
            {
              sub_2527213D8(v52, &qword_27F4FC488, &unk_2528C3F80);
            }

            v49 = v41(v46, 1, v37);
          }

          if (v49 != 1)
          {
            sub_2527213D8(v46, &qword_27F4FC488, &unk_2528C3F80);
          }

          v45 = v41(v43, 1, v37);
        }

        if (v45 != 1)
        {
          sub_2527213D8(v43, &qword_27F4FC488, &unk_2528C3F80);
        }

        v42 = v41(v40, 1, v37);
      }

      if (v42 != 1)
      {
        sub_2527213D8(v40, &qword_27F4FC488, &unk_2528C3F80);
      }

      result = v41(v36, 1, v37);
    }

    if (result != 1)
    {
      return sub_2527213D8(v36, &qword_27F4FC488, &unk_2528C3F80);
    }
  }

  return result;
}

uint64_t sub_25282A164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_25272006C(a1, &v13 - v9, &qword_27F4FC488, &unk_2528C3F80);
  v11 = *(a2 + 8);
  sub_25272006C(v10, v8, &qword_27F4FC488, &unk_2528C3F80);
  sub_2528BE7A0();
  return sub_2527213D8(v10, &qword_27F4FC488, &unk_2528C3F80);
}

uint64_t DeviceEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  *(v2 + 72) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  v6 = sub_2528BECF0();
  *(v2 + 96) = v6;
  v7 = *(v6 - 8);
  *(v2 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8);
  *(v2 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  v12 = sub_2528C05D0();
  *(v2 + 168) = v12;
  v13 = *(v12 - 8);
  *(v2 + 176) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v2 + 208) = v15;
  v16 = *(v15 - 8);
  *(v2 + 216) = v16;
  *(v2 + 224) = *(v16 + 64);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v17 = v1[1];
  *(v2 + 256) = *v1;
  *(v2 + 272) = v17;
  *(v2 + 288) = v1[2];

  return MEMORY[0x2822009F8](sub_25282A558, 0, 0);
}

uint64_t sub_25282A558()
{
  v84 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 64);
  strcpy(v82, "identifiers: ");
  HIWORD(v82[0]) = -4864;
  v75 = *(v0 + 272);
  v78 = *(v0 + 256);
  v73 = *(v0 + 288);
  v3 = MEMORY[0x2530A81A0](v2, MEMORY[0x277D837D0]);
  MEMORY[0x2530A80B0](v3);

  v4 = v82[0];
  v82[0] = v78;
  v82[1] = v75;
  v82[2] = v73;
  sub_252829A08(v1);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = sub_2528C08B0();
  __swift_project_value_buffer(v7, qword_27F5025C8);
  sub_25272006C(v5, v6, &qword_27F4FC488, &unk_2528C3F80);

  v8 = sub_2528C0890();
  v9 = sub_2528C0D10();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 240);
  if (v10)
  {
    v12 = *(v0 + 208);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v83 = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_2527389AC(v4, *(&v4 + 1), &v83);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2527389AC(0x7972657571, 0xE500000000000000, &v83);
    *(v13 + 22) = 2080;
    v15 = sub_2528C0DB0();
    v17 = v16;
    sub_2527213D8(v11, &qword_27F4FC488, &unk_2528C3F80);
    v18 = sub_2527389AC(v15, v17, &v83);

    *(v13 + 24) = v18;
    _os_log_impl(&dword_252711000, v8, v9, "Query: Performing device query {%s} for %s with homeEntity: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v14, -1, -1);
    MEMORY[0x2530A8D80](v13, -1, -1);
  }

  else
  {

    sub_2527213D8(v11, &qword_27F4FC488, &unk_2528C3F80);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 248);
  v21 = *(v0 + 224);
  v20 = *(v0 + 232);
  v22 = *(v0 + 216);
  v79 = *(v0 + 64);
  v23 = sub_2528C0820();
  __swift_project_value_buffer(v23, qword_27F5025E0);
  sub_25272006C(v19, v20, &qword_27F4FC488, &unk_2528C3F80);
  v24 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v25 = (v21 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0x7972657571;
  *(v26 + 24) = 0xE500000000000000;
  *(v26 + 32) = v4;
  sub_25274AA0C(v20, v26 + v24, &qword_27F4FC488, &unk_2528C3F80);
  *(v26 + v25) = 0;
  *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;

  *(v0 + 304) = sub_2528B73C8(0, 0, sub_252839E7C);

  sub_2527213D8(v19, &qword_27F4FC488, &unk_2528C3F80);
  v27 = *(v79 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v29 = *(v0 + 128);
    v30 = *(v0 + 64);
    *&v82[0] = MEMORY[0x277D84F90];
    sub_25282F24C(0, v27, 0);
    v28 = *&v82[0];
    v31 = (v30 + 40);
    do
    {
      v32 = *(v0 + 152);
      v33 = *(v31 - 1);
      v34 = *v31;

      sub_2528BECA0();

      *&v82[0] = v28;
      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_25282F24C(v35 > 1, v36 + 1, 1);
        v28 = *&v82[0];
      }

      v37 = *(v0 + 152);
      *(v28 + 16) = v36 + 1;
      sub_25274AA0C(v37, v28 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v36, &qword_27F4FC628, &qword_2528C4750);
      v31 += 2;
      --v27;
    }

    while (v27);
  }

  v38 = *(v0 + 160);
  (*(*(v0 + 104) + 56))(v38, 1, 1, *(v0 + 96));
  v39 = sub_25277B41C(v38, v28);
  sub_2527213D8(v38, &qword_27F4FC628, &qword_2528C4750);
  if (v39)
  {
    v40 = *(v0 + 192);

    sub_2528C05B0();
  }

  else
  {
    v41 = *(v0 + 184);
    sub_2528C05B0();
    v42 = *(v28 + 16);
    if (v42)
    {
      v43 = *(v0 + 128);
      v44 = v28 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v80 = *(v43 + 72);
      v72 = *(v0 + 104);
      v76 = (v72 + 32);
      v45 = MEMORY[0x277D84F90];
      do
      {
        v47 = *(v0 + 136);
        v46 = *(v0 + 144);
        v48 = *(v0 + 96);
        sub_25272006C(v44, v46, &qword_27F4FC628, &qword_2528C4750);
        sub_25274AA0C(v46, v47, &qword_27F4FC628, &qword_2528C4750);
        if ((*(v72 + 48))(v47, 1, v48) == 1)
        {
          sub_2527213D8(*(v0 + 136), &qword_27F4FC628, &qword_2528C4750);
        }

        else
        {
          v49 = *v76;
          (*v76)(*(v0 + 112), *(v0 + 136), *(v0 + 96));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_252737E4C(0, *(v45 + 2) + 1, 1, v45);
          }

          v51 = *(v45 + 2);
          v50 = *(v45 + 3);
          if (v51 >= v50 >> 1)
          {
            v45 = sub_252737E4C(v50 > 1, v51 + 1, 1, v45);
          }

          v52 = *(v0 + 112);
          v53 = *(v0 + 96);
          *(v45 + 2) = v51 + 1;
          v49(&v45[((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v51], v52, v53);
        }

        v44 += v80;
        --v42;
      }

      while (v42);
    }

    else
    {

      v45 = MEMORY[0x277D84F90];
    }

    v54 = *(v0 + 184);
    v55 = *(v0 + 192);
    v56 = *(v0 + 168);
    v57 = *(v0 + 176);
    v58 = *(v0 + 120);
    v59 = sub_252743D54(v45);

    *v58 = v59;
    v60 = *MEMORY[0x277D16518];
    v61 = sub_2528C00B0();
    v62 = *(v61 - 8);
    (*(v62 + 104))(v58, v60, v61);
    (*(v62 + 56))(v58, 0, 1, v61);
    sub_2528C05C0();
    sub_2527213D8(v58, &qword_27F4FC478, &unk_2528C3F70);
    (*(v57 + 8))(v54, v56);
  }

  v63 = *(v0 + 232);
  v64 = *(v0 + 200);
  v65 = *(v0 + 168);
  v66 = *(v0 + 176);
  v67 = *(v0 + 88);
  v77 = *(v0 + 272);
  v81 = *(v0 + 256);
  v74 = *(v0 + 288);
  (*(v66 + 32))(v64, *(v0 + 192), v65);
  *(v0 + 16) = v81;
  *(v0 + 32) = v77;
  *(v0 + 48) = v74;
  sub_252829A08(v63);
  (*(v66 + 16))(v67, v64, v65);
  (*(v66 + 56))(v67, 0, 1, v65);
  v68 = swift_task_alloc();
  *(v0 + 312) = v68;
  *v68 = v0;
  v68[1] = sub_25282AE44;
  v69 = *(v0 + 232);
  v70 = *(v0 + 88);

  return sub_25277ECE4(v69, 0, 1, v70);
}

uint64_t sub_25282AE44(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 320) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_25282AFA0, 0, 0);
}

uint64_t sub_25282AFA0()
{
  v1 = v0[40];
  v47 = v0[9];
  v49 = v0[13];
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v45 = v0[13] + 16;
  v51 = v0[40];

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v5)
  {
LABEL_10:
    v11 = v0[10];
    v12 = v0[8];
    v13 = __clz(__rbit64(v5)) | (v8 << 6);
    (*(v49 + 16))(v11, *(v51 + 48) + *(v49 + 72) * v13, v0[12]);
    v14 = *(v51 + 56);
    v15 = v14 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v13;
    v16 = *(v47 + 48);
    sub_25283B8C4(v15, v11 + v16, type metadata accessor for HomeEntity.SnapshotPair);
    v17 = sub_25282B340(v11, v11 + v16, v12);
    result = sub_2527213D8(v11, &qword_27F4FCDC0, &unk_2528C5CD0);
    v18 = *(v17 + 16);
    v19 = v9[2];
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v20 > v9[3] >> 1)
    {
      if (v19 <= v20)
      {
        v22 = v19 + v18;
      }

      else
      {
        v22 = v19;
      }

      v9 = sub_252738010(isUniquelyReferenced_nonNull_native, v22, 1, v9);
    }

    v5 &= v5 - 1;
    if (*(v17 + 16))
    {
      v23 = (v9[3] >> 1) - v9[2];
      result = type metadata accessor for DeviceEntity();
      v24 = *(result - 8);
      if (v23 < v18)
      {
        goto LABEL_28;
      }

      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = *(v24 + 72);
      swift_arrayInitWithCopy();

      if (v18)
      {
        v27 = v9[2];
        v28 = __OFADD__(v27, v18);
        v29 = v27 + v18;
        if (v28)
        {
          goto LABEL_29;
        }

        v9[2] = v29;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_27;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  v30 = v0[40];
  v31 = v0[38];
  v33 = v0[30];
  v32 = v0[31];
  v34 = v0[29];
  v35 = v0[25];
  v36 = v0[22];
  v39 = v0[24];
  v40 = v0[23];
  v37 = v0[21];
  v41 = v0[20];
  v42 = v0[19];
  v43 = v0[18];
  v44 = v0[17];
  v46 = v0[15];
  v48 = v0[14];
  v50 = v0[11];
  v52 = v0[10];

  sub_2528352F8(v31, v9);

  (*(v36 + 8))(v35, v37);

  v38 = v0[1];

  return v38(v9);
}

uint64_t sub_25282B340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v4 = type metadata accessor for DeviceEntity();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - v12;
  v14 = sub_2528C00D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v40 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2528BF400();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a2, v18);
  v23 = *(type metadata accessor for HomeEntity.SnapshotPair(0) + 20);
  v41 = sub_25282D6B8(v22);
  sub_25272006C(a2 + v23, v13, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2527213D8(v13, &qword_27F4FCDB8, &unk_2528C5CC0);
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    v25 = v40;
    (*(v15 + 32))(v40, v13, v14);
    v26 = sub_2528C0070();
    v39 = &v39;
    MEMORY[0x28223BE20](v26);
    *(&v39 - 2) = 0;
    *(&v39 - 1) = v22;
    v24 = sub_252853528(sub_25283C724, (&v39 - 4), v26);

    (*(v15 + 8))(v25, v14);
  }

  v45 = v41;
  sub_252735F6C(v24);
  result = (*(v19 + 8))(v22, v18);
  v28 = v45;
  v41 = *(v45 + 16);
  if (v41)
  {
    v29 = 0;
    v30 = MEMORY[0x277D84F90];
    while (v29 < *(v28 + 16))
    {
      v31 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v32 = *(v43 + 72);
      sub_25283B8C4(v28 + v31 + v32 * v29, v9, type metadata accessor for DeviceEntity);
      v33 = *(v9 + 1);
      v34 = sub_2528BE6B0();
      MEMORY[0x28223BE20](v34);
      *(&v39 - 2) = &v45;
      v35 = sub_25281A4D4(sub_25283C6FC, (&v39 - 4), v44);

      if (v35)
      {
        sub_25283BBDC(v9, v42, type metadata accessor for DeviceEntity);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25282F26C(0, *(v30 + 16) + 1, 1);
          v30 = v46;
        }

        v38 = *(v30 + 16);
        v37 = *(v30 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_25282F26C(v37 > 1, v38 + 1, 1);
          v30 = v46;
        }

        *(v30 + 16) = v38 + 1;
        result = sub_25283BBDC(v42, v30 + v31 + v38 * v32, type metadata accessor for DeviceEntity);
      }

      else
      {
        result = sub_25283B92C(v9, type metadata accessor for DeviceEntity);
      }

      if (v41 == ++v29)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
LABEL_16:

    return v30;
  }

  return result;
}

uint64_t DeviceEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  *(v3 + 80) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v3 + 104) = v7;
  v8 = *(v7 - 8);
  *(v3 + 112) = v8;
  *(v3 + 120) = *(v8 + 64);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v9 = v2[1];
  *(v3 + 152) = *v2;
  *(v3 + 168) = v9;
  *(v3 + 184) = v2[2];

  return MEMORY[0x2822009F8](sub_25282BA08, 0, 0);
}

uint64_t sub_25282BA08()
{
  v37 = v0;
  v1 = *(v0 + 144);
  v33 = *(v0 + 168);
  v35 = *(v0 + 152);
  v31 = *(v0 + 184);
  MEMORY[0x2530A80B0](*(v0 + 64), *(v0 + 72));
  sub_252829A08(v1);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = sub_2528C08B0();
  __swift_project_value_buffer(v4, qword_27F5025C8);
  sub_25272006C(v2, v3, &qword_27F4FC488, &unk_2528C3F80);

  v5 = sub_2528C0890();
  v6 = sub_2528C0D10();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 136);
  if (v7)
  {
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_2527389AC(0x203A656D616ELL, 0xE600000000000000, &v36);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2527389AC(0x7972657571, 0xE500000000000000, &v36);
    *(v10 + 22) = 2080;
    v12 = sub_2528C0DB0();
    v14 = v13;
    sub_2527213D8(v8, &qword_27F4FC488, &unk_2528C3F80);
    v15 = sub_2527389AC(v12, v14, &v36);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_252711000, v5, v6, "Query: Performing device query {%s} for %s with homeEntity: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v11, -1, -1);
    MEMORY[0x2530A8D80](v10, -1, -1);
  }

  else
  {

    sub_2527213D8(v8, &qword_27F4FC488, &unk_2528C3F80);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 144);
  v17 = *(v0 + 120);
  v18 = *(v0 + 128);
  v19 = *(v0 + 112);
  v34 = *(v0 + 96);
  v20 = sub_2528C0820();
  v30 = *(v0 + 168);
  v32 = *(v0 + 152);
  v29 = *(v0 + 184);
  __swift_project_value_buffer(v20, qword_27F5025E0);
  sub_25272006C(v16, v18, &qword_27F4FC488, &unk_2528C3F80);
  v21 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v23[2] = 0x7972657571;
  v23[3] = 0xE500000000000000;
  v23[4] = 0x203A656D616ELL;
  v23[5] = 0xE600000000000000;
  sub_25274AA0C(v18, v23 + v21, &qword_27F4FC488, &unk_2528C3F80);
  *(v23 + v22) = 0;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;

  *(v0 + 200) = sub_2528B73C8(0, 0, sub_25283C6C8);

  sub_2527213D8(v16, &qword_27F4FC488, &unk_2528C3F80);
  *(v0 + 16) = v32;
  *(v0 + 32) = v30;
  *(v0 + 48) = v29;
  sub_252829A08(v18);
  v24 = sub_2528C05D0();
  (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  v25 = swift_task_alloc();
  *(v0 + 208) = v25;
  *v25 = v0;
  v25[1] = sub_25282BED0;
  v26 = *(v0 + 128);
  v27 = *(v0 + 96);

  return sub_25277ECE4(v26, 0, 1, v27);
}

uint64_t sub_25282BED0(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 216) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_25282C02C, 0, 0);
}

uint64_t sub_25282C02C()
{
  v1 = *(v0 + 216);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v45 = *(v0 + 216);
  v44 = *(v0 + 80);
  v5 = -1;
  v6 = -1 << *(v45 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v7)
  {
    v47 = v11;
LABEL_11:
    v13 = v46[11];
    v15 = v46[8];
    v14 = v46[9];
    v16 = __clz(__rbit64(v7)) | (v10 << 6);
    v17 = *(v45 + 48);
    v18 = sub_2528BECF0();
    (*(*(v18 - 8) + 16))(v13, v17 + *(*(v18 - 8) + 72) * v16, v18);
    v19 = *(v45 + 56);
    v20 = v19 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v16;
    v21 = *(v44 + 48);
    sub_25283B8C4(v20, v13 + v21, type metadata accessor for HomeEntity.SnapshotPair);
    v22 = sub_25282C370(v13, v13 + v21, v15, v14);
    result = sub_2527213D8(v13, &qword_27F4FCDC0, &unk_2528C5CD0);
    v23 = *(v22 + 16);
    v11 = v47;
    v24 = v47[2];
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v25 > v47[3] >> 1)
    {
      if (v24 <= v25)
      {
        v27 = v24 + v23;
      }

      else
      {
        v27 = v24;
      }

      v11 = sub_252738010(isUniquelyReferenced_nonNull_native, v27, 1, v47);
    }

    v7 &= v7 - 1;
    if (*(v22 + 16))
    {
      v28 = v11;
      v29 = (*(v11 + 24) >> 1) - *(v11 + 16);
      result = type metadata accessor for DeviceEntity();
      v30 = *(result - 8);
      if (v29 < v23)
      {
        goto LABEL_29;
      }

      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = *(v30 + 72);
      swift_arrayInitWithCopy();

      v11 = v28;
      if (v23)
      {
        v33 = *(v28 + 16);
        v34 = __OFADD__(v33, v23);
        v35 = v33 + v23;
        if (v34)
        {
          goto LABEL_30;
        }

        *(v28 + 16) = v35;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v47 = v11;
      v10 = v12;
      goto LABEL_11;
    }
  }

  v36 = v46[27];
  v37 = v46[25];
  v39 = v46[17];
  v38 = v46[18];
  v40 = v46[16];
  v42 = v46[11];
  v41 = v46[12];

  sub_2528352F8(v37, v11);

  v43 = v46[1];

  return v43(v11);
}

uint64_t sub_25282C370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v54 = 0;
  v6 = type metadata accessor for DeviceEntity();
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = (&v53 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v53 - v14;
  v16 = sub_2528C00D0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2528BF400();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, a2, v21);
  v26 = *(type metadata accessor for HomeEntity.SnapshotPair(0) + 20);
  v57 = sub_25282D6B8(v25);
  sub_25272006C(a2 + v26, v15, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2527213D8(v15, &qword_27F4FCDB8, &unk_2528C5CC0);
    v27 = MEMORY[0x277D84F90];
  }

  else
  {
    v28 = v20;
    (*(v17 + 32))(v20, v15, v16);
    v29 = sub_2528C0070();
    v53 = &v53;
    MEMORY[0x28223BE20](v29);
    *(&v53 - 2) = 0;
    *(&v53 - 1) = v25;
    v30 = v54;
    v27 = sub_252853528(sub_25283C724, (&v53 - 4), v29);
    v54 = v30;

    (*(v17 + 8))(v28, v16);
  }

  v61 = v57;
  sub_252735F6C(v27);
  (*(v22 + 8))(v25, v21);
  result = v61;
  v32 = v58;
  v57 = *(v61 + 16);
  if (v57)
  {
    v33 = 0;
    v34 = MEMORY[0x277D84F90];
    v35 = v56;
    while (1)
    {
      if (v33 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v37 = *(v35 + 72);
      v38 = result;
      sub_25283B8C4(result + v36 + v37 * v33, v32, type metadata accessor for DeviceEntity);
      v39 = *v32;
      sub_2528BE6B0();
      if (v61 == a3 && v62 == v60)
      {
        break;
      }

      v41 = sub_2528C1060();

      if (v41)
      {
        goto LABEL_25;
      }

      v42 = *(v32 + *(v55 + 52));
      if (*(v42 + 16))
      {
        v43 = *(v42 + 40);
        sub_2528C1130();
        sub_2528C0A40();
        v44 = sub_2528C1180();
        v45 = -1 << *(v42 + 32);
        v46 = v44 & ~v45;
        if ((*(v42 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
        {
          v47 = ~v45;
          while (1)
          {
            v48 = (*(v42 + 48) + 16 * v46);
            v49 = *v48 == a3 && v48[1] == v60;
            if (v49 || (sub_2528C1060() & 1) != 0)
            {
              break;
            }

            v46 = (v46 + 1) & v47;
            if (((*(v42 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v35 = v56;
          v32 = v58;
          goto LABEL_25;
        }
      }

LABEL_6:
      v32 = v58;
      sub_25283B92C(v58, type metadata accessor for DeviceEntity);
      v35 = v56;
LABEL_7:
      ++v33;
      result = v38;
      if (v33 == v57)
      {
        goto LABEL_32;
      }
    }

LABEL_25:
    sub_25283BBDC(v32, v59, type metadata accessor for DeviceEntity);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25282F26C(0, *(v34 + 16) + 1, 1);
      v34 = v63;
    }

    v52 = *(v34 + 16);
    v51 = *(v34 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_25282F26C(v51 > 1, v52 + 1, 1);
      v34 = v63;
    }

    *(v34 + 16) = v52 + 1;
    sub_25283BBDC(v59, v34 + v36 + v52 * v37, type metadata accessor for DeviceEntity);
    v32 = v58;
    goto LABEL_7;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_32:

  return v34;
}

uint64_t DeviceEntityQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25274BC70;

  return sub_252839E80(a1, a2 & 1);
}

uint64_t sub_25282CA34@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF570, &qword_2528D36F0);
  v3 = __swift_project_value_buffer(v2, qword_27F4FF4D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25282CAE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB8C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FF568, &qword_2528D36E8);
  v3 = __swift_project_value_buffer(v2, qword_27F4FF4C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25282CB9C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25274BC30;

  return sub_252839E80(a2, a3 & 1);
}

uint64_t sub_25282CC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25273430C;

  return DeviceEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_25282CD04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25274BC70;

  return DeviceEntityQuery.entities(for:)(a1);
}

uint64_t sub_25282CD98(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_25283B028();
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_25282CE4C(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  sub_2528BE6B0();
  v4 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FEB60, &qword_2528D3390);
  inited = swift_initStackObject();
  if ((v18 & 0xC000) == 0x8000)
  {
    *(inited + 16) = xmmword_2528C17D0;
    *(inited + 32) = v4;
    *(inited + 34) = v4;
    *(inited + 36) = (v4 >> 8) & 0x3F;
  }

  else
  {
    *(inited + 16) = xmmword_2528C3910;
    *(inited + 32) = v4;
  }

  v6 = sub_25274A250(inited);
  swift_setDeallocating();
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_13:
    v14 = *(*(v6 + 48) + ((v13 << 7) | (2 * __clz(__rbit64(v9)))));
    v9 &= v9 - 1;
    v17 = v14;
    v16 = v2;
    result = _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(&v17, &v16);
    if (result)
    {
      v15 = 1;
LABEL_16:

      return v15;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v15 = 0;
      goto LABEL_16;
    }

    v9 = *(v6 + 56 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25282CFEC(id *a1)
{
  v2 = sub_2528BECF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_2528BECD0();

  v8 = sub_2528BECC0();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_25282D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = 7104878;
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0x203A7265646E6573, 0xE800000000000000);
  MEMORY[0x2530A80B0](a1, a2);
  MEMORY[0x2530A80B0](10, 0xE100000000000000);
  MEMORY[0x2530A80B0](a3, a4);
  MEMORY[0x2530A80B0](0x746E45656D6F6820, 0xED0000203A797469);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v14 = sub_2528C0DB0();
  MEMORY[0x2530A80B0](v14);

  MEMORY[0x2530A80B0](0x746E45656E6F7A20, 0xEF203A7365697469);
  if (a6)
  {
    v15 = type metadata accessor for ZoneEntity();
    v16 = MEMORY[0x2530A81C0](a6, v15);
    v18 = v17;
  }

  else
  {
    v18 = 0xE300000000000000;
    v16 = 7104878;
  }

  MEMORY[0x2530A80B0](v16, v18);

  MEMORY[0x2530A80B0](0x746E456D6F6F7220, 0xEF203A7365697469);
  if (a7)
  {
    v19 = type metadata accessor for RoomEntity();
    v13 = MEMORY[0x2530A81C0](a7, v19);
    v21 = v20;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  MEMORY[0x2530A80B0](v13, v21);

  return 0;
}

uint64_t sub_25282D2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528BF030();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v37 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v37 - v13;
  v15 = sub_2528BF320();
  if (*(v15 + 16) && (v16 = sub_252785C40(a1), (v17 & 1) != 0))
  {
    (*(v5 + 16))(v14, *(v15 + 56) + *(v5 + 72) * v16, v4);

    v18 = sub_2528BEFE0();
    v19 = sub_252831EE0(v18);
    v20 = (*(v5 + 8))(v14, v4);
  }

  else
  {

    v19 = MEMORY[0x277D84FA0];
  }

  MEMORY[0x28223BE20](v20);
  v37[-2] = a2;
  v21 = sub_2527A5B60(sub_25283B824, &v37[-4], v19);

  v22 = sub_2528BF320();
  if (*(v22 + 16) && (v23 = sub_252785C40(a1), (v24 & 1) != 0))
  {
    (*(v5 + 16))(v12, *(v22 + 56) + *(v5 + 72) * v23, v4);

    v25 = sub_2528BEFF0();
    v26 = sub_2528320F4(v25);
    v27 = (*(v5 + 8))(v12, v4);
  }

  else
  {

    v26 = MEMORY[0x277D84FA0];
  }

  MEMORY[0x28223BE20](v27);
  v37[-2] = a2;
  v28 = sub_2527A52D0(sub_25283B850, &v37[-4], v26);

  v29 = sub_2528BF320();
  if (*(v29 + 16) && (v30 = sub_252785C40(a1), (v31 & 1) != 0))
  {
    (*(v5 + 16))(v9, *(v29 + 56) + *(v5 + 72) * v30, v4);

    v32 = sub_2528BF010();
    v33 = sub_252832308(v32);
    v34 = (*(v5 + 8))(v9, v4);
  }

  else
  {

    v33 = MEMORY[0x277D84FA0];
  }

  MEMORY[0x28223BE20](v34);
  v37[-2] = a2;
  v35 = sub_2527A5718(sub_25283B86C, &v37[-4], v33);

  v37[0] = v21;
  sub_252735F6C(v28);
  sub_252735F6C(v35);
  return v37[0];
}

uint64_t sub_25282D6B8(uint64_t a1)
{
  v89 = sub_2528BF400();
  v101 = *(v89 - 8);
  v2 = *(v101 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_2528BF9D0();
  v100 = *(v104 - 8);
  v4 = v100[8];
  MEMORY[0x28223BE20](v104);
  v87 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2528BECF0();
  v6 = *(v105 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v105);
  v96 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_2528BFC70();
  v9 = *(v82 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v82);
  v80 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v73 - v19;
  v103 = type metadata accessor for DeviceEntity();
  v21 = *(v103 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v103);
  v75 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v84 = &v73 - v26;
  MEMORY[0x28223BE20](v25);
  v73 = &v73 - v27;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6C8, &unk_2528D3C60);
  v28 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v106 = &v73 - v29;
  v30 = sub_2528BF370();
  v31 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 64);
  v35 = (v32 + 63) >> 6;
  v92 = v6 + 16;
  v102 = v100 + 2;
  v78 = v9 + 16;
  v97 = v6;
  v91 = (v6 + 8);
  v77 = v9 + 32;
  v81 = v9;
  v76 = v9 + 8;
  v36 = v20;
  v90 = (v21 + 56);
  v85 = (v101 + 16);
  v74 = v21;
  v101 = v21 + 48;
  v99 = v30;

  v38 = 0;
  v83 = MEMORY[0x277D84F90];
  v98 = v35;
  v95 = a1;
  v86 = v18;
  v94 = v36;
  while (1)
  {
    v39 = v38;
    if (!v34)
    {
      break;
    }

LABEL_8:
    v40 = __clz(__rbit64(v34)) | (v38 << 6);
    v41 = v99;
    v42 = v106;
    (*(v97 + 16))(v106, *(v99 + 48) + *(v97 + 72) * v40, v105);
    v43 = *(v41 + 56) + v100[9] * v40;
    v44 = *(v93 + 48);
    v45 = v100[2];
    v45(v42 + v44, v43, v104);
    v46 = sub_2528BF390();
    v47 = v96;
    sub_2528BF4C0();
    if (!*(v46 + 16) || (v48 = sub_252785C40(v47), (v49 & 1) == 0))
    {

      (*v91)(v47, v105);
LABEL_13:
      v56 = v87;
      v45(v87, v106 + v44, v104);
      v57 = v88;
      a1 = v95;
      (*v85)(v88, v95, v89);
      v58 = v86;
      DeviceEntity.init(staticService:snapshot:)(v56, v57, v86);
      v59 = (*v101)(v58, 1, v103);
      v55 = v94;
      if (v59 == 1)
      {
        sub_2527213D8(v58, &qword_27F4FD668, &qword_2528C8900);
        v54 = 1;
      }

      else
      {
        v60 = v84;
        sub_25283BBDC(v58, v84, type metadata accessor for DeviceEntity);
        v61 = *(v60 + 16);
        sub_2528BE6B0();
        v109[0] = v109[1];
        v108 = 3;
        if (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v109, &v108))
        {
          sub_25283B92C(v60, type metadata accessor for DeviceEntity);
          v54 = 1;
        }

        else
        {
          sub_25283BBDC(v60, v55, type metadata accessor for DeviceEntity);
          v54 = 0;
        }
      }

      goto LABEL_18;
    }

    v50 = v81;
    v51 = v80;
    v52 = v82;
    (*(v81 + 16))(v80, *(v46 + 56) + *(v81 + 72) * v48, v82);
    (*v91)(v47, v105);

    v53 = v79;
    (*(v50 + 32))(v79, v51, v52);
    LOBYTE(v51) = sub_2528BFBD0();
    (*(v50 + 8))(v53, v52);
    if ((v51 & 1) == 0)
    {
      goto LABEL_13;
    }

    v54 = 1;
    v55 = v94;
    a1 = v95;
LABEL_18:
    v35 = v98;
    v34 &= v34 - 1;
    v62 = v103;
    (*v90)(v55, v54, 1, v103);
    sub_2527213D8(v106, &qword_27F4FD6C8, &unk_2528D3C60);
    if ((*v101)(v55, 1, v62) == 1)
    {
      result = sub_2527213D8(v55, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v63 = v73;
      sub_25283BBDC(v55, v73, type metadata accessor for DeviceEntity);
      sub_25283BBDC(v63, v75, type metadata accessor for DeviceEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_252738010(0, v83[2] + 1, 1, v83);
      }

      v65 = v83[2];
      v64 = v83[3];
      if (v65 >= v64 >> 1)
      {
        v83 = sub_252738010(v64 > 1, v65 + 1, 1, v83);
      }

      v66 = v83;
      v83[2] = v65 + 1;
      result = sub_25283BBDC(v75, v66 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v65, type metadata accessor for DeviceEntity);
      v35 = v98;
    }
  }

  while (1)
  {
    v38 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v38 >= v35)
    {

      v67 = sub_2528BF3A0();
      v68 = sub_2528320F4(v67);
      MEMORY[0x28223BE20](v68);
      *(&v73 - 2) = a1;
      v69 = sub_2527A52D0(sub_25283C6CC, (&v73 - 4), v68);

      v70 = sub_2528BF3D0();
      v71 = sub_252832308(v70);
      MEMORY[0x28223BE20](v71);
      *(&v73 - 2) = a1;
      v72 = sub_2527A5718(sub_25283C6E4, (&v73 - 4), v71);

      v107 = v83;
      sub_252735F6C(v69);
      sub_252735F6C(v72);
      return v107;
    }

    v34 = *(v31 + 8 * v38);
    ++v39;
    if (v34)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}