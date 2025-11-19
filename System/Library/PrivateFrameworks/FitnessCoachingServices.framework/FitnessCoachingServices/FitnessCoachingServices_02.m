uint64_t sub_22782DE6C()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2278C7420();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22782DF94, 0, 0);
}

uint64_t sub_22782DF94()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(v0[2] + 384);
  sub_2278C7430();
  sub_2278C73F0();
  sub_227839220(&qword_2813BC0F0, MEMORY[0x277D09B28]);
  v6 = sub_2278C7AE0();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  if (v6)
  {
    v9 = v0[4];
    v8 = v0[5];
    v11 = v0[2];
    v10 = v0[3];
    sub_2278C7340();
    sub_2278C7580();
    (*(v9 + 8))(v8, v10);
    v12 = *(v11 + 216);
    v13 = v0[2];
    if (v12 == 3)
    {
      v14 = sub_22782FBC8();
    }

    else if (v12 == 2)
    {
      v14 = sub_22782F4FC();
    }

    else
    {
      v14 = sub_22782E5E4();
    }

    v26 = v14;
    v28 = v0[8];
    v27 = v0[9];
    v29 = v0[5];

    v30 = v0[1];

    return v30(v26);
  }

  else
  {
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[6];
    sub_2278C7430();
    sub_2278C7400();
    v18 = sub_2278C7AE0();
    v7(v16, v17);
    v7(v15, v17);
    if (v18)
    {
      v19 = *__swift_project_boxed_opaque_existential_1((v0[2] + 224), *(v0[2] + 248));

      return MEMORY[0x2822009F8](sub_22782E318, v19, 0);
    }

    else
    {
      v21 = v0[8];
      v20 = v0[9];
      v22 = v0[5];
      v23 = sub_2278C6EA0();
      sub_227839220(&qword_27D7D61C8, MEMORY[0x277D09980]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D09960], v23);
      swift_willThrow();

      v25 = v0[1];

      return v25();
    }
  }
}

uint64_t sub_22782E318()
{
  v1 = [objc_opt_self() sharedBehavior];
  if (v1)
  {
    v4 = v1;
    v5 = [v1 fitnessMode];

    *(v0 + 80) = sub_22786233C(v5);
    v1 = sub_22782E3C4;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22782E3C4()
{
  if (*(v0 + 80) == 1)
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    sub_2278C7340();
    sub_2278C7580();
    (*(v2 + 8))(v1, v3);
    v5 = *(v4 + 216);
    v6 = *(v0 + 16);
    if (v5 == 3)
    {
      v7 = sub_227830A24();
    }

    else if (v5 == 2)
    {
      v7 = sub_227830688();
    }

    else
    {
      v7 = sub_2278302DC();
    }

    v15 = v7;
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 40);

    v19 = *(v0 + 8);

    return v19(v15);
  }

  else
  {
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v10 = *(v0 + 40);
    v11 = sub_2278C6EA0();
    sub_227839220(&qword_27D7D61C8, MEMORY[0x277D09980]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D09978], v11);
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_22782E5E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61C0, &qword_2278CAE28);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2278CABD0;
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_2278CB1B8;
  *(v2 + 24) = v0;
  *(v1 + 32) = &unk_2278CB1C0;
  *(v1 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_2278CB1D0;
  *(v3 + 24) = v0;
  *(v1 + 48) = &unk_2278CB1D8;
  *(v1 + 56) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2278CB1E8;
  *(v4 + 24) = v0;
  *(v1 + 64) = &unk_2278CB1F0;
  *(v1 + 72) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_2278CB200;
  *(v5 + 24) = v0;
  *(v1 + 80) = &unk_2278CB208;
  *(v1 + 88) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_2278CB218;
  *(v6 + 24) = v0;
  *(v1 + 96) = &unk_2278CB220;
  *(v1 + 104) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_2278CB230;
  *(v7 + 24) = v0;
  *(v1 + 112) = &unk_2278CB238;
  *(v1 + 120) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_2278CB248;
  *(v8 + 24) = v0;
  *(v1 + 128) = &unk_2278CB250;
  *(v1 + 136) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_2278CB260;
  *(v9 + 24) = v0;
  *(v1 + 144) = &unk_2278CB268;
  *(v1 + 152) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_2278CB278;
  *(v10 + 24) = v0;
  *(v1 + 160) = &unk_2278CB280;
  *(v1 + 168) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = &unk_2278CB290;
  *(v11 + 24) = v0;
  *(v1 + 176) = &unk_2278CB298;
  *(v1 + 184) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_2278CB2A8;
  *(v12 + 24) = v0;
  *(v1 + 192) = &unk_2278CB2B0;
  *(v1 + 200) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_2278CB2C0;
  *(v13 + 24) = v0;
  *(v1 + 208) = &unk_2278CB2C8;
  *(v1 + 216) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_2278CB2D8;
  *(v14 + 24) = v0;
  *(v1 + 224) = &unk_2278CB2E0;
  *(v1 + 232) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_2278CB2F0;
  *(v15 + 24) = v0;
  *(v1 + 240) = &unk_2278CB2F8;
  *(v1 + 248) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_2278CB308;
  *(v16 + 24) = v0;
  *(v1 + 256) = &unk_2278CB310;
  *(v1 + 264) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_2278CB320;
  *(v17 + 24) = v0;
  *(v1 + 272) = &unk_2278CB328;
  *(v1 + 280) = v17;
  swift_retain_n();
  return v1;
}

uint64_t sub_22782EA00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_2278317D4();
}

uint64_t sub_22782EA90(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22782EB7C;

  return v6();
}

uint64_t sub_22782EB7C(uint64_t a1)
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

uint64_t sub_22782EC8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_22783210C();
}

uint64_t sub_22782ED1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_22783285C();
}

uint64_t sub_22782EDAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_227834638();
}

uint64_t sub_22782EE3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_227833518();
}

uint64_t sub_22782EECC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_227833A44();
}

uint64_t sub_22782EF5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_227833D10();
}

uint64_t sub_22782EFEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_227834038();
}

uint64_t sub_22782F07C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_227834AD8();
}

uint64_t sub_22782F10C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_227834DA4();
}

uint64_t sub_22782F19C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_22783506C();
}

uint64_t sub_22782F22C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_227835338();
}

uint64_t sub_22782F2BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_2278355FC();
}

uint64_t sub_22782F34C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_227835BFC();
}

uint64_t sub_22782F3DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_227835F08();
}

uint64_t sub_22782F46C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_2278361E8();
}

uint64_t sub_22782F4FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61C0, &qword_2278CAE28);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2278CABE0;
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_2278CB0B0;
  *(v2 + 24) = v0;
  *(v1 + 32) = &unk_2278CB0B8;
  *(v1 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_2278CB0C8;
  *(v3 + 24) = v0;
  *(v1 + 48) = &unk_2278CB0D0;
  *(v1 + 56) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2278CB0E0;
  *(v4 + 24) = v0;
  *(v1 + 64) = &unk_2278CB0E8;
  *(v1 + 72) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_2278CB0F8;
  *(v5 + 24) = v0;
  *(v1 + 80) = &unk_2278CB100;
  *(v1 + 88) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_2278CB110;
  *(v6 + 24) = v0;
  *(v1 + 96) = &unk_2278CB118;
  *(v1 + 104) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_2278CB128;
  *(v7 + 24) = v0;
  *(v1 + 112) = &unk_2278CB130;
  *(v1 + 120) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_2278CB140;
  *(v8 + 24) = v0;
  *(v1 + 128) = &unk_2278CB148;
  *(v1 + 136) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_2278CB158;
  *(v9 + 24) = v0;
  *(v1 + 144) = &unk_2278CB160;
  *(v1 + 152) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_2278CB170;
  *(v10 + 24) = v0;
  *(v1 + 160) = &unk_2278CB178;
  *(v1 + 168) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = &unk_2278CB188;
  *(v11 + 24) = v0;
  *(v1 + 176) = &unk_2278CB190;
  *(v1 + 184) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_2278CB1A0;
  *(v12 + 24) = v0;
  *(v1 + 192) = &unk_2278CB1A8;
  *(v1 + 200) = v12;
  swift_retain_n();
  return v1;
}

uint64_t sub_22782F7EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22782F87C;

  return sub_227834DA4();
}

uint64_t sub_22782F87C(uint64_t a1)
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

uint64_t sub_22782F97C()
{
  v1 = sub_2278C75A0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22782FA38, 0, 0);
}

uint64_t sub_22782FA38()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
  v4 = sub_2278C6E60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2278C9140;
  (*(v5 + 104))(v8 + v7, *MEMORY[0x277D098C8], v4);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_22782FBC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61C0, &qword_2278CAE28);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2278CABF0;
  v2 = swift_allocObject();
  *(v2 + 16) = &unk_2278CB008;
  *(v2 + 24) = v0;
  *(v1 + 32) = &unk_2278CB010;
  *(v1 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_2278CB020;
  *(v3 + 24) = v0;
  *(v1 + 48) = &unk_2278CB028;
  *(v1 + 56) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2278CB038;
  *(v4 + 24) = v0;
  *(v1 + 64) = &unk_2278CB040;
  *(v1 + 72) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_2278CB050;
  *(v5 + 24) = v0;
  *(v1 + 80) = &unk_2278CB058;
  *(v1 + 88) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_2278CB068;
  *(v6 + 24) = v0;
  *(v1 + 96) = &unk_2278CB070;
  *(v1 + 104) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_2278CB080;
  *(v7 + 24) = v0;
  *(v1 + 112) = &unk_2278CB088;
  *(v1 + 120) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_2278CB098;
  *(v8 + 24) = v0;
  *(v1 + 128) = &unk_2278CB0A0;
  *(v1 + 136) = v8;
  swift_retain_n();
  return v1;
}

uint64_t sub_22782FDE8()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 96), *(*(v0 + 16) + 120));
  if (sub_227824C58())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
    v2 = sub_2278C6E60();
    v3 = *(v2 - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2278C9140;
    (*(v3 + 104))(v6 + v5, *MEMORY[0x277D098E8], v2);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_22782FF4C()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 96), *(*(v0 + 16) + 120));
  if (sub_227824C4C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
    v2 = sub_2278C6E60();
    v3 = *(v2 - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2278C9140;
    (*(v3 + 104))(v6 + v5, *MEMORY[0x277D098F0], v2);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_227830090()
{
  v1 = sub_2278C75A0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783014C, 0, 0);
}

uint64_t sub_22783014C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
  v4 = sub_2278C6E60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2278C9140;
  (*(v5 + 104))(v8 + v7, *MEMORY[0x277D098D0], v4);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_2278302DC()
{
  v1 = v0;
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C7340();
  sub_2278C7580();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61C0, &qword_2278CAE28);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2278CAC00;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_2278CAF48;
  *(v8 + 24) = v1;
  *(v7 + 32) = &unk_2278CAF50;
  *(v7 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_2278CAF60;
  *(v9 + 24) = v1;
  *(v7 + 48) = &unk_2278CAF68;
  *(v7 + 56) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_2278CAF78;
  *(v10 + 24) = v1;
  *(v7 + 64) = &unk_2278CAF80;
  *(v7 + 72) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = &unk_2278CAF90;
  *(v11 + 24) = v1;
  *(v7 + 80) = &unk_2278CAF98;
  *(v7 + 88) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_2278CAFA8;
  *(v12 + 24) = v1;
  *(v7 + 96) = &unk_2278CAFB0;
  *(v7 + 104) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_2278CAFC0;
  *(v13 + 24) = v1;
  *(v7 + 112) = &unk_2278CAFC8;
  *(v7 + 120) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_2278CAFD8;
  *(v14 + 24) = v1;
  *(v7 + 128) = &unk_2278CAFE0;
  *(v7 + 136) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_2278CAFF0;
  *(v15 + 24) = v1;
  *(v7 + 144) = &unk_2278CAFF8;
  *(v7 + 152) = v15;
  swift_retain_n();
  return v7;
}

uint64_t sub_2278305F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227839318;

  return sub_227830D0C();
}

uint64_t sub_227830688()
{
  v1 = v0;
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C7340();
  sub_2278C7580();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61C0, &qword_2278CAE28);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2278CABF0;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_2278CAEA0;
  *(v8 + 24) = v1;
  *(v7 + 32) = &unk_2278CAEA8;
  *(v7 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_2278CAEB8;
  *(v9 + 24) = v1;
  *(v7 + 48) = &unk_2278CAEC0;
  *(v7 + 56) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_2278CAED0;
  *(v10 + 24) = v1;
  *(v7 + 64) = &unk_2278CAED8;
  *(v7 + 72) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = &unk_2278CAEE8;
  *(v11 + 24) = v1;
  *(v7 + 80) = &unk_2278CAEF0;
  *(v7 + 88) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_2278CAF00;
  *(v12 + 24) = v1;
  *(v7 + 96) = &unk_2278CAF08;
  *(v7 + 104) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_2278CAF18;
  *(v13 + 24) = v1;
  *(v7 + 112) = &unk_2278CAF20;
  *(v7 + 120) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_2278CAF30;
  *(v14 + 24) = v1;
  *(v7 + 128) = &unk_2278CAF38;
  *(v7 + 136) = v14;
  swift_retain_n();
  return v7;
}

uint64_t sub_227830968()
{
  v1 = sub_2278C75A0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783931C, 0, 0);
}

uint64_t sub_227830A24()
{
  v1 = v0;
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C7340();
  sub_2278C7580();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61C0, &qword_2278CAE28);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2278C9F60;
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_2278CAE38;
  *(v8 + 24) = v1;
  *(v7 + 32) = &unk_2278CAE48;
  *(v7 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_2278CAE58;
  *(v9 + 24) = v1;
  *(v7 + 48) = &unk_2278CAE60;
  *(v7 + 56) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_2278CAE70;
  *(v10 + 24) = v1;
  *(v7 + 64) = &unk_2278CAE78;
  *(v7 + 72) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = &unk_2278CAE88;
  *(v11 + 24) = v1;
  *(v7 + 80) = &unk_2278CAE90;
  *(v7 + 88) = v11;
  swift_retain_n();
  return v7;
}

uint64_t sub_227830C50()
{
  v1 = sub_2278C75A0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227839320, 0, 0);
}

uint64_t sub_227830D0C()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61B8, &qword_2278CAE20) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_2278C6F40();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_2278C6920();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = sub_2278C6820();
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();
  v12 = sub_2278C75A0();
  v1[13] = v12;
  v13 = *(v12 - 8);
  v1[14] = v13;
  v14 = *(v13 + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227830F18, 0, 0);
}

uint64_t sub_227830F18()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[9];
  v6 = v0[2];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v4);
  __swift_project_boxed_opaque_existential_1((v6 + 176), *(v6 + 200));
  v7 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v7(v3);
  __swift_project_boxed_opaque_existential_1((v6 + 176), *(v6 + 200));
  sub_227804920();
  if (sub_2278C66B0())
  {
    v8 = v0[2];
    v9 = v8[57];
    v10 = v8[58];
    __swift_project_boxed_opaque_existential_1(v8 + 54, v9);
    v11 = *(MEMORY[0x277D09AE0] + 4);
    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_22783116C;
    v13 = v0[12];
    v14 = v0[9];
    v15 = v0[3];

    return MEMORY[0x2821604A0](v15, v13, v14, v9, v10);
  }

  else
  {
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v17 + 8))(v16, v18);
    v19 = v0[15];
    v20 = v0[12];
    v21 = v0[9];
    v22 = v0[6];
    v23 = v0[3];

    v24 = v0[1];

    return v24(0);
  }
}

uint64_t sub_22783116C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_227831284;
  }

  else
  {
    v3 = sub_2278313A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227831284()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);
  (*(v5 + 56))(v6, 1, 1, v4);
  sub_227802FC4(v6, &qword_27D7D61B8, &qword_2278CAE20);
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[3];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2278313A0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  __swift_project_boxed_opaque_existential_1((v5 + 392), *(v5 + 416));
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_227831498;

  return sub_2278B5CD8();
}

uint64_t sub_227831498(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v6 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;

  return MEMORY[0x2822009F8](sub_22783159C, 0, 0);
}

uint64_t sub_22783159C()
{
  v20 = *(v0 + 152);
  v19 = *(v0 + 144);
  v24 = *(v0 + 80);
  v25 = *(v0 + 96);
  v23 = *(v0 + 72);
  v1 = *(v0 + 64);
  v21 = *(v0 + 88);
  v22 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
  v5 = sub_2278C6E60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2278C9140;
  v10 = v9 + v8;
  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6170, &qword_2278CADE0) + 48);
  (*(v2 + 16))(v10, v3, v4);
  *v11 = v19;
  *(v11 + 8) = v20 & 1;
  (*(v6 + 104))(v10, *MEMORY[0x277D09910], v5);
  (*(v2 + 8))(v3, v4);
  (*(v1 + 8))(v23, v22);
  (*(v21 + 8))(v25, v24);
  v12 = *(v0 + 120);
  v13 = *(v0 + 96);
  v14 = *(v0 + 72);
  v15 = *(v0 + 48);
  v16 = *(v0 + 24);

  v17 = *(v0 + 8);

  return v17(v9);
}

uint64_t sub_2278317D4()
{
  v1[2] = v0;
  v2 = sub_2278C6E60();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61B0, &qword_2278CAE18) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227831908, 0, 0);
}

uint64_t sub_227831908()
{
  v1 = *(v0 + 16);
  v2 = *__swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  *(v0 + 120) = sub_227824C4C();
  v3 = *__swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  *(v0 + 121) = sub_227824C58();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_2278319D4;
  v5 = *(v0 + 16);

  return sub_227830D0C();
}

