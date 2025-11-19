uint64_t sub_24B4483B8(uint64_t a1, uint64_t a2)
{
  v3[129] = v2;
  v3[128] = a1;
  v6 = swift_task_alloc();
  v3[130] = v6;
  *v6 = v3;
  v6[1] = sub_24B448464;

  return sub_24B44B17C(a1, a2);
}

uint64_t sub_24B448464(uint64_t a1)
{
  v4 = *(*v2 + 1040);
  v5 = *v2;
  *(v5 + 1048) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24B449330, 0, 0);
  }

  else
  {
    *(v5 + 1056) = a1;
    *(v5 + 648) = a1;
    *(v5 + 656) = 0u;
    *(v5 + 672) = 0u;
    *(v5 + 681) = 0u;
    v6 = *(MEMORY[0x277D043C8] + 4);

    v7 = swift_task_alloc();
    *(v5 + 1064) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9478, &qword_24B464E70);
    *(v5 + 1072) = v8;
    *v7 = v5;
    v7[1] = sub_24B44862C;
    v9 = *(v5 + 1024);

    return MEMORY[0x282159B08](v5 + 648, v8);
  }
}

uint64_t sub_24B44862C()
{
  v1 = *v0;
  v2 = *(*v0 + 1064);
  v4 = *v0;

  sub_24B44B98C(*(v1 + 648), *(v1 + 656), *(v1 + 664), *(v1 + 672), *(v1 + 680), *(v1 + 688), *(v1 + 696));

  return MEMORY[0x2822009F8](sub_24B4487B0, 0, 0);
}

uint64_t sub_24B4487B0()
{
  v1 = *(v0 + 1032);
  *(v0 + 160) = *v1;
  v2 = v1[4];
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 208) = v1[3];
  *(v0 + 224) = v2;
  *(v0 + 176) = v4;
  *(v0 + 192) = v3;
  v5 = v1[8];
  v7 = v1[5];
  v6 = v1[6];
  *(v0 + 272) = v1[7];
  *(v0 + 288) = v5;
  *(v0 + 240) = v7;
  *(v0 + 256) = v6;
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[8];
  *(v0 + 416) = v1[7];
  *(v0 + 432) = v10;
  *(v0 + 384) = v8;
  *(v0 + 400) = v9;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[4];
  *(v0 + 352) = v1[3];
  *(v0 + 368) = v13;
  *(v0 + 320) = v11;
  *(v0 + 336) = v12;
  *(v0 + 304) = *v1;
  sub_24B44E0A0(v0 + 160, v0 + 448);
  v14 = swift_task_alloc();
  *(v0 + 1080) = v14;
  *v14 = v0;
  v14[1] = sub_24B4488A8;
  v15 = *(v0 + 1056);

  return sub_24B41C398((v0 + 304), v15);
}

uint64_t sub_24B4488A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1080);
  v4 = *(*v1 + 1056);
  v10 = *v1;
  *(v2 + 1088) = a1;

  v5 = *(v2 + 416);
  *(v2 + 112) = *(v2 + 400);
  *(v2 + 128) = v5;
  *(v2 + 144) = *(v2 + 432);
  v6 = *(v2 + 352);
  *(v2 + 48) = *(v2 + 336);
  *(v2 + 64) = v6;
  v7 = *(v2 + 384);
  *(v2 + 80) = *(v2 + 368);
  *(v2 + 96) = v7;
  v8 = *(v2 + 320);
  *(v2 + 16) = *(v2 + 304);
  *(v2 + 32) = v8;
  sub_24B44E0FC(v2 + 16);

  return MEMORY[0x2822009F8](sub_24B4489F8, 0, 0);
}

uint64_t sub_24B4489F8()
{
  v1 = *(*(v0 + 1088) + 16);
  if (v1)
  {
    if (v1 == 1)
    {
      sub_24B443DE0(*(v0 + 1088), v0 + 928);

      v2 = *(v0 + 960);
      if (v2 == 255 || (v2 & 1) != 0)
      {
        *(v0 + 760) = 5;
        *(v0 + 768) = 0u;
        *(v0 + 784) = 0u;
        *(v0 + 800) = 0;
        *(v0 + 808) = 0x80;
        v3 = *(MEMORY[0x277D043C8] + 4);
        v4 = swift_task_alloc();
        *(v0 + 1104) = v4;
        *v4 = v0;
        v4[1] = sub_24B448D88;
        v5 = *(v0 + 1072);
        v6 = *(v0 + 1024);
        v7 = v0 + 760;
LABEL_12:

        return MEMORY[0x282159B08](v7, v5);
      }

      v12 = *(v0 + 928);
      v13 = *(v0 + 936);
      v14 = 2;
    }

    else
    {
      v12 = sub_24B41C220(*(v0 + 1088));

      v13 = 0;
      v14 = 1;
    }

    *(v0 + 704) = v12;
    *(v0 + 712) = v13;
    *(v0 + 720) = v14;
    *(v0 + 728) = 0;
    *(v0 + 744) = 0;
    *(v0 + 736) = 0;
    *(v0 + 752) = 96;
    v15 = *(MEMORY[0x277D043C8] + 4);
    v16 = swift_task_alloc();
    *(v0 + 1096) = v16;
    *v16 = v0;
    v16[1] = sub_24B448C0C;
    v5 = *(v0 + 1072);
    v17 = *(v0 + 1024);
    v7 = v0 + 704;
    goto LABEL_12;
  }

  v8 = *(v0 + 1088);

  v9 = swift_task_alloc();
  *(v0 + 1112) = v9;
  *v9 = v0;
  v9[1] = sub_24B448E7C;
  v10 = *(v0 + 1032);

  return sub_24B44B570(v0 + 992);
}

uint64_t sub_24B448C0C()
{
  v1 = *v0;
  v2 = *(*v0 + 1096);
  v3 = *v0;

  sub_24B44B98C(*(v1 + 704), *(v1 + 712), *(v1 + 720), *(v1 + 728), *(v1 + 736), *(v1 + 744), *(v1 + 752));
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_24B448D88()
{
  v1 = *(*v0 + 1104);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24B448E7C()
{
  v1 = *(*v0 + 1112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24B448F78, 0, 0);
}

uint64_t sub_24B448F78()
{
  v1 = *(v0 + 1008);
  if (v1 == 255)
  {
    *(v0 + 816) = 5;
    *(v0 + 856) = 0;
    *(v0 + 824) = 0u;
    *(v0 + 840) = 0u;
    *(v0 + 864) = 0x80;
    v7 = *(MEMORY[0x277D043C8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 1128) = v8;
    *v8 = v0;
    v8[1] = sub_24B44923C;
    v4 = *(v0 + 1072);
    v9 = *(v0 + 1024);
    v6 = v0 + 816;
  }

  else
  {
    *(v0 + 872) = *(v0 + 992);
    *(v0 + 888) = v1;
    *(v0 + 896) = 0;
    *(v0 + 912) = 0;
    *(v0 + 904) = 0;
    *(v0 + 920) = 96;
    v2 = *(MEMORY[0x277D043C8] + 4);
    v3 = swift_task_alloc();
    *(v0 + 1120) = v3;
    *v3 = v0;
    v3[1] = sub_24B4490C0;
    v4 = *(v0 + 1072);
    v5 = *(v0 + 1024);
    v6 = v0 + 872;
  }

  return MEMORY[0x282159B08](v6, v4);
}

uint64_t sub_24B4490C0()
{
  v1 = *v0;
  v2 = *(*v0 + 1120);
  v3 = *v0;

  sub_24B44B98C(*(v1 + 872), *(v1 + 880), *(v1 + 888), *(v1 + 896), *(v1 + 904), *(v1 + 912), *(v1 + 920));
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_24B44923C()
{
  v1 = *(*v0 + 1128);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24B449330()
{
  v20 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1048);
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);
  MEMORY[0x24C2406E0](v1);
  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();
  MEMORY[0x24C2406D0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1048);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = *(v0 + 968);
    v9 = *(v0 + 976);
    v10 = *(v0 + 984);
    v11 = sub_24B4591DC();
    v13 = sub_24B3F17BC(v11, v12, &v19);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardToastPresentationFeature] Failed to fetch award toast kind with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  *(v0 + 592) = 4;
  *(v0 + 632) = 0;
  *(v0 + 600) = 0u;
  *(v0 + 616) = 0u;
  *(v0 + 640) = 0x80;
  v14 = *(MEMORY[0x277D043C8] + 4);
  v15 = swift_task_alloc();
  *(v0 + 1136) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9478, &qword_24B464E70);
  *v15 = v0;
  v15[1] = sub_24B449558;
  v17 = *(v0 + 1024);

  return MEMORY[0x282159B08](v0 + 592, v16);
}

uint64_t sub_24B449558()
{
  v1 = *(*v0 + 1136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24B449654, 0, 0);
}

uint64_t sub_24B449654()
{
  MEMORY[0x24C2406D0](*(v0 + 1048));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B4496B4(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_24B458EEC();
  v2[11] = sub_24B458EDC();
  v4 = sub_24B458EBC();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x2822009F8](sub_24B44974C, v4, v3);
}

uint64_t sub_24B44974C()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 40);
  v6 = (*(v1 + 32) + **(v1 + 32));
  v3 = *(*(v1 + 32) + 4);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_24B449838;

  return v6();
}

uint64_t sub_24B449838(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v7 = *(v3 + 104);
  v8 = *(v3 + 96);
  if (v1)
  {
    v9 = sub_24B449EBC;
  }

  else
  {
    v9 = sub_24B44997C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B44997C()
{
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = 32;
  v1 = *(MEMORY[0x277D043C8] + 4);

  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9478, &qword_24B464E70);
  *v2 = v0;
  v2[1] = sub_24B449A64;
  v4 = *(v0 + 72);

  return MEMORY[0x282159B08](v0 + 16, v3);
}

uint64_t sub_24B449A64()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  sub_24B44B98C(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_24B449C08, v4, v3);
}

uint64_t sub_24B449C08()
{
  v10 = v0;
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_24B3F1738(*(v1 + 16), 0);
    v4 = sub_24B44D13C(&v9, v3 + 4, v2, v1);
    sub_24B44E150();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v0[18] = v3;
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_24B449D14;
  v6 = v0[9];
  v7 = v0[10];

  return sub_24B4483B8(v6, v3);
}

uint64_t sub_24B449D14()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_24B449E58, v5, v4);
}

uint64_t sub_24B449E58()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B449EBC()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_24B449F20()
{
  *(v0 + 72) = sub_24B458EEC();
  *(v0 + 80) = sub_24B458EDC();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0x80;
  v1 = *(MEMORY[0x277D043C8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9478, &qword_24B464E70);
  *v2 = v0;
  v2[1] = sub_24B44A010;

  return MEMORY[0x282159B08](v0 + 16, v3);
}

uint64_t sub_24B44A010()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v5 = sub_24B458EBC();

  return MEMORY[0x2822009F8](sub_24B44E228, v5, v4);
}

uint64_t sub_24B44A14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  sub_24B458EEC();
  v3[19] = sub_24B458EDC();
  v5 = sub_24B458EBC();
  v3[20] = v5;
  v3[21] = v4;

  return MEMORY[0x2822009F8](sub_24B44A1E8, v5, v4);
}

uint64_t sub_24B44A1E8()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v2 + 112);
  v4 = *(v2 + 120);
  v6 = v1[1];
  v5 = v1[2];
  v7 = *v1;
  *(v0 + 64) = *(v1 + 48);
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  *(v0 + 16) = v7;
  v11 = (v3 + *v3);
  v8 = v3[1];
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  *v9 = v0;
  v9[1] = sub_24B44A2F4;

  return v11(v0 + 16);
}

uint64_t sub_24B44A2F4()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  *(v3 + 184) = v0;

  if (v0)
  {
    v4 = *(v3 + 160);
    v5 = *(v3 + 168);

    return MEMORY[0x2822009F8](sub_24B44A630, v4, v5);
  }

  else
  {
    *(v3 + 72) = 6;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0;
    *(v3 + 120) = 0x80;
    v6 = *(MEMORY[0x277D043C8] + 4);
    v7 = swift_task_alloc();
    *(v3 + 192) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9478, &qword_24B464E70);
    *v7 = v3;
    v7[1] = sub_24B44A4AC;
    v9 = *(v3 + 128);

    return MEMORY[0x282159B08](v3 + 72, v8);
  }
}

uint64_t sub_24B44A4AC()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_24B44A5CC, v4, v3);
}

