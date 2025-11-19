uint64_t sub_24AD0CA68()
{
  v1 = *(v0 + 341);
  v2 = *(v0 + 216);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  v21 = *(v0 + 56);
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_stateContinuations) = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_inFlightChangeSets) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated) = 0;
  *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_initialFetchFailed) = 0;
  *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state) = 0;
  v9 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerURL;
  *(v0 + 224) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerURL;
  v10 = *(v4 + 16);
  *(v0 + 232) = v10;
  *(v0 + 240) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v2 + v9, v8, v3);
  v11 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier;
  *(v0 + 248) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier;
  v12 = (v2 + v11);
  *v12 = v7;
  v12[1] = v6;
  *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerEnvironment) = v5;
  v13 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore;
  *(v0 + 256) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore;
  *(v2 + v13) = v21;
  *(v0 + 340) = v1;
  type metadata accessor for CloudKitCoordinator();
  swift_allocObject();

  swift_unknownObjectRetain();
  v14 = swift_task_alloc();
  *(v0 + 264) = v14;
  *v14 = v0;
  v14[1] = sub_24AD0CC40;
  v15 = *(v0 + 80);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);

  return CloudKitCoordinator.init(containerIdentifier:bundleIdentifier:containerEnvironment:mode:)(v19, v18, v16, v17, v15, (v0 + 340));
}

uint64_t sub_24AD0CC40(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_24AD0CD40, 0, 0);
}

uint64_t sub_24AD0CD40()
{
  v1 = v0[34];
  v2 = v0[27];
  v3 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator;
  v0[35] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator;
  *(v2 + v3) = v1;

  return MEMORY[0x2822009F8](sub_24AD0CDC4, v1, 0);
}

uint64_t sub_24AD0CDC4()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 208);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);
  swift_allocObject();
  swift_weakInit();
  *(v0 + 336) = *MEMORY[0x277D85778];
  (*(v4 + 104))(v3);
  sub_24AD5E9C4();

  return MEMORY[0x2822009F8](sub_24AD0CED0, 0, 0);
}

uint64_t sub_24AD0CED0()
{
  v1 = v0[35];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v6 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitAccountStateStream;
  v0[36] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitAccountStateStream;
  (*(v5 + 32))(v3 + v6, v2, v4);
  v7 = *(v3 + v1);
  v0[37] = v7;

  return MEMORY[0x2822009F8](sub_24AD0CF70, v7, 0);
}

uint64_t sub_24AD0CF70()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 336);
  v3 = *(v0 + 160);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  swift_allocObject();
  swift_weakInit();
  (*(v5 + 104))(v4, v2, v6);
  sub_24AD5E9C4();

  return MEMORY[0x2822009F8](sub_24AD0D07C, 0, 0);
}

uint64_t sub_24AD0D07C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = v0[14];
  v8 = v0[12];
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[2];
  v12 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitPushStream;
  v0[38] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitPushStream;
  (*(v5 + 32))(v3 + v12, v4, v6);
  v2(v7, v11, v8);
  ObjectType = swift_getObjectType();
  v14 = (*(v9 + 16))(ObjectType, v9);
  v16 = v15;
  v17 = type metadata accessor for CloudKitCacheDatabase();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = swift_task_alloc();
  v0[39] = v20;
  *v20 = v0;
  v20[1] = sub_24AD0D1CC;
  v21 = v0[14];

  return sub_24ACF41A8(v21, v14, v16, 0);
}

uint64_t sub_24AD0D1CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v7 = *(v4 + 72);

    v8 = sub_24AD0D478;
  }

  else
  {
    *(v4 + 328) = a1;
    v8 = sub_24AD0D2FC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24AD0D2FC()
{
  v1 = v0[27];
  v2 = v0[9];
  *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache) = v0[41];
  v3 = sub_24AD348CC(v2);

  *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases) = v3;

  return MEMORY[0x2822009F8](sub_24AD0D39C, v1, 0);
}

uint64_t sub_24AD0D39C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[7];
  v9 = v0[2];
  swift_unknownObjectRelease();
  (*(v6 + 8))(v9, v7);

  v10 = v0[1];
  v11 = v0[27];

  return v10(v11);
}

uint64_t sub_24AD0D478()
{
  v1 = v0[35];
  v21 = v0[36];
  v22 = v0[38];
  v23 = v0[32];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[24];
  v26 = v0[26];
  v27 = v0[23];
  v5 = v0[19];
  v20 = v0[18];
  v28 = v0[20];
  v29 = v0[17];
  v30 = v0[14];
  v6 = v0[12];
  v24 = v0[7];
  v7 = v0[2];
  v25 = v7;
  v8 = v2 + v0[31];
  v9 = *(v0[13] + 8);
  v9(v2 + v0[28], v6);
  v10 = *(v8 + 8);

  v11 = *(v2 + v1);

  (*(v3 + 8))(v2 + v21, v4);
  (*(v5 + 8))(v2 + v22, v20);
  v12 = *(v2 + v23);
  swift_unknownObjectRelease();
  v13 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_stateContinuations);

  v14 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_inFlightChangeSets);

  swift_defaultActor_destroy();
  swift_unknownObjectRelease();
  v9(v25, v6);
  v15 = *(*v2 + 48);
  v16 = *(*v2 + 52);
  swift_deallocPartialClassInstance();

  v17 = v0[1];
  v18 = v0[40];

  return v17();
}

uint64_t CloudKitStorage.init(containerURL:containerIdentifier:bundleIdentifier:dataStore:databases:containerEnvironment:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 80) = v27;
  *(v9 + 88) = v8;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_24AD5E364();
  *(v9 + 96) = v10;
  v11 = *(v10 - 8);
  *(v9 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 112) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6088, qword_24AD60C40);
  *(v9 + 120) = v13;
  v14 = *(v13 - 8);
  *(v9 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 136) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6090, &qword_24AD60358);
  *(v9 + 144) = v16;
  v17 = *(v16 - 8);
  *(v9 + 152) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 160) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6098, &qword_24AD60360);
  *(v9 + 168) = v19;
  v20 = *(v19 - 8);
  *(v9 + 176) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 184) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A0, &qword_24AD60368);
  *(v9 + 192) = v22;
  v23 = *(v22 - 8);
  *(v9 + 200) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 333) = *v28;

  return MEMORY[0x2822009F8](sub_24AD0D8DC, 0, 0);
}

uint64_t sub_24AD0D8DC()
{
  v1 = *(v0 + 333);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  v21 = *(v0 + 56);
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_stateContinuations) = MEMORY[0x277D84F98];
  *(v4 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_inFlightChangeSets) = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated) = 0;
  *(v4 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_initialFetchFailed) = 0;
  *(v4 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state) = 0;
  v9 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerURL;
  *(v0 + 216) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerURL;
  v10 = *(v3 + 16);
  *(v0 + 224) = v10;
  *(v0 + 232) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v4 + v9, v8, v2);
  v11 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier;
  *(v0 + 240) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier;
  v12 = (v4 + v11);
  *v12 = v7;
  v12[1] = v6;
  *(v4 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerEnvironment) = v5;
  v13 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore;
  *(v0 + 248) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore;
  *(v4 + v13) = v21;
  *(v0 + 332) = v1;
  type metadata accessor for CloudKitCoordinator();
  swift_allocObject();

  swift_unknownObjectRetain();
  v14 = swift_task_alloc();
  *(v0 + 256) = v14;
  *v14 = v0;
  v14[1] = sub_24AD0DAB0;
  v15 = *(v0 + 80);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);

  return CloudKitCoordinator.init(containerIdentifier:bundleIdentifier:containerEnvironment:mode:)(v19, v18, v16, v17, v15, (v0 + 332));
}

uint64_t sub_24AD0DAB0(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = a1;

  return MEMORY[0x2822009F8](sub_24AD0DBB0, 0, 0);
}

uint64_t sub_24AD0DBB0()
{
  v1 = v0[33];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator;
  v0[34] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator;
  *(v2 + v3) = v1;

  return MEMORY[0x2822009F8](sub_24AD0DC34, v1, 0);
}

uint64_t sub_24AD0DC34()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 208);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);
  swift_allocObject();
  swift_weakInit();
  *(v0 + 328) = *MEMORY[0x277D85778];
  (*(v4 + 104))(v3);
  sub_24AD5E9C4();

  return MEMORY[0x2822009F8](sub_24AD0DD40, 0, 0);
}

uint64_t sub_24AD0DD40()
{
  v1 = v0[34];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[11];
  v6 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitAccountStateStream;
  v0[35] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitAccountStateStream;
  (*(v3 + 32))(v5 + v6, v2, v4);
  v7 = *(v5 + v1);
  v0[36] = v7;

  return MEMORY[0x2822009F8](sub_24AD0DDE4, v7, 0);
}

uint64_t sub_24AD0DDE4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 328);
  v3 = *(v0 + 160);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  swift_allocObject();
  swift_weakInit();
  (*(v5 + 104))(v4, v2, v6);
  sub_24AD5E9C4();

  return MEMORY[0x2822009F8](sub_24AD0DEF0, 0, 0);
}

uint64_t sub_24AD0DEF0()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[2];
  v12 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitPushStream;
  v0[37] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitPushStream;
  (*(v4 + 32))(v7 + v12, v3, v5);
  v2(v6, v11, v8);
  ObjectType = swift_getObjectType();
  v14 = (*(v9 + 16))(ObjectType, v9);
  v16 = v15;
  v17 = type metadata accessor for CloudKitCacheDatabase();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = swift_task_alloc();
  v0[38] = v20;
  *v20 = v0;
  v20[1] = sub_24AD0E03C;
  v21 = v0[14];

  return sub_24ACF41A8(v21, v14, v16, 0);
}

uint64_t sub_24AD0E03C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v7 = *(v4 + 72);

    v8 = sub_24AD0E2E8;
  }

  else
  {
    *(v4 + 320) = a1;
    v8 = sub_24AD0E16C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24AD0E16C()
{
  v1 = v0[11];
  v2 = v0[9];
  *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache) = v0[40];
  v3 = sub_24AD348CC(v2);

  *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases) = v3;

  return MEMORY[0x2822009F8](sub_24AD0E20C, v1, 0);
}

uint64_t sub_24AD0E20C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[7];
  v9 = v0[2];
  swift_unknownObjectRelease();
  (*(v6 + 8))(v9, v7);

  v10 = v0[1];
  v11 = v0[11];

  return v10(v11);
}

uint64_t sub_24AD0E2E8()
{
  v1 = v0[34];
  v21 = v0[35];
  v22 = v0[37];
  v23 = v0[31];
  v2 = v0[24];
  v3 = v0[25];
  v27 = v0[26];
  v28 = v0[23];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v29 = v0[17];
  v30 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v24 = v7;
  v25 = v0[7];
  v26 = v0[2];
  v9 = v8 + v0[30];
  v10 = *(v0[13] + 8);
  v10(v8 + v0[27]);
  v11 = *(v9 + 8);

  v12 = *(v8 + v1);

  (*(v3 + 8))(v8 + v21, v2);
  (*(v5 + 8))(v8 + v22, v6);
  v13 = *(v8 + v23);
  swift_unknownObjectRelease();
  v14 = *(v8 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_stateContinuations);

  v15 = *(v8 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_inFlightChangeSets);

  type metadata accessor for CloudKitStorage();
  swift_defaultActor_destroy();
  swift_unknownObjectRelease();
  (v10)(v26, v24);
  v16 = *(*v8 + 48);
  v17 = *(*v8 + 52);
  swift_deallocPartialClassInstance();

  v18 = v0[1];
  v19 = v0[39];

  return v18();
}

uint64_t sub_24AD0E4CC()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD0E568, v0, 0);
}

uint64_t sub_24AD0E568()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_24AD5E964();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_24AD34F14(&qword_281064D10, type metadata accessor for CloudKitStorage);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  sub_24AD0E738(0, 0, v2, &unk_24AD60390, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AD0E6A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C360;

  return sub_24AD0E9E4();
}

uint64_t sub_24AD0E738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_24AD38B48(a3, v24 - v10, &qword_27EFA60A8, &qword_24AD60380);
  v12 = sub_24AD5E964();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AD06518(v11, &qword_27EFA60A8, &qword_24AD60380);
  }

  else
  {
    sub_24AD5E954();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24AD5E924();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24AD5E864() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_24AD06518(a3, &qword_27EFA60A8, &qword_24AD60380);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AD06518(a3, &qword_27EFA60A8, &qword_24AD60380);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24AD0E9E4()
{
  v1[283] = v0;
  v2 = sub_24AD5E624();
  v1[284] = v2;
  v3 = *(v2 - 8);
  v1[285] = v3;
  v4 = *(v3 + 64) + 15;
  v1[286] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B0, &qword_24AD603A0) - 8) + 64) + 15;
  v1[287] = swift_task_alloc();
  v6 = sub_24AD5E404();
  v1[288] = v6;
  v7 = *(v6 - 8);
  v1[289] = v7;
  v8 = *(v7 + 64) + 15;
  v1[290] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B8, &qword_24AD603A8);
  v1[291] = v9;
  v10 = *(v9 - 8);
  v1[292] = v10;
  v11 = *(v10 + 64) + 15;
  v1[293] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD0EBA0, v0, 0);
}

uint64_t sub_24AD0EBA0()
{
  v46 = v0;
  if (qword_281064D70 != -1)
  {
LABEL_29:
    swift_once();
  }

  v1 = *(v0 + 2344);
  v2 = *(v0 + 2336);
  v3 = *(v0 + 2328);
  v4 = __swift_project_value_buffer(v3, qword_281064D78);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  sub_24AD5E124();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 2168);
  if (!v5)
  {
    goto LABEL_21;
  }

  v43 = *(v5 + 16);
  if (!v43)
  {

LABEL_21:
    v32 = *(v0 + 2264);
    v33 = swift_task_alloc();
    *(v0 + 2384) = v33;
    *(v33 + 16) = &unk_24AD603B8;
    *(v33 + 24) = v32;

    swift_asyncLet_begin();
    v34 = swift_task_alloc();
    *(v0 + 2392) = v34;
    *(v34 + 16) = &unk_24AD603D8;
    *(v34 + 24) = v32;

    swift_asyncLet_begin();
    v35 = swift_task_alloc();
    *(v0 + 2400) = v35;
    *(v35 + 16) = &unk_24AD603F0;
    *(v35 + 24) = v32;

    swift_asyncLet_begin();

    return MEMORY[0x282200928](v0 + 16, v36, sub_24AD0F5D0, v0 + 1936);
  }

  if (qword_27EFA5E60 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 2328);
  v7 = *(v0 + 2312);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C0, &qword_24AD60400);
  __swift_project_value_buffer(v8, qword_27EFA6070);
  *(v0 + 2408) = 1;
  swift_beginAccess();
  sub_24AD5E134();
  swift_endAccess();
  *(v0 + 2216) = 0;
  swift_beginAccess();
  sub_24AD5E134();
  swift_endAccess();
  v9 = 0;
  v10 = (v7 + 48);
  v41 = v7;
  v42 = (v7 + 32);
  v11 = (v5 + 40);
  v12 = MEMORY[0x277D84F90];
  do
  {
    if (v9 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v13 = *(v0 + 2304);
    v14 = *(v0 + 2296);
    v15 = *(v11 - 1);
    v16 = *v11;

    sub_24AD5E3D4();

    if ((*v10)(v14, 1, v13) == 1)
    {
      sub_24AD06518(*(v0 + 2296), &qword_27EFA60B0, &qword_24AD603A0);
    }

    else
    {
      v17 = *v42;
      (*v42)(*(v0 + 2320), *(v0 + 2296), *(v0 + 2304));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_24AD2E948(0, *(v12 + 2) + 1, 1, v12, &qword_27EFA6210, &qword_24AD60928, MEMORY[0x277CC95F0]);
      }

      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      if (v19 >= v18 >> 1)
      {
        v12 = sub_24AD2E948(v18 > 1, v19 + 1, 1, v12, &qword_27EFA6210, &qword_24AD60928, MEMORY[0x277CC95F0]);
      }

      v20 = *(v0 + 2320);
      v21 = *(v0 + 2304);
      *(v12 + 2) = v19 + 1;
      v17(&v12[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v19], v20, v21);
    }

    ++v9;
    v11 += 2;
  }

  while (v43 != v9);

  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v22 = sub_24AD5E7A4();
  __swift_project_value_buffer(v22, qword_281065448);

  v23 = sub_24AD5E784();
  v24 = sub_24AD5EB44();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 2304);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v45 = v27;
    *v26 = 136446210;
    v28 = MEMORY[0x24C22E5C0](v12, v25);
    v30 = v29;

    v31 = sub_24AD2EDAC(v28, v30, &v45);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_24ACF2000, v23, v24, "Previous launch crashed with outstanding changeSets: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x24C22F400](v27, -1, -1);
    MEMORY[0x24C22F400](v26, -1, -1);
  }

  else
  {
  }

  *(v0 + 2352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 2409) = 5;
  *(v0 + 2360) = sub_24AD5E604();
  v37 = *(MEMORY[0x277D08A88] + 4);
  v44 = (*MEMORY[0x277D08A88] + MEMORY[0x277D08A88]);
  v38 = swift_task_alloc();
  *(v0 + 2368) = v38;
  *v38 = v0;
  v38[1] = sub_24AD0F278;
  v39 = *(v0 + 2264);

  return v44(&unk_24AD60410, v39);
}

uint64_t sub_24AD0F278()
{
  v2 = *v1;
  v3 = *(*v1 + 2368);
  v13 = *v1;
  *(*v1 + 2376) = v0;

  if (v0)
  {
    v4 = v2[283];
    v5 = sub_24AD0F92C;
    v6 = 0;
  }

  else
  {
    v7 = v2[295];
    v8 = v2[294];
    sub_24AD34D38();
    v9 = sub_24AD5E924();
    v11 = v10;
    v5 = sub_24AD0F3B8;
    v4 = v9;
    v6 = v11;
  }

  return MEMORY[0x2822009F8](v5, v4, v6);
}

uint64_t sub_24AD0F3B8()
{
  v1 = v0[295];
  v2 = v0[286];
  v3 = v0[283];
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD0F428, v3, 0);
}

uint64_t sub_24AD0F428()
{
  v1 = v0[295];
  v2 = v0[286];
  v3 = v0[285];
  v4 = v0[284];
  sub_24AD5E634();

  (*(v3 + 8))(v2, v4);
  v5 = v0[283];
  v6 = swift_task_alloc();
  v0[298] = v6;
  *(v6 + 16) = &unk_24AD603B8;
  *(v6 + 24) = v5;

  swift_asyncLet_begin();
  v7 = swift_task_alloc();
  v0[299] = v7;
  *(v7 + 16) = &unk_24AD603D8;
  *(v7 + 24) = v5;

  swift_asyncLet_begin();
  v8 = swift_task_alloc();
  v0[300] = v8;
  *(v8 + 16) = &unk_24AD603F0;
  *(v8 + 24) = v5;

  swift_asyncLet_begin();

  return MEMORY[0x282200928](v0 + 2, v9, sub_24AD0F5D0, v0 + 242);
}

uint64_t sub_24AD0F624()
{
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v1 = sub_24AD5E7A4();
  __swift_project_value_buffer(v1, qword_281065448);
  v2 = sub_24AD5E784();
  v3 = sub_24AD5EB44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24ACF2000, v2, v3, "CloudKitStorage.run() is not expected to terminate", v4, 2u);
    MEMORY[0x24C22F400](v4, -1, -1);
  }

  return MEMORY[0x282200920](v0 + 1296, v5, sub_24AD0F740, v0 + 2128);
}

uint64_t sub_24AD0F75C()
{
  v1 = *(v0 + 2400);
  v2 = *(v0 + 2264);

  return MEMORY[0x282200920](v0 + 656, v3, sub_24AD0F7D0, v0 + 2176);
}

uint64_t sub_24AD0F7EC()
{
  v1 = *(v0 + 2392);
  v2 = *(v0 + 2264);

  return MEMORY[0x282200920](v0 + 16, v3, sub_24AD0F860, v0 + 2224);
}

uint64_t sub_24AD0F87C()
{
  v1 = v0[298];
  v2 = v0[293];
  v3 = v0[290];
  v4 = v0[287];
  v5 = v0[286];
  v6 = v0[283];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AD0F92C()
{
  v1 = v0[295];
  v2 = v0[293];
  v3 = v0[290];
  v4 = v0[287];
  v5 = v0[286];

  v6 = v0[1];
  v7 = v0[297];

  return v6();
}

uint64_t sub_24AD0F9E8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6208, &qword_24AD60920);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24AD5F820;
  v6 = (v5 + v4);
  v7 = &v6[v2[14]];
  *v6 = 0;
  v9 = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier);
  v8 = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier + 8);
  v7[3] = MEMORY[0x277D837D0];
  v7[4] = sub_24AD388E4();
  *v7 = v9;
  v7[1] = v8;
  v10 = *MEMORY[0x277D08AB8];
  v11 = sub_24AD5E644();
  (*(*(v11 - 8) + 104))(v7, v10, v11);
  v12 = *MEMORY[0x277D08AC8];
  v13 = sub_24AD5E654();
  (*(*(v13 - 8) + 104))(v7, v12, v13);

  v14 = sub_24AD342C4(v5);
  swift_setDeallocating();
  sub_24AD06518(v6, &qword_27EFA6170, &qword_24AD61280);
  swift_deallocClassInstance();
  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_24AD0FC08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C360;

  return sub_24AD0FC98();
}

