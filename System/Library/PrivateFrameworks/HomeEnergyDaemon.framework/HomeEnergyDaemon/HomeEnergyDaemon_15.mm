uint64_t sub_22B299620()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[17] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[18] = v5;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D1C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Disabling energy guidance collection", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[13];

  v12 = *(v11 + 8);
  v0[20] = v12;
  v12(v9, v10);
  if (qword_28140B168 != -1)
  {
    swift_once();
  }

  v13 = qword_28140BDC8;
  v0[21] = qword_28140BDC8;

  return MEMORY[0x2822009F8](sub_22B2997D8, v13, 0);
}

uint64_t sub_22B2997D8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 88);
  *(v0 + 192) = sub_22B12EDE0() & 1;

  return MEMORY[0x2822009F8](sub_22B29984C, v2, 0);
}

uint64_t sub_22B29984C()
{
  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDC0;
  *(v0 + 176) = qword_28140BDC0;

  return MEMORY[0x2822009F8](sub_22B2998E4, v1, 0);
}

uint64_t sub_22B2998E4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 88);
  *(v0 + 193) = sub_22B212108() & 1;

  return MEMORY[0x2822009F8](sub_22B299958, v2, 0);
}

uint64_t sub_22B299958()
{
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDB8;
  *(v0 + 184) = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B2999F0, v1, 0);
}

uint64_t sub_22B2999F0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);
  sub_22B17EE98();

  return MEMORY[0x2822009F8](sub_22B299A5C, v2, 0);
}

uint64_t sub_22B299A5C()
{
  v1 = *(v0 + 193);
  v2 = *(v0 + 192);
  v3 = *(v0 + 88);
  swift_beginAccess();
  v4 = *(v3 + 120);
  *(v3 + 120) = MEMORY[0x277D84FA0];

  v5 = *(v3 + 136);
  v6 = sub_22B36081C();
  [v5 removeObjectForKey_];

  if (v2 != 1 || (v7 = 0, (v1 & 1) == 0))
  {
    v8 = *(v0 + 152);
    (*(v0 + 144))(*(v0 + 112), *(v0 + 136), *(v0 + 96));
    v9 = sub_22B36050C();
    v10 = sub_22B360D1C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B116000, v9, v10, "Failed to disable energy forecast collection", v11, 2u);
      MEMORY[0x23188F650](v11, -1, -1);
    }

    v12 = *(v0 + 160);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v15 = *(v0 + 96);

    v12(v13, v15);
    v7 = 5;
  }

  v17 = *(v0 + 112);
  v16 = *(v0 + 120);

  v18 = *(v0 + 8);

  return v18(v7);
}

uint64_t sub_22B299C0C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 408) = v18;
  *(v9 + 416) = v8;
  *(v9 + 392) = a7;
  *(v9 + 400) = a8;
  *(v9 + 376) = a5;
  *(v9 + 384) = a6;
  *(v9 + 360) = a2;
  *(v9 + 368) = a4;
  *(v9 + 568) = a3;
  *(v9 + 352) = a1;
  v10 = sub_22B35E20C();
  *(v9 + 424) = v10;
  v11 = *(v10 - 8);
  *(v9 + 432) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 440) = swift_task_alloc();
  v13 = sub_22B36052C();
  *(v9 + 448) = v13;
  v14 = *(v13 - 8);
  *(v9 + 456) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 472) = swift_task_alloc();
  *(v9 + 480) = swift_task_alloc();
  *(v9 + 488) = swift_task_alloc();
  *(v9 + 496) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B299D74, v8, 0);
}

uint64_t sub_22B299D74()
{
  v35 = v0;
  *(v0 + 16) = *(v0 + 352);
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(v0 + 376);
  v5 = *(v0 + 568);
  v6 = *(v0 + 368);
  *(v0 + 24) = *(v0 + 360);
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 48) = v4;
  *(v0 + 64) = v3;
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;
  v7 = *(v0 + 32);
  *(v0 + 88) = *(v0 + 16);
  v8 = *(v0 + 48);
  v9 = *(v0 + 64);
  *(v0 + 152) = v1;
  *(v0 + 136) = v9;
  *(v0 + 120) = v8;
  *(v0 + 104) = v7;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 496);
  v11 = *(v0 + 448);
  v12 = *(v0 + 456);
  v13 = __swift_project_value_buffer(v11, qword_28140BD10);
  *(v0 + 504) = v13;
  swift_beginAccess();
  v14 = *(v12 + 16);
  *(v0 + 512) = v14;
  *(v0 + 520) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v10, v13, v11);
  sub_22B2020A4(v0 + 16, v0 + 160);
  v15 = sub_22B36050C();
  v16 = sub_22B360D2C();
  sub_22B172074(v0 + 16);
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 496);
  v20 = *(v0 + 448);
  v19 = *(v0 + 456);
  if (v17)
  {
    v32 = *(v0 + 448);
    v22 = *(v0 + 352);
    v21 = *(v0 + 360);
    v23 = swift_slowAlloc();
    v31 = v18;
    v24 = swift_slowAlloc();
    *&v33[0] = v24;
    *v23 = 136380675;
    *(v23 + 4) = sub_22B1A7B20(v22, v21, v33);
    _os_log_impl(&dword_22B116000, v15, v16, "Disabling energy guidance collection for %{private}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x23188F650](v24, -1, -1);
    MEMORY[0x23188F650](v23, -1, -1);

    v25 = *(v19 + 8);
    v25(v31, v32);
  }

  else
  {

    v25 = *(v19 + 8);
    v25(v18, v20);
  }

  *(v0 + 528) = v25;
  v26 = *(v0 + 416);
  swift_beginAccess();
  sub_22B1F9650((v0 + 88), v33);
  swift_endAccess();
  v27 = v33[3];
  *(v0 + 264) = v33[2];
  *(v0 + 280) = v27;
  *(v0 + 296) = v34;
  v28 = v33[1];
  *(v0 + 232) = v33[0];
  *(v0 + 248) = v28;
  sub_22B123284(v0 + 232, &qword_27D8BAC30, &qword_22B366AE0);
  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  v29 = qword_28140BDC0;
  *(v0 + 536) = qword_28140BDC0;

  return MEMORY[0x2822009F8](sub_22B29A07C, v29, 0);
}

uint64_t sub_22B29A07C()
{
  v30 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 360);
  (*(v0 + 512))(*(v0 + 488), *(v0 + 504), *(v0 + 448));

  v3 = sub_22B36050C();
  v4 = sub_22B360D2C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 528);
  v7 = *(v0 + 488);
  v8 = *(v0 + 448);
  v9 = *(v0 + 456);
  if (v5)
  {
    v27 = *(v0 + 528);
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136380675;
    *(v12 + 4) = sub_22B1A7B20(v11, v10, &v29);
    _os_log_impl(&dword_22B116000, v3, v4, "Delete energy guidance tracking from cache for %{private}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    v27(v7, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v14 = *(*(v0 + 536) + 112);
  if (v14)
  {
    v16 = *(v0 + 400);
    v15 = *(v0 + 408);
    v26 = *(v0 + 368);
    v28 = *(v0 + 384);
    v17 = *(v0 + 568);
    v19 = *(v0 + 352);
    v18 = *(v0 + 360);
    v20 = *(v14 + 48);
    v21 = swift_task_alloc();
    *(v21 + 16) = v14;
    *(v21 + 24) = v19;
    *(v21 + 32) = v18;
    *(v21 + 40) = v17;
    *(v21 + 48) = v26;
    *(v21 + 64) = v28;
    *(v21 + 80) = v16;
    *(v21 + 88) = v15;

    v22 = v20;
    sub_22B360E7C();

    v23 = *(v0 + 571) ^ 1;
  }

  else
  {
    v23 = 1;
  }

  *(v0 + 572) = v23 & 1;
  *(v0 + 544) = 0;
  v24 = *(v0 + 416);

  return MEMORY[0x2822009F8](sub_22B29A2E4, v24, 0);
}

uint64_t sub_22B29A2E4()
{
  if (qword_28140B168 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDC8;
  *(v0 + 552) = qword_28140BDC8;

  return MEMORY[0x2822009F8](sub_22B29A37C, v1, 0);
}

uint64_t sub_22B29A37C()
{
  v39 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 392);
  v3 = *(v0 + 360);
  (*(v0 + 512))(*(v0 + 480), *(v0 + 504), *(v0 + 448));

  v4 = sub_22B36050C();
  v5 = sub_22B360D2C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 528);
  v8 = *(v0 + 480);
  v10 = *(v0 + 448);
  v9 = *(v0 + 456);
  v11 = *(v0 + 392);
  if (v6)
  {
    v32 = *(v0 + 384);
    v36 = *(v0 + 528);
    v12 = *(v0 + 568);
    v34 = *(v0 + 448);
    v14 = *(v0 + 352);
    v13 = *(v0 + 360);
    v33 = *(v0 + 480);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136381187;
    *(v15 + 4) = sub_22B1A7B20(v14, v13, &v38);
    *(v15 + 12) = 512;
    *(v15 + 14) = v12;
    *(v15 + 16) = 1024;
    v17 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v17 = v32 & 0xFFFFFFFFFFFFLL;
    }

    *(v15 + 18) = v17 != 0;

    _os_log_impl(&dword_22B116000, v4, v5, "Delete energy guidance from cache for %{private}s %hd hasUtility: %{BOOL}d", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);

    v36(v33, v34);
  }

  else
  {
    v18 = *(v0 + 392);

    v7(v8, v10);
  }

  v19 = *(*(v0 + 552) + 112);
  if (v19)
  {
    v20 = *(v0 + 544);
    v22 = *(v0 + 400);
    v21 = *(v0 + 408);
    v35 = *(v0 + 368);
    v37 = *(v0 + 384);
    v23 = *(v0 + 568);
    v25 = *(v0 + 352);
    v24 = *(v0 + 360);
    v26 = *(v19 + 48);
    v27 = swift_task_alloc();
    *(v27 + 16) = v19;
    *(v27 + 24) = v25;
    *(v27 + 32) = v24;
    *(v27 + 40) = v23;
    *(v27 + 48) = v35;
    *(v27 + 64) = v37;
    *(v27 + 80) = v22;
    *(v27 + 88) = v21;

    v28 = v26;
    sub_22B360E7C();

    v29 = *(v0 + 570) ^ 1;
  }

  else
  {
    v29 = 1;
  }

  *(v0 + 573) = v29 & 1;
  v30 = *(v0 + 416);

  return MEMORY[0x2822009F8](sub_22B29A640, v30, 0);
}

uint64_t sub_22B29A640()
{
  v37 = v0;
  v1 = *(v0 + 392);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 384) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    goto LABEL_19;
  }

  v3 = *(v0 + 376);
  if ((v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : *(v0 + 368) & 0xFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  v5 = *(v0 + 408);
  v6 = (v5 & 0x2000000000000000) != 0 ? HIBYTE(v5) & 0xF : *(v0 + 400) & 0xFFFFFFFFFFFFLL;
  if (v6 || (v8 = *(v0 + 432), v7 = *(v0 + 440), v9 = *(v0 + 424), v10 = *(v0 + 568), (*(v8 + 104))(v7, *MEMORY[0x277D17EE8], v9), v11 = sub_22B35E1FC(), (*(v8 + 8))(v7, v9), v10 != v11))
  {
LABEL_19:
    v13 = *(v0 + 520);
    v14 = *(v0 + 360);
    (*(v0 + 512))(*(v0 + 464), *(v0 + 504), *(v0 + 448));

    v15 = sub_22B36050C();
    v16 = sub_22B360D2C();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 528);
    v20 = *(v0 + 456);
    v19 = *(v0 + 464);
    v21 = *(v0 + 448);
    if (v17)
    {
      v34 = *(v0 + 568);
      v35 = *(v0 + 528);
      v23 = *(v0 + 352);
      v22 = *(v0 + 360);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_22B1A7B20(v23, v22, &v36);
      *(v24 + 12) = 512;
      *(v24 + 14) = v34;
      _os_log_impl(&dword_22B116000, v15, v16, "Guidance from %s %hd was not for grid forecast purposes. Was not deleted.", v24, 0x10u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23188F650](v25, -1, -1);
      MEMORY[0x23188F650](v24, -1, -1);

      v35(v19, v21);
    }

    else
    {

      v18(v19, v21);
    }

    v27 = *(v0 + 488);
    v26 = *(v0 + 496);
    v29 = *(v0 + 472);
    v28 = *(v0 + 480);
    v30 = *(v0 + 464);
    v31 = *(v0 + 440);

    v32 = *(v0 + 8);

    return v32(0);
  }

  else
  {
    if (qword_28140AF70 != -1)
    {
      swift_once();
    }

    v12 = qword_28140BDB8;
    *(v0 + 560) = qword_28140BDB8;

    return MEMORY[0x2822009F8](sub_22B29A964, v12, 0);
  }
}

uint64_t sub_22B29A964()
{
  v1 = v0[70];
  v2 = v0[52];
  sub_22B17EB2C(v0[44], v0[45]);

  return MEMORY[0x2822009F8](sub_22B29A9D4, v2, 0);
}

uint64_t sub_22B29A9D4()
{
  if ((*(v0 + 573) & 1) != 0 || *(v0 + 572))
  {
    v2 = *(v0 + 520);
    (*(v0 + 512))(*(v0 + 472), *(v0 + 504), *(v0 + 448));
    v3 = sub_22B36050C();
    v4 = sub_22B360D1C();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 528);
    v7 = *(v0 + 472);
    v8 = *(v0 + 448);
    v9 = *(v0 + 456);
    if (v5)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B116000, v3, v4, "Failed to disable energy guidance collection", v10, 2u);
      MEMORY[0x23188F650](v10, -1, -1);
    }

    v6(v7, v8);
    v1 = 5;
  }

  else
  {
    v1 = 0;
  }

  v12 = *(v0 + 488);
  v11 = *(v0 + 496);
  v14 = *(v0 + 472);
  v13 = *(v0 + 480);
  v15 = *(v0 + 464);
  v16 = *(v0 + 440);

  v17 = *(v0 + 8);

  return v17(v1);
}

uint64_t sub_22B29AB48(uint64_t a1, char a2)
{
  *(v3 + 690) = a2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  *(v3 + 392) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA390, &qword_22B364460) - 8) + 64) + 15;
  *(v3 + 400) = swift_task_alloc();
  v6 = sub_22B35E20C();
  *(v3 + 408) = v6;
  v7 = *(v6 - 8);
  *(v3 + 416) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 424) = swift_task_alloc();
  v9 = sub_22B35DE9C();
  *(v3 + 432) = v9;
  v10 = *(v9 - 8);
  *(v3 + 440) = v10;
  *(v3 + 448) = *(v10 + 64);
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();
  v11 = sub_22B36052C();
  *(v3 + 488) = v11;
  v12 = *(v11 - 8);
  *(v3 + 496) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 504) = swift_task_alloc();
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B29AD78, v2, 0);
}

uint64_t sub_22B29AD78()
{
  v48 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 520);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v4 = *(v0 + 376);
  v5 = __swift_project_value_buffer(v2, qword_28140BD10);
  *(v0 + 528) = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v0 + 536) = v6;
  *(v0 + 544) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  sub_22B2020A4(v4, v0 + 16);
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 376);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47 = v11;
    *v10 = 136381187;
    *(v10 + 4) = sub_22B1A7B20(*v9, *(v9 + 8), &v47);
    *(v10 + 12) = 512;
    *(v10 + 14) = *(v9 + 16);
    *(v10 + 16) = 1024;
    v12 = *(v9 + 48);
    v46 = v6;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v12) & 0xF;
      v13 = *(v0 + 376);
    }

    else
    {
      v13 = *(v0 + 376);
      v14 = *(v13 + 40) & 0xFFFFFFFFFFFFLL;
    }

    v45 = *(v0 + 520);
    v19 = *(v0 + 488);
    v20 = *(v0 + 496);
    *(v10 + 18) = v14 == 0;
    sub_22B172074(v13);
    _os_log_impl(&dword_22B116000, v7, v8, "Enabling energy guidance collection for %{private}s %hd hasUtility: %{BOOL}d", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23188F650](v11, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);

    v18 = *(v20 + 8);
    v18(v45, v19);
    v6 = v46;
  }

  else
  {
    v15 = *(v0 + 520);
    v16 = *(v0 + 488);
    v17 = *(v0 + 496);
    sub_22B172074(*(v0 + 376));

    v18 = *(v17 + 8);
    v18(v15, v16);
  }

  *(v0 + 552) = v18;
  v21 = *(v0 + 690);
  v22 = *(v0 + 376);
  v23 = *(v0 + 384);
  swift_beginAccess();
  v24 = *(v23 + 120);

  LOBYTE(v22) = sub_22B325AD4(v22, v24);

  if (v22 & 1) == 0 || (v21)
  {
    if (qword_28140AC88 != -1)
    {
      swift_once();
    }

    v44 = qword_28140BD80;
    *(v0 + 560) = qword_28140BD80;

    return MEMORY[0x2822009F8](sub_22B29B1C0, v44, 0);
  }

  else
  {
    v6(*(v0 + 512), v5, *(v0 + 488));
    v25 = sub_22B36050C();
    v26 = sub_22B360D1C();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 512);
    v29 = *(v0 + 488);
    v30 = *(v0 + 496);
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22B116000, v25, v26, "Location already tracked. Disable before updating", v31, 2u);
      MEMORY[0x23188F650](v31, -1, -1);
    }

    v18(v28, v29);
    v32 = *(v0 + 520);
    v33 = *(v0 + 504);
    v34 = *(v0 + 512);
    v36 = *(v0 + 472);
    v35 = *(v0 + 480);
    v38 = *(v0 + 456);
    v37 = *(v0 + 464);
    v39 = *(v0 + 424);
    v41 = *(v0 + 392);
    v40 = *(v0 + 400);

    v42 = *(v0 + 8);

    return v42(1);
  }
}

uint64_t sub_22B29B1C0()
{
  v1 = v0[70];
  v2 = v0[60];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[48];
  v6 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  v0[71] = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[72] = v7;
  v0[73] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1 + v6, v3);

  return MEMORY[0x2822009F8](sub_22B29B290, v5, 0);
}

uint64_t sub_22B29B290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 408);
  v12 = *(v10 + 416);
  v13 = *(v10 + 400);
  *(v10 + 688) = *(*(v10 + 376) + 16);
  sub_22B35E1EC();
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    v14 = *(v10 + 400);
    (*(*(v10 + 440) + 8))(*(v10 + 480), *(v10 + 432));
    sub_22B123284(v14, &qword_27D8BA390, &qword_22B364460);
    v15 = *(v10 + 520);
    v16 = *(v10 + 504);
    v17 = *(v10 + 512);
    v19 = *(v10 + 472);
    v18 = *(v10 + 480);
    v21 = *(v10 + 456);
    v20 = *(v10 + 464);
    v22 = *(v10 + 424);
    v24 = *(v10 + 392);
    v23 = *(v10 + 400);

    v25 = *(v10 + 8);

    return v25(8);
  }

  else
  {
    v28 = *(v10 + 432);
    v27 = *(v10 + 440);
    v29 = *(v10 + 392);
    v30 = *(v10 + 376);
    (*(*(v10 + 416) + 32))(*(v10 + 424), *(v10 + 400), *(v10 + 408));
    v40 = *v30;
    *(v10 + 592) = *v30;
    v31 = v30[1];
    *(v10 + 600) = v31;
    v39 = v30[3];
    *(v10 + 608) = v39;
    v32 = v30[4];
    *(v10 + 616) = v32;
    v33 = v30[5];
    *(v10 + 624) = v33;
    v34 = v30[6];
    *(v10 + 632) = v34;
    v35 = v30[7];
    *(v10 + 640) = v35;
    *(v10 + 648) = v30[8];
    (*(v27 + 56))(v29, 1, 1, v28);

    v36 = swift_task_alloc();
    *(v10 + 656) = v36;
    *v36 = v10;
    v36[1] = sub_22B29B530;
    v37 = *(v10 + 424);
    v38 = *(v10 + 384);
    v42 = *(v10 + 392);

    return sub_22B2A34B8(v40, v31, v37, v39, v32, v33, v34, v35, a9, a10);
  }
}

uint64_t sub_22B29B530(uint64_t a1)
{
  v2 = *(*v1 + 656);
  v3 = *(*v1 + 392);
  v4 = *(*v1 + 384);
  v6 = *v1;
  *(*v1 + 664) = a1;

  sub_22B123284(v3, &qword_27D8BA340, &qword_22B363FB0);

  return MEMORY[0x2822009F8](sub_22B29B674, v4, 0);
}

uint64_t sub_22B29B674()
{
  if (v0[83])
  {
    v1 = v0[81];
    v2 = v0[79];
    v3 = v0[77];
    v4 = v0[75];
    v5 = v0[60];
    v6 = v0[54];
    v7 = v0[55];
    v9 = v0[52];
    v8 = v0[53];
    v10 = v0[51];

    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v5, v6);
    v25 = v0[83];
    v11 = v0[65];
    v13 = v0[63];
    v12 = v0[64];
    v15 = v0[59];
    v14 = v0[60];
    v17 = v0[57];
    v16 = v0[58];
    v18 = v0[53];
    v19 = v0[49];
    v20 = v0[50];

    v21 = v0[1];

    return v21(v25);
  }

  else
  {
    if (qword_28140B068 != -1)
    {
      swift_once();
    }

    v23 = v0[59];
    v24 = qword_28140BDC0;
    v0[84] = qword_28140BDC0;
    sub_22B35DE6C();

    return MEMORY[0x2822009F8](sub_22B29B85C, v24, 0);
  }
}

uint64_t sub_22B29B85C()
{
  v55 = v0;
  v1 = v0[79];
  v2 = v0[75];
  v3 = v0[68];
  (v0[67])(v0[63], v0[66], v0[61]);

  v4 = sub_22B36050C();
  v5 = sub_22B360D2C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[79];
  if (v6)
  {
    v8 = v0[78];
    v9 = v0[75];
    v10 = v0[74];
    v11 = *(v0 + 344);
    v50 = v0[63];
    v52 = v0[69];
    v47 = v0[62];
    aBlock = v0[61];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v54 = v13;
    *v12 = 136381187;
    *(v12 + 4) = sub_22B1A7B20(v10, v9, &v54);
    *(v12 + 12) = 512;
    *(v12 + 14) = v11;
    *(v12 + 16) = 1024;
    v14 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v14 = v8 & 0xFFFFFFFFFFFFLL;
    }

    *(v12 + 18) = v14 != 0;

    _os_log_impl(&dword_22B116000, v4, v5, "Add energy guidance tracking for %{private}s %hd hasUtility: %{BOOL}d", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    v52(v50, aBlock);
  }

  else
  {
    v15 = v0[69];
    v17 = v0[62];
    v16 = v0[63];
    v18 = v0[61];
    v19 = v0[79];

    v15(v16, v18);
  }

  v20 = *(v0[84] + 112);
  v21 = v0[81];
  if (v20)
  {
    v22 = v0[80];
    v46 = *(v0 + 38);
    v48 = *(v0 + 39);
    v45 = *(v0 + 37);
    v23 = *(v0 + 344);
    v24 = v0[73];
    v25 = v0[58];
    v53 = v0[59];
    v27 = v0[55];
    v26 = v0[56];
    v28 = v0[54];
    v51 = *(v20 + 48);
    (v0[72])(v25);
    v29 = (*(v27 + 80) + 90) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v20;
    *(v30 + 24) = v45;
    *(v30 + 40) = v46;
    *(v30 + 56) = v48;
    *(v30 + 72) = v22;
    *(v30 + 80) = v21;
    *(v30 + 88) = v23;
    (*(v27 + 32))(v30 + v29, v25, v28);
    v31 = swift_allocObject();
    *(v31 + 16) = sub_22B2A52A8;
    *(v31 + 24) = v30;
    v0[33] = sub_22B128240;
    v0[34] = v31;
    v0[29] = MEMORY[0x277D85DD0];
    v0[30] = 1107296256;
    v0[31] = sub_22B32556C;
    v0[32] = &block_descriptor_37_1;
    v32 = _Block_copy(v0 + 29);
    v33 = v0[34];
    swift_retain_n();
    v34 = v51;

    [v34 performBlockAndWait_];

    _Block_release(v32);

    v35 = *(v27 + 8);
    v35(v53, v28);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v37 = v0[79];
  v38 = v0[77];
  v39 = v0[75];
  v40 = v0[59];
  v41 = v0[54];
  v42 = v0[55];

  v35 = *(v42 + 8);
  v35(v40, v41);
LABEL_10:
  v0[85] = v35;
  v43 = v0[70];

  return MEMORY[0x2822009F8](sub_22B29BCC4, v43, 0);
}

uint64_t sub_22B29BCC4()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 384);
  (*(v0 + 576))(*(v0 + 456), *(v0 + 560) + *(v0 + 568), *(v0 + 432));

  return MEMORY[0x2822009F8](sub_22B29BD48, v2, 0);
}

uint64_t sub_22B29BD48()
{
  v30 = v0;
  if (*(*(*(v0 + 384) + 120) + 16) && (v1 = *(v0 + 480), v2 = *(v0 + 456), (sub_22B35DDEC() & 1) == 0))
  {
    v4 = *(v0 + 680);
    v27 = *(v0 + 480);
    v5 = *(v0 + 456);
    v7 = *(v0 + 432);
    v6 = *(v0 + 440);
    v9 = *(v0 + 416);
    v8 = *(v0 + 424);
    v10 = *(v0 + 408);
    v12 = *(v0 + 376);
    v11 = *(v0 + 384);
    swift_beginAccess();
    sub_22B2020A4(v12, v0 + 160);
    sub_22B32E0A0(v28, v12);
    swift_endAccess();
    v13 = v28[0];
    *(v0 + 104) = v28[1];
    v14 = v28[3];
    *(v0 + 120) = v28[2];
    *(v0 + 136) = v14;
    *(v0 + 152) = v29;
    *(v0 + 88) = v13;
    sub_22B172074(v0 + 88);
    v4(v5, v7);
    (*(v9 + 8))(v8, v10);
    v4(v27, v7);
    v15 = *(v0 + 520);
    v16 = *(v0 + 504);
    v17 = *(v0 + 512);
    v19 = *(v0 + 472);
    v18 = *(v0 + 480);
    v21 = *(v0 + 456);
    v20 = *(v0 + 464);
    v22 = *(v0 + 424);
    v24 = *(v0 + 392);
    v23 = *(v0 + 400);

    v25 = *(v0 + 8);

    return v25(0);
  }

  else
  {
    v3 = *(v0 + 560);

    return MEMORY[0x2822009F8](sub_22B29BF54, v3, 0);
  }
}

