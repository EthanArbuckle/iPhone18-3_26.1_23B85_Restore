uint64_t sub_258EB4F38(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_258DE1DC4;

  return sub_258EB5738(a1, a2);
}

uint64_t sub_258EB4FE0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_258DEE37C;

  return sub_258EB6B24(a1, a2);
}

uint64_t sub_258EB5088(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

unint64_t sub_258EB5134(uint64_t a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 0:
      return result;
    case 10:
    case 14:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 13:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0xD000000000000021;
      break;
    case 16:
      result = 0xD00000000000002ELL;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 19:
    case 25:
      result = 0xD00000000000001CLL;
      break;
    case 20:
      result = 0xD00000000000001DLL;
      break;
    case 21:
      result = 0xD000000000000020;
      break;
    case 22:
      result = 0xD00000000000001ELL;
      break;
    case 23:
      result = 0xD000000000000023;
      break;
    case 24:
      result = 0xD000000000000027;
      break;
    case 26:
      result = 0xD000000000000019;
      break;
    case 28:
      result = 0xD000000000000022;
      break;
    case 32:
      result = 0xD000000000000034;
      break;
    default:
      sub_258F0AAE0();

      v3 = sub_258F0AD60();
      MEMORY[0x259C9DEB0](v3);

      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_258EB5420(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 11:
      return 0xD00000000000001DLL;
    case 10:
      return 0xD000000000000013;
  }

  sub_258F0AAE0();

  v2 = sub_258F0AD60();
  MEMORY[0x259C9DEB0](v2);

  return 0xD000000000000018;
}

uint64_t sub_258EB551C(uint64_t a1)
{
  if (a1 <= 10)
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 10)
    {
      return 0xD00000000000001CLL;
    }

    goto LABEL_13;
  }

  if (a1 != 11)
  {
    if (a1 == 12)
    {
      return 0xD000000000000024;
    }

    if (a1 == 13)
    {
      return 0xD00000000000001BLL;
    }

LABEL_13:
    sub_258F0AAE0();

    v2 = sub_258F0AD60();
    MEMORY[0x259C9DEB0](v2);

    return 0xD000000000000018;
  }

  return 0xD00000000000001CLL;
}

uint64_t sub_258EB5664(uint64_t a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 10)
  {
    return 0xD000000000000024;
  }

  sub_258F0AAE0();

  v2 = sub_258F0AD60();
  MEMORY[0x259C9DEB0](v2);

  return 0xD000000000000018;
}

uint64_t sub_258EB5738(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = sub_258F09F50();
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();
  v7 = sub_258F09F40();
  v3[29] = v7;
  v8 = *(v7 - 8);
  v3[30] = v8;
  v9 = *(v8 + 64) + 15;
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EB5858, 0, 0);
}

uint64_t sub_258EB5858()
{
  v52 = v0;
  *(v0 + 256) = sub_258EB5134([*(v0 + 184) whichEvent_Type]);
  *(v0 + 264) = v1;
  *(v0 + 168) = &type metadata for Features;
  v2 = sub_258E3FDD4();
  *(v0 + 144) = 0;
  *(v0 + 176) = v2;
  v3 = sub_258F09C30();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  if (v3)
  {
    v4 = [*(v0 + 184) wrapAsAnyEvent];
    *(v0 + 272) = v4;
    v5 = *(v0 + 192);
    if (v4)
    {
      v6 = v4;
      v7 = sub_258EB5134([*(v0 + 184) whichEvent_Type]);
      v9 = v8;
      v10 = v6;
      v11 = sub_258F0A350();
      v12 = sub_258F0A810();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v51[0] = v14;
        *v13 = 136315394;
        [v10 anyEventType];
        v15 = sub_258F0A880();
        v17 = sub_258DE3018(v15, v16, v51);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2080;
        v18 = sub_258DE3018(v7, v9, v51);

        *(v13 + 14) = v18;
        _os_log_impl(&dword_258DD8000, v11, v12, "FBF Shared reporter: store the event %s hosting %s and send to server", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v14, -1, -1);
        MEMORY[0x259C9EF40](v13, -1, -1);
      }

      else
      {
      }

      v36 = *(v0 + 192);
      v35 = *(v0 + 200);
      v37 = *(v35 + 32);
      v38 = *(v35 + 40);
      v39 = v10;
      v40 = sub_258F0A350();
      v41 = sub_258F0A810();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v51[0] = v43;
        *v42 = 136315138;
        [v39 anyEventType];
        v44 = sub_258F0A880();
        v46 = sub_258DE3018(v44, v45, v51);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_258DD8000, v40, v41, "FBF reporter: store the event %s and send to server", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x259C9EF40](v43, -1, -1);
        MEMORY[0x259C9EF40](v42, -1, -1);
      }

      v47 = *(*(v0 + 200) + 24);
      v48 = sub_258F0A4E0();
      *(v0 + 280) = v48;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_258EB5DF0;
      v49 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A450, &qword_258F148E8);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_258EB5088;
      *(v0 + 104) = &block_descriptor_6;
      *(v0 + 112) = v49;
      [v47 reportSiriInstrumentationEvent:v39 forBundleID:v48 completion:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    v21 = sub_258F0A350();
    v22 = sub_258F0A820();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_258DD8000, v21, v22, "Couldn't package event in AnyEvent wrapper.", v23, 2u);
      MEMORY[0x259C9EF40](v23, -1, -1);
    }

    v25 = *(v0 + 240);
    v24 = *(v0 + 248);
    v26 = *(v0 + 224);
    v27 = *(v0 + 232);
    v28 = *(v0 + 216);
    v50 = *(v0 + 208);
    v29 = *(v0 + 200);

    v30 = *(v29 + 48);
    sub_258F09FA0();

    (*(v25 + 104))(v24, *MEMORY[0x277D5D9B8], v27);
    (*(v28 + 104))(v26, *MEMORY[0x277D5D9F0], v50);
    sub_258F09F10();

    (*(v28 + 8))(v26, v50);
    (*(v25 + 8))(v24, v27);
  }

  else
  {
    v19 = *(v0 + 192);
    v20 = *(v0 + 200);
    sub_258EB7E80(*(v0 + 184));
  }

  v31 = *(v0 + 248);
  v32 = *(v0 + 224);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_258EB5DF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_258EB5FAC;
  }

  else
  {
    v3 = sub_258EB5F00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258EB5F00()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 192);

  sub_258EB842C(1, v2, v3);

  v5 = *(v0 + 248);
  v6 = *(v0 + 224);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_258EB5FAC()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[32];
  v5 = v0[30];
  v13 = v0[29];
  v14 = v0[31];
  v6 = v0[27];
  v16 = v0[28];
  v17 = v0[34];
  v7 = v0[25];
  v15 = v0[26];
  v8 = v0[24];
  swift_willThrow();

  sub_258EB842C(1, v4, v3);
  v9 = *(v7 + 48);
  sub_258F09F80();

  (*(v5 + 104))(v14, *MEMORY[0x277D5D9C0], v13);
  (*(v6 + 104))(v16, *MEMORY[0x277D5D9F0], v15);
  sub_258F09F10();

  (*(v6 + 8))(v16, v15);
  (*(v5 + 8))(v14, v13);
  sub_258DE403C();
  swift_allocError();
  *v10 = 16;
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_258EB6184(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = sub_258F09F50();
  v3[26] = v4;
  v5 = *(v4 - 8);
  v3[27] = v5;
  v6 = *(v5 + 64) + 15;
  v3[28] = swift_task_alloc();
  v7 = sub_258F09F40();
  v3[29] = v7;
  v8 = *(v7 - 8);
  v3[30] = v8;
  v9 = *(v8 + 64) + 15;
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EB62A4, 0, 0);
}

uint64_t sub_258EB62A4()
{
  v52 = v0;
  *(v0 + 256) = sub_258EB5420([*(v0 + 184) whichEvent_Type]);
  *(v0 + 264) = v1;
  *(v0 + 168) = &type metadata for Features;
  v2 = sub_258E3FDD4();
  *(v0 + 144) = 0;
  *(v0 + 176) = v2;
  v3 = sub_258F09C30();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  if (v3)
  {
    v4 = [*(v0 + 184) wrapAsAnyEvent];
    *(v0 + 272) = v4;
    v5 = *(v0 + 192);
    if (v4)
    {
      v6 = v4;
      v7 = sub_258EB5420([*(v0 + 184) whichEvent_Type]);
      v9 = v8;
      v10 = v6;
      v11 = sub_258F0A350();
      v12 = sub_258F0A810();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v51[0] = v14;
        *v13 = 136315394;
        [v10 anyEventType];
        v15 = sub_258F0A880();
        v17 = sub_258DE3018(v15, v16, v51);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2080;
        v18 = sub_258DE3018(v7, v9, v51);

        *(v13 + 14) = v18;
        _os_log_impl(&dword_258DD8000, v11, v12, "FBF Shared reporter: store the event %s hosting %s and send to server", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v14, -1, -1);
        MEMORY[0x259C9EF40](v13, -1, -1);
      }

      else
      {
      }

      v36 = *(v0 + 192);
      v35 = *(v0 + 200);
      v37 = *(v35 + 32);
      v38 = *(v35 + 40);
      v39 = v10;
      v40 = sub_258F0A350();
      v41 = sub_258F0A810();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v51[0] = v43;
        *v42 = 136315138;
        [v39 anyEventType];
        v44 = sub_258F0A880();
        v46 = sub_258DE3018(v44, v45, v51);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_258DD8000, v40, v41, "FBF reporter: store the event %s and send to server", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x259C9EF40](v43, -1, -1);
        MEMORY[0x259C9EF40](v42, -1, -1);
      }

      v47 = *(*(v0 + 200) + 24);
      v48 = sub_258F0A4E0();
      *(v0 + 280) = v48;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_258EB683C;
      v49 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A450, &qword_258F148E8);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_258EB5088;
      *(v0 + 104) = &block_descriptor_5;
      *(v0 + 112) = v49;
      [v47 reportSiriInstrumentationEvent:v39 forBundleID:v48 completion:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    v21 = sub_258F0A350();
    v22 = sub_258F0A820();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_258DD8000, v21, v22, "Couldn't package event in AnyEvent wrapper.", v23, 2u);
      MEMORY[0x259C9EF40](v23, -1, -1);
    }

    v25 = *(v0 + 240);
    v24 = *(v0 + 248);
    v26 = *(v0 + 224);
    v27 = *(v0 + 232);
    v28 = *(v0 + 216);
    v50 = *(v0 + 208);
    v29 = *(v0 + 200);

    v30 = *(v29 + 48);
    sub_258F09FB0();

    (*(v25 + 104))(v24, *MEMORY[0x277D5D9B8], v27);
    (*(v28 + 104))(v26, *MEMORY[0x277D5D9F0], v50);
    sub_258F09F10();

    (*(v28 + 8))(v26, v50);
    (*(v25 + 8))(v24, v27);
  }

  else
  {
    v19 = *(v0 + 192);
    v20 = *(v0 + 200);
    sub_258EB7E80(*(v0 + 184));
  }

  v31 = *(v0 + 248);
  v32 = *(v0 + 224);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_258EB683C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_258EB694C;
  }

  else
  {
    v3 = sub_258EB8D2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258EB694C()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[32];
  v5 = v0[30];
  v13 = v0[29];
  v14 = v0[31];
  v6 = v0[27];
  v16 = v0[28];
  v17 = v0[34];
  v7 = v0[25];
  v15 = v0[26];
  v8 = v0[24];
  swift_willThrow();

  sub_258EB842C(1, v4, v3);
  v9 = *(v7 + 48);
  sub_258F09F90();

  (*(v5 + 104))(v14, *MEMORY[0x277D5D9C0], v13);
  (*(v6 + 104))(v16, *MEMORY[0x277D5D9F0], v15);
  sub_258F09F10();

  (*(v6 + 8))(v16, v15);
  (*(v5 + 8))(v14, v13);
  sub_258DE403C();
  swift_allocError();
  *v10 = 16;
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_258EB6B24(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_258F09F50();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = sub_258F09F40();
  v3[24] = v7;
  v8 = *(v7 - 8);
  v3[25] = v8;
  v9 = *(v8 + 64) + 15;
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EB6C44, 0, 0);
}

uint64_t sub_258EB6C44()
{
  v49 = v0;
  v1 = *(v0 + 144);
  *(v0 + 216) = sub_258EB551C([v1 whichEvent_Type]);
  *(v0 + 224) = v2;
  v3 = [v1 wrapAsAnyEvent];
  *(v0 + 232) = v3;
  v4 = *(v0 + 152);
  if (v3)
  {
    v5 = v3;
    v6 = sub_258EB551C([*(v0 + 144) whichEvent_Type]);
    v8 = v7;
    v9 = v5;
    v10 = sub_258F0A350();
    v11 = sub_258F0A810();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48 = v13;
      *v12 = 136315394;
      [v9 anyEventType];
      v14 = sub_258F0A880();
      v16 = sub_258DE3018(v14, v15, &v48);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = sub_258DE3018(v6, v8, &v48);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_258DD8000, v10, v11, "FBF Shared reporter: store the event %s hosting %s and send to server", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }

    else
    {
    }

    v33 = *(v0 + 152);
    v32 = *(v0 + 160);
    v34 = *(v32 + 32);
    v35 = *(v32 + 40);
    v36 = v9;
    v37 = sub_258F0A350();
    v38 = sub_258F0A810();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48 = v40;
      *v39 = 136315138;
      [v36 anyEventType];
      v41 = sub_258F0A880();
      v43 = sub_258DE3018(v41, v42, &v48);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_258DD8000, v37, v38, "FBF reporter: store the event %s and send to server", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x259C9EF40](v40, -1, -1);
      MEMORY[0x259C9EF40](v39, -1, -1);
    }

    v44 = *(*(v0 + 160) + 24);
    v45 = sub_258F0A4E0();
    *(v0 + 240) = v45;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_258EB7194;
    v46 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A450, &qword_258F148E8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_258EB5088;
    *(v0 + 104) = &block_descriptor_8;
    *(v0 + 112) = v46;
    [v44 reportSiriInstrumentationEvent:v36 forBundleID:v45 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v18 = sub_258F0A350();
    v19 = sub_258F0A820();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_258DD8000, v18, v19, "Couldn't package event in AnyEvent wrapper.", v20, 2u);
      MEMORY[0x259C9EF40](v20, -1, -1);
    }

    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    v23 = *(v0 + 184);
    v24 = *(v0 + 192);
    v25 = *(v0 + 176);
    v47 = *(v0 + 168);
    v26 = *(v0 + 160);

    v27 = *(v26 + 48);
    sub_258F09FC0();

    (*(v22 + 104))(v21, *MEMORY[0x277D5D9B8], v24);
    (*(v25 + 104))(v23, *MEMORY[0x277D5D9F0], v47);
    sub_258F09F10();

    (*(v25 + 8))(v23, v47);
    (*(v22 + 8))(v21, v24);
    v28 = *(v0 + 208);
    v29 = *(v0 + 184);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_258EB7194()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_258EB72A4;
  }

  else
  {
    v3 = sub_258EB8D30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258EB72A4()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[27];
  v5 = v0[25];
  v13 = v0[24];
  v14 = v0[26];
  v6 = v0[22];
  v16 = v0[23];
  v17 = v0[29];
  v7 = v0[20];
  v15 = v0[21];
  v8 = v0[19];
  swift_willThrow();

  sub_258EB842C(1, v4, v3);
  v9 = *(v7 + 48);
  sub_258F09F70();

  (*(v5 + 104))(v14, *MEMORY[0x277D5D9C0], v13);
  (*(v6 + 104))(v16, *MEMORY[0x277D5D9F0], v15);
  sub_258F09F10();

  (*(v6 + 8))(v16, v15);
  (*(v5 + 8))(v14, v13);
  sub_258EB875C();
  swift_allocError();
  *v10 = 16;
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_258EB747C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_258F09F50();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = sub_258F09F40();
  v3[24] = v7;
  v8 = *(v7 - 8);
  v3[25] = v8;
  v9 = *(v8 + 64) + 15;
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EB759C, 0, 0);
}

uint64_t sub_258EB759C()
{
  v49 = v0;
  v1 = *(v0 + 144);
  *(v0 + 216) = sub_258EB5664([v1 whichEvent_Type]);
  *(v0 + 224) = v2;
  v3 = [v1 wrapAsAnyEvent];
  *(v0 + 232) = v3;
  v4 = *(v0 + 152);
  if (v3)
  {
    v5 = v3;
    v6 = sub_258EB5664([*(v0 + 144) whichEvent_Type]);
    v8 = v7;
    v9 = v5;
    v10 = sub_258F0A350();
    v11 = sub_258F0A810();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48 = v13;
      *v12 = 136315394;
      [v9 anyEventType];
      v14 = sub_258F0A880();
      v16 = sub_258DE3018(v14, v15, &v48);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = sub_258DE3018(v6, v8, &v48);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_258DD8000, v10, v11, "FBF Shared reporter: store the event %s hosting %s and send to server", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }

    else
    {
    }

    v33 = *(v0 + 152);
    v32 = *(v0 + 160);
    v34 = *(v32 + 32);
    v35 = *(v32 + 40);
    v36 = v9;
    v37 = sub_258F0A350();
    v38 = sub_258F0A810();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48 = v40;
      *v39 = 136315138;
      [v36 anyEventType];
      v41 = sub_258F0A880();
      v43 = sub_258DE3018(v41, v42, &v48);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_258DD8000, v37, v38, "FBF reporter: store the event %s and send to server", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x259C9EF40](v40, -1, -1);
      MEMORY[0x259C9EF40](v39, -1, -1);
    }

    v44 = *(*(v0 + 160) + 24);
    v45 = sub_258F0A4E0();
    *(v0 + 240) = v45;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_258EB7AEC;
    v46 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A450, &qword_258F148E8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_258EB5088;
    *(v0 + 104) = &block_descriptor_12;
    *(v0 + 112) = v46;
    [v44 reportSiriInstrumentationEvent:v36 forBundleID:v45 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v18 = sub_258F0A350();
    v19 = sub_258F0A820();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_258DD8000, v18, v19, "Couldn't package event in AnyEvent wrapper.", v20, 2u);
      MEMORY[0x259C9EF40](v20, -1, -1);
    }

    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    v23 = *(v0 + 184);
    v24 = *(v0 + 192);
    v25 = *(v0 + 176);
    v47 = *(v0 + 168);
    v26 = *(v0 + 160);

    v27 = *(v26 + 48);
    sub_258F09FC0();

    (*(v22 + 104))(v21, *MEMORY[0x277D5D9B8], v24);
    (*(v25 + 104))(v23, *MEMORY[0x277D5D9F0], v47);
    sub_258F09F10();

    (*(v25 + 8))(v23, v47);
    (*(v22 + 8))(v21, v24);
    v28 = *(v0 + 208);
    v29 = *(v0 + 184);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_258EB7AEC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_258EB7CA8;
  }

  else
  {
    v3 = sub_258EB7BFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258EB7BFC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 152);

  sub_258EB842C(1, v2, v3);

  v5 = *(v0 + 208);
  v6 = *(v0 + 184);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_258EB7CA8()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[27];
  v5 = v0[25];
  v13 = v0[24];
  v14 = v0[26];
  v6 = v0[22];
  v16 = v0[23];
  v17 = v0[29];
  v7 = v0[20];
  v15 = v0[21];
  v8 = v0[19];
  swift_willThrow();

  sub_258EB842C(1, v4, v3);
  v9 = *(v7 + 48);
  sub_258F09F60();

  (*(v5 + 104))(v14, *MEMORY[0x277D5D9C0], v13);
  (*(v6 + 104))(v16, *MEMORY[0x277D5D9F0], v15);
  sub_258F09F10();

  (*(v6 + 8))(v16, v15);
  (*(v5 + 8))(v14, v13);
  sub_258EB875C();
  swift_allocError();
  *v10 = 16;
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_258EB7E80(void *a1)
{
  v3 = v1;
  v5 = sub_258F09A70();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v38[-v13];
  sub_258F09A60();
  v15 = v6[2];
  v45 = v5;
  v15(v11, v14, v5);
  v16 = a1;
  v17 = sub_258F0A350();
  v18 = sub_258F0A810();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v43 = v3;
    v20 = v19;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = v42;
    *v20 = 136315394;
    v40 = v17;
    v21 = sub_258F09A40();
    v44 = v2;
    v23 = v22;
    v39 = v18;
    v24 = v6[1];
    v25 = v11;
    v26 = v45;
    v24(v25, v45);
    v27 = sub_258DE3018(v21, v23, &v46);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v16;
    v28 = v41;
    *v41 = v16;
    v29 = v16;
    v30 = v40;
    _os_log_impl(&dword_258DD8000, v40, v39, "SELF reporter: reported task with stats, isolatedStreamUUID = %s, message = %@", v20, 0x16u);
    sub_258EB8CAC(v28);
    MEMORY[0x259C9EF40](v28, -1, -1);
    v31 = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x259C9EF40](v31, -1, -1);
    v32 = v20;
    v3 = v43;
    MEMORY[0x259C9EF40](v32, -1, -1);
  }

  else
  {

    v24 = v6[1];
    v33 = v11;
    v26 = v45;
    v24(v33, v45);
  }

  v34 = v16;
  v35 = *(v3 + 16);
  v36 = sub_258F09A50();
  [v35 emitMessage:v34 isolatedStreamUUID:v36];

  return (v24)(v14, v26);
}

uint64_t SELFReportingService.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t SELFReportingService.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

void *_s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(id a1, unint64_t a2, unint64_t a3)
{
  sub_258F09F30();
  v6 = sub_258F09F20();
  v7 = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  v8 = type metadata accessor for CAAnalyticsEventSubmitter();
  v23[3] = v8;
  v23[4] = &off_286A2C648;
  v23[0] = swift_allocObject();
  type metadata accessor for SELFReportingService();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v8);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v10, v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v21 = v8;
  v22 = &off_286A2C648;
  *&v20 = v15;
  if (!a1)
  {
    v16 = [objc_opt_self() sharedAnalytics];
    a1 = [v16 defaultMessageStream];
  }

  v17 = 0x8000000258F1DCF0;
  v18 = 0xD000000000000027;
  if (a3)
  {
    v18 = a2;
    v17 = a3;
  }

  v9[4] = v18;
  v9[5] = v17;
  v9[6] = v6;
  v9[2] = a1;
  v9[3] = v7;
  sub_258DEE384(&v20, (v9 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return v9;
}

void sub_258EB842C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989530, &unk_258F0FA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258F0F8B0;
  *(inited + 32) = 0x73736563637553;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_258F0A730();
  *(inited + 56) = 0x707954746E657645;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_258F0A950();
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000258F1DA00;
  *(inited + 96) = sub_258F0A4E0();
  v6 = sub_258DFBE10(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989538, &unk_258F149F0);
  swift_arrayDestroy();

  v7 = sub_258F0A350();
  v8 = sub_258F0A810();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_258DE3018(a2, a3, aBlock);
    *(v9 + 12) = 2080;
    sub_258E2F4A4();
    v11 = sub_258F0A420();
    v13 = sub_258DE3018(v11, v12, aBlock);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_258DD8000, v7, v8, "CoreAnalytics of FBFWrite for %s: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v10, -1, -1);
    MEMORY[0x259C9EF40](v9, -1, -1);
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  v15 = sub_258F0A4E0();
  aBlock[4] = sub_258EB8C8C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258E2C248;
  aBlock[3] = &block_descriptor_28_0;
  v16 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v16);
}

