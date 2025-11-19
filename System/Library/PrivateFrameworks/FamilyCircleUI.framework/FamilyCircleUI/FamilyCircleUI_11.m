uint64_t sub_21BC8FC40()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_21BC8FE34;
  }

  else
  {
    v3 = sub_21BC8FD54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BC8FD54()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[20];
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_21BC8FE34()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[13];
  v7 = v0[11];
  v6 = v0[12];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];
  v9 = v0[22];

  return v8();
}

uint64_t *sub_21BC8FF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v28 = a2;
  v29 = a3;
  v4 = sub_21BE26A4C();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &qword_21BE3CC70;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = sub_21BE266DC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  swift_beginAccess();
  sub_21BBA3854(v3 + v18, v12, &qword_27CDB7AC8, &qword_21BE3CC70);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21BB3A4CC(v12, &qword_27CDB7AC8, &qword_21BE3CC70);
    sub_21BE2614C();
    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FDC();
    if (os_log_type_enabled(v19, v20))
    {
      v8 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v8 = 136315138;
      *(v8 + 4) = sub_21BB3D81C(0xD000000000000022, 0x800000021BE5A710, &v33);
      _os_log_impl(&dword_21BB35000, v19, v20, "ParentalControlStore.%s settings is unxpectedly nil", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v8, -1, -1);
    }

    (*(v31 + 8))(v7, v32);
    sub_21BC908C4();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v24 = v28;
    v25 = v29;
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v25;

    v8 = sub_21BE2671C();

    (*(v14 + 8))(v17, v13);
  }

  return v8;
}

uint64_t sub_21BC902FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_21BE266DC();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v13, a1, v16);
    (*(v17 + 56))(v13, 0, 1, v16);
    v18 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
    swift_beginAccess();
    sub_21BBFD920(v13, v15 + v18, &qword_27CDB7AC8, &qword_21BE3CC70);
    v19 = swift_endAccess();
    a3(v19);
  }

  else
  {
    sub_21BE2614C();
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_21BB3D81C(0xD000000000000022, 0x800000021BE5A710, v25);
      _os_log_impl(&dword_21BB35000, v21, v22, "ParentalControlStore.%s dismiss called after self is deallocated", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x21CF05C50](v24, -1, -1);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_21BC905F8()
{
  sub_21BB3A4CC(v0 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore__presets, qword_27CDB7AF8, &qword_21BE391D0);
  sub_21BB3A4CC(v0 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings, &qword_27CDB7AC8, &qword_21BE3CC70);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_expressSettingsStore));
  sub_21BB3A4CC(v0 + OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_user, &qword_27CDB89B0, &qword_21BE3CC78);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ParentalControlStore()
{
  result = qword_27CDB8980;
  if (!qword_27CDB8980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC90710()
{
  sub_21BC90870(319, &qword_27CDB8990, MEMORY[0x277D4BD50]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_21BC90870(319, &qword_27CDB8998, MEMORY[0x277D4BCE0]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_21BC90870(319, &qword_27CDB89A0, MEMORY[0x277D4BD88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21BC90870(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE2946C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21BC908C4()
{
  result = qword_27CDB89A8;
  if (!qword_27CDB89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB89A8);
  }

  return result;
}

unint64_t sub_21BC90938()
{
  result = qword_27CDB89B8;
  if (!qword_27CDB89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB89B8);
  }

  return result;
}

uint64_t sub_21BC909B8@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_21BE26A4C();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE257FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21BE2590C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE258FC();
  sub_21BE258DC();
  MEMORY[0x21CF00A60](0x646E65697266, 0xE600000000000000);
  v16 = [*v1 appleID];
  if (v16)
  {
    v17 = v16;
    v18 = sub_21BE28A0C();
    v20 = v19;

    sub_21BE257CC();
    sub_21BE257EC();
    v34 = v18;
    v35 = v20;
    sub_21BB41FA4();
    v21 = sub_21BE2949C();
    v23 = v22;

    if (v23)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    if (!v23)
    {
      v23 = 0xE000000000000000;
    }

    v34 = 47;
    v35 = 0xE100000000000000;
    MEMORY[0x21CF03CA0](v24, v23);

    MEMORY[0x21CF00A70](v34, v35);
    sub_21BE258AC();
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    v27 = v32;
    v26 = v33;
    sub_21BE2614C();
    v28 = sub_21BE26A2C();
    v29 = sub_21BE28FDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_21BB35000, v28, v29, "Member appleID does not exist", v30, 2u);
      MEMORY[0x21CF05C50](v30, -1, -1);
    }

    (*(v27 + 8))(v5, v2);
    (*(v12 + 8))(v15, v11);
    v31 = sub_21BE25B9C();
    return (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
  }
}

uint64_t sub_21BC90D7C@<X0>(void **a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a1[3];
  v10 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v11 = v21[0];
  v20 = v21;
  v21[0] = v10;
  v12 = sub_21BC9DAC4(sub_21BC93958, v19, v11);

  sub_21BE2616C();
  sub_21BC9332C(a1, v21);
  v13 = sub_21BE26A2C();
  v14 = sub_21BE28FFC();
  sub_21BC93814(a1);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 67109378;
    *(v15 + 4) = v12 & 1;
    *(v15 + 8) = 2112;
    *(v15 + 10) = v10;
    *v16 = v10;
    v17 = v10;
    _os_log_impl(&dword_21BB35000, v13, v14, "iSharing %{BOOL}d for %@", v15, 0x12u);
    sub_21BB3A4CC(v16, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v16, -1, -1);
    MEMORY[0x21CF05C50](v15, -1, -1);
  }

  result = (*(v5 + 8))(v8, v4);
  *a2 = v12 & 1;
  return result;
}

uint64_t sub_21BC90FCC(char *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - v8;
  v10 = *a1;
  v18[0] = a4[2];
  v19 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  v11 = sub_21BE28DAC();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_21BE28D7C();
  sub_21BC9332C(a4, v18);
  v12 = sub_21BE28D6C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  v15 = a4[1];
  *(v13 + 32) = *a4;
  *(v13 + 48) = v15;
  v16 = a4[3];
  *(v13 + 64) = a4[2];
  *(v13 + 80) = v16;
  *(v13 + 96) = v10;
  sub_21BBA932C(0, 0, v9, &unk_21BE3CF28, v13);
}

uint64_t sub_21BC91144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 507) = a5;
  *(v5 + 392) = a4;
  v6 = sub_21BE26A4C();
  *(v5 + 400) = v6;
  v7 = *(v6 - 8);
  *(v5 + 408) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  sub_21BE28D7C();
  *(v5 + 432) = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  *(v5 + 440) = v10;
  *(v5 + 448) = v9;

  return MEMORY[0x2822009F8](sub_21BC91248, v10, v9);
}

uint64_t sub_21BC91248()
{
  v35 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 392);
  sub_21BE2616C();
  sub_21BC9332C(v2, v0 + 104);
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v30 = *(v0 + 408);
    v31 = *(v0 + 400);
    v32 = *(v0 + 424);
    v5 = *(v0 + 392);
    v6 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34 = v29;
    *v6 = 136315650;
    *(v6 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE5A7D0, &v34);
    *(v6 + 12) = 1024;
    v7 = v5[3];
    v8 = *v5;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v9 = *(v0 + 376);
    *(v0 + 384) = v8;
    v10 = swift_task_alloc();
    *(v10 + 16) = v0 + 384;
    v11 = sub_21BC9DAC4(sub_21BC93958, v10, v9);

    *(v6 + 14) = v11 & 1;
    sub_21BC93814(v5);
    *(v6 + 18) = 2112;
    *(v6 + 20) = v8;
    *v28 = v8;
    v12 = v8;
    _os_log_impl(&dword_21BB35000, v3, v4, "%s iSharing %{BOOL}d for %@ before toggle", v6, 0x1Cu);
    sub_21BB3A4CC(v28, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x21CF05C50](v29, -1, -1);
    MEMORY[0x21CF05C50](v6, -1, -1);

    v13 = *(v30 + 8);
    v13(v32, v31);
  }

  else
  {
    v14 = *(v0 + 424);
    v15 = *(v0 + 400);
    v16 = *(v0 + 408);
    sub_21BC93814(*(v0 + 392));

    v13 = *(v16 + 8);
    v13(v14, v15);
  }

  *(v0 + 456) = 0;
  *(v0 + 464) = v13;
  v17 = *(v0 + 507);
  v18 = *(v0 + 392);
  v19 = *(v18 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  if (v17 == 1)
  {
    inited = swift_initStackObject();
    *(v0 + 472) = inited;
    *(inited + 16) = xmmword_21BE34D60;
    v21 = *v18;
    *(inited + 32) = *v18;
    v33 = sub_21BCD7270;
    v22 = v21;
    v23 = swift_task_alloc();
    *(v0 + 480) = v23;
    *v23 = v0;
    v24 = sub_21BC9162C;
  }

  else
  {
    inited = swift_initStackObject();
    *(v0 + 488) = inited;
    *(inited + 16) = xmmword_21BE34D60;
    v25 = *v18;
    *(inited + 32) = *v18;
    v33 = sub_21BCD831C;
    v26 = v25;
    v23 = swift_task_alloc();
    *(v0 + 496) = v23;
    *v23 = v0;
    v24 = sub_21BC91BE8;
  }

  v23[1] = v24;

  return v33(inited);
}

uint64_t sub_21BC9162C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *(*v1 + 472);
  v9 = *v1;
  *(*v1 + 508) = a1;

  swift_setDeallocating();
  v5 = *(v4 + 16);
  swift_arrayDestroy();
  v6 = *(v2 + 448);
  v7 = *(v2 + 440);

  return MEMORY[0x2822009F8](sub_21BC91790, v7, v6);
}

uint64_t sub_21BC91790()
{
  v37 = v0;
  v1 = *(v0 + 508);
  v2 = *(v0 + 432);
  v3 = *(v0 + 392);

  *(v0 + 344) = *(v3 + 48);
  *(v0 + 506) = (v1 & 1) == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  *(v0 + 328) = *(*(v0 + 392) + 32);
  *(v0 + 505) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 416);
  v5 = *(v0 + 507);
  v6 = *(v0 + 392);
  LOBYTE(v36[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD00000000000001FLL;
  v8 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000021BE5A7B0;
  *(inited + 72) = v8;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = v5;

  v9 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(v36, v9);

  sub_21BE2616C();
  sub_21BC9332C(v6, v0 + 168);
  v10 = sub_21BE26A2C();
  v11 = sub_21BE28FFC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 464);
  if (v12)
  {
    v29 = *(v0 + 456);
    v33 = *(v0 + 408);
    v14 = *(v0 + 392);
    v34 = *(v0 + 400);
    v35 = *(v0 + 416);
    v32 = *(v0 + 464);
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36[0] = v31;
    *v15 = 136315650;
    *(v15 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE5A7D0, v36);
    *(v15 + 12) = 1024;
    v16 = v14[3];
    v17 = *v14;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v18 = *(v0 + 360);
    *(v0 + 368) = v17;
    v19 = swift_task_alloc();
    *(v19 + 16) = v0 + 368;
    v20 = sub_21BC9DAC4(sub_21BC93844, v19, v18);

    *(v15 + 14) = v20 & 1;
    sub_21BC93814(v14);
    *(v15 + 18) = 2112;
    *(v15 + 20) = v17;
    *v30 = v17;
    v21 = v17;
    _os_log_impl(&dword_21BB35000, v10, v11, "%s iSharing %{BOOL}d for %@ after toggle", v15, 0x1Cu);
    sub_21BB3A4CC(v30, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x21CF05C50](v31, -1, -1);
    MEMORY[0x21CF05C50](v15, -1, -1);

    v32(v35, v34);
  }

  else
  {
    v23 = *(v0 + 408);
    v22 = *(v0 + 416);
    v24 = *(v0 + 400);
    sub_21BC93814(*(v0 + 392));

    v13(v22, v24);
  }

  v26 = *(v0 + 416);
  v25 = *(v0 + 424);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_21BC91BE8(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *(*v1 + 488);
  v9 = *v1;
  *(*v1 + 509) = a1;

  swift_setDeallocating();
  v5 = *(v4 + 16);
  swift_arrayDestroy();
  v6 = *(v2 + 448);
  v7 = *(v2 + 440);

  return MEMORY[0x2822009F8](sub_21BC91D4C, v7, v6);
}

uint64_t sub_21BC91D4C()
{
  v37 = v0;
  v1 = *(v0 + 509);
  v2 = *(v0 + 432);
  v3 = *(v0 + 392);

  *(v0 + 312) = *(v3 + 48);
  *(v0 + 504) = (v1 & 1) == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  *(v0 + 328) = *(*(v0 + 392) + 32);
  *(v0 + 505) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 416);
  v5 = *(v0 + 507);
  v6 = *(v0 + 392);
  LOBYTE(v36[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD00000000000001FLL;
  v8 = MEMORY[0x277D839B0];
  *(inited + 40) = 0x800000021BE5A7B0;
  *(inited + 72) = v8;
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = v5;

  v9 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(v36, v9);

  sub_21BE2616C();
  sub_21BC9332C(v6, v0 + 168);
  v10 = sub_21BE26A2C();
  v11 = sub_21BE28FFC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 464);
  if (v12)
  {
    v29 = *(v0 + 456);
    v33 = *(v0 + 408);
    v14 = *(v0 + 392);
    v34 = *(v0 + 400);
    v35 = *(v0 + 416);
    v32 = *(v0 + 464);
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36[0] = v31;
    *v15 = 136315650;
    *(v15 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE5A7D0, v36);
    *(v15 + 12) = 1024;
    v16 = v14[3];
    v17 = *v14;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v18 = *(v0 + 360);
    *(v0 + 368) = v17;
    v19 = swift_task_alloc();
    *(v19 + 16) = v0 + 368;
    v20 = sub_21BC9DAC4(sub_21BC93844, v19, v18);

    *(v15 + 14) = v20 & 1;
    sub_21BC93814(v14);
    *(v15 + 18) = 2112;
    *(v15 + 20) = v17;
    *v30 = v17;
    v21 = v17;
    _os_log_impl(&dword_21BB35000, v10, v11, "%s iSharing %{BOOL}d for %@ after toggle", v15, 0x1Cu);
    sub_21BB3A4CC(v30, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x21CF05C50](v31, -1, -1);
    MEMORY[0x21CF05C50](v15, -1, -1);

    v32(v35, v34);
  }

  else
  {
    v23 = *(v0 + 408);
    v22 = *(v0 + 416);
    v24 = *(v0 + 400);
    sub_21BC93814(*(v0 + 392));

    v13(v22, v24);
  }

  v26 = *(v0 + 416);
  v25 = *(v0 + 424);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_21BC921A4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89C0, &qword_21BE3CE10);
  v2 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89C8, &unk_21BE3CE18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  sub_21BC909B8(&v21 - v12);
  v14 = sub_21BE25B9C();
  v15 = 1;
  v16 = (*(*(v14 - 8) + 48))(v13, 1, v14);
  v17 = v13;
  v18 = v23;
  sub_21BB3A4CC(v17, &unk_27CDB57F0, &qword_21BE328A0);
  if (v16 != 1)
  {
    *v4 = sub_21BE275DC();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89D0, &unk_21BE3CE28);
    sub_21BC924B0(v1, &v4[*(v19 + 44)]);
    v24 = *(v1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2841C();
    sub_21BB3B038(&qword_27CDB89D8, &qword_27CDB89C0, &qword_21BE3CE10);
    sub_21BE280DC();

    sub_21BB3A4CC(v4, &qword_27CDB89C0, &qword_21BE3CE10);
    (*(v6 + 32))(v18, v9, v5);
    v15 = 0;
  }

  return (*(v6 + 56))(v18, v15, 1, v5);
}