uint64_t sub_22B29BF54()
{
  if (qword_28140AB18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 560);
  v2 = *(v0 + 384);
  sub_22B1ACF0C(0xD000000000000024, 0x800000022B36B9F0);
  v3 = *(v1 + 112);

  sub_22B1B23B0();

  *(*(v1 + 112) + 40) = 0;
  swift_unknownObjectWeakAssign();
  sub_22B255804();

  return MEMORY[0x2822009F8](sub_22B29C044, v2, 0);
}

uint64_t sub_22B29C044()
{
  v27 = v0;
  v1 = *(v0 + 680);
  v24 = *(v0 + 480);
  v2 = *(v0 + 456);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v7 = *(v0 + 408);
  v9 = *(v0 + 376);
  v8 = *(v0 + 384);
  swift_beginAccess();
  sub_22B2020A4(v9, v0 + 160);
  sub_22B32E0A0(v25, v9);
  swift_endAccess();
  v10 = v25[0];
  *(v0 + 104) = v25[1];
  v11 = v25[3];
  *(v0 + 120) = v25[2];
  *(v0 + 136) = v11;
  *(v0 + 152) = v26;
  *(v0 + 88) = v10;
  sub_22B172074(v0 + 88);
  v1(v2, v4);
  (*(v6 + 8))(v5, v7);
  v1(v24, v4);
  v12 = *(v0 + 520);
  v13 = *(v0 + 504);
  v14 = *(v0 + 512);
  v16 = *(v0 + 472);
  v15 = *(v0 + 480);
  v18 = *(v0 + 456);
  v17 = *(v0 + 464);
  v19 = *(v0 + 424);
  v21 = *(v0 + 392);
  v20 = *(v0 + 400);

  v22 = *(v0 + 8);

  return v22(0);
}

uint64_t sub_22B29C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[14] = v31;
  v9[15] = v8;
  v9[12] = a8;
  v9[13] = v30;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a2;
  v9[7] = a3;
  v9[5] = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC28, &qword_22B366AD0) - 8) + 64) + 15;
  v9[16] = swift_task_alloc();
  v9[17] = swift_task_alloc();
  v11 = sub_22B35E13C();
  v9[18] = v11;
  v12 = *(v11 - 8);
  v9[19] = v12;
  v13 = *(v12 + 64) + 15;
  v9[20] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  v9[21] = swift_task_alloc();
  v15 = sub_22B35E0BC();
  v9[22] = v15;
  v16 = *(v15 - 8);
  v9[23] = v16;
  v17 = *(v16 + 64) + 15;
  v9[24] = swift_task_alloc();
  v9[25] = swift_task_alloc();
  v18 = sub_22B35E21C();
  v9[26] = v18;
  v19 = *(v18 - 8);
  v9[27] = v19;
  v20 = *(v19 + 64) + 15;
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v9[30] = swift_task_alloc();
  v9[31] = swift_task_alloc();
  v9[32] = swift_task_alloc();
  v21 = sub_22B36052C();
  v9[33] = v21;
  v22 = *(v21 - 8);
  v9[34] = v22;
  v23 = *(v22 + 64) + 15;
  v9[35] = swift_task_alloc();
  v9[36] = swift_task_alloc();
  v9[37] = swift_task_alloc();
  v9[38] = swift_task_alloc();
  v9[39] = swift_task_alloc();
  v24 = sub_22B35E33C();
  v9[40] = v24;
  v25 = *(v24 - 8);
  v9[41] = v25;
  v26 = *(v25 + 64) + 15;
  v9[42] = swift_task_alloc();
  v9[43] = swift_task_alloc();
  v9[44] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC20, &qword_22B366AC0) - 8) + 64) + 15;
  v9[45] = swift_task_alloc();
  v9[46] = swift_task_alloc();
  v9[47] = swift_task_alloc();
  v9[48] = swift_task_alloc();
  v9[49] = swift_task_alloc();
  v9[50] = swift_task_alloc();
  v9[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B29C5B4, v8, 0);
}

uint64_t sub_22B29C5B4()
{
  v141 = v0;
  if (sub_22B35EEBC())
  {
    if (sub_22B35EEBC())
    {
      v1 = swift_task_alloc();
      v0[52] = v1;
      *v1 = v0;
      v1[1] = sub_22B29D0DC;
      v2 = v0[50];
      v3 = v0[15];

      return sub_22B351BE4(v2);
    }

    v5 = v0[41];
    v6 = *(v5 + 56);
    v6(v0[51], 1, 1, v0[40]);
    v7 = v0[51];
    v8 = v0[40];
    if ((*(v5 + 48))(v7, 1, v8) != 1)
    {
      v75 = v0[5];
      (*(v0[41] + 32))(v75, v7, v8);
      v6(v75, 0, 1, v8);
LABEL_39:
      v104 = v0[50];
      v103 = v0[51];
      v106 = v0[48];
      v105 = v0[49];
      v107 = v0[46];
      v108 = v0[47];
      v110 = v0[44];
      v109 = v0[45];
      v112 = v0[42];
      v111 = v0[43];
      v114 = v0[39];
      v115 = v0[38];
      v116 = v0[37];
      v117 = v0[36];
      v118 = v0[35];
      v119 = v0[32];
      v120 = v0[31];
      v121 = v0[30];
      v122 = v0[29];
      v123 = v0[28];
      v124 = v0[25];
      v126 = v0[24];
      v130 = v0[21];
      v133 = v0[20];
      v136 = v0[17];
      v139 = v0[16];

      v113 = v0[1];

      return v113();
    }

    sub_22B123284(v7, &qword_27D8BAC20, &qword_22B366AC0);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v9 = v0[39];
  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[12];
  v13 = v0[7];
  v14 = __swift_project_value_buffer(v11, qword_28140BD10);
  v0[57] = v14;
  swift_beginAccess();
  v15 = *(v10 + 16);
  v0[58] = v15;
  v0[59] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v134 = v14;
  v131 = v15;
  v15(v9, v14, v11);

  v16 = sub_22B36050C();
  v17 = sub_22B360D2C();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[39];
  v21 = v0[33];
  v20 = v0[34];
  v22 = v0[12];
  if (v18)
  {
    v127 = v0[33];
    v23 = v0[11];
    v25 = v0[6];
    v24 = v0[7];
    v26 = swift_slowAlloc();
    v125 = v19;
    v27 = swift_slowAlloc();
    v140 = v27;
    *v26 = 136380931;
    *(v26 + 4) = sub_22B1A7B20(v25, v24, &v140);
    *(v26 + 12) = 1025;
    v28 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v28 = v23 & 0xFFFFFFFFFFFFLL;
    }

    *(v26 + 14) = v28 != 0;

    _os_log_impl(&dword_22B116000, v16, v17, "Fetching energy guidance from server for %{private}s hasUtilityInfo: %{BOOL,private}d", v26, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x23188F650](v27, -1, -1);
    MEMORY[0x23188F650](v26, -1, -1);

    v29 = *(v20 + 8);
    v29(v125, v127);
  }

  else
  {
    v30 = v0[12];

    v29 = *(v20 + 8);
    v29(v19, v21);
  }

  v128 = v29;
  v0[60] = v29;
  v131(v0[38], v134, v0[33]);
  v31 = sub_22B36050C();
  v32 = sub_22B360D0C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134349056;
    v34 = [objc_opt_self() sharedURLCache];
    v35 = [v34 currentMemoryUsage];

    *(v33 + 4) = v35;
    _os_log_impl(&dword_22B116000, v31, v32, "URLCache size before fetching: %{public}ld", v33, 0xCu);
    MEMORY[0x23188F650](v33, -1, -1);
  }

  v36 = v0[47];
  v37 = v0[40];
  v38 = v0[41];
  v39 = v0[38];
  v40 = v0[33];
  v41 = v0[34];
  v43 = v0[11];
  v42 = v0[12];

  v0[61] = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v128(v39, v40);
  v44 = *(v38 + 56);
  v0[62] = v44;
  v0[63] = (v38 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v44(v36, 1, 1, v37);
  v45 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v45 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {
    goto LABEL_30;
  }

  v46 = v0[10];
  if (!((v46 & 0x2000000000000000) != 0 ? HIBYTE(v46) & 0xF : v0[9] & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_30;
  }

  v48 = v0[14];
  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v0[13] & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    v50 = v0[22];
    v51 = v0[23];
    v52 = v0[21];
    sub_22B35E05C();
    if ((*(v51 + 48))(v52, 1, v50) == 1)
    {
      v53 = v0[37];
      v54 = v0[33];
      v55 = v0[14];
      sub_22B123284(v0[21], &unk_27D8BA080, &unk_22B364280);
      v131(v53, v134, v54);

      v56 = sub_22B36050C();
      v57 = sub_22B360D1C();

      v58 = os_log_type_enabled(v56, v57);
      v59 = v0[37];
      v60 = v0[33];
      if (v58)
      {
        v137 = v0[14];
        v61 = v0[13];
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v140 = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_22B1A7B20(v61, v137, &v140);
        _os_log_impl(&dword_22B116000, v56, v57, "Failed to create TimeZone with %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x23188F650](v63, -1, -1);
        MEMORY[0x23188F650](v62, -1, -1);
      }

      v128(v59, v60);
      v88 = v0[59];
      v89 = v0[7];
      (v0[58])(v0[36], v0[57], v0[33]);

      v90 = sub_22B36050C();
      v91 = sub_22B360D0C();

      v92 = os_log_type_enabled(v90, v91);
      v94 = v0[60];
      v93 = v0[61];
      v95 = v0[36];
      v96 = v0[33];
      if (v92)
      {
        v98 = v0[6];
        v97 = v0[7];
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v140 = v100;
        *v99 = 136380931;
        *(v99 + 4) = sub_22B1A7B20(v98, v97, &v140);
        *(v99 + 12) = 2050;
        v101 = [objc_opt_self() sharedURLCache];
        v102 = [v101 currentMemoryUsage];

        *(v99 + 14) = v102;
        _os_log_impl(&dword_22B116000, v90, v91, "URLCache size after fetching %{private}s: %{public}ld", v99, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v100);
        MEMORY[0x23188F650](v100, -1, -1);
        MEMORY[0x23188F650](v99, -1, -1);
      }

      v94(v95, v96);
      sub_22B2A4F58(v0[47], v0[5]);
      goto LABEL_39;
    }

    v76 = v0[24];
    v77 = v0[25];
    v78 = v0[22];
    v79 = v0[23];
    v80 = v0[20];
    v81 = v0[19];
    v82 = v0[17];
    v135 = v0[18];
    v138 = v0[15];
    v83 = v0[12];
    v84 = v0[10];
    v129 = v0[9];
    v132 = v0[11];
    (*(v79 + 32))(v77, v0[21], v78);
    (*(v79 + 16))(v76, v77, v78);

    sub_22B35E12C();
    (*(v81 + 16))(v82, v80, v135);
    (*(v81 + 56))(v82, 0, 1, v135);
    v85 = *(v138 + 128);
    v0[64] = v85;
    v86 = *(MEMORY[0x277D17E88] + 4);
    v67 = v85;
    v87 = swift_task_alloc();
    v0[65] = v87;
    *v87 = v0;
    v87[1] = sub_22B29F68C;
    v69 = v0[46];
    v70 = v0[31];
    v71 = v0[17];
  }

  else
  {
LABEL_30:
    v64 = v0[15];
    (*(v0[19] + 56))(v0[16], 1, 1, v0[18]);
    v65 = *(v64 + 128);
    v0[66] = v65;
    v66 = *(MEMORY[0x277D17E88] + 4);
    v67 = v65;
    v68 = swift_task_alloc();
    v0[67] = v68;
    *v68 = v0;
    v68[1] = sub_22B29FB84;
    v69 = v0[45];
    v70 = v0[30];
    v71 = v0[16];
  }

  v73 = v0[7];
  v72 = v0[8];
  v74 = v0[6];

  return MEMORY[0x282172098](v69, v72, v74, v73, v71, v67, v70);
}

uint64_t sub_22B29D0DC()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B29D1EC, v2, 0);
}

uint64_t sub_22B29D1EC()
{
  v147 = v0;
  v1 = v0[50];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v3[6];
  v0[53] = v4;
  v0[54] = (v3 + 6) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_22B123284(v1, &qword_27D8BAC20, &qword_22B366AC0);
    v5 = swift_task_alloc();
    v0[55] = v5;
    *v5 = v0;
    v5[1] = sub_22B29DD90;
    v6 = v0[49];
    v7 = v0[15];

    return sub_22B3528FC(v6);
  }

  v9 = v0[51];
  v10 = v0[44];
  v11 = v3[4];
  v11(v10, v1, v2);
  v11(v9, v10, v2);
  v12 = v3[7];
  v12(v9, 0, 1, v2);
  v13 = v0[51];
  v14 = v0[40];
  if (v4(v13, 1, v14) != 1)
  {
    v36 = v0[5];
    (*(v0[41] + 32))(v36, v13, v14);
    v12(v36, 0, 1, v14);
LABEL_13:
    v38 = v0[50];
    v37 = v0[51];
    v40 = v0[48];
    v39 = v0[49];
    v41 = v0[46];
    v42 = v0[47];
    v44 = v0[44];
    v43 = v0[45];
    v46 = v0[42];
    v45 = v0[43];
    v120 = v0[39];
    v121 = v0[38];
    v122 = v0[37];
    v123 = v0[36];
    v124 = v0[35];
    v125 = v0[32];
    v126 = v0[31];
    v127 = v0[30];
    v128 = v0[29];
    v129 = v0[28];
    v130 = v0[25];
    v132 = v0[24];
    v134 = v0[21];
    v138 = v0[20];
    v141 = v0[17];
    v143 = v0[16];

    v47 = v0[1];

    return v47();
  }

  sub_22B123284(v13, &qword_27D8BAC20, &qword_22B366AC0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v15 = v0[39];
  v17 = v0[33];
  v16 = v0[34];
  v18 = v0[12];
  v19 = v0[7];
  v20 = __swift_project_value_buffer(v17, qword_28140BD10);
  v0[57] = v20;
  swift_beginAccess();
  v21 = *(v16 + 16);
  v0[58] = v21;
  v0[59] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v140 = v20;
  v137 = v21;
  v21(v15, v20, v17);

  v22 = sub_22B36050C();
  v23 = sub_22B360D2C();

  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[39];
  v27 = v0[33];
  v26 = v0[34];
  v28 = v0[12];
  if (v24)
  {
    v133 = v0[33];
    v29 = v0[11];
    v31 = v0[6];
    v30 = v0[7];
    v32 = swift_slowAlloc();
    v131 = v25;
    v33 = swift_slowAlloc();
    v146 = v33;
    *v32 = 136380931;
    *(v32 + 4) = sub_22B1A7B20(v31, v30, &v146);
    *(v32 + 12) = 1025;
    v34 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v34 = v29 & 0xFFFFFFFFFFFFLL;
    }

    *(v32 + 14) = v34 != 0;

    _os_log_impl(&dword_22B116000, v22, v23, "Fetching energy guidance from server for %{private}s hasUtilityInfo: %{BOOL,private}d", v32, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x23188F650](v33, -1, -1);
    MEMORY[0x23188F650](v32, -1, -1);

    v35 = *(v26 + 8);
    v35(v131, v133);
  }

  else
  {
    v48 = v0[12];

    v35 = *(v26 + 8);
    v35(v25, v27);
  }

  v135 = v35;
  v0[60] = v35;
  v137(v0[38], v140, v0[33]);
  v49 = sub_22B36050C();
  v50 = sub_22B360D0C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134349056;
    v52 = [objc_opt_self() sharedURLCache];
    v53 = [v52 currentMemoryUsage];

    *(v51 + 4) = v53;
    _os_log_impl(&dword_22B116000, v49, v50, "URLCache size before fetching: %{public}ld", v51, 0xCu);
    MEMORY[0x23188F650](v51, -1, -1);
  }

  v54 = v0[47];
  v55 = v0[40];
  v56 = v0[41];
  v57 = v0[38];
  v58 = v0[33];
  v59 = v0[34];
  v61 = v0[11];
  v60 = v0[12];

  v0[61] = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v135(v57, v58);
  v62 = *(v56 + 56);
  v0[62] = v62;
  v0[63] = (v56 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v62(v54, 1, 1, v55);
  v63 = HIBYTE(v60) & 0xF;
  if ((v60 & 0x2000000000000000) == 0)
  {
    v63 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {
    goto LABEL_32;
  }

  v64 = v0[10];
  if (!((v64 & 0x2000000000000000) != 0 ? HIBYTE(v64) & 0xF : v0[9] & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_32;
  }

  v66 = v0[14];
  v67 = HIBYTE(v66) & 0xF;
  if ((v66 & 0x2000000000000000) == 0)
  {
    v67 = v0[13] & 0xFFFFFFFFFFFFLL;
  }

  if (v67)
  {
    v68 = v0[22];
    v69 = v0[23];
    v70 = v0[21];
    sub_22B35E05C();
    if ((*(v69 + 48))(v70, 1, v68) == 1)
    {
      v71 = v0[37];
      v72 = v0[33];
      v73 = v0[14];
      sub_22B123284(v0[21], &unk_27D8BA080, &unk_22B364280);
      v137(v71, v140, v72);

      v74 = sub_22B36050C();
      v75 = sub_22B360D1C();

      v76 = os_log_type_enabled(v74, v75);
      v77 = v0[37];
      v78 = v0[33];
      if (v76)
      {
        v144 = v0[14];
        v79 = v0[13];
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v146 = v81;
        *v80 = 136315138;
        *(v80 + 4) = sub_22B1A7B20(v79, v144, &v146);
        _os_log_impl(&dword_22B116000, v74, v75, "Failed to create TimeZone with %s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x23188F650](v81, -1, -1);
        MEMORY[0x23188F650](v80, -1, -1);
      }

      v135(v77, v78);
      v105 = v0[59];
      v106 = v0[7];
      (v0[58])(v0[36], v0[57], v0[33]);

      v107 = sub_22B36050C();
      v108 = sub_22B360D0C();

      v109 = os_log_type_enabled(v107, v108);
      v111 = v0[60];
      v110 = v0[61];
      v112 = v0[36];
      v113 = v0[33];
      if (v109)
      {
        v115 = v0[6];
        v114 = v0[7];
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v146 = v117;
        *v116 = 136380931;
        *(v116 + 4) = sub_22B1A7B20(v115, v114, &v146);
        *(v116 + 12) = 2050;
        v118 = [objc_opt_self() sharedURLCache];
        v119 = [v118 currentMemoryUsage];

        *(v116 + 14) = v119;
        _os_log_impl(&dword_22B116000, v107, v108, "URLCache size after fetching %{private}s: %{public}ld", v116, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v117);
        MEMORY[0x23188F650](v117, -1, -1);
        MEMORY[0x23188F650](v116, -1, -1);
      }

      v111(v112, v113);
      sub_22B2A4F58(v0[47], v0[5]);
      goto LABEL_13;
    }

    v93 = v0[24];
    v94 = v0[25];
    v95 = v0[22];
    v96 = v0[23];
    v97 = v0[20];
    v98 = v0[19];
    v99 = v0[17];
    v142 = v0[18];
    v145 = v0[15];
    v100 = v0[12];
    v101 = v0[10];
    v136 = v0[9];
    v139 = v0[11];
    (*(v96 + 32))(v94, v0[21], v95);
    (*(v96 + 16))(v93, v94, v95);

    sub_22B35E12C();
    (*(v98 + 16))(v99, v97, v142);
    (*(v98 + 56))(v99, 0, 1, v142);
    v102 = *(v145 + 128);
    v0[64] = v102;
    v103 = *(MEMORY[0x277D17E88] + 4);
    v85 = v102;
    v104 = swift_task_alloc();
    v0[65] = v104;
    *v104 = v0;
    v104[1] = sub_22B29F68C;
    v87 = v0[46];
    v88 = v0[31];
    v89 = v0[17];
  }

  else
  {
LABEL_32:
    v82 = v0[15];
    (*(v0[19] + 56))(v0[16], 1, 1, v0[18]);
    v83 = *(v82 + 128);
    v0[66] = v83;
    v84 = *(MEMORY[0x277D17E88] + 4);
    v85 = v83;
    v86 = swift_task_alloc();
    v0[67] = v86;
    *v86 = v0;
    v86[1] = sub_22B29FB84;
    v87 = v0[45];
    v88 = v0[30];
    v89 = v0[16];
  }

  v91 = v0[7];
  v90 = v0[8];
  v92 = v0[6];

  return MEMORY[0x282172098](v87, v90, v92, v91, v89, v85, v88);
}

uint64_t sub_22B29DD90()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B29DEA0, v2, 0);
}

uint64_t sub_22B29DEA0()
{
  v148 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 392);
  v3 = *(v0 + 320);
  if ((*(v0 + 424))(v2, 1, v3) == 1)
  {
    sub_22B123284(v2, &qword_27D8BAC20, &qword_22B366AC0);
    v4 = swift_task_alloc();
    *(v0 + 448) = v4;
    *v4 = v0;
    v4[1] = sub_22B29EA34;
    v5 = *(v0 + 384);
    v6 = *(v0 + 120);

    return sub_22B35346C(v5);
  }

  v8 = *(v0 + 408);
  v9 = *(v0 + 344);
  v10 = *(v0 + 328);
  v11 = *(v10 + 32);
  v11(v9, v2, v3);
  v11(v8, v9, v3);
  v12 = *(v10 + 56);
  v12(v8, 0, 1, v3);
  v13 = *(v0 + 320);
  v14 = *(v0 + 328);
  v15 = *(v0 + 408);
  if ((*(v0 + 424))(v15, 1, v13) != 1)
  {
    v37 = *(v0 + 40);
    (*(v14 + 32))(v37, v15, v13);
    v12(v37, 0, 1, v13);
LABEL_13:
    v39 = *(v0 + 400);
    v38 = *(v0 + 408);
    v41 = *(v0 + 384);
    v40 = *(v0 + 392);
    v42 = *(v0 + 368);
    v43 = *(v0 + 376);
    v45 = *(v0 + 352);
    v44 = *(v0 + 360);
    v47 = *(v0 + 336);
    v46 = *(v0 + 344);
    v121 = *(v0 + 312);
    v122 = *(v0 + 304);
    v123 = *(v0 + 296);
    v124 = *(v0 + 288);
    v125 = *(v0 + 280);
    v126 = *(v0 + 256);
    v127 = *(v0 + 248);
    v128 = *(v0 + 240);
    v129 = *(v0 + 232);
    v130 = *(v0 + 224);
    v131 = *(v0 + 200);
    v133 = *(v0 + 192);
    v135 = *(v0 + 168);
    v139 = *(v0 + 160);
    v142 = *(v0 + 136);
    v144 = *(v0 + 128);

    v48 = *(v0 + 8);

    return v48();
  }

  sub_22B123284(v15, &qword_27D8BAC20, &qword_22B366AC0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 312);
  v18 = *(v0 + 264);
  v17 = *(v0 + 272);
  v19 = *(v0 + 96);
  v20 = *(v0 + 56);
  v21 = __swift_project_value_buffer(v18, qword_28140BD10);
  *(v0 + 456) = v21;
  swift_beginAccess();
  v22 = *(v17 + 16);
  *(v0 + 464) = v22;
  *(v0 + 472) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v141 = v21;
  v138 = v22;
  v22(v16, v21, v18);

  v23 = sub_22B36050C();
  v24 = sub_22B360D2C();

  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 312);
  v28 = *(v0 + 264);
  v27 = *(v0 + 272);
  v29 = *(v0 + 96);
  if (v25)
  {
    v134 = *(v0 + 264);
    v30 = *(v0 + 88);
    v32 = *(v0 + 48);
    v31 = *(v0 + 56);
    v33 = swift_slowAlloc();
    v132 = v26;
    v34 = swift_slowAlloc();
    v147 = v34;
    *v33 = 136380931;
    *(v33 + 4) = sub_22B1A7B20(v32, v31, &v147);
    *(v33 + 12) = 1025;
    v35 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v35 = v30 & 0xFFFFFFFFFFFFLL;
    }

    *(v33 + 14) = v35 != 0;

    _os_log_impl(&dword_22B116000, v23, v24, "Fetching energy guidance from server for %{private}s hasUtilityInfo: %{BOOL,private}d", v33, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x23188F650](v34, -1, -1);
    MEMORY[0x23188F650](v33, -1, -1);

    v36 = *(v27 + 8);
    v36(v132, v134);
  }

  else
  {
    v49 = *(v0 + 96);

    v36 = *(v27 + 8);
    v36(v26, v28);
  }

  v136 = v36;
  *(v0 + 480) = v36;
  v138(*(v0 + 304), v141, *(v0 + 264));
  v50 = sub_22B36050C();
  v51 = sub_22B360D0C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 134349056;
    v53 = [objc_opt_self() sharedURLCache];
    v54 = [v53 currentMemoryUsage];

    *(v52 + 4) = v54;
    _os_log_impl(&dword_22B116000, v50, v51, "URLCache size before fetching: %{public}ld", v52, 0xCu);
    MEMORY[0x23188F650](v52, -1, -1);
  }

  v55 = *(v0 + 376);
  v56 = *(v0 + 320);
  v57 = *(v0 + 328);
  v58 = *(v0 + 304);
  v59 = *(v0 + 264);
  v60 = *(v0 + 272);
  v62 = *(v0 + 88);
  v61 = *(v0 + 96);

  *(v0 + 488) = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v136(v58, v59);
  v63 = *(v57 + 56);
  *(v0 + 496) = v63;
  *(v0 + 504) = (v57 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v63(v55, 1, 1, v56);
  v64 = HIBYTE(v61) & 0xF;
  if ((v61 & 0x2000000000000000) == 0)
  {
    v64 = v62 & 0xFFFFFFFFFFFFLL;
  }

  if (!v64)
  {
    goto LABEL_32;
  }

  v65 = *(v0 + 80);
  if (!((v65 & 0x2000000000000000) != 0 ? HIBYTE(v65) & 0xF : *(v0 + 72) & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_32;
  }

  v67 = *(v0 + 112);
  v68 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v68 = *(v0 + 104) & 0xFFFFFFFFFFFFLL;
  }

  if (v68)
  {
    v69 = *(v0 + 176);
    v70 = *(v0 + 184);
    v71 = *(v0 + 168);
    sub_22B35E05C();
    if ((*(v70 + 48))(v71, 1, v69) == 1)
    {
      v72 = *(v0 + 296);
      v73 = *(v0 + 264);
      v74 = *(v0 + 112);
      sub_22B123284(*(v0 + 168), &unk_27D8BA080, &unk_22B364280);
      v138(v72, v141, v73);

      v75 = sub_22B36050C();
      v76 = sub_22B360D1C();

      v77 = os_log_type_enabled(v75, v76);
      v78 = *(v0 + 296);
      v79 = *(v0 + 264);
      if (v77)
      {
        v145 = *(v0 + 112);
        v80 = *(v0 + 104);
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v147 = v82;
        *v81 = 136315138;
        *(v81 + 4) = sub_22B1A7B20(v80, v145, &v147);
        _os_log_impl(&dword_22B116000, v75, v76, "Failed to create TimeZone with %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x23188F650](v82, -1, -1);
        MEMORY[0x23188F650](v81, -1, -1);
      }

      v136(v78, v79);
      v106 = *(v0 + 472);
      v107 = *(v0 + 56);
      (*(v0 + 464))(*(v0 + 288), *(v0 + 456), *(v0 + 264));

      v108 = sub_22B36050C();
      v109 = sub_22B360D0C();

      v110 = os_log_type_enabled(v108, v109);
      v112 = *(v0 + 480);
      v111 = *(v0 + 488);
      v113 = *(v0 + 288);
      v114 = *(v0 + 264);
      if (v110)
      {
        v116 = *(v0 + 48);
        v115 = *(v0 + 56);
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v147 = v118;
        *v117 = 136380931;
        *(v117 + 4) = sub_22B1A7B20(v116, v115, &v147);
        *(v117 + 12) = 2050;
        v119 = [objc_opt_self() sharedURLCache];
        v120 = [v119 currentMemoryUsage];

        *(v117 + 14) = v120;
        _os_log_impl(&dword_22B116000, v108, v109, "URLCache size after fetching %{private}s: %{public}ld", v117, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v118);
        MEMORY[0x23188F650](v118, -1, -1);
        MEMORY[0x23188F650](v117, -1, -1);
      }

      v112(v113, v114);
      sub_22B2A4F58(*(v0 + 376), *(v0 + 40));
      goto LABEL_13;
    }

    v94 = *(v0 + 192);
    v95 = *(v0 + 200);
    v96 = *(v0 + 176);
    v97 = *(v0 + 184);
    v98 = *(v0 + 160);
    v99 = *(v0 + 152);
    v100 = *(v0 + 136);
    v143 = *(v0 + 144);
    v146 = *(v0 + 120);
    v101 = *(v0 + 96);
    v102 = *(v0 + 80);
    v137 = *(v0 + 72);
    v140 = *(v0 + 88);
    (*(v97 + 32))(v95, *(v0 + 168), v96);
    (*(v97 + 16))(v94, v95, v96);

    sub_22B35E12C();
    (*(v99 + 16))(v100, v98, v143);
    (*(v99 + 56))(v100, 0, 1, v143);
    v103 = *(v146 + 128);
    *(v0 + 512) = v103;
    v104 = *(MEMORY[0x277D17E88] + 4);
    v86 = v103;
    v105 = swift_task_alloc();
    *(v0 + 520) = v105;
    *v105 = v0;
    v105[1] = sub_22B29F68C;
    v88 = *(v0 + 368);
    v89 = *(v0 + 248);
    v90 = *(v0 + 136);
  }

  else
  {
LABEL_32:
    v83 = *(v0 + 120);
    (*(*(v0 + 152) + 56))(*(v0 + 128), 1, 1, *(v0 + 144));
    v84 = *(v83 + 128);
    *(v0 + 528) = v84;
    v85 = *(MEMORY[0x277D17E88] + 4);
    v86 = v84;
    v87 = swift_task_alloc();
    *(v0 + 536) = v87;
    *v87 = v0;
    v87[1] = sub_22B29FB84;
    v88 = *(v0 + 360);
    v89 = *(v0 + 240);
    v90 = *(v0 + 128);
  }

  v92 = *(v0 + 56);
  v91 = *(v0 + 64);
  v93 = *(v0 + 48);

  return MEMORY[0x282172098](v88, v91, v93, v92, v90, v86, v89);
}

uint64_t sub_22B29EA34()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B29EB44, v2, 0);
}

