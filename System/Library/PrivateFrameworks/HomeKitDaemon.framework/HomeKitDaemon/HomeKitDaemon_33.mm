uint64_t sub_229866AD0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 26) = a3;
  *(v4 + 32) = a1;
  return MEMORY[0x2822009F8](sub_229866AF8, v3, 0);
}

uint64_t sub_229866AF8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 26);
  v3 = *(v0 + 32);
  v4 = *(*(v0 + 48) + 112);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  *(v5 + 32) = v2;
  v6 = *(MEMORY[0x277D0EF78] + 4);
  v10 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DA0, &qword_22A586678);
  *v7 = v0;
  v7[1] = sub_229866C08;

  return v10(v0 + 16, &unk_22A586670, v5, v8);
}

uint64_t sub_229866C08()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {

    v7 = sub_229866D94;
  }

  else
  {

    v7 = sub_229866D64;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_229866D64()
{
  if (*(v0 + 25))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(v0 + 16);
  }

  return (*(v0 + 8))(v1, (*(v0 + 25) | *(v0 + 24)) & 1);
}

uint64_t sub_229866DB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 194) = a4;
  *(v4 + 240) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F308, &qword_22A586680);
  *(v4 + 248) = v5;
  v6 = *(v5 - 8);
  *(v4 + 256) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229866E80, 0, 0);
}

uint64_t sub_229866E80()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 208) = v1;
  v18 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();
  v2 = *(v0 + 194);

  v3 = *(v0 + 200);
  *(v0 + 272) = v3;
  sub_22A4DBD0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_22A576190;
      v5 = (v4 + 32);
    }

    else
    {
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_22A582080;
      *(v8 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v5 = (v8 + 40);
    }

    v7 = 139;
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22A576190;
    v5 = (v6 + 32);
    v7 = 133;
  }

  *v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v9 = objc_allocWithZone(MEMORY[0x277D37CF8]);
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v10 = sub_22A4DD81C();

  v11 = [v9 initWithPaymentCredentialTypes_];

  *(v0 + 224) = v11;
  v19 = sub_229562F68(0, &qword_27D881DA8, 0x277D37CF8);
  sub_22A4DBD4C();
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);
  v14 = *(v0 + 248);

  v15 = *(v0 + 216);
  *(v0 + 280) = v15;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 193;
  *(v0 + 24) = sub_2298673C4;
  swift_continuation_init();
  *(v0 + 136) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v13 + 32))(boxed_opaque_existential_1, v12, v14);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_229862B74;
  *(v0 + 104) = &block_descriptor_24_0;
  [v3 canAddSecureElementPassWithConfiguration:v15 completion:v19];
  (*(v13 + 8))(boxed_opaque_existential_1, v14);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2298673C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_229867600;
  }

  else
  {
    v3 = sub_2298674D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2298674D4()
{
  v1 = (*(v0 + 193) & 1) == 0;
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 240);
  sub_22A4DE1FC();
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  MEMORY[0x22AAD08C0](0xD000000000000037, 0x800000022A599B80);
  *(v0 + 184) = v1;
  *(v0 + 192) = 1;
  sub_22A4DE31C();
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  sub_22A4DBD0C();

  *v4 = v1;
  *(v4 + 8) = 1;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_229867600()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  swift_willThrow();

  v3 = *(v0 + 288);
  swift_getErrorValue();
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = sub_22A4DE6EC();

  v8 = *(v0 + 264);
  v9 = *(v0 + 272);
  v10 = *(v0 + 240);
  sub_22A4DE1FC();
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  MEMORY[0x22AAD08C0](0xD000000000000037, 0x800000022A599B80);
  *(v0 + 184) = v7;
  *(v0 + 192) = 0;
  sub_22A4DE31C();
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  sub_22A4DBD0C();

  *v10 = v7;
  *(v10 + 8) = 0;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_229867764()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[3] = v1;
  v10 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();
  v2 = v0[4];

  v3 = v0[2];
  sub_22A4DE1FC();

  v4 = [v2 description];
  v5 = sub_22A4DD5EC();
  v7 = v6;

  MEMORY[0x22AAD08C0](v5, v7);

  sub_22A4DBD0C();

  [v3 removePass_];

  v8 = v0[1];

  return v8();
}

uint64_t sub_229867944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  return MEMORY[0x2822009F8](sub_229867968, 0, 0);
}

uint64_t sub_229867968()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[3] = v1;
  v19 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];

  v6 = v0[2];
  v7 = sub_22A4DD5AC();
  v8 = sub_22A4DD5AC();
  v9 = [v6 passWithPassTypeIdentifier:v7 serialNumber:{v8, v19}];

  v11 = v0[6];
  v10 = v0[7];
  if (v9)
  {
    v12 = v9;
    sub_22A4DE1FC();

    v13 = [v12 description];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A599C70);
    MEMORY[0x22AAD08C0](v11, v10);
    sub_22A4DBD0C();

    [v6 removePass_];
  }

  else
  {
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000040, 0x800000022A599C20);
    MEMORY[0x22AAD08C0](v11, v10);
    sub_22A4DBD0C();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_229867C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_229867C5C, a2, 0);
}

uint64_t sub_229867C5C()
{
  v1 = sub_2298690C4(*(v0 + 24));
  v2 = *(v0 + 16);
  *v2 = v1 & 1;
  v2[1] = HIBYTE(v1) & 1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_229867CF4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v11 = swift_task_alloc();
  v6[4] = v11;
  *v11 = v6;
  v11[1] = sub_229867DC4;

  return sub_229867F40(a3, a4 & 0x101, 2, a5, a6);
}

uint64_t sub_229867DC4(__int16 a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 24);
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_229867F10, v9, 0);
  }
}

uint64_t sub_229867F10()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = v1 & 1;
  v2[1] = HIBYTE(v1) & 1;
  return (*(v0 + 8))();
}

uint64_t sub_229867F40(uint64_t a1, __int16 a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 408) = a5;
  *(v6 + 416) = v5;
  *(v6 + 482) = a3;
  *(v6 + 480) = a2;
  *(v6 + 392) = a1;
  *(v6 + 400) = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881D68, &qword_22A586648);
  *(v6 + 424) = v7;
  v8 = *(v7 - 8);
  *(v6 + 432) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 440) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229868018, v5, 0);
}

uint64_t sub_229868018()
{
  v1 = *(v0 + 480);
  if (v1 == 2)
  {
    v1 = *(v0 + 482);
    v2 = *(v0 + 392);
    if (v1 == 2)
    {
      v3 = sub_2298690C4(*(v0 + 392));
      v4 = *(v0 + 392);
      sub_22A4DE1FC();
      *(v0 + 272) = 0;
      *(v0 + 280) = 0xE000000000000000;
      MEMORY[0x22AAD08C0](0xD000000000000021, 0x800000022A599930);
      v5 = [v4 description];
      v6 = sub_22A4DD5EC();
      v8 = v7;

      MEMORY[0x22AAD08C0](v6, v8);

      MEMORY[0x22AAD08C0](0xD000000000000019, 0x800000022A599960);
      *(v0 + 486) = v3 & 1;
      *(v0 + 487) = HIBYTE(v3) & 1;
      sub_22A4DE31C();
      v9 = *(v0 + 272);
      v10 = *(v0 + 280);
      sub_22A4DBD0C();

      v11 = sub_229869270(v4, v3 & 0x101);
      goto LABEL_7;
    }

    sub_22A4DE1FC();
    *(v0 + 352) = 0;
    *(v0 + 360) = 0xE000000000000000;
    MEMORY[0x22AAD08C0](0xD000000000000021, 0x800000022A599930);
    v18 = [v2 description];
    v19 = sub_22A4DD5EC();
    v21 = v20;

    MEMORY[0x22AAD08C0](v19, v21);

    MEMORY[0x22AAD08C0](0xD00000000000001ALL, 0x800000022A599A40);
    *(v0 + 488) = v1 & 1;
    *(v0 + 489) = HIBYTE(v1) & 1;
    sub_22A4DE31C();
    v22 = *(v0 + 352);
    v23 = *(v0 + 360);
  }

  else
  {
    v2 = *(v0 + 392);
    sub_22A4DE1FC();
    *(v0 + 368) = 0;
    *(v0 + 376) = 0xE000000000000000;
    MEMORY[0x22AAD08C0](0xD000000000000021, 0x800000022A599930);
    v12 = [v2 description];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](0xD000000000000021, 0x800000022A599A60);
    *(v0 + 490) = v1 & 1;
    *(v0 + 491) = HIBYTE(v1) & 1;
    sub_22A4DE31C();
    v16 = *(v0 + 368);
    v17 = *(v0 + 376);
  }

  sub_22A4DBD0C();

  v11 = sub_229869270(v2, v1 & 0x101);
LABEL_7:
  *(v0 + 448) = v11;
  v24 = v11;
  v25 = objc_allocWithZone(MEMORY[0x277D380F0]);
  v26 = v24;
  v27 = [v25 init];
  *(v0 + 456) = v27;
  sub_22A4DE1FC();

  *(v0 + 384) = v24;
  v28 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881D70, &qword_22A586650);
  v29 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v29);

  sub_22A4DBD0C();

  if (v24)
  {
    v30 = *(v0 + 408);
    *(v0 + 484) = sub_2298697AC(*(v0 + 482), v28);
    v53 = v28;
    if (v30 >> 60 == 15)
    {
      v31 = 0;
    }

    else
    {
      v37 = *(v0 + 400);
      v38 = *(v0 + 408);
      v31 = sub_22A4DB61C();
    }

    *(v0 + 472) = v31;
    v39 = *(v0 + 432);
    v40 = *(v0 + 440);
    v41 = *(v0 + 424);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 336;
    *(v0 + 88) = sub_229868A88;
    swift_continuation_init();
    *(v0 + 264) = v41;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 240));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881D78, &qword_22A586658);
    sub_22A4DD8DC();
    (*(v39 + 32))(boxed_opaque_existential_1, v40, v41);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_229868CBC;
    *(v0 + 232) = &block_descriptor_15_0;
    [v27 setExpressWithPassConfiguration:v53 credential:v31 handler:v0 + 208];
    (*(v39 + 8))(boxed_opaque_existential_1, v41);
    v43 = v0 + 80;
  }

  else
  {
    v32 = [*(v0 + 392) uniqueID];
    if (v32)
    {
      v33 = v32;
      v34 = sub_22A4DD5EC();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    *(v0 + 304) = v34;
    *(v0 + 312) = v36;
    v52 = MEMORY[0x277D837D0];
    sub_22A4DBD4C();
    v54 = v27;
    v45 = *(v0 + 432);
    v44 = *(v0 + 440);
    v46 = *(v0 + 424);

    v47 = *(v0 + 288);
    v48 = *(v0 + 296);
    v49 = sub_22A4DD5AC();
    *(v0 + 464) = v49;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 320;
    *(v0 + 24) = sub_22986886C;
    swift_continuation_init();
    *(v0 + 200) = v46;
    v50 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881D78, &qword_22A586658);
    sub_22A4DD8DC();
    (*(v45 + 32))(v50, v44, v46);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_229868CBC;
    *(v0 + 168) = &block_descriptor_46;
    [v54 removeExpressPassWithUniqueIdentifierV2:v49 completion:{v0 + 144, v52}];
    (*(v45 + 8))(v50, v46);
    v43 = v0 + 16;
  }

  return MEMORY[0x282200938](v43);
}

uint64_t sub_22986886C()
{
  v1 = *(*v0 + 416);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229868960, v1, 0);
}

uint64_t sub_229868960()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  if (v1)
  {
    v5 = *(v0 + 440);

    v6 = *(v0 + 8);

    return v6(0);
  }

  else
  {
    sub_22962F2A8();
    swift_allocError();
    *v8 = xmmword_22A5865D0;
    *(v8 + 16) = 3;
    swift_willThrow();

    v9 = *(v0 + 440);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_229868A88()
{
  v1 = *(*v0 + 416);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_229868B7C, v1, 0);
}

uint64_t sub_229868B7C()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);

  v3 = *(v0 + 336);
  v4 = *(v0 + 344);

  if (v3 == 1)
  {
    v5 = *(v0 + 484);
    v6 = *(v0 + 448);
    v7 = *(v0 + 440);

    v8 = *(v0 + 8);

    return v8(v5 & 0x1010101);
  }

  else
  {
    v11 = *(v0 + 448);
    v10 = *(v0 + 456);
    sub_22962F2A8();
    swift_allocError();
    *v12 = xmmword_22A5865D0;
    *(v12 + 16) = 3;
    swift_willThrow();

    v13 = *(v0 + 440);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_229868CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_229562F68(0, &qword_27D881D80, 0x277D37E88);
    sub_22959E62C(&qword_27D881D88, &qword_27D881D80, 0x277D37E88);
    sub_22A4DDB6C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881D68, &qword_22A586648);
  return sub_22A4DD8FC();
}

uint64_t sub_229868D84(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_229868DA4, 0, 0);
}

uint64_t sub_229868DA4()
{
  v1 = [*(v0 + 56) uniqueID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22A4DD5EC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v16 = MEMORY[0x277D837D0];
  sub_22A4DBD4C();

  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
  v9 = sub_22A4DD5AC();

  v10 = [v8 expressPassConfigurationWithPassUniqueIdentifier_];

  if (v10)
  {
    v11 = [v10 isNFCExpressEnabled];
    v12 = [v10 isUWBExpressEnabled];
  }

  else
  {

    v11 = 0;
    v12 = 0;
  }

  v13 = *(v0 + 48);
  *v13 = v11;
  v13[1] = v12;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t PassLibrary.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PassLibrary.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22986901C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2298690C4(void *a1)
{
  v2 = [a1 uniqueID];
  if (v2)
  {
    v3 = v2;
    sub_22A4DD5EC();
  }

  v11 = MEMORY[0x277D837D0];
  sub_22A4DBD4C();

  if (!v1)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
    v6 = sub_22A4DD5AC();

    v7 = [v5 expressPassConfigurationWithPassUniqueIdentifier_];

    if (v7)
    {
      v8 = [v7 isNFCExpressEnabled];
      v9 = [v7 isUWBExpressEnabled];

      if (v9)
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      return v10 | v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_229869270(void *a1, __int16 a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = a1;
  }

  v32 = v5;
  v7 = "pass as PKPaymentPass";
  v28 = sub_229562F68(0, &qword_27D881D90, 0x277D38080);
  sub_22A4DBD4C();

  if (v2)
  {
    return v7;
  }

  v8 = aBlock[0];
  if ((a2 & 0x100) != 0)
  {
    v10 = [a1 secureElementPass];
    if (v10 && (v11 = v10, v12 = [v10 paymentApplications], v11, v12))
    {
      sub_229562F68(0, &qword_281401930, 0x277D37FE0);
      sub_22959E62C(&qword_27D87E2B8, &qword_281401930, 0x277D37FE0);
      v13 = sub_22A4DDB6C();
    }

    else
    {
      v13 = 0;
    }

    v32 = v13;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881D98, &qword_22A586660);
    sub_22A4DBD4C();

    if ((aBlock[0] & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_22A4DE09C();
      sub_229562F68(0, &qword_281401930, 0x277D37FE0);
      sub_22959E62C(&qword_27D87E2B8, &qword_281401930, 0x277D37FE0);
      sub_22A4DDBAC();
      result = aBlock[6];
      v15 = aBlock[7];
      v16 = aBlock[8];
      v17 = aBlock[9];
      v18 = aBlock[10];
    }

    else
    {
      v19 = -1 << *(aBlock[0] + 32);
      v15 = aBlock[0] + 56;
      v16 = ~v19;
      v20 = -v19;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v18 = v21 & *(aBlock[0] + 56);

      v17 = 0;
    }

    v30 = result;
    while (1)
    {
      if (result < 0)
      {
        v24 = sub_22A4DE12C();
        if (!v24)
        {
          v9 = 0;
          goto LABEL_32;
        }

        v32 = v24;
        sub_229562F68(0, &qword_281401930, 0x277D37FE0);
        swift_dynamicCast();
        v9 = aBlock[0];
        if (!aBlock[0])
        {
          goto LABEL_32;
        }
      }

      else
      {
        v22 = v17;
        v23 = v18;
        if (!v18)
        {
          while (1)
          {
            v17 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v17 >= ((v16 + 64) >> 6))
            {
              v9 = 0;
              goto LABEL_32;
            }

            v23 = *(v15 + 8 * v17);
            ++v22;
            if (v23)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
          goto LABEL_38;
        }

LABEL_23:
        v18 = (v23 - 1) & v23;
        v9 = *(*(result + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v23)))));
        if (!v9)
        {
          goto LABEL_32;
        }
      }

      if ([v9 paymentNetworkIdentifier] == 139 && (objc_msgSend(v9, sel_supportsUWB) & 1) != 0)
      {
        v25 = [v9 blockingSupportedUWBDueToHardware];

        result = v30;
        if ((v25 & 1) == 0)
        {
          v9 = 1;
LABEL_32:
          sub_22953EE84();

          v8 = aBlock[0];
          goto LABEL_33;
        }
      }

      else
      {

        result = v30;
      }
    }
  }

  v9 = 0;
LABEL_33:
  v26 = objc_allocWithZone(MEMORY[0x277D37E88]);
  aBlock[4] = sub_229869058;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_229869094;
  aBlock[3] = &block_descriptor_18_1;
  v27 = _Block_copy(aBlock);
  v7 = [v26 initForPaymentPass:v8 isNFCExpressEnabled:a2 & 1 isUWBExpressEnabled:v9 withTechologyTest:v27];

  _Block_release(v27);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v7;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2298697AC(__int16 a1, id a2)
{
  if (a1 == 2)
  {
    v3 = [a2 isNFCExpressEnabled];
    if (([a2 isUWBExpressEnabled] & 1) == 0)
    {
LABEL_10:
      v5 = 0;
      return v5 | v3;
    }
  }

  else
  {
    if ([a2 isNFCExpressEnabled] == (a1 & 1))
    {
      v3 = 0;
    }

    else
    {
      v3 = [a2 isNFCExpressEnabled];
    }

    if (((((a1 & 0x100) == 0) ^ [a2 isUWBExpressEnabled]) & 1) != 0 || !objc_msgSend(a2, sel_isUWBExpressEnabled))
    {
      goto LABEL_10;
    }
  }

  v5 = 256;
  return v5 | v3;
}

uint64_t block_copy_helper_16_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22986989C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_229866DB0(a1, v4, v5, v6);
}