void sub_21BC924B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2759C();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7008, &qword_21BE364D0);
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v73 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89E0, &qword_21BE3CE38);
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v73 - v13;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89E8, &qword_21BE3CE40);
  v15 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v81 = &v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89F0, &unk_21BE3CE48);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v73 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820);
  v21 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v23 = &v73 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB89F8, &qword_21BE3CE58);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v91 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v90 = &v73 - v28;
  v29 = qword_27CDB4E58;
  v89 = *a1;
  if (v29 != -1)
  {
    swift_once();
  }

  v84 = byte_27CDD41B0;
  sub_21BBDAF04();
  sub_21BC9337C(&qword_280BD8A20, sub_21BBDAF04);
  v85 = sub_21BE2727C();
  v83 = v30;
  v87 = sub_21BE2770C();
  LOBYTE(v95) = 1;
  sub_21BC92F74(a1, v102);
  *(v101 + 7) = v102[0];
  *(&v101[1] + 7) = v102[1];
  *(&v101[2] + 7) = v103[0];
  v101[3] = *(v103 + 9);
  v86 = v95;
  v95 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v92 == 1)
  {
    sub_21BE26EEC();
    *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)] = 257;
    v31 = &v23[*(v82 + 36)];
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v33 = *MEMORY[0x277CDF440];
    v34 = sub_21BE26E7C();
    (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
    *v31 = swift_getKeyPath();
    sub_21BBA3854(v23, v20, &qword_27CDB5E00, &unk_21BE33820);
    swift_storeEnumTagMultiPayload();
    sub_21BC933C4();
    sub_21BC93534();
    v35 = v90;
    sub_21BE2784C();
    sub_21BB3A4CC(v23, &qword_27CDB5E00, &unk_21BE33820);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v37 = [objc_opt_self() bundleForClass_];
    v38 = sub_21BE2599C();
    v40 = v39;

    v92 = v38;
    v93 = v40;
    sub_21BE28D7C();
    sub_21BC9332C(a1, &v95);
    v41 = sub_21BE28D6C();
    v42 = swift_allocObject();
    v73 = v17;
    v43 = MEMORY[0x277D85700];
    *(v42 + 16) = v41;
    *(v42 + 24) = v43;
    v44 = *(a1 + 16);
    *(v42 + 32) = *a1;
    *(v42 + 48) = v44;
    v45 = *(a1 + 48);
    *(v42 + 64) = *(a1 + 32);
    *(v42 + 80) = v45;
    sub_21BC9332C(a1, &v95);
    v46 = sub_21BE28D6C();
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    *(v47 + 24) = v43;
    v48 = *(a1 + 16);
    *(v47 + 32) = *a1;
    *(v47 + 48) = v48;
    v49 = *(a1 + 48);
    *(v47 + 64) = *(a1 + 32);
    *(v47 + 80) = v49;
    sub_21BE2857C();
    sub_21BB41FA4();
    sub_21BE284CC();
    v50 = sub_21BB3B038(&qword_27CDB7030, &qword_27CDB7008, &qword_21BE364D0);
    v51 = v75;
    sub_21BE27F3C();
    (*(v74 + 8))(v10, v51);
    v52 = v78;
    sub_21BE2758C();
    *&v95 = v51;
    *(&v95 + 1) = v50;
    swift_getOpaqueTypeConformance2();
    sub_21BC9337C(&qword_27CDB8A00, MEMORY[0x277CDDDF0]);
    v53 = v80;
    v54 = v81;
    v55 = v77;
    sub_21BE27F2C();
    (*(v79 + 8))(v52, v53);
    (*(v76 + 8))(v14, v55);
    v56 = *(a1 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    LOBYTE(v53) = v95;
    KeyPath = swift_getKeyPath();
    v58 = swift_allocObject();
    *(v58 + 16) = v53;
    v59 = (v54 + *(v88 + 36));
    *v59 = KeyPath;
    v59[1] = sub_21BC0AE98;
    v59[2] = v58;
    sub_21BBA3854(v54, v20, &qword_27CDB89E8, &qword_21BE3CE40);
    swift_storeEnumTagMultiPayload();
    sub_21BC933C4();
    sub_21BC93534();
    v35 = v90;
    sub_21BE2784C();
    sub_21BB3A4CC(v54, &qword_27CDB89E8, &qword_21BE3CE40);
  }

  if (v84)
  {
    v60 = 40.0;
  }

  else
  {
    v60 = 38.0;
  }

  v61 = v91;
  sub_21BBA3854(v35, v91, &qword_27CDB89F8, &qword_21BE3CE58);
  *a2 = v60;
  v62 = v89;
  v63 = v85;
  *(a2 + 8) = v89;
  *(a2 + 16) = v63;
  *(a2 + 24) = v83;
  v64 = v87;
  v92 = v87;
  v93 = 0;
  v65 = v86;
  v94[0] = v86;
  *&v94[1] = v101[0];
  *&v94[49] = v101[3];
  *&v94[33] = v101[2];
  *&v94[17] = v101[1];
  v66 = *v94;
  *(a2 + 32) = v87;
  *(a2 + 48) = v66;
  v67 = *&v94[16];
  v68 = *&v94[32];
  v69 = *&v94[48];
  *(a2 + 112) = v94[64];
  *(a2 + 80) = v68;
  *(a2 + 96) = v69;
  *(a2 + 64) = v67;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8A20, &qword_21BE3CED8);
  sub_21BBA3854(v61, a2 + *(v70 + 80), &qword_27CDB89F8, &qword_21BE3CE58);
  v71 = v63;
  v72 = v62;
  sub_21BBA3854(&v92, &v95, &qword_27CDB8A28, &qword_21BE3CEE0);
  sub_21BB3A4CC(v35, &qword_27CDB89F8, &qword_21BE3CE58);
  sub_21BB3A4CC(v61, &qword_27CDB89F8, &qword_21BE3CE58);
  v95 = v64;
  v96 = v65;
  v97 = v101[0];
  v98 = v101[1];
  v99 = v101[2];
  v100 = v101[3];
  sub_21BB3A4CC(&v95, &qword_27CDB8A28, &qword_21BE3CEE0);
}

uint64_t sub_21BC92F74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_21BE2917C();
  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  sub_21BE2832C();
  v9 = sub_21BE27D4C();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_21BBC7C7C(v4, v6, v8 & 1);

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13 & 1;
  *(a2 + 40) = v15;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  sub_21BBA4A38(v9, v11, v13 & 1);

  sub_21BBC7C7C(v9, v11, v13 & 1);
}

uint64_t sub_21BC93098@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E18, &qword_21BE33870);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_21BE2599C();
  v10 = v9;

  v18 = v8;
  v19 = v10;
  sub_21BB41FA4();
  sub_21BE27DBC();
  v11 = [v6 bundleForClass_];
  v12 = sub_21BE2599C();
  v14 = v13;

  v18 = v12;
  v19 = v14;
  sub_21BE27DBC();
  v15 = sub_21BE2825C();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  return sub_21BE2821C();
}

uint64_t sub_21BC932F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_21BC921A4(a1);
}

uint64_t sub_21BC93364@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21BC90D7C((v1 + 32), a1);
}

uint64_t sub_21BC9337C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BC933C4()
{
  result = qword_27CDB8A08;
  if (!qword_27CDB8A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5E00, &unk_21BE33820);
    sub_21BC9347C();
    sub_21BB3B038(&unk_27CDBC4F0, &unk_27CDB55B0, &qword_21BE3FF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8A08);
  }

  return result;
}

unint64_t sub_21BC9347C()
{
  result = qword_27CDB8A10;
  if (!qword_27CDB8A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5DF8, &unk_21BE38C60);
    sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8A10);
  }

  return result;
}

unint64_t sub_21BC93534()
{
  result = qword_27CDB8A18;
  if (!qword_27CDB8A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB89E8, &qword_21BE3CE40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB89E0, &qword_21BE3CE38);
    sub_21BE2759C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7008, &qword_21BE364D0);
    sub_21BB3B038(&qword_27CDB7030, &qword_27CDB7008, &qword_21BE364D0);
    swift_getOpaqueTypeConformance2();
    sub_21BC9337C(&qword_27CDB8A00, MEMORY[0x277CDDDF0]);
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8A18);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_21BC93754(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 96);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BC91144(a1, v4, v5, v1 + 32, v6);
}

unint64_t sub_21BC93864()
{
  result = qword_27CDB8A30;
  if (!qword_27CDB8A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8A38, qword_21BE3CF88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB89C0, &qword_21BE3CE10);
    sub_21BB3B038(&qword_27CDB89D8, &qword_27CDB89C0, &qword_21BE3CE10);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8A30);
  }

  return result;
}

uint64_t sub_21BC93974()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC939E8(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BC93E28();
}

uint64_t sub_21BC93A98(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BC93B30, v4, v3);
}

uint64_t sub_21BC93B30()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BBCB554();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BC93C34()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCB554();
}

void sub_21BC93CF8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21BE28D7C();
  v7 = a1;
  v8 = sub_21BE28D6C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_21BBA932C(0, 0, v5, &unk_21BE3D280, v9);
}

uint64_t sub_21BC93E28()
{
  v2 = v0;
  v1[3] = v0;
  v1[4] = sub_21BE28D7C();
  v1[5] = sub_21BE28D6C();
  v3 = qword_27CDD4268;
  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v1;
  v4[1] = sub_21BC93F00;

  return (sub_21BE19D18)(v2 + v3);
}

uint64_t sub_21BC93F00(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v12 = *v2;
  v4[7] = a1;
  v4[8] = v3;

  v9 = sub_21BE28D0C();
  v4[9] = v9;
  v4[10] = v8;
  if (v3)
  {
    v10 = sub_21BC94694;
  }

  else
  {
    v10 = sub_21BC94064;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_21BC94064()
{
  v27 = v0;
  v1 = v0[3];
  v2 = qword_27CDB8A48;
  v0[11] = qword_27CDB8A48;
  if (*(v1 + v2))
  {
    v3 = v0[5];

    v4 = *(v0[3] + v0[11]);
    if (v4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v5 = v4;
      sub_21BE26CAC();

      v6 = v0[2];
      if (v6 >> 62)
      {
        if (v6 < 0)
        {
          v18 = v0[2];
        }

        if (sub_21BE2951C())
        {
          goto LABEL_5;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v7 = 1;
LABEL_19:
        v19 = v0[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8AA8, &unk_21BE3D268);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_21BE32770;
        *(v20 + 32) = v7;
        *(v20 + 40) = v6;
        *(v20 + 48) = v19;
        *(v20 + 56) = 4;

        v21 = v0[1];

        return v21(v20);
      }

      v7 = 0;
      v6 = MEMORY[0x277D84F90];
      goto LABEL_19;
    }

    v11 = v0[7];
    MEMORY[0x21CF01210](0xD000000000000024, 0x800000021BE5A820, 0xD000000000000010, 0x800000021BE573A0, 500);
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v8 = qword_27CDD4290;
    if (qword_27CDD4290)
    {
      v9 = 0;
      v10 = qword_27CDD4290;
    }

    else
    {
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      memset(v25, 0, sizeof(v25));
      v26 = 0;
      v14 = [objc_allocWithZone(type metadata accessor for ScreenTimeConfiguration()) init];
      v15 = objc_allocWithZone(type metadata accessor for LocationViewModel());
      v10 = sub_21BDD21D4(v14, &v22, v23, v25, v15);
      v8 = 0;
      v9 = *(v1 + v2);
    }

    v0[12] = v10;
    *(v1 + v2) = v10;
    v16 = v8;
    v10;

    v17 = swift_task_alloc();
    v0[13] = v17;
    *v17 = v0;
    v17[1] = sub_21BC9436C;

    return sub_21BCD2AA8();
  }
}

uint64_t sub_21BC9436C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21BC944AC, v5, v4);
}

uint64_t sub_21BC944AC()
{
  v1 = v0[5];

  v2 = *(v0[3] + v0[11]);
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    sub_21BE26CAC();

    v4 = v0[2];
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v9 = v0[2];
      }

      if (sub_21BE2951C())
      {
        goto LABEL_4;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v5 = 1;
LABEL_12:
      v10 = v0[7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8AA8, &unk_21BE3D268);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_21BE32770;
      *(v11 + 32) = v5;
      *(v11 + 40) = v4;
      *(v11 + 48) = v10;
      *(v11 + 56) = 4;

      v12 = v0[1];

      return v12(v11);
    }

    v5 = 0;
    v4 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v6 = v0[7];
  MEMORY[0x21CF01210](0xD000000000000024, 0x800000021BE5A820, 0xD000000000000010, 0x800000021BE573A0, 500);
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_21BC94694()
{
  v1 = v0[5];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

void sub_21BC946F8()
{
  v1 = qword_27CDB8A40;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8A98, &unk_21BE3D210);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4268));
  sub_21BC95388(v0 + qword_27CDD4270);
  v3 = *(v0 + qword_27CDB8A48);
}

id sub_21BC9479C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21BC947D4(uint64_t a1)
{
  v2 = qword_27CDB8A40;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8A98, &unk_21BE3D210);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4268));
  sub_21BC95388(a1 + qword_27CDD4270);
  v4 = *(a1 + qword_27CDB8A48);
}

uint64_t type metadata accessor for LocationItemProvider()
{
  result = qword_27CDB8A50;
  if (!qword_27CDB8A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC948C8()
{
  sub_21BC94974();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BC94974()
{
  if (!qword_27CDB8A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8A68, &qword_21BE3CFC0);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB8A60);
    }
  }
}

uint64_t sub_21BC949E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21BC94A28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BC94A7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BE26CBC();
}

uint64_t sub_21BC94AF0()
{
  v1 = *(v0 + 24);
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC94B78()
{
  v1 = *(v0 + 24);
  sub_21BE28ABC();
  sub_21BC5C62C(v1);
  sub_21BE28ABC();
}

uint64_t sub_21BC94BF0()
{
  v1 = *(v0 + 24);
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC94C74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = sub_21BC5C62C(*(a1 + 24));
  v5 = v4;
  if (v3 == sub_21BC5C62C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BE2995C();
  }

  return v8 & 1;
}

void sub_21BC94CFC(uint64_t a1@<X8>)
{
  strcpy(a1, "locationItem");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_21BC94D24()
{
  result = qword_27CDB8A70;
  if (!qword_27CDB8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8A70);
  }

  return result;
}

unint64_t sub_21BC94D78(uint64_t a1)
{
  *(a1 + 8) = sub_21BC94DA8();
  result = sub_21BC94DFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BC94DA8()
{
  result = qword_27CDB8A78;
  if (!qword_27CDB8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8A78);
  }

  return result;
}

unint64_t sub_21BC94DFC()
{
  result = qword_27CDB8A80;
  if (!qword_27CDB8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8A80);
  }

  return result;
}

id sub_21BC94E50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v5 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v5;
  *(a1 + 24) = v3;

  return v5;
}

id sub_21BC94EA0@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v28 = a3;
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v14 = sub_21BE26A2C();
  v15 = sub_21BE28FCC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21BB35000, v14, v15, "LocationDataItem providing a destination", v16, 2u);
    MEMORY[0x21CF05C50](v16, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  type metadata accessor for LocationViewModel();
  sub_21BC954F8(&qword_27CDBDC20, type metadata accessor for LocationViewModel);
  v17 = sub_21BE2727C();
  v19 = v18;
  sub_21BBDAF04();
  sub_21BC954F8(&qword_280BD8A20, sub_21BBDAF04);
  v20 = sub_21BE2727C();
  v22 = v21;
  KeyPath = swift_getKeyPath();
  *(a5 + *(type metadata accessor for CheckListLocationDestination() + 28)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  *a5 = a1 & 1;
  v24 = v28;
  *(a5 + 8) = a2;
  *(a5 + 16) = v24;
  *(a5 + 24) = a4;
  *(a5 + 32) = v17;
  *(a5 + 40) = v19;
  *(a5 + 48) = v20;
  *(a5 + 56) = v22;

  v25 = v28;

  return v25;
}

unint64_t sub_21BC95130(uint64_t a1)
{
  result = sub_21BC94DA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC95174(uint64_t a1)
{
  result = sub_21BC9519C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BC9519C()
{
  result = qword_27CDB8A88;
  if (!qword_27CDB8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8A88);
  }

  return result;
}

uint64_t sub_21BC9520C(uint64_t a1)
{
  *(a1 + 8) = sub_21BC954F8(&qword_27CDB8A90, type metadata accessor for LocationItemProvider);
  result = sub_21BC954F8(&qword_27CDB5FF8, type metadata accessor for LocationItemProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BC95290@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BC95310(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BC95388(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8AA0, &qword_21BE4DC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BC953F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BC93C34();
}

unint64_t sub_21BC954A4()
{
  result = qword_27CDB8AB0;
  if (!qword_27CDB8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8AB0);
  }

  return result;
}

uint64_t sub_21BC954F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BC95564()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC95680;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B38, &qword_21BE3D4E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BE18058;
  v0[13] = &block_descriptor_20;
  v0[14] = v2;
  [v1 fetchMyBeneficiaries_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC95680()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 8);

  return v2(v1);
}

uint64_t sub_21BC95770(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB8A28;

  return v9(a1, a2);
}

unint64_t sub_21BC95888()
{
  v1 = *(type metadata accessor for BeneficiaryItemDataItem(0) + 28);
  result = 0x6E776F6E6B6E75;
  switch(*(v0 + v1))
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0x736143656C707061;
      break;
    case 0xB:
      result = 0x49746361746E6F63;
      break;
    case 0xC:
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 0xE:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21BC95AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDAED70();
  v8 = v7;
  if (v6 == sub_21BDAED70() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_21BE2995C();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = *(a3 + 28);
  v13 = *(a2 + v12);
  v14 = sub_21BC5C62C(*(a1 + v12));
  v16 = v15;
  if (v14 == sub_21BC5C62C(v13) && v16 == v17)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BC95BE4(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BDAED70();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v1 + *(a1 + 28)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC95C78(uint64_t a1, uint64_t a2)
{
  sub_21BDAED70();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 28)));
  sub_21BE28ABC();
}

uint64_t sub_21BC95D00(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BDAED70();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 28)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BC95D90@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BC95888();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_21BC95DB8@<X0>(uint64_t a1@<X8>)
{
  sub_21BC973C0(v1, a1);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC9726C(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
  v3 = sub_21BE2727C();
  v5 = v4;
  v6 = type metadata accessor for BeneficiaryView();
  v7 = (a1 + *(v6 + 20));
  *v7 = v3;
  v7[1] = v5;
  v8 = *(v6 + 24);
  result = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(a1 + v8) = result;
  return result;
}

uint64_t sub_21BC95E74()
{
  v1 = qword_27CDB8AC0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B28, &unk_21BE507A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4278));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4280));
  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4288));
}

id sub_21BC95F0C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BeneficiaryItemProvider(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BC95F84(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for BeneficiaryItemProvider(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21BC96010(uint64_t a1)
{
  v2 = qword_27CDB8AC0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B28, &unk_21BE507A0);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4278));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4280));
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4288));
}

uint64_t sub_21BC960AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC96120(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BC9636C();
}

uint64_t sub_21BC961D0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BC96268, v4, v3);
}

uint64_t sub_21BC96268()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BBCB7FC();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BC9636C()
{
  v1[2] = v0;
  v2 = sub_21BE260AC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_21BE28D7C();
  v1[8] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v1[9] = v7;
  v1[10] = v6;

  return MEMORY[0x2822009F8](sub_21BC964A4, v7, v6);
}

uint64_t sub_21BC964A4()
{
  v1 = v0[2];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  v4 = type metadata accessor for FamilySignpost();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v7 = sub_21BC84D18(v3, v2, "computeItems", 12, 2);
  v8 = qword_27CDD4280;
  v0[11] = v7;
  v0[12] = v8;
  v9 = *(v1 + v8 + 24);
  v10 = *(v1 + v8 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + v8), v9);
  v0[13] = (*(v10 + 8))(v9, v10);
  v11 = *(v1 + qword_27CDD4278 + 24);
  v12 = *(v1 + qword_27CDD4278 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + qword_27CDD4278), v11);
  v13 = *(v12 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = sub_21BC96670;

  return v17(v11, v12);
}

uint64_t sub_21BC96670(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = a1;

  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_21BC96798, v5, v4);
}

uint64_t sub_21BC96798()
{
  v1 = v0[15];
  v2 = v0[8];

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    v31 = v0[15];
    v32 = v0[13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B30, &unk_21BE3D4C0);
    v33 = (type metadata accessor for BeneficiaryItemDataItem(0) - 8);
    v34 = *(*v33 + 72);
    v35 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21BE32770;
    v36 = (v28 + v35);
    v37 = v33[7];
    v38 = sub_21BE25D1C();
    (*(*(v38 - 8) + 56))(&v36[v37], 1, 1, v38);
    *v36 = 0;
    *&v36[v33[8]] = MEMORY[0x277D84F90];
    v36[v33[9]] = 6;

LABEL_16:
    v39 = v0[11];
    v41 = v0[6];
    v40 = v0[7];
    v42 = v0[5];
    sub_21BC852D8();

    v43 = v0[1];

    return v43(v28);
  }

  if (v0[15] < 0)
  {
    v30 = v0[15];
  }

  if (!sub_21BE2951C())
  {
    goto LABEL_15;
  }