uint64_t sub_24AD0FC98()
{
  v1[7] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6248, &qword_24AD609C0);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD0FD64, v0, 0);
}

uint64_t sub_24AD0FD64()
{
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v1 = sub_24AD5E7A4();
  v0[11] = __swift_project_value_buffer(v1, qword_281065448);
  v2 = sub_24AD5E784();
  v3 = sub_24AD5EB64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24ACF2000, v2, v3, "Monitoring CloudKit AccountState stream", v4, 2u);
    MEMORY[0x24C22F400](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A0, &qword_24AD60368);
  sub_24AD5E994();
  v7 = sub_24AD34F14(&qword_281064D10, type metadata accessor for CloudKitStorage);
  v8 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  v0[12] = v7;
  v0[13] = v8;
  v9 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache;
  v0[14] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore;
  v0[15] = v9;
  swift_beginAccess();
  v10 = v0[12];
  v11 = v0[7];
  v12 = *(MEMORY[0x277D85798] + 4);
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_24AD0FF6C;
  v14 = v0[10];
  v15 = v0[8];

  return MEMORY[0x2822003E8](v0 + 27, v11, v10, v15);
}

uint64_t sub_24AD0FF6C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD1007C, v2, 0);
}

uint64_t sub_24AD1007C()
{
  v1 = *(v0 + 216);
  if (v1 == 5 || (sub_24AD5E9D4() & 1) != 0)
  {
    v2 = *(v0 + 88);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v3 = sub_24AD5E784();
    v4 = sub_24AD5EB44();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24ACF2000, v3, v4, "monitorCloudKitState is not expected to terminate", v5, 2u);
      MEMORY[0x24C22F400](v5, -1, -1);
    }

    v6 = *(v0 + 80);

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 88);
  v10 = sub_24AD5E784();
  v11 = sub_24AD5EB64();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *(v0 + 48) = v13;
    *v12 = 136446210;
    v14 = 0xE800000000000000;
    v15 = 0x6E776F6E6B6E752ELL;
    v16 = 0xEA0000000000746ELL;
    v17 = 0x756F6363416F6E2ELL;
    v18 = 0x800000024AD61CF0;
    v19 = 0xD000000000000013;
    if (v1 != 3)
    {
      v19 = 0xD000000000000011;
      v18 = 0x800000024AD61CD0;
    }

    if (v1 != 2)
    {
      v17 = v19;
      v16 = v18;
    }

    if (v1)
    {
      v15 = 0x636972747365722ELL;
      v14 = 0xEB00000000646574;
    }

    if (v1 <= 1)
    {
      v20 = v15;
    }

    else
    {
      v20 = v17;
    }

    if (v1 <= 1)
    {
      v21 = v14;
    }

    else
    {
      v21 = v16;
    }

    v22 = sub_24AD2EDAC(v20, v21, (v0 + 48));

    *(v12 + 4) = v22;
    _os_log_impl(&dword_24ACF2000, v10, v11, "cloudKitAccountStateStream event: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x24C22F400](v13, -1, -1);
    MEMORY[0x24C22F400](v12, -1, -1);
  }

  if (v1 <= 1)
  {
    if (v1)
    {
      *(v0 + 219) = 1;
      v29 = (v0 + 219);
      v30 = swift_task_alloc();
      *(v0 + 144) = v30;
      *v30 = v0;
      v31 = sub_24AD10808;
    }

    else
    {
      *(v0 + 220) = 0;
      v29 = (v0 + 220);
      v30 = swift_task_alloc();
      *(v0 + 136) = v30;
      *v30 = v0;
      v31 = sub_24AD10670;
    }

LABEL_39:
    v30[1] = v31;
    v41 = *(v0 + 56);

    return sub_24AD1B554(v29);
  }

  if (v1 == 2)
  {
    v32 = (*(v0 + 56) + *(v0 + 112));
    v34 = *v32;
    v33 = v32[1];
    ObjectType = swift_getObjectType();
    v36 = *(v33 + 56);
    v42 = (v36 + *v36);
    v37 = v36[1];
    v38 = swift_task_alloc();
    *(v0 + 152) = v38;
    *v38 = v0;
    v38[1] = sub_24AD109A0;

    return v42(ObjectType, v33);
  }

  else
  {
    if (v1 == 3)
    {
      v23 = *(v0 + 56);
      if (*(v23 + *(v0 + 104)) == 5)
      {
        v24 = *(v0 + 96);
        v25 = *(MEMORY[0x277D85798] + 4);
        v26 = swift_task_alloc();
        *(v0 + 128) = v26;
        *v26 = v0;
        v26[1] = sub_24AD0FF6C;
        v27 = *(v0 + 80);
        v28 = *(v0 + 64);

        return MEMORY[0x2822003E8](v0 + 216, v23, v24, v28);
      }

      *(v0 + 217) = 1;
      v29 = (v0 + 217);
      v30 = swift_task_alloc();
      *(v0 + 192) = v30;
      *v30 = v0;
      v31 = sub_24AD11100;
      goto LABEL_39;
    }

    v39 = swift_task_alloc();
    *(v0 + 200) = v39;
    *v39 = v0;
    v39[1] = sub_24AD11298;
    v40 = *(v0 + 56);

    return sub_24AD24880();
  }
}

uint64_t sub_24AD10670()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *v0;

  v4 = v1[12];
  v5 = v1[7];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v1[16] = v7;
  *v7 = v3;
  v7[1] = sub_24AD0FF6C;
  v8 = v1[10];
  v9 = v1[8];

  return MEMORY[0x2822003E8](v1 + 27, v5, v4, v9);
}

uint64_t sub_24AD10808()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *v0;

  v4 = v1[12];
  v5 = v1[7];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v1[16] = v7;
  *v7 = v3;
  v7[1] = sub_24AD0FF6C;
  v8 = v1[10];
  v9 = v1[8];

  return MEMORY[0x2822003E8](v1 + 27, v5, v4, v9);
}

uint64_t sub_24AD109A0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_24AD10C30;
  }

  else
  {
    v6 = sub_24AD10ACC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD10ACC()
{
  v1 = *(v0[7] + v0[15]);
  v0[21] = v1;
  return MEMORY[0x2822009F8](sub_24AD10AF4, v1, 0);
}

uint64_t sub_24AD10AF4()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  sub_24AD5E6D4();
  *(v0 + 176) = v2;
  if (v2)
  {
    v3 = *(v0 + 56);

    return MEMORY[0x2822009F8](sub_24AD10DCC, v3, 0);
  }

  else
  {
    *(v0 + 218) = 2;
    v4 = swift_task_alloc();
    *(v0 + 184) = v4;
    *v4 = v0;
    v4[1] = sub_24AD10F68;
    v5 = *(v0 + 56);

    return sub_24AD1B554((v0 + 218));
  }
}

uint64_t sub_24AD10C30()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 88);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = sub_24AD5E324();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24ACF2000, v4, v5, "Error from purge: %@", v6, 0xCu);
    sub_24AD06518(v7, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v7, -1, -1);
    MEMORY[0x24C22F400](v6, -1, -1);
  }

  else
  {
  }

  *(v0 + 218) = 2;
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  *v9 = v0;
  v9[1] = sub_24AD10F68;
  v10 = *(v0 + 56);

  return sub_24AD1B554((v0 + 218));
}

uint64_t sub_24AD10DCC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 88);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = sub_24AD5E324();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24ACF2000, v4, v5, "Error from purge: %@", v6, 0xCu);
    sub_24AD06518(v7, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v7, -1, -1);
    MEMORY[0x24C22F400](v6, -1, -1);
  }

  else
  {
  }

  *(v0 + 218) = 2;
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  *v9 = v0;
  v9[1] = sub_24AD10F68;
  v10 = *(v0 + 56);

  return sub_24AD1B554((v0 + 218));
}

uint64_t sub_24AD10F68()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *v0;

  v4 = v1[12];
  v5 = v1[7];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v1[16] = v7;
  *v7 = v3;
  v7[1] = sub_24AD0FF6C;
  v8 = v1[10];
  v9 = v1[8];

  return MEMORY[0x2822003E8](v1 + 27, v5, v4, v9);
}

uint64_t sub_24AD11100()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *v0;

  v4 = v1[12];
  v5 = v1[7];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v1[16] = v7;
  *v7 = v3;
  v7[1] = sub_24AD0FF6C;
  v8 = v1[10];
  v9 = v1[8];

  return MEMORY[0x2822003E8](v1 + 27, v5, v4, v9);
}

uint64_t sub_24AD11298()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](sub_24AD11430, v4, 0);
  }

  else
  {
    v5 = v3[12];
    v6 = v3[7];
    v7 = *(MEMORY[0x277D85798] + 4);
    v8 = swift_task_alloc();
    v3[16] = v8;
    *v8 = v3;
    v8[1] = sub_24AD0FF6C;
    v9 = v3[10];
    v10 = v3[8];

    return MEMORY[0x2822003E8](v3 + 27, v6, v5, v10);
  }
}

uint64_t sub_24AD11430()
{
  v22 = v0;
  v1 = v0[26];
  v2 = v0[11];
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446210;
    v0[5] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    v10 = sub_24AD5E854();
    v12 = sub_24AD2EDAC(v10, v11, &v21);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_24ACF2000, v4, v5, "Error processing CK event: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  else
  {
    v13 = v0[26];
  }

  v14 = v0[12];
  v15 = v0[7];
  v16 = *(MEMORY[0x277D85798] + 4);
  v17 = swift_task_alloc();
  v0[16] = v17;
  *v17 = v0;
  v17[1] = sub_24AD0FF6C;
  v18 = v0[10];
  v19 = v0[8];

  return MEMORY[0x2822003E8](v0 + 27, v15, v14, v19);
}

uint64_t sub_24AD1161C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AD11704;

  return v6();
}

uint64_t sub_24AD11704()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AD117FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C594;

  return sub_24AD1188C();
}

uint64_t sub_24AD1188C()
{
  v1[18] = v0;
  v1[19] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6230, &qword_24AD60990);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD11980, v0, 0);
}

uint64_t sub_24AD11980()
{
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v1 = sub_24AD5E7A4();
  v0[23] = __swift_project_value_buffer(v1, qword_281065448);
  v2 = sub_24AD5E784();
  v3 = sub_24AD5EB64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24ACF2000, v2, v3, "Monitoring CloudKit AccountState stream", v4, 2u);
    MEMORY[0x24C22F400](v4, -1, -1);
  }

  v5 = v0[22];
  v6 = v0[18];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6090, &qword_24AD60358);
  sub_24AD5E994();
  v7 = sub_24AD34F14(&qword_281064D10, type metadata accessor for CloudKitStorage);
  v0[24] = v7;
  v8 = v0[18];
  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_24AD11B58;
  v11 = v0[22];
  v12 = v0[20];

  return MEMORY[0x2822003E8](v0 + 12, v8, v7, v12);
}

uint64_t sub_24AD11B58()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD11C68, v2, 0);
}

uint64_t sub_24AD11C68()
{
  v49 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v0[26] = v1;
  v0[27] = v2;
  if (v1 >> 2 == 0xFFFFFFFF)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
LABEL_5:
    v3 = v0[23];
    v4 = sub_24AD5E784();
    v5 = sub_24AD5EB44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24ACF2000, v4, v5, "monitorCloudKitPushEvents is not expected to terminate", v6, 2u);
      MEMORY[0x24C22F400](v6, -1, -1);
    }

    v7 = v0[22];

    v8 = v0[1];

    return v8();
  }

  if (sub_24AD5E9D4())
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
    sub_24AD38AAC(v1);
    goto LABEL_5;
  }

  v10 = v0[23];
  sub_24AD38AA0(v1, v2);
  v11 = sub_24AD5E784();
  v12 = sub_24AD5EB64();
  sub_24AD38AAC(v1);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v48 = v14;
    *v13 = 136315138;
    v0[14] = v1;
    v0[15] = v2;
    sub_24AD38AA0(v1, v2);
    v15 = sub_24AD5E854();
    v17 = sub_24AD2EDAC(v15, v16, &v48);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_24ACF2000, v11, v12, "cloudKitPushStream event: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x24C22F400](v14, -1, -1);
    MEMORY[0x24C22F400](v13, -1, -1);
  }

  v18 = v0[23];
  if ((v1 & 0x8000000000000000) != 0)
  {
    sub_24AD38AA0(v1, v2);
    v25 = sub_24AD5E784();
    v26 = sub_24AD5EB64();
    sub_24AD38AAC(v1);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v0[16] = v29;
      *v27 = 136315394;
      if (v1)
      {
        if (v1 == 1)
        {
          v30 = 0x646572616853;
        }

        else
        {
          v30 = 0x63696C627550;
        }

        v31 = 0xE600000000000000;
      }

      else
      {
        v30 = 0x65746176697250;
        v31 = 0xE700000000000000;
      }

      v41 = sub_24AD2EDAC(v30, v31, v0 + 16);

      *(v27 + 4) = v41;
      *(v27 + 12) = 2112;
      *(v27 + 14) = v2;
      *v28 = v2;
      sub_24AD38AA0(v1, v2);
      _os_log_impl(&dword_24ACF2000, v25, v26, "Recieved push event -- zone changed: database: %s; zone: %@", v27, 0x16u);
      sub_24AD06518(v28, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x24C22F400](v29, -1, -1);
      MEMORY[0x24C22F400](v27, -1, -1);
    }

    v43 = v0[18];
    v42 = v0[19];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6238, &qword_24AD60998);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24AD5F820;
    *(inited + 32) = v1;
    v45 = sub_24AD37828(inited);
    v0[32] = v45;
    swift_setDeallocating();
    v37 = swift_task_alloc();
    v0[33] = v37;
    v37[2] = v43;
    v37[3] = v45;
    v37[4] = v42;
    v46 = *(MEMORY[0x277D08918] + 4);
    v47 = swift_task_alloc();
    v0[34] = v47;
    *v47 = v0;
    v47[1] = sub_24AD126D4;
    v40 = &unk_24AD609A0;
  }

  else
  {
    v19 = sub_24AD5E784();
    v20 = sub_24AD5EB64();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v0[17] = v22;
      *v21 = 136315138;
      if (v1)
      {
        if (v1 == 1)
        {
          v23 = 0x646572616853;
        }

        else
        {
          v23 = 0x63696C627550;
        }

        v24 = 0xE600000000000000;
      }

      else
      {
        v23 = 0x65746176697250;
        v24 = 0xE700000000000000;
      }

      v32 = sub_24AD2EDAC(v23, v24, v0 + 17);

      *(v21 + 4) = v32;
      _os_log_impl(&dword_24ACF2000, v19, v20, "Recieved push event -- database changed: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x24C22F400](v22, -1, -1);
      MEMORY[0x24C22F400](v21, -1, -1);
    }

    v34 = v0[18];
    v33 = v0[19];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6238, &qword_24AD60998);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_24AD5F820;
    *(v35 + 32) = v1;
    v36 = sub_24AD37828(v35);
    v0[28] = v36;
    swift_setDeallocating();
    v37 = swift_task_alloc();
    v0[29] = v37;
    v37[2] = v34;
    v37[3] = v36;
    v37[4] = v33;
    v38 = *(MEMORY[0x277D08918] + 4);
    v39 = swift_task_alloc();
    v0[30] = v39;
    *v39 = v0;
    v39[1] = sub_24AD122F8;
    v40 = &unk_24AD609A8;
  }

  return MEMORY[0x28215EB00]("syncWithCloudKit", 16, 2, v40, v37);
}

uint64_t sub_24AD122F8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v10 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = sub_24AD124E8;
  }

  else
  {
    v6 = v2[28];
    v7 = v2[29];
    v8 = v2[18];

    v5 = sub_24AD12428;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD12428()
{
  v1 = v0[27];
  sub_24AD38AAC(v0[26]);
  v2 = v0[24];
  v3 = v0[18];
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_24AD11B58;
  v6 = v0[22];
  v7 = v0[20];

  return MEMORY[0x2822003E8](v0 + 12, v3, v2, v7);
}

uint64_t sub_24AD124E8()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[23];

  v5 = v1;
  v6 = sub_24AD5E784();
  v7 = sub_24AD5EB44();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[31];
  v11 = v0[26];
  v10 = v0[27];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_24ACF2000, v6, v7, "Error processing .databaseChanged: %{public}@", v12, 0xCu);
    sub_24AD06518(v13, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v13, -1, -1);
    MEMORY[0x24C22F400](v12, -1, -1);

    sub_24AD38AAC(v11);
  }

  else
  {

    sub_24AD38AAC(v11);
  }

  v16 = v0[24];
  v17 = v0[18];
  v18 = *(MEMORY[0x277D85798] + 4);
  v19 = swift_task_alloc();
  v0[25] = v19;
  *v19 = v0;
  v19[1] = sub_24AD11B58;
  v20 = v0[22];
  v21 = v0[20];

  return MEMORY[0x2822003E8](v0 + 12, v17, v16, v21);
}

uint64_t sub_24AD126D4()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v10 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = sub_24AD12804;
  }

  else
  {
    v6 = v2[32];
    v7 = v2[33];
    v8 = v2[18];

    v5 = sub_24AD38C0C;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD12804()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[23];

  v5 = v1;
  v6 = sub_24AD5E784();
  v7 = sub_24AD5EB44();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[35];
  v11 = v0[26];
  v10 = v0[27];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_24ACF2000, v6, v7, "Error processing .zoneChanged: %{public}@", v12, 0xCu);
    sub_24AD06518(v13, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v13, -1, -1);
    MEMORY[0x24C22F400](v12, -1, -1);

    sub_24AD38AAC(v11);
  }

  else
  {

    sub_24AD38AAC(v11);
  }

  v16 = v0[24];
  v17 = v0[18];
  v18 = *(MEMORY[0x277D85798] + 4);
  v19 = swift_task_alloc();
  v0[25] = v19;
  *v19 = v0;
  v19[1] = sub_24AD11B58;
  v20 = v0[22];
  v21 = v0[20];

  return MEMORY[0x2822003E8](v0 + 12, v17, v16, v21);
}

uint64_t sub_24AD129F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AD0C594;

  return sub_24AD12A80();
}

uint64_t sub_24AD12A80()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6218, &qword_24AD60938);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6220, &qword_24AD60940);
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD12BB4, v0, 0);
}

uint64_t sub_24AD12BB4()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated;
  v0[9] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated;
  if (*(v1 + v2))
  {
    v3 = v0[8];
    v4 = v0[5];

    v5 = v0[1];

    return v5();
  }

  else
  {
    if (qword_281064D90 != -1)
    {
      swift_once();
    }

    v7 = sub_24AD5E7A4();
    v0[10] = __swift_project_value_buffer(v7, qword_281065448);
    v8 = sub_24AD5E784();
    v9 = sub_24AD5EB64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ACF2000, v8, v9, "Monitoring APNS state stream", v10, 2u);
      MEMORY[0x24C22F400](v10, -1, -1);
    }

    v11 = v0[2];

    v12 = *(v11 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    v0[11] = v12;

    return MEMORY[0x2822009F8](sub_24AD12D44, v12, 0);
  }
}

uint64_t sub_24AD12D44()
{
  *(v0 + 96) = *(*(v0 + 88) + 120);
  sub_24AD5E774();
  sub_24AD34F14(&qword_281064A50, MEMORY[0x277D08F50]);
  v2 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD12E04, v2, v1);
}

uint64_t sub_24AD12E04()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = v0[2];
  sub_24AD5E744();

  return MEMORY[0x2822009F8](sub_24AD12E74, v3, 0);
}

uint64_t sub_24AD12E74()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_24AD5E994();
  (*(v3 + 8))(v2, v4);
  v5 = sub_24AD34F14(&qword_281064D10, type metadata accessor for CloudKitStorage);
  v0[13] = v5;
  v6 = v0[2];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_24AD12F90;
  v9 = v0[8];
  v10 = v0[6];

  return MEMORY[0x2822003E8](v0 + 17, v6, v5, v10);
}

uint64_t sub_24AD12F90()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD130A0, v2, 0);
}