unint64_t sub_258EB875C()
{
  result = qword_27F98A458;
  if (!qword_27F98A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A458);
  }

  return result;
}

uint64_t dispatch thunk of SELFReportingService.reportEvent(event:logger:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of SELFReportingService.reportODBATCHEvent(event:logger:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DEE37C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of SELFReportingService.reportODSampleEvent(event:logger:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DEE37C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of SELFReportingService.reportODFunnelEvent(event:logger:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DEE37C;

  return v10(a1, a2);
}

uint64_t block_copy_helper_26_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258EB8CAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C78, &qword_258F11A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriAttentionAndInvocationDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework38SiriAttentionAndInvocationDataProvider_logger;
  v7 = sub_258F0A370();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t SiriAttentionAndInvocationDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework38SiriAttentionAndInvocationDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258EB8E48()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework38SiriAttentionAndInvocationDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SpeakerIdSelectionDataDataRecord", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t SiriAttentionAndInvocationDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework38SiriAttentionAndInvocationDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriAttentionAndInvocationDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework38SiriAttentionAndInvocationDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EB9024()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EB8E28();
}

unint64_t sub_258EB90B4()
{
  result = qword_27F98A468;
  if (!qword_27F98A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A468);
  }

  return result;
}

uint64_t type metadata accessor for SiriAttentionAndInvocationDataProvider()
{
  result = qword_27F98A470;
  if (!qword_27F98A470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SiriAttentionAndInvocationDataProvider.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t SiriAttentionAndInvocationPluginError.hashValue.getter()
{
  sub_258F0AE40();
  MEMORY[0x259C9E710](0);
  return sub_258F0AE90();
}

unint64_t sub_258EB9334()
{
  result = qword_27F98A480;
  if (!qword_27F98A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A480);
  }

  return result;
}

uint64_t sub_258EB9398(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v110 = a5;
  v117 = a4;
  v109 = a3;
  v126 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v107 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v108 = &v97 - v13;
  v105 = sub_258F09B00();
  v104 = *(v105 - 1);
  v14 = *(v104 + 64);
  MEMORY[0x28223BE20](v105, v15);
  v102 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_258F09A20();
  v101 = *(v103 - 8);
  v17 = *(v101 + 64);
  MEMORY[0x28223BE20](v103, v18);
  v100 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_258F0A370();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v24 = MEMORY[0x28223BE20](v20, v23);
  v106 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v97 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v97 - v31;
  v33 = v21 + 2;
  v34 = v21[2];
  v111 = OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_logger;
  v34(v5 + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_logger, a2, v20);
  v34(v32, a2, v20);
  v35 = type metadata accessor for SiriAttentionAndInvocationDataProvider();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  v118 = v21;
  v39 = v21[4];
  v113 = v32;
  v39(v38 + OBJC_IVAR____TtC16MetricsFramework38SiriAttentionAndInvocationDataProvider_logger, v32, v20);
  v40 = OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_dataProvider;
  v119 = v5;
  *(v5 + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_dataProvider) = v38;
  v41 = sub_258F0A1F0();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v114 = v126;
  v44 = sub_258F0A1E0();
  v124 = v41;
  v125 = MEMORY[0x277D04548];
  v123[0] = v44;
  v126 = a2;
  v116 = v20;
  v112 = v33;
  v34(v29, a2, v20);
  v45 = sub_258F09C20();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = v115;
  v49 = sub_258F09BE0();
  if (v48)
  {
    v50 = v118[1];
    v51 = v116;
    v50(v126, v116);

    v52 = v119;
    v50((v119 + v111), v51);
    v53 = *(v52 + v40);

    type metadata accessor for SiriAttentionAndInvocationPlugin();
    v54 = *(*v52 + 48);
    v55 = *(*v52 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v56 = v49;
    v57 = v100;
    sub_258F0A090();
    v58 = v102;
    sub_258F09AE0();
    v99 = v56;
    sub_258F09C10();
    (*(v104 + 8))(v58, v105);
    (*(v101 + 8))(v57, v103);
    v59 = v113;
    v60 = v116;
    v34(v113, v126, v116);
    v98 = v34;
    v115 = v114;

    v61 = v108;
    sub_258EB9CB0(v108);
    v62 = v106;
    v34(v106, v59, v60);
    v63 = v61;
    v64 = v61;
    v65 = v107;
    sub_258DECF90(v63, v107);
    type metadata accessor for BiomeResultsWrapperFactory();
    v111 = swift_allocObject();
    v66 = type metadata accessor for CAAnalyticsEventSubmitter();
    v114 = 0;
    v67 = v66;
    v68 = swift_allocObject();
    v124 = v67;
    v125 = &off_286A2C648;
    v123[0] = v68;
    v69 = type metadata accessor for SiriAttentionAndInvocationSamplingCalculator();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    v72 = swift_allocObject();
    v73 = __swift_mutable_project_boxed_opaque_existential_1(v123, v67);
    v105 = &v97;
    v74 = *(*(v67 - 8) + 64);
    MEMORY[0x28223BE20](v73, v73);
    v76 = (&v97 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v77 + 16))(v76);
    v78 = *v76;
    v121 = v67;
    v122 = &off_286A2C648;
    *&v120 = v78;
    sub_258F09AE0();
    v79 = v98;
    v98(v72 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_logger, v62, v60);
    sub_258DECF90(v65, v72 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_sqlFileURL);
    v80 = (v72 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_bookmarkService);
    v80[3] = v45;
    v80[4] = &off_286A2FA30;
    *v80 = v99;
    sub_258DED000(v65);
    v81 = v118[1];
    v81(v62, v60);
    sub_258DED000(v64);
    v82 = v113;
    v81(v113, v60);
    *(v72 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_biomeResultsFactory) = v111;
    sub_258DEE384(&v120, v72 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_analyticsEventSubmitter);
    v83 = (v72 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_fbfBundleId);
    v84 = v117;
    *v83 = v109;
    v83[1] = v84;
    *(v72 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_isMeDevice) = v110 & 1;
    *(v72 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_defaults) = v115;
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    v52 = v119;
    *(v119 + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_calculator) = v72;
    v85 = v126;
    v79(v82, v126, v60);
    v86 = v79;
    v87 = type metadata accessor for SiriAttentionAndInvocationReporter();
    v88 = *(v87 + 48);
    v89 = *(v87 + 52);
    v90 = swift_allocObject();
    v86(v90 + OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger, v82, v60);
    v91 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, 0, 0);
    v81(v82, v60);
    *(v90 + OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_reportingService) = v91;
    v123[0] = v90;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A4D0, &qword_258F14D48);
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    swift_allocObject();
    v95 = sub_258F09BC0();

    v81(v85, v60);
    *(v52 + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_reporter) = v95;
  }

  return v52;
}

uint64_t sub_258EB9CB0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SiriAttentionAndInvocationSamplingCalculator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_258EB9DE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EB9E08, 0, 0);
}

uint64_t sub_258EB9E08()
{
  v1 = v0[3] + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A840();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SiriAttentionAndInvocationPlugin: calculator do work", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = *(v5 + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_calculator);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_258DED984;
  v8 = v0[2];

  return sub_258EBB8F4(v8);
}

uint64_t sub_258EB9F30(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 33) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EB9F60, 0, 0);
}

uint64_t sub_258EB9F60()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);

  v4 = sub_258F0A350();
  v5 = sub_258F0A840();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 33);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v6;

    _os_log_impl(&dword_258DD8000, v4, v5, "#SiriAttentionAndInvocationPlugin: reporter report with result as: %{BOOL}d", v9, 8u);
    MEMORY[0x259C9EF40](v9, -1, -1);
  }

  else
  {
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
  }

  if (*(v0 + 33) == 1)
  {
    v12 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_reporter);
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = 1;
    v13 = *(MEMORY[0x277D04448] + 4);
    v20 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_258EBA1F0;

    return v20(v0 + 16);
  }

  else
  {
    v16 = sub_258F0A350();
    v17 = sub_258F0A820();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_258DD8000, v16, v17, "#SiriAttentionAndInvocationPlugin: worker results it not successful", v18, 2u);
      MEMORY[0x259C9EF40](v18, -1, -1);
    }

    sub_258EBA78C();
    swift_allocError();
    swift_willThrow();
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_258EBA1F0()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258EBA324, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_258EBA33C()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_dataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_reporter);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_calculator);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriAttentionAndInvocationPlugin()
{
  result = qword_280CC4AE8;
  if (!qword_280CC4AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_258EBA45C()
{
  result = qword_27F98A4A8;
  if (!qword_27F98A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A4A8);
  }

  return result;
}

uint64_t sub_258EBA4B0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EBA4D4, 0, 0);
}

uint64_t sub_258EBA4D4()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework32SiriAttentionAndInvocationPlugin_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258EB8E28();
}

uint64_t sub_258EBA578(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258EB9DE8(a1);
}

uint64_t sub_258EBA614(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DEE37C;

  return sub_258EB9F30(a1);
}

uint64_t sub_258EBA748(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriAttentionAndInvocationPlugin();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258EBA78C()
{
  result = qword_27F98A4C8;
  if (!qword_27F98A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A4C8);
  }

  return result;
}

uint64_t SiriAttentionAndInvocationReporter.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger;
  v7 = sub_258F0A370();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5 + v6, a1, v7);
  v9 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, 0, 0);
  (*(v8 + 8))(a1, v7);
  *(v5 + OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_reportingService) = v9;
  return v5;
}

uint64_t SiriAttentionAndInvocationReporter.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger;
  v4 = sub_258F0A370();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1 + v3, a1, v4);
  v6 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, 0, 0);
  (*(v5 + 8))(a1, v4);
  *(v1 + OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_reportingService) = v6;
  return v1;
}

uint64_t sub_258EBA9A4(uint64_t a1)
{
  v2[2] = v1;
  if (*(a1 + 16) == 1)
  {
    v3 = swift_task_alloc();
    v2[3] = v3;
    *v3 = v2;
    v3[1] = sub_258EBAA90;

    return sub_258E6422C(6, 1);
  }

  else
  {
    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_258EBAA90(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_258EBAB90, 0, 0);
}

uint64_t sub_258EBAB90()
{
  v1 = v0[4];
  v2 = v0[2];
  if (v1)
  {
    v3 = *(v2 + OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_reportingService);
    v4 = OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger;
    v0[5] = OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger;
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = sub_258EBAD00;

    return sub_258EB5738(v1, v2 + v4);
  }

  else
  {
    v7 = sub_258F0A350();
    v8 = sub_258F0A820();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_258DD8000, v7, v8, "Unable to create exection metadata event", v9, 2u);
      MEMORY[0x259C9EF40](v9, -1, -1);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_258EBAD00()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_258EBAE78;
  }

  else
  {
    v3 = sub_258EBAE14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258EBAE14()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258EBAE78()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  v3 = sub_258F0A350();
  v4 = sub_258F0A820();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "Unable to report execution Event", v7, 2u);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t SiriAttentionAndInvocationReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_reportingService);

  return v0;
}

uint64_t SiriAttentionAndInvocationReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework34SiriAttentionAndInvocationReporter_reportingService);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EBB080(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258EBA9A4(a1);
}

uint64_t type metadata accessor for SiriAttentionAndInvocationReporter()
{
  result = qword_27F98A4E8;
  if (!qword_27F98A4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EBB16C()
{
  result = sub_258F0A370();
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

uint64_t dispatch thunk of SiriAttentionAndInvocationReporter.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t SiriAttentionAndInvocationBookMarkResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SiriAttentionAndInvocationBookMarkResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

unint64_t sub_258EBB400()
{
  result = qword_27F98A4F8;
  if (!qword_27F98A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A4F8);
  }

  return result;
}

uint64_t SiriAttentionAndInvocationSamplingCalculator.__allocating_init(logger:sqlFileURL:bookmarkService:fbfBundleId:isMeDevice:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v47 = a7;
  v46 = a6;
  v44 = a4;
  v45 = a5;
  v42 = a1;
  v43 = a3;
  v40 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v39 - v12;
  v14 = sub_258F0A370();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v15[2];
  v20(v19, a1, v14);
  sub_258DECF90(a2, v13);
  type metadata accessor for BiomeResultsWrapperFactory();
  v41 = swift_allocObject();
  v21 = type metadata accessor for CAAnalyticsEventSubmitter();
  v22 = swift_allocObject();
  v48[3] = v21;
  v48[4] = &off_286A2C648;
  v48[0] = v22;
  v23 = type metadata accessor for SiriAttentionAndInvocationSamplingCalculator();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v48, v21);
  v28 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v27, v27);
  v30 = (&v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  v33 = (v26 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_analyticsEventSubmitter);
  v33[3] = v21;
  v33[4] = &off_286A2C648;
  *v33 = v32;
  sub_258F09AE0();
  v20((v26 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_logger), v19, v14);
  sub_258DECF90(v13, v26 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_sqlFileURL);
  v34 = (v26 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_bookmarkService);
  v34[3] = sub_258F09C20();
  v34[4] = &off_286A2FA30;
  *v34 = v43;
  sub_258DE2184(v40, &qword_27F988720, &qword_258F0B830);
  v35 = v15[1];
  v35(v42, v14);
  sub_258DE2184(v13, &qword_27F988720, &qword_258F0B830);
  v35(v19, v14);
  *(v26 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_biomeResultsFactory) = v41;
  v36 = (v26 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_fbfBundleId);
  v37 = v45;
  *v36 = v44;
  v36[1] = v37;
  *(v26 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_isMeDevice) = v46;
  *(v26 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_defaults) = v47;
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  return v26;
}

uint64_t type metadata accessor for SiriAttentionAndInvocationSamplingCalculator()
{
  result = qword_27F98A518;
  if (!qword_27F98A518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriAttentionAndInvocationResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SiriAttentionAndInvocationResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_258EBB8F4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_258F09A20();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EBB9B4, 0, 0);
}

uint64_t sub_258EBB9B4()
{
  v82 = v0;
  v1 = v0[6];
  v0[10] = OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "SiriAttentionAndInvocationSamplingCalculator invoked: SiriAttentionAndInvocationSamplingCalculator", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];

  sub_258F09BB0();
  v0[11] = sub_258F09B70();
  (*(v6 + 8))(v5, v8);
  sub_258DE0338();
  v9 = v0[6];
  v10 = sub_258DE0624();
  v0[12] = v10;
  v11 = v10;
  v78 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  v12 = *(sub_258F0A190() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_258F0B820;
  v15 = sub_258F0A1B0();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  sub_258F0A160();
  v19 = *(v78 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_defaults);
  v20 = v11;
  v21 = sub_258F0A4E0();
  v77 = v19;
  LODWORD(v19) = [v19 BOOLForKey_];

  v22 = sub_258F0A350();
  v23 = sub_258F0A810();
  v24 = os_log_type_enabled(v22, v23);
  if (v19)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v81[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_258DE3018(0xD000000000000022, 0x8000000258F1A7A0, v81);
      _os_log_impl(&dword_258DD8000, v22, v23, "%s: Include current date data for aggregation.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x259C9EF40](v26, -1, -1);
      MEMORY[0x259C9EF40](v25, -1, -1);
    }
  }

  else
  {
    if (v24)
    {
      v27 = swift_slowAlloc();
      v28 = v20;
      v29 = swift_slowAlloc();
      v81[0] = v29;
      *v27 = 136315138;
      *(v27 + 4) = sub_258DE3018(0xD000000000000022, 0x8000000258F1A7A0, v81);
      _os_log_impl(&dword_258DD8000, v22, v23, "%s: current date data NOT included for aggregation.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v30 = v29;
      v20 = v28;
      MEMORY[0x259C9EF40](v30, -1, -1);
      MEMORY[0x259C9EF40](v27, -1, -1);
    }

    v31 = v20;
  }

  v32 = v0[6];
  sub_258F0A050();

  v33 = sub_258F0A010();
  v34 = sub_258F0A040();

  type metadata accessor for BiomeResultsWrapper();
  inited = swift_initStackObject();
  v0[13] = inited;
  *(inited + 16) = v34;

  v36 = sub_258EBC758();
  v0[14] = v36;

  v37 = sub_258F0A350();
  v38 = sub_258F0A810();

  v80 = v36;
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v81[0] = v40;
    *v39 = 136315138;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988898, &qword_258F14EF0);
    v42 = MEMORY[0x259C9DF80](v36, v41);
    v44 = sub_258DE3018(v42, v43, v81);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_258DD8000, v37, v38, "requestRecords: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x259C9EF40](v40, -1, -1);
    MEMORY[0x259C9EF40](v39, -1, -1);
  }

  v45 = v0[6];
  sub_258DFCFF8(inited, 0);
  v47 = objc_opt_self();
  v48 = sub_258F0A4E0();
  v49 = [v47 getSiriLanguageWithFallback_];

  if (v49)
  {
    v50 = v0[6];
    v51 = sub_258F0A4F0();
    v53 = v52;

    v54 = sub_258F0A350();
    v55 = sub_258F0A810();

    v56 = os_log_type_enabled(v54, v55);
    v57 = v0[6];
    if (v56)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v81[0] = v59;
      *v58 = 67109378;
      *(v58 + 4) = *(v57 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_isMeDevice);

      *(v58 + 8) = 2080;
      *(v58 + 10) = sub_258DE3018(v51, v53, v81);
      _os_log_impl(&dword_258DD8000, v54, v55, "#SiriAttentionAndInvocationSamplingCalculator: starting CoreSpeechDataAnalytics controller running with isMedevice: %{BOOL}d, locale: %s", v58, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x259C9EF40](v59, -1, -1);
      MEMORY[0x259C9EF40](v58, -1, -1);
    }

    else
    {
      v67 = v0[6];
    }

    v68 = v0[6];
    sub_258F09FE0();
    v69 = *(v68 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_fbfBundleId);
    v70 = *(v68 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_fbfBundleId + 8);
    v71 = *(v68 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_isMeDevice);
    v72 = v77;

    v0[15] = sub_258F09FD0();
    v73 = sub_258F0A4E0();
    v74 = [v72 BOOLForKey_];

    v75 = *(MEMORY[0x277D01510] + 4);
    v79 = (*MEMORY[0x277D01510] + MEMORY[0x277D01510]);
    v76 = swift_task_alloc();
    v0[16] = v76;
    *v76 = v0;
    v76[1] = sub_258EBC338;

    return v79(v80, v74);
  }

  else
  {

    v60 = sub_258F0A350();
    v61 = sub_258F0A820();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_258DD8000, v60, v61, "#SiriAttentionAndInvocationSamplingCalculator: cannot get locale", v62, 2u);
      MEMORY[0x259C9EF40](v62, -1, -1);
    }

    v63 = v0[9];
    v64 = v0[5];
    v65 = MEMORY[0x277D84F90];
    *v64 = v0[11];
    *(v64 + 8) = v65;
    *(v64 + 16) = 0;

    v66 = v0[1];

    return v66();
  }
}

uint64_t sub_258EBC338()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  v2[17] = v0;

  v5 = v2[14];
  if (v0)
  {
    v6 = v2[11];

    v7 = sub_258EBC59C;
  }

  else
  {

    v7 = sub_258EBC480;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_258EBC480()
{
  v1 = v0[6] + v0[10];
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SiriAttentionAndInvocationSamplingCalculator: finished CoreSpeechDataAnalytics controller running", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[15];
  v7 = v0[12];
  v6 = v0[13];

  sub_258F0A0F0();

  v8 = v0[9];
  v9 = v0[5];
  v10 = MEMORY[0x277D84F90];
  *v9 = v0[11];
  *(v9 + 8) = v10;
  *(v9 + 16) = 1;

  v11 = v0[1];

  return v11();
}

uint64_t sub_258EBC59C()
{
  v19 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  sub_258EBC89C(*(v0 + 136), v18);
  v3 = v18[0];
  v4 = sub_258F0A350();
  v5 = sub_258F0A820();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    sub_258EBDBE4();
    swift_allocError();
    *v8 = v3;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_258DD8000, v4, v5, "#SiriAttentionAndInvocationSamplingCalcultor: error processing CoreSpeechDataAnalytics controller: %@", v6, 0xCu);
    sub_258DE2184(v7, &qword_27F988C78, &qword_258F11A20);
    MEMORY[0x259C9EF40](v7, -1, -1);
    MEMORY[0x259C9EF40](v6, -1, -1);
  }

  v10 = *(v0 + 136);
  v11 = *(v0 + 120);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);

  sub_258EBDBE4();
  swift_allocError();
  *v14 = v3;
  swift_willThrow();

  v15 = *(v0 + 72);

  v16 = *(v0 + 8);

  return v16();
}

void *sub_258EBC758()
{
  v0 = sub_258F0A350();
  v1 = sub_258F0A810();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_258DD8000, v0, v1, "#SiriAttentionAndInvocationSamplingCalculator: _convertBiomeSQLResultsToRows", v2, 2u);
    MEMORY[0x259C9EF40](v2, -1, -1);
  }

  v3 = sub_258F0A070();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    do
    {
      v6 = sub_258F0A060();
      if (v6)
      {
        v7 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_258DE2C0C(0, v4[2] + 1, 1, v4);
        }

        v9 = v4[2];
        v8 = v4[3];
        if (v9 >= v8 >> 1)
        {
          v4 = sub_258DE2C0C((v8 > 1), v9 + 1, 1, v4);
        }

        v4[2] = v9 + 1;
        v4[v9 + 4] = v7;
      }
    }

    while ((sub_258F0A070() & 1) != 0);
  }

  return v4;
}