uint64_t sub_24B44A5CC()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B44A630()
{
  v1 = v0[19];

  v2 = v0[1];
  v3 = v0[23];

  return v2();
}

uint64_t sub_24B44A694(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 984) = a5;
  *(v5 + 785) = a4;
  *(v5 + 976) = a3;
  *(v5 + 968) = a2;
  *(v5 + 960) = a1;
  sub_24B458EEC();
  *(v5 + 992) = sub_24B458EDC();
  v7 = sub_24B458EBC();
  *(v5 + 1000) = v7;
  *(v5 + 1008) = v6;

  return MEMORY[0x2822009F8](sub_24B44A740, v7, v6);
}

uint64_t sub_24B44A740()
{
  v1 = *(v0 + 984);
  v2 = *(v0 + 785);
  *(v0 + 928) = *(v0 + 968);
  *(v0 + 944) = v2;
  *(v0 + 16) = *v1;
  v3 = v1[4];
  v5 = v1[1];
  v4 = v1[2];
  *(v0 + 64) = v1[3];
  *(v0 + 80) = v3;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = v1[8];
  v8 = v1[5];
  v7 = v1[6];
  *(v0 + 128) = v1[7];
  *(v0 + 144) = v6;
  *(v0 + 96) = v8;
  *(v0 + 112) = v7;
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[8];
  *(v0 + 272) = v1[7];
  *(v0 + 288) = v11;
  *(v0 + 240) = v9;
  *(v0 + 256) = v10;
  v12 = v1[1];
  v13 = v1[2];
  v14 = v1[4];
  *(v0 + 208) = v1[3];
  *(v0 + 224) = v14;
  *(v0 + 176) = v12;
  *(v0 + 192) = v13;
  *(v0 + 160) = *v1;
  sub_24B44E0A0(v0 + 16, v0 + 304);
  v15 = swift_task_alloc();
  *(v0 + 1016) = v15;
  *v15 = v0;
  v15[1] = sub_24B44A850;

  return sub_24B3D6870(v0 + 736, (v0 + 160));
}

uint64_t sub_24B44A850()
{
  v2 = *v1;
  v3 = *(*v1 + 1016);
  v19 = *v1;
  *(*v1 + 1024) = v0;

  v4 = *(v2 + 160);
  v5 = *(v2 + 176);
  v6 = *(v2 + 208);
  if (v0)
  {
    *(v2 + 480) = *(v2 + 192);
    *(v2 + 496) = v6;
    *(v2 + 448) = v4;
    *(v2 + 464) = v5;
    v7 = *(v2 + 224);
    v8 = *(v2 + 240);
    v9 = *(v2 + 288);
    *(v2 + 560) = *(v2 + 272);
    *(v2 + 576) = v9;
    v10 = *(v2 + 256);
    *(v2 + 528) = v8;
    *(v2 + 544) = v10;
    *(v2 + 512) = v7;
    sub_24B44E0FC(v2 + 448);
    v11 = *(v2 + 1008);
    v12 = *(v2 + 1000);
    v13 = sub_24B44ACAC;
  }

  else
  {
    *(v2 + 624) = *(v2 + 192);
    *(v2 + 640) = v6;
    *(v2 + 592) = v4;
    *(v2 + 608) = v5;
    v14 = *(v2 + 224);
    v15 = *(v2 + 240);
    v16 = *(v2 + 288);
    *(v2 + 704) = *(v2 + 272);
    *(v2 + 720) = v16;
    v17 = *(v2 + 256);
    *(v2 + 672) = v15;
    *(v2 + 688) = v17;
    *(v2 + 656) = v14;
    sub_24B44E0FC(v2 + 592);
    v11 = *(v2 + 1008);
    v12 = *(v2 + 1000);
    v13 = sub_24B44A9CC;
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

uint64_t sub_24B44A9CC()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 768);
  v3 = *(v0 + 776);
  v4 = *(v0 + 784) | 0x40;
  *(v0 + 848) = *(v0 + 736);
  *(v0 + 864) = v1;
  *(v0 + 880) = v2;
  *(v0 + 888) = v3;
  *(v0 + 896) = v4;
  v5 = *(MEMORY[0x277D043C8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 1032) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9478, &qword_24B464E70);
  *v6 = v0;
  v6[1] = sub_24B44AAA4;
  v8 = *(v0 + 960);

  return MEMORY[0x282159B08](v0 + 848, v7);
}

uint64_t sub_24B44AAA4()
{
  v1 = *v0;
  v2 = *(*v0 + 1032);
  v6 = *v0;

  sub_24B44B98C(*(v1 + 848), *(v1 + 856), *(v1 + 864), *(v1 + 872), *(v1 + 880), *(v1 + 888), *(v1 + 896));
  v3 = *(v1 + 1008);
  v4 = *(v1 + 1000);

  return MEMORY[0x2822009F8](sub_24B44AC48, v4, v3);
}

uint64_t sub_24B44AC48()
{
  v1 = *(v0 + 992);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B44ACAC()
{
  v20 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1024);
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);
  MEMORY[0x24C2406E0](v1);
  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();
  MEMORY[0x24C2406D0](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1024);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = *(v0 + 904);
    v9 = *(v0 + 912);
    v10 = *(v0 + 920);
    v11 = sub_24B4591DC();
    v13 = sub_24B3F17BC(v11, v12, &v19);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardToastPresentationFeature] Failed to fetch award toast detail with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  *(v0 + 792) = 3;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0;
  *(v0 + 840) = 0x80;
  v14 = *(MEMORY[0x277D043C8] + 4);
  v15 = swift_task_alloc();
  *(v0 + 1040) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9478, &qword_24B464E70);
  *v15 = v0;
  v15[1] = sub_24B44AED0;
  v17 = *(v0 + 960);

  return MEMORY[0x282159B08](v0 + 792, v16);
}

uint64_t sub_24B44AED0()
{
  v1 = *v0;
  v2 = *(*v0 + 1040);
  v6 = *v0;

  v3 = *(v1 + 1008);
  v4 = *(v1 + 1000);

  return MEMORY[0x2822009F8](sub_24B44AFF0, v4, v3);
}

uint64_t sub_24B44AFF0()
{
  v1 = v0[128];
  v2 = v0[124];

  MEMORY[0x24C2406D0](v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_24B44B064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  State = type metadata accessor for AwardProgressLoadState();
  v7 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for AwardToastPresentationFeature() + 20);
  v11 = sub_24B45836C();
  (*(*(v11 - 8) + 16))(v9, a4 + v10, v11);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a4) = _s13FitnessAwards22AwardProgressLoadStateO2eeoiySbAC_ACtFZ_0(a3, v9);
  sub_24B44E040(v9, type metadata accessor for AwardProgressLoadState);
  return a4 & 1;
}

uint64_t sub_24B44B17C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_24B44B19C, 0, 0);
}

uint64_t sub_24B44B19C()
{
  v1 = v0[3];
  v2 = *(v1 + 56);
  v7 = (*(v1 + 48) + **(v1 + 48));
  v3 = *(*(v1 + 48) + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_24B44B290;
  v5 = v0[2];

  return v7(v5);
}

uint64_t sub_24B44B290(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24B44B3C4, 0, 0);
  }
}

uint64_t sub_24B44B3C4()
{
  v15 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);

  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_24B41DF30();
    v8 = sub_24B458F2C();
    v10 = sub_24B3F17BC(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardToastPresentationFeature] Fetched personalizedAwardProgressUpdates %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  v11 = *(v0 + 8);
  v12 = *(v0 + 40);

  return v11(v12);
}

uint64_t sub_24B44B570(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_24B44B590, 0, 0);
}

uint64_t sub_24B44B590()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 72);
  v6 = (*(v1 + 64) + **(v1 + 64));
  v3 = *(*(v1 + 64) + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_24B44B67C;

  return v6();
}

uint64_t sub_24B44B67C(uint64_t a1, char a2)
{
  v4 = *v3;
  v5 = *(*v3 + 48);
  v8 = *v3;
  *(v4 + 56) = a1;
  *(v4 + 25) = a2;

  if (v2)
  {
    MEMORY[0x24C2406D0](v2);
    v6 = sub_24B44B964;
  }

  else
  {
    v6 = sub_24B44B79C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24B44B79C()
{
  v17 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = sub_24B45847C();
  __swift_project_value_buffer(v1, qword_2810E3618);
  v2 = sub_24B45845C();
  v3 = sub_24B458F4C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 25);
    v5 = *(v0 + 56);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4 & 1;
    v8 = sub_24B458E4C();
    v10 = sub_24B3F17BC(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24B3CE000, v2, v3, "[AwardToastPresentationFeature] Found a weeklyStreakNotification %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x24C2408A0](v7, -1, -1);
    MEMORY[0x24C2408A0](v6, -1, -1);
  }

  if (*(v0 + 25))
  {
    v11 = *(v0 + 32);
    *v11 = 0;
    v11[1] = 0;
    v12 = 3;
  }

  else
  {
    v12 = 0;
    v13 = *(v0 + 32);
    *v13 = *(v0 + 56);
    v13[1] = 0;
  }

  *(*(v0 + 32) + 16) = v12;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_24B44B964()
{
  v1 = *(v0 + 32);
  *v1 = 0;
  v1[1] = 0;
  *(*(v0 + 32) + 16) = -1;
  return (*(v0 + 8))();
}

uint64_t sub_24B44B98C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 5;
  if (v7 <= 1)
  {
    if (v7 >= 2)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v7 == 2)
  {

LABEL_11:
  }

  if (v7 == 3)
  {

    return sub_24B3D810C(result, a2, a3);
  }

  return result;
}

unint64_t sub_24B44BA44()
{
  result = qword_2810E2A98;
  if (!qword_2810E2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2A98);
  }

  return result;
}