uint64_t sub_24AD130A0()
{
  v1 = *(v0 + 136);
  if (v1 == 2 || (v2 = *(v0 + 16), (*(v2 + *(v0 + 72)) & 1) != 0))
  {
    v3 = *(v0 + 80);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    v4 = sub_24AD5E784();
    v5 = sub_24AD5EB64();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24ACF2000, v4, v5, "Done monitoring APNS state stream", v6, 2u);
      MEMORY[0x24C22F400](v6, -1, -1);
    }

    v7 = *(v0 + 64);
    v8 = *(v0 + 40);

    v9 = *(v0 + 8);

    return v9();
  }

  else if (v1)
  {
    v11 = *(v0 + 80);
    v12 = sub_24AD5E784();
    v13 = sub_24AD5EB64();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24ACF2000, v12, v13, "TRACE: APNS connected", v14, 2u);
      MEMORY[0x24C22F400](v14, -1, -1);
    }

    v15 = swift_task_alloc();
    *(v0 + 120) = v15;
    *v15 = v0;
    v15[1] = sub_24AD13324;
    v16 = *(v0 + 16);

    return sub_24AD24880();
  }

  else
  {
    v17 = *(v0 + 104);
    v18 = *(MEMORY[0x277D85798] + 4);
    v19 = swift_task_alloc();
    *(v0 + 112) = v19;
    *v19 = v0;
    v19[1] = sub_24AD12F90;
    v20 = *(v0 + 64);
    v21 = *(v0 + 48);

    return MEMORY[0x2822003E8](v0 + 136, v2, v17, v21);
  }
}

uint64_t sub_24AD13324()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_24AD1354C;
  }

  else
  {
    v6 = sub_24AD13450;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD13450()
{
  v1 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v2 = sub_24AD5E784();
  v3 = sub_24AD5EB64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24ACF2000, v2, v3, "Done monitoring APNS state stream", v4, 2u);
    MEMORY[0x24C22F400](v4, -1, -1);
  }

  v5 = v0[8];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24AD1354C()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24ACF2000, v4, v5, "Error creating zones from monitorAPNSState: %{public}@", v8, 0xCu);
    sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v9, -1, -1);
    MEMORY[0x24C22F400](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[13];
  v13 = v0[2];
  v14 = *(MEMORY[0x277D85798] + 4);
  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = sub_24AD12F90;
  v16 = v0[8];
  v17 = v0[6];

  return MEMORY[0x2822003E8](v0 + 17, v13, v12, v17);
}

uint64_t sub_24AD13704(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24AD0C594;

  return sub_24AD07718(a1, v3, a2, a3);
}

uint64_t sub_24AD137CC(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60D0, &qword_24AD60428) - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v6 = type metadata accessor for CloudKitChangeSet(0);
  *(v3 + 48) = v6;
  v7 = *(v6 - 8);
  *(v3 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 96) = *a2;

  return MEMORY[0x2822009F8](sub_24AD138F8, v2, 0);
}

uint64_t sub_24AD138F8()
{
  if (MEMORY[0x24C22DDC0]())
  {
    sub_24AD0AE88();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
    v2 = *(v0 + 64);
    v3 = *(v0 + 40);

    v4 = *(v0 + 8);
LABEL_5:

    return v4();
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  sub_24AD38B48(*(v0 + 16), v7, &qword_27EFA60D0, &qword_24AD60428);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_24AD06518(*(v0 + 40), &qword_27EFA60D0, &qword_24AD60428);
    v8 = *(v0 + 64);
    v9 = *(v0 + 40);

    v4 = *(v0 + 8);
    goto LABEL_5;
  }

  v11 = *(v0 + 96);
  v12 = *(v0 + 64);
  v13 = *(v0 + 32);
  v14 = *(v0 + 24);
  sub_24AD34D9C(*(v0 + 40), v12);
  v15 = swift_task_alloc();
  *(v0 + 72) = v15;
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  v16 = *(MEMORY[0x277D08918] + 4);
  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  *v17 = v0;
  v17[1] = sub_24AD13AFC;

  return MEMORY[0x28215EB00]("applyChangeSet", 14, 2, &unk_24AD60438, v15);
}

uint64_t sub_24AD13AFC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_24AD13C9C;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 24);

    v5 = sub_24AD13C24;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD13C24()
{
  sub_24AD34EB0(v0[8]);
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD13C9C()
{
  v2 = v0[8];
  v1 = v0[9];

  sub_24AD34EB0(v2);
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AD13D1C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 549) = a3;
  *(v3 + 192) = a1;
  *(v3 + 200) = a2;
  v4 = sub_24AD5F0D4();
  *(v3 + 208) = v4;
  v5 = *(v4 - 8);
  *(v3 + 216) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  v7 = sub_24AD5EE24();
  *(v3 + 232) = v7;
  v8 = *(v7 - 8);
  *(v3 + 240) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  v10 = type metadata accessor for CloudKitChangeSet(0);
  *(v3 + 328) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  v12 = sub_24AD5E234();
  *(v3 + 368) = v12;
  v13 = *(v12 - 8);
  *(v3 + 376) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 384) = swift_task_alloc();
  v15 = sub_24AD5EE44();
  *(v3 + 392) = v15;
  v16 = *(v15 - 8);
  *(v3 + 400) = v16;
  v17 = *(v16 + 64) + 15;
  *(v3 + 408) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD13FB4, 0, 0);
}

uint64_t sub_24AD13FB4()
{
  v35 = v0;
  v1 = *(v0 + 408);
  v2 = sub_24AD5EE34();
  if (MEMORY[0x24C22DDC0](v2))
  {
    v4 = *(v0 + 376);
    v3 = *(v0 + 384);
    v5 = *(v0 + 368);
    v6 = *(v0 + 328);
    v7 = *(v0 + 192);
    sub_24AD5E834();
    v8 = *(v6 + 20);
    v9 = sub_24AD5E404();
    *(v0 + 184) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 160));
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v7 + v8, v9);
    sub_24AD5E224();
    v11 = [objc_opt_self() defaultCenter];
    v12 = sub_24AD5E204();
    [v11 postNotification_];

    (*(v4 + 8))(v3, v5);
    if (qword_281064D90 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 360);
    v14 = *(v0 + 192);
    v15 = sub_24AD5E7A4();
    *(v0 + 416) = __swift_project_value_buffer(v15, qword_281065448);
    sub_24AD38880(v14, v13);
    v16 = sub_24AD5E784();
    v17 = sub_24AD5EB64();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 360);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34 = v21;
      *v20 = 136446210;
      v22 = CloudKitChangeSet.description.getter();
      v24 = v23;
      sub_24AD34EB0(v19);
      v25 = sub_24AD2EDAC(v22, v24, &v34);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_24ACF2000, v16, v17, "Begin applying %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x24C22F400](v21, -1, -1);
      MEMORY[0x24C22F400](v20, -1, -1);
    }

    else
    {

      sub_24AD34EB0(v19);
    }

    v27 = *(v0 + 408);
    v28 = *(v0 + 320);
    v29 = *(v0 + 549);
    v30 = *(v0 + 200);
    sub_24AD5EE14();
    *(v0 + 424) = *(v30 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    *(v0 + 548) = v29;
    v31 = swift_task_alloc();
    *(v0 + 432) = v31;
    *v31 = v0;
    v31[1] = sub_24AD145BC;
    v32 = *(v0 + 192);

    return sub_24AD48D60(v32, (v0 + 548));
  }

  else
  {
    v26 = *(v0 + 200);
    *(v0 + 536) = *(*(v0 + 328) + 20);

    return MEMORY[0x2822009F8](sub_24AD14328, v26, 0);
  }
}

uint64_t sub_24AD14328()
{
  v1 = *(v0 + 200);
  sub_24AD159C4(*(v0 + 192) + *(v0 + 536));

  return MEMORY[0x2822009F8](sub_24AD14398, 0, 0);
}

uint64_t sub_24AD14398()
{
  v22 = v0;
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 192);
  v3 = sub_24AD5E7A4();
  *(v0 + 416) = __swift_project_value_buffer(v3, qword_281065448);
  sub_24AD38880(v2, v1);
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB64();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 360);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    v10 = CloudKitChangeSet.description.getter();
    v12 = v11;
    sub_24AD34EB0(v7);
    v13 = sub_24AD2EDAC(v10, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24ACF2000, v4, v5, "Begin applying %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C22F400](v9, -1, -1);
    MEMORY[0x24C22F400](v8, -1, -1);
  }

  else
  {

    sub_24AD34EB0(v7);
  }

  v14 = *(v0 + 408);
  v15 = *(v0 + 320);
  v16 = *(v0 + 549);
  v17 = *(v0 + 200);
  sub_24AD5EE14();
  *(v0 + 424) = *(v17 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
  *(v0 + 548) = v16;
  v18 = swift_task_alloc();
  *(v0 + 432) = v18;
  *v18 = v0;
  v18[1] = sub_24AD145BC;
  v19 = *(v0 + 192);

  return sub_24AD48D60(v19, (v0 + 548));
}

uint64_t sub_24AD145BC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 432);
  v8 = *v3;
  v4[55] = a1;
  v4[56] = a2;
  v4[57] = v2;

  if (v2)
  {
    v6 = sub_24AD157D8;
  }

  else
  {
    v6 = sub_24AD146D4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24AD146D4()
{
  v17 = v0;
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 312);
  v6 = *(v0 + 549);
  v7 = *(v0 + 200);
  sub_24AD5EE14();
  v16 = v6;

  sub_24AD3B138(v2, v1, &v16, v14);

  v8 = v14[3];
  *(v0 + 48) = v14[2];
  *(v0 + 64) = v8;
  *(v0 + 80) = v15;
  v9 = v14[1];
  *(v0 + 16) = v14[0];
  *(v0 + 32) = v9;
  v10 = *(v7 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  v11 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v12 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v12;
  *(v0 + 464) = v10;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v11;

  return MEMORY[0x2822009F8](sub_24AD147E8, v10, 0);
}

uint64_t sub_24AD147E8()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 472) = v2;
  if (v2)
  {
    v3 = *(v0 + 440);
    v4 = *(v0 + 448);

    v5 = sub_24AD15864;
  }

  else
  {
    v5 = sub_24AD14884;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AD14884()
{
  v1 = (v0[25] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 32);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[60] = v7;
  *v7 = v0;
  v7[1] = sub_24AD149C0;
  v8 = v0[55];
  v9 = v0[56];
  v10 = v0[24];

  return v12(v10, v8, v9, ObjectType, v2);
}

uint64_t sub_24AD149C0()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(v2 + 488) = v0;

  v5 = *(v2 + 448);
  v6 = *(v2 + 440);
  if (v0)
  {

    v7 = sub_24AD15910;
    v8 = 0;
  }

  else
  {
    v9 = *(v2 + 328);
    v10 = *(v2 + 200);

    *(v2 + 540) = *(v9 + 20);
    v7 = sub_24AD14B38;
    v8 = v10;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_24AD14B38()
{
  v1 = *(v0 + 200);
  sub_24AD15BB0(*(v0 + 192) + *(v0 + 540));

  return MEMORY[0x2822009F8](sub_24AD14BA8, 0, 0);
}

uint64_t sub_24AD14BA8()
{
  v63 = v0;
  v1 = v0[52];
  v3 = v0[39];
  v2 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[29];
  v7 = v0[30];
  sub_24AD38880(v0[24], v0[44]);
  v8 = *(v7 + 16);
  v8(v4, v2, v6);
  v8(v5, v3, v6);
  v9 = sub_24AD5E784();
  v56 = sub_24AD5EB64();
  v10 = os_log_type_enabled(v9, v56);
  v11 = v0[50];
  v12 = v0[51];
  v13 = v0[49];
  v14 = v0[44];
  v15 = v0[40];
  v17 = v0[37];
  v16 = v0[38];
  v58 = v16;
  v60 = v0[39];
  v18 = v0[29];
  v19 = v0[30];
  if (v10)
  {
    v54 = v0[51];
    log = v9;
    v20 = v0[27];
    v21 = v0[28];
    v45 = v0[26];
    v52 = v0[40];
    v22 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v62 = v46;
    *v22 = 136446466;
    v48 = v11;
    v50 = v13;
    v23 = CloudKitChangeSet.description.getter();
    v25 = v24;
    sub_24AD34EB0(v14);
    v26 = sub_24AD2EDAC(v23, v25, &v62);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    sub_24AD5F0C4();
    sub_24AD34F14(&qword_27EFA61F0, MEMORY[0x277D85938]);
    v27 = sub_24AD5F0B4();
    v29 = v28;
    (*(v20 + 8))(v21, v45);
    v30 = *(v19 + 8);
    v30(v17, v18);
    v30(v58, v18);
    v31 = sub_24AD2EDAC(v27, v29, &v62);

    *(v22 + 14) = v31;
    _os_log_impl(&dword_24ACF2000, log, v56, "Done applying %{public}s duration: %s [Success]", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22F400](v46, -1, -1);
    MEMORY[0x24C22F400](v22, -1, -1);
    sub_24AD06458((v0 + 2));

    v30(v60, v18);
    v30(v52, v18);
    (*(v48 + 8))(v54, v50);
  }

  else
  {
    sub_24AD06458((v0 + 2));

    v32 = *(v19 + 8);
    v32(v17, v18);
    v32(v58, v18);
    sub_24AD34EB0(v14);
    v32(v60, v18);
    v32(v15, v18);
    (*(v11 + 8))(v12, v13);
  }

  v33 = v0[51];
  v34 = v0[48];
  v36 = v0[44];
  v35 = v0[45];
  v38 = v0[42];
  v37 = v0[43];
  v39 = v0[39];
  v40 = v0[40];
  v42 = v0[37];
  v41 = v0[38];
  v49 = v0[36];
  v51 = v0[35];
  v53 = v0[34];
  v55 = v0[33];
  v57 = v0[32];
  v59 = v0[31];
  v61 = v0[28];

  v43 = v0[1];

  return v43();
}

uint64_t sub_24AD14FF0()
{
  v1 = *(v0 + 200);
  sub_24AD15BB0(*(v0 + 192) + *(v0 + 544));

  return MEMORY[0x2822009F8](sub_24AD15060, 0, 0);
}

uint64_t sub_24AD15060()
{
  v43 = v0;
  v1 = v0[52];
  v2 = v0[40];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[29];
  v7 = v0[30];
  sub_24AD38880(v0[24], v0[43]);
  v8 = *(v7 + 16);
  v0[63] = v8;
  v0[64] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v2, v6);
  v8(v5, v3, v6);
  v9 = sub_24AD5E784();
  v10 = sub_24AD5EB44();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[43];
  v13 = v0[34];
  v14 = v0[35];
  v16 = v0[29];
  v15 = v0[30];
  if (v11)
  {
    v17 = v0[27];
    v18 = v0[28];
    v38 = v0[26];
    v40 = v10;
    v19 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42[0] = v41;
    *v19 = 136446466;
    v37 = v14;
    v20 = CloudKitChangeSet.description.getter();
    log = v9;
    v22 = v21;
    sub_24AD34EB0(v12);
    v23 = sub_24AD2EDAC(v20, v22, v42);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    sub_24AD5F0C4();
    sub_24AD34F14(&qword_27EFA61F0, MEMORY[0x277D85938]);
    v24 = sub_24AD5F0B4();
    v26 = v25;
    (*(v17 + 8))(v18, v38);
    v27 = *(v15 + 8);
    v28 = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v13, v16);
    v27(v37, v16);
    v29 = sub_24AD2EDAC(v24, v26, v42);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_24ACF2000, log, v40, "Done applying %{public}s duration: %s [Failure]", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22F400](v41, -1, -1);
    MEMORY[0x24C22F400](v19, -1, -1);
  }

  else
  {

    v27 = *(v15 + 8);
    v28 = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v13, v16);
    v27(v14, v16);
    sub_24AD34EB0(v12);
  }

  v0[65] = v27;
  v30 = v0[62];
  v31 = v0[51];
  v32 = v0[36];
  v33 = v0[33];
  v34 = v0[29];
  v35 = v0[25];
  swift_willThrow();
  v0[66] = v28;
  v27(v32, v34);
  sub_24AD5EE14();

  return MEMORY[0x2822009F8](sub_24AD153A0, v35, 0);
}

uint64_t sub_24AD153A0()
{
  v1 = *(v0 + 200);
  sub_24AD15BB0(*(v0 + 192) + *(v0 + 544));

  return MEMORY[0x2822009F8](sub_24AD15410, 0, 0);
}

uint64_t sub_24AD15410()
{
  v60 = v0;
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[52];
  v4 = v0[40];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v8 = v0[29];
  sub_24AD38880(v0[24], v0[42]);
  v2(v6, v4, v8);
  v2(v7, v5, v8);
  v9 = sub_24AD5E784();
  v10 = sub_24AD5EB44();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[66];
  v13 = v0[65];
  v14 = v0[42];
  v16 = v0[31];
  v15 = v0[32];
  v17 = v0[29];
  if (v11)
  {
    v47 = v0[28];
    v51 = v0[27];
    v53 = v0[26];
    v55 = v10;
    v18 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59[0] = v57;
    *v18 = 136446466;
    v19 = CloudKitChangeSet.description.getter();
    log = v9;
    v21 = v20;
    sub_24AD34EB0(v14);
    v22 = sub_24AD2EDAC(v19, v21, v59);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    sub_24AD5F0C4();
    sub_24AD34F14(&qword_27EFA61F0, MEMORY[0x277D85938]);
    v23 = sub_24AD5F0B4();
    v25 = v24;
    v13(v16, v17);
    v13(v15, v17);
    (*(v51 + 8))(v47, v53);
    v26 = sub_24AD2EDAC(v23, v25, v59);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_24ACF2000, log, v55, "Done applying %{public}s duration: %s [Tombstone failure]", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22F400](v57, -1, -1);
    MEMORY[0x24C22F400](v18, -1, -1);
  }

  else
  {

    v13(v16, v17);
    v13(v15, v17);
    sub_24AD34EB0(v14);
  }

  v27 = v0[66];
  v28 = v0[65];
  v29 = v0[62];
  v30 = v0[50];
  v31 = v0[51];
  v32 = v0[49];
  v39 = v0[48];
  v40 = v0[45];
  v41 = v0[44];
  v42 = v0[43];
  v33 = v0[40];
  v43 = v0[42];
  v44 = v0[39];
  v45 = v0[38];
  v46 = v0[37];
  v48 = v0[36];
  loga = v0[35];
  v34 = v0[33];
  v52 = v0[34];
  v54 = v0[32];
  v56 = v0[31];
  v35 = v0[29];
  v58 = v0[28];
  swift_willThrow();
  v28(v34, v35);
  v28(v33, v35);
  (*(v30 + 8))(v31, v32);

  v36 = v0[1];
  v37 = v0[62];

  return v36();
}

uint64_t sub_24AD157D8()
{
  *(v0 + 496) = *(v0 + 456);
  v1 = *(v0 + 408);
  v2 = *(v0 + 328);
  v3 = *(v0 + 288);
  v4 = *(v0 + 200);
  sub_24AD5EE14();
  *(v0 + 544) = *(v2 + 20);

  return MEMORY[0x2822009F8](sub_24AD14FF0, v4, 0);
}

uint64_t sub_24AD15864()
{
  (*(*(v0 + 240) + 8))(*(v0 + 312), *(v0 + 232));
  sub_24AD06458(v0 + 16);
  *(v0 + 496) = *(v0 + 472);
  v1 = *(v0 + 408);
  v2 = *(v0 + 328);
  v3 = *(v0 + 288);
  v4 = *(v0 + 200);
  sub_24AD5EE14();
  *(v0 + 544) = *(v2 + 20);

  return MEMORY[0x2822009F8](sub_24AD14FF0, v4, 0);
}

uint64_t sub_24AD15910()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  sub_24AD06458(v0 + 16);
  (*(v3 + 8))(v1, v2);
  *(v0 + 496) = *(v0 + 488);
  v4 = *(v0 + 408);
  v5 = *(v0 + 328);
  v6 = *(v0 + 288);
  v7 = *(v0 + 200);
  sub_24AD5EE14();
  *(v0 + 544) = *(v5 + 20);

  return MEMORY[0x2822009F8](sub_24AD14FF0, v7, 0);
}

uint64_t sub_24AD159C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24AD5E404();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  (*(v5 + 16))(v9, a1, v4);
  v12 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_inFlightChangeSets;
  swift_beginAccess();
  sub_24AD2F44C(v11, v9);
  (*(v5 + 8))(v11, v4);
  swift_endAccess();
  v13 = *(v2 + v12);

  v15 = sub_24AD18EAC(v14);

  if (qword_281064D70 != -1)
  {
    swift_once();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B8, &qword_24AD603A8);
  __swift_project_value_buffer(v16, qword_281064D78);
  v18[1] = v15;
  swift_beginAccess();
  sub_24AD5E134();
  return swift_endAccess();
}

