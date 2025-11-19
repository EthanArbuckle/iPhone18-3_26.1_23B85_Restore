uint64_t sub_2284F1A10(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2284F73FC;
  *(v7 + 24) = v5;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockHealthPlatformOrchestrationContext.feedItemStorageHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockHealthPlatformOrchestrationContext.feedItemStorageHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F73FC;
  v3[8] = v7;

  return sub_2284F1D54;
}

uint64_t MockHealthPlatformOrchestrationContext.feedItemStorage(for:bundleIdentifier:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v19[-1] - v13;
  v15 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__feedItemStorageHandler;
  swift_beginAccess();
  (*(v11 + 16))(v14, v5 + v15, v10);
  sub_22855C94C();
  (*(v11 + 8))(v14, v10);
  v16 = v19[0];
  v19[0] = a1;
  v19[1] = a2;
  v20 = a5;
  v16(v19, &v20);
}

uint64_t (*MockHealthPlatformOrchestrationContext.anchorStorageHandler.getter())(uint64_t a1, uint64_t a2)
{
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__anchorStorageHandler;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_22855C94C();
  (*(v3 + 8))(v6, v2);
  *(swift_allocObject() + 16) = v9;
  return sub_2284F23E4;
}

unint64_t sub_2284F2094()
{
  result = qword_27D8402F8;
  if (!qword_27D8402F8)
  {
    sub_22842BFBC(255, &qword_27D840300);
    sub_22842BFBC(255, &qword_27D840308);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27D8402F8);
  }

  return result;
}

double sub_2284F2128@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X5>, _OWORD *a5@<X8>)
{
  sub_2284F5F48(0, a2, a3, MEMORY[0x277D11C80]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v17 - v12;
  v14 = *a1;
  v15 = *a4;
  swift_beginAccess();
  (*(v10 + 16))(v13, v14 + v15, v9);
  sub_22855C94C();
  (*(v10 + 8))(v13, v9);
  result = v17[0];
  *a5 = *v17;
  return result;
}

void *sub_2284F2264@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MockAnchorStorage();
  swift_allocObject();
  result = MockAnchorStorage.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for MockAnchorStorage;
  *a1 = result;
  return result;
}

uint64_t sub_2284F22C4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2284F73B4;
  *(v7 + 24) = v5;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockHealthPlatformOrchestrationContext.anchorStorageHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t sub_2284F24DC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

void (*MockHealthPlatformOrchestrationContext.anchorStorageHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F73B4;
  v3[8] = v7;

  return sub_2284F261C;
}

uint64_t MockHealthPlatformOrchestrationContext.anchorStorage(for:)(uint64_t a1, uint64_t a2)
{
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15[-1] - v9;
  v11 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__anchorStorageHandler;
  swift_beginAccess();
  (*(v7 + 16))(v10, v2 + v11, v6);
  sub_22855C94C();
  (*(v7 + 8))(v10, v6);
  v12 = v15[0];
  v15[0] = a1;
  v15[1] = a2;
  v12(v15);
}

void *(*MockHealthPlatformOrchestrationContext.notificationManagerHandler.getter())(uint64_t a1, uint64_t a2)
{
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__notificationManagerHandler;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_22855C94C();
  (*(v3 + 8))(v6, v2);
  *(swift_allocObject() + 16) = v9;
  return sub_2284F2B74;
}

unint64_t sub_2284F2950()
{
  result = qword_27D840320;
  if (!qword_27D840320)
  {
    sub_22842BFBC(255, &qword_27D840328);
    sub_22842BFBC(255, &qword_280DE9E30);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27D840320);
  }

  return result;
}

uint64_t sub_2284F29E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MockPluginNotificationManager();
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  swift_allocObject();
  result = MockPluginNotificationManager.init(contentStateManager:)(v3);
  *a1 = result;
  a1[1] = &protocol witness table for MockPluginNotificationManager;
  return result;
}

uint64_t sub_2284F2A54(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2284F736C;
  *(v7 + 24) = v5;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockHealthPlatformOrchestrationContext.notificationManagerHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockHealthPlatformOrchestrationContext.notificationManagerHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F736C;
  v3[8] = v7;

  return sub_2284F2D94;
}

uint64_t MockHealthPlatformOrchestrationContext.notificationManager(for:)(uint64_t a1, uint64_t a2)
{
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, MEMORY[0x277D11C80]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v15 - v10;
  v12 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__notificationManagerHandler;
  swift_beginAccess();
  (*(v8 + 16))(v11, v2 + v12, v7);
  sub_22855C94C();
  (*(v8 + 8))(v11, v7);
  v13 = v17[0];
  v17[0] = a1;
  v17[1] = a2;
  v13(&v16, v17);

  if (!v3)
  {
    return v16;
  }

  return result;
}

uint64_t (*MockHealthPlatformOrchestrationContext.sharedSummaryTransactionBuilderHandler.getter())(uint64_t a1, uint64_t a2)
{
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharedSummaryTransactionBuilderHandler;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_22855C94C();
  (*(v3 + 8))(v6, v2);
  *(swift_allocObject() + 16) = v9;
  return sub_2284F337C;
}

void sub_2284F3114(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v4 = sub_22855D17C();
  v5 = [v3 initWithDomain:v4 code:-1 userInfo:0];

  v6 = v5;
  v7 = 1;
  v2(&v6);
}

uint64_t sub_2284F31C8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2284F735C;
  *(v7 + 24) = v5;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t sub_2284F32E8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_22841C0FC;
  v8[1] = v6;
  a3(v8);
}

uint64_t MockHealthPlatformOrchestrationContext.sharedSummaryTransactionBuilderHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockHealthPlatformOrchestrationContext.sharedSummaryTransactionBuilderHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F735C;
  v3[8] = v7;

  return sub_2284F3578;
}

uint64_t MockHealthPlatformOrchestrationContext.sharedSummaryTransactionBuilder(completion:)(uint64_t a1, uint64_t a2)
{
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, MEMORY[0x277D11C80]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16[-1] - v9;
  v11 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharedSummaryTransactionBuilderHandler;
  swift_beginAccess();
  (*(v7 + 16))(v10, v2 + v11, v6);
  sub_22855C94C();
  (*(v7 + 8))(v10, v6);
  v12 = v16[0];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v16[0] = sub_22841B3C0;
  v16[1] = v13;
  v12(v16);
}

uint64_t (*MockHealthPlatformOrchestrationContext.sharingSummaryProfileTransactionBuilderHandler.getter())(uint64_t)
{
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharingSummaryProfileTransactionBuilderHandler;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_22855C94C();
  (*(v3 + 8))(v6, v2);
  *(swift_allocObject() + 16) = v9;
  return sub_2284F3A8C;
}

unint64_t sub_2284F38C0()
{
  result = qword_27D840360;
  if (!qword_27D840360)
  {
    sub_2284F5F48(255, qword_280DEA1E8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277D83D88]);
    sub_2283EF310(255, &qword_280DE9280, 0x277CCD940);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_27D840360);
  }

  return result;
}

uint64_t sub_2284F396C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2284F7414;
  *(v7 + 24) = v5;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockHealthPlatformOrchestrationContext.sharingSummaryProfileTransactionBuilderHandler.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t sub_2284F3B70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

void (*MockHealthPlatformOrchestrationContext.sharingSummaryProfileTransactionBuilderHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F7414;
  v3[8] = v7;

  return sub_2284F3CB4;
}

uint64_t MockHealthPlatformOrchestrationContext.sharingSummaryProfileTransactionBuilder(transaction:)(void (*a1)(uint64_t *__return_ptr, void))
{
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, MEMORY[0x277D11C80]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharingSummaryProfileTransactionBuilderHandler;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  sub_22855C94C();
  (*(v5 + 8))(v8, v4);
  v10 = v13;
  v13 = a1;
  v10(&v12, &v13);

  return v12;
}

uint64_t (*MockHealthPlatformOrchestrationContext.sharableModelStorage.getter())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelStorage;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_22855C94C();
  (*(v3 + 8))(v6, v2);
  *(swift_allocObject() + 16) = v9;
  return sub_2284F4440;
}

unint64_t sub_2284F3FC4()
{
  result = qword_27D840378;
  if (!qword_27D840378)
  {
    sub_2284F4050(255, &qword_27D840380, sub_2284F40B4);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D840378);
  }

  return result;
}

uint64_t sub_2284F4050(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2284F40B4()
{
  if (!qword_280DE8EA8)
  {
    sub_22842BFBC(255, &qword_280DEBC60);
    sub_22842BFBC(255, &qword_280DECFE0);
    v0 = sub_22855E2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE8EA8);
    }
  }
}

uint64_t sub_2284F414C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  v4 = type metadata accessor for MockSharableModelStorage();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v8[3] = v4;
  v8[4] = &protocol witness table for MockSharableModelStorage;
  v8[0] = MockSharableModelStorage.init()();
  v9 = 0;
  v3(v8);
  sub_228480F94(v8);
}

uint64_t sub_2284F41D8(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;

  a3(v4, v5, sub_22845D52C, v8);
}

uint64_t sub_2284F427C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2284F7364;
  *(v7 + 24) = v5;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t sub_2284F439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void *))
{
  v11[0] = a1;
  v11[1] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_2284F7360;
  v10[1] = v8;

  a5(v11, v10);
}

uint64_t MockHealthPlatformOrchestrationContext.sharableModelStorage.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockHealthPlatformOrchestrationContext.sharableModelStorage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F7364;
  v3[8] = v7;

  return sub_2284F4640;
}

uint64_t MockHealthPlatformOrchestrationContext.sharableModelStorage(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, MEMORY[0x277D11C80]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v20[-1] - v13;
  v15 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelStorage;
  swift_beginAccess();
  (*(v11 + 16))(v14, v4 + v15, v10);
  sub_22855C94C();
  (*(v11 + 8))(v14, v10);
  v16 = v21[0];
  v21[0] = a1;
  v21[1] = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v20[0] = sub_22845D554;
  v20[1] = v17;

  v16(v21, v20);
}

uint64_t (*MockHealthPlatformOrchestrationContext.sharableModelReadableStorage.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelReadableStorage;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_22855C94C();
  (*(v3 + 8))(v6, v2);
  *(swift_allocObject() + 16) = v9;
  return sub_2284F1B30;
}

unint64_t sub_2284F49A8()
{
  result = qword_27D840398;
  if (!qword_27D840398)
  {
    sub_22842BFBC(255, &qword_27D8403A0);
    sub_2283EF310(255, &qword_280DE9280, 0x277CCD940);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D840398);
  }

  return result;
}

uint64_t sub_2284F4A40@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MockSharableModelReadableStorage();
  v3 = swift_allocObject();
  v4 = type metadata accessor for MockSharableModelStorage();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = MockSharableModelStorage.init()();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for MockSharableModelReadableStorage;
  *a1 = v3;
  return result;
}

uint64_t sub_2284F4AC4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2284F73FC;
  *(v7 + 24) = v5;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

uint64_t MockHealthPlatformOrchestrationContext.sharableModelReadableStorage.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);

  sub_22855C95C();
  swift_endAccess();
}

void (*MockHealthPlatformOrchestrationContext.sharableModelReadableStorage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);
  v3[9] = sub_22855C93C();
  v3[10] = v4;
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v3[7] = sub_2284F73FC;
  v3[8] = v7;

  return sub_2284F4DF0;
}

uint64_t MockHealthPlatformOrchestrationContext.sharableModelReadableStorage(for:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v17[-1] - v11;
  v13 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelReadableStorage;
  swift_beginAccess();
  (*(v9 + 16))(v12, v3 + v13, v8);
  sub_22855C94C();
  (*(v9 + 8))(v12, v8);
  v14 = v17[0];
  v17[0] = a1;
  v17[1] = a2;
  v18 = a3;
  v14(v17, &v18);
}

void *MockHealthPlatformOrchestrationContext.optionalHealthStore.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore);
  v2 = v1;
  return v1;
}

uint64_t MockHealthPlatformOrchestrationContext.__allocating_init(healthStore:primaryProfileHealthStore:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  MockHealthPlatformOrchestrationContext.init(healthStore:primaryProfileHealthStore:)(a1, a2);
  return v7;
}

uint64_t MockHealthPlatformOrchestrationContext.init(healthStore:primaryProfileHealthStore:)(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  v3 = MEMORY[0x277D11C80];
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v46 - v6;
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, v3);
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v46 - v9;
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, v3);
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v10);
  v51 = &v46 - v12;
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, v3);
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13);
  v48 = &v46 - v15;
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, v3);
  v47 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, v3);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v46 - v25;
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, v3);
  v28 = v27;
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v32 = &v46 - v31;
  v33 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__feedItemStorageHandler;
  v62 = sub_2284F1968;
  v63 = 0;
  sub_2284F18B4();
  sub_22855C92C();
  (*(v29 + 32))(v2 + v33, v32, v28);
  v34 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__anchorStorageHandler;
  v62 = sub_2284F2264;
  v63 = 0;
  sub_2284F2094();
  sub_22855C92C();
  (*(v23 + 32))(v2 + v34, v26, v22);
  v35 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__notificationManagerHandler;
  v62 = sub_2284F29E4;
  v63 = 0;
  sub_2284F2950();
  sub_22855C92C();
  (*(v17 + 32))(v2 + v35, v20, v47);
  v36 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharedSummaryTransactionBuilderHandler;
  v62 = sub_2284F3114;
  v63 = 0;
  sub_2284F30C8(0);
  v37 = v48;
  sub_22855C92C();
  (*(v49 + 32))(v2 + v36, v37, v50);
  v38 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharingSummaryProfileTransactionBuilderHandler;
  v62 = sub_22840E02C;
  v63 = 0;
  sub_2284F38C0();
  v39 = v51;
  sub_22855C92C();
  (*(v52 + 32))(v2 + v38, v39, v53);
  v40 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelStorage;
  v62 = sub_2284F414C;
  v63 = 0;
  sub_2284F3FC4();
  v41 = v54;
  sub_22855C92C();
  (*(v55 + 32))(v2 + v40, v41, v56);
  v42 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelReadableStorage;
  v62 = sub_2284F4A40;
  v63 = 0;
  sub_2284F49A8();
  v43 = v57;
  sub_22855C92C();
  (*(v58 + 32))(v2 + v42, v43, v59);
  sub_22855CAAC();
  v44 = v61;
  *(v2 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore) = v60;
  *(v2 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_primaryProfileHealthStore) = v44;
  return v2;
}