uint64_t sub_2278319D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_22783205C;
  }

  else
  {
    v5 = sub_227831AE8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227831AE8()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    if (*(v1 + 16))
    {
      (*(*(v0 + 32) + 16))(*(v0 + 88), v1 + ((*(*(v0 + 32) + 80) + 32) & ~*(*(v0 + 32) + 80)), *(v0 + 24));
      v2 = 0;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 1;
  }

  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  (*(v6 + 56))(v3, v2, 1, v5);
  sub_227837328(v3, v4);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) == 1)
  {
    sub_227802FC4(*(v0 + 80), &qword_27D7D61B0, &qword_2278CAE18);
  }

  else
  {
    v8 = *(v0 + 121);
    (*(*(v0 + 32) + 32))(*(v0 + 56), *(v0 + 80), *(v0 + 24));
    if (v8 == 1)
    {
      v9 = *(v0 + 88);
      v10 = *(v0 + 56);
      v11 = *(v0 + 24);
      v12 = *(v0 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
      v13 = *(v12 + 72);
      v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_2278C9F50;
      v16 = v15 + v14;
      (*(v12 + 16))(v16, v10, v11);
      v17 = MEMORY[0x277D098E8];
      goto LABEL_18;
    }

    (*(*(v0 + 32) + 8))(*(v0 + 56), *(v0 + 24));
  }

  v18 = *(v0 + 72);
  v19 = *(v0 + 24);
  sub_227837328(*(v0 + 88), v18);
  v20 = v7(v18, 1, v19);
  v21 = *(v0 + 72);
  if (v20 != 1)
  {
    v29 = *(v0 + 120);
    (*(*(v0 + 32) + 32))(*(v0 + 48), *(v0 + 72), *(v0 + 24));
    if (v29 != 1)
    {
      v31 = *(v0 + 121);
      (*(*(v0 + 32) + 8))(*(v0 + 48), *(v0 + 24));
      if (v31 != 1)
      {
        goto LABEL_26;
      }

LABEL_20:
      v9 = *(v0 + 88);
      v23 = *(v0 + 24);
      v24 = *(v0 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
      v32 = *(v24 + 72);
      v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v27 = swift_allocObject();
      v15 = v27;
      *(v27 + 16) = xmmword_2278C9140;
      v28 = MEMORY[0x277D098E8];
      goto LABEL_21;
    }

    v9 = *(v0 + 88);
    v10 = *(v0 + 48);
    v11 = *(v0 + 24);
    v12 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
    v13 = *(v12 + 72);
    v30 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2278C9F50;
    v16 = v15 + v30;
    (*(v12 + 16))(v16, v10, v11);
    v17 = MEMORY[0x277D098F0];
LABEL_18:
    (*(v12 + 104))(v16 + v13, *v17, v11);
    (*(v12 + 8))(v10, v11);
LABEL_22:
    sub_227802FC4(v9, &qword_27D7D61B0, &qword_2278CAE18);
    goto LABEL_23;
  }

  v22 = *(v0 + 121);
  sub_227802FC4(*(v0 + 72), &qword_27D7D61B0, &qword_2278CAE18);
  if (v22)
  {
    goto LABEL_20;
  }

  if (*(v0 + 120) == 1)
  {
    v9 = *(v0 + 88);
    v23 = *(v0 + 24);
    v24 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = swift_allocObject();
    v15 = v27;
    *(v27 + 16) = xmmword_2278C9140;
    v28 = MEMORY[0x277D098F0];
LABEL_21:
    (*(v24 + 104))(v27 + v26, *v28, v23);
    goto LABEL_22;
  }

LABEL_26:
  v42 = *(v0 + 64);
  v43 = *(v0 + 24);
  sub_227837328(*(v0 + 88), v42);
  v44 = v7(v42, 1, v43);
  v9 = *(v0 + 88);
  v45 = *(v0 + 64);
  if (v44 != 1)
  {
    v47 = *(v0 + 32);
    v46 = *(v0 + 40);
    v48 = *(v0 + 24);
    v49 = *(v47 + 32);
    v47 += 32;
    v49(v46, *(v0 + 64), v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
    v50 = *(v47 + 40);
    v51 = (*(v47 + 48) + 32) & ~*(v47 + 48);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2278C9140;
    v49(v15 + v51, v46, v48);
    goto LABEL_22;
  }

  sub_227802FC4(*(v0 + 88), &qword_27D7D61B0, &qword_2278CAE18);
  sub_227802FC4(v45, &qword_27D7D61B0, &qword_2278CAE18);
  v15 = 0;
LABEL_23:
  v34 = *(v0 + 80);
  v33 = *(v0 + 88);
  v36 = *(v0 + 64);
  v35 = *(v0 + 72);
  v38 = *(v0 + 48);
  v37 = *(v0 + 56);
  v39 = *(v0 + 40);

  v40 = *(v0 + 8);

  return v40(v15);
}

uint64_t sub_22783205C()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  v8 = v0[1];
  v9 = v0[14];

  return v8();
}

uint64_t sub_22783210C()
{
  v1[2] = v0;
  v2 = sub_2278C71F0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2278C75A0();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227832228, 0, 0);
}

uint64_t sub_227832228()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = *__swift_project_boxed_opaque_existential_1((v4 + 224), *(v4 + 248));

  return MEMORY[0x2822009F8](sub_227832300, v5, 0);
}

uint64_t sub_227832300()
{
  v1 = [objc_opt_self() sharedBehavior];
  if (v1)
  {
    v4 = v1;
    v5 = [v1 fitnessMode];

    *(v0 + 104) = sub_22786233C(v5);
    v1 = sub_2278323AC;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2278323AC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_227832454;
  v2 = *(v0 + 104);

  return sub_227861018(v2);
}

uint64_t sub_227832454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  v7 = *(*v4 + 72);
  v8 = *v4;
  v6[10] = a1;
  v6[11] = a3;

  if (v3)
  {

    v9 = v6[8];
    v10 = v6[5];

    v11 = *(v8 + 8);

    return v11(0);
  }

  else
  {
    v6[12] = a2;

    return MEMORY[0x2822009F8](sub_2278325C8, 0, 0);
  }
}

void sub_2278325C8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  v5 = *v4;
  v6 = sub_2278C76F0();
  v7 = [v5 progressLocalizationKeyForAchievement:v3 progressMilestone:v6 experienceType:v4[11]];

  sub_2278C7700();
  v8 = ACHCodableFromAchievement();
  v9 = [v8 data];

  if (v9)
  {
    v24 = v0[10];
    v25 = v0[11];
    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];
    v13 = sub_2278C6670();
    v15 = v14;

    sub_227837280(v13, v15);
    sub_2278C71E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
    v16 = sub_2278C6E60();
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2278C9140;
    (*(v11 + 16))(v20 + v19, v10, v12);
    (*(v17 + 104))(v20 + v19, *MEMORY[0x277D09908], v16);

    sub_2278372D4(v13, v15);
    (*(v11 + 8))(v10, v12);
    v21 = v0[8];
    v22 = v0[5];

    v23 = v0[1];

    v23(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22783285C()
{
  v1[26] = v0;
  v2 = sub_2278C71F0();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();
  v5 = sub_2278C75A0();
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = *(v6 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227832984, 0, 0);
}

uint64_t sub_227832984()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[26];
  sub_2278C7340();
  sub_2278C7580();
  v5 = *(v3 + 8);
  v0[34] = v5;
  v0[35] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = *__swift_project_boxed_opaque_existential_1((v4 + 224), *(v4 + 248));

  return MEMORY[0x2822009F8](sub_227832A68, v6, 0);
}

uint64_t sub_227832A68()
{
  v1 = [objc_opt_self() sharedBehavior];
  if (v1)
  {
    v4 = v1;
    v5 = [v1 fitnessMode];

    *(v0 + 336) = sub_22786233C(v5);
    v1 = sub_227832B14;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227832B14()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 208) + 16), *(*(v0 + 208) + 40));
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_227832BBC;
  v2 = *(v0 + 336);

  return sub_22786085C(v2);
}

uint64_t sub_227832BBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v7 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v5 = sub_227833330;
  }

  else
  {
    v5 = sub_227832CD0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227832CD0()
{
  v1 = v0[37];
  if (v1)
  {
    v2 = __swift_project_boxed_opaque_existential_1((v0[26] + 16), *(v0[26] + 40));
    v3 = *v2;
    v4 = v2[11];
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_227832E70;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61A8, &qword_2278CAE10);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_227836D64;
    v0[13] = &block_descriptor_7;
    v0[14] = v5;
    [v3 yesterdayLocalizationKeyForAchievement:v1 experienceType:v4 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v7 = v0[32];
    v6 = v0[33];
    v8 = v0[29];

    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_227832E70()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_227832F50, 0, 0);
}

uint64_t sub_227832F50()
{
  v1 = v0[37];
  v2 = v0[22];
  v0[39] = v0[21];
  v0[40] = v2;
  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = sub_227833000;

  return sub_22781A974(v1);
}

uint64_t sub_227833000(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 192) = a1;
  *(v3 + 184) = v1;
  v4 = *(v2 + 328);
  v6 = *v1;

  return MEMORY[0x2822009F8](sub_227833104, 0, 0);
}

void sub_227833104()
{
  v1 = *(v0 + 296);
  v2 = ACHCodableFromAchievement();
  v3 = [v2 data];

  if (v3)
  {
    v4 = *(v0 + 192);
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v22 = *(v0 + 296);
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    v9 = *(v0 + 216);
    v10 = sub_2278C6670();
    v12 = v11;

    sub_227837280(v10, v12);
    sub_2278C71E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
    v13 = sub_2278C6E60();
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2278C9140;
    (*(v8 + 16))(v17 + v16, v7, v9);
    (*(v14 + 104))(v17 + v16, *MEMORY[0x277D09938], v13);

    sub_2278372D4(v10, v12);
    (*(v8 + 8))(v7, v9);
    v19 = *(v0 + 256);
    v18 = *(v0 + 264);
    v20 = *(v0 + 232);

    v21 = *(v0 + 8);

    v21(v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_227833330()
{
  v27 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 256);
  sub_2278C7340();
  v3 = v1;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 304);
    v24 = *(v0 + 272);
    v25 = *(v0 + 280);
    v7 = *(v0 + 256);
    v8 = *(v0 + 240);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 144);
    v12 = MEMORY[0x22AA9DD80](*(v0 + 152), *(v0 + 160));
    v14 = sub_2278021B4(v12, v13, &v26);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error fetching yesterday achievement %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9E860](v10, -1, -1);
    MEMORY[0x22AA9E860](v9, -1, -1);

    v24(v7, v8);
  }

  else
  {
    v16 = *(v0 + 272);
    v15 = *(v0 + 280);
    v17 = *(v0 + 256);
    v18 = *(v0 + 240);

    v16(v17, v18);
  }

  v20 = *(v0 + 256);
  v19 = *(v0 + 264);
  v21 = *(v0 + 232);

  v22 = *(v0 + 8);

  return v22(0);
}

uint64_t sub_227833518()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278335D8, 0, 0);
}

uint64_t sub_2278335D8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = *__swift_project_boxed_opaque_existential_1((v4 + 224), *(v4 + 248));

  return MEMORY[0x2822009F8](sub_2278336AC, v5, 0);
}

uint64_t sub_2278336AC()
{
  v1 = [objc_opt_self() sharedBehavior];
  if (v1)
  {
    v4 = v1;
    v5 = [v1 fitnessMode];

    *(v0 + 64) = sub_22786233C(v5);
    v1 = sub_227833758;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_227833758()
{
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 56), *(*(v0 + 16) + 80));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_227833800;
  v3 = *(v0 + 64);

  return sub_22784C0AC(v3);
}

uint64_t sub_227833800(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_227833900, 0, 0);
}

uint64_t sub_227833900()
{
  v1 = v0[7];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
    v2 = sub_2278C6E60();
    v3 = *(v2 - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2278C9140;
    *(v6 + v5) = v1;
    (*(v3 + 104))(v6 + v5, *MEMORY[0x277D098D8], v2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v0[5];

  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_227833A44()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227833B04, 0, 0);
}

uint64_t sub_227833B04()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v6 = *(*v5 + 144);
  if (v6 < 2)
  {
    goto LABEL_6;
  }

  v7 = *(*v5 + 136);
  v8 = v6;
  if ([v7 isPausedForActivitySummaryCacheIndex_] || (sub_2278C79E0() & 1) == 0 || (sub_2278C79F0(), v9 < 1.5))
  {
    sub_227836DCC(v6);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
  v14 = sub_2278C6E60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2278C9140;
  *(v10 + v17) = v8;
  (*(v15 + 104))(v10 + v17, *MEMORY[0x277D09928], v14);
LABEL_7:
  v11 = v0[5];

  v12 = v0[1];

  return v12(v10);
}

uint64_t sub_227833D10()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227833DD0, 0, 0);
}

uint64_t sub_227833DD0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v6 = *(*v5 + 144);
  if (v6 < 2)
  {
    goto LABEL_6;
  }

  v7 = *(*v5 + 136);
  v8 = v6;
  if ([v7 isPausedForActivitySummaryCacheIndex_] || (sub_2278C79E0() & 1) == 0 || (v9 = objc_msgSend(v8, sel_appleExerciseTime), v10 = objc_msgSend(objc_opt_self(), sel_minuteUnit), objc_msgSend(v9, sel_doubleValueForUnit_, v10), v12 = v11, v10, v9, v12 < 100.0))
  {
    sub_227836DCC(v6);
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
  v17 = sub_2278C6E60();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2278C9140;
  *(v13 + v20) = v8;
  (*(v18 + 104))(v13 + v20, *MEMORY[0x277D09928], v17);
LABEL_7:
  v14 = v0[5];

  v15 = v0[1];

  return v15(v13);
}

uint64_t sub_227834038()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6198, &qword_2278CAE00) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_2278C7280();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_2278C75A0();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783418C, 0, 0);
}

uint64_t sub_22783418C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = *(*__swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80)) + 144);
  v0[10] = v5;
  if (v5 >= 2)
  {
    __swift_project_boxed_opaque_existential_1((v0[2] + 480), *(v0[2] + 504));
    v11 = v5;
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_22783432C;
    v13 = v0[3];

    return sub_2278AA0C8(v13, v11);
  }

  else
  {
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[3];

    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_22783432C()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_227834428, 0, 0);
}

uint64_t sub_227834428()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 80);
  if (v4 == 1)
  {
    sub_227836DCC(*(v0 + 80));
    sub_227802FC4(v3, &qword_27D7D6198, &qword_2278CAE00);
    v6 = 0;
  }

  else
  {
    v7 = *(v0 + 48);
    (*(v2 + 32))(v7, v3, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
    v8 = sub_2278C6E60();
    v9 = *(v8 - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2278C9140;
    (*(v2 + 16))(v6 + v11, v7, v1);
    (*(v9 + 104))(v6 + v11, *MEMORY[0x277D09930], v8);
    sub_227836DCC(v5);
    (*(v2 + 8))(v7, v1);
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 48);
  v14 = *(v0 + 24);

  v15 = *(v0 + 8);

  return v15(v6);
}

uint64_t sub_227834638()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61A0, &qword_2278CAE08) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_2278C7310();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227834730, 0, 0);
}

uint64_t sub_227834730()
{
  v1 = v0[2];
  v2 = v1[59] == 2;
  __swift_project_boxed_opaque_existential_1(v1 + 65, v1[68]);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_2278347EC;
  v4 = v0[3];

  return sub_227844D9C(v4, v2);
}

uint64_t sub_2278347EC()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278348E8, 0, 0);
}

uint64_t sub_2278348E8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_227802FC4(v3, &qword_27D7D61A0, &qword_2278CAE08);
    v4 = 0;
  }

  else
  {
    v5 = v0[6];
    (*(v2 + 32))(v5, v3, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
    v6 = sub_2278C6E60();
    v7 = *(v6 - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2278C9140;
    (*(v2 + 16))(v4 + v9, v5, v1);
    (*(v7 + 104))(v4 + v9, *MEMORY[0x277D09940], v6);
    (*(v2 + 8))(v5, v1);
  }

  v10 = v0[6];
  v11 = v0[3];

  v12 = v0[1];

  return v12(v4);
}

uint64_t sub_227834AD8()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227834B98, 0, 0);
}

uint64_t sub_227834B98()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v6 = *(*v5 + 144);
  if (v6 < 2)
  {
    goto LABEL_6;
  }

  v7 = *(*v5 + 136);
  v8 = v6;
  if ([v7 isPausedForActivitySummaryCacheIndex_] || (sub_2278C79E0() & 1) == 0 || (sub_2278C79F0(), v9 < 1.25))
  {
    sub_227836DCC(v6);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
  v14 = sub_2278C6E60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2278C9140;
  *(v10 + v17) = v8;
  (*(v15 + 104))(v10 + v17, *MEMORY[0x277D09928], v14);
LABEL_7:
  v11 = v0[5];

  v12 = v0[1];

  return v12(v10);
}

uint64_t sub_227834DA4()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227834E64, 0, 0);
}

uint64_t sub_227834E64()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v6 = *(*v5 + 144);
  if (v6 < 2)
  {
    goto LABEL_6;
  }

  v7 = *(*v5 + 136);
  v8 = v6;
  if ([v7 isPausedForActivitySummaryCacheIndex_] || (sub_2278C79E0() & 1) == 0 || sub_2278C7A00() < 3)
  {
    sub_227836DCC(v6);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
  v13 = sub_2278C6E60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2278C9140;
  *(v9 + v16) = v8;
  (*(v14 + 104))(v9 + v16, *MEMORY[0x277D09920], v13);
LABEL_7:
  v10 = v0[5];

  v11 = v0[1];

  return v11(v9);
}

uint64_t sub_22783506C()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783512C, 0, 0);
}

uint64_t sub_22783512C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v6 = *(*v5 + 144);
  if (v6 < 2)
  {
    goto LABEL_6;
  }

  v7 = *(*v5 + 136);
  v8 = v6;
  if ([v7 isPausedForActivitySummaryCacheIndex_] || (sub_2278C79E0() & 1) == 0 || (sub_2278C79F0(), v9 < 2.0))
  {
    sub_227836DCC(v6);
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
  v14 = sub_2278C6E60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2278C9140;
  *(v10 + v17) = v8;
  (*(v15 + 104))(v10 + v17, *MEMORY[0x277D09928], v14);
LABEL_7:
  v11 = v0[5];

  v12 = v0[1];

  return v12(v10);
}

uint64_t sub_227835338()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278353F8, 0, 0);
}

uint64_t sub_2278353F8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v6 = *(*v5 + 144);
  if (v6 < 2)
  {
    goto LABEL_6;
  }

  v7 = *(*v5 + 136);
  v8 = v6;
  if ([v7 isPausedForActivitySummaryCacheIndex_] || (sub_2278C79E0() & 1) == 0 || sub_2278C7A00() < 2)
  {
    sub_227836DCC(v6);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
  v13 = sub_2278C6E60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2278C9140;
  *(v9 + v16) = v8;
  (*(v14 + 104))(v9 + v16, *MEMORY[0x277D09920], v13);
LABEL_7:
  v10 = v0[5];

  v11 = v0[1];

  return v11(v9);
}

uint64_t sub_2278355FC()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6198, &qword_2278CAE00) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_2278C7280();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_2278C75A0();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227835750, 0, 0);
}