uint64_t sub_24B44BA98(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardToastPresentationFeature() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B3F2574;

  return sub_24B44A694(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B44BB8C(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardToastPresentationFeature() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B3F2574;

  return sub_24B44A14C(a1, v1 + v5, v1 + v6);
}

uint64_t sub_24B44BC90(uint64_t a1, int a2)
{
  v3 = v2;
  State = type metadata accessor for AwardImageLoadState();
  v42 = *(State - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](State - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9480, &unk_24B464E90);
  v43 = a2;
  result = sub_24B45902C();
  v13 = result;
  if (*(v10 + 16))
  {
    v41 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(v10 + 56);
      v44 = *(*(v10 + 48) + 16 * v25);
      v27 = *(v42 + 72);
      v28 = v26 + v27 * v25;
      if (v43)
      {
        sub_24B44E1C0(v28, v9, type metadata accessor for AwardImageLoadState);
      }

      else
      {
        sub_24B44E158(v28, v9, type metadata accessor for AwardImageLoadState);
      }

      v29 = *(v13 + 40);
      sub_24B45922C();
      v30 = *&v44;
      if (*&v44 == 0.0)
      {
        v30 = 0.0;
      }

      MEMORY[0x24C2403E0](*&v30);
      v31 = *(&v44 + 1);
      if (*(&v44 + 1) == 0.0)
      {
        v31 = 0.0;
      }

      MEMORY[0x24C2403E0](*&v31);
      result = sub_24B45926C();
      v32 = -1 << *(v13 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v21 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 16 * v21) = v44;
      result = sub_24B44E1C0(v9, *(v13 + 56) + v27 * v21, type metadata accessor for AwardImageLoadState);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_40;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero((v10 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_40:
  *v3 = v13;
  return result;
}

uint64_t sub_24B44C020(uint64_t a1, int a2)
{
  v3 = v2;
  State = type metadata accessor for AwardProgressLoadState();
  v43 = *(State - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](State - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE80C8, &qword_24B45C408);
  v44 = a2;
  result = sub_24B45902C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_24B44E1C0(v31, v45, type metadata accessor for AwardProgressLoadState);
      }

      else
      {
        sub_24B44E158(v31, v45, type metadata accessor for AwardProgressLoadState);
      }

      v32 = *(v12 + 40);
      sub_24B45922C();
      sub_24B458E6C();
      result = sub_24B45926C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_24B44E1C0(v45, *(v12 + 56) + v30 * v20, type metadata accessor for AwardProgressLoadState);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void *sub_24B44C398()
{
  v1 = v0;
  State = type metadata accessor for AwardImageLoadState();
  v3 = *(State - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](State - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9480, &unk_24B464E90);
  v7 = *v0;
  v8 = sub_24B45901C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v27 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = 16 * v22;
        v24 = *(v7 + 56);
        v25 = *(v3 + 72) * v22;
        v28 = *(*(v7 + 48) + 16 * v22);
        sub_24B44E158(v24 + v25, v6, type metadata accessor for AwardImageLoadState);
        *(*(v9 + 48) + v23) = v28;
        result = sub_24B44E1C0(v6, *(v9 + 56) + v25, type metadata accessor for AwardImageLoadState);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
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

void *sub_24B44C5D4()
{
  v1 = v0;
  State = type metadata accessor for AwardProgressLoadState();
  v32 = *(State - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](State - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE80C8, &qword_24B45C408);
  v5 = *v0;
  v6 = sub_24B45901C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_24B44E158(*(v5 + 56) + v27, v31, type metadata accessor for AwardProgressLoadState);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_24B44E1C0(v26, *(v28 + 56) + v27, type metadata accessor for AwardProgressLoadState);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_24B44C82C(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardToastPresentationFeature() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B3F2574;

  return sub_24B4496B4(a1, v1 + v5);
}

uint64_t sub_24B44C904(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardToastPresentationFeature() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B3F2574;

  return sub_24B448154(a1, v1 + v5, v6);
}

void *sub_24B44CA0C(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_24B44D738(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_24B44CA9C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  State = type metadata accessor for AwardImageLoadState();
  v46 = *(State - 8);
  v9 = *(v46 + 64);
  v10 = MEMORY[0x28223BE20](State - 8);
  MEMORY[0x28223BE20](v10);
  v45 = &v42 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v44 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9480, &unk_24B464E90);
  result = sub_24B45903C();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v44;
  v43 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v25 = *v24;
    v26 = v24[1];
    v27 = v45;
    v28 = *(v46 + 72);
    sub_24B44E158(v23 + v28 * v22, v45, type metadata accessor for AwardImageLoadState);
    sub_24B44E1C0(v27, v18, type metadata accessor for AwardImageLoadState);
    v29 = *(v14 + 40);
    sub_24B45922C();
    if (v25 == 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v25;
    }

    MEMORY[0x24C2403E0](*&v30);
    if (v26 == 0.0)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v26;
    }

    MEMORY[0x24C2403E0](*&v31);
    result = sub_24B45926C();
    v32 = -1 << *(v14 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
    {
      v36 = 0;
      v37 = (63 - v32) >> 6;
      v18 = v44;
      while (++v34 != v37 || (v36 & 1) == 0)
      {
        v38 = v34 == v37;
        if (v34 == v37)
        {
          v34 = 0;
        }

        v36 |= v38;
        v39 = *(v17 + 8 * v34);
        if (v39 != -1)
        {
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
          goto LABEL_32;
        }
      }

      goto LABEL_37;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    v18 = v44;
LABEL_32:
    *(v17 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v40 = (*(v14 + 48) + 16 * v35);
    *v40 = v25;
    v40[1] = v26;
    result = sub_24B44E1C0(v18, *(v14 + 56) + v35 * v28, type metadata accessor for AwardImageLoadState);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_38;
    }

    a4 = v43;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v15 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24B44CDF0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  State = type metadata accessor for AwardProgressLoadState();
  v43 = *(State - 8);
  v9 = *(v43 + 64);
  v10 = MEMORY[0x28223BE20](State - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v39 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE80C8, &qword_24B45C408);
  result = sub_24B45903C();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v41;
  v40 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v42;
    v45 = *(v43 + 72);
    sub_24B44E158(v23 + v45 * v22, v42, type metadata accessor for AwardProgressLoadState);
    sub_24B44E1C0(v27, v18, type metadata accessor for AwardProgressLoadState);
    v28 = *(v14 + 40);
    sub_24B45922C();

    sub_24B458E6C();
    result = sub_24B45926C();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v18 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v18 = v41;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v14 + 48) + 16 * v32);
    *v37 = v26;
    v37[1] = v25;
    result = sub_24B44E1C0(v18, *(v14 + 56) + v32 * v45, type metadata accessor for AwardProgressLoadState);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_24B44D13C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t objectdestroy_7Tm()
{
  v1 = (type metadata accessor for AwardToastPresentationFeature() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 3);

  v6 = *(v3 + 5);

  v7 = *(v3 + 7);

  v8 = *(v3 + 9);

  v9 = *(v3 + 11);

  v10 = *(v3 + 13);

  v11 = *(v3 + 15);

  v12 = *(v3 + 17);

  v13 = v1[7];
  v14 = sub_24B45836C();
  (*(*(v14 - 8) + 8))(&v3[v13], v14);

  return swift_deallocObject();
}

uint64_t sub_24B44D3BC(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardToastPresentationFeature() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B3F1E60;

  return sub_24B447528(a1, v1 + v5);
}

BOOL sub_24B44D494(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 0xFC)
  {
    if (v4 == 251)
    {
      if (v7 == 251)
      {
        sub_24B44E024(*a1, v2, 251);
        v8 = v6;
        v9 = v5;
        v10 = -5;
        goto LABEL_17;
      }
    }

    else
    {
      if (v4 != 252)
      {
LABEL_18:
        if (v7 <= 0xFA)
        {
          v15[0] = *a1;
          v15[1] = v2;
          v16 = v4;
          v13[0] = v6;
          v13[1] = v5;
          v14 = v7;
          sub_24B44E010(v6, v5, v7);
          sub_24B44E010(v3, v2, v4);
          sub_24B44E010(v6, v5, v7);
          sub_24B44E010(v3, v2, v4);
          v11 = _s13FitnessAwards14AwardToastKindO2eeoiySbAC_ACtFZ_0(v15, v13);
          sub_24B44E024(v3, v2, v4);
          sub_24B44E024(v6, v5, v7);
          sub_24B44E024(v6, v5, v7);
          sub_24B44E024(v3, v2, v4);
          return v11;
        }

        goto LABEL_19;
      }

      if (v7 == 252)
      {
        sub_24B44E024(*a1, v2, 252);
        v8 = v6;
        v9 = v5;
        v10 = -4;
        goto LABEL_17;
      }
    }

LABEL_19:
    sub_24B44E010(*a2, *(a2 + 8), v7);
    sub_24B44E010(v3, v2, v4);
    sub_24B44E024(v3, v2, v4);
    sub_24B44E024(v6, v5, v7);
    return 0;
  }

  if (v4 == 253)
  {
    if (v7 == 253)
    {
      sub_24B44E024(*a1, v2, 253);
      v8 = v6;
      v9 = v5;
      v10 = -3;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v4 == 254)
  {
    if (v7 == 254)
    {
      sub_24B44E024(*a1, v2, 254);
      v8 = v6;
      v9 = v5;
      v10 = -2;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v4 != 255)
  {
    goto LABEL_18;
  }

  if (v7 != 255)
  {
    goto LABEL_19;
  }

  sub_24B44E024(*a1, v2, 255);
  v8 = v6;
  v9 = v5;
  v10 = -1;
LABEL_17:
  sub_24B44E024(v8, v9, v10);
  return 1;
}

uint64_t sub_24B44D6D4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(a3 + 48) + 40 * result;
    v5 = *(v4 + 32);
    v6 = *(v4 + 16);
    *a4 = *v4;
    *(a4 + 16) = v6;
    *(a4 + 32) = v5;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24B44D738(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v26 = a2;
  v30 = a4;
  v27 = a1;
  State = type metadata accessor for AwardProgressLoadState();
  v29 = *(State - 8);
  v6 = *(v29 + 64);
  result = MEMORY[0x28223BE20](State - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = (v31[6] + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    sub_24B44E158(v31[7] + *(v29 + 72) * v21, v9, type metadata accessor for AwardProgressLoadState);

    LOBYTE(v23) = v30(v23, v24, v9);
    sub_24B44E040(v9, type metadata accessor for AwardProgressLoadState);

    if (v23)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_24B44CDF0(v27, v26, v28, v31);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_24B44CDF0(v27, v26, v28, v31);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B44D954(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_24B44D738(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_24B44CA0C(v11, v6, v4, a2);
  result = MEMORY[0x24C2408A0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s13FitnessAwards29AwardToastPresentationFeatureV7dispose10localState06sharedI0y8DataFlow05EmptyI0V_AA0cdeI0VztF_0(uint64_t a1)
{
  State = type metadata accessor for AwardToastLoadState();
  v4 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24B45836C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AwardToastPresentationState();
  v13 = *(v12 + 24);
  sub_24B44E158(a1 + v13, v6, type metadata accessor for AwardToastLoadState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24B44E040(v6, type metadata accessor for AwardToastLoadState);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(type metadata accessor for AwardToastPresentationFeature() + 20);
    v15 = sub_24B45834C();
    (*(v8 + 8))(v11, v7);
    if (v15)
    {
      sub_24B44E040(a1 + v13, type metadata accessor for AwardToastLoadState);
      swift_storeEnumTagMultiPayload();
    }
  }

  v16 = MEMORY[0x28223BE20](*(a1 + *(v12 + 28)));
  *&v19[-16] = v1;
  v17 = sub_24B44D954(v16, sub_24B44E038);
  sub_24B443AB0(v17, a1);
}

unint64_t sub_24B44DD2C()
{
  result = qword_2810E2AA0;
  if (!qword_2810E2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AA0);
  }

  return result;
}

unint64_t sub_24B44DD84()
{
  result = qword_2810E2AA8;
  if (!qword_2810E2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2AA8);
  }

  return result;
}

unint64_t sub_24B44DDDC()
{
  result = qword_2810E2C60;
  if (!qword_2810E2C60)
  {
    type metadata accessor for AwardToastPresentationState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2C60);
  }

  return result;
}

uint64_t sub_24B44DE5C()
{
  result = sub_24B45836C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessAwards29AwardToastPresentationFeatureV14TaskIdentifier33_DAF1611D220B12D45B3AA41174D036A4LLO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B44DEEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 > 3)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 6)
  {
    return v4 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B44DF34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -5 - a2;
    }
  }

  return result;
}

uint64_t sub_24B44DF80(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

unint64_t sub_24B44DFBC()
{
  result = qword_2810E2A90;
  if (!qword_2810E2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2A90);
  }

  return result;
}

uint64_t sub_24B44E010(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFAu)
  {
    return sub_24B4070AC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_24B44E024(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFAu)
  {
    return sub_24B3D810C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_24B44E040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B44E158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B44E1C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B44E22C()
{
  v1 = *v0;
  v2 = 0x6570704177656976;
  if (v1 == 4)
  {
    v2 = 0xD000000000000018;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000010;
  }

  v3 = 0xD000000000000016;
  v4 = 0xD000000000000012;
  if (v1 != 1)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B44E300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B44EFC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B44E328(uint64_t a1)
{
  v2 = sub_24B44ED14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E364(uint64_t a1)
{
  v2 = sub_24B44ED14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B44E3A0(uint64_t a1)
{
  v2 = sub_24B44EF0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E3DC(uint64_t a1)
{
  v2 = sub_24B44EF0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B44E418(uint64_t a1)
{
  v2 = sub_24B44EE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E454(uint64_t a1)
{
  v2 = sub_24B44EE64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B44E490(uint64_t a1)
{
  v2 = sub_24B44EEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E4CC(uint64_t a1)
{
  v2 = sub_24B44EEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B44E508(uint64_t a1)
{
  v2 = sub_24B44EE10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E544(uint64_t a1)
{
  v2 = sub_24B44EE10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B44E580(uint64_t a1)
{
  v2 = sub_24B44EDBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E5BC(uint64_t a1)
{
  v2 = sub_24B44EDBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B44E5F8(uint64_t a1)
{
  v2 = sub_24B44ED68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B44E634(uint64_t a1)
{
  v2 = sub_24B44ED68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardDetailAction.encode(to:)(void *a1, int a2)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9488, &qword_24B464EA0);
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9490, &qword_24B464EA8);
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9498, &qword_24B464EB0);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE94A0, &qword_24B464EB8);
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE94A8, &qword_24B464EC0);
  v44 = *(v46 - 8);
  v16 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v42 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE94B0, &qword_24B464EC8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE94B8, &qword_24B464ED0);
  v24 = *(v23 - 8);
  v56 = v23;
  v57 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v42 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B44ED14();
  v29 = v58;
  sub_24B45928C();
  if (v29 > 3u)
  {
    switch(v29)
    {
      case 4u:
        v63 = 3;
        sub_24B44EE10();
        v30 = v45;
        v31 = v56;
        sub_24B45910C();
        v33 = v47;
        v32 = v48;
        goto LABEL_11;
      case 5u:
        v64 = 4;
        sub_24B44EDBC();
        v30 = v49;
        v31 = v56;
        sub_24B45910C();
        v33 = v50;
        v32 = v51;
        goto LABEL_11;
      case 6u:
        v65 = 5;
        sub_24B44ED68();
        v30 = v52;
        v31 = v56;
        sub_24B45910C();
        v33 = v53;
        v32 = v54;
LABEL_11:
        (*(v33 + 8))(v30, v32);
        return (*(v57 + 8))(v27, v31);
    }

    goto LABEL_14;
  }

  v34 = v19;
  v35 = v55;
  if (v29 != 2)
  {
    if (v29 == 3)
    {
      v62 = 2;
      sub_24B44EE64();
      v36 = v56;
      sub_24B45910C();
      (*(v35 + 8))(v15, v12);
      return (*(v57 + 8))(v27, v36);
    }

LABEL_14:
    v61 = 1;
    sub_24B44EEB8();
    v39 = v43;
    v40 = v56;
    sub_24B45910C();
    v60 = v29 & 1;
    sub_24B4007C4();
    v41 = v46;
    sub_24B45918C();
    (*(v44 + 8))(v39, v41);
    return (*(v57 + 8))(v27, v40);
  }

  v59 = 0;
  sub_24B44EF0C();
  v38 = v56;
  sub_24B45910C();
  (*(v34 + 8))(v22, v18);
  return (*(v57 + 8))(v27, v38);
}

unint64_t sub_24B44ED14()
{
  result = qword_27EFE94C0;
  if (!qword_27EFE94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94C0);
  }

  return result;
}

unint64_t sub_24B44ED68()
{
  result = qword_27EFE94C8;
  if (!qword_27EFE94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94C8);
  }

  return result;
}

unint64_t sub_24B44EDBC()
{
  result = qword_27EFE94D0;
  if (!qword_27EFE94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94D0);
  }

  return result;
}

unint64_t sub_24B44EE10()
{
  result = qword_27EFE94D8;
  if (!qword_27EFE94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94D8);
  }

  return result;
}

unint64_t sub_24B44EE64()
{
  result = qword_27EFE94E0;
  if (!qword_27EFE94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94E0);
  }

  return result;
}

unint64_t sub_24B44EEB8()
{
  result = qword_27EFE94E8;
  if (!qword_27EFE94E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94E8);
  }

  return result;
}

unint64_t sub_24B44EF0C()
{
  result = qword_27EFE94F0;
  if (!qword_27EFE94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94F0);
  }

  return result;
}

uint64_t sub_24B44EF78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B44F1C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_24B44EFC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x800000024B4671D0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B4671F0 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B467210 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B467230 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024B467250 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B44F1C8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9578, &qword_24B465568);
  v3 = *(v2 - 8);
  v59 = v2;
  v60 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v64 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9580, &qword_24B465570);
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9588, &qword_24B465578);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v62 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9590, &qword_24B465580);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v61 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9598, &qword_24B465588);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE95A0, &qword_24B465590);
  v50 = *(v19 - 8);
  v20 = *(v50 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE95A8, &qword_24B465598);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_24B44ED14();
  v30 = v65;
  sub_24B45927C();
  if (!v30)
  {
    v31 = v22;
    v48 = v19;
    v49 = v18;
    v32 = v62;
    v33 = v63;
    v19 = v64;
    v65 = 0;
    v34 = sub_24B4590FC();
    v35 = (2 * *(v34 + 16)) | 1;
    v67 = v34;
    v68 = v34 + 32;
    v69 = 0;
    v70 = v35;
    v36 = sub_24B3E3818();
    if (v36 == 6 || v69 != v70 >> 1)
    {
      v19 = sub_24B458FFC();
      swift_allocError();
      v41 = v40;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
      *v41 = &type metadata for AwardDetailAction;
      v43 = v27;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v19 - 8) + 104))(v41, *MEMORY[0x277D84160], v19);
      swift_willThrow();
    }

    else
    {
      if (v36 <= 2u)
      {
        if (v36)
        {
          v37 = v65;
          if (v36 == 1)
          {
            v71 = 1;
            sub_24B44EEB8();
            v38 = v49;
            sub_24B45905C();
            if (!v37)
            {
              sub_24B4008C0();
              v39 = v52;
              sub_24B4590EC();
              (*(v51 + 8))(v38, v39);
              (*(v24 + 8))(v27, v23);
              swift_unknownObjectRelease();
              v19 = v71;
              goto LABEL_12;
            }
          }

          else
          {
            v71 = 2;
            sub_24B44EE64();
            v19 = v61;
            sub_24B45905C();
            if (!v37)
            {
              (*(v53 + 8))(v19, v54);
              (*(v24 + 8))(v27, v23);
              swift_unknownObjectRelease();
              v19 = 3;
              goto LABEL_12;
            }
          }
        }

        else
        {
          v71 = 0;
          sub_24B44EF0C();
          v46 = v65;
          sub_24B45905C();
          if (!v46)
          {
            (*(v50 + 8))(v31, v48);
            (*(v24 + 8))(v27, v23);
            swift_unknownObjectRelease();
            v19 = 2;
            goto LABEL_12;
          }
        }

        (*(v24 + 8))(v27, v23);
LABEL_11:
        swift_unknownObjectRelease();
        goto LABEL_12;
      }

      v43 = v27;
      if (v36 == 3)
      {
        v71 = 3;
        sub_24B44EE10();
        v19 = v32;
        v47 = v65;
        sub_24B45905C();
        if (!v47)
        {
          (*(v55 + 8))(v32, v56);
          (*(v24 + 8))(v27, v23);
          swift_unknownObjectRelease();
          v19 = 4;
          goto LABEL_12;
        }
      }

      else
      {
        v45 = v65;
        if (v36 == 4)
        {
          v71 = 4;
          sub_24B44EDBC();
          v19 = v33;
          sub_24B45905C();
          if (!v45)
          {
            (*(v57 + 8))(v33, v58);
            (*(v24 + 8))(v27, v23);
            swift_unknownObjectRelease();
            v19 = 5;
            goto LABEL_12;
          }
        }

        else
        {
          v71 = 5;
          sub_24B44ED68();
          sub_24B45905C();
          if (!v45)
          {
            (*(v60 + 8))(v19, v59);
            (*(v24 + 8))(v27, v23);
            swift_unknownObjectRelease();
            v19 = 6;
            goto LABEL_12;
          }
        }
      }
    }

    (*(v24 + 8))(v43, v23);
    goto LABEL_11;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v66);
  return v19;
}

uint64_t getEnumTagSinglePayload for AwardDetailAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 6)
  {
    return v8 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AwardDetailAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24B44FBFC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24B44FC10(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_24B44FCA4()
{
  result = qword_27EFE94F8;
  if (!qword_27EFE94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE94F8);
  }

  return result;
}

unint64_t sub_24B44FCFC()
{
  result = qword_27EFE9500;
  if (!qword_27EFE9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9500);
  }

  return result;
}