uint64_t sub_229869950(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_229869A20(unint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v8 = sub_22A4DE0EC();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v23 = MEMORY[0x277D84F90];
  result = sub_229583754(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v23;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x22AAD13F0](v11, a1);
        v23 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_229583754((v13 > 1), v14 + 1, 1);
          v9 = v23;
        }

        ++v11;
        v21 = sub_229562F68(0, a2, a3);
        v22 = a4;
        *&v20 = v12;
        *(v9 + 16) = v14 + 1;
        sub_229557188(&v20, v9 + 40 * v14 + 32);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v23 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        v19 = v16;
        if (v18 >= v17 >> 1)
        {
          sub_229583754((v17 > 1), v18 + 1, 1);
          v9 = v23;
        }

        v21 = sub_229562F68(0, a2, a3);
        v22 = a4;
        *&v20 = v19;
        *(v9 + 16) = v18 + 1;
        sub_229557188(&v20, v9 + 40 * v18 + 32);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

void *sub_229869C38(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22A4DE0EC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_22958383C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AAD13F0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_22958383C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_229562F68(0, &qword_281401780, 0x277D289C0);
        v16 = &off_283CE2270;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_229557188(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_22958383C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_229562F68(0, &qword_281401780, 0x277D289C0);
        v16 = &off_283CE2270;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_229557188(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_229869E18(unint64_t a1)
{
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
    v1 = sub_22A4DE3AC();
  }

  else
  {
    v1 = a1;

    sub_22A4DE61C();
  }

  return v1;
}

uint64_t sub_229869E94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2295839C0(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881EE0, &qword_22A580BC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F058, &unk_22A582DE0);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2295839C0((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_229869FC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_229583AE4(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_229583AE4((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_229543C5C(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_22986A0C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22A4DE0EC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_229583AE4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x22AAD13F0](i, a1);
        sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_229583AE4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_229543C5C(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_229583AE4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_229543C5C(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22986A2BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22A4DE0EC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    result = sub_22A4DE29C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x22AAD13F0]();
          sub_229562F68(0, &qword_281401770, 0x277CCABB0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F10, &qword_22A5804F0);
          swift_dynamicCast();
          sub_22A4DE27C();
          v6 = *(v11 + 16);
          sub_22A4DE2AC();
          sub_22A4DE2BC();
          sub_22A4DE28C();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v7 = (a1 + 32);
        sub_229562F68(0, &qword_281401770, 0x277CCABB0);
        do
        {
          v8 = *v7++;
          v9 = v8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F10, &qword_22A5804F0);
          swift_dynamicCast();
          sub_22A4DE27C();
          v10 = *(v11 + 16);
          sub_22A4DE2AC();
          sub_22A4DE2BC();
          sub_22A4DE28C();
          --v2;
        }

        while (v2);
      }

      return v11;
    }
  }

  return result;
}

uint64_t sub_22986A4B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_229583B88(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_229583B88((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22986A5E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_22986A68C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
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
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x22AAD13F0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);
        swift_unknownObjectRelease();
        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_22A4DE0EC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_22986A7C8(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_22986A86C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x22AAD13F0](v5, a3);
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
      v13 = sub_22A4DE0EC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_22986A994(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject accessories];
      sub_229562F68(0, &qword_281401C30, off_278665FE8);
      v7 = sub_22A4DD83C();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_22A4DE0EC();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_21;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v31 = v3;
          goto LABEL_23;
        }
      }

      else
      {
        if (v10)
        {
LABEL_21:
          sub_22A4DE0EC();
          goto LABEL_22;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = *(v12 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v31 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v15 >> 1) - v14) < v33)
          {
            goto LABEL_44;
          }

          v17 = v12 + 8 * v14 + 32;
          if (v8)
          {
            if (v16 < 1)
            {
              goto LABEL_46;
            }

            sub_22988F9B8();
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D548, &unk_22A578880);
              v19 = sub_22958C03C(v32, i, v7);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v31;
          if (v33 >= 1)
          {
            v22 = *(v12 + 16);
            v5 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v12 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      v3 = v31;
      if (v33 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22986AD04(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_22A4DE29C();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AAD13F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_22A4DE27C();
      v8 = *(v10 + 16);
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      if (v7 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_22A4DE0EC();
    sub_22A4DE29C();
  }

  return v10;
}

uint64_t sub_22986AE94(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  sub_22A4DE29C();
  if (!v6)
  {
    return v11;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_2295404B0(i, v10);
    sub_229562F68(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22A4DE27C();
    v8 = *(v11 + 16);
    sub_22A4DE2AC();
    sub_22A4DE2BC();
    sub_22A4DE28C();
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}

uint64_t sub_22986AF98(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v14 = MEMORY[0x277D84F90];
  sub_229583334(0, v3 & ~(v3 >> 63), 0);
  v4 = v14;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AAD13F0](i, a1);
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = sub_22A4DE0EC();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v9 = *(v14 + 16);
      v8 = *(v14 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_229583334((v8 > 1), v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      v10 = v14 + 16 * v9;
      *(v10 + 32) = v12;
      *(v10 + 40) = v13;
      if (v7 == v2)
      {
        return v4;
      }
    }
  }

  v2 = sub_22A4DE0EC();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t sub_22986B134(unint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_22A4DE0EC();
    sub_22A4DE29C();
    v3 = sub_22A4DE0EC();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22A4DE29C();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x22AAD13F0](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_22A4DE27C();
        v7 = *(v9 + 16);
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

uint64_t sub_22986B2A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_229583B88(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2295404B0(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_229583B88((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_22986B3D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F20, &qword_22A5868D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = sub_22A4DBCFC();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  (*(v9 + 32))(&v15[v14], v12, v8);
  aBlock[4] = sub_2298903DC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_116;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  [a2 performBlock_];
  _Block_release(v16);
}

void sub_22986B5B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F18, &qword_22A5868C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = sub_22A4DBCFC();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  (*(v9 + 32))(&v15[v14], v12, v8);
  aBlock[4] = sub_229890384;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_110;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  [a2 performBlock_];
  _Block_release(v16);
}

void sub_22986B7A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = sub_22A4DBCFC();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  (*(v9 + 32))(&v15[v14], v12, v8);
  aBlock[4] = sub_22988FB4C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_47;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  [a2 performBlock_];
  _Block_release(v16);
}

void sub_22986B988(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F28, &qword_22A5868D8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = sub_22A4DBCFC();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  (*(v9 + 32))(&v15[v14], v12, v8);
  aBlock[4] = sub_229890424;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_122;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  [a2 performBlock_];
  _Block_release(v16);
}

void sub_22986BB70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881EF8, &qword_22A5868C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = sub_22A4DBCFC();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  (*(v9 + 32))(&v15[v14], v12, v8);
  aBlock[4] = sub_2298902AC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_104;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  [a2 performBlock_];
  _Block_release(v16);
}

void sub_22986BD58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F38, &qword_22A5868E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = sub_22A4DBCFC();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = v13;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  (*(v9 + 32))(&v15[v14], v12, v8);
  aBlock[4] = sub_22989055C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_128;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  [a2 performBlock_];
  _Block_release(v16);
}

uint64_t sub_22986BF40()
{
  v0 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DBCEC();
  sub_22A4DBD1C();
}

void *sub_22986C028(void *(*a1)(__int128 *__return_ptr))
{
  result = a1(&v3);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F20, &qword_22A5868D0);
    return sub_22A4DD8FC();
  }

  return result;
}

uint64_t sub_22986C0A0(uint64_t (*a1)(void))
{
  result = a1();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8FC();
  }

  return result;
}

void *sub_22986C100(void *(*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  result = a1(&v9);
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_22A4DD8FC();
  }

  return result;
}

uint64_t sub_22986C178(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v12 = a4(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v21 - v18;
  result = a1(v17);
  if (!v7)
  {
    sub_2298905CC(v19, v16, a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    sub_22A4DD8FC();
    return sub_229890634(v19, a5);
  }

  return result;
}

void sub_22986C2C4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = &v88 - v7;
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v95 = (&v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v88 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v88 - v16;
  v94 = ObjectType;
  sub_229541CB0(ObjectType, &off_283CE8678);
  v18 = v2;
  v19 = a1;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCCC();

  v22 = os_log_type_enabled(v20, v21);
  v92 = v8;
  v93 = v18;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v91 = v9;
    v88 = v25;
    v98[0] = v25;
    *v23 = 136315394;
    v96 = 91;
    v97 = 0xE100000000000000;
    v26 = v18;
    v27 = [v26 description];
    v90 = v19;
    v28 = v27;
    v29 = v15;
    v30 = sub_22A4DD5EC();
    v32 = v31;

    v33 = v30;
    v15 = v29;
    MEMORY[0x22AAD08C0](v33, v32);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v34 = sub_2295A3E30(v96, v97, v98);

    *(v23 + 4) = v34;
    v19 = v90;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v19;
    *v24 = v19;
    v35 = v19;
    _os_log_impl(&dword_229538000, v20, v21, "%s Received demo mode request message: %@", v23, 0x16u);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    v36 = v88;
    __swift_destroy_boxed_opaque_existential_0(v88);
    v9 = v91;
    MEMORY[0x22AAD4E50](v36, -1, -1);
    v37 = v23;
    v8 = v92;
    MEMORY[0x22AAD4E50](v37, -1, -1);
  }

  v38 = *(v9 + 8);
  v38(v17, v8);
  v39 = [v19 numberForKey_];
  if (v39 && (v40 = v39, v41 = [v39 unsignedIntValue], v40, v41 == 2))
  {
    v42 = [v19 numberForKey_];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 unsignedIntegerValue];

      v45 = sub_22A4DD9DC();
      v46 = v89;
      (*(*(v45 - 8) + 56))(v89, 1, 1, v45);
      v47 = swift_allocObject();
      v47[2] = 0;
      v47[3] = 0;
      v48 = v93;
      v47[4] = v44;
      v47[5] = v48;
      v47[6] = v19;
      v47[7] = v44;
      v47[8] = v94;
      v49 = v48;
      v50 = v19;
      sub_22957F3C0(0, 0, v46, &unk_22A586878, v47);

      return;
    }

    v90 = v19;
    sub_229541CB0(v94, &off_283CE8678);
    v72 = v93;
    v73 = sub_22A4DD05C();
    v74 = sub_22A4DDCEC();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v98[0] = v76;
      *v75 = 136315138;
      v96 = 91;
      v97 = 0xE100000000000000;
      v77 = v72;
      v78 = [v77 description];
      v79 = sub_22A4DD5EC();
      v95 = v38;
      v80 = v79;
      v82 = v81;

      MEMORY[0x22AAD08C0](v80, v82);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v83 = sub_2295A3E30(v96, v97, v98);

      *(v75 + 4) = v83;
      _os_log_impl(&dword_229538000, v73, v74, "%s Invalid demo request type", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x22AAD4E50](v76, -1, -1);
      MEMORY[0x22AAD4E50](v75, -1, -1);

      v95(v15, v92);
    }

    else
    {

      v38(v15, v8);
    }

    type metadata accessor for HMError(0);
    v98[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v85 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v86;
    *(inited + 48) = 0xD00000000000001DLL;
    *(inited + 56) = 0x800000022A59A450;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v87 = v96;
    v71 = sub_22A4DB3DC();

    [v90 respondWithError_];
  }

  else
  {
    v51 = v38;
    v52 = v95;
    sub_229541CB0(v94, &off_283CE8678);
    v53 = v93;
    v54 = sub_22A4DD05C();
    v55 = sub_22A4DDCEC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v98[0] = v57;
      *v56 = 136315138;
      v96 = 91;
      v97 = 0xE100000000000000;
      v58 = v53;
      v59 = v19;
      v60 = [v58 description];
      v61 = sub_22A4DD5EC();
      v91 = v9;
      v63 = v62;

      MEMORY[0x22AAD08C0](v61, v63);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v64 = sub_2295A3E30(v96, v97, v98);

      *(v56 + 4) = v64;
      v19 = v59;
      _os_log_impl(&dword_229538000, v54, v55, "%s Invalid demo mode version", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AAD4E50](v57, -1, -1);
      MEMORY[0x22AAD4E50](v56, -1, -1);

      v65 = v95;
      v66 = v92;
    }

    else
    {

      v65 = v52;
      v66 = v8;
    }

    v51(v65, v66);
    type metadata accessor for HMError(0);
    v98[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_22A576180;
    v68 = *MEMORY[0x277CCA450];
    *(v67 + 32) = sub_22A4DD5EC();
    *(v67 + 72) = MEMORY[0x277D837D0];
    *(v67 + 40) = v69;
    *(v67 + 48) = 0xD000000000000019;
    *(v67 + 56) = 0x800000022A59A430;
    sub_22956AD8C(v67);
    swift_setDeallocating();
    sub_22953EAE4(v67 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v70 = v96;
    v71 = sub_22A4DB3DC();

    [v19 respondWithError_];
  }
}

uint64_t sub_22986CD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = sub_22A4DD07C();
  v8[19] = v9;
  v10 = *(v9 - 8);
  v8[20] = v10;
  v11 = *(v10 + 64) + 15;
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22986CE00, 0, 0);
}

uint64_t sub_22986CE00()
{
  v75 = v0;
  v1 = v0[14];
  if (v1 <= 2)
  {
    if (v1 == 1)
    {
      v15 = swift_task_alloc();
      v0[29] = v15;
      *v15 = v0;
      v15[1] = sub_22986D9C8;
      v17 = v0[15];
      v16 = v0[16];

      return sub_229870DA0(v16);
    }

    else
    {
      if (v1 != 2)
      {
LABEL_22:
        v18 = v0[22];
        v19 = v0[15];
        sub_229541CB0(v0[18], &off_283CE8678);
        v20 = v19;
        v21 = sub_22A4DD05C();
        v22 = sub_22A4DDCEC();

        v23 = os_log_type_enabled(v21, v22);
        v24 = v0[22];
        v25 = v0[19];
        v26 = v0[20];
        if (v23)
        {
          v68 = v0[17];
          v70 = v0[22];
          v27 = v0[15];
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = 136315394;
          v72 = v29;
          v73 = 91;
          v74 = 0xE100000000000000;
          v30 = v27;
          v31 = [v30 description];
          v32 = sub_22A4DD5EC();
          v66 = v25;
          v34 = v33;

          MEMORY[0x22AAD08C0](v32, v34);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v35 = sub_2295A3E30(91, 0xE100000000000000, &v72);

          *(v28 + 4) = v35;
          *(v28 + 12) = 2048;
          *(v28 + 14) = v68;
          _os_log_impl(&dword_229538000, v21, v22, "%s Unsupported request type: %lu", v28, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x22AAD4E50](v29, -1, -1);
          MEMORY[0x22AAD4E50](v28, -1, -1);

          (*(v26 + 8))(v70, v66);
        }

        else
        {

          (*(v26 + 8))(v24, v25);
        }

        type metadata accessor for HMError(0);
        v0[13] = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22A576180;
        v37 = *MEMORY[0x277CCA450];
        *(inited + 32) = sub_22A4DD5EC();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v38;
        *(inited + 48) = 0xD000000000000018;
        *(inited + 56) = 0x800000022A59A470;
        sub_22956AD8C(inited);
        swift_setDeallocating();
        sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
        sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
        sub_22A4DB3CC();
        v39 = v0[12];
        swift_willThrow();
        v40 = v0[21];
        v41 = v0[15];
        sub_229541CB0(v0[18], &off_283CE8678);
        v42 = v41;
        v43 = v39;
        v44 = sub_22A4DD05C();
        v45 = sub_22A4DDCEC();

        v46 = os_log_type_enabled(v44, v45);
        v48 = v0[20];
        v47 = v0[21];
        v49 = v0[19];
        if (v46)
        {
          v71 = v0[21];
          v50 = v0[15];
          v51 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v51 = 136315394;
          v72 = v69;
          v73 = 91;
          v74 = 0xE100000000000000;
          v52 = v50;
          v67 = v49;
          v53 = [v52 description];
          v54 = sub_22A4DD5EC();
          v56 = v55;

          MEMORY[0x22AAD08C0](v54, v56);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v57 = sub_2295A3E30(v73, v74, &v72);

          *(v51 + 4) = v57;
          *(v51 + 12) = 2112;
          v58 = v39;
          v59 = _swift_stdlib_bridgeErrorToNSError();
          *(v51 + 14) = v59;
          *v65 = v59;
          _os_log_impl(&dword_229538000, v44, v45, "%s Failed to handle demo accessory request with error: %@", v51, 0x16u);
          sub_22953EAE4(v65, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v65, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v69);
          MEMORY[0x22AAD4E50](v69, -1, -1);
          MEMORY[0x22AAD4E50](v51, -1, -1);

          (*(v48 + 8))(v71, v67);
        }

        else
        {

          (*(v48 + 8))(v47, v49);
        }

        v60 = v0[16];
        v61 = sub_22A4DB3DC();
        [v60 respondWithError_];

        v63 = v0[21];
        v62 = v0[22];

        v64 = v0[1];

        return v64();
      }

      v6 = swift_task_alloc();
      v0[27] = v6;
      *v6 = v0;
      v6[1] = sub_22986D8B4;
      v8 = v0[15];
      v7 = v0[16];

      return sub_229870130(v7);
    }
  }

  else
  {
    switch(v1)
    {
      case 5:
        v9 = swift_task_alloc();
        v0[31] = v9;
        *v9 = v0;
        v9[1] = sub_22986DADC;
        v11 = v0[15];
        v10 = v0[16];

        return sub_229872810(v10);
      case 4:
        v12 = swift_task_alloc();
        v0[25] = v12;
        *v12 = v0;
        v12[1] = sub_22986D7A0;
        v14 = v0[15];
        v13 = v0[16];

        return sub_22986F650(v13);
      case 3:
        v2 = swift_task_alloc();
        v0[23] = v2;
        *v2 = v0;
        v2[1] = sub_22986D614;
        v4 = v0[15];
        v3 = v0[16];

        return sub_22986EAA4(v3);
      default:
        goto LABEL_22;
    }
  }
}

uint64_t sub_22986D614()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_22986DCD0;
  }

  else
  {
    v3 = sub_22986D728;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22986D728()
{
  [*(v0 + 128) respondWithSuccess];
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22986D7A0()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_22986DF94;
  }

  else
  {
    v3 = sub_2298906E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22986D8B4()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_22986E258;
  }

  else
  {
    v3 = sub_2298906E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22986D9C8()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_22986E51C;
  }

  else
  {
    v3 = sub_2298906E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22986DADC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = sub_22986E7E0;
  }

  else
  {
    *(v4 + 264) = a1;
    v7 = sub_22986DC04;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22986DC04()
{
  v1 = v0[33];
  v2 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v3 = sub_22A4DD47C();

  [v2 respondWithPayload_];

  v5 = v0[21];
  v4 = v0[22];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22986DCD0()
{
  v33 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[15];
  sub_229541CB0(v0[18], &off_283CE8678);
  v4 = v3;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  if (v8)
  {
    v31 = v0[21];
    v12 = v0[15];
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136315394;
    v32[0] = v30;
    v32[1] = 91;
    v32[2] = 0xE100000000000000;
    v14 = v12;
    v29 = v11;
    v15 = [v14 description];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(91, 0xE100000000000000, v32);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v21;
    *v28 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "%s Failed to handle demo accessory request with error: %@", v13, 0x16u);
    sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AAD4E50](v30, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    (*(v10 + 8))(v31, v29);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = v0[16];
  v23 = sub_22A4DB3DC();
  [v22 respondWithError_];

  v25 = v0[21];
  v24 = v0[22];

  v26 = v0[1];

  return v26();
}

uint64_t sub_22986DF94()
{
  v33 = v0;
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[15];
  sub_229541CB0(v0[18], &off_283CE8678);
  v4 = v3;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  if (v8)
  {
    v31 = v0[21];
    v12 = v0[15];
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136315394;
    v32[0] = v30;
    v32[1] = 91;
    v32[2] = 0xE100000000000000;
    v14 = v12;
    v29 = v11;
    v15 = [v14 description];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(91, 0xE100000000000000, v32);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v21;
    *v28 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "%s Failed to handle demo accessory request with error: %@", v13, 0x16u);
    sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AAD4E50](v30, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    (*(v10 + 8))(v31, v29);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = v0[16];
  v23 = sub_22A4DB3DC();
  [v22 respondWithError_];

  v25 = v0[21];
  v24 = v0[22];

  v26 = v0[1];

  return v26();
}

uint64_t sub_22986E258()
{
  v33 = v0;
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[15];
  sub_229541CB0(v0[18], &off_283CE8678);
  v4 = v3;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  if (v8)
  {
    v31 = v0[21];
    v12 = v0[15];
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136315394;
    v32[0] = v30;
    v32[1] = 91;
    v32[2] = 0xE100000000000000;
    v14 = v12;
    v29 = v11;
    v15 = [v14 description];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(91, 0xE100000000000000, v32);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v21;
    *v28 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "%s Failed to handle demo accessory request with error: %@", v13, 0x16u);
    sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AAD4E50](v30, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    (*(v10 + 8))(v31, v29);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = v0[16];
  v23 = sub_22A4DB3DC();
  [v22 respondWithError_];

  v25 = v0[21];
  v24 = v0[22];

  v26 = v0[1];

  return v26();
}

uint64_t sub_22986E51C()
{
  v33 = v0;
  v1 = v0[30];
  v2 = v0[21];
  v3 = v0[15];
  sub_229541CB0(v0[18], &off_283CE8678);
  v4 = v3;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  if (v8)
  {
    v31 = v0[21];
    v12 = v0[15];
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136315394;
    v32[0] = v30;
    v32[1] = 91;
    v32[2] = 0xE100000000000000;
    v14 = v12;
    v29 = v11;
    v15 = [v14 description];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(91, 0xE100000000000000, v32);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v21;
    *v28 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "%s Failed to handle demo accessory request with error: %@", v13, 0x16u);
    sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AAD4E50](v30, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    (*(v10 + 8))(v31, v29);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = v0[16];
  v23 = sub_22A4DB3DC();
  [v22 respondWithError_];

  v25 = v0[21];
  v24 = v0[22];

  v26 = v0[1];

  return v26();
}

uint64_t sub_22986E7E0()
{
  v33 = v0;
  v1 = v0[32];
  v2 = v0[21];
  v3 = v0[15];
  sub_229541CB0(v0[18], &off_283CE8678);
  v4 = v3;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  if (v8)
  {
    v31 = v0[21];
    v12 = v0[15];
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136315394;
    v32[0] = v30;
    v32[1] = 91;
    v32[2] = 0xE100000000000000;
    v14 = v12;
    v29 = v11;
    v15 = [v14 description];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(91, 0xE100000000000000, v32);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v21;
    *v28 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "%s Failed to handle demo accessory request with error: %@", v13, 0x16u);
    sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AAD4E50](v30, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    (*(v10 + 8))(v31, v29);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = v0[16];
  v23 = sub_22A4DB3DC();
  [v22 respondWithError_];

  v25 = v0[21];
  v24 = v0[22];

  v26 = v0[1];

  return v26();
}

uint64_t sub_22986EAA4(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = sub_22A4DB57C();
  v2[22] = v6;
  v7 = *(v6 - 8);
  v2[23] = v7;
  v8 = *(v7 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22986EC28, 0, 0);
}

uint64_t sub_22986EC28()
{
  v117 = v0;
  v116[1] = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 120) numberForKey_];
  if (v1)
  {
    v2 = v1;
    if ([v1 BOOLValue])
    {
      v3 = *(v0 + 128);
      sub_2298780EC();
    }

    else
    {
      v101 = v2;
      v22 = *(v0 + 216);
      v23 = *(v0 + 176);
      v24 = *(v0 + 184);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D130, &qword_22A578028);
      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v110 = *(v24 + 72);
      v26 = swift_allocObject() + v25;
      v27 = getStoreDirectoryPath();
      sub_22A4DD5EC();

      sub_22A4DB4CC();

      sub_22A4DB4FC();
      v28 = *(v24 + 8);
      v28(v22, v23);
      v29 = NSTemporaryDirectory();
      if (!v29)
      {
        sub_22A4DD5EC();
        v29 = sub_22A4DD5AC();
      }

      v30 = *(v0 + 208);
      v31 = *(v0 + 176);
      v32 = *(v0 + 184);
      v33 = *(v0 + 152);
      v112 = *(v0 + 128);
      v34 = [objc_opt_self() fileURLWithPath:v29 isDirectory:1];

      sub_22A4DB51C();
      sub_22A4DB4FC();
      v28(v30, v31);
      v111 = OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager;
      v114 = *(v32 + 16);
      v108 = (v33 + 8);
      v35 = 2;
      v36 = v110;
      v37 = v28;
      v109 = v28;
      v114(*(v0 + 200), v26, *(v0 + 176));
      while (1)
      {
        v39 = *(v112 + v111);
        v40 = [v39 fileManager];
        if (!v40)
        {
          __break(1u);
LABEL_29:
          __break(1u);
        }

        v41 = v40;
        v42 = *(v0 + 200);
        v43 = sub_22A4DB4EC();
        v44 = [v41 fileExistsAtURL_];

        swift_unknownObjectRelease();
        if (v44)
        {
          v46 = *(v0 + 192);
          v45 = *(v0 + 200);
          v48 = *(v0 + 168);
          v47 = *(v0 + 176);
          v49 = *(v0 + 128);
          sub_229541CB0(*(v0 + 136), &off_283CE8678);
          v114(v46, v45, v47);
          v50 = v49;
          v51 = sub_22A4DD05C();
          v52 = sub_22A4DDCCC();

          v53 = os_log_type_enabled(v51, v52);
          v54 = *(v0 + 192);
          v55 = *(v0 + 168);
          v56 = *(v0 + 176);
          v57 = *(v0 + 144);
          if (v53)
          {
            log = v51;
            v58 = *(v0 + 128);
            v103 = v52;
            v59 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v116[0] = v105;
            *v59 = 136315394;
            v60 = v58;
            v106 = v55;
            v61 = [v60 description];
            v104 = v57;
            v62 = sub_22A4DD5EC();
            v102 = v54;
            v64 = v63;

            MEMORY[0x22AAD08C0](v62, v64);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v65 = sub_2295A3E30(91, 0xE100000000000000, v116);

            *(v59 + 4) = v65;
            *(v59 + 12) = 2080;
            sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260]);
            v66 = sub_22A4DE5CC();
            v68 = v67;
            v37 = v109;
            v109(v102, v56);
            v69 = sub_2295A3E30(v66, v68, v116);

            *(v59 + 14) = v69;
            _os_log_impl(&dword_229538000, log, v103, "%s Removing the demo mode backup from: %s", v59, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v105, -1, -1);
            MEMORY[0x22AAD4E50](v59, -1, -1);

            (*v108)(v106, v104);
          }

          else
          {

            v70 = v54;
            v37 = v109;
            v109(v70, v56);
            (*v108)(v55, v57);
          }

          v71 = [v39 fileManager];
          v36 = v110;
          if (!v71)
          {
            goto LABEL_29;
          }

          v72 = v71;
          v73 = *(v0 + 200);
          v74 = sub_22A4DB4EC();
          *(v0 + 112) = 0;
          v75 = [v72 removeItemAtURL:v74 error:v0 + 112];

          swift_unknownObjectRelease();
          v76 = *(v0 + 112);
          if (!v75)
          {
            v77 = *(v0 + 200);
            v78 = *(v0 + 176);
            swift_setDeallocating();
            v79 = v76;
            swift_arrayDestroy();
            swift_deallocClassInstance();
            sub_22A4DB3EC();

            swift_willThrow();
            v37(v77, v78);
            goto LABEL_24;
          }

          v38 = v76;
        }

        v37(*(v0 + 200), *(v0 + 176));
        v26 += v36;
        if (!--v35)
        {
          break;
        }

        v114(*(v0 + 200), v26, *(v0 + 176));
      }

      v80 = *(v0 + 176);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }

    v82 = *(v0 + 208);
    v81 = *(v0 + 216);
    v84 = *(v0 + 192);
    v83 = *(v0 + 200);
    v86 = *(v0 + 160);
    v85 = *(v0 + 168);

    v87 = *(v0 + 8);
    v88 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v4 = *(v0 + 160);
    v5 = *(v0 + 128);
    sub_229541CB0(*(v0 + 136), &off_283CE8678);
    v6 = v5;
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCEC();

    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 144);
    if (v9)
    {
      v115 = *(v0 + 160);
      v13 = *(v0 + 128);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v116[0] = v15;
      *v14 = 136315138;
      v16 = v13;
      v17 = [v16 description];
      v18 = sub_22A4DD5EC();
      v113 = v12;
      v20 = v19;

      MEMORY[0x22AAD08C0](v18, v20);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v21 = sub_2295A3E30(91, 0xE100000000000000, v116);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_229538000, v7, v8, "%s Invalid demo mode lock state", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);

      (*(v11 + 8))(v115, v113);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    type metadata accessor for HMError(0);
    *(v0 + 104) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    v90 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v91;
    *(inited + 48) = 0xD00000000000001CLL;
    *(inited + 56) = 0x800000022A59A490;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v92 = *(v0 + 96);
    swift_willThrow();
LABEL_24:
    v94 = *(v0 + 208);
    v93 = *(v0 + 216);
    v96 = *(v0 + 192);
    v95 = *(v0 + 200);
    v98 = *(v0 + 160);
    v97 = *(v0 + 168);

    v87 = *(v0 + 8);
    v99 = *MEMORY[0x277D85DE8];
  }

  return v87();
}