uint64_t MockHealthPlatformOrchestrationContext.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_logger;
  swift_beginAccess();
  v4 = sub_22855CABC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t MockHealthPlatformOrchestrationContext.logger.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_logger;
  swift_beginAccess();
  v4 = sub_22855CABC();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2284F58A0()
{
  if (*v0)
  {
    result = 0x696669746E656469;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_2284F58D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

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

uint64_t sub_2284F59BC(uint64_t a1)
{
  v2 = sub_2284F5BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284F59F8(uint64_t a1)
{
  v2 = sub_2284F5BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MockHealthPlatformOrchestrationContext.Description.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2284F5FAC(0, &qword_27D8403B0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284F5BFC();
  sub_22855E31C();
  v12 = *v3;
  v15[15] = 0;
  sub_22855E0BC();
  if (!v2)
  {
    v13 = *(type metadata accessor for MockHealthPlatformOrchestrationContext.Description(0) + 20);
    v15[14] = 1;
    sub_22855C1DC();
    sub_2284F6010(&qword_27D83FE50, MEMORY[0x277CC95F0]);
    sub_22855E07C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2284F5BFC()
{
  result = qword_27D8403B8;
  if (!qword_27D8403B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8403B8);
  }

  return result;
}

uint64_t MockHealthPlatformOrchestrationContext.Description.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_2284F5F48(0, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  sub_2284F5FAC(0, &qword_27D8403C0, MEMORY[0x277D844C8]);
  v21 = *(v8 - 8);
  v22 = v8;
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for MockHealthPlatformOrchestrationContext.Description(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284F5BFC();
  sub_22855E30C();
  if (!v2)
  {
    v19 = v12;
    v17 = v21;
    v24 = 0;
    *v15 = sub_22855E02C();
    sub_22855C1DC();
    v23 = 1;
    sub_2284F6010(&qword_27D83FE60, MEMORY[0x277CC95F0]);
    sub_22855DFEC();
    (*(v17 + 8))(v11, v22);
    sub_2284F6058(v7, v15 + *(v19 + 20));
    sub_2284F60EC(v15, v20);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_2284F5F48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2284F5FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2284F5BFC();
    v7 = a3(a1, &type metadata for MockHealthPlatformOrchestrationContext.Description.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2284F6010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2284F6058(uint64_t a1, uint64_t a2)
{
  sub_2284F5F48(0, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2284F60EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MockHealthPlatformOrchestrationContext.Description(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MockHealthPlatformOrchestrationContext.contextDescription.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore);
  if (v3 && (v4 = [v3 profileIdentifier]) != 0)
  {
    v5 = v4;
    v6 = [v4 type];
    v7 = *(type metadata accessor for MockHealthPlatformOrchestrationContext.Description(0) + 20);
    v8 = [v5 identifier];
    sub_22855C1BC();

    v9 = sub_22855C1DC();
    result = (*(*(v9 - 8) + 56))(&a1[v7], 0, 1, v9);
  }

  else
  {
    v11 = *(type metadata accessor for MockHealthPlatformOrchestrationContext.Description(0) + 20);
    v12 = sub_22855C1DC();
    result = (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t MockHealthPlatformOrchestrationContext.deinit()
{
  v1 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__feedItemStorageHandler;
  v2 = MEMORY[0x277D11C80];
  sub_2284F5F48(0, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__anchorStorageHandler;
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__notificationManagerHandler;
  sub_2284F5F48(0, &qword_27D840318, sub_2284F2950, v2);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharedSummaryTransactionBuilderHandler;
  sub_2284F5F48(0, &qword_27D840338, sub_2284F30C8, v2);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharingSummaryProfileTransactionBuilderHandler;
  sub_2284F5F48(0, &qword_27D840358, sub_2284F38C0, v2);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelStorage;
  sub_2284F5F48(0, &qword_27D840370, sub_2284F3FC4, v2);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__sharableModelReadableStorage;
  sub_2284F5F48(0, &qword_27D840390, sub_2284F49A8, v2);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);

  v16 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_logger;
  v17 = sub_22855CABC();
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  return v0;
}

uint64_t MockHealthPlatformOrchestrationContext.__deallocating_deinit()
{
  MockHealthPlatformOrchestrationContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_2284F66A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore);
  v2 = v1;
  return v1;
}

uint64_t sub_2284F66E8(uint64_t a1, uint64_t a2)
{
  sub_2284F5F48(0, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16[-1] - v9;
  v11 = *v2;
  v12 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext__anchorStorageHandler;
  swift_beginAccess();
  (*(v7 + 16))(v10, v11 + v12, v6);
  sub_22855C94C();
  (*(v7 + 8))(v10, v6);
  v13 = v16[0];
  v16[0] = a1;
  v16[1] = a2;
  v13(v16);
}

uint64_t sub_2284F6878@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_logger;
  swift_beginAccess();
  v4 = sub_22855CABC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t _s14HealthPlatform04MockaB20OrchestrationContextC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore);
  if (v3)
  {
    v4 = [v3 profileIdentifier];
    v5 = *(a2 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore);
    if (!v5)
    {
      if (!v4)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(a2 + OBJC_IVAR____TtC14HealthPlatform38MockHealthPlatformOrchestrationContext_optionalHealthStore);
    if (!v5)
    {
      goto LABEL_15;
    }

    v4 = 0;
  }

  v6 = [v5 profileIdentifier];
  v7 = v6;
  if (!v4)
  {
    if (v6)
    {
      v8 = 0;
      goto LABEL_14;
    }

LABEL_15:
    v8 = 1;
    return v8 & 1;
  }

  if (!v6)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
  v8 = sub_22855D9AC();

LABEL_11:
  v7 = v4;
LABEL_14:

  return v8 & 1;
}

uint64_t sub_2284F6A80(uint64_t a1)
{
  result = sub_2284F6010(&qword_27D8403D8, type metadata accessor for MockHealthPlatformOrchestrationContext);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2284F6AF8(uint64_t a1)
{
  result = sub_2284F6010(&qword_27D8403E0, type metadata accessor for MockHealthPlatformOrchestrationContext);
  *(a1 + 8) = result;
  return result;
}

void sub_2284F6BE8()
{
  sub_2284F5F48(319, &qword_27D8402D0, sub_2284F18B4, MEMORY[0x277D11C80]);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_2284F5F48(319, &qword_27D8402F0, sub_2284F2094, MEMORY[0x277D11C80]);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_2284F5F48(319, &qword_27D840318, sub_2284F2950, MEMORY[0x277D11C80]);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_2284F5F48(319, &qword_27D840338, sub_2284F30C8, MEMORY[0x277D11C80]);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_2284F5F48(319, &qword_27D840358, sub_2284F38C0, MEMORY[0x277D11C80]);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_2284F5F48(319, &qword_27D840370, sub_2284F3FC4, MEMORY[0x277D11C80]);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_2284F5F48(319, &qword_27D840390, sub_2284F49A8, MEMORY[0x277D11C80]);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                v14 = sub_22855CABC();
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2284F6FD4()
{
  sub_2284F5F48(319, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2284F7094()
{
  result = qword_27D840418;
  if (!qword_27D840418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840418);
  }

  return result;
}

unint64_t sub_2284F70EC()
{
  result = qword_27D840420;
  if (!qword_27D840420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840420);
  }

  return result;
}

unint64_t sub_2284F7144()
{
  result = qword_27D840428;
  if (!qword_27D840428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840428);
  }

  return result;
}

uint64_t sub_2284F7198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a2;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v8 = a3;
  return v4(v7, &v8);
}

uint64_t sub_2284F71D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t sub_2284F7218(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5[1] = *a1;
  return v2(sub_22841C06C, v5);
}

void *sub_2284F7268(uint64_t a1, uint64_t a2)
{
  v8[1] = a2;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v8[0] = a1;
  result = v4(&v7, v8);
  if (!v3)
  {
    return v7;
  }

  return result;
}

uint64_t sub_2284F72B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1, a1[1]);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v8;
  }

  return result;
}

uint64_t sub_2284F72EC(uint64_t a1, uint64_t a2)
{
  v6[1] = a2;
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  return v3(v6);
}

uint64_t sub_2284F7324(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2);
}

id static FeedSection.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t Publisher.signposted(dso:log:name:signpostID:metadata:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v30 = a7;
  v29 = a5;
  v27 = a3;
  v28 = a4;
  sub_2284F9810(0, &qword_280DED490, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v27 - v19;
  v21 = *(*(a10 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v10, a10);
  sub_2284F7658(a6, v20);
  v25 = a2;

  return Publishers.Signpost.init(_:dso:log:name:signpostID:metadata:)(v23, a1, v25, v27, v28, v29, v20, v30, a9, a8, a10);
}

uint64_t sub_2284F7658(uint64_t a1, uint64_t a2)
{
  sub_2284F9810(0, &qword_280DED490, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Publishers.Signpost.init(_:dso:log:name:signpostID:metadata:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v41 = a7;
  v40 = a6;
  v38 = a4;
  v39 = a5;
  v37 = a2;
  v44 = a10;
  v45 = a8;
  sub_2284F9810(0, &qword_280DED490, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v36 - v16;
  v18 = sub_22855CA5C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a11 - 8);
  v24 = *(v23 + 16);
  v43 = a1;
  v24(a9, a1, a11);
  v42 = a11;
  v25 = type metadata accessor for Publishers.Signpost();
  v26 = v38;
  *(a9 + v25[9]) = v37;
  v27 = v25[10];
  v37 = a3;
  *(a9 + v27) = a3;
  v28 = a9 + v25[11];
  v29 = v39;
  *v28 = v26;
  *(v28 + 8) = v29;
  *(v28 + 16) = v40;
  v30 = v41;
  sub_2284F7658(v41, v17);
  v31 = *(v19 + 48);
  if (v31(v17, 1, v18) == 1)
  {
    v32 = v37;
    sub_22855CA4C();
    sub_2284F79E8(v30);
    (*(v23 + 8))(v43, v42);
    if (v31(v17, 1, v18) != 1)
    {
      sub_2284F79E8(v17);
    }
  }

  else
  {
    sub_2284F79E8(v30);
    (*(v23 + 8))(v43, v42);
    (*(v19 + 32))(v22, v17, v18);
  }

  result = (*(v19 + 32))(a9 + v25[12], v22, v18);
  v34 = (a9 + v25[13]);
  v35 = v44;
  *v34 = v45;
  v34[1] = v35;
  return result;
}

uint64_t sub_2284F79E8(uint64_t a1)
{
  sub_2284F9810(0, &qword_280DED490, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Publishers.Signpost.name.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

uint64_t Publishers.Signpost.signpostID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_22855CA5C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Publishers.Signpost.metadata.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t Publishers.Signpost.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = sub_22855CA5C();
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v37);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 24);
  v38 = *(a2 + 16);
  v39 = v19;
  v40 = v38;
  v41 = a3;
  v42 = v19;
  v43 = a4;
  v20 = _s8SignpostV5InnerCMa();
  (*(v15 + 16))(v18, a1, a3);
  v21 = *(v5 + *(a2 + 36));
  v22 = *(v5 + *(a2 + 40));
  v23 = *(a2 + 48);
  v24 = v5 + *(a2 + 44);
  v25 = *(v24 + 8);
  v35 = *v24;
  v36 = v21;
  v26 = *(v24 + 16);
  (*(v10 + 16))(v14, v5 + v23, v37);
  v27 = (v5 + *(a2 + 52));
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v20 + 48);
  v31 = *(v20 + 52);
  swift_allocObject();
  v40 = sub_2284F7E8C(v18, v36, v22, v35, v25, v26, v14, v28, v29);
  v32 = v22;

  swift_getWitnessTable();
  sub_22855CF6C();
}

uint64_t *sub_2284F7DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  swift_allocObject();
  return sub_2284F7E8C(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t *sub_2284F7E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *v9;
  v18 = *(*v9 + 160);
  sub_2284F9874();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v9 + v18) = v19;
  v20 = v9 + *(*v9 + 168);
  *(v20 + 32) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 40) = 2;
  (*(*(*(v17 + 88) - 8) + 32))(v9 + *(*v9 + 112), a1);
  *(v9 + *(*v9 + 120)) = a2;
  *(v9 + *(*v9 + 128)) = a3;
  v21 = v9 + *(*v9 + 136);
  *v21 = a4;
  *(v21 + 8) = a5;
  *(v21 + 16) = a6;
  v22 = *(*v9 + 144);
  v23 = sub_22855CA5C();
  (*(*(v23 - 8) + 32))(v9 + v22, a7, v23);
  v24 = (v9 + *(*v9 + 152));
  *v24 = a8;
  v24[1] = a9;
  return v9;
}

uint64_t sub_2284F8074()
{
  v1 = *v0;
  v2 = sub_22855E2AC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284F9810(0, &qword_27D83F748, MEMORY[0x277D84C20], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  v13 = v0;
  v10 = sub_22855E29C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_228455A50(v5);

  return sub_22855E2DC();
}

void sub_2284F8204(void *a1@<X8>)
{
  a1[3] = MEMORY[0x277D837D0];
  *a1 = 0x74736F706E676953;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_2284F822C(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 160));
  os_unfair_lock_lock(v4 + 4);
  v5 = *(*v1 + 168);
  swift_beginAccess();
  sub_228439384(v1 + v5, &v25);
  if (v28 == 2 && (v6 = vorrq_s8(v26, v27), !(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v25)))
  {
    sub_2284393E0(&v25);
    sub_2283F9B10(a1, &v25);
    v28 = 0;
    swift_beginAccess();
    sub_228439238(&v25, v1 + v5);
    swift_endAccess();
    os_unfair_lock_unlock(v4 + 4);
    sub_22855D93C();
    v10 = *v1;
    v24 = *(v1 + *(*v1 + 120));
    v11 = *(v1 + *(*v1 + 128));
    v12 = v1 + *(*v1 + 136);
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(*v1 + 144);
    v16 = *(v12 + 16);
    sub_2284F9810(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_228560580;
    v18 = (v1 + *(v10 + 152));
    v19 = *v18;
    v20 = v18[1];
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_22840A7C8();
    *(v17 + 32) = v19;
    *(v17 + 40) = v20;

    sub_22855CA3C();

    v21 = *(*v1 + 112);
    v27.i64[0] = v3;
    v27.i64[1] = swift_getWitnessTable();
    v25 = v1;
    v22 = *(v3 + 88);
    v23 = *(v3 + 104);

    sub_22855CC5C();
    return __swift_destroy_boxed_opaque_existential_0(&v25);
  }

  else
  {
    sub_2284393E0(&v25);
    os_unfair_lock_unlock(v4 + 4);
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = *(v7 + 8);
    return sub_22855CC7C();
  }
}

uint64_t sub_2284F854C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 104);
  v3 = v0 + *(*v0 + 112);
  return sub_22855CC6C();
}

void sub_2284F85B0(uint64_t a1)
{
  v47 = a1;
  v49 = *v1;
  v2 = v49;
  v3 = v49[12];
  v4 = v49[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v41 - v7;
  swift_getAssociatedConformanceWitness();
  v9 = sub_22855CC8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v41 - v12;
  v14 = *(v1 + v2[20]);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v1 + 168);
  swift_beginAccess();
  sub_228439384(v1 + v15, &v50);
  v16 = v53;
  sub_2284393E0(&v50);
  if (v16)
  {
    os_unfair_lock_unlock(v14 + 4);
  }

  else
  {
    v17 = v8;
    v50 = 1;
    v51 = 0u;
    v52 = 0u;
    v53 = 2;
    swift_beginAccess();
    sub_228439238(&v50, v1 + v15);
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
    (*(v10 + 16))(v13, v47, v9);
    v18 = v48;
    if ((*(v48 + 48))(v13, 1, AssociatedTypeWitness) == 1)
    {
      LODWORD(v48) = sub_22855D92C();
      v19 = *v1;
      v46 = *(v1 + *(*v1 + 120));
      v45 = *(v1 + v19[16]);
      v20 = (v1 + v19[17]);
      v21 = *v20;
      v22 = v20[1];
      v23 = v19[18];
      v24 = *(v20 + 16);
      sub_2284F9810(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_228560580;
      v26 = (v1 + v19[19]);
      v27 = *v26;
      v28 = v26[1];
      *(v25 + 56) = MEMORY[0x277D837D0];
      *(v25 + 64) = sub_22840A7C8();
      *(v25 + 32) = v27;
      *(v25 + 40) = v28;

      sub_22855CA3C();
    }

    else
    {
      v29 = v17;
      (*(v18 + 32))(v17, v13, AssociatedTypeWitness);
      LODWORD(v46) = sub_22855D92C();
      v30 = *v1;
      v45 = *(v1 + *(*v1 + 120));
      v44 = *(v1 + v30[16]);
      v31 = (v1 + v30[17]);
      v32 = *v31;
      v42 = v31[1];
      v43 = v32;
      v33 = v30[18];
      v41[1] = *(v31 + 16);
      sub_2284F9810(0, &qword_280DED008, sub_22840A764, MEMORY[0x277D84560]);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_228560580;
      v35 = sub_22855E1CC();
      v37 = v36;
      *(v34 + 56) = MEMORY[0x277D837D0];
      *(v34 + 64) = sub_22840A7C8();
      *(v34 + 32) = v35;
      *(v34 + 40) = v37;
      sub_22855CA3C();

      (*(v18 + 8))(v29, AssociatedTypeWitness);
    }

    v38 = v49[11];
    v39 = v49[13];
    v40 = v1 + *(*v1 + 112);
    sub_22855CC4C();
  }
}

void sub_2284F8B94()
{
  v1 = *(v0 + *(*v0 + 160));
  os_unfair_lock_lock(v1 + 4);
  v2 = *(*v0 + 168);
  swift_beginAccess();
  sub_228439384(v0 + v2, v3);
  if (v4)
  {
    sub_2284393E0(v3);
    os_unfair_lock_unlock(v1 + 4);
  }

  else
  {
    sub_2283FAB3C(v3, v5);
    os_unfair_lock_unlock(v1 + 4);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_22855CCDC();
    __swift_destroy_boxed_opaque_existential_0(v5);
  }
}

void sub_2284F8C74()
{
  v1 = *(v0 + *(*v0 + 160));
  os_unfair_lock_lock(v1 + 4);
  v2 = *(*v0 + 168);
  swift_beginAccess();
  sub_228439384(v0 + v2, &v12);
  if (v15)
  {
    sub_2284393E0(&v12);
    os_unfair_lock_unlock(v1 + 4);
  }

  else
  {
    sub_2283FAB3C(&v12, v16);
    v12 = 1;
    v13 = 0u;
    v14 = 0u;
    v15 = 2;
    swift_beginAccess();
    sub_228439238(&v12, v0 + v2);
    swift_endAccess();
    os_unfair_lock_unlock(v1 + 4);
    sub_22855D92C();
    v3 = *(v0 + *(*v0 + 120));
    v4 = *(v0 + *(*v0 + 128));
    v5 = (v0 + *(*v0 + 136));
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*v0 + 144);
    v9 = *(v5 + 16);
    sub_22855CA3C();
    v10 = v16[4];
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v11 = *(v10 + 8);
    sub_22855CC7C();
    __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

uint64_t sub_2284F8E24()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112));

  v1 = *(*v0 + 144);
  v2 = sub_22855CA5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + *(*v0 + 152) + 8);

  v4 = *(v0 + *(*v0 + 160));

  sub_2284393E0(v0 + *(*v0 + 168));
  return v0;
}

uint64_t sub_2284F8F5C()
{
  v0 = *sub_2284F8E24();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_2284F90D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_22840367C();
    if (v4 <= 0x3F)
    {
      result = sub_22855CA5C();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2284F9190(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_22855CA5C();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 + 17;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(*(v8 - 8) + 64) + ((v14 + ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 == v13)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = ((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v27 = *(v9 + 48);

      return v27((v14 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
    }

    else
    {
      v26 = *v25;
      if (*v25 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }
}

void sub_2284F9414(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_22855CA5C() - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((*(v10 + 64) + ((v12 + 17 + ((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v18 = 0;
    v19 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v12 + 17 + ((((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v14 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
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
      if (v9 == v14)
      {
        v22 = *(v26 + 56);

        v22(a1, a2, v9, v7);
      }

      else
      {
        v23 = ((((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) != 0)
        {
          v25 = *(v10 + 56);

          v25((v12 + 17 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *v23 = v24;
        }
      }

      return;
    }
  }

  if (((*(v10 + 64) + ((v12 + 17 + ((((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((*(v10 + 64) + ((v12 + 17 + ((((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v14 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_2284F96E4(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_22855CA5C();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_2284F9810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2284F9874()
{
  if (!qword_280DED060)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DED060);
    }
  }
}

uint64_t RelevanceFeatureTagEncodable<>.makeEncodedValue()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ValueJSONWrapper();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  (*(v3 + 24))(a1, v3);
  (*(v5 + 32))(v13, v8, AssociatedTypeWitness);
  v14 = sub_22855BDCC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_22855BDBC();
  swift_getWitnessTable();
  v17 = sub_22855BDAC();
  (*(v10 + 8))(v13, v9);

  return v17;
}

uint64_t sub_2284F9C88(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22855E15C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2284F9D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_2284F9C88(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2284F9D48@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_2283F4918();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2284F9D80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2284F9DD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ValueJSONWrapper.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v12 = a2[2];
  v4 = a2[4];
  type metadata accessor for ValueJSONWrapper.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_22855E0EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22855E31C();
  sub_22855E0CC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t ValueJSONWrapper.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v30 = *(a2 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](a1);
  v32 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ValueJSONWrapper.CodingKeys();
  swift_getWitnessTable();
  v33 = sub_22855E05C();
  v28 = *(v33 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v24 - v10;
  v29 = a2;
  v31 = a3;
  v12 = type metadata accessor for ValueJSONWrapper();
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v34;
  sub_22855E30C();
  if (!v17)
  {
    v25 = v15;
    v34 = v12;
    v19 = v28;
    v18 = v29;
    v20 = v30;
    v21 = v32;
    sub_22855E03C();
    (*(v19 + 8))(v11, v33);
    v22 = v25;
    (*(v20 + 32))(v25, v21, v18);
    (*(v26 + 32))(v27, v22, v34);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2284FA2E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2284FA3BC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2284570B0();
}

uint64_t sub_2284FA3C4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  sub_22842BC38();
  v18 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v21 = MEMORY[0x277D84F90];
  sub_228427460(0, v11, 0);
  v12 = v21;
  v13 = a3 + 32;
  v17 = v7 + 32;
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v12;
    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_228427460(v14 > 1, v15 + 1, 1);
      v12 = v21;
    }

    *(v12 + 16) = v15 + 1;
    (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v10, v18);
    v13 += 40;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2284FA570(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v9 = *(type metadata accessor for PluginSharableModel() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v14, v10, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_22855DD1C();
      v12 = *(v15 + 16);
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      v10 += v11;
      if (!--v6)
      {
        return v15;
      }
    }
  }

  return result;
}

uint64_t sub_2284FA6BC(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22855DB4C())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAB9D20](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_22855DD1C();
      v12 = *(v16 + 16);
      sub_22855DD5C();
      sub_22855DD6C();
      sub_22855DD2C();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t TransactionBuilderSharableModelStorageAdapter.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TransactionBuilderSharableModelStorageAdapter.init(bundleIdentifier:transactionBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return sub_2283FAB3C(a3, (a4 + 2));
}

uint64_t TransactionBuilderSharableModelStorageAdapter.fetch(matching:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v10 = *v3;
  v9 = v3[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(v8 + 8);

  v12(v10, v9, a1, sub_2284FABE0, v11, v7, v8);
}

void sub_2284FA958(unint64_t a1, char a2, void (*a3)(unint64_t, uint64_t), unint64_t a4)
{
  v8 = type metadata accessor for PluginSharableModel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v29 = a1;
    v13 = a1;
    sub_228418D44();
    swift_willThrowTypedImpl();
    v23 = a1;
    a3(a1, 1);
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22855DB4C())
    {
      v16 = MEMORY[0x277D84F90];
      if (!i)
      {
LABEL_18:
        a3(v16, 0);

        return;
      }

      v26 = v14;
      v29 = MEMORY[0x277D84F90];
      sub_228427710(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v24[1] = a4;
      v25 = a3;
      v17 = 0;
      a3 = 0;
      v16 = v29;
      v27 = a1;
      v28 = a1 & 0xC000000000000001;
      v18 = v26;
      while (1)
      {
        a1 = i;
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v28)
        {
          v20 = MEMORY[0x22AAB9D20](v17, v27);
        }

        else
        {
          if (v17 >= *(v18 + 16))
          {
            goto LABEL_20;
          }

          v20 = *(v27 + 8 * v17 + 32);
        }

        PluginSharableModel.init(sharedSummary:)(v20, v12);
        v29 = v16;
        a4 = *(v16 + 16);
        v21 = *(v16 + 24);
        v14 = a4 + 1;
        if (a4 >= v21 >> 1)
        {
          sub_228427710(v21 > 1, a4 + 1, 1);
          v18 = v26;
          v16 = v29;
        }

        *(v16 + 16) = v14;
        sub_2284B7280(v12, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a4);
        ++v17;
        v22 = v19 == a1;
        i = a1;
        if (v22)
        {
          a3 = v25;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    __break(1u);
  }
}

uint64_t TransactionBuilderSharableModelStorageAdapter.updateOrCreate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2284FA570(sub_2284FADA8, &v11, a1);
  v7 = v3[5];
  v8 = v3[6];
  v9 = v6;
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  (*(v8 + 16))(v9, a2, a3, v7, v8);
}

void *sub_2284FACC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = v4;
  v10 = type metadata accessor for PluginSharableModel();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2284FB1C0();
  sub_22848DB1C(a1, v13);
  v15 = *a2;
  v14 = *(a2 + 8);

  result = HKSharedSummary.init(model:pluginIdentifier:)(v13, v15, v14);
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t TransactionBuilderSharableModelStorageAdapter.delete(sharableModelIdentifiers:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  return (*(v8 + 32))(*v3, v3[1], a1, a2, a3, v7, v8);
}

uint64_t TransactionBuilderSharableModelStorageAdapter.deleteAll(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 24))(*v2, v2[1], a1, a2, v5, v6);
}

uint64_t sub_2284FAEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v10 = *v3;
  v9 = v3[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(v8 + 8);

  v12(v10, v9, a1, sub_2284FB27C, v11, v7, v8);
}

uint64_t sub_2284FAF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2284FA570(sub_2284FB264, &v11, a1);
  v7 = v3[5];
  v8 = v3[6];
  v9 = v6;
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  (*(v8 + 16))(v9, a2, a3, v7, v8);
}

uint64_t sub_2284FB070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  return (*(v8 + 32))(*v3, v3[1], a1, a2, a3, v7, v8);
}

uint64_t sub_2284FB0EC(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 24))(*v2, v2[1], a1, a2, v5, v6);
}

unint64_t sub_2284FB1C0()
{
  result = qword_280DE9490;
  if (!qword_280DE9490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE9490);
  }

  return result;
}

void sub_2284FB20C()
{
  if (!qword_280DEE728)
  {
    type metadata accessor for PluginFeedItem();
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE728);
    }
  }
}

uint64_t CancellableProgressList.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t CancellableProgressList.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x277D84F90];
  return result;
}

id sub_2284FB2CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v58 = a1;
  v5 = sub_22855C1DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v49 - v11;
  v56 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  os_unfair_lock_lock((v2 + 16));
  v16 = (v2 + 24);
  v15 = *(v2 + 24);
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v17 = sub_22855CABC();
  __swift_project_value_buffer(v17, qword_280DEEBD0);
  v54 = *(v6 + 16);
  v55 = v6 + 16;
  v54(v14, a2, v5);

  v18 = sub_22855CA8C();
  v19 = sub_22855D6AC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v51 = a2;
    v21 = v20;
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v21 = 136315394;
    v22 = sub_2284FCAC4(v15);
    v24 = sub_2283F8938(v22, v23, aBlock);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    sub_2284FD8F4(&qword_280DECD70, MEMORY[0x277CC95F0]);
    v25 = sub_22855E11C();
    v27 = v26;
    v52 = *(v6 + 8);
    v52(v14, v5);
    v28 = sub_2283F8938(v25, v27, aBlock);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_2283ED000, v18, v19, "%s: add(uuid:) %s", v21, 0x16u);
    v29 = v50;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v29, -1, -1);
    v30 = v21;
    a2 = v51;
    MEMORY[0x22AABAD40](v30, -1, -1);
  }

  else
  {

    v52 = *(v6 + 8);
    v52(v14, v5);
  }

  v58 = v58;
  MEMORY[0x22AAB9400]();
  v31 = v54;
  if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v48 = *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22855D3EC();
  }

  sub_22855D43C();
  os_unfair_lock_unlock(v3 + 4);
  v32 = v53;
  v31(v53, a2, v5);
  v33 = sub_22855C19C();
  v34 = sub_22855D17C();
  [v58 setUserInfoObject:v33 forKey:v34];

  v52(v32, v5);
  v35 = [v58 cancellationHandler];
  if (v35)
  {
    v36 = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    v38 = sub_2284FBA80;
  }

  else
  {
    v38 = 0;
    v37 = 0;
  }

  sub_22840FE74(v38);
  sub_228416CF8(v38);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = v57;
  v31(v57, a2, v5);
  v41 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v42 = (v56 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v39;
  (*(v6 + 32))(v43 + v41, v40, v5);
  v44 = (v43 + v42);
  *v44 = v38;
  v44[1] = v37;
  aBlock[4] = sub_2284FB9EC;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_22;
  v45 = _Block_copy(aBlock);
  sub_22840FE74(v38);

  sub_22840FE74(sub_2284FB9EC);

  [v58 setCancellationHandler_];
  sub_228416CF8(v38);
  _Block_release(v45);

  v46 = v58;

  return v46;
}

os_unfair_lock_s *sub_2284FB8EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    os_unfair_lock_lock(result + 4);
    v7 = *&v6[6]._os_unfair_lock_opaque;
    MEMORY[0x28223BE20](v8);
    v11[2] = a2;

    v9 = sub_228493428(sub_2284FD8D4, v11, v7);
    v10 = *&v6[6]._os_unfair_lock_opaque;

    *&v6[6]._os_unfair_lock_opaque = v9;
    os_unfair_lock_unlock(v6 + 4);
    if (a3)
    {
      a3();
    }
  }

  return result;
}

os_unfair_lock_s *sub_2284FB9EC()
{
  v1 = *(sub_22855C1DC() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_2284FB8EC(v3, v0 + v2, v5);
}

BOOL sub_2284FBA90(uint64_t *a1)
{
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_2284FBBC4(v6);
  sub_2284FD8F4(&qword_280DECD78, MEMORY[0x277CC95F0]);
  LOBYTE(v7) = sub_22855D16C();
  (*(v3 + 8))(v6, v2);
  return (v7 & 1) == 0;
}

uint64_t sub_2284FBBC4@<X0>(uint64_t a1@<X8>)
{
  sub_2284FD600(0, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18[-v5];
  v7 = [v1 userInfo];
  type metadata accessor for ProgressUserInfoKey(0);
  sub_2284FD8F4(&qword_280DE9310, type metadata accessor for ProgressUserInfoKey);
  v8 = sub_22855D0EC();

  v9 = sub_22855D17C();
  v10 = v9;
  if (*(v8 + 16) && (v11 = sub_22844C56C(v9), (v12 & 1) != 0))
  {
    sub_2283F6E48(*(v8 + 56) + 32 * v11, v18);

    v13 = sub_22855C1DC();
    v14 = swift_dynamicCast();
    v15 = *(v13 - 8);
    (*(v15 + 56))(v6, v14 ^ 1u, 1, v13);
    if ((*(v15 + 48))(v6, 1, v13) != 1)
    {
      return (*(v15 + 32))(a1, v6, v13);
    }
  }

  else
  {

    v17 = sub_22855C1DC();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  }

  sub_2284FD848(v6);
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

void sub_2284FBE88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22855C1DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v1 + 16));
  v9 = (v1 + 24);
  v33 = sub_2284FCAC4(*(v1 + 24));
  v11 = v10;
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v12 = sub_22855CABC();
  __swift_project_value_buffer(v12, qword_280DEEBD0);
  (*(v5 + 16))(v8, a1, v4);

  v13 = sub_22855CA8C();
  v14 = sub_22855D6AC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v31 = a1;
    v18 = v17;
    v34[0] = v17;
    *v16 = 136315394;
    v19 = sub_2283F8938(v33, v11, v34);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    sub_2284FD8F4(&qword_280DECD70, MEMORY[0x277CC95F0]);
    v20 = sub_22855E11C();
    v22 = v21;
    (*(v5 + 8))(v8, v4);
    v23 = sub_2283F8938(v20, v22, v34);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_2283ED000, v13, v14, "%s: clearProgress(for uuid:) %s", v16, 0x16u);
    swift_arrayDestroy();
    v24 = v18;
    a1 = v31;
    MEMORY[0x22AABAD40](v24, -1, -1);
    v25 = v16;
    v2 = v32;
    MEMORY[0x22AABAD40](v25, -1, -1);
  }

  else
  {

    v26 = (*(v5 + 8))(v8, v4);
  }

  MEMORY[0x28223BE20](v26);
  *(&v30 - 2) = a1;
  v27 = sub_2284FCD6C(sub_2284FCCAC, (&v30 - 4));
  if (*v9 >> 62)
  {
    v29 = v27;
    v28 = sub_22855DB4C();
    v27 = v29;
    if (v28 >= v29)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v28 = *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28 >= v27)
    {
LABEL_8:
      sub_2284FD39C(v27, v28, &qword_280DE9500, 0x277CCAC48);
      os_unfair_lock_unlock(v2 + 4);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_2284FC228(uint64_t *a1)
{
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_2284FBBC4(v6);
  LOBYTE(v7) = sub_22855C1AC();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

void sub_2284FC318()
{
  os_unfair_lock_lock((v0 + 16));
  sub_2284FC368((v0 + 24), v0);

  os_unfair_lock_unlock((v0 + 16));
}

uint64_t sub_2284FC368(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  v38 = *a2;
  v3 = *a1;
  v33 = sub_2284FCAC4(*a1);
  v5 = v4;
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v6 = sub_22855CABC();
  __swift_project_value_buffer(v6, qword_280DEEBD0);

  v7 = sub_22855CA8C();
  v8 = sub_22855D6AC();

  v39 = v5;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2283F8938(v33, v39, aBlock);
    _os_log_impl(&dword_2283ED000, v7, v8, "%s: cancelAll()", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AABAD40](v10, -1, -1);
    v11 = v9;
    v5 = v39;
    MEMORY[0x22AABAD40](v11, -1, -1);
  }

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_20:

LABEL_21:
    *v2 = MEMORY[0x277D84F90];
    return result;
  }

  result = sub_22855DB4C();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (result >= 1)
  {
    v32 = v2;
    v13 = 0;
    v36 = v3 & 0xC000000000000001;
    v37 = result;
    do
    {
      if (v36)
      {
        v19 = MEMORY[0x22AAB9D20](v13, v3);
      }

      else
      {
        v19 = *(v3 + 8 * v13 + 32);
      }

      v20 = v19;

      v21 = v20;
      v22 = sub_22855CA8C();
      v23 = sub_22855D6AC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        *v24 = 136315394;
        *(v24 + 4) = sub_2283F8938(v33, v5, aBlock);
        *(v24 + 12) = 2080;
        v34 = v23;
        v25 = v3;
        v26 = v21;
        v27 = [v26 description];
        v28 = sub_22855D1AC();
        v30 = v29;

        v3 = v25;
        v31 = sub_2283F8938(v28, v30, aBlock);

        *(v24 + 14) = v31;
        _os_log_impl(&dword_2283ED000, v22, v34, "%s: cancelAll() progress: %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v35, -1, -1);
        MEMORY[0x22AABAD40](v24, -1, -1);
      }

      v15 = [v21 cancellationHandler];
      if (v15)
      {
        v14 = swift_allocObject();
        *(v14 + 16) = v15;
        v15 = sub_2284FD940;
      }

      else
      {
        v14 = 0;
      }

      ++v13;
      sub_22840FE74(v15);
      sub_228416CF8(v15);
      v16 = swift_allocObject();
      v16[2] = v21;
      v16[3] = v15;
      v16[4] = v14;
      v16[5] = v38;
      aBlock[4] = sub_2284FD83C;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_228401F54;
      aBlock[3] = &block_descriptor_16;
      v17 = _Block_copy(aBlock);
      v18 = v21;
      sub_22840FE74(v15);
      sub_22840FE74(sub_2284FD83C);

      [v18 setCancellationHandler_];
      _Block_release(v17);

      [v18 cancel];
      sub_228416CF8(v15);

      v5 = v39;
    }

    while (v37 != v13);

    v2 = v32;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_2284FC8A4(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v7 = sub_22855CABC();
  __swift_project_value_buffer(v7, qword_280DEEBD0);
  v8 = a1;
  v9 = sub_22855CA8C();
  v10 = sub_22855D6AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22[0] = v21;
    *v11 = 136315394;
    v22[1] = a4;
    swift_getMetatypeMetadata();
    v12 = sub_22855D1BC();
    v14 = sub_2283F8938(v12, v13, v22);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = v8;
    v16 = [v15 description];
    v17 = sub_22855D1AC();
    v19 = v18;

    v20 = sub_2283F8938(v17, v19, v22);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_2283ED000, v9, v10, "[%s]: cancelAll() cancelProgressButHoldOntoItUntilCancellationCompletes(): %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v21, -1, -1);
    MEMORY[0x22AABAD40](v11, -1, -1);
  }

  if (a2)
  {
    a2();
  }

  [v8 setCancellationHandler_];
  _Block_release(0);
}

uint64_t sub_2284FCAC4(uint64_t a1)
{
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000019, 0x80000002285726A0);
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v2 = sub_2283EF310(0, &qword_280DE9500, 0x277CCAC48);
  v3 = MEMORY[0x22AAB9430](a1, v2);
  MEMORY[0x22AAB92A0](v3);

  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  return 0;
}

uint64_t CancellableProgressList.__deallocating_deinit()
{
  sub_2284FD480(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t CancellableProgressList.description.getter()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = sub_2284FCAC4(*(v0 + 24));
  os_unfair_lock_unlock((v0 + 16));
  return v1;
}

uint64_t sub_2284FCC5C()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 16));
  v2 = sub_2284FCAC4(*(v1 + 24));
  os_unfair_lock_unlock((v1 + 16));
  return v2;
}

uint64_t sub_2284FCCCC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_22855DB4C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_22855DCBC();
  *v1 = result;
  return result;
}

uint64_t sub_2284FCD6C(uint64_t (*a1)(id *), uint64_t a2)
{
  v6 = *v2;
  sub_2284FCFD4(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_22855DB4C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_22855DB4C())
      {
        return v4;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAB9D20](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v25 = v12;
    v14 = a1(&v25);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v4 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v4++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x22AAB9D20](v4, v6);
    v15 = MEMORY[0x22AAB9D20](v10, v6);
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v10);
    v24 = *(v6 + 32 + 8 * v4);
    v15 = v17;
  }

  v18 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_22847FD78(v6);
    v19 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_22847FD78(v6);
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    v22 = v20 + 8 * v10;
    v23 = *(v22 + 32);
    *(v22 + 32) = v24;

    *v2 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
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
  __break(1u);
  return sub_22855DB4C();
}

void sub_2284FCFD4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_22855DB4C();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AAB9D20](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_2284FD0FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_2283EF310(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_22855DB4C();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_22855DB4C();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_2284FD218(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_2283FBB5C();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2284FD2DC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_228426C4C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_2284FD218(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2284FD39C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_22855DB4C();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_22855DB4C();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    sub_2284FCCCC(result);
    return sub_2284FD0FC(v8, v7, 0, v6, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2284FD480(uint64_t a1)
{
  sub_2284FD4DC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2284FD4DC()
{
  if (!qword_280DE95C0)
  {
    sub_2283EF310(255, &qword_280DE9500, 0x277CCAC48);
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE95C0);
    }
  }
}

void sub_2284FD600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2284FD664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for HealthPlatformContextProvider.Context(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_22855DB4C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_22855DB4C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2284FD764(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_22855DB4C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_22855DB4C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_2284FCCCC(result);

  return sub_2284FD664(v4, v2, 0);
}

uint64_t sub_2284FD848(uint64_t a1)
{
  sub_2284FD600(0, &qword_280DECD68, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2284FD8F4(unint64_t *a1, void (*a2)(uint64_t))
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

char *HealthExperienceStoreOracle.init(healthExperienceStore:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_2284FEF7C(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

void sub_2284FDA38(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState);
  os_unfair_lock_lock(v3 + 16);
  sub_2284FF204(&v3[6], a1);

  os_unfair_lock_unlock(v3 + 16);
}

id sub_2284FDA94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DEEC98);
  v4 = sub_22855CA8C();
  v5 = sub_22855D66C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    v15 = ObjectType;
    *v6 = 136315138;
    swift_getMetatypeMetadata();
    v8 = sub_22855D1BC();
    v10 = sub_2283F8938(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%s] notifyClients()", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  v11 = *(v1 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter);
  if (qword_280DE93D8 != -1)
  {
    v13 = *(v1 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter);
    swift_once();
    v11 = v13;
  }

  return [v11 postNotificationName:qword_280DE93E0 object:{v1, v14, v15}];
}

uint64_t sub_2284FDC58(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_2284FF204(a1 + 8, v49);
  v5 = v49[3];
  sub_2283F47F8(v49, sub_2284FF268);
  if (v5)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v6 = sub_22855CABC();
    __swift_project_value_buffer(v6, qword_280DEEC98);
    v7 = sub_22855CA8C();
    v8 = sub_22855D66C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v48[0] = v10;
      *v9 = 136315138;
      v49[0] = ObjectType;
      swift_getMetatypeMetadata();
      v11 = sub_22855D1BC();
      v13 = sub_2283F8938(v11, v12, v48);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2283ED000, v7, v8, "[%s] attemptToInitializeStore(state:) but we have a health store - dropping", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AABAD40](v10, -1, -1);
      MEMORY[0x22AABAD40](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v14 = sub_22855CABC();
    __swift_project_value_buffer(v14, qword_280DEEC98);
    v15 = sub_22855CA8C();
    v16 = sub_22855D66C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v48[0] = v18;
      *v17 = 136315138;
      v49[0] = ObjectType;
      swift_getMetatypeMetadata();
      v19 = sub_22855D1BC();
      v21 = sub_2283F8938(v19, v20, v48);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2283ED000, v15, v16, "[%s] attemptToInitializeStore(state:)", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AABAD40](v18, -1, -1);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v22 = &v2[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_healthExperienceStore];
    v23 = *&v2[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_healthExperienceStore + 24];
    v24 = *&v2[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_healthExperienceStore + 32];
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_healthExperienceStore], v23);
    (*(v24 + 48))(v23, v24);
    v26 = v2;
    v27 = sub_22855CA8C();
    v28 = sub_22855D66C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48[0] = v47;
      *v29 = 136315394;
      v49[0] = ObjectType;
      swift_getMetatypeMetadata();
      v30 = sub_22855D1BC();
      v32 = sub_2283F8938(v30, v31, v48);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      sub_2283F9B10(v22, v49);
      sub_2283F9B94(0, qword_280DECAA8);
      v33 = sub_22855D1BC();
      v35 = sub_2283F8938(v33, v34, v48);

      *(v29 + 14) = v35;
      _os_log_impl(&dword_2283ED000, v27, v28, "[%s] calling performCacheInvalidationIfNecessary with %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v47, -1, -1);
      MEMORY[0x22AABAD40](v29, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & *v26) + 0xB8))(v22);
    v36 = v26;
    v37 = sub_22855CA8C();
    v38 = sub_22855D66C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48[0] = v40;
      *v39 = 136315394;
      v49[0] = ObjectType;
      swift_getMetatypeMetadata();
      v41 = sub_22855D1BC();
      v43 = sub_2283F8938(v41, v42, v48);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      sub_2283F9B10(v22, v49);
      sub_2283F9B94(0, qword_280DECAA8);
      v44 = sub_22855D1BC();
      v46 = sub_2283F8938(v44, v45, v48);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_2283ED000, v37, v38, "[%s] attemptToInitializeStore(shouldListen:): initPersistentContainer() success %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v40, -1, -1);
      MEMORY[0x22AABAD40](v39, -1, -1);
    }

    sub_2283F47F8(a1 + 8, sub_2284FF268);
    sub_2283F9B10(v22, a1 + 8);
    return 1;
  }
}

void sub_2284FE3A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DEEC98);
  v4 = sub_22855CA8C();
  v5 = sub_22855D66C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v14 = ObjectType;
    swift_getMetatypeMetadata();
    v8 = sub_22855D1BC();
    v10 = sub_2283F8938(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%s] dataNowAccessible() attempting to initialize store", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  v11 = *(v1 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState);
  MEMORY[0x28223BE20](v12);
  os_unfair_lock_lock(v11 + 16);
  sub_2284FF514(&v14);
  os_unfair_lock_unlock(v11 + 16);
  if (v14 == 1)
  {
    sub_2284FDA94();
  }
}

uint64_t sub_2284FE57C(uint64_t *a1)
{
  v3 = sub_22855C3FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0xA0))(result);
    sub_22855C41C();
    (*(v4 + 104))(v8, *MEMORY[0x277D112D0], v3);
    v12[1] = sub_22855C40C();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_2284FF804;
    *(v10 + 24) = v9;
    sub_2284FF80C(qword_280DED498, MEMORY[0x277D112E8]);
    v11 = sub_22855CF8C();

    *a1 = v11;
  }

  return result;
}

void sub_2284FE780()
{
  ObjectType = swift_getObjectType();
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v1 = sub_22855CABC();
  __swift_project_value_buffer(v1, qword_280DEEC98);
  v2 = sub_22855CA8C();
  v3 = sub_22855D69C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9[0] = v5;
    v9[1] = ObjectType;
    *v4 = 136315138;
    swift_getMetatypeMetadata();
    v6 = sub_22855D1BC();
    v8 = sub_2283F8938(v6, v7, v9);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2283ED000, v2, v3, "[%s] handleUnrecoverableError() exiting", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AABAD40](v5, -1, -1);
    MEMORY[0x22AABAD40](v4, -1, -1);
  }

  exit(0);
}

uint64_t Notification.oracle.getter()
{
  sub_22855BE6C();
  if (v4[3])
  {
    type metadata accessor for HealthExperienceStoreOracle();
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_2283F47F8(v4, sub_228400E48);
  }

  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000062, 0x8000000228572700);
  sub_22855BE6C();
  sub_228400E48();
  v1 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v1);

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  sub_22855BE9C();
  sub_2284FF80C(&qword_27D840440, MEMORY[0x277CC8900]);
  v2 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v2);

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

char *HealthExperienceStoreOracle.__allocating_init(healthExperienceStore:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_2284FEF7C(v9, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t sub_2284FEB7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2284FDC58(a1);
  *a2 = result & 1;
  return result;
}

void sub_2284FEBBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2284FE3A8();
  }
}

id HealthExperienceStoreOracle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthExperienceStoreOracle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthExperienceStoreOracle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthExperienceStoreOracle.description.getter()
{
  v5[1] = 0xE000000000000000;
  sub_22855DC6C();
  v6 = 0;
  v7 = 0xE000000000000000;
  MEMORY[0x22AAB92A0](60, 0xE100000000000000);
  swift_getObjectType();
  sub_2284FF578();
  v1 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v1);

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v5[0] = v0;
  sub_22855DDDC();
  MEMORY[0x22AAB92A0](0xD00000000000001ELL, 0x80000002285727A0);
  v2 = *(v0 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState);
  os_unfair_lock_lock(v2 + 16);
  sub_2284FF204(&v2[6], v5);
  os_unfair_lock_unlock(v2 + 16);
  sub_2284FF268();
  v3 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v3);

  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  return v6;
}

uint64_t sub_2284FEEE8()
{
  result = sub_22855D17C();
  qword_280DE93E0 = result;
  return result;
}

id static NSNotificationName.HealthExperienceStoreOracleHasStore.getter()
{
  if (qword_280DE93D8 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE93E0;

  return v1;
}

char *sub_2284FEF7C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v27[3] = a3;
  v27[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v10 = OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter;
  *&a2[v10] = [objc_allocWithZone(MEMORY[0x277CCAB98]) init];
  v11 = OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState;
  sub_228491194();
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0;
  *&a2[v11] = v12;
  sub_2283F9B10(v27, &a2[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_healthExperienceStore]);
  v26.receiver = a2;
  v26.super_class = type metadata accessor for HealthExperienceStoreOracle();
  v13 = objc_msgSendSuper2(&v26, sel_init);
  v14 = *&v13[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState];
  v15 = v13;
  os_unfair_lock_lock(v14 + 16);
  sub_2284FF8B8(&v28);
  os_unfair_lock_unlock(v14 + 16);
  if (v28 == 1)
  {
    sub_2284FDA94();
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v16 = sub_22855CABC();
  __swift_project_value_buffer(v16, qword_280DEEC98);
  v17 = sub_22855CA8C();
  v18 = sub_22855D66C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v28 = ObjectType;
    swift_getMetatypeMetadata();
    v21 = sub_22855D1BC();
    v23 = sub_2283F8938(v21, v22, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_2283ED000, v17, v18, "[%s] init()", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AABAD40](v20, -1, -1);
    MEMORY[0x22AABAD40](v19, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v27);
  return v15;
}

uint64_t sub_2284FF204(uint64_t a1, uint64_t a2)
{
  sub_2284FF268();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2284FF268()
{
  if (!qword_280DECAA0)
  {
    sub_2283F9B94(255, qword_280DECAA8);
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DECAA0);
    }
  }
}

id sub_2284FF2D0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v5 = sub_22855CABC();
  __swift_project_value_buffer(v5, qword_280DEEC98);
  swift_unknownObjectRetain();
  v6 = sub_22855CA8C();
  v7 = sub_22855D66C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    v20 = ObjectType;
    *v8 = 136315394;
    swift_getMetatypeMetadata();
    v10 = sub_22855D1BC();
    v12 = sub_2283F8938(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v20 = a1;
    sub_2284FF854();
    swift_unknownObjectRetain();
    v13 = sub_22855D1BC();
    v15 = sub_2283F8938(v13, v14, &v19);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2283ED000, v6, v7, "[%s] register(observer:): %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v9, -1, -1);
    MEMORY[0x22AABAD40](v8, -1, -1);
  }

  v16 = *(a2 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter);
  if (qword_280DE93D8 != -1)
  {
    v18 = *(a2 + OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter);
    swift_once();
    v16 = v18;
  }

  return [v16 addObserver:a1 selector:v19 name:? object:?];
}

uint64_t sub_2284FF514@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_2284FDC58();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2284FF578()
{
  result = qword_280DECA98;
  if (!qword_280DECA98)
  {
    type metadata accessor for HealthExperienceStoreOracle();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DECA98);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform0A15ExperienceStore_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2284FF738(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_2284FF794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2284FF80C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2284FF854()
{
  result = qword_280DEC398[0];
  if (!qword_280DEC398[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280DEC398);
  }

  return result;
}

id OrchestrationAnchor.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id OrchestrationAnchor.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for OrchestrationAnchor();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id OrchestrationAnchor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrchestrationAnchor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FeedItemContextEnvironment.description.getter(char a1)
{
  if (a1)
  {
    return 0x65746E4972657375;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_2284FFA98(uint64_t a1)
{
  v2 = sub_228500054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284FFAD4(uint64_t a1)
{
  v2 = sub_228500054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2284FFB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL;
  if (v6 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746E4972657375 && a2 == 0xEF65766974636172)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

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

uint64_t sub_2284FFBFC(uint64_t a1)
{
  v2 = sub_2285000A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284FFC38(uint64_t a1)
{
  v2 = sub_2285000A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2284FFC74(uint64_t a1)
{
  v2 = sub_228500000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284FFCB0(uint64_t a1)
{
  v2 = sub_228500000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedItemContextEnvironment.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = MEMORY[0x277D84538];
  sub_228501408(0, &qword_27D840458, sub_228500000, &type metadata for FeedItemContextEnvironment.UserInteractiveCodingKeys, MEMORY[0x277D84538]);
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  sub_228501408(0, &qword_27D840468, sub_228500054, &type metadata for FeedItemContextEnvironment.BackgroundCodingKeys, v3);
  v21 = *(v8 - 8);
  v22 = v8;
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  sub_228501408(0, &qword_27D840478, sub_2285000A8, &type metadata for FeedItemContextEnvironment.CodingKeys, v3);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v20 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2285000A8();
  sub_22855E31C();
  if (v25)
  {
    v27 = 1;
    sub_228500000();
    sub_22855E06C();
    (*(v23 + 8))(v7, v24);
  }

  else
  {
    v26 = 0;
    sub_228500054();
    sub_22855E06C();
    (*(v21 + 8))(v11, v22);
  }

  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_228500000()
{
  result = qword_27D840460;
  if (!qword_27D840460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840460);
  }

  return result;
}

unint64_t sub_228500054()
{
  result = qword_27D840470;
  if (!qword_27D840470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840470);
  }

  return result;
}

unint64_t sub_2285000A8()
{
  result = qword_27D840480;
  if (!qword_27D840480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840480);
  }

  return result;
}

uint64_t FeedItemContextEnvironment.hashValue.getter(char a1)
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](a1 & 1);
  return sub_22855E27C();
}

uint64_t sub_228500188@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_228500604(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t FeedItemContext.previousFeedItems(uniqueIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2285012F8(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v11 = sub_22845FFC8(inited);
  swift_setDeallocating();
  sub_2284F1618(inited + 32);
  v12 = (*(a4 + 96))(v11, 1, 0, 0, a3, a4);

  v13 = *(v12 + 16);
  if (v13 > 1)
  {
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD000000000000013, 0x80000002285728D0);
    v18 = type metadata accessor for PluginFeedItem();
    v19 = MEMORY[0x22AAB9430](v12, v18);
    MEMORY[0x22AAB92A0](v19);

    MEMORY[0x22AAB92A0](0xD000000000000038, 0x80000002285728F0);
    MEMORY[0x22AAB92A0](a1, a2);
    result = sub_22855DEDC();
    __break(1u);
  }

  else if (v13)
  {
    v14 = type metadata accessor for PluginFeedItem();
    v15 = *(v14 - 8);
    sub_22844BBC4(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), a5);

    return (*(v15 + 56))(a5, 0, 1, v14);
  }

  else
  {

    v17 = type metadata accessor for PluginFeedItem();
    return (*(*(v17 - 8) + 56))(a5, 1, 1, v17);
  }

  return result;
}

id FeedItemContext.sourceProfile.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = [v2 profileIdentifier];

  return v3;
}

uint64_t sub_228500604(uint64_t *a1)
{
  v2 = MEMORY[0x277D844C8];
  sub_228501408(0, &qword_27D8404E0, sub_228500000, &type metadata for FeedItemContextEnvironment.UserInteractiveCodingKeys, MEMORY[0x277D844C8]);
  v34 = v3;
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v32 - v5;
  sub_228501408(0, &qword_27D8404E8, sub_228500054, &type metadata for FeedItemContextEnvironment.BackgroundCodingKeys, v2);
  v7 = v6;
  v35 = *(v6 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  sub_228501408(0, &qword_27D8404F0, sub_2285000A8, &type metadata for FeedItemContextEnvironment.CodingKeys, v2);
  v12 = v11;
  v38 = *(v11 - 8);
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2285000A8();
  v17 = v39;
  sub_22855E30C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v33 = v7;
  v19 = v35;
  v18 = v36;
  v20 = v37;
  v39 = a1;
  v21 = sub_22855E04C();
  v22 = (2 * *(v21 + 16)) | 1;
  v40 = v21;
  v41 = v21 + 32;
  v42 = 0;
  v43 = v22;
  v23 = sub_2284E2D64();
  if (v23 == 2 || v42 != v43 >> 1)
  {
    v26 = sub_22855DCEC();
    swift_allocError();
    v28 = v27;
    sub_2284E7D94();
    v30 = *(v29 + 48);
    *v28 = &type metadata for FeedItemContextEnvironment;
    sub_22855DFDC();
    sub_22855DCCC();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    swift_willThrow();
    (*(v38 + 8))(v15, v12);
    swift_unknownObjectRelease();
    a1 = v39;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v23;
  if (v23)
  {
    v44 = 1;
    sub_228500000();
    sub_22855DFCC();
    v25 = v38;
    (*(v20 + 8))(v18, v34);
  }

  else
  {
    v44 = 0;
    sub_228500054();
    sub_22855DFCC();
    v25 = v38;
    (*(v19 + 8))(v10, v33);
  }

  (*(v25 + 8))(v15, v12);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v24 & 1;
}

uint64_t _s14HealthPlatform15FeedItemContextPAAE20displayNamePublisher7Combine03AnyH0VyAA014ProfileDisplayG0Vs5Error_pGvg_0()
{
  sub_2285012F8(0, &qword_27D8404C8, &type metadata for ProfileDisplayName, MEMORY[0x277CBCE78]);
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = v14 - v4;
  sub_228501348();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = 0;
  v14[2] = 0xE000000000000000;
  v14[3] = 0;
  v14[4] = 0xE000000000000000;
  v14[5] = MEMORY[0x277D84F90];
  sub_22855CDCC();
  sub_228418D44();
  sub_22855CD9C();
  (*(v2 + 8))(v5, v1);
  sub_2285013B0();
  v12 = sub_22855CE6C();
  (*(v8 + 8))(v11, v7);
  return v12;
}

unint64_t sub_228500CB0()
{
  result = qword_27D840488;
  if (!qword_27D840488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840488);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform21FeedItemContextChangeO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_228500D30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3B && *(a1 + 33))
  {
    return (*a1 + 59);
  }

  v3 = ((*(a1 + 32) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 32) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_228500D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3A)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 59;
    *(result + 8) = 0;
    if (a3 >= 0x3B)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3B)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_228500DF0(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 32) = *(result + 32) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -96;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform26FeedItemContextChangeErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_228500E4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_228500E94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_228500ED8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t dispatch thunk of FeedItemContext.commit(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 80))();
}

{
  return (*(a3 + 88))();
}

unint64_t sub_228501094()
{
  result = qword_27D840490;
  if (!qword_27D840490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840490);
  }

  return result;
}

unint64_t sub_2285010EC()
{
  result = qword_27D840498;
  if (!qword_27D840498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840498);
  }

  return result;
}

unint64_t sub_228501144()
{
  result = qword_27D8404A0;
  if (!qword_27D8404A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8404A0);
  }

  return result;
}

unint64_t sub_22850119C()
{
  result = qword_27D8404A8;
  if (!qword_27D8404A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8404A8);
  }

  return result;
}

unint64_t sub_2285011F4()
{
  result = qword_27D8404B0;
  if (!qword_27D8404B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8404B0);
  }

  return result;
}

unint64_t sub_22850124C()
{
  result = qword_27D8404B8;
  if (!qword_27D8404B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8404B8);
  }

  return result;
}

unint64_t sub_2285012A4()
{
  result = qword_27D8404C0;
  if (!qword_27D8404C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8404C0);
  }

  return result;
}

void sub_2285012F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_228501348()
{
  if (!qword_27D8404D0)
  {
    sub_228418D44();
    v0 = sub_22855E2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8404D0);
    }
  }
}