unint64_t sub_24B44FD54()
{
  result = qword_27EFE9508;
  if (!qword_27EFE9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9508);
  }

  return result;
}

unint64_t sub_24B44FDAC()
{
  result = qword_27EFE9510;
  if (!qword_27EFE9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9510);
  }

  return result;
}

unint64_t sub_24B44FE04()
{
  result = qword_27EFE9518;
  if (!qword_27EFE9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9518);
  }

  return result;
}

unint64_t sub_24B44FE5C()
{
  result = qword_27EFE9520;
  if (!qword_27EFE9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9520);
  }

  return result;
}

unint64_t sub_24B44FEB4()
{
  result = qword_27EFE9528;
  if (!qword_27EFE9528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9528);
  }

  return result;
}

unint64_t sub_24B44FF0C()
{
  result = qword_27EFE9530;
  if (!qword_27EFE9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9530);
  }

  return result;
}

unint64_t sub_24B44FF64()
{
  result = qword_27EFE9538;
  if (!qword_27EFE9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9538);
  }

  return result;
}

unint64_t sub_24B44FFBC()
{
  result = qword_27EFE9540;
  if (!qword_27EFE9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9540);
  }

  return result;
}

unint64_t sub_24B450014()
{
  result = qword_27EFE9548;
  if (!qword_27EFE9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9548);
  }

  return result;
}

unint64_t sub_24B45006C()
{
  result = qword_27EFE9550;
  if (!qword_27EFE9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9550);
  }

  return result;
}

unint64_t sub_24B4500C4()
{
  result = qword_27EFE9558;
  if (!qword_27EFE9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9558);
  }

  return result;
}

unint64_t sub_24B45011C()
{
  result = qword_27EFE9560;
  if (!qword_27EFE9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9560);
  }

  return result;
}

unint64_t sub_24B450174()
{
  result = qword_27EFE9568;
  if (!qword_27EFE9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9568);
  }

  return result;
}

unint64_t sub_24B4501CC()
{
  result = qword_27EFE9570;
  if (!qword_27EFE9570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9570);
  }

  return result;
}

__n128 AwardToastState.init(toastDetail:layout:isTabSelected:scrollPositionIdentifier:shouldDeepLink:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = a2->n128_u64[0];
  v11 = a2->n128_u8[8];
  *a7 = *a1;
  *(a7 + 16) = v7;
  *(a7 + 24) = *(a1 + 24);
  *(a7 + 40) = v8;
  *(a7 + 48) = v9;
  *(a7 + 56) = v10;
  *(a7 + 64) = v11;
  result = a2[1];
  *(a7 + 72) = result;
  *(a7 + 88) = a3;
  *(a7 + 96) = a4;
  *(a7 + 104) = a5;
  *(a7 + 112) = a6;
  return result;
}

uint64_t AwardToastState.toastDetail.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

__n128 AwardToastState.layout.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 64);
  a1->n128_u64[0] = *(v1 + 56);
  a1->n128_u8[8] = v2;
  result = *(v1 + 72);
  a1[1] = result;
  return result;
}

uint64_t AwardToastState.scrollPositionIdentifier.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t AwardToastState.scrollPositionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t sub_24B4503E0()
{
  v1 = *v0;
  v2 = 0x7465447473616F74;
  v3 = 0x6C65536261547369;
  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0x6544646C756F6873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74756F79616CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B45049C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4512BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4504C4(uint64_t a1)
{
  v2 = sub_24B450844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B450500(uint64_t a1)
{
  v2 = sub_24B450844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastState.encode(to:)(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE95B0, &qword_24B4655A0);
  v29 = *(v27 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v5 = v19 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v25 = v1[3];
  v26 = v6;
  v9 = v1[4];
  v10 = v1[5];
  v37 = *(v1 + 48);
  v24 = v1[7];
  LODWORD(v6) = *(v1 + 64);
  v11 = v1[9];
  v12 = v1[10];
  v22 = *(v1 + 88);
  v23 = v6;
  v13 = v1[12];
  v20 = v1[13];
  v21 = v13;
  v19[1] = *(v1 + 112);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B450844();

  sub_24B45928C();
  v15 = v27;
  v30 = v7;
  v31 = v26;
  v32 = v8;
  v33 = v25;
  v34 = v9;
  v35 = v10;
  v36 = v37;
  v38 = 0;
  sub_24B3E0FC0();
  v16 = v28;
  sub_24B45918C();
  if (v16)
  {

    return (*(v29 + 8))(v5, v15);
  }

  else
  {
    v18 = v29;

    v30 = v24;
    LOBYTE(v31) = v23;
    v32 = v11;
    v33 = v12;
    v38 = 1;
    sub_24B450898();
    sub_24B45918C();
    LOBYTE(v30) = 2;
    sub_24B45915C();
    LOBYTE(v30) = 3;
    sub_24B45911C();
    LOBYTE(v30) = 4;
    sub_24B45915C();
    return (*(v18 + 8))(v5, v15);
  }
}

unint64_t sub_24B450844()
{
  result = qword_27EFE95B8;
  if (!qword_27EFE95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE95B8);
  }

  return result;
}

unint64_t sub_24B450898()
{
  result = qword_27EFE95C0;
  if (!qword_27EFE95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE95C0);
  }

  return result;
}

uint64_t AwardToastState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE95C8, &qword_24B4655A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B450844();
  sub_24B45927C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v44) = 0;
  sub_24B3E24DC();
  sub_24B4590EC();
  v42 = v52;
  v39 = v53;
  v11 = v55;
  v41 = v54;
  v43 = v56;
  v40 = v57;
  v12 = v58;
  LOBYTE(v44) = 1;
  sub_24B450DBC();
  sub_24B4590EC();
  v37 = v12;
  v38 = v11;
  v13 = v52;
  v14 = v54;
  v15 = v55;
  v67 = v53;
  LOBYTE(v52) = 2;
  v36 = sub_24B4590BC();
  LOBYTE(v52) = 3;
  v16 = sub_24B45907C();
  v18 = v17;
  v35 = v16;
  v68 = 4;
  v19 = sub_24B4590BC();
  v36 &= 1u;
  (*(v6 + 8))(v9, v5);
  v20 = v42;
  *&v44 = v42;
  *(&v44 + 1) = v39;
  v21 = v41;
  *&v45 = v41;
  *(&v45 + 1) = v38;
  *&v46 = v43;
  v22 = v13;
  v34 = v13;
  v23 = v40;
  *(&v46 + 1) = v40;
  LOBYTE(v47) = v37;
  *(&v47 + 1) = v22;
  v33 = v67;
  LOBYTE(v48) = v67;
  *(&v48 + 1) = v14;
  *&v49 = v15;
  BYTE8(v49) = v36;
  v24 = v35;
  *&v50 = v35;
  *(&v50 + 1) = v18;
  v19 &= 1u;
  v51 = v19;
  v25 = v44;
  v26 = v45;
  v27 = v47;
  *(a2 + 32) = v46;
  *(a2 + 48) = v27;
  *a2 = v25;
  *(a2 + 16) = v26;
  v28 = v48;
  v29 = v49;
  v30 = v50;
  *(a2 + 112) = v19;
  *(a2 + 80) = v29;
  *(a2 + 96) = v30;
  *(a2 + 64) = v28;
  sub_24B450E10(&v44, &v52);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v52 = v20;
  v53 = v39;
  v54 = v21;
  v55 = v38;
  v56 = v43;
  v57 = v23;
  v58 = v37;
  v59 = v34;
  v60 = v33;
  v61 = v14;
  v62 = v15;
  v63 = v36;
  v64 = v24;
  v65 = v18;
  v66 = v19;
  return sub_24B450E48(&v52);
}