uint64_t sub_227835750()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = *(*__swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80)) + 144);
  v0[10] = v5;
  if (v5 >= 2)
  {
    __swift_project_boxed_opaque_existential_1((v0[2] + 480), *(v0[2] + 504));
    v11 = v5;
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_2278358F0;
    v13 = v0[3];

    return sub_2278A9AAC(v13, v11);
  }

  else
  {
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[3];

    v9 = v0[1];

    return v9(0);
  }
}

uint64_t sub_2278358F0()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2278359EC, 0, 0);
}

uint64_t sub_2278359EC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 80);
  if (v4 == 1)
  {
    sub_227836DCC(*(v0 + 80));
    sub_227802FC4(v3, &qword_27D7D6198, &qword_2278CAE00);
    v6 = 0;
  }

  else
  {
    v7 = *(v0 + 48);
    (*(v2 + 32))(v7, v3, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
    v8 = sub_2278C6E60();
    v9 = *(v8 - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2278C9140;
    (*(v2 + 16))(v6 + v11, v7, v1);
    (*(v9 + 104))(v6 + v11, *MEMORY[0x277D09918], v8);
    sub_227836DCC(v5);
    (*(v2 + 8))(v7, v1);
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 48);
  v14 = *(v0 + 24);

  v15 = *(v0 + 8);

  return v15(v6);
}

uint64_t sub_227835BFC()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227835CBC, 0, 0);
}

uint64_t sub_227835CBC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v6 = *(*v5 + 144);
  if (v6 < 2)
  {
    goto LABEL_8;
  }

  v7 = *(*v5 + 136);
  v8 = v6;
  if ([v7 isPausedForActivitySummaryCacheIndex_] || (sub_2278C79E0() & 1) == 0 || sub_2278C7A00() < 1)
  {
    sub_227836DCC(v6);
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v9 = *(v0[2] + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
  v10 = sub_2278C6E60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_2278C9140;
  if (v9 == 1)
  {
    *(v14 + v13) = v8;
    (*(v11 + 104))(v14 + v13, *MEMORY[0x277D09920], v10);
  }

  else
  {
    (*(v11 + 104))(v14 + v13, *MEMORY[0x277D098C8], v10);
    sub_227836DCC(v6);
  }

LABEL_9:
  v16 = v0[5];

  v17 = v0[1];

  return v17(v15);
}

uint64_t sub_227835F08()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227835FC8, 0, 0);
}

uint64_t sub_227835FC8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v6 = *(*v5 + 144);
  if (v6 >= 2)
  {
    v7 = *(*v5 + 136);
    v8 = v6;
    if (![v7 isPausedForActivitySummaryCacheIndex_] && (sub_2278C79E0() & 1) != 0)
    {
      v9 = *__swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
      if (sub_22784BFA4(0.5))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
        v10 = sub_2278C6E60();
        v11 = *(v10 - 8);
        v12 = *(v11 + 72);
        v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_2278C9140;
        *(v14 + v13) = v8;
        (*(v11 + 104))(v14 + v13, *MEMORY[0x277D09900], v10);
        goto LABEL_8;
      }
    }

    sub_227836DCC(v6);
  }

  v14 = 0;
LABEL_8:
  v15 = v0[5];

  v16 = v0[1];

  return v16(v14);
}

uint64_t sub_2278361E8()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278362A8, 0, 0);
}

uint64_t sub_2278362A8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_2278C7340();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  v5 = __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v6 = *(*v5 + 144);
  if (v6 >= 2)
  {
    v8 = *(*v5 + 136);
    v9 = v6;
    if ([v8 isPausedForActivitySummaryCacheIndex_])
    {
      sub_227836DCC(v6);
      v7 = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6190, &qword_2278CADF8);
      v10 = sub_2278C6E60();
      v11 = *(v10 - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_2278C9140;
      *(v7 + v13) = v9;
      (*(v11 + 104))(v7 + v13, *MEMORY[0x277D098F8], v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = v0[5];

  v15 = v0[1];

  return v15(v7);
}

uint64_t sub_2278364A4(uint64_t a1, char a2, double a3)
{
  *(v4 + 368) = a2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v3;
  *(v4 + 344) = a3;
  return MEMORY[0x2822009F8](sub_2278364CC, 0, 0);
}

uint64_t sub_2278364CC()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v3 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1((*(v0 + 360) + 392), *(*(v0 + 360) + 416));
  LOBYTE(v1) = sub_2278B7BE4(v1, v3 & 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6148, &unk_2278CD390);
  if (v1 & 1) == 0 || (v3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2278C9140;
    v12 = *MEMORY[0x277D09C38];
    *(v0 + 296) = sub_2278C7700();
    *(v0 + 304) = v13;
    sub_2278C7BF0();
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 72) = 1;
    v10 = sub_2278C3BA4(inited);
    swift_setDeallocating();
    sub_227802FC4(inited + 32, &qword_27D7D6150, &unk_2278CAAE0);
  }

  else
  {
    v4 = *(v0 + 352);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_2278C9F50;
    v6 = *MEMORY[0x277D09C38];
    *(v0 + 312) = sub_2278C7700();
    *(v0 + 320) = v7;
    sub_2278C7BF0();
    *(v5 + 96) = MEMORY[0x277D83B88];
    *(v5 + 72) = 5;
    v8 = *MEMORY[0x277D09C30];
    *(v0 + 328) = sub_2278C7700();
    *(v0 + 336) = v9;
    sub_2278C7BF0();
    *(v5 + 168) = MEMORY[0x277D839F8];
    *(v5 + 144) = v4;
    v10 = sub_2278C3BA4(v5);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6150, &unk_2278CAAE0);
    swift_arrayDestroy();
  }

  v14 = *(v0 + 8);

  return v14(v10);
}

uint64_t sub_2278366EC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2278C6F40();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_2278C7180();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_2278C6E60();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783687C, 0, 0);
}

uint64_t sub_22783687C()
{
  v1 = v0[3];
  v2 = sub_2278C6F60();
  if (*(v2 + 16))
  {
    v3 = v0[14];
    v4 = v0[15];
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v8 = *(v6 + 16);
    v8(v3, v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v7);

    (*(v6 + 32))(v4, v3, v7);
    v8(v5, v4, v7);
    v9 = (*(v6 + 88))(v5, v7);
    if (v9 == *MEMORY[0x277D098E0])
    {
      v10 = v0[15];
      v12 = v0[12];
      v11 = v0[13];
      v14 = v0[10];
      v13 = v0[11];
      v15 = v0[8];
      v16 = v0[9];
      v17 = v0[4];
      (*(v12 + 96))(v11, v13);
      v18 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6188, &qword_2278CADF0) + 48));
      (*(v16 + 32))(v14, v11, v15);
      __swift_project_boxed_opaque_existential_1((v17 + 392), *(v17 + 416));
      sub_2278C7170();
      v20 = sub_2278B7BE4(v18, 0, v19);
      (*(v16 + 8))(v14, v15);
      (*(v12 + 8))(v10, v13);
      goto LABEL_9;
    }

    v21 = v0[15];
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[11];
    if (v9 == *MEMORY[0x277D09910])
    {
      v26 = v0[6];
      v25 = v0[7];
      v27 = v0[4];
      v28 = v0[5];
      (*(v23 + 96))(v22, v24);
      v29 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6170, &qword_2278CADE0) + 48);
      v41 = *v29;
      v40 = *(v29 + 8);
      (*(v26 + 32))(v25, v22, v28);
      __swift_project_boxed_opaque_existential_1((v27 + 392), *(v27 + 416));
      v0[2] = sub_2278C6F30();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6178, &qword_2278CADE8);
      sub_227836D00();
      sub_2278C7920();
      v31 = v30;

      v20 = sub_2278B7BE4(v41, v40, v31);
      (*(v26 + 8))(v25, v28);
      (*(v23 + 8))(v21, v24);
      goto LABEL_9;
    }

    v32 = *(v23 + 8);
    v32(v0[15], v0[11]);
    v32(v22, v24);
  }

  else
  {
  }

  v20 = 0;
LABEL_9:
  v34 = v0[14];
  v33 = v0[15];
  v35 = v0[13];
  v36 = v0[10];
  v37 = v0[7];

  v38 = v0[1];

  return v38(v20 & 1);
}

uint64_t *sub_227836C28()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0(v0 + 33);
  __swift_destroy_boxed_opaque_existential_0(v0 + 38);
  __swift_destroy_boxed_opaque_existential_0(v0 + 43);
  __swift_destroy_boxed_opaque_existential_0(v0 + 49);
  __swift_destroy_boxed_opaque_existential_0(v0 + 54);
  __swift_destroy_boxed_opaque_existential_0(v0 + 60);
  __swift_destroy_boxed_opaque_existential_0(v0 + 65);
  return v0;
}

uint64_t sub_227836CA8()
{
  sub_227836C28();

  return swift_deallocClassInstance();
}

unint64_t sub_227836D00()
{
  result = qword_27D7D6180;
  if (!qword_27D7D6180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7D6178, &qword_2278CADE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6180);
  }

  return result;
}

uint64_t sub_227836D64(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v2 = sub_2278C7700();
  v3 = *(*(v1 + 64) + 40);
  *v3 = v2;
  v3[1] = v4;

  return MEMORY[0x282200948](v1);
}

void sub_227836DCC(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_227836E08(uint64_t a1, unint64_t a2)
{
  v4 = sub_2278C75A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = objc_allocWithZone(MEMORY[0x277CE8CE0]);
  v13 = sub_2278C6660();
  v14 = [v12 initWithData_];

  if (v14)
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CE8CB0]) initWithCodable_];
    sub_227839268(0, &qword_2813B9B00, 0x277CBEB38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D0, qword_2278CB330);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2278C9140;
    v17 = *MEMORY[0x277D09C38];
    v18 = sub_2278C7700();
    v19 = MEMORY[0x277D837D0];
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    *(v16 + 88) = MEMORY[0x277D83B88];
    *(v16 + 56) = v19;
    *(v16 + 64) = 4;
    sub_227839268(0, &qword_2813B9B70, 0x277CBEAC0);
    v21 = sub_2278C7940();
    v22 = sub_2278C7930();

    ACHEncodeAchievementIntoUserInfoDictionary();
    v42 = 0;
    v23 = v22;
    sub_2278C7650();

    v24 = v42;
    if (v42)
    {
    }

    else
    {
      sub_2278C7340();
      v32 = v23;
      v33 = sub_2278C7590();
      v34 = sub_2278C7950();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v41 = v4;
        v36 = v35;
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        *(v36 + 4) = v32;
        *v37 = v22;
        v38 = v32;
        _os_log_impl(&dword_2277F7000, v33, v34, "Unable to encode achievement into dictionary: %@", v36, 0xCu);
        sub_227802FC4(v37, &qword_27D7D64B0, &qword_2278CA010);
        MEMORY[0x22AA9E860](v37, -1, -1);
        v39 = v36;
        v4 = v41;
        MEMORY[0x22AA9E860](v39, -1, -1);
      }

      (*(v5 + 8))(v11, v4);
      v24 = sub_2278C3BA4(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    sub_2278C7340();
    sub_227837280(a1, a2);
    v25 = sub_2278C7590();
    v26 = sub_2278C7950();
    sub_2278372D4(a1, a2);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 136315138;
      v29 = sub_2278C6650();
      v31 = sub_2278021B4(v29, v30, &v42);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2277F7000, v25, v26, "Unable to decode achievement from data: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AA9E860](v28, -1, -1);
      MEMORY[0x22AA9E860](v27, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return sub_2278C3BA4(MEMORY[0x277D84F90]);
  }

  return v24;
}

uint64_t sub_227837280(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2278372D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_227837328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61B0, &qword_2278CAE18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227837398()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EC8C();
}

uint64_t sub_227837428(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2278004C0;

  return sub_22782EA90(a1, v5);
}

uint64_t sub_2278374E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782ED1C();
}

uint64_t sub_227837570()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F34C();
}

uint64_t sub_227837600()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_227830C50();
}

uint64_t sub_227837690()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_2278305F8();
}

uint64_t sub_227837720()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EC8C();
}

uint64_t sub_2278377B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782ED1C();
}

uint64_t sub_227837840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EE3C();
}

uint64_t sub_2278378D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F07C();
}

uint64_t sub_227837960()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F34C();
}

uint64_t sub_2278379F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_227830968();
}

uint64_t sub_227837A80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_2278305F8();
}

uint64_t sub_227837B10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EC8C();
}

uint64_t sub_227837BA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782ED1C();
}

uint64_t sub_227837C30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EE3C();
}

uint64_t sub_227837CC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EECC();
}

uint64_t sub_227837D50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F07C();
}

uint64_t sub_227837DE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F34C();
}

uint64_t sub_227837E70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F46C();
}

uint64_t sub_227837F00()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_227806768;

  return sub_22782FDC8(v0);
}

uint64_t sub_227837F90()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_227806768;

  return sub_22782FF2C(v0);
}

uint64_t sub_227838020()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EC8C();
}

uint64_t sub_2278380B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782ED1C();
}

uint64_t sub_227838140()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F10C();
}

uint64_t sub_2278381D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F34C();
}

uint64_t sub_227838260()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_227830090();
}

uint64_t sub_2278382F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EA00();
}

uint64_t sub_227838380()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EC8C();
}

uint64_t sub_227838410()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782ED1C();
}

uint64_t sub_2278384A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EDAC();
}

uint64_t sub_227838530()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EE3C();
}

uint64_t sub_2278385C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EF5C();
}

uint64_t sub_227838650()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22780523C;

  return sub_22782F7EC();
}

uint64_t sub_2278386E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F07C();
}

uint64_t sub_227838770()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F19C();
}

uint64_t sub_227838800()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F2BC();
}

uint64_t sub_227838890()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F97C();
}

uint64_t sub_227838920()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EA00();
}

uint64_t sub_2278389B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EC8C();
}

uint64_t sub_227838A40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782ED1C();
}

uint64_t sub_227838AD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EDAC();
}

uint64_t sub_227838B60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EE3C();
}

uint64_t sub_227838BF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EECC();
}

uint64_t sub_227838C80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EF5C();
}

uint64_t sub_227838D10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782EFEC();
}

uint64_t sub_227838DA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F07C();
}

uint64_t sub_227838E30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F10C();
}

uint64_t sub_227838EC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F19C();
}

uint64_t sub_227838F50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F22C();
}

uint64_t sub_227838FE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F2BC();
}

uint64_t sub_227839070()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F34C();
}

uint64_t sub_227839100()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F3DC();
}

uint64_t sub_227839190()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227806768;

  return sub_22782F46C();
}

uint64_t sub_227839220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227839268(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2278392B0()
{
  result = qword_2813B9A98;
  if (!qword_2813B9A98)
  {
    sub_227839268(255, &qword_2813B9AA0, 0x277CE90F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B9A98);
  }

  return result;
}

uint64_t sub_22783935C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  sub_2278040AC(v1, v74);
  sub_2278040AC(v1 + 40, v72);
  v3 = sub_2278C6FD0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_2278C6FC0();
  v55 = *(v2 + 80);
  sub_2278040AC(v2 + 88, v70);
  sub_2278040AC(v2 + 128, v68);
  v7 = v73;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = v71;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = v69;
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v17;
  v26 = *v23;
  v27 = type metadata accessor for DateProvider();
  v66 = v27;
  v67 = &off_283AE99D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
  sub_2278238F8(v11, boxed_opaque_existential_1);
  v64 = MEMORY[0x277D09A20];
  v63 = v3;
  *&v62 = v6;
  v61[3] = &type metadata for PauseRingsSampleQuery;
  v61[4] = &off_283AECC40;
  v61[0] = v25;
  v29 = type metadata accessor for NotificationRequestScheduler();
  v60[3] = v29;
  v60[4] = &off_283AEA0D0;
  v60[0] = v26;
  v30 = type metadata accessor for PauseRingsService();
  v31 = swift_allocObject();
  v32 = v66;
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36);
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v61, &type metadata for PauseRingsSampleQuery);
  v39 = *(qword_283AECC20 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = (&v55 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v60, v29);
  v44 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (&v55 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = *v41;
  v49 = *v46;
  v58 = v27;
  v59 = &off_283AE99D8;
  v50 = __swift_allocate_boxed_opaque_existential_1(&v57);
  sub_2278238F8(v36, v50);
  v31[21] = &type metadata for PauseRingsSampleQuery;
  v31[22] = &off_283AECC40;
  v31[18] = v48;
  v31[26] = v29;
  v31[27] = &off_283AEA0D0;
  v31[23] = v49;
  sub_2277F9D0C(v74, (v31 + 2));
  sub_2277F9D0C(&v57, (v31 + 7));
  sub_2277F9D0C(&v62, (v31 + 12));
  v51 = v55;
  v31[17] = v55;
  v52 = v51;
  __swift_destroy_boxed_opaque_existential_0(v60);
  __swift_destroy_boxed_opaque_existential_0(v61);
  __swift_destroy_boxed_opaque_existential_0(v65);
  __swift_destroy_boxed_opaque_existential_0(v68);
  __swift_destroy_boxed_opaque_existential_0(v70);
  result = __swift_destroy_boxed_opaque_existential_0(v72);
  v54 = v56;
  v56[3] = v30;
  v54[4] = &off_283AE9FE8;
  *v54 = v31;
  return result;
}

uint64_t sub_227839950()
{
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  v5 = sub_2278C7590();
  v6 = sub_2278C7970();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2277F7000, v5, v6, "Biome subscription completed", v7, 2u);
    MEMORY[0x22AA9E860](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_227839A84(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_227839AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_2278C75A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  v14 = sub_2278C7590();
  v15 = sub_2278C7970();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2277F7000, v14, v15, "Received first pickup event", v16, 2u);
    MEMORY[0x22AA9E860](v16, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v17 = sub_2278C7840();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a2;
  v18[5] = a3;

  sub_22788B134(0, 0, v8, &unk_2278CB450, v18);
}

uint64_t sub_227839D18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_227839D78(void *a1)
{
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  v7 = sub_2278C7590();
  v8 = sub_2278C7970();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2277F7000, v7, v8, "Canceling Biome registration", v9, 2u);
    MEMORY[0x22AA9E860](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return [a1 cancel];
}

id sub_227839EC8(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v59 = a1;
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - v7;
  sub_2278C73A0();
  sub_2278C7580();
  v9 = *(v3 + 8);
  v62 = v3 + 8;
  v63 = v2;
  v61 = v9;
  v9(v8, v2);
  v10 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v11 = objc_opt_self();
  v12 = sub_2278C76F0();
  v13 = [v11 withClassName:v12 selector:sel_firstEventOfDayWithEvent_timestamp_lastTimestampBuffer_dayStartOffset_];

  v14 = sub_227822F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D0, qword_2278CB330);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D837D0];
  *(v15 + 16) = xmmword_2278C9140;
  *(v15 + 56) = v16;
  strcpy((v15 + 32), "dayStartOffset");
  *(v15 + 47) = -18;
  *(v15 + 88) = sub_227839268(0, &qword_2813B9A80, 0x277CCABB0);
  *(v15 + 64) = v14;
  sub_227839268(0, &qword_2813B9B70, 0x277CBEAC0);
  v17 = sub_2278C7940();
  v18 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v19 = [v18 ScreenLocked];
  swift_unknownObjectRelease();
  v58 = v19;
  v20 = [v19 DSLPublisher];
  v21 = v10;
  v22 = sub_2278C76F0();
  v23 = [v20 insertState:v21 as:v22];

  v57 = v21;
  v24 = v17;
  v25 = sub_2278C76F0();
  v26 = [v23 insertState:v24 as:v25];

  v27 = sub_2278C76F0();
  v28 = sub_2278C7A70();
  v29 = [v26 filterWithKeyPath:v27 value:v28];

  v30 = v13;
  sub_2278A69C8(&unk_283AE9058);
  v31 = sub_2278C7790();

  v32 = [v29 mapWithTransform:v30 keyPaths:v31];

  v33 = sub_2278C76F0();
  v34 = sub_2278C7A70();
  v35 = [v32 filterWithKeyPath:v33 comparison:1 value:v34];

  sub_227839268(0, &qword_2813B9B10, 0x277D85C78);
  v36 = sub_2278C7A60();
  v37 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v38 = sub_2278C76F0();
  v39 = [v37 initWithIdentifier:v38 targetQueue:v36];

  v40 = [v35 subscribeOn_];
  v68 = sub_227839950;
  v69 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_227839A84;
  v67 = &block_descriptor_8;
  v41 = _Block_copy(&aBlock);
  v42 = swift_allocObject();
  v43 = v56;
  *(v42 + 16) = v59;
  *(v42 + 24) = v43;
  v68 = sub_22783A63C;
  v69 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_227839D18;
  v67 = &block_descriptor_4;
  v44 = _Block_copy(&aBlock);

  v45 = [v40 sinkWithCompletion:v41 receiveInput:v44];
  _Block_release(v44);
  _Block_release(v41);

  v46 = v60;
  sub_2278C73A0();
  v47 = v46;
  v48 = sub_2278C7590();
  v49 = sub_2278C7970();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_2277F7000, v48, v49, "Subscribed for first pickup event with Biome", v50, 2u);
    MEMORY[0x22AA9E860](v50, -1, -1);
    v51 = v24;
    v52 = v30;
    v53 = v57;
    v30 = v58;
  }

  else
  {
    v53 = v48;
    v48 = v57;
    v51 = v58;
    v52 = v35;
    v35 = v24;
  }

  v61(v47, v63);
  return v45;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22783A644(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2278003CC;

  return sub_227829B14(a1, v4, v5, v7);
}

