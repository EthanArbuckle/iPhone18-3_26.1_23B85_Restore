id ObjectTrackingAgent.init(config:)(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20]();
  v39 = &v30 - v3;
  v4 = sub_2246280A8();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20]();
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224628078();
  MEMORY[0x28223BE20]();
  sub_224627BC8();
  MEMORY[0x28223BE20]();
  v34 = &v1[OBJC_IVAR___ObjectTrackingAgent_delegate];
  *(v34 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___ObjectTrackingAgent_tracker] = 0;
  v6 = &v1[OBJC_IVAR___ObjectTrackingAgent_appID];
  *v6 = 0;
  v6[1] = 0;
  v35 = v6;
  v38 = OBJC_IVAR___ObjectTrackingAgent_debugEnabled;
  v1[OBJC_IVAR___ObjectTrackingAgent_debugEnabled] = 0;
  v7 = OBJC_IVAR___ObjectTrackingAgent_startDate;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  *&v1[OBJC_IVAR___ObjectTrackingAgent_minFrameDuration] = 0x3FA1111111111111;
  v37 = OBJC_IVAR___ObjectTrackingAgent_customInferenceEnabledConfig;
  v1[OBJC_IVAR___ObjectTrackingAgent_customInferenceEnabledConfig] = 1;
  v1[OBJC_IVAR___ObjectTrackingAgent__trackingEnabled] = 0;
  v1[OBJC_IVAR___ObjectTrackingAgent_expectingDisconnect] = 0;
  *&v1[OBJC_IVAR___ObjectTrackingAgent_manager] = 0;
  sub_224627B68();
  v30 = OBJC_IVAR___ObjectTrackingAgent_agentQueue;
  sub_22450950C(0, &unk_280C518F0);
  sub_224627BA8();
  v43[0] = MEMORY[0x277D84F90];
  sub_224509554(&unk_280C51900, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C99E0);
  sub_224509674(&qword_280C51920, &unk_27D0C99E0);
  sub_224628298();
  (*(v32 + 104))(v31, *MEMORY[0x277D85260], v33);
  *&v1[v30] = sub_2246280D8();
  v1[OBJC_IVAR___ObjectTrackingAgent_setupOngoing] = 0;
  v1[OBJC_IVAR___ObjectTrackingAgent_setupComplete] = 0;
  v8 = OBJC_IVAR___ObjectTrackingAgent_lastImage;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277CBF758]) init];
  v9 = OBJC_IVAR___ObjectTrackingAgent_lastFaces;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x277CBEA60]) init];
  v10 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  sub_2246274B8();
  *&v1[v10] = sub_2246274A8();
  v11 = OBJC_IVAR___ObjectTrackingAgent_configStateLock;
  *&v1[v11] = sub_2246274A8();
  v1[OBJC_IVAR___ObjectTrackingAgent_registeredForTrackingConfigChanges] = 0;
  DKTrackingMetric.init()(&v1[OBJC_IVAR___ObjectTrackingAgent_trackingMetric]);
  *&v1[OBJC_IVAR___ObjectTrackingAgent_currentCameraSession] = 0;
  *&v1[OBJC_IVAR___ObjectTrackingAgent_publishSummaryPeriod] = 0x3FA999999999999ALL;
  sub_224627088();
  v12 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___ObjectTrackingAgent__selectedFaceIDs] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___ObjectTrackingAgent__selectedBodyIDs] = v12;
  v13 = OBJC_IVAR___ObjectTrackingAgent__selectedIDsLock;
  *&v1[v13] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v14 = v36;
  *(v34 + 1) = 0;
  swift_unknownObjectWeakAssign();
  if (*(v14 + 16) && (v15 = sub_2245096C8(0x4449707061, 0xE500000000000000), (v16 & 1) != 0) && (sub_2245097F8(*(v14 + 56) + 32 * v15, v43), (swift_dynamicCast() & 1) != 0))
  {
    v17 = v40;
    v18 = v41;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = v35;
  *v35 = v17;
  v19[1] = v18;

  if (*(v14 + 16) && (v20 = sub_2245096C8(0xD000000000000016, 0x80000002246375D0), (v21 & 1) != 0))
  {
    sub_2245097F8(*(v14 + 56) + 32 * v20, v43);

    if (swift_dynamicCast())
    {
      v22 = v40;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v22 = 1;
LABEL_12:
  v2[v37] = v22;
  if (qword_280C51638 != -1)
  {
    swift_once();
  }

  v2[v38] = byte_280C51959;
  v23 = type metadata accessor for ObjectTrackingAgent();
  v42.receiver = v2;
  v42.super_class = v23;
  v24 = objc_msgSendSuper2(&v42, sel_init);
  v25 = sub_224627F78();
  v26 = v39;
  (*(*(v25 - 8) + 56))(v39, 1, 1, v25);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v24;
  v28 = v24;
  sub_224536440(0, 0, v26, &unk_22462F198, v27);

  return v28;
}

uint64_t sub_22450950C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_224509554(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22450959C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2245095E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22450962C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224509674(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2245096C8(uint64_t a1, uint64_t a2)
{
  sub_224628778();
  sub_224627D78();
  v4 = sub_2246287C8();

  return sub_224509740(a1, a2, v4);
}

unint64_t sub_224509740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_224628688())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2245097F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for ObjectTrackingAgent()
{
  result = qword_280C51858;
  if (!qword_280C51858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2245098A0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224509900(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22450D128;

  return v6(a1);
}

uint64_t sub_2245099F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22450D030;

  return sub_224509D5C();
}

uint64_t sub_224509AAC(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 752) = a1;
  v3 = sub_2246271A8();
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();
  v4 = sub_2246271C8();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = type metadata accessor for DKTrackingMetric();
  *(v2 + 136) = swift_task_alloc();
  v5 = sub_224627118();
  *(v2 + 144) = v5;
  *(v2 + 152) = *(v5 - 8);
  *(v2 + 160) = swift_task_alloc();
  v6 = sub_224627B78();
  *(v2 + 168) = v6;
  *(v2 + 176) = *(v6 - 8);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224509DF0, 0, 0);
}

uint64_t sub_224509D5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22450D030;

  return sub_224509AAC(1);
}

uint64_t sub_224509DF0()
{
  v1 = v0[9];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[38] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[39] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_22454245C;

  return v5();
}

uint64_t sub_224509EB8()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224542B3C, 0, 0);
}

unint64_t sub_224509F28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_224509FF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2245097F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_224509FF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22455C3F8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2246283B8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t type metadata accessor for DockCoreManager()
{
  result = qword_280C51948;
  if (!qword_280C51948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DockCoreManager.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_2246280A8();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224628078();
  MEMORY[0x28223BE20](v4);
  v5 = sub_224627BC8();
  MEMORY[0x28223BE20](v5 - 8);
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection] = 0;
  v6 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v0[v6] = v7;
  *&v0[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_XPCTIMEOUT] = 0x4008000000000000;
  *&v0[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_stateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_expectingDisconnect] = 0;
  v8 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_accessoryDescriptionFeedbackDelegates;
  v9 = MEMORY[0x277D84F90];
  *&v0[v8] = sub_22450A730(MEMORY[0x277D84F90]);
  v10 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_accessoryDescriptionFeedbackLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA050);
  v11 = swift_allocObject();
  *(v11 + 20) = 0;
  *(v11 + 16) = 0;
  *&v0[v10] = v11;
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_diagnosticsFeedbackDelegates;
  *&v0[v12] = sub_22450AD08(v9);
  v13 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_diagnosticsFeedbackLock;
  v14 = swift_allocObject();
  *(v14 + 20) = 0;
  *(v14 + 16) = 0;
  *&v0[v13] = v14;
  v15 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_fwUpdateFeedbackDelegates;
  *&v0[v15] = sub_22450AD08(v9);
  v16 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_fwUpdateFeedbackLock;
  v17 = swift_allocObject();
  *(v17 + 20) = 0;
  *(v17 + 16) = 0;
  *&v0[v16] = v17;
  v18 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_haltFeedbackLock;
  v19 = swift_allocObject();
  *(v19 + 20) = 0;
  *(v19 + 16) = 0;
  *&v0[v18] = v19;
  v20 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_rebootFeedbackLock;
  v21 = swift_allocObject();
  *(v21 + 20) = 0;
  *(v21 + 16) = 0;
  *&v0[v20] = v21;
  v22 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_haltFeedbackDelegates;
  *&v0[v22] = sub_22450AD08(v9);
  v23 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_rebootFeedbackDelegates;
  *&v0[v23] = sub_22450AD08(v9);
  *&v0[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingEnableNotification] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification] = 0;
  v24 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_darwinQueue;
  sub_22450950C(0, &unk_280C518F0);
  sub_224627BA8();
  v35 = v9;
  sub_2245095E4(&unk_280C51900, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C99E0);
  sub_22450ADC8();
  sub_224628298();
  (*(v31 + 104))(v30, *MEMORY[0x277D85260], v32);
  *&v0[v24] = sub_2246280D8();
  v25 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_allocatedLock;
  v26 = swift_allocObject();
  *(v26 + 20) = 0;
  *&v1[v25] = v26;
  *(v26 + 16) = 0;
  *&v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__connected] = 0;
  *&v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__trackingButtonState] = 2;
  v27 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_stateEventsLock;
  sub_2246274B8();
  *&v1[v27] = sub_2246274A8();
  sub_224627B68();
  *&v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Debug] = 0;
  *&v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Certification] = 0;
  *&v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture] = 0;
  v34.receiver = v1;
  v34.super_class = ObjectType;
  return objc_msgSendSuper2(&v34, sel_init);
}

void *sub_22450A744(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v4 = sub_2246284A8();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = sub_22452B99C(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 56);
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + 4 * v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 2);
    v16 = *v11;
    swift_unknownObjectRetain();
    v9 = sub_22452B99C(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22450AA80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22450D030;

  return sub_224509900(a1, v4);
}

uint64_t sub_22450AB38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22450D034;

  return v7();
}

uint64_t sub_22450AC20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_22450D030;

  return v6();
}

uint64_t sub_22450AD1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_22450AE2C(v2, v3);
}

unint64_t sub_22450ADC8()
{
  result = qword_280C51920;
  if (!qword_280C51920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D0C99E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C51920);
  }

  return result;
}

uint64_t sub_22450AE2C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22450D3D8;

  return sub_22450AED4();
}

uint64_t sub_22450AEF4()
{
  v1 = v0[9];
  v2 = *(v1 + v0[45]);
  if (v2)
  {
    v3 = v2;
    DockCoreManager.getStateEvents(delegate:syncWithDaemon:)(v1, &protocol witness table for ObjectTrackingAgent, 0);
    v0[54] = 0;

    v1 = v0[9];
  }

  v0[55] = 0;
  v0[56] = *(v1 + v0[38]);

  v5 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22450B0E4, v5, v4);
}

uint64_t sub_22450B01C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[3] = OBJC_IVAR___ObjectTrackingAgent_trackerLock;
  v0[4] = *(v1 + v2);
  v5 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_224537584;

  return v5();
}

uint64_t sub_22450B0E4()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_224542DD8, 0, 0);
}

uint64_t sub_22450B154(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[9];
  v5 = *(v4 + v3[45]);
  if (v5)
  {
    v6 = (v4 + v3[58]);
    v7 = v6[1];
    if (!v7)
    {
      __break(1u);
      return MEMORY[0x2822009F8](a1, a2, a3);
    }

    v8 = v3[57];
    v9 = *v6;
    v10 = v5;

    DockCoreManager.monitorSystemTrackingState(delegate:appID:)(v4, v9, v7);
    v3[61] = v8;
    if (v8)
    {
      v11 = v3[38];
      v12 = v3[9];

      v3[93] = *(v12 + v11);

      v13 = sub_224627F28();
      v15 = v14;
      v16 = sub_2245451EC;
      goto LABEL_8;
    }

    v17 = 0;
    v4 = v3[9];
  }

  else
  {
    v17 = v3[57];
  }

  v3[62] = v17;
  v3[63] = *(v4 + v3[38]);

  v13 = sub_224627F28();
  v15 = v18;
  v16 = sub_22450BC0C;
LABEL_8:
  a1 = v16;
  a2 = v13;
  a3 = v15;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t DockCoreManager.getStateEvents(delegate:syncWithDaemon:)(uint64_t a1, uint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - v7;
  v9 = sub_224627B78();
  v10 = MEMORY[0x28223BE20](v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification;
  if (*&v3[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification] || (v15 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification, *&v3[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification]))
  {
    sub_22452ECAC();
    swift_allocError();
    *v16 = 0xD000000000000027;
    *(v16 + 8) = 0x800000022463A080;
    *(v16 + 16) = 8;
    return swift_willThrow();
  }

  v61 = v11;
  v62 = v10;
  v60 = a3;
  v58 = v8;
  *&v3[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_stateDelegate + 8] = a2;
  swift_unknownObjectWeakAssign();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = "PortTypeBackSuperWide";
  v59 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_darwinQueue;
  v19 = *&v3[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_darwinQueue];
  v20 = type metadata accessor for DeviceNotification();
  v21 = objc_allocWithZone(v20);
  v22 = v19;

  v23 = v63 | 0x8000000000000000;
  v63 = v3;
  v24 = DeviceNotification.init(name:queue:handler:)(0xD000000000000022, v23, v22, sub_22460AC14, v18);
  v25 = *(v63 + v14);
  *(v63 + v14) = v24;

  v26 = *(v63 + v59);
  v27 = objc_allocWithZone(v20);

  v28 = v26;
  v59 = v18;
  v29 = DeviceNotification.init(name:queue:handler:)(0xD000000000000027, 0x8000000224639700, v28, sub_2245F8A10, v18);
  v30 = v63;
  v31 = *(v63 + v15);
  *(v63 + v15) = v29;

  v32 = *(v30 + v14);
  if (!v32)
  {
    v37 = 0;
    v39 = *(v30 + v15);
    if (v39)
    {
      goto LABEL_6;
    }

LABEL_8:
    v45 = 2;
    goto LABEL_9;
  }

  v33 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  v34 = *&v32[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock];
  v35 = v32;

  os_unfair_lock_lock(v34 + 4);

  v36 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
  notify_get_state(*&v35[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token], &v35[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state]);
  v37 = *&v35[v36];
  v38 = *&v32[v33];

  os_unfair_lock_unlock(v38 + 4);

  v39 = *(v30 + v15);
  if (!v39)
  {
    goto LABEL_8;
  }

LABEL_6:
  v40 = v37;
  v41 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  v42 = *&v39[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock];
  v43 = v39;

  os_unfair_lock_lock(v42 + 4);

  v44 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
  notify_get_state(*&v43[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token], &v43[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state]);
  v45 = *&v43[v44];
  v46 = *&v39[v41];
  v37 = v40;

  os_unfair_lock_unlock(v46 + 4);

LABEL_9:
  v48 = v37 == 1 || v45 == 1;
  (*(v61 + 16))(v13, v30 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v62);
  v49 = sub_224627B58();
  v50 = sub_224628058();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134218240;
    *(v51 + 4) = v37;
    *(v51 + 12) = 2048;
    *(v51 + 14) = v45;
    _os_log_impl(&dword_224507000, v49, v50, "Notification states: c=%llu t=%llu", v51, 0x16u);
    MEMORY[0x22AA526D0](v51, -1, -1);
  }

  (*(v61 + 8))(v13, v62);
  if (v60 & v48)
  {
    v52 = sub_224627F78();
    v53 = v58;
    (*(*(v52 - 8) + 56))(v58, 1, 1, v52);
    v54 = swift_allocObject();
    v54[2] = 0;
    v54[3] = 0;
    v55 = v63;
    v54[4] = v63;
    v56 = v55;
    sub_2245E2798(0, 0, v53, &unk_224632AA0, v54);
  }
}

uint64_t sub_22450B82C()
{
  MEMORY[0x22AA52780](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for DeviceNotification()
{
  result = qword_280C51928;
  if (!qword_280C51928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *DeviceNotification.init(name:queue:handler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&v6[v13] = v14;
  sub_224627B68();
  *&v6[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state] = 0;
  *&v6[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token] = -1;
  v15 = &v6[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_name];
  *v15 = a1;
  *(v15 + 1) = a2;
  v25.receiver = v6;
  v25.super_class = ObjectType;

  v16 = objc_msgSendSuper2(&v25, sel_init);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a4;
  v18[4] = a5;
  v24[4] = sub_2245B5D90;
  v24[5] = v18;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v24[2] = sub_2245B5BAC;
  v24[3] = &block_descriptor_4;
  v19 = _Block_copy(v24);
  v20 = v16;
  v21 = a3;

  v22 = sub_224627D48();

  notify_register_dispatch((v22 + 32), &v20[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token], v21, v19);

  _Block_release(v19);

  return v20;
}

uint64_t sub_22450BB00()
{
  MEMORY[0x22AA52780](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22450BB38()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22450BC0C()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_22450BC7C, 0, 0);
}

uint64_t sub_22450BC7C()
{
  (*(v0 + 336))(*(v0 + 264), *(v0 + 72) + *(v0 + 328), *(v0 + 168));
  v1 = sub_224627B58();
  v2 = sub_224628058();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224507000, v1, v2, "registered for tracking config updates", v3, 2u);
    MEMORY[0x22AA526D0](v3, -1, -1);
  }

  v4 = *(v0 + 496);
  (*(v0 + 352))(*(v0 + 264), *(v0 + 168));
  *(v0 + 512) = v4;
  *(v0 + 520) = *(*(v0 + 72) + *(v0 + 304));
  v7 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

  v5 = swift_task_alloc();
  *(v0 + 528) = v5;
  *v5 = v0;
  v5[1] = sub_2245430F0;

  return v7();
}

uint64_t sub_22450BDF0()
{
  sub_224627498();

  return MEMORY[0x2822009F8](sub_22450BFFC, 0, 0);
}

void DockCoreManager.monitorSystemTrackingState(delegate:appID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingEnableNotification;
  if (*(v3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingEnableNotification))
  {
    sub_22452ECAC();
    swift_allocError();
    *v5 = 0xD000000000000021;
    *(v5 + 8) = 0x800000022463A0B0;
    *(v5 + 16) = 8;
    swift_willThrow();
  }

  else
  {
    swift_unknownObjectWeakAssign();
    v8 = *(v3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_darwinQueue);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a3;
    objc_allocWithZone(type metadata accessor for DeviceNotification());
    v11 = v8;

    v12 = DeviceNotification.init(name:queue:handler:)(0xD000000000000027, 0x80000002246396D0, v11, sub_2245F8AE0, v10);
    v13 = *(v3 + v4);
    *(v3 + v4) = v12;
  }
}

uint64_t sub_22450BFFC()
{
  v1 = *(v0 + 752);
  v2 = objc_allocWithZone(type metadata accessor for DeviceNotification());
  v3 = DeviceNotification.init(name:)(0xD000000000000022, 0x8000000224637730);
  v4 = v3;
  *(v0 + 552) = v3;
  if (v1 == 1 && (v5 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock, v6 = *&v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock], , os_unfair_lock_lock(v6 + 4), , v7 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state, notify_get_state(*&v4[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token], &v4[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state]), v8 = *&v4[v7], v9 = *&v4[v5], , os_unfair_lock_unlock(v9 + 4), , !v8))
  {
    (*(v0 + 336))(*(v0 + 200), *(v0 + 72) + *(v0 + 328), *(v0 + 168));
    v26 = sub_224627B58();
    v27 = sub_224628058();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 352);
    v30 = *(v0 + 200);
    v31 = *(v0 + 168);
    if (v28)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_224507000, v26, v27, "notification state 0, no accessories. not spinning up XPC", v32, 2u);
      MEMORY[0x22AA526D0](v32, -1, -1);
    }

    v29(v30, v31);
    *(v0 + 712) = *(*(v0 + 72) + *(v0 + 304));
    v34 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

    v33 = swift_task_alloc();
    *(v0 + 720) = v33;
    *v33 = v0;
    v33[1] = sub_224544B68;

    return v34();
  }

  else
  {
    (*(v0 + 336))(*(v0 + 248), *(v0 + 72) + *(v0 + 328), *(v0 + 168));
    v10 = v4;
    v11 = sub_224627B58();
    v12 = sub_224628058();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 752);
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      v15 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
      v16 = *(&v10->isa + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock);

      os_unfair_lock_lock(v16 + 4);

      v17 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
      notify_get_state(*(&v10->isa + OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token), (v10 + OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state));
      v18 = *(&v10->isa + v17);
      v19 = *(&v10->isa + v15);

      os_unfair_lock_unlock(v19 + 4);

      *(v14 + 4) = v18;

      *(v14 + 12) = 1024;
      *(v14 + 14) = v13;
      _os_log_impl(&dword_224507000, v11, v12, "reported %llu connected devices, trust %{BOOL}d, running XPC to figure out what is connected", v14, 0x12u);
      MEMORY[0x22AA526D0](v14, -1, -1);
    }

    else
    {

      v11 = v10;
    }

    v20 = *(v0 + 352);
    v21 = *(v0 + 248);
    v22 = *(v0 + 168);
    v23 = *(v0 + 176);

    *(v0 + 560) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v21, v22);
    v24 = swift_task_alloc();
    *(v0 + 568) = v24;
    *v24 = v0;
    v24[1] = sub_2245433BC;

    return sub_224547CEC();
  }
}

