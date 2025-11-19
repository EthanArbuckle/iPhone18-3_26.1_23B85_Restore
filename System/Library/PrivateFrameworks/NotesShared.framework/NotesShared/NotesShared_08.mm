uint64_t sub_214F4823C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA41E38);
  v1 = __swift_project_value_buffer(v0, qword_27CA41E38);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_214F48304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[487] = v8;
  v9[481] = a8;
  v9[475] = a7;
  v9[469] = a6;
  v9[463] = a5;
  v9[457] = a4;
  v9[451] = a3;
  v9[445] = a2;
  v9[439] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  v9[493] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214F483C0, 0, 0);
}

uint64_t sub_214F483C0()
{
  v1 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v2 = sub_2150A36B0();
  v3 = [v1 initWithURL:v2 options:0];
  v0[499] = v3;

  v4 = *MEMORY[0x277CE5E48];
  v0[322] = v0;
  v0[327] = v0 + 415;
  v0[323] = sub_214F48534;
  v5 = swift_continuation_init();
  v0[342] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E58);
  v0[339] = v5;
  v0[335] = MEMORY[0x277D85DD0];
  v0[336] = 1107296256;
  v0[337] = sub_21504A2F8;
  v0[338] = &block_descriptor_2;
  [v3 loadTracksWithMediaType:v4 completionHandler:v0 + 335];

  return MEMORY[0x282200938](v0 + 322);
}

uint64_t sub_214F48534()
{
  v1 = *(*v0 + 2608);
  *(*v0 + 4040) = v1;
  if (v1)
  {
    v2 = sub_214F4AD54;
  }

  else
  {
    v2 = sub_214F48644;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214F48644()
{
  v1 = v0[415];
  if (v1 >> 62)
  {
    v2 = sub_2150A59D0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 == 2)
  {
    v3 = v0[499];
    v4 = swift_allocObject();
    v0[506] = v4;
    *(v4 + 16) = v3;
    v5 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E60);
    swift_asyncLet_begin();
    v6 = swift_allocObject();
    v0[507] = v6;
    *(v6 + 16) = v5;
    v7 = v5;
    swift_asyncLet_begin();

    return MEMORY[0x282200928](v0 + 2, v0 + 427, sub_214F488BC, v0 + 458);
  }

  else
  {
    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v8 = sub_2150A3F30();
    __swift_project_value_buffer(v8, qword_27CA41E38);
    v9 = sub_2150A3F10();
    v10 = sub_2150A5560();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_214D51000, v9, v10, "failed to get tracks from file", v11, 2u);
      MEMORY[0x216064AF0](v11, -1, -1);
    }

    v12 = v0[499];

    sub_215049A40();

    v13 = v0[1];
    v14 = MEMORY[0x277D84F90];

    return v13(v14);
  }
}

uint64_t sub_214F488D8()
{
  v1 = v0[427];
  v0[508] = v1;
  if (v1)
  {
    v2 = v1;

    return MEMORY[0x282200928](v0 + 242, v0 + 433, sub_214F48A78, v0 + 396);
  }

  else
  {
    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v3 = sub_2150A3F30();
    __swift_project_value_buffer(v3, qword_27CA41E38);
    v4 = sub_2150A3F10();
    v5 = sub_2150A5560();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_214D51000, v4, v5, "failed to create composition for call transcription", v6, 2u);
      MEMORY[0x216064AF0](v6, -1, -1);
    }

    sub_214F4810C();
    v0[541] = swift_allocError();
    *v7 = 14;
    swift_willThrow();

    return MEMORY[0x282200920](v0 + 242, v0 + 433, sub_214F4AC54, v0 + 446);
  }
}

uint64_t sub_214F48A94()
{
  v1 = *(v0 + 3464);
  *(v0 + 4072) = v1;
  if (v1)
  {
    v2 = *(v0 + 4064);
    v3 = *(v0 + 3896);
    v4 = swift_allocObject();
    *(v0 + 4080) = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v5 = v2;
    v6 = v1;
    *(v0 + 4088) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E68);
    swift_asyncLet_begin();
    v7 = swift_allocObject();
    *(v0 + 4096) = v7;
    *(v7 + 16) = v3;
    *(v7 + 24) = v6;
    v8 = v6;
    swift_asyncLet_begin();

    return MEMORY[0x282200928](v0 + 1296, v0 + 3368, sub_214F48D10, v0 + 3280);
  }

  else
  {

    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v9 = sub_2150A3F30();
    __swift_project_value_buffer(v9, qword_27CA41E38);
    v10 = sub_2150A3F10();
    v11 = sub_2150A5560();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_214D51000, v10, v11, "failed to create composition for call transcription", v12, 2u);
      MEMORY[0x216064AF0](v12, -1, -1);
    }

    sub_214F4810C();
    *(v0 + 4328) = swift_allocError();
    *v13 = 14;
    swift_willThrow();

    return MEMORY[0x282200920](v0 + 1936, v0 + 3464, sub_214F4AC54, v0 + 3568);
  }
}

uint64_t sub_214F48D2C()
{
  v1 = *(v0 + 3368);
  *(v0 + 2920) = v1;
  v2 = v1;

  return MEMORY[0x282200928](v0 + 656, v0 + 3272, sub_214F48D9C, v0 + 3328);
}

uint64_t sub_214F48DB8()
{
  v63 = v0;
  v1 = *(v0 + 3272);
  *(v0 + 4104) = v1;
  *(v0 + 2928) = v1;
  v2 = *(v0 + 2920);
  *(v0 + 4112) = v2;
  if (!v2)
  {
    v27 = v1;
    swift_arrayDestroy();
LABEL_11:
    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v28 = sub_2150A3F30();
    __swift_project_value_buffer(v28, qword_27CA41E38);
    v29 = sub_2150A3F10();
    v30 = sub_2150A5560();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_214D51000, v29, v30, "failed to create composition for call transcription", v31, 2u);
      MEMORY[0x216064AF0](v31, -1, -1);
    }

    sub_214F4810C();
    *(v0 + 4320) = swift_allocError();
    *v32 = 14;
    swift_willThrow();
    v33 = sub_214F4AA58;
    v34 = v0 + 656;
    v35 = v0 + 3272;
    v36 = v0 + 3376;

    return MEMORY[0x282200920](v34, v35, v33, v36);
  }

  v3 = v1;
  v4 = v2;
  swift_arrayDestroy();
  if (!v1)
  {

    goto LABEL_11;
  }

  v60 = v3;
  v61 = v4;
  if (qword_27CA41470 != -1)
  {
    swift_once();
  }

  v5 = sub_2150A3F30();
  *(v0 + 4120) = __swift_project_value_buffer(v5, qword_27CA41E38);
  v6 = sub_2150A3F10();
  v7 = sub_2150A5550();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_214D51000, v6, v7, "separated tracks for call transcript", v8, 2u);
    MEMORY[0x216064AF0](v8, -1, -1);
  }

  v9 = *(v0 + 3656);
  v10 = *(v0 + 3608);

  v11 = swift_allocObject();
  *(v0 + 4128) = v11;
  v59 = v11;
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v0 + 4136) = v12;
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  *(v0 + 4144) = v13;
  v14 = MEMORY[0x277D84F90];
  *(v13 + 16) = MEMORY[0x277D84F90];
  v15 = swift_allocObject();
  *(v0 + 4152) = v15;
  *(v15 + 16) = v14;
  v16 = swift_allocObject();
  *(v0 + 4160) = v16;
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  *(v0 + 4168) = v17;
  *(v17 + 16) = 0;
  v18 = sub_21501989C(v9, v10);
  if (v18)
  {
    v22 = v19;
    v23 = v20;
    v24 = v21;
    *(v13 + 16) = v18;

    *(v15 + 16) = v22;

    *(v16 + 16) = v23;

    *(v17 + 16) = v24;
    *(v59 + 16) = v23;
    v25 = v23;
    v26 = v24;
    *(v12 + 16) = v24;
  }

  else
  {
    v26 = 0.0;
    v25 = 0.0;
  }

  CMTimeMakeWithSeconds(&v62, v25, 600);
  value = v62.value;
  epoch = v62.epoch;
  v39 = *&v62.timescale;
  [v61 duration];
  sub_2150A5730();
  CMTimeMakeWithSeconds(&v62, v40, 600);
  v41 = v62.value;
  v42 = v62.epoch;
  v43 = *&v62.timescale;
  *(v0 + 4432) = value;
  *(v0 + 4440) = v39;
  *(v0 + 4448) = epoch;
  *(v0 + 4504) = v41;
  *(v0 + 4512) = v43;
  *(v0 + 4520) = v42;
  CMTimeRangeMake((v0 + 4384), (v0 + 4432), (v0 + 4504));
  CMTimeMakeWithSeconds(&v62, v26, 600);
  v44 = v62.value;
  v45 = v62.epoch;
  v46 = *&v62.timescale;
  [v60 duration];
  sub_2150A5730();
  CMTimeMakeWithSeconds(&v62, v47, 600);
  v48 = v62.value;
  v49 = v62.epoch;
  v50 = *&v62.timescale;
  *(v0 + 4480) = v44;
  *(v0 + 4488) = v46;
  *(v0 + 4496) = v45;
  *(v0 + 4456) = v48;
  *(v0 + 4464) = v50;
  *(v0 + 4472) = v49;
  CMTimeRangeMake((v0 + 4336), (v0 + 4480), (v0 + 4456));
  v51 = sub_2150A3F10();
  v52 = sub_2150A5550();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_214D51000, v51, v52, "making speech analyzer sequences", v53, 2u);
    MEMORY[0x216064AF0](v53, -1, -1);
  }

  v54 = *(v0 + 3560);

  v55 = *(v54 + 16);
  *(v0 + 4176) = v55;
  if (!v55)
  {
    __break(1u);
    return MEMORY[0x282200920](v34, v35, v33, v36);
  }

  v56 = *(v0 + 3560);
  *(v0 + 4184) = *(v56 + 32);
  *(v0 + 4192) = *(v56 + 40);

  v57 = swift_task_alloc();
  *(v0 + 4200) = v57;
  *v57 = v0;
  v57[1] = sub_214F493BC;

  return sub_214F52BC8(v61, v0 + 4384);
}

uint64_t sub_214F493BC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[526] = a1;
  v4[527] = a2;
  v4[528] = v2;

  if (v2)
  {
    v5 = sub_214F49714;
  }

  else
  {
    v5 = sub_214F49500;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_214F49500()
{
  if (v0[522] == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[513];
    v3 = v0[445];
    v0[529] = *(v3 + 48);
    v0[530] = *(v3 + 56);

    v4 = swift_task_alloc();
    v0[531] = v4;
    *v4 = v0;
    v4[1] = sub_214F495D0;

    sub_214F52BC8(v2, (v0 + 542));
  }
}

uint64_t sub_214F495D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[532] = a1;
  v4[533] = a2;
  v4[534] = v2;

  if (v2)
  {
    v5 = sub_214F49D78;
  }

  else
  {
    v5 = sub_214F499E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_214F49714()
{
  v1 = *(v0 + 4112);
  v2 = *(v0 + 4104);

  return MEMORY[0x282200920](v0 + 656, v0 + 3272, sub_214F497E4, v0 + 3712);
}

uint64_t sub_214F4983C()
{
  v1 = *(v0 + 4072);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3464, sub_214F498B0, v0 + 3808);
}

uint64_t sub_214F49908()
{

  sub_214D6AB7C(&unk_2150C2A38);
  sub_214D6AB7C(&unk_2150C2A50);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214F499E0()
{
  v1 = v0[521];
  v2 = v0[520];
  v3 = v0[519];
  v4 = v0[518];
  v5 = v0[493];
  v6 = v0[457];
  v7 = v0[451];
  sub_2150A50C0();
  v35 = sub_2150A5120();
  v33 = *(*(v35 - 8) + 56);
  (v33)(v5, 0, 1);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v2;
  v8[7] = v1;
  v8[8] = v7;
  v8[9] = v6;

  v9 = v7;
  v10 = v6;
  v0[535] = sub_215051880(0, 0, v5, &unk_2150C2A68, v8);
  v11 = sub_2150A3F10();
  v12 = sub_2150A5550();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_214D51000, v11, v12, "done making speech analyzer sequences", v13, 2u);
    MEMORY[0x216064AF0](v13, -1, -1);
  }

  v14 = sub_2150A3F10();
  v15 = sub_2150A5550();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_214D51000, v14, v15, "starting call transcription speech analyzer", v16, 2u);
    MEMORY[0x216064AF0](v16, -1, -1);
  }

  v17 = v0[532];
  v18 = v0[527];
  v19 = v0[526];
  v31 = v0[521];
  v32 = v0[533];
  v20 = v0[520];
  v21 = v0[518];
  v29 = v0[517];
  v30 = v0[519];
  v22 = v0[516];
  v23 = v0[493];
  v24 = v0[445];

  v33(v23, 1, 1, v35);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v19;
  v25[5] = v17;

  sub_215051880(0, 0, v23, &unk_2150C2A78, v25);

  v26 = swift_task_alloc();
  v0[536] = v26;
  v26[2] = v18;
  v26[3] = v21;
  v26[4] = v24;
  v26[5] = v22;
  v26[6] = v20;
  v26[7] = v32;
  v26[8] = v30;
  v26[9] = v29;
  v26[10] = v31;
  v27 = swift_task_alloc();
  v0[537] = v27;
  *v27 = v0;
  v27[1] = sub_214F4A064;

  return MEMORY[0x282200740]();
}

uint64_t sub_214F49D78()
{
  v1 = *(v0 + 4112);
  v2 = *(v0 + 4104);

  return MEMORY[0x282200920](v0 + 656, v0 + 3272, sub_214F49E68, v0 + 3904);
}

uint64_t sub_214F49EC0()
{
  v1 = *(v0 + 4072);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3464, sub_214F49F34, v0 + 4000);
}

uint64_t sub_214F49F8C()
{

  sub_214D6AB7C(&unk_2150C2A38);
  sub_214D6AB7C(&unk_2150C2A50);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214F4A064()
{
  *(*v1 + 4304) = v0;

  if (v0)
  {
  }

  else
  {

    return MEMORY[0x2822009F8](sub_214F4A1BC, 0, 0);
  }
}

uint64_t sub_214F4A1BC()
{
  v47 = v0;
  v1 = v0[457];
  v2 = v0[451];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  sub_2150A5190();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[359] = sub_214F544A8;
  v0[360] = v3;
  v0[355] = MEMORY[0x277D85DD0];
  v0[356] = 1107296256;
  v0[357] = sub_214F44018;
  v0[358] = &block_descriptor_61;
  v4 = _Block_copy(v0 + 355);
  v5 = v2;
  v6 = v1;

  [v5 performBlock_];
  _Block_release(v4);
  v7 = sub_2150A3F10();
  v8 = sub_2150A5550();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_214D51000, v7, v8, "finishing up call transcription", v9, 2u);
    MEMORY[0x216064AF0](v9, -1, -1);
  }

  v0[370] = &type metadata for TelephonyUtilitiesFeature;
  v0[371] = sub_214F544B0();
  v0[367] = "transcriptionEvaluationEnabled";
  v0[368] = 30;
  *(v0 + 2952) = 2;
  v10 = sub_2150A3BD0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 367));
  if (v10)
  {
    v11 = v0[518];
    swift_beginAccess();
    v12 = *(v11 + 16);

    v13 = sub_2150A3F10();
    v14 = sub_2150A5550();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_214D51000, v13, v14, "Writing call transcript to disk for evaluation", v15, 2u);
      MEMORY[0x216064AF0](v15, -1, -1);
    }

    v16 = v0[524];
    v17 = v0[523];
    v18 = v0[519];
    v19 = v0[481];
    v20 = v0[475];
    v21 = v0[469];
    v22 = v0[463];
    v43 = v0[451];

    v23 = swift_allocObject();
    v23[2] = v12;
    v23[3] = v22;
    v23[4] = v21;
    v23[5] = v20;
    v23[6] = v19;
    v23[7] = v17;
    v23[8] = v16;
    v0[353] = sub_214F54504;
    v0[354] = v23;
    v0[349] = MEMORY[0x277D85DD0];
    v0[350] = 1107296256;
    v0[351] = sub_214F44018;
    v0[352] = &block_descriptor_71;
    v24 = _Block_copy(v0 + 349);

    [v43 performBlock_];
    _Block_release(v24);
    swift_beginAccess();
    v25 = *(v18 + 16);

    v26 = sub_2150A3F10();
    v27 = sub_2150A5550();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_214D51000, v26, v27, "Writing call transcript to disk for evaluation", v28, 2u);
      MEMORY[0x216064AF0](v28, -1, -1);
    }

    v29 = v0[530];
    v30 = v0[529];
    v31 = v0[481];
    v32 = v0[475];
    v33 = v0[469];
    v34 = v0[463];
    v35 = v0[451];

    v36 = swift_allocObject();
    v36[2] = v25;
    v36[3] = v34;
    v36[4] = v33;
    v36[5] = v32;
    v36[6] = v31;
    v36[7] = v30;
    v36[8] = v29;
    v0[347] = sub_214F5579C;
    v0[348] = v36;
    v0[343] = MEMORY[0x277D85DD0];
    v0[344] = 1107296256;
    v0[345] = sub_214F44018;
    v0[346] = &block_descriptor_78;
    v37 = _Block_copy(v0 + 343);

    [v35 performBlock_];
    _Block_release(v37);
  }

  v38 = v0[538];
  v39 = v0[518];
  swift_beginAccess();
  v40 = *(v39 + 16);
  swift_beginAccess();
  v46 = v40;

  sub_21506860C(v41);

  sub_214F503F8(&v46, sub_214F50A08, sub_214F505F4);
  if (v38)
  {
  }

  else
  {
    aBlock = v0[514];
    v44 = v0[513];

    v0[539] = v46;

    return MEMORY[0x282200920](v0 + 82, v0 + 409, sub_214F4A888, v0 + 452);
  }
}

uint64_t sub_214F4A8E0()
{
  v1 = *(v0 + 4072);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3464, sub_214F4A954, v0 + 3040);
}

uint64_t sub_214F4A9AC()
{

  v1 = *(v0 + 4312);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_214F4AAB0()
{
  v1 = *(v0 + 4072);

  return MEMORY[0x282200920](v0 + 1936, v0 + 3464, sub_214F4AB24, v0 + 3472);
}

uint64_t sub_214F4AB7C()
{

  sub_214D6AB7C(&unk_2150C2A38);
  sub_214D6AB7C(&unk_2150C2A50);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214F4ACAC()
{

  sub_214D6AB7C(0);
  sub_214D6AB7C(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214F4AD54()
{
  v1 = v0[505];
  swift_willThrow();

  if (qword_27CA41470 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA41E38);
  v3 = sub_2150A3F10();
  v4 = sub_2150A5560();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_214D51000, v3, v4, "failed to get tracks from file", v5, 2u);
    MEMORY[0x216064AF0](v5, -1, -1);
  }

  v6 = v0[499];

  sub_215049A40();

  v7 = v0[1];
  v8 = MEMORY[0x277D84F90];

  return v7(v8);
}

uint64_t sub_214F4AE9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_214F4AEBC, 0, 0);
}

uint64_t sub_214F4AEBC()
{
  v1 = v0[20];
  v2 = *MEMORY[0x277CE5E48];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_214F4AFF0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E58);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21504A2F8;
  v0[13] = &block_descriptor_118;
  v0[14] = v3;
  [v1 loadTracksWithMediaType:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_214F4AFF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_214F557A4;
  }

  else
  {
    v2 = sub_214F4B100;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_214F4B100()
{
  v1 = v0[18];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x216062780](0, v0[18]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;
  v4 = v0[19];

  *v4 = v3;
  v5 = v0[1];

  v5();
}

uint64_t sub_214F4B1B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_214F4B1D0, 0, 0);
}