uint64_t sub_22B29EB44()
{
  v147 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 384);
  v3 = *(v0 + 320);
  if ((*(v0 + 424))(v2, 1, v3) == 1)
  {
    sub_22B123284(v2, &qword_27D8BAC20, &qword_22B366AC0);
    v4 = *(v0 + 328);
    v5 = *(v4 + 56);
    v5(*(v0 + 408), 1, 1, *(v0 + 320));
    v6 = (v4 + 48);
  }

  else
  {
    v6 = (v0 + 424);
    v7 = *(v0 + 408);
    v9 = *(v0 + 328);
    v8 = *(v0 + 336);
    v10 = *(v9 + 32);
    v10(v8, v2, v3);
    v10(v7, v8, v3);
    v5 = *(v9 + 56);
    v5(v7, 0, 1, v3);
    v11 = *(v0 + 328) + 48;
  }

  v12 = *(v0 + 408);
  v13 = *(v0 + 320);
  if ((*v6)(v12, 1, v13) != 1)
  {
    v35 = *(v0 + 40);
    (*(*(v0 + 328) + 32))(v35, v12, v13);
    v5(v35, 0, 1, v13);
LABEL_12:
    v37 = *(v0 + 400);
    v36 = *(v0 + 408);
    v39 = *(v0 + 384);
    v38 = *(v0 + 392);
    v40 = *(v0 + 368);
    v41 = *(v0 + 376);
    v43 = *(v0 + 352);
    v42 = *(v0 + 360);
    v45 = *(v0 + 336);
    v44 = *(v0 + 344);
    v120 = *(v0 + 312);
    v121 = *(v0 + 304);
    v122 = *(v0 + 296);
    v123 = *(v0 + 288);
    v124 = *(v0 + 280);
    v125 = *(v0 + 256);
    v126 = *(v0 + 248);
    v127 = *(v0 + 240);
    v128 = *(v0 + 232);
    v129 = *(v0 + 224);
    v130 = *(v0 + 200);
    v132 = *(v0 + 192);
    v134 = *(v0 + 168);
    v138 = *(v0 + 160);
    v141 = *(v0 + 136);
    v143 = *(v0 + 128);

    v46 = *(v0 + 8);

    return v46();
  }

  sub_22B123284(v12, &qword_27D8BAC20, &qword_22B366AC0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 312);
  v16 = *(v0 + 264);
  v15 = *(v0 + 272);
  v17 = *(v0 + 96);
  v18 = *(v0 + 56);
  v19 = __swift_project_value_buffer(v16, qword_28140BD10);
  *(v0 + 456) = v19;
  swift_beginAccess();
  v20 = *(v15 + 16);
  *(v0 + 464) = v20;
  *(v0 + 472) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v140 = v19;
  v137 = v20;
  v20(v14, v19, v16);

  v21 = sub_22B36050C();
  v22 = sub_22B360D2C();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 312);
  v26 = *(v0 + 264);
  v25 = *(v0 + 272);
  v27 = *(v0 + 96);
  if (v23)
  {
    v133 = *(v0 + 264);
    v28 = *(v0 + 88);
    v30 = *(v0 + 48);
    v29 = *(v0 + 56);
    v31 = swift_slowAlloc();
    v131 = v24;
    v32 = swift_slowAlloc();
    v146 = v32;
    *v31 = 136380931;
    *(v31 + 4) = sub_22B1A7B20(v30, v29, &v146);
    *(v31 + 12) = 1025;
    v33 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v33 = v28 & 0xFFFFFFFFFFFFLL;
    }

    *(v31 + 14) = v33 != 0;

    _os_log_impl(&dword_22B116000, v21, v22, "Fetching energy guidance from server for %{private}s hasUtilityInfo: %{BOOL,private}d", v31, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x23188F650](v32, -1, -1);
    MEMORY[0x23188F650](v31, -1, -1);

    v34 = *(v25 + 8);
    v34(v131, v133);
  }

  else
  {
    v48 = *(v0 + 96);

    v34 = *(v25 + 8);
    v34(v24, v26);
  }

  v135 = v34;
  *(v0 + 480) = v34;
  v137(*(v0 + 304), v140, *(v0 + 264));
  v49 = sub_22B36050C();
  v50 = sub_22B360D0C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134349056;
    v52 = [objc_opt_self() sharedURLCache];
    v53 = [v52 currentMemoryUsage];

    *(v51 + 4) = v53;
    _os_log_impl(&dword_22B116000, v49, v50, "URLCache size before fetching: %{public}ld", v51, 0xCu);
    MEMORY[0x23188F650](v51, -1, -1);
  }

  v54 = *(v0 + 376);
  v55 = *(v0 + 320);
  v56 = *(v0 + 328);
  v57 = *(v0 + 304);
  v58 = *(v0 + 264);
  v59 = *(v0 + 272);
  v61 = *(v0 + 88);
  v60 = *(v0 + 96);

  *(v0 + 488) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v135(v57, v58);
  v62 = *(v56 + 56);
  *(v0 + 496) = v62;
  *(v0 + 504) = (v56 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v62(v54, 1, 1, v55);
  v63 = HIBYTE(v60) & 0xF;
  if ((v60 & 0x2000000000000000) == 0)
  {
    v63 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {
    goto LABEL_31;
  }

  v64 = *(v0 + 80);
  if (!((v64 & 0x2000000000000000) != 0 ? HIBYTE(v64) & 0xF : *(v0 + 72) & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_31;
  }

  v66 = *(v0 + 112);
  v67 = HIBYTE(v66) & 0xF;
  if ((v66 & 0x2000000000000000) == 0)
  {
    v67 = *(v0 + 104) & 0xFFFFFFFFFFFFLL;
  }

  if (v67)
  {
    v68 = *(v0 + 176);
    v69 = *(v0 + 184);
    v70 = *(v0 + 168);
    sub_22B35E05C();
    if ((*(v69 + 48))(v70, 1, v68) == 1)
    {
      v71 = *(v0 + 296);
      v72 = *(v0 + 264);
      v73 = *(v0 + 112);
      sub_22B123284(*(v0 + 168), &unk_27D8BA080, &unk_22B364280);
      v137(v71, v140, v72);

      v74 = sub_22B36050C();
      v75 = sub_22B360D1C();

      v76 = os_log_type_enabled(v74, v75);
      v77 = *(v0 + 296);
      v78 = *(v0 + 264);
      if (v76)
      {
        v144 = *(v0 + 112);
        v79 = *(v0 + 104);
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v146 = v81;
        *v80 = 136315138;
        *(v80 + 4) = sub_22B1A7B20(v79, v144, &v146);
        _os_log_impl(&dword_22B116000, v74, v75, "Failed to create TimeZone with %s", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x23188F650](v81, -1, -1);
        MEMORY[0x23188F650](v80, -1, -1);
      }

      v135(v77, v78);
      v105 = *(v0 + 472);
      v106 = *(v0 + 56);
      (*(v0 + 464))(*(v0 + 288), *(v0 + 456), *(v0 + 264));

      v107 = sub_22B36050C();
      v108 = sub_22B360D0C();

      v109 = os_log_type_enabled(v107, v108);
      v111 = *(v0 + 480);
      v110 = *(v0 + 488);
      v112 = *(v0 + 288);
      v113 = *(v0 + 264);
      if (v109)
      {
        v115 = *(v0 + 48);
        v114 = *(v0 + 56);
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v146 = v117;
        *v116 = 136380931;
        *(v116 + 4) = sub_22B1A7B20(v115, v114, &v146);
        *(v116 + 12) = 2050;
        v118 = [objc_opt_self() sharedURLCache];
        v119 = [v118 currentMemoryUsage];

        *(v116 + 14) = v119;
        _os_log_impl(&dword_22B116000, v107, v108, "URLCache size after fetching %{private}s: %{public}ld", v116, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v117);
        MEMORY[0x23188F650](v117, -1, -1);
        MEMORY[0x23188F650](v116, -1, -1);
      }

      v111(v112, v113);
      sub_22B2A4F58(*(v0 + 376), *(v0 + 40));
      goto LABEL_12;
    }

    v93 = *(v0 + 192);
    v94 = *(v0 + 200);
    v95 = *(v0 + 176);
    v96 = *(v0 + 184);
    v97 = *(v0 + 160);
    v98 = *(v0 + 152);
    v99 = *(v0 + 136);
    v142 = *(v0 + 144);
    v145 = *(v0 + 120);
    v100 = *(v0 + 96);
    v101 = *(v0 + 80);
    v136 = *(v0 + 72);
    v139 = *(v0 + 88);
    (*(v96 + 32))(v94, *(v0 + 168), v95);
    (*(v96 + 16))(v93, v94, v95);

    sub_22B35E12C();
    (*(v98 + 16))(v99, v97, v142);
    (*(v98 + 56))(v99, 0, 1, v142);
    v102 = *(v145 + 128);
    *(v0 + 512) = v102;
    v103 = *(MEMORY[0x277D17E88] + 4);
    v85 = v102;
    v104 = swift_task_alloc();
    *(v0 + 520) = v104;
    *v104 = v0;
    v104[1] = sub_22B29F68C;
    v87 = *(v0 + 368);
    v88 = *(v0 + 248);
    v89 = *(v0 + 136);
  }

  else
  {
LABEL_31:
    v82 = *(v0 + 120);
    (*(*(v0 + 152) + 56))(*(v0 + 128), 1, 1, *(v0 + 144));
    v83 = *(v82 + 128);
    *(v0 + 528) = v83;
    v84 = *(MEMORY[0x277D17E88] + 4);
    v85 = v83;
    v86 = swift_task_alloc();
    *(v0 + 536) = v86;
    *v86 = v0;
    v86[1] = sub_22B29FB84;
    v87 = *(v0 + 360);
    v88 = *(v0 + 240);
    v89 = *(v0 + 128);
  }

  v91 = *(v0 + 56);
  v90 = *(v0 + 64);
  v92 = *(v0 + 48);

  return MEMORY[0x282172098](v87, v90, v92, v91, v89, v85, v88);
}

uint64_t sub_22B29F68C()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *(*v1 + 512);
  v5 = *(*v1 + 136);
  v6 = *v1;

  sub_22B123284(v5, &qword_27D8BAC28, &qword_22B366AD0);

  v7 = *(v2 + 120);
  if (v0)
  {
    v8 = sub_22B2A0048;
  }

  else
  {
    v8 = sub_22B29F804;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B29F804()
{
  v53 = v0;
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 320);
  v6 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  (*(v8 + 8))(v6, v7);
  sub_22B123284(v4, &qword_27D8BAC20, &qword_22B366AC0);
  v2(v3, 0, 1, v5);
  sub_22B2A4F58(v3, v4);
  v9 = *(v0 + 472);
  v10 = *(v0 + 56);
  (*(v0 + 464))(*(v0 + 288), *(v0 + 456), *(v0 + 264));

  v11 = sub_22B36050C();
  v12 = sub_22B360D0C();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 480);
  v15 = *(v0 + 288);
  v16 = *(v0 + 264);
  if (v13)
  {
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v50 = *(v0 + 488);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v52 = v20;
    *v19 = 136380931;
    *(v19 + 4) = sub_22B1A7B20(v18, v17, &v52);
    *(v19 + 12) = 2050;
    v21 = [objc_opt_self() sharedURLCache];
    v22 = [v21 currentMemoryUsage];

    *(v19 + 14) = v22;
    _os_log_impl(&dword_22B116000, v11, v12, "URLCache size after fetching %{private}s: %{public}ld", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23188F650](v20, -1, -1);
    MEMORY[0x23188F650](v19, -1, -1);

    v14(v15, v16);
  }

  else
  {

    v14(v15, v16);
  }

  sub_22B2A4F58(*(v0 + 376), *(v0 + 40));
  v24 = *(v0 + 400);
  v23 = *(v0 + 408);
  v26 = *(v0 + 384);
  v25 = *(v0 + 392);
  v27 = *(v0 + 368);
  v28 = *(v0 + 376);
  v30 = *(v0 + 352);
  v29 = *(v0 + 360);
  v32 = *(v0 + 336);
  v31 = *(v0 + 344);
  v35 = *(v0 + 312);
  v36 = *(v0 + 304);
  v37 = *(v0 + 296);
  v38 = *(v0 + 288);
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 248);
  v42 = *(v0 + 240);
  v43 = *(v0 + 232);
  v44 = *(v0 + 224);
  v45 = *(v0 + 200);
  v46 = *(v0 + 192);
  v47 = *(v0 + 168);
  v48 = *(v0 + 160);
  v49 = *(v0 + 136);
  v51 = *(v0 + 128);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22B29FB84()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *(*v1 + 528);
  v5 = *(*v1 + 128);
  v6 = *v1;

  sub_22B123284(v5, &qword_27D8BAC28, &qword_22B366AD0);

  v7 = *(v2 + 120);
  if (v0)
  {
    v8 = sub_22B2A04E4;
  }

  else
  {
    v8 = sub_22B29FCFC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B29FCFC()
{
  v50 = v0;
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 376);
  v4 = *(v0 + 360);
  v5 = *(v0 + 320);
  sub_22B123284(v3, &qword_27D8BAC20, &qword_22B366AC0);
  v2(v4, 0, 1, v5);
  sub_22B2A4F58(v4, v3);
  v6 = *(v0 + 472);
  v7 = *(v0 + 56);
  (*(v0 + 464))(*(v0 + 288), *(v0 + 456), *(v0 + 264));

  v8 = sub_22B36050C();
  v9 = sub_22B360D0C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 480);
  v12 = *(v0 + 288);
  v13 = *(v0 + 264);
  if (v10)
  {
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v47 = *(v0 + 488);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v49 = v17;
    *v16 = 136380931;
    *(v16 + 4) = sub_22B1A7B20(v15, v14, &v49);
    *(v16 + 12) = 2050;
    v18 = [objc_opt_self() sharedURLCache];
    v19 = [v18 currentMemoryUsage];

    *(v16 + 14) = v19;
    _os_log_impl(&dword_22B116000, v8, v9, "URLCache size after fetching %{private}s: %{public}ld", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);

    v11(v12, v13);
  }

  else
  {

    v11(v12, v13);
  }

  sub_22B2A4F58(*(v0 + 376), *(v0 + 40));
  v21 = *(v0 + 400);
  v20 = *(v0 + 408);
  v23 = *(v0 + 384);
  v22 = *(v0 + 392);
  v24 = *(v0 + 368);
  v25 = *(v0 + 376);
  v27 = *(v0 + 352);
  v26 = *(v0 + 360);
  v29 = *(v0 + 336);
  v28 = *(v0 + 344);
  v32 = *(v0 + 312);
  v33 = *(v0 + 304);
  v34 = *(v0 + 296);
  v35 = *(v0 + 288);
  v36 = *(v0 + 280);
  v37 = *(v0 + 256);
  v38 = *(v0 + 248);
  v39 = *(v0 + 240);
  v40 = *(v0 + 232);
  v41 = *(v0 + 224);
  v42 = *(v0 + 200);
  v43 = *(v0 + 192);
  v44 = *(v0 + 168);
  v45 = *(v0 + 160);
  v46 = *(v0 + 136);
  v48 = *(v0 + 128);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_22B2A0048()
{
  v70 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  (*(v3 + 8))(v1, v2);
  v62 = *(v0 + 472);
  v4 = *(v0 + 456);
  v5 = *(v0 + 280);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 224);
  v9 = *(v0 + 232);
  v57 = v8;
  v59 = *(v0 + 464);
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v10 + 32);
  v12(v7, *(v0 + 248), v11);
  v12(v9, v7, v11);
  v59(v5, v4, v6);
  v13 = *(v10 + 16);
  v13(v57, v9, v11);
  v14 = sub_22B36050C();
  v15 = sub_22B360D1C();
  v16 = os_log_type_enabled(v14, v15);
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 208);
  if (v16)
  {
    v63 = v15;
    v20 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v20 = 138412290;
    sub_22B2A51E0(&qword_2814091A0, MEMORY[0x277D17F08]);
    swift_allocError();
    v13(v21, v17, v19);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    v23 = *(v18 + 8);
    v23(v17, v19);
    *(v20 + 4) = v22;
    *v60 = v22;
    _os_log_impl(&dword_22B116000, v14, v63, "Failed to fetch energy guidance from server %@", v20, 0xCu);
    sub_22B123284(v60, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v60, -1, -1);
    MEMORY[0x23188F650](v20, -1, -1);
  }

  else
  {

    v23 = *(v18 + 8);
    v23(v17, v19);
  }

  v24 = *(v0 + 488);
  v25 = *(v0 + 232);
  v26 = *(v0 + 208);
  (*(v0 + 480))(*(v0 + 280), *(v0 + 264));
  v27 = [objc_opt_self() processInfo];
  v28 = [v27 processName];

  v29 = sub_22B36084C();
  v31 = v30;

  v65 = 258;
  v66 = 1;
  v67 = v29;
  v68 = v31;
  v69 = 0;
  static AutoBugCaptureManager.sendIssue(_:)(&v65);
  v23(v25, v26);

  sub_22B2A4F58(*(v0 + 376), *(v0 + 40));
  v33 = *(v0 + 400);
  v32 = *(v0 + 408);
  v35 = *(v0 + 384);
  v34 = *(v0 + 392);
  v36 = *(v0 + 368);
  v37 = *(v0 + 376);
  v39 = *(v0 + 352);
  v38 = *(v0 + 360);
  v41 = *(v0 + 336);
  v40 = *(v0 + 344);
  v44 = *(v0 + 312);
  v45 = *(v0 + 304);
  v46 = *(v0 + 296);
  v47 = *(v0 + 288);
  v48 = *(v0 + 280);
  v49 = *(v0 + 256);
  v50 = *(v0 + 248);
  v51 = *(v0 + 240);
  v52 = *(v0 + 232);
  v53 = *(v0 + 224);
  v54 = *(v0 + 200);
  v55 = *(v0 + 192);
  v56 = *(v0 + 168);
  v58 = *(v0 + 160);
  v61 = *(v0 + 136);
  v64 = *(v0 + 128);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_22B2A04E4()
{
  v67 = v0;
  v1 = *(v0 + 232);
  v59 = *(v0 + 472);
  v2 = *(v0 + 456);
  v3 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v54 = v6;
  v56 = *(v0 + 464);
  v8 = *(v0 + 208);
  v9 = *(v7 + 32);
  v9(v5, *(v0 + 240), v8);
  v9(v1, v5, v8);
  v56(v3, v2, v4);
  v10 = *(v7 + 16);
  v10(v54, v1, v8);
  v11 = sub_22B36050C();
  v12 = sub_22B360D1C();
  v13 = os_log_type_enabled(v11, v12);
  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  v16 = *(v0 + 208);
  if (v13)
  {
    v60 = v12;
    v17 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v17 = 138412290;
    sub_22B2A51E0(&qword_2814091A0, MEMORY[0x277D17F08]);
    swift_allocError();
    v10(v18, v14, v16);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    v20 = *(v15 + 8);
    v20(v14, v16);
    *(v17 + 4) = v19;
    *v57 = v19;
    _os_log_impl(&dword_22B116000, v11, v60, "Failed to fetch energy guidance from server %@", v17, 0xCu);
    sub_22B123284(v57, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v57, -1, -1);
    MEMORY[0x23188F650](v17, -1, -1);
  }

  else
  {

    v20 = *(v15 + 8);
    v20(v14, v16);
  }

  v21 = *(v0 + 488);
  v22 = *(v0 + 232);
  v23 = *(v0 + 208);
  (*(v0 + 480))(*(v0 + 280), *(v0 + 264));
  v24 = [objc_opt_self() processInfo];
  v25 = [v24 processName];

  v26 = sub_22B36084C();
  v28 = v27;

  v62 = 258;
  v63 = 1;
  v64 = v26;
  v65 = v28;
  v66 = 0;
  static AutoBugCaptureManager.sendIssue(_:)(&v62);
  v20(v22, v23);

  sub_22B2A4F58(*(v0 + 376), *(v0 + 40));
  v30 = *(v0 + 400);
  v29 = *(v0 + 408);
  v32 = *(v0 + 384);
  v31 = *(v0 + 392);
  v33 = *(v0 + 368);
  v34 = *(v0 + 376);
  v36 = *(v0 + 352);
  v35 = *(v0 + 360);
  v38 = *(v0 + 336);
  v37 = *(v0 + 344);
  v41 = *(v0 + 312);
  v42 = *(v0 + 304);
  v43 = *(v0 + 296);
  v44 = *(v0 + 288);
  v45 = *(v0 + 280);
  v46 = *(v0 + 256);
  v47 = *(v0 + 248);
  v48 = *(v0 + 240);
  v49 = *(v0 + 232);
  v50 = *(v0 + 224);
  v51 = *(v0 + 200);
  v52 = *(v0 + 192);
  v53 = *(v0 + 168);
  v55 = *(v0 + 160);
  v58 = *(v0 + 136);
  v61 = *(v0 + 128);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_22B2A0948(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 72) = a1;
  *(v4 + 64) = a3;
  v5 = sub_22B36052C();
  *(v4 + 96) = v5;
  v6 = *(v5 - 8);
  *(v4 + 104) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v8 = sub_22B35DE9C();
  *(v4 + 128) = v8;
  v9 = *(v8 - 8);
  *(v4 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  v11 = type metadata accessor for CDEnergyGuidanceTracker();
  *(v4 + 152) = v11;
  v12 = *(v11 - 8);
  *(v4 + 160) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  v14 = *(type metadata accessor for CDEnergyWindowNotifications() - 8);
  *(v4 + 200) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2A0B50, v3, 0);
}

uint64_t sub_22B2A0B50()
{
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDB8;
  *(v0 + 216) = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B2A0BE8, v1, 0);
}

uint64_t sub_22B2A0BE8()
{
  v1 = v0[27];
  v2 = v0[11];
  v0[28] = sub_22B1802B0();

  return MEMORY[0x2822009F8](sub_22B2A0C58, v2, 0);
}