uint64_t sub_22450C3FC()
{
  v25 = v0;
  v1 = *(v0 + 753);
  *(*(v0 + 72) + OBJC_IVAR___ObjectTrackingAgent__trackingEnabled) = v1;
  v2 = *(v0 + 72);
  if (v1 == 1 && *&v2[*(v0 + 360)])
  {
    v3 = swift_task_alloc();
    *(v0 + 576) = v3;
    *v3 = v0;
    v3[1] = sub_2245434BC;

    return sub_22454569C();
  }

  else
  {
    (*(v0 + 336))(*(v0 + 240), &v2[*(v0 + 328)], *(v0 + 168));
    v5 = v2;
    v6 = sub_224627B58();
    v7 = sub_224628048();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 552);
    if (v8)
    {
      v22 = *(v0 + 240);
      v23 = *(v0 + 352);
      v10 = *(v0 + 168);
      v11 = (*(v0 + 72) + *(v0 + 464));
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      v14 = v11[1];
      *(v0 + 40) = *v11;
      *(v0 + 48) = v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9610);
      v15 = sub_224627D28();
      v17 = sub_224509F28(v15, v16, &v24);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_224507000, v6, v7, "App %s disabled system tracking, don't track", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x22AA526D0](v13, -1, -1);
      MEMORY[0x22AA526D0](v12, -1, -1);

      v23(v22, v10);
    }

    else
    {
      v18 = *(v0 + 352);
      v19 = *(v0 + 240);
      v20 = *(v0 + 168);

      v18(v19, v20);
    }

    *(*(v0 + 72) + *(v0 + 368)) = 0;

    v21 = *(v0 + 8);

    return v21();
  }
}

void sub_22450C768()
{
  v1 = *(v0 + 72);
  if (*(v1 + *(v0 + 360)))
  {
    if (*(v0 + 592))
    {
      (*(v0 + 336))(*(v0 + 224), v1 + *(v0 + 328), *(v0 + 168));
      v2 = sub_224627B58();
      v3 = sub_224628058();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_224507000, v2, v3, "Updating cached list of connected", v4, 2u);
        MEMORY[0x22AA526D0](v4, -1, -1);
      }

      v6 = *(v0 + 352);
      v5 = *(v0 + 360);
      v7 = *(v0 + 224);
      v8 = *(v0 + 168);
      v9 = *(v0 + 72);

      v6(v7, v8);
      v10 = *(v9 + v5);
      v11 = *(v0 + 592);
      if (v10)
      {
        v12 = *(v0 + 512);
        v13 = *&v10[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_allocatedLock];
        v14 = v10;
        v15 = v11;

        os_unfair_lock_lock(v13 + 5);
        sub_2245E30B4(&v13[4], v14, v11);
        os_unfair_lock_unlock(v13 + 5);
        if (v12)
        {
          return;
        }

        v11 = v15;
      }

      *(v0 + 600) = v11;
      *(v0 + 608) = *(*(v0 + 72) + *(v0 + 304));
      v29 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

      v20 = swift_task_alloc();
      *(v0 + 616) = v20;
      *v20 = v0;
      v21 = sub_2245436FC;
    }

    else
    {
      *(v0 + 712) = *(v1 + *(v0 + 304));
      v29 = (*MEMORY[0x277D213A0] + MEMORY[0x277D213A0]);

      v20 = swift_task_alloc();
      *(v0 + 720) = v20;
      *v20 = v0;
      v21 = sub_224544B68;
    }

    v20[1] = v21;

    v29();
  }

  else
  {
    (*(v0 + 336))(*(v0 + 232), v1 + *(v0 + 328), *(v0 + 168));
    v16 = sub_224627B58();
    v17 = sub_224628048();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_224507000, v16, v17, "manager is nil, aborting setupAgent, ignoring connected tracker", v18, 2u);
      MEMORY[0x22AA526D0](v18, -1, -1);
      v19 = *(v0 + 552);
    }

    else
    {
      v19 = v16;
      v16 = *(v0 + 552);
    }

    v22 = *(v0 + 592);
    v23 = *(v0 + 368);
    v24 = *(v0 + 352);
    v25 = *(v0 + 232);
    v26 = *(v0 + 168);
    v27 = *(v0 + 72);

    v24(v25, v26);
    *(v27 + v23) = 0;

    v28 = *(v0 + 8);

    v28();
  }
}

uint64_t sub_22450CBE0()
{
  v1 = v0[75];
  v2 = v0[9];
  v3 = OBJC_IVAR___ObjectTrackingAgent_tracker;
  v4 = *(v2 + OBJC_IVAR___ObjectTrackingAgent_tracker);
  *(v2 + OBJC_IVAR___ObjectTrackingAgent_tracker) = v0[74];
  v5 = v1;

  v6 = *(v2 + v3);
  if (v6)
  {
    *(v6 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_debugEnabled) = *(v0[9] + OBJC_IVAR___ObjectTrackingAgent_debugEnabled);
  }

  v0[78] = *(v0[9] + v0[38]);

  v8 = sub_224627F28();

  return MEMORY[0x2822009F8](sub_22450CCC4, v8, v7);
}

uint64_t sub_22450CCC4()
{
  sub_224627498();

  v1 = swift_task_alloc();
  *(v0 + 632) = v1;
  *v1 = v0;
  v1[1] = sub_224543814;

  return sub_224549680();
}

char *DeviceNotification.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v3[v7] = v8;
  sub_224627B68();
  *&v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state] = 0;
  *&v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token] = -1;
  v9 = &v3[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_name];
  *v9 = a1;
  *(v9 + 1) = a2;
  v15.receiver = v3;
  v15.super_class = ObjectType;

  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = sub_224627D48();
  v12 = v10;

  v13 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token;
  notify_register_check((v11 + 32), &v12[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token]);

  notify_get_state(*&v12[v13], &v12[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state]);

  return v12;
}

uint64_t sub_22450CEC4()
{
  sub_224627498();

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_22450D034()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22450D128()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_22450D278()
{
  sub_224627498();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22450D3D8(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_22450D590()
{
  result = sub_224627B78();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_22450D6C8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22450D724()
{
  result = sub_2246274D8();
  if (v1 <= 0x3F)
  {
    result = sub_224627B78();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t DKPanoramaController.init(manager:)(void *a1)
{
  v2 = sub_22450D878();

  return v2;
}

uint64_t sub_22450D878()
{
  v1 = v0;
  v2 = sub_2246274D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 256;
  *(v1 + 26) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  v6 = OBJC_IVAR____TtC11DockKitCore20DKPanoramaController_pidConfig;
  sub_2246274C8();
  *(v1 + OBJC_IVAR____TtC11DockKitCore20DKPanoramaController_yDrift) = 0;
  v7 = v1 + OBJC_IVAR____TtC11DockKitCore20DKPanoramaController_configuration;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  sub_224627B68();
  swift_unknownObjectWeakAssign();
  sub_2246276D8();
  (*(v3 + 16))(v5, v1 + v6, v2);
  *(v1 + 56) = sub_2246276C8();
  return v1;
}

uint64_t sub_22450DA40()
{
  result = sub_224627B78();
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

uint64_t sub_22450DB04()
{

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_22450DF5C()
{
  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_224513D44(*(v0 + 24), *(v0 + 32), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22450E40C()
{

  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_224513D44(*(v0 + 48), *(v0 + 56), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_22450E478()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22450E4D0()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22450E520()
{

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_22450E580()
{
  v1 = (type metadata accessor for DKTrackingMetric() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[26];
  v6 = sub_224627118();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22450E690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_224627118();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 96);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22450E73C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_224627118();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 96);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22450E7E0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22450E800(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_22450EC04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22450EC14(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_22450EC58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22450EC68(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

double sub_22450EEB8@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_progress);
  *a2 = result;
  return result;
}

double sub_22450EED0(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_progress) = *a1;
  return result;
}

id sub_22450EEE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_actual);
  *a2 = v2;
  return v2;
}

void sub_22450EF00(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_actual);
  *(*a2 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_actual) = *a1;
  v3 = v2;
}

id sub_22450EF50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_command);
  *a2 = v2;
  return v2;
}

void sub_22450EF68(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_command);
  *(*a2 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_command) = *a1;
  v3 = v2;
}

id sub_22450EFB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_reference);
  *a2 = v2;
  return v2;
}

void sub_22450EFD0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_reference);
  *(*a2 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_reference) = *a1;
  v3 = v2;
}

uint64_t sub_22450F050@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_statusMessage);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_22450F06C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_statusMessage);
  *v4 = v3;
  v4[1] = v2;
}

double sub_22450F0BC@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_time);
  *a2 = result;
  return result;
}

double sub_22450F0D4(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore15TrajectoryPoint_time) = *a1;
  return result;
}

double sub_22450F134@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fx);
  *a2 = result;
  return result;
}

double sub_22450F14C(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fx) = *a1;
  return result;
}

double sub_22450F164@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fy);
  *a2 = result;
  return result;
}

double sub_22450F17C(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fy) = *a1;
  return result;
}

double sub_22450F194@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_ox);
  *a2 = result;
  return result;
}

double sub_22450F1AC(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_ox) = *a1;
  return result;
}

double sub_22450F1C4@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_oy);
  *a2 = result;
  return result;
}

double sub_22450F1DC(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_oy) = *a1;
  return result;
}

__n128 sub_22450F1F4@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_referenceDimensions);
  *a2 = result;
  return result;
}

__n128 sub_22450F20C(__n128 *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_referenceDimensions) = *a1;
  return result;
}

uint64_t sub_22450F224@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11DockKitCore17CameraCalibration_portType;
  v5 = sub_224627518();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

__n128 sub_22450F2D4@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fov);
  *a2 = result;
  return result;
}

__n128 sub_22450F2EC(__n128 *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore17CameraCalibration_fov) = *a1;
  return result;
}

uint64_t sub_22450F344()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22450F394()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22450F3E4()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22450F434()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22450F47C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22450F4C0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22450F508()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22450F548()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22450F59C()
{
  _Block_release(*(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22450F604()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22450F63C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22450F674()
{

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

id sub_22450F7F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC11DockKitCore13SensorBattery_state);
  *a2 = v2;
  return v2;
}

void sub_22450F810(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11DockKitCore13SensorBattery_state);
  *(*a2 + OBJC_IVAR____TtC11DockKitCore13SensorBattery_state) = *a1;
  v3 = v2;
}

id sub_22450F890@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC11DockKitCore13SensorTracker_state);
  *a2 = v2;
  return v2;
}

void sub_22450F8A8(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11DockKitCore13SensorTracker_state);
  *(*a2 + OBJC_IVAR____TtC11DockKitCore13SensorTracker_state) = *a1;
  v3 = v2;
}

__n128 sub_22450F9AC@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_rect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_22450F9C8(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_rect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

void *sub_22450F9E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_saliencyRank;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_22450FA08(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_saliencyRank;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_22450FA2C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_speakingConfidence;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_22450FA50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_speakingConfidence;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_22450FA74@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_lookingAtCameraConfidence;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_22450FA98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_lookingAtCameraConfidence;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_22450FBAC(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_subjects) = *a1;
}

__n128 sub_22450FC28@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_referenceDimension);
  *a2 = result;
  return result;
}

__n128 sub_22450FC40(__n128 *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_referenceDimension) = *a1;
  return result;
}

id sub_22450FC68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  *a2 = v2;
  return v2;
}

void sub_22450FC80(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
  *(*a2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info) = *a1;
  v3 = v2;
}

uint64_t sub_22450FCE8(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems) = *a1;
}

uint64_t sub_22450FE3C@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_22450FE90()
{
  MEMORY[0x22AA52780](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22450FECC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224510060@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2245100A0()
{
  MEMORY[0x22AA52780](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2245100D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224510110()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_224510148(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 239)
  {
    v4 = *a1;
    if (v4 >= 0x11)
    {
      return v4 - 16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_224627188();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2245101EC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 239)
  {
    *result = a2 + 16;
  }

  else
  {
    v7 = sub_224627188();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22451028C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 25);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_224627188();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 40);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_224510338(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 25) = a2 + 1;
  }

  else
  {
    v7 = sub_224627188();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2245103E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224510420()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_224510470@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
  *a2 = v2;
  return v2;
}

void sub_224510488(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController);
  *(*a2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_actuationController) = *a1;
  v3 = v2;
}

id sub_2245104D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_sensorController);
  *a2 = v2;
  return v2;
}

void sub_2245104F0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_sensorController);
  *(*a2 + OBJC_IVAR____TtC11DockKitCore13TrackingStand_sensorController) = *a1;
  v3 = v2;
}

uint64_t sub_224510590()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224510604()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224510654()
{
  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_224513D44(*(v0 + 24), *(v0 + 32), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2245106C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224510700()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224510738()
{
  MEMORY[0x22AA52780](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_224510800@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore14SensorLEDState_brightness);
  *a2 = result;
  return result;
}

double sub_224510818(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore14SensorLEDState_brightness) = *a1;
  return result;
}

double sub_224510830@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore14SensorLEDState_color);
  *a2 = result;
  return result;
}

double sub_224510848(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore14SensorLEDState_color) = *a1;
  return result;
}

id sub_224510860@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC11DockKitCore9SensorLED_state);
  *a2 = v2;
  return v2;
}

void sub_224510878(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11DockKitCore9SensorLED_state);
  *(*a2 + OBJC_IVAR____TtC11DockKitCore9SensorLED_state) = *a1;
  v3 = v2;
}

uint64_t sub_224510928@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC11DockKitCore9Component_name);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_224510944(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11DockKitCore9Component_name);
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_2245109AC(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC11DockKitCore6System_components) = *a1;
}

uint64_t sub_224510A24()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224510A5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_224510AA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

id sub_224510B24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC11DockKitCore12SensorButton_state);
  *a2 = v2;
  return v2;
}

void sub_224510B3C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11DockKitCore12SensorButton_state);
  *(*a2 + OBJC_IVAR____TtC11DockKitCore12SensorButton_state) = *a1;
  v3 = v2;
}

uint64_t sub_224510B8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224510BCC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224510C0C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224510C54()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224510CF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224510D48()
{
  _Block_release(*(v0 + 24));
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224510DA0()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224510DF0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224510E28()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224510F30@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_224510F84@<X0>(_BYTE *a1@<X8>)
{
  result = _s11DockKitCore0aC7ManagerC21secureTrackingAllowedSbSgvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_224510FB8()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_224511014()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22451106C()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2245110B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224511108()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22451115C()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2245111AC()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2245111F0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22451124C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224511284()
{
  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_224513D44(*(v0 + 24), *(v0 + 32), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22451187C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2245118D0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224511918()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22451197C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2245119B4()
{
  MEMORY[0x22AA52780](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2245119EC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224511A38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_224511A70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_224511ABC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224511B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_224627878();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_224511BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_224627878();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_224511C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA190);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_224511CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA190);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

unint64_t sub_224511D58@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_224511D8C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_224511D8C(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

double sub_224511D9C@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_timestamp);
  *a2 = result;
  return result;
}

double sub_224511DB4(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_timestamp) = *a1;
  return result;
}

id sub_224511DF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType);
  *a2 = v2;
  return v2;
}

void sub_224511E08(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType);
  *(*a2 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType) = *a1;
  v3 = v2;
}

id sub_224511E88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics);
  *a2 = v2;
  return v2;
}

void sub_224511EA0(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics);
  *(*a2 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics) = *a1;
  v3 = v2;
}

float sub_224511EF0@<S0>(void *a1@<X0>, float *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceWidth);
  *a2 = result;
  return result;
}

float sub_224511F08(float *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceWidth) = *a1;
  return result;
}

float sub_224511F20@<S0>(void *a1@<X0>, float *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceHeight);
  *a2 = result;
  return result;
}

float sub_224511F38(float *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceHeight) = *a1;
  return result;
}

double sub_224511FA4@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_x);
  *a2 = result;
  return result;
}

double sub_224511FBC(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_x) = *a1;
  return result;
}

double sub_224511FD4@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_y);
  *a2 = result;
  return result;
}

double sub_224511FEC(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_y) = *a1;
  return result;
}

double sub_224512004@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_width);
  *a2 = result;
  return result;
}

double sub_22451201C(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_width) = *a1;
  return result;
}

double sub_224512034@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_height);
  *a2 = result;
  return result;
}

double sub_22451204C(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_height) = *a1;
  return result;
}