uint64_t sub_22986F650(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_22A4DB57C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22986F748, 0, 0);
}

uint64_t sub_22986F748()
{
  v16 = v0;
  v15 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) numberForKey_];
  if (v1)
  {
    v14 = 2;
    v2 = v1;
    MEMORY[0x22AAD0A90](v1, &v14);

    if (v14 != 2 && (v14 & 1) != 0)
    {
      if (qword_2814028E0 != -1)
      {
        swift_once();
      }

      v3 = qword_281405070;
      *(v0 + 80) = qword_281405070;
      v4 = sub_22986F978;
LABEL_11:
      v8 = *MEMORY[0x277D85DE8];

      return MEMORY[0x2822009F8](v4, v3, 0);
    }
  }

  v5 = [*(v0 + 32) stringForKey_];
  v6 = *(v0 + 72);
  if (v5)
  {
    v7 = v5;
    sub_22A4DD5EC();

    sub_22A4DB4CC();

    if (qword_2814028E0 != -1)
    {
      swift_once();
    }

    v3 = qword_281405070;
    *(v0 + 88) = qword_281405070;
    v4 = sub_22986FA4C;
    goto LABEL_11;
  }

  v9 = *(v0 + 64);
  v10 = *(v0 + 72);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_22986F978()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[10];
  sub_229797534(1);
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_22986FA4C()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 88);
  sub_229797860(*(v0 + 72));
  *(v0 + 96) = 0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22986FB0C, 0, 0);
}

uint64_t sub_22986FB0C()
{
  v40 = *MEMORY[0x277D85DE8];
  if (qword_2814028E8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = __swift_project_value_buffer(v3, qword_281405088);
  (*(v2 + 16))(v1, v5, v3);
  v6 = *(v4 + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager);
  v7 = [v6 fileManager];
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  v9 = v0[8];
  v10 = sub_22A4DB4EC();
  v11 = [v8 fileExistsAtURL_];
  swift_unknownObjectRelease();

  if (v11)
  {
    v12 = [v6 fileManager];
    if (!v12)
    {
LABEL_18:
      __break(1u);
      return MEMORY[0x2822009F8](v12, v13, v14);
    }

    v15 = v12;
    v16 = v0[8];
    v17 = sub_22A4DB4EC();
    v0[3] = 0;
    v18 = [v15 removeItemAtURL:v17 error:v0 + 3];

    swift_unknownObjectRelease();
    v19 = v0[3];
    if (!v18)
    {
      goto LABEL_13;
    }

    v20 = v19;
  }

  v12 = [v6 fileManager];
  if (!v12)
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = v12;
  v23 = v0[8];
  v22 = v0[9];
  v24 = sub_22A4DB4EC();
  v25 = sub_22A4DB4EC();
  v0[2] = 0;
  LODWORD(v23) = [v21 copyItemAtURL:v24 toURL:v25 error:v0 + 2];

  swift_unknownObjectRelease();
  v19 = v0[2];
  if (v23)
  {
    v26 = v0[11];
    v27 = v19;
    v28 = *MEMORY[0x277D85DE8];
    v12 = sub_22986FE14;
    v13 = v26;
    v14 = 0;

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

LABEL_13:
  v30 = v0[8];
  v29 = v0[9];
  v31 = v0[6];
  v32 = v0[7];
  v33 = v19;
  sub_22A4DB3EC();

  swift_willThrow();
  v34 = *(v32 + 8);
  v34(v30, v31);
  v34(v29, v31);
  v36 = v0[8];
  v35 = v0[9];

  v37 = v0[1];
  v38 = *MEMORY[0x277D85DE8];

  return v37();
}

uint64_t sub_22986FE14()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  v2 = v0[12];
  sub_22979704C();
  v0[13] = v2;
  if (v2)
  {
    v3 = sub_229870058;
  }

  else
  {
    v3 = sub_22986FEC8;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22986FEC8()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[9];
  v2 = v0[6];
  v3 = *(v0[7] + 8);
  v3(v0[8], v2);
  v3(v1, v2);
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_22986FFA0()
{
  v7 = *MEMORY[0x277D85DE8];
  (*(v0[7] + 8))(v0[9], v0[6]);
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t sub_229870058()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[9];
  v2 = v0[6];
  v3 = *(v0[7] + 8);
  v3(v0[8], v2);
  v3(v1, v2);
  v4 = v0[13];
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_229870130(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v2[28] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[29] = v3;
  v4 = *(v3 - 8);
  v2[30] = v4;
  v5 = *(v4 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v6 = sub_22A4DB57C();
  v2[33] = v6;
  v7 = *(v6 - 8);
  v2[34] = v7;
  v8 = *(v7 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v9 = sub_22A4DB7DC();
  v2[37] = v9;
  v10 = *(v9 - 8);
  v2[38] = v10;
  v11 = *(v10 + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298702D8, 0, 0);
}

uint64_t sub_2298702D8()
{
  v122 = v0;
  v1 = [*(v0 + 208) uuidForKey_];
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = *(v0 + 320);
  v3 = *(v0 + 216);
  v4 = v1;
  sub_22A4DB79C();

  v5 = *(v3 + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager);
  v6 = sub_22A4DB77C();
  v7 = [v5 _homeWithUUID_];

  if (v7)
  {
    v8 = [*(v0 + 208) uuidForKey_];
    if (v8)
    {
      v9 = *(v0 + 312);
      v10 = v8;
      sub_22A4DB79C();

      v11 = sub_22A4DB77C();
      v12 = [v7 accessoryWithUUID_];

      if (v12)
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = v13;
          v15 = [v13 cameraProfiles];
          sub_229562F68(0, &qword_27D87D938, off_278666080);
          sub_22988FF24();
          v16 = sub_22A4DDB6C();

          if ((v16 & 0xC000000000000001) != 0)
          {
            v17 = sub_22A4DE0EC();
          }

          else
          {
            v17 = *(v16 + 16);
          }

          if (v17)
          {
            v41 = [*(v0 + 208) stringForKey_];
            if (v41)
            {
              v42 = *(v0 + 288);
              v43 = *(v0 + 216);
              v44 = v41;
              sub_22A4DD5EC();

              sub_22A4DB4CC();

              sub_229888888(v42, v14);
              v45 = *(v0 + 312);
              v117 = *(v0 + 320);
              v46 = *(v0 + 296);
              v47 = *(v0 + 304);
              v48 = *(v0 + 288);
              v50 = *(v0 + 264);
              v49 = *(v0 + 272);

              (*(v49 + 8))(v48, v50);
              v51 = *(v47 + 8);
              v51(v45, v46);
              v51(v117, v46);
              goto LABEL_13;
            }

            v72 = *(v0 + 256);
            v73 = *(v0 + 216);
            sub_229541CB0(*(v0 + 224), &off_283CE8678);
            v74 = v73;
            v75 = v12;
            v76 = sub_22A4DD05C();
            v77 = sub_22A4DDCEC();

            v78 = os_log_type_enabled(v76, v77);
            v79 = *(v0 + 256);
            v80 = *(v0 + 232);
            v81 = *(v0 + 240);
            v118 = v75;
            if (v78)
            {
              loga = v76;
              v82 = *(v0 + 216);
              v83 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v114 = swift_slowAlloc();
              *v83 = 136315394;
              v119 = v114;
              v120 = 91;
              v121 = 0xE100000000000000;
              v84 = v82;
              v112 = v79;
              v85 = v75;
              v86 = [v84 description];
              v110 = v80;
              v87 = sub_22A4DD5EC();
              v106 = v77;
              v89 = v88;

              MEMORY[0x22AAD08C0](v87, v89);

              MEMORY[0x22AAD08C0](93, 0xE100000000000000);
              v90 = sub_2295A3E30(91, 0xE100000000000000, &v119);

              *(v83 + 4) = v90;
              *(v83 + 12) = 2112;
              *(v83 + 14) = v14;
              *v108 = v14;
              v91 = v85;
              _os_log_impl(&dword_229538000, loga, v106, "%s Invalid content path: %@", v83, 0x16u);
              sub_22953EAE4(v108, &qword_27D87D7D0, &unk_22A578D90);
              MEMORY[0x22AAD4E50](v108, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v114);
              MEMORY[0x22AAD4E50](v114, -1, -1);
              MEMORY[0x22AAD4E50](v83, -1, -1);

              (*(v81 + 8))(v112, v110);
            }

            else
            {

              (*(v81 + 8))(v79, v80);
            }

            v93 = *(v0 + 312);
            v92 = *(v0 + 320);
            v94 = *(v0 + 296);
            v95 = *(v0 + 304);
            type metadata accessor for HMError(0);
            *(v0 + 184) = 3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22A576180;
            v101 = *MEMORY[0x277CCA450];
            *(inited + 32) = sub_22A4DD5EC();
            *(inited + 72) = MEMORY[0x277D837D0];
            *(inited + 40) = v102;
            *(inited + 48) = 0xD000000000000017;
            *(inited + 56) = 0x800000022A59A4B0;
            sub_22956AD8C(inited);
            swift_setDeallocating();
            sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
            sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
            sub_22A4DB3CC();
            v103 = *(v0 + 176);
          }

          else
          {
            v52 = *(v0 + 248);
            v53 = *(v0 + 216);
            sub_229541CB0(*(v0 + 224), &off_283CE8678);
            v54 = v53;
            v55 = v12;
            v56 = sub_22A4DD05C();
            v57 = sub_22A4DDCEC();

            v58 = os_log_type_enabled(v56, v57);
            v60 = *(v0 + 240);
            v59 = *(v0 + 248);
            v61 = *(v0 + 232);
            v118 = v55;
            if (v58)
            {
              log = v56;
              v62 = *(v0 + 216);
              v63 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              *v63 = 136315394;
              v119 = v113;
              v120 = 91;
              v121 = 0xE100000000000000;
              v64 = v62;
              v111 = v59;
              v65 = v55;
              v66 = [v64 description];
              v109 = v61;
              v67 = sub_22A4DD5EC();
              v105 = v57;
              v69 = v68;

              MEMORY[0x22AAD08C0](v67, v69);

              MEMORY[0x22AAD08C0](93, 0xE100000000000000);
              v70 = sub_2295A3E30(91, 0xE100000000000000, &v119);

              *(v63 + 4) = v70;
              *(v63 + 12) = 2112;
              *(v63 + 14) = v14;
              *v107 = v14;
              v71 = v65;
              _os_log_impl(&dword_229538000, log, v105, "%s Accessory is not a camera: %@", v63, 0x16u);
              sub_22953EAE4(v107, &qword_27D87D7D0, &unk_22A578D90);
              MEMORY[0x22AAD4E50](v107, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v113);
              MEMORY[0x22AAD4E50](v113, -1, -1);
              MEMORY[0x22AAD4E50](v63, -1, -1);

              (*(v60 + 8))(v111, v109);
            }

            else
            {

              (*(v60 + 8))(v59, v61);
            }

            v93 = *(v0 + 312);
            v92 = *(v0 + 320);
            v94 = *(v0 + 296);
            v95 = *(v0 + 304);
            type metadata accessor for HMError(0);
            *(v0 + 200) = 48;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
            v96 = swift_initStackObject();
            *(v96 + 16) = xmmword_22A576180;
            v97 = *MEMORY[0x277CCA450];
            *(v96 + 32) = sub_22A4DD5EC();
            *(v96 + 72) = MEMORY[0x277D837D0];
            *(v96 + 40) = v98;
            *(v96 + 48) = 0xD000000000000019;
            *(v96 + 56) = 0x800000022A59A4D0;
            sub_22956AD8C(v96);
            swift_setDeallocating();
            sub_22953EAE4(v96 + 32, &qword_27D87CDA0, &unk_22A57A930);
            sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
            sub_22A4DB3CC();
            v99 = *(v0 + 192);
          }

          swift_willThrow();

          v104 = *(v95 + 8);
          v104(v93, v94);
          v104(v92, v94);
          v28 = *(v0 + 312);
          v27 = *(v0 + 320);
          v30 = *(v0 + 280);
          v29 = *(v0 + 288);
          v32 = *(v0 + 248);
          v31 = *(v0 + 256);

          v39 = *(v0 + 8);
          goto LABEL_16;
        }
      }

      else
      {
        v12 = v7;
      }

      v18 = *(v0 + 312);
      v19 = *(v0 + 320);
      v20 = *(v0 + 296);
      v21 = *(v0 + 304);

      v22 = *(v21 + 8);
      v22(v18, v20);
      v22(v19, v20);
    }

    else
    {
      (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
    }
  }

  else
  {
    (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
  }

LABEL_13:
  v23 = [*(v0 + 208) stringForKey_];
  if (v23)
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 216);
    v26 = v23;
    sub_22A4DD5EC();

    sub_22A4DB4CC();

    sub_229889C04(v24);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  }

  v34 = *(v0 + 312);
  v33 = *(v0 + 320);
  v36 = *(v0 + 280);
  v35 = *(v0 + 288);
  v38 = *(v0 + 248);
  v37 = *(v0 + 256);

  v39 = *(v0 + 8);
LABEL_16:

  return v39();
}

uint64_t sub_229870DA0(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v2[44] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[45] = v3;
  v4 = *(v3 - 8);
  v2[46] = v4;
  v5 = *(v4 + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v2[51] = v6;
  v7 = *(v6 - 8);
  v2[52] = v7;
  v8 = *(v7 + 64) + 15;
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229870F04, 0, 0);
}

uint64_t sub_229870F04()
{
  v156 = v0;
  v1 = [*(v0 + 336) uuidForKey_];
  if (v1)
  {
    v2 = *(v0 + 440);
    v3 = *(v0 + 344);
    v4 = v1;
    sub_22A4DB79C();

    v5 = *(v3 + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager);
    v6 = sub_22A4DB77C();
    v7 = [v5 _homeWithUUID_];
    *(v0 + 448) = v7;

    if (v7)
    {
      v8 = [*(v0 + 336) arrayForKey_];
      if (v8 && (v9 = v8, v10 = sub_22A4DD83C(), v9, v11 = sub_22986B2A8(v10), *(v0 + 456) = v11, , v11))
      {
        v12 = [*(v0 + 336) uuidForKey_];
        if (!v12)
        {
          v16 = 0;
          goto LABEL_23;
        }

        v13 = *(v0 + 432);
        v14 = v12;
        sub_22A4DB79C();

        v15 = sub_22A4DB77C();
        v16 = [v7 roomWithUUID_];

        v17 = *(v0 + 432);
        if (v16)
        {
          (*(*(v0 + 416) + 8))(*(v0 + 432), *(v0 + 408));
LABEL_23:
          *(v0 + 464) = v16;
          v85 = *(v11 + 16);
          *(v0 + 472) = v85;
          if (v85)
          {
            *(v0 + 480) = 0;
            *(v0 + 488) = 0;
            v86 = *(*(v0 + 456) + 32);
            *(v0 + 496) = v86;

            if (*(v86 + 16) && (v87 = sub_229543DBC(0x424472747461, 0xE600000000000000), (v88 & 1) != 0))
            {
              sub_2295404B0(*(v86 + 56) + 32 * v87, v0 + 256);
              sub_22953EAE4(v0 + 256, &unk_27D87DE60, &unk_22A57A960);
              v89 = swift_task_alloc();
              *(v0 + 520) = v89;
              *v89 = v0;
              v89[1] = sub_2298726E8;
              v90 = *(v0 + 464);
              v91 = *(v0 + 448);
              v92 = *(v0 + 344);

              return sub_22987C38C(v86, v91, v90);
            }

            else
            {
              *(v0 + 256) = 0u;
              *(v0 + 272) = 0u;
              sub_22953EAE4(v0 + 256, &unk_27D87DE60, &unk_22A57A960);
              v93 = swift_task_alloc();
              *(v0 + 504) = v93;
              *v93 = v0;
              v93[1] = sub_229871D8C;
              v94 = *(v0 + 464);
              v95 = *(v0 + 448);
              v96 = *(v0 + 344);

              return sub_2295A8D20(v86, v95, v94);
            }
          }

          (*(*(v0 + 416) + 8))(*(v0 + 440), *(v0 + 408));
          goto LABEL_15;
        }

        v98 = *(v0 + 416);
        v97 = *(v0 + 424);
        v100 = *(v0 + 400);
        v99 = *(v0 + 408);
        v102 = *(v0 + 344);
        v101 = *(v0 + 352);

        sub_229541CB0(v101, &off_283CE8678);
        (*(v98 + 16))(v97, v17, v99);
        v103 = v102;
        v104 = v7;
        v105 = sub_22A4DD05C();
        v106 = sub_22A4DDCEC();

        v149 = v104;
        v107 = os_log_type_enabled(v105, v106);
        v108 = *(v0 + 416);
        v109 = *(v0 + 424);
        v110 = *(v0 + 400);
        v111 = *(v0 + 408);
        v113 = *(v0 + 360);
        v112 = *(v0 + 368);
        if (v107)
        {
          loga = v105;
          v114 = *(v0 + 344);
          v142 = v106;
          v115 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          *v115 = 136315650;
          v153 = v144;
          v154 = 91;
          v155 = 0xE100000000000000;
          v116 = v114;
          v140 = v113;
          v117 = [v116 description];
          v139 = v110;
          v118 = sub_22A4DD5EC();
          v120 = v119;

          MEMORY[0x22AAD08C0](v118, v120);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v121 = sub_2295A3E30(91, 0xE100000000000000, &v153);

          *(v115 + 4) = v121;
          *(v115 + 12) = 2080;
          sub_22988FA1C(&qword_281403860, MEMORY[0x277CC95F0]);
          v122 = sub_22A4DE5CC();
          v124 = v123;
          v152 = *(v108 + 8);
          v152(v109, v111);
          v125 = sub_2295A3E30(v122, v124, &v153);

          *(v115 + 14) = v125;
          *(v115 + 22) = 2080;
          v126 = v149;
          v127 = [v149 shortDescription];
          v128 = sub_22A4DD5EC();
          v130 = v129;

          v131 = sub_2295A3E30(v128, v130, &v153);

          *(v115 + 24) = v131;
          _os_log_impl(&dword_229538000, loga, v142, "%s Unable to find room: %s in %s", v115, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v144, -1, -1);
          MEMORY[0x22AAD4E50](v115, -1, -1);

          (*(v112 + 8))(v139, v140);
        }

        else
        {

          v152 = *(v108 + 8);
          v152(v109, v111);
          (*(v112 + 8))(v110, v113);
          v126 = v149;
        }

        v133 = *(v0 + 432);
        v132 = *(v0 + 440);
        v134 = *(v0 + 408);
        type metadata accessor for HMError(0);
        *(v0 + 328) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22A576180;
        v136 = *MEMORY[0x277CCA450];
        *(inited + 32) = sub_22A4DD5EC();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v137;
        *(inited + 48) = 0xD000000000000013;
        *(inited + 56) = 0x800000022A59A5C0;
        sub_22956AD8C(inited);
        swift_setDeallocating();
        sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
        sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
        sub_22A4DB3CC();
        v138 = *(v0 + 320);
        swift_willThrow();

        v152(v133, v134);
        v152(v132, v134);
      }

      else
      {
        v18 = *(v0 + 384);
        v19 = *(v0 + 344);
        v20 = *(v0 + 336);
        sub_229541CB0(*(v0 + 352), &off_283CE8678);
        v21 = v19;
        v22 = v20;
        v23 = sub_22A4DD05C();
        v24 = sub_22A4DDCEC();

        v25 = os_log_type_enabled(v23, v24);
        v26 = *(v0 + 384);
        v27 = *(v0 + 360);
        v28 = *(v0 + 368);
        if (v25)
        {
          v150 = *(v0 + 384);
          v29 = *(v0 + 344);
          v143 = *(v0 + 336);
          v30 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          *v30 = 136315394;
          v153 = v147;
          v154 = 91;
          v155 = 0xE100000000000000;
          v31 = v29;
          log = v27;
          v32 = [v31 description];
          v33 = sub_22A4DD5EC();
          v35 = v34;

          MEMORY[0x22AAD08C0](v33, v35);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v36 = sub_2295A3E30(91, 0xE100000000000000, &v153);

          *(v30 + 4) = v36;
          *(v30 + 12) = 2112;
          *(v30 + 14) = v143;
          *v141 = v143;
          v37 = v143;
          _os_log_impl(&dword_229538000, v23, v24, "%s No demo accessories list found: %@", v30, 0x16u);
          sub_22953EAE4(v141, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v141, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v147);
          MEMORY[0x22AAD4E50](v147, -1, -1);
          MEMORY[0x22AAD4E50](v30, -1, -1);

          (*(v28 + 8))(v150, log);
        }

        else
        {

          (*(v28 + 8))(v26, v27);
        }

        v70 = *(v0 + 440);
        v71 = *(v0 + 408);
        v72 = *(v0 + 416);
        type metadata accessor for HMError(0);
        *(v0 + 312) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
        v73 = swift_initStackObject();
        *(v73 + 16) = xmmword_22A576180;
        v74 = *MEMORY[0x277CCA450];
        *(v73 + 32) = sub_22A4DD5EC();
        *(v73 + 72) = MEMORY[0x277D837D0];
        *(v73 + 40) = v75;
        *(v73 + 48) = 0xD00000000000001ELL;
        *(v73 + 56) = 0x800000022A59A5A0;
        sub_22956AD8C(v73);
        swift_setDeallocating();
        sub_22953EAE4(v73 + 32, &qword_27D87CDA0, &unk_22A57A930);
        sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
        sub_22A4DB3CC();
        v76 = *(v0 + 304);
        swift_willThrow();

        (*(v72 + 8))(v70, v71);
      }

      v78 = *(v0 + 432);
      v77 = *(v0 + 440);
      v79 = *(v0 + 424);
      v81 = *(v0 + 392);
      v80 = *(v0 + 400);
      v83 = *(v0 + 376);
      v82 = *(v0 + 384);

      v69 = *(v0 + 8);
      goto LABEL_19;
    }

    (*(*(v0 + 416) + 8))(*(v0 + 440), *(v0 + 408));
  }

  v38 = *(v0 + 376);
  v39 = *(v0 + 344);
  sub_229541CB0(*(v0 + 352), &off_283CE8678);
  v40 = v39;
  v41 = sub_22A4DD05C();
  v42 = sub_22A4DDCEC();

  v43 = os_log_type_enabled(v41, v42);
  v45 = *(v0 + 368);
  v44 = *(v0 + 376);
  v46 = *(v0 + 360);
  if (v43)
  {
    v151 = *(v0 + 376);
    v47 = *(v0 + 344);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 136315138;
    v153 = v49;
    v154 = 91;
    v155 = 0xE100000000000000;
    v50 = v47;
    v51 = [v50 description];
    v52 = sub_22A4DD5EC();
    v148 = v46;
    v54 = v53;

    MEMORY[0x22AAD08C0](v52, v54);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v55 = sub_2295A3E30(91, 0xE100000000000000, &v153);

    *(v48 + 4) = v55;
    _os_log_impl(&dword_229538000, v41, v42, "%s Unable to find home", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x22AAD4E50](v49, -1, -1);
    MEMORY[0x22AAD4E50](v48, -1, -1);

    (*(v45 + 8))(v151, v148);
  }

  else
  {

    (*(v45 + 8))(v44, v46);
  }

  v56 = *(v0 + 336);
  type metadata accessor for HMError(0);
  *(v0 + 296) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_22A576180;
  v58 = *MEMORY[0x277CCA450];
  *(v57 + 32) = sub_22A4DD5EC();
  *(v57 + 72) = MEMORY[0x277D837D0];
  *(v57 + 40) = v59;
  *(v57 + 48) = 0xD000000000000013;
  *(v57 + 56) = 0x800000022A59A580;
  sub_22956AD8C(v57);
  swift_setDeallocating();
  sub_22953EAE4(v57 + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
  sub_22A4DB3CC();
  v60 = *(v0 + 288);
  v61 = sub_22A4DB3DC();

  [v56 respondWithError_];
LABEL_15:
  v63 = *(v0 + 432);
  v62 = *(v0 + 440);
  v64 = *(v0 + 424);
  v66 = *(v0 + 392);
  v65 = *(v0 + 400);
  v68 = *(v0 + 376);
  v67 = *(v0 + 384);

  v69 = *(v0 + 8);
LABEL_19:

  return v69();
}

uint64_t sub_229871D8C()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 512) = v0;
    v5 = sub_2298721C0;
  }

  else
  {
    v6 = *(v2 + 496);

    v5 = sub_229871EB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229871EB4()
{
  v1 = *(v0 + 488) + 1;
  if (v1 == *(v0 + 472))
  {
    v2 = *(v0 + 480);
    v3 = *(v0 + 456);

    v4 = *(v0 + 464);
    v5 = *(v0 + 448);
    if (v2)
    {
      v6 = *(v0 + 440);
      v7 = *(v0 + 408);
      v8 = *(v0 + 416);
      swift_willThrow();

      (*(v8 + 8))(v6, v7);
      v10 = *(v0 + 432);
      v9 = *(v0 + 440);
      v11 = *(v0 + 424);
      v13 = *(v0 + 392);
      v12 = *(v0 + 400);
      v15 = *(v0 + 376);
      v14 = *(v0 + 384);
    }

    else
    {

      (*(*(v0 + 416) + 8))(*(v0 + 440), *(v0 + 408));
      v30 = *(v0 + 432);
      v29 = *(v0 + 440);
      v31 = *(v0 + 424);
      v33 = *(v0 + 392);
      v32 = *(v0 + 400);
      v35 = *(v0 + 376);
      v34 = *(v0 + 384);
    }

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    *(v0 + 488) = v1;
    v17 = *(*(v0 + 456) + 8 * v1 + 32);
    *(v0 + 496) = v17;

    if (*(v17 + 16) && (v18 = sub_229543DBC(0x424472747461, 0xE600000000000000), (v19 & 1) != 0))
    {
      sub_2295404B0(*(v17 + 56) + 32 * v18, v0 + 256);
      sub_22953EAE4(v0 + 256, &unk_27D87DE60, &unk_22A57A960);
      v20 = swift_task_alloc();
      *(v0 + 520) = v20;
      *v20 = v0;
      v20[1] = sub_2298726E8;
      v21 = *(v0 + 464);
      v22 = *(v0 + 448);
      v23 = *(v0 + 344);

      return sub_22987C38C(v17, v22, v21);
    }

    else
    {
      *(v0 + 256) = 0u;
      *(v0 + 272) = 0u;
      sub_22953EAE4(v0 + 256, &unk_27D87DE60, &unk_22A57A960);
      v25 = swift_task_alloc();
      *(v0 + 504) = v25;
      *v25 = v0;
      v25[1] = sub_229871D8C;
      v26 = *(v0 + 464);
      v27 = *(v0 + 448);
      v28 = *(v0 + 344);

      return sub_2295A8D20(v17, v27, v26);
    }
  }
}

uint64_t sub_2298721C0()
{
  v63 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 496);
  v3 = *(v0 + 392);
  sub_229541CB0(*(v0 + 352), &off_283CE8678);

  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 512);
    v8 = *(v0 + 496);
    v58 = *(v0 + 480);
    v59 = *(v0 + 368);
    v60 = *(v0 + 360);
    v61 = *(v0 + 392);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v62 = v11;
    *v9 = 136315394;
    v12 = sub_22A4DD4AC();
    v14 = v13;

    v15 = sub_2295A3E30(v12, v14, &v62);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_229538000, v5, v6, "Failed to create demo accessory: %s with error: %@", v9, 0x16u);
    sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);

    (*(v59 + 8))(v61, v60);
  }

  else
  {
    v18 = *(v0 + 496);
    v19 = *(v0 + 480);
    v20 = *(v0 + 392);
    v21 = *(v0 + 360);
    v22 = *(v0 + 368);

    (*(v22 + 8))(v20, v21);
  }

  v23 = *(v0 + 512);
  v24 = *(v0 + 488) + 1;
  if (v24 == *(v0 + 472))
  {
    v25 = *(v0 + 456);

    v26 = *(v0 + 464);
    v27 = *(v0 + 448);
    if (v23)
    {
      v28 = *(v0 + 440);
      v29 = *(v0 + 408);
      v30 = *(v0 + 416);
      swift_willThrow();

      (*(v30 + 8))(v28, v29);
      v32 = *(v0 + 432);
      v31 = *(v0 + 440);
      v33 = *(v0 + 424);
      v35 = *(v0 + 392);
      v34 = *(v0 + 400);
      v37 = *(v0 + 376);
      v36 = *(v0 + 384);
    }

    else
    {

      (*(*(v0 + 416) + 8))(*(v0 + 440), *(v0 + 408));
      v52 = *(v0 + 432);
      v51 = *(v0 + 440);
      v53 = *(v0 + 424);
      v55 = *(v0 + 392);
      v54 = *(v0 + 400);
      v57 = *(v0 + 376);
      v56 = *(v0 + 384);
    }

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    *(v0 + 480) = v23;
    *(v0 + 488) = v24;
    v39 = *(*(v0 + 456) + 8 * v24 + 32);
    *(v0 + 496) = v39;

    if (*(v39 + 16) && (v40 = sub_229543DBC(0x424472747461, 0xE600000000000000), (v41 & 1) != 0))
    {
      sub_2295404B0(*(v39 + 56) + 32 * v40, v0 + 256);
      sub_22953EAE4(v0 + 256, &unk_27D87DE60, &unk_22A57A960);
      v42 = swift_task_alloc();
      *(v0 + 520) = v42;
      *v42 = v0;
      v42[1] = sub_2298726E8;
      v43 = *(v0 + 464);
      v44 = *(v0 + 448);
      v45 = *(v0 + 344);

      return sub_22987C38C(v39, v44, v43);
    }

    else
    {
      *(v0 + 256) = 0u;
      *(v0 + 272) = 0u;
      sub_22953EAE4(v0 + 256, &unk_27D87DE60, &unk_22A57A960);
      v47 = swift_task_alloc();
      *(v0 + 504) = v47;
      *v47 = v0;
      v47[1] = sub_229871D8C;
      v48 = *(v0 + 464);
      v49 = *(v0 + 448);
      v50 = *(v0 + 344);

      return sub_2295A8D20(v39, v49, v48);
    }
  }
}