uint64_t sub_24AD15BB0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B0, &qword_24AD603A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_inFlightChangeSets;
  swift_beginAccess();
  sub_24AD32B8C(a1, v6);
  sub_24AD06518(v6, &qword_27EFA60B0, &qword_24AD603A0);
  swift_endAccess();
  v8 = *(v1 + v7);

  v10 = sub_24AD18EAC(v9);

  if (*(v10 + 16))
  {
    if (qword_281064D70 != -1)
    {
      swift_once();
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B8, &qword_24AD603A8);
    __swift_project_value_buffer(v11, qword_281064D78);
    v15 = v10;
    swift_beginAccess();
  }

  else
  {

    if (qword_281064D70 != -1)
    {
      swift_once();
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60B8, &qword_24AD603A8);
    __swift_project_value_buffer(v12, qword_281064D78);
    v15 = 0;
    swift_beginAccess();
  }

  sub_24AD5E134();
  return swift_endAccess();
}

uint64_t sub_24AD15DB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60D8, &unk_24AD60440);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  swift_allocObject();
  swift_weakInit();
  (*(v1 + 104))(v4, *MEMORY[0x277D85778], v0);
  sub_24AD5E9C4();
}

uint64_t sub_24AD15EEC(uint64_t a1)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  v35 = *(v38 - 8);
  v1 = *(v35 + 64);
  MEMORY[0x28223BE20](v38);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v36 = v13;
    sub_24AD5E3F4();
    v30 = v3;
    v31 = *(v9 + 16);
    v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31(v27, v13, v8);
    v16 = *(v9 + 80);
    v34 = v9;
    v37 = v7;
    v32 = v16 | 7;
    v17 = swift_allocObject();
    v18 = v35;
    v28 = v8;
    v29 = v1;
    *(v17 + 16) = v15;
    v33 = *(v9 + 32);
    v19 = v27;
    v33(v17 + ((v16 + 24) & ~v16), v27, v8);

    v20 = v38;
    sub_24AD5E974();
    v21 = sub_24AD5E964();
    (*(*(v21 - 8) + 56))(v37, 1, 1, v21);
    v22 = v30;
    (*(v18 + 16))(v30, v39, v20);
    v23 = v28;
    v31(v19, v36, v28);
    v24 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v25 = (v29 + v16 + v24) & ~v16;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v15;
    (*(v18 + 32))(&v26[v24], v22, v38);
    v33(&v26[v25], v19, v23);

    sub_24AD39C64(0, 0, v37, &unk_24AD608F8, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_24AD162F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24AD5E404();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_24AD5E964();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_24AD39C64(0, 0, v11, &unk_24AD60908, v14);
}

uint64_t sub_24AD164D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24AD164F0, a4, 0);
}

uint64_t sub_24AD164F0()
{
  v1 = v0[2];
  sub_24AD16550(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AD16550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6058, &unk_24AD60260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_24AD5E404();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v31 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v13 = sub_24AD5E7A4();
  __swift_project_value_buffer(v13, qword_281065448);
  v30 = *(v7 + 16);
  v30(v12, a1, v6);
  v14 = sub_24AD5E784();
  v15 = sub_24AD5EB24();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v5;
    v17 = v16;
    v27 = swift_slowAlloc();
    v32 = v27;
    *v17 = 136446210;
    sub_24AD34F14(&qword_2810653E8, MEMORY[0x277CC95F0]);
    v18 = sub_24AD5EF74();
    v28 = a1;
    v20 = v19;
    (*(v7 + 8))(v12, v6);
    v21 = sub_24AD2EDAC(v18, v20, &v32);
    a1 = v28;

    *(v17 + 4) = v21;
    _os_log_impl(&dword_24ACF2000, v14, v15, "Removing stateContinuation for %{public}s", v17, 0xCu);
    v22 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x24C22F400](v22, -1, -1);
    v23 = v17;
    v5 = v29;
    MEMORY[0x24C22F400](v23, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  v24 = v31;
  v30(v31, a1, v6);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
  swift_beginAccess();
  sub_24AD06F68(v5, v24);
  return swift_endAccess();
}

uint64_t sub_24AD168EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61B8, &qword_24AD608B8);
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD169C0, a4, 0);
}

uint64_t sub_24AD169C0()
{
  v1 = *(v0 + 40);
  sub_24AD16B14(*(v0 + 48), *(v0 + 56));
  v2 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  swift_beginAccess();
  *(v0 + 89) = *(v1 + v2);

  return MEMORY[0x2822009F8](sub_24AD16A50, 0, 0);
}

uint64_t sub_24AD16A50()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  *(v0 + 88) = *(v0 + 89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  sub_24AD5E984();
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AD16B14(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6058, &unk_24AD60260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  v7 = sub_24AD5E404();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v34 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v14 = sub_24AD5E7A4();
  __swift_project_value_buffer(v14, qword_281065448);
  v33 = *(v8 + 16);
  v33(v13, a2, v7);
  v15 = sub_24AD5E784();
  v16 = sub_24AD5EB24();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v6;
    v18 = v17;
    v30 = swift_slowAlloc();
    v36 = v30;
    *v18 = 136446210;
    sub_24AD34F14(&qword_2810653E8, MEMORY[0x277CC95F0]);
    v19 = sub_24AD5EF74();
    v31 = a2;
    v21 = v20;
    (*(v8 + 8))(v13, v7);
    v22 = sub_24AD2EDAC(v19, v21, &v36);
    a2 = v31;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_24ACF2000, v15, v16, "Storing stateContinuation for %{public}s", v18, 0xCu);
    v23 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x24C22F400](v23, -1, -1);
    v24 = v18;
    v6 = v32;
    MEMORY[0x24C22F400](v24, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v25 = v34;
  v33(v34, a2, v7);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  v27 = *(v26 - 8);
  (*(v27 + 16))(v6, v35, v26);
  (*(v27 + 56))(v6, 0, 1, v26);
  swift_beginAccess();
  sub_24AD06F68(v6, v25);
  return swift_endAccess();
}

uint64_t sub_24AD16EE8(_BYTE *a1)
{
  *(v2 + 40) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60D8, &unk_24AD60440);
  *(v2 + 48) = v4;
  v5 = *(v4 - 8);
  *(v2 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60E0, &qword_24AD60450);
  *(v2 + 72) = v7;
  v8 = *(v7 - 8);
  *(v2 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60E8, qword_24AD60458);
  *(v2 + 96) = v10;
  v11 = *(v10 - 8);
  *(v2 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 145) = *a1;

  return MEMORY[0x2822009F8](sub_24AD17090, v1, 0);
}

uint64_t sub_24AD17090()
{
  v1 = *(v0 + 145);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  swift_beginAccess();
  if (*(v2 + v3) == v1)
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 112);
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    v16 = *(v0 + 40);
    swift_allocObject();
    swift_weakInit();
    (*(v15 + 104))(v13, *MEMORY[0x277D85778], v14);
    sub_24AD5E9C4();

    sub_24AD5E994();
    (*(v11 + 8))(v10, v12);
    v17 = sub_24AD34F14(&qword_281064D10, type metadata accessor for CloudKitStorage);
    *(v0 + 120) = v17;
    *(v0 + 128) = 0;
    v18 = *(v0 + 40);
    v19 = *(MEMORY[0x277D85798] + 4);
    v20 = swift_task_alloc();
    *(v0 + 136) = v20;
    *v20 = v0;
    v20[1] = sub_24AD172E4;
    v21 = *(v0 + 112);
    v22 = *(v0 + 96);

    return MEMORY[0x2822003E8](v0 + 144, v18, v17, v22);
  }
}

uint64_t sub_24AD172E4()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD173F4, v2, 0);
}

uint64_t sub_24AD173F4()
{
  v1 = *(v0 + 144);
  if (v1 == 7)
  {
    goto LABEL_2;
  }

  v6 = *(v0 + 128);
  sub_24AD5E9E4();
  if (v6)
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 64);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v5 = *(v0 + 8);
    goto LABEL_5;
  }

  if (v1 == *(v0 + 145))
  {
LABEL_2:
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    v2 = *(v0 + 112);
    v3 = *(v0 + 88);
    v4 = *(v0 + 64);

    v5 = *(v0 + 8);
LABEL_5:

    return v5();
  }

  *(v0 + 128) = 0;
  v10 = *(v0 + 120);
  v11 = *(v0 + 40);
  v12 = *(MEMORY[0x277D85798] + 4);
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_24AD172E4;
  v14 = *(v0 + 112);
  v15 = *(v0 + 96);

  return MEMORY[0x2822003E8](v0 + 144, v11, v10, v15);
}

uint64_t sub_24AD175BC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24AD17658;

  return sub_24AD42670();
}

uint64_t sub_24AD17658(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_24AD17754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD1777C, v4, 0);
}

uint64_t sub_24AD1777C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_24AD177A8, v1, 0);
}

uint64_t sub_24AD177A8()
{
  v1 = *(v0 + 56);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  *(v0 + 64) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24AD1785C, 0, 0);
}

uint64_t sub_24AD1785C()
{
  if (v0[8])
  {
    v1 = v0[7];

    return MEMORY[0x2822009F8](sub_24AD179A0, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E664();
    sub_24AD34F14(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D094E0], v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24AD179A0()
{
  v1 = *(v0 + 56);
  sub_24ACF51C0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 64), *(v0 + 16));
  *(v0 + 72) = 0;

  return MEMORY[0x2822009F8](sub_24AD17A34, 0, 0);
}

uint64_t sub_24AD17A34()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD17A98()
{
  v1 = v0[8];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD17AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD17B24, v4, 0);
}

uint64_t sub_24AD17B24()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_24AD17B50, v1, 0);
}

uint64_t sub_24AD17B50()
{
  v1 = *(v0 + 56);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  *(v0 + 64) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24AD17C04, 0, 0);
}

uint64_t sub_24AD17C04()
{
  if (v0[8])
  {
    v1 = v0[7];

    return MEMORY[0x2822009F8](sub_24AD17D48, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E664();
    sub_24AD34F14(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D094E0], v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24AD17D48()
{
  v1 = *(v0 + 56);
  sub_24ACF51F8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 64), *(v0 + 16));
  *(v0 + 72) = 0;

  return MEMORY[0x2822009F8](sub_24AD38C18, 0, 0);
}

uint64_t sub_24AD17DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24AD17E00, v3, 0);
}

uint64_t sub_24AD17E00()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AD17E2C, v1, 0);
}

uint64_t sub_24AD17E2C()
{
  v1 = *(v0 + 48);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  *(v0 + 56) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24AD17EE0, 0, 0);
}

uint64_t sub_24AD17EE0()
{
  if (v0[7])
  {
    v1 = v0[6];

    return MEMORY[0x2822009F8](sub_24AD18024, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E664();
    sub_24AD34F14(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D094E0], v2);
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24AD18024()
{
  v1 = *(v0 + 48);
  v2 = sub_24ACF5C14(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 56));
  *(v0 + 64) = 0;
  *(v0 + 72) = v3;
  *(v0 + 80) = v2;

  return MEMORY[0x2822009F8](sub_24AD180BC, 0, 0);
}

uint64_t sub_24AD180BC()
{
  v1 = v0[7];

  v2 = v0[1];
  v4 = v0[9];
  v3 = v0[10];

  return v2(v3, v4);
}

uint64_t sub_24AD18124()
{
  v1 = v0[7];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD18188(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD181AC, v2, 0);
}

uint64_t sub_24AD181AC()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
  *(v0 + 56) = 0;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_24AD1825C;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_24AD44BD4(v4, v3, (v0 + 56));
}

uint64_t sub_24AD1825C(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = *(v4 + 32);

    return MEMORY[0x2822009F8](sub_24AD183AC, v7, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8();
  }
}

uint64_t sub_24AD183C4(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_24AD183E8, v2, 0);
}

uint64_t sub_24AD183E8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  v4 = *MEMORY[0x277CBBF28];
  sub_24AD5E844();

  v5 = sub_24AD5EB74();
  v0[23] = v5;
  v0[24] = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_24AD184FC;

  return sub_24ACF71AC(v5);
}

uint64_t sub_24AD184FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  v7 = *(v3 + 176);
  if (v1)
  {
    v8 = sub_24AD18D04;
  }

  else
  {
    v8 = sub_24AD18630;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

char *sub_24AD18630()
{
  v1 = *(v0 + 208);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v25 = *(v0 + 208);
    }

    v2 = sub_24AD5EC94();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v28 = MEMORY[0x277D84F90];
    result = sub_24AD33620(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v27 = v0;
    v6 = *(v0 + 208);
    v7 = v28;
    v8 = v1 & 0xC000000000000001;
    v26 = v6 + 32;
    v9 = v2;
    do
    {
      if (v8)
      {
        v10 = MEMORY[0x24C22EA30](v5, *(v27 + 208));
      }

      else
      {
        v10 = *(v26 + 8 * v5);
      }

      v11 = v10;
      v12 = sub_24AD5EBE4();
      v14 = v13;
      v15 = [v11 recordID];

      v17 = *(v28 + 16);
      v16 = *(v28 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_24AD33620((v16 > 1), v17 + 1, 1);
      }

      ++v5;
      *(v28 + 16) = v17 + 1;
      v18 = (v28 + 24 * v17);
      v18[4] = v12;
      v18[5] = v14;
      v18[6] = v15;
    }

    while (v9 != v5);
    v0 = v27;
    v19 = *(v27 + 208);

    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = *(v0 + 208);

    v7 = MEMORY[0x277D84F90];
  }

  v21 = [*(*(*(v0 + 176) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator) + 112) containerID];
  v22 = sub_24AD341CC(v3);
  *(v0 + 16) = v21;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = v3;
  *(v0 + 48) = v3;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v22;
  *(v0 + 80) = v3;
  *(v0 + 264) = 0;
  v23 = swift_task_alloc();
  *(v0 + 224) = v23;
  *v23 = v0;
  v23[1] = sub_24AD18884;
  v24 = *(v0 + 184);

  return sub_24AD454E0(v24, (v0 + 264));
}

uint64_t sub_24AD18884()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 176);
    v5 = sub_24AD18D68;
  }

  else
  {
    v4 = *(v2 + 192);
    v5 = sub_24AD1899C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD1899C()
{
  v1 = v0[29];
  v2 = v0[24];
  sub_24ACFB24C(v0[23]);
  v0[30] = v1;
  v3 = v0[22];
  if (v1)
  {
    v4 = sub_24AD18DD4;
  }

  else
  {
    v4 = sub_24AD18A28;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD18A28()
{
  v1 = (*(v0 + 176) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v0 + 32);
  *(v0 + 88) = *(v0 + 16);
  v6 = *(v0 + 48);
  *(v0 + 136) = *(v0 + 64);
  *(v0 + 120) = v6;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 104) = v5;
  v7 = *(v2 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 248) = v9;
  *v9 = v0;
  v9[1] = sub_24AD18B80;

  return v11(v0 + 88, ObjectType, v2);
}

uint64_t sub_24AD18B80()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_24AD18E40;
  }

  else
  {
    v5 = sub_24AD18C98;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD18C98()
{
  v1 = *(v0 + 184);
  sub_24AD06458(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD18D04()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD18D68()
{
  v1 = v0[23];
  sub_24AD06458((v0 + 2));

  v2 = v0[29];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD18DD4()
{
  v1 = v0[23];
  sub_24AD06458((v0 + 2));

  v2 = v0[30];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD18E40()
{
  sub_24AD06458(v0 + 16);
  v1 = *(v0 + 256);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD18EAC(uint64_t a1)
{
  v37 = sub_24AD5E404();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_24AD33600(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_24AD5EC54();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_24AD5E3E4();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_24AD33600((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_24ACF3B64(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_24ACF3B64(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
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

uint64_t sub_24AD191B4()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return MEMORY[0x2822009F8](sub_24AD191FC, v0, 0);
}

uint64_t sub_24AD191FC()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_24AD19228, v1, 0);
}

uint64_t sub_24AD19228()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  swift_beginAccess();
  *(v0 + 160) = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_24AD192AC, v2, 0);
}

uint64_t sub_24AD192AC()
{
  if (*(v0 + 160) == 4)
  {
    v1 = *(*(v0 + 40) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
    *(v0 + 64) = v1;

    return MEMORY[0x2822009F8](sub_24AD19420, v1, 0);
  }

  else
  {
    v2 = sub_24AD5E114();
    sub_24AD34F14(&qword_27EFA5F90, MEMORY[0x277D08938]);
    swift_allocError();
    *v3 = 0xD000000000000031;
    v3[1] = 0x800000024AD61A70;
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D08930], v2);
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24AD19420()
{
  v1 = v0[8];
  v0[9] = type metadata accessor for CloudKitCacheDatabase();
  v0[10] = sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  sub_24AD5E6D4();
  v2 = v0[5];

  return MEMORY[0x2822009F8](sub_24AD19520, v2, 0);
}

uint64_t sub_24AD19520()
{
  v1 = (v0[5] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v0[11] = *v1;
  v2 = v1[1];
  v0[12] = v2;
  ObjectType = swift_getObjectType();
  v0[13] = ObjectType;
  v4 = *(v2 + 56);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_24AD19660;

  return v8(ObjectType, v2);
}

uint64_t sub_24AD19660()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 64);

    return MEMORY[0x2822009F8](sub_24AD197A8, v7, 0);
  }
}

uint64_t sub_24AD197A8()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  sub_24AD5E6F4();
  if (v1)
  {
    v5 = v0[1];

    return v5();
  }

  else
  {
    v12 = (v0[12] + 48);
    v13 = (*v12 + **v12);
    v7 = (*v12)[1];
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_24AD19908;
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[11];

    return v13(v10, v9);
  }
}

uint64_t sub_24AD19908()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 40);

    return MEMORY[0x2822009F8](sub_24AD19A4C, v7, 0);
  }
}

uint64_t sub_24AD19A4C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases);
  v4 = swift_task_alloc();
  v0[17] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = *(MEMORY[0x277D08918] + 4);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_24AD19B38;

  return MEMORY[0x28215EB00]("syncWithCloudKit", 16, 2, &unk_24AD60488, v4);
}

uint64_t sub_24AD19B38()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](sub_24AD19C74, v4, 0);
  }

  else
  {
    v5 = v3[17];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_24AD19C74()
{
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD19CF8()
{
  v1 = *(v0 + 1080);
  v2 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  swift_beginAccess();
  if (*(v1 + v2) == 5)
  {
    *(v0 + 1344) = 1;
    v3 = swift_task_alloc();
    *(v0 + 1128) = v3;
    *v3 = v0;
    v3[1] = sub_24AD19EBC;
    v4 = *(v0 + 1080);

    return sub_24AD1B554((v0 + 1344));
  }

  else
  {
    v6 = sub_24AD5E114();
    sub_24AD34F14(&qword_27EFA5F90, MEMORY[0x277D08938]);
    swift_allocError();
    *v7 = 0xD000000000000020;
    v7[1] = 0x800000024AD61AD0;
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D08930], v6);
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_24AD19EBC()
{
  v1 = *(*v0 + 1128);
  v2 = *(*v0 + 1080);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD19FCC, v2, 0);
}

uint64_t sub_24AD19FCC()
{
  v1 = v0[135];
  v2 = swift_allocObject();
  v0[142] = v2;
  *(v2 + 16) = &unk_24AD604A8;
  *(v2 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60F0, qword_24AD604C0);
  swift_asyncLet_begin();
  v3 = v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore;
  v0[143] = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v4 = *(v3 + 8);
  v0[144] = v4;
  ObjectType = swift_getObjectType();
  v0[145] = ObjectType;
  v6 = *(v4 + 56);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[146] = v8;
  *v8 = v0;
  v8[1] = sub_24AD1A184;

  return v10(ObjectType, v4);
}

uint64_t sub_24AD1A184()
{
  v2 = *(*v1 + 1168);
  v3 = *v1;
  v3[147] = v0;

  if (v0)
  {

    return MEMORY[0x282200920](v3 + 2, v3 + 123, sub_24AD1B2E0, v3 + 82);
  }

  else
  {
    v10 = (v3[144] + 48);
    v11 = (*v10 + **v10);
    v4 = (*v10)[1];
    v5 = swift_task_alloc();
    v3[148] = v5;
    *v5 = v3;
    v5[1] = sub_24AD1A380;
    v6 = v3[144];
    v7 = v3[143];
    v8 = v3[145];

    return v11(v8, v6);
  }
}

uint64_t sub_24AD1A380()
{
  v2 = *v1;
  v3 = *(*v1 + 1184);
  v5 = *v1;
  *(*v1 + 1192) = v0;

  if (v0)
  {

    return MEMORY[0x282200920](v2 + 16, v2 + 984, sub_24AD1B360, v2 + 768);
  }

  else
  {

    return MEMORY[0x282200930](v2 + 16, v2 + 984, sub_24AD1A4C4, v2 + 880);
  }
}

uint64_t sub_24AD1A4C4()
{
  *(v1 + 1200) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 16, v1 + 984, sub_24AD1B3E0, v1 + 944);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_24AD1A508, *(v1 + 1080), 0);
  }
}