unint64_t sub_2285013B0()
{
  result = qword_27D8404D8;
  if (!qword_27D8404D8)
  {
    sub_228501348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8404D8);
  }

  return result;
}

void sub_228501408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t AnchoredChangeSet.changes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void *AnchoredChangeSet.newAnchor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

HealthPlatform::AnchoredChangeSet __swiftcall AnchoredChangeSet.init(changes:newAnchor:)(Swift::OpaquePointer changes, HKQueryAnchor_optional newAnchor)
{
  v2->_rawValue = changes._rawValue;
  v2[1]._rawValue = newAnchor.value.super.isa;
  result.newAnchor = newAnchor;
  result.changes = changes;
  return result;
}

uint64_t AnchoredDatabaseState.anchoredChangeSet.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  v3 = v2;
}

void *AnchoredDatabaseState.init(anchoredChangeSet:dateRanges:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = a2;
  return result;
}

void *AnchoredTypeChangeSet.change.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *AnchoredTypeChangeSet.newAnchor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t AnchoredTypeChangeSet.init(hkType:change:newAnchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id AnchoredTypeState.anchoredTypeChangeSet.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v7 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v7;
  a1[2] = v3;
  v4 = v3;
  v5 = v2;

  return v7;
}

__n128 AnchoredTypeState.anchoredTypeChangeSet.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 8) = result;
  return result;
}