uint64_t sub_2298726E8()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 512) = v0;
    v5 = sub_2298721C0;
  }

  else
  {
    v6 = *(v2 + 496);

    v5 = sub_229871EB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229872810(uint64_t a1)
{
  v2[85] = v1;
  v2[84] = a1;
  v3 = sub_22A4DB57C();
  v2[86] = v3;
  v4 = *(v3 - 8);
  v2[87] = v4;
  v5 = *(v4 + 64) + 15;
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298728EC, 0, 0);
}

void sub_2298728EC()
{
  v1 = [*(v0 + 672) numberForKey_];
  if (v1)
  {
    v2 = v1;
    sub_22A4DDFEC();
  }

  type metadata accessor for HMError(0);
  *(v0 + 584) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = 0x6E6F73616552;
  v4 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0xD000000000000022;
  *(inited + 56) = 0x800000022A59A640;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(v4, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
  sub_22A4DB3CC();
  v5 = *(v0 + 576);
  swift_willThrow();
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);

  v9 = *(v0 + 8);

  v9();
}

uint64_t sub_229873554(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 736);
  v6 = *v2;
  *(*v2 + 744) = a1;

  v7 = v3[91];

  if (v1)
  {
    v8 = v4[90];
    v9 = v4[89];
    v10 = v4[88];

    v11 = *(v6 + 8);

    return v11();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2298736D8, 0, 0);
  }
}

uint64_t sub_2298736D8()
{
  v1 = v0[93];
  if (!v1)
  {
    v1 = sub_22956AC5C(MEMORY[0x277D84F90]);
  }

  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_229873778(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 752);
  v6 = *v2;

  v7 = v4[90];
  v8 = v4[89];
  v9 = v4[88];

  v11 = *(v6 + 8);
  if (!v1)
  {
    v10 = a1;
  }

  return v11(v10);
}

uint64_t sub_2298738E4()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[90];
    v6 = v2[89];
    v7 = v2[88];

    v8 = *(v4 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_229873A40, 0, 0);
  }
}

uint64_t sub_229873A40()
{
  v1 = sub_22956AC5C(MEMORY[0x277D84F90]);
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_229873AD8()
{
  v2 = *v1;
  v3 = *(*v1 + 768);
  v7 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v4 = sub_229873D10;
  }

  else
  {
    v5 = *(v2 + 728);

    v4 = sub_2298906FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229873BF4()
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v7 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v4 = sub_229873D9C;
  }

  else
  {
    v5 = *(v2 + 784);

    v4 = sub_2298906FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229873D10()
{
  v1 = v0[91];

  v2 = v0[97];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];

  v6 = v0[1];

  return v6();
}

uint64_t sub_229873D9C()
{
  v1 = v0[98];

  v2 = v0[100];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];

  v6 = v0[1];

  return v6();
}

void sub_229873E90()
{
  v49 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD27C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22A4DD07C();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *&v0[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_notificationCenter];
  [v11 addObserver:v0 selector:sel_handleNotification_ name:@"HMDAccessoryConfiguredNotification" object:0];
  [v11 addObserver:v0 selector:sel_handleNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:0];
  [v11 addObserver:v0 selector:sel_handleNotification_ name:@"HMDHomeRemovedNotification" object:0];
  [v11 addObserver:v0 selector:sel_handleNotification_ name:@"HMDHomeAddedNotification" object:0];
  [v11 addObserver:v0 selector:sel_handleNotification_ name:@"HMDAccessoryNameUpdatedNotification" object:0];
  if ([*&v0[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_demoModeDataSource] isDemoModeLocked])
  {
    v39 = v7;
    v40 = v2;
    sub_229541CB0(ObjectType, &off_283CE8678);
    v12 = v0;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCCC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v38 = ObjectType;
      v16 = v15;
      v37 = swift_slowAlloc();
      *out_token = v37;
      *v16 = 136315138;
      aBlock = 91;
      v43 = 0xE100000000000000;
      v17 = v12;
      v18 = [v17 description];
      v36 = v14;
      v19 = v18;
      v20 = sub_22A4DD5EC();
      v21 = v3;
      v22 = v12;
      v24 = v23;

      MEMORY[0x22AAD08C0](v20, v24);
      v12 = v22;
      v3 = v21;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v25 = sub_2295A3E30(aBlock, v43, out_token);

      *(v16 + 4) = v25;
      _os_log_impl(&dword_229538000, v13, v36, "%s Registering for shallow refresh", v16, 0xCu);
      v26 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      v27 = v16;
      ObjectType = v38;
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    (*(v41 + 8))(v10, v39);
    out_token[0] = -1;
    v28 = *MEMORY[0x277D29558];
    sub_229562F68(0, &qword_281401980, 0x277D85C78);
    v29 = v40;
    (*(v3 + 104))(v6, *MEMORY[0x277D851C8], v40);
    v30 = sub_22A4DDDEC();
    (*(v3 + 8))(v6, v29);
    v31 = swift_allocObject();
    *(v31 + 16) = v12;
    *(v31 + 24) = ObjectType;
    v46 = sub_22988FB94;
    v47 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_2298747B8;
    v45 = &block_descriptor_46_1;
    v32 = _Block_copy(&aBlock);
    v33 = v12;

    notify_register_dispatch(v28, out_token, v30, v32);
    _Block_release(v32);
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2298743A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_22A4DD9DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a3;
  v11 = a2;
  sub_22957F3C0(0, 0, v8, &unk_22A586840, v10);
}

uint64_t sub_2298744B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DD07C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229874570, 0, 0);
}