uint64_t sub_22B2A0C58()
{
  v136 = v0;
  v1 = *(v0 + 224);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v135[0] = MEMORY[0x277D84F90];
    sub_22B355680(0, v2, 0);
    v5 = v135[0];
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = *(v0 + 208);
      sub_22B2A5040(v6, v8, type metadata accessor for CDEnergyWindowNotifications);
      v9 = *v8;
      v10 = *(v4 + 8);

      sub_22B2A50A8(v8, type metadata accessor for CDEnergyWindowNotifications);
      v135[0] = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22B355680((v11 > 1), v12 + 1, 1);
        v5 = v135[0];
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v6 += v7;
      --v2;
    }

    while (v2);
    v14 = *(v0 + 224);
  }

  else
  {
    v15 = *(v0 + 224);

    v5 = MEMORY[0x277D84F90];
  }

  v16 = *(v0 + 80);
  *(v0 + 232) = sub_22B31A80C(v5);

  v17 = *(v16 + 16);
  *(v0 + 240) = v17;
  if (v17)
  {
    v18 = 0;
    v19 = *(v0 + 160);
    v20 = *(v19 + 80);
    *(v0 + 280) = v20;
    v21 = *(v19 + 72);
    *(v0 + 248) = v21;
    v22 = &unk_28140A000;
    while (1)
    {
      *(v0 + 256) = v18;
      v23 = *(v0 + 192);
      v24 = *(v0 + 144);
      v25 = *(v0 + 152);
      v26 = *(v0 + 128);
      v27 = *(v0 + 136);
      v28 = *(v0 + 72);
      v29 = *(v0 + 64);
      sub_22B2A5040(*(v0 + 80) + ((v20 + 32) & ~v20) + v21 * v18, v23, type metadata accessor for CDEnergyGuidanceTracker);
      v30 = v23 + *(v25 + 24);
      sub_22B35DDCC();
      LOBYTE(v30) = sub_22B35DDFC();
      (*(v27 + 8))(v24, v26);
      if (v30)
      {
        v31 = *(v0 + 232);
        v32 = *(v0 + 192);
        v33 = *v32;
        v34 = v32[1];
        if (!*(v31 + 16))
        {
          goto LABEL_41;
        }

        v35 = *(v31 + 40);
        sub_22B36149C();
        sub_22B3608FC();
        v36 = sub_22B3614DC();
        v37 = -1 << *(v31 + 32);
        v38 = v36 & ~v37;
        if (((*(v31 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v38) & 1) == 0)
        {
          goto LABEL_41;
        }

        v39 = ~v37;
        v40 = *(v0 + 232);
        while (1)
        {
          v41 = (*(v40 + 48) + 16 * v38);
          v42 = *v41 == v33 && v41[1] == v34;
          if (v42 || (sub_22B36134C() & 1) != 0)
          {
            break;
          }

          v40 = *(v0 + 232);
          v38 = (v38 + 1) & v39;
          if (((*(v40 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v38) & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        v43 = *(v0 + 192);
        v44 = *(v0 + 152);
        v45 = (v43 + v44[7]);
        v47 = *v45;
        v46 = v45[1];
        v48 = v47 & 0xFFFFFFFFFFFFLL;
        if ((v46 & 0x2000000000000000) != 0 ? HIBYTE(v46) & 0xF : v48)
        {
          goto LABEL_41;
        }

        v50 = (v43 + v44[9]);
        v52 = *v50;
        v51 = v50[1];
        v53 = v52 & 0xFFFFFFFFFFFFLL;
        v54 = (v51 & 0x2000000000000000) != 0 ? HIBYTE(v51) & 0xF : v53;
        if (v54 || ((v55 = (v43 + v44[8]), v57 = *v55, v56 = v55[1], v58 = v57 & 0xFFFFFFFFFFFFLL, (v56 & 0x2000000000000000) != 0) ? (v59 = HIBYTE(v56) & 0xF) : (v59 = v58), v59 || *(v43 + 16)))
        {
LABEL_41:
          sub_22B2A5040(*(v0 + 192), *(v0 + 176), type metadata accessor for CDEnergyGuidanceTracker);
          v80 = MEMORY[0x277D84F90];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_22B32D094(0, v80[2] + 1, 1, v80);
          }

          v82 = v80[2];
          v81 = v80[3];
          if (v82 >= v81 >> 1)
          {
            v80 = sub_22B32D094(v81 > 1, v82 + 1, 1, v80);
          }

          *(v0 + 264) = v80;
          v83 = *(v0 + 248);
          v84 = *(v0 + 280);
          v85 = *(v0 + 176);
          v80[2] = v82 + 1;
          sub_22B2A5108(v85, v80 + ((v84 + 32) & ~v84) + v83 * v82, type metadata accessor for CDEnergyGuidanceTracker);
          if (v22[25] != -1)
          {
            swift_once();
          }

          v86 = *(v0 + 192);
          v87 = *(v0 + 168);
          v89 = *(v0 + 104);
          v88 = *(v0 + 112);
          v90 = *(v0 + 96);
          v91 = __swift_project_value_buffer(v90, qword_28140BD10);
          swift_beginAccess();
          (*(v89 + 16))(v88, v91, v90);
          sub_22B2A5040(v86, v87, type metadata accessor for CDEnergyGuidanceTracker);
          v92 = sub_22B36050C();
          v93 = sub_22B360D2C();
          v94 = os_log_type_enabled(v92, v93);
          v95 = *(v0 + 168);
          v96 = *(v0 + 112);
          v97 = *(v0 + 96);
          v98 = (*(v0 + 104) + 8);
          if (v94)
          {
            v132 = (*(v0 + 104) + 8);
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v135[0] = v100;
            *v99 = 136380675;
            v133 = v96;
            v130 = v97;
            v101 = *v95;
            v102 = v95[1];

            sub_22B2A50A8(v95, type metadata accessor for CDEnergyGuidanceTracker);
            v103 = sub_22B1A7B20(v101, v102, v135);

            *(v99 + 4) = v103;
            _os_log_impl(&dword_22B116000, v92, v93, "Purging and disabling cache for %{private}s", v99, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v100);
            MEMORY[0x23188F650](v100, -1, -1);
            MEMORY[0x23188F650](v99, -1, -1);

            (*v132)(v133, v130);
          }

          else
          {

            sub_22B2A50A8(v95, type metadata accessor for CDEnergyGuidanceTracker);
            (*v98)(v96, v97);
          }

          v104 = *(v0 + 192);
          v105 = *(v0 + 152);
          v106 = v105[8];
          v107 = (v104 + v105[7]);
          v108 = *v107;
          v134 = v107[1];
          v109 = (v104 + v105[9]);
          v110 = *v109;
          v111 = v109[1];
          v113 = *(v104 + v106);
          v112 = *(v104 + v106 + 8);
          v114 = *(v104 + 16);
          v115 = swift_task_alloc();
          *(v0 + 272) = v115;
          *v115 = v0;
          v115[1] = sub_22B2A15F4;
          v116 = *(v0 + 88);
          v138 = v112;

          return sub_22B299C0C(v33, v34, v114, v108, v134, v110, v111, v113);
        }

        if (v22[25] != -1)
        {
          swift_once();
          v43 = *(v0 + 192);
        }

        v60 = *(v0 + 184);
        v61 = *(v0 + 120);
        v63 = *(v0 + 96);
        v62 = *(v0 + 104);
        v64 = __swift_project_value_buffer(v63, qword_28140BD10);
        swift_beginAccess();
        (*(v62 + 16))(v61, v64, v63);
        sub_22B2A5040(v43, v60, type metadata accessor for CDEnergyGuidanceTracker);
        v65 = sub_22B36050C();
        v66 = sub_22B360D2C();
        v67 = os_log_type_enabled(v65, v66);
        v68 = *(v0 + 184);
        v69 = *(v0 + 120);
        v70 = *(v0 + 96);
        v71 = (*(v0 + 104) + 8);
        if (v67)
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v135[0] = v73;
          *v72 = 136380675;
          v129 = v70;
          v131 = v69;
          v74 = v22;
          v76 = *v68;
          v75 = v68[1];

          sub_22B2A50A8(v68, type metadata accessor for CDEnergyGuidanceTracker);
          v77 = sub_22B1A7B20(v76, v75, v135);

          *(v72 + 4) = v77;
          v22 = v74;
          _os_log_impl(&dword_22B116000, v65, v66, "grid ID currently saved in notifications. Skipping purge for %{private}s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v73);
          MEMORY[0x23188F650](v73, -1, -1);
          MEMORY[0x23188F650](v72, -1, -1);

          (*v71)(v131, v129);
        }

        else
        {

          sub_22B2A50A8(v68, type metadata accessor for CDEnergyGuidanceTracker);
          (*v71)(v69, v70);
        }
      }

      v78 = *(v0 + 240);
      v79 = *(v0 + 256) + 1;
      sub_22B2A50A8(*(v0 + 192), type metadata accessor for CDEnergyGuidanceTracker);
      if (v79 == v78)
      {
        v118 = *(v0 + 232);
        break;
      }

      v21 = *(v0 + 248);
      v18 = *(v0 + 256) + 1;
      LOBYTE(v20) = *(v0 + 280);
    }
  }

  v119 = *(v0 + 208);
  v120 = *(v0 + 184);
  v121 = *(v0 + 192);
  v123 = *(v0 + 168);
  v122 = *(v0 + 176);
  v124 = *(v0 + 144);
  v126 = *(v0 + 112);
  v125 = *(v0 + 120);

  v127 = *(v0 + 8);
  v128 = MEMORY[0x277D84F90];

  return v127(v128);
}

uint64_t sub_22B2A15F4()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2A1704, v2, 0);
}

uint64_t sub_22B2A1704()
{
  v118 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 256) + 1;
  sub_22B2A50A8(*(v0 + 192), type metadata accessor for CDEnergyGuidanceTracker);
  if (v3 == v2)
  {
LABEL_2:
    v4 = *(v0 + 232);

    v5 = *(v0 + 208);
    v6 = *(v0 + 184);
    v7 = *(v0 + 192);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = *(v0 + 144);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);

    v13 = *(v0 + 8);

    return v13(v1);
  }

  v15 = &unk_28140A000;
  v114 = v1;
  while (1)
  {
    v24 = *(v0 + 248);
    v25 = *(v0 + 256) + 1;
    *(v0 + 256) = v25;
    v26 = *(v0 + 192);
    v27 = *(v0 + 144);
    v28 = *(v0 + 152);
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);
    v31 = *(v0 + 72);
    v32 = *(v0 + 64);
    sub_22B2A5040(*(v0 + 80) + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + v24 * v25, v26, type metadata accessor for CDEnergyGuidanceTracker);
    v33 = v26 + *(v28 + 24);
    sub_22B35DDCC();
    LOBYTE(v33) = sub_22B35DDFC();
    (*(v30 + 8))(v27, v29);
    if (v33)
    {
      break;
    }

LABEL_8:
    v22 = *(v0 + 240);
    v23 = *(v0 + 256) + 1;
    sub_22B2A50A8(*(v0 + 192), type metadata accessor for CDEnergyGuidanceTracker);
    if (v23 == v22)
    {
      goto LABEL_2;
    }
  }

  v34 = *(v0 + 232);
  v35 = *(v0 + 192);
  v36 = *v35;
  v37 = v35[1];
  if (*(v34 + 16))
  {
    v38 = *(v34 + 40);
    sub_22B36149C();
    sub_22B3608FC();
    v39 = sub_22B3614DC();
    v40 = -1 << *(v34 + 32);
    v41 = v39 & ~v40;
    if ((*(v34 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v41))
    {
      v42 = ~v40;
      v43 = *(v0 + 232);
      while (1)
      {
        v44 = (*(v43 + 48) + 16 * v41);
        v45 = *v44 == v36 && v44[1] == v37;
        if (v45 || (sub_22B36134C() & 1) != 0)
        {
          break;
        }

        v43 = *(v0 + 232);
        v41 = (v41 + 1) & v42;
        if (((*(v43 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v41) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v46 = *(v0 + 192);
      v47 = *(v0 + 152);
      v48 = (v46 + v47[7]);
      v50 = *v48;
      v49 = v48[1];
      v51 = v50 & 0xFFFFFFFFFFFFLL;
      if (!((v49 & 0x2000000000000000) != 0 ? HIBYTE(v49) & 0xF : v51))
      {
        v53 = (v46 + v47[9]);
        v55 = *v53;
        v54 = v53[1];
        v56 = v55 & 0xFFFFFFFFFFFFLL;
        if (!((v54 & 0x2000000000000000) != 0 ? HIBYTE(v54) & 0xF : v56))
        {
          v58 = (v46 + v47[8]);
          v60 = *v58;
          v59 = v58[1];
          v61 = v60 & 0xFFFFFFFFFFFFLL;
          v62 = (v59 & 0x2000000000000000) != 0 ? HIBYTE(v59) & 0xF : v61;
          if (!v62 && !*(v46 + 16))
          {
            if (v15[25] != -1)
            {
              swift_once();
              v46 = *(v0 + 192);
            }

            v63 = *(v0 + 184);
            v64 = *(v0 + 120);
            v66 = *(v0 + 96);
            v65 = *(v0 + 104);
            v67 = __swift_project_value_buffer(v66, qword_28140BD10);
            swift_beginAccess();
            (*(v65 + 16))(v64, v67, v66);
            sub_22B2A5040(v46, v63, type metadata accessor for CDEnergyGuidanceTracker);
            v68 = sub_22B36050C();
            v69 = sub_22B360D2C();
            v70 = os_log_type_enabled(v68, v69);
            v71 = *(v0 + 184);
            v72 = *(v0 + 120);
            v73 = *(v0 + 96);
            v74 = (*(v0 + 104) + 8);
            if (v70)
            {
              v16 = swift_slowAlloc();
              v17 = swift_slowAlloc();
              v117[0] = v17;
              *v16 = 136380675;
              v111 = v72;
              v19 = *v71;
              v18 = v71[1];

              sub_22B2A50A8(v71, type metadata accessor for CDEnergyGuidanceTracker);
              v20 = sub_22B1A7B20(v19, v18, v117);

              *(v16 + 4) = v20;
              _os_log_impl(&dword_22B116000, v68, v69, "grid ID currently saved in notifications. Skipping purge for %{private}s", v16, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v17);
              v21 = v17;
              v15 = &unk_28140A000;
              MEMORY[0x23188F650](v21, -1, -1);
              MEMORY[0x23188F650](v16, -1, -1);

              (*v74)(v111, v73);
            }

            else
            {

              sub_22B2A50A8(v71, type metadata accessor for CDEnergyGuidanceTracker);
              (*v74)(v72, v73);
            }

            v1 = v114;
            goto LABEL_8;
          }
        }
      }
    }
  }

LABEL_37:
  sub_22B2A5040(*(v0 + 192), *(v0 + 176), type metadata accessor for CDEnergyGuidanceTracker);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_22B32D094(0, v1[2] + 1, 1, v1);
  }

  v76 = v1[2];
  v75 = v1[3];
  if (v76 >= v75 >> 1)
  {
    v1 = sub_22B32D094(v75 > 1, v76 + 1, 1, v1);
  }

  *(v0 + 264) = v1;
  v77 = *(v0 + 248);
  v78 = *(v0 + 280);
  v79 = *(v0 + 176);
  v1[2] = v76 + 1;
  sub_22B2A5108(v79, v1 + ((v78 + 32) & ~v78) + v77 * v76, type metadata accessor for CDEnergyGuidanceTracker);
  if (v15[25] != -1)
  {
    swift_once();
  }

  v80 = *(v0 + 192);
  v81 = *(v0 + 168);
  v83 = *(v0 + 104);
  v82 = *(v0 + 112);
  v84 = *(v0 + 96);
  v85 = __swift_project_value_buffer(v84, qword_28140BD10);
  swift_beginAccess();
  (*(v83 + 16))(v82, v85, v84);
  sub_22B2A5040(v80, v81, type metadata accessor for CDEnergyGuidanceTracker);
  v86 = sub_22B36050C();
  v87 = sub_22B360D2C();
  v88 = os_log_type_enabled(v86, v87);
  v89 = *(v0 + 168);
  v90 = *(v0 + 112);
  v91 = *(v0 + 96);
  v92 = (*(v0 + 104) + 8);
  if (v88)
  {
    v115 = (*(v0 + 104) + 8);
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v117[0] = v94;
    *v93 = 136380675;
    v112 = v91;
    v113 = v90;
    v95 = *v89;
    v96 = v89[1];

    sub_22B2A50A8(v89, type metadata accessor for CDEnergyGuidanceTracker);
    v97 = sub_22B1A7B20(v95, v96, v117);

    *(v93 + 4) = v97;
    _os_log_impl(&dword_22B116000, v86, v87, "Purging and disabling cache for %{private}s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v94);
    MEMORY[0x23188F650](v94, -1, -1);
    MEMORY[0x23188F650](v93, -1, -1);

    (*v115)(v113, v112);
  }

  else
  {

    sub_22B2A50A8(v89, type metadata accessor for CDEnergyGuidanceTracker);
    (*v92)(v90, v91);
  }

  v98 = *(v0 + 192);
  v99 = *(v0 + 152);
  v100 = v99[8];
  v101 = (v98 + v99[7]);
  v102 = *v101;
  v116 = v101[1];
  v103 = (v98 + v99[9]);
  v104 = *v103;
  v105 = v103[1];
  v107 = *(v98 + v100);
  v106 = *(v98 + v100 + 8);
  v108 = *(v98 + 16);
  v109 = swift_task_alloc();
  *(v0 + 272) = v109;
  *v109 = v0;
  v109[1] = sub_22B2A15F4;
  v110 = *(v0 + 88);
  v120 = v106;

  return sub_22B299C0C(v36, v37, v108, v102, v116, v104, v105, v107);
}

uint64_t sub_22B2A1F78(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = type metadata accessor for CDEnergyGuidanceTracker();
  v6 = v5[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[8];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  v16 = v5[9];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  if (v17 == *v19 && v18 == v19[1])
  {
    return 1;
  }

  else
  {
    return sub_22B36134C() & 1;
  }
}

uint64_t sub_22B2A20A0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for CDEnergyGuidanceCache();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_22B36052C();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA240, &qword_22B3636E8);
  v2[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v11 = type metadata accessor for CDEnergyGuidanceTracker();
  v2[19] = v11;
  v12 = *(v11 - 8);
  v2[20] = v12;
  v13 = *(v12 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v14 = sub_22B35DE9C();
  v2[25] = v14;
  v15 = *(v14 - 8);
  v2[26] = v15;
  v16 = *(v15 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2A2304, v1, 0);
}

uint64_t sub_22B2A2304()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 40);
  sub_22B35DE6C();
  v3 = *(v2 + 16);
  *(v0 + 224) = v3;
  if (v3)
  {
    v4 = *(v0 + 192);
    v5 = *(v0 + 160);
    v6 = *(v0 + 40);
    v7 = *(v5 + 80);
    *(v0 + 376) = v7;
    v8 = *(v5 + 72);
    *(v0 + 240) = 0;
    *(v0 + 248) = 0;
    *(v0 + 232) = v8;
    sub_22B2A5040(v6 + ((v7 + 32) & ~v7), v4, type metadata accessor for CDEnergyGuidanceTracker);
    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 192);
    v10 = *(v0 + 152);
    v11 = qword_28140BDC8;
    *(v0 + 256) = qword_28140BDC8;
    *(v0 + 264) = *v9;
    *(v0 + 272) = *(v9 + 8);
    *(v0 + 380) = *(v9 + 16);
    v12 = (v9 + v10[7]);
    *(v0 + 280) = *v12;
    *(v0 + 288) = v12[1];
    v13 = (v9 + v10[9]);
    *(v0 + 296) = *v13;
    *(v0 + 304) = v13[1];
    v14 = (v9 + v10[8]);
    *(v0 + 312) = *v14;
    *(v0 + 320) = v14[1];

    return MEMORY[0x2822009F8](sub_22B2A2564, v11, 0);
  }

  else
  {
    v15 = *(v0 + 192);
    v17 = *(v0 + 176);
    v16 = *(v0 + 184);
    v18 = *(v0 + 168);
    v20 = *(v0 + 136);
    v19 = *(v0 + 144);
    v21 = *(v0 + 128);
    v22 = *(v0 + 104);
    v25 = *(v0 + 96);
    v26 = *(v0 + 72);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_22B2A2564()
{
  v46 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 272);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = __swift_project_value_buffer(v4, qword_28140BD10);
  *(v0 + 328) = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  *(v0 + 336) = v7;
  *(v0 + 344) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v4);

  v8 = sub_22B36050C();
  v9 = sub_22B360D2C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 304);
  if (v10)
  {
    v12 = *(v0 + 380);
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v43 = *(v0 + 112);
    v15 = *(v0 + 88);
    v40 = *(v0 + 296);
    v41 = *(v0 + 80);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v45 = v17;
    *v16 = 136381187;
    *(v16 + 4) = sub_22B1A7B20(v14, v13, &v45);
    *(v16 + 12) = 512;
    *(v16 + 14) = v12;
    *(v16 + 16) = 1024;
    v18 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v18 = v40 & 0xFFFFFFFFFFFFLL;
    }

    *(v16 + 18) = v18 != 0;

    _os_log_impl(&dword_22B116000, v8, v9, "Get cached guidance entry from cache for %{private}s %hd hasUtility: %{BOOL}d", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);

    v19 = *(v15 + 8);
    v19(v43, v41);
  }

  else
  {
    v20 = *(v0 + 112);
    v21 = *(v0 + 80);
    v22 = *(v0 + 88);
    v23 = *(v0 + 304);

    v19 = *(v22 + 8);
    v19(v20, v21);
  }

  *(v0 + 352) = v19;
  v24 = *(*(v0 + 256) + 112);
  if (v24)
  {
    v26 = *(v0 + 312);
    v25 = *(v0 + 320);
    v27 = *(v0 + 280);
    v38 = v27;
    v39 = *(v0 + 296);
    v28 = *(v0 + 380);
    v29 = *(v0 + 264);
    v30 = *(v0 + 272);
    v31 = *(v0 + 136);
    v42 = *(v0 + 120);
    v44 = *(v0 + 240);
    (*(*(v0 + 64) + 56))(v31, 1, 1, *(v0 + 56));
    v32 = *(v24 + 48);
    v33 = swift_task_alloc();
    *(v33 + 16) = v24;
    *(v33 + 24) = v29;
    *(v33 + 32) = v30;
    *(v33 + 40) = v28;
    *(v33 + 48) = v38;
    *(v33 + 64) = v39;
    *(v33 + 80) = v26;
    *(v33 + 88) = v25;
    *(v33 + 96) = 2;
    *(v33 + 104) = v31;

    v34 = v32;
    v35 = v44;
    sub_22B360E7C();

    sub_22B123284(v31, &qword_27D8BA240, &qword_22B3636E8);
  }

  else
  {
    (*(*(v0 + 64) + 56))(*(v0 + 144), 1, 1, *(v0 + 56));
    v35 = *(v0 + 240);
  }

  *(v0 + 360) = v35;
  v36 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22B2A290C, v36, 0);
}

uint64_t sub_22B2A290C()
{
  v64 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_22B170BE0(*(v0 + 144), v1, &qword_27D8BA240, &qword_22B3636E8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 192);
    v5 = *(v0 + 128);
    sub_22B123284(*(v0 + 144), &qword_27D8BA240, &qword_22B3636E8);
    sub_22B2A50A8(v4, type metadata accessor for CDEnergyGuidanceTracker);
    sub_22B123284(v5, &qword_27D8BA240, &qword_22B3636E8);
    v6 = *(v0 + 360);
  }

  else
  {
    v7 = *(v0 + 216);
    v8 = *(v0 + 200);
    v9 = *(v0 + 56);
    sub_22B2A5108(*(v0 + 128), *(v0 + 72), type metadata accessor for CDEnergyGuidanceCache);
    v10 = *(v9 + 48);
    sub_22B2A51E0(&qword_28140B490, MEMORY[0x277CC9578]);
    if ((sub_22B36074C() & 1) == 0)
    {
      v31 = *(v0 + 344);
      v32 = *(v0 + 184);
      v33 = *(v0 + 192);
      v35 = *(v0 + 168);
      v34 = *(v0 + 176);
      (*(v0 + 336))(*(v0 + 104), *(v0 + 328), *(v0 + 80));
      sub_22B2A5040(v33, v32, type metadata accessor for CDEnergyGuidanceTracker);
      sub_22B2A5040(v33, v34, type metadata accessor for CDEnergyGuidanceTracker);
      sub_22B2A5040(v33, v35, type metadata accessor for CDEnergyGuidanceTracker);
      v36 = sub_22B36050C();
      v37 = sub_22B360D2C();
      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 352);
      v40 = *(v0 + 176);
      v41 = *(v0 + 184);
      v42 = *(v0 + 168);
      if (v38)
      {
        v56 = *(v0 + 152);
        v60 = *(v0 + 80);
        v62 = *(v0 + 104);
        v58 = *(v0 + 88) + 8;
        v43 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v63 = v57;
        *v43 = 136381187;
        v44 = *v41;
        v45 = v41[1];

        sub_22B2A50A8(v41, type metadata accessor for CDEnergyGuidanceTracker);
        v46 = sub_22B1A7B20(v44, v45, &v63);

        *(v43 + 4) = v46;
        *(v43 + 12) = 512;
        LOWORD(v46) = *(v40 + 16);
        sub_22B2A50A8(v40, type metadata accessor for CDEnergyGuidanceTracker);
        *(v43 + 14) = v46;
        *(v43 + 16) = 1024;
        v47 = (v42 + *(v56 + 36));
        v49 = *v47;
        v48 = v47[1];
        v50 = v49 & 0xFFFFFFFFFFFFLL;
        if ((v48 & 0x2000000000000000) != 0)
        {
          v51 = HIBYTE(v48) & 0xF;
        }

        else
        {
          v51 = v50;
        }

        v52 = v51 != 0;
        sub_22B2A50A8(v42, type metadata accessor for CDEnergyGuidanceTracker);
        *(v43 + 18) = v52;
        _os_log_impl(&dword_22B116000, v36, v37, "Purging guidance cache for %{private}s %hd hasUtility: %{BOOL}d", v43, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x23188F650](v57, -1, -1);
        MEMORY[0x23188F650](v43, -1, -1);

        v39(v62, v60);
      }

      else
      {
        v53 = *(v0 + 104);
        v54 = *(v0 + 80);
        v55 = *(v0 + 88) + 8;
        sub_22B2A50A8(*(v0 + 168), type metadata accessor for CDEnergyGuidanceTracker);
        sub_22B2A50A8(v40, type metadata accessor for CDEnergyGuidanceTracker);

        sub_22B2A50A8(v41, type metadata accessor for CDEnergyGuidanceTracker);
        v39(v53, v54);
      }

      v26 = *(v0 + 256);
      v30 = sub_22B2A2F48;
      goto LABEL_19;
    }

    v6 = *(v0 + 360);
    v11 = *(v0 + 192);
    v12 = *(v0 + 144);
    sub_22B2A50A8(*(v0 + 72), type metadata accessor for CDEnergyGuidanceCache);
    sub_22B123284(v12, &qword_27D8BA240, &qword_22B3636E8);
    sub_22B2A50A8(v11, type metadata accessor for CDEnergyGuidanceTracker);
  }

  v13 = *(v0 + 248) + 1;
  if (v13 == *(v0 + 224))
  {
    v14 = *(v0 + 192);
    v16 = *(v0 + 176);
    v15 = *(v0 + 184);
    v17 = *(v0 + 168);
    v19 = *(v0 + 136);
    v18 = *(v0 + 144);
    v20 = *(v0 + 128);
    v21 = *(v0 + 104);
    v59 = *(v0 + 96);
    v61 = *(v0 + 72);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v22 = *(v0 + 8);

    return v22();
  }

  *(v0 + 240) = v6;
  *(v0 + 248) = v13;
  sub_22B2A5040(*(v0 + 40) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 232) * v13, *(v0 + 192), type metadata accessor for CDEnergyGuidanceTracker);
  if (qword_28140B168 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 192);
  v25 = *(v0 + 152);
  v26 = qword_28140BDC8;
  *(v0 + 256) = qword_28140BDC8;
  *(v0 + 264) = *v24;
  *(v0 + 272) = *(v24 + 8);
  *(v0 + 380) = *(v24 + 16);
  v27 = (v24 + v25[7]);
  *(v0 + 280) = *v27;
  *(v0 + 288) = v27[1];
  v28 = (v24 + v25[9]);
  *(v0 + 296) = *v28;
  *(v0 + 304) = v28[1];
  v29 = (v24 + v25[8]);
  *(v0 + 312) = *v29;
  *(v0 + 320) = v29[1];
  v30 = sub_22B2A2564;