uint64_t AnchoredTypeState.dataPresentDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AnchoredTypeState() + 20);

  return sub_228501D28(v3, a1);
}

uint64_t AnchoredTypeState.dataPresentDateInterval.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AnchoredTypeState() + 20);

  return sub_228501DE4(a1, v3);
}

uint64_t AnchoredTypeState.init(anchoredTypeChangeSet:dataPresentDateInterval:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *a1;
  v5 = *(a1 + 2);
  v6 = *(type metadata accessor for AnchoredTypeState() + 20);
  v7 = sub_22855BE1C();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  *a3 = v9;
  *(a3 + 16) = v5;

  return sub_228501DE4(a2, a3 + v6);
}

uint64_t _s14HealthPlatform17AnchoredChangeSetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_22843FD30(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {
        sub_2283EF310(0, &qword_280DE94D0, 0x277CCD840);
        v4 = v3;
        v5 = v2;
        v6 = sub_22855D9AC();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s14HealthPlatform21AnchoredTypeChangeSetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  if ((sub_22855D9AC() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    sub_2283EF310(0, &qword_280DE93E8, 0x277CCD8E0);
    v8 = v6;
    v9 = v3;
    v10 = sub_22855D9AC();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4)
  {
    if (v7)
    {
      sub_2283EF310(0, &qword_280DE94D0, 0x277CCD840);
      v11 = v7;
      v12 = v4;
      v13 = sub_22855D9AC();

      if (v13)
      {
        return 1;
      }
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t _s14HealthPlatform21AnchoredDatabaseStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = v6;

  v9 = v3;

  if ((sub_22843FD30(v2, v5) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v3)
  {
    if (v6)
    {
      sub_2283EF310(0, &qword_280DE94D0, 0x277CCD840);
      v10 = v8;
      v11 = v9;
      v12 = sub_22855D9AC();

      if (v12)
      {
        goto LABEL_9;
      }

      return 0;
    }

LABEL_6:

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:

  return sub_22843F83C(v4, v7);
}

uint64_t type metadata accessor for AnchoredTypeState()
{
  result = qword_280DEE648;
  if (!qword_280DEE648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228501D28(uint64_t a1, uint64_t a2)
{
  sub_228501D8C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228501D8C()
{
  if (!qword_280DEE798)
  {
    sub_22855BE1C();
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE798);
    }
  }
}

uint64_t sub_228501DE4(uint64_t a1, uint64_t a2)
{
  sub_228501D8C();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s14HealthPlatform17AnchoredTypeStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855BE1C();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228501D8C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22850227C();
  v11 = v10;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v47 = *a1;
  v15 = v47;
  v48 = v16;
  v49 = v17;
  v19 = *(a2 + 8);
  v20 = *(a2 + 16);
  v44 = *a2;
  v18 = v44;
  v45 = v19;
  v46 = v20;
  v21 = v20;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  LOBYTE(v15) = _s14HealthPlatform21AnchoredTypeChangeSetV2eeoiySbAC_ACtFZ_0(&v47, &v44);
  v27 = v45;
  v28 = v46;

  v29 = v48;
  v30 = v49;

  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v31 = *(type metadata accessor for AnchoredTypeState() + 20);
  v32 = *(v11 + 48);
  sub_228501D28(a1 + v31, v14);
  sub_228501D28(a2 + v31, &v14[v32]);
  v33 = v43;
  v34 = *(v43 + 48);
  if (v34(v14, 1, v4) == 1)
  {
    if (v34(&v14[v32], 1, v4) == 1)
    {
      sub_2285022E0(v14, sub_228501D8C);
      return 1;
    }

    goto LABEL_7;
  }

  v35 = v42;
  sub_228501D28(v14, v42);
  if (v34(&v14[v32], 1, v4) == 1)
  {
    (*(v33 + 8))(v35, v4);
LABEL_7:
    sub_2285022E0(v14, sub_22850227C);
    return 0;
  }

  v37 = v41;
  (*(v33 + 32))(v41, &v14[v32], v4);
  sub_228502340();
  v38 = sub_22855D16C();
  v39 = *(v33 + 8);
  v39(v37, v4);
  v39(v35, v4);
  sub_2285022E0(v14, sub_228501D8C);
  return (v38 & 1) != 0;
}

void sub_228502200()
{
  sub_228501D8C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22850227C()
{
  if (!qword_27D8404F8)
  {
    sub_228501D8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8404F8);
    }
  }
}

uint64_t sub_2285022E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_228502340()
{
  result = qword_27D83F598;
  if (!qword_27D83F598)
  {
    sub_22855BE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F598);
  }

  return result;
}

void SharableModelReference.asPluginFeedItemSharableModelReference()(uint64_t *a1@<X8>)
{
  v3 = [v1 identifier];
  v4 = sub_22855D1AC();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t SharableModelReference.__allocating_init(context:pluginSharableModelReference:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *a2;
  v5 = a2[1];
  v7 = objc_opt_self();
  v8 = sub_22855D17C();
  v9 = [v7 entityForName:v8 inManagedObjectContext:a1];

  if (v9)
  {
    v10 = [objc_allocWithZone(v3) initWithEntity:v9 insertIntoManagedObjectContext:a1];
    v11 = sub_22855D17C();

    [v10 setIdentifier_];

    return v10;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void *static SharableModelReference.findOrCreate(pluginSharableModelReference:in:for:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  sub_228439BBC();
  sub_22840A70C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228561250;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_22840A7C8();
  *(v9 + 32) = 0x696669746E656469;
  *(v9 + 40) = 0xEA00000000007265;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = v7;
  *(v9 + 80) = v8;
  *(v9 + 136) = v10;
  *(v9 + 144) = v11;
  *(v9 + 112) = 0x6D65744964656566;
  *(v9 + 120) = 0xE800000000000000;
  *(v9 + 176) = type metadata accessor for FeedItem();
  *(v9 + 184) = sub_2285026F4();
  *(v9 + 152) = a3;

  v12 = a3;
  v13 = sub_22855D62C();
  v14 = static NSManagedObjectUnique<>.findOrCreate(context:uniquenessPredicate:)(a2, v13, v4, &protocol witness table for SharableModelReference);
  v15 = sub_22855D17C();
  [v14 setIdentifier_];

  [v14 setFeedItem_];
  return v14;
}

unint64_t sub_2285026F4()
{
  result = qword_280DE9FC8;
  if (!qword_280DE9FC8)
  {
    type metadata accessor for FeedItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE9FC8);
  }

  return result;
}

id static SharableModelReference.fetchRequest(predicate:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_22855D17C();
  v4 = [v2 initWithEntityName_];

  [v4 setPredicate_];
  return v4;
}

uint64_t FeedItemGenerator.domain.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = v2;
}

void *FeedItemGenerator.feedItemPredicate.getter()
{
  v1 = *(v0 + 40);
  sub_22845063C(v1, *(v0 + 48), *(v0 + 56), *(v0 + 64));
  return v1;
}

uint64_t FeedItemGenerator.init<A>(context:domain:feedItemPredicate:feedItemsPublisher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v54 = a7;
  v55 = a1;
  v49 = a6;
  v48 = a5;
  v14 = type metadata accessor for GeneratorContext();
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v47 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a8;
  v16 = sub_22855CBAC();
  v53 = *(v16 - 8);
  v17 = *(v53 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  sub_2284AE260(255, &qword_280DEE3D8, &type metadata for FeedItemContextChange, MEMORY[0x277D83940]);
  v46 = v20;
  WitnessTable = swift_getWitnessTable();
  v50 = sub_22855CB6C();
  v52 = *(v50 - 8);
  v21 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v23 = &v40 - v22;
  v24 = *(a2 + 24);
  *a9 = *a2;
  *(a9 + 8) = *(a2 + 8);
  *(a9 + 24) = v24;
  v25 = a3;
  v41 = a3;
  v42 = a4;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  v26 = a4;
  v27 = v48;
  *(a9 + 56) = v48;
  LOBYTE(a3) = v49;
  *(a9 + 64) = v49;
  sub_22845063C(v25, v26, v27, a3);
  sub_22855CEDC();
  v44 = type metadata accessor for GeneratorContext;
  v28 = v47;
  sub_22850554C(v55, v47, type metadata accessor for GeneratorContext);
  v29 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v30 = (v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_228505614(v28, v31 + v29, type metadata accessor for GeneratorContext);
  v32 = v31 + v30;
  v34 = v41;
  v33 = v42;
  *v32 = v41;
  *(v32 + 8) = v33;
  v35 = v27;
  *(v32 + 16) = v27;
  LOBYTE(v27) = a3;
  *(v32 + 24) = a3;
  v36 = v33;
  sub_22845063C(v34, v33, v35, v27);
  sub_22855CE8C();

  (*(v53 + 8))(v19, v16);
  v37 = v50;
  swift_getWitnessTable();
  v38 = sub_22855CE6C();
  sub_228451F14(v34, v36, v35, v27);
  (*(*(v43 - 8) + 8))(v54);
  sub_2285055B4(v55, v44);
  result = (*(v52 + 8))(v23, v37);
  *(a9 + 32) = v38;
  return result;
}

id sub_228502CD4@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, char a5@<W5>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  sub_2284AE260(0, &qword_280DEE3B0, &type metadata for FeedItemContextChange, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_228560580;
  *(v12 + 32) = v11;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a4;
  *(v12 + 64) = a5 | 0x80;
  *a6 = v12;

  return sub_22845063C(a2, a3, a4, a5);
}

__n128 FeedItemGenerator.init<A>(context:domain:feedItemIdentifier:feedItemPublisher:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a5;
  v34 = a4;
  v33 = a3;
  v37 = a1;
  v35 = a7;
  v9 = type metadata accessor for GeneratorContext();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v12;
  sub_2285030FC(255);
  v32 = a6;
  v13 = sub_22855CB6C();
  v31 = *(v13 - 8);
  v14 = *(v31 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = *a2;
  v21 = *(a2 + 24);
  v29 = *(a2 + 1);
  sub_22855CE8C();
  sub_22850554C(v37, v12, type metadata accessor for GeneratorContext);
  v38 = v20;
  v39 = v29;
  v40 = v21;
  sub_2284AE260(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = v33;
  v23 = inited + 32;
  *(inited + 40) = v34;
  v24 = sub_22845FFC8(inited);
  swift_setDeallocating();
  sub_2284F1618(v23);
  v25 = v31;
  (*(v31 + 16))(v17, v19, v13);
  swift_getWitnessTable();
  FeedItemGenerator.init<A>(context:domain:feedItemPredicate:feedItemsPublisher:)(v30, &v38, v24, 1, 0, 0, v17, v13, v41);
  (*(*(v32 - 8) + 8))(v36);
  sub_2285055B4(v37, type metadata accessor for GeneratorContext);
  (*(v25 + 8))(v19, v13);
  v26 = v41[3];
  v27 = v35;
  *(v35 + 32) = v41[2];
  *(v27 + 48) = v26;
  *(v27 + 64) = v42;
  result = v41[1];
  *v27 = v41[0];
  *(v27 + 16) = result;
  return result;
}

uint64_t sub_228503130@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PluginFeedItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284FB20C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22850554C(a1, v12, sub_2284FB20C);
  result = (*(v5 + 48))(v12, 1, v4);
  if (result == 1)
  {
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_228505614(v12, v8, type metadata accessor for PluginFeedItem);
    sub_228504C90(0, &qword_280DEE3B8, type metadata accessor for PluginFeedItem, MEMORY[0x277D84560]);
    v15 = *(v5 + 72);
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_228560580;
    result = sub_228505614(v8, v14 + v16, type metadata accessor for PluginFeedItem);
  }

  *a2 = v14;
  return result;
}

double FeedItemGenerator.init(context:domain:feedItemPredicate:feedItemsProvider:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v64 = a6;
  v63 = a5;
  v56 = a4;
  v77 = a1;
  v67 = a9;
  sub_228504B34();
  v15 = *(v14 - 8);
  v70 = v14;
  v71 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v59 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228504D3C(0);
  v19 = *(v18 - 8);
  v72 = v18;
  v73 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v66 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for GeneratorContext();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v57 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v75 = &v55 - v25;
  sub_228504BC8();
  v76 = v26;
  v60 = *(v26 - 8);
  v27 = v60;
  v28 = *(v60 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v74 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v55 - v31;
  v68 = *a2;
  v69 = *(a2 + 24);
  v33 = swift_allocObject();
  *(v33 + 16) = a7;
  *(v33 + 24) = a8;
  v61 = a8;
  sub_228504C5C(0);
  sub_228504CF4(&qword_280DE9840, sub_228504C5C);

  v65 = *(a2 + 1);
  v62 = v32;
  sub_22855CE2C();
  v34 = v75;
  sub_22850554C(v77, v75, type metadata accessor for GeneratorContext);
  (*(v27 + 16))(v74, v32, v76);
  v35 = a4;
  v36 = v63;
  LOBYTE(a8) = v64;
  sub_22845063C(a3, v35, v63, v64);
  sub_228504CF4(&qword_280DE9738, sub_228504BC8);
  v37 = v59;
  sub_22855CEDC();
  v38 = v57;
  sub_22850554C(v34, v57, type metadata accessor for GeneratorContext);
  v39 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v40 = (v23 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_228505614(v38, v41 + v39, type metadata accessor for GeneratorContext);
  v42 = v41 + v40;
  v43 = v56;
  *v42 = a3;
  *(v42 + 8) = v43;
  *(v42 + 16) = v36;
  LOBYTE(v40) = a8;
  *(v42 + 24) = a8;
  v44 = a3;
  v45 = a3;
  v46 = v36;
  sub_22845063C(v44, v43, v36, v40);
  sub_2284AE260(0, &qword_280DEE3D8, &type metadata for FeedItemContextChange, MEMORY[0x277D83940]);
  sub_228504CF4(&qword_280DE9AE8, sub_228504B34);
  v47 = v66;
  v48 = v70;
  sub_22855CE8C();

  (*(v71 + 8))(v37, v48);
  sub_228504CF4(&qword_280DE9B58, sub_228504D3C);
  v49 = v72;
  v50 = sub_22855CE6C();
  sub_228451F14(v45, v43, v46, v40);

  sub_2285055B4(v77, type metadata accessor for GeneratorContext);
  (*(v73 + 8))(v47, v49);
  v51 = *(v60 + 8);
  v52 = v76;
  v51(v74, v76);
  sub_2285055B4(v75, type metadata accessor for GeneratorContext);
  v51(v62, v52);
  v53 = v67;
  *v67 = v68;
  result = *&v65;
  *(v53 + 1) = v65;
  *(v53 + 24) = v69;
  v53[4] = v50;
  v53[5] = v45;
  v53[6] = v43;
  v53[7] = v46;
  *(v53 + 64) = v40;
  return result;
}

double FeedItemGenerator.init(context:domain:feedItemIdentifier:feedItemProvider:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *&v70 = a4;
  v69 = a3;
  v86 = a1;
  v76 = a7;
  sub_228504DC8();
  v77 = v10;
  v79 = *(v10 - 8);
  v11 = *(v79 + 64);
  MEMORY[0x28223BE20](v10);
  v71 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228504FD0(0);
  v78 = v13;
  v80 = *(v13 - 8);
  v14 = *(v80 + 64);
  MEMORY[0x28223BE20](v13);
  v75 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228504E5C();
  v17 = *(v16 - 8);
  v84 = v16;
  v85 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v82 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v81 = &v60 - v21;
  v22 = type metadata accessor for GeneratorContext();
  v65 = *(v22 - 8);
  v23 = *(v65 + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v63 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v61 = &v60 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v60 - v27;
  sub_228504F08();
  v83 = v29;
  v67 = *(v29 - 8);
  v30 = v67;
  v31 = *(v67 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v60 - v35;
  v73 = *a2;
  v74 = *(a2 + 24);
  v37 = swift_allocObject();
  *(v37 + 16) = a5;
  *(v37 + 24) = a6;
  v66 = a6;
  sub_228504F9C(0);
  sub_228504CF4(&qword_280DE9860, sub_228504F9C);

  v72 = *(a2 + 1);
  v68 = v36;
  sub_22855CE2C();
  v64 = v28;
  sub_22850554C(v86, v28, type metadata accessor for GeneratorContext);
  v38 = *(v30 + 16);
  v62 = v34;
  v38(v34, v36, v83);
  sub_2285030FC(0);
  sub_228504CF4(&qword_280DE9748, sub_228504F08);
  v39 = v81;
  sub_22855CE8C();
  v40 = v61;
  sub_22850554C(v28, v61, type metadata accessor for GeneratorContext);
  sub_2284AE260(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = v69;
  v42 = inited + 32;
  *(inited + 40) = v70;
  v43 = sub_22845FFC8(inited);
  swift_setDeallocating();
  sub_2284F1618(v42);
  (*(v85 + 16))(v82, v39, v84);
  sub_228504CF4(&qword_280DE9B78, sub_228504E5C);

  v44 = v71;
  sub_22855CEDC();
  v45 = v63;
  sub_22850554C(v40, v63, type metadata accessor for GeneratorContext);
  v46 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v47 = (v23 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_228505614(v45, v48 + v46, type metadata accessor for GeneratorContext);
  v49 = v48 + v47;
  *v49 = v43;
  v70 = xmmword_228561CA0;
  *(v49 + 8) = xmmword_228561CA0;
  *(v49 + 24) = 0;
  sub_2284AE260(0, &qword_280DEE3D8, &type metadata for FeedItemContextChange, MEMORY[0x277D83940]);
  sub_228504CF4(&qword_280DE9AC8, sub_228504DC8);

  v50 = v75;
  v51 = v77;
  sub_22855CE8C();

  (*(v79 + 8))(v44, v51);
  sub_228504CF4(&qword_280DE9B38, sub_228504FD0);
  v52 = v78;
  v53 = sub_22855CE6C();

  sub_2285055B4(v86, type metadata accessor for GeneratorContext);
  (*(v80 + 8))(v50, v52);
  v54 = v84;
  v55 = *(v85 + 8);
  v55(v82, v84);
  sub_2285055B4(v40, type metadata accessor for GeneratorContext);
  v55(v81, v54);
  v56 = *(v67 + 8);
  v57 = v83;
  v56(v62, v83);
  sub_2285055B4(v64, type metadata accessor for GeneratorContext);
  v56(v68, v57);
  v58 = v76;
  *v76 = v73;
  *(v58 + 1) = v72;
  *(v58 + 24) = v74;
  v58[4] = v53;
  v58[5] = v43;
  result = *&v70;
  *(v58 + 3) = v70;
  *(v58 + 64) = 0;
  return result;
}

uint64_t sub_228504208(void (*a1)(uint64_t))
{
  sub_2284FB20C();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v11 - v8;
  a1(v7);
  sub_22850554C(v9, v6, sub_2284FB20C);
  sub_22855CDCC();
  return sub_2285055B4(v9, sub_2284FB20C);
}

double static FeedItemGenerator.delete(context:domain:feedItemIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *&v62 = a4;
  v61 = a3;
  v68 = a5;
  sub_228505014();
  v71 = v7;
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228505154(0);
  v72 = v10;
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2285050A8();
  v77 = v13;
  v79 = *(v13 - 8);
  v14 = *(v79 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v76 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = &v56 - v17;
  sub_2284FB20C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228504F9C(0);
  v78 = v22;
  v70 = *(v22 - 8);
  v23 = *(v70 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for GeneratorContext();
  v58 = *(v26 - 8);
  v27 = *(v58 + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v57 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v56 = &v56 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v56 - v31;
  v34 = *(a2 + 8);
  v65 = *a2;
  v33 = v65;
  v64 = v34;
  v63 = *(a2 + 16);
  v67 = *(a2 + 24);
  v60 = &v56 - v31;
  sub_22850554C(a1, &v56 - v31, type metadata accessor for GeneratorContext);
  v35 = type metadata accessor for PluginFeedItem();
  (*(*(v35 - 8) + 56))(v21, 1, 1, v35);
  v36 = v33;

  v59 = v25;
  sub_22855CDCC();
  sub_2285030FC(0);
  sub_228504CF4(&qword_280DE9860, sub_228504F9C);
  v37 = v75;
  sub_22855CE8C();
  v38 = v56;
  sub_22850554C(v32, v56, type metadata accessor for GeneratorContext);
  sub_2284AE260(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = v61;
  *(inited + 40) = v62;

  v40 = sub_22845FFC8(inited);
  swift_setDeallocating();
  sub_2284F1618(inited + 32);
  (*(v79 + 16))(v76, v37, v77);
  sub_228504CF4(&qword_280DE9BA0, sub_2285050A8);

  v41 = v66;
  sub_22855CEDC();
  v42 = v57;
  sub_22850554C(v38, v57, type metadata accessor for GeneratorContext);
  v43 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v44 = (v27 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  sub_228505614(v42, v45 + v43, type metadata accessor for GeneratorContext);
  v46 = v45 + v44;
  *v46 = v40;
  v62 = xmmword_228561CA0;
  *(v46 + 8) = xmmword_228561CA0;
  *(v46 + 24) = 0;
  sub_2284AE260(0, &qword_280DEE3D8, &type metadata for FeedItemContextChange, MEMORY[0x277D83940]);
  sub_228504CF4(&qword_280DE9AD8, sub_228505014);

  v47 = v69;
  v48 = v71;
  sub_22855CE8C();

  (*(v73 + 8))(v41, v48);
  sub_228504CF4(&qword_280DE9B48, sub_228505154);
  v49 = v72;
  v50 = sub_22855CE6C();

  (*(v74 + 8))(v47, v49);
  v51 = *(v79 + 8);
  v52 = v77;
  v51(v76, v77);
  sub_2285055B4(v38, type metadata accessor for GeneratorContext);
  v51(v75, v52);
  (*(v70 + 8))(v59, v78);
  sub_2285055B4(v60, type metadata accessor for GeneratorContext);
  v53 = v68;
  v54 = v64;
  *v68 = v65;
  v53[1] = v54;
  v53[2] = v63;
  *(v53 + 24) = v67;
  v53[4] = v50;
  v53[5] = v40;
  result = *&v62;
  *(v53 + 3) = v62;
  *(v53 + 64) = 0;
  return result;
}

void sub_228504B34()
{
  if (!qword_280DE9AE0)
  {
    sub_228504BC8();
    sub_228504CF4(&qword_280DE9738, sub_228504BC8);
    v0 = sub_22855CBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9AE0);
    }
  }
}

void sub_228504BC8()
{
  if (!qword_280DE9730)
  {
    sub_228504C5C(255);
    sub_228504CF4(&qword_280DE9840, sub_228504C5C);
    v0 = sub_22855CE3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9730);
    }
  }
}

void sub_228504C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228504CF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228504D78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
  sub_2285030FC(0);
  return sub_22855CDCC();
}

void sub_228504DC8()
{
  if (!qword_280DE9AC0)
  {
    sub_228504E5C();
    sub_228504CF4(&qword_280DE9B78, sub_228504E5C);
    v0 = sub_22855CBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9AC0);
    }
  }
}

void sub_228504E5C()
{
  if (!qword_280DE9B70)
  {
    sub_228504F08();
    sub_2285030FC(255);
    sub_228504CF4(&qword_280DE9748, sub_228504F08);
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9B70);
    }
  }
}

void sub_228504F08()
{
  if (!qword_280DE9740)
  {
    sub_228504F9C(255);
    sub_228504CF4(&qword_280DE9860, sub_228504F9C);
    v0 = sub_22855CE3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9740);
    }
  }
}

void sub_228505014()
{
  if (!qword_280DE9AD0)
  {
    sub_2285050A8();
    sub_228504CF4(&qword_280DE9BA0, sub_2285050A8);
    v0 = sub_22855CBAC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9AD0);
    }
  }
}

void sub_2285050A8()
{
  if (!qword_280DE9B98)
  {
    sub_228504F9C(255);
    sub_2285030FC(255);
    sub_228504CF4(&qword_280DE9860, sub_228504F9C);
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9B98);
    }
  }
}

void sub_228505190(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2284AE260(255, &qword_280DEE3D8, &type metadata for FeedItemContextChange, MEMORY[0x277D83940]);
    sub_228504CF4(a4, a5);
    v8 = sub_22855CB6C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for GeneratorContext();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  sub_228450F00();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = *(v6 + 8);

    v8 = *(type metadata accessor for CountryRetrievalRecord() + 24);
    v9 = sub_22855C16C();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v5 + v1[8]));
  sub_228451F14(*(v0 + v10), *(v0 + v10 + 8), *(v0 + v10 + 16), *(v0 + v10 + 24));

  return MEMORY[0x2821FE8E8](v0, v10 + 25, v2 | 7);
}

id sub_2285053C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for GeneratorContext() - 8);
  v6 = v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);

  return sub_228502CD4(a1, v7, v8, v9, v10, a2);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2285054A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_2285054E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22850554C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2285055B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228505614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22850568C(id *a1)
{
  v1 = [*a1 dateUpdated];
  sub_22855C13C();
}

void sub_228505704(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 kindRawValue];
  v4 = sub_22855D1AC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

Swift::Void __swiftcall DebuggingResponder.registerForDebuggingRequests()()
{
  v2 = v1;
  v3 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v4 = sub_22855CABC();
  __swift_project_value_buffer(v4, qword_280DEEC98);
  v5 = sub_22855CA8C();
  v6 = sub_22855D66C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v3;
    v14 = v8;
    *v7 = 136315138;
    swift_getMetatypeMetadata();
    v9 = sub_22855D1BC();
    v11 = sub_2283F8938(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2283ED000, v5, v6, "[%s] registerForDebuggingRequests()", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AABAD40](v8, -1, -1);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  v12 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v12 addObserver:v2 selector:v13 name:v14 object:?];
}