LABEL_3:
  v3 = v0[13];
  if (v3)
  {
    v4 = v0[7];
    v5 = (v0[2] + v0[12]);
    v6 = sub_21BE25D1C();
    v7 = *(*(v6 - 8) + 56);
    v7(v4, 1, 1, v6);
    v8 = v5[3];
    v9 = v5[4];
    __swift_project_boxed_opaque_existential_1Tm(v5, v8);
    v10 = (*(v9 + 24))(v3, v8, v9);
    if (v10)
    {
      v11 = v10;
      if ([v10 integerValue])
      {
        v13 = v0[6];
        v12 = v0[7];
        [v11 doubleValue];
        sub_21BE25CCC();

        sub_21BC51500(v12);
        v7(v13, 0, 1, v6);
        sub_21BC1E320(v13, v12);
      }

      else
      {
      }
    }

    v23 = v0[15];
    v24 = v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B30, &unk_21BE3D4C0);
    v25 = (type metadata accessor for BeneficiaryItemDataItem(0) - 8);
    v26 = *(*v25 + 72);
    v27 = (*(*v25 + 80) + 32) & ~*(*v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21BE32770;
    v29 = (v28 + v27);
    sub_21BC1E1AC(v24, &v29[v25[7]]);
    *v29 = 1;
    *&v29[v25[8]] = v23;
    v29[v25[9]] = 6;

    sub_21BC51500(v24);
    goto LABEL_16;
  }

  v14 = v0[15];
  v15 = v0[11];
  v16 = v0[6];
  v17 = v0[7];
  v19 = v0[4];
  v18 = v0[5];
  v20 = v0[3];

  (*(v19 + 104))(v18, *MEMORY[0x277D07F80], v20);
  MEMORY[0x21CF01220](0xD000000000000039, 0x800000021BE5A8A0, v18, 0xD000000000000010, 0x800000021BE573A0, 0xD00000000000002CLL, 0x800000021BE5A8E0);
  (*(v19 + 8))(v18, v20);
  swift_willThrow();
  sub_21BC852D8();

  v21 = v0[1];

  return v21();
}

uint64_t sub_21BC96C90()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCB7FC();
}

void sub_21BC96D54(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21BE28D7C();
  v7 = a1;
  v8 = sub_21BE28D6C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_21BBA932C(0, 0, v5, &unk_21BE3D4D8, v9);
}

void sub_21BC96EA4()
{
  sub_21BC96F40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BC96F40()
{
  if (!qword_27CDB8AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8AE0, &qword_21BE3D330);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB8AD8);
    }
  }
}

void sub_21BC96FF4()
{
  sub_21BC970F0(319, &qword_27CDB7378, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21BC970F0(319, &qword_27CDB8AF8, sub_21BC97154, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21BC970F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_21BC97154()
{
  result = qword_27CDB8B00;
  if (!qword_27CDB8B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB8B00);
  }

  return result;
}

uint64_t sub_21BC971E8(uint64_t a1)
{
  *(a1 + 8) = sub_21BC9726C(&qword_27CDB8B10, type metadata accessor for BeneficiaryItemDataItem);
  result = sub_21BC9726C(&qword_27CDB8B18, type metadata accessor for BeneficiaryItemDataItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BC9726C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BC972B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BE26CBC();
}

uint64_t sub_21BC97320(uint64_t a1)
{
  *(a1 + 8) = sub_21BC9726C(&qword_27CDB8B20, type metadata accessor for BeneficiaryItemProvider);
  result = sub_21BC9726C(&qword_27CDB6040, type metadata accessor for BeneficiaryItemProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BC973C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryItemDataItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC97424@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BC974A4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BC9751C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BC96C90();
}

uint64_t type metadata accessor for MemberDetailsScreentimeWrapper()
{
  result = qword_27CDB8B50;
  if (!qword_27CDB8B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC97644()
{
  sub_21BC97780(319, &qword_27CDB8B60, &unk_27CDB6550, 0x277D08338);
  if (v0 <= 0x3F)
  {
    sub_21BC97780(319, &qword_27CDB8B68, &qword_280BD68F8, 0x277CCABB0);
    if (v1 <= 0x3F)
    {
      sub_21BC977D8();
      if (v2 <= 0x3F)
      {
        sub_21BC9783C(319, &qword_27CDB6118, MEMORY[0x277CDE530]);
        if (v3 <= 0x3F)
        {
          sub_21BC9783C(319, &qword_27CDB8B80, MEMORY[0x277D4D7B0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21BC97780(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_21BB3A2A4(255, a3, a4);
    v5 = sub_21BE2946C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21BC977D8()
{
  if (!qword_27CDB8B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8B78, &qword_21BE3D520);
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB8B70);
    }
  }
}

void sub_21BC9783C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE26E8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21BC978AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MemberDetailsScreentimeWrapper();
  sub_21BBA3854(v1 + *(v12 + 32), v11, &qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE27B0C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21BC97AB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MemberDetailsScreentimeWrapper();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B88, &qword_21BE3D578);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = *(v1 + 8);
  if (v12)
  {
    v21 = v9;
    sub_21BC99690(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = swift_allocObject();
    v16 = sub_21BC996F4(v6, v15 + v13);
    *(v15 + v14) = v12;
    MEMORY[0x28223BE20](v16);
    *(&v20 - 2) = v1;
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B98, &qword_21BE3D580);
    sub_21BB3B038(&qword_27CDB8BA0, &qword_27CDB8B98, &qword_21BE3D580);
    sub_21BE2843C();

    (*(v21 + 32))(a1, v11, v7);
    return (*(v21 + 56))(a1, 0, 1, v7);
  }

  else
  {
    v19 = *(v9 + 56);

    return v19(a1, 1, 1, v7);
  }
}

uint64_t sub_21BC97D98(id *a1, uint64_t a2)
{
  v4 = sub_21BE27B0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v9 = *a1;
    v10 = [v9 name];
    if (v10)
    {
      v11 = v10;
      v12 = sub_21BE28A0C();
      v19 = v13;

      if (qword_27CDB4F68 != -1)
      {
        swift_once();
      }

      v20 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21BE32770;
      *(inited + 32) = 0x6976614E77656976;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = &protocol witness table for String;
      *(inited + 40) = 0xEF6F546465746167;
      *(inited + 48) = v12;
      *(inited + 56) = v19;

      v15 = sub_21BBB5E60(inited);
      swift_setDeallocating();
      sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
      sub_21BCA55DC(&v20, v15);
    }
  }

  v16 = sub_21BC978AC(v8);
  MEMORY[0x28223BE20](v16);
  *(&v18 - 2) = a2;
  *(&v18 - 1) = a1;
  sub_21BE27AFC();
  return (*(v5 + 8))(v8, v4);
}

void sub_21BC98008(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MemberDetailsScreentimeWrapper();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if (a1)
  {
    v9 = [a1 navigationController];
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_self();
      sub_21BC99690(a3, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v13 = swift_allocObject();
      sub_21BC996F4(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
      *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
      aBlock[4] = sub_21BC99C10;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21BC98898;
      aBlock[3] = &block_descriptor_21;
      v14 = _Block_copy(aBlock);
      v15 = v10;

      [v11 requestRootViewControllerForDSID:a2 presentingViewController:v15 completionHandler:v14];
      _Block_release(v14);
    }
  }
}

void sub_21BC981E4(void *a1, void *a2)
{
  v45 = a2;
  v3 = sub_21BE26A4C();
  v54 = *(v3 - 1);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE2870C();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  MEMORY[0x28223BE20](v7);
  v50 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_21BE2874C();
  v49 = *(v51 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MemberDetailsScreentimeWrapper();
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_21BE2694C();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v43 - v18;
  v19 = sub_21BE288BC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = *(v12 + 36);
    v25 = a1;
    v26 = v56;
    sub_21BD205B8(v23);
    LOBYTE(v24) = sub_21BE2887C();
    (*(v20 + 8))(v23, v19);
    if (v24)
    {
      v55 = v25;
      v27 = v57;
      sub_21BE2695C();
      sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
      v54 = sub_21BE2925C();
      sub_21BC99690(v26, &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = v46;
      v29 = v47;
      (*(v46 + 16))(v17, v27, v47);
      v30 = (*(v44 + 80) + 16) & ~*(v44 + 80);
      v31 = (v13 + *(v28 + 80) + v30) & ~*(v28 + 80);
      v32 = swift_allocObject();
      sub_21BC996F4(&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v30);
      (*(v28 + 32))(v32 + v31, v17, v29);
      aBlock[4] = sub_21BC99CA0;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21BB42A18;
      aBlock[3] = &block_descriptor_11;
      v33 = _Block_copy(aBlock);

      v34 = v48;
      sub_21BE2872C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21BC99D6C(&qword_280BD69E0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
      sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600);
      v35 = v50;
      v36 = v53;
      sub_21BE294DC();
      v37 = v54;
      MEMORY[0x21CF04410](0, v34, v35, v33);
      _Block_release(v33);

      (*(v52 + 8))(v35, v36);
      (*(v49 + 8))(v34, v51);
      (*(v28 + 8))(v57, v29);
    }

    else
    {
      [v45 pushViewController:v25 animated:1];
    }
  }

  else
  {
    v39 = v54;
    v38 = v55;
    sub_21BE2614C();
    v40 = sub_21BE26A2C();
    v41 = sub_21BE28FDC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_21BB35000, v40, v41, "Unable to navigate, no view controller provided by FAMemberScreenTimeRootViewControllerProvider", v42, 2u);
      MEMORY[0x21CF05C50](v42, -1, -1);
    }

    (*(v39 + 8))(v6, v38);
  }
}

void sub_21BC98898(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_21BC98904(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8BA8, &qword_21BE3D588);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - v5;
  v7 = *(a1 + 24);
  if (!v7)
  {
    goto LABEL_5;
  }

  if (*(a1 + 16) != 3)
  {
    v7 = 0;
LABEL_5:
    v30 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_6;
  }

  v30 = *(a1 + 32);
  sub_21BB3A2A4(0, &qword_27CDB8BC0, 0x277CBEBB8);
  v8 = objc_opt_self();
  swift_unknownObjectRetain();
  v9 = [v8 mainRunLoop];
  v10 = *MEMORY[0x277CBE738];
  v11 = sub_21BE2944C();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = sub_21BE293BC();

  sub_21BB3A4CC(v6, &qword_27CDB8BA8, &qword_21BE3D588);
  *&v50 = v12;
  sub_21BE293AC();
  sub_21BC99D6C(&qword_27CDB8BC8, MEMORY[0x277CC9DF0]);
  v13 = sub_21BE26C3C();

  v14 = v7;
  v15 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  swift_unknownObjectRetain();
  v28 = v13;

  v27 = v15;
  v16 = v15;
  v7 = v14;
LABEL_6:
  v17 = sub_21BE275DC();
  v32 = 0;
  sub_21BC98E70(&v50);
  v45 = *&v51[176];
  v46 = *&v51[192];
  v41 = *&v51[112];
  v42 = *&v51[128];
  v43 = *&v51[144];
  v44 = *&v51[160];
  v37 = *&v51[48];
  v38 = *&v51[64];
  v39 = *&v51[80];
  v40 = *&v51[96];
  v33 = v50;
  v34 = *v51;
  v35 = *&v51[16];
  v36 = *&v51[32];
  v48[11] = *&v51[160];
  v48[12] = *&v51[176];
  v48[13] = *&v51[192];
  v48[14] = *&v51[208];
  v48[7] = *&v51[96];
  v48[8] = *&v51[112];
  v48[9] = *&v51[128];
  v48[10] = *&v51[144];
  v48[3] = *&v51[32];
  v48[4] = *&v51[48];
  v48[5] = *&v51[64];
  v48[6] = *&v51[80];
  v47 = *&v51[208];
  v48[0] = v50;
  v48[1] = *v51;
  v48[2] = *&v51[16];
  sub_21BBA3854(&v33, v49, &qword_27CDB8BB0, &qword_21BE3D590);
  sub_21BB3A4CC(v48, &qword_27CDB8BB0, &qword_21BE3D590);
  *&v31[183] = v44;
  *&v31[199] = v45;
  *&v31[215] = v46;
  *&v31[231] = v47;
  *&v31[119] = v40;
  *&v31[135] = v41;
  *&v31[151] = v42;
  *&v31[167] = v43;
  *&v31[55] = v36;
  *&v31[71] = v37;
  *&v31[87] = v38;
  *&v31[103] = v39;
  *&v31[7] = v33;
  *&v31[23] = v34;
  *&v31[39] = v35;
  v18 = v32;
  KeyPath = swift_getKeyPath();
  *(&v49[26] + 1) = *&v31[192];
  *(&v49[28] + 1) = *&v31[208];
  *(&v49[30] + 1) = *&v31[224];
  *(&v49[18] + 1) = *&v31[128];
  *(&v49[20] + 1) = *&v31[144];
  *(&v49[22] + 1) = *&v31[160];
  *(&v49[24] + 1) = *&v31[176];
  *(&v49[10] + 1) = *&v31[64];
  *(&v49[12] + 1) = *&v31[80];
  *(&v49[14] + 1) = *&v31[96];
  *(&v49[16] + 1) = *&v31[112];
  *(&v49[2] + 1) = *v31;
  *(&v49[4] + 1) = *&v31[16];
  *(&v49[6] + 1) = *&v31[32];
  v49[0] = v17;
  v49[1] = 0;
  LOBYTE(v49[2]) = v18;
  v49[32] = *&v31[239];
  *(&v49[8] + 1) = *&v31[48];
  LOBYTE(v49[33]) = 1;
  v49[34] = KeyPath;
  LOWORD(v49[35]) = 0;
  v20 = v7;
  v21 = v30;
  v22 = v28;
  v23 = v7;
  v24 = v27;
  sub_21BC997EC(v20, v30, v28, v27);
  sub_21BBA3854(v49, &v50, &qword_27CDB8BB8, &qword_21BE3D5C8);
  sub_21BC99840(v23, v21, v22, v24);
  v25 = v29;
  *v29 = v23;
  v25[1] = v21;
  v25[2] = v22;
  v25[3] = v24;
  memcpy(v25 + 4, v49, 0x11AuLL);
  *&v51[193] = *&v31[192];
  *&v51[209] = *&v31[208];
  *v52 = *&v31[224];
  *&v51[129] = *&v31[128];
  *&v51[145] = *&v31[144];
  *&v51[161] = *&v31[160];
  *&v51[177] = *&v31[176];
  *&v51[65] = *&v31[64];
  *&v51[81] = *&v31[80];
  *&v51[97] = *&v31[96];
  *&v51[113] = *&v31[112];
  *&v51[1] = *v31;
  *&v51[17] = *&v31[16];
  *&v51[33] = *&v31[32];
  v50 = v17;
  v51[0] = v18;
  *&v52[15] = *&v31[239];
  *&v51[49] = *&v31[48];
  v53 = 1;
  v54 = KeyPath;
  v55 = 0;
  sub_21BB3A4CC(&v50, &qword_27CDB8BB8, &qword_21BE3D5C8);
  sub_21BC99840(v23, v21, v22, v24);
}

uint64_t sub_21BC98E70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BE2771C();
  v41 = 1;
  sub_21BC99114(v42);
  *&v40[7] = v42[0];
  *&v40[23] = v42[1];
  *&v40[39] = v42[2];
  *&v40[55] = v42[3];
  sub_21BE286AC();
  sub_21BE2725C();
  v25[0] = v2;
  v25[1] = 0;
  v26[0] = 1;
  *&v26[17] = *&v40[16];
  *&v26[33] = *&v40[32];
  *&v26[49] = *&v40[48];
  *&v26[64] = *&v40[63];
  *&v26[1] = *v40;
  v3 = v21;
  *&v26[136] = v22;
  v4 = v20;
  *&v26[120] = v21;
  v5 = v22;
  *&v26[152] = v23;
  v6 = v23;
  *&v26[168] = v24;
  *&v26[72] = v18;
  *&v26[88] = v19;
  v7 = v18;
  v8 = v19;
  *&v26[104] = v20;
  *(&v17[9] + 7) = *&v26[128];
  *(&v17[10] + 7) = *&v26[144];
  *(&v17[11] + 7) = *&v26[160];
  *(&v17[12] + 7) = *(&v24 + 1);
  *(&v17[5] + 7) = *&v26[64];
  *(&v17[6] + 7) = *&v26[80];
  *(&v17[7] + 7) = *&v26[96];
  *(&v17[8] + 7) = *&v26[112];
  *(&v17[1] + 7) = *v26;
  *(&v17[2] + 7) = *&v26[16];
  *(&v17[3] + 7) = *&v26[32];
  *(&v17[4] + 7) = *&v26[48];
  *(v17 + 7) = v2;
  v9 = v17[8];
  *(a1 + 177) = v17[9];
  v10 = v17[11];
  *(a1 + 193) = v17[10];
  *(a1 + 209) = v10;
  *(a1 + 224) = *(&v17[11] + 15);
  v11 = v17[4];
  *(a1 + 113) = v17[5];
  v12 = v17[7];
  *(a1 + 129) = v17[6];
  *(a1 + 145) = v12;
  *(a1 + 161) = v9;
  v13 = v17[0];
  *(a1 + 49) = v17[1];
  v14 = v17[3];
  *(a1 + 65) = v17[2];
  *(a1 + 81) = v14;
  *(a1 + 97) = v11;
  *(a1 + 33) = v13;
  v30 = *&v40[16];
  v31 = *&v40[32];
  *v32 = *&v40[48];
  v29 = *v40;
  v36 = v3;
  v37 = v5;
  v38 = v6;
  v39 = v24;
  v33 = v7;
  v34 = v8;
  *a1 = 1546;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_282D86098;
  *(a1 + 24) = &unk_282D860C8;
  *(a1 + 32) = 0;
  v27[0] = v2;
  v27[1] = 0;
  v28 = 1;
  *&v32[15] = *&v40[63];
  v35 = v4;

  sub_21BBA3854(v25, v16, &qword_27CDB6210, &qword_21BE340D0);
  sub_21BB3A4CC(v27, &qword_27CDB6210, &qword_21BE340D0);
}

uint64_t sub_21BC99114@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  sub_21BE2832C();
  v9 = sub_21BE27D4C();
  v32 = v10;
  v33 = v9;
  v31 = v11;
  v34 = v12;

  sub_21BBC7C7C(v4, v6, v8 & 1);

  sub_21BC99894();
  v13 = sub_21BE27DBC();
  v15 = v14;
  v17 = v16;
  sub_21BE27BEC();
  v18 = sub_21BE27D9C();
  v20 = v19;
  v22 = v21;

  sub_21BBC7C7C(v13, v15, v17 & 1);

  sub_21BE2833C();
  v23 = sub_21BE27D4C();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_21BBC7C7C(v18, v20, v22 & 1);

  *a1 = v33;
  *(a1 + 8) = v32;
  *(a1 + 16) = v31 & 1;
  *(a1 + 24) = v34;
  *(a1 + 32) = v23;
  *(a1 + 40) = v25;
  *(a1 + 48) = v27 & 1;
  *(a1 + 56) = v29;
  sub_21BBA4A38(v33, v32, v31 & 1);

  sub_21BBA4A38(v23, v25, v27 & 1);

  sub_21BBC7C7C(v23, v25, v27 & 1);

  sub_21BBC7C7C(v33, v32, v31 & 1);
}

uint64_t sub_21BC993B4(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  v20[0] = sub_21BE2754C();
  v3 = *(v20[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v20[0]);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v20 - v9);
  v11 = sub_21BE288BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MemberDetailsScreentimeWrapper();
  sub_21BBA3854(a1 + *(v16 + 36), v10, &qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_21BE28FEC();
    v18 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v20[0]);
  }

  sub_21BE2694C();
  sub_21BC99D6C(&qword_27CDB7FA8, MEMORY[0x277D402E0]);
  sub_21BE2889C();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_21BC99690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberDetailsScreentimeWrapper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC996F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberDetailsScreentimeWrapper();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC99758()
{
  v1 = *(type metadata accessor for MemberDetailsScreentimeWrapper() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21BC97D98((v0 + v2), v3);
}

id sub_21BC997EC(id result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    swift_unknownObjectRetain();

    return a4;
  }

  return result;
}

void sub_21BC99840(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21BC99894()
{
  *(v0 + 16);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_21BE2599C();

  return v3;
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for MemberDetailsScreentimeWrapper();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  v5 = *(v0 + v2 + 24);
  swift_unknownObjectRelease();
  v6 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BE27B0C();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
    v8 = *(v4 + v6);
  }

  v9 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21BE288BC();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
    v11 = *(v4 + v9);
  }

  return swift_deallocObject();
}

uint64_t sub_21BC99CA0()
{
  v1 = *(type metadata accessor for MemberDetailsScreentimeWrapper() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_21BE2694C() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21BC993B4(v0 + v2, v5);
}

uint64_t sub_21BC99D6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BC99DB4()
{
  result = qword_27CDB8BD0;
  if (!qword_27CDB8BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8BD8, &unk_21BE3D5D0);
    sub_21BB3B038(&qword_27CDB8BE0, &qword_27CDB8B88, &qword_21BE3D578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8BD0);
  }

  return result;
}

void sub_21BC99E6C()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v2 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x800000021BE5AC00;
  v4 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v6 = sub_21BE288EC();

  v7 = [v5 initWithDomain:v4 code:-4016 userInfo:v6];

  qword_27CDB8BE8 = v7;
}

void sub_21BC9A004()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v2 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x800000021BE5ABE0;
  v4 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v6 = sub_21BE288EC();

  v7 = [v5 initWithDomain:v4 code:-4015 userInfo:v6];

  qword_27CDB8BF0 = v7;
}

void sub_21BC9A19C()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v2 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x800000021BE5ABC0;
  v4 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v6 = sub_21BE288EC();

  v7 = [v5 initWithDomain:v4 code:-4017 userInfo:v6];

  qword_27CDB8BF8 = v7;
}

void sub_21BC9A334()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v2 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x800000021BE5ABA0;
  v4 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v6 = sub_21BE288EC();

  v7 = [v5 initWithDomain:v4 code:-4004 userInfo:v6];

  qword_27CDB8C00 = v7;
}

void sub_21BC9A4CC()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v2 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = 0xD00000000000002ALL;
  *(inited + 56) = 0x800000021BE5AB70;
  v4 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v6 = sub_21BE288EC();

  v7 = [v5 initWithDomain:v4 code:-4018 userInfo:v6];

  qword_27CDB8C08 = v7;
}

void sub_21BC9A664()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v2 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = 0xD000000000000025;
  *(inited + 56) = 0x800000021BE5AB40;
  v4 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v6 = sub_21BE288EC();

  v7 = [v5 initWithDomain:v4 code:4001 userInfo:v6];

  qword_27CDB8C10 = v7;
}