uint64_t sub_214F4B1D0()
{
  v1 = v0[20];
  v2 = *MEMORY[0x277CE5E48];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_214F4B304;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E58);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21504A2F8;
  v0[13] = &block_descriptor_115_0;
  v0[14] = v3;
  [v1 loadTracksWithMediaType:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_214F4B304()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_214F4B4C8;
  }

  else
  {
    v2 = sub_214F4B414;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_214F4B414()
{
  v1 = v0[18];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x216062780](1, v0[18]);
  }

  else
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 40);
  }

  v3 = v2;
  v4 = v0[19];

  *v4 = v3;
  v5 = v0[1];

  v5();
}

uint64_t sub_214F4B4C8()
{
  v1 = v0[21];
  v2 = v0[19];
  swift_willThrow();

  *v2 = 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_214F4B548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_214F4B5E0;

  return sub_214F54A84(a3);
}

uint64_t sub_214F4B5E0(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_214F4B6E0, 0, 0);
}

uint64_t sub_214F4B704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_214F4B79C;

  return sub_214F54A84(a3);
}

uint64_t sub_214F4B79C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_214F557A0, 0, 0);
}

uint64_t sub_214F4B89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[35] = a8;
  v8[36] = v13;
  v8[33] = a6;
  v8[34] = a7;
  v8[31] = a4;
  v8[32] = a5;
  v9 = sub_2150A5D40();
  v8[37] = v9;
  v8[38] = *(v9 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v10 = sub_2150A5D50();
  v8[41] = v10;
  v8[42] = *(v10 - 8);
  v8[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214F4B9D4, 0, 0);
}

uint64_t sub_214F4B9D4()
{
  if (qword_27CA41470 != -1)
  {
    swift_once();
  }

  v1 = sub_2150A3F30();
  *(v0 + 352) = __swift_project_value_buffer(v1, qword_27CA41E38);
  v2 = sub_2150A3F10();
  v3 = sub_2150A5550();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_214D51000, v2, v3, "entering checkpoint task", v4, 2u);
    MEMORY[0x216064AF0](v4, -1, -1);
  }

  if (sub_2150A51A0())
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v7 = sub_2150A3F10();
    v8 = sub_2150A5550();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_214D51000, v7, v8, "called checkpoint task", v9, 2u);
      MEMORY[0x216064AF0](v9, -1, -1);
    }

    v10 = *(v0 + 248);

    if (*(*(v10 + 16) + 16) && *(*(*(v0 + 256) + 16) + 16))
    {
      v11 = sub_2150A3F10();
      v12 = sub_2150A5550();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_214D51000, v11, v12, "checkpointing", v13, 2u);
        MEMORY[0x216064AF0](v13, -1, -1);
      }

      v15 = *(v0 + 280);
      v14 = *(v0 + 288);
      v17 = *(v0 + 264);
      v16 = *(v0 + 272);
      v19 = *(v0 + 248);
      v18 = *(v0 + 256);

      v20 = *(v19 + 16);
      v21 = *(v18 + 16);
      v22 = *(v17 + 16);
      v23 = *(v16 + 16);
      v24 = swift_allocObject();
      v24[2] = v15;
      v24[3] = v14;
      v24[4] = v20;
      v24[5] = v21;
      v24[6] = v22;
      v24[7] = v23;
      v24[8] = v22;
      v24[9] = v23;
      *(v0 + 48) = sub_214F54988;
      *(v0 + 56) = v24;
      *(v0 + 16) = MEMORY[0x277D85DD0];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_214F44018;
      *(v0 + 40) = &block_descriptor_100;
      v25 = _Block_copy((v0 + 16));

      v26 = v15;
      v27 = v14;

      [v26 performBlock_];
      _Block_release(v25);
    }

    v29 = *(v0 + 304);
    v28 = *(v0 + 312);
    v30 = *(v0 + 296);
    sub_2150A6410();
    *(v0 + 232) = xmmword_2150C29A0;
    *(v0 + 216) = 0;
    *(v0 + 208) = 0;
    *(v0 + 224) = 1;
    v31 = sub_214F549F0(&qword_27CA41ED8, MEMORY[0x277D85928]);
    sub_2150A63F0();
    sub_214F549F0(&qword_27CA41EE0, MEMORY[0x277D858F8]);
    sub_2150A5D60();
    v32 = *(v29 + 8);
    *(v0 + 360) = v32;
    *(v0 + 368) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32(v28, v30);
    v33 = swift_task_alloc();
    *(v0 + 376) = v33;
    *v33 = v0;
    v33[1] = sub_214F4BF20;
    v35 = *(v0 + 320);
    v34 = *(v0 + 328);

    return MEMORY[0x2822008C8](v35, v0 + 208, v34, v31);
  }
}

uint64_t sub_214F4BF20()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    (*(v2 + 360))(*(v2 + 320), *(v2 + 296));
    v3 = sub_214F4C48C;
  }

  else
  {
    v5 = *(v2 + 336);
    v4 = *(v2 + 344);
    v6 = *(v2 + 328);
    (*(v2 + 360))(*(v2 + 320), *(v2 + 296));
    (*(v5 + 8))(v4, v6);
    v3 = sub_214F4C078;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_214F4C078()
{
  if (sub_2150A51A0())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = sub_2150A3F10();
    v4 = sub_2150A5550();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_214D51000, v3, v4, "called checkpoint task", v5, 2u);
      MEMORY[0x216064AF0](v5, -1, -1);
    }

    v6 = *(v0 + 248);

    if (*(*(v6 + 16) + 16) && *(*(*(v0 + 256) + 16) + 16))
    {
      v7 = sub_2150A3F10();
      v8 = sub_2150A5550();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_214D51000, v7, v8, "checkpointing", v9, 2u);
        MEMORY[0x216064AF0](v9, -1, -1);
      }

      v11 = *(v0 + 280);
      v10 = *(v0 + 288);
      v13 = *(v0 + 264);
      v12 = *(v0 + 272);
      v15 = *(v0 + 248);
      v14 = *(v0 + 256);

      v16 = *(v15 + 16);
      v17 = *(v14 + 16);
      v18 = *(v13 + 16);
      v19 = *(v12 + 16);
      v20 = swift_allocObject();
      v20[2] = v11;
      v20[3] = v10;
      v20[4] = v16;
      v20[5] = v17;
      v20[6] = v18;
      v20[7] = v19;
      v20[8] = v18;
      v20[9] = v19;
      *(v0 + 48) = sub_214F54988;
      *(v0 + 56) = v20;
      *(v0 + 16) = MEMORY[0x277D85DD0];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_214F44018;
      *(v0 + 40) = &block_descriptor_100;
      v21 = _Block_copy((v0 + 16));

      v22 = v11;
      v23 = v10;

      [v22 performBlock_];
      _Block_release(v21);
    }

    v25 = *(v0 + 304);
    v24 = *(v0 + 312);
    v26 = *(v0 + 296);
    sub_2150A6410();
    *(v0 + 232) = xmmword_2150C29A0;
    *(v0 + 216) = 0;
    *(v0 + 208) = 0;
    *(v0 + 224) = 1;
    v27 = sub_214F549F0(&qword_27CA41ED8, MEMORY[0x277D85928]);
    sub_2150A63F0();
    sub_214F549F0(&qword_27CA41EE0, MEMORY[0x277D858F8]);
    sub_2150A5D60();
    v28 = *(v25 + 8);
    *(v0 + 360) = v28;
    *(v0 + 368) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v24, v26);
    v29 = swift_task_alloc();
    *(v0 + 376) = v29;
    *v29 = v0;
    v29[1] = sub_214F4BF20;
    v31 = *(v0 + 320);
    v30 = *(v0 + 328);

    return MEMORY[0x2822008C8](v31, v0 + 208, v30, v27);
  }
}

uint64_t sub_214F4C48C()
{
  (*(v0[42] + 8))(v0[43], v0[41]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_214F4C528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_214F4C5C0;

  return MEMORY[0x28212BBF0]();
}

uint64_t sub_214F4C5C0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 32) = v6;
    *v6 = v3;
    v6[1] = sub_214F4C734;

    return MEMORY[0x28212BBF0]();
  }
}

uint64_t sub_214F4C734()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214F4C828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v12;
  *(v8 + 72) = v11;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214F4C8E4, 0, 0);
}

uint64_t sub_214F4C8E4()
{
  v1 = v0[12];
  v15 = v0[10];
  v16 = v0[11];
  v2 = v0[7];
  v13 = v0[8];
  v14 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = sub_2150A5120();
  v12 = *(*(v7 - 8) + 56);
  v12(v1, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = v4;
  v8[7] = v3;
  v8[8] = v2;

  sub_214F4DCF8(v1, &unk_2150C2AA8, v8);
  sub_214F302D4(v1, &qword_27CA41E50);
  v12(v1, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v13;
  v9[5] = v14;
  v9[6] = v4;
  v9[7] = v15;
  v9[8] = v16;

  sub_214F4DCF8(v1, &unk_2150C2AB8, v9);
  sub_214F302D4(v1, &qword_27CA41E50);

  v10 = v0[1];

  return v10();
}

uint64_t sub_214F4CB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = type metadata accessor for TranscriptViewModelSegment(0);
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = sub_2150A3340();
  v8[22] = swift_task_alloc();
  sub_2150A34D0();
  v8[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E78);
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E80);
  v8[27] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E88);
  v8[28] = v11;
  v8[29] = *(v11 - 8);
  v8[30] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E90);
  v8[31] = v12;
  v8[32] = *(v12 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v13 = sub_2150A33B0();
  v8[35] = v13;
  v8[36] = *(v13 - 8);
  v8[37] = swift_task_alloc();
  v14 = sub_2150A3400();
  v8[38] = v14;
  v8[39] = *(v14 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v15 = sub_2150A4220();
  v8[43] = v15;
  v8[44] = *(v15 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v16 = sub_2150A4190();
  v8[47] = v16;
  v8[48] = *(v16 - 8);
  v8[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E98);
  v8[50] = swift_task_alloc();
  v8[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA0);
  v8[52] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA8);
  v8[53] = v17;
  v8[54] = *(v17 - 8);
  v8[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214F4D02C, 0, 0);
}

uint64_t sub_214F4D02C()
{
  sub_2150A41B0();
  *(v0 + 448) = swift_getOpaqueTypeConformance2();
  sub_2150A5220();
  swift_beginAccess();
  swift_beginAccess();
  v1 = MEMORY[0x277CDCBA0];
  *(v0 + 560) = *MEMORY[0x277CDCBB8];
  *(v0 + 564) = *v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  *(v0 + 456) = v3;
  *v3 = v0;
  v3[1] = sub_214F4D1A4;
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);

  return MEMORY[0x282200310](v5, 0, 0, v0 + 88, v4, AssociatedConformanceWitness);
}

uint64_t sub_214F4D1A4()
{

  if (v0)
  {
    v1 = sub_214F557BC;
  }

  else
  {
    v1 = sub_214F4D2B4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_214F4D2B4()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 560);
  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  (*(v3 + 32))(*(v0 + 392), v1, v2);
  sub_2150A4150();
  v11 = *(v10 + 104);
  v11(v8, v6, v9);
  v12 = sub_2150A4210();
  v13 = *(v10 + 8);
  v13(v8, v9);
  v13(v7, v9);
  if ((v12 & 1) == 0)
  {
    v14 = *(v0 + 564);
    v15 = v11;
    v17 = *(v0 + 360);
    v16 = *(v0 + 368);
    v18 = *(v0 + 344);
    sub_2150A4150();
    v15(v17, v14, v18);
    v19 = sub_2150A4210();
    v13(v17, v18);
    v13(v16, v18);
    if ((v19 & 1) == 0)
    {
      (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
      goto LABEL_17;
    }
  }

  v20 = *(v0 + 112);
  if (!v20[2])
  {
    __break(1u);
    goto LABEL_29;
  }

  v21 = v20[5];
  v92 = v20[4];
  v22 = *(*(v0 + 120) + 16);

  v24 = MEMORY[0x216060D20](v23);
  if (!*(v24 + 16))
  {

    if (qword_27CA417C0 == -1)
    {
LABEL_12:
      v46 = sub_2150A3F30();
      __swift_project_value_buffer(v46, qword_27CA446F8);
      v47 = sub_2150A3F10();
      v48 = sub_2150A5560();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_214D51000, v47, v48, "got an empty result", v49, 2u);
        MEMORY[0x216064AF0](v49, -1, -1);
      }

      v45 = MEMORY[0x277D84F90];
      goto LABEL_15;
    }

LABEL_29:
    swift_once();
    goto LABEL_12;
  }

  v93 = v21;
  v26 = *(v0 + 328);
  v25 = *(v0 + 336);
  v27 = *(v0 + 304);
  v28 = *(v0 + 312);
  v29 = *(v0 + 288);
  v30 = *(v0 + 296);
  v31 = *(v0 + 272);
  v32 = *(v0 + 256);
  v91 = *(v0 + 264);
  v88 = *(v0 + 280);
  v89 = *(v0 + 248);
  v94 = *(v0 + 216);
  v95 = *(v0 + 200);
  v97 = *(v0 + 192);
  (*(v28 + 16))(v26, v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v27);

  (*(v28 + 32))(v25, v26, v27);
  sub_2150A33D0();
  sub_2150A4260();
  sub_214F549F0(&qword_27CA41EB0, MEMORY[0x277CDCCE0]);
  sub_2150A33C0();
  (*(v29 + 8))(v30, v88);
  (*(v32 + 16))(v91, v31, v89);
  sub_214F43BCC(&qword_27CA41EB8, &qword_27CA41E90);
  sub_2150A4D60();
  sub_214F43BCC(&qword_27CA41EC0, &qword_27CA41E88);
  sub_2150A5850();
  v33 = *(v95 + 48);
  v34 = v33(v94, 1, v97);
  v35 = MEMORY[0x277D84F90];
  if (v34 != 1)
  {
    v90 = v33;
    do
    {
      v68 = *(v0 + 208);
      sub_214F548A8(*(v0 + 216), v68);
      if ((*(v68 + 48) & 1) == 0)
      {
        v69 = *(v0 + 208);
        v70 = *(v0 + 160);
        v96 = *(v0 + 152);
        v71 = *(v0 + 136);
        v73 = *(v69 + 32);
        v72 = *(v69 + 40);
        v74 = *(v69 + 8);
        v75 = *(v69 + 16);
        *(v0 + 464) = *v69;
        *(v0 + 472) = v74;
        *(v0 + 480) = v75;
        *(v0 + 496) = v73;
        *(v0 + 504) = v72;
        sub_2150A5730();
        v77 = v22 + v76;
        sub_2150A54E0();
        sub_2150A5730();
        v79 = v22 + v78 - v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EC8);
        sub_214F43BCC(&qword_27CA41ED0, &qword_27CA41EC8);
        sub_2150A3430();
        sub_2150A3440();
        sub_2150A3330();
        sub_214F549F0(&qword_27CA42330, MEMORY[0x277CC8B30]);
        v80 = sub_2150A4D20();
        v82 = v81;
        v83 = v71[10];
        v84 = (v70 + v71[9]);
        *(v70 + v83) = 2;
        _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
        v85 = (v70 + v71[5]);
        *v85 = v80;
        v85[1] = v82;
        *(v70 + v71[6]) = v77;
        *(v70 + v71[7]) = v79;
        *v84 = v92;
        v84[1] = v93;
        *(v70 + v83) = 2;
        *(v70 + v71[8]) = v77 + v79;
        sub_214F5456C(v70, v96);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_21505F724(0, v35[2] + 1, 1, v35);
        }

        v87 = v35[2];
        v86 = v35[3];
        if (v87 >= v86 >> 1)
        {
          v35 = sub_21505F724(v86 > 1, v87 + 1, 1, v35);
        }

        v62 = *(v0 + 312);
        v61 = *(v0 + 320);
        v63 = *(v0 + 304);
        v64 = *(v0 + 152);
        v65 = *(v0 + 144);
        sub_214F545D0(*(v0 + 160));
        (*(v62 + 8))(v61, v63);
        v35[2] = v87 + 1;
        sub_214F5462C(v64, v35 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v87);
        v33 = v90;
      }

      v66 = *(v0 + 216);
      v67 = *(v0 + 192);
      sub_214F302D4(*(v0 + 208), &qword_27CA41E78);
      sub_2150A5850();
    }

    while (v33(v66, 1, v67) != 1);
  }

  v98 = *(v0 + 336);
  v36 = *(v0 + 304);
  v37 = *(v0 + 312);
  v38 = *(v0 + 272);
  v39 = v35;
  v40 = *(v0 + 248);
  v41 = *(v0 + 256);
  v43 = *(v0 + 232);
  v42 = *(v0 + 240);
  v44 = *(v0 + 224);

  (*(v43 + 8))(v42, v44);
  (*(v41 + 8))(v38, v40);
  v45 = v39;
  (*(v37 + 8))(v98, v36);
LABEL_15:
  v51 = *(v0 + 384);
  v50 = *(v0 + 392);
  v52 = *(v0 + 376);
  v53 = *(v0 + 128);
  swift_beginAccess();
  sub_21506860C(v45);
  v54 = swift_endAccess();
  MEMORY[0x216060D30](v54);
  sub_2150A54E0();
  sub_2150A5730();
  v56 = v55;
  (*(v51 + 8))(v50, v52);
  *(v53 + 16) = v56;
LABEL_17:
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = swift_task_alloc();
  *(v0 + 456) = v58;
  *v58 = v0;
  v58[1] = sub_214F4D1A4;
  v59 = *(v0 + 424);
  v60 = *(v0 + 400);

  return MEMORY[0x282200310](v60, 0, 0, v0 + 88, v59, AssociatedConformanceWitness);
}

uint64_t sub_214F4DCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_214F54918(a1, v18 - v8);
  v10 = sub_2150A5120();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_214F302D4(v9, &qword_27CA41E50);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_2150A5010();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2150A5110();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_214F4DED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v9 = type metadata accessor for TranscriptViewModelSegment(0);
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = sub_2150A3340();
  v8[22] = swift_task_alloc();
  sub_2150A34D0();
  v8[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E78);
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E80);
  v8[27] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E88);
  v8[28] = v11;
  v8[29] = *(v11 - 8);
  v8[30] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E90);
  v8[31] = v12;
  v8[32] = *(v12 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v13 = sub_2150A33B0();
  v8[35] = v13;
  v8[36] = *(v13 - 8);
  v8[37] = swift_task_alloc();
  v14 = sub_2150A3400();
  v8[38] = v14;
  v8[39] = *(v14 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v15 = sub_2150A4220();
  v8[43] = v15;
  v8[44] = *(v15 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v16 = sub_2150A4190();
  v8[47] = v16;
  v8[48] = *(v16 - 8);
  v8[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E98);
  v8[50] = swift_task_alloc();
  v8[51] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA0);
  v8[52] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA8);
  v8[53] = v17;
  v8[54] = *(v17 - 8);
  v8[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214F4E3F4, 0, 0);
}

uint64_t sub_214F4E3F4()
{
  sub_2150A41B0();
  *(v0 + 448) = swift_getOpaqueTypeConformance2();
  sub_2150A5220();
  swift_beginAccess();
  swift_beginAccess();
  v1 = MEMORY[0x277CDCBA0];
  *(v0 + 560) = *MEMORY[0x277CDCBB8];
  *(v0 + 564) = *v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  *(v0 + 456) = v3;
  *v3 = v0;
  v3[1] = sub_214F4E56C;
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);

  return MEMORY[0x282200310](v5, 0, 0, v0 + 88, v4, AssociatedConformanceWitness);
}