Swift::Void __swiftcall DebuggingResponder.deregisterForDebuggingRequests()()
{
  v2 = v1;
  v3 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v4 = sub_22855CABC();
  __swift_project_value_buffer(v4, qword_280DEEC98);
  v5 = sub_22855CA8C();
  v6 = sub_22855D66C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v3;
    v14 = v8;
    *v7 = 136315138;
    swift_getMetatypeMetadata();
    v9 = sub_22855D1BC();
    v11 = sub_2283F8938(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2283ED000, v5, v6, "[%s] deregisterForDebuggingRequests()", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AABAD40](v8, -1, -1);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  v12 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v12 removeObserver:v2 name:qword_280DE93C8 object:{0, v13, v14}];
}

void *USR1SignalDebuggingResponderListener.init()()
{
  v1 = sub_22855CFCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x277CCAB98]) init];
  sub_2283FA06C();
  (*(v2 + 104))(v5, *MEMORY[0x277D851B8], v1);
  v6 = sub_22855D85C();
  (*(v2 + 8))(v5, v1);
  v7 = sub_2284A6F94(30);

  v8 = qword_280DEEBC8;
  swift_retain_n();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_22855CABC();
  __swift_project_value_buffer(v9, qword_280DEEBD0);
  v10 = sub_22855CA8C();
  v11 = sub_22855D6AC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v7;
    v19 = v13;
    *v12 = 136315138;
    type metadata accessor for USR1SignalDebuggingResponderListener();

    v14 = sub_22855D1CC();
    v16 = sub_2283F8938(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2283ED000, v10, v11, "%s: init()", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AABAD40](v13, -1, -1);
    MEMORY[0x22AABAD40](v12, -1, -1);
  }

  return v7;
}