uint64_t sub_229874570()
{
  v26 = v0;
  v1 = v0[6];
  v2 = v0[2];
  sub_229541CB0(v0[3], &off_283CE8678);
  v3 = v2;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  if (v6)
  {
    v24 = v0[6];
    v10 = v0[2];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315138;
    v25[0] = v12;
    v25[1] = 91;
    v25[2] = 0xE100000000000000;
    v13 = v10;
    v14 = [v13 description];
    v15 = sub_22A4DD5EC();
    v23 = v9;
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v25);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_229538000, v4, v5, "%s Received shallow refresh notification. Relaunching homed", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);

    (*(v8 + 8))(v24, v23);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v19 = v0[6];
  v20 = [objc_opt_self() driver];
  [v20 relaunch];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2298747B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_22987480C(uint64_t a1)
{
  v138 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v120 = &v115 - v4;
  v5 = sub_22A4DB21C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_22A4DD07C();
  v122 = *(v123 - 8);
  v10 = v122[8];
  MEMORY[0x28223BE20](v123);
  v124 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v115 - v14;
  v127 = sub_22A4DB57C();
  v125 = *(v127 - 8);
  v16 = *(v125 + 64);
  v17 = MEMORY[0x28223BE20](v127);
  v121 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v115 - v19;
  v128 = sub_22A4DB1EC();
  v21 = sub_22A4DD5EC();
  v23 = v22;
  if (v21 == sub_22A4DD5EC() && v23 == v24)
  {

    v25 = v128;
  }

  else
  {
    v26 = sub_22A4DE60C();

    v25 = v128;
    if ((v26 & 1) == 0)
    {
LABEL_16:
      v37 = sub_22A4DD5EC();
      v39 = v38;
      if (v37 == sub_22A4DD5EC() && v39 == v40)
      {

LABEL_20:
        v42 = sub_22A4DD9DC();
        (*(*(v42 - 8) + 56))(v15, 1, 1, v42);
        v43 = swift_allocObject();
        v43[2] = 0;
        v43[3] = 0;
        v44 = v129;
        v45 = ObjectType;
        v43[4] = v129;
        v43[5] = v45;
        v46 = v44;
        sub_22957F3C0(0, 0, v15, &unk_22A586860, v43);

        goto LABEL_75;
      }

      v41 = sub_22A4DE60C();

      if (v41)
      {
        goto LABEL_20;
      }

      sub_22A4DB1FC();
      if (v134)
      {
        sub_229562F68(0, &qword_281401B70, off_278666148);
        if (swift_dynamicCast())
        {
          v47 = v135;
          v137 = v135;
          goto LABEL_24;
        }
      }

      else
      {
        sub_22953EAE4(&v132, &unk_27D87DE60, &unk_22A57A960);
      }

      v84 = sub_22A4DB20C();
      if (v84)
      {
        v85 = v84;
        v130 = sub_22A4DD5EC();
        v131 = v86;
        sub_22A4DE18C();
        if (*(v85 + 16))
        {
          v87 = sub_2295402E8(&v132);
          if (v88)
          {
            sub_2295404B0(*(v85 + 56) + 32 * v87, &v135);
            sub_22954045C(&v132);

            if (*(&v136 + 1))
            {
              sub_229562F68(0, &qword_281401B70, off_278666148);
              if (swift_dynamicCast())
              {
                v47 = v137;
              }

              else
              {
                v47 = 0;
                v137 = 0;
              }

LABEL_24:
              if (v47)
              {
                if (([v47 isDemoAccessory] & 1) == 0)
                {

                  goto LABEL_75;
                }

                v48 = v124;
                sub_229541CB0(ObjectType, &off_283CE8678);
                v49 = v48;
                (*(v6 + 16))(v9, a1, v5);
                v50 = v129;
                v51 = sub_22A4DD05C();
                v52 = sub_22A4DDCCC();

                if (os_log_type_enabled(v51, v52))
                {
                  v53 = swift_slowAlloc();
                  v129 = v47;
                  v54 = v53;
                  v116 = v53;
                  v119 = swift_slowAlloc();
                  *&v135 = v119;
                  *v54 = 136315394;
                  v132 = 91;
                  v133 = 0xE100000000000000;
                  v55 = v50;
                  v118 = v51;
                  v56 = v55;
                  v57 = v50;
                  v58 = [v55 description];
                  v59 = sub_22A4DD5EC();
                  v117 = v52;
                  v61 = v60;

                  v50 = v57;
                  v62 = v59;
                  v25 = v128;
                  MEMORY[0x22AAD08C0](v62, v61);

                  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                  v63 = sub_2295A3E30(v132, v133, &v135);

                  v64 = v116;
                  *(v116 + 4) = v63;
                  *(v64 + 12) = 2080;
                  sub_22988FA1C(&unk_2814038C0, MEMORY[0x277CC8900]);
                  v65 = sub_22A4DE5CC();
                  v67 = v66;
                  (*(v6 + 8))(v9, v5);
                  v68 = sub_2295A3E30(v65, v67, &v135);

                  *(v64 + 14) = v68;
                  v69 = v118;
                  _os_log_impl(&dword_229538000, v118, v117, "%s Handling notification: %s", v64, 0x16u);
                  v70 = v119;
                  swift_arrayDestroy();
                  MEMORY[0x22AAD4E50](v70, -1, -1);
                  v47 = v129;
                  MEMORY[0x22AAD4E50](v64, -1, -1);

                  (v122[1])(v124, v123);
                }

                else
                {

                  (*(v6 + 8))(v9, v5);
                  (v122[1])(v49, v123);
                }

                v89 = sub_22A4DD5EC();
                v91 = v90;
                if (v89 == sub_22A4DD5EC() && v91 == v92)
                {
                }

                else
                {
                  v93 = sub_22A4DE60C();

                  if ((v93 & 1) == 0)
                  {
                    v98 = sub_22A4DD5EC();
                    v100 = v99;
                    if (v98 == sub_22A4DD5EC() && v100 == v101)
                    {
                    }

                    else
                    {
                      v102 = sub_22A4DE60C();

                      if ((v102 & 1) == 0)
                      {
                        v106 = sub_22A4DD5EC();
                        v108 = v107;
                        if (v106 == sub_22A4DD5EC() && v108 == v109)
                        {
                        }

                        else
                        {
                          v110 = sub_22A4DE60C();

                          if ((v110 & 1) == 0)
                          {

                            goto LABEL_75;
                          }
                        }

                        v111 = sub_22A4DD9DC();
                        (*(*(v111 - 8) + 56))(v15, 1, 1, v111);
                        v112 = swift_allocObject();
                        v112[2] = 0;
                        v112[3] = 0;
                        v112[4] = v50;
                        v112[5] = v47;
                        v112[6] = ObjectType;
                        v113 = v50;
                        sub_22957F3C0(0, 0, v15, &unk_22A586850, v112);

LABEL_75:
                        v114 = *MEMORY[0x277D85DE8];
                        return;
                      }
                    }

                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_22A576190;
                    *(inited + 32) = v47;
                    v104 = v120;
                    (*(v125 + 56))(v120, 1, 1, v127);
                    v105 = v47;
                    sub_229875850(inited, v104);
                    sub_22953EAE4(v104, &qword_27D880180, &unk_22A586590);

                    goto LABEL_75;
                  }
                }

                v94 = [*&v50[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] fileManager];
                if (!v94)
                {
                  goto LABEL_77;
                }

                v95 = v94;
                v96 = [v47 demoModePath];
                sub_22A4DD5EC();

                v97 = v121;
                sub_22A4DB4CC();

                sub_2297AF034(v95);
                swift_unknownObjectRelease();

                (*(v125 + 8))(v97, v127);
                goto LABEL_75;
              }

LABEL_50:

              goto LABEL_75;
            }

LABEL_49:
            sub_22953EAE4(&v135, &unk_27D87DE60, &unk_22A57A960);
            v137 = 0;
            goto LABEL_50;
          }
        }

        sub_22954045C(&v132);
      }

      v135 = 0u;
      v136 = 0u;
      goto LABEL_49;
    }
  }

  v27 = sub_22A4DB20C();
  if (!v27)
  {
    goto LABEL_14;
  }

  v28 = v27;
  v130 = sub_22A4DD5EC();
  v131 = v29;
  sub_22A4DE18C();
  if (!*(v28 + 16) || (v30 = sub_2295402E8(&v132), (v31 & 1) == 0))
  {

    sub_22954045C(&v132);
LABEL_14:
    v135 = 0u;
    v136 = 0u;
    goto LABEL_15;
  }

  sub_2295404B0(*(v28 + 56) + 32 * v30, &v135);
  sub_22954045C(&v132);

  if (!*(&v136 + 1))
  {
LABEL_15:
    sub_22953EAE4(&v135, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_16;
  }

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v32 = v132;
  v33 = [v132 hapAccessories];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v34 = sub_22A4DD83C();

  v122 = v32;
  if (v34 >> 62)
  {
LABEL_73:
    v35 = sub_22A4DE0EC();
    if (v35)
    {
      goto LABEL_12;
    }

    goto LABEL_74;
  }

  v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
LABEL_74:

    goto LABEL_75;
  }

LABEL_12:
  v36 = 0;
  v123 = OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager;
  ObjectType = v34 & 0xC000000000000001;
  v124 = (v34 & 0xFFFFFFFFFFFFFF8);
  v125 += 8;
  while (1)
  {
    if (ObjectType)
    {
      v72 = MEMORY[0x22AAD13F0](v36, v34);
    }

    else
    {
      if (v36 >= *(v124 + 2))
      {
        goto LABEL_72;
      }

      v72 = *(v34 + 8 * v36 + 32);
    }

    v73 = v72;
    v74 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v75 = [*&v129[v123] fileManager];
    if (!v75)
    {
      break;
    }

    v76 = v75;
    v77 = [v73 demoModePath];
    sub_22A4DD5EC();

    sub_22A4DB4CC();

    v78 = sub_22A4DB4EC();
    v79 = [v76 fileExistsAtURL_];

    if (v79)
    {
      v80 = sub_22A4DB4EC();
      v132 = 0;
      v81 = [v76 removeItemAtURL:v80 error:&v132];

      if ((v81 & 1) == 0)
      {
        v82 = v132;
        v83 = sub_22A4DB3EC();

        swift_willThrow();
        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      v71 = v132;
    }

    swift_unknownObjectRelease();

LABEL_30:
    (*v125)(v20, v127);
    ++v36;
    if (v74 == v35)
    {
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
}

id sub_229875850(unint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v155 = a2;
  ObjectType = swift_getObjectType();
  v181 = sub_22A4DD07C();
  v153 = *(v181 - 8);
  v7 = *(v153 + 64);
  v8 = MEMORY[0x28223BE20](v181);
  v10 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v171 = &v143 - v11;
  v157 = sub_22A4DB7DC();
  v12 = *(v157 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v157);
  v156 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v168 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v166 = &v143 - v19;
  v20 = sub_22A4DB57C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v148 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v147 = &v143 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v149 = &v143 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v154 = &v143 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v32 = MEMORY[0x28223BE20](v31);
  v184 = &v143 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v165 = &v143 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v185 = &v143 - v39;
  v40 = v36;
  v172 = v36;
  v170 = v5;
  if (!a1)
  {
    v43 = v168;
    goto LABEL_29;
  }

  v41 = a1 & 0xFFFFFFFFFFFFFF8;
  v145 = a1;
  v177 = v37;
  if (a1 >> 62)
  {
LABEL_43:
    v42 = sub_22A4DE0EC();
  }

  else
  {
    v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = v168;
  if (!v42)
  {
LABEL_29:
    sub_229564F88(v155, v43, &qword_27D880180, &unk_22A586590);
    if ((*(v21 + 48))(v43, 1, v40) == 1)
    {
      return sub_22953EAE4(v43, &qword_27D880180, &unk_22A586590);
    }

    v102 = v5;
    v103 = v154;
    (*(v21 + 32))(v154, v43, v40);
    result = [*&v102[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] fileManager];
    if (result)
    {
      v104 = result;
      v105 = sub_22A4DB4EC();
      v106 = [v104 fileExistsAtURL_];

      swift_unknownObjectRelease();
      if (v106)
      {
        v107 = v10;
        v108 = v172;
        if (qword_27D87BAB0 != -1)
        {
          swift_once();
        }

        v109 = __swift_project_value_buffer(v108, qword_27D8AB9F8);
        v110 = *(v21 + 16);
        v111 = v149;
        v110(v149, v109, v108);
        sub_229541CB0(ObjectType, &off_283CE8678);
        v110(v147, v154, v108);
        v110(v148, v111, v108);
        v112 = v170;
        v113 = v21;
        v114 = sub_22A4DD05C();
        v115 = sub_22A4DDCCC();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v144 = v107;
          v117 = v116;
          v188 = swift_slowAlloc();
          v192 = v188;
          *v117 = 136315650;
          v190 = 91;
          v191 = 0xE100000000000000;
          v118 = v112;
          v187 = v115;
          v119 = v118;
          v120 = [v118 description];
          v186 = v114;
          v121 = v120;
          v122 = sub_22A4DD5EC();
          v175 = v4;
          v123 = v122;
          v125 = v124;

          MEMORY[0x22AAD08C0](v123, v125);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v126 = sub_2295A3E30(v190, v191, &v192);

          *(v117 + 4) = v126;
          *(v117 + 12) = 2080;
          sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260]);
          v127 = v147;
          v128 = sub_22A4DE5CC();
          v130 = v129;
          v189 = v112;
          v164 = v113;
          v131 = *(v113 + 8);
          v131(v127, v108);
          v132 = sub_2295A3E30(v128, v130, &v192);

          *(v117 + 14) = v132;
          *(v117 + 22) = 2080;
          v133 = v148;
          v134 = sub_22A4DE5CC();
          v136 = v135;
          v131(v133, v108);
          v137 = sub_2295A3E30(v134, v136, &v192);

          *(v117 + 24) = v137;
          v138 = v186;
          _os_log_impl(&dword_229538000, v186, v187, "%s Loading face recongnition from: %s to %s", v117, 0x20u);
          v139 = v188;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v139, -1, -1);
          MEMORY[0x22AAD4E50](v117, -1, -1);

          (*(v153 + 8))(v144, v181);
        }

        else
        {

          v131 = *(v21 + 8);
          v131(v148, v108);
          v131(v147, v108);
          (*(v153 + 8))(v107, v181);
        }

        v140 = v154;
        v141 = v149;
        sub_229881854(v154, v149);
        v142 = v172;
        v131(v141, v172);
        return (v131)(v140, v142);
      }

      else
      {
        return (*(v21 + 8))(v103, v172);
      }
    }

    else
    {
LABEL_45:
      __break(1u);
    }

    return result;
  }

  v162 = OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager;
  v163 = v145 & 0xC000000000000001;
  v161 = v145 + 32;
  v189 = (v21 + 8);
  v160 = (v21 + 56);
  v159 = (v21 + 32);
  v158 = (v21 + 48);
  v146 = (v12 + 8);
  v12 = 0;
  v180 = (v21 + 16);
  v176 = (v153 + 8);
  *&v38 = 136315650;
  v169 = v38;
  v151 = v42;
  v144 = v10;
  v164 = v21;
  v152 = v41;
  while (1)
  {
    if (v163)
    {
      v44 = MEMORY[0x22AAD13F0](v12, v145);
    }

    else
    {
      if (v12 >= *(v41 + 16))
      {
        goto LABEL_42;
      }

      v44 = *(v161 + 8 * v12);
    }

    v186 = v44;
    if (__OFADD__(v12++, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v167 = v12;
    result = [*&v5[v162] fileManager];
    if (!result)
    {
      __break(1u);
      goto LABEL_45;
    }

    v47 = result;
    v48 = [v186 demoModeCameraPath];
    sub_22A4DD5EC();

    v49 = v165;
    sub_22A4DB4CC();

    v50 = sub_22A4DB4EC();
    v51 = [v47 fileExistsAtURL_];

    swift_unknownObjectRelease();
    if (v51)
    {
      v52 = v166;
      v40 = v172;
      (*v159)(v166, v49, v172);
      v53 = 0;
      v21 = v164;
    }

    else
    {
      v40 = v172;
      (*v189)(v49, v172);
      v53 = 1;
      v21 = v164;
      v52 = v166;
    }

    (*v160)(v52, v53, 1, v40);
    v54 = (*v158)(v52, 1, v40);
    v43 = v168;
    v12 = v167;
    if (v54 != 1)
    {
      break;
    }

    sub_22953EAE4(v52, &qword_27D880180, &unk_22A586590);
LABEL_25:
    v41 = v152;
    if (v12 == v151)
    {
      goto LABEL_29;
    }
  }

  (*(v21 + 32))(v185, v52, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D130, &qword_22A578028);
  v55 = *(v21 + 72);
  v56 = v40;
  v57 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v58 = swift_allocObject();
  if (qword_27D87BAB0 != -1)
  {
    v101 = v58;
    swift_once();
    v58 = v101;
  }

  v150 = v58;
  v59 = v58 + v57;
  __swift_project_value_buffer(v56, qword_27D8AB9F8);
  v60 = v186;
  v61 = [v186 name];
  sub_22A4DD5EC();

  sub_22A4DB4FC();

  v62 = [v60 uuid];
  v63 = v156;
  sub_22A4DB79C();

  sub_22A4DB76C();
  (*v146)(v63, v157);
  v183 = v59;
  sub_22A4DB4FC();

  v64 = 0;
  v65 = 0;
  v178 = *v180;
  v179 = v55;
  v66 = v171;
  v67 = v172;
  v68 = v184;
  while (1)
  {
    v187 = v64;
    v69 = v178;
    v178(v68, v183 + v65 * v55, v67);
    sub_229541CB0(ObjectType, &off_283CE8678);
    v70 = v67;
    v71 = v177;
    v69(v177, v68, v70);
    v72 = v5;
    v73 = v186;
    v74 = v66;
    v75 = sub_22A4DD05C();
    v76 = sub_22A4DDCCC();

    v77 = os_log_type_enabled(v75, v76);
    v188 = v73;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v192 = v174;
      *v78 = v169;
      v190 = 91;
      v191 = 0xE100000000000000;
      v79 = v72;
      v80 = [v79 description];
      v175 = v4;
      v81 = v80;
      v82 = sub_22A4DD5EC();
      v173 = v76;
      v83 = v82;
      v85 = v84;

      MEMORY[0x22AAD08C0](v83, v85);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v86 = sub_2295A3E30(v190, v191, &v192);

      *(v78 + 4) = v86;
      *(v78 + 12) = 2080;
      v87 = [v73 shortDescription];
      v88 = sub_22A4DD5EC();
      v90 = v89;

      v91 = sub_2295A3E30(v88, v90, &v192);

      *(v78 + 14) = v91;
      *(v78 + 22) = 2080;
      v92 = sub_22A4DB52C();
      v94 = v93;
      v95 = *v189;
      v96 = v71;
      v67 = v172;
      (*v189)(v96, v172);
      v97 = sub_2295A3E30(v92, v94, &v192);
      v4 = v175;

      *(v78 + 24) = v97;
      _os_log_impl(&dword_229538000, v75, v173, "%s Loading camera contents for %s to %s", v78, 0x20u);
      v98 = v174;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v98, -1, -1);
      v99 = v78;
      v5 = v170;
      MEMORY[0x22AAD4E50](v99, -1, -1);

      v66 = v171;
      (*v176)(v171, v181);
    }

    else
    {

      v95 = *v189;
      (*v189)(v71, v70);
      (*v176)(v74, v181);
      v66 = v74;
      v67 = v70;
    }

    v68 = v184;
    sub_229881854(v185, v184);
    v55 = v179;
    if (v4)
    {
      break;
    }

    v95(v68, v67);
    v64 = 1;
    v65 = 1;
    v100 = v188;
    if (v187)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      v40 = v67;
      v95(v185, v67);
      v10 = v144;
      v21 = v164;
      v43 = v168;
      v12 = v167;
      goto LABEL_25;
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v95(v68, v67);
  return (v95)(v185, v67);
}

uint64_t sub_2298769DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_22A4DD07C();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229876AA0, 0, 0);
}

uint64_t sub_229876AA0()
{
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  inited = swift_initStackObject();
  v0[13] = inited;
  *(inited + 16) = xmmword_22A576190;
  *(inited + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_229876B7C;
  v5 = v0[7];

  return sub_229876FA0(inited);
}

uint64_t sub_229876B7C()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229876CDC, 0, 0);
  }

  else
  {
    v4 = v3[13];
    swift_setDeallocating();
    v5 = *(v4 + 16);
    swift_arrayDestroy();
    v6 = v3[12];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_229876CDC()
{
  v34 = v0;
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[9];
  v5 = v0[7];
  swift_setDeallocating();
  v6 = *(v3 + 16);
  swift_arrayDestroy();
  sub_229541CB0(v4, &off_283CE8678);
  v7 = v5;
  v8 = v1;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCEC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[15];
  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[10];
  if (v11)
  {
    v32 = v0[12];
    v16 = v0[7];
    v17 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v17 = 136315394;
    v33[0] = v31;
    v33[1] = 91;
    v33[2] = 0xE100000000000000;
    v18 = v16;
    v30 = v15;
    v19 = [v18 description];
    v20 = sub_22A4DD5EC();
    v22 = v21;

    MEMORY[0x22AAD08C0](v20, v22);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v23 = sub_2295A3E30(91, 0xE100000000000000, v33);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    v24 = v12;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v25;
    *v29 = v25;
    _os_log_impl(&dword_229538000, v9, v10, "%s Failed to save accessory with error: %@", v17, 0x16u);
    sub_22953EAE4(v29, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAD4E50](v31, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);

    (*(v14 + 8))(v32, v30);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v26 = v0[12];

  v27 = v0[1];

  return v27();
}

uint64_t sub_229876FA0(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229877078, 0, 0);
}

uint64_t sub_229877078(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t), void *a7, uint64_t a8)
{
  v69 = v8;
  v9 = v8[10];
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v58 = v8[10];
    }

    v10 = sub_22A4DE0EC();
    v8[17] = v10;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_18:
    v60 = v8[15];
    v59 = v8[16];

    v20 = v8[1];
    goto LABEL_19;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8[17] = v10;
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  v11 = v8[10];
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x22AAD13F0](0);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x2822008A0](v10, v11, a3, a4, a5, a6, a7, a8);
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;
  v8[18] = v12;
  v8[19] = 1;
  v14 = [v12 home];
  v8[20] = v14;
  if (v14)
  {
    v15 = v14;
    v16 = [v14 backingStore];
    v8[9] = v16;
    v62 = sub_229562F68(0, &unk_281401B80, off_278666058);
    sub_22A4DBD4C();
    v21 = v8[16];
    v22 = v8[11];
    v23 = v8[12];

    v24 = v8[8];
    v25 = [v24 context];
    v8[21] = v25;

    sub_229541CB0(v23, &off_283CE8678);
    v26 = v22;
    v27 = v13;
    v28 = sub_22A4DD05C();
    v29 = sub_22A4DDCDC();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v8[16];
    v32 = v8[13];
    v33 = v8[14];
    if (v30)
    {
      log = v28;
      v34 = v8[11];
      v64 = v29;
      v35 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v68[0] = v66;
      *v35 = 136315394;
      v8[4] = 91;
      v8[5] = 0xE100000000000000;
      v36 = v34;
      v65 = v32;
      v37 = v25;
      v38 = [v36 description];
      v39 = sub_22A4DD5EC();
      v63 = v31;
      v41 = v40;

      v25 = v37;
      MEMORY[0x22AAD08C0](v39, v41);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v42 = sub_2295A3E30(v8[4], v8[5], v68);

      *(v35 + 4) = v42;
      *(v35 + 12) = 2080;
      v43 = [v27 shortDescription];
      v44 = sub_22A4DD5EC();
      v46 = v45;

      v47 = sub_2295A3E30(v44, v46, v68);

      *(v35 + 14) = v47;
      _os_log_impl(&dword_229538000, log, v64, "%s Saving accessory: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v66, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);

      v48 = *(v33 + 8);
      v48(v63, v65);
    }

    else
    {

      v48 = *(v33 + 8);
      v48(v31, v32);
    }

    v8[22] = v48;
    v50 = v8[11];
    v49 = v8[12];
    v51 = swift_allocObject();
    v8[23] = v51;
    v51[2] = v15;
    v51[3] = v27;
    v51[4] = v50;
    v51[5] = v25;
    v51[6] = v49;
    v52 = v50;
    v53 = v27;
    v54 = v15;
    v55 = v25;
    v56 = swift_task_alloc();
    v8[24] = v56;
    v56[2] = v55;
    v56[3] = sub_22988FE24;
    v56[4] = v51;
    v57 = *(MEMORY[0x277D85A40] + 4);
    v10 = swift_task_alloc();
    v8[25] = v10;
    *v10 = v8;
    v10[1] = sub_229877640;
    a6 = sub_2296C8C78;
    a5 = 0x800000022A58A7E0;
    a8 = MEMORY[0x277D84F78] + 8;
    v11 = 0;
    a3 = 0;
    a4 = 0xD000000000000016;
    a7 = v56;

    return MEMORY[0x2822008A0](v10, v11, a3, a4, a5, a6, a7, a8);
  }

  type metadata accessor for HMError(0);
  v8[7] = 2;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
  sub_22A4DB3CC();
  v17 = v8[6];
  swift_willThrow();

  v19 = v8[15];
  v18 = v8[16];

  v20 = v8[1];
LABEL_19:

  return v20();
}