void sub_21BC9A7FC()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v2 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = 0xD000000000000034;
  *(inited + 56) = 0x800000021BE5AB00;
  v4 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v6 = sub_21BE288EC();

  v7 = [v5 initWithDomain:v4 code:-4021 userInfo:v6];

  qword_27CDB8C18 = v7;
}

void sub_21BC9A994()
{
  v0 = *MEMORY[0x277D08090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v2 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = 0xD00000000000001CLL;
  *(inited + 56) = 0x800000021BE5AAE0;
  v4 = v0;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v6 = sub_21BE288EC();

  v7 = [v5 initWithDomain:v4 code:-4022 userInfo:v6];

  qword_27CDB8C20 = v7;
}

id sub_21BC9AB2C(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id AgeRangeOnboardError.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AgeRangeOnboardError.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeRangeOnboardError();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AgeRangeOnboardError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeRangeOnboardError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static Utility.contactImage(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = [objc_opt_self() configurationWithPointSize:4 weight:40.0];
    v3 = sub_21BE289CC();
    v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_21BBBEE74(a1, a2);
    sub_21BBBEE74(a1, a2);
    v8 = sub_21BE25BCC();
    v9 = [v7 initWithData_];

    sub_21BBBF0B4(a1, a2);
    if (v9)
    {
      v10 = [objc_opt_self() configurationWithPointSize:4 weight:40.0];
      v4 = [v9 imageWithConfiguration_];
      sub_21BBBF0B4(a1, a2);
    }

    else
    {
      sub_21BBBF0B4(a1, a2);
      return 0;
    }
  }

  return v4;
}

uint64_t static Utility.displayName(_:)(void *a1)
{
  v2 = sub_21BE259EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE259DC();
  v7 = [a1 givenName];
  sub_21BE28A0C();

  sub_21BE259AC();
  v8 = [a1 familyName];
  sub_21BE28A0C();

  sub_21BE259BC();
  v9 = objc_opt_self();
  v10 = sub_21BE259CC();
  v11 = [v9 localizedStringFromPersonNameComponents:v10 style:2 options:0];

  v12 = sub_21BE28A0C();
  (*(v3 + 8))(v6, v2);
  return v12;
}

void static Utility.setupHeaderIcons(in:)(void *a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v1 setAxis_];
  [v1 setAlignment_];
  [v1 setSpacing_];
  v2 = v1;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = 3;
  v7 = &unk_282D86120;
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    v11 = sub_21BE289CC();
    v12 = [v3 systemImageNamed_];

    [v10 setImage_];
    v13 = v10;
    [v13 setContentMode_];
    v14 = [v4 systemBlueColor];
    [v13 setTintColor_];

    [v13 setAlpha_];
    v15 = [v5 configurationWithPointSize_];
    [v13 setPreferredSymbolConfiguration_];
    [v2 addArrangedSubview_];

    v7 += 2;
    --v6;
  }

  while (v6);
  [a1 addSubview_];
  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21BE3D5E0;
  v18 = [v2 centerXAnchor];
  v19 = [a1 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v20;
  v21 = [v2 centerYAnchor];

  v22 = [a1 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v17 + 40) = v23;
  sub_21BC47284();
  v25 = sub_21BE28C1C();

  [v16 activateConstraints_];
}

id static Utility.presentAccountPersonalInformation()()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v12 = sub_21BE25B9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  sub_21BE25B7C();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v20 = v1;
    sub_21BB3A4CC(v11, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BE261CC();
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_21BB3D81C(0xD000000000000033, 0x800000021BE5A9B0, &v46);
      _os_log_impl(&dword_21BB35000, v21, v22, "Could not create URL from string: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x21CF05C50](v24, -1, -1);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    return (*(v20 + 8))(v5, v0);
  }

  else
  {
    v45 = v0;
    (*(v13 + 32))(v19, v11, v12);
    sub_21BE261CC();
    (*(v13 + 16))(v17, v19, v12);
    v26 = sub_21BE26A2C();
    v27 = sub_21BE28FFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v42 = v28;
      v43 = swift_slowAlloc();
      v46 = v43;
      *v28 = 136315138;
      sub_21BC9B974();
      v29 = sub_21BE2992C();
      v44 = v1;
      v31 = v30;
      v32 = *(v13 + 8);
      v32(v17, v12);
      v33 = sub_21BB3D81C(v29, v31, &v46);

      v34 = v42;
      *(v42 + 1) = v33;
      v35 = v34;
      _os_log_impl(&dword_21BB35000, v26, v27, "AccountPersonalInformationURL: %s", v34, 0xCu);
      v36 = v43;
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x21CF05C50](v36, -1, -1);
      MEMORY[0x21CF05C50](v35, -1, -1);

      v37 = v32;
      (*(v44 + 8))(v7, v45);
    }

    else
    {

      v37 = *(v13 + 8);
      v37(v17, v12);
      (*(v1 + 8))(v7, v45);
    }

    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v38 = result;
      v39 = sub_21BE25B2C();
      sub_21BBB52D8(MEMORY[0x277D84F90]);
      v40 = sub_21BE288EC();

      [v38 openSensitiveURL:v39 withOptions:v40];

      return (v37)(v19, v12);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void static Utility.openInSafari(url:from:)(uint64_t a1, void *a2)
{
  v3 = objc_allocWithZone(MEMORY[0x277CDB700]);
  v4 = sub_21BE25B2C();
  v5 = [v3 initWithURL_];

  [a2 presentViewController:v5 animated:1 completion:0];
}

unint64_t sub_21BC9B974()
{
  result = qword_27CDB8C28;
  if (!qword_27CDB8C28)
  {
    sub_21BE25B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8C28);
  }

  return result;
}

id sub_21BC9B9DC(void *a1)
{
  v51 = sub_21BE25E6C();
  v2 = *(v51 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v51);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v46 - v8;
  v52 = sub_21BE25D1C();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v52);
  v50 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v46 - v14;
  v16 = sub_21BE2595C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v49 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v46 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v46 - v24;
  result = [a1 birthday];
  if (result)
  {
    v27 = result;
    sub_21BE2591C();

    (*(v17 + 32))(v25, v23, v16);
    sub_21BE25E4C();
    sub_21BE25E2C();
    v30 = *(v2 + 8);
    v29 = v2 + 8;
    v28 = v30;
    v30(v5, v51);
    if ((*(v10 + 48))(v9, 1, v52) == 1)
    {
      (*(v17 + 8))(v25, v16);
      sub_21BB3A4CC(v9, &qword_27CDB9720, &unk_21BE39F00);
      return 0;
    }

    else
    {
      v48 = v10;
      (*(v10 + 32))(v15, v9, v52);
      sub_21BE25E4C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB73B8, &qword_21BE374F8);
      v47 = v28;
      v31 = sub_21BE25E5C();
      v32 = *(v31 - 8);
      v46[1] = v29;
      v33 = v32;
      v34 = *(v32 + 72);
      v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_21BE32770;
      (*(v33 + 104))(v36 + v35, *MEMORY[0x277CC9988], v31);
      sub_21BC0961C(v36);
      swift_setDeallocating();
      (*(v33 + 8))(v36 + v35, v31);
      swift_deallocClassInstance();
      v37 = v50;
      sub_21BE25D0C();
      v38 = v49;
      sub_21BE25E0C();

      v39 = *(v48 + 8);
      v48 += 8;
      v40 = v16;
      v41 = v52;
      v39(v37, v52);
      v47(v5, v51);
      v42 = sub_21BE2593C();
      v44 = v43;
      v45 = *(v17 + 8);
      v45(v38, v40);
      v39(v15, v41);
      v45(v25, v40);
      if (v44)
      {
        return 0;
      }

      else
      {
        return v42;
      }
    }
  }

  return result;
}

uint64_t sub_21BC9BF08(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_21BC9BFB4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x21CF047C0](v5, a3);
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
      v13 = sub_21BE2951C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t Child.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Child.givenName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Child.imageData.getter()
{
  v1 = *(v0 + 40);
  sub_21BBBF0A0(v1, *(v0 + 48));
  return v1;
}

uint64_t Child.altDSID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

id Child.avatarImage.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = v2;
  return sub_21BC9C1B4(v2);
}

id sub_21BC9C1B4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

id GenericImage.uiImage.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ChildInfoService.__allocating_init(altDSIDList:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_21BC9C234()
{
  v1[22] = v0;
  v2 = sub_21BE26A4C();
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC9C300, 0, 0);
}

uint64_t sub_21BC9C300()
{
  v0[20] = MEMORY[0x277D84F90];
  v1 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v0[27] = v1;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_21BC9C444;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC830, &qword_21BE4B460);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_22;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC9C444()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_21BC9CB28;
  }

  else
  {
    v3 = sub_21BC9C554;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BC9C554()
{
  v63 = v0;
  v1 = *(v0 + 168);
  v2 = &selRef_fa_URLByAddingAirdropInviteParams;
  v3 = [v1 members];
  v4 = sub_21BBE66D8();
  v5 = sub_21BE28C3C();

  if (v5 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BE2951C())
  {

    if (!i)
    {
      v14 = *(v0 + 216);

      goto LABEL_43;
    }

    v55 = v1;
    v7 = [v1 *(v2 + 2632)];
    v2 = sub_21BE28C3C();

    v62[0] = MEMORY[0x277D84F90];
    v57 = v4;
    if (v2 >> 62)
    {
      v1 = sub_21BE2951C();
    }

    else
    {
      v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = MEMORY[0x277D84F90];
    if (v1)
    {
      v9 = 0;
      do
      {
        v4 = v8;
        v10 = v9;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x21CF047C0](v10, v2);
          }

          else
          {
            if (v10 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v11 = *(v2 + 8 * v10 + 32);
          }

          v12 = v11;
          v9 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          if (sub_21BE2916C())
          {
            break;
          }

          ++v10;
          if (v9 == v1)
          {
            v8 = v4;
            goto LABEL_22;
          }
        }

        MEMORY[0x21CF03DB0]();
        if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v13 = *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21BE28C5C();
        }

        sub_21BE28C8C();
        v8 = v62[0];
      }

      while (v9 != v1);
    }

LABEL_22:
    v15 = *(v0 + 208);
    v16 = *(v0 + 176);

    sub_21BE2614C();

    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FFC();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 208);
    v22 = *(v0 + 184);
    v21 = *(v0 + 192);
    v60 = v0;
    v61 = v8;
    if (v19)
    {
      v23 = *(v0 + 176);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v62[0] = v25;
      *v24 = 136315394;

      v26 = MEMORY[0x21CF03DF0](v61, v57);
      v58 = v20;
      v28 = v27;

      v29 = sub_21BB3D81C(v26, v28, v62);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v30 = MEMORY[0x21CF03DF0](*(v23 + 16), MEMORY[0x277D837D0]);
      v32 = sub_21BB3D81C(v30, v31, v62);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_21BB35000, v17, v18, "children: %s, altDSIDList: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v25, -1, -1);
      v33 = v24;
      v8 = v61;
      MEMORY[0x21CF05C50](v33, -1, -1);

      (*(v21 + 8))(v58, v22);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    v34 = v55;
    v62[0] = MEMORY[0x277D84F90];
    v2 = v8 >> 62 ? sub_21BE2951C() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v59 = *(v0 + 176);

    if (!v2)
    {
      break;
    }

    v1 = 0;
    v4 = 0;
    v56 = v0 + 144;
    v35 = v8 & 0xC000000000000001;
    v0 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v35)
      {
        v36 = MEMORY[0x21CF047C0](v1, v8);
      }

      else
      {
        if (v1 >= *(v0 + 16))
        {
          goto LABEL_49;
        }

        v36 = *(v8 + 8 * v1 + 32);
      }

      v37 = v36;
      v38 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v39 = [v36 altDSID];
      if (v39)
      {
        v40 = v39;
        v41 = sub_21BE28A0C();
        v43 = v42;

        v44 = *(v59 + 16);
        *(v60 + 144) = v41;
        *(v60 + 152) = v43;
        v45 = swift_task_alloc();
        *(v45 + 16) = v56;
        LOBYTE(v44) = sub_21BC9BF08(sub_21BC5A084, v45, v44);

        if (v44)
        {
          sub_21BE296BC();
          v46 = *(v62[0] + 16);
          sub_21BE296EC();
          sub_21BE296FC();
          sub_21BE296CC();
        }

        else
        {
        }

        v8 = v61;
      }

      else
      {
      }

      ++v1;
      if (v38 == v2)
      {
        v0 = v60;
        v34 = v55;
        goto LABEL_42;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

LABEL_42:
  v47 = *(v0 + 216);
  swift_bridgeObjectRelease_n();
  v48 = v34;

  sub_21BC9D6C4(v49, v48, (v0 + 160));

LABEL_43:
  v51 = *(v0 + 200);
  v50 = *(v0 + 208);
  v52 = *(v0 + 160);

  v53 = *(v0 + 8);

  return v53(v52);
}

uint64_t sub_21BC9CB28()
{
  v1 = v0[28];
  v2 = v0[25];
  swift_willThrow();

  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FDC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
  if (v5)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21BB35000, v3, v4, "Failed to fetch cached family circle.", v10, 2u);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v12 = v0[25];
  v11 = v0[26];
  v13 = v0[20];

  v14 = v0[1];

  return v14(v13);
}