unint64_t sub_2245122A4(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2245122DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *sub_2245122EC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_224512308(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_224512318@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2245122A4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void __swiftcall DKUsageMetric.init(appID:camera:duration:firmwareVersion:hardwareVersion:inFramePercent:orientation:primaryLost:searchTime:secondaryLost:startTime:)(DockKitCore::DKUsageMetric *__return_ptr retstr, Swift::String appID, Swift::String camera, Swift::Double duration, Swift::String firmwareVersion, Swift::String hardwareVersion, Swift::Float inFramePercent, Swift::String orientation, Swift::Int primaryLost, Swift::Double searchTime, Swift::Int secondaryLost, Swift::Int startTime)
{
  retstr->appID = appID;
  retstr->camera = camera;
  retstr->duration = duration;
  retstr->firmwareVersion = firmwareVersion;
  retstr->hardwareVersion = hardwareVersion;
  retstr->inFramePercent = inFramePercent;
  retstr->orientation = orientation;
  retstr->primaryLost = primaryLost;
  retstr->searchTime = searchTime;
  retstr->secondaryLost = secondaryLost;
  retstr->startTime = startTime;
}

Swift::Void __swiftcall DKUsageMetric.send()()
{
  v1 = v0[5];
  v14[4] = v0[4];
  v14[5] = v1;
  v2 = v0[7];
  v14[6] = v0[6];
  v14[7] = v2;
  v3 = v0[1];
  v14[0] = *v0;
  v14[1] = v3;
  v4 = v0[3];
  v14[2] = v0[2];
  v14[3] = v4;
  v5 = sub_224627CB8();
  v6 = swift_allocObject();
  v7 = v0[5];
  v6[5] = v0[4];
  v6[6] = v7;
  v8 = v0[7];
  v6[7] = v0[6];
  v6[8] = v8;
  v9 = v0[1];
  v6[1] = *v0;
  v6[2] = v9;
  v10 = v0[3];
  v6[3] = v0[2];
  v6[4] = v10;
  aBlock[4] = sub_224513B0C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224513B14;
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);
  sub_224513BB8(v14, &v12);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_2245137D8()
{
  v0 = sub_224627CB8();
  v1 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v0, 0x4449707061, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v3 = sub_224627CB8();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v3, 0x6172656D6163, 0xE600000000000000, v4);
  v5 = sub_224627FA8();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v5, 0x6E6F697461727564, 0xE800000000000000, v6);
  v7 = sub_224627CB8();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v7, 0x657261776D726966, 0xEF6E6F6973726556, v8);
  v9 = sub_224627CB8();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v9, 0x6572617764726168, 0xEF6E6F6973726556, v10);
  v11 = sub_224627FC8();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v11, 0x50656D6172466E69, 0xEE00746E65637265, v12);
  v13 = sub_224627CB8();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v13, 0x7461746E6569726FLL, 0xEB000000006E6F69, v14);
  v15 = sub_224628008();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v15, 0x4C7972616D697270, 0xEB0000000074736FLL, v16);
  v17 = sub_224627FA8();
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v17, 0x6954686372616573, 0xEA0000000000656DLL, v18);
  v19 = sub_224628008();
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v19, 0x7261646E6F636573, 0xED000074736F4C79, v20);
  v21 = sub_224628008();
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v21, 0x6D69547472617473, 0xE900000000000065, v22);
  return v1;
}

id sub_224513B14(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_22450950C(0, &qword_27D0CA430);
    v4 = sub_224627C48();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_224513BF0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_224517F78(*a1);
  *a2 = result;
  return result;
}

uint64_t DKSelectSubjectMetric.init(appID:type:error:firmwareVersion:hardwareModel:hardwareMake:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *a4;
  v16 = a4[1];
  v18 = *(a4 + 16);
  *(a9 + 25) = 4;
  *a9 = a3;
  sub_224513D30(0, 0, 0xFFu);
  *(a9 + 8) = v17;
  *(a9 + 16) = v16;
  *(a9 + 24) = v18;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  v19 = *(a9 + 16);
  v20 = *(a9 + 48);
  v32 = *(a9 + 32);
  v33 = v20;
  v21 = *(a9 + 48);
  v34 = *(a9 + 64);
  v22 = *(a9 + 16);
  v31[0] = *a9;
  v31[1] = v22;
  v28 = v32;
  v29 = v21;
  v30 = *(a9 + 64);
  v26 = v31[0];
  v27 = v19;
  LOBYTE(a8) = sub_224513D5C(a1, a2);
  sub_224513E98(v31, v35);

  v35[2] = v28;
  v35[3] = v29;
  v35[4] = v30;
  v35[0] = v26;
  v35[1] = v27;
  result = sub_224513ED0(v35);
  *(a9 + 25) = a8;
  return result;
}

uint64_t sub_224513D30(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_224513D44(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_224513D44(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x1Du)
  {
  }

  return result;
}

uint64_t sub_224513D5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000002246354A0 == a2 || (sub_224628688() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000010 && 0x80000002246354C0 == a2 || (sub_224628688() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0xD000000000000012 && 0x80000002246354E0 == a2 || (sub_224628688() & 1) != 0 || a1 == 0xD000000000000017 && 0x8000000224635500 == a2)
  {
    return 1;
  }

  if (sub_224628688())
  {
    return 1;
  }

  return 3;
}

Swift::Void __swiftcall DKSelectSubjectMetric.send()()
{
  v1 = v0[3];
  v10[2] = v0[2];
  v10[3] = v1;
  v10[4] = v0[4];
  v2 = v0[1];
  v10[0] = *v0;
  v10[1] = v2;
  v3 = sub_224627CB8();
  v4 = swift_allocObject();
  v5 = v0[3];
  v4[3] = v0[2];
  v4[4] = v5;
  v4[5] = v0[4];
  v6 = v0[1];
  v4[1] = *v0;
  v4[2] = v6;
  aBlock[4] = sub_224514314;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224513B14;
  aBlock[3] = &block_descriptor_32;
  v7 = _Block_copy(aBlock);
  sub_224513E98(v10, &v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

uint64_t sub_224514024(uint64_t a1)
{
  v2 = sub_224628748();
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v2, 7368801, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  v5 = sub_224628748();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v5, 1701869940, 0xE400000000000000, v6);
  result = *(a1 + 24);
  switch(*(a1 + 24))
  {
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x2F:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0x3F:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4A:
    case 0x4B:
    case 0x4C:
    case 0x4D:
    case 0x4E:
    case 0x4F:
    case 0x50:
    case 0x51:
    case 0x52:
    case 0x53:
    case 0x54:
    case 0x55:
    case 0x56:
    case 0x57:
    case 0x58:
    case 0x59:
    case 0x5A:
    case 0x5B:
    case 0x5C:
    case 0x5D:
    case 0x5E:
    case 0x5F:
    case 0x60:
    case 0x61:
    case 0x62:
    case 0x63:
    case 0x64:
    case 0x65:
    case 0x66:
    case 0x67:
    case 0x68:
    case 0x69:
    case 0x6A:
    case 0x6B:
    case 0x6C:
    case 0x6D:
    case 0x6E:
    case 0x6F:
    case 0x70:
    case 0x71:
    case 0x72:
    case 0x73:
    case 0x74:
    case 0x75:
    case 0x76:
    case 0x77:
    case 0x78:
    case 0x79:
    case 0x7A:
    case 0x7B:
    case 0x7C:
    case 0x7D:
    case 0x7E:
    case 0x7F:
    case 0x80:
    case 0x81:
    case 0x82:
    case 0x83:
    case 0x84:
    case 0x85:
    case 0x86:
    case 0x87:
    case 0x88:
    case 0x89:
    case 0x8A:
    case 0x8B:
    case 0x8C:
    case 0x8D:
    case 0x8E:
    case 0x8F:
    case 0x90:
    case 0x91:
    case 0x92:
    case 0x93:
    case 0x94:
    case 0x95:
    case 0x96:
    case 0x97:
    case 0x98:
    case 0x99:
    case 0x9A:
    case 0x9B:
    case 0x9C:
    case 0x9D:
    case 0x9E:
    case 0x9F:
    case 0xA0:
    case 0xA1:
    case 0xA2:
    case 0xA3:
    case 0xA4:
    case 0xA5:
    case 0xA6:
    case 0xA7:
    case 0xA8:
    case 0xA9:
    case 0xAA:
    case 0xAB:
    case 0xAC:
    case 0xAD:
    case 0xAE:
    case 0xAF:
    case 0xB0:
    case 0xB1:
    case 0xB2:
    case 0xB3:
    case 0xB4:
    case 0xB5:
    case 0xB6:
    case 0xB7:
    case 0xB8:
    case 0xB9:
    case 0xBA:
    case 0xBB:
    case 0xBC:
    case 0xBD:
    case 0xBE:
    case 0xBF:
    case 0xC0:
    case 0xC1:
    case 0xC2:
    case 0xC3:
    case 0xC4:
    case 0xC5:
    case 0xC6:
    case 0xC7:
    case 0xC8:
    case 0xC9:
    case 0xCA:
    case 0xCB:
    case 0xCC:
    case 0xCD:
    case 0xCE:
    case 0xCF:
    case 0xD0:
    case 0xD1:
    case 0xD2:
    case 0xD3:
    case 0xD4:
    case 0xD5:
    case 0xD6:
    case 0xD7:
    case 0xD8:
    case 0xD9:
    case 0xDA:
    case 0xDB:
    case 0xDC:
    case 0xDD:
    case 0xDE:
    case 0xDF:
    case 0xE0:
    case 0xE1:
    case 0xE2:
    case 0xE3:
    case 0xE4:
    case 0xE5:
    case 0xE6:
    case 0xE7:
    case 0xE8:
    case 0xE9:
    case 0xEA:
    case 0xEB:
    case 0xEC:
    case 0xED:
    case 0xEE:
    case 0xEF:
    case 0xF0:
    case 0xF1:
    case 0xF2:
    case 0xF3:
    case 0xF4:
    case 0xF5:
    case 0xF6:
    case 0xF7:
    case 0xF8:
    case 0xF9:
    case 0xFA:
    case 0xFB:
    case 0xFC:
    case 0xFD:
    case 0xFE:
      __break(1u);
      break;
    case 0xFF:
      sub_22450950C(0, &unk_27D0C89A0);
      v8 = sub_2246281C8();
      goto LABEL_4;
    default:
      v8 = sub_224628008();
LABEL_4:
      v9 = v8;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      sub_22458E264(v9, 0x726F727265, 0xE500000000000000, v10);
      v11 = sub_224627CB8();
      v12 = swift_isUniquelyReferenced_nonNull_native();
      sub_22458E264(v11, 0x657261776D726966, 0xEF6E6F6973726556, v12);
      v13 = sub_224627CB8();
      v14 = swift_isUniquelyReferenced_nonNull_native();
      sub_22458E264(v13, 0x6572617764726168, 0xED00006C65646F4DLL, v14);
      v15 = sub_224627CB8();
      v16 = swift_isUniquelyReferenced_nonNull_native();
      sub_22458E264(v15, 0x6572617764726168, 0xEC000000656B614DLL, v16);
      result = v3;
      break;
  }

  return result;
}

DockKitCore::DKAPIUsageType_optional __swiftcall DKAPIUsageType.init(rawValue:)(DockKitCore::DKAPIUsageType_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= DockKitCore_DKAPIUsageType_unknownDefault)
  {
    value = DockKitCore_DKAPIUsageType_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_22451433C()
{
  sub_224628778();
  sub_224628798();
  return sub_2246287C8();
}

uint64_t sub_224514384()
{
  sub_224628778();
  sub_224628798();
  return sub_2246287C8();
}

__n128 DKAPIUsageMetric.init(appID:type:callCount:error:firmwareVersion:hardwareModel:hardwareMake:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11)
{
  v15 = *a3;
  v16 = *a5;
  v17 = a5[1];
  v18 = *(a5 + 16);
  *(a9 + 56) = &unk_2837F5488;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v15;
  *(a9 + 24) = a4;
  sub_224513D30(0, 0, 0xFFu);
  *(a9 + 32) = v16;
  *(a9 + 40) = v17;
  *(a9 + 48) = v18;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  result = a10;
  *(a9 + 88) = a10;
  *(a9 + 104) = a11;
  return result;
}

Swift::Void __swiftcall DKAPIUsageMetric.increment()()
{
  v1 = *(v0 + 24);
  v2 = __CFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
  }
}

uint64_t DKAPIUsageMetric.set(error:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(a1 + 16);
  v7 = *(v1 + 48);
  sub_2245144FC(*a1, v3, v6);
  result = sub_224513D30(v4, v5, v7);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v6;
  return result;
}

uint64_t sub_2245144FC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_224514510(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_224514510(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x1Du)
  {
  }

  return result;
}

Swift::Void __swiftcall DKAPIUsageMetric.send()()
{
  v1 = v0[5];
  v12[4] = v0[4];
  v12[5] = v1;
  v12[6] = v0[6];
  v2 = v0[1];
  v12[0] = *v0;
  v12[1] = v2;
  v3 = v0[3];
  v12[2] = v0[2];
  v12[3] = v3;
  v4 = sub_224627CB8();
  v5 = swift_allocObject();
  v6 = v0[5];
  v5[5] = v0[4];
  v5[6] = v6;
  v5[7] = v0[6];
  v7 = v0[1];
  v5[1] = *v0;
  v5[2] = v7;
  v8 = v0[3];
  v5[3] = v0[2];
  v5[4] = v8;
  aBlock[4] = sub_2245149C0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224513B14;
  aBlock[3] = &block_descriptor_38;
  v9 = _Block_copy(aBlock);
  sub_2245149C8(v12, &v10);

  AnalyticsSendEventLazy();
  _Block_release(v9);
}

uint64_t sub_22451465C(uint64_t a1)
{
  v2 = sub_224627CB8();
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v2, 0x4449707061, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v5 = sub_224628748();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v5, 1701869940, 0xE400000000000000, v6);
  result = *(a1 + 48);
  switch(*(a1 + 48))
  {
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x2F:
    case 0x30:
    case 0x31:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0x3F:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4A:
    case 0x4B:
    case 0x4C:
    case 0x4D:
    case 0x4E:
    case 0x4F:
    case 0x50:
    case 0x51:
    case 0x52:
    case 0x53:
    case 0x54:
    case 0x55:
    case 0x56:
    case 0x57:
    case 0x58:
    case 0x59:
    case 0x5A:
    case 0x5B:
    case 0x5C:
    case 0x5D:
    case 0x5E:
    case 0x5F:
    case 0x60:
    case 0x61:
    case 0x62:
    case 0x63:
    case 0x64:
    case 0x65:
    case 0x66:
    case 0x67:
    case 0x68:
    case 0x69:
    case 0x6A:
    case 0x6B:
    case 0x6C:
    case 0x6D:
    case 0x6E:
    case 0x6F:
    case 0x70:
    case 0x71:
    case 0x72:
    case 0x73:
    case 0x74:
    case 0x75:
    case 0x76:
    case 0x77:
    case 0x78:
    case 0x79:
    case 0x7A:
    case 0x7B:
    case 0x7C:
    case 0x7D:
    case 0x7E:
    case 0x7F:
    case 0x80:
    case 0x81:
    case 0x82:
    case 0x83:
    case 0x84:
    case 0x85:
    case 0x86:
    case 0x87:
    case 0x88:
    case 0x89:
    case 0x8A:
    case 0x8B:
    case 0x8C:
    case 0x8D:
    case 0x8E:
    case 0x8F:
    case 0x90:
    case 0x91:
    case 0x92:
    case 0x93:
    case 0x94:
    case 0x95:
    case 0x96:
    case 0x97:
    case 0x98:
    case 0x99:
    case 0x9A:
    case 0x9B:
    case 0x9C:
    case 0x9D:
    case 0x9E:
    case 0x9F:
    case 0xA0:
    case 0xA1:
    case 0xA2:
    case 0xA3:
    case 0xA4:
    case 0xA5:
    case 0xA6:
    case 0xA7:
    case 0xA8:
    case 0xA9:
    case 0xAA:
    case 0xAB:
    case 0xAC:
    case 0xAD:
    case 0xAE:
    case 0xAF:
    case 0xB0:
    case 0xB1:
    case 0xB2:
    case 0xB3:
    case 0xB4:
    case 0xB5:
    case 0xB6:
    case 0xB7:
    case 0xB8:
    case 0xB9:
    case 0xBA:
    case 0xBB:
    case 0xBC:
    case 0xBD:
    case 0xBE:
    case 0xBF:
    case 0xC0:
    case 0xC1:
    case 0xC2:
    case 0xC3:
    case 0xC4:
    case 0xC5:
    case 0xC6:
    case 0xC7:
    case 0xC8:
    case 0xC9:
    case 0xCA:
    case 0xCB:
    case 0xCC:
    case 0xCD:
    case 0xCE:
    case 0xCF:
    case 0xD0:
    case 0xD1:
    case 0xD2:
    case 0xD3:
    case 0xD4:
    case 0xD5:
    case 0xD6:
    case 0xD7:
    case 0xD8:
    case 0xD9:
    case 0xDA:
    case 0xDB:
    case 0xDC:
    case 0xDD:
    case 0xDE:
    case 0xDF:
    case 0xE0:
    case 0xE1:
    case 0xE2:
    case 0xE3:
    case 0xE4:
    case 0xE5:
    case 0xE6:
    case 0xE7:
    case 0xE8:
    case 0xE9:
    case 0xEA:
    case 0xEB:
    case 0xEC:
    case 0xED:
    case 0xEE:
    case 0xEF:
    case 0xF0:
    case 0xF1:
    case 0xF2:
    case 0xF3:
    case 0xF4:
    case 0xF5:
    case 0xF6:
    case 0xF7:
    case 0xF8:
    case 0xF9:
    case 0xFA:
    case 0xFB:
    case 0xFC:
    case 0xFD:
    case 0xFE:
      __break(1u);
      break;
    case 0xFF:
      sub_22450950C(0, &unk_27D0C89A0);
      v8 = sub_2246281C8();
      goto LABEL_4;
    default:
      v8 = sub_224628008();
LABEL_4:
      v9 = v8;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      sub_22458E264(v9, 0x726F727265, 0xE500000000000000, v10);
      sub_224514A00(*(a1 + 24));
      v11 = sub_224628748();
      v12 = swift_isUniquelyReferenced_nonNull_native();
      sub_22458E264(v11, 0x6E756F436C6C6163, 0xE900000000000074, v12);
      v13 = sub_224627CB8();
      v14 = swift_isUniquelyReferenced_nonNull_native();
      sub_22458E264(v13, 0x657261776D726966, 0xEF6E6F6973726556, v14);
      v15 = sub_224627CB8();
      v16 = swift_isUniquelyReferenced_nonNull_native();
      sub_22458E264(v15, 0x6572617764726168, 0xEF6E6F6973726556, v16);
      v17 = sub_224627CB8();
      v18 = swift_isUniquelyReferenced_nonNull_native();
      sub_22458E264(v17, 0x6572617764726168, 0xEC000000656B614DLL, v18);
      result = v3;
      break;
  }

  return result;
}

unint64_t sub_224514A00(unint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = v2 + 32;
  while (1)
  {
    v7 = *(v6 + 8 * result);
    if (v7 >= 1 && v7 > a1)
    {
      break;
    }

    if (v3 == ++result)
    {
      result = v3;
      if (v3 <= 0xFF)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  if (result <= 0xFF)
  {
    return result;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void __swiftcall DKBTConnectMetric.init(duration:error:reason:activeTrackingPercent:trackingButtonOnPercent:firmwareVersion:hardwareModel:hardwareMake:)(DockKitCore::DKBTConnectMetric *__return_ptr retstr, Swift::Double duration, Swift::String error, Swift::String reason, Swift::UInt activeTrackingPercent, Swift::UInt trackingButtonOnPercent, Swift::String firmwareVersion, Swift::String hardwareModel, Swift::String hardwareMake)
{
  retstr->duration = duration;
  retstr->error = error;
  retstr->reason = reason;
  retstr->activeTrackingPercent = activeTrackingPercent;
  retstr->trackingButtonOnPercent = trackingButtonOnPercent;
  retstr->firmwareVersion = firmwareVersion;
  retstr->hardwareModel = hardwareModel;
  retstr->hardwareMake = hardwareMake;
}

Swift::Void __swiftcall DKBTConnectMetric.send()()
{
  v1 = *(v0 + 80);
  v12[4] = *(v0 + 64);
  v12[5] = v1;
  v13 = *(v0 + 96);
  v2 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v2;
  v3 = *(v0 + 48);
  v12[2] = *(v0 + 32);
  v12[3] = v3;
  v4 = sub_224627CB8();
  v5 = swift_allocObject();
  v6 = *(v0 + 80);
  *(v5 + 80) = *(v0 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(v0 + 96);
  v7 = *(v0 + 16);
  *(v5 + 16) = *v0;
  *(v5 + 32) = v7;
  v8 = *(v0 + 48);
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 64) = v8;
  aBlock[4] = sub_224514E18;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224513B14;
  aBlock[3] = &block_descriptor_44;
  v9 = _Block_copy(aBlock);
  sub_224514E20(v12, v10);

  AnalyticsSendEventLazy();
  _Block_release(v9);
}

uint64_t sub_224514BBC()
{
  v0 = sub_224627FA8();
  v1 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v0, 0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v3 = sub_224627CB8();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v3, 0x726F727265, 0xE500000000000000, v4);
  v5 = sub_224627CB8();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v5, 0x6E6F73616572, 0xE600000000000000, v6);
  v7 = sub_224628258();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v7, 0xD000000000000015, 0x8000000224635460, v8);
  v9 = sub_224628258();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v9, 0xD000000000000017, 0x8000000224635480, v10);
  v11 = sub_224627CB8();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v11, 0x657261776D726966, 0xEF6E6F6973726556, v12);
  v13 = sub_224627CB8();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v13, 0x6572617764726168, 0xED00006C65646F4DLL, v14);
  v15 = sub_224627CB8();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v15, 0x6572617764726168, 0xEC000000656B614DLL, v16);
  return v1;
}