uint64_t sub_229877640()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v8 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_229877F6C;
  }

  else
  {
    v5 = *(v2 + 184);
    v6 = *(v2 + 192);

    v4 = sub_229877764;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229877764()
{
  v97 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  sub_229541CB0(*(v0 + 96), &off_283CE8678);
  v4 = v3;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCDC();

  if (os_log_type_enabled(v6, v7))
  {
    v85 = *(v0 + 168);
    v86 = *(v0 + 160);
    v8 = *(v0 + 144);
    v92 = *(v0 + 120);
    log = *(v0 + 176);
    v9 = *(v0 + 88);
    v88 = *(v0 + 112) + 8;
    v90 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v96[0] = v84;
    *v10 = 136315394;
    *(v0 + 16) = 91;
    *(v0 + 24) = 0xE100000000000000;
    v11 = v9;
    v12 = [v11 description];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(*(v0 + 16), *(v0 + 24), v96);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v8;
    *v83 = v8;
    v17 = v8;
    _os_log_impl(&dword_229538000, v6, v7, "%s Did save context for %@", v10, 0x16u);
    sub_22953EAE4(v83, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v83, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x22AAD4E50](v84, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    v18 = (log)(v92, v90);
  }

  else
  {
    v26 = *(v0 + 168);
    v25 = *(v0 + 176);
    v27 = *(v0 + 144);
    v29 = *(v0 + 112);
    v28 = *(v0 + 120);
    v30 = *(v0 + 104);

    v18 = v25(v28, v30);
  }

  v31 = *(v0 + 152);
  if (v31 != *(v0 + 136))
  {
    v35 = *(v0 + 208);
    v36 = *(v0 + 80);
    if ((v36 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x22AAD13F0](*(v0 + 152));
    }

    else
    {
      if (v31 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v18 = *(v36 + 8 * v31 + 32);
    }

    v37 = v18;
    *(v0 + 144) = v18;
    *(v0 + 152) = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      v38 = [v18 home];
      *(v0 + 160) = v38;
      if (!v38)
      {
        type metadata accessor for HMError(0);
        *(v0 + 56) = 2;
        sub_22956AD8C(MEMORY[0x277D84F90]);
        sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
        sub_22A4DB3CC();
        v41 = *(v0 + 48);
        swift_willThrow();
        goto LABEL_14;
      }

      v39 = v38;
      v40 = [v38 backingStore];
      *(v0 + 72) = v40;
      v82 = sub_229562F68(0, &unk_281401B80, off_278666058);
      sub_22A4DBD4C();
      if (v35)
      {

LABEL_14:
        v43 = *(v0 + 120);
        v42 = *(v0 + 128);

        v34 = *(v0 + 8);
        goto LABEL_15;
      }

      v45 = *(v0 + 128);
      v46 = *(v0 + 88);
      v47 = *(v0 + 96);

      v48 = *(v0 + 64);
      v49 = [v48 context];
      *(v0 + 168) = v49;

      sub_229541CB0(v47, &off_283CE8678);
      v50 = v46;
      v51 = v37;
      v52 = sub_22A4DD05C();
      v53 = sub_22A4DDCDC();

      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 128);
      v56 = *(v0 + 104);
      v57 = *(v0 + 112);
      if (v54)
      {
        loga = v52;
        v58 = *(v0 + 88);
        v89 = v53;
        v59 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v96[0] = v93;
        *v59 = 136315394;
        *(v0 + 32) = 91;
        *(v0 + 40) = 0xE100000000000000;
        v60 = v58;
        v91 = v56;
        v61 = v49;
        v62 = [v60 description];
        v63 = sub_22A4DD5EC();
        v87 = v55;
        v65 = v64;

        v49 = v61;
        MEMORY[0x22AAD08C0](v63, v65);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v66 = sub_2295A3E30(*(v0 + 32), *(v0 + 40), v96);

        *(v59 + 4) = v66;
        *(v59 + 12) = 2080;
        v67 = [v51 shortDescription];
        v68 = sub_22A4DD5EC();
        v70 = v69;

        v71 = sub_2295A3E30(v68, v70, v96);

        *(v59 + 14) = v71;
        _os_log_impl(&dword_229538000, loga, v89, "%s Saving accessory: %s", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v93, -1, -1);
        MEMORY[0x22AAD4E50](v59, -1, -1);

        v72 = *(v57 + 8);
        v72(v87, v91);
      }

      else
      {

        v72 = *(v57 + 8);
        v72(v55, v56);
      }

      *(v0 + 176) = v72;
      v74 = *(v0 + 88);
      v73 = *(v0 + 96);
      v75 = swift_allocObject();
      *(v0 + 184) = v75;
      v75[2] = v39;
      v75[3] = v51;
      v75[4] = v74;
      v75[5] = v49;
      v75[6] = v73;
      v76 = v74;
      v77 = v51;
      v78 = v39;
      v79 = v49;
      v80 = swift_task_alloc();
      *(v0 + 192) = v80;
      v80[2] = v79;
      v80[3] = sub_22988FE24;
      v80[4] = v75;
      v81 = *(MEMORY[0x277D85A40] + 4);
      v18 = swift_task_alloc();
      *(v0 + 200) = v18;
      *v18 = v0;
      v18[1] = sub_229877640;
      v22 = sub_2296C8C78;
      v21 = 0x800000022A58A7E0;
      v24 = MEMORY[0x277D84F78] + 8;
      v36 = 0;
      v19 = 0;
      v20 = 0xD000000000000016;
      v23 = v80;

      return MEMORY[0x2822008A0](v18, v36, v19, v20, v21, v22, v23, v24);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return MEMORY[0x2822008A0](v18, v36, v19, v20, v21, v22, v23, v24);
  }

  v33 = *(v0 + 120);
  v32 = *(v0 + 128);

  v34 = *(v0 + 8);
LABEL_15:

  return v34();
}

uint64_t sub_229877F6C()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];

  v6 = v0[26];
  v8 = v0[15];
  v7 = v0[16];

  v9 = v0[1];

  return v9();
}

id sub_2298780EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE8678);
  v8 = v1;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v22 = 91;
    v23 = 0xE100000000000000;
    v24 = v13;
    v14 = v8;
    v15 = [v14 description];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(v22, v23, &v24);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_229538000, v9, v10, "%s Creating demo mode backup on boot", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v4 + 8))(v7, v21);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  return [objc_opt_self() writePostCleanupRecordWithReason:9 steps:512];
}

void sub_229878350(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v119 - v7;
  v8 = sub_22A4DB7DC();
  v137 = *(v8 - 8);
  v138 = v8;
  v9 = *(v137 + 64);
  MEMORY[0x28223BE20](v8);
  v135 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DD07C();
  v128 = *(v11 - 8);
  v129 = v11;
  v12 = v128[8];
  v13 = MEMORY[0x28223BE20](v11);
  v127 = (&v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v16 = &v119 - v15;
  v136 = a1;
  v17 = [a1 accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v18 = sub_22A4DD83C();

  v140 = MEMORY[0x277D84F90];
  v19 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
LABEL_39:
    v20 = sub_22A4DE0EC();
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v133 = v16;
  v124 = v6;
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v16 = 0;
    v134 = MEMORY[0x277D84F90];
    while (2)
    {
      v22 = v16;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x22AAD13F0](v22, v18);
        }

        else
        {
          if (v22 >= *(v19 + 16))
          {
            goto LABEL_37;
          }

          v23 = *(v18 + 8 * v22 + 32);
        }

        v6 = v23;
        v16 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if ([v23 isDemoAccessory])
        {
          objc_opt_self();
          v24 = swift_dynamicCastObjCClass();
          if (v24)
          {
            break;
          }
        }

        ++v22;
        if (v16 == v20)
        {
          goto LABEL_20;
        }
      }

      v6 = v24;
      MEMORY[0x22AAD09E0]();
      if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22A4DD85C();
        v21 = MEMORY[0x277D84F90];
      }

      sub_22A4DD87C();
      v134 = v140;
      if (v16 != v20)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v134 = MEMORY[0x277D84F90];
  }

LABEL_20:

  v26 = [v136 hapAccessories];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v18 = sub_22A4DD83C();

  v140 = v21;
  if (v18 >> 62)
  {
    v27 = sub_22A4DE0EC();
    if (v27)
    {
      goto LABEL_22;
    }

LABEL_41:
    v38 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_41;
  }

LABEL_22:
  v28 = 0;
  v19 = v18 & 0xC000000000000001;
  v16 = (v18 & 0xFFFFFFFFFFFFFF8);
  v29 = &selRef_isInserted;
  v139 = v18 & 0xFFFFFFFFFFFFFF8;
  while (v19)
  {
    v30 = MEMORY[0x22AAD13F0](v28, v18);
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_34;
    }

LABEL_29:
    v6 = v30;
    if ([v6 isDemoAccessory])
    {
      v32 = [v6 v29[143]];

      if (v32)
      {
        sub_22A4DE27C();
        v33 = v19;
        v34 = v27;
        v35 = v18;
        v36 = v29;
        v37 = *(v140 + 16);
        sub_22A4DE2AC();
        v29 = v36;
        v18 = v35;
        v27 = v34;
        v19 = v33;
        v16 = v139;
        sub_22A4DE2BC();
        sub_22A4DE28C();
        goto LABEL_25;
      }
    }

    else
    {
    }

LABEL_25:
    ++v28;
    if (v31 == v27)
    {
      goto LABEL_35;
    }
  }

  if (v28 >= *(v16 + 2))
  {
    goto LABEL_38;
  }

  v30 = *(v18 + 8 * v28 + 32);
  v31 = v28 + 1;
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_29;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  v38 = v140;
LABEL_42:

  LODWORD(v39) = v38 < 0 || (v38 & 0x4000000000000000) != 0;
  v40 = (v134 >> 62);
  if (v39 == 1)
  {
    goto LABEL_118;
  }

  v122 = *(v38 + 16);
  v41 = v130;
  if (!v122)
  {
    goto LABEL_47;
  }

  while (2)
  {
    while (2)
    {
      v42 = v133;
      sub_229541CB0(ObjectType, &off_283CE8678);
      swift_retain_n();
      v43 = v134;
      swift_bridgeObjectRetain_n();
      v44 = v41;
      v45 = v136;
      v41 = sub_22A4DD05C();
      v46 = sub_22A4DDCCC();
      v136 = v45;

      v47 = os_log_type_enabled(v41, v46);
      v130 = v44;
      if (!v47)
      {

        swift_bridgeObjectRelease_n();

        (v128[1])(v42, v129);
        v39 = v43;
        goto LABEL_58;
      }

      LODWORD(v139) = v46;
      v48 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v146 = v127;
      *v48 = 136315650;
      v140 = 91;
      v141 = 0xE100000000000000;
      v49 = v44;
      v50 = [v49 description];
      v51 = sub_22A4DD5EC();
      v53 = v52;

      MEMORY[0x22AAD08C0](v51, v53);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v54 = sub_2295A3E30(v140, v141, &v146);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2048;
      if (v39)
      {
        v55 = sub_22A4DE0EC();
      }

      else
      {
        v55 = *(v38 + 16);
      }

      v44 = v130;
      v39 = v134;
      if (v40)
      {
        v56 = sub_22A4DE0EC();
      }

      else
      {
        v56 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFADD__(v55, v56))
      {
        __break(1u);
LABEL_123:
        if (!sub_22A4DE0EC())
        {
LABEL_124:

          v107 = v127;
          sub_229541CB0(ObjectType, &off_283CE8678);
          v108 = v41;
          v109 = sub_22A4DD05C();
          v110 = sub_22A4DDCDC();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v146 = v112;
            *v111 = 136315138;
            v140 = 91;
            v141 = 0xE100000000000000;
            v113 = v108;
            v114 = [v113 description];
            v115 = sub_22A4DD5EC();
            v117 = v116;

            MEMORY[0x22AAD08C0](v115, v117);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v118 = sub_2295A3E30(v140, v141, &v146);

            *(v111 + 4) = v118;
            _os_log_impl(&dword_229538000, v109, v110, "%s No demo accessories to load", v111, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v112);
            MEMORY[0x22AAD4E50](v112, -1, -1);
            MEMORY[0x22AAD4E50](v111, -1, -1);
          }

          (v128[1])(v107, v129);
          return;
        }

        continue;
      }

      break;
    }

    *(v48 + 14) = v55 + v56;

    *(v48 + 22) = 2112;
    v57 = v136;
    *(v48 + 24) = v136;
    v58 = v126;
    *v126 = v57;
    v59 = v57;
    _os_log_impl(&dword_229538000, v41, v139, "%s Loading demo %ld accessories in %@", v48, 0x20u);
    sub_22953EAE4(v58, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v58, -1, -1);
    v60 = v127;
    __swift_destroy_boxed_opaque_existential_0(v127);
    MEMORY[0x22AAD4E50](v60, -1, -1);
    MEMORY[0x22AAD4E50](v48, -1, -1);

    (v128[1])(v133, v129);
LABEL_58:
    if (v40)
    {
      v61 = sub_22A4DE0EC();
    }

    else
    {
      v61 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v123 = v38;
    if (v61)
    {
      v62 = 0;
      v38 = v39 & 0xC000000000000001;
      while (1)
      {
        if (v38)
        {
          v63 = MEMORY[0x22AAD13F0](v62, v39);
        }

        else
        {
          if (v62 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_115;
          }

          v63 = *(v39 + 8 * v62 + 32);
        }

        v64 = v63;
        v40 = (v62 + 1);
        if (__OFADD__(v62, 1))
        {
          break;
        }

        v65 = v131;
        sub_2295A9CA4(v63);
        v131 = v65;
        if (v65)
        {

          return;
        }

        ++v62;
        if (v40 == v61)
        {
          goto LABEL_70;
        }
      }

LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      v122 = sub_22A4DE0EC();
      v41 = v130;
      if (v122)
      {
        continue;
      }

LABEL_47:
      if (!v40)
      {
        if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_124;
        }

        continue;
      }

      goto LABEL_123;
    }

    break;
  }

LABEL_70:

  v40 = MEMORY[0x277D84F90];
  if (v122)
  {
    v66 = 0;
    v121 = v123 & 0xC000000000000001;
    v120 = v123 + 32;
    v133 = (v137 + 8);
    v134 = v137 + 16;
    v119 = xmmword_22A576190;
    do
    {
      if (v121)
      {
        v67 = MEMORY[0x22AAD13F0](v66, v123);
        v68 = __OFADD__(v66, 1);
        v69 = (v66 + 1);
        if (v68)
        {
          goto LABEL_116;
        }
      }

      else
      {
        if (v66 >= *(v123 + 16))
        {
          goto LABEL_117;
        }

        v67 = *(v120 + 8 * v66);
        v68 = __OFADD__(v66, 1);
        v69 = (v66 + 1);
        if (v68)
        {
          goto LABEL_116;
        }
      }

      v126 = v69;
      v127 = v67;
      v128 = v40;
      v70 = [v67 identifiersForBridgedAccessories];
      sub_22988FA1C(&qword_281403880, MEMORY[0x277CC95F0]);
      v71 = sub_22A4DDB6C();

      v72 = MEMORY[0x277D84F90];
      v139 = v71;
      v140 = MEMORY[0x277D84F90];
      v73 = v71 + 56;
      v74 = 1 << *(v71 + 32);
      if (v74 < 64)
      {
        v75 = ~(-1 << v74);
      }

      else
      {
        v75 = -1;
      }

      v39 = v75 & *(v71 + 56);
      v40 = ((v74 + 63) >> 6);

      v76 = 0;
      v129 = v72;
      while (v39)
      {
LABEL_84:
        v78 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
        v79 = v138;
        v80 = v137;
        v81 = v135;
        (*(v137 + 16))(v135, *(v139 + 48) + *(v137 + 72) * (v78 | (v76 << 6)), v138);
        v82 = sub_22A4DB77C();
        v38 = [v136 accessoryWithUUID_];

        (*(v80 + 8))(v81, v79);
        if (v38)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            MEMORY[0x22AAD09E0]();
            if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v83 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22A4DD85C();
            }

            sub_22A4DD87C();
            v129 = v140;
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v77 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          __break(1u);
          goto LABEL_114;
        }

        if (v77 >= v40)
        {
          break;
        }

        v39 = *(v73 + 8 * v77);
        ++v76;
        if (v39)
        {
          v76 = v77;
          goto LABEL_84;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v84 = swift_allocObject();
      *(v84 + 16) = v119;
      *(v84 + 32) = v127;
      v140 = v84;
      sub_2296F094C(v129);
      v85 = v140;
      v40 = v128;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_22958BEE4(0, v40[2] + 1, 1, v40);
      }

      v44 = v130;
      v66 = v126;
      v87 = v40[2];
      v86 = v40[3];
      if (v87 >= v86 >> 1)
      {
        v40 = sub_22958BEE4((v86 > 1), v87 + 1, 1, v40);
      }

      v40[2] = v87 + 1;
      v40[v87 + 4] = v85;
    }

    while (v66 != v122);
  }

  v88 = v40[2];
  if (v88)
  {
    v89 = sub_22A4DD9DC();
    v90 = *(v89 - 8);
    v91 = *(v90 + 56);
    v135 = (v90 + 56);
    v136 = v91;
    v133 = (v90 + 8);
    v134 = v90 + 48;
    v92 = 32;
    v137 = v89;
    do
    {
      v138 = v92;
      v139 = v88;
      v94 = *(v40 + v92);
      v95 = v132;
      (v136)(v132, 1, 1, v89);
      v96 = swift_allocObject();
      v96[2] = 0;
      v96[3] = 0;
      v96[4] = v44;
      v96[5] = v94;
      v96[6] = ObjectType;
      v97 = v124;
      sub_229564F88(v95, v124, &unk_27D87D8F0, &qword_22A578D70);
      LODWORD(v95) = (*v134)(v97, 1, v89);
      v98 = v44;

      if (v95 == 1)
      {
        sub_22953EAE4(v97, &unk_27D87D8F0, &qword_22A578D70);
      }

      else
      {
        sub_22A4DD9CC();
        (*v133)(v97, v89);
      }

      v99 = v40;
      v100 = v96[2];
      v101 = v96[3];
      swift_unknownObjectRetain();

      if (v100)
      {
        swift_getObjectType();
        v102 = sub_22A4DD8CC();
        v104 = v103;
        swift_unknownObjectRelease();
      }

      else
      {
        v102 = 0;
        v104 = 0;
      }

      v105 = v139;
      sub_22953EAE4(v132, &unk_27D87D8F0, &qword_22A578D70);
      v106 = swift_allocObject();
      *(v106 + 16) = &unk_22A586828;
      *(v106 + 24) = v96;
      if (v104 | v102)
      {
        v142 = 0;
        v143 = 0;
        v144 = v102;
        v145 = v104;
      }

      v40 = v99;
      v93 = v138;
      swift_task_create();

      v92 = v93 + 8;
      v88 = v105 - 1;
      v44 = v130;
      v89 = v137;
    }

    while (v88);
  }
}

uint64_t sub_229879398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_22A4DD07C();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[8] = v11;
  *v11 = v6;
  v11[1] = sub_229879498;

  return sub_229879C54(a5);
}

uint64_t sub_229879498()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_229879948;
  }

  else
  {
    v3 = sub_2298795AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2298795AC()
{
  v40 = v0;
  v1 = v0[9];
  v2 = v0[3];
  type metadata accessor for DemoAccessoryServer();

  v4 = sub_22960AE44(v3, 0);
  if (v1)
  {
    v6 = v0[7];
    v7 = v0[3];
    v8 = v0[2];
    sub_229541CB0(v0[4], &off_283CE8678);

    v9 = v8;
    v10 = v1;
    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCEC();

    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];
    if (v13)
    {
      v34 = v0[3];
      v38 = v0[7];
      v17 = v0[2];
      v18 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v18 = 136315650;
      v39[0] = v37;
      v39[1] = 91;
      v39[2] = 0xE100000000000000;
      v19 = v17;
      v36 = v16;
      v20 = [v19 description];
      v21 = sub_22A4DD5EC();
      v23 = v22;

      MEMORY[0x22AAD08C0](v21, v23);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v24 = sub_2295A3E30(91, 0xE100000000000000, v39);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      v25 = sub_229562F68(0, &qword_281401B70, off_278666148);
      v26 = MEMORY[0x22AAD0A20](v34, v25);
      v28 = sub_2295A3E30(v26, v27, v39);

      *(v18 + 14) = v28;
      *(v18 + 22) = 2112;
      v29 = v1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 24) = v30;
      *v35 = v30;
      _os_log_impl(&dword_229538000, v11, v12, "%s Failed to load accessories: %s with error: %@", v18, 0x20u);
      sub_22953EAE4(v35, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);

      (*(v15 + 8))(v38, v36);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }
  }

  else
  {
    v5 = v4;
    sub_22960FCE0();
    if (qword_27D87B8A0 != -1)
    {
      swift_once();
    }

    sub_22956E358(v5);
  }

  v31 = v0[7];

  v32 = v0[1];

  return v32();
}