uint64_t sub_24AD1A508()
{
  v1 = *(v0 + 984);
  *(v0 + 1208) = v1;
  if (v1 >> 62)
  {
    v20 = sub_24AD5EC94();
    *(v0 + 1216) = v20;
    if (v20)
    {
LABEL_3:
      v3 = *(v0 + 1080);
      *(v0 + 1224) = *MEMORY[0x277CBBF28];
      v4 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache;
      *(v0 + 1232) = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator;
      *(v0 + 1240) = *(v3 + v4);
      *(v0 + 1248) = *(v0 + 1200);
      v5 = *(v0 + 1208);

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C22EA30](0, v5);
        v10 = *(v0 + 1224);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x2822009F8](v6, v7, v8);
        }

        v9 = *(v5 + 32);
      }

      *(v0 + 1256) = v9;
      *(v0 + 1264) = 1;
      v11 = [v9 zoneID];
      v12 = [v11 ownerName];

      v13 = sub_24AD5E844();
      v15 = v14;

      if (v13 == sub_24AD5E844() && v15 == v16)
      {

        v17 = 0;
      }

      else
      {
        v18 = sub_24AD5EF84();

        v17 = (v18 & 1) == 0;
      }

      *(v0 + 1346) = v17;
      v19 = *(v0 + 1240);
      *(v0 + 1272) = [v9 zoneID];
      v6 = sub_24AD1A7A4;
      v7 = v19;
      v8 = 0;

      return MEMORY[0x2822009F8](v6, v7, v8);
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 1216) = v2;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  *(v0 + 1345) = 5;
  v21 = swift_task_alloc();
  *(v0 + 1336) = v21;
  *v21 = v0;
  v21[1] = sub_24AD1B160;
  v22 = *(v0 + 1080);

  return sub_24AD1B554((v0 + 1345));
}

uint64_t sub_24AD1A7A4()
{
  v1 = *(v0 + 1240);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  *(v0 + 1280) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24AD1A858, 0, 0);
}

uint64_t sub_24AD1A858()
{
  if (v0[160])
  {
    v1 = v0[155];
    v2 = sub_24AD1A994;
  }

  else
  {
    v3 = v0[159];
    v4 = v0[151];

    v5 = sub_24AD5E664();
    sub_24AD34F14(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D094E0], v5);
    swift_willThrow();

    v0[166] = v6;
    v1 = v0[135];
    v2 = sub_24AD1AE2C;
  }

  return MEMORY[0x2822009F8](v2, v1, 0);
}

uint64_t sub_24AD1A994()
{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1240);
  *(v0 + 1288) = sub_24ACF74E8(*(v0 + 1272), *(v0 + 1280));
  *(v0 + 1296) = v1;
  if (v1)
  {
    v3 = *(v0 + 1208);

    v4 = sub_24AD1ADB0;
  }

  else
  {
    v4 = sub_24AD1AA34;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD1AA34()
{
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[159];
  v4 = v0[135];
  sub_24AD5E174();
  v0[163] = v0[129];

  return MEMORY[0x2822009F8](sub_24AD1AAD0, v4, 0);
}

uint64_t sub_24AD1AAD0()
{
  v1 = (v0 + 808);
  v2 = *(v0 + 1346);
  v17 = *(v0 + 1152);
  v3 = MEMORY[0x277D84F90];
  if (*(v0 + 1304))
  {
    v4 = *(v0 + 1304);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = [*(*(*(v0 + 1080) + *(v0 + 1232)) + 112) containerID];
  v6 = sub_24AD341CC(v3);
  *(v0 + 696) = v5;
  *(v0 + 704) = v2;
  *(v0 + 712) = 0;
  *(v0 + 720) = v3;
  *(v0 + 728) = v3;
  *(v0 + 736) = v4;
  *(v0 + 744) = v3;
  *(v0 + 752) = v6;
  *(v0 + 760) = v3;
  *(v0 + 872) = v3;
  v7 = *(v0 + 744);
  *(v0 + 840) = *(v0 + 728);
  *(v0 + 856) = v7;
  v8 = *(v0 + 712);
  *v1 = *(v0 + 696);
  *(v0 + 824) = v8;
  v9 = *(v17 + 24);
  v16 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 1312) = v11;
  *v11 = v0;
  v11[1] = sub_24AD1AC88;
  v12 = *(v0 + 1160);
  v13 = *(v0 + 1152);
  v14 = *(v0 + 1144);

  return (v16)(v1, v12, v13);
}

uint64_t sub_24AD1AC88()
{
  v2 = *v1;
  v3 = *(*v1 + 1312);
  v9 = *v1;
  *(*v1 + 1320) = v0;

  if (v0)
  {
    v4 = *(v2 + 1208);
    v5 = *(v2 + 1080);

    v6 = sub_24AD1B460;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 1080);
    v6 = sub_24AD1AF18;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_24AD1ADB0()
{
  v1 = *(v0 + 1280);

  *(v0 + 1328) = *(v0 + 1296);
  v2 = *(v0 + 1080);

  return MEMORY[0x2822009F8](sub_24AD1AE2C, v2, 0);
}

uint64_t sub_24AD1AE2C()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 984, sub_24AD1AE98, v0 + 992);
}

uint64_t sub_24AD1AEB4()
{
  v1 = v0[142];

  v2 = v0[166];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD1AF18()
{
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1216);

  v3 = sub_24AD06458(v0 + 696);
  if (v1 != v2)
  {
    v9 = *(v0 + 1264);
    *(v0 + 1248) = *(v0 + 1320);
    v10 = *(v0 + 1208);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x24C22EA30](v9);
    }

    else
    {
      if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v3 = *(v10 + 8 * v9 + 32);
    }

    v11 = v3;
    *(v0 + 1256) = v3;
    *(v0 + 1264) = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v12 = *(v0 + 1224);
      v13 = [v3 zoneID];
      v14 = [v13 ownerName];

      v15 = sub_24AD5E844();
      v17 = v16;

      if (v15 == sub_24AD5E844() && v17 == v18)
      {

        v21 = 0;
      }

      else
      {
        v20 = sub_24AD5EF84();

        v21 = (v20 & 1) == 0;
      }

      *(v0 + 1346) = v21;
      v22 = *(v0 + 1240);
      *(v0 + 1272) = [v11 zoneID];
      v3 = sub_24AD1A7A4;
      v10 = v22;
      v4 = 0;

      return MEMORY[0x2822009F8](v3, v10, v4);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v10, v4);
  }

  v5 = *(v0 + 1208);

  *(v0 + 1345) = 5;
  v6 = swift_task_alloc();
  *(v0 + 1336) = v6;
  *v6 = v0;
  v6[1] = sub_24AD1B160;
  v7 = *(v0 + 1080);

  return sub_24AD1B554((v0 + 1345));
}

uint64_t sub_24AD1B160()
{
  v1 = *v0;
  v2 = *(*v0 + 1336);
  v4 = *v0;

  return MEMORY[0x282200920](v1 + 16, v1 + 984, sub_24AD1B260, v1 + 1088);
}