uint64_t sub_22783A70C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_22783A824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3);
}

uint64_t sub_22783A950(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_22783AA68(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278004C0;

  return v9(a1, a2);
}

uint64_t sub_22783AB80(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_22783AC98()
{
  v1 = v0;
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  v8 = *(*(Pickup - 8) + 64);
  MEMORY[0x28223BE20](Pickup);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
  swift_beginAccess();
  sub_22783F1E8(v1 + v11, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v14 = *v10;
    v15 = v10[8];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E0, &unk_2278CB5F0) + 48)];
    v14 = *v13;
    v15 = v13[8];
    v16 = sub_2278C6820();
    (*(*(v16 - 8) + 8))(v10, v16);
LABEL_5:
    sub_22783D5C0(v14, v15);

    goto LABEL_9;
  }

  sub_2278C73A0();
  v17 = sub_2278C7590();
  v18 = sub_2278C7970();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2277F7000, v17, v18, "De-initialized before activation", v19, 2u);
    MEMORY[0x22AA9E860](v19, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_0((v1 + 112));
  __swift_destroy_boxed_opaque_existential_0((v1 + 152));
  __swift_destroy_boxed_opaque_existential_0((v1 + 192));
  __swift_destroy_boxed_opaque_existential_0((v1 + 232));

  sub_22780117C(*(v1 + 288), *(v1 + 296));
  sub_22783F24C(v1 + v11);
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_store));
  v20 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  (*(*(v21 - 8) + 8))(v1 + v20, v21);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_22783AF94()
{
  sub_22783AC98();

  return MEMORY[0x282200960](v0);
}

void sub_22783AFE8()
{
  Pickup = type metadata accessor for FirstPickupObserver.State(319);
  if (v1 <= 0x3F)
  {
    v4 = *(Pickup - 8) + 64;
    sub_22783DCF0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

id sub_22783B0EC()
{
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  v5 = sub_2278C7590();
  v6 = sub_2278C7970();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2277F7000, v5, v6, "Registering for Duet screen unlock events", v7, 2u);
    MEMORY[0x22AA9E860](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v8 = swift_allocObject();
  swift_weakInit();

  v9 = sub_227829DD8(1u, &unk_2278CB618, v8);

  return v9;
}

uint64_t sub_22783B2CC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_227821F5C;

    return sub_22783B678();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

id sub_22783B3B4()
{
  v0 = sub_2278C75A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2278C73A0();
  v5 = sub_2278C7590();
  v6 = sub_2278C7970();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2277F7000, v5, v6, "Registering for Biome screen unlock events", v7, 2u);
    MEMORY[0x22AA9E860](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  v8 = swift_allocObject();
  swift_weakInit();

  v9 = sub_227839EC8(&unk_2278CB608, v8);

  return v9;
}

uint64_t sub_22783B590()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_22783F4DC;

    return sub_22783B678();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22783B678()
{
  v1[5] = v0;
  v2 = sub_2278C6820();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  v1[9] = Pickup;
  v6 = *(*(Pickup - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = sub_2278C75A0();
  v1[11] = v7;
  v8 = *(v7 - 8);
  v1[12] = v8;
  v9 = *(v8 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783B7D0, v0, 0);
}

uint64_t sub_22783B7D0()
{
  v1 = *(v0 + 112);
  sub_2278C73A0();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "Screen unlocked", v4, 2u);
    MEMORY[0x22AA9E860](v4, -1, -1);
  }

  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 40);

  v11 = *(v7 + 8);
  v11(v5, v6);
  v12 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
  swift_beginAccess();
  sub_22783F1E8(v10 + v12, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v20 = *(v0 + 80);
    v18 = *v20;
    v19 = *(v20 + 8);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(v0 + 80);
    v15 = *(v0 + 48);
    v16 = *(v0 + 56);
    v17 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E0, &unk_2278CB5F0) + 48);
    v18 = *v17;
    v19 = *(v17 + 8);
    (*(v16 + 8))(v14, v15);
LABEL_7:
    *(v0 + 136) = v19;
    *(v0 + 120) = v18;
    v21 = *(v0 + 64);
    __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 152), *(*(v0 + 40) + 176));
    v22 = off_283AE99E0;
    type metadata accessor for DateProvider();
    v22(v21);
    v23 = swift_task_alloc();
    *(v0 + 128) = v23;
    *v23 = v0;
    v23[1] = sub_22783BB04;
    v24 = *(v0 + 64);
    v25 = *(v0 + 40);

    return sub_22783BCDC(v24, v18, v19);
  }

  v27 = *(v0 + 104);
  sub_2278C73A0();
  v28 = sub_2278C7590();
  v29 = sub_2278C7960();
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 96);
  if (v30)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2277F7000, v28, v29, "Screen lock called before activation", v32, 2u);
    MEMORY[0x22AA9E860](v32, -1, -1);
  }

  v33 = *(v0 + 112);
  v34 = *(v0 + 80);
  v35 = *(v0 + 64);
  v11(*(v0 + 104), *(v0 + 88));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_22783BB04()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 56);
  v13 = *v0;

  v6 = v1[8];
  v7 = v1[6];
  v8 = v1[14];
  v9 = v1[13];
  v10 = v1[10];
  (*(v5 + 8))(v6, v7);

  v11 = *(v13 + 8);

  return v11();
}

uint64_t sub_22783BCDC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 192) = a3;
  *(v4 + 40) = a1;
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  *(v4 + 64) = Pickup;
  v6 = *(*(Pickup - 8) + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v7 = sub_2278C75A0();
  *(v4 + 80) = v7;
  v8 = *(v7 - 8);
  *(v4 + 88) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v10 = sub_2278C6920();
  *(v4 + 112) = v10;
  v11 = *(v10 - 8);
  *(v4 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v14 = sub_2278C6820();
  *(v4 + 144) = v14;
  v15 = *(v14 - 8);
  *(v4 + 152) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783BEE8, v3, 0);
}

uint64_t sub_22783BEE8()
{
  v73 = v0;
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((*(v0 + 56) + 192), *(*(v0 + 56) + 216));
  if (sub_227855624(v1))
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    v4 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((*(v0 + 56) + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_store), *(*(v0 + 56) + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_store + 24));
    sub_227802948(v4);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_22783F30C(*(v0 + 136));
LABEL_15:
      v54 = *(v0 + 144);
      v55 = *(v0 + 152);
      v57 = *(v0 + 64);
      v56 = *(v0 + 72);
      v58 = *(v0 + 48);
      v59 = *(v0 + 56);
      v60 = *(v0 + 40);
      v61 = *(v0 + 192);
      sub_227802C5C();
      v62 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E0, &unk_2278CB5F0) + 48);
      (*(v55 + 16))(v56, v60, v54);
      *v62 = v58;
      *(v62 + 8) = v61 & 1;
      swift_storeEnumTagMultiPayload();
      v63 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
      swift_beginAccess();
      v64 = v58;
      sub_22783F2A8(v56, v59 + v63);
      swift_endAccess();
      v65 = swift_task_alloc();
      *(v0 + 184) = v65;
      *v65 = v0;
      v65[1] = sub_22783C4B0;
      v66 = *(v0 + 56);

      return sub_22783C6DC();
    }

    v25 = *(v0 + 168);
    v26 = *(v0 + 144);
    v27 = *(v0 + 152);
    v28 = *(v0 + 128);
    v29 = *(v0 + 120);
    v69 = v26;
    v71 = *(v0 + 112);
    v30 = *(v0 + 56);
    (*(v27 + 32))(*(v0 + 176), *(v0 + 136));
    __swift_project_boxed_opaque_existential_1((v30 + 152), *(v30 + 176));
    sub_227804920();
    __swift_project_boxed_opaque_existential_1((v30 + 152), *(v30 + 176));
    v31 = off_283AE99E0;
    type metadata accessor for DateProvider();
    v31(v25);
    v32 = sub_2278C68F0();
    v33 = *(v27 + 8);
    v33(v25, v69);
    (*(v29 + 8))(v28, v71);
    if ((v32 & 1) == 0)
    {
      v33(*(v0 + 176), *(v0 + 144));
      goto LABEL_15;
    }

    v34 = *(v0 + 104);
    sub_2278C73A0();
    v35 = sub_2278C7590();
    v36 = sub_2278C7970();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2277F7000, v35, v36, "Already set first pickup date today", v37, 2u);
      MEMORY[0x22AA9E860](v37, -1, -1);
    }

    v38 = *(v0 + 176);
    v39 = *(v0 + 144);
    v40 = *(v0 + 104);
    v41 = *(v0 + 80);
    v42 = *(v0 + 88);
    v43 = *(v0 + 56);

    (*(v42 + 8))(v40, v41);
    sub_22783D36C();
    v33(v38, v39);
  }

  else
  {
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 96);
    v9 = *(v0 + 40);
    sub_2278C73A0();
    (*(v6 + 16))(v5, v9, v7);
    v10 = sub_2278C7590();
    v11 = sub_2278C7970();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = *(v0 + 144);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);
    if (v12)
    {
      v70 = *(v0 + 80);
      v19 = swift_slowAlloc();
      v67 = v11;
      v20 = swift_slowAlloc();
      v72 = v20;
      *v19 = 136315138;
      sub_22783F494(&qword_2813BC158, MEMORY[0x277CC9578]);
      v21 = sub_2278C7DA0();
      v68 = v16;
      v23 = v22;
      (*(v14 + 8))(v13, v15);
      v24 = sub_2278021B4(v21, v23, &v72);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2277F7000, v10, v67, "Invalid first pickup date %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AA9E860](v20, -1, -1);
      MEMORY[0x22AA9E860](v19, -1, -1);

      (*(v17 + 8))(v68, v70);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
      (*(v17 + 8))(v16, v18);
    }
  }

  v45 = *(v0 + 168);
  v44 = *(v0 + 176);
  v46 = *(v0 + 160);
  v48 = *(v0 + 128);
  v47 = *(v0 + 136);
  v50 = *(v0 + 96);
  v49 = *(v0 + 104);
  v51 = *(v0 + 72);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_22783C4B0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22783C5C0, v2, 0);
}

uint64_t sub_22783C5C0()
{
  v1 = v0[7];
  v2 = *(v1 + 272);
  if (qword_2813BB670 != -1)
  {
    v13 = *(v1 + 272);
    swift_once();
    v2 = v13;
    v14 = v0[7];
  }

  [v2 postNotificationName:qword_2813BC3B0 object:?];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22783C6DC()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_2278C75A0();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783C810, v0, 0);
}

uint64_t sub_22783C810()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_2278C73A0();
  sub_2278C7580();
  (*(v3 + 8))(v1, v2);
  sub_227802EC8(0);
  (*(v5 + 16))(v4, v7 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled, v6);
  sub_2278C6E00();
  (*(v5 + 8))(v4, v6);
  if (*(v0 + 112) == 1)
  {
    v8 = *(v0 + 48);
    v9 = *(v8 + 296);
    if (v9 != 255)
    {
      v10 = *(v8 + 288);
      *(v8 + 288) = 0;
      *(v8 + 296) = -1;
      sub_227829CA8(v10, v9 & 1);
      sub_22780117C(v10, v9);
    }
  }

  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 72);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22783CB14()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2278C75A0();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783CC54, v0, 0);
}

uint64_t sub_22783CC54()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  sub_2278C73A0();
  sub_2278C7580();
  v8 = *(v3 + 8);
  v8(v1, v2);
  (*(v5 + 16))(v4, v7 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled, v6);
  sub_2278C6E00();
  (*(v5 + 8))(v4, v6);
  if (*(v0 + 96) == 1)
  {
    if (sub_227802D60())
    {
      v9 = swift_task_alloc();
      *(v0 + 88) = v9;
      *v9 = v0;
      v9[1] = sub_22783CF14;
      v10 = *(v0 + 16);

      return sub_22783D088();
    }

    v13 = (v0 + 72);
    v17 = *(v0 + 72);
    sub_2278C73A0();
    v14 = sub_2278C7590();
    v15 = sub_2278C7970();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = "Retry disabled for activation";
      goto LABEL_10;
    }

LABEL_11:
    v18 = *v13;
    goto LABEL_12;
  }

  v13 = (v0 + 64);
  v12 = *(v0 + 64);
  sub_2278C73A0();
  v14 = sub_2278C7590();
  v15 = sub_2278C7970();
  if (!os_log_type_enabled(v14, v15))
  {
    goto LABEL_11;
  }

  v16 = "Biome not enabled for retry";
LABEL_10:
  v18 = *v13;
  v19 = swift_slowAlloc();
  *v19 = 0;
  _os_log_impl(&dword_2277F7000, v14, v15, v16, v19, 2u);
  MEMORY[0x22AA9E860](v19, -1, -1);
LABEL_12:
  v20 = *(v0 + 48);

  v8(v18, v20);
  v22 = *(v0 + 72);
  v21 = *(v0 + 80);
  v23 = *(v0 + 64);
  v24 = *(v0 + 40);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22783CF14()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v9 = *v0;

  v3 = v1[10];
  v4 = v1[9];
  v5 = v1[8];
  v6 = v1[5];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_22783D088()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2278C75A0();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783D1B0, v0, 0);
}

uint64_t sub_22783D1B0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  sub_2278C73A0();
  sub_2278C7580();
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v4, v7 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled, v5);
  sub_2278C6E00();
  (*(v6 + 8))(v4, v5);
  if (*(v0 + 72) == 1)
  {
    v8 = *(v0 + 16);
    if (*(v8 + 296) == 255)
    {
      v13 = sub_22783B0EC();
      v15 = v14 & 1;
      v16 = *(v8 + 288);
      *(v8 + 288) = v13;
      v17 = *(v8 + 296);
      *(v8 + 296) = v15;
      sub_22780117C(v16, v17);
    }
  }

  v9 = *(v0 + 64);
  v10 = *(v0 + 40);
  sub_227802EC8(1);

  v11 = *(v0 + 8);

  return v11();
}

id sub_22783D36C()
{
  v1 = v0;
  v2 = sub_2278C75A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  if (sub_227802D60())
  {
    sub_2278C73A0();
    v10 = sub_2278C7590();
    v11 = sub_2278C7970();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2277F7000, v10, v11, "Retry enabled posting first pickup updated", v12, 2u);
      MEMORY[0x22AA9E860](v12, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    v13 = *(v1 + 272);
    if (qword_2813BB670 != -1)
    {
      v18 = *(v1 + 272);
      swift_once();
      v13 = v18;
    }

    return [v13 postNotificationName:qword_2813BC3B0 object:v1];
  }

  else
  {
    sub_2278C73A0();
    v15 = sub_2278C7590();
    v16 = sub_2278C7970();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2277F7000, v15, v16, "Retry disabled", v17, 2u);
      MEMORY[0x22AA9E860](v17, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

void sub_22783D5C0(uint64_t a1, char a2)
{
  v5 = sub_2278C75A0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v12 - v10;
  (*(v8 + 16))(&v12 - v10, v2 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled, v7);
  sub_2278C6E00();
  (*(v8 + 8))(v11, v7);
  if ((v13 & 1) == 0)
  {
    sub_227829CA8(a1, a2 & 1);
  }
}

void sub_22783D894(void *a1, char a2)
{
  v4 = v2;
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  v7 = *(*(Pickup - 8) + 64);
  MEMORY[0x28223BE20](Pickup);
  v49 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  v50 = *(v52 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v11 = &v44 - v10;
  v12 = sub_2278C75A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  if ((a2 & 1) == 0)
  {
    v46 = a1;
    v47 = v3;
    v20 = a1;
    sub_2278C73A0();
    v21 = sub_2278C7590();
    v22 = sub_2278C7970();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v45 = v20;
      v24 = v4;
      v25 = v23;
      *v23 = 0;
      _os_log_impl(&dword_2277F7000, v21, v22, "Resetting biome registration", v23, 2u);
      v26 = v25;
      v4 = v24;
      v20 = v45;
      MEMORY[0x22AA9E860](v26, -1, -1);
    }

    v27 = *(v13 + 8);
    v27(v19, v12);
    sub_227839D78(v20);
    sub_2278C73A0();
    v28 = sub_2278C7590();
    v29 = sub_2278C7970();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v4;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2277F7000, v28, v29, "Re-registering for biome", v31, 2u);
      v32 = v31;
      v4 = v30;
      MEMORY[0x22AA9E860](v32, -1, -1);
    }

    v27(v17, v12);
    v33 = v50;
    v34 = v52;
    (*(v50 + 16))(v11, v4 + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled, v52);
    sub_2278C6E00();
    (*(v33 + 8))(v11, v34);
    if (v51 == 1)
    {
      v35 = v47;
      v36 = sub_22783B3B4();
      if (v35)
      {
LABEL_8:

        return;
      }
    }

    else
    {
      v38 = v47;
      v36 = sub_22783B0EC();
      if (v38)
      {
        goto LABEL_8;
      }
    }

    v39 = v36;
    v40 = v37;
    v41 = v4;

    v42 = v49;
    *v49 = v39;
    *(v42 + 8) = v40 & 1;
    swift_storeEnumTagMultiPayload();
    v43 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
    swift_beginAccess();
    sub_22783F2A8(v42, v41 + v43);
    swift_endAccess();
  }
}