uint64_t sub_214F4E56C()
{

  if (v0)
  {
    v1 = sub_214F4F0C4;
  }

  else
  {
    v1 = sub_214F4E67C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_214F4E67C()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 560);
  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  (*(v3 + 32))(*(v0 + 392), v1, v2);
  sub_2150A4150();
  v11 = *(v10 + 104);
  v11(v8, v6, v9);
  v12 = sub_2150A4210();
  v13 = *(v10 + 8);
  v13(v8, v9);
  v13(v7, v9);
  if ((v12 & 1) == 0)
  {
    v14 = *(v0 + 564);
    v15 = v11;
    v17 = *(v0 + 360);
    v16 = *(v0 + 368);
    v18 = *(v0 + 344);
    sub_2150A4150();
    v15(v17, v14, v18);
    v19 = sub_2150A4210();
    v13(v17, v18);
    v13(v16, v18);
    if ((v19 & 1) == 0)
    {
      (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
      goto LABEL_17;
    }
  }

  v20 = *(v0 + 112);
  if (v20[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  v21 = v20[7];
  v92 = v20[6];
  v22 = *(*(v0 + 120) + 16);

  v24 = MEMORY[0x216060D20](v23);
  if (!*(v24 + 16))
  {

    if (qword_27CA417C0 == -1)
    {
LABEL_12:
      v46 = sub_2150A3F30();
      __swift_project_value_buffer(v46, qword_27CA446F8);
      v47 = sub_2150A3F10();
      v48 = sub_2150A5560();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_214D51000, v47, v48, "got an empty result", v49, 2u);
        MEMORY[0x216064AF0](v49, -1, -1);
      }

      v45 = MEMORY[0x277D84F90];
      goto LABEL_15;
    }

LABEL_29:
    swift_once();
    goto LABEL_12;
  }

  v93 = v21;
  v26 = *(v0 + 328);
  v25 = *(v0 + 336);
  v27 = *(v0 + 304);
  v28 = *(v0 + 312);
  v29 = *(v0 + 288);
  v30 = *(v0 + 296);
  v31 = *(v0 + 272);
  v32 = *(v0 + 256);
  v91 = *(v0 + 264);
  v88 = *(v0 + 280);
  v89 = *(v0 + 248);
  v94 = *(v0 + 216);
  v95 = *(v0 + 200);
  v97 = *(v0 + 192);
  (*(v28 + 16))(v26, v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v27);

  (*(v28 + 32))(v25, v26, v27);
  sub_2150A33D0();
  sub_2150A4260();
  sub_214F549F0(&qword_27CA41EB0, MEMORY[0x277CDCCE0]);
  sub_2150A33C0();
  (*(v29 + 8))(v30, v88);
  (*(v32 + 16))(v91, v31, v89);
  sub_214F43BCC(&qword_27CA41EB8, &qword_27CA41E90);
  sub_2150A4D60();
  sub_214F43BCC(&qword_27CA41EC0, &qword_27CA41E88);
  sub_2150A5850();
  v33 = *(v95 + 48);
  v34 = v33(v94, 1, v97);
  v35 = MEMORY[0x277D84F90];
  if (v34 != 1)
  {
    v90 = v33;
    do
    {
      v68 = *(v0 + 208);
      sub_214F548A8(*(v0 + 216), v68);
      if ((*(v68 + 48) & 1) == 0)
      {
        v69 = *(v0 + 208);
        v70 = *(v0 + 160);
        v96 = *(v0 + 152);
        v71 = *(v0 + 136);
        v73 = *(v69 + 32);
        v72 = *(v69 + 40);
        v74 = *(v69 + 8);
        v75 = *(v69 + 16);
        *(v0 + 464) = *v69;
        *(v0 + 472) = v74;
        *(v0 + 480) = v75;
        *(v0 + 496) = v73;
        *(v0 + 504) = v72;
        sub_2150A5730();
        v77 = v22 + v76;
        sub_2150A54E0();
        sub_2150A5730();
        v79 = v22 + v78 - v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EC8);
        sub_214F43BCC(&qword_27CA41ED0, &qword_27CA41EC8);
        sub_2150A3430();
        sub_2150A3440();
        sub_2150A3330();
        sub_214F549F0(&qword_27CA42330, MEMORY[0x277CC8B30]);
        v80 = sub_2150A4D20();
        v82 = v81;
        v83 = v71[10];
        v84 = (v70 + v71[9]);
        *(v70 + v83) = 2;
        _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
        v85 = (v70 + v71[5]);
        *v85 = v80;
        v85[1] = v82;
        *(v70 + v71[6]) = v77;
        *(v70 + v71[7]) = v79;
        *v84 = v92;
        v84[1] = v93;
        *(v70 + v83) = 2;
        *(v70 + v71[8]) = v77 + v79;
        sub_214F5456C(v70, v96);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_21505F724(0, v35[2] + 1, 1, v35);
        }

        v87 = v35[2];
        v86 = v35[3];
        if (v87 >= v86 >> 1)
        {
          v35 = sub_21505F724(v86 > 1, v87 + 1, 1, v35);
        }

        v62 = *(v0 + 312);
        v61 = *(v0 + 320);
        v63 = *(v0 + 304);
        v64 = *(v0 + 152);
        v65 = *(v0 + 144);
        sub_214F545D0(*(v0 + 160));
        (*(v62 + 8))(v61, v63);
        v35[2] = v87 + 1;
        sub_214F5462C(v64, v35 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v87);
        v33 = v90;
      }

      v66 = *(v0 + 216);
      v67 = *(v0 + 192);
      sub_214F302D4(*(v0 + 208), &qword_27CA41E78);
      sub_2150A5850();
    }

    while (v33(v66, 1, v67) != 1);
  }

  v98 = *(v0 + 336);
  v36 = *(v0 + 304);
  v37 = *(v0 + 312);
  v38 = *(v0 + 272);
  v39 = v35;
  v40 = *(v0 + 248);
  v41 = *(v0 + 256);
  v43 = *(v0 + 232);
  v42 = *(v0 + 240);
  v44 = *(v0 + 224);

  (*(v43 + 8))(v42, v44);
  (*(v41 + 8))(v38, v40);
  v45 = v39;
  (*(v37 + 8))(v98, v36);
LABEL_15:
  v51 = *(v0 + 384);
  v50 = *(v0 + 392);
  v52 = *(v0 + 376);
  v53 = *(v0 + 128);
  swift_beginAccess();
  sub_21506860C(v45);
  v54 = swift_endAccess();
  MEMORY[0x216060D30](v54);
  sub_2150A54E0();
  sub_2150A5730();
  v56 = v55;
  (*(v51 + 8))(v50, v52);
  *(v53 + 16) = v56;
LABEL_17:
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = swift_task_alloc();
  *(v0 + 456) = v58;
  *v58 = v0;
  v58[1] = sub_214F4E56C;
  v59 = *(v0 + 424);
  v60 = *(v0 + 400);

  return MEMORY[0x282200310](v60, 0, 0, v0 + 88, v59, AssociatedConformanceWitness);
}