uint64_t sub_24AD1B27C()
{
  v1 = *(v0 + 1136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD1B2FC()
{
  v1 = v0[142];

  v2 = v0[147];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD1B37C()
{
  v1 = v0[142];

  v2 = v0[149];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD1B3FC()
{
  v1 = v0[142];

  v2 = v0[150];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD1B460()
{
  sub_24AD06458(v0 + 696);

  return MEMORY[0x282200920](v0 + 16, v0 + 984, sub_24AD1B4D4, v0 + 1040);
}

uint64_t sub_24AD1B4F0()
{
  v1 = v0[142];

  v2 = v0[165];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD1B554(_BYTE *a1)
{
  *(v2 + 64) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61B8, &qword_24AD608B8);
  *(v2 + 72) = v4;
  v5 = *(v4 - 8);
  *(v2 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FA0, &qword_24AD5FE50);
  *(v2 + 96) = v7;
  v8 = *(v7 - 8);
  *(v2 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 121) = *a1;

  return MEMORY[0x2822009F8](sub_24AD1B694, v1, 0);
}

uint64_t sub_24AD1B694()
{
  v53 = v0;
  v1 = *(v0 + 121);
  v2 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_state;
  swift_beginAccess();
  if (*(v2 + v3) != v1)
  {
    if (qword_281064D90 != -1)
    {
LABEL_55:
      swift_once();
    }

    v4 = *(v0 + 64);
    v5 = sub_24AD5E7A4();
    __swift_project_value_buffer(v5, qword_281065448);

    v6 = sub_24AD5E784();
    v7 = sub_24AD5EB64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 136315394;
      v10 = *(v2 + v3);
      v50 = v9;
      v52 = v9;
      if (v10 <= 2)
      {
        if (v10)
        {
          if (v10 == 1)
          {
            v12 = 0x6C696176616E752ELL;
            v11 = 0xEC000000656C6261;
          }

          else
          {
            v12 = 0x756F6363416F6E2ELL;
            v11 = 0xEA0000000000746ELL;
          }
        }

        else
        {
          v11 = 0xE800000000000000;
          v12 = 0x6E776F6E6B6E752ELL;
        }
      }

      else if (v10 > 4)
      {
        if (v10 == 5)
        {
          v12 = 0x62616C696176612ELL;
          v11 = 0xEA0000000000656CLL;
        }

        else
        {
          v12 = 0x6E6F43736E70612ELL;
          v11 = 0xEE0064657463656ELL;
        }
      }

      else if (v10 == 3)
      {
        v11 = 0xE800000000000000;
        v12 = 0x676E6964616F6C2ELL;
      }

      else
      {
        v12 = 0x646C69756265722ELL;
        v11 = 0xEB00000000676E69;
      }

      v13 = *(v0 + 121);
      v14 = sub_24AD2EDAC(v12, v11, &v52);

      *(v8 + 4) = v14;
      v15 = 0x62616C696176612ELL;
      *(v8 + 12) = 2080;
      if (v13 == 5)
      {
        v16 = 0xEA0000000000656CLL;
      }

      else
      {
        v15 = 0x6E6F43736E70612ELL;
        v16 = 0xEE0064657463656ELL;
      }

      v17 = 0xE800000000000000;
      v18 = 0x676E6964616F6C2ELL;
      if (v13 != 3)
      {
        v18 = 0x646C69756265722ELL;
        v17 = 0xEB00000000676E69;
      }

      if (v13 <= 4)
      {
        v15 = v18;
        v16 = v17;
      }

      v19 = 0x6C696176616E752ELL;
      v20 = 0xEA0000000000746ELL;
      if (v13 == 1)
      {
        v20 = 0xEC000000656C6261;
      }

      else
      {
        v19 = 0x756F6363416F6E2ELL;
      }

      if (!v13)
      {
        v19 = 0x6E776F6E6B6E752ELL;
        v20 = 0xE800000000000000;
      }

      if (v13 <= 2)
      {
        v21 = v19;
      }

      else
      {
        v21 = v15;
      }

      if (v13 <= 2)
      {
        v22 = v20;
      }

      else
      {
        v22 = v16;
      }

      v23 = sub_24AD2EDAC(v21, v22, &v52);

      *(v8 + 14) = v23;
      _os_log_impl(&dword_24ACF2000, v6, v7, "State: %s -> %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v50, -1, -1);
      MEMORY[0x24C22F400](v8, -1, -1);
    }

    v24 = *(v0 + 64);
    *(v2 + v3) = *(v0 + 121);
    v25 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_stateContinuations;
    swift_beginAccess();
    v26 = *(v24 + v25);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = sub_24AD5E784();
      v29 = sub_24AD5EB64();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = v27;
        _os_log_impl(&dword_24ACF2000, v28, v29, "Publishing State change event to %ld subscribers", v30, 0xCu);
        MEMORY[0x24C22F400](v30, -1, -1);
      }

      v26 = *(v24 + v25);
    }

    v31 = *(v0 + 104);
    v49 = v0;
    v32 = v26 + 64;
    v33 = -1;
    v34 = -1 << *(v26 + 32);
    if (-v34 < 64)
    {
      v33 = ~(-1 << -v34);
    }

    v35 = v33 & *(v26 + 64);
    v2 = (63 - v34) >> 6;
    v46 = (*(v0 + 80) + 8);
    v47 = *(v0 + 104);
    v48 = v26;

    v3 = 0;
    if (v35)
    {
      while (1)
      {
        v36 = v3;
LABEL_48:
        v0 = v49;
        v37 = *(v49 + 121);
        v38 = *(v49 + 112);
        v40 = *(v49 + 88);
        v39 = *(v49 + 96);
        v51 = *(v49 + 72);
        v41 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        (*(v47 + 16))(v38, *(v48 + 56) + *(v47 + 72) * (v41 | (v36 << 6)), v39);
        *(v49 + 120) = v37;
        sub_24AD5E984();
        (*v46)(v40, v51);
        (*(v47 + 8))(v38, v39);
        if (!v35)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
LABEL_44:
      v36 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v36 >= v2)
      {
        break;
      }

      v35 = *(v32 + 8 * v36);
      ++v3;
      if (v35)
      {
        v3 = v36;
        goto LABEL_48;
      }
    }

    v0 = v49;
  }

  v42 = *(v0 + 112);
  v43 = *(v0 + 88);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_24AD1BCAC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_24AD1BD48;

  return sub_24ACF4688();
}

uint64_t sub_24AD1BD48(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_24AD1BE48(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24AD1BF34;

  return v6();
}

uint64_t sub_24AD1BF34(uint64_t a1)
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

uint64_t sub_24AD1C064()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AD1C090, v1, 0);
}

uint64_t sub_24AD1C090()
{
  v1 = *(v0 + 24);
  v2 = sub_24ACFABB4();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24AD1C10C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD1C130, v2, 0);
}

uint64_t sub_24AD1C130()
{
  if (sub_24AD1C25C(1u, *(v0[4] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = *(v0[4] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_24AD38C44;
    v4 = v0[2];
    v3 = v0[3];

    return sub_24AD39F84(v4, v3);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

BOOL sub_24AD1C25C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_24AD5F074();
  MEMORY[0x24C22ED70](v3);
  v5 = sub_24AD5F094();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_24AD1C328(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD1C34C, v2, 0);
}

uint64_t sub_24AD1C34C()
{
  if (sub_24AD1C25C(1u, *(v0[4] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = *(v0[4] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_24AD38C44;
    v4 = v0[2];
    v3 = v0[3];

    return sub_24AD3A204(v4, v3);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24AD1C478(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD1C49C, v2, 0);
}

uint64_t sub_24AD1C49C()
{
  if (sub_24AD1C25C(1u, *(v0[4] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = v0[3];
    v2 = v0[4];
    v3 = v0[2];
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    v4 = *MEMORY[0x277CBBF28];
    sub_24AD5E844();

    v5 = sub_24AD5EB74();
    v0[5] = v5;
    v6 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_24AD1C63C;

    return sub_24ACF834C(v5);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_24AD1C63C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v9 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = *(v3 + 32);
    v6 = sub_24AD1C828;
  }

  else
  {
    v7 = *(v3 + 32);

    v6 = sub_24AD1C760;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD1C760()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = [*(v0 + 56) participants];
    sub_24AD06578(0, &qword_27EFA6100, 0x277CBC6A0);
    v3 = sub_24AD5E8C4();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_24AD1C828()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD1C88C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD1C8B0, v2, 0);
}

uint64_t sub_24AD1C8B0()
{
  if (sub_24AD1C25C(1u, *(v0[4] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = *(v0[4] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_24AD1C9DC;
    v4 = v0[2];
    v3 = v0[3];

    return sub_24AD3A560(v4, v3);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24AD1C9DC(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_24AD1CADC(uint64_t a1)
{
  v2[53] = a1;
  v2[54] = v1;
  v2[55] = *v1;
  return MEMORY[0x2822009F8](sub_24AD1CB24, v1, 0);
}

uint64_t sub_24AD1CB24()
{
  v1 = *(v0[54] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases);
  v0[56] = v1;
  if (sub_24AD1C25C(1u, v1))
  {
    v2 = *(v0[54] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    v0[57] = v2;

    return MEMORY[0x2822009F8](sub_24AD1CC20, v2, 0);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24AD1CC20()
{
  v1 = v0[53];
  v2 = *(v0[57] + 112);
  v0[2] = v0;
  v0[7] = v0 + 52;
  v0[3] = sub_24AD1CD50;
  v3 = swift_continuation_init();
  v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6108, &qword_24AD604F8);
  v0[37] = MEMORY[0x277D85DD0];
  v0[38] = 1107296256;
  v0[39] = sub_24AD2E470;
  v0[40] = &block_descriptor;
  v0[41] = v3;
  [v2 acceptShareMetadata:v1 completionHandler:v0 + 37];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AD1CD50()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 464) = v3;
  v4 = *(v1 + 456);
  if (v3)
  {
    v5 = sub_24AD1CE64;
  }

  else
  {
    v5 = sub_24AD1CED0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD1CE64()
{
  v1 = *(v0 + 464);
  swift_willThrow();
  v2 = *(v0 + 464);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD1CED0()
{
  v1 = v0[54];
  v0[59] = v0[52];
  return MEMORY[0x2822009F8](sub_24AD1CEF4, v1, 0);
}

uint64_t sub_24AD1CEF4()
{
  v17 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6110, &qword_24AD60500);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AD5F820;
  v5 = v1;
  *(inited + 32) = [v5 recordID];
  *(inited + 40) = v5;
  *(inited + 48) = 0;
  v6 = sub_24AD34694(inited);
  swift_setDeallocating();
  sub_24AD06518(inited + 32, &qword_27EFA6118, &qword_24AD60508);
  v7 = sub_24AD3479C(MEMORY[0x277D84F90]);
  v16 = 1;
  sub_24AD3B138(v6, v7, &v16, v14);

  v8 = v14[3];
  *(v0 + 112) = v14[2];
  *(v0 + 128) = v8;
  *(v0 + 144) = v15;
  v9 = v14[1];
  *(v0 + 80) = v14[0];
  *(v0 + 96) = v9;
  v10 = *(v3 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  v11 = *(v0 + 80);
  *(v0 + 168) = *(v0 + 96);
  v12 = *(v0 + 128);
  *(v0 + 184) = *(v0 + 112);
  *(v0 + 200) = v12;
  *(v0 + 480) = v10;
  *(v0 + 216) = *(v0 + 144);
  *(v0 + 152) = v11;

  return MEMORY[0x2822009F8](sub_24AD1D07C, v10, 0);
}

uint64_t sub_24AD1D07C()
{
  v1 = *(v0 + 480);
  sub_24ACFBDBC((v0 + 152));
  *(v0 + 488) = 0;
  v2 = *(v0 + 432);

  return MEMORY[0x2822009F8](sub_24AD1D10C, v2, 0);
}

uint64_t sub_24AD1D10C()
{
  v1 = (*(v0 + 432) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  *(v0 + 288) = *(v0 + 144);
  v5 = *(v0 + 128);
  *(v0 + 256) = *(v0 + 112);
  *(v0 + 272) = v5;
  v6 = *(v0 + 96);
  *(v0 + 224) = *(v0 + 80);
  *(v0 + 240) = v6;
  v7 = *(v2 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 496) = v9;
  *v9 = v0;
  v9[1] = sub_24AD1D25C;

  return v11(v0 + 224, ObjectType, v2);
}

uint64_t sub_24AD1D25C()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v7 = *v1;
  *(*v1 + 504) = v0;

  v4 = *(v2 + 432);
  if (v0)
  {
    v5 = sub_24AD1D6CC;
  }

  else
  {
    v5 = sub_24AD1D374;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD1D374()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v4 = swift_task_alloc();
  v0[64] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D08918] + 4);
  v6 = swift_task_alloc();
  v0[65] = v6;
  *v6 = v0;
  v6[1] = sub_24AD1D458;

  return MEMORY[0x28215EB00]("syncWithCloudKit", 16, 2, &unk_24AD60510, v4);
}

uint64_t sub_24AD1D458()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v9 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = *(v2 + 432);
    v5 = sub_24AD1D5EC;
  }

  else
  {
    v6 = *(v2 + 512);
    v7 = *(v2 + 432);

    v5 = sub_24AD1D580;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD1D580()
{
  v1 = *(v0 + 472);
  sub_24AD06458(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD1D5EC()
{
  v1 = v0[64];
  v2 = v0[59];

  sub_24AD06458((v0 + 10));

  v3 = v0[66];
  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD1D660()
{
  sub_24AD06458(v0 + 80);
  v1 = *(v0 + 488);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD1D6CC()
{
  sub_24AD06458(v0 + 80);
  v1 = *(v0 + 504);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD1D738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[33] = a4;
  v5[34] = v4;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;
  return MEMORY[0x2822009F8](sub_24AD1D760, v4, 0);
}

uint64_t sub_24AD1D760()
{
  if (sub_24AD1C25C(1u, *(v0[34] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = v0[33];
    v2 = v0[34];
    v3 = v0[32];
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    v4 = *MEMORY[0x277CBBF28];
    sub_24AD5E844();

    v5 = sub_24AD5EB74();
    v0[35] = v5;
    v0[36] = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
    v6 = swift_task_alloc();
    v0[37] = v6;
    *v6 = v0;
    v6[1] = sub_24AD1D904;

    return sub_24ACF834C(v5);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24AD1D904(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(v4 + 304) = a1;
  *(v4 + 312) = v1;

  v7 = *(v3 + 272);
  if (v1)
  {
    v8 = sub_24AD1DDC0;
  }

  else
  {
    v8 = sub_24AD1DA38;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AD1DA38()
{
  v1 = *(v0 + 304);
  if (v1)
  {
    v2 = *(v0 + 272);
    [*(v0 + 304) addParticipant_];
    v3 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    *(v0 + 320) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
    v4 = swift_allocObject();
    *(v0 + 328) = v4;
    *(v4 + 16) = xmmword_24AD60330;
    *(v4 + 32) = v1;
    v5 = v1;

    return MEMORY[0x2822009F8](sub_24AD1DB7C, v3, 0);
  }

  else
  {
    v6 = *(v0 + 280);
    sub_24AD3514C();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_24AD1DB7C()
{
  v1 = [*(v0[40] + 112) privateCloudDatabase];
  v0[42] = v1;
  v2 = swift_task_alloc();
  v0[43] = v2;
  *v2 = v0;
  v2[1] = sub_24AD1DC48;
  v4 = v0[40];
  v3 = v0[41];
  v5 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v3, v5, v1, 0, 1);
}

uint64_t sub_24AD1DC48(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 344);
  v7 = *v3;
  v5[44] = a1;
  v5[45] = a2;
  v5[46] = v2;

  v8 = v4[42];
  v9 = v4[41];
  if (v2)
  {
    v10 = v5[38];
    v11 = v5[34];

    v12 = sub_24AD1E080;
  }

  else
  {
    v11 = v5[34];

    v12 = sub_24AD1DE24;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_24AD1DDC0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD1DE24()
{
  v31 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 304);

  v3 = [v2 recordID];

  if (!*(v1 + 16) || (v4 = *(v0 + 352), v5 = sub_24AD09620(v3), (v6 & 1) == 0))
  {
    v14 = *(v0 + 352);
    v15 = *(v0 + 360);

LABEL_6:
    v16 = *(v0 + 352);
    v17 = *(v0 + 304);
    v18 = *(v0 + 280);

    sub_24AD3514C();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    goto LABEL_7;
  }

  v7 = *(*(v0 + 352) + 56) + 16 * v5;
  v8 = *v7;
  *(v0 + 376) = *v7;
  v9 = *(v7 + 8);
  sub_24ACF40BC(v8);

  if (v9)
  {
    v10 = *(v0 + 352);
    v11 = *(v0 + 360);
    v12 = *(v0 + 304);
    v13 = *(v0 + 280);

    *(v0 + 232) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_willThrowTypedImpl();

LABEL_7:
    v20 = *(v0 + 8);

    return v20();
  }

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  *(v0 + 384) = v22;
  if (!v22)
  {
    v29 = *(v0 + 360);
    sub_24AD35214(v8);

    goto LABEL_6;
  }

  v24 = *(v0 + 352);
  v23 = *(v0 + 360);
  v25 = *(v0 + 320);
  v26 = *(v0 + 288);
  v30[0] = 0;
  sub_24AD3B138(v24, v23, v30, v0 + 16);

  v27 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v28 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v28;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v27;

  return MEMORY[0x2822009F8](sub_24AD1E0EC, v26, 0);
}

uint64_t sub_24AD1E080()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 368);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD1E0EC()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 288);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 392) = v1;
  v3 = *(v0 + 272);
  if (v1)
  {
    v4 = sub_24AD1E76C;
  }

  else
  {
    v4 = sub_24AD1E17C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD1E17C()
{
  v1 = (*(v0 + 272) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  *(v0 + 224) = *(v0 + 80);
  v5 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v5;
  v6 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v6;
  v7 = *(v2 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 400) = v9;
  *v9 = v0;
  v9[1] = sub_24AD1E2CC;

  return v11(v0 + 160, ObjectType, v2);
}

uint64_t sub_24AD1E2CC()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 408) = v0;

  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_24AD1E7F0;
  }

  else
  {
    v5 = sub_24AD1E3E4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD1E3E4()
{
  v1 = [*(v0 + 384) URL];
  if (!v1)
  {
    v13 = *(v0 + 376);
    v14 = *(v0 + 304);
    v15 = *(v0 + 280);
    sub_24AD3514C();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    sub_24AD06458(v0 + 16);
    sub_24AD35214(v13);

LABEL_24:
    v31 = *(v0 + 8);

    return v31();
  }

  v2 = *(v0 + 384);
  v3 = *(v0 + 240);
  v4 = v1;
  sub_24AD5E354();

  v5 = [v2 participants];
  sub_24AD06578(0, &qword_27EFA6100, 0x277CBC6A0);
  v6 = sub_24AD5E8C4();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = sub_24AD5EC94();
  if (!v7)
  {
LABEL_22:
    v27 = *(v0 + 376);
    v19 = *(v0 + 304);
    v28 = *(v0 + 280);
    v24 = *(v0 + 240);

    sub_24AD3514C();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();

    sub_24AD06458(v0 + 16);
    v26 = v27;
LABEL_23:
    sub_24AD35214(v26);

    v30 = sub_24AD5E364();
    (*(*(v30 - 8) + 8))(v24, v30);
    goto LABEL_24;
  }

LABEL_4:
  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C22EA30](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v12 = *(v0 + 248);
    sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
    if (sub_24AD5EC04())
    {
      break;
    }

    ++v8;
    if (v11 == v7)
    {
      goto LABEL_22;
    }
  }

  v17 = [v10 invitationToken];
  v18 = *(v0 + 376);
  v19 = *(v0 + 304);
  v20 = *(v0 + 280);
  if (!v17)
  {
    v24 = *(v0 + 240);
    sub_24AD3514C();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();

    sub_24AD06458(v0 + 16);
    v26 = v18;
    goto LABEL_23;
  }

  v21 = v17;

  sub_24AD06458(v0 + 16);
  sub_24AD35214(v18);

  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_24AD1E76C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 280);

  sub_24AD35214(v1);
  sub_24AD06458(v0 + 16);
  v3 = *(v0 + 392);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AD1E7F0()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 280);

  sub_24AD35214(v1);
  sub_24AD06458(v0 + 16);
  v3 = *(v0 + 408);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AD1E874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  return MEMORY[0x2822009F8](sub_24AD1E898, v3, 0);
}

uint64_t sub_24AD1E898()
{
  if (sub_24AD1C25C(1u, *(v0[33] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = v0[32];
    v2 = v0[33];
    v3 = v0[31];
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    v4 = *MEMORY[0x277CBBF28];
    sub_24AD5E844();

    v5 = sub_24AD5EB74();
    v0[34] = v5;
    v0[35] = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
    v6 = swift_task_alloc();
    v0[36] = v6;
    *v6 = v0;
    v6[1] = sub_24AD1EA3C;

    return sub_24ACF834C(v5);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24AD1EA3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  v7 = *(v3 + 264);
  if (v1)
  {
    v8 = sub_24AD1EEF8;
  }

  else
  {
    v8 = sub_24AD1EB70;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AD1EB70()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = *(v0 + 264);
    [*(v0 + 296) removeParticipant_];
    v3 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    *(v0 + 312) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
    v4 = swift_allocObject();
    *(v0 + 320) = v4;
    *(v4 + 16) = xmmword_24AD60330;
    *(v4 + 32) = v1;
    v5 = v1;

    return MEMORY[0x2822009F8](sub_24AD1ECB4, v3, 0);
  }

  else
  {
    v6 = *(v0 + 272);
    sub_24AD3514C();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_24AD1ECB4()
{
  v1 = [*(v0[39] + 112) privateCloudDatabase];
  v0[41] = v1;
  v2 = swift_task_alloc();
  v0[42] = v2;
  *v2 = v0;
  v2[1] = sub_24AD1ED80;
  v4 = v0[39];
  v3 = v0[40];
  v5 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v3, v5, v1, 0, 1);
}

uint64_t sub_24AD1ED80(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 336);
  v7 = *v3;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = v2;

  v8 = v4[41];
  v9 = v4[40];
  if (v2)
  {
    v10 = v5[37];
    v11 = v5[33];

    v12 = sub_24AD1F140;
  }

  else
  {
    v11 = v5[33];

    v12 = sub_24AD1EF5C;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_24AD1EEF8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD1EF5C()
{
  v24 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 296);

  v3 = [v2 recordID];

  if (!*(v1 + 16))
  {
    v15 = *(v0 + 344);
LABEL_9:

    goto LABEL_10;
  }

  v4 = sub_24AD09620(v3);
  if ((v5 & 1) == 0)
  {
    v16 = *(v0 + 344);
    goto LABEL_9;
  }

  v6 = *(*(v0 + 344) + 56) + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  sub_24ACF40BC(*v6);

  if (v8)
  {
    v9 = *(v0 + 344);
    v10 = *(v0 + 352);
    v11 = *(v0 + 296);
    v12 = *(v0 + 272);

    *(v0 + 232) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_willThrowTypedImpl();

    v13 = *(v0 + 8);

    return v13();
  }

  sub_24AD35214(v7);
LABEL_10:
  v18 = *(v0 + 344);
  v17 = *(v0 + 352);
  v19 = *(v0 + 312);
  v20 = *(v0 + 280);
  v23 = 0;
  sub_24AD3B138(v18, v17, &v23, v0 + 16);

  v21 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v22 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v22;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v21;

  return MEMORY[0x2822009F8](sub_24AD1F1AC, v20, 0);
}

uint64_t sub_24AD1F140()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 360);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD1F1AC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 280);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 368) = v1;
  v3 = *(v0 + 264);
  if (v1)
  {
    v4 = sub_24AD1F518;
  }

  else
  {
    v4 = sub_24AD1F23C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD1F23C()
{
  v1 = (*(v0 + 264) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  *(v0 + 224) = *(v0 + 80);
  v5 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v5;
  v6 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v6;
  v7 = *(v2 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 376) = v9;
  *v9 = v0;
  v9[1] = sub_24AD1F38C;

  return v11(v0 + 160, ObjectType, v2);
}

uint64_t sub_24AD1F38C()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v7 = *v1;
  *(*v1 + 384) = v0;

  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_24AD1F58C;
  }

  else
  {
    v5 = sub_24AD1F4A4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD1F4A4()
{
  v1 = v0[37];
  v2 = v0[34];
  sub_24AD06458((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD1F518()
{
  v1 = *(v0 + 296);

  sub_24AD06458(v0 + 16);
  v2 = *(v0 + 368);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD1F58C()
{
  v1 = *(v0 + 296);

  sub_24AD06458(v0 + 16);
  v2 = *(v0 + 384);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD1F600(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD1F624, v2, 0);
}

uint64_t sub_24AD1F624()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  v0[5] = v3;
  sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
  v4 = *MEMORY[0x277CBBF28];
  sub_24AD5E844();

  v0[6] = sub_24AD5EB74();

  return MEMORY[0x2822009F8](sub_24AD1F704, v3, 0);
}

uint64_t sub_24AD1F704()
{
  v1 = *(v0 + 40);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  *(v0 + 56) = sub_24AD5E694();

  return MEMORY[0x2822009F8](sub_24AD1F7B8, 0, 0);
}

uint64_t sub_24AD1F7B8()
{
  if (v0[7])
  {
    v1 = v0[5];

    return MEMORY[0x2822009F8](sub_24AD1F914, v1, 0);
  }

  else
  {
    v2 = v0[6];
    v3 = sub_24AD5E664();
    sub_24AD34F14(&qword_27EFA5EF0, MEMORY[0x277D094E8]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D094E0], v3);
    swift_willThrow();

    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_24AD1F914()
{
  v1 = *(v0 + 40);
  *(v0 + 72) = sub_24ACF7DD4(*(v0 + 48), *(v0 + 56));
  *(v0 + 64) = 0;

  return MEMORY[0x2822009F8](sub_24AD1F9AC, 0, 0);
}

uint64_t sub_24AD1F9AC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2(v3);
}

uint64_t sub_24AD1FA1C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_24AD1FA8C(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  return MEMORY[0x2822009F8](sub_24AD1FAB0, v2, 0);
}

uint64_t sub_24AD1FAB0()
{
  if (sub_24AD1C25C(1u, *(v0[32] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = swift_task_alloc();
    v0[33] = v1;
    *v1 = v0;
    v1[1] = sub_24AD1FBD0;
    v2 = v0[31];
    v3 = v0[32];
    v4 = v0[30];

    return sub_24AD1F600(v4, v2);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24AD1FBD0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 256);
    *(v4 + 376) = a1 & 1;

    return MEMORY[0x2822009F8](sub_24AD1FD20, v9, 0);
  }
}

uint64_t sub_24AD1FD20()
{
  if (*(v0 + 376))
  {
    sub_24AD3514C();
    swift_allocError();
    *v1 = 3;
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    v6 = *(v0 + 240);
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    v7 = *MEMORY[0x277CBBF28];
    sub_24AD5E844();

    v8 = sub_24AD5EB74();
    *(v0 + 272) = v8;
    v9 = [objc_allocWithZone(MEMORY[0x277CBC680]) initWithRecordZoneID_];
    *(v0 + 280) = v9;
    v10 = *(v5 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    *(v0 + 288) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
    v11 = swift_allocObject();
    *(v0 + 296) = v11;
    *(v11 + 16) = xmmword_24AD60330;
    *(v11 + 32) = v9;
    v12 = v9;

    return MEMORY[0x2822009F8](sub_24AD1FEE4, v10, 0);
  }
}

uint64_t sub_24AD1FEE4()
{
  v1 = [*(v0[36] + 112) privateCloudDatabase];
  v0[38] = v1;
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_24AD1FFB0;
  v4 = v0[36];
  v3 = v0[37];
  v5 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v3, v5, v1, 0, 1);
}

uint64_t sub_24AD1FFB0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 312);
  v7 = *v3;
  v5[40] = a1;
  v5[41] = a2;
  v5[42] = v2;

  v8 = v4[38];
  v9 = v4[37];
  if (v2)
  {
    v10 = v5[35];
    v11 = v5[32];

    v12 = sub_24AD20314;
  }

  else
  {
    v11 = v5[32];

    v12 = sub_24AD20128;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_24AD20128()
{
  v25 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);

  v3 = [v2 recordID];

  if (!*(v1 + 16))
  {
    v15 = *(v0 + 320);
LABEL_9:

    goto LABEL_10;
  }

  v4 = sub_24AD09620(v3);
  if ((v5 & 1) == 0)
  {
    v16 = *(v0 + 320);
    goto LABEL_9;
  }

  v6 = *(*(v0 + 320) + 56) + 16 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  sub_24ACF40BC(*v6);

  if (v8)
  {
    v9 = *(v0 + 320);
    v10 = *(v0 + 328);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);

    *(v0 + 232) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_willThrowTypedImpl();

    v13 = *(v0 + 8);

    return v13();
  }

  sub_24AD35214(v7);
LABEL_10:
  v18 = *(v0 + 320);
  v17 = *(v0 + 328);
  v19 = *(v0 + 288);
  v20 = *(v0 + 256);
  v24 = 0;
  sub_24AD3B138(v18, v17, &v24, v0 + 16);

  v21 = *(v20 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  v22 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v23 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v23;
  *(v0 + 344) = v21;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v22;

  return MEMORY[0x2822009F8](sub_24AD2037C, v21, 0);
}

uint64_t sub_24AD20314()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 336);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD2037C()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 352) = v2;
  v3 = *(v0 + 256);
  if (v2)
  {
    v4 = sub_24AD206E0;
  }

  else
  {
    v4 = sub_24AD20408;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD20408()
{
  v1 = (*(v0 + 256) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  *(v0 + 224) = *(v0 + 80);
  v5 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v5;
  v6 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v6;
  v7 = *(v2 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 360) = v9;
  *v9 = v0;
  v9[1] = sub_24AD20558;

  return v11(v0 + 160, ObjectType, v2);
}

uint64_t sub_24AD20558()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v7 = *v1;
  *(*v1 + 368) = v0;

  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_24AD20750;
  }

  else
  {
    v5 = sub_24AD20670;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD20670()
{
  v1 = v0[34];
  v2 = v0[35];
  sub_24AD06458((v0 + 2));

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD206E0()
{
  v1 = *(v0 + 280);

  sub_24AD06458(v0 + 16);
  v2 = *(v0 + 352);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD20750()
{
  v1 = *(v0 + 280);

  sub_24AD06458(v0 + 16);
  v2 = *(v0 + 368);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD207C0(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  return MEMORY[0x2822009F8](sub_24AD207E4, v2, 0);
}

uint64_t sub_24AD207E4()
{
  if (sub_24AD1C25C(1u, *(v0[39] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = v0[38];
    v2 = v0[39];
    v3 = v0[37];
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
    v4 = *MEMORY[0x277CBBF28];
    sub_24AD5E844();

    v5 = sub_24AD5EB74();
    v0[40] = v5;
    v0[41] = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
    v6 = swift_task_alloc();
    v0[42] = v6;
    *v6 = v0;
    v6[1] = sub_24AD20988;

    return sub_24ACF834C(v5);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24AD20988(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v7 = *(v3 + 312);
  if (v1)
  {
    v8 = sub_24AD20E20;
  }

  else
  {
    v8 = sub_24AD20ABC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AD20ABC()
{
  v1 = *(v0 + 344);
  if (v1)
  {
    v2 = *(v0 + 312);
    v3 = v1;
    v4 = sub_24AD5EBE4();
    v6 = v5;
    *(v0 + 360) = v4;
    *(v0 + 368) = v5;
    v7 = [v3 recordID];
    *(v0 + 376) = v7;

    v8 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
    *(v0 + 384) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6130, &unk_24AD60540);
    inited = swift_initStackObject();
    *(v0 + 392) = inited;
    *(inited + 16) = xmmword_24AD5F820;
    *(inited + 32) = v4;
    *(inited + 40) = v6;
    *(inited + 48) = v7;

    v10 = v7;

    return MEMORY[0x2822009F8](sub_24AD20C0C, v8, 0);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24AD20C0C()
{
  v1 = [*(v0[48] + 112) privateCloudDatabase];
  v0[50] = v1;
  v2 = swift_task_alloc();
  v0[51] = v2;
  *v2 = v0;
  v2[1] = sub_24AD20CD8;
  v4 = v0[48];
  v3 = v0[49];
  v5 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v5, v3, v1, 0, 1);
}

uint64_t sub_24AD20CD8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 408);
  v13 = *v3;
  v4[52] = a1;
  v4[53] = a2;
  v4[54] = v2;

  if (v2)
  {
    v6 = v4[48];
    v7 = sub_24AD21060;
  }

  else
  {
    v9 = v4[49];
    v8 = v4[50];
    v10 = v4[39];

    swift_setDeallocating();
    v11 = *(v9 + 16);
    swift_arrayDestroy();
    v7 = sub_24AD20E84;
    v6 = v10;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AD20E20()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD20E84()
{
  v31 = v0;
  if (*(*(v0 + 424) + 16))
  {
    v2 = *(v0 + 368);
    v1 = *(v0 + 376);
    v3 = *(v0 + 360);
    v4 = *(v0 + 424);

    v5 = sub_24AD096B4(v3, v2, v1);
    if (v6)
    {
      v7 = *(*(v0 + 424) + 56) + 16 * v5;
      v8 = *v7;
      v9 = *(v7 + 8);
      sub_24AD063F0(*v7, v9);

      if (v9)
      {
        v10 = *(v0 + 416);
        v11 = *(v0 + 424);
        v12 = *(v0 + 368);
        v13 = *(v0 + 376);
        v14 = *(v0 + 344);
        v15 = *(v0 + 320);

        *(v0 + 288) = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
        swift_willThrowTypedImpl();

        v16 = *(v0 + 8);

        return v16();
      }
    }

    else
    {
      v18 = *(v0 + 424);
    }
  }

  v20 = *(v0 + 416);
  v19 = *(v0 + 424);
  v21 = *(v0 + 384);
  v22 = *(v0 + 328);
  v30 = 0;
  sub_24AD3B138(v20, v19, &v30, v28);

  v23 = v28[3];
  *(v0 + 48) = v28[2];
  *(v0 + 64) = v23;
  v24 = v28[1];
  *(v0 + 16) = v28[0];
  *(v0 + 32) = v24;
  v25 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v26 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v26;
  v27 = v29;
  *(v0 + 80) = v29;
  *(v0 + 152) = v27;
  *(v0 + 88) = v25;

  return MEMORY[0x2822009F8](sub_24AD21168, v22, 0);
}

uint64_t sub_24AD21060()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 312);

  swift_setDeallocating();
  v3 = *(v1 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2822009F8](sub_24AD210E8, v2, 0);
}

uint64_t sub_24AD210E8()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[43];
  v4 = v0[40];

  v5 = v0[54];
  v6 = v0[1];

  return v6();
}

uint64_t sub_24AD21168()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 328);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 440) = v1;
  v3 = *(v0 + 312);
  if (v1)
  {
    v4 = sub_24AD214EC;
  }

  else
  {
    v4 = sub_24AD211F8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD211F8()
{
  v1 = (*(v0 + 312) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  *(v0 + 224) = *(v0 + 80);
  v5 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v5;
  v6 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v6;
  v7 = *(v2 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 448) = v9;
  *v9 = v0;
  v9[1] = sub_24AD21348;

  return v11(v0 + 160, ObjectType, v2);
}

uint64_t sub_24AD21348()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v7 = *v1;
  *(*v1 + 456) = v0;

  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_24AD21574;
  }

  else
  {
    v5 = sub_24AD21460;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD21460()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[43];
  v4 = v0[40];
  sub_24AD06458((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AD214EC()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[43];
  v4 = v0[40];

  sub_24AD06458((v0 + 2));
  v5 = v0[55];
  v6 = v0[1];

  return v6();
}

uint64_t sub_24AD21574()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[43];
  v4 = v0[40];

  sub_24AD06458((v0 + 2));
  v5 = v0[57];
  v6 = v0[1];

  return v6();
}

uint64_t sub_24AD215FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[40] = a4;
  v5[41] = v4;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  return MEMORY[0x2822009F8](sub_24AD21624, v4, 0);
}

uint64_t sub_24AD21624()
{
  if (sub_24AD1C25C(1u, *(v0[41] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v1 = v0[40];
    v2 = v0[41];
    v4 = v0[38];
    v3 = v0[39];
    v5 = v0[37];
    sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);

    v6 = sub_24AD5EB74();
    v0[42] = v6;
    v0[43] = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
    v7 = swift_task_alloc();
    v0[44] = v7;
    *v7 = v0;
    v7[1] = sub_24AD217BC;

    return sub_24ACF834C(v6);
  }

  else
  {
    sub_24AD3514C();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_24AD217BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v7 = *(v3 + 328);
  if (v1)
  {
    v8 = sub_24AD21A20;
  }

  else
  {
    v8 = sub_24AD218F0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AD218F0()
{
  v1 = v0[45];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBC680]) initWithRecordZoneID_];
  }

  v0[47] = v1;
  v2 = v0[41];
  v3 = v1;
  v4 = sub_24AD5EBE4();
  v6 = v5;
  v0[48] = v4;
  v0[49] = v5;
  v7 = [v3 recordID];
  v0[50] = v7;

  v8 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
  v0[51] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6130, &unk_24AD60540);
  inited = swift_initStackObject();
  v0[52] = inited;
  *(inited + 16) = xmmword_24AD5F820;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 48) = v7;

  v10 = v7;

  return MEMORY[0x2822009F8](sub_24AD21A84, v8, 0);
}

uint64_t sub_24AD21A20()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD21A84()
{
  v1 = [*(v0[51] + 112) sharedCloudDatabase];
  v0[53] = v1;
  v2 = swift_task_alloc();
  v0[54] = v2;
  *v2 = v0;
  v2[1] = sub_24AD21B50;
  v4 = v0[51];
  v3 = v0[52];
  v5 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v5, v3, v1, 0, 1);
}

uint64_t sub_24AD21B50(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 432);
  v13 = *v3;
  v4[55] = a1;
  v4[56] = a2;
  v4[57] = v2;

  if (v2)
  {
    v6 = v4[51];
    v7 = sub_24AD21E78;
  }

  else
  {
    v9 = v4[52];
    v8 = v4[53];
    v10 = v4[41];

    swift_setDeallocating();
    v11 = *(v9 + 16);
    swift_arrayDestroy();
    v7 = sub_24AD21C98;
    v6 = v10;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AD21C98()
{
  v31 = v0;
  if (*(*(v0 + 448) + 16))
  {
    v2 = *(v0 + 392);
    v1 = *(v0 + 400);
    v3 = *(v0 + 384);
    v4 = *(v0 + 448);

    v5 = sub_24AD096B4(v3, v2, v1);
    if (v6)
    {
      v7 = *(*(v0 + 448) + 56) + 16 * v5;
      v8 = *v7;
      v9 = *(v7 + 8);
      sub_24AD063F0(*v7, v9);

      if (v9)
      {
        v10 = *(v0 + 440);
        v11 = *(v0 + 448);
        v12 = *(v0 + 392);
        v13 = *(v0 + 400);
        v14 = *(v0 + 376);
        v15 = *(v0 + 336);

        *(v0 + 288) = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
        swift_willThrowTypedImpl();

        v16 = *(v0 + 8);

        return v16();
      }
    }

    else
    {
      v18 = *(v0 + 448);
    }
  }

  v20 = *(v0 + 440);
  v19 = *(v0 + 448);
  v21 = *(v0 + 408);
  v22 = *(v0 + 344);
  v30 = 1;
  sub_24AD3B138(v20, v19, &v30, v28);

  v23 = v28[3];
  *(v0 + 48) = v28[2];
  *(v0 + 64) = v23;
  v24 = v28[1];
  *(v0 + 16) = v28[0];
  *(v0 + 32) = v24;
  v25 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v26 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v26;
  v27 = v29;
  *(v0 + 80) = v29;
  *(v0 + 152) = v27;
  *(v0 + 88) = v25;

  return MEMORY[0x2822009F8](sub_24AD21F84, v22, 0);
}

uint64_t sub_24AD21E78()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 328);

  swift_setDeallocating();
  v3 = *(v1 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2822009F8](sub_24AD21F00, v2, 0);
}

uint64_t sub_24AD21F00()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 336);

  v4 = *(v0 + 456);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AD21F84()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 344);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 464) = v1;
  v3 = *(v0 + 328);
  if (v1)
  {
    v4 = sub_24AD22394;
  }

  else
  {
    v4 = sub_24AD22014;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD22014()
{
  v1 = (*(v0 + 328) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  *(v0 + 224) = *(v0 + 80);
  v5 = *(v0 + 64);
  *(v0 + 192) = *(v0 + 48);
  *(v0 + 208) = v5;
  v6 = *(v0 + 32);
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = v6;
  v7 = *(v2 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 472) = v9;
  *v9 = v0;
  v9[1] = sub_24AD22164;

  return v11(v0 + 160, ObjectType, v2);
}

uint64_t sub_24AD22164()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v7 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = *(v2 + 328);
    v5 = sub_24AD22420;
  }

  else
  {
    v4 = *(v2 + 344);
    v5 = sub_24AD2227C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD2227C()
{
  v1 = v0[60];
  v2 = v0[43];
  sub_24ACFB24C(v0[42]);
  v0[61] = v1;
  v3 = v0[41];
  if (v1)
  {
    v4 = sub_24AD224AC;
  }

  else
  {
    v4 = sub_24AD22308;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AD22308()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[47];
  v4 = v0[42];
  sub_24AD06458((v0 + 2));

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AD22394()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 336);

  sub_24AD06458(v0 + 16);
  v4 = *(v0 + 464);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AD22420()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 336);

  sub_24AD06458(v0 + 16);
  v4 = *(v0 + 480);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AD224AC()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[47];
  v4 = v0[42];
  sub_24AD06458((v0 + 2));

  v5 = v0[61];
  v6 = v0[1];

  return v6();
}

uint64_t CloudKitStorage.deinit()
{
  v1 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerURL;
  v2 = sub_24AD5E364();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases);

  v5 = *(v0 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);

  v6 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitAccountStateStream;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A0, &qword_24AD60368);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitPushStream;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6090, &qword_24AD60358);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);

  v11 = *(v0 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  swift_unknownObjectRelease();
  v12 = *(v0 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_stateContinuations);

  v13 = *(v0 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_inFlightChangeSets);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CloudKitStorage.__deallocating_deinit()
{
  CloudKitStorage.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t CloudKitStorage.State.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x62616C696176612ELL;
  if (v1 != 5)
  {
    v3 = 0x6E6F43736E70612ELL;
  }

  v4 = 0x676E6964616F6C2ELL;
  if (v1 != 3)
  {
    v4 = 0x646C69756265722ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C696176616E752ELL;
  if (v1 != 1)
  {
    v5 = 0x756F6363416F6E2ELL;
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

uint64_t sub_24AD22824()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x62616C696176612ELL;
  if (v1 != 5)
  {
    v3 = 0x6E6F43736E70612ELL;
  }

  v4 = 0x676E6964616F6C2ELL;
  if (v1 != 3)
  {
    v4 = 0x646C69756265722ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C696176616E752ELL;
  if (v1 != 1)
  {
    v5 = 0x756F6363416F6E2ELL;
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

uint64_t sub_24AD22940()
{
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_24AD22A70;

  return v9(ObjectType, v2);
}

uint64_t sub_24AD22A70(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_24AD22B88, v3, 0);
}

uint64_t sub_24AD22B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[8];
  v5 = *(v4 + 2);
  v3[9] = v5;
  if (v5)
  {
    v6 = v3[6];
    v7 = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator;
    v3[10] = OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache;
    v8 = *(v6 + v7);
    v9 = *MEMORY[0x277CBBF28];
    v3[11] = v8;
    v3[12] = v9;
    v3[13] = 0;
    if (*(v4 + 2))
    {
      v3[14] = *(v4 + 4);
      v3[15] = *(v4 + 5);

      v4 = sub_24AD22C98;
      a2 = v8;
      a3 = 0;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v4, a2, a3);
  }

  else
  {

    *(v3[6] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated) = 1;
    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_24AD22C98()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v4 = sub_24AD5E834();
  v5 = [v3 initWithZoneName_];
  v0[16] = v5;

  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v6 = sub_24AD5E7A4();
  v0[17] = v6;
  __swift_project_value_buffer(v6, qword_2810654A0);
  v7 = v5;
  v8 = sub_24AD5E784();
  v9 = sub_24AD5EB64();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_24ACF2000, v8, v9, "create zone:  %{public}@", v10, 0xCu);
    sub_24AD06518(v11, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v11, -1, -1);
    MEMORY[0x24C22F400](v10, -1, -1);
  }

  v13 = v0[11];

  v14 = v7;

  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_24AD22EB4;
  v16 = v0[11];

  return sub_24AD52F48(v16, v16, 0, v14);
}

uint64_t sub_24AD22EB4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(v4 + 152) = v1;

  v7 = *(v4 + 88);

  if (v1)
  {
    v8 = sub_24AD23194;
  }

  else
  {
    *(v4 + 160) = a1;
    v8 = sub_24AD23014;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AD23014()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD23098, v3, 0);
}

uint64_t sub_24AD23098(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[13] + 1;
  if (v4 == v3[9])
  {
    v5 = v3[8];

    *(v3[6] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated) = 1;
    v6 = v3[1];

    return v6();
  }

  else
  {
    v3[13] = v4;
    v8 = v3[8];
    if (v4 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      v9 = v3[11];
      v10 = v8 + 16 * v4;
      v3[14] = *(v10 + 32);
      v3[15] = *(v10 + 40);

      a1 = sub_24AD22C98;
      a2 = v9;
      a3 = 0;
    }

    return MEMORY[0x2822009F8](a1, a2, a3);
  }
}

uint64_t sub_24AD23194()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD23200, v1, 0);
}

uint64_t sub_24AD23200()
{
  v1 = *(v0 + 152);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 24);
    *(v0 + 32) = v3;
    *(v0 + 168) = v3;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError);
    sub_24AD5E2E4();
    v4 = *(v0 + 120);
    if (*(v0 + 40) == 112)
    {
      v5 = *(v0 + 112);
      v6 = *(v0 + 96);
      sub_24AD06578(0, &qword_281064998, 0x277CBC5F8);
      sub_24AD5E844();

      v7 = sub_24AD5EB74();
      *(v0 + 176) = v7;
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      *(v0 + 184) = __swift_project_value_buffer(*(v0 + 136), qword_281065448);
      v8 = v7;
      v9 = sub_24AD5E784();
      v10 = sub_24AD5EB44();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138543362;
        *(v11 + 4) = v8;
        *v12 = v8;
        v13 = v8;
        _os_log_impl(&dword_24ACF2000, v9, v10, "Identity missing attempting to create zone: %{public}@", v11, 0xCu);
        sub_24AD06518(v12, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v12, -1, -1);
        MEMORY[0x24C22F400](v11, -1, -1);
      }

      v14 = v8;
      v15 = sub_24AD5E784();
      v16 = sub_24AD5EB64();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138543362;
        *(v17 + 4) = v14;
        *v18 = v14;
        v19 = v14;
        _os_log_impl(&dword_24ACF2000, v15, v16, "Deleting unreadable zone: %{public}@", v17, 0xCu);
        sub_24AD06518(v18, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v18, -1, -1);
        MEMORY[0x24C22F400](v17, -1, -1);
      }

      *(v0 + 240) = 0;
      v20 = swift_task_alloc();
      *(v0 + 192) = v20;
      *v20 = v0;
      v20[1] = sub_24AD23618;
      v21 = *(v0 + 88);

      return sub_24AD454E0(v14, (v0 + 240));
    }

    v26 = *(v0 + 64);

    swift_willThrow();
  }

  else
  {
    v23 = *(v0 + 120);
    v24 = *(v0 + 64);

    v25 = *(v0 + 152);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24AD23618()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v10 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = v2[15];
    v5 = v2[8];
    v6 = v2[6];

    v7 = sub_24AD23BF0;
    v8 = v6;
  }

  else
  {
    v8 = v2[6];
    v7 = sub_24AD2374C;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_24AD2374C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  v3 = sub_24AD5E784();
  v4 = sub_24AD5EB64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_24ACF2000, v3, v4, "Re-creating new zone: %{public}@", v6, 0xCu);
    sub_24AD06518(v7, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v7, -1, -1);
    MEMORY[0x24C22F400](v6, -1, -1);
  }

  *(v0 + 241) = 0;
  v9 = swift_task_alloc();
  *(v0 + 208) = v9;
  *v9 = v0;
  v9[1] = sub_24AD238CC;
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 88);

  return sub_24AD44BD4(v11, v10, (v0 + 241));
}

uint64_t sub_24AD238CC(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v12 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v6 = v4[15];
    v7 = v4[8];
    v8 = v4[6];

    v9 = sub_24AD23C60;
  }

  else
  {
    v10 = v4[15];
    v8 = v4[6];

    v9 = sub_24AD23A18;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24AD23A18()
{
  v1 = *(v0[6] + v0[10]);
  v0[28] = v1;
  return MEMORY[0x2822009F8](sub_24AD23A40, v1, 0);
}

uint64_t sub_24AD23A40()
{
  v2 = v0[27];
  v1 = v0[28];
  sub_24ACFB24C(v0[22]);
  v0[29] = v2;
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[6];

    v5 = sub_24AD23CD0;
    v6 = v4;
  }

  else
  {
    v6 = v0[6];
    v5 = sub_24AD23AE0;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_24AD23AE0()
{
  v1 = *(v0 + 168);

  v5 = *(v0 + 104) + 1;
  if (v5 == *(v0 + 72))
  {
    v6 = *(v0 + 64);

    *(*(v0 + 48) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_zonesCreated) = 1;
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    *(v0 + 104) = v5;
    v9 = *(v0 + 64);
    if (v5 >= *(v9 + 16))
    {
      __break(1u);
    }

    else
    {
      v10 = *(v0 + 88);
      v11 = v9 + 16 * v5;
      *(v0 + 112) = *(v11 + 32);
      *(v0 + 120) = *(v11 + 40);

      v2 = sub_24AD22C98;
      v3 = v10;
      v4 = 0;
    }

    return MEMORY[0x2822009F8](v2, v3, v4);
  }
}

uint64_t sub_24AD23BF0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 200);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD23C60()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 216);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD23CD0()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 232);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD23D60()
{
  v1 = v0[6];
  sub_24AD06578(0, &qword_281064978, 0x277CBC2A0);
  v2 = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier);
  v3 = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_containerIdentifier + 8);

  v4 = sub_24AD5EB94();
  v0[7] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCoordinator);
  v0[8] = v5;
  v0[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = xmmword_24AD60330;
  *(v6 + 32) = v4;
  v7 = v4;

  return MEMORY[0x2822009F8](sub_24AD23E68, v5, 0);
}

uint64_t sub_24AD23E68()
{
  *(v0 + 88) = [*(*(v0 + 64) + 112) privateCloudDatabase];

  return MEMORY[0x2822009F8](sub_24AD23EE8, 0, 0);
}

uint64_t sub_24AD23EE8()
{
  v1 = v0[10];
  v2 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  v0[12] = v2;
  v3 = swift_task_alloc();
  v4 = MEMORY[0x277D84F90];
  v0[13] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277CBBE68] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6228, &qword_24AD60CE0);
  v0[15] = v7;
  *v6 = v0;
  v6[1] = sub_24AD24008;
  v8 = v0[11];

  return MEMORY[0x28210DEC0](v0 + 2, v2, 0, &unk_24AD60978, v3, v7);
}

uint64_t sub_24AD24008()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_24AD2429C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_24AD24124;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD24124()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);

  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_24AD241B8, v3, 0);
}

uint64_t sub_24AD241B8()
{
  if (sub_24AD1C25C(1u, *(v0[6] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases)))
  {
    v2 = v0[8];
    v1 = v0[9];
    v3 = v0[7];
    v4 = swift_allocObject();
    v0[17] = v4;
    *(v4 + 16) = xmmword_24AD60330;
    *(v4 + 32) = v3;

    return MEMORY[0x2822009F8](sub_24AD24398, v2, 0);
  }

  else
  {
    v5 = v0[7];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AD2429C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_24AD24334, v4, 0);
}

uint64_t sub_24AD24334()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD24398()
{
  *(v0 + 144) = [*(*(v0 + 64) + 112) sharedCloudDatabase];

  return MEMORY[0x2822009F8](sub_24AD24418, 0, 0);
}

uint64_t sub_24AD24418()
{
  v1 = v0[17];
  v2 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  v0[19] = v2;
  v3 = swift_task_alloc();
  v4 = MEMORY[0x277D84F90];
  v0[20] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277CBBE68] + 4);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_24AD24520;
  v7 = v0[18];
  v8 = v0[15];

  return MEMORY[0x28210DEC0](v0 + 4, v2, 0, &unk_24AD60980, v3, v8);
}

uint64_t sub_24AD24520()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_24AD24734;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_24AD2463C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD2463C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);
  v3 = *(v0 + 48);

  v4 = *(v0 + 32);

  v5 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24AD246D0, v3, 0);
}

uint64_t sub_24AD246D0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24AD24734()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_24AD247A8, v2, 0);
}

uint64_t sub_24AD247A8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD2481C, v2, 0);
}

uint64_t sub_24AD2481C()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD24880()
{
  *(v1 + 80) = v0;
  *(v1 + 88) = *v0;
  return MEMORY[0x2822009F8](sub_24AD248C8, v0, 0);
}

uint64_t sub_24AD248C8()
{
  v1 = (*(v0 + 80) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_24AD249F8;

  return v9(ObjectType, v2);
}

uint64_t sub_24AD249F8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 80);

    return MEMORY[0x2822009F8](sub_24AD24B40, v7, 0);
  }
}

uint64_t sub_24AD24B40()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 112) = v1;
  return MEMORY[0x2822009F8](sub_24AD24B6C, v1, 0);
}