void sub_21BC9CC6C(void **a1, uint64_t a2, char **a3)
{
  v81 = a3;
  v5 = sub_21BE26A4C();
  v82 = *(v5 - 8);
  v83 = v5;
  v6 = *(v82 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v85 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v76 - v9;
  v11 = sub_21BE259EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = [v16 contact];
  v18 = [v16 altDSID];
  if (v18)
  {
    v19 = v18;
    v86 = sub_21BE28A0C();
    v90 = v20;
  }

  else
  {
    v86 = 0;
    v90 = 0;
  }

  v80 = [objc_allocWithZone(FAProfilePictureStore) initWithFamilyCircle_];
  v21 = [v80 profilePictureForFamilyMember:v16 pictureDiameter:40.0];
  v88 = v17;
  if (!v21)
  {
    v89 = 0;
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_9:
    v46 = 0x6E776F6E6B6E55;
    v47 = [v16 fullName];
    if (v47)
    {
      v48 = v47;
      v87 = sub_21BE28A0C();
      v35 = v49;
    }

    else
    {
      v35 = 0xE700000000000000;
      v87 = 0x6E776F6E6B6E55;
    }

    v54 = [v16 firstName];
    if (v54)
    {
      v55 = v54;
      v46 = sub_21BE28A0C();
      v78 = v56;
    }

    else
    {
      v78 = 0xE700000000000000;
    }

    v45 = v85;
    v79 = v46;
    v84 = [v16 age];
    goto LABEL_19;
  }

  v22 = v21;
  v23 = sub_21BE25BFC();
  v25 = v24;

  v26 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v27 = sub_21BE25BCC();
  v89 = [v26 initWithData_];

  v17 = v88;
  sub_21BBBEF94(v23, v25);
  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_6:
  v28 = v17;
  sub_21BE259DC();
  v29 = [v28 givenName];
  sub_21BE28A0C();

  sub_21BE259AC();
  v30 = [v28 familyName];
  sub_21BE28A0C();

  sub_21BE259BC();
  v31 = objc_opt_self();
  v32 = sub_21BE259CC();
  v33 = [v31 localizedStringFromPersonNameComponents:v32 style:2 options:0];

  v87 = sub_21BE28A0C();
  v35 = v34;

  (*(v12 + 8))(v15, v11);
  v36 = [v28 givenName];
  v37 = sub_21BE28A0C();
  v78 = v38;

  v84 = sub_21BC9B9DC(v28);
  v39 = [v28 thumbnailImageData];
  v79 = v37;
  if (v39)
  {
    v40 = v39;
    v41 = sub_21BE25BFC();
    v43 = v42;

    v44 = v90;
    v45 = v85;
    goto LABEL_20;
  }

  sub_21BE2614C();

  v50 = sub_21BE26A2C();
  v51 = sub_21BE28FFC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v91 = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_21BB3D81C(v87, v35, &v91);
    _os_log_impl(&dword_21BB35000, v50, v51, "thumbnailImageData is nil for %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    MEMORY[0x21CF05C50](v53, -1, -1);
    MEMORY[0x21CF05C50](v52, -1, -1);
  }

  (*(v82 + 8))(v10, v83);
  v45 = v85;
LABEL_19:

  v41 = 0;
  v43 = 0xF000000000000000;
  v44 = v90;
LABEL_20:
  sub_21BBBF0A0(v41, v43);
  v77 = v89;

  sub_21BE2614C();

  v57 = sub_21BE26A2C();
  v58 = sub_21BE28FFC();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v91 = v60;
    *v59 = 136315650;
    v61 = sub_21BB3D81C(v87, v35, &v91);

    *(v59 + 4) = v61;
    *(v59 + 12) = 2048;
    *(v59 + 14) = v84;
    *(v59 + 22) = 2080;
    if (v44)
    {
      v62 = v86;
    }

    else
    {
      v62 = 0x6E776F6E6B6E75;
    }

    if (v44)
    {
      v63 = v44;
    }

    else
    {
      v63 = 0xE700000000000000;
    }

    v64 = sub_21BB3D81C(v62, v63, &v91);

    *(v59 + 24) = v64;
    _os_log_impl(&dword_21BB35000, v57, v58, "Child: DisplayName: %s, age: %ld, altDSID: %s", v59, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v60, -1, -1);
    MEMORY[0x21CF05C50](v59, -1, -1);

    (*(v82 + 8))(v85, v83);
  }

  else
  {

    (*(v82 + 8))(v45, v83);
  }

  v65 = v81;
  v66 = v88;
  v67 = *v81;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v65 = v67;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v67 = sub_21BBBD7F4(0, *(v67 + 2) + 1, 1, v67);
    *v65 = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    *v65 = sub_21BBBD7F4((v69 > 1), v70 + 1, 1, v67);
  }

  sub_21BBBF0B4(v41, v43);
  v71 = *v65;
  *(v71 + 2) = v70 + 1;
  v72 = &v71[80 * v70];
  *(v72 + 4) = v87;
  *(v72 + 5) = v35;
  v73 = v78;
  *(v72 + 6) = v79;
  *(v72 + 7) = v73;
  *(v72 + 8) = v84;
  *(v72 + 9) = v41;
  v74 = v86;
  *(v72 + 10) = v43;
  *(v72 + 11) = v74;
  v75 = v89;
  *(v72 + 12) = v90;
  *(v72 + 13) = v75;
}

uint64_t ChildInfoService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ChildInfoService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21BC9D4D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBDE3D4;

  return sub_21BC9C234();
}

void (*sub_21BC9D564(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CF047C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21BC9D5E4;
  }

  __break(1u);
  return result;
}

void (*sub_21BC9D5EC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CF047C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21BC9DAE0;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC9D66C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21BE2995C() & 1;
  }
}

void sub_21BC9D6C4(unint64_t a1, uint64_t a2, char **a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21BE2951C())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CF047C0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_21BC9CC6C(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_14FamilyCircleUI12GenericImageVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
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

uint64_t dispatch thunk of ChildInfoServiceProvider.fetchChildInfo()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBE9D64;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ChildInfoService.fetchChildInfo()()
{
  v2 = *(*v0 + 96);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB8C3C;

  return v6();
}

uint64_t sub_21BC9DAE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

uint64_t sub_21BC9DB48()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_21BC9DB80(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t ConfirmChildAgeViewModel.__allocating_init(childInfoService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = MEMORY[0x277D84F90];
  sub_21BB3D104(a1, v2 + 16);
  return v2;
}

uint64_t ConfirmChildAgeViewModel.init(childInfoService:)(__int128 *a1)
{
  *(v1 + 56) = MEMORY[0x277D84F90];
  sub_21BB3D104(a1, v1 + 16);
  return v1;
}

uint64_t sub_21BC9DC94()
{
  v1[5] = v0;
  v2 = sub_21BE26A4C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC9DD54, 0, 0);
}

uint64_t sub_21BC9DD54()
{
  v1 = *(v0 + 40);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_21BC9DE7C;

  return v8(v2, v3);
}

uint64_t sub_21BC9DE7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_21BC9E02C;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_21BC9DFA4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21BC9DFA4()
{
  v1 = v0[11];
  v2 = v0[5];
  swift_beginAccess();
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;

  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BC9E02C()
{
  v1 = v0[10];
  v2 = v0[8];
  sub_21BE2614C();
  v3 = v1;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FDC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21BB35000, v4, v5, "Error fetching child info: %@", v8, 0xCu);
    sub_21BC9E984(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_21BC9E1C8()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE2599C();

  return v2;
}

uint64_t sub_21BC9E29C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21BE32770;
  swift_beginAccess();
  v2 = *(*(v0 + 56) + 16);
  v3 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v3;
  *(v1 + 32) = v2;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();

  v6 = [v5 bundleForClass_];
  sub_21BE2599C();

  v7 = sub_21BE289DC();

  return v7;
}

uint64_t sub_21BC9E3F8()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE2599C();

  return v2;
}

uint64_t sub_21BC9E4A4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_21BE25B7C();
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC9E5D8()
{
  sub_21BB3A35C(*(v0 + 56), v0 + 16);
  type metadata accessor for ConfirmChildAgeViewModel();
  v1 = swift_allocObject();
  *(v0 + 64) = v1;
  *(v1 + 56) = MEMORY[0x277D84F90];
  sub_21BB3D104((v0 + 16), v1 + 16);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_21BC9E6A0;

  return sub_21BC9DC94();
}

uint64_t sub_21BC9E6A0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v6 + 8);
  v4 = *(v1 + 64);

  return v3(v4);
}

uint64_t ConfirmChildAgeViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t ConfirmChildAgeViewModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_21BC9E984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AF0, &qword_21BE37410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BC9EA14(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21BC9EA70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_21BC9EB04()
{
  type metadata accessor for ChecklistStoreCache();
  swift_allocObject();
  return sub_21BE20540();
}

uint64_t sub_21BC9EB3C()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v13[15] != 1)
  {
    v7 = 0;
    return v7 & 1;
  }

  if (*v0)
  {
    v6 = *v0;

    v7 = sub_21BE07D30(0);

    sub_21BE261BC();
    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FCC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v7 & 1;
      _os_log_impl(&dword_21BB35000, v8, v9, "At least 1 provider is ready: %{BOOL}d", v10, 8u);
      MEMORY[0x21CF05C50](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return v7 & 1;
  }

  v12 = v0[1];
  type metadata accessor for FamilyChecklistStore();
  sub_21BCA11F4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
  result = sub_21BE2726C();
  __break(1u);
  return result;
}

uint64_t sub_21BC9EDA8(int a1)
{
  HIDWORD(v58) = a1;
  v2 = sub_21BE25FCC();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8CB0, &unk_21BE3DAE0);
  v8 = *(v3 + 72);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21BE33260;
  v11 = v10 + v9;
  v12 = *MEMORY[0x277D07F38];
  v13 = *(v4 + 104);
  v13(v11, v12, v2);
  v13(v11 + v8, *MEMORY[0x277D07F30], v2);
  LOBYTE(v11) = sub_21BE25FBC();

  if (v11)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_21BE2599C();
    v18 = v17;

LABEL_14:
    v59 = v16;
LABEL_17:
    v60 = v18;
    sub_21BB41FA4();
    return sub_21BE27DBC();
  }

  v13(v7, v12, v2);
  MEMORY[0x21CF01150](v7);
  (*(v4 + 8))(v7, v2);
  if ((v58 & 0x100000000) != 0)
  {
    v19 = *(v1 + 56);
    v20 = *(v1 + 64);
    v21 = *(v1 + 72);
    type metadata accessor for ChecklistStoreCache();
    sub_21BCA11F4(&qword_27CDB8CB8, type metadata accessor for ChecklistStoreCache);
    sub_21BE26EAC();
    v59 = 0x746E756F63;
    v60 = 0xE500000000000000;
    v22 = sub_21BE20000(&v59);

    if (!v22)
    {
      goto LABEL_7;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_16;
    }

    v59 = 0;
    LOBYTE(v60) = 1;
    sub_21BE28EAC();

    if (v60 == 1)
    {
LABEL_7:

LABEL_16:
      type metadata accessor for ConfirmChildAgeViewModel();
      v45 = swift_getObjCClassFromMetadata();
      v46 = [objc_opt_self() bundleForClass_];
      v47 = sub_21BE2599C();
      v18 = v48;

      v59 = v47;
      goto LABEL_17;
    }

    v50 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v51 = swift_allocObject();
    v52 = MEMORY[0x277D83B88];
    *(v51 + 16) = xmmword_21BE32770;
    v53 = MEMORY[0x277D83C10];
    *(v51 + 56) = v52;
    *(v51 + 64) = v53;
    *(v51 + 32) = v50;
    type metadata accessor for ConfirmChildAgeViewModel();
    v54 = swift_getObjCClassFromMetadata();
    v55 = objc_opt_self();

    v42 = [v55 bundleForClass_];
LABEL_13:
    v43 = v42;
    sub_21BE2599C();

    v16 = sub_21BE289DC();
    v18 = v44;

    goto LABEL_14;
  }

  v23 = *v1;
  if (*v1)
  {
    v24 = *(v1 + 40);
    if (v24)
    {
      type metadata accessor for ChecklistStoreCache();
      swift_allocObject();
      v25 = v24;

      v26 = sub_21BE20540();
      v27 = *(v23 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C0, &qword_21BE382F0);
      v28 = swift_allocObject();
      v28[2] = v27;
      v28[3] = sub_21BE0476C;
      v28[4] = 0;

      v29 = sub_21BBED570(v28);

      v30 = sub_21BDE5F04(v25, v29);

      v31 = sub_21BE28E8C();
      v32 = sub_21BE1F55C();
      if (v32)
      {
        v33 = v32;
        v34 = v26[3];
        v59 = v26[2];
        v60 = v34;

        MEMORY[0x21CF03CA0](46, 0xE100000000000000);
        MEMORY[0x21CF03CA0](0x746E756F63, 0xE500000000000000);
        v35 = sub_21BE289CC();

        [v33 setValue:v31 forKey:v35];

        v31 = v35;
      }

      v36 = sub_21BE1F55C();
      [v36 synchronize];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v37 = swift_allocObject();
      v38 = MEMORY[0x277D83B88];
      *(v37 + 16) = xmmword_21BE32770;
      v39 = MEMORY[0x277D83C10];
      *(v37 + 56) = v38;
      *(v37 + 64) = v39;
      *(v37 + 32) = v30;
      type metadata accessor for ConfirmChildAgeViewModel();
      v40 = swift_getObjCClassFromMetadata();
      v41 = objc_opt_self();

      v42 = [v41 bundleForClass_];
      goto LABEL_13;
    }
  }

  else
  {
    v56 = *(v1 + 8);
    v1 = type metadata accessor for FamilyChecklistStore();
    sub_21BCA11F4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
    sub_21BE2726C();
    __break(1u);
  }

  v57 = *(v1 + 48);
  sub_21BB3A2A4(0, &qword_280BD6980, 0x277D08248);
  sub_21BCA1818();

  result = sub_21BE2726C();
  __break(1u);
  return result;
}

uint64_t sub_21BC9F588@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BE275DC();
  v36 = 0;
  sub_21BC9F9A4(__src);
  memcpy(__dst, __src, 0x229uLL);
  memcpy(v38, __src, 0x229uLL);
  sub_21BBA3854(__dst, &v33, &qword_27CDB8C30, &qword_21BE3D9F0);
  sub_21BB3A4CC(v38, &qword_27CDB8C30, &qword_21BE3D9F0);
  memcpy(&v35[7], __dst, 0x229uLL);
  v5 = v36;
  v6 = swift_allocObject();
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  *(v6 + 73) = *(v1 + 57);
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C38, &qword_21BE3D9F8) + 36);
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_21BCA1154(v1, __src);
  v11 = [ObjCClassFromMetadata defaultCenter];
  if (qword_280BD7030 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  v12 = type metadata accessor for ActiveStateChange(0);
  v13 = (v9 + *(v12 + 20));
  *v13 = sub_21BCA114C;
  v13[1] = v6;
  v14 = (v9 + *(v12 + 24));
  *v14 = 0xD000000000000030;
  v14[1] = 0x800000021BE5AD40;
  *a1 = v4;
  *(a1 + 8) = 0x402E000000000000;
  *(a1 + 16) = v5;
  memcpy((a1 + 17), v35, 0x230uLL);
  *(a1 + 577) = 0;
  v15 = swift_allocObject();
  v16 = *(v2 + 48);
  v15[3] = *(v2 + 32);
  v15[4] = v16;
  *(v15 + 73) = *(v2 + 57);
  v17 = *(v2 + 16);
  v15[1] = *v2;
  v15[2] = v17;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C40, &qword_21BE3DA00) + 36);
  sub_21BCA1154(v2, __src);
  v19 = [ObjCClassFromMetadata defaultCenter];
  if (qword_280BD6FB8 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  v20 = type metadata accessor for InactiveStateChange(0);
  v21 = (a1 + v18 + *(v20 + 20));
  *v21 = sub_21BCA118C;
  v21[1] = v15;
  v22 = (a1 + v18 + *(v20 + 24));
  *v22 = 0xD000000000000030;
  v22[1] = 0x800000021BE5AD40;
  v23 = *(v2 + 16);
  v24 = *(v2 + 24);
  v25 = *(v2 + 32);
  type metadata accessor for FamilyNetworkMonitor();
  sub_21BCA11F4(&qword_27CDBC320, type metadata accessor for FamilyNetworkMonitor);
  sub_21BE26EAC();
  swift_beginAccess();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C48, &qword_21BE3DA08);
  v27 = *(v26 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  sub_21BE26C7C();
  swift_endAccess();

  v28 = swift_allocObject();
  v29 = *(v2 + 48);
  v28[3] = *(v2 + 32);
  v28[4] = v29;
  *(v28 + 73) = *(v2 + 57);
  v30 = *(v2 + 16);
  v28[1] = *v2;
  v28[2] = v30;
  v31 = (a1 + *(v26 + 56));
  *v31 = sub_21BCA11EC;
  v31[1] = v28;
  return sub_21BCA1154(v2, __src);
}

void sub_21BC9F9A4(uint64_t a1@<X8>)
{
  v2 = sub_21BE25FCC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 104))(v6, *MEMORY[0x277D07F38], v2);
  v7 = MEMORY[0x21CF01150](v6);
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v8 = 14;
  }

  else
  {
    v8 = 9;
  }

  HIDWORD(v14) = v8;
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_21BE2771C();
  v27 = 1;
  sub_21BC9FD60(v18);
  memcpy(v29, v18, 0x16AuLL);
  memcpy(v30, v18, 0x16AuLL);
  sub_21BBA3854(v29, v17, &qword_27CDB8C50, &qword_21BE3DA20);
  sub_21BB3A4CC(v30, &qword_27CDB8C50, &qword_21BE3DA20);
  memcpy(&v26[7], v29, 0x16AuLL);
  v12 = v27;
  sub_21BE286AC();
  sub_21BE2725C();
  *&v28[54] = v34;
  *&v28[70] = v35;
  *&v28[86] = v36;
  *&v28[102] = v37;
  *&v28[6] = v31;
  *&v28[22] = v32;
  *&v28[38] = v33;
  v17[0] = v11;
  v17[1] = 0;
  LOBYTE(v17[2]) = v12;
  memcpy(&v17[2] + 1, v26, 0x171uLL);
  *(&v17[56] + 2) = *&v28[64];
  *(&v17[58] + 2) = *&v28[80];
  *(&v17[60] + 2) = *&v28[96];
  *(&v17[48] + 2) = *v28;
  *(&v17[50] + 2) = *&v28[16];
  *(&v17[52] + 2) = *&v28[32];
  *(&v17[54] + 2) = *&v28[48];
  v17[62] = *(&v37 + 1);
  memcpy(&v16[7], v17, 0x1F8uLL);
  v15[504] = 1;
  *a1 = BYTE4(v14);
  *(a1 + 8) = v10;
  *(a1 + 16) = &unk_282D86148;
  *(a1 + 24) = &unk_282D86178;
  *(a1 + 32) = 0;
  memcpy((a1 + 33), v16, 0x1FFuLL);
  *(a1 + 544) = 0;
  *(a1 + 552) = 1;
  *v18 = v11;
  *&v18[8] = 0;
  v18[16] = v12;
  memcpy(&v18[17], v26, 0x171uLL);
  v23 = *&v28[64];
  v24 = *&v28[80];
  *v25 = *&v28[96];
  v19 = *v28;
  v20 = *&v28[16];
  v21 = *&v28[32];
  v22 = *&v28[48];
  *&v25[14] = *&v28[110];
  v13 = v10;

  sub_21BBA3854(v17, v15, &qword_27CDB8C58, &qword_21BE3DA28);
  sub_21BB3A4CC(v18, &qword_27CDB8C58, &qword_21BE3DA28);
}