unint64_t sub_24B450DBC()
{
  result = qword_27EFE95D0;
  if (!qword_27EFE95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE95D0);
  }

  return result;
}

uint64_t _s13FitnessAwards15AwardToastStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(a1 + 48);
  v9 = *(a1 + 7);
  v10 = *(a1 + 64);
  v12 = *(a1 + 9);
  v11 = *(a1 + 10);
  v33 = *(a1 + 88);
  v28 = a1[12];
  v32 = a1[13];
  v30 = *(a1 + 112);
  v14 = *a2;
  v13 = a2[1];
  v16 = a2[2];
  v15 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v19 = *(a2 + 48);
  v20 = *(a2 + 7);
  v21 = *(a2 + 64);
  v23 = *(a2 + 9);
  v22 = *(a2 + 10);
  v24 = *(a2 + 88);
  v27 = a2[12];
  v31 = a2[13];
  v29 = *(a2 + 112);
  v36[0] = v3;
  v36[1] = v2;
  v36[2] = v5;
  v36[3] = v4;
  v36[4] = v7;
  v36[5] = v6;
  v37 = v8;
  v34[0] = v14;
  v34[1] = v13;
  v34[2] = v16;
  v34[3] = v15;
  v34[4] = v17;
  v34[5] = v18;
  v35 = v19;

  LOBYTE(v18) = _s13FitnessAwards16AwardToastDetailV2eeoiySbAC_ACtFZ_0(v36, v34);

  result = 0;
  if ((v18 & 1) == 0)
  {
    return result;
  }

  if (v10)
  {
    if (!v21)
    {
      return result;
    }
  }

  else
  {
    if (v9 == v20)
    {
      v26 = v21;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      return result;
    }
  }

  if (v12 == v23 && v11 == v22 && ((v33 ^ v24) & 1) == 0)
  {
    if (v32)
    {
      if (v31 && (v28 == v27 && v32 == v31 || (sub_24B4591AC() & 1) != 0))
      {
        return v30 ^ v29 ^ 1u;
      }
    }

    else if (!v31)
    {
      return v30 ^ v29 ^ 1u;
    }

    return 0;
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24B4510EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_24B451134(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B4511B8()
{
  result = qword_27EFE95D8;
  if (!qword_27EFE95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE95D8);
  }

  return result;
}

unint64_t sub_24B451210()
{
  result = qword_27EFE95E0;
  if (!qword_27EFE95E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE95E0);
  }

  return result;
}

unint64_t sub_24B451268()
{
  result = qword_27EFE95E8;
  if (!qword_27EFE95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE95E8);
  }

  return result;
}

uint64_t sub_24B4512BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465447473616F74 && a2 == 0xEB000000006C6961;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65536261547369 && a2 == 0xED00006465746365 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024B467270 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6544646C756F6873 && a2 == 0xEE006B6E694C7065)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24B451498(uint64_t a1)
{
  v2 = sub_24B45209C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4514D4(uint64_t a1)
{
  v2 = sub_24B45209C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B451510()
{
  v1 = *v0;
  v2 = 0x74756F6C6C6163;
  v3 = 0x32656C746974;
  v4 = 0x33656C746974;
  if (v1 != 4)
  {
    v4 = 0x6C64616568627573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746F6E746F6F66;
  if (v1 != 1)
  {
    v5 = 0x656E696C64616568;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B4515CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B452F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4515F4(uint64_t a1)
{
  v2 = sub_24B451EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B451630(uint64_t a1)
{
  v2 = sub_24B451EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B45166C(uint64_t a1)
{
  v2 = sub_24B452048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4516A8(uint64_t a1)
{
  v2 = sub_24B452048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4516E4(uint64_t a1)
{
  v2 = sub_24B451FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B451720(uint64_t a1)
{
  v2 = sub_24B451FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B45175C(uint64_t a1)
{
  v2 = sub_24B451EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B451798(uint64_t a1)
{
  v2 = sub_24B451EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4517D4(uint64_t a1)
{
  v2 = sub_24B451FA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B451810(uint64_t a1)
{
  v2 = sub_24B451FA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B45184C(uint64_t a1)
{
  v2 = sub_24B451F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B451888(uint64_t a1)
{
  v2 = sub_24B451F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FontStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE95F0, &qword_24B4657B0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE95F8, &qword_24B4657B8);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v44 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9600, &qword_24B4657C0);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v41 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9608, &qword_24B4657C8);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v12);
  v38 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9610, &qword_24B4657D0);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x28223BE20](v15);
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9618, &qword_24B4657D8);
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9620, &qword_24B4657E0);
  v22 = *(v50 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v50);
  v25 = &v34 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B451EA4();
  sub_24B45928C();
  v28 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v54 = 3;
      sub_24B451FA0();
      v29 = v41;
      v30 = v50;
      sub_24B45910C();
      v32 = v42;
      v31 = v43;
    }

    else if (v26 == 4)
    {
      v55 = 4;
      sub_24B451F4C();
      v29 = v44;
      v30 = v50;
      sub_24B45910C();
      v32 = v45;
      v31 = v46;
    }

    else
    {
      v56 = 5;
      sub_24B451EF8();
      v29 = v47;
      v30 = v50;
      sub_24B45910C();
      v32 = v48;
      v31 = v49;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v52 = 1;
      sub_24B452048();
      v29 = v35;
      v30 = v50;
      sub_24B45910C();
      v32 = v36;
      v31 = v37;
    }

    else
    {
      v53 = 2;
      sub_24B451FF4();
      v29 = v38;
      v30 = v50;
      sub_24B45910C();
      v32 = v39;
      v31 = v40;
    }

LABEL_12:
    (*(v32 + 8))(v29, v31);
    return (*v28)(v25, v30);
  }

  v51 = 0;
  sub_24B45209C();
  v30 = v50;
  sub_24B45910C();
  (*(v34 + 8))(v21, v18);
  return (*v28)(v25, v30);
}

unint64_t sub_24B451EA4()
{
  result = qword_27EFE9628;
  if (!qword_27EFE9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9628);
  }

  return result;
}

unint64_t sub_24B451EF8()
{
  result = qword_27EFE9630;
  if (!qword_27EFE9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9630);
  }

  return result;
}

unint64_t sub_24B451F4C()
{
  result = qword_27EFE9638;
  if (!qword_27EFE9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9638);
  }

  return result;
}

unint64_t sub_24B451FA0()
{
  result = qword_27EFE9640;
  if (!qword_27EFE9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9640);
  }

  return result;
}

unint64_t sub_24B451FF4()
{
  result = qword_27EFE9648;
  if (!qword_27EFE9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9648);
  }

  return result;
}

unint64_t sub_24B452048()
{
  result = qword_27EFE9650;
  if (!qword_27EFE9650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9650);
  }

  return result;
}

unint64_t sub_24B45209C()
{
  result = qword_27EFE9658;
  if (!qword_27EFE9658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9658);
  }

  return result;
}

uint64_t FontStyle.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9660, &qword_24B4657E8);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9668, &qword_24B4657F0);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = &v48 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9670, &qword_24B4657F8);
  v55 = *(v50 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v50);
  v62 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9678, &qword_24B465800);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v60 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9680, &qword_24B465808);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9688, &qword_24B465810);
  v49 = *(v19 - 8);
  v20 = *(v49 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9690, &unk_24B465818);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_24B451EA4();
  v30 = v65;
  sub_24B45927C();
  if (!v30)
  {
    v31 = v22;
    v48 = v19;
    v65 = v18;
    v33 = v62;
    v32 = v63;
    v34 = v64;
    v35 = sub_24B4590FC();
    v36 = (2 * *(v35 + 16)) | 1;
    v67 = v35;
    v68 = v35 + 32;
    v69 = 0;
    v70 = v36;
    v37 = sub_24B3E3818();
    v38 = v27;
    if (v37 == 6 || v69 != v70 >> 1)
    {
      v42 = sub_24B458FFC();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
      *v44 = &type metadata for FontStyle;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
      swift_willThrow();
      (*(v24 + 8))(v27, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = v37;
      if (v37 > 2u)
      {
        v47 = v61;
        if (v37 == 3)
        {
          v72 = 3;
          sub_24B451FA0();
          sub_24B45905C();
          (*(v55 + 8))(v33, v50);
        }

        else if (v37 == 4)
        {
          v72 = 4;
          sub_24B451F4C();
          sub_24B45905C();
          (*(v57 + 8))(v32, v56);
        }

        else
        {
          v72 = 5;
          sub_24B451EF8();
          sub_24B45905C();
          (*(v58 + 8))(v34, v59);
        }

        (*(v24 + 8))(v38, v23);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v37)
        {
          if (v37 == 1)
          {
            v72 = 1;
            sub_24B452048();
            v39 = v65;
            sub_24B45905C();
            v41 = v51;
            v40 = v52;
          }

          else
          {
            v72 = 2;
            sub_24B451FF4();
            v39 = v60;
            sub_24B45905C();
            v41 = v53;
            v40 = v54;
          }

          (*(v41 + 8))(v39, v40);
        }

        else
        {
          v72 = 0;
          sub_24B45209C();
          sub_24B45905C();
          (*(v49 + 8))(v31, v48);
        }

        (*(v24 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v47 = v61;
      }

      *v47 = v71;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t FontStyle.hashValue.getter()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

unint64_t sub_24B45294C()
{
  result = qword_27EFE9698;
  if (!qword_27EFE9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9698);
  }

  return result;
}

unint64_t sub_24B452A24()
{
  result = qword_27EFE96A0;
  if (!qword_27EFE96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96A0);
  }

  return result;
}

unint64_t sub_24B452A7C()
{
  result = qword_27EFE96A8;
  if (!qword_27EFE96A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96A8);
  }

  return result;
}

unint64_t sub_24B452AD4()
{
  result = qword_27EFE96B0;
  if (!qword_27EFE96B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96B0);
  }

  return result;
}

unint64_t sub_24B452B2C()
{
  result = qword_27EFE96B8;
  if (!qword_27EFE96B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96B8);
  }

  return result;
}

unint64_t sub_24B452B84()
{
  result = qword_27EFE96C0;
  if (!qword_27EFE96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96C0);
  }

  return result;
}

unint64_t sub_24B452BDC()
{
  result = qword_27EFE96C8;
  if (!qword_27EFE96C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96C8);
  }

  return result;
}

unint64_t sub_24B452C34()
{
  result = qword_27EFE96D0;
  if (!qword_27EFE96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96D0);
  }

  return result;
}

unint64_t sub_24B452C8C()
{
  result = qword_27EFE96D8;
  if (!qword_27EFE96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96D8);
  }

  return result;
}

unint64_t sub_24B452CE4()
{
  result = qword_27EFE96E0;
  if (!qword_27EFE96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96E0);
  }

  return result;
}