void sub_228505DD8()
{
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v1 = sub_22855CABC();
  __swift_project_value_buffer(v1, qword_280DEEBD0);

  v2 = sub_22855CA8C();
  v3 = sub_22855D6AC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v0;
    v18 = v5;
    *v4 = 136315138;
    type metadata accessor for USR1SignalDebuggingResponderListener();

    v6 = sub_22855D1CC();
    v8 = sub_2283F8938(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2283ED000, v2, v3, "%s: sourceNotification() sending message", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AABAD40](v5, -1, -1);
    MEMORY[0x22AABAD40](v4, -1, -1);
  }

  v9 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v9 postNotificationName:qword_280DE93C8 object:{v0, v17, v18}];

  v10 = sub_22855CA8C();
  v11 = sub_22855D6AC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    type metadata accessor for USR1SignalDebuggingResponderListener();

    v14 = sub_22855D1CC();
    v16 = sub_2283F8938(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2283ED000, v10, v11, "%s: sourceNotification() complete", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AABAD40](v13, -1, -1);
    MEMORY[0x22AABAD40](v12, -1, -1);
  }
}

uint64_t USR1SignalDebuggingResponderListener.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22855D8FC();
  swift_unknownObjectRelease();
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t USR1SignalDebuggingResponderListener.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22855D8FC();
  swift_unknownObjectRelease();
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_228506190()
{
  result = sub_22855D17C();
  qword_280DE93C8 = result;
  return result;
}

id static NSNotificationName.DebuggingResponderRequest.getter()
{
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE93C8;

  return v1;
}

id SharableModelReference.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id SharableModelReference.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SharableModelReference();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id SharableModelReference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharableModelReference();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2285063E0()
{
  type metadata accessor for FileProtectionStateMonitor();
  v0 = swift_allocObject();
  result = FileProtectionStateMonitor.init()();
  qword_27D840500 = v0;
  return result;
}

uint64_t FileProtectionStateMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  FileProtectionStateMonitor.init()();
  return v0;
}

uint64_t static FileProtectionStateMonitor.shared.getter()
{
  if (qword_27D83F018 != -1)
  {
    swift_once();
  }
}

uint64_t FileProtectionStateMonitor.init()()
{
  v1 = v0;
  v18 = sub_22855D81C();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22855D7BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22855CFEC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v17 = sub_2283FA06C();
  sub_22855CFDC();
  v19 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D85230];
  sub_2283FA1D8(&unk_280DED140, MEMORY[0x277D85230]);
  sub_2283FA2E8(0, &qword_280DED250, v10);
  sub_2283F461C(&qword_280DED240, &qword_280DED250, v10);
  sub_22855DA9C();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v18);
  *(v0 + 24) = sub_22855D84C();
  v11 = MKBGetDeviceLockState();
  if (v11 == 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2 * (v11 != 1);
  }

  sub_228506790();
  v13 = swift_allocObject();
  *(v13 + 36) = 0;
  v14 = (v13 + 36);
  *(v13 + 16) = -1;
  v15 = (v13 + 16);
  *(v13 + 24) = MEMORY[0x277D84F90];
  *(v13 + 32) = v12;
  *(v1 + 16) = v13;

  os_unfair_lock_lock(v14);
  sub_2285068E0(v15);
  os_unfair_lock_unlock(v14);

  return v1;
}

void sub_228506790()
{
  if (!qword_27D840508)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D840508);
    }
  }
}

void sub_2285067F0(int *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_228507294;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_228506954;
  v6[3] = &block_descriptor_11_1;
  v5 = _Block_copy(v6);

  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", a1, v3, v5);
  _Block_release(v5);
}

uint64_t sub_2285068FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2285071D4();
  }

  return result;
}