uint64_t sub_214F4F0C4()
{
  (*(v0[54] + 8))(v0[55], v0[53]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_214F4F240(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_214F4F264, 0, 0);
}

uint64_t sub_214F4F264()
{
  v1 = *(v0 + 24);
  sub_2150A41F0();
  v2 = *(v0 + 8);

  return v2();
}

void sub_214F4F2CC(void *a1, void *a2, unint64_t a3, void *a4, unint64_t a5, void *a6, unint64_t a7)
{
  v116 = a7;
  v110 = a6;
  v114 = a2;
  v115 = a4;
  v10 = sub_2150A4B20();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_2150A3640();
  v128 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2150A3750();
  v121 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v113 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v111 = &v106 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v124 = &v106 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v125 = &v106 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v118 = &v106 - v25;
  MEMORY[0x28223BE20](v24);
  v130 = &v106 - v26;
  v129 = type metadata accessor for TranscriptViewModelSegment(0);
  v27 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = a1;

  sub_214F503F8(&v132, sub_214F5125C, sub_214F50800);
  v122 = a3;
  v123 = a5;
  v131 = v15;
  v107 = v13;
  v108 = v11;
  v109 = v10;
  v112 = 0;
  v30 = v132;
  v31 = v132[2];
  if (v31)
  {
    v132 = MEMORY[0x277D84F90];
    sub_214F86A20(0, v31, 0);
    v32 = v132;
    v33 = *(v27 + 80);
    v127 = v30;
    v34 = v30 + ((v33 + 32) & ~v33);
    v35 = *(v27 + 72);
    v36 = v129;
    do
    {
      sub_214F5456C(v34, v29);
      v37 = &v29[*(v36 + 20)];
      v38 = *v37;
      v39 = *(v37 + 1);

      sub_214F545D0(v29);
      v132 = v32;
      v41 = v32[2];
      v40 = v32[3];
      if (v41 >= v40 >> 1)
      {
        sub_214F86A20((v40 > 1), v41 + 1, 1);
        v36 = v129;
        v32 = v132;
      }

      v32[2] = v41 + 1;
      v42 = &v32[2 * v41];
      v42[4] = v38;
      v42[5] = v39;
      v34 += v35;
      --v31;
    }

    while (v31);
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v43 = v32[2];
  v44 = 0xE000000000000000;
  if (!v43)
  {
    v50 = 0;
    v49 = 0xE000000000000000;
LABEL_18:

    v51 = v124;
    sub_2150A36A0();
    v132 = 0xD000000000000020;
    v133 = 0x80000002150E2440;
    LODWORD(v127) = *MEMORY[0x277CC91D8];
    v52 = v128;
    v54 = v128 + 104;
    v53 = *(v128 + 104);
    v56 = v119;
    v55 = v120;
    v53(v119);
    v117 = v53;
    v129 = sub_214D6E6C4();
    sub_2150A3740();
    v126 = *(v52 + 8);
    (v126)(v56, v55);
    v58 = (v121 + 8);
    v57 = *(v121 + 8);
    v57(v51, v131);
    v132 = v114;
    v133 = v122;
    (v53)(v56, v127, v55);
    v59 = v118;
    v60 = v125;
    sub_2150A3740();
    (v126)(v56, v55);
    v57(v60, v131);
    v132 = v115;
    v133 = v123;
    v106 = v54;
    (v117)(v56, v127, v55);
    sub_2150A3740();
    v128 = v52 + 8;
    (v126)(v56, v55);
    v124 = v57;
    v125 = v58;
    v57(v59, v131);
    v61 = objc_opt_self();
    v62 = [v61 defaultManager];
    v63 = swift_slowAlloc();
    sub_2150A3700();
    v64 = sub_2150A4A90();

    LODWORD(v60) = [v62 fileExistsAtPath:v64 isDirectory:v63];

    v65 = &OBJC_PROTOCOL___ICLegacyContext;
    if (v60)
    {
      v66 = *v63;

      v67 = v116;
      if (v66)
      {
        v44 = v112;
        goto LABEL_25;
      }
    }

    else
    {

      v67 = v116;
    }

    v68 = [v61 defaultManager];
    v69 = v130;
    v44 = v112;
    NSFileManager.createDirectory(at:withIntermediateDirectories:)(v130, 1);
    if (v44)
    {
      (v124)(v69, v131);

      goto LABEL_32;
    }

LABEL_25:
    v132 = v110;
    v133 = v67;
    v71 = v119;
    v70 = v120;
    (v117)(v119, v127, v120);
    v72 = v118;
    sub_2150A3740();
    (v126)(v71, v70);
    v73 = v111;
    sub_2150A36D0();
    v74 = v131;
    (v124)(v72, v131);
    v75 = v113;
    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v76 = sub_2150A3F30();
    __swift_project_value_buffer(v76, qword_27CA41E38);
    (*(v121 + 16))(v75, v73, v74);
    v77 = v74;
    v78 = v122;

    v79 = v123;

    v80 = sub_2150A3F10();
    v81 = sub_2150A5550();

    LODWORD(v128) = v81;
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v132 = v127;
      *v82 = 136315906;
      sub_214F549F0(&qword_280C24468, MEMORY[0x277CC9260]);
      v126 = v80;
      v83 = v113;
      v84 = sub_2150A6100();
      v86 = v85;
      (v124)(v83, v77);
      v87 = sub_214F7723C(v84, v86, &v132);
      v88 = v130;

      *(v82 + 4) = v87;
      *(v82 + 12) = 2080;
      *(v82 + 14) = sub_214F7723C(v114, v78, &v132);
      *(v82 + 22) = 2080;
      *(v82 + 24) = sub_214F7723C(v115, v79, &v132);
      *(v82 + 32) = 2080;
      *(v82 + 34) = sub_214F7723C(v110, v116, &v132);
      v89 = v126;
      _os_log_impl(&dword_214D51000, v126, v128, "Writing offline transcript to %s for callID: %s recordingID: %s speaker: %s", v82, 0x2Au);
      v90 = v127;
      swift_arrayDestroy();
      v73 = v111;
      MEMORY[0x216064AF0](v90, -1, -1);
      MEMORY[0x216064AF0](v82, -1, -1);

      v91 = v109;
      v92 = v108;
      v93 = v107;
    }

    else
    {

      (v124)(v113, v77);
      v91 = v109;
      v92 = v108;
      v93 = v107;
      v88 = v130;
    }

    v132 = v50;
    v133 = v49;
    sub_2150A4B10();
    sub_2150A58E0();
    if (!v44)
    {
      (*(v92 + 8))(v93, v91);
      v104 = v131;
      v105 = v124;
      (v124)(v73, v131);
      v105(v88, v104);

      return;
    }

    (*(v92 + 8))(v93, v91);
    v94 = v131;
    v95 = v124;
    (v124)(v73, v131);
    v95(v88, v94);

    v65 = &OBJC_PROTOCOL___ICLegacyContext;
LABEL_32:
    if (v65[15].inst_props == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  v45 = 0;
  v46 = 0;
  v47 = v32 + 5;
  v48 = 0xE000000000000000;
  while (v46 < v32[2])
  {
    v50 = *(v47 - 1);
    v49 = *v47;
    if (!v45 && v48 == 0xE000000000000000 || (sub_2150A6270() & 1) != 0)
    {
    }

    else
    {
      v132 = v45;
      v133 = v48;

      MEMORY[0x2160617E0](32, 0xE100000000000000);

      MEMORY[0x2160617E0](v50, v49);

      v50 = v132;
      v49 = v133;
    }

    ++v46;
    v47 += 2;
    v48 = v49;
    v45 = v50;
    if (v43 == v46)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_38:
  swift_once();
LABEL_33:
  v96 = sub_2150A3F30();
  __swift_project_value_buffer(v96, qword_27CA41E38);
  v97 = v44;
  v98 = sub_2150A3F10();
  v99 = sub_2150A5560();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *v100 = 138412290;
    v102 = v44;
    v103 = _swift_stdlib_bridgeErrorToNSError();
    *(v100 + 4) = v103;
    *v101 = v103;
    _os_log_impl(&dword_214D51000, v98, v99, "Error writing transcript text to URL %@", v100, 0xCu);
    sub_214F302D4(v101, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v101, -1, -1);
    MEMORY[0x216064AF0](v100, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_214F50074(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_214F500D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;

  swift_beginAccess();
  v6 = *(a3 + 16);
  *(a3 + 16) = 0;
}

__n128 sub_214F5013C@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t sub_214F50148(void *a1)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = [v6 copyNextSampleBuffer];
  if (v8)
  {
    v9 = v8;
    v10 = v5;
    v11 = v4;
    v12 = v7;
    v13 = v6;
    v14 = sub_214F554EC(v9, v11);
  }

  else
  {
    v14 = 0;
  }

  *a1 = v14;
  v15 = *(v2 + 8);

  return v15();
}

uint64_t sub_214F50230(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_2150A5010();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](sub_214F502C0, v4, v6);
}

uint64_t sub_214F502C0()
{
  v1 = *(v0 + 24);
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = [v4 copyNextSampleBuffer];
  if (v6)
  {
    v7 = v6;
    v8 = v2;
    v9 = v3;
    v10 = v5;
    v11 = v4;
    v12 = sub_214F554EC(v7, v9);
  }

  else
  {
    v12 = 0;
  }

  **(v0 + 16) = v12;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_214F503A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_214F503F8(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for TranscriptViewModelSegment(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_214F422A4(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_214F504B8(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_214F504B8(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_2150A60E0();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TranscriptViewModelSegment(0);
        v10 = sub_2150A4F50();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for TranscriptViewModelSegment(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_214F505F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TranscriptViewModelSegment(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v23;
    v34 = v21;
    while (1)
    {
      sub_214F5456C(v24, v18);
      sub_214F5456C(v21, v14);
      v26 = *&v18[*(v8 + 32)];
      v27 = *&v14[*(v8 + 24)];
      sub_214F545D0(v14);
      result = sub_214F545D0(v18);
      if (v26 >= v27)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_214F5462C(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_214F5462C(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_214F50800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TranscriptViewModelSegment(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v30 - v17;
  v32 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v31 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v36 = a3;
    v33 = v24;
    v34 = v23;
    v25 = v23;
    v35 = v21;
    while (1)
    {
      sub_214F5456C(v24, v18);
      sub_214F5456C(v21, v14);
      v26 = *(v8 + 24);
      v27 = *&v18[v26];
      v28 = *&v14[v26];
      sub_214F545D0(v14);
      result = sub_214F545D0(v18);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v36 + 1;
        v21 = v35 + v31;
        v23 = v34 - 1;
        v24 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_214F5462C(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_214F5462C(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_214F50A08(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v98 = a1;
  v9 = type metadata accessor for TranscriptViewModelSegment(0);
  v107 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v101 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v110 = &v95 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v95 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v95 - v18;
  v109 = a3;
  v20 = *(a3 + 8);
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_134;
    }

    a3 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_214F41D00(a3);
    }

    v111 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v109)
      {
        v91 = *(result + 16 * a3);
        v92 = result;
        v93 = *(result + 16 * (a3 - 1) + 40);
        sub_214F51AAC(*v109 + *(v107 + 72) * v91, *v109 + *(v107 + 72) * *(result + 16 * (a3 - 1) + 32), *v109 + *(v107 + 72) * v93, v5);
        if (v6)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_214F41D00(v92);
        }

        if (a3 - 2 >= *(v92 + 2))
        {
          goto LABEL_122;
        }

        v94 = &v92[16 * a3];
        *v94 = v91;
        *(v94 + 1) = v93;
        v111 = v92;
        sub_214F41C74(a3 - 1);
        result = v111;
        a3 = *(v111 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v97 = a4;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v102 = v22;
    v99 = v23;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      a3 = *v109;
      v25 = *(v107 + 72);
      v26 = v23;
      v5 = *v109 + v25 * v24;
      sub_214F5456C(v5, v19);
      sub_214F5456C(a3 + v25 * v26, v16);
      v27 = *&v19[*(v9 + 32)];
      v28 = *&v16[*(v9 + 24)];
      sub_214F545D0(v16);
      result = sub_214F545D0(v19);
      v29 = v26 + 2;
      v108 = v25;
      v30 = a3 + v25 * v29;
      while (v20 != v29)
      {
        a3 = v27 < v28;
        sub_214F5456C(v30, v19);
        sub_214F5456C(v5, v16);
        v31 = *&v19[*(v9 + 32)];
        v32 = *&v16[*(v9 + 24)];
        sub_214F545D0(v16);
        result = sub_214F545D0(v19);
        ++v29;
        v30 += v108;
        v5 += v108;
        if (v27 < v28 == v31 >= v32)
        {
          v20 = v29 - 1;
          break;
        }
      }

      a4 = v97;
      v23 = v99;
      if (v27 < v28)
      {
        if (v20 < v99)
        {
          goto LABEL_125;
        }

        if (v99 < v20)
        {
          v96 = v6;
          v33 = v108 * (v20 - 1);
          v34 = v20 * v108;
          v106 = v20;
          v35 = v99;
          v5 = v99 * v108;
          do
          {
            if (v35 != --v20)
            {
              v105 = v20;
              a3 = *v109;
              if (!*v109)
              {
                goto LABEL_131;
              }

              sub_214F5462C(a3 + v5, v101);
              if (v5 < v33 || a3 + v5 >= a3 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
                v20 = v105;
              }

              else
              {
                v20 = v105;
                if (v5 != v33)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_214F5462C(v101, a3 + v33);
            }

            ++v35;
            v33 -= v108;
            v34 -= v108;
            v5 += v108;
          }

          while (v35 < v20);
          v6 = v96;
          a4 = v97;
          v23 = v99;
          v20 = v106;
        }
      }
    }

    v36 = v109[1];
    if (v20 < v36)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_124;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_126;
        }

        if (v23 + a4 >= v36)
        {
          v37 = v109[1];
        }

        else
        {
          v37 = v23 + a4;
        }

        if (v37 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v20 != v37)
        {
          break;
        }
      }
    }

    v38 = v20;
    if (v20 < v23)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v102;
    }

    else
    {
      result = sub_21505F5DC(0, *(v102 + 2) + 1, 1, v102);
      v22 = result;
    }

    a3 = *(v22 + 2);
    v39 = *(v22 + 3);
    v5 = a3 + 1;
    if (a3 >= v39 >> 1)
    {
      result = sub_21505F5DC((v39 > 1), a3 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v40 = &v22[16 * a3];
    *(v40 + 4) = v99;
    *(v40 + 5) = v38;
    v108 = *v98;
    if (!v108)
    {
      goto LABEL_133;
    }

    v103 = v38;
    if (a3)
    {
      while (1)
      {
        v41 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v42 = *(v22 + 4);
          v43 = *(v22 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_52:
          if (v45)
          {
            goto LABEL_112;
          }

          v58 = &v22[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_115;
          }

          v64 = &v22[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_119;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v68 = &v22[16 * v5];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_66:
        if (v63)
        {
          goto LABEL_114;
        }

        v71 = &v22[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_117;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v41 - 1;
        if (v41 - 1 >= v5)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v109)
        {
          goto LABEL_130;
        }

        v79 = v22;
        v80 = *&v22[16 * a3 + 32];
        v5 = *&v22[16 * v41 + 40];
        sub_214F51AAC(*v109 + *(v107 + 72) * v80, *v109 + *(v107 + 72) * *&v22[16 * v41 + 32], *v109 + *(v107 + 72) * v5, v108);
        if (v6)
        {
        }

        if (v5 < v80)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_214F41D00(v79);
        }

        if (a3 >= *(v79 + 2))
        {
          goto LABEL_109;
        }

        v81 = &v79[16 * a3];
        *(v81 + 4) = v80;
        *(v81 + 5) = v5;
        v111 = v79;
        result = sub_214F41C74(v41);
        v22 = v111;
        v5 = *(v111 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v22[16 * v5 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_110;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_111;
      }

      v53 = &v22[16 * v5];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_113;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_116;
      }

      if (v57 >= v49)
      {
        v75 = &v22[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_120;
        }

        if (v44 < v78)
        {
          v41 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v109[1];
    v21 = v103;
    a4 = v97;
    if (v103 >= v20)
    {
      goto LABEL_95;
    }
  }

  v96 = v6;
  a3 = *v109;
  v82 = *(v107 + 72);
  v83 = *v109 + v82 * (v20 - 1);
  v84 = -v82;
  v85 = v23 - v20;
  v100 = v82;
  v5 = a3 + v20 * v82;
  v103 = v37;
LABEL_85:
  v105 = v85;
  v106 = v20;
  v104 = v5;
  v108 = v83;
  v86 = v83;
  while (1)
  {
    sub_214F5456C(v5, v19);
    sub_214F5456C(v86, v16);
    v87 = *&v19[*(v9 + 32)];
    v88 = *&v16[*(v9 + 24)];
    sub_214F545D0(v16);
    result = sub_214F545D0(v19);
    if (v87 >= v88)
    {
LABEL_84:
      v20 = v106 + 1;
      v83 = v108 + v100;
      v85 = v105 - 1;
      v38 = v103;
      v5 = v104 + v100;
      if (v106 + 1 != v103)
      {
        goto LABEL_85;
      }

      v6 = v96;
      if (v103 < v99)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!a3)
    {
      break;
    }

    v89 = v110;
    sub_214F5462C(v5, v110);
    swift_arrayInitWithTakeFrontToBack();
    sub_214F5462C(v89, v86);
    v86 += v84;
    v5 += v84;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_214F5125C(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = type metadata accessor for TranscriptViewModelSegment(0);
  v117 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v112 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v120 = &v105 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v105 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v105 - v18;
  v119 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_214F41D00(v22);
      v22 = result;
    }

    v122 = v22;
    v101 = *(v22 + 2);
    if (v101 >= 2)
    {
      while (*v119)
      {
        v102 = *&v22[16 * v101];
        v103 = *&v22[16 * v101 + 24];
        sub_214F51F68(*v119 + *(v117 + 72) * v102, *v119 + *(v117 + 72) * *&v22[16 * v101 + 16], *v119 + *(v117 + 72) * v103, v5);
        if (v6)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_214F41D00(v22);
        }

        if (v101 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v104 = &v22[16 * v101];
        *v104 = v102;
        *(v104 + 1) = v103;
        v122 = v22;
        result = sub_214F41C74(v101 - 1);
        v22 = v122;
        v101 = *(v122 + 2);
        if (v101 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v121 = result;
  v108 = a4;
  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *v119;
      v26 = *(v117 + 72);
      v5 = *v119 + v26 * v24;
      sub_214F5456C(v5, v19);
      sub_214F5456C(v25 + v26 * v23, v16);
      v27 = *(v121 + 24);
      v28 = *&v19[v27];
      v29 = *&v16[v27];
      sub_214F545D0(v16);
      result = sub_214F545D0(v19);
      v109 = v23;
      v30 = v23 + 2;
      v118 = v26;
      v31 = v25 + v26 * v30;
      while (v20 != v30)
      {
        sub_214F5456C(v31, v19);
        sub_214F5456C(v5, v16);
        v32 = *(v121 + 24);
        v33 = *&v19[v32];
        v34 = *&v16[v32];
        sub_214F545D0(v16);
        result = sub_214F545D0(v19);
        ++v30;
        v31 += v118;
        v5 += v118;
        if (v28 < v29 == v33 >= v34)
        {
          v20 = v30 - 1;
          break;
        }
      }

      v23 = v109;
      if (v28 < v29)
      {
        if (v20 < v109)
        {
          goto LABEL_123;
        }

        if (v109 < v20)
        {
          v106 = v22;
          v107 = v6;
          v35 = v118 * (v20 - 1);
          v36 = v20 * v118;
          v116 = v20;
          v37 = v20;
          v38 = v109;
          v39 = v109 * v118;
          do
          {
            if (v38 != --v37)
            {
              v5 = *v119;
              if (!*v119)
              {
                goto LABEL_129;
              }

              sub_214F5462C(v5 + v39, v112);
              if (v39 < v35 || v5 + v39 >= v5 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_214F5462C(v112, v5 + v35);
            }

            ++v38;
            v35 -= v118;
            v36 -= v118;
            v39 += v118;
          }

          while (v38 < v37);
          v22 = v106;
          v6 = v107;
          v23 = v109;
          v20 = v116;
        }
      }
    }

    v40 = v119[1];
    if (v20 < v40)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_122;
      }

      if (v20 - v23 < v108)
      {
        if (__OFADD__(v23, v108))
        {
          goto LABEL_124;
        }

        if (v23 + v108 >= v40)
        {
          v41 = v119[1];
        }

        else
        {
          v41 = v23 + v108;
        }

        if (v41 < v23)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v20 != v41)
        {
          break;
        }
      }
    }

    v42 = v20;
    if (v20 < v23)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F5DC(0, *(v22 + 2) + 1, 1, v22);
      v22 = result;
    }

    v44 = *(v22 + 2);
    v43 = *(v22 + 3);
    v5 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_21505F5DC((v43 > 1), v44 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v45 = &v22[16 * v44];
    *(v45 + 4) = v23;
    *(v45 + 5) = v42;
    v46 = *v110;
    if (!*v110)
    {
      goto LABEL_131;
    }

    v113 = v42;
    if (v44)
    {
      while (1)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v48 = *(v22 + 4);
          v49 = *(v22 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_52:
          if (v51)
          {
            goto LABEL_110;
          }

          v64 = &v22[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_113;
          }

          v70 = &v22[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_117;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v74 = &v22[16 * v5];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_66:
        if (v69)
        {
          goto LABEL_112;
        }

        v77 = &v22[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_115;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_73:
        v85 = v47 - 1;
        if (v47 - 1 >= v5)
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

        if (!*v119)
        {
          goto LABEL_128;
        }

        v86 = *&v22[16 * v85 + 32];
        v5 = *&v22[16 * v47 + 40];
        sub_214F51F68(*v119 + *(v117 + 72) * v86, *v119 + *(v117 + 72) * *&v22[16 * v47 + 32], *v119 + *(v117 + 72) * v5, v46);
        if (v6)
        {
        }

        if (v5 < v86)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_214F41D00(v22);
        }

        if (v85 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v87 = &v22[16 * v85];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v122 = v22;
        result = sub_214F41C74(v47);
        v22 = v122;
        v5 = *(v122 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v22[16 * v5 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_108;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_109;
      }

      v59 = &v22[16 * v5];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_111;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_114;
      }

      if (v63 >= v55)
      {
        v81 = &v22[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v50 < v84)
        {
          v47 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v119[1];
    v21 = v113;
    if (v113 >= v20)
    {
      goto LABEL_94;
    }
  }

  v106 = v22;
  v107 = v6;
  v88 = *v119;
  v89 = *(v117 + 72);
  v90 = *v119 + v89 * (v20 - 1);
  v91 = v23;
  v92 = -v89;
  v109 = v91;
  v93 = v91 - v20;
  v111 = v89;
  v5 = v88 + v20 * v89;
  v113 = v41;
LABEL_85:
  v115 = v93;
  v116 = v20;
  v114 = v5;
  v118 = v90;
  v94 = v90;
  v95 = v121;
  while (1)
  {
    sub_214F5456C(v5, v19);
    sub_214F5456C(v94, v16);
    v96 = *(v95 + 24);
    v97 = *&v19[v96];
    v98 = *&v16[v96];
    sub_214F545D0(v16);
    result = sub_214F545D0(v19);
    if (v97 >= v98)
    {
LABEL_84:
      v20 = v116 + 1;
      v90 = v118 + v111;
      v93 = v115 - 1;
      v42 = v113;
      v5 = v114 + v111;
      if (v116 + 1 != v113)
      {
        goto LABEL_85;
      }

      v22 = v106;
      v6 = v107;
      v23 = v109;
      if (v113 < v109)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    v99 = v120;
    sub_214F5462C(v5, v120);
    v95 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_214F5462C(v99, v94);
    v94 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
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

uint64_t sub_214F51AAC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v7 = type metadata accessor for TranscriptViewModelSegment(0);
  v8 = MEMORY[0x28223BE20](v7);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v45 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_58;
  }

  v14 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_59;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v17;
    if (v17 >= 1)
    {
      v25 = -v13;
      v26 = a4 + v17;
      v43 = a4;
      v44 = v7;
      v42 = a1;
      do
      {
        v40 = v24;
        v27 = a2 + v25;
        while (1)
        {
          v28 = v47;
          if (a2 <= a1)
          {
            v50 = a2;
            v48 = v40;
            goto LABEL_56;
          }

          v41 = v24;
          v47 += v25;
          v29 = v25;
          v30 = v26 + v25;
          v31 = v26 + v25;
          v32 = v45;
          sub_214F5456C(v31, v45);
          v33 = v27;
          v34 = v27;
          v35 = v46;
          sub_214F5456C(v34, v46);
          v36 = *(v32 + *(v7 + 32));
          v37 = *(v35 + *(v7 + 24));
          sub_214F545D0(v35);
          sub_214F545D0(v32);
          if (v36 < v37)
          {
            break;
          }

          v24 = v30;
          if (v28 < v26 || v47 >= v26)
          {
            v7 = v44;
            swift_arrayInitWithTakeFrontToBack();
            v24 = v30;
            v27 = v33;
            v25 = v29;
          }

          else
          {
            v7 = v44;
            v27 = v33;
            v25 = v29;
            if (v28 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v30;
            }
          }

          v26 = v24;
          a1 = v42;
          if (v30 <= v43)
          {
            goto LABEL_54;
          }
        }

        if (v28 < a2 || v47 >= a2)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v29;
        }

        else
        {
          v38 = v28 == a2;
          a2 = v33;
          v25 = v29;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v7 = v44;
        v24 = v41;
        a1 = v42;
      }

      while (v26 > v43);
    }

LABEL_54:
    v50 = a2;
    v48 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < v47)
    {
      do
      {
        v20 = v45;
        sub_214F5456C(a2, v45);
        v21 = v46;
        sub_214F5456C(a4, v46);
        v22 = *(v20 + *(v7 + 32));
        v23 = *(v21 + *(v7 + 24));
        sub_214F545D0(v21);
        sub_214F545D0(v20);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v50 = a1;
      }

      while (a4 < v18 && a2 < v47);
    }
  }

LABEL_56:
  sub_214F52420(&v50, &v49, &v48, type metadata accessor for TranscriptViewModelSegment);
  return 1;
}

uint64_t sub_214F51F68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = type metadata accessor for TranscriptViewModelSegment(0);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
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
  v50 = a1;
  v49 = a4;
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

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v44 = v26;
      v45 = a4;
      do
      {
        v42 = v25;
        v28 = a2 + v26;
        while (1)
        {
          if (a2 <= a1)
          {
            v50 = a2;
            v25 = v42;
            goto LABEL_57;
          }

          v30 = a3;
          v43 = v25;
          a3 += v26;
          v31 = v27 + v26;
          sub_214F5456C(v31, v12);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v46;
          sub_214F5456C(v33, v46);
          v36 = *(v47 + 24);
          v37 = *(v34 + v36);
          v38 = *(v35 + v36);
          v39 = v35;
          v12 = v34;
          sub_214F545D0(v39);
          sub_214F545D0(v34);
          if (v37 < v38)
          {
            break;
          }

          v25 = v31;
          if (v30 < v27 || a3 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v31;
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
              v25 = v31;
            }
          }

          v27 = v25;
          v29 = v31 > v45;
          v26 = v44;
          if (!v29)
          {
            goto LABEL_55;
          }
        }

        if (v30 < a2 || a3 >= a2)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v44;
        }

        else
        {
          v40 = v30 == a2;
          a2 = v32;
          v26 = v44;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v43;
      }

      while (v27 > v45);
    }

LABEL_55:
    v50 = a2;
LABEL_57:
    v48 = v25;
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

    v19 = a4 + v17;
    v48 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        sub_214F5456C(a2, v12);
        v21 = v46;
        sub_214F5456C(a4, v46);
        v22 = *(v47 + 24);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_214F545D0(v21);
        sub_214F545D0(v12);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v50 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

  sub_214F52420(&v50, &v49, &v48, type metadata accessor for TranscriptViewModelSegment);
  return 1;
}

uint64_t sub_214F52420(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_214F52508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;

  return MEMORY[0x2822009F8](sub_214F5259C, 0, 0);
}

uint64_t sub_214F5259C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = objc_allocWithZone(MEMORY[0x277CE6410]);
  v0[10] = 0;
  v4 = v1;
  v5 = v2;
  v6 = [v3 initWithAsset:v4 error:v0 + 10];
  v0[22] = v6;
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[19];
    v9 = v7;

    v10 = *MEMORY[0x277CE5E48];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_214F527D8;
    v11 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E58);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21504A2F8;
    v0[13] = &block_descriptor_108;
    v0[14] = v11;
    [v8 loadTracksWithMediaType:v10 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v13 = v0[19];
    v12 = v0[20];
    v14 = v7;
    sub_2150A35D0();

    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_214F527D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_214F52B14;
  }

  else
  {
    v2 = sub_214F52914;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214F52914()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v5 = v1[1];
  v4 = v1[2];
  *(v0 + 80) = *v1;
  *(v0 + 96) = v5;
  *(v0 + 112) = v4;
  [v2 setTimeRange_];
  v6 = [v3 settings];

  sub_2150A4920();
  v7 = objc_allocWithZone(MEMORY[0x277CE6418]);
  sub_214F54A38();
  v8 = sub_2150A4EB0();

  v9 = sub_2150A4910();

  v10 = [v7 initWithAudioTracks:v8 audioSettings:v9];

  [v10 setAlwaysCopiesSampleData_];
  if ([v2 canAddOutput_])
  {
    v11 = *(v0 + 176);
    [v11 addOutput_];
    [v11 startReading];
  }

  v12 = *(v0 + 8);
  v13 = *(v0 + 176);
  v14 = *(v0 + 152);
  v15 = *(v0 + 160);

  return v12(v14, v15, v13, v10);
}

uint64_t sub_214F52B14()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_214F52BC8(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EE8);
  v2[8] = swift_task_alloc();
  sub_2150A4120();
  v2[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EF0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EF8);
  v2[14] = swift_task_alloc();
  sub_2150A3AC0();
  v2[15] = swift_task_alloc();
  v4 = sub_2150A3C30();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214F52DDC, 0, 0);
}

uint64_t sub_214F52DDC()
{
  v58 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[16];
  v4 = v0[17];
  v5 = [objc_opt_self() sharedInstance];
  sub_2150A56F0();

  v6 = *(v4 + 16);
  v6(v2, v1, v3);
  v7 = (*(v4 + 88))(v2, v3);
  v8 = *MEMORY[0x277D36080];
  if (v7 != *MEMORY[0x277D36080])
  {
    (*(v0[17] + 8))(v0[19], v0[16]);
  }

  if (qword_27CA41470 != -1)
  {
    swift_once();
  }

  v9 = v0[20];
  v10 = v0[18];
  v11 = v0[16];
  v12 = sub_2150A3F30();
  __swift_project_value_buffer(v12, qword_27CA41E38);
  v6(v10, v9, v11);
  v13 = sub_2150A3F10();
  v14 = sub_2150A5550();
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[17];
  v16 = v0[18];
  v18 = v0[16];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v55 = v8;
    v20 = swift_slowAlloc();
    v57 = v20;
    *v19 = 136315138;
    v21 = sub_2150A3C20();
    v56 = v7;
    v23 = v22;
    (*(v17 + 8))(v16, v18);
    v24 = sub_214F7723C(v21, v23, &v57);
    v7 = v56;

    *(v19 + 4) = v24;
    _os_log_impl(&dword_214D51000, v13, v14, "call transcription model: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v25 = v20;
    v8 = v55;
    MEMORY[0x216064AF0](v25, -1, -1);
    MEMORY[0x216064AF0](v19, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v26 = sub_2150A3F10();
  v27 = sub_2150A5550();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v57 = v29;
    *v28 = 136315138;
    if (v7 == v8)
    {
      v30 = 0x66666F2052534147;
    }

    else
    {
      v30 = 0x525341474ELL;
    }

    if (v7 == v8)
    {
      v31 = 0xEC000000656E696CLL;
    }

    else
    {
      v31 = 0xE500000000000000;
    }

    v32 = sub_214F7723C(v30, v31, &v57);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_214D51000, v26, v27, "task hint for call transcription: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x216064AF0](v29, -1, -1);
    MEMORY[0x216064AF0](v28, -1, -1);
  }

  v33 = v0[14];
  sub_2150A41E0();
  sub_2150A3A70();
  v34 = sub_2150A4130();
  (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F00);
  v35 = sub_2150A4140();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2150C25D0;
  (*(v36 + 104))(v38 + v37, *MEMORY[0x277CDCAB0], v35);
  sub_214F803B8(v38);
  swift_setDeallocating();
  (*(v36 + 8))(v38 + v37, v35);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F08);
  v39 = sub_2150A4290();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2150C25D0;
  (*(v40 + 104))(v42 + v41, *MEMORY[0x277CDCDA0], v39);
  sub_214F806D8(v42);
  swift_setDeallocating();
  (*(v40 + 8))(v42 + v41, v39);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F10);
  v43 = sub_2150A41A0();
  v44 = *(v43 - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2150C29B0;
  v48 = v47 + v46;
  v49 = *(v44 + 104);
  v49(v48, *MEMORY[0x277CDCB08], v43);
  v49(v48 + v45, *MEMORY[0x277CDCB10], v43);
  v49(v48 + 2 * v45, *MEMORY[0x277CDCB28], v43);
  sub_21505578C(v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v50 = sub_2150A41D0();
  v0[21] = v50;
  v0[22] = sub_2150A40E0();
  v0[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F18);
  v51 = swift_allocObject();
  v0[24] = v51;
  *(v51 + 16) = xmmword_2150C25D0;
  v52 = sub_214F549F0(&qword_27CA41F20, MEMORY[0x277CDCB98]);
  v0[25] = v52;
  *(v51 + 32) = v50;
  *(v51 + 40) = v52;

  v53 = swift_task_alloc();
  v0[26] = v53;
  *v53 = v0;
  v53[1] = sub_214F535F8;

  return MEMORY[0x28212BBB8](v51);
}

uint64_t sub_214F535F8(void *a1)
{
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_214F53D70, 0, 0);
  }

  else
  {
    v5 = *(v4 + 48);
    v6 = a1;
    v7 = swift_task_alloc();
    *(v4 + 232) = v7;
    *v7 = v4;
    v7[1] = sub_214F537C8;
    v8 = *(v4 + 56);
    v9 = *(v4 + 48);

    return sub_214F52508(v9, v6, v8);
  }
}

uint64_t sub_214F537C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 240) = v4;

  if (v4)
  {
    v11 = sub_214F53C64;
  }

  else
  {
    v10[31] = a4;
    v10[32] = a3;
    v10[33] = a2;
    v10[34] = a1;
    v11 = sub_214F53910;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_214F53910()
{
  v1 = *(v0 + 248);
  v15 = *(v0 + 200);
  v2 = *(v0 + 168);
  v19 = *(v0 + 160);
  v17 = *(v0 + 136);
  v18 = *(v0 + 128);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  v16 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 272);
  *(v0 + 24) = vextq_s8(*(v0 + 256), *(v0 + 256), 8uLL);
  *(v0 + 40) = v1;
  sub_2150A4200();
  sub_214F5499C();
  sub_2150A5DC0();
  sub_2150A4100();
  v7 = sub_2150A40F0();
  sub_2150A4110();
  (*(v5 + 16))(v4, v3, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2150C29C0;
  *(v8 + 32) = v2;
  *(v8 + 40) = v15;
  v9 = sub_214F549F0(&qword_27CA41F30, MEMORY[0x277CDCA78]);
  *(v8 + 48) = v7;
  *(v8 + 56) = v9;
  v10 = sub_2150A4250();
  (*(*(v10 - 8) + 56))(v16, 1, 1, v10);
  sub_2150A4240();
  swift_allocObject();

  sub_2150A4230();
  sub_214F43BCC(&qword_27CA41F38, &qword_27CA41EF0);
  v11 = sub_2150A40C0();

  (*(v5 + 8))(v3, v6);
  (*(v17 + 8))(v19, v18);

  v12 = *(v0 + 8);
  v13 = *(v0 + 168);

  return v12(v11, v13);
}

uint64_t sub_214F53C64()
{

  (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214F53D70()
{

  (*(v0[17] + 8))(v0[20], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_214F53E70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F557A8;

  return sub_214F4AE9C(a1, v4);
}

uint64_t sub_214F53F10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F53FB0;

  return sub_214F4B1B0(a1, v4);
}

uint64_t sub_214F53FB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_214F540A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_214F557A8;

  return sub_214F4B548(a1, v5, v4);
}

uint64_t sub_214F54150(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_214F557A8;

  return sub_214F4B704(a1, v5, v4);
}

uint64_t sub_214F541FC(uint64_t a1)
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
  v11[1] = sub_214F557A8;

  return sub_214F4B89C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_214F542E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214F557A8;

  return sub_214F4C528(a1, v4, v5, v7, v6);
}

uint64_t sub_214F543A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_214F557A8;

  return sub_214F4C828(a1, a2, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_214F544B0()
{
  result = qword_27CA41E70;
  if (!qword_27CA41E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA41E70);
  }

  return result;
}

uint64_t objectdestroy_67Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_214F5456C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptViewModelSegment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214F545D0(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptViewModelSegment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214F5462C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptViewModelSegment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214F54690(uint64_t a1)
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
  v11[1] = sub_214F557A8;

  return sub_214F4CB10(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_80Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_214F547CC(uint64_t a1)
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
  v11[1] = sub_214F557A8;

  return sub_214F4DED8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_214F548A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214F54918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_214F5499C()
{
  result = qword_27CA41F28;
  if (!qword_27CA41F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA41F28);
  }

  return result;
}

uint64_t sub_214F549F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_214F54A38()
{
  result = qword_27CA41F40;
  if (!qword_27CA41F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA41F40);
  }

  return result;
}

uint64_t sub_214F54A84(uint64_t a1)
{
  *(v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_214F54B14, 0, 0);
}

uint64_t sub_214F54B14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  *(inited + 32) = sub_2150A4AD0();
  *(inited + 40) = v2;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  sub_214FA4BBC(inited);
  swift_setDeallocating();
  sub_214F302D4(inited + 32, &qword_27CA41D60);
  v3 = sub_2150A4910();

  v4 = [objc_opt_self() compositionWithURLAssetInitializationOptions_];
  v0[14] = v4;

  v5 = [v4 addMutableTrackWithMediaType:*MEMORY[0x277CE5E48] preferredTrackID:0];
  v0[15] = v5;
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F50);
    v6 = sub_2150A3B90();
    v0[16] = v6;
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_214F54E40;

    return MEMORY[0x2821FAF00](v0 + 19, v6, 0, 0);
  }

  else
  {
    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v8 = sub_2150A3F30();
    __swift_project_value_buffer(v8, qword_27CA41E38);
    v9 = sub_2150A3F10();
    v10 = sub_2150A5560();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_214D51000, v9, v10, "Not able to add a mutable track to composition. Failing to create file for track", v11, 2u);
      MEMORY[0x216064AF0](v11, -1, -1);
    }

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_214F54E40()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_214F551FC;
  }

  else
  {

    v2 = sub_214F54F90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214F54F90()
{
  v1 = MEMORY[0x277CC08F0];
  *(v0 + 248) = *MEMORY[0x277CC08F0];
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 168);
  *(v0 + 200) = *(v0 + 152);
  *(v0 + 216) = v4;
  *(v0 + 232) = *(v0 + 184);
  *(v0 + 96) = 0;
  v5 = *(v1 + 16);
  *(v0 + 256) = *(v1 + 8);
  *(v0 + 264) = v5;
  v6 = [v2 insertTimeRange:v0 + 200 ofTrack:v3 atTime:v0 + 248 error:v0 + 96];
  v7 = *(v0 + 96);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v11 = v7;
    v12 = sub_2150A35D0();

    swift_willThrow();
    if (qword_27CA41470 != -1)
    {
      swift_once();
    }

    v13 = sub_2150A3F30();
    __swift_project_value_buffer(v13, qword_27CA41E38);
    v14 = v12;
    v15 = sub_2150A3F10();
    v16 = sub_2150A5560();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_214D51000, v15, v16, "unable to make composition for call recording track: %@", v17, 0xCu);
      sub_214F302D4(v18, &qword_27CA41DF0);
      MEMORY[0x216064AF0](v18, -1, -1);
      MEMORY[0x216064AF0](v17, -1, -1);
    }

    else
    {
    }

    v8 = 0;
  }

  v21 = *(v0 + 8);

  return v21(v8);
}

uint64_t sub_214F551FC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 144);
  if (qword_27CA41470 != -1)
  {
    swift_once();
  }

  v3 = sub_2150A3F30();
  __swift_project_value_buffer(v3, qword_27CA41E38);
  v4 = v2;
  v5 = sub_2150A3F10();
  v6 = sub_2150A5560();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_214D51000, v5, v6, "unable to make composition for call recording track: %@", v7, 0xCu);
    sub_214F302D4(v8, &qword_27CA41DF0);
    MEMORY[0x216064AF0](v8, -1, -1);
    MEMORY[0x216064AF0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11(0);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_214F553F0(uint64_t *a1, int a2)
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

uint64_t sub_214F55438(uint64_t result, int a2, int a3)
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

unint64_t sub_214F55498()
{
  result = qword_27CA41F58;
  if (!qword_27CA41F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA41F58);
  }

  return result;
}

id sub_214F554EC(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  bufferListSizeNeededOut[1] = *MEMORY[0x277D85DE8];
  if (CMSampleBufferGetNumSamples(a1) >= 1)
  {
    bufferListSizeNeededOut[0] = 0;
    AudioBufferListWithRetainedBlockBuffer = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(a1, bufferListSizeNeededOut, 0, 0, 0, 0, 0, 0);
    if (AudioBufferListWithRetainedBlockBuffer == sub_2150A4060())
    {
      v5 = swift_allocObject();
      v6 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithLength_];
      *(v5 + 16) = v6;
      if (v6)
      {
        v7 = [v6 mutableBytes];
        v8 = swift_allocObject();
        *(v8 + 16) = 0;
        v9 = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(a1, 0, v7, bufferListSizeNeededOut[0], *MEMORY[0x277CBECE8], *MEMORY[0x277CBECE8], 0, (v8 + 16));
        if (v9 == sub_2150A4060())
        {
          v10 = swift_allocObject();
          *(v10 + 16) = v5;
          *(v10 + 24) = v8;
          v11 = objc_allocWithZone(MEMORY[0x277CB83C8]);
          v15[4] = sub_214F55754;
          v15[5] = v10;
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 1107296256;
          v15[2] = sub_214F503A4;
          v15[3] = &block_descriptor_130;
          v12 = _Block_copy(v15);

          v13 = [v11 initWithPCMFormat:a2 bufferListNoCopy:v7 deallocator:v12];
          _Block_release(v12);

          return v13;
        }
      }
    }
  }

  return 0;
}

uint64_t block_copy_helper_128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ManagedEntityID.entityIdentifierString.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  ManagedEntityID.uriRepresentation.getter(a1, a2, &v11 - v5);
  v7 = sub_2150A3750();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_214F302D4(v6, &qword_27CA41D40);
    return 0;
  }

  else
  {
    v10 = sub_2150A3650();
    (*(v8 + 8))(v6, v7);
    return v10;
  }
}

uint64_t ManagedEntityID.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2150A3750();
  (*(*(v6 - 8) + 8))(a1, v6);
  v7 = *(*(a2 - 8) + 56);

  return v7(a3, 1, 1, a2);
}

uint64_t ManagedEntityID.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v15);
  if (v15 == 2)
  {
    v2 = 0xE500000000000000;
    v3 = 0x3E6C696E3CLL;
  }

  else
  {
    v4 = 1819112552;
    if ((v15 & 1) == 0)
    {
      v4 = 0x6E7265646F6DLL;
    }

    v5 = 0xE600000000000000;
    if (v15)
    {
      v5 = 0xE400000000000000;
    }

    v15 = v4;
    v16 = v5;
    v3 = sub_2150A4B50();
    v2 = v6;
  }

  v15 = sub_2150A2F30();
  v16 = v7;
  v8 = sub_2150A4B50();
  v10 = v9;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2150A5B20();
  v11 = sub_2150A6670();
  v13 = v12;

  v15 = v11;
  v16 = v13;
  MEMORY[0x2160617E0](0x747865746E6F6328, 0xEE00203A65707954);
  MEMORY[0x2160617E0](v3, v2);

  MEMORY[0x2160617E0](0x203A697275202CLL, 0xE700000000000000);
  MEMORY[0x2160617E0](v8, v10);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  return v15;
}

uint64_t static ManagedEntityID.entityIdentifier(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v131 = a4;
  v136 = a5;
  v130 = sub_2150A4340();
  v132 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v111 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_2150A42C0();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v124 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v127 = &v104 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F60);
  MEMORY[0x28223BE20](v14 - 8);
  v119 = &v104 - v15;
  v126 = sub_2150A42D0();
  v118 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v120 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F68);
  MEMORY[0x28223BE20](v17 - 8);
  v116 = &v104 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F70);
  MEMORY[0x28223BE20](v117);
  v128 = &v104 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48);
  MEMORY[0x28223BE20](v20 - 8);
  v114 = &v104 - v21;
  v22 = sub_2150A4360();
  v134 = *(v22 - 8);
  v135 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v113 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v133 = &v104 - v25;
  v110 = sub_2150A57E0();
  v109 = *(v110 - 8);
  v26 = MEMORY[0x28223BE20](v110);
  v112 = &v104 - v27;
  v28 = *(a3 - 8);
  MEMORY[0x28223BE20](v26);
  v108 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v104 - v31;
  v33 = sub_2150A3750();
  v129 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v104 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v104 - v37;
  v39 = a1;
  v144 = a1;
  v145 = a2;
  v40 = a2;
  v142 = 58;
  v143 = 0xE100000000000000;
  v41 = sub_214F57844();
  sub_214F57898();
  v125 = v41;
  sub_2150A4A00();
  if (v139)
  {
    return (*(v28 + 56))(v136, 1, 1, a3);
  }

  v107 = v28;
  v115 = a3;
  v106 = v138;
  v43 = sub_2150A4D40();
  MEMORY[0x216061730](v43);

  v44 = sub_2150A4A90();

  v45 = ICIsNotesURLScheme(v44);

  if (!v45)
  {
    return (*(v107 + 56))(v136, 1, 1, v115);
  }

  v105 = v39;
  sub_2150A3720();
  v46 = v129;
  v47 = (*(v129 + 48))(v32, 1, v33);
  v48 = v115;
  if (v47 == 1)
  {
    sub_214F302D4(v32, &qword_27CA41D40);
  }

  else
  {
    (*(v46 + 32))(v38, v32, v33);
    (*(v46 + 16))(v36, v38, v33);
    v49 = v112;
    (*(v131 + 48))(v36, v48);
    (*(v46 + 8))(v38, v33);
    v50 = v107;
    if ((*(v107 + 48))(v49, 1, v48) != 1)
    {
      v86 = v48;
      v89 = *(v50 + 32);
      v90 = v108;
      v89(v108, v49, v86);
      v91 = v136;
      v89(v136, v90, v86);
      goto LABEL_38;
    }

    (*(v109 + 8))(v49, v110);
  }

  v51 = v105;
  v142 = v105;
  v143 = v40;
  v140 = 63;
  v141 = 0xE100000000000000;
  sub_2150A4A00();
  v52 = v128;
  v53 = v126;
  if (v139)
  {
    v54 = sub_214F56B68(v106, v51, v40);
    v55 = v134;
    v56 = v135;
    v57 = v127;
  }

  else
  {
    result = v106;
    v55 = v134;
    v56 = v135;
    v57 = v127;
    if (v137 >> 14 < v106 >> 14)
    {
      __break(1u);
      return result;
    }

    v54 = sub_2150A4D40();
  }

  v58 = MEMORY[0x216061730](v54);
  v60 = v59;

  v144 = v58;
  v145 = v60;

  v61 = sub_2150A4CD0();

  if (v61)
  {
    sub_214F56BB4(2);
  }

  v62 = v133;
  MEMORY[0x216060F30](v144, v145);
  v63 = sub_2150A42E0();
  v64 = 1;
  (*(*(v63 - 8) + 56))(v114, 1, 1, v63);
  sub_2150A4300();
  (*(v55 + 16))(v113, v62, v56);
  v65 = v120;
  sub_2150A42B0();
  v66 = *(v118 + 32);
  v67 = v119;
  v66(v119, v65, v53);
  v68 = v116;
  v66(v116, v67, v53);
  v66(v65, v68, v53);
  v69 = MEMORY[0x277D854A8];
  sub_214F578EC(&qword_280C24260, MEMORY[0x277D854A8]);
  sub_2150A4D60();
  v70 = (v52 + *(v117 + 44));
  *v70 = sub_214F56C3C;
  v70[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78);
  sub_214F578EC(&qword_280C24258, v69);
  v71 = v121;
  sub_2150A5400();
  sub_214F578EC(&unk_280C24268, MEMORY[0x277D85498]);
  v72 = v123;
  LOBYTE(v66) = sub_2150A4A80();
  (*(v122 + 8))(v71, v72);
  if ((v66 & 1) == 0)
  {
    v73 = sub_2150A5470();
    (*(v132 + 16))(v57);
    v73(&v137, 0);
    sub_2150A5410();
    v64 = 0;
  }

  v74 = v132;
  v75 = v130;
  (*(v132 + 56))(v57, v64, 1, v130);
  v76 = v124;
  sub_214F57934(v57, v124);
  if ((*(v74 + 48))(v76, 1, v75) == 1)
  {
    v77 = 0;
    v78 = 0;
    v50 = v107;
    v79 = v134;
    v80 = v135;
  }

  else
  {
    v81 = v111;
    (*(v74 + 32))(v111, v76, v75);
    v137 = sub_2150A4330();
    v138 = v82;
    sub_214D6E6C4();
    v77 = sub_2150A58C0();
    v78 = v83;

    if (!v78)
    {
      v77 = sub_2150A4330();
      v78 = v84;
    }

    v85 = v81;
    v50 = v107;
    v79 = v134;
    v80 = v135;
    (*(v132 + 8))(v85, v75);
  }

  v86 = v115;
  v87 = (*(*(v131 + 8) + 32))(v115);
  if (!v78)
  {

    goto LABEL_36;
  }

  if (v87 == v77 && v78 == v88)
  {

    goto LABEL_29;
  }

  v92 = sub_2150A6270();

  if ((v92 & 1) == 0)
  {
LABEL_36:
    sub_214F302D4(v52, &qword_27CA41F70);
    (*(v79 + 8))(v133, v80);
    return (*(v50 + 56))(v136, 1, 1, v86);
  }