LABEL_19:

  return MEMORY[0x2822009F8](v30, v26, 0);
}

uint64_t sub_22B2A2F48()
{
  v39 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 304);
  v3 = *(v0 + 272);
  (*(v0 + 336))(*(v0 + 96), *(v0 + 328), *(v0 + 80));

  v4 = sub_22B36050C();
  v5 = sub_22B360D2C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 352);
  v8 = *(v0 + 304);
  if (v6)
  {
    v9 = *(v0 + 296);
    v10 = *(v0 + 380);
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    v36 = *(v0 + 96);
    v33 = *(v0 + 88) + 8;
    v34 = *(v0 + 80);
    v32 = *(v0 + 352);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136381187;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, &v38);
    *(v13 + 12) = 512;
    *(v13 + 14) = v10;
    *(v13 + 16) = 1024;
    v15 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v15 = v9 & 0xFFFFFFFFFFFFLL;
    }

    *(v13 + 18) = v15 != 0;

    _os_log_impl(&dword_22B116000, v4, v5, "Delete energy guidance from cache for %{private}s %hd hasUtility: %{BOOL}d", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    v32(v36, v34);
  }

  else
  {
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);
    v19 = *(v0 + 304);

    v7(v16, v18);
  }

  v20 = *(*(v0 + 256) + 112);
  v21 = *(v0 + 360);
  if (v20)
  {
    v23 = *(v0 + 312);
    v22 = *(v0 + 320);
    v35 = *(v0 + 280);
    v37 = *(v0 + 296);
    v24 = *(v0 + 380);
    v26 = *(v0 + 264);
    v25 = *(v0 + 272);
    v27 = *(v20 + 48);
    v28 = swift_task_alloc();
    *(v28 + 16) = v20;
    *(v28 + 24) = v26;
    *(v28 + 32) = v25;
    *(v28 + 40) = v24;
    *(v28 + 48) = v35;
    *(v28 + 64) = v37;
    *(v28 + 80) = v23;
    *(v28 + 88) = v22;

    v29 = v27;
    sub_22B360E7C();
  }

  *(v0 + 368) = v21;
  v30 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22B2A320C, v30, 0);
}

uint64_t sub_22B2A320C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 192);
  v3 = *(v0 + 144);
  sub_22B2A50A8(*(v0 + 72), type metadata accessor for CDEnergyGuidanceCache);
  sub_22B123284(v3, &qword_27D8BA240, &qword_22B3636E8);
  sub_22B2A50A8(v2, type metadata accessor for CDEnergyGuidanceTracker);
  v4 = *(v0 + 248) + 1;
  if (v4 == *(v0 + 224))
  {
    v5 = *(v0 + 192);
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = *(v0 + 168);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);
    v12 = *(v0 + 104);
    v21 = *(v0 + 96);
    v22 = *(v0 + 72);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    *(v0 + 240) = v1;
    *(v0 + 248) = v4;
    sub_22B2A5040(*(v0 + 40) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 232) * v4, *(v0 + 192), type metadata accessor for CDEnergyGuidanceTracker);
    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 192);
    v16 = *(v0 + 152);
    v17 = qword_28140BDC8;
    *(v0 + 256) = qword_28140BDC8;
    *(v0 + 264) = *v15;
    *(v0 + 272) = *(v15 + 8);
    *(v0 + 380) = *(v15 + 16);
    v18 = (v15 + v16[7]);
    *(v0 + 280) = *v18;
    *(v0 + 288) = v18[1];
    v19 = (v15 + v16[9]);
    *(v0 + 296) = *v19;
    *(v0 + 304) = v19[1];
    v20 = (v15 + v16[8]);
    *(v0 + 312) = *v20;
    *(v0 + 320) = v20[1];

    return MEMORY[0x2822009F8](sub_22B2A2564, v17, 0);
  }
}

uint64_t sub_22B2A34B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[28] = a10;
  v11[29] = v10;
  v11[26] = a8;
  v11[27] = a9;
  v11[24] = a6;
  v11[25] = a7;
  v11[22] = a4;
  v11[23] = a5;
  v11[20] = a1;
  v11[21] = a2;
  v17 = sub_22B35E20C();
  v11[30] = v17;
  v18 = *(v17 - 8);
  v11[31] = v18;
  v19 = *(v18 + 64) + 15;
  v11[32] = swift_task_alloc();
  v20 = sub_22B36052C();
  v11[33] = v20;
  v21 = *(v20 - 8);
  v11[34] = v21;
  v22 = *(v21 + 64) + 15;
  v11[35] = swift_task_alloc();
  v11[36] = swift_task_alloc();
  v11[37] = swift_task_alloc();
  v11[38] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v11[39] = swift_task_alloc();
  v11[40] = swift_task_alloc();
  v11[41] = swift_task_alloc();
  v24 = sub_22B35D8BC();
  v11[42] = v24;
  v25 = *(v24 - 8);
  v11[43] = v25;
  v26 = *(v25 + 64) + 15;
  v11[44] = swift_task_alloc();
  v27 = sub_22B35DE9C();
  v11[45] = v27;
  v28 = *(v27 - 8);
  v11[46] = v28;
  v29 = *(v28 + 64) + 15;
  v11[47] = swift_task_alloc();
  v11[48] = swift_task_alloc();
  v11[49] = swift_task_alloc();
  v11[50] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC20, &qword_22B366AC0) - 8) + 64) + 15;
  v31 = swift_task_alloc();
  v11[51] = v31;
  v32 = sub_22B35E33C();
  v11[52] = v32;
  v33 = *(v32 - 8);
  v11[53] = v33;
  v34 = *(v33 + 64) + 15;
  v11[54] = swift_task_alloc();
  v11[55] = swift_task_alloc();
  v35 = swift_task_alloc();
  v11[56] = v35;
  *v35 = v11;
  v35[1] = sub_22B2A3870;

  return sub_22B29C1E8(v31, a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_22B2A3870()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2A3980, v2, 0);
}

uint64_t sub_22B2A3980()
{
  v75 = v0;
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22B123284(v3, &qword_27D8BAC20, &qword_22B366AC0);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[33];
    v7 = v0[21];
    v8 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v4, v8, v6);

    v9 = sub_22B36050C();
    v10 = sub_22B360D1C();

    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[34];
    v12 = v0[35];
    v14 = v0[33];
    if (v11)
    {
      v16 = v0[20];
      v15 = v0[21];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v74 = v18;
      *v17 = 136380675;
      *(v17 + 4) = sub_22B1A7B20(v16, v15, &v74);
      _os_log_impl(&dword_22B116000, v9, v10, "Failed to fetch energy guidance from server for %{private}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x23188F650](v18, -1, -1);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    (*(v13 + 8))(v12, v14);
    v20 = v0[54];
    v19 = v0[55];
    v22 = v0[50];
    v21 = v0[51];
    v24 = v0[48];
    v23 = v0[49];
    v25 = v0[47];
    v26 = v0[44];
    v27 = v0[40];
    v28 = v0[41];
    v63 = v0[39];
    v64 = v0[38];
    v65 = v0[37];
    v66 = v0[36];
    v68 = v0[35];
    v71 = v0[32];

    v29 = v0[1];

    return v29(8);
  }

  else
  {
    v31 = v0[50];
    v32 = v0[46];
    v34 = v0[43];
    v33 = v0[44];
    v35 = v0[41];
    v67 = v0[42];
    v69 = v0[28];
    v72 = v0[45];
    (*(v2 + 32))(v0[55], v3, v1);
    sub_22B35E2DC();
    sub_22B35D86C();
    (*(v34 + 8))(v33, v67);
    sub_22B170BE0(v69, v35, &qword_27D8BA340, &qword_22B363FB0);
    v36 = *(v32 + 48);
    v0[57] = v36;
    v0[58] = (v32 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v36(v35, 1, v72) == 1)
    {
      sub_22B123284(v0[41], &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v37 = v0[50];
      (*(v0[46] + 32))(v0[49], v0[41], v0[45]);
      if (sub_22B35DDFC())
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v38 = v0[38];
        v39 = v0[33];
        v40 = v0[34];
        v41 = v0[21];
        v42 = __swift_project_value_buffer(v39, qword_28140BD10);
        swift_beginAccess();
        (*(v40 + 16))(v38, v42, v39);

        v43 = sub_22B36050C();
        v44 = sub_22B360D1C();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = v0[50];
          v46 = v0[45];
          v47 = v0[34];
          v70 = v0[33];
          v73 = v0[38];
          v49 = v0[20];
          v48 = v0[21];
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v74 = v51;
          *v50 = 136446467;
          swift_beginAccess();
          sub_22B2A51E0(&qword_28140B488, MEMORY[0x277CC9578]);
          v52 = sub_22B36131C();
          v54 = sub_22B1A7B20(v52, v53, &v74);

          *(v50 + 4) = v54;
          *(v50 + 12) = 2081;
          *(v50 + 14) = sub_22B1A7B20(v49, v48, &v74);
          _os_log_impl(&dword_22B116000, v43, v44, "Next poll date: %{public}s for gridID: %{private}s violates minimum threshold of 15 minutes. Enforcing minimum threshold.", v50, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v51, -1, -1);
          MEMORY[0x23188F650](v50, -1, -1);

          (*(v47 + 8))(v73, v70);
        }

        else
        {
          v55 = v0[38];
          v56 = v0[33];
          v57 = v0[34];

          (*(v57 + 8))(v55, v56);
        }

        v58 = v0[49];
        v59 = v0[50];
        v60 = v0[45];
        v61 = v0[46];
        swift_beginAccess();
        (*(v61 + 40))(v59, v58, v60);
      }

      else
      {
        (*(v0[46] + 8))(v0[49], v0[45]);
      }
    }

    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v62 = qword_28140BDC8;
    v0[59] = qword_28140BDC8;

    return MEMORY[0x2822009F8](sub_22B2A4040, v62, 0);
  }
}

uint64_t sub_22B2A4040()
{
  v56 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 416);
  v4 = *(v0 + 424);
  v5 = *(v0 + 296);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v52 = *(v0 + 200);
  v8 = *(v0 + 168);
  v9 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 480) = v9;
  swift_beginAccess();
  v10 = *(v7 + 16);
  *(v0 + 488) = v10;
  *(v0 + 496) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v5, v9, v6);
  (*(v4 + 16))(v1, v2, v3);

  v11 = sub_22B36050C();
  v12 = sub_22B360D2C();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 424);
  v15 = *(v0 + 432);
  v16 = *(v0 + 296);
  v17 = *(v0 + 264);
  v18 = *(v0 + 272);
  if (v13)
  {
    log = v11;
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    v53 = *(v0 + 296);
    v21 = *(v0 + 200);
    v44 = *(v0 + 240);
    v45 = *(v0 + 192);
    v42 = *(v0 + 168);
    v43 = *(v0 + 416);
    v46 = v12;
    v22 = *(v0 + 160);
    v50 = *(v0 + 264);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v55 = v24;
    *v23 = 136381187;
    *(v23 + 4) = sub_22B1A7B20(v22, v42, &v55);
    *(v23 + 12) = 512;
    sub_22B35E30C();
    LOWORD(v22) = sub_22B35E1FC();
    (*(v19 + 8))(v20, v44);
    v25 = *(v14 + 8);
    v25(v15, v43);
    *(v23 + 14) = v22;
    *(v23 + 16) = 1024;
    v26 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v26 = v45 & 0xFFFFFFFFFFFFLL;
    }

    *(v23 + 18) = v26 != 0;

    _os_log_impl(&dword_22B116000, log, v46, "Add energy guidance to cache for %{private}s %hd hasUtility: %{BOOL}d", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x23188F650](v24, -1, -1);
    MEMORY[0x23188F650](v23, -1, -1);

    v27 = *(v18 + 8);
    v27(v53, v50);
  }

  else
  {
    v28 = *(v0 + 200);
    v25 = *(v14 + 8);
    v25(*(v0 + 432), *(v0 + 416));

    v27 = *(v18 + 8);
    v27(v16, v17);
  }

  *(v0 + 504) = v27;
  *(v0 + 512) = v25;
  v29 = *(*(v0 + 472) + 112);
  if (v29)
  {
    v30 = *(v0 + 440);
    v47 = *(v0 + 208);
    loga = *(v0 + 216);
    v32 = *(v0 + 192);
    v31 = *(v0 + 200);
    v33 = *(v0 + 176);
    v34 = *(v0 + 184);
    v36 = *(v0 + 160);
    v35 = *(v0 + 168);
    v51 = *(v29 + 48);
    v54 = *(v0 + 232);
    v37 = swift_task_alloc();
    v37[2] = v29;
    v37[3] = v30;
    v37[4] = v36;
    v37[5] = v35;
    v37[6] = v33;
    v37[7] = v34;
    v37[8] = v32;
    v37[9] = v31;
    v37[10] = v47;
    v37[11] = loga;

    v38 = v51;
    sub_22B360E7C();

    *(v0 + 561) = *(v0 + 560);
    v39 = sub_22B2A4424;
    v40 = v54;
  }

  else
  {
    v40 = *(v0 + 232);
    v39 = sub_22B2A47DC;
  }

  return MEMORY[0x2822009F8](v39, v40, 0);
}

uint64_t sub_22B2A4424()
{
  v50 = v0;
  if (*(v0 + 561))
  {
    if (qword_28140AC88 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 400);
    v2 = *(v0 + 384);
    v3 = *(v0 + 360);
    v4 = *(v0 + 368);
    v5 = qword_28140BD80;
    *(v0 + 520) = qword_28140BD80;
    swift_beginAccess();
    v6 = *(v4 + 16);
    *(v0 + 528) = v6;
    *(v0 + 536) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v2, v1, v3);

    return MEMORY[0x2822009F8](sub_22B2A4ABC, v5, 0);
  }

  else
  {
    v7 = *(v0 + 496);
    v8 = *(v0 + 168);
    (*(v0 + 488))(*(v0 + 288), *(v0 + 480), *(v0 + 264));

    v9 = sub_22B36050C();
    v10 = sub_22B360D1C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 512);
    v13 = *(v0 + 440);
    v14 = *(v0 + 424);
    v45 = *(v0 + 504);
    v47 = *(v0 + 416);
    v15 = *(v0 + 400);
    v16 = *(v0 + 360);
    v17 = *(v0 + 368);
    v42 = *(v0 + 288);
    v19 = *(v0 + 264);
    v18 = *(v0 + 272);
    if (v11)
    {
      v38 = *(v0 + 440);
      v40 = *(v0 + 400);
      v20 = *(v0 + 160);
      v21 = *(v0 + 168);
      v37 = *(v0 + 512);
      v22 = swift_slowAlloc();
      v36 = v16;
      v23 = swift_slowAlloc();
      v49 = v23;
      *v22 = 136380675;
      *(v22 + 4) = sub_22B1A7B20(v20, v21, &v49);
      _os_log_impl(&dword_22B116000, v9, v10, "Failed to add energy guidance to cache for %{private}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23188F650](v23, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);

      v45(v42, v19);
      v37(v38, v47);
      (*(v17 + 8))(v40, v36);
    }

    else
    {

      v45(v42, v19);
      v12(v13, v47);
      (*(v17 + 8))(v15, v16);
    }

    v25 = *(v0 + 432);
    v24 = *(v0 + 440);
    v27 = *(v0 + 400);
    v26 = *(v0 + 408);
    v29 = *(v0 + 384);
    v28 = *(v0 + 392);
    v30 = *(v0 + 376);
    v31 = *(v0 + 352);
    v32 = *(v0 + 320);
    v33 = *(v0 + 328);
    v39 = *(v0 + 312);
    v41 = *(v0 + 304);
    v43 = *(v0 + 296);
    v44 = *(v0 + 288);
    v46 = *(v0 + 280);
    v48 = *(v0 + 256);

    v34 = *(v0 + 8);

    return v34(5);
  }
}

uint64_t sub_22B2A47DC()
{
  v44 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 168);
  (*(v0 + 488))(*(v0 + 288), *(v0 + 480), *(v0 + 264));

  v3 = sub_22B36050C();
  v4 = sub_22B360D1C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 512);
  v7 = *(v0 + 440);
  v8 = *(v0 + 424);
  v39 = *(v0 + 504);
  v41 = *(v0 + 416);
  v9 = *(v0 + 400);
  v10 = *(v0 + 360);
  v11 = *(v0 + 368);
  v36 = *(v0 + 288);
  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  if (v5)
  {
    v32 = *(v0 + 440);
    v34 = *(v0 + 400);
    v14 = *(v0 + 160);
    v15 = *(v0 + 168);
    v31 = *(v0 + 512);
    v16 = swift_slowAlloc();
    v30 = v10;
    v17 = swift_slowAlloc();
    v43 = v17;
    *v16 = 136380675;
    *(v16 + 4) = sub_22B1A7B20(v14, v15, &v43);
    _os_log_impl(&dword_22B116000, v3, v4, "Failed to add energy guidance to cache for %{private}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);

    v39(v36, v13);
    v31(v32, v41);
    (*(v11 + 8))(v34, v30);
  }

  else
  {

    v39(v36, v13);
    v6(v7, v41);
    (*(v11 + 8))(v9, v10);
  }

  v19 = *(v0 + 432);
  v18 = *(v0 + 440);
  v21 = *(v0 + 400);
  v20 = *(v0 + 408);
  v23 = *(v0 + 384);
  v22 = *(v0 + 392);
  v24 = *(v0 + 376);
  v25 = *(v0 + 352);
  v26 = *(v0 + 320);
  v27 = *(v0 + 328);
  v33 = *(v0 + 312);
  v35 = *(v0 + 304);
  v37 = *(v0 + 296);
  v38 = *(v0 + 288);
  v40 = *(v0 + 280);
  v42 = *(v0 + 256);

  v28 = *(v0 + 8);

  return v28(5);
}

uint64_t sub_22B2A4ABC()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 520);
  v4 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 312);
  v7 = *(v0 + 320);
  (*(v0 + 528))(v8, *(v0 + 384), v5);
  (*(v6 + 56))(v8, 0, 1, v5);
  sub_22B255CFC(v8, v7);
  sub_22B123284(v8, &qword_27D8BA340, &qword_22B363FB0);
  if (v4(v7, 1, v5) == 1)
  {
    v9 = *(v0 + 368);
    v10 = *(v0 + 320);
    v13 = *(v9 + 8);
    v11 = v9 + 8;
    v12 = v13;
    v13(*(v0 + 384), *(v0 + 360));
    sub_22B123284(v10, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v14 = *(v0 + 520);
    v16 = *(v0 + 376);
    v15 = *(v0 + 384);
    v17 = *(v0 + 360);
    v18 = *(v0 + 368);
    (*(v18 + 32))(v16, *(v0 + 320), v17);
    sub_22B255B48(v16);
    v19 = *(v18 + 8);
    v11 = v18 + 8;
    v12 = v19;
    v19(v16, v17);
    v19(v15, v17);
  }

  *(v0 + 552) = v12;
  *(v0 + 544) = v11;
  v20 = *(v0 + 232);

  return MEMORY[0x2822009F8](sub_22B2A4C58, v20, 0);
}

uint64_t sub_22B2A4C58()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 400);
  v4 = *(v0 + 360);
  v5 = *(v0 + 424) + 8;
  (*(v0 + 512))(*(v0 + 440), *(v0 + 416));
  v1(v3, v4);
  v7 = *(v0 + 432);
  v6 = *(v0 + 440);
  v9 = *(v0 + 400);
  v8 = *(v0 + 408);
  v11 = *(v0 + 384);
  v10 = *(v0 + 392);
  v12 = *(v0 + 376);
  v13 = *(v0 + 352);
  v14 = *(v0 + 320);
  v15 = *(v0 + 328);
  v18 = *(v0 + 312);
  v19 = *(v0 + 304);
  v20 = *(v0 + 296);
  v21 = *(v0 + 288);
  v22 = *(v0 + 280);
  v23 = *(v0 + 256);

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_22B2A4DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B119A60;

  return sub_22B1992BC(a5);
}

uint64_t sub_22B2A4E60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B119A60;

  return sub_22B2A4DC4(a1, v4, v5, v7, v6);
}

