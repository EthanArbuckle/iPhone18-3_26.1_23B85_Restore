uint64_t sub_2277CEBCC(uint64_t a1)
{
  GlanceTypeProtobuf = type metadata accessor for FirstGlanceTypeProtobuf(0);
  v5 = *(*(GlanceTypeProtobuf - 8) + 64);
  MEMORY[0x28223BE20](GlanceTypeProtobuf);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2277CF4F8(&qword_27D7CF198, type metadata accessor for FirstGlanceType);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_2277CF4F8(&qword_27D7CEE40, type metadata accessor for FirstGlanceTypeProtobuf);
    v1 = sub_2277E2244();
    sub_2277CF5A8(v7, type metadata accessor for FirstGlanceTypeProtobuf);
  }

  return v1;
}

__int128 *sub_2277CED4C(uint64_t a1)
{
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  v5 = *(*(GlanceAchievementInfoProtobuf - 8) + 64);
  MEMORY[0x28223BE20](GlanceAchievementInfoProtobuf);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = *(v1 + 32);
  v14 = *v1;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = sub_2277CEEBC();
  v12 = &v14;
  (*(v11 + 32))(a1, v11);
  if (!v2)
  {
    sub_2277CF4F8(&qword_27D7CEED0, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
    v12 = sub_2277E2244();
    sub_2277CF5A8(v7, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
  }

  return v12;
}

unint64_t sub_2277CEEBC()
{
  result = qword_27D7CF190;
  if (!qword_27D7CF190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF190);
  }

  return result;
}

unint64_t sub_2277CEF10()
{
  result = qword_27D7CF1A0;
  if (!qword_27D7CF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF1A0);
  }

  return result;
}

uint64_t (*sub_2277CEF64(uint64_t a1, unint64_t a2))()
{
  v3 = v2;
  v6 = sub_2277E2124();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for WalkSuggestionProtobuf();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  if (a2 >> 60 == 15)
  {
    sub_227791024();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    return v3;
  }

  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_2277905C0(a1, a2);
  sub_2277E2114();
  sub_2277CF4F8(&qword_27D7CF1A8, type metadata accessor for WalkSuggestionProtobuf);
  sub_2277E2234();
  if (v2)
  {
LABEL_8:
    sub_2277945BC(a1, a2);
    return v3;
  }

  sub_2277CF540(v14, v12, type metadata accessor for WalkSuggestionProtobuf);
  if (v12[8] != 1)
  {
    sub_227791024();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
    v3 = type metadata accessor for WalkSuggestionProtobuf;
    sub_2277CF5A8(v12, type metadata accessor for WalkSuggestionProtobuf);
    sub_2277CF5A8(v14, type metadata accessor for WalkSuggestionProtobuf);
    goto LABEL_8;
  }

  if (*v12)
  {
    v3 = *(v12 + 3);
    sub_2277CF5A8(v12, type metadata accessor for WalkSuggestionProtobuf);
  }

  else
  {
    sub_2277CF5A8(v12, type metadata accessor for WalkSuggestionProtobuf);
    v3 = 0;
  }

  sub_2277CF5A8(v14, type metadata accessor for WalkSuggestionProtobuf);
  sub_2277945BC(a1, a2);
  return v3;
}

unint64_t sub_2277CF244()
{
  result = qword_27D7CF1B0;
  if (!qword_27D7CF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF1B0);
  }

  return result;
}

unint64_t sub_2277CF298()
{
  result = qword_27D7CF1B8;
  if (!qword_27D7CF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF1B8);
  }

  return result;
}

unint64_t sub_2277CF2EC()
{
  result = qword_27D7CF1C0;
  if (!qword_27D7CF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF1C0);
  }

  return result;
}

unint64_t sub_2277CF340()
{
  result = qword_27D7CF1C8;
  if (!qword_27D7CF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF1C8);
  }

  return result;
}

unint64_t sub_2277CF394()
{
  result = qword_27D7CF1D0;
  if (!qword_27D7CF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF1D0);
  }

  return result;
}

uint64_t sub_2277CF3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2277CF450()
{
  result = qword_27D7CF1D8;
  if (!qword_27D7CF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF1D8);
  }

  return result;
}

unint64_t sub_2277CF4A4()
{
  result = qword_27D7CF1E0;
  if (!qword_27D7CF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF1E0);
  }

  return result;
}

uint64_t sub_2277CF4F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2277CF540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2277CF5A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2277CF608()
{
  result = qword_27D7CF1E8;
  if (!qword_27D7CF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF1E8);
  }

  return result;
}

uint64_t WeeklySummaryInfo.init(activitySummaries:dateInterval:workouts:wheelchairUse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for WeeklySummaryInfo();
  v10 = v9[5];
  v11 = sub_2277E1E84();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  *&a5[v9[6]] = a3;
  *&a5[v9[7]] = a4;
  return result;
}

uint64_t WeeklySummaryInfo.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WeeklySummaryInfo() + 20);
  v4 = sub_2277E1E84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WeeklySummaryInfo.workouts.getter()
{
  v1 = *(v0 + *(type metadata accessor for WeeklySummaryInfo() + 24));
}

uint64_t WeeklySummaryInfo.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_22778E710(a1, *v1);
  v4 = type metadata accessor for WeeklySummaryInfo();
  v5 = v4[5];
  sub_2277E1E84();
  sub_2277CFCDC(&qword_27D7CE9A0, MEMORY[0x277CC88A8]);
  sub_2277E23F4();
  sub_22778E710(a1, *(v2 + v4[6]));
  return MEMORY[0x22AA9BBC0](*(v2 + v4[7]));
}

uint64_t WeeklySummaryInfo.hashValue.getter()
{
  v1 = v0;
  sub_2277E2A04();
  sub_22778E710(v5, *v0);
  v2 = type metadata accessor for WeeklySummaryInfo();
  v3 = v2[5];
  sub_2277E1E84();
  sub_2277CFCDC(&qword_27D7CE9A0, MEMORY[0x277CC88A8]);
  sub_2277E23F4();
  sub_22778E710(v5, *(v1 + v2[6]));
  MEMORY[0x22AA9BBC0](*(v1 + v2[7]));
  return sub_2277E2A44();
}

uint64_t sub_2277CF96C(int *a1)
{
  v3 = v1;
  sub_2277E2A04();
  sub_22778E710(v6, *v1);
  v4 = a1[5];
  sub_2277E1E84();
  sub_2277CFCDC(&qword_27D7CE9A0, MEMORY[0x277CC88A8]);
  sub_2277E23F4();
  sub_22778E710(v6, *(v3 + a1[6]));
  MEMORY[0x22AA9BBC0](*(v3 + a1[7]));
  return sub_2277E2A44();
}

uint64_t sub_2277CFA38(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_22778E710(a1, *v2);
  v6 = a2[5];
  sub_2277E1E84();
  sub_2277CFCDC(&qword_27D7CE9A0, MEMORY[0x277CC88A8]);
  sub_2277E23F4();
  sub_22778E710(a1, *(v4 + a2[6]));
  return MEMORY[0x22AA9BBC0](*(v4 + a2[7]));
}

uint64_t sub_2277CFAF0(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_2277E2A04();
  sub_22778E710(v7, *v2);
  v5 = a2[5];
  sub_2277E1E84();
  sub_2277CFCDC(&qword_27D7CE9A0, MEMORY[0x277CC88A8]);
  sub_2277E23F4();
  sub_22778E710(v7, *(v4 + a2[6]));
  MEMORY[0x22AA9BBC0](*(v4 + a2[7]));
  return sub_2277E2A44();
}

BOOL _s15FitnessCoaching17WeeklySummaryInfoV2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t *a2)
{
  if (sub_2277D7210(*a1, *a2) & 1) != 0 && (v4 = type metadata accessor for WeeklySummaryInfo(), v5 = v4[5], (sub_2277E1E34()) && (sub_2277D7224(*(a1 + v4[6]), *(a2 + v4[6])))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for WeeklySummaryInfo()
{
  result = qword_2813BCA98;
  if (!qword_2813BCA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2277CFCDC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2277CFD4C()
{
  sub_2277CFE30(319, &qword_2813BC578, &qword_2813BC548, 0x277CCCFB0);
  if (v0 <= 0x3F)
  {
    sub_2277E1E84();
    if (v1 <= 0x3F)
    {
      sub_2277CFE30(319, &qword_2813BC570, &qword_2813BC500, 0x277CCDBE8);
      if (v2 <= 0x3F)
      {
        type metadata accessor for HKWheelchairUse(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2277CFE30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_22778E6C8(255, a3, a4);
    v5 = sub_2277E25A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2277CFE88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id XPCListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *XPCListener.init()()
{
  v0 = objc_allocWithZone(type metadata accessor for XPCListener());
  v1 = XPCListener.init(machServiceName:)();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

char *XPCListener.init(machServiceName:)()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v2 = sub_2277E2414();

  v3 = [v1 initWithMachServiceName_];

  *&v0[OBJC_IVAR____TtC15FitnessCoaching11XPCListener_listener] = v3;
  *&v0[OBJC_IVAR____TtC15FitnessCoaching11XPCListener_requiredEntitlements] = &unk_283AE39E8;
  type metadata accessor for TransportDispatchService();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = MEMORY[0x277D84F98];
  *(v4 + 112) = MEMORY[0x277D84F98];
  *(v4 + 120) = v5;
  *&v0[OBJC_IVAR____TtC15FitnessCoaching11XPCListener_transportDispatchService] = v4;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for XPCListener();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  [*&v6[OBJC_IVAR____TtC15FitnessCoaching11XPCListener_listener] setDelegate_];
  return v6;
}

id XPCListener.__deallocating_deinit()
{
  v1 = v0;
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2374();
  __swift_project_value_buffer(v2, qword_2813BC698);
  v3._countAndFlagsBits = 0x6164696C61766E69;
  v3._object = 0xEC00000029286574;
  v4._object = 0x80000002277EA0E0;
  v4._countAndFlagsBits = 0xD00000000000005BLL;
  Logger.trace(file:function:)(v4, v3);
  v5 = OBJC_IVAR____TtC15FitnessCoaching11XPCListener_listener;
  [*&v1[OBJC_IVAR____TtC15FitnessCoaching11XPCListener_listener] setDelegate_];
  [*&v1[v5] invalidate];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for XPCListener();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_2277D039C()
{
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v1 = sub_2277E2374();
  __swift_project_value_buffer(v1, qword_2813BC698);
  v2._countAndFlagsBits = 0x6574617669746361;
  v3._object = 0x80000002277EA0E0;
  v3._countAndFlagsBits = 0xD00000000000005BLL;
  v2._object = 0xEA00000000002928;
  Logger.trace(file:function:)(v3, v2);
  v4 = *(v0 + OBJC_IVAR____TtC15FitnessCoaching11XPCListener_listener);

  return [v4 resume];
}

id sub_2277D045C()
{
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v1 = sub_2277E2374();
  __swift_project_value_buffer(v1, qword_2813BC698);
  v2._countAndFlagsBits = 0x6164696C61766E69;
  v2._object = 0xEC00000029286574;
  v3._object = 0x80000002277EA0E0;
  v3._countAndFlagsBits = 0xD00000000000005BLL;
  Logger.trace(file:function:)(v3, v2);
  v4 = *(v0 + OBJC_IVAR____TtC15FitnessCoaching11XPCListener_listener);
  [v4 setDelegate_];

  return [v4 invalidate];
}

id sub_2277D0538(void *a1)
{
  v2 = v1;
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v4 = sub_2277E2374();
  __swift_project_value_buffer(v4, qword_2813BC698);
  v5 = a1;
  v6 = sub_2277E2354();
  v7 = sub_2277E2714();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136315394;
    v11._countAndFlagsBits = 0xD00000000000005BLL;
    v11._object = 0x80000002277EA0E0;
    v12._object = 0x80000002277EA2B0;
    v12._countAndFlagsBits = 0xD000000000000014;
    v13 = Logger.path(file:function:)(v11, v12);
    v14 = sub_22779A830(v13._countAndFlagsBits, v13._object, &v26);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v15 = v5;
    _os_log_impl(&dword_227786000, v6, v7, "%s Accepting new connection: %@", v8, 0x16u);
    sub_22778CE70(v9, &qword_27D7CECA0, &qword_2277E52A8);
    MEMORY[0x22AA9C370](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9C370](v10, -1, -1);
    MEMORY[0x22AA9C370](v8, -1, -1);
  }

  v16 = objc_opt_self();
  v17 = [v16 interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  v18 = [v16 interfaceWithProtocol_];
  [v5 setExportedInterface_];

  [v5 setExportedObject_];
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  v30 = sub_2277D277C;
  v31 = v19;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2277CFE88;
  v29 = &block_descriptor_4;
  v20 = _Block_copy(&v26);
  v21 = v5;

  [v21 setInterruptionHandler_];
  _Block_release(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v30 = sub_2277D27B8;
  v31 = v22;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2277CFE88;
  v29 = &block_descriptor_52;
  v23 = _Block_copy(&v26);
  v24 = v21;

  [v24 setInvalidationHandler_];
  _Block_release(v23);
  return [v24 resume];
}

void sub_2277D090C(void *a1, const char *a2)
{
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v4 = sub_2277E2374();
  __swift_project_value_buffer(v4, qword_2813BC698);
  v5 = a1;
  oslog = sub_2277E2354();
  v6 = sub_2277E26F4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = [v5 serviceName];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2277E2434();
      v13 = v12;
    }

    else
    {
      v13 = 0xEB00000000646569;
      v11 = 0x6669636570736E75;
    }

    v14 = sub_22779A830(v11, v13, &v16);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_227786000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9C370](v8, -1, -1);
    MEMORY[0x22AA9C370](v7, -1, -1);
  }
}

Swift::Bool __swiftcall XPCListener.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v4 = sub_2277D1F78(shouldAcceptNewConnection.super.isa, *(v2 + OBJC_IVAR____TtC15FitnessCoaching11XPCListener_requiredEntitlements));
  if (v4)
  {
    sub_2277D0538(shouldAcceptNewConnection.super.isa);
  }

  return v4 & 1;
}

uint64_t XPCListener.transportMessage(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2277D0BA4, 0, 0);
}

uint64_t sub_2277D0BA4()
{
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_2277E2374();
  __swift_project_value_buffer(v2, qword_2813BC698);
  v3._countAndFlagsBits = 0xD00000000000005BLL;
  v3._object = 0x80000002277EA0E0;
  v4._object = 0x80000002277EA140;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC15FitnessCoaching11XPCListener_transportDispatchService);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_2277D0CD0;
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_2277A87E4(v9, v7, v8);
}

uint64_t sub_2277D0CD0()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2277D0F50(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;
    v8 = a4;
    v9 = sub_2277E1F34();
    v11 = v10;
  }

  else
  {
    v12 = a4;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v4[5] = v9;
  v4[6] = v11;

  return MEMORY[0x2822009F8](sub_2277D1008, 0, 0);
}

uint64_t sub_2277D1008()
{
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2277E2374();
  __swift_project_value_buffer(v2, qword_2813BC698);
  v3._countAndFlagsBits = 0xD00000000000005BLL;
  v3._object = 0x80000002277EA0E0;
  v4._object = 0x80000002277EA140;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC15FitnessCoaching11XPCListener_transportDispatchService);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2277D1134;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[2];

  return sub_2277A87E4(v9, v7, v8);
}

uint64_t sub_2277D1134()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2277D12A8, 0, 0);
  }

  else
  {
    v5 = *(v3 + 40);
    v4 = *(v3 + 48);
    v6 = *(v3 + 32);

    sub_2277945BC(v5, v4);
    (*(v6 + 16))(v6, 0);
    _Block_release(*(v3 + 32));
    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t sub_2277D12A8()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);

  sub_2277945BC(v3, v2);
  v5 = sub_2277E1F04();

  (*(v4 + 16))(v4, v5);
  _Block_release(*(v0 + 32));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t XPCListener.transportRequest(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2277D137C, 0, 0);
}

uint64_t sub_2277D137C()
{
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_2277E2374();
  __swift_project_value_buffer(v2, qword_2813BC698);
  v3._countAndFlagsBits = 0xD00000000000005BLL;
  v3._object = 0x80000002277EA0E0;
  v4._object = 0x80000002277EA160;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC15FitnessCoaching11XPCListener_transportDispatchService);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_2277D14A8;
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_2277A8ACC(v9, v7, v8);
}