uint64_t sub_22783DCB8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22783DCF0()
{
  if (!qword_2813BC110)
  {
    v0 = sub_2278C6E10();
    if (!v1)
    {
      atomic_store(v0, &qword_2813BC110);
    }
  }
}

void sub_22783DD98()
{
  sub_22783DE04();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_22783DE04()
{
  if (!qword_2813BC140)
  {
    sub_2278C6820();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813BC140);
    }
  }
}

uint64_t sub_22783DE6C()
{
  v1[8] = v0;
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  v1[9] = Pickup;
  v3 = *(*(Pickup - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v4 = sub_2278C6920();
  v1[11] = v4;
  v5 = *(v4 - 8);
  v1[12] = v5;
  v6 = *(v5 + 64) + 15;
  v1[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = sub_2278C6820();
  v1[15] = v8;
  v9 = *(v8 - 8);
  v1[16] = v9;
  v10 = *(v9 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61D8, &qword_2278CB5D8);
  v1[19] = v11;
  v12 = *(v11 - 8);
  v1[20] = v12;
  v13 = *(v12 + 64) + 15;
  v1[21] = swift_task_alloc();
  v14 = sub_2278C75A0();
  v1[22] = v14;
  v15 = *(v14 - 8);
  v1[23] = v15;
  v16 = *(v15 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v17 = sub_2278C7420();
  v1[26] = v17;
  v18 = *(v17 - 8);
  v1[27] = v18;
  v19 = *(v18 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783E134, v0, 0);
}

uint64_t sub_22783E134()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = *(v0[8] + 280);
  sub_2278C7430();
  sub_2278C73E0();
  sub_22783F494(&qword_2813BC0F0, MEMORY[0x277D09B28]);
  v6 = sub_2278C7AE0();
  v7 = *(v4 + 8);
  v7(v1, v3);
  v7(v2, v3);
  if (v6)
  {
    v8 = v0[25];
    v9 = v0[22];
    v10 = v0[23];
    sub_2278C73A0();
    sub_2278C7580();
    (*(v10 + 8))(v8, v9);
    v11 = swift_task_alloc();
    v0[30] = v11;
    *v11 = v0;
    v11[1] = sub_22783E418;
    v12 = v0[8];

    return sub_22783CB14();
  }

  else
  {
    v14 = v0[24];
    sub_2278C73A0();
    v15 = sub_2278C7590();
    v16 = sub_2278C7970();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[23];
    v18 = v0[24];
    v20 = v0[22];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2277F7000, v15, v16, "FirstPickupObserver not supported", v21, 2u);
      MEMORY[0x22AA9E860](v21, -1, -1);
    }

    (*(v19 + 8))(v18, v20);
    v23 = v0[28];
    v22 = v0[29];
    v25 = v0[24];
    v24 = v0[25];
    v26 = v0[21];
    v28 = v0[17];
    v27 = v0[18];
    v30 = v0[13];
    v29 = v0[14];
    v31 = v0[10];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_22783E418()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {
    v5 = v3[28];
    v4 = v3[29];
    v7 = v3[24];
    v6 = v3[25];
    v8 = v3[21];
    v10 = v3[17];
    v9 = v3[18];
    v11 = v3[14];
    v16 = v3[13];
    v12 = v3[10];

    v13 = v3[1];

    return v13();
  }

  else
  {
    v15 = v3[8];

    return MEMORY[0x2822009F8](sub_22783E5E4, v15, 0);
  }
}

uint64_t sub_22783E5E4()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  (*(v2 + 16))(v1, *(v0 + 64) + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver__biomeFirstPickupEnabled, v3);
  sub_2278C6E00();
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 248);
  v5 = *(v0 + 64);
  if (*(v0 + 256) == 1)
  {
    v6 = sub_22783B3B4();
    if (v4)
    {
LABEL_3:
      v9 = *(v0 + 224);
      v8 = *(v0 + 232);
      v11 = *(v0 + 192);
      v10 = *(v0 + 200);
      v12 = *(v0 + 168);
      v14 = *(v0 + 136);
      v13 = *(v0 + 144);
      v16 = *(v0 + 104);
      v15 = *(v0 + 112);
      v60 = *(v0 + 80);

      v17 = *(v0 + 8);
      goto LABEL_12;
    }
  }

  else
  {
    v6 = sub_22783B0EC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v18 = v6;
  v19 = v7;
  v21 = *(v0 + 120);
  v20 = *(v0 + 128);
  v22 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_store), *(*(v0 + 64) + OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_store + 24));
  sub_227802948(v22);
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    sub_22783F30C(*(v0 + 112));
LABEL_10:
    v41 = *(v0 + 72);
    v42 = *(v0 + 80);
    v43 = *(v0 + 64);
    *v42 = v18;
    *(v42 + 8) = v19 & 1;
    swift_storeEnumTagMultiPayload();
    v44 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
    swift_beginAccess();
    v39 = v43 + v44;
    v40 = v42;
    goto LABEL_11;
  }

  v59 = v19;
  v61 = v18;
  v23 = *(v0 + 136);
  v24 = *(v0 + 120);
  v25 = *(v0 + 128);
  v26 = *(v0 + 104);
  v27 = *(v0 + 96);
  v57 = v24;
  v58 = *(v0 + 88);
  v28 = *(v0 + 64);
  v56 = *(v25 + 32);
  (v56)(*(v0 + 144), *(v0 + 112));
  __swift_project_boxed_opaque_existential_1((v28 + 152), *(v28 + 176));
  sub_227804920();
  __swift_project_boxed_opaque_existential_1((v28 + 152), *(v28 + 176));
  v29 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v29(v23);
  v30 = sub_2278C68F0();
  v31 = *(v25 + 8);
  v31(v23, v57);
  (*(v27 + 8))(v26, v58);
  v32 = *(v0 + 144);
  v33 = *(v0 + 120);
  if ((v30 & 1) == 0)
  {
    v31(*(v0 + 144), *(v0 + 120));
    v19 = v59;
    goto LABEL_10;
  }

  v35 = *(v0 + 72);
  v34 = *(v0 + 80);
  v36 = *(v0 + 64);
  v37 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E0, &unk_2278CB5F0) + 48);
  v56(v34, v32, v33);
  *v37 = v61;
  *(v37 + 8) = v59 & 1;
  swift_storeEnumTagMultiPayload();
  v38 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
  swift_beginAccess();
  v39 = v36 + v38;
  v40 = v34;
LABEL_11:
  sub_22783F2A8(v40, v39);
  swift_endAccess();
  v46 = *(v0 + 224);
  v45 = *(v0 + 232);
  v48 = *(v0 + 192);
  v47 = *(v0 + 200);
  v49 = *(v0 + 168);
  v51 = *(v0 + 136);
  v50 = *(v0 + 144);
  v53 = *(v0 + 104);
  v52 = *(v0 + 112);
  v54 = *(v0 + 80);

  v17 = *(v0 + 8);
LABEL_12:

  return v17();
}

uint64_t sub_22783E9F8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_2278C6920();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  v2[13] = Pickup;
  v7 = *(*(Pickup - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v8 = sub_2278C6820();
  v2[16] = v8;
  v9 = *(v8 - 8);
  v2[17] = v9;
  v10 = *(v9 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783EB5C, v1, 0);
}

uint64_t sub_22783EB5C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
  swift_beginAccess();
  sub_22783F1E8(v3 + v4, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = v0[18];
    v5 = v0[19];
    v8 = v0[16];
    v7 = v0[17];
    v29 = v8;
    v9 = v0[15];
    v28 = v0[12];
    v10 = v0[9];
    v30 = v0[11];
    v31 = v0[10];
    v11 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E0, &unk_2278CB5F0) + 48);
    v32 = *v11;
    v33 = *(v11 + 8);
    v27 = *(v7 + 32);
    v27(v5, v9, v8);
    __swift_project_boxed_opaque_existential_1((v10 + 152), *(v10 + 176));
    sub_227804920();
    __swift_project_boxed_opaque_existential_1((v10 + 152), *(v10 + 176));
    v12 = off_283AE99E0;
    type metadata accessor for DateProvider();
    (v12)(v6);
    LOBYTE(v12) = sub_2278C68F0();
    v13 = *(v7 + 8);
    v13(v6, v29);
    (*(v30 + 8))(v28, v31);
    v14 = v0[19];
    v15 = v0[16];
    if (v12)
    {
      v16 = v0[8];

      v27(v16, v14, v15);
      v17 = 0;
      goto LABEL_7;
    }

    v19 = v0[13];
    v18 = v0[14];
    v13(v0[19], v0[16]);
    *v18 = v32;
    *(v18 + 8) = v33;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_22783F2A8(v18, v3 + v4);
    swift_endAccess();
  }

  else
  {
    sub_22783F24C(v0[15]);
  }

  v17 = 1;
LABEL_7:
  v20 = v0[18];
  v21 = v0[19];
  v23 = v0[14];
  v22 = v0[15];
  v24 = v0[12];
  (*(v0[17] + 56))(v0[8], v17, 1, v0[16]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_22783EE28()
{
  v1[5] = v0;
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  v1[6] = Pickup;
  v3 = *(*(Pickup - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_2278C75A0();
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783EF18, v0, 0);
}

uint64_t sub_22783EF18()
{
  v1 = v0[10];
  sub_2278C73A0();
  v2 = sub_2278C7590();
  v3 = sub_2278C7970();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2277F7000, v2, v3, "Clearing stored first pickup date", v4, 2u);
    MEMORY[0x22AA9E860](v4, -1, -1);
  }

  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v10 = v0[5];
  v9 = v0[6];

  (*(v6 + 8))(v5, v7);
  sub_227803024();
  v11 = OBJC_IVAR____TtC23FitnessCoachingServices19FirstPickupObserver_state;
  swift_beginAccess();
  sub_22783F1E8(v10 + v11, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v18 = v0[7];
    v15 = *v18;
    v16 = *(v18 + 8);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v13 = v0[7];
    v14 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E0, &unk_2278CB5F0) + 48);
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = sub_2278C6820();
    (*(*(v17 - 8) + 8))(v13, v17);
LABEL_7:
    v19 = v0[5];
    sub_22783D894(v15, v16);
    v24 = v0[10];
    v25 = v0[7];

    v26 = v0[1];
    goto LABEL_9;
  }

  v20 = sub_2278C6EA0();
  sub_22783F494(&qword_27D7D61C8, MEMORY[0x277D09980]);
  swift_allocError();
  (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D09970], v20);
  swift_willThrow();
  v22 = v0[10];
  v23 = v0[7];

  v26 = v0[1];
LABEL_9:

  return v26();
}

uint64_t sub_22783F1E8(uint64_t a1, uint64_t a2)
{
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  (*(*(Pickup - 8) + 16))(a2, a1, Pickup);
  return a2;
}

uint64_t sub_22783F24C(uint64_t a1)
{
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  (*(*(Pickup - 8) + 8))(a1, Pickup);
  return a1;
}

uint64_t sub_22783F2A8(uint64_t a1, uint64_t a2)
{
  Pickup = type metadata accessor for FirstPickupObserver.State(0);
  (*(*(Pickup - 8) + 40))(a2, a1, Pickup);
  return a2;
}

uint64_t sub_22783F30C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22783F374()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2278004C0;

  return sub_22783B570(v0);
}

uint64_t sub_22783F404()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2278003CC;

  return sub_22783B2AC(v0);
}

uint64_t sub_22783F494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22783F4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2278003CC;

  return v13(a1, a2, a3, a4);
}

double sub_22783F614(void (*a1)(double *__return_ptr, double *, id *), double a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2278C7B80())
  {
    v8 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AA9DBF0](v8, a4);
      }

      else
      {
        if (v8 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v15 = v9;
      a1(&v14, &v16, &v15);

      if (!v4)
      {
        a2 = v14;
        v16 = v14;
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return a2;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return a2;
}

char *sub_22783F738(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E8, &qword_2278CB6C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_2278C7260();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(sub_2278C6FB0() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x277D84F90];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_227802FC4(v9, &qword_27D7D61E8, &qword_2278CB6C0);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_227801E54(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_227801E54(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

uint64_t sub_22783FA64(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 96) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E8, &qword_2278CB6C0) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = sub_2278C7260();
  *(v4 + 48) = v6;
  v7 = *(v6 - 8);
  *(v4 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22783FB64, 0, 0);
}

uint64_t sub_22783FB64()
{
  if (qword_27D7D5CC0 != -1)
  {
    swift_once();
  }

  v1 = qword_27D7D8858;
  if (qword_27D7D5CE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = qword_27D7D8878;
  v6 = swift_task_alloc();
  *(v6 + 16) = &unk_283AE9440;
  *(v6 + 24) = v2;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  *(v6 + 48) = 2;
  *(v6 + 56) = v4;
  v7 = sub_22783F738(sub_227845AC0, v6, v1);
  *(v0 + 72) = v7;

  if (qword_27D7D5CD8 != -1)
  {
    swift_once();
  }

  v8 = qword_27D7D8870;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_22783FD28;
  v10 = *(v0 + 32);

  return sub_22784001C(v7, v8, 0.4);
}

uint64_t sub_22783FD28(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_22783FE48, 0, 0);
}

uint64_t sub_22783FE48()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_2278404D8(*(v0 + 88), v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_227802FC4(*(v0 + 40), &qword_27D7D61E8, &qword_2278CB6C0);
    v4 = sub_2278C7310();
    v5 = *(v4 - 8);
    v6 = 1;
  }

  else
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = *(v0 + 16);
    v10 = *(*(v0 + 56) + 32);
    v10(v7, *(v0 + 40), v8);
    v10(v9, v7, v8);
    v11 = *MEMORY[0x277D09B08];
    v4 = sub_2278C7310();
    v5 = *(v4 - 8);
    (*(v5 + 104))(v9, v11, v4);
    v6 = 0;
  }

  v12 = *(v0 + 64);
  v13 = *(v0 + 40);
  (*(v5 + 56))(*(v0 + 16), v6, 1, v4);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22784001C(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = sub_2278C75A0();
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278400E4, 0, 0);
}

uint64_t sub_2278400E4()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[9] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_2278401D4;
  v6 = v0[2];

  return sub_2278431E4(&unk_2278CB6D8, v4, v6);
}

uint64_t sub_2278401D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = v1;

  v7 = v4[9];

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22784034C, 0, 0);
  }

  else
  {
    v8 = v4[8];

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_22784034C()
{
  v1 = v0[11];
  v2 = v0[8];
  sub_2278C7340();
  v3 = v1;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error fetching best overall distance: %@", v7, 0xCu);
    sub_227802FC4(v8, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v8, -1, -1);
    MEMORY[0x22AA9E860](v7, -1, -1);
  }

  v11 = v0[11];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];

  (*(v13 + 8))(v12, v14);
  v15 = v0[8];

  v16 = v0[1];
  v17 = MEMORY[0x277D84F90];

  return v16(v17);
}

uint64_t sub_2278404D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27D7D5CD0 != -1)
  {
    swift_once();
  }

  v4 = qword_27D7D8868;
  v14 = a1;

  sub_227847C74(&v14, v4);

  v5 = v14;
  if (v14[2])
  {
    v6 = sub_2278C7260();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a2, v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v6);

    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {

    v11 = sub_2278C7260();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t sub_227840688(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 128) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61E8, &qword_2278CB6C0) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  v6 = sub_2278C7260();
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278407A0, 0, 0);
}

uint64_t sub_2278407A0()
{
  if (qword_27D7D5CD0 != -1)
  {
    swift_once();
  }

  v1 = qword_27D7D8868;
  if (qword_27D7D5CE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = qword_27D7D8878;
  *(v0 + 88) = qword_27D7D8878;
  v6 = swift_task_alloc();
  *(v6 + 16) = &unk_283AE9440;
  *(v6 + 24) = v2;
  *(v6 + 32) = v5;
  *(v6 + 40) = v3;
  *(v6 + 48) = 2;
  *(v6 + 56) = v4;
  v7 = sub_22783F738(sub_227848210, v6, v1);
  *(v0 + 96) = v7;
  *(v0 + 104) = 0;

  if (qword_27D7D5CD8 != -1)
  {
    swift_once();
  }

  v8 = qword_27D7D8870;
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_22784096C;
  v10 = *(v0 + 32);

  return sub_22784001C(v7, v8, 0.7);
}

uint64_t sub_22784096C(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_227840A8C, 0, 0);
}