uint64_t sub_21BC9FD60@<X0>(void *a1@<X8>)
{
  *&v152 = sub_21BCA13B0();
  *(&v152 + 1) = v1;
  sub_21BB41FA4();
  v2 = sub_21BE27DBC();
  v4 = v3;
  v6 = v5;
  sub_21BE2832C();
  v7 = sub_21BE27D4C();
  v80 = v8;
  v81 = v7;
  v10 = v9;
  v82 = v11;

  sub_21BBC7C7C(v2, v4, v6 & 1);

  v76 = sub_21BE286AC();
  v77 = v12;
  LOBYTE(v75) = 1;
  LOBYTE(v74) = 1;
  sub_21BE2725C();
  v79 = v10 & 1;
  v173 = v10 & 1;
  if (sub_21BC9EB3C())
  {
    v78 = sub_21BE275BC();
    v111 = 0;
    if (qword_27CDB5028 != -1)
    {
      swift_once();
    }

    v13 = sub_21BE07D30(1);
    v14 = sub_21BC9EDA8((v13 & 1) == 0);
    v16 = v15;
    v18 = v17;
    sub_21BE2833C();
    v19 = sub_21BE27D4C();
    v21 = v20;
    v23 = v22;

    sub_21BBC7C7C(v14, v16, v18 & 1);

    sub_21BE27BEC();
    v24 = sub_21BE27D9C();
    v26 = v25;
    v28 = v27;
    v30 = v29;

    sub_21BBC7C7C(v19, v21, v23 & 1);

    sub_21BE286AC();
    sub_21BE26F2C();
    sub_21BE286AC();
    sub_21BE2725C();
    *&v84 = v78;
    *(&v84 + 1) = 0x4010000000000000;
    LOBYTE(v85) = v111;
    *(&v85 + 1) = v24;
    *&v86 = v26;
    BYTE8(v86) = v28 & 1;
    *v87 = v30;
    *&v87[24] = v96;
    *&v87[40] = v97;
    *&v87[8] = v95;
    v112 = v84;
    v113 = v85;
    v116 = *&v87[16];
    v117 = *&v87[32];
    v114 = v86;
    v115 = *v87;
    v120 = v89;
    v121 = v90;
    v118 = *&v87[48];
    v119 = v88;
    *&v124[16] = v94;
    v123 = v92;
    *v124 = v93;
    v122 = v91;
    sub_21BCA1810(&v112);
    v162 = v122;
    v163 = v123;
    v164[0] = *v124;
    *(v164 + 9) = *&v124[9];
    v158 = v118;
    v159 = v119;
    v160 = v120;
    v161 = v121;
    v154 = v114;
    v155 = v115;
    v156 = v116;
    v157 = v117;
    v152 = v112;
    v153 = v113;
    sub_21BBA3854(&v84, &v139, &qword_27CDB8C80, &qword_21BE3DAB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C80, &qword_21BE3DAB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    sub_21BCA1608();
    sub_21BCA16C0();
    sub_21BE2784C();
    v149 = v108;
    v150 = v109;
    v151[0] = v110[0];
    *(v151 + 9) = *(v110 + 9);
    v145 = v104;
    v146 = v105;
    v147 = v106;
    v148 = v107;
    v141 = v100;
    v142 = v101;
    v143 = v102;
    v144 = v103;
    v139 = v98;
    v140 = v99;
    sub_21BCA1808(&v139);
    v162 = v149;
    v163 = v150;
    v164[0] = v151[0];
    *(v164 + 10) = *(v151 + 10);
    v158 = v145;
    v159 = v146;
    v160 = v147;
    v161 = v148;
    v154 = v141;
    v155 = v142;
    v156 = v143;
    v157 = v144;
    v152 = v139;
    v153 = v140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C60, &qword_21BE3DAA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C68, &qword_21BE3DAB0);
    sub_21BCA157C();
    sub_21BCA1744();
    sub_21BE2784C();
    sub_21BB3A4CC(&v84, &qword_27CDB8C80, &qword_21BE3DAB8);
    v162 = v136;
    v163 = v137;
    v31 = v138[0];
    goto LABEL_9;
  }

  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v152 == 1)
  {
    v32 = sub_21BC9EDA8(1);
    v34 = v33;
    v36 = v35;
    sub_21BE2833C();
    v37 = sub_21BE27D4C();
    v39 = v38;
    v41 = v40;

    sub_21BBC7C7C(v32, v34, v36 & 1);

    sub_21BE27BEC();
    v42 = sub_21BE27D9C();
    v44 = v43;
    v46 = v45;
    v48 = v47;

    sub_21BBC7C7C(v37, v39, v41 & 1);

    sub_21BE286AC();
    sub_21BE2725C();
    v111 = v46 & 1;
    *&v84 = v42;
    *(&v84 + 1) = v44;
    LOBYTE(v85) = v46 & 1;
    *(&v85 + 1) = v95;
    DWORD1(v85) = *(&v95 + 3);
    *(&v85 + 1) = v48;
    v114 = v86;
    v115 = *v87;
    v112 = v84;
    v113 = v85;
    v119 = v88;
    v120 = v89;
    v117 = *&v87[32];
    v118 = *&v87[48];
    v116 = *&v87[16];
    sub_21BCA17FC(&v112);
    v162 = v122;
    v163 = v123;
    v164[0] = *v124;
    *(v164 + 9) = *&v124[9];
    v158 = v118;
    v159 = v119;
    v160 = v120;
    v161 = v121;
    v154 = v114;
    v155 = v115;
    v156 = v116;
    v157 = v117;
    v152 = v112;
    v153 = v113;
    sub_21BBA3854(&v84, &v139, &qword_27CDB8C98, &unk_21BE3DAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C80, &qword_21BE3DAB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    sub_21BCA1608();
    sub_21BCA16C0();
    sub_21BE2784C();
    v149 = v108;
    v150 = v109;
    v151[0] = v110[0];
    *(v151 + 9) = *(v110 + 9);
    v145 = v104;
    v146 = v105;
    v147 = v106;
    v148 = v107;
    v141 = v100;
    v142 = v101;
    v143 = v102;
    v144 = v103;
    v139 = v98;
    v140 = v99;
    sub_21BCA1808(&v139);
    v162 = v149;
    v163 = v150;
    v164[0] = v151[0];
    *(v164 + 10) = *(v151 + 10);
    v158 = v145;
    v159 = v146;
    v160 = v147;
    v161 = v148;
    v154 = v141;
    v155 = v142;
    v156 = v143;
    v157 = v144;
    v152 = v139;
    v153 = v140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C60, &qword_21BE3DAA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C68, &qword_21BE3DAB0);
    sub_21BCA157C();
    sub_21BCA1744();
    sub_21BE2784C();
    sub_21BB3A4CC(&v84, &qword_27CDB8C98, &unk_21BE3DAC8);
    v162 = v136;
    v163 = v137;
    v31 = v138[0];
LABEL_9:
    v164[0] = v31;
    *(v164 + 10) = *(v138 + 10);
    v158 = v132;
    v159 = v133;
    v160 = v134;
    v161 = v135;
    v154 = v128;
    v155 = v129;
    v156 = v130;
    v157 = v131;
    v152 = v126;
    v153 = v127;
    goto LABEL_13;
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = [objc_opt_self() bundleForClass_];
  v51 = sub_21BE2599C();
  v53 = v52;

  *&v152 = v51;
  *(&v152 + 1) = v53;
  v54 = sub_21BE27DBC();
  v56 = v55;
  v58 = v57;
  if (qword_27CDB4FA8 != -1)
  {
    swift_once();
  }

  v59 = sub_21BE27D4C();
  v61 = v60;
  v63 = v62;
  sub_21BBC7C7C(v54, v56, v58 & 1);

  sub_21BE27CCC();
  v64 = sub_21BE27D9C();
  v66 = v65;
  v68 = v67;
  v70 = v69;

  sub_21BBC7C7C(v59, v61, v63 & 1);

  sub_21BE286AC();
  sub_21BE2725C();
  LOBYTE(v98) = v68 & 1;
  KeyPath = swift_getKeyPath();
  v72 = swift_allocObject();
  *(v72 + 16) = 1;
  *&v139 = v64;
  *(&v139 + 1) = v66;
  LOBYTE(v140) = v68 & 1;
  v145 = v116;
  v146 = v117;
  v147 = v118;
  v141 = v112;
  v142 = v113;
  v143 = v114;
  v144 = v115;
  *(&v140 + 1) = v70;
  *&v148 = KeyPath;
  *(&v148 + 1) = sub_21BC0AE98;
  *&v149 = v72;
  sub_21BCA1570(&v139);
  v136 = v149;
  v137 = v150;
  v138[0] = v151[0];
  *(v138 + 10) = *(v151 + 10);
  v132 = v145;
  v133 = v146;
  v134 = v147;
  v135 = v148;
  v128 = v141;
  v129 = v142;
  v130 = v143;
  v131 = v144;
  v126 = v139;
  v127 = v140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C60, &qword_21BE3DAA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8C68, &qword_21BE3DAB0);
  sub_21BCA157C();
  sub_21BCA1744();
  sub_21BE2784C();
LABEL_13:
  v149 = v162;
  v150 = v163;
  v151[0] = v164[0];
  *(v151 + 10) = *(v164 + 10);
  v145 = v158;
  v146 = v159;
  v147 = v160;
  v148 = v161;
  v141 = v154;
  v142 = v155;
  v143 = v156;
  v144 = v157;
  v139 = v152;
  v140 = v153;
  *&v98 = v81;
  *(&v98 + 1) = v80;
  LOBYTE(v99) = v79;
  *(&v99 + 1) = *v172;
  DWORD1(v99) = *&v172[3];
  *(&v99 + 1) = v82;
  v104 = v169;
  v105 = v170;
  v106 = v171;
  v100 = v165;
  v101 = v166;
  v103 = v168;
  v102 = v167;
  __src[6] = v169;
  __src[7] = v170;
  __src[2] = v165;
  __src[3] = v166;
  __src[4] = v167;
  __src[5] = v168;
  __src[0] = v98;
  __src[1] = v99;
  v136 = v162;
  v137 = v163;
  v138[0] = v164[0];
  *(v138 + 10) = *(v164 + 10);
  v132 = v158;
  v133 = v159;
  v134 = v160;
  v135 = v161;
  v128 = v154;
  v129 = v155;
  v130 = v156;
  v131 = v157;
  v126 = v152;
  v127 = v153;
  *(&__src[21] + 10) = *(v164 + 10);
  __src[20] = v163;
  __src[21] = v164[0];
  __src[16] = v159;
  __src[17] = v160;
  __src[18] = v161;
  __src[19] = v162;
  __src[12] = v155;
  __src[13] = v156;
  __src[14] = v157;
  __src[15] = v158;
  __src[8] = v171;
  __src[9] = v152;
  __src[10] = v153;
  __src[11] = v154;
  memcpy(a1, __src, 0x16AuLL);
  sub_21BBA3854(&v98, &v112, &qword_27CDB8C98, &unk_21BE3DAC8);
  sub_21BBA3854(&v126, &v112, &qword_27CDB8CA8, &qword_21BE3DAD8);
  sub_21BB3A4CC(&v139, &qword_27CDB8CA8, &qword_21BE3DAD8);
  *&v112 = v81;
  *(&v112 + 1) = v80;
  LOBYTE(v113) = v79;
  *(&v113 + 1) = *v172;
  DWORD1(v113) = *&v172[3];
  *(&v113 + 1) = v82;
  v118 = v169;
  v119 = v170;
  v120 = v171;
  v114 = v165;
  v115 = v166;
  v116 = v167;
  v117 = v168;
  return sub_21BB3A4CC(&v112, &qword_27CDB8C98, &unk_21BE3DAC8);
}

uint64_t sub_21BCA0C1C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FCC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21BB35000, v11, v12, "Checklist row refresh loaded", v13, 2u);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = *a1;
  if (*a1)
  {
    v15 = *a1;

    v16 = sub_21BE08538();
    v17 = sub_21BE28DAC();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    sub_21BE28D7C();

    v18 = sub_21BE28D6C();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v14;
    v19[5] = v16;
    sub_21BBA932C(0, 0, v5, &unk_21BE3DA18, v19);
  }

  else
  {
    v22 = a1[1];
    type metadata accessor for FamilyChecklistStore();
    sub_21BCA11F4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BCA0ED4(uint64_t *a1)
{
  if (*a1)
  {
    v1 = *a1;

    sub_21BE02DB4();
  }

  else
  {
    v3 = a1[1];
    type metadata accessor for FamilyChecklistStore();
    sub_21BCA11F4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BCA0F74(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *a2;
  if (*a2)
  {
    v8 = sub_21BE28DAC();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_21BE28D7C();
    swift_retain_n();
    v9 = sub_21BE28D6C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v7;
    sub_21BBA932C(0, 0, v6, &unk_21BE3DA10, v10);
  }

  else
  {
    v13 = a2[1];
    type metadata accessor for FamilyChecklistStore();
    sub_21BCA11F4(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BCA1108@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  *v6 = v1[3];
  *&v6[9] = *(v1 + 57);
  v3 = *v1;
  v4 = v1[1];
  return sub_21BC9F588(a1);
}

uint64_t objectdestroyTm_12()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_21BB47CE0();

  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  sub_21BB47CE0();

  return swift_deallocObject();
}

uint64_t sub_21BCA11F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BCA123C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BE07A8C(a1, v4, v5, v6);
}

uint64_t sub_21BCA12F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BE07154(a1, v4, v5, v7, v6);
}

uint64_t sub_21BCA13B0()
{
  v0 = sub_21BE25FCC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D07F38], v0);
  MEMORY[0x21CF01150](v4);
  (*(v1 + 8))(v4, v0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21BE2599C();

  return v7;
}

unint64_t sub_21BCA157C()
{
  result = qword_27CDB8C70;
  if (!qword_27CDB8C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8C60, &qword_21BE3DAA8);
    sub_21BCA1608();
    sub_21BCA16C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8C70);
  }

  return result;
}

unint64_t sub_21BCA1608()
{
  result = qword_27CDB8C78;
  if (!qword_27CDB8C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8C80, &qword_21BE3DAB8);
    sub_21BB3B038(&qword_27CDB8C88, &qword_27CDB8C90, &qword_21BE3DAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8C78);
  }

  return result;
}

unint64_t sub_21BCA16C0()
{
  result = qword_27CDBCD90;
  if (!qword_27CDBCD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8C98, &unk_21BE3DAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBCD90);
  }

  return result;
}

unint64_t sub_21BCA1744()
{
  result = qword_27CDB8CA0;
  if (!qword_27CDB8CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8C68, &qword_21BE3DAB0);
    sub_21BCA16C0();
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8CA0);
  }

  return result;
}

unint64_t sub_21BCA1818()
{
  result = qword_27CDB6A60;
  if (!qword_27CDB6A60)
  {
    sub_21BB3A2A4(255, &qword_280BD6980, 0x277D08248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6A60);
  }

  return result;
}

uint64_t sub_21BCA1888(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BCA18D0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_21BCA193C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8CC8, &qword_21BE3DBF0);
  v7 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v9 = (v28 - v8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8CD0, &qword_21BE3DBF8);
  v10 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v12 = v28 - v11;
  v13 = sub_21BE2664C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v32 = a3;
  sub_21BCA2960(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);
  sub_21BE25F1C();

  if (*(a3 + 16))
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    v19 = a2 & 1;
    *(v18 + 24) = a2 & 1;
    *(v18 + 32) = a3;

    v20 = CUIKAppTintColor();
    v21 = sub_21BE2826C();
    v28[0] = swift_getKeyPath();
    v32 = v21;
    v22 = sub_21BE26F3C();
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = v19;
    *(v23 + 32) = a3;
    v28[1] = v13;
    v24 = (v9 + *(v30 + 36));
    v25 = *(sub_21BE2701C() + 20);

    sub_21BE28D8C();
    *v24 = &unk_21BE3DC70;
    v24[1] = v23;
    *v9 = sub_21BCA2330;
    v9[1] = v18;
    v9[2] = v28[0];
    v9[3] = v22;
    sub_21BCA244C(v9, v12);
    swift_storeEnumTagMultiPayload();
    sub_21BCA2960(&qword_27CDB8CD8, MEMORY[0x277CF7B20]);
    sub_21BCA2184();
    sub_21BE2784C();
    return sub_21BCA24BC(v9);
  }

  else
  {
    v27 = swift_allocObject();
    *(v27 + 16) = a1;
    *(v27 + 24) = a2 & 1;
    *(v27 + 32) = a3;

    sub_21BE2663C();
    (*(v14 + 16))(v12, v17, v13);
    swift_storeEnumTagMultiPayload();
    sub_21BCA2960(&qword_27CDB8CD8, MEMORY[0x277CF7B20]);
    sub_21BCA2184();
    sub_21BE2784C();
    return (*(v14 + 8))(v17, v13);
  }
}

void sub_21BCA1D9C(void *a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_21BE261BC();
    sub_21BC51D50(a1);
    (*(v9 + 8))(v12, v8);
    sub_21BCA2544(0, a3, a4 & 1);
  }

  else
  {

    sub_21BCA2544(a1 & 1, a3, a4 & 1);
  }
}

uint64_t sub_21BCA1EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  sub_21BE28D7C();
  v3[4] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_21BCA1F84, v5, v4);
}

uint64_t sub_21BCA1F84()
{
  v1 = [*(v0[3] + 24) primaryAppleAccountSource];
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];

    if (*(v2 + 16))
    {
      v4 = v0[3];
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v4;
      *(v5 + 24) = 0;
      v0[2] = v4;
      sub_21BCA2960(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);
      sub_21BE25F0C();
    }

    else
    {
      *(v2 + 16) = 0;
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_21BC187C4;
    v7 = v0[3];

    return sub_21BBF9350();
  }
}

unint64_t sub_21BCA2184()
{
  result = qword_27CDB8CE0;
  if (!qword_27CDB8CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8CC8, &qword_21BE3DBF0);
    sub_21BCA2240();
    sub_21BCA2960(&qword_27CDB5058, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8CE0);
  }

  return result;
}

unint64_t sub_21BCA2240()
{
  result = qword_27CDB8CE8;
  if (!qword_27CDB8CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8CF0, &qword_21BE3DC28);
    sub_21BBA6C54();
    sub_21BCA22CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8CE8);
  }

  return result;
}

unint64_t sub_21BCA22CC()
{
  result = qword_27CDB8CF8;
  if (!qword_27CDB8CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8D00, &qword_21BE3DC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8CF8);
  }

  return result;
}

uint64_t sub_21BCA2348@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x21CF02600]();
  *a1 = result;
  return result;
}

uint64_t sub_21BCA2374(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x21CF02610](v2);
}

uint64_t sub_21BCA23A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BCA1EEC(v2, v3, v4);
}