unint64_t sub_24B452D3C()
{
  result = qword_27EFE96E8;
  if (!qword_27EFE96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96E8);
  }

  return result;
}

unint64_t sub_24B452D94()
{
  result = qword_27EFE96F0;
  if (!qword_27EFE96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96F0);
  }

  return result;
}

unint64_t sub_24B452DEC()
{
  result = qword_27EFE96F8;
  if (!qword_27EFE96F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE96F8);
  }

  return result;
}

unint64_t sub_24B452E44()
{
  result = qword_27EFE9700;
  if (!qword_27EFE9700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9700);
  }

  return result;
}

unint64_t sub_24B452E9C()
{
  result = qword_27EFE9708;
  if (!qword_27EFE9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9708);
  }

  return result;
}

unint64_t sub_24B452EF4()
{
  result = qword_27EFE9710;
  if (!qword_27EFE9710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9710);
  }

  return result;
}

uint64_t sub_24B452F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F6C6C6163 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x32656C746974 && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x33656C746974 && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C64616568627573 && a2 == 0xEB00000000656E69)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B453158()
{
  if (*v0)
  {
    result = 0x6570704177656976;
  }

  else
  {
    result = 0x707061546D657469;
  }

  *v0;
  return result;
}

uint64_t sub_24B4531A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x707061546D657469 && a2 == 0xEA00000000006465;
  if (v6 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B4591AC();

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

uint64_t sub_24B453288(uint64_t a1)
{
  v2 = sub_24B45371C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4532C4(uint64_t a1)
{
  v2 = sub_24B45371C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B453300(uint64_t a1)
{
  v2 = sub_24B4537C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B45333C(uint64_t a1)
{
  v2 = sub_24B4537C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B453378(uint64_t a1)
{
  v2 = sub_24B453770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4533B4(uint64_t a1)
{
  v2 = sub_24B453770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardLockupAction.hashValue.getter(char a1)
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](a1 & 1);
  return sub_24B45926C();
}

uint64_t AwardLockupAction.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9718, &qword_24B465EA0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9720, &qword_24B465EA8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9728, &qword_24B465EB0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B45371C();
  sub_24B45928C();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24B453770();
    sub_24B45910C();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24B4537C4();
    sub_24B45910C();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_24B45371C()
{
  result = qword_2810E3298[0];
  if (!qword_2810E3298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E3298);
  }

  return result;
}

unint64_t sub_24B453770()
{
  result = qword_2810E3270;
  if (!qword_2810E3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3270);
  }

  return result;
}

unint64_t sub_24B4537C4()
{
  result = qword_27EFE9730;
  if (!qword_27EFE9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9730);
  }

  return result;
}

uint64_t sub_24B453834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B453880(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_24B453880(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9748, &qword_24B466220);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9750, &qword_24B466228);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9758, &unk_24B466230);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B45371C();
  v15 = v32;
  sub_24B45927C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_24B4590FC();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_24B3E3810();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_24B458FFC();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
    *v24 = &type metadata for AwardLockupAction;
    sub_24B45906C();
    sub_24B458FEC();
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
    sub_24B453770();
    sub_24B45905C();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_24B4537C4();
    sub_24B45905C();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_24B453D40()
{
  result = qword_27EFE9738;
  if (!qword_27EFE9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9738);
  }

  return result;
}

unint64_t sub_24B453DD8()
{
  result = qword_27EFE9740;
  if (!qword_27EFE9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9740);
  }

  return result;
}

unint64_t sub_24B453E30()
{
  result = qword_2810E3278;
  if (!qword_2810E3278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3278);
  }

  return result;
}

unint64_t sub_24B453E88()
{
  result = qword_2810E3280;
  if (!qword_2810E3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3280);
  }

  return result;
}

unint64_t sub_24B453EE0()
{
  result = qword_2810E3260;
  if (!qword_2810E3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3260);
  }

  return result;
}

unint64_t sub_24B453F38()
{
  result = qword_2810E3268;
  if (!qword_2810E3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3268);
  }

  return result;
}

unint64_t sub_24B453F90()
{
  result = qword_2810E3288;
  if (!qword_2810E3288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3288);
  }

  return result;
}

unint64_t sub_24B453FE8()
{
  result = qword_2810E3290;
  if (!qword_2810E3290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3290);
  }

  return result;
}

uint64_t AwardRemoteParticipantStatusMonitorEnvironment.init(makeRemoteBrowsingIdentityUpdatedStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

FitnessAwards::AwardDetailLayout __swiftcall AwardDetailLayout.init(ignoresTopSafeArea:isScrollable:)(Swift::Bool ignoresTopSafeArea, Swift::Bool isScrollable)
{
  *v2 = ignoresTopSafeArea;
  v2[1] = isScrollable;
  result.ignoresTopSafeArea = ignoresTopSafeArea;
  return result;
}

unint64_t sub_24B454098()
{
  if (*v0)
  {
    result = 0x6C6C6F7263537369;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_24B4540E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024B467290 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C6C6F7263537369 && a2 == 0xEC000000656C6261)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24B4591AC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_24B4541CC(uint64_t a1)
{
  v2 = sub_24B4543D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B454208(uint64_t a1)
{
  v2 = sub_24B4543D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardDetailLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9760, &qword_24B466290);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4543D0();
  sub_24B45928C();
  v15 = 0;
  sub_24B45915C();
  if (!v2)
  {
    v14 = 1;
    sub_24B45915C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B4543D0()
{
  result = qword_27EFE9768;
  if (!qword_27EFE9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9768);
  }

  return result;
}

uint64_t AwardDetailLayout.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9770, &qword_24B466298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4543D0();
  sub_24B45927C();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_24B4590BC();
    v15 = 1;
    v13 = sub_24B4590BC();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    a2[1] = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AwardDetailLayout.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45924C();
  return sub_24B45924C();
}

uint64_t AwardDetailLayout.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  sub_24B45924C();
  sub_24B45924C();
  return sub_24B45926C();
}

uint64_t sub_24B4546A0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  sub_24B45924C();
  sub_24B45924C();
  return sub_24B45926C();
}

uint64_t sub_24B454700()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45924C();
  return sub_24B45924C();
}

uint64_t sub_24B454740()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  sub_24B45924C();
  sub_24B45924C();
  return sub_24B45926C();
}

unint64_t sub_24B4547A0()
{
  result = qword_27EFE9778;
  if (!qword_27EFE9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9778);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwardDetailLayout(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AwardDetailLayout(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_24B454994()
{
  result = qword_27EFE9780;
  if (!qword_27EFE9780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9780);
  }

  return result;
}

unint64_t sub_24B4549EC()
{
  result = qword_27EFE9788;
  if (!qword_27EFE9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9788);
  }

  return result;
}

unint64_t sub_24B454A44()
{
  result = qword_27EFE9790;
  if (!qword_27EFE9790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE9790);
  }

  return result;
}

uint64_t sub_24B454A98(uint64_t a1, uint64_t a2)
{
  v89 = sub_24B45830C();
  v4 = *(v89 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v89);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_24B45836C();
  v7 = *(v88 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v88);
  v85 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8A48, &qword_24B460C60);
  v10 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v12 = &v79 - v11;
  State = type metadata accessor for AwardImageLoadState();
  v98 = *(State - 8);
  v14 = *(v98 + 64);
  v15 = MEMORY[0x28223BE20](State);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v87 = &v79 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v99 = &v79 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v79 - v23;
  MEMORY[0x28223BE20](v22);
  v93 = &v79 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8958, &qword_24B4606F8);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = (&v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v28);
  v33 = (&v79 - v32);
  v95 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(v95 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v97 = v24;
  v92 = State;
  v34 = 0;
  v35 = *(v95 + 64);
  v83 = v17;
  v84 = v95 + 64;
  v36 = 1 << *(v95 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v35;
  v39 = v36 + 63;
  v40 = v7;
  v41 = v39 >> 6;
  v80 = (v4 + 32);
  v82 = (v4 + 8);
  v79 = (v40 + 32);
  v81 = (v40 + 8);
  v90 = a2;
  v91 = (&v79 - v32);
  while (v38)
  {
    v96 = (v38 - 1) & v38;
    v42 = __clz(__rbit64(v38)) | (v34 << 6);
LABEL_18:
    v47 = (*(v95 + 48) + 16 * v42);
    v48 = *v47;
    v49 = v47[1];
    v50 = v93;
    sub_24B45680C(*(v95 + 56) + *(v98 + 72) * v42, v93, type metadata accessor for AwardImageLoadState);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8960, &qword_24B460700);
    v52 = *(v51 + 48);
    *v30 = v48;
    v30[1] = v49;
    sub_24B456874(v50, v30 + v52, type metadata accessor for AwardImageLoadState);
    (*(*(v51 - 8) + 56))(v30, 0, 1, v51);
LABEL_19:
    sub_24B41C0B0(v30, v33, &qword_27EFE8958, &qword_24B4606F8);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8960, &qword_24B460700);
    v54 = 1;
    if ((*(*(v53 - 8) + 48))(v33, 1, v53) == 1)
    {
      return v54;
    }

    v55 = v30;
    v56 = *v33;
    v57 = v33[1];
    v58 = v97;
    sub_24B456874(v33 + *(v53 + 48), v97, type metadata accessor for AwardImageLoadState);
    v59 = sub_24B4121B8(v56, v57);
    if ((v60 & 1) == 0)
    {
      sub_24B4568DC(v58, type metadata accessor for AwardImageLoadState);
      return 0;
    }

    v61 = v99;
    sub_24B45680C(*(a2 + 56) + *(v98 + 72) * v59, v99, type metadata accessor for AwardImageLoadState);
    v62 = *(v94 + 48);
    sub_24B45680C(v61, v12, type metadata accessor for AwardImageLoadState);
    sub_24B45680C(v58, &v12[v62], type metadata accessor for AwardImageLoadState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v64 = v83;
        sub_24B45680C(v12, v83, type metadata accessor for AwardImageLoadState);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_24B4568DC(v99, type metadata accessor for AwardImageLoadState);
          sub_24B4568DC(v97, type metadata accessor for AwardImageLoadState);
          (*v82)(v64, v89);
          goto LABEL_35;
        }

        v65 = &v12[v62];
        v66 = v86;
        v67 = v89;
        (*v80)(v86, v65, v89);
        v68 = sub_24B4582EC();
        v69 = *v82;
        (*v82)(v66, v67);
        sub_24B4568DC(v99, type metadata accessor for AwardImageLoadState);
        sub_24B4568DC(v97, type metadata accessor for AwardImageLoadState);
        v70 = v67;
        v30 = v55;
        v69(v64, v70);
        a2 = v90;
        if ((v68 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v30 = v55;
        sub_24B4568DC(v99, type metadata accessor for AwardImageLoadState);
        sub_24B4568DC(v97, type metadata accessor for AwardImageLoadState);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v71 = v87;
      sub_24B45680C(v12, v87, type metadata accessor for AwardImageLoadState);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_24B4568DC(v99, type metadata accessor for AwardImageLoadState);
        sub_24B4568DC(v97, type metadata accessor for AwardImageLoadState);
        (*v81)(v71, v88);
LABEL_35:
        sub_24B3DF4F0(v12, &qword_27EFE8A48, &qword_24B460C60);
        return 0;
      }

      v30 = v55;
      v72 = &v12[v62];
      v73 = v85;
      v74 = v88;
      (*v79)(v85, v72, v88);
      v75 = sub_24B45834C();
      v76 = v71;
      v77 = *v81;
      (*v81)(v73, v74);
      sub_24B4568DC(v99, type metadata accessor for AwardImageLoadState);
      sub_24B4568DC(v97, type metadata accessor for AwardImageLoadState);
      v77(v76, v74);
      a2 = v90;
      if ((v75 & 1) == 0)
      {
LABEL_32:
        sub_24B4568DC(v12, type metadata accessor for AwardImageLoadState);
        return 0;
      }
    }

    result = sub_24B4568DC(v12, type metadata accessor for AwardImageLoadState);
    v33 = v91;
    v38 = v96;
  }

  if (v41 <= v34 + 1)
  {
    v43 = v34 + 1;
  }

  else
  {
    v43 = v41;
  }

  v44 = v43 - 1;
  while (1)
  {
    v45 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v45 >= v41)
    {
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8960, &qword_24B460700);
      (*(*(v78 - 8) + 56))(v30, 1, 1, v78);
      v96 = 0;
      v34 = v44;
      goto LABEL_19;
    }

    v46 = *(v84 + 8 * v45);
    ++v34;
    if (v46)
    {
      v96 = (v46 - 1) & v46;
      v42 = __clz(__rbit64(v46)) | (v45 << 6);
      v34 = v45;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B45540C(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
LABEL_151:
    result = 1;
    goto LABEL_154;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_153;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v10 = __clz(__rbit64(v8));
          v11 = (v8 - 1) & v8;
          goto LABEL_13;
        }

        v12 = v4;
        do
        {
          v4 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_156;
          }

          if (v4 >= v9)
          {
            goto LABEL_151;
          }

          v13 = *(v5 + 8 * v4);
          ++v12;
        }

        while (!v13);
        v10 = __clz(__rbit64(v13));
        v11 = (v13 - 1) & v13;