uint64_t sub_22B2A4F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC20, &qword_22B366AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B2A5040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B2A50A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B2A5108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B2A51E0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_22B2A534C(int a1)
{
  v3 = v1;
  v49[4] = *MEMORY[0x277D85DE8];
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  result = [v3 hasChanges];
  if (result)
  {
    v47 = v10;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v46 = a1;
    v14 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    v42 = v6[2];
    v43 = v14;
    v42(v12, v14, v5);
    v15 = sub_22B36050C();
    v16 = sub_22B360D0C();
    v17 = os_log_type_enabled(v15, v16);
    v45 = v2;
    v48 = v6;
    if (v17)
    {
      v44 = v5;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v49[0] = v19;
      *v18 = 136315138;
      if (v46)
      {
        if (v46 == 1)
        {
          v20 = 0x4F546574656C6564;
        }

        else
        {
          v20 = 0x6144657461647075;
        }

        if (v46 == 1)
        {
          v21 = 0xEE00736B61655055;
        }

        else
        {
          v21 = 0xEA00000000006174;
        }
      }

      else
      {
        v20 = 0x6550554F54646461;
        v21 = 0xEB00000000736B61;
      }

      v23 = sub_22B1A7B20(v20, v21, v49);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_22B116000, v15, v16, "[CoreDataStack] Saving changes for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23188F650](v19, -1, -1);
      MEMORY[0x23188F650](v18, -1, -1);

      v22 = v48[1];
      v5 = v44;
      v22(v12, v44);
    }

    else
    {

      v22 = v6[1];
      v22(v12, v5);
    }

    v49[0] = 0;
    if ([v3 save_])
    {
      result = v49[0];
    }

    else
    {
      v24 = v49[0];
      v25 = sub_22B35DB9C();

      swift_willThrow();
      v26 = v47;
      v42(v47, v43, v5);
      v27 = v25;
      v28 = sub_22B36050C();
      v29 = sub_22B360D0C();

      if (os_log_type_enabled(v28, v29))
      {
        v44 = v5;
        v30 = v25;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v49[0] = v33;
        *v31 = 136315394;
        if (v46)
        {
          if (v46 == 1)
          {
            v34 = 0x4F546574656C6564;
          }

          else
          {
            v34 = 0x6144657461647075;
          }

          if (v46 == 1)
          {
            v35 = 0xEE00736B61655055;
          }

          else
          {
            v35 = 0xEA00000000006174;
          }
        }

        else
        {
          v34 = 0x6550554F54646461;
          v35 = 0xEB00000000736B61;
        }

        v38 = sub_22B1A7B20(v34, v35, v49);

        *(v31 + 4) = v38;
        *(v31 + 12) = 2112;
        v39 = v30;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v40;
        *v32 = v40;
        _os_log_impl(&dword_22B116000, v28, v29, "[CoreDataStack] Error saving changes for %s. %@", v31, 0x16u);
        sub_22B12F10C(v32);
        MEMORY[0x23188F650](v32, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x23188F650](v33, -1, -1);
        MEMORY[0x23188F650](v31, -1, -1);

        v36 = v47;
        v37 = v44;
      }

      else
      {

        v36 = v26;
        v37 = v5;
      }

      v22(v36, v37);
      result = swift_willThrow();
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_22B2A5894()
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
  result = *(v0 + 56);
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
  result = *(v0 + 56);
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

uint64_t sub_22B2A5AC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC38, &unk_22B366B50);
    v2 = sub_22B3612BC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_22B128014(0, &qword_281409270, 0x277D82BB8);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22B172454(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22B172454(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22B3610EC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22B172454(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_22B2A5D90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC40, &unk_22B367380);
    v2 = sub_22B3612BC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_dynamicCast();
        sub_22B172454(&v25, v27);
        sub_22B172454(v27, v28);
        sub_22B172454(v28, &v26);
        result = sub_22B33B28C(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_22B172454(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_22B172454(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22B2A5FD8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC38, &unk_22B366B50);
    v2 = sub_22B3612BC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22B170C58(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_22B172454(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_22B172454(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_22B172454(v32, v33);
    v17 = *(v2 + 40);
    result = sub_22B3610EC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_22B172454(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_22B2A62A0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

id sub_22B2A632C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = MEMORY[0x23188EEB0]();
    sub_22B2A63AC(v0, &v8);
    objc_autoreleasePoolPop(v3);
    v4 = v8;
    v5 = *(v0 + 72);
    *(v0 + 72) = v8;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_22B2A63AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v3;
  v135 = a2;
  v7 = sub_22B36052C();
  v124 = *(v7 - 8);
  v125 = v7;
  v8 = *(v124 + 64);
  MEMORY[0x28223BE20](v7);
  v123 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v129 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v128 = &v123 - v14;
  v140 = sub_22B35DC4C();
  v138 = *(v140 - 8);
  v15 = v138[8];
  v16 = MEMORY[0x28223BE20](v140);
  v18 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v142 = &v123 - v20;
  MEMORY[0x28223BE20](v19);
  v141 = &v123 - v21;
  v22 = sub_22B35EF2C();
  if (!v22)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v2 = v22;
  v4 = *(a1 + 32);
  v23 = *(a1 + 40);
  v139 = a1;
  v24 = sub_22B36081C();
  v25 = sub_22B36081C();
  v26 = [v2 URLForResource:v24 withExtension:v25];

  if (!v26)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_22B35DC0C();

  v27 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v28 = sub_22B35DBDC();
  v2 = [v27 initWithContentsOfURL_];

  if (!v2)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v29 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  p_aBlock = v2;
  v31 = sub_22B36081C();
  v32 = [v29 initWithName:v31 managedObjectModel:p_aBlock];

  v134 = v32;
  v33 = [v134 persistentStoreDescriptions];
  v4 = sub_22B128014(0, &qword_281409288, 0x277CBE4E0);
  v2 = sub_22B360A5C();

  v34 = v140;
  if (v2 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B36109C())
  {
    v36 = v139;
    v132 = p_aBlock;
    v133 = v4;
    if (i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x23188EAC0](0, v2);
        goto LABEL_10;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v37 = *(v2 + 32);
LABEL_10:
        v150 = v37;

        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_48;
    }

    v150 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
LABEL_12:
    v131 = swift_allocBox();
    v39 = v38;
    v4 = "ergy.cloudkitfetch";
    v40 = MEMORY[0x23188EEB0]();
    sub_22B34CE74(0xD000000000000015, 1, v39);
    if (v5)
    {
      objc_autoreleasePoolPop(v40);
      __break(1u);
LABEL_56:
      swift_once();
LABEL_52:
      v108 = v125;
      v109 = __swift_project_value_buffer(v125, qword_28140BD10);
      swift_beginAccess();
      (*(v124 + 16))(v123, v109, v108);
      v110 = v4;
      v111 = sub_22B36050C();
      v112 = sub_22B360D1C();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *&aBlock = v115;
        *v113 = 136315394;
        *(v113 + 4) = sub_22B1A7B20(0xD000000000000013, 0x800000022B36D630, &aBlock);
        *(v113 + 12) = 2112;
        v116 = v4;
        v117 = _swift_stdlib_bridgeErrorToNSError();
        *(v113 + 14) = v117;
        *v114 = v117;
        _os_log_impl(&dword_22B116000, v111, v112, "###%s: Failed to pin background context to the current generation:%@", v113, 0x16u);
        sub_22B12F10C(v114);
        MEMORY[0x23188F650](v114, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v115);
        MEMORY[0x23188F650](v115, -1, -1);
        MEMORY[0x23188F650](v113, -1, -1);
      }

      (*(v124 + 8))(v123, v125);
      v118 = [objc_opt_self() processInfo];
      v119 = [v118 processName];

      v120 = sub_22B36084C();
      v122 = v121;

      LOWORD(aBlock) = 1;
      BYTE2(aBlock) = 9;
      *(&aBlock + 1) = v120;
      v148 = v122;
      static AutoBugCaptureManager.sendIssue(_:)(&aBlock);
      exit(1);
    }

    v130 = 0;
    objc_autoreleasePoolPop(v40);
    v41 = sub_22B36081C();
    v5 = v150;
    [v150 setConfiguration_];

    v42 = v138;
    v126 = v138[2];
    v127 = v138 + 2;
    v126(v18, v39, v34);
    v43 = *(v36 + 16);
    v44 = *(v36 + 24);
    v45 = v142;
    sub_22B35DBFC();
    v46 = v42[1];
    v46(v18, v34);
    v47 = sub_22B35DBDC();
    v136 = v46;
    v137 = v42 + 1;
    v46(v45, v34);
    [v5 setURL_];

    sub_22B128014(0, &qword_281409278, 0x277CCABB0);
    v48 = sub_22B360F9C();
    [v5 setOption:v48 forKey:*MEMORY[0x277CBE218]];

    v49 = sub_22B360F8C();
    [v5 setOption:v49 forKey:*MEMORY[0x277CBE280]];

    v50 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v51 = sub_22B36081C();
    [v5 setValue:v50 forPragmaNamed:v51];

    v52 = sub_22B35EE8C();
    *(&v148 + 1) = v52;
    *&v149 = sub_22B2A8600();
    p_aBlock = &aBlock;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    (*(*(v52 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07378], v52);
    LOBYTE(v52) = sub_22B35E0CC();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    if ((v52 & 1) == 0)
    {
      goto LABEL_42;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B364840;
    v55 = *MEMORY[0x277CBE328];
    *(inited + 32) = sub_22B36084C();
    v56 = MEMORY[0x277D839B0];
    *(inited + 40) = v57;
    *(inited + 72) = v56;
    *(inited + 48) = 1;
    v58 = *MEMORY[0x277CBE340];
    *(inited + 80) = sub_22B36084C();
    *(inited + 88) = v59;
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = 0xD00000000000001ELL;
    *(inited + 104) = 0x800000022B36D650;
    v60 = *MEMORY[0x277CBE330];
    *(inited + 128) = sub_22B36084C();
    *(inited + 136) = v61;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    *(inited + 144) = &unk_283EF8118;
    *(inited + 176) = sub_22B36084C();
    *(inited + 184) = v62;
    *(inited + 216) = v56;
    *(inited + 192) = 1;
    v2 = sub_22B321AAC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
    swift_arrayDestroy();
    v63 = 0;
    v4 = (v2 + 64);
    v64 = *(v2 + 64);
    v142 = v2;
    v65 = 1 << *(v2 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & v64;
    v68 = (v65 + 63) >> 6;
    if ((v66 & v64) != 0)
    {
      break;
    }

LABEL_18:
    if (v68 <= (v63 + 1))
    {
      v69 = (v63 + 1);
    }

    else
    {
      v69 = v68;
    }

    v18 = (v69 - 1);
    while (1)
    {
      v34 = (v63 + 1);
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v34 >= v68)
      {
        v67 = 0;
        v145 = 0u;
        v146 = 0u;
        v144 = 0u;
        goto LABEL_26;
      }

      v67 = *&v4[8 * v34];
      ++v63;
      if (v67)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_45:
    ;
  }

  while (1)
  {
    v34 = v63;
LABEL_25:
    v70 = __clz(__rbit64(v67));
    v67 &= v67 - 1;
    v71 = v70 | (v34 << 6);
    v72 = (*(v142 + 6) + 16 * v71);
    v73 = *v72;
    v74 = v72[1];
    sub_22B170C58(*(v142 + 7) + 32 * v71, v143);
    *&v144 = v73;
    *(&v144 + 1) = v74;
    sub_22B172454(v143, &v145);

    v18 = v34;
LABEL_26:
    aBlock = v144;
    v148 = v145;
    v149 = v146;
    v5 = *(&v144 + 1);
    if (!*(&v144 + 1))
    {
      break;
    }

    sub_22B172454(&v148, &v144);
    sub_22B128014(0, &qword_281409270, 0x277D82BB8);
    v75 = swift_dynamicCast();
    v2 = *&v143[0];
    p_aBlock = sub_22B36081C();

    if (v75)
    {
      v76 = v2;
    }

    else
    {
      v76 = 0;
    }

    [v150 setOption:v76 forKey:p_aBlock];

    v63 = v18;
    if (!v67)
    {
      goto LABEL_18;
    }
  }

  v77 = [v150 URL];
  if (v77)
  {
    v78 = v128;
    v79 = v77;
    sub_22B35DC0C();

    v80 = 0;
    v36 = v139;
    v81 = v140;
  }

  else
  {
    v80 = 1;
    v36 = v139;
    v81 = v140;
    v78 = v128;
  }

  v82 = v129;
  v83 = v138;
  v84 = v138[7];
  v84(v78, v80, 1, v81);
  v126(v82, v141, v81);
  v84(v82, 0, 1, v81);
  v85 = [v150 options];
  sub_22B128014(0, &qword_281409270, 0x277D82BB8);
  v86 = sub_22B3606EC();

  v139 = sub_22B2A5AC0(v86);

  v142 = [objc_allocWithZone(type metadata accessor for CoreDataServerHandlingPolicy()) init];
  v87 = v83[6];
  v88 = v87(v78, 1, v81);
  v89 = v78;
  v90 = 0;
  if (v88 != 1)
  {
    v90 = sub_22B35DBDC();
    v136(v89, v81);
  }

  if (v87(v82, 1, v81) == 1)
  {
    v91 = 0;
  }

  else
  {
    v91 = sub_22B35DBDC();
    v136(v82, v81);
  }

  v92 = v142;
  v93 = objc_allocWithZone(MEMORY[0x277CBE510]);
  v94 = sub_22B3606CC();

  v95 = [v93 initForStoreWithURL:v90 usingModelAtURL:v91 options:v94 policy:v92];

  v96 = *(v36 + 64);
  *(v36 + 64) = v95;

  v5 = v150;
LABEL_42:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_22B363650;
  *(v97 + 32) = v5;
  v98 = v5;
  v99 = sub_22B360A3C();

  v100 = v134;
  [v134 setPersistentStoreDescriptions_];

  v101 = swift_allocObject();
  v101[2] = v131;
  v101[3] = v36;
  v101[4] = v100;
  *&v149 = sub_22B2A8658;
  *(&v149 + 1) = v101;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v148 = sub_22B2A62A0;
  *(&v148 + 1) = &block_descriptor_22;
  v102 = _Block_copy(&aBlock);
  v103 = v100;

  [v103 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v102);
  v104 = [v103 newBackgroundContext];

  v105 = *(v36 + 48);
  *(v36 + 48) = v104;
  v106 = v104;

  [v106 setAutomaticallyMergesChangesFromParent_];
  [*(v36 + 48) setMergePolicy_];
  [*(v36 + 48) setUndoManager_];
  [*(v36 + 48) setShouldRefreshAfterSave_];
  [*(v36 + 48) setStalenessInterval_];
  [*(v36 + 48) setShouldDeleteInaccessibleFaults_];
  v2 = *(v36 + 48);
  v107 = v130;
  sub_22B360E7C();
  v4 = v107;
  if (v107)
  {
LABEL_51:

    if (qword_28140A0C8 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_56;
  }

  v136(v141, v140);

  *v135 = v103;
}

id sub_22B2A73C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  v49 = v9;
  v50 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  v17 = sub_22B35DC4C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_projectBox();
  if (a2)
  {
    v23 = v22;
    v24 = sub_22B35DB8C();
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v25 = v49;
    v26 = __swift_project_value_buffer(v49, qword_28140BD10);
    swift_beginAccess();
    v27 = v50;
    (*(v50 + 16))(v16, v26, v25);
    v28 = v24;
    v29 = sub_22B36050C();
    v30 = sub_22B360D1C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_22B116000, v29, v30, "Failed to load persistent stores:%{public}@", v31, 0xCu);
      sub_22B12F10C(v32);
      MEMORY[0x23188F650](v32, -1, -1);
      MEMORY[0x23188F650](v31, -1, -1);
    }

    v34 = (*(v27 + 8))(v16, v25);
    MEMORY[0x23188EEB0](v34);
    sub_22B2A78DC(v23);
  }

  v35 = [a5 persistentStoreCoordinator];
  result = [a1 URL];
  if (result)
  {
    v37 = result;
    sub_22B35DC0C();

    v38 = sub_22B35DBDC();
    (*(v18 + 8))(v21, v17);
    v39 = [v35 persistentStoreForURL_];

    v40 = *(a4 + 56);
    *(a4 + 56) = v39;

    v41 = sub_22B35EE8C();
    v51[3] = v41;
    v51[4] = sub_22B2A8600();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
    (*(*(v41 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07378], v41);
    LOBYTE(v41) = sub_22B35E0CC();
    result = __swift_destroy_boxed_opaque_existential_0(v51);
    if (v41)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v43 = v49;
      v44 = __swift_project_value_buffer(v49, qword_28140BD10);
      swift_beginAccess();
      v45 = v50;
      (*(v50 + 16))(v14, v44, v43);
      v46 = sub_22B36050C();
      v47 = sub_22B360D2C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_22B116000, v46, v47, "[NSXPCStore] Starting XPC Store server", v48, 2u);
        MEMORY[0x23188F650](v48, -1, -1);
      }

      (*(v45 + 8))(v14, v43);
      return [*(a4 + 64) startListening];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22B2A78DC(uint64_t a1)
{
  v41[10] = *MEMORY[0x277D85DE8];
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  MEMORY[0x28223BE20](v5);
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
      _os_log_impl(&dword_22B116000, v20, v21, "Deleted the persistent store in attempt to recover", v22, 2u);
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
    (*(v3 + 16))(v7, v27, v2);
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
      _os_log_impl(&dword_22B116000, v29, v30, "Could not delete persistent store: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x23188F650](v32, -1, -1);
      MEMORY[0x23188F650](v31, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
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

id sub_22B2A7E1C(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
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

void *sub_22B2A7F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = 0;
  v4[8] = 0;
  v4[9] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  v4[6] = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];

  return v4;
}

uint64_t sub_22B2A7F5C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

id sub_22B2A7FE0(uint64_t a1)
{
  v63[7] = *MEMORY[0x277D85DE8];
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v60 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - v13;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  v62 = v3[2];
  v62(v14, v15, v2);
  v16 = sub_22B36050C();
  v17 = sub_22B360D0C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v60 = v8;
    v19 = v11;
    v20 = v2;
    v21 = v3;
    v22 = a1;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_22B116000, v16, v17, "Preparing to save changes to persistent store", v18, 2u);
    v24 = v23;
    a1 = v22;
    v3 = v21;
    v2 = v20;
    v11 = v19;
    v8 = v60;
    MEMORY[0x23188F650](v24, -1, -1);
  }

  v27 = v3[1];
  v25 = (v3 + 1);
  v26 = v27;
  v27(v14, v2);
  if ([*(a1 + 48) hasChanges])
  {
    v28 = *(a1 + 48);
    v63[0] = 0;
    v29 = [v28 save_];
    v30 = v63[0];
    if (v29)
    {
      v62(v11, v15, v2);
      v31 = v30;
      v32 = sub_22B36050C();
      v33 = sub_22B360D0C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = v11;
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_22B116000, v32, v33, "Save complete", v35, 2u);
        MEMORY[0x23188F650](v35, -1, -1);

        v36 = v34;
      }

      else
      {

        v36 = v11;
      }

      v26(v36, v2);
    }

    else
    {
      v60 = v25;
      v41 = v63[0];
      v42 = sub_22B35DB9C();

      swift_willThrow();
      v43 = v61;
      v62(v61, v15, v2);
      v44 = v42;
      v45 = sub_22B36050C();
      v46 = sub_22B360D1C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v63[0] = v48;
        *v47 = 136446210;
        swift_getErrorValue();
        v49 = sub_22B3613EC();
        v51 = a1;
        v52 = sub_22B1A7B20(v49, v50, v63);

        *(v47 + 4) = v52;
        a1 = v51;
        _os_log_impl(&dword_22B116000, v45, v46, "Error saving to persistent store: %{public}s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x23188F650](v48, -1, -1);
        MEMORY[0x23188F650](v47, -1, -1);

        v53 = v61;
      }

      else
      {

        v53 = v43;
      }

      v26(v53, v2);
      v54 = [objc_opt_self() processInfo];
      v55 = [v54 processName];

      v56 = sub_22B36084C();
      v58 = v57;

      LOWORD(v63[0]) = 1;
      BYTE2(v63[0]) = 3;
      v63[1] = v56;
      v63[2] = v58;
      v63[3] = 0;
      static AutoBugCaptureManager.sendIssue(_:)(v63);
    }

    result = [*(a1 + 48) setTransactionAuthor_];
  }

  else
  {
    v62(v8, v15, v2);
    v37 = sub_22B36050C();
    v38 = sub_22B360D0C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22B116000, v37, v38, "Context doesn't have any changes, skip saving", v39, 2u);
      MEMORY[0x23188F650](v39, -1, -1);
    }

    result = (v26)(v8, v2);
  }

  v59 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22B2A8600()
{
  result = qword_281409378;
  if (!qword_281409378)
  {
    sub_22B35EE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409378);
  }

  return result;
}

uint64_t sub_22B2A8680()
{
  if (qword_281409EA0 != -1)
  {
    swift_once();
  }

  v0 = byte_28140BC60;
  type metadata accessor for CoreLocationManager();
  v1 = swift_allocObject();
  result = sub_22B2A8C2C((v0 & 1) == 0);
  qword_28140BD00 = v1;
  return result;
}

void sub_22B2A86FC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22B36081C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_22B36081C();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  byte_28140BC60 = v4;
}

id sub_22B2A87C4()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v28 - v9;
  if (*(v1 + 128) == 1)
  {
    v11 = *(v1 + 112);
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = [v11 location];
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = v12;
    if (sub_22B35EF6C())
    {

LABEL_6:
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v2, qword_28140BD10);
      swift_beginAccess();
      (*(v3 + 16))(v10, v14, v2);

      v15 = sub_22B36050C();
      v16 = sub_22B360D1C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v28 = v18;
        *v17 = 136315394;
        *(v17 + 4) = sub_22B1A7B20(0x4C746E6572727563, 0xEF6E6F697461636FLL, &v28);
        *(v17 + 12) = 2080;
        if (*(v1 + 112))
        {
          v19 = 0x64696C6176;
        }

        else
        {
          v19 = 0x3E4C494E3CLL;
        }

        v20 = sub_22B1A7B20(v19, 0xE500000000000000, &v28);

        *(v17 + 14) = v20;
        _os_log_impl(&dword_22B116000, v15, v16, "%s %s Location Manager has no location", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v18, -1, -1);
        MEMORY[0x23188F650](v17, -1, -1);
      }

      (*(v3 + 8))(v10, v2);
      return sub_22B35EF3C();
    }

    return v13;
  }

  else
  {
    if ((sub_22B35EEBC() & 1) == 0)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v2, qword_28140BD10);
      swift_beginAccess();
      (*(v3 + 16))(v6, v23, v2);
      v24 = sub_22B36050C();
      v25 = sub_22B360D1C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_22B1A7B20(0x4C746E6572727563, 0xEF6E6F697461636FLL, &v28);
        _os_log_impl(&dword_22B116000, v24, v25, "%s is only available on Internal builds", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x23188F650](v27, -1, -1);
        MEMORY[0x23188F650](v26, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      return sub_22B35EF3C();
    }

    v21 = *(v1 + 136);

    return v21;
  }
}

uint64_t sub_22B2A8C2C(char a1)
{
  v2 = v1;
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = [objc_allocWithZone(type metadata accessor for LocationManagerDelegate()) init];
  *(v2 + 128) = 257;
  *(v2 + 136) = sub_22B35EF3C();
  *(v2 + 128) = a1;
  if ((a1 & 1) == 0)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v8, v9, v4);
    v10 = sub_22B36050C();
    v11 = sub_22B360CFC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B116000, v10, v11, "CoreLocationManager set to use mock location data", v12, 2u);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  return v2;
}

id LocationManagerDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22B2A8E54()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B2A8E9C()
{
  v1 = v0;
  v64 = sub_22B360D8C();
  v61 = *(v64 - 8);
  v2 = *(v61 + 64);
  MEMORY[0x28223BE20](v64);
  v60 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22B360EFC();
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B36062C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v53 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_28140BD10);
  swift_beginAccess();
  v19 = v10[2];
  v65 = v18;
  v62 = v19;
  v63 = v10 + 2;
  v19(v17, v18, v9);

  v20 = sub_22B36050C();
  v21 = sub_22B360CFC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v67 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_22B1A7B20(0xD000000000000016, 0x800000022B36D7E0, &v67);
    *(v22 + 12) = 2080;
    if (*(v1 + 128))
    {
      v24 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v24 = 1162559814;
    }

    v25 = v1;
    if (*(v1 + 128))
    {
      v26 = 0xE800000000000000;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    v27 = v9;
    v28 = v10;
    v29 = sub_22B1A7B20(v24, v26, &v67);
    v1 = v25;

    *(v22 + 14) = v29;
    v10 = v28;
    v9 = v27;
    _os_log_impl(&dword_22B116000, v20, v21, "%s Starting %s updates", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v23, -1, -1);
    MEMORY[0x23188F650](v22, -1, -1);

    v30 = v10[1];
    v30(v17, v27);
  }

  else
  {

    v30 = v10[1];
    v30(v17, v9);
  }

  if (*(v1 + 128) != 1)
  {
    return sub_22B2A96E8();
  }

  v54 = v30;
  v55 = v10;
  v53 = "mockCurrentLocations";
  v31 = *(v1 + 120);
  sub_22B128014(0, &qword_281409290, 0x277D85C90);
  v32 = v1;
  v33 = v31;
  sub_22B36060C();
  v67 = MEMORY[0x277D84F90];
  sub_22B2AC1AC(&qword_281409298, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BACB0, &unk_22B366C20);
  sub_22B2AC148();
  sub_22B36104C();
  (*(v61 + 104))(v60, *MEMORY[0x277D85268], v64);
  v34 = sub_22B360F0C();
  v35 = objc_allocWithZone(MEMORY[0x277CBFC10]);
  v36 = sub_22B36081C();
  v37 = [v35 initWithEffectiveBundlePath:v36 delegate:v33 onQueue:v34];

  v38 = *(v32 + 112);
  *(v32 + 112) = v37;

  v39 = objc_opt_self();
  v40 = sub_22B36081C();
  [v39 setAuthorizationStatusByType:3 forBundlePath:v40];

  v41 = *(v32 + 112);
  if (v41)
  {
    v42 = v41;
    [v42 setDistanceFilter_];
    [v42 setDesiredAccuracy_];
    [v42 startUpdatingLocation];
    v62(v66, v65, v9);
    v43 = sub_22B36050C();
    v44 = sub_22B360CFC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v67 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_22B1A7B20(0xD000000000000016, 0x800000022B36D7E0, &v67);
      _os_log_impl(&dword_22B116000, v43, v44, "%s Started location updates for daemon", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x23188F650](v46, -1, -1);
      MEMORY[0x23188F650](v45, -1, -1);
    }

    v47 = v66;
  }

  else
  {
    v62(v56, v65, v9);
    v49 = sub_22B36050C();
    v50 = sub_22B360D1C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v67 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_22B1A7B20(0xD000000000000016, 0x800000022B36D7E0, &v67);
      _os_log_impl(&dword_22B116000, v49, v50, "%s Could not create Location manager", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x23188F650](v52, -1, -1);
      MEMORY[0x23188F650](v51, -1, -1);
    }

    v47 = v56;
  }

  return v54(v47, v9);
}

uint64_t sub_22B2A96E8()
{
  v1 = sub_22B36052C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  if (sub_22B35EEBC())
  {
    v10 = sub_22B360B6C();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v12 = sub_22B2AC1AC(&qword_27D8BACB8, v11, type metadata accessor for CoreLocationManager);
    v13 = swift_allocObject();
    v13[2] = v0;
    v13[3] = v12;
    v13[4] = v0;
    swift_retain_n();
    sub_22B123DF0(0, 0, v9, &unk_22B366C38, v13);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v1, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v5, v15, v1);
    v16 = sub_22B36050C();
    v17 = sub_22B360D1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v20);
      _os_log_impl(&dword_22B116000, v16, v17, "%s is only available on Internal builds", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23188F650](v19, -1, -1);
      MEMORY[0x23188F650](v18, -1, -1);
    }

    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_22B2A9A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = sub_22B36052C();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2A9B00, a4, 0);
}

uint64_t sub_22B2A9B00()
{
  v34 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[12] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[13] = v5;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360CFC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  v10 = v0[6];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v33);
    _os_log_impl(&dword_22B116000, v6, v7, "%s faking a location update every 5 seconds", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[15] = v14;
  if (*(v0[5] + 129) == 1)
  {
    v0[16] = -1;
    v15 = *(MEMORY[0x277D857E8] + 4);
    v16 = swift_task_alloc();
    v0[17] = v16;
    *v16 = v0;
    v16[1] = sub_22B2A9EAC;

    return MEMORY[0x282200480](5000000000);
  }

  else
  {
    v17 = v0[14];
    (v0[13])(v0[9], v0[12], v0[6]);
    v18 = sub_22B36050C();
    v19 = sub_22B360CFC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[15];
    v22 = v0[9];
    v23 = v0[6];
    v24 = v0[7];
    if (v20)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v33);
      _os_log_impl(&dword_22B116000, v18, v19, "%s no longer faking location updates", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23188F650](v26, -1, -1);
      MEMORY[0x23188F650](v25, -1, -1);
    }

    v21(v22, v23);
    v28 = v0[10];
    v27 = v0[11];
    v30 = v0[8];
    v29 = v0[9];

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_22B2A9EAC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_22B2AA5E8;
  }

  else
  {
    v6 = sub_22B2A9FD8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void sub_22B2A9FD8()
{
  v30 = v0;
  v1 = v0[16];
  v2 = v1 + 1;
  v0[19] = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = sub_22B35EF4C();
  v4 = v2 % 5;
  if (v2 % 5 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 >= *(v3 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[10];
  v10 = v0[5];
  v9 = v0[6];
  v11 = *(v3 + 24 * v4 + 48);

  v12 = *(v10 + 136);
  *(v10 + 136) = v11;

  v6(v8, v7, v9);

  v13 = sub_22B36050C();
  v14 = sub_22B360CFC();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[15];
  v17 = v0[10];
  v18 = v0[6];
  if (v15)
  {
    v19 = v0[5];
    v28 = v0[7] + 8;
    v20 = swift_slowAlloc();
    v27 = v16;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v20 = 136315394;
    *(v20 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v29);
    *(v20 + 12) = 2112;
    v23 = *(v19 + 136);
    *(v20 + 14) = v23;
    *v21 = v23;
    v24 = v23;
    _os_log_impl(&dword_22B116000, v13, v14, "%s New location = %@", v20, 0x16u);
    sub_22B123284(v21, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x23188F650](v22, -1, -1);
    MEMORY[0x23188F650](v20, -1, -1);

    v27(v17, v18);
  }

  else
  {

    v16(v17, v18);
  }

  v25 = swift_task_alloc();
  v0[20] = v25;
  *v25 = v0;
  v25[1] = sub_22B2AA29C;
  v26 = v0[5];

  sub_22B2AA954();
}

uint64_t sub_22B2AA29C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B2AA3AC, v2, 0);
}

uint64_t sub_22B2AA3AC()
{
  v20 = v0;
  if (*(*(v0 + 40) + 129) == 1)
  {
    *(v0 + 128) = *(v0 + 152);
    v1 = *(MEMORY[0x277D857E8] + 4);
    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_22B2A9EAC;

    return MEMORY[0x282200480](5000000000);
  }

  else
  {
    v3 = *(v0 + 112);
    (*(v0 + 104))(*(v0 + 72), *(v0 + 96), *(v0 + 48));
    v4 = sub_22B36050C();
    v5 = sub_22B360CFC();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 120);
    v8 = *(v0 + 72);
    v9 = *(v0 + 48);
    v10 = *(v0 + 56);
    if (v6)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v19);
      _os_log_impl(&dword_22B116000, v4, v5, "%s no longer faking location updates", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x23188F650](v12, -1, -1);
      MEMORY[0x23188F650](v11, -1, -1);
    }

    v7(v8, v9);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_22B2AA5E8()
{
  v31 = v0;
  v1 = *(v0 + 112);
  (*(v0 + 104))(*(v0 + 64), *(v0 + 96), *(v0 + 48));
  v2 = sub_22B36050C();
  v3 = sub_22B360CFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);
  if (v4)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v30);
    _os_log_impl(&dword_22B116000, v2, v3, "%s Could not loop", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23188F650](v11, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);

    v6(v8, v9);
  }

  else
  {

    v6(v8, v9);
  }

  if (*(*(v0 + 40) + 129))
  {
    v12 = *(MEMORY[0x277D857E8] + 4);
    v13 = swift_task_alloc();
    *(v0 + 136) = v13;
    *v13 = v0;
    v13[1] = sub_22B2A9EAC;

    return MEMORY[0x282200480](5000000000);
  }

  else
  {
    v14 = *(v0 + 112);
    (*(v0 + 104))(*(v0 + 72), *(v0 + 96), *(v0 + 48));
    v15 = sub_22B36050C();
    v16 = sub_22B360CFC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 120);
    v19 = *(v0 + 72);
    v20 = *(v0 + 48);
    v21 = *(v0 + 56);
    if (v17)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v30);
      _os_log_impl(&dword_22B116000, v15, v16, "%s no longer faking location updates", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23188F650](v23, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);
    }

    v18(v19, v20);
    v25 = *(v0 + 80);
    v24 = *(v0 + 88);
    v27 = *(v0 + 64);
    v26 = *(v0 + 72);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_22B2AA954()
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = sub_22B36052C();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2AAA48, v0, 0);
}