uint64_t sub_2277D14A8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 48);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2277D1744(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;
    v8 = a4;
    v9 = sub_2277E1F34();
    v11 = v10;
  }

  else
  {
    v12 = a4;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v4[5] = v9;
  v4[6] = v11;

  return MEMORY[0x2822009F8](sub_2277D17FC, 0, 0);
}

uint64_t sub_2277D17FC()
{
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2277E2374();
  __swift_project_value_buffer(v2, qword_2813BC698);
  v3._countAndFlagsBits = 0xD00000000000005BLL;
  v3._object = 0x80000002277EA0E0;
  v4._object = 0x80000002277EA160;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC15FitnessCoaching11XPCListener_transportDispatchService);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2277D1928;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[2];

  return sub_2277A8ACC(v9, v7, v8);
}

uint64_t sub_2277D1928(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 56);
  v7 = *v3;
  *(v7 + 64) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_2277D1AD8, 0, 0);
  }

  else
  {
    v9 = *(v7 + 40);
    v8 = *(v7 + 48);

    sub_2277945BC(v9, v8);
    v10 = sub_2277E1F24();
    sub_22778E130(a1, a2);
    v11 = *(v7 + 32);
    (v11)[2](v11, v10, 0);

    _Block_release(v11);
    v12 = *(v7 + 8);

    return v12();
  }
}

uint64_t sub_2277D1AD8()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  sub_2277945BC(v3, v2);
  v4 = sub_2277E1F04();

  v5 = *(v0 + 32);
  (v5)[2](v5, 0, v4);

  _Block_release(v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2277D1BA4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_22779696C;

  return v8();
}

uint64_t sub_2277D1C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7CF280, &qword_2277E47B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_227796CF8(a3, v25 - v11);
  v13 = sub_2277E2624();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_22778CE70(v12, &unk_27D7CF280, &qword_2277E47B0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2277E2614();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2277E25C4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2277E2464() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_22778CE70(a3, &unk_27D7CF280, &qword_2277E47B0);

    return v23;
  }

LABEL_8:
  sub_22778CE70(a3, &unk_27D7CF280, &qword_2277E47B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2277D1F78(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  for (i = (a2 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;

    v7 = sub_2277E2414();
    v8 = [a1 valueForEntitlement_];

    if (v8)
    {
      sub_2277E27B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19[0] = v17;
    v19[1] = v18;
    if (!*(&v18 + 1))
    {
      break;
    }

    if ((swift_dynamicCast() & 1) == 0 || (v16 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  sub_22778CE70(v19, &unk_27D7CF290, &qword_2277E4A68);
LABEL_12:
  if (qword_2813BC690 != -1)
  {
    swift_once();
  }

  v10 = sub_2277E2374();
  __swift_project_value_buffer(v10, qword_2813BC698);

  v11 = sub_2277E2354();
  v12 = sub_2277E26F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v19[0] = v14;
    *v13 = 141558274;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    v15 = sub_22779A830(v6, v5, v19);

    *(v13 + 14) = v15;
    _os_log_impl(&dword_227786000, v11, v12, "Rejecting connection missing entitlement: %{mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA9C370](v14, -1, -1);
    MEMORY[0x22AA9C370](v13, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2277D2278()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2277AA94C;

  return sub_2277D1744(v2, v3, v5, v4);
}

uint64_t sub_2277D2338()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2277AA94C;

  return sub_2277A7178(v2, v3, v5);
}

uint64_t sub_2277D23F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2277AA94C;

  return sub_2277D1BA4(a1, v4, v5, v7);
}

uint64_t sub_2277D24C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2277AA94C;

  return sub_2277BBCE0(a1, v5);
}

uint64_t sub_2277D257C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22779696C;

  return sub_2277BBCE0(a1, v5);
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2277D267C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22779696C;

  return sub_2277D0F50(v2, v3, v5, v4);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t WalkSuggestion.protobuf()()
{
  type metadata accessor for WalkSuggestionProtobuf();
  sub_2277D2A0C(&qword_27D7CF1A8);
  return sub_2277E2274();
}

uint64_t WalkSuggestion.init(_:)(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    if (*a1)
    {
      v1 = *(a1 + 12);
      sub_2277D2948(a1);
    }

    else
    {
      sub_2277D2948(a1);
      return 0;
    }
  }

  else
  {
    v1 = a1;
    sub_227791024();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
    sub_2277D2948(v1);
  }

  return v1;
}

uint64_t sub_2277D2948(uint64_t a1)
{
  v2 = type metadata accessor for WalkSuggestionProtobuf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2277D2A0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WalkSuggestionProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2277D2A50()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  type metadata accessor for WalkSuggestionProtobuf();
  sub_2277D2A0C(&qword_27D7CF1A8);
  return sub_2277E2274();
}

uint64_t sub_2277D2AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    if (*a1)
    {
      v4 = *(a1 + 12);
      result = sub_2277D2948(a1);
    }

    else
    {
      result = sub_2277D2948(a1);
      v4 = 0;
    }

    *a2 = v4;
    *(a2 + 8) = v3 == 0;
  }

  else
  {
    sub_227791024();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
    return sub_2277D2948(a1);
  }

  return result;
}

uint64_t sub_2277D2B9C(uint64_t result)
{
  if (*(v1 + 24) == 1)
  {
    *result = 0;
    *(result + 8) = 1;
    return result;
  }

  v2 = *(v1 + 16);
  *result = 1;
  *(result + 8) = 1;
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    *(result + 12) = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  v3 = a1 + *(GlanceWorkoutSummationTypeProtobuf + 20);
  sub_2277E20F4();
  v4 = *(GlanceWorkoutSummationTypeProtobuf + 24);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v6 = *(*(GlanceWorkoutSummationProtobuf - 8) + 56);

  return v6(a1 + v4, 1, 1, GlanceWorkoutSummationProtobuf);
}

uint64_t type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf()
{
  result = qword_27D7CF320;
  if (!qword_27D7CF320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.summation.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf() + 24);
  sub_22778CE70(v1 + v3, &qword_27D7CEF70, &unk_2277E74F0);
  sub_2277B96FC(a1, v1 + v3);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v5 = *(*(GlanceWorkoutSummationProtobuf - 8) + 56);

  return v5(v1 + v3, 0, 1, GlanceWorkoutSummationProtobuf);
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.summation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  sub_2277B9624(v1 + *(GlanceWorkoutSummationTypeProtobuf + 24), v6);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v9 = *(*(GlanceWorkoutSummationProtobuf - 8) + 48);
  if (v9(v6, 1, GlanceWorkoutSummationProtobuf) != 1)
  {
    return sub_2277B96FC(v6, a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v10 = a1 + *(GlanceWorkoutSummationProtobuf + 28);
  sub_2277E20F4();
  v11 = *(GlanceWorkoutSummationProtobuf + 32);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  (*(*(GlanceModalityProtobuf - 8) + 56))(a1 + v11, 1, 1, GlanceModalityProtobuf);
  result = (v9)(v6, 1, GlanceWorkoutSummationProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v6, &qword_27D7CEF70, &unk_2277E74F0);
  }

  return result;
}

void FirstGlanceWorkoutSummationTypeProtobuf.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_2277D2F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  sub_2277B9624(a1 + *(GlanceWorkoutSummationTypeProtobuf + 24), v7);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v10 = *(*(GlanceWorkoutSummationProtobuf - 8) + 48);
  if (v10(v7, 1, GlanceWorkoutSummationProtobuf) != 1)
  {
    return sub_2277B96FC(v7, a2);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v11 = a2 + *(GlanceWorkoutSummationProtobuf + 28);
  sub_2277E20F4();
  v12 = *(GlanceWorkoutSummationProtobuf + 32);
  GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
  (*(*(GlanceModalityProtobuf - 8) + 56))(a2 + v12, 1, 1, GlanceModalityProtobuf);
  result = (v10)(v7, 1, GlanceWorkoutSummationProtobuf);
  if (result != 1)
  {
    return sub_22778CE70(v7, &qword_27D7CEF70, &unk_2277E74F0);
  }

  return result;
}

uint64_t sub_2277D30D4(uint64_t a1, uint64_t a2)
{
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v5 = *(GlanceWorkoutSummationProtobuf - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](GlanceWorkoutSummationProtobuf);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2277D3530(a1, v8);
  v9 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf() + 24);
  sub_22778CE70(a2 + v9, &qword_27D7CEF70, &unk_2277E74F0);
  sub_2277B96FC(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, GlanceWorkoutSummationProtobuf);
}

void (*FirstGlanceWorkoutSummationTypeProtobuf.summation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v5[2] = GlanceWorkoutSummationProtobuf;
  v10 = *(GlanceWorkoutSummationProtobuf - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf() + 24);
  *(v5 + 12) = v15;
  sub_2277B9624(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, GlanceWorkoutSummationProtobuf) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    v17 = v14 + *(GlanceWorkoutSummationProtobuf + 28);
    sub_2277E20F4();
    v18 = *(GlanceWorkoutSummationProtobuf + 32);
    GlanceModalityProtobuf = type metadata accessor for FirstGlanceModalityProtobuf();
    (*(*(GlanceModalityProtobuf - 8) + 56))(v14 + v18, 1, 1, GlanceModalityProtobuf);
    if (v16(v8, 1, GlanceWorkoutSummationProtobuf) != 1)
    {
      sub_22778CE70(v8, &qword_27D7CEF70, &unk_2277E74F0);
    }
  }

  else
  {
    sub_2277B96FC(v8, v14);
  }

  return sub_2277D3418;
}

void sub_2277D3418(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_2277D3530((*a1)[5], v4);
    sub_22778CE70(v9 + v3, &qword_27D7CEF70, &unk_2277E74F0);
    sub_2277B96FC(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_2277B4F6C(v5);
  }

  else
  {
    sub_22778CE70(v9 + v3, &qword_27D7CEF70, &unk_2277E74F0);
    sub_2277B96FC(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_2277D3530(uint64_t a1, uint64_t a2)
{
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  (*(*(GlanceWorkoutSummationProtobuf - 8) + 16))(a2, a1, GlanceWorkoutSummationProtobuf);
  return a2;
}

BOOL FirstGlanceWorkoutSummationTypeProtobuf.hasSummation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  sub_2277B9624(v0 + *(GlanceWorkoutSummationTypeProtobuf + 24), v4);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v7 = (*(*(GlanceWorkoutSummationProtobuf - 8) + 48))(v4, 1, GlanceWorkoutSummationProtobuf) != 1;
  sub_22778CE70(v4, &qword_27D7CEF70, &unk_2277E74F0);
  return v7;
}

Swift::Void __swiftcall FirstGlanceWorkoutSummationTypeProtobuf.clearSummation()()
{
  v1 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf() + 24);
  sub_22778CE70(v0 + v1, &qword_27D7CEF70, &unk_2277E74F0);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v3 = *(*(GlanceWorkoutSummationProtobuf - 8) + 56);

  v3(v0 + v1, 1, 1, GlanceWorkoutSummationProtobuf);
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf() + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf() + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t FirstGlanceWorkoutSummationTypeProtobuf.SummationType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2277D387C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277D3FE4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t static FirstGlanceWorkoutSummationTypeProtobuf.SummationType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27D7CF2A8 = a1;
}

uint64_t sub_2277D39B8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27D7CF2A8;
}

uint64_t sub_2277D3A24()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF2B0);
  __swift_project_value_buffer(v0, qword_27D7CF2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E4B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "summation";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_2277E2334();
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.decodeMessage<A>(decoder:)()
{
  result = sub_2277E2164();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_2277D3FE4();
        sub_2277E2184();
      }

      else if (result == 2)
      {
        sub_2277D3CD0();
      }

      result = sub_2277E2164();
    }
  }

  return result;
}

uint64_t sub_2277D3CD0()
{
  v0 = *(type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf() + 24);
  type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  sub_2277D4C64(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);
  return sub_2277E2214();
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v11 = *(GlanceWorkoutSummationProtobuf - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](GlanceWorkoutSummationProtobuf);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    v15 = *(v2 + 8);
    v19 = *v2;
    v20 = v15;
    sub_2277D3FE4();
    result = sub_2277E22A4();
    if (v3)
    {
      return result;
    }

    v21 = a2;
    v4 = 0;
  }

  else
  {
    v21 = a2;
  }

  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  sub_2277B9624(v2 + *(GlanceWorkoutSummationTypeProtobuf + 24), v9);
  if ((*(v11 + 48))(v9, 1, GlanceWorkoutSummationProtobuf) == 1)
  {
    sub_22778CE70(v9, &qword_27D7CEF70, &unk_2277E74F0);
  }

  else
  {
    sub_2277B96FC(v9, v14);
    sub_2277D4C64(&qword_27D7CE948, type metadata accessor for FirstGlanceWorkoutSummationProtobuf);
    sub_2277E2314();
    result = sub_2277B4F6C(v14);
    if (v4)
    {
      return result;
    }
  }

  v18 = v2 + *(GlanceWorkoutSummationTypeProtobuf + 20);
  return sub_2277E20E4();
}

unint64_t sub_2277D3FE4()
{
  result = qword_27D7CF2E0;
  if (!qword_27D7CF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF2E0);
  }

  return result;
}

uint64_t FirstGlanceWorkoutSummationTypeProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  sub_2277D4C64(&qword_27D7CF2E8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_2277D40C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(a1 + 20);
  sub_2277E20F4();
  v5 = *(a1 + 24);
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v7 = *(*(GlanceWorkoutSummationProtobuf - 8) + 56);

  return v7(a2 + v5, 1, 1, GlanceWorkoutSummationProtobuf);
}

uint64_t sub_2277D419C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277D4C64(&qword_27D7CF338, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2277D423C(uint64_t a1)
{
  v2 = sub_2277D4C64(&qword_27D7CEED8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2277D42A8()
{
  sub_2277D4C64(&qword_27D7CEED8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);

  return sub_2277E2264();
}

uint64_t sub_2277D4328()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF2C8);
  __swift_project_value_buffer(v0, qword_27D7CF2C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E3E50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "count";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "distance";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "aheadDistance";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_2277E2334();
}

uint64_t _s15FitnessCoaching39FirstGlanceWorkoutSummationTypeProtobufV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
  v5 = *(GlanceWorkoutSummationProtobuf - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](GlanceWorkoutSummationProtobuf);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF70, &unk_2277E74F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF340, &unk_2277E7820);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v18)
    {
      if (v18 == 1)
      {
        if (v17 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v17 != 2)
      {
        goto LABEL_17;
      }
    }

    else if (v17)
    {
      goto LABEL_17;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_17;
  }

  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  v20 = *(GlanceWorkoutSummationTypeProtobuf + 24);
  v21 = *(v13 + 48);
  sub_2277B9624(a1 + v20, v16);
  sub_2277B9624(a2 + v20, &v16[v21]);
  v22 = *(v5 + 48);
  if (v22(v16, 1, GlanceWorkoutSummationProtobuf) == 1)
  {
    if (v22(&v16[v21], 1, GlanceWorkoutSummationProtobuf) == 1)
    {
      sub_22778CE70(v16, &qword_27D7CEF70, &unk_2277E74F0);
LABEL_20:
      v26 = *(GlanceWorkoutSummationTypeProtobuf + 20);
      sub_2277E2104();
      sub_2277D4C64(&qword_27D7CE980, MEMORY[0x277D216C8]);
      v23 = sub_2277E2404();
      return v23 & 1;
    }

    goto LABEL_16;
  }

  sub_2277B9624(v16, v12);
  if (v22(&v16[v21], 1, GlanceWorkoutSummationProtobuf) == 1)
  {
    sub_2277B4F6C(v12);
LABEL_16:
    sub_22778CE70(v16, &qword_27D7CF340, &unk_2277E7820);
    goto LABEL_17;
  }

  sub_2277B96FC(&v16[v21], v8);
  v25 = static FirstGlanceWorkoutSummationProtobuf.== infix(_:_:)(v12, v8);
  sub_2277B4F6C(v8);
  sub_2277B4F6C(v12);
  sub_22778CE70(v16, &qword_27D7CEF70, &unk_2277E74F0);
  if (v25)
  {
    goto LABEL_20;
  }

LABEL_17:
  v23 = 0;
  return v23 & 1;
}