LABEL_13:
        v14 = 16 * (v10 | (v4 << 6));
        v15 = (*(v3 + 48) + v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*(v3 + 56) + v14);
        v20 = *v18;
        v19 = v18[1];

        sub_24B41C178(v20, v19);
        result = v17 == 0;
        if (!v17)
        {
          goto LABEL_154;
        }

        v91 = v11;
        v22 = sub_24B412140(v16, v17);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          goto LABEL_152;
        }

        v25 = (*(v2 + 56) + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = v27 >> 62;
        v29 = v19 >> 62;
        if (v27 >> 62 == 3)
        {
          if (v26)
          {
            v30 = 0;
          }

          else
          {
            v30 = v27 == 0xC000000000000000;
          }

          v31 = 0;
          v32 = v30 && v19 >> 62 == 3;
          if (v32 && !v20 && v19 == 0xC000000000000000)
          {
            v33 = 0;
            v34 = 0xC000000000000000;
            goto LABEL_55;
          }

LABEL_36:
          if (v29 <= 1)
          {
LABEL_37:
            if (!v29)
            {
              v38 = BYTE6(v19);
              goto LABEL_43;
            }

            LODWORD(v38) = HIDWORD(v20) - v20;
            if (!__OFSUB__(HIDWORD(v20), v20))
            {
              v38 = v38;
              goto LABEL_43;
            }

LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
          }
        }

        else if (v28 > 1)
        {
          if (v28 == 2)
          {
            v40 = *(v26 + 16);
            v39 = *(v26 + 24);
            v37 = __OFSUB__(v39, v40);
            v31 = v39 - v40;
            if (!v37)
            {
              goto LABEL_36;
            }

            goto LABEL_158;
          }

          v31 = 0;
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        else if (v28)
        {
          LODWORD(v31) = HIDWORD(v26) - v26;
          if (__OFSUB__(HIDWORD(v26), v26))
          {
            goto LABEL_159;
          }

          v31 = v31;
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v31 = BYTE6(v27);
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        if (v29 != 2)
        {
          if (v31)
          {
            goto LABEL_152;
          }

          goto LABEL_54;
        }

        v36 = *(v20 + 16);
        v35 = *(v20 + 24);
        v37 = __OFSUB__(v35, v36);
        v38 = v35 - v36;
        if (v37)
        {
          goto LABEL_157;
        }

LABEL_43:
        if (v31 != v38)
        {
LABEL_152:
          sub_24B41C1CC(v20, v19);
LABEL_153:
          result = 0;
LABEL_154:
          v80 = *MEMORY[0x277D85DE8];
          return result;
        }

        if (v31 >= 1)
        {
          break;
        }

LABEL_54:
        v33 = v20;
        v34 = v19;
LABEL_55:
        sub_24B41C1CC(v33, v34);
        v8 = v91;
      }

      if (v28 > 1)
      {
        break;
      }

      if (!v28)
      {
        __s1[0] = v26;
        LOWORD(__s1[1]) = v27;
        BYTE2(__s1[1]) = BYTE2(v27);
        BYTE3(__s1[1]) = BYTE3(v27);
        BYTE4(__s1[1]) = BYTE4(v27);
        BYTE5(__s1[1]) = BYTE5(v27);
        if (v29)
        {
          v89 = v26;
          if (v29 == 1)
          {
            v81 = ((v20 >> 32) - v20);
            if (v20 >> 32 < v20)
            {
              goto LABEL_164;
            }

            sub_24B41C178(v26, v27);
            v41 = sub_24B4582BC();
            if (!v41)
            {
              goto LABEL_183;
            }

            v42 = v41;
            v43 = sub_24B4582DC();
            if (__OFSUB__(v20, v43))
            {
              goto LABEL_168;
            }

            v44 = (v20 - v43 + v42);
            result = sub_24B4582CC();
            v8 = v91;
            if (!v44)
            {
              goto LABEL_190;
            }

            goto LABEL_75;
          }

          v67 = *(v20 + 16);
          v85 = *(v20 + 24);
          sub_24B41C178(v26, v27);
          v64 = sub_24B4582BC();
          v88 = v2;
          if (v64)
          {
            v68 = sub_24B4582DC();
            if (__OFSUB__(v67, v68))
            {
              goto LABEL_174;
            }

            v64 += v67 - v68;
          }

          v66 = &v85[-v67];
          if (__OFSUB__(v85, v67))
          {
            goto LABEL_166;
          }

          result = sub_24B4582CC();
          v8 = v91;
          if (!v64)
          {
            goto LABEL_184;
          }

          goto LABEL_117;
        }

        goto LABEL_79;
      }

      v87 = v2;
      v49 = v26;
      if (v26 > v26 >> 32)
      {
        goto LABEL_160;
      }

      v89 = v26;
      sub_24B41C178(v26, v27);
      v50 = sub_24B4582BC();
      if (v50)
      {
        v51 = v50;
        v52 = sub_24B4582DC();
        if (__OFSUB__(v49, v52))
        {
          goto LABEL_162;
        }

        v83 = (v49 - v52 + v51);
      }

      else
      {
        v83 = 0;
      }

      sub_24B4582CC();
      v3 = a1;
      if (v29 == 2)
      {
        v76 = *(v20 + 16);
        v75 = *(v20 + 24);
        v44 = sub_24B4582BC();
        if (v44)
        {
          v77 = sub_24B4582DC();
          if (__OFSUB__(v76, v77))
          {
            goto LABEL_176;
          }

          v44 += v76 - v77;
        }

        v37 = __OFSUB__(v75, v76);
        v78 = v75 - v76;
        if (v37)
        {
          goto LABEL_172;
        }

        v79 = sub_24B4582CC();
        if (v79 >= v78)
        {
          v60 = v78;
        }

        else
        {
          v60 = v79;
        }

        v8 = v91;
        result = v83;
        if (!v83)
        {
          goto LABEL_194;
        }

        v2 = v87;
        if (!v44)
        {
          goto LABEL_193;
        }
      }

      else
      {
        if (v29 != 1)
        {
          result = v83;
          v2 = v87;
          __s1[0] = v20;
          LOWORD(__s1[1]) = v19;
          BYTE2(__s1[1]) = BYTE2(v19);
          BYTE3(__s1[1]) = BYTE3(v19);
          BYTE4(__s1[1]) = BYTE4(v19);
          BYTE5(__s1[1]) = BYTE5(v19);
          v8 = v91;
          if (!v83)
          {
            goto LABEL_191;
          }

          goto LABEL_148;
        }

        if (v20 >> 32 < v20)
        {
          goto LABEL_171;
        }

        v44 = sub_24B4582BC();
        if (v44)
        {
          v61 = sub_24B4582DC();
          if (__OFSUB__(v20, v61))
          {
            goto LABEL_178;
          }

          v44 += v20 - v61;
        }

        v2 = v87;
        v62 = sub_24B4582CC();
        if (v62 >= (v20 >> 32) - v20)
        {
          v60 = (v20 >> 32) - v20;
        }

        else
        {
          v60 = v62;
        }

        result = v83;
        if (!v83)
        {
          goto LABEL_182;
        }

        v8 = v91;
        if (!v44)
        {
          goto LABEL_181;
        }
      }

LABEL_142:
      if (result != v44)
      {
        v56 = v60;
        goto LABEL_145;
      }

      sub_24B41C1CC(v89, v27);
      sub_24B41C1CC(v20, v19);
      v3 = a1;
    }

    if (v28 == 2)
    {
      v86 = v2;
      v89 = v26;
      v45 = *(v26 + 16);
      sub_24B41C178(v26, v27);
      v46 = sub_24B4582BC();
      if (v46)
      {
        v47 = v46;
        v48 = sub_24B4582DC();
        if (__OFSUB__(v45, v48))
        {
          goto LABEL_161;
        }

        v82 = (v45 - v48 + v47);
      }

      else
      {
        v82 = 0;
      }

      sub_24B4582CC();
      v3 = a1;
      if (v29 == 2)
      {
        v71 = *(v20 + 16);
        v70 = *(v20 + 24);
        v44 = sub_24B4582BC();
        if (v44)
        {
          v72 = sub_24B4582DC();
          if (__OFSUB__(v71, v72))
          {
            goto LABEL_175;
          }

          v44 += v71 - v72;
        }

        v37 = __OFSUB__(v70, v71);
        v73 = v70 - v71;
        if (v37)
        {
          goto LABEL_170;
        }

        v74 = sub_24B4582CC();
        if (v74 >= v73)
        {
          v60 = v73;
        }

        else
        {
          v60 = v74;
        }

        v8 = v91;
        result = v82;
        if (!v82)
        {
          goto LABEL_187;
        }

        v2 = v86;
        if (!v44)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v29 != 1)
        {
          result = v82;
          v2 = v86;
          __s1[0] = v20;
          LOWORD(__s1[1]) = v19;
          BYTE2(__s1[1]) = BYTE2(v19);
          BYTE3(__s1[1]) = BYTE3(v19);
          BYTE4(__s1[1]) = BYTE4(v19);
          BYTE5(__s1[1]) = BYTE5(v19);
          v8 = v91;
          if (!v82)
          {
            goto LABEL_185;
          }

LABEL_148:
          v57 = memcmp(result, __s1, BYTE6(v19));
          sub_24B41C1CC(v89, v27);
          sub_24B41C1CC(v20, v19);
          goto LABEL_149;
        }

        if (v20 >> 32 < v20)
        {
          goto LABEL_167;
        }

        v44 = sub_24B4582BC();
        if (v44)
        {
          v58 = sub_24B4582DC();
          if (__OFSUB__(v20, v58))
          {
            goto LABEL_177;
          }

          v44 += v20 - v58;
        }

        v2 = v86;
        v59 = sub_24B4582CC();
        if (v59 >= (v20 >> 32) - v20)
        {
          v60 = (v20 >> 32) - v20;
        }

        else
        {
          v60 = v59;
        }

        result = v82;
        if (!v82)
        {
          goto LABEL_189;
        }

        v8 = v91;
        if (!v44)
        {
          goto LABEL_188;
        }
      }

      goto LABEL_142;
    }

    memset(__s1, 0, 14);
    if (v29 == 2)
    {
      v63 = *(v20 + 16);
      v84 = *(v20 + 24);
      v89 = v26;
      sub_24B41C178(v26, v27);
      v64 = sub_24B4582BC();
      v88 = v2;
      if (v64)
      {
        v65 = sub_24B4582DC();
        if (__OFSUB__(v63, v65))
        {
          goto LABEL_173;
        }

        v64 += v63 - v65;
      }

      v66 = &v84[-v63];
      if (__OFSUB__(v84, v63))
      {
        goto LABEL_165;
      }

      result = sub_24B4582CC();
      v8 = v91;
      if (!v64)
      {
        goto LABEL_192;
      }

LABEL_117:
      if (result >= v66)
      {
        v69 = v66;
      }

      else
      {
        v69 = result;
      }

      v57 = memcmp(__s1, v64, v69);
      sub_24B41C1CC(v89, v27);
      sub_24B41C1CC(v20, v19);
      v2 = v88;
      goto LABEL_146;
    }

    if (v29 == 1)
    {
      break;
    }

LABEL_79:
    __s2 = v20;
    v93 = v19;
    v94 = BYTE2(v19);
    v95 = BYTE3(v19);
    v96 = BYTE4(v19);
    v97 = BYTE5(v19);
    v57 = memcmp(__s1, &__s2, BYTE6(v19));
    sub_24B41C1CC(v20, v19);
    v8 = v91;