LABEL_29:
  v93 = sub_214F56CC8();
  if (!v94)
  {
    goto LABEL_36;
  }

  v95 = v93;
  v96 = v94;
  v97 = sub_2150A5EE0();
  if (v97)
  {
    if (v97 == 1)
    {
      v98 = 1;
      goto LABEL_34;
    }

    LOBYTE(v137) = 0;
    v91 = v136;
    (*(v131 + 40))(&v137, v95, v96, v86);
    sub_214F302D4(v52, &qword_27CA41F70);
    (*(v79 + 8))(v133, v80);
LABEL_38:
    v102 = *(v50 + 56);
    v103 = v91;
    return v102(v103, 0, 1, v86);
  }

  v98 = 0;
LABEL_34:

  v99 = sub_214F56CC8();
  if (!v100)
  {
    goto LABEL_36;
  }

  LOBYTE(v137) = v98;
  v101 = v136;
  (*(v131 + 40))(&v137, v99, v100, v86);
  sub_214F302D4(v52, &qword_27CA41F70);
  (*(v79 + 8))(v133, v80);
  v102 = *(v50 + 56);
  v103 = v101;
  return v102(v103, 0, 1, v86);
}

unint64_t sub_214F56B68(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_2150A4D40();
  }

  __break(1u);
  return result;
}