void __swiftcall DKPairingMetric.init(activePairings:duration:error:firmwareVersion:hardwareVersion:hardwareMake:)(DockKitCore::DKPairingMetric *__return_ptr retstr, Swift::UInt activePairings, Swift::Double duration, Swift::String error, Swift::String firmwareVersion, Swift::String hardwareVersion, Swift::String hardwareMake)
{
  retstr->activePairings = activePairings;
  retstr->duration = duration;
  retstr->error = error;
  retstr->firmwareVersion = firmwareVersion;
  retstr->hardwareVersion = hardwareVersion;
  retstr->hardwareMake = hardwareMake;
}

Swift::Void __swiftcall DKPairingMetric.send()()
{
  v1 = v0[3];
  v10[2] = v0[2];
  v10[3] = v1;
  v10[4] = v0[4];
  v2 = v0[1];
  v10[0] = *v0;
  v10[1] = v2;
  v3 = sub_224627CB8();
  v4 = swift_allocObject();
  v5 = v0[3];
  v4[3] = v0[2];
  v4[4] = v5;
  v4[5] = v0[4];
  v6 = v0[1];
  v4[1] = *v0;
  v4[2] = v6;
  aBlock[4] = sub_224515174;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224513B14;
  aBlock[3] = &block_descriptor_50;
  v7 = _Block_copy(aBlock);
  sub_22451517C(v10, &v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

uint64_t sub_224514F9C()
{
  v0 = sub_224628258();
  v1 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v0, 0x6150657669746361, 0xEE0073676E697269, isUniquelyReferenced_nonNull_native);
  v3 = sub_224627FA8();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v3, 0x6E6F697461727564, 0xE800000000000000, v4);
  v5 = sub_224627CB8();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v5, 0x726F727265, 0xE500000000000000, v6);
  v7 = sub_224627CB8();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v7, 0x657261776D726966, 0xEF6E6F6973726556, v8);
  v9 = sub_224627CB8();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v9, 0x6572617764726168, 0xEF6E6F6973726556, v10);
  v11 = sub_224627CB8();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v11, 0x6572617764726168, 0xEC000000656B614DLL, v12);
  return v1;
}

void __swiftcall DKFirmwareUpdateMetric.init(duration:startPercent:endPercent:fromFirmwareVersion:toFirmwareVersion:hardwareVersion:make:hardwareModel:success:error:)(DockKitCore::DKFirmwareUpdateMetric *__return_ptr retstr, Swift::Double duration, Swift::UInt startPercent, Swift::UInt endPercent, Swift::String fromFirmwareVersion, Swift::String toFirmwareVersion, Swift::String hardwareVersion, Swift::String make, Swift::String hardwareModel, Swift::Bool success, Swift::String error)
{
  retstr->duration = duration;
  retstr->error = error;
  retstr->startPercent = startPercent;
  retstr->endPercent = endPercent;
  retstr->fromFirmwareVersion = fromFirmwareVersion;
  retstr->toFirmwareVersion = toFirmwareVersion;
  retstr->make = make;
  retstr->hardwareModel = hardwareModel;
  retstr->hardwareVersion = hardwareVersion;
  retstr->success = success;
}

Swift::Void __swiftcall DKFirmwareUpdateMetric.send()()
{
  v1 = v0[5];
  v14[4] = v0[4];
  v14[5] = v1;
  v2 = v0[7];
  v14[6] = v0[6];
  v14[7] = v2;
  v3 = v0[1];
  v14[0] = *v0;
  v14[1] = v3;
  v4 = v0[3];
  v14[2] = v0[2];
  v14[3] = v4;
  v5 = sub_224627CB8();
  v6 = swift_allocObject();
  v7 = v0[5];
  v6[5] = v0[4];
  v6[6] = v7;
  v8 = v0[7];
  v6[7] = v0[6];
  v6[8] = v8;
  v9 = v0[1];
  v6[1] = *v0;
  v6[2] = v9;
  v10 = v0[3];
  v6[3] = v0[2];
  v6[4] = v10;
  aBlock[4] = sub_2245155F4;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224513B14;
  aBlock[3] = &block_descriptor_56;
  v11 = _Block_copy(aBlock);
  sub_2245155FC(v14, &v12);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_224515320()
{
  v0 = sub_224627FA8();
  v1 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v0, 0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v3 = sub_224628258();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v3, 0x7265507472617473, 0xEC000000746E6563, v4);
  v5 = sub_224628258();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v5, 0x6563726550646E65, 0xEA0000000000746ELL, v6);
  v7 = sub_224627CB8();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v7, 0xD000000000000013, 0x8000000224635420, v8);
  v9 = sub_224627CB8();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v9, 0xD000000000000011, 0x8000000224635440, v10);
  v11 = sub_224627CB8();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v11, 0x6572617764726168, 0xEF6E6F6973726556, v12);
  v13 = sub_224627CB8();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v13, 1701536109, 0xE400000000000000, v14);
  v15 = sub_224627CB8();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v15, 0x6572617764726168, 0xED00006C65646F4DLL, v16);
  v17 = sub_224627F18();
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v17, 0x73736563637573, 0xE700000000000000, v18);
  v19 = sub_224627CB8();
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v19, 0x726F727265, 0xE500000000000000, v20);
  return v1;
}

uint64_t DKTrackingMetric.appID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DKTrackingMetric.appID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DKTrackingMetric.hardwareMake.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DKTrackingMetric.hardwareMake.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DKTrackingMetric.hardwareModel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DKTrackingMetric.hardwareModel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DKTrackingMetric.firmwareVersion.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DKTrackingMetric.firmwareVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t DKTrackingMetric.sessionStartTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DKTrackingMetric() + 96);
  v4 = sub_224627118();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DKTrackingMetric()
{
  result = qword_280C517D8;
  if (!qword_280C517D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DKTrackingMetric.sessionStartTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DKTrackingMetric() + 96);
  v4 = sub_224627118();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DKTrackingMetric.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x6E776F6E6B6E55;
  *(a1 + 8) = 0xE700000000000000;
  *(a1 + 16) = 0x6E776F6E6B6E55;
  *(a1 + 24) = 0xE700000000000000;
  *(a1 + 32) = 0x6E776F6E6B6E55;
  *(a1 + 40) = 0xE700000000000000;
  *(a1 + 48) = 0x6E776F6E6B6E55;
  *(a1 + 56) = 0xE700000000000000;
  *(a1 + 64) = 0;
  v2 = type metadata accessor for DKTrackingMetric();
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0;
  result = sub_224627088();
  *(a1 + v2[25]) = 0;
  *(a1 + v2[26]) = 0;
  *(a1 + v2[27]) = 0;
  *(a1 + v2[28]) = 0;
  *(a1 + v2[29]) = 0;
  *(a1 + v2[30]) = 0;
  *(a1 + v2[31]) = 0;
  *(a1 + v2[32]) = 0;
  *(a1 + v2[33]) = 0;
  *(a1 + v2[34]) = 0;
  *(a1 + v2[35]) = 0;
  return result;
}

double DKTrackingMetric.reset(time:appID:firmwareVersion:hardwareModel:hardwareMake:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v10 = v9;
  v36 = a8;
  v37 = a7;
  v38 = a6;
  v39 = a5;
  v40 = a4;
  v35 = a1;
  v44 = sub_2246271A8();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_2246271C8();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DKTrackingMetric();
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  DKTrackingMetric.init()(v21);
  sub_224516100(v21, v10);
  v22 = *(v19 + 104);
  v23 = sub_224627118();
  (*(*(v23 - 8) + 24))(v10 + v22, a1, v23);
  if (a3)
  {
    v24 = a3;
  }

  else
  {
    a2 = 0x6E776F6E6B6E55;
    v24 = 0xE700000000000000;
  }

  *v10 = a2;
  *(v10 + 8) = v24;
  if (a9)
  {
    v25 = v36;
  }

  else
  {
    v25 = 0x6E776F6E6B6E55;
  }

  if (a9)
  {
    v26 = a9;
  }

  else
  {
    v26 = 0xE700000000000000;
  }

  *(v10 + 16) = v25;
  *(v10 + 24) = v26;
  if (v37)
  {
    v27 = v38;
  }

  else
  {
    v27 = 0x6E776F6E6B6E55;
  }

  if (v37)
  {
    v28 = v37;
  }

  else
  {
    v28 = 0xE700000000000000;
  }

  *(v10 + 32) = v27;
  *(v10 + 40) = v28;
  if (v39)
  {
    v29 = v40;
  }

  else
  {
    v29 = 0x6E776F6E6B6E55;
  }

  if (v39)
  {
    v30 = v39;
  }

  else
  {
    v30 = 0xE700000000000000;
  }

  *(v10 + 48) = v29;
  *(v10 + 56) = v30;
  *(v10 + 64) = 0;
  sub_224627198();
  v31 = v42;
  v32 = v44;
  (*(v42 + 104))(v15, *MEMORY[0x277CC9980], v44);
  v33 = sub_2246271B8();
  (*(v31 + 8))(v15, v32);
  (*(v41 + 8))(v17, v43);
  *(v10 + 72) = v33 / 3;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  result = 0.0;
  *(v10 + 92) = 0u;
  *(v10 + 108) = 0u;
  *(v10 + 124) = 0;
  return result;
}

uint64_t sub_224516100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKTrackingMetric();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DKTrackingMetric.send(time:)()
{
  v1 = type metadata accessor for DKTrackingMetric();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v5 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  result = sub_224627098();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    *(v0 + 80) = v9;
    sub_22451637C(v0, v7);
    v10 = sub_224627CB8();
    sub_22451637C(v7, v5);
    v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v12 = swift_allocObject();
    sub_224516978(v5, v12 + v11);
    aBlock[4] = sub_2245169DC;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224513B14;
    aBlock[3] = &block_descriptor_78;
    v13 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v13);

    return sub_224516A3C(v7);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22451637C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKTrackingMetric();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2245163E0()
{
  v0 = sub_224627CB8();
  v1 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v0, 0x4449707061, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v3 = sub_224627CB8();
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v3, 0x6572617764726168, 0xEC000000656B614DLL, v4);
  v5 = sub_224627CB8();
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v5, 0x6572617764726168, 0xED00006C65646F4DLL, v6);
  v7 = sub_224627CB8();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v7, 0x657261776D726966, 0xEF6E6F6973726556, v8);
  v9 = sub_224628748();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v9, 0x6F506172656D6163, 0xEA00000000007472, v10);
  v11 = sub_224628748();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v11, 0xD000000000000011, 0x8000000224635280, v12);
  v13 = sub_224628008();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v13, 0xD000000000000010, 0x80000002246352A0, v14);
  v15 = sub_224628008();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v15, 0x446E6F6973736573, 0xEF6E6F6974617275, v16);
  v17 = sub_224628748();
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v17, 0xD000000000000011, 0x80000002246352C0, v18);
  v19 = sub_224628748();
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v19, 0xD000000000000010, 0x80000002246352E0, v20);
  v21 = sub_224627FC8();
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v21, 0xD000000000000019, 0x8000000224635300, v22);
  v23 = sub_224627FC8();
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v23, 0xD000000000000018, 0x8000000224635320, v24);
  v25 = sub_224627FC8();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v25, 0xD000000000000018, 0x8000000224635340, v26);
  v27 = sub_224627FC8();
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v27, 0xD00000000000001ELL, 0x8000000224635360, v28);
  v29 = sub_224627FC8();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v29, 0xD000000000000011, 0x8000000224635380, v30);
  v31 = sub_224627FC8();
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v31, 0x64657463656C6573, 0xEF746E6563726550, v32);
  v33 = sub_224627FC8();
  v34 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v33, 0xD000000000000014, 0x80000002246353A0, v34);
  v35 = sub_224627FC8();
  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v35, 0xD000000000000015, 0x80000002246353C0, v36);
  v37 = sub_224627FC8();
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v37, 0xD000000000000013, 0x80000002246353E0, v38);
  v39 = sub_224627FC8();
  v40 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E264(v39, 0xD000000000000017, 0x8000000224635400, v40);
  return v1;
}

uint64_t sub_224516978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKTrackingMetric();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2245169DC()
{
  type metadata accessor for DKTrackingMetric();

  return sub_2245163E0();
}

uint64_t sub_224516A3C(uint64_t a1)
{
  v2 = type metadata accessor for DKTrackingMetric();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DKTrackingMetric.update(summary:cameraPort:)(char *a1, unint64_t a2, int a3)
{
  LODWORD(v5) = a3;
  v82 = a2;
  v94 = sub_224627A08();
  v7 = *(v94 - 8);
  v8 = MEMORY[0x28223BE20](v94);
  v95 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = &v79 - v10;
  v87 = type metadata accessor for DKTrackingMetric();
  v11 = v87[25];
  v12 = *(v3 + v11);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    goto LABEL_94;
  }

  *(v3 + v11) = v14;
  v4 = OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_subjects;
  v15 = *&a1[OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_subjects];
  v85 = v14;
  if (v15 >> 62)
  {
LABEL_95:
    v16 = sub_224628478();
    v15 = *&a1[v4];
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = v16;
  v96 = MEMORY[0x277D84F90];
  if (v15 >> 62)
  {
    v17 = sub_224628478();
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = v5;

  v88 = a1;
  v86 = v3;
  v80 = v7;
  if (v17)
  {
    v81 = v4;
    v4 = 0;
    v91 = v15 & 0xFFFFFFFFFFFFFF8;
    v92 = (v15 & 0xC000000000000001);
    v89 = (v7 + 2);
    v90 = v17;
    ++v7;
    v18 = v95;
    while (1)
    {
      if (v92)
      {
        v19 = MEMORY[0x22AA517F0](v4, v15);
        v20 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v22 = v96;
          a1 = v88;
          v4 = v81;
          goto LABEL_20;
        }
      }

      else
      {
        if (v4 >= *(v91 + 16))
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v19 = *(v15 + 8 * v4 + 32);

        v20 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_17;
        }
      }

      v3 = v93;
      v5 = v94;
      (*v89)(v93, v19 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_selectionReason, v94);
      sub_2246279A8();
      sub_2245174BC();
      v21 = sub_224628288();
      a1 = *v7;
      (*v7)(v18, v5);
      (a1)(v3, v5);
      if (v21)
      {
        v3 = &v96;
        sub_2246283C8();
        a1 = *(v96 + 16);
        sub_2246283E8();
        sub_2246283F8();
        sub_2246283D8();
      }

      else
      {
      }

      ++v4;
      if (v20 == v90)
      {
        goto LABEL_18;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_20:

  if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
  {
    v23 = sub_224628478();
  }

  else
  {
    v23 = *(v22 + 16);
  }

  v3 = *&a1[v4];
  if (v3 >> 62)
  {
    v7 = sub_224628478();
  }

  else
  {
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v24 = 0;
    v5 = v3 & 0xC000000000000001;
    a1 = (v3 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v5)
      {
        v4 = MEMORY[0x22AA517F0](v24, v3);
        v25 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v24 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v4 = *(v3 + 8 * v24 + 32);

        v25 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      if ((*(v4 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_saliencyRank + 8) & 1) == 0 && *(v4 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_saliencyRank) == 1)
      {
        break;
      }

      ++v24;
      if (v25 == v7)
      {
        goto LABEL_37;
      }
    }

    v40 = v80;
    v41 = v80[2];
    v91 = OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_selectionReason;
    v92 = v41;
    v43 = v93;
    v42 = v94;
    v41(v93, v4 + OBJC_IVAR____TtC11DockKitCore22TrackedSubjectInternal_selectionReason, v94);
    v44 = v95;
    sub_2246279B8();
    v90 = sub_2245174BC();
    v45 = sub_224628288();
    v46 = v40[1];
    v46(v44, v42);
    v46(v43, v42);
    v28 = v86;
    if (v45)
    {
      v31 = v87[26];
      v47 = *(v86 + v31);
      v13 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v13)
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      *(v86 + v31) = v48;
    }

    v49 = v93;
    v50 = v94;
    v92(v93, v4 + v91, v94);
    v51 = v95;
    sub_2246279A8();
    v52 = sub_224628288();
    v46(v51, v50);
    v46(v49, v50);
    if (v52)
    {
      v31 = v87[27];
      v53 = *(v28 + v31);
      v13 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v13)
      {
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      *(v28 + v31) = v54;
    }

    v55 = v93;
    v56 = v94;
    v92(v93, v4 + v91, v94);
    v57 = v95;
    sub_2246279D8();
    v58 = sub_224628288();
    v46(v57, v56);
    v46(v55, v56);
    if (v58)
    {
      v31 = v87[28];
      v59 = *(v28 + v31);
      v13 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v13)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      *(v28 + v31) = v60;
    }

    v61 = v93;
    v62 = v94;
    v92(v93, v4 + v91, v94);
    v63 = v95;
    sub_2246279E8();
    v64 = sub_224628288();
    v46(v63, v62);
    v46(v61, v62);
    if (v64)
    {
      v31 = v87[29];
      v65 = *(v28 + v31);
      v13 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v13)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      *(v28 + v31) = v66;
    }

    v67 = v93;
    v68 = v94;
    v92(v93, v4 + v91, v94);
    v69 = v95;
    sub_2246279C8();
    v70 = sub_224628288();
    v46(v69, v68);
    v46(v67, v68);
    if (v70)
    {
      v31 = v87[30];
      v71 = *(v28 + v31);
      v13 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v13)
      {
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      *(v28 + v31) = v72;
    }

    v73 = v93;
    v74 = v94;
    v92(v93, v4 + v91, v94);
    v75 = v95;
    sub_2246279F8();
    v76 = sub_224628288();

    v46(v75, v74);
    result = (v46)(v73, v74);
    v27 = v87;
    v29 = v85;
    if (v76)
    {
      v31 = v87[31];
      v77 = *(v28 + v31);
      v13 = __OFADD__(v77, 1);
      v78 = v77 + 1;
      if (v13)
      {
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      *(v28 + v31) = v78;
    }
  }

  else
  {
LABEL_37:

    v28 = v86;
    v27 = v87;
    v29 = v85;
  }

  if (v23 != 2)
  {
    if (v23 != 1)
    {
      v30 = v88;
      if (v23)
      {
        goto LABEL_50;
      }

      v31 = v28 + v27[32];
      v32 = *v31 + 1;
      if (!__OFADD__(*v31, 1))
      {
        goto LABEL_51;
      }

      __break(1u);
    }

    v31 = v28 + v27[33];
    v32 = *v31 + 1;
    v30 = v88;
    if (!__OFADD__(*v31, 1))
    {
      goto LABEL_51;
    }

    __break(1u);
  }

  v31 = v28 + v27[34];
  v32 = *v31 + 1;
  v30 = v88;
  if (!__OFADD__(*v31, 1))
  {
    goto LABEL_51;
  }

  __break(1u);
LABEL_50:
  v31 = v28 + v27[35];
  v32 = *v31 + 1;
  if (__OFADD__(*v31, 1))
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

LABEL_51:
  *v31 = v32;
  if (v84)
  {
    LOBYTE(v33) = 0;
  }

  else
  {
    v31 = v82;
    if (v82 >= 5)
    {
LABEL_110:
      v96 = v31;
      result = sub_2246286B8();
      __break(1u);
      return result;
    }

    v33 = 0x403020101uLL >> (8 * v82);
  }

  *(v28 + 64) = v33;
  v31 = v30[OBJC_IVAR____TtC11DockKitCore23TrackingSummaryInternal_orientation];
  *(v28 + 65) = v31;
  if ((v83 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_100;
  }

  if (v83 > 0xFF)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (*(v28 + 88) <= v83)
  {
    v31 = v83;
  }

  else
  {
    v31 = *(v28 + 88);
  }

  *(v28 + 88) = v31;
  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_101;
  }

  if (v23 > 0xFF)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v34 = *(v28 + 89);
  if (v34 <= v23)
  {
    LOBYTE(v34) = v23;
  }

  *(v28 + 89) = v34;
  v35 = v29;
  if (v29 <= 0)
  {
    *(v28 + 104) = 0;
    v36 = *(v28 + v27[27]);
    v37 = 0.0;
  }

  else
  {
    *(v28 + 104) = (*(v28 + v27[26]) / v35) * 100.0;
    v36 = *(v28 + v27[27]);
    v37 = (v36 / v35) * 100.0;
  }

  *(v28 + 112) = v37;
  if (v36 <= 0)
  {
    *(v28 + 120) = 0;
    *(v28 + 116) = 0;
    v38 = 0.0;
  }

  else
  {
    *(v28 + 116) = (*(v28 + v27[28]) / v36) * 100.0;
    *(v28 + 120) = (*(v28 + v27[29]) / v36) * 100.0;
    *(v28 + 124) = (*(v28 + v27[30]) / v36) * 100.0;
    v38 = (*(v28 + v27[31]) / v36) * 100.0;
  }

  *(v28 + 128) = v38;
  if (v29 <= 0)
  {
    *(v28 + 96) = 0;
    *(v28 + 92) = 0;
    v39 = 0.0;
  }

  else
  {
    *(v28 + 92) = (*(v28 + v27[32]) / v35) * 100.0;
    *(v28 + 96) = (*(v28 + v27[33]) / v35) * 100.0;
    *(v28 + 100) = (*(v28 + v27[34]) / v35) * 100.0;
    v39 = (*(v28 + v27[35]) / v35) * 100.0;
  }

  *(v28 + 108) = v39;
  return result;
}

unint64_t sub_2245174BC()
{
  result = qword_27D0C8890;
  if (!qword_27D0C8890)
  {
    sub_224627A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8890);
  }

  return result;
}