uint64_t sub_228506954(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t FileProtectionStateMonitor.deinit()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 9);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  if (notify_is_valid_token(os_unfair_lock_opaque))
  {
    notify_cancel(os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(v1 + 9);

  v3 = *(v0 + 16);

  return v0;
}

uint64_t FileProtectionStateMonitor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 9);
  os_unfair_lock_opaque = v1[4]._os_unfair_lock_opaque;
  if (notify_is_valid_token(os_unfair_lock_opaque))
  {
    notify_cancel(os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(v1 + 9);

  v3 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_228506AA8(void (*a1)(void))
{
  v3 = v1[2];
  v4 = *v1;
  os_unfair_lock_lock(v3 + 9);
  sub_228506C64(&v3[4], &v5);
  os_unfair_lock_unlock(v3 + 9);
  if (v5 == 1)
  {
    a1();
  }
}

uint64_t sub_228506B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  result = MKBGetDeviceLockState();
  if ((result - 1) > 1)
  {
    v13 = 1;
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = *(a1 + 8);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_228426C6C(0, v10[2] + 1, 1, v10);
      v10 = result;
    }

    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      result = sub_228426C6C((v11 > 1), v12 + 1, 1, v10);
      v10 = result;
    }

    v13 = 0;
    v10[2] = v12 + 1;
    v14 = &v10[2 * v12];
    v14[4] = sub_2284186F8;
    v14[5] = v9;
    *(a1 + 8) = v10;
  }

  *a4 = v13;
  return result;
}

uint64_t sub_228506C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a1;
  v36 = sub_22855CFBC();
  v38 = *(v36 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v34 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22855CFEC();
  v35 = *(v37 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855D00C();
  v31 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v29 - v16;
  v33 = sub_22855CFAC();
  v18 = *(v33 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v33);
  v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v21 = 250;
  (*(v18 + 104))(v21, *MEMORY[0x277D85178]);
  v29[1] = *(v3 + 24);
  sub_22855CFFC();
  MEMORY[0x22AAB90D0](v15, v21);
  v30 = *(v11 + 8);
  v30(v15, v10);
  v22 = swift_allocObject();
  v23 = v32;
  v22[2] = v3;
  v22[3] = v23;
  v22[4] = a2;
  aBlock[4] = sub_228507110;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_23;
  v24 = _Block_copy(aBlock);

  sub_22855CFDC();
  v39 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D85198];
  sub_2283FA1D8(&qword_280DED2D0, MEMORY[0x277D85198]);
  sub_2283FA2E8(0, &qword_280DED270, v25);
  sub_2283F461C(&qword_280DED260, &qword_280DED270, v25);
  v26 = v34;
  v27 = v36;
  sub_22855DA9C();
  MEMORY[0x22AAB9840](v17, v9, v26, v24);
  _Block_release(v24);
  (*(v38 + 8))(v26, v27);
  (*(v35 + 8))(v9, v37);
  v30(v17, v31);
  (*(v18 + 8))(v21, v33);
}

void sub_228507110()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_228506AA8(v1);
}

uint64_t sub_2285071D4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 36));
  v2 = MKBGetDeviceLockState();
  v3 = MEMORY[0x277D84F90];
  if ((v2 - 1) >= 2)
  {
    v4 = *(v1 + 24);
    *(v1 + 24) = MEMORY[0x277D84F90];
    v3 = v4;
  }

  os_unfair_lock_unlock((v1 + 36));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      v8(v9);

      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

unint64_t sub_2285072B0()
{
  result = qword_27D840510;
  if (!qword_27D840510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840510);
  }

  return result;
}

uint64_t MockPinnedContentUpdateNotifier.publisher.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t MockPinnedContentUpdateNotifier.publisher.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t MockPinnedContentUpdateNotifier.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_2283F2234();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_22855CD0C();
  return v0;
}

uint64_t MockPinnedContentUpdateNotifier.init()()
{
  sub_2283F2234();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_22855CD0C();
  return v0;
}

uint64_t MockPinnedContentUpdateNotifier.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MockPinnedContentUpdateNotifier.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2285074CC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t sub_228507510()
{
  [*(v0 + 16) stopObservation_];

  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t static PinnedContentManager.pinToSummary(objectType:healthStore:)(uint64_t a1, void *a2)
{
  v3 = _sSo12HKObjectTypeC14HealthPlatformE23pinnedContentIdentifierSSvg_0();
  v5 = v4;
  type metadata accessor for KeyValueDomainPinnedContentUpdateNotifier();
  v6 = swift_allocObject();
  sub_2283F2234();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = a2;
  *(v6 + 24) = sub_22855CD0C();
  sub_22855BCDC();
  v11 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v12 = v10;
  v13 = sub_22855D17C();

  v14 = [v11 initWithCategory:1 domainName:v13 healthStore:v12];

  *(v6 + 16) = v14;
  [v14 startObservation_];

  v15 = objc_allocWithZone(sub_22855BCCC());
  v16 = v12;
  v17 = sub_22855BCBC();
  v18 = swift_allocObject();
  sub_228401798(v17, v6, v18);
  v19._countAndFlagsBits = v3;
  v19._object = v5;
  PinnedContentManager.pin(identifier:)(v19);
}

uint64_t static PinnedContentManager.pin(identifier:domain:healthStore:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  type metadata accessor for KeyValueDomainPinnedContentUpdateNotifier();
  v7 = swift_allocObject();
  sub_2283F2234();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = a4;
  *(v7 + 24) = sub_22855CD0C();
  sub_22855BCDC();
  v12 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v13 = v11;
  v14 = sub_22855D17C();

  v15 = [v12 initWithCategory:1 domainName:v14 healthStore:v13];

  *(v7 + 16) = v15;
  [v15 startObservation_];

  v16 = objc_allocWithZone(sub_22855BCCC());
  v17 = v13;
  v18 = sub_22855BCBC();
  v19 = swift_allocObject();
  sub_228401798(v18, v7, v19);
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  PinnedContentManager.pin(identifier:)(v20);
}

Swift::Void __swiftcall PinnedContentManager.pin(identifier:)(Swift::String identifier)
{
  v2 = v1;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v4 = *v1;
  v5 = sub_22855CABC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v23[3] = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - v10;
  sub_22855CA6C();

  v12 = sub_22855CA8C();
  v13 = sub_22855D6AC();

  v14 = os_log_type_enabled(v12, v13);
  v24 = v5;
  v23[1] = v4;
  v23[2] = v6;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136315394;
    v26 = 91;
    v27 = 0xE100000000000000;
    v28[0] = v16;
    v17 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v17);

    MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
    v18 = *(v1 + 64);
    v19 = sub_22855BCDC();
    MEMORY[0x22AAB92A0](v19);

    v20 = sub_2283F8938(v26, v27, v28);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2283F8938(countAndFlagsBits, object, v28);
    _os_log_impl(&dword_2283ED000, v12, v13, "%s: pinning identifier %s at end", v15, 0x16u);
    swift_arrayDestroy();
    v21 = v16;
    v5 = v24;
    MEMORY[0x22AABAD40](v21, -1, -1);
    MEMORY[0x22AABAD40](v15, -1, -1);
  }

  (*(v6 + 8))(v11, v5);
  v22 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
}

uint64_t PinnedContentManager.state.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_22850A4BC((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  sub_22855CD2C();

  return v3;
}

uint64_t PinnedContentManager.publisher.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_22850AB10((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  sub_2284019B8();
  sub_22850AAC8(&qword_280DE9870, sub_2284019B8);
  v2 = sub_22855CE6C();

  return v2;
}

uint64_t PinnedContentManager.__allocating_init(pinnedContentStore:notifier:)(uint64_t *a1, uint64_t *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  v11 = sub_22850A730(v7, v10, v2, v5, v8, v6, v9);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t PinnedContentManager.init(pinnedContentStore:notifier:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_22850A4D8(v11, v18, v3, v7, v13, v6, v14);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v20;
}

uint64_t sub_228508148()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2285081A0();
  }

  return result;
}

void sub_2285081A0()
{
  v1 = *v0;
  v2 = sub_22855CABC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  sub_22855CA6C();

  v8 = sub_22855CA8C();
  v9 = sub_22855D6AC();

  v10 = os_log_type_enabled(v8, v9);
  v21 = v1;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v3;
    v13 = v12;
    *v11 = 136315138;
    v23 = 91;
    v24 = 0xE100000000000000;
    v25 = v12;
    v14 = sub_22855E34C();
    v15 = v2;
    MEMORY[0x22AAB92A0](v14);

    MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
    v16 = *(v0 + 64);
    v17 = sub_22855BCDC();
    MEMORY[0x22AAB92A0](v17);

    v18 = sub_2283F8938(v23, v24, &v25);

    *(v11 + 4) = v18;
    v2 = v15;
    _os_log_impl(&dword_2283ED000, v8, v9, "%s: Pinned content did change notification received, fetching latest value", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v19 = v13;
    v3 = v22;
    MEMORY[0x22AABAD40](v19, -1, -1);
    MEMORY[0x22AABAD40](v11, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  sub_228508938();
}

uint64_t sub_2285085F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a2;
  v8 = sub_22855CABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    *a3 = *a1;
  }

  else
  {
    v36 = v11;
    v37 = a3;
    v14 = a2[7];
    __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
    v15 = sub_22855BD2C();
    if (v3)
    {
      sub_22855CA6C();

      v16 = v3;
      v17 = sub_22855CA8C();
      v18 = sub_22855D68C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v40 = v35;
        *v19 = 136315394;
        v38 = 91;
        v39 = 0xE100000000000000;
        v20 = sub_22855E34C();
        HIDWORD(v34) = v18;
        MEMORY[0x22AAB92A0](v20);

        MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
        v21 = *(a2 + 64);
        v22 = sub_22855BCDC();
        MEMORY[0x22AAB92A0](v22);

        v23 = sub_2283F8938(v38, v39, &v40);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2080;
        v38 = v3;
        v24 = v3;
        sub_228418D44();
        v25 = sub_22855D1BC();
        v27 = sub_2283F8938(v25, v26, &v40);

        *(v19 + 14) = v27;
        _os_log_impl(&dword_2283ED000, v17, BYTE4(v34), "%s: Failed to fetch initial pinned content: %s", v19, 0x16u);
        v28 = v35;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v28, -1, -1);
        MEMORY[0x22AABAD40](v19, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v13, v36);
      v15 = 0;
    }

    v38 = v15;
    sub_2284019B8();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_22855CD5C();
    *a1 = v32;
    *v37 = v32;
  }
}

void sub_228508938()
{
  v2 = v0;
  v3 = *v0;
  v4 = sub_22855CABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v10 = sub_22855BD2C();
  if (!v1)
  {
    v34 = 0;
    v11 = v10;
    sub_22855CA6C();

    v33 = v11;
    v12 = v11;
    v13 = sub_22855CA8C();
    v14 = sub_22855D6AC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32 = v5;
      v16 = v15;
      v31 = swift_slowAlloc();
      v37 = v31;
      *v16 = 136315394;
      v35 = 91;
      v36 = 0xE100000000000000;
      v17 = sub_22855E34C();
      v30 = v14;
      MEMORY[0x22AAB92A0](v17);

      MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
      v18 = *(v2 + 64);
      v19 = sub_22855BCDC();
      MEMORY[0x22AAB92A0](v19);

      v20 = sub_2283F8938(v35, v36, &v37);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      sub_22855BC9C();
      v21 = MEMORY[0x22AAB9430]();
      v23 = v22;

      v24 = sub_2283F8938(v21, v23, &v37);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_2283ED000, v13, v30, "%s: Pinned content refetch result %s", v16, 0x16u);
      v25 = v31;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v25, -1, -1);
      MEMORY[0x22AABAD40](v16, -1, -1);

      (*(v32 + 8))(v8, v4);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v26 = v2[2];
    os_unfair_lock_lock((v26 + 24));
    v27 = v34;
    sub_22850AB10((v26 + 16), &v35);
    if (v27)
    {
      os_unfair_lock_unlock((v26 + 24));
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v26 + 24));
      v35 = v12;
      v28 = v12;
      sub_22855CD3C();
    }
  }
}

void PinnedContentManager.latestState()()
{
  v2 = v0;
  v3 = *v0;
  v4 = sub_22855CABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0[2];
  os_unfair_lock_lock((v9 + 24));
  sub_22850AB10((v9 + 16), &v20);
  if (v1)
  {
    os_unfair_lock_unlock((v9 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v9 + 24));
    sub_22855CD2C();

    if (!v20)
    {
      sub_22855CA6C();

      v10 = sub_22855CA8C();
      v11 = sub_22855D68C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v22 = v19;
        *v12 = 136315138;
        v20 = 91;
        v21 = 0xE100000000000000;
        v13 = sub_22855E34C();
        HIDWORD(v18) = v11;
        MEMORY[0x22AAB92A0](v13);

        MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
        v14 = *(v2 + 64);
        v15 = sub_22855BCDC();
        MEMORY[0x22AAB92A0](v15);

        v16 = sub_2283F8938(v20, v21, &v22);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_2283ED000, v10, BYTE4(v18), "%s: Fetch latest pinned content because no cached state found", v12, 0xCu);
        v17 = v19;
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x22AABAD40](v17, -1, -1);
        MEMORY[0x22AABAD40](v12, -1, -1);
      }

      (*(v5 + 8))(v8, v4);
      sub_228508938();
    }
  }
}

Swift::Void __swiftcall PinnedContentManager.apply(differences:)(Swift::OpaquePointer differences)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22855CABC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - v10;
  sub_22855CA6C();

  v12 = sub_22855CA8C();
  v13 = sub_22855D6AC();

  v14 = os_log_type_enabled(v12, v13);
  v29[1] = v4;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v30 = v5;
    v16 = v15;
    v17 = v6;
    v18 = swift_slowAlloc();
    *v16 = 136315394;
    v32 = 91;
    v33 = 0xE100000000000000;
    v34[0] = v18;
    v19 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v19);

    MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
    v20 = *(v1 + 64);
    v21 = sub_22855BCDC();
    MEMORY[0x22AAB92A0](v21);

    v22 = sub_2283F8938(v32, v33, v34);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = MEMORY[0x22AAB9430](differences._rawValue, MEMORY[0x277D0FD08]);
    v25 = sub_2283F8938(v23, v24, v34);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_2283ED000, v12, v13, "%s: Applying differences: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v18, -1, -1);
    v26 = v16;
    v5 = v30;
    MEMORY[0x22AABAD40](v26, -1, -1);

    v27 = v17;
  }

  else
  {

    v27 = v6;
  }

  (*(v27 + 8))(v11, v5);
  v28 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
}

Swift::Void __swiftcall PinnedContentManager.pin(identifier:at:)(Swift::String identifier, Swift::Int at)
{
  v3 = v2;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v29 = at;
  object = identifier._object;
  v5 = *v2;
  v6 = sub_22855CABC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v27 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  sub_22855CA6C();

  v13 = sub_22855CA8C();
  v14 = sub_22855D6AC();

  v15 = os_log_type_enabled(v13, v14);
  v25[2] = v5;
  v25[3] = v7;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v26 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    *v17 = 136315650;
    v30 = 91;
    v31 = 0xE100000000000000;
    v32[0] = v18;
    v19 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v19);

    MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
    v20 = *(v2 + 64);
    v21 = sub_22855BCDC();
    MEMORY[0x22AAB92A0](v21);

    v22 = sub_2283F8938(v30, v31, v32);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2283F8938(countAndFlagsBits, object, v32);
    *(v17 + 22) = 2048;
    *(v17 + 24) = v29;
    _os_log_impl(&dword_2283ED000, v13, v14, "%s: pinning identifier %s at index %ld", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v18, -1, -1);
    v23 = v17;
    v6 = v26;
    MEMORY[0x22AABAD40](v23, -1, -1);
  }

  (*(v7 + 8))(v12, v6);
  v24 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
}

Swift::Void __swiftcall PinnedContentManager.unpin(identifier:)(Swift::String identifier)
{
  v2 = v1;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v4 = *v1;
  v5 = sub_22855CABC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v23[3] = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - v10;
  sub_22855CA6C();

  v12 = sub_22855CA8C();
  v13 = sub_22855D6AC();

  v14 = os_log_type_enabled(v12, v13);
  v24 = v5;
  v23[1] = v4;
  v23[2] = v6;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136315394;
    v26 = 91;
    v27 = 0xE100000000000000;
    v28[0] = v16;
    v17 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v17);

    MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
    v18 = *(v1 + 64);
    v19 = sub_22855BCDC();
    MEMORY[0x22AAB92A0](v19);

    v20 = sub_2283F8938(v26, v27, v28);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2283F8938(countAndFlagsBits, object, v28);
    _os_log_impl(&dword_2283ED000, v12, v13, "%s: unpinning identifier %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v16, -1, -1);
    v21 = v15;
    v5 = v24;
    MEMORY[0x22AABAD40](v21, -1, -1);
  }

  (*(v6 + 8))(v11, v5);
  v22 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
}

char *sub_228509E70@<X0>(const char **a1@<X0>, int *a2@<X1>, char **a3@<X8>)
{
  result = index(*a1, *a2);
  *a3 = result;
  return result;
}

Swift::Void __swiftcall PinnedContentManager.unpinAll()()
{
  v1 = *v0;
  v2 = sub_22855CABC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - v6;
  sub_22855CA6C();

  v8 = sub_22855CA8C();
  v9 = sub_22855D6AC();

  v10 = os_log_type_enabled(v8, v9);
  v21[2] = v1;
  v22 = v3;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = v2;
    v13 = swift_slowAlloc();
    *v11 = 136315138;
    v23 = 91;
    v24 = 0xE100000000000000;
    v25 = v13;
    v14 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v14);

    MEMORY[0x22AAB92A0](24413, 0xE200000000000000);
    v15 = *(v0 + 64);
    v16 = sub_22855BCDC();
    MEMORY[0x22AAB92A0](v16);

    v17 = sub_2283F8938(v23, v24, &v25);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_2283ED000, v8, v9, "%s: unpinning all", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v18 = v13;
    v2 = v12;
    MEMORY[0x22AABAD40](v18, -1, -1);
    v19 = v11;
    v3 = v22;
    MEMORY[0x22AABAD40](v19, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v20 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
}