uint64_t sub_227840A8C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_2278404D8(*(v0 + 120), v3);

  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_227802FC4(*(v0 + 48), &qword_27D7D61E8, &qword_2278CB6C0);
    if (qword_27D7D5CC8 != -1)
    {
      swift_once();
    }

    v32 = qword_27D7D8860;
    if (qword_27D7D5CB8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 104);
    v6 = *(v0 + 88);
    v31 = *(v0 + 56);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    v9 = *(v0 + 128);
    v10 = *(v0 + 24);
    v11 = swift_task_alloc();
    *(v11 + 16) = &unk_283AE9440;
    *(v11 + 24) = v9;
    *(v11 + 32) = v6;
    *(v11 + 40) = v7;
    *(v11 + 48) = 3;
    *(v11 + 56) = v10;
    v12 = sub_22783F738(sub_227848210, v11, v32);

    sub_227840DF8(v12, v8);

    if (v4(v8, 1, v31) == 1)
    {
      sub_227802FC4(*(v0 + 40), &qword_27D7D61E8, &qword_2278CB6C0);
      v13 = sub_2278C7310();
      v14 = *(v13 - 8);
      v15 = 1;
      goto LABEL_11;
    }

    v21 = *(v0 + 72);
    v22 = *(v0 + 56);
    v18 = *(v0 + 16);
    v23 = *(*(v0 + 64) + 32);
    v23(v21, *(v0 + 40), v22);
    v23(v18, v21, v22);
    v20 = MEMORY[0x277D09B10];
  }

  else
  {
    v16 = *(v0 + 80);
    v17 = *(v0 + 56);
    v18 = *(v0 + 16);
    v19 = *(*(v0 + 64) + 32);
    v19(v16, *(v0 + 48), v17);
    v19(v18, v16, v17);
    v20 = MEMORY[0x277D09B18];
  }

  v24 = *v20;
  v13 = sub_2278C7310();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v18, v24, v13);
  v15 = 0;
LABEL_11:
  v26 = *(v0 + 72);
  v25 = *(v0 + 80);
  v28 = *(v0 + 40);
  v27 = *(v0 + 48);
  (*(v14 + 56))(*(v0 + 16), v15, 1, v13);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_227840DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_2278C7260();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  v14 = *(a1 + 16);
  v33 = v11;
  if (v14)
  {
    v16 = v11 + 16;
    v15 = *(v11 + 16);
    v34 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v17 = a1 + v34;
    v40 = *(v11 + 72);
    v41 = 0;
    v38 = (v11 + 8);
    v39 = v15;
    v18 = v17;
    v19 = v14;
    v15(v13, v17, v3);
    while (1)
    {
      if (v41 < sub_2278C7220())
      {
        v41 = sub_2278C7220();
      }

      v20 = *v38;
      (*v38)(v13, v3);
      v18 += v40;
      if (!--v19)
      {
        break;
      }

      v39(v13, v18, v3);
    }

    v37 = (v33 + 32);
    v21 = MEMORY[0x277D84F90];
    v35 = v16;
    v36 = v7;
    do
    {
      v39(v10, v17, v3);
      if (sub_2278C7220() == v41)
      {
        v23 = *v37;
        (*v37)(v7, v10, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2278B48A4(0, v21[2] + 1, 1);
          v21 = v42;
        }

        v22 = v40;
        v26 = v21[2];
        v25 = v21[3];
        if (v26 >= v25 >> 1)
        {
          sub_2278B48A4(v25 > 1, v26 + 1, 1);
          v22 = v40;
          v21 = v42;
        }

        v21[2] = v26 + 1;
        v7 = v36;
        v23(v21 + v34 + v26 * v22, v36, v3);
      }

      else
      {
        v20(v10, v3);
        v22 = v40;
      }

      v17 += v22;
      --v14;
    }

    while (v14);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  if (qword_27D7D5CC8 != -1)
  {
    swift_once();
  }

  v27 = qword_27D7D8860;
  v42 = v21;

  sub_227847C74(&v42, v27);

  if (v42[2])
  {
    v28 = v32;
    v29 = v33;
    (*(v33 + 16))(v32, v42 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v3);
    v30 = 0;
  }

  else
  {
    v30 = 1;
    v28 = v32;
    v29 = v33;
  }

  return (*(v29 + 56))(v28, v30, 1, v3);
}

uint64_t sub_2278411D4()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2278C6820();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = sub_2278C6540();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = sub_2278C6920();
  v1[12] = v11;
  v12 = *(v11 - 8);
  v1[13] = v12;
  v13 = *(v12 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278413A8, 0, 0);
}

uint64_t sub_2278413A8()
{
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v16 = v0[6];
  v5 = v0[2];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_227804920();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v6 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v6(v3);
  sub_2278C6720();
  (*(v4 + 8))(v3, v16);
  v8 = v5[8];
  v7 = v5[9];
  __swift_project_boxed_opaque_existential_1(v5 + 5, v8);
  sub_2278C78B0();
  v10 = v9;
  v11 = *(MEMORY[0x277D09950] + 4);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_227841528;
  v13 = v0[11];
  v14.n128_u64[0] = v10;

  return MEMORY[0x2821602E0](v13, v8, v7, v14);
}

uint64_t sub_227841528(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_227841728;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_227841650;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227841650()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[8];
  v6 = v0[5];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_227841728()
{
  v1 = v0[16];
  v2 = v0[5];
  sub_2278C7340();
  v3 = v1;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error fetching this week workouts for summation: %@", v7, 0xCu);
    sub_227802FC4(v8, &qword_27D7D64B0, &qword_2278CA010);
    MEMORY[0x22AA9E860](v8, -1, -1);
    MEMORY[0x22AA9E860](v7, -1, -1);
  }

  v11 = v0[16];
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];

  (*(v13 + 8))(v12, v14);
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  v18 = v0[8];
  v19 = v0[5];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v16 + 8))(v15, v17);

  v20 = v0[1];
  v21 = MEMORY[0x277D84F90];

  return v20(v21);
}

uint64_t sub_22784190C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_2278C6FB0() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_227848070(&qword_27D7D61F0, MEMORY[0x277D09A10]);
  v7 = 0;
  while ((sub_2278C76E0() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_227841A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, _UNKNOWN **a8@<X8>)
{
  v9 = v8;
  v65 = a7;
  v62 = a5;
  v16 = sub_2278C6FB0();
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2278C6FA0();
  v21 = *(a2 + 16);
  v22 = (a2 + 32);
  do
  {
    if (!v21)
    {
      goto LABEL_5;
    }

    v23 = *v22++;
    --v21;
  }

  while (v23 != v20);
  if ((a3 & 1) == 0)
  {
LABEL_20:
    v39 = sub_2278C7260();
    return (*(*(v39 - 8) + 56))(a8, 1, 1, v39);
  }

LABEL_5:
  v24 = sub_2278C6FA0();
  if (!*(a4 + 16))
  {
    goto LABEL_20;
  }

  v25 = sub_2278AE46C(v24);
  if ((v26 & 1) == 0)
  {
    goto LABEL_20;
  }

  v59 = a6;
  v27 = *(*(a4 + 56) + 8 * v25);
  MEMORY[0x28223BE20](v25);
  *(&v55 - 2) = a1;
  v60 = v28;
  v29 = v65;

  v30 = sub_2278A90E4(sub_227847FE4, (&v55 - 4), v29);
  v31 = v30;
  v61 = v9;
  v67 = MEMORY[0x277D84F90];
  v57 = v30 >> 62;
  if (v30 >> 62)
  {
LABEL_34:
    v32 = sub_2278C7B80();
  }

  else
  {
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v31;
  v58 = a1;
  if (v32)
  {
    v55 = v19;
    v56 = a8;
    v33 = 0;
    v19 = (v31 & 0xC000000000000001);
    a1 = v31 & 0xFFFFFFFFFFFFFF8;
    a8 = &off_2785DA000;
    do
    {
      if (v19)
      {
        v34 = MEMORY[0x22AA9DBF0](v33, v31);
      }

      else
      {
        if (v33 >= *(a1 + 16))
        {
          goto LABEL_33;
        }

        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      [v34 duration];
      if (v37 < 0.0)
      {
      }

      else
      {
        sub_2278C7CB0();
        v38 = *(v67 + 16);
        sub_2278C7CE0();
        v31 = v66;
        sub_2278C7CF0();
        sub_2278C7CC0();
      }

      ++v33;
    }

    while (v36 != v32);
    v41 = v67;
    v19 = v55;
    a8 = v56;
    if ((v67 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_24:
      if ((v41 & 0x4000000000000000) == 0)
      {
        v42 = *(v41 + 16);
        goto LABEL_26;
      }
    }
  }

  v42 = sub_2278C7B80();
LABEL_26:
  if (v42 >= v59)
  {
    sub_227848004();
    v44 = MEMORY[0x22AA9D8F0](*MEMORY[0x277CCC918]);
    v45 = objc_opt_self();
    v46 = [v45 kilocalorieUnit];
    v47 = MEMORY[0x28223BE20](v46);
    v48 = v61;
    v49 = v62;
    *(&v55 - 4) = v62;
    *(&v55 - 3) = v44;
    *(&v55 - 2) = v47;
    sub_22783F614(sub_227848050, 0.0, (&v55 - 6), v65);

    v50 = [v45 meterUnit];
    v51 = MEMORY[0x28223BE20](v50);
    v52 = v60;
    *(&v55 - 4) = v49;
    *(&v55 - 3) = v52;
    *(&v55 - 2) = v51;
    sub_22783F614(sub_227848228, 0.0, (&v55 - 6), v41);
    v61 = v48;

    (*(v63 + 16))(v19, v58, v64);
    if (v57)
    {
      sub_2278C7B80();
    }

    else
    {
      v53 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_2278C7240();

    v54 = sub_2278C7260();
    return (*(*(v54 - 8) + 56))(a8, 0, 1, v54);
  }

  else
  {

    v43 = sub_2278C7260();
    return (*(*(v43 - 8) + 56))(a8, 1, 1, v43);
  }
}

BOOL sub_227841F78(void **a1, uint64_t a2)
{
  v4 = sub_2278C7130();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = *a1;
  v13 = sub_2278C6FA0();
  v25 = v12;
  v14 = [v12 workoutActivityType];
  v23 = v13;
  v15 = v13 == v14;
  v26 = a2;
  sub_2278C6F80();
  v16 = *MEMORY[0x277D09AA0];
  v24 = v5[13];
  v24(v9, v16, v4);
  sub_227848070(&qword_27D7D6238, MEMORY[0x277D09AA8]);
  LOBYTE(a2) = sub_2278C76E0();
  v17 = v5[1];
  v17(v9, v4);
  v17(v11, v4);
  if ((a2 & 1) == 0)
  {
    v18 = v23 == v14;
    IsIndoor = _HKWorkoutIsIndoor(v25);
    sub_2278C6F80();
    v20 = MEMORY[0x277D09A90];
    if (!IsIndoor)
    {
      v20 = MEMORY[0x277D09A98];
    }

    v24(v9, *v20, v4);
    v21 = sub_2278C7120();
    v17(v9, v4);
    v17(v11, v4);
    return v18 & v21;
  }

  return v15;
}

double sub_2278421E4@<D0>(double *a1@<X0>, id *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, double *a5@<X8>)
{
  v7 = *a1;
  v8 = [*a2 statisticsForType_];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 sumQuantity];
    if (v10)
    {
      v11 = v10;
      [v10 doubleValueForUnit_];
      v13 = v12;

      v9 = v11;
    }

    else
    {
      v13 = 0.0;
    }
  }

  else
  {
    v13 = 0.0;
  }

  result = v7 + v13;
  *a5 = v7 + v13;
  return result;
}

uint64_t sub_2278422A4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_2278C6FB0();
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22784236C, 0, 0);
}

uint64_t sub_22784236C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  sub_2278C7250();
  v5 = sub_2278C6FA0();
  v0[9] = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_27D7D5CE0 != -1)
  {
    swift_once();
  }

  v6 = qword_27D7D8878;
  if (*(qword_27D7D8878 + 16) && (v7 = sub_2278AE46C(v5), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v0[10] = v9;
    v10 = v9;
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_2278424FC;
    v12 = v0[3];

    return sub_227842768(v5, v10);
  }

  else
  {
    v14 = v0[8];

    v15 = v0[1];

    return v15(0);
  }
}

uint64_t sub_2278424FC(double a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_2278426F4;
  }

  else
  {
    v5 = sub_227842614;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227842614()
{
  if (*(*(v0 + 32) + 16) && (v1 = sub_2278AE46C(*(v0 + 72)), (v2 & 1) != 0) && (v3 = *(v0 + 96), *(*(*(v0 + 32) + 56) + 8 * v1) < v3))
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 40);
    v6 = *(v0 + 16);
    sub_2278C7230();
    v8 = v7;

    if (v3 * v5 < v8)
    {
      v9 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_8:
  v10 = *(v0 + 64);

  v11 = *(v0 + 8);

  return v11(v9);
}

uint64_t sub_2278426F4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 104);

  return v2(0);
}

uint64_t sub_227842768(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2278C6540();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = sub_2278C6910();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_2278C6820();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v13 = sub_2278C6920();
  v3[21] = v13;
  v14 = *(v13 - 8);
  v3[22] = v14;
  v15 = *(v14 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227842994, 0, 0);
}

uint64_t sub_227842994()
{
  v1 = v0[23];
  v2 = v0[20];
  v16 = v0[19];
  v3 = v0[18];
  v28 = v0[17];
  v19 = v0[16];
  v20 = v0[15];
  v21 = v0[14];
  v29 = v0[13];
  v30 = v0[12];
  v15 = v0[11];
  v17 = v0[10];
  v18 = v0[9];
  v22 = v0[8];
  v24 = v0[6];
  v25 = v0[7];
  v26 = v0[5];
  v4 = v0[4];
  v27 = v0[3];
  v23 = v0[2];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_227804920();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v5 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v5(v2);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v5(v3);
  sub_2278C66C0();
  v6 = *(v29 + 8);
  v0[24] = v6;
  v0[25] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v30);
  v7 = *(v17 + 104);
  v7(v15, *MEMORY[0x277CC99A8], v18);
  sub_2278C66E0();
  v8 = *(v17 + 8);
  v8(v15, v18);
  v7(v15, *MEMORY[0x277CC9968], v18);
  sub_2278C66E0();
  v8(v15, v18);
  sub_2278C66C0();
  v9 = *(v29 + 16);
  v9(v3, v20, v30);
  v9(v21, v28, v30);
  sub_2278C6520();
  v10 = v4[9];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v4[8]);
  v0[26] = sub_2278C6E70();
  sub_2278C70D0();
  (*(v24 + 16))(v25, v22, v26);

  v0[27] = sub_2278C70C0();
  v11 = swift_task_alloc();
  v0[28] = v11;
  *(v11 + 16) = v4;
  *(v11 + 24) = v27;
  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_227842D60;
  v13.n128_u64[0] = 0;

  return (sub_227843CD4)(&unk_2278CB700, v11, v13);
}

uint64_t sub_227842D60(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(v4 + 240) = v1;

  v7 = *(v4 + 224);
  if (v1)
  {

    v8 = sub_227843048;
  }

  else
  {
    *(v4 + 248) = a1;

    v8 = sub_227842EA8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_227842EA8()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v18 = v0[21];
  v19 = v0[23];
  v16 = v0[19];
  v17 = v0[20];
  v14 = v0[16];
  v15 = v0[17];
  v6 = v0[15];
  v20 = v0[18];
  v21 = v0[14];
  v7 = v0[12];
  v8 = v0[8];
  v22 = v0[11];
  v23 = v0[7];
  v9 = v0[5];
  v10 = v0[6];

  (*(v10 + 8))(v8, v9);
  v4(v6, v7);
  v4(v14, v7);
  v4(v15, v7);
  v4(v16, v7);
  v4(v17, v7);
  (*(v5 + 8))(v19, v18);

  v11 = v0[1];
  v12.n128_u64[0] = v0[31];

  return v11(v12);
}

uint64_t sub_227843048()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v18 = v0[21];
  v19 = v0[23];
  v16 = v0[19];
  v17 = v0[20];
  v14 = v0[16];
  v15 = v0[17];
  v6 = v0[15];
  v20 = v0[18];
  v21 = v0[14];
  v7 = v0[12];
  v8 = v0[8];
  v22 = v0[11];
  v23 = v0[7];
  v9 = v0[5];
  v10 = v0[6];

  (*(v10 + 8))(v8, v9);
  v4(v6, v7);
  v4(v14, v7);
  v4(v15, v7);
  v4(v16, v7);
  v4(v17, v7);
  (*(v5 + 8))(v19, v18);

  v11 = v0[1];
  v12 = v0[30];

  return v11();
}

uint64_t sub_2278431E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2278C7260();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2278432B4, 0, 0);
}

uint64_t sub_2278432B4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  *(v0 + 72) = v2;
  if (v2)
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 136) = v7;
    *(v0 + 80) = *(v5 + 56);
    *(v0 + 88) = v6;
    *(v0 + 96) = MEMORY[0x277D84F90];
    *(v0 + 104) = 0;
    v8 = *(v0 + 64);
    *(v0 + 112) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v8, v1 + ((v7 + 32) & ~v7), v4);
    v18 = (v3 + *v3);
    v9 = v3[1];
    v10 = swift_task_alloc();
    *(v0 + 120) = v10;
    *v10 = v0;
    v10[1] = sub_227843454;
    v11 = *(v0 + 64);
    v12 = *(v0 + 24);

    return v18(v11);
  }

  else
  {
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);

    v16 = *(v0 + 8);
    v17 = MEMORY[0x277D84F90];

    return v16(v17);
  }
}

uint64_t sub_227843454(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = *(v4 + 96);

    v8 = sub_227843838;
  }

  else
  {
    *(v4 + 140) = a1 & 1;
    v8 = sub_227843588;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_227843588()
{
  if (*(v0 + 140))
  {
    v1 = *(v0 + 112);
    v2 = *(v0 + 96);
    (*(v0 + 88))(*(v0 + 56), *(v0 + 64), *(v0 + 40));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 96);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_227801E54(0, *(v4 + 2) + 1, 1, *(v0 + 96));
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_227801E54(v5 > 1, v6 + 1, 1, v4);
    }

    v7 = *(v0 + 80);
    v8 = *(v0 + 56);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = (*(v0 + 136) + 32) & ~*(v0 + 136);
    (*(v10 + 8))(*(v0 + 64), v9);
    *(v4 + 2) = v6 + 1;
    (*(v10 + 32))(&v4[v11 + v7 * v6], v8, v9);
  }

  else
  {
    (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));
    v4 = *(v0 + 96);
  }

  v12 = *(v0 + 104) + 1;
  if (v12 == *(v0 + 72))
  {
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);

    v15 = *(v0 + 8);

    return v15(v4);
  }

  else
  {
    *(v0 + 96) = v4;
    *(v0 + 104) = v12;
    v17 = *(v0 + 88);
    v18 = *(v0 + 64);
    v19 = *(v0 + 40);
    v20 = *(v0 + 16);
    v21 = *(v0 + 32) + ((*(v0 + 136) + 32) & ~*(v0 + 136)) + *(v0 + 80) * v12;
    *(v0 + 112) = (*(v0 + 48) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v18, v21, v19);
    v26 = (v20 + *v20);
    v22 = v20[1];
    v23 = swift_task_alloc();
    *(v0 + 120) = v23;
    *v23 = v0;
    v23[1] = sub_227843454;
    v24 = *(v0 + 64);
    v25 = *(v0 + 24);

    return v26(v24);
  }
}