void sub_258EBC89C(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_258F09FF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v63 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A528, &unk_258F150F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v62 - v11;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  v14 = swift_dynamicCast();
  v15 = *(v5 + 56);
  if (v14)
  {
    v15(v12, 0, 1, v4);
    (*(v5 + 32))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v4);
    v16 = sub_258F0A350();
    v17 = sub_258F0A810();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_258DD8000, v16, v17, "#SiriAttentionAndInvocationSamplingCalculator: error can be converted to DataAnalyticsError", v18, 2u);
      MEMORY[0x259C9EF40](v18, -1, -1);
    }

    MEMORY[0x28223BE20](v19, v20);
    (*(v5 + 16))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v21 = (*(v5 + 88))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    if (MEMORY[0x277D01570] && v21 == *MEMORY[0x277D01570] || MEMORY[0x277D01578] && v21 == *MEMORY[0x277D01578])
    {
      (*(v5 + 96))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      sub_258EBD244(*(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0)), *(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8), a2);

      (*(v5 + 8))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      return;
    }

    if (MEMORY[0x277D01568] && v21 == *MEMORY[0x277D01568])
    {
      (*(v5 + 8))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v39 = 1;
LABEL_63:
      *a2 = v39;
      return;
    }

    if (MEMORY[0x277D01530] && v21 == *MEMORY[0x277D01530])
    {
      (*(v5 + 8))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v39 = 2;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01520] && v21 == *MEMORY[0x277D01520])
    {
      (*(v5 + 8))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v39 = 3;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01518] && v21 == *MEMORY[0x277D01518])
    {
      (*(v5 + 8))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v39 = 4;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01558] && v21 == *MEMORY[0x277D01558])
    {
      (*(v5 + 8))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v39 = 5;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01540] && v21 == *MEMORY[0x277D01540])
    {
      (*(v5 + 8))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v39 = 6;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01538] && v21 == *MEMORY[0x277D01538])
    {
      (*(v5 + 8))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v39 = 7;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01550] && v21 == *MEMORY[0x277D01550])
    {
      (*(v5 + 8))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v39 = 8;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01528] && v21 == *MEMORY[0x277D01528])
    {
      (*(v5 + 8))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v39 = 9;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01548] && v21 == *MEMORY[0x277D01548])
    {
      (*(v5 + 8))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v39 = 10;
      goto LABEL_63;
    }

    if (MEMORY[0x277D01560] && v21 == *MEMORY[0x277D01560])
    {
      (*(v5 + 8))(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      v39 = 11;
      goto LABEL_63;
    }

    v61 = *(v5 + 8);
    v61(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *a2 = 17;
    v61(&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  }

  else
  {
    v15(v12, 1, 1, v4);
    sub_258DE2184(v12, &qword_27F98A528, &unk_258F150F0);
    v22 = sub_258F09880();
    v23 = sub_258F0A350();
    v24 = sub_258F0A810();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v63 = v26;
      *v25 = 136315394;
      v27 = [v22 domain];
      v28 = sub_258F0A4F0();
      v30 = v29;

      v31 = sub_258DE3018(v28, v30, &v63);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2048;
      v32 = [v22 code];

      *(v25 + 14) = v32;
      _os_log_impl(&dword_258DD8000, v23, v24, "#SiriAttentionAndInvocationSamplingCalculator: error domain: %s, code: %ld", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x259C9EF40](v26, -1, -1);
      MEMORY[0x259C9EF40](v25, -1, -1);
    }

    else
    {
    }

    v33 = [v22 domain];
    v34 = sub_258F0A4F0();
    v36 = v35;

    if (v34 == 0xD00000000000001CLL && 0x8000000258F1DEA0 == v36)
    {

      v37 = 14;
    }

    else
    {
      v38 = sub_258F0AD80();

      if (v38)
      {

        v37 = 14;
      }

      else
      {
        v40 = [v22 domain];
        v41 = sub_258F0A4F0();
        v43 = v42;

        v44 = *MEMORY[0x277D552E0];
        if (v41 == sub_258F0A4F0() && v43 == v45)
        {

          v37 = 15;
        }

        else
        {
          v46 = sub_258F0AD80();

          if (v46)
          {

            v37 = 15;
          }

          else
          {
            v47 = [v22 domain];
            v48 = sub_258F0A4F0();
            v50 = v49;

            v51 = *MEMORY[0x277D084B0];
            if (v48 == sub_258F0A4F0() && v50 == v52)
            {

              v37 = 13;
            }

            else
            {
              v53 = sub_258F0AD80();

              if (v53)
              {

                v37 = 13;
              }

              else
              {
                v54 = [v22 domain];
                v55 = sub_258F0A4F0();
                v57 = v56;

                v58 = *MEMORY[0x277CCA050];
                if (v55 == sub_258F0A4F0() && v57 == v59)
                {

                  v37 = 16;
                }

                else
                {
                  v60 = sub_258F0AD80();

                  if (v60)
                  {
                    v37 = 16;
                  }

                  else
                  {
                    v37 = 17;
                  }
                }
              }
            }
          }
        }
      }
    }

    *a2 = v37;
  }
}

void sub_258EBD244(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = 0;
  while (1)
  {
    v6 = byte_286A29678[v5++ + 32];
    v19 = a1;
    v20 = a2;
    sub_258DEF388();
    v7 = sub_258F0A9A0();

    if (v7)
    {
      break;
    }

    if (v5 == 18)
    {
      v19 = a1;
      v20 = a2;
      if (sub_258F0A9A0())
      {
        v6 = 14;
      }

      else
      {
        v19 = a1;
        v20 = a2;
        v8 = *MEMORY[0x277D552E0];
        sub_258F0A4F0();
        v9 = sub_258F0A9A0();

        if (v9)
        {
          v6 = 15;
        }

        else
        {
          v19 = a1;
          v20 = a2;
          v10 = *MEMORY[0x277D084B0];
          sub_258F0A4F0();
          v11 = sub_258F0A9A0();

          if (v11)
          {
            v6 = 13;
          }

          else
          {
            v19 = a1;
            v20 = a2;
            v12 = *MEMORY[0x277CCA050];
            sub_258F0A4F0();
            v13 = sub_258F0A9A0();

            if (v13)
            {
              v6 = 16;
            }

            else
            {

              v14 = sub_258F0A350();
              v15 = sub_258F0A810();

              if (os_log_type_enabled(v14, v15))
              {
                v16 = swift_slowAlloc();
                v17 = swift_slowAlloc();
                v19 = v17;
                *v16 = 136315138;
                *(v16 + 4) = sub_258DE3018(a1, a2, &v19);
                _os_log_impl(&dword_258DD8000, v14, v15, "#SiriAttentionAndInvocationSamplingCalculator: Cannot decode the error message: %s", v16, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v17);
                MEMORY[0x259C9EF40](v17, -1, -1);
                MEMORY[0x259C9EF40](v16, -1, -1);
              }

              v6 = 17;
            }
          }
        }
      }

      break;
    }
  }

  *a3 = v6;
}

uint64_t SiriAttentionAndInvocationSamplingCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_calendar;
  v2 = sub_258F09B00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_bookmarkService));
  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_biomeResultsFactory);

  v6 = *(v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_fbfBundleId + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_analyticsEventSubmitter));
  return v0;
}

uint64_t SiriAttentionAndInvocationSamplingCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_calendar;
  v2 = sub_258F09B00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_bookmarkService));
  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_biomeResultsFactory);

  v6 = *(v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_fbfBundleId + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework44SiriAttentionAndInvocationSamplingCalculator_analyticsEventSubmitter));
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EBDAC4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258EBB8F4(a1);
}

uint64_t sub_258EBDBB4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_258EBDBE4()
{
  result = qword_27F98A500;
  if (!qword_27F98A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A500);
  }

  return result;
}

uint64_t sub_258EBDC38(uint64_t a1)
{
  result = sub_258EBDCC0(&qword_27F98A508);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EBDC7C(uint64_t a1)
{
  result = sub_258EBDCC0(&qword_27F98A510);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EBDCC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriAttentionAndInvocationSamplingCalculator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_258EBDD18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_258EBDD60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_258EBDDB8()
{
  v0 = sub_258F09B00();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_258F0A370();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_258DE3B74();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of SiriAttentionAndInvocationSamplingCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

unint64_t SAIWorkerError.rawValue.getter()
{
  result = 0x6E756F6363416D62;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0x6C70556F69647561;
      break;
    case 0xD:
      result = 0x726F706552666266;
      break;
    case 0xE:
      result = 0xD000000000000022;
      break;
    case 0xF:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0x727245616F636F43;
      break;
    case 0x11:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

MetricsFramework::SAIWorkerError_optional __swiftcall SAIWorkerError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0AD90();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_258EBE2A0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SAIWorkerError.rawValue.getter();
  v4 = v3;
  if (v2 == SAIWorkerError.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_258F0AD80();
  }

  return v7 & 1;
}

uint64_t sub_258EBE33C()
{
  v1 = *v0;
  sub_258F0AE40();
  SAIWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258EBE3A4()
{
  v2 = *v0;
  SAIWorkerError.rawValue.getter();
  sub_258F0A5B0();
}

uint64_t sub_258EBE408()
{
  v1 = *v0;
  sub_258F0AE40();
  SAIWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258EBE478@<X0>(unint64_t *a1@<X8>)
{
  result = SAIWorkerError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SiriAttentionAndInvocationWorker.init(logger:isMeDevice:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_258F09AE0();
  v6 = type metadata accessor for SiriAttentionAndInvocationWorker();
  v7 = *(v6 + 20);
  v8 = sub_258F0A370();
  result = (*(*(v8 - 8) + 32))(a3 + v7, a1, v8);
  *(a3 + *(v6 + 24)) = a2;
  return result;
}

uint64_t type metadata accessor for SiriAttentionAndInvocationWorker()
{
  result = qword_280CC4AD8;
  if (!qword_280CC4AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriAttentionAndInvocationWorker.doWork(executor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_258EBE5E8, 0, 0);
}

uint64_t sub_258EBE5E8()
{
  v66 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for SiriAttentionAndInvocationWorker();
  v4 = *(v3 + 20);
  v5 = v1;
  v64 = v4;
  v6 = sub_258F0A350();
  v7 = sub_258F0A800();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v65[0] = v10;
    *v9 = 136315394;
    v11 = sub_258F09E80();
    v13 = sub_258DE3018(v11, v12, v65);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = sub_258F09E90();
    v16 = sub_258DE3018(v14, v15, v65);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_258DD8000, v6, v7, "TaskId: %s, TaskName: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v10, -1, -1);
    MEMORY[0x259C9EF40](v9, -1, -1);
  }

  v17 = *(v0 + 32);
  v18 = *(v0 + 40);
  v19 = *(v0 + 16);
  *v19 = 0;
  v20 = *MEMORY[0x277D81760];
  *(v0 + 144) = v20;
  v21 = sub_258F09E50();
  *(v0 + 48) = v21;
  v22 = *(v21 - 8);
  *(v0 + 56) = v22;
  v23 = *(v22 + 104);
  *(v0 + 64) = v23;
  *(v0 + 72) = (v22 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v23(v19, v20, v21);
  v24 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v25 = sub_258F0A4E0();
  v26 = [v24 initWithSuiteName_];
  *(v0 + 80) = v26;

  v27 = sub_258F09E80();
  v29 = v28;
  v30 = sub_258F09E90();
  sub_258EBEF14(v27, v29, v30, v31);

  v39 = sub_258DFBE24(&unk_286A298A8);
  sub_258DE2184(&unk_286A298C8, &qword_27F988B08, &unk_258F0CD90);
  if (v26)
  {
    v40 = *(v0 + 32);
    v61 = *(v0 + 40);
    v63 = v2;
    v41 = *(v0 + 24);
    sub_258F09E80();
    v42 = objc_allocWithZone(sub_258F09EA0());
    v43 = sub_258F09E70();
    *(v0 + 88) = v43;
    v44 = sub_258F09E00();
    *(v0 + 96) = v44;
    v45 = *(v44 - 8);
    *(v0 + 104) = v45;
    v46 = *(v45 + 64) + 15;
    v47 = swift_task_alloc();
    *(v0 + 112) = v47;
    v48 = v43;
    sub_258DFA2E0(v39);

    sub_258F09DF0();
    v49 = *(v22 + 64) + 15;
    v50 = swift_task_alloc();
    *(v0 + 120) = v50;
    v51 = *(v61 + *(v3 + 24));
    v62 = (*(*v41 + 88) + **(*v41 + 88));
    v52 = *(*(*v41 + 88) + 4);
    v53 = swift_task_alloc();
    *(v0 + 128) = v53;
    *v53 = v0;
    v53[1] = sub_258EBEC0C;
    v54 = *(v0 + 24);

    return v62(v50, v26, v47, v63 + v64, 0xD00000000000003ALL, 0x8000000258F1DF50, v51);
  }

  else
  {

    v55 = sub_258F0A350();
    v56 = sub_258F0A820();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_258DD8000, v55, v56, "Can't get user defaults initialized", v57, 2u);
      MEMORY[0x259C9EF40](v57, -1, -1);
    }

    sub_258EBDBE4();
    v58 = swift_allocError();
    *v59 = 0;
    swift_willThrow();
    v60 = v58;
    v33 = *(v0 + 64);
    v32 = *(v0 + 72);
    v34 = *(v0 + 48);
    v35 = *(v0 + 144);
    v36 = *(v0 + 16);
    (*(*(v0 + 56) + 8))(v36, v34);
    *v36 = v60;
    v33(v36, v35, v34);
    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_258EBEC0C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_258EBEE2C;
  }

  else
  {
    v3 = sub_258EBED20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258EBED20()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v12 = v0[12];
  v4 = v0[10];
  v5 = v0[11];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  v9 = v0[2];
  (*(v6 + 8))(v9, v7);
  (*(v6 + 32))(v9, v2, v7);

  sub_258EBF0E8(v9, v4);

  (*(v3 + 8))(v1, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_258EBEE2C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);

  (*(v4 + 8))(v1, v3);

  v6 = *(v0 + 136);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v10 = *(v0 + 144);
  v11 = *(v0 + 16);
  (*(*(v0 + 56) + 8))(v11, v9);
  *v11 = v6;
  v8(v11, v10, v9);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_258EBEF14(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    v9 = *(type metadata accessor for SiriAttentionAndInvocationWorker() + 20);

    v10 = sub_258F0A350();
    v11 = sub_258F0A800();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_258DE3018(a1, a2, &v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_258DE3018(a3, a4, &v14);
      _os_log_impl(&dword_258DD8000, v10, v11, "TaskId: %s, TaskName: %s: asked to stop!", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }

    sub_258F0A770();
    sub_258E4B2E4(&qword_27F988BB8, MEMORY[0x277D85678]);
    swift_allocError();
    sub_258F0A3F0();
    return swift_willThrow();
  }

  return result;
}

void sub_258EBF0E8(uint64_t a1, void *a2)
{
  v46 = a2;
  v4 = sub_258F09A20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v45 - v16;
  v47 = "com.apple.speakerrecognition";
  v18 = sub_258F09E50();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v23, a1, v18);
  v24 = (*(v19 + 88))(v23, v18);
  if (MEMORY[0x277D81768] && v24 == *MEMORY[0x277D81768])
  {
    (*(v19 + 8))(v23, v18);
    sub_258F09B50();
    sub_258F09AB0();
    v45 = *(v5 + 8);
    v45(v14, v4);
    v25 = sub_258F099A0();
    v26 = v47;
    v27 = sub_258F0A4E0();
    [v46 setValue:v25 forKey:v27];

    LODWORD(v25) = *(type metadata accessor for SiriAttentionAndInvocationWorker() + 20);
    (*(v5 + 16))(v10, v17, v4);
    v28 = sub_258F0A350();
    v29 = sub_258F0A810();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v30 = 136315394;
      sub_258E4B2E4(&qword_27F988750, MEMORY[0x277CC9578]);
      v31 = sub_258F0AD60();
      v32 = v26;
      v34 = v33;
      v35 = v10;
      v36 = v45;
      v45(v35, v4);
      v37 = sub_258DE3018(v31, v34, &v48);

      *(v30 + 4) = v37;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_258DE3018(0xD00000000000002BLL, v32 | 0x8000000000000000, &v48);
      _os_log_impl(&dword_258DD8000, v28, v29, "Wrote %s to %s in UserDefaults", v30, 0x16u);
      v38 = v46;
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v38, -1, -1);
      MEMORY[0x259C9EF40](v30, -1, -1);

      v36(v17, v4);
    }

    else
    {

      v44 = v45;
      v45(v10, v4);
      v44(v17, v4);
    }
  }

  else
  {
    (*(v19 + 8))(v23, v18);
    v39 = v2 + *(type metadata accessor for SiriAttentionAndInvocationWorker() + 20);
    v40 = sub_258F0A350();
    v41 = sub_258F0A810();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_258DE3018(0xD00000000000002BLL, v47 | 0x8000000000000000, &v48);
      _os_log_impl(&dword_258DD8000, v40, v41, "SpeakerId Sampling Plugin run was not successful. Not updating  %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x259C9EF40](v43, -1, -1);
      MEMORY[0x259C9EF40](v42, -1, -1);
    }
  }
}

uint64_t sub_258EBF62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 136) = a7;
  *(v7 + 56) = a5;
  *(v7 + 64) = a6;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = sub_258F0A370();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EBF6F8, 0, 0);
}

uint64_t sub_258EBF6F8()
{
  v1 = *(v0 + 48);
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#SiriAttentionAndInvocation: Call SiriAttentionAndInvocation processing", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 136);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 32);

  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0) - 8) + 64) + 15;
  v14 = swift_task_alloc();
  *(v0 + 96) = v14;
  (*(v6 + 16))(v5, v11, v9);
  v15 = type metadata accessor for SiriAttentionAndInvocationPlugin();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  *(v0 + 16) = sub_258EB9398(v12, v5, v10, v8, v7);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A530, &unk_258F15120);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_258F09E40();
  *(v0 + 104) = v22;
  if (v22)
  {
    v23 = *(v0 + 40);
    v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0) - 8) + 64) + 15;
    v25 = swift_task_alloc();
    *(v0 + 112) = v25;
    v26 = sub_258F09E00();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v25, v23, v26);
    (*(v27 + 56))(v25, 0, 1, v26);
    v28 = *(MEMORY[0x277D81750] + 4);
    v29 = swift_task_alloc();
    *(v0 + 120) = v29;
    *v29 = v0;
    v29[1] = sub_258E4ADA8;

    return MEMORY[0x2821ED078](v14, v25);
  }

  else
  {
    v30 = *(v0 + 24);
    v31 = sub_258F09E50();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v14, 1, 1, v31);
    (*(v32 + 104))(v30, *MEMORY[0x277D81758], v31);
    v34 = *(v0 + 88);
    v33 = *(v0 + 96);

    v35 = *(v0 + 8);

    return v35();
  }
}

unint64_t sub_258EBFAF0()
{
  result = qword_27F98A538;
  if (!qword_27F98A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A538);
  }

  return result;
}

unint64_t sub_258EBFB4C()
{
  result = qword_27F98A540;
  if (!qword_27F98A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A540);
  }

  return result;
}

unint64_t sub_258EBFBA4()
{
  result = qword_27F98A548;
  if (!qword_27F98A548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F98A550, &qword_258F15208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A548);
  }

  return result;
}

uint64_t sub_258EBFC40()
{
  result = sub_258F09B00();
  if (v1 <= 0x3F)
  {
    result = sub_258F0A370();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriAttentionAndInvocationTaskExecutor.executeSiriAttentionAndInvocationSampling(defaults:pluginContext:logger:fbfBundleId:isMeDevice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 88);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_258DE1DC4;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t SiriDeviceExperimentMetricsBiomeReporter.__allocating_init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger;
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 32))(v7 + v8, a2, v9);
  return v7;
}

uint64_t SiriDeviceExperimentMetricsBiomeReporter.init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_258EBFF88(uint64_t a1)
{
  v2[2] = v1;
  v4 = *(type metadata accessor for DeviceExperimentMetrics(0) - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *(a1 + 16);
  v2[4] = v6;
  v2[5] = v7;

  return MEMORY[0x2822009F8](sub_258EC004C, 0, 0);
}

uint64_t sub_258EC004C()
{
  v1 = v0[2] + OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Reporter invoked: SiriDeviceExperimentMetricsReporter", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[5];

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v0[3];
    v8 = *(v0[2] + 16);
    v9 = v0[5] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    do
    {
      v11 = v0[4];
      sub_258E730E0(v9, v11, type metadata accessor for DeviceExperimentMetrics);
      v12 = _s16MetricsFramework020SiriDeviceExperimentA13BiomeReporterC06createf2Ond6DigesteA5Event010experimentA0So06BMSiriidjeA0CAA0deA0V_tFZ_0(v11);
      sub_258EC08EC(v11, type metadata accessor for DeviceExperimentMetrics);
      sub_258F09B90();

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

uint64_t sub_258EC01CC()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger;
  v3 = sub_258F0A370();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t SiriDeviceExperimentMetricsBiomeReporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SiriDeviceExperimentMetricsBiomeReporter.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id _s16MetricsFramework020SiriDeviceExperimentA13BiomeReporterC06createf2Ond6DigesteA5Event010experimentA0So06BMSiriidjeA0CAA0deA0V_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AD8, &qword_258F114A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v52 - v10;
  v12 = type metadata accessor for ExperimentDigest(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8, v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x277D84F90];
  v18 = type metadata accessor for DeviceExperimentMetrics(0);
  v19 = *(a1 + v18[11]);
  if (v19)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v22 = *(v13 + 72);
      do
      {
        sub_258E730E0(v21, v17, type metadata accessor for ExperimentDigest);
        _s16MetricsFramework16ExperimentDigestV12toBiomeEvent010experimentD0So014BMSiriOnDevicedcacD0CAC_tFZ_0(v17);
        v23 = sub_258EC08EC(v17, type metadata accessor for ExperimentDigest);
        MEMORY[0x259C9DF50](v23);
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v54 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_258F0A6D0();
        }

        sub_258F0A700();
        v21 += v22;
        --v20;
      }

      while (v20);
    }
  }

  sub_258E730E0(a1, v11, type metadata accessor for DeviceExperimentMetrics);
  (*(*(v18 - 1) + 56))(v11, 0, 1, v18);
  v54 = _s16MetricsFramework13EventMetadataV07toBiomeC0016deviceExperimentA0So020BMSiriOnDeviceDigesthacD0CAA0khA0VSg_tFZ_0(v11);
  sub_258DE2184(v11, &qword_27F989AD8, &qword_258F114A8);
  v24 = (a1 + v18[5]);
  if (v24[1])
  {
    v53 = 0;
  }

  else
  {
    v25 = *v24;
    v53 = sub_258F0AE20();
  }

  v26 = v18[7];
  v27 = (a1 + v18[6]);
  v28 = v27[1];
  v52 = *v27;
  sub_258E3A540(a1 + v26, v6);
  v29 = sub_258F09A70();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v6, 1, v29) == 1)
  {
    sub_258DE2184(v6, &qword_27F988730, &unk_258F0F8E0);
    v31 = 0;
  }

  else
  {
    sub_258F09A40();
    v31 = v32;
    (*(v30 + 8))(v6, v29);
  }

  v33 = a1 + v18[8];
  if (*(v33 + 8))
  {
    v34 = 0;
  }

  else
  {
    v35 = *v33;
    v34 = sub_258F0AE30();
  }

  v36 = (a1 + v18[9]);
  v38 = *v36;
  v37 = v36[1];
  v39 = (a1 + v18[10]);
  if (v39[1])
  {
    v40 = 0;
    if (v28)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v44 = *v39;
    v40 = sub_258F0AE20();
    if (v28)
    {
LABEL_18:
      v41 = sub_258F0A4E0();
      if (v31)
      {
        goto LABEL_19;
      }

LABEL_23:
      v42 = 0;
      if (v37)
      {
        goto LABEL_20;
      }

LABEL_24:
      v43 = 0;
      goto LABEL_25;
    }
  }

  v41 = 0;
  if (!v31)
  {
    goto LABEL_23;
  }