uint64_t sub_21BCA244C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8CC8, &qword_21BE3DBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCA24BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8CC8, &qword_21BE3DBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21BCA2544(char a1, uint64_t a2, char a3)
{
  v6 = sub_21BE2754C();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21BE26A4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v9;
    v18 = a3;
    v19 = v6;
    v20 = a1;
    v21 = v17;
    *v17 = 67109120;
    *(v17 + 4) = v20 & 1;
    _os_log_impl(&dword_21BB35000, v15, v16, "Calendar flow completed, user added new calendar: %{BOOL}d", v17, 8u);
    v22 = v21;
    a1 = v20;
    v6 = v19;
    a3 = v18;
    v9 = v27;
    MEMORY[0x21CF05C50](v22, -1, -1);
  }

  (*(v11 + 8))(v14, v10);

  if ((a3 & 1) == 0)
  {
    sub_21BE28FEC();
    v23 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v28 + 8))(v9, v6);
    a2 = v30;
  }

  swift_beginAccess();
  if (*(a2 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v26 - 2) = a2;
    *(&v26 - 8) = 0;
    v29 = a2;
    sub_21BCA2960(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    sub_21BE25F0C();

    if ((a1 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *(a2 + 16) = 0;

    if ((a1 & 1) == 0)
    {
      return;
    }
  }

  v25 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EC8 != -1)
  {
    swift_once();
  }

  [v25 postNotificationName:qword_27CDB7E78 object:0];
}

uint64_t sub_21BCA2960(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BCA29A8()
{
  result = qword_27CDB8D08;
  if (!qword_27CDB8D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8D10, &unk_21BE3DCA0);
    sub_21BCA2960(&qword_27CDB8CD8, MEMORY[0x277CF7B20]);
    sub_21BCA2184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8D08);
  }

  return result;
}

unint64_t sub_21BCA2A64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5930, &qword_21BE32B00);
    v2 = sub_21BE297DC();
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
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_21BB414D0(&v27, v29);
        sub_21BB414D0(v29, v30);
        sub_21BB414D0(v30, &v28);
        result = sub_21BBB3108(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_21BB414D0(&v28, v12);
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
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_21BB414D0(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
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

unint64_t sub_21BCA2CBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5928, &qword_21BE32AF8);
    v1 = sub_21BE297DC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
LABEL_8:
  if (!v4)
  {
    goto LABEL_10;
  }

  do
  {
    v11 = v7;
LABEL_13:
    v12 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_21BB3A35C(*(a1 + 56) + 40 * v13, v38);
    *&v37 = v15;
    *(&v37 + 1) = v16;
    v34 = v37;
    v35[0] = v38[0];
    v35[1] = v38[1];
    v36 = v39;
    v17 = v37;
    sub_21BC27210(v35, v26);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D30, &qword_21BE3DF28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8568, &unk_21BE3BF70);
    swift_dynamicCast();
    v31 = v28;
    v32 = v29;
    v33 = v30;
    v27 = v28;
    v28 = v29;
    *&v29 = v30;
    result = sub_21BBB3108(v17, *(&v17 + 1));
    if (v18)
    {
      v8 = v1[6] + 16 * result;
      v9 = *(v8 + 8);
      *v8 = v17;
      v10 = result;

      result = sub_21BCA6258(&v27, v1[7] + 40 * v10);
      v7 = v11;
      goto LABEL_8;
    }

    if (v1[2] >= v1[3])
    {
      goto LABEL_20;
    }

    *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v1[6] + 16 * result) = v17;
    v19 = v1[7] + 40 * result;
    v20 = v27;
    v21 = v28;
    *(v19 + 32) = v29;
    *v19 = v20;
    *(v19 + 16) = v21;
    v22 = v1[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v1[2] = v24;
    v7 = v11;
  }

  while (v4);
LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_21BCA2F6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5928, &qword_21BE32AF8);
    v2 = sub_21BE297DC();
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = (*(a1 + 56) + v14);
        v27 = *v18;
        v28 = v18[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8568, &unk_21BE3BF70);
        swift_dynamicCast();
        v33 = v30;
        v34 = v31;
        v35 = v32;
        v29 = v30;
        v30 = v31;
        *&v31 = v32;
        result = sub_21BBB3108(v17, v16);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          result = sub_21BCA6258(&v29, v2[7] + 40 * v11);
          v8 = v12;
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
          *v20 = v17;
          v20[1] = v16;
          v21 = v2[7] + 40 * result;
          v22 = v29;
          v23 = v30;
          *(v21 + 32) = v31;
          *v21 = v22;
          *(v21 + 16) = v23;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
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

unint64_t sub_21BCA31D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5930, &qword_21BE32B00);
    v2 = sub_21BE297DC();
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

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D28, &unk_21BE45710);
        swift_dynamicCast();
        sub_21BB414D0(&v25, v27);
        sub_21BB414D0(v27, v28);
        sub_21BB414D0(v28, &v26);
        result = sub_21BBB3108(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_21BB414D0(&v26, v12);
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
          result = sub_21BB414D0(&v26, (v2[7] + 32 * result));
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

uint64_t sub_21BCA3434(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58F8, &qword_21BE3BE50);
    v2 = sub_21BE297DC();
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
    sub_21BB3DCD4(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_21BB414D0(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_21BB414D0(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_21BB414D0(v32, v33);
    v17 = *(v2 + 40);
    result = sub_21BE2956C();
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
    result = sub_21BB414D0(v33, (*(v2 + 56) + 32 * v10));
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

FamilyCircleUI::AnalyticsType_optional __swiftcall AnalyticsType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE299AC();

  v5 = 0;
  v6 = 46;
  switch(v3)
  {
    case 0:
      goto LABEL_63;
    case 1:
      v5 = 1;
      goto LABEL_63;
    case 2:
      v5 = 2;
      goto LABEL_63;
    case 3:
      v5 = 3;
      goto LABEL_63;
    case 4:
      v5 = 4;
      goto LABEL_63;
    case 5:
      v5 = 5;
      goto LABEL_63;
    case 6:
      v5 = 6;
      goto LABEL_63;
    case 7:
      v5 = 7;
      goto LABEL_63;
    case 8:
      v5 = 8;
      goto LABEL_63;
    case 9:
      v5 = 9;
      goto LABEL_63;
    case 10:
      v5 = 10;
      goto LABEL_63;
    case 11:
      v5 = 11;
      goto LABEL_63;
    case 12:
      v5 = 12;
      goto LABEL_63;
    case 13:
      v5 = 13;
      goto LABEL_63;
    case 14:
      v5 = 14;
      goto LABEL_63;
    case 15:
      v5 = 15;
      goto LABEL_63;
    case 16:
      v5 = 16;
      goto LABEL_63;
    case 17:
      v5 = 17;
      goto LABEL_63;
    case 18:
      v5 = 18;
      goto LABEL_63;
    case 19:
      v5 = 19;
      goto LABEL_63;
    case 20:
      v5 = 20;
      goto LABEL_63;
    case 21:
      v5 = 21;
      goto LABEL_63;
    case 22:
      v5 = 22;
      goto LABEL_63;
    case 23:
      v5 = 23;
      goto LABEL_63;
    case 24:
      v5 = 24;
      goto LABEL_63;
    case 25:
      v5 = 25;
      goto LABEL_63;
    case 26:
      v5 = 26;
      goto LABEL_63;
    case 27:
      v5 = 27;
      goto LABEL_63;
    case 28:
      v5 = 28;
      goto LABEL_63;
    case 29:
      v5 = 29;
      goto LABEL_63;
    case 30:
      v5 = 30;
      goto LABEL_63;
    case 31:
      v5 = 31;
      goto LABEL_63;
    case 32:
      v5 = 32;
      goto LABEL_63;
    case 33:
      v5 = 33;
      goto LABEL_63;
    case 34:
      v5 = 34;
      goto LABEL_63;
    case 35:
      v5 = 35;
      goto LABEL_63;
    case 36:
      v5 = 36;
      goto LABEL_63;
    case 37:
      v5 = 37;
      goto LABEL_63;
    case 38:
      v5 = 38;
      goto LABEL_63;
    case 39:
      v5 = 39;
      goto LABEL_63;
    case 40:
      v5 = 40;
      goto LABEL_63;
    case 41:
      v5 = 41;
      goto LABEL_63;
    case 42:
      v5 = 42;
      goto LABEL_63;
    case 43:
      v5 = 43;
      goto LABEL_63;
    case 44:
      v5 = 44;
      goto LABEL_63;
    case 45:
      v5 = 45;
LABEL_63:
      v6 = v5;
      break;
    case 46:
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    case 55:
      v6 = 55;
      break;
    case 56:
      v6 = 56;
      break;
    case 57:
      v6 = 57;
      break;
    case 58:
      v6 = 58;
      break;
    case 59:
      v6 = 59;
      break;
    case 60:
      v6 = 60;
      break;
    case 61:
      v6 = 61;
      break;
    case 62:
      v6 = 62;
      break;
    case 63:
      v6 = 63;
      break;
    default:
      v6 = 64;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t AnalyticsType.rawValue.getter()
{
  result = 0xD00000000000001FLL;
  switch(*v0)
  {
    case 1:
    case 0xA:
    case 0x10:
    case 0x15:
    case 0x17:
    case 0x1D:
    case 0x23:
    case 0x26:
      result = 0xD000000000000030;
      break;
    case 3:
    case 8:
    case 0xF:
      result = 0xD00000000000002DLL;
      break;
    case 4:
    case 0x21:
      result = 0xD00000000000002FLL;
      break;
    case 5:
    case 0x11:
    case 0x13:
    case 0x2E:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD000000000000027;
      break;
    case 9:
    case 0x14:
    case 0x16:
    case 0x24:
    case 0x3C:
      result = 0xD000000000000033;
      break;
    case 0xB:
    case 0xC:
      result = 0xD00000000000002ELL;
      break;
    case 0xD:
      result = 0xD00000000000002CLL;
      break;
    case 0xE:
      result = 0xD000000000000020;
      break;
    case 0x12:
    case 0x1A:
    case 0x29:
      result = 0xD000000000000029;
      break;
    case 0x18:
    case 0x27:
      result = 0xD000000000000036;
      break;
    case 0x19:
    case 0x22:
    case 0x33:
      result = 0xD000000000000037;
      break;
    case 0x1B:
    case 0x25:
      result = 0xD000000000000035;
      break;
    case 0x1C:
    case 0x1E:
    case 0x3D:
      result = 0xD000000000000032;
      break;
    case 0x1F:
    case 0x20:
      result = 0xD000000000000038;
      break;
    case 0x28:
    case 0x2F:
    case 0x30:
      result = 0xD000000000000026;
      break;
    case 0x2A:
      result = 0xD00000000000002ALL;
      break;
    case 0x2B:
      result = 0xD00000000000001CLL;
      break;
    case 0x2C:
      result = 0xD000000000000022;
      break;
    case 0x31:
    case 0x3B:
      result = 0xD00000000000003BLL;
      break;
    case 0x32:
      result = 0xD00000000000003ALL;
      break;
    case 0x34:
      result = 0xD000000000000055;
      break;
    case 0x35:
      result = 0xD000000000000054;
      break;
    case 0x36:
      result = 0xD000000000000039;
      break;
    case 0x37:
      result = 0xD000000000000047;
      break;
    case 0x38:
    case 0x3A:
    case 0x3F:
      result = 0xD000000000000040;
      break;
    case 0x39:
      result = 0xD000000000000045;
      break;
    case 0x3E:
      result = 0xD00000000000003CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21BCA3E18(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AnalyticsType.rawValue.getter();
  v4 = v3;
  if (v2 == AnalyticsType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21BE2995C();
  }

  return v7 & 1;
}

uint64_t sub_21BCA3EB4()
{
  v1 = *v0;
  sub_21BE29ACC();
  AnalyticsType.rawValue.getter();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BCA3F1C()
{
  v2 = *v0;
  AnalyticsType.rawValue.getter();
  sub_21BE28ABC();
}

uint64_t sub_21BCA3F80()
{
  v1 = *v0;
  sub_21BE29ACC();
  AnalyticsType.rawValue.getter();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BCA3FF0@<X0>(unint64_t *a1@<X8>)
{
  result = AnalyticsType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BCA4018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v7 = sub_21BE263AC();

  if (v7)
  {
    if (a2)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = a2;
      *(v8 + 24) = a3;
      v9 = sub_21BCA6378;
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = sub_21BBB94E4;
      *(v12 + 24) = v3;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_21BCA62C8;
      *(v8 + 24) = v12;

      v9 = sub_21BCA62F4;
    }

    v13 = v9;
    v10 = swift_allocObject();
    *(v10 + 16) = v13;
    *(v10 + 24) = v8;
    v11 = sub_21BCA62FC;
  }

  else
  {
    sub_21BB5AEC4(a2);
    v10 = 0;
    v11 = sub_21BCA42BC;
  }

  v15 = *(v4 + 16);
  v14 = *(v4 + 24);
  *(v4 + 16) = v11;
  *(v4 + 24) = v10;
  sub_21BB5AEC4(v15);
  return v4;
}

uint64_t sub_21BCA4174@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t (*)(), uint64_t)@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v9 = *a2;
  v8 = a2[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  LOBYTE(a3) = a3(v6, v7, sub_21BCA6334, v10);

  *a4 = a3 & 1;
  return result;
}

uint64_t sub_21BCA421C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, void *, void *))
{
  v12[0] = a1;
  v12[1] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v11[0] = sub_21BCA6304;
  v11[1] = v8;

  a5(&v10, v12, v11);

  return v10;
}

uint64_t sub_21BCA42BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21BE289CC();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21BCA437C;
  v10[3] = &block_descriptor_23;
  v7 = _Block_copy(v10);

  v8 = AnalyticsSendEventLazy();

  _Block_release(v7);

  return v8;
}

id sub_21BCA437C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_21BC893E8();
    v5 = sub_21BE288EC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t static FamilyAnalytics.testableFamilyAnalytics(withEnvironment:sendFunction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FamilyAnalytics();
  v6 = swift_allocObject();

  sub_21BB3D80C(a2);
  sub_21BCA4018(a1, a2, a3);
  if (sub_21BE263AC())
  {
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    qword_27CDB8D18 = v6;
  }

  return v6;
}

uint64_t sub_21BCA44F4()
{
  sub_21BE263BC();
  sub_21BE2639C();
  type metadata accessor for FamilyAnalytics();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = sub_21BE263AC();

  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = sub_21BBB94E4;
    *(v2 + 24) = v0;
    *(v0 + 16) = sub_21BCA6374;
    *(v0 + 24) = v2;
  }

  else
  {
    *(v0 + 16) = sub_21BCA42BC;
    *(v0 + 24) = 0;
  }

  result = sub_21BB5AEC4(0);
  qword_27CDB8D18 = v0;
  return result;
}

uint64_t static FamilyAnalytics.shared.getter()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21BCA4624@<X0>(void *a1@<X8>)
{
  if (qword_27CDB4F68 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27CDB8D18;
}

uint64_t sub_21BCA4694(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27CDB4F68;

  if (v2 != -1)
  {
    swift_once();
  }

  qword_27CDB8D18 = v1;
}

uint64_t sub_21BCA4708(uint64_t a1, uint64_t a2)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v7 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v5 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v7, v5);
}

uint64_t sub_21BCA4838(char a1)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v5 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x800000021BE5A7B0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a1 & 1;

  v3 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v5, v3);
}

uint64_t sub_21BCA4954(char a1)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v5 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x6E61696472617567;
  *(inited + 40) = 0xEF64656C67676F54;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a1 & 1;

  v3 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v5, v3);
}

uint64_t sub_21BCA4A78()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x800000021BE5AE20;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v3, v1);
}

uint64_t sub_21BCA4B90()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000021BE5AE40;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v3, v1);
}

uint64_t sub_21BCA4CA8()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000021BE56CE0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v3, v1);
}

uint64_t sub_21BCA4DC0()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000021BE55FF0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v3, v1);
}

uint64_t sub_21BCA4ED8(char a1)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v5 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x800000021BE5AE60;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = a1 & 1;

  v3 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v5, v3);
}

uint64_t sub_21BCA4FF4()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000021BE588A0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v3, v1);
}

uint64_t sub_21BCA5128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v23[0] = 41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE381E0;
  *(inited + 32) = 1701667182;
  v17 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 88) = 0x79547265626D656DLL;
  *(inited + 96) = 0xEA00000000006570;
  v18 = MEMORY[0x277D83B88];
  *(inited + 56) = a2;
  *(inited + 128) = v18;
  *(inited + 136) = &protocol witness table for Int;
  *(inited + 104) = a3;
  *(inited + 144) = 0x695468636E75616CLL;
  *(inited + 152) = 0xEA0000000000656DLL;
  *(inited + 184) = v18;
  *(inited + 192) = &protocol witness table for Int;
  *(inited + 160) = a4;
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x800000021BE584B0;
  *(inited + 240) = v18;
  *(inited + 248) = &protocol witness table for Int;
  *(inited + 216) = a6;
  *(inited + 256) = 0xD000000000000011;
  *(inited + 264) = 0x800000021BE584D0;
  *(inited + 296) = v18;
  *(inited + 304) = &protocol witness table for Int;
  *(inited + 272) = a5;
  *(inited + 312) = 0xD000000000000018;
  *(inited + 320) = 0x800000021BE584F0;
  *(inited + 352) = MEMORY[0x277D839B0];
  *(inited + 360) = &protocol witness table for Bool;
  *(inited + 328) = a7 & 1;
  strcpy((inited + 368), "triggeredTime");
  *(inited + 382) = -4864;
  *(inited + 408) = v18;
  *(inited + 416) = &protocol witness table for Int;
  *(inited + 384) = a8;
  *(inited + 424) = 0x6574617473;
  *(inited + 432) = 0xE500000000000000;
  *(inited + 464) = v17;
  *(inited + 472) = &protocol witness table for String;
  *(inited + 440) = a9;
  *(inited + 448) = a10;

  v19 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(v23, v19);
}

uint64_t sub_21BCA53BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v10 = 42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  *(inited + 32) = 1701667182;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v7 = MEMORY[0x277D83B88];
  strcpy((inited + 88), "triggeredTime");
  *(inited + 102) = -4864;
  *(inited + 128) = v7;
  *(inited + 136) = &protocol witness table for Int;
  *(inited + 104) = a3;

  v8 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v10, v8);
}

uint64_t sub_21BCA5538(uint64_t a1)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v4 = 40;

  v2 = sub_21BCA2CBC(a1);
  sub_21BCA55DC(&v4, v2);
}