uint64_t sub_227843838()
{
  v1 = v0[7];
  (*(v0[6] + 8))(v0[8], v0[5]);

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_2278438C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *a2;
  return MEMORY[0x2822009F8](sub_2278438EC, 0, 0);
}

uint64_t sub_2278438EC()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2278439C8;
  v3 = *(v0 + 24);
  v4.n128_u64[0] = 0;

  return (sub_227844538)(&unk_2278CB728, v1, v4);
}

uint64_t sub_2278439C8(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v9 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v6 = sub_227843B24;
  }

  else
  {
    v7 = *(v4 + 56);
    *(v4 + 80) = a1;

    v6 = sub_227843AF4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227843AF4()
{
  v1 = *(v0 + 80);
  if (v1 < *(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  **(v0 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_227843B24()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_227843B88(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = *a2;
  v5[5] = *a3;
  return MEMORY[0x2822009F8](sub_227843BB8, 0, 0);
}

uint64_t sub_227843BB8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() meterUnit];
  v4 = [v1 statisticsForType_];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 sumQuantity];
    if (v6)
    {
      v7 = v6;
      [v6 doubleValueForUnit_];
      v9 = v8;

      v5 = v7;
    }

    else
    {
      v9 = 0.0;
    }
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  *v11 = v9 + v10;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_227843CD4(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 56) = a1;
  *(v4 + 48) = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D61F8, &qword_2278CB710) - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6200, &qword_2278CB718);
  *(v4 + 88) = v6;
  v7 = *(v6 - 8);
  *(v4 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227843DE0, 0, 0);
}

uint64_t sub_227843DE0()
{
  v1 = v0[9];
  v0[2] = v0[6];
  v0[4] = v1;
  v0[14] = sub_2278C70D0();
  v2 = MEMORY[0x277D09A68];
  sub_227848070(&qword_27D7D6208, MEMORY[0x277D09A68]);

  sub_2278C7850();
  v0[15] = v0[6];
  v3 = sub_227848070(&qword_27D7D6210, v2);
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_227843F3C;
  v6 = v0[14];
  v7 = v0[10];

  return MEMORY[0x282200308](v7, v6, v3);
}

uint64_t sub_227843F3C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);

    v5 = sub_227844224;
  }

  else
  {
    v5 = sub_227844058;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227844058()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[13];
  if (v4 == 1)
  {
    v6 = v0[3];

    sub_227802FC4(v3, &qword_27D7D61F8, &qword_2278CB710);

    v7 = v0[1];
    v8.n128_u64[0] = v0[15];

    return v7(v8);
  }

  else
  {
    v10 = v0[7];
    (*(v2 + 32))(v0[13], v3, v1);
    v15 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_227844294;
    v13 = v0[13];
    v14 = v0[8];

    return (v15)(v0 + 5, v0 + 2, v13);
  }
}

uint64_t sub_227844224()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227844294()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    v4 = v2[3];

    v5 = sub_2278444C8;
  }

  else
  {
    v5 = sub_2278443E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2278443E0()
{
  v1 = v0[5];
  v0[2] = v1;
  v0[15] = v1;
  v2 = sub_227848070(&qword_27D7D6210, MEMORY[0x277D09A68]);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_227843F3C;
  v5 = v0[14];
  v6 = v0[10];

  return MEMORY[0x282200308](v6, v5, v2);
}

uint64_t sub_2278444C8()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227844538(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 56) = a1;
  *(v4 + 48) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6200, &qword_2278CB718);
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D6218, &qword_2278CB738);
  *(v4 + 104) = v8;
  v9 = *(v8 - 8);
  *(v4 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227844674, 0, 0);
}

uint64_t sub_227844674()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v0[2] = v0[6];
  (*(v2 + 16))(v3, v4, v5);
  sub_227847F9C(&qword_27D7D6220, &qword_27D7D6200, &qword_2278CB718);
  sub_2278C7850();
  v0[16] = v0[6];
  v6 = sub_227847F9C(&qword_27D7D6228, &qword_27D7D6218, &qword_2278CB738);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_2278447CC;
  v9 = v0[15];
  v10 = v0[13];

  return MEMORY[0x282200308](v0 + 4, v10, v6);
}

uint64_t sub_2278447CC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v4 = sub_227844A80;
  }

  else
  {
    v4 = sub_2278448F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2278448F8()
{
  v1 = v0[4];
  v0[19] = v1;
  if (v1)
  {
    v2 = v0[7];
    v0[3] = v1;
    v10 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_227844AF0;
    v5 = v0[8];

    return (v10)(v0 + 5, v0 + 2, v0 + 3);
  }

  else
  {
    v7 = v0[12];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v8 = v0[1];
    v9.n128_u64[0] = v0[16];

    return v8(v9);
  }
}

uint64_t sub_227844A80()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227844AF0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  v2[21] = v0;

  v5 = v2[19];
  if (v0)
  {
    v7 = v2[14];
    v6 = v2[15];
    v8 = v2[13];

    (*(v7 + 8))(v6, v8);
    v9 = sub_227844D2C;
  }

  else
  {

    v9 = sub_227844C48;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_227844C48()
{
  v1 = v0[5];
  v0[2] = v1;
  v0[16] = v1;
  v2 = sub_227847F9C(&qword_27D7D6228, &qword_27D7D6218, &qword_2278CB738);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_2278447CC;
  v5 = v0[15];
  v6 = v0[13];

  return MEMORY[0x282200308](v0 + 4, v6, v2);
}

uint64_t sub_227844D2C()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227844D9C(uint64_t a1, char a2)
{
  *(v3 + 200) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_2278C6910();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = sub_2278C6920();
  *(v3 + 56) = v7;
  v8 = *(v7 - 8);
  *(v3 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v10 = sub_2278C6820();
  *(v3 + 88) = v10;
  v11 = *(v10 - 8);
  *(v3 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227844F48, 0, 0);
}

uint64_t sub_227844F48()
{
  v1 = v0[15];
  v2 = v0[16];
  v41 = v0[9];
  v42 = v0[14];
  v3 = v0[8];
  v43 = v0[7];
  v44 = v0[10];
  v4 = v0[5];
  v5 = v0[3];
  v39 = v0[4];
  v40 = v0[6];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v6 = off_283AE99E0;
  type metadata accessor for DateProvider();
  v6(v2);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_227804920();
  sub_2278C66C0();
  v37 = *MEMORY[0x277CC9968];
  v36 = *(v4 + 104);
  v36(v40);
  sub_2278C6900();
  sub_2278C6750();
  v7 = *(v3 + 8);
  v0[17] = v7;
  v0[18] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38 = v7;
  v7(v41, v43);
  v8 = *(v4 + 8);
  v8(v40, v39);
  if (sub_2278C68F0())
  {
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v10 = sub_227845360;
LABEL_5:
    v9[1] = v10;
    v18 = v0[3];

    return sub_2278411D4();
  }

  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[9];
  v45 = v0[10];
  v16 = v0[6];
  v15 = v0[7];
  v17 = v0[4];
  (v36)(v16, v37, v17);
  sub_2278C6900();
  sub_2278C6750();
  v38(v14, v15);
  v8(v16, v17);
  if (sub_2278C68F0())
  {
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v10 = sub_227845704;
    goto LABEL_5;
  }

  v20 = v0[15];
  v21 = v0[16];
  v22 = v0[14];
  v23 = v0[11];
  v24 = v0[10];
  v25 = v0[7];
  v46 = v0[2];
  v26 = *(v0[12] + 8);
  v26(v0[13], v23);
  v26(v22, v23);
  v26(v20, v23);
  v38(v24, v25);
  v26(v21, v23);
  v27 = sub_2278C7310();
  (*(*(v27 - 8) + 56))(v46, 1, 1, v27);
  v29 = v0[15];
  v28 = v0[16];
  v31 = v0[13];
  v30 = v0[14];
  v33 = v0[9];
  v32 = v0[10];
  v34 = v0[6];

  v35 = v0[1];

  return v35();
}

uint64_t sub_227845360(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *v1;
  *(v3 + 160) = a1;

  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  *v6 = v5;
  v6[1] = sub_2278454D0;
  v7 = *(v3 + 24);
  v8 = *(v3 + 200);
  v9 = *(v3 + 16);

  return sub_22783FA64(v9, a1, v8);
}

uint64_t sub_2278454D0()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2278455E8, 0, 0);
}

uint64_t sub_2278455E8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[11];
  v6 = v0[10];
  v7 = v0[7];
  v8 = *(v0[12] + 8);
  v8(v0[14], v5);
  v8(v3, v5);
  v2(v6, v7);
  v8(v4, v5);
  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[13];
  v11 = v0[14];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[6];

  v16 = v0[1];

  return v16();
}

uint64_t sub_227845704(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v5 = *v1;
  *(v3 + 184) = a1;

  v6 = swift_task_alloc();
  *(v3 + 192) = v6;
  *v6 = v5;
  v6[1] = sub_227845874;
  v7 = *(v3 + 24);
  v8 = *(v3 + 200);
  v9 = *(v3 + 16);

  return sub_227840688(v9, a1, v8);
}

uint64_t sub_227845874()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22784598C, 0, 0);
}

uint64_t sub_22784598C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v18 = v0[16];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[10];
  v7 = v0[7];
  v8 = *(v0[12] + 8);
  v8(v0[13], v5);
  v8(v4, v5);
  v8(v3, v5);
  v2(v6, v7);
  v8(v18, v5);
  v10 = v0[15];
  v9 = v0[16];
  v12 = v0[13];
  v11 = v0[14];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[6];

  v16 = v0[1];

  return v16();
}