unint64_t sub_224517518()
{
  result = qword_27D0C8898;
  if (!qword_27D0C8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8898);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_224517590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_2245175D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11DockKitCore6ErrorsOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 0x1D)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_224517684(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2245176CC(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for DKAPIUsageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DKAPIUsageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_2245178B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_2245178FC(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_224517994(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_2245179DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224517A44(uint64_t a1, int a2)
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

uint64_t sub_224517A8C(uint64_t result, int a2, int a3)
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

uint64_t sub_224517AF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224517B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224517BD0()
{
  result = sub_224627118();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DKSelectSubjectMetric.DKAPISelectSubjectAppID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DKSelectSubjectMetric.DKAPISelectSubjectAppID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_224517E6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224517E8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_224517ED8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224517EF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_224517F24()
{
  result = qword_27D0C8998;
  if (!qword_27D0C8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C8998);
  }

  return result;
}

uint64_t sub_224517F78(uint64_t result)
{
  if (result >= 5u)
  {
    return 5;
  }

  else
  {
    return result;
  }
}

uint64_t sub_224517FE4()
{
  sub_224628778();
  sub_224627D78();

  return sub_2246287C8();
}

uint64_t sub_2245180C8()
{
  sub_224628778();
  sub_224627D78();

  return sub_2246287C8();
}

DockKitCore::DockStatus_optional __swiftcall DockStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_224518248@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22452C2F8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ClientDictionary.__allocating_init(dictionary:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11DockKitCore16ClientDictionary_internalDict] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ClientDictionary.init(dictionary:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11DockKitCore16ClientDictionary_internalDict] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::OpaquePointer_optional __swiftcall ClientDictionary.value(forKey:)(Swift::String forKey)
{
  if (*(*(v1 + OBJC_IVAR____TtC11DockKitCore16ClientDictionary_internalDict) + 16) && (sub_2245096C8(forKey._countAndFlagsBits, forKey._object), (forKey._object & 1) != 0))
  {
  }

  else
  {
    forKey._countAndFlagsBits = 0;
  }

  return *&forKey._countAndFlagsBits;
}

uint64_t sub_224518470(uint64_t (*a1)(void, void), uint64_t (*a2)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v2 + OBJC_IVAR____TtC11DockKitCore16ClientDictionary_internalDict);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a1(*(v3 + 16), 0);
  v7 = a2(&v9, v6 + 32, v4, v3);

  sub_22452C308();
  if (v7 != v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t (*sub_2245185E8(void *a1))()
{
  v3 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC11DockKitCore5Track__id;
  a1[3] = OBJC_IVAR____TtC11DockKitCore5Track__id;
  v6 = *(v1 + v5);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  *a1 = v6;
  return sub_224518684;
}

uint64_t sub_224518688@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v7 = *(*a1 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = *(v5 + *a2);
  v9 = *(v5 + v6);

  os_unfair_lock_unlock(v9 + 4);

  *a3 = v8;
  return result;
}

uint64_t (*sub_224518724(void *a1))()
{
  v3 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC11DockKitCore5Track__faceID;
  a1[3] = OBJC_IVAR____TtC11DockKitCore5Track__faceID;
  v6 = *(v1 + v5);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  *a1 = v6;
  return sub_2245354D0;
}

uint64_t (*sub_2245187D8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC11DockKitCore5Track__faceYaw;
  *(v4 + 32) = OBJC_IVAR____TtC11DockKitCore5Track__faceYaw;
  v8 = (v1 + v7);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v5);

  os_unfair_lock_unlock(v11 + 4);

  *v4 = v9;
  *(v4 + 8) = v10;
  return sub_2245188B0;
}

uint64_t sub_2245188B4@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v7 = *(*a1 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = (v5 + *a2);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v5 + v6);

  os_unfair_lock_unlock(v11 + 4);

  *a3 = v9;
  *(a3 + 8) = v10;
  return result;
}

uint64_t sub_224518944(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v10 = *(*a2 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = v8 + *a5;
  *v11 = v6;
  *(v11 + 8) = v7;
  v12 = *(v8 + v9);

  os_unfair_lock_unlock(v12 + 4);
}

uint64_t sub_2245189E8(void *a1)
{
  v3 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v4 = *(v1 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v1 + *a1);
  v6 = *(v1 + v3);

  os_unfair_lock_unlock(v6 + 4);

  return v5;
}

uint64_t sub_224518A74(uint64_t a1, char a2, void *a3)
{
  v7 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v8 = *(v3 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v8 + 4);

  v9 = v3 + *a3;
  *v9 = a1;
  *(v9 + 8) = a2 & 1;
  v10 = *(v3 + v7);

  os_unfair_lock_unlock(v10 + 4);
}

uint64_t (*sub_224518B0C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  v6 = *(v1 + v5);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC11DockKitCore5Track__facePitch;
  *(v4 + 32) = OBJC_IVAR____TtC11DockKitCore5Track__facePitch;
  v8 = (v1 + v7);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v5);

  os_unfair_lock_unlock(v11 + 4);

  *v4 = v9;
  *(v4 + 8) = v10;
  return sub_2245354D4;
}

void sub_224518BE4(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[2];
  v4 = v3 + (*a1)[4];
  v5 = **a1;
  v6 = *(*a1 + 8);
  v7 = *(v3 + v2);

  os_unfair_lock_lock(v7 + 4);

  *v4 = v5;
  *(v4 + 8) = v6;
  v8 = *(v3 + v2);

  os_unfair_lock_unlock(v8 + 4);

  free(v1);
}

uint64_t (*sub_224518C9C(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = *(v1 + v5);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC11DockKitCore5Track__bodyBox;
  *(v4 + 48) = OBJC_IVAR____TtC11DockKitCore5Track__bodyBox;
  v8 = (v1 + v7);
  v9 = *(v1 + v5);

  v11 = v8[1];
  v12 = *v8;
  os_unfair_lock_unlock(v9 + 4);

  *v4 = v12;
  *(v4 + 16) = v11;
  return sub_224518D7C;
}

__n128 sub_224518D80@<Q0>(uint64_t *a1@<X0>, void *a2@<X3>, __n128 *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v7 = *(*a1 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = (v5 + *a2);
  v9 = *(v5 + v6);

  v11 = v8[1];
  v12 = *v8;
  os_unfair_lock_unlock(v9 + 4);

  result = v12;
  *a3 = v12;
  a3[1] = v11;
  return result;
}

uint64_t sub_224518E18(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a2;
  v8 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v9 = *(*a2 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v9 + 4);

  v10 = (v7 + *a5);
  v11 = a1[1];
  *v10 = *a1;
  v10[1] = v11;
  v12 = *(v7 + v8);

  os_unfair_lock_unlock(v12 + 4);
}

double sub_224518EB8(void *a1)
{
  v3 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v4 = *(v1 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v1 + *a1);
  v6 = *(v1 + v3);

  os_unfair_lock_unlock(v6 + 4);

  return v5;
}

uint64_t sub_224518F5C(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v12 = *(v5 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = (v5 + *a1);
  *v13 = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v14 = *(v5 + v11);

  os_unfair_lock_unlock(v14 + 4);
}

uint64_t (*sub_224519000(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = *(v1 + v5);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC11DockKitCore5Track__faceBox;
  *(v4 + 48) = OBJC_IVAR____TtC11DockKitCore5Track__faceBox;
  v8 = (v1 + v7);
  v9 = *(v1 + v5);

  v11 = v8[1];
  v12 = *v8;
  os_unfair_lock_unlock(v9 + 4);

  *v4 = v12;
  *(v4 + 16) = v11;
  return sub_2245354D8;
}

void sub_2245190E0(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  v3 = *(*a1 + 4);
  v4 = (v3 + *(*a1 + 6));
  v5 = *(v3 + v2);

  v7 = v1[1];
  v8 = *v1;
  os_unfair_lock_lock(v5 + 4);

  *v4 = v8;
  v4[1] = v7;
  v6 = *(v3 + v2);

  os_unfair_lock_unlock(v6 + 4);

  free(v1);
}

uint64_t (*sub_2245191A0(void *a1))()
{
  v3 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC11DockKitCore5Track__weightVertical;
  a1[3] = OBJC_IVAR____TtC11DockKitCore5Track__weightVertical;
  v6 = *(v1 + v5);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  *a1 = v6;
  return sub_224519244;
}

uint64_t (*sub_224519268(void *a1))()
{
  v3 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC11DockKitCore5Track__weightHorizontal;
  a1[3] = OBJC_IVAR____TtC11DockKitCore5Track__weightHorizontal;
  v6 = *(v1 + v5);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  *a1 = v6;
  return sub_2245354DC;
}

uint64_t sub_22451932C(void *a1, double a2)
{
  v5 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v6 = *(v2 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v6 + 4);

  *(v2 + *a1) = a2;
  v7 = *(v2 + v5);

  os_unfair_lock_unlock(v7 + 4);
}

uint64_t (*sub_2245193B4(void *a1))()
{
  v3 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC11DockKitCore5Track__timeSinceLastSeen;
  a1[3] = OBJC_IVAR____TtC11DockKitCore5Track__timeSinceLastSeen;
  v6 = *(v1 + v5);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  *a1 = v6;
  return sub_2245354DC;
}

uint64_t sub_224519458(uint64_t *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[1];
  v4 = *a1;
  v5 = *(v3 + v2);

  os_unfair_lock_lock(v5 + 4);

  *(v3 + v1) = v4;
  v6 = *(v3 + v2);

  os_unfair_lock_unlock(v6 + 4);
}

void *sub_2245194D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v5 = *(*a1 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v5 + 4);

  memcpy(v8, (v3 + OBJC_IVAR____TtC11DockKitCore5Track__trackedSubjectState), sizeof(v8));
  v6 = *(v3 + v4);

  os_unfair_lock_unlock(v6 + 4);

  return memcpy(a2, v8, 0x109uLL);
}

uint64_t sub_22451957C(const void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v5 = *(*a2 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v5 + 4);

  memcpy((v3 + OBJC_IVAR____TtC11DockKitCore5Track__trackedSubjectState), a1, 0x109uLL);
  v6 = *(v3 + v4);

  os_unfair_lock_unlock(v6 + 4);
}

void *sub_22451960C@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v4 = *(v1 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v4 + 4);

  memcpy(v7, (v1 + OBJC_IVAR____TtC11DockKitCore5Track__trackedSubjectState), sizeof(v7));
  v5 = *(v1 + v3);

  os_unfair_lock_unlock(v5 + 4);

  return memcpy(a1, v7, 0x109uLL);
}

uint64_t sub_2245196AC(const void *a1)
{
  v3 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v4 = *(v1 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v4 + 4);

  memcpy((v1 + OBJC_IVAR____TtC11DockKitCore5Track__trackedSubjectState), a1, 0x109uLL);
  v5 = *(v1 + v3);

  os_unfair_lock_unlock(v5 + 4);
}

void (*sub_224519738(uint64_t *a1))(const void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  *(v3 + 272) = v1;
  *(v3 + 280) = v5;
  v6 = *(v1 + v5);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC11DockKitCore5Track__trackedSubjectState;
  v4[36] = OBJC_IVAR____TtC11DockKitCore5Track__trackedSubjectState;
  memcpy(v4, (v1 + v7), 0x109uLL);
  v8 = *(v1 + v5);

  os_unfair_lock_unlock(v8 + 4);

  return sub_22451980C;
}

void sub_22451980C(const void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 35);
  v3 = *(*a1 + 36);
  v4 = *(*a1 + 34);
  memcpy(v7, *a1, sizeof(v7));
  v5 = *(v4 + v2);

  os_unfair_lock_lock(v5 + 4);

  memcpy((v4 + v3), v7, 0x109uLL);
  v6 = *(v4 + v2);

  os_unfair_lock_unlock(v6 + 4);

  free(v1);
}

uint64_t sub_2245198B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v5 = *(*a1 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = *(v3 + OBJC_IVAR____TtC11DockKitCore5Track__type);
  v7 = *(v3 + v4);

  os_unfair_lock_unlock(v7 + 4);

  *a2 = v6;
  return result;
}

uint64_t sub_22451993C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v7 = *a2;
  v8 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v9 = *(*a2 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v9 + 4);

  *(v7 + *a5) = v6;
  v10 = *(v7 + v8);

  os_unfair_lock_unlock(v10 + 4);
}

uint64_t sub_2245199D4(void *a1)
{
  v3 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v4 = *(v1 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v1 + *a1);
  v6 = *(v1 + v3);

  os_unfair_lock_unlock(v6 + 4);

  return v5;
}

uint64_t sub_224519A54(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v6 = *(v2 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v6 + 4);

  *(v2 + *a2) = a1;
  v7 = *(v2 + v5);

  os_unfair_lock_unlock(v7 + 4);
}

uint64_t (*sub_224519ADC(void *a1))()
{
  v3 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC11DockKitCore5Track__type;
  a1[3] = OBJC_IVAR____TtC11DockKitCore5Track__type;
  v6 = *(v1 + v5);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  *a1 = v6;
  return sub_2245354D0;
}

uint64_t sub_224519B78(uint64_t *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v3 + v2);

  os_unfair_lock_lock(v5 + 4);

  *(v3 + v1) = v4;
  v6 = *(v3 + v2);

  os_unfair_lock_unlock(v6 + 4);
}

double sub_224519BF4@<D0>(uint64_t a1@<X8>)
{
  *a1 = -1;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = -1;
  *(a1 + 240) = -1;
  *&result = 4;
  *(a1 + 248) = xmmword_22462C8E0;
  *(a1 + 264) = 1;
  return result;
}

id Track.init()()
{
  v1 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v2 = swift_allocObject();
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR____TtC11DockKitCore5Track__id] = -1;
  *(v2 + 16) = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore5Track__faceID] = -1;
  v3 = &v0[OBJC_IVAR____TtC11DockKitCore5Track__faceYaw];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v0[OBJC_IVAR____TtC11DockKitCore5Track__facePitch];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v0[OBJC_IVAR____TtC11DockKitCore5Track__bodyBox];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = &v0[OBJC_IVAR____TtC11DockKitCore5Track__faceBox];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC11DockKitCore5Track__weightVertical] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC11DockKitCore5Track__weightHorizontal] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC11DockKitCore5Track__timeSinceLastSeen] = 0;
  sub_224519BF4(&v0[OBJC_IVAR____TtC11DockKitCore5Track__trackedSubjectState]);
  *&v0[OBJC_IVAR____TtC11DockKitCore5Track__type] = 4;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for Track();
  return objc_msgSendSuper2(&v8, sel_init);
}