unint64_t sub_2277D48B4()
{
  result = qword_27D7CF2F0;
  if (!qword_27D7CF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF2F0);
  }

  return result;
}

unint64_t sub_2277D490C()
{
  result = qword_27D7CF2F8;
  if (!qword_27D7CF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF2F8);
  }

  return result;
}

unint64_t sub_2277D4964()
{
  result = qword_27D7CF300;
  if (!qword_27D7CF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF300);
  }

  return result;
}

unint64_t sub_2277D49BC()
{
  result = qword_27D7CF308;
  if (!qword_27D7CF308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CF310, &qword_2277E7610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF308);
  }

  return result;
}

void sub_2277D4B68()
{
  sub_2277E2104();
  if (v0 <= 0x3F)
  {
    sub_2277D4BFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2277D4BFC()
{
  if (!qword_27D7CF330)
  {
    type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
    v0 = sub_2277E2774();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7CF330);
    }
  }
}

uint64_t sub_2277D4C64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FitnessPlusPlanNotificationContent.init(notificationSchedule:type:hasCompletedPlanTodayAndHasPlanTomorrow:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 9) = a3;
  return result;
}

uint64_t FitnessPlusPlanNotificationContent.hash(into:)()
{
  v1 = sub_2277E20D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  LODWORD(v4) = *(v0 + 9);
  v14[2] = *(v0 + 8);
  v14[3] = v4;
  MEMORY[0x22AA9BBC0](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v1);
      sub_2277D5060();
      sub_2277E23F4();
      (*(v8 - 8))(v5, v1);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  sub_2277E2484();

  return sub_2277E2A24();
}

uint64_t FitnessPlusPlanNotificationContent.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  sub_2277E2A04();
  FitnessPlusPlanNotificationContent.hash(into:)();
  return sub_2277E2A44();
}

uint64_t sub_2277D4EDC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  sub_2277E2A04();
  FitnessPlusPlanNotificationContent.hash(into:)();
  return sub_2277E2A44();
}

uint64_t sub_2277D4F3C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  sub_2277E2A04();
  FitnessPlusPlanNotificationContent.hash(into:)();
  return sub_2277E2A44();
}

uint64_t _s15FitnessCoaching0A27PlusPlanNotificationContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  if (sub_2277D74A0(*a1, *a2))
  {
    if (v2)
    {
      v6 = 0x676E696E657665;
    }

    else
    {
      v6 = 0x676E696E726F6DLL;
    }

    if (v4)
    {
      v7 = 0x676E696E657665;
    }

    else
    {
      v7 = 0x676E696E726F6DLL;
    }

    if (v6 == v7)
    {
      swift_bridgeObjectRelease_n();
      return v3 ^ v5 ^ 1u;
    }

    v8 = sub_2277E2984();
    swift_bridgeObjectRelease_n();
    if (v8)
    {
      return v3 ^ v5 ^ 1u;
    }
  }

  return 0;
}

unint64_t sub_2277D5060()
{
  result = qword_27D7CF348;
  if (!qword_27D7CF348)
  {
    sub_2277E20D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF348);
  }

  return result;
}

unint64_t sub_2277D50BC()
{
  result = qword_27D7CF350;
  if (!qword_27D7CF350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF350);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_2277D5124(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_2277D516C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FirstGlanceError.hashValue.getter()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

unint64_t sub_2277D5248()
{
  result = qword_27D7CF358;
  if (!qword_27D7CF358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF358);
  }

  return result;
}

uint64_t static FirstGlanceYesterdayWorkout.== infix(_:_:)(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_2277D5308();
  return sub_2277E2754() & (v3 == v5);
}

unint64_t sub_2277D5308()
{
  result = qword_2813BC508;
  if (!qword_2813BC508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813BC508);
  }

  return result;
}

FitnessCoaching::FirstGlanceYesterdayWorkout __swiftcall FirstGlanceYesterdayWorkout.init(healthWorkout:moveRingPercentage:)(HKWorkout healthWorkout, Swift::Double moveRingPercentage)
{
  *v2 = healthWorkout;
  *(v2 + 8) = moveRingPercentage;
  result.moveRingPercentage = moveRingPercentage;
  result.healthWorkout = healthWorkout;
  return result;
}

uint64_t FirstGlanceYesterdayWorkout.hash(into:)()
{
  v1 = v0[1];
  v2 = *v0;
  sub_2277E2764();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  return MEMORY[0x22AA9BBE0](*&v3);
}

uint64_t FirstGlanceYesterdayWorkout.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2277E2A04();
  sub_2277E2764();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x22AA9BBE0](*&v3);
  return sub_2277E2A44();
}

uint64_t sub_2277D5430()
{
  v1 = v0[1];
  v2 = *v0;
  sub_2277E2764();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  return MEMORY[0x22AA9BBE0](*&v3);
}

uint64_t sub_2277D5480()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2277E2A04();
  sub_2277E2764();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x22AA9BBE0](*&v3);
  return sub_2277E2A44();
}

unint64_t sub_2277D54EC()
{
  result = qword_27D7CF360;
  if (!qword_27D7CF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF360);
  }

  return result;
}

uint64_t sub_2277D5540(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_2277D5308();
  return sub_2277E2754() & (v3 == v5);
}

uint64_t FirstGlanceAchievementInfoProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_2277E4B40;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v1 = a1 + *(type metadata accessor for FirstGlanceAchievementInfoProtobuf() + 28);
  return sub_2277E20F4();
}

uint64_t type metadata accessor for FirstGlanceAchievementInfoProtobuf()
{
  result = qword_27D7CF398;
  if (!qword_27D7CF398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FirstGlanceAchievementInfoProtobuf.achievementData.getter()
{
  v1 = *v0;
  sub_2277905C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t FirstGlanceAchievementInfoProtobuf.achievementData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22778E130(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t FirstGlanceAchievementInfoProtobuf.localizationKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FirstGlanceAchievementInfoProtobuf.localizationKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FirstGlanceAchievementInfoProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FirstGlanceAchievementInfoProtobuf() + 28);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FirstGlanceAchievementInfoProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FirstGlanceAchievementInfoProtobuf() + 28);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2277D58F4()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF368);
  __swift_project_value_buffer(v0, qword_27D7CF368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E3E50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "achievementData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localizationKey";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "shouldSuggestRecovery";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_2277E2334();
}

uint64_t static FirstGlanceAchievementInfoProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE838 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CF368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FirstGlanceAchievementInfoProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_2277E2164();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_2277E2174();
        break;
      case 2:
        sub_2277E21F4();
        break;
      case 1:
        sub_2277E21A4();
        break;
    }
  }

  return result;
}

uint64_t FirstGlanceAchievementInfoProtobuf.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_2277E22C4();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8 = *(v0 + 24);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_2277E22F4(), !v1))
  {
    if (*(v0 + 32) != 1 || (result = sub_2277E2294(), !v1))
    {
      v10 = v0 + *(type metadata accessor for FirstGlanceAchievementInfoProtobuf() + 28);
      return sub_2277E20E4();
    }
  }

  return result;
}

uint64_t FirstGlanceAchievementInfoProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  sub_2277D634C(&qword_27D7CF380, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_2277D5DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_2277E4B40;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  v2 = a2 + *(a1 + 28);
  return sub_2277E20F4();
}

uint64_t sub_2277D5E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277D634C(&qword_27D7CF3A8, type metadata accessor for FirstGlanceAchievementInfoProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2277D5EFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE838 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CF368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2277D5FA4(uint64_t a1)
{
  v2 = sub_2277D634C(&qword_27D7CEED0, type metadata accessor for FirstGlanceAchievementInfoProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2277D6010()
{
  sub_2277D634C(&qword_27D7CEED0, type metadata accessor for FirstGlanceAchievementInfoProtobuf);

  return sub_2277E2264();
}

uint64_t _s15FitnessCoaching34FirstGlanceAchievementInfoProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_227790458(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_2277E2984() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = *(type metadata accessor for FirstGlanceAchievementInfoProtobuf() + 28);
  sub_2277E2104();
  sub_2277D634C(&qword_27D7CE980, MEMORY[0x277D216C8]);
  return sub_2277E2404() & 1;
}

uint64_t sub_2277D62B8()
{
  result = sub_2277E2104();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2277D634C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_2277D6394()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v6];
  v2 = v6[0];
  if (v1)
  {
    v3 = sub_2277E1F34();
  }

  else
  {
    v3 = v2;
    sub_2277E1F14();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t FirstGlanceYesterdayWorkout.protobuf()()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  sub_2277D6750(&qword_27D7CEBA0);
  return sub_2277E2274();
}

uint64_t sub_2277D6510(uint64_t a1, double a2)
{
  result = sub_2277D6394();
  if (!v2)
  {
    v7 = result;
    v8 = v6;
    result = sub_22778E130(*a1, *(a1 + 8));
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = a2;
  }

  return result;
}

uint64_t FirstGlanceYesterdayWorkout.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
  sub_22778E6C8(0, &qword_2813BC500, 0x277CCDBE8);
  v7 = sub_2277E2734();
  if (v2)
  {

LABEL_3:
    sub_227791024();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
    return sub_2277D668C(a1);
  }

  if (!v7)
  {
    goto LABEL_3;
  }

  v10 = a1[2];
  v11 = v7;
  result = sub_2277D668C(a1);
  *a2 = v11;
  a2[1] = v10;
  return result;
}

uint64_t sub_2277D668C(uint64_t a1)
{
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  (*(*(GlanceYesterdayWorkoutProtobuf - 8) + 8))(a1, GlanceYesterdayWorkoutProtobuf);
  return a1;
}

uint64_t sub_2277D6750(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2277D6794()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  sub_2277D6750(&qword_27D7CEBA0);
  return sub_2277E2274();
}

void *sub_2277D6868()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_227789678();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t WorkoutError.hashValue.getter()
{
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](0);
  return sub_2277E2A44();
}

unint64_t sub_2277D692C()
{
  result = qword_27D7CF3B0;
  if (!qword_27D7CF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF3B0);
  }

  return result;
}

uint64_t sub_2277D6990(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2277D69EC(uint64_t a1, uint64_t a2)
{
  GlanceTypeProtobuf = type metadata accessor for FirstGlanceTypeProtobuf(0);
  v5 = *(*(GlanceTypeProtobuf - 8) + 64);
  v6 = MEMORY[0x28223BE20](GlanceTypeProtobuf);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_2277B615C(v14, v11, type metadata accessor for FirstGlanceTypeProtobuf);
      sub_2277B615C(v15, v8, type metadata accessor for FirstGlanceTypeProtobuf);
      v17 = *(GlanceTypeProtobuf + 20);
      v18 = *&v11[v17];
      v19 = *&v8[v17];
      if (v18 != v19)
      {
        v20 = *&v11[v17];

        v21 = sub_2277B11B4(v18, v19);

        if (!v21)
        {
          break;
        }
      }

      sub_2277E2104();
      sub_2277D84A8(&qword_27D7CE980, MEMORY[0x277D216C8]);
      if ((sub_2277E2404() & 1) == 0)
      {
        break;
      }

      sub_2277D84F0(v8, type metadata accessor for FirstGlanceTypeProtobuf);
      sub_2277D84F0(v11, type metadata accessor for FirstGlanceTypeProtobuf);
      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_2277D84F0(v8, type metadata accessor for FirstGlanceTypeProtobuf);
    sub_2277D84F0(v11, type metadata accessor for FirstGlanceTypeProtobuf);
  }

  return 0;
}

uint64_t sub_2277D6C5C(uint64_t a1, uint64_t a2)
{
  GlanceType = type metadata accessor for FirstGlanceType();
  v5 = *(*(GlanceType - 8) + 64);
  v6 = MEMORY[0x28223BE20](GlanceType - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      GlanceTypeO2eeoiySbAC_ACtFZ_0 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_2277B615C(v14, v11, type metadata accessor for FirstGlanceType);
        sub_2277B615C(v15, v8, type metadata accessor for FirstGlanceType);
        GlanceTypeO2eeoiySbAC_ACtFZ_0 = _s15FitnessCoaching15FirstGlanceTypeO2eeoiySbAC_ACtFZ_0(v11, v8);
        sub_2277D84F0(v8, type metadata accessor for FirstGlanceType);
        sub_2277D84F0(v11, type metadata accessor for FirstGlanceType);
        if ((GlanceTypeO2eeoiySbAC_ACtFZ_0 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    GlanceTypeO2eeoiySbAC_ACtFZ_0 = 0;
  }

  return GlanceTypeO2eeoiySbAC_ACtFZ_0 & 1;
}

uint64_t sub_2277D6E04(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            sub_2277905C0(v7, v6);
            sub_2277905C0(v9, v8);
            v22 = sub_2277E1E94();
            if (v22)
            {
              v23 = sub_2277E1EB4();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            sub_2277E1EA4();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          sub_2277905C0(v7, v6);
          sub_2277905C0(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            sub_2277905C0(v7, v6);
            sub_2277905C0(v9, v8);
            v27 = sub_2277E1E94();
            if (v27)
            {
              v28 = sub_2277E1EB4();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            sub_2277E1EA4();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            sub_2277D8278(v24, v25, v26, v34);
            sub_22778E130(v9, v8);
            sub_22778E130(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          sub_2277905C0(v7, v6);
          sub_2277905C0(v9, v8);
        }

        sub_2277D8278(v34, v9, v8, &v33);
        sub_22778E130(v9, v8);
        sub_22778E130(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2277D7238(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_22778E6C8(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x22AA9B9D0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x22AA9B9D0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_2277E2754();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_2277E2754();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_2277E28E4();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_2277E28E4();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2277D74A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277E20D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_2277D84A8(&qword_27D7CF400, MEMORY[0x277D53210]);
    v22 = sub_2277E2404();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t CollectionProtobuf.items.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CollectionProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollectionProtobuf() + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CollectionProtobuf()
{
  result = qword_27D7CF3E0;
  if (!qword_27D7CF3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CollectionProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CollectionProtobuf() + 20);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CollectionProtobuf.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for CollectionProtobuf() + 20);
  return sub_2277E20F4();
}

uint64_t sub_2277D78F0()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF3B8);
  __swift_project_value_buffer(v0, qword_27D7CF3B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E3E40;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "items";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2277E2324();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_2277E2334();
}

uint64_t static CollectionProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE840 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CF3B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t CollectionProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_2277E2164();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2277E2194();
    }
  }

  return result;
}

uint64_t CollectionProtobuf.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_2277E22B4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for CollectionProtobuf() + 20);
    return sub_2277E20E4();
  }

  return result;
}

uint64_t static CollectionProtobuf.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_2277D6E04(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for CollectionProtobuf() + 20);
  sub_2277E2104();
  sub_2277D84A8(&qword_27D7CE980, MEMORY[0x277D216C8]);
  return sub_2277E2404() & 1;
}