uint64_t sub_214F56BB4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_2150A4BF0();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x2821FBD18](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v1);
  }

  return result;
}

uint64_t sub_214F56C3C@<X0>(uint64_t *a1@<X8>)
{
  sub_2150A4330();
  sub_214D6E6C4();
  v2 = sub_2150A58C0();
  v4 = v3;

  if (!v4)
  {
    result = sub_2150A4330();
    v2 = result;
    v4 = v6;
  }

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_214F56CC8()
{
  v1 = v0;
  v2 = sub_2150A4340();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2150A42C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78);
  sub_2150A42D0();
  sub_214F578EC(&qword_280C24258, MEMORY[0x277D854A8]);
  sub_2150A5400();
  sub_214F578EC(&unk_280C24268, MEMORY[0x277D85498]);
  v14 = sub_2150A4A80();
  (*(v5 + 8))(v7, v4);
  if (v14)
  {
    v15 = 1;
    v17 = v26;
    v16 = v27;
  }

  else
  {
    v18 = sub_2150A5470();
    v20 = v26;
    v19 = v27;
    (*(v26 + 16))(v13);
    v18(&v28, 0);
    sub_2150A5410();
    v15 = 0;
    v16 = v19;
    v17 = v20;
  }

  (*(v17 + 56))(v13, v15, 1, v16);
  v21 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F70) + 44));
  sub_214F57934(v13, v11);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    return 0;
  }

  v23 = v25;
  (*(v17 + 32))(v25, v11, v16);
  v21(&v28, v23);
  (*(v17 + 8))(v23, v16);
  return v28;
}

uint64_t ManagedEntityID.uriRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2150A3240();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v54 - v9;
  v10 = sub_2150A4360();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v63 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v58 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v61 = &v54 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - v20;
  v22 = sub_2150A4340();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v62 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v59 = &v54 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v69 = &v54 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v54 - v30;
  v70 = a2;
  (*(*(a2 + 8) + 32))(a1);
  sub_2150A4350();
  v32 = *(v23 + 48);
  if (v32(v21, 1, v22) == 1)
  {
    v19 = v21;
LABEL_5:
    sub_214F302D4(v19, &qword_27CA41D50);
    v35 = sub_2150A3750();
    return (*(*(v35 - 8) + 56))(a3, 1, 1, v35);
  }

  v57 = a3;
  v33 = v21;
  v34 = *(v23 + 32);
  v34(v31, v33, v22);
  sub_214F579A4(a1, v70, v19);
  if (v32(v19, 1, v22) == 1)
  {
    (*(v23 + 8))(v31, v22);
    a3 = v57;
    goto LABEL_5;
  }

  v54 = v34;
  v34(v69, v19, v22);
  v37 = sub_2150A42E0();
  (*(*(v37 - 8) + 56))(v60, 1, 1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D58);
  v38 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2150C25D0;
  v55 = *(v23 + 16);
  v56 = v31;
  v55(v39 + v38, v31, v22);
  v40 = v63;
  sub_2150A42F0();
  (*(v70 + 24))(&v71, a1);
  if (v71 == 2)
  {
    v41 = v61;
    (*(v23 + 56))(v61, 1, 1, v22);
    goto LABEL_13;
  }

  v41 = v61;
  if ((v71 & 1) == 0)
  {
    v44 = 1;
    v43 = v54;
LABEL_12:
    (*(v23 + 56))(v41, v44, 1, v22);
    if (v32(v41, 1, v22) != 1)
    {
      v48 = v59;
      v43(v59, v41, v22);
      v47 = v62;
      v46 = v55;
      v55(v62, v48, v22);
      sub_2150A4310();
      (*(v23 + 8))(v48, v22);
      v45 = v56;
      goto LABEL_15;
    }

LABEL_13:
    sub_214F302D4(v41, &qword_27CA41D50);
    v46 = v55;
    v45 = v56;
    v47 = v62;
LABEL_15:
    v49 = v69;
    v46(v47, v69, v22);
    sub_2150A4310();
    v50 = v66;
    sub_2150A3230();
    v51 = ICNotesAppURLScheme();
    sub_2150A4AD0();

    sub_2150A3200();
    v52 = sub_2150A4320();
    MEMORY[0x21605FD60](v52);
    sub_2150A3160();
    (*(v67 + 8))(v50, v68);
    (*(v64 + 8))(v40, v65);
    v53 = *(v23 + 8);
    v53(v49, v22);
    return (v53)(v45, v22);
  }

  v42 = v58;
  sub_2150A4350();
  result = (v32)(v42, 1, v22);
  v43 = v54;
  if (result != 1)
  {
    v54(v41, v42, v22);
    v44 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_214F57844()
{
  result = qword_280C24560;
  if (!qword_280C24560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C24560);
  }

  return result;
}

unint64_t sub_214F57898()
{
  result = qword_280C24558;
  if (!qword_280C24558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C24558);
  }

  return result;
}

uint64_t sub_214F578EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_214F57934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214F579A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2150A3050();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = (*(a2 + 32))(a1, a2);
  v16[1] = v10;
  v11 = [objc_opt_self() ic_uriIdentifierAllowedCharacterSet];
  sub_2150A3020();

  sub_214D6E6C4();
  sub_2150A58A0();
  v13 = v12;
  (*(v7 + 8))(v9, v6);

  if (v13)
  {
    return sub_2150A4350();
  }

  v15 = sub_2150A4340();
  return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
}

uint64_t sub_214F57BA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2150A3750();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t (*AsyncSequence.uncheckedSendableMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v11);
  v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  *(v13 + 4) = a5;
  (*(v8 + 32))(&v13[v12], v10, a3);

  return sub_214F57E2C;
}

uint64_t sub_214F57D5C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_2150A5220();
}

uint64_t AsyncUncheckedSendableMapSequence.Iterator.base.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t AsyncUncheckedSendableMapSequence.Iterator.base.setter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 40);

  return v4(v1, a1, AssociatedTypeWitness);
}

uint64_t AsyncUncheckedSendableMapSequence.Iterator.transform.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t AsyncUncheckedSendableMapSequence.Iterator.transform.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 44));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AsyncUncheckedSendableMapSequence.Iterator.init(base:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  result = type metadata accessor for AsyncUncheckedSendableMapSequence.Iterator();
  v10 = (a4 + *(result + 44));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t AsyncUncheckedSendableMapSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  v5 = sub_2150A57E0();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[8] = v6;
  v3[9] = *(AssociatedTypeWitness - 8);
  v3[10] = swift_task_alloc();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_task_alloc();
  v3[11] = v9;
  *v9 = v3;
  v9[1] = sub_214F582EC;

  return MEMORY[0x282200308](v6, v7, AssociatedConformanceWitness);
}

uint64_t sub_214F582EC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_214F58588;
  }

  else
  {
    v2 = sub_214F58400;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214F58400()
{
  v1 = v0 + 9;
  v2 = v0[9];
  v3 = v0[8];
  v5 = v0 + 5;
  v4 = v0[5];
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    v1 = v0 + 7;
    v5 = v0 + 6;
    v6 = 1;
    v7 = v3;
  }

  else
  {
    v8 = v0[10];
    v10 = v0[3];
    v9 = v0[4];
    (*(v2 + 32))(v8, v3, v4);
    (*(v9 + *(v10 + 44)))(v8);
    v6 = 0;
    v7 = v0[10];
  }

  v11 = *v1;
  v12 = v0[2];
  v13 = v0[3];
  (*(v11 + 8))(v7, *v5);
  (*(*(*(v13 + 24) - 8) + 56))(v12, v6, 1);

  v14 = v0[1];

  return v14();
}

uint64_t sub_214F58588()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214F585F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214F53FB0;

  return AsyncUncheckedSendableMapSequence.Iterator.next()(a1, a2);
}

uint64_t sub_214F586A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v6[4] = *(AssociatedTypeWitness - 8);
  v13 = swift_task_alloc();
  v6[5] = v13;
  v14 = swift_task_alloc();
  v6[6] = v14;
  *v14 = v6;
  v14[1] = sub_214F587F4;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v13);
}

uint64_t sub_214F587F4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  v4 = v3[1];

  return v4();
}

uint64_t AsyncUncheckedSendableMapSequence.makeBaseIterator.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AsyncUncheckedSendableMapSequence.transform.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AsyncUncheckedSendableMapSequence.makeAsyncIterator()@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v11 = &v13 - v10;
  a1(v9);
  AsyncUncheckedSendableMapSequence.Iterator.init(base:transform:)(v11, a2, a3, a4);
}

uint64_t sub_214F58B2C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_214F58BEC@<X0>(uint64_t a1@<X8>)
{
  AsyncUncheckedSendableMapSequence.makeAsyncIterator()(*v1, *(v1 + 16), *(v1 + 24), a1);
}

uint64_t sub_214F58C44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_214F58CA0()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = sub_214F590B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_214F58D3C(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void sub_214F58ED0(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v9 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v9 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v9)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      bzero(a1, v10);
      *a1 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v10) = 0;
  }

  else if (v14)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v7 < 0x7FFFFFFF)
  {
    v18 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = (a2 - 1);
    }
  }

  else
  {
    v17 = *(v6 + 56);

    v17(a1, a2);
  }
}

unint64_t sub_214F590B4()
{
  result = qword_280C244C8;
  if (!qword_280C244C8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280C244C8);
  }

  return result;
}

uint64_t ICObjectReferences.Types.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_214F591D4()
{
  sub_2150A64B0();
  ICObjectReferences.Types.hash(into:)();
  return sub_2150A64E0();
}

uint64_t ICObjectReferences.identifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*v2 >> 62) > 2)
  {
    sub_2150A4FD0();
    v6 = swift_projectBox();
    v9 = *(a1 + 16);
    v7 = *(*(v9 - 8) + 16);
    v8 = a2;
  }

  else
  {
    v5 = *(a1 + 16);
    sub_2150A4FD0();
    v6 = swift_projectBox();
    v7 = *(*(v5 - 8) + 16);
    v8 = a2;
    v9 = v5;
  }

  return v7(v8, v6, v9);
}

uint64_t ICObjectReferences.title.getter(uint64_t a1)
{
  v2 = *v1 >> 62;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0);
      sub_2150A4FD0();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    }

    else
    {
      MEMORY[0x28223BE20](a1);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0);
      sub_2150A4FD0();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata();
    }

    v4 = *(swift_projectBox() + *(TupleTypeMetadata3 + 48));
  }

  else
  {
    sub_2150A4FD0();
    swift_getTupleTypeMetadata3();
    swift_projectBox();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44BB0);
    swift_dynamicCast();
    return v6;
  }

  return v4;
}

uint64_t ICObjectReferences.children.getter(uint64_t a1)
{
  sub_214F5B1C8(a1);
}

uint64_t ICObjectReferences.recursiveIdentifiers.getter(uint64_t a1)
{
  sub_214F5B154(*(a1 + 16), *(a1 + 16));
  swift_allocObject();
  sub_2150A4EF0();
  ICObjectReferences.identifier.getter(a1, v2);
  v3 = sub_2150A4FD0();
  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v3);
  sub_214F5B1C8(a1);
  sub_2150A4FD0();
  sub_2150A5330();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2150A4DD0();

  sub_2150A4F20();

  swift_getWitnessTable();
  return sub_2150A5340();
}

uint64_t ICObjectReferences.recursiveNoteCount.getter(uint64_t a1)
{
  v2 = a1;
  if (*v1 >> 62 != 2)
  {
    goto LABEL_5;
  }

  v4 = sub_214F5B1C8(a1);
  MEMORY[0x28223BE20](v4);
  v2 = sub_2150A4FD0();

  swift_getWitnessTable();
  sub_2150A4DC0();

  result = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_5:
    v5 = sub_214F5B1C8(v2);
    MEMORY[0x28223BE20](v5);
    sub_2150A4FD0();

    swift_getWitnessTable();
    sub_2150A4DC0();

    return v6;
  }

  return result;
}

uint64_t ICObjectReferences.recursiveAttachmentCount.getter(uint64_t a1)
{
  v2 = a1;
  if (*v1 >> 62 != 3)
  {
    goto LABEL_5;
  }

  v4 = sub_214F5B1C8(a1);
  MEMORY[0x28223BE20](v4);
  v2 = sub_2150A4FD0();

  swift_getWitnessTable();
  sub_2150A4DC0();

  result = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_5:
    v5 = sub_214F5B1C8(v2);
    MEMORY[0x28223BE20](v5);
    sub_2150A4FD0();

    swift_getWitnessTable();
    sub_2150A4DC0();

    return v6;
  }

  return result;
}

uint64_t sub_214F59B70@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for ICObjectReferences();
  result = a2(v6);
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *a3 = v5 + result;
  }

  return result;
}

uint64_t ICObjectReferences.recursiveChildren.getter(uint64_t a1)
{
  v3 = *v1;
  sub_2150A6110();
  swift_allocObject();
  sub_2150A4EF0();
  *v4 = v3;
  v5 = sub_2150A4FD0();
  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v5);
  sub_214F5B1C8(a1);

  swift_getWitnessTable();
  sub_2150A4DD0();

  v6 = sub_2150A4F20();

  return v6;
}

uint64_t ICObjectReferences.filterChildren(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *v4;
  v68 = *v4;
  v72 = sub_214F5B1C8(a3);
  v11 = sub_2150A4FD0();

  swift_getWitnessTable();
  result = sub_2150A5CA0();
  if (!v5)
  {
    v67 = a4;
    v68 = result;
    MEMORY[0x28223BE20](result);
    v66 = *(a3 + 16);
    *&v62[16] = v66;
    *&v62[32] = a1;
    v63 = a2;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
    WitnessTable = swift_getWitnessTable();
    v15 = sub_214F86288(sub_214F5B4D4, v62, v11, a3, v13, WitnessTable, MEMORY[0x277D84950], &v72);

    v17 = v10 >> 62;
    v65 = 0;
    if ((v10 >> 62) > 1)
    {
      if (v17 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0);
        v29 = v66;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v31 = swift_projectBox();
        v32 = (v31 + *(TupleTypeMetadata3 + 48));
        v33 = *v32;
        v34 = v32[1];
        v35 = swift_allocBox();
        v37 = v36;
        v38 = (v36 + *(TupleTypeMetadata3 + 48));
        v39 = *(TupleTypeMetadata3 + 64);
        (*(*(v29 - 8) + 16))(v36, v31, v29);
        *v38 = v33;
        v38[1] = v34;
        *(v37 + v39) = v15;
        v40 = v35 | 0x8000000000000000;
      }

      else
      {
        MEMORY[0x28223BE20](v16);
        strcpy(v62, "identifier title hasMedia children ");
        v64 = v66;
        v68 = v66;
        v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0);
        v70 = MEMORY[0x277D839B0];
        v71 = v11;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v52 = swift_projectBox();
        v53 = (v52 + TupleTypeMetadata[12]);
        v54 = v53[1];
        *&v66 = *v53;
        v55 = *(v52 + TupleTypeMetadata[16]);
        v56 = swift_allocBox();
        v58 = v57;
        v59 = (v57 + TupleTypeMetadata[12]);
        v60 = TupleTypeMetadata[16];
        v61 = TupleTypeMetadata[20];
        (*(*(v64 - 8) + 16))(v57, v52);
        *v59 = v66;
        v59[1] = v54;
        *(v58 + v60) = v55;
        *(v58 + v61) = v15;
        v40 = v56 | 0xC000000000000000;
      }
    }

    else
    {
      v18 = v66;
      if (!v17)
      {
        v19 = swift_getTupleTypeMetadata3();
        v20 = swift_projectBox();
        v21 = (v20 + *(v19 + 48));
        v22 = *v21;
        v23 = v21[1];
        v24 = swift_allocBox();
        v26 = v25;
        v27 = (v25 + *(v19 + 48));
        v28 = *(v19 + 64);
        (*(*(v18 - 8) + 16))(v25, v20, v18);
        *v27 = v22;
        v27[1] = v23;
        *(v26 + v28) = v15;
        *v67 = v24;
      }

      v41 = swift_getTupleTypeMetadata3();
      v42 = swift_projectBox();
      v43 = (v42 + *(v41 + 48));
      v44 = *v43;
      v45 = v43[1];
      v46 = swift_allocBox();
      v48 = v47;
      v49 = (v47 + *(v41 + 48));
      v50 = *(v41 + 64);
      (*(*(v18 - 8) + 16))(v47, v42, v18);
      *v49 = v44;
      v49[1] = v45;
      *(v48 + v50) = v15;
      v40 = v46 | 0x4000000000000000;
    }

    *v67 = v40;
  }

  return result;
}

uint64_t sub_214F5A220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = type metadata accessor for ICObjectReferences();
  result = ICObjectReferences.filterChildren(_:)(a2, a3, v10);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t ICObjectReferences.mapIdentifiers<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v96 = a6;
  v12 = *(a3 + 16);
  v99 = *(v12 - 1);
  v13 = MEMORY[0x28223BE20](a1);
  v95 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v94 = &v91 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v98 = &v91 - v18;
  MEMORY[0x28223BE20](v17);
  v97 = &v91 - v19;
  v20 = *v6;
  v110 = *v6;
  v114[3] = sub_214F5B1C8(v21);
  v104 = v12;
  v105 = a4;
  v106 = *(a3 + 24);
  v107 = a5;
  v100 = a2;
  v101 = a1;
  v108 = a1;
  v109 = a2;
  v22 = sub_2150A4FD0();
  v23 = type metadata accessor for ICObjectReferences();

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  WitnessTable = swift_getWitnessTable();
  v26 = v102;
  v27 = sub_214F86288(sub_214F5B4F8, v103, v22, v23, v24, WitnessTable, MEMORY[0x277D84950], v114);

  if (v26)
  {
    return result;
  }

  v29 = v97;
  v30 = v98;
  v91 = v23;
  v92 = 0;
  v93 = a4;
  v31 = v12;
  v32 = v99;
  v33 = v20 >> 62;
  v102 = v27;
  if ((v20 >> 62) <= 1)
  {
    if (!v33)
    {
      v34 = v12;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v36 = swift_projectBox();
      v37 = (v36 + *(TupleTypeMetadata3 + 48));
      v38 = v37[1];
      v98 = *v37;
      v39 = v32;
      (*(v32 + 16))(v29, v36, v12);
      sub_2150A4FD0();
      v40 = swift_getTupleTypeMetadata3();
      v41 = swift_allocBox();
      v43 = v42;

      v44 = v92;
      v101(v29);
      if (v44)
      {
        (*(v32 + 8))(v29, v34);
LABEL_11:

        return swift_deallocBox();
      }

      v79 = (v43 + *(v40 + 48));
      v80 = *(v40 + 64);
      result = (*(v39 + 8))(v29, v34);
      *v79 = v98;
      v79[1] = v38;
      *(v43 + v80) = v102;
      *v96 = v41;
      return result;
    }

    v56 = swift_getTupleTypeMetadata3();
    v57 = swift_projectBox();
    v58 = (v57 + *(v56 + 48));
    v59 = v58[1];
    v97 = *v58;
    v60 = v30;
    (*(v32 + 16))(v30, v57, v12);
    sub_2150A4FD0();
    v61 = swift_getTupleTypeMetadata3();
    v62 = swift_allocBox();
    v64 = v63;

    v65 = v92;
    v101(v30);
    if (v65)
    {
      (*(v32 + 8))(v30, v31);
      goto LABEL_11;
    }

    v84 = (v64 + *(v61 + 48));
    v85 = *(v61 + 64);
    result = (*(v32 + 8))(v60, v31);
    *v84 = v97;
    v84[1] = v59;
    *(v64 + v85) = v102;
    v86 = v62 | 0x4000000000000000;
LABEL_18:
    *v96 = v86;
    return result;
  }

  if (v33 != 2)
  {
    MEMORY[0x28223BE20](result);
    strcpy(&v91 - 48, "identifier title hasMedia children ");
    v110 = v12;
    v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0);
    v112 = MEMORY[0x277D839B0];
    v113 = v22;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v67 = swift_projectBox();
    v68 = (v67 + *(TupleTypeMetadata + 48));
    v69 = v68[1];
    v97 = *v68;
    LODWORD(v94) = *(v67 + *(TupleTypeMetadata + 64));
    v70 = v32;
    v71 = *(v32 + 16);
    v72 = v95;
    v98 = v31;
    v73 = v71(v95, v67, v31);
    MEMORY[0x28223BE20](v73);
    strcpy(&v91 - 48, "identifier title hasMedia children ");
    v110 = v93;
    v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0);
    v112 = MEMORY[0x277D839B0];
    v113 = sub_2150A4FD0();
    v74 = swift_getTupleTypeMetadata();
    v75 = swift_allocBox();
    v77 = v76;

    v78 = v92;
    v101(v72);
    if (v78)
    {
      (*(v70 + 8))(v72, v98);
      goto LABEL_11;
    }

    v87 = (v77 + v74[12]);
    v88 = v72;
    v89 = v74[16];
    v90 = v74[20];
    result = (*(v70 + 8))(v88, v98);
    *v87 = v97;
    v87[1] = v69;
    *(v77 + v89) = v94;
    *(v77 + v90) = v102;
    v86 = v75 | 0xC000000000000000;
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0);
  v45 = swift_getTupleTypeMetadata3();
  v46 = swift_projectBox();
  v47 = (v46 + *(v45 + 48));
  v48 = v47[1];
  v98 = *v47;
  v49 = v94;
  (*(v32 + 16))(v94, v46, v12);
  sub_2150A4FD0();
  v50 = swift_getTupleTypeMetadata3();
  v51 = swift_allocBox();
  v53 = v52;

  v54 = v92;
  v101(v49);
  v55 = v96;
  if (v54)
  {
    (*(v32 + 8))(v49, v12);
    goto LABEL_11;
  }

  v81 = v32;
  v82 = (v53 + *(v50 + 48));
  v83 = *(v50 + 64);
  result = (*(v81 + 8))(v49, v12);
  *v82 = v98;
  v82[1] = v48;
  *(v53 + v83) = v102;
  *v55 = v51 | 0x8000000000000000;
  return result;
}