LABEL_19:
  v42 = sub_258F0A4E0();

  if (!v37)
  {
    goto LABEL_24;
  }

LABEL_20:
  v43 = sub_258F0A4E0();
LABEL_25:
  v45 = objc_allocWithZone(MEMORY[0x277CF14C8]);
  sub_258EC08A0();
  v46 = sub_258F0A6A0();

  v47 = v45;
  v49 = v53;
  v48 = v54;
  v50 = [v47 initWithEventMetadata:v54 digestType:v53 experimentId:v41 treatmentIdUUID:v42 deploymentId:v34 deviceType:v43 programCode:v40 digests:v46];

  return v50;
}

uint64_t type metadata accessor for SiriDeviceExperimentMetricsBiomeReporter()
{
  result = qword_280CC5800;
  if (!qword_280CC5800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_258EC08A0()
{
  result = qword_27F98A560;
  if (!qword_27F98A560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F98A560);
  }

  return result;
}

uint64_t sub_258EC08EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SiriDeviceExperimentMetricsDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsDataProvider_logger;
  v7 = sub_258F0A370();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t SiriDeviceExperimentMetricsDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258EC0A60()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SiriDeviceExperimentMetricsDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t SiriDeviceExperimentMetricsDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriDeviceExperimentMetricsDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EC0C3C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EC0A40();
}

uint64_t type metadata accessor for SiriDeviceExperimentMetricsDataProvider()
{
  result = qword_280CC5838;
  if (!qword_280CC5838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SiriDeviceExperimentMetricsDataProvider.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t sub_258EC0F34(uint64_t a1)
{
  v4 = *(**v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t dispatch thunk of SiriDeviceExperimentMetricsReporter.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t SiriDeviceExperimentMetricsSELFReporter.__allocating_init(logger:reportingService:selfConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
  v13 = sub_258F0A370();
  (*(*(v13 - 8) + 32))(v11 + v12, a1, v13);
  *(v11 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService) = a2;
  v14 = (v11 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
  *v14 = a3;
  v14[1] = a4;
  return v11;
}

uint64_t sub_258EC127C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_258EC12E4()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_258EC132C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SiriDeviceExperimentMetricsSELFReporter.init(logger:reportingService:selfConversion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
  v10 = sub_258F0A370();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  *(v4 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService) = a2;
  v11 = (v4 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
  *v11 = a3;
  v11[1] = a4;
  return v4;
}

uint64_t sub_258EC1498(uint64_t a1)
{
  v2[2] = v1;
  v4 = *(type metadata accessor for DeviceExperimentMetrics(0) - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *(a1 + 16);
  v2[4] = v6;
  v2[5] = v7;
  v8 = swift_task_alloc();
  v2[6] = v8;
  *v8 = v2;
  v8[1] = sub_258EC15A8;

  return sub_258E6422C(2, 1);
}

uint64_t sub_258EC15A8(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_258EC16A8, 0, 0);
}

uint64_t sub_258EC16A8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = *(v2 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService);
    v4 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
    *(v0 + 64) = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_258EC19BC;
    v6 = v2 + v4;
LABEL_3:

    return sub_258EB5738(v1, v6);
  }

  v8 = sub_258F0A350();
  v9 = sub_258F0A820();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_258DD8000, v8, v9, "Unable to create exection metadata event", v10, 2u);
    MEMORY[0x259C9EF40](v10, -1, -1);
  }

  v11 = *(v0 + 40);
  v12 = *(v11 + 16);
  *(v0 + 88) = v12;
  if (v12)
  {
    v13 = *(v0 + 24);
    v14 = (*(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
    v15 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
    *(v0 + 96) = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService;
    *(v0 + 104) = v15;
    *(v0 + 112) = *v14;
    *(v0 + 120) = v14[1];
    *(v0 + 184) = *(v13 + 80);
    *(v0 + 128) = 0;
    if (*(v11 + 16))
    {
      v16 = 0;
      while (1)
      {
        v18 = *(v0 + 112);
        v17 = *(v0 + 120);
        v19 = *(v0 + 32);
        sub_258EC2610(v11 + ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(*(v0 + 24) + 72) * v16, v19);
        v20 = v18(v19);
        *(v0 + 136) = v20;
        sub_258EC2674(v19);
        result = v20 >> 62 ? sub_258F0AA20() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 144) = result;
        v21 = *(v0 + 136);
        if (result)
        {
          break;
        }

        v22 = *(v0 + 128);
        v23 = *(v0 + 88);
        v24 = *(v0 + 136);

        if (v22 + 1 == v23)
        {
          goto LABEL_18;
        }

        v16 = *(v0 + 128) + 1;
        *(v0 + 128) = v16;
        v11 = *(v0 + 40);
        if (v16 >= *(v11 + 16))
        {
          goto LABEL_25;
        }
      }

      if ((v21 & 0xC000000000000001) == 0)
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v27 = *(v21 + 32);
        goto LABEL_24;
      }
    }

    else
    {
LABEL_25:
      __break(1u);
    }

    v27 = MEMORY[0x259C9E3B0](0);
LABEL_24:
    v1 = v27;
    *(v0 + 152) = v27;
    *(v0 + 160) = 1;
    v28 = *(v0 + 104);
    v29 = *(v0 + 16);
    v30 = *(v29 + *(v0 + 96));
    v31 = swift_task_alloc();
    *(v0 + 168) = v31;
    *v31 = v0;
    v31[1] = sub_258EC1D0C;
    v6 = v29 + v28;
    goto LABEL_3;
  }

LABEL_18:
  v25 = *(v0 + 32);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_258EC19BC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_258EC202C;
  }

  else
  {
    v3 = sub_258EC1AD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258EC1AD0()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = (*(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
    v5 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
    *(v0 + 96) = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService;
    *(v0 + 104) = v5;
    *(v0 + 112) = *v4;
    *(v0 + 120) = v4[1];
    *(v0 + 184) = *(v3 + 80);
    *(v0 + 128) = 0;
    if (*(v1 + 16))
    {
      v6 = 0;
      while (1)
      {
        v8 = *(v0 + 112);
        v7 = *(v0 + 120);
        v9 = *(v0 + 32);
        sub_258EC2610(v1 + ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(*(v0 + 24) + 72) * v6, v9);
        v10 = v8(v9);
        *(v0 + 136) = v10;
        sub_258EC2674(v9);
        result = v10 >> 62 ? sub_258F0AA20() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 144) = result;
        v12 = *(v0 + 136);
        if (result)
        {
          break;
        }

        v13 = *(v0 + 128);
        v14 = *(v0 + 88);
        v15 = *(v0 + 136);

        if (v13 + 1 == v14)
        {
          goto LABEL_11;
        }

        v6 = *(v0 + 128) + 1;
        *(v0 + 128) = v6;
        v1 = *(v0 + 40);
        if (v6 >= *(v1 + 16))
        {
          goto LABEL_20;
        }
      }

      if ((v12 & 0xC000000000000001) == 0)
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v18 = *(v12 + 32);
        goto LABEL_17;
      }
    }

    else
    {
LABEL_20:
      __break(1u);
    }

    v18 = MEMORY[0x259C9E3B0](0);
LABEL_17:
    v19 = v18;
    *(v0 + 152) = v18;
    *(v0 + 160) = 1;
    v20 = *(v0 + 104);
    v21 = *(v0 + 16);
    v22 = *(v21 + *(v0 + 96));
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v23[1] = sub_258EC1D0C;

    return sub_258EB5738(v19, v21 + v20);
  }

LABEL_11:
  v16 = *(v0 + 32);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_258EC1D0C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);

    v5 = sub_258EC22E8;
  }

  else
  {
    v5 = sub_258EC1E28;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_258EC1E28()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  if (v1 != v2)
  {
    v5 = *(v0 + 160);
LABEL_10:
    v14 = *(v0 + 136);
    if ((v14 & 0xC000000000000001) != 0)
    {
LABEL_21:
      v15 = MEMORY[0x259C9E3B0](v5);
    }

    else
    {
      if (v5 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v15 = *(v14 + 8 * v5 + 32);
    }

    v16 = v15;
    *(v0 + 152) = v15;
    *(v0 + 160) = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      v17 = *(v0 + 104);
      v18 = *(v0 + 16);
      v19 = *(v18 + *(v0 + 96));
      v20 = swift_task_alloc();
      *(v0 + 168) = v20;
      *v20 = v0;
      v20[1] = sub_258EC1D0C;

      sub_258EB5738(v16, v18 + v17);
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  while (1)
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 88);

    if (v4 + 1 == v5)
    {
      break;
    }

    v6 = *(v0 + 128) + 1;
    *(v0 + 128) = v6;
    v7 = *(v0 + 40);
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 32);
    sub_258EC2610(v7 + ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(*(v0 + 24) + 72) * v6, v10);
    v11 = v9(v10);
    *(v0 + 136) = v11;
    sub_258EC2674(v10);
    if (v11 >> 62)
    {
      v13 = sub_258F0AA20();
      *(v0 + 144) = v13;
      if (v13)
      {
LABEL_8:
        v5 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 144) = v12;
      if (v12)
      {
        goto LABEL_8;
      }
    }
  }

  v21 = *(v0 + 32);

  v22 = *(v0 + 8);

  v22();
}

uint64_t sub_258EC202C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  v3 = sub_258F0A350();
  v4 = sub_258F0A820();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "Unable to report execution Event", v7, 2u);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v8 = *(v0 + 40);
  v9 = *(v8 + 16);
  *(v0 + 88) = v9;
  if (v9)
  {
    v10 = *(v0 + 24);
    v11 = (*(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
    v12 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
    *(v0 + 96) = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService;
    *(v0 + 104) = v12;
    *(v0 + 112) = *v11;
    *(v0 + 120) = v11[1];
    *(v0 + 184) = *(v10 + 80);
    *(v0 + 128) = 0;
    if (*(v8 + 16))
    {
      v13 = 0;
      while (1)
      {
        v15 = *(v0 + 112);
        v14 = *(v0 + 120);
        v16 = *(v0 + 32);
        sub_258EC2610(v8 + ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(*(v0 + 24) + 72) * v13, v16);
        v17 = v15(v16);
        *(v0 + 136) = v17;
        sub_258EC2674(v16);
        result = v17 >> 62 ? sub_258F0AA20() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 144) = result;
        v19 = *(v0 + 136);
        if (result)
        {
          break;
        }

        v20 = *(v0 + 128);
        v21 = *(v0 + 88);
        v22 = *(v0 + 136);

        if (v20 + 1 == v21)
        {
          goto LABEL_13;
        }

        v13 = *(v0 + 128) + 1;
        *(v0 + 128) = v13;
        v8 = *(v0 + 40);
        if (v13 >= *(v8 + 16))
        {
          goto LABEL_22;
        }
      }

      if ((v19 & 0xC000000000000001) == 0)
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v25 = *(v19 + 32);
        goto LABEL_19;
      }
    }

    else
    {
LABEL_22:
      __break(1u);
    }

    v25 = MEMORY[0x259C9E3B0](0);
LABEL_19:
    v26 = v25;
    *(v0 + 152) = v25;
    *(v0 + 160) = 1;
    v27 = *(v0 + 104);
    v28 = *(v0 + 16);
    v29 = *(v28 + *(v0 + 96));
    v30 = swift_task_alloc();
    *(v0 + 168) = v30;
    *v30 = v0;
    v30[1] = sub_258EC1D0C;

    return sub_258EB5738(v26, v28 + v27);
  }

LABEL_13:
  v23 = *(v0 + 32);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_258EC22E8()
{
  v1 = v0[2] + v0[13];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[4];

  swift_willThrow();

  v8 = v0[1];
  v9 = v0[22];

  return v8();
}

uint64_t sub_258EC23E8()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion + 8);
}

uint64_t SiriDeviceExperimentMetricsSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion + 8);

  return v0;
}

uint64_t SiriDeviceExperimentMetricsSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService);

  v6 = *(v0 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EC2610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceExperimentMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EC2674(uint64_t a1)
{
  v2 = type metadata accessor for DeviceExperimentMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SiriDeviceExperimentMetricsSELFReporter()
{
  result = qword_27F98A580;
  if (!qword_27F98A580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EC2724()
{
  result = sub_258F0A370();
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

uint64_t SiriDigestMetrics.__allocating_init(defaults:logger:)(void *a1, char *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  SiriDigestMetrics.init(defaults:logger:)(a1, a2);
  return v7;
}

uint64_t SiriDigestMetrics.init(defaults:logger:)(void *a1, char *a2)
{
  v141 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v133 = (&v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v9);
  v138 = &v122 - v10;
  v130 = sub_258F09B00();
  v129 = *(v130 - 8);
  v11 = *(v129 + 64);
  MEMORY[0x28223BE20](v130, v12);
  v127 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_258F09A20();
  v126 = *(v128 - 1);
  v14 = *(v126 + 64);
  MEMORY[0x28223BE20](v128, v15);
  v125 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_258F0A370();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v137 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v146 = &v122 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v140 = (&v122 - v27);
  v28 = sub_258F09A70();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v136 = &v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v122 - v35;
  v155 = v18;
  v37 = *(v18 + 16);
  v134 = OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_logger;
  v37(v2 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_logger, a2, v17);
  sub_258F09A60();
  v147 = v29;
  v148 = v2;
  v38 = *(v29 + 32);
  v142 = OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_oddId;
  v135 = v36;
  v143 = v28;
  v132 = v29 + 32;
  v131 = v38;
  v38(v2 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_oddId, v36, v28);
  v39 = sub_258F0A1F0();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = v141;
  v43 = sub_258F0A1E0();
  v153 = v39;
  v154 = MEMORY[0x277D04548];
  v152 = v43;
  v44 = a2;
  v45 = a2;
  v46 = v17;
  v139 = v18 + 16;
  v145 = v37;
  v37(v140, v45, v17);
  v47 = sub_258F09C20();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = v144;
  v51 = sub_258F09BE0();
  v144 = v50;
  if (v50)
  {
    v52 = *(v155 + 8);
    v52(v44, v46);

    v53 = v148;
    v52(v148 + v134, v46);
    (*(v147 + 8))(&v142[v53], v143);
    type metadata accessor for SiriDigestMetrics();
    v54 = *(*v53 + 48);
    v55 = *(*v53 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v56 = v51;
    v57 = v125;
    sub_258F0A090();
    v123 = v42;
    v58 = v127;
    sub_258F09AC0();
    v141 = v56;
    sub_258F09C10();
    (*(v129 + 8))(v58, v130);
    (*(v126 + 8))(v57, v128);
    v59 = v146;
    v124 = v44;
    v60 = v145;
    v145(v146, v44, v46);
    v61 = type metadata accessor for SiriDigestMetricsDataProvider();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    v64 = swift_allocObject();
    v65 = *(v155 + 32);
    v134 = v155 + 32;
    v140 = v65;
    v65(v64 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsDataProvider_logger, v59, v46);
    v66 = v148;
    *(v148 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsDataProvider) = v64;
    v67 = v66;
    v60(v59, v44, v46);
    v68 = *(v147 + 16);
    v69 = &v142[v67];
    v70 = v135;
    v71 = v143;
    v68(v135, v69, v143);
    v142 = v123;

    v130 = v47;
    v72 = v138;
    sub_258EC3550(v138);
    v60(v137, v59, v46);
    v73 = v133;
    sub_258DECF90(v72, v133);
    v68(v136, v70, v71);
    sub_258F09F30();
    v74 = sub_258F09F20();
    v75 = type metadata accessor for CAAnalyticsEventSubmitter();
    v76 = swift_allocObject();
    type metadata accessor for BiomeResultsWrapperFactory();
    v129 = swift_allocObject();
    v153 = v75;
    v154 = &off_286A2C648;
    v152 = v76;
    v77 = type metadata accessor for SiriDigestMetricsCalculator();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    v80 = swift_allocObject();
    v81 = __swift_mutable_project_boxed_opaque_existential_1(&v152, v75);
    v128 = &v122;
    v82 = *(*(v75 - 8) + 64);
    MEMORY[0x28223BE20](v81, v81);
    v84 = v46;
    v85 = (&v122 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v86 + 16))(v85);
    v87 = *v85;
    v150 = v75;
    v151 = &off_286A2C648;
    *&v149 = v87;
    v88 = v137;
    v145(v80 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_logger, v137, v84);
    sub_258DECF90(v73, v80 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_sqlFileURL);
    v89 = (v80 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bookmarkService);
    v89[3] = v130;
    v89[4] = &off_286A2FA30;
    *v89 = v141;
    sub_258DED000(v73);
    v90 = v155 + 8;
    v91 = *(v155 + 8);
    v91(v88, v84);
    v133 = v91;
    v155 = v90;
    sub_258DED000(v138);
    (*(v147 + 8))(v135, v71);
    v92 = v146;
    v91(v146, v84);
    v131(v80 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_oddId, v136, v71);
    *(v80 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_defaults) = v142;
    *(v80 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bugReporter) = v74;
    sub_258DEE384(&v149, v80 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_analyticsEventSubmitter);
    *(v80 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_biomeResultsFactory) = v129;
    __swift_destroy_boxed_opaque_existential_1Tm(&v152);
    *(v148 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsCalculator) = v80;
    v93 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v94 = [v93 Metrics];
    swift_unknownObjectRelease();
    v95 = [v94 OnDeviceDigestUsageMetrics];
    swift_unknownObjectRelease();
    v96 = [v95 source];

    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A5A0, &unk_258F155F8);
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    swift_allocObject();
    v100 = sub_258F09B80();
    v101 = v124;
    v102 = v145;
    v145(v92, v124, v84);
    v103 = type metadata accessor for SiriDigestMetricsBiomeReporter();
    v104 = *(v103 + 48);
    v105 = *(v103 + 52);
    v106 = swift_allocObject();
    *(v106 + 16) = v100;
    v107 = v140;
    v140(v106 + OBJC_IVAR____TtC16MetricsFramework30SiriDigestMetricsBiomeReporter_logger, v92, v84);
    v102(v92, v101, v84);

    v108 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, 0, 0);
    v109 = type metadata accessor for SiriDigestMetricsSELFReporter();
    v110 = *(v109 + 48);
    v111 = *(v109 + 52);
    v112 = swift_allocObject();
    *(v112 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
    v107(v112 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger, v146, v84);
    v53 = v148;
    *(v112 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_reportingService) = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_258F0F6D0;
    *(v113 + 32) = v106;
    *(v113 + 40) = v112;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A5A8, &qword_258F15608);
    v115 = *(v114 + 48);
    v116 = *(v114 + 52);
    swift_allocObject();

    v152 = sub_258F09BA0();
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A5B0, qword_258F15610);
    v118 = *(v117 + 48);
    v119 = *(v117 + 52);
    swift_allocObject();
    v120 = sub_258F09BC0();

    v133(v124, v84);
    *(v53 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsReporter) = v120;
  }

  return v53;
}

uint64_t sub_258EC3550@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SiriDigestMetricsCalculator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t type metadata accessor for SiriDigestMetrics()
{
  result = qword_280CC5B18;
  if (!qword_280CC5B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EC36D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EC36F4, 0, 0);
}

uint64_t sub_258EC36F4()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsDataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258ECA04C();
}

uint64_t sub_258EC3798(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EC37C8, 0, 0);
}

uint64_t sub_258EC37C8()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsReporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DED218;

  return v6(v0 + 16);
}

uint64_t sub_258EC3894(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EC38B4, 0, 0);
}

uint64_t sub_258EC38B4()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsCalculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED408;
  v3 = v0[2];

  return sub_258EC55DC(v3);
}

uint64_t SiriDigestMetrics.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsDataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsCalculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsReporter);

  v6 = OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t SiriDigestMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsDataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsCalculator);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsReporter);

  v6 = OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_oddId;
  v7 = sub_258F09A70();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EC3B34(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EC3B58, 0, 0);
}

uint64_t sub_258EC3B58()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsDataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258ECA04C();
}

uint64_t sub_258EC3BFC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EC3C20, 0, 0);
}

uint64_t sub_258EC3C20()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsCalculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED984;
  v3 = v0[2];

  return sub_258EC55DC(v3);
}

uint64_t sub_258EC3CC4(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EC3CF8, 0, 0);
}

uint64_t sub_258EC3CF8()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework17SiriDigestMetrics_siriDigestMetricsReporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DEDBC8;

  return v6(v0 + 16);
}

uint64_t sub_258EC3E60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriDigestMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258EC3EA4()
{
  result = qword_27F98A5D8;
  if (!qword_27F98A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A5D8);
  }

  return result;
}

unint64_t sub_258EC3EF8()
{
  result = qword_27F98A5E0;
  if (!qword_27F98A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A5E0);
  }

  return result;
}

uint64_t dispatch thunk of SiriDigestMetrics.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of SiriDigestMetrics.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of SiriDigestMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t SiriDigestMetricsBiomeReporter.__allocating_init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = OBJC_IVAR____TtC16MetricsFramework30SiriDigestMetricsBiomeReporter_logger;
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 32))(v7 + v8, a2, v9);
  return v7;
}