uint64_t CollectionProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for CollectionProtobuf();
  sub_2277D84A8(&qword_27D7CF3D0, type metadata accessor for CollectionProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_2277D7D30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return sub_2277E20F4();
}

uint64_t sub_2277D7DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277D84A8(&qword_27D7CF3F8, type metadata accessor for CollectionProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2277D7E24@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7CE840 != -1)
  {
    swift_once();
  }

  v2 = sub_2277E2344();
  v3 = __swift_project_value_buffer(v2, qword_27D7CF3B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2277D7ECC(uint64_t a1)
{
  v2 = sub_2277D84A8(&qword_27D7CEBC8, type metadata accessor for CollectionProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2277D7F38()
{
  sub_2277D84A8(&qword_27D7CEBC8, type metadata accessor for CollectionProtobuf);

  return sub_2277E2264();
}

uint64_t sub_2277D80D4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_2277D6E04(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_2277E2104();
  sub_2277D84A8(&qword_27D7CE980, MEMORY[0x277D216C8]);
  return sub_2277E2404() & 1;
}

void sub_2277D81A4()
{
  sub_2277D8228();
  if (v0 <= 0x3F)
  {
    sub_2277E2104();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2277D8228()
{
  if (!qword_27D7CF3F0)
  {
    v0 = sub_2277E25A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7CF3F0);
    }
  }
}

uint64_t sub_2277D8278@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2277E1E94();
    if (v10)
    {
      v11 = sub_2277E1EB4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2277E1EA4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2277E1E94();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2277E1EB4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2277E1EA4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2277D84A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2277D84F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FirstGlanceWeeklySummary.init(energyBurnTotals:moveGoalAchievedCount:mostRecentMoveGoal:totalBriskMinutes:totalDistance:totalFlightsClimbed:totalMoveValue:totalPushCount:totalStepCount:wheelchairUse:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a8;
  *(a7 + 24) = a9;
  *(a7 + 32) = a10;
  *(a7 + 40) = a3;
  *(a7 + 48) = a11;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  return result;
}

uint64_t FirstGlanceWeeklySummary.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  sub_22778D458(a1, *v1);
  MEMORY[0x22AA9BBC0](v2);
  if (v3 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v3;
  }

  MEMORY[0x22AA9BBE0](*&v11);
  if (v4 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v4;
  }

  MEMORY[0x22AA9BBE0](*&v12);
  if (v5 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v5;
  }

  MEMORY[0x22AA9BBE0](*&v13);
  MEMORY[0x22AA9BBC0](v6);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x22AA9BBE0](*&v14);
  MEMORY[0x22AA9BBC0](v8);
  MEMORY[0x22AA9BBC0](v9);
  return MEMORY[0x22AA9BBC0](v10);
}

uint64_t FirstGlanceWeeklySummary.hashValue.getter()
{
  sub_2277E2A04();
  FirstGlanceWeeklySummary.hash(into:)(v1);
  return sub_2277E2A44();
}

uint64_t sub_2277D86DC()
{
  sub_2277E2A04();
  FirstGlanceWeeklySummary.hash(into:)(v1);
  return sub_2277E2A44();
}

uint64_t sub_2277D8720()
{
  sub_2277E2A04();
  FirstGlanceWeeklySummary.hash(into:)(v1);
  return sub_2277E2A44();
}

BOOL _s15FitnessCoaching24FirstGlanceWeeklySummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v20 = *(a1 + 32);
  v3 = *(a1 + 40);
  v19 = *(a1 + 48);
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a2 + 8);
  v21 = *(a2 + 16);
  v22 = *(a1 + 16);
  v18 = *(a2 + 32);
  v8 = *(a2 + 40);
  v17 = *(a2 + 48);
  v10 = *(a2 + 56);
  v9 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = sub_2277D6990(*a1, *a2);
  result = 0;
  v14.f64[0] = v20;
  v14.f64[1] = v19;
  v15.f64[0] = v18;
  v15.f64[1] = v17;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v22, v21), vceqq_f64(v14, v15)))) & 1) != 0 && v2 == v7 && v3 == v8 && v5 == v10)
  {
    v16 = v6 == v11;
    if (v4 != v9)
    {
      v16 = 0;
    }

    return (v12 & 1) != 0 && v16;
  }

  return result;
}

unint64_t sub_2277D8874()
{
  result = qword_27D7CF408;
  if (!qword_27D7CF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF408);
  }

  return result;
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

uint64_t sub_2277D88E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2277D892C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t FirstGlanceModalityType.hashValue.getter()
{
  v1 = *v0;
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](v1);
  return sub_2277E2A44();
}

unint64_t sub_2277D8A1C()
{
  result = qword_27D7CF410;
  if (!qword_27D7CF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF410);
  }

  return result;
}

uint64_t FirstGlanceType.protobuf()()
{
  type metadata accessor for FirstGlanceTypeProtobuf(0);
  sub_2277DBE44(&qword_27D7CEE40, type metadata accessor for FirstGlanceTypeProtobuf);
  return sub_2277E2274();
}