uint64_t sub_214F5AB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = type metadata accessor for ICObjectReferences();
  result = ICObjectReferences.mapIdentifiers<A>(_:)(a2, a3, v14, a5, a7);
  if (v8)
  {
    *a8 = v8;
  }

  return result;
}

uint64_t ICObjectReferences.leastCommonFolderOrNote.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (*v2 < 0)
  {
    *a2 = v4;
  }

  else
  {
    sub_214F5B1C8(a1);
    sub_2150A4FD0();

    swift_getWitnessTable();
    sub_2150A5440();

    if ((~v8 & 0xF000000000000007) != 0)
    {
      sub_214F5B1C8(a1);

      v6 = sub_2150A4F80();

      if (v6 == 1)
      {
        ICObjectReferences.leastCommonFolderOrNote.getter(a1);
        return sub_214F5B538(v8);
      }

      sub_214F5B538(v8);
    }

    *a2 = v4;
  }
}

uint64_t ICObjectReferences.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *v2;
  ICObjectReferences.identifier.getter(v7, v6);
  sub_2150A49B0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t static ICObjectReferences.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v17 - v9;
  v12 = *v11;
  v17[1] = *v8;
  v13 = type metadata accessor for ICObjectReferences();
  ICObjectReferences.identifier.getter(v13, v10);
  v17[0] = v12;
  ICObjectReferences.identifier.getter(v13, v7);
  v14 = sub_2150A4A80();
  v15 = *(v4 + 8);
  v15(v7, a3);
  v15(v10, a3);
  return v14 & 1;
}

uint64_t ICObjectReferences.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  sub_2150A64B0();
  ICObjectReferences.hash(into:)(v4, a1);
  return sub_2150A64E0();
}

uint64_t sub_214F5B00C(uint64_t a1, uint64_t a2)
{
  sub_2150A64B0();
  ICObjectReferences.hash(into:)(v4, a2);
  return sub_2150A64E0();
}

BOOL static ICObjectReferences.< infix(_:_:)()
{
  v0 = type metadata accessor for ICObjectReferences();
  ICObjectReferences.title.getter(v0);
  if (!v1)
  {
    return 1;
  }

  ICObjectReferences.title.getter(v0);
  if (v2)
  {
    sub_214D6E6C4();
    v3 = sub_2150A58D0();

    return v3 == -1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_214F5B154(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
  }

  else
  {

    return sub_2150A6110();
  }
}

uint64_t sub_214F5B1C8(uint64_t a1)
{
  v2 = *v1 >> 62;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      MEMORY[0x28223BE20](a1);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0);
      sub_2150A4FD0();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v4 = swift_projectBox();
      v5 = (TupleTypeMetadata + 80);
      return *(v4 + *v5);
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44BB0);
    sub_2150A4FD0();
    goto LABEL_7;
  }

  if (v2)
  {
    sub_2150A4FD0();
LABEL_7:
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    goto LABEL_8;
  }

  sub_2150A4FD0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
LABEL_8:
  v4 = swift_projectBox();
  v5 = (TupleTypeMetadata3 + 64);
  return *(v4 + *v5);
}

uint64_t sub_214F5B474@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ICObjectReferences();
  result = a1(v4);
  *a2 = result;
  return result;
}

uint64_t sub_214F5B538(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_214F5B56C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214F5B5C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_214F5B61C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersistedActivityEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistedActivityEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void static NSObject<>.ic_fetchRequest()()
{
  v0 = [swift_getObjCClassFromMetadata() entity];
  v1 = [v0 name];

  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42080);
    sub_2150A4AD0();

    v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_214F5B8F0();
  }

  else
  {
    __break(1u);
  }
}

id sub_214F5B8F0()
{
  v1 = sub_2150A4A90();

  v2 = [v0 initWithEntityName_];

  return v2;
}

Swift::Void __swiftcall ICAttachment.associateAppEntity(with:)(CSSearchableItemAttributeSet with)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-v6 - 8];
  if ([v1 attachmentType] == 12)
  {
    sub_214F5BD28(sub_214D6DCB0, sub_214D6DD3C, 140, 0x8A, v15);
    sub_214F30080(v15[0], v16, v17, v7);
    v8 = sub_2150A3750();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_214F5C454(v7);
    }

    else
    {
      sub_2150A3650();
      (*(v9 + 8))(v7, v8);
    }

    v12 = [v1 title];
    if (v12)
    {
LABEL_11:
      v13 = v12;
      sub_2150A4AD0();
    }
  }

  else
  {
    sub_214F5BD28(sub_214D6DCB0, sub_214D6DD3C, 40, 0x26, v15);
    sub_214D6DEA4(v15[0], v16, v17, v5);
    v10 = sub_2150A3750();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v5, 1, v10) == 1)
    {
      sub_214F5C454(v5);
    }

    else
    {
      sub_2150A3650();
      (*(v11 + 8))(v5, v10);
    }

    v12 = [v1 title];
    if (v12)
    {
      goto LABEL_11;
    }
  }

  sub_214F301C4(MEMORY[0x277D84F90]);
  sub_2150A5710();
}

uint64_t sub_214F5BD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(_BYTE *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v69 = a4;
  v70 = a2;
  v65 = a3;
  v8 = sub_2150A3F30();
  v73 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v72 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v61[-v11];
  v13 = [v5 objectID];
  if (![v13 ic_isModernType])
  {
    [v13 ic_isLegacyType];
  }

  v66 = v61;
  MEMORY[0x28223BE20](v14);
  v71 = v15;
  v61[-16] = v15;
  v16 = qword_280C245E0;
  v17 = v5;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v8, qword_280C24890);
  v19 = v73;
  v67 = *(v73 + 16);
  v68 = v18;
  v67(v12);
  v20 = swift_allocObject();
  *(v20 + 16) = 2;
  if (sub_214D6DCAC(v20, a1, &v61[-32]))
  {
  }

  else
  {
    v21 = sub_2150A5570();
    v22 = sub_2150A3F10();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v62 = v21;
      v24 = v23;
      v63 = swift_slowAlloc();
      v76 = v63;
      *v24 = 136315650;
      v25 = sub_2150A5B70();
      v27 = sub_214F7723C(v25, v26, &v76);
      v64 = a5;
      v28 = v27;

      *(v24 + 4) = v28;
      *(v24 + 12) = 2048;
      *(v24 + 14) = v69;
      *(v24 + 22) = 2080;
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000038, 0x80000002150E2580);
      v29 = [v17 ic_loggingDescription];
      v30 = sub_2150A4AD0();
      v32 = v31;

      v33 = v30;
      a5 = v64;
      MEMORY[0x2160617E0](v33, v32);

      v34 = sub_214F7723C(v74, v75, &v76);

      *(v24 + 24) = v34;
      v19 = v73;
      _os_log_impl(&dword_214D51000, v22, v62, "Failed assertion at %s:%lu: %s", v24, 0x20u);
      v35 = v63;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v35, -1, -1);
      MEMORY[0x216064AF0](v24, -1, -1);
    }
  }

  v69 = *(v19 + 8);
  v69(v12, v8);

  v36 = v72;
  v37 = [v17 identifierURIPathComponent];
  if (v37)
  {
    v38 = v37;
    v39 = sub_2150A4AD0();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xE000000000000000;
  }

  v66 = v61;
  MEMORY[0x28223BE20](v37);
  *&v61[-16] = v39;
  *&v61[-8] = v41;
  (v67)(v36, v68, v8);
  v42 = swift_allocObject();
  *(v42 + 16) = 2;
  v43 = v17;
  if (sub_214D6DCAC(v42, v70, &v61[-32]))
  {

LABEL_18:
    v59 = v36;
    goto LABEL_19;
  }

  v44 = sub_2150A5570();
  v45 = sub_2150A3F10();
  if (!os_log_type_enabled(v45, v44))
  {

    goto LABEL_18;
  }

  v46 = swift_slowAlloc();
  LODWORD(v68) = v44;
  v47 = v46;
  v70 = swift_slowAlloc();
  v76 = v70;
  *v47 = 136315650;
  v48 = sub_2150A5B70();
  v50 = sub_214F7723C(v48, v49, &v76);
  v64 = a5;
  v51 = v50;

  *(v47 + 4) = v51;
  *(v47 + 12) = 2048;
  *(v47 + 14) = v65;
  *(v47 + 22) = 2080;
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_2150A5B20();

  v74 = 0xD00000000000002CLL;
  v75 = 0x80000002150E2550;
  v52 = [v43 ic_loggingDescription];
  v53 = sub_2150A4AD0();
  v55 = v54;

  v56 = v53;
  a5 = v64;
  MEMORY[0x2160617E0](v56, v55);

  v57 = sub_214F7723C(v74, v75, &v76);

  *(v47 + 24) = v57;
  _os_log_impl(&dword_214D51000, v45, v68, "Failed assertion at %s:%lu: %s", v47, 0x20u);
  v58 = v70;
  swift_arrayDestroy();
  MEMORY[0x216064AF0](v58, -1, -1);
  MEMORY[0x216064AF0](v47, -1, -1);

  v59 = v72;
LABEL_19:
  v69(v59, v8);

  *a5 = v71;
  *(a5 + 8) = v39;
  *(a5 + 16) = v41;
  return result;
}

uint64_t sub_214F5C454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214F5C4BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C3020;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42098);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2150C25D0;
  *(v1 + 32) = sub_214D55670(0, &qword_280C244E0);
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2150C25D0;
  *(v2 + 32) = sub_214D55670(0, &qword_280C244D8);
  *(inited + 56) = v2;
  *(inited + 64) = 2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2150C25D0;
  *(v3 + 32) = sub_214D55670(0, &qword_280C244F0);
  *(inited + 72) = v3;
  *(inited + 80) = 3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2150C25D0;
  *(v4 + 32) = sub_214D55670(0, &qword_280C244E8);
  *(inited + 88) = v4;
  v5 = sub_214FA4AB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA420A0);
  result = swift_arrayDestroy();
  off_280C24620 = v5;
  return result;
}

char *CloudOperationObserver.__allocating_init(queue:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_214F5CF50(a1);

  return v4;
}

char *CloudOperationObserver.init(queue:)(void *a1)
{
  v2 = sub_214F5CF50(a1);

  return v2;
}

id CloudOperationObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudOperationObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudOperationObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214F5C868(void *a1)
{
  if (qword_280C24618 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v2 = off_280C24620;
    v3 = off_280C24620 + 64;
    v4 = 1 << *(off_280C24620 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(off_280C24620 + 8);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (!v6)
    {
      break;
    }

LABEL_5:
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = (v9 << 9) | (8 * v10);
    v18 = *(v2[6] + v11);
    v12 = *(v2[7] + v11);
    v13 = *(v12 + 16);

    v14 = 0;
    while (1)
    {
      if (v13 == v14)
      {

        v8 = v9;
        if (!v6)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      if (v14 >= *(v12 + 16))
      {
        break;
      }

      v15 = v14 + 1;
      v16 = [a1 isKindOfClass_];
      v14 = v15;
      if (v16)
      {

        return v18;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  while (1)
  {
LABEL_6:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_18;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v9];
    ++v8;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

void sub_214F5CA10(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = [a1 ic_cloudSession];
  if (v5)
  {
    v24 = v5;
    v6 = sub_214F5C868(a1);
    if (v7)
    {
      v8 = v24;
    }

    else
    {
      v9 = v6;
      v10 = OBJC_IVAR___ICCloudSession_queue;
      *(&v23 - 2) = MEMORY[0x28223BE20](v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D90);
      sub_2150A55B0();
      v11 = aBlock[0];
      if (*(aBlock[0] + 16) && (v12 = sub_214FB1920(v9), (v13 & 1) != 0))
      {
        v14 = *(*(v11 + 56) + 8 * v12);

        v15 = OBJC_IVAR____TtCC11NotesShared12CloudSession12PhaseMetrics_startDate;
        swift_beginAccess();
        sub_214F5D4A4(v14 + v15, v4);

        v16 = sub_2150A3960();
        if ((*(*(v16 - 8) + 48))(v4, 1, v16) != 1)
        {

          sub_214F5D43C(v4);
          return;
        }
      }

      else
      {

        v17 = sub_2150A3960();
        (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
      }

      sub_214F5D43C(v4);
      v18 = *&v24[v10];
      v19 = swift_allocObject();
      *(v19 + 16) = v24;
      *(v19 + 24) = v9;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_214F3FC44;
      *(v20 + 24) = v19;
      aBlock[4] = sub_214F5D518;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_214F34100;
      aBlock[3] = &block_descriptor_21;
      v21 = _Block_copy(aBlock);
      v22 = v24;

      dispatch_sync(v18, v21);
      _Block_release(v21);
      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if (v18)
      {
        __break(1u);
      }
    }
  }
}

void sub_214F5CDA0(void *a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() && (v2 = [a1 ic_cloudSession]) != 0 && (v3 = *&v2[OBJC_IVAR___ICCloudSession_queue], v4 = v2, v5 = swift_allocObject(), *(v5 + 16) = v4, v6 = swift_allocObject(), *(v6 + 16) = sub_214F3FBC8, *(v6 + 24) = v5, v9[4] = sub_214F5D418, v9[5] = v6, v9[0] = MEMORY[0x277D85DD0], v9[1] = 1107296256, v9[2] = sub_214F34100, v9[3] = &block_descriptor_3, v7 = _Block_copy(v9), v8 = v4, , , dispatch_sync(v3, v7), _Block_release(v7), LOBYTE(v3) = swift_isEscapingClosureAtFileLocation(), v8, , , (v3 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    sub_214F5CA10(a1);
  }
}

char *sub_214F5CF50(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___ICCloudOperationObserver_logger;
  if (qword_280C24598 != -1)
  {
    swift_once();
  }

  v5 = sub_2150A3F30();
  v6 = __swift_project_value_buffer(v5, qword_280C245A0);
  v7 = *(*(v5 - 8) + 16);
  v7(&v2[v4], v6, v5);
  v8 = type metadata accessor for OperationQueueObserver();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___ICOperationQueueObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR___ICOperationQueueObserver_queueObservation] = 0;
  v10 = OBJC_IVAR___ICOperationQueueObserver_observationsLock;
  v11 = a1;
  v12 = sub_214FA49BC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A38);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  *&v9[v10] = v13;
  v7(&v9[OBJC_IVAR___ICOperationQueueObserver_logger], v6, v5);
  *&v9[OBJC_IVAR___ICOperationQueueObserver_queue] = v11;
  v23.receiver = v9;
  v23.super_class = v8;
  v14 = v11;
  v15 = objc_msgSendSuper2(&v23, sel_init);
  v22 = v14;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v15;
  v17 = sub_2150A3600();

  v18 = *&v16[OBJC_IVAR___ICOperationQueueObserver_queueObservation];
  *&v16[OBJC_IVAR___ICOperationQueueObserver_queueObservation] = v17;

  *&v2[OBJC_IVAR___ICCloudOperationObserver_queueObserver] = v16;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for CloudOperationObserver();
  v19 = objc_msgSendSuper2(&v21, sel_init);
  *(*&v19[OBJC_IVAR___ICCloudOperationObserver_queueObserver] + OBJC_IVAR___ICOperationQueueObserver_delegate + 8) = &protocol witness table for CloudOperationObserver;
  swift_unknownObjectWeakAssign();
  return v19;
}

uint64_t type metadata accessor for CloudOperationObserver()
{
  result = qword_280C248A8;
  if (!qword_280C248A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214F5D248()
{
  result = sub_2150A3F30();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_214F5D43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214F5D4A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Result.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }

  else
  {
    v12 = *(a1 + 16);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v12);
  }
}

uint64_t Result.error.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 24);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(a1 + 24);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v11);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TelephonyUtilitiesFeature(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TelephonyUtilitiesFeature(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_214F5D8B0()
{
  v2 = sub_2150A5B70();
  MEMORY[0x2160617E0](47, 0xE100000000000000);
  v0 = sub_2150A5B70();
  MEMORY[0x2160617E0](v0);

  return v2;
}

unint64_t sub_214F5D934(uint64_t a1)
{
  *(a1 + 8) = sub_214F544B0();
  result = sub_214F5D964();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214F5D964()
{
  result = qword_27CA420A8;
  if (!qword_27CA420A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA420A8);
  }

  return result;
}

id ICTTTextEdit.init(timestamp:replicaID:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  sub_214F5D4A4(a1, &v19 - v9);
  v11 = sub_2150A3960();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_2150A38F0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = sub_2150A39A0();
  v16 = [v14 initWithTimestamp:v13 replicaID:v15 range:{a3, a4}];

  v17 = sub_2150A3A00();
  (*(*(v17 - 8) + 8))(a2, v17);
  sub_214F5D43C(a1);
  return v16;
}

uint64_t TagID.displayText.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TagID.displayText.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static TagID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2150A6270();
  }
}

uint64_t TagID.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214F5DCA4()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214F5DCF8()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214F5DD40(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2150A6270();
  }
}

uint64_t sub_214F5DD74()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = sub_2150A4AD0();
  MEMORY[0x2160617E0](58, 0xE100000000000000);
  MEMORY[0x2160617E0](6775156, 0xE300000000000000);
  MEMORY[0x2160617E0](47, 0xE100000000000000);
  MEMORY[0x2160617E0](v1, v2);
  return v4;
}

uint64_t static TagID.entityIdentifier(for:)@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v67 = sub_2150A42C0();
  v74 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2150A4340();
  v65 = *(v68 - 8);
  v2 = MEMORY[0x28223BE20](v68);
  v62 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v63 = v59 - v4;
  v70 = sub_2150A42D0();
  v64 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78);
  MEMORY[0x28223BE20](v7);
  v69 = v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v59 - v10;
  v12 = sub_2150A4360();
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA420B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v59 - v18;
  v20 = sub_2150A3240();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A3210();
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    (*(v21 + 32))(v23, v19, v20);
    sub_2150A31F0();
    if (!v25)
    {
      goto LABEL_12;
    }

    v26 = sub_2150A4A90();

    v27 = ICIsNotesURLScheme(v26);

    if ((v27 & 1) == 0)
    {
      goto LABEL_12;
    }

    v28 = sub_2150A3190();
    v29 = v71;
    MEMORY[0x216060F30](v28);
    v30 = sub_2150A42E0();
    (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    sub_2150A4300();
    (*(v72 + 16))(v15, v29, v73);
    sub_2150A42B0();
    v31 = v64;
    v32 = v69;
    v33 = v70;
    (*(v64 + 16))(v69, v6, v70);
    v34 = *(v7 + 36);
    v35 = sub_214F5E6FC(&qword_280C24258, MEMORY[0x277D854A8]);
    sub_2150A53D0();
    (*(v31 + 8))(v6, v33);
    v36 = v66;
    v64 = v35;
    sub_2150A5400();
    v37 = sub_214F5E6FC(&unk_280C24268, MEMORY[0x277D85498]);
    v38 = v67;
    v61 = v37;
    LOBYTE(v29) = sub_2150A4A80();
    v39 = v74 + 8;
    v60 = *(v74 + 8);
    v60(v36, v38);
    if ((v29 & 1) == 0)
    {
      v74 = v39;
      v40 = sub_2150A5470();
      v41 = v65;
      v42 = *(v65 + 16);
      v43 = v63;
      v59[1] = v65 + 16;
      v59[0] = v42;
      v42(v63);
      v40(v76, 0);
      v59[2] = v34;
      sub_2150A5410();
      v44 = sub_2150A4330();
      v46 = v45;
      v47 = *(v41 + 8);
      v65 = v41 + 8;
      v63 = v47;
      (v47)(v43, v68);
      if (v44 == 6775156 && v46 == 0xE300000000000000)
      {

        v32 = v69;
        goto LABEL_10;
      }

      v48 = sub_2150A6270();

      v32 = v69;
      if (v48)
      {
LABEL_10:
        v49 = v66;
        sub_2150A5400();
        v50 = v67;
        v51 = sub_2150A4A80();
        v60(v49, v50);
        if ((v51 & 1) == 0)
        {
          v53 = sub_2150A5470();
          v54 = v62;
          (v59[0])(v62);
          v53(v76, 0);
          sub_2150A5410();
          v55 = sub_2150A4330();
          v57 = v56;
          sub_214F302D4(v32, qword_27CA41F78);
          (*(v72 + 8))(v71, v73);
          (*(v21 + 8))(v23, v20);
          result = (v63)(v54, v68);
          v58 = v75;
          *v75 = v55;
          v58[1] = v57;
          return result;
        }
      }
    }

    sub_214F302D4(v32, qword_27CA41F78);
    (*(v72 + 8))(v71, v73);
LABEL_12:
    result = (*(v21 + 8))(v23, v20);
    goto LABEL_13;
  }

  result = sub_214F302D4(v19, &qword_27CA420B0);
LABEL_13:
  v52 = v75;
  *v75 = 0;
  v52[1] = 0;
  return result;
}