uint64_t sub_24AD24B6C()
{
  v2 = v0[13];
  v1 = v0[14];
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  sub_24AD5E6F4();
  if (v2)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_24AD24C90;
    v6 = v0[10];

    return sub_24AD22920();
  }
}

uint64_t sub_24AD24C90()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v2 + 128) = v7;
    *v7 = v4;
    v7[1] = sub_24AD24E00;
    v8 = *(v2 + 80);

    return sub_24AD23D40();
  }
}

uint64_t sub_24AD24E00()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v2 + 136) = v7;
    *v7 = v4;
    v7[1] = sub_24AD24F70;
    v8 = *(v2 + 80);

    return sub_24AD26748();
  }
}

uint64_t sub_24AD24F70(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *v1;

  if (a1)
  {
    *(v3 + 253) = 5;
    v6 = (v3 + 253);
    v7 = swift_task_alloc();
    *(v6 - 109) = v7;
    *v7 = v5;
    v7[1] = sub_24AD25108;
    v8 = *(v6 - 173);
  }

  else
  {
    *(v3 + 248) = 3;
    v6 = (v3 + 248);
    v9 = swift_task_alloc();
    *(v6 - 9) = v9;
    *v9 = v5;
    v9[1] = sub_24AD257E0;
    v10 = *(v6 - 21);
  }

  return sub_24AD1B554(v6);
}