uint64_t FirstGlanceType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v178 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDC8, &qword_2277E5A20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v173 = &v159 - v5;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  v168 = *(GlanceWorkoutSummationTypeProtobuf - 8);
  v6 = *(v168 + 64);
  MEMORY[0x28223BE20](GlanceWorkoutSummationTypeProtobuf);
  v170 = (&v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDA0, &qword_2277E5A10);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v167 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v166 = &v159 - v12;
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  v176 = *(GlanceYesterdayWorkoutProtobuf - 8);
  *&v177 = GlanceYesterdayWorkoutProtobuf;
  v14 = *(v176 + 64);
  v15 = MEMORY[0x28223BE20](GlanceYesterdayWorkoutProtobuf);
  v172 = (&v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v171 = (&v159 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDF8, &unk_2277E5A30);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v164 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v162 = &v159 - v22;
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  v174 = *(GlanceAchievementInfoProtobuf - 8);
  v23 = *(v174 + 64);
  v24 = MEMORY[0x28223BE20](GlanceAchievementInfoProtobuf);
  v165 = (&v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v163 = (&v159 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDE0, &qword_2277E5A28);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v159 - v29;
  v31 = type metadata accessor for WeeklySummaryInfoProtobuf();
  v161 = *(v31 - 8);
  v32 = *(v161 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v159 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for WeeklySummaryInfo();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v160 = (&v159 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDB8, &qword_2277E5A18);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v159 - v40;
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  v43 = *(GlanceWeeklySummaryProtobuf - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](GlanceWeeklySummaryProtobuf);
  v46 = &v159 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a1 + *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20));
  swift_beginAccess();
  if (*(v47 + 24) == 1)
  {
    v159 = a1;
    switch(*(v47 + 16))
    {
      case 1:
      case 2:
      case 0xCLL:
      case 0xDLL:
        sub_2277DBDE4(v159, type metadata accessor for FirstGlanceTypeProtobuf);
        type metadata accessor for FirstGlanceType();
        return swift_storeEnumTagMultiPayload();
      case 3:
        v87 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
        swift_beginAccess();
        v88 = v162;
        sub_2277AF92C(v47 + v87, v162, &qword_27D7CEDF8, &unk_2277E5A30);
        v89 = *(v174 + 48);
        v90 = GlanceAchievementInfoProtobuf;
        if (v89(v88, 1, GlanceAchievementInfoProtobuf) == 1)
        {
          v91 = v163;
          *v163 = xmmword_2277E4B40;
          *(v91 + 2) = 0;
          *(v91 + 3) = 0xE000000000000000;
          *(v91 + 32) = 0;
          v92 = v91 + *(v90 + 28);
          sub_2277E20F4();
          v93 = v89(v88, 1, v90);
          v94 = v159;
          if (v93 != 1)
          {
            sub_22778CE70(v88, &qword_27D7CEDF8, &unk_2277E5A30);
          }
        }

        else
        {
          v91 = v163;
          sub_2277DBBBC(v88, v163, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
          v94 = v159;
        }

        v123 = *v91;
        v124 = *(v91 + 1);
        v126 = *(v91 + 2);
        v125 = *(v91 + 3);
        v127 = *(v91 + 32);
        sub_2277905C0(*v91, v124);

        sub_2277DBDE4(v91, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
        sub_2277DBDE4(v94, type metadata accessor for FirstGlanceTypeProtobuf);
        v128 = v178;
        *v178 = v123;
        v128[1] = v124;
        v128[2] = v126;
        v128[3] = v125;
        *(v128 + 32) = v127;
        type metadata accessor for FirstGlanceType();
        return swift_storeEnumTagMultiPayload();
      case 4:
        v67 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
        swift_beginAccess();
        v68 = v164;
        sub_2277AF92C(v47 + v67, v164, &qword_27D7CEDF8, &unk_2277E5A30);
        v69 = *(v174 + 48);
        v70 = GlanceAchievementInfoProtobuf;
        if (v69(v68, 1, GlanceAchievementInfoProtobuf) == 1)
        {
          v71 = v165;
          *v165 = xmmword_2277E4B40;
          *(v71 + 2) = 0;
          *(v71 + 3) = 0xE000000000000000;
          *(v71 + 32) = 0;
          v72 = v71 + *(v70 + 28);
          sub_2277E20F4();
          v73 = v69(v68, 1, v70);
          v74 = v159;
          if (v73 != 1)
          {
            sub_22778CE70(v68, &qword_27D7CEDF8, &unk_2277E5A30);
          }
        }

        else
        {
          v71 = v165;
          sub_2277DBBBC(v68, v165, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
          v74 = v159;
        }

        v117 = *v71;
        v118 = *(v71 + 1);
        v119 = *(v71 + 2);
        v120 = *(v71 + 3);
        v121 = *(v71 + 32);
        sub_2277905C0(*v71, v118);

        sub_2277DBDE4(v71, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
        sub_2277DBDE4(v74, type metadata accessor for FirstGlanceTypeProtobuf);
        v122 = v178;
        *v178 = v117;
        v122[1] = v118;
        v122[2] = v119;
        v122[3] = v120;
        *(v122 + 32) = v121;
        type metadata accessor for FirstGlanceType();
        return swift_storeEnumTagMultiPayload();
      case 5:
        v103 = (v47 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
        swift_beginAccess();
        v62 = *v103;
        v63 = v103[1];
        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
        sub_2277905C0(v62, v63);
        v104 = v179;
        v65 = sub_2277E2734();
        v66 = v104;
        if (v104)
        {
          goto LABEL_38;
        }

        a1 = v159;
        if (v65)
        {
          goto LABEL_70;
        }

        goto LABEL_39;
      case 6:
        v105 = (v47 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
        swift_beginAccess();
        v62 = *v105;
        v63 = v105[1];
        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
        sub_2277905C0(v62, v63);
        v106 = v179;
        v65 = sub_2277E2734();
        v66 = v106;
        if (v106)
        {
          goto LABEL_38;
        }

        a1 = v159;
        if (v65)
        {
          goto LABEL_70;
        }

        goto LABEL_39;
      case 7:
        v95 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
        swift_beginAccess();
        v96 = v166;
        sub_2277AF92C(v47 + v95, v166, &qword_27D7CEDA0, &qword_2277E5A10);
        v97 = v177;
        v98 = *(v176 + 48);
        if (v98(v96, 1, v177) == 1)
        {
          v99 = v171;
          *v171 = xmmword_2277E4B40;
          v99[2] = 0;
          v100 = v99 + *(v97 + 24);
          sub_2277E20F4();
          v101 = v98(v96, 1, v97);
          v102 = v179;
          if (v101 != 1)
          {
            sub_22778CE70(v96, &qword_27D7CEDA0, &qword_2277E5A10);
          }
        }

        else
        {
          v99 = v171;
          sub_2277DBBBC(v96, v171, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
          v102 = v179;
        }

        v129 = *v99;
        v130 = v99[1];
        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC500, 0x277CCDBE8);
        v131 = sub_2277E2734();
        v132 = v159;
        if (v102)
        {
          goto LABEL_65;
        }

        if (v131)
        {
          goto LABEL_56;
        }

        goto LABEL_66;
      case 8:
        v110 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
        swift_beginAccess();
        v111 = v167;
        sub_2277AF92C(v47 + v110, v167, &qword_27D7CEDA0, &qword_2277E5A10);
        v112 = v177;
        v113 = *(v176 + 48);
        if (v113(v111, 1, v177) == 1)
        {
          v99 = v172;
          *v172 = xmmword_2277E4B40;
          v99[2] = 0;
          v114 = v99 + *(v112 + 24);
          sub_2277E20F4();
          v115 = v113(v111, 1, v112);
          v102 = v179;
          if (v115 != 1)
          {
            sub_22778CE70(v111, &qword_27D7CEDA0, &qword_2277E5A10);
          }
        }

        else
        {
          v99 = v172;
          sub_2277DBBBC(v111, v172, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
          v102 = v179;
        }

        v148 = *v99;
        v149 = v99[1];
        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC500, 0x277CCDBE8);
        v131 = sub_2277E2734();
        v132 = v159;
        if (v102)
        {
LABEL_65:
        }

        else if (v131)
        {
LABEL_56:
          v133 = v99[2];
          v134 = v131;
          sub_2277DBDE4(v99, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
          sub_2277DBDE4(v132, type metadata accessor for FirstGlanceTypeProtobuf);
          v135 = v178;
          *v178 = v134;
          v135[1] = v133;
          type metadata accessor for FirstGlanceType();
          return swift_storeEnumTagMultiPayload();
        }

LABEL_66:
        sub_227791024();
        swift_allocError();
        *v150 = 3;
        swift_willThrow();
        sub_2277DBDE4(v99, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
        v54 = v132;
        return sub_2277DBDE4(v54, type metadata accessor for FirstGlanceTypeProtobuf);
      case 9:
        v75 = (v47 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
        swift_beginAccess();
        v62 = *v75;
        v63 = v75[1];
        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
        sub_2277905C0(v62, v63);
        v76 = v179;
        v65 = sub_2277E2734();
        v66 = v76;
        if (v76)
        {
          goto LABEL_38;
        }

        a1 = v159;
        if (v65)
        {
          goto LABEL_70;
        }

        goto LABEL_39;
      case 0xALL:
        v107 = (v47 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
        swift_beginAccess();
        v62 = *v107;
        v63 = v107[1];
        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
        sub_2277905C0(v62, v63);
        v108 = v179;
        v65 = sub_2277E2734();
        v66 = v108;
        if (v108)
        {
          goto LABEL_38;
        }

        a1 = v159;
        if (v65)
        {
          goto LABEL_70;
        }

        goto LABEL_39;
      case 0xBLL:
        v61 = (v47 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
        swift_beginAccess();
        v62 = *v61;
        v63 = v61[1];
        sub_22778E6C8(0, &qword_27D7CECB0, 0x277CCAAC8);
        sub_22778E6C8(0, &qword_2813BC548, 0x277CCCFB0);
        sub_2277905C0(v62, v63);
        v64 = v179;
        v65 = sub_2277E2734();
        v66 = v64;
        if (v64)
        {
LABEL_38:

          a1 = v159;
        }

        else
        {
          a1 = v159;
          if (v65)
          {
LABEL_70:
            v158 = v65;
            sub_22778E130(v62, v63);
            sub_2277DBDE4(a1, type metadata accessor for FirstGlanceTypeProtobuf);
            *v178 = v158;
            type metadata accessor for FirstGlanceType();
            return swift_storeEnumTagMultiPayload();
          }
        }

LABEL_39:
        sub_227791024();
        swift_allocError();
        *v109 = 3;
        swift_willThrow();
        sub_22778E130(v62, v63);
        goto LABEL_7;
      case 0xELL:
        v56 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
        swift_beginAccess();
        sub_2277AF92C(v47 + v56, v30, &qword_27D7CEDE0, &qword_2277E5A28);
        v57 = *(v161 + 48);
        if (v57(v30, 1, v31) == 1)
        {
          *v34 = xmmword_2277E4B40;
          *(v34 + 2) = 0;
          *(v34 + 3) = 0;
          *(v34 + 4) = 0;
          *(v34 + 5) = 0xC000000000000000;
          *(v34 + 12) = 0;
          v58 = &v34[*(v31 + 36)];
          sub_2277E20F4();
          v59 = v57(v30, 1, v31);
          v60 = v160;
          if (v59 != 1)
          {
            sub_22778CE70(v30, &qword_27D7CEDE0, &qword_2277E5A28);
          }
        }

        else
        {
          sub_2277DBBBC(v30, v34, type metadata accessor for WeeklySummaryInfoProtobuf);
          v60 = v160;
        }

        v116 = v179;
        WeeklySummaryInfo.init(_:)(v34, v60);
        if (v116)
        {
          v54 = v159;
          return sub_2277DBDE4(v54, type metadata accessor for FirstGlanceTypeProtobuf);
        }

        v151 = (v47 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation);
        swift_beginAccess();
        v152 = *v151;
        LOBYTE(v151) = *(v151 + 8);
        sub_2277DBDE4(v159, type metadata accessor for FirstGlanceTypeProtobuf);
        v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE998, &qword_2277E3C48);
        v154 = v178 + *(v153 + 48);
        sub_2277DBBBC(v60, v178, type metadata accessor for WeeklySummaryInfo);
        *v154 = v152;
        v154[8] = v151;
        type metadata accessor for FirstGlanceType();
        return swift_storeEnumTagMultiPayload();
      case 0xFLL:
        v77 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
        swift_beginAccess();
        v78 = v173;
        sub_2277AF92C(v47 + v77, v173, &qword_27D7CEDC8, &qword_2277E5A20);
        v79 = *(v168 + 48);
        v80 = GlanceWorkoutSummationTypeProtobuf;
        if (v79(v78, 1, GlanceWorkoutSummationTypeProtobuf) == 1)
        {
          v81 = v170;
          *v170 = 0;
          *(v81 + 8) = 1;
          v82 = v81 + *(v80 + 20);
          sub_2277E20F4();
          v83 = *(v80 + 24);
          GlanceWorkoutSummationProtobuf = type metadata accessor for FirstGlanceWorkoutSummationProtobuf();
          (*(*(GlanceWorkoutSummationProtobuf - 8) + 56))(v81 + v83, 1, 1, GlanceWorkoutSummationProtobuf);
          v85 = v79(v78, 1, v80);
          v86 = v179;
          if (v85 != 1)
          {
            sub_22778CE70(v78, &qword_27D7CEDC8, &qword_2277E5A20);
          }
        }

        else
        {
          v81 = v170;
          sub_2277DBBBC(v78, v170, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
          v86 = v179;
        }

        FirstGlanceWorkoutSummationType.init(_:)(v81, v180);
        v54 = v159;
        if (v86)
        {
          return sub_2277DBDE4(v54, type metadata accessor for FirstGlanceTypeProtobuf);
        }

        sub_2277DBDE4(v159, type metadata accessor for FirstGlanceTypeProtobuf);
        v155 = v181;
        v156 = v180[1];
        v157 = v178;
        *v178 = v180[0];
        *(v157 + 1) = v156;
        v157[4] = v155;
        type metadata accessor for FirstGlanceType();
        return swift_storeEnumTagMultiPayload();
      default:
        v48 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
        swift_beginAccess();
        sub_2277AF92C(v47 + v48, v41, &qword_27D7CEDB8, &qword_2277E5A18);
        v49 = *(v43 + 48);
        if (v49(v41, 1, GlanceWeeklySummaryProtobuf) == 1)
        {
          *v46 = MEMORY[0x277D84F90];
          *(v46 + 2) = 0;
          *(v46 + 3) = 0;
          *(v46 + 4) = 0;
          *(v46 + 2) = 0;
          *(v46 + 10) = 0;
          *(v46 + 16) = 0;
          *(v46 + 6) = 0;
          *(v46 + 7) = 0;
          v50 = &v46[*(GlanceWeeklySummaryProtobuf + 56)];
          sub_2277E20F4();
          v51 = v49(v41, 1, GlanceWeeklySummaryProtobuf);
          v52 = v159;
          if (v51 != 1)
          {
            sub_22778CE70(v41, &qword_27D7CEDB8, &qword_2277E5A18);
          }
        }

        else
        {
          sub_2277DBBBC(v41, v46, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
          v52 = v159;
        }

        v137 = *(v46 + 15);
        v136 = *(v46 + 16);
        v138 = *v46;
        v139 = *(v46 + 2);
        v177 = *(v46 + 1);
        v140 = *(v46 + 4);
        v141 = *(v46 + 10);
        v142 = *(v46 + 6);
        v143 = *(v46 + 14);

        sub_2277DBDE4(v46, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
        v144 = v47 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
        swift_beginAccess();
        v145 = *v144;
        if (*(v144 + 8))
        {
          v146 = 0.0;
        }

        else
        {
          v146 = *v144;
        }

        sub_2277DBDE4(v52, type metadata accessor for FirstGlanceTypeProtobuf);
        v147 = v178;
        *v178 = v138;
        v147[1] = v139;
        *(v147 + 1) = v177;
        v147[4] = v140;
        v147[5] = v141;
        v147[6] = v142;
        v147[7] = v143;
        v147[8] = v137;
        v147[9] = v136;
        *(v147 + 10) = v146;
        type metadata accessor for FirstGlanceType();
        return swift_storeEnumTagMultiPayload();
    }
  }

  sub_227791024();
  swift_allocError();
  *v53 = 3;
  swift_willThrow();
LABEL_7:
  v54 = a1;
  return sub_2277DBDE4(v54, type metadata accessor for FirstGlanceTypeProtobuf);
}

void sub_2277DA35C(uint64_t a1, uint64_t a2)
{
  v309 = a1;
  v308 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDC8, &qword_2277E5A20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v293 = &v291 - v4;
  GlanceWorkoutSummationTypeProtobuf = type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf();
  v292 = *(GlanceWorkoutSummationTypeProtobuf - 8);
  v5 = *(v292 + 64);
  MEMORY[0x28223BE20](GlanceWorkoutSummationTypeProtobuf);
  v297 = &v291 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDA0, &qword_2277E5A10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v295 = &v291 - v9;
  GlanceYesterdayWorkoutProtobuf = type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf();
  v294 = *(GlanceYesterdayWorkoutProtobuf - 8);
  v10 = *(v294 + 64);
  v11 = MEMORY[0x28223BE20](GlanceYesterdayWorkoutProtobuf);
  v301 = &v291 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v300 = &v291 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDF8, &unk_2277E5A30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v306 = &v291 - v16;
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  v304 = *(GlanceAchievementInfoProtobuf - 8);
  v305 = GlanceAchievementInfoProtobuf;
  v18 = *(v304 + 64);
  v19 = MEMORY[0x28223BE20](GlanceAchievementInfoProtobuf);
  v303 = &v291 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v302 = &v291 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDE0, &qword_2277E5A28);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v291 - v24;
  v26 = type metadata accessor for WeeklySummaryInfoProtobuf();
  v291 = *(v26 - 8);
  v27 = *(v291 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v291 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for WeeklySummaryInfo();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v299 = &v291 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEDB8, &qword_2277E5A18);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v291 - v35;
  GlanceWeeklySummaryProtobuf = type metadata accessor for FirstGlanceWeeklySummaryProtobuf();
  v296 = *(GlanceWeeklySummaryProtobuf - 8);
  v38 = *(v296 + 64);
  MEMORY[0x28223BE20](GlanceWeeklySummaryProtobuf);
  v40 = &v291 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  GlanceType = type metadata accessor for FirstGlanceType();
  v42 = *(*(GlanceType - 8) + 64);
  MEMORY[0x28223BE20](GlanceType);
  v44 = &v291 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22778E0CC(v308, v44);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v179 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE998, &qword_2277E3C48) + 48)];
      v308 = *v179;
      v180 = v179[8];
      v181 = v299;
      sub_2277DBBBC(v44, v299, type metadata accessor for WeeklySummaryInfo);
      v182 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v183 = v309;
      v184 = *(v309 + v182);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v186 = *(v183 + v182);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v187 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v188 = *(v187 + 48);
        v189 = *(v187 + 52);
        swift_allocObject();
        v186 = sub_2277AF224(v186);
        *(v183 + v182) = v186;
      }

      swift_beginAccess();
      *(v186 + 16) = 14;
      *(v186 + 24) = 1;
      v190 = v310;
      WeeklySummaryInfo.protobuf()();
      if (!v190)
      {
        v191 = v309;
        v192 = *(v309 + v182);
        v193 = swift_isUniquelyReferenced_nonNull_native();
        v194 = *(v191 + v182);
        if ((v193 & 1) == 0)
        {
          v195 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
          v196 = *(v195 + 48);
          v197 = *(v195 + 52);
          swift_allocObject();
          v194 = sub_2277AF224(v194);
          *(v191 + v182) = v194;
        }

        sub_2277DBBBC(v29, v25, type metadata accessor for WeeklySummaryInfoProtobuf);
        (*(v291 + 56))(v25, 0, 1, v26);
        v198 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryInfo;
        swift_beginAccess();
        sub_2277AF9FC(v25, v194 + v198, &qword_27D7CEDE0, &qword_2277E5A28);
        swift_endAccess();
        v181 = v299;
        if ((v180 & 1) == 0)
        {
          v279 = v309;
          v280 = *(v309 + v182);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            sub_2277DBDE4(v181, type metadata accessor for WeeklySummaryInfo);
            v68 = *(v279 + v182);
          }

          else
          {
            v286 = *(v279 + v182);
            v287 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
            v288 = *(v287 + 48);
            v289 = *(v287 + 52);
            swift_allocObject();

            v68 = sub_2277AF224(v290);
            sub_2277DBDE4(v181, type metadata accessor for WeeklySummaryInfo);

            *(v279 + v182) = v68;
          }

          goto LABEL_8;
        }
      }

      sub_2277DBDE4(v181, type metadata accessor for WeeklySummaryInfo);
      return;
    case 2u:
      v135 = *(v44 + 1);
      v312[0] = *v44;
      v312[1] = v135;
      v313 = v44[32];
      v136 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v137 = v309;
      v138 = *(v309 + v136);
      v139 = swift_isUniquelyReferenced_nonNull_native();
      v140 = *(v137 + v136);
      if ((v139 & 1) == 0)
      {
        v141 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v142 = *(v141 + 48);
        v143 = *(v141 + 52);
        swift_allocObject();
        v140 = sub_2277AF224(v140);
        *(v137 + v136) = v140;
      }

      v144 = v305;
      v145 = swift_beginAccess();
      *(v140 + 16) = 3;
      *(v140 + 24) = 1;
      MEMORY[0x28223BE20](v145);
      *(&v291 - 2) = v312;
      sub_2277DBE44(&qword_27D7CEED0, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
      sub_2277E2274();
      v146 = *(v137 + v136);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_2277DBD90(v312);
        v98 = *(v137 + v136);
      }

      else
      {
        v252 = *(v137 + v136);
        v253 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v254 = *(v253 + 48);
        v255 = *(v253 + 52);
        swift_allocObject();

        v98 = sub_2277AF224(v256);
        sub_2277DBD90(v312);

        *(v137 + v136) = v98;
      }

      v103 = v306;
      v257 = v304;
      v258 = v302;
      goto LABEL_81;
    case 3u:
      v154 = *(v44 + 1);
      v314[0] = *v44;
      v314[1] = v154;
      v315 = v44[32];
      v155 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v156 = v309;
      v157 = *(v309 + v155);
      v158 = swift_isUniquelyReferenced_nonNull_native();
      v159 = *(v156 + v155);
      if ((v158 & 1) == 0)
      {
        v160 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v161 = *(v160 + 48);
        v162 = *(v160 + 52);
        swift_allocObject();
        v159 = sub_2277AF224(v159);
        *(v156 + v155) = v159;
      }

      v144 = v305;
      v163 = swift_beginAccess();
      *(v159 + 16) = 4;
      *(v159 + 24) = 1;
      MEMORY[0x28223BE20](v163);
      *(&v291 - 2) = v314;
      sub_2277DBE44(&qword_27D7CEED0, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
      sub_2277E2274();
      v164 = *(v156 + v155);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_2277DBD90(v314);
        v98 = *(v156 + v155);
      }

      else
      {
        v259 = *(v156 + v155);
        v260 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v261 = *(v260 + 48);
        v262 = *(v260 + 52);
        swift_allocObject();

        v98 = sub_2277AF224(v263);
        sub_2277DBD90(v314);

        *(v156 + v155) = v98;
      }

      v103 = v306;
      v258 = v303;
      v257 = v304;
LABEL_81:
      sub_2277DBBBC(v258, v103, type metadata accessor for FirstGlanceAchievementInfoProtobuf);
      (*(v257 + 56))(v103, 0, 1, v144);
      v104 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__achievementInfo;
      swift_beginAccess();
      v105 = &qword_27D7CEDF8;
      v106 = &unk_2277E5A30;
      goto LABEL_93;
    case 4u:
      v107 = *v44;
      v108 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v109 = v309;
      v110 = *(v309 + v108);
      v111 = swift_isUniquelyReferenced_nonNull_native();
      v112 = *(v109 + v108);
      if ((v111 & 1) == 0)
      {
        v113 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v114 = *(v113 + 48);
        v115 = *(v113 + 52);
        swift_allocObject();
        v112 = sub_2277AF224(v112);
        *(v109 + v108) = v112;
      }

      v116 = v310;
      swift_beginAccess();
      v117 = 5;
      goto LABEL_65;
    case 5u:
      v107 = *v44;
      v108 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v109 = v309;
      v199 = *(v309 + v108);
      v200 = swift_isUniquelyReferenced_nonNull_native();
      v112 = *(v109 + v108);
      if ((v200 & 1) == 0)
      {
        v201 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v202 = *(v201 + 48);
        v203 = *(v201 + 52);
        swift_allocObject();
        v112 = sub_2277AF224(v112);
        *(v109 + v108) = v112;
      }

      v116 = v310;
      swift_beginAccess();
      v117 = 6;
      goto LABEL_65;
    case 6u:
      v165 = *v44;
      v211 = *(v44 + 1);
      v212 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v213 = v309;
      v214 = *(v309 + v212);
      v215 = swift_isUniquelyReferenced_nonNull_native();
      v216 = *(v213 + v212);
      if ((v215 & 1) == 0)
      {
        v217 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v218 = *(v217 + 48);
        v219 = *(v217 + 52);
        swift_allocObject();
        v216 = sub_2277AF224(v216);
        *(v213 + v212) = v216;
      }

      v220 = v310;
      v221 = swift_beginAccess();
      *(v216 + 16) = 7;
      *(v216 + 24) = 1;
      MEMORY[0x28223BE20](v221);
      *(&v291 - 2) = v165;
      *(&v291 - 1) = v211;
      sub_2277DBE44(&qword_27D7CEBA0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
      v177 = GlanceYesterdayWorkoutProtobuf;
      sub_2277E2274();
      if (v220)
      {
        goto LABEL_61;
      }

      v272 = *(v213 + v212);
      if (swift_isUniquelyReferenced_nonNull_native())
      {

        v98 = *(v213 + v212);
      }

      else
      {
        v281 = *(v213 + v212);
        v282 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v283 = *(v282 + 48);
        v284 = *(v282 + 52);
        swift_allocObject();

        v98 = sub_2277AF224(v285);

        *(v213 + v212) = v98;
      }

      v278 = v300;
      goto LABEL_92;
    case 7u:
      v165 = *v44;
      v166 = *(v44 + 1);
      v167 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v168 = v309;
      v169 = *(v309 + v167);
      v170 = swift_isUniquelyReferenced_nonNull_native();
      v171 = *(v168 + v167);
      if ((v170 & 1) == 0)
      {
        v172 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v173 = *(v172 + 48);
        v174 = *(v172 + 52);
        swift_allocObject();
        v171 = sub_2277AF224(v171);
        *(v168 + v167) = v171;
      }

      v175 = v310;
      v176 = swift_beginAccess();
      *(v171 + 16) = 8;
      *(v171 + 24) = 1;
      MEMORY[0x28223BE20](v176);
      *(&v291 - 2) = v165;
      *(&v291 - 1) = v166;
      sub_2277DBE44(&qword_27D7CEBA0, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
      v177 = GlanceYesterdayWorkoutProtobuf;
      sub_2277E2274();
      if (v175)
      {
LABEL_61:
      }

      else
      {
        v178 = *(v168 + v167);
        if (swift_isUniquelyReferenced_nonNull_native())
        {

          v98 = *(v168 + v167);
        }

        else
        {
          v273 = *(v168 + v167);
          v274 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
          v275 = *(v274 + 48);
          v276 = *(v274 + 52);
          swift_allocObject();

          v98 = sub_2277AF224(v277);

          *(v168 + v167) = v98;
        }

        v278 = v301;
LABEL_92:
        v103 = v295;
        sub_2277DBBBC(v278, v295, type metadata accessor for FirstGlanceYesterdayWorkoutProtobuf);
        (*(v294 + 56))(v103, 0, 1, v177);
        v104 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__yesterdayWorkout;
        swift_beginAccess();
        v105 = &qword_27D7CEDA0;
        v106 = &qword_2277E5A10;
LABEL_93:
        sub_2277AF9FC(v103, v98 + v104, v105, v106);
        swift_endAccess();
      }

      return;
    case 8u:
      v107 = *v44;
      v125 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v126 = v309;
      v233 = *(v309 + v125);
      v234 = swift_isUniquelyReferenced_nonNull_native();
      v129 = *(v126 + v125);
      if ((v234 & 1) == 0)
      {
        v235 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v236 = *(v235 + 48);
        v237 = *(v235 + 52);
        swift_allocObject();
        v129 = sub_2277AF224(v129);
        *(v126 + v125) = v129;
      }

      v133 = v310;
      swift_beginAccess();
      v134 = 9;
      goto LABEL_71;
    case 9u:
      v107 = *v44;
      v125 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v126 = v309;
      v127 = *(v309 + v125);
      v128 = swift_isUniquelyReferenced_nonNull_native();
      v129 = *(v126 + v125);
      if ((v128 & 1) == 0)
      {
        v130 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v131 = *(v130 + 48);
        v132 = *(v130 + 52);
        swift_allocObject();
        v129 = sub_2277AF224(v129);
        *(v126 + v125) = v129;
      }

      v133 = v310;
      swift_beginAccess();
      v134 = 10;
LABEL_71:
      *(v129 + 16) = v134;
      *(v129 + 24) = 1;
      v238 = sub_2277D6868();
      if (v133)
      {
        goto LABEL_72;
      }

      v240 = v238;
      v241 = v239;
      v242 = *(v126 + v125);
      if (swift_isUniquelyReferenced_nonNull_native())
      {

        v243 = *(v126 + v125);
      }

      else
      {
        v264 = *(v126 + v125);
        v265 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v266 = *(v265 + 48);
        v267 = *(v265 + 52);
        swift_allocObject();

        v243 = sub_2277AF224(v268);

        *(v126 + v125) = v243;
      }

      v269 = (v243 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
      swift_beginAccess();
      v270 = *v269;
      v271 = v269[1];
      *v269 = v240;
      v269[1] = v241;
      sub_22778E130(v270, v271);
      return;
    case 0xAu:
      v107 = *v44;
      v108 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v109 = v309;
      v222 = *(v309 + v108);
      v223 = swift_isUniquelyReferenced_nonNull_native();
      v112 = *(v109 + v108);
      if ((v223 & 1) == 0)
      {
        v224 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v225 = *(v224 + 48);
        v226 = *(v224 + 52);
        swift_allocObject();
        v112 = sub_2277AF224(v112);
        *(v109 + v108) = v112;
      }

      v116 = v310;
      swift_beginAccess();
      v117 = 11;
LABEL_65:
      *(v112 + 16) = v117;
      *(v112 + 24) = 1;
      v227 = sub_2277D6868();
      if (v116)
      {
LABEL_72:
      }

      else
      {
        v229 = v228;
        v230 = v227;
        v231 = *(v109 + v108);
        if (swift_isUniquelyReferenced_nonNull_native())
        {

          v232 = *(v109 + v108);
        }

        else
        {
          v244 = *(v109 + v108);
          v245 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
          v246 = *(v245 + 48);
          v247 = *(v245 + 52);
          swift_allocObject();

          v232 = sub_2277AF224(v248);

          *(v109 + v108) = v232;
        }

        v249 = (v232 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__activitySummaryData);
        swift_beginAccess();
        v250 = *v249;
        v251 = v249[1];
        *v249 = v230;
        v249[1] = v229;
        sub_22778E130(v250, v251);
      }

      return;
    case 0xBu:
      v83 = *(v44 + 1);
      v316[0] = *v44;
      v316[1] = v83;
      v317 = *(v44 + 4);
      v84 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v85 = v309;
      v86 = *(v309 + v84);
      v87 = swift_isUniquelyReferenced_nonNull_native();
      v88 = *(v85 + v84);
      if ((v87 & 1) == 0)
      {
        v89 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v90 = *(v89 + 48);
        v91 = *(v89 + 52);
        swift_allocObject();
        v88 = sub_2277AF224(v88);
        *(v85 + v84) = v88;
      }

      v92 = v310;
      v93 = v297;
      v94 = swift_beginAccess();
      *(v88 + 16) = 15;
      *(v88 + 24) = 1;
      MEMORY[0x28223BE20](v94);
      *(&v291 - 2) = v316;
      sub_2277DBE44(&qword_27D7CEED8, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
      v95 = GlanceWorkoutSummationTypeProtobuf;
      sub_2277E2274();
      if (v92)
      {
        return;
      }

      v96 = *(v85 + v84);
      v97 = swift_isUniquelyReferenced_nonNull_native();
      v98 = *(v85 + v84);
      if ((v97 & 1) == 0)
      {
        v99 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v100 = *(v99 + 48);
        v101 = *(v99 + 52);
        swift_allocObject();
        v98 = sub_2277AF224(v98);
        *(v85 + v84) = v98;
      }

      v102 = v292;
      v103 = v293;
      sub_2277DBBBC(v93, v293, type metadata accessor for FirstGlanceWorkoutSummationTypeProtobuf);
      (*(v102 + 56))(v103, 0, 1, v95);
      v104 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__workoutSummationType;
      swift_beginAccess();
      v105 = &qword_27D7CEDC8;
      v106 = &qword_2277E5A20;
      goto LABEL_93;
    case 0xCu:
      v118 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v119 = v309;
      v120 = *(v309 + v118);
      v121 = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v119 + v118);
      if ((v121 & 1) == 0)
      {
        v122 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v123 = *(v122 + 48);
        v124 = *(v122 + 52);
        swift_allocObject();
        v78 = sub_2277AF224(v78);
        *(v119 + v118) = v78;
      }

      swift_beginAccess();
      *(v78 + 16) = 1;
      goto LABEL_57;
    case 0xDu:
      v204 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v205 = v309;
      v206 = *(v309 + v204);
      v207 = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v205 + v204);
      if ((v207 & 1) == 0)
      {
        v208 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v209 = *(v208 + 48);
        v210 = *(v208 + 52);
        swift_allocObject();
        v78 = sub_2277AF224(v78);
        *(v205 + v204) = v78;
      }

      swift_beginAccess();
      v82 = 2;
      goto LABEL_56;
    case 0xEu:
      v74 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v75 = v309;
      v76 = *(v309 + v74);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v75 + v74);
      if ((v77 & 1) == 0)
      {
        v79 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v80 = *(v79 + 48);
        v81 = *(v79 + 52);
        swift_allocObject();
        v78 = sub_2277AF224(v78);
        *(v75 + v74) = v78;
      }

      swift_beginAccess();
      v82 = 12;
      goto LABEL_56;
    case 0xFu:
      v147 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v148 = v309;
      v149 = *(v309 + v147);
      v150 = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v148 + v147);
      if ((v150 & 1) == 0)
      {
        v151 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v152 = *(v151 + 48);
        v153 = *(v151 + 52);
        swift_allocObject();
        v78 = sub_2277AF224(v78);
        *(v148 + v147) = v78;
      }

      swift_beginAccess();
      v82 = 13;
LABEL_56:
      *(v78 + 16) = v82;
LABEL_57:
      *(v78 + 24) = 1;
      return;
    default:
      v45 = *(v44 + 3);
      v311[2] = *(v44 + 2);
      v311[3] = v45;
      v311[4] = *(v44 + 4);
      v46 = *(v44 + 1);
      v311[0] = *v44;
      v311[1] = v46;
      v47 = *(v44 + 10);
      v48 = *(type metadata accessor for FirstGlanceTypeProtobuf(0) + 20);
      v49 = v309;
      v50 = *(v309 + v48);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v49 + v48);
      v308 = v47;
      if ((v51 & 1) == 0)
      {
        v53 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v54 = *(v53 + 48);
        v55 = *(v53 + 52);
        swift_allocObject();
        v52 = sub_2277AF224(v52);
        *(v49 + v48) = v52;
      }

      v56 = swift_beginAccess();
      *(v52 + 16) = 0;
      *(v52 + 24) = 1;
      MEMORY[0x28223BE20](v56);
      *(&v291 - 2) = v311;
      sub_2277DBE44(&qword_27D7CEC38, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
      v57 = v310;
      sub_2277E2274();
      v310 = v57;
      sub_22778E1E8(v311);
      v58 = *(v49 + v48);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v60 = *(v49 + v48);
      if ((v59 & 1) == 0)
      {
        v61 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v62 = *(v61 + 48);
        v63 = *(v61 + 52);
        swift_allocObject();
        v60 = sub_2277AF224(v60);
        *(v49 + v48) = v60;
      }

      v64 = v296;
      sub_2277DBBBC(v40, v36, type metadata accessor for FirstGlanceWeeklySummaryProtobuf);
      (*(v64 + 56))(v36, 0, 1, GlanceWeeklySummaryProtobuf);
      v65 = OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklySummaryContent;
      swift_beginAccess();
      sub_2277AF9FC(v36, v60 + v65, &qword_27D7CEDB8, &qword_2277E5A18);
      swift_endAccess();
      v66 = *(v49 + v48);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v68 = *(v49 + v48);
      if ((v67 & 1) == 0)
      {
        v69 = type metadata accessor for FirstGlanceTypeProtobuf._StorageClass(0);
        v70 = *(v69 + 48);
        v71 = *(v69 + 52);
        swift_allocObject();
        v68 = sub_2277AF224(v68);
        *(v49 + v48) = v68;
      }

LABEL_8:
      v72 = v308;
      v73 = v68 + OBJC_IVAR____TtCV15FitnessCoaching23FirstGlanceTypeProtobufP33_8AACCA7DA334FB8A77BDBEF823584BB213_StorageClass__weeklyGoalRecommendation;
      swift_beginAccess();
      *v73 = v72;
      *(v73 + 8) = 0;
      return;
  }
}

uint64_t sub_2277DBBBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2277DBCB4()
{
  type metadata accessor for FirstGlanceTypeProtobuf(0);
  sub_2277DBE44(&qword_27D7CEE40, type metadata accessor for FirstGlanceTypeProtobuf);
  return sub_2277E2274();
}

uint64_t sub_2277DBDE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2277DBE44(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String __swiftcall NotificationActionType.localized()()
{
  *v0;
  type metadata accessor for XPCListener();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_2277E2414();

  v4 = sub_2277E2414();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_2277E2434();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

unint64_t NotificationActionType.rawValue.getter()
{
  *v0;
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

id NotificationActionType.icon.getter()
{
  *v0;
  v1 = sub_2277E2414();
  v2 = [objc_opt_self() iconWithSystemImageName_];

  return v2;
}

FitnessCoaching::NotificationActionType_optional __swiftcall NotificationActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2277E2924();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2277DC128(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "VIEW_FITNESS_PLUS_PLAN";
  if (v2 == 1)
  {
    v4 = "VIEW_FITNESS_PLUS_PLAN";
  }

  else
  {
    v4 = "EDIT_PAUSE_RINGS";
  }

  if (*a1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = "CoachingStartDate";
  }

  if (*a2 != 1)
  {
    v3 = "EDIT_PAUSE_RINGS";
  }

  if (*a2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = "CoachingStartDate";
  }

  if (v5 == v7 && (v6 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2277E2984();
  }

  return v9 & 1;
}

unint64_t sub_2277DC1FC()
{
  result = qword_27D7CF418[0];
  if (!qword_27D7CF418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7CF418);
  }

  return result;
}

uint64_t sub_2277DC250()
{
  v1 = *v0;
  sub_2277E2A04();
  sub_2277E2484();

  return sub_2277E2A44();
}

uint64_t sub_2277DC2E4()
{
  *v0;
  *v0;
  sub_2277E2484();
}

uint64_t sub_2277DC364()
{
  v1 = *v0;
  sub_2277E2A04();
  sub_2277E2484();

  return sub_2277E2A44();
}

void sub_2277DC400(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "VIEW_FITNESS_PLUS_PLAN";
  if (*v1 != 1)
  {
    v3 = "EDIT_PAUSE_RINGS";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000016;
    v4 = "CoachingStartDate";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t AsyncAdvanceableThrowingStream.makeAsyncIterator()()
{
  sub_2277DD7EC();
}

char *AsyncAdvanceableThrowingStream.__allocating_init(asyncStream:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = sub_2277DD7F4(a1);
  v7 = v2[10];
  v8 = v2[11];
  v9 = v2[12];
  v10 = sub_2277E2694();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v6;
}

uint64_t sub_2277DC51C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_2277E2774();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_2277DC5C8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_2277E2774();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_2277DC67C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  v8 = sub_2277E2684();
  return (*(*(v8 - 8) + 16))(a1, v1 + v4, v8);
}

uint64_t sub_2277DC750(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  v8 = sub_2277E2684();
  (*(*(v8 - 8) + 40))(v1 + v4, a1, v8);
  return swift_endAccess();
}

char *AsyncAdvanceableThrowingStream.init(asyncStream:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_2277DD7F4(a1);
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  v8 = sub_2277E2694();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v4;
}

uint64_t sub_2277DC8D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = sub_2277E2684();
  v2[4] = v6;
  v7 = *(v6 - 8);
  v2[5] = v7;
  v8 = *(v7 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277DC9E4, v1, 0);
}

uint64_t sub_2277DC9E4()
{
  v1 = v0[3];
  sub_2277DC67C(v0[7]);
  v2 = *(MEMORY[0x277D858C0] + 4);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_2277DCA90;
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x2822005B0](v6, v5);
}

uint64_t sub_2277DCA90()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_2277DCC84;
  }

  else
  {
    v6 = sub_2277DCBBC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2277DCBBC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  (*(v4 + 16))(v2, v1, v3);
  sub_2277DC750(v2);
  (*(v4 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2277DCC84()
{
  v1 = v0[6];
  (*(v0[5] + 8))(v0[7], v0[4]);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t *AsyncAdvanceableThrowingStream.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 80);
  v4 = sub_2277E2774();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(*v0 + 120);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = sub_2277E2684();
  (*(*(v8 - 8) + 8))(v0 + v5, v8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncAdvanceableThrowingStream.__deallocating_deinit()
{
  AsyncAdvanceableThrowingStream.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2277DCE70@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_2277DD7EC();

  *a1 = v4;
  return result;
}

uint64_t AsyncAdvanceableThrowingStream.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*v1 + 80);
  v2[4] = v3;
  v4 = sub_2277E2774();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v7 = *(v3 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2277DD00C, v1, 0);
}

uint64_t sub_2277DD00C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[3];
  v4 = v0[4];
  sub_2277DC51C(v1);
  v5 = *(v2 + 48);
  v0[13] = v5;
  v0[14] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v4) == 1)
  {
    v6 = v0[9];
    v7 = v0[5];
    v8 = v0[6];
    v9 = *(v8 + 8);
    v0[15] = v9;
    v0[16] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_2277DD1EC;
    v11 = v0[8];
    v12 = v0[3];

    return sub_2277DC8D8(v11);
  }

  else
  {
    v14 = v0[12];
    v15 = v0[10];
    v16 = v0[4];
    v17 = v0[2];
    v18 = *(v15 + 32);
    v18(v14, v0[9], v16);
    v18(v17, v14, v16);
    v19 = v0[11];
    v20 = v0[12];
    v22 = v0[8];
    v21 = v0[9];
    v23 = v0[7];
    (*(v15 + 56))(v0[2], 0, 1, v0[4]);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_2277DD1EC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_2277DD4C0;
  }

  else
  {
    v6 = sub_2277DD318;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2277DD318()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  if ((*(v0 + 104))(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 80);
    (*(v0 + 120))(v2, *(v0 + 40));
    v6 = *(v5 + 56);
    v7 = 1;
  }

  else
  {
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 56);
    v11 = *(v0 + 24);
    v20 = *(v0 + 16);
    v12 = *(v9 + 32);
    v12(v8, v2, v3);
    (*(v9 + 16))(v10, v8, v3);
    v6 = *(v9 + 56);
    v6(v10, 0, 1, v3);
    sub_2277DC5C8(v10);
    v12(v20, v8, v3);
    v7 = 0;
  }

  v13 = *(v0 + 88);
  v14 = *(v0 + 96);
  v16 = *(v0 + 64);
  v15 = *(v0 + 72);
  v17 = *(v0 + 56);
  v6(*(v0 + 16), v7, 1, *(v0 + 32));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2277DD4C0()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

uint64_t sub_2277DD554(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22779696C;

  return AsyncAdvanceableThrowingStream.next()(a1);
}

uint64_t sub_2277DD5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  v14 = a5[10];
  v15 = a5[11];
  v16 = a5[12];
  v17 = type metadata accessor for AsyncAdvanceableThrowingStream();
  *v13 = v6;
  v13[1] = sub_2277DD6DC;

  return MEMORY[0x282200320](a1, a2, a3, v17, a6, v6 + 16);
}

uint64_t sub_2277DD6DC()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

char *sub_2277DD7F4(uint64_t a1)
{
  v2 = v1;
  v19 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v17[2] = *(*v1 + 88);
  v17[1] = *(v3 + 96);
  v18 = sub_2277E2684();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v18);
  v8 = v17 - v7;
  v9 = sub_2277E2774();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  swift_defaultActor_initialize();
  v14 = *(*v2 + 112);
  v15 = *(*(v4 - 8) + 56);
  v15(&v2[v14], 1, 1, v4);
  v15(v13, 1, 1, v4);
  swift_beginAccess();
  (*(v10 + 40))(&v2[v14], v13, v9);
  swift_endAccess();
  sub_2277E2694();
  sub_2277E2664();
  (*(v5 + 32))(&v2[*(*v2 + 120)], v8, v18);
  return v2;
}

uint64_t sub_2277DDA90(void *a1)
{
  v2 = a1[10];
  result = sub_2277E2774();
  if (v4 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v5 = a1[11];
    v6 = a1[12];
    result = sub_2277E2684();
    if (v7 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2277DDC34(_BYTE *a1, uint64_t a2, char a3)
{
  if (*a1)
  {
    return sub_2277DF680(a2, a3 & 1);
  }

  else
  {
    return sub_2277DF070(a2);
  }
}

size_t sub_2277DDC74(size_t a1, int64_t a2, char a3)
{
  result = sub_2277DDE28(a1, a2, a3, *v3, &qword_27D7CF4C8, &unk_2277E84B0, type metadata accessor for FirstGlanceTypeProtobuf);
  *v3 = result;
  return result;
}

char *sub_2277DDCB8(char *a1, int64_t a2, char a3)
{
  result = sub_2277DDD1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2277DDCD8(size_t a1, int64_t a2, char a3)
{
  result = sub_2277DDE28(a1, a2, a3, *v3, &qword_27D7CF4C0, &unk_2277E84A0, MEMORY[0x277D53210]);
  *v3 = result;
  return result;
}

char *sub_2277DDD1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CEF08, &qword_2277E6070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2277DDE28(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2277DE004()
{
  v0 = sub_2277E20A4();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    sub_2277E2814();
    v4 = sub_2277E20B4();
    v6 = v5;
    v8 = v7 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF4A8, &qword_2277E8498);
    sub_2277E2084();
    sub_2277DFFBC(v4, v6, v8);
    sub_2277E2454();

    MEMORY[0x22AA9B650](0xD000000000000015, 0x80000002277EA390);
    type metadata accessor for XPCListener();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_2277E2414();

    v12 = sub_2277E2414();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    sub_2277E2434();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2277E3E40;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2277CB7D4();
    *(v14 + 32) = v2;
    *(v14 + 40) = v3;
    v15 = sub_2277E2444();
  }

  else
  {
    v16 = sub_2277E20B4();
    v18 = v17;
    v20 = v19 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF4A8, &qword_2277E8498);
    sub_2277E2084();
    sub_2277DFFBC(v16, v18, v20);
    sub_2277E2454();

    MEMORY[0x22AA9B650](0x54554F4B524F575FLL, 0xE800000000000000);
    type metadata accessor for XPCListener();
    v21 = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v23 = sub_2277E2414();

    v24 = sub_2277E2414();
    v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

    v15 = sub_2277E2434();
  }

  return v15;
}

uint64_t sub_2277DE37C(uint64_t a1)
{
  v61 = sub_2277E20D4();
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v61);
  v66 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v8 = MEMORY[0x28223BE20](v7);
  v65 = v58 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v58 - v10;
  v13 = *(a1 + 16);
  if (v13)
  {
    v60 = v11;
    v58[1] = v1;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v72 = v15;
    v64 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = *(v14 + 56);
    v63 = (v14 - 8);
    v70 = (v14 + 16);
    v17 = MEMORY[0x277D84F90];
    v69 = xmmword_2277E8410;
    v18 = a1 + v64;
    v73 = v13;
    v19 = v13;
    v20 = v61;
    v74 = v14;
    v71 = v16;
    v59 = v58 - v10;
    v62 = v18;
    v15(v12, v18, v61);
    while (1)
    {
      v23 = v20;
      v24 = sub_2277E20B4();
      v26 = v25;
      v77 = v24;
      v78 = v25;
      v27 = v12;
      v29 = v28 & 1;
      v79 = v28 & 1;
      v75 = v69;
      v76 = 1;
      v30 = sub_2277DFFCC();
      v67 = sub_2277E0020();
      v68 = v30;
      LOBYTE(v30) = sub_2277E2094();
      sub_2277DFFBC(v24, v26, v29);
      if (v30)
      {
        v31 = *v70;
        (*v70)(v65, v27, v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v17;
        if (isUniquelyReferenced_nonNull_native)
        {
          v20 = v23;
        }

        else
        {
          sub_2277DDCD8(0, *(v17 + 16) + 1, 1);
          v20 = v61;
          v17 = v80;
        }

        v22 = v62;
        v34 = *(v17 + 16);
        v33 = *(v17 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_2277DDCD8(v33 > 1, v34 + 1, 1);
          v20 = v61;
          v17 = v80;
        }

        *(v17 + 16) = v34 + 1;
        v21 = v71;
        v31((v17 + v64 + v34 * v71), v65, v20);
        v12 = v59;
      }

      else
      {
        (*v63)(v27, v23);
        v20 = v23;
        v21 = v71;
        v12 = v27;
        v22 = v62;
      }

      v18 += v21;
      if (!--v19)
      {
        break;
      }

      v72(v12, v18, v20);
    }

    v65 = *(v17 + 16);

    v35 = MEMORY[0x277D84F90];
    v36 = v60;
    do
    {
      v72(v36, v22, v20);
      v38 = v20;
      v39 = sub_2277E20B4();
      v41 = v40;
      v77 = v39;
      v78 = v40;
      v43 = v42 & 1;
      v79 = v42 & 1;
      v75 = v69;
      v76 = 1;
      v44 = sub_2277E2094();
      sub_2277DFFBC(v39, v41, v43);
      if (v44)
      {
        (*v63)(v36, v38);
        v20 = v38;
        v37 = v71;
      }

      else
      {
        v45 = *v70;
        (*v70)(v66, v36, v38);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v80 = v35;
        if (v46)
        {
          v20 = v38;
        }

        else
        {
          sub_2277DDCD8(0, *(v35 + 16) + 1, 1);
          v20 = v61;
          v35 = v80;
        }

        v48 = *(v35 + 16);
        v47 = *(v35 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_2277DDCD8(v47 > 1, v48 + 1, 1);
          v20 = v61;
          v35 = v80;
        }

        *(v35 + 16) = v48 + 1;
        v37 = v71;
        v45((v35 + v64 + v48 * v71), v66, v20);
        v36 = v60;
      }

      v22 += v37;
      --v73;
    }

    while (v73);
    v49 = v65;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
    v49 = *(MEMORY[0x277D84F90] + 16);
  }

  v50 = *(v35 + 16);

  if (v50)
  {
    if (v50 == 1 && v49 == 0)
    {
      return 0x4B524F575F454E4FLL;
    }

    v52 = v50 != 1;
    if (v50 != 1 && v49 == 0)
    {
      return 0x524F575F594E414DLL;
    }

    if (v50 == 1 && v49 == 1)
    {
      return 0xD00000000000001ALL;
    }

    if (v49 == 1 && v50 != 1)
    {
      return 0xD00000000000001CLL;
    }

    if (v49 < 2)
    {
      v52 = 1;
    }

    if (v52)
    {
      if (v50 != 1 && v49 >= 2)
      {
        return 0xD00000000000001ELL;
      }

      goto LABEL_56;
    }

    return 0xD00000000000001CLL;
  }

  else
  {
    if (!v49)
    {
LABEL_56:
      sub_2277DFF68();
      swift_allocError();
      *v57 = 1;
      return swift_willThrow();
    }

    if (v49 == 1)
    {
      return 0x4944454D5F454E4FLL;
    }

    else
    {
      return 0xD000000000000010;
    }
  }
}

uint64_t sub_2277DEA60(uint64_t a1)
{
  v62 = sub_2277E20D4();
  v3 = *(v62 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v62);
  v67 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v8 = MEMORY[0x28223BE20](v7);
  v66 = v59 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v59 - v10;
  v13 = *(a1 + 16);
  if (v13)
  {
    v61 = v11;
    v59[1] = v1;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v73 = v15;
    v65 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = *(v14 + 56);
    v64 = (v14 - 8);
    v71 = (v14 + 16);
    v17 = MEMORY[0x277D84F90];
    v70 = xmmword_2277E8410;
    v18 = a1 + v65;
    v74 = v13;
    v19 = v13;
    v20 = v62;
    v75 = v14;
    v72 = v16;
    v60 = v59 - v10;
    v63 = v18;
    v15(v12, v18, v62);
    while (1)
    {
      v23 = v20;
      v24 = sub_2277E20B4();
      v26 = v25;
      v78 = v24;
      v79 = v25;
      v27 = v12;
      v29 = v28 & 1;
      v80 = v28 & 1;
      v76 = v70;
      v77 = 1;
      v30 = sub_2277DFFCC();
      v68 = sub_2277E0020();
      v69 = v30;
      LOBYTE(v30) = sub_2277E2094();
      sub_2277DFFBC(v24, v26, v29);
      if (v30)
      {
        v31 = *v71;
        (*v71)(v66, v27, v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = v17;
        if (isUniquelyReferenced_nonNull_native)
        {
          v20 = v23;
        }

        else
        {
          sub_2277DDCD8(0, *(v17 + 16) + 1, 1);
          v20 = v62;
          v17 = v81;
        }

        v22 = v63;
        v34 = *(v17 + 16);
        v33 = *(v17 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_2277DDCD8(v33 > 1, v34 + 1, 1);
          v20 = v62;
          v17 = v81;
        }

        *(v17 + 16) = v34 + 1;
        v21 = v72;
        v31((v17 + v65 + v34 * v72), v66, v20);
        v12 = v60;
      }

      else
      {
        (*v64)(v27, v23);
        v20 = v23;
        v21 = v72;
        v12 = v27;
        v22 = v63;
      }

      v18 += v21;
      if (!--v19)
      {
        break;
      }

      v73(v12, v18, v20);
    }

    v66 = *(v17 + 16);

    v35 = MEMORY[0x277D84F90];
    v36 = v61;
    do
    {
      v73(v36, v22, v20);
      v38 = v20;
      v39 = sub_2277E20B4();
      v41 = v40;
      v78 = v39;
      v79 = v40;
      v43 = v42 & 1;
      v80 = v42 & 1;
      v76 = v70;
      v77 = 1;
      v44 = sub_2277E2094();
      sub_2277DFFBC(v39, v41, v43);
      if (v44)
      {
        (*v64)(v36, v38);
        v20 = v38;
        v37 = v72;
      }

      else
      {
        v45 = *v71;
        (*v71)(v67, v36, v38);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v35;
        if (v46)
        {
          v20 = v38;
        }

        else
        {
          sub_2277DDCD8(0, *(v35 + 16) + 1, 1);
          v20 = v62;
          v35 = v81;
        }

        v48 = *(v35 + 16);
        v47 = *(v35 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_2277DDCD8(v47 > 1, v48 + 1, 1);
          v20 = v62;
          v35 = v81;
        }

        *(v35 + 16) = v48 + 1;
        v37 = v72;
        v45((v35 + v65 + v48 * v72), v67, v20);
        v36 = v61;
      }

      v22 += v37;
      --v74;
    }

    while (v74);
    v49 = v66;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
    v49 = *(MEMORY[0x277D84F90] + 16);
  }

  v50 = *(v35 + 16);

  if (v50)
  {
    if (v50 == 1 && v49 == 0)
    {
      return 1;
    }

    v52 = v50 != 1;
    if (v50 != 1 && v49 == 0)
    {
      return v50;
    }

    if (v50 == 1 && v49 == 1)
    {
      return 0;
    }

    if (v49 == 1 && v50 != 1)
    {
      return v50;
    }

    if (v49 < 2)
    {
      v52 = 1;
    }

    if (!v52)
    {
      return v49;
    }

    if (v50 == 1 || v49 < 2)
    {
      goto LABEL_51;
    }

    v56 = __OFADD__(v50, v49);
    v50 += v49;
    if (!v56)
    {
      return v50;
    }

    __break(1u);
  }

  v50 = v49;
  if (!v49)
  {
LABEL_51:
    sub_2277DFF68();
    swift_allocError();
    *v57 = 1;
    swift_willThrow();
  }

  return v50;
}

uint64_t sub_2277DF070(uint64_t a1)
{
  v2 = sub_2277E20D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v55 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  v12 = *(a1 + 16);
  v57 = v3;
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v60 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v16 = a1 + v60;
    v17 = *(v13 + 56);
    v64 = (v13 + 16);
    v59 = (v13 - 8);
    v67 = MEMORY[0x277D84F90];
    v62 = v9;
    v63 = v2;
    v61 = v15;
    do
    {
      v18 = v17;
      v14(v11, v16, v2);
      if (sub_2277E20C4())
      {
        (*v59)(v11, v2);
      }

      else
      {
        v19 = *v64;
        (*v64)(v9, v11, v2);
        v20 = v67;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v20;
        v65 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2277DDCD8(0, *(v20 + 16) + 1, 1);
          v22 = v65;
        }

        v17 = v18;
        v24 = *(v22 + 16);
        v23 = *(v22 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2277DDCD8(v23 > 1, v24 + 1, 1);
          v17 = v18;
          v22 = v65;
        }

        *(v22 + 16) = v24 + 1;
        v67 = v22;
        v25 = v22 + v60 + v24 * v17;
        v9 = v62;
        v2 = v63;
        v19(v25, v62, v63);
        v14 = v61;
      }

      v16 += v17;
      --v12;
    }

    while (v12);
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
  }

  v26 = v67;
  v27 = v58;
  v28 = sub_2277DE37C(v67);
  if (v27)
  {
  }

  else
  {
    v30 = v29;
    v31 = v28;
    v33 = sub_2277DEA60(v26);
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_2277E2814();

    v65 = 0xD00000000000002DLL;
    v66 = 0x80000002277EA360;
    MEMORY[0x22AA9B650](v31, v30);

    v34 = *(v26 + 16);
    if (v34 == 1)
    {
      v36 = v56;
      v35 = v57;
      (*(v57 + 16))(v56, v26 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v2);

      v37 = sub_2277DE004();
      v39 = v38;
      (*(v35 + 8))(v36, v2);
      type metadata accessor for XPCListener();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass_];
      v42 = sub_2277E2414();

      v43 = sub_2277E2414();
      v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

      sub_2277E2434();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_2277E3E40;
      *(v45 + 56) = MEMORY[0x277D837D0];
      *(v45 + 64) = sub_2277CB7D4();
      *(v45 + 32) = v37;
      *(v45 + 40) = v39;
    }

    else
    {

      if (!v34)
      {

        sub_2277DFF68();
        swift_allocError();
        *v54 = 0;
        swift_willThrow();
        return v12;
      }

      type metadata accessor for XPCListener();
      v46 = swift_getObjCClassFromMetadata();
      v47 = [objc_opt_self() bundleForClass_];
      v48 = sub_2277E2414();

      v49 = sub_2277E2414();
      v50 = [v47 localizedStringForKey:v48 value:0 table:v49];

      sub_2277E2434();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
      v51 = swift_allocObject();
      v52 = MEMORY[0x277D83B88];
      *(v51 + 16) = xmmword_2277E3E40;
      v53 = MEMORY[0x277D83C10];
      *(v51 + 56) = v52;
      *(v51 + 64) = v53;
      *(v51 + 32) = v33;
    }

    v12 = sub_2277E2424();
  }

  return v12;
}

uint64_t sub_2277DF680(uint64_t a1, int a2)
{
  v66 = a2;
  v3 = sub_2277E20D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v64 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v64 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v64 - v12;
  v14 = *(a1 + 16);
  v72 = v11;
  v65 = v4;
  if (v14)
  {
    v17 = *(v4 + 16);
    v15 = v4 + 16;
    v16 = v17;
    v69 = (*(v15 + 64) + 32) & ~*(v15 + 64);
    v18 = a1 + v69;
    v19 = *(v15 + 56);
    v73 = (v15 + 16);
    v68 = (v15 - 8);
    v76 = MEMORY[0x277D84F90];
    v70 = v17;
    v71 = v10;
    do
    {
      v20 = v19;
      v16(v13, v18, v3);
      if (sub_2277E20C4())
      {
        (*v68)(v13, v3);
      }

      else
      {
        v21 = *v73;
        (*v73)(v10, v13, v3);
        v22 = v76;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v22;
        v74 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2277DDCD8(0, *(v22 + 16) + 1, 1);
          v24 = v74;
        }

        v19 = v20;
        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2277DDCD8(v25 > 1, v26 + 1, 1);
          v19 = v20;
          v24 = v74;
        }

        *(v24 + 16) = v26 + 1;
        v76 = v24;
        v27 = v24 + v69 + v26 * v19;
        v10 = v71;
        v3 = v72;
        v21(v27, v71, v72);
        v16 = v70;
      }

      v18 += v19;
      --v14;
    }

    while (v14);
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
  }

  v28 = v76;
  v29 = v67;
  v30 = sub_2277DE37C(v76);
  if (v29)
  {
  }

  else
  {
    v33 = v30;
    v34 = v31;
    if (v66)
    {
      v35 = v76;
      v41 = sub_2277DEA60(v76);
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_2277E2814();
      MEMORY[0x22AA9B650](0xD000000000000035, 0x80000002277EA480);
      MEMORY[0x22AA9B650](v33, v34);

      v28 = v75;
      v42 = *(v35 + 16);
      if (v42 == 1)
      {
        v44 = v64;
        v43 = v65;
        v45 = v72;
        (*(v65 + 16))(v64, v35 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v72);

        v46 = sub_2277DE004();
        v48 = v47;
        (*(v43 + 8))(v44, v45);
        type metadata accessor for XPCListener();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v50 = [objc_opt_self() bundleForClass_];
        v51 = sub_2277E2414();

        v52 = sub_2277E2414();
        v53 = [v50 localizedStringForKey:v51 value:0 table:v52];

        sub_2277E2434();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_2277E3E40;
        *(v54 + 56) = MEMORY[0x277D837D0];
        *(v54 + 64) = sub_2277CB7D4();
        *(v54 + 32) = v46;
        *(v54 + 40) = v48;
        v28 = sub_2277E2424();
      }

      else
      {

        if (v42)
        {
          type metadata accessor for XPCListener();
          v55 = swift_getObjCClassFromMetadata();
          v56 = [objc_opt_self() bundleForClass_];
          v57 = sub_2277E2414();

          v58 = sub_2277E2414();
          v59 = [v56 localizedStringForKey:v57 value:0 table:v58];

          sub_2277E2434();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF180, &qword_2277E7240);
          v60 = swift_allocObject();
          v61 = MEMORY[0x277D83B88];
          *(v60 + 16) = xmmword_2277E3E40;
          v62 = MEMORY[0x277D83C10];
          *(v60 + 56) = v61;
          *(v60 + 64) = v62;
          *(v60 + 32) = v41;
          v28 = sub_2277E2424();
        }

        else
        {

          sub_2277DFF68();
          swift_allocError();
          *v63 = 0;
          swift_willThrow();
        }
      }
    }

    else
    {

      v74 = 0;
      v75 = 0xE000000000000000;
      sub_2277E2814();

      v74 = 0xD00000000000002CLL;
      v75 = 0x80000002277EA450;
      MEMORY[0x22AA9B650](v33, v34);

      type metadata accessor for XPCListener();
      v36 = swift_getObjCClassFromMetadata();
      v37 = [objc_opt_self() bundleForClass_];
      v38 = sub_2277E2414();

      v39 = sub_2277E2414();
      v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

      v28 = sub_2277E2434();
    }
  }

  return v28;
}

uint64_t _s15FitnessCoaching0A17PlusPlanLocalizerC14localizedTitle4typeSSAA0acD16NotificationTypeO_tF_0()
{
  type metadata accessor for XPCListener();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2277E2414();
  v3 = sub_2277E2414();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_2277E2434();
  return v5;
}

unint64_t sub_2277DFF68()
{
  result = qword_27D7CF4A0;
  if (!qword_27D7CF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF4A0);
  }

  return result;
}

uint64_t sub_2277DFFBC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_2277DFFCC()
{
  result = qword_27D7CF4B0;
  if (!qword_27D7CF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF4B0);
  }

  return result;
}