uint64_t sub_227845AD8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2278C7260();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227845BBC(unint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5)
{
  v93 = a5;
  v9 = sub_2278C6FB0();
  v82 = *(v9 - 8);
  v10 = *(v82 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v77 = &v76 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v76 - v16;
  v18 = sub_2278C7260();
  v83 = *(v18 - 8);
  v19 = *(v83 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v86 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v84 = &v76 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v89 = &v76 - v25;
  result = MEMORY[0x28223BE20](v24);
  v88 = &v76 - v27;
  v85 = *(v28 + 72);
  if (!v85)
  {
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v85 == -1)
  {
    goto LABEL_76;
  }

  v29 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v85 == -1)
  {
    goto LABEL_77;
  }

  v30 = (a2 - a1) / v85;
  v96 = a1;
  v95 = a4;
  v87 = v18;
  if (v30 >= v29 / v85)
  {
    v32 = v29 / v85 * v85;
    if (a4 < a2 || a2 + v32 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v32;
    if (v32 >= 1)
    {
      v57 = -v85;
      v79 = (v83 + 16);
      v80 = (v82 + 8);
      v78 = (v83 + 8);
      v58 = a4 + v32;
      v90 = a1;
      v91 = a4;
      v88 = -v85;
      do
      {
        v76 = v56;
        v59 = a2;
        v60 = a2 + v57;
        v61 = v56;
        v92 = v60;
        v83 = v59;
        while (1)
        {
          if (v59 <= a1)
          {
            v96 = v59;
            v94 = v76;
            goto LABEL_74;
          }

          v62 = a3;
          v81 = v61;
          v85 = v58;
          v63 = *v79;
          v89 = (v58 + v57);
          (v63)(v84);
          (v63)(v86, v60, v18);
          sub_2278C7250();
          v64 = *(v93 + 16);
          if (v64)
          {
            v65 = v93 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
            v66 = *(v82 + 72);
            sub_227848070(&qword_27D7D61F0, MEMORY[0x277D09A10]);
            v67 = 0;
            while ((sub_2278C76E0() & 1) == 0)
            {
              ++v67;
              v65 += v66;
              if (v64 == v67)
              {
                goto LABEL_56;
              }
            }

            v69 = *v80;
            (*v80)(v13, v9);
            v70 = v77;
            sub_2278C7250();
            v71 = sub_22784190C(v70, v93);
            v73 = v72;
            v69(v70, v9);
            v68 = (v73 & 1) != 0 || v67 < v71;
          }

          else
          {
LABEL_56:
            (*v80)(v13, v9);
            v68 = 0;
          }

          v18 = v87;
          a3 = (v62 + v88);
          v74 = *v78;
          (*v78)(v86, v87);
          v74(v84, v18);
          v75 = v91;
          if (v68)
          {
            break;
          }

          v61 = v89;
          v60 = v92;
          if (v62 < v85 || a3 >= v85)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v90;
          }

          else
          {
            a1 = v90;
            if (v62 != v85)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v58 = v61;
          v57 = v88;
          v59 = v83;
          if (v89 <= v75)
          {
            v56 = v61;
            a2 = v83;
            goto LABEL_73;
          }
        }

        a2 = v92;
        if (v62 < v83 || a3 >= v83)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v90;
        }

        else
        {
          a1 = v90;
          if (v62 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v58 = v85;
        v56 = v81;
        v57 = v88;
      }

      while (v85 > v75);
    }

LABEL_73:
    v96 = a2;
    v94 = v56;
  }

  else
  {
    v31 = v30 * v85;
    if (a4 < a1 || a1 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v86 = (a4 + v31);
    v94 = a4 + v31;
    if (v31 >= 1 && a2 < a3)
    {
      v34 = *(v83 + 16);
      v83 += 16;
      v84 = v34;
      v79 = (v83 - 8);
      v80 = (v82 + 8);
      v81 = a3;
      do
      {
        v90 = a1;
        v92 = a2;
        v35 = a2;
        v36 = v84;
        (v84)(v88, v35, v18);
        v91 = a4;
        v36(v89, a4, v18);
        sub_2278C7250();
        v37 = *(v93 + 16);
        if (v37)
        {
          v38 = v93 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
          v39 = *(v82 + 72);
          sub_227848070(&qword_27D7D61F0, MEMORY[0x277D09A10]);
          v40 = 0;
          while ((sub_2278C76E0() & 1) == 0)
          {
            ++v40;
            v38 += v39;
            if (v37 == v40)
            {
              goto LABEL_25;
            }
          }

          v46 = *v80;
          (*v80)(v17, v9);
          v47 = v77;
          v48 = v89;
          sub_2278C7250();
          v49 = sub_22784190C(v47, v93);
          v51 = v50;
          v46(v47, v9);
          if (v51)
          {
            v52 = *v79;
            v53 = v48;
            v18 = v87;
            (*v79)(v53, v87);
            v52(v88, v18);
            a4 = v91;
            a2 = v92;
LABEL_35:
            v42 = v85;
            v44 = v90;
            v45 = v81;
            if (v90 < a2 || v90 >= a2 + v85)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v90 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v42;
            goto LABEL_41;
          }

          v54 = *v79;
          v55 = v48;
          v18 = v87;
          (*v79)(v55, v87);
          v54(v88, v18);
          a4 = v91;
          a2 = v92;
          if (v40 < v49)
          {
            goto LABEL_35;
          }
        }

        else
        {
LABEL_25:
          (*v80)(v17, v9);
          v41 = *v79;
          v18 = v87;
          (*v79)(v89, v87);
          v41(v88, v18);
          a4 = v91;
          a2 = v92;
        }

        v42 = v85;
        v43 = a4 + v85;
        v44 = v90;
        v45 = v81;
        if (v90 < a4 || v90 >= v43)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v90 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v95 = v43;
        a4 += v42;
LABEL_41:
        a1 = v44 + v42;
        v96 = a1;
      }

      while (a4 < v86 && a2 < v45);
    }
  }

LABEL_74:
  sub_227845AD8(&v96, &v95, &v94);
  return 1;
}

uint64_t sub_22784650C(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_22786934C(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_2278C7260() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = (v10 + v15 * v14);

      sub_227845BBC(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_2278466CC(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v177 = a4;
  v179 = a1;
  v7 = sub_2278C6FB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v212 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v211 = &v176 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v176 - v14;
  v210 = sub_2278C7260();
  v16 = *(*(v210 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v210);
  v182 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v181 = &v176 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v198 = &v176 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v206 = &v176 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v205 = &v176 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v28);
  v180 = &v176 - v32;
  v213 = MEMORY[0x277D84F90];
  v195 = a3;
  v33 = a3[1];
  if (v33 >= 1)
  {
    v178 = v31;
    v197 = v30;
    v203 = (v8 + 8);
    v204 = v29 + 16;
    v202 = (v29 + 8);
    v189 = v29;
    v184 = (v29 + 32);
    swift_bridgeObjectRetain_n();
    v34 = 0;
    v35 = MEMORY[0x277D84F90];
    v207 = v7;
    v208 = a5;
    v194 = v8;
    v196 = v15;
    while (1)
    {
      v36 = v34;
      v192 = v35;
      v183 = v34;
      v209 = v34 + 1;
      if (v34 + 1 >= v33)
      {
        v46 = v34;
      }

      else
      {
        v190 = v33;
        v37 = *v195;
        v38 = *(v189 + 72);
        v39 = *(v189 + 16);
        v39(v180, *v195 + v38 * (v34 + 1), v210);
        v193 = v38;
        v188 = v37;
        v187 = v39;
        v39(v178, v37 + v38 * v36, v210);
        sub_2278C7250();
        v40 = sub_22784190C(v15, a5);
        LOBYTE(v37) = v41;
        v42 = v7;
        v43 = *v203;
        (*v203)(v15, v42);
        if (v37)
        {
          LODWORD(v191) = 0;
          v35 = v192;
          v44 = v193;
          v45 = v43;
        }

        else
        {
          sub_2278C7250();
          v47 = sub_22784190C(v15, a5);
          v49 = v48;
          v43(v15, v42);
          v45 = v43;
          v50 = (v49 & 1) != 0 || v40 < v47;
          LODWORD(v191) = v50;
          a5 = v208;
          v35 = v192;
          v44 = v193;
        }

        v51 = *v202;
        v52 = v210;
        (*v202)(v178, v210);
        v186 = v51;
        v51(v180, v52);
        v53 = (v44 * v209);
        v54 = v44 * (v183 + 2);
        do
        {
          v63 = v45;
          v64 = v209;
          v65 = v53;
          v62 = v54;
          v66 = ++v209 < v190;
          v185 = v64;
          if (!v66)
          {
            break;
          }

          v199 = v53;
          v200 = v54;
          v67 = v188;
          v68 = v210;
          v69 = v187;
          v187(v205, v188 + (v64 + 1) * v44, v210);
          v69(v206, v67 + v64 * v44, v68);
          sub_2278C7250();
          v70 = *(a5 + 16);
          if (v70)
          {
            v71 = a5 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
            v72 = *(v194 + 72);
            sub_227848070(&qword_27D7D61F0, MEMORY[0x277D09A10]);
            v73 = 0;
            v65 = v199;
            v45 = v63;
            v74 = v207;
            while ((sub_2278C76E0() & 1) == 0)
            {
              ++v73;
              v71 += v72;
              if (v70 == v73)
              {
                goto LABEL_25;
              }
            }

            v45(v211, v74);
            v55 = v196;
            sub_2278C7250();
            a5 = v208;
            v56 = sub_22784190C(v55, v208);
            v58 = v57;
            v45(v55, v74);
            v59 = (v58 & 1) != 0 || v73 < v56;
          }

          else
          {
            v65 = v199;
            v45 = v63;
            v74 = v207;
LABEL_25:
            v45(v211, v74);
            v59 = 0;
            a5 = v208;
          }

          v60 = v210;
          v61 = v186;
          v186(v206, v210);
          v61(v205, v60);
          v35 = v192;
          v44 = v193;
          v53 = &v65[v193];
          v62 = v200;
          v54 = v200 + v193;
        }

        while (v191 == v59);
        if (v191)
        {
          v46 = v183;
          if (v209 < v183)
          {
            goto LABEL_150;
          }

          if (v183 >= v209)
          {
            v15 = v196;
            v7 = v207;
          }

          else
          {
            v75 = v183 * v44;
            v76 = v183;
            v77 = v185;
            v7 = v207;
            do
            {
              if (v76 != v77)
              {
                v78 = *v195;
                if (!*v195)
                {
                  goto LABEL_155;
                }

                v79 = v77;
                v80 = v62;
                v81 = *v184;
                (*v184)(v182, v78 + v75, v210);
                if (v75 < v65 || v78 + v75 >= v78 + v80)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v75 != v65)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                v81(&v65[v78], v182, v210);
                v46 = v183;
                v44 = v193;
                v62 = v80;
                v77 = v79;
              }

              ++v76;
              v65 -= v44;
              v62 -= v44;
              v75 += v44;
              v66 = v76 < v77--;
            }

            while (v66);
            a5 = v208;
            v15 = v196;
            v35 = v192;
          }
        }

        else
        {
          v15 = v196;
          v46 = v183;
          v7 = v207;
        }
      }

      v82 = v195[1];
      if (v209 >= v82)
      {
        break;
      }

      if (__OFSUB__(v209, v46))
      {
        goto LABEL_149;
      }

      if (v209 - v46 < v177)
      {
        v83 = v46 + v177;
        if (__OFADD__(v46, v177))
        {
          goto LABEL_151;
        }

        if (v83 >= v82)
        {
          v83 = v195[1];
        }

        if (v83 < v46)
        {
LABEL_152:
          __break(1u);
LABEL_153:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_154:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_155:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_156:
          swift_bridgeObjectRelease_n();
          __break(1u);
          goto LABEL_157;
        }

        v84 = v209;
        if (v209 != v83)
        {
          v200 = *v195;
          v85 = *(a5 + 16);
          v193 = *(v189 + 72);
          v191 = *(v189 + 16);
          v86 = v209;
          v187 = v83;
          do
          {
            v209 = v86;
            while (1)
            {
              v87 = a5;
              v88 = v200;
              v89 = v193;
              v90 = (v200 + v193 * v86--);
              v199 = v90;
              v91 = v210;
              v92 = v191;
              v191(v198);
              v93 = v88 + v86 * v89;
              v92(v197, v93, v91);
              sub_2278C7250();
              if (!v85)
              {
                break;
              }

              v94 = v87 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
              v95 = *(v194 + 72);
              sub_227848070(&qword_27D7D61F0, MEMORY[0x277D09A10]);
              v96 = 0;
              v7 = v207;
              while ((sub_2278C76E0() & 1) == 0)
              {
                ++v96;
                v94 += v95;
                if (v85 == v96)
                {
                  goto LABEL_64;
                }
              }

              v190 = v93;
              v97 = *v203;
              (*v203)(v212, v7);
              v99 = v196;
              v98 = v197;
              sub_2278C7250();
              v188 = sub_22784190C(v99, v208);
              v101 = v100;
              v97(v99, v7);
              if (v101)
              {
                v102 = *v202;
                v103 = v98;
                v104 = v210;
                (*v202)(v103, v210);
                v102(v198, v104);
              }

              else
              {
                v105 = *v202;
                v106 = v98;
                v107 = v210;
                (*v202)(v106, v210);
                v105(v198, v107);
                if (v96 >= v188)
                {
                  goto LABEL_65;
                }
              }

              a5 = v208;
              if (!v200)
              {
                goto LABEL_154;
              }

              v108 = *v184;
              v109 = v181;
              v110 = v210;
              (*v184)(v181, v199, v210);
              v111 = v190;
              swift_arrayInitWithTakeFrontToBack();
              v108(v111, v109, v110);
              v7 = v207;
              if (v86 == v183)
              {
                goto LABEL_66;
              }
            }

            v7 = v207;
LABEL_64:
            (*v203)(v212, v7);
            v112 = *v202;
            v113 = v210;
            (*v202)(v197, v210);
            v112(v198, v113);
LABEL_65:
            a5 = v208;
LABEL_66:
            v86 = v209 + 1;
          }

          while ((v209 + 1) != v187);
          v84 = v187;
          v15 = v196;
          v35 = v192;
          v46 = v183;
          if (v187 < v183)
          {
            goto LABEL_148;
          }

          goto LABEL_73;
        }

        goto LABEL_70;
      }

      v84 = v209;
      if (v209 < v46)
      {
        goto LABEL_148;
      }

LABEL_73:
      v209 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_22780202C(0, *(v35 + 2) + 1, 1, v35);
      }

      v115 = *(v35 + 2);
      v114 = *(v35 + 3);
      v116 = v115 + 1;
      if (v115 >= v114 >> 1)
      {
        v35 = sub_22780202C((v114 > 1), v115 + 1, 1, v35);
      }

      *(v35 + 2) = v116;
      v117 = v35 + 32;
      v118 = &v35[16 * v115 + 32];
      v119 = v209;
      *v118 = v46;
      *(v118 + 1) = v119;
      v200 = *v179;
      if (!v200)
      {
        goto LABEL_156;
      }

      if (v115)
      {
        v199 = v35 + 32;
        while (1)
        {
          v120 = v116 - 1;
          if (v116 >= 4)
          {
            break;
          }

          if (v116 == 3)
          {
            v121 = *(v35 + 4);
            v122 = *(v35 + 5);
            v131 = __OFSUB__(v122, v121);
            v123 = v122 - v121;
            v124 = v131;
LABEL_93:
            if (v124)
            {
              goto LABEL_138;
            }

            v137 = &v35[16 * v116];
            v139 = *v137;
            v138 = *(v137 + 1);
            v140 = __OFSUB__(v138, v139);
            v141 = v138 - v139;
            v142 = v140;
            if (v140)
            {
              goto LABEL_140;
            }

            v143 = &v117[16 * v120];
            v145 = *v143;
            v144 = *(v143 + 1);
            v131 = __OFSUB__(v144, v145);
            v146 = v144 - v145;
            if (v131)
            {
              goto LABEL_143;
            }

            if (__OFADD__(v141, v146))
            {
              goto LABEL_145;
            }

            if (v141 + v146 >= v123)
            {
              if (v123 < v146)
              {
                v120 = v116 - 2;
              }

              goto LABEL_115;
            }

            goto LABEL_108;
          }

          if (v116 < 2)
          {
            goto LABEL_146;
          }

          v147 = &v35[16 * v116];
          v149 = *v147;
          v148 = *(v147 + 1);
          v131 = __OFSUB__(v148, v149);
          v141 = v148 - v149;
          v142 = v131;
LABEL_108:
          if (v142)
          {
            goto LABEL_142;
          }

          v150 = &v117[16 * v120];
          v152 = *v150;
          v151 = *(v150 + 1);
          v131 = __OFSUB__(v151, v152);
          v153 = v151 - v152;
          if (v131)
          {
            goto LABEL_144;
          }

          if (v153 < v141)
          {
            goto LABEL_3;
          }

LABEL_115:
          if (v120 - 1 >= v116)
          {
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

          v158 = *v195;
          if (!*v195)
          {
            goto LABEL_153;
          }

          v159 = v35;
          v160 = &v117[16 * v120 - 16];
          v161 = *v160;
          v162 = v120;
          v163 = &v117[16 * v120];
          v164 = *(v163 + 1);
          v165 = *(v189 + 72);
          v166 = v158 + v165 * *v160;
          v167 = v158 + v165 * *v163;
          v168 = (v158 + v165 * v164);
          v169 = v208;

          v170 = v166;
          v171 = v201;
          sub_227845BBC(v170, v167, v168, v200, v169);
          v201 = v171;
          if (v171)
          {

            v213 = v159;
            goto LABEL_128;
          }

          v15 = v196;
          if (v164 < v161)
          {
            goto LABEL_133;
          }

          v172 = *(v159 + 2);
          if (v162 > v172)
          {
            goto LABEL_134;
          }

          *v160 = v161;
          *(v160 + 1) = v164;
          if (v162 >= v172)
          {
            goto LABEL_135;
          }

          v116 = v172 - 1;
          memmove(v163, v163 + 16, 16 * (v172 - 1 - v162));
          v35 = v159;
          *(v159 + 2) = v172 - 1;
          v117 = v199;
          v7 = v207;
          if (v172 <= 2)
          {
            goto LABEL_3;
          }
        }

        v125 = &v117[16 * v116];
        v126 = *(v125 - 8);
        v127 = *(v125 - 7);
        v131 = __OFSUB__(v127, v126);
        v128 = v127 - v126;
        if (v131)
        {
          goto LABEL_136;
        }

        v130 = *(v125 - 6);
        v129 = *(v125 - 5);
        v131 = __OFSUB__(v129, v130);
        v123 = v129 - v130;
        v124 = v131;
        if (v131)
        {
          goto LABEL_137;
        }

        v132 = &v35[16 * v116];
        v134 = *v132;
        v133 = *(v132 + 1);
        v131 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v131)
        {
          goto LABEL_139;
        }

        v131 = __OFADD__(v123, v135);
        v136 = v123 + v135;
        if (v131)
        {
          goto LABEL_141;
        }

        if (v136 >= v128)
        {
          v154 = &v117[16 * v120];
          v156 = *v154;
          v155 = *(v154 + 1);
          v131 = __OFSUB__(v155, v156);
          v157 = v155 - v156;
          if (v131)
          {
            goto LABEL_147;
          }

          if (v123 < v157)
          {
            v120 = v116 - 2;
          }

          goto LABEL_115;
        }

        goto LABEL_93;
      }

LABEL_3:
      v33 = v195[1];
      a5 = v208;
      v34 = v209;
      if (v209 >= v33)
      {
        v213 = v35;
        goto LABEL_125;
      }
    }

    v84 = v209;
LABEL_70:
    if (v84 < v46)
    {
      goto LABEL_148;
    }

    goto LABEL_73;
  }

  swift_bridgeObjectRetain_n();
LABEL_125:
  v173 = *v179;
  v174 = v201;
  if (*v179)
  {

    sub_22784650C(&v213, v173, v195, a5);
    if (v174)
    {

LABEL_128:
      swift_bridgeObjectRelease_n();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
LABEL_157:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_22784763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v70 = a5;
  v52 = a1;
  v8 = sub_2278C6FB0();
  v63 = *(v8 - 8);
  v9 = *(v63 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v49[-v12];
  v14 = sub_2278C7260();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v51 = &v49[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v64 = &v49[-v19];
  result = MEMORY[0x28223BE20](v18);
  v71 = &v49[-v22];
  v54 = a2;
  if (a3 != a2)
  {
    v69 = *a4;
    v23 = *(v70 + 16);
    v25 = *(v21 + 16);
    v24 = v21 + 16;
    v59 = *(v24 + 56);
    v60 = v25;
    v57 = (v24 - 8);
    v58 = (v63 + 8);
    v61 = v24;
    v62 = v14;
    v50 = (v24 + 16);
    v56 = v13;
    while (2)
    {
      v65 = a3;
      v26 = a3;
      while (1)
      {
        v27 = v69;
        v29 = v59;
        v28 = v60;
        v67 = v69 + v59 * v26;
        (v60)(v71);
        v68 = v26 - 1;
        v30 = v27 + (v26 - 1) * v29;
        v31 = v64;
        v66 = v30;
        v28();
        v32 = v56;
        sub_2278C7250();
        if (!v23)
        {
          break;
        }

        v33 = v70 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
        v34 = *(v63 + 72);
        sub_227848070(&qword_27D7D61F0, MEMORY[0x277D09A10]);
        v35 = 0;
        while ((sub_2278C76E0() & 1) == 0)
        {
          ++v35;
          v33 += v34;
          if (v23 == v35)
          {
            goto LABEL_15;
          }
        }

        v36 = *v58;
        (*v58)(v32, v8);
        v37 = v53;
        v38 = v31;
        sub_2278C7250();
        v55 = sub_22784190C(v37, v70);
        v40 = v39;
        v36(v37, v8);
        if (v40)
        {
          v41 = *v57;
          v42 = v62;
          (*v57)(v38, v62);
          result = v41(v71, v42);
          v26 = v68;
        }

        else
        {
          v43 = *v57;
          v42 = v62;
          (*v57)(v38, v62);
          result = v43(v71, v42);
          v26 = v68;
          if (v35 >= v55)
          {
            goto LABEL_16;
          }
        }

        if (!v69)
        {
          __break(1u);
          return result;
        }

        v44 = v51;
        v45 = *v50;
        (*v50)(v51, v67, v42);
        v46 = v66;
        swift_arrayInitWithTakeFrontToBack();
        result = v45(v46, v44, v42);
        if (v26 == v52)
        {
          goto LABEL_16;
        }
      }

LABEL_15:
      (*v58)(v32, v8);
      v47 = *v57;
      v48 = v62;
      (*v57)(v31, v62);
      result = v47(v71, v48);
LABEL_16:
      a3 = v65 + 1;
      if (v65 + 1 != v54)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_227847AF0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_2278C7D90();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2278C7260();
        v8 = sub_2278C77D0();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_2278C7260() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_2278466CC(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_22784763C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_227847C74(void **a1, uint64_t a2)
{
  v4 = *(sub_2278C7260() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_22786A178(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_227847AF0(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_227847D5C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22780523C;

  return sub_2278422A4(a1, v4, v5, v6);
}

uint64_t sub_227847E14(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2278004C0;

  return sub_2278438C0(a1, a2, a3, v9, v8);
}

uint64_t sub_227847ED8(uint64_t a1, void *a2, void *a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2278003CC;

  return sub_227843B88(a1, a2, a3, v9, v8);
}

uint64_t sub_227847F9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_227848004()
{
  result = qword_27D7D6230;
  if (!qword_27D7D6230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7D6230);
  }

  return result;
}

uint64_t sub_227848070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _HKWorkoutIsIndoor(void *a1)
{
  v1 = a1;
  v2 = [v1 metadata];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  v4 = [v3 BOOLValue];

  return v4;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_227848164(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2278481AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227848240(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2278003CC;

  return v9(a1, a2);
}

uint64_t sub_227848358(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22781659C;

  return v9(a1, a2);
}

uint64_t sub_227848488()
{
  v1[2] = v0;
  v2 = sub_2278C75A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227848554, 0, 0);
}

uint64_t sub_227848554()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = *(MEMORY[0x277CE9488] + 4);
  v5 = (*MEMORY[0x277CE9488] + MEMORY[0x277CE9488]);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_2278485FC;

  return v5();
}

uint64_t sub_2278485FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_22784884C;
  }

  else
  {
    v5 = sub_227848710;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227848710()
{
  if (*(v0 + 64))
  {
    v1 = sub_227848C48(*(v0 + 64));
  }

  else
  {
    v2 = *(v0 + 48);
    sub_2278C73A0();
    v3 = sub_2278C7590();
    v4 = sub_2278C7950();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2277F7000, v3, v4, "Received nil friends list", v9, 2u);
      MEMORY[0x22AA9E860](v9, -1, -1);
    }

    (*(v8 + 8))(v6, v7);
    v1 = MEMORY[0x277D84F90];
  }

  v11 = *(v0 + 40);
  v10 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12(v1);
}

uint64_t sub_22784884C()
{
  v1 = v0[9];
  v2 = v0[5];
  sub_2278C73A0();
  v3 = v1;
  v4 = sub_2278C7590();
  v5 = sub_2278C7950();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2277F7000, v4, v5, "Error fetching activity sharing friends: %@", v7, 0xCu);
    sub_227848BE0(v8);
    MEMORY[0x22AA9E860](v8, -1, -1);
    MEMORY[0x22AA9E860](v7, -1, -1);
  }

  v11 = v0[9];
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];

  (*(v13 + 8))(v12, v14);
  v16 = v0[5];
  v15 = v0[6];

  v17 = v0[1];
  v18 = MEMORY[0x277D84F90];

  return v17(v18);
}

uint64_t sub_2278489D0()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ActivitySharingQuery.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivitySharingQuery.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227848B8C()
{
  result = qword_27D7D6240;
  if (!qword_27D7D6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6240);
  }

  return result;
}

uint64_t sub_227848BE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D64B0, &qword_2278CA010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227848C48(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_2278C7B80();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_2278A65C4(v2, 0);

    v1 = sub_2278A4588(&v5, (v3 + 32), v2, v1);
    sub_227806704();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_227848CF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_227848DDC();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D63E0, &unk_2278CC430);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_227848DDC()
{
  result = qword_2813B9B20;
  if (!qword_2813B9B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B9B20);
  }

  return result;
}

unint64_t sub_227848E44()
{
  result = qword_27D7D6248;
  if (!qword_27D7D6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7D6248);
  }

  return result;
}

uint64_t sub_227848EA0()
{
  sub_2278C7E60();
  MEMORY[0x22AA9DDE0](0);
  return sub_2278C7E90();
}

uint64_t sub_227848F0C()
{
  sub_2278C7E60();
  MEMORY[0x22AA9DDE0](0);
  return sub_2278C7E90();
}

uint64_t sub_227848F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2278004C0;

  return v11(a1, a2, a3);
}