uint64_t sub_24AD25108()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD25218, v2, 0);
}

uint64_t sub_24AD25218()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases);
  v4 = swift_task_alloc();
  v0[19] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = *(MEMORY[0x277D08918] + 4);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_24AD25304;

  return MEMORY[0x28215EB00]("syncWithCloudKit", 16, 2, &unk_24AD60970, v4);
}

uint64_t sub_24AD25304()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {
    v4 = v3[10];

    return MEMORY[0x2822009F8](sub_24AD25440, v4, 0);
  }

  else
  {
    v5 = v3[19];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_24AD25440()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  *(v0 + 48) = v1;
  v3 = (v0 + 48);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 56);
    *(v0 + 64) = v5;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError);
    sub_24AD5E2E4();
    if (*(v0 + 72) == 3)
    {
      v6 = *(v0 + 80);

      *(v6 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_initialFetchFailed) = 1;
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v7 = sub_24AD5E7A4();
      __swift_project_value_buffer(v7, qword_281065448);
      v8 = v5;
      v9 = sub_24AD5E784();
      v10 = sub_24AD5EB44();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138543362;
        v13 = sub_24AD5E324();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&dword_24ACF2000, v9, v10, "Error from syncWithCloudKit: %{public}@", v11, 0xCu);
        sub_24AD06518(v12, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v12, -1, -1);
        MEMORY[0x24C22F400](v11, -1, -1);
      }

      swift_willThrow();
      goto LABEL_14;
    }
  }

  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 168);
  v15 = sub_24AD5E7A4();
  __swift_project_value_buffer(v15, qword_281065448);
  v16 = v14;
  v17 = sub_24AD5E784();
  v18 = sub_24AD5EB44();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 168);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    v22 = sub_24AD5E324();
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&dword_24ACF2000, v17, v18, "Error from syncWithCloudKit: %{public}@", v20, 0xCu);
    sub_24AD06518(v21, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v21, -1, -1);
    MEMORY[0x24C22F400](v20, -1, -1);
  }

  v23 = *(v0 + 168);

  swift_willThrow();
  v24 = *(v0 + 168);
LABEL_14:
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_24AD257E0()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD258F0, v2, 0);
}

uint64_t sub_24AD258F0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = *(v2 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_databases);
  v4 = swift_task_alloc();
  v0[23] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = *(MEMORY[0x277D08918] + 4);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_24AD259DC;

  return MEMORY[0x28215EB00]("syncWithCloudKit", 16, 2, &unk_24AD60968, v4);
}

uint64_t sub_24AD259DC()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  *(v3 + 200) = v0;

  if (v0)
  {
    v4 = *(v3 + 80);

    return MEMORY[0x2822009F8](sub_24AD25D8C, v4, 0);
  }

  else
  {
    v5 = *(v3 + 184);

    *(v3 + 251) = 5;
    v6 = swift_task_alloc();
    *(v3 + 208) = v6;
    *v6 = v3;
    v6[1] = sub_24AD25B5C;
    v7 = *(v3 + 80);

    return sub_24AD1B554((v3 + 251));
  }
}

uint64_t sub_24AD25B5C()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v7 = *v0;

  *(v1 + 252) = 5;
  v3 = (v1 + 252);
  v4 = swift_task_alloc();
  *(v3 - 36) = v4;
  *v4 = v7;
  v4[1] = sub_24AD25C94;
  v5 = *(v3 - 172);

  return sub_24AD1B554(v3);
}

uint64_t sub_24AD25C94()
{
  v1 = *(*v0 + 216);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AD25D8C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);

  *(v0 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 24);
    *(v0 + 32) = v4;
    sub_24AD34F14(&qword_281064A28, type metadata accessor for CKError);
    sub_24AD5E2E4();
    if (*(v0 + 40) == 3)
    {
      v5 = *(v0 + 80);

      *(v5 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_initialFetchFailed) = 1;
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      v6 = sub_24AD5E7A4();
      __swift_project_value_buffer(v6, qword_281065448);
      v7 = v4;
      v8 = sub_24AD5E784();
      v9 = sub_24AD5EB44();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138543362;
        v12 = sub_24AD5E324();
        *(v10 + 4) = v12;
        *v11 = v12;
        _os_log_impl(&dword_24ACF2000, v8, v9, "Error from syncWithCloudKit: %{public}@", v10, 0xCu);
        sub_24AD06518(v11, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v11, -1, -1);
        MEMORY[0x24C22F400](v10, -1, -1);
      }

      swift_willThrow();
      *(v0 + 224) = v7;
      v13 = v7;
      if (qword_281064D90 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v6, qword_281065448);
      v14 = v7;
      v15 = sub_24AD5E784();
      v16 = sub_24AD5EB44();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138543362;
        v19 = sub_24AD5E324();
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&dword_24ACF2000, v15, v16, "Error during .manateeAvailable handler: %{public}@", v17, 0xCu);
        sub_24AD06518(v18, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v18, -1, -1);
        MEMORY[0x24C22F400](v17, -1, -1);
      }

      *(v0 + 250) = 1;
      v20 = (v0 + 250);
      v21 = swift_task_alloc();
      *(v0 + 232) = v21;
      *v21 = v0;
      v22 = sub_24AD262DC;
      goto LABEL_18;
    }
  }

  v23 = *(v0 + 80);

  *(v23 + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_initialFetchFailed) = 1;
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 200);
  v25 = sub_24AD5E7A4();
  __swift_project_value_buffer(v25, qword_281065448);
  v26 = v24;
  v27 = sub_24AD5E784();
  v28 = sub_24AD5EB44();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 200);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138543362;
    v32 = sub_24AD5E324();
    *(v30 + 4) = v32;
    *v31 = v32;
    _os_log_impl(&dword_24ACF2000, v27, v28, "Error from initial syncWithCloudKit: %{public}@", v30, 0xCu);
    sub_24AD06518(v31, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v31, -1, -1);
    MEMORY[0x24C22F400](v30, -1, -1);
  }

  *(v0 + 249) = 1;
  v20 = (v0 + 249);
  v21 = swift_task_alloc();
  *(v0 + 240) = v21;
  *v21 = v0;
  v22 = sub_24AD2645C;
LABEL_18:
  v21[1] = v22;
  v33 = *(v0 + 80);

  return sub_24AD1B554(v20);
}

uint64_t sub_24AD262DC()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD263EC, v2, 0);
}

uint64_t sub_24AD263EC()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD2645C()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD2656C, v2, 0);
}

uint64_t sub_24AD2656C()
{
  v1 = *(v0 + 200);
  swift_willThrow();
  v2 = *(v0 + 200);
  *(v0 + 224) = v2;
  v3 = v2;
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v4 = sub_24AD5E7A4();
  __swift_project_value_buffer(v4, qword_281065448);
  v5 = v2;
  v6 = sub_24AD5E784();
  v7 = sub_24AD5EB44();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = sub_24AD5E324();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_24ACF2000, v6, v7, "Error during .manateeAvailable handler: %{public}@", v8, 0xCu);
    sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v9, -1, -1);
    MEMORY[0x24C22F400](v8, -1, -1);
  }

  *(v0 + 250) = 1;
  v11 = swift_task_alloc();
  *(v0 + 232) = v11;
  *v11 = v0;
  v11[1] = sub_24AD262DC;
  v12 = *(v0 + 80);

  return sub_24AD1B554((v0 + 250));
}

uint64_t sub_24AD26768()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 24) = v1;
  *(v0 + 48) = 0;
  return MEMORY[0x2822009F8](sub_24AD26798, v1, 0);
}

uint64_t sub_24AD26798()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = sub_24ACF9580((v0 + 48));
  *(v0 + 40) = 0;
  v2 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_24AD26828, v2, 0);
}

uint64_t sub_24AD26828()
{
  v1 = *(v0 + 32);
  if (v1)
  {
  }

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}

uint64_t sub_24AD26894()
{
  if (qword_281064D90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_281065448);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24ACF2000, v4, v5, "Error in alreadyHaveDatabaseTokens: %{public}@", v8, 0xCu);
    sub_24AD06518(v9, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v9, -1, -1);
    MEMORY[0x24C22F400](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_24AD26A3C(uint64_t a1, uint64_t a2)
{
  v2[141] = a2;
  v2[140] = a1;
  v3 = sub_24AD5EA64();
  v2[142] = v3;
  v4 = *(v3 - 8);
  v2[143] = v4;
  v5 = *(v4 + 64) + 15;
  v2[144] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD26B00, 0, 0);
}

uint64_t sub_24AD26B00()
{
  v1 = (v0[140] + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_dataStore);
  v0[145] = *v1;
  v2 = v1[1];
  v0[146] = v2;
  ObjectType = swift_getObjectType();
  v0[147] = ObjectType;
  v4 = *(v2 + 48);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[148] = v6;
  *v6 = v0;
  v6[1] = sub_24AD26C40;

  return v8(ObjectType, v2);
}

uint64_t sub_24AD26C40()
{
  v2 = *v1;
  v3 = *(*v1 + 1184);
  v4 = *v1;
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v5 = *(v2 + 1152);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD26D90, 0, 0);
  }
}

uint64_t sub_24AD26D90()
{
  v1 = *(*(v0 + 1120) + OBJC_IVAR____TtC14FindMyCloudKit15CloudKitStorage_cloudKitCache);
  *(v0 + 1200) = v1;
  return MEMORY[0x2822009F8](sub_24AD26DBC, v1, 0);
}

uint64_t sub_24AD26DBC()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  type metadata accessor for CloudKitCacheDatabase();
  sub_24AD34F14(&qword_281064FE8, type metadata accessor for CloudKitCacheDatabase);
  sub_24AD5E6F4();
  *(v0 + 1208) = v2;
  if (v2)
  {
    v3 = *(v0 + 1152);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 1200);
    *(v0 + 1493) = 0;

    return MEMORY[0x2822009F8](sub_24AD26EC4, v6, 0);
  }
}

uint64_t sub_24AD26EC4()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  *(v0 + 1216) = sub_24ACF9580((v0 + 1493));
  *(v0 + 1224) = v1;
  if (v1)
  {
    v3 = sub_24AD28060;
    v4 = 0;
  }

  else
  {
    v4 = *(v0 + 1200);
    v3 = sub_24AD26F60;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_24AD26F60()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1200);
  v3 = sub_24ACFA1A8();
  *(v0 + 1232) = v3;
  *(v0 + 1240) = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24AD280C4, 0, 0);
  }

  else
  {
    v4 = v3;
    *(v0 + 1492) = 0;
    v5 = swift_task_alloc();
    *(v0 + 1248) = v5;
    *v5 = v0;
    v5[1] = sub_24AD27068;
    v6 = *(v0 + 1216);
    v7 = *(v0 + 1120);

    return sub_24AD29E60(v0 + 520, v6, v4, (v0 + 1492));
  }
}

uint64_t sub_24AD27068()
{
  v2 = *v1;
  v3 = *(*v1 + 1248);
  v7 = *v1;
  *(*v1 + 1256) = v0;

  v4 = *(v2 + 1232);

  if (v0)
  {
    v5 = sub_24AD28318;
  }

  else
  {
    v5 = sub_24AD2718C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24AD2718C()
{
  v1 = *(v0 + 536);
  *(v0 + 304) = *(v0 + 520);
  *(v0 + 320) = v1;
  v2 = *(v0 + 584);
  *(v0 + 368) = v2;
  v3 = *(v0 + 568);
  *(v0 + 336) = *(v0 + 552);
  *(v0 + 352) = v3;
  v4 = *(v0 + 304);
  *(v0 + 1264) = v4;
  *(v0 + 1024) = *(v0 + 528);
  v5 = *(v0 + 328);
  *(v0 + 1272) = v5;
  v6 = *(v0 + 552);
  v7 = *(v0 + 568);
  *(v0 + 1016) = v2;
  *(v0 + 984) = v6;
  *(v0 + 1000) = v7;
  if (v4)
  {
    v8 = *(v0 + 1200);
    *(v0 + 232) = v4;
    *(v0 + 240) = *(v0 + 528);
    *(v0 + 256) = v5;
    v9 = *(v0 + 568);
    *(v0 + 264) = *(v0 + 552);
    *(v0 + 280) = v9;
    *(v0 + 296) = *(v0 + 584);
    v10 = sub_24AD272D4;
LABEL_5:

    return MEMORY[0x2822009F8](v10, v8, 0);
  }

  *(v0 + 1304) = *(v0 + 1256);
  if (sub_24AD1C25C(1u, *(v0 + 1128)))
  {
    v8 = *(v0 + 1200);
    *(v0 + 1491) = 1;
    v10 = sub_24AD277DC;
    goto LABEL_5;
  }

  v11 = *(v0 + 1152);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24AD272D4()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1200);
  sub_24ACFBDBC((v0 + 232));
  *(v0 + 1280) = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24AD285E8, 0, 0);
  }

  else
  {
    v3 = *(v0 + 1272);
    v4 = *(v0 + 1168);
    *(v0 + 16) = *(v0 + 1264);
    *(v0 + 24) = *(v0 + 1024);
    *(v0 + 40) = v3;
    *(v0 + 80) = *(v0 + 1016);
    v5 = *(v0 + 1000);
    *(v0 + 48) = *(v0 + 984);
    *(v0 + 64) = v5;
    v12 = (*(v4 + 24) + **(v4 + 24));
    v6 = *(*(v4 + 24) + 4);
    v7 = swift_task_alloc();
    *(v0 + 1288) = v7;
    *v7 = v0;
    v7[1] = sub_24AD27470;
    v8 = *(v0 + 1176);
    v9 = *(v0 + 1168);
    v10 = *(v0 + 1160);

    return v12(v0 + 16, v8, v9);
  }
}

uint64_t sub_24AD27470()
{
  v2 = *(*v1 + 1288);
  v5 = *v1;
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v3 = sub_24AD288D0;
  }

  else
  {
    v3 = sub_24AD27584;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD27584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 1272);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = *(v3 + 1144);
    v24 = MEMORY[0x277D84F90];
    sub_24AD5ED94();
    v10 = *(v7 + 16);
    v8 = v7 + 16;
    v9 = v10;
    v11 = v4 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v13 = *(v3 + 1152);
      v14 = *(v3 + 1136);
      v15 = v9(v13, v11, v14);
      MEMORY[0x24C22E740](v15);
      (*(v8 - 8))(v13, v14);
      sub_24AD5ED74();
      v16 = *(v24 + 16);
      sub_24AD5EDA4();
      sub_24AD5EDB4();
      a1 = sub_24AD5ED84();
      v11 += v12;
      --v5;
    }

    while (v5);
    v6 = v24;
  }

  if (v6 >> 62)
  {
    a1 = sub_24AD5EC94();
    v17 = a1;
    if (!a1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  if (v17 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  for (i = 0; i != v17; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x24C22EA30](i, v6);
    }

    else
    {
      v19 = *(v6 + 8 * i + 32);
    }

    v20 = v19;
    sub_24AD37F24(v19);
  }

LABEL_14:

  sub_24AD06518(v3 + 304, &qword_27EFA61C0, &qword_24AD608C8);
  *(v3 + 1304) = *(v3 + 1296);
  if (sub_24AD1C25C(1u, *(v3 + 1128)))
  {
    a2 = *(v3 + 1200);
    *(v3 + 1491) = 1;
    a1 = sub_24AD277DC;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v21 = *(v3 + 1152);

  v22 = *(v3 + 8);

  return v22();
}

uint64_t sub_24AD277DC()
{
  v1 = *(v0 + 1304);
  v2 = *(v0 + 1200);
  *(v0 + 1312) = sub_24ACF9580((v0 + 1491));
  *(v0 + 1320) = v1;
  if (v1)
  {
    v3 = sub_24AD28C34;
    v4 = 0;
  }

  else
  {
    v4 = *(v0 + 1200);
    v3 = sub_24AD27878;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_24AD27878()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1200);
  v3 = sub_24ACFA1A8();
  *(v0 + 1328) = v3;
  *(v0 + 1336) = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24AD28CA0, 0, 0);
  }

  else
  {
    v4 = v3;
    *(v0 + 1490) = 1;
    v5 = swift_task_alloc();
    *(v0 + 1344) = v5;
    *v5 = v0;
    v5[1] = sub_24AD27984;
    v6 = *(v0 + 1312);
    v7 = *(v0 + 1120);

    return sub_24AD29E60(v0 + 160, v6, v4, (v0 + 1490));
  }
}

uint64_t sub_24AD27984()
{
  v2 = *(*v1 + 1344);
  v5 = *v1;
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v3 = sub_24AD2938C;
  }

  else
  {
    v3 = sub_24AD27A98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AD27A98()
{
  v1 = *(v0 + 176);
  *(v0 + 808) = *(v0 + 160);
  *(v0 + 824) = v1;
  v3 = *(v0 + 192);
  v2 = *(v0 + 208);
  *(v0 + 840) = v3;
  *(v0 + 856) = v2;
  v4 = *(v0 + 224);
  *(v0 + 872) = v4;
  v5 = *(v0 + 808);
  *(v0 + 1360) = v5;
  *(v0 + 1040) = *(v0 + 168);
  v6 = *(v0 + 832);
  *(v0 + 1368) = v6;
  *(v0 + 944) = v3;
  *(v0 + 960) = v2;
  *(v0 + 976) = v4;
  if (v5)
  {
    v7 = *(v0 + 1200);
    *(v0 + 88) = v5;
    *(v0 + 96) = *(v0 + 168);
    *(v0 + 112) = v6;
    v8 = *(v0 + 208);
    *(v0 + 120) = *(v0 + 192);
    *(v0 + 136) = v8;
    *(v0 + 152) = *(v0 + 224);

    return MEMORY[0x2822009F8](sub_24AD27BB0, v7, 0);
  }

  else
  {
    v9 = *(v0 + 1328);
    v10 = *(v0 + 1312);
    v11 = *(v0 + 1216);

    v12 = *(v0 + 1152);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_24AD27BB0()
{
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1200);
  sub_24ACFBDBC((v0 + 88));
  *(v0 + 1376) = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24AD29658, 0, 0);
  }

  else
  {
    v3 = *(v0 + 1368);
    v4 = *(v0 + 1168);
    *(v0 + 376) = *(v0 + 1360);
    *(v0 + 384) = *(v0 + 1040);
    *(v0 + 400) = v3;
    v5 = *(v0 + 960);
    *(v0 + 408) = *(v0 + 944);
    *(v0 + 424) = v5;
    *(v0 + 440) = *(v0 + 976);
    v12 = (*(v4 + 24) + **(v4 + 24));
    v6 = *(*(v4 + 24) + 4);
    v7 = swift_task_alloc();
    *(v0 + 1384) = v7;
    *v7 = v0;
    v7[1] = sub_24AD27D4C;
    v8 = *(v0 + 1176);
    v9 = *(v0 + 1168);
    v10 = *(v0 + 1160);

    return v12(v0 + 376, v8, v9);
  }
}

uint64_t sub_24AD27D4C()
{
  v2 = *v1;
  v3 = *(*v1 + 1384);
  v7 = *v1;
  *(*v1 + 1392) = v0;

  if (v0)
  {
    v4 = sub_24AD2993C;
  }

  else
  {
    v5 = *(v2 + 1328);

    v4 = sub_24AD27E68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24AD27E68()
{
  v1 = v0[171];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[143];
    v22 = MEMORY[0x277D84F90];
    sub_24AD5ED94();
    v7 = *(v4 + 16);
    v5 = v4 + 16;
    v6 = v7;
    v8 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v9 = *(v5 + 56);
    do
    {
      v10 = v0[144];
      v11 = v0[142];
      v12 = v6(v10, v8, v11);
      MEMORY[0x24C22E740](v12);
      (*(v5 - 8))(v10, v11);
      sub_24AD5ED74();
      v13 = *(v22 + 16);
      sub_24AD5EDA4();
      sub_24AD5EDB4();
      sub_24AD5ED84();
      v8 += v9;
      --v2;
    }

    while (v2);
    v3 = v22;
  }

  if (v3 >> 62)
  {
    v14 = sub_24AD5EC94();
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x24C22EA30](i, v3);
    }

    else
    {
      v16 = *(v3 + 8 * i + 32);
    }

    v17 = v16;
    sub_24AD37F24(v16);
  }

LABEL_14:
  v18 = v0[164];
  v19 = v0[152];

  sub_24AD06518((v0 + 101), &qword_27EFA61C0, &qword_24AD608C8);
  v20 = v0[144];

  v21 = v0[1];

  v21();
}