unint64_t sub_2277E0020()
{
  result = qword_27D7CF4B8;
  if (!qword_27D7CF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF4B8);
  }

  return result;
}

void GoalProgressPluginClient.init(healthStore:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D09D00]) initWithHealthStore_];

  *a2 = v4;
}

uint64_t GoalProgressPluginClient.registerConfiguration(_:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return MEMORY[0x2822009F8](sub_2277E00EC, 0, 0);
}

uint64_t sub_2277E00EC()
{
  if (qword_2813BC718 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = sub_2277E2374();
  __swift_project_value_buffer(v3, qword_2813BC720);
  v4._countAndFlagsBits = 0xD000000000000071;
  v4._object = 0x80000002277EA4E0;
  v5._object = 0x80000002277EA560;
  v5._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v4, v5);
  v6 = [v2 transportData];
  v7 = sub_2277E1F34();
  v9 = v8;

  v0[20] = v7;
  v0[21] = v9;
  v10 = sub_2277E1F24();
  v0[22] = v10;
  v0[2] = v0;
  v0[3] = sub_2277E02D0;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CF070, &qword_2277E6B58);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2277C14CC;
  v0[13] = &block_descriptor_5;
  v0[14] = v11;
  [v1 pluginMessage:1 data:v10 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2277E02D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_2277E044C;
  }

  else
  {
    v3 = sub_2277E03E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2277E03E0()
{
  v1 = v0[22];
  sub_22778E130(v0[20], v0[21]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2277E044C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  swift_willThrow();
  sub_22778E130(v3, v4);

  v5 = v0[1];
  v6 = v0[23];

  return v5();
}

uint64_t sub_2277E04EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22779696C;

  return GoalProgressPluginClient.registerConfiguration(_:)(a1);
}

uint64_t dispatch thunk of GoalProgressPluginClientProtocol.registerConfiguration(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22779696C;

  return v11(a1, a2, a3);
}

uint64_t AchievementNotificationError.hashValue.getter(unsigned __int8 a1)
{
  sub_2277E2A04();
  MEMORY[0x22AA9BBC0](a1);
  return sub_2277E2A44();
}

unint64_t sub_2277E073C()
{
  result = qword_27D7CF4D0;
  if (!qword_27D7CF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF4D0);
  }

  return result;
}