LABEL_149:
    result = 0;
    if (v57)
    {
      goto LABEL_154;
    }
  }

  v81 = ((v20 >> 32) - v20);
  if (v20 >> 32 < v20)
  {
    goto LABEL_163;
  }

  v89 = v26;
  sub_24B41C178(v26, v27);
  v53 = sub_24B4582BC();
  if (v53)
  {
    v54 = v53;
    v55 = sub_24B4582DC();
    if (__OFSUB__(v20, v55))
    {
      goto LABEL_169;
    }

    v44 = (v20 - v55 + v54);
    result = sub_24B4582CC();
    v8 = v91;
    if (!v44)
    {
      goto LABEL_180;
    }

LABEL_75:
    if (result >= v81)
    {
      v56 = v81;
    }

    else
    {
      v56 = result;
    }

    result = __s1;
LABEL_145:
    v57 = memcmp(result, v44, v56);
    sub_24B41C1CC(v89, v27);
    sub_24B41C1CC(v20, v19);
LABEL_146:
    v3 = a1;
    goto LABEL_149;
  }

  sub_24B4582CC();
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  result = sub_24B4582CC();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
  return result;
}

uint64_t AwardImageState.templateUniqueName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double AwardImageState.size.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t AwardImageState.imageLoadState.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t AwardImageState.init(templateUniqueName:size:imageLoadState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a3;
  return result;
}

unint64_t sub_24B455E70()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x616F4C6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24B455ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4566E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B455EFC(uint64_t a1)
{
  v2 = sub_24B456198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B455F38(uint64_t a1)
{
  v2 = sub_24B456198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardImageState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE9798, &qword_24B4664A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v16[0] = v1[4];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B456198();
  sub_24B45928C();
  LOBYTE(v17) = 0;
  v13 = v16[1];
  sub_24B45914C();
  if (!v13)
  {
    v14 = v16[0];
    v17 = v10;
    v18 = v11;
    v19 = 1;
    type metadata accessor for CGSize();
    sub_24B456494(&qword_2810E2768, type metadata accessor for CGSize);
    sub_24B45918C();
    v17 = v14;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8090, &qword_24B45C2C0);
    sub_24B427158();
    sub_24B45918C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B456198()
{
  result = qword_27EFE97A0;
  if (!qword_27EFE97A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE97A0);
  }

  return result;
}

uint64_t AwardImageState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE97A8, &qword_24B4664B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B456198();
  sub_24B45927C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19[0]) = 0;
  v11 = sub_24B4590AC();
  v13 = v12;
  v14 = v11;
  type metadata accessor for CGSize();
  v20 = 1;
  sub_24B456494(&qword_27EFE7A60, type metadata accessor for CGSize);
  sub_24B4590EC();
  v15 = v19[0];
  v16 = v19[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8090, &qword_24B45C2C0);
  v20 = 2;
  sub_24B427440();
  sub_24B4590EC();
  (*(v6 + 8))(v9, v5);
  v18 = v19[0];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v16;
  a2[4] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24B456494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s13FitnessAwards15AwardImageStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_24B4591AC() & 1) == 0)
  {
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    return 0;
  }

  return sub_24B454A98(v4, v7);
}

unint64_t sub_24B4565DC()
{
  result = qword_27EFE97B0;
  if (!qword_27EFE97B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE97B0);
  }

  return result;
}

unint64_t sub_24B456634()
{
  result = qword_27EFE97B8;
  if (!qword_27EFE97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE97B8);
  }

  return result;
}

unint64_t sub_24B45668C()
{
  result = qword_27EFE97C0;
  if (!qword_27EFE97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE97C0);
  }

  return result;
}

uint64_t sub_24B4566E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616F4C6567616D69 && a2 == 0xEE00657461745364)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B4591AC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B45680C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B456874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4568DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 AwardLockupFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for AwardLockupFeature() + 20);
  sub_24B45835C();
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v6;
  return result;
}

uint64_t type metadata accessor for AwardLockupFeature()
{
  result = qword_2810E3180;
  if (!qword_2810E3180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardLockupFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, void **a3, char a4)
{
  v52 = a3;
  v6 = type metadata accessor for AwardLockupFeature();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F00, &unk_24B4666A0);
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v51);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = *a2;
  v20 = a2[1];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
  v22 = v21[12];
  v23 = v21[16];
  v47 = v21[20];
  v48 = v22;
  v24 = v21[24];
  if (a4)
  {
    v25 = &v16[v24];
    v53 = v19;
    v54 = v20;
    v55 = 1;
    sub_24B456F68();
    swift_bridgeObjectRetain_n();
    sub_24B458F9C();
    v26 = *MEMORY[0x277D04400];
    v27 = sub_24B458D4C();
    (*(*(v27 - 8) + 104))(&v16[v23], v26, v27);
    v28 = *MEMORY[0x277D043E0];
    v29 = sub_24B458D3C();
    (*(*(v29 - 8) + 104))(&v16[v47], v28, v29);
    sub_24B457670(v50, v9);
    v30 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v19;
    *(v31 + 24) = v20;
    sub_24B4576D4(v9, v31 + v30);
    *v25 = &unk_24B4666B8;
    *(v25 + 1) = v31;
    sub_24B458EFC();
    (*(v12 + 104))(v16, *MEMORY[0x277D043B0], v51);
    v32 = v52;
    v33 = *v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_24B3F152C(0, v33[2] + 1, 1, v33);
    }

    v35 = v33[2];
    v34 = v33[3];
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v33 = sub_24B3F152C(v34 > 1, v35 + 1, 1, v33);
    }

    v18 = v16;
  }

  else
  {
    v37 = &v18[v24];
    v53 = v19;
    v54 = v20;
    v55 = 0;
    sub_24B456F68();
    swift_bridgeObjectRetain_n();
    sub_24B458F9C();
    v38 = *MEMORY[0x277D043F0];
    v39 = sub_24B458D4C();
    (*(*(v39 - 8) + 104))(&v18[v23], v38, v39);
    sub_24B457670(v50, v11);
    v40 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v19;
    *(v41 + 24) = v20;
    sub_24B4576D4(v11, v41 + v40);
    *v37 = &unk_24B4666C8;
    *(v37 + 1) = v41;
    sub_24B458EFC();
    v42 = *MEMORY[0x277D043E8];
    v43 = sub_24B458D3C();
    (*(*(v43 - 8) + 104))(&v18[v47], v42, v43);
    (*(v12 + 104))(v18, *MEMORY[0x277D043B0], v51);
    v32 = v52;
    v33 = *v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_24B3F152C(0, v33[2] + 1, 1, v33);
    }

    v35 = v33[2];
    v44 = v33[3];
    v36 = v35 + 1;
    if (v35 >= v44 >> 1)
    {
      v33 = sub_24B3F152C(v44 > 1, v35 + 1, 1, v33);
    }
  }

  v33[2] = v36;
  result = (*(v12 + 32))(v33 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v35, v18);
  *v32 = v33;
  return result;
}

unint64_t sub_24B456F68()
{
  result = qword_2810E3198[0];
  if (!qword_2810E3198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E3198);
  }

  return result;
}

uint64_t sub_24B456FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_24B458EEC();
  v4[5] = sub_24B458EDC();
  v6 = sub_24B458EBC();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24B457058, v6, v5);
}

uint64_t sub_24B457058()
{
  v18 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);

  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24B3F17BC(v6, v5, &v17);
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardLockupFeature] %s lockup tapped, navigating", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x24C2408A0](v8, -1, -1);
    MEMORY[0x24C2408A0](v7, -1, -1);
  }

  v9 = v0[4];
  v10 = v9[1];
  v16 = (*v9 + **v9);
  v11 = (*v9)[1];
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_24B457278;
  v14 = v0[2];
  v13 = v0[3];

  return v16(v14, v13);
}

uint64_t sub_24B457278()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_24B457C38;
  }

  else
  {
    v7 = sub_24B40CDC0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B4573B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_24B458EEC();
  v4[5] = sub_24B458EDC();
  v6 = sub_24B458EBC();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24B457450, v6, v5);
}

uint64_t sub_24B457450()
{
  v18 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);

  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24B3F17BC(v6, v5, &v17);
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardHeaderFeature] Resolving award description state on viewAppeared for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x24C2408A0](v8, -1, -1);
    MEMORY[0x24C2408A0](v7, -1, -1);
  }

  v9 = v0[4];
  v10 = *(v9 + 24);
  v16 = (*(v9 + 16) + **(v9 + 16));
  v11 = *(*(v9 + 16) + 4);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_24B40BE9C;
  v14 = v0[2];
  v13 = v0[3];

  return v16(v14, v13);
}

uint64_t sub_24B457670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardLockupFeature();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4576D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardLockupFeature();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B457738(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardLockupFeature() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B3F1E60;

  return sub_24B4573B4(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for AwardLockupFeature() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + v2 + 8);

  v6 = *(v0 + v2 + 24);

  v7 = v1[7];
  v8 = sub_24B45836C();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_24B457928(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardLockupFeature() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B3F2574;

  return sub_24B456FBC(a1, v6, v7, v1 + v5);
}

unint64_t sub_24B457A18()
{
  result = qword_2810E3250;
  if (!qword_2810E3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3250);
  }

  return result;
}

unint64_t sub_24B457A70()
{
  result = qword_2810E3258;
  if (!qword_2810E3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3258);
  }

  return result;
}

unint64_t sub_24B457AC8()
{
  result = qword_2810E33D0[0];
  if (!qword_2810E33D0[0])
  {
    type metadata accessor for AwardLockupState();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E33D0);
  }

  return result;
}

uint64_t sub_24B457B48()
{
  result = sub_24B45836C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B457BE4()
{
  result = qword_2810E3190;
  if (!qword_2810E3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3190);
  }

  return result;
}

uint64_t sub_24B457C4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24B457C94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B457D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_24B458CCC();
  a4[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE97C8, &qword_24B4668E8);
  return sub_24B457D80(a2, a3, a1, a4 + *(v9 + 44));
}

uint64_t sub_24B457D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35[1] = a3;
  v35[0] = a1;
  v40 = a4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE97D0, &qword_24B4668F0);
  v5 = *(*(v36 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v36);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v35 - v9;
  MEMORY[0x28223BE20](v8);
  v38 = v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE97D8, &qword_24B4668F8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v37 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v35 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v35 - v20;
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_24B4586DC();
  v24 = *(*(v23 - 8) + 104);
  v24(v21, v22, v23);
  *&v21[*(v13 + 60)] = a2;
  *&v21[*(v13 + 64)] = 256;
  v24(v19, v22, v23);
  *&v19[*(v13 + 60)] = v35[0];
  *&v19[*(v13 + 64)] = 256;

  sub_24B45856C();
  sub_24B458CBC();
  sub_24B45861C();
  sub_24B41C0B0(v19, v10, &qword_27EFE97D8, &qword_24B4668F8);
  v25 = &v10[*(v36 + 36)];
  v26 = v46;
  *(v25 + 4) = v45;
  *(v25 + 5) = v26;
  *(v25 + 6) = v47;
  v27 = v42;
  *v25 = v41;
  *(v25 + 1) = v27;
  v28 = v44;
  *(v25 + 2) = v43;
  *(v25 + 3) = v28;
  v29 = v38;
  sub_24B41C0B0(v10, v38, &qword_27EFE97D0, &qword_24B4668F0);
  v30 = v37;
  sub_24B3DF488(v21, v37, &qword_27EFE97D8, &qword_24B4668F8);
  v31 = v39;
  sub_24B3DF488(v29, v39, &qword_27EFE97D0, &qword_24B4668F0);
  v32 = v40;
  sub_24B3DF488(v30, v40, &qword_27EFE97D8, &qword_24B4668F8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE97E0, &qword_24B466900);
  sub_24B3DF488(v31, v32 + *(v33 + 48), &qword_27EFE97D0, &qword_24B4668F0);
  sub_24B3DF4F0(v29, &qword_27EFE97D0, &qword_24B4668F0);
  sub_24B3DF4F0(v21, &qword_27EFE97D8, &qword_24B4668F8);
  sub_24B3DF4F0(v31, &qword_27EFE97D0, &qword_24B4668F0);
  return sub_24B3DF4F0(v30, &qword_27EFE97D8, &qword_24B4668F8);
}

uint64_t sub_24B4581B0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = COERCE_DOUBLE(sub_24B45877C());
  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v5;
  *(v9 + 40) = v8;
  *a1 = sub_24B45824C;
  a1[1] = v9;
}

uint64_t sub_24B45824C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[5];
  return sub_24B457D00(a1, v2[2], v2[3], a2);
}

unint64_t sub_24B458258()
{
  result = qword_27EFE97E8;
  if (!qword_27EFE97E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EFE97F0, &qword_24B466908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE97E8);
  }

  return result;
}