uint64_t sub_22B2AAA48()
{
  v20 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360CFC();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD00000000000001DLL, 0x800000022B36D820, &v19);
    _os_log_impl(&dword_22B116000, v5, v6, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v13 = v0[8];
  v14 = v0[5];
  v15 = sub_22B360B6C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_22B123DF0(0, 0, v14, &unk_22B366C58, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_22B2AACB0()
{
  v1 = sub_22B36052C();
  v0[20] = v1;
  v2 = *(v1 - 8);
  v0[21] = v2;
  v3 = *(v2 + 64) + 15;
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2AAD78, 0, 0);
}

uint64_t sub_22B2AAD78()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  v28 = *(v3 + 16);
  v28(v1, v4, v2);
  v5 = sub_22B36050C();
  v6 = sub_22B360CFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Updating Client on Current Location Update", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v8 = v0[23];
  v9 = v0[20];
  v10 = v0[21];

  v11 = *(v10 + 8);
  v11(v8, v9);
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v12 = v0[22];
  v13 = v0[20];
  v14 = *(qword_28140BDD8 + 112);
  sub_22B35EF0C();
  v15 = sub_22B36081C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634B0;
  v0[18] = sub_22B35EECC();
  v0[19] = v17;
  sub_22B36110C();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_22B321BDC(inited);
  swift_setDeallocating();
  sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
  v18 = sub_22B3606CC();

  [v14 postNotificationName:v15 object:0 userInfo:v18 deliverImmediately:1];

  v28(v12, v4, v13);
  v19 = sub_22B36050C();
  v20 = sub_22B360CFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22B116000, v19, v20, "Updated Client on Current Location Update", v21, 2u);
    MEMORY[0x23188F650](v21, -1, -1);
  }

  v23 = v0[22];
  v22 = v0[23];
  v24 = v0[20];
  v25 = v0[21];

  v11(v23, v24);

  v26 = v0[1];

  return v26();
}

uint64_t sub_22B2AB164()
{
  v1 = sub_22B36052C();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2AB22C, 0, 0);
}

uint64_t sub_22B2AB22C()
{
  v18 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[9] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[10] = v5;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360CFC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36D840, &v17);
    _os_log_impl(&dword_22B116000, v6, v7, "%s posting notifications...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[12] = v14;
  if (qword_281409E98 != -1)
  {
    swift_once();
  }

  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_22B2AB478;

  return sub_22B2AA954();
}

uint64_t sub_22B2AB478()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B2AB574, 0, 0);
}

uint64_t sub_22B2AB574()
{
  v14 = v0;
  v1 = *(v0 + 88);
  (*(v0 + 80))(*(v0 + 56), *(v0 + 72), *(v0 + 40));
  v2 = sub_22B36050C();
  v3 = sub_22B360CFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 96);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 40);
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36D840, &v13);
    _os_log_impl(&dword_22B116000, v2, v3, "%s reloading widgets...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  v5(v6, v8);
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_22B2AB758;

  return sub_22B3512F8(0x6E6F697461636F4CLL, 0xEF65746164705520);
}

uint64_t sub_22B2AB758()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

id LocationManagerDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationManagerDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LocationManagerDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationManagerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B2AB9B8(void *a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_22B36050C();
  v10 = sub_22B360CFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_22B1A7B20(0xD000000000000029, 0x800000022B36D870, &v14);
    *(v11 + 12) = 1024;
    *(v11 + 14) = [v8 authorizationStatus];

    _os_log_impl(&dword_22B116000, v9, v10, "%s %d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22B2ABBF4(uint64_t a1)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v33 - v3;
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  v12 = v5[2];
  v12(v10, v11, v4);
  v13 = sub_22B36050C();
  v14 = sub_22B360CFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v5;
    v17 = v16;
    v37 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36D840, &v37);
    _os_log_impl(&dword_22B116000, v13, v14, "%s...", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v18 = v17;
    v5 = v33;
    MEMORY[0x23188F650](v18, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);
  }

  v19 = v5[1];
  v19(v10, v4);
  v12(v36, v11, v4);
  v20 = v34;

  v21 = sub_22B36050C();
  v22 = sub_22B360D0C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36D840, &v37);
    *(v23 + 12) = 2080;
    v25 = sub_22B128014(0, &qword_2814085C8, 0x277CE41F8);
    v26 = MEMORY[0x23188E390](v20, v25);
    v28 = sub_22B1A7B20(v26, v27, &v37);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_22B116000, v21, v22, "\t...%s%s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v24, -1, -1);
    MEMORY[0x23188F650](v23, -1, -1);
  }

  v19(v36, v4);
  v29 = sub_22B360B6C();
  v30 = v35;
  (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  sub_22B123DF0(0, 0, v30, &unk_22B366C68, v31);
}

unint64_t sub_22B2AC148()
{
  result = qword_281409338;
  if (!qword_281409338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BACB0, &unk_22B366C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409338);
  }

  return result;
}

uint64_t sub_22B2AC1AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B2AC1F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B119A60;

  return sub_22B2A9A18(a1, v4, v5, v6);
}

uint64_t sub_22B2AC2A8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B2AACB0();
}

uint64_t sub_22B2AC354()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B124D88;

  return sub_22B2AB164();
}

double sub_22B2AC400@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_22B33B28C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_22B170C58(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_22B2AC464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_22B172454(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_22B33F298(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_22B123284(a1, &unk_27D8BA950, &qword_22B364940);
    sub_22B2E641C(a2, a3, v10);

    return sub_22B123284(v10, &unk_27D8BA950, &qword_22B364940);
  }

  return result;
}

uint64_t sub_22B2AC534()
{
  type metadata accessor for UtilityDropbox();
  swift_allocObject();
  result = sub_22B2E6D74(0, 0);
  qword_28140BD08 = result;
  return result;
}

uint64_t sub_22B2AC578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 136) = v26;
  *(v9 + 144) = v8;
  *(v9 + 120) = v25;
  *(v9 + 104) = v24;
  *(v9 + 88) = a7;
  *(v9 + 96) = a8;
  *(v9 + 72) = a5;
  *(v9 + 80) = a6;
  *(v9 + 56) = a3;
  *(v9 + 64) = a4;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  v10 = sub_22B36052C();
  *(v9 + 152) = v10;
  v11 = *(v10 - 8);
  *(v9 + 160) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  v13 = sub_22B35FF9C();
  *(v9 + 216) = v13;
  v14 = *(v13 - 8);
  *(v9 + 224) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  v16 = sub_22B36008C();
  *(v9 + 248) = v16;
  v17 = *(v16 - 8);
  *(v9 + 256) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  v19 = sub_22B35DE9C();
  *(v9 + 280) = v19;
  v20 = *(v19 - 8);
  *(v9 + 288) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2AC7C4, v8, 0);
}

uint64_t sub_22B2AC7C4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  sub_22B35DE6C();
  *(v0 + 304) = sub_22B3602DC();
  *(v0 + 664) = *MEMORY[0x277D18108];
  v5 = *(v4 + 104);
  *(v0 + 312) = v5;
  *(v0 + 320) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v2);
  v6 = *(MEMORY[0x277D18240] + 4);
  v7 = swift_task_alloc();
  *(v0 + 328) = v7;
  *v7 = v0;
  v7[1] = sub_22B2AC8C8;
  v8 = *(v0 + 272);
  v9 = *(v0 + 240);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = *(v0 + 56);
  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);

  return MEMORY[0x282172608](v8, v14, v15, v12, v9, v13, v10, v11);
}

uint64_t sub_22B2AC8C8()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 216);
  v7 = *v1;
  v2[42] = v0;

  v8 = *(v5 + 8);
  v2[43] = v8;
  v2[44] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[18];
  if (v0)
  {
    v10 = sub_22B2AFA6C;
  }

  else
  {
    v10 = sub_22B2ACA64;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B2ACA64()
{
  v1 = v0[34];
  v2 = sub_22B36007C();
  if (v2 >> 62)
  {
    v3 = sub_22B36109C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[45] = v3;

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = v0[26];
  v5 = v0[19];
  v6 = v0[20];
  v7 = __swift_project_value_buffer(v5, qword_28140BD10);
  v0[46] = v7;
  swift_beginAccess();
  v8 = *(v6 + 16);
  v0[47] = v8;
  v0[48] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = v3;
    _os_log_impl(&dword_22B116000, v9, v10, "[Dropbox] Received %{public}ld records for UsagePoint in this session", v11, 0xCu);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v12 = v0[34];
  v13 = v0[26];
  v14 = v0[19];
  v15 = v0[20];

  v16 = *(v15 + 8);
  v0[49] = v16;
  v0[50] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  v17 = sub_22B36007C();
  if (v17 >> 62)
  {
    v21 = sub_22B36109C();

    if (v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
LABEL_9:
      if (qword_2814096B8 != -1)
      {
        swift_once();
      }

      v19 = v0[34];
      v20 = qword_28140BCE8;
      v0[53] = qword_28140BCE8;
      v0[54] = sub_22B36007C();

      return MEMORY[0x2822009F8](sub_22B2ACFE0, v20, 0);
    }
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v22 = swift_task_alloc();
  v0[51] = v22;
  *v22 = v0;
  v22[1] = sub_22B2ACD8C;
  v23 = v0[37];
  v25 = v0[11];
  v24 = v0[12];

  return sub_22B177E54(v25, v24, 0, 0xC000000000000000, v23);
}

uint64_t sub_22B2ACD8C()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_22B2AFB74;
  }

  else
  {
    v6 = sub_22B2ACEB8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2ACEB8()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v16 = v0[21];
  v17 = v0[45];

  v14 = v0[1];

  return v14(v17);
}

uint64_t sub_22B2ACFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[54];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v19 = v3[54];
    }

    v5 = sub_22B36109C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3[55] = v5;
  v6 = v3[54];
  if (!v5)
  {
    v17 = v3[18];
    v18 = v3[54];

    v5 = sub_22B2AD134;
    v6 = v17;
    a3 = 0;

    return MEMORY[0x2822009F8](v5, v6, a3);
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23188EAC0](0);
    goto LABEL_7;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v5, v6, a3);
  }

  v7 = *(v6 + 32);
LABEL_7:
  v8 = v7;
  v3[56] = v7;
  v3[57] = 1;
  v9 = swift_task_alloc();
  v3[58] = v9;
  *v9 = v3;
  v9[1] = sub_22B2AD820;
  v10 = v3[53];
  v11 = v3[16];
  v12 = v3[17];
  v13 = v3[14];
  v14 = v3[15];
  v15 = v3[13];

  return sub_22B3297C0(v8, v15, v13, v14, v11, v12);
}

uint64_t sub_22B2AD134()
{
  v99 = v0;
  v1 = *(v0 + 272);
  v2 = sub_22B36005C();
  v3 = *(v0 + 272);
  if (v2)
  {
    v4 = sub_22B36006C();
    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v6 == 2)
      {
        v14 = *(v4 + 16);
        v15 = *(v4 + 24);
        sub_22B12F174(v4, v5);
        if (v14 == v15)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      sub_22B12F174(v4, v5);
    }

    else
    {
      if (!v6)
      {
        v7 = v5;
        sub_22B12F174(v4, v5);
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      v22 = v4;
      sub_22B12F174(v4, v5);
      if (v22 != v22 >> 32)
      {
LABEL_19:
        if (qword_28140B470 != -1)
        {
          swift_once();
        }

        v23 = *(v0 + 272);
        v24 = sub_22B36006C();
        v26 = v25;
        *(v0 + 480) = v24;
        *(v0 + 488) = v25;
        v27 = swift_task_alloc();
        *(v0 + 496) = v27;
        *v27 = v0;
        v27[1] = sub_22B2ADC3C;
        v18 = *(v0 + 96);
        v17 = *(v0 + 56);
        v19 = *(v0 + 88);
        v20 = v24;
        v21 = v26;
LABEL_22:

        return sub_22B177E54(v19, v18, v20, v21, v17);
      }
    }

LABEL_29:
    v31 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 200), *(v0 + 368), *(v0 + 152));
    v32 = sub_22B36050C();
    v33 = sub_22B360D1C();
    v34 = os_log_type_enabled(v32, v33);
    v36 = *(v0 + 392);
    v35 = *(v0 + 400);
    v37 = *(v0 + 288);
    v38 = *(v0 + 296);
    v96 = *(v0 + 280);
    v92 = *(v0 + 272);
    v40 = *(v0 + 248);
    v39 = *(v0 + 256);
    v41 = *(v0 + 200);
    v42 = *(v0 + 152);
    if (v34)
    {
      v90 = *(v0 + 296);
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22B116000, v32, v33, "[Dropbox] Error: Response indicates more to come, however offset is empty", v43, 2u);
      MEMORY[0x23188F650](v43, -1, -1);

      v36(v41, v42);
      (*(v39 + 8))(v92, v40);
      (*(v37 + 8))(v90, v96);
    }

    else
    {

      v36(v41, v42);
      (*(v39 + 8))(v92, v40);
      (*(v37 + 8))(v38, v96);
    }

    v97 = *(v0 + 360);
    goto LABEL_33;
  }

  if ((sub_22B36005C() & 1) == 0)
  {
    v8 = *(v0 + 360);
    goto LABEL_15;
  }

  v8 = *(v0 + 360);
  *(v0 + 512) = v8;
  v9 = *(v0 + 272);
  v10 = sub_22B36006C();
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v29 = *(v10 + 16);
      v30 = *(v10 + 24);
      sub_22B12F174(v10, v11);
      if (v29 != v30)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_22B12F174(v10, v11);
    }

    goto LABEL_15;
  }

  if (v12)
  {
    v55 = v10;
    sub_22B12F174(v10, v11);
    if (v55 != v55 >> 32)
    {
      goto LABEL_37;
    }

LABEL_15:
    *(v0 + 640) = v8;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v16 = swift_task_alloc();
    *(v0 + 648) = v16;
    *v16 = v0;
    v16[1] = sub_22B2AF818;
    v17 = *(v0 + 296);
    v18 = *(v0 + 96);
    v19 = *(v0 + 88);
    v20 = 0;
    v21 = 0xC000000000000000;
    goto LABEL_22;
  }

  v13 = v11;
  sub_22B12F174(v10, v11);
  if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_37:
  if (sub_22B360BFC())
  {
    v97 = v8;
    v56 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 192), *(v0 + 368), *(v0 + 152));
    v57 = sub_22B36050C();
    v58 = sub_22B360D1C();
    v59 = os_log_type_enabled(v57, v58);
    v91 = *(v0 + 392);
    v60 = *(v0 + 288);
    v61 = *(v0 + 296);
    v62 = *(v0 + 272);
    v63 = *(v0 + 280);
    v93 = v62;
    v95 = *(v0 + 400);
    v65 = *(v0 + 248);
    v64 = *(v0 + 256);
    v66 = *(v0 + 192);
    v67 = *(v0 + 152);
    if (v59)
    {
      v89 = *(v0 + 296);
      v68 = swift_slowAlloc();
      v88 = v63;
      v69 = swift_slowAlloc();
      v98 = v69;
      *v68 = 136315394;
      *(v68 + 4) = sub_22B1A7B20(0xD00000000000005BLL, 0x800000022B36DB50, &v98);
      *(v68 + 12) = 2048;
      *(v68 + 14) = 170;
      _os_log_impl(&dword_22B116000, v57, v58, "[Dropbox] Task is cancelled at marker %s:%ld", v68, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x23188F650](v69, -1, -1);
      MEMORY[0x23188F650](v68, -1, -1);

      v91(v66, v67);
      (*(v64 + 8))(v93, v65);
      (*(v60 + 8))(v89, v88);
    }

    else
    {

      v91(v66, v67);
      (*(v64 + 8))(v93, v65);
      (*(v60 + 8))(v61, v63);
    }

LABEL_33:
    v44 = *(v0 + 296);
    v46 = *(v0 + 264);
    v45 = *(v0 + 272);
    v48 = *(v0 + 232);
    v47 = *(v0 + 240);
    v50 = *(v0 + 200);
    v49 = *(v0 + 208);
    v52 = *(v0 + 184);
    v51 = *(v0 + 192);
    v53 = *(v0 + 176);
    v94 = *(v0 + 168);

    v54 = *(v0 + 8);

    return v54(v97);
  }

  v71 = *(v0 + 312);
  v70 = *(v0 + 320);
  v72 = *(v0 + 664);
  v73 = *(v0 + 272);
  v74 = *(v0 + 232);
  v75 = *(v0 + 216);
  v76 = sub_22B36006C();
  v78 = v77;
  *(v0 + 520) = v76;
  *(v0 + 528) = v77;
  v71(v74, v72, v75);
  v79 = *(MEMORY[0x277D18240] + 4);
  v80 = swift_task_alloc();
  *(v0 + 536) = v80;
  *v80 = v0;
  v80[1] = sub_22B2AE248;
  v81 = *(v0 + 304);
  v82 = *(v0 + 264);
  v83 = *(v0 + 232);
  v84 = *(v0 + 80);
  v85 = *(v0 + 48);
  v86 = *(v0 + 56);
  v87 = *(v0 + 40);

  return MEMORY[0x282172608](v82, v87, v85, v86, v83, v76, v78, v84);
}

uint64_t sub_22B2AD820()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 424);
  if (v0)
  {
    v6 = sub_22B2ADAA0;
  }

  else
  {
    v6 = sub_22B2AD94C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2AD94C()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);

  if (v1 == v2)
  {
    v5 = *(v0 + 432);
    v6 = *(v0 + 144);

    v3 = sub_22B2AD134;
    v7 = v6;
    v4 = 0;

    return MEMORY[0x2822009F8](v3, v7, v4);
  }

  v8 = *(v0 + 456);
  v7 = *(v0 + 432);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x23188EAC0](*(v0 + 456));
  }

  else
  {
    if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return MEMORY[0x2822009F8](v3, v7, v4);
    }

    v3 = *(v7 + 8 * v8 + 32);
  }

  v9 = v3;
  *(v0 + 448) = v3;
  *(v0 + 456) = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_22B2AD820;
  v11 = *(v0 + 424);
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);
  v16 = *(v0 + 104);

  return sub_22B3297C0(v9, v16, v14, v15, v12, v13);
}

uint64_t sub_22B2ADAA0()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_22B2ADB18, v2, 0);
}

uint64_t sub_22B2ADB18()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v16 = v0[21];
  v17 = v0[59];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22B2ADC3C()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *(*v1 + 488);
  v5 = *(*v1 + 480);
  v6 = *v1;
  *(*v1 + 504) = v0;

  sub_22B12F174(v5, v4);
  v7 = *(v2 + 144);
  if (v0)
  {
    v8 = sub_22B2AFC98;
  }

  else
  {
    v8 = sub_22B2ADDA4;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B2ADDA4()
{
  v66 = v0;
  v1 = *(v0 + 272);
  if ((sub_22B36005C() & 1) == 0)
  {
    v2 = *(v0 + 360);
    goto LABEL_7;
  }

  v2 = *(v0 + 360);
  *(v0 + 512) = v2;
  v3 = *(v0 + 272);
  v4 = sub_22B36006C();
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      sub_22B12F174(v4, v5);
      if (v14 != v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_22B12F174(v4, v5);
    }

LABEL_7:
    *(v0 + 640) = v2;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v8 = swift_task_alloc();
    *(v0 + 648) = v8;
    *v8 = v0;
    v8[1] = sub_22B2AF818;
    v9 = *(v0 + 296);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);

    return sub_22B177E54(v11, v10, 0, 0xC000000000000000, v9);
  }

  if (v6)
  {
    v15 = v4;
    sub_22B12F174(v4, v5);
    if (v15 != v15 >> 32)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v7 = v5;
  sub_22B12F174(v4, v5);
  if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if (sub_22B360BFC())
  {
    v16 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 192), *(v0 + 368), *(v0 + 152));
    v17 = sub_22B36050C();
    v18 = sub_22B360D1C();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 288);
    v20 = *(v0 + 296);
    v22 = *(v0 + 280);
    v61 = *(v0 + 272);
    v63 = *(v0 + 400);
    v23 = *(v0 + 248);
    v24 = *(v0 + 256);
    v59 = v23;
    v60 = *(v0 + 392);
    v25 = *(v0 + 192);
    v26 = *(v0 + 152);
    if (v19)
    {
      v58 = *(v0 + 296);
      v27 = swift_slowAlloc();
      v57 = v22;
      v28 = swift_slowAlloc();
      v65 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_22B1A7B20(0xD00000000000005BLL, 0x800000022B36DB50, &v65);
      *(v27 + 12) = 2048;
      *(v27 + 14) = 170;
      _os_log_impl(&dword_22B116000, v17, v18, "[Dropbox] Task is cancelled at marker %s:%ld", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23188F650](v28, -1, -1);
      MEMORY[0x23188F650](v27, -1, -1);

      v60(v25, v26);
      (*(v24 + 8))(v61, v59);
      (*(v21 + 8))(v58, v57);
    }

    else
    {

      v60(v25, v26);
      (*(v24 + 8))(v61, v59);
      (*(v21 + 8))(v20, v22);
    }

    v47 = *(v0 + 296);
    v49 = *(v0 + 264);
    v48 = *(v0 + 272);
    v51 = *(v0 + 232);
    v50 = *(v0 + 240);
    v53 = *(v0 + 200);
    v52 = *(v0 + 208);
    v55 = *(v0 + 184);
    v54 = *(v0 + 192);
    v62 = *(v0 + 176);
    v64 = *(v0 + 168);

    v56 = *(v0 + 8);

    return v56(v2);
  }

  else
  {
    v30 = *(v0 + 312);
    v29 = *(v0 + 320);
    v31 = *(v0 + 664);
    v32 = *(v0 + 272);
    v33 = *(v0 + 232);
    v34 = *(v0 + 216);
    v35 = sub_22B36006C();
    v37 = v36;
    *(v0 + 520) = v35;
    *(v0 + 528) = v36;
    v30(v33, v31, v34);
    v38 = *(MEMORY[0x277D18240] + 4);
    v39 = swift_task_alloc();
    *(v0 + 536) = v39;
    *v39 = v0;
    v39[1] = sub_22B2AE248;
    v40 = *(v0 + 304);
    v41 = *(v0 + 264);
    v42 = *(v0 + 232);
    v43 = *(v0 + 80);
    v44 = *(v0 + 48);
    v45 = *(v0 + 56);
    v46 = *(v0 + 40);

    return MEMORY[0x282172608](v41, v46, v44, v45, v42, v35, v37, v43);
  }
}

uint64_t sub_22B2AE248()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 544) = v0;

  v5 = v2[44];
  v6 = v2[43];
  v7 = v2[29];
  v8 = v2[27];
  v9 = v2[18];
  v6(v7, v8);
  if (v0)
  {
    v10 = sub_22B2AFDBC;
  }

  else
  {
    v10 = sub_22B2AE3CC;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B2AE3CC()
{
  (*(*(v0 + 256) + 40))(*(v0 + 272), *(v0 + 264), *(v0 + 248));
  v1 = sub_22B36007C();
  if (v1 >> 62)
  {
    v2 = sub_22B36109C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 512);

  v7 = v3 + v2;
  *(v0 + 552) = v3 + v2;
  if (__OFADD__(v3, v2))
  {
    __break(1u);
  }

  else
  {
    v8 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 184), *(v0 + 368), *(v0 + 152));
    v9 = sub_22B36050C();
    v10 = sub_22B360D2C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134349056;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_22B116000, v9, v10, "[Dropbox] Received %{public}ld records for UsagePoint in this session", v11, 0xCu);
      MEMORY[0x23188F650](v11, -1, -1);
    }

    v12 = *(v0 + 424);
    v14 = *(v0 + 392);
    v13 = *(v0 + 400);
    v15 = *(v0 + 272);
    v16 = *(v0 + 184);
    v17 = *(v0 + 152);

    v14(v16, v17);
    *(v0 + 560) = sub_22B36007C();
    v4 = sub_22B2AE568;
    v5 = v12;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22B2AE568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[70];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v19 = v3[70];
    }

    v5 = sub_22B36109C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3[71] = v5;
  v6 = v3[70];
  if (!v5)
  {
    v17 = v3[18];
    v18 = v3[70];

    v5 = sub_22B2AE6C0;
    v6 = v17;
    a3 = 0;

    return MEMORY[0x2822009F8](v5, v6, a3);
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23188EAC0](0);
    goto LABEL_7;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v5, v6, a3);
  }

  v7 = *(v6 + 32);