uint64_t FirstGlanceAchievementInfo.protobuf()()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  sub_2277E0A08(&qword_27D7CEED0);
  return sub_2277E2274();
}

uint64_t FirstGlanceAchievementInfo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_2277905C0(*a1, v5);

  result = sub_2277E0944(a1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_2277E08B0(uint64_t a1, __int128 *a2)
{
  v11 = *a2;
  v4 = *a1;
  v5 = *(a1 + 8);
  sub_2277B6100(&v11, &v10);
  sub_22778E130(v4, v5);
  *a1 = v11;
  v7 = *(a2 + 2);
  v6 = *(a2 + 3);
  v8 = *(a1 + 24);

  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t sub_2277E0944(uint64_t a1)
{
  GlanceAchievementInfoProtobuf = type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  (*(*(GlanceAchievementInfoProtobuf - 8) + 8))(a1, GlanceAchievementInfoProtobuf);
  return a1;
}

uint64_t sub_2277E0A08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FirstGlanceAchievementInfoProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2277E0A4C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  type metadata accessor for FirstGlanceAchievementInfoProtobuf();
  sub_2277E0A08(&qword_27D7CEED0);
  return sub_2277E2274();
}

uint64_t sub_2277E0AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_2277905C0(*a1, v5);

  result = sub_2277E0944(a1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  return result;
}

void WalkSuggestionProtobuf.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t WalkSuggestionProtobuf.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t WalkSuggestionProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WalkSuggestionProtobuf() + 24);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WalkSuggestionProtobuf()
{
  result = qword_27D7CF550;
  if (!qword_27D7CF550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WalkSuggestionProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WalkSuggestionProtobuf() + 24);
  v4 = sub_2277E2104();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t WalkSuggestionProtobuf.ProtobufType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t WalkSuggestionProtobuf.ProtobufType.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_2277E0DB0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2277E0DC8()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_2277E0DE4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_2277E0E00(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_2277E0E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277E13C4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_2277E0E6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t WalkSuggestionProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  v1 = a1 + *(type metadata accessor for WalkSuggestionProtobuf() + 24);
  return sub_2277E20F4();
}

uint64_t static WalkSuggestionProtobuf.ProtobufType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27D7CF4D8 = a1;
}