uint64_t sub_21BCA55DC(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = qword_27CDB4E68;

  if (v12 != -1)
  {
    swift_once();
  }

  v31[0] = qword_27CDD41C8;
  v31[1] = unk_27CDD41D0;
  v31[3] = MEMORY[0x277D837D0];
  v31[4] = &protocol witness table for String;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = a2;
  sub_21BC7F814(v31, 0x74616C5072657375, 0xEC0000006D726F66, isUniquelyReferenced_nonNull_native);
  sub_21BD52CFC(v30);
  v15 = v14;

  if (v15)
  {
    v16 = *(v3 + 16);
    if (v16)
    {
      v17 = *(v3 + 24);
      LOBYTE(v31[0]) = v11;
      v18 = AnalyticsType.rawValue.getter();
      v20 = v19;
      v21 = swift_allocObject();
      *(v21 + 16) = v15;

      v16(v18, v20, sub_21BCA636C, v21);
      sub_21BB5AEC4(v16);
    }

    else
    {
    }
  }

  else
  {
    sub_21BE2614C();

    v23 = sub_21BE26A2C();
    v24 = sub_21BE28FDC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_21BB3D81C(0xD000000000000012, 0x800000021BE5AF30, v31);
      *(v25 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8568, &unk_21BE3BF70);
      v27 = sub_21BE2891C();
      v29 = sub_21BB3D81C(v27, v28, v31);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_21BB35000, v23, v24, "%s, failed to cast payload %s as? [String: NSObject]", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v26, -1, -1);
      MEMORY[0x21CF05C50](v25, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t FamilyAnalytics.deinit()
{
  v1 = *(v0 + 24);
  sub_21BB5AEC4(*(v0 + 16));
  return v0;
}

uint64_t FamilyAnalytics.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_21BB5AEC4(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_21BCA59D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v17 = 45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  v11 = inited;
  *(inited + 16) = xmmword_21BE362A0;
  *(inited + 32) = 0x72656469766F7270;
  v12 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 88) = 0x737574617473;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 128) = MEMORY[0x277D839B0];
  *(inited + 136) = &protocol witness table for Bool;
  *(inited + 104) = a3 & 1;
  *(inited + 144) = 0x6E6F73616572;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 184) = v12;
  *(inited + 192) = &protocol witness table for String;
  v13 = 0x6F73616572206F6ELL;
  if (a5)
  {
    v13 = a4;
  }

  v14 = 0xE90000000000006ELL;
  if (a5)
  {
    v14 = a5;
  }

  *(inited + 160) = v13;
  *(inited + 168) = v14;

  v15 = sub_21BBB5E60(v11);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  sub_21BCA55DC(&v17, v15);
}

uint64_t sub_21BCA5BA8(char *a1, unint64_t a2)
{
  v3 = *a1;
  LOBYTE(v12) = *a1;
  if (AnalyticsType.rawValue.getter() == 0xD00000000000001CLL && 0x800000021BE55090 == v4)
  {
    goto LABEL_3;
  }

  v5 = sub_21BE2995C();

  if ((v5 & 1) == 0)
  {
    LOBYTE(v12) = v3;
    if (AnalyticsType.rawValue.getter() == 0xD000000000000022 && 0x800000021BE550B0 == v10)
    {
LABEL_3:

      goto LABEL_5;
    }

    v11 = sub_21BE2995C();

    if ((v11 & 1) == 0)
    {
      v12 = 0;
      v13 = 0xE000000000000000;
      sub_21BE295EC();
      MEMORY[0x21CF03CA0](0xD00000000000001CLL, 0x800000021BE5AEC0);
      sub_21BE2977C();
      goto LABEL_7;
    }
  }

LABEL_5:
  if (a2 > 0x64)
  {
    sub_21BE295EC();

    v12 = 0xD000000000000027;
    v13 = 0x800000021BE5AEE0;
    v6 = sub_21BE2992C();
    MEMORY[0x21CF03CA0](v6);

LABEL_7:
    MEMORY[0x21CF01210](v12, v13, 0xD000000000000010, 0x800000021BE573A0, 500);

    return swift_willThrow();
  }

  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  LOBYTE(v12) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x746E6563726570;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 80) = &protocol witness table for Int;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a2;

  v9 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v12, v9);
}

unint64_t sub_21BCA5E88()
{
  result = qword_27CDB8D20;
  if (!qword_27CDB8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8D20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC1)
  {
    goto LABEL_17;
  }

  if (a2 + 63 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 63) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 63;
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

      return (*a1 | (v4 << 8)) - 63;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 63;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x40;
  v8 = v6 - 64;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 63 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 63) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC1)
  {
    v4 = 0;
  }

  if (a2 > 0xC0)
  {
    v5 = ((a2 - 193) >> 8) + 1;
    *result = a2 + 63;
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
    *result = a2 + 63;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21BCA6258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8568, &unk_21BE3BF70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCA62C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_21BCA6304@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_21BCA6334()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_21BCA637C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FAAMSWebView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D88, &qword_21BE3E0E0);
  v8 = swift_allocBox();
  v9 = (v2 + *(v5 + 32));
  v11 = *v9;
  v10 = v9[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D90, &qword_21BE3E0E8);
  sub_21BE283FC();
  type metadata accessor for FAAMSWebViewModel(0);
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
  sub_21BE2864C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D98, &qword_21BE3E0F0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8DA0, &qword_21BE3E0F8);
  sub_21BE2699C();
  sub_21BCA8E60(&qword_27CDB8DA8, MEMORY[0x277CEE820]);
  v18[2] = v12;
  v18[3] = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21BE271BC();
  sub_21BCA8EA8(v2, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  sub_21BCA8F0C(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8DB0, &qword_21BE3E110) + 36));
  v16 = v15 + *(sub_21BE2701C() + 20);
  result = sub_21BE28D8C();
  *v15 = &unk_21BE3E108;
  v15[1] = v14;
  return result;
}

uint64_t sub_21BCA6648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v43 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D88, &qword_21BE3E0E0);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = sub_21BE2699C();
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v44 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8DA0, &qword_21BE3E0F8);
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v45 = &v30 - v17;
  v18 = swift_projectBox();
  v19 = v3[2];
  v19(v9, v18, v2);
  sub_21BE2862C();
  v20 = v3[1];
  v20(v9, v2);
  sub_21BCA8558();

  sub_21BE2698C();
  v36 = v18;
  v37 = v19;
  v19(v7, v18, v2);
  v32 = v3 + 2;
  sub_21BE2863C();
  v20(v7, v2);
  swift_getKeyPath();
  sub_21BE2865C();

  v20(v9, v2);
  v34 = v3 + 1;
  v35 = v20;
  v30 = v48;
  v31 = v49;
  v19(v7, v18, v2);
  sub_21BE2862C();
  v20(v7, v2);
  v21 = *(v46 + 64);

  v33 = sub_21BCA8E60(&qword_27CDB8DA8, MEMORY[0x277CEE820]);

  v22 = v31;
  v23 = v39;
  v24 = v44;
  sub_21BE27DEC();

  (*(v40 + 8))(v24, v23);
  v37(v7, v36, v2);
  sub_21BE2863C();
  v25 = v35;
  v35(v7, v2);
  swift_getKeyPath();
  sub_21BE2865C();

  v25(v9, v2);
  v26 = v49;

  v46 = v23;
  v47 = v33;
  swift_getOpaqueTypeConformance2();
  v27 = v41;
  v28 = v45;
  sub_21BE27DDC();

  return (*(v42 + 8))(v28, v27);
}

id sub_21BCA6B80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
  sub_21BE25F1C();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_21BCA6C38(uint64_t a1, int a2, uint64_t a3)
{
  v30 = a3;
  LODWORD(v3) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D88, &qword_21BE3E0E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8];
  v10 = sub_21BE26A4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE260FC();
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FBC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v3;
    v3 = a1;
    v18 = v17;
    *v17 = 0;
    _os_log_impl(&dword_21BB35000, v15, v16, "Handling AMSWebView authenticate sheet", v17, 2u);
    v19 = v18;
    a1 = v3;
    LOBYTE(v3) = v29;
    MEMORY[0x21CF05C50](v19, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v20 = swift_projectBox();
  (*(v6 + 16))(v9, v20, v5);
  v21 = (v6 + 8);
  if (v3)
  {
    sub_21BE2862C();
    (*v21)(v9, v5);
    v22 = v31;
    swift_getKeyPath();
    v31 = v22;
    sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
    sub_21BE25F1C();

    v23 = *(v22 + 24);
    sub_21BB3D80C(v23);

    if (!v23)
    {
      return result;
    }

    v25 = 0;
    v26 = a1;
  }

  else
  {
    sub_21BE2862C();
    (*v21)(v9, v5);
    v27 = v31;
    swift_getKeyPath();
    v31 = v27;
    sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
    sub_21BE25F1C();

    v23 = *(v27 + 24);
    sub_21BB3D80C(v23);

    if (!v23)
    {
      return result;
    }

    v25 = a1;
    v26 = 0;
  }

  v23(v25, v26);
  return sub_21BB5AEC4(v23);
}

id sub_21BCA6FCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
  sub_21BE25F1C();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

uint64_t sub_21BCA7084(uint64_t a1, int a2, uint64_t a3)
{
  v30 = a3;
  LODWORD(v3) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D88, &qword_21BE3E0E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8];
  v10 = sub_21BE26A4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE260FC();
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FBC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v3;
    v3 = a1;
    v18 = v17;
    *v17 = 0;
    _os_log_impl(&dword_21BB35000, v15, v16, "Handling AMSWebView alert dialog", v17, 2u);
    v19 = v18;
    a1 = v3;
    LOBYTE(v3) = v29;
    MEMORY[0x21CF05C50](v19, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v20 = swift_projectBox();
  (*(v6 + 16))(v9, v20, v5);
  v21 = (v6 + 8);
  if (v3)
  {
    sub_21BE2862C();
    (*v21)(v9, v5);
    v22 = v31;
    swift_getKeyPath();
    v31 = v22;
    sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
    sub_21BE25F1C();

    v23 = *(v22 + 48);
    sub_21BB3D80C(v23);

    if (!v23)
    {
      return result;
    }

    v25 = 0;
    v26 = a1;
  }

  else
  {
    sub_21BE2862C();
    (*v21)(v9, v5);
    v27 = v31;
    swift_getKeyPath();
    v31 = v27;
    sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
    sub_21BE25F1C();

    v23 = *(v27 + 48);
    sub_21BB3D80C(v23);

    if (!v23)
    {
      return result;
    }

    v25 = a1;
    v26 = 0;
  }

  v23(v25, v26);
  return sub_21BB5AEC4(v23);
}

uint64_t sub_21BCA7418(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for FAAMSWebView(0);
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D88, &qword_21BE3E0E0);
  v2[14] = v8;
  v9 = *(v8 - 8);
  v2[15] = v9;
  v10 = *(v9 + 64) + 15;
  v2[16] = swift_task_alloc();
  sub_21BE28D7C();
  v2[17] = sub_21BE28D6C();
  v12 = sub_21BE28D0C();
  v2[18] = v12;
  v2[19] = v11;

  return MEMORY[0x2822009F8](sub_21BCA75A4, v12, v11);
}

uint64_t sub_21BCA75A4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  v7 = swift_projectBox();
  (*(v2 + 16))(v1, v7, v3);
  sub_21BE2862C();
  (*(v2 + 8))(v1, v3);
  v8 = v0[5];
  v0[20] = sub_21BCA8558();

  v9 = *(v5 + 20);
  v10 = *(MEMORY[0x277CEE828] + 4);
  v13 = (*MEMORY[0x277CEE828] + MEMORY[0x277CEE828]);
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_21BCA76D4;

  return v13(v4 + v9);
}

uint64_t sub_21BCA76D4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_21BCA7870;
  }

  else
  {
    v7 = v2[20];

    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_21BCA77F0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BCA77F0()
{
  v1 = v0[17];

  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BCA7870()
{
  v40 = v0;
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[8];

  sub_21BE260FC();
  sub_21BCA8EA8(v6, v5);
  v7 = v1;
  v8 = sub_21BE26A2C();
  v9 = sub_21BE28FDC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[22];
    v11 = v0[12];
    v12 = v0[10];
    v37 = v0[11];
    v38 = v0[13];
    v13 = v0[9];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v15;
    *v14 = 136315394;
    v16 = v12 + *(v13 + 20);
    v17 = sub_21BE25AFC();
    v19 = v18;
    sub_21BCA9048(v12);
    v20 = sub_21BB3D81C(v17, v19, &v39);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v22 = v0[2];
    v21 = v0[3];
    v23 = v0[4];
    v24 = sub_21BE29A5C();
    v26 = sub_21BB3D81C(v24, v25, &v39);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_21BB35000, v8, v9, "Error loading url %s: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v15, -1, -1);
    MEMORY[0x21CF05C50](v14, -1, -1);

    (*(v11 + 8))(v38, v37);
  }

  else
  {
    v27 = v0[22];
    v29 = v0[12];
    v28 = v0[13];
    v31 = v0[10];
    v30 = v0[11];

    sub_21BCA9048(v31);
    (*(v29 + 8))(v28, v30);
  }

  v32 = v0[16];
  v33 = v0[13];
  v34 = v0[10];

  v35 = v0[1];

  return v35();
}

void *sub_21BCA7AF0()
{
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
  sub_21BE25F1C();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_21BCA7B98(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
    sub_21BE25F0C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21BB3A2A4(0, &qword_27CDB8D68, 0x277CEE3E0);
  v5 = v4;
  v6 = a1;
  v7 = sub_21BE2940C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

uint64_t sub_21BCA7D28()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
  sub_21BE25F1C();

  v2 = *(v0 + 24);
  v1 = *(v4 + 32);
  sub_21BB3D80C(v2);
  return v2;
}

uint64_t sub_21BCA7DDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
  sub_21BE25F1C();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21BCA91E0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21BB3D80C(v4);
}

uint64_t sub_21BCA7EC8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21BCA9214;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21BB3D80C(v3);
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
  sub_21BE25F0C();
  sub_21BB5AEC4(v6);
}

void *sub_21BCA8024()
{
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
  sub_21BE25F1C();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_21BCA80CC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
    sub_21BE25F0C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21BB3A2A4(0, &qword_27CDB8D60, 0x277CEE488);
  v5 = v4;
  v6 = a1;
  v7 = sub_21BE2940C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

uint64_t sub_21BCA825C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
  sub_21BE25F1C();

  v2 = *(v0 + 48);
  v1 = *(v4 + 56);
  sub_21BB3D80C(v2);
  return v2;
}

uint64_t sub_21BCA8310@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
  sub_21BE25F1C();

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21BCA8BB0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21BB3D80C(v4);
}

uint64_t sub_21BCA83FC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21BCA8BAC;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21BB3D80C(v3);
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
  sub_21BE25F0C();
  sub_21BB5AEC4(v6);
}

id sub_21BCA8558()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_21BCA85B8(v0);
    v2 = *(v0 + 72);
    *(v0 + 72) = v1;
  }

  return v1;
}

id sub_21BCA85B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D50, &qword_21BE3DFD8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_21BE2697C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_retain_n();
  sub_21BE2696C();
  v11 = *(a1 + 64);
  v12 = objc_opt_self();
  v13 = v11;
  result = [v12 defaultStore];
  if (result)
  {
    v15 = result;
    v16 = [result aa_primaryAppleAccount];

    (*(v7 + 16))(v5, v10, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v17 = sub_21BE269BC();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_21BE269AC();
    (*(v7 + 8))(v10, v6);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BCA8814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *))
{
  swift_getKeyPath();
  sub_21BCA8E60(&qword_27CDB8D58, type metadata accessor for FAAMSWebViewModel);
  sub_21BE25F0C();

  v9 = a1;
  return a7(a1);
}

uint64_t sub_21BCA8904()
{
  v1 = *(v0 + 32);
  sub_21BB5AEC4(*(v0 + 24));

  v2 = *(v0 + 56);
  sub_21BB5AEC4(*(v0 + 48));

  v3 = *(v0 + 72);

  v4 = OBJC_IVAR____TtC14FamilyCircleUIP33_8CDB69FC747B401FE9C44263105E581E17FAAMSWebViewModel___observationRegistrar;
  v5 = sub_21BE25F5C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BCA89F8()
{
  result = sub_21BE25F5C();
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

uint64_t sub_21BCA8B60()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  sub_21BB3D80C(v1);
  return sub_21BB5AEC4(v4);
}

uint64_t sub_21BCA8BB0(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_21BCA8BF8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  sub_21BB3D80C(v1);
  return sub_21BB5AEC4(v4);
}

uint64_t sub_21BCA8C44(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

void sub_21BCA8C80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

void sub_21BCA8CB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_21BCA8D38()
{
  sub_21BB3A2A4(319, &qword_280BD6900, 0x277CEE3F8);
  if (v0 <= 0x3F)
  {
    sub_21BE25B9C();
    if (v1 <= 0x3F)
    {
      sub_21BCA8DE4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BCA8DE4()
{
  if (!qword_27CDB8D80)
  {
    type metadata accessor for FAAMSWebViewModel(255);
    v0 = sub_21BE2842C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB8D80);
    }
  }
}

uint64_t sub_21BCA8E60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BCA8EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FAAMSWebView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCA8F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FAAMSWebView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCA8F70()
{
  v2 = *(type metadata accessor for FAAMSWebView(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BCA7418(v4, v0 + v3);
}

uint64_t sub_21BCA9048(uint64_t a1)
{
  v2 = type metadata accessor for FAAMSWebView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21BCA90BC()
{
  result = qword_27CDB8DB8;
  if (!qword_27CDB8DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8DB0, &qword_21BE3E110);
    sub_21BCA9178();
    sub_21BCA8E60(&qword_27CDB5058, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8DB8);
  }

  return result;
}

unint64_t sub_21BCA9178()
{
  result = qword_27CDB8DC0;
  if (!qword_27CDB8DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8DC8, &qword_21BE3E118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8DC0);
  }

  return result;
}

uint64_t sub_21BCA9218()
{
  v1 = v0 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_21BCA9268(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21BCA92D4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21BCA9374;
}

void sub_21BCA9374(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *ScreenTimePasscodeController.__allocating_init(passcodeControllerType:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_screentimePasscodeListener;
  *&v5[v6] = [objc_allocWithZone(type metadata accessor for ScreentimePasscodeListener()) init];
  v5[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_isListening] = 0;
  v7 = &v5[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_passcodeControllerType];
  *v7 = a1;
  v7[1] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_screentimePasscodeListener] + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate;
  swift_beginAccess();
  *(v9 + 8) = &protocol witness table for ScreenTimePasscodeController;
  swift_unknownObjectWeakAssign();
  return v8;
}