void *PinnedContentManager.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v2 = v0[14];

  return v0;
}

uint64_t PinnedContentManager.__deallocating_deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  v2 = v0[14];

  return swift_deallocClassInstance();
}

uint64_t sub_22850A4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[3] = a4;
  v22[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v21[3] = a5;
  v21[4] = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  sub_228401AD4();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  *(a3 + 16) = v15;
  *(a3 + 112) = 0;
  *(a3 + 64) = sub_22855BD6C() & 1;
  sub_2283F9B10(v22, a3 + 24);
  sub_2283F9B10(v21, a3 + 72);
  (*(a7 + 8))(a5, a7);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2284D3388;
  *(v17 + 24) = v16;
  sub_2283F2234();
  sub_22850AAC8(&qword_280DED2F0, sub_2283F2234);
  v18 = sub_22855CEAC();

  v19 = *(a3 + 112);
  *(a3 + 112) = v18;

  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return a3;
}

uint64_t sub_22850A730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v14);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  (*(v18 + 16))(v21, a1, a4);
  (*(v12 + 16))(v16, a2, a5);
  return sub_22850A4D8(v21, v16, v22, a4, a5, a6, v25);
}

unint64_t sub_22850A8D0()
{
  result = qword_27D840518;
  if (!qword_27D840518)
  {
    sub_22850A98C(255, &qword_27D840520, &qword_27D840528, MEMORY[0x277D83D58]);
    sub_22850A98C(255, &qword_27D840530, &qword_27D840538, MEMORY[0x277D836A8]);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_27D840518);
  }

  return result;
}

void sub_22850A98C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    sub_22850A9E4(255, a3, a4);
    v5 = sub_22855DA2C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22850A9E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84900]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22850AAC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22850AB28(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_22855BF2C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id HealthAppOrchestrationServer.init(connection:coordinator:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  sub_22850AEBC();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = a1;
  *&v3[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_protectedState] = v8;
  v9 = &v3[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator];
  *v9 = a2;
  *(v9 + 1) = a3;
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = objc_msgSendSuper2(&v27, sel_init);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 interfaceWithProtocol_];
  [v10 setExportedInterface_];

  v15 = [v12 interfaceWithProtocol_];
  [v10 setRemoteObjectInterface_];

  [v10 setExportedObject_];
  [v10 resume];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v25 = sub_22850AF94;
  v26 = v16;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_228401F54;
  v24 = &block_descriptor_24;
  v17 = _Block_copy(&v21);

  [v10 setInterruptionHandler_];
  _Block_release(v17);
  v18 = [v10 interruptionHandler];
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v25 = sub_2284FBA80;
    v26 = v19;
    v21 = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_228401F54;
    v24 = &block_descriptor_6;
    v18 = _Block_copy(&v21);
  }

  [v10 setInvalidationHandler_];
  _Block_release(v18);

  swift_unknownObjectRelease();
  return v13;
}

void sub_22850AEBC()
{
  if (!qword_280DE91C0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE91C0);
    }
  }
}

void sub_22850AF1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_protectedState);
    v2 = Strong;
    os_unfair_lock_lock((v1 + 24));
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;

    os_unfair_lock_unlock((v1 + 24));
  }
}

uint64_t HealthAppOrchestrationServer.remote_fireOnce(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator;
  v7 = *(v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v8 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 8);

  v10(sub_2284186F8, v5, ObjectType, v8);
}

uint64_t HealthAppOrchestrationServer.remote_resetAndFire(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator;
  v7 = *(v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v8 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 16);

  v10(sub_2284354D8, v5, ObjectType, v8);
}

uint64_t HealthAppOrchestrationServer.remote_fetchOrchestrationStatus(completion:)(void (*a1)(uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  v4 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  ObjectType = swift_getObjectType();
  v6 = (*(v3 + 24))(ObjectType, v3);
  a1(v6);
}

uint64_t HealthAppOrchestrationServer.remote_fetchOrchestrationGraph(completion:)(void (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  v4 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  ObjectType = swift_getObjectType();
  (*(v3 + 32))(ObjectType, v3);
  a1();
}

uint64_t HealthAppOrchestrationServer.remote_deleteCacheAndTerminate(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator;
  v7 = *(v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v8 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);

  v10(sub_22850B698, v5, ObjectType, v8);
}

uint64_t sub_22850B698()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t HealthAppOrchestrationServer.remote_cancelAllGeneration(completion:)(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  v4 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  ObjectType = swift_getObjectType();
  v6 = (*(v3 + 48))(ObjectType, v3);
  return a1(v6);
}

uint64_t HealthAppOrchestrationServer.remote_runForegroundGeneration(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  v6 = *(v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  ObjectType = swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(v5 + 56);

  v10 = v9(sub_22850C480, v8, ObjectType, v5);

  return v10;
}

uint64_t HealthAppOrchestrationServer.remote_runBackgroundGeneration(plugins:commitAsUrgent:generationType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = v5 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator;
  v12 = *(v5 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v13 = *(v11 + 8);
  ObjectType = swift_getObjectType();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22843466C;
  *(v15 + 24) = v10;
  v16 = *(v13 + 64);

  v16(a1, a2, a3, sub_22850BC74, v15, ObjectType, v13);
}

void sub_22850BBE0(char a1, void (*a2)(void))
{
  if (a1)
  {
    (a2)(0);
  }

  else
  {
    v3 = [objc_opt_self() hk:0 error:0 userInfo:?];
    a2();
  }
}

uint64_t HealthAppOrchestrationServer.remote_requestBackgroundGenerationForFeedItemsAfterUnlock(completion:)(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  v4 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  ObjectType = swift_getObjectType();
  v6 = (*(v3 + 72))(ObjectType, v3);
  return a1(v6);
}

uint64_t HealthAppOrchestrationServer.remote_requestBackgroundGenerationForAllModelsAfterUnlock(completion:)(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator + 8);
  v4 = *(v1 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  ObjectType = swift_getObjectType();
  v6 = (*(v3 + 80))(ObjectType, v3);
  return a1(v6);
}

uint64_t HealthAppOrchestrationServer.remote_runOrRequestBackgroundGeneration(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator;
  v7 = *(v2 + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v8 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 88);

  v10(sub_2284354D8, v5, ObjectType, v8);
}

id HealthAppOrchestrationServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthAppOrchestrationServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static SummaryTransactionInputSignal.identityConfiguration.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  return sub_22855C82C();
}

uint64_t static InputSignalSet.LookupKey.summaryTransaction.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for SummaryTransactionInputSignal();
  return sub_22855C61C();
}

uint64_t type metadata accessor for SummaryTransactionInputSignal()
{
  result = qword_280DEAC50;
  if (!qword_280DEAC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryTransactionInputSignal.__allocating_init(context:observer:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = sub_22850D984(a1, a2, a3, a4, v13, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v14;
}

uint64_t SummaryTransactionInputSignal.init(context:observer:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_22850D7BC(a1, a2, a3, a4, v16, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v18;
}

uint64_t SummaryTransactionInputSignal.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_identifier;
  v4 = sub_22855C85C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SummaryTransactionInputSignal.observer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_observer);
  v2 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_observer + 8);
  return swift_unknownObjectRetain();
}

uint64_t SummaryTransactionInputSignal.beginObservation(from:configurations:)()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = *(v4 + 8);

  v6(sub_22850DAA0, v5, v3, v4);
}

uint64_t sub_22850C960(void *a1, char a2)
{
  v4 = sub_22855C85C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284E1E10();
  v10 = v9;
  v37 = *(v9 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22855CABC();
  v36 = *(v14 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    if (a2)
    {
      v20 = sub_22855BF2C();
      v21 = [v20 hk_isDatabaseAccessibilityError];

      if ((v21 & 1) == 0)
      {
        v22 = v19[7];
        v23 = v19[8];
        swift_getObjectType();
        sub_22855C59C();
        v24 = a1;
        v25 = sub_22855CA8C();
        v26 = sub_22855D68C();
        sub_2284A6534(a1, 1);
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          v29 = a1;
          v30 = _swift_stdlib_bridgeErrorToNSError();
          *(v27 + 4) = v30;
          *v28 = v30;
          _os_log_impl(&dword_2283ED000, v25, v26, "Transaction observation query failed, restarting: %@", v27, 0xCu);
          sub_22841DC98(v28);
          MEMORY[0x22AABAD40](v28, -1, -1);
          MEMORY[0x22AABAD40](v27, -1, -1);
        }

        (*(v36 + 8))(v17, v14);
      }

      v31 = v19[5];
      v32 = v19[6];
      __swift_project_boxed_opaque_existential_1(v19 + 2, v31);
      (*(v32 + 16))(v31, v32);
      if (qword_27D83F018 != -1)
      {
        swift_once();
      }

      sub_228506C84(sub_22850DDD0, v19);
    }

    else
    {
      (*(v5 + 16))(v8, result + OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_identifier, v4);
      sub_2284A6588(a1, 0);
      v33 = sub_228429F28(a1);
      sub_2284A6534(a1, 0);
      v38 = v33;
      sub_2284E1D3C(0);
      sub_22850DB3C(&qword_280DE9520, sub_2284E1D3C);
      sub_22850DB3C(&qword_280DE9518, sub_2284E1D3C);
      sub_22850DB84(&unk_280DE9288);
      sub_22855C8DC();
      v34 = *(v19 + OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_observer);
      v35 = *(v19 + OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_observer + 8);
      swift_getObjectType();
      v38 = v19;
      type metadata accessor for SummaryTransactionInputSignal();
      sub_22850DB3C(qword_280DEAC68, type metadata accessor for SummaryTransactionInputSignal);
      sub_22855C78C();
      (*(v37 + 8))(v13, v10);
    }
  }

  return result;
}

uint64_t sub_22850CE9C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v1);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = *(v2 + 8);

  v4(sub_22850DDE0, v3, v1, v2);
}

Swift::Void __swiftcall SummaryTransactionInputSignal.stopObservation()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t sub_22850CFA0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (*a1)
  {
    [*(a2 + 16) stopQuery_];
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = objc_allocWithZone(MEMORY[0x277CCD958]);
  v19 = sub_22850DD68;
  v20 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_22850D278;
  v18 = &block_descriptor_25;
  v11 = _Block_copy(&aBlock);

  v12 = [v10 initWithHandler_];
  _Block_release(v11);

  v19 = sub_22850DD68;
  v20 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_22850D278;
  v18 = &block_descriptor_12;
  v13 = _Block_copy(&aBlock);

  [v12 setUpdateHandler_];
  _Block_release(v13);
  [*(a2 + 16) executeQuery_];

  *a1 = v12;
  return result;
}

void sub_22850D184(int a1, uint64_t a2, id a3, void (*a4)(id, uint64_t))
{
  if (a2)
  {
    (a4)(a2, 0, a3);
  }

  else
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v6 = objc_opt_self();
      v7 = sub_22855D17C();
      v5 = [v6 hk:0 error:v7 description:?];

      a3 = 0;
    }

    v8 = a3;
    a4(v5, 1);
  }
}

uint64_t sub_22850D278(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_2283EF310(0, &qword_280DE9280, 0x277CCD940);
    v5 = sub_22855D3AC();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_22850D330()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_22850D370()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_22850DD48((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_22850D3CC()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_22850DD0C((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t SummaryTransactionInputSignal.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_identifier;
  v3 = sub_22855C85C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_observer);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SummaryTransactionInputSignal.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_identifier;
  v3 = sub_22855C85C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_observer);
  swift_unknownObjectRelease();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22850D564@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_identifier;
  v5 = sub_22855C85C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_22850D5E0()
{
  v1 = (*v0 + OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_observer);
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_22850D618()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v2);
  (*(v3 + 16))(v2, v3);
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v5 + 8);

  v7(sub_22850DDE0, v6, v4, v5);
}

uint64_t sub_22850D6F8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_22850D750(uint64_t a1)
{
  v2 = sub_22850DB3C(qword_280DEAC68, type metadata accessor for SummaryTransactionInputSignal);

  return MEMORY[0x28216B080](a1, v2);
}

uint64_t sub_22850D7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a7;
  v20 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  sub_22855C84C();
  sub_2283FAB3C(&v18, a6 + 16);
  *(a6 + 56) = a1;
  *(a6 + 64) = a2;
  v16 = (a6 + OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_observer);
  *v16 = a3;
  v16[1] = a4;
  return a6;
}

void *sub_22850D89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Source = type metadata accessor for SummaryTransactionInputSignal.QuerySource();
  v14 = swift_allocObject();
  sub_22850DD70();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  *(v14 + 16) = a4;
  *(v14 + 24) = v15;
  v16 = *(a5 + 48);
  v17 = *(a5 + 52);
  v18 = swift_allocObject();
  v18[5] = Source;
  v18[6] = &off_283B89DC8;
  v18[2] = v14;
  sub_22855C84C();
  v18[7] = a1;
  v18[8] = a7;
  v19 = (v18 + OBJC_IVAR____TtC14HealthPlatform29SummaryTransactionInputSignal_observer);
  *v19 = a2;
  v19[1] = a3;
  return v18;
}

uint64_t sub_22850D984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  (*(v15 + 16))(v18, a5, a7);
  return sub_22850D7BC(a1, a2, a3, a4, v18, v22, a7, a8);
}

uint64_t sub_22850DB3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22850DB84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2283EF310(255, &qword_280DE9280, 0x277CCD940);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22850DC08()
{
  result = sub_22855C85C();
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

void *sub_22850DD0C(void *result)
{
  if (*result)
  {
    return [*(v1 + 16) stopQuery_];
  }

  return result;
}

void sub_22850DD70()
{
  if (!qword_280DE9128)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9128);
    }
  }
}

char *sub_22850DDE4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *v5;
    v16 = *(v5 - 1);
    v17 = v7;
    sub_2284D0B58(v16, v7);
    v18(&v14, &v16);
    if (v3)
    {
      break;
    }

    sub_2284D0B6C(v16, v17);
    v8 = v15;
    v9 = v14;
    if (v15 == 255)
    {
      sub_22850F96C(v14, 0xFFu);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_228426CC0(0, *(v6 + 2) + 1, 1, v6);
      }

      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v6 = sub_228426CC0((v10 > 1), v11 + 1, 1, v6);
      }

      *(v6 + 2) = v11 + 1;
      v12 = &v6[16 * v11];
      *(v12 + 4) = v9;
      v12[40] = v8;
    }

    v5 += 16;
    if (!--v4)
    {
      return v6;
    }
  }

  sub_2284D0B6C(v16, v17);

  return v6;
}

void sub_22850DF48(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = sub_22855DB4C();
    v6 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(a1 + 16) < v5)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = *(a2 + 16);
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (sub_22855DB4C() < v5)
  {
    return;
  }

LABEL_7:
  if (v4)
  {

    sub_22855DAFC();
    sub_2284B71B4();
    sub_228510094(&qword_280DED1D8, sub_2284B71B4);
    sub_22855D56C();
    v2 = v33;
    v7 = v34;
    v8 = v35;
    v9 = v36;
    v10 = v37;
  }

  else
  {
    v11 = -1 << *(v2 + 32);
    v7 = v2 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v2 + 56);

    v9 = 0;
  }

  sub_2284B71B4();
  v28 = v6;
  v14 = (v8 + 64) >> 6;
  v30 = v2;
  v15 = a1 + 56;
  v29 = v7;
  while (1)
  {
    while (v2 < 0)
    {
      if (!sub_22855DB8C())
      {
LABEL_35:
        sub_228407958();
        return;
      }

      swift_dynamicCast();
      v20 = v10;
      v18 = v32;
      v31 = v20;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_21:
      v19 = sub_22855DB9C();

      v10 = v31;
      if ((v19 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v16 = v10;
    if (!v10)
    {
      break;
    }

LABEL_20:
    v31 = (v16 - 1) & v16;
    v32 = *(*(v2 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v16)))));
    v18 = v32;
    if (v6)
    {
      goto LABEL_21;
    }

LABEL_25:
    if (!*(a1 + 16) || (v21 = *(a1 + 40), v22 = sub_22855D99C(), v23 = -1 << *(a1 + 32), v24 = v22 & ~v23, ((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0))
    {
LABEL_32:

LABEL_33:
      sub_228407958();
      return;
    }

    v25 = ~v23;
    while (1)
    {
      v26 = *(*(a1 + 48) + 8 * v24);
      v27 = sub_22855D9AC();

      if (v27)
      {
        break;
      }

      v24 = (v24 + 1) & v25;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v7 = v29;
    v2 = v30;
    v6 = v28;
    v10 = v31;
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_35;
    }

    v16 = *(v7 + 8 * v9);
    ++v17;
    if (v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t Publisher<>.mapSharedSummaryToPluginSharableModel()()
{
  sub_228510164(255, &qword_280DE9628, MEMORY[0x277D83940]);
  v0 = sub_22855CB6C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_22855CE8C();
  swift_getWitnessTable();
  v5 = sub_22855CE6C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t Publisher<>.createPluginSharableModelChangeInitialPublisher()()
{
  sub_228510164(255, &qword_280DE9628, MEMORY[0x277D83940]);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_22855CCCC();
  sub_228510110(255, &qword_280DE9620, MEMORY[0x277D83940]);
  swift_getWitnessTable();
  v0 = sub_22855CB6C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v7 - v3;
  v7[1] = Publisher<>.mapSharedSummaryToPluginSharableModel()();
  sub_22855CE8C();

  swift_getWitnessTable();
  v5 = sub_22855CE6C();
  (*(v1 + 8))(v4, v0);
  return v5;
}