uint64_t SiriDigestMetricsBiomeReporter.init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework30SiriDigestMetricsBiomeReporter_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_258EC440C(uint64_t a1)
{
  v2[2] = v1;
  v4 = *(type metadata accessor for DeviceUsageMetrics(0) - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *(a1 + 16);
  v2[4] = v6;
  v2[5] = v7;

  return MEMORY[0x2822009F8](sub_258EC44D0, 0, 0);
}

uint64_t sub_258EC44D0()
{
  v1 = v0[2] + OBJC_IVAR____TtC16MetricsFramework30SiriDigestMetricsBiomeReporter_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Reporter invoked: SiriDigestMetricsBiomeReporter", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[5];

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v0[3];
    v8 = *(v0[2] + 16);
    v9 = v0[5] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    do
    {
      v11 = v0[4];
      sub_258E76CD0(v9, v11);
      v12 = _s16MetricsFramework010SiriDigestA13BiomeReporterC06createe8OnDeviced5UsageA5Event05usageA0So06BMSirihidjA0CAA0ijA0V_tFZ_0(v11);
      sub_258E76D34(v11);
      sub_258F09B90();

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

uint64_t sub_258EC462C()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework30SiriDigestMetricsBiomeReporter_logger;
  v3 = sub_258F0A370();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t SiriDigestMetricsBiomeReporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework30SiriDigestMetricsBiomeReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SiriDigestMetricsBiomeReporter.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MetricsFramework30SiriDigestMetricsBiomeReporter_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id _s16MetricsFramework010SiriDigestA13BiomeReporterC06createe8OnDeviced5UsageA5Event05usageA0So06BMSirihidjA0CAA0ijA0V_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for DeviceUsageMetrics(0);
  v3 = *(a1 + v2[37]);
  if (v3)
  {
    v112 = MEMORY[0x277D84F90];
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 32);
      do
      {
        v6 = *v5++;
        if ([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_])
        {
          MEMORY[0x259C9DF50]();
          if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v7 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_258F0A6D0();
          }

          sub_258F0A700();
        }

        --v4;
      }

      while (v4);
    }
  }

  v95 = _s16MetricsFramework13EventMetadataV07toBiomeC005usagecD0So025BMSiriOnDeviceDigestUsageacD0CACSg_tFZ_0(a1);
  v8 = (a1 + v2[6]);
  v9 = v8[1];
  v80 = *v8;
  v10 = (a1 + v2[7]);
  v88 = v9;
  if (v10[1])
  {
    v94 = 0;
  }

  else
  {
    v11 = *v10;
    v94 = sub_258F0AE20();
  }

  if (*(a1 + v2[8]) == 3)
  {
    v93 = 0;
  }

  else
  {
    v93 = sub_258F0A7D0();
  }

  v12 = (a1 + v2[9]);
  v13 = v12[1];
  v79 = *v12;
  v14 = (a1 + v2[10]);
  v86 = v13;
  if (v14[1])
  {
    v92 = 0;
  }

  else
  {
    v15 = *v14;
    v92 = sub_258F0AE20();
  }

  v16 = (a1 + v2[11]);
  if (v16[1])
  {
    v91 = 0;
  }

  else
  {
    v17 = *v16;
    v91 = sub_258F0AE20();
  }

  v18 = (a1 + v2[12]);
  v19 = *v18;
  v20 = v18[1];
  v21 = (a1 + v2[13]);
  v78 = *v21;
  v22 = v21[1];
  v23 = (a1 + v2[14]);
  v83 = v20;
  v84 = v22;
  if (v23[1])
  {
    v90 = 0;
  }

  else
  {
    v24 = *v23;
    v90 = sub_258F0AE20();
  }

  v25 = (a1 + v2[15]);
  if (v25[1])
  {
    v111 = 0;
  }

  else
  {
    v26 = *v25;
    v111 = sub_258F0AE20();
  }

  v27 = v2[16];
  v28 = *(a1 + v27);
  if (v28)
  {
    [*(a1 + v27) languageCode];
    v29 = sub_258F0AE20();
    [v28 countryCode];
    v28 = sub_258F0AE20();
  }

  else
  {
    v29 = 0;
  }

  v110 = [objc_allocWithZone(MEMORY[0x277CF1538]) initWithLanguageCode:v29 countryCode:v28];

  v30 = v2[17];
  v31 = *(a1 + v30);
  if (v31)
  {
    [*(a1 + v30) languageCode];
    v32 = sub_258F0AE20();
    [v31 countryCode];
    v31 = sub_258F0AE20();
  }

  else
  {
    v32 = 0;
  }

  v108 = [objc_allocWithZone(MEMORY[0x277CF1538]) initWithLanguageCode:v32 countryCode:v31];

  v33 = (a1 + v2[18]);
  v34 = v33[1];
  v77 = *v33;
  v35 = (a1 + v2[19]);
  v81 = v34;
  if (v35[1])
  {
    v106 = 0;
  }

  else
  {
    v36 = *v35;
    v106 = sub_258F0AEB0();
  }

  v37 = (a1 + v2[20]);
  if (v37[1])
  {
    v104 = 0;
  }

  else
  {
    v38 = *v37;
    v104 = sub_258F0AEB0();
  }

  v39 = (a1 + v2[21]);
  if (v39[1])
  {
    v103 = 0;
  }

  else
  {
    v40 = *v39;
    v103 = sub_258F0AEB0();
  }

  v41 = (a1 + v2[22]);
  if (v41[1])
  {
    v101 = 0;
  }

  else
  {
    v42 = *v41;
    v101 = sub_258F0AEB0();
  }

  v43 = (a1 + v2[23]);
  if (v43[1])
  {
    v109 = 0;
  }

  else
  {
    v44 = *v43;
    v109 = sub_258F0AEB0();
  }

  v45 = (a1 + v2[24]);
  if (v45[1])
  {
    v99 = 0;
  }

  else
  {
    v46 = *v45;
    v99 = sub_258F0AEB0();
  }

  v47 = (a1 + v2[25]);
  if (v47[1])
  {
    v107 = 0;
  }

  else
  {
    v48 = *v47;
    v107 = sub_258F0AEB0();
  }

  v49 = (a1 + v2[26]);
  if (v49[1])
  {
    v96 = 0;
  }

  else
  {
    v50 = *v49;
    v96 = sub_258F0AEB0();
  }

  v51 = (a1 + v2[27]);
  if (v51[1])
  {
    v105 = 0;
  }

  else
  {
    v52 = *v51;
    v105 = sub_258F0AEB0();
  }

  v53 = (a1 + v2[28]);
  if (v53[1])
  {
    v102 = 0;
  }

  else
  {
    v54 = *v53;
    v102 = sub_258F0AEB0();
  }

  v55 = (a1 + v2[29]);
  if (v55[1])
  {
    v100 = 0;
  }

  else
  {
    v56 = *v55;
    v100 = sub_258F0AEB0();
  }

  v57 = (a1 + v2[30]);
  if (v57[1])
  {
    v98 = 0;
  }

  else
  {
    v58 = *v57;
    v98 = sub_258F0AEB0();
  }

  v59 = (a1 + v2[31]);
  if (v59[1])
  {
    v97 = 0;
  }

  else
  {
    v60 = *v59;
    v97 = sub_258F0AEB0();
  }

  v61 = (a1 + v2[32]);
  if (v61[1])
  {
    v62 = 0;
  }

  else
  {
    v63 = *v61;
    v62 = sub_258F0AEB0();
  }

  v64 = (a1 + v2[33]);
  v66 = *v64;
  v65 = v64[1];
  v67 = (a1 + v2[34]);
  if (v67[1])
  {
    v68 = 0;
  }

  else
  {
    v69 = *v67;
    v68 = sub_258F0AE20();
  }

  if (*(a1 + v2[36]) == 2)
  {
    v70 = 0;
    if (v88)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v70 = sub_258F0A730();
    if (v88)
    {
LABEL_80:
      v89 = sub_258F0A4E0();
      if (v86)
      {
        goto LABEL_81;
      }

LABEL_85:
      v87 = 0;
      if (v83)
      {
        goto LABEL_82;
      }

      goto LABEL_86;
    }
  }

  v89 = 0;
  if (!v86)
  {
    goto LABEL_85;
  }

LABEL_81:
  v87 = sub_258F0A4E0();
  if (v83)
  {
LABEL_82:
    v71 = sub_258F0A4E0();
    goto LABEL_87;
  }

LABEL_86:
  v71 = 0;
LABEL_87:
  if (v84)
  {
    v72 = sub_258F0A4E0();
    if (v81)
    {
      goto LABEL_89;
    }

LABEL_92:
    v73 = 0;
    if (v65)
    {
      goto LABEL_90;
    }

LABEL_93:
    v74 = 0;
    goto LABEL_94;
  }

  v72 = 0;
  if (!v81)
  {
    goto LABEL_92;
  }

LABEL_89:
  v73 = sub_258F0A4E0();
  if (!v65)
  {
    goto LABEL_93;
  }

LABEL_90:
  v74 = sub_258F0A4E0();
LABEL_94:
  v75 = objc_allocWithZone(MEMORY[0x277CF1520]);
  sub_258E76E10();
  v85 = sub_258F0A6A0();

  v82 = [v75 initWithEventMetadata:v95 deviceType:v89 programCode:v94 productId:v93 systemBuild:v87 dataSharingOptInStatus:v92 viewInterface:v91 audioInterfaceVendorId:v71 audioInterfaceProductId:v72 asrLocation:v90 nlLocation:v111 siriInputLocale:v110 dictationLocale:v108 subDomain:v73 totalTurnCount:v106 validTurnCount:v104 siriTasksStarted:v103 siriTasksCompleted:v101 flowTasksStarted:v109 flowTasksCompleted:v99 reliabilityRequestCount:v107 reliabilityTurnCount:v96 clientErrorCount:v105 undesiredResponseCount:v102 fatalResponseCount:v100 failureResponseCount:v98 siriUnavailableResponseCount:v97 asrTurnCount:v62 siriResponseId:v74 responseCategory:v68 isIntelligenceEngineRequest:v70 intelligenceEngineRouting:v85];

  return v82;
}

uint64_t type metadata accessor for SiriDigestMetricsBiomeReporter()
{
  result = qword_27F98A5F0;
  if (!qword_27F98A5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriDigestMetricsCalculator.__allocating_init(defaults:logger:sqlFileURL:bookmarkService:oddId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a1;
  v51 = a5;
  v49 = a4;
  v45 = a3;
  v46 = a2;
  v6 = sub_258F09A70();
  v43 = *(v6 - 8);
  v7 = v43;
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v41 - v15;
  v17 = sub_258F0A370();
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x28223BE20](v17, v20);
  v41 = v18[2];
  v42 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41();
  v22 = v16;
  sub_258DE20C0(a3, v16, &qword_27F988720, &qword_258F0B830);
  (*(v7 + 16))(v11, v51, v6);
  sub_258F09F30();
  v47 = sub_258F09F20();
  v23 = type metadata accessor for CAAnalyticsEventSubmitter();
  v24 = swift_allocObject();
  type metadata accessor for BiomeResultsWrapperFactory();
  v44 = swift_allocObject();
  v52[3] = v23;
  v52[4] = &off_286A2C648;
  v52[0] = v24;
  v25 = type metadata accessor for SiriDigestMetricsCalculator();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v52, v23);
  v30 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v29, v29);
  v32 = (&v41 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v32;
  v35 = (v28 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_analyticsEventSubmitter);
  v35[3] = v23;
  v35[4] = &off_286A2C648;
  *v35 = v34;
  v36 = v42;
  (v41)(v28 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_logger, v42, v17);
  sub_258DE20C0(v22, v28 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v37 = (v28 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bookmarkService);
  v37[3] = sub_258F09C20();
  v37[4] = &off_286A2FA30;
  *v37 = v49;
  v38 = v43;
  (*(v43 + 8))(v51, v6);
  sub_258DE2184(v45, &qword_27F988720, &qword_258F0B830);
  v39 = v18[1];
  v39(v46, v17);
  sub_258DE2184(v22, &qword_27F988720, &qword_258F0B830);
  v39(v36, v17);
  (*(v38 + 32))(v28 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_oddId, v48, v6);
  *(v28 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_defaults) = v50;
  *(v28 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bugReporter) = v47;
  *(v28 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_biomeResultsFactory) = v44;
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  return v28;
}

uint64_t type metadata accessor for SiriDigestMetricsCalculator()
{
  result = qword_280CC5A28;
  if (!qword_280CC5A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriDigestMetricsResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SiriDigestMetricsResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SiriDigestMetricsResults.deviceUsageMetricsResults.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_258EC55DC(uint64_t a1)
{
  v2[259] = v1;
  v2[258] = a1;
  v3 = sub_258F09F40();
  v2[260] = v3;
  v4 = *(v3 - 8);
  v2[261] = v4;
  v5 = *(v4 + 64) + 15;
  v2[262] = swift_task_alloc();
  v6 = sub_258F09F50();
  v2[263] = v6;
  v7 = *(v6 - 8);
  v2[264] = v7;
  v8 = *(v7 + 64) + 15;
  v2[265] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0) - 8) + 64) + 15;
  v2[266] = swift_task_alloc();
  v2[267] = swift_task_alloc();
  v10 = *(type metadata accessor for DeviceUsageMetrics(0) - 8);
  v2[268] = v10;
  v11 = *(v10 + 64) + 15;
  v2[269] = swift_task_alloc();
  v2[270] = swift_task_alloc();
  v12 = type metadata accessor for EventMetadata(0);
  v2[271] = v12;
  v13 = *(v12 - 8);
  v2[272] = v13;
  v14 = *(v13 + 64) + 15;
  v2[273] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0) - 8) + 64) + 15;
  v2[274] = swift_task_alloc();
  v2[275] = swift_task_alloc();
  v2[276] = swift_task_alloc();
  v2[277] = swift_task_alloc();
  v2[278] = swift_task_alloc();
  v2[279] = swift_task_alloc();
  v2[280] = swift_task_alloc();
  v16 = type metadata accessor for CommonDigestElements();
  v2[281] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v2[282] = swift_task_alloc();
  v18 = sub_258F09B00();
  v2[283] = v18;
  v19 = *(v18 - 8);
  v2[284] = v19;
  v20 = *(v19 + 64) + 15;
  v2[285] = swift_task_alloc();
  v21 = sub_258F09A20();
  v2[286] = v21;
  v22 = *(v21 - 8);
  v2[287] = v22;
  v23 = *(v22 + 64) + 15;
  v2[288] = swift_task_alloc();
  v2[289] = swift_task_alloc();
  v2[290] = swift_task_alloc();
  v2[291] = swift_task_alloc();
  v24 = sub_258F0A2C0();
  v2[292] = v24;
  v25 = *(v24 - 8);
  v2[293] = v25;
  v26 = *(v25 + 64) + 15;
  v2[294] = swift_task_alloc();
  v2[295] = swift_task_alloc();
  v27 = sub_258F0A2F0();
  v2[296] = v27;
  v28 = *(v27 - 8);
  v2[297] = v28;
  v29 = *(v28 + 64) + 15;
  v2[298] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EC5A50, 0, 0);
}