uint64_t sub_229879948()
{
  v36 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[2];
  sub_229541CB0(v0[4], &off_283CE8678);

  v5 = v4;
  v6 = v1;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];
  if (v9)
  {
    v30 = v0[3];
    v34 = v0[7];
    v13 = v0[2];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v14 = 136315650;
    v35[0] = v33;
    v35[1] = 91;
    v35[2] = 0xE100000000000000;
    v15 = v13;
    v32 = v12;
    v16 = [v15 description];
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, v35);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = sub_229562F68(0, &qword_281401B70, off_278666148);
    v22 = MEMORY[0x22AAD0A20](v30, v21);
    v24 = sub_2295A3E30(v22, v23, v35);

    *(v14 + 14) = v24;
    *(v14 + 22) = 2112;
    v25 = v1;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v26;
    *v31 = v26;
    _os_log_impl(&dword_229538000, v7, v8, "%s Failed to load accessories: %s with error: %@", v14, 0x20u);
    sub_22953EAE4(v31, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v31, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v33, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    (*(v11 + 8))(v34, v32);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v27 = v0[7];

  v28 = v0[1];

  return v28();
}

uint64_t sub_229879C54(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = swift_getObjectType();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v4 = sub_22A4DB57C();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v7 = sub_22A4DD07C();
  v2[26] = v7;
  v8 = *(v7 - 8);
  v2[27] = v8;
  v9 = *(v8 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229879DCC, 0, 0);
}

uint64_t sub_229879DCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), void *a7, uint64_t a8)
{
  v125 = v8;
  v9 = v8[18];
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v59 = v8[18];
    }

    v10 = sub_22A4DE0EC();
    v8[30] = v10;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_18:
    v60 = v8[24];
    v61 = v8[25];
    v63 = v8[22];
    v62 = v8[23];
    v64 = v8[21];
    v65 = v8[18];
    v120 = v8[19];
    v66 = demoModeConfigPath();
    sub_22A4DD5EC();

    sub_22A4DB4CC();

    sub_22A4DD5EC();
    sub_22A4DB4FC();

    v67 = *(v62 + 8);
    v67(v60, v63);
    (*(v62 + 16))(v64, v61, v63);
    (*(v62 + 56))(v64, 0, 1, v63);
    sub_229875850(v65, v64);
    v75 = v8[28];
    v77 = v8[19];
    v76 = v8[20];
    v78 = v8[18];
    sub_22953EAE4(v8[21], &qword_27D880180, &unk_22A586590);
    sub_229541CB0(v76, &off_283CE8678);
    swift_bridgeObjectRetain_n();
    v79 = v77;
    v80 = sub_22A4DD05C();
    v81 = sub_22A4DDCCC();

    if (os_log_type_enabled(v80, v81))
    {
      v118 = v81;
      v121 = v67;
      v84 = v8[18];
      v83 = v8[19];
      v85 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v85 = 136315394;
      v122 = v116;
      v123 = 91;
      v124 = 0xE100000000000000;
      v86 = v83;
      v87 = [v86 description];
      v88 = sub_22A4DD5EC();
      v90 = v89;

      MEMORY[0x22AAD08C0](v88, v90);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v91 = sub_2295A3E30(91, 0xE100000000000000, &v122);

      *(v85 + 4) = v91;
      *(v85 + 12) = 2048;
      v92 = v8[18];
      if (v84 >> 62)
      {
        if (v92 < 0)
        {
          v100 = v8[18];
        }

        v93 = sub_22A4DE0EC();
        v101 = v8[18];
      }

      else
      {
        v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v102 = v8[27];
      v103 = v8[28];
      v104 = v8[26];
      v114 = v8[25];
      v105 = v8[22];

      *(v85 + 14) = v93;

      _os_log_impl(&dword_229538000, v80, v118, "%s Did load %ld accessories", v85, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v116);
      MEMORY[0x22AAD4E50](v116, -1, -1);
      MEMORY[0x22AAD4E50](v85, -1, -1);

      (*(v102 + 8))(v103, v104);
      v121(v114, v105);
    }

    else
    {
      v95 = v8[27];
      v94 = v8[28];
      v97 = v8[25];
      v96 = v8[26];
      v98 = v8[22];
      v99 = v8[18];
      swift_bridgeObjectRelease_n();

      (*(v95 + 8))(v94, v96);
      v67(v97, v98);
    }

    v107 = v8[28];
    v106 = v8[29];
    v109 = v8[24];
    v108 = v8[25];
    v110 = v8[21];

    v73 = v8[1];
    goto LABEL_19;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8[30] = v10;
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  v11 = v8[18];
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x22AAD13F0](0);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x2822008A0](v10, v11, a3, a4, a5, a6, a7, a8);
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;
  v8[31] = v12;
  v8[32] = 1;
  v14 = [v12 home];
  v8[33] = v14;
  if (v14)
  {
    v15 = v14;
    v16 = [v14 backingStore];
    v8[17] = v16;
    v111 = sub_229562F68(0, &unk_281401B80, off_278666058);
    sub_22A4DBD4C();
    v25 = v8[29];
    v27 = v8[19];
    v26 = v8[20];

    v28 = v8[16];
    v29 = [v28 context];
    v8[34] = v29;

    sub_229541CB0(v26, &off_283CE8678);
    v30 = v27;
    v31 = v13;
    v32 = sub_22A4DD05C();
    v33 = sub_22A4DDCDC();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v8[29];
    v36 = v8[26];
    v37 = v8[27];
    if (v34)
    {
      v117 = v8[29];
      v38 = v8[19];
      v119 = v29;
      v39 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v123 = v115;
      *v39 = 136315394;
      v8[12] = 91;
      v8[13] = 0xE100000000000000;
      v40 = v38;
      v41 = [v40 description];
      v113 = v36;
      v42 = sub_22A4DD5EC();
      v112 = v33;
      v44 = v43;

      MEMORY[0x22AAD08C0](v42, v44);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v45 = sub_2295A3E30(v8[12], v8[13], &v123);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2080;
      v46 = [v31 shortDescription];
      v47 = sub_22A4DD5EC();
      v49 = v48;

      v50 = sub_2295A3E30(v47, v49, &v123);

      *(v39 + 14) = v50;
      _os_log_impl(&dword_229538000, v32, v112, "%s Loading accessory: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v115, -1, -1);
      v51 = v39;
      v29 = v119;
      MEMORY[0x22AAD4E50](v51, -1, -1);

      (*(v37 + 8))(v117, v113);
    }

    else
    {

      (*(v37 + 8))(v35, v36);
    }

    v52 = swift_allocObject();
    v8[35] = v52;
    *(v52 + 16) = v15;
    *(v52 + 24) = v31;
    v53 = *(v8 + 19);
    *(v52 + 32) = v53;
    v54 = v53;
    v55 = v31;
    v56 = v15;
    v57 = swift_task_alloc();
    v8[36] = v57;
    v57[2] = v29;
    v57[3] = sub_22988FB2C;
    v57[4] = v52;
    v58 = *(MEMORY[0x277D85A40] + 4);
    v10 = swift_task_alloc();
    v8[37] = v10;
    *v10 = v8;
    v10[1] = sub_22987A834;
    a6 = sub_229586C80;
    a5 = 0x800000022A58A7E0;
    a8 = MEMORY[0x277D84F78] + 8;
    v11 = 0;
    a3 = 0;
    a4 = 0xD000000000000016;
    a7 = v57;

    return MEMORY[0x2822008A0](v10, v11, a3, a4, a5, a6, a7, a8);
  }

  type metadata accessor for HMError(0);
  v8[15] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  v18 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v19;
  sub_22A4DE1FC();

  v123 = 0xD00000000000001DLL;
  v124 = 0x800000022A59A270;
  v20 = [v13 shortDescription];
  v21 = sub_22A4DD5EC();
  v23 = v22;

  MEMORY[0x22AAD08C0](v21, v23);

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0xD00000000000001DLL;
  *(inited + 56) = 0x800000022A59A270;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
  sub_22A4DB3CC();
  v24 = v8[14];
  swift_willThrow();

  v69 = v8[28];
  v68 = v8[29];
  v71 = v8[24];
  v70 = v8[25];
  v72 = v8[21];

  v73 = v8[1];
LABEL_19:

  return v73();
}

uint64_t sub_22987A834()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v8 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_22987B3C0;
  }

  else
  {
    v5 = *(v2 + 280);
    v6 = *(v2 + 288);

    v4 = sub_22987A958;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22987A958()
{
  v129 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);

  v12 = *(v0 + 304);
  if (v3 != v4)
  {
    v24 = *(v0 + 256);
    v25 = *(v0 + 144);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAD13F0](*(v0 + 256));
    }

    else
    {
      if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v5 = *(v25 + 8 * v24 + 32);
    }

    v26 = v5;
    *(v0 + 248) = v5;
    *(v0 + 256) = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      v27 = [v5 home];
      *(v0 + 264) = v27;
      if (!v27)
      {
        type metadata accessor for HMError(0);
        *(v0 + 120) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22A576180;
        v49 = *MEMORY[0x277CCA450];
        *(inited + 32) = sub_22A4DD5EC();
        *(inited + 40) = v50;
        sub_22A4DE1FC();

        v127 = 0xD00000000000001DLL;
        v128 = 0x800000022A59A270;
        v51 = [v26 shortDescription];
        v52 = sub_22A4DD5EC();
        v54 = v53;

        MEMORY[0x22AAD08C0](v52, v54);

        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 48) = 0xD00000000000001DLL;
        *(inited + 56) = 0x800000022A59A270;
        sub_22956AD8C(inited);
        swift_setDeallocating();
        sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
        sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
        sub_22A4DB3CC();
        v55 = *(v0 + 112);
        swift_willThrow();
        goto LABEL_15;
      }

      v28 = v27;
      v29 = [v27 backingStore];
      *(v0 + 136) = v29;
      v114 = sub_229562F68(0, &unk_281401B80, off_278666058);
      sub_22A4DBD4C();
      if (v12)
      {

LABEL_15:
        goto LABEL_16;
      }

      v62 = *(v0 + 232);
      v64 = *(v0 + 152);
      v63 = *(v0 + 160);

      v65 = *(v0 + 128);
      v66 = [v65 context];
      *(v0 + 272) = v66;

      sub_229541CB0(v63, &off_283CE8678);
      v67 = v64;
      v68 = v26;
      v69 = sub_22A4DD05C();
      v70 = sub_22A4DDCDC();

      v71 = os_log_type_enabled(v69, v70);
      v72 = *(v0 + 232);
      v73 = *(v0 + 208);
      v74 = *(v0 + 216);
      if (v71)
      {
        v122 = *(v0 + 232);
        v75 = *(v0 + 152);
        v125 = v66;
        v76 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v127 = v119;
        *v76 = 136315394;
        *(v0 + 96) = 91;
        *(v0 + 104) = 0xE100000000000000;
        v77 = v75;
        v78 = [v77 description];
        v116 = v73;
        v79 = sub_22A4DD5EC();
        v115 = v70;
        v81 = v80;

        MEMORY[0x22AAD08C0](v79, v81);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v82 = sub_2295A3E30(*(v0 + 96), *(v0 + 104), &v127);

        *(v76 + 4) = v82;
        *(v76 + 12) = 2080;
        v83 = [v68 shortDescription];
        v84 = sub_22A4DD5EC();
        v86 = v85;

        v87 = sub_2295A3E30(v84, v86, &v127);

        *(v76 + 14) = v87;
        _os_log_impl(&dword_229538000, v69, v115, "%s Loading accessory: %s", v76, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v119, -1, -1);
        v88 = v76;
        v66 = v125;
        MEMORY[0x22AAD4E50](v88, -1, -1);

        (*(v74 + 8))(v122, v116);
      }

      else
      {

        (*(v74 + 8))(v72, v73);
      }

      v95 = swift_allocObject();
      *(v0 + 280) = v95;
      *(v95 + 16) = v28;
      *(v95 + 24) = v68;
      v96 = *(v0 + 152);
      *(v95 + 32) = v96;
      v97 = v96;
      v98 = v68;
      v99 = v28;
      v100 = swift_task_alloc();
      *(v0 + 288) = v100;
      v100[2] = v66;
      v100[3] = sub_22988FB2C;
      v100[4] = v95;
      v101 = *(MEMORY[0x277D85A40] + 4);
      v5 = swift_task_alloc();
      *(v0 + 296) = v5;
      *v5 = v0;
      v5[1] = sub_22987A834;
      v9 = sub_229586C80;
      v8 = 0x800000022A58A7E0;
      v11 = MEMORY[0x277D84F78] + 8;
      v25 = 0;
      v6 = 0;
      v7 = 0xD000000000000016;
      v10 = v100;

      return MEMORY[0x2822008A0](v5, v25, v6, v7, v8, v9, v10, v11);
    }

    __break(1u);
LABEL_34:
    __break(1u);
    return MEMORY[0x2822008A0](v5, v25, v6, v7, v8, v9, v10, v11);
  }

  v123 = *(v0 + 304);
  v13 = *(v0 + 192);
  v14 = *(v0 + 200);
  v16 = *(v0 + 176);
  v15 = *(v0 + 184);
  v17 = *(v0 + 168);
  v18 = *(v0 + 144);
  v120 = *(v0 + 152);
  v19 = demoModeConfigPath();
  sub_22A4DD5EC();

  sub_22A4DB4CC();

  sub_22A4DD5EC();
  sub_22A4DB4FC();

  v20 = *(v15 + 8);
  v20(v13, v16);
  (*(v15 + 16))(v17, v14, v16);
  (*(v15 + 56))(v17, 0, 1, v16);
  sub_229875850(v18, v17);
  v21 = *(v0 + 168);
  if (!v123)
  {
    v30 = *(v0 + 224);
    v32 = *(v0 + 152);
    v31 = *(v0 + 160);
    v33 = *(v0 + 144);
    sub_22953EAE4(v21, &qword_27D880180, &unk_22A586590);
    sub_229541CB0(v31, &off_283CE8678);
    swift_bridgeObjectRetain_n();
    v34 = v32;
    v35 = sub_22A4DD05C();
    v36 = sub_22A4DDCCC();

    if (os_log_type_enabled(v35, v36))
    {
      v121 = v36;
      v124 = v20;
      v38 = *(v0 + 144);
      v37 = *(v0 + 152);
      v39 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v39 = 136315394;
      v126 = v118;
      v127 = 91;
      v128 = 0xE100000000000000;
      v40 = v37;
      v41 = [v40 description];
      v42 = sub_22A4DD5EC();
      v44 = v43;

      MEMORY[0x22AAD08C0](v42, v44);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v45 = sub_2295A3E30(91, 0xE100000000000000, &v126);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2048;
      v46 = *(v0 + 144);
      if (v38 >> 62)
      {
        if (v46 < 0)
        {
          v102 = *(v0 + 144);
        }

        v47 = sub_22A4DE0EC();
        v103 = *(v0 + 144);
      }

      else
      {
        v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v104 = *(v0 + 216);
      v105 = *(v0 + 224);
      v106 = *(v0 + 208);
      v117 = *(v0 + 200);
      v107 = *(v0 + 176);

      *(v39 + 14) = v47;

      _os_log_impl(&dword_229538000, v35, v121, "%s Did load %ld accessories", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v118);
      MEMORY[0x22AAD4E50](v118, -1, -1);
      MEMORY[0x22AAD4E50](v39, -1, -1);

      (*(v104 + 8))(v105, v106);
      v124(v117, v107);
    }

    else
    {
      v90 = *(v0 + 216);
      v89 = *(v0 + 224);
      v92 = *(v0 + 200);
      v91 = *(v0 + 208);
      v93 = *(v0 + 176);
      v94 = *(v0 + 144);
      swift_bridgeObjectRelease_n();

      (*(v90 + 8))(v89, v91);
      v20(v92, v93);
    }

    v109 = *(v0 + 224);
    v108 = *(v0 + 232);
    v111 = *(v0 + 192);
    v110 = *(v0 + 200);
    v112 = *(v0 + 168);

    v61 = *(v0 + 8);
    goto LABEL_29;
  }

  v22 = *(v0 + 200);
  v23 = *(v0 + 176);
  sub_22953EAE4(v21, &qword_27D880180, &unk_22A586590);
  v20(v22, v23);
LABEL_16:
  v57 = *(v0 + 224);
  v56 = *(v0 + 232);
  v59 = *(v0 + 192);
  v58 = *(v0 + 200);
  v60 = *(v0 + 168);

  v61 = *(v0 + 8);
LABEL_29:

  return v61();
}

uint64_t sub_22987B3C0()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[31];

  v6 = v0[38];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[24];
  v9 = v0[25];
  v11 = v0[21];

  v12 = v0[1];

  return v12();
}

uint64_t sub_22987B480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DD07C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22987B54C, 0, 0);
}

uint64_t sub_22987B54C()
{
  v26 = v0;
  v1 = v0[7];
  v2 = v0[2];
  sub_229541CB0(v0[3], &off_283CE8678);
  v3 = v2;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  if (v6)
  {
    v10 = v0[2];
    v24 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315138;
    v25[0] = v12;
    v25[1] = 91;
    v25[2] = 0xE100000000000000;
    v13 = v10;
    v14 = [v13 description];
    v15 = sub_22A4DD5EC();
    v23 = v7;
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v25);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_229538000, v4, v5, "%s Did not find a current accessory for Apple Media Accessory", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);

    v19 = *(v8 + 8);
    v19(v23, v24);
  }

  else
  {

    v19 = *(v8 + 8);
    v19(v7, v9);
  }

  v0[8] = v19;
  v20 = swift_task_alloc();
  v0[9] = v20;
  *v20 = v0;
  v20[1] = sub_22987B794;
  v21 = v0[2];

  return sub_22987BB90(0);
}

uint64_t sub_22987B794()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22987B8D8, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_22987B8D8()
{
  v34 = v0;
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[2];
  sub_229541CB0(v0[3], &off_283CE8678);
  v4 = v3;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  v10 = v0[8];
  v11 = v0[6];
  v12 = v0[4];
  if (v8)
  {
    v32 = v0[8];
    v13 = v0[2];
    v31 = v0[5];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136315394;
    v33[0] = v30;
    v33[1] = 91;
    v33[2] = 0xE100000000000000;
    v16 = v13;
    v29 = v11;
    v17 = [v16 description];
    v28 = v12;
    v18 = sub_22A4DD5EC();
    v20 = v19;

    MEMORY[0x22AAD08C0](v18, v20);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v21 = sub_2295A3E30(91, 0xE100000000000000, v33);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2112;
    v22 = v9;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v23;
    *v15 = v23;
    _os_log_impl(&dword_229538000, v6, v7, "%s Failed to create demo current accessory with error: %@", v14, 0x16u);
    sub_22953EAE4(v15, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AAD4E50](v30, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    v32(v29, v28);
  }

  else
  {

    v10(v11, v12);
  }

  v25 = v0[6];
  v24 = v0[7];

  v26 = v0[1];

  return v26();
}

uint64_t sub_22987BB90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22987BC5C, 0, 0);
}

id sub_22987BC5C()
{
  v2 = *(v0[3] + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_demoModeDataSource);
  if ([v2 isDemoModeV2EnabledAndActive])
  {
    if ([v2 isAppleMediaAccessory])
    {
      v3 = *(v0[3] + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager);
      v0[8] = v3;
      v4 = [v3 _accessoryOfCurrentDevice];
      if (!v4 || (v5 = v4, objc_opt_self(), v6 = swift_dynamicCastObjCClass(), v5, !v6))
      {
        result = [v3 homes];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v8 = result;
        sub_229562F68(0, &qword_2814017B0, off_278666198);
        v9 = sub_22A4DD83C();

        if (v9 >> 62)
        {
          if (sub_22A4DE0EC())
          {
LABEL_8:
            if ((v9 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x22AAD13F0](0, v9);
            }

            else
            {
              if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_25;
              }

              v10 = *(v9 + 32);
            }

            v1 = v10;
            v0[9] = v10;

            if (qword_27D87F8F8)
            {
              v11 = qword_27D87F8F8;
LABEL_15:
              swift_unknownObjectRetain();
              v12 = [v11 productInfo];
              v0[10] = v12;
              swift_unknownObjectRelease();
              v13 = swift_task_alloc();
              v0[11] = v13;
              *v13 = v0;
              v13[1] = sub_22987BF10;
              v14 = v0[2];
              v15 = v0[3];

              return sub_2295A9FF8(v1, v14, v12);
            }

            if (qword_281402220 == -1)
            {
LABEL_14:
              v11 = qword_281402230;
              swift_unknownObjectRetain();
              goto LABEL_15;
            }

LABEL_25:
            swift_once();
            goto LABEL_14;
          }
        }

        else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_8;
        }
      }
    }
  }

  v16 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_22987BF10()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_22987C318;
  }

  else
  {

    v4 = sub_22987C02C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22987C02C()
{
  v35 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  sub_229541CB0(*(v0 + 32), &off_283CE8678);
  v3 = v2;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (!os_log_type_enabled(v4, v5))
  {
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v24 = *(v0 + 40);

    (*(v23 + 8))(v22, v24);
    goto LABEL_9;
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 24);
  v8 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v34[0] = v33;
  *v8 = 136315394;
  v34[1] = 91;
  v34[2] = 0xE100000000000000;
  v9 = v7;
  v10 = [v9 description];
  v11 = sub_22A4DD5EC();
  v13 = v12;

  MEMORY[0x22AAD08C0](v11, v13);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  v14 = sub_2295A3E30(91, 0xE100000000000000, v34);

  *(v8 + 4) = v14;
  *(v8 + 12) = 2080;
  v15 = [v6 _accessoryOfCurrentDevice];
  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

    v15 = 0;
LABEL_7:
    v21 = 0xE000000000000000;
    goto LABEL_8;
  }

  v18 = [v17 shortDescription];

  v19 = sub_22A4DD5EC();
  v21 = v20;

  v15 = v19;
LABEL_8:
  v25 = *(v0 + 72);
  v27 = *(v0 + 48);
  v26 = *(v0 + 56);
  v28 = *(v0 + 40);
  v29 = sub_2295A3E30(v15, v21, v34);

  *(v8 + 14) = v29;
  _os_log_impl(&dword_229538000, v4, v5, "%s Did create a new current demo accessory: %s", v8, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AAD4E50](v33, -1, -1);
  MEMORY[0x22AAD4E50](v8, -1, -1);

  (*(v27 + 8))(v26, v28);
LABEL_9:
  v30 = *(v0 + 56);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_22987C318()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);
  v4 = *(v0 + 96);

  return v3();
}