LABEL_7:
  v8 = v7;
  v3[72] = v7;
  v3[73] = 1;
  v9 = swift_task_alloc();
  v3[74] = v9;
  *v9 = v3;
  v9[1] = sub_22B2AEDE4;
  v10 = v3[53];
  v11 = v3[16];
  v12 = v3[17];
  v13 = v3[14];
  v14 = v3[15];
  v15 = v3[13];

  return sub_22B3297C0(v8, v15, v13, v14, v11, v12);
}

uint64_t sub_22B2AE6C0()
{
  v104 = v0;
  v1 = *(v0 + 272);
  if (sub_22B36005C())
  {
    v2 = *(v0 + 272);
    v3 = sub_22B36006C();
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 == 2)
      {
        v15 = *(v3 + 16);
        v16 = *(v3 + 24);
        sub_22B12F174(v3, v4);
        if (v15 == v16)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }

      sub_22B12F174(v3, v4);
    }

    else
    {
      if (!v5)
      {
        v6 = v4;
        sub_22B12F174(v3, v4);
        if ((v6 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_15:
        v18 = *(v0 + 528);
        v19 = *(v0 + 520);
        v20 = *(v0 + 272);
        v21 = sub_22B36006C();
        v23 = v22;
        LOBYTE(v18) = sub_22B2E77BC(v21, v22, v19, v18);
        sub_22B12F174(v21, v23);
        if ((v18 & 1) == 0)
        {
          if (qword_28140B470 != -1)
          {
            swift_once();
          }

          v48 = *(v0 + 272);
          v49 = sub_22B36006C();
          v51 = v50;
          *(v0 + 608) = v49;
          *(v0 + 616) = v50;
          v52 = swift_task_alloc();
          *(v0 + 624) = v52;
          *v52 = v0;
          v52[1] = sub_22B2AF21C;
          v43 = *(v0 + 96);
          v42 = *(v0 + 56);
          v44 = *(v0 + 88);
          v45 = v49;
          v46 = v51;
          goto LABEL_28;
        }

        v24 = *(v0 + 384);
        (*(v0 + 376))(*(v0 + 168), *(v0 + 368), *(v0 + 152));
        v25 = sub_22B36050C();
        v26 = sub_22B360D1C();
        v27 = os_log_type_enabled(v25, v26);
        v28 = *(v0 + 528);
        v29 = *(v0 + 520);
        v31 = *(v0 + 392);
        v30 = *(v0 + 400);
        v32 = *(v0 + 168);
        v33 = *(v0 + 152);
        if (!v27)
        {
          goto LABEL_24;
        }

        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = "[Dropbox] Error: Response indicates more to come, however offset is same as previous";
        goto LABEL_23;
      }

      v17 = v3;
      sub_22B12F174(v3, v4);
      if (v17 != v17 >> 32)
      {
        goto LABEL_15;
      }
    }

LABEL_21:
    v38 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 176), *(v0 + 368), *(v0 + 152));
    v25 = sub_22B36050C();
    v26 = sub_22B360D1C();
    v39 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 528);
    v29 = *(v0 + 520);
    v31 = *(v0 + 392);
    v40 = *(v0 + 400);
    v32 = *(v0 + 176);
    v33 = *(v0 + 152);
    if (!v39)
    {
LABEL_24:
      sub_22B12F174(v29, v28);

      v31(v32, v33);
      v9 = *(v0 + 552);
      goto LABEL_25;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "[Dropbox] Error: Response indicates more to come, however offset is empty";
LABEL_23:
    _os_log_impl(&dword_22B116000, v25, v26, v35, v34, 2u);
    MEMORY[0x23188F650](v34, -1, -1);
    goto LABEL_24;
  }

  v7 = *(v0 + 272);
  sub_22B12F174(*(v0 + 520), *(v0 + 528));
  v8 = sub_22B36005C();
  v9 = *(v0 + 552);
  if ((v8 & 1) == 0)
  {
LABEL_25:
    *(v0 + 640) = v9;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v41 = swift_task_alloc();
    *(v0 + 648) = v41;
    *v41 = v0;
    v41[1] = sub_22B2AF818;
    v42 = *(v0 + 296);
    v43 = *(v0 + 96);
    v44 = *(v0 + 88);
    v45 = 0;
    v46 = 0xC000000000000000;
LABEL_28:

    return sub_22B177E54(v44, v43, v45, v46, v42);
  }

  *(v0 + 512) = v9;
  v10 = *(v0 + 272);
  v11 = sub_22B36006C();
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      sub_22B12F174(v11, v12);
      goto LABEL_25;
    }

    v37 = *(v11 + 16);
    v36 = *(v11 + 24);
    sub_22B12F174(v11, v12);
  }

  else
  {
    if (!v13)
    {
      v14 = v12;
      sub_22B12F174(v11, v12);
      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_36;
    }

    v53 = v11;
    sub_22B12F174(v11, v12);
    v37 = v53;
    v36 = v53 >> 32;
  }

  if (v37 == v36)
  {
    goto LABEL_25;
  }

LABEL_36:
  if (sub_22B360BFC())
  {
    v54 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 192), *(v0 + 368), *(v0 + 152));
    v55 = sub_22B36050C();
    v56 = sub_22B360D1C();
    v57 = os_log_type_enabled(v55, v56);
    v59 = *(v0 + 288);
    v58 = *(v0 + 296);
    v60 = *(v0 + 280);
    v99 = *(v0 + 272);
    v101 = *(v0 + 400);
    v61 = *(v0 + 248);
    v62 = *(v0 + 256);
    v97 = v61;
    v98 = *(v0 + 392);
    v63 = *(v0 + 192);
    v64 = *(v0 + 152);
    if (v57)
    {
      v96 = *(v0 + 296);
      v65 = swift_slowAlloc();
      v95 = v60;
      v66 = swift_slowAlloc();
      v103 = v66;
      *v65 = 136315394;
      *(v65 + 4) = sub_22B1A7B20(0xD00000000000005BLL, 0x800000022B36DB50, &v103);
      *(v65 + 12) = 2048;
      *(v65 + 14) = 170;
      _os_log_impl(&dword_22B116000, v55, v56, "[Dropbox] Task is cancelled at marker %s:%ld", v65, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x23188F650](v66, -1, -1);
      MEMORY[0x23188F650](v65, -1, -1);

      v98(v63, v64);
      (*(v62 + 8))(v99, v97);
      (*(v59 + 8))(v96, v95);
    }

    else
    {

      v98(v63, v64);
      (*(v62 + 8))(v99, v97);
      (*(v59 + 8))(v58, v60);
    }

    v85 = *(v0 + 296);
    v87 = *(v0 + 264);
    v86 = *(v0 + 272);
    v89 = *(v0 + 232);
    v88 = *(v0 + 240);
    v91 = *(v0 + 200);
    v90 = *(v0 + 208);
    v93 = *(v0 + 184);
    v92 = *(v0 + 192);
    v100 = *(v0 + 176);
    v102 = *(v0 + 168);

    v94 = *(v0 + 8);

    return v94(v9);
  }

  else
  {
    v68 = *(v0 + 312);
    v67 = *(v0 + 320);
    v69 = *(v0 + 664);
    v70 = *(v0 + 272);
    v71 = *(v0 + 232);
    v72 = *(v0 + 216);
    v73 = sub_22B36006C();
    v75 = v74;
    *(v0 + 520) = v73;
    *(v0 + 528) = v74;
    v68(v71, v69, v72);
    v76 = *(MEMORY[0x277D18240] + 4);
    v77 = swift_task_alloc();
    *(v0 + 536) = v77;
    *v77 = v0;
    v77[1] = sub_22B2AE248;
    v78 = *(v0 + 304);
    v79 = *(v0 + 264);
    v80 = *(v0 + 232);
    v81 = *(v0 + 80);
    v82 = *(v0 + 48);
    v83 = *(v0 + 56);
    v84 = *(v0 + 40);

    return MEMORY[0x282172608](v79, v84, v82, v83, v80, v73, v75, v81);
  }
}

uint64_t sub_22B2AEDE4()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *v1;
  *(*v1 + 600) = v0;

  v5 = *(v2 + 424);
  if (v0)
  {
    v6 = sub_22B2AF06C;
  }

  else
  {
    v6 = sub_22B2AEF10;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2AEF10()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 568);

  if (v1 == v2)
  {
    v5 = *(v0 + 560);
    v6 = *(v0 + 144);

    v3 = sub_22B2AE6C0;
    v7 = v6;
    v4 = 0;

    return MEMORY[0x2822009F8](v3, v7, v4);
  }

  v8 = *(v0 + 584);
  v7 = *(v0 + 560);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x23188EAC0](*(v0 + 584));
  }

  else
  {
    if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return MEMORY[0x2822009F8](v3, v7, v4);
    }

    v3 = *(v7 + 8 * v8 + 32);
  }

  v9 = v3;
  *(v0 + 576) = v3;
  *(v0 + 584) = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = swift_task_alloc();
  *(v0 + 592) = v10;
  *v10 = v0;
  v10[1] = sub_22B2AEDE4;
  v11 = *(v0 + 424);
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);
  v16 = *(v0 + 104);

  return sub_22B3297C0(v9, v16, v14, v15, v12, v13);
}

uint64_t sub_22B2AF06C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_22B2AF0E4, v2, 0);
}

uint64_t sub_22B2AF0E4()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  v6 = v0[32];
  sub_22B12F174(v0[65], v0[66]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[37];
  v9 = v0[33];
  v8 = v0[34];
  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[22];
  v19 = v0[21];
  v20 = v0[75];

  v17 = v0[1];

  return v17();
}

uint64_t sub_22B2AF21C()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;
  *(*v1 + 632) = v0;

  v5 = v2[77];
  v6 = v2[76];
  v7 = v2[18];
  sub_22B12F174(v6, v5);
  if (v0)
  {
    v8 = sub_22B2AFEF4;
  }

  else
  {
    v8 = sub_22B2AF378;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B2AF378()
{
  v67 = v0;
  v1 = *(v0 + 272);
  sub_22B12F174(*(v0 + 520), *(v0 + 528));
  v2 = sub_22B36005C();
  v3 = *(v0 + 552);
  if ((v2 & 1) == 0)
  {
    goto LABEL_14;
  }

  *(v0 + 512) = v3;
  v4 = *(v0 + 272);
  v5 = sub_22B36006C();
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      sub_22B12F174(v5, v6);
      goto LABEL_14;
    }

    v10 = *(v5 + 16);
    v9 = *(v5 + 24);
    sub_22B12F174(v5, v6);
LABEL_9:
    if (v10 != v9)
    {
      goto LABEL_10;
    }

LABEL_14:
    *(v0 + 640) = v3;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v25 = swift_task_alloc();
    *(v0 + 648) = v25;
    *v25 = v0;
    v25[1] = sub_22B2AF818;
    v26 = *(v0 + 296);
    v28 = *(v0 + 88);
    v27 = *(v0 + 96);

    return sub_22B177E54(v28, v27, 0, 0xC000000000000000, v26);
  }

  if (v7)
  {
    v11 = v5;
    sub_22B12F174(v5, v6);
    v10 = v11;
    v9 = v11 >> 32;
    goto LABEL_9;
  }

  v8 = v6;
  sub_22B12F174(v5, v6);
  if ((v8 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (sub_22B360BFC())
  {
    v12 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 192), *(v0 + 368), *(v0 + 152));
    v13 = sub_22B36050C();
    v14 = sub_22B360D1C();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 288);
    v16 = *(v0 + 296);
    v18 = *(v0 + 280);
    v62 = *(v0 + 272);
    v64 = *(v0 + 400);
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    v60 = v19;
    v61 = *(v0 + 392);
    v21 = *(v0 + 192);
    v22 = *(v0 + 152);
    if (v15)
    {
      v59 = *(v0 + 296);
      v23 = swift_slowAlloc();
      v58 = v18;
      v24 = swift_slowAlloc();
      v66 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_22B1A7B20(0xD00000000000005BLL, 0x800000022B36DB50, &v66);
      *(v23 + 12) = 2048;
      *(v23 + 14) = 170;
      _os_log_impl(&dword_22B116000, v13, v14, "[Dropbox] Task is cancelled at marker %s:%ld", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23188F650](v24, -1, -1);
      MEMORY[0x23188F650](v23, -1, -1);

      v61(v21, v22);
      (*(v20 + 8))(v62, v60);
      (*(v17 + 8))(v59, v58);
    }

    else
    {

      v61(v21, v22);
      (*(v20 + 8))(v62, v60);
      (*(v17 + 8))(v16, v18);
    }

    v48 = *(v0 + 296);
    v50 = *(v0 + 264);
    v49 = *(v0 + 272);
    v52 = *(v0 + 232);
    v51 = *(v0 + 240);
    v54 = *(v0 + 200);
    v53 = *(v0 + 208);
    v56 = *(v0 + 184);
    v55 = *(v0 + 192);
    v63 = *(v0 + 176);
    v65 = *(v0 + 168);

    v57 = *(v0 + 8);

    return v57(v3);
  }

  else
  {
    v31 = *(v0 + 312);
    v30 = *(v0 + 320);
    v32 = *(v0 + 664);
    v33 = *(v0 + 272);
    v34 = *(v0 + 232);
    v35 = *(v0 + 216);
    v36 = sub_22B36006C();
    v38 = v37;
    *(v0 + 520) = v36;
    *(v0 + 528) = v37;
    v31(v34, v32, v35);
    v39 = *(MEMORY[0x277D18240] + 4);
    v40 = swift_task_alloc();
    *(v0 + 536) = v40;
    *v40 = v0;
    v40[1] = sub_22B2AE248;
    v41 = *(v0 + 304);
    v42 = *(v0 + 264);
    v43 = *(v0 + 232);
    v44 = *(v0 + 80);
    v45 = *(v0 + 48);
    v46 = *(v0 + 56);
    v47 = *(v0 + 40);

    return MEMORY[0x282172608](v42, v47, v45, v46, v43, v36, v38, v44);
  }
}

uint64_t sub_22B2AF818()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v4 = *v1;
  *(*v1 + 656) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_22B2B002C;
  }

  else
  {
    v6 = sub_22B2AF944;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2AF944()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v16 = v0[21];
  v17 = v0[80];

  v14 = v0[1];

  return v14(v17);
}

uint64_t sub_22B2AFA6C()
{
  (*(v0[36] + 8))(v0[37], v0[35]);
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[29];
  v4 = v0[30];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];
  v13 = v0[21];
  v14 = v0[42];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22B2AFB74()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v16 = v0[21];
  v17 = v0[52];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22B2AFC98()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v16 = v0[21];
  v17 = v0[63];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22B2AFDBC()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  v6 = v0[32];
  sub_22B12F174(v0[65], v0[66]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[37];
  v9 = v0[33];
  v8 = v0[34];
  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[22];
  v19 = v0[21];
  v20 = v0[68];

  v17 = v0[1];

  return v17();
}

uint64_t sub_22B2AFEF4()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  v6 = v0[32];
  sub_22B12F174(v0[65], v0[66]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[37];
  v9 = v0[33];
  v8 = v0[34];
  v11 = v0[29];
  v10 = v0[30];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[22];
  v19 = v0[21];
  v20 = v0[79];

  v17 = v0[1];

  return v17();
}

uint64_t sub_22B2B002C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v16 = v0[21];
  v17 = v0[82];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22B2B0150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 136) = v26;
  *(v9 + 144) = v8;
  *(v9 + 120) = v25;
  *(v9 + 104) = v24;
  *(v9 + 88) = a7;
  *(v9 + 96) = a8;
  *(v9 + 72) = a5;
  *(v9 + 80) = a6;
  *(v9 + 56) = a3;
  *(v9 + 64) = a4;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  v10 = sub_22B36052C();
  *(v9 + 152) = v10;
  v11 = *(v10 - 8);
  *(v9 + 160) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  v13 = sub_22B35FF9C();
  *(v9 + 216) = v13;
  v14 = *(v13 - 8);
  *(v9 + 224) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  v16 = sub_22B36008C();
  *(v9 + 248) = v16;
  v17 = *(v16 - 8);
  *(v9 + 256) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  v19 = sub_22B35DE9C();
  *(v9 + 280) = v19;
  v20 = *(v19 - 8);
  *(v9 + 288) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2B039C, v8, 0);
}

uint64_t sub_22B2B039C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  sub_22B35DE6C();
  *(v0 + 304) = sub_22B3602DC();
  *(v0 + 616) = *MEMORY[0x277D18110];
  v5 = *(v4 + 104);
  *(v0 + 312) = v5;
  *(v0 + 320) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v2);
  v6 = *(MEMORY[0x277D18240] + 4);
  v7 = swift_task_alloc();
  *(v0 + 328) = v7;
  *v7 = v0;
  v7[1] = sub_22B2B04A0;
  v8 = *(v0 + 272);
  v9 = *(v0 + 240);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = *(v0 + 56);
  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);

  return MEMORY[0x282172608](v8, v14, v15, v12, v9, v13, v10, v11);
}

uint64_t sub_22B2B04A0()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 216);
  v7 = *v1;
  v2[42] = v0;

  v8 = *(v5 + 8);
  v2[43] = v8;
  v2[44] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[18];
  if (v0)
  {
    v10 = sub_22B2EC230;
  }

  else
  {
    v10 = sub_22B2B063C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B2B063C()
{
  v1 = v0[34];
  v2 = sub_22B36007C();
  if (v2 >> 62)
  {
    v3 = sub_22B36109C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[45] = v3;

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = v0[26];
  v5 = v0[19];
  v6 = v0[20];
  v7 = __swift_project_value_buffer(v5, qword_28140BD10);
  v0[46] = v7;
  swift_beginAccess();
  v8 = *(v6 + 16);
  v0[47] = v8;
  v0[48] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = v3;
    _os_log_impl(&dword_22B116000, v9, v10, "[Dropbox] Received %{public}ld records for UsageSummary in this session", v11, 0xCu);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v12 = v0[34];
  v13 = v0[26];
  v14 = v0[19];
  v15 = v0[20];

  v16 = *(v15 + 8);
  v0[49] = v16;
  v0[50] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v13, v14);
  v17 = sub_22B36007C();
  if (v17 >> 62)
  {
    v28 = sub_22B36109C();

    if (v28)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
LABEL_9:
      if (qword_281409598 != -1)
      {
        swift_once();
      }

      v19 = v0[34];
      v0[53] = qword_28140BCE0;
      v20 = sub_22B36007C();
      v0[54] = v20;
      v21 = swift_task_alloc();
      v0[55] = v21;
      *v21 = v0;
      v21[1] = sub_22B2B0AD4;
      v22 = v0[16];
      v23 = v0[17];
      v24 = v0[14];
      v25 = v0[15];
      v26 = v0[13];

      return sub_22B1D59F4(v20, v26, v24, v25, v22, v23);
    }
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v29 = swift_task_alloc();
  v0[51] = v29;
  *v29 = v0;
  v29[1] = sub_22B2B09A8;
  v30 = v0[37];
  v32 = v0[11];
  v31 = v0[12];

  return sub_22B17877C(v32, v31, 0, 0xC000000000000000, v30);
}

uint64_t sub_22B2B09A8()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_22B2EC218;
  }

  else
  {
    v6 = sub_22B2EC214;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2B0AD4()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 448) = v0;

  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_22B2B29A8;
  }

  else
  {

    v7 = sub_22B2B0C34;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B2B0C34()
{
  v99 = v0;
  v1 = *(v0 + 272);
  v2 = sub_22B36005C();
  v3 = *(v0 + 272);
  if (v2)
  {
    v4 = sub_22B36006C();
    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v6 == 2)
      {
        v14 = *(v4 + 16);
        v15 = *(v4 + 24);
        sub_22B12F174(v4, v5);
        if (v14 == v15)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      sub_22B12F174(v4, v5);
    }

    else
    {
      if (!v6)
      {
        v7 = v5;
        sub_22B12F174(v4, v5);
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      v22 = v4;
      sub_22B12F174(v4, v5);
      if (v22 != v22 >> 32)
      {
LABEL_19:
        if (qword_28140B470 != -1)
        {
          swift_once();
        }

        v23 = *(v0 + 272);
        v24 = sub_22B36006C();
        v26 = v25;
        *(v0 + 456) = v24;
        *(v0 + 464) = v25;
        v27 = swift_task_alloc();
        *(v0 + 472) = v27;
        *v27 = v0;
        v27[1] = sub_22B2B131C;
        v18 = *(v0 + 96);
        v17 = *(v0 + 56);
        v19 = *(v0 + 88);
        v20 = v24;
        v21 = v26;
LABEL_22:

        return sub_22B17877C(v19, v18, v20, v21, v17);
      }
    }

LABEL_29:
    v31 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 200), *(v0 + 368), *(v0 + 152));
    v32 = sub_22B36050C();
    v33 = sub_22B360D1C();
    v34 = os_log_type_enabled(v32, v33);
    v36 = *(v0 + 392);
    v35 = *(v0 + 400);
    v37 = *(v0 + 288);
    v38 = *(v0 + 296);
    v96 = *(v0 + 280);
    v92 = *(v0 + 272);
    v40 = *(v0 + 248);
    v39 = *(v0 + 256);
    v41 = *(v0 + 200);
    v42 = *(v0 + 152);
    if (v34)
    {
      v90 = *(v0 + 296);
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22B116000, v32, v33, "[Dropbox] Error: Response indicates more to come, however offset is empty", v43, 2u);
      MEMORY[0x23188F650](v43, -1, -1);

      v36(v41, v42);
      (*(v39 + 8))(v92, v40);
      (*(v37 + 8))(v90, v96);
    }

    else
    {

      v36(v41, v42);
      (*(v39 + 8))(v92, v40);
      (*(v37 + 8))(v38, v96);
    }

    v97 = *(v0 + 360);
    goto LABEL_33;
  }

  if ((sub_22B36005C() & 1) == 0)
  {
    v8 = *(v0 + 360);
    goto LABEL_15;
  }

  v8 = *(v0 + 360);
  *(v0 + 488) = v8;
  v9 = *(v0 + 272);
  v10 = sub_22B36006C();
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v29 = *(v10 + 16);
      v30 = *(v10 + 24);
      sub_22B12F174(v10, v11);
      if (v29 != v30)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_22B12F174(v10, v11);
    }

    goto LABEL_15;
  }

  if (v12)
  {
    v55 = v10;
    sub_22B12F174(v10, v11);
    if (v55 != v55 >> 32)
    {
      goto LABEL_37;
    }

LABEL_15:
    *(v0 + 592) = v8;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v16 = swift_task_alloc();
    *(v0 + 600) = v16;
    *v16 = v0;
    v16[1] = sub_22B2B2754;
    v17 = *(v0 + 296);
    v18 = *(v0 + 96);
    v19 = *(v0 + 88);
    v20 = 0;
    v21 = 0xC000000000000000;
    goto LABEL_22;
  }

  v13 = v11;
  sub_22B12F174(v10, v11);
  if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_37:
  if (sub_22B360BFC())
  {
    v97 = v8;
    v56 = *(v0 + 384);
    (*(v0 + 376))(*(v0 + 192), *(v0 + 368), *(v0 + 152));
    v57 = sub_22B36050C();
    v58 = sub_22B360D1C();
    v59 = os_log_type_enabled(v57, v58);
    v91 = *(v0 + 392);
    v60 = *(v0 + 288);
    v61 = *(v0 + 296);
    v62 = *(v0 + 272);
    v63 = *(v0 + 280);
    v93 = v62;
    v95 = *(v0 + 400);
    v65 = *(v0 + 248);
    v64 = *(v0 + 256);
    v66 = *(v0 + 192);
    v67 = *(v0 + 152);
    if (v59)
    {
      v89 = *(v0 + 296);
      v68 = swift_slowAlloc();
      v88 = v63;
      v69 = swift_slowAlloc();
      v98 = v69;
      *v68 = 136315394;
      *(v68 + 4) = sub_22B1A7B20(0xD00000000000005CLL, 0x800000022B36DAF0, &v98);
      *(v68 + 12) = 2048;
      *(v68 + 14) = 323;
      _os_log_impl(&dword_22B116000, v57, v58, "[Dropbox] Task is cancelled at marker %s:%ld", v68, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x23188F650](v69, -1, -1);
      MEMORY[0x23188F650](v68, -1, -1);

      v91(v66, v67);
      (*(v64 + 8))(v93, v65);
      (*(v60 + 8))(v89, v88);
    }

    else
    {

      v91(v66, v67);
      (*(v64 + 8))(v93, v65);
      (*(v60 + 8))(v61, v63);
    }

LABEL_33:
    v44 = *(v0 + 296);
    v46 = *(v0 + 264);
    v45 = *(v0 + 272);
    v48 = *(v0 + 232);
    v47 = *(v0 + 240);
    v50 = *(v0 + 200);
    v49 = *(v0 + 208);
    v52 = *(v0 + 184);
    v51 = *(v0 + 192);
    v53 = *(v0 + 176);
    v94 = *(v0 + 168);

    v54 = *(v0 + 8);

    return v54(v97);
  }

  v71 = *(v0 + 312);
  v70 = *(v0 + 320);
  v72 = *(v0 + 616);
  v73 = *(v0 + 272);
  v74 = *(v0 + 232);
  v75 = *(v0 + 216);
  v76 = sub_22B36006C();
  v78 = v77;
  *(v0 + 496) = v76;
  *(v0 + 504) = v77;
  v71(v74, v72, v75);
  v79 = *(MEMORY[0x277D18240] + 4);
  v80 = swift_task_alloc();
  *(v0 + 512) = v80;
  *v80 = v0;
  v80[1] = sub_22B2B1924;
  v81 = *(v0 + 304);
  v82 = *(v0 + 264);
  v83 = *(v0 + 232);
  v84 = *(v0 + 80);
  v85 = *(v0 + 48);
  v86 = *(v0 + 56);
  v87 = *(v0 + 40);

  return MEMORY[0x282172608](v82, v87, v85, v86, v83, v76, v78, v84);
}