double sub_224519DA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v4 = *(v1 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = (v1 + OBJC_IVAR____TtC11DockKitCore5Track__faceBox);
  v6 = *(v1 + OBJC_IVAR____TtC11DockKitCore5Track__faceBox);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  v8 = *(v1 + v3);

  os_unfair_lock_lock(v8 + 4);

  v9 = v5[2];
  v10 = *(v1 + v3);

  os_unfair_lock_unlock(v10 + 4);

  v11 = v6 + v9 * 0.5;
  v12 = *(v1 + v3);

  os_unfair_lock_lock(v12 + 4);

  v13 = v5[1];
  v14 = *(v1 + v3);

  os_unfair_lock_unlock(v14 + 4);

  v15 = *(v1 + v3);

  os_unfair_lock_lock(v15 + 4);

  v16 = v5[3];
  v17 = *(v1 + v3);

  os_unfair_lock_unlock(v17 + 4);

  v18 = v13 + v16 * 0.5;
  v19 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  v20 = *(a1 + OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock);

  os_unfair_lock_lock(v20 + 4);

  v21 = (a1 + OBJC_IVAR____TtC11DockKitCore5Track__faceBox);
  v22 = *(a1 + OBJC_IVAR____TtC11DockKitCore5Track__faceBox);
  v23 = *(a1 + v19);

  os_unfair_lock_unlock(v23 + 4);

  v24 = *(a1 + v19);

  os_unfair_lock_lock(v24 + 4);

  v25 = v21[2];
  v26 = *(a1 + v19);

  os_unfair_lock_unlock(v26 + 4);

  v27 = v22 + v25 * 0.5;
  v28 = *(a1 + v19);

  os_unfair_lock_lock(v28 + 4);

  v29 = v21[1];
  v30 = *(a1 + v19);

  os_unfair_lock_unlock(v30 + 4);

  v31 = *(a1 + v19);

  os_unfair_lock_lock(v31 + 4);

  v32 = v21[3];
  v33 = *(a1 + v19);

  os_unfair_lock_unlock(v33 + 4);

  return sqrt((v11 - v27) * (v11 - v27) + (v18 - (v29 + v32 * 0.5)) * (v18 - (v29 + v32 * 0.5)));
}