uint64_t sub_22987C38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = sub_22A4DB7DC();
  v4[26] = v8;
  v9 = *(v8 - 8);
  v4[27] = v9;
  v10 = *(v9 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22987C4DC, 0, 0);
}

uint64_t sub_22987C4DC()
{
  v142 = v0;
  v1 = *(v0 + 136);
  type metadata accessor for DemoAccessoryServer();

  v3 = sub_22960BC94(v2, 0);
  *(v0 + 248) = v3;
  v4 = v3;
  v5 = [*(v0 + 144) accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v6 = sub_22A4DD83C();

  v127 = v0;
  if (v6 >> 62)
  {
LABEL_32:
    v131 = v6 & 0xFFFFFFFFFFFFFF8;
    log = sub_22A4DE0EC();
  }

  else
  {
    v131 = v6 & 0xFFFFFFFFFFFFFF8;
    log = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v137 = v4;
  while (1)
  {
    if (log == v7)
    {
      v19 = *(v0 + 240);
      v20 = v4;
      v21 = *(v0 + 208);
      v22 = *(v0 + 216);

      v23 = OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_uuid;
      swift_beginAccess();
      v24 = *(v22 + 16);
      v24(v19, &v20[v23], v21);
      sub_22960FCE0();
      if (qword_27D87B8A0 != -1)
      {
        swift_once();
      }

      v80 = *(v0 + 232);
      v79 = *(v0 + 240);
      v81 = *(v0 + 208);
      v82 = *(v0 + 200);
      v83 = *(v0 + 168);
      v84 = *(v0 + 160);
      sub_22956E358(v137);
      sub_229541CB0(v83, &off_283CE8678);
      v24(v80, v79, v81);
      v85 = v84;
      v86 = v137;
      v87 = v0;
      v88 = sub_22A4DD05C();
      v89 = sub_22A4DDCCC();

      v90 = os_log_type_enabled(v88, v89);
      v91 = v127[29];
      v93 = v127[26];
      v92 = v127[27];
      v94 = v127[25];
      v96 = v127[22];
      v95 = v127[23];
      if (v90)
      {
        logb = v88;
        v97 = v127[20];
        v138 = v127[22];
        v98 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        *v98 = 136315650;
        v139 = v133;
        v140 = 91;
        v141 = 0xE100000000000000;
        v99 = v97;
        v100 = [v99 description];
        v126 = v89;
        v101 = v86;
        v102 = sub_22A4DD5EC();
        v130 = v94;
        v104 = v103;

        v105 = v102;
        v86 = v101;
        MEMORY[0x22AAD08C0](v105, v104);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v106 = sub_2295A3E30(91, 0xE100000000000000, &v139);

        *(v98 + 4) = v106;
        *(v98 + 12) = 2080;
        sub_22988FA1C(&qword_281403860, MEMORY[0x277CC95F0]);
        v107 = sub_22A4DE5CC();
        v109 = v108;
        v110 = *(v92 + 8);
        v110(v91, v93);
        v111 = sub_2295A3E30(v107, v109, &v139);

        *(v98 + 14) = v111;
        *(v98 + 22) = 2080;
        v112 = [v86 shortDescription];
        v113 = sub_22A4DD5EC();
        v115 = v114;

        v116 = sub_2295A3E30(v113, v115, &v139);
        v87 = v127;

        *(v98 + 24) = v116;
        _os_log_impl(&dword_229538000, logb, v126, "%s Processing newly paired demo accessory server: %s - %s", v98, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v133, -1, -1);
        MEMORY[0x22AAD4E50](v98, -1, -1);

        (*(v95 + 8))(v130, v138);
      }

      else
      {

        v110 = *(v92 + 8);
        v110(v91, v93);
        (*(v95 + 8))(v94, v96);
      }

      v87[32] = v110;
      v117 = v87[30];
      v119 = v87[20];
      v118 = v87[21];
      v120 = v87;
      v123 = v87 + 18;
      v122 = v87[18];
      v121 = v123[1];
      v124 = swift_task_alloc();
      v120[33] = v124;
      v124[2] = v122;
      v124[3] = v86;
      v124[4] = v117;
      v124[5] = v119;
      v124[6] = v121;
      v124[7] = v118;
      v125 = *(MEMORY[0x277D85A40] + 4);
      v47 = swift_task_alloc();
      v120[34] = v47;
      *v47 = v120;
      v47[1] = sub_22987D03C;
      v52 = sub_22988FF8C;
      v50 = 0xD000000000000027;
      v51 = 0x800000022A59A610;
      v54 = MEMORY[0x277D84F78] + 8;
      v48 = 0;
      v49 = 0;
      v53 = v124;

      return MEMORY[0x2822008A0](v47, v48, v49, v50, v51, v52, v53, v54);
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AAD13F0](v7, v6);
    }

    else
    {
      if (v7 >= *(v131 + 16))
      {
        goto LABEL_31;
      }

      v9 = *(v6 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v11 = [v9 identifier];
    v12 = sub_22A4DD5EC();
    v14 = v13;

    v15 = [v4 identifier];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    if (v12 == v16 && v14 == v18)
    {
      break;
    }

    v8 = sub_22A4DE60C();

    v7 = (v7 + 1);
    v4 = v137;
    if (v8)
    {
      goto LABEL_15;
    }
  }

  v4 = v137;
LABEL_15:
  v25 = *(v0 + 192);
  v27 = *(v0 + 160);
  v26 = v127[21];
  v28 = v127[18];

  sub_229541CB0(v26, &off_283CE8678);
  v29 = v27;
  v30 = v28;
  v31 = sub_22A4DD05C();
  v32 = sub_22A4DDCEC();

  if (!os_log_type_enabled(v31, v32))
  {
    v67 = v127[23];
    v66 = v127[24];
    v68 = v127[22];

    (*(v67 + 8))(v66, v68);
    v65 = v127;
    goto LABEL_19;
  }

  loga = v32;
  v33 = v127[20];
  v34 = v127[18];
  v35 = swift_slowAlloc();
  v132 = swift_slowAlloc();
  *v35 = 136315650;
  v139 = v132;
  v140 = 91;
  v141 = 0xE100000000000000;
  v36 = v33;
  v37 = [v36 description];
  v38 = sub_22A4DD5EC();
  v40 = v39;

  MEMORY[0x22AAD08C0](v38, v40);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  v41 = sub_2295A3E30(91, 0xE100000000000000, &v139);

  *(v35 + 4) = v41;
  *(v35 + 12) = 2080;
  v42 = [v34 shortDescription];
  v43 = sub_22A4DD5EC();
  v45 = v44;

  v46 = sub_2295A3E30(v43, v45, &v139);

  *(v35 + 14) = v46;
  *(v35 + 22) = 2080;
  v47 = [*&v36[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] uuid];
  if (!v47)
  {
    __break(1u);
    return MEMORY[0x2822008A0](v47, v48, v49, v50, v51, v52, v53, v54);
  }

  v55 = v47;
  v57 = v127[27];
  v56 = v127[28];
  v58 = v127[26];
  v59 = v127[23];
  v128 = v127[24];
  v60 = v127[22];
  sub_22A4DB79C();

  sub_22988FA1C(&qword_281403860, MEMORY[0x277CC95F0]);
  v61 = sub_22A4DE5CC();
  v63 = v62;
  (*(v57 + 8))(v56, v58);
  v64 = sub_2295A3E30(v61, v63, &v139);

  *(v35 + 24) = v64;
  _os_log_impl(&dword_229538000, v31, loga, "%s home: %s already has an accessory with identifier: %s", v35, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x22AAD4E50](v132, -1, -1);
  MEMORY[0x22AAD4E50](v35, -1, -1);

  (*(v59 + 8))(v128, v60);
  v65 = v127;
  v4 = v137;
LABEL_19:
  type metadata accessor for HMError(0);
  v65[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  v70 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v71;
  *(inited + 48) = 0xD000000000000020;
  *(inited + 56) = 0x800000022A59A5E0;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
  sub_22A4DB3CC();
  v129 = v65[15];
  swift_willThrow();

  v73 = v65[29];
  v72 = v65[30];
  v74 = v65[28];
  v76 = v65[24];
  v75 = v65[25];

  v77 = v65[1];

  return v77();
}

uint64_t sub_22987D03C()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_22987D224;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_22987D158;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22987D158()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  v8 = *(v0 + 192);

  v1(v3, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22987D224()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);

  v2(v3, v4);
  v6 = *(v0 + 280);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v9 = *(v0 + 224);
  v11 = *(v0 + 192);
  v10 = *(v0 + 200);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22987D2F0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v39 = a6;
  v40 = a7;
  v37 = a5;
  v38 = a3;
  v35 = a4;
  v36 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v33 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v34 = &v31 - v12;
  v32 = sub_22A4DB7DC();
  v14 = *(v32 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v32);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a4);
  v31 = v10;
  (*(v10 + 16))(v13, a1, v9);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v10 + 80) + v18 + 8) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v36;
  *(v22 + 16) = v36;
  (*(v14 + 32))(v22 + v17, v16, v32);
  v24 = v37;
  *(v22 + v18) = v37;
  (*(v31 + 32))(v22 + v19, v34, v33);
  v26 = v38;
  v25 = v39;
  *(v22 + v20) = v39;
  *(v22 + v21) = v26;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;
  v27 = v25;
  v28 = v26;
  v23;
  v29 = v24;
  sub_229812E5C(v28, v35, sub_22988FF9C, v22);
}

uint64_t sub_22987D594(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v47 = a7;
  v48 = a8;
  v45 = a4;
  v46 = a6;
  v44 = a5;
  v42 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v40 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v41 = &v37 - v12;
  v14 = sub_22A4DB7DC();
  v38 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v39 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v37 - v19;
  v43 = &v37 - v19;
  v21 = sub_22A4DD9DC();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v15 + 16))(&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v14);
  (*(v10 + 16))(v13, v44, v9);
  v22 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v23 = (v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v10 + 80) + v23 + 8) & ~*(v10 + 80);
  v25 = (v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v42;
  *(v27 + 4) = v42;
  (*(v15 + 32))(&v27[v22], v39, v38);
  v29 = v45;
  *&v27[v23] = v45;
  (*(v10 + 32))(&v27[v24], v41, v40);
  v30 = v46;
  v31 = v47;
  *&v27[v25] = v46;
  *&v27[v26] = v31;
  *&v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8] = v48;
  v32 = v30;
  v33 = v31;
  v34 = v28;
  v35 = v29;
  sub_22957F3C0(0, 0, v43, &unk_22A5868B8, v27);
}

uint64_t sub_22987D8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v17;
  v8[12] = v18;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = sub_22A4DD07C();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v12 = sub_22A4DB7DC();
  v8[17] = v12;
  v13 = *(v12 - 8);
  v8[18] = v13;
  v14 = *(v13 + 64) + 15;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22987DA04, 0, 0);
}

uint64_t sub_22987DA04()
{
  v54 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = sub_22A4DB77C();
  v4 = [v1 accessoryWithUUID_];
  *(v0 + 168) = v4;

  if (!v4)
  {
LABEL_8:
    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 56);
    v17 = *(v0 + 64);
    sub_229541CB0(*(v0 + 96), &off_283CE8678);
    (*(v13 + 16))(v12, v16, v14);
    v18 = v17;
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();

    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 144);
    v22 = *(v0 + 152);
    v24 = *(v0 + 128);
    v25 = *(v0 + 136);
    v26 = *(v0 + 104);
    v27 = *(v0 + 112);
    if (v21)
    {
      v52 = *(v0 + 128);
      v28 = *(v0 + 64);
      v49 = *(v0 + 152);
      v29 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v29 = 136315394;
      v53[0] = v51;
      v53[1] = 91;
      v53[2] = 0xE100000000000000;
      v30 = v28;
      v50 = v26;
      v31 = [v30 description];
      v48 = v20;
      v32 = sub_22A4DD5EC();
      v34 = v33;

      MEMORY[0x22AAD08C0](v32, v34);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v35 = sub_2295A3E30(91, 0xE100000000000000, v53);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      sub_22988FA1C(&qword_281403860, MEMORY[0x277CC95F0]);
      v36 = sub_22A4DE5CC();
      v38 = v37;
      (*(v23 + 8))(v49, v25);
      v39 = sub_2295A3E30(v36, v38, v53);

      *(v29 + 14) = v39;
      _os_log_impl(&dword_229538000, v19, v48, "%s Failed to find accessory with: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v51, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);

      (*(v27 + 8))(v52, v50);
    }

    else
    {

      (*(v23 + 8))(v22, v25);
      (*(v27 + 8))(v24, v26);
    }

    v40 = *(v0 + 72);
    type metadata accessor for HMError(0);
    *(v0 + 24) = 2;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    *(v0 + 32) = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8EC();
    goto LABEL_12;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  *(v0 + 176) = v5;
  if (!v5)
  {

    goto LABEL_8;
  }

  v6 = *(v0 + 80);
  if (v6)
  {
    v7 = *(v0 + 160);
    v8 = [v6 uuid];
    sub_22A4DB79C();

    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_22987DF44;
    v10 = *(v0 + 160);

    return sub_2295A7128(v10);
  }

  if (qword_27D87B8A0 != -1)
  {
    swift_once();
  }

  v46 = *(v0 + 168);
  v47 = *(v0 + 72);
  sub_22956DFF4(*(v0 + 88));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  sub_22A4DD8FC();

LABEL_12:
  v42 = *(v0 + 152);
  v41 = *(v0 + 160);
  v44 = *(v0 + 120);
  v43 = *(v0 + 128);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_22987DF44()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 192) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_22987E1AC;
  }

  else
  {
    v6 = sub_22987E0B4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22987E0B4()
{
  if (qword_27D87B8A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 72);
  sub_22956DFF4(*(v0 + 88));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  sub_22A4DD8FC();

  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22987E1AC()
{
  v51 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[8];
  sub_229541CB0(v0[12], &off_283CE8678);
  v6 = v4;
  v7 = v5;
  v8 = v2;
  v9 = v1;
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCEC();

  if (os_log_type_enabled(v10, v11))
  {
    v44 = v0[22];
    v45 = v0[24];
    v47 = v0[14];
    v48 = v0[13];
    v49 = v0[15];
    v12 = v0[10];
    v13 = v0[8];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v14 = 136315906;
    v50[0] = v46;
    v50[1] = 91;
    v50[2] = 0xE100000000000000;
    v16 = v13;
    v17 = [v16 description];
    v18 = sub_22A4DD5EC();
    v20 = v19;

    MEMORY[0x22AAD08C0](v18, v20);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v21 = sub_2295A3E30(91, 0xE100000000000000, v50);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    v22 = [v44 shortDescription];
    v23 = sub_22A4DD5EC();
    v25 = v24;

    v26 = sub_2295A3E30(v23, v25, v50);

    *(v14 + 14) = v26;
    *(v14 + 22) = 2112;
    *(v14 + 24) = v12;
    *v15 = v12;
    *(v14 + 32) = 2112;
    v27 = v12;
    v28 = v45;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 34) = v29;
    v15[1] = v29;
    _os_log_impl(&dword_229538000, v10, v11, "%s Failed to move accessory: %s to room: %@ with error: %@", v14, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v46, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    (*(v47 + 8))(v49, v48);
  }

  else
  {
    v31 = v0[14];
    v30 = v0[15];
    v32 = v0[13];

    (*(v31 + 8))(v30, v32);
  }

  v33 = v0[24];
  v34 = v0[21];
  v35 = v0[9];
  v36 = v0[10];
  v0[5] = v33;
  v37 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  sub_22A4DD8EC();

  v39 = v0[19];
  v38 = v0[20];
  v41 = v0[15];
  v40 = v0[16];

  v42 = v0[1];

  return v42();
}

void sub_22987E564(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v91 = a4;
  v92 = a3;
  v89 = a2;
  v6 = sub_22A4DD07C();
  v88 = *(v6 - 8);
  v7 = *(v88 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v86 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v87 = &v82 - v10;
  v11 = sub_22A4DB7DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_opt_self();
  v17 = [a1 uuid];
  sub_22A4DB79C();

  v18 = sub_22A4DB77C();
  v21 = *(v12 + 8);
  v20 = (v12 + 8);
  v19 = v21;
  (v21)(v15, v11);
  v22 = [v16 findHomeWithModelID_];

  v95 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D290, &qword_22A57BB20);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (!v4)
  {
    v23 = v93;
    v24 = [v89 uuid];
    sub_22A4DB79C();

    v25 = sub_22A4DB77C();
    (v19)(v15, v11);
    v85 = v23;
    v26 = [v23 findAccessoriesRelationOfTypeHAPAccessoryWithModelID_];

    v90 = v6;
    if (v26)
    {
      v27 = v26;
      v28 = [v89 services];
      sub_229562F68(0, &unk_27D87D360, off_278666310);
      v29 = sub_22A4DD83C();

      if (v29 >> 62)
      {
        goto LABEL_19;
      }

      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = v26; v30; i = v27)
      {
        v32 = 0;
        v27 = v29 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x22AAD13F0](v32, v29);
          }

          else
          {
            if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v33 = *(v29 + 8 * v32 + 32);
          }

          v34 = v33;
          v6 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          v93 = v33;
          sub_22987EF6C(&v93, i, v92, v91);

          ++v32;
          v35 = v6 == v30;
          v6 = v90;
          if (v35)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        v30 = sub_22A4DE0EC();
      }

LABEL_20:

      v62 = v87;
      sub_229541CB0(v91, &off_283CE8678);
      v63 = v92;
      v64 = v89;
      v65 = sub_22A4DD05C();
      v66 = sub_22A4DDCDC();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v92 = i;
        v68 = v67;
        v69 = swift_slowAlloc();
        v95 = v69;
        *v68 = 136315394;
        v93 = 91;
        v94 = 0xE100000000000000;
        v70 = v63;
        LODWORD(v91) = v66;
        v71 = v70;
        v72 = [v70 description];
        v73 = sub_22A4DD5EC();
        v75 = v74;

        MEMORY[0x22AAD08C0](v73, v75);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v76 = sub_2295A3E30(v93, v94, &v95);

        *(v68 + 4) = v76;
        *(v68 + 12) = 2080;
        v77 = [v64 shortDescription];
        v78 = sub_22A4DD5EC();
        v80 = v79;

        v81 = sub_2295A3E30(v78, v80, &v95);

        *(v68 + 14) = v81;
        _os_log_impl(&dword_229538000, v65, v91, "%s Did load accessory: %s", v68, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v69, -1, -1);
        MEMORY[0x22AAD4E50](v68, -1, -1);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        (*(v88 + 8))(v87, v90);
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v88 + 8))(v62, v6);
      }
    }

    else
    {
      v83 = v11;
      v84 = v15;
      v87 = v19;
      v36 = v86;
      sub_229541CB0(v91, &off_283CE8678);
      v37 = v92;
      v38 = v89;
      v39 = sub_22A4DD05C();
      v40 = sub_22A4DDCEC();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v95 = v91;
        *v41 = 136315394;
        v93 = 91;
        v94 = 0xE100000000000000;
        v42 = v37;
        v43 = [v42 description];
        v44 = sub_22A4DD5EC();
        v92 = v20;
        v45 = v40;
        v46 = v44;
        v48 = v47;

        MEMORY[0x22AAD08C0](v46, v48);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v49 = sub_2295A3E30(v93, v94, &v95);

        *(v41 + 4) = v49;
        *(v41 + 12) = 2112;
        *(v41 + 14) = v38;
        v50 = v89;
        *v89 = v38;
        v51 = v38;
        _os_log_impl(&dword_229538000, v39, v45, "%s Did not find accessory: %@", v41, 0x16u);
        sub_22953EAE4(v50, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v50, -1, -1);
        v52 = v91;
        __swift_destroy_boxed_opaque_existential_0(v91);
        MEMORY[0x22AAD4E50](v52, -1, -1);
        MEMORY[0x22AAD4E50](v41, -1, -1);
      }

      (*(v88 + 8))(v36, v90);
      type metadata accessor for HMError(0);
      v95 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      v54 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 40) = v55;
      v93 = 0;
      v94 = 0xE000000000000000;
      sub_22A4DE1FC();

      v93 = 0xD000000000000017;
      v94 = 0x800000022A59A320;
      v56 = [v38 uuid];
      v57 = v84;
      sub_22A4DB79C();

      sub_22988FA1C(&qword_281403860, MEMORY[0x277CC95F0]);
      v58 = v83;
      v59 = sub_22A4DE5CC();
      MEMORY[0x22AAD08C0](v59);

      (v87)(v57, v58);
      v60 = v93;
      v61 = v94;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v60;
      *(inited + 56) = v61;
      sub_22956AD8C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
      sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError);
      sub_22A4DB3CC();
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }
}