uint64_t sub_2277E0FDC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27D7CF4D8;
}

uint64_t sub_2277E1048()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF4E0);
  __swift_project_value_buffer(v0, qword_27D7CF4E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E4B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minutesValue";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_2277E2334();
}

uint64_t WalkSuggestionProtobuf.decodeMessage<A>(decoder:)()
{
  result = sub_2277E2164();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_2277E13C4();
        sub_2277E2184();
      }

      else if (result == 2)
      {
        sub_2277E21B4();
      }

      result = sub_2277E2164();
    }
  }

  return result;
}

uint64_t WalkSuggestionProtobuf.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_2277E13C4(), result = sub_2277E22A4(), !v1))
  {
    if (!*(v0 + 3) || (result = sub_2277E22D4(), !v1))
    {
      v3 = v0 + *(type metadata accessor for WalkSuggestionProtobuf() + 24);
      return sub_2277E20E4();
    }
  }

  return result;
}

unint64_t sub_2277E13C4()
{
  result = qword_27D7CF510;
  if (!qword_27D7CF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF510);
  }

  return result;
}

uint64_t WalkSuggestionProtobuf.hashValue.getter()
{
  sub_2277E2A04();
  type metadata accessor for WalkSuggestionProtobuf();
  sub_2277E1CF8(&qword_27D7CF518, type metadata accessor for WalkSuggestionProtobuf);
  sub_2277E23F4();
  return sub_2277E2A44();
}

uint64_t sub_2277E14A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 12) = 0;
  v2 = a2 + *(a1 + 24);
  return sub_2277E20F4();
}

uint64_t sub_2277E1520(uint64_t a1, uint64_t a2)
{
  v4 = sub_2277E1CF8(&unk_27D7CF560, type metadata accessor for WalkSuggestionProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2277E15C0(uint64_t a1)
{
  v2 = sub_2277E1CF8(&qword_27D7CF1A8, type metadata accessor for WalkSuggestionProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2277E162C()
{
  sub_2277E1CF8(&qword_27D7CF1A8, type metadata accessor for WalkSuggestionProtobuf);

  return sub_2277E2264();
}

uint64_t sub_2277E16AC()
{
  v0 = sub_2277E2344();
  __swift_allocate_value_buffer(v0, qword_27D7CF4F8);
  __swift_project_value_buffer(v0, qword_27D7CF4F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE988, &unk_2277E3C30);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7CE990, &unk_2277E4180) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2277E4B50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unavailable";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2277E2324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "minutes";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_2277E2334();
}

uint64_t _s15FitnessCoaching22WalkSuggestionProtobufV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (*(a1 + 3) == *(a2 + 3))
  {
    v4 = *(type metadata accessor for WalkSuggestionProtobuf() + 24);
    sub_2277E2104();
    sub_2277E1CF8(&qword_27D7CE980, MEMORY[0x277D216C8]);
    return sub_2277E2404() & 1;
  }

  return 0;
}

unint64_t sub_2277E19B0()
{
  result = qword_27D7CF520;
  if (!qword_27D7CF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF520);
  }

  return result;
}

unint64_t sub_2277E1A08()
{
  result = qword_27D7CF528;
  if (!qword_27D7CF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF528);
  }

  return result;
}

unint64_t sub_2277E1A60()
{
  result = qword_27D7CF530;
  if (!qword_27D7CF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF530);
  }

  return result;
}

unint64_t sub_2277E1AB8()
{
  result = qword_27D7CF538;
  if (!qword_27D7CF538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7CF540, &qword_2277E8780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7CF538);
  }

  return result;
}

uint64_t sub_2277E1C64()
{
  result = sub_2277E2104();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2277E1CF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FIExperienceType.convertToACHExperienceType()(unint64_t a1)
{
  if (a1 < 4)
  {
    return qword_2277E8990[a1];
  }

  sub_2277E28D4();
  __break(1u);
  return sub_2277E1DB4();
}