uint64_t sub_214F5E6FC(unint64_t *a1, void (*a2)(uint64_t))
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

NotesShared::TagID __swiftcall TagID.init(_:)(ICHashtag *a1)
{
  v3 = v1;
  v4 = [(ICHashtag *)a1 displayText];
  if (v4)
  {
    v6 = v4;
    v7 = sub_2150A4AD0();
    v9 = v8;

    *v3 = v7;
    v3[1] = v9;
  }

  else
  {
    __break(1u);
  }

  result.displayText._object = v5;
  result.displayText._countAndFlagsBits = v4;
  return result;
}

unint64_t sub_214F5E7B4(void *a1)
{
  a1[1] = sub_214F5E7EC();
  a1[2] = sub_214F5E840();
  result = sub_214F5E894();
  a1[3] = result;
  return result;
}

unint64_t sub_214F5E7EC()
{
  result = qword_27CA420B8;
  if (!qword_27CA420B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA420B8);
  }

  return result;
}

unint64_t sub_214F5E840()
{
  result = qword_27CA420C0;
  if (!qword_27CA420C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA420C0);
  }

  return result;
}

unint64_t sub_214F5E894()
{
  result = qword_27CA420C8;
  if (!qword_27CA420C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA420C8);
  }

  return result;
}

unint64_t sub_214F5E8EC()
{
  result = qword_27CA420D0[0];
  if (!qword_27CA420D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA420D0);
  }

  return result;
}

uint64_t sub_214F5E940(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_214F5E988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall ICNote.associateAppEntity(with:)(CSSearchableItemAttributeSet with)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10[-v3 - 8];
  sub_214F5EC48(sub_214F5F3B8, sub_214F5F3B4, v10);
  sub_214F30070(v10[0], v11, v12, v4);
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_214F5C454(v4);
  }

  else
  {
    sub_2150A3650();
    (*(v6 + 8))(v4, v5);
  }

  v7 = [v1 title];
  if (v7)
  {
    v8 = v7;
    sub_2150A4AD0();
  }

  sub_214F301C4(MEMORY[0x277D84F90]);
  sub_2150A5710();
}

uint64_t sub_214F5EC48@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v6 = sub_2150A3F30();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v64[-v11];
  v13 = [v3 objectID];
  v14 = [v13 ic_isModernType];
  v73 = v10;
  if (!v14)
  {
    [v13 ic_isLegacyType];
  }

  v68 = v64;
  MEMORY[0x28223BE20](v15);
  v72 = v16;
  v64[-16] = v16;
  v17 = qword_280C245E0;
  v18 = v3;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v6, qword_280C24890);
  v69 = *(v7 + 16);
  v70 = v19;
  v69(v12);
  v20 = swift_allocObject();
  *(v20 + 16) = 2;
  v21 = sub_214D6DCAC(v20, a1, &v64[-32]);
  v74 = v7;
  if (v21)
  {

    v22 = v7;
  }

  else
  {
    v23 = sub_2150A5570();
    v24 = sub_2150A3F10();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v65 = v23;
      v26 = v25;
      v66 = swift_slowAlloc();
      v77 = v66;
      *v26 = 136315650;
      v27 = sub_2150A5B70();
      v29 = sub_214F7723C(v27, v28, &v77);
      v67 = a3;
      v30 = v29;

      *(v26 + 4) = v30;
      *(v26 + 12) = 2048;
      *(v26 + 14) = 16;
      *(v26 + 22) = 2080;
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000032, 0x80000002150E2680);
      v31 = [v18 ic_loggingDescription];
      v32 = sub_2150A4AD0();
      v34 = v33;

      v35 = v32;
      a3 = v67;
      MEMORY[0x2160617E0](v35, v34);

      v36 = sub_214F7723C(v75, v76, &v77);

      *(v26 + 24) = v36;
      _os_log_impl(&dword_214D51000, v24, v65, "Failed assertion at %s:%lu: %s", v26, 0x20u);
      v37 = v66;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v37, -1, -1);
      MEMORY[0x216064AF0](v26, -1, -1);
    }

    v22 = v74;
  }

  v38 = *(v22 + 8);
  v38(v12, v6);

  v39 = [v18 identifier];
  if (v39)
  {
    v40 = v39;
    sub_2150A4AD0();

    v41 = sub_2150A4B40();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0xE000000000000000;
  }

  MEMORY[0x28223BE20](v39);
  *&v64[-16] = v41;
  *&v64[-8] = v43;
  v44 = v73;
  (v69)(v73, v70, v6);
  v45 = swift_allocObject();
  *(v45 + 16) = 2;
  v46 = v18;
  if (sub_214D6DCAC(v45, v71, &v64[-32]))
  {

    v38(v44, v6);
  }

  else
  {
    v70 = v64;
    v71 = v38;
    v48 = sub_2150A5570();
    v49 = sub_2150A3F10();
    if (os_log_type_enabled(v49, v48))
    {
      v50 = swift_slowAlloc();
      LODWORD(v68) = v48;
      v51 = v50;
      v69 = swift_slowAlloc();
      v77 = v69;
      *v51 = 136315650;
      v52 = sub_2150A5B70();
      v54 = sub_214F7723C(v52, v53, &v77);
      v67 = a3;
      v55 = v54;

      *(v51 + 4) = v55;
      *(v51 + 12) = 2048;
      *(v51 + 14) = 18;
      *(v51 + 22) = 2080;
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_2150A5B20();

      v75 = 0xD000000000000026;
      v76 = 0x80000002150E2650;
      v56 = [v46 ic_loggingDescription];
      v57 = sub_2150A4AD0();
      v59 = v58;

      v60 = v57;
      a3 = v67;
      MEMORY[0x2160617E0](v60, v59);

      v61 = sub_214F7723C(v75, v76, &v77);

      *(v51 + 24) = v61;
      _os_log_impl(&dword_214D51000, v49, v68, "Failed assertion at %s:%lu: %s", v51, 0x20u);
      v62 = v69;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v62, -1, -1);
      MEMORY[0x216064AF0](v51, -1, -1);

      v63 = v73;
    }

    else
    {

      v63 = v44;
    }

    v71(v63, v6);
  }

  *a3 = v72;
  *(a3 + 8) = v41;
  *(a3 + 16) = v43;
  return result;
}

uint64_t sub_214F5F3BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214F5F3F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_214F5F440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214F5F494(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_214FB6DA0(a3, a4);
  if (!v4)
  {
    if (v10)
    {
      v11 = result;
      v12 = v10;
      sub_2150A5B20();
      v13 = sub_214F5F73C(a1, a2, a3, a4);
      MEMORY[0x2160617E0](v13);

      MEMORY[0x2160617E0](2570, 0xE200000000000000);
      MEMORY[0x2160617E0](v11, v12);

      MEMORY[0x2160617E0](0x1000000000000016, 0x80000002150E26C0);
      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v14 = sub_2150A6100();
      MEMORY[0x2160617E0](v14);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      MEMORY[0x2160617E0](1886152040, 0xE400000000000000);
      sub_2150A49F0();
      MEMORY[0x2160617E0](91, 0xE100000000000000);
      v15 = sub_2150A6100();
      MEMORY[0x2160617E0](v15);

      sub_2150A49F0();
      MEMORY[0x2160617E0](0, 0xE000000000000000);

      MEMORY[0x2160617E0](0xD00000000000001ELL, 0x80000002150E26E0);
      return 0;
    }

    else
    {
      return sub_214F5F73C(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_214F5F73C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2[2])
  {
    v7 = a2[4];
    v6 = a2[5];

    sub_2150A5B20();

    v8 = (*(*(a4 + 8) + 8))(a3);
    MEMORY[0x2160617E0](v8);

    MEMORY[0x2160617E0](0xD000000000000020, 0x80000002150E2700);
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v9 = sub_2150A6100();
    MEMORY[0x2160617E0](v9);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    MEMORY[0x2160617E0](v7, v6);

    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v10 = sub_2150A6100();
    MEMORY[0x2160617E0](v10);

    sub_2150A49F0();
    MEMORY[0x2160617E0](0, 0xE000000000000000);

    v11 = 46;
    v12 = 0xE100000000000000;
  }

  else
  {
    sub_2150A5B20();

    v13 = (*(*(a4 + 8) + 8))(a3);
    MEMORY[0x2160617E0](v13);

    v11 = 0xD000000000000021;
    v12 = 0x80000002150E2730;
  }

  MEMORY[0x2160617E0](v11, v12);
  return 0x20919B9FF020;
}

uint64_t getEnumTagSinglePayload for NotesServiceConnection(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NotesServiceConnection(_WORD *result, int a2, int a3)
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

NotesShared::NotesServiceConnection::Environment_optional __swiftcall NotesServiceConnection.Environment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_214F5FB90()
{
  result = qword_27CA42158;
  if (!qword_27CA42158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42158);
  }

  return result;
}

uint64_t sub_214F5FBE4()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1 + 1);
  return sub_2150A64E0();
}

uint64_t sub_214F5FC5C()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1 + 1);
  return sub_2150A64E0();
}

uint64_t getEnumTagSinglePayload for NotesServiceConnection.Environment(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NotesServiceConnection.Environment(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_214F5FE18(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x277D84F90];
    v22 = result;
    v23 = a3;
    v21 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_214F6163C(v8, v27);
      v10 = v6(v27);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0(v27);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_214D7A458(v27, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_214F86DA0(0, *(v9 + 16) + 1, 1);
          v9 = v28;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_214F86DA0((v12 > 1), v13 + 1, 1);
        }

        v14 = v25;
        v15 = v26;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
        MEMORY[0x28223BE20](v16);
        v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v19 + 16))(v18);
        sub_214F71418(v13, v18, &v28, v14, v15);
        result = __swift_destroy_boxed_opaque_existential_0(v24);
        v9 = v28;
        v6 = v22;
        v4 = v23;
        v5 = v21;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v27);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_214F60048(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for NoteEditActivityEvent(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_214F736B4(a3 + v15 + v16 * v13, v12, type metadata accessor for NoteEditActivityEvent);
      v17 = a1(v12);
      if (v3)
      {
        sub_214F73828(v12, type metadata accessor for NoteEditActivityEvent);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_214F7371C(v12, v24, type metadata accessor for NoteEditActivityEvent);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_214F86E88(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_214F86E88(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_214F7371C(v24, v14 + v15 + v20 * v16, type metadata accessor for NoteEditActivityEvent);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_214F73828(v12, type metadata accessor for NoteEditActivityEvent);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_214F602D4()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA42160);
  v1 = __swift_project_value_buffer(v0, qword_27CA42160);
  if (qword_280C24278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C24280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ICActivityStreamDigest.Summary.Formats.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t _s11NotesShared12CallerOriginO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_214F6047C()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t ICActivityStreamDigest.Summary.Participants.userIds.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ICActivityStreamDigest.Summary.Participants.names.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ICActivityStreamDigest.Summary.markdown.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ICActivityStreamDigest.Summary.markdown.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ICActivityStreamDigest.Summary.participants.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t ICActivityStreamDigest.Summary.participants.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = a1[2];
  v6 = a1[3];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 33) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  return result;
}

uint64_t ICActivityStreamDigest.init(resolver:)(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v69 - v8;
  v10 = sub_2150A3960();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v70 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v69 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - v16;
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  ObjectType = swift_getObjectType();
  v74 = [v18 initWithResolver_];
  if (!v74)
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v73 = *(a2 + 1);
  v20 = (v73)(ObjectType, a2);
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = v20;
  v72 = ObjectType;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {

    ObjectType = v72;
LABEL_7:
    v27 = v74;
    [v74 setLastActivitySummaryViewedDate_];
    [v27 setRecentUpdatesGenerationDate_];
    v28 = v73;
    v29 = (v73)(ObjectType, a2);
    if (v29)
    {
      v30 = v29;
      v11 = ObjectType;
      if (qword_27CA41480 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_40;
    }

    if (qword_27CA41480 != -1)
    {
      swift_once();
    }

    v39 = sub_2150A3F30();
    __swift_project_value_buffer(v39, qword_27CA42160);
    v40 = sub_2150A3F10();
    v41 = sub_2150A5560();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = ObjectType;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_214D51000, v40, v41, "Cannot create activity digest without object", v43, 2u);
      v44 = v43;
      ObjectType = v42;
      MEMORY[0x216064AF0](v44, -1, -1);
    }

    goto LABEL_26;
  }

  v23 = v22;
  v69 = v21;
  v24 = [v23 lastActivitySummaryViewedDate];
  if (v24)
  {
    v25 = v24;
    sub_2150A3930();

    v26 = sub_2150A38F0();
    (*(v11 + 1))(v17, v10);
  }

  else
  {
    v26 = 0;
  }

  [v74 setLastActivitySummaryViewedDate_];

  v45 = [v23 recentUpdatesGenerationDate];
  if (v45)
  {
    v46 = v45;
    sub_2150A3930();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  ObjectType = v72;
  (*(v11 + 7))(v7, v47, 1, v10);
  sub_214F71500(v7, v9);
  if ((*(v11 + 6))(v9, 1, v10))
  {
    sub_214F302D4(v9, &qword_27CA41DD0);
    v48 = 0;
  }

  else
  {
    v49 = v70;
    (*(v11 + 2))(v70, v9, v10);
    sub_214F302D4(v9, &qword_27CA41DD0);
    v50 = v71;
    sub_2150A3840();
    v51 = *(v11 + 1);
    v11 += 8;
    v51(v49, v10);
    v48 = sub_2150A38F0();
    v51(v50, v10);
  }

  v27 = v74;
  [v74 setRecentUpdatesGenerationDate_];
  v52 = v69;

  v28 = v73;
LABEL_26:
  while (1)
  {
    v53 = v27;
    v54 = (v28)(ObjectType, a2);
    v73 = v53;
    v30 = v53;
    v55 = sub_214F61108(v54);

    v27 = *(v55 + 16);
    if (!v27)
    {
      break;
    }

    v56 = 0;
    v57 = v55 + 32;
    v28 = MEMORY[0x277D84F90];
    v74 = a2;
    while (v56 < *(v55 + 16))
    {
      sub_214F6163C(v57, &v78);
      v58 = v79;
      v11 = v80;
      v30 = __swift_project_boxed_opaque_existential_1(&v78, v79);
      if ((*(v11 + 8))(a1, a2, v58, v11))
      {
        sub_214D7A458(&v78, v75);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_214F86DA0(0, *(v28 + 2) + 1, 1);
          v28 = v81;
        }

        v61 = *(v28 + 2);
        v60 = *(v28 + 3);
        if (v61 >= v60 >> 1)
        {
          sub_214F86DA0((v60 > 1), v61 + 1, 1);
        }

        v30 = v76;
        v62 = v77;
        v63 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
        MEMORY[0x28223BE20](v63);
        v11 = &v69 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v65 + 16))(v11);
        sub_214F71418(v61, v11, &v81, v30, v62);
        __swift_destroy_boxed_opaque_existential_0(v75);
        v28 = v81;
        a2 = v74;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v78);
      }

      ++v56;
      v57 += 40;
      if (v27 == v56)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
LABEL_9:
    v31 = sub_2150A3F30();
    __swift_project_value_buffer(v31, qword_27CA42160);
    v32 = v30;
    v33 = sub_2150A3F10();
    v34 = sub_2150A5540();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = [v32 objectID];
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&dword_214D51000, v33, v34, "Object does not support activity digests {objectID: %@}", v35, 0xCu);
      sub_214F302D4(v36, &qword_27CA41DF0);
      v38 = v36;
      v28 = v73;
      MEMORY[0x216064AF0](v38, -1, -1);
      MEMORY[0x216064AF0](v35, -1, -1);
    }

    else
    {
    }

    ObjectType = v11;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_38:

  swift_getKeyPath();
  *&v78 = v28;

  sub_214F6E43C(sub_214F73888, 0, sub_214F422B8, sub_214F6E5B0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10);
  v66 = sub_2150A4EB0();

  v67 = v73;
  [v73 setRecentActivityEventsStorage_];

  swift_unknownObjectRelease();
  return v67;
}