void sub_258EC5A50()
{
  v364 = v0;
  v1 = v0[298];
  v2 = v0[295];
  sub_258F0A2E0();
  sub_258F0A2D0();
  sub_258F0A2A0();
  v3 = sub_258F0A2D0();
  v4 = sub_258F0A860();
  if (sub_258F0A900())
  {
    v5 = v0[295];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_258F0A2B0();
    _os_signpost_emit_with_name_impl(&dword_258DD8000, v3, v4, v7, "SiriDigestMetricsCalculatorSP", "", v6, 2u);
    MEMORY[0x259C9EF40](v6, -1, -1);
  }

  v8 = v0[295];
  v9 = v0[294];
  v10 = v0[293];
  v11 = v0[292];
  v12 = v0[259];

  (*(v10 + 16))(v9, v8, v11);
  v13 = sub_258F0A330();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_258F0A320();
  v16 = sub_258F0A350();
  v17 = sub_258F0A810();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_258DD8000, v16, v17, "SQL calculator invoked: SiriDigestMetricsCalculator", v18, 2u);
    MEMORY[0x259C9EF40](v18, -1, -1);
  }

  v19 = v0[259];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  v20 = *(sub_258F0A190() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  *(swift_allocObject() + 16) = xmmword_258F0F8A0;
  sub_258F0A160();
  sub_258F0A160();
  sub_258DE0360();
  v23 = v0[259];
  v24 = sub_258DE064C();
  v25 = *(v0[259] + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_defaults);
  v26 = sub_258F0A4E0();
  v27 = [v25 BOOLForKey_];

  v28 = v0[291];
  v361 = v0;
  if (v27)
  {
    sub_258F09A10();
  }

  else
  {
    v29 = v0[285];
    v30 = v0[284];
    v31 = v0[283];
    sub_258F09AC0();
    sub_258F09BB0();
    (*(v30 + 8))(v29, v31);
  }

  v32 = v0[291];
  v33 = v0[287];
  v34 = v0[286];
  v35 = sub_258F0A0E0();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_258F0A0D0();
  sub_258F0A0C0();

  v296 = *(v33 + 8);
  v296(v32, v34);
  v297 = v24;
  v38 = sub_258F0A4E0();
  LODWORD(v32) = [v25 BOOLForKey_];

  v39 = sub_258F0A350();
  v40 = sub_258F0A810();
  v41 = os_log_type_enabled(v39, v40);
  if (v32)
  {
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v363[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_258DE3018(0x747365676944474FLL, 0xEF7363697274654DLL, v363);
      _os_log_impl(&dword_258DD8000, v39, v40, "%s: Include current date data for aggregation.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x259C9EF40](v43, -1, -1);
      MEMORY[0x259C9EF40](v42, -1, -1);
    }

    v44 = v297;
  }

  else
  {
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v363[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_258DE3018(0x747365676944474FLL, 0xEF7363697274654DLL, v363);
      _os_log_impl(&dword_258DD8000, v39, v40, "%s: current date data NOT included for aggregation.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x259C9EF40](v46, -1, -1);
      MEMORY[0x259C9EF40](v45, -1, -1);
    }

    v44 = v297;
    v47 = v297;
  }

  v48 = v0[290];
  v49 = v0[289];
  v50 = v0[285];
  v51 = v0[284];
  v52 = v0[283];
  sub_258F0A050();

  v53 = sub_258F0A010();
  v54 = sub_258F0A040();

  type metadata accessor for BiomeResultsWrapper();
  v295 = swift_allocObject();
  *(v295 + 16) = v54;
  sub_258F09B50();
  sub_258F09AC0();
  sub_258F09930();
  v294 = *(v51 + 8);
  v294(v50, v52);
  if ((sub_258F0A070() & 1) == 0)
  {

    v307 = 0;
    v308 = 0;
    v303 = 0;
    v304 = 0;
    v251 = 0;
    v305 = 0;
    v252 = MEMORY[0x277D84F90];
LABEL_387:

    v253 = sub_258F0A350();
    v254 = sub_258F0A810();
    v335 = v252;
    if (os_log_type_enabled(v253, v254))
    {
      v255 = swift_slowAlloc();
      *v255 = 134217984;
      *(v255 + 4) = v252[2];

      _os_log_impl(&dword_258DD8000, v253, v254, "SiriDigestMetricsCalculator query yielded %ld results", v255, 0xCu);
      MEMORY[0x259C9EF40](v255, -1, -1);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BE8, &unk_258F13720);
    v256 = swift_allocObject();
    v256[4] = v305;
    v256[5] = 0x69737361206C696ELL;
    v256[6] = 0xEF6449746E617473;
    v257 = v303;
    v256[7] = v303;
    v256[8] = 0xD000000000000015;
    v256[9] = 0x8000000258F1D230;
    v256[10] = v251;
    v256[11] = 0xD000000000000014;
    v256[12] = 0x8000000258F1CBD0;
    if (v305 >= 1)
    {
      v258 = v361[259];

      sub_258E2DEA4(v305, 0x69737361206C696ELL, 0xEF6449746E617473);

      v257 = v256[7];
    }

    if (v257 >= 1)
    {
      v259 = v361[259];
      v261 = v256[8];
      v260 = v256[9];

      sub_258E2DEA4(v257, v261, v260);
    }

    v262 = v256[10];
    v263 = v361;
    if (v262 >= 1)
    {
      v264 = v361[259];
      v266 = v256[11];
      v265 = v256[12];

      sub_258E2DEA4(v262, v266, v265);
      v263 = v361;
    }

    v267 = v263[264];
    v268 = v263[261];
    v347 = v263[259];
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v269 = swift_allocObject();
    v269[4] = v307;
    v269[5] = sub_258F09F00();
    v269[6] = v270;
    v269[7] = v304;
    v271 = 0;
    v269[8] = sub_258F09EF0();
    v269[9] = v272;
    v269[10] = v308;
    v269[11] = 0xD00000000000002CLL;
    v359 = v269;
    v269[12] = 0x8000000258F1C570;
    v345 = OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bugReporter;
    v357 = *MEMORY[0x277D5D9E0];
    v351 = (v267 + 8);
    v355 = (v267 + 104);
    v342 = *MEMORY[0x277D5D9B8];
    v337 = (v268 + 8);
    v340 = (v268 + 104);
    do
    {
      v273 = v359[v271 + 4];
      v274 = v359[v271 + 5];
      v275 = v359[v271 + 6];

      v276 = v263[265];
      v277 = v263[263];
      if (v273 < 1)
      {
        (*v355)(v263[265], v357, v263[263]);
      }

      else
      {
        v278 = v263[262];
        v279 = v361[260];
        v280 = v361[259];
        sub_258E2DEA4(v273, v274, v275);
        (*v355)(v276, v357, v277);
        v281 = *(v347 + v345);
        (*v340)(v278, v342, v279);
        sub_258F09F10();
        v263 = v361;
        (*v337)(v278, v279);
      }

      (*v351)(v263[265], v263[263]);

      v271 += 3;
    }

    while (v271 != 9);
    v282 = v263[259];
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_258DFD02C(v295, 1);
    v283 = v263[298];
    v316 = v263[297];
    v318 = v263[296];
    v314 = v263[295];
    v320 = v263[294];
    v309 = v263[293];
    v311 = v263[292];
    v322 = v263[291];
    v284 = v263[290];
    v306 = v263[289];
    v285 = v263[288];
    v286 = v263[286];
    v287 = v263[285];
    v288 = v263[283];
    v324 = v263[282];
    v326 = v263[280];
    v327 = v263[279];
    v329 = v263[278];
    v331 = v263[277];
    v333 = v263[276];
    v338 = v263[275];
    v341 = v263[274];
    v343 = v263[273];
    v346 = v263[270];
    v348 = v263[269];
    v352 = v263[267];
    v356 = v263[266];
    v358 = v263[265];
    v360 = v263[262];
    v289 = v263[258];
    sub_258F0A0F0();
    sub_258F09AC0();
    sub_258F09BB0();
    v294(v287, v288);
    v290 = v285;
    v291 = sub_258F09B70();
    v296(v290, v286);

    v296(v306, v286);
    v296(v284, v286);
    v292 = MEMORY[0x277D84F90];
    *v289 = v291;
    v289[1] = v292;
    v289[2] = v335;
    sub_258EC93DC(v283, "SiriDigestMetricsCalculatorSP", 29, 2);

    (*(v309 + 8))(v314, v311);
    (*(v316 + 8))(v283, v318);

    v293 = v263[1];

    v293();
    return;
  }

  v307 = 0;
  v308 = 0;
  v303 = 0;
  v304 = 0;
  v310 = 0;
  v305 = 0;
  v55 = v361;
  v339 = v361 + 154;
  v332 = v361[282];
  v300 = v361[281];
  v336 = v361[271];
  v302 = OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_oddId;
  v299 = (v361[272] + 56);
  v298 = v361[268];
  v334 = MEMORY[0x277D84F90];
  v301 = v361[259];
  while (1)
  {
    v56 = sub_258F0A060();
    if (!v56)
    {
      goto LABEL_22;
    }

    v57 = v56;
    v58 = sub_258F0A350();
    v59 = sub_258F0A810();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v363[0] = v61;
      *v60 = 136315138;
      v62 = sub_258F0A420();
      v64 = sub_258DE3018(v62, v63, v363);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_258DD8000, v58, v59, "SiriDigestMetrics row data: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x259C9EF40](v61, -1, -1);
      MEMORY[0x259C9EF40](v60, -1, -1);
    }

    v65 = *(v55 + 259);
    v67 = sub_258E2ACFC(v57, *(v55 + 289), 0xD000000000000022, 0x8000000258F1C440);
    if ((v66 & 0x10000) == 0)
    {
      break;
    }

LABEL_22:
    if ((sub_258F0A070() & 1) == 0)
    {

      v252 = v334;
      v251 = v310;
      goto LABEL_387;
    }
  }

  if ((v66 & 0x100) != 0)
  {
    v68 = __OFADD__(v308++, 1);
    if (v68)
    {
      goto LABEL_407;
    }
  }

  if (v66)
  {
    if (__OFADD__(v307, 1))
    {
      goto LABEL_408;
    }

    ++v307;
  }

  v69 = *(v55 + 259);
  sub_258E2BAA0(v57, *(v55 + 282));
  v70 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  *(v55 + 224) = 0xD000000000000015;
  *(v55 + 225) = 0x8000000258F1BA40;
  sub_258F0AA80();
  if (*(v57 + 16) && (v71 = sub_258E2EA2C((v55 + 56)), (v72 & 1) != 0))
  {
    sub_258DE4090(*(v57 + 56) + 32 * v71, (v55 + 816));
    sub_258E0F590((v55 + 56));
    if (swift_dynamicCast())
    {
      v73 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(*(v55 + 254), *(v55 + 255));

      v70 = v73;
    }
  }

  else
  {
    sub_258E0F590((v55 + 56));
  }

  v330 = v70;
  v74 = *(v55 + 280);
  v75 = sub_258F09A70();
  v344 = *(v75 - 8);
  v349 = *(v344 + 56);
  v349(v74, 1, 1, v75);
  strcpy(v55 + 1696, "assistant_id");
  v55[1709] = 0;
  *(v55 + 855) = -5120;
  sub_258F0AA80();
  v353 = v75;
  v328 = v67;
  if (*(v57 + 16) && (v76 = sub_258E2EA2C((v55 + 176)), (v77 & 1) != 0))
  {
    sub_258DE4090(*(v57 + 56) + 32 * v76, (v55 + 912));
    sub_258E0F590((v55 + 176));
    if (swift_dynamicCast())
    {
      v78 = *(v55 + 280);
      v79 = *(v55 + 279);
      v80 = *(v55 + 232);
      v81 = *(v55 + 233);
      sub_258F09A30();

      sub_258DE2184(v78, &qword_27F988730, &unk_258F0F8E0);
      v82 = v79;
      v75 = v353;
      sub_258E2EAD8(v82, v78, &qword_27F988730, &unk_258F0F8E0);
    }
  }

  else
  {
    sub_258E0F590((v55 + 176));
  }

  v83 = *(v55 + 278);
  sub_258DE20C0(*(v55 + 280), v83, &qword_27F988730, &unk_258F0F8E0);
  v84 = *(v344 + 48);
  v85 = v84(v83, 1, v75);
  sub_258DE2184(v83, &qword_27F988730, &unk_258F0F8E0);
  if (v85 == 1)
  {
    v86 = sub_258F0A350();
    v87 = sub_258F0A820();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_258DD8000, v86, v87, "observed NilAssistantId", v88, 2u);
      MEMORY[0x259C9EF40](v88, -1, -1);
    }

    v89 = v353;
    if (__OFADD__(v305, 1))
    {
      goto LABEL_409;
    }

    ++v305;
  }

  else
  {
    v89 = v353;
  }

  v349(v361[277], 1, 1, v89);
  v361[200] = 0xD000000000000015;
  v361[201] = 0x8000000258F189D0;
  sub_258F0AA80();
  if (*(v57 + 16) && (v90 = sub_258E2EA2C((v361 + 37)), (v91 & 1) != 0))
  {
    sub_258DE4090(*(v57 + 56) + 32 * v90, (v361 + 138));
    sub_258E0F590((v361 + 37));
    if (swift_dynamicCast())
    {
      v92 = v361[279];
      v93 = v361[277];
      v94 = v361[234];
      v95 = v361[235];
      sub_258F09A30();

      sub_258DE2184(v93, &qword_27F988730, &unk_258F0F8E0);
      v96 = v93;
      v89 = v353;
      sub_258E2EAD8(v92, v96, &qword_27F988730, &unk_258F0F8E0);
    }
  }

  else
  {
    sub_258E0F590((v361 + 37));
  }

  v97 = v361[276];
  sub_258DE20C0(v361[277], v97, &qword_27F988730, &unk_258F0F8E0);
  v98 = v84(v97, 1, v89);
  sub_258DE2184(v97, &qword_27F988730, &unk_258F0F8E0);
  if (v98 == 1)
  {
    v99 = sub_258F0A350();
    v100 = sub_258F0A820();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_258DD8000, v99, v100, "observed NilDeviceAggregationId", v101, 2u);
      MEMORY[0x259C9EF40](v101, -1, -1);
    }

    v102 = v353;
    if (__OFADD__(v304, 1))
    {
      goto LABEL_410;
    }

    ++v304;
  }

  else
  {
    v102 = v353;
  }

  v349(v361[275], 1, 1, v102);
  v361[198] = 0xD000000000000013;
  v361[199] = 0x8000000258F1A5E0;
  sub_258F0AA80();
  if (*(v57 + 16) && (v103 = sub_258E2EA2C((v361 + 52)), (v104 & 1) != 0))
  {
    sub_258DE4090(*(v57 + 56) + 32 * v103, (v361 + 158));
    sub_258E0F590((v361 + 52));
    if (swift_dynamicCast())
    {
      v105 = v361[279];
      v106 = v361[275];
      v107 = v361[236];
      v108 = v361[237];
      sub_258F09A30();

      sub_258DE2184(v106, &qword_27F988730, &unk_258F0F8E0);
      v109 = v106;
      v102 = v353;
      sub_258E2EAD8(v105, v109, &qword_27F988730, &unk_258F0F8E0);
    }
  }

  else
  {
    sub_258E0F590((v361 + 52));
  }

  v110 = v361[274];
  sub_258DE20C0(v361[275], v110, &qword_27F988730, &unk_258F0F8E0);
  v111 = v84(v110, 1, v102);
  sub_258DE2184(v110, &qword_27F988730, &unk_258F0F8E0);
  if (v111 == 1)
  {
    v112 = sub_258F0A350();
    v113 = sub_258F0A820();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_258DD8000, v112, v113, "observed NilUserAggregationId", v114, 2u);
      MEMORY[0x259C9EF40](v114, -1, -1);
    }

    v115 = v361;
    if (__OFADD__(v303, 1))
    {
      goto LABEL_411;
    }

    ++v303;
  }

  else
  {
    v115 = v361;
  }

  v115[192] = 0xD000000000000029;
  v115[193] = 0x8000000258F18AC0;
  sub_258F0AA80();
  if (*(v57 + 16) && (v116 = sub_258E2EA2C((v115 + 67)), (v117 & 1) != 0))
  {
    sub_258DE4090(*(v57 + 56) + 32 * v116, (v115 + 106));
  }

  else
  {
    *(v115 + 53) = 0u;
    *(v115 + 54) = 0u;
  }

  sub_258E0F590((v115 + 67));
  if (v115[109])
  {
    v118 = swift_dynamicCast();
    if (v118)
    {
      v119 = v361[257];
    }

    else
    {
      v119 = 0;
    }

    v120 = v118 ^ 1;
  }

  else
  {
    sub_258DE2184((v115 + 106), &qword_27F989868, &unk_258F12D70);
    v119 = 0;
    v120 = 1;
  }

  v115[206] = 0xD00000000000002BLL;
  v115[207] = 0x8000000258F18AF0;
  sub_258F0AA80();
  if (*(v57 + 16) && (v121 = sub_258E2EA2C((v115 + 82)), (v122 & 1) != 0))
  {
    sub_258DE4090(*(v57 + 56) + 32 * v121, v339);
  }

  else
  {
    *v339 = 0u;
    *(v361 + 78) = 0u;
  }

  sub_258E0F590((v115 + 82));
  if (v115[157])
  {
    v123 = swift_dynamicCast();
    if (v123)
    {
      v124 = v361[256];
    }

    else
    {
      v124 = 0;
    }

    v125 = v123 ^ 1;
  }

  else
  {
    sub_258DE2184(v339, &qword_27F989868, &unk_258F12D70);
    v124 = 0;
    v125 = 1;
  }

  v321 = v125;
  v115[222] = 0xD000000000000016;
  v115[223] = 0x8000000258F1BA60;
  sub_258F0AA80();
  sub_258E262F8((v115 + 97), v57, v115 + 61);
  sub_258E0F590((v115 + 97));
  v325 = v120;
  v323 = v124;
  if (v115[125])
  {
    if (swift_dynamicCast())
    {
      v126 = v115[190];
      v127 = v115[191];

      v128._countAndFlagsBits = v126;
      v128._object = v127;
      SiriReponseCategory.init(rawValue:)(v128);
      if (v362 == 21)
      {
        goto LABEL_412;
      }

      LOBYTE(v363[0]) = v362;
      v129 = _s16MetricsFramework04SiriA16CalculatorHelperO33convertToSISchemaResponseCategory8categorySo0hiJ0VAA0c7ReponseJ0O_tFZ_0(v363);
      v130 = 0;
      goto LABEL_99;
    }
  }

  else
  {
    sub_258DE2184((v115 + 122), &qword_27F989868, &unk_258F12D70);
  }

  v131 = sub_258F0A350();
  v132 = sub_258F0A820();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 0;
    _os_log_impl(&dword_258DD8000, v131, v132, "observed NilResponseCategory", v133, 2u);
    MEMORY[0x259C9EF40](v133, -1, -1);
  }

  v68 = __OFADD__(v310++, 1);
  if (v68)
  {
    goto LABEL_406;
  }

  v129 = 0;
  v130 = 1;
LABEL_99:
  v115[218] = 0x6974756F725F6569;
  v115[219] = 0xEA0000000000676ELL;
  sub_258F0AA80();
  sub_258E262F8((v115 + 2), v57, v115 + 89);
  sub_258E0F590((v115 + 2));
  v313 = v119;
  if (v115[181])
  {
    if (swift_dynamicCast())
    {
      v134 = _s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(v115[252], v115[253]);

      goto LABEL_106;
    }
  }

  else
  {
    sub_258DE2184((v115 + 178), &qword_27F989868, &unk_258F12D70);
  }

  v135 = sub_258F0A350();
  v136 = sub_258F0A800();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    *v137 = 0;
    _os_log_impl(&dword_258DD8000, v135, v136, "No ieRouting found.", v137, 2u);
    MEMORY[0x259C9EF40](v137, -1, -1);
  }

  v134 = 0;