unint64_t sub_22451A034(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 6580575;
    v7 = 0x776159656361665FLL;
    v8 = 0x746950656361665FLL;
    if (a1 != 3)
    {
      v8 = 0x786F4279646F625FLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x4449656361665FLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    if (a1 != 9)
    {
      v1 = 0x657079745FLL;
    }

    if (a1 == 8)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0x786F42656361665FLL;
    v4 = 0x567468676965775FLL;
    if (a1 != 6)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22451A19C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_22451A034(*a1);
  v5 = v4;
  if (v3 == sub_22451A034(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_224628688();
  }

  return v8 & 1;
}

uint64_t sub_22451A224()
{
  v1 = *v0;
  sub_224628778();
  sub_22451A034(v1);
  sub_224627D78();

  return sub_2246287C8();
}

uint64_t sub_22451A288()
{
  sub_22451A034(*v0);
  sub_224627D78();
}

uint64_t sub_22451A2DC()
{
  v1 = *v0;
  sub_224628778();
  sub_22451A034(v1);
  sub_224627D78();

  return sub_2246287C8();
}

uint64_t sub_22451A33C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22452CBE0();
  *a1 = result;
  return result;
}

unint64_t sub_22451A36C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22451A034(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22451A3B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22452CBE0();
  *a1 = result;
  return result;
}

uint64_t sub_22451A3F4(uint64_t a1)
{
  v2 = sub_22452C37C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22451A430(uint64_t a1)
{
  v2 = sub_22452C37C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22451A494(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8AE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452C37C();
  sub_224628808();
  LOBYTE(v12[0]) = 0;
  sub_224628638();
  if (!v2)
  {
    LOBYTE(v12[0]) = 1;
    sub_224628638();
    LOBYTE(v12[0]) = 2;
    sub_2246285C8();
    LOBYTE(v12[0]) = 3;
    sub_2246285C8();
    v9 = *(v3 + OBJC_IVAR____TtC11DockKitCore5Track__bodyBox + 16);
    v12[0] = *(v3 + OBJC_IVAR____TtC11DockKitCore5Track__bodyBox);
    v12[1] = v9;
    v14 = 4;
    type metadata accessor for CGRect(0);
    sub_224534E68(&qword_27D0C8AF0, 255, type metadata accessor for CGRect);
    sub_224628648();
    v10 = *(v3 + OBJC_IVAR____TtC11DockKitCore5Track__faceBox + 16);
    v12[0] = *(v3 + OBJC_IVAR____TtC11DockKitCore5Track__faceBox);
    v12[1] = v10;
    v14 = 5;
    sub_224628648();
    LOBYTE(v12[0]) = 6;
    sub_224628618();
    LOBYTE(v12[0]) = 7;
    sub_224628618();
    v14 = 8;
    sub_224628618();
    memcpy(v12, (v3 + OBJC_IVAR____TtC11DockKitCore5Track__trackedSubjectState), 0x109uLL);
    v13 = 9;
    sub_22452C3D0();
    sub_224628648();
    *&v12[0] = *(v3 + OBJC_IVAR____TtC11DockKitCore5Track__type);
    v13 = 10;
    sub_22452C424();
    sub_224628648();
  }

  return (*(v6 + 8))(v8, v5);
}

void *Track.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8B08);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v33 - v4;
  v5 = OBJC_IVAR____TtC11DockKitCore5Track_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v6 = swift_allocObject();
  v43 = v5;
  *&v1[v5] = v6;
  v40 = OBJC_IVAR____TtC11DockKitCore5Track__id;
  *&v1[OBJC_IVAR____TtC11DockKitCore5Track__id] = -1;
  *(v6 + 16) = 0;
  v39 = OBJC_IVAR____TtC11DockKitCore5Track__faceID;
  *&v1[OBJC_IVAR____TtC11DockKitCore5Track__faceID] = -1;
  v7 = &v1[OBJC_IVAR____TtC11DockKitCore5Track__faceYaw];
  *v7 = 0;
  v38 = v7;
  v7[8] = 1;
  v8 = &v1[OBJC_IVAR____TtC11DockKitCore5Track__facePitch];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v1[OBJC_IVAR____TtC11DockKitCore5Track__bodyBox];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v10 = &v1[OBJC_IVAR____TtC11DockKitCore5Track__faceBox];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v37 = OBJC_IVAR____TtC11DockKitCore5Track__weightVertical;
  *&v1[OBJC_IVAR____TtC11DockKitCore5Track__weightVertical] = 0x3FF0000000000000;
  v11 = OBJC_IVAR____TtC11DockKitCore5Track__weightHorizontal;
  *&v1[OBJC_IVAR____TtC11DockKitCore5Track__weightHorizontal] = 0x3FF0000000000000;
  v35 = OBJC_IVAR____TtC11DockKitCore5Track__timeSinceLastSeen;
  v36 = v11;
  *&v1[OBJC_IVAR____TtC11DockKitCore5Track__timeSinceLastSeen] = 0;
  v34 = OBJC_IVAR____TtC11DockKitCore5Track__trackedSubjectState;
  sub_224519BF4(&v1[OBJC_IVAR____TtC11DockKitCore5Track__trackedSubjectState]);
  v12 = OBJC_IVAR____TtC11DockKitCore5Track__type;
  v45 = a1;
  v46 = v1;
  *&v1[OBJC_IVAR____TtC11DockKitCore5Track__type] = 4;
  v13 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452C37C();
  v14 = v44;
  sub_2246287F8();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v45);

    type metadata accessor for Track();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v39;
    v15 = v40;
    v44 = v10;
    v33 = v12;
    v17 = v41;
    LOBYTE(v50[0]) = 0;
    v18 = sub_224628568();
    v20 = v46;
    *&v46[v15] = v18;
    LOBYTE(v50[0]) = 1;
    *&v20[v16] = sub_224628568();
    LOBYTE(v50[0]) = 2;
    v21 = sub_2246284F8();
    v22 = v38;
    *v38 = v21;
    *(v22 + 8) = v23 & 1;
    LOBYTE(v50[0]) = 3;
    *v8 = sub_2246284F8();
    v8[8] = v24 & 1;
    type metadata accessor for CGRect(0);
    LOBYTE(v49) = 4;
    sub_224534E68(&qword_27D0C8B10, 255, type metadata accessor for CGRect);
    sub_224628578();
    v25 = v50[1];
    *v9 = v50[0];
    *(v9 + 1) = v25;
    LOBYTE(v49) = 5;
    sub_224628578();
    v26 = v50[1];
    v27 = v44;
    *v44 = v50[0];
    *(v27 + 1) = v26;
    LOBYTE(v50[0]) = 6;
    sub_224628548();
    *&v20[v37] = v28;
    LOBYTE(v50[0]) = 7;
    sub_224628548();
    *&v20[v36] = v29;
    LOBYTE(v50[0]) = 8;
    sub_224628548();
    *&v20[v35] = v30;
    v52 = 9;
    sub_22452C478();
    sub_224628578();
    memcpy(&v46[v34], v50, 0x109uLL);
    v51 = 10;
    sub_22452C4CC();
    sub_224628578();
    v31 = v46;
    *&v46[v33] = v49;
    v32 = type metadata accessor for Track();
    v48.receiver = v31;
    v48.super_class = v32;
    v13 = objc_msgSendSuper2(&v48, sel_init);
    (*(v17 + 8))(v47, v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  return v13;
}

void FaceObservation.rect.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t FaceObservation.yawAngle.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t FaceObservation.pitchAngle.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t FaceObservation.modality.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t FaceObservation.printConfidence.setter(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t FaceObservation.groupId.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

void __swiftcall FaceObservation.init(rect:yawAngle:pitchAngle:id:trackerId:confidence:modality:printConfidence:newFace:groupId:)(DockKitCore::FaceObservation *__return_ptr retstr, __C::CGRect rect, Swift::Double_optional yawAngle, Swift::Double_optional pitchAngle, Swift::Int id, Swift::Int trackerId, Swift::Double confidence, Swift::Int_optional modality, Swift::Double_optional printConfidence, Swift::Bool newFace, Swift::Int_optional groupId)
{
  retstr->rect = rect;
  retstr->yawAngle.value = *&yawAngle.is_nil;
  retstr->yawAngle.is_nil = pitchAngle.is_nil;
  *(&retstr->pitchAngle.value + 7) = id;
  LOBYTE(retstr->id) = trackerId & 1;
  retstr->trackerId = modality.value;
  retstr->confidence = *&modality.is_nil;
  retstr->modality.value = *&yawAngle.value;
  *&retstr->modality.is_nil = *&printConfidence.is_nil;
  HIBYTE(retstr->printConfidence.value) = newFace;
  *(&retstr->groupId.value + 5) = groupId.value;
  LOBYTE(retstr[1].rect.origin.x) = groupId.is_nil;
  BYTE1(retstr[1].rect.origin.x) = v11;
  retstr[1].rect.origin.y = v12;
  LOBYTE(retstr[1].rect.size.width) = v13 & 1;
}

uint64_t sub_22451B170(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E6F43746E697270;
    v6 = 0x6563614677656ELL;
    if (a1 != 8)
    {
      v6 = 0x644970756F7267;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6E656469666E6F63;
    if (a1 != 5)
    {
      v7 = 0x7974696C61646F6DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1952671090;
    v2 = 0x676E416863746970;
    v3 = 25705;
    if (a1 != 3)
    {
      v3 = 0x4972656B63617274;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656C676E41776179;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22451B2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22452CC2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22451B2F0(uint64_t a1)
{
  v2 = sub_22452C520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22451B32C(uint64_t a1)
{
  v2 = sub_22452C520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FaceObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8B28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  v24 = *(v3 + 4);
  v23 = *(v3 + 40);
  v22 = *(v3 + 6);
  v21 = *(v3 + 56);
  v9 = *(v3 + 8);
  v19 = *(v3 + 9);
  v20 = v9;
  v16 = *(v3 + 11);
  v17 = *(v3 + 96);
  v14 = *(v3 + 13);
  v15 = *(v3 + 112);
  v13[3] = *(v3 + 113);
  v18 = *(v3 + 15);
  v10 = *(v3 + 128);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452C520();
  sub_224628808();
  v11 = v3[1];
  v26 = *v3;
  v27 = v11;
  v25 = 0;
  type metadata accessor for CGRect(0);
  sub_224534E68(&qword_27D0C8AF0, 255, type metadata accessor for CGRect);
  sub_224628648();
  if (!v2)
  {
    v13[2] = v10;
    LOBYTE(v26) = 1;
    sub_2246285C8();
    LOBYTE(v26) = 2;
    sub_2246285C8();
    LOBYTE(v26) = 3;
    sub_224628638();
    LOBYTE(v26) = 4;
    sub_224628638();
    LOBYTE(v26) = 5;
    sub_224628618();
    LOBYTE(v26) = 6;
    sub_2246285D8();
    LOBYTE(v26) = 7;
    sub_2246285C8();
    LOBYTE(v26) = 8;
    sub_224628608();
    LOBYTE(v26) = 9;
    sub_2246285D8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FaceObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8B38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452C520();
  sub_2246287F8();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    v35 = 0;
    sub_224534E68(&qword_27D0C8B10, 255, type metadata accessor for CGRect);
    sub_224628578();
    v33 = v37;
    v34 = v36;
    LOBYTE(v36) = 1;
    v9 = sub_2246284F8();
    v42 = v10 & 1;
    LOBYTE(v36) = 2;
    v11 = sub_2246284F8();
    v41 = v12 & 1;
    LOBYTE(v36) = 3;
    v32 = sub_224628568();
    LOBYTE(v36) = 4;
    v31 = sub_224628568();
    LOBYTE(v36) = 5;
    sub_224628548();
    v14 = v13;
    LOBYTE(v36) = 6;
    v30 = sub_224628508();
    v40 = v15 & 1;
    LOBYTE(v36) = 7;
    v29 = sub_2246284F8();
    v39 = v16 & 1;
    LOBYTE(v36) = 8;
    v28 = sub_224628538();
    LOBYTE(v36) = 9;
    v27 = sub_224628508();
    v19 = v18;
    v28 &= 1u;
    (*(v6 + 8))(v8, v5);
    v38 = v19 & 1;
    v20 = v42;
    v21 = v41;
    v22 = v40;
    v23 = v39;
    v24 = v33;
    *a2 = v34;
    *(a2 + 16) = v24;
    *(a2 + 32) = v9;
    *(a2 + 40) = v20;
    *(a2 + 48) = v11;
    *(a2 + 56) = v21;
    v25 = v31;
    *(a2 + 64) = v32;
    *(a2 + 72) = v25;
    *(a2 + 80) = v14;
    v26 = v29;
    *(a2 + 88) = v30;
    *(a2 + 96) = v22;
    *(a2 + 104) = v26;
    *(a2 + 112) = v23;
    *(a2 + 113) = v28;
    *(a2 + 120) = v27;
    *(a2 + 128) = v19 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void sub_22451BABC(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void BodyObservation.rect.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t BodyObservation.modality.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t BodyObservation.printConfidence.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t BodyObservation.groupId.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

void __swiftcall BodyObservation.init(rect:id:trackerId:confidence:modality:printConfidence:newBody:groupId:)(DockKitCore::BodyObservation *__return_ptr retstr, __C::CGRect rect, Swift::Int id, Swift::Int trackerId, Swift::Double confidence, Swift::Int_optional modality, Swift::Double_optional printConfidence, Swift::Bool newBody, Swift::Int_optional groupId)
{
  retstr->rect = rect;
  retstr->id = id;
  retstr->trackerId = trackerId;
  retstr->confidence = confidence;
  retstr->modality.value = modality.value;
  retstr->modality.is_nil = modality.is_nil;
  *(&retstr->printConfidence.value + 7) = *&printConfidence.is_nil;
  BYTE5(retstr->groupId.value) = newBody;
  BYTE6(retstr->groupId.value) = groupId.value;
  retstr[1].rect.origin.x = *&groupId.is_nil;
  LOWORD(retstr[1].rect.origin.y) = v9 & 1;
}

uint64_t sub_22451BDDC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1952671090;
    v6 = 0x4972656B63617274;
    if (a1 != 2)
    {
      v6 = 0x6E656469666E6F63;
    }

    if (a1)
    {
      v5 = 25705;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x79646F4277656ELL;
    v2 = 0x644970756F7267;
    if (a1 != 7)
    {
      v2 = 0x64756C63634F7369;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7974696C61646F6DLL;
    if (a1 != 4)
    {
      v3 = 0x6E6F43746E697270;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22451BF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22452CF6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22451BF3C(uint64_t a1)
{
  v2 = sub_22452C574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22451BF78(uint64_t a1)
{
  v2 = sub_22452C574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BodyObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8B40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  v9 = *(v3 + 4);
  v19 = *(v3 + 5);
  v20 = v9;
  v18 = *(v3 + 7);
  v17 = *(v3 + 64);
  v16 = *(v3 + 9);
  LODWORD(v9) = *(v3 + 80);
  v14 = *(v3 + 81);
  v15 = v9;
  v12[1] = *(v3 + 11);
  v13 = *(v3 + 96);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452C574();
  sub_224628808();
  v10 = v3[1];
  v22 = *v3;
  v23 = v10;
  v21 = 0;
  type metadata accessor for CGRect(0);
  sub_224534E68(&qword_27D0C8AF0, 255, type metadata accessor for CGRect);
  sub_224628648();
  if (!v2)
  {
    LOBYTE(v22) = 1;
    sub_224628638();
    LOBYTE(v22) = 2;
    sub_224628638();
    LOBYTE(v22) = 3;
    sub_224628618();
    LOBYTE(v22) = 4;
    sub_2246285D8();
    LOBYTE(v22) = 5;
    sub_2246285C8();
    LOBYTE(v22) = 6;
    sub_224628608();
    LOBYTE(v22) = 7;
    sub_2246285D8();
    LOBYTE(v22) = 8;
    sub_224628608();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BodyObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8B50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452C574();
  sub_2246287F8();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    v29 = 0;
    sub_224534E68(&qword_27D0C8B10, 255, type metadata accessor for CGRect);
    sub_224628578();
    v27 = v30;
    v28 = v31;
    LOBYTE(v30) = 1;
    v9 = sub_224628568();
    LOBYTE(v30) = 2;
    v10 = sub_224628568();
    LOBYTE(v30) = 3;
    sub_224628548();
    v12 = v11;
    LOBYTE(v30) = 4;
    v26 = sub_224628508();
    v34 = v13 & 1;
    LOBYTE(v30) = 5;
    v25 = sub_2246284F8();
    v33 = v14 & 1;
    LOBYTE(v30) = 6;
    v24 = sub_224628538();
    LOBYTE(v30) = 7;
    v23 = sub_224628508();
    v32 = v16 & 1;
    LOBYTE(v30) = 8;
    v17 = sub_224628538();
    (*(v6 + 8))(v8, v5);
    v18 = v24 & 1;
    v19 = v34;
    v20 = v33;
    v21 = v32;
    v22 = v28;
    *a2 = v27;
    *(a2 + 16) = v22;
    *(a2 + 32) = v9;
    *(a2 + 40) = v10;
    *(a2 + 48) = v12;
    *(a2 + 56) = v26;
    *(a2 + 64) = v19;
    *(a2 + 72) = v25;
    *(a2 + 80) = v20;
    *(a2 + 81) = v18;
    *(a2 + 88) = v23;
    *(a2 + 96) = v21;
    *(a2 + 97) = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void ObjectObservation.rect.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void __swiftcall ObjectObservation.init(rect:id:trackerId:confidence:)(DockKitCore::ObjectObservation *__return_ptr retstr, __C::CGRect rect, Swift::Int id, Swift::Int trackerId, Swift::Double confidence)
{
  retstr->rect = rect;
  retstr->id = id;
  retstr->trackerId = trackerId;
  retstr->confidence = confidence;
}

uint64_t sub_22451C7FC()
{
  v1 = 1952671090;
  v2 = 0x4972656B63617274;
  if (*v0 != 2)
  {
    v2 = 0x6E656469666E6F63;
  }

  if (*v0)
  {
    v1 = 25705;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22451C86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22452D260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22451C8A0(uint64_t a1)
{
  v2 = sub_22452C5C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22451C8DC(uint64_t a1)
{
  v2 = sub_22452C5C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ObjectObservation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8B58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v11 = *(v3 + 4);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452C5C8();
  sub_224628808();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v12 = 0;
  type metadata accessor for CGRect(0);
  sub_224534E68(&qword_27D0C8AF0, 255, type metadata accessor for CGRect);
  sub_224628648();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_224628638();
    LOBYTE(v13) = 2;
    sub_224628638();
    LOBYTE(v13) = 3;
    sub_224628618();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ObjectObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8B68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452C5C8();
  sub_2246287F8();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    v17 = 0;
    sub_224534E68(&qword_27D0C8B10, 255, type metadata accessor for CGRect);
    sub_224628578();
    v15 = v18;
    v16 = v19;
    LOBYTE(v18) = 1;
    v9 = sub_224628568();
    LOBYTE(v18) = 2;
    v11 = sub_224628568();
    LOBYTE(v18) = 3;
    sub_224628548();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    v14 = v16;
    *a2 = v15;
    *(a2 + 16) = v14;
    *(a2 + 32) = v9;
    *(a2 + 40) = v11;
    *(a2 + 48) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void TrackedSubjectState.faceBox.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

void TrackedSubjectState.bodyBox.setter(double a1, double a2, double a3, double a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

uint64_t TrackedSubjectState.yawAngle.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t TrackedSubjectState.pitchAngle.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t TrackedSubjectState.sinceFaceSeen.setter(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t sub_22451D20C(char a1)
{
  result = 0x4972656B63617274;
  switch(a1)
  {
    case 1:
      result = 0x644965636166;
      break;
    case 2:
      v3 = 1701011814;
      goto LABEL_12;
    case 3:
      v3 = 2036625250;
LABEL_12:
      result = v3 | 0x786F4200000000;
      break;
    case 4:
      result = 0x656C676E41776179;
      break;
    case 5:
      result = 0x676E416863746970;
      break;
    case 6:
      result = 0x5072616C75676E61;
      break;
    case 7:
      result = 0x5672616C75676E61;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x6F506172656D6163;
      break;
    case 10:
      result = 0x65566172656D6163;
      break;
    case 11:
      result = 0x6F69746F4D776179;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x6576697463417369;
      break;
    case 15:
      result = 0x746867696577;
      break;
    case 16:
      result = 0x65636E6174736964;
      break;
    case 17:
      result = 0x4965636146707369;
      break;
    case 18:
      result = 0x4979646F42707369;
      break;
    case 19:
      result = 1701869940;
      break;
    case 20:
      result = 0x63614665636E6973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22451D474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22452D3CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22451D4A8(uint64_t a1)
{
  v2 = sub_22452C61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22451D4E4(uint64_t a1)
{
  v2 = sub_22452C61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TrackedSubjectState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8B70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - v5;
  v51 = *(v1 + 8);
  v7 = *(v1 + 16);
  v48 = *(v1 + 32);
  v49 = v7;
  v8 = *(v1 + 48);
  v46 = *(v1 + 64);
  v47 = v8;
  v50 = *(v1 + 80);
  v55 = *(v1 + 88);
  v44 = *(v1 + 96);
  v45 = *(v1 + 104);
  *&v8 = *(v1 + 120);
  v43 = *(v1 + 112);
  v42 = v8;
  *&v8 = *(v1 + 136);
  v41 = *(v1 + 128);
  v40 = v8;
  v9 = *(v1 + 152);
  v39 = *(v1 + 144);
  v10 = *(v1 + 160);
  v11 = *(v1 + 168);
  v13 = *(v1 + 176);
  v12 = *(v1 + 184);
  v38 = *(v1 + 192);
  v37 = *(v1 + 193);
  v14 = *(v1 + 200);
  v36 = *(v1 + 208);
  v16 = *(v1 + 216);
  v15 = *(v1 + 224);
  v17 = *(v1 + 240);
  v32 = *(v1 + 232);
  v33 = v17;
  v18 = *(v1 + 256);
  v34 = *(v1 + 248);
  v35 = v18;
  v19 = *(v1 + 264);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452C61C();
  sub_224628808();
  LOBYTE(v53) = 0;
  v20 = v52;
  sub_224628638();
  if (v20)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v52 = v9;
  v30 = v11;
  v31 = v10;
  v28 = v12;
  v29 = v13;
  v27 = v14;
  v26 = v16;
  v25 = v15;
  v24[3] = v19;
  LOBYTE(v53) = 1;
  sub_224628638();
  v54 = v48;
  v53 = v49;
  v56 = 2;
  type metadata accessor for CGRect(0);
  sub_224534E68(&qword_27D0C8AF0, 255, type metadata accessor for CGRect);
  v51 = v3;
  sub_224628648();
  v54 = v46;
  v53 = v47;
  v56 = 3;
  sub_224628648();
  LOBYTE(v53) = 4;
  sub_2246285C8();
  LOBYTE(v53) = 5;
  sub_2246285C8();
  *&v53 = v43;
  *(&v53 + 1) = v42;
  v56 = 6;
  type metadata accessor for CGPoint(0);
  sub_224534E68(&qword_27D0C8B80, 255, type metadata accessor for CGPoint);
  sub_224628648();
  *&v53 = v41;
  *(&v53 + 1) = v40;
  v56 = 7;
  sub_224628648();
  *&v53 = v39;
  *(&v53 + 1) = v52;
  v56 = 8;
  sub_224628648();
  *&v53 = v31;
  *(&v53 + 1) = v30;
  v56 = 9;
  sub_224628648();
  *&v53 = v29;
  *(&v53 + 1) = v28;
  v56 = 10;
  v21 = v6;
  sub_224628648();
  LOBYTE(v53) = v38;
  v56 = 11;
  sub_22452C670();
  sub_224628648();
  LOBYTE(v53) = v37;
  v56 = 12;
  sub_224628648();
  LOBYTE(v53) = 13;
  sub_224628618();
  LOBYTE(v53) = 14;
  sub_224628608();
  LOBYTE(v53) = 15;
  sub_224628618();
  LOBYTE(v53) = 16;
  sub_224628618();
  LOBYTE(v53) = 17;
  sub_224628638();
  LOBYTE(v53) = 18;
  sub_224628638();
  *&v53 = v34;
  v56 = 19;
  sub_22452C424();
  sub_224628648();
  LOBYTE(v53) = 20;
  v22 = v51;
  sub_2246285C8();
  return (*(v4 + 8))(v21, v22);
}

uint64_t TrackedSubjectState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8B90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452C61C();
  sub_2246287F8();
  if (!v2)
  {
    LOBYTE(v49) = 0;
    v48 = sub_224628568();
    LOBYTE(v49) = 1;
    v47 = sub_224628568();
    type metadata accessor for CGRect(0);
    v54 = 2;
    sub_224534E68(&qword_27D0C8B10, 255, type metadata accessor for CGRect);
    sub_224628578();
    v45 = v50;
    v46 = v49;
    v54 = 3;
    sub_224628578();
    v43 = v50;
    v44 = v49;
    LOBYTE(v49) = 4;
    v42 = sub_2246284F8();
    v53 = v10 & 1;
    LOBYTE(v49) = 5;
    v41 = sub_2246284F8();
    v52 = v11 & 1;
    type metadata accessor for CGPoint(0);
    v54 = 6;
    sub_224534E68(&qword_27D0C8B98, 255, type metadata accessor for CGPoint);
    sub_224628578();
    v12 = v49;
    v54 = 7;
    sub_224628578();
    v13 = v49;
    v54 = 8;
    sub_224628578();
    v14 = v49;
    v54 = 9;
    sub_224628578();
    v15 = v49;
    v54 = 10;
    sub_224628578();
    v39 = *(&v49 + 1);
    v40 = v49;
    v54 = 11;
    sub_22452C6C4();
    sub_224628578();
    v16 = v49;
    v54 = 12;
    sub_224628578();
    v17 = v49;
    LOBYTE(v49) = 13;
    sub_224628548();
    v38 = v18;
    LOBYTE(v49) = 14;
    v37 = sub_224628538();
    LOBYTE(v49) = 15;
    sub_224628548();
    v36 = v19;
    LOBYTE(v49) = 16;
    sub_224628548();
    v35 = v20;
    LOBYTE(v49) = 17;
    v34 = sub_224628568();
    LOBYTE(v49) = 18;
    v33 = sub_224628568();
    v54 = 19;
    sub_22452C4CC();
    sub_224628578();
    v32 = v49;
    LOBYTE(v49) = 20;
    v31 = sub_2246284F8();
    v22 = v21;
    v37 &= 1u;
    (*(v6 + 8))(v8, v5);
    v51 = v22 & 1;
    v23 = v53;
    v24 = v52;
    *a2 = v48;
    *(a2 + 8) = v47;
    v25 = v45;
    *(a2 + 16) = v46;
    *(a2 + 32) = v25;
    v26 = v43;
    *(a2 + 48) = v44;
    *(a2 + 64) = v26;
    *(a2 + 80) = v42;
    *(a2 + 88) = v23;
    *(a2 + 96) = v41;
    *(a2 + 104) = v24;
    *(a2 + 112) = v12;
    *(a2 + 128) = v13;
    *(a2 + 144) = v14;
    *(a2 + 160) = v15;
    v27 = v39;
    *(a2 + 176) = v40;
    *(a2 + 184) = v27;
    *(a2 + 192) = v16;
    *(a2 + 193) = v17;
    *(a2 + 200) = v38;
    *(a2 + 208) = v37;
    v28 = v35;
    *(a2 + 216) = v36;
    *(a2 + 224) = v28;
    v29 = v33;
    *(a2 + 232) = v34;
    *(a2 + 240) = v29;
    v30 = v31;
    *(a2 + 248) = v32;
    *(a2 + 256) = v30;
    *(a2 + 264) = v22 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t InputSummary.faces.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t InputSummary.bodies.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

DockKitCore::InputSummary __swiftcall InputSummary.init(faces:bodies:)(Swift::OpaquePointer faces, Swift::OpaquePointer bodies)
{
  v2->_rawValue = faces._rawValue;
  v2[1]._rawValue = bodies._rawValue;
  result.bodies = bodies;
  result.faces = faces;
  return result;
}

uint64_t sub_22451E594()
{
  if (*v0)
  {
    return 0x736569646F62;
  }

  else
  {
    return 0x7365636166;
  }
}

uint64_t sub_22451E5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365636166 && a2 == 0xE500000000000000;
  if (v6 || (sub_224628688() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736569646F62 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_224628688();

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

uint64_t sub_22451E69C(uint64_t a1)
{
  v2 = sub_22452C718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22451E6D8(uint64_t a1)
{
  v2 = sub_22452C718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InputSummary.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8BA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452C718();

  sub_224628808();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8BB8);
  sub_22452C76C();
  sub_224628648();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8BD0);
    sub_22452C88C();
    sub_224628648();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t InputSummary.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8BE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452C718();
  sub_2246287F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8BB8);
  v13 = 0;
  sub_22452C964();
  sub_224628578();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8BD0);
  v13 = 1;
  sub_22452CA3C();
  sub_224628578();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_22451EB4C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22451EB7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_22451EBAC()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_22451EBDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *DebugMessage.__allocating_init(topic:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *DebugMessage.init(topic:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t sub_22451EC50()
{
  v1 = *v0;
  sub_224628778();
  MEMORY[0x22AA51BF0](v1);
  return sub_2246287C8();
}

uint64_t sub_22451EC98()
{
  v1 = *v0;
  sub_224628778();
  MEMORY[0x22AA51BF0](v1);
  return sub_2246287C8();
}

uint64_t sub_22451ECDC()
{
  if (*v0)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x6369706F74;
  }
}

uint64_t sub_22451ED14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_224628688() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_224628688();

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

uint64_t sub_22451EDEC(uint64_t a1)
{
  v2 = sub_22452CB14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22451EE28(uint64_t a1)
{
  v2 = sub_22452CB14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DebugMessage.deinit()
{

  return v0;
}

uint64_t DebugMessage.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_22451EECC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8C10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452CB14();
  sub_224628808();
  v8[15] = 0;

  sub_2246285F8();
  if (!v1)
  {

    v8[14] = 1;

    sub_2246285F8();
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t DebugMessage.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DebugMessage.init(from:)(a1);
  return v2;
}

void *DebugMessage.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8C20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452CB14();
  sub_2246287F8();
  if (v2)
  {
    type metadata accessor for DebugMessage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    v1[2] = sub_224628528();
    v1[3] = v8;
    v14 = 1;
    v10 = sub_224628528();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    v1[4] = v10;
    v1[5] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

void *sub_22451F2B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DebugMessage();
  v5 = swift_allocObject();
  result = DebugMessage.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t DockCoreInfo.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name);

  return v1;
}

uint64_t DockCoreInfo.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type);
  switch(v1)
  {
    case 1:
      v2 = 0x676E696B63617254;
      goto LABEL_7;
    case 3:
      v2 = 1801678669;
LABEL_7:
      v9 = v2;

      MEMORY[0x22AA51210](45, 0xE100000000000000);

      v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name);
      v4 = *(v0 + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name + 8);

      MEMORY[0x22AA51210](v3, v4);

      MEMORY[0x22AA51210](45, 0xE100000000000000);

      v5 = sub_224627138();
      v7 = v6;

      MEMORY[0x22AA51210](v5, v7);

      return v9;
    case 2:
      v2 = 0x6D6F74737543;
      goto LABEL_7;
  }

  result = sub_2246286B8();
  __break(1u);
  return result;
}

id DockCoreInfo.__allocating_init(type:name:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type] = a1;
  v10 = &v9[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name];
  *v10 = a2;
  *(v10 + 1) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_identifier;
  v12 = sub_224627188();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v9[v11], a4, v12);
  v16.receiver = v9;
  v16.super_class = v4;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v13 + 8))(a4, v12);
  return v14;
}

id DockCoreInfo.init(type:name:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type] = a1;
  v10 = &v4[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name];
  *v10 = a2;
  *(v10 + 1) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_identifier;
  v12 = sub_224627188();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v4[v11], a4, v12);
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v13 + 8))(a4, v12);
  return v14;
}

id DockCoreInfo.init(uuidString:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8C38);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_224627188();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v40 = a2;
  v43 = 45;
  v44 = 0xE100000000000000;
  sub_22452CB8C();
  v14 = sub_224628268();

  v15 = v14[2];
  if (v15 < 3)
  {
    goto LABEL_2;
  }

  v35 = v13;
  v36 = v11;
  v37 = ObjectType;
  v17 = sub_224627D38();
  v19 = v18;
  v20 = v17 == 0x676E696B63617274 && v18 == 0xED0000646E617473;
  if (v20 || (v21 = v17, (sub_224628688() & 1) != 0))
  {

    v22 = 1;
  }

  else
  {
    if (v21 == 0x6D6F74737563 && v19 == 0xE600000000000000)
    {
    }

    else
    {
      v33 = sub_224628688();

      if ((v33 & 1) == 0)
      {
LABEL_2:

        swift_deallocPartialClassInstance();
        return 0;
      }
    }

    v22 = 2;
  }

  v23 = v14[2];
  if (v15 == 3)
  {
    if (v23 < 3)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    if (v23 < v15)
    {
LABEL_31:
      __break(1u);
      return result;
    }

    v39 = v14;
    v40 = v14 + 4;
    v41 = 2;
    v42 = (2 * v15) | 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8C48);
    sub_224535268(&unk_27D0C8C50, &qword_27D0C8C48);
    sub_224627C98();
  }

  *&v3[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type] = v22;
  if (v14[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  v24 = v14[6];
  v25 = v14[7];

  v26 = &v3[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name];
  *v26 = v24;
  *(v26 + 1) = v25;
  sub_224627128();

  v27 = v36;
  v28 = *(v36 + 48);
  if (v28(v9, 1, v10) == 1)
  {
    v29 = v35;
    sub_224627178();
    v30 = v28(v9, 1, v10);
    v31 = v37;
    if (v30 != 1)
    {
      sub_2245098A0(v9, &qword_27D0C8C38);
    }
  }

  else
  {
    v29 = v35;
    (*(v27 + 32))(v35, v9, v10);
    v31 = v37;
  }

  (*(v27 + 32))(&v3[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_identifier], v29, v10);
  v38.receiver = v3;
  v38.super_class = v31;
  return objc_msgSendSuper2(&v38, sel_init);
}

Swift::Void __swiftcall DockCoreInfo.encode(with:)(NSCoder with)
{
  v2 = sub_224628008();
  v3 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_224627CB8();
  v5 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  sub_224627138();
  v6 = sub_224627CB8();

  v7 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

id DockCoreInfo.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22452DA80();

  return v4;
}

id DockCoreInfo.init(coder:)(void *a1)
{
  v2 = sub_22452DA80();

  return v2;
}

uint64_t DockCoreInfo.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2245351F0(a1, v6, &qword_27D0CA3B0);
  if (!v7)
  {
    sub_2245098A0(v6, &qword_27D0CA3B0);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v3 = 0;
    return v3 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type) != *&v5[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type])
  {

    goto LABEL_7;
  }

  v3 = sub_224627158();

  return v3 & 1;
}

uint64_t DockCoreInfo.hash.getter()
{
  sub_2246287D8();
  MEMORY[0x22AA51BF0](*(v0 + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type));
  sub_224627188();
  sub_224534E68(&qword_27D0C8C60, 255, MEMORY[0x277CC95F0]);
  sub_224627C88();
  return sub_2246287B8();
}

uint64_t sub_2245204FC()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_22452054C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22452DFEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224520574(uint64_t a1)
{
  v2 = sub_22452DEF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2245205B0(uint64_t a1)
{
  v2 = sub_22452DEF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DockCoreInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8C68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452DEF0();
  sub_224628808();
  v11 = *(v3 + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type);
  v10[7] = 0;
  sub_22452DF44();
  sub_224628648();
  if (!v2)
  {
    v10[6] = 1;
    sub_2246285F8();
    v10[5] = 2;
    sub_224627188();
    sub_224534E68(&qword_27D0C8C80, 255, MEMORY[0x277CC95F0]);
    sub_224628648();
  }

  return (*(v6 + 8))(v8, v5);
}

char *DockCoreInfo.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_224627188();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8C88);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452DEF0();
  sub_2246287F8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v23 = 0;
    sub_22452DF98();
    v11 = v19;
    sub_224628578();
    v12 = v21;
    *&v21[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_type] = v24;
    LOBYTE(v24) = 1;
    v13 = sub_224628528();
    v15 = &v12[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name];
    *v15 = v13;
    v15[1] = v16;
    v17 = v15;
    LOBYTE(v24) = 2;
    sub_224534E68(&qword_27D0C9820, 255, MEMORY[0x277CC95F0]);
    sub_224628578();
    (*(v18 + 32))(&v12[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_identifier], v9, v3);
    v22.receiver = v12;
    v22.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v22, sel_init);
    (*(v10 + 8))(v8, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v5;
}

char *sub_224520CA0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = DockCoreInfo.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

double Actuator.currentVelocity.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);

  os_unfair_lock_lock(v1 + 4);
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentVelocity);
  os_unfair_lock_unlock(v1 + 4);

  return v2;
}

uint64_t sub_224520E98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);

  os_unfair_lock_lock(v4 + 4);
  v5 = *(v3 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentVelocity);
  os_unfair_lock_unlock(v4 + 4);

  *a2 = v5;
  return result;
}

double sub_224520F30(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = *(v2 + *a1);

  os_unfair_lock_lock(v5 + 4);

  v6 = *(v2 + *a2);
  v7 = *(v2 + v4);

  os_unfair_lock_unlock(v7 + 4);

  return v6;
}

uint64_t sub_224520FA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(*a1 + *a2);

  os_unfair_lock_lock(v8 + 4);

  v9 = *(v6 + *a3);
  v10 = *(v6 + v7);

  os_unfair_lock_unlock(v10 + 4);

  *a4 = v9;
  return result;
}

uint64_t sub_224521030(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  v10 = *(*a2 + *a5);

  os_unfair_lock_lock(v10 + 4);

  *(v8 + *a6) = v7;
  v11 = *(v8 + v9);

  os_unfair_lock_unlock(v11 + 4);
}

uint64_t Actuator.description.getter()
{
  sub_224628378();
  MEMORY[0x22AA51210](0x6F7461757463413CLL, 0xED00003D64692072);
  v1 = sub_224628668();
  MEMORY[0x22AA51210](v1);

  MEMORY[0x22AA51210](0x3D6570797420, 0xE600000000000000);
  sub_224628448();
  MEMORY[0x22AA51210](0x223D656D616E20, 0xE700000000000000);
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore9Component_name);
  v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore9Component_name + 8);

  MEMORY[0x22AA51210](v2, v3);

  MEMORY[0x22AA51210](15906, 0xE200000000000000);
  return 0;
}

id Actuator.init(id:name:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition] = 0;
  v9 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition] = 0;
  v10 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxSpeed;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxSpeed] = 0;
  v11 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition] = 0;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator__currentVelocity] = 0;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator__currentAcceleration] = 0;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator__homePosition] = 0;
  v4[OBJC_IVAR____TtC11DockKitCore8Actuator_initialized] = 0;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator_targetPosition] = 0;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator_targetVelocity] = 0;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator_targetAcceleration] = 0;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator_actuatorType] = a4;
  v13 = OBJC_IVAR____TtC11DockKitCore8Actuator_minPosition;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator_minPosition] = 0;
  v14 = OBJC_IVAR____TtC11DockKitCore8Actuator_maxPosition;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator_maxPosition] = 0;
  v15 = OBJC_IVAR____TtC11DockKitCore8Actuator_maxSpeed;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator_maxSpeed] = 0;
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator_maxAcceleration] = 0;
  v16 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator_controlParams] = sub_22452E10C(MEMORY[0x277D84F90]);
  *&v4[OBJC_IVAR____TtC11DockKitCore8Actuator_cameraLimits] = v16;
  *&v4[v8] = *&v4[v13];
  *&v4[v9] = *&v4[v14];
  *&v4[v10] = *&v4[v15];
  *&v4[OBJC_IVAR____TtC11DockKitCore9Component_id] = a1;
  v4[OBJC_IVAR____TtC11DockKitCore9Component_type] = 0;
  v17 = &v4[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v17 = a2;
  v17[1] = a3;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for Component();
  return objc_msgSendSuper2(&v20, sel_init);
}

id Actuator.__allocating_init(id:type:name:minPosition:maxPosition:maxSpeed:maxAcceleration:homePosition:controlParams:cameraLimits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11)
{
  v12 = v11;
  v23 = objc_allocWithZone(v12);
  v24 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition;
  v25 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition;
  v26 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxSpeed;
  v27 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *&v23[v27] = v28;
  *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition] = 0;
  *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator__currentVelocity] = 0;
  *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator__currentAcceleration] = 0;
  v29 = OBJC_IVAR____TtC11DockKitCore8Actuator__homePosition;
  v30 = OBJC_IVAR____TtC11DockKitCore8Actuator_initialized;
  *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator_targetPosition] = 0;
  *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator_targetVelocity] = 0;
  *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator_targetAcceleration] = 0;
  *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator_actuatorType] = a2;
  *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator_minPosition] = a7;
  *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator_maxPosition] = a8;
  *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator_maxSpeed] = a9;
  *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator_maxAcceleration] = a10;
  *&v23[v29] = a11;
  *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator_controlParams] = a5;
  *&v23[OBJC_IVAR____TtC11DockKitCore8Actuator_cameraLimits] = a6;
  *&v23[v24] = a7;
  *&v23[v25] = a8;
  *&v23[v26] = a9;
  v23[v30] = 1;
  *&v23[OBJC_IVAR____TtC11DockKitCore9Component_id] = a1;
  v23[OBJC_IVAR____TtC11DockKitCore9Component_type] = 0;
  v31 = &v23[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v31 = a3;
  v31[1] = a4;
  v34.receiver = v23;
  v34.super_class = type metadata accessor for Component();
  return objc_msgSendSuper2(&v34, sel_init);
}

id Actuator.init(id:type:name:minPosition:maxPosition:maxSpeed:maxAcceleration:homePosition:controlParams:cameraLimits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11)
{
  v22 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition;
  v23 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition;
  v24 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxSpeed;
  v25 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v26 = swift_allocObject();
  *&v11[v25] = v26;
  *&v11[OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition] = 0;
  *&v11[OBJC_IVAR____TtC11DockKitCore8Actuator__currentVelocity] = 0;
  *&v11[OBJC_IVAR____TtC11DockKitCore8Actuator__currentAcceleration] = 0;
  v27 = OBJC_IVAR____TtC11DockKitCore8Actuator__homePosition;
  v28 = OBJC_IVAR____TtC11DockKitCore8Actuator_initialized;
  *&v11[OBJC_IVAR____TtC11DockKitCore8Actuator_targetPosition] = 0;
  *&v11[OBJC_IVAR____TtC11DockKitCore8Actuator_targetVelocity] = 0;
  *&v11[OBJC_IVAR____TtC11DockKitCore8Actuator_targetAcceleration] = 0;
  *&v11[OBJC_IVAR____TtC11DockKitCore8Actuator_actuatorType] = a2;
  *&v11[OBJC_IVAR____TtC11DockKitCore8Actuator_minPosition] = a7;
  *&v11[OBJC_IVAR____TtC11DockKitCore8Actuator_maxPosition] = a8;
  *&v11[OBJC_IVAR____TtC11DockKitCore8Actuator_maxSpeed] = a9;
  *&v11[OBJC_IVAR____TtC11DockKitCore8Actuator_maxAcceleration] = a10;
  *&v11[v27] = a11;
  *&v11[OBJC_IVAR____TtC11DockKitCore8Actuator_controlParams] = a5;
  *&v11[OBJC_IVAR____TtC11DockKitCore8Actuator_cameraLimits] = a6;
  *&v11[v22] = a7;
  *&v11[v23] = a8;
  *&v11[v24] = a9;
  v11[v28] = 1;
  *&v11[OBJC_IVAR____TtC11DockKitCore9Component_id] = a1;
  *(v26 + 16) = 0;
  v11[OBJC_IVAR____TtC11DockKitCore9Component_type] = 0;
  v29 = &v11[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v29 = a3;
  v29[1] = a4;
  v32.receiver = v11;
  v32.super_class = type metadata accessor for Component();
  return objc_msgSendSuper2(&v32, sel_init);
}

Swift::Void __swiftcall Actuator.encode(with:)(NSCoder with)
{
  sub_2245B3720(with.super.isa);
  v3 = sub_224628008();
  v4 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = sub_224627FA8();
  v6 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = sub_224627FA8();
  v8 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = sub_224627FA8();
  v10 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = sub_224627FA8();
  v12 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
  v14 = *(v1 + OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock);

  os_unfair_lock_lock(v14 + 4);

  v15 = *(v1 + v13);

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_224627FA8();
  v17 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];

  v18 = sub_224627C48();
  v19 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

  type metadata accessor for CameraLimit();
  v20 = sub_224627EB8();
  v21 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];
}

id Actuator.init(coder:)(void *a1)
{
  v2 = v1;
  v38 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition;
  *(v1 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMinPosition) = 0;
  v37 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition;
  *(v1 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxPosition) = 0;
  v36 = OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxSpeed;
  *(v1 + OBJC_IVAR____TtC11DockKitCore8Actuator__softMaxSpeed) = 0;
  v4 = OBJC_IVAR____TtC11DockKitCore8Actuator_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + v4) = v5;
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentPosition) = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentVelocity) = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator__currentAcceleration) = 0;
  v6 = OBJC_IVAR____TtC11DockKitCore8Actuator__homePosition;
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator__homePosition) = 0;
  v35 = OBJC_IVAR____TtC11DockKitCore8Actuator_initialized;
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator_initialized) = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator_targetPosition) = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator_targetVelocity) = 0;
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator_targetAcceleration) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9690);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22462C8F0;
  v8 = sub_22450950C(0, &unk_27D0C89A0);
  *(v7 + 32) = v8;
  sub_2246281B8();

  if (v41)
  {
    if (swift_dynamicCast())
    {
      v9 = v39;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2245098A0(v40, &qword_27D0CA3B0);
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_6:
  v34 = v9;
  v10 = [v9 integerValue];
  if (v10 >= 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator_actuatorType) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22462C8F0;
  *(v12 + 32) = v8;
  sub_2246281B8();

  if (v41)
  {
    if (swift_dynamicCast())
    {
      v13 = v39;
      goto LABEL_14;
    }
  }

  else
  {
    sub_2245098A0(v40, &qword_27D0CA3B0);
  }

  v13 = 0;
LABEL_14:
  v33 = OBJC_IVAR____TtC11DockKitCore8Actuator_minPosition;
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator_minPosition) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22462C8F0;
  *(v14 + 32) = v8;
  sub_2246281B8();

  if (v41)
  {
    if (swift_dynamicCast())
    {
      v15 = v39;
      goto LABEL_19;
    }
  }

  else
  {
    sub_2245098A0(v40, &qword_27D0CA3B0);
  }

  v15 = 0;
LABEL_19:
  v32 = OBJC_IVAR____TtC11DockKitCore8Actuator_maxPosition;
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator_maxPosition) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22462C8F0;
  *(v16 + 32) = v8;
  sub_2246281B8();

  if (v41)
  {
    if (swift_dynamicCast())
    {
      v17 = *&v39;
      goto LABEL_24;
    }
  }

  else
  {
    sub_2245098A0(v40, &qword_27D0CA3B0);
  }

  v17 = 0.0;
LABEL_24:
  v18 = OBJC_IVAR____TtC11DockKitCore8Actuator_maxSpeed;
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator_maxSpeed) = fabs(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22462C8F0;
  *(v19 + 32) = v8;
  sub_2246281B8();

  if (v41)
  {
    if (swift_dynamicCast())
    {
      v20 = v39;
      goto LABEL_29;
    }
  }

  else
  {
    sub_2245098A0(v40, &qword_27D0CA3B0);
  }

  v20 = 0;
LABEL_29:
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator_maxAcceleration) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22462C8F0;
  *(v21 + 32) = v8;
  sub_2246281B8();

  if (v41)
  {
    if (swift_dynamicCast())
    {
      v22 = v39;
      goto LABEL_34;
    }
  }

  else
  {
    sub_2245098A0(v40, &qword_27D0CA3B0);
  }

  v22 = 0;
LABEL_34:
  *(v2 + v6) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22462C900;
  *(v23 + 32) = v8;
  v24 = sub_22450950C(0, &qword_27D0C9FB0);
  *(v23 + 40) = v24;
  v25 = sub_22450950C(0, &unk_27D0C8D40);
  *(v23 + 48) = v25;
  *(v23 + 56) = sub_22450950C(0, &qword_27D0C9E90);
  sub_2246281B8();

  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8D58);
    if (swift_dynamicCast())
    {
      v26 = v39;
      goto LABEL_39;
    }
  }

  else
  {
    sub_2245098A0(v40, &qword_27D0CA3B0);
  }

  v26 = sub_22452E10C(MEMORY[0x277D84F90]);
LABEL_39:
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator_controlParams) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22462C900;
  *(v27 + 32) = type metadata accessor for CameraLimit();
  *(v27 + 40) = v8;
  *(v27 + 48) = v24;
  *(v27 + 56) = v25;
  sub_2246281B8();

  if (v41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8D50);
    if (swift_dynamicCast())
    {
      v28 = v39;
      goto LABEL_44;
    }
  }

  else
  {
    sub_2245098A0(v40, &qword_27D0CA3B0);
  }

  v28 = MEMORY[0x277D84F90];
LABEL_44:
  *(v2 + OBJC_IVAR____TtC11DockKitCore8Actuator_cameraLimits) = v28;
  *(v2 + v38) = *(v2 + v33);
  *(v2 + v37) = *(v2 + v32);
  *(v2 + v36) = *(v2 + v18);
  *(v2 + v35) = 1;
  v29 = sub_2245B47B4();

  v30 = v29;
  if (v29)
  {
  }

  return v29;
}

Swift::Double_optional __swiftcall Actuator.getControlParam(name:)(Swift::String name)
{
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore8Actuator_controlParams);
  if (*(v2 + 16) && (v3 = sub_2245096C8(name._countAndFlagsBits, name._object), (v5 & 1) != 0))
  {
    v6 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  result.value = v4;
  result.is_nil = v6;
  return result;
}

uint64_t sub_2245225C0()
{
}

void sub_2245226C4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_actual);
  *(v1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_actual) = a1;
}

void sub_224522710(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_command);
  *(v1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_command) = a1;
}

void sub_22452275C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_reference);
  *(v1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_reference) = a1;
}

uint64_t sub_2245227E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_statusMessage);

  return v1;
}

uint64_t sub_224522824(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_statusMessage);
  *v3 = a1;
  v3[1] = a2;
}

id TrajectoryProgress.init(status:statusMessage:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *&v3[OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_progress] = 0;
  v7 = OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_actual;
  v8 = type metadata accessor for TrajectoryPoint();
  *&v3[v7] = [objc_allocWithZone(v8) init];
  v9 = OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_command;
  *&v3[v9] = [objc_allocWithZone(v8) init];
  v10 = OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_reference;
  *&v3[v10] = [objc_allocWithZone(v8) init];
  v11 = OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_status;
  v3[OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_status] = 0;
  v12 = &v3[OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_statusMessage];
  v3[v11] = v6;
  *v12 = a2;
  v12[1] = a3;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for TrajectoryProgress();
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_224522998(void *a1@<X8>)
{
  v2 = v1;
  v13[0] = *(v1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_status);
  v4 = v1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_statusMessage;
  v5 = *(v1 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_statusMessage);
  v6 = *(v4 + 8);
  v7 = type metadata accessor for TrajectoryProgress();
  objc_allocWithZone(v7);

  v8 = TrajectoryProgress.init(status:statusMessage:)(v13, v5, v6);
  *&v8[OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_progress] = *(v2 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_progress);
  [*(v2 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_actual) copy];
  sub_224628278();
  swift_unknownObjectRelease();
  type metadata accessor for TrajectoryPoint();
  swift_dynamicCast();
  v9 = *&v8[OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_actual];
  *&v8[OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_actual] = v12;

  [*(v2 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_command) copy];
  sub_224628278();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v10 = *&v8[OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_command];
  *&v8[OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_command] = v12;

  [*(v2 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_reference) copy];
  sub_224628278();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v11 = *&v8[OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_reference];
  *&v8[OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_reference] = v12;

  a1[3] = v7;
  *a1 = v8;
}

uint64_t sub_224522C1C()
{
  v1 = *v0;
  v2 = 0x73736572676F7270;
  v3 = 0x636E657265666572;
  v4 = 0x737574617473;
  if (v1 != 4)
  {
    v4 = 0x654D737574617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6175746361;
  if (v1 != 1)
  {
    v5 = 0x646E616D6D6F63;
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

uint64_t sub_224522CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22452ED00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224522D08(uint64_t a1)
{
  v2 = sub_22452EAF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224522D44(uint64_t a1)
{
  v2 = sub_22452EAF0();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_224522D98(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_224522E40(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8D90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22452EAF0();
  sub_224628808();
  LOBYTE(v12) = 0;
  sub_224628618();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = *(v3 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_actual);
  HIBYTE(v11) = 1;
  type metadata accessor for TrajectoryPoint();
  sub_224534E68(&qword_27D0C8DA0, v9, type metadata accessor for TrajectoryPoint);
  sub_224628648();
  v12 = *(v3 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_command);
  HIBYTE(v11) = 2;
  sub_224628648();
  v12 = *(v3 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_reference);
  HIBYTE(v11) = 3;
  sub_224628648();
  LOBYTE(v12) = *(v3 + OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_status);
  HIBYTE(v11) = 4;
  sub_22452EB44();
  sub_224628648();
  LOBYTE(v12) = 5;

  sub_2246285B8();
  (*(v6 + 8))(v8, v5);
}

_BYTE *TrajectoryProgress.init(from:)(void *a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8DB0);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v30 - v4;
  v30 = OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_progress;
  *&v1[OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_progress] = 0;
  v6 = OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_actual;
  v7 = type metadata accessor for TrajectoryPoint();
  v8 = [objc_allocWithZone(v7) init];
  v38 = v6;
  *&v2[v6] = v8;
  v9 = OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_command;
  v10 = [objc_allocWithZone(v7) init];
  v36 = v9;
  *&v2[v9] = v10;
  v11 = OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_reference;
  *&v2[v11] = [objc_allocWithZone(v7) init];
  v12 = OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_status;
  v2[OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_status] = 0;
  v13 = &v2[OBJC_IVAR____TtC11DockKitCore18TrajectoryProgress_statusMessage];
  *v13 = 0;
  v13[1] = 0;
  v35 = v13;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  sub_22452EAF0();
  v32 = v5;
  v15 = v34;
  sub_2246287F8();
  if (v15)
  {
    v16 = v36;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);

    type metadata accessor for TrajectoryProgress();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v30;
    v18 = v31;
    v34 = v12;
    LOBYTE(v41) = 0;
    sub_224628548();
    *&v2[v17] = v19;
    v40 = 1;
    sub_224534E68(&qword_27D0C8DB8, v20, type metadata accessor for TrajectoryPoint);
    sub_224628578();
    v21 = v36;
    v22 = *&v2[v38];
    *&v2[v38] = v41;

    v40 = 2;
    sub_224628578();
    v23 = *&v2[v21];
    *&v2[v21] = v41;

    v40 = 3;
    sub_224628578();
    v24 = *&v2[v11];
    *&v2[v11] = v41;

    v40 = 4;
    sub_22452EB98();
    sub_224628578();
    v2[v34] = v41;
    LOBYTE(v41) = 5;
    v25 = sub_2246284E8();
    v27 = v35;
    *v35 = v25;
    v27[1] = v28;

    v29 = type metadata accessor for TrajectoryProgress();
    v39.receiver = v2;
    v39.super_class = v29;
    v2 = objc_msgSendSuper2(&v39, sel_init);
    (*(v18 + 8))(v32, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  return v2;
}