LABEL_106:
  v115[216] = 0xD000000000000011;
  v115[217] = 0x8000000258F1BA80;
  sub_258F0AA80();
  sub_258E262F8((v115 + 92), v57, v115 + 59);
  sub_258E0F590((v115 + 92));
  v319 = v129;
  v317 = v130;
  v315 = v134;
  if (!v115[121])
  {
    sub_258DE2184((v115 + 118), &qword_27F989868, &unk_258F12D70);
    goto LABEL_111;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_111:
    v142 = 0;
    v312 = 1;
    goto LABEL_319;
  }

  v138 = v115[250];
  v139 = v115[251];
  v140 = sub_258F0A4E0();

  v141 = v140;
  if ([v141 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"])
  {
    v142 = 0;
  }

  else if ([v141 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
  {
    v142 = 1;
  }

  else if ([v141 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
  {
    v142 = 2;
  }

  else if ([v141 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
  {
    v142 = 3;
  }

  else if ([v141 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
  {
    v142 = 4;
  }

  else if ([v141 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
  {
    v142 = 5;
  }

  else if ([v141 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
  {
    v142 = 6;
  }

  else if ([v141 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
  {
    v142 = 7;
  }

  else if ([v141 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
  {
    v142 = 8;
  }

  else if ([v141 isEqualToString:@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON"])
  {
    v142 = 9;
  }

  else if ([v141 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
  {
    v142 = 10;
  }

  else if ([v141 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
  {
    v142 = 11;
  }

  else
  {
    if ([v141 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
    {
      v142 = 12;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
    {
      v142 = 13;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
    {
      v142 = 14;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
    {
      v142 = 15;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
    {
      v142 = 16;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
    {
      v142 = 17;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
    {
      v142 = 18;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
    {
      v142 = 19;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
    {
      v142 = 20;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
    {
      v142 = 21;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
    {
      v142 = 22;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
    {
      v142 = 23;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
    {
      v142 = 24;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
    {
      v142 = 25;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
    {
      v142 = 26;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
    {
      v142 = 27;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
    {
      v142 = 28;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
    {
      v142 = 29;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
    {
      v142 = 30;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
    {
      v142 = 31;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
    {
      v142 = 32;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
    {
      v142 = 33;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
    {
      v142 = 34;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
    {
      v142 = 35;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
    {
      v142 = 36;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
    {
      v142 = 37;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
    {
      v142 = 38;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
    {
      v142 = 39;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
    {
      v142 = 40;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
    {
      v142 = 41;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
    {
      v142 = 42;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
    {
      v142 = 43;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
    {
      v142 = 44;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
    {
      v142 = 45;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
    {
      v142 = 46;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
    {
      v142 = 47;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
    {
      v142 = 48;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
    {
      v142 = 49;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
    {
      v142 = 50;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
    {
      v142 = 51;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
    {
      v142 = 52;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
    {
      v142 = 53;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
    {
      v142 = 54;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
    {
      v142 = 55;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
    {
      v142 = 56;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
    {
      v142 = 57;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
    {
      v142 = 58;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
    {
      v142 = 59;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
    {
      v142 = 60;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
    {
      v142 = 61;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
    {
      v142 = 62;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
    {
      v142 = 63;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
    {
      v142 = 64;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
    {
      v142 = 65;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v142 = 66;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
    {
      v142 = 67;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
    {
      v142 = 68;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
    {
      v142 = 69;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
    {
      v142 = 70;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
    {
      v142 = 71;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
    {
      v142 = 72;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
    {
      v142 = 73;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
    {
      v142 = 74;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
    {
      v142 = 75;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
    {
      v142 = 76;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
    {
      v142 = 77;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
    {
      v142 = 78;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
    {
      v142 = 79;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
    {
      v142 = 80;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
    {
      v142 = 81;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
    {
      v142 = 82;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
    {
      v142 = 83;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
    {
      v142 = 84;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
    {
      v142 = 85;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
    {
      v142 = 87;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
    {
      v142 = 88;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
    {
      v142 = 89;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
    {
      v142 = 90;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
    {
      v142 = 91;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
    {
      v142 = 92;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
    {
      v142 = 93;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
    {
      v142 = 94;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
    {
      v142 = 95;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
    {
      v142 = 96;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
    {
      v142 = 97;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
    {
      v142 = 98;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
    {
      v142 = 99;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
    {
      v142 = 100;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
    {
      v142 = 101;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
    {
      v142 = 102;
    }

    else if ([v141 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
    {
      v142 = 103;
    }

    else
    {
      v142 = 0;
    }

    v115 = v361;
  }

  v312 = 0;
LABEL_319:
  v143 = v115[290];
  v144 = v115[277];
  v145 = v115[275];
  v146 = v115[273];
  (*(v344 + 16))(v146, v301 + v302, v353);
  v349(v146, 0, 1, v353);
  sub_258DE20C0(v144, v146 + v336[5], &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(v145, v146 + v336[6], &qword_27F988730, &unk_258F0F8E0);
  sub_258F099E0();
  if ((*&v147 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v147 <= -1.0)
    {
      goto LABEL_403;
    }

    if (v147 >= 1.84467441e19)
    {
      goto LABEL_404;
    }

    if (!is_mul_ok(v147, 0x3E8uLL))
    {
      goto LABEL_405;
    }

    v354 = v142;
    v148 = 1000 * v147;
    v149 = v115[280];
    v150 = v115[279];
    v151 = v115[273];
    v152 = [objc_opt_self() sharedPreferences];
    v153 = [v152 longLivedIdentifierUploadingEnabled];

    v154 = v151 + v336[7];
    *v154 = v148;
    *(v154 + 8) = 0;
    *(v151 + v336[8]) = v328;
    v155 = v151 + v336[9];
    *v155 = v313;
    *(v155 + 8) = v325;
    v156 = v151 + v336[10];
    *v156 = v323;
    *(v156 + 8) = v321;
    v157 = v151 + v336[11];
    *v157 = 0;
    *(v157 + 4) = 1;
    *(v151 + v336[12]) = v153 ^ 1;
    v158 = type metadata accessor for DeviceUsageMetricsBuilderImpl(0);
    v159 = *(v158 + 48);
    v160 = *(v158 + 52);
    swift_allocObject();
    v161 = DeviceUsageMetricsBuilderImpl.init()();
    sub_258DE20C0(v149, v150, &qword_27F988730, &unk_258F0F8E0);
    v162 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId;
    swift_beginAccess();
    sub_258E2EA70(v150, v161 + v162, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    v115[204] = 0x5F746375646F7270;
    v115[205] = 0xEA00000000006469;
    sub_258F0AA80();
    sub_258E262F8((v115 + 87), v57, v115 + 67);
    sub_258E0F590((v115 + 87));
    if (v115[137])
    {
      if (swift_dynamicCast())
      {
        v163 = v115[248];
        v164 = v115[249];
        if (v163 == 0x4E41545349535341 && v164 == 0xE900000000000054 || (v165 = v115[248], v166 = v115[249], (sub_258F0AD80() & 1) != 0))
        {

          v167 = 1;
LABEL_331:
          v168 = v115[273];
          v169 = v115[271];
          v170 = v115[267];
          v171 = v115[266];
          *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId) = v167;
          sub_258E7F2AC(v168, v170, type metadata accessor for EventMetadata);
          (*v299)(v170, 0, 1, v169);
          sub_258E2EAD8(v170, v171, &qword_27F9894E0, &unk_258F106A0);
          v172 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata;
          swift_beginAccess();
          sub_258E2EA70(v171, v161 + v172, &qword_27F9894E0, &unk_258F106A0);
          swift_endAccess();
          v115[194] = 0x745F656369766564;
          v115[195] = 0xEB00000000657079;
          sub_258F0AA80();
          sub_258E262F8((v115 + 77), v57, v115 + 75);
          sub_258E0F590((v115 + 77));
          if (v115[153])
          {
            v173 = swift_dynamicCast();
            v174 = v115[246];
            v175 = v115[247];
            if (!v173)
            {
              v174 = 0;
              v175 = 0;
            }
          }

          else
          {
            sub_258DE2184((v115 + 150), &qword_27F989868, &unk_258F12D70);
            v174 = 0;
            v175 = 0;
          }

          v176 = (v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType);
          v177 = *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType + 8);
          *v176 = v174;
          v176[1] = v175;

          strcpy(v115 + 1680, "system_build");
          *(v115 + 1693) = 0;
          *(v115 + 847) = -5120;
          sub_258F0AA80();
          sub_258E262F8((v115 + 72), v57, v115 + 81);
          sub_258E0F590((v115 + 72));
          if (v115[165])
          {
            v178 = swift_dynamicCast();
            v179 = v115[244];
            v180 = v115[245];
            if (!v178)
            {
              v179 = 0;
              v180 = 0;
            }
          }

          else
          {
            sub_258DE2184((v115 + 162), &qword_27F989868, &unk_258F12D70);
            v179 = 0;
            v180 = 0;
          }

          v181 = v115[282];
          v182 = (v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild);
          v183 = *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild + 8);
          *v182 = v179;
          v182[1] = v180;

          v184 = *(v332 + 44);
          v185 = v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode;
          *v185 = *(v332 + 40);
          *(v185 + 4) = v184;
          v186 = *(v332 + 12);
          v187 = v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus;
          *v187 = *(v332 + 8);
          *(v187 + 4) = v186;
          v188 = *(v332 + 32);
          v189 = *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale);
          *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale) = v188;

          v190 = *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale);
          *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale) = v330;
          v191 = v188;

          v192 = *(v332 + 4);
          v193 = v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface;
          *v193 = *v181;
          *(v193 + 4) = v192;
          v115[188] = 0xD000000000000012;
          v115[189] = 0x8000000258F1A600;
          v350 = v330;
          sub_258F0AA80();
          sub_258E262F8((v115 + 62), v57, v115 + 87);
          sub_258E0F590((v115 + 62));
          if (v115[177])
          {
            v194 = swift_dynamicCast();
            v195 = v115[242];
            v196 = v115[243];
            if (!v194)
            {
              v195 = 0;
              v196 = 0;
            }
          }

          else
          {
            sub_258DE2184((v115 + 174), &qword_27F989868, &unk_258F12D70);
            v195 = 0;
            v196 = 0;
          }

          v197 = (v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId);
          v198 = *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId + 8);
          *v197 = v195;
          v197[1] = v196;

          v115[228] = 0xD000000000000013;
          v115[229] = 0x8000000258F1A620;
          sub_258F0AA80();
          sub_258E262F8((v115 + 57), v57, v115 + 85);
          sub_258E0F590((v115 + 57));
          if (v115[173])
          {
            v199 = swift_dynamicCast();
            v200 = v115[240];
            v201 = v115[241];
            if (!v199)
            {
              v200 = 0;
              v201 = 0;
            }
          }

          else
          {
            sub_258DE2184((v115 + 170), &qword_27F989868, &unk_258F12D70);
            v200 = 0;
            v201 = 0;
          }

          v202 = (v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId);
          v203 = *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId + 8);
          *v202 = v200;
          v202[1] = v201;

          v204 = *(v332 + 20);
          v205 = v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation;
          *v205 = *(v332 + 16);
          *(v205 + 4) = v204;
          v206 = *(v332 + 28);
          v207 = v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
          *v207 = *(v332 + 24);
          *(v207 + 4) = v206;
          v115[196] = 0x616D6F645F627573;
          v115[197] = 0xEA00000000006E69;
          sub_258F0AA80();
          sub_258E262F8((v115 + 47), v57, v115 + 83);
          sub_258E0F590((v115 + 47));
          if (v115[169])
          {
            v208 = swift_dynamicCast();
            v209 = v115[238];
            v210 = v115[239];
            if (!v208)
            {
              v209 = 0;
              v210 = 0;
            }
          }

          else
          {
            sub_258DE2184((v115 + 166), &qword_27F989868, &unk_258F12D70);
            v209 = 0;
            v210 = 0;
          }

          v211 = (v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain);
          v212 = *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain + 8);
          *v211 = v209;
          v211[1] = v210;

          v115[202] = 0x746E635F6E727574;
          v115[203] = 0xE800000000000000;
          sub_258F0AA80();
          sub_258E262F8((v115 + 42), v57, v115 + 73);
          sub_258E0F590((v115 + 42));
          if (v115[149])
          {
            v213 = swift_dynamicCast();
            v214 = *(v361 + 598);
            if (!v213)
            {
              v214 = 0;
            }

            v215 = v213 ^ 1;
          }

          else
          {
            sub_258DE2184((v115 + 146), &qword_27F989868, &unk_258F12D70);
            v214 = 0;
            v215 = 1;
          }

          v216 = v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
          *v216 = v214;
          *(v216 + 4) = v215;
          strcpy(v115 + 1664, "user_turn_cnt");
          *(v115 + 839) = -4864;
          sub_258F0AA80();
          sub_258E262F8((v115 + 32), v57, v115 + 71);
          sub_258E0F590((v115 + 32));
          if (v115[145])
          {
            v217 = swift_dynamicCast();
            v218 = *(v361 + 599);
            if (!v217)
            {
              v218 = 0;
            }

            v219 = v217 ^ 1;
          }

          else
          {
            sub_258DE2184((v115 + 142), &qword_27F989868, &unk_258F12D70);
            v218 = 0;
            v219 = 1;
          }

          v220 = v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
          *v220 = v218;
          *(v220 + 4) = v219;
          strcpy(v115 + 1712, "asr_turn_cnt");
          *(v115 + 1725) = 0;
          *(v115 + 863) = -5120;
          sub_258F0AA80();
          sub_258E262F8((v115 + 27), v57, v115 + 65);
          sub_258E0F590((v115 + 27));
          if (v115[133])
          {
            v221 = swift_dynamicCast();
            v222 = *(v361 + 600);
            if (!v221)
            {
              v222 = 0;
            }

            v223 = v221 ^ 1;
          }

          else
          {
            sub_258DE2184((v115 + 130), &qword_27F989868, &unk_258F12D70);
            v222 = 0;
            v223 = 1;
          }

          v224 = v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrTurnCount;
          *v224 = v222;
          *(v224 + 4) = v223;
          v115[220] = 0xD000000000000014;
          v115[221] = 0x8000000258F1E240;
          sub_258F0AA80();
          sub_258E262F8((v115 + 17), v57, v115 + 63);
          sub_258E0F590((v115 + 17));
          if (v115[129])
          {
            v225 = swift_dynamicCast();
            v226 = v115[230];
            v227 = v115[231];
            if (!v225)
            {
              v226 = 0;
              v227 = 0;
            }
          }

          else
          {
            sub_258DE2184((v115 + 126), &qword_27F989868, &unk_258F12D70);
            v226 = 0;
            v227 = 0;
          }

          v228 = v115[282];
          v229 = (v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId);
          v230 = *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId + 8);
          *v229 = v226;
          v229[1] = v227;

          v231 = v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
          *v231 = v319;
          *(v231 + 4) = v317;
          v232 = *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds);
          *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds) = *(v228 + *(v300 + 44));

          v115[226] = 0xD00000000000001BLL;
          v115[227] = 0x8000000258F1BAA0;

          sub_258F0AA80();
          sub_258E262F8((v115 + 12), v57, v115 + 55);

          sub_258E0F590((v115 + 12));
          if (v115[113])
          {
            v233 = swift_dynamicCast();
            v234 = *(v115 + 2404);
            if (!v233)
            {
              v234 = 2;
            }
          }

          else
          {
            sub_258DE2184((v115 + 110), &qword_27F989868, &unk_258F12D70);
            v234 = 2;
          }

          v235 = v334;
          v236 = v115[270];
          v237 = v115[269];
          *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest) = v234;
          v238 = *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting);
          *(v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting) = v315;

          v239 = v161 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
          *v239 = v354;
          *(v239 + 4) = v312;
          sub_258E4D51C(v236);

          sub_258E7F2AC(v236, v237, type metadata accessor for DeviceUsageMetrics);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v235 = sub_258DE2968(0, v334[2] + 1, 1, v334);
          }

          v241 = v235[2];
          v240 = v235[3];
          if (v241 >= v240 >> 1)
          {
            v334 = sub_258DE2968(v240 > 1, v241 + 1, 1, v235);
          }

          else
          {
            v334 = v235;
          }

          v242 = v115[282];
          v243 = v115[280];
          v244 = v115[277];
          v245 = v115[275];
          v246 = v115[273];
          v247 = v361[270];
          v248 = v361[269];

          v249 = v247;
          v55 = v361;
          sub_258E7F378(v249, type metadata accessor for DeviceUsageMetrics);
          sub_258E7F378(v246, type metadata accessor for EventMetadata);
          sub_258DE2184(v245, &qword_27F988730, &unk_258F0F8E0);
          sub_258DE2184(v244, &qword_27F988730, &unk_258F0F8E0);
          sub_258DE2184(v243, &qword_27F988730, &unk_258F0F8E0);
          v334[2] = v241 + 1;
          sub_258E7F314(v248, v334 + ((*(v298 + 80) + 32) & ~*(v298 + 80)) + *(v298 + 72) * v241);
          sub_258E7F378(v242, type metadata accessor for CommonDigestElements);
          goto LABEL_22;
        }

        if (v163 == 0x4F49544154434944 && v164 == 0xE90000000000004ELL)
        {

          v167 = 2;
          goto LABEL_331;
        }

        v250 = sub_258F0AD80();

        if (v250)
        {
          v167 = 2;
          goto LABEL_331;
        }
      }
    }

    else
    {
      sub_258DE2184((v115 + 134), &qword_27F989868, &unk_258F12D70);
    }

    v167 = 0;
    goto LABEL_331;
  }

  __break(1u);
LABEL_403:
  __break(1u);
LABEL_404:
  __break(1u);
LABEL_405:
  __break(1u);
LABEL_406:
  __break(1u);
LABEL_407:
  __break(1u);
LABEL_408:
  __break(1u);
LABEL_409:
  __break(1u);
LABEL_410:
  __break(1u);
LABEL_411:
  __break(1u);
LABEL_412:
  __break(1u);
}

uint64_t sub_258EC93DC(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v25 = a2;
  v5 = sub_258F0A300();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_258F0A2C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_258F0A2D0();
  sub_258F0A310();
  v24 = sub_258F0A850();
  result = sub_258F0A900();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v12 + 8))(v16, v11);
  }

  if ((a4 & 1) == 0)
  {
    v19 = v25;
    if (v25)
    {
LABEL_9:

      sub_258F0A340();

      if ((*(v6 + 88))(v10, v5) == *MEMORY[0x277D85B00])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v10, v5);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_258F0A2B0();
      _os_signpost_emit_with_name_impl(&dword_258DD8000, v17, v24, v22, v19, v20, v21, 2u);
      MEMORY[0x259C9EF40](v21, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v25 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v25 & 0xFFFFF800) != 0xD800)
  {
    if (v25 >> 16 <= 0x10)
    {
      v19 = &v26;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t SiriDigestMetricsCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bugReporter);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_analyticsEventSubmitter));
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bookmarkService));
  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_biomeResultsFactory);

  v5 = OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_oddId;
  v6 = sub_258F09A70();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t SiriDigestMetricsCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bugReporter);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_analyticsEventSubmitter));
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_bookmarkService));
  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_biomeResultsFactory);

  v5 = OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_oddId;
  v6 = sub_258F09A70();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EC9938@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework27SiriDigestMetricsCalculator_logger;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_258EC99C0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258EC55DC(a1);
}

id sub_258EC9A5C()
{
  result = sub_258EC9A7C();
  qword_280CC6068 = result;
  return result;
}

id sub_258EC9A7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989390, &unk_258F159D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v11 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v6 = sub_258F0A4E0();
  [v5 setDateFormat_];

  sub_258F09B10();
  v7 = sub_258F09B40();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v4, 1, v7) != 1)
  {
    v9 = sub_258F09B20();
    (*(v8 + 8))(v4, v7);
  }

  [v5 setTimeZone_];

  return v5;
}

uint64_t sub_258EC9BFC(uint64_t a1)
{
  result = sub_258EC9C84(&qword_27F98A608);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EC9C40(uint64_t a1)
{
  result = sub_258EC9C84(&qword_27F98A610);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EC9C84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriDigestMetricsCalculator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258EC9CE0()
{
  v0 = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_258DE3B74();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_258F09A70();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of SiriDigestMetricsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t SiriDigestMetricsDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsDataProvider_logger;
  v7 = sub_258F0A370();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t SiriDigestMetricsDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258ECA06C()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: SiriDigestMetricsDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t SiriDigestMetricsDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SiriDigestMetricsDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258ECA248()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258ECA04C();
}

uint64_t type metadata accessor for SiriDigestMetricsDataProvider()
{
  result = qword_27F98A620;
  if (!qword_27F98A620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of SiriDigestMetricsDataProvider.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t sub_258ECA540(uint64_t a1)
{
  v4 = *(**v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t dispatch thunk of SiriDigestMetricsReporter.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t SiriDigestMetricsSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  v9 = sub_258F0A370();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_reportingService) = a2;
  return v7;
}

uint64_t sub_258ECA868(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_258ECA8D0()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_258ECA918(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SiriDigestMetricsSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
  v5 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_reportingService) = a2;
  return v2;
}

uint64_t sub_258ECAA64(uint64_t a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = *a1;
  *(v2 + 88) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258ECAA94, 0, 0);
}

uint64_t sub_258ECAA94()
{
  v14 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = v1;
  v3 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  *(v0 + 96) = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  v4 = sub_258ECCB98(&v12, v2 + v3);
  v5 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents;
  *(v0 + 104) = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = v4;

  v7 = sub_258F0A350();
  v8 = sub_258F0A810();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_258DD8000, v7, v8, "#SiriDigestMetricsSELFReporter: Start Emitting extension execution metadata event", v9, 2u);
    MEMORY[0x259C9EF40](v9, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_258ECAC18;

  return sub_258E6422C(1, 1);
}

uint64_t sub_258ECAC18(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_258ECAD18, 0, 0);
}

uint64_t sub_258ECAD18()
{
  v1 = v0[15];
  v2 = v0[8];
  if (v1)
  {
    v3 = v0[13];
    swift_beginAccess();
    v4 = v1;
    MEMORY[0x259C9DF50]();
    if (*((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = v0[8] + v0[13];
      v27 = *((*(v2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_258F0A6D0();
    }

    v5 = v0[12];
    v6 = v0[8] + v0[13];
    sub_258F0A700();
    swift_endAccess();
    v7 = sub_258F0A350();
    v8 = sub_258F0A810();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_258DD8000, v7, v8, "#SiriDigestMetricsSELFReporter: Emitting extension execution metadata event", v9, 2u);
      MEMORY[0x259C9EF40](v9, -1, -1);
    }
  }

  else
  {
    v10 = v2 + v0[12];
    v7 = sub_258F0A350();
    v11 = sub_258F0A820();
    if (os_log_type_enabled(v7, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_258DD8000, v7, v11, "Unable to create execution metadata event", v12, 2u);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }
  }

  v13 = *(v0[8] + v0[13]);
  v0[16] = v13;
  if (v13 >> 62)
  {
    v14 = sub_258F0AA20();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_reportingService;
  v0[17] = v14;
  v0[18] = v15;

  v17 = v0[16];
  if (v14)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x259C9E3B0](0);
      v15 = v0[18];
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v18 = *(v17 + 32);
    }

    v0[19] = v18;
    v0[20] = 1;
    v19 = v0[12];
    v20 = v0[8];
    v21 = *(v20 + v15);
    v22 = v18;
    v23 = swift_task_alloc();
    v0[21] = v23;
    *v23 = v0;
    v23[1] = sub_258ECB014;

    return sub_258EB5738(v22, v20 + v19);
  }

  else
  {
    v24 = v0[16];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_258ECB014()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);

    v5 = sub_258ECB280;
  }

  else
  {
    v5 = sub_258ECB130;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_258ECB130()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);

  if (v1 == v2)
  {
    v3 = *(v0 + 128);

    v4 = *(v0 + 8);

    v4();
    return;
  }

  v5 = *(v0 + 160);
  v6 = *(v0 + 128);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x259C9E3B0](*(v0 + 160));
  }

  else
  {
    if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v7 = *(v6 + 8 * v5 + 32);
  }

  v8 = v7;
  *(v0 + 152) = v7;
  *(v0 + 160) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v0 + 96);
  v10 = *(v0 + 64);
  v11 = *(v10 + *(v0 + 144));
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_258ECB014;

  sub_258EB5738(v8, v10 + v9);
}

uint64_t sub_258ECB280()
{
  v1 = v0[8] + v0[12];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[22];
  v6 = v0[19];

  swift_willThrow();
  v7 = v0[1];
  v8 = v0[22];

  return v7();
}

uint64_t sub_258ECB36C()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_reportingService);
}

uint64_t SiriDigestMetricsSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents);

  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_reportingService);

  return v0;
}

uint64_t SiriDigestMetricsSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_oddSiriClientEvents);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29SiriDigestMetricsSELFReporter_reportingService);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_258ECB570(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DeviceUsageMetrics(0);
    v5 = (a1 + *(v4 + 24));
    if (v5[1])
    {
      v6 = *v5;
      v7 = sub_258F0A4E0();
      [v3 setDeviceType_];
    }

    v8 = (a1 + *(v4 + 28));
    if ((v8[1] & 1) == 0)
    {
      [v3 setProgramCode_];
    }
  }

  else
  {
    v9 = sub_258F0A350();
    v10 = sub_258F0A820();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_258DD8000, v9, v10, "Unable to compose ODDSiriSchemaODDFixedDimensions SELF Event", v11, 2u);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_258ECB69C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59248]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DeviceUsageMetrics(0);
    v5 = (a1 + v4[9]);
    if (v5[1])
    {
      v6 = *v5;
      v7 = sub_258F0A4E0();
      [v3 setSystemBuild_];
    }

    v8 = (a1 + v4[10]);
    if ((v8[1] & 1) == 0)
    {
      [v3 setDataSharingOptInStatus_];
    }

    v9 = (a1 + v4[11]);
    if ((v9[1] & 1) == 0)
    {
      [v3 setViewInterface_];
    }

    v10 = (a1 + v4[12]);
    if (v10[1])
    {
      v11 = *v10;
      v12 = sub_258F0A4E0();
      [v3 setAudioInterfaceVendorId_];
    }

    v13 = (a1 + v4[13]);
    if (v13[1])
    {
      v14 = *v13;
      v15 = sub_258F0A4E0();
      [v3 setAudioInterfaceProductId_];
    }

    v16 = (a1 + v4[14]);
    if ((v16[1] & 1) == 0)
    {
      [v3 setAsrLocation_];
    }

    v17 = (a1 + v4[15]);
    if ((v17[1] & 1) == 0)
    {
      [v3 setNlLocation_];
    }

    if (*(a1 + v4[16]))
    {
      [v3 setSiriInputLocale_];
    }

    v18 = (a1 + v4[18]);
    if (v18[1])
    {
      v19 = *v18;
      v20 = sub_258F0A4E0();
      [v3 setSubDomain_];
    }

    v21 = (a1 + v4[34]);
    if ((v21[1] & 1) == 0)
    {
      [v3 setResponseCategory_];
    }

    v22 = *(a1 + v4[36]);
    if (v22 != 2)
    {
      [v3 setIsIntelligenceEngineRequest_];
    }

    v23 = *(a1 + v4[37]);
    if (v23)
    {
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = (v23 + 32);
        do
        {
          v26 = *v25++;
          [v3 addRouting_];
          --v24;
        }

        while (v24);
      }

      v27 = v3;
      v28 = sub_258F0A350();
      v29 = sub_258F0A800();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = [v27 routingCount];

        _os_log_impl(&dword_258DD8000, v28, v29, "#MetricsSELFReporter: oddAssistantDimensions.IERouting count is %ld", v30, 0xCu);
        MEMORY[0x259C9EF40](v30, -1, -1);
      }

      else
      {

        v28 = v27;
      }
    }

    v34 = (a1 + v4[38]);
    if ((v34[1] & 1) == 0)
    {
      [v3 setInvocationSource_];
    }
  }

  else
  {
    v31 = sub_258F0A350();
    v32 = sub_258F0A820();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_258DD8000, v31, v32, "Unable to compose ODDSiriSchemaODDAssistantDimensions SELF Event", v33, 2u);
      MEMORY[0x259C9EF40](v33, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_258ECBA38(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59400]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DeviceUsageMetrics(0);
    v5 = (a1 + *(v4 + 76));
    if ((v5[1] & 1) == 0)
    {
      [v3 setTotalTurnCount_];
    }

    v6 = (a1 + *(v4 + 80));
    if ((v6[1] & 1) == 0)
    {
      [v3 setValidTurnCount_];
    }
  }

  else
  {
    v7 = sub_258F0A350();
    v8 = sub_258F0A820();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_258DD8000, v7, v8, "Unable to compose ODDSiriSchemaODDTurnCounts SELF Event", v9, 2u);
      MEMORY[0x259C9EF40](v9, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_258ECBB54(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D593F0]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DeviceUsageMetrics(0);
    v5 = (a1 + v4[21]);
    if ((v5[1] & 1) == 0)
    {
      [v3 setSiriTasksStarted_];
    }

    v6 = (a1 + v4[22]);
    if ((v6[1] & 1) == 0)
    {
      [v3 setSiriTasksCompleted_];
    }

    v7 = (a1 + v4[23]);
    if ((v7[1] & 1) == 0)
    {
      [v3 setFlowTasksStarted_];
    }

    v8 = (a1 + v4[24]);
    if ((v8[1] & 1) == 0)
    {
      [v3 setFlowTasksCompleted_];
    }
  }

  else
  {
    v9 = sub_258F0A350();
    v10 = sub_258F0A820();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_258DD8000, v9, v10, "Unable to compose ODDSiriSchemaODDTaskCounts SELF Event", v11, 2u);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_258ECBCB8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D593A8]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DeviceUsageMetrics(0);
    v5 = (a1 + v4[25]);
    if ((v5[1] & 1) == 0)
    {
      [v3 setReliabilityRequestCount_];
    }

    v6 = (a1 + v4[26]);
    if ((v6[1] & 1) == 0)
    {
      [v3 setReliabilityTurnCount_];
    }

    v7 = (a1 + v4[27]);
    if ((v7[1] & 1) == 0)
    {
      [v3 setClientErrorCount_];
    }

    v8 = (a1 + v4[28]);
    if ((v8[1] & 1) == 0)
    {
      [v3 setUndesiredResponseCount_];
    }

    v9 = (a1 + v4[29]);
    if ((v9[1] & 1) == 0)
    {
      [v3 setFatalResponseCount_];
    }

    v10 = (a1 + v4[30]);
    if ((v10[1] & 1) == 0)
    {
      [v3 setFailureResponseCount_];
    }

    v11 = (a1 + v4[31]);
    if ((v11[1] & 1) == 0)
    {
      [v3 setSiriUnavailableResponseCount_];
    }
  }

  else
  {
    v12 = sub_258F0A350();
    v13 = sub_258F0A820();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_258DD8000, v12, v13, "Unable to compose ODDSiriSchemaODDReliabilityCounts SELF Event", v14, 2u);
      MEMORY[0x259C9EF40](v14, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_258ECBE88(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59220]) init];
  if (v2)
  {
    v3 = v2;
    v4 = sub_258ECBA38(a1);
    [v3 setTurnCounts_];

    v5 = sub_258ECBB54(a1);
    [v3 setTaskCounts_];

    v6 = sub_258ECBCB8(a1);
    [v3 setReliabilityCounts_];
  }

  else
  {
    v6 = sub_258F0A350();
    v7 = sub_258F0A820();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_258DD8000, v6, v7, "Unable to compose ODDSiriSchemaODDAssistantCounts SELF Event", v8, 2u);
      MEMORY[0x259C9EF40](v8, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

void *sub_258ECBFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D59240]) init];
  if (v10)
  {
    v11 = v10;
    v12 = sub_258ECB69C(a1);
    [v11 setDimensions_];

    v13 = sub_258ECBE88(a1);
    [v11 setCounts_];

    v14 = [objc_opt_self() sharedPreferences];
    v15 = [v14 longLivedIdentifierUploadingEnabled];

    if (v15)
    {
      v16 = *(a1 + *(type metadata accessor for DeviceUsageMetrics(0) + 140));
      if (v16)
      {
        v32 = a2;
        v17 = *(v16 + 16);
        if (v17)
        {
          v33 = *(v5 + 16);
          v18 = v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
          v19 = *(v5 + 72);
          v20 = (v5 + 8);
          do
          {
            v33(v9, v18, v4);
            v21 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v22 = sub_258F09A50();
            (*v20)(v9, v4);
            v23 = [v21 initWithNSUUID_];

            [v11 addTurnIds_];
            v18 += v19;
            --v17;
          }

          while (v17);
        }

        v24 = v11;
        v25 = sub_258F0A350();
        v26 = sub_258F0A800();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134217984;
          *(v27 + 4) = [v24 turnIdsCount];

          _os_log_impl(&dword_258DD8000, v25, v26, "#MetricsSELFReporter: Added %ld turnIds to ODDAssistantDigest.", v27, 0xCu);
          MEMORY[0x259C9EF40](v27, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v28 = sub_258F0A350();
    v29 = sub_258F0A820();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_258DD8000, v28, v29, "#MetricsSELFReporter: Unable to compose ODDSiriSchemaODDAssistantDigest SELF Event", v30, 2u);
      MEMORY[0x259C9EF40](v30, -1, -1);
    }

    return 0;
  }

  return v11;
}

void *sub_258ECC324(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59308]) init];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for DeviceUsageMetrics(0);
    v5 = (a1 + v4[9]);
    if (v5[1])
    {
      v6 = *v5;
      v7 = sub_258F0A4E0();
      [v3 setSystemBuild_];
    }

    v8 = (a1 + v4[10]);
    if ((v8[1] & 1) == 0)
    {
      [v3 setDataSharingOptInStatus_];
    }

    v9 = (a1 + v4[11]);
    if ((v9[1] & 1) == 0)
    {
      [v3 setViewInterface_];
    }

    v10 = (a1 + v4[12]);
    if (v10[1])
    {
      v11 = *v10;
      v12 = sub_258F0A4E0();
      [v3 setAudioInterfaceVendorId_];
    }

    v13 = (a1 + v4[13]);
    if (v13[1])
    {
      v14 = *v13;
      v15 = sub_258F0A4E0();
      [v3 setAudioInterfaceProductId_];
    }

    v16 = (a1 + v4[14]);
    if ((v16[1] & 1) == 0)
    {
      [v3 setAsrLocation_];
    }

    if (*(a1 + v4[17]))
    {
      [v3 setDictationLocale_];
    }

    v17 = (a1 + v4[38]);
    if ((v17[1] & 1) == 0)
    {
      [v3 setInvocationSource_];
    }
  }

  else
  {
    v18 = sub_258F0A350();
    v19 = sub_258F0A820();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_258DD8000, v18, v19, "Unable to compose ODDSiriSchemaODDDictationDimensions SELF Event", v20, 2u);
      MEMORY[0x259C9EF40](v20, -1, -1);
    }

    return 0;
  }

  return v3;
}

void *sub_258ECC540(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D592F0]) init];
  if (v2)
  {
    v3 = v2;
    v4 = sub_258ECBA38(a1);
    [v3 setTurnCounts_];
  }

  else
  {
    v4 = sub_258F0A350();
    v5 = sub_258F0A820();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_258DD8000, v4, v5, "Unable to compose ODDSiriSchemaODDDictationCounts SELF Event", v6, 2u);
      MEMORY[0x259C9EF40](v6, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

void *sub_258ECC62C(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D59300]) init];
  if (v10)
  {
    v11 = v10;
    v12 = sub_258ECC324(a1);
    [v11 setDimensions_];

    v13 = sub_258ECC540(a1);
    [v11 setCounts_];

    v14 = [objc_opt_self() sharedPreferences];
    v15 = [v14 longLivedIdentifierUploadingEnabled];

    if (v15)
    {
      v16 = *(a1 + *(type metadata accessor for DeviceUsageMetrics(0) + 140));
      if (v16)
      {
        v32 = a2;
        v17 = *(v16 + 16);
        if (v17)
        {
          v33 = *(v5 + 16);
          v18 = v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
          v19 = *(v5 + 72);
          v20 = (v5 + 8);
          do
          {
            v33(v9, v18, v4);
            v21 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v22 = sub_258F09A50();
            (*v20)(v9, v4);
            v23 = [v21 initWithNSUUID_];

            [v11 addTurnIds_];
            v18 += v19;
            --v17;
          }

          while (v17);
        }

        v24 = v11;
        v25 = sub_258F0A350();
        v26 = sub_258F0A800();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134217984;
          *(v27 + 4) = [v24 turnIdsCount];

          _os_log_impl(&dword_258DD8000, v25, v26, "#MetricsSELFReporter: Added %ld turnIds to ODDDictationDigest.", v27, 0xCu);
          MEMORY[0x259C9EF40](v27, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v28 = sub_258F0A350();
    v29 = sub_258F0A820();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_258DD8000, v28, v29, "Unable to compose ODDSiriSchemaODDDictationDigest SELF Event", v30, 2u);
      MEMORY[0x259C9EF40](v30, -1, -1);
    }

    return 0;
  }

  return v11;
}

NSObject *sub_258ECC98C(uint64_t a1, uint64_t a2, Class *a3, uint64_t (*a4)(uint64_t, uint64_t), const char *a5, const char *a6)
{
  v11 = [objc_allocWithZone(*a3) init];
  if (!v11)
  {
    v12 = sub_258F0A350();
    v20 = sub_258F0A820();
    if (os_log_type_enabled(v12, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_258DD8000, v12, v20, a6, v21, 2u);
      MEMORY[0x259C9EF40](v21, -1, -1);
    }

    goto LABEL_12;
  }

  v12 = v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    v22 = sub_258F0A350();
    v23 = sub_258F0A820();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_258DD8000, v22, v23, a5, v24, 2u);
      MEMORY[0x259C9EF40](v24, -1, -1);
    }

LABEL_12:
    return 0;
  }

  v14 = *(type metadata accessor for DeviceUsageMetrics(0) - 8);
  v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v16 = sub_258ECB570(v15);
  [v12 setFixedDimensions:v16];

  v17 = *(v14 + 72);
  do
  {
    v18 = a4(v15, a2);
    if (v18)
    {
      v19 = v18;
      [v12 addDigests:v18];
    }

    v15 += v17;
    --v13;
  }

  while (v13);
  return v12;
}

uint64_t sub_258ECCB98(uint64_t a1, uint64_t a2)
{
  v209 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A650, &unk_258F15C10);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v228 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v227 = &v209 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v209 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v209 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  v23 = &v209 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v209 - v25;
  v226 = type metadata accessor for EventMetadata(0);
  v27 = *(v226 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v226, v29);
  v234 = &v209 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v229 = &v209 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v235 = &v209 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v216 = &v209 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v220 = &v209 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v47 = &v209 - v46;
  v49 = MEMORY[0x28223BE20](v45, v48);
  v215 = &v209 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v210 = &v209 - v53;
  MEMORY[0x28223BE20](v52, v54);
  v221 = &v209 - v55;
  v56 = type metadata accessor for DeviceUsageMetrics(0);
  v57 = *(*(v56 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v56, v58);
  v213 = &v209 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v59, v61);
  v224 = &v209 - v63;
  v65 = MEMORY[0x28223BE20](v62, v64);
  v212 = &v209 - v66;
  v68 = MEMORY[0x28223BE20](v65, v67);
  v70 = &v209 - v69;
  MEMORY[0x28223BE20](v68, v71);
  v74 = &v209 - v73;
  v75 = *(a1 + 16);
  v233 = v75[2];
  if (!v233)
  {
    v205 = sub_258F0A350();
    v206 = sub_258F0A800();
    if (os_log_type_enabled(v205, v206))
    {
      v207 = swift_slowAlloc();
      *v207 = 0;
      _os_log_impl(&dword_258DD8000, v205, v206, "No On-Device Digest metrics available", v207, 2u);
      MEMORY[0x259C9EF40](v207, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v230 = v14;
  v76 = 0;
  v240 = MEMORY[0x277D84F90];
  v77 = *(v72 + 80);
  v238 = MEMORY[0x277D84F98];
  v239 = MEMORY[0x277D84F98];
  v211 = (v77 + 32) & ~v77;
  v232 = (v75 + v211);
  v225 = (v27 + 48);
  v78 = v27;
  v236 = v27;
  v219 = v23;
  v218 = v26;
  v222 = v47;
  v214 = v56;
  v79 = v72;
  v217 = v72;
  v223 = v70;
  v231 = v75;
  while (v76 < v75[2])
  {
    v80 = *(v79 + 72);
    sub_258E8BAD0(v232 + v80 * v76, v74, type metadata accessor for DeviceUsageMetrics);
    v81 = v74[*(v56 + 32)];
    switch(v81)
    {
      case 3:
        goto LABEL_3;
      case 2:
        v82 = v224;
        sub_258E8BAD0(v74, v224, type metadata accessor for DeviceUsageMetrics);
        v83 = v219;
        sub_258E9F57C(v82, v219);
        if ((*v225)(v83, 1, v226) == 1)
        {
          sub_258E8BB38(v82, type metadata accessor for DeviceUsageMetrics);
          sub_258E8BB38(v74, type metadata accessor for DeviceUsageMetrics);
          sub_258E4B7F0(v83);
          v78 = v236;
        }

        else
        {
          sub_258ECE464(v83, v47, type metadata accessor for EventMetadata);
          v84 = v238;
          if (!v238[2] || (sub_258E2EF70(v47), (v85 & 1) == 0))
          {
            v86 = v220;
            sub_258E8BAD0(v47, v220, type metadata accessor for EventMetadata);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v237[0] = v84;
            v88 = sub_258E2EF70(v86);
            v90 = *(v84 + 16);
            v91 = (v89 & 1) == 0;
            v92 = __OFADD__(v90, v91);
            v93 = v90 + v91;
            if (v92)
            {
              goto LABEL_109;
            }

            v94 = v89;
            if (*(v84 + 24) >= v93)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v139 = v88;
                sub_258ED8A68();
                v88 = v139;
                v79 = v217;
              }
            }

            else
            {
              sub_258ED60EC(v93, isUniquelyReferenced_nonNull_native);
              v88 = sub_258E2EF70(v220);
              if ((v94 & 1) != (v95 & 1))
              {
                goto LABEL_113;
              }
            }

            v47 = v222;
            v109 = v237[0];
            if (v94)
            {
              v110 = *(v237[0] + 56);
              v111 = *(v110 + 8 * v88);
              *(v110 + 8 * v88) = MEMORY[0x277D84F90];
            }

            else
            {
              *(v237[0] + 8 * (v88 >> 6) + 64) |= 1 << v88;
              v112 = v88;
              sub_258E8BAD0(v220, v109[6] + *(v236 + 72) * v88, type metadata accessor for EventMetadata);
              *(v109[7] + 8 * v112) = MEMORY[0x277D84F90];
              v113 = v109[2];
              v92 = __OFADD__(v113, 1);
              v114 = v113 + 1;
              if (v92)
              {
                goto LABEL_112;
              }

              v109[2] = v114;
              v79 = v217;
            }

            sub_258E8BB38(v220, type metadata accessor for EventMetadata);
            v238 = v109;
          }

          v115 = v47;
          v116 = v47;
          v117 = v216;
          sub_258E8BAD0(v115, v216, type metadata accessor for EventMetadata);
          v119 = sub_258ED02C4(v237, v117);
          if (*v118)
          {
            v120 = v118;
            sub_258E8BAD0(v224, v213, type metadata accessor for DeviceUsageMetrics);
            v121 = *v120;
            v122 = swift_isUniquelyReferenced_nonNull_native();
            *v120 = v121;
            if ((v122 & 1) == 0)
            {
              v121 = sub_258DE2968(0, v121[2] + 1, 1, v121);
              *v120 = v121;
            }

            v70 = v223;
            v124 = v121[2];
            v123 = v121[3];
            if (v124 >= v123 >> 1)
            {
              v121 = sub_258DE2968(v123 > 1, v124 + 1, 1, v121);
              *v120 = v121;
            }

            v26 = v218;
            v121[2] = v124 + 1;
            sub_258ECE464(v213, v121 + v211 + v124 * v80, type metadata accessor for DeviceUsageMetrics);
            v119(v237, 0);
            sub_258E8BB38(v216, type metadata accessor for EventMetadata);
            v47 = v222;
            sub_258E8BB38(v222, type metadata accessor for EventMetadata);
            sub_258E8BB38(v224, type metadata accessor for DeviceUsageMetrics);
            sub_258E8BB38(v74, type metadata accessor for DeviceUsageMetrics);
            v78 = v236;
LABEL_54:
            v56 = v214;
            v79 = v217;
            break;
          }

          v119(v237, 0);
          sub_258E8BB38(v117, type metadata accessor for EventMetadata);
          sub_258E8BB38(v116, type metadata accessor for EventMetadata);
          sub_258E8BB38(v224, type metadata accessor for DeviceUsageMetrics);
          sub_258E8BB38(v74, type metadata accessor for DeviceUsageMetrics);
          v78 = v236;
          v26 = v218;
          v47 = v116;
        }

        v70 = v223;
        break;
      case 1:
        sub_258E8BAD0(v74, v70, type metadata accessor for DeviceUsageMetrics);
        sub_258E9F57C(v70, v26);
        if ((*v225)(v26, 1, v226) != 1)
        {
          v96 = v221;
          sub_258ECE464(v26, v221, type metadata accessor for EventMetadata);
          v97 = v239;
          v98 = v210;
          if (!v239[2] || (sub_258E2EF70(v96), (v99 & 1) == 0))
          {
            sub_258E8BAD0(v96, v98, type metadata accessor for EventMetadata);
            v100 = swift_isUniquelyReferenced_nonNull_native();
            v237[0] = v97;
            v101 = sub_258E2EF70(v98);
            v103 = *(v97 + 16);
            v104 = (v102 & 1) == 0;
            v92 = __OFADD__(v103, v104);
            v105 = v103 + v104;
            if (v92)
            {
              goto LABEL_110;
            }

            v106 = v102;
            if (*(v97 + 24) >= v105)
            {
              v108 = v236;
              if ((v100 & 1) == 0)
              {
                v140 = v101;
                sub_258ED8A68();
                v108 = v236;
                v101 = v140;
              }
            }

            else
            {
              sub_258ED60EC(v105, v100);
              v101 = sub_258E2EF70(v98);
              if ((v106 & 1) != (v107 & 1))
              {
                goto LABEL_113;
              }

              v108 = v236;
            }

            v47 = v222;
            v125 = v237[0];
            if (v106)
            {
              v126 = *(v237[0] + 56);
              v127 = *(v126 + 8 * v101);
              *(v126 + 8 * v101) = MEMORY[0x277D84F90];

              sub_258E8BB38(v98, type metadata accessor for EventMetadata);
            }

            else
            {
              *(v237[0] + 8 * (v101 >> 6) + 64) |= 1 << v101;
              v128 = v101;
              sub_258E8BAD0(v98, v125[6] + *(v108 + 72) * v101, type metadata accessor for EventMetadata);
              *(v125[7] + 8 * v128) = MEMORY[0x277D84F90];
              sub_258E8BB38(v98, type metadata accessor for EventMetadata);
              v129 = v125[2];
              v92 = __OFADD__(v129, 1);
              v130 = v129 + 1;
              if (v92)
              {
                goto LABEL_111;
              }

              v125[2] = v130;
            }

            v239 = v125;
            v96 = v221;
          }

          v131 = v215;
          sub_258E8BAD0(v96, v215, type metadata accessor for EventMetadata);
          v133 = sub_258ED02C4(v237, v131);
          if (*v132)
          {
            v134 = v132;
            v70 = v223;
            sub_258E8BAD0(v223, v212, type metadata accessor for DeviceUsageMetrics);
            v135 = *v134;
            v136 = swift_isUniquelyReferenced_nonNull_native();
            *v134 = v135;
            if ((v136 & 1) == 0)
            {
              v135 = sub_258DE2968(0, v135[2] + 1, 1, v135);
              *v134 = v135;
            }

            v138 = v135[2];
            v137 = v135[3];
            if (v138 >= v137 >> 1)
            {
              v135 = sub_258DE2968(v137 > 1, v138 + 1, 1, v135);
              *v134 = v135;
            }

            v26 = v218;
            v135[2] = v138 + 1;
            sub_258ECE464(v212, v135 + v211 + v138 * v80, type metadata accessor for DeviceUsageMetrics);
            v133(v237, 0);
            sub_258E8BB38(v215, type metadata accessor for EventMetadata);
            sub_258E8BB38(v221, type metadata accessor for EventMetadata);
            sub_258E8BB38(v70, type metadata accessor for DeviceUsageMetrics);
            sub_258E8BB38(v74, type metadata accessor for DeviceUsageMetrics);
            v78 = v236;
            v47 = v222;
          }

          else
          {
            v133(v237, 0);
            sub_258E8BB38(v131, type metadata accessor for EventMetadata);
            sub_258E8BB38(v96, type metadata accessor for EventMetadata);
            v70 = v223;
            sub_258E8BB38(v223, type metadata accessor for DeviceUsageMetrics);
            sub_258E8BB38(v74, type metadata accessor for DeviceUsageMetrics);
            v78 = v236;
            v26 = v218;
          }

          goto LABEL_54;
        }

        sub_258E8BB38(v70, type metadata accessor for DeviceUsageMetrics);
        sub_258E8BB38(v74, type metadata accessor for DeviceUsageMetrics);
        sub_258E4B7F0(v26);
        v78 = v236;
        break;
      default:
LABEL_3:
        sub_258E8BB38(v74, type metadata accessor for DeviceUsageMetrics);
        break;
    }

    ++v76;
    v75 = v231;
    if (v233 == v76)
    {
      v141 = v239 + 8;
      v142 = 1 << *(v239 + 32);
      v143 = -1;
      if (v142 < 64)
      {
        v143 = ~(-1 << v142);
      }

      v144 = v143 & v239[8];
      v145 = (v142 + 63) >> 6;
      v232 = v239;

      v146 = 0;
      v226 = MEMORY[0x277D84F90];
      v233 = v17;
      while (1)
      {
        v147 = v146;
        if (!v144)
        {
          break;
        }

        v148 = v146;
LABEL_68:
        v150 = __clz(__rbit64(v144));
        v144 &= v144 - 1;
        v151 = v150 | (v148 << 6);
        v152 = v232;
        v153 = v235;
        sub_258E8BAD0(v232[6] + *(v78 + 72) * v151, v235, type metadata accessor for EventMetadata);
        v154 = *(v152[7] + 8 * v151);
        v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A658, &unk_258F15C20);
        v156 = *(v155 + 48);
        v157 = v153;
        v158 = v230;
        sub_258ECE464(v157, v230, type metadata accessor for EventMetadata);
        *&v158[v156] = v154;
        (*(*(v155 - 8) + 56))(v158, 0, 1, v155);

        v146 = v148;
        v159 = v158;
LABEL_69:
        v160 = v233;
        sub_258ECE3F4(v159, v233);
        v161 = v160;
        v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A658, &unk_258F15C20);
        v163 = *(v162 - 8);
        v164 = *(v163 + 48);
        if (v164(v160, 1, v162) == 1)
        {

          v175 = v238 + 8;
          v176 = 1 << *(v238 + 32);
          v177 = -1;
          if (v176 < 64)
          {
            v177 = ~(-1 << v176);
          }

          v178 = v177 & v238[8];
          v179 = (v176 + 63) >> 6;
          v233 = (v163 + 56);
          v231 = v238;

          v180 = 0;
          while (1)
          {
            v181 = v236;
LABEL_81:
            v182 = v180;
            if (!v178)
            {
              break;
            }

            while (1)
            {
              v183 = v182;
LABEL_90:
              v185 = __clz(__rbit64(v178));
              v178 &= v178 - 1;
              v186 = v185 | (v183 << 6);
              v187 = v231;
              v188 = v231[6] + *(v181 + 72) * v186;
              v189 = v235;
              sub_258E8BAD0(v188, v235, type metadata accessor for EventMetadata);
              v190 = *(v187[7] + 8 * v186);
              v191 = *(v162 + 48);
              v192 = v189;
              v193 = v228;
              sub_258ECE464(v192, v228, type metadata accessor for EventMetadata);
              *(v193 + v191) = v190;
              (*v233)(v193, 0, 1, v162);

              v180 = v183;
              v194 = v193;
LABEL_91:
              v195 = v227;
              sub_258ECE3F4(v194, v227);
              if (v164(v195, 1, v162) == 1)
              {

                return v226;
              }

              v196 = *(v195 + *(v162 + 48));
              v197 = v195;
              v198 = v234;
              sub_258ECE464(v197, v234, type metadata accessor for EventMetadata);
              v199 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
              if (v199)
              {
                break;
              }

              sub_258E8BB38(v198, type metadata accessor for EventMetadata);

              v182 = v180;
              v181 = v236;
              if (!v178)
              {
                goto LABEL_83;
              }
            }

            v201 = v199;
            v181 = v236;
            if (!*(v196 + 16))
            {
              sub_258E8BB38(v234, type metadata accessor for EventMetadata);

              goto LABEL_81;
            }

            LOBYTE(v237[0]) = 1;
            v230 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
            [v201 setEventMetadata_];
            v202 = sub_258ECC98C(v196, v209, 0x277D592F8, sub_258ECC62C, "Received empty DeviceUsageMetrics. Not going to compose ODDSiriSchemaODDDictationDeviceDigestsReported SELF Event", "Unable to compose ODDSiriSchemaODDDictationDeviceDigestsReported SELF Event");

            [v201 setDictationDeviceDigestReported_];

            v203 = v201;
            MEMORY[0x259C9DF50]();
            if (*((v240 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v240 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v204 = *((v240 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_258F0A6D0();
            }

            sub_258F0A700();

            sub_258E8BB38(v234, type metadata accessor for EventMetadata);
            v226 = v240;
          }

LABEL_83:
          if (v179 <= v182 + 1)
          {
            v184 = v182 + 1;
          }

          else
          {
            v184 = v179;
          }

          v180 = v184 - 1;
          while (1)
          {
            v183 = v182 + 1;
            if (__OFADD__(v182, 1))
            {
              goto LABEL_107;
            }

            if (v183 >= v179)
            {
              v200 = v228;
              (*v233)(v228, 1, 1, v162);
              v194 = v200;
              v178 = 0;
              goto LABEL_91;
            }

            v178 = v175[v183];
            ++v182;
            if (v178)
            {
              goto LABEL_90;
            }
          }
        }

        v165 = *&v160[*(v162 + 48)];
        v166 = v229;
        sub_258ECE464(v161, v229, type metadata accessor for EventMetadata);
        v167 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
        v78 = v236;
        if (v167)
        {
          v168 = v167;
          if (*(v165 + 16))
          {
            LOBYTE(v237[0]) = 1;
            v171 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
            [v168 setEventMetadata_];
            v172 = sub_258ECC98C(v165, v209, 0x277D59228, sub_258ECBFC4, "Assistant Device Digest Metrics is empty. Unable to compose ODDSiriSchemaODDAssistantDeviceDigestsReported SELF Event", "Unable to compose ODDSiriSchemaODDAssistantDeviceDigestsReported SELF Event");

            [v168 setAssistantDeviceDigestReported_];

            v173 = v168;
            MEMORY[0x259C9DF50]();
            if (*((v240 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v240 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v174 = *((v240 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_258F0A6D0();
              v166 = v229;
            }

            sub_258F0A700();

            sub_258E8BB38(v166, type metadata accessor for EventMetadata);
            v226 = v240;
            v78 = v236;
          }

          else
          {
            sub_258E8BB38(v166, type metadata accessor for EventMetadata);
          }
        }

        else
        {
          sub_258E8BB38(v166, type metadata accessor for EventMetadata);
        }
      }

      if (v145 <= v146 + 1)
      {
        v149 = v146 + 1;
      }

      else
      {
        v149 = v145;
      }

      v146 = v149 - 1;
      while (1)
      {
        v148 = v147 + 1;
        if (__OFADD__(v147, 1))
        {
          break;
        }

        if (v148 >= v145)
        {
          v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A658, &unk_258F15C20);
          v170 = v230;
          (*(*(v169 - 8) + 56))(v230, 1, 1, v169);
          v159 = v170;
          v144 = 0;
          goto LABEL_69;
        }

        v144 = v141[v148];
        ++v147;
        if (v144)
        {
          goto LABEL_68;
        }
      }

      __break(1u);
LABEL_107:
      __break(1u);
      break;
    }
  }

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
  result = sub_258F0ADC0();
  __break(